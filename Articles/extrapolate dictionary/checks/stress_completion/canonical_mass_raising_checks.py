"""Independent exact null-jet identities and spacelike radial quadratures."""
import sys
from pathlib import Path
import json
import sympy as S
import numpy as np
from scipy.integrate import quad
from scipy.special import j0,jv,k0

checks=[]
def exact(name, expr):
    value=S.simplify(S.expand_func(expr))
    assert value==0,(name,value)
    checks.append({"name":name,"residual":str(value)})

a,u,x,y,t,eps=S.symbols('a u x y t eps',positive=True)
J=S.besselj(0,u*S.sqrt(x))
exact('Second Bessel mass derivative',
      S.diff(J,x,2)-u**2*S.besselj(2,u*S.sqrt(x))/(4*x))
exact('Input Laplacian identity',
      S.diff(y*S.diff(S.besselj(0,u*S.sqrt(y)),y),y)
      +u*u*S.besselj(0,u*S.sqrt(y))/4)
R=1/(t-y+S.I*eps)
exact('First null jet',
      S.diff(y*S.diff(R,y),y)-R**2-2*y*R**3)
exact('Half-line derivative moment',
      a*a*(S.exp(-u*u/(4*a))/a)-a+u*u/4
      -(a*S.exp(-u*u/(4*a))-a+u*u/4))

moments=[]
for aa,uu in [(1.,.7),(.8,1.3),(2.,3.1)]:
    def f(xx):
        if xx==0:
            derivative=uu**4/32
        else:
            derivative=uu*uu*jv(2,uu*np.sqrt(xx))/(4*xx)
        return np.exp(-aa*xx)*derivative
    value,error=quad(f,0,np.inf,epsabs=2e-12,epsrel=2e-12,limit=300)
    predicted=aa*np.exp(-uu*uu/(4*aa))-aa+uu*uu/4
    moments.append({"a":aa,"u":uu,"integral":value,
                    "boundary_jet_prediction":predicted,
                    "difference":value-predicted,"quadrature_error":error})

jets=[]
for kap,yy in [(1.,0.),(1.,.4),(1.,3.),(2.,1.5),(.7,2.)]:
    h0,e0=quad(lambda uu:-uu*k0(kap*uu)*j0(np.sqrt(yy)*uu),
               0,np.inf,epsabs=2e-11,epsrel=2e-11,limit=500)
    h1,e1=quad(lambda uu:uu**3*k0(kap*uu)*j0(np.sqrt(yy)*uu)/4,
               0,np.inf,epsabs=2e-11,epsrel=2e-11,limit=500)
    expected0=-1/(kap*kap+yy)
    expected1=(kap*kap-yy)/(kap*kap+yy)**3
    jets.append({"kappa":kap,"y":yy,"H0":h0,"expected_H0":expected0,
                 "H0_difference":h0-expected0,"H0_error_estimate":e0,
                 "Hx0":h1,"expected_Hx0":expected1,
                 "Hx0_difference":h1-expected1,"Hx0_error_estimate":e1})

result={"exact_checks":checks,"exact_zero_count":len(checks),
        "half_line_moments":moments,"spacelike_null_jets":jets,
        "scope":"Algebra and nonsingular quadratures; null-distribution convergence proved in Markdown."}
Path(__file__).with_name('canonical_mass_raising_checks.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
