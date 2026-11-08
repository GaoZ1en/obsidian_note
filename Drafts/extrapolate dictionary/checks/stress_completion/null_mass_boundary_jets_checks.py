#!/usr/bin/env python3
"""Exact mass-orthant moments and direct radial/Laplace boundary jets."""
import json
import sys
from pathlib import Path
import sympy as s
import mpmath as mp

th,ph=s.symbols("th ph",real=True)
uu,vv=s.sin(th),s.sin(ph)
moments={}
expected={(0,0):s.Integer(1),(1,0):s.Rational(1,4),(0,1):s.Rational(1,4),
          (2,0):s.Rational(1,9),(1,1):s.Rational(1,36),(3,0):s.Rational(1,16)}
for (n,k),target in expected.items():
    integrand=s.expand((uu**2-vv**2)*((uu+vv)/2)**(2*n)*((uu-vv)/2)**(2*k))
    val=s.simplify(s.integrate(s.integrate(integrand,(ph,-th,th)),(th,0,s.pi/2)))
    assert val==target,(n,k,val)
    moments[str((n,k))]={"value":str(val),"residual":str(val-target)}

A,B,c=s.symbols("A B c",positive=True)
aa,bb=1/(4*A),1/(4*B)
Lap=s.log(aa*bb/((c-aa)*(c-bb)))/c
jets={}
targets=[0,-1,(A+B)/2,-(A*A+B*B)/3-A*B/6]
for n,target in enumerate(targets):
    val=s.simplify(s.diff(Lap,c,n).subs(c,aa+bb)/(4*A*B*4**n*s.factorial(n)))
    assert s.simplify(val-target)==0,(n,val,target)
    jets[str(n)]={"laplace_transform":str(val),"target":str(target),"residual":"0"}

mp.mp.dps=40
samples=[]
for av,uv in [(mp.mpf(".7"),mp.mpf(".4")),(mp.mpf("1.2"),mp.mpf("1.1")),(mp.mpf("2"),mp.mpf("2.4"))]:
    j=mp.quad(lambda y:mp.exp(-av*y)*mp.besselj(0,uv*mp.sqrt(y)),[0,1,mp.inf])
    yy=mp.quad(lambda y:mp.exp(-av*y)*mp.bessely(0,uv*mp.sqrt(y)),[0,1,mp.inf])
    jj=mp.exp(-uv*uv/(4*av))/av
    ytarget=mp.exp(-uv*uv/(4*av))*mp.ei(uv*uv/(4*av))/(mp.pi*av)
    samples.append({"A":str(av),"u":str(uv),"J_absolute_error":mp.nstr(abs(j-jj),10),
                    "Y_absolute_error":mp.nstr(abs(yy-ytarget),10)})

result={"sympy_version":s.__version__,"exact_zero_count":len(moments)+len(jets),
        "mass_orthant_moments":moments,"direct_radial_laplace_jets":jets,
        "independent_transform_quadratures":samples}
Path(__file__).with_name("null_mass_boundary_jets_results.json").write_text(json.dumps(result,indent=2)+"\n")
print(json.dumps(result,indent=2))
