#!/usr/bin/env python3
"""Independent exact audit of the new common-flag metric transfer.

No old or new spectrum/Racah implementation is imported.  The input is the
explicit differential pair Casimir and the monomial Bargmann inner product.
This verifies finite interfaces; the all-degree proof is in the report.
"""
from __future__ import annotations
import argparse
import itertools
import json
import time
from functools import lru_cache
from pathlib import Path
import sympy as s


def compositions(total, parts):
    if parts == 1:
        yield (total,)
    else:
        for a in range(total + 1):
            for tail in compositions(total-a, parts-1):
                yield (a,) + tail


@lru_cache(None)
def data(n, degree):
    z = s.symbols('z:'+str(n))
    exponents = tuple(compositions(degree, n-1))
    polys = tuple(s.Poly(s.prod((z[i]-z[-1])**a[i]
                       for i in range(n-1)), *z) for a in exponents)
    return z, exponents, polys


@lru_cache(None)
def gram(n, degree, delta):
    z, exponents, polys = data(n, degree)
    terms = [p.as_dict() for p in polys]
    norms = {}
    for p in terms:
        for a in p:
            norms[a] = s.prod(s.factorial(ai)/s.rf(delta, ai) for ai in a)
    return s.Matrix(len(polys), len(polys), lambda i,j:
                    sum(v*terms[j].get(a,0)*norms[a]
                        for a,v in terms[i].items()))


@lru_cache(None)
def casimir(n, degree, delta, edge):
    z, exponents, polys = data(n, degree)
    i,j = edge
    d = z[i]-z[j]
    columns=[]
    for f in polys:
        ff=f.as_expr()
        value=s.expand(-d*d*s.diff(ff,z[i],z[j])
                       + delta*d*(s.diff(ff,z[i])-s.diff(ff,z[j]))
                       + delta*(delta-1)*ff)
        val=s.Poly(value.subs(z[-1],0),*z[:-1])
        columns.append(s.Matrix([val.coeff_monomial(a) for a in exponents]))
    return s.Matrix.hstack(*columns)


@lru_cache(None)
def projectors(n, degree, delta, edge):
    c=casimir(n,degree,delta,edge)
    ident=s.eye(c.rows)
    values=[(delta+k)*(delta+k-1) for k in range(degree+1)]
    result=[]
    for k,lam in enumerate(values):
        proj=ident
        for j,v in enumerate(values):
            if j != k:
                proj=proj*(c-v*ident)/(lam-v)
        result.append(proj)
    assert sum(result,s.zeros(c.rows)) == ident
    return tuple(result)


def good_projector(n,p,q,delta,edge,offset=3):
    left=projectors(n,p,delta,edge)
    right=projectors(n,q,delta,edge)
    out=s.zeros(left[0].rows*right[0].rows)
    for ell in range(q+1):
        flag=sum(left[ell+offset:],s.zeros(left[0].rows))
        out+=s.kronecker_product(flag,right[ell])
    return out


def permutation(n,degree,perm):
    z,exp,polys=data(n,degree)
    cols=[]
    for f in polys:
        v=s.Poly(s.expand(f.as_expr().xreplace(dict(zip(z,[z[i] for i in perm])))
                         .subs(z[-1],0)),*z[:-1])
        cols.append(s.Matrix([v.coeff_monomial(a) for a in exp]))
    return s.Matrix.hstack(*cols)


def check(n,p,q,delta):
    start=time.perf_counter()
    d0=s.Rational(1,2)
    gl0,gr0=gram(n,p,d0),gram(n,q,d0)
    gld,grd=gram(n,p,delta),gram(n,q,delta)
    ml=gl0.inv()*gld
    mr=gr0.inv()*grd
    tr=s.kronecker_product(s.eye(gl0.rows),mr.inv())
    g0=s.kronecker_product(gl0,gr0)
    gd=s.kronecker_product(gld,grd)
    metric_identity=(tr.T*gd*tr-g0*s.kronecker_product(ml,mr.inv())).is_zero_matrix
    edges=[]
    for edge in itertools.combinations(range(n),2):
        flags={}
        for offset in (3,4):
            f0=good_projector(n,p,q,d0,edge,offset)
            fd=good_projector(n,p,q,delta,edge,offset)
            residual=(s.eye(tr.rows)-fd)*tr*f0
            backward=(s.eye(tr.rows)-f0)*tr.inv()*fd
            passed=residual.is_zero_matrix and backward.is_zero_matrix
            assert passed
            flags[offset]={'auxiliary':f0,'physical':fd,
                           'good_dimension':int(s.trace(f0)),
                           'both_inclusions_exact_zero':bool(passed)}
        perm=list(range(n));i,j=edge;perm[i],perm[j]=perm[j],perm[i]
        pair_swap=s.kronecker_product(permutation(n,p,tuple(perm)),permutation(n,q,tuple(perm)))
        even=(s.eye(tr.rows)+pair_swap)/2
        parity_checks={}
        for mass in ('auxiliary','physical'):
            difference=flags[3][mass]-flags[4][mass]
            assert (difference*even).is_zero_matrix
            parity_checks[mass]={'offsets_3_and_4_equal_on_pair_even':True,
                                 'offsets_differ_on_labelled_space':not bool(difference.is_zero_matrix)}
        edges.append({'edge':list(edge),
                      'offsets':{str(k):{key:val for key,val in value.items()
                                         if key not in ('auxiliary','physical')}
                                 for k,value in flags.items()},
                      'parity_checks':parity_checks})
    perm=list(range(n));perm[0],perm[-1]=perm[-1],perm[0]
    rep=s.kronecker_product(permutation(n,p,tuple(perm)),permutation(n,q,tuple(perm)))
    bose_commutator=(tr*rep-rep*tr).is_zero_matrix
    assert metric_identity and bose_commutator
    return {'n':n,'p':p,'q':q,'delta':str(delta),'labelled_dimension':tr.rows,
            'metric_identity':bool(metric_identity),'permutation_commutator_zero':bool(bose_commutator),
            'edges':edges,'seconds':time.perf_counter()-start}


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--extended',action='store_true')
    args=ap.parse_args()
    cases=[(3,6,2,s.Rational(3,2)),(3,7,3,s.Rational(7,3))]
    if args.extended:
        cases.append((4,4,1,s.Rational(2)))
    results=[check(*case) for case in cases]
    result={'status':'passed','method':'direct differential Casimir; independent polynomial Gram',
            'old_spectrum_modules_imported':False,'new_soft_modules_imported':False,
            'scope':'finite exact audits of all-pair flag transfer and its physical metric; not the asymptotic theorem itself',
            'cases':results}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))


if __name__ == '__main__':
    main()
