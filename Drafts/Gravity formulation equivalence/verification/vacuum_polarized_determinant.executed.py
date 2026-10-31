"""Parent exact algebra: polarized Witt determinant and the isotropy trap.

Run as ordinary Python under Sage, in a fresh process (no preparsing).
This is NOT a bulk-gravity determinant or a construction of an infinite
half-form Hilbert space. The finite-crossing trace is exactly specified.
Every run writes a new private result directory, never prior evidence.
"""
from sage.all import QQ, ZZ, PolynomialRing, matrix, save
from sage.version import version as sage_version
from pathlib import Path
import hashlib
import json
import os
import tempfile

R = PolynomialRing(QQ, names=('m', 'n', 'r', 's', 'lam', 'j'))
m, n, r, s, lam, j = R.gens()
checks = {}
details = {}

def record(label, condition):
    if condition is not True and condition is not False:
        raise TypeError('Non-Boolean check: ' + label)
    checks[label] = condition

# rho_m e_j = -(j + lam*m) e_(j+m); lam=-1 is the adjoint module.
rep_lhs = (-(j+lam*n))*(-(j+n+lam*m)) - (-(j+lam*m))*(-(j+m+lam*n))
rep_rhs = (m-n)*(-(j+lam*(m+n)))
record('tensor_density_Witt_representation_polynomial', rep_lhs == rep_rhs)

# For m>0 the trace receives contributions only from j=r,...,r+m-1.
# Exact Faulhaber sums apply to this polynomial, with m a positive integer.
S0 = m
S1 = m*(m-1)/2
S2 = m*(m-1)*(2*m-1)/6
summed = (r*r-m*r+lam*(1-lam)*m*m)*S0 + (2*r-m)*S1 + S2
sigma = -(6*lam*lam-6*lam+1)*m**3/6 + (r*r-r+QQ(1)/6)*m
record('finite_crossing_sum_general_weight_and_threshold', summed == sigma)
details['general_sigma_m_minus_m'] = str(sigma)
details['general_determinant_central_coefficient'] = str(-2*(6*lam*lam-6*lam+1))

# The diagonal cocycle is zero unless m+n=0. Its only nontrivial CE test
# occurs for third mode ell=-m-n. This is a full polynomial identity.
ell = -m-n
sig = lambda x: -(6*lam*lam-6*lam+1)*x**3/6 + (r*r-r+QQ(1)/6)*x
ce = (m-n)*sig(m+n) + (n-ell)*sig(n+ell) + (ell-m)*sig(ell+m)
record('Chevalley_Eilenberg_cocycle_polynomial', ce == 0)
record('threshold_change_is_explicit_zero_mode_cochain',
       sigma - sigma.subs({r:s}) == 2*m*(r*r-r-s*s+s)/2)

adj = sigma.subs({lam:-1})
vac = -QQ(13)/6*(m**3-m)
record('adjoint_threshold_minus_one_vacuum_cocycle', adj.subs({r:-1}) == vac)
record('adjoint_threshold_two_same_vacuum_cocycle', adj.subs({r:2}) == vac)
record('dual_half_determinant_algebraic_cocycle', -vac/2 == QQ(13)/12*(m**3-m))
record('vacuum_cocycle_vanishes_on_projective_subalgebra',
       all(vac.subs({m:a}) == 0 for a in [-1,0,1]))
details['adjoint_vacuum_cocycle'] = str(vac)
details['dual_half_cocycle_if_that_line_is_chosen'] = str(-vac/2)

# Independent implementation: actual finite band matrices. The chosen box
# extends beyond every crossing, so its artificial ends cannot contribute.
B = 17
indices = list(range(-B,B+1))
pos = {a:i for i,a in enumerate(indices)}
size = len(indices)
identity = matrix.identity(QQ,size)

def rho(a, weight):
    out = matrix(QQ,size,size)
    for b in indices:
        if b+a in pos:
            out[pos[b+a],pos[b]] = -(b+weight*a)
    return out

mode_range = list(range(-5,6))
weights = [QQ(-1),QQ(0),QQ(1)/2,QQ(2)]
thresholds = [-2,-1,0,1,2,3]
all_matrix = True
matrix_count = 0
for weight in weights:
    matrices = {a:rho(a,weight) for a in mode_range}
    for threshold in thresholds:
        P = matrix.diagonal(QQ,[1 if a>=threshold else 0 for a in indices])
        Q = identity-P
        for a in mode_range:
            for b in mode_range:
                actual = (P*matrices[a]*Q*matrices[b]*P - P*matrices[b]*Q*matrices[a]*P).trace()
                expected = (-(6*weight*weight-6*weight+1)*QQ(a)**3/6
                            +(threshold*threshold-threshold+QQ(1)/6)*a) if a+b==0 else QQ(0)
                all_matrix = all_matrix and actual == expected
                matrix_count += 1
record('finite_band_crossing_matrices_match_polynomial', all_matrix)
details['matrix_comparisons'] = matrix_count

# Removing the sl2 modes from the ambient module BEFORE taking the trace
# is a different operation. The compressed rho is no longer a representation.
physical = [a for a in indices if abs(a)>=2]
phys_pos = {a:i for i,a in enumerate(physical)}
D = len(physical)

def compressed_rho(a):
    out = matrix(QQ,D,D)
    for b in physical:
        if b+a in phys_pos:
            out[phys_pos[b+a],phys_pos[b]] = a-b
    return out

A2,Am2,A0 = compressed_rho(2),compressed_rho(-2),compressed_rho(0)
defect = A2*Am2-Am2*A2-4*A0
record('compressed_action_has_nonzero_interior_representation_defect',
       defect[phys_pos[2],phys_pos[2]] == 8)

Pp = matrix.diagonal(QQ,[1 if a>=2 else 0 for a in physical])
Qp = matrix.identity(QQ,D)-Pp

def bad_sigma(a,b):
    A,Bm = compressed_rho(a),compressed_rho(b)
    return (Pp*A*Qp*Bm*Pp-Pp*Bm*Qp*A*Pp).trace()

bad_ce = (2-3)*bad_sigma(5,-5)+(3+5)*bad_sigma(-2,2)+(-5-2)*bad_sigma(-3,3)
record('naively_compressed_trace_fails_cocycle_Jacobi', bad_ce == 112)
details['compressed_Jacobi_counterexample_modes'] = [2,3,-5]
details['compressed_Jacobi_residual'] = str(bad_ce)
details['compressed_diagonal_examples'] = {str(a):str(bad_sigma(a,-a)) for a in range(1,7)}

# Rotation-only energy offsets do not change the cubic central coefficient.
Palg = PolynomialRing(QQ,names=('c','cp','a','k'))
c,cp,a,k = Palg.gens()
new_central = c*(k**3-k)/12 - 2*a*k
record('constant_energy_shift_keeps_cubic_central_coefficient',
       new_central.monomial_coefficient(k**3*c) == QQ(1)/12)
record('projective_vacuum_normalization_forces_offset_zero',
       new_central.subs({k:1}) == -2*a)
details['constant_zero_mode_shift_central_term'] = str(new_central)

# Thermal Ward relation is formal coefficientwise: F_n-q^n F_n=2n D Z+k_n Z.
# Check the finite-energy recurrence from this relation, not a new independent
# proof of operator trace cyclicity. No universal PBW Gram computation is used.
T = PolynomialRing(QQ,names=('q','cc'))
q,cc = T.gens()
cutoff = 14
coeffs = [ZZ(0)]*(cutoff+1)
coeffs[0] = 1
for part in range(2,cutoff+1):
    for level in range(part,cutoff+1):
        coeffs[level] += coeffs[level-part]
Z = sum(T(coeffs[k])*q**k for k in range(cutoff+1))
ward_ok = True
ward_records = {}
for mode in (2,3,4):
    central = cc*mode*(mode*mode-1)/12
    values=[]
    for level in range(cutoff+1):
        prev = values[level-mode] if level>=mode else T(0)
        values.append(prev+(2*mode*level+central)*coeffs[level])
    FF=sum(values[level]*q**level for level in range(cutoff+1))
    residual=(1-q**mode)*FF-2*mode*q*Z.derivative(q)-central*Z
    ward_ok = ward_ok and all(residual.coefficient({q:k}) == 0 for k in range(cutoff+1))
    ward_records[str(mode)] = str(FF)
record('thermal_Ward_recurrence_coefficients_through_level14', ward_ok)
details['thermal_series_scope'] = 'Recurrence/series check only; analytic trace argument is separate.'
details['descendant_coefficients_through_level14'] = [int(x) for x in coeffs]
details['thermal_numerator_series'] = ward_records

source_path=Path(__file__).resolve()
source_bytes=source_path.read_bytes()
payload = dict(kernel='SageMath '+sage_version, normalization='hbar=1; Witt [l_m,l_n]=(m-n)l_(m+n)',
               scope='Algebraic finite-crossing determinant cocycle, isotropy counterexample, and formal Ward recurrence',
               source=str(source_path),source_sha256=hashlib.sha256(source_bytes).hexdigest(),
               checks=checks,check_count=len(checks),all_passed=all(checks.values()),details=details)
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='vacuum-polarized-',dir=store))
(out/'executed-source.py').write_bytes(source_bytes)
(out/'result.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
save(dict(general_sigma=sigma,adjoint_sigma=vac,checks=checks),str(out/'exact.sobj'))
print(json.dumps(dict(all_passed=payload['all_passed'],check_count=len(checks),matrix_comparisons=matrix_count,
                     result=str(out/'result.json'),exact=str(out/'exact.sobj'),executed_source=str(out/'executed-source.py'))))
