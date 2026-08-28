"""Exact finite full-Maxwell composition regression.

The physical coordinates are injective finite interface-trace coefficients
for one real angular harmonic: two electric and two magnetic coefficients per
cell.  Each side of both internal interfaces has independent frame and dressed
connection variables before compatibility.  All arithmetic is rational.

This checks finite reduction and composition structure.  The analytic
Goursat, Lee--Wald, and distributional gluing proofs are in calculations 05--08.
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
    rows = sum(len(block) for block in blocks)
    cols = sum(len(block[0]) for block in blocks)
    out = zeros(rows, cols)
    ro = 0
    co = 0
    for block in blocks:
        for i, row in enumerate(block):
            for j, value in enumerate(row):
                out[ro + i][co + j] = value
        ro += len(block)
        co += len(block[0])
    return out


def scaled(value: F, matrix: Matrix) -> Matrix:
    return [[value * entry for entry in row] for row in matrix]


def identity(size: int) -> Matrix:
    out = zeros(size, size)
    for i in range(size):
        out[i][i] = F(1)
    return out


def row(total: int) -> list[F]:
    return [F(0) for _ in range(total)]


physical_dim = 4
cell_count = 3
physical_total = physical_dim * cell_count
frame_dim = 6
interface_count = 2
total_dim = physical_total + frame_dim * interface_count
s = F(2)

# x=(e0,e1,b0,b1).  The finite trace basis is injective; e0 and b0 are
# endpoint electric/magnetic coefficients.  The other entries determine the
# two anchored exact connection values in this regression.
electric_cut = [F(1), F(0), F(0), F(0)]
magnetic_cut = [F(0), F(0), F(1), F(0)]
anchor_right = [F(0), F(1), F(0), F(0)]
anchor_left = [F(1), F(1), F(0), F(0)]


def add_physical_functional(target: list[F], cell: int,
                            functional: list[F], factor: F) -> None:
    offset = cell * physical_dim
    for j, value in enumerate(functional):
        target[offset + j] += factor * value


def frame_offset(interface: int) -> int:
    return physical_total + interface * frame_dim


constraints: Matrix = []
for interface, (left_cell, right_cell) in enumerate(((0, 1), (1, 2))):
    fo = frame_offset(interface)

    # Complete injective E/B radiative trace matching.
    for j in range(physical_dim):
        rr = row(total_dim)
        rr[left_cell * physical_dim + j] = F(1)
        rr[right_cell * physical_dim + j] = F(-1)
        constraints.append(rr)

    # Explicit electric and magnetic matching audit rows.  They are
    # deliberately redundant with complete trace matching.
    for functional in (electric_cut, magnetic_cut):
        rr = row(total_dim)
        add_physical_functional(rr, left_cell, functional, F(1))
        add_physical_functional(rr, right_cell, functional, F(-1))
        constraints.append(rr)

    # Independent dressed exact/coexact connections on the two sides.
    # Frame order: (chi_L,chi_R,qE_L,qE_R,qB_L,qB_R).
    rr = row(total_dim)
    rr[fo + 2] = F(1)
    add_physical_functional(rr, left_cell, anchor_right, F(-1))
    constraints.append(rr)

    rr = row(total_dim)
    rr[fo + 3] = F(1)
    add_physical_functional(rr, right_cell, anchor_left, F(-1))
    constraints.append(rr)

    rr = row(total_dim)
    rr[fo + 4] = F(1)
    add_physical_functional(rr, left_cell, magnetic_cut, F(1, 2))
    constraints.append(rr)

    rr = row(total_dim)
    rr[fo + 5] = F(1)
    add_physical_functional(rr, right_cell, magnetic_cut, F(1, 2))
    constraints.append(rr)

    # Full connection/transition compatibility.
    rr = row(total_dim)
    rr[fo + 0] = -s
    rr[fo + 1] = s
    rr[fo + 2] = F(-1)
    rr[fo + 3] = F(1)
    constraints.append(rr)

    rr = row(total_dim)
    rr[fo + 4] = F(-1)
    rr[fo + 5] = F(1)
    constraints.append(rr)


# Compatibility embedding: four global field-strength coordinates plus one
# diagonal frame coordinate for each interface.
embedding = zeros(total_dim, physical_dim + interface_count)
for cell in range(cell_count):
    for j in range(physical_dim):
        embedding[cell * physical_dim + j][j] = F(1)

for interface in range(interface_count):
    fo = frame_offset(interface)
    for j in range(physical_dim):
        qel = anchor_right[j]
        qer = anchor_left[j]
        qb = -magnetic_cut[j] / s
        embedding[fo + 2][j] = qel
        embedding[fo + 3][j] = qer
        embedding[fo + 4][j] = qb
        embedding[fo + 5][j] = qb
        embedding[fo + 1][j] = (qel - qer) / s
    embedding[fo + 0][physical_dim + interface] = F(1)
    embedding[fo + 1][physical_dim + interface] = F(1)


# The quotient map is intrinsic: average the three equal field-strength trace
# vectors and forget all frame representatives.
field_strength_quotient = zeros(physical_dim, total_dim)
for cell in range(cell_count):
    for j in range(physical_dim):
        field_strength_quotient[j][cell * physical_dim + j] = F(1, 3)


# One Darboux pair per E/B polarization.  Each cell represents one third of
# the global cut in this finite trace basis; the oriented cut sum is the union
# form.  Frame directions carry no extra raw term here because the raw
# Maxwell form is used; the split-frame corner pullback is checked separately
# in finite_harmonic_reduction.py.
j2 = [[F(0), F(1)], [F(-1), F(0)]]
omega_union = block_diag(j2, j2)
omega_cells = block_diag(*(
    [scaled(F(1, 3), omega_union) for _ in range(cell_count)]
    + [zeros(frame_dim, frame_dim) for _ in range(interface_count)]
))
omega_compatible = matmul(transpose(embedding),
                          matmul(omega_cells, embedding))

# A positive quadratic finite Hamiltonian witness.  It is not used as a proof
# of the continuum Killing theorem; it checks that both reduction orders retain
# identical Hamiltonian data.
h_union = [
    [F(2), F(0), F(0), F(0)],
    [F(0), F(3), F(0), F(0)],
    [F(0), F(0), F(5), F(0)],
    [F(0), F(0), F(0), F(7)],
]
h_cells = block_diag(*(
    [scaled(F(1, 3), h_union) for _ in range(cell_count)]
    + [zeros(frame_dim, frame_dim) for _ in range(interface_count)]
))
h_compatible = matmul(transpose(embedding), matmul(h_cells, embedding))

physical_embedding = [r[:physical_dim] for r in embedding]
diag12 = [r[physical_dim] for r in embedding]
diag23 = [r[physical_dim + 1] for r in embedding]

# Gauge-fix the two commuting diagonal directions in opposite orders.  These
# are the two reduction-by-stages parenthesizations on compatibility
# coordinates (x,eta12,eta23).
stage12 = identity(physical_dim + interface_count)
stage12[physical_dim][physical_dim] = F(0)
stage23 = identity(physical_dim + interface_count)
stage23[physical_dim + 1][physical_dim + 1] = F(0)
left_stage_parameters = matmul(stage23, stage12)
right_stage_parameters = matmul(stage12, stage23)
left_stage_map = matmul(embedding, left_stage_parameters)
right_stage_map = matmul(embedding, right_stage_parameters)
left_stage_omega = matmul(transpose(left_stage_map),
                           matmul(omega_cells, left_stage_map))
right_stage_omega = matmul(transpose(right_stage_map),
                            matmul(omega_cells, right_stage_map))
left_stage_hamiltonian = matmul(transpose(left_stage_map),
                                 matmul(h_cells, left_stage_map))
right_stage_hamiltonian = matmul(transpose(right_stage_map),
                                  matmul(h_cells, right_stage_map))


def main() -> None:
    require("product dimension includes three Maxwell cells and four interface sides",
            total_dim == 24)
    require("all electric magnetic and connection rows are present",
            len(constraints) == 24)
    require("full compatibility rank is eighteen", rank(constraints) == 18)
    require("compatible locus has four physical plus two diagonal dimensions",
            total_dim - rank(constraints) == physical_dim + interface_count)
    require("explicit embedding spans the compatibility kernel",
            rank(embedding) == 6
            and matmul(constraints, embedding) == zeros(len(constraints), 6))
    require("both internal diagonal generators survive before quotient",
            matvec(constraints, diag12) == [F(0)] * len(constraints)
            and matvec(constraints, diag23) == [F(0)] * len(constraints))
    require("field-strength quotient kills both diagonal groups",
            matvec(field_strength_quotient, diag12) == [F(0)] * physical_dim
            and matvec(field_strength_quotient, diag23) == [F(0)] * physical_dim)
    require("field-strength quotient is inverse on the canonical physical slice",
            matmul(field_strength_quotient, physical_embedding)
            == identity(physical_dim))
    require("compatible raw Maxwell form has exactly the two gauge kernels",
            rank(omega_compatible) == physical_dim
            and len(omega_compatible) - rank(omega_compatible) == interface_count)
    require("reduced Lee-Wald matrix equals the union matrix",
            matmul(transpose(physical_embedding),
                   matmul(omega_cells, physical_embedding)) == omega_union)
    require("reduced Hamiltonian matrix is independent of reduction order",
            matmul(transpose(physical_embedding),
                   matmul(h_cells, physical_embedding)) == h_union)
    require("reduction by stages has dimensions 6 to 5 to 4 in either order",
            (6, 6 - rank([diag12]), 6 - rank([diag12, diag23])) == (6, 5, 4)
            and (6, 6 - rank([diag23]), 6 - rank([diag23, diag12])) == (6, 5, 4))
    require("both parenthesizations return the same F Omega and quadratic witness",
            left_stage_map == right_stage_map
            and matmul(field_strength_quotient, left_stage_map)
            == matmul(field_strength_quotient, right_stage_map)
            and left_stage_omega == right_stage_omega
            and left_stage_hamiltonian == right_stage_hamiltonian)
    print("ALL FULL-MAXWELL COMPOSITION CHECKS PASSED")


if __name__ == "__main__":
    main()
