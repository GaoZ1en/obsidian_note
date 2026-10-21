"""Fresh full-block closure audit. Execute as Python inside a fresh Sage kernel.
No candidate mixed coefficient is input. All contacts start from the ADM
constraint and boundary-weight transformation in the preserved source.
Only mixed four-leg quantities are evaluated; no one-body test is rerun.
"""
import itertools
import json
import warnings
from pathlib import Path
warnings.filterwarnings("ignore", category=DeprecationWarning)
import sympy as s

OUT = Path("/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison")
checks = {}
results = {}
y, x = s.symbols("y x", positive=True)
ell = s.Symbol("log2", real=True)
pi = s.pi

def exact(label, expr):
    residual = s.factor(s.cancel(expr))
    checks[label] = (residual == 0)
    if residual != 0:
        results[label + "_residual"] = str(residual)

def L0(u):
    return -(y*y-1)*s.diff(u,y,2)-2*y*s.diff(u,y)+2*u

def rational_integral_1_inf(expr):
    """Exact integral for poles only at 0,-1 and no polynomial part.
    The integrand in this audit has overall 1/pi. Keep log(2) formal to
    avoid SymPy combining it into a logarithm of a giant integer.
    """
    ap = s.apart(s.cancel(pi*expr),y)
    aa = [ap.coeff(y**(-k)) for k in range(1,9)]
    bb = [ap.coeff((y+1)**(-k)) for k in range(1,9)]
    recon = sum(aa[k-1]/y**k+bb[k-1]/(y+1)**k for k in range(1,9))
    assert s.cancel(ap-recon) == 0
    assert aa[0]+bb[0] == 0
    value = aa[0]*ell + sum(aa[k-1]/(k-1)+bb[k-1]/((k-1)*s.Integer(2)**(k-1)) for k in range(2,9))
    return s.expand(value)/pi, aa, bb

# Enumerate the COMPLETE even-scalar-parity E=4,J=0 free block at Delta=2.
scalar_modes = [("b_%s_%s"%(n,j),2+2*n+abs(j),j,1)
                for n in range(2) for j in range(-2,3) if 2+2*n+abs(j)<=4]
grav_modes = [("a_%s_%s"%(m,sgn),m,sgn*m,0) for m in range(2,5) for sgn in (-1,1)]
modes = scalar_modes+grav_modes
block = []
for ns in itertools.product(*[range(4//e+1) for _,e,_,_ in modes]):
    if sum(n*mode[1] for n,mode in zip(ns,modes)) != 4: continue
    if sum(n*mode[2] for n,mode in zip(ns,modes)) != 0: continue
    if sum(n*mode[3] for n,mode in zip(ns,modes))%2: continue
    block.append({mode[0]:n for n,mode in zip(ns,modes) if n})
results["complete_even_E4_J0_block"] = block
checks["minimal_block_has_exactly_two_states"] = (len(block)==2)

# Oscillator commutator on leading Weyl symbols: [a,a*]_cl=1.
a,ad,c,cd,b,bd = s.symbols("a ad c cd b bd")
ann=[a,c,b]; cre=[ad,cd,bd]
def cb(F,G):
    return s.expand(sum(s.diff(F,u)*s.diff(G,v)-s.diff(F,v)*s.diff(G,u) for u,v in zip(ann,cre)))
H0=2*(ad*a+cd*c+bd*b)
J0=2*(ad*a-cd*c)
lam=s.Symbol("lambda",real=True)
bad=lam*(ad*cd*b*b+a*c*bd*bd)
exact("mixed_counterexample_free_energy_resonant",cb(H0,bad))
exact("mixed_counterexample_rotationally_invariant",cb(J0,bad))
exact("mixed_obstruction_is_nonzero",cb(bad,a)+lam*cd*b*b)
checks["mixed_obstruction_really_nonzero"] = (cb(bad,a)!=0)
exact("mixed_obstruction_has_weight_minus_two",cb(H0,cd*b*b)+2*cd*b*b)
# Thus (ad H0+2)Q1 cannot cancel this monomial: it is in its kernel.

# Moyal degree test: [a^3,(a*)^3]_W = 9 a^2(a*)^2 + 3/2.
F=a**3; GG=ad**3
weyl_comm=0
for k in (1,3):
    term=sum((-1)**j*s.binomial(k,j)*s.diff(F,a,k-j,ad,j)*s.diff(GG,ad,k-j,a,j) for j in range(k+1))
    weyl_comm += 2*term/(2**k*s.factorial(k))
exact("cubic_cubic_Weyl_degree_four_and_zero",weyl_comm-9*a*a*ad*ad-s.Rational(3,2))
results["cubic_cubic_Weyl_commutator"] = str(weyl_comm)

# Ground scalar annihilation-pair sources, including angular normalization.
R=1/(s.sqrt(2*pi)*y**2)
chi=-2*s.I/(s.sqrt(2*pi)*y**3)
rho=s.factor((chi*chi+(y*y-1)*s.diff(R,y)**2)/2)
uphi=-1/(20*pi*y**4)
Fmom=s.Rational(2,15)-1/(3*y**3)+1/(5*y**5)
Aphi=s.I*Fmom/(pi*(y*y-1))
exact("ground_scalar_annihilation_density",rho-(y**(-4)-2*y**(-6))/pi)
exact("ground_scalar_conformal_response",L0(uphi)-rho/2)
# Momentum divergence in y coordinates: A_y+2y A/(y²−1)=j_y.
jy=chi*s.diff(R,y)/2
exact("ground_scalar_momentum_response",s.diff(Aphi,y)+2*y*Aphi/(y*y-1)-jy)
checks["ground_pair_has_zero_boundary_conformal_charge"] = (s.limit(y*y*uphi,y,s.oo)==0)

# m=2 creation modes: eta_sigma*=+i sigma N exp(-i sigma m theta),
# tau_sigma*=-i N Hessian(p exp(-i sigma m theta)).
N2=1/(48*pi)
N=s.sqrt(N2)
p=(y-1)*(y+2)/(y+1)
Am=6/(y+1)**2
# tau+:tau- coefficient includes both orders in tau:tau.
tau_pair=-8*N2*Am**2
utau=-(y+3)/(12*pi*(y+1)**3)
exact("opposite_chirality_momentum_pair",tau_pair+6/(pi*(y+1)**4))
exact("gravitational_pair_conformal_response",L0(utau)-tau_pair/2)

# Direct p²phi² contact: no mixed cancellation coefficient is supplied.
cp_density=s.factor(2*pi*y*(-utau*chi**2-8*uphi*utau-2*uphi*tau_pair))
Cp,aa,bb=rational_integral_1_inf(cp_density)
results["p2phi2_density"] = str(cp_density)
results["p2phi2_coefficient_kappa2_ad_cd_b2"] = str(Cp)

# Boundary density cubic: L u3=tau:t_phi and C3=(1/3) integral p(tau:t_phi).
# Its weight-two embedding gives 6 integral eta' C3. Both graviton orders
# included; eta'_sigma*=2N exp(-i sigma 2 theta). The cotangent momentum
# pullback P_body=P-kappa(eta P)' has zero zero-harmonic correction here.
# Eta² term vanishes because C_phi,bb=0, established above.
tau_phi_source=s.factor(2*(-s.I*N*Am)*Aphi)
qp_density=s.factor(2*(2*pi)*(2*N)*2*p*tau_phi_source)
Cqp,aq,bq=rational_integral_1_inf(qp_density)
results["eta_p_phi2_density"] = str(qp_density)
results["eta_p_phi2_coefficient_kappa2_ad_cd_b2"] = str(Cqp)
results["eta2phi2_coefficient_kappa2_ad_cd_b2"] = "0"

# Independent direct evaluation of the mixed-cubic normal-form term.
# With E_f=int f rho and v_g=y grad g-g grad y,
# [E_f,[Hphi,E_g]]_cl=int[(v_g.grad f)rho-f grad^i v_g^j d_i phi d_j phi].
v=s.factor((y*y-1)*(y*s.diff(p,y)-p))
Av=s.factor((y*y-1)*(y*s.diff(p,y)-p)*s.diff(p,y)+4*y*p*p/(y*y-1))
Bv=s.factor((y*y-1)*s.diff(v,y)-y*v)
cc_density=s.factor(2*pi*N2*(Av*rho-p*Bv*s.diff(R,y)**2))
Ccc,ac,bc=rational_integral_1_inf(cc_density)
results["mixed_cubic_density"] = str(cc_density)
results["mixed_cubic_coefficient_kappa2_ad_cd_b2"] = str(Ccc)
exact("complete_minimal_mixed_coefficient",Cp+Cqp+Ccc)
results["normalized_matrix_element_divided_by_G"] = str(s.expand(16*pi*s.sqrt(2)*(Cp+Cqp+Ccc)))

# Stronger integral check: the entire sum is a rational endpoint derivative.
AA=[s.simplify(u+v+w) for u,v,w in zip(aa,aq,ac)]
BB=[s.simplify(u+v+w) for u,v,w in zip(bb,bq,bc)]
assert AA[0]==BB[0]==0
primitive=s.factor(-sum(AA[k-1]/((k-1)*y**(k-1))+BB[k-1]/((k-1)*(y+1)**(k-1)) for k in range(2,9))/pi)
exact("sum_is_exact_endpoint_derivative",cp_density+qp_density+cc_density-s.diff(primitive,y))
checks["total_primitive_vanishes_at_center"] = (s.cancel(primitive.subs(y,1))==0)
checks["total_primitive_vanishes_at_infinity"] = (s.limit(primitive,y,s.oo)==0)
results["total_integrand_primitive"] = str(primitive)

# Independent OFPT radial spectral partial sum. Only j=+-2 internal scalars
# occur. This uses KG-normalized Jacobi modes, NOT the local bracket above.
# A_n: D b_J^dag b0; B_n: D^dag b_J b0. Their two chiral contributions
# yield Ccc=2 sum (2n+4) A_n B_n. The following is numerical support,
# while the local canonical bracket and endpoint identity are exact.
rows=[]
partial=s.Rational(0)
for n in range(25):
    Rn=(x*x-x**4)*s.jacobi(n,1,2,1-2*x*x)
    R0=x*x
    w=4+2*n
    pp=(1-x)*(1+2*x)/(x*(1+x))
    Apoly=s.Poly(s.cancel(pp*(2*w*Rn*R0+(1-x*x)*s.diff(Rn,x)*s.diff(R0,x))),x)
    Bpoly=s.Poly(s.cancel(pp*(-2*w*Rn*R0+(1-x*x)*s.diff(Rn,x)*s.diff(R0,x))),x)
    An=sum(coeff/s.Integer(power[0]+1) for power,coeff in Apoly.terms())
    Bn=sum(coeff/s.Integer(power[0]+1) for power,coeff in Bpoly.terms())
    term=s.cancel(2*s.Rational(n+3,n+1)*(2*n+4)*An*Bn/48)
    partial+=term
    if n in (0,1,2,4,8,16,24):
        target=s.expand(pi*Ccc).subs(ell,s.log(2))
        rows.append({"nmax":n,"pi_times_partial":str(partial),"absolute_error":str(s.N(abs(partial-target),18))})
results["independent_radial_OFPT_partial_sums"] = rows
checks["radial_OFPT_n24_agrees_to_1e_minus_8"] = bool(abs(float(s.N(partial-(pi*Ccc).subs(ell,s.log(2)),18)))<1e-8)

results["checks"] = checks
results["all_checks_pass"] = all(checks.values())
results["scope"] = "Fresh classical connected mixed four-leg audit; no completed quantum one-body Ward identity is tested or inferred."
path=OUT/"results/audit2_closure_checks.json"
path.parent.mkdir(parents=True,exist_ok=True)
path.write_text(json.dumps(results,indent=2),encoding="utf-8")
print(json.dumps({"all_checks_pass":results["all_checks_pass"],"checks":checks,"coefficients":{k:v for k,v in results.items() if "coefficient_kappa2" in k},"radial_OFPT_partial_sums":rows,"output":str(path)},indent=2))
