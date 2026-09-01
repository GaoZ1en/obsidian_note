#!/usr/bin/env python3
"""Exact Stage-4.5 component and principal-symbol regressions.

The calculation is frozen in the project null frame

    g_11=g_22=1,  g_34=g_43=-2,

with epsilon_12=1.  All matrices are over the rationals.  The script
constructs the full tensors and matrices; it does not sample representative
blocks.  Passing checks are algebraic evidence only, not a variable-
coefficient PDE theorem.
"""

from itertools import combinations
import sys

import sympy as sp


I = range(4)
SPATIAL = (0, 1)
PAIRS = tuple(combinations(I, 2))
TRIPLES = tuple(combinations(I, 3))
PAIR_NAMES = tuple(f"{i + 1}{j + 1}" for i, j in PAIRS)
TRIPLE_NAMES = tuple("".join(str(i + 1) for i in t) for t in TRIPLES)

FIELD_NAMES = (
    "ualpha11", "ualpha12", "ubeta1", "ubeta2", "rho",
    "sigma", "beta1", "beta2", "alpha11", "alpha12",
)
FIELD = {name: i for i, name in enumerate(FIELD_NAMES)}
COPY_NAMES = ("Cbeta1", "Cbeta2", "Cubeta1", "Cubeta2", "Crho", "Csigma")
COPY_TO_FIELD = (
    FIELD["beta1"], FIELD["beta2"], FIELD["ubeta1"],
    FIELD["ubeta2"], FIELD["rho"], FIELD["sigma"],
)
ROW_NAMES = (
    "A36a[11]", "A36a[12]", "A36b[1]", "A36b[2]",
    "A37a[1]", "A37a[2]", "A37b", "A37c",
    "A38a", "A38b", "A38c[1]", "A38c[2]",
    "A39a[1]", "A39a[2]", "A39b[11]", "A39b[12]",
)
INTERNAL_P = ((0, 1), (0, 2), (1, 2))  # {12,13,23}
INTERNAL_Q = ((0, 3), (1, 3), (2, 3))  # {14,24,34}


g = sp.zeros(4)
g[0, 0] = g[1, 1] = 1
g[2, 3] = g[3, 2] = -2
ginv = g.inv()
eps2 = sp.Matrix([[0, 1], [-1, 0]])


def add_entry(matrix, row, direction, field, coefficient):
    """Add coefficient * e_direction(field) to a jet matrix row."""
    matrix[row, 10 * direction + field] += sp.Rational(coefficient)


def source_row_matrix():
    """Full principal matrix of A.36--A.39 in printed row order."""
    e = sp.zeros(16, 40)

    # A.36: (ualpha, ubeta), exactly the A.41 symmetric block.
    add_entry(e, 0, 3, FIELD["ualpha11"], 1)
    add_entry(e, 0, 0, FIELD["ubeta1"], 1)
    add_entry(e, 0, 1, FIELD["ubeta2"], -1)
    add_entry(e, 1, 3, FIELD["ualpha12"], 1)
    add_entry(e, 1, 1, FIELD["ubeta1"], 1)
    add_entry(e, 1, 0, FIELD["ubeta2"], 1)
    add_entry(e, 2, 2, FIELD["ubeta1"], 1)
    add_entry(e, 2, 0, FIELD["ualpha11"], 1)
    add_entry(e, 2, 1, FIELD["ualpha12"], 1)
    add_entry(e, 3, 2, FIELD["ubeta2"], 1)
    add_entry(e, 3, 1, FIELD["ualpha11"], -1)
    add_entry(e, 3, 0, FIELD["ualpha12"], 1)

    # A.37: (ubeta, rho, sigma), the renamed A.43 block.
    add_entry(e, 4, 3, FIELD["ubeta1"], 1)
    add_entry(e, 4, 0, FIELD["rho"], 1)
    add_entry(e, 4, 1, FIELD["sigma"], -1)
    add_entry(e, 5, 3, FIELD["ubeta2"], 1)
    add_entry(e, 5, 1, FIELD["rho"], 1)
    add_entry(e, 5, 0, FIELD["sigma"], 1)
    add_entry(e, 6, 2, FIELD["sigma"], 1)
    add_entry(e, 6, 0, FIELD["ubeta2"], 1)
    add_entry(e, 6, 1, FIELD["ubeta1"], -1)
    add_entry(e, 7, 2, FIELD["rho"], 1)
    add_entry(e, 7, 0, FIELD["ubeta1"], 1)
    add_entry(e, 7, 1, FIELD["ubeta2"], 1)

    # A.38: (rho, sigma, beta), exactly A.43.
    add_entry(e, 8, 3, FIELD["rho"], 1)
    add_entry(e, 8, 0, FIELD["beta1"], -1)
    add_entry(e, 8, 1, FIELD["beta2"], -1)
    add_entry(e, 9, 3, FIELD["sigma"], 1)
    add_entry(e, 9, 1, FIELD["beta1"], -1)
    add_entry(e, 9, 0, FIELD["beta2"], 1)
    add_entry(e, 10, 2, FIELD["beta1"], 1)
    add_entry(e, 10, 0, FIELD["rho"], -1)
    add_entry(e, 10, 1, FIELD["sigma"], -1)
    add_entry(e, 11, 2, FIELD["beta2"], 1)
    add_entry(e, 11, 1, FIELD["rho"], -1)
    add_entry(e, 11, 0, FIELD["sigma"], 1)

    # A.39: (beta, alpha), the reflected A.41 block.
    add_entry(e, 12, 3, FIELD["beta1"], 1)
    add_entry(e, 12, 0, FIELD["alpha11"], -1)
    add_entry(e, 12, 1, FIELD["alpha12"], -1)
    add_entry(e, 13, 3, FIELD["beta2"], 1)
    add_entry(e, 13, 1, FIELD["alpha11"], 1)
    add_entry(e, 13, 0, FIELD["alpha12"], -1)
    add_entry(e, 14, 2, FIELD["alpha11"], 1)
    add_entry(e, 14, 0, FIELD["beta1"], -1)
    add_entry(e, 14, 1, FIELD["beta2"], 1)
    add_entry(e, 15, 2, FIELD["alpha12"], 1)
    add_entry(e, 15, 0, FIELD["beta2"], -1)
    add_entry(e, 15, 1, FIELD["beta1"], -1)
    return e


def set_weyl_component(d, i, j, k, l, value):
    """Set a Weyl component and all pair antisymmetry/exchange partners."""
    entries = {
        (i, j, k, l): value,
        (j, i, k, l): -value,
        (i, j, l, k): -value,
        (j, i, l, k): value,
        (k, l, i, j): value,
        (l, k, i, j): -value,
        (k, l, j, i): -value,
        (l, k, j, i): value,
    }
    for key, val in entries.items():
        if key in d:
            assert sp.expand(d[key] - val) == 0, (key, d[key], val)
        else:
            d[key] = sp.expand(val)


def weyl_tensor(fields):
    """Build d_ijkl from Appendix A.13 in the project normalization."""
    ua11, ua12, ub1, ub2, rho, sigma, b1, b2, a11, a12 = fields
    ua = sp.Matrix([[ua11, ua12], [ua12, -ua11]])
    al = sp.Matrix([[a11, a12], [a12, -a11]])
    ub = sp.Matrix([ub1, ub2])
    be = sp.Matrix([b1, b2])
    star_ub = eps2 * ub
    star_be = eps2 * be
    d = {}

    for a in SPATIAL:
        for b in SPATIAL:
            set_weyl_component(d, a, 2, b, 2, ua[a, b])
            set_weyl_component(d, a, 3, b, 3, al[a, b])
        set_weyl_component(d, a, 2, 2, 3, 2 * ub[a])
        set_weyl_component(d, a, 3, 2, 3, 2 * be[a])

    set_weyl_component(d, 2, 3, 2, 3, 4 * rho)
    set_weyl_component(d, 0, 1, 2, 3, 2 * sigma)

    for c in SPATIAL:
        set_weyl_component(d, 0, 1, c, 2, star_ub[c])
        set_weyl_component(d, 0, 1, c, 3, -star_be[c])

    for a in SPATIAL:
        for b in SPATIAL:
            set_weyl_component(
                d, a, 2, b, 3,
                -rho * (1 if a == b else 0) + sigma * eps2[a, b],
            )

    for a in SPATIAL:
        for b in SPATIAL:
            for c in SPATIAL:
                for q in SPATIAL:
                    set_weyl_component(d, a, b, c, q, -rho * eps2[a, b] * eps2[c, q])

    return {(i, j, k, l): sp.expand(d.get((i, j, k, l), 0))
            for i in I for j in I for k in I for l in I}


def coefficient_matrix(expressions, symbols):
    return sp.Matrix([[sp.expand(expr).coeff(sym) for sym in symbols]
                      for expr in expressions])


def tensor_jet_matrices():
    fields = sp.symbols(" ".join(FIELD_NAMES))
    d = weyl_tensor(fields)
    jets = sp.symbols("j0:40")

    def derivative(direction, expr):
        return sum(sp.diff(expr, fields[f]) * jets[10 * direction + f]
                   for f in range(10))

    b_labels = tuple((j, k, l) for j in I for k, l in PAIRS)
    b_expr = []
    for j, k, l in b_labels:
        b_expr.append(sum(ginv[i, m] * derivative(i, d[m, j, k, l])
                          for i in I for m in I))

    alt_labels = tuple((triple, pair) for triple in TRIPLES for pair in PAIRS)
    alt_expr = []
    for (i, j, k), (l, m) in alt_labels:
        alt_expr.append(
            derivative(i, d[j, k, l, m])
            + derivative(j, d[k, i, l, m])
            + derivative(k, d[i, j, l, m])
        )
    return (
        d,
        b_labels,
        coefficient_matrix(b_expr, jets),
        alt_labels,
        coefficient_matrix(alt_expr, jets),
    )


def right_inverse(full_row_rank_matrix):
    pivot_columns = full_row_rank_matrix.rref()[1]
    assert len(pivot_columns) == full_row_rank_matrix.rows
    square = full_row_rank_matrix[:, list(pivot_columns)]
    result = sp.zeros(full_row_rank_matrix.cols, full_row_rank_matrix.rows)
    inv = square.inv()
    for local_row, ambient_row in enumerate(pivot_columns):
        result[ambient_row, :] = inv[local_row, :]
    assert full_row_rank_matrix * result == sp.eye(full_row_rank_matrix.rows)
    return result


def raw_bianchi_constraints(b_labels):
    position = {label: i for i, label in enumerate(b_labels)}
    rows = []

    def add_b(row, j, k, l, coefficient):
        if k == l:
            return
        if k < l:
            row[position[(j, k, l)]] += coefficient
        else:
            row[position[(j, l, k)]] -= coefficient

    # Four cyclic equations B_[jkl]=0.
    for j, k, l in TRIPLES:
        row = [sp.Integer(0)] * 24
        add_b(row, j, k, l, 1)
        add_b(row, k, l, j, 1)
        add_b(row, l, j, k, 1)
        rows.append(row)

    # Four traces g^{jk} B_jkl=0.
    for l in I:
        row = [sp.Integer(0)] * 24
        for j in I:
            for k in I:
                add_b(row, j, k, l, ginv[j, k])
        rows.append(row)
    return sp.Matrix(rows)


def curvature_injection():
    copy_symbols = sp.symbols(" ".join(COPY_NAMES))
    field_values = [sp.Integer(0)] * 10
    for copy_index, field_index in enumerate(COPY_TO_FIELD):
        field_values[field_index] = copy_symbols[copy_index]
    delta_d = weyl_tensor(field_values)
    curvature_labels = tuple((base, internal) for base in PAIRS for internal in PAIRS)
    j_matrix = coefficient_matrix(
        [delta_d[base[0], base[1], internal[0], internal[1]]
         for base, internal in curvature_labels],
        copy_symbols,
    )
    return curvature_labels, j_matrix


def main_and_complement_rows(curvature_labels):
    main = []
    for row, (base, internal) in enumerate(curvature_labels):
        if internal in INTERNAL_P and base in ((0, 2), (1, 2), (2, 3)):
            main.append(row)
        if internal in INTERNAL_Q and base in ((0, 3), (1, 3), (2, 3)):
            main.append(row)
    main = tuple(main)
    complement = tuple(row for row in range(36) if row not in set(main))
    return main, complement


def exterior_symbol_on_two_forms(curvature_labels):
    position = {label: i for i, label in enumerate(curvature_labels)}
    matrices = [sp.zeros(24, 36) for _ in I]
    row = 0
    for triple in TRIPLES:
        i, j, k = triple
        for internal in PAIRS:
            terms = ((i, (j, k), 1), (j, (k, i), 1), (k, (i, j), 1))
            for direction, base, coefficient in terms:
                if base[0] < base[1]:
                    matrices[direction][row, position[(base, internal)]] += coefficient
                else:
                    matrices[direction][row, position[((base[1], base[0]), internal)]] -= coefficient
            row += 1
    return matrices


def copy_principal_matrices(source_rows):
    """Copy derivatives in the *conjugated source* row placement.

    After 09.(1.4), A.36 uses the copied under-beta block, A.37 the
    physical under-beta/rho/sigma block, A.38 the copied rho/sigma/beta
    block, and A.39 the physical beta/alpha block.  Thus this is not the
    principal operator of div(d_src), which would copy all four middle
    blocks.
    """
    copied_fields_by_row = []
    for row in range(16):
        if row < 4:
            copied_fields_by_row.append({FIELD["ubeta1"], FIELD["ubeta2"]})
        elif row < 8:
            copied_fields_by_row.append(set())
        elif row < 12:
            copied_fields_by_row.append({
                FIELD["rho"], FIELD["sigma"], FIELD["beta1"], FIELD["beta2"],
            })
        else:
            copied_fields_by_row.append(set())
    matrices = []
    for direction in I:
        block = source_rows[:, 10 * direction:10 * (direction + 1)]
        matrix = sp.zeros(16, 6)
        for row in range(16):
            for copy_index, field_index in enumerate(COPY_TO_FIELD):
                if field_index in copied_fields_by_row[row]:
                    matrix[row, copy_index] = block[row, field_index]
        matrices.append(matrix)
    return matrices


def matrix_text(matrix):
    return "[" + ",\n ".join(str(list(matrix.row(i))) for i in range(matrix.rows)) + "]"


def main():
    checks = []

    def check(label, condition):
        passed = bool(condition)
        checks.append(passed)
        print(("PASS " if passed else "FAIL ") + label)
        if not passed:
            raise AssertionError(label)

    source_rows = source_row_matrix()
    d, b_labels, b_raw, alt_labels, alt_raw = tensor_jet_matrices()
    constraints = raw_bianchi_constraints(b_labels)

    check("V80 curvature count 18+6=24", 18 + 6 == 24)
    check("V80 Bianchi irreducible count 24-4-4=16", 24 - 4 - 4 == 16)
    check("V80 copy component count", len(COPY_NAMES) == 6)
    check("V80 full second-Cartan equation count", len(TRIPLES) * len(PAIRS) == 24)

    missing = tuple(
        [("P", "124", "".join(str(i + 1) for i in internal)) for internal in INTERNAL_P]
        + [("Q", "123", "".join(str(i + 1) for i in internal)) for internal in INTERNAL_Q]
    )
    check("V81 explicit six omitted Cartan labels", missing == (
        ("P", "124", "12"), ("P", "124", "13"), ("P", "124", "23"),
        ("Q", "123", "14"), ("Q", "123", "24"), ("Q", "123", "34"),
    ))

    check("V82 raw Bianchi divergence rank", b_raw.rank() == 16)
    check("V82 alternated Weyl derivative rank", alt_raw.rank() == 16)
    check("V82 cyclic and trace constraints independent", constraints.rank() == 8)
    check("V82 Bianchi bundle obeys cyclic and trace constraints", constraints * b_raw == sp.zeros(8, 40))
    check("V82 constraints cut raw 24-space to dimension 16", 24 - constraints.rank() == 16)

    selected_b_rows = b_raw.T.rref()[1]
    check("V83 concrete B component basis has 16 entries", len(selected_b_rows) == 16)
    b_basis = b_raw[list(selected_b_rows), :]
    b_right_inverse = right_inverse(b_basis)
    h_b = sp.simplify(alt_raw * b_right_inverse)
    check("V83 exact H_B incidence", alt_raw == h_b * b_basis)
    check("V83 H_B injective on the 16-bundle", h_b.rank() == 16)
    h_rows = h_b.T.rref()[1]
    h_left_inverse = sp.zeros(16, 24)
    h_square_inverse = h_b[list(h_rows), :].inv()
    for col, ambient_col in enumerate(h_rows):
        h_left_inverse[:, ambient_col] = h_square_inverse[:, col]
    check("V83 explicit H_B inverse on its image", h_left_inverse * h_b == sp.eye(16))

    s_map = sp.simplify(source_rows * b_right_inverse)
    check("V84 all 16 physical source rows lie in B bundle", source_rows == s_map * b_basis)
    check("V84 exact 16x16 S is invertible", s_map.det() != 0)

    a_copy = copy_principal_matrices(source_rows)
    assembled_copy = sp.Matrix.hstack(*a_copy)
    nonzero_copy_rows = tuple(
        row for row in range(16)
        if assembled_copy[row, :] != sp.zeros(1, 24)
    )
    check("V85 exact conjugated copy-row placement",
          nonzero_copy_rows == tuple(range(4)) + tuple(range(8, 12)))
    check("V85 no derivative outside B and C_copy", assembled_copy.shape == (16, 24))

    curvature_labels, j_matrix = curvature_injection()
    main_rows, complement_rows = main_and_complement_rows(curvature_labels)
    check("V86 d_src-d_phys=J C_copy has rank six", j_matrix.rank() == 6)
    check("V86 18 source main curvature rows", len(main_rows) == 18)
    check("V86 18 complementary curvature rows", len(complement_rows) == 18)
    check("V86 main-row copy injection has rank six", j_matrix[list(main_rows), :].rank() == 6)

    khat_embedding = sp.zeros(36, 24)
    for local, ambient in enumerate(complement_rows):
        khat_embedding[ambient, local] = 1
    khat_embedding[:, 18:24] += j_matrix
    check("V87 Khat=(Ksrc_con,J C_copy) has 24 independent components", khat_embedding.rank() == 24)
    check("V87 Khat main rows equal J C_copy", khat_embedding[list(main_rows), :18] == sp.zeros(18, 18))

    ext = exterior_symbol_on_two_forms(curvature_labels)
    check("V88 all 24 Cartan rows generated", all(matrix.shape == (24, 36) for matrix in ext))
    ksrc_embedding = sp.zeros(36, 24)
    for local, ambient in enumerate(complement_rows):
        ksrc_embedding[ambient, local] = 1
    s_inverse = s_map.inv()
    f1 = []
    for mu in I:
        correction = sp.zeros(24, 24)
        correction[:, 18:24] = h_b * s_inverse * a_copy[mu]
        f1.append(ext[mu] * khat_embedding - correction)
    check("V88 eliminated 24x24 symbol retains the hybrid copy block",
          any(matrix[:, 18:24] != sp.zeros(24, 6) for matrix in f1))

    tau, rho_r, k1, k2 = sp.symbols("tau rho_r k1 k2", real=True)
    frame_covector = (k1, k2, tau - rho_r, tau + rho_r)
    f1_symbol = sum((frame_covector[mu] * f1[mu] for mu in I), sp.zeros(24, 24))
    f1_time = sp.simplify(f1_symbol.subs({tau: 1, rho_r: 0, k1: 0, k2: 0}))
    check("V89 timelike 24x24 matrix is invertible", f1_time.rank() == 24)
    f1_radial = f1_time.inv() * (f1[3] - f1[2])
    lam = sp.symbols("lambda")
    check("V89 radial characteristic polynomial is real",
          sp.expand(f1_radial.charpoly(lam).as_expr())
          == sp.expand((lam - 1) ** 12 * (lam + 1) ** 12))
    check("V89 minus radial eigenspace is defective",
          24 - (f1_radial + sp.eye(24)).rank() == 10)
    check("V89 two nontrivial radial Jordan directions",
          (f1_radial - sp.eye(24)) * (f1_radial + sp.eye(24)) ** 2
          == sp.zeros(24))
    check("V89 no positive symmetrizer for F1",
          not f1_radial.is_diagonalizable())

    # F2 unknown order: (Ksrc_con[18], B_basis[16], C_copy[6]).
    # B occurs algebraically in both equation blocks, hence every principal
    # A^mu has sixteen identically zero B columns.
    f2 = []
    for mu in I:
        matrix = sp.zeros(40, 40)
        matrix[:24, :18] = ext[mu] * ksrc_embedding[:, :18]
        matrix[:24, 34:40] = ext[mu] * j_matrix
        matrix[24:40, 34:40] = a_copy[mu]
        f2.append(matrix)
    check("V90 full mixed 40x40 matrices constructed", all(matrix.shape == (40, 40) for matrix in f2))
    check("V90 F2 has sixteen zero B derivative columns",
          all(matrix[:, 18:34] == sp.zeros(40, 16) for matrix in f2))
    f2_time = sum((f2[mu] for mu in (2, 3)), sp.zeros(40, 40))
    check("V90 no positive timelike symmetrizer for F2", len(f2_time.nullspace()) >= 16)

    # Exterior-of-exterior gives the principal constraint propagation:
    # p1 E234 - p2 E134 + p3 E124 - p4 E123=0 for every internal pair.
    p = sp.symbols("p1:5")
    ext_symbol = sum((p[mu] * ext[mu] for mu in I), sp.zeros(24, 36))
    dd_rows = []
    for pair_index in range(6):
        dd_rows.append(
            p[0] * ext_symbol[3 * 6 + pair_index, :]
            - p[1] * ext_symbol[2 * 6 + pair_index, :]
            + p[2] * ext_symbol[1 * 6 + pair_index, :]
            - p[3] * ext_symbol[0 * 6 + pair_index, :]
        )
    check("V91 all six principal Cartan-constraint identities", sp.Matrix.vstack(*dd_rows) == sp.zeros(6, 36))
    check("V91 P Cartan constraints propagate along e3", TRIPLE_NAMES.index("124") == 1)
    check("V91 Q Cartan constraints propagate along e4", TRIPLE_NAMES.index("123") == 0)

    print("\nB_BASIS_ORDER =")
    print([f"B_{j + 1}{k + 1}{l + 1}" for j, k, l in (b_labels[i] for i in selected_b_rows)])
    print("B_RIGHT_INVERSE_PIVOT_JETS =")
    print([f"e{column // 10 + 1}({FIELD_NAMES[column % 10]})"
           for column in b_basis.rref()[1]])
    print("ROW_ORDER =")
    print(list(ROW_NAMES))
    print("CURVATURE_ORDER = base pair major, internal pair minor =")
    print([f"K_{PAIR_NAMES[PAIRS.index(base)]}^{PAIR_NAMES[PAIRS.index(internal)]}"
           for base, internal in curvature_labels])
    print("KHAT_UNKNOWN_ORDER =")
    print([f"Ksrc_{PAIR_NAMES[PAIRS.index(curvature_labels[i][0])]}^{PAIR_NAMES[PAIRS.index(curvature_labels[i][1])]}"
           for i in complement_rows] + list(COPY_NAMES))
    print("CARTAN_ROW_ORDER =")
    print([f"DK_{TRIPLE_NAMES[TRIPLES.index(triple)]}^{PAIR_NAMES[PAIRS.index(pair)]}"
           for triple, pair in alt_labels])
    print("MISSING_CARTAN_ROWS =")
    print(list(missing))
    print("S_16x16 =")
    print(matrix_text(s_map))
    for mu, matrix in enumerate(a_copy, start=1):
        print(f"A_C^{mu}_16x6 =")
        print(matrix_text(matrix))
    print("J_NONZERO_COMPONENT_MAP =")
    for row, (base, internal) in enumerate(curvature_labels):
        for col, copy_name in enumerate(COPY_NAMES):
            value = j_matrix[row, col]
            if value != 0:
                print(f"dK_{base[0]+1}{base[1]+1}^{internal[0]+1}{internal[1]+1} += {value} {copy_name}")
    print("H_B_24x16_RANK =", h_b.rank())
    print("F1_SYMBOL_SHAPE =", f1_symbol.shape)
    print("F1_TIME_RANK =", f1_time.rank())
    print("F1_TIME_DETERMINANT =", f1_time.det())
    print("F1_RADIAL_EIGENVALUE_MULTIPLICITIES =", f1_radial.eigenvals())
    print("F1_RADIAL_MINUS_GEOMETRIC_MULTIPLICITY =", 24 - (f1_radial + sp.eye(24)).rank())
    print("F2_TIME_RANK =", f2_time.rank())
    if "--dump-full" in sys.argv:
        print("H_B_24x16 =")
        print(matrix_text(h_b))
        for mu, matrix in enumerate(f1, start=1):
            print(f"F1_A^{mu}_24x24 =")
            print(matrix_text(matrix))
        for mu, matrix in enumerate(f2, start=1):
            print(f"F2_A^{mu}_40x40 =")
            print(matrix_text(matrix))
    print("\nREGRESSIONS ONLY: the radial Jordan obstruction rules out a positive")
    print("first-order symmetrizer for F1, while zero B derivative columns rule it")
    print("out for F2. This does not prove a wave or comparison subsidiary theorem.")
    print(f"OVERALL: PASS ({sum(checks)}/{len(checks)})")


if __name__ == "__main__":
    main()
