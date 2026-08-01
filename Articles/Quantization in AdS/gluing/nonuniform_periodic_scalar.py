#!/usr/bin/env python3

from __future__ import annotations

import argparse
from dataclasses import dataclass
from typing import Callable

import numpy as np


Array = np.ndarray
TestFunction = Callable[[Array], Array]


@dataclass(frozen=True)
class PeriodicMesh:
    length: float
    nodes: Array

    def __post_init__(self) -> None:
        nodes = np.asarray(self.nodes, dtype=float)
        if self.length <= 0.0:
            raise ValueError("The circumference must be positive.")
        if nodes.ndim != 1 or nodes.size < 3:
            raise ValueError("A periodic mesh needs at least three nodes.")
        if abs(nodes[0]) > 1.0e-14:
            raise ValueError("The first node must be x_0 = 0.")
        if np.any(nodes < 0.0) or np.any(nodes >= self.length):
            raise ValueError("Nodes must lie in [0, length).")
        if np.any(np.diff(nodes) <= 0.0):
            raise ValueError("Nodes must be strictly increasing.")
        object.__setattr__(self, "nodes", nodes)

    @property
    def num_sites(self) -> int:
        return int(self.nodes.size)

    @property
    def edge_lengths(self) -> Array:
        return np.diff(np.concatenate((self.nodes, [self.length])))

    @property
    def dual_widths(self) -> Array:
        edge_lengths = self.edge_lengths
        return 0.5 * (np.roll(edge_lengths, 1) + edge_lengths)

    @property
    def mesh_ratio(self) -> float:
        edge_lengths = self.edge_lengths
        return float(np.max(edge_lengths) / np.min(edge_lengths))

    @property
    def dual_cell_bounds(self) -> list[tuple[float, float]]:
        edge_lengths = self.edge_lengths
        return [
            (
                float(self.nodes[j] - 0.5 * edge_lengths[j - 1]),
                float(self.nodes[j] + 0.5 * edge_lengths[j]),
            )
            for j in range(self.num_sites)
        ]


def uniform_mesh(length: float, num_sites: int) -> PeriodicMesh:
    if num_sites < 3:
        raise ValueError("num_sites must be at least three.")
    nodes = length * np.arange(num_sites, dtype=float) / num_sites
    return PeriodicMesh(length=length, nodes=nodes)


def two_density_mesh(
    length: float,
    dense_sites: int,
    sparse_sites: int,
    dense_fraction: float = 0.5,
) -> PeriodicMesh:
    if dense_sites < 2 or sparse_sites < 2:
        raise ValueError("Each density region must contain at least two sites.")
    if not 0.0 < dense_fraction < 1.0:
        raise ValueError("dense_fraction must lie strictly between zero and one.")

    dense_length = dense_fraction * length
    sparse_length = length - dense_length
    dense_nodes = dense_length * np.arange(dense_sites, dtype=float) / dense_sites
    sparse_nodes = dense_length + (
        sparse_length * np.arange(sparse_sites, dtype=float) / sparse_sites
    )
    return PeriodicMesh(
        length=length,
        nodes=np.concatenate((dense_nodes, sparse_nodes)),
    )


def smooth_density_mesh(
    length: float,
    num_sites: int,
    amplitude: float = 0.65,
) -> PeriodicMesh:
    if num_sites < 3:
        raise ValueError("num_sites must be at least three.")
    if abs(amplitude) >= 1.0:
        raise ValueError("abs(amplitude) must be smaller than one.")

    xi = np.arange(num_sites, dtype=float) / num_sites
    nodes = length * (
        xi + amplitude * np.sin(2.0 * np.pi * xi) / (2.0 * np.pi)
    )
    return PeriodicMesh(length=length, nodes=nodes)


def stiffness_matrix(mesh: PeriodicMesh) -> Array:
    matrix = np.zeros((mesh.num_sites, mesh.num_sites), dtype=float)
    for left, edge_length in enumerate(mesh.edge_lengths):
        right = (left + 1) % mesh.num_sites
        coefficient = 1.0 / edge_length
        matrix[left, left] += coefficient
        matrix[right, right] += coefficient
        matrix[left, right] -= coefficient
        matrix[right, left] -= coefficient
    return matrix


def consistent_mass_matrix(mesh: PeriodicMesh) -> Array:
    matrix = np.zeros((mesh.num_sites, mesh.num_sites), dtype=float)
    for left, edge_length in enumerate(mesh.edge_lengths):
        right = (left + 1) % mesh.num_sites
        matrix[left, left] += edge_length / 3.0
        matrix[right, right] += edge_length / 3.0
        matrix[left, right] += edge_length / 6.0
        matrix[right, left] += edge_length / 6.0
    return matrix


def lumped_mass_matrix(mesh: PeriodicMesh) -> Array:
    return np.diag(mesh.dual_widths)


def split_reference_stiffness(
    mesh: PeriodicMesh,
    cut_edges: tuple[int, ...],
    boundary_condition: str,
) -> tuple[Array, Array]:
    if boundary_condition not in {"dirichlet", "neumann"}:
        raise ValueError(
            "boundary_condition must be 'dirichlet' or 'neumann'."
        )

    reference = stiffness_matrix(mesh)
    for left in cut_edges:
        if not 0 <= left < mesh.num_sites:
            raise ValueError("Every cut edge index must label a lattice edge.")
        right = (left + 1) % mesh.num_sites
        coefficient = 1.0 / mesh.edge_lengths[left]
        edge_matrix = coefficient * np.array([[1.0, -1.0], [-1.0, 1.0]])
        indices = np.ix_([left, right], [left, right])
        reference[indices] -= edge_matrix
        if boundary_condition == "dirichlet":
            reference[left, left] += coefficient
            reference[right, right] += coefficient

    interaction = stiffness_matrix(mesh) - reference
    return reference, interaction


def symmetric_inverse_square_root(matrix: Array) -> Array:
    eigenvalues, eigenvectors = np.linalg.eigh(matrix)
    if np.min(eigenvalues) <= 0.0:
        raise ValueError("The mass matrix must be positive definite.")
    return (eigenvectors * eigenvalues ** (-0.5)) @ eigenvectors.T


@dataclass(frozen=True)
class NormalModes:
    frequencies: Array
    canonical_modes: Array
    nodal_modes: Array
    mass_matrix: Array
    stiffness_matrix: Array


def diagonalize(
    mesh: PeriodicMesh,
    mass: float,
    mass_scheme: str = "lumped",
) -> NormalModes:
    if mass <= 0.0:
        raise ValueError("This benchmark assumes a strictly positive mass.")
    if mass_scheme == "lumped":
        mass_matrix = lumped_mass_matrix(mesh)
    elif mass_scheme == "consistent":
        mass_matrix = consistent_mass_matrix(mesh)
    else:
        raise ValueError("mass_scheme must be 'lumped' or 'consistent'.")

    stiffness = stiffness_matrix(mesh)
    inverse_square_root = symmetric_inverse_square_root(mass_matrix)
    canonical_matrix = inverse_square_root @ (
        stiffness + mass**2 * mass_matrix
    ) @ inverse_square_root
    squared_frequencies, canonical_modes = np.linalg.eigh(canonical_matrix)
    if np.min(squared_frequencies) <= 0.0:
        raise AssertionError("The massive lattice Hamiltonian is not positive.")

    return NormalModes(
        frequencies=np.sqrt(squared_frequencies),
        canonical_modes=canonical_modes,
        nodal_modes=inverse_square_root @ canonical_modes,
        mass_matrix=mass_matrix,
        stiffness_matrix=stiffness,
    )


def continuum_frequencies(length: float, mass: float, count: int) -> Array:
    mode_numbers = np.empty(count, dtype=int)
    mode_numbers[0] = 0
    for index in range(1, count):
        level = (index + 1) // 2
        mode_numbers[index] = level if index % 2 else -level
    return np.sqrt(mass**2 + (2.0 * np.pi * mode_numbers / length) ** 2)


def integrate_interval(
    function: TestFunction,
    left: float,
    right: float,
    order: int = 16,
) -> float:
    abscissae, weights = np.polynomial.legendre.leggauss(order)
    midpoint = 0.5 * (left + right)
    half_width = 0.5 * (right - left)
    values = np.asarray(function(midpoint + half_width * abscissae), dtype=float)
    return float(half_width * np.dot(weights, values))


def dual_cell_averages(mesh: PeriodicMesh, function: TestFunction) -> Array:
    integrals = np.array(
        [
            integrate_interval(function, left, right)
            for left, right in mesh.dual_cell_bounds
        ]
    )
    return integrals / mesh.dual_widths


def continuum_inner_product(
    mesh: PeriodicMesh,
    left_function: TestFunction,
    right_function: TestFunction,
) -> float:
    return sum(
        integrate_interval(
            lambda x: left_function(x) * right_function(x),
            left,
            right,
        )
        for left, right in mesh.dual_cell_bounds
    )


def lumped_smeared_commutator(
    mesh: PeriodicMesh,
    left_function: TestFunction,
    right_function: TestFunction,
) -> float:
    left_averages = dual_cell_averages(mesh, left_function)
    right_averages = dual_cell_averages(mesh, right_function)
    return float(
        np.dot(mesh.dual_widths * left_averages, right_averages)
    )


def finite_element_load_vector(
    mesh: PeriodicMesh,
    function: TestFunction,
    order: int = 16,
) -> Array:
    load = np.zeros(mesh.num_sites, dtype=float)
    abscissae, weights = np.polynomial.legendre.leggauss(order)

    for left_index, edge_length in enumerate(mesh.edge_lengths):
        right_index = (left_index + 1) % mesh.num_sites
        edge_start = mesh.nodes[left_index]
        parameter = 0.5 * (abscissae + 1.0)
        positions = edge_start + edge_length * parameter
        values = np.asarray(function(positions), dtype=float)
        common_factor = 0.5 * edge_length * weights * values
        load[left_index] += float(np.dot(common_factor, 1.0 - parameter))
        load[right_index] += float(np.dot(common_factor, parameter))
    return load


def consistent_smeared_commutator(
    mesh: PeriodicMesh,
    left_function: TestFunction,
    right_function: TestFunction,
) -> float:
    mass_matrix = consistent_mass_matrix(mesh)
    left_load = finite_element_load_vector(mesh, left_function)
    right_load = finite_element_load_vector(mesh, right_function)
    return float(left_load @ np.linalg.solve(mass_matrix, right_load))


def maximum_spectral_error(
    mesh: PeriodicMesh,
    mass: float,
    mode_count: int,
    mass_scheme: str,
) -> float:
    numerical = diagonalize(mesh, mass, mass_scheme).frequencies[:mode_count]
    continuum = continuum_frequencies(mesh.length, mass, mode_count)
    return float(np.max(np.abs(numerical - continuum)))


def convergence_rows(
    length: float,
    mass: float,
    density_ratio: int,
    dense_fraction: float,
    base_sparse_sites: tuple[int, ...],
    mode_count: int,
) -> list[tuple[int, float, float, float, float, float]]:
    two_pi_over_length = 2.0 * np.pi / length

    def left_test(x: Array) -> Array:
        return (
            0.2
            + np.sin(two_pi_over_length * x)
            + 0.35 * np.cos(3.0 * two_pi_over_length * x)
        )

    def right_test(x: Array) -> Array:
        return (
            -0.1
            + 0.4 * np.sin(two_pi_over_length * x)
            + np.cos(2.0 * two_pi_over_length * x)
        )

    rows = []
    for sparse_sites in base_sparse_sites:
        mesh = two_density_mesh(
            length=length,
            dense_sites=density_ratio * sparse_sites,
            sparse_sites=sparse_sites,
            dense_fraction=dense_fraction,
        )
        continuum_commutator = continuum_inner_product(
            mesh, left_test, right_test
        )
        lumped_error = abs(
            lumped_smeared_commutator(mesh, left_test, right_test)
            - continuum_commutator
        )
        consistent_error = abs(
            consistent_smeared_commutator(mesh, left_test, right_test)
            - continuum_commutator
        )
        rows.append(
            (
                mesh.num_sites,
                float(np.max(mesh.edge_lengths)),
                lumped_error,
                consistent_error,
                maximum_spectral_error(mesh, mass, mode_count, "lumped"),
                maximum_spectral_error(
                    mesh, mass, mode_count, "consistent"
                ),
            )
        )
    return rows


def run_checks() -> None:
    length = 2.0 * np.pi
    mass = 0.7
    mesh = two_density_mesh(length, dense_sites=48, sparse_sites=16)
    stiffness = stiffness_matrix(mesh)
    lumped_mass = lumped_mass_matrix(mesh)
    consistent_mass = consistent_mass_matrix(mesh)

    assert np.allclose(stiffness, stiffness.T, atol=1.0e-13)
    assert np.allclose(stiffness @ np.ones(mesh.num_sites), 0.0, atol=1.0e-12)
    assert np.allclose(
        consistent_mass @ np.ones(mesh.num_sites),
        mesh.dual_widths,
        atol=1.0e-13,
    )
    assert np.isclose(np.sum(mesh.dual_widths), length, atol=1.0e-13)

    cut_edges = (47, mesh.num_sites - 1)
    for boundary_condition in ("dirichlet", "neumann"):
        reference, interaction = split_reference_stiffness(
            mesh, cut_edges, boundary_condition
        )
        assert np.allclose(reference + interaction, stiffness, atol=1.0e-13)
        assert np.allclose(reference, reference.T, atol=1.0e-13)
        if boundary_condition == "dirichlet":
            assert np.min(np.linalg.eigvalsh(reference)) > 0.0
        else:
            reference_eigenvalues = np.linalg.eigvalsh(reference)
            assert np.count_nonzero(abs(reference_eigenvalues) < 1.0e-12) == 2

    for scheme in ("lumped", "consistent"):
        modes = diagonalize(mesh, mass, scheme)
        identity = np.eye(mesh.num_sites)
        squared_frequencies = modes.frequencies**2
        assert np.allclose(
            modes.nodal_modes.T @ modes.mass_matrix @ modes.nodal_modes,
            identity,
            atol=2.0e-11,
        )
        assert np.allclose(
            modes.nodal_modes.T
            @ (modes.stiffness_matrix + mass**2 * modes.mass_matrix)
            @ modes.nodal_modes,
            np.diag(squared_frequencies),
            atol=2.0e-10,
        )
        assert abs(modes.frequencies[0] - mass) < 2.0e-12

    uniform = uniform_mesh(length, num_sites=17)
    spacing = length / uniform.num_sites
    angles = 2.0 * np.pi * np.arange(uniform.num_sites) / uniform.num_sites
    expected_lumped = np.sort(
        np.sqrt(mass**2 + 4.0 * np.sin(0.5 * angles) ** 2 / spacing**2)
    )
    expected_consistent = np.sort(
        np.sqrt(
            mass**2
            + 12.0
            * np.sin(0.5 * angles) ** 2
            / (spacing**2 * (2.0 + np.cos(angles)))
        )
    )
    assert np.allclose(
        diagonalize(uniform, mass, "lumped").frequencies,
        expected_lumped,
        atol=2.0e-12,
    )
    assert np.allclose(
        diagonalize(uniform, mass, "consistent").frequencies,
        expected_consistent,
        atol=2.0e-12,
    )

    rows = convergence_rows(
        length=length,
        mass=mass,
        density_ratio=3,
        dense_fraction=0.5,
        base_sparse_sites=(4, 8, 16, 32),
        mode_count=7,
    )
    first = rows[0]
    last = rows[-1]
    assert last[2] < first[2] / 20.0
    assert last[3] < first[3] / 100.0
    assert last[4] < first[4] / 20.0
    assert last[5] < first[5] / 20.0


def format_spectrum_table(
    mesh: PeriodicMesh,
    mass: float,
    mode_count: int,
) -> str:
    continuum = continuum_frequencies(mesh.length, mass, mode_count)
    lumped = diagonalize(mesh, mass, "lumped").frequencies[:mode_count]
    consistent = diagonalize(mesh, mass, "consistent").frequencies[:mode_count]
    lines = [
        "index    continuum       lumped    consistent",
        "-----  -----------  -----------  ------------",
    ]
    for index, values in enumerate(zip(continuum, lumped, consistent)):
        lines.append(
            f"{index:5d}  {values[0]:11.8f}  {values[1]:11.8f}  {values[2]:12.8f}"
        )
    return "\n".join(lines)


def format_convergence_table(
    rows: list[tuple[int, float, float, float, float, float]],
) -> str:
    lines = [
        "    N       h_max    CCR lumped  CCR consistent   spec lumped  spec consistent",
        "-----  ----------  ------------  --------------  ------------  ---------------",
    ]
    for row in rows:
        lines.append(
            f"{row[0]:5d}  {row[1]:10.3e}  {row[2]:12.3e}  {row[3]:14.3e}"
            f"  {row[4]:12.3e}  {row[5]:15.3e}"
        )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(
        description=(
            "Diagonalize a massive scalar on a nonuniform periodic spatial mesh "
            "and test its smeared canonical commutator."
        )
    )
    parser.add_argument("--length", type=float, default=2.0 * np.pi)
    parser.add_argument("--mass", type=float, default=0.7)
    parser.add_argument("--dense-sites", type=int, default=48)
    parser.add_argument("--sparse-sites", type=int, default=16)
    parser.add_argument("--dense-fraction", type=float, default=0.5)
    parser.add_argument("--modes", type=int, default=9)
    parser.add_argument(
        "--convergence-sizes",
        default="4,8,16,32",
        help="Comma-separated sparse-region site counts.",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="Run exact finite-dimensional regression checks before the demo.",
    )
    args = parser.parse_args()

    if args.mass <= 0.0:
        parser.error("--mass must be positive")
    if args.modes < 1:
        parser.error("--modes must be positive")

    if args.check:
        run_checks()
        print("All finite-dimensional checks passed.\n")

    mesh = two_density_mesh(
        length=args.length,
        dense_sites=args.dense_sites,
        sparse_sites=args.sparse_sites,
        dense_fraction=args.dense_fraction,
    )
    print(
        f"two-density mesh: N={mesh.num_sites}, L={mesh.length:.8g}, "
        f"h_max/h_min={mesh.mesh_ratio:.8g}"
    )
    print(format_spectrum_table(mesh, args.mass, min(args.modes, mesh.num_sites)))

    density_ratio = int(round(args.dense_sites / args.sparse_sites))
    if density_ratio < 1 or density_ratio * args.sparse_sites != args.dense_sites:
        parser.error(
            "The convergence demo requires dense-sites/sparse-sites to be a "
            "positive integer."
        )
    convergence_sizes = tuple(
        int(value.strip())
        for value in args.convergence_sizes.split(",")
        if value.strip()
    )
    if not convergence_sizes or min(convergence_sizes) < 2:
        parser.error("All --convergence-sizes entries must be at least two.")

    rows = convergence_rows(
        length=args.length,
        mass=args.mass,
        density_ratio=density_ratio,
        dense_fraction=args.dense_fraction,
        base_sparse_sites=convergence_sizes,
        mode_count=min(args.modes, 7),
    )
    print("\nfixed-density-ratio convergence:")
    print(format_convergence_table(rows))


if __name__ == "__main__":
    main()
