#!/usr/bin/env python3
"""Independent polynomial audit of the all-Q logarithmic kernel construction.

The right primary reproducing kernel is built from the original positive
discrete-series Bargmann norms, without either manybody spectrum program.
Pair projectors are computed from the differential pair Casimir itself.
"""
from __future__ import annotations
import itertools
import json
import time
from pathlib import Path
import sympy as s

HERE=Path(__file__).resolve().parent


def compositions(total,slots):
    if slots==1:
        yield (total,);return
    for first in range(total+1):
        for rest in compositions(total-first,slots-1):yield (first,)+rest


def kernel(n,q,d,z,w):
    basis=[s.prod((z[i]-z[-1])**a[i] for i in range(n-1))
           for a in compositions(q,n-1)]
    polys=[s.Poly(s.expand(f),*z).as_dict() for f in basis]
    norms={a:s.prod(s.factorial(v)/s.rf(d,v) for v in a)
           for a in compositions(q,n)}
    gram=s.Matrix([[sum(c*polys[j].get(a,0)*norms[a] for a,c in pi.items())
                    for j in range(len(polys))] for pi in polys])
    right=s.Matrix([f.xreplace(dict(zip(z,w))) for f in basis])
    k=s.expand((s.Matrix(basis).T*gram.inv()*right)[0])
    return k,gram


def casimir(f,coords,d):
    x,y=coords[:2];delta=x-y
    return s.expand(-delta**2*s.diff(f,x,y)+d*delta*(s.diff(f,x)-s.diff(f,y))
                    +d*(d-1)*f)


def project(f,coords,d,q,label):
    target=(d+label)*(d+label-1)
    for other in range(q+1):
        if other==label:continue
        value=(d+other)*(d+other-1)
        f=s.expand((casimir(f,coords,d)-value*f)/(target-value))
    return f


def check(n,q,d):
    start=time.time();z=s.symbols(f'z0:{n}');w=s.symbols(f'w0:{n}')
    a=s.symbols(f'a1:{n}');Z=[v-s.Add(*z)/n for v in z]
    W=[v-s.Add(*w)/n for v in w]
    k,gram=kernel(n,q,d,z,w)
    # Exact transfer is what ties the filtration to the physical pair labels.
    assert s.expand(casimir(k,z,d)-casimir(k,w,d))==0
    vectors=[s.Add(*(a[r-1]*Z[i]**r for r in range(1,n))) for i in range(n)]
    generating=s.Poly(s.expand(k.xreplace(dict(zip(z,vectors)))),*a)
    checks=0
    for nu in compositions(q,n-1):
        f=s.expand(generating.coeff_monomial(s.prod(aa**v for aa,v in zip(a,nu))))
        assert f!=0
        for j in range(n-1):
            swap={z[j]:z[j+1],z[j+1]:z[j],w[j]:w[j+1],w[j+1]:w[j]}
            assert s.expand(f.xreplace(swap)-f)==0
        for label in range(q+1):
            p=project(f,w,d,q,label)
            for r in range(label):
                assert s.expand(s.diff(p,z[0],r).subs(z[0],z[1]))==0
                checks+=1
    wrong=s.expand(s.Add(*(zi*wi for zi,wi in zip(Z,W)))**q)
    wrong_defect=s.factor(project(wrong,w,d,q,q).subs(z[0],z[1]))
    if q>1:assert wrong_defect!=0
    record={'N':n,'Q':q,'Delta':str(d),'primary_right_dimension':gram.rows,
            'logarithmic_generators_checked':len(list(compositions(q,n-1))),
            'normal_jet_residuals_exact_zero':checks,'pair_casimir_transfer':True,
            'simultaneous_bose_symmetry':True,
            'incorrect_euclidean_kernel_defect_at_pair_diagonal':str(wrong_defect),
            'elapsed_seconds':time.time()-start}
    print(record,flush=True)
    return record


def main():
    records=[]
    for n,q,d in [(3,2,s.Integer(2)),(4,2,s.Integer(2)),(4,2,s.Rational(3,2))]:
        records.append(check(n,q,d))
    (HERE/'logarithmic_kernel_audit.json').write_text(json.dumps(records,indent=2)+'\n')


if __name__=='__main__':main()
