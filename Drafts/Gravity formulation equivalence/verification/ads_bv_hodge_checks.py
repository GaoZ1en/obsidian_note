"""Exact hyperbolic gravitational-CS complex checks; no spectrum inferred from jets.
Run in a fresh Sage 10.9 process. Outputs go to a unique kernel-export directory.
"""
from sage.all import *
from sage.env import SAGE_VERSION
from pathlib import Path
import os, json, tempfile, hashlib

SOURCE = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads_bv_hodge_checks.py')
K = QuadraticField(-1, 'ii'); ii = K.gen()
R = PolynomialRing(K, names=('z','t','kx','ky'))
z,t,kx,ky = R.gens(); F = R.fraction_field()
# In the orthonormal coframe e=(dx,dy,dz)/z, factor out
# phi=z^t exp(i*kx*x+i*ky*y). All coefficient operations remain rational.
masks = [[m for m in range(8) if m.bit_count()==p] for p in range(4)]
bases = [[(m,a) for m in masks[p] for a in range(6)] for p in range(4)]
index = [{b:i for i,b in enumerate(bs)} for bs in bases]

def wedge(m,n):
    if m & n: return 0,0
    inversions = sum(1 for i in range(3) for j in range(3) if (m>>i)&1 and (n>>j)&1 and i>j)
    return (-1)**inversions, m|n

def eps(a,b,c):
    return LeviCivita(a,b,c)

def LeviCivita(a,b,c):
    if len({a,b,c})<3: return 0
    return (-1)**sum(1 for i,j in ((a,b),(a,c),(b,c)) if i>j)

def zero(p): return vector(F,len(bases[p]))
def basisvec(p,j):
    v=zero(p);v[j]=1;return v

def dscalar(f,i):
    if i==0:return ii*kx*z*f
    if i==1:return ii*ky*z*f
    return z*f.derivative(z)+t*f

def add_wedge(out,p,m,n,a,val):
    sign,new = wedge(m,n)
    if sign:out[index[p][(new,a)]] += sign*val

def de_mask(m):
    terms={}
    ordered=[j for j in range(3) if (m>>j)&1]
    for pos,j in enumerate(ordered):
        if j==2:continue
        left=sum(1<<v for v in ordered[:pos]);right=sum(1<<v for v in ordered[pos+1:])
        s,n=wedge(left,(1<<j)|4)
        if not s:continue
        ss,n=wedge(n,right)
        if ss:terms[n]=terms.get(n,0)+(-1)**pos*s*ss
    return terms

# omega=e^2 J1-e^1 J2, e=e^i P_i.
def D(p,v):
    if p==3:return vector(F,0)
    out=zero(p+1)
    for (m,a),f in zip(bases[p],v):
        if not f:continue
        for i in range(3):add_wedge(out,p+1,1<<i,m,a,dscalar(f,i))
        for n,sign in de_mask(m).items():out[index[p+1][(n,a)]]+=sign*f
        typ,b=divmod(a,3)
        for i,j,coeff in ((1,0,1),(0,1,-1)):
            for c in range(3):
                e=eps(j,b,c)
                if e:add_wedge(out,p+1,1<<i,m,3*typ+c,coeff*e*f)
        for i in range(3):
            for c in range(3):
                e=eps(i,b,c)
                if e:add_wedge(out,p+1,1<<i,m,3*(1-typ)+c,(-1 if typ else 1)*e*f)
    return out

def H(p,v):
    out=zero(3-p)
    for (m,a),f in zip(bases[p],v):
        comp=7^m;sign,_=wedge(m,comp)
        out[index[3-p][(comp,(a+3)%6)]] += sign*f
    return out

def delta(p,v):
    if p==0:return vector(F,0)
    return (-1)**p*H(4-p,D(3-p,H(p,v)))

def Delta(p,v):
    out=zero(p)
    if p:out+=D(p-1,delta(p,v))
    if p<3:out+=delta(p+1,D(p,v))
    return out

# Independent rough-Laplacian construction: tensor covariant derivative,
# Omega_1=-ad(J2), Omega_2=ad(J1), Omega_3=0 on all tensor indices.
def omega(i,b,c):
    if i==0:return -eps(1,b,c)
    if i==1:return eps(0,b,c)
    return 0

def nabla(p,v,i):
    out=zero(p)
    for (m,a),f in zip(bases[p],v):
        if not f:continue
        out[index[p][(m,a)]]+=dscalar(f,i)
        typ,b=divmod(a,3)
        for c in range(3):out[index[p][(m,3*typ+c)]]+=omega(i,b,c)*f
        ordered=[j for j in range(3) if (m>>j)&1]
        for pos,j in enumerate(ordered):
            for c in range(3):
                val=omega(i,j,c)
                if not val:continue
                new_order=ordered[:pos]+[c]+ordered[pos+1:]
                if len(set(new_order))<p:continue
                sign=(-1)**sum(1 for u in range(p) for vj in range(u+1,p) if new_order[u]>new_order[vj])
                n=sum(1<<u for u in new_order)
                out[index[p][(n,a)]]+=sign*val*f
    return out

def rough(p,v):
    return -sum((nabla(p,nabla(p,v,i),i) for i in range(3)),zero(p))+2*nabla(p,v,2)

def T1(v):
    out=zero(1)
    for typ in (0,1):
        tr=sum(v[index[1][(1<<i,3*typ+i)]] for i in range(3))
        for i in range(3):
            for a in range(3):
                out[index[1][(1<<i,3*typ+a)]]=(tr if i==a else 0)-v[index[1][(1<<a,3*typ+i)]]
    return out

def potential(p,v):
    if p in (0,3):return 2*v
    if p==1:return 2*T1(v)
    return 2*H(1,T1(H(2,v)))

def columns(p,q,operator):
    return matrix(F,len(bases[q]),len(bases[p]),lambda i,j:operator(p,basisvec(p,j))[i])

def iszero(v):return all(x==0 for x in v)
checks=[]
def check(label,condition):checks.append({'label':label,'passed':bool(condition)})

for p in range(4):
    vs=[basisvec(p,j) for j in range(len(bases[p]))]
    check('H squared degree %d'%p,all(H(3-p,H(p,v))==v for v in vs))
    check('Casimir Weitzenboeck degree %d'%p,all(iszero(Delta(p,v)-rough(p,v)-potential(p,v)) for v in vs))
    check('H commutes Delta degree %d'%p,all(iszero(H(p,Delta(p,v))-Delta(3-p,H(p,v))) for v in vs))
    if p<=1:check('flat D squared degree %d'%p,all(iszero(D(p+1,D(p,v))) for v in vs))
    if p>=2:check('delta squared degree %d'%p,all(iszero(delta(p-1,delta(p,v))) for v in vs))
    if p<=2:check('D commutes Delta degree %d'%p,all(iszero(D(p,Delta(p,v))-Delta(p+1,D(p,v))) for v in vs))

# Exact radial indicial matrices, not L2 modes. The formal Mellin dual is 2-t.
Q = PolynomialRing(QQ,'tt');tt=Q.gen();RF=Q.fraction_field()
def radial(f):
    f=F(f)
    def pol(poly):
        out=RF(0)
        for powers,coef in poly.dict().items():
            if powers[2] or powers[3]:continue
            out+=QQ(coef)*tt**powers[1]
        return out
    return pol(f.numerator())/pol(f.denominator())
# z is set to one only after kx=ky=0; the resulting matrices are z independent.
def radialmat(m):return matrix(RF,m.nrows(),m.ncols(),[radial(v) for v in m.list()])
Dm=[radialmat(columns(p,p+1,D)) for p in range(3)]
dm=[None]+[radialmat(columns(p,p-1,delta)) for p in range(1,4)]
Lm=[radialmat(columns(p,p,Delta)) for p in range(4)]
Hm=[radialmat(columns(p,3-p,H)) for p in range(4)]
hm=[None]+[dm[p]*Lm[p].inverse() for p in range(1,4)]
def dual(m):return m.apply_map(lambda f: RF(f.subs({tt:2-tt})))
radial_determinants={str(p):str(Lm[p].det().factor()) for p in range(4)}
for p in range(4):
    ident=identity_matrix(RF,len(bases[p]));res=zero_matrix(RF,len(bases[p]))
    if p:res+=Dm[p-1]*hm[p]
    if p<3:res+=hm[p+1]*Dm[p]
    check('radial contraction degree %d'%p,res==ident)
    if p:
        check('radial Hilbert adjoint degree %d'%p,dm[p]==dual(Dm[p-1]).transpose())
        # <h u,v>_B=(-1)^p <u,h v>_B, with Mellin-dual input.
        q=4-p
        check('radial cyclic homotopy degree %d'%p,hm[p].transpose()*Hm[q]==(-1)**p*Hm[q-1]*dual(hm[q]))
    if p>=2:check('radial h squared degree %d'%p,(hm[p-1]*hm[p]).is_zero())

result={'scope':'Exact full first/second-order hyperbolic differential identities on all 48 bundle components; rational radial indicial contraction. Radial powers are not L2 states. No numerical spectrum, cutoff rank, boundary or loop assertion.',
        'sage_version':SAGE_VERSION,'all_passed':all(c['passed'] for c in checks),'checks':checks,
        'basis_sizes':[len(x) for x in bases],'radial_Delta_determinants':radial_determinants,
        'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest()}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results/kernel-exports'
store.mkdir(parents=True,exist_ok=True)
out=Path(tempfile.mkdtemp(prefix='ads-bv-hodge-',dir=store))
(out/'executed-source.py').write_bytes(SOURCE.read_bytes())
(out/'result.json').write_text(json.dumps(result,indent=2)+'\n')
save({'D':Dm,'delta':dm,'Delta':Lm,'H':Hm,'h':hm},str(out/'radial-exact.sobj'))
print(json.dumps({'output':str(out/'result.json'),'source':str(out/'executed-source.py'),'native':str(out/'radial-exact.sobj'),'all_passed':result['all_passed'],'check_count':len(checks)},indent=2))
if not result['all_passed']:raise AssertionError('Some exact checks failed; inspect saved result.')
