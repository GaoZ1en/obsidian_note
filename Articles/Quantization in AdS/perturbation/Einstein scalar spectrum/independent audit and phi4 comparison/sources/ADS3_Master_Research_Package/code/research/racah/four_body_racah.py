"""N=4 Einstein scalar O(G) spectrum using 6j contractions, not polynomials.

Exact mode returns a rational matrix and its complete nonzero characteristic
polynomial.  Numerical mode evaluates orthogonal Racah transforms stably and
uses the all-index exact kernel count to identify the physical spectrum.
The returned energies are E=4*Delta+P+Q+G*gamma+o(G).
"""
from __future__ import annotations

import argparse
from fractions import Fraction as F
from pathlib import Path
import json
import sys
import time

ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'engine'/'main'))
from counts import primary_dimension,baseline_multiplicity
from pair_gram import pair_excess,casimir_baseline
from su11_recoupling import NineJTable,ninej_unnormalized,coupled_norm


def labels(P,Q):
    return [(k,l,a,b) for l in range(Q+1)
            for k in range(min(P,l+2)+1) if (k+l)%2==0
            for b in range(Q-l+1) for a in range(P-k+1) if (a+b)%2==0]


def exact_matrices(delta,P,Q):
    import sympy as s
    d=F(delta)
    if P<Q:
        P,Q=Q,P
    ll=labels(P,Q);n=len(ll)
    G=s.diag(*[s.Rational(coupled_norm(d,P,k,a)*coupled_norm(d,Q,l,b))
               for k,l,a,b in ll])
    T=s.zeros(n)
    for i,(k,l,a,b) in enumerate(ll):
        for j in range(i,n):
            r,u,c,v=ll[j]
            r1=(ninej_unnormalized(d,P,k,a,r,c)
                *ninej_unnormalized(d,Q,l,b,u,v))
            r0=(((-1)**(P+Q))*G[i,i] if (k,l,a,b)==(c,v,r,u) else 0)
            T[i,j]=T[j,i]=4*s.Rational(r1)+r0+(G[i,i] if i==j else 0)
    potentials=[s.Rational(pair_excess(d,k,l)) for k,l,a,b in ll]
    M=s.diag(*[potentials[i]/G[i,i] for i in range(n)])*T
    return M,G,T,ll,potentials


def exact_spectrum(delta,P,Q,include_matrix=False):
    import sympy as s
    M,G,T,ll,potentials=exact_matrices(delta,P,Q)
    t=s.Symbol('t')
    poly=s.Poly(M.charpoly(t).as_expr(),t)
    az=min((power[0] for power,coefficient in poly.terms() if coefficient),default=0)
    positive=s.Poly(poly.as_expr()/t**az,t)
    dim=primary_dimension(4,P,Q)
    baseline_count=baseline_multiplicity(4,max(P,Q),min(P,Q))
    rank=positive.degree()
    assert rank==dim-baseline_count
    out={'Delta':str(delta),'N':4,'P':P,'Q':Q,
         'primary_dimension':dim,'baseline_multiplicity':baseline_count,
         'positive_rank':rank,'auxiliary_dimension':M.rows,
         'auxiliary_nullity':az,'baseline':str(casimir_baseline(F(delta),4,min(P,Q))),
         'positive_characteristic_polynomial':str(s.factor(positive.as_expr())),
         'polynomial_variable':'t=gamma-baseline',
         'exact_positive_coefficients':[str(c) for c in positive.all_coeffs()],
         'coupled_labels':[list(v) for v in ll],
         'energy_expansion':'E=4*Delta+P+Q+G*gamma+o(G)'}
    if include_matrix:
        out['rational_matrix']=[[str(M[i,j]) for j in range(M.cols)] for i in range(M.rows)]
        out['Gram_diagonal']=[str(G[i,i]) for i in range(G.rows)]
        out['potentials']=list(map(str,potentials))
    return out


def numeric_matrix(delta,P,Q,diagnostics=False):
    import numpy as np
    if P<Q:
        P,Q=Q,P
    ll=labels(P,Q);n=len(ll)
    L=NineJTable(delta,P,Q+2,diagnostics=diagnostics)
    R=NineJTable(delta,Q,Q,diagnostics=diagnostics)
    groups={}
    for i,(k,l,a,b) in enumerate(ll):
        groups.setdefault((k,l,b),[]).append((i,a))
    B=np.eye(n)
    for (k,l,b),rows in groups.items():
        ix=np.array([v[0] for v in rows]);aa=np.array([v[1] for v in rows])
        for (r,u,v),cols in groups.items():
            jx=np.array([w[0] for w in cols]);cc=np.array([w[1] for w in cols])
            B[np.ix_(ix,jx)]+=4*R.block(l,u)[b,v]*L.block(k,r)[np.ix_(aa,cc)]
    lookup={q:i for i,q in enumerate(ll)}
    for i,(k,l,a,b) in enumerate(ll):
        j=lookup.get((a,b,k,l))
        if j is not None:
            B[i,j]+=(-1)**(P+Q)
    potential=np.array([float(pair_excess(F(str(delta)),k,l)) for k,l,a,b in ll])
    B *= np.sqrt(potential[:,None]*potential[None,:])
    symmetry_error=float(np.max(abs(B-B.T))) if n else 0.0
    B=(B+B.T)/2
    info={'auxiliary_dimension':n,'physical_primary_dimension':primary_dimension(4,P,Q),
          'baseline_multiplicity':baseline_multiplicity(4,P,Q),
          'symmetry_error':symmetry_error,
          'stored_Racah_transform_bytes':sum(x.nbytes for x in L.moves.values())
                                        +sum(x.nbytes for x in R.moves.values()),
          'stored_9j_block_bytes':sum(x.nbytes for x in L.blocks.values())
                               +sum(x.nbytes for x in R.blocks.values()),
          'physical_positive_Gram_bytes':B.nbytes,
          'left_Racah_diagnostics':L.diagnostics,
          'right_Racah_diagnostics':R.diagnostics}
    return B,ll,info


def numeric_spectrum(delta,P,Q,diagnostics=False):
    import numpy as np
    t0=time.perf_counter()
    B,ll,info=numeric_matrix(delta,P,Q,diagnostics=diagnostics)
    t1=time.perf_counter()
    eigenvalues=np.linalg.eigvalsh(B)
    rank=info['physical_primary_dimension']-info['baseline_multiplicity']
    nz=len(ll)-rank
    zeros=eigenvalues[:nz]
    positive=eigenvalues[nz:]
    norm=max(1.,float(np.max(abs(eigenvalues))) if len(eigenvalues) else 1.)
    max_zero=float(np.max(abs(zeros))) if len(zeros) else 0.
    if max_zero>1e-9*norm or (len(positive) and positive[0]<=1e-10*norm):
        raise ArithmeticError('Numerical rank identification failed against exact Hilbert count.')
    baseline=float(casimir_baseline(F(str(delta)),4,min(P,Q)))
    return {'Delta':str(delta),'N':4,'P':P,'Q':Q,
            'baseline':baseline,'positive_rank':rank,'auxiliary_nullity':nz,
            'positive_shifts':positive.tolist(),
            'nonbaseline_corrections':(positive+baseline).tolist(),
            'max_discarded_zero':max_zero,'matrix_seconds':t1-t0,
            'diagonalization_seconds':time.perf_counter()-t1,
            'energy_expansion':'E=4*Delta+P+Q+G*gamma+o(G)',**info}


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--Delta',default='2')
    p.add_argument('--P',type=int,required=True)
    p.add_argument('--Q',type=int,required=True)
    p.add_argument('--exact',action='store_true')
    p.add_argument('--matrix',action='store_true')
    p.add_argument('--diagnostics',action='store_true')
    p.add_argument('--output')
    args=p.parse_args()
    if args.exact:
        result=exact_spectrum(F(args.Delta),args.P,args.Q,args.matrix)
    else:
        result=numeric_spectrum(F(args.Delta),args.P,args.Q,args.diagnostics)
    txt=json.dumps(result,indent=2)
    if args.output:
        Path(args.output).write_text(txt)
    else:
        print(txt)
