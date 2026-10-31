"""Run with SageMath 10.9: sage --nodotsage superfield_checks.py.
Native Sage exterior algebra, with all ghosts and dx anticommuting.
Three internal components; arbitrary polynomial physical coefficients.
The coupling is set to kappa=1 here (canonical_map_checks.py keeps 1/kappa formal).
"""
from sage.all import QQ, PolynomialRing, ExteriorAlgebra
from sage.version import version

def eps(i,j,k):
    if len({i,j,k}) < 3: return 0
    return 1 if (i,j,k) in ((0,1,2),(1,2,0),(2,0,1)) else -1

def check(label, residual):
    ok = residual == 0
    print(label+': '+('PASS' if ok else 'FAIL'))
    if not ok: print('  residual =',residual)
    assert ok,label

names = ['e%d%d'%(a,i) for a in range(3) for i in range(3)] + ['w%d%d'%(a,i) for a in range(3) for i in range(3)] + ['x%d'%a for a in range(3)] + ['y%d'%a for a in range(3)]
R = PolynomialRing(QQ,names=names)
rg = R.gens()
e = [[rg[3*a+i] for i in range(3)] for a in range(3)]
w = [[rg[9+3*a+i] for i in range(3)] for a in range(3)]
x = rg[18:21]; y = rg[21:24]
odd_names = ['z%d'%i for i in range(3)] + ['p%d%d'%(a,i) for a in range(3) for i in range(3)] + ['q%d%d'%(a,i) for a in range(3) for i in range(3)] + ['l%d'%a for a in range(3)] + ['dx%d'%i for i in range(3)]
A = ExteriorAlgebra(R,names=odd_names)
ag = A.gens()
z = ag[:3]
p = [[ag[3+3*a+i] for i in range(3)] for a in range(3)]
q = [[ag[12+3*a+i] for i in range(3)] for a in range(3)]
l = ag[21:24]; dx = ag[24:27]
vol = dx[0]*dx[1]*dx[2]
def f1(v): return sum((v[i]*dx[i] for i in range(3)),A.zero())
def f2(v): return v[0]*dx[1]*dx[2]+v[1]*dx[2]*dx[0]+v[2]*dx[0]*dx[1]
def I(f): return sum((z[i]*f.interior_product(dx[i]) for i in range(3)),A.zero())
def H(f):
    ans=A.zero()
    for key,coefficient in f.monomial_coefficients().items():
        ncoeff=sum(j<24 for j in key)
        ans += (-1)**ncoeff*I(A.monomial(key)*coefficient)
    return ans

def exponential(f): return f+I(f)+I(I(f))/2+I(I(I(f)))/6

def top(f): return A.sum_of_terms((key,coefficient) for key,coefficient in f.monomial_coefficients().items() if all(j in key for j in (24,25,26)))
ef=list(map(f1,e)); wf=list(map(f1,w)); pf=list(map(f2,p)); qf=list(map(f2,q))
alpha=[l[a]+wf[a]-pf[a]+y[a]*vol for a in range(3)]
beta=[ef[a]-qf[a]+x[a]*vol for a in range(3)]
WW=list(map(exponential,alpha)); BB=list(map(exponential,beta))
for a in range(3):
    EE=ef[a]+H(qf[a])-H(H(x[a]*vol))/2
    OO=wf[a]+H(pf[a])-H(H(y[a]*vol))/2
    tt=H(ef[a])+H(H(qf[a]))/2-H(H(H(x[a]*vol)))/6
    rr=l[a]+H(wf[a])+H(H(pf[a]))/2-H(H(H(y[a]*vol)))/6
    PE=pf[a]-H(y[a]*vol)
    PO=qf[a]-H(x[a]*vol)
    check('exp(I) beta exact component map [%d]'%a,BB[a]-(tt+EE-PO+x[a]*vol))
    check('exp(I) alpha exact component map [%d]'%a,WW[a]-(rr+OO-PE+y[a]*vol))

def interaction(B,W):
    out=A.zero()
    for a in range(3):
        for b in range(3):
            for c in range(3):
                s=eps(a,b,c)
                if s: out += s*(B[a]*W[b]*W[c]/2-B[a]*B[b]*B[c]/6)
    return top(out)
classical=interaction(ef,wf)
geo=classical
for a in range(3):
    for b in range(3):
        for c in range(3):
            s=eps(a,b,c)
            if not s: continue
            geo += s*(sum((p[a][i]*e[b][i]*l[c]+q[a][i]*w[b][i]*l[c] for i in range(3)),A.zero())+x[a]*l[b]*l[c]/2)*vol
check('superfield cubic interactions give Lorentz BV signs',interaction(beta,alpha)-geo)
check('finite map preserves all cubic interactions exactly',interaction(BB,WW)-geo)
# Reuse z as an independent translation ghost, not a diffeomorphism ghost,
# to check the unrestricted CS superfield action against component BRST.
Wraw=[l[a]+wf[a]-pf[a]+y[a]*vol for a in range(3)]
Braw=[z[a]+ef[a]-qf[a]+x[a]*vol for a in range(3)]
cs_expected=geo
for a in range(3):
    for b in range(3):
        for c in range(3):
            s=eps(a,b,c)
            if s:
                cs_expected += s*(sum((p[a][i]*w[b][i]*z[c]-q[a][i]*e[b][i]*z[c] for i in range(3)),A.zero())-x[a]*z[b]*z[c]/2+y[a]*l[b]*z[c])*vol
check('unrestricted CS superfield gives all BRST ghost signs',interaction(Braw,Wraw)-cs_expected)
print('ALL SUPERFIELD CHECKS PASSED; SageMath',version)
