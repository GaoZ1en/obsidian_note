#!/usr/bin/env sage -python
"""Reproducible exact tests of polynomial contacts; no reference data imported."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import platform
import time
from sage.all import QQ, PolynomialRing, matrix, binomial
from sage.env import SAGE_VERSION
from contact_blocks import (weight, factorial, jacobi_x, radial_moment,
    fock_basis, energy_basis, gram_diagonal, contact_matrix,
    lowering_matrix, compress_primary, matrix_json, exact_spectral_data)

checks=[]
def check(label,condition,**data):
    if condition is not True and condition is not False:
        raise TypeError('not an exact Python boolean: '+label)
    checks.append({'label':label,'passed':condition,**data})
    if not condition:
        raise AssertionError(label)


def run():
    minimal=[]
    for d in (QQ(3)/2,QQ(2),QQ(7)/3):
        for k in (2,3,4):
            for P in range(4):
                for Q in range(P+1):
                    basis,B,g,C=compress_primary(d,2*k,k,P,Q)
                    expected=(binomial(P+k-2,k-2)/factorial(k)/(k*d+2*P-1)
                              if P==Q else QQ.zero())
                    check(f'primary_rank_D{d}_k{k}_P{P}_Q{Q}',
                          C.rank()==(1 if P==Q else 0))
                    check(f'primary_trace_D{d}_k{k}_P{P}_Q{Q}',C.trace()==expected)
                    A=contact_matrix(d,2*k,basis)
                    G=matrix.diagonal(QQ,gram_diagonal(d,basis))
                    check(f'Gram_D{d}_k{k}_P{P}_Q{Q}',G*A==A.transpose()*G)
                    check(f'full_rank_D{d}_k{k}_P{P}_Q{Q}',A.rank()==min(P,Q)+1)
                    z=A.charpoly('z').parent().gen()
                    pred=z**(len(basis)-min(P,Q)-1)
                    for r in range(min(P,Q)+1):
                        pred*=z-binomial(r+k-2,k-2)/factorial(k)/(k*d+2*r-1)
                    check(f'full_charpoly_D{d}_k{k}_P{P}_Q{Q}',A.charpoly('z')==pred)
                    minimal.append({'Delta':str(d),'k':k,'P':P,'Q':Q,
                                    'full_dimension':len(basis),'primary_dimension':C.ncols(),
                                    'primary_rank':int(C.rank()),'trace':str(C.trace())})

    # Symbolic Delta checks in a declared rational-function field, not a symbolic
    # relation coerced to bool. This certifies exactly these finite matrices.
    R=PolynomialRing(QQ,'D'); F=R.fraction_field(); D=F.gen()
    for k in (2,3):
        for r in range(3):
            _,_,_,C=compress_primary(D,2*k,k,r,r)
            target=binomial(r+k-2,k-2)/factorial(k)/(k*D+2*r-1)
            check(f'formal_D_k{k}_r{r}',C.trace()==target and C.rank()==1)

    selection=[]
    # Include every degree 3..8 and two integer resonance shifts; single-leg
    # selection is tested with nonzero outgoing angular and radial labels.
    tails=[((0,0),),((1,0),),((0,1),),((1,1),)]
    for n in range(3,9):
        for h in (n-1,n):
            d=QQ(2*h)/(n-2)
            for tail in tails:
                children=tail+((0,0),)*(n-2)
                parent=(h+sum(p for p,q in children),h+sum(q for p,q in children))
                val=radial_moment(d,tuple(sorted((parent,)+children)))
                check(f'one_to_many_n{n}_D{d}_{tail}',val==0)
                selection.append({'n':n,'Delta':str(d),'parent':parent,'children':children,'moment':str(val)})
    check('nonresonant_overlap_is_nonzero',radial_moment(QQ(2),((0,0),)*3)!=0)

    # Complete exceptional blocks and free lowering intertwiners, including
    # number-changing terms. The lower block is also complete at E-1,J+/-1.
    complete=[]
    for n,d,E,J in [(3,QQ(2),QQ(6),0),(4,QQ(2),QQ(8),0),
                    (5,QQ(2),QQ(6),0),(6,QQ(2),QQ(8),0),
                    (6,QQ(2),QQ(9),1),(7,QQ(4)/3,QQ(20)/3,0),
                    (8,QQ(3)/2,QQ(9),0)]:
        basis=energy_basis(d,E,J); A=contact_matrix(d,n,basis)
        G=matrix.diagonal(QQ,gram_diagonal(d,basis))
        check(f'complete_Gram_n{n}_D{d}_E{E}_J{J}',G*A==A.transpose()*G)
        for side in (0,1):
            target=energy_basis(d,E-1,J+(-1 if side==0 else 1))
            B=contact_matrix(d,n,target)
            L=lowering_matrix(d,basis,target,side)
            check(f'complete_Ward_n{n}_D{d}_E{E}_J{J}_side{side}',L*A==B*L)
        complete.append({'n':n,'Delta':str(d),'energy':str(E),'angular':J,
                         'dimension':len(basis),'rank':int(A.rank()),
                         'characteristic_polynomial':str(A.charpoly('z').factor())})

    d=QQ(2); basis=energy_basis(d,QQ(8),0); A=contact_matrix(d,6,basis)
    z=A.charpoly('z').parent().gen()
    expected=z**5*(z-QQ(1)/30)*(z-QQ(1)/21)*(z*z-QQ(2)/15*z-QQ(1)/2352)
    check('phi6_D2_E8_complete_charpoly',A.charpoly('z')==expected)
    check('phi6_D2_E8_one_negative_root',(-QQ(1)/2352)<0)
    sd=exact_spectral_data(A)
    check('phi6_D2_E8_exact_algebraic_eigenspaces',
          sum(entry['number_of_real_embeddings']*entry['multiplicity_per_embedding']
              for entry in sd)==len(basis))
    example={'degree':6,'Delta':'2','E':'8','J':0,'scale':'lambda6/(8*pi^2)',
             'basis':basis,'Gram':list(map(str,gram_diagonal(d,basis))),
             'matrix':matrix_json(A),'charpoly':str(A.charpoly('z').factor())}

    # General chiral N=k+1 family supplied by independent derivation, tested
    # through total degree 6 without using its projector construction.
    chiral=[]
    for k in (2,3,4):
        N=k+1; d=QQ(2)
        for P in range(7):
            basis=fock_basis(N,P,0); A=contact_matrix(d,2*k,basis)
            c0=QQ(1)/factorial(k)/(k*d-1)
            z=A.charpoly('z').parent().gen()
            degrees=[0]+list(range(2,P+1)) if P else [0]
            pred=z**(len(basis)-len(degrees))
            ev=[]
            for r in degrees:
                ratio=QQ(1)
                for j in range(r):
                    ratio*=(d+j)/(k*d+j)
                e=c0*(1+k*(-1)**r*ratio)
                pred*=z-e;ev.append(str(e))
            check(f'chiral_Nkplus1_k{k}_P{P}',A.charpoly('z')==pred)
            chiral.append({'k':k,'N':N,'P':P,'dimension':len(basis),'rank':int(A.rank()),'nonzero_values':ev})
    return {'checks':checks,'minimal_sector':minimal,'single_leg_selection':selection,
            'complete_blocks':complete,'phi6_complete_example':example,'chiral_Nkplus1':chiral}


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',required=True)
    args=parser.parse_args()
    output=Path(args.output)
    if output.exists():
        raise FileExistsError('Refusing to overwrite '+str(output))
    start=time.monotonic()
    report=run()
    report.update({'sage':SAGE_VERSION,'python':platform.python_version(),
                   'seconds':time.monotonic()-start,'passed':all(c['passed'] for c in checks),
                   'check_count':len(checks),
                   'source_sha256':{name:hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest()
                                    for name in ('contact_blocks.py','verify_foundations.py')}})
    output.parent.mkdir(parents=True,exist_ok=True)
    output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'passed':report['passed'],'check_count':len(checks),
                      'seconds':report['seconds'],'output':str(output)}))
