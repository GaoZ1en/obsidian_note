"""Run with SageMath 10.9: sage --nodotsage cartan_and_ghost_checks.py.
Part I tests universal first-jet Cartan/BCH identities using affine odd xi.
Part II tests the exact nonabelian CS gauge BRST signs at zero spacetime jets.
Part III verifies an explicit nondegenerate flat-CS H^3 background.
"""
from sage.all import QQ, PolynomialRing, ExteriorAlgebra
from sage.version import version

def eps(i,j,k):
    if len({i,j,k})<3: return 0
    return 1 if (i,j,k) in ((0,1,2),(1,2,0),(2,0,1)) else -1

def check(label,residual):
    ok=residual==0
    print(label+': '+('PASS' if ok else 'FAIL'))
    if not ok: print('  residual =',residual)
    assert ok,label

R=PolynomialRing(QQ,names=('X0','X1','X2')); X=R.gens()
A=ExteriorAlgebra(R,names=tuple(['eta%d'%i for i in range(3)]+['j%d%d'%(i,k) for i in range(3) for k in range(3)]+['dx%d'%i for i in range(3)]))
ag=A.gens(); eta=ag[:3]; jet=[[ag[3+3*i+k] for k in range(3)] for i in range(3)]; dx=ag[12:15]
xi=[eta[i]+sum((jet[i][k]*X[k] for k in range(3)),A.zero()) for i in range(3)]
v=[sum((xi[k]*jet[i][k] for k in range(3)),A.zero()) for i in range(3)]
def partial(f,k): return A.sum_of_terms((key,coeff.derivative(X[k])) for key,coeff in f.monomial_coefficients().items())
def d(f): return sum((dx[k]*partial(f,k) for k in range(3)),A.zero())
def I(f): return sum((xi[k]*f.interior_product(dx[k]) for k in range(3)),A.zero())
def J(f): return sum((v[k]*f.interior_product(dx[k]) for k in range(3)),A.zero())
def L(f): return I(d(f))-d(I(f))
def expI(f,sign): return f+sign*I(f)+I(I(f))/2+sign*I(I(I(f)))/6
samples=[A(X[i]) for i in range(3)]+list(ag)+[X[0]**2*eta[0]*dx[1],X[1]*eta[0]*jet[1][2]*dx[0]*dx[2],X[2]**2*dx[0]*dx[1]*dx[2]]
for n,f in enumerate(samples):
    check('BCH first-jet sample %d'%n,expI(d(expI(f,1)),-1)-d(f)+L(f)+J(f))
    check('[I,L]=-2J sample %d'%n,I(L(f))-L(I(f))+2*J(f))
    check('[I,J]=0 sample %d'%n,I(J(f))-J(I(f)))
Qeta=[sum((eta[k]*jet[i][k] for k in range(3)),A.zero()) for i in range(3)]
Qjet=[[sum((jet[k][j]*jet[i][k] for k in range(3)),A.zero()) for j in range(3)] for i in range(3)]
Qvalues=Qeta+[Qjet[i][j] for i in range(3) for j in range(3)]
def Q(f): return sum((Qvalues[k]*f.interior_product(ag[k]) for k in range(12)),A.zero())
for i in range(12): check('affine diffeomorphism BRST nilpotency %d'%i,Q(Q(ag[i])))
for i in range(3): check('s xi = xi.partial xi [%d]'%i,Q(xi[i])-v[i])

# The nonabelian gauge algebra [J,J]=eps J,[J,P]=eps P,[P,P]=-eps J.
R2=PolynomialRing(QQ,names=tuple(['E%d'%i for i in range(3)]+['W%d'%i for i in range(3)])); E=R2.gens()[:3]; W=R2.gens()[3:]
B=ExteriorAlgebra(R2,names=('r0','r1','r2','t0','t1','t2')); bg=B.gens(); r=bg[:3]; t=bg[3:]
def cross(u,v): return [sum((eps(a,b,c)*u[b]*v[c] for b in range(3) for c in range(3)),B.zero()) for a in range(3)]
qE=[cross(W,t)[a]+cross(E,r)[a] for a in range(3)]
qW=[cross(W,r)[a]-cross(E,t)[a] for a in range(3)]
qr=[-cross(r,r)[a]/2+cross(t,t)[a]/2 for a in range(3)]
qt=[-cross(r,t)[a] for a in range(3)]
def pd(f,z): return B.sum_of_terms((key,coeff.derivative(z)) for key,coeff in f.monomial_coefficients().items())
def s(f):
    f=B(f)
    return sum((qE[i]*pd(f,E[i])+qW[i]*pd(f,W[i]) for i in range(3)),B.zero())+sum(((qr+qt)[i]*f.interior_product(bg[i]) for i in range(6)),B.zero())
for i,z in enumerate(list(E)+list(W)+list(bg)): check('CS nonabelian BRST nilpotency %d'%i,s(s(z)))

# Upper-half-space H^3, e=(dx,dy,dz)/z, omega=(e2,-e1,0).
K=PolynomialRing(QQ,names=('z',)).fraction_field(); zc=K.gen()
C=ExteriorAlgebra(K,names=('dx','dy','dz')); ddx=C.gens()
ee=[ddx[0]/zc,ddx[1]/zc,ddx[2]/zc]; ww=[ee[1],-ee[0],C.zero()]
def d3(f): return ddx[2]*C.sum_of_terms((key,coeff.derivative(zc)) for key,coeff in f.monomial_coefficients().items())
def c3(u,v): return [sum((eps(a,b,c)*u[b]*v[c] for b in range(3) for c in range(3)),C.zero()) for a in range(3)]
for a in range(3):
    check('H3 torsion T[%d]'%a,d3(ee[a])+c3(ww,ee)[a])
    check('H3 flat-CS curvature K[%d]'%a,d3(ww[a])+c3(ww,ww)[a]/2-c3(ee,ee)[a]/2)
print('ALL CARTAN, GHOST, AND BACKGROUND CHECKS PASSED; SageMath',version)
