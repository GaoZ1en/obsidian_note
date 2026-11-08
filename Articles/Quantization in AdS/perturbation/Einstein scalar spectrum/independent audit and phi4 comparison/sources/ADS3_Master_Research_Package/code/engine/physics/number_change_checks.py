#!/usr/bin/env python3
"""Original circular K4 extraction at the integer-mass 1->3 resonances.

No Ward identity or spectrum coefficient is supplied to the evaluator.
The boundary four-leg term vanishes by angular selection for these circular
external legs.  This tests nontrivial cancellation among the six constraint
pairings.  The general noncircular proof is separately supplied by the Ward
and irreducibility theorem, not inferred from this finite test.
"""
from __future__ import annotations
import itertools
import json
from collections import Counter
from pathlib import Path
import sympy as s
import raw_canonical as raw


def one_to_three(delta, outgoing):
    # Simultaneous energy and angular conservation fixes n_in for j=0.
    incoming=int(delta)+sum(outgoing)
    legs=tuple((n,-1) for n in outgoing)+((incoming,1),)
    pairings=[raw.integrated_pair(delta,(*a[0],*a[1]),(*b[0],*b[1]))
              for a,b in raw.partitions(legs)]
    value=s.factor(32*sum(pairings)/s.sqrt(s.prod(s.factorial(n) for n in Counter(outgoing).values())))
    assert value==0,(delta,outgoing,incoming,value)
    return {'Delta':str(delta),'outgoing_radial':outgoing,'incoming_radial':incoming,
            'six_pairings':[str(v) for v in pairings],
            'individual_nonzero_pairings':sum(v!=0 for v in pairings),
            'normalized_total':str(value)}


def main():
    data=[]
    for delta in map(s.Integer,(2,3,4,5)):
        for out in itertools.combinations_with_replacement(range(3),3):
            data.append(one_to_three(delta,out))
    report={'method':'original circular scalar/momentum constraints and full six signed-leg pairings',
        'scope':'40 integer-Delta resonant 1->3 coefficients; circular angular selection makes boundary term zero',
        'cases':data,'all_zero':True}
    Path(__file__).with_name('number_change_results.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Original K4 integer-mass resonances checked:',len(data))
    print('Cases containing nonzero individual pairings:',sum(c['individual_nonzero_pairings']>0 for c in data))


if __name__=='__main__':main()
