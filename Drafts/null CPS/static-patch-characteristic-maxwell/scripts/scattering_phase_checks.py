#!/usr/bin/env python3
"""Numerical/symbolic-regression checks for the dS4 Maxwell half-line problem.

The script uses only Python's standard library and NumPy.  It verifies the
Darboux ladder, exact product and Gamma-function scattering phases, Jost
Wronskian, wave-packet reconstruction, and bulk/horizon energy normalization.
It is a regression suite, not a substitute for the operator-theoretic proof in
calculations/03-half-line-scattering-and-reconstruction.md.
"""

from __future__ import annotations

import cmath
import math
import sys
from dataclasses import dataclass

import numpy as np
from numpy.polynomial import Polynomial


SQRT_TWO_PI = math.sqrt(2.0 * math.pi)


def scattering_product(j: int, omega: float | np.ndarray) -> complex | np.ndarray:
    """S_j(omega)=-prod_{n=1}^j (n-i omega)/(n+i omega)."""
    result = np.ones_like(omega, dtype=np.complex128) if isinstance(omega, np.ndarray) else 1.0 + 0.0j
    for n in range(1, j + 1):
        result *= (n - 1j * omega) / (n + 1j * omega)
    return -result


# Lanczos log-Gamma, sufficient here because all tested arguments have Re z >= 1.
_LANCZOS = (
    0.99999999999980993,
    676.5203681218851,
    -1259.1392167224028,
    771.32342877765313,
    -176.61502916214059,
    12.507343278686905,
    -0.13857109526572012,
    9.9843695780195716e-6,
    1.5056327351493116e-7,
)


def log_gamma(z: complex) -> complex:
    if z.real < 0.5:
        return cmath.log(math.pi) - cmath.log(cmath.sin(math.pi * z)) - log_gamma(1.0 - z)
    zz = z - 1.0
    x = complex(_LANCZOS[0])
    for k, coefficient in enumerate(_LANCZOS[1:], start=1):
        x += coefficient / (zz + k)
    t = zz + 7.5
    return 0.5 * math.log(2.0 * math.pi) + (zz + 0.5) * cmath.log(t) - t + cmath.log(x)


def scattering_gamma(j: int, omega: float) -> complex:
    exponent = (
        log_gamma(j + 1.0 - 1j * omega)
        + log_gamma(1.0 + 1j * omega)
        - log_gamma(1.0 - 1j * omega)
        - log_gamma(j + 1.0 + 1j * omega)
    )
    return -cmath.exp(exponent)


def ladder_polynomial(j: int, omega: float, sign: int) -> Polynomial:
    """Polynomial q(coth rho) in L_j exp(sign*i*omega*rho)."""
    x = Polynomial([0.0, 1.0])
    q = Polynomial([1.0 + 0.0j])
    for n in range(1, j + 1):
        q = (x * x - 1.0) * q.deriv() + (n * x - sign * 1j * omega) * q
    return q


@dataclass(frozen=True)
class ModeJet:
    value: complex
    first: complex
    second: complex


def ladder_plane(j: int, omega: float, rho: float, sign: int) -> ModeJet:
    qpoly = ladder_polynomial(j, omega, sign)
    coth = 1.0 / math.tanh(rho)
    cprime = -(coth * coth - 1.0)
    csecond = 2.0 * coth * (coth * coth - 1.0)
    q = qpoly(coth)
    qc = qpoly.deriv()(coth)
    qcc = qpoly.deriv(2)(coth)
    qdot = cprime * qc
    qddot = csecond * qc + cprime * cprime * qcc
    phase = cmath.exp(sign * 1j * omega * rho)
    first_factor = qdot + sign * 1j * omega * q
    second_factor = qddot + 2.0 * sign * 1j * omega * qdot - omega * omega * q
    return ModeJet(q * phase, first_factor * phase, second_factor * phase)


def regular_ladder_mode(j: int, omega: float, rho: float) -> ModeJet:
    plus = ladder_plane(j, omega, rho, +1)
    minus = ladder_plane(j, omega, rho, -1)
    return ModeJet(
        (plus.value - minus.value) / (2j),
        (plus.first - minus.first) / (2j),
        (plus.second - minus.second) / (2j),
    )


def unit_incoming_mode(j: int, omega: float, rho: float) -> ModeJet:
    product_plus = math.prod(complex(n, omega) for n in range(1, j + 1))
    factor = -2j / product_plus
    mode = regular_ladder_mode(j, omega, rho)
    return ModeJet(factor * mode.value, factor * mode.first, factor * mode.second)


def normalized_jost(j: int, omega: float, rho: float, sign: int) -> ModeJet:
    plane = ladder_plane(j, omega, rho, sign)
    denominator = math.prod(
        complex(n, -sign * omega) for n in range(1, j + 1)
    )
    return ModeJet(
        plane.value / denominator,
        plane.first / denominator,
        plane.second / denominator,
    )


def trapz(values: np.ndarray, grid: np.ndarray, axis: int = -1) -> np.ndarray:
    return np.trapezoid(values, grid, axis=axis)


def main() -> int:
    samples_j = (1, 2, 3)
    omega_grid = np.linspace(0.07, 8.0, 97)

    phase_gamma_error = max(
        abs(scattering_product(j, float(w)) - scattering_gamma(j, float(w)))
        for j in range(1, 7)
        for w in omega_grid
    )
    unit_modulus_error = max(
        abs(abs(scattering_product(j, omega_grid)) - 1.0).max()
        for j in range(1, 7)
    )

    residual_error = 0.0
    for j in samples_j:
        for omega in (0.31, 1.17, 3.4):
            for rho in np.linspace(0.18, 8.0, 41):
                mode = unit_incoming_mode(j, omega, float(rho))
                potential = j * (j + 1) / math.sinh(float(rho)) ** 2
                residual = -mode.second + potential * mode.value - omega * omega * mode.value
                scale = 1.0 + abs(mode.value) + abs(mode.second)
                residual_error = max(residual_error, abs(residual) / scale)

    incoming_error = 0.0
    outgoing_error = 0.0
    asymptotic_radius = 14.0
    for j in samples_j:
        for omega in (0.23, 0.71, 1.9, 4.2):
            mode = unit_incoming_mode(j, omega, asymptotic_radius)
            incoming = 0.5 * cmath.exp(1j * omega * asymptotic_radius) * (
                mode.value - mode.first / (1j * omega)
            )
            outgoing = 0.5 * cmath.exp(-1j * omega * asymptotic_radius) * (
                mode.value + mode.first / (1j * omega)
            )
            incoming_error = max(incoming_error, abs(incoming - 1.0))
            outgoing_error = max(
                outgoing_error, abs(outgoing - scattering_product(j, omega))
            )

    wronskian_error = 0.0
    wronskian_variation = 0.0
    for j in samples_j:
        for omega in (0.4, 1.3, 3.1):
            values = []
            for rho in (0.35, 0.8, 2.0, 6.0):
                jin = normalized_jost(j, omega, rho, -1)
                jout = normalized_jost(j, omega, rho, +1)
                wronskian = jin.value * jout.first - jin.first * jout.value
                values.append(wronskian)
                wronskian_error = max(wronskian_error, abs(wronskian - 2j * omega))
            wronskian_variation = max(
                wronskian_variation, max(abs(value - values[0]) for value in values)
            )

    # Positive-frequency wave packet: exact regular bulk mode versus its two
    # horizon asymptotes.  This checks incoming -> bulk -> outgoing assembly.
    packet_omega = np.linspace(0.05, 6.0, 1001)
    packet_c = np.exp(-((packet_omega - 2.0) / 0.52) ** 2) * np.exp(0.17j * packet_omega)
    reconstruction_error = 0.0
    for j in samples_j:
        scattering = scattering_product(j, packet_omega)
        for tau, rho in ((0.4, 9.0), (-0.7, 10.0), (1.1, 11.0)):
            bulk_modes = np.array(
                [unit_incoming_mode(j, float(w), rho).value for w in packet_omega]
            )
            bulk = trapz(packet_c * np.exp(-1j * packet_omega * tau) * bulk_modes, packet_omega) / SQRT_TWO_PI
            incoming = trapz(
                packet_c * np.exp(-1j * packet_omega * (tau + rho)), packet_omega
            ) / SQRT_TWO_PI
            outgoing = trapz(
                scattering * packet_c * np.exp(-1j * packet_omega * (tau - rho)),
                packet_omega,
            ) / SQRT_TWO_PI
            scale = max(1.0e-14, abs(incoming) + abs(outgoing))
            reconstruction_error = max(
                reconstruction_error, abs(bulk - incoming - outgoing) / scale
            )

    # Parseval normalization: H_bulk=2 int omega^2 |c|^2 equals the real
    # incoming horizon flux int |df/dv|^2 dv.
    bulk_energy = float(2.0 * trapz(packet_omega**2 * abs(packet_c) ** 2, packet_omega).real)
    v_grid = np.linspace(-45.0, 45.0, 3601)
    phase = np.exp(-1j * np.outer(v_grid, packet_omega))
    positive_derivative = trapz(
        phase * (-1j * packet_omega * packet_c), packet_omega, axis=1
    ) / SQRT_TWO_PI
    real_derivative = positive_derivative + positive_derivative.conjugate()
    horizon_energy = float(trapz(abs(real_derivative) ** 2, v_grid).real)
    energy_relative_error = abs(horizon_energy - bulk_energy) / bulk_energy

    # Multiplication by S_j preserves the spectral symplectic weight omega.
    c2 = packet_c * (1.0 + 0.2j * packet_omega)
    symplectic_in = float(
        4.0 * trapz(packet_omega * np.imag(packet_c.conjugate() * c2), packet_omega).real
    )
    sj = scattering_product(3, packet_omega)
    symplectic_out = float(
        4.0
        * trapz(
            packet_omega * np.imag((sj * packet_c).conjugate() * (sj * c2)),
            packet_omega,
        ).real
    )
    symplectic_error = abs(symplectic_out - symplectic_in) / abs(symplectic_in)

    thresholds = {
        "product/Gamma phase": (phase_gamma_error, 2.0e-12),
        "unit modulus": (unit_modulus_error, 5.0e-15),
        "Schrodinger residual": (residual_error, 1.0e-11),
        "unit incoming amplitude": (incoming_error, 2.0e-10),
        "outgoing scattering amplitude": (outgoing_error, 2.0e-10),
        "Jost Wronskian target": (wronskian_error, 2.0e-10),
        "Jost Wronskian constancy": (wronskian_variation, 2.0e-10),
        "wave-packet reconstruction": (reconstruction_error, 2.0e-7),
        "bulk/horizon energy": (energy_relative_error, 2.0e-6),
        "spectral symplectic scattering": (symplectic_error, 2.0e-13),
    }

    print(f"Python: {sys.version.split()[0]}; NumPy: {np.__version__}")
    all_passed = True
    for label, (error, tolerance) in thresholds.items():
        passed = bool(np.isfinite(error) and error < tolerance)
        all_passed &= passed
        print(f"{label}: error={error:.6e}, tolerance={tolerance:.1e}, passed={passed}")

    if all_passed:
        print("ALL HALF-LINE SCATTERING CHECKS PASSED")
        return 0
    print("HALF-LINE SCATTERING CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
