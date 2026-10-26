"""Independent calculations for the six-dimensional scalar seed trace.

This script checks new formulas, rather than importing repository CAS output.
The uniform distribution theorem is proved in the accompanying Markdown file.
"""
import sys
from pathlib import Path
import json
import sympy as s
import numpy as np
from scipy.integrate import quad

records=[]
def exact(name, expression):
    value=s.simplify(expression)
    assert value==0,(name,value)
    records.append({'name':name,'kind':'exact','residual':str(value)})

g=s.symbols('g', real=True)
C0=2*s.pi**2
normal=2*s.pi**s.Rational(3,2)
g6=4*s.pi**s.Rational(3,2)*g
exact('Six-dimensional radial kinetic normalization',
      s.pi/normal**2-1/(2*C0))
exact('Six-dimensional cubic normalization',
      2*s.pi*g6/(6*normal**3)-g/(3*C0))
exact('Boundary free spectrum',normal**2/(2)-2*s.pi**3)

c,z=s.symbols('c z',real=True)
H=2*z+(1-z*z)*s.log((z+1)/(z-1))
exact('Cauchy angular polynomial division',
      1-c*c-(z-c)*(z+c)-(1-z*z))
primitive=z*c+c*c/2-(1-z*z)*s.log(z-c)
exact('Cauchy angular primitive',s.diff(primitive,c)-(1-c*c)/(z-c))
exact('S4 polar weight normalization',
      2*s.pi**2*s.integrate(1-c*c,(c,-1,1))-8*s.pi**2/3)

# Exact radial raising uses u derivatives and leaves cone indicators intact.
u,a=s.symbols('u a',positive=True)
J=s.besselj(0,a*u)
expr=-2*u*s.diff(J,u)-a*a*u*u*J-a*a*u*u*s.besselj(2,a*u)
exact('Radial raising identity',s.expand_func(expr))
alpha=s.symbols('alpha')
exact('Outer/middle raising normalization',
      alpha*a*a/s.Integer(40)-2*g*(alpha*a*a/(80*g)))

# Six-dimensional conformal tree candidate, independently fixed by its EOM.
A,B,C=s.symbols('A B C',positive=True)
lap=(-4*B-4*A+4*(A+B-C))/(A*A*B*B)
exact('Six-dimensional product Laplacian',lap+4*C/(A*A*B*B))
exact('Cubic source normalization',(-g/(2*C))*lap-2*g/(A*A*B*B))

def angular_model(zeta):
    zeta=complex(zeta)
    return 2*zeta+(1-zeta*zeta)*np.log((zeta+1)/(zeta-1))

angular=[]
for delta in [1e-2,1e-3,1e-4,1e-6,1e-8]:
    zp=1+delta
    hm=angular_model(zp).real
    q=quad(lambda c:(1-c*c)/(zp-c),-1,1,epsabs=2e-13,epsrel=2e-13)[0]
    angular.append({'delta':delta,'H_outside':hm,'quadrature_difference':q-hm,
                    'endpoint_log_ratio':(hm-2)/(delta*np.log(1/delta))})

inside=[]
for zeta in [-.8,-.1,.6,.99]:
    real=-quad(lambda c:1-c*c,-1,1,weight='cauchy',wvar=zeta,
               epsabs=1e-13,epsrel=1e-13)[0]
    value=complex(real,-np.pi*(1-zeta*zeta))
    exact_formula=2*zeta+(1-zeta*zeta)*(np.log((1+zeta)/(1-zeta))-1j*np.pi)
    inside.append({'t':zeta,'real':value.real,'imaginary':value.imag,
                   'formula_error':abs(value-exact_formula)})

# Independent Euclidean uniqueness integral, with no CFT coefficient input.
# After integrating the six-dimensional vertex coordinate, Schwinger/Feynman
# parameters give 2*pi^3 int_simplex abc/(ab*A+ac*B+bc*C)^3.
star=[]
for A0,B0,C0v in [(1.,1.,1.),(1.,4.,3.),(.7,1.6,2.2)]:
    def outer(t):
        aa=t
        def inner(v):
            bb=(1-t)*v; cc=(1-t)*(1-v)
            den=aa*bb*A0+aa*cc*B0+bb*cc*C0v
            return (1-t)*aa*bb*cc/(den**3)
        return quad(inner,0,1,epsabs=2e-11,epsrel=2e-10,limit=300)[0]
    val=2*quad(outer,0,1,epsabs=2e-10,epsrel=2e-10,limit=300)[0]
    target=1/(A0*B0*C0v)
    star.append({'squared_distances':[A0,B0,C0v],
                 'integral_over_pi3':val,'target':target,'difference':val-target})

# An actual two-shell soft-energy model for a timelike injection Xi=(eps,0).
# The amplitude is nonzero at E=F=0, so the soft endpoints are included.
# Overall sphere and shell constants are stripped on both sides.
Emom1=s.Rational(1,90)
Emom2=s.Rational(1,495)
Fmom1=s.Rational(13,990)
Fmom2=s.Rational(1,396)
leading=float(-2*(Emom1*Fmom2+Emom2*Fmom1))
energy=[]
for eps in [1e-2,1e-3,1e-4,1e-5]:
    def energy_outer(E):
        def energy_inner(F):
            d=eps/E+eps/F+eps*eps/(2*E*F)
            t=1+d
            if t<10:
                difference=2*d-(2*d+d*d)*np.log((2+d)/d)
            else:
                Hsmall=sum(4/((2*n+1)*(2*n+3)*t**(2*n+1)) for n in range(9))
                difference=Hsmall-2
            return E*E*F*F*(1-E)**8*(1-F)**8*(1+F)*difference
        return quad(energy_inner,0,1,epsabs=1e-21,epsrel=5e-10,limit=200)[0]
    val=quad(energy_outer,0,1,epsabs=1e-20,epsrel=5e-9,limit=200)[0]
    energy.append({'epsilon':eps,'difference':val,
                   'quotient_by_eps_log':val/(eps*np.log(1/eps)),
                   'ratio_to_predicted_leading':val/(leading*eps*np.log(1/eps))})

coalescing=[]
for eps in [1e-2,1e-3,1e-4]:
    t=-1+eps*eps/2
    val=2*t+(1-t*t)*(np.log((1+t)/(1-t))-1j*np.pi)
    coalescing.append({'epsilon':eps,'E_equals_F':1.0,
                      'endpoint_difference_real':val.real+2,
                      'imaginary':val.imag})

out={'exact_zero_count':len(records),'exact_checks':records,
     'angular_endpoint':angular,'angular_cut':inside,'star_triangle':star,
     'soft_energy_model':{'leading_coefficient':leading,'samples':energy},
     'equal_energy_zero_transfer_model':coalescing,
     'claims':{'angular_lemma':'analytic proof in six_dimensional_seed.md',
               'numerics':'supporting checks, not a proof of uniform estimates',
               'gravity_trace':'radial raising algebra only; null jets remain a separate theorem'}}
dest=Path(__file__).with_name('six_dimensional_seed_checks_results.json')
dest.write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
