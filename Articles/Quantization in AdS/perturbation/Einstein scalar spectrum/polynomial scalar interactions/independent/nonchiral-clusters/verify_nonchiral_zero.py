#!/usr/bin/env sage -python
"""Explicit nonchiral fixed-N zero and failure of full-resonance survival."""
import sys,json
from pathlib import Path
sys.dont_write_bytecode=True
from sage.all import *
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent.parent/'code'))
from contact_blocks import (fock_basis,contact_matrix,lowering_matrix,
                            gram_diagonal,stripped_entry)

def zero_vector(k,basis,ring):
    terms=[(1,[(0,0)]*(k-1)+[(0,2),(2,0)]),
           (-1,[(0,0)]*(k-2)+[(0,1),(0,1),(2,0)]),
           (-1,[(0,0)]*(k-2)+[(0,2),(1,0),(1,0)]),
           (1,[(0,0)]*(k-3)+[(0,1),(0,1),(1,0),(1,0)])]
    coeff={tuple(sorted(state)):c for c,state in terms}
    return vector(ring,[coeff.get(state,0) for state in basis])

F=FractionField(PolynomialRing(QQ,'d'));d=F.gen()
checks=[]
for k in [3,4,5,6]:
    N=k+1;b=fock_basis(N,2,2);z=zero_vector(k,b,F)
    for side in [0,1]:
        target=fock_basis(N,1 if side==0 else 2,1 if side==1 else 2)
        ok=lowering_matrix(d,b,target,side)*z==0
        checks.append({'k':k,'test':'primary-'+str(side),'passed':bool(ok)})
        assert ok
    ok=contact_matrix(d,2*k,b)*z==0
    checks.append({'k':k,'test':'formal-Delta contact kernel','passed':bool(ok)})
    assert ok

d=QQ(2);b=fock_basis(4,2,2);z=zero_vector(3,b,QQ)
out=tuple([(0,0)]*6)
row=vector(QQ,[stripped_entry(d,6,out,ket) for ket in b])
G=matrix.diagonal(QQ,gram_diagonal(d,b))
column=row*z; norm=z*G*z; ground=gram_diagonal(d,[out])[0]
assert column==QQ(1)/2520 and norm==QQ(29)/36 and ground==720
normalized_squared=ground*column**2/norm
assert normalized_squared==QQ(1)/7105
result={'formal_checks':checks,'all_passed':True,
        'phi6_Delta2_E12_J0':{'Z_norm_squared':str(norm),'sixground_norm_squared':str(ground),
          'column_coefficient_in_c6_units':str(column),
          'unnormalized_matrix_element_in_c6_units':str(ground*column),
          'normalized_matrix_element_squared_in_c6_squared_units':str(normalized_squared),
          'c6':'1/(8*pi^2)',
          'normalized_matrix_element':'lambda_6/(56*pi^2*sqrt(145))'}}
path=HERE/'nonchiral-zero-checks.json'
path.write_text(json.dumps(result,indent=2)+'\n')
print('formal zero and complete-resonance counterexample passed')
print(path)
