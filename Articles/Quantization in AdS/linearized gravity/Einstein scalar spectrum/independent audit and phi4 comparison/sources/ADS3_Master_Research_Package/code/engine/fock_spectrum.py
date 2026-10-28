#!/usr/bin/env python3
"""Complete finite-level O(G) Einstein-scalar spectrum on the dressed scalar branch.

The physical scalar gap is Delta>1 and all reported energies use
E=E0+G*g+o(G). Completeness refers to the dressed scalar branch with no
independent free boundary-graviton excitations. Virtual boundary-graviton
exchange and constraint backreaction enter the matched dynamical two-body
input. The original quantum prescription is fixed.

Subcommands:
  primary : one (N,P,Q) global-primary space;
  level   : every global primary and descendant in a full (N,P,Q) level;
  shell   : every particle number in one rational free-energy / spin shell;
  counts  : dimensions and exact Casimir-bound multiplicity without matrices;
  bound   : the complete explicit logarithmic-frame bound-state basis;
  stable  : one exact affine pencil for every N>=max(1,P+Q).

Exact roots are specified by square-free polynomials and multiplicities.
--roots adds disjoint rational isolating intervals; --states returns finite
polynomial generators plus the exact eigenvector rule; --projectors constructs
an exact spectral-projector formula valid at every algebraic positive root.
Rational gaps are accepted directly. --delta symbolic returns rational
functions valid for every real Delta>1; specialize before isolating roots.
"""
from __future__ import annotations

import argparse
from fractions import Fraction
from pathlib import Path
import json
import sys
import time

ROOT=Path(__file__).resolve().parent
for directory in ('main','general','three'):
    sys.path.insert(0,str(ROOT/directory))

import sympy as s
from counts import (primary_dimension,level_dimension,baseline_multiplicity,
                    auxiliary_dimension,positive_rank_leading_coefficient)
from fock_exact import (primary_hamiltonian,occupation_basis,einstein_pair,
                        qsym,baseline,orbit_gram,mono_norm)

x=s.Symbol('x')
g=s.Symbol('g')


def serial_matrix(matrix):
    return [[str(s.cancel(v)) for v in matrix.row(i)] for i in range(matrix.rows)]


def strip_zero_roots(poly):
    poly=s.Poly(poly,x)
    zero=min(m[0] for m,c in poly.terms() if c)
    return s.Poly(poly.as_expr()/x**zero,x).monic(),zero


def spectrum_polynomial(poly,shift=0,roots=False,digits=16):
    """Square-free factors identify exact eigenvalues and their multiplicities."""
    poly=s.Poly(poly,g).monic()
    answer={'polynomial':str(poly.as_expr()),
            'coefficients_descending':[str(c) for c in poly.all_coeffs()],
            'degree':poly.degree(),'square_free_factors':[]}
    if poly.degree()==0:
        return answer
    for factor,multiplicity in s.sqf_list(poly)[1]:
        entry={'polynomial':str(factor.as_expr()),
               'coefficients_descending':[str(c) for c in factor.all_coeffs()],
               'multiplicity_of_each_root':int(multiplicity)}
        if roots and not any(c.free_symbols for c in factor.all_coeffs()):
            intervals=s.polys.polytools.intervals(factor,
                            eps=s.Rational(1,10**digits))
            if sum(m for _,m in intervals)!=factor.degree():
                raise ArithmeticError('A physical characteristic polynomial has nonreal roots.')
            entry['real_roots']=[{'left':str(a),'right':str(b),
                                 'decimal':str(s.N((a+b)/2,digits)),
                                 'multiplicity':int(multiplicity*m)}
                                for (a,b),m in intervals]
        answer['square_free_factors'].append(entry)
    return answer


def projector_formula(matrix):
    """Lagrange spectral projectors without choosing numerical eigenvectors.

    For any root a of the square-free characteristic polynomial m, the matrix
    [m(t)/(t-a)]_(t=M) / m'(a) is the exact projector. The remainder m(a)
    vanishes. This works with repeated eigenvalues because M is semisimple.
    """
    a=s.Symbol('a');t=s.Symbol('t')
    if not matrix.rows:
        return {'dimension':0,'rule':'No positive spectral subspace.'}
    minimal=s.Poly(matrix.charpoly(t).as_expr(),t).sqf_part().monic()
    coefficients=minimal.all_coeffs()
    # Synthetic division by t-a; entries are polynomials in the formal root a.
    quotient=[coefficients[0]]
    for c in coefficients[1:-1]:
        quotient.append(s.expand(c+a*quotient[-1]))
    identity=s.eye(matrix.rows)
    numerator=quotient[0]*identity
    for c in quotient[1:]:
        numerator=(numerator*matrix+c*identity).applyfunc(s.expand)
    denominator=s.diff(minimal.as_expr(),t).subs(t,a)
    return {'dimension':matrix.rows,'parameter':'a is any root of the polynomial below',
            'square_free_polynomial_in_a':str(minimal.as_expr().subs(t,a)),
            'denominator':str(denominator),'numerator_matrix':serial_matrix(numerator),
            'rule':'Divide the numerator by the denominator. Its columns span exactly the a-eigenspace in the reported coordinate basis. Apply the state embedding and normalize in its physical Gram.'}


def positive_image(matrix):
    """Restrict a semisimple positive operator to its actual image."""
    pivots=list(matrix.rref()[1])
    image=matrix.extract(range(matrix.rows),pivots)
    if not pivots:
        return s.zeros(0),image
    rows=list(image.T.rref()[1])
    coordinates=image.extract(rows,range(image.cols)).inv()
    return coordinates*(matrix*image).extract(rows,range(image.cols)),image


def stable_gram(delta,n,p,q):
    from collections import Counter
    from math import factorial,prod
    from stable_n import excited_basis
    diagonal=[]
    for modes in excited_basis(p,q):
        counts=Counter(modes)
        norm=s.prod(s.factorial(m)*qsym(mono_norm(delta,a)*mono_norm(delta,b))**m
                    for (a,b),m in counts.items())
        falling=s.prod(n-j for j in range(len(modes)))
        diagonal.append(s.cancel(norm/falling))
    return s.diag(*diagonal)


def primary(delta,n,p,q,method='auto',roots=False,states=False,
            projectors=False,verify=False,digits=16):
    if any(not isinstance(v,int) or v<0 for v in (n,p,q)):
        raise ValueError('N,P,Q must be nonnegative integers.')
    if delta!='symbolic' and Fraction(str(delta))<=1:
        raise ValueError('The physical branch requires Delta>1.')
    started=time.monotonic()
    # Projectors are useful only together with their physical coordinate map.
    states=states or projectors
    dimension=primary_dimension(n,p,q)
    symbolic=delta=='symbolic'
    d=s.Symbol('Delta',positive=True) if symbolic else s.Rational(str(delta))
    original=(p,q)
    # The eigenvalues are left/right symmetric; explicit polynomial embeddings
    # below specify if they use the exchanged order.
    P,Q=max(p,q),min(p,q)
    bound=0 if n<2 else s.cancel(2*n*d*(d-2)-8*(n*d/2+Q)*(n*d/2+Q-1))
    kernel=dimension if n<2 else baseline_multiplicity(n,P,Q)
    positive=s.zeros(0);poly=s.Poly(1,x);extra={}
    selected='trivial'
    if dimension and n>=2:
        if n==2:
            correction=s.cancel(einstein_pair(d,p,q))
            if correction!=bound:
                positive=s.Matrix([[s.cancel(correction-bound)]])
                poly=s.Poly(x-(correction-bound),x)
            selected='two-body formula'
            if states:
                extra['state_construction']={'primary_polynomial':f'(z1-z2)^{P}*(w1-w2)^{Q}',
                    'normalization':'Divide this polynomial by the positive square root of physical_norm_squared.',
                    'physical_norm_squared':str(s.cancel(s.factorial(P)*s.rf(2*d+P-1,P)/s.rf(d,P)**2
                                                 *s.factorial(Q)*s.rf(2*d+Q-1,Q)/s.rf(d,Q)**2))}
        else:
            aux=auxiliary_dimension(n,P,Q)
            if method=='auto':
                if n>=max(3,P+Q):
                    selected='stable'
                elif n==3:
                    selected='racah'
                elif symbolic:
                    selected='orbit'
                else:
                    selected='gram' if aux<dimension else 'orbit'
            else:
                selected=method
            if selected=='racah':
                if n!=3:
                    raise ValueError('The closed Racah backend requires N=3.')
                from three_body_nonchiral import compressed_matrix
                matrix,labels,potentials,bound=compressed_matrix(d,P,Q)
                poly,discarded=strip_zero_roots(matrix.charpoly(x).as_expr())
                # The large-degree spectral path does not compute an rref.
                extra.update(auxiliary_dimension=matrix.rows,
                             discarded_auxiliary_zeros=discarded,
                             channels=labels)
                if states:
                    from racah_states import compact_states
                    compact=compact_states(d,P,Q,verify=verify,
                                           include_characteristic_polynomial=False)
                    positive=s.Matrix(compact['positive_image_matrix']) if compact['positive_rank'] else s.zeros(0)
                    extra['state_construction']={
                        **compact['state_construction'],
                        'channels':compact['channels'],
                        'omega_diagonal':compact['omega_diagonal'],
                        'positive_pair_residuals':compact['positive_pair_residuals'],
                        'image_embedding':compact['image_embedding'],
                        'image_embedding_convention':compact['image_embedding_convention']}
                    extra['baseline_state_family']=compact['baseline_state_family']
                    extra['physical_projector_lift']=compact['projector_lift']
                if verify and not symbolic:
                    hp,_,_=primary_hamiltonian(Fraction(str(d)),n,P,Q,verify=True)
                    assert s.expand((hp-bound*s.eye(dimension)).charpoly(x).as_expr()
                                    -x**kernel*poly.as_expr())==0
            elif selected=='gram':
                if symbolic:
                    raise ValueError('Use the symbolic orbit backend for this input.')
                from pair_gram import compressed_spectrum
                result=compressed_spectrum(Fraction(str(d)),n,P,Q,
                                           verify=verify,states=states)
                poly=s.Poly.from_list([s.Rational(c) for c in result['nonzero_coefficients_descending']],x)
                positive=s.Matrix([[s.Rational(c) for c in row]
                                   for row in result['positive_image_matrix']]) if result['positive_rank'] else s.zeros(0)
                extra.update(auxiliary_dimension=result['auxiliary_dimension'],
                             discarded_auxiliary_zeros=result['discarded_auxiliary_zeros'],
                             channels=result['channels'])
                if states:
                    extra['state_construction']={k:result[k] for k in
                       ('state_generators','independent_image_columns','state_rule',
                        'bose_gram_times_pair_count')}
                    extra['state_construction']['coordinate_matrix_for_positive_shift']=serial_matrix(positive)
            elif selected in ('orbit','stable'):
                gap=d if symbolic else Fraction(str(d))
                if selected=='stable':
                    if n<max(1,P+Q):
                        raise ValueError('The stable backend requires N>=P+Q (and N>=1).')
                    from stable_n import stable_primary_hamiltonian,excited_basis
                    hp,basis,hfull=stable_primary_hamiltonian(gap,P,Q,n=s.Integer(n))
                    metric=stable_gram(gap,n,P,Q)
                    if verify:
                        assert all(s.cancel(c)==0 for c in hfull.T*metric-metric*hfull)
                else:
                    hp,basis,hfull=primary_hamiltonian(gap,n,P,Q,verify=verify)
                    metric=orbit_gram(gap,n,P,Q) if states else None
                shifted=(hp-bound*s.eye(dimension)).applyfunc(s.cancel)
                poly,discarded=strip_zero_roots(shifted.charpoly(x).as_expr())
                extra['full_occupation_dimension']=hfull.rows
                if projectors or states:
                    positive,embedding=positive_image(shifted)
                    if states:
                        embedded=basis*embedding
                        extra['state_construction']={
                            'positive_primary_basis_columns':[list(map(str,embedded.col(i))) for i in range(embedded.cols)],
                            'coordinate_matrix_for_positive_shift':serial_matrix(positive),
                            'physical_gram':serial_matrix(embedded.T*metric*embedded),
                            'rule':'For each positive root x, take a basis of ker(coordinate_matrix_for_positive_shift-x I), multiply by positive_primary_basis_columns, and normalize with physical_gram. Orbit polynomials sum DISTINCT simultaneous permutations.'}
                        if selected=='stable':
                            extra['state_construction']['basis_nonzero_modes']=[[list(pair) for pair in state] for state in excited_basis(P,Q)]
                            extra['state_construction']['basis_convention']='Averaged orbit polynomials: divide each distinct orbit sum by its orbit size; ground occupation is N minus the number of listed excited particles. This convention replaces the orbit-sum convention in the general rule.'
                        else:
                            extra['state_construction']['orbit_basis']=[[list(pair) for pair in state] for state in occupation_basis(n,P,Q)]
            else:
                raise ValueError(f'Unknown backend {selected!r}.')
    elif states and dimension:
        extra['state_construction']={'primary_polynomial':'1',
                                      'interpretation':'vacuum' if n==0 else 'one-particle ground primary'}
    if poly.degree()!=dimension-kernel:
        raise ArithmeticError('Computed positive rank differs from the all-index kernel theorem.')
    energy_poly=s.Poly(poly.as_expr().subs(x,g-bound),g)
    result={'N':n,'P':p,'Q':q,'Delta':str(d),'domain':'Delta>1',
            'E0_primary':str(n*d+p+q),'energy_convention':'E=E0+G*g+o(G)',
            'primary_dimension':dimension,'baseline_g':str(bound),
            'baseline_multiplicity':kernel,'positive_rank':dimension-kernel,
            'positive_shift_polynomial':str(poly.as_expr()),
            'positive_shift_coefficients_descending':[str(c) for c in poly.all_coeffs()],
            'remaining_g_spectrum':spectrum_polynomial(energy_poly,roots=roots,digits=digits),
            'backend':selected,'calculation_chiralities':[P,Q],
            'polynomial_state_chiralities_must_be_exchanged_back':original!=(P,Q),
            **extra}
    if kernel and n>=2:
        result['baseline_state_rule']='The complete explicit basis is given by the bound subcommand / logarithmic_states.py; multiply the reported quotient by V_N(z)^4 and exchange chiralities back if requested P<Q.'
    if projectors:
        result['positive_spectral_projector']=projector_formula(positive)
    if symbolic:
        result['specialization_rule']='The rational-function characteristic polynomial is valid on Delta>1 after removing removable factors. Specialize Delta and recompute square-free factors, gcds, spectral projectors and image pivots at eigenvalue coincidences or pivot zeros; generic multiplicities and projectors need not commute with specialization.'
    result['elapsed_seconds']=time.monotonic()-started
    return result


def aggregate_spectra(blocks,roots=False,digits=16):
    """Merge coincident algebraic roots exactly, including descendants.

    Pairwise polynomial gcd splits square-free pieces into disjoint root sets.
    A large repeated Casimir-bound eigenspace stays a linear factor with a
    multiplicity; its expanded characteristic polynomial is never formed.
    """
    pieces=[]
    def insert(polynomial,multiplicity):
        nonlocal pieces
        remaining=s.Poly(polynomial,g).monic()
        if not multiplicity or remaining.degree()==0:
            return
        updated=[]
        for old,old_multiplicity in pieces:
            shared=s.gcd(old,remaining).monic()
            if shared.degree():
                old_only=old.exquo(shared)
                if old_only.degree():
                    updated.append((old_only,old_multiplicity))
                updated.append((shared,old_multiplicity+multiplicity))
                remaining=remaining.exquo(shared)
            else:
                updated.append((old,old_multiplicity))
        if remaining.degree():
            updated.append((remaining,multiplicity))
        pieces=updated
    for block in blocks:
        if block['baseline_multiplicity']:
            insert(g-s.sympify(block['baseline_g']),block['baseline_multiplicity'])
        for factor in block['remaining_g_spectrum']['square_free_factors']:
            polynomial=s.Poly.from_list([s.sympify(c) for c in factor['coefficients_descending']],g)
            insert(polynomial,factor['multiplicity_of_each_root'])
    dimension=sum(poly.degree()*mult for poly,mult in pieces)
    if dimension!=sum(block['primary_dimension'] for block in blocks):
        raise ArithmeticError('Exact algebraic multiplicity aggregation lost states.')
    spectra=[]
    for poly,mult in pieces:
        entry={'multiplicity_of_every_root':mult,
               **spectrum_polynomial(poly,roots=roots,digits=digits)}
        for factor in entry['square_free_factors']:
            factor['multiplicity_of_each_root']=mult
            for root in factor.get('real_roots',[]):
                root['multiplicity']=mult
        spectra.append(entry)
    return {'total_dimension':dimension,'pairwise_coprime_root_sets':spectra,
            'meaning':'Each displayed polynomial is square-free and distinct entries have no common roots. Thus these are the complete exact energy corrections and their summed physical multiplicities.'}


def level(delta,n,p,q,**options):
    d=s.Symbol('Delta',positive=True) if delta=='symbolic' else s.Rational(str(delta))
    blocks=[]
    if n==0:
        if p==q==0:
            blocks.append(primary(delta,0,0,0,**options))
    else:
        for a in range(p+1):
            for b in range(q+1):
                if primary_dimension(n,a,b):
                    block=primary(delta,n,a,b,**options)
                    block['descendant_left_level']=p-a
                    block['descendant_right_level']=q-b
                    block['descendant_rule']='Apply (L_+)^left*(R_+)^right to the primary; each normalized global descendant has the same g.'
                    blocks.append(block)
    total=sum(block['primary_dimension'] for block in blocks)
    if total!=level_dimension(n,p,q):
        raise ArithmeticError('The primary/descendant decomposition misses a Fock state.')
    return {'N':n,'P':p,'Q':q,'Delta':str(d),'E0':str(n*d+p+q),
            'spin':p-q,'complete_level_dimension':total,
            'primary_and_descendant_blocks':blocks,
            'combined_spectrum':aggregate_spectra(blocks,roots=options.get('roots',False),digits=options.get('digits',16)),
            'multiplicity_rule':'Take the multiset union of all block spectra; equal g values in distinct blocks add their multiplicities. This is the complete scalar level on the dressed branch with no independent free boundary-graviton excitations; virtual gravitational effects enter the matched pair interaction through order G.',
            'exact_multiplicity_method':'For rational Delta, coincident roots of different square-free factors are recognized by their polynomial gcd, then isolated with rational intervals.'}


def shell(delta,energy,spin,**options):
    if delta=='symbolic':
        raise ValueError('A fixed numerical free-energy shell requires a rational Delta.')
    d=Fraction(str(delta));energy=Fraction(str(energy));spin=int(spin)
    if energy<0:
        raise ValueError('The vacuum-subtracted free energy must be nonnegative.')
    blocks=[]
    for n in range(energy//d+1):
        if n==0:
            if energy==0 and spin==0:
                blocks.append(level(delta,0,0,0,**options))
            continue
        p=(energy-n*d+spin)/2;q=(energy-n*d-spin)/2
        if min(p,q)>=0 and p.denominator==q.denominator==1:
            blocks.append(level(delta,n,int(p),int(q),**options))
    primaries=[primary_block for block in blocks
               for primary_block in block['primary_and_descendant_blocks']]
    return {'Delta':str(d),'E0':str(energy),'spin':spin,
            'complete_scalar_shell_dimension':sum(b['complete_level_dimension'] for b in blocks),
            'particle_number_blocks':blocks,
            'combined_spectrum':aggregate_spectra(primaries,roots=options.get('roots',False),digits=options.get('digits',16)),
            'closure_statement':'Every scalar particle number in this free-energy/spin shell is included on the dressed scalar branch with no independent free boundary-graviton excitations. The order-G normal form preserves N even at integer Delta.'}


def bound_states(delta,n,p,q,verify=False):
    if n<2:
        raise ValueError('The logarithmic-bound construction requires N>=2. Use primary or level for the vacuum and one-particle sectors.')
    if delta=='symbolic':
        raise ValueError('Explicit bound-state quotients currently accept rational gaps; the symbolic theorem is in the report.')
    from logarithmic_states import kernel_labels,generate_quotient,verify_pair_flags
    P,Q=max(p,q),min(p,q);gap=Fraction(str(delta))
    labels=kernel_labels(n,P,Q) if n>=2 else []
    assert len(labels)==baseline_multiplicity(n,P,Q)
    entries=[]
    for label in labels:
        quotient=generate_quotient(gap,n,P,Q,label)
        entry={'elementary_exponents':label[0],'theta_exponents':label[1],
               'quotient':str(quotient)}
        if verify:
            entry['pair_flag_verification']=verify_pair_flags(gap,n,Q,quotient)
        entries.append(entry)
    return {'N':n,'P':p,'Q':q,'Delta':str(gap),'multiplicity':len(labels),
            'g':str(baseline(gap,n,Q)),'state_chiralities':[P,Q],
            'exchange_chiralities_back':p<q,
            'coordinates':'xi=zi-zN, yi=wi-wN, i=1,...,N-1',
            'wavefunction':'Psi=V_N(z)^4 * quotient; then exchange z,w if required.',
            'basis':entries}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    sub=parser.add_subparsers(dest='command',required=True)
    for name in ('primary','level','shell','counts','bound','stable'):
        a=sub.add_parser(name)
        a.add_argument('--delta',default='2')
        if name=='shell':
            a.add_argument('--energy',required=True)
            a.add_argument('--spin',type=int,default=0)
        else:
            if name!='stable':
                a.add_argument('--n',type=int,required=True)
            a.add_argument('--p',type=int,required=True)
            a.add_argument('--q',type=int,default=0)
        a.add_argument('--output',type=Path)
        if name in ('primary','level','shell'):
            a.add_argument('--method',choices=('auto','orbit','gram','racah','stable'),default='auto')
            a.add_argument('--roots',action='store_true')
            a.add_argument('--states',action='store_true')
            a.add_argument('--projectors',action='store_true')
            a.add_argument('--digits',type=int,default=16)
        if name not in ('counts','stable'):
            a.add_argument('--verify',action='store_true')
    args=parser.parse_args()
    if args.delta!='symbolic' and Fraction(args.delta)<=1:
        parser.error('The physical branch requires Delta>1.')
    if args.command not in ('shell','stable') and min(args.n,args.p,args.q)<0:
        parser.error('N,P,Q must be nonnegative integers.')
    if args.command=='stable':
        if min(args.p,args.q)<0:
            parser.error('P,Q must be nonnegative.')
        from stable_n import stable_spectrum
        delta=s.Symbol('Delta',positive=True) if args.delta=='symbolic' else Fraction(args.delta)
        result=stable_spectrum(delta,args.p,args.q)
    elif args.command=='counts':
        n,p,q=args.n,args.p,args.q
        k=baseline_multiplicity(n,p,q) if n>=2 else primary_dimension(n,p,q)
        result={'N':n,'P':p,'Q':q,'primary_dimension':primary_dimension(n,p,q),
                'full_level_dimension':level_dimension(n,p,q),
                'Casimir_bound_multiplicity':k,
                'positive_rank':primary_dimension(n,p,q)-k,
                'auxiliary_dimension':auxiliary_dimension(n,p,q)}
        if 3<=n<=20:
            result['fixed_smaller_chirality_rank_leading_coefficient']=str(positive_rank_leading_coefficient(n,min(p,q)))
        elif n>20:
            result['asymptotic_metadata']='The fixed-N high-P coefficient is given symbolically in main/counts.py and the report; it is not expanded into factorial(N) for this stable-degree query.'
    elif args.command=='bound':
        result=bound_states(args.delta,args.n,args.p,args.q,verify=args.verify)
    else:
        options={key:getattr(args,key) for key in ('method','roots','states','projectors','verify','digits')}
        if args.command=='shell':
            result=shell(args.delta,args.energy,args.spin,**options)
        else:
            function=primary if args.command=='primary' else level
            result=function(args.delta,args.n,args.p,args.q,**options)
    payload=json.dumps(result,ensure_ascii=False,indent=2,default=str)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(payload,encoding='utf-8')
        print(json.dumps({'saved':str(args.output),'command':args.command},ensure_ascii=False))
    else:
        print(payload,end='')


if __name__=='__main__':
    main()
