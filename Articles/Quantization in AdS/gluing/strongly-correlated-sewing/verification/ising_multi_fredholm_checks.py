#!/usr/bin/env python3
"""Stdout-only checks of the independent multi-interval relative determinant.

Requires Python 3 and NumPy. No files are written. The finite matrices below
are midpoint Nystrom approximations to the scalar finite Hilbert transform,
NOT the original critical-Ising covariance. They check normalizations and
continuum predictions; lattice convergence remains a hypothesis of the note.

Run: python3 ising_multi_fredholm_checks.py
Optional: --ns 20,40,80,160
"""

from __future__ import annotations

import argparse
import numpy as np


def pair_cross_ratios(intervals: np.ndarray) -> np.ndarray:
    m = len(intervals)
    ratios = np.ones((m, m))
    for j in range(m):
        for k in range(j + 1, m):
            a, b = intervals[j]
            c, d = intervals[k]
            ratios[j, k] = ratios[k, j] = abs(
                (b - c) * (a - d) / ((a - c) * (b - d))
            )
    return ratios


def scalar_log_closed(intervals: np.ndarray, ss: np.ndarray) -> float:
    beta = np.arctan(1.0 / ss) / np.pi
    rr = pair_cross_ratios(intervals)
    return float(-sum(
        beta[j] * beta[k] * np.log(rr[j, k])
        for j in range(len(ss)) for k in range(j + 1, len(ss))
    ))


def nystrom(intervals: np.ndarray, ss: np.ndarray, n: int):
    m = len(intervals)
    xx = np.concatenate([
        a + (np.arange(n) + 0.5) * (b - a) / n for a, b in intervals
    ])
    ww = np.concatenate([
        np.full(n, (b - a) / n) for a, b in intervals
    ])
    delta = xx[None, :] - xx[:, None]
    np.fill_diagonal(delta, 1.0)
    hh = np.sqrt(ww[:, None] * ww[None, :]) / (np.pi * delta)
    np.fill_diagonal(hh, 0.0)
    tt = np.diag(np.repeat(ss, n)) + hh
    diag = [tt[j*n:(j+1)*n, j*n:(j+1)*n] for j in range(m)]
    diag_dets = [np.linalg.slogdet(block) for block in diag]
    sign, logabs = np.linalg.slogdet(tt)
    relative_sign = float(sign * np.prod([item[0] for item in diag_dets]))
    log_relative = float(logabs - sum(item[1] for item in diag_dets))
    return xx, ww, hh, tt, diag, diag_dets, relative_sign, log_relative


def check_geometry_and_quadrature(intervals: np.ndarray) -> None:
    rr = pair_cross_ratios(intervals)
    length, center = 7.0, 1.4
    circle = center + length * np.arctan(intervals) / np.pi
    errs = []
    for j in range(len(intervals)):
        for k in range(j + 1, len(intervals)):
            a, b = circle[j]
            c, d = circle[k]
            rc = abs(
                np.sin(np.pi * (b-c) / length)
                * np.sin(np.pi * (a-d) / length)
                / (np.sin(np.pi * (a-c) / length)
                   * np.sin(np.pi * (b-d) / length))
            )
            errs.append(abs(rc - rr[j, k]))
    assert max(errs) < 2e-14
    print(f"Cayley/circle cross-ratio max error: {max(errs):.3e}")
    q, w = np.polynomial.legendre.leggauss(80)
    errors = []
    for j in range(len(intervals)):
        for k in range(j + 1, len(intervals)):
            a, b = intervals[j]
            c, d = intervals[k]
            x = (a+b)/2 + (b-a)*q/2
            y = (c+d)/2 + (d-c)*q/2
            integral = ((b-a)*(d-c)/4 * np.sum(
                w[:, None]*w[None, :] / (np.pi*(y[None, :]-x[:, None]))**2
            ))
            expected = -np.log(rr[j, k]) / np.pi**2
            errors.append(abs(integral - expected))
    assert max(errors) < 2e-14
    print(f"Second-order cross integral max error: {max(errors):.3e}")


def check_finite_det2(intervals: np.ndarray, ss: np.ndarray, n: int = 40) -> None:
    _, _, _, tt, diag, _, sign, logrel = nystrom(intervals, ss, n)
    vv = tt.copy()
    for j in range(len(ss)):
        vv[j*n:(j+1)*n, j*n:(j+1)*n] = 0.0
    kk = np.empty_like(vv)
    for j, block in enumerate(diag):
        kk[j*n:(j+1)*n] = np.linalg.solve(block, vv[j*n:(j+1)*n])
    ks, kl = np.linalg.slogdet(np.eye(len(tt)) + kk)
    trk = float(np.trace(kk))
    error = abs(float(kl) - logrel)
    assert abs(trk) < 1e-14 and error < 2e-11 and ks == sign
    # This also checks the exact simultaneous sign-reversal symmetry.
    reverse = nystrom(intervals, -ss, n)[-1]
    assert abs(reverse - logrel) < 2e-11
    print(f"Finite det2 identity (n={n}): TrK={trk:.3e}, log error={error:.3e}")
    print(f"Simultaneous parameter-sign reversal error: {abs(reverse-logrel):.3e}")


def check_mixed_nystrom(intervals: np.ndarray, ss: np.ndarray, ns: list[int]) -> None:
    predicted = scalar_log_closed(intervals, ss)
    beta = np.arctan(1.0 / ss) / np.pi
    ds = np.sin(np.pi * beta)
    print("Mixed-sign parameters:", ss)
    print("Beta:", beta)
    print(f"Scalar log closed: {predicted:.15f}")
    print(f"Full two-sector log closed: {2*predicted:.15f}")
    print("n scalar_sign scalar_log error connected_3 residual_R1_L2")
    errors = []
    for n in ns:
        xx, ww, _, tt, _, diag_dets, sign, logrel = nystrom(intervals, ss, n)
        pair_sum = 0.0
        for j in range(3):
            for k in range(j + 1, 3):
                ix = np.r_[np.arange(j*n, (j+1)*n), np.arange(k*n, (k+1)*n)]
                pair_sign, pair_log = np.linalg.slogdet(tt[np.ix_(ix, ix)])
                assert pair_sign != 0
                pair_sum += pair_log - diag_dets[j][1] - diag_dets[k][1]
        logw = np.zeros_like(xx)
        for bta, (a, b) in zip(beta, intervals):
            logw += bta * np.log(abs((xx-a)/(xx-b)))
        exact_inverse_one = np.repeat(ds, n) * np.exp(logw)
        approx = np.linalg.solve(tt, np.sqrt(ww))
        inverse_error = np.linalg.norm(approx - np.sqrt(ww)*exact_inverse_one)
        error = logrel - predicted
        errors.append(abs(error))
        print(f"{n:4d} {sign:+.0f} {logrel:+.12f} {error:+.6e} "
              f"{logrel-pair_sum:+.6e} {inverse_error:.6e}")
    if len(ns) > 1:
        assert errors[-1] < errors[0], "Chosen mesh sequence did not improve the error"
    print("Nystrom data are finite numerical support, not a proof or a lattice check.")


def check_large_parameter(intervals: np.ndarray, ss: np.ndarray) -> None:
    rr = pair_cross_ratios(intervals)
    coefficient = -2 / np.pi**2 * sum(
        np.log(rr[j, k]) / (ss[j]*ss[k])
        for j in range(len(ss)) for k in range(j + 1, len(ss))
    )
    print("Large-parameter check: lambda, lambda^4*(full_log-leading_lambda^-2)")
    for scale in (10.0, 20.0, 40.0, 80.0):
        full = 2 * scalar_log_closed(intervals, scale*ss)
        print(f"{scale:5.0f} {(full-coefficient/scale**2)*scale**4:+.12f}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ns", default="20,40,80,160", help="even mesh sizes per interval")
    args = parser.parse_args()
    ns = [int(item) for item in args.ns.split(",")]
    if not ns or any(n < 2 or n % 2 for n in ns) or ns != sorted(set(ns)):
        parser.error("--ns must be a strictly increasing list of positive even integers")
    intervals = np.array([[0.0, 0.4], [0.9, 1.5], [2.2, 3.0]])
    ss = np.array([0.7, -1.3, 2.1])
    print("Independent multi-interval Fredholm checks; stdout only")
    print("NumPy version:", np.__version__)
    check_geometry_and_quadrature(intervals)
    check_finite_det2(intervals, ss)
    check_mixed_nystrom(intervals, ss, ns)
    check_large_parameter(intervals, ss)
    print("PASS: all finite algebraic/quadrature assertions; convergence evidence printed above.")


if __name__ == "__main__":
    main()
