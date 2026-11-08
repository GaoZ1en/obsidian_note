#!/usr/bin/env sage -python
"""Exact two-state compression witnesses for every tested even resonance.

Analytic theorem: for lambda_(2k)>0, all complete first-order blocks are PSD
iff the even vertex has no particle-number-changing resonance. A negative
compression suffices; no invariant two-state subspace is assumed.
"""
import argparse
import hashlib
import json
from pathlib import Path
from sage.all import QQ, ZZ, binomial, factorial, matrix, prod, vector
from contact_blocks import (contact_matrix, fock_basis, gram_diagonal,
                            radial_moment, stripped_entry)


def run():
    checks=[];witnesses=[]
    def check(label,value):
        if value is not True and value is not False:
            raise TypeError(label)
        checks.append({'label':label,'passed':value})
        if not value:
            raise AssertionError(label)
    for k in range(3,9):
        for b in range(1,k-1):
            for a in (b+1,2*b+1):
                delta=QQ(a)/b;r=k-b;s=k+b;nu=a
                low=tuple(sorted(((0,0),)*(r-1)+((nu,nu),)))
                high=((0,0),)*s
                states=(low,high);A=contact_matrix(delta,2*k,states)
                G=gram_diagonal(delta,states)
                source=prod(1-(k-1)*delta+l for l in range(nu))/(
                    (k*delta-1)*prod(k*delta+l for l in range(nu)))
                expected_h2=source**2/(factorial(r-1)*factorial(s))
                expected_D=binomial(s,k)/(factorial(k)*(k*delta-1))
                prefix=f'k{k}_Delta{delta}'
                check(prefix+'_same_free_block',r*delta+2*nu==s*delta)
                check(prefix+'_Gram_self_adjoint',G[0]*A[0,1]==G[1]*A[1,0])
                check(prefix+'_zero_lower_N_diagonal',A[0,0]==0)
                check(prefix+'_positive_ground_diagonal',A[1,1]==expected_D and expected_D>0)
                check(prefix+'_exact_nonzero_source',A[0,1]*A[1,0]==expected_h2 and expected_h2>0)
                check(prefix+'_negative_compression',A.det()==-expected_h2 and A.det()<0)
                witnesses.append({'k':k,'Delta':str(delta),'E':str(s*delta),'J':0,
                                  'low_N':r,'ground_N':s,'determinant_in_c2k_squared_units':str(A.det())})
    # Additional, independent Z_k witness at Delta2. All four polynomial terms
    # must be included once k>=5; their binomial second difference is one.
    terms=[((0,0),(0,0),(0,2),(2,0)),((0,0),(0,2),(1,0),(1,0)),
           ((0,0),(0,1),(0,1),(2,0)),((0,1),(0,1),(1,0),(1,0))]
    for k in range(3,9):
        states=[tuple(sorted(((0,0),)*(k-3)+t)) for t in terms]
        coeff=(1,-1,-1,1);target=((0,0),)*(k+3)
        raw=factorial(k+3)*sum(c*stripped_entry(QQ(2),2*k,target,t) for t,c in zip(states,coeff))
        norm=sum(c*c*g for c,g in zip(coeff,gram_diagonal(QQ(2),states)))
        check(f'Z_k{k}_raw_overlap',raw==QQ((k+2)*(k+3))/(k*(4*k*k-1)))
        check(f'Z_k{k}_norm',norm==factorial(k-3)*QQ(4*k*k-7)/36)
        basis=fock_basis(k+1,2,2)
        z=vector(QQ,[sum(c for t,c in zip(states,coeff) if t==v) for v in basis])
        check(f'Z_k{k}_kernel',contact_matrix(QQ(2),2*k,basis)*z==0)
    return {'passed':True,'count':len(checks),'checks':checks,'witnesses':witnesses,
            'scope':'Finite exact witnesses. The all-mass/all-k theorem uses the nonzero Rodrigues source and min-max argument, not these samples.'}


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',required=True)
    args=p.parse_args();out=Path(args.output)
    if out.exists():
        raise FileExistsError(str(out))
    result=run();here=Path(__file__).resolve().parent
    result['source_sha256']={n:hashlib.sha256((here/n).read_bytes()).hexdigest()
                            for n in ('contact_blocks.py','verify_even_positivity.py')}
    out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'passed':result['passed'],'count':result['count'],'output':str(out)},indent=2))


if __name__=='__main__':
    main()
