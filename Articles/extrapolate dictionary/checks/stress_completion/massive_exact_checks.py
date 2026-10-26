"""Independent exact and numerical checks for the massive fixed-injection lemma."""
import sys
from pathlib import Path
import json
import sympy as S
import numpy as np
from scipy.integrate import quad

records = []
def check(name, value):
    value = S.simplify(value)
    assert value == 0, (name, value)
    records.append({"name": name, "residual": str(value)})

m, d, r, v = S.symbols('m d r v', positive=True)
t = r*r-v*v
x = m*m+d
y = m*m+2*m*r+t
lam = (x-y-t)**2-4*y*t
target = 4*m*m*v*v-4*d*(m*r+t)+d*d
check('Exact Kallen normal form', lam-target)

delta, sig, R, V = S.symbols('delta sig R V', real=True)
scaled = S.expand(target.subs({d:m*delta*sig,r:delta*R,v:delta*V})
                  /(m*m*delta*delta)).subs(sig**2,1)
q = 4*V*V-4*sig*R+1-4*sig*delta/m*(R*R-V*V)
check('Scaled core polynomial', scaled-q)
check('Scaled threshold gradient', S.diff(q,R)-(-4*sig-8*sig*delta/m*R))
check('Transfer null intersection', q.subs({R:sig/2,V:S.Rational(1,2)})
      .subs(sig**2,1))

L = S.symbols('L', positive=True)
A = m*r+t
ld = S.diff(target,d)
s2 = target**(-S.Rational(3,2))-S.Rational(3,4)*ld**2*target**(-S.Rational(5,2))
s3 = -S.Rational(9,2)*ld*target**(-S.Rational(5,2))+S.Rational(15,8)*ld**3*target**(-S.Rational(7,2))
check('Second derivative', S.diff(-target**(-S.Rational(1,2)),d,2)-s2)
check('Third derivative', S.diff(-target**(-S.Rational(1,2)),d,3)-s3)
g0 = (m*m*v*v-3*A*A)/(8*m**5*v**5)
check('Stationary density', s2.subs(d,0)-g0)
moment = S.integrate(S.integrate(g0,(r,-v,v))*4*S.pi*v*v,(v,0,L))
check('Signed stationary cone moment', moment+8*S.pi*L**3/(15*m**5))
angular_abs = 2*(S.integrate(1-3*r*r,(r,0,1/S.sqrt(3)))
                 + S.integrate(3*r*r-1,(r,1/S.sqrt(3),1)))
check('Leading absolute coefficient',
      S.pi/(2*m**3)*angular_abs-4*S.pi/(3*S.sqrt(3)*m**3))

# At the double wall t=lambda=0 the (w/delta,t/delta^2) map is a submersion.
ys = m*m+2*m*delta*R+delta*delta*(R*R-V*V)
ws = (m*sig-2*m*R-2*delta*(R*R-V*V))/(2*S.sqrt(ys))
ts = R*R-V*V
jac = S.det(S.Matrix([[S.diff(ws,R),S.diff(ws,V)],
                     [S.diff(ts,R),S.diff(ts,V)]]))
check('Double-wall limiting Jacobian',
      S.simplify(jac.subs(delta,0).subs({R:sig/2,V:S.Rational(1,2)}))-1)

# Hyperboloid Hessian chain-rule coefficients, with x and t fixed.
yy, aa, tt = S.symbols('y a t', positive=True)
ff = (aa*aa-yy-tt)/(2*S.sqrt(yy))
fy = -(aa*aa+yy-tt)/(4*yy**S.Rational(3,2))
check('Hyperboloid first mass coefficient', S.diff(ff,yy)-fy)
fyy = (3*aa*aa+yy-3*tt)/(8*yy**S.Rational(5,2))
check('Hyperboloid second mass coefficient', S.diff(ff,yy,2)-fyy)

# Exact angular harmonic quadrupole: derivatives only in the first 3 of 4 v directions.
vv = S.symbols('v1:5')
h = S.symbols('h')
D = sum(z*z for z in vv)-h
F = 1/D
for i,j in [(0,0),(0,1),(2,2)]:
    dij = int(i==j)
    op = S.diff(F,vv[i],vv[j])-S.Rational(dij,3)*sum(S.diff(F,z,2) for z in vv[:3])
    Q = vv[i]*vv[j]-S.Rational(dij,3)*sum(z*z for z in vv[:3])
    check(f'Quadrupole angular identity {i+1}{j+1}', op/8-Q/D**3)

numerics = []
constant = 4*np.pi/(3*np.sqrt(3))
for radius in [0.2,0.1,0.03,0.01,0.003,0.001]:
    # r0=v*c makes the apparent v^{-3} cancellation explicit in the measure.
    def radial(v0):
        def integrand(c):
            num = 1-3*(c+v0*(c*c-1))**2
            return (np.pi/2)*abs(num)
        cuts = [-1.,1.]
        # Locate sign changes analytically to make quadrature error meaningful.
        for sign in [-1.,1.]:
            roots = np.roots([v0,1.,-v0-sign/np.sqrt(3)]) if v0 else [sign/np.sqrt(3)]
            cuts.extend(float(np.real(z)) for z in roots
                        if abs(np.imag(z))<1e-12 and -1<float(np.real(z))<1)
        cuts = sorted(set(cuts))
        return sum(quad(integrand,cuts[k],cuts[k+1],epsabs=1e-12,epsrel=1e-12)[0]
                   for k in range(len(cuts)-1))
    absolute_norm, err = quad(radial,0,radius,epsabs=1e-12,epsrel=1e-12)
    numerics.append({"radius":radius,"absolute_norm":absolute_norm,
                     "norm_divided_by_radius":absolute_norm/radius,
                     "predicted_limit":constant,
                     "ratio_error":absolute_norm/radius-constant,
                     "quadrature_error":err})

result = {"exact_checks":records,"exact_zero_count":len(records),
          "stationary_absolute_norm":numerics,
          "scope":"Exact normal-form algebra and stationary norm; finite-part continuity proved in Markdown."}
out = Path(__file__).with_name('massive_exact_checks.json')
out.write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
