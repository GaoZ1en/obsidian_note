"""Fresh bivariate stable-pencil reconstruction by Casimir interpolation.
No manuscript implementation is imported. All checks are exact rational identities.
"""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json,time
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
start=time.time();checks=[]
def check(label,b,**kw):
    b=bool(b);checks.append(dict(label=label,passed=b,**kw));print(label,'PASS' if b else 'FAIL')
    if not b:raise AssertionError(label)
R0=PolynomialRing(QQ,'d');K=R0.fraction_field();d=K.gen()
def gam(k,l):
    n=min(k,l);spin=abs(k-l);h=d+n;C=h*(h-1);mu=d*(d-2);u=4*mu-8*C
    if spin==0:return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin==2:return u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u

def projectors(T):
    lo=matrix(K,T,T+1);up=matrix(K,T+1,T)
    for j in range(T+1):
        if j:lo[j-1,j]=j
        if j<T:lo[j,j]=T-j
    for j in range(T):up[j,j]=T-1-j+d;up[j+1,j]=j+d
    C=(T+d)*(T+d-1)*identity_matrix(K,T+1)-up*lo
    cs=[(d+k)*(d+k-1) for k in range(T+1)]
    return [prod((C-cs[r]*identity_matrix(K,T+1))/(cs[k]-cs[r]) for r in range(T+1) if r!=k) if T else identity_matrix(K,1) for k in range(T+1)]
pr={T:projectors(T) for T in range(5)}
inds=[(p,q) for p in range(5) for q in range(2) if p+q>0]
R=PolynomialRing(K,['a%d%d'%v for v in inds]);a=dict(zip(inds,R.gens()));a[0,0]=R(1)
c={}
for p,q in inds:
    if p+q>=2:
        c[p,q]=sum(binomial(p,i)*binomial(q,j)*(-a[1,0])**(p-i)*(-a[0,1])**(q-j)*a[i,j] for i in range(p+1) for j in range(q+1))
F={}
for u in [(0,0)]+inds:
 for v in [(0,0)]+inds:
    P,Q=u[0]+v[0],u[1]+v[1]
    if P>4 or Q>1:continue
    poly=R(0)
    for k in range(P+1):
     for l in range(Q+1):
      if (k+l)%2:continue
      for i in range(P+1):
       for j in range(Q+1):
        poly+=gam(k,l)*pr[P][k][i,u[0]]*pr[Q][l][j,u[1]]*a[i,j]*a[P-i,Q-j]
    F[u,v]=R(poly)
g0=gam(0,0)
def count(f):return sum(a[u]*f.derivative(a[u]) for u in inds)
def A(f):return R(sum((F[(0,0),u]-g0*a[u])*f.derivative(a[u]) for u in inds))
def B(f):
    out=-A(count(f))-g0/2*(count(count(f))-count(f))
    for i,u in enumerate(inds):
     for v in inds[i:]:
      if (u,v) in F:out+=F[u,v]*f.derivative(a[u]).derivative(a[v])/(2 if u==v else 1)
    return R(out)
def block(P):
    basis=[c[3,1],c[1,1]*c[2,0]] if P==3 else [c[4,1],c[1,1]*c[3,0],c[2,0]*c[2,1]]
    sub={a[1,0]:0,a[0,1]:0};mons=[R(f.subs(sub)) for f in basis]
    aa=[];bb=[]
    for f in basis:
        af=R(A(f).subs(sub));bf=R(B(f).subs(sub))
        aa.append([af.monomial_coefficient(m) for m in mons]);bb.append([bf.monomial_coefficient(m) for m in mons])
    return basis,matrix(K,aa).transpose(),matrix(K,bb).transpose()

basis,A4,B4=block(4)
DD=(2*d-1)*(2*d+1)*(2*d+3)*(2*d+5)
s0=-d*d*(70*d*d+89*d-20)/((2*d-1)*(2*d+1)*(2*d+3))
delta=d*d*(2*d**3-37*d*d-11*d+100)/(2*DD)
v=3*d*d*(d+1)*(d+4)/((2*d-1)*(2*d+3)*(2*d+5))
k=d*(d+3)*(2*d*d+25*d+36)/(2*(2*d+1)*(2*d+3)*(2*d+5))
b11=-3*d*(38*d**3+169*d*d+131*d-108)/DD
b22=3*d*(4*d**4+20*d**3+11*d*d-39*d-4)/DD
b0=-12*d*(2*d*d+7*d+2)/((2*d-1)*(2*d+1)*(2*d+3))
check('ST03_entire_leading_A',A4==matrix(K,[[s0+delta,0,0],[2*delta-v,s0,0],[v,0,s0]]))
S=matrix(K,[[1,0],[2,-1],[0,1]])
check('ST03_exact_plane_A',A4*S==S*matrix(K,[[s0+delta,0],[v,s0]]))
check('ST03_exact_plane_B',B4*S==S*matrix(K,[[b11,k],[6*v/d,b22]]))
ell=vector(K,[-2,1,1]);check('ST03_left_character',ell*A4==s0*ell and ell*B4==b0*ell)
Fpoly=2*R0.gen()**3-37*R0.gen()**2-11*R0.gen()+100
root_intervals=[(QQ(1563)/1000,QQ(1564)/1000),(QQ(18651)/1000,QQ(18652)/1000)]
check('ST03_root_isolations',all(Fpoly(a)*Fpoly(b)<0 for a,b in root_intervals) and len([x for x,m in Fpoly.roots(AA) if x>1])==2)
check('ST03_nilpotent_square_at_resonance',all(R0(z.numerator())%Fpoly==0 for z in ((A4-s0*identity_matrix(K,3))**2).list()))
check('ST03_nonzero_coupling_at_resonance',R0(v.numerator()).gcd(Fpoly)==1 and R0(k.numerator()).gcd(Fpoly)==1)
KN=PolynomialRing(K,'N').fraction_field();N=KN.gen()
H2=matrix(KN,[[(s0+delta)*N+b11,k],[v*(N+6/d),s0*N+b22]])
lam0=s0*N+b0
expected=-18*d*d*(d+3)*(d+4)*(2*d*d+d-4)*(5*d*d*N+12*d*d+7*d*N+60*d+60)/((2*d-1)**2*(2*d+1)*(2*d+3)**2*(2*d+5)**2)
check('ST03_third_branch_collision_determinant',(H2-lam0*identity_matrix(KN,2)).det()==expected)
h=b11-b22;DN=(delta*N+h)**2+4*k*v*(N+6/d)
disc=KN(DN).numerator().discriminant()/KN(DN).denominator()**2
# Denominator is constant in N; this checks the exact printed discriminant.
expected_disc=1728*d**6*(d+1)*(d+3)*(d+4)*(2*d*d+d-4)*(2*d*d+25*d+36)*(2*d**4+31*d**3+77*d*d+47*d-4)/((2*d-1)**3*(2*d+1)**3*(2*d+3)**4*(2*d+5)**4)
check('ST03_spectral_curve_discriminant',disc==expected_disc)

basis3,A3,B3=block(3)
d31=-6*d*d*(2*d*d+d-4)/DD;beta=(d+2)/d
s31=A3[1,1];bs=-6*d*(10*d**3+39*d*d+33*d-14)/DD
check('ST09_full_pencil_A',A3==s31*identity_matrix(K,2)+d31*matrix(K,[[1,0],[3,0]]))
check('ST09_full_pencil_B',B3==bs*identity_matrix(K,2)+d31*matrix(K,[[0,beta],[9*beta,0]]))
pstar=2*R0.gen()**2+R0.gen()-4
check('ST09_scalar_critical_mass',all(R0(z.numerator())%pstar==0 for z in (A3-A3[0,0]*identity_matrix(K,2)).list()) and all(R0(z.numerator())%pstar==0 for z in (B3-B3[0,0]*identity_matrix(K,2)).list()))
W4=N*A4+B4
reduced=W4-(s0*N+b0)*identity_matrix(KN,3)
check('ST03_critical_doublet_rank_one',all(all(R0(co.numerator())%pstar==0 for co in minor.numerator().list()) for minor in [reduced.matrix_from_rows_and_columns(I,J).det() for I in Subsets(range(3),2) for J in Subsets(range(3),2)]))
W5=matrix(QQ,[[z.subs({d:2}) for z in row] for row in 5*A4+B4])
v1=vector(QQ,[-10,80,99]);v2=vector(QQ,[95,290,-153])
check('EX05_noninvariant_seed_span',matrix([v1,v2,W5*v2]).det()==10080000)

# Full stable physical Gram on (4,1), keeping N and d symbolic.
monomials=sorted(set(m for f in basis for m in f.monomials()),key=str)
C=matrix(K,[[f.monomial_coefficient(m) for f in basis] for m in monomials])
def rising(x,n):return prod(x+j for j in range(n))
gramdiag=[];counts=[]
for m in monomials:
    exps=m.exponents()[0];r=sum(exps);counts.append(r)
    gg=prod(factorial(e)*(factorial(u[0])*factorial(u[1])/(rising(d,u[0])*rising(d,u[1])))**e for u,e in zip(inds,exps))
    gramdiag.append(gg/prod(N-j for j in range(r)))
Gram=C.transpose()*diagonal_matrix(KN,gramdiag)*C
check('ST03_full_physical_Gram_identity',Gram*W4==W4.transpose()*Gram)
lead=matrix(K,[[C[i,j] if counts[i]==[1,2,2][j] else 0 for j in range(3)] for i in range(len(monomials))])
check('ST02_Q1_regular_frame_rank',lead.rank()==3)

# Pole residue tests and contraction with actual Einstein channels.
res=lambda f: R0((K(f)*(2*d-1)).numerator())(QQ(1)/2)/R0((K(f)*(2*d-1)).denominator())(QQ(1)/2)
check('ST04_ground_residue',res(gam(0,0))==QQ(3)/2)
check('ST04_other_channel_residues_to8',all(res(gam(k,l))==0 for k in range(9) for l in range(9) if (k+l)%2==0 and k+l>0))
def alpha(p,k):return binomial(p,k)*rising(d,p)/(rising(2*d+k-1,k)*rising(2*d+2*k,p-k))
check('ST04_endpoint_completeness_to12',all(sum(alpha(p,k) for k in range(p+1))==1 and sum((-1)**k*alpha(p,k) for k in range(p+1))==int(p==0) for p in range(13)))
check('ST04_dyadic_residues_to_degree12',all((QQ(3)/2*(2*binomial(2*p,p)*binomial(2*q,q)/QQ(4)**(p+q)-1)).valuation(2)==-(2*(p+q)-Integer(p).popcount()-Integer(q).popcount()) for p in range(13) for q in range(13-p) if p+q>=2))

# The nonchiral cone counterexample is a four-channel exact identity.
cgap=gam(0,0)-gam(2,0);b22gap=gam(0,0)-gam(2,2)
LF=(2*cgap-b22gap)/(2*d+1)**2
expectedLF=-12*(10*d**3+29*d*d+8*d-14)/((2*d-1)*(2*d+1)*(2*d+3)*(2*d+5))
check('EX07_cone_counterexample',LF==expectedLF and LF.subs({d:2})==-QQ(88)/35)

path=OUT/'results/audit2_stable_bivariate_checks.json'
path.write_text(json.dumps({'method':'fresh bivariate Casimir interpolation and creation lift; no manuscript code','sage_version':sage_version,'all_passed':all(c['passed'] for c in checks),'elapsed_seconds':time.time()-start,'checks':checks,'A41':str(A4),'B41':str(B4),'A31':str(A3),'B31':str(B3)},indent=2)+'\n')
print('RESULT',path)
