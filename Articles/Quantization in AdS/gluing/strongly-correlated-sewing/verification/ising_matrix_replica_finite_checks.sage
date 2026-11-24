#!/usr/bin/env sage
# Exact finite matrix-replica identities; no asymptotics and no JSON output.
# Run: sage --nodotsage -python ising_matrix_replica_finite_checks.sage
from sage.all import *
from itertools import combinations, product

K = CyclotomicField(16)
zeta = K.gen()
ii = zeta ** 4
I2 = identity_matrix(K, 2, sparse=False)
X = matrix(K, [[0, 1], [1, 0]])
Y = matrix(K, [[0, -ii], [ii, 0]])
Z = diagonal_matrix(K, [1, -1], sparse=False)


def require(label, value):
    if value is not True:
        raise AssertionError(label + ': ' + str(value))
    print('PASS:', label)


def kron(factors):
    result = matrix(K, [[1]])
    for factor in factors:
        result = result.dense_matrix().tensor_product(factor.dense_matrix())
    return result


def majoranas(m):
    # gamma_(2j)=JW(X), gamma_(2j+1)=JW(-Y); i gamma_even gamma_odd=Z.
    return [kron([Z] * j + [q] + [I2] * (m - j - 1))
            for j in range(m) for q in (X, -Y)]


def matprod(factors, dim):
    result = identity_matrix(K, dim)
    for factor in factors:
        result = result * factor
    return result


def pfaffian(M):
    return K(1) if M.nrows() == 0 else M.pfaffian()


def covariance(C):
    N = C.nrows()
    return matrix(K, 2 * N, 2 * N,
                  lambda a, b: C[a // 2, b // 2]
                  if a % 2 == 0 and b % 2 == 1 else
                  (-C[b // 2, a // 2]
                   if a % 2 == 1 and b % 2 == 0 else 0))


def car_operator(Gamma, A, B):
    # Tr F O=<P_B O>; B=[] gives G. No division by <P_B>.
    gamma = majoranas(len(A))
    aa = [2 * x + t for x in A for t in range(2)]
    bb = [2 * x + t for x in B for t in range(2)]
    result = zero_matrix(K, 2 ** len(A))
    for k in range(0, len(aa) + 1, 2):
        for subset in combinations(range(len(aa)), k):
            indices = bb + [aa[q] for q in subset]
            coefficient = ii ** (k // 2) * pfaffian(
                Gamma.matrix_from_rows_and_columns(indices, indices))
            result += coefficient * matprod(
                [gamma[q] for q in subset], 2 ** len(A)) / 2 ** len(A)
    return result


def rotation(i, j, c, s):
    R = identity_matrix(QQ, 4)
    R[i, i] = R[j, j] = c
    R[i, j] = s
    R[j, i] = -s
    return R


def symbols(n, r, s, wrong_unsigned=False):
    T = zero_matrix(QQ, n)
    T[n - 1, 0] = 1 if wrong_unsigned else (-1) ** (n - 1)
    for j in range(1, n):
        T[j - 1, j] = 1
    D = diagonal_matrix(QQ, [(-1) ** x for x in s])
    R = diagonal_matrix(QQ, [(-1) ** x for x in r])
    return [D * T * D, R, T, identity_matrix(QQ, n)]


def word(G, S, P, r, s):
    return matprod([P ** s[j] * (S if r[j] else G) * P ** s[j]
                    for j in range(len(r))], G.nrows()).trace()


def occupied_determinant(C, r, s, wrong_unsigned=False):
    n = len(r)
    U = block_diagonal_matrix(symbols(n, r, s, wrong_unsigned))
    CC = C.tensor_product(identity_matrix(QQ, n))
    return ((U + CC.transpose() * U * CC) / 2).det()


def all_sectors(C, orders, label):
    Gamma = covariance(C)
    require(label + ': C orthogonal', C * C.transpose() == identity_matrix(C.base_ring(), 4))
    require(label + ': even pure vacuum', C.det() == 1)
    require(label + ': Gamma pure', Gamma ** 2 == -identity_matrix(K, 8))
    G = car_operator(Gamma, [0, 2], [])
    S = car_operator(Gamma, [0, 2], [1])
    P = Z.tensor_product(I2)
    require(label + ': G normalized', G.trace() == 1)
    require(label + ': G,S Hermitian', G == G.conjugate_transpose() and S == S.conjugate_transpose())
    require(label + ': G,S real', all(x == x.conjugate() for x in G.list() + S.list()))
    for n in orders:
        count = 0
        for r in product((0, 1), repeat=n):
            if sum(r) % 2:
                continue
            for ss in product((0, 1), repeat=n - 1):
                s = ss + (0,)
                w = word(G, S, P, r, s)
                det = occupied_determinant(C, r, s)
                if w ** 2 != det:
                    raise AssertionError((label, n, r, s, w, det))
                count += 1
        require(label + ': all n=' + str(n) + ' words (' + str(count) + ')', True)
    values = []
    for name, r, s in [('a', (0, 0, 0), (0, 0, 0)),
                       ('d', (0, 1, 1), (1, 0, 0)),
                       ('e', (0, 1, 1), (1, 1, 0))]:
        w = word(G, S, P, r, s)
        values.append(w)
        print(label, name, '=', w)
    require(label + ': canonical e ordering', values[2] == (G * S * P * S * P).trace())
    require(label + ': canonical d ordering', values[1] == (P * G * P * S ** 2).trace())
    return G, S, P, values


C = (rotation(0, 1, QQ(3) / 5, QQ(4) / 5)
     * rotation(1, 2, QQ(5) / 13, QQ(12) / 13)
     * rotation(2, 3, QQ(8) / 17, QQ(15) / 17)
     * rotation(0, 3, QQ(7) / 25, QQ(24) / 25))
G, S, P, values = all_sectors(C, (2, 3, 4), 'rational generic')
require('negative e counterexample', values[2] == -K(15754670623) / 674616312500)
require('unsigned replica cycle fails already at n=2',
        occupied_determinant(C, (0, 0), (0, 0), True) != (G ** 2).trace() ** 2)

Czero = rotation(0, 1, QQ(0), QQ(1)) * rotation(2, 3, QQ(0), QQ(1))
Gzero, Szero, Pzero, _ = all_sectors(Czero, (2, 3, 4), 'zero string trace')
require('zero string trace without zero S', Szero.trace() == 0 and Szero != 0)

# Actual critical even Ising N=4, all arithmetic in Q(exp(i*pi/8)).
N = 4
Cising = matrix(K, N, N,
               lambda j, k: 2 * ii / (N * (zeta ** (2 * (k - j) + 1)
                                           - zeta ** (-(2 * (k - j) + 1)))))
Gi, Si, Pi, vi = all_sectors(Cising, (2, 3), 'critical Ising N=4')
Gamma = covariance(Cising)
Qminus = (identity_matrix(K, 2 * N) - ii * Gamma) / 2
Qplus = (identity_matrix(K, 2 * N) + ii * Gamma) / 2
sublattice = diagonal_matrix(K, [(-1) ** p for p in range(2 * N)])
require('doubling sublattice gauge switches occupied projection',
        sublattice * Qplus * sublattice == Qminus)
H = diagonal_matrix(K, [zeta ** (-p) for p in range(2 * N)], sparse=False)
V = matrix(K, 2 * N, N, lambda p, m: zeta ** (2 * m * p))
PN = V * V.conjugate_transpose() / (2 * N)
require('exact Ising-to-Hardy gauge', H * Qminus * H.conjugate_transpose() == PN)
require('Hardy occupied projection rank N', PN ** 2 == PN and PN.rank() == N)
for name, r, s in [('a', (0, 0, 0), (0, 0, 0)),
                   ('d', (0, 1, 1), (1, 0, 0)),
                   ('e', (0, 1, 1), (1, 1, 0))]:
    g = symbols(3, r, s)
    Dg = block_diagonal_matrix([g[p // 2] for p in range(2 * N)])
    Pfull = PN.tensor_product(identity_matrix(K, 3, sparse=False))
    Hfull = H.tensor_product(identity_matrix(K, 3, sparse=False))
    w = word(Gi, Si, Pi, r, s)
    require('Hardy symbol unchanged ' + name, Hfull * Dg == Dg * Hfull)
    require('full-chain Hardy determinant ' + name,
            (identity_matrix(K, 6 * N) - Pfull + Pfull * Dg).det() == w ** 2)
    Vn = V.tensor_product(identity_matrix(K, 3, sparse=False))
    require('occupied 3N-dimensional compression ' + name,
            (Vn.conjugate_transpose() * Dg * Vn / (2 * N)).det() == w ** 2)

# n=2 calibration against the one-component centered auxiliary XX determinant.
for r0, s0 in product((0, 1), repeat=2):
    # lambda_A1=-(-1)^s*pi/2, lambda_B=-r*pi, lambda_A2=-pi/2.
    c = [K(2).sqrt() / 2, K(1 - r0), K(2).sqrt() / 2, K(1)]
    t = [-(-1) ** s0 * K(2).sqrt() / 2, -r0, -K(2).sqrt() / 2, K(0)]
    cosines = diagonal_matrix(K, [c[p // 2] for p in range(8)])
    sines = diagonal_matrix(K, [t[p // 2] for p in range(8)])
    scalar = (cosines - sines * Gamma).det()
    w = word(Gi, Si, Pi, (r0, r0), (s0, 0))
    require('n2 single-determinant calibration r,s=' + str((r0, s0)), scalar == w)

# Local jump spectra, independently of C and without diagonalization branches.
for n in range(2, 7):
    count = 0
    Rpoly = PolynomialRing(QQ, 'x')
    x = Rpoly.gen()
    expected = x ** n - (-1) ** (n - 1)
    for r in product((0, 1), repeat=n):
        if sum(r) % 2:
            continue
        for ss in product((0, 1), repeat=n - 1):
            s = ss + (0,)
            g = symbols(n, r, s)
            jumps = [g[3].transpose() * g[0], g[0].transpose() * g[1],
                     g[1].transpose() * g[2], g[2].transpose() * g[3]]
            if any(Rpoly(J.charpoly()) != expected for J in jumps):
                raise AssertionError(('jump spectrum', n, r, s))
            for parity in (0, 1):
                if (-1) ** (parity * ((n - 1) * parity + n - 1)) != 1:
                    raise AssertionError(('replica sign', n, parity))
            count += 1
    require('all endpoint spectra n=' + str(n) + ' sectors=' + str(count), True)
print('ALL EXACT FINITE CHECKS PASSED; no asymptotic claims tested.')
