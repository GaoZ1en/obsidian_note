#!/usr/bin/env python3
"""Independent exact and quadrature checks of the soft-cutoff bounds."""
import json, math, sys
from pathlib import Path
import sympy as s
from scipy.integrate import quad
from scipy.special import jv

out=Path(__file__).resolve().parent
checks={}
def zero(name,expression):
    value=s.simplify(expression)
    checks[name]=str(value)
    assert value==0,(name,value)

z=s.symbols('z',real=True)
for n in range(6):
    moment=8/(3*s.pi)*s.gamma(n+s.Rational(1,2))*s.gamma(s.Rational(5,2))/s.gamma(n+3)
    coefficient=(-1)**n*moment/s.factorial(2*n)
    bessel_coefficient=(-1)**n*8/(2**(2*n+2)*s.factorial(n)*s.factorial(n+2))
    zero('sphere_average_series_'+str(n),coefficient-bessel_coefficient)

u,k=s.symbols('u k',positive=True)
zero('positive_K0_sixth_moment',s.integrate(u**5*s.besselk(0,k*u),(u,0,s.oo))-64/k**6)
A,H,B,x,y,cp,om,w1,w2,b1,b2=s.symbols('A H B x y cp om w1 w2 b1 b2',real=True)
tq=(B-A-cp)*(x/B-H-om)-(w1+b1)**2-(w2+b2)**2
zero('soft_q_hard_mass_relation',tq-((B-A-cp)/B*x-(B-A-cp)*(H+om)-(w1+b1)**2-(w2+b2)**2))
tp=(B-A+cp)*(y/B-H+om)-(w1-b1)**2-(w2-b2)**2
zero('soft_p_hard_mass_relation',tp-((B-A+cp)/B*y-(B-A+cp)*(H-om)-(w1-b1)**2-(w2-b2)**2))

# Polynomial tensor at the positive mass leakage scale sigma=z^2.
a,z,h,v1,v2,C,W,T1,T2=s.symbols('a z h v1 v2 C W T1 T2',real=True)
eta=s.diag(-1,1,1,1)
def lf(plus,minus,perp1=0,perp2=0):
    return s.Matrix([(plus+minus)/2,perp1,perp2,(plus-minus)/2])
soft=lf(a*a,z*z*h*h,a*z*h*v1,a*z*h*v2)
hard=lf(1,z*z)
Omega=lf(z*z*C,z*z*W,z*z*T1,z*z*T2)
def numerator(p,q,r):
    pl=eta*p; ql=eta*q; rl=eta*r
    sx=-(p.T*eta*p)[0]
    cq=-(p.T*eta*q)[0]; cr=-(p.T*eta*r)[0]
    qr=(q.T*eta*r)[0]
    uq=sx*ql-cq*pl; ur=sx*rl-cr*pl
    return (uq*ur.T+ur*uq.T)/2-(cq*cr+sx*qr)/3*(sx*eta+pl*pl.T)
weights={}
for name,p,q in [('soft_p',soft,hard),('soft_q',hard,soft)]:
    r=q-p+Omega
    NN=numerator(p,q,r)
    powers=[]
    for i in range(4):
        for j in range(i,4):
            poly=s.Poly(s.expand(NN[i,j]),z)
            minimum=min((term[0][0] for term in poly.terms() if term[1]!=0),default=999)
            assert minimum>=4,(name,i,j,minimum)
            powers.append({'component':[i,j],'minimum_z_power':minimum})
    weights[name]=powers

average_samples=[]
for value in [0.,.1,1.,5.,20.]:
    actual,error=quad(lambda xi: 8/(3*math.pi)*math.cos(value*xi)*(1-xi*xi)**1.5,
                      -1,1,epsabs=1e-12,epsrel=1e-12)
    expected=1. if value==0 else 8*jv(2,value)/value**2
    average_samples.append({'argument':value,'angular_average':actual,
                            'bessel_value':expected,'residual':actual-expected,
                            'quadrature_error':error})
result={'exact_zero_count':len(checks),'exact_residuals':checks,
        'verified_tensor_components':20,'tensor_leakage_powers':weights,
        'sphere_average_quadratures':average_samples,
        'scope':'Actual algebra and numerical checks. Uniform oscillatory estimates, logarithmic integrability and profile-tail summation are proved in half_bps_stress_joint_soft.md.'}
(out/'soft_uniform_results.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({'exact_zero_count':len(checks),'tensor_components':20,
                  'maximum_sphere_residual':max(abs(r['residual']) for r in average_samples)},indent=2))
