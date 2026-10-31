"""Fresh exact BV-cell check. SageMath; no external implementation is imported.
All generators are coefficient-first, dx commutes with coefficients.
The algebra is the exterior algebra on 24 odd generators over a rational
function field of even generators. Domain: kappa != 0, det(I+t F) != 0.
"""
from sage.all import QQ, PolynomialRing, matrix
from pathlib import Path
import json, time, traceback

OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA')
started = time.time()
names = ([f'f{a}{m}' for a in range(3) for m in range(3)] +
         [f'w{a}{m}' for a in range(3) for m in range(3)] +
         [f'r{a}' for a in range(3)] + [f'u{a}' for a in range(3)] + ['t','kappa'])
PR = PolynomialRing(QQ, names=names)
K = PR.fraction_field()
v = dict(zip(names, map(K, PR.gens())))
t, kap = v['t'], v['kappa']
f = [[v[f'f{a}{m}'] for m in range(3)] for a in range(3)]
w = [[v[f'w{a}{m}'] for m in range(3)] for a in range(3)]
r = [v[f'r{a}'] for a in range(3)]
u = [v[f'u{a}'] for a in range(3)]
oddnames = ([f'z{m}' for m in range(3)] +
            [f'E{a}{m}' for a in range(3) for m in range(3)] +
            [f'W{a}{m}' for a in range(3) for m in range(3)] +
            [f'eta{a}' for a in range(3)])

class Ext:
    def __init__(self, data=0):
        if isinstance(data, Ext): self.d = dict(data.d)
        elif isinstance(data, dict): self.d = {int(m):K(c) for m,c in data.items() if c != 0}
        else: self.d = {} if data == 0 else {0:K(data)}
    @staticmethod
    def coerce(x): return x if isinstance(x, Ext) else Ext(x)
    def __add__(self, other):
        other = Ext.coerce(other); out = dict(self.d)
        for m,c in other.d.items():
            out[m] = out.get(m,K.zero())+c
            if out[m] == 0: del out[m]
        return Ext(out)
    __radd__ = __add__
    def __neg__(self): return Ext({m:-c for m,c in self.d.items()})
    def __sub__(self,other): return self + (-Ext.coerce(other))
    def __rsub__(self,other): return Ext.coerce(other) + (-self)
    def __mul__(self,other):
        other=Ext.coerce(other); out={}
        for m,c in self.d.items():
            for n,b in other.d.items():
                if m & n: continue
                crossings=sum((n & ((1 << j)-1)).bit_count() for j in range(24) if m & (1<<j))
                s=-1 if crossings%2 else 1; h=m|n
                out[h]=out.get(h,K.zero())+s*c*b
        return Ext(out)
    __rmul__=__mul__
    def dl(self,j):
        out={}; bit=1<<j
        for m,c in self.d.items():
            if m&bit: out[m^bit]=(-1 if (m&(bit-1)).bit_count()%2 else 1)*c
        return Ext(out)
    def de(self,x): return Ext({m:c.derivative(x) for m,c in self.d.items()})
    def __eq__(self,other): return self.d == Ext.coerce(other).d
    def terms(self):
        return [{'odd':[oddnames[j] for j in range(24) if m&(1<<j)], 'coefficient':str(c)} for m,c in sorted(self.d.items())]

z=[Ext({1<<j:1}) for j in range(3)]
E=[[Ext({1<<(3+3*a+m):1}) for m in range(3)] for a in range(3)]
W=[[Ext({1<<(12+3*a+m):1}) for m in range(3)] for a in range(3)]
eta=[Ext({1<<(21+a):1}) for a in range(3)]

def eps(a,b,c):
    if len({a,b,c}) != 3: return 0
    return -1 if sum(x>y for x,y in [(a,b),(a,c),(b,c)])%2 else 1

H=matrix(K,3,3,lambda a,m: (1 if a==m else 0)+t*f[a][m])
B=H.inverse(); detH=H.det(); jac=1/detH
chi=[sum((B[m,n]*z[n] for n in range(3)),Ext()) for m in range(3)]
Gamma=Ext()
for a in range(3):
    for m in range(3):
        Gamma += r[a]*chi[m]*w[a][m] + u[a]*chi[m]*f[a][m]
        for n in range(3):
            for s in range(3):
                # W^m beta_m wedge i_chi(E^s beta_s) = W^m chi^n E^s eps(s,n,m) vol.
                Gamma += (eps(s,n,m)/kap)*W[a][m]*chi[n]*E[a][s]

sector={k:Ext() for k in ['fE','wW','etaR','zetaT']}
for a in range(3):
    for m in range(3):
        sector['fE'] += Gamma.dl(3+3*a+m).de(f[a][m])
        sector['wW'] += Gamma.dl(12+3*a+m).de(w[a][m])
    sector['etaR'] -= Gamma.de(r[a]).dl(21+a)
    sector['zetaT'] -= Gamma.de(u[a]).dl(a)
D=sum(sector.values(),Ext())
body=-sum(B[m,a]*f[a][m] for a in range(3) for m in range(3))
nil=Ext()
for m in range(3):
    for n in range(3):
        for a in range(3):
            for s in range(3):
                nil += (t/kap)*eps(m,n,s)*B[n,a]*chi[m]*W[a][s]
expected=body+nil
Xf=[[Gamma.dl(3+3*a+m) for m in range(3)] for a in range(3)]
iW=[[sum((eps(s,n,m)*chi[n]*W[a][s] for n in range(3) for s in range(3)),Ext()) for m in range(3)] for a in range(3)]
Xjac=sum((jac.derivative(f[a][m])*Xf[a][m] for a in range(3) for m in range(3)),Ext())

# Build fixed-new-momentum type-II map using independent differential-form algebra.
def form_add(A,B):
    out=dict(A)
    for key,val in B.items(): out[key]=out.get(key,Ext())+val
    return {key:val for key,val in out.items() if val != 0}
def form_scale(c,A): return {key:c*val for key,val in A.items()}
def ic(A):
    out={}
    for key,val in A.items():
        for j,m in enumerate(key):
            new=key[:j]+key[j+1:]
            out[new]=out.get(new,Ext())+((-1)**j)*z[m]*val
    return {key:val for key,val in out.items() if val != 0}
def power_ic(A,n):
    for _ in range(n): A=ic(A)
    return A
def twoform(vv):
    return {(m,n):sum((eps(s,m,n)*vv[s] for s in range(3)),Ext()) for m in range(3) for n in range(m+1,3)}
def oneform(vv): return {(m,):Ext(vv[m]) for m in range(3)}
def threeform(c): return {(0,1,2):Ext(c)}
newf=[]; neww=[]; newrho=[]; newtau=[]
for a in range(3):
    ef=oneform(f[a]); wf=oneform(w[a]); pE=twoform(E[a]); pW=twoform(W[a]); pR=threeform(r[a]); pT=threeform(u[a])
    qf=form_add(form_add(ef,form_scale(t/kap,ic(pW))),form_scale(t*t/(2*kap),power_ic(pR,2)))
    qw=form_add(form_add(wf,form_scale(t/kap,ic(pE))),form_scale(t*t/(2*kap),power_ic(pT,2)))
    qt=form_add(form_add(form_add({():z[a]},form_scale(t,ic(ef))),form_scale(t*t/(2*kap),power_ic(pW,2))),form_scale(t**3/(3*kap),power_ic(pR,3)))
    qr=form_add(form_add(form_add({():eta[a]},form_scale(t,ic(wf))),form_scale(t*t/(2*kap),power_ic(pE,2))),form_scale(t**3/(3*kap),power_ic(pT,3)))
    newf.extend(qf.get((m,),Ext()) for m in range(3)); neww.extend(qw.get((m,),Ext()) for m in range(3))
    newrho.append(qr.get((),Ext())); newtau.append(qt.get((),Ext()))
phys=newf+neww; ghosts=newrho+newtau
oldphys=[f[a][m] for a in range(3) for m in range(3)]+[w[a][m] for a in range(3) for m in range(3)]
ghostindices=[21+a for a in range(3)]+list(range(3))
A=[[phys[i].de(oldphys[j]) for j in range(18)] for i in range(18)]
BB=[[-phys[i].dl(ghostindices[j]) for j in range(6)] for i in range(18)]
CC=[[ghosts[i].de(oldphys[j]) for j in range(18)] for i in range(6)]
DD=[[ghosts[i].dl(ghostindices[j]) for j in range(6)] for i in range(6)]
Schur=[[DD[i][j]-sum((CC[i][k]*BB[k][j] for k in range(18)),Ext()) for j in range(6)] for i in range(6)]
SchurExpected=[[Ext(0) for _ in range(6)] for _ in range(6)]
for a in range(3):
    SchurExpected[a][a]=Ext(1)
    for m in range(3):
        SchurExpected[a][3+m]=Ext(t*w[a][m])
        SchurExpected[3+a][3+m]=Ext(H[a,m])

checks={
 'epsilon_orientation':eps(0,1,2)==1,
 'exterior_anticommutation':z[0]*W[1][2] == -(W[1][2]*z[0]),
 'left_derivative_product':(W[0][0]*z[1]*E[2][2]).dl(3+3*2+2)==W[0][0]*z[1],
 'inverse_matrix':B*H == matrix.identity(K,3),
 'delta_exact_all_sectors':D == expected,
 'delta_physical_sector':sector['fE'] == nil,
 'delta_ghost_sector':sector['zetaT'] == Ext(body),
 'delta_wW_sector_zero':sector['wW'] == 0,
 'delta_etaR_sector_zero':sector['etaR'] == 0,
 'right_hamiltonian_f_component':all(Xf[a][m] == (1/kap)*iW[a][m] for a in range(3) for m in range(3)),
 'semidensity_source_PDE':Ext(jac.derivative(t))-Xjac-jac*D == 0,
 'fixed_P_even_block_identity':all(A[i][j] == (1 if i==j else 0) for i in range(18) for j in range(18)),
 'full_ghost_Schur_exact':all(Schur[i][j] == SchurExpected[i][j] for i in range(6) for j in range(6)),
 'nilpotent_sector_nonzero':nil != 0,
 'jacobian_initial_one':jac.subs({t:0}) == 1,
 'divergence_initial_minus_traceF':all(c.subs({t:0})==0 for m,c in (D+sum(f[a][a] for a in range(3))).d.items())
}
report={
 'status':'passed' if all(checks.values()) else 'FAILED',
 'checks':{key:bool(val) for key,val in checks.items()},
 'assumptions':['oriented unit canonical cell','e0=identity at cell','kappa nonzero','det(I+tF) nonzero','left Grassmann derivatives','coefficient-first dx convention'],
 'gamma_monomials':len(Gamma.d),'divergence_monomials':len(D.d),
 'sector_monomials':{key:len(value.d) for key,value in sector.items()},
 'nilpotent_monomials':len(nil.d),'duration_seconds':time.time()-started,
 'implementation':'fresh native Sage rational functions plus explicit bitmask exterior algebra; no prior review code imported',
 'diagnostics':[], 'excluded_failures':[]
}
(OUT/'sage_result.json').write_text(json.dumps(report,indent=2)+'\n')
(OUT/'sage_exact_divergence.json').write_text(json.dumps({'DeltaGamma':D.terms(),'sectors':{key:value.terms() for key,value in sector.items()},'detH':str(detH),'jacobian_halfdensity':str(jac)},indent=2)+'\n')
print(json.dumps(report,indent=2))
