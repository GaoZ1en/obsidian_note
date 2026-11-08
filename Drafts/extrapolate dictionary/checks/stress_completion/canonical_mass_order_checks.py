import sys
from pathlib import Path
import json
import sympy as S

checks = []
def zero(name, expression):
    result = S.simplify(expression)
    assert result == 0, (name, result)
    checks.append({'name': name, 'residual': str(result)})

y,t,eps,a,tau,r,d = S.symbols('y t eps a tau r d', positive=True)
R=1/(t-y+S.I*eps)
zero('Null jet as radial mass Laplacian',
     S.diff(y*S.diff(R,y),y)-R**2-2*y*R**3)
R0=1/(t-y)
zero('Right jet sign',
     S.diff(t*S.diff(-R0,t),t)-(R0**2-2*t*R0**3))
zero('Combined jet rational numerator',
     R0**2+2*y*R0**3-(t+y)*R0**3)
f=S.Function('f')(r)
lap=lambda f,dd:S.diff(f,r,2)+(dd-1)/r*S.diff(f,r)
zero('Radial dimension walk intertwiner',
     S.diff(lap(f,d),r)/r-lap(S.diff(f,r)/r,d+2))
for dim in [2,4,6]:
    for k in range(4):
        heat=(1+4*a*tau)**(-S.Rational(dim,2))*S.exp(-a*y/(1+4*a*tau))
        raised=(-a)**k*(1+4*a*tau)**(-S.Rational(dim+2*k,2))*S.exp(-a*y/(1+4*a*tau))
        zero(f'Heat dimension walk d={dim} k={k}',S.diff(heat,y,k)-raised)

data={'exact_zero_count':len(checks),'checks':checks,
      'scope':'Exact identities only. Distribution order, cutoff convergence, and geometric scope are proved in the companion note.'}
target=Path(__file__).with_name('canonical_mass_order_checks_results.json')
target.write_text(json.dumps(data,indent=2)+'\n')
print(json.dumps({'exact_zero_count':len(checks),'output':str(target)},indent=2))
