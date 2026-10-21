#!/usr/bin/env python3
"""Independent twisted-character count of balanced left/right parity sectors.

Trace generating function:
  F(t,s)=prod_p(1-t*s^p)^(-1) prod_{p<q}(1-t^2*s^(p+q))^(-1).
For N>=1, primary parity trace at (J,J) is [t^N s^J](1-s)F.
This is checked against previously computed exact parity matrices, without
using those matrices in the coefficient extraction.
"""
from __future__ import annotations
import importlib.util
import json
from pathlib import Path
import sys
sys.dont_write_bytecode=True
HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('_phi4_parity_character_engine',HERE/'phi4_nbody_spectrum.py')
engine=importlib.util.module_from_spec(spec);spec.loader.exec_module(engine)


def twisted_full_dimension(N,J):
    if min(N,J)<0:return 0
    factors=[(1,p) for p in range(J+1)]
    factors += [(2,p+q) for p in range(J+1) for q in range(p+1,J+1) if p+q<=J]
    D={(0,0):1}
    for dn,dj in factors:
        for n in range(dn,N+1):
            for j in range(dj,J+1):D[n,j]=D.get((n,j),0)+D.get((n-dn,j-dj),0)
    return D.get((N,J),0)


def primary_parity_dimensions(N,J):
    if N<1:raise ValueError('N=0 vacuum must be handled separately')
    trace=twisted_full_dimension(N,J)-twisted_full_dimension(N,J-1)
    total=engine.primary_character_dimension(N,J,J)
    assert (total+trace)%2==0 and (total-trace)%2==0
    return (total+trace)//2,(total-trace)//2


def main():
    source=HERE.parent/'results/phi4_nbody_parity.json'
    records=json.loads(source.read_text(encoding='utf-8'))['blocks']
    result=[]
    for row in records:
        predicted=primary_parity_dimensions(row['N'],row['P'])
        actual=tuple(s['dimension'] for s in row['sectors'])
        assert predicted==actual
        result.append({'N':row['N'],'P':row['P'],'Q':row['Q'],
            'character_dimensions':list(predicted),'matrix_dimensions':list(actual),'passed':True})
    path=HERE.parent/'results/phi4_nbody_parity_character.json'
    engine.save_new_json(path,{'formula':'[t^N s^J](1-s)*prod_p(1-t*s^p)^-1*prod_p<q(1-t^2*s^(p+q))^-1',
        'independent_method':'Unbounded two-variable coefficient DP; no eigenvector or projector input.',
        'checks':result,'passed':len(result),'failed':0})
    print('PARITY_CHARACTER',len(result),'passed');print(str(path))
    return result


if __name__=='__main__':main()
