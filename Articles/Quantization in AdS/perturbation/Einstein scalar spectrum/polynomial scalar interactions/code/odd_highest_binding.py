#!/usr/bin/env sage -python
"""Finite, highest-connected ground binding from a single odd AdS3 vertex.

The result strips lambda_n^2*c_n^2, c_n=(2*pi)^(1-n/2)/2.
It is the (n-1)-body coefficient, NOT a whole renormalized spectrum.
It is a physical energy finite difference only when the complete ground blocks
have been checked not to mix.  The built-in Delta=(n-1)/(n-2) family has that
property.  Other rational masses require that check independently.

A terminating Jacobi source gives an exact finite sum. Nonterminating inputs
require an explicit cutoff and return only a partial sum. Nonzero resonant
source poles raise an error rather than being silently removed.
"""
import argparse
import hashlib
import json
from pathlib import Path
from sage.all import QQ, ZZ, factorial, prod


def rising(a, n):
    return prod(a+j for j in range(int(n)))


def validate(delta, degree):
    delta=QQ(delta); degree=int(degree)
    if degree < 3 or degree % 2 != 1 or delta <= 1:
        raise ValueError('requires odd degree >=3 and Delta>1')
    return delta,degree


def source_moment(delta, degree, radial):
    """I_radial/c_n in repository Jacobi phase, without a square root."""
    delta,degree=validate(delta,degree); radial=int(radial)
    if radial < 0:
        raise ValueError('radial index must be nonnegative')
    return rising(1-QQ(degree-2)*delta/2,radial)/rising(QQ(degree)*delta/2-1,radial+1)


def support_end(delta, degree):
    delta,degree=validate(delta,degree)
    a=1-QQ(degree-2)*delta/2
    return int(-a) if a.denominator()==1 and a<=0 else None


def highest_binding(delta, degree, cutoff=None):
    delta,degree=validate(delta,degree)
    m=degree-1; endpoint=support_end(delta,degree)
    if endpoint is None:
        if cutoff is None:
            raise ValueError('nonterminating source: specify a radial cutoff; result is only a partial sum')
        endpoint=int(cutoff); exact=False
        if endpoint < 0:
            raise ValueError('cutoff must be nonnegative')
    else:
        exact=True
    terms=[]
    for radial in range(endpoint+1):
        overlap=source_moment(delta,degree,radial)
        if not overlap:
            continue
        omega=delta+2*radial; value=QQ.zero()
        for creators in range(m+1):
            denominator=(2*creators-m)*delta-omega
            if denominator==0:
                raise ArithmeticError('nonzero resonant source: diagonalize the complete first-order block')
            value+=1/(factorial(creators)**2*factorial(m-creators)**2*denominator)
        terms.append((radial,factorial(m)*overlap**2*value))
    return sum(v for _,v in terms),exact,terms


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--degree',type=int,default=5)
    p.add_argument('--delta',help='default: (degree-1)/(degree-2)')
    p.add_argument('--cutoff',type=int)
    p.add_argument('--output',help='new JSON path; refuse to overwrite')
    args=p.parse_args()
    delta=QQ(args.delta) if args.delta else QQ(args.degree-1)/(args.degree-2)
    value,exact,terms=highest_binding(delta,args.degree,args.cutoff)
    report={'degree':args.degree,'Delta':str(delta),'bodies':args.degree-1,
            'coefficient':str(value),'exact_finite_sum':exact,
            'physical_scale':'lambda_n^2/[4*(2*pi)^(n-2)]',
            'radial_contributions':[{'radial':i,'coefficient':str(v)} for i,v in terms],
            'ground_nonmixing_family':delta==QQ(args.degree-1)/(args.degree-2),
            'scope':'Highest connected coefficient only; no optional finite phi^(2n-2) deformation. For other masses, check full degenerate ground blocks before calling this a spectral finite difference.',
            'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    text=json.dumps(report,indent=2)+'\n'
    if args.output:
        out=Path(args.output)
        if out.exists():
            raise FileExistsError(str(out))
        out.write_text(text,encoding='utf-8')
    print(text)


if __name__=='__main__':
    main()
