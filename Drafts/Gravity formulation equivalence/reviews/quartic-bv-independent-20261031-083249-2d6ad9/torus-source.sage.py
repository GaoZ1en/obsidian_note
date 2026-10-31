from pathlib import Path
from sage.all import QQ, matrix
from sage.version import version as SAGE_VERSION
from itertools import product
from collections import Counter
import json
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9')
# Reuse only the transparent sparse-superpolynomial engine and definitions;
# do not execute the other fixture's checks. This is a second mathematical
# fixture, NOT an independent software implementation.
base=(OUT/'source.sage.py').read_text(encoding='utf-8')
exec(compile(base.split("say('Exact cyclic BV finite exterior-algebra test')")[0],str(OUT/'source.sage.py')+'[definitions]','exec'))
lines=[]; checks={}

# Torus constant forms, with flat background A0=e1 J3.
# Adapted real color basis: X1=J1+P1, X2=J2+P2,
# Y1=J1-P1, Y2=J2-P2, J3, P3.
oldlie=lie
T=matrix(QQ,[[1,0,1,0,0,0],[0,1,0,1,0,0],[0,0,0,0,1,0],[1,0,-1,0,0,0],[0,1,0,-1,0,0],[0,0,0,0,0,1]])
Ti=T.inverse()
oldB=matrix(QQ,6,6,lambda i,j:1 if i%3==j%3 and i//3!=j//3 else 0)
BM=T.transpose()*oldB*T
Binv=BM.inverse()
LT={}
for i,j in product(range(6),repeat=2):
    vv=[QQ(0)]*6
    for a,b in product(range(6),repeat=2):
        c,s=oldlie(a,b)
        if s:vv[c]+=T[a,i]*T[b,j]*s
    ww=Ti*matrix(QQ,6,1,vv)
    nz=[(k,ww[k,0]) for k in range(6) if ww[k,0]]
    if len(nz)>1:raise AssertionError('unexpected multi-output color bracket')
    LT[i,j]=nz[0] if nz else (None,QQ(0))
def lie(i,j):return LT[i,j]
def metric(i,j):return BM[i,j]
def dual_data(i):
    nz=[(j,Binv[j,i]) for j in range(6) if Binv[j,i]]
    if len(nz)!=1:raise AssertionError('dual is not monomial')
    return nz[0]
UV_COLORS={0,1}
UV_MASKS={0,1,6,7}
def is_uv(m,i):return i in UV_COLORS and m in UV_MASKS
def P(t):return {mi:p for mi,p in t.items() if not is_uv(*mi)}
def R(t):return {mi:p for mi,p in t.items() if is_uv(*mi)}
def D(t):
    out={}
    for (m,i),p in t.items():
        if m&1:continue
        j,s=lie(4,i) # ad(J3)
        if s:out[(m|1,j)]=scale(s,parity_sign(p))
    return out
def H(t):
    out={}
    for (m,i),p in t.items():
        if (m&1) and is_uv(m,i):
            # (ad J3)^-1=-ad J3 on the UV X doublet.
            j,s=lie(4,i)
            out[(m^1,j)]=scale(-s,parity_sign(p))
    return out
def HCF(t):
    out={}
    for (m,i),p in t.items():
        if (m&1) and is_uv(m,i):
            j,s=lie(4,i);out[(m^1,j)]=scale(-s,p)
    return out
def pair(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n);b=metric(i,j)
            if s and w==7 and b:
                out=add(out,scale(b*s*(-1 if deg(m)*parity(q)%2 else 1),mul(p,q)))
    return out
def CFpair(t,u):
    out={}
    for (m,i),p in t.items():
        for (n,j),q in u.items():
            w,s=wedge(m,n);b=metric(i,j)
            if s and w==7 and b:out=add(out,scale(b*s,mul(p,q)))
    return out

names=[];parities=[];metadata=[]
colnames=['X1','X2','Y1','Y2','J3','P3']
physical=[(m,i) for m in (1,2,4) for i in range(6)]
qids={mi:newvar('A'+str(mi[0])+'_'+colnames[mi[1]],0,'q',mi) for mi in physical}
cids={i:newvar('c_'+colnames[i],1,'c',i) for i in range(6)}
pids={mi:newvar('As'+str(mi[0])+'_'+colnames[mi[1]],1,'p',mi) for mi in physical}
piids={i:newvar('cs_'+colnames[i],0,'pi',i) for i in range(6)}
canonical=[(qids[mi],pids[mi]) for mi in physical]+[(cids[i],piids[i]) for i in range(6)]
IRcanonical=[(qids[mi],pids[mi]) for mi in physical if not is_uv(*mi)]+[(cids[i],piids[i]) for i in range(6) if not is_uv(0,i)]
IRids={i for pair0 in IRcanonical for i in pair0}
Z={}
for mi,q in qids.items():Z[mi]=var(q)
for i,c in cids.items():Z[(0,i)]=var(c)
for (m,i),p in pids.items():
    cm=7^m;_,s=wedge(m,cm);j,b=dual_data(i)
    Z[(cm,j)]=scale(-s*b,var(p))
for i,pi in piids.items():
    j,b=dual_data(i);Z[(7,j)]=scale(b,var(pi))
X=P(Z)
# Rebind the default-coordinate antibracket, since defaults are evaluated once.
def ab(F,G,coordinates=None):
    if coordinates is None:coordinates=IRcanonical
    out={}
    for q,p in coordinates:
        out=add(out,mul(deriv(F,q,'right'),deriv(G,p,'left')),scale(-1,mul(deriv(F,p,'right'),deriv(G,q,'left'))))
    return out

say('Exact finite torus-flat-background cyclic BV test; Sage '+SAGE_VERSION)
say('Constant T3 forms, volume=1, A0=e1 J3; D=[A0, .], F(A0)=0.')
say('Not a hyperbolic/AdS result: only a finite torus flat-background test.')
say('a=1/2. Color basis X1=J1+P1,X2=J2+P2,Y1=J1-P1,Y2=J2-P2,J3,P3.')
say('UV is the X doublet in form masks 0,1,6,7 (transverse sectors 1,e23); h=(ad J3)^-1 i_{e1} on UV.')
say('P retains all Y1,Y2,J3,P3 forms and X transverse sectors e2,e3; DP is nonzero.')
say('40 retained coordinates: 16 physical, 16 physical antifields, 4 ghosts, 4 ghost antifields.')
say('UV im h has 4 odd coordinates: 2 UV ghosts and 2 physical antifields.')
basis=[elem(m,i) for m in range(8) for i in range(6)]
check('D^2=0',all(not D(D(u)) for u in basis))
check('D is a graded derivation on all 2304 basis pairs',all(D(bracket(elem(m,i),elem(n,j)))==tadd(bracket(D(elem(m,i)),elem(n,j)),tscale((-1)**deg(m),bracket(elem(m,i),D(elem(n,j))))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('Dh+hD=R',all(tadd(D(H(u)),H(D(u)))==R(u) for u in basis))
check('h^2=hP=Ph=0',all(not H(H(u)) and not H(P(u)) and not P(H(u)) for u in basis))
check('P^2=P and DP=PD',all(P(P(u))==P(u) and D(P(u))==P(D(u)) for u in basis))
check('P self-transpose',all(pair(P(u),v)==pair(u,P(v)) for u in basis for v in basis))
check('D graded cyclic',all(not add(pair(D(elem(m,i)),elem(n,j)),scale((-1)**deg(m),pair(elem(m,i),D(elem(n,j))))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('h graded cyclic',all(pair(H(elem(m,i)),elem(n,j))==scale((-1)**deg(m),pair(elem(m,i),H(elem(n,j)))) for m,i,n,j in product(range(8),range(6),range(8),range(6))))
check('im h isotropic and half-dimensional',all(not pair(H(u),H(v)) for u in basis for v in basis) and sum(bool(H(u)) for u in basis)*2==sum(bool(R(u)) for u in basis))
check('nonminimal DP and nonzero D on retained ghosts',any(D(P(u)) for u in basis) and any(D(elem(0,i)) for i in range(2,6)))

Sfull=action(Z)
S2=scale(QQ(1)/2,pair(X,D(X)))
K=bracket(X,X)
S3=scale(QQ(1)/6,pair(X,K))
# Actual stationary solve at second field order on the UV Lagrangian im h.
Y={mi:p for mi,p in Z.items() if is_uv(*mi) and not (mi[0]&1)}
UVids=sorted(set().union(*(allids(p) for p in Y.values())))
check('UV Lagrangian includes ghosts and physical antifields',any(metadata[i][0]=='c' for i in UVids) and any(metadata[i][0]=='p' for i in UVids))
SUVslice=action(tadd(X,Y))
zeroUV={i:{} for i in UVids}
first=[deriv(SUVslice,i) for i in UVids]
sources=[substitute(f,zeroUV) for f in first]
# Hessian at the origin. Terms linear in retained fields affect y3, not y2.
hpolys=[[deriv(f,j) for j in UVids] for f in first]
hessian=matrix(QQ,[[p.get(((),0),QQ(0)) for p in row] for row in hpolys])
check('actual UV kinetic Hessian on im h is invertible',hessian.det()!=0)
inv=hessian.inverse()
solutions={i:add(*(scale(-inv[a,b],sources[b]) for b in range(len(UVids)))) for a,i in enumerate(UVids)}
Ysolved={mi:substitute(p,solutions) for mi,p in Y.items()}
Ysolved={mi:p for mi,p in Ysolved.items() if p}
Y2=tscale(-QQ(1)/2,H(K))
check('actual second-order stationary solve gives -h[X,X]/2',Ysolved==Y2)
res=[substitute(f,solutions) for f in first]
check('all actual UV stationary residuals vanish through degree 2',all(all(len(e)+a.bit_count()>=3 for e,a in p) for p in res))
Ssub=action(tadd(X,Ysolved))
S4={k:v for k,v in Ssub.items() if len(k[0])+k[1].bit_count()==4}
check('quartic from actual stationary substitution equals -<K,hK>/8',S4==scale(-QQ(1)/8,pair(K,H(K))))
check('quartic is nonzero',bool(S4))
check('full unprojected 48-coordinate CME',not ab(Sfull,Sfull,canonical))
QZ={mi:ab(Sfull,p,canonical) for mi,p in Z.items()}
QZ={mi:p for mi,p in QZ.items() if p}
check('all fields/ghosts/antifields satisfy QPsi=-DPsi-[Psi,Psi]/2',QZ==tscale(-1,tadd(D(Z),tscale(QQ(1)/2,bracket(Z,Z)))))
FullC={mi:p for mi,p in Z.items() if deg(mi[0])==0}
FullA={mi:p for mi,p in Z.items() if deg(mi[0])==1}
FullAs=tscale(-1,{mi:p for mi,p in Z.items() if deg(mi[0])==2})
FullCs={mi:p for mi,p in Z.items() if deg(mi[0])==3}
def DCF(t):return D({mi:parity_sign(p) for mi,p in t.items()})
QAs={mi:ab(Sfull,p,canonical) for mi,p in FullAs.items()}
QAs={mi:p for mi,p in QAs.items() if p}
QCs={mi:ab(Sfull,p,canonical) for mi,p in FullCs.items()}
QCs={mi:p for mi,p in QCs.items() if p}
check('explicit component-first Qalpha-star=Falpha-[alpha-star,c]',QAs==tadd(DCF(FullA),tscale(QQ(1)/2,CFbracket(FullA,FullA)),tscale(-1,CFbracket(FullAs,FullC))))
check('explicit component-first Qc-star=-Dalpha-star-[alpha,alpha-star]+[c-star,c]',QCs==tadd(tscale(-1,DCF(FullAs)),tscale(-1,CFbracket(FullA,FullAs)),CFbracket(FullCs,FullC)))
left=ab(S2,S4);jac=ab(S3,S3);right=scale(-QQ(1)/2,jac)
check('both quartic master sides are nonzero',bool(left) and bool(right))
check('projected cubic self-bracket normalization',jac==scale(-QQ(1)/4,pair(K,P(K))))
check('free BRST quartic normalization',left==scale(-QQ(1)/8,pair(K,R(K))))
check('quartic master equation exact coefficient by coefficient',left==right)
check('wrong sign of S4 fails',bool(add(scale(-1,left),scale(QQ(1)/2,jac))))
check('S4 contains nonzero ghost-antifield terms',any(metadata[i][0]=='pi' for i in allids(S4)))
C={mi:p for mi,p in X.items() if deg(mi[0])==0}
Alpha={mi:p for mi,p in X.items() if deg(mi[0])==1}
Astar=tscale(-1,{mi:p for mi,p in X.items() if deg(mi[0])==2})
Cstar={mi:p for mi,p in X.items() if deg(mi[0])==3}
K2cf=tadd(CFbracket(Alpha,Alpha),tscale(-2,CFbracket(Astar,C)))
S4cf=add(scale(-QQ(1)/8,CFpair(K2cf,HCF(K2cf))),CFpair(CFbracket(Alpha,C),HCF(tadd(CFbracket(Alpha,Astar),CFbracket(C,Cstar)))))
check('full component-first quartic including c-star agrees',S4==S4cf)
check('all 40 retained coordinates occur',allids(add(S2,S3,S4))==IRids)
check('free quadratic BV action contains antifield times Dghost',any(any(metadata[i][0]=='c' for i in allids({k:v})) and any(metadata[i][0]=='p' for i in allids({k:v})) for k,v in S2.items()))
profile=Counter()
for e,a in S4:
    inds=list(e);bits=a
    while bits:
        low=bits&-bits;inds.append(low.bit_length()-1);bits^=low
    profile[tuple(sum(metadata[i][0]==k for i in inds) for k in ('q','c','p','pi'))]+=1
say('Monomial counts S2P='+str(len(S2))+', S3P='+str(len(S3))+', S4='+str(len(S4))+', each master side='+str(len(left))+'.')
say('Quartic profile (physical,ghost,physical-antifield,ghost-antifield): '+str(dict(sorted(profile.items()))))
say('All '+str(len(checks))+' labelled exact torus-fixture checks passed.')
(OUT/'torus-actual-output.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
(OUT/'torus-checks.json').write_text(json.dumps({'kernel':SAGE_VERSION,'checks':checks,'counts':{'S2P':len(S2),'S3P':len(S3),'S4':len(S4),'ward_each_side':len(left)},'quartic_profiles':{str(k):v for k,v in sorted(profile.items())}},indent=2)+'\n',encoding='utf-8')
for name,p in [('torus-quartic-vertex.txt',S4),('torus-quartic-master-left.txt',left),('torus-quartic-master-right.txt',right),('torus-projected-quadratic.txt',S2),('torus-projected-cubic.txt',S3)]:
    (OUT/name).write_text(polytext(p)+'\n',encoding='utf-8')
(OUT/'torus-coordinate-dictionary.json').write_text(json.dumps([{'index':i,'name':n,'parity':parities[i],'kind':metadata[i][0],'basis':metadata[i][1],'retained':i in IRids,'UV_lagrangian':i in UVids} for i,n in enumerate(names)],indent=2)+'\n',encoding='utf-8')
print('\n'.join(lines))
print('Saved actual output and exact polynomials in '+str(OUT))
