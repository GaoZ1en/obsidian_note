"""Exact finite BV pushforward and actual-H3 band test.
Run self-contained through SageMath. Native ExteriorAlgebra supplies products;
SymPy is used only for ordinary radial identities. No continuum QME test.
The finite model extends the earlier tree counterexample; it is not a new
independent implementation of that tree model or an AdS discretization.
"""
from sage.all import SR, ExteriorAlgebra
from sage.env import SAGE_VERSION
from sage.data_structures.bitset import FrozenBitset
from pathlib import Path
import os, json, hashlib, tempfile
import sympy as sp

names = ['q','r','b','e','u','t','hbar']
cv = {n: SR.var(n) for n in names}
q,r,b,e,u,t,hbar = [cv[n] for n in names]
oddnames = ['p','s','c','d','v']
E = ExteriorAlgebra(SR, names=oddnames)
ov = dict(zip(oddnames, E.gens()))
od = {n:i for i,n in enumerate(oddnames)}
p,s,c,d,v = E.gens()
z = E.zero()
pairs_full = [('q','p'),('r','s'),('c','b'),('d','e'),('u','v')]
pairs_ret = pairs_full[:-1]

def norm(a):
    return E.sum(SR(co).simplify_full()*E.monomial(m)
                 for m,co in E(a).monomial_coefficients().items())
def zero(a): return norm(a) == z

def left(a,n):
    a=E(a)
    if n not in od:
        return E.sum(SR(co).derivative(cv[n])*E.monomial(m)
                     for m,co in a.monomial_coefficients().items())
    out=z; j=od[n]
    for m,co in a.monomial_coefficients().items():
        inds=list(m)
        if j in inds:
            k=inds.index(j)
            out += (-1)**k*co*E.monomial(FrozenBitset([i for i in inds if i!=j],capacity=5))
    return out

def right(a,n):
    if n not in od: return left(a,n)
    out=z; j=od[n]
    for m,co in E(a).monomial_coefficients().items():
        inds=list(m)
        if j in inds:
            k=inds.index(j)
            out += (-1)**(len(inds)-1-k)*co*E.monomial(FrozenBitset([i for i in inds if i!=j],capacity=5))
    return out

def br(a,bb,pairs=pairs_full):
    return norm(sum((right(a,qq)*left(bb,pp)-right(a,pp)*left(bb,qq)
                     for qq,pp in pairs),z))
def lap(a,pairs=pairs_full):
    return norm(sum(((-1 if qq in od else 1)*left(left(a,pp),qq)
                     for qq,pp in pairs),z))
def sub(a,**subs):
    sm={cv[k]:val for k,val in subs.items()}
    return norm(E.sum(SR(co).subs(sm)*E.monomial(m)
                      for m,co in E(a).monomial_coefficients().items()))
def no_v(a):
    return E.sum(co*E.monomial(m) for m,co in E(a).monomial_coefficients().items() if od['v'] not in m)
def at_j(a):
    base=no_v(sub(a,u=-r*r))
    return norm(base + dy*no_v(sub(left(a,'u'),u=-r*r)))
def coord(n): return ov[n] if n in od else E(cv[n])

def exp_nil(a):
    out=E.one(); term=E.one()
    for k in range(1,7):
        term=term*a/k; out+=term
    assert zero(term)
    return norm(out)

checks=[]
def check(label,condition,**data):
    if type(condition) is not bool:
        raise TypeError((label,type(condition)))
    checks.append(dict(label=label,passed=condition,**data))
    if not condition: raise AssertionError(label)

check('all five native Darboux pairs', all(br(coord(qq),coord(pp))==1 for qq,pp in pairs_full))
check('BV product identity on coordinate pairs',all(zero(br(coord(a),coord(bb))-(-1 if a in od else 1)*(lap(coord(a)*coord(bb))-lap(coord(a))*coord(bb)-(-1 if a in od else 1)*coord(a)*lap(coord(bb)))) for a in names[:5]+oddnames for bb in names[:5]+oddnames))
S=(u+r*r)**2/2+(t*u).exp()*p*c+s*d-2*(v-t*b*c)*r*d
Gamma=b*c*u
ell=-t*u
Sq=S+hbar*t*u
check('full classical master equation',zero(br(S,S)))
check('right-action classical family',zero(left(S,'t')-br(S,Gamma)))
check('nonzero full generator divergence',zero(lap(Gamma)+u) and not zero(lap(Gamma)))
check('full half-density source equation',zero(left(E(ell),'t')-br(ell,Gamma)-lap(Gamma)))
check('full quantum master equation',zero(br(Sq,Sq)/2-hbar*lap(Sq)))
check('full Euclidean quantum transport',zero(left(Sq,'t')-br(Sq,Gamma)+hbar*lap(Gamma)))

a0=(-t*r*r).exp()
dy=-t*a0*p*c
y=E(-r*r)+dy
K=E.one()+t*t*a0*p*c
check('exact stationary graph and invertible Hessian',zero(at_j(left(S,'u'))) and zero(at_j(left(left(S,'u'),'u'))-K) and zero(K*(2-K)-1))
W0=a0*p*c+s*d+2*t*b*c*r*d
W1=E(-t*r*r)-t*t*a0*p*c/2
gamma0=-b*c*r*r
gamma1=-t*b*c
check('tree action and generator on graph',zero(at_j(S)-W0) and zero(at_j(Gamma)-gamma0))
check('Hessian and source density give one-loop action',zero(t*y+(K-1)/2-W1))
check('normalized Wick insertion has nonzero density term',zero(-left(Gamma,'u')*(2-K)*t-gamma1) and not zero(gamma1))
check('one-loop transport including insertion',zero(left(W1,'t')-br(W1,gamma0,pairs_ret)-br(W0,gamma1,pairs_ret)+lap(gamma0,pairs_ret)))
naive=norm(left(W1,'t')-br(W1,gamma0,pairs_ret)+lap(gamma0,pairs_ret))
check('negative control omitting one-loop generator',not zero(naive) and zero(naive+t*a0*p*c))

ah=(-t*r*r-hbar*t*t/2).exp()
W=ah*p*c+s*d+2*t*b*c*r*d-hbar*t*r*r-hbar*hbar*t*t/2
gamma=-b*c*(r*r+hbar*t)
A=(t*r*r+hbar*t*t/2).exp()
amp=exp_nil(-(s*d+2*t*b*c*r*d)/hbar)*(E(A)-p*c/hbar)
amp_from_W=A*exp_nil(-(ah*p*c+s*d+2*t*b*c*r*d)/hbar)
num=exp_nil(-(s*d+2*t*b*c*r*d)/hbar)*b*c*(-r*r-hbar*t)*A
check('exact Gaussian-normalized effective semidensity',zero(amp-amp_from_W))
check('exact normalized Gaussian generator insertion',zero(num-gamma*amp))
check('exact retained quantum master equation',zero(br(W,W,pairs_ret)/2-hbar*lap(W,pairs_ret)))
check('exact retained quantum transport',zero(left(W,'t')-br(W,gamma,pairs_ret)+hbar*lap(gamma,pairs_ret)))
check('exact semidensity BV-Stokes identity',zero(left(amp,'t')-lap(gamma*amp,pairs_ret)) and zero(lap(amp,pairs_ret)))
check('one-loop expansion of exact answer',zero(sub(W,hbar=0)-W0) and zero(sub(left(W,'hbar'),hbar=0)-W1) and zero(sub(left(gamma,'hbar'),hbar=0)-gamma1))
B=-t*t*b*c/2
check('tree-Jacobian defect is explicit classical BV exact',zero(W1+t*r*r-br(W0,B,pairs_ret)) and not zero(W1+t*r*r))

# The H3 scalar is genuinely in a bounded spectral band, not compact support.
rr,bb,ll=sp.symbols('r b lambda',positive=True)
U=(1-sp.cos(bb*rr))/rr
phi=U/sp.sinh(rr)
radial=-sp.diff(phi,rr,2)-2*sp.coth(rr)*sp.diff(phi,rr)
check('H3 radial Laplacian conjugation for actual trace block',sp.simplify(sp.sinh(rr)*(radial+4*phi)-(-sp.diff(U,rr,2)+5*U))==0)
check('explicit compact sine-transform spectral support',sp.simplify(sp.integrate(sp.sin(ll*rr),(ll,0,bb))-U)==0)
check('regular origin and nonzero field',sp.limit(phi,rr,0)==bb**2/2)
J=-(1-sp.cos(bb*rr))**2/rr+2*bb*sp.Si(bb*rr)-bb*sp.Si(2*bb*rr)
check('exact radial norm primitive',sp.simplify(sp.diff(J,rr)-U**2)==0 and sp.limit(J,rr,0)==0)
check('exact scalar L2 norm 2 pi squared b',sp.simplify(4*sp.pi*sp.limit(J,rr,sp.oo)-2*sp.pi**2*bb)==0)

# Positive lower bound on disjoint radial intervals proves the L1 divergence
# analytically. The test records only its elementary trigonometric ingredient.
theta=sp.symbols('theta',real=True)
check('nonnegative radial density with positive periodic subintervals',sp.simplify(1-sp.cos(theta)-2*sp.sin(theta/2)**2)==0)

source=Path(__file__).read_text(encoding='utf-8')
store=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='one-loop-bv-parent-',dir=store))
(out/'source.py').write_text(source,encoding='utf-8')
result={'sage_version':SAGE_VERSION,'sympy_version':sp.__version__,
        'all_passed':all(x['passed'] for x in checks),'checks':checks,
        'source_sha256':hashlib.sha256(source.encode()).hexdigest(),
        'exact_expressions':{'W0':str(norm(W0)),'W1':str(norm(W1)),
         'W_exact':str(norm(W)),'gamma_exact':str(norm(gamma)),
         'missing_insertion_residual':str(naive),'retained_QME_residual':str(br(W,W,pairs_ret)/2-hbar*lap(W,pairs_ret))},
        'scope':'finite graded Gaussian/BV identities and elementary radial identities; no continuum determinant, QME, or numerical spectral approximation'}
(out/'result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'output':str(out),'all_passed':result['all_passed'],'groups':len(checks),'source_sha256':result['source_sha256']},indent=2))
