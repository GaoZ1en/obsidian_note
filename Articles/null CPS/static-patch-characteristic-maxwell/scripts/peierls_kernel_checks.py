#!/usr/bin/env python3
"""Regression checks for the master/characteristic Peierls kernel.

The script uses compact C-infinity source packets and only NumPy plus the
local Darboux implementation in scattering_phase_checks.py.  Finite spectral
cutoffs are numerical checks, not proofs of causal support or Peierls
equality; the distributional proof is calculation 06.
"""

from __future__ import annotations

import math
import sys

import numpy as np

from scattering_phase_checks import (
    ladder_polynomial,
    unit_incoming_mode,
)


def trapz(values: np.ndarray, grid: np.ndarray, axis: int = -1) -> np.ndarray:
    return np.trapezoid(values, grid, axis=axis)


def compact_bump(grid: np.ndarray, center: float, half_width: float) -> np.ndarray:
    scaled = (grid - center) / half_width
    values = np.zeros_like(grid)
    inside = np.abs(scaled) < 1.0
    values[inside] = np.exp(-1.0 / (1.0 - scaled[inside] ** 2))
    norm = float(trapz(values, grid))
    if norm <= 0.0:
        raise ValueError("bump grid does not resolve its support")
    return values / norm


def delta_mode_values(j: int, omega: float, rho: np.ndarray) -> np.ndarray:
    """Real delta-normalized regular mode phi_{omega j}(rho)."""
    coth = 1.0 / np.tanh(rho)
    q_plus = ladder_polynomial(j, omega, +1)
    q_minus = ladder_polynomial(j, omega, -1)
    plus = q_plus(coth) * np.exp(1j * omega * rho)
    minus = q_minus(coth) * np.exp(-1j * omega * rho)
    ladder_sine = (plus - minus) / (2.0j)
    denominator = math.sqrt(
        math.prod(omega * omega + n * n for n in range(1, j + 1))
    )
    values = math.sqrt(2.0 / math.pi) * ladder_sine / denominator
    return np.real_if_close(values, tol=5000).real


def cumulative_trapezoid(values: np.ndarray, grid: np.ndarray) -> np.ndarray:
    increments = 0.5 * (values[1:] + values[:-1]) * np.diff(grid)
    return np.concatenate(([0.0], np.cumsum(increments)))


def main() -> int:
    samples_j = (1, 2, 3)
    omega = np.linspace(1.0e-4, 100.0, 5001)

    # Exact-mode residual samples entering the causal spectral kernel.
    eigen_residual = 0.0
    for j in samples_j:
        for w in (0.23, 0.91, 2.7, 6.2):
            for rho in (0.35, 0.9, 2.1, 4.7):
                mode = unit_incoming_mode(j, w, rho)
                potential = j * (j + 1) / math.sinh(rho) ** 2
                residual = -mode.second + potential * mode.value - w * w * mode.value
                scale = 1.0 + abs(mode.second) + abs(mode.value)
                eigen_residual = max(eigen_residual, abs(residual) / scale)

    # Compact radial source packets.  The first two are strictly spacelike
    # relative to the time packets below; the third is a timelike control.
    rho_grid = np.linspace(0.75, 4.6, 701)
    radial_packets = {
        "one": compact_bump(rho_grid, 1.45, 0.25),
        "space": compact_bump(rho_grid, 4.00, 0.25),
        "time": compact_bump(rho_grid, 1.80, 0.25),
        "jump": compact_bump(rho_grid, 2.55, 0.70),
    }

    # Compact time packets.  For (one, space), max |Delta tau|=1 and
    # min |Delta rho|=2.05, so every pair of support points is spacelike.
    tau_grid = np.linspace(-0.6, 1.8, 801)
    time_packets = {
        "one": compact_bump(tau_grid, 0.00, 0.25),
        "space": compact_bump(tau_grid, 0.50, 0.25),
        "time": compact_bump(tau_grid, 1.20, 0.25),
    }
    time_transforms = {
        name: trapz(
            np.exp(1j * np.outer(omega, tau_grid)) * packet,
            tau_grid,
            axis=1,
        )
        for name, packet in time_packets.items()
    }

    jump_errors: list[float] = []
    peierls_symplectic_errors: list[float] = []
    spacelike_brackets: list[float] = []
    timelike_brackets: list[float] = []
    cutoff_tail_errors: list[float] = []

    for j in samples_j:
        radial_transforms = {
            name: np.empty_like(omega)
            for name in radial_packets
        }
        for index, w in enumerate(omega):
            phi = delta_mode_values(j, float(w), rho_grid)
            for name, packet in radial_packets.items():
                radial_transforms[name][index] = float(
                    trapz(phi * packet, rho_grid)
                )

        # Smeared equal-time derivative: partial_tau E|_0=-delta.
        overlap = float(trapz(radial_packets["jump"] ** 2, rho_grid))
        spectral_overlap = float(
            trapz(radial_transforms["jump"] ** 2, omega)
        )
        jump_errors.append(abs(spectral_overlap - overlap) / overlap)

        hat_one = time_transforms["one"] * radial_transforms["one"]
        hat_space = time_transforms["space"] * radial_transforms["space"]
        hat_time = time_transforms["time"] * radial_transforms["time"]

        spacelike_integrand = np.imag(hat_one.conjugate() * hat_space) / omega
        timelike_integrand = np.imag(hat_one.conjugate() * hat_time) / omega
        spacelike = float(trapz(spacelike_integrand, omega))
        timelike = float(trapz(timelike_integrand, omega))
        spacelike_brackets.append(abs(spacelike))
        timelike_brackets.append(abs(timelike))

        # The last 25 percent of the omega range estimates cutoff sensitivity.
        cutoff_index = int(0.75 * len(omega))
        tail = float(abs(trapz(spacelike_integrand[cutoff_index:], omega[cutoff_index:])))
        cutoff_tail_errors.append(tail)

        c_one = hat_one / (2.0j * omega)
        c_time = hat_time / (2.0j * omega)
        peierls = timelike
        characteristic = float(
            4.0 * trapz(
                omega * np.imag(c_one.conjugate() * c_time), omega
            )
        )
        scale = max(1.0e-12, abs(peierls), abs(characteristic))
        peierls_symplectic_errors.append(abs(peierls - characteristic) / scale)

    # Direct inverse of Omega_H on zero-integral compact profile smearings.
    v_grid = np.linspace(-3.0, 3.0, 12001)
    kappa1 = (
        compact_bump(v_grid, -1.20, 0.28)
        - compact_bump(v_grid, -0.25, 0.28)
    )
    kappa2 = (
        compact_bump(v_grid, 0.20, 0.30)
        - compact_bump(v_grid, 1.25, 0.30)
    )
    x1 = -0.5 * cumulative_trapezoid(kappa1, v_grid)
    x2 = -0.5 * cumulative_trapezoid(kappa2, v_grid)
    dx1 = np.gradient(x1, v_grid, edge_order=2)
    dx2 = np.gradient(x2, v_grid, edge_order=2)
    inverse_residual = float(
        np.max(np.abs(-2.0 * dx2 - kappa2))
        / max(1.0, np.max(np.abs(kappa2)))
    )
    kernel_bracket = float(trapz(kappa1 * x2, v_grid))
    symplectic_bracket = float(trapz(x1 * dx2 - x2 * dx1, v_grid))
    horizon_bracket_error = abs(kernel_bracket - symplectic_bracket) / max(
        1.0e-12, abs(kernel_bracket), abs(symplectic_bracket)
    )
    zero_mean_error = max(
        abs(float(trapz(kappa1, v_grid))),
        abs(float(trapz(kappa2, v_grid))),
    )

    metrics = {
        "master eigenfunction residual": (eigen_residual, 2.0e-11),
        "smeared equal-time jump": (max(jump_errors), 3.0e-4),
        "Peierls/characteristic spectral equality": (
            max(peierls_symplectic_errors),
            2.0e-12,
        ),
        "horizon inverse differential residual": (inverse_residual, 2.0e-4),
        "horizon inverse bracket": (horizon_bracket_error, 3.0e-4),
        "horizon smearing zero mean": (zero_mean_error, 2.0e-12),
        "spacelike bracket": (max(spacelike_brackets), 5.0e-5),
        "spacelike cutoff tail": (max(cutoff_tail_errors), 2.0e-6),
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

    timelike_minimum = min(timelike_brackets)
    timelike_passed = bool(np.isfinite(timelike_minimum) and timelike_minimum > 1.0e-4)
    all_passed &= timelike_passed
    print(
        "timelike nonzero control: "
        f"minimum={timelike_minimum:.6e}, required>1.0e-4, "
        f"passed={timelike_passed}"
    )

    if all_passed:
        print("ALL PEIERLS KERNEL CHECKS PASSED")
        return 0
    print("PEIERLS KERNEL CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
