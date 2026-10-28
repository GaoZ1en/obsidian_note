"""Recompute a positive-real Fredholm Gamma specialization, from exact root polynomials."""
import json
import sys
from pathlib import Path
import mpmath as mp
if sys.flags.optimize:
    raise RuntimeError("Assertions must be active.")
mp.mp.dps=80
s=mp.mpf(20)
source=json.loads(Path(__file__).with_name("nonchiral_rational_results.json").read_text())
polys={(1,row["eta"]):row["numerator_coefficients_descending_C"] for row in source["rational_identities"]}
polys[(0,1)]=[1829,-6912,-248132,3022560,7257600]
polys[(0,-1)]=[1829,-22352,292028,-3828960,7257600]
beta0=[0,-1,-2,-2,-3,-3,-4,-5]
beta1=[-2]*4+[-3]*4+[-1]*3+[-4]*3+[0]*2+[-5]*2+[1,-6]
rows=[];total=mp.mpf(0)
for u in (0,1):
    for eta in (1,-1):
        coeff=polys[(u,eta)]
        roots=mp.polyroots(coeff,maxsteps=2000,extraprec=300,error=False)
        residual=max(abs(mp.polyval(coeff,z))/sum(abs(mp.mpf(c))*max(1,abs(z))**(len(coeff)-j-1) for j,c in enumerate(coeff)) for z in roots)
        if residual>mp.mpf("1e-70"):raise AssertionError(("Root residual",u,eta,str(residual)))
        alpha=[(-5+sign*mp.sqrt(1+4*z))/2 for z in roots for sign in (1,-1)]
        beta=beta0 if u==0 else beta1
        m={(0,1):2,(0,-1):3,(1,1):4,(1,-1):3}[(u,eta)]
        logvalue=sum(mp.loggamma((m-b)/2) for b in beta)-sum(mp.loggamma((m-a)/2) for a in alpha)
        value=mp.exp(logvalue)
        if abs(mp.im(value))>mp.mpf("1e-65") or mp.re(value)<=0:raise AssertionError(("Gamma phase",u,eta,str(value)))
        total+=mp.log(mp.re(value))
        rows.append({"u":u,"eta":eta,"start_t":m,"root_count":len(alpha),"scaled_root_residual":mp.nstr(residual,8),"real_positive":True})
atoms=[(mp.mpf(24)/5,0),(mp.mpf(8)/35,0),(mp.mpf(312)/35,1),(mp.mpf(8)/21,1)]
a0=atoms[0][0]
total+=mp.log((s+3*a0)*s/(s+a0)**2)
total+=mp.log(mp.mpf(25)/31*mp.mpf(8875)/7843*mp.mpf(1413125)/1388211)
for i,(a,q) in enumerate(atoms):
    if 2*q<=1:total+=mp.log((s+2*a)/(s+a))
    for b,r in atoms[i+1:]:
        if q+r<=1:total+=mp.log(s*(s+a+b)/((s+a)*(s+b)))
expected=mp.mpf("-0.0358546286698960811729531052143874137590224081540605576395055")
error=abs(total-expected)
if error>mp.mpf("1e-58"):raise AssertionError(("Inherited decimal comparison",mp.nstr(total,75),mp.nstr(error,8)))
out={"Delta":2,"Q":1,"s":20,"epsilon":1,"working_precision":80,
     "log_value":mp.nstr(total,75),"value":mp.nstr(mp.exp(total),75),
     "absolute_difference_from_retained_decimal":mp.nstr(error,10),
     "tails":rows,"all_checks_pass":True,
     "scope":"Numerical Gamma-root evaluation of exact rational determinant specializations; 80 decimal working precision, scaled polynomial-root residual checks; not an interval certificate."}
Path(__file__).with_name("nonchiral_gamma_results.json").write_text(json.dumps(out,indent=2))
print(json.dumps({"log_value":out["log_value"],"passed":True}))
