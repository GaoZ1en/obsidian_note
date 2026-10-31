#!/usr/bin/env python3
"""Exact component/Grassmann checks of the local nonlinear BV interface.
Run with Sage as ordinary Python (no preparsing). Creates a private export;
never overwrites a previous result. Functional CME/domain results are analytic.
"""
from sage.all import QQ, PolynomialRing, matrix, identity_matrix, block_matrix, zero_matrix, save
from sage.env import SAGE_VERSION
from pathlib import Path
from itertools import combinations_with_replacement
import hashlib, json, os, tempfile, time

start=time.monotonic()
indices=range(3)
jets=[()]+[(i,) for i in indices]+list(combinations_with_replacement(indices,2))
qn=[f'{kind}{a}{mu}' for kind in ['e','w'] for a in indices for mu in indices]
gn=[f'x{mu}' for mu in indices]+[f'l{a}' for a in indices]
def jname(name,j):return name+('d'+''.join(map(str,j)) if j else '')
even_names=[jname(n,j) for n in qn for j in jets]+[f'b{kind}{a}{mu}' for kind in ['e','w'] for a in indices for mu in indices]+['coupling']
R=PolynomialRing(QQ,names=even_names)
even=dict(zip(even_names,R.gens()))
odd_names=[jname(n,j) for n in gn for j in jets]+[f'p{n}' for n in qn]
odd_index={n:i for i,n in enumerate(odd_names)}

class Gr:
    """Sparse Grassmann polynomial over a specified exact polynomial ring."""
    def __init__(self,x=0):
        self.d={k:R(v) for k,v in x.items() if v} if isinstance(x,dict) else ({0:R(x)} if x else {})
    @staticmethod
    def co(x):return x if isinstance(x,Gr) else Gr(x)
    def __add__(self,x):
        z=self.d.copy()
        for k,v in Gr.co(x).d.items():z[k]=z.get(k,R.zero())+v
        return Gr(z)
    __radd__=__add__
    def __neg__(self):return Gr({k:-v for k,v in self.d.items()})
    def __sub__(self,x):return self+-Gr.co(x)
    def __rsub__(self,x):return Gr.co(x)+-self
    def __mul__(self,x):
        z={}
        for p,u in self.d.items():
            for q,v in Gr.co(x).d.items():
                if p&q:continue
                inv=sum((q&((1<<i)-1)).bit_count() for i in range(p.bit_length()) if p&(1<<i))
                k=p|q;z[k]=z.get(k,R.zero())+((-1)**inv)*u*v
        return Gr(z)
    __rmul__=__mul__
    def __truediv__(self,x):return self*QQ(1)/x if isinstance(x,Gr) else Gr({k:v/QQ(x) for k,v in self.d.items()})
    def __eq__(self,x):return self.d==Gr.co(x).d
    def dl(self,n):
        if n in odd_index:
            bit=1<<odd_index[n]
            return Gr({k^bit:((-1)**((k&(bit-1)).bit_count()))*v for k,v in self.d.items() if k&bit})
        return Gr({k:v.derivative(even[n]) for k,v in self.d.items()})
    def record(self):
        return [{'coefficient':str(v),'odd_factors':[odd_names[i] for i in range(k.bit_length()) if k&(1<<i)]} for k,v in sorted(self.d.items())]

def var(n):return Gr({1<<odd_index[n]:1}) if n in odd_index else Gr(even[n])
def Z():return Gr()
def ep(i,j,k):
    return 0 if len({i,j,k})<3 else (1 if (i,j,k) in [(0,1,2),(1,2,0),(2,0,1)] else -1)
def cross(u,v):return [sum((ep(a,b,c)*u[b]*v[c] for b in indices for c in indices),Z()) for a in indices]
def fld(k,mu):return [var(f'{k}{a}{mu}') for a in indices]
def xi(mu):return var(f'x{mu}')
def lam():return [var(f'l{a}') for a in indices]

Dmaps=[]
for mu in indices:
    mp={}
    for n in qn+gn:
        for j in jets:
            if len(j)<2:mp[jname(n,j)]=var(jname(n,tuple(sorted(j+(mu,)))))
    Dmaps.append(mp)

def act(poly,mp):
    out=Z()
    for n,image in mp.items():
        deriv=poly.dl(n)
        if deriv.d:out+=image*deriv
    return out

def D(poly,mu):return act(poly,Dmaps[mu])

def lie_one(k,mu,a):return sum((xi(nu)*var(jname(f'{k}{a}{mu}',(nu,)))+var(jname(f'x{nu}',(mu,)))*var(f'{k}{a}{nu}') for nu in indices),Z())
Q0={}
for mu in indices:
    for a in indices:
        Q0[f'e{a}{mu}']=lie_one('e',mu,a)+cross(fld('e',mu),lam())[a]
        Q0[f'w{a}{mu}']=lie_one('w',mu,a)+var(jname(f'l{a}',(mu,)))+cross(fld('w',mu),lam())[a]
for mu in indices:Q0[f'x{mu}']=sum((xi(nu)*var(jname(f'x{mu}',(nu,))) for nu in indices),Z())
for a in indices:Q0[f'l{a}']=sum((xi(nu)*var(jname(f'l{a}',(nu,))) for nu in indices),Z())-cross(lam(),lam())[a]/2
Qmap=Q0.copy()
for n in qn+gn:
    for mu in indices:Qmap[jname(n,(mu,))]=D(Q0[n],mu)
def Q(poly):return act(poly,Qmap)

checks=[]
residuals={}
def check(label,values):
    if isinstance(values,Gr):values=[values]
    values=list(values)
    ok=all(v==0 for v in values)
    checks.append({'label':label,'passed':bool(ok),'residual_count':len(values)})
    residuals[label]=[v.record() if isinstance(v,Gr) else str(v) for v in values]

testx=xi(0);testy=xi(1)
check('Grassmann antisymmetry and left derivative',[testx*testx,testx*testy+testy*testx,(testx*testy).dl('x1')+testx])
check('geometric BRST nilpotency all fields',[Q(Q0[n]) for n in qn])
check('geometric BRST nilpotency all ghosts',[Q(Q0[n]) for n in gn])

curv={};tors={};defect={}
for a in indices:
    for mu in indices:
        for nu in indices:
            curv[a,mu,nu]=var(jname(f'w{a}{nu}',(mu,)))-var(jname(f'w{a}{mu}',(nu,)))+cross(fld('w',mu),fld('w',nu))[a]
            tors[a,mu,nu]=var(jname(f'e{a}{nu}',(mu,)))-var(jname(f'e{a}{mu}',(nu,)))+cross(fld('w',mu),fld('e',nu))[a]-cross(fld('w',nu),fld('e',mu))[a]
            defect[a,mu,nu]=curv[a,mu,nu]-cross(fld('e',mu),fld('e',nu))[a]
rho=[var(f'l{a}')+sum((xi(mu)*var(f'w{a}{mu}') for mu in indices),Z()) for a in indices]
tau=[sum((xi(mu)*var(f'e{a}{mu}') for mu in indices),Z()) for a in indices]
cartan_e=[];cartan_w=[]
for a in indices:
    for mu in indices:
        cs_e=D(tau[a],mu)+cross(fld('w',mu),tau)[a]+cross(fld('e',mu),rho)[a]
        cs_w=D(rho[a],mu)+cross(fld('w',mu),rho)[a]-cross(fld('e',mu),tau)[a]
        cartan_e.append(cs_e-Q0[f'e{a}{mu}']+sum((xi(nu)*tors[a,nu,mu] for nu in indices),Z()))
        cartan_w.append(cs_w-Q0[f'w{a}{mu}']+sum((xi(nu)*defect[a,nu,mu] for nu in indices),Z()))
check('off shell Cartan torsion correction',cartan_e)
check('off shell Cartan curvature correction',cartan_w)
# At geometric BRST, the transformed CS ghosts have the curvature remainder.
check('geometric rho quadratic curvature remainder',[Q(rho[a])+cross(rho,rho)[a]/2-cross(tau,tau)[a]/2-sum((xi(mu)*xi(nu)*defect[a,mu,nu]/2 for mu in indices for nu in indices),Z()) for a in indices])
check('geometric tau quadratic torsion remainder',[Q(tau[a])+cross(rho,tau)[a]-sum((xi(mu)*xi(nu)*tors[a,mu,nu]/2 for mu in indices for nu in indices),Z()) for a in indices])

coupling=even['coupling']
L=sum((coupling*ep(mu,nu,r)*var(f'e{a}{mu}')*curv[a,nu,r] for a in indices for mu in indices for nu in indices for r in indices),Z())
L-=sum((coupling*QQ(1)/3*ep(a,b,c)*ep(mu,nu,r)*var(f'e{a}{mu}')*var(f'e{b}{nu}')*var(f'e{c}{r}') for a in indices for b in indices for c in indices for mu in indices for nu in indices for r in indices),Z())
check('full Palatini bulk BRST variation is divergence',Q(L)-sum((D(xi(mu)*L,mu) for mu in indices),Z()))

# Linearized curvatures at arbitrary fixed background e0,w0; background-flat
# and torsionless constraints are only needed to identify the quadratic action.
def bg(kind,mu):return [Gr(even[f'b{kind}{a}{mu}']) for a in indices]
linC={};linT={}
for a in indices:
    for mu in indices:
        for nu in indices:
            linC[a,mu,nu]=var(jname(f'w{a}{nu}',(mu,)))-var(jname(f'w{a}{mu}',(nu,)))+cross(bg('w',mu),fld('w',nu))[a]-cross(bg('w',nu),fld('w',mu))[a]-cross(bg('e',mu),fld('e',nu))[a]+cross(bg('e',nu),fld('e',mu))[a]
            linT[a,mu,nu]=var(jname(f'e{a}{nu}',(mu,)))-var(jname(f'e{a}{mu}',(nu,)))+cross(bg('w',mu),fld('e',nu))[a]-cross(bg('w',nu),fld('e',mu))[a]+cross(fld('w',mu),bg('e',nu))[a]-cross(fld('w',nu),bg('e',mu))[a]
Gnum=sum((ep(nu,mu,r)*xi(nu)*var(f'pw{a}{mu}')*var(f'pe{a}{r}') for a in indices for nu in indices for mu in indices for r in indices),Z())
Delta=sum((var(f'pw{a}{mu}')*xi(nu)*linC[a,nu,mu]+var(f'pe{a}{mu}')*xi(nu)*linT[a,nu,mu] for a in indices for mu in indices for nu in indices),Z())
bracket=Z()
for a in indices:
    for mu in indices:
        Ew=sum((coupling*ep(mu,nu,r)*linT[a,nu,r] for nu in indices for r in indices),Z())
        Ee=sum((coupling*ep(mu,nu,r)*linC[a,nu,r] for nu in indices for r in indices),Z())
        bracket-=Ew*Gnum.dl(f'pw{a}{mu}')+Ee*Gnum.dl(f'pe{a}{mu}')
check('cubic canonical generator exact sign and normalization',bracket-2*coupling*Delta)
# G3=Gnum/(2a); no paired coordinate appears with its antifield.
check('flat Darboux BV Laplacian of cubic generator',[Gnum.dl('p'+n).dl(n) for n in qn])

# Pointwise finite-cell determinants, not functional determinants.
EE=matrix(R,3,3,[even[f'e{a}{mu}'] for a in indices for mu in indices])
WW=matrix(R,3,3,[even[f'w{a}{mu}'] for a in indices for mu in indices])
E=EE.det();gg=EE.transpose()*EE
H=block_matrix([[identity_matrix(R,3),WW],[zero_matrix(R,3,3),EE]])
check('field dependent six ghost map determinant',[H.det()-E,gg.det()-E**2])
Lk=block_matrix(3,3,[(-EE.transpose() if i==j else zero_matrix(R,3,3)) for i in indices for j in indices])
check('connection to contorsion coordinate Jacobian',[Lk.det()+E**3])
T=matrix(QQ,9,9,lambda i,j:(1 if i//3==i%3 and j//3==j%3 else 0)-(1 if i//3==j%3 and i%3==j//3 else 0))
check('auxiliary normalized Hessian determinant and spin spectrum',[T.det()+2,T.charpoly()-(T.charpoly().parent().gen()-2)*(T.charpoly().parent().gen()-1)**3*(T.charpoly().parent().gen()+1)**5])
# Clear all inverses: adj(g) replaces det(g)*g^{-1}.
adj=gg.adjugate()
check('dynamical L2 contorsion isometry cleared denominators',list((EE*adj*EE.transpose()-E**2*identity_matrix(R,3)).list()))
# Frozen norm ratio is E^{-3/2}; the dynamic norm volume cancels it.
# The BV cotangent lift of a base supermap has square Berezinian;
# here Ber(base)=E^{-1}, Ber(full)=E^{-2}, semidensity=E^{-1}.

result={'scope':'Exact finite polynomial/Grassmann jets and pointwise determinants; not continuum BV regularization, boundary BFV, or an all-orders canonical map.',
        'sage_version':SAGE_VERSION,'checks':checks,'all_passed':all(x['passed'] for x in checks),'residuals':residuals,
        'counts':{'even_generators':len(even_names),'odd_generators':len(odd_names),'groups':len(checks)},
        'conventions':{'Q':'left odd derivation, Q fields = Lie_xi + positive D_lambda gauge; Qlambda=xi.dlambda-[lambda,lambda]/2',
                       'antibracket':'(F,G)=F right_d_phi left_d_phistar G - F right_d_phistar left_d_phi G; canonical action change exp((G,.))',
                       'G3':'(2a)^(-1) epsilon_(nu mu sigma) xi^nu omega*^mu_a e*^sigma_a',
                       'field_order':'e,omega,xi,lambda perturbations and every antifield count as degree one; fixed background degree zero'},
        'elapsed_seconds':time.monotonic()-start}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='nonlinear-bv-cubic.',dir=store))
with (out/'result.json').open('x') as f:json.dump(result,f,indent=2);f.write('\n')
save(residuals,str(out/'residuals.sobj'))
print(json.dumps({'result':str(out/'result.json'),'native':str(out/'residuals.sobj'),'all_passed':result['all_passed'],'groups':len(checks),'elapsed_seconds':result['elapsed_seconds']},indent=2))
