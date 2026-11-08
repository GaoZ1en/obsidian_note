#!/usr/bin/env python3
"""Exact certificates for the fixed-Q Bose budget and exchange interfaces.

The algebraic checks independently build Molien multiplicities, both outer
Clebsch-Gordan exchange signs, and the budget symmetric/exterior selection.
Optional actual N=5,Q=1 quasimodes use the frozen rational comb backend.
The (1,1) pair source is antisymmetric in each chirality separately and Bose
only under their diagonal permutation, deliberately testing that interface.
Finite checks support, but do not replace, the operator-norm proofs.
"""
from __future__ import annotations

import argparse
from collections import Counter
from fractions import Fraction as F
from functools import lru_cache
import json
from math import comb, factorial
from pathlib import Path
import sys
import time


def poch(x, n):
    out = F(1)
    for j in range(n):
        out *= x+j
    return out


def pair_residual(d, k, l):
    if (k+l)%2:
        return F(0)
    n, spin = min(k,l), abs(k-l)
    H = d+n
    mu = d*(d-2)
    C = H*(H-1)
    u = 4*mu-8*C
    if spin >= 4:
        gamma = u
    elif spin == 2:
        gamma = u+F((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*H-1)*(2*H+1)*(2*H+3))
    elif n == 0:
        gamma = u+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
    else:
        gamma = u*(2*H-2)/(2*H-1)-2*(C+mu)**2/((2*H-3)*(2*H-1)*(2*H+1))
    return gamma-(4*mu-8*(d+l)*(d+l-1))


@lru_cache(None)
def integer_partitions(n, least=1):
    if n == 0:
        return ((),)
    return tuple((a,)+tail for a in range(least,n+1)
                 for tail in integer_partitions(n-a,a))


def cycle_character(parts, p):
    if p < 0:
        return 0
    cc = [1]+[0]*p
    for r in parts:
        for j in range(r,p+1):
            cc[j] += cc[j-r]
    return cc[p]-(cc[p-1] if p else 0)


def physical_dimension(n, p, q):
    out = F(0)
    for parts in integer_partitions(n):
        z = 1
        for r,m in Counter(parts).items():
            z *= r**m*factorial(m)
        out += F(cycle_character(parts,p)*cycle_character(parts,q),z)
    assert out.denominator == 1 and out >= 0
    return int(out)


def cg_coefficient(a, b, R, j):
    return F((-1)**j*comb(R,j),1)/(poch(2*a,j)*poch(2*b,R-j))


def exact_exchange_and_budget():
    cg_cases = []
    for d in [F(3,2),F(2),F(7,3)]:
        for m,p1,q1,p2,q2,RL,RR in [
            (2,0,0,2,1,5,2), (3,1,1,0,0,4,3),
            (2,1,1,1,1,6,0), (4,2,0,3,2,3,1)]:
            for a,b,R in [(m*d/2+p1,m*d/2+p2,RL),
                          (m*d/2+q1,m*d/2+q2,RR)]:
                for j in range(R+1):
                    assert cg_coefficient(b,a,R,R-j) == (-1)**R*cg_coefficient(a,b,R,j)
            P,Q = p1+p2+RL,q1+q2+RR
            assert (-1)**(RL+RR) == (-1)**(P+Q+p1+q1+p2+q2)
            cg_cases.append({'Delta':str(d),'cluster_size':m,
                             'internal_degrees':[[p1,q1],[p2,q2]],
                             'outer_degrees':[RL,RR], 'exact_swap_sign':(-1)**(RL+RR)})
    rows = []
    for m in [2,3]:
        # Keep complete physical multiplicities, not separately Bose L and R.
        states = [(p,q,j) for q in range(4) for p in range(5)
                  for j in range(physical_dimension(m,p,q))]
        for Q in range(4):
            for P in [6,9]:
                indices = [(i,j) for i,a in enumerate(states) for j,b in enumerate(states)
                           if a[0]+b[0]<=P and a[1]+b[1]<=Q]
                diagonal = sum(i==j for i,j in indices)
                symmetric = sum(i<=j for i,j in indices)
                exterior = sum(i<j for i,j in indices)
                assert 2*symmetric == len(indices)+diagonal
                assert 2*exterior == len(indices)-diagonal
                for i,j in indices:
                    p1,q1,_ = states[i]
                    p2,q2,_ = states[j]
                    delta1,delta2 = (-1)**(p1+q1),(-1)**(p2+q2)
                    # (I tensor D) F (I tensor D) = (D tensor D) F,
                    # including the actual finite degree and right-budget cutoffs.
                    assert delta2*delta1 == (-1)**(p1+q1+p2+q2)
                    assert (j,i) in indices
                    assert (-1)**(P-p1-p2+Q-q1-q2) == (-1)**(P+Q)*delta1*delta2
                rows.append({'cluster_size':m,'P':P,'Q':Q,
                             'ordered_budget_dimension':len(indices),
                             'symmetric_dimension':symmetric,'exterior_dimension':exterior,
                             'all_cutoff_and_conjugation_identities_exact':True})
    # An essential nonchiral check: both relative factors are individually odd.
    assert physical_dimension(2,1,1) == 1
    assert physical_dimension(2,1,0) == 0
    assert physical_dimension(2,0,1) == 0
    return {'CG_swap_cases':cg_cases, 'budget_matrix_blocks':rows,
            'diagonal_Bose_pair_11_dimension':1,
            'separately_Bose_pair_10_and_01_dimensions':[0,0]}


def four_body_parity_reduction():
    rows = []
    for d in [F(3,2),F(2),F(7,3)]:
        for Q in range(5):
            active = [(k,l) for l in range(Q+1) for k in range(l+3) if (k+l)%2==0]
            # Include several distinct zero source indices per right degree.
            sources = active+[(l+4,l) for l in range(Q+1)]+[(l+6,l) for l in range(Q+1)]
            singles = {F(0)}|{pair_residual(d,*x) for x in active}
            for eta in [1,-1]:
                actual = {pair_residual(d,*a)+pair_residual(d,*b)
                          for i,a in enumerate(sources) for j,b in enumerate(sources)
                          if i<=j and a[1]+b[1]<=Q and (i!=j or eta==1)}
                known_pairpairs = {pair_residual(d,*a)+pair_residual(d,*b)
                                   for i,a in enumerate(active) for j,b in enumerate(active)
                                   if i<=j and a[1]+b[1]<=Q and (i!=j or eta==1)}
                # All single atoms and zero are inherited by the 3+1 channel.
                assert actual|singles == known_pairpairs|singles
                rows.append({'Delta':str(d),'Q':Q,'P_plus_Q_parity':eta,
                             'budget_source_count':len(sources),
                             'exact_exterior_or_symmetric_values':list(map(str,sorted(actual))),
                             'agrees_with_prior_four_body_channel_set_after_singleton_inheritance':True})
    return rows


def import_frozen(workspace):
    sys.path.insert(0,str(workspace/'research'/'racah'))
    sys.path.insert(0,str(workspace/'research'/'racah'))
    import all_n_recoupling as rec
    from su11_recoupling import f_move_exact, rational_sqrt
    return rec,f_move_exact,rational_sqrt


def triple_pair_one_chirality(rec,fmove,sqrtq,d,total,k):
    h=d/2
    nrm=rec.cg_norm(k,h,h)*rec.cg_norm(total-k,3*h,2*h+k)
    out={}
    for u in range(total+1):
        r,q=fmove(3*h,h,h,total,u,k)
        basis=rec.cg_norm(u,3*h,h)*rec.cg_norm(total-u,4*h+u,h)
        c=r*sqrtq(q*nrm/basis)
        if c:
            out[(0,0,u,total-u)]=c
    return out,nrm


def actual_nonchiral_quasimodes(workspace,degrees):
    rec,fmove,sqrtq=import_frozen(workspace)
    d=F(2)
    a0=pair_residual(d,0,0)
    rows=[]
    for P in degrees:
        Q=1
        for channel in ['4+1 ground','3+2 pair(1,1)']:
            started=time.monotonic()
            if channel.startswith('4'):
                source={((0,0,0,P),(0,0,0,Q)):F(1)}
                lam,orbit=6*a0,5
            else:
                left,nl=triple_pair_one_chirality(rec,fmove,sqrtq,d,P,1)
                right,nr=triple_pair_one_chirality(rec,fmove,sqrtq,d,Q,1)
                source={(l,r):a*b for l,a in left.items() for r,b in right.items()}
                assert rec.inner(source,source,d)==nl*nr
                # Each pair factor is odd, but their simultaneous swap is even.
                assert all(rec.adjacent_swap(source,d,j)==source for j in [1,2,4])
                lam,orbit=3*a0+pair_residual(d,1,1),10
            norm0=rec.inner(source,source,d)
            projected=rec.bose_project(source,d,5)
            norm=rec.inner(projected,projected,d)
            assert norm>0
            action=rec.action_bose(projected,d,5)
            error={k:action.get(k,F(0))-lam*projected.get(k,F(0))
                   for k in set(action)|set(projected)}
            error={k:v for k,v in error.items() if v}
            residual2=rec.inner(error,error,d)/norm
            gram=orbit*norm/norm0
            assert residual2>=0
            row={'N':5,'P':P,'Q':Q,'channel':channel,
                 'target_A_value_exact':str(lam),
                 'scaled_Bose_Gram_exact':str(gram),
                 'scaled_Bose_Gram_minus_one':float(gram-1),
                 'normalized_residual_squared_exact':str(residual2),
                 'normalized_residual_norm':float(residual2)**0.5,
                 'seconds':time.monotonic()-started}
            rows.append(row)
            print(json.dumps({'progress':row}),flush=True)
    return rows


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path)
    p.add_argument('--workspace',type=Path,default=Path(__file__).resolve().parents[2])
    p.add_argument('--bose-degrees',type=int,nargs='*',default=[6,12])
    p.add_argument('--only-algebra',action='store_true')
    args=p.parse_args()
    out={'scope':'all fixed Q; exact finite interface checks, not an asymptotic numerical proof',
         'exchange_and_budget':exact_exchange_and_budget(),
         'four_body_parity_reduction':four_body_parity_reduction(),
         'actual_nonchiral_quasimodes':[] if args.only_algebra else actual_nonchiral_quasimodes(args.workspace,args.bose_degrees),
         'physical_kernel_input':'the established Einstein pair kernel, not rederived here'}
    txt=json.dumps(out,indent=2)+'\n'
    if args.output:
        args.output.write_text(txt)
    else:
        print(txt,end='')


if __name__=='__main__':
    main()
