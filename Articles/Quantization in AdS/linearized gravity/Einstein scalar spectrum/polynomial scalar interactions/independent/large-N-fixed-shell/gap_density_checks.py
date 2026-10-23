#!/usr/bin/env sage -python
"""Exact checks of the collaborative all-grade gap/density extension.

The density and uniform-gap theorems are analytic; these checks verify their
normalizations and representation-theoretic inputs, not density by sampling.
"""
import sys
sys.dont_write_bytecode=True
from collections import Counter
import json
from sage.all import QQ, ZZ, PolynomialRing, prod, factorial
import fixed_shell as fs


def raise_vector(delta, vector, side):
    result={}
    for state,coefficient in vector.items():
        counts=Counter(state)
        for I,multiplicity in counts.items():
            J=list(I); J[side]+=1; J=tuple(J)
            new=counts.copy(); new[I]-=1; new[J]+=1
            dest=tuple(sorted(new.elements()))
            result[dest]=result.get(dest,0)+coefficient*multiplicity*(I[side]+delta)
    return result


def lowest_module_probability(delta,p,q):
    # Algebraic B basis, not normalized. Begin with (a_00^dagger)^2|0>.
    vector={((0,0),(0,0)):QQ(1)}
    for side,times in [(0,p),(1,q)]:
        for _ in range(times):
            vector=raise_vector(delta,vector,side)
    def gram(state):
        return prod(ZZ(factorial(m))/(fs.weight(delta,a)*fs.weight(delta,b))**m
                    for (a,b),m in Counter(state).items())
    norm=sum(c*c*gram(s) for s,c in vector.items())
    state=tuple(sorted(((0,0),(p,q))))
    return vector[state]**2*gram(state)/norm


def verify():
    parameters=[QQ(6)/5,QQ(3)/2,QQ(2),QQ(7)/3,QQ(5)]
    projector_checks=0
    gap_checks=0
    for delta in parameters:
        for p in range(5):
            for q in range(5):
                if p==q==0:
                    continue
                rp=fs.weight(delta,p)/fs.weight(2*delta,p)
                rq=fs.weight(delta,q)/fs.weight(2*delta,q)
                assert lowest_module_probability(delta,p,q)==2*rp*rq
                projector_checks+=1
        for p in range(9):
            for q in range(9):
                if (p,q) in [(0,0),(1,0),(0,1)]:
                    continue
                gap=2*delta/(2*delta+1)**2
                assert fs.omega(delta,2,p,q)<=-gap
                gap_checks+=1
    rational_examples=[]
    for k,delta in [(3,QQ(2)),(3,QQ(3)/2),(4,QQ(7)/3),(5,QQ(5)/4)]:
        A=fs.omega(delta,k,1,1)
        B=-fs.omega(delta,k,2,0)
        assert A>0 and B>0
        u,v=A.numerator(),A.denominator()
        positive=[]
        for p in [3,8,20]:
            defect=v*A+u*fs.omega(delta,k,p,0)
            R=(fs.omega(delta,k,p,0)+1)/k
            assert defect==u*k*R and defect>0
            positive.append({'p':p,'defect':str(defect)})
        a,b=delta.numerator(),delta.denominator()
        n=(k-2)*a-b
        assert n>0 and a*A-n*B==0
        rational_examples.append({'k':k,'Delta':str(delta),'A':str(A),
            'small_positive_sequence':positive,
            'exact_zero_occupations':{'11':int(a),'20':int(n)}})
    R=PolynomialRing(QQ,'x'); x=R.gen()
    f=x**3-4*x**2-3*x-2
    assert f.is_irreducible() and f(4)<0 and f(5)>0
    return {'projector_probability_exact_checks':projector_checks,
            'uniform_gap_finite_mode_checks':gap_checks,
            'rational_density_normalizations':rational_examples,
            'irrational_zero_example':{'k':3,'mode':[2,2],
                'minimal_polynomial':str(f),
                'irreducible_and_root_in_4_5':True},
            'claim_level':'The all-grade proofs are analytic; finite checks do not prove density.'}


if __name__=='__main__':
    print(json.dumps(verify(),indent=2))
