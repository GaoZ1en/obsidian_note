"""Exact checks for Nonrigid sectors and q-Fock locality.

Run with: sage q_fock_locality_checks.sage
Python-compatible Sage code; no particle-number cutoff is used.
The Gram recursion computes exact q-Fock word inner products.
These finite checks do not prove a spacetime net existence theorem.
"""
from sage.all import QQ, PolynomialRing, matrix, binomial
from functools import lru_cache
from collections import defaultdict
from itertools import product

P = PolynomialRing(QQ, ('q', 't', 'c'))
q, t, c = P.gens()


def gram_factory(G=None):
    @lru_cache(None)
    def gram(w, v):
        if len(w) != len(v):
            return P.zero()
        if not w:
            return P.one()
        return sum((q**j * (G[w[0], x] if G is not None else int(w[0] == x))
                    * gram(w[1:], v[:j] + v[j+1:])
                    for j, x in enumerate(v)), P.zero())
    return gram


gram = gram_factory()


def plus(*states):
    out = defaultdict(P.zero)
    for state in states:
        for w, coefficient in state.items():
            out[w] += coefficient
    return {w: coefficient for w, coefficient in out.items() if coefficient}


def scale(coefficient, state):
    return {w: coefficient * value for w, value in state.items() if coefficient * value}


def create(i, state):
    return {(i,) + w: coefficient for w, coefficient in state.items()}


def annihilate(i, state):
    out = defaultdict(P.zero)
    for w, coefficient in state.items():
        for j, letter in enumerate(w):
            if letter == i:
                out[w[:j] + w[j+1:]] += coefficient * q**j
    return {w: coefficient for w, coefficient in out.items() if coefficient}


def field(i, state):
    return plus(create(i, state), annihilate(i, state))


def norm_squared(state, inner=gram):
    # All coefficients here are real polynomials in the real parameters.
    return sum((a * b * inner(w, v)
                for w, a in state.items() for v, b in state.items()), P.zero())


vacuum = {(): P.one()}

# The q-CCR is checked on every binary word of lengths zero through four.
ccr_count = 0
for length in range(5):
    for w in product(range(2), repeat=length):
        state = {tuple(w): P.one()}
        for i in range(2):
            for j in range(2):
                residual = plus(annihilate(i, create(j, state)),
                                scale(-q, create(j, annihilate(i, state))),
                                scale(-int(i == j), state))
                assert not residual
                ccr_count += 1
print('PASS: exact q-CCR on', ccr_count, 'word/operator combinations')

# Homogeneous block-swap contraction: no cross-support contractions.
for n in range(1, 5):
    for m in range(1, 5):
        u, v = (0,) * n, (1,) * m
        state = {u + v: P.one(), v + u: -P.one()}
        expected = 2 * (1 - q**(n*m)) * gram(u, u) * gram(v, v)
        assert norm_squared(state) == expected
print('PASS: 16 exact homogeneous block-swap identities, degrees 1 through 4')

# A_i = phi_i + t (phi_i^2 - I), a selfadjoint centered polynomial.
def mixed_observable(i, state):
    return plus(field(i, state),
                scale(t, plus(field(i, field(i, state)), scale(-1, state))))


commutator = plus(mixed_observable(0, mixed_observable(1, vacuum)),
                  scale(-1, mixed_observable(1, mixed_observable(0, vacuum))))
expected = 2 * ((1-q) + 2*(1-q**2)*t**2*(1+q)
                + (1-q**4)*t**4*(1+q)**2)
assert norm_squared(commutator) == expected
print('PASS: mixed one-/two-particle polynomial formula')

# A neutral pair with distinct particle and antiparticle labels.
def pair(i, j, state):
    return plus(create(i, create(j, state)), annihilate(j, annihilate(i, state)))


pair_commutator = plus(pair(0, 1, pair(2, 3, vacuum)),
                       scale(-1, pair(2, 3, pair(0, 1, vacuum))))
assert norm_squared(pair_commutator) == 2 * (1-q**4)
assert {len(w) for w in pair_commutator} == {4}
print('PASS: neutral pair commutator norm squared = 2(1-q^4)')

# Adding number-preserving bilinears cannot alter its four-particle component.
def pair_with_density(i, j, state):
    return plus(pair(i, j, state), create(i, annihilate(i, state)),
                scale(t, create(j, annihilate(j, state))))


dressed_commutator = plus(pair_with_density(0, 1, pair_with_density(2, 3, vacuum)),
                         scale(-1, pair_with_density(2, 3, pair_with_density(0, 1, vacuum))))
assert {w: a for w, a in dressed_commutator.items() if len(w) == 4} == pair_commutator
print('PASS: quadratic densities leave the neutral four-particle obstruction unchanged')

# Same-color translated wavepackets have real overlap c; opposite colors are orthogonal.
G = matrix(P, [[1, 0, c, 0], [0, 1, 0, c], [c, 0, 1, 0], [0, c, 0, 1]])
overlap_gram = gram_factory(G)
assert norm_squared(pair_commutator, overlap_gram) == 2*(1-q**4)*(1-c**4)
print('PASS: overlapping neutral-pair norm squared = 2(1-q^4)(1-c^4)')

for q0 in [QQ(-3)/4, QQ(-1)/2, 0, QQ(1)/2, QQ(3)/4]:
    sharp_coefficient = 1-q0 if q0 >= 0 else 1-q0**2
    for t0 in [0, 1, 2, QQ(1)/3]:
        variance = 1+t0**2*(1+q0)
        assert expected(q=q0, t=t0, c=0) >= 2*sharp_coefficient*variance**2
print('PASS: universal lower bound at 20 exact rational controls')

# At q=-1, only odd-odd particle-number components survive in the formal expression.
for n in range(1, 6):
    for m in range(1, 6):
        assert 2*(1-(-1)**(n*m)) == (4 if n % 2 and m % 2 else 0)
print('PASS: CAR parity endpoint check')

# Distinguish full Fock from orbital-symmetric, internal R=I Fock.
m, d = 2, 3
full_counts = [(m*d)**n for n in range(5)]
r_identity_counts = [m**n * binomial(n+d-1, n) for n in range(5)]
assert full_counts == [1, 6, 36, 216, 1296]
assert r_identity_counts == [1, 6, 24, 80, 240]
print('PASS: distinct multimode dimensions:', full_counts, r_identity_counts)

# For q=0, compare vacuum and a fresh orthogonal one-particle vector.
# Normal words have all creators left of all annihilators.
# A fresh letter 2 is outside the polynomial support {0,1}.
def normal_action(u, v, state):
    result = state
    for letter in v:
        result = annihilate(letter, result)
    for letter in reversed(u):
        result = create(letter, result)
    return result


normal_word_count = 0
for r in range(4):
    for s in range(4):
        for u in product(range(2), repeat=r):
            for v in product(range(2), repeat=s):
                vacuum_value = normal_action(u, v, vacuum).get((), P.zero())
                fresh_value = normal_action(u, v, {(2,): P.one()}).get((2,), P.zero())
                assert vacuum_value == fresh_value
                normal_word_count += 1
print('PASS:', normal_word_count, 'normal words have identical vacuum/fresh-tail diagonal states')
print('All exact checks passed. Locality and norm-closure claims use the analytic proof, not a finite cutoff.')
