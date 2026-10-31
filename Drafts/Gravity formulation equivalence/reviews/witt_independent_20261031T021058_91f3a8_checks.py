# Independent exact audit. Run with SageMath 10.9, without preparsing.
# Readable equivalent of the self-contained code supplied to mcp__sage__sage_run.
# The byte-exact executed input and complete server response are in the raw JSON.
# Output is created exclusively; no pre-existing file is overwritten.
from sage.all import QQ, ZZ, PolynomialRing, matrix, identity_matrix, version
from pathlib import Path

OUTPUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/witt_independent_20261031T021058_91f3a8_stdout.txt')
lines = []
def emit(x=''):
    lines.append(str(x))

def sigma_formula(m, n, r):
    if m + n != 0:
        return QQ(0)
    return -QQ(13)/6*m**3 + (r*r-r+QQ(1)/6)*m

def crossing_trace(m, n, r):
    # Directly apply the two crossing paths to every potentially contributing
    # occupied basis vector. No closed formula is used in this implementation.
    ans = ZZ(0)
    for j in range(r, r+abs(m)+abs(n)+2):
        intermediate = j+n
        if intermediate < r and intermediate+m == j:
            ans += (n-j)*(m-intermediate)
        intermediate = j+m
        if intermediate < r and intermediate+n == j:
            ans -= (m-j)*(n-intermediate)
    return ans

def physical_crossing_trace(m, n):
    # Q rho Q on T=span{e_j: |j|>=2}; plus j>=2, minus j<=-2.
    ans = ZZ(0)
    for j in range(2, 2+abs(m)+abs(n)+2):
        intermediate = j+n
        if intermediate <= -2 and intermediate+m == j:
            ans += (n-j)*(m-intermediate)
        intermediate = j+m
        if intermediate <= -2 and intermediate+n == j:
            ans -= (m-j)*(n-intermediate)
    return ans

def rho_matrix(mode, cutoff):
    entries = {}
    for j in range(-cutoff, cutoff+1):
        target = j+mode
        if -cutoff <= target <= cutoff and mode != j:
            entries[(target+cutoff, j+cutoff)] = ZZ(mode-j)
    return matrix(QQ, 2*cutoff+1, 2*cutoff+1, entries, sparse=True)

def apply_physical(mode, state):
    out = {}
    for j, coefficient in state.items():
        target = j+mode
        value = coefficient*(mode-j)
        if abs(target) >= 2 and value:
            out[target] = out.get(target, ZZ(0))+value
    return {j:c for j,c in out.items() if c}

def difference(*terms):
    out = {}
    for scale, state in terms:
        for j,c in state.items():
            out[j] = out.get(j, ZZ(0))+scale*c
    return {j:c for j,c in sorted(out.items()) if c}

emit('INDEPENDENT WITT / POLARIZED TANGENT AUDIT')
emit(version())
emit('Arithmetic: exact QQ/ZZ; no floating point, zeta summation, or fitted coefficients.')
emit()

R = PolynomialRing(QQ, names=('m','n','r','s','a','b','k'))
m,n,r,s,a,b,k = R.gens()
representation_residual = (n-k)*(m-n-k)-(m-k)*(n-m-k)-(m-n)*(m+n-k)
sum_j = m*(m-1)/2
sum_j_squared = m*(m-1)*(2*m-1)/6
crossing_polynomial = m*r*r + 2*r*sum_j + sum_j_squared - m*(m*r+sum_j)-2*m**3
claimed = -QQ(13)/6*m**3+(r*r-r+QQ(1)/6)*m
emit('SYMBOLIC IDENTITIES')
emit('rho commutator residual = '+str(representation_residual))
emit('positive-m finite sum = '+str(crossing_polynomial))
emit('finite-sum minus claimed formula = '+str(crossing_polynomial-claimed))
f = lambda x: a*x**3+b*x
ell = -m-n
jacobi_polynomial = (m-n)*f(m+n)+(n-ell)*f(n+ell)+(ell-m)*f(ell+m)
emit('Jacobi residual for f(x)=a*x^3+b*x, k=-m-n = '+str(jacobi_polynomial))
threshold_residual = (-QQ(13)/6*m**3+(s*s-s+QQ(1)/6)*m)-claimed-(s*(s-1)-r*(r-1))*m
emit('threshold-change residual = '+str(threshold_residual))
emit('sigma_r(1,-1) = '+str((r-2)*(r+1)))
emit()

formula_mismatches = []
formula_count = 0
for ri in range(-8,9):
    for mi in range(-12,13):
        for ni in range(-12,13):
            formula_count += 1
            observed = crossing_trace(mi,ni,ri)
            expected = sigma_formula(mi,ni,ri)
            if observed != expected:
                formula_mismatches.append((mi,ni,ri,observed,expected))
emit('DIRECT FINITE-CROSSING GRID')
emit('r=-8..8; m,n=-12..12; cases = '+str(formula_count))
emit('mismatches = '+str(formula_mismatches))
emit('Table: r; sigma_r(m,-m) for m=1,2,3,4')
for ri in range(-2,4):
    emit(str(ri)+'; '+str([crossing_trace(mi,-mi,ri) for mi in range(1,5)]))
emit()

cutoff = 18
modes = range(-5,6)
operators = {mi:rho_matrix(mi,cutoff) for mi in modes}
Id = identity_matrix(QQ,2*cutoff+1,sparse=True)
matrix_count = 0
matrix_mismatches = []
for ri in range(-3,4):
    P = matrix(QQ,2*cutoff+1,2*cutoff+1,
               {(j+cutoff,j+cutoff):1 for j in range(ri,cutoff+1)},sparse=True)
    Q = Id-P
    for mi in modes:
        for ni in modes:
            matrix_count += 1
            observed = (P*operators[mi]*Q*operators[ni]*P-P*operators[ni]*Q*operators[mi]*P).trace()
            expected = sigma_formula(mi,ni,ri)
            if observed != expected:
                matrix_mismatches.append((mi,ni,ri,observed,expected))
emit('INDEPENDENT SPARSE-MATRIX TRACE CHECK')
emit('Basis j=-18..18; r=-3..3; m,n=-5..5; cases = '+str(matrix_count))
emit('Crossing paths stay inside the matrix cutoff; no edge artifact enters these traces.')
emit('mismatches = '+str(matrix_mismatches))
emit()

jacobi_count = 0
jacobi_mismatches = []
for ri in range(-3,4):
    for mi in range(-8,9):
        for ni in range(-8,9):
            ki = -mi-ni
            residual = ((mi-ni)*crossing_trace(mi+ni,ki,ri)
                       +(ni-ki)*crossing_trace(ni+ki,mi,ri)
                       +(ki-mi)*crossing_trace(ki+mi,ni,ri))
            jacobi_count += 1
            if residual:
                jacobi_mismatches.append((mi,ni,ki,ri,residual))
emit('DIRECT CROSSING JACOBI CHECK')
emit('r=-3..3; m,n=-8..8; k=-m-n; cases = '+str(jacobi_count))
emit('mismatches = '+str(jacobi_mismatches))
emit()

emit('ISOTROPY / PHYSICAL QUOTIENT CHECKS')
q_leaks = [(hmode,j,j+hmode,hmode-j) for hmode in (-1,0,1)
           for j in range(-1,9) if j+hmode < -1 and hmode-j != 0]
w2_leaks = [(hmode,j,j+hmode,hmode-j) for hmode in (-1,0,1)
            for j in range(2,9) if j+hmode < 2 and hmode-j != 0]
emit('h-action leaks from W_{-1}, tested j=-1..8: '+str(q_leaks))
emit('h-action leaks from W_2, tested j=2..8: '+str(w2_leaks))
emit('Tuple convention: (h mode, input j, output j, coefficient).')
emit('Trace rho_0 on h=span(e_-1,e_0,e_1) = '+str(sum(-j for j in (-1,0,1))))
state = {2:ZZ(1)}
comm = difference((1,apply_physical(2,apply_physical(-2,state))),
                  (-1,apply_physical(-2,apply_physical(2,state))))
rhs = {j:4*c for j,c in apply_physical(0,state).items()}
emit('[Qrho_2Q,Qrho_-2Q] e_2 = '+str(comm))
emit('4 Qrho_0Q e_2 = '+str(rhs))
emit('Witt representation defect on e_2 = '+str(difference((1,comm),(-1,rhs))))
emit('Table: m; full sigma_2(m,-m); compressed physical tau(m,-m)')
for mi in range(1,9):
    emit(str(mi)+'; '+str(crossing_trace(mi,-mi,2))+'; '+str(physical_crossing_trace(mi,-mi)))
mi,ni,ki = 1,3,-4
physical_jacobi = ((mi-ni)*physical_crossing_trace(mi+ni,ki)
                  +(ni-ki)*physical_crossing_trace(ni+ki,mi)
                  +(ki-mi)*physical_crossing_trace(ki+mi,ni))
emit('Compressed tau Jacobi residual, (m,n,k)=(1,3,-4) = '+str(physical_jacobi))
emit()

emit('DETERMINANT / CONNECTION SIGN CHECK IN TWO DIMENSIONS')
P = matrix(QQ,[[1,0],[0,0]])
Q = identity_matrix(QQ,2)-P
A = matrix(QQ,[[0,1],[0,0]])
B = matrix(QQ,[[0,0],[1,0]])
sigma_AB = (P*A*Q*B*P-P*B*Q*A*P).trace()
dP_A = A*P-P*A
dP_B = B*P-P*B
curvature_AB = (P*(dP_A*dP_B-dP_B*dP_A)*P).trace()
emit('sigma(A,B) = '+str(sigma_AB))
emit('Trace P[dP(A),dP(B)]P = '+str(curvature_AB))

def create(i):
    C = matrix(QQ,4,4)
    for bits in range(4):
        if not (bits & (1 << i)):
            lower_occupancy = sum((bits >> j) & 1 for j in range(i))
            C[bits | (1 << i),bits] = (-1)**lower_occupancy
    return C
creators = [create(0),create(1)]
annihilators = [C.transpose() for C in creators]
I4 = identity_matrix(QQ,4)
def normal_ordered(X):
    return sum((X[i,j]*creators[i]*annihilators[j] for i in range(2) for j in range(2)),matrix(QQ,4,4))-(P*X).trace()*I4
central_defect = normal_ordered(A)*normal_ordered(B)-normal_ordered(B)*normal_ordered(A)-normal_ordered(A*B-B*A)
emit('Filled-plus CAR normal-order central defect diagonal = '+str(central_defect.diagonal()))
emit('CAR defect minus sigma*I = '+str(central_defect-sigma_AB*I4))
emit()

emit('TENSOR-DENSITY AND NORMALIZATION CHECKS')
density_representation_residual = (a*n-k)*(a*m-n-k)-(a*m-k)*(a*n-m-k)-(m-n)*(a*(m+n)-k)
density_sum = m*r*r+2*r*sum_j+sum_j_squared-m*(m*r+sum_j)-a*(a+1)*m**3
density_claim = -(a*(a+1)+QQ(1)/6)*m**3+(r*r-r+QQ(1)/6)*m
emit('rho_m^(a)e_n=(a*m-n)e_(m+n): representation residual = '+str(density_representation_residual))
emit('density crossing-sum residual = '+str(density_sum-density_claim))
emit('density determinant central charge c(a) = '+str(-12*a*(a+1)-2))
emit('a=1 (vector fields): c=-26; a=0: c=-2')
cD = QQ(-26)
cHalf = -cD/2
emit('determinant c = '+str(cD)+'; dual c = '+str(-cD)+'; dual-half c = '+str(cHalf))
emit('determinant cylinder vacuum L0 shift = '+str(-cD/24))
emit('dual-half cylinder vacuum L0 shift = '+str(-cHalf/24))
emit('Vacuum-to-cylinder central polynomial residual = '+str(cD/12*(m**3-m)-2*(-cD/24)*m-cD/12*m**3))
emit()

checks = {
    'symbolic representation': representation_residual == 0,
    'symbolic crossing sum': crossing_polynomial == claimed,
    'symbolic Jacobi': jacobi_polynomial == 0,
    'threshold coboundary': threshold_residual == 0,
    'direct finite crossings': not formula_mismatches,
    'sparse matrix traces': not matrix_mismatches,
    'finite Jacobi grid': not jacobi_mismatches,
    'physical quotient counterexample': comm == {} and rhs == {2:-8},
    'compressed trace Jacobi counterexample': physical_jacobi == 72,
    'determinant curvature sign': curvature_AB == -sigma_AB,
    'CAR central sign': central_defect == sigma_AB*I4,
    'density representation': density_representation_residual == 0,
    'density crossing sum': density_sum == density_claim,
}
for label,value in checks.items():
    emit(label+': '+('PASS' if value is True else 'FAIL_OR_NONBOOLEAN'))
assert all(value is True for value in checks.values())
emit('ALL '+str(len(checks))+' EXACT CHECK GROUPS PASSED.')
emit('OUTPUT_FILE='+str(OUTPUT))
text = '\n'.join(lines)+'\n'
with OUTPUT.open('x',encoding='utf-8') as stream:
    stream.write(text)
print(text,end='')
