"""Independent requested phi4 contrast, derived without reading parent candidates.
Pair gamma_kl/gamma_00 = delta_kl (2d-1)/(2d+2k-1).
Complete stable (2,2) basis (c22,c20*c02,c11^2), N>=4.
"""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json,time
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
R0=PolynomialRing(QQ,'d');K=R0.fraction_field();d=K.gen()
records=[]
def ck(label,b,**kw):
    b=bool(b);records.append(dict(label=label,passed=b,**kw));print(label,'PASS' if b else 'FAIL',flush=True)
    if not b:raise AssertionError(label)
def proj(T):
    lo=matrix(K,T,T+1);up=matrix(K,T+1,T)
    for j in range(T+1):
        if j:lo[j-1,j]=j
        if j<T:lo[j,j]=T-j
    for j in range(T):up[j,j]=T-1-j+d;up[j+1,j]=j+d
    C=(T+d)*(T+d-1)*identity_matrix(K,T+1)-up*lo
    cs=[(d+k)*(d+k-1) for k in range(T+1)]
    return [prod((C-cs[r]*identity_matrix(K,T+1))/(cs[k]-cs[r]) for r in range(T+1) if r!=k) if T else identity_matrix(K,1) for k in range(T+1)]
pp={T:proj(T) for T in range(3)}
inds=[(p,q) for p in range(3) for q in range(3) if p+q>0]
R=PolynomialRing(K,['a%d%d'%u for u in inds]);a=dict(zip(inds,R.gens()));a[0,0]=R(1)
c={}
for p,q in inds:
    if p+q>=2:c[p,q]=sum(binomial(p,i)*binomial(q,j)*(-a[1,0])**(p-i)*(-a[0,1])**(q-j)*a[i,j] for i in range(p+1) for j in range(q+1))
F={}
for u in [(0,0)]+inds:
 for v in [(0,0)]+inds:
    P,Q=u[0]+v[0],u[1]+v[1]
    if P>2 or Q>2:continue
    f=R(0)
    for k in range(min(P,Q)+1):
     coeff=(2*d-1)/(2*d+2*k-1)
     for i in range(P+1):
      for j in range(Q+1):f+=coeff*pp[P][k][i,u[0]]*pp[Q][k][j,u[1]]*a[i,j]*a[P-i,Q-j]
    F[u,v]=R(f)
def count(f):return sum(a[u]*f.derivative(a[u]) for u in inds)
def lead(f):return R(sum((F[(0,0),u]-a[u])*f.derivative(a[u]) for u in inds))
def const(f):
    out=-lead(count(f))-(count(count(f))-count(f))/2
    for i,u in enumerate(inds):
     for v in inds[i:]:
      if (u,v) in F:out+=F[u,v]*f.derivative(a[u]).derivative(a[v])/(2 if u==v else 1)
    return R(out)
basis=[c[2,2],c[2,0]*c[0,2],c[1,1]**2];sub={a[1,0]:0,a[0,1]:0};mons=[R(f.subs(sub)) for f in basis]
A=matrix(K,[[R(lead(f).subs(sub)).monomial_coefficient(m) for m in mons] for f in basis]).transpose()
B=matrix(K,[[R(const(f).subs(sub)).monomial_coefficient(m) for m in mons] for f in basis]).transpose()
ck('leading_triangular',all(A[i,j]==0 for i in range(3) for j in range(i+1,3)) and A[2,1]==0)
slopes=[A[i,i] for i in range(3)];gaps={(i,j):slopes[i]-slopes[j] for i in range(3) for j in range(i)}
roots={str(ij):[(str(r),int(m)) for r,m in R0(f.numerator()).roots(AA) if r>1] for ij,f in gaps.items()}
print('A=',A);print('B=',B);print('slopes=',slopes);print('gaps=',{str(ij):str(f.factor()) for ij,f in gaps.items()});print('physical exceptional roots=',roots)
# Find and analyze every physical resonance; this is derived rather than supplied.
resonances=[]
for (i,j),gap in gaps.items():
    for pol,mult in R0(gap.numerator()).factor():
        physical=[r for r,m in pol.roots(AA) if r>1]
        if not physical:continue
        L=NumberField(pol,'dc');dc=L.gen()
        ev=lambda f:L(f.numerator()(dc))/L(f.denominator()(dc))
        Ac=matrix(L,3,3,[ev(f) for f in A.list()]);Bc=matrix(L,3,3,[ev(f) for f in B.list()]);lam=Ac[i,i]
        J=Ac-lam*identity_matrix(L,3)
        algmult=sum(Ac[k,k]==lam for k in range(3));geom=3-J.rank()
        ck('resonant_algebraic_multiplicity_two',algmult==2)
        # The resonant cluster comprises first generator and c11^2.
        ck('resonant_indices_0_2',set((i,j))==set((0,2)))
        product=Ac[2,0]*Bc[0,2]
        pv=ev(A[2,0]*B[0,2])
        for root in physical:
            emb=L.hom([root],AA);ck('nonzero_positive_sqrt_coupling',emb(product)>0)
            resonances.append({'minimal_polynomial':str(pol),'root':str(root),'algebraic_multiplicity':int(algmult),'geometric_multiplicity':int(geom),'Jordan':geom==1,'coupling_product_in_field':str(product),'coupling_product_numeric':str(emb(product)),'sqrt_split_coefficient':str(sqrt(emb(product))),'slope':str(emb(lam))})
# Exact physical Gram identity for every N, not Euclidean Hermiticity.
KN=PolynomialRing(K,'N').fraction_field();N=KN.gen();M=N*A+B
allmons=sorted(set(m for f in basis for m in f.monomials()),key=str)
C=matrix(K,[[f.monomial_coefficient(m) for f in basis] for m in allmons])
def rise(x,n):return prod(x+j for j in range(n))
gd=[]
for mon in allmons:
    ex=mon.exponents()[0];r=sum(ex)
    g=prod(factorial(e)*(factorial(u[0])*factorial(u[1])/(rise(d,u[0])*rise(d,u[1])))**e for u,e in zip(inds,ex))
    gd.append(g/prod(N-j for j in range(r)))
G=C.transpose()*diagonal_matrix(KN,gd)*C
ck('physical_Gram_selfadjoint',G*M==M.transpose()*G)
# The sqrtN coefficient follows independently from the characteristic polynomial.
U=PolynomialRing(KN,'lam');lam=U.gen();char=M.charpoly('lam')
poly=next(pol for pol,m in R0(gaps[(2,0)].numerator()).factor() if any(root>1 for root,mul in pol.roots(AA)))
L=NumberField(poly,'dc');dc=L.gen();ev=lambda f:L(f.numerator()(dc))/L(f.denominator()(dc))
Ac=matrix(L,3,3,[ev(f) for f in A.list()]);Bc=matrix(L,3,3,[ev(f) for f in B.list()])
Rs=PolynomialRing(L,['t','z']);t,z=Rs.gens();lam0=Ac[0,0]
resdet=(matrix(Rs,Ac)+t**2*matrix(Rs,Bc)-(lam0+t*z)*identity_matrix(Rs,3)).det()
# After M/N=A+t²B, leading resonant roots are lambda0+t*z.
coef_t2=resdet.coefficient({t:2})
expect=(Ac[1,1]-lam0)*(z*z-Ac[2,0]*Bc[0,2])
ck('characteristic_sqrtN_coefficient',coef_t2==expect)

result={'method':'independent Casimir interpolation + literal creation lift; no parent candidate consulted','normalization':'gamma00=1; add choose(N,2)I; physical coefficients multiply whole answer by c0','basis':['c22','c20*c02','c11^2'],'A':[[str(x.factor()) if x else '0' for x in row] for row in A],'B':[[str(x.factor()) if x else '0' for x in row] for row in B],'slopes':[str(s.factor()) for s in slopes],'slope_differences':{str(ij):str(f.factor()) for ij,f in gaps.items()},'all_physical_roots':roots,'resonances':resonances,'sqrt_product_rational':str((A[2,0]*B[0,2]).factor()),'checks':records,'all_passed':all(r['passed'] for r in records),'sage_version':sage_version}
path=OUT/'results/audit2_stable_phi4_22.json';path.write_text(json.dumps(result,indent=2)+'\n');print('RESULT',path)
