#!/usr/bin/env python3
"""Finite witnesses for the compact Yang--Mills 1+1 sewing note.

The script uses deterministic random SU(2) matrices and finite representation
spaces.  It checks matrix identities and finite Peter--Weyl/projector data; it
does not replace the analytic symplectic-reduction or Haar-isometry proofs in
``../Yang-Mills 1+1.md``.
"""

from __future__ import annotations

import itertools
import math
import sys

import numpy as np


TOL = 2.0e-11
SEED = 20260830
PAULI = (
    np.array([[0, 1], [1, 0]], dtype=complex),
    np.array([[0, -1j], [1j, 0]], dtype=complex),
    np.array([[1, 0], [0, -1]], dtype=complex),
)
ANTI_HERMITIAN_BASIS = tuple(-0.5j * sigma for sigma in PAULI)


def random_su2(rng: np.random.Generator) -> np.ndarray:
    q = rng.normal(size=4)
    q /= np.linalg.norm(q)
    a, b, c, d = q
    return np.array(
        [[a + 1j * b, c + 1j * d], [-c + 1j * d, a - 1j * b]],
        dtype=complex,
    )


def random_algebra(rng: np.random.Generator) -> np.ndarray:
    coeffs = rng.normal(size=3)
    return sum(c * t for c, t in zip(coeffs, ANTI_HERMITIAN_BASIS))


def inv(g: np.ndarray) -> np.ndarray:
    return g.conj().T


def ad(g: np.ndarray, x: np.ndarray) -> np.ndarray:
    return g @ x @ inv(g)


def pairing(x: np.ndarray, y: np.ndarray) -> float:
    """Positive invariant pairing with <-i sigma_a/2,-i sigma_b/2>=delta_ab."""
    return float(np.real(-2.0 * np.trace(x @ y)))


def matrix_residual(x: np.ndarray, y: np.ndarray) -> float:
    return float(np.linalg.norm(x - y, ord="fro"))


def su2_spin_matrices(highest_weight: int) -> tuple[np.ndarray, ...]:
    j = highest_weight / 2.0
    d = highest_weight + 1
    m_values = np.arange(-j, j + 1.0, 1.0)
    raising = np.zeros((d, d), dtype=complex)
    for column, m in enumerate(m_values[:-1]):
        raising[column + 1, column] = math.sqrt((j - m) * (j + m + 1.0))
    lowering = raising.conj().T
    jx = 0.5 * (raising + lowering)
    jy = (raising - lowering) / (2.0j)
    jz = np.diag(m_values)
    return jx, jy, jz


def singlet_multiplicity(highest_weight_1: int, highest_weight_2: int) -> int:
    """A1 tensor rule: n tensor m contains |n-m|,|n-m|+2,...,n+m."""
    weights = range(
        abs(highest_weight_1 - highest_weight_2),
        highest_weight_1 + highest_weight_2 + 1,
        2,
    )
    return int(0 in weights)


def pair_projector(dims: tuple[int, ...], axis_a: int, axis_b: int) -> np.ndarray:
    """Project a V tensor V* pair onto normalized vec(identity)."""
    if dims[axis_a] != dims[axis_b]:
        raise ValueError("paired representation dimensions must agree")
    d = dims[axis_a]
    omega = np.eye(d, dtype=complex) / math.sqrt(d)
    size = math.prod(dims)
    projector = np.zeros((size, size), dtype=complex)
    other_axes = [axis for axis in range(len(dims)) if axis not in (axis_a, axis_b)]
    basis = [np.unravel_index(index, dims) for index in range(size)]
    for input_index, input_tuple in enumerate(basis):
        input_amplitude = np.conjugate(omega[input_tuple[axis_a], input_tuple[axis_b]])
        if input_amplitude == 0:
            continue
        for output_index, output_tuple in enumerate(basis):
            if any(output_tuple[a] != input_tuple[a] for a in other_axes):
                continue
            projector[output_index, input_index] = (
                omega[output_tuple[axis_a], output_tuple[axis_b]]
                * input_amplitude
            )
    return projector


def run_checks() -> dict[str, float]:
    rng = np.random.default_rng(SEED)
    residuals: dict[str, float] = {}

    # Transition-function covariance.
    vh_errors = []
    for _ in range(32):
        u1, u2, h, k1, k2 = (random_su2(rng) for _ in range(5))
        vh = inv(u2) @ inv(h) @ u1
        u1p = inv(k1) @ u1
        u2p = inv(k2) @ u2
        hp = inv(k1) @ h @ k2
        vh_errors.append(matrix_residual(inv(u2p) @ inv(hp) @ u1p, vh))
    residuals["transition_Vh_covariance"] = max(vh_errors)

    # Two-cell moment map, one-form, and Hamiltonian normalization.
    two_cell_errors = []
    hamiltonian_errors = []
    for _ in range(32):
        u1, u2 = random_su2(rng), random_su2(rng)
        j1 = random_algebra(rng)
        v = inv(u2) @ u1
        j2 = -ad(v, j1)
        mu1, mu2 = -ad(u1, j1), -ad(u2, j2)
        xi1, xi2 = random_algebra(rng), random_algebra(rng)
        xi_v = xi1 - ad(inv(v), xi2)
        theta_product = pairing(j1, xi1) + pairing(j2, xi2)
        theta_connected = pairing(j1, xi_v)
        two_cell_errors.extend(
            [np.linalg.norm(mu1 + mu2), abs(theta_product - theta_connected)]
        )

        g2, length = 1.7, 0.9
        norm_j = pairing(j1, j1)
        regional_sum = 0.5 * g2 * length * (
            pairing(j1, j1) + pairing(j2, j2)
        )
        reduced = g2 * length * norm_j
        direct_uncut = 0.5 * g2 * (2.0 * length) * norm_j
        hamiltonian_errors.extend(
            [abs(regional_sum - reduced), abs(reduced - direct_uncut)]
        )
    residuals["two_cell_moment_map_and_one_form"] = max(two_cell_errors)
    residuals["connected_hamiltonian_factor_two"] = max(hamiltonian_errors)

    # Fundamental Peter--Weyl witness for prescribed-history covariance.
    # On the basis f_m(U)=D(U)_{mn}, T(k) and mu(alpha) are k^T and i alpha^T.
    covariance_errors = []
    for _ in range(32):
        k = random_su2(rng)
        alpha = random_algebra(rng)
        xi = random_algebra(rng)  # xi=k^{-1} dot k
        t_matrix = k.T
        dot_t_matrix = (k @ xi).T
        mu_alpha = 1j * alpha.T
        alpha_transformed = ad(inv(k), alpha) + xi
        lhs = 1j * alpha_transformed.T
        rhs = (
            t_matrix @ mu_alpha @ np.linalg.inv(t_matrix)
            + 1j * dot_t_matrix @ np.linalg.inv(t_matrix)
        )
        covariance_errors.append(matrix_residual(lhs, rhs))
    residuals["quantum_boundary_history_covariance"] = max(covariance_errors)

    # SU(2) finite Peter--Weyl and Casimir witnesses through n=8.
    singlet_errors = []
    casimir_errors = []
    for n, m in itertools.product(range(9), repeat=2):
        expected = int(n == m)
        singlet_errors.append(abs(singlet_multiplicity(n, m) - expected))
    for n in range(9):
        j = n / 2.0
        generators = su2_spin_matrices(n)
        casimir = sum(generator @ generator for generator in generators)
        casimir_errors.append(
            matrix_residual(casimir, j * (j + 1.0) * np.eye(n + 1))
        )
    residuals["su2_singlet_multiplicity_n_le_8"] = float(max(singlet_errors))
    residuals["su2_casimir_j_j_plus_one_n_le_8"] = max(casimir_errors)

    # Three-cell moment maps, canonical one-form, and parenthesization.
    three_cell_errors = []
    for _ in range(32):
        w1, w2, w3 = (random_su2(rng) for _ in range(3))
        j1 = random_algebra(rng)
        j2 = ad(w1, j1)
        j3 = ad(w2, j2)
        mu1 = j2 - ad(w1, j1)
        mu2 = j3 - ad(w2, j2)
        xi1, xi2, xi3 = (random_algebra(rng) for _ in range(3))
        w21 = w2 @ w1
        xi_connected = (
            xi1 + ad(inv(w1), xi2) + ad(inv(w21), xi3)
        )
        theta_product = (
            pairing(j1, xi1) + pairing(j2, xi2) + pairing(j3, xi3)
        )
        theta_connected = pairing(j1, xi_connected)
        one_parenthesization = (w3 @ w2) @ w1
        other_parenthesization = w3 @ (w2 @ w1)

        k1, k2 = random_su2(rng), random_su2(rng)
        w1p = inv(k1) @ w1
        w2p = inv(k2) @ w2 @ k1
        w3p = w3 @ k2
        j1p = j1
        j2p = ad(inv(k1), j2)
        j3p = ad(inv(k2), j3)
        three_cell_errors.extend(
            [
                np.linalg.norm(mu1),
                np.linalg.norm(mu2),
                abs(theta_product - theta_connected),
                matrix_residual(one_parenthesization, other_parenthesization),
                matrix_residual(w3p @ w2p @ w1p, w3 @ w2 @ w1),
                np.linalg.norm(j2p - ad(w1p, j1p)),
                np.linalg.norm(j3p - ad(w2p, j2p)),
            ]
        )
    residuals["three_cell_cotangent_reduction"] = max(three_cell_errors)

    # A finite representation-space witness for normalized Haar projectors.
    d = 2
    omega = np.eye(d, dtype=complex).reshape(d * d) / math.sqrt(d)
    local_projector = np.outer(omega, omega.conj())
    k = random_su2(rng)
    local_action = np.kron(k, k.conj())
    dims = (d, d, d, d, d, d)
    p1 = pair_projector(dims, 0, 3)
    p2 = pair_projector(dims, 2, 5)
    projector_errors = [
        np.linalg.norm(local_action @ omega - omega),
        np.linalg.norm(local_projector @ local_projector - local_projector),
        np.linalg.norm(local_projector - local_projector.conj().T),
        abs(np.trace(local_projector).real - 1.0),
        np.linalg.norm(p1 @ p1 - p1),
        np.linalg.norm(p2 @ p2 - p2),
        np.linalg.norm(p1 @ p2 - p2 @ p1),
    ]
    residuals["three_cell_finite_Haar_projector_witness"] = max(projector_errors)

    return residuals


def main() -> int:
    residuals = run_checks()
    failed = False
    print(f"seed={SEED} numpy={np.__version__} tolerance={TOL:.1e}")
    for label, residual in residuals.items():
        passed = residual <= TOL
        failed |= not passed
        print(f"{'PASS' if passed else 'FAIL'} {label}: residual={residual:.3e}")
    if failed:
        return 1
    print(f"PASS all {len(residuals)} Yang--Mills 1+1 finite checks")
    return 0


if __name__ == "__main__":
    sys.exit(main())
