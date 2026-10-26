#!/usr/bin/env python3
"""Independent checks for the second-round regulator analysis.

These checks verify identities and sampled radial integrals. The uniform
distribution statements are proved in the companion mathematical notes.
"""
from __future__ import annotations

import json
import math
import sys
from pathlib import Path

import sympy as sp
from scipy.integrate import quad
from scipy.special import jv, yv

HERE = Path(__file__).resolve().parent
checks = {}


def zero(name, expression):
    residual = sp.simplify(sp.expand(expression))
    checks[name] = str(residual)
    if residual != 0:
        raise AssertionError((name, residual))


# The Hankel cancellation is exact for unequal orders, not an asymptotic
# cancellation of only the leading terms.
Ja, Ya, Jc, Yc = sp.symbols('Ja Ya Jc Yc', real=True)
zero('same_sign_hankel_pair',
     Ya*Jc+Ja*Yc-((Ja+sp.I*Ya)*(Jc+sp.I*Yc)
                  -(Ja-sp.I*Ya)*(Jc-sp.I*Yc))/(2*sp.I))

Ja2, Ya2, Jb, Yb = sp.symbols('Ja2 Ya2 Jb Yb', real=True)
zero('past_imaginary_cancellation',
     (Ya2-sp.I*Ja2)*Jb*Jc+(Yc+sp.I*Jc)*Ja2*Jb
     -Jb*(Ya2*Jc+Ja2*Yc))
zero('future_imaginary_cancellation',
     (Yc-sp.I*Jc)*Ja2*Jb+(Yb+sp.I*Jb)*Ja2*Jc
     -Ja2*(Yc*Jb+Yb*Jc))

x, u = sp.symbols('x u', positive=True)
for function, label in [(sp.besselj, 'J'), (sp.bessely, 'Y')]:
    residual = sp.diff(function(0, u*sp.sqrt(x)), x, 2)
    residual -= u**2*function(2, u*sp.sqrt(x))/(4*x)
    zero('radial_second_mass_derivative_'+label, sp.expand_func(residual))

a,b,c = sp.symbols('a b c', positive=True)
slow_constant = sp.pi/(8*a*a)*(2/sp.pi)**sp.Rational(3,2)
slow_constant *= sp.sin(-3*sp.pi/4)/(4*sp.sqrt(a*b*c))
zero('individual_resonant_leading_coefficient',
     slow_constant+1/(16*sp.sqrt(sp.pi)*a*a*sp.sqrt(a*b*c)))
zero('past_collinear_phase_gap', (a+c-b).subs(a,b+c)-2*c)
zero('future_collinear_phase_gap', (b+c-a).subs(b,a+c)-2*c)

# Frequency Abel and imaginary-coordinate damping have distinct formulas.
om, eps, om0 = sp.symbols('om eps om0', positive=True, real=True)
laplace = -1/((eps-sp.I*om)**2+om0**2)
zero('retarded_frequency_laplace',
     laplace-1/((om+sp.I*eps)**2-om0**2))
t,tau = sp.symbols('t tau', real=True)
zero('common_past_output_factor',
     sp.exp(eps*(t-tau))-sp.exp(eps*t)*sp.exp(-eps*tau))


def plateau(v):
    """A C-infinity common cutoff: 1 below 1, 0 above 2."""
    if v <= 1:
        return 1.0
    if v >= 2:
        return 0.0
    left = math.exp(-1/(2-v))
    right = math.exp(-1/(v-1))
    return left/(left+right)


def past_integrand(radial, masses, part='sum'):
    if radial == 0:
        return 0.0
    aa,bb,cc=masses
    common=math.pi/(8*aa*aa)*radial**3*jv(0,bb*radial)
    stress=yv(2,aa*radial)*jv(0,cc*radial)
    middle=jv(2,aa*radial)*yv(0,cc*radial)
    return common*({'sum': stress+middle, 'stress': stress,
                    'middle': middle}[part])


def regulated_integral(masses, scale, part='sum'):
    value,error=quad(
        lambda radial: plateau(radial/scale)*past_integrand(radial,masses,part),
        0,2*scale,points=[scale],epsabs=1e-9,epsrel=2e-11,limit=6000)
    return {'B': scale, 'value': value, 'quadrature_error': error}


radial_records=[]
for masses in [(2.,1.,1.),(3.,1.,1.5),(2.,1.,.3)]:
    samples=[regulated_integral(masses,B) for B in [2.,4.,8.,16.,32.,64.,128.,256.]]
    radial_records.append({'masses_a_b_c': masses,
                           'canonical_complete_value': 0.,
                           'samples': samples})

moment,moment_error=quad(lambda v:v**1.5*plateau(v),0,2,points=[1],
                         epsabs=1e-12,epsrel=1e-12)
masses=(2.,1.,1.)
leading=-moment/(16*math.sqrt(math.pi)*masses[0]**2*math.sqrt(math.prod(masses)))
split_records=[]
for B in [8.,16.,32.,64.]:
    stress=regulated_integral(masses,B,'stress')
    middle=regulated_integral(masses,B,'middle')
    split_records.append({'B':B,'stress':stress,'middle':middle,
                          'stress_over_B_5_2':stress['value']/B**2.5,
                          'predicted_leading_ratio':leading,
                          'sum':stress['value']+middle['value']})

results={
    'fixed_commit':'aa128cb903e0f3750a16a69487d64013d38667b1',
    'exact_zero_count':len(checks),
    'exact_residuals':checks,
    'common_cutoff_radial_samples':radial_records,
    'plateau_moment_3_2':moment,
    'plateau_moment_quadrature_error':moment_error,
    'separated_collinear_terms':split_records,
    'interpretation':(
        'Exact algebra verifies common-cutoff all-insertion cancellation. '
        'Numerical finite-B values support convergence on positive-mass '
        'timelike patches. Samples do not establish null-uniform estimates '
        'or arbitrary slow joint B(R) convergence.'),
}
(HERE/'regulator_results.json').write_text(json.dumps(results,indent=2)+'\n')
print(json.dumps({'exact_zero_count':len(checks),
                  'radial_sample_count':sum(len(r['samples']) for r in radial_records),
                  'split_sample_count':len(split_records),
                  'last_common_samples':[r['samples'][-1] for r in radial_records],
                  'output':'regulator_results.json'},indent=2))
