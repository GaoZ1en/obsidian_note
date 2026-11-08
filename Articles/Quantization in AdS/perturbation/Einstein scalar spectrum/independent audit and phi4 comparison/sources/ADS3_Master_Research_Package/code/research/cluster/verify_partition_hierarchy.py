#!/usr/bin/env python3
"""Independent finite certificates for the conformal partition filtration.

No physical N-variable wavefunction is expanded. Combinatorial certificates
use exact set partitions and permutations; overlap checks evaluate the fixed
endpoint Racah formula independently. Optional five-body Bose quasimodes use
the frozen, already checked rational comb backend only as a coordinate engine.
All outputs are explicitly directed to the new hierarchy directory or stdout.
"""
from __future__ import annotations

import argparse
from collections import defaultdict
from fractions import Fraction as F
from functools import lru_cache
from itertools import permutations, product
import json
from math import comb, factorial, prod
from pathlib import Path
import sys
import time

import mpmath as mp
import numpy as np


def canonical(blocks):
    return tuple(sorted(tuple(sorted(block)) for block in blocks))


@lru_cache(None)
def partitions(n):
    if n == 0:
        return ((),)
    out = []
    for old in partitions(n-1):
        out.append(canonical(old+((n-1,),)))
        for at in range(len(old)):
            changed = list(old)
            changed[at] += (n-1,)
            out.append(canonical(changed))
    return tuple(sorted(set(out)))


def refines(pi, tau):
    return all(any(set(block) <= set(larger) for larger in tau) for block in pi)


def join(pi, tau):
    parent = {v: v for block in pi for v in block}
    def root(v):
        while parent[v] != v:
            parent[v] = parent[parent[v]]
            v = parent[v]
        return v
    for block in pi+tau:
        for v in block[1:]:
            parent[root(v)] = root(block[0])
    groups = defaultdict(list)
    for v in parent:
        groups[root(v)].append(v)
    return canonical(groups.values())


def permute(pi, g):
    return canonical(tuple(g[v] for v in block) for block in pi)


def mobius_to_top(pi):
    return (-1)**(len(pi)-1)*factorial(len(pi)-1)


def exact_partition_certificates(max_n=6):
    rows = []
    for n in range(2, max_n+1):
        pp = partitions(n)
        # Mobius cancellation is checked at every possible word graph
        # partition, without presuming graph connectivity formulas.
        for gamma in pp:
            total = sum(mobius_to_top(pi) for pi in pp if refines(gamma, pi))
            assert total == int(len(gamma) == 1)
        types = {}
        for pi in pp:
            kind = tuple(sorted(map(len, pi), reverse=True))
            types.setdefault(kind, pi)
        orbit_rows = []
        gg = tuple(permutations(range(n)))
        for kind, pi in sorted(types.items(), reverse=True):
            same = coarser = 0
            seen = set()
            for g in gg:
                tau = permute(pi, g)
                seen.add(tau)
                joined = join(pi, tau)
                if tau == pi:
                    assert joined == pi
                    same += 1
                else:
                    assert len(joined) < len(pi)
                    coarser += 1
            assert same*len(seen) == factorial(n)
            orbit_rows.append({
                'type': kind, 'orbit_size': len(seen),
                'normalizer_size': same,
                'same_layer_compression_product_coefficient': str(F(same, factorial(n))),
                'strictly_coarser_permutation_terms': coarser})
        # Every pair of grades satisfies the actual ideal filtration bound.
        for pi in pp:
            for tau in pp:
                assert len(join(pi, tau)) <= min(len(pi), len(tau))
        rows.append({'N': n, 'Bell_number': len(pp),
                     'Mobius_all_graph_partitions_exact': True,
                     'all_join_filtration_bounds_exact': True,
                     'normalizer_layers': orbit_rows})
    return rows


def omega_mp(j, a, b, c, M):
    """Omega(j;2a-1,2b-1,2c-1;M), using long gamma ratios."""
    if j > M:
        return mp.mpf(0)
    # All factors are positive at the physical weights used below.
    return (mp.binomial(M, j)*(2*j+2*b+2*c-1)
            *mp.rf(2*b, j)*mp.rf(M+2*a+2*b+2*c-1, j)
            /mp.rf(2*c, j)
            *mp.exp(mp.loggamma(M+2*a-j)-mp.loggamma(2*a)
                    +mp.loggamma(2*b+2*c+j-1)
                    -mp.loggamma(M+2*b+2*c+j)))


def racah_endpoint_mp(a, b, c, M, u, v):
    if min(u, v) < 0 or max(u, v) > M:
        return mp.mpf(0)
    term = total = mp.mpf(1)
    for j in range(min(u, v)):
        term *= ((-v+j)*(v+2*b+2*c-1+j)*(-u+j)*(u+2*a+2*b-1+j)
                 /((2*b+j)*(M+2*a+2*b+2*c-1+j)*(-M+j)*(j+1)))
        total += term
    return mp.sqrt(omega_mp(u, c, b, a, M)*omega_mp(v, a, b, c, M))*total


def internal_degrees(size, cutoff):
    return [0] if size == 1 else range(cutoff+1)


def cutoff_overlap(delta, sizes, L, M, P):
    """Exact block decomposition of ||E_(A+C)(L) E_(C+B)(M)||.

    Matrices are finite rectangles of normalized Racah overlaps. The internal
    multiplicity factors repeat blocks, rather than changing their norm.
    The numerical values are high-precision matrix evaluations plus binary64
    SVD diagnostics, and are not certified interval bounds.
    """
    aa, cc, bb = sizes
    h = mp.mpf(str(delta))/2
    best = 0.0
    winner = None
    block_count = 0
    multiplicity_count = 0
    for pa, pc, pb in product(internal_degrees(aa, L),
                              internal_degrees(cc, min(L, M)),
                              internal_degrees(bb, M)):
        if pa+pc > L or pc+pb > M:
            continue
        R = P-pa-pc-pb
        if R < 0:
            continue
        us = range(min(L-pa-pc, R)+1)
        vs = range(min(M-pc-pb, R)+1)
        matrix = np.array([[float(racah_endpoint_mp(aa*h+pa, cc*h+pc,
                                                    bb*h+pb, R, u, v))
                            for v in vs] for u in us])
        norm = float(np.linalg.svd(matrix, compute_uv=False)[0])
        mult = prod(comb(p+size-2, size-2) if size >= 2 else 1
                    for p, size in [(pa, aa), (pc, cc), (pb, bb)])
        multiplicity_count += mult
        block_count += 1
        if norm > best:
            best, winner = norm, [pa, pc, pb]
    return {'P': P, 'norm_numeric': best,
            'P_to_common_Delta_times_norm': P**(cc*float(delta))*best,
            'largest_block_internal_degrees_A_C_B': winner,
            'finite_blocks_including_zero_internals': block_count,
            'internal_multiplicity_repetitions': multiplicity_count}


def overlap_certificates():
    rows = []
    with mp.workdps(70):
        # Closed exact ground examples: one common leaf versus three common
        # leaves. The integer identities are independent of an asymptotic fit.
        for P in [4, 9, 32, 127, 1024]:
            lhs = racah_endpoint_mp(mp.mpf(2), mp.mpf(1), mp.mpf(2), P, 0, 0)
            rhs = mp.mpf(20)/((P+4)*(P+5))
            assert abs(lhs-rhs) < mp.mpf('1e-62')
            lhs = racah_endpoint_mp(mp.mpf(1), mp.mpf(3), mp.mpf(1), P, 0, 0)
            rhs = mp.mpf(5040)/mp.rf(P+2, 6)
            assert abs(lhs-rhs) < mp.mpf('1e-62')
        for d, sizes, L, M in [(2, (2,1,2), 0, 0),
                                (2, (2,1,2), 1, 2),
                                (2, (1,3,1), 2, 3),
                                ('1.5', (2,1,2), 1, 2)]:
            rows.append({'Delta': str(d), 'A_C_B_sizes': sizes,
                         'left_cutoff': L, 'right_cutoff': M,
                         'rows': [cutoff_overlap(d, sizes, L, M, P)
                                  for P in [16, 32, 64, 128, 256, 1024]],
                         'status': 'finite numerical check of proved exact block decomposition'})
    return {'ground_closed_form_1common': '20/((P+4)*(P+5)) at Delta=2',
            'ground_closed_form_3common': '5040/(P+2)_6 at Delta=2',
            'ground_high_precision_residual_below': '1e-62',
            'ground_test_P': [4, 9, 32, 127, 1024],
            'finite_cutoff_rows': rows}


def frozen_backends(workspace):
    old = workspace/'research'/'racah'
    analytic = workspace/'research'/'racah'
    if not (old/'all_n_recoupling.py').exists():
        raise FileNotFoundError('Pass --workspace pointing to the preserved research workspace')
    sys.path.insert(0, str(old))
    sys.path.insert(0, str(analytic))
    import all_n_recoupling as rec
    from su11_recoupling import f_move_exact, rational_sqrt
    return rec, f_move_exact, rational_sqrt


def triple_pair_source(rec, fmove, sqrtq, delta, P, pair_k=0):
    """Canonical (ground triple, pair_k) -> total P in left-comb gauge."""
    d = F(delta)
    h = d/2
    if P < pair_k:
        raise ValueError('P must contain the fixed pair primary degree')
    source_norm = rec.cg_norm(pair_k, h, h)*rec.cg_norm(P-pair_k, 3*h, 2*h+pair_k)
    out = {}
    for u in range(P+1):
        r, q = fmove(3*h, h, h, P, u, pair_k)
        basis_norm = rec.cg_norm(u, 3*h, h)*rec.cg_norm(P-u, 4*h+u, h)
        coefficient = r*sqrtq(q*source_norm/basis_norm)
        if coefficient:
            out[((0, 0, u, P-u), (0,0,0,0))] = coefficient
    assert rec.inner(out, out, d) == source_norm
    # The first triple and the last pair are exactly internally Bose.
    assert all(rec.adjacent_swap(out, d, j) == out for j in [1, 2, 4])
    return out


def bose_cluster_checks(workspace, degrees):
    rec, fmove, sqrtq = frozen_backends(workspace)
    d = F(2)
    a0, a2 = rec.pair_residual(d,0,0), rec.pair_residual(d,2,0)
    rows = []
    for P in degrees:
        for kind, k, lam, orbit in [('4+1', 0, 6*a0, 5),
                                    ('3+2', 0, 4*a0, 10),
                                    ('3+2', 2, 3*a0+a2, 10)]:
            started = time.monotonic()
            if kind == '4+1':
                source = {((0,0,0,P),(0,0,0,0)): F(1)}
            else:
                source = triple_pair_source(rec, fmove, sqrtq, d, P, k)
            source_norm = rec.inner(source, source, d)
            projected = rec.bose_project(source, d, 5)
            norm = rec.inner(projected, projected, d)
            assert norm > 0
            action = rec.action_bose(projected, d, 5)
            error = {key: action.get(key,F(0))-lam*projected.get(key,F(0))
                     for key in set(action)|set(projected)}
            error = {key:value for key,value in error.items() if value}
            residual_sq = rec.inner(error,error,d)/norm
            gram = orbit*norm/source_norm
            rayleigh = rec.inner(projected,action,d)/norm
            rows.append({'P':P, 'partition':kind, 'pair_k':k,
                         'target_cluster_value':str(lam),
                         'Bose_Gram_scaled_exact':str(gram),
                         'Bose_Gram_scaled_minus_one':float(gram-1),
                         'Rayleigh_exact':str(rayleigh),
                         'normalized_residual_squared_exact':str(residual_sq),
                         'normalized_residual_norm':float(mp.sqrt(mp.mpf(residual_sq.numerator)/residual_sq.denominator)),
                         'seconds':time.monotonic()-started})
            print(json.dumps({'progress': rows[-1]}, sort_keys=True), flush=True)
    return rows


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--workspace', type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument('--bose-degrees', type=int, nargs='*', default=[])
    parser.add_argument('--only-bose', action='store_true')
    args = parser.parse_args()
    out = {'scope':'Q=0, Delta>1; structural proofs are in the accompanying note',
           'exact_combinatorial_checks': [] if args.only_bose else exact_partition_certificates(),
           'Racah_cutoff_checks': {} if args.only_bose else overlap_certificates(),
           'five_body_Bose_quasimodes': bose_cluster_checks(args.workspace,args.bose_degrees)
                                           if args.bose_degrees else [],
           'not_claimed':'Finite checks do not replace the C*-filtration proof or certify an asymptotic rate uniform in internal cutoffs.'}
    text = json.dumps(out,indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    else:
        print(text,end='')


if __name__ == '__main__':
    main()
