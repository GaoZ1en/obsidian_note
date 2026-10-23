#!/usr/bin/env sage -python
"""Connected quartic effective interaction at second order in normal-ordered phi^3.

K4 = P (1/2)[ad_H0^{-1} V3,V3]_(one contraction) P, V3=H3/lambda3.
Matrices strip (c3_rad)^2=1/(8*pi); physical shifts lambda3^2*A/(8*pi).
Uses the exact KG/Beta primitive, but no stored contact matrix or spectrum.
For positive even integral Delta the internal radial sum terminates exactly.
For other rational Delta, an explicit radial cutoff gives partial sums only.
"""
from collections import Counter
from functools import lru_cache
from itertools import combinations_with_replacement
from sage.all import QQ,ZZ,matrix,prod
from contact_blocks import weight,factorial,radial_moment,energy_basis,gram_diagonal,matrix_json,exact_spectral_data


def spin(I):return I[0]-I[1]
def omega(d,I):return d+I[0]+I[1]


def signed_pairs(creators,annihilators):
    """All distinct two-variable submonomials; +/- means creation/annihilation."""
    signed=Counter((1,I) for I in creators)+Counter((-1,I) for I in annihilators)
    for pair in combinations_with_replacement(sorted(signed),2):
        c=Counter(pair)
        if all(m<=signed[v] for v,m in c.items()):
            yield c,signed-c


def integer_delta_bound(d,labels,internal_spin):
    """Jacobi degree bound for an internal mode in a triple overlap."""
    if d.denominator()!=1 or d.numerator()%2:
        return None
    A=(sum(abs(spin(I)) for I in labels)-abs(internal_spin))//2
    return sum(min(I) for I in labels)+A+int(d/2)-1


@lru_cache(None)
def stripped_quartic_coefficient(d,creators,annihilators,radial_cutoff=None):
    """Quartic symbol coefficient after removing external d_I and 1/(8*pi).

    Creator/annihilator factorials enter via the two quadratic submonomials;
    do NOT divide by total-monomial factorials again.
    """
    if len(creators)+len(annihilators)!=4:
        raise ValueError('exactly four external variables required')
    if sum(omega(d,I) for I in creators)!=sum(omega(d,I) for I in annihilators):
        return QQ.zero()
    if sum(map(spin,creators))!=sum(map(spin,annihilators)):
        return QQ.zero()
    total=QQ.zero()
    for A,B in signed_pairs(creators,annihilators):
        la=tuple(I for (sgn,I),m in A.items() for _ in range(m))
        lb=tuple(I for (sgn,I),m in B.items() for _ in range(m))
        ji=sum(sgn*spin(I)*m for (sgn,I),m in A.items())
        extgrade=sum(sgn*omega(d,I)*m for (sgn,I),m in A.items())
        norm=prod(factorial(m) for m in A.values())*prod(factorial(m) for m in B.values())
        bounds=[integer_delta_bound(d,ls,ji) for ls in (la,lb)]
        exact_bound=min(bounds) if bounds[0] is not None else None
        if radial_cutoff is None:
            if exact_bound is None:
                raise ValueError('non-even Delta requires an explicit partial-sum radial cutoff')
            bound=exact_bound
        else:
            bound=min(radial_cutoff,exact_bound) if exact_bound is not None else radial_cutoff
        for nu in range(int(bound)+1):
            I=(nu+max(ji,0),nu+max(-ji,0))
            ra=radial_moment(d,tuple(sorted(la+(I,))))
            rb=radial_moment(d,tuple(sorted(lb+(I,))))
            denominator=extgrade-omega(d,I)
            if denominator==0:
                if ra*rb!=0:
                    raise ArithmeticError('nonzero resonant cubic contradicts selection theorem')
                continue
            di2=weight(d,max(I))/weight(d,min(I))
            total+=di2*ra*rb/(denominator*norm)
    return total


@lru_cache(None)
def stripped_tree_entry(d,bra,ket,radial_cutoff=None):
    if (len(bra)-len(ket))*d+sum(p+q for p,q in bra)-sum(p+q for p,q in ket)!=0:
        return QQ.zero()
    ns2=len(bra)+len(ket)-4
    if ns2<0 or ns2%2 or ns2//2>min(len(bra),len(ket)):
        return QQ.zero()
    ns=ns2//2;bc,kc=Counter(bra),Counter(ket);common=bc&kc
    total=QQ.zero()
    for st in combinations_with_replacement(sorted(common),ns):
        spectators=Counter(st)
        if any(m>common[I] for I,m in spectators.items()):continue
        c,a=bc-spectators,kc-spectators
        creators=tuple(sorted(c.elements()));annihilators=tuple(sorted(a.elements()))
        coeff=stripped_quartic_coefficient(d,creators,annihilators,radial_cutoff)
        factor=prod(weight(d,max(I))**m for I,m in c.items())
        factor*=prod(factorial(kc[I])/factorial(kc[I]-m)/weight(d,min(I))**m for I,m in a.items())
        total+=coeff*factor
    return total


def cubic_tree_matrix(d,basis,radial_cutoff=None):
    d=QQ(d)
    return matrix(QQ,len(basis),len(basis),lambda i,j:
                  stripped_tree_entry(d,basis[i],basis[j],radial_cutoff))


if __name__=='__main__':
    import argparse,json
    from pathlib import Path
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--delta',default='2');p.add_argument('--energy',default='4')
    p.add_argument('--angular',type=int,default=0);p.add_argument('--radial-cutoff',type=int)
    p.add_argument('--output',required=True);args=p.parse_args()
    d,E=QQ(args.delta),QQ(args.energy)
    basis=energy_basis(d,E,args.angular)
    A=cubic_tree_matrix(d,basis,args.radial_cutoff)
    G=matrix.diagonal(QQ,gram_diagonal(d,basis))
    if G*A!=A.transpose()*G:raise ArithmeticError('Gram self-adjointness failure')
    exact=(d.denominator()==1 and d.numerator()%2==0 and args.radial_cutoff is None)
    result={'Delta':str(d),'energy':str(E),'angular':args.angular,
            'scale':'lambda3^2/(8*pi)','interpretation':'connected quartic tree coefficient only; no loop or vacuum terms',
            'sum_exactly_terminated':exact,'radial_cutoff':args.radial_cutoff,
            'basis':basis,'Gram':list(map(str,G.diagonal())),
            'matrix':matrix_json(A),'charpoly':str(A.charpoly('z').factor()),
            'exact_spectrum_of_reported_matrix':exact_spectral_data(A),'Gram_self_adjoint':True}
    out=Path(args.output)
    if out.exists():raise FileExistsError(str(out))
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'dimension':len(basis),'exact_internal_sum':exact,'charpoly':result['charpoly'],'output':str(out)}))
