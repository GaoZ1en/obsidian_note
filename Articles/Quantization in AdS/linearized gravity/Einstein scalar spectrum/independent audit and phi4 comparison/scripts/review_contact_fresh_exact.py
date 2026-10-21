"""Self-contained exact Sage certificates for the fresh contact review.

No source notes, packages, or external candidate scripts are read.
Run in a fresh Sage process. By default this script prints JSON only.
All ranks are exact rational matrix ranks, not numerical diagonalizations.
The analytic proofs in the review, not finite checks, prove the all-degree claims.
"""
from sage.all import *
import json


def counterexample_checks(N):
    R = PolynomialRing(QQ, [f'z{i+1}' for i in range(N)] + [f'w{i+1}' for i in range(N)])
    zz, ww = R.gens()[:N], R.gens()[N:]
    x = [z-sum(zz)/N for z in zz]
    y = [w-sum(ww)/N for w in ww]
    F = sum(t**2 for t in y)*sum(a**3*b for a,b in zip(x,y)) \
        -sum(t**2 for t in x)*sum(a*b**3 for a,b in zip(x,y))
    checks = {
        'DL_zero': sum(F.derivative(z) for z in zz) == 0,
        'DR_zero': sum(F.derivative(w) for w in ww) == 0,
        'swap_odd': F(*(list(ww)+list(zz))) == -F,
        'bidegree_3_3': all(sum(e[:N]) == 3 and sum(e[N:]) == 3 for e in F.exponents()),
        'expected_nonzero_status': (F != 0) == (N >= 4),
    }
    for j in range(N-1):
        args = list(zz)+list(ww)
        args[j], args[j+1] = args[j+1], args[j]
        args[N+j], args[N+j+1] = args[N+j+1], args[N+j]
        checks[f'SN_adjacent_{j+1}'] = F(*args) == F
    if N >= 4:
        vz = [0,0,1,-1]+[0]*(N-4)
        vw = [1,1,0,-2]+[0]*(N-4)
        checks['double_pair_value_minus4'] = F(*(vz+vw)) == -4
        checks['bilinear_value_2'] = sum(a*b for a,b in zip(x,y))(*(vz+vw)) == 2
    return checks


def operators(P, delta):
    R = PolynomialRing(QQ, ['r','u'])
    r, u = R.gens()
    basis = [r**k*u**(P-k) for k in range(P+1)]
    c = delta*(delta-1)
    def A(f):
        return r**2*f.derivative(r,2)-r**2/4*f.derivative(u,2) \
            +2*delta*r*f.derivative(r)+c*f
    def B(f):
        return -(u-r/2)**2*(f.derivative(r).derivative(u)-f.derivative(u,2)/2) \
            +delta*(u-r/2)*(-f.derivative(r)+QQ(3)/2*f.derivative(u))+c*f
    def C(f):
        return (u+r/2)**2*(f.derivative(r).derivative(u)+f.derivative(u,2)/2) \
            +delta*(u+r/2)*(f.derivative(r)+QQ(3)/2*f.derivative(u))+c*f
    return [matrix(QQ, [[op(f).monomial_coefficient(b) for f in basis] for b in basis])
            for op in [A,B,C]]


def n3_rank_checks():
    rows = []
    for delta in [QQ(3)/2, QQ(2), QQ(7)/3]:
        for P in range(11):
            A,B,C = operators(P,delta)
            s = P*(P+3*delta-1)+3*delta*(delta-1)
            columns = []
            for m in range(P+1):
                op = A**m+B**m+C**m
                columns.append([v for row in op.rows() for v in row])
            rank = matrix(QQ, columns).rank()
            rows.append({
                'Delta': str(delta), 'P': P, 'rank': int(rank),
                'rank_expected': rank == max(1,P),
                'Casimir_sum': A+B+C == s*identity_matrix(QQ,P+1),
            })
    return rows


def n3_band_and_weighted_trace_checks():
    P, delta = 6, QQ(2)
    A,B,C = operators(P,delta)
    columns = []
    for k in range(P+1):
        lam = (delta+k)*(delta+k-1)
        v = (A-lam*identity_matrix(QQ,P+1)).right_kernel().basis()[0]
        columns.append(v/v[k])
    X = matrix(QQ,columns).transpose()
    J = X.inverse()*B*X
    checks = {
        'tridiagonal': all(J[i,j] == 0 for i in range(P+1) for j in range(P+1) if abs(i-j)>1),
        'lower_coefficient_formula': all(J[k-1,k] == -k*(P-k+delta) for k in range(1,P+1)),
    }
    R = PolynomialRing(QQ, ['r','u'])
    r,u = R.gens()
    basis = [r**k*u**(P-k) for k in range(P+1)]
    z = [u+r/2,u-r/2,R(0)]
    a = delta-QQ(1)/2
    weights = [1/(k+a) for k in range(P+1)]  # Physical coefficients times 16*pi.
    traceW = QQ(0)
    for permutation in Permutations(3):
        zp = [z[i-1] for i in permutation]
        rp,up = zp[0]-zp[1], (zp[0]+zp[1])/2-zp[2]
        G = matrix(QQ, [[f(rp,up).monomial_coefficient(b) for f in basis] for b in basis])
        H = X.inverse()*G*X
        traceW += sum(weights[k]*H[k,k]**2 for k in range(P+1))/2
    Rc = sum(weights)
    checks['weighted_trace_lower'] = traceW >= Rc
    checks['weighted_trace_upper'] = traceW <= 3*Rc
    return {'checks': checks, 'lower_coefficients': [str(J[k-1,k]) for k in range(1,P+1)],
            'Rc': str(Rc), 'traceW': str(traceW), 'T_Rc': str(3*Rc)}


def character_checks():
    A = PowerSeriesRing(QQ, 't', default_prec=16)
    t = A.gen()
    def char_perm(cycles,n):
        f = A(1)
        for j in cycles:
            f /= 1-t**j
        return f[n]
    def zfactor(lam):
        return prod(j**lam.count(j)*factorial(lam.count(j)) for j in set(lam))
    def D(N,P):
        return sum((char_perm(list(lam),P)-(char_perm(list(lam),P-1) if P>0 else 0))**2/zfactor(list(lam))
                   for lam in Partitions(N))
    def b(M,n):
        return sum(char_perm(list(lam),n)**2/zfactor(list(lam)) for lam in Partitions(M))
    def boundR(N,P):
        return sum(b(N-2,n) for n in range(P+1))
    checks = {
        'N3_dimension_formula_P0_to_14': all(D(3,P) == QQ((P+1)**2+3*int(P%2==0)+2*int(P%3!=2))/6 for P in range(15)),
        'N3_R_formula_P0_to_14': all(boundR(3,P) == P+1 for P in range(15)),
        'N4_R_formula_P0_to_14': all(boundR(4,P) == QQ((P+1)*(P+2)*(2*P+3))/12+QQ(P//2+1)/2 for P in range(15)),
    }
    rows = []
    for N in [3,4,5]:
        for P in range(7):
            dim,bd = D(N,P),boundR(N,P)
            rows.append({'N':N,'P':P,'D':int(dim),'R':int(bd),
                         'rank_lower':int(ceil(bd/binomial(N,2))),
                         'rank_upper':int(min(dim,bd))})
    return {'checks': checks, 'bounds': rows}


def main():
    report = {
        'counterexample_N3': counterexample_checks(3),
        'counterexample_N4': counterexample_checks(4),
        'N3_exact_ranks': n3_rank_checks(),
        'N3_band_and_weighted_trace': n3_band_and_weighted_trace_checks(),
        'characters': character_checks(),
    }
    check_groups = [report['counterexample_N3'], report['counterexample_N4'],
                    report['N3_band_and_weighted_trace']['checks'], report['characters']['checks']]
    report['all_passed'] = all(v is True for group in check_groups for v in group.values()) \
        and all(row['rank_expected'] is True and row['Casimir_sum'] is True for row in report['N3_exact_ranks'])
    print(json.dumps(report, indent=2))
    return report


if __name__ == '__main__':
    main()
