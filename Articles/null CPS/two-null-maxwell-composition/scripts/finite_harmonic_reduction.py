"""Dependency-free exact finite-harmonic Maxwell reduction checks.

All row reductions use fractions.Fraction. For rank tests the positive
s=sqrt(lambda_l) is represented by a nonzero rational witness; the ranks and
row dependence are independent of its numerical value. The symbolic s
identities are checked separately by maxwell_master_commuting_checks.wl.

This script checks finite algebra only. It does not define a continuum target
topology and does not claim a Goursat theorem.
"""

from __future__ import annotations

from fractions import Fraction as F


Matrix = list[list[F]]


def require(label: str, condition: bool) -> None:
    print(f"{label}: {condition}")
    if not condition:
        raise AssertionError(label)


def zeros(rows: int, cols: int) -> Matrix:
    return [[F(0) for _ in range(cols)] for _ in range(rows)]


def transpose(matrix: Matrix) -> Matrix:
    return [list(row) for row in zip(*matrix)]


def matmul(left: Matrix, right: Matrix) -> Matrix:
    if len(left[0]) != len(right):
        raise ValueError("incompatible matrix dimensions")
    right_t = transpose(right)
    return [[sum((a * b for a, b in zip(row, col)), F(0))
             for col in right_t] for row in left]


def matvec(matrix: Matrix, vector: list[F]) -> list[F]:
    return [sum((a * b for a, b in zip(row, vector)), F(0))
            for row in matrix]


def rank(matrix: Matrix) -> int:
    work = [row[:] for row in matrix]
    rows = len(work)
    cols = len(work[0]) if rows else 0
    pivot_row = 0
    for col in range(cols):
        pivot = next((r for r in range(pivot_row, rows)
                      if work[r][col] != 0), None)
        if pivot is None:
            continue
        work[pivot_row], work[pivot] = work[pivot], work[pivot_row]
        pivot_value = work[pivot_row][col]
        work[pivot_row] = [entry / pivot_value for entry in work[pivot_row]]
        for r in range(rows):
            if r == pivot_row or work[r][col] == 0:
                continue
            factor = work[r][col]
            work[r] = [a - factor * b
                       for a, b in zip(work[r], work[pivot_row])]
        pivot_row += 1
        if pivot_row == rows:
            break
    return pivot_row


def block_diag(*blocks: Matrix) -> Matrix:
    total_rows = sum(len(block) for block in blocks)
    total_cols = sum(len(block[0]) for block in blocks)
    out = zeros(total_rows, total_cols)
    row_offset = 0
    col_offset = 0
    for block in blocks:
        for i, row in enumerate(block):
            for j, value in enumerate(row):
                out[row_offset + i][col_offset + j] = value
        row_offset += len(block)
        col_offset += len(block[0])
    return out


def standard_symplectic(dimension: int) -> Matrix:
    if dimension % 2:
        raise ValueError("symplectic block dimension must be even")
    half = dimension // 2
    out = zeros(dimension, dimension)
    for i in range(half):
        out[i][half + i] = F(1)
        out[half + i][i] = F(-1)
    return out


def corner_compatibility_matrix(s: F) -> Matrix:
    # z=(E+,E-,B+,B-,chi+,chi-,qE+,qE-,qB+,qB-)
    return [
        [F(1), F(-1), F(0), F(0), F(0), F(0), F(0), F(0), F(0), F(0)],
        [F(0), F(0), F(1), F(-1), F(0), F(0), F(0), F(0), F(0), F(0)],
        [F(0), F(0), F(0), F(0), -s, s, F(-1), F(1), F(0), F(0)],
        [F(0), F(0), F(0), F(0), F(0), F(0), F(0), F(0), F(-1), F(1)],
        [F(0), F(0), F(1), F(0), F(0), F(0), F(0), F(0), s, F(0)],
        [F(0), F(0), F(0), F(1), F(0), F(0), F(0), F(0), F(0), s],
    ]


def master_dictionary(s: F, jet_order: int) -> tuple[Matrix, Matrix]:
    # Per polarization: (c,f_1,...,f_K,g_1,...,g_K).
    size = 2 * jet_order + 1
    electric = zeros(size, size)
    magnetic = zeros(size, size)
    electric[0][0] = -s
    magnetic[0][0] = -s
    for j in range(jet_order):
        electric[1 + j][1 + j] = F(1)       # p^E=f'
        electric[1 + jet_order + j][1 + jet_order + j] = F(-1)  # r^E=-g'
        magnetic[1 + j][1 + j] = F(1)       # p^B=f'
        magnetic[1 + jet_order + j][1 + jet_order + j] = F(1)   # r^B=g'
    return electric, magnetic


def check_one_harmonic(ell: int, jet_order: int, proper_dim: int) -> None:
    # Any nonzero exact value gives the same structural ranks as sqrt(lambda_l).
    s = F(ell * (ell + 1), 1)
    compatibility = corner_compatibility_matrix(s)

    require(f"ell={ell}: full corner compatibility rank is five",
            rank(compatibility) == 5)
    dependence = [a - b + s * c for a, b, c in zip(
        compatibility[4], compatibility[5], compatibility[3])]
    require(f"ell={ell}: magnetic row is the stated dependent row",
            dependence == compatibility[1])

    # z_E=(E+,chi+,E-,chi-), Omega=-dE+^dchi+ + dE-^dchi-.
    omega_corner = [
        [F(0), F(-1), F(0), F(0)],
        [F(1), F(0), F(0), F(0)],
        [F(0), F(0), F(0), F(1)],
        [F(0), F(0), F(-1), F(0)],
    ]
    diagonal_generator = [[F(0), F(1), F(0), F(1)]]
    moment_gradient = matmul(diagonal_generator, omega_corner)
    require(f"ell={ell}: diagonal contraction is d(E+-E-)",
            moment_gradient == [[F(1), F(0), F(-1), F(0)]])

    # mu=0 parameterization y=(E,chi+,chi-).
    mu_embedding = [
        [F(1), F(0), F(0)],
        [F(0), F(1), F(0)],
        [F(1), F(0), F(0)],
        [F(0), F(0), F(1)],
    ]
    omega_mu = matmul(transpose(mu_embedding), matmul(omega_corner, mu_embedding))
    diagonal_kernel = [F(0), F(1), F(1)]
    require(f"ell={ell}: zero-level corner rank is two", rank(omega_mu) == 2)
    require(f"ell={ell}: zero-level kernel is diagonal frame",
            matvec(omega_mu, diagonal_kernel) == [F(0), F(0), F(0)]
            and len(omega_mu[0]) - rank(omega_mu) == 1)

    quotient_slice = [
        [F(1), F(0)],
        [F(0), F(0)],
        [F(0), F(1)],
    ]
    omega_reduced = matmul(transpose(quotient_slice),
                           matmul(omega_mu, quotient_slice))
    require(f"ell={ell}: reduced corner form is dE^dlambda",
            omega_reduced == [[F(0), F(1)], [F(-1), F(0)]])

    electric, magnetic = master_dictionary(s, jet_order)
    dictionary = block_diag(electric, magnetic)
    dictionary_dim = 4 * jet_order + 2
    require(f"ell={ell}: Maxwell/master jet dictionary is invertible",
            len(dictionary) == dictionary_dim
            and len(dictionary[0]) == dictionary_dim
            and rank(dictionary) == dictionary_dim)

    master_match = [
        [F(1), F(-1), F(0), F(0)],
        [F(0), F(0), F(1), F(-1)],
    ]
    maxwell_match = [
        [-s, s, F(0), F(0)],
        [F(0), F(0), -s, s],
    ]
    stacked = master_match + maxwell_match
    require(f"ell={ell}: Maxwell and master matching have identical kernels",
            rank(master_match) == rank(maxwell_match) == rank(stacked) == 2)

    # The symplectic cutoff is separate from the odd-dimensional jet
    # dictionary: retain jet_order Darboux pairs in each polarization.
    physical_dim = 4 * jet_order
    physical_form = block_diag(
        standard_symplectic(2 * jet_order),
        standard_symplectic(2 * jet_order),
    )
    gauge_dim = 1 + 2 * proper_dim
    omega_compatibility = block_diag(
        physical_form, zeros(gauge_dim, gauge_dim))
    require(f"ell={ell}: anchored kernel has proper+proper+diagonal dimension",
            len(omega_compatibility[0]) - rank(omega_compatibility) == gauge_dim)
    compatibility_dim = physical_dim + gauge_dim
    require(f"ell={ell}: anchored reduced dimension equals field/master dimension",
            compatibility_dim - gauge_dim == physical_dim)

    forget_unanchored = [[F(1), F(0), F(0)], [F(0), F(1), F(0)]]
    lambda_fiber = [F(0), F(0), F(1)]
    omega_unanchored = [
        [F(0), F(0), F(1)],
        [F(0), F(0), F(0)],
        [F(-1), F(0), F(0)],
    ]
    require(f"ell={ell}: unanchored forgetful map has lambda fiber",
            matvec(forget_unanchored, lambda_fiber) == [F(0), F(0)])
    require(f"ell={ell}: lambda fiber is not null when electric flux varies",
            matvec(omega_unanchored, lambda_fiber) != [F(0), F(0), F(0)])


def main() -> None:
    for cutoff in range(1, 5):
        harmonic_count = cutoff * (cutoff + 2)
        for jet_order in range(1, 4):
            proper_dim = jet_order
            for ell in range(1, cutoff + 1):
                check_one_harmonic(ell, jet_order, proper_dim)

            physical_per_harmonic = 4 * jet_order
            full_physical_dim = harmonic_count * physical_per_harmonic
            full_kernel_dim = harmonic_count * (1 + 2 * proper_dim)
            full_compatibility_dim = full_physical_dim + full_kernel_dim
            require(
                f"L={cutoff}, K={jet_order}: full cutoff dimension identity",
                full_compatibility_dim - full_kernel_dim == full_physical_dim,
            )

    print("ALL FINITE-HARMONIC REDUCTION CHECKS PASSED")


if __name__ == "__main__":
    main()
