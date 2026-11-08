"""Checks for the global finite-radius transfer theorem.

New work, not part of the frozen audit evidence.
Run: PYTHONPATH=/tmp/extrapolate_audit_deps python research/global/global_transfer_checks.py
"""
import sys
import json
from pathlib import Path
import numpy as np
import sympy as S
from scipy.integrate import quad
from scipy.special import jv, yv, iv, i0e, k0e

out = {"scope": "Riemann-kernel representation, positive resolvent, finite-switch spacelike cancellation"}
z,u,t,lam=S.symbols("z u t lam",positive=True)
A=z*z+u*u-2*z*u*S.cosh(t)
coefficient_2=S.simplify(S.diff(A,z)**2-S.diff(A,t)**2/z**2-4*A)
coefficient_1=S.simplify(S.diff(A,z,2)+S.diff(A,z)/z-S.diff(A,t,2)/z**2-4)
T=S.log(z/u)
endpoint=S.simplify((S.diff(A,t)/z**2+S.diff(A,z)/z).subs(t,T).rewrite(S.exp))
out["Riemann_kernel_exact"]={
    "f_second_derivative_coefficient":str(coefficient_2),
    "f_first_derivative_coefficient":str(coefficient_1),
    "moving_endpoint_residual":str(endpoint),
    "diagonal_jump":1,
}
def K_bessel(z,u,s):
    if s==0:return u*np.log(z/u)
    if s>0:
        a=np.sqrt(s)
        return np.pi*u/2*(jv(0,a*u)*yv(0,a*z)-yv(0,a*u)*jv(0,a*z))
    a=np.sqrt(-s)
    # These samples have moderate a*z.
    from scipy.special import kv
    return u*(iv(0,a*z)*kv(0,a*u)-kv(0,a*z)*iv(0,a*u))
def K_riemann(z,u,s):
    def integrand(t):
        a2=max(0,z*z+u*u-2*z*u*np.cosh(t))
        return jv(0,np.sqrt(s*a2)) if s>=0 else iv(0,np.sqrt(-s*a2))
    ans,err=quad(integrand,0,np.log(z/u),epsabs=2e-13,epsrel=2e-13)
    return u*ans,u*err
kernel_samples=[]
for zz,uu,ss in [(2,.3,4),(1,.2,.01),(3,2,10),(1,.1,-2),
                 (.8,.001,100),(4,.4,0),(2,1.9,50),(1,.7,-1)]:
    ri,err=K_riemann(zz,uu,ss);be=K_bessel(zz,uu,ss)
    kernel_samples.append(dict(z=zz,u=uu,s=ss,riemann=ri,bessel=be,
        residual=ri-be,quadrature_error=err,
        bound_ratio=abs(ri)/(uu*np.log(zz/uu)*np.exp(np.sqrt(max(0,-ss))*zz))))
out["Riemann_kernel_numerics"]=kernel_samples

poly=z**4/lam+16*z*z/lam**2+64/lam**3
radial=lambda f:S.diff(f,z,2)+S.diff(f,z)/z
out["positive_resolvent_exact"]={
    "radial_equation_residual":str(S.simplify(-radial(poly)+lam*poly-z**4)),
    "heat_semigroup_polynomial":str(z**4+16*t*z*z+32*t*t),
    "heat_equation_residual":str(S.simplify(S.diff(z**4+16*t*z*z+32*t*t,t)-radial(z**4+16*t*z*z+32*t*t))),
    "complete_monotone_derivatives":[str(S.simplify((-1)**m*S.diff(poly,lam,m)-
        (S.factorial(m)*z**4/lam**(m+1)+16*S.factorial(m+1)*z*z/lam**(m+2)+
         32*S.factorial(m+2)/lam**(m+3)))) for m in range(6)],
    "high_spacelike_constants":[int(S.factorial(m)+16*S.factorial(m+1)+32*S.factorial(m+2)) for m in range(6)],
}
def Gpos(k,z,u):
    return np.exp(-k*abs(z-u))*i0e(k*min(z,u))*k0e(k*max(z,u))
majorant=[]
for zz,k in [(.4,.5),(1,1),(1,3),(.5,12),(2,10)]:
    a,e1=quad(lambda v:v**5*Gpos(k,zz,v),0,zz,epsabs=1e-11,epsrel=2e-12)
    b,e2=quad(lambda v:v**5*Gpos(k,zz,v),zz,np.inf,epsabs=1e-11,epsrel=2e-12)
    pred=zz**4/k**2+16*zz**2/k**4+64/k**6
    majorant.append(dict(z=zz,kappa=k,numeric=a+b,exact=pred,residual=a+b-pred,
                         error_est=e1+e2,ratio_to_81_z6=(a+b)/(81*zz**6)))
out["positive_resolvent_numerics"]=majorant

def f2(x):
    if abs(x)<1e-5:return 1-x*x/12+x**4/384
    return 8*jv(2,x)/(x*x)
combined=[]
from scipy.special import kv
for a,b,k,zz in [(1,1,2,.8),(.7,1.1,1.2,.8),(2,3,4,1.5)]:
    source=lambda v:v**4*f2(a*v)*jv(0,b*v)
    direct1,e1=quad(lambda v:-v*Gpos(k,zz,v)*source(v),0,zz,epsabs=1e-12,epsrel=1e-11)
    direct2,e2=quad(lambda v:-v*Gpos(k,zz,v)*source(v),zz,np.inf,epsabs=1e-12,epsrel=1e-11)
    boundary,eb=quad(lambda v:-v*kv(0,k*v)*source(v),0,np.inf,epsabs=1e-12,epsrel=1e-11)
    volterra,ev=quad(lambda v:K_bessel(zz,v,-k*k)*source(v),0,zz,epsabs=1e-12,epsrel=1e-11)
    full=direct1+direct2;split=iv(0,k*zz)*boundary+volterra
    combined.append(dict(a=a,b=b,kappa=k,z=zz,direct_full=full,homogeneous=iv(0,k*zz)*boundary,
        volterra=volterra,split_full=split,residual=full-split,
        absolute_majorant=zz**4/k**2+16*zz**2/k**4+64/k**6,
        quadrature_error=e1+e2+abs(iv(0,k*zz))*eb+ev))
out["full_spacelike_cancellation"]=combined

out["homogeneous_family_scaling"]={
    "seed_degree":0,"momentum_dimension":12,"switch_dimension":4,
    "paired_scaling_power":8,
    "identity":"B_R(lambda k)=lambda^(-4) B_(lambda R)(k)",
    "global_weight_condition":"M>8+k for a local distribution order k",
}
out["all_exact_checks_zero"]=all(v=="0" for v in [
    out["Riemann_kernel_exact"]["f_second_derivative_coefficient"],
    out["Riemann_kernel_exact"]["f_first_derivative_coefficient"],
    out["Riemann_kernel_exact"]["moving_endpoint_residual"],
    out["positive_resolvent_exact"]["radial_equation_residual"],
    out["positive_resolvent_exact"]["heat_equation_residual"],
    *out["positive_resolvent_exact"]["complete_monotone_derivatives"]])
Path(__file__).with_suffix(".json").write_text(json.dumps(out,indent=2))
print(json.dumps(out,indent=2))
