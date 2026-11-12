"""Exact finite Ising character coefficients; finite checks, not asymptotic proofs."""
import math
import numpy as np

MAX_N = 4000

def distinct_coeffs(limit, odd=False):
    a = [0] * (limit + 1)
    a[0] = 1
    parts = range(1, limit + 1, 2 if odd else 1)
    for w in parts:
        for n in range(limit, w - 1, -1):
            a[n] += a[n - w]
    return a

pd = distinct_coeffs(MAX_N)
po = distinct_coeffs(2 * MAX_N + 1, odd=True)
chars = [po[0:2 * MAX_N + 1:2], po[1:2 * MAX_N + 2:2], pd]
weights = [0.0, 0.5, 1.0 / 16]
constants = [1 / (4 * math.sqrt(2) * 3**0.25)] * 2 + [1 / (4 * 3**0.25)]
A = math.pi / math.sqrt(3)
print('# Finite numerical checks')
print('\nExact character coefficients: c=1/2, diagonal bosonic Ising Hilbert space.')
print('\n| n | a_0/asymptotic | a_epsilon/asymptotic | a_sigma/asymptotic |')
print('|---:|---:|---:|---:|')
for n in [100, 400, 1000, 2000, 4000]:
    ratios = [arr[n] / (C * n**(-0.75) * math.exp(A * math.sqrt(n))) for arr, C in zip(chars, constants)]
    print('| %d | %s |' % (n, ' | '.join('%.8f' % r for r in ratios)))

lam, L, c = 1.0, 2.0, 0.5
beta = math.sqrt(2 * math.pi * c * lam / 3)
kappa = 2 * math.sqrt(c) * lam * math.pi**2 / (math.sqrt(3) * L**2)
D = math.exp(beta * L / (2 * lam)) * math.sqrt(2) / (8 * math.sqrt(3)) * math.sqrt(math.pi / kappa)
evac = L / (2 * lam) * (math.sqrt(1 - beta**2 / L**2) - 1)
logs = [np.array([math.log(a) if a else -np.inf for a in arr]) for arr in chars]
print('\nSet lambda=1, L=2; beta_H=%.10f; predicted shell constant D=%.10f.' % (beta, D))
print('\nW_N = sum over all three sectors and n+m=N of a_i(n)a_i(m) exp(-beta_H E_lambda).')
print('\n| N | N^(5/4) W_N | ratio to D | N^(3/4) energy-weighted shell |')
print('|---:|---:|---:|---:|')
for N in [100, 400, 1000, 2000, 4000]:
    n = np.arange(N + 1)
    m = N - n
    p = 2 * math.pi / L * (n - m)
    W = 0.0
    M = 0.0
    for i, h in enumerate(weights):
        e0 = 2 * math.pi / L * (N + 2 * h - c / 12)
        e = np.sqrt(p*p + L/lam * e0 + L*L/(4*lam*lam)) - L/(2*lam)
        terms = np.exp(logs[i][n] + logs[i][m] - beta * e)
        W += float(terms.sum())
        M += float(((e - evac) * terms).sum())
    print('| %d | %.10f | %.8f | %.10f |' % (N, N**1.25 * W, N**1.25 * W / D, N**0.75 * M))

print('\nNegative coupling real chiral vacuum descendants, lambda=-1, L=2:')
print('\n| left level n | principal energy / P | discriminant |')
print('|---:|---:|---:|')
for n in [2, 20, 200, 2000]:
    p = 2 * math.pi * n / L
    e0 = p - math.pi * c / (6 * L)
    disc = 1 - 4 * e0 / L + 4 * p*p / (L*L)
    e = L / 2 * (1 - math.sqrt(disc))
    print('| %d | %.10f | %.8f |' % (n, e / p, disc))
print('\nAll calculations above are finite checks. They do not establish convergence by themselves.')
