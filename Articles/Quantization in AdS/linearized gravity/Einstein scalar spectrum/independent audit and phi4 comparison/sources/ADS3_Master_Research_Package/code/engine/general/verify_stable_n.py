#!/usr/bin/env python3
"""Independent fixed-N specializations of the symbolic-N pencil and its slopes."""
from fractions import Fraction as F
from pathlib import Path
import json
import sympy as s
from stable_n import (stable_primary_hamiltonian,excited_basis,primary_slopes,
                      centered_primary_basis,stable_primary_basis,stable_lowering)
from fock_exact import (occupation_basis,orbit_size,orbit_hamiltonian,orbit_gram,
                       primary_hamiltonian,einstein_pair,qsym)


def verify():
    nvar=s.Symbol('N',integer=True,positive=True)
    d=s.Symbol('Delta',positive=True)
    t=s.Symbol('t')
    checks=[]
    for p,q in [(2,2),(3,2),(4,3),(6,0),(3,3)]:
        b=centered_primary_basis(p,q)
        left,right=stable_lowering(p,q,0),stable_lowering(p,q,1)
        assert left*b==s.zeros(left.rows,b.cols)
        assert right*b==s.zeros(right.rows,b.cols)
        assert b.rank()==b.cols==stable_primary_basis(p,q).cols
        checks.append({'P':p,'Q':q,'primary_dimension':int(b.cols),
                       'direct_centered_basis_complete':True})
    cases=[(2,2,F(2),[4,5,8]),(2,2,F(3,2),[4,7]),
           (3,2,F(7,3),[5,8]),(0,0,F(2),[1,4]),(1,1,F(2),[2,5])]
    for p,q,delta,particle_numbers in cases:
        h,b,w=stable_primary_hamiltonian(delta,p,q,nvar)
        assert not any(nvar in entry.free_symbols for entry in b)
        for n in particle_numbers:
            states=occupation_basis(n,p,q)
            assert tuple(tuple(mode for mode in state if mode!=(0,0))
                         for state in states)==excited_basis(p,q)
            sizes=s.diag(*[orbit_size(state)for state in states])
            wn=w.subs(nvar,n)
            original=orbit_hamiltonian(delta,n,p,q)
            assert original*sizes.inv()==sizes.inv()*wn
            metric=sizes.inv()*orbit_gram(delta,n,p,q)*sizes.inv()
            assert wn.T*metric==metric*wn
            hn,_,_=primary_hamiltonian(delta,n,p,q)
            assert h.subs(nvar,n).charpoly().all_coeffs()==hn.charpoly().all_coeffs()
            checks.append({'N':n,'P':p,'Q':q,'Delta':str(delta),
                           'dimension':int(h.rows),'full_intertwiner':True,
                           'self_adjoint':True,'primary_charpoly':True})
    for delta,p,q in [(d,2,2),(F(7,3),3,2),(F(2),4,2),(F(2),4,3)]:
        h,b,w=stable_primary_hamiltonian(delta,p,q,nvar)
        shifted=(h-nvar*(nvar-1)*qsym(einstein_pair(delta,0,0))*s.eye(h.rows)/2).applyfunc(s.cancel)
        a=shifted.diff(nvar)
        expected=s.prod(t-slope for _,slope in primary_slopes(delta,p,q))
        assert s.cancel(a.charpoly(t).as_expr()-expected)==0
        checks.append({'P':p,'Q':q,'Delta':str(delta),
                       'primary_dimension':int(h.rows),
                       'slope_characteristic_identity':True})
    a,b,c=(qsym(einstein_pair(d,*pair))for pair in [(0,0),(1,1),(2,0)])
    base=nvar*(nvar-1)*a/2
    closed={(1,1):base+nvar*(b-a)/2,
            (2,0):base+(nvar*d+1)*(c-a)/(2*d+1),
            (3,0):base+3*(nvar*d+2)*(c-a)/(2*(2*d+1)),
            (2,1):base+nvar*(b-a)/2+(nvar*d+2)*(c-a)/(2*(2*d+1))}
    for (p,q),formula in closed.items():
        h,_,_=stable_primary_hamiltonian(d,p,q,nvar)
        assert h.shape==(1,1)
        assert s.cancel(h[0,0]-formula)==0
        checks.append({'P':p,'Q':q,'Delta':'Delta','N':'symbolic',
                       'direct_Casimir_formula':str(s.factor(formula)),
                       'symbolic_identity':True})
    return checks


if __name__=='__main__':
    result=verify()
    path=Path(__file__).with_name('stable_n_checks.json')
    path.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'checks':len(result),'all_passed':True,'output':str(path)}))
