"""Exact left/right q-Fock checks for the strong local-core theorem.

Run: sage q_fock_strong_core_checks.sage
No finite-particle truncation: every operation acts on exact finite words.
The infinite-dimensional/von-Neumann conclusions use the analytic proof.
"""
from sage.all import QQ, QuadraticField, PolynomialRing
from functools import lru_cache
from collections import defaultdict
from itertools import product

K = QuadraticField(-1, 'I')
I = K.gen()
P = PolynomialRing(K, 'q')
q = P.gen()


def conjugate(coefficient):
    return P([a.conjugate() for a in P(coefficient).list()])


def plus(*states):
    out = defaultdict(P.zero)
    for state in states:
        for word, coefficient in state.items():
            out[word] += coefficient
    return {word: a for word, a in out.items() if a}


def scale(a, state):
    return {word: a*b for word, b in state.items() if a*b}


def left_create(i, state):
    return {(i,) + word: a for word, a in state.items()}


def right_create(i, state):
    return {word + (i,): a for word, a in state.items()}


def annihilate(i, state, right=False):
    out = defaultdict(P.zero)
    for word, a in state.items():
        for j, letter in enumerate(word):
            if letter == i:
                power = len(word)-j-1 if right else j
                out[word[:j] + word[j+1:]] += a*q**power
    return {word: a for word, a in out.items() if a}


def left_annihilate(i, state):
    return annihilate(i, state)


def right_annihilate(i, state):
    return annihilate(i, state, right=True)


def field(i, state, right=False):
    create = right_create if right else left_create
    return plus(create(i, state), annihilate(i, state, right=right))


def weighted(state, power=1):
    return {word: q**(power*len(word))*a for word, a in state.items()}


@lru_cache(None)
def gram(w, v):
    if len(w) != len(v):
        return P.zero()
    if not w:
        return P.one()
    return sum((q**j * gram(w[1:], v[:j]+v[j+1:])
                for j, x in enumerate(v) if x == w[0]), P.zero())


def inner(x, y):
    return sum((conjugate(a)*b*gram(w, v)
                for w, a in x.items() for v, b in y.items()), P.zero())


def norm2(x):
    return inner(x, x)


vacuum = {(): P.one()}

mixed_count = 0
for n in range(6):
    for word in product(range(2), repeat=n):
        state = {word: P.one()}
        for i in range(2):
            for j in range(2):
                # [l_i,r_j^*] = delta_ij q^N.
                residual = plus(left_annihilate(i, right_create(j, state)),
                                scale(-1, right_create(j, left_annihilate(i, state))),
                                scale(-int(i == j), weighted(state)))
                assert not residual
                # [l_i^*,r_j] = -delta_ij q^N.
                residual = plus(left_create(i, right_annihilate(j, state)),
                                scale(-1, right_annihilate(j, left_create(i, state))),
                                scale(int(i == j), weighted(state)))
                assert not residual
                assert left_create(i, right_create(j, state)) == right_create(j, left_create(i, state))
                assert left_annihilate(i, right_annihilate(j, state)) == right_annihilate(j, left_annihilate(i, state))
                # phi_R(i e_j)=i r_j^* - i r_j: nonzero imaginary-overlap test.
                def right_imaginary(s):
                    return plus(scale(I, right_create(j, s)), scale(-I, right_annihilate(j, s)))
                residual = plus(field(i, right_imaginary(state)),
                                scale(-1, right_imaginary(field(i, state))),
                                scale(-2*I*int(i == j), weighted(state)))
                assert not residual
                mixed_count += 1
print('PASS:', mixed_count, 'exact mixed left/right tests, including complex field signs')

quadratic_count = 0
for n in range(5):
    for word in product(range(2), repeat=n):
        state = {word: P.one()}
        for i in range(2):
            for j in range(2):
                a2 = left_annihilate(i, left_annihilate(i, state))
                left_lhs = left_annihilate(i, left_annihilate(i, left_create(j, left_create(j, state))))
                left_rhs = plus(scale(q**4, left_create(j, left_create(j, a2))),
                                scale(int(i == j)*q*(1+q)**2, left_create(j, left_annihilate(i, state))),
                                scale(int(i == j)*(1+q), state))
                assert left_lhs == left_rhs
                right_lhs = left_annihilate(i, left_annihilate(i, right_create(j, right_create(j, state))))
                right_rhs = plus(right_create(j, right_create(j, a2)),
                                 scale(int(i == j)*(1+q)**2, right_create(j, weighted(left_annihilate(i, state)))),
                                 scale(int(i == j)*(1+q), weighted(state, power=2)))
                assert right_lhs == right_rhs
                quadratic_count += 1
print('PASS:', quadratic_count, 'quadratic normal-ordering identities')

# Exact creation-difference identity, including nonzero annihilator corrections.
psi = {(): P(2), (0,): P(3+I), (0,1): P(4), (1,0): P(5-I), (0,1,0): P(7)}
for i in range(3):
    difference = plus(left_create(i, psi), scale(-1, right_create(i, psi)))
    left_removed = left_annihilate(i, psi)
    right_removed = right_annihilate(i, psi)
    cross = inner(right_removed, left_removed)
    rhs = 2*inner(psi, plus(psi, scale(-1, weighted(psi))))
    rhs += q*(norm2(left_removed)+norm2(right_removed))-cross-conjugate(cross)
    assert norm2(difference) == rhs
print('PASS: exact creation-difference norm with complex coefficients and annihilator corrections')

# Fresh testing modes are orthogonal to spectator letters 0,1.
for r in [1, 2, 3]:
    left_square = plus(*(field(i, field(i, psi)) for i in range(2, 2+r)))
    right_square = plus(*(field(i, field(i, psi, right=True), right=True) for i in range(2, 2+r)))
    difference = plus(left_square, scale(-1, right_square))
    expected = 2*r*(1+q)*inner(psi, plus(psi, scale(-1, weighted(psi, power=2))))
    assert norm2(difference) == expected
    assert plus(*(field(i, field(i, vacuum)) for i in range(2, 2+r))) == plus(*(field(i, field(i, vacuum, right=True), right=True) for i in range(2, 2+r)))
print('PASS: neutral quadratic diagnostic for one, two and three real components')

# O(2)-invariance is tested without treating distinct fields as commuting.
def rotated_field(component, state):
    if component == 0:
        return plus(scale(QQ(3)/5, field(0, state)), scale(QQ(4)/5, field(1, state)))
    return plus(scale(-QQ(4)/5, field(0, state)), scale(QQ(3)/5, field(1, state)))


rotated = plus(rotated_field(0, rotated_field(0, psi)), rotated_field(1, rotated_field(1, psi)))
original = plus(field(0, field(0, psi)), field(1, field(1, psi)))
assert rotated == original
print('PASS: exact O(2) invariance of the noncommuting neutral square sum')

# The infinite-dimensional hypothesis is essential: a single real mode has
# a nontrivial abelian field algebra and a nontrivial even quadratic observable.
one_mode_centered_square = plus(field(0, field(0, vacuum)), scale(-1, vacuum))
assert norm2(one_mode_centered_square) == 1+q
for n in range(1, 7):
    polynomial = 2*(1+q)*(1-q**(2*n))
    assert polynomial(q=1) == 0 and polynomial(q=-1) == 0
print('PASS: one-mode counterexample and Bose/Fermi endpoint degeneracies')
# Two ordered rapidity chambers: a compression, not a unitary elastic S.
outgoing = {(0, 1): P.one()}
incoming = {(1, 0): P.one()}
missing_outgoing = plus(incoming, scale(-q, outgoing))
assert norm2(outgoing) == 1 and norm2(incoming) == 1
assert inner(outgoing, incoming) == q
assert inner(outgoing, missing_outgoing) == 0
assert norm2(missing_outgoing) == 1-q**2
print('PASS: ordered two-particle range defect has norm squared 1-q^2')
print('All exact checks passed. Strong limits, cyclicity and scalarity are established analytically.')
