#!/usr/bin/env python3
"""Independent exact checks for generic 20' tree and the leading R^4 tensor.

No Mathematica output is consumed.  Run with SymPy (tested with 1.14.0).
The script derives the Ward shift, expands the action contact combinatorics,
and compares independently evaluated scalar/vector/graviton exchanges.
"""
import itertools
import json
from pathlib import Path
import sympy as S

HERE = Path(__file__).resolve().parent
checks = []
details = {}

def check(label, expr):
    residual = S.factor(S.cancel(S.expand(expr)))
    passed = residual == 0
    checks.append({"label": label, "passed": passed, "residual": str(residual)})
    if not passed:
        raise AssertionError((label, residual))

s, t, sig, tau, U, V = S.symbols('s t sigma tau U V')
u = 8-s-t
R = tau + (1-sig-tau)*V + (-tau-sig*tau+tau**2)*U \
    + (sig**2-sig-sig*tau)*U*V + sig*V**2 + sig*tau*U**2
reduced = 32/((s-2)*(t-2)*(2-s-t))  # N^2 times the reduced amplitude

def ward_shift(f):
    out = 0
    for (m,n), c in S.Poly(R,U,V).terms():
        q = S.rf(2-s/2,m)**2*S.rf(2-t/2,n)**2*S.rf(2-u/2,2-m-n)**2
        out += c*q*f.subs({s:s-2*m,t:t-2*n}, simultaneous=True)
    return S.factor(out)

M = ward_shift(reduced)
P4 = ward_shift(S.Integer(1))
monomials = [(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]
def coeffs(expr):
    pp=S.Poly(expr,sig,tau)
    return {str(k):str(S.factor(pp.coeff_monomial(sig**k[0]*tau**k[1]))) for k in monomials}
details['N2_M_SG_coefficients'] = coeffs(M)
details['constant_reduced_seed_full_polynomial_coefficients'] = coeffs(P4)

Ds,Dt,Du,C1,C2,C3=S.symbols('D_s D_t D_u C_1 C_2 C_3')
mapping={(0,0):Ds,(1,0):C2,(0,1):C1,(2,0):Du,(1,1):C3,(0,2):Dt}
def matrix_tensor(expr):
    pp=S.Poly(expr,sig,tau)
    return S.expand(sum(pp.coeff_monomial(sig**k[0]*tau**k[1])*v for k,v in mapping.items()))

Ss=(C1+C2)/2-Ds/6
St=(C1+C3)/2-Dt/6
Su=(C2+C3)/2-Du/6
Js=2*(C2-C1)
Jt=2*(C3-C1)
Ju=2*(C2-C3)
channels=[(s,t-u,Ds,Ss,Js),(t,s-u,Dt,St,Jt),(u,t-s,Du,Su,Ju)]
Mscalar=sum(-16*a/(p-2) for p,v,d,a,j in channels)
Mvector=sum(2*j*v/(p-2) for p,v,d,a,j in channels)
Mgrav=sum(d*S.Rational(1,2)*(p-6-(v*v+S.Rational(4,3))/(p-2)) for p,v,d,a,j in channels)
Mpot=4*(Ds+Dt+Du)-S.Rational(40,3)*(C1+C2+C3)

# Quartic derivative vertex: independently enumerate all 24 field labels.
cycles={}
for cyc, name in [((1,2,3,4),C1),((1,2,4,3),C2),((1,3,2,4),C3)]:
    for rev in [cyc,tuple(reversed(cyc))]:
        for k in range(4):
            cycles[rev[k:]+rev[:k]]=name
def tr4(a,b,c,d):
    return cycles[(a,b,c,d)]
def commtrace(a,b,c,d):
    return tr4(a,b,c,d)-tr4(a,b,d,c)-tr4(b,a,c,d)+tr4(b,a,d,c)
def mellin_delta(a,b):
    pair=set((a,b))
    if pair in [{1,2},{3,4}]: return (4-s)/2
    if pair in [{1,4},{2,3}]: return (4-t)/2
    return (4-u)/2
Mder=S.expand(sum(commtrace(a,b,c,d)*(1-mellin_delta(b,d))/3
                  for a,b,c,d in itertools.permutations(range(1,5))))
check('24-label derivative contact', Mder-S.Rational(2,3)*(Js*(t-u)+Jt*(s-u)+Ju*(t-s)))
check('full generic action equals full Ward-shift amplitude',
      matrix_tensor(M)-Mscalar-Mvector-Mgrav-Mpot-Mder)
details['action_derivative_contact'] = str(S.factor(Mder))
details['action_potential_contact'] = str(Mpot)

res_s=S.factor(S.cancel((s-2)*M).subs(s,2))
spin_s=-S.Rational(1,2)*((t-(6-t))**2+S.Rational(4,3)) \
       +4*(sig-tau)*(t-(6-t))-8*(sig+tau-S.Rational(1,3))
check('s-channel spin 2/1/0 residues',res_s-spin_s)
for name,expr in [('SG',M),('R4',P4)]:
    check(name+' crossing 12',expr-expr.subs({t:u,sig:tau,tau:sig},simultaneous=True))
    check(name+' crossing 24',expr-tau**2*expr.subs({s:t,t:s,sig:sig/tau,tau:1/tau},simultaneous=True))
    check(name+' crossing 23',expr-sig**2*expr.subs({s:u,sig:1/sig,tau:tau/sig},simultaneous=True))

neutral={Ds:1,Dt:1,Du:1,C1:S.Rational(1,6),C2:S.Rational(1,6),C3:S.Rational(1,6)}
neutral_sg=S.factor(matrix_tensor(M).subs(neutral))
old_neutral=S.Rational(1,3)-S.Rational(1,2)*sum((v*v+S.Rational(4,3))/(p-2) for p,v,d,a,j in channels)
check('neutral projected amplitude agrees with earlier report',neutral_sg-old_neutral)
for name,x in [('Ss',Ss),('St',St),('Su',Su),('Js',Js),('Jt',Jt),('Ju',Ju)]:
    check('neutral '+name+' vanishes',x.subs(neutral))
neutral_r4=S.factor(matrix_tensor(P4).subs(neutral))
e2=s*t+t*u+u*s
e3=s*t*u
a,b,c,d=S.symbols('a b c d')
sol=S.solve(S.Poly(S.expand(neutral_r4-(a*e2**2+b*e3+c*e2+d)),s,t).coeffs(),[a,b,c,d],dict=True)[0]
check('neutral R4 symmetric polynomial',neutral_r4-(a*e2**2+b*e3+c*e2+d).subs(sol))
details['neutral_R4_symmetric_coefficients']={str(k):str(v) for k,v in sol.items()}
details['neutral_R4_at_s_t_u_8_over_3']=str(neutral_r4.subs({s:S.Rational(8,3),t:S.Rational(8,3)}))
details['neutral_R4_expanded']=str(neutral_r4)

# Explicit orthonormal real STF and so(6) bases; direct group sums.
STF=[]
AS=[]
for i in range(6):
    for j in range(i+1,6):
        Y=S.zeros(6); Y[i,j]=Y[j,i]=1/S.sqrt(2); STF.append(Y)
        Q=S.zeros(6); Q[i,j]=1/S.sqrt(2);Q[j,i]=-1/S.sqrt(2);AS.append(Q)
for k in range(1,6):
    v=[S.Integer(1)]*k+[-S.Integer(k)]+[S.Integer(0)]*(5-k)
    STF.append(S.diag(*v)/S.sqrt(k*(k+1)))

# Check every indexed projector entry, independently of the particular
# external matrices used in the channel examples below.  Entries are real,
# so the sum of their squares is zero exactly iff every residual vanishes.
stf_index_error = S.Integer(0)
as_index_error = S.Integer(0)
delta = lambda i, j: S.Integer(i == j)
for i, j, k, l in itertools.product(range(6), repeat=4):
    stf_entry = sum(E[i,j]*E[k,l] for E in STF)
    stf_expected = (delta(i,k)*delta(j,l)+delta(i,l)*delta(j,k))/2 \
        -delta(i,j)*delta(k,l)/6
    as_entry = sum(Q[i,j]*Q[k,l] for Q in AS)
    as_expected = (delta(i,k)*delta(j,l)-delta(i,l)*delta(j,k))/2
    stf_index_error += S.simplify(stf_entry-stf_expected)**2
    as_index_error += S.simplify(as_entry-as_expected)**2
check('STF completeness all 1296 indexed entries', stf_index_error)
check('so(6) completeness all 1296 indexed entries', as_index_error)

Y1=S.diag(1,-1,0,0,0,0)
Y2=S.zeros(6);Y2[0,1]=Y2[1,0]=1
Y3=S.diag(2,-1,-1,0,0,0)
Y4=S.zeros(6);Y4[0,1]=Y4[1,0]=2;Y4[1,2]=Y4[2,1]=1
ys=[Y1,Y2,Y3,Y4]
def scalar_factor(A,B,C,D):
    return S.simplify(sum(S.trace(A*B*E)*S.trace(C*D*E) for E in STF))
def vector_factor(A,B,C,D):
    return S.simplify(sum(S.trace(A*(Q*B-B*Q))*S.trace(C*(Q*D-D*Q)) for Q in AS))
for name,inds in [('s',(0,1,2,3)),('t',(0,3,2,1)),('u',(0,2,1,3))]:
    A,B,C,D=[ys[i] for i in inds]
    predicted=(S.trace(A*B*C*D)+S.trace(A*B*D*C))/2-S.trace(A*B)*S.trace(C*D)/6
    check('STF completeness '+name,scalar_factor(A,B,C,D)-predicted)
    check('so(6) completeness '+name,vector_factor(A,B,C,D)+S.trace((A*B-B*A)*(C*D-D*C)))
check('nonneutral scalar exchange example',scalar_factor(Y1,Y1,Y1,Y1)-S.Rational(4,3))
check('nonneutral vector exchange example',vector_factor(Y1,Y2,Y1,Y2)-8)
details['nonneutral_examples']={'TrY1_squared':2,'S_1111':'4/3','J_1212':8}

# Matrix-exponential kinetic quartic, from direct multiplication rather than
# using the quoted BCH identity.  t = eps*A, dt = eps*B.
eps=S.symbols('eps')
A=Y1;B=Y2
def truncate_matrix(M,n):
    return M.applyfunc(lambda e:S.Add(*[
        c*eps**k[0] for k,c in S.Poly(S.expand(e),eps).terms() if k[0]<n]))
E=sum((eps**k*A**k/S.factorial(k) for k in range(5)),S.zeros(6))
Einv=sum(((-eps)**k*A**k/S.factorial(k) for k in range(5)),S.zeros(6))
dE=S.zeros(6)
for k in range(1,5):
    dE+=eps**k/S.factorial(k)*sum((A**j*B*A**(k-1-j) for j in range(k)),S.zeros(6))
one=truncate_matrix(Einv*dE,5)
kin=S.expand(S.trace(one*one))
check('log-coordinate kinetic cubic vanishes',kin.coeff(eps,3))
check('log-coordinate kinetic quartic -1/12 commutator',kin.coeff(eps,4)+S.trace((A*B-B*A)**2)/12)

# Potential coefficients from diagonal eigenvalue variables, trace t=0.
vals=S.symbols('v0:5'); eig=list(vals)+[-sum(vals)]
trE=sum(sum((eps*v)**k/S.factorial(k) for k in range(5)) for v in eig)
trE2=sum(sum((2*eps*v)**k/S.factorial(k) for k in range(5)) for v in eig)
potential=S.expand((2*trE2-trE**2)/2)
check('potential constant',potential.coeff(eps,0)+12)
check('potential quadratic',potential.coeff(eps,2)+sum(v**2 for v in eig))
check('potential cubic',potential.coeff(eps,3)-sum(v**3 for v in eig)/3)
check('potential quartic',potential.coeff(eps,4)-S.Rational(5,12)*sum(v**4 for v in eig)+sum(v**2 for v in eig)**2/8)

# R^4 normalization from the flat-space inverse-Laplace gamma factors.
ratio=S.gamma(3)/(8*S.gamma(6))
check('flat-space gamma ratio',ratio-S.Rational(1,480))
check('R4 reduced relative coefficient',15*ratio-S.Rational(1,32))
check('R4 reduced absolute coefficient',32*15-480)
# Independent Virasoro-Shapiro log expansion: sum s=t+u=0 gives s^3+t^3+u^3=3stu.
sf,tf,uf=S.symbols('sf tf uf')
check('Virasoro-Shapiro cubic identity',(sf**3+tf**3+uf**3-3*sf*tf*uf).subs(uf,-sf-tf))
check('Virasoro-Shapiro zeta3 coefficient',S.Rational(2,3)*3/4**3-S.Rational(1,32))
# Leading U^2 log U, V=1: Barnes first lemma at the s=4 double pole.
barnes=S.gamma(4)**4/S.gamma(8)
check('R4 Barnes logarithm integral',barnes-S.Rational(9,35))
check('R4 neutral leading logarithm coefficient',-480*barnes+S.Rational(864,7))
check('R4 unique leading singlet anomalous dimension',-480*barnes*20+S.Rational(17280,7))

out={'tool':'Python/SymPy','sympy_version':S.__version__,
     'base_commit':'aa128cb903e0f3750a16a69487d64013d38667b1',
     'checks':checks,'count':len(checks),'all_passed':all(c['passed'] for c in checks),
     'details':details}
(HERE/'generic_twenty_prime_results.json').write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n')
print(json.dumps({'checks':len(checks),'all_passed':out['all_passed'],'details':details},indent=2,ensure_ascii=False))
