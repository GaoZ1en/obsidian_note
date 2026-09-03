#!/usr/bin/env python3
"""Exact bounded Stage-4.6 diagnostic, in the unchanged Stage-4.5 basis.

Run with sage -python. --dump-full prints every matrix, --json PATH saves
the complete rational matrices, and --wolfram PATH writes the same data
for an independent Mathematica check. No purported evolution block is
manufactured after the Part-B rank obstruction.
"""

import argparse
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
import sympy as sp
import stage45_extended_curvature_hodge_checks as s45


def build():
    source = s45.source_row_matrix()
    _, b_labels, b_raw, labels, alt_raw = s45.tensor_jet_matrices()
    b_indices = b_raw.T.rref()[1]
    b_basis = b_raw[list(b_indices), :]
    right = s45.right_inverse(b_basis)
    h = alt_raw * right
    smap = source * right
    ac = s45.copy_principal_matrices(source)
    curvature_labels, jmap = s45.curvature_injection()
    _, complement = s45.main_and_complement_rows(curvature_labels)
    qmap = sp.zeros(36, 24)
    for local, ambient in enumerate(complement):
        qmap[ambient, local] = 1
    qmap[:, 18:] += jmap
    ext = s45.exterior_symbol_on_two_forms(curvature_labels)
    copy_selector = sp.zeros(6, 18).row_join(sp.eye(6))
    raw = [e * qmap for e in ext]
    f = [raw[i] - h * smap.inv() * ac[i] * copy_selector for i in range(4)]
    ci = [labels.index(((0, 1, 3), pair)) for pair in s45.INTERNAL_P]
    ci += [labels.index(((0, 1, 2), pair)) for pair in s45.INTERNAL_Q]
    ei = [i for i in range(24) if i not in ci]
    # Preserve the inherited triple-major/internal-pair-minor row ordering.
    fe = [a[ei, :] for a in f]
    fc = [a[ci, :] for a in f]
    candidate = list((ac[2] + ac[3]).T.rref()[1])
    other = [i for i in range(16) if i not in candidate]
    order = candidate + other
    perm = sp.eye(16)[order, :]
    # bprime = perm S B, so the 6+10 source B-block is literally identity.
    change_b = (perm * smap).inv()
    bprime_h = h * change_b
    # Substituting ALL source equations makes the selected six source rows
    # identically zero. These square matrices document the failed padding,
    # not a new formulation or an admissible A_evol.
    padded = [a.col_join(sp.zeros(6, 24)) for a in fe]
    p = sp.symbols('p1:5')
    wedge = sp.zeros(6, 24)
    for i in range(6):
        wedge[i, 18 + i] = p[0]
        wedge[i, 12 + i] = -p[1]
        wedge[i, 6 + i] = p[2]
        wedge[i, i] = -p[3]
    extp = sum((p[i] * ext[i] for i in range(4)), sp.zeros(24, 36))
    fp = sum((p[i] * f[i] for i in range(4)), sp.zeros(24, 24))
    dd = (wedge * fp).applyfunc(sp.expand)
    wave = p[2] * p[3] - p[0] ** 2 - p[1] ** 2
    # M C = (Crho, Cubeta2, -Cbeta2, -Cubeta1, Cbeta1, -2Csigma).
    m = sp.zeros(6)
    for row, col, value in [(0, 4, 1), (1, 3, 1), (2, 1, -1),
                            (3, 2, -1), (4, 0, 1), (5, 5, -2)]:
        m[row, col] = value
    ft = f[2] + f[3]
    et = fe[2] + fe[3]
    ct = fc[2] + fc[3]
    # Every C time jet is free on the 18-row evolution shell.
    kernel = (-(et[:, :18].inv() * et[:, 18:])).col_join(sp.eye(6))
    # Exact Schur row elimination of the 34 equations on (d_t U, B).
    mixed_t = (raw[2] + raw[3])[ei, :].row_join(h[ei, :])
    mixed_t = mixed_t.col_join(((ac[2] + ac[3]) * copy_selector).row_join(smap))
    eliminate = sp.eye(34)
    eliminate[:18, 18:] = -h[ei, :] * smap.inv()

    def label(triple, pair):
        return ''.join(str(i + 1) for i in triple) + ';' + ''.join(str(i + 1) for i in pair)

    names = ['Ksrc_' + label(*curvature_labels[i]) for i in complement]
    names += list(s45.COPY_NAMES)
    names = [name.replace(';', '^') for name in names]
    meta = {
        'unknown_order': names,
        'all_Cartan_rows': [label(*item) for item in labels],
        'evolution_rows': [label(*labels[i]) for i in ei],
        'constraint_rows': [label(*labels[i]) for i in ci],
        'source_rows': list(s45.ROW_NAMES),
        'candidate_copy_rows': [s45.ROW_NAMES[i] for i in candidate],
        'ten_complementary_rows': [s45.ROW_NAMES[i] for i in other],
        'B_basis': ['B_' + ''.join(str(i + 1) for i in b_labels[j]) for j in b_indices],
        'candidate_status': 'Rejected: six bprime components remain; no independent copy block.',
        'stop': 'B5; no genuine A_evol exists. Padded source-zero certificate has time rank 18.',
        'hyperbolicity': 'Not an evolution system; D3-D6/F not entered.',
        'constraint_addition': 'One constant family Fe+Lambda Fc; at most 18 rows. Appending Fc gives only F1 row recombination.',
    }
    matrices = {'S': smap, 'H': h, 'Q': qmap, 'J': jmap,
                'copySelector': copy_selector, 'sourcePermutation': perm,
                'BfromBprime': change_b, 'Hbprime': bprime_h,
                'rawBianchiJets': b_basis, 'alternatedWeylJets': alt_raw,
                'At18': et, 'AtF1': ft, 'AtPadded': padded[2] + padded[3],
                'timeKernel': kernel, 'constraintTimeKernel': ct * kernel,
                'mixedTime': mixed_t, 'SchurElimination': eliminate,
                'waveMap': m}
    for i in range(4):
        for prefix, mats in [('AC', ac), ('E', ext), ('Raw', raw), ('F1', f),
                             ('Fe', fe), ('Fc', fc), ('Padded', padded)]:
            matrices[f'{prefix}{i + 1}'] = mats[i]
    return locals()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--dump-full', action='store_true')
    parser.add_argument('--json', type=Path)
    parser.add_argument('--wolfram', type=Path)
    args = parser.parse_args()
    d = build()
    checks = []

    def check(label, value):
        if value is not True:
            raise AssertionError(f'{label}: {value}')
        checks.append(label)
        print('PASS ' + label)

    h, smap, ac = d['h'], d['smap'], d['ac']
    ei, ci, fe, fc, f = (d[key] for key in ['ei', 'ci', 'fe', 'fc', 'f'])
    pc = d['copy_selector']
    et, ft = d['et'], d['ft']
    check('V93 inherited basis and exact 18+6 partition',
          len(ei) == 18 and len(ci) == 6 and sorted(ei + ci) == list(range(24)))
    check('V93 full Q injection has rank 24', d['qmap'].rank() == 24)
    check('V94 exact source B-map det S=-16', smap.det() == -16)
    check('V94 full H incidence and source factorization',
          h * d['b_basis'] == d['alt_raw'] and smap * d['b_basis'] == d['source'])
    check('V94 selected Cartan H-block already has rank 16', h[ei, :].rank() == 16)
    check('V94 all copy jets have row rank 8', sp.Matrix.hstack(*ac).rank() == 8)
    act = ac[2] + ac[3]
    check('V94 candidate characteristic derivative block is invertible',
          d['candidate'] == [2, 3, 8, 9, 10, 11] and act[d['candidate'], :].det() != 0)
    check('V94 complementary ten carry no copy time derivative',
          act[d['other'], :] == sp.zeros(10, 6))
    check('V94 source 6+10 B change of basis is invertible',
          d['perm'] * smap * d['change_b'] == sp.eye(16))
    check('V94 six B variables survive the ten complementary equations',
          (d['perm'] * smap * d['change_b'])[6:, :6] == sp.zeros(10, 6))
    for mu in range(4):
        check(f'V95 source substitution mu={mu + 1} leaves zero independent rows',
              smap * (-smap.inv() * ac[mu]) + ac[mu] == sp.zeros(16, 6))
    check('V95 full mixed time system has rank 34 in 40 columns',
          d['mixed_t'].shape == (34, 40) and d['mixed_t'].rank() == 34)
    transformed = et.row_join(sp.zeros(18, 16)).col_join((act * pc).row_join(smap))
    check('V95 exact 34-row Schur elimination', d['eliminate'] * d['mixed_t'] == transformed)
    check('V95 eliminated evolution time rank is 18', et.rank() == 18)
    check('V95 curvature time block already uses all 18 rows', et[:, :18].det() != 0)
    check('V95 arbitrary six copy time jets extend to evolution-shell jets',
          et * d['kernel'] == sp.zeros(18, 6) and d['kernel'][18:, :] == sp.eye(6))
    check('V95 all 24 curvature first-jet rows are independent',
          sp.Matrix.hstack(*[a[:, :18] for a in f]).rank() == 24)
    check('V95 square source-zero certificate is singular with rank 18',
          d['matrices']['AtPadded'].rank() == 18 and d['matrices']['AtPadded'].det() == 0)
    # F1 is only the inherited comparator, not a new post-stop formulation.
    vr = ft.inv() * (f[3] - f[2])
    lam = sp.Symbol('lambda')
    check('V96 inherited F1 time determinant', ft.det() == 2)
    check('V96 inherited radial characteristic polynomial',
          sp.expand(vr.charpoly(lam).as_expr() - (lam - 1)**12 * (lam + 1)**12) == 0)
    check('V96 inherited radial eigenspaces 12 and 10',
          24 - (vr - sp.eye(24)).rank() == 12 and 24 - (vr + sp.eye(24)).rank() == 10)
    check('V96 inherited radial minimal-polynomial witness',
          (vr - sp.eye(24)) * (vr + sp.eye(24))**2 == sp.zeros(24)
          and vr**2 != sp.eye(24))
    # ONE constraint-addition family. No parameter search: the identities
    # hold for arbitrary 108 constant entries of Lambda.
    add = sp.Matrix(18, 6, lambda i, j: sp.Symbol(f'L{i}_{j}'))
    left = sp.eye(18).row_join(add)
    triangular = left.col_join(sp.zeros(6, 18).row_join(sp.eye(6)))
    inverse_triangular = sp.eye(18).row_join(-add).col_join(sp.zeros(6, 18).row_join(sp.eye(6)))
    check('V97 one complete constant constraint-addition family is a row operation',
          triangular * inverse_triangular == sp.eye(24))
    for mu in range(4):
        stacked = fe[mu].col_join(fc[mu])
        check(f'V97 constraint addition mu={mu + 1} is exactly [I Lambda] on F1',
              left * stacked == fe[mu] + add * fc[mu])
    check('V98 bare exterior-of-exterior identity for all six pairs',
          (d['wedge'] * d['extp']).applyfunc(sp.expand) == sp.zeros(6, 36))
    check('V98 eliminated full identity contains six copy wave operators',
          (d['dd'] - sp.zeros(6, 18).row_join(d['wave'] * d['m'])).applyfunc(sp.expand)
          == sp.zeros(6, 24))
    check('V98 copy-wave coefficient map is invertible', d['m'].det() != 0)
    # U=v*t^2/2 is an exact time-only solution of Fe dU=0; G(0)=0
    # but d_t G != 0. Thus Fe alone does not propagate G homogeneously.
    witness = d['kernel'][:, 4]
    check('V98 explicit evolution-shell counterexample to homogeneous G transport',
          et * witness == sp.zeros(18, 1) and d['ct'] * witness != sp.zeros(6, 1))
    meta = d['meta']
    meta['checks_passed'] = len(checks)
    meta['ranks'] = {'S': 16, 'H_evolution': 16, 'copy_all_jets': 8,
                     'copy_time': 6, 'evolution_time': 18, 'padded_time': 18}
    meta['F1_comparator'] = {'At_det': 2, 'radial_charpoly': str(sp.factor(vr.charpoly(lam).as_expr())),
                              'plus_geometric': 12, 'minus_geometric': 10,
                              'minimal_polynomial': '(lambda-1)*(lambda+1)^2'}
    print(json.dumps(meta, indent=2))
    print('EVOLUTION PRINCIPAL ROWS (each equals its retained lower-order residual):')
    jets = [sp.Symbol(f'e{mu+1}({name})') for mu in range(4) for name in meta['unknown_order']]
    jet_matrix = sp.Matrix.hstack(*f)
    for group, indices in [('EVOLUTION', ei), ('CONSTRAINT', ci)]:
        for i in indices:
            print(group, meta['all_Cartan_rows'][i], ':', (jet_matrix[i, :] * sp.Matrix(jets))[0])
    print('FULL CONSTRAINT IDENTITY: wedge(p) F(p) =', d['dd'][:, 18:].applyfunc(sp.factor))
    print('TIME KERNEL =', d['kernel'])
    print('CONSTRAINT TIME KERNEL =', d['ct'] * d['kernel'])
    if args.dump_full:
        for name, mat in d['matrices'].items():
            print(name, mat.shape, '=', s45.matrix_text(mat))
    if args.json:
        payload = {'metadata': meta, 'matrices': {
            name: [[str(value) for value in mat.row(i)] for i in range(mat.rows)]
            for name, mat in d['matrices'].items()}}
        args.json.write_text(json.dumps(payload, indent=2) + '\n')
    if args.wolfram:
        from sympy.printing.mathematica import mathematica_code
        args.wolfram.write_text('\n'.join(
            name + ' = ' + mathematica_code(mat) + ';' for name, mat in d['matrices'].items()) + '\n')
    print('HARD STOP B5: no independent local six-equation copy evolution block.')
    print(f'OVERALL: PASS ({len(checks)}/{len(checks)}); algebraic diagnostic only, no PDE theorem.')


if __name__ == '__main__':
    main()
