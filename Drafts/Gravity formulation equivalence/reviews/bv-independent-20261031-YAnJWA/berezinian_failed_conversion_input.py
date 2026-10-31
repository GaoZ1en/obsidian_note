"""SEPARATE POST-FREEZE FOLLOW-UP, prompted by the parent.
Exact right-coordinate mixed-Jacobian Schur complement and a minimal
2-Grassmann check of the left/right block-sign pitfall.
No continuum BV measure or QME assertion is made.
"""
from sage.all import QQ,PolynomialRing,ExteriorAlgebra
from sage.version import version
R=PolynomialRing(QQ,names=('g','x','y','e0','e1','e2','w0','w1','w2'))
g,x,y,*rest=R.gens();e=rest[:3];w=rest[3:]
A=ExteriorAlgebra(R,names=('z0','z1','z2','p0','p1','p2','q0','q1','q2','l'))
ag=A.gens();z=ag[:3];p=ag[3:6];q=ag[6:9];l=ag[9]
def eps(i,j,k):
    if len({i,j,k})<3:return 0
    return 1 if (i,j,k) in ((0,1,2),(1,2,0),(2,0,1)) else -1
def i1(P):return [sum((eps(a,m,n)*z[m]*P[a] for a in range(3) for m in range(3)),A.zero()) for n in range(3)]
def i2top(X):return [-sum((eps(m,n,j)*z[m]*z[n]*X for m in range(3) for n in range(3)),A.zero()) for j in range(3)]
def i2(P):return -sum((eps(a,m,n)*z[m]*z[n]*P[a] for a in range(3) for m in range(3) for n in range(3)),A.zero())
def i3top(X):return -6*z[0]*z[1]*z[2]*X
def check(label,residual):
    ok=residual==0
    print(label+': '+('PASS' if ok else 'FAIL'))
    if not ok:print('Residual:',residual)
    assert ok,label
E=[e[i]+g*i1(q)[i]+g/2*i2top(x)[i] for i in range(3)]
W=[w[i]+g*i1(p)[i]+g/2*i2top(y)[i] for i in range(3)]
tau=sum((z[i]*e[i] for i in range(3)),A.zero())+g/2*i2(q)+g/3*i3top(x)
rho=l+sum((z[i]*w[i] for i in range(3)),A.zero())+g/2*i2(p)+g/3*i3top(y)
Sright=[];Swrong=[]
for j in range(3):
    # Coordinates vary as delta Q = J delta q, with coefficients on LEFT.
    # Therefore J = RIGHT derivatives. Even output / odd input gets minus.
    BE=[-E[i].interior_product(z[j]) for i in range(3)]
    BW=[-W[i].interior_product(z[j]) for i in range(3)]
    Dt=tau.interior_product(z[j]);Dr=rho.interior_product(z[j])
    St=Dt-sum((z[i]*BE[i] for i in range(3)),A.zero())
    Sr=Dr-sum((z[i]*BW[i] for i in range(3)),A.zero())
    Sright.append(St)
    check('RIGHT-Jacobian translation Schur row %d'%j,St-e[j])
    check('RIGHT-Jacobian Lorentz Schur row %d'%j,Sr-w[j])
    wrong=Dt+sum((z[i]*BE[i] for i in range(3)),A.zero())
    Swrong.append(wrong)
    check('WRONG left-block result identified %d'%j,wrong-e[j]-2*g*i1(q)[j]-2*g*i2top(x)[j])
# Keep only xi^1 and Omega*^3 as odd generators AFTER differentiation.
# Set ghost-antifields x=y=0 and the relevant coframe entry e_2=1.
B=ExteriorAlgebra(QQ['g'],names=('theta','eta'));gg=B.base_ring().gen();theta,eta=B.gens()
images=[theta,B.zero(),B.zero()]+[B.zero()]*3+[B.zero(),B.zero(),eta]+[B.zero()]
def reduce2(f):
    out=B.zero()
    for key,coeff in f.monomial_coefficients().items():
        val=coeff(g=gg,x=0,y=0,e0=0,e1=1,e2=0,w0=0,w1=0,w2=0)
        term=B(val)
        for j in key:term*=images[j]
        out+=term
    return out
print('2-Grassmann right Schur entry:',reduce2(Sright[1]))
print('2-Grassmann wrong-left Schur entry:',reduce2(Swrong[1]))
assert reduce2(Sright[1])==1
assert reduce2(Swrong[1])==1+2*gg*theta*eta
print('ALL BEREZINIAN FOLLOW-UP CHECKS PASSED; SageMath',version)
