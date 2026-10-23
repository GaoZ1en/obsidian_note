"""Independent exact polynomial/beta implementation, distinct from WL integration.

Run: sage --nodotsage independent_resonance_checks.sage.py
No files are read or written. Delta is exact rational; x = sin(rho)^2.
Bare integral omits pi times the product of positive KG normalization factors.
"""
from sage.all import QQ, QQbar, PolynomialRing, binomial, prod, factorial
from itertools import combinations_with_replacement
from collections import Counter

R = PolynomialRing(QQ, 'x')
x = R.gen()


def jacobi_radial_polynomial(k, L, delta):
    # Hypergeometric coefficients for P_k^(L,delta-1)(1-2x).
    polynomial = R(0)
    for j in range(k + 1):
        coefficient = QQ((-1)**j) * QQ(binomial(k + L, k)) * QQ(binomial(k, j))
        coefficient *= prod(delta + k + L + t for t in range(j))
        coefficient /= QQ(prod(L + 1 + t for t in range(j)))
        polynomial += coefficient * x**j
    return R(polynomial)


def bare_integral(delta, creation, annihilation):
    if sum(p-q for p, q in creation) != sum(p-q for p, q in annihilation):
        return QQ(0)
    modes = creation + annihilation
    sum_L = sum(abs(p-q) for p, q in modes)
    assert sum_L % 2 == 0
    M = sum_L // 2
    B = len(modes) * delta / 2 - 1
    assert B > 0
    polynomial = prod(jacobi_radial_polynomial(min(p,q), abs(p-q), delta)
                      for p, q in modes)
    # B(M+j+1,B) = (M+j)! / (B)_(M+j+1).
    return sum(c * factorial(M+j) / prod(B+t for t in range(M+j+1))
               for j, c in enumerate(polynomial.list()))


def norm_factor(delta, mode):
    # norm2 = norm_factor/(2*pi), with no gamma calls needed.
    k, m = min(mode), max(mode)
    return QQ(factorial(k)) / QQ(factorial(m)) * prod(delta+k+t for t in range(m-k))


def scaled_normalized_overlap(delta, creation, annihilation):
    # Returns C * (2*pi)^((n-2)/2), an exact algebraic number for rational delta.
    alpha = prod(norm_factor(delta, mode) for mode in creation+annihilation)
    assert alpha.parent() is QQ
    return QQbar(alpha).sqrt() * bare_integral(delta, creation, annihilation) / 2


def resonant(delta, creation, annihilation):
    return (len(creation)*delta+sum(p+q for p,q in creation)
            == len(annihilation)*delta+sum(p+q for p,q in annihilation)
            and sum(p-q for p,q in creation)==sum(p-q for p,q in annihilation))


print('KERNEL: exact Sage QQ polynomial integrals and QQbar algebraic checks')
small = [(0,0),(1,0),(0,1),(1,1),(2,0),(0,2)]
for delta, n in [(QQ(2),3),(QQ(4)/3,5),(QQ(8)/3,5)]:
    tested = 0
    for annihilation in combinations_with_replacement(small,n-1):
        K = (n-2)*delta/2
        assert K.denominator() == 1
        creation = ((int(sum(p for p,q in annihilation)+K),
                     int(sum(q for p,q in annihilation)+K)),)
        assert resonant(delta,creation,annihilation)
        assert bare_integral(delta,creation,annihilation) == 0
        tested += 1
    print('ONE_TO_MANY', 'Delta=',delta,'n=',n,'tested=',tested,'all_zero=True')

# Every mode in the following scan has 0 <= p,q <= 3.
modes = [(p,q) for p in range(4) for q in range(4)]
As = list(combinations_with_replacement(modes,2))
lookup = {}
for annihilation in combinations_with_replacement(modes,3):
    key = (sum(p for p,q in annihilation),sum(q for p,q in annihilation))
    lookup.setdefault(key,[]).append(annihilation)
count = zeros = 0
first_zeros = []
for creation in As:
    target = (sum(p for p,q in creation)-1,sum(q for p,q in creation)-1)
    for annihilation in lookup.get(target,[]):
        assert resonant(QQ(2),creation,annihilation)
        value = bare_integral(QQ(2),creation,annihilation)
        count += 1
        if value == 0:
            zeros += 1
            if len(first_zeros) < 5:
                first_zeros.append((creation,annihilation))
assert count == 1069
print('PHI5_D2_SCAN','tested=',count,'zeros=',zeros,'nonzeros=',count-zeros)
print('PHI5_D2_FIRST_ZERO_TUPLES',first_zeros)

positive_cases = [
    (QQ(2),2,3,QQ(1)/20),
    (QQ(3),2,4,QQ(1)/264),
    (QQ(4)/3,2,5,QQ(3)/187),
    (QQ(3)/2,2,6,QQ(1)/256),
]
for delta, r, s, expected_scaled in positive_cases:
    K = (s-r)*delta/2
    assert K.denominator() == 1
    K = int(K)
    creation = ((K,0),(0,K)) + ((0,0),)*(r-2)
    annihilation = ((0,0),)*s
    beta = factorial(K)/prod((r+s)*delta/2-1+t for t in range(K+1))
    bare = bare_integral(delta,creation,annihilation)
    scaled = scaled_normalized_overlap(delta,creation,annihilation)
    assert resonant(delta,creation,annihilation)
    assert bare == beta and bare > 0
    assert scaled == expected_scaled
    print('POSITIVE_FAMILY','Delta=',delta,'r=',r,'s=',s,'K=',K,
          'bare=',bare,'C_times_(2pi)^((n-2)/2)=',expected_scaled)

# Explicit allowed individual zero, not a blanket channel selection rule.
zero_creation = ((0,1),(1,1))
zero_annihilation = ((0,0),(0,0),(0,1))
assert resonant(QQ(2),zero_creation,zero_annihilation)
assert bare_integral(QQ(2),zero_creation,zero_annihilation) == 0
print('ALLOWED_INDIVIDUAL_ZERO',zero_creation,zero_annihilation)

# Phi6 Delta=2 primary, with normalized Fock states.
# Last state is (a_11^dagger)^2 |0>/sqrt(2), all other pairs are distinct.
basis = [((0,0),(2,2)),((0,1),(2,1)),((0,2),(2,0)),
         ((1,0),(1,2)),((1,1),(1,1))]
primary = [QQbar(2).sqrt()/5, QQbar(6).sqrt()/5, QQbar(2).sqrt()/5,
           QQbar(6).sqrt()/5, QQbar(3)/5]


def lower_primary(axis):
    result = {}
    for state, amplitude in zip(basis,primary):
        occupation = Counter(state)
        for (p,q), multiplicity in occupation.items():
            j = (p,q)[axis]
            if not j:
                continue
            target = (p-1,q) if axis == 0 else (p,q-1)
            # y=sin^2 rho Jacobi convention: signed lowering coefficients.
            phase = (-1)**(min(p,q)-min(target))
            single = QQbar(j*(2+j-1)).sqrt()*phase
            boson = QQbar(multiplicity*(occupation.get(target,0)+1)).sqrt()
            out = list(state)
            out.remove((p,q))
            out.append(target)
            out = tuple(sorted(out))
            result[out] = result.get(out,QQbar(0))+amplitude*single*boson
    return result


assert sum(a*a for a in primary) == 1
for axis in (0,1):
    residual = lower_primary(axis)
    assert all(z == 0 for z in residual.values())
    print('PHI6_PRIMARY_LOWERING','axis=',axis,'residual=',residual,'all_exact_zero=True')
print('PHI6_PRIMARY_NORM_SQUARED',sum(a*a for a in primary))

# Check the general fixed-arity arithmetic classification in finite samples.
for numerator in range(2,13):
    for denominator in range(1,numerator):
        delta = QQ(numerator)/denominator
        a, b = delta.numerator(), delta.denominator()
        for n in range(3,19):
            actual = any(r != n-r and ((n-2*r)*delta/2).denominator() == 1
                         for r in range(2,n-1))
            expected = (n >= 2*b+4) if n % 2 == 0 else (a % 2 == 0 and n >= b+4)
            assert actual == expected
print('FINITE_ARITHMETIC_CLASSIFICATION_CHECK: all passed')
print('ALL_CHECKS_PASSED=True')
