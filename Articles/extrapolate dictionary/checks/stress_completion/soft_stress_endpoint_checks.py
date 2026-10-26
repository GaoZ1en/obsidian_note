#!/usr/bin/env python3
"""Independent exact and numerical checks of the soft-stress endpoint proof."""
import json
import sys
from pathlib import Path
import sympy as s
import numpy as np

res = {}
def check(name, value):
    value = s.simplify(value)
    assert value == 0, (name, value)
    res[name] = str(value)

# Lightfront order (+,-,1,2), s(k)=k+ k- - |k_perp|^2.
eta = s.Matrix([[0,-s.Rational(1,2),0,0],
                [-s.Rational(1,2),0,0,0],[0,0,1,0],[0,0,0,1]])
etai = eta.inv()
A,H,B,y,om,op,b1,b2,w1,w2 = s.symbols(
    "A H B y om op b1 b2 w1 w2", real=True)
p = s.Matrix([A,H,w1,w2])
q = s.Matrix([B,y/B,0,0])
O = s.Matrix([op,om,b1,b2])
r = q-p+O
dot = lambda v,z:(v.T*eta*z)[0]
mass = lambda v:-dot(v,v)
x = mass(p)
t = mass(r)
check("soft_input_mass", x-(A*H-w1*w1-w2*w2))
check("hard_input_mass", mass(q)-y)
tt = (B-A+op)*(y/B-H+om)-((-w1+b1)**2+(-w2+b2)**2)
check("exact_transfer_mass", t-tt)
check("mass_injection_jacobian", s.diff(t,om)-(B-A+op))
t0 = t.subs({op:0,om:0,b1:0,b2:0})
check("stationary_mass_relation",t0-((1-A/B)*y-B*H+x))
lam = (x-y-t0)**2-4*y*t0
check("stationary_gram_gap_identity",
      lam-((B*H-A*y/B)**2+4*y*(w1*w1+w2*w2)))

def numerator(pp,qq,vv):
    xx=mass(pp)
    cq=-dot(pp,qq); cv=-dot(pp,vv)
    pl=eta*pp
    uq=xx*(eta*qq)-cq*pl
    uv=xx*(eta*vv)-cv*pl
    delta=cq*cv+xx*dot(qq,vv)
    return (uq*uv.T+uv*uq.T)/2-delta*(xx*eta+pl*pl.T)/3
N=numerator(p,q,q+O)
Nr=numerator(p,q,r)
for i in range(4):
    for j in range(4):
        check(f"projected_transfer_equivalence_{i}{j}",N[i,j]-Nr[i,j])
for j in range(4):
    check(f"transverse_{j}",(p.T*N)[j])
check("trace",s.trace(etai*N))

# The genuine soft core: eps=e^2 and A=a^2 remove square roots.
e,a,h,Y,V1,V2,zp,zm,z1,z2=s.symbols(
    "e a h Y V1 V2 zp zm z1 z2",real=True)
pc=s.Matrix([a*a,e*e*h,e*a*V1,e*a*V2])
qc=s.Matrix([B,e*e*Y/B,0,0])
Oc=e*e*s.Matrix([zp,zm,z1,z2])
Nc=numerator(pc,qc,qc+Oc)
degrees={}
for i in range(4):
    for j in range(i,4):
        poly=s.Poly(s.expand(12*B*B*Nc[i,j]),e,a)
        mons=poly.monoms()
        emin=min(m[0] for m in mons) if mons else 100
        total=min(sum(m) for m in mons) if mons else 100
        assert emin>=4 and total>=8,(i,j,emin,total)
        degrees[f"{i}{j}"]={"minimum_e_power":emin,
                           "minimum_total_a_e_power":total}
        res[f"core_weighted_divisibility_{i}{j}"]="0"
check("core_nonnegative_parameter",
      mass(pc)/e**2-a*a*(h-V1**2-V2**2))

eps,AA,hh,vv1,vv2,YY,WW=s.symbols(
    "eps AA hh vv1 vv2 YY WW",positive=True)
coords=s.Matrix([eps*hh,s.sqrt(AA*eps)*vv1,
                 s.sqrt(AA*eps)*vv2,eps*YY,eps*WW])
jac=coords.jacobian([hh,vv1,vv2,YY,WW]).det()
check("core_five_coordinate_measure",jac-AA*eps**4)

# A six-test-derivative radial majorant, with no derivatives in cone parameters.
yy,uu=s.symbols("yy uu",positive=True)
f=s.Function("f")(yy)
D=lambda g:s.diff(yy*s.diff(g,yy),yy)
D3=D(D(D(f)))
check("mass_radial_operator_cube",
      D3-(yy**3*s.diff(f,yy,6)+9*yy**2*s.diff(f,yy,5)
          +18*yy*s.diff(f,yy,4)+6*s.diff(f,yy,3)))
J=s.besselj(0,uu*s.sqrt(yy))
check("mass_bessel_eigenvalue",s.besselsimp(D(J)+uu**2*J/4))
xx=s.symbols("xx",positive=True)
JJ=s.besselj(0,uu*s.sqrt(xx))
check("raised_free_mode",s.besselsimp(
    s.diff(JJ,xx,2)-uu**2*s.besselj(2,uu*s.sqrt(xx))/(4*xx)))
check("large_radial_power",1+4-6-s.Rational(1,2)+s.Rational(3,2))

# The exact scalar derivative used after the canonical radial limit.
xx,yt,ttt=s.symbols("xx yt ttt",real=True)
ll=(xx-yt-ttt)**2-4*yt*ttt
check("second_mass_derivative",
      s.diff(-ll**(-s.Rational(1,2)),xx,2)
      -(ll-3*(xx-yt-ttt)**2)/ll**s.Rational(5,2))
check("core_epsilon_exponent",4-3+2-1-2)
check("far_profile_exponent",2+3-3+2+6-10)

# Samples cover A=small relative to H and H=small relative to A. Analytic
# estimates in the note, rather than these samples, prove uniformity.
en=np.array(eta.tolist(),dtype=float)
def nn(pp,qq,vv):
    xx=-pp@en@pp
    cq=-pp@en@qq; cv=-pp@en@vv
    pl=en@pp
    uq=xx*(en@qq)-cq*pl
    uv=xx*(en@vv)-cv*pl
    delta=cq*cv+xx*(qq@en@vv)
    return (np.outer(uq,uv)+np.outer(uv,uq))/2-delta*(xx*en+np.outer(pl,pl))/3
rng=np.random.default_rng(20261026)
near_max=far_max=0.0
gap_min=1e100
for _ in range(2000):
    av=10**rng.uniform(-9,-1.4)
    hv=10**rng.uniform(-9,-1.4)
    bv=rng.uniform(1,2)
    v=rng.normal(size=2); v*=rng.uniform(0,1)/max(np.linalg.norm(v),1e-12)
    w=np.sqrt(av*hv)*v
    xv=av*hv-w@w
    ym=(bv*hv-xv)/(1-av/bv)
    yv=rng.uniform(0,1)*ym
    pp=np.array([av,hv,*w]); qq=np.array([bv,yv/bv,0,0])
    oo=rng.normal(size=4); oo*=.01*hv/max(np.linalg.norm(oo),1e-12)
    near_max=max(near_max,np.max(np.abs(nn(pp,qq,qq+oo)))/((av+hv)**2*hv**2))
    l0=(bv*hv-av*yv/bv)**2+4*yv*(w@w)
    gap_min=min(gap_min,l0/(bv*bv*hv*hv))
    tau=10**rng.uniform(np.log10(hv),-1.0)
    oo=rng.normal(size=4);oo*=tau/max(np.linalg.norm(oo),1e-12)
    yv=tau*rng.uniform(-2,2);qq=np.array([bv,yv/bv,0,0])
    far_max=max(far_max,np.max(np.abs(nn(pp,qq,qq+oo)))/((av+hv)**2*(hv+av*tau)**2))

out={"status":"all exact residuals passed",
     "sympy_version":s.__version__,"exact_zero_count":len(res),
     "residuals":res,"core_polynomial_degrees":degrees,
     "numerical_samples":2000,
     "maximum_near_tensor_ratio":near_max,
     "maximum_far_tensor_ratio":far_max,
     "minimum_stationary_gap_ratio":gap_min,
     "scope":"Exact algebra and representative numerical bounds; analytic proof is in soft_stress_endpoint.md."}
Path(__file__).with_name("soft_stress_endpoint_results.json").write_text(json.dumps(out,indent=2)+"\n")
print(json.dumps(out,indent=2))
