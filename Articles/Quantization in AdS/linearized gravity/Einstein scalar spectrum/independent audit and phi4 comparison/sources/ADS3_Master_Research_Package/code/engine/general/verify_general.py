#!/usr/bin/env python3
"""Reproducible independent checks for the arbitrary-N spectral constructions.

This combines exact orbit-space Hamiltonians, logarithmic-frame states tested
by pair projectors, and a pure modular-arithmetic Galois certificate. The
many-body construction is independent of the pair-spectator Gram algorithm.
"""
from fractions import Fraction as F
from pathlib import Path
import json
import time
import warnings
import sympy as s

from fock_exact import (primary_hamiltonian, primary_basis, restrict_operator,
                       orbit_hamiltonian, occupation_basis, primary_multiplicity,
                       baseline, qsym, spectrum, orbit_lowering)
from logarithmic_states import kernel_count, kernel_labels, generate_quotient, verify_pair_flags


def trim(poly,p):
    out=[int(a)%p for a in poly]
    while out and not out[-1]:
        out.pop()
    return out


def pmul(a,b,p):
    if not a or not b:return []
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]=(out[i+j]+x*y)%p
    return trim(out,p)


def prem(a,b,p):
    a=trim(a,p);b=trim(b,p)
    if not b:raise ZeroDivisionError
    while len(a)>=len(b):
        scale=a[-1]*pow(b[-1],-1,p)%p
        offset=len(a)-len(b)
        for j,c in enumerate(b):a[offset+j]=(a[offset+j]-scale*c)%p
        a=trim(a,p)
    return a


def ppow(a,power,mod,p):
    result=[1]
    while power:
        if power%2:result=prem(pmul(result,a,p),mod,p)
        a=prem(pmul(a,a,p),mod,p);power//=2
    return result


def pgcd(a,b,p):
    while b:a,b=b,prem(a,b,p)
    return trim([c*pow(a[-1],-1,p) for c in a],p) if a else []


def galois_certificate():
    h,_,_=primary_hamiltonian(F(2),4,10,0)
    x=s.Symbol('lambda')
    poly=s.Poly((h+96*s.eye(5)).charpoly(x).as_expr(),x).clear_denoms()[1].primitive()[1]
    coefficients=list(reversed([int(c) for c in poly.all_coeffs()]))

    def monic_at(p):
        scale=pow(coefficients[-1]%p,-1,p)
        return trim([c*scale for c in coefficients],p)
    p=29;f=monic_at(p)
    # Rabin's irreducibility test for prime degree5, entirely in F_29[x].
    xp=ppow([0,1],p,f,p)
    diff=xp+[0]*max(0,2-len(xp));diff[1]=(diff[1]-1)%p
    assert pgcd(f,trim(diff,p),p)==[1]
    assert ppow([0,1],p**5,f,p)==[0,1]
    p2=47;f2=monic_at(p2)
    factors=[[23,1],[-12,1],[-9,1],[-6,-16,1]]
    multiplied=[1]
    for factor in factors:multiplied=pmul(multiplied,factor,p2)
    assert multiplied==f2
    derivative=[i*c for i,c in enumerate(f2)][1:]
    assert pgcd(f2,derivative,p2)==[1]
    discriminant=(-16)**2-4*(-6)
    assert pow(discriminant%p2,(p2-1)//2,p2)==p2-1
    return {'N':4,'P':10,'Q':0,'Delta':'2','variable':'lambda=g+96',
            'polynomial':str(poly.as_expr()),'irreducibility_prime':29,
            'irreducibility_test':'x^(29^5)=x mod f and gcd(f,x^29-x)=1',
            'transposition_prime':47,'factor_degrees':[1,1,1,2],
            'squarefree':True,'quadratic_irreducible':True,
            'Galois_group':'S5','radicals_possible':False,
            'proof':'Irreducible quintic gives a primitive transitive degree-five group; squarefree factorization gives a transposition. Its conjugate-transposition graph is connected, hence generates S5.'}


def commutator_certificate():
    b=primary_basis(4,6,0)
    a=restrict_operator(orbit_hamiltonian(F(2),4,6,0,'P0L'),b)
    c=restrict_operator(orbit_hamiltonian(F(2),4,6,0,'P2L'),b)
    h=restrict_operator(orbit_hamiltonian(F(2),4,6,0),b)
    natural=restrict_operator(orbit_hamiltonian(F(2),4,6,0,'CL2'),b)
    d=a.rows;i=s.eye(d)
    constraints=(s.kronecker_product(i,a)-s.kronecker_product(a.T,i)).col_join(
                 s.kronecker_product(i,c)-s.kronecker_product(c.T,i))
    comm=a*c-c*a
    assert comm.rank()==2
    assert d*d-constraints.rank()==1
    assert (h*natural-natural*h).rank()==2
    return {'N':4,'P':6,'Q':0,'Delta':'2','primary_dimension':d,
            'P0_sum':[[str(t)for t in a.row(j)]for j in range(d)],
            'P2_sum':[[str(t)for t in c.row(j)]for j in range(d)],
            'commutator':[[str(t)for t in comm.row(j)]for j in range(d)],
            'commutator_rank':2,'common_commutant_dimension':1,
            'sum_pair_Casimir_squared_commutator_rank':2,
            'scope':'Excludes nontrivial common charges for this two-pseudopotential family on this primary block; it does not prove nonintegrability of every possible realization.'}


def covariance_certificate():
    delta=F(2);n,p,q=4,3,2
    full=orbit_hamiltonian(delta,n,p,q)
    for chirality in (0,1):
        lowering=orbit_lowering(n,p,q,chirality)
        target=orbit_hamiltonian(delta,n,p-int(chirality==0),q-int(chirality==1))
        assert lowering*full==target*lowering
    x=s.Symbol('g')
    product_cp=s.S.One
    counted=0
    for left in range(p+1):
        for right in range(q+1):
            h,_,_=primary_hamiltonian(delta,n,left,right)
            product_cp*=h.charpoly(x).as_expr()
            counted+=h.rows
    assert counted==full.rows
    assert s.expand(product_cp-full.charpoly(x).as_expr())==0
    return {'N':n,'P':p,'Q':q,'Delta':'2','full_Fock_level_dimension':full.rows,
            'two_lowering_commutator_residuals':'exact zero',
            'full_characteristic_polynomial_equals_product_of_primary_descendants':True,
            'descendant_multiplicity_sum':counted}


def main():
    started=time.monotonic()
    cases=[]
    # Mixed chirality and multiple particle numbers; half-integer Delta tests
    # the removable pair scalar channel at Delta=3/2.
    for delta,n,p,q in [(F(2),0,0,0),(F(2),1,0,0),(F(2),1,2,1),
                        (F(2),4,2,2),(F(2),4,4,2),(F(2),4,6,4),
                        (F(2),5,4,2),(F(2),6,3,2),
                        (F(3,2),4,3,1),(F(7,3),4,2,2)]:
        result=spectrum(delta,n,p,q,states=(n==4 and p<=4))
        if n>=2:
            predicted=kernel_count(n,max(p,q),min(p,q))
            assert result['saturating_primary_multiplicity']==predicted
            result['logarithmic_kernel_prediction']=predicted
        cases.append(result)
        print('spectrum',n,p,q,str(delta),'dim',result['primary_dimension'],flush=True)
    states=[]
    for delta,n,p,q in [(F(2),3,17,3),(F(2),4,27,3),(F(3,2),4,28,3),
                        (F(2),5,42,2),(F(7,3),6,61,1)]:
        labels=kernel_labels(n,p,q)
        onecase={'N':n,'P':p,'Q':q,'Delta':str(delta),'multiplicity':len(labels),'states':[]}
        for label in labels:
            quotient=generate_quotient(delta,n,p,q,label)
            result=verify_pair_flags(delta,n,q,quotient)
            onecase['states'].append({'elementary_powers':label[0],
                                      'logarithmic_powers':label[1],
                                      'quotient':str(quotient),'verification':result})
        states.append(onecase)
        print('log-state',n,p,q,str(delta),'count',len(labels),flush=True)
    result={'scope':'Exact independent many-body and logarithmic-state checks; known Einstein pair kernel is the dynamical input.',
            'spectra':cases,'logarithmic_eigenstates':states,
            'Galois_certificate':galois_certificate(),
            'noncommutativity_certificate':commutator_certificate(),
            'covariance_and_descendants':covariance_certificate(),
            'runtime_seconds':time.monotonic()-started}
    Path(__file__).with_name('general_verification_results.json').write_text(json.dumps(result,indent=2)+'\n')
    print('all exact checks passed',result['runtime_seconds'],flush=True)


if __name__=='__main__':
    main()
