"""Independent exact checks for the 2026-10-21 Einstein/contact investigation.

No repository implementation is imported.  Run with SymPy and mpmath installed:
    python verify_gravity_and_contact.py
The accompanying report supplies the proofs and the physical assumptions.
"""
from pathlib import Path
import json
import sympy as s
import mpmath as mp
from sympy.integrals.rationaltools import ratint

out = {}
def zero(name, expression):
    r = s.factor(s.simplify(expression))
    if r != 0:
        raise AssertionError((name, r))
    out[name] = True

x = s.symbols('x', positive=True)
d = s.symbols('d', positive=True)
mu = d*(d-2)
U = s.symbols('U')
uprime = d*(x**2-x**(2*d))/(4*x*(1-x**2))-U/x
usecond = s.diff(uprime,x)+s.diff(uprime,U)*uprime
zero('ground_mixed_sign_constraint',-x*x*(1-x*x)*usecond+2*x**3*uprime+2*U-d*(d-1)*x**(2*d)/2)
f = (1-x**4)/x**2
g = d*(1-x**2)*(1+x**(2*d-2))/2
mixed_density = -d*d*x**(2*d-1)*U+mu*x**(2*d-3)*U-4*U*U/x**3
total_derivative = s.diff(f,x)*U**2+2*f*U*uprime+s.diff(g,x)*U+g*uprime
zero('ground_mixed_density_total_derivative',
     mixed_density-total_derivative+d*d*(x-x**(4*d-3))/8)

L = lambda z: -x*x*(1-x*x)*s.diff(z,x,2)+2*x**3*s.diff(z,x)+2*z
usame = -d*x**(2*d)/(4*(2*d+1))
rho_same = d*(d-1)*x**(2*d)-d*d*x**(2*d+2)
zero('ground_same_sign_constraint', L(usame)-rho_same/2)

a = s.symbols('a', positive=True)
F0 = 2/(a*(a+2))
ibp_integral = -F0**2/2+1/(2*a*a)-1/(2*a*(a+1))
zero('momentum_integral_ibp', ibp_integral-1/(2*(a+1)*(a+2)**2))
Bs = d**3/(8*(2*d+1)**2)-d*d/(16*(2*d+1)) \
     -d*mu/(4*(2*d+1)*(4*d-2))-d*d/(4*(2*d+1)**2*(4*d-2))
Bm = -d*d*(d-1)/(8*(2*d-1))
ground = s.factor(32*Bs+64*Bm)
zero('ground_gravitational_coefficient',
     ground-2*d*d*(7+2*d-8*d*d)/(4*d*d-1))
out['ground_coefficient'] = str(ground)
r=s.symbols('r', positive=True)
radial=r*(1+r*r)**(-(d+1)/2)
kg=s.diff(r*(1+r*r)*s.diff(radial,r),r)/r+(d+3)**2*radial/(1+r*r)-radial/r**2-mu*radial
zero('negative_j_counterexample_KG_residual',kg/radial-4*(d+2)/(1+r*r))

# All-index Jacobi moment reduction.  The endpoint value p=P_n(1) cancels.
n, p = s.symbols('n p')
D = lambda aa: (n+aa)*(n+4-aa)
K = 8*(n+1)*(n+2)/((2*n+1)*(2*n+3)*(2*n+5)*(2*n+7))
I2 = 2*p/D(s.Integer(2))
I3 = (2*p-2*I2)/D(s.Integer(3))
i = s.symbols('i')
Ihalf = s.solve(s.Eq(s.Rational(8,3)*p-s.Rational(4,3)*D(s.Rational(5,2))*i
                -2*i+(2*p-s.Rational(15,4)*i)/D(s.Rational(7,2)),K),i)[0]
Iseven = (2*p-s.Rational(15,4)*Ihalf)/D(s.Rational(7,2))
j3,j4,j5,j6 = [v/2 for v in (I2,Ihalf,I3,Iseven)]
ar = s.factor((n+5)*(j3-2*j4+j5)+(2*n+7)*(j4-2*j5+j6))
br = s.factor((1-n)*(j3-2*j4+j5)-(2*n+1)*(j4-2*j5+j6))
ae = 9/(2*(n+2)*(2*n+1)*(2*n+3)*(2*n+5))
be = 9*(n+1)/(2*(n+2)*(n+3)*(2*n+3)*(2*n+5)*(2*n+7))
zero('all_n_A_moment',ar-ae)
zero('all_n_B_moment',br-be)
term = 27/((n+2)*(2*n+1)*(2*n+3)**2*(2*n+5)**2*(2*n+7))
zero('all_n_radial_OFPT_summand',4*(n+2)*(n+3)*ar*br/(3*(n+1))-term)
out['A_raw'] = str(ar)
out['B_raw'] = str(br)

# Original derivative-containing radial vertices, without their common N sqrt
# normalization.  Each integrand reduces to a polynomial at integer n.
finite_vertices = []
pweight = (1-x)*(1+2*x)/(x*(1+x))
for nn in range(9):
    jac = s.jacobi(nn,1,2,1-2*x*x)
    R = x*x*(1-x*x)*jac
    w = 4+2*nn
    Aintegrand = s.cancel(pweight*(2*w*R*x*x+2*x*(1-x*x)*s.diff(R,x))/4)
    Bintegrand = s.cancel(pweight*(-2*w*R*x*x+2*x*(1-x*x)*s.diff(R,x))/4)
    av = s.integrate(Aintegrand,(x,0,1))
    bv = s.integrate(Bintegrand,(x,0,1))
    zero(f'original_radial_vertex_A_{nn}',av-ae.subs(n,nn))
    zero(f'original_radial_vertex_B_{nn}',bv-be.subs(n,nn))
    finite_vertices.append({'n':nn,'A_raw':str(av),'B_raw':str(bv)})
out['direct_radial_vertices'] = finite_vertices

apart = (s.Rational(3,64)/(2*n+7)+s.Rational(189,64)/(2*n+5)
         +s.Rational(27,16)/(2*n+5)**2+s.Rational(189,64)/(2*n+3)
         -s.Rational(27,16)/(2*n+3)**2+s.Rational(3,64)/(2*n+1)-3/(n+2))
zero('radial_summand_partial_fractions',term-apart)
linear_offset = s.Rational(3)-s.Rational(3,64)*(63+63*s.Rational(4,3)+s.Rational(23,15))
square_offset = -s.Rational(27,16)/9
zero('infinite_sum_constant',linear_offset+square_offset+s.Rational(83,20))
mp.mp.dps=80
limit=6*mp.log(2)-mp.mpf(83)/20
partial=sum(mp.mpf(27)/((k+2)*(2*k+1)*(2*k+3)**2*(2*k+5)**2*(2*k+7)) for k in range(101))
bound=mp.mpf(9)/(128*100**6)
assert 0 < limit-partial < bound
out['sum_limit']='6 log(2) - 83/20'
out['sum_numeric']=str(limit)
out['partial_n_le_100_error']=str(limit-partial)
out['rigorous_tail_bound_n_gt_100']=str(bound)

# Independently evaluate the three uncontracted mixed radial densities.
y=s.symbols('y', positive=True)
Ly=lambda z:-(y*y-1)*s.diff(z,y,2)-2*y*s.diff(z,y)+2*z
zero('mixed_gravity_pair_scalar_constraint',Ly(-(y+3)/(12*(y+1)**3))+3/(y+1)**4)
F=s.Rational(2,15)-1/(3*y**3)+1/(5*y**5)
AA=F/(y*y-1)
zero('mixed_ground_pair_momentum_constraint',s.diff(AA,y)+2*y*AA/(y*y-1)-y**(-6))
densities=[
 -(y**4+4*y**3+26*y*y+20*y+15)/(15*y**5*(y+1)**4),
 4*(y+2)/(y+1)**4*(s.Rational(2,15)-1/(3*y**3)+1/(5*y**5)),
 (y-1)*(4*y**5+7*y**4-4*y**3-17*y*y-20*y-6)/(12*y**6*(y+1)**3)]
expected=[s.Rational(3067,180)-s.Rational(74,3)*s.log(2),
          -s.Rational(116,9)+s.Rational(56,3)*s.log(2),6*s.log(2)-s.Rational(83,20)]
for k,(density,e) in enumerate(zip(densities,expected)):
    primitive=ratint(density,y)
    zero(f'mixed_contact_integral_{k}',s.limit(primitive,y,s.oo)-primitive.subs(y,1)-e)
primitive=-(y-1)*(78*y**5+203*y**4+170*y**3+47*y*y-84*y-18)/(180*y**5*(y+1)**3)
zero('mixed_total_density_derivative',sum(densities)-s.diff(primitive,y))
zero('mixed_primitive_center',primitive.subs(y,1))
zero('mixed_primitive_boundary',s.limit(primitive,y,s.oo))

# Sharp, all-channel relative form bound for scalar contact on gravity residual.
C,m=s.symbols('C m')
R=8*C-4*m-2*(C+m)**2/(4*C-3)
Rdivision=s.Rational(15,2)*C-5*m-s.Rational(3,8)-(4*m+3)**2/(8*(4*C-3))
zero('residual_polynomial_division',R-Rdivision)
zero('residual_derivative',s.diff(R,C)-s.Rational(15,2)-(4*m+3)**2/(2*(4*C-3)**2))
r0=2*d*d*(2*d+5)/(2*d+1)
zero('residual_ground_removable_extension',R.subs({C:d*(d-1),m:mu})-r0)
r1=R.subs({C:d*(d+1),m:mu})
zero('residual_first_gap',r1-r0-16*d*(d+1)*(4*d+3)/((2*d+1)*(2*d+3)))
NN,Q=s.symbols('N Q')
single=d*(d-2)/4
total=(NN*d/2+Q)*(NN*d/2+Q-1)
baseline=4*mu*NN*(NN-1)/2-8*(total+NN*(NN-2)*single)
zero('many_body_Casimir_baseline',baseline+2*NN*(NN-1)*d*d+8*Q*(NN*d+Q-1))
out['sharp_contact_threshold_alpha']=str(-r0)
out['checks_passed']=sum(v is True for v in out.values())
target=Path(__file__).with_name('verification_results.json')
target.write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({'checks_passed':out['checks_passed'],'result':str(target)},indent=2))
