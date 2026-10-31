#!/usr/bin/env sage --nodotsage
"""Independent finite algebra evidence for the complete hyperbolic CS Hessian.
Run: sage --nodotsage verify_operator.py
No parent/reviewer sources are read.  Derivatives p_i are formal commuting
variables at a normal orthonormal frame; curvature is checked separately.
This script verifies algebra, NOT global spectral/functional analytic claims.
"""
from sage.all import *
from pathlib import Path
import json, hashlib, platform

HERE = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b')
R = PolynomialRing(QQ, names=('p0','p1','p2'))
p = R.gens()

def eps(i,j,k):
    if len({i,j,k}) < 3:
        return 0
    return 1 if (i,j,k) in [(0,1,2),(1,2,0),(2,0,1)] else -1

# One-form components are ordered (form i, internal a), flattened as 3*i+a.
D = matrix(R,9,3,lambda q,b: p[q//3] if q%3==b else 0)
T = matrix(R,9,3,lambda q,b: eps(q%3,q//3,b))
B = matrix(R,9,9,lambda q,r:
    (1 if q//3==q%3 and r//3==r%3 else 0)
    -(1 if r//3==q%3 and r%3==q//3 else 0))
C = matrix(R,9,9,lambda q,r:
    sum(eps(q//3,j,r//3)*p[j] for j in range(3)) if q%3==r%3 else 0)
I9, I3 = identity_matrix(R,9), identity_matrix(R,3)
Z9, Z93, Z3 = zero_matrix(R,9), zero_matrix(R,9,3), zero_matrix(R,3)
P0 = matrix(R,9,9,lambda q,r: QQ(1)/3 if q//3==q%3 and r//3==r%3 else 0)
P1 = matrix(R,9,9,lambda q,r: QQ(1)/2*(
    (1 if q==r else 0)-(1 if r//3==q%3 and r%3==q//3 else 0)))
P2 = I9-P0-P1
Hp = block_matrix([[Z9,C],[C,Z9]])
H0 = block_matrix([[B,Z9],[Z9,-B]])
Gp = block_matrix([[D,Z93],[Z93,D]])
G0 = block_matrix([[Z93,-T],[T,Z93]])
Lp = block_matrix([[Hp,Gp],[-Gp.transpose(),zero_matrix(R,6)]])
L0 = block_matrix([[H0,G0],[G0.transpose(),zero_matrix(R,6)]])
Sf = block_matrix([[Z9,-I9],[I9,Z9]])
Sp = block_matrix([[Z3,-I3],[I3,Z3]])
U = block_diagonal_matrix(Sf,-Sp)

# Hyperbolic internal curvature R^a_{bji}=delta_ai delta_bj-delta_aj delta_bi.
F = lambda a,b,j,i: int(a==i and b==j)-int(a==j and b==i)
internal_weitzenbock = matrix(R,9,9,lambda q,r: F(q%3,r%3,r//3,q//3))
star_curvature = matrix(R,9,3,lambda q,b:
    sum(QQ(1)/2*eps(q//3,j,k)*F(q%3,b,j,k)
        for j in range(3) for k in range(3)))

checks = {
    'B_is_symmetric': B == B.transpose(),
    'B_irreducible_split': B == 2*P0+P1-P2,
    'B_squared': B*B == I9+3*P0,
    'Tadj_T_is_two': T.transpose()*T == 2*I3,
    'T_Tadj_is_twice_antisym': T*T.transpose() == 2*P1,
    'algebraic_square_potential': B*B+T*T.transpose() == 2*I9+B,
    'gauge_scalar_offdiagonal': D.transpose()*T+T.transpose()*D == zero_matrix(R,3),
    'gauge_HG_derivative': B*D+C*T == zero_matrix(R,9,3),
    'curl_gradient_principal_zero': C*D == zero_matrix(R,9,3),
    'gauge_HG_curvature': star_curvature == B*T,
    'twisted_Weitzenbock_internal_term': internal_weitzenbock == B,
    'field_square_first_order_cancellation': B*C-C*B+D*T.transpose()+T*D.transpose() == Z9,
    'L_derivative_is_skew': Lp.transpose() == -Lp,
    'L_potential_is_symmetric': L0.transpose() == L0,
    'elliptic_principal_square': Lp*Lp == -sum(pi*pi for pi in p)*identity_matrix(R,24),
    'no_first_order_term_in_square': Lp*L0+L0*Lp == zero_matrix(R,24),
    'grading_unitary_real': U.transpose()*U == identity_matrix(R,24),
    'grading_square_minus_one': U*U == -identity_matrix(R,24),
    'grading_derivative_anticommutes': U*Lp+Lp*U == zero_matrix(R,24),
    'grading_potential_anticommutes': U*L0+L0*U == zero_matrix(R,24),
}

# Direct quadratic CS expansion with tr(T_a T_b)=-delta_ab/2.
# d_w,d_f denote D w,D f; e_w,e_f denote [e,w],[e,f].
K = QuadraticField(-1,'ii'); ii = K.gen()
A = PolynomialRing(K,names=('w','f','dw','df','ew','ef'))
w,f,dw,df,ew,ef = A.gens()
cs2 = ii*(-QQ(1)/2)*((w+ii*f)*(dw-ef+ii*(df+ew))
                          -(w-ii*f)*(dw-ef-ii*(df+ew)))
checks['direct_CS_quadratic_sign_and_half'] = cs2 == w*df+f*dw+w*ew-f*ef

# Exact rational thermal character identity after ghost cancellation.
V = FractionField(PolynomialRing(QQ,names=('x','z')))
x,z = V.gens()
cos1, cos2 = (z+1/z)/2, (z*z+1/(z*z))/2
den = (1-x*z)*(1-x/z)
checks['thermal_gravity_character_identity'] = (
    2*(x*x*cos2-x*x*x*cos1)/den
    == (x*z)**2/(1-x*z)+(x/z)**2/(1-x/z))

# Principal-series numerical block sizes and squared thresholds, not a proof
# of the global quotient Plancherel theorem.
thresholds = {'m=0': {'L_block_size':8,'eigenvalues_each_sign':4,'square':'lambda^2+5'},
              '|m|=1': {'L_block_size_per_helicity':6,'eigenvalues_each_sign':3,'square':'lambda^2+4'},
              '|m|=2': {'L_block_size_per_helicity':2,'eigenvalues_each_sign':1,'square':'lambda^2+1'}}
result = {
    'provenance': 'Fresh independent derivation; no parent or reviewer conclusions used.',
    'source_sha256': hashlib.sha256((HERE/'verify_operator.py').read_bytes()).hexdigest(),
    'sage_version': str(version()),
    'python_version': platform.python_version(),
    'checks': {name: bool(value) for name,value in checks.items()},
    'B_characteristic_polynomial': str(B.change_ring(QQ).charpoly().factor()),
    'L0_characteristic_polynomial': str(L0.change_ring(QQ).charpoly().factor()),
    'principal_series_blocks': thresholds,
    'limitations': ['Finite algebra checks do not prove essential selfadjointness, Sobolev domains, Weyl sequence estimates, or the thermal trace formula. These are separately derived in derivation.md.']
}
(HERE/'verification-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
for name,value in checks.items():
    print(('PASS ' if value else 'FAIL ')+name)
print('B characteristic polynomial:',result['B_characteristic_polynomial'])
print('L0 characteristic polynomial:',result['L0_characteristic_polynomial'])
print('ALL_CHECKS_PASSED:',all(checks.values()))
print('RESULT:',HERE/'verification-result.json')
assert all(checks.values())
