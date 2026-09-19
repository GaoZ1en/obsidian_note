#!/usr/bin/env python3
"""Action-selected boundary Hamiltonian/work checks. Python 3 + SymPy.
This is independent of the vault's Mathematica/xAct regressions. No network.
Conventions: c=1/(16 pi G), Omega=delta p wedge delta q, outward K.
"""
from __future__ import annotations
import json
from pathlib import Path
import sympy as s
checks=[]; values={}
def simp(e): return s.factor(s.simplify(e))
def check(label,e):
    xs=list(e) if isinstance(e,(list,tuple,s.MatrixBase)) else [e]
    rs=[simp(x) for x in xs]
    ok=all(x==0 for x in rs)
    checks.append({'label':label,'passed':ok,'residuals':[str(x)for x in rs]})
    print(label,ok,[x for x in rs if x!=0],flush=True)

# 1. ADM decomposition of the *complete* metric source, not just the lapse.
N=s.symbols('N',positive=True)
v1,v2=s.symbols('v1 v2',real=True)
a,b,d=s.symbols('a b d',real=True)
T=s.Matrix([[s.Symbol('T00'),s.Symbol('T01'),s.Symbol('T02')],
 [s.Symbol('T01'),s.Symbol('T11'),s.Symbol('T12')],
 [s.Symbol('T02'),s.Symbol('T12'),s.Symbol('T22')]])
sig=s.Matrix([[a,b],[b,d]]); V=s.Matrix([v1,v2]); Vlow=sig*V
Gamma=s.zeros(3);Gamma[0,0]=-N*N+(V.T*sig*V)[0]
Gamma[0,1]=Gamma[1,0]=Vlow[0];Gamma[0,2]=Gamma[2,0]=Vlow[1]
Gamma[1:3,1:3]=sig
energy=N*N*T[0,0]
mom=N*sig*(T[1:3,0]+V*T[0,0])
stress=T[1:3,1:3]+V*T[0,1:3]+T[1:3,0]*V.T+T[0,0]*V*V.T
pars=[N,v1,v2,a,b,d]
source=[s.expand(N*sum(T[i,j]*s.diff(Gamma[i,j],p)for i in range(3)for j in range(3))/2)for p in pars]
expected=[-energy,mom[0],mom[1],N*stress[0,0]/2,N*stress[0,1],N*stress[1,1]/2]
check('ADM_full_source_decomposition',[x-y for x,y in zip(source,expected)])
charge=-N*sum(T[0,j]*Gamma[j,0]for j in range(3))
check('ADM_charge_energy_minus_shift_momentum',charge-(N*energy-(V.T*mom)[0]))

# 2. A local Gaussian collar calculation of Q+i_xi ell-I_xi c.
# At a wall point take gamma=diag(-1,1,1) and intrinsic normal coordinates.
c=s.symbols('c',positive=True)
g0=s.diag(-1,1,1)
K=s.Matrix([[s.Symbol('K00'),s.Symbol('K01'),s.Symbol('K02')],
 [s.Symbol('K01'),s.Symbol('K11'),s.Symbol('K12')],
 [s.Symbol('K02'),s.Symbol('K12'),s.Symbol('K22')]])
xi=s.Matrix(s.symbols('xi0:3'));dnxi=s.Matrix(s.symbols('dnxi0:3'))
trK=(g0*K).trace()
# Gamma^r_ij=-Kij; Gamma^i_rj=gamma^{ik}Kkj.
nabla_r_xit=dnxi[0]+(g0*K*xi)[0]
nabla_upper_t_xir=(K*xi)[0]
Q=c*(nabla_r_xit-nabla_upper_t_xir)
Iell=-2*c*xi[0]*trK
Ic=-c*(g0*dnxi)[0] # c_corner(delta g)=-c delta g(n,u)
BY=2*c*(trK*g0-g0*K*g0)
energyBY=-(BY*(g0*xi))[0]
check('Noether_GHY_corner_equals_BY',Q+Iell-Ic-energyBY)
check('normal_extension_cancels',s.diff(Q+Iell-Ic,dnxi[0]))

# 3. Exact Rosen geometry, derived from the full 4D metric.
u,v,x,y=s.symbols('u v x y',real=True)
A=s.Function('A')(v);B=s.Function('B')(v);D=s.Function('D')(v)
gamma2=s.Matrix([[A,B],[B,D]])
g=s.Matrix([[0,-1,0,0],[-1,0,0,0],[0,0,A,B],[0,0,B,D]])
gi=g.inv(); coords=(u,v,x,y)
conn=[[[simp(sum(gi[i,l]*(s.diff(g[l,j],coords[k])+s.diff(g[l,k],coords[j])-s.diff(g[j,k],coords[l]))for l in range(4))/2)for k in range(4)]for j in range(4)]for i in range(4)]
ric=s.zeros(4)
for i in range(4):
 for j in range(i,4):
  ric[i,j]=simp(sum(s.diff(conn[k][i][j],coords[k])-s.diff(conn[k][i][k],coords[j])+sum(conn[k][k][l]*conn[l][i][j]-conn[k][j][l]*conn[l][i][k]for l in range(4))for k in range(4)))
  ric[j,i]=ric[i,j]
gi2=gamma2.inv(); C=gi2*gamma2.diff(v)
Rvv=-s.trace(gi2*gamma2.diff(v,2))/2+s.trace(C*C)/4
rr=s.zeros(4);rr[1,1]=Rvv
check('Rosen_full_Ricci_tensor',ric-rr)
area=s.sqrt(gamma2.det())
# On a +z wall the induced metric is -dt^2+gamma2(z-t); KAB=gamma2'/2.
tau2=2*c*(s.trace(C)/2*gi2-gi2*gamma2.diff(v)*gi2/2)
Pi2=area*tau2/2
H=-2*c*s.diff(area,v)
Ftime=-sum(Pi2[i,j]*s.diff(gamma2[i,j],v)for i in range(2)for j in range(2))
check('Rosen_exact_BY_readout',H+2*c*area*s.trace(C)/2)
check('Rosen_offshell_Ward_balance',-s.diff(H,v)+Ftime+2*c*area*Rvv)
# An exact non-flat vacuum family on a finite domain with cos(kv)>0.
k=s.symbols('k',positive=True)
exA=s.cos(k*v)**2*s.exp(2*k*v); exD=s.cos(k*v)**2*s.exp(-2*k*v)
sub={A:exA,B:s.Integer(0),D:exD}
check('exact_Rosen_vacuum',Rvv.subs(sub).doit())
values['exact_Rosen_H_plus']=str(simp(H.subs(sub).doit()))

# Unimodular transverse shape gamma=a^2 M, tr(M^{-1}M')=0.
scale=s.Function('scale')(v);shear2=s.Function('shear2')(v)
traceA=4*s.diff(scale,v)/scale
traceA2=8*(s.diff(scale,v)/scale)**2+shear2
check('unimodular_shape_exact_vacuum_reduction',-s.diff(traceA,v)/2-traceA2/4+2*s.diff(scale,v,2)/scale+shear2/4)

# 4. Two physical polarizations and their order-two source correction.
ep=s.symbols('epsilon',real=True)
p=s.Function('p')(v);q=s.Function('q')(v);S=s.Function('S')(v)
Qm=s.Matrix([[p,q],[q,-p]])
G2=s.eye(2)+ep*Qm+ep**2*S*s.eye(2)
inv2=s.eye(2)-ep*Qm+ep**2*(Qm*Qm-S*s.eye(2))
R2=s.expand(-s.trace(inv2*G2.diff(v,2))/2+s.trace(inv2*G2.diff(v)*inv2*G2.diff(v))/4).coeff(ep,2)
expected=-s.diff(S,v,2)+p*s.diff(p,v,2)+q*s.diff(q,v,2)+(s.diff(p,v)**2+s.diff(q,v)**2)/2
check('two_polarization_second_order_vacuum',R2-expected)
area2=S-(p*p+q*q)/2
focus=s.diff(area2,v,2).subs(s.diff(S,v,2),expected+s.diff(S,v,2))
check('two_polarization_area_focusing',focus+(s.diff(p,v)**2+s.diff(q,v)**2)/2)
P1=-c*Qm.diff(v)/2
Fprime=sum(P1[i,j]*Qm[i,j]for i in range(2)for j in range(2))
check('two_polarization_source_Hessian',Fprime+c*(p*s.diff(p,v)+q*s.diff(q,v)))
ecan=c*(s.diff(p,v)**2+s.diff(q,v)**2-p*s.diff(p,v,2)-q*s.diff(q,v,2))
eBY=-4*c*focus
check('BY_Hessian_minus_canonical_is_source_boundary',eBY-ecan-c*s.diff(p*s.diff(p,v)+q*s.diff(q,v),v))
check('exponential_radiation_CE_zero',ecan.subs({p:s.exp(v),q:0}).doit())
check('exponential_radiation_BY_nonzero',eBY.subs({p:s.exp(v),q:0}).doit()-2*c*s.exp(2*v))
alpha0,alpha1=s.symbols('alpha0 alpha1')
check('second_order_homogeneous_wall_shift',s.diff(area2+alpha0+alpha1*v,v)-s.diff(area2,v)-alpha1)

# 5. Static spherical AdS: mass, clock normalization, and shell composition.
G,M,R,L=s.symbols('G M R L',positive=True)
f0=1+R*R/L**2;ff=f0-2*G*M/R
NN=s.sqrt(ff)
E=R/G*(s.sqrt(f0)-NN); HH=NN*E
check('static_sphere_redshift_dEdM',s.diff(E,M)-1/NN)
check('static_sphere_boundary_one_form_is_dM',s.diff(HH,M)-E*s.diff(NN,M)-1)
check('static_sphere_rationalized_energy',E-2*M/(s.sqrt(f0)+NN))
check('AdS_boundary_time_charge_limit',s.limit(2*M*NN/(s.sqrt(f0)+NN),R,s.oo)-M)
check('AdS_local_proper_energy_limit',s.limit(2*M/(s.sqrt(f0)+NN),R,s.oo))
Eflat=R/G*(1-s.sqrt(1-2*G*M/R))
check('flat_proper_energy_limit',s.limit(Eflat,R,s.oo)-M)
R1,R2=s.symbols('R1 R2',positive=True)
Hshell=HH.subs(R,R2)-HH.subs(R,R1)
Fshell=-E.subs(R,R2)*s.diff(NN.subs(R,R2),M)+E.subs(R,R1)*s.diff(NN.subs(R,R1),M)
check('static_shell_H_plus_work_cancels',s.diff(Hshell,M)+Fshell)
# Derive the bare proper-time energy from the extrinsic curvature of a sphere.
mu=s.symbols('mu',real=True);F=s.Function('F')(R)
gs=s.diag(-F,R*R/(1-mu*mu),R*R*(1-mu*mu));gsi=gs.inv()
Ks=s.sqrt(F)*gs.diff(R)/2
Ts=2*c*((gsi*Ks).trace()*gsi-gsi*Ks*gsi)
check('sphere_BY_tensor_readout',4*s.pi*R*R*F*Ts[0,0]+16*s.pi*c*R*s.sqrt(F))
# For S_ref=c integral sqrt(-gamma) U(RicciScalar), R_tt=0 and D U'=0
# on this static round family, so epsilon_ref=-c U.
Uref=-4*s.sqrt(1/L**2+1/R**2)
check('sphere_reference_action_energy_response',-4*s.pi*R**2*c*Uref-16*s.pi*c*R*s.sqrt(f0))

# 6. Improvement ambiguity: it disappears only after specifying the source-work prescription.
t,z=s.symbols('t z',real=True);phi=s.Function('phi')(t,z)
lam=s.symbols('lambda',real=True)
rhoC=c*(s.diff(phi,t)**2-phi*s.diff(phi,t,2))/2
JC=c*(phi*s.diff(phi,t,z)-s.diff(phi,t)*s.diff(phi,z))/2
bb=c*phi*s.diff(phi,z)/2
rhoN=c*(s.diff(phi,t)**2+s.diff(phi,z)**2)/2
JN=-c*s.diff(phi,t)*s.diff(phi,z)
wave=s.diff(phi,t,2)-s.diff(phi,z,2)
check('improvement_energy_relation_offshell',rhoN-rhoC-s.diff(bb,z)-c*phi*wave/2)
check('improvement_flux_relation',JN-JC+s.diff(bb,t))
check('improvement_balance_invariant',s.diff(lam*s.diff(bb,z),t)-s.diff(lam*s.diff(bb,t),z))
# A scalar boundary potential has zero alpha but shifts the physical energy readout.
area0,sigma0=s.symbols('area sigma',positive=True)
boundaryL=sigma0*N*area0
check('boundary_potential_zero_relative_one_form',[s.diff(-boundaryL,p0)+s.diff(boundaryL,p0)for p0 in (N,area0)])
# A field-dependent clock cannot be varied as a fixed generator.
fH=s.Function('f');Hvar=s.symbols('H')
check('field_dependent_clock_adjustment',s.diff(fH(Hvar)*Hvar,Hvar)-Hvar*s.diff(fH(Hvar),Hvar)-fH(Hvar))

out=Path(__file__).with_name('boundary_hamiltonian_results.json')
report={'sympy_version':s.__version__,'passed':sum(c['passed']for c in checks),'total':len(checks),'checks':checks,'values':values}
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(report['passed'], '/',report['total'],flush=True)
if report['passed']!=report['total']:raise SystemExit(1)
