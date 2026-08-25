#!/usr/bin/env python3
"""Interface-to-bulk vacuum correlations after gluing two Neumann systems.

Two massive free-scalar systems on [-ell, 0] and [0, ell] are quantized in
their separate Neumann bases and truncated to n = 0, ..., N.  They are glued
by kappa_N/2 * [phi_L(0) - phi_R(0)]**2.

The program compares two one-sided approximations to the interface field:

  * a packet supported on [-a_N, 0] in the left subsystem;
  * its reflected packet supported on [0, a_N] in the right subsystem.

Both are correlated with a symmetric packet centered at x=d in the right
subsystem.  Positive packets and first-moment-improved interface packets are
both evaluated.  Exact joined-interval references are computed independently
with Neumann images and with exact Neumann modes on [-ell, ell].
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
    packet_size: float
    coupling: float
    point_reference: float
    glued_left: float
    joined_left: float
    glued_right: float
    joined_right: float
    glued_left_improved: float
    joined_left_improved: float
    glued_right_improved: float
    joined_right_improved: float
    left_gluing_error: float
    right_gluing_error: float
    left_smearing_error: float
    right_smearing_error: float
    left_total_error: float
    right_total_error: float
    left_improved_gluing_error: float
    right_improved_gluing_error: float
    left_improved_smearing_error: float
    right_improved_smearing_error: float
    left_improved_total_error: float
    right_improved_total_error: float
    glued_side_difference: float
    joined_side_difference: float
    sewing_residual: float
    glued_improved_side_difference: float
    joined_improved_side_difference: float
    improved_sewing_residual: float
    interface_packet_tail: float
    remote_packet_tail: float
    improved_interface_packet_tail: float
    reference_mode_cutoff: int
    reference_cross_check: float


def parse_cutoffs(text: str) -> list[int]:
    values = [int(value.strip()) for value in text.split(",") if value.strip()]
    if not values or any(value < 1 for value in values):
        raise argparse.ArgumentTypeError("all cutoffs must be positive integers")
    return values


def normalized_bump_quadrature(order: int) -> tuple[np.ndarray, np.ndarray]:
    """Quadrature for exp[-1/(1-u^2)] normalized on -1 < u < 1."""
    nodes, legendre_weights = leggauss(order)
    bump = np.exp(-1.0 / (1.0 - nodes * nodes))
    normalized_weights = legendre_weights * bump
    normalized_weights /= np.sum(normalized_weights)
    return nodes, normalized_weights


def half_neumann_mode_values(
    positions: np.ndarray, cutoff: int, ell: float
) -> np.ndarray:
    """Neumann modes on [0, ell] evaluated at nonnegative positions."""
    mode_numbers = np.arange(cutoff + 1)
    values = np.sqrt(2.0 / ell) * np.cos(
        np.outer(mode_numbers, np.pi * positions / ell)
    )
    values[0, :] = 1.0 / np.sqrt(ell)
    return values


def interface_packet_data(
    packet_size: float, cutoff: int, ell: float, order: int
) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    """Positions, normalized integration weights, and half-mode coefficients.

    The physical right packet is supported on [0, packet_size].  Reflection
    gives the corresponding physical left packet on [-packet_size, 0].
    """
    nodes, normalized_weights = normalized_bump_quadrature(order)
    positions = 0.5 * packet_size * (nodes + 1.0)
    coefficients = half_neumann_mode_values(positions, cutoff, ell) @ normalized_weights
    return positions, normalized_weights, coefficients


def remote_packet_data(
    packet_size: float,
    center: float,
    cutoff: int,
    ell: float,
    order: int,
) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    """Symmetric packet of radius packet_size centered in the right half."""
    nodes, normalized_weights = normalized_bump_quadrature(order)
    positions = center + packet_size * nodes
    coefficients = half_neumann_mode_values(positions, cutoff, ell) @ normalized_weights
    return positions, normalized_weights, coefficients


def ordinary_packet_squared_norm(packet_size: float, interface: bool, order: int) -> float:
    nodes, legendre_weights = leggauss(order)
    bump = np.exp(-1.0 / (1.0 - nodes * nodes))
    integral = np.sum(legendre_weights * bump)
    squared_bump_integral = np.sum(legendre_weights * bump * bump)
    if interface:
        return 2.0 * squared_bump_integral / (packet_size * integral * integral)
    return squared_bump_integral / (packet_size * integral * integral)


def interface_packet_density(
    positions: np.ndarray, packet_size: float, normalization_integral: float
) -> np.ndarray:
    density = np.zeros_like(positions)
    inside = (positions > 0.0) & (positions < packet_size)
    transformed = 2.0 * positions[inside] / packet_size - 1.0
    density[inside] = (
        2.0
        / (packet_size * normalization_integral)
        * np.exp(-1.0 / (1.0 - transformed * transformed))
    )
    return density


def improved_interface_packet_squared_norm(packet_size: float, order: int) -> float:
    """Squared norm of 2*h_{packet_size/2} - h_{packet_size}."""
    nodes, legendre_weights = leggauss(order)
    positions = 0.5 * packet_size * (nodes + 1.0)
    position_weights = 0.5 * packet_size * legendre_weights
    bump = np.exp(-1.0 / (1.0 - nodes * nodes))
    normalization_integral = np.sum(legendre_weights * bump)
    density = 2.0 * interface_packet_density(
        positions, packet_size / 2.0, normalization_integral
    ) - interface_packet_density(positions, packet_size, normalization_integral)
    return float(position_weights @ (density * density))


def projection_tail(coefficients: np.ndarray, exact_squared_norm: float) -> float:
    return max(0.0, 1.0 - float(coefficients @ coefficients) / exact_squared_norm)


def tail_matched_coupling(cutoff: int, ell: float) -> float:
    return float(np.pi**2 / (4.0 * ell * polygamma(1, cutoff + 1)))


def glued_covariance_blocks(
    cutoff: int, ell: float, mass: float, hbar: float, coupling: float
) -> tuple[np.ndarray, np.ndarray]:
    """Return left-right and right-right coordinate covariance blocks."""
    mode_numbers = np.arange(cutoff + 1)
    frequencies = np.sqrt(mass * mass + (mode_numbers * np.pi / ell) ** 2)
    boundary_values = np.full(cutoff + 1, np.sqrt(2.0 / ell))
    boundary_values[0] = 1.0 / np.sqrt(ell)

    symmetric_covariance = np.diag(hbar / (2.0 * frequencies))
    antisymmetric_stiffness = np.diag(frequencies * frequencies) + 2.0 * coupling * np.outer(
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
    return (
        0.5 * (symmetric_covariance - antisymmetric_covariance),
        0.5 * (symmetric_covariance + antisymmetric_covariance),
    )


def neumann_image_kernel(
    first_positions: np.ndarray,
    second_positions: np.ndarray,
    ell: float,
    mass: float,
    hbar: float,
    image_count: int,
) -> np.ndarray:
    """Exact equal-time Neumann covariance on [-ell, ell]."""
    shifted_first = np.asarray(first_positions)[:, None] + ell
    shifted_second = np.asarray(second_positions)[None, :] + ell
    values = np.zeros((shifted_first.shape[0], shifted_second.shape[1]))
    for image_number in range(-image_count, image_count + 1):
        values += k0(
            mass
            * np.abs(shifted_first - shifted_second + 4.0 * image_number * ell)
        )
        values += k0(
            mass
            * np.abs(shifted_first + shifted_second + 4.0 * image_number * ell)
        )
    return hbar * values / (2.0 * np.pi)


def image_packet_correlation(
    first_positions: np.ndarray,
    first_weights: np.ndarray,
    second_positions: np.ndarray,
    second_weights: np.ndarray,
    ell: float,
    mass: float,
    hbar: float,
    image_count: int,
) -> float:
    values = neumann_image_kernel(
        first_positions, second_positions, ell, mass, hbar, image_count
    )
    return float(first_weights @ values @ second_weights)


def full_mode_coefficients(
    positions: np.ndarray,
    normalized_weights: np.ndarray,
    mode_cutoff: int,
    ell: float,
) -> np.ndarray:
    mode_numbers = np.arange(mode_cutoff + 1)
    normalizations = np.full(mode_cutoff + 1, 1.0 / np.sqrt(ell))
    normalizations[0] = 1.0 / np.sqrt(2.0 * ell)
    values = normalizations[:, None] * np.cos(
        np.outer(mode_numbers, np.pi * (positions + ell) / (2.0 * ell))
    )
    return values @ normalized_weights


def full_mode_correlation(
    first_coefficients: np.ndarray,
    second_coefficients: np.ndarray,
    ell: float,
    mass: float,
    hbar: float,
) -> float:
    mode_numbers = np.arange(first_coefficients.size)
    frequencies = np.sqrt(
        mass * mass + (mode_numbers * np.pi / (2.0 * ell)) ** 2
    )
    return float(
        np.sum(hbar * first_coefficients * second_coefficients / (2.0 * frequencies))
    )


def point_reference(
    ell: float, mass: float, hbar: float, distance: float, image_count: int
) -> float:
    return float(
        neumann_image_kernel(
            np.array([0.0]),
            np.array([distance]),
            ell,
            mass,
            hbar,
            image_count,
        )[0, 0]
    )


def calculate(args: argparse.Namespace) -> list[Result]:
    if args.ell <= 0.0 or args.mass <= 0.0 or args.hbar <= 0.0:
        raise ValueError("ell, mass, and hbar must be positive")
    if not 0.0 < args.distance < args.ell:
        raise ValueError("distance must lie strictly between 0 and ell")
    if args.packet_scale <= 0.0:
        raise ValueError("packet-scale must be positive")

    largest_packet_size = args.packet_scale * args.ell / np.sqrt(min(args.cutoffs))
    if largest_packet_size >= args.distance:
        raise ValueError("the interface and remote packet supports overlap")
    if args.distance + largest_packet_size >= args.ell:
        raise ValueError("the remote packet reaches the outer boundary")

    exact_point_reference = point_reference(
        args.ell, args.mass, args.hbar, args.distance, max(40, args.image_count)
    )
    results: list[Result] = []

    for cutoff in args.cutoffs:
        packet_size = args.packet_scale * args.ell / np.sqrt(cutoff)
        coupling = tail_matched_coupling(cutoff, args.ell)

        interface_positions, interface_weights, interface_coefficients = (
            interface_packet_data(
                packet_size, cutoff, args.ell, args.packet_quadrature_order
            )
        )
        (
            half_interface_positions,
            half_interface_weights,
            half_interface_coefficients,
        ) = interface_packet_data(
            packet_size / 2.0, cutoff, args.ell, args.packet_quadrature_order
        )
        remote_positions, remote_weights, remote_coefficients = remote_packet_data(
            packet_size,
            args.distance,
            cutoff,
            args.ell,
            args.packet_quadrature_order,
        )
        improved_interface_coefficients = (
            2.0 * half_interface_coefficients - interface_coefficients
        )

        left_right_covariance, right_right_covariance = glued_covariance_blocks(
            cutoff, args.ell, args.mass, args.hbar, coupling
        )
        glued_left = float(
            interface_coefficients @ left_right_covariance @ remote_coefficients
        )
        glued_right = float(
            interface_coefficients @ right_right_covariance @ remote_coefficients
        )
        glued_left_improved = float(
            improved_interface_coefficients
            @ left_right_covariance
            @ remote_coefficients
        )
        glued_right_improved = float(
            improved_interface_coefficients
            @ right_right_covariance
            @ remote_coefficients
        )

        image_nodes, image_weights = normalized_bump_quadrature(
            args.image_quadrature_order
        )
        image_interface_positions = 0.5 * packet_size * (image_nodes + 1.0)
        image_half_interface_positions = 0.25 * packet_size * (image_nodes + 1.0)
        image_remote_positions = args.distance + packet_size * image_nodes

        joined_left = image_packet_correlation(
            -image_interface_positions,
            image_weights,
            image_remote_positions,
            image_weights,
            args.ell,
            args.mass,
            args.hbar,
            args.image_count,
        )
        joined_right = image_packet_correlation(
            image_interface_positions,
            image_weights,
            image_remote_positions,
            image_weights,
            args.ell,
            args.mass,
            args.hbar,
            args.image_count,
        )
        joined_left_half = image_packet_correlation(
            -image_half_interface_positions,
            image_weights,
            image_remote_positions,
            image_weights,
            args.ell,
            args.mass,
            args.hbar,
            args.image_count,
        )
        joined_right_half = image_packet_correlation(
            image_half_interface_positions,
            image_weights,
            image_remote_positions,
            image_weights,
            args.ell,
            args.mass,
            args.hbar,
            args.image_count,
        )
        joined_left_improved = 2.0 * joined_left_half - joined_left
        joined_right_improved = 2.0 * joined_right_half - joined_right

        reference_mode_cutoff = int(
            np.ceil(
                args.reference_wavenumber_radius
                * 4.0
                * args.ell
                / (np.pi * packet_size)
            )
        )
        mode_nodes, mode_weights = normalized_bump_quadrature(
            args.reference_quadrature_order
        )
        mode_interface_positions = 0.5 * packet_size * (mode_nodes + 1.0)
        mode_half_interface_positions = 0.25 * packet_size * (mode_nodes + 1.0)
        mode_remote_positions = args.distance + packet_size * mode_nodes
        full_left_coefficients = full_mode_coefficients(
            -mode_interface_positions,
            mode_weights,
            reference_mode_cutoff,
            args.ell,
        )
        full_right_coefficients = full_mode_coefficients(
            mode_interface_positions,
            mode_weights,
            reference_mode_cutoff,
            args.ell,
        )
        full_left_half_coefficients = full_mode_coefficients(
            -mode_half_interface_positions,
            mode_weights,
            reference_mode_cutoff,
            args.ell,
        )
        full_right_half_coefficients = full_mode_coefficients(
            mode_half_interface_positions,
            mode_weights,
            reference_mode_cutoff,
            args.ell,
        )
        full_remote_coefficients = full_mode_coefficients(
            mode_remote_positions,
            mode_weights,
            reference_mode_cutoff,
            args.ell,
        )
        mode_joined_left = full_mode_correlation(
            full_left_coefficients,
            full_remote_coefficients,
            args.ell,
            args.mass,
            args.hbar,
        )
        mode_joined_right = full_mode_correlation(
            full_right_coefficients,
            full_remote_coefficients,
            args.ell,
            args.mass,
            args.hbar,
        )
        mode_joined_left_improved = (
            2.0
            * full_mode_correlation(
                full_left_half_coefficients,
                full_remote_coefficients,
                args.ell,
                args.mass,
                args.hbar,
            )
            - mode_joined_left
        )
        mode_joined_right_improved = (
            2.0
            * full_mode_correlation(
                full_right_half_coefficients,
                full_remote_coefficients,
                args.ell,
                args.mass,
                args.hbar,
            )
            - mode_joined_right
        )
        reference_cross_check = max(
            abs(mode_joined_left - joined_left),
            abs(mode_joined_right - joined_right),
            abs(mode_joined_left_improved - joined_left_improved),
            abs(mode_joined_right_improved - joined_right_improved),
        )

        interface_tail = projection_tail(
            interface_coefficients,
            ordinary_packet_squared_norm(
                packet_size, True, args.packet_quadrature_order
            ),
        )
        remote_tail = projection_tail(
            remote_coefficients,
            ordinary_packet_squared_norm(
                packet_size, False, args.packet_quadrature_order
            ),
        )
        improved_interface_tail = projection_tail(
            improved_interface_coefficients,
            improved_interface_packet_squared_norm(
                packet_size, args.packet_quadrature_order
            ),
        )

        results.append(
            Result(
                cutoff=cutoff,
                packet_size=packet_size,
                coupling=coupling,
                point_reference=exact_point_reference,
                glued_left=glued_left,
                joined_left=joined_left,
                glued_right=glued_right,
                joined_right=joined_right,
                glued_left_improved=glued_left_improved,
                joined_left_improved=joined_left_improved,
                glued_right_improved=glued_right_improved,
                joined_right_improved=joined_right_improved,
                left_gluing_error=abs(glued_left - joined_left) / abs(joined_left),
                right_gluing_error=abs(glued_right - joined_right) / abs(joined_right),
                left_smearing_error=abs(joined_left - exact_point_reference)
                / abs(exact_point_reference),
                right_smearing_error=abs(joined_right - exact_point_reference)
                / abs(exact_point_reference),
                left_total_error=abs(glued_left - exact_point_reference)
                / abs(exact_point_reference),
                right_total_error=abs(glued_right - exact_point_reference)
                / abs(exact_point_reference),
                left_improved_gluing_error=abs(
                    glued_left_improved - joined_left_improved
                )
                / abs(joined_left_improved),
                right_improved_gluing_error=abs(
                    glued_right_improved - joined_right_improved
                )
                / abs(joined_right_improved),
                left_improved_smearing_error=abs(
                    joined_left_improved - exact_point_reference
                )
                / abs(exact_point_reference),
                right_improved_smearing_error=abs(
                    joined_right_improved - exact_point_reference
                )
                / abs(exact_point_reference),
                left_improved_total_error=abs(
                    glued_left_improved - exact_point_reference
                )
                / abs(exact_point_reference),
                right_improved_total_error=abs(
                    glued_right_improved - exact_point_reference
                )
                / abs(exact_point_reference),
                glued_side_difference=abs(glued_left - glued_right)
                / abs(exact_point_reference),
                joined_side_difference=abs(joined_left - joined_right)
                / abs(exact_point_reference),
                sewing_residual=abs(
                    (glued_left - glued_right) - (joined_left - joined_right)
                )
                / abs(exact_point_reference),
                glued_improved_side_difference=abs(
                    glued_left_improved - glued_right_improved
                )
                / abs(exact_point_reference),
                joined_improved_side_difference=abs(
                    joined_left_improved - joined_right_improved
                )
                / abs(exact_point_reference),
                improved_sewing_residual=abs(
                    (glued_left_improved - glued_right_improved)
                    - (joined_left_improved - joined_right_improved)
                )
                / abs(exact_point_reference),
                interface_packet_tail=interface_tail,
                remote_packet_tail=remote_tail,
                improved_interface_packet_tail=improved_interface_tail,
                reference_mode_cutoff=reference_mode_cutoff,
                reference_cross_check=reference_cross_check,
            )
        )

    return results


def print_results(args: argparse.Namespace, results: list[Result]) -> None:
    print("Parameters")
    print(f"  ell={args.ell:g}, mass={args.mass:g}, hbar={args.hbar:g}")
    print(f"  remote center d={args.distance:g}")
    print(
        "  interface support size and remote radius = "
        f"{args.packet_scale:g}*ell/sqrt(N)"
    )
    print(f"  cutoffs={args.cutoffs}")
    print(f"  exact joined point correlation={results[0].point_reference:.15g}")

    print("\nPositive one-sided packets")
    print(
        "N      glued-left       joined-left      glued-right      joined-right     "
        "left glue err  right glue err left total     right total"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.glued_left:<17.11g} "
            f"{result.joined_left:<17.11g} {result.glued_right:<17.11g} "
            f"{result.joined_right:<17.11g} {result.left_gluing_error:<14.5e} "
            f"{result.right_gluing_error:<14.5e} {result.left_total_error:<14.5e} "
            f"{result.right_total_error:.5e}"
        )

    print("\nPositive-packet error decomposition")
    print(
        "N      left glue      left smear     left total     "
        "right glue     right smear    right total"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.left_gluing_error:<14.5e} "
            f"{result.left_smearing_error:<14.5e} "
            f"{result.left_total_error:<14.5e} "
            f"{result.right_gluing_error:<14.5e} "
            f"{result.right_smearing_error:<14.5e} "
            f"{result.right_total_error:.5e}"
        )

    print("\nFirst-moment-improved interface packets")
    print(
        "N      glued-left       joined-left      glued-right      joined-right     "
        "left glue err  right glue err left total     right total"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.glued_left_improved:<17.11g} "
            f"{result.joined_left_improved:<17.11g} "
            f"{result.glued_right_improved:<17.11g} "
            f"{result.joined_right_improved:<17.11g} "
            f"{result.left_improved_gluing_error:<14.5e} "
            f"{result.right_improved_gluing_error:<14.5e} "
            f"{result.left_improved_total_error:<14.5e} "
            f"{result.right_improved_total_error:.5e}"
        )

    print("\nImproved-packet error decomposition")
    print(
        "N      left glue      left smear     left total     "
        "right glue     right smear    right total"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.left_improved_gluing_error:<14.5e} "
            f"{result.left_improved_smearing_error:<14.5e} "
            f"{result.left_improved_total_error:<14.5e} "
            f"{result.right_improved_gluing_error:<14.5e} "
            f"{result.right_improved_smearing_error:<14.5e} "
            f"{result.right_improved_total_error:.5e}"
        )

    print("\nLeft-right interface-limit checks (relative to point reference)")
    print(
        "N      glued diff      joined diff     sewing residual  "
        "improved glued diff improved joined diff improved sewing residual"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.glued_side_difference:<16.5e} "
            f"{result.joined_side_difference:<15.5e} {result.sewing_residual:<16.5e} "
            f"{result.glued_improved_side_difference:<20.5e} "
            f"{result.joined_improved_side_difference:<21.5e} "
            f"{result.improved_sewing_residual:.5e}"
        )

    print("\nResolution and reference checks")
    print(
        "N      a_N             kappa_N          interface tail  remote tail     "
        "improved tail   full-mode cutoff max |mode-image|"
    )
    for result in results:
        print(
            f"{result.cutoff:<6d} {result.packet_size:<15.9g} "
            f"{result.coupling:<16.9g} {result.interface_packet_tail:<15.5e} "
            f"{result.remote_packet_tail:<15.5e} "
            f"{result.improved_interface_packet_tail:<15.5e} "
            f"{result.reference_mode_cutoff:<16d} {result.reference_cross_check:.5e}"
        )


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ell", type=float, default=1.0)
    parser.add_argument("--mass", type=float, default=1.0)
    parser.add_argument("--hbar", type=float, default=1.0)
    parser.add_argument("--distance", type=float, default=0.5)
    parser.add_argument(
        "--cutoffs",
        type=parse_cutoffs,
        default=parse_cutoffs("32,64,128,256,512,1024,2048"),
    )
    parser.add_argument(
        "--packet-scale",
        type=float,
        default=0.5,
        help="a_N = packet_scale*ell/sqrt(N)",
    )
    parser.add_argument("--packet-quadrature-order", type=int, default=256)
    parser.add_argument("--image-quadrature-order", type=int, default=160)
    parser.add_argument("--image-count", type=int, default=20)
    parser.add_argument("--reference-quadrature-order", type=int, default=512)
    parser.add_argument("--reference-wavenumber-radius", type=float, default=40.0)
    return parser


def main() -> None:
    args = build_parser().parse_args()
    print_results(args, calculate(args))


if __name__ == "__main__":
    main()
