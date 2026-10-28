#!/usr/bin/env python3
"""Integration gates for the complete-spectrum interface.

This does not relabel cached radial integrals as new integrations. It checks
the independently generated raw Hamiltonian matrices against the final
primary/descendant/multiplicity interface, and verifies algebraic projectors,
edge cases, symbolic specialization and billion-particle compression.
"""
from __future__ import annotations
from fractions import Fraction
from pathlib import Path
import json
import time
import sympy as s

import fock_spectrum as fs
from counts import (coin_coefficient, coin_coefficients, primary_dimension,
                    level_dimension, baseline_multiplicity)

ROOT=Path(__file__).resolve().parent
g=s.Symbol('g')
a=s.Symbol('a')


def expression_from_coefficients(coefficients,variable=g):
    return s.Poly.from_list([s.sympify(c) for c in coefficients],variable).as_expr()


def aggregate_characteristic(result):
    return s.Poly(s.prod(
        expression_from_coefficients(entry['coefficients_descending'])
        **entry['multiplicity_of_every_root']
        for entry in result['pairwise_coprime_root_sets']),g)


def check():
    started=time.monotonic()
    checks=[]
    raw=json.loads((ROOT/'physics/raw_fock_results.json').read_text())
    for case in raw['cases']:
        n,p,q=case['N'],case['P'],case['Q']
        result=fs.level(case['Delta'],n,p,q)
        matrix=s.Matrix([[s.sympify(v) for v in row] for row in case['total_matrix']])
        actual=aggregate_characteristic(result['combined_spectrum'])
        assert actual==s.Poly(matrix.charpoly(g).as_expr(),g)
        assert result['complete_level_dimension']==matrix.rows
        checks.append({'test':'full raw Hamiltonian versus final interface',
                       'N':n,'P':p,'Q':q,'dimension':matrix.rows,'passed':True})

    result=fs.primary('2',4,2,2,projectors=True,verify=True)
    state=result['state_construction']
    matrix=s.Matrix(state['coordinate_matrix_for_positive_shift'])
    gram=s.Matrix(state['physical_gram'])
    proj=result['positive_spectral_projector']
    numerator=s.Matrix(proj['numerator_matrix'])
    denominator=s.sympify(proj['denominator'])
    minimal=s.Poly(proj['square_free_polynomial_in_a'],a)
    def vanish_mod(expression):
        return s.rem(s.Poly(s.expand(expression),a),minimal).is_zero
    assert all(vanish_mod(v) for v in (matrix-a*s.eye(matrix.rows))*numerator)
    assert all(vanish_mod(v) for v in numerator*numerator-denominator*numerator)
    assert matrix.T*gram==gram*matrix
    assert vanish_mod(s.trace(numerator)-denominator)
    checks.append({'test':'physical algebraic projectors modulo cubic',
                   'N':4,'P':2,'Q':2,'passed':True})
    repeated=fs.projector_formula(s.diag(1,1,2))
    numerator=s.Matrix(repeated['numerator_matrix'])
    denominator=s.sympify(repeated['denominator'])
    assert numerator.subs(a,1)/denominator.subs(a,1)==s.diag(1,1,0)
    assert numerator.subs(a,2)/denominator.subs(a,2)==s.diag(0,0,1)
    checks.append({'test':'projector with a repeated eigenvalue','passed':True})

    sets=[(),(1,),(2,),(2,3),(2,2),(1,2,3),(2,3,4),(2,3,4,5)]
    degrees=list(range(60))+[64,65,97,128,257,1000]
    for coins in sets:
        reference=coin_coefficients(coins,max(degrees))
        for degree in degrees:
            assert coin_coefficient(coins,degree)==reference[degree]
    checks.append({'test':'binary coefficient recurrence versus linear DP',
                   'exact_comparisons':len(sets)*len(degrees),'passed':True})

    # A complete scalar shell contains different particle numbers and their
    # degeneracies. The inner isolating-root metadata must agree with the
    # aggregated multiplicities, including the zero one-body energy shift.
    shell=fs.shell('2','10',0,roots=True)
    combined=shell['combined_spectrum']
    assert shell['complete_scalar_shell_dimension']==20
    assert sum(entry['degree']*entry['multiplicity_of_every_root']
               for entry in combined['pairwise_coprime_root_sets'])==20
    for entry in combined['pairwise_coprime_root_sets']:
        for factor in entry['square_free_factors']:
            assert factor['multiplicity_of_each_root']==entry['multiplicity_of_every_root']
            assert all(r['multiplicity']==entry['multiplicity_of_every_root']
                       for r in factor['real_roots'])
    (ROOT/'main/cli_shell_E10_J0.json').write_text(json.dumps(shell,indent=2)+'\n')
    checks.append({'test':'complete all-N E0=10,J=0 shell and root metadata',
                   'dimension':20,'passed':True})

    assert fs.shell('2','0',0)['complete_scalar_shell_dimension']==1
    assert fs.level('2',0,1,0)['complete_level_dimension']==0
    assert fs.level('2',1,7,3)['combined_spectrum']['total_dimension']==1
    swapped=fs.primary('2',2,0,2,states=True)
    assert swapped['polynomial_state_chiralities_must_be_exchanged_back']
    assert swapped['state_construction']['primary_polynomial']=='(z1-z2)^2*(w1-w2)^0'
    assert s.Rational(swapped['state_construction']['physical_norm_squared'])>0
    assert primary_dimension(3,1,0)==0
    assert fs.primary('3/2',3,3,2,verify=True)['primary_dimension']==2
    checks.append({'test':'vacuum, one body, exchanged chirality and removable-gap cases',
                   'passed':True})

    symbolic=fs.primary('symbolic',4,2,2)
    gap=next(iter(s.sympify(symbolic['baseline_g']).free_symbols))
    coefficients=[s.sympify(c).subs(gap,s.Rational(3,2))
                  for c in symbolic['positive_shift_coefficients_descending']]
    specialized=fs.primary('3/2',4,2,2)
    assert all(s.cancel(v-s.sympify(w))==0 for v,w in
               zip(coefficients,specialized['positive_shift_coefficients_descending']))
    checks.append({'test':'generic Delta polynomial specialized at Delta=3/2',
                   'passed':True})

    huge=fs.primary('2',10**9,2,2,projectors=True,verify=True)
    assert huge['backend']=='stable'
    assert huge['primary_dimension']==3
    assert level_dimension(10**9,2,2)==9
    assert primary_dimension(3,10**9,6)==1166666668
    assert baseline_multiplicity(3,10**9,6)==1166666645
    checks.append({'test':'both billion-scale compression directions',
                   'billion_particle_primary_dimension':3,
                   'billion_excitation_positive_rank':23,'passed':True})

    compact=fs.primary('3/2',3,3,2,method='racah',projectors=True,verify=True)
    assert compact['backend']=='racah'
    metric=s.Matrix(compact['state_construction']['physical_gram'])
    h=s.Matrix(compact['state_construction']['coordinate_matrix_for_positive_shift'])
    assert h.T*metric==metric*h
    assert metric.det()>0 and metric[0,0]>0
    checks.append({'test':'compact Racah state/projector dispatch with auxiliary zero modes',
                   'Delta':'3/2','P':3,'Q':2,'passed':True})
    compact_huge=fs.primary('2',3,10**9,6,states=True)
    previous=json.loads((ROOT/'main/cli_n3_billion_6.json').read_text())
    assert compact_huge['backend']=='racah'
    assert compact_huge['positive_shift_coefficients_descending']==previous['positive_shift_coefficients_descending']
    assert compact_huge['baseline_state_family']['multiplicity']==1166666645
    assert sum(item['number_of_states'] for item in compact_huge['baseline_state_family']['families'])==1166666645
    assert len(compact_huge['state_construction']['physical_gram'])==23
    (ROOT/'main/cli_n3_billion_6_states.json').write_text(json.dumps(compact_huge,indent=2)+'\n')
    checks.append({'test':'compact full state families at billion left excitation',
                   'positive_basis_dimension':23,'baseline_multiplicity':1166666645,
                   'no_large_degree_expansion':True,'passed':True})
    return {'all_passed':True,'checks':checks,'elapsed_seconds':time.monotonic()-started,
            'scope':'Final interface and packaged data integration; no newly recomputed radial integrals in this script.'}


if __name__=='__main__':
    result=check()
    output=ROOT/'main/integration_results.json'
    output.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'all_passed':result['all_passed'],'checks':len(result['checks']),
                      'elapsed_seconds':result['elapsed_seconds'],'saved':str(output)}))
