"""SUPPLIED-TEXT AUDIT check, not part of the independent frozen derivation.
Verify the auxiliary quadratic form, inverse/Hessian, and adapted-frame wall flux.
"""
from sage.all import QQ,PolynomialRing,ExteriorAlgebra,matrix,identity_matrix
from sage.version import version
R=PolynomialRing(QQ,names=('a',)+tuple('u%d%d'%(i,j) for i in range(3) for j in range(3))+('t',))
a=R.gen(0); us=R.gens()[1:10];t=R.gen(10);U=matrix(R,3,3,us)
A=ExteriorAlgebra(R,names=('e0','e1','e2'));e=A.gens();vol=e[0]*e[1]*e[2]
def eps(i,j,k):
    if len({i,j,k})<3:return 0
    return 1 if (i,j,k) in ((0,1,2),(1,2,0),(2,0,1)) else -1
def check(label,residual):
    ok=residual==0
    print(label+': '+('PASS' if ok else 'FAIL'))
    if not ok:print(residual)
    assert ok,label
k=[-sum((U[c,d]*e[d] for d in range(3)),A.zero()) for c in range(3)]
q=U.trace()**2-(U*U).trace()
quad=a*sum((eps(i,j,k0)*e[i]*k[j]*k[k0] for i in range(3) for j in range(3) for k0 in range(3)),A.zero())
check('bulk contorsion quadratic = a q(U) vol',quad-a*q*vol)
L=lambda V:V.trace()*identity_matrix(R,3)-V.transpose()
Linv=lambda V:V.trace()/2*identity_matrix(R,3)-V.transpose()
check('L inverse on all matrix entries',Linv(L(U))-U)
H=matrix(R,9,9,lambda i,j:(a*q).derivative(us[i]).derivative(us[j]))
check('auxiliary Hessian determinant',H.det()+2**10*a**9)
check('auxiliary Hessian characteristic polynomial',(t*identity_matrix(R,9)-H).det()-(t-4*a)*(t-2*a)**3*(t+2*a)**5)
Theta=2*sum((e[c]*U[c,d]*e[d] for c in range(3) for d in range(3)),A.zero())
def wall(f):return A.sum_of_terms((key,coeff) for key,coeff in f.monomial_coefficients().items() if 2 not in key)
check('adapted-frame bulk flux',wall(a*Theta)-2*a*(U[0,1]-U[1,0])*e[0]*e[1])
# n=(0,0,1), K^{c}{}_{2}=epsilon^{c2}{}_r U^r{}_s e^s.
Kc2=[sum((eps(c,2,r)*U[r,s]*e[s] for r in range(3) for s in range(3)),A.zero()) for c in range(3)]
wallterm=-2*a*sum((eps(2,b,c)*e[b]*Kc2[c] for b in range(3) for c in range(3)),A.zero())
check('completed wall cancels same-cutoff bulk flux',wall(a*Theta+wallterm))
print('ALL SUPPLIED-TEXT AUXILIARY CHECKS PASSED; SageMath',version)
