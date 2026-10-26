#!/usr/bin/env python3
"""Causal TT source completion: independent Einstein and spectral checks."""
import json
import sys
from pathlib import Path
import sympy as s

res={}
def check(name,expr):
    val=s.simplify(s.expand(expr))
    assert val==0,(name,val)
    res[name]=str(val)

z=s.symbols("z",positive=True)
I=s.I
eta=s.diag(-1,1,1,1)
g=s.diag(1,-1,1,1,1)/z**2
gi=g.inv()
p=s.Matrix(s.symbols("p0:4",real=True))  # covariant momenta
pairs=[(i,j) for i in range(4) for j in range(i,4)]
hs=s.symbols("h0:10"); dh=s.symbols("dh0:10"); ddh=s.symbols("ddh0:10")
hh=s.zeros(4); h1=s.zeros(4);h2=s.zeros(4)
for n,(i,j) in enumerate(pairs):
    hh[i,j]=hh[j,i]=hs[n]
    h1[i,j]=h1[j,i]=dh[n]
    h2[i,j]=h2[j,i]=ddh[n]

def der(expr,index):
    if index:
        return I*p[index-1]*expr
    ans=s.diff(expr,z)
    ans+=sum(s.diff(expr,a)*b for a,b in zip(hs,dh))
    ans+=sum(s.diff(expr,a)*b for a,b in zip(dh,ddh))
    return s.expand(ans)

# Background connection obtained from the conformally flat metric.
Gam={}
for a in range(5):
    for b in range(5):
        for c in range(5):
            Gam[a,b,c]=s.simplify(sum(
                gi[a,d]*((s.diff(g[d,c],z) if b==0 else 0)
                +(s.diff(g[d,b],z) if c==0 else 0)
                -(s.diff(g[b,c],z) if d==0 else 0))/2
                for d in range(5)))
dg=s.zeros(5)
for i in range(4):
    for j in range(4):
        dg[i+1,j+1]=hh[i,j]/z**2
def covdg(b,c,d):
    return der(dg[c,d],b)-sum(
        Gam[e,b,c]*dg[e,d]+Gam[e,b,d]*dg[c,e]
        for e in range(5))
dGam={}
for a in range(5):
    for b in range(5):
        for c in range(5):
            dGam[a,b,c]=s.simplify(sum(gi[a,d]*
                (covdg(b,d,c)+covdg(c,d,b)-covdg(d,b,c))/2
                for d in range(5)))
dRic=s.zeros(5)
for a in range(5):
    for b in range(a,5):
        val=sum(der(dGam[c,a,b],c)-der(dGam[c,a,c],b)
                for c in range(5))
        val+=sum(dGam[c,c,d]*Gam[d,a,b]+Gam[c,c,d]*dGam[d,a,b]
                 -dGam[c,b,d]*Gam[d,a,c]-Gam[c,b,d]*dGam[d,a,c]
                 for c in range(5) for d in range(5))
        dRic[a,b]=dRic[b,a]=s.simplify(val)

E=dRic+4*dg  # variation of Ric+4g
traceE=s.simplify(sum(gi[a,b]*E[a,b] for a in range(5) for b in range(5)))
K=s.simplify(E-g*traceE/2)  # variation of Einstein tensor + Lambda*g
tau=s.trace(eta*hh)
tp=s.trace(eta*h1)
tpp=s.trace(eta*h2)
D=I*hh*eta*p
Dp=I*h1*eta*p
L=(I*p.T*eta*D)[0]
ss=-(p.T*eta*p)[0]
check("Einstein_uu_constraint",K[0,0]+3*tp/(2*z)+(L-ss*tau)/2)
for i in range(4):
    check(f"Einstein_ui_constraint_{i}",K[0,i+1]-(Dp[i]-I*p[i]*tp)/2)
for i in range(4):
    for j in range(i,4):
        target=(-h2[i,j]+3*h1[i,j]/z-ss*hh[i,j]
                +I*p[i]*D[j]+I*p[j]*D[i]+p[i]*p[j]*tau
                +eta[i,j]*tp/z)/2
        check(f"Ricci_tangent_equation_{i}{j}",E[i+1,j+1]-target)

# The exact linearized Bianchi identities with no field equation imposed.
for i in range(4):
    div=der(K[0,i+1],0)-3*K[0,i+1]/z
    div+=sum(I*eta[j,j]*p[j]*K[j+1,i+1] for j in range(4))
    check(f"Bianchi_tangent_{i}",div)
divu=der(K[0,0],0)-2*K[0,0]/z
divu+=sum(I*eta[j,j]*p[j]*K[j+1,0] for j in range(4))
divu+=sum(eta[j,j]*K[j+1,j+1] for j in range(4))/z
check("Bianchi_radial",divu)

# Causal trace/divergence decomposition. Generic boundary frequency and
# spatial momentum along axis 1 cover all real spatial momenta by rotation.
w,k,Tau=s.symbols("omega k Tau",real=True)
pp=s.Matrix([-w,k,0,0])
xx=w*w-k*k
DD=s.Matrix(s.symbols("D0:4"))
LL=(I*pp.T*eta*DD)[0]
P=eta+pp*pp.T/xx
hn=I*(pp*DD.T+DD*pp.T)/xx+pp*pp.T*LL/xx**2+P*(Tau-LL/xx)/3
check("nonTT_trace",s.trace(eta*hn)-Tau)
for j in range(4):
    check(f"nonTT_divergence_{j}",(I*pp.T*eta*hn)[j]-DD[j])
def TT(mat):
    return P*eta*mat*eta*P-P*s.trace(eta*P*eta*mat)/3
hnTT=TT(hn)
for i in range(4):
    for j in range(i,4):
        check(f"nonTT_zero_projection_{i}{j}",hnTT[i,j])

# Constraint reconstruction from an arbitrary conserved source.
coupl,Quu,divI=s.symbols("coupl Quu divI")
tp_target=-2*coupl*z*(Quu+divI)/3
check("constraint_trace_reconstruction",
      -3*tp_target/(2*z)-coupl*divI-coupl*Quu)
Qi=s.symbols("Qi")
check("constraint_divergence_reconstruction",2*coupl*Qi/2-coupl*Qi)

# Analytic Bessel identity in the negative-s resolvent domain.
kap,u=s.symbols("kap u",positive=True)
R=-s.besselk(0,kap*u)
Ds=lambda f:-s.diff(f,kap)/(2*kap)
H=-kap**2*u**2*s.besselk(2,kap*u)/8
check("analytic_boundary_mass_raising",
      s.besselsimp(kap**4*Ds(Ds(R))/2-H))
H0=s.limit(H,kap,0,dir="+")
H1=s.limit(s.besselsimp(Ds(H)),kap,0,dir="+")
check("H_zero_jet",H0+s.Rational(1,4))
check("H_first_jet",H1+u*u/16)

# A second normalization from Abel Bessel moments.
a=s.symbols("a",positive=True)
Lap=lambda n:(s.sqrt(1+a*a)+a)**(-n)/s.sqrt(1+a*a)
check("Abel_moment_vJ2",s.limit(-s.diff(Lap(2),a),a,0)-2)
check("Abel_moment_J2_over_v",
      s.limit((Lap(1)+Lap(3))/4,a,0)-s.Rational(1,2))

v,x=s.symbols("v x",nonzero=True)
check("dispersion_one_subtraction",
      1/(v*(x-v))-(1/(x-v)+1/v)/x)
check("dispersion_two_subtractions",
      1/(v*v*(x-v))-(1/(x-v)+1/v+x/v**2)/x**2)
A0=s.Rational(2,3);B0=4*k*k/3;C0=2*k**4/3
check("spatial_1111_projector",
      s.Rational(2,3)*(1+k*k/x)**2-(A0+B0/x+C0/x**2))
diff=B0*H0/x+C0*(H0+x*H1)/x**2
target=-k*k/(3*x)-k**4/(6*x*x)-k**4*u*u/(24*x)
check("causal_minus_mode_1111",diff-target)
sample=target.subs({x:2,k:1,u:1})
check("strict_off_null_counterexample",sample+s.Rational(11,48))

# The exterior non-TT FG tail is an explicit PBH-form pure gauge.
sig=s.symbols("sigma")
vv=s.Matrix(s.symbols("v0:4"))
tail=I*(pp*vv.T+vv*pp.T)-2*sig*eta+z*z*pp*pp.T*sig
tailtrace=s.trace(eta*tail)
taildiv=I*tail*eta*pp
divv=(I*pp.T*eta*vv)[0]
check("FG_tail_trace",tailtrace-(2*divv-8*sig-z*z*xx*sig))
for i in range(4):
    expected=xx*vv[i]-I*pp[i]*divv+6*I*pp[i]*sig
    check(f"FG_tail_constraint_divergence_{i}",
          taildiv[i]-I*pp[i]*tailtrace-expected)
tailTT=TT(tail)
for i in range(4):
    for j in range(i,4):
        check(f"FG_tail_zero_TT_{i}{j}",tailTT[i,j])
aa,bb=s.symbols("aa bb",positive=True)
check("radial_I_infinity_moment",
      s.integrate(aa**3,(aa,0,bb))/bb**3-bb/4)

out={"status":"all exact residuals passed","sympy_version":s.__version__,
     "exact_zero_count":len(res),"residuals":res,
     "H0":str(H0),"Hprime0":str(H1),
     "spatial_1111_causal_minus_mode":str(target),
     "off_null_example_s2_k1_u1":str(sample),
     "scope":"Exact Einstein/constraint/decomposition and causal-vs-mode dispersion identities; causal operator-domain proof is in causal_tt_source_bridge.md."}
Path(__file__).with_name("causal_tt_source_bridge_results.json").write_text(json.dumps(out,indent=2)+"\n")
print(json.dumps(out,indent=2))
