#!/usr/bin/env python3
"""Independent binary64 implementation; no Wolfram results are imported.
Outputs are exclusive-created. Expected harmless exponential underflow is counted.
"""
from pathlib import Path
import sys, json, math, cmath, warnings
import numpy as np

ROOT = Path(__file__).resolve().parent
OUT = ROOT / 'independent-numpy-diagnostics.json'
if OUT.exists():
    raise FileExistsError(f'Refusing overwrite: {OUT}')
records = []
q_cases = [0.7j, 0.23+0.4j, -0.37+0.11j, 0.49+0.03j, 0.02j]
with warnings.catch_warnings(record=True) as caught:
    warnings.simplefilter('always')
    for tau in q_cases:
        q = cmath.exp(2j*math.pi*tau)
        r, theta = abs(q), 2*math.pi*tau.real
        winding = math.fsum((2*q**(2*m)/(m*(1-q**m))).real for m in range(1,801))
        product = -math.fsum(math.log1p(-2*r**n*math.cos(n*theta)+r**(2*n)) for n in range(2,2501))
        records.append({'tau':[tau.real,tau.imag], 'abs_q':r,
                        'winding_log':winding, 'product_log':product,
                        'residual':winding-product,
                        'pass_abs_1e-12':abs(winding-product)<1e-12})
    quadratures=[]
    cases=[(1.7,.4,1),(1.7,.4,3),(1.7,.4,7),(.3,1.2,1),(.3,1.2,3),(.3,1.2,7),(3.1,0.,1),(3.1,0.,3)]
    for beta,theta,m in cases:
        vals=[]
        zero_counts=[]
        for panels in (12000,24000):
            xx=np.linspace(-12.,9.,panels+1)
            u=np.exp(xx)
            denom=abs(cmath.sin(m*(theta+1j*beta)/2))**2
            # u=exp(x), so du/u^(3/2)=exp(-x/2)dx.
            exp1=-(m*beta)**2/(4*u)-u
            exp2=-(m*beta)**2/(4*u)-4*u
            with np.errstate(under='ignore'):
                f=beta/(4*math.sqrt(math.pi)*denom)*np.exp(-xx/2)*(np.exp(exp1)*math.cos(2*m*theta)-np.exp(exp2)*math.cos(m*theta))
            zero_counts.append(int(np.count_nonzero(f==0)))
            dx=21./panels
            vals.append(float(dx/3*(f[0]+f[-1]+4*math.fsum(f[1:-1:2])+2*math.fsum(f[2:-1:2]))))
        exact=(math.exp(-m*beta)*math.cos(2*m*theta)-math.exp(-2*m*beta)*math.cos(m*theta))/(2*m*denom)
        quadratures.append({'beta_theta_m':[beta,theta,m], 'x_range':[-12.,9.],
            'panels':[12000,24000], 'simpson_values':vals, 'closed_form':exact,
            'fine_residual':vals[-1]-exact, 'refinement_delta':vals[-1]-vals[0],
            'underflow_zero_samples':zero_counts,
            'pass_abs_1e-12':abs(vals[-1]-exact)<1e-12})
    result={'python':sys.version,'numpy':np.__version__,
            'implementation':'binary64 log1p product and composite Simpson on log proper-time; no Wolfram result imported',
            'q_product_checks':records,'quadratures':quadratures,
            'warnings':[str(w.message) for w in caught],
            'expected_underflow_policy':'Exponential tails at large absolute log-time can round to zero; counted above, only underflow suppression enabled.',
            'all_passed':all(x['pass_abs_1e-12'] for x in records+quadratures)}
with OUT.open('x', encoding='utf-8') as f:
    json.dump(result,f,ensure_ascii=False,indent=2)
print(json.dumps({'output':str(OUT),'all_passed':result['all_passed'],
                  'warnings':result['warnings'],
                  'max_q_residual':max(abs(x['residual']) for x in records),
                  'max_quadrature_residual':max(abs(x['fine_residual']) for x in quadratures)},indent=2))
if not result['all_passed']:
    raise SystemExit(1)
