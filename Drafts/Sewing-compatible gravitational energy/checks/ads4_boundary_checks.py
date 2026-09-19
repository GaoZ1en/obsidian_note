#!/usr/bin/env python3
"""Finite-radius Einstein/GHY response tests for two explicit AdS4 modes.
No mode-normalization or all-mode completeness claim is made.
"""
from __future__ import annotations
import json, time
from pathlib import Path
import sympy as s
r=s.symbols('r',positive=True,real=True)
th=s.symbols('mu',real=True)
t,ph=s.symbols('t phi',real=True)
c=s.symbols('c',positive=True,real=True)
x=(t,r,th,ph); f=1+r*r
G=s.diag(-f,1/f,r*r/(1-th*th),r*r*(1-th*th)); inv=G.inv()
def simp(e):
    return s.factor(s.cancel(s.powsimp(s.expand(e))))
print('Constructing background',flush=True)
Gamma=[[[simp(sum(inv[a,d]*(s.diff(G[d,b],x[k])+s.diff(G[d,k],x[b])-s.diff(G[b,k],x[d])) for d in range(4))/2) for k in range(4)]for b in range(4)]for a in range(4)]
checks=[]
expressions={}
def check(label,expr):
    es=list(expr) if isinstance(expr,(list,tuple,s.MatrixBase)) else [expr]
    rs=[simp(e) for e in es]
    passed=all(e==0 for e in rs)
    checks.append({'label':label,'passed':passed,'residuals':[str(e) for e in rs]})
    print(label,passed, [e for e in rs if e!=0],flush=True)
    return passed
Y=(3*th**2-1)/2
Yth=s.diff(Y,th)
S=s.zeros(4)
S[0,0]=r*r*Y/f**s.Rational(3,2)
S[0,1]=S[1,0]=s.I*r*Y/f**s.Rational(5,2)
S[0,2]=S[2,0]=s.I*r*r*Yth/(2*f**s.Rational(3,2))
S[1,1]=-Y/f**s.Rational(7,2)
S[1,2]=S[2,1]=-r*Yth/(2*f**s.Rational(5,2))
S[2,2]=r*r*(3*th**2/2-1)/(f**s.Rational(3,2)*(1-th*th))
S[3,3]=r*r*(1-th*th)/(2*f**s.Rational(3,2))
V=s.zeros(4); Xph=(1-th*th)*th
V[0,3]=V[3,0]=4*r**3/f**2*Xph
V[1,3]=V[3,1]=-4*s.I*r**4/f**3*Xph
seed=r**3/f**2
check('V20_RW_seed_reconstruction',[V[0,3]-f*s.diff(r*seed,r)*Xph,
                                    V[1,3]+4*s.I*r*seed*Xph/f])

def linear_ricci(h,w):
    def d(e,i):return -s.I*w*e if i==0 else s.diff(e,x[i])
    dh=[[[simp(d(h[a,b],k)-sum(Gamma[e][k][a]*h[e,b]+Gamma[e][k][b]*h[a,e] for e in range(4))) for b in range(4)]for a in range(4)]for k in range(4)]
    dg=[[[simp(sum(inv[a,e]*(dh[b][k][e]+dh[k][b][e]-dh[e][b][k])for e in range(4))/2)for k in range(4)]for b in range(4)]for a in range(4)]
    dr=s.zeros(4)
    for a in range(4):
      for b in range(a,4):
        dr[a,b]=simp(sum(d(dg[k][a][b],k)-d(dg[k][a][k],b)+sum(dg[k][k][l]*Gamma[l][a][b]+Gamma[k][k][l]*dg[l][a][b]-dg[k][b][l]*Gamma[l][a][k]-Gamma[k][b][l]*dg[l][a][k]for l in range(4))for k in range(4)))
        dr[b,a]=dr[a,b]
    div=s.Matrix([simp(sum(inv[a,k]*dh[k][a][b]for a in range(4)for k in range(4))) for b in range(4)])
    return dr,div,dg

wall=[0,2,3]
gam=G.extract(wall,wall); gaminv=gam.inv(); root=r*r*s.sqrt(f)
K0=gam.diff(r)*s.sqrt(f)/2; Ktr=(gaminv*K0).trace()
P0=s.simplify(c*root*(Ktr*gaminv-gaminv*K0*gaminv))
def wall_response(h,w):
    hij=h.extract(wall,wall); shift=s.Matrix([h[1,i] for i in wall])
    cov=s.zeros(3)
    for a,ia in enumerate(wall):
      for b,ib in enumerate(wall):
        deriv=-s.I*w*shift[b] if ia==0 else s.diff(shift[b],x[ia])
        cov[a,b]=simp(deriv-sum(Gamma[k][ia][ib]*h[1,k]for k in wall))
    dK=(s.sqrt(f)/2*(hij.diff(r)-cov-cov.T)-f*h[1,1]*K0/2).applyfunc(simp)
    raised=gaminv*hij*gaminv
    dk=simp((gaminv*dK).trace()-(gaminv*hij*gaminv*K0).trace())
    trace=simp((gaminv*hij).trace())
    dP=(c*root*(trace/2*(Ktr*gaminv-gaminv*K0*gaminv)+dk*gaminv-Ktr*raised-gaminv*dK*gaminv+gaminv*hij*gaminv*K0*gaminv+gaminv*K0*gaminv*hij*gaminv)).applyfunc(simp)
    return hij,dK,dP

def angint(e):
    return simp(2*s.pi*s.integrate(simp(e),(th,-1,1)))

start=time.time()
for name,h,w in [('S20',S,3),('V20',V,4)]:
    print('Starting',name,flush=True)
    dr,div,dg=linear_ricci(h,w)
    check(name+'_full_linear_Einstein',dr+3*h)
    check(name+'_trace',(inv*h).trace())
    # On a linearized Einstein solution around conformally flat AdS,
    # delta C_abcd = G_ae delta R^e_bcd + G_ac h_bd - G_ad h_bc.
    def ld(e,k):return -s.I*w*e if k==0 else s.diff(e,x[k])
    def dRup(a,b,k,l):
        return simp(ld(dg[a][l][b],k)-ld(dg[a][k][b],l)
            +sum(dg[a][k][e]*Gamma[e][l][b]+Gamma[a][k][e]*dg[e][l][b]
                 -dg[a][l][e]*Gamma[e][k][b]-Gamma[a][l][e]*dg[e][k][b] for e in range(4)))
    aa,bb,kk,ll=(0,1,0,1) if name=='S20' else (0,1,0,3)
    weyl=simp(sum(G[aa,e]*dRup(e,bb,kk,ll) for e in range(4))+G[aa,kk]*h[bb,ll]-G[aa,ll]*h[bb,kk])
    weylpoint=simp(weyl.subs({r:1,th:s.Rational(1,3)}))
    passed=(weylpoint!=0 and weylpoint.is_zero is False)
    checks.append({'label':name+'_nonzero_linear_Weyl','passed':passed,'value':str(weylpoint),'component':str((aa,bb,kk,ll))})
    print(name,'Weyl',weyl,'value',weylpoint,'nonzero',passed,flush=True)

    if name=='S20':check(name+'_TT_divergence',div)
    hij,dK,dP=wall_response(h,w)
    dKdirect=s.Matrix(3,3,lambda a,b:
        -s.sqrt(f)*h[1,1]*Gamma[1][wall[a]][wall[b]]/2-dg[1][wall[a]][wall[b]]/s.sqrt(f))
    check(name+'_ADM_vs_direct_connection_K',dK-dKdirect)
    # Intrinsic momentum constraint, for the weight-one response Pi^{ij}.
    def bd(e,i):return -s.I*w*e if i==0 else s.diff(e,x[wall[i]])
    intrdg=[[[simp(sum(gaminv[a,e]*(bd(hij[e,b],k)+bd(hij[e,k],b)-bd(hij[b,k],e)-sum(2*Gamma[wall[l]][wall[b]][wall[k]]*hij[e,l] for l in range(3)))for e in range(3))/2)for k in range(3)]for b in range(3)]for a in range(3)]
    ward=s.Matrix([simp(sum(bd(dP[i,j],i)+sum(Gamma[wall[j]][wall[i]][wall[k]]*dP[i,k]+intrdg[j][i][k]*P0[i,k]for k in range(3))for i in range(3)))for j in range(3)])
    check(name+'_linear_boundary_Ward',ward)
    # H_{partial_t}=-2 integral Pi^{tj} gamma_{jt}; all l=2 first-order charges vanish.
    dHdensity=-2*sum(dP[0,j]*gam[j,0]+P0[0,j]*hij[j,0]for j in range(3))
    check(name+'_integrated_first_order_charge',angint(dHdensity))
    check(name+'_background_source_pair',angint(sum(P0[a,b]*hij[a,b]for a in range(3)for b in range(3))))
    R=hij.applyfunc(s.re); I=hij.applyfunc(s.im)
    PR=dP.applyfunc(s.re); PI=dP.applyfunc(s.im)
    coscoef=angint(sum(PR[a,b]*R[a,b]for a in range(3)for b in range(3)))
    sincoef=angint(sum(PI[a,b]*I[a,b]for a in range(3)for b in range(3)))
    crosscoef=angint(sum(PR[a,b]*I[a,b]+PI[a,b]*R[a,b]for a in range(3)for b in range(3)))
    expressions[name]={'h':s.sstr(h),'dK':s.sstr(dK),'dPi':s.sstr(dP),'B_cos2':str(coscoef),'B_sin2':str(sincoef),'B_sincos':str(crosscoef),'divergence':s.sstr(div),'linear_Weyl_component':str(weyl)}
    print(name,'Bcos',coscoef,'Bsin',sincoef,'Bcross',crosscoef,'elapsed',time.time()-start,flush=True)
    check(name+'_parity_time_cross',crosscoef)
    check(name+'_single_mode_symplectic_flux',angint(sum(PR[a,b]*I[a,b]-PI[a,b]*R[a,b]for a in range(3)for b in range(3))))
    if name=='S20':
        expectcos=-s.pi*c*r*(9*r**4+r*r+4)/(5*f**4)
        expectsin=6*s.pi*c*r**3*(r*r-1)/(5*f**4)
    else:
        expectcos=128*s.pi*c*r**5/(3*f**4);expectsin=s.Integer(0)
    check(name+'_finite_radius_work_kernel',[coscoef-expectcos,sincoef-expectsin])
    # An independent exact inverse/determinant variation, at two wall points.
    ep=s.symbols('epsilon',real=True)
    for rval,muval in [(s.Integer(1),s.Rational(1,3)),(s.Integer(2),s.Rational(-1,2))]:
        at={r:rval,th:muval}
        gg=gam.subs(at)+ep*hij.subs(at)
        kk=K0.subs(at)+ep*dKdirect.subs(at)
        gi=gg.inv()
        pp=c*s.sqrt(-gg.det())*((gi*kk).trace()*gi-gi*kk*gi)
        exactder=pp.diff(ep).subs(ep,0)
        check(name+'_direct_Pi_derivative_R'+str(rval),exactder-dP.subs(at))
    expressions[name]['deltaH_density']=str(simp(dHdensity))

hS,kS,pS=wall_response(S,3);hV,kV,pV=wall_response(V,4)
check('S_V_response_cross_parity',[sum(pS[a,b]*hV[a,b]for a in range(3)for b in range(3)),sum(pV[a,b]*hS[a,b]for a in range(3)for b in range(3))])
out=Path(__file__).with_name('ads4_boundary_results.json')
out.write_text(json.dumps({'sympy':s.__version__,'passed':sum(z['passed'] for z in checks),'total':len(checks),'checks':checks,'expressions':expressions,'seconds':time.time()-start},ensure_ascii=False,indent=2)+'\n')
if not all(z['passed']for z in checks):raise SystemExit(1)
