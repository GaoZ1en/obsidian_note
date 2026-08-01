#!/usr/bin/env python3

from __future__ import annotations

import argparse
import math
from dataclasses import dataclass
from typing import Callable

import numpy as np


Array = np.ndarray
TestFunction = Callable[[Array], Array]


@dataclass(frozen=True)
class IntervalMesh:
    nodes: Array

    def __post_init__(self) -> None:
        nodes = np.asarray(self.nodes, dtype=float)
        if nodes.ndim != 1 or nodes.size < 4:
            raise ValueError("The AdS2 interval mesh needs at least three elements.")
        if not np.isclose(nodes[0], -0.5 * np.pi, atol=1.0e-14):
            raise ValueError("The left endpoint must be rho = -pi/2.")
        if not np.isclose(nodes[-1], 0.5 * np.pi, atol=1.0e-14):
            raise ValueError("The right endpoint must be rho = pi/2.")
        if np.any(np.diff(nodes) <= 0.0):
            raise ValueError("Mesh nodes must be strictly increasing.")
        object.__setattr__(self, "nodes", nodes)

    @property
    def num_elements(self) -> int:
        return int(self.nodes.size - 1)

    @property
    def num_sites(self) -> int:
        return int(self.nodes.size - 2)

    @property
    def interior_nodes(self) -> Array:
        return self.nodes[1:-1]

    @property
    def edge_lengths(self) -> Array:
        return np.diff(self.nodes)

    @property
    def dual_widths(self) -> Array:
        edges = self.edge_lengths
        return 0.5 * (edges[:-1] + edges[1:])

    @property
    def mesh_ratio(self) -> float:
        edges = self.edge_lengths
        return float(np.max(edges) / np.min(edges))


def mapped_interval_mesh(
    num_elements: int,
    amplitude: float = -0.6,
) -> IntervalMesh:
    if num_elements < 3:
        raise ValueError("num_elements must be at least three.")
    if abs(amplitude) >= 1.0:
        raise ValueError("abs(amplitude) must be smaller than one.")

    computational = np.linspace(0.0, 1.0, num_elements + 1)
    mapped = computational + amplitude * np.sin(
        2.0 * np.pi * computational
    ) / (2.0 * np.pi)
    nodes = np.pi * (mapped - 0.5)
    nodes[0] = -0.5 * np.pi
    nodes[-1] = 0.5 * np.pi
    return IntervalMesh(nodes=nodes)


def _interior_index(global_node: int, num_elements: int) -> int | None:
    if 1 <= global_node < num_elements:
        return global_node - 1
    return None


def stiffness_matrix(mesh: IntervalMesh) -> Array:
    matrix = np.zeros((mesh.num_sites, mesh.num_sites), dtype=float)
    for edge, edge_length in enumerate(mesh.edge_lengths):
        local = np.array([[1.0, -1.0], [-1.0, 1.0]]) / edge_length
        global_nodes = (edge, edge + 1)
        for local_row, global_row in enumerate(global_nodes):
            row = _interior_index(global_row, mesh.num_elements)
            if row is None:
                continue
            for local_column, global_column in enumerate(global_nodes):
                column = _interior_index(global_column, mesh.num_elements)
                if column is not None:
                    matrix[row, column] += local[local_row, local_column]
    return matrix


def lumped_mass_matrix(mesh: IntervalMesh) -> Array:
    return np.diag(mesh.dual_widths)


def consistent_mass_matrix(mesh: IntervalMesh) -> Array:
    matrix = np.zeros((mesh.num_sites, mesh.num_sites), dtype=float)
    for edge, edge_length in enumerate(mesh.edge_lengths):
        local = edge_length * np.array([[2.0, 1.0], [1.0, 2.0]]) / 6.0
        global_nodes = (edge, edge + 1)
        for local_row, global_row in enumerate(global_nodes):
            row = _interior_index(global_row, mesh.num_elements)
            if row is None:
                continue
            for local_column, global_column in enumerate(global_nodes):
                column = _interior_index(global_column, mesh.num_elements)
                if column is not None:
                    matrix[row, column] += local[local_row, local_column]
    return matrix


def effective_potential(rho: Array, coupling: float) -> Array:
    return coupling / np.cos(rho) ** 2


def lumped_potential_matrix(mesh: IntervalMesh, coupling: float) -> Array:
    values = effective_potential(mesh.interior_nodes, coupling)
    return np.diag(mesh.dual_widths * values)


def consistent_potential_matrix(
    mesh: IntervalMesh,
    coupling: float,
    quadrature_order: int = 24,
) -> Array:
    matrix = np.zeros((mesh.num_sites, mesh.num_sites), dtype=float)
    abscissae, weights = np.polynomial.legendre.leggauss(quadrature_order)
    left_basis = 0.5 * (1.0 - abscissae)
    right_basis = 0.5 * (1.0 + abscissae)
    basis = (left_basis, right_basis)

    for edge, edge_length in enumerate(mesh.edge_lengths):
        midpoint = 0.5 * (mesh.nodes[edge] + mesh.nodes[edge + 1])
        positions = midpoint + 0.5 * edge_length * abscissae
        weighted_potential = (
            0.5
            * edge_length
            * weights
            * effective_potential(positions, coupling)
        )
        global_nodes = (edge, edge + 1)
        for local_row, global_row in enumerate(global_nodes):
            row = _interior_index(global_row, mesh.num_elements)
            if row is None:
                continue
            for local_column, global_column in enumerate(global_nodes):
                column = _interior_index(global_column, mesh.num_elements)
                if column is None:
                    continue
                matrix[row, column] += float(
                    np.dot(
                        weighted_potential,
                        basis[local_row] * basis[local_column],
                    )
                )
    return matrix


def symmetric_inverse_square_root(matrix: Array) -> Array:
    eigenvalues, eigenvectors = np.linalg.eigh(matrix)
    if np.min(eigenvalues) <= 0.0:
        raise ValueError("The finite-element mass matrix must be positive definite.")
    return (eigenvectors * eigenvalues ** (-0.5)) @ eigenvectors.T


@dataclass(frozen=True)
class NormalModes:
    frequencies: Array
    canonical_modes: Array
    nodal_modes: Array
    mass_matrix: Array
    spatial_matrix: Array


def diagonalize(
    mesh: IntervalMesh,
    coupling: float,
    mass_scheme: str = "lumped",
) -> NormalModes:
    if coupling <= 0.0:
        raise ValueError(
            "The current strong-Dirichlet benchmark requires g > 0; "
            "the BF window needs an explicit endpoint extension."
        )

    if mass_scheme == "lumped":
        mass_matrix = lumped_mass_matrix(mesh)
        potential = lumped_potential_matrix(mesh, coupling)
    elif mass_scheme == "consistent":
        mass_matrix = consistent_mass_matrix(mesh)
        potential = consistent_potential_matrix(mesh, coupling)
    else:
        raise ValueError("mass_scheme must be 'lumped' or 'consistent'.")

    spatial = stiffness_matrix(mesh) + potential
    inverse_square_root = symmetric_inverse_square_root(mass_matrix)
    canonical = inverse_square_root @ spatial @ inverse_square_root
    squared_frequencies, canonical_modes = np.linalg.eigh(canonical)
    if np.min(squared_frequencies) <= 0.0:
        raise AssertionError(
            "The selected mesh and boundary condition produced a nonpositive mode."
        )

    return NormalModes(
        frequencies=np.sqrt(squared_frequencies),
        canonical_modes=canonical_modes,
        nodal_modes=inverse_square_root @ canonical_modes,
        mass_matrix=mass_matrix,
        spatial_matrix=spatial,
    )


def scaling_dimension(coupling: float) -> float:
    if coupling <= -0.25:
        raise ValueError("The standard branch requires g > -1/4 here.")
    return 0.5 + math.sqrt(0.25 + coupling)


def analytic_frequencies(coupling: float, count: int) -> Array:
    delta = scaling_dimension(coupling)
    return delta + np.arange(count, dtype=float)


def gegenbauer_values(count: int, delta: float, argument: float) -> Array:
    if count < 1:
        return np.empty(0, dtype=float)
    values = np.empty(count, dtype=float)
    values[0] = 1.0
    if count == 1:
        return values
    values[1] = 2.0 * delta * argument
    for degree in range(1, count - 1):
        values[degree + 1] = (
            2.0 * (degree + delta) * argument * values[degree]
            - (degree + 2.0 * delta - 1.0) * values[degree - 1]
        ) / (degree + 1.0)
    return values


def analytic_mode_profiles(
    coupling: float,
    rho: float,
    count: int,
) -> Array:
    delta = scaling_dimension(coupling)
    degrees = np.arange(count, dtype=float)
    log_normalization_squared = (
        (2.0 * delta - 1.0) * math.log(2.0)
        + np.array([math.lgamma(int(n) + 1) for n in degrees])
        + np.log(degrees + delta)
        + 2.0 * math.lgamma(delta)
        - math.log(math.pi)
        - np.array([math.lgamma(n + 2.0 * delta) for n in degrees])
    )
    normalization = np.exp(0.5 * log_normalization_squared)
    polynomials = gegenbauer_values(count, delta, math.sin(rho))
    return normalization * math.cos(rho) ** delta * polynomials


def hat_evaluation_vector(mesh: IntervalMesh, rho: float) -> Array:
    if rho < mesh.nodes[0] or rho > mesh.nodes[-1]:
        raise ValueError("Evaluation point lies outside the AdS2 strip.")
    vector = np.zeros(mesh.num_sites, dtype=float)
    if np.isclose(rho, mesh.nodes[0]) or np.isclose(rho, mesh.nodes[-1]):
        return vector

    edge = int(np.searchsorted(mesh.nodes, rho, side="right") - 1)
    edge = min(max(edge, 0), mesh.num_elements - 1)
    edge_length = mesh.edge_lengths[edge]
    parameter = (rho - mesh.nodes[edge]) / edge_length
    for global_node, value in (
        (edge, 1.0 - parameter),
        (edge + 1, parameter),
    ):
        index = _interior_index(global_node, mesh.num_elements)
        if index is not None:
            vector[index] += value
    return vector


def numerical_euclidean_green(
    mesh: IntervalMesh,
    modes: NormalModes,
    time_separation: float,
    rho: float,
    rho_prime: float,
) -> float:
    if time_separation <= 0.0:
        raise ValueError("Use a positive Euclidean-time separation for this check.")
    left_profiles = hat_evaluation_vector(mesh, rho) @ modes.nodal_modes
    right_profiles = hat_evaluation_vector(mesh, rho_prime) @ modes.nodal_modes
    weights = np.exp(-modes.frequencies * time_separation) / (
        2.0 * modes.frequencies
    )
    return float(np.dot(left_profiles * weights, right_profiles))


def continuum_mode_green(
    coupling: float,
    time_separation: float,
    rho: float,
    rho_prime: float,
    mode_count: int = 240,
) -> float:
    frequencies = analytic_frequencies(coupling, mode_count)
    left_profiles = analytic_mode_profiles(coupling, rho, mode_count)
    right_profiles = analytic_mode_profiles(coupling, rho_prime, mode_count)
    weights = np.exp(-frequencies * time_separation) / (2.0 * frequencies)
    return float(np.dot(left_profiles * weights, right_profiles))


def invariant_green_delta_two(
    time_separation: float,
    rho: float,
    rho_prime: float,
) -> float:
    invariant = (
        math.cosh(time_separation) - math.sin(rho) * math.sin(rho_prime)
    ) / (math.cos(rho) * math.cos(rho_prime))
    if invariant <= 1.0:
        raise ValueError("Separated Euclidean points must have Z > 1.")
    legendre_q_one = 0.5 * invariant * math.log(
        (invariant + 1.0) / (invariant - 1.0)
    ) - 1.0
    return legendre_q_one / (2.0 * math.pi)


def finite_element_load_vector(
    mesh: IntervalMesh,
    function: TestFunction,
    quadrature_order: int = 20,
) -> Array:
    vector = np.zeros(mesh.num_sites, dtype=float)
    abscissae, weights = np.polynomial.legendre.leggauss(quadrature_order)
    left_basis = 0.5 * (1.0 - abscissae)
    right_basis = 0.5 * (1.0 + abscissae)

    for edge, edge_length in enumerate(mesh.edge_lengths):
        midpoint = 0.5 * (mesh.nodes[edge] + mesh.nodes[edge + 1])
        positions = midpoint + 0.5 * edge_length * abscissae
        weighted_values = 0.5 * edge_length * weights * function(positions)
        for global_node, basis in (
            (edge, left_basis),
            (edge + 1, right_basis),
        ):
            index = _interior_index(global_node, mesh.num_elements)
            if index is not None:
                vector[index] += float(np.dot(weighted_values, basis))
    return vector


def continuum_inner_product(
    mesh: IntervalMesh,
    left_function: TestFunction,
    right_function: TestFunction,
    quadrature_order: int = 24,
) -> float:
    abscissae, weights = np.polynomial.legendre.leggauss(quadrature_order)
    result = 0.0
    for edge, edge_length in enumerate(mesh.edge_lengths):
        midpoint = 0.5 * (mesh.nodes[edge] + mesh.nodes[edge + 1])
        positions = midpoint + 0.5 * edge_length * abscissae
        result += float(
            0.5
            * edge_length
            * np.dot(
                weights,
                left_function(positions) * right_function(positions),
            )
        )
    return result


def smeared_commutator_coefficient(
    mesh: IntervalMesh,
    left_function: TestFunction,
    right_function: TestFunction,
) -> float:
    mass_matrix = consistent_mass_matrix(mesh)
    left_load = finite_element_load_vector(mesh, left_function)
    right_load = finite_element_load_vector(mesh, right_function)
    return float(left_load @ np.linalg.solve(mass_matrix, right_load))


def maximum_spectral_error(
    mesh: IntervalMesh,
    coupling: float,
    mode_count: int,
    mass_scheme: str,
) -> float:
    numerical = diagonalize(mesh, coupling, mass_scheme).frequencies[:mode_count]
    exact = analytic_frequencies(coupling, mode_count)
    return float(np.max(np.abs(numerical - exact)))


def maximum_mode_infidelity(
    mesh: IntervalMesh,
    coupling: float,
    mode_count: int,
    mass_scheme: str,
) -> float:
    modes = diagonalize(mesh, coupling, mass_scheme)
    exact_nodal_modes = np.vstack(
        [
            analytic_mode_profiles(coupling, rho, mode_count)
            for rho in mesh.interior_nodes
        ]
    )
    infidelities = []
    for mode in range(mode_count):
        exact = exact_nodal_modes[:, mode]
        exact /= math.sqrt(float(exact @ modes.mass_matrix @ exact))
        overlap = abs(
            float(
                exact
                @ modes.mass_matrix
                @ modes.nodal_modes[:, mode]
            )
        )
        infidelities.append(max(0.0, 1.0 - min(overlap, 1.0)))
    return float(max(infidelities))


def convergence_rows(
    element_counts: tuple[int, ...],
    amplitude: float,
    coupling: float,
    mode_count: int,
    time_separation: float,
    rho: float,
    rho_prime: float,
) -> list[tuple[int, float, float, float, float, float, float]]:
    def left_test(x: Array) -> Array:
        return np.cos(x) * (1.0 + 0.25 * np.sin(2.0 * x))

    def right_test(x: Array) -> Array:
        return np.cos(x) * (0.4 + np.cos(3.0 * x))

    continuum_green = continuum_mode_green(
        coupling,
        time_separation,
        rho,
        rho_prime,
    )
    rows = []
    for num_elements in element_counts:
        mesh = mapped_interval_mesh(num_elements, amplitude)
        continuum_ccr = continuum_inner_product(mesh, left_test, right_test)
        ccr_error = abs(
            smeared_commutator_coefficient(mesh, left_test, right_test)
            - continuum_ccr
        )
        lumped_modes = diagonalize(mesh, coupling, "lumped")
        consistent_modes = diagonalize(mesh, coupling, "consistent")
        rows.append(
            (
                mesh.num_sites,
                float(np.max(mesh.edge_lengths)),
                maximum_spectral_error(mesh, coupling, mode_count, "lumped"),
                maximum_spectral_error(
                    mesh, coupling, mode_count, "consistent"
                ),
                ccr_error,
                abs(
                    numerical_euclidean_green(
                        mesh,
                        lumped_modes,
                        time_separation,
                        rho,
                        rho_prime,
                    )
                    - continuum_green
                ),
                abs(
                    numerical_euclidean_green(
                        mesh,
                        consistent_modes,
                        time_separation,
                        rho,
                        rho_prime,
                    )
                    - continuum_green
                ),
            )
        )
    return rows


def run_checks() -> None:
    coupling = 2.0
    time_separation = 0.7
    rho = 0.2
    rho_prime = -0.35
    mesh = mapped_interval_mesh(96, amplitude=-0.6)

    stiffness = stiffness_matrix(mesh)
    assert np.allclose(stiffness, stiffness.T, atol=1.0e-13)
    assert np.min(np.linalg.eigvalsh(stiffness)) > 0.0
    assert np.isclose(np.sum(mesh.edge_lengths), np.pi, atol=1.0e-14)
    assert np.all(mesh.dual_widths > 0.0)

    for scheme in ("lumped", "consistent"):
        modes = diagonalize(mesh, coupling, scheme)
        identity = np.eye(mesh.num_sites)
        assert np.allclose(
            modes.nodal_modes.T @ modes.mass_matrix @ modes.nodal_modes,
            identity,
            atol=3.0e-11,
        )
        assert np.allclose(
            modes.nodal_modes.T @ modes.spatial_matrix @ modes.nodal_modes,
            np.diag(modes.frequencies**2),
            atol=3.0e-9,
        )

    continuum_green = continuum_mode_green(
        coupling,
        time_separation,
        rho,
        rho_prime,
    )
    closed_green = invariant_green_delta_two(
        time_separation,
        rho,
        rho_prime,
    )
    assert abs(continuum_green - closed_green) < 2.0e-14
    assert maximum_mode_infidelity(mesh, coupling, 6, "lumped") < 3.0e-5
    assert maximum_mode_infidelity(mesh, coupling, 6, "consistent") < 3.0e-5

    rows = convergence_rows(
        element_counts=(16, 32, 64, 128),
        amplitude=-0.6,
        coupling=coupling,
        mode_count=6,
        time_separation=time_separation,
        rho=rho,
        rho_prime=rho_prime,
    )
    first = rows[0]
    last = rows[-1]
    assert last[2] < first[2] / 20.0
    assert last[3] < first[3] / 20.0
    assert last[4] < first[4] / 100.0
    assert last[5] < first[5] / 20.0
    assert last[6] < first[6] / 20.0


def format_spectrum_table(
    mesh: IntervalMesh,
    coupling: float,
    mode_count: int,
) -> str:
    exact = analytic_frequencies(coupling, mode_count)
    lumped = diagonalize(mesh, coupling, "lumped").frequencies[:mode_count]
    consistent = diagonalize(mesh, coupling, "consistent").frequencies[:mode_count]
    lines = [
        "mode       exact       lumped    consistent",
        "----  ----------  -----------  ------------",
    ]
    for mode, values in enumerate(zip(exact, lumped, consistent)):
        lines.append(
            f"{mode:4d}  {values[0]:10.7f}  {values[1]:11.7f}  {values[2]:12.7f}"
        )
    return "\n".join(lines)


def format_convergence_table(
    rows: list[tuple[int, float, float, float, float, float, float]],
) -> str:
    lines = [
        " sites      h_max  spec lumped  spec consistent      CCR FE  G lumped  G consistent",
        "------  ---------  -----------  ---------------  ----------  --------  ------------",
    ]
    for row in rows:
        lines.append(
            f"{row[0]:6d}  {row[1]:9.3e}  {row[2]:11.3e}  {row[3]:15.3e}"
            f"  {row[4]:10.3e}  {row[5]:8.3e}  {row[6]:12.3e}"
        )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(
        description=(
            "Diagonalize the standard-quantized scalar on a nonuniform "
            "global-AdS2 conformal strip and compare its Euclidean Green function."
        )
    )
    parser.add_argument("--elements", type=int, default=96)
    parser.add_argument("--amplitude", type=float, default=-0.6)
    parser.add_argument(
        "--coupling",
        type=float,
        default=2.0,
        help="Effective coupling g = L^2 (m^2 + xi R).",
    )
    parser.add_argument("--modes", type=int, default=8)
    parser.add_argument("--time-separation", type=float, default=0.7)
    parser.add_argument("--rho", type=float, default=0.2)
    parser.add_argument("--rho-prime", type=float, default=-0.35)
    parser.add_argument(
        "--convergence-elements",
        default="16,32,64,128",
        help="Comma-separated element counts for the convergence table.",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="Run finite-dimensional, spectral, CCR, and Green-function checks.",
    )
    args = parser.parse_args()

    if args.elements < 3:
        parser.error("--elements must be at least three")
    if abs(args.amplitude) >= 1.0:
        parser.error("abs(--amplitude) must be smaller than one")
    if args.coupling <= 0.0:
        parser.error(
            "--coupling must be positive for the implemented strong-Dirichlet "
            "benchmark"
        )
    if args.modes < 1:
        parser.error("--modes must be positive")
    if args.time_separation <= 0.0:
        parser.error("--time-separation must be positive")
    if not -0.5 * np.pi < args.rho < 0.5 * np.pi:
        parser.error("--rho must lie in (-pi/2, pi/2)")
    if not -0.5 * np.pi < args.rho_prime < 0.5 * np.pi:
        parser.error("--rho-prime must lie in (-pi/2, pi/2)")

    if args.check:
        run_checks()
        print("All global-AdS2 lattice checks passed.\n")

    mesh = mapped_interval_mesh(args.elements, args.amplitude)
    mode_count = min(args.modes, mesh.num_sites)
    print(
        f"global AdS2 mesh: sites={mesh.num_sites}, elements={mesh.num_elements}, "
        f"h_max/h_min={mesh.mesh_ratio:.8g}, "
        f"Delta={scaling_dimension(args.coupling):.8g}"
    )
    print(format_spectrum_table(mesh, args.coupling, mode_count))
    overlap_mode_count = min(mode_count, 6)
    for scheme in ("lumped", "consistent"):
        infidelity = maximum_mode_infidelity(
            mesh,
            args.coupling,
            overlap_mode_count,
            scheme,
        )
        print(
            f"{scheme:>10s} max first-{overlap_mode_count} mode infidelity: "
            f"{infidelity:.3e}"
        )

    continuum_green = continuum_mode_green(
        args.coupling,
        args.time_separation,
        args.rho,
        args.rho_prime,
    )
    print(f"\ncontinuum mode-sum Green function: {continuum_green:.12e}")
    for scheme in ("lumped", "consistent"):
        modes = diagonalize(mesh, args.coupling, scheme)
        value = numerical_euclidean_green(
            mesh,
            modes,
            args.time_separation,
            args.rho,
            args.rho_prime,
        )
        print(
            f"{scheme:>10s} lattice Green function: {value:.12e} "
            f"(abs error {abs(value - continuum_green):.3e})"
        )

    element_counts = tuple(
        int(value.strip())
        for value in args.convergence_elements.split(",")
        if value.strip()
    )
    if not element_counts or min(element_counts) < 3:
        parser.error("All convergence element counts must be at least three.")
    rows = convergence_rows(
        element_counts=element_counts,
        amplitude=args.amplitude,
        coupling=args.coupling,
        mode_count=min(mode_count, 6),
        time_separation=args.time_separation,
        rho=args.rho,
        rho_prime=args.rho_prime,
    )
    print("\nfixed-map refinement:")
    print(format_convergence_table(rows))


if __name__ == "__main__":
    main()
