#!/usr/bin/env python3
"""Independent finite-switch source Ward and Euclidean kernel checks.

This script evaluates fresh SymPy residuals and mpmath quadratures.
It does not replay any historical Wolfram output.
"""
import json, sys
from pathlib import Path
import sympy as s
import mpmath as mp

out = {"exact": {}, "numerical": {}}
def ck(name, expr):
    val = s.simplify(s.expand(expr))
    if val != 0:
        raise AssertionError((name, val))
    out["exact"][name] = str(val)

A, B = s.symbols("A B", positive=True)
# Angular average of 1/(A-B cos theta)^2 follows by differentiating
# the exact elementary first-power average.
ck("angular_position_kernel",
   -s.diff((A*A-B*B)**(-s.Rational(1,2)), A)
   -A*(A*A-B*B)**(-s.Rational(3,2)))

u,a,r,q,c = s.symbols("u a r q c", positive=True)
ck("K0_Fourier_at_origin",
   s.integrate(q**3*s.besselk(0,u*q),(q,0,s.oo))/(8*s.pi**2)
   -1/(2*s.pi**2*u**4))
disc_margin = s.Rational(16,25)*(u*u+a*a)**2-4*u*u*a*a
ck("IR_discriminant_uniform_margin",
   disc_margin-s.Rational(4,25)*(4*u*u-a*a)*(u*u-4*a*a))

# The radial PBH adjoint is checked on a nonconstant, decaying source/test pair.
jrad=s.exp(-2*a)
Urad=a*a*s.exp(-3*a)
ck("radial_PBH_source_adjoint",
   s.integrate(Urad*(jrad-a*s.diff(jrad,a)),(a,0,s.oo))
   -s.integrate(jrad*(2*Urad+a*s.diff(Urad,a)),(a,0,s.oo)))
b,ell=s.symbols("b ell",positive=True)
for name,ct in [("a_larger",2*s.pi**2*s.log(a/ell)),
                ("b_larger",2*s.pi**2*s.log(b/ell))]:
    ck("finite_layer_radial_anomaly_"+name,
       a*s.diff(ct,a)+b*s.diff(ct,b)-2*s.pi**2)

# Local PBH-gradient variation differs from sigma times the asserted
# anomaly only by this explicit total derivative.
x=s.symbols("X",real=True)
ja,jb,sigma=[s.Function(z)(x) for z in ["ja","jb","sigma"]]
ct=s.symbols("c_ab",real=True)
dgrad=ct/2*(a*a*jb*s.diff(ja*s.diff(sigma,x),x)
           +b*b*ja*s.diff(jb*s.diff(sigma,x),x))
anom=ct/2*s.diff(a*a*ja*s.diff(jb,x)+b*b*jb*s.diff(ja,x),x)
flux=ct/2*((a*a+b*b)*ja*jb*s.diff(sigma,x)
           -sigma*(a*a*ja*s.diff(jb,x)+b*b*jb*s.diff(ja,x)))
ck("finite_layer_gradient_anomaly",dgrad-sigma*anom-s.diff(flux,x))

# Combined source and switch adjoints (one arbitrary boundary component).
F,w,ss=[s.Function(z)(x) for z in ["F","w","sig"]]
ck("switch_gradient_PBH_adjoint",
   F*s.diff(w,x)*s.diff(ss,x)/2
   +ss*s.diff(F*s.diff(w,x),x)/2
   -s.diff(ss*F*s.diff(w,x)/2,x))
J,U,v=[s.Function(z)(x) for z in ["J","U","v"]]
ck("source_diffeomorphism_adjoint",
   U*s.diff(v*J,x)+v*J*s.diff(U,x)-s.diff(U*v*J,x))

# The full physical-source PBH primitive, including off-shell layer forces.
Zuu=s.Function("Tuu")(u)
Pui=s.Function("div_Tui")(u)
Jbulk=s.Function("Jbulk")(u)
phij=s.Function("phi")(u)
Dsrc=s.Function("div_J_grad_phi")(u)
Ttr=-u*s.diff(Zuu,u)+2*Zuu-u*Pui-Jbulk*s.diff(phij,u)/u
ddT=-s.diff(Pui,u)+3*Pui/u-Dsrc/u**2
Qprim=Zuu/u**2+Pui/(2*u)
ck("physical_source_PBH_primitive",
   Ttr/u**3+ddT/(2*u)+s.diff(Qprim,u)
   +Jbulk*s.diff(phij,u)/u**4+Dsrc/(2*u**3))
Aj=s.symbols("normalization",positive=True)
Urel=Aj*phij/u**2
ck("physical_source_radial_contact",
   Aj*s.diff(phij,u)/u-(2*Urel+u*s.diff(Urel,u)))
wj=s.Function("w")(x)
Fj=s.Function("source_gradient")(x)
ck("physical_source_gradient_product",
   -wj*s.diff(Fj,x)/2
   -(-s.diff(wj*Fj,x)/2+s.diff(wj,x)*Fj/2))

# Metric-source splitting and its endpoint force.
th,tbar,ch,jj=s.symbols("tr_h tr_bar_h chi j_squared")
Wct=ct*jj*(1-tbar/2-ch*(th-tbar)/2)/2
ck("ct_switch_force",s.diff(Wct,ch)+ct*jj*(th-tbar)/4)
ck("ct_physical_plus_anchor",
   s.diff(Wct,th)+s.diff(Wct,tbar)+ct*jj/4)

# Four local two-derivative counterterms under infinitesimal Weyl rescaling.
e,sg,J0,dJ,dw,R,boxw,ds,d2s=s.symbols(
    "epsilon sigma J dJ dw R box_w d_sigma box_sigma",real=True)
vol=s.exp(4*e*sg)
Jweyl=J0*s.exp(-2*e*sg)
sc=s.exp(-2*e*sg)
Rweyl=sc*(R-6*e*d2s)
boxw_weyl=sc*(boxw+2*e*ds*dw)
gradJweyl=s.exp(-2*e*sg)*(dJ-2*e*J0*ds)
def var(expr):
    return s.diff(expr,e).subs(e,0)
ck("finite_ct_R_Weyl",
   var(vol*Jweyl**2*Rweyl)-J0**2*(-2*sg*R-6*d2s))
ck("finite_ct_gradchi_Weyl",
   var(vol*Jweyl**2*sc*dw**2)+2*sg*J0**2*dw**2)
ck("finite_ct_boxchi_Weyl",
   var(vol*Jweyl**2*boxw_weyl)
   -J0**2*(-2*sg*boxw+2*ds*dw))
ck("finite_ct_gradJ_Weyl",
   var(vol*sc*gradJweyl**2)-(-2*sg*dJ**2-4*J0*dJ*ds))
ck("finite_ct_nonderivative_invariance",var(vol*Jweyl**2))

# UV cancellation needed for absolute radial control.
V,Z=s.symbols("V Z",real=True)
ph=u*u*V+u**4*Z
ck("BF_stress_UV_cancel",
   s.expand(s.diff(ph,u)**2-4*ph**2/u**2)
   -(8*u**4*V*Z+12*u**6*Z**2))
RR=s.symbols("R_cut",positive=True)
tail=s.integrate(u**(-3)*(u/RR)**4,(u,1,RR))
tail+=s.integrate(u**(-3),(u,RR,s.oo))
ck("Euclidean_joint_IR_bound",tail-(RR**(-2)-s.Rational(1,2)*RR**(-4)))

# Hankel I3 corner by an independent Gaussian mass pairing.
aa,bb,ee=s.symbols("A B epsilon",positive=True)
rad=s.integrate(u**3*s.exp(-(ee+1/(4*aa)+1/(4*bb))*u*u),(u,0,s.oo))/(aa*bb)
ck("Gaussian_Hankel_I3_limit",
   s.limit(rad,ee,0,dir="+")-8*aa*bb/(aa+bb)**2)
ck("Gaussian_Hankel_equal_mass_corner",
   (8*aa*bb/(aa+bb)**2).subs(bb,aa)-2)

mp.mp.dps=50
def ncheck(name,left,right,tol=mp.mpf("1e-35")):
    le,ri=mp.mpf(left),mp.mpf(right)
    err=abs(le-ri)
    if err>tol*max(1,abs(ri)):
        raise AssertionError((name,le,ri,err))
    out["numerical"][name]={"left":str(le),"right":str(ri),"abs_error":str(err)}

for n,(uu,zz,qq) in enumerate([
        ("1.7","0.4","0.9"),("0.6","1.1","1.3"),("1.0","1.0","0.8")]):
    uu,zz,qq=map(mp.mpf,(uu,zz,qq))
    # Integrable logarithmic angular singularity at coincident radii.
    def distance(t):
        return mp.sqrt((uu-zz)**2+4*uu*zz*mp.sin(t/2)**2)
    ang=mp.quad(lambda t:mp.besselk(0,qq*distance(t)),[0,mp.pi,2*mp.pi])/(2*mp.pi)
    ref=mp.besseli(0,qq*min(uu,zz))*mp.besselk(0,qq*max(uu,zz))
    ncheck("Bessel_addition_"+str(n),ang,ref,mp.mpf("1e-30"))

for n,(uu,zz,rr) in enumerate([
        ("1.7","0.4","0.8"),("0.6","1.1","0.5"),("1.0","1.0","0.3")]):
    uu,zz,rr=map(mp.mpf,(uu,zz,rr))
    av=rr*rr+uu*uu+zz*zz
    bv=2*uu*zz
    ang=mp.quad(lambda t:(av-bv*mp.cos(t))**(-2),[0,mp.pi,2*mp.pi])/(2*mp.pi)
    ref=av/(av*av-bv*bv)**mp.mpf("1.5")
    ncheck("position_angular_kernel_"+str(n),ang,ref)

# Fourier-space vs coordinate-space Gaussian source smearing of F19.
uu,zz,cc=mp.mpf("1.7"),mp.mpf("0.6"),mp.mpf("0.8")
fq=mp.quad(lambda qq:qq**3*mp.exp(-cc*qq*qq)*
           mp.besseli(0,zz*qq)*mp.besselk(0,uu*qq),[0,1,mp.inf])/(8*mp.pi**2)
def coord(r):
    a0=r*r+uu*uu+zz*zz
    return r**3*mp.exp(-r*r/(4*cc))*a0/(a0*a0-4*uu*uu*zz*zz)**mp.mpf("1.5")
fx=mp.quad(coord,[0,1,mp.inf])/(16*mp.pi**2*cc**2)
ncheck("Gaussian_position_Fourier_independent_pairing",fq,fx)

# Actual radial heat-regulated quadratures; the equal-mass limit is the
# corner coefficient 2, since the interior delta'' contribution is zero.
for eps in [mp.mpf("0.1"),mp.mpf("0.02"),mp.mpf("0.005")]:
    got=mp.quad(lambda uu:uu**3*mp.exp(-(eps+mp.mpf("0.5"))*uu*uu),[0,1,mp.inf])
    want=2/(1+2*eps)**2
    ncheck("I3_heat_pair_eps_"+str(eps),got,want)

out["status"]="all independent exact residuals and numerical quadratures passed"
out["exact_zero_count"]=len(out["exact"])
out["numerical_count"]=len(out["numerical"])
out["sympy_version"]=s.__version__
out["mpmath_version"]=mp.__version__
out["numerical_dps"]=mp.mp.dps
out["scope"]="One metric source and two BF scalar sources; no all-order claim."
out["historical_wolfram_outputs_executed"]=False
dest=Path(__file__).with_name("ward_source_results.json")
dest.write_text(json.dumps(out,ensure_ascii=False,indent=2)+"\n")
print(json.dumps(out,ensure_ascii=False,indent=2))
