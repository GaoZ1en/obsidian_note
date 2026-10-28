"""Fresh exact continuum checks; run with SageMath's Python.

This script contains no imports from the submission and performs no finite-P scan.
The same assertions were evaluated in fresh Sage kernels during this review.
"""
from sage.all import QQ, PolynomialRing, matrix, prod

R = PolynomialRing(QQ, 'D')
D = R.gen()
F = R.fraction_field()


def rising(a, n):
    return prod(a + j for j in range(n))


def jacobi_moment(b, a2, m, k=0):
    # A diagonally similar tridiagonal matrix avoids algebraic square roots.
    # Its upper/lower product is a2 and it has the same diagonal moments.
    N = m + k + 2
    J = matrix(F, N)
    for j in range(N):
        J[j, j] = b(j)
        if j + 1 < N:
            J[j, j + 1] = a2(j)
            J[j + 1, j] = 1
    return (J ** m)[k, k]


beta = lambda m: F(rising(D, m) / rising(2 * D, m))
gamma = lambda m: F(rising(D, m) / 2 ** m)
b = lambda j: F(1) / 2
a2 = lambda j: F((j + 1) * (j + 2 * D - 1) /
                  (4 * (2 * j + 2 * D - 1) * (2 * j + 2 * D + 1)))
bl = lambda j: j + D / 2
al2 = lambda j: (j + 1) * (j + D) / 4

for m in range(7):
    assert jacobi_moment(b, a2, m) == beta(m)
    assert jacobi_moment(b, a2, m, 1) == (2 * D + 1) * (
        4 * beta(m + 2) - 4 * beta(m + 1) + beta(m))
    assert jacobi_moment(bl, al2, m) == gamma(m)
    assert jacobi_moment(bl, al2, m, 1) == (
        D * D * gamma(m) - 4 * D * gamma(m + 1) +
        4 * gamma(m + 2)) / D

S = PolynomialRing(QQ, 'x')
x = S.gen()
p2 = (3 * x ** 2 - 1) / 2
p6 = (231 * x ** 6 - 315 * x ** 4 + 105 * x ** 2 - 5) / 16


def integral(p):
    primitive = S(p).integral()
    return primitive(1) - primitive(0)


assert integral(2 * x * 5 * p2 ** 2) == QQ(5) / 4
assert (1 + QQ(16) / 5) / (QQ(3) / 8) == QQ(56) / 5
assert integral(2 * x * p2 ** 2) == QQ(1) / 4
assert integral(2 * x * p2 * p6) == -QQ(1) / 80
assert integral(2 * x * p6 ** 2) == QQ(25) / 256
trial = p6 + p2 / 20
norm = integral(2 * x * trial ** 2)
energy = QQ(3) / 8 * integral(p6 ** 2)
assert integral(2 * x * trial * p2) == 0
assert norm == QQ(621) / 6400
assert energy == QQ(3) / 104
assert energy / norm == QQ(800) / 2691
assert energy / norm < QQ(1) / 2

# Independent polynomial-Casimir coefficient derivation, algebraically factored.
T = PolynomialRing(QQ, names=('k', 'm', 'Delta'))
k, m, Delta = T.gens()
Q = T.fraction_field()
c = Q(m * (m - 1) / (8 * (2 * k + 2 * Delta + 1)))
cprev = Q(m * (m + 1) / (8 * (2 * k + 2 * Delta - 1)))
upper = (-m * (m - 1) / 2 - k * m / 4 - 3 * Delta * m / 4
         - (k + 2) * (m - 2 + Delta) * c + k * (m + Delta) * cprev)
expected = -Q(m * (2 * Delta + k - 1) * (2 * Delta + 2 * k + m) *
              (3 * Delta + 2 * k + m - 1) /
              (4 * (2 * Delta + 2 * k - 1) * (2 * Delta + 2 * k + 1)))
assert upper == expected
P = k + m
sP = (P + 3 * Delta / 2) * (P + 3 * Delta / 2 - 1) + 3 * (Delta / 2) * (Delta / 2 - 1)
lambda_k = (k + Delta) * (k + Delta - 1)
diagonal = m * (m - 1) / 2 + k * m + 3 * Delta * m / 2 + Delta * k / 2 + Delta * (Delta - 1)
assert diagonal == (sP - lambda_k) / 2
assert diagonal - Delta * (Delta - 1) == (P ** 2 - k ** 2 - P + k + Delta * (3 * P - 2 * k)) / 2

print('All fresh exact continuum checks passed.')
print('Subessential positive Ritz bound:', energy / norm)
