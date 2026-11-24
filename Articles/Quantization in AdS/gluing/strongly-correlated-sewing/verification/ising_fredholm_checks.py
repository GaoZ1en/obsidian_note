#!/usr/bin/env python3
"""Independent NS-covariance/Fredholm checks; NumPy only, Markdown to stdout.

No Fisher--Hartwig or CFT input is used. Numerical comparisons support, but
are not substitutes for, the analytic proof in the companion review.
Run: python ising_fredholm_checks.py
"""
from __future__ import annotations

import argparse
import numpy as np


def determinant(matrix: np.ndarray) -> float:
    sign, logabs = np.linalg.slogdet(matrix)
    return float(np.real_if_close(sign * np.exp(logabs)))


def crossratio(endpoints: np.ndarray, circle: bool = True) -> float:
    a, b, c, d = endpoints
    f = (lambda x: np.sin(np.pi * x)) if circle else (lambda x: x)
    return float(f(b - a) * f(d - c) / (f(c - a) * f(d - b)))


def lattice_blocks(n: int, endpoints: np.ndarray):
    a, b, c, d = np.rint(n * endpoints).astype(int)
    first, second = np.arange(a, b), np.arange(c, d)
    indices = np.r_[first, second]
    count = len(indices)
    covariance_c = 1.0 / (n * np.sin(np.pi *
                    (indices[None, :] - indices[:, None] + 0.5) / n))
    zero = np.zeros((count, count))
    covariance = np.block([[zero, covariance_c], [-covariance_c.T, zero]])
    p = np.r_[np.arange(len(first)), count + np.arange(len(first))]
    q = np.r_[np.arange(len(first), count), count + np.arange(len(first), count)]
    return covariance[np.ix_(p, p)], covariance[np.ix_(p, q)], \
        covariance[np.ix_(q, p)], covariance[np.ix_(q, q)]


def scalar_schur(blocks, first_sign: float, second_sign: float) -> float:
    aa, ab, ba, bb = blocks
    left = np.linalg.solve(first_sign * np.eye(len(aa)) + aa, ab)
    right = np.linalg.solve(second_sign * np.eye(len(bb)) + bb, ba)
    return determinant(np.eye(len(bb)) - right @ left)


def lattice_direct(blocks, first_sign: int, second_sign: int) -> float:
    aa, ab, ba, bb = blocks
    matrix = np.block([[first_sign * np.eye(len(aa)) + aa, ab],
                       [ba, second_sign * np.eye(len(bb)) + bb]])
    sign, value = np.linalg.slogdet(matrix)
    denominator = np.linalg.slogdet(np.eye(len(aa)) + aa)[1] \
        + np.linalg.slogdet(np.eye(len(bb)) + bb)[1]
    return float(sign * np.exp(value - denominator))


def line_midpoint_blocks(n: int, endpoints: np.ndarray):
    a, b, c, d = endpoints
    widths = np.r_[np.full(n, (b-a)/n), np.full(n, (d-c)/n)]
    points = np.r_[a + (np.arange(n)+0.5)*(b-a)/n,
                   c + (np.arange(n)+0.5)*(d-c)/n]
    differences = points[None, :] - points[:, None]
    np.fill_diagonal(differences, 1.0)
    h = np.sqrt(widths[:, None] * widths[None, :]) / (np.pi * differences)
    np.fill_diagonal(h, 0.0)
    return h[:n, :n], h[:n, n:], h[n:, :n], h[n:, n:]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sizes', type=int, nargs='+', default=[40, 80, 160, 320, 640])
    parser.add_argument('--scalar-sizes', type=int, nargs='+', default=[40, 80, 160, 320])
    args = parser.parse_args()
    assert all(n > 0 and n % 20 == 0 for n in args.sizes)
    print('# Independent Ising Fredholm numerical checks\n')
    print('NumPy version:', np.__version__)
    print('\n## Exact staggered NS symbol\n')
    print('| N | max Fourier-symbol residual | max orthogonality residual |')
    print('|---:|---:|---:|')
    for n in [8, 12, 20, 40]:
        j = np.arange(n)
        frequencies = np.arange(-n//2, n//2) + 0.5
        c = 1 / (n * np.sin(np.pi * (j[None, :] - j[:, None] + 0.5) / n))
        x = np.exp(2j*np.pi * j[:, None]*frequencies[None, :]/n)/np.sqrt(n)
        y = np.exp(2j*np.pi * (j[:, None]+0.5)*frequencies[None, :]/n)/np.sqrt(n)
        symbol_error = np.max(np.abs(x.conj().T @ c @ y - np.diag(1j*np.sign(frequencies))))
        orthogonal_error = np.max(np.abs(c.T @ c - np.eye(n)))
        assert symbol_error < 1e-12 and orthogonal_error < 1e-12
        print(f'| {n} | {symbol_error:.4e} | {orthogonal_error:.4e} |')

    print('\n## Finite Schur identity and global-sign reversal\n')
    endpoints = np.array([0.0, 0.2, 0.45, 0.7])
    blocks = lattice_blocks(40, endpoints)
    errors = []
    values = {}
    for s1, s2 in [(1, 1), (-1, 1), (1, -1), (-1, -1)]:
        direct = lattice_direct(blocks, s1, s2)
        schur = scalar_schur(blocks, s1, s2)
        errors.append(abs(direct-schur))
        values[s1, s2] = schur
        print(f'- signs {(s1,s2)}: direct={direct:.14g}, Schur={schur:.14g}.')
    max_error = max(errors)
    assert max_error < 1e-12
    assert abs(values[1, 1] - values[-1, -1]) < 1e-12
    assert abs(values[-1, 1] - values[1, -1]) < 1e-12
    print(f'\nMaximum direct/Schur discrepancy: {max_error:.4e}.')

    print('\n## Circle lattice convergence\n')
    for endpoints in [np.array([0.0, 0.2, 0.45, 0.7]),
                      np.array([0.05, 0.15, 0.5, 0.85])]:
        eta = crossratio(endpoints)
        q = 1 - eta
        targets = [q**(-1/8), q**(1/8)]
        print(f'\nEndpoints/L = {tuple(endpoints)}; eta={eta:.14g}.\n')
        print(f'Analytic targets: D++={targets[0]:.14g}; D-+={targets[1]:.14g}.\n')
        print('| N | D++ | absolute error | D-+ | absolute error |')
        print('|---:|---:|---:|---:|---:|')
        for n in args.sizes:
            blocks = lattice_blocks(n, endpoints)
            # Schur uses the much smaller separated-cross-block determinant.
            same = scalar_schur(blocks, 1, 1)
            opposite = scalar_schur(blocks, -1, 1)
            print(f'| {n} | {same:.12g} | {abs(same-targets[0]):.4e} | '
                  f'{opposite:.12g} | {abs(opposite-targets[1]):.4e} |')

    print('\n## Independent scalar line discretization\n')
    endpoints = np.array([-1.0, -0.3, 0.2, 1.1])
    q = 1-crossratio(endpoints, circle=False)
    print('Midpoint PV discretization on two real-line intervals; no staggered circle matrix.\n')
    print('| nodes per interval | (s1,s2) | scalar Delta | analytic target | absolute error | transpose error |')
    print('|---:|:---:|---:|---:|---:|---:|')
    for n in args.scalar_sizes:
        blocks = line_midpoint_blocks(n, endpoints)
        for s1, s2 in [(1.,1.), (-1.,1.), (2.,-0.7)]:
            beta1, beta2 = np.arctan(1/s1)/np.pi, np.arctan(1/s2)/np.pi
            target = q**(-beta1*beta2)
            value = scalar_schur(blocks, s1, s2)
            transpose_value = scalar_schur(tuple(-block for block in blocks), s1, s2)
            transpose_error = abs(value-transpose_value)
            assert transpose_error < 1e-12
            print(f'| {n} | {(s1,s2)} | {value:.12g} | {target:.12g} | '
                  f'{abs(value-target):.4e} | {transpose_error:.4e} |')
    print('\nAll exact-identity assertions passed. Finite-N errors are reported, not treated as proofs.')


if __name__ == '__main__':
    main()
