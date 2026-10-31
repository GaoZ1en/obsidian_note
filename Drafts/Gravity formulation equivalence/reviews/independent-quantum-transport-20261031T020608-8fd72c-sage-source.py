# Independent vacuum-module and diagonal-squeeze checks.
# All data, conventions, and algorithms are defined here; no candidate reports are read.
from sage.all import QQ, PolynomialRing, matrix, factorial, binomial, RealField
from sage.env import SAGE_VERSION
from functools import lru_cache
from pathlib import Path
import json, sys, platform, datetime

PREFIX = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-transport-20261031T020608-8fd72c')
R = PolynomialRing(QQ, 'c')
c = R.gen()
F = R.fraction_field()

@lru_cache(None)
def vacuum_expectation(word):
    """<0| product_j L_{word[j]} |0>, exact in QQ[c].
    Conventions: [L_m,L_n]=(m-n)L_{m+n}+c*m*(m^2-1)/12 delta_{m+n,0};
    L_n|0>=0 for n>=-1, hence <0|L_n=0 for n<=1.
    Commute the first positive generator to the right; all recursive words shorten.
    """
    if not word:
        return R.one()
    if word[0] <= 1 or word[-1] >= -1:
        return R.zero()
    m, rest = word[0], word[1:]
    ans = R.zero()
    for j, n in enumerate(rest):
        ans += (m-n) * vacuum_expectation(rest[:j] + (m+n,) + rest[j+1:])
        if m+n == 0:
            ans += c * QQ(m*(m*m-1))/12 * vacuum_expectation(rest[:j] + rest[j+1:])
    return ans

def partitions_at_least_two(level, maximum=None):
    if level == 0:
        return [()]
    if level < 2:
        return []
    maximum = min(level, level if maximum is None else maximum)
    return [(n,) + tail for n in range(maximum, 1, -1)
            for tail in partitions_at_least_two(level-n, n)]

def gram(level):
    basis = partitions_at_least_two(level)
    return basis, matrix(R, len(basis), len(basis),
        lambda i,j: vacuum_expectation(tuple(reversed(basis[i])) + tuple(-n for n in basis[j])))

checks = []
def check(label, condition):
    if type(condition) is not bool:
        raise TypeError('Check must be a Python bool: ' + label + ': ' + repr(condition))
    checks.append({'label': label, 'passed': condition})
    if not condition:
        raise AssertionError(label)

records = {}
for level in range(9):
    basis, G = gram(level)
    check('Gram symmetric level %d' % level, G == G.transpose())
    records[str(level)] = {
        'basis_partitions': [list(p) for p in basis],
        'gram': [[str(x) for x in row] for row in G.rows()],
        'determinant_factorized': str(G.det().factor()),
        'rank_at_c_0': int(G.subs(c=0).rank()),
        'rank_at_c_half': int(G.subs(c=QQ(1)/2).rank()),
        'rank_at_c_1': int(G.subs(c=1).rank()),
        'rank_at_c_2': int(G.subs(c=2).rank()),
    }

check('Level two norm', gram(2)[1] == matrix(R, [[c/2]]))
check('Level three norm', gram(3)[1] == matrix(R, [[2*c]]))
check('Level four independently hand-derived entries', gram(4)[1] == matrix(R, [[5*c,3*c],[3*c,c*(c+8)/2]]))
check('Level five independently hand-derived entries', gram(5)[1] == matrix(R, [[10*c,4*c],[4*c,c*(c+6)]]))
check('Ising vacuum first extra null level six', gram(6)[1].subs(c=QQ(1)/2).rank() == 3)

# Independent realization at integer c=d by d free bosonic currents.
# J_-k is multiplication by x_{s,k}, J_k=k*d/dx_{s,k}, J_0=0.
# L_-n=sum_{s,k>=1} k*x_{s,n+k}*d/dx_{s,k}
#       + (1/2) sum_{s,j=1}^{n-1} x_{s,j} x_{s,n-j}.
def free_boson_gram(level, species):
    if level == 0:
        return matrix(QQ, [[1]])
    if level == 1:
        return matrix(QQ, 0, 0)
    M = level
    P = PolynomialRing(QQ, names=['x_%d_%d' % (s,k) for s in range(species) for k in range(1,M+1)])
    xx = P.gens()
    def x(s,k):
        return xx[s*M+k-1]
    def Lminus(n, v):
        return sum((k*x(s,n+k)*v.derivative(x(s,k))
                    for s in range(species) for k in range(1,M-n+1)), P.zero()) + sum((QQ(1)/2*x(s,j)*x(s,n-j)*v
                    for s in range(species) for j in range(1,n)), P.zero())
    def descendant(partition):
        v = P.one()
        for n in reversed(partition):
            v = Lminus(n, v)
        return v
    polys = [descendant(p) for p in partitions_at_least_two(level)]
    def inner(v,w):
        vd, wd = v.dict(), w.dict()
        ans = QQ.zero()
        for exponents in vd.keys() & wd.keys():
            norm = QQ.one()
            for j,e in enumerate(exponents):
                norm *= factorial(e) * ((j % M)+1)**e
            ans += vd[exponents]*wd[exponents]*norm
        return ans
    return matrix(QQ, len(polys), len(polys), lambda i,j: inner(polys[i],polys[j]))

for species in (1,2,3):
    for level in range(7):
        check('Independent free-boson realization c=%d level=%d' % (species,level),
              free_boson_gram(level,species) == gram(level)[1].subs(c=species))

# Finite-level trace checks, without invoking cyclicity of an unbounded trace.
# Tr(G^-1 B) is the basis-independent trace, where B_ij=<v_i|L_n L_-n|v_j>.
thermal = {}
for central in ('generic', 'half'):
    thermal[central] = {}
    for n in (2,3):
        A, dims = [], []
        for level in range(7):
            basis, G = gram(level)
            if central == 'generic':
                inds = list(range(len(basis)))
                GF = G.change_ring(F)
                cv = F(c)
            else:
                GG = G.subs(c=QQ(1)/2).change_ring(QQ)
                inds = list(GG.pivots())
                GF = GG.matrix_from_rows_and_columns(inds,inds)
                cv = QQ(1)/2
            dims.append(len(inds))
            if not inds:
                a = F.zero() if central == 'generic' else QQ.zero()
            else:
                B = matrix(R, len(inds), len(inds), lambda i,j:
                    vacuum_expectation(tuple(reversed(basis[inds[i]])) + (n,-n) + tuple(-m for m in basis[inds[j]])))
                B = B.change_ring(F) if central == 'generic' else B.subs(c=QQ(1)/2).change_ring(QQ)
                a = (GF.inverse()*B).trace()
            expected = (A[level-n] if level >= n else 0) + (2*n*level + cv*QQ(n*(n*n-1))/12)*dims[level]
            check('Thermal finite-block recurrence %s n=%d level=%d' % (central,n,level), a == expected)
            A.append(a)
        thermal[central][str(n)] = {'dimensions': dims, 'unnormalized_A_coefficients_k_0_through_6': [str(x) for x in A]}

# Exact discrete squeezed-vacuum coefficients and normalization bounds.
# F(x)=sum binomial(2k,k)*x^k/4^k=(1-x)^(-1/2), x=tanh(r)^2.
for k in range(41):
    ak = QQ(binomial(2*k,k))/4**k
    ak1 = QQ(binomial(2*k+2,k+1))/4**(k+1)
    check('Binomial squeeze-coefficient recurrence k=%d' % k, (k+1)*ak1 == (k+QQ(1)/2)*ak)

t = QQ(3)/5
x = t*t
vacuum_probability = QQ(4)/5
K = 60
probs = [vacuum_probability*QQ(binomial(2*k,k))/4**k*x**k for k in range(K+2)]
partial_norm = sum(probs[:K+1])
# Since p_{k+1}/p_k = x*(2k+1)/(2k+2) < x, tail <= p_{K+1}/(1-x).
norm_tail_bound = probs[K+1]/(1-x)
check('Exact rational normalized partial sum lower bound', partial_norm < 1)
check('Exact rational normalized partial sum upper bound', partial_norm + norm_tail_bound > 1)
mean_expected = QQ(9)/16
mean_partial = sum(2*k*probs[k] for k in range(K+1))
# Sum_{j>=0} 2*(K+1+j)*p_{K+1}*x^j bounds the positive mean tail.
mean_tail_bound = 2*probs[K+1]*((K+1)/(1-x) + x/(1-x)**2)
check('Exact rational squeezed mean lower bound', mean_partial < mean_expected)
check('Exact rational squeezed mean upper bound', mean_partial+mean_tail_bound > mean_expected)
check('Squeezed analytic normalization at tanh r=3/5', vacuum_probability**2 == 1-x)
check('Squeezed mean formula at tanh r=3/5', x/(1-x) == mean_expected)
check('Squeezed variance formula at tanh r=3/5', 2*x/(1-x)**2 == QQ(225)/128)
RF = RealField(100)
squeeze = {
    'tanh_r': str(t), 'cosh_r': '5/4', 'sinh_r': '3/4',
    'normalized_vacuum_probability': str(vacuum_probability),
    'mean_number': str(mean_expected), 'variance_number': '225/128',
    'partial_sum_cutoff_K': K,
    'norm_missing_mass_100_bit_decimal': str(RF(1-partial_norm)),
    'rigorous_norm_tail_bound_100_bit_decimal': str(RF(norm_tail_bound)),
    'mean_missing_mass_100_bit_decimal': str(RF(mean_expected-mean_partial)),
    'rigorous_mean_tail_bound_100_bit_decimal': str(RF(mean_tail_bound)),
    'exact_partial_norm': str(partial_norm),
    'exact_norm_tail_bound': str(norm_tail_bound),
    'exact_mean_partial': str(mean_partial),
    'exact_mean_tail_bound': str(mean_tail_bound),
    'two_mode_tanh_values': ['3/5','-5/13'],
    'two_mode_vacuum_overlap_squared': '48/65',
    'two_mode_mean_H_for_modes_2_3': str(2*QQ(9)/16 + 3*QQ(25)/144),
}
check('Two-mode normalization prefactor', (QQ(48)/65)**2 == (1-QQ(9)/25)*(1-QQ(25)/169))

result = {
    'diagnostics': {
        'sage_version': SAGE_VERSION,
        'python_version': sys.version,
        'platform': platform.platform(),
        'completed_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'all_checks_passed': all(x['passed'] for x in checks),
        'number_of_checks': len(checks),
        'vacuum_expectation_cache': str(vacuum_expectation.cache_info()),
        'verification_limits': 'Finite exact checks through levels 8 (Gram), 6 (independent realization and thermal traces); coefficient checks k<=40; normalization bounds K=60. Infinite-dimensional proofs are analytic, not inferred from this finite data.'
    },
    'checks': checks,
    'virasoro_grams': records,
    'thermal_trace_checks': thermal,
    'squeezed_state_checks': squeeze,
}
output = PREFIX.with_name(PREFIX.name + '-sage-output.json')
with output.open('x', encoding='utf-8') as f:
    json.dump(result,f,indent=2)
    f.write('\n')
print(json.dumps(result,indent=2))
print('ARCHIVE_OUTPUT=' + str(output))
