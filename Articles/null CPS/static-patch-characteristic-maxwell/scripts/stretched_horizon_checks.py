#!/usr/bin/env python3
"""Modewise regressions for calculation 09.

Checks the exact static-edge Legendre-Q kernel, its horizon scaling, the
radiative master Dirichlet-to-Neumann asymptotics, limiting absorption, and
the normalized edge/cut symplectic map.  Finite samples do not prove strong
resolvent convergence or a phase-space limit theorem.
"""

from __future__ import annotations

import cmath
import math
import sys

import numpy as np

from scattering_phase_checks import (
    regular_ladder_mode,
    scattering_product,
    unit_incoming_mode,
)


def legendre_q_integer(j: int, x: float) -> float:
    """Real Q_j(x) for integer j>=0 and x>1 by stable low-j recurrence."""
    q0 = 0.5 * math.log((x + 1.0) / (x - 1.0))
    if j == 0:
        return q0
    q1 = x * q0 - 1.0
    if j == 1:
        return q1
    previous, current = q0, q1
    for n in range(1, j):
        following = ((2 * n + 1) * x * current - n * previous) / (n + 1)
        previous, current = current, following
    return current


def edge_solution(j: int, rho: float) -> tuple[float, float]:
    """Return the horizon-normalized regular B_j and its rho derivative."""
    x = 1.0 / math.tanh(rho)
    qj = legendre_q_integer(j, x)
    qjm1 = legendre_q_integer(j - 1, x)
    value = j * (qjm1 - x * qj)
    derivative = j * (j + 1) * (x * x - 1.0) * qj
    return value, derivative


def edge_kernel(j: int, rho: float, radius: float = 1.0) -> float:
    value, derivative = edge_solution(j, rho)
    return math.cosh(rho) ** 2 * derivative / (radius * value)


def unit_incoming_complex(j: int, omega: complex, rho: float) -> tuple[complex, complex]:
    mode = regular_ladder_mode(j, omega, rho)
    product = math.prod(n + 1j * omega for n in range(1, j + 1))
    factor = -2j / product
    return factor * mode.value, factor * mode.first


def main() -> int:
    samples_j = (1, 2, 3)

    # Exact edge ODE, positivity, and harmonic-number asymptotics.
    edge_ode_residual = 0.0
    edge_positivity_minimum = math.inf
    edge_asymptotic_error = 0.0
    edge_hamiltonian_scaling_error = 0.0
    for j in samples_j:
        lam = j * (j + 1)
        harmonic_number = sum(1.0 / n for n in range(1, j + 1))
        for rho in (0.35, 0.8, 1.7, 3.2):
            step = 2.0e-5
            _, derivative_minus = edge_solution(j, rho - step)
            _, derivative_plus = edge_solution(j, rho + step)
            flux_minus = math.sinh(rho - step) ** 2 * derivative_minus
            flux_plus = math.sinh(rho + step) ** 2 * derivative_plus
            flux_derivative = (flux_plus - flux_minus) / (2.0 * step)
            value, _ = edge_solution(j, rho)
            scale = 1.0 + abs(flux_derivative) + lam * abs(value)
            edge_ode_residual = max(
                edge_ode_residual,
                abs(flux_derivative - lam * value) / scale,
            )

        for rho in (0.25, 0.6, 1.4, 3.0, 6.0):
            edge_positivity_minimum = min(edge_positivity_minimum, edge_kernel(j, rho))

        for rho in (8.0, 9.0, 10.0):
            normalized_kernel = edge_kernel(j, rho) / lam
            edge_asymptotic_error = max(
                edge_asymptotic_error,
                abs(normalized_kernel - (rho - harmonic_number)),
            )
            edge_energy = 1.0 / (2.0 * edge_kernel(j, rho))
            predicted = 1.0 / (2.0 * lam * (rho - harmonic_number))
            edge_hamiltonian_scaling_error = max(
                edge_hamiltonian_scaling_error,
                abs(edge_energy - predicted) / predicted,
            )

    # Dynamic DtN versus the exact scattering-phase asymptotic.
    dynamic_dtn_error = 0.0
    for j in samples_j:
        for omega in (0.47, 1.13, 2.21):
            for rho in (7.0, 8.5, 10.0):
                mode = unit_incoming_mode(j, omega, rho)
                exact = mode.first / mode.value
                phase = scattering_product(j, omega) * cmath.exp(2j * omega * rho)
                if abs(phase + 1.0) < 0.15:
                    continue
                asymptotic = 1j * omega * (phase - 1.0) / (phase + 1.0)
                scale = max(1.0, abs(exact), abs(asymptotic))
                dynamic_dtn_error = max(
                    dynamic_dtn_error,
                    abs(exact - asymptotic) / scale,
                )

    # Upper-half-plane limiting absorption D_j(z)->-iz.
    limiting_absorption_error = 0.0
    for j in samples_j:
        for omega in (0.51, 1.37):
            z = complex(omega, 0.35)
            value, derivative = unit_incoming_complex(j, z, 22.0)
            dtn = derivative / value
            target = -1j * z
            limiting_absorption_error = max(
                limiting_absorption_error,
                abs(dtn - target) / max(1.0, abs(target)),
            )

    # A real-frequency control demonstrating non-convergence/standing poles.
    real_samples = []
    for rho in np.linspace(8.0, 28.0, 401):
        mode = unit_incoming_mode(2, 0.83, float(rho))
        if abs(mode.value) > 2.0e-2:
            real_samples.append(float((mode.first / mode.value).real))
    real_dtn_spread = float(np.std(real_samples))

    # Exact normalized edge-to-cut coefficient map.
    coefficient_map_error = 0.0
    for j in samples_j:
        lam_root = math.sqrt(j * (j + 1))
        for radius in (0.4, 0.8, 0.99):
            # Coefficients of two abstract tangent vectors (delta q, delta Psi).
            q1, psi1 = 0.37, -0.61
            q2, psi2 = -0.29, 0.43
            alpha1, e1 = radius * q1 / lam_root, -lam_root * psi1 / radius
            alpha2, e2 = radius * q2 / lam_root, -lam_root * psi2 / radius
            edge_pair = alpha1 * e2 - alpha2 * e1
            cut_pair = psi1 * q2 - psi2 * q1
            coefficient_map_error = max(coefficient_map_error, abs(edge_pair - cut_pair))

    metrics = {
        "edge radial ODE": (edge_ode_residual, 3.0e-8),
        "edge harmonic-number asymptotic": (edge_asymptotic_error, 2.0e-4),
        "edge Hamiltonian inverse-log scaling": (
            edge_hamiltonian_scaling_error,
            5.0e-5,
        ),
        "radiative dynamic DtN asymptotic": (dynamic_dtn_error, 6.0e-5),
        "upper-half-plane limiting absorption": (
            limiting_absorption_error,
            2.0e-6,
        ),
        "edge/direct-null coefficient map": (coefficient_map_error, 2.0e-15),
    }

    print(f"Python: {sys.version.split()[0]}; NumPy: {np.__version__}")
    all_passed = True
    for label, (error, tolerance) in metrics.items():
        passed = bool(np.isfinite(error) and error < tolerance)
        all_passed &= passed
        print(
            f"{label}: error={error:.6e}, tolerance={tolerance:.1e}, "
            f"passed={passed}"
        )

    positivity_passed = bool(edge_positivity_minimum > 0.0)
    all_passed &= positivity_passed
    print(
        "edge kernel positivity: "
        f"minimum={edge_positivity_minimum:.6e}, required>0, "
        f"passed={positivity_passed}"
    )

    spread_passed = bool(real_dtn_spread > 0.3)
    all_passed &= spread_passed
    print(
        "real-frequency non-limit control: "
        f"standard_deviation={real_dtn_spread:.6e}, required>0.3, "
        f"passed={spread_passed}"
    )

    if all_passed:
        print("ALL STRETCHED-HORIZON CHECKS PASSED")
        return 0
    print("STRETCHED-HORIZON CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
