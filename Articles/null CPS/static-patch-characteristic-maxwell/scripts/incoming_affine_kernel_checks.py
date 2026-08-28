#!/usr/bin/env python3
"""Finite regressions for calculation 12.

The checks cover exact rational partial fractions, the time-tail multiplier,
fixed-j moment and resonance identities, the highest-pole asymptotic, and
finite large-j stress tests.  They do not prove a function-space, Hardy, or
uniform Goursat theorem.
"""

from __future__ import annotations

from fractions import Fraction
import math
import sys

import numpy as np


def coefficient(j: int, n: int) -> int:
    return ((-1) ** n) * n * math.comb(j, n) * math.comb(j + n, n)


def scattering_z(j: int, z: Fraction) -> Fraction:
    value = Fraction(-1, 1)
    for q in range(1, j + 1):
        value *= Fraction(q, 1) - z
        value /= Fraction(q, 1) + z
    return value


def partial_fraction_z(j: int, z: Fraction) -> Fraction:
    value = Fraction((-1) ** (j + 1), 1)
    for n in range(1, j + 1):
        value += Fraction(coefficient(j, n), 1) / (Fraction(n, 1) + z)
    return value


def strip_modulus(j: int, x: float, sigma: float) -> float:
    log_value = 0.0
    for n in range(1, j + 1):
        log_value += 0.5 * math.log((n + sigma) ** 2 + x * x)
        log_value -= 0.5 * math.log((n - sigma) ** 2 + x * x)
    return math.exp(log_value)


def simpson_uniform(values: np.ndarray, step: float) -> complex:
    """Composite Simpson rule on an even number of uniform subintervals."""
    return (step / 3.0) * (
        values[0]
        + values[-1]
        + 4.0 * np.sum(values[1:-1:2])
        + 2.0 * np.sum(values[2:-1:2])
    )


def main() -> int:
    # Exact partial fractions at rational non-pole samples.
    rational_samples = (
        Fraction(1, 3),
        Fraction(-2, 5),
        Fraction(7, 4),
        Fraction(-11, 7),
    )
    partial_fraction_exact = True
    for j in range(1, 11):
        for z in rational_samples:
            if any(z == -n for n in range(1, j + 1)):
                continue
            partial_fraction_exact &= scattering_z(j, z) == partial_fraction_z(j, z)

    # A constant input is mapped to its negative.
    constant_identity_exact = True
    for j in range(1, 21):
        value = Fraction((-1) ** (j + 1), 1)
        value += sum(
            (Fraction(coefficient(j, n), n) for n in range(1, j + 1)),
            Fraction(0, 1),
        )
        constant_identity_exact &= value == -1

    # Nonresonant exponential coefficient for p>j.
    nonresonant_exact = True
    for j in range(1, 9):
        for p in range(j + 1, j + 5):
            value = Fraction((-1) ** (j + 1), 1)
            value += sum(
                (
                    Fraction(coefficient(j, n), n - p)
                    for n in range(1, j + 1)
                ),
                Fraction(0, 1),
            )
            nonresonant_exact &= value == scattering_z(j, Fraction(-p, 1))

    # Independently integrate the time kernel on plane waves.  This checks the
    # Fourier-convention denominator n+i*omega rather than reusing it.
    kernel_multiplier_error = 0.0
    t_max = 30.0
    interval_count = 60000
    t_grid = np.linspace(0.0, t_max, interval_count + 1)
    t_step = t_max / interval_count
    for n in range(1, 7):
        for omega in (0.37, 1.2, 3.4):
            u = -0.73
            integrand = np.exp(-n * t_grid) * np.exp(-1j * omega * (u + t_grid))
            numerical = simpson_uniform(integrand, t_step)
            expected = np.exp(-1j * omega * u) / (n + 1j * omega)
            kernel_multiplier_error = max(
                kernel_multiplier_error, abs(numerical - expected)
            )

    # Left-flat test q(v)=1_{v>=0} exp(-v): M_n=1/(n+1).
    # Direct numerical tail convolution for u<0 is compared with the moment
    # polynomial, so the two sides do not share an implementation.
    moment_error = 0.0
    v_grid = np.linspace(0.0, 30.0, interval_count + 1)
    v_step = 30.0 / interval_count
    q_grid = np.exp(-v_grid)
    for j in range(1, 7):
        for u in (-3.0, -1.7, -0.4):
            direct_tail = 0.0
            polynomial = 0.0
            for n in range(1, j + 1):
                a_jn = coefficient(j, n)
                integrand = np.exp(n * (u - v_grid)) * q_grid
                direct_tail += a_jn * float(
                    simpson_uniform(integrand, v_step).real
                )
                polynomial += a_jn * math.exp(n * u) / (n + 1.0)
            moment_error = max(moment_error, abs(direct_tail - polynomial))

    # For q_p(v)=1_{v<=0}e^{pv}, independently integrate
    # T_p q_p=-u e^{pu}; the logarithmic coefficient is exactly -A_jp.
    resonance_exact = True
    resonance_kernel_error = 0.0
    for j in range(1, 10):
        for p in range(1, j + 1):
            resonance_exact &= -coefficient(j, p) != 0
            u = -1.3
            resonance_grid = np.linspace(u, 0.0, 2001)
            resonance_step = -u / 2000.0
            integrand = np.exp(p * (u - resonance_grid))
            integrand *= np.exp(p * resonance_grid)
            numerical = simpson_uniform(integrand, resonance_step)
            expected = -u * math.exp(p * u)
            resonance_kernel_error = max(
                resonance_kernel_error, abs(numerical - expected)
            )

    # Highest residue and central-binomial asymptotic.
    highest_exact = True
    asymptotic_errors = []
    for j in range(1, 301):
        highest = coefficient(j, j)
        highest_exact &= highest == ((-1) ** j) * j * math.comb(2 * j, j)
        if j >= 20:
            log_abs = math.log(j) + math.lgamma(2 * j + 1)
            log_abs -= 2.0 * math.lgamma(j + 1)
            log_leading = j * math.log(4.0) + 0.5 * math.log(j / math.pi)
            asymptotic_errors.append(abs(math.exp(log_abs - log_leading) - 1.0))
    highest_asymptotic_error = asymptotic_errors[-1]

    # Fixed-strip growth is polynomial.  Use noninteger sigma to avoid poles.
    sigma = 1.35
    strip_scaled = []
    for j in range(20, 401):
        modulus = strip_modulus(j, 0.0, sigma)
        strip_scaled.append(modulus / (j ** (2.0 * sigma)))
    strip_scaled_ratio = max(strip_scaled) / min(strip_scaled)

    # Unrestricted constant Goursat data have I0(c*j) growth.  A rapidly
    # decreasing e^{-sqrt(j)} angular sequence still diverges at fixed UW.
    uw = 0.01
    stress_logs = []
    for j in range(10, 301):
        lam = j * (j + 1)
        argument = 2.0 * math.sqrt(lam * uw)
        value = float(np.i0(argument))
        stress_logs.append(math.log(value) - math.sqrt(j))
    goursat_log_gain = stress_logs[-1] - stress_logs[0]

    checks = {
        "partial fractions (exact)": partial_fraction_exact,
        "constant-to-minus-constant identity (exact)": constant_identity_exact,
        "nonresonant exponential identity (exact)": nonresonant_exact,
        "time-kernel Fourier multiplier": bool(kernel_multiplier_error < 2.0e-10),
        "resonance coefficient nonzero (exact)": resonance_exact,
        "resonance logarithm kernel": bool(resonance_kernel_error < 2.0e-12),
        "highest pole coefficient (exact)": highest_exact,
        "incoming moment polynomial": bool(moment_error < 2.0e-9),
        "highest-pole asymptotic": bool(highest_asymptotic_error < 5.0e-4),
        "fixed-strip polynomial scaling": bool(strip_scaled_ratio < 1.25),
        "unrestricted Goursat exponential stress": bool(goursat_log_gain > 35.0),
    }

    print(f"Python: {sys.version.split()[0]}; NumPy: {np.__version__}")
    print(f"time-kernel multiplier error: {kernel_multiplier_error:.6e}")
    print(f"moment polynomial error: {moment_error:.6e}")
    print(f"resonance-kernel error: {resonance_kernel_error:.6e}")
    print(f"highest-pole relative asymptotic error at j=300: {highest_asymptotic_error:.6e}")
    print(f"fixed-strip scaled max/min ratio: {strip_scaled_ratio:.6e}")
    print(f"unrestricted Goursat log-gain: {goursat_log_gain:.6e}")
    for label, passed in checks.items():
        print(f"{label}: passed={passed}")

    if all(checks.values()):
        print("ALL INCOMING-AFFINE KERNEL CHECKS PASSED")
        return 0
    print("INCOMING-AFFINE KERNEL CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
