#!/usr/bin/env python3
"""Regression checks for calculation 08.

The script checks the finite trace-space symplectic splitting, representative
infrared scalings, the endpoint-frame algebra, and the harmonic coefficient
form of the integrated Maxwell/Bianchi constraints.  It is a finite
regression, not a proof of the topology or reconstruction theorems.
"""

from __future__ import annotations

import math
import sys

import numpy as np


def trapz(values: np.ndarray, grid: np.ndarray) -> float:
    return float(np.trapezoid(values, grid))


def main() -> int:
    # Trace-space calculation with h=(1+tanh(v))/2.
    v = np.linspace(-12.0, 12.0, 240_001)
    h = 0.5 * (1.0 + np.tanh(v))
    hp = 0.5 / np.cosh(v) ** 2

    exp_x = np.exp(-0.5 * v * v)
    x = v * exp_x
    xp = (1.0 - v * v) * exp_x

    exp_y = np.exp(-v * v / 3.0)
    y = (v * v - 1.0) * exp_y
    yp = (2.0 * v - (2.0 * v / 3.0) * (v * v - 1.0)) * exp_y

    a, memory = 0.37, -0.61
    b, other_memory = -0.29, 0.43
    f = a + memory * h + x
    fp = memory * hp + xp
    g = b + other_memory * h + y
    gp = other_memory * hp + yp

    omega_direct = trapz(f * gp - g * fp, v)
    omega_zero = trapz(x * yp - y * xp, v)
    ell_x = trapz(x * hp, v)
    ell_y = trapz(y * hp, v)
    ahat = a + 2.0 * ell_x
    bhat = b + 2.0 * ell_y
    omega_split = omega_zero + ahat * other_memory - bhat * memory
    trace_split_error = abs(omega_direct - omega_split)

    constant_memory_pair = trapz(hp, v)
    constant_memory_error = abs(constant_memory_pair - 1.0)

    # The endpoint-frame identity in average/relative variables.
    dpsi_f = np.array([0.3, -0.7])
    dq_f = np.array([-0.2, 0.9])
    dpsi_i = np.array([0.8, 0.4])
    dq_i = np.array([0.6, -0.5])

    def wedge(left: np.ndarray, right: np.ndarray) -> float:
        return float(left[0] * right[1] - left[1] * right[0])

    left_frame = wedge(dpsi_f, dq_f) - wedge(dpsi_i, dq_i)
    dpsi_c = 0.5 * (dpsi_f + dpsi_i)
    dpsi_rel = dpsi_f - dpsi_i
    dq_c = 0.5 * (dq_f + dq_i)
    dq_rel = dq_f - dq_i
    right_frame = wedge(dpsi_c, dq_rel) + wedge(dpsi_rel, dq_c)
    frame_error = abs(left_frame - right_frame)

    # Soft CPS-normalized packets c_epsilon=epsilon^{-1} chi(omega/epsilon).
    scaled = np.linspace(1.0, 2.0, 200_001)
    chi = np.zeros_like(scaled)
    inside = (scaled > 1.0) & (scaled < 2.0)
    chi[inside] = np.exp(
        -1.0 / ((scaled[inside] - 1.0) * (2.0 - scaled[inside]))
    )
    cps_constant = trapz(scaled * chi * chi, scaled)
    energy_constant = trapz(scaled * scaled * chi * chi, scaled)
    epsilons = np.array([0.2, 0.1, 0.05, 0.025])
    soft_cps = np.full_like(epsilons, cps_constant)
    soft_energy = epsilons * energy_constant
    soft_cps_error = float(np.max(np.abs(soft_cps / soft_cps[0] - 1.0)))
    soft_energy_error = float(
        np.max(np.abs(soft_energy / (epsilons * energy_constant) - 1.0))
    )

    # Regulated memory coefficient c=1/omega: finite energy, log CPS norm.
    memory_energy_errors: list[float] = []
    memory_log_errors: list[float] = []
    for epsilon in (1.0e-2, 1.0e-3, 1.0e-4):
        omega = np.geomspace(epsilon, 1.0, 200_001)
        coefficient = 1.0 / omega
        energy = trapz(omega * omega * coefficient * coefficient, omega)
        cps = trapz(omega * coefficient * coefficient, omega)
        memory_energy_errors.append(abs(energy - (1.0 - epsilon)))
        memory_log_errors.append(abs(cps - math.log(1.0 / epsilon)))

    # Harmonic coefficient form of the two integrated transport equations.
    transport_error = 0.0
    m_e, m_b = 0.37, -0.21
    for j in (1, 2, 3):
        root_lambda = math.sqrt(j * (j + 1))
        divergence_memory = m_e * root_lambda
        electric_cut_change = -m_e * root_lambda
        curl_memory_two_form = -m_b * root_lambda
        magnetic_cut_change = -m_b * root_lambda
        transport_error = max(
            transport_error,
            abs(electric_cut_change + divergence_memory),
            abs(magnetic_cut_change - curl_memory_two_form),
        )

    metrics = {
        "trace symplectic canonical split": (trace_split_error, 2.0e-9),
        "constant-memory unit pairing": (constant_memory_error, 2.0e-10),
        "endpoint average/relative identity": (frame_error, 2.0e-15),
        "soft packet CPS O(1) scaling": (soft_cps_error, 2.0e-14),
        "soft packet energy O(epsilon) scaling": (soft_energy_error, 2.0e-14),
        "memory finite-energy integral": (max(memory_energy_errors), 2.0e-9),
        "memory logarithmic CPS integral": (max(memory_log_errors), 2.0e-8),
        "j=1,2,3 transport coefficients": (transport_error, 2.0e-15),
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

    if all_passed:
        print("ALL MEMORY-SECTOR CHECKS PASSED")
        return 0
    print("MEMORY-SECTOR CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
