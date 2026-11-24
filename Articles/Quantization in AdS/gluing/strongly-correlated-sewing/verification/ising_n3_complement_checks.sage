#!/usr/bin/env sage
# Exact finite CAR checks; no JSON output.
# Primary independent part: n=3 complement identities, signs, and counterexamples.
# Secondary collaborative part: multi-interval n=2 projector and winding identities.
# Run: sage --nodotsage -python ising_n3_complement_checks.sage
from sage.all import *
from itertools import product

K = QQbar
Iunit = K.zeta(4)
I2 = identity_matrix(K, 2)
X = matrix(K, [[0, 1], [1, 0]])
Y = matrix(K, [[0, -Iunit], [Iunit, 0]])
Z = diagonal_matrix(K, [1, -1])


def kron(factors):
    out = matrix(K, [[1]])
    for factor in factors:
        out = out.tensor_product(factor)
    return out


def majoranas(n):
    return [kron([Z] * j + [q] + [I2] * (n - j - 1))
            for j in range(n) for q in (X, Y)]


def covariance(rho, gammas):
    n = len(gammas)
    return matrix(K, n, n,
                  lambda j, k: 0 if j == k else
                  Iunit * (rho * gammas[j] * gammas[k]).trace())


def exact(v):
    v = K(v)
    return str(QQ(v.real())) if v.imag() == 0 else (
        str(QQ(v.real())) + ' + I*(' + str(QQ(v.imag())) + ')')


def require(label, condition):
    if not condition:
        raise AssertionError(label)
    print('PASS:', label)


P = diagonal_matrix(K, [1, 1, -1, -1])  # P_A1, or P_B on D.
P2 = diagonal_matrix(K, [1, -1, 1, -1])
PD = P * P2


def five_words(G, S, parity):
    return [(G ** 3).trace(),
            (G ** 2 * parity * G * parity).trace(),
            (G * S ** 2).trace(),
            (parity * G * parity * S ** 2).trace(),
            (G * S * parity * S * parity).trace()]


def four_block_state(M):
    # Physical order (a,b,c,d)=(A1,B,A2,C); CAR grouping (a,c)|(b,d).
    psi = vector(K, 16)
    spin_amplitude = matrix(K, 4, 4)
    for a, b, c, d in product(range(2), repeat=4):
        value = (-1) ** (b * c) * M[2 * a + c, 2 * b + d]
        psi[8 * a + 4 * b + 2 * c + d] = value
        spin_amplitude[2 * a + c, 2 * b + d] = value
    return psi, spin_amplitude


def evaluate_four_block(label, M, gaussian_required=True, real_required=True):
    print('\nSTATE:', label)
    G = M * M.conjugate_transpose()
    S = M * P * M.conjugate_transpose()
    N = PD * M.transpose()
    R = N * N.conjugate_transpose()
    SD = N * P2 * N.conjugate_transpose()
    psi, spin_amplitude = four_block_state(M)
    rho = psi.column() * psi.conjugate().row()
    spin = spin_amplitude * spin_amplitude.conjugate_transpose()
    Gamma = covariance(rho, majoranas(4))
    words = five_words(G, S, P)
    dual = five_words(R, SD, P)
    require(label + ': normalized', (psi.conjugate().row() * psi.column())[0, 0] == 1)
    require(label + ': even parity', all(psi[j] == 0 for j in range(16)
                                      if int(j).bit_count() % 2))
    if real_required:
        require(label + ': real amplitudes', all(v.imag() == 0 for v in psi))
    if gaussian_required:
        # For a normalized pure finite CAR state, Gamma^2=-I certifies Gaussianity.
        require(label + ': pure Gaussian covariance',
                Gamma ** 2 == -identity_matrix(K, 8))
    require(label + ': exact complement identities',
            words == [dual[0], dual[2], dual[1], dual[3], dual[4]])
    require(label + ': spin density reconstruction',
            spin == (G + P * G * P + S - P * S * P) / 2)
    p3 = (words[0] + 3 * words[1] + 3 * words[2] + 3 * words[3]
          - 6 * words[4].real()) / 4
    require(label + ': direct spin p3', (spin ** 3).trace() == p3)
    print('  words_A =', [exact(v) for v in words])
    print('  words_D =', [exact(v) for v in dual])
    print('  spin_p3 =', exact(p3))
    return dict(G=G, S=S, R=R, SD=SD, words=words, p3=p3)


print('PRIMARY INDEPENDENT: n=3 finite CAR identities and real Gaussian counterexamples')
M0 = diagonal_matrix(K, [K(3).sqrt(), K(3).sqrt(), 1, -1]) / (2 * K(2).sqrt())
t = 1 / K(2).sqrt()
U = identity_matrix(K, 4)
U[1, 1] = t
U[1, 2] = t
U[2, 1] = -t
U[2, 2] = t
res0 = evaluate_four_block('fixed-complement theta=0', M0)
res1 = evaluate_four_block('fixed-complement theta=pi/4', U * M0)
require('counterexample: same complete complement density', res0['R'] == res1['R'])
require('counterexample: complement density specified explicitly',
        res0['R'] == diagonal_matrix(K, [3, 3, 1, 1]) / 8)
require('counterexample: d changes', res0['words'][3] != res1['words'][3])
require('counterexample: e changes', res0['words'][4] != res1['words'][4])
require('counterexample: exact stated values',
        res0['words'] == [K(7) / 64] * 5 and
        res1['words'] == [K(7) / 64, K(5) / 64, K(7) / 64, K(5) / 64, K(1) / 32])

# eta_1 eta_3 is a real antisymmetric Gaussian generator on A.
eta = majoranas(2)
Unegative = (identity_matrix(K, 4) + eta[0] * eta[2]) / K(2).sqrt()
Mbell = diagonal_matrix(K, [1, 1, 1, -1]) / 2
negative = evaluate_four_block('negative e', Unegative * Mbell)
require('negative e: exact five words',
        negative['words'] == [K(1) / 16] * 4 + [-K(1) / 16])
require('negative e: maximally mixed complement',
        negative['R'] == identity_matrix(K, 4) / 4)
L = Unegative * P * Unegative.conjugate_transpose()
require('negative e: anticommuting parities', L * P + P * L == zero_matrix(K, 4))

# Rotate inside D, so [R,P_B] is genuinely nonzero in the Pfaffian test.
noncommuting = evaluate_four_block('noncommuting complement Pfaffian test', M0 * U.transpose())
R = noncommuting['R']
require('Pfaffian test: noncommuting R and P_B', R * P != P * R)
C = covariance(R, majoranas(2))
C2 = 2 * C * (identity_matrix(K, 4) - C ** 2).inverse()
JB = diagonal_matrix(K, [-1, -1, 1, 1])


def overlap_pfaffian(A, B):
    # Exactly the convention in the question, including the finite sign.
    n = A.nrows()
    F = block_matrix(K, [[A, identity_matrix(K, n)],
                         [-identity_matrix(K, n), -B]])
    return (-1) ** (n // 2) * F.pfaffian() / 2 ** (n // 2)


R2normalized = R ** 2 / (R ** 2).trace()
require('squared Gaussian covariance formula', covariance(R2normalized, majoranas(2)) == C2)
c_pf = overlap_pfaffian(C, C) * overlap_pfaffian(C2, JB * C * JB)
require('complement c equals two signed Pfaffian overlaps', c_pf == noncommuting['words'][2])
print('  c_signed_pfaffian =', exact(c_pf))

# The universal transpose convention is also checked away from reality and Gaussianity.
Mg = zero_matrix(K, 4)
Mg[0, 0], Mg[0, 3], Mg[3, 0], Mg[3, 3] = 1, 2 + Iunit, 3 + 2 * Iunit, 4 - Iunit
Mg[1, 1], Mg[1, 2], Mg[2, 1], Mg[2, 2] = 2 - Iunit, 1 + 3 * Iunit, 4 + Iunit, 2
Mg /= (Mg * Mg.conjugate_transpose()).trace().sqrt()
complex_example = evaluate_four_block('general complex even pure state', Mg,
                                     gaussian_required=False, real_required=False)
require('complex example tests e, not its conjugate', complex_example['words'][4].imag() != 0)


print('\nSECONDARY COLLABORATIVE: multi-interval n=2 projector and jump-winding algebra')
print('Candidate supplied by parent after the independent n=3 derivation; no XX-FCS mapping checked.')


def bits_of(j, n):
    return tuple((j >> (n - k - 1)) & 1 for k in range(n))


def bits_index(bits):
    out = 0
    for bit in bits:
        out = 2 * out + bit
    return out


def parity_diagonal(n, mask):
    return diagonal_matrix(K, [(-1) ** sum(a * b for a, b in zip(bits_of(j, n), mask))
                               for j in range(2 ** n)])


def multi_interval_check(m):
    # Physical order A1,B1,...,Am,C, one mode per block.
    # Deliberately arbitrary real even pure state, not asserted Gaussian.
    amplitudes = vector(K, [j + 1 if int(j).bit_count() % 2 == 0 else 0
                            for j in range(2 ** (2 * m))])
    amplitudes /= (amplitudes.conjugate().row() * amplitudes.column())[0, 0].sqrt()
    M = zero_matrix(K, 2 ** m)
    physical = zero_matrix(K, 2 ** m)
    for j, value in enumerate(amplitudes):
        bits = bits_of(j, 2 * m)
        abits, dbits = bits[::2], bits[1::2]
        crossing = sum(dbits[i] * abits[k] for i in range(m - 1)
                       for k in range(i + 1, m))
        row, col = bits_index(abits), bits_index(dbits)
        M[row, col] = (-1) ** crossing * value
        physical[row, col] = value
    spin = physical * physical.conjugate_transpose()
    reconstructed = zero_matrix(K, 2 ** m)
    p2sum = K(0)
    for rshort in product(range(2), repeat=m - 1):
        r = (0,) + rshort + (0,)
        q = tuple((r[i] + r[i + 1]) % 2 for i in range(m))
        Qr = parity_diagonal(m, rshort + (0,))
        Sr = M * Qr * M.conjugate_transpose()
        for sshort in product(range(2), repeat=m - 1):
            s = sshort + (0,)
            Ps = parity_diagonal(m, s)
            sign = (-1) ** sum(qi * si for qi, si in zip(q, s))
            reconstructed += sign * Ps * Sr * Ps / 2 ** (m - 1)
            p2sum += sign * (Sr * Ps * Sr * Ps).trace() / 2 ** (m - 1)
    require('n2 m=' + str(m) + ': sector reconstruction', spin == reconstructed)
    require('n2 m=' + str(m) + ': direct spin purity', p2sum == (spin ** 2).trace())
    print('  spin_p2 =', exact(p2sum))


for m in (1, 2, 3):
    multi_interval_check(m)

for m in range(1, 8):
    count = 0
    for rshort in product(range(2), repeat=m - 1):
        r = (0,) + rshort + (0,)
        for sshort in product(range(2), repeat=m - 1):
            s = sshort + (0,)
            q = tuple((r[i] + r[i + 1]) % 2 for i in range(m))
            # Each entry is a principal phase jump measured in units pi/2.
            jumps = [jump for i in range(m) for jump in
                     (-(-1) ** (s[i] + r[i]), (-1) ** (s[i] + r[i + 1]))]
            w = sum(s[i] * (r[i + 1] - r[i]) for i in range(m))
            assert all(jump in (-1, 1) for jump in jumps)
            assert sum(jumps) == 4 * w
            assert (-1) ** w == (-1) ** sum(qi * si for qi, si in zip(q, s))
            count += 1
    print('PASS: winding and sign, m=' + str(m) + ', sectors=' + str(count))

print('\nALL EXACT CHECKS PASSED.')
print('Scope: finite CAR identities/counterexamples; no Ising continuum limit, Fisher-Hartwig asymptotics, or XX-FCS normalization proof.')
