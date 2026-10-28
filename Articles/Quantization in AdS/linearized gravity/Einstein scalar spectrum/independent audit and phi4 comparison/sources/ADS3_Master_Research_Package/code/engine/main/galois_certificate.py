#!/usr/bin/env python3
"""Exact modular certificate that one new nonchiral block has Galois group S6.

No numerical roots are used.  A square-free irreducible degree-six reduction
proves transitivity; a 5-cycle excludes imprimitivity; a transposition in a
primitive subgroup proves S6.  The optional SymPy Galois calculation agrees.
"""
import json
from pathlib import Path
import warnings
import sympy as s
from sympy.utilities.exceptions import SymPyDeprecationWarning

warnings.filterwarnings('ignore',category=SymPyDeprecationWarning)
x=s.Symbol('x')
# Eigenvalue x is measured ABOVE b_R=-240, not the full coefficient g.
f=s.Poly(1039933125*x**6-421922928000*x**5+66656846278400*x**4
         -5209664437286400*x**3+211605191031377920*x**2
         -4270116726919299072*x+33819544399599108096,x)


def main():
    wanted={(6,),(1,5),(1,2,3)}
    certificates=[]
    for prime in s.primerange(2,1000):
        if int(f.LC())%prime==0:
            continue
        coefficient,fac=s.factor_list(f.as_expr(),x,modulus=prime)
        pattern=tuple(sorted([int(s.degree(t,x)) for t,m in fac for _ in range(m)]))
        if pattern not in wanted or not all(m==1 for _,m in fac):
            continue
        # Directly verify each factor irreducible and the exact modular product.
        for t,_ in fac:
            assert s.Poly(t,x,modulus=prime).is_irreducible
        product=coefficient*s.prod(t**m for t,m in fac)
        assert s.Poly(f.as_expr()-product,x,modulus=prime).is_zero
        assert s.gcd(s.Poly(f,x,modulus=prime),s.Poly(f.diff(),x,modulus=prime)).degree()==0
        certificates.append({'prime':int(prime),'factor_degrees':pattern,
            'leading_constant':str(coefficient),
            'factorization':[{'polynomial':str(t),'multiplicity':int(m)} for t,m in fac]})
        wanted.remove(pattern)
        if not wanted:
            break
    assert not wanted
    group,alternating=s.polys.numberfields.galois_group(f)
    assert group.order()==720 and group.is_symmetric and not group.is_solvable
    result={'N':4,'P':4,'Q':2,'Delta':'2','baseline':'-240',
        'primitive_integer_polynomial':str(f.as_expr()),'degree':6,
        'irreducible_over_Q':bool(f.is_irreducible),
        'galois_group':'S6','group_order':int(group.order()),
        'solvable_by_radicals':False,'modular_certificates':certificates,
        'proof':'Irreducible mod p gives transitivity. A 5-cycle forbids block systems of sizes 2 or 3. Cubing a permutation of cycle type (1,2,3) gives a transposition. In a primitive group, conjugates of a transposition form a connected edge graph; their transpositions generate S6.',
        'limitation':'Excludes an all-radical formula for this spectrum. Does not prove nonintegrability, a complexity lower bound, or absence of an algebraic-root algorithm.'}
    Path(__file__).with_name('galois_n4_4_2.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))


if __name__=='__main__':
    main()
