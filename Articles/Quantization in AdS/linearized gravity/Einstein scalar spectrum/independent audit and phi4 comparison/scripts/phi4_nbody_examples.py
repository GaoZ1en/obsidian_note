#!/usr/bin/env python3
"""New exact eigenbasis examples and left/right-parity decomposition.

Uses phi4_nbody_spectrum.py only. Writes fresh phi4_nbody_*.json files and never
changes the old 978-check record or its sources. Intended for Sage MCP execution.
"""
from __future__ import annotations
import hashlib
import importlib.util
from pathlib import Path
import sys
sys.dont_write_bytecode=True
from sage.all import QQ, identity_matrix, zero_matrix

HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('_phi4_nbody_examples_engine',HERE/'phi4_nbody_spectrum.py')
engine=importlib.util.module_from_spec(spec);spec.loader.exec_module(engine)


def parity_block(N,P,Delta):
    """At P=Q, exchange (p,q)<->(q,p); restrict the exact involution to primaries."""
    b=engine.primary_block(N,P,P,Delta);bs=b['basis'];ls=b['labels'];X=b['X'];K=b['K'];G=b['G']
    ix={s:i for i,s in enumerate(bs)};li={a:i for i,a in enumerate(ls)}
    S=zero_matrix(QQ,len(bs))
    for j,occ in enumerate(bs):
        dst=[0]*len(ls)
        for n,(p,q) in zip(occ,ls):dst[li[(q,p)]]=n
        S[ix[tuple(dst)],j]=1
    T=X.solve_right(S*X);I=identity_matrix(QQ,K.nrows())
    assert T*T==I and K*T==T*K and G*T==T.transpose()*G
    factors=[];polynomial=engine.RZ(1)
    for sign in (1,-1):
        U=(T-sign*I).right_kernel().basis_matrix().transpose()
        A=U.solve_right(K*U);metric=U.transpose()*G*U
        assert metric*A==A.transpose()*metric
        cp=engine.RZ(A.charpoly());polynomial*=cp
        factors.append({'parity':sign,'dimension':A.nrows(),
                        'charpoly':str(cp),'factorization':str(cp.factor()),
                        'columns_in_primary_basis':engine.mat_json(U),
                        'matrix':engine.mat_json(A),'Gram':engine.mat_json(metric)})
    assert polynomial==engine.RZ(K.charpoly())
    return {'N':N,'P':P,'Q':P,'Delta':str(QQ(Delta)),
            'primary_dimension':K.nrows(),'parity_matrix':engine.mat_json(T),
            'primary_charpoly':str(engine.RZ(K.charpoly())),
            'sectors':factors,'all_checks_passed':True}


def main(output_directory=None):
    out=Path(output_directory or HERE.parent/'results').resolve()
    files=[]
    cases=[(4,2,2,'phi4_nbody_N4_P2_Q2_D2_certified.json'),
           (5,2,2,'phi4_nbody_N5_P2_Q2_D2.json'),
           (6,2,2,'phi4_nbody_N6_P2_Q2_D2.json'),
           (8,3,3,'phi4_nbody_N8_P3_Q3_D2.json')]
    for N,P,Q,name in cases:
        engine.main(['--N',str(N),'--P',str(P),'--Q',str(Q),'--Delta','2',
                     '--eigenspaces','--descendants','--output',str(out/name)])
        files.append(str(out/name))
    parity=[parity_block(N,P,QQ(2)) for N,P in
            [(4,2),(5,2),(6,2),(4,3),(6,3),(8,3),(4,4),(5,4),(6,4)]]
    path=out/'phi4_nbody_parity.json'
    engine.save_new_json(path,{'metadata':engine.metadata(),'blocks':parity,
                              'scope':'Nine exact balanced blocks; general symmetry proof belongs in the note.'})
    files.append(str(path))
    smoke=[]
    for N,P,Q in [(0,0,0),(1,0,0),(1,2,1)]:
        report=engine.spectrum_report(N,P,Q,QQ(3)/2,True,True,True)
        smoke.append({'N':N,'P':P,'Q':Q,'Delta':'3/2',
                      'checks':report['checks'],'primary_dimension':report['primary_dimension'],
                      'shell_charpoly':report['full_shell_charpoly'],
                      'descendant_checks':report['descendants']['all_checks_passed']})
    invalid_rejected=[]
    for args in [(-1,0,0,2),(2,-1,0,2),(2,1,1,1),(0,1,0,2)]:
        try:engine.validate(*args)
        except ValueError:invalid_rejected.append(args)
        else:raise AssertionError(('Invalid input accepted',args))
    protected=out/'phi4_nbody_N4_P2_Q2_D2_certified.json'
    before=hashlib.sha256(protected.read_bytes()).hexdigest()
    try:engine.save_new_json(protected,{'overwrite_test':True})
    except FileExistsError:pass
    else:raise AssertionError('Existing result overwrite was not rejected')
    assert hashlib.sha256(protected.read_bytes()).hexdigest()==before
    path=out/'phi4_nbody_api_smoke.json'
    engine.save_new_json(path,{'metadata':engine.metadata(),'valid_boundary_cases':smoke,
        'invalid_cases_rejected':invalid_rejected,'existing_output_preserved':True,
        'example_files':files,'all_checks_passed':True})
    files.append(str(path))
    for row in parity:
        print('PARITY',row['N'],row['P'],[(s['parity'],s['dimension'],s['factorization']) for s in row['sectors']])
    print('FILES',files)
    return files


if __name__=='__main__':main()
