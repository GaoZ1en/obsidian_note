"""Exact first-jet polynomial certificate of the FULL kinetic-density identity.
One internal component suffices because the kinetic term and generator pairings
are internally diagonal. All base fields and first jets are independent.
No integration by parts is hidden: the precise exterior derivative is tested.
Run: sage --nodotsage kinetic_density_check.py
"""
from sage.all import QQ,PolynomialRing,ExteriorAlgebra
from sage.version import version
base_even=['e0','e1','e2','w0','w1','w2','x','y']
names=base_even+[n+'_d'+str(j) for n in base_even for j in range(3)]
R=PolynomialRing(QQ,names=names); rr=R.gens(); even=rr[:8]
e=even[:3];w=even[3:6];x,y=even[6:]
evenjets=[[rr[8+3*i+j] for j in range(3)] for i in range(8)]
base_odd=['z0','z1','z2','p0','p1','p2','q0','q1','q2','l']
oddnames=base_odd+[n+'_d'+str(j) for n in base_odd for j in range(3)]+['dx0','dx1','dx2']
A=ExteriorAlgebra(R,names=oddnames); aa=A.gens(); odd=aa[:10]
z=odd[:3];p=odd[3:6];q=odd[6:9];l=odd[9];dx=aa[40:43]
oddjets=[[aa[10+3*i+j] for j in range(3)] for i in range(10)]
vol=dx[0]*dx[1]*dx[2]
def pd(f,t):return A.sum_of_terms((key,coeff.derivative(t)) for key,coeff in f.monomial_coefficients().items())
def partial(f,j):
    return sum((evenjets[i][j]*pd(f,even[i]) for i in range(8)),A.zero())+sum((oddjets[i][j]*f.interior_product(odd[i]) for i in range(10)),A.zero())
def d(f):return sum((dx[j]*partial(f,j) for j in range(3)),A.zero())
def I(f):return sum((z[j]*f.interior_product(dx[j]) for j in range(3)),A.zero())
def L(f):return I(d(f))-d(I(f))
def expI(f):return f+I(f)+I(I(f))/2+I(I(I(f)))/6
def f1(v):return sum((v[j]*dx[j] for j in range(3)),A.zero())
def f2(v):return v[0]*dx[1]*dx[2]+v[1]*dx[2]*dx[0]+v[2]*dx[0]*dx[1]
def proj(f,n):return A.sum_of_terms((key,coeff) for key,coeff in f.monomial_coefficients().items() if sum(j>=40 for j in key)==n)
def check(label,residual):
    ok=residual==0
    print(label+': '+('PASS' if ok else 'FAIL'))
    if not ok:print('Residual:',residual)
    assert ok,label

ef=f1(e);wf=f1(w);pf=f2(p);qf=f2(q)
alpha=l+wf-pf+y*vol;beta=ef-qf+x*vol
W=expI(alpha);B=expI(beta)
v=[sum((z[j]*oddjets[i][j] for j in range(3)),A.zero()) for i in range(3)]
# J_i is ordinary even-vector contraction after adjusting odd coefficients.
# In the total algebra d/d(dx_i) on p* is minus ordinary i_{partial_i}.
xistar=[e[i]*y*vol+w[i]*x*vol+qf*pf.interior_product(dx[i]) for i in range(3)]
geo=ef*d(wf)+pf*L(ef)+qf*L(wf)-qf*d(l)-x*vol*L(l)-sum((xistar[i]*v[i] for i in range(3)),A.zero())
raw=proj(B*d(W),3)
check('FULL raw kinetic pullback minus geometric = d I(e e*)',raw-geo-d(I(ef*pf)))
# Minimal CS component kinetic density, expressed in total-form multiplication.
E=proj(B,1);O=proj(W,1);tau=proj(B,0);rho=proj(W,0)
Estar=-proj(W,2);Ostar=-proj(B,2)
minimal=E*d(O)-Estar*d(tau)-Ostar*d(rho)
check('raw CS kinetic minus minimal CS kinetic = d(tau E*)',raw-minimal-d(tau*Estar))
check('FULL minimal kinetic pullback boundary primitive',minimal-geo-d(I(ef*pf)-tau*Estar))
print('ALL FULL KINETIC-DENSITY CHECKS PASSED; arbitrary first jets; SageMath',version)
