# Run with SageMath 10.9: sage --nodotsage check_map_path.py
# Exact finite cyclic/exterior fixture, not an AdS spectral truncation.
from sage.all import *
from sage.data_structures.bitset import FrozenBitset
from pathlib import Path
import json, hashlib, time
START = time.time()
OUT = Path(__file__).resolve().parent
K = QuadraticField(-1, 'ii'); ii = K.gen()
C = PolynomialRing(K, ['kap','s']).fraction_field(); kap,s = C.gens()
even_names = ['f%d%d'%(a,m) for a in range(3) for m in range(3)] + ['w%d%d'%(a,m) for a in range(3) for m in range(3)] + ['R%d'%a for a in range(3)] + ['T%d'%a for a in range(3)]
R = PolynomialRing(C, even_names); ev = R.gens()
odd_names = ['z%d'%a for a in range(3)] + ['eta%d'%a for a in range(3)] + ['E%d%d'%(a,m) for a in range(3) for m in range(3)] + ['W%d%d'%(a,m) for a in range(3) for m in range(3)]
A = ExteriorAlgebra(R, names=odd_names); od = A.gens()
Z=A.zero(); ONE=A.one()
checks=[]; diagnostics={}

def mon(key): return A.monomial(FrozenBitset(list(key), capacity=24))
def ld(F, var):
    typ,j=var
    if typ=='e': return sum((c.derivative(ev[j])*mon(k) for k,c in F.monomial_coefficients().items()), Z)
    out=Z
    for k,c in F.monomial_coefficients().items():
        kk=list(k)
        if j in kk:
            n=kk.index(j); kk.pop(n); out += (-1)**n*c*mon(kk)
    return out

def rd(F,var):
    if var[0]=='e': return ld(F,var)
    out=Z
    for k,c in F.monomial_coefficients().items():
        kk=list(k); j=var[1]
        if j in kk:
            n=kk.index(j); kk.pop(n); out += (-1)**(n+len(k)+1)*c*mon(kk)
    return out

qvars=[('e',j) for j in range(18)]+[('o',j) for j in range(3,6)]+[('o',j) for j in range(3)]
pvars=[('o',j) for j in range(6,24)]+[('e',j) for j in range(18,24)]
coords=[A(ev[j]) for j in range(18)]+list(od[3:6])+list(od[:3])+list(od[6:24])+[A(ev[j]) for j in range(18,24)]
coord_names=even_names[:18]+odd_names[3:6]+odd_names[:3]+odd_names[6:24]+even_names[18:24]

def bv(F,G):
    out=Z
    for q,p in zip(qvars,pvars): out += rd(F,q)*ld(G,p)-rd(F,p)*ld(G,q)
    return out

def trunc(F,n,exact=False):
    out=Z
    for k,c in F.monomial_coefficients().items():
        d=len(k); cc=R.zero()
        for ex,co in c.dict().items():
            deg=sum(ex)+d
            if (deg==n if exact else deg<=n): cc += R({ex:co})
        out += cc*mon(k)
    return out

def nterms(F): return sum(len(c.dict()) for c in F.monomial_coefficients().values())
def check(label,residual):
    ok=(residual==0)
    checks.append({'label':label,'passed':bool(ok),'residual_terms':int(nterms(residual))})
    if not ok: diagnostics['FAIL:'+label]=str(residual)

def wedgebasis(I,J):
    if set(I).intersection(J): return None,0
    inv=sum(i>j for i in I for j in J)
    return tuple(sorted(I+J)),(-1)**inv

def add(*fs):
    out={}
    for f in fs:
        for k,c in f.items(): out[k]=out.get(k,Z)+c
    return {k:c for k,c in out.items() if c}

def scale(a,f): return {k:A(a)*c for k,c in f.items() if A(a)*c}
def wedge(f,g):
    out={}
    for I,c in f.items():
        for J,d in g.items():
            kk,sg=wedgebasis(I,J)
            if sg: out[kk]=out.get(kk,Z)+sg*c*d
    return {k:c for k,c in out.items() if c}

def j(m,f):
    out={}
    for I,c in f.items():
        if m in I:
            k=I.index(m); J=I[:k]+I[k+1:]; out[J]=out.get(J,Z)+(-1)**k*c
    return {k:c for k,c in out.items() if c}

def ins(v,f): return add(*(scale(v[m],j(m,f)) for m in range(3)))
def dot(F,G): return add(*(wedge(F[a],G[a]) for a in range(3)))
def top(f): return f.get((0,1,2),Z)
def eps(a,b,c): return 0 if len({a,b,c})<3 else (-1)**sum(x>y for x,y in [(a,b),(a,c),(b,c)])
def cross(F,G): return [add(*(scale(eps(a,b,c),wedge(F[b],G[c])) for b in range(3) for c in range(3) if eps(a,b,c))) for a in range(3)]
def vadd(F,G): return [add(f,g) for f,g in zip(F,G)]
def vscale(c,F): return [scale(c,f) for f in F]
def vcontract(v,F): return [ins(v,f) for f in F]

basis=[{(m,):ONE} for m in range(3)]; vol={(0,1,2):ONE}
e0=basis
om0=vscale(-ii,e0)
# Complexified unimodular Maurer-Cartan DGA: d e0^a = i [e0,e0]^a.
dbasis=vscale(ii,cross(e0,e0))
def d(f):
    out={}
    for I,c in f.items():
        for k,m in enumerate(I):
            left={I[:k]:ONE}; right={I[k+1:]:ONE}
            out=add(out,scale((-1)**k*c,wedge(wedge(left,dbasis[m]),right)))
    return out

def D(F): return vadd([d(f) for f in F],cross(om0,F))
f=[{(m,):A(ev[3*a+m]) for m in range(3)} for a in range(3)]
w=[{(m,):A(ev[9+3*a+m]) for m in range(3)} for a in range(3)]
E=[add(*(scale(od[6+3*a+m],j(m,vol)) for m in range(3))) for a in range(3)]
W=[add(*(scale(od[15+3*a+m],j(m,vol)) for m in range(3))) for a in range(3)]
RR=[scale(ev[18+a],vol) for a in range(3)]
TT=[scale(ev[21+a],vol) for a in range(3)]
zeta=[{():od[a]} for a in range(3)]
eta=[{():od[3+a]} for a in range(3)]
xi=list(od[:3])
R0=vadd([d(x) for x in om0],vscale(C(1)/2,cross(om0,om0)))
for a in range(3):
    check('background torsion %d'%a, sum(D(e0)[a].values(),Z))
    check('background curvature %d'%a, sum(add(R0[a],scale(-C(1)/2,cross(e0,e0)[a])).values(),Z))
    check('d squared %d'%a, sum(d(d(basis[a])).values(),Z))
for m in range(3): check('closed integral degree2 %d'%m,top(d(j(m,vol))))

P2=kap*top(add(dot(f,D(w)),scale(C(1)/2,dot(e0,cross(w,w))),scale(-C(1)/2,dot(e0,cross(f,f)))))
S2=P2+top(add(dot(E,vadd(D(zeta),cross(e0,eta))),dot(W,vadd(D(eta),vscale(-1,cross(e0,zeta))))))
P3=kap*top(add(scale(C(1)/2,dot(f,cross(w,w))),scale(-C(1)/6,dot(f,cross(f,f)))))
Sc3=P3+top(add(dot(E,vadd(cross(w,zeta),cross(f,eta))),dot(W,vadd(cross(w,eta),vscale(-1,cross(f,zeta)))),scale(C(1)/2,dot(RR,vadd(cross(eta,eta),vscale(-1,cross(zeta,zeta))))),dot(TT,cross(eta,zeta))))
def covLie(F): return vadd(vcontract(xi,D(F)),D(vcontract(xi,F)))
Qg_eta=vadd(vcontract(xi,D(eta)),vadd(vscale(-C(1)/2,cross(eta,eta)),vscale(C(1)/2,vcontract(xi,vcontract(xi,R0)))))
Qg_zeta=vcontract(xi,D(zeta))
Sg3=P3+top(add(dot(E,vadd(covLie(f),cross(f,eta))),dot(W,vadd(covLie(w),cross(w,eta))),scale(-1,dot(RR,Qg_eta)),scale(-1,dot(TT,Qg_zeta))))
G3=-top(add(dot(RR,vcontract(xi,w)),dot(TT,vcontract(xi,f)),scale(1/kap,dot(W,vcontract(xi,E)))))
Fxi=[vcontract(xi,f)[a].get((),Z) for a in range(3)]
G4=C(1)/2*top(add(dot(RR,vcontract(Fxi,w)),dot(TT,vcontract(Fxi,f)),scale(1/kap,dot(W,vcontract(Fxi,E)))))
bridge=bv(G3,S2)
check('cubic action bridge',Sc3+bridge-Sg3)
quartic=bv(G4,S2)+bv(G3,Sc3)+C(1)/2*bv(G3,bridge)
check('vanishing full quartic pullback',quartic)
check('free master equation',bv(S2,S2))
check('CS cubic master equation',bv(Sc3,Sc3))
check('geometric cubic master equation',bv(Sg3,Sg3))
check('free and CS cubic master equation',bv(S2,Sc3))

# Exact note16 map jets in the aligned coordinates, with e0=identity.
AA=[]
for a in range(3):
    afpart = add(*(wedge(W[b],j(a,E[b])) for b in range(3)))
    AA.append(add(
        *(scale(ev[3*b+a],TT[b]) for b in range(3)),
        *(scale(ev[9+3*b+a],RR[b]) for b in range(3)),
        scale(-1/kap,afpart)
    ))
def Mmul(V): return [add(*(scale(ev[3*b+a],V[b]) for b in range(3))) for a in range(3)]
MA=Mmul(AA)
map2f=vscale(1/kap,vcontract(xi,W)); map2w=vscale(1/kap,vcontract(xi,E))
map2eta=vcontract(xi,w); map2zeta=vcontract(xi,f)
map2E=vscale(-1,vcontract(xi,TT)); map2W=vscale(-1,vcontract(xi,RR))
map2R=[{} for a in range(3)]; map2T=vscale(-1,AA)
map3f=vscale(-1/(2*kap),vcontract(xi,vcontract(xi,RR)))
map3w=vscale(-1/(2*kap),vcontract(xi,vcontract(xi,TT)))
map3eta=vscale(1/(2*kap),vcontract(xi,vcontract(xi,E)))
map3zeta=vscale(1/(2*kap),vcontract(xi,vcontract(xi,W)))
map3E=vcontract(xi,AA); map3W=[{} for a in range(3)]
map3R=[{} for a in range(3)]; map3T=MA

def flatten(V,typ):
    if typ=='one': return [x.get((m,),Z) for x in V for m in range(3)]
    if typ=='two': return [(-1)**m*x.get(tuple(n for n in range(3) if n!=m),Z) for x in V for m in range(3)]
    if typ=='zero': return [x.get((),Z) for x in V]
    return [top(x) for x in V]
def flatmap(fff,www,eee,zzz,EE,WW,rr,tt):
    return flatten(fff,'one')+flatten(www,'one')+flatten(eee,'zero')+flatten(zzz,'zero')+flatten(EE,'two')+flatten(WW,'two')+flatten(rr,'three')+flatten(tt,'three')
map2=flatmap(map2f,map2w,map2eta,map2zeta,map2E,map2W,map2R,map2T)
map3=flatmap(map3f,map3w,map3eta,map3zeta,map3E,map3W,map3R,map3T)
for name,z,a2,a3 in zip(coord_names,coords,map2,map3):
    bz=bv(G3,z)
    check('quadratic map jet '+name,bz-a2)
    check('cubic map jet '+name,bv(G4,z)+C(1)/2*bv(G3,bz)-a3)

# Mixed-generator derivative evaluated on the source graph, to degree five.
Pi=vadd(TT,vadd(vscale(-s,AA),vscale(s*s,MA)))
Ec=vadd(E,vscale(-s,vcontract(xi,Pi)))
Wc=vadd(W,vscale(-s,vcontract(xi,RR)))
Hmixed=-top(add(dot(RR,vcontract(xi,w)),dot(Pi,vcontract(xi,f)),scale(1/kap,dot(Ec,vcontract(xi,Wc))),scale(s/kap,dot(Ec,vcontract(xi,vcontract(xi,RR)))),scale(s/kap,dot(Wc,vcontract(xi,vcontract(xi,Pi)))),scale(s*s/kap,dot(Pi,vcontract(xi,vcontract(xi,vcontract(xi,RR)))))))
F2xi=[sum((A(ev[3*a+m])*Fxi[m] for m in range(3)),Z) for a in range(3)]
chi=[xi[a]-s*Fxi[a]+s*s*F2xi[a] for a in range(3)]
Hsimple=-top(add(dot(RR,vcontract(chi,w)),dot(TT,vcontract(chi,f)),scale(1/kap,dot(W,vcontract(chi,E)))))
for n in [3,4,5]: check('source Hamiltonian degree %d'%n,trunc(Hmixed-Hsimple,n,True))
check('source Hamiltonian cubic',trunc(Hsimple,3,True)-G3)
check('source Hamiltonian quartic',trunc(Hsimple,4,True)-2*s*G4)

# Non-vacuity and deliberate mutation diagnostics. They are EXPECTED nonzero.
def require_nonzero(label,F):
    ok=F!=0
    checks.append({'label':label,'passed':bool(ok),'nonzero_terms':int(nterms(F))})
    diagnostics[label]=str(F)
require_nonzero('nonzero cubic map Hamiltonian',G3)
require_nonzero('nonzero quartic logarithm Hamiltonian',G4)
require_nonzero('nonzero generated cubic interaction',bridge)
require_nonzero('nonzero quartic if G4 omitted',bv(G3,Sc3)+C(1)/2*bv(G3,bridge))
require_nonzero('nonzero quartic if G4 sign flipped',-bv(G4,S2)+bv(G3,Sc3)+C(1)/2*bv(G3,bridge))
require_nonzero('nonzero cubic if antifield generator omitted',bv(-top(add(dot(RR,vcontract(xi,w)),dot(TT,vcontract(xi,f)))),S2)+Sc3-Sg3)
require_nonzero('nonzero cubic if kappa normalization doubled',bv(G3-top(scale(1/kap,dot(W,vcontract(xi,E)))),S2)+Sc3-Sg3)
# G4 has a genuine two-physical-antifield sector.
G4_af=C(1)/(2*kap)*top(dot(W,vcontract(Fxi,E)))
require_nonzero('nonzero two-antifield quartic Hamiltonian',G4_af)

summary={'sage_version':str(version()),'fixture':'complexified cyclic SU2 Chevalley-Eilenberg exterior algebra; full gravitational internal algebra; unit volume/cell','kappa':'indeterminate kap over QQ(i); exact rational functions','coordinates':len(coords),'odd_generators':24,'even_fluctuation_variables':24,'checks':checks,'all_passed':all(c['passed'] for c in checks),'term_counts':{name:int(nterms(obj)) for name,obj in [('S2',S2),('Sc3',Sc3),('Sg3',Sg3),('G3',G3),('G4',G4),('cubic_bridge',bridge),('quartic_G4S2',bv(G4,S2))]},'elapsed_seconds':time.time()-START}
(OUT/'results.json').write_text(json.dumps(summary,indent=2)+'\n')
(OUT/'actual_diagnostics.txt').write_text('\n\n'.join(k+'\n'+v for k,v in diagnostics.items())+'\n')
(OUT/'exact_key_expressions.txt').write_text('\n\n'.join(name+'\n'+str(obj) for name,obj in [('G3',G3),('G4',G4),('cubic_bridge',bridge),('quartic_G4S2',bv(G4,S2))])+'\n')
print(json.dumps({k:v for k,v in summary.items() if k!='checks'},indent=2))
print('FAILED LABELS:',[c['label'] for c in checks if not c['passed']])
print('CHECK COUNT:',len(checks))
print('OUTPUT:',str(OUT))
if not summary['all_passed']: raise AssertionError('Exact residual failure; inspect results and diagnostics')
