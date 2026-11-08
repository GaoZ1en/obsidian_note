#!/usr/bin/env python3
"""Finite cutoffs of the proved N=5, fixed-Q recursive comparison operator.

The target left excitation P never enters the comparison.  Numerical internal
eigenvalues use the frozen, previously validated three/four-body Racah backend.
Exact physical dimensions distinguish auxiliary zeros from actual states.
The oriented subtraction is b_m(q), even for internal p<q; the four-body
backend's convenient chirality swap is corrected explicitly here.

These binary64 finite cutoffs converge as sets by the accompanying theorem.
This program does not claim a computable uniform R(epsilon), interval-certified
eigenvalues, or limiting multiplicities of the full five-body problem.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as F
import json
import os
from pathlib import Path
import sys
import time

import numpy as np


def baseline(d, n, q):
    return -2*n*(n-1)*d*d-8*q*(n*d+q-1)


def load_backend(package):
    recoupling = package/'research'/'racah'
    if not (recoupling/'four_body_racah.py').is_file():
        raise FileNotFoundError('Pass --analytic-root pointing to ADS3_Analytic_research_package')
    sys.path.insert(0, str(recoupling))
    from four_body_racah import numeric_spectrum
    from cluster_spectrum import three_matrix_numeric, oriented_kernel_3, d3
    from pair_gram import pair_excess
    return numeric_spectrum, three_matrix_numeric, oriented_kernel_3, d3, pair_excess


def four_block(d, p, q, backend):
    out = backend[0](float(d), p, q)
    # The old backend diagonalizes W-b_4(min(p,q)); this theorem needs W-b_4(q).
    shift = baseline(d, 4, min(p, q))-baseline(d, 4, q)
    repeated = int(out['baseline_multiplicity'])
    eigenvalues = [float(x)+float(shift) for x in out['positive_shifts']]
    set_values = eigenvalues+([float(shift)] if repeated else [])
    assert len(eigenvalues)+repeated == out['physical_primary_dimension']
    return {'N':4, 'p':p, 'q':q,
            'physical_dimension':out['physical_primary_dimension'],
            'oriented_baseline':str(baseline(d,4,q)),
            'swap_to_oriented_residual_shift_exact':str(shift),
            'resolved_eigenvalues':eigenvalues,
            'repeated_scalar':{'value_exact':str(shift), 'multiplicity':repeated},
            'set_values':set_values,
            'max_discarded_auxiliary_zero':out['max_discarded_zero'],
            'auxiliary_dimension':out['auxiliary_dimension']}


def three_block(d, p, q, backend):
    B = backend[1](float(d), p, q)
    values = np.linalg.eigvalsh(B) if B.size else np.empty(0)
    dim = backend[3](p,q)
    kernel = backend[2](p,q)
    rank = dim-kernel
    if rank < 0 or rank > len(values):
        raise ArithmeticError('Exact oriented three-body rank is inconsistent')
    nzero = len(values)-rank
    zero_error = float(max(abs(values[:nzero]), default=0))
    scale = max(1.,float(max(abs(values),default=0)))
    if zero_error > 1e-9*scale:
        raise ArithmeticError('Auxiliary zero identification failed exact rank gate')
    positive = values[nzero:].tolist()
    if positive and min(positive) <= 1e-10*scale:
        raise ArithmeticError('Positive spectrum unresolved at binary64 precision')
    return {'N':3, 'p':p, 'q':q, 'physical_dimension':dim,
            'oriented_baseline':str(baseline(d,3,q)),
            'resolved_eigenvalues':positive,
            'repeated_scalar':{'value_exact':'0','multiplicity':kernel},
            'set_values':positive+([0.] if kernel else []),
            'max_discarded_auxiliary_zero':zero_error,
            'auxiliary_dimension':len(values)}


def comparison(d, Q, R, package):
    if d <= 1 or Q < 0 or R < 0:
        raise ValueError('Require Delta>1 and nonnegative Q,R')
    backend = load_backend(package)
    started = time.monotonic()
    four = [four_block(d,p,q,backend) for q in range(Q+1) for p in range(R+1)]
    three = [three_block(d,p,q,backend) for q in range(Q+1) for p in range(R+1)]
    pairs = {}
    for q in range(Q+1):
        pairs[q] = sorted({F(0)}|{backend[4](d,k,q)
                                  for k in range(q+3) if (k+q)%2 == 0})
    values = [v for block in four for v in block['set_values']]
    sums = []
    for block in three:
        for q2 in range(Q-block['q']+1):
            for alpha in pairs[q2]:
                shifted = [x+float(alpha) for x in block['set_values']]
                values.extend(shifted)
                sums.append({'three_p':block['p'],'three_q':block['q'],
                             'pair_q':q2,'pair_atom_exact':str(alpha),
                             'set_values':shifted})
    ordered = sorted(values)
    return {'Delta':str(d),'N':5,'fixed_Q':Q,'internal_left_cutoff_R':R,
            'theorem':'all-P Hausdorff limit is union_(q<=Q) Sigma_4,q union union_(q1+q2<=Q)(Sigma_3,q1+Sigma_2,q2)',
            'comparison':'D_5,Q(R); target P is absent',
            'four_body_blocks':four,'three_body_blocks':three,
            'pair_spectral_sets_exact':{str(q):list(map(str,a)) for q,a in pairs.items()},
            'three_plus_two_comparison_blocks':sums,
            'sorted_comparison_values_with_repeated_origins':ordered,
            'minimum':min(ordered,default=None),'maximum':max(ordered,default=None),
            'seconds':time.monotonic()-started,
            'arithmetic_scope':'At fixed Q, standard dense four-body assembly/eigensolves give O(R^4) arithmetic operations over all p<=R, O(R^2) working storage. Rational bit costs and an effective R(epsilon) are not claimed.',
            'cautions':['Binary64 values are not certified isolating intervals.',
                        'Repeated scalar multiplicity is exact inside an internal physical block.',
                        'Repeated pair-zero source degrees are collapsed for this spectral-set comparator.',
                        'The finite cutoff is not the complete finite-P five-body spectrum.']}


def verify_oriented_interface(package):
    """Exact shifted characteristic polynomials vs an independent orbit backend."""
    import sympy as s
    backend=load_backend(package)
    from four_body_racah import exact_spectrum
    from fock_exact import primary_hamiltonian
    t=s.Symbol('t')
    rows=[]
    for d,p,q in [(F(2),0,2),(F(2),1,2),(F(2),1,3),
                  (F(2),2,3),(F(3,2),0,2),(F(3,2),1,3)]:
        W,_,_=primary_hamiltonian(d,4,p,q)
        physical=W-s.Rational(baseline(d,4,q))*s.eye(W.rows)
        expected=physical.charpoly(t).as_expr()
        old=exact_spectrum(d,p,q)
        shift=s.Rational(baseline(d,4,min(p,q))-baseline(d,4,q))
        cc=list(map(s.Rational,old['exact_positive_coefficients']))
        changed=sum(c*(t-shift)**(len(cc)-1-i) for i,c in enumerate(cc))
        changed *= (t-shift)**old['baseline_multiplicity']
        assert s.expand(changed-expected)==0
        numerical=four_block(d,p,q,backend)
        numeric_trace=sum(numerical['resolved_eigenvalues'])
        numeric_trace += float(shift)*numerical['repeated_scalar']['multiplicity']
        assert abs(numeric_trace-float(s.trace(physical)))<1e-9
        rows.append({'Delta':str(d),'N':4,'p':p,'q':q,
                     'physical_dimension':W.rows,
                     'oriented_residual_shift_exact':str(shift),
                     'physical_A_characteristic_polynomial':str(s.factor(expected)),
                     'exact_comparator_polynomial_agrees_with_independent_orbit_Hamiltonian':True,
                     'binary64_trace_error':abs(numeric_trace-float(s.trace(physical)))})
    return {'scope':'oriented right subtraction in recursive internal p<q blocks',
            'checks':rows,'all_checks_exact_except_explicit_trace_diagnostics':True}


def main():
    default = Path(__file__).resolve().parents[2]
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--Delta',default='2')
    p.add_argument('--Q',type=int,default=0)
    p.add_argument('--R',type=int,default=16)
    p.add_argument('--analytic-root',type=Path,
                   default=Path(os.environ.get('ADS3_ANALYTIC_ROOT',str(default))))
    p.add_argument('--output',type=Path)
    p.add_argument('--verify-oriented-only',action='store_true')
    args = p.parse_args()
    out = (verify_oriented_interface(args.analytic_root) if args.verify_oriented_only
           else comparison(F(args.Delta),args.Q,args.R,args.analytic_root))
    txt = json.dumps(out,indent=2)+'\n'
    if args.output:
        args.output.write_text(txt)
        keys=(['scope','all_checks_exact_except_explicit_trace_diagnostics'] if args.verify_oriented_only
              else ['Delta','fixed_Q','internal_left_cutoff_R','minimum','maximum','seconds'])
        print(json.dumps({k:out[k] for k in keys}))
    else:
        print(txt,end='')


if __name__ == '__main__':
    main()
