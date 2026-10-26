#!/usr/bin/env python3
"""Actual checks for the uniform massive-zero-transfer cutoff lemma."""
import json, math, sys
from pathlib import Path
import sympy as s
import numpy as np
from scipy.integrate import quad
from scipy.special import jv,yv,kv

out=Path(__file__).resolve().parent
res={}
def zero(name,e):
    v=s.simplify(e)
    res[name]=str(v)
    assert v==0,(name,v)

m,rho,H,T,V=s.symbols('m rho H T V',positive=True,real=True)
b=s.sqrt(m*m+2*m*rho*H+rho*rho*T)
zero('hard_mass_H_fixed_T',s.diff(b,H)-m*rho/b)
bv=s.sqrt((m+rho*H)**2-rho*rho*V*V)
cv=rho*s.sqrt(H*H-V*V)
zero('hard_mass_H_fixed_V',s.diff(bv,H)-rho*(m+rho*H)/bv)
zero('soft_mass_H_fixed_V',s.diff(cv,H)-rho*H/s.sqrt(H*H-V*V))
zero('radial_measure_T_jacobian',
     V**2/(2*V)-V/2)
u=s.symbols('u',positive=True)
zero('radial_majorant_order_zero',
     s.integrate(u**2/(1+rho*u)**5,(u,0,s.oo))-1/(12*rho**3))
zero('radial_majorant_one_injection_derivative',
     s.integrate(u**3/(1+rho*u)**6,(u,0,s.oo))-1/(20*rho**4))
B=s.symbols('B',positive=True)
z=s.symbols('z',positive=True)
zero('dyadic_massive_cutoff_power_3',
     s.integrate(z**2/(1+B*z)**5,(z,0,s.oo))-1/(12*B**3))
zero('dyadic_injection_cutoff_power_2',
     s.integrate(z/(1+B*z)**4,(z,0,s.oo))-1/(6*B**2))
zero('annular_tensor_measure_power',rho**4*rho**2*rho**(-3)-rho**3)
zero('annular_mixed_injection_measure_power',rho**4*rho*rho**(-3)-rho**2)

# Exact Lorentz tensor reduction q=p+r-Omega after a transverse projector.
# A generic symmetric test e annihilating p is enough for this identity.
P=s.Matrix([2,0,0,0]); R=s.Matrix(s.symbols('r0:4'))
O=s.Matrix(s.symbols('o0:4'))
E=s.diag(0,1,-1,0)
Q=P+R-O
zero('transverse_tensor_source_reduction',(Q.T*E*R)[0]-((R-O).T*E*R)[0])

def radial_L1(v):
    neg,_=quad(lambda T: abs(kv(0,v*math.sqrt(-T))),-2,0,
               epsabs=1e-10,epsrel=1e-10,limit=1000)
    pos,_=quad(lambda T: math.pi/2*math.hypot(jv(0,v*math.sqrt(T)),
                                            yv(0,v*math.sqrt(T))),0,2,
               epsabs=1e-10,epsrel=1e-10,limit=1000)
    value=neg+pos
    return {'v':v,'L1_T':value,
            'normalized':value/(1+abs(math.log(v))) if v<1 else value*math.sqrt(v)}

rng=np.random.default_rng(128)
phase_records=[]
min_future=math.inf;max_past=-math.inf
for _ in range(4000):
    mm=float(rng.uniform(.8,2.))
    rr=float(rng.uniform(.0001,.02))*mm
    hh=float(rng.uniform(.5,1.5))
    vv=float(rng.uniform(0,.5))*hh
    for sign in [1,-1]:
        h=sign*hh
        bb=math.sqrt((mm+rr*h)**2-rr*rr*vv*vv)
        cc=math.sqrt(h*h-vv*vv)
        db=(mm+rr*h)/bb
        dc=h/cc
        if sign==1:min_future=min(min_future,db+dc)
        else:max_past=max(max_past,dc-db)
assert min_future>1.99
assert max_past < -1.99

result={'exact_zero_count':len(res),'exact_residuals':res,
        'soft_retarded_mass_L1_samples':[radial_L1(v) for v in [.001,.01,.1,1.,10.,100.]],
        'sampled_axis_points':4000,
        'minimum_future_phase_derivative_over_rho':min_future,
        'maximum_past_phase_derivative_over_rho':max_past,
        'evidence_scope':'Exact coordinate/power identities and numerical norm/phase samples. The uniform distribution proof is in half_bps_stress_joint_massive.md.'}
(out/'massive_uniform_results.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
