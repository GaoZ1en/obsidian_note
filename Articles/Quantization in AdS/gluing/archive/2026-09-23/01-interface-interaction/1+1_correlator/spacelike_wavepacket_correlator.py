#!/usr/bin/env python3
"""Equal-time vacuum correlations after gluing two truncated Neumann systems.

The spatial regions are [-ell, 0] and [0, ell].  Each half is first
quantized in its own Neumann basis and truncated to modes n = 0, ..., N.
The two halves are then coupled by

    kappa_N / 2 * [phi_L(0) - phi_R(0)]**2.

For two smooth, compactly supported wave packets centered at -d/2 and d/2,
the program compares

  1. the cross-correlator in the glued, truncated theory;
  2. the same smeared correlator in the exact theory on [-ell, ell];
  3. the exact point correlator at -d/2 and d/2.

The exact full-interval packet correlator is computed independently both by
an exact Neumann mode sum and by the Neumann image kernel.  Their agreement
is a numerical cross-check.  The default parameters reproduce the numerical
log stored next to this file.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass

import numpy as np
from numpy.polynomial.legendre import leggauss
from scipy.linalg import eigh
from scipy.special import k0, polygamma


@dataclass
class Result:
    cutoff: int
    packet_radius: float
    coupling: float
    packet_projection_tail: float
    glued_packet_correlation: float
    full_packet_correlation: float
    full_packet_mode_correlation: float
    full_point_correlation: float
    gluing_relative_error: float
    smearing_relative_error: float
    total_relative_error: float
    reference_mode_cutoff: int
    reference_cross_check: float


def parse_cutoffs(text: str) -> list[int]:
    """Parse a comma-separated list such as '32,64,128'."""
    cutoffs = [int(value.strip()) for value in text.split(",") if value.strip()]
    if not cutoffs or any(value < 1 for value in cutoffs):
        raise argparse.ArgumentTypeError("all cutoffs must be positive integers")
    return cutoffs


def compact_packet_quadrature(order: int) -> tuple[np.ndarray, np.ndarray]:
    """Return quadrature nodes and normalized weights for the C-infinity bump.

    On -1 < u < 1 the unnormalized packet is exp[-1/(1-u**2)].
    The returned weights already contain the bump and integrate constants to 1.
    """
    nodes, legendre_weights = leggauss(order)
    bump = np.exp(-1.0 / (1.0 - nodes * nodes))
    normalized_weights = legendre_weights * bump
    normalized_weights /= np.sum(normalized_weights)
    return nodes, normalized_weights


def half_interval_packet_coefficients(
    cutoff: int,
    ell: float,
    packet_center: float,
    packet_radius: float,
    quadrature_order: int,
) -> np.ndarray:
    """Project a normalized packet onto Neumann modes on [0, ell]."""
    nodes, normalized_weights = compact_packet_quadrature(quadrature_order)
    positions = packet_center + packet_radius * nodes
    mode_numbers = np.arange(cutoff + 1)
    mode_values = np.sqrt(2.0 / ell) * np.cos(
        np.outer(mode_numbers, np.pi * positions / ell)
    )
    mode_values[0, :] = 1.0 / np.sqrt(ell)
    return mode_values @ normalized_weights


def packet_projection_tail(
    coefficients: np.ndarray,
    packet_radius: float,
    quadrature_order: int,
) -> float:
    """Fraction of the packet's squared norm above the retained half modes."""
    nodes, legendre_weights = leggauss(quadrature_order)
    bump = np.exp(-1.0 / (1.0 - nodes * nodes))
    integral = np.sum(legendre_weights * bump)
    squared_norm = np.sum(legendre_weights * bump * bump) / (
        packet_radius * integral * integral
    )
    retained_squared_norm = float(coefficients @ coefficients)
    return max(0.0, 1.0 - retained_squared_norm / squared_norm)


def tail_matched_coupling(cutoff: int, ell: float) -> float:
    """Zero-wavenumber matching of the omitted Neumann-mode tail."""
    return np.pi**2 / (4.0 * ell * polygamma(1, cutoff + 1))


def glued_packet_correlation(
    cutoff: int,
    ell: float,
    mass: float,
    hbar: float,
    coupling: float,
    packet_coefficients: np.ndarray,
) -> float:
    """Compute the left-right correlator using symmetric/antisymmetric sectors."""
    mode_numbers = np.arange(cutoff + 1)
    half_frequencies = np.sqrt(mass * mass + (mode_numbers * np.pi / ell) ** 2)
    boundary_values = np.sqrt(2.0 / ell) * np.ones(cutoff + 1)
    boundary_values[0] = 1.0 / np.sqrt(ell)

    symmetric_covariance = np.diag(hbar / (2.0 * half_frequencies))
    antisymmetric_stiffness = np.diag(half_frequencies**2) + 2.0 * coupling * np.outer(
        boundary_values, boundary_values
    )
    eigenvalues, eigenvectors = eigh(
        antisymmetric_stiffness, check_finite=False, driver="evd"
    )
    antisymmetric_covariance = (
        hbar
        / 2.0
        * (eigenvectors * (1.0 / np.sqrt(eigenvalues)))
        @ eigenvectors.T
    )

    cross_covariance = 0.5 * (symmetric_covariance - antisymmetric_covariance)
    return float(packet_coefficients @ cross_covariance @ packet_coefficients)


def full_interval_packet_mode_correlation(
    ell: float,
    mass: float,
    hbar: float,
    separation: float,
    packet_radius: float,
    quadrature_order: int,
    reference_wavenumber_radius: float,
) -> tuple[float, int]:
    """Exact joined-interval correlator from Neumann modes on [-ell, ell]."""
    nodes, normalized_weights = compact_packet_quadrature(quadrature_order)
    left_positions = -separation / 2.0 + packet_radius * nodes
    right_positions = separation / 2.0 + packet_radius * nodes
    reference_mode_cutoff = int(
        np.ceil(reference_wavenumber_radius * 2.0 * ell / (np.pi * packet_radius))
    )
    mode_numbers = np.arange(reference_mode_cutoff + 1)
    normalizations = np.full(reference_mode_cutoff + 1, 1.0 / np.sqrt(ell))
    normalizations[0] = 1.0 / np.sqrt(2.0 * ell)
    left_mode_values = normalizations[:, None] * np.cos(
        np.outer(mode_numbers, np.pi * (left_positions + ell) / (2.0 * ell))
    )
    right_mode_values = normalizations[:, None] * np.cos(
        np.outer(mode_numbers, np.pi * (right_positions + ell) / (2.0 * ell))
    )
    left_coefficients = left_mode_values @ normalized_weights
    right_coefficients = right_mode_values @ normalized_weights
    frequencies = np.sqrt(
        mass * mass + (mode_numbers * np.pi / (2.0 * ell)) ** 2
    )
    correlation = np.sum(
        hbar * left_coefficients * right_coefficients / (2.0 * frequencies)
    )
    return float(correlation), reference_mode_cutoff


def neumann_image_kernel(
    left_positions: np.ndarray,
    right_positions: np.ndarray,
    ell: float,
    mass: float,
    hbar: float,
    image_count: int,
) -> np.ndarray:
    """Equal-time covariance kernel on [-ell, ell] from Neumann images."""
    shifted_left = np.asarray(left_positions)[:, None] + ell
    shifted_right = np.asarray(right_positions)[None, :] + ell
    kernel = np.zeros((shifted_left.shape[0], shifted_right.shape[1]))
    for image_number in range(-image_count, image_count + 1):
        direct_distance = np.abs(
            shifted_left - shifted_right + 4.0 * image_number * ell
        )
        reflected_distance = np.abs(
            shifted_left + shifted_right + 4.0 * image_number * ell
        )
        kernel += k0(mass * direct_distance) + k0(mass * reflected_distance)
    return hbar * kernel / (2.0 * np.pi)


def full_interval_packet_image_correlation(
    ell: float,
    mass: float,
    hbar: float,
    separation: float,
    packet_radius: float,
    quadrature_order: int,
    image_count: int,
) -> float:
    """Exact joined-interval packet correlator from the image kernel."""
    nodes, normalized_weights = compact_packet_quadrature(quadrature_order)
    left_positions = -separation / 2.0 + packet_radius * nodes
    right_positions = separation / 2.0 + packet_radius * nodes
    kernel = neumann_image_kernel(
        left_positions, right_positions, ell, mass, hbar, image_count
    )
    return float(normalized_weights @ kernel @ normalized_weights)


def full_interval_point_correlation(
    ell: float,
    mass: float,
    hbar: float,
    separation: float,
    image_count: int,
) -> float:
    """Exact point correlator at x=-separation/2 and y=separation/2."""
    return float(
        neumann_image_kernel(
            np.array([-separation / 2.0]),
            np.array([separation / 2.0]),
            ell,
            mass,
            hbar,
            image_count,
        )[0, 0]
    )


def calculate(args: argparse.Namespace) -> list[Result]:
    if args.ell <= 0.0 or args.mass <= 0.0 or args.hbar <= 0.0:
        raise ValueError("ell, mass, and hbar must be positive")
    if not 0.0 < args.separation < 2.0 * args.ell:
        raise ValueError("separation must lie strictly between 0 and 2*ell")
    if args.packet_scale <= 0.0:
        raise ValueError("packet_scale must be positive")

    largest_radius = args.packet_scale * args.ell / np.sqrt(min(args.cutoffs))
    if largest_radius >= args.separation / 2.0:
        raise ValueError("the two packet supports overlap at the smallest cutoff")
    if args.separation / 2.0 + largest_radius >= args.ell:
        raise ValueError("a packet reaches an outer boundary at the smallest cutoff")

    point_correlation = full_interval_point_correlation(
        args.ell,
        args.mass,
        args.hbar,
        args.separation,
        max(args.image_count, 40),
    )
    results: list[Result] = []
    for cutoff in args.cutoffs:
        packet_radius = args.packet_scale * args.ell / np.sqrt(cutoff)
        coupling = tail_matched_coupling(cutoff, args.ell)
        coefficients = half_interval_packet_coefficients(
            cutoff,
            args.ell,
            args.separation / 2.0,
            packet_radius,
            args.packet_quadrature_order,
        )
        projection_tail = packet_projection_tail(
            coefficients, packet_radius, args.packet_quadrature_order
        )
        glued_correlation = glued_packet_correlation(
            cutoff,
            args.ell,
            args.mass,
            args.hbar,
            coupling,
            coefficients,
        )
        full_image_correlation = full_interval_packet_image_correlation(
            args.ell,
            args.mass,
            args.hbar,
            args.separation,
            packet_radius,
            args.image_quadrature_order,
            args.image_count,
        )
        full_mode_correlation, reference_mode_cutoff = (
            full_interval_packet_mode_correlation(
                args.ell,
                args.mass,
                args.hbar,
                args.separation,
                packet_radius,
                args.reference_quadrature_order,
                args.reference_wavenumber_radius,
            )
        )
        results.append(
            Result(
                cutoff=cutoff,
                packet_radius=packet_radius,
                coupling=coupling,
                packet_projection_tail=projection_tail,
                glued_packet_correlation=glued_correlation,
                full_packet_correlation=full_image_correlation,
                full_packet_mode_correlation=full_mode_correlation,
                full_point_correlation=point_correlation,
                gluing_relative_error=abs(
                    glued_correlation - full_image_correlation
                )
                / abs(full_image_correlation),
                smearing_relative_error=abs(
                    full_image_correlation - point_correlation
                )
                / abs(point_correlation),
                total_relative_error=abs(glued_correlation - point_correlation)
                / abs(point_correlation),
                reference_mode_cutoff=reference_mode_cutoff,
                reference_cross_check=abs(
                    full_mode_correlation - full_image_correlation
                ),
            )
        )
    return results


def print_results(args: argparse.Namespace, results: list[Result]) -> None:
    print("Parameters")
    print(f"  ell={args.ell:g}, mass={args.mass:g}, hbar={args.hbar:g}")
    print(f"  separation={args.separation:g}")
    print(
        "  packet radius = "
        f"{args.packet_scale:g} * ell / sqrt(N), cutoffs={args.cutoffs}"
    )
    print(f"  full point correlation={results[0].full_point_correlation:.15g}")
    print()
    print("Correlators and relative errors")
    print(
        "N      radius          glued              full packet        "
        "gluing error    smearing error  total error"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} "
            f"{result.packet_radius:<15.10g} "
            f"{result.glued_packet_correlation:<19.12g} "
            f"{result.full_packet_correlation:<19.12g} "
            f"{result.gluing_relative_error:<15.6e} "
            f"{result.smearing_relative_error:<15.6e} "
            f"{result.total_relative_error:.6e}"
        )
    print()
    print("Cutoff and reference diagnostics")
    print(
        "N      kappa_N          packet tail      full-mode cutoff  "
        "|mode reference - image reference|"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} "
            f"{result.coupling:<16.10g} "
            f"{result.packet_projection_tail:<16.6e} "
            f"{result.reference_mode_cutoff:<17d} "
            f"{result.reference_cross_check:.6e}"
        )


def build_argument_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ell", type=float, default=1.0)
    parser.add_argument("--mass", type=float, default=1.0)
    parser.add_argument("--hbar", type=float, default=1.0)
    parser.add_argument("--separation", type=float, default=1.0)
    parser.add_argument(
        "--cutoffs",
        type=parse_cutoffs,
        default=parse_cutoffs("32,64,128,256,512,1024"),
    )
    parser.add_argument(
        "--packet-scale",
        type=float,
        default=0.5,
        help="packet radius is packet_scale*ell/sqrt(N)",
    )
    parser.add_argument("--packet-quadrature-order", type=int, default=256)
    parser.add_argument("--image-quadrature-order", type=int, default=160)
    parser.add_argument("--image-count", type=int, default=20)
    parser.add_argument("--reference-quadrature-order", type=int, default=512)
    parser.add_argument("--reference-wavenumber-radius", type=float, default=40.0)
    return parser


def main() -> None:
    args = build_argument_parser().parse_args()
    results = calculate(args)
    print_results(args, results)


if __name__ == "__main__":
    main()
