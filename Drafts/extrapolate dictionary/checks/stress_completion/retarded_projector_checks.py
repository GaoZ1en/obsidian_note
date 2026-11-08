"""Independent check of analytic TT response versus bare physical-mode dispersion."""
import sys
from pathlib import Path
import json
import sympy as S
from scipy.special import kv,jv,yv

records=[]
def exact(name,expr):
    expr=S.simplify(S.expand_func(expr))
    assert expr==0,(name,expr)
    records.append({"name":name,"residual":str(expr)})

kap,u,z=S.symbols('kappa u z',positive=True)
s,k,mu2=S.symbols('s k mu2',nonzero=True,real=True)
R=-S.besselk(0,kap*u)
D=lambda f:S.diff(f,kap)/(2*kap)
H=kap**4*S.Rational(1,2)*D(D(R))
expected=-kap**2*u**2*S.besselk(2,kap*u)/8
exact('Radial boundary H identity',H-expected)
hz=-z*z*S.besselk(2,z)/8
exact('H0',S.limit(hz,z,0,dir='+')+S.Rational(1,4))
exact('Hprime0',
      -u*u*S.limit(S.diff(hz,z)/(2*z),z,0,dir='+')+u*u/16)

h=1/(s-mu2)
h0=-1/mu2
hp0=-1/mu2**2
exact('First spectral subtraction',h/mu2-(h-h0)/s)
exact('Second spectral subtraction',h/mu2**2-(h-h0-s*hp0)/s**2)

A=S.Rational(2,3)
B=4*k*k/3
C=2*k**4/3
exact('Spatial 1111 TT decomposition',
      S.Rational(2,3)*(1+k*k/s)**2-(A+B/s+C/s**2))
Delta=B*(-S.Rational(1,4))/s+C*(-S.Rational(1,4)-s*u*u/16)/s**2
target=-k*k/(3*s)-k**4/(6*s*s)-k**4*u*u/(24*s)
exact('Constraint discrepancy',Delta-target)
exact('Spacelike exact counterexample',Delta.subs({s:-1,k:1,u:1})-S.Rational(5,24))
exact('Timelike exact counterexample',Delta.subs({s:3,k:1,u:1})+S.Rational(31,216))

# The zero-frequency mode integral reduces to two Abel Bessel moments.
a=S.symbols('a',positive=True)
laplace=(S.sqrt(a*a+1)-a)**2/S.sqrt(a*a+1)
moment1=S.limit(-S.diff(laplace,a),a,0,dir='+')
momentminus1=S.Rational(1,2)
exact('Abel first Bessel moment',moment1-2)
exact('Zero-frequency bare mode response',
      -(moment1+momentminus1)/12+S.Rational(5,24))

numerics=[]
for ss,kk,uu in [(-1.,1.,1.),(3.,1.,1.),(-2.3,.7,1.4)]:
    if ss<0:
        hh=ss*uu*uu*kv(2,uu*(-ss)**.5)/8
    else:
        from math import pi
        hh=pi*ss*uu*uu*(yv(2,uu*ss**.5)-1j*jv(2,uu*ss**.5))/16
    aa=2/3; bb=4*kk*kk/3; cc=2*kk**4/3
    hzero=-.25; hprime=-uu*uu/16
    analytic=(aa+bb/ss+cc/(ss*ss))*hh
    modes=aa*hh+bb*(hh-hzero)/ss+cc*(hh-hzero-ss*hprime)/(ss*ss)
    expected_delta=-kk*kk/(3*ss)-kk**4/(6*ss*ss)-kk**4*uu*uu/(24*ss)
    val=lambda w:{"real":float(complex(w).real),"imag":float(complex(w).imag)}
    numerics.append({"s":ss,"k":kk,"u":uu,"H":val(hh),
                     "analytic":val(analytic),"bare_modes":val(modes),
                     "difference":val(analytic-modes),"expected_difference":expected_delta,
                     "identity_error":abs(analytic-modes-expected_delta)})

result={"exact_checks":records,"exact_zero_count":len(records),
        "examples":numerics,
        "scope":"The distinct retarded responses are fixed by exact algebra; source-defined projection requires the complete constrained response."}
Path(__file__).with_name('retarded_projector_checks.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
