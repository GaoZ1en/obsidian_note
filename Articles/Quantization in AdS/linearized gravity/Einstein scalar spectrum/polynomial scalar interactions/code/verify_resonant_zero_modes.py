#!/usr/bin/env sage -python
"""Embed chiral contact kernels into complete exceptional (E,J) Fock blocks."""
import argparse,json
from pathlib import Path
from sage.all import QQ,matrix
from contact_blocks import fock_basis,energy_basis,contact_matrix,matrix_json


def run():
    records=[]
    for k,N,P,d in [(2,3,6,QQ(2)),(3,3,2,QQ(2)),(3,4,4,QQ(2)),
                     (3,5,8,QQ(2)),(4,4,2,QQ(3)/2),(4,5,4,QQ(2))]:
        chiral=fock_basis(N,P,0); A=contact_matrix(d,2*k,chiral)
        Z=A.right_kernel().basis_matrix().transpose()
        E=N*d+P; J=P
        full=energy_basis(d,E,J); H=contact_matrix(d,2*k,full)
        rows={state:i for i,state in enumerate(full)}
        embedding=matrix(QQ,len(full),len(chiral))
        for j,state in enumerate(chiral):
            embedding[rows[state],j]=1
        residual=H*embedding*Z
        if Z.ncols()==0 or not residual.is_zero():
            raise AssertionError((k,N,P,d))
        records.append({'k':k,'N':N,'P':P,'Delta':str(d),'E':str(E),'J':J,
                        'chiral_dimension':len(chiral),'kernel_dimension':Z.ncols(),
                        'complete_dimension':len(full),
                        'complete_particle_numbers':sorted(set(map(len,full))),
                        'chiral_basis':chiral,'kernel_columns':matrix_json(Z),
                        'full_resonant_residual_zero':True})
    return {'passed':True,'records':records,
            'scope':'Finite corroboration of analytic chiral zero-survival theorem; no higher-order protection.'}


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',required=True)
    args=p.parse_args();out=Path(args.output)
    if out.exists():raise FileExistsError(str(out))
    report=run();out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'passed':True,'cases':len(report['records']),'dimensions':[r['complete_dimension'] for r in report['records']],'output':str(out)}))
