#!/usr/bin/env python3
"""Independent algebra and integrated-seed checks for the mismatch lemma.

The numeric test is constant on the singular core and has box cutoffs away
from it.  It tests the distribution by exact radial antiderivatives before
parameter differentiation; no pointwise lambda^(-5/2) integral is used.
"""
import json
from pathlib import Path
import sys
import sympy as s
import mpmath as mp

m,d,h,v,x,y,t,dd,H,V,sg=s.symbols("m d h v x y t dd H V sg",real=True)
lam=(x-y-t)**2-4*y*t
ym=m*m+2*m*h+h*h-v*v
tm=h*h-v*v
lm=4*m*m*v*v-4*d*(m*h+tm)+d*d
checks={}
def zero(name,e):
    e=s.simplify(s.expand(e))
    assert e==0,(name,e)
    checks[name]=str(e)

sub={x:m*m+d,y:ym,t:tm}
zero("exact_lambda",lam.subs(sub,simultaneous=True)-lm)
for k in (1,2,3):
    zero("mass_derivative_lambda_"+str(k),
         s.diff(lam,x,k).subs(sub,simultaneous=True)-s.diff(lm,d,k))
f=-lm**s.Rational(-1,2)
f2=lm**s.Rational(-3,2)-s.Rational(3,4)*s.diff(lm,d)**2*lm**s.Rational(-5,2)
f3=-s.Rational(9,2)*s.diff(lm,d)*lm**s.Rational(-5,2)+s.Rational(15,8)*s.diff(lm,d)**3*lm**s.Rational(-7,2)
zero("second_derivative",s.diff(f,d,2)-f2)
zero("third_derivative",s.diff(f,d,3)-f3)
zero("stationary_second_density",f2.subs(d,0)-
     (m*m*v*v-3*(m*h+h*h-v*v)**2)/(8*(m*m*v*v)**s.Rational(5,2)))

# d=sg*dd, r=dd*(H,V).  The physical signs sg=+/-1 are separate charts.
T=H*H-V*V
Lbar=4*m*m*V*V-4*sg*m*H+1-4*sg*dd*T
zero("core_discriminant_scale",
     (lm.subs({d:sg*dd,h:dd*H,v:dd*V},simultaneous=True)/dd**2-Lbar).subs(sg**2,1))
for sign in (-1,1):
    b=s.sqrt(m*m+2*m*dd*H+dd*dd*T)
    wb=(sign-2*m*H-2*dd*T)/(2*b)
    jac=s.diff(wb,H)*s.diff(T,V)-s.diff(wb,V)*s.diff(T,H)
    meet={H:s.Rational(sign,2)/m,V:s.Rational(1,2)/m}
    zero("null_threshold_w_"+str(sign),wb.subs(meet))
    zero("null_threshold_t_"+str(sign),T.subs(meet))
    zero("null_threshold_jac_"+str(sign),jac.subs(meet)-1/s.sqrt(m*m+sign*dd))
    zero("threshold_gradient_"+str(sign),s.diff(Lbar.subs(sg,sign),H)+4*sign*m+8*sign*dd*H)

# Independently verify the scalar-seed radial primitive used below.
A,B=s.symbols("A B",positive=True)
primitive=(v*s.sqrt(A*v*v+B)-(B/s.sqrt(A))*s.log(s.sqrt(A)*v+s.sqrt(A*v*v+B)))/(2*A)
zero("radial_seed_antiderivative",s.diff(primitive,v)-v*v/s.sqrt(A*v*v+B))

# A nonstationary all-null layer outside the M-massive chart.
ap,bp,ee,c=s.symbols("ap bp ee c",positive=True)
eta_lc=s.Matrix([[0,-1,0,0],[-1,0,0,0],[0,0,1,0],[0,0,0,1]])
plc=s.Matrix([ap,0,0,0])
qlc=s.Matrix([bp,ee*c*c/(2*bp),s.sqrt(ee)*c,0])
omlc=s.Matrix([0,ee*ap*c*c/(2*bp*(bp-ap)),0,0])
rlc=qlc-plc+omlc
mlc=plc-omlc
mass=lambda P:-(P.T*eta_lc*P)[0]
for label,P in [("p",plc),("q",qlc),("r",rlc)]:
    zero("allnull_outside_chart_"+label,mass(P))
zero("allnull_outside_chart_M",mass(mlc)+ee*ap**2*c*c/(bp*(bp-ap)))
cq=-(plc.T*eta_lc*qlc)[0]
cr=-(plc.T*eta_lc*rlc)[0]
Nminus=s.Rational(2,3)*cq*cr*ap**2
zero("allnull_outside_chart_nonzero_N",Nminus-ee**2*ap**4*c**4/(6*bp*(bp-ap)))

mp.mp.dps=42
mm=mp.mpf(1)
hh=mp.mpf("0.2")
vv=mp.mpf("0.3")

def primitive_num(rad,A,B):
    if abs(B)<mp.mpf("1e-65"):
        return rad*rad/(2*mp.sqrt(A))
    root=mp.sqrt(max(mp.mpf(0),A*rad*rad+B))
    arg=mp.sqrt(A)*rad+root
    # At B!=0, this argument is positive at every allowed lower endpoint.
    return (rad*root-(B/mp.sqrt(A))*mp.log(arg))/(2*A)

def splitquad(fun,lo,hi,points):
    pts=sorted(set([lo,hi]+[p for p in points if lo<p<hi]))
    return sum(mp.quad(fun,[a,b]) for a,b in zip(pts[:-1],pts[1:]))

def seed_pair(dval):
    aval=mp.sqrt(mm*mm+dval)
    A=4*(mm*mm+dval)
    bzero=(-mm+aval)/2
    cone=dval/(2*mm)
    def I(rad,H):
        B=dval*dval-4*dval*H*(mm+H)
        return primitive_num(rad,A,B)
    def spacelike(H):
        return -4*mp.pi*(I(vv,H)-I(abs(H),H))
    out=splitquad(spacelike,-hh,hh,[mp.mpf(0),bzero,cone])
    if dval:
        lo=min(mp.mpf(0),cone);hi=max(mp.mpf(0),cone)
        def anomaly(H):
            B=dval*dval-4*dval*H*(mm+H)
            vmin=mp.sqrt(max(mp.mpf(0),-B/A))
            return -8*mp.pi*(I(abs(H),H)-I(vmin,H))
        out+=splitquad(anomaly,lo,hi,[bzero])
    return out

ll=mp.log(vv/hh)
target=mp.pi/(2*mm**5)*(
    2*mm**2*hh*ll-mm**2*hh+mm**2*hh**3/vv**2
    +4*hh**3*ll+4*hh**3/3+3*hh**5/(5*vv**2)-3*hh*vv**2)
rows=[]
for dv in [mp.mpf(".02"),mp.mpf(".01"),mp.mpf(".005"),mp.mpf("-.02"),mp.mpf("-.01"),mp.mpf("-.005")]:
    step=abs(dv)/100
    fnum=(seed_pair(dv+step)-2*seed_pair(dv)+seed_pair(dv-step))/step**2
    rows.append({"d":str(dv),"central_step":str(step),"paired_second_derivative":mp.nstr(fnum,25),
                 "target_at_zero":mp.nstr(target,25),"absolute_difference":mp.nstr(abs(fnum-target),12),
                 "difference_over_dlog":mp.nstr(abs(fnum-target)/(abs(dv)*(1+abs(mp.log(abs(dv))))),12)})
    print(rows[-1],flush=True)

result={"sympy_version":s.__version__,"exact_zero_count":len(checks),"symbolic_checks":checks,
        "numerical_method":"Exact radial antiderivative of locally integrable complete scalar seed, then high-precision central finite difference in d.",
        "test":"1 on |h|<0.2, |v|<0.3 in the m=1 rest frame; discontinuous cutoff boundaries are outside the threshold core.",
        "numeric_rows":rows,
        "numeric_limitation":"Supporting numerical evidence. The arbitrary smooth-test continuity theorem is proved analytically in the companion review."}
Path(__file__).with_name("exact_mass_mismatch_results.json").write_text(json.dumps(result,indent=2)+"\n")
print("exact_zero_count",len(checks),flush=True)
