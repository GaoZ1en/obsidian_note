#!/usr/bin/env python3
"""Full six-tensor position identity via flat-box differential equations.

Independent of Mellin shifts and of the repository's saved Mathematica run.
All six squared distances are differentiated before fixing conformal scales.
The Euclidean box first-order equations are obtained by differentiating its
two-dilogarithm representation with separate principal logarithms.
"""
import itertools,json
from functools import lru_cache
from pathlib import Path
import sympy as S

U,V=S.symbols('U V', positive=True)
P=S.symbols('P12 P13 P14 P23 P24 P34',positive=True)
edges=[(1,2),(1,3),(1,4),(2,3),(2,4),(3,4)]
edgevar=dict(zip(edges,P))
def p(i,j):return edgevar[tuple(sorted((i,j)))]
uc=p(1,2)*p(3,4)/(p(1,3)*p(2,4))
vc=p(1,4)*p(2,3)/(p(1,3)*p(2,4))
F={(a,b):S.Symbol('F_'+str(a)+'_'+str(b)) for a in range(4) for b in range(4-a)}
f=F[(0,0)]/(p(1,3)*p(2,4))
gauge={p(1,2):U,p(1,3):1,p(1,4):1,p(2,3):V,p(2,4):1,p(3,4):1}
def distance_derivative(expr, edge):
    return S.expand(S.diff(expr,edge)+sum(S.diff(expr,v)*
        (S.diff(uc,edge)*F[(a+1,b)]+S.diff(vc,edge)*F[(a,b+1)])
        for (a,b),v in F.items() if a+b<3))
@lru_cache(None)
def jet(*which):
    expr=f
    for edge in which:expr=distance_derivative(expr,edge)
    return expr.subs(gauge)

Ds,Dt,Du,C1,C2,C3=S.symbols('D_s D_t D_u C_1 C_2 C_3')
cycles={}
for cyc,name in [((1,2,3,4),C1),((1,2,4,3),C2),((1,3,2,4),C3)]:
    for rev in [cyc,tuple(reversed(cyc))]:
        for k in range(4):cycles[rev[k:]+rev[:k]]=name
def tr4(*a):return cycles[a]
def commtrace(a,b,c,d):return tr4(a,b,c,d)-tr4(a,b,d,c)-tr4(b,a,c,d)+tr4(b,a,d,c)
channels=[(1,2,3,4,Ds,(C1+C2)/2-Ds/6,2*(C2-C1)),
          (1,4,3,2,Dt,(C1+C3)/2-Dt/6,2*(C3-C1)),
          (1,3,2,4,Du,(C2+C3)/2-Du/6,2*(C2-C3))]
def val(e):return e.subs(gauge) if hasattr(e,'subs') else e
bulk=0
for i,j,k,l,d,sc,ve in channels:
    pij=val(p(i,j))
    scalar=-8*sc*jet(p(k,l))/pij
    vector=ve/pij*(-val(p(i,k))*jet(p(i,k),p(k,l))
                  +val(p(i,l))*jet(p(i,l),p(k,l))
                  +val(p(j,k))*jet(p(j,k),p(k,l))
                  -val(p(j,l))*jet(p(j,l),p(k,l)))
    grav=-d/pij*(S.Rational(4,3)*jet(p(k,l))
         +sum(val(p(a,b))*jet(p(a,b),p(k,l)) for a,b in [(i,k),(i,l),(j,k),(j,l)])
         +2*val(p(i,k)*p(j,l)+p(i,l)*p(j,k)-p(i,j)*p(k,l))*jet(p(i,k),p(j,l),p(k,l)))
    bulk+=scalar+vector+grav
pot=(4*(Ds+Dt+Du)-S.Rational(40,3)*(C1+C2+C3))*jet(p(1,2),p(3,4))
der=sum(commtrace(a,b,c,d)*(jet(p(1,2),p(3,4))
         +val(p(b,d))*jet(p(1,2),p(3,4),p(b,d)))/3
        for a,b,c,d in itertools.permutations(range(1,5)))
bulk=S.expand(U**2*(bulk+pot+der))
R=Ds*V+Du*U*V+Dt*U+C2*V*(V-1-U)+C1*(1-U-V)+C3*U*(U-1-V)
target=4*(C2*U+C1*U/V+C3*U**2/V)+4*U**2*R*jet(p(1,2),p(2,3),p(2,4))

# Rational differential algebra for Phi, log U, log V.
Phi,Lu,Lv=S.symbols('Phi logU logV')
lam=(1-U-V)**2-4*U*V
duPhi=((1-U+V)*Phi+2*Lu+(1-U-V)*Lv/U)/lam
dvPhi=((1+U-V)*Phi+(1-U-V)*Lu/V+2*Lv)/lam
def du(e):return S.factor(S.diff(e,U)+S.diff(e,Phi)*duPhi+S.diff(e,Lu)/U)
def dv(e):return S.factor(S.diff(e,V)+S.diff(e,Phi)*dvPhi+S.diff(e,Lv)/V)
j={(0,0):Phi}
for n in range(1,4):
    for a in range(n+1):
        b=n-a
        j[(a,b)]=du(j[(a-1,b)]) if a else dv(j[(0,b-1)])
rules={F[k]:e for k,e in j.items()}
results=[]
for name in [Ds,Dt,Du,C1,C2,C3]:
    residual=S.factor(S.cancel(S.expand(bulk-target).coeff(name).subs(rules)))
    if residual!=0:raise AssertionError((name,residual))
    results.append({'label':'full position identity tensor '+str(name),'residual':str(residual)})
comm=S.factor(du(dvPhi)-dv(duPhi))
if comm!=0:raise AssertionError(('box differential commutator',comm))
results.append({'label':'flat-box cross-ratio derivative commutator','residual':str(comm)})

data={'tool':'Python/SymPy','sympy_version':S.__version__,
      'all_passed':True,'count':len(results),'checks':results,
      'method':'six independent distance derivatives, then exact box first-order differential algebra',
      'scope':'Euclidean branch; continuous limits across discriminant zero; regular-distribution extension separately justified by source bounds'}
Path(__file__).with_name('generic_position_results.json').write_text(json.dumps(data,indent=2)+'\n')
print(json.dumps(data,indent=2))
