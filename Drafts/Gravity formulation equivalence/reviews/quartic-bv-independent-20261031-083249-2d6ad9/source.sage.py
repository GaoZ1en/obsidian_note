from sage.all import QQ, matrix
from sage.version import version as SAGE_VERSION
from pathlib import Path
from collections import Counter
from itertools import product
import json

# Exact finite cyclic BV model, with no candidate quartic inserted in elimination.
# A=Lambda(e1,e2,e3), de3=e1e2; integral(e1e2e3)=1.
# g=so(3,1), B(Ja,Pb)=delta_ab (a=1/2).
# UV acyclic pairs: e3 and e1e2 in colors J1,P1 only.
OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9')
lines = []
checks = {}
def say(s):
    lines.append(str(s))
def check(name, value):
    if type(value) is not bool:
        raise TypeError((name, type(value)))
    checks[name] = value
    say(('PASS ' if value else 'FAIL ') + name)
    if not value:
        raise AssertionError(name)

# Sparse exact superpolynomials. Key=(tuple of even generator indices, odd bitmask).
# Odd generators are ordered by their index. Coefficients are rational numbers.
parities = []
names = []
metadata = []
def newvar(name, parity, kind, data):
    i = len(names)
    names.append(name); parities.append(parity); metadata.append((kind, data))
    return i

def clean(p):
    return {k: QQ(v) for k, v in p.items() if v}
def const(c):
    return {} if not c else {((), 0): QQ(c)}
def var(i):
    return {((), 1 << i): QQ(1)} if parities[i] else {((i,), 0): QQ(1)}
def add(*ps):
    out = {}
    for p in ps:
        for k, c in p.items():
            out[k] = out.get(k, QQ(0)) + c
    return clean(out)
def scale(c, p):
    return clean({k: QQ(c)*v for k, v in p.items()})
def odd_sign(a, b):
    inv = 0
    while b:
        low = b & -b; j = low.bit_length()-1
        inv += (a >> (j+1)).bit_count()
        b ^= low
    return -1 if inv % 2 else 1
def mul(p, q):
    out = {}
    for (e, a), c in p.items():
        for (f, b), d in q.items():
            if a & b:
                continue
            k = (tuple(sorted(e+f)), a|b)
            out[k] = out.get(k, QQ(0)) + c*d*odd_sign(a,b)
    return clean(out)
def deriv(p, i, side='left'):
    out = {}
    if parities[i]:
        bit = 1 << i
        for (e, a), c in p.items():
            if not (a & bit):
                continue
            n = (a & (bit-1)).bit_count() if side == 'left' else (a >> (i+1)).bit_count()
            k = (e, a ^ bit)
            out[k] = out.get(k, QQ(0)) + (-1 if n % 2 else 1)*c
    else:
        for (e, a), c in p.items():
            n = e.count(i)
            if n:
                ee = list(e); ee.remove(i); k=(tuple(ee),a)
                out[k] = out.get(k, QQ(0)) + n*c
    return clean(out)
def parity(p):
    vals = {a.bit_count()%2 for e,a in p}
    if not vals:
        return 0
    if len(vals) != 1:
        raise ValueError('inhomogeneous parity')
    return vals.pop()
def parity_sign(p):
    return {k: (-1 if k[1].bit_count()%2 else 1)*v for k,v in p.items()}
def substitute(p, replacements):
    out = {}
    for (e,a),c in p.items():
        term = const(c)
        for i in e:
            term = mul(term, replacements.get(i, var(i)))
        bits = a
        while bits:
            low=bits & -bits; i=low.bit_length()-1; bits^=low
            term=mul(term,replacements.get(i,var(i)))
        out=add(out,term)
    return out

def wedge(a,b):
    if a & b:
        return None, 0
    return a|b, odd_sign(a,b)
def deg(m):
    return m.bit_count()
def eps(a,b,c):
    if len({a,b,c}) != 3:
        return 0
    return -1 if sum(1 for x,y in ((a,b),(a,c),(b,c)) if x>y)%2 else 1
def lie(i,j):
    a,b=i%3,j%3
    if a==b:
        return None,0
    c=3-a-b
    t=(i//3)^(j//3)
    return c+3*t, eps(a,b,c)*(-1 if i>=3 and j>=3 else 1)
def metric(i,j):
    return 1 if i%3==j%3 and (i//3)!=(j//3) else 0
def dual(i):
    return (i+3)%6
UV_COLORS={0,3}
def is_uv(m,i):
    return m in {3,4} and i in UV_COLORS

# Tensor-valued superpolynomials, with coefficient-first Koszul totalization.
def tadd(*ts):
    out={}
    for t in ts:
        for k,p in t.items():
            out[k]=add(out.get(k,{}),p)
    return {k:p for k,p in out.items() if p}
def tscale(c,t):
    return {k:scale(c,p) for k,p in t.items() if p and c}
def bracket(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n)
            k,f=lie(i,j)
            if not s or not f:
                continue
            sg=(-1 if deg(m)*parity(q)%2 else 1)*s*f
            out[(w,k)]=add(out.get((w,k),{}),scale(sg,mul(p,q)))
    return {k:p for k,p in out.items() if p}
def pair(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n)
            if not s or w!=7 or not metric(i,j):
                continue
            sg=(-1 if deg(m)*parity(q)%2 else 1)*s
            out=add(out,scale(sg,mul(p,q)))
    return out
def D(t):
    return {(3,i):parity_sign(p) for (m,i),p in t.items() if m==4}
def H(t):
    return {(4,i):parity_sign(p) for (m,i),p in t.items() if m==3 and i in UV_COLORS}
def P(t):
    return {(m,i):p for (m,i),p in t.items() if not is_uv(m,i)}
def R(t):
    return {(m,i):p for (m,i),p in t.items() if is_uv(m,i)}
def action(t):
    return add(scale(QQ(1)/2,pair(t,D(t))),scale(QQ(1)/6,pair(t,bracket(t,t))))
# Ordinary component-first operations, for a separate dictionary check.
def CFbracket(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n); k,f=lie(i,j)
            if s and f:
                out[(w,k)]=add(out.get((w,k),{}),scale(s*f,mul(p,q)))
    return {k:p for k,p in out.items() if p}
def CFpair(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n)
            if s and w==7 and metric(i,j):out=add(out,scale(s,mul(p,q)))
    return out
def HauxCF(t):
    # This auxiliary map is cyclic and degree -1, but is NOT claimed to be an SDR.
    # It tests the h:Omega^1->Omega^0 / h:Omega^3->Omega^2 component signs.
    out={}
    for (m,i),p in t.items():
        if m==1:out[(0,i)]=p
        elif m==7:out[(6,i)]=scale(-1,p)
    return out
def Haux(t):
    return HauxCF({mi:parity_sign(p) for mi,p in t.items()})
def elem(m,i):
    return {(m,i):const(1)}

# Canonical coordinates: (q,p)=1 and (c,pi)=1.
# g-valued antifields use B-dual color and Poincare-dual form bases.
physical=[]
for m in (1,2,4):
    for i in range(6):
        physical.append((m,i))
qids={mi:newvar('A'+str(mi[0])+'_'+('J' if mi[1]<3 else 'P')+str(mi[1]%3+1),0,'q',mi) for mi in physical}
cids={i:newvar('c_'+('J' if i<3 else 'P')+str(i%3+1),1,'c',i) for i in range(6)}
pids={mi:newvar('As'+str(mi[0])+'_'+('J' if mi[1]<3 else 'P')+str(mi[1]%3+1),1,'p',mi) for mi in physical}
piids={i:newvar('cs_'+('J' if i<3 else 'P')+str(i%3+1),0,'pi',i) for i in range(6)}
canonical=[(qids[mi],pids[mi]) for mi in physical]+[(cids[i],piids[i]) for i in range(6)]
IRcanonical=[(qids[mi],pids[mi]) for mi in physical if not is_uv(*mi)]+[(cids[i],piids[i]) for i in range(6)]
IRids={i for qp in IRcanonical for i in qp}
Z={}
for (m,i),q in qids.items():
    Z[(m,i)]=var(q)
for i,c in cids.items():
    Z[(0,i)]=var(c)
for (m,i),p in pids.items():
    cm=7^m; _,s=wedge(m,cm)
    Z[(cm,dual(i))]=scale(-s,var(p))
for i,pi in piids.items():
    Z[(7,dual(i))]=var(pi)
X=P(Z)

def ab(F,G,coordinates=IRcanonical):
    out={}
    for q,p in coordinates:
        out=add(out,mul(deriv(F,q,'right'),deriv(G,p,'left')),scale(-1,mul(deriv(F,p,'right'),deriv(G,q,'left'))))
    return out

def polytext(p):
    if not p:
        return '0'
    def key(item):
        (e,a),c=item
        return (len(e)+a.bit_count(),e,a)
    result=[]
    for (e,a),c in sorted(p.items(),key=key):
        factors=[]
        for i,n in sorted(Counter(e).items()):
            factors.append(names[i]+('^'+str(n) if n!=1 else ''))
        bits=a
        while bits:
            low=bits&-bits;i=low.bit_length()-1;bits^=low;factors.append(names[i])
        result.append(str(c)+(' * '+' * '.join(factors) if factors else ''))
    return '\n'.join(result)
def allids(p):
    ids=set()
    for e,a in p:
        ids.update(e)
        while a:
            low=a&-a;ids.add(low.bit_length()-1);a^=low
    return ids

say('Exact cyclic BV finite exterior-algebra test')
say(str(SAGE_VERSION))
say('Coefficient field QQ; a=1/2; B(Ja,Pb)=delta_ab.')
say('A=Lambda(e1,e2,e3), de3=e1e2, integral(e1e2e3)=1.')
say('This is the finite left-invariant Heisenberg CE algebra, not hyperbolic AdS and not a torus result.')
say('P removes e3/e1e2 in colors J1,P1; h(e1e2 Ti)=e3 Ti for these colors only.')
say('Total field: Psi=c+alpha-alpha_star+c_star, with stars expressed in B/Poincare dual bases.')
say('48 full coordinates; 44 retained: 16 physical, 16 physical antifields, 6 ghosts, 6 ghost antifields.')

basis=[elem(m,i) for m in range(8) for i in range(6)]
check('D^2=0 on all 48 basis vectors',all(D(D(t))=={} for t in basis))
check('D is a graded Lie derivation on all 2304 basis pairs',all(D(bracket(elem(m,i),elem(n,j)))==tadd(bracket(D(elem(m,i)),elem(n,j)),tscale((-1)**deg(m),bracket(elem(m,i),D(elem(n,j))))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('D h+h D=R on all 48 basis vectors',all(tadd(D(H(t)),H(D(t)))==R(t) for t in basis))
check('h^2=hP=Ph=0 on all 48 basis vectors',all(not H(H(t)) and not H(P(t)) and not P(H(t)) for t in basis))
check('P^2=P and DP=PD on all 48 basis vectors',all(P(P(t))==P(t) and D(P(t))==P(D(t)) for t in basis))
check('DP is nonzero: this is not minimal transfer',any(D(P(t)) for t in basis))
check('P is cyclic self-transpose on all 2304 pairs',all(pair(P(u),v)==pair(u,P(v)) for u in basis for v in basis))
check('D is graded cyclic on all 2304 pairs',all(not add(pair(D(elem(m,i)),elem(n,j)),scale((-1)**deg(m),pair(elem(m,i),D(elem(n,j))))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('h is graded cyclic on all 2304 pairs',all(pair(H(elem(m,i)),elem(n,j))==scale((-1)**deg(m),pair(elem(m,i),H(elem(n,j)))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('im h is isotropic',all(not pair(H(u),H(v)) for u in basis for v in basis))
check('im h has half the dimension of UV',sum(bool(H(t)) for t in basis)*2==sum(bool(R(t)) for t in basis))
# Lie invariance/Jacobi tested separately from the superpolynomial construction.
def bracket_color(i,j):
    k,s=lie(i,j)
    return {} if not s else {k:s}
def nested_color(i,j,k):
    jk=bracket_color(j,k);out={}
    for l,s in jk.items():
        for m,t in bracket_color(i,l).items():out[m]=out.get(m,0)+s*t
    return out
def color_sum(*ts):
    out={}
    for t in ts:
        for k,v in t.items():out[k]=out.get(k,0)+v
    return {k:v for k,v in out.items() if v}
check('so(3,1) Jacobi on all 216 triples',all(not color_sum(nested_color(i,j,k),nested_color(j,k,i),nested_color(k,i,j)) for i,j,k in product(range(6),repeat=3)))
check('B is invariant on all 216 color triples',all(sum(s*metric(k,l) for k,s in bracket_color(i,j).items())==sum(s*metric(i,k) for k,s in bracket_color(j,l).items()) for i,j,l in product(range(6),repeat=3)))
check('all canonical fundamental antibrackets have the stated sign',all(ab(var(q),var(p),canonical)==const(1) and ab(var(p),var(q),canonical)==const(-1) for q,p in canonical))

Sfull=action(Z)
S2=scale(QQ(1)/2,pair(X,D(X)))
K=bracket(X,X)
S3=scale(QQ(1)/6,pair(X,K))
# Independently solve the actual UV stationary equations on im h.
# No quartic ansatz, nor candidate homotopy formula, enters this Gaussian solve.
UVmis=[mi for mi in physical if is_uv(*mi)]
Y={mi:var(qids[mi]) for mi in UVmis}
SUVslice=action(tadd(X,Y))
zeroUV={qids[mi]:{} for mi in UVmis}
first=[deriv(SUVslice,qids[mi]) for mi in UVmis]
sources=[substitute(f,zeroUV) for f in first]
hessian_polys=[[deriv(f,qids[mj]) for mj in UVmis] for f in first]
check('actual UV Hessian is field-independent',all(set(p).issubset({((),0)}) for row in hessian_polys for p in row))
hessian=matrix(QQ,[[p.get(((),0),QQ(0)) for p in row] for row in hessian_polys])
check('actual UV Hessian is invertible',hessian.det()!=0)
inv=hessian.inverse()
Ysolved={mi:add(*(scale(-inv[i,j],sources[j]) for j in range(len(UVmis)))) for i,mi in enumerate(UVmis)}
Y2=tscale(-QQ(1)/2,H(K))
check('independent UV stationary solve yields -h[X,X]/2',Ysolved==Y2)
# The quartic is obtained from the ACTUAL substituted stationary action.
Sstationary=action(tadd(X,Ysolved))
S4_from_elimination=add(Sstationary,scale(-1,S2),scale(-1,S3))
S4_closed=scale(-QQ(1)/8,pair(K,H(K)))
S4=S4_from_elimination
check('stationary action has a nonzero quartic',bool(S4))
check('stationary action correction is homogeneous polynomial degree 4',all(len(e)+a.bit_count()==4 for e,a in S4))
check('stationary elimination yields exactly -1/8 <K,hK>',S4==S4_closed)
check('h[X+Y2,X+Y2]=h[X,X], so the UV solution is exact in this model',H(bracket(tadd(X,Y2),tadd(X,Y2)))==H(K))
replacements={qids[mi]:Ysolved.get(mi,{}) for mi in Y}
stationary_residuals={names[qids[mi]]:substitute(deriv(SUVslice,qids[mi]),replacements) for mi in Y}
check('both actual UV stationary derivatives vanish after substitution',all(not p for p in stationary_residuals.values()))
check('UV solution lies in im h',H(D(Y2))==Y2)
check('unprojected full 48-variable BV action obeys CME',not ab(Sfull,Sfull,canonical))
QZ={mi:ab(Sfull,p,canonical) for mi,p in Z.items()}
QZ={mi:p for mi,p in QZ.items() if p}
check('Hamiltonian map on ALL fields, ghosts and BOTH antifields: QPsi=-DPsi-[Psi,Psi]/2',QZ==tscale(-1,tadd(D(Z),tscale(QQ(1)/2,bracket(Z,Z)))))

jac=ab(S3,S3)
left=ab(S2,S4)
right=scale(-QQ(1)/2,jac)
check('projected cubic self-antibracket is NONZERO',bool(jac))
check('both sides of quartic Ward identity are NONZERO',bool(left) and bool(right))
check('(S3P,S3P)=-1/4 <K,PK>',jac==scale(-QQ(1)/4,pair(K,P(K))))
check('(S2P,S4)=-1/8 <K,RK>',left==scale(-QQ(1)/8,pair(K,R(K))))
check('(S2P,S4)=-1/2 (S3P,S3P), exact coefficient by coefficient',left==right)
check('<[X,X],[X,X]>=0 with ghosts/antifields',not pair(K,K))
Seff=add(S2,S3,S4)
check('full effective CME holds in this exactly Gaussian UV example',not ab(Seff,Seff))
check('opposite quartic sign FAILS the quartic Ward identity',bool(add(scale(-1,left),scale(QQ(1)/2,jac))))
C={(0,i):var(cids[i]) for i in range(6)}
Cstar={(7,dual(i)):var(piids[i]) for i in range(6)}
ghost_vertex=scale(QQ(1)/2,pair(Cstar,bracket(C,C)))
check('ghost-antifield sector is present',bool(ghost_vertex))
S3noghoststar=add(S3,scale(-1,ghost_vertex))
check('deleting ghost-antifield vertex FAILS the quartic Ward identity',bool(add(left,scale(QQ(1)/2,ab(S3noghoststar,S3noghoststar)))))
check('all 44 retained coordinates occur in the effective action',allids(Seff)==IRids)
# Direct BRST on all ghosts: Qc=-[c,c]/2, with the specified left bracket.
CC=bracket(C,C)
check('all six ghost BRST transformations have Qc=-[c,c]/2',all(ab(Sfull,var(cids[i]),canonical)==scale(-QQ(1)/2,CC.get((0,i),{})) for i in range(6)))
# Physical Qalpha: the finite CE differential vanishes on form-zero ghosts.
Alpha={(m,i):var(qids[(m,i)]) for m,i in physical}
# Totalized [alpha,c] has the opposite sign of component-first [alpha,c].
expected_phys=tscale(-1,bracket(Alpha,C))
check('all eighteen full physical BRST transformations equal [alpha,c]_component',all(ab(Sfull,var(qids[mi]),canonical)==expected_phys.get(mi,{}) for mi in physical))
# Separate full degree-sector dictionary check. Haux is NOT used in any CME claim.
Astar=tscale(-1,{mi:p for mi,p in Z.items() if deg(mi[0])==2})
K2cf=tadd(CFbracket(Alpha,Alpha),tscale(-2,CFbracket(Astar,C)))
Gcf=CFbracket(Alpha,C)
Tcf=tadd(CFbracket(Alpha,Astar),CFbracket(C,Cstar))
Kfull=bracket(Z,Z)
S4aux=scale(-QQ(1)/8,pair(Kfull,Haux(Kfull)))
S4component=add(scale(-QQ(1)/8,CFpair(K2cf,HauxCF(K2cf))),CFpair(Gcf,HauxCF(Tcf)))
check('auxiliary degree-1/3 h map is graded cyclic (dictionary test only)',all(pair(Haux(elem(m,i)),elem(n,j))==scale((-1)**deg(m),pair(elem(m,i),Haux(elem(n,j)))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('full component-first S4 formula including ghost antifields matches totalization',S4aux==S4component)
check('auxiliary dictionary test has NONZERO ghost-antifield quartic terms',any(metadata[i][0]=='pi' for i in allids(S4aux)))

profile=Counter()
for e,a in S4:
    inds=list(e)
    bits=a
    while bits:
        low=bits&-bits;inds.append(low.bit_length()-1);bits^=low
    profile[tuple(sum(metadata[i][0]==k for i in inds) for k in ('q','c','p','pi'))]+=1
say('Monomial counts: full action='+str(len(Sfull))+', S2P='+str(len(S2))+', S3P='+str(len(S3))+', S4='+str(len(S4))+'.')
say('S4 profile (physical,ghost,physical-antifield,ghost-antifield) -> term count: '+str(dict(sorted(profile.items()))))
say('Quartic master LHS/RHS each has '+str(len(left))+' nonzero exact monomials.')
say('UV stationary solution (g-valued alpha components):')
for mi,p in sorted(Y2.items()):
    say('  '+names[qids[mi]]+' =')
    say(polytext(p))
say('All '+str(len(checks))+' labelled exact checks passed.')

(OUT/'actual-output.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
(OUT/'checks.json').write_text(json.dumps({'kernel':str(SAGE_VERSION),'checks':checks,'counts':{'S2P':len(S2),'S3P':len(S3),'S4':len(S4),'ward_each_side':len(left)},'quartic_profiles':{str(k):v for k,v in sorted(profile.items())}},indent=2)+'\n',encoding='utf-8')
(OUT/'quartic-vertex.txt').write_text(polytext(S4)+'\n',encoding='utf-8')
(OUT/'quartic-master-left.txt').write_text(polytext(left)+'\n',encoding='utf-8')
(OUT/'quartic-master-right.txt').write_text(polytext(right)+'\n',encoding='utf-8')
(OUT/'projected-cubic.txt').write_text(polytext(S3)+'\n',encoding='utf-8')
(OUT/'full-coordinate-dictionary.json').write_text(json.dumps([{'index':i,'name':n,'parity':parities[i],'kind':metadata[i][0],'basis':metadata[i][1],'retained':i in IRids} for i,n in enumerate(names)],indent=2)+'\n',encoding='utf-8')
print('\n'.join(lines))
print('Saved exact source and outputs in '+str(OUT))
