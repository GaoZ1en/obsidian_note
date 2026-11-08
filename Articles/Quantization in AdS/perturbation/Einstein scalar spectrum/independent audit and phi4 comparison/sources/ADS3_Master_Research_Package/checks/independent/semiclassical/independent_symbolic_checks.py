"""New exact cross-checks for the integrated master note, without engine imports."""
import sys
if sys.flags.optimize:
    raise RuntimeError("Python optimization is forbidden")
import sympy as S
from pathlib import Path
from datetime import datetime, timezone
from time import monotonic
import json
import os

def require(value, message):
    if not value:
        raise RuntimeError(message)

def zero(expression):
    return S.factor(S.cancel(expression)) == 0

def main():
    require(not os.environ.get("PYTHONOPTIMIZE"), "PYTHONOPTIMIZE is forbidden")
    begin, timer = datetime.now(timezone.utc).isoformat(), monotonic()
    d, v, w = S.symbols("d v w")
    x, y, c4, c6 = S.symbols("x y c4 c6")
    a = [S.Integer(1), S.Integer(0), x, y, c4, S.symbols("c5"), c6]
    def projector(T, k):
        vec = S.Matrix([(-1)**(k-j)*S.binomial(k, j) for j in range(k+1)])
        for degree in range(k, T):
            raised = S.zeros(degree+2, 1)
            for j, val in enumerate(vec):
                raised[j+1] += (j+d)*val
                raised[j] += (degree-j+d)*val
            vec = raised
        gram = S.diag(*[S.factorial(j)*S.factorial(T-j)/
                         (S.rf(d,j)*S.rf(d,T-j)) for j in range(T+1)])
        norm = S.factor((vec.T*gram*vec)[0])
        P = (vec*vec.T*gram/norm).applyfunc(S.factor)
        require((P*P-P).applyfunc(S.factor) == S.zeros(T+1), "Projector idempotence")
        require((P.T*gram-gram*P).applyfunc(S.factor) == S.zeros(T+1),
                "Physical projector metric")
        return P
    def output(i, j):
        T = i+j
        W = S.zeros(T+1)
        if T >= 4:
            W += v*projector(T,4)
        if T >= 6:
            W += w*projector(T,6)
        return S.factor(sum(W[k,i]*a[k]*a[T-k] for k in range(T+1)))
    F33, F13 = output(3,3), output(1,3)
    before = S.factor(F33-6*x*F13)
    D = 15*(2*d+7)*(d+5)*v+(2*d+3)*(d+2)*w
    q6 = -5/D*(3*(2*d+7)*v*(3*(d-3)*x**3+2*(d+2)*y**2)
                 -(2*d+3)*(d+2)*w*(9*x**3+2*y**2))
    epsilon = 27*v*w*(d+3)*(d+4)*(2*d+9)/(2*(2*d+5)*D)
    require(zero(before.subs({c4:-3*x*x,c6:q6})-epsilon*(y*y+4*x**3)),
            "Generic epsilon from rank-one descendants")
    ein_v = 2*d*(d+4)/(2*d-1)
    ein_w = 4*d*(2*d+5)*(2*d*d+9*d+3)/((2*d-1)*(2*d+1)*(2*d+3))
    ein_epsilon = 54*d*(d+3)*(d+4)**2*(2*d*d+9*d+3)/(
        (2*d-1)*(2*d+3)*(34*d**3+273*d*d+611*d+240))
    require(zero(epsilon.subs({v:ein_v,w:ein_w})-ein_epsilon),
            "Einstein specialization")
    require(S.limit(ein_epsilon/d,d,S.oo) == S.Rational(27,34), "Mass contraction")
    rs = S.symbols("r0:4")
    Fb = {}
    for b in range(31):
        coeff, f = S.Integer(1), y**b
        for j in range(1,b//2+1):
            coeff *= S.Rational(4*(b-2*j+2)*(b-2*j+1),
                       b*(b-1)-(b-2*j)*(b-2*j-1))
            f += coeff*x**(3*j)*y**(b-2*j)
        Fb[b] = f
        require(S.expand((y*y+4*x**3)*S.diff(f,y,2)-b*(b-1)*f) == 0,
                f"Gegenbauer recurrence b={b}")
    eta_checks = 0
    for P in range(2,25):
        labels = [(aa,bb) for bb in range(P//3+1)
                  if (P-3*bb)%2 == 0 for aa in [(P-3*bb)//2]]
        if not labels:
            continue
        basis = [S.expand(x**aa*Fb[bb]) for aa,bb in labels]
        change = S.Matrix([[f.coeff(x,aa).coeff(y,bb)
                            for f in basis] for aa,bb in labels])
        C = S.zeros(len(labels))
        for j,f in enumerate(basis):
            out = S.expand((y*y+4*x**3)*(
                rs[0]*S.diff(f,y,2)+rs[1]*S.diff(f,x,3)
                +rs[2]*x*S.diff(f,x,y,y)+rs[3]*y*S.diff(f,y,3)))
            for i,(aa,bb) in enumerate(labels):
                C[i,j] = out.coeff(x,aa).coeff(y,bb)
        diagonals = change.inv()*C
        for i,(aa,bb) in enumerate(labels):
            eta = bb*(bb-1)*(rs[0]+rs[2]*aa+rs[3]*(bb-2)+2*rs[1]*(
                S.Rational((aa+1)*(aa+2)*(aa+3),2*bb-3)
                -S.Rational(aa*(aa-1)*(aa-2),2*bb+1)))
            require(S.expand(diagonals[i,i]-eta) == 0, f"Eta extraction {aa,bb}")
            eta_checks += 1
    X = S.symbols("x1:4")
    Z = S.symbols("z1:4")
    XX, ZZ = S.Matrix(X), S.Matrix(Z)
    def poisson(F,G):
        return S.expand(XX.dot(S.Matrix([S.diff(F,t) for t in X]).cross(
            S.Matrix([S.diff(G,t) for t in X])))+
            ZZ.dot(S.Matrix([S.diff(F,t) for t in Z]).cross(
            S.Matrix([S.diff(G,t) for t in Z]))))
    d1,d2 = X[0]**2-Z[0]**2, X[1]**2-Z[1]**2
    c,e = poisson(d1,d2),None
    e = poisson(d1,c)
    jac = S.Matrix([sum(t*t for t in X),sum(t*t for t in Z),d1,d2,c,e]).jacobian(
        [*X,*Z])
    target = -2048*X[0]**3*X[1]*X[2]*Z[1]**2*Z[2]**2
    determinant = S.factor(jac.subs(Z[0],0).det())
    require(determinant == target, "Analytic-charge Jacobian")
    F = 2*d**3-37*d*d-11*d+100
    intervals = [(S.Rational(1563,1000),S.Rational(1564,1000)),
                 (S.Rational(18651,1000),S.Rational(18652,1000))]
    require(S.Poly(F,d).count_roots(1,S.oo) == 2, "Jordan roots above one")
    for lo,hi in intervals:
        require(S.Poly(F,d).count_roots(lo,hi) == 1, "Jordan isolating interval")
    b,m = S.symbols("b m",nonnegative=True)
    U = (30*m**4+120*m**3*b+180*m**3+160*m*m*b*b+540*m*m*b+386*m*m
         +80*m*b**3+480*m*b*b+772*m*b+348*m
         +8*b**4+120*b**3+362*b*b+348*b+98)
    require(all(coef>=0 for coef in S.Poly(U-30*(m+1)**4,b,m).coeffs()),
            "All-mass diagonal positive coefficient certificate")
    result = {"status":"passed","started_utc":begin,
              "ended_utc":datetime.now(timezone.utc).isoformat(),
              "elapsed_seconds":monotonic()-timer,"python":sys.version,
              "sympy":S.__version__,"optimization":sys.flags.optimize,
              "generic_rank_one_defect_jets":{
                  "F33":str(F33),"F13":str(F13),
                  "B_y2_before_retraction":str(before),
                  "coefficient_c6":str(S.factor(S.expand(before).coeff(c6))),
                  "coefficient_xc4":str(S.factor(S.expand(before).coeff(c4)/x)),
                  "coefficient_x3":str(S.factor(S.expand(before).coeff(x,3))),
                  "coefficient_y2":str(S.factor(S.expand(before).coeff(y,2))),
                  "q_c6":str(q6),"epsilon":str(epsilon),
                  "exact_residual":0},
              "einstein_specialization":True,
              "large_mass_epsilon_over_Delta":"27/34",
              "gegenbauer_polynomials_checked":31,
              "eta_diagonal_symbolic_checks":eta_checks,
              "charge_jacobian":str(determinant),
              "jordan_physical_roots":2,
              "jordan_rational_isolation":[[str(a),str(b)] for a,b in intervals],
              "diagonal_pair_positive_polynomial":True}
    Path(__file__).with_suffix(".json").write_text(json.dumps(result,indent=2)+"\n")
    print(json.dumps({k:v for k,v in result.items() if k!="generic_rank_one_defect_jets"},
                     indent=2),flush=True)

if __name__ == "__main__":
    main()
