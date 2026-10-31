"""Native Sage checks of the actual gravitational canonical isotopy.

Self-contained, Python syntax; run through sage_run with this file as input.
All 48 BV components are retained. Form coefficients commute with dx;
Grassmann multiplication is native ExteriorAlgebra. g denotes 1/kappa.
This is an ultralocal jet test, NOT a global AdS spectral computation.
"""
from sage.all import QQ, PolynomialRing, ExteriorAlgebra
from sage.env import SAGE_VERSION
from sage.data_structures.bitset import FrozenBitset
from pathlib import Path
import json, os, hashlib, tempfile

names = ['t','g'] + ['f%d%d'%(a,j) for a in range(3) for j in range(3)] + ['w%d%d'%(a,j) for a in range(3) for j in range(3)] + ['R%d'%a for a in range(3)] + ['T%d'%a for a in range(3)]
C = PolynomialRing(QQ, names=names)
cv = dict(zip(names,C.gens()))
t,g = cv['t'],cv['g']
oddnames = ['eta%d'%a for a in range(3)] + ['zeta%d'%a for a in range(3)] + ['E%d%d'%(a,j) for a in range(3) for j in range(3)] + ['W%d%d'%(a,j) for a in range(3) for j in range(3)]
A = ExteriorAlgebra(C, names=oddnames)
ov = dict(zip(oddnames,A.gens()))
od = {n:i for i,n in enumerate(oddnames)}
zero=A.zero()
eta=[ov['eta%d'%a] for a in range(3)]
zeta=[ov['zeta%d'%a] for a in range(3)]
f=[[A(cv['f%d%d'%(a,j)]) for j in range(3)] for a in range(3)]
w=[[A(cv['w%d%d'%(a,j)]) for j in range(3)] for a in range(3)]
E=[[ov['E%d%d'%(a,j)] for j in range(3)] for a in range(3)]
W=[[ov['W%d%d'%(a,j)] for j in range(3)] for a in range(3)]
R=[A(cv['R%d'%a]) for a in range(3)]
T=[A(cv['T%d'%a]) for a in range(3)]

def form_add(u,v):
    out=dict(u)
    for k,b in v.items(): out[k]=out.get(k,zero)+b
    return {k:b for k,b in out.items() if b!=0}
def form_scale(a,u): return {k:A(a)*b for k,b in u.items() if A(a)*b!=0}
def wedge(u,v):
    out={}
    for m,a in u.items():
        for n,b in v.items():
            if m&n: continue
            inv=sum(1 for j in range(3) for k in range(3) if (m>>j)&1 and (n>>k)&1 and j>k)
            key=m|n
            out[key]=out.get(key,zero)+(-1)**inv*a*b
    return {k:b for k,b in out.items() if b!=0}
def ic(u,j):
    out={}
    for m,a in u.items():
        if (m>>j)&1:
            k=m^(1<<j)
            out[k]=out.get(k,zero)+(-1)**sum((m>>i)&1 for i in range(j))*a
    return out
def ix(u,n=1):
    out=u
    for _ in range(n):
        new={}
        for j in range(3): new=form_add(new,form_scale(zeta[j],ic(out,j)))
        out=new
    return out
def one(u): return {1<<j:u[j] for j in range(3)}
def two(u): return {7^(1<<j):(-1)**j*u[j] for j in range(3)}
def top(u): return u.get(7,zero)
def components1(u): return [u.get(1<<j,zero) for j in range(3)]
def components2(u): return [(-1)**j*u.get(7^(1<<j),zero) for j in range(3)]
Ef=[two(v) for v in E]; Wf=[two(v) for v in W]
Rf=[{7:r} for r in R]; Tf=[{7:v} for v in T]

F3=sum((R[a]*ix(one(w[a])).get(0,zero)+T[a]*ix(one(f[a])).get(0,zero)+g*top(wedge(Ef[a],ix(Wf[a]))) for a in range(3)),zero)
F4=sum((g/2*top(form_add(wedge(Ef[a],ix(Rf[a],2)),wedge(Wf[a],ix(Tf[a],2)))) for a in range(3)),zero)
F5=sum((g/3*top(wedge(Tf[a],ix(Rf[a],3))) for a in range(3)),zero)

def de(u,name):
    return A.sum(c.derivative(cv[name])*A.monomial(m) for m,c in u.monomial_coefficients().items())
def dl(u,name):
    j=od[name]; out=zero
    for m,c in u.monomial_coefficients().items():
        inds=list(m)
        if j in inds:
            k=inds.index(j)
            out+=(-1)**k*c*A.monomial(FrozenBitset([i for i in inds if i!=j], capacity=len(oddnames)))
    return out
def der(u,name): return dl(u,name) if name in od else de(u,name)
def dr(u,name):
    if name not in od: return de(u,name)
    j=od[name]; out=zero
    for m,c in u.monomial_coefficients().items():
        inds=list(m)
        if j in inds:
            k=inds.index(j)
            out+=(-1)**(len(inds)-1-k)*c*A.monomial(FrozenBitset([i for i in inds if i!=j], capacity=len(oddnames)))
    return out
pairs=[('f%d%d'%(a,j),'E%d%d'%(a,j)) for a in range(3) for j in range(3)]+[('w%d%d'%(a,j),'W%d%d'%(a,j)) for a in range(3) for j in range(3)]+[('eta%d'%a,'R%d'%a) for a in range(3)]+[('zeta%d'%a,'T%d'%a) for a in range(3)]
def bracket(u,v):
    return sum((dr(u,q)*der(v,p)-dr(u,p)*der(v,q) for q,p in pairs),zero)
def coord(n): return ov[n] if n in ov else A(cv[n])
checks=[]
def check(label,cond,**meta):
    ok=bool(cond)
    checks.append(dict(label=label,passed=ok,**meta))
    if not ok: raise AssertionError(label)
check('all 24 Darboux position-momentum pairs',all(bracket(coord(q),coord(p))==1 for q,p in pairs))
check('opposite-parity generating function has coincident derivatives',all(der(F3,n)==dr(F3,n) for n in names[2:]+oddnames))
K=[]
for j in range(3): K.append(sum((top(wedge(Wf[a],ic(Ef[a],j))) for a in range(3)),zero))
Pi1=[g*K[j]-sum((w[a][j]*R[a]+f[a][j]*T[a] for a in range(3)),zero) for j in range(3)]
Pi2=[-sum((f[a][j]*Pi1[a] for a in range(3)),zero) for j in range(3)]
G4=sum((Pi1[a]*ix(one(f[a])).get(0,zero) for a in range(3)),zero)
Cmix=sum((der(F3,p)*der(F3,q) for q,p in pairs),zero)
check('quartic source Hamiltonian 2F4 minus mixed derivative contraction',2*F4-Cmix==G4)
check('quartic source Hamiltonian is genuinely nonzero',G4!=0)
check('quartic F4 contribution is genuinely nonzero',F4!=0)
check('isolated two-antifield generator omits ghost-cotangent terms',F3!=sum((g*top(wedge(Ef[a],ix(Wf[a]))) for a in range(3)),zero))
# The exact cancellation uses arbitrary independent top forms T, R.
dotaf=zero
for a in range(3):
    PE=form_add(Ef[a],form_scale(-t,ix(Tf[a])))
    PW=form_add(Wf[a],form_scale(-t,ix(Rf[a])))
    dotaf+=g*top(wedge(PE,ix(PW)))+t*g*top(form_add(wedge(PE,ix(Rf[a],2)),wedge(PW,ix(Tf[a],2))))+t**2*g*top(wedge(Tf[a],ix(Rf[a],3)))
check('exact type-II generator cancellation at arbitrary T',dotaf==sum((g*top(wedge(Ef[a],ix(Wf[a]))) for a in range(3)),zero))
check('top-form contraction identity at order t',all(top(wedge(Wf[a],ix(Tf[a],2)))==top(wedge(ix(Tf[a]),ix(Wf[a]))) for a in range(3)))
check('top-form contraction identity at order t squared',all(top(wedge(Tf[a],ix(Rf[a],3)))==top(wedge(ix(Rf[a]),ix(Tf[a],2))) for a in range(3)))
first={}; second={}
for a in range(3):
    ff=components1(ix(Wf[a])); ww=components1(ix(Ef[a]))
    ff2=components1(ix(Rf[a],2)); ww2=components1(ix(Tf[a],2))
    ee=components2(ix(Tf[a])); wwaf=components2(ix(Rf[a])); ee2=components2(ix({7:Pi1[a]}))
    for j in range(3):
        first['f%d%d'%(a,j)]=g*ff[j]; second['f%d%d'%(a,j)]=-g/2*ff2[j]
        first['w%d%d'%(a,j)]=g*ww[j]; second['w%d%d'%(a,j)]=-g/2*ww2[j]
        first['E%d%d'%(a,j)]=-ee[j]; second['E%d%d'%(a,j)]=-ee2[j]
        first['W%d%d'%(a,j)]=-wwaf[j]; second['W%d%d'%(a,j)]=zero
    first['eta%d'%a]=ix(one(w[a])).get(0,zero); second['eta%d'%a]=g/2*ix(Ef[a],2).get(0,zero)
    first['zeta%d'%a]=ix(one(f[a])).get(0,zero); second['zeta%d'%a]=g/2*ix(Wf[a],2).get(0,zero)
    first['R%d'%a]=zero; second['R%d'%a]=zero
    first['T%d'%a]=Pi1[a]; second['T%d'%a]=Pi2[a]
allcoords=[n for qp in pairs for n in qp]
check('48 quadratic coordinate jets of the exact gravitational map',all(bracket(coord(n),F3)==first[n] for n in allcoords))
check('48 cubic coordinate jets of the exact gravitational map',all((bracket(coord(n),G4)+bracket(first[n],F3))/2==second[n] for n in allcoords))
check('negative control: bare F3 flow fails cubic ghost jets',any(bracket(first['zeta%d'%a],F3)/2!=second['zeta%d'%a] for a in range(3)))
check('negative control: omission of quartic source term fails coframe jets',any(bracket(first['f%d%d'%(a,j)],F3)/2!=second['f%d%d'%(a,j)] for a in range(3) for j in range(3)))
# Formal logarithm of the genuine canonical map has H3=F3, H4=G4/2.
check('formal logarithmic quartic Hamiltonian equals F4 minus half contraction',G4/2==F4-Cmix/2)
check('even ghost antifields actually occur',any(c.degree(cv['T0'])>0 or c.degree(cv['R0'])>0 for c in F3.monomial_coefficients().values()))

base=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
base.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='retained-bv-canonical-parent-',dir=base))
result=dict(engine='native Sage ExteriorAlgebra over exact polynomial ring',sage_version=SAGE_VERSION,components=48,odd_generators=24,even_variables=24,parameter_g='1/kappa',checks=checks,check_count=len(checks),all_passed=all(c['passed'] for c in checks),counts=dict(F3_exterior_terms=len(F3.monomial_coefficients()),F4_exterior_terms=len(F4.monomial_coefficients()),F5_exterior_terms=len(F5.monomial_coefficients()),G4_exterior_terms=len(G4.monomial_coefficients())),scope='ultralocal all-component canonical generator/map jets; no AdS spectrum, derivative density, BV pushforward measure or loop test')
(out/'result.json').write_text(json.dumps(result,indent=2)+'\n')
(out/'expressions.txt').write_text('F3 = '+str(F3)+'\n\nF4 = '+str(F4)+'\n\nF5 = '+str(F5)+'\n\nG4 = '+str(G4)+'\n')
if '__file__' in globals():
    source=Path(__file__).read_bytes()
    (out/'source.py').write_bytes(source)
    (out/'source.sha256').write_text(hashlib.sha256(source).hexdigest()+'\n')
print(json.dumps(dict(export=str(out),all_passed=result['all_passed'],checks=len(checks),counts=result['counts'])))
