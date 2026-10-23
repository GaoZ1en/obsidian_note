#!/usr/bin/env sage -python
"""Exact second-order cubic checks, including literal original-Fock OFPT."""
import argparse,hashlib,json,time
from pathlib import Path
from itertools import combinations_with_replacement
from sage.all import QQ,matrix
from contact_blocks import (stripped_entry,energy_basis,fock_basis,primary_basis,
                            gram_diagonal,lowering_matrix,matrix_json)
from cubic_effective import cubic_tree_matrix,stripped_quartic_coefficient

checks=[]
def check(label,value):
    if value is not True and value is not False:raise TypeError(label)
    checks.append({'label':label,'passed':value})
    if not value:raise AssertionError(label)


def raw_ground_ofpt(N,level_cutoff):
    """Complete original cubic intermediate Fock sum at common one-mode cutoff.

    Do not cut by total intermediate energy: that would spoil the vacuum and
    one-body cancellations being tested. All three creation sectors retained.
    """
    modes=tuple((p,q) for p in range(level_cutoff+1) for q in range(level_cutoff+1-p))
    ket=((0,0),)*N;E=2*N;value=QQ.zero()
    for M in range(max(0,N-3),N+4):
        if (M-N)%2==0:continue
        for mid in combinations_with_replacement(modes,M):
            if sum(p-q for p,q in mid)!=0:continue
            Emid=2*M+sum(p+q for p,q in mid)
            forward=stripped_entry(QQ(2),3,mid,ket)
            if not forward:continue
            if E==Emid:raise ArithmeticError('nonzero projected cubic')
            backward=stripped_entry(QQ(2),3,ket,mid)
            value+=forward*backward/(E-Emid)
    return value


def run():
    literal=[]
    for cutoff in range(5):
        values=[raw_ground_ofpt(N,cutoff) for N in (0,1,2)]
        binding=values[2]-2*values[1]+values[0]
        gap=values[1]-values[0]
        check('literal_OFPT_binding_cutoff_'+str(cutoff),binding==-QQ(5)/24)
        check('literal_OFPT_onebody_cutoff_'+str(cutoff),gap==-QQ(cutoff+1)/(4*(cutoff+3)))
        literal.append({'mode_level_cutoff':cutoff,'raw_shifts':list(map(str,values)),
                        'vacuum_subtracted_gap':str(gap),'connected_binding':str(binding)})
    blocks=[]
    for d,E,J in [(QQ(2),4,0),(QQ(2),5,1),(QQ(2),6,0),(QQ(2),6,2),
                   (QQ(2),8,0),(QQ(2),10,0),(QQ(4),12,0)]:
        basis=energy_basis(d,QQ(E),J);A=cubic_tree_matrix(d,basis)
        G=matrix.diagonal(QQ,gram_diagonal(d,basis))
        check(f'Gram_D{d}_E{E}_J{J}',G*A==A.transpose()*G)
        check(f'number_conserving_D{d}_E{E}_J{J}',all(A[i,j]==0
              for i in range(len(basis)) for j in range(len(basis)) if len(basis[i])!=len(basis[j])))
        for side in (0,1):
            low=energy_basis(d,QQ(E-1),J+(-1 if side==0 else 1));B=cubic_tree_matrix(d,low)
            L=lowering_matrix(d,basis,low,side)
            check(f'Ward_D{d}_E{E}_J{J}_side{side}',L*A==B*L)
        blocks.append({'Delta':str(d),'E':E,'J':J,'dimension':len(basis),
                       'charpoly':str(A.charpoly('z').factor()),'matrix':matrix_json(A)})
    pair=[]
    for P in range(9):
        for Q in range(P+1):
            if (P+Q)%2:continue
            basis,B=primary_basis(QQ(2),2,P,Q);A=cubic_tree_matrix(QQ(2),basis)
            G=matrix.diagonal(QQ,gram_diagonal(QQ(2),basis));g=B.transpose()*G*B
            C=g.inverse()*B.transpose()*G*A*B
            target=-QQ(1)/(2*(P+1)*(P+2))
            if P==Q:target+=QQ(1)/(4*(P+1)*(P+2)*(2*P+3))
            check(f'pair_primary_D2_P{P}_Q{Q}',A*B==B*C and C[0,0]==target)
            pair.append({'P':P,'Q':Q,'coefficient':str(C[0,0])})
    zero_cases=0
    modes=((0,0),(0,1),(1,0),(1,1))
    for d in (QQ(2),QQ(4)):
        for triple in combinations_with_replacement(modes,3):
            parent=(int(d)+sum(p for p,q in triple),int(d)+sum(q for p,q in triple))
            coeff=stripped_quartic_coefficient(d,triple,(parent,))
            check(f'quartic_1to3_D{d}_{triple}',coeff==0);zero_cases+=1
    return {'passed':True,'checks':checks,'count':len(checks),'scale':'lambda3^2/(8*pi)',
            'literal_Fock_comparisons':literal,'complete_blocks':blocks,
            'D2_pair_primary_comparisons':pair,'one_to_three_zero_cases':zero_cases,
            'scope':'Finite exact certificates; all-index conclusions require analytic proofs in accompanying notes.'}


if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--output',required=True);args=parser.parse_args()
    out=Path(args.output)
    if out.exists():raise FileExistsError(str(out))
    start=time.monotonic();result=run();result['seconds']=time.monotonic()-start
    result['source_sha256']={name:hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest()
                            for name in ('contact_blocks.py','cubic_effective.py','verify_cubic_effective.py')}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'passed':True,'checks':result['count'],'seconds':result['seconds'],'output':str(out)}))
