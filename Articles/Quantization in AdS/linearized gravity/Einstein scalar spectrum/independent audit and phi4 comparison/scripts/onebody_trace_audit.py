#!/usr/bin/env python3
"""Independent finite-sum audit of Appendix B. No source reports are imported.
Run with the research-root .venv/bin/python -B. Uses only equations transcribed
from Appendix B and independent Jacobi/beta moments. Scope: scalar exchange;
Hartree cancellation is audited separately at source level. The excited kernels
use the proven thermal Ward reconstruction, NOT new OFPT constraint integrals.
"""
from pathlib import Path
import json, math, time
import sympy as s
import numpy as np
import mpmath as mp

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'results'/'onebody_trace_audit.json'
mp.mp.dps=60
ld=np.longdouble
D, u, t, x, A, B, v=s.symbols('d u t x A B v', positive=True)
h=D/2
ac=2*(s.cosh(t)-1); bc=2*s.sinh(t); cc=h*(1-h)
def thermal_action(f):
    return s.expand(ac*(s.diff(f,t,2)-2*u*s.diff(f,t)+(u*u+cc)*f)+bc*(s.diff(f,t)-u*f))
q1=thermal_action(s.Integer(1))
q2=thermal_action(q1)
Q=[s.Integer(1),1+q1/D,1+(2*D+1)*q1/(D*(D+1))+q2/(2*D*(D+1))]
Q=[s.Poly(s.expand(f),u) for f in Q]

def dop(f,z): return s.cancel(z*z*s.diff(f,z,2)+2*z*s.diff(f,z))
def ppoly(f,n,z,d):
    if n==0:return f
    df=dop(f,z)
    if n==1:return s.cancel(f+df/d)
    return s.cancel(f+(2*d+1)*df/(d*(d+1))+dop(df,z)/(2*d*(d+1)))
MODES=[(0,0),(1,0),(1,1),(2,1),(2,2)]
DS=[s.Rational(3,2),s.Integer(2),s.Rational(5,2),s.Integer(3)]
PATHS=[(1,1),(3,1)]
SCALES=[s.Rational(1,10),s.Rational(1,20),s.Rational(1,40),s.Rational(1,80)]
checks=[]
def check(name,res):
    res=s.simplify(res)
    checks.append({'name':name,'zero':res==0,'residual':str(res)})

# Exact independent radial beta integration, including CPS norm and mass shift.
def beta_integral(poly,aa,bb):
    poly=s.Poly(s.expand(poly),v)
    return s.simplify(sum(c*s.gamma(aa+k[0])*s.gamma(bb)/s.gamma(aa+bb+k[0]) for k,c in poly.terms()))
def radial_moment(d,p,q,nu):
    n=min(p,q); a=abs(p-q)
    norm=s.rf(d+n,a)/s.rf(n+1,a)
    jac=s.jacobi(n,d-1,a,1-2*v)
    return s.simplify(norm*beta_integral(jac*jac,d+(s.Rational(nu)-1)/2,a+1)/2)
def radial_poly(d,p,q):
    n=min(p,q); a=abs(p-q)
    return s.expand(s.rf(d+n,a)/s.rf(n+1,a)*v**d*(1-v)**a*s.jacobi(n,d-1,a,1-2*v)**2)
def Lindex(fun,p,q,which,d):
    k=(p,q)[which]
    pp=[p,q];pm=[p,q];pp[which]+=1;pm[which]-=1
    out=(k+1)*(d+k)*(fun(*pp)-fun(p,q))
    if k:out+=k*(d+k-1)*(fun(*pm)-fun(p,q))
    return out

pole_functions={}
for d in DS:
    for p,q in MODES:
        r=lambda pp,qq:radial_poly(d,pp,qq)
        check(f'pointwise_Casimir_d{d}_{p}_{q}',Lindex(r,p,q,0,d)-Lindex(r,p,q,1,d))
        w=d+p+q
        check(f'KG_norm_d{d}_{p}_{q}',2*w*radial_moment(d,p,q,1)-1)
        check(f'constant_mass_d{d}_{p}_{q}',radial_moment(d,p,q,-1)-1/(2*(d-1)))
        fl=ppoly(ppoly(1/(x*A+(1-x)*B),p,A,d),q,B,d)
        const=4*d*s.gamma(2*d-1)/s.gamma(d)**2
        cp=const*x**(d-1)*(1-x)**(d-1)*((d-1)-(2*d-1)*(2*x-1)**2)*fl
        iso=s.cancel(cp.subs({A:1,B:1})/(x**(d-1)*(1-x)**(d-1)))
        # polynomial beta integration in x, independently from radial Jacobi moments
        pol=s.Poly(s.expand(iso),x)
        beta=s.simplify(sum(c*s.gamma(d+k[0])*s.gamma(d)/s.gamma(2*d+k[0]) for k,c in pol.terms()))
        loc=s.simplify((4*d*(d-2)+2)*radial_moment(d,p,q,0)+2*radial_moment(d,p,q,2))
        check(f'pole_equals_local_d{d}_{p}_{q}',beta-loc)
        for aa,bb in PATHS:
            if aa==bb:val=mp.mpf(str(s.N(beta,65)))
            else:
                fun=s.lambdify(x,cp.subs({A:aa,B:bb}),'mpmath')
                val=mp.quad(fun,[0,mp.mpf('0.25'),mp.mpf('0.5'),mp.mpf('0.75'),1])
            pole_functions[(str(d),p,q,aa,bb)]=val

# Thermal coefficients evaluated at 70 digits, then converted to long double.
def qcoeff(d,n,tt):
    return [ld(str(s.N(Q[n].coeff_monomial(u**i).subs({D:d,t:tt}),70))) for i in range(2*n+1)]
def peval(c,z):
    res=np.zeros_like(z,dtype=ld)
    for a in c[::-1]:res=res*z+a
    return res

def shell_bound(d):
    d=mp.mpf(str(d));a=1+d/2
    # For every L>=2: sum_P |X_(P,L-P)| <= this constant.
    return 8*d/(2*d-1)*((d-1)*a**4+d*abs(d*d-d-1)*a*a/2+abs(d**3*(d-2)*(d+1))/16+(2*d-1)*(a*a+d*(d+1)/4))
def tail_bound(d,cL,cR,tt,N):
    # |Q_p| <= sum_i |c_i|(L+h)^i. For N>=deg/tt, each
    # exponential-polynomial term decreases; sum_{L>N} <= integral_N^infty.
    dd=mp.mpf(str(d));th=mp.mpf(str(tt));hh=dd/2
    coeff=np.convolve(np.abs(cL),np.abs(cR))
    out=mp.mpf('0')
    for j,c in enumerate(coeff):
        out+=mp.mpf(str(c))*mp.exp(th*hh)*mp.gammainc(j+1,th*(N+hh),mp.inf)/th**(j+1)
    return shell_bound(d)*out

results=[]
t0=time.time()
for d in DS:
    dd=ld(str(d.p))/ld(str(d.q)); hh=dd/2
    for aa,bb in PATHS:
        for eps in SCALES:
            tl=aa*eps;tr=bb*eps;tm=min(tl,tr)
            N=math.ceil(70/float(tm))
            cL=[qcoeff(d,n,tl) for n in range(3)]
            cR=[qcoeff(d,n,tr) for n in range(3)]
            # Positive Pochhammer weights from a forward recurrence, no gamma subtraction.
            b=np.empty(N+1,dtype=ld);b[0]=1
            for j in range(1,N+1):b[j]=b[j-1]*(dd+j-1)/j
            pp=np.arange(N+1,dtype=ld);zz=pp+hh
            vl=[peval(c,zz)*np.exp(-ld(str(s.N(tl,40)))*zz) for c in cL]
            vr=[peval(c,zz)*np.exp(-ld(str(s.N(tr,40)))*zz) for c in cR]
            # L=0 and L=1 are the actual center-regular rows.
            low0=-2*dd**2*(4*dd**2-5)/(4*dd**2-1)
            low1=4*dd**2/(4*dd**2-1)
            sums=np.array([low0*vl[p][0]*vr[q][0]+low1*(vl[p][1]*vr[q][0]+vl[p][0]*vr[q][1]) for p,q in MODES],dtype=ld)
            ratio=ld(1)
            for j in range(5):ratio/=2*dd-1+j
            for L in range(2,N+1):
                ps=pp[:L+1];a=2*ps-L;w=dd+L
                pd=(dd-1)*w**4-2*dd*(dd**2-dd-1)*w*w+dd**3*(dd-2)*(dd+1)-(2*dd-1)*a*a*(w*w+dd*(dd+1))
                xx=-4*dd*ratio*b[:L+1]*b[L::-1]*pd
                for k,(p,q) in enumerate(MODES):sums[k]+=np.sum(xx*vl[p][:L+1]*vr[q][L::-1],dtype=ld)
                ratio*=ld(L-1)/(L+2*dd+2)
            for k,(p,q) in enumerate(MODES):
                pole=pole_functions[(str(d),p,q,aa,bb)]
                sv=mp.mpf(str(sums[k]));ee=mp.mpf(str(s.N(eps,65)))
                residual=sv+pole/ee
                tail=tail_bound(d,cL[p],cR[q],s.N(tm,65),N)
                results.append({'Delta':str(d),'p':p,'q':q,'n':min(p,q),'j':p-q,'path':[aa,bb],'eps':str(eps),'max_shell':N,'summands':(N+1)*(N+2)//2,'exchange':str(sv),'pole_coefficient':str(pole),'subtracted':str(residual),'absolute_tail_bound':str(tail)})
            print(f'd={d} path={aa,bb} eps={eps} N={N} elapsed={time.time()-t0:.1f}',flush=True)

# This does not fit a constant: 2 R(eps/2)-R(eps) removes the leading O(eps)
# remainder. It is a convergence diagnostic, not a rigorous remainder bound.
summary=[]
for d in DS:
    for p,q in MODES:
        for path in PATHS:
            rows=[r for r in results if r['Delta']==str(d) and r['p']==p and r['q']==q and r['path']==list(path)]
            rr=[mp.mpf(r['subtracted']) for r in rows]
            extrap=[2*rr[i+1]-rr[i] for i in range(len(rr)-1)]
            summary.append({'Delta':str(d),'p':p,'q':q,'path':list(path),'residuals':[str(z) for z in rr],'linear_cancelled':[str(z) for z in extrap]})
report={'scope':'Independent finite sums of B.15 with B.13 thermal transfer. Not independent excited OFPT constraint integrations; no supplied output imports. Two strict-cone regulator paths, not two covariant schemes.','assumptions':['radius 1; signature -++; kappa^2=16*pi*G','Delta>1 fast source-free scalar; regular center; Brown-Henneaux fixed clock','Weyl scalar trace normalization B.9; fixed external labels','Hartree subtracted before constraint inversion; identical external leg regulator','tail bounds are rigorous analytic inequalities evaluated at high precision; floating roundoff is not interval-certified'], 'exact_checks':checks,'exact_check_count':len(checks),'exact_all_passed':all(c['zero'] for c in checks),'finite_trace_evaluations':len(results),'unique_grid_evaluations':len(DS)*len(PATHS)*len(SCALES),'longdouble_epsilon':str(np.finfo(ld).eps),'thermal_polynomials':[str(f.as_expr()) for f in Q],'results':results,'convergence':summary,'elapsed_seconds':time.time()-t0}
OUT.write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n')
print(json.dumps({'output':str(OUT),'exact_checks':len(checks),'passed':report['exact_all_passed'],'trace_evaluations':len(results),'max_tail':str(max(mp.mpf(r['absolute_tail_bound']) for r in results)),'max_last_linear_cancelled':str(max(abs(mp.mpf(z['linear_cancelled'][-1])) for z in summary))},indent=2))
assert report['exact_all_passed']
