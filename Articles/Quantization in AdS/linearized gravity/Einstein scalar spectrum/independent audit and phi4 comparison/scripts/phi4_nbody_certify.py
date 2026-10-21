#!/usr/bin/env python3
"""Bounded exact certification of the new arbitrary-N phi4 spectrum engine.

Explicit primary/full-shell cases: N=2..8, P+Q<=6, Delta=3/2,2,7/3;
plus N=4..6,P=Q=4 at the same masses; N=4..8,P=8,Q=0 at Delta=2.
No extrapolation beyond these cases is represented by a finite certificate.
Run main() through the Sage MCP or Sage's Python. All outputs must be new.
"""
from __future__ import annotations
import csv
from copy import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import time
sys.dont_write_bytecode=True
from sage.all import QQ, ZZ, identity_matrix, matrix, zero_matrix

HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('_phi4_nbody_engine',HERE/'phi4_nbody_spectrum.py')
engine=importlib.util.module_from_spec(spec);spec.loader.exec_module(engine)


def exact_psd(A):
    """Rational Schur-complement PSD certificate, including zero pivots."""
    if A!=A.transpose():return {'passed':False,'reason':'not symmetric'}
    B=copy(A);positive=0;zero=0;n=B.nrows()
    for i in range(n):
        p=B[i,i]
        if p<0:return {'passed':False,'reason':'negative pivot','index':i}
        if p==0:
            if any(B[i,j]!=0 for j in range(i+1,n)):
                return {'passed':False,'reason':'zero diagonal with nonzero row','index':i}
            zero+=1;continue
        positive+=1
        for j in range(i+1,n):
            for k in range(j,n):
                B[j,k]-=B[j,i]*B[i,k]/p
                B[k,j]=B[j,k]
    return {'passed':True,'positive_pivots':positive,'zero_pivots':zero}


def reflection_check(N,P,Q,d):
    src=engine.occupation_basis(N,P,Q);dst=engine.occupation_basis(N,Q,P)
    ls=engine.labels(P,Q);ld=engine.labels(Q,P)
    index={s:i for i,s in enumerate(dst)};li={a:i for i,a in enumerate(ld)}
    S=zero_matrix(QQ,len(dst),len(src))
    for col,s in enumerate(src):
        t=[0]*len(ld)
        for n,(p,q) in zip(s,ls):t[li[(q,p)]]=n
        S[index[tuple(t)],col]=1
    H=engine.hamiltonian(N,P,Q,d);Hr=engine.hamiltonian(N,Q,P,d)
    return Hr*S==S*H


def main(output_directory=None):
    start=time.monotonic()
    out=Path(output_directory or HERE.parent/'results').resolve()
    jpath=out/'phi4_nbody_certification.json';cpath=out/'phi4_nbody_spectra.csv'
    for path in (jpath,cpath):
        if path.exists():raise FileExistsError(f'Refusing to overwrite {path}')
    oldpath=HERE.parent/'results/phi4_checks.json'
    old=json.loads(oldpath.read_text(encoding='utf-8'))
    if old['summary']['passed']!=978 or old['summary']['failed']!=0:
        raise AssertionError('Prior certificate is not the expected 978-check record')
    if engine.metadata()['reused_script_sha256']!=old['script_sha256']:
        raise AssertionError('Reused radial script changed after its 978-check certificate')
    references={}
    for row in old['finite_matrices']['two_body_blocks']:
        references[(2,row['P'],row['Q'],row['Delta'])]=row
    for row in old['finite_matrices']['three_body_blocks']:
        references[(3,row['P'],row['Q'],row['Delta'])]=row
    masses=(QQ(3)/2,QQ(2),QQ(7)/3)
    cases=[(N,P,Q,d) for N in range(2,9) for d in masses
           for P in range(7) for Q in range(7-P)]
    cases += [(N,4,4,d) for N in range(4,7) for d in masses]
    cases += [(N,8,0,QQ(2)) for N in range(4,9)]
    records=[];check_count=0;regression_count=0;legacy_record_count=0
    max_shell=0;max_primary=0
    for N,P,Q,d in cases:
        b=engine.primary_block(N,P,Q,d);H=b['H'];K=b['K'];G=b['G']
        checks=engine.block_checks(N,P,Q,d)
        checks['left_right_reflection']=reflection_check(N,P,Q,d)
        gram_positive=exact_psd(G)
        lower=exact_psd(G*K)
        upper=exact_psd(ZZ(N*(N-1)//2)*G-G*K)
        checks['primary_Gram_positive']=(gram_positive['passed'] and gram_positive['zero_pivots']==0)
        checks['positive_pair_bound_lower']=lower['passed']
        checks['positive_pair_bound_upper']=upper['passed']
        D=engine.descendant_reconstruction(N,P,Q,d)
        checks['descendant_basis_complete']=D['all_checks_passed']
        cp=engine.RZ(K.charpoly());factors=cp.factor()
        minimum=engine.RZ(1)
        for f,e in factors:minimum*=f
        checks['primary_semisimple']=engine.polynomial_matrix(minimum,K)==zero_matrix(QQ,K.nrows())
        if N in (2,3):
            checks['legacy_basis_match']=engine.occupation_basis(N,P,Q)==engine.legacy.occupation_basis(N,P,Q)
            checks['legacy_direct_matrix_match']=H==engine.legacy.direct_matrix(N,P,Q,d)
            regression_count+=1
        previous=references.get((N,P,Q,str(d)))
        if previous:
            text=previous.get('primary_charpoly_gamma0_units') if N==3 else previous['charpoly_gamma0_units']
            expected=engine.RZ(text.replace('x','z'))
            actual=cp if N==3 else engine.RZ(H.charpoly())
            checks['old_978_record_polynomial_match']=actual==expected
            legacy_record_count+=1
        if not all(v is True for v in checks.values()):raise AssertionError((N,P,Q,d,checks))
        check_count+=len(checks)
        max_shell=max(max_shell,H.nrows());max_primary=max(max_primary,K.nrows())
        records.append({'N':N,'P':P,'Q':Q,'Delta':str(d),
            'shell_dimension':H.nrows(),'primary_dimension':K.nrows(),
            'primary_nullity':K.nrows()-K.rank(),
            'primary_charpoly':str(cp),'primary_factorization':str(factors),
            'full_shell_charpoly':str(engine.RZ(H.charpoly())),
            'descendant_components':D['components'],
            'primary_Gram_certificate':gram_positive,
            'lower_bound_certificate':lower,'upper_bound_certificate':upper,
            'checks':checks})
    report={'metadata':engine.metadata(),
        'certifier_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'old_978_result_sha256':hashlib.sha256(oldpath.read_bytes()).hexdigest(),
        'normalization':'Every polynomial variable z denotes K/c0, c0=1/[8*pi*(2*Delta-1)].',
        'scope':{'baseline':{'N':[2,8],'total_degree_max':6,'all_PQ':True,'Delta':['3/2','2','7/3']},
                 'balanced_extensions':{'N':[4,6],'P':4,'Q':4,'Delta':['3/2','2','7/3']},
                 'chiral_extensions':{'N':[4,8],'P':8,'Q':0,'Delta':['2']},
                 'not_claimed':'No all-label result is inferred merely by finite enumeration; no continuum remainder or integrability assertion.'},
        'summary':{'explicit_blocks':len(records),'exact_boolean_checks':check_count,
                   'passed':check_count,'failed':0,
                   'legacy_direct_matrix_regressions':regression_count,
                   'old_978_record_polynomial_regressions':legacy_record_count,
                   'max_shell_dimension':max_shell,'max_primary_dimension':max_primary,
                   'elapsed_seconds':round(time.monotonic()-start,3)},
        'blocks':records}
    engine.save_new_json(jpath,report)
    with cpath.open('x',encoding='utf-8',newline='') as f:
        writer=csv.DictWriter(f,fieldnames=['N','P','Q','Delta','shell_dimension',
            'primary_dimension','primary_nullity','primary_charpoly','primary_factorization'])
        writer.writeheader()
        for row in records:writer.writerow({k:row[k] for k in writer.fieldnames})
    print(json.dumps(report['summary'],ensure_ascii=False))
    print(str(jpath));print(str(cpath))
    return report


if __name__=='__main__':main()
