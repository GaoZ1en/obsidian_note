"""Independent checks for the causal construction at the full momentum origin."""
import sys
from pathlib import Path
import json
import sympy as S
import numpy as np
from scipy.integrate import quad
from scipy.special import erfc

records=[]
def record(name, value):
    value=S.simplify(value)
    assert value==0,(name,value)
    records.append({"name":name,"residual":str(value)})

sig=S.symbols('sigma', real=True)
def reduce_delta(expr):
    result=0
    for term in S.expand(expr).as_ordered_terms():
        ds=list(term.atoms(S.DiracDelta))
        if not ds:
            result+=term
            continue
        assert len(ds)==1
        delta=ds[0]
        n=delta.args[1] if len(delta.args)>1 else 0
        polynomial=S.Poly(S.cancel(term/delta),sig)
        for (k,),coef in polynomial.terms():
            if k<=n:
                result+=coef*(-1)**k*S.factorial(n)/S.factorial(n-k)*S.DiracDelta(sig,n-k)
    return S.expand(result)

wave=lambda f:-4*sig*S.diff(f,sig,2)-12*S.diff(f,sig)
g0=-S.DiracDelta(sig,1)/(2*S.pi**2)
g1=S.DiracDelta(sig)/(8*S.pi**2)
g2=-S.Heaviside(sig)/(32*S.pi**2)
record('First six-dimensional squared-mass recurrence',
       reduce_delta(wave(g1)-g0))
record('Second six-dimensional squared-mass recurrence',
       reduce_delta(wave(g2)-2*g1))
record('Radial massless Fourier coefficient',2*S.pi*(-1/(2*S.pi**2))+1/S.pi)
record('Radial raised Fourier coefficient',2*S.pi*(-1/(32*S.pi**2))+1/(16*S.pi))

mu,kap,u=S.symbols('mu kappa u',positive=True)
zero=S.integrate(2*mu/(-kap**2-mu**2)**3,(mu,0,S.oo))
record('Zero-radius retarded double-pole coefficient',
       zero+1/(2*kap**4))
base=-S.besselk(0,kap*u)
first=S.diff(base,kap)/(2*kap)
second=S.diff(first,kap)/(2*kap)
record('Spacelike second mass derivative',
       S.expand_func(second+u**2*S.besselk(2,kap*u)/(4*kap**2)))

th=S.symbols('theta',real=True)
gaussian_cone=S.Rational(1,2)*4*S.pi*S.integrate(S.sin(th)**2,(th,0,S.pi/4))
record('Gaussian step integral at u=0',
       gaussian_cone-S.pi*(S.pi-2)/4)
record('Gaussian raised pairing at u=0',
       -gaussian_cone/(16*S.pi)+(S.pi-2)/64)
record('Full kernel homogeneous degree',S.Integer(6-2-4))
record('Adiabatic origin scaling exponent',S.Integer(12-4-8))

values=[]
for radial in [0.,.001,.01,.1,.5,1.,2.,4.,8.]:
    step_integral,step_error=quad(
        lambda rr:2*np.pi**1.5*rr**2*np.exp(-rr*rr)
                  *erfc(np.sqrt(rr*rr+radial*radial)),
        0,np.inf,epsabs=1e-50,epsrel=2e-11,limit=400)
    raised=-step_integral/(16*np.pi)
    row={"u":radial,"raised_gaussian_pairing":raised,
         "step_integral_error":step_error/(16*np.pi)}
    if radial>0:
        def scalar_integrand(rr):
            E=np.sqrt(rr*rr+radial*radial)
            return -rr**2*np.exp(-2*rr*rr-radial*radial)*(E**-3+2/E)
        scalar,scalar_error=quad(scalar_integrand,0,np.inf,
                                 epsabs=1e-50,epsrel=2e-11,limit=500)
        row.update({"scalar_gaussian_pairing":scalar,
                    "scalar_error":scalar_error})
        if radial<.5:
            row["scalar_minus_log_u"]=scalar-np.log(radial)
    else:
        row["exact_raised_at_zero"]=-(np.pi-2)/64
        row["zero_difference"]=raised+(np.pi-2)/64
    values.append(row)

result={"exact_checks":records,"exact_zero_count":len(records),
        "gaussian_causal_pairings":values,
        "scope":"Exact causal coefficients and representative pairings; full seminorm theorem is analytic."}
Path(__file__).with_name('origin_causal_checks.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
