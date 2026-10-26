"""Exact kink-path checks; this does not construct a relativistic QFT.

Conventions: A_L has vertices 1,...,L and edges |a-b|=1.
An n-kink path has n+1 vertices and is an orthonormal basis vector.
R_i changes the intermediate vertex i, leaving both outer vertices fixed.
All arithmetic below is rational, polynomial, or exact algebraic arithmetic.

Run: sage kink_path_exchange_checks.sage
"""
from itertools import product
from sage.all import (
    AA, QQ, QQbar, PolynomialRing, diagonal_matrix, identity_matrix, matrix,
)


def paths(length, steps):
    result = [(j,) for j in range(1, length + 1)]
    for _ in range(steps):
        result = [
            p + (j,) for p in result
            for j in (p[-1] - 1, p[-1] + 1)
            if 1 <= j <= length
        ]
    return result


def perron_data(length):
    q = QQbar.zeta(2 * (length + 1))
    imaginary_unit = QQbar.gen()
    weights = {
        j: ((q**j - q**(-j)) / (2 * imaginary_unit)).real()
        for j in range(1, length + 1)
    }
    delta = (q + q**(-1)).real()
    assert all(weight > 0 for weight in weights.values())
    return delta, weights


def tl_matrices(length, steps):
    delta, weights = perron_data(length)
    basis = paths(length, steps)
    lookup = {p: j for j, p in enumerate(basis)}
    generators = []
    for site in range(1, steps):
        operator = matrix(QQbar, len(basis))
        for col, p in enumerate(basis):
            if p[site - 1] != p[site + 1]:
                continue
            for middle in (p[site - 1] - 1, p[site - 1] + 1):
                if not 1 <= middle <= length:
                    continue
                target = p[:site] + (middle,) + p[site + 1:]
                operator[lookup[target], col] = (
                    (weights[p[site]] * weights[middle]).sqrt()
                    / weights[p[site - 1]]
                )
        generators.append(operator)
    return delta, basis, generators


# Universal TL braid residual in the basis 1,e,f,ef,fe.
polynomials = PolynomialRing(QQ, names=('delta', 'a', 'b'))
delta_symbol, a, b = polynomials.gens()


def reduce_word(word):
    coefficient = polynomials.one()
    word = list(word)
    changed = True
    while changed:
        changed = False
        for j in range(len(word) - 1):
            if word[j] == word[j + 1]:
                coefficient *= delta_symbol
                word = word[:j] + [word[j]] + word[j + 2:]
                changed = True
                break
        if changed:
            continue
        for j in range(len(word) - 2):
            if word[j] == word[j + 2]:
                word = word[:j] + [word[j]] + word[j + 3:]
                changed = True
                break
    return tuple(word), coefficient


def multiply(left, right):
    answer = {}
    for u, cu in left.items():
        for v, cv in right.items():
            word, factor = reduce_word(u + v)
            answer[word] = answer.get(word, polynomials.zero()) + cu * cv * factor
    return {word: c for word, c in answer.items() if c}


def subtract(left, right):
    answer = dict(left)
    for word, c in right.items():
        answer[word] = answer.get(word, polynomials.zero()) - c
    return {word: c for word, c in answer.items() if c}


x_operator = {(): a, (0,): b}
y_operator = {(): a, (1,): b}
residual = subtract(
    multiply(multiply(x_operator, y_operator), x_operator),
    multiply(multiply(y_operator, x_operator), y_operator),
)
coefficient = b * (a*a + delta_symbol*a*b + b*b)
assert residual == {(0,): coefficient, (1,): -coefficient}
assert subtract(multiply(x_operator, x_operator), {(): polynomials.one()}) == {
    (): a*a - 1, (0,): delta_symbol*b*b + 2*a*b,
}
print('PASS: universal TL braid and involutivity residuals')


# Complete A3 face-R classification, not a TL ansatz.
# All four one-dimensional leaf-to-leaf blocks are signs.
# A non-scalar 2x2 involution has trace zero over characteristic zero.
ring = PolynomialRing(QQ, names=('x', 'y', 'z'))
x, y, z = ring.gens()
U = matrix(ring, [[x, y], [z, -x]])
for signs in product((-1, 1), repeat=4):
    S = matrix(ring, 2, 2, signs)
    diagonals = [
        diagonal_matrix(ring, [S[j, 0], S[j, 1]]) for j in range(2)
    ] + [
        diagonal_matrix(ring, [S[0, j], S[1, j]]) for j in range(2)
    ]
    equations = [x*x + y*z - 1]
    for D in diagonals:
        equations.extend((D*U*D - U*D*U).list())
    assert ring.ideal(equations).is_one()

scalar_solutions = []
for sign in (-1, 1):
    U = sign * identity_matrix(QQ, 2)
    for signs in product((-1, 1), repeat=4):
        S = matrix(QQ, 2, 2, signs)
        diagonals = [
            diagonal_matrix(QQ, [S[j, 0], S[j, 1]]) for j in range(2)
        ] + [
            diagonal_matrix(QQ, [S[0, j], S[1, j]]) for j in range(2)
        ]
        if all(D*U*D == U*D*U for D in diagonals):
            scalar_solutions.append((sign, signs))
assert scalar_solutions == [
    (-1, (-1, -1, -1, -1)), (1, (1, 1, 1, 1)),
]
print('PASS: all 16 A3 sign assignments; only the two scalar face solutions')


# Positive path metrics, TL reflections, and cups.
for length in (2, 3, 4, 5):
    delta, basis, generators = tl_matrices(length, 3)
    E, F = generators
    identity = identity_matrix(QQbar, len(basis))
    R, T = identity - 2*E/delta, identity - 2*F/delta
    defect = R*T*R - T*R*T
    assert E.conjugate_transpose() == E
    assert F.conjugate_transpose() == F
    assert E*E == delta*E and F*F == delta*F
    assert E*F*E == E and F*E*F == F
    assert R*R == identity and T*T == identity
    assert R.conjugate_transpose()*R == identity
    assert defect == 2*(delta*delta - 4)/delta**3 * (E-F)
    assert defect.is_zero() == (length == 2)

    _, weights = perron_data(length)
    one_kink = paths(length, 1)
    lookup = {p: j for j, p in enumerate(basis)}
    CL = matrix(QQbar, len(basis), len(one_kink))
    CR = matrix(QQbar, len(basis), len(one_kink))
    for col, (left, right) in enumerate(one_kink):
        for middle in (left-1, left+1):
            if 1 <= middle <= length:
                CL[lookup[(left, middle, left, right)], col] = (
                    weights[middle]/weights[left]
                ).sqrt()
        for middle in (right-1, right+1):
            if 1 <= middle <= length:
                CR[lookup[(left, right, middle, right)], col] = (
                    weights[middle]/weights[right]
                ).sqrt()
    one_identity = identity_matrix(QQbar, len(one_kink))
    assert CL.conjugate_transpose()*CL == delta*one_identity
    assert CR.conjugate_transpose()*CR == delta*one_identity
    assert CL.conjugate_transpose()*CR == one_identity
    difference = CL-CR
    assert difference.conjugate_transpose()*difference == 2*(delta-1)*one_identity
    print('PASS: A_%d: %d three-kink paths; braid defect rank %d; cup difference rank %d'
          % (length, len(basis), defect.rank(), difference.rank()))


# A3 physical high-rapidity braid has eigenvalue ratio -i.
sqrt_two = AA(2).sqrt()
E = matrix(QQbar, [[sqrt_two, 0], [0, 0]])
F = matrix(QQbar, [[1/sqrt_two, 1/sqrt_two], [1/sqrt_two, 1/sqrt_two]])
identity = identity_matrix(QQbar, 2)
q = QQbar.zeta(8)
B1, B2 = E - q**(-1)*identity, F - q**(-1)*identity
assert B1.conjugate_transpose()*B1 == identity
assert B2.conjugate_transpose()*B2 == identity
assert B1*B2*B1 == B2*B1*B2
assert B1*B1 != (B1*B1)[0, 0]*identity
assert -q*q == -QQbar.gen()
R1, R2 = identity-2*E/sqrt_two, identity-2*F/sqrt_two
assert R1*R2*R1-R2*R1*R2 == matrix(QQbar, [[-1, 1], [1, 1]])
print('PASS: physical A3 braid is unitary and non-involutive; reflection fails braid')


# An actually nonordinary algebraic candidate: V=C|0> + C^2.
def exchange_increments(pair):
    left, right = pair
    return (right, left) if left == 0 or right == 0 else pair


def exchange_at(triple, site):
    return (triple[:site] + exchange_increments(triple[site:site+2])
            + triple[site+2:])


for triple in product(range(3), repeat=3):
    assert exchange_at(exchange_at(triple, 0), 0) == triple
    assert exchange_at(exchange_at(exchange_at(triple, 0), 1), 0) == (
        exchange_at(exchange_at(exchange_at(triple, 1), 0), 1)
    )
assert sum(exchange_increments(pair) == pair
           for pair in product(range(3), repeat=2)) == 5
# Symmetric-space ranks are orbit counts for this permutation action.
counts = []
for degree in range(7):
    unseen = set(product(range(3), repeat=degree))
    orbit_count = 0
    while unseen:
        seed = unseen.pop()
        frontier = [seed]
        orbit_count += 1
        while frontier:
            word = frontier.pop()
            for site in range(degree-1):
                changed = exchange_at(word, site)
                if changed in unseen:
                    unseen.remove(changed)
                    frontier.append(changed)
    counts.append(orbit_count)
assert counts == [2**(degree+1)-1 for degree in range(7)]
print('PASS: trace-5 symmetric-power ranks through degree 6:', counts)


def middle_update(left, middle, right):
    if middle == left:
        return right
    if middle == right:
        return left
    return middle


for left, middle, right in product(range(3), repeat=3):
    changed = middle_update(left, middle, right)
    incoming = ((middle-left) % 3, (right-middle) % 3)
    outgoing = ((changed-left) % 3, (right-changed) % 3)
    assert outgoing == exchange_increments(incoming)
# Forward face (0,1,2,1) is allowed; its 90-degree rotation is forbidden.
assert middle_update(0, 1, 2) == 1
assert middle_update(1, 2, 1) != 0
print('PASS: trace-5 nonordinary involutive R; face crossing has a zero/nonzero defect')

# Exhaust all 3-vacuum endpoint-preserving permutation involutions.
# This is a finite classification, NOT a classification of general amplitudes.
from collections import Counter
permutations = [(0, 1, 2), (1, 0, 2), (2, 1, 0), (0, 2, 1)]
three_paths = list(product(range(3), repeat=4))
three_paths.sort(key=lambda p: -len(set(p)))
solutions = []
for choices in product(range(4), repeat=9):
    table = tuple(value for choice in choices for value in permutations[choice])
    valid = True
    for a, b, c, d in three_paths:
        b1 = table[(3*a+c)*3+b]
        c2 = table[(3*b1+d)*3+c]
        b3 = table[(3*a+c2)*3+b1]
        c1 = table[(3*b+d)*3+c]
        b2 = table[(3*a+c1)*3+b]
        c3 = table[(3*b2+d)*3+c1]
        if (b3, c2) != (b2, c3):
            valid = False
            break
    if not valid:
        continue
    rotation = all(
        (d == table[(3*a+c)*3+b]) == (a == table[(3*b+d)*3+c])
        for a, b, c, d in three_paths
    )
    traces = tuple(
        sum(table[(3*a+c)*3+b] == b for b, c in product(range(3), repeat=2))
        for a in range(3)
    )
    formulas = []
    for epsilon, shift in product((1, -1), range(3)):
        if all(table[(3*a+c)*3+b] == (epsilon*(a+c)-b+shift) % 3
               for a, b, c in product(range(3), repeat=3)):
            formulas.append((epsilon, shift))
    solutions.append((choices, traces, rotation, formulas))
assert len(solutions) == 13
assert Counter(row[1] for row in solutions) == Counter({
    (9, 9, 9): 1, (5, 5, 5): 6, (3, 3, 3): 6,
})
assert sum(row[2] for row in solutions) == 4
assert sorted(formula for row in solutions if row[2] for formula in row[3]) == [
    (-1, 0), (-1, 1), (-1, 2), (1, 0),
]
print('PASS: 4^9 permutation-face candidates -> 13 YB solutions -> 4 rotation-support solutions')
# The three nonstandard-looking survivors are position-twisted ordinary flips.
for shift in range(3):
    for a, b, c in product(range(3), repeat=3):
        d = (-a-b-c+shift) % 3
        incoming = ((a+b-2*shift) % 3, (b+c-2*shift) % 3)
        outgoing = ((a+d-2*shift) % 3, (d+c-2*shift) % 3)
        assert outgoing == ((-incoming[1]) % 3, (-incoming[0]) % 3)
print('PASS: all rotation-support survivors reduce to ordinary exchange')
print('All exact checks passed. No spacetime-net existence is asserted.')
