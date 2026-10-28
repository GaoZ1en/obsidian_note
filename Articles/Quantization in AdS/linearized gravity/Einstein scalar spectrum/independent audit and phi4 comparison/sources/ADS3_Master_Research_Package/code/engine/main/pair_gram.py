#!/usr/bin/env python3
"""All-N Einstein scalar spectrum by pair--spectator Gram compression.

This independently constructs the interaction image from coupled global
primaries.  Only the two free-basis routines in general/fock_exact.py are
shared; no many-body Hamiltonian or Racah matrix is imported.  The auxiliary
matrix uses the three double cosets of S_2 x S_(N-2) in S_N.  For fixed Q and
N>=3 its size grows as P**(N-3), rather than P**(N-2) primary states.

Polynomial dictionaries use keys (p_1,...,p_N,q_1,...,q_N).  Fractions are exact.
The program is a reference implementation: monomial expansion of coupled
states can still be expensive.  N=3 is better served by the closed Racah
implementation in ../three/.  All finite inputs terminate in exact arithmetic.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from math import comb, factorial, prod
from pathlib import Path
import json
import sys
import time
import sympy as s

sys.path.insert(0, str(Path(__file__).resolve().parents[1]/'general'))
from fock_exact import occupation_basis, primary_basis
from counts import primary_dimension, baseline_multiplicity


def qs(a):
    a=F(a)
    return s.Rational(a.numerator,a.denominator)


@lru_cache(None)
def poch(a,n):
    return prod((a+r for r in range(n)),start=F(1))


@lru_cache(None)
def weight(delta,key):
    return prod((F(factorial(a))/poch(delta,a) for a in key),start=F(1))


def inner(f,g,delta):
    if len(f)>len(g):
        f,g=g,f
    return sum((v*g.get(k,F(0))*weight(delta,k) for k,v in f.items()),F(0))


def add_scaled(out,f,c):
    if not c:
        return
    for k,v in f.items():
        out[k]+=c*v


def cleaned(f):
    return {k:v for k,v in f.items() if v}


def raising(f,delta,indices):
    out=defaultdict(F)
    for key,v in f.items():
        for i in indices:
            k=list(key);k[i]+=1
            out[tuple(k)]+=(key[i]+delta)*v
    return cleaned(out)


def lowering(f,indices):
    out=defaultdict(F)
    for key,v in f.items():
        for i in indices:
            if key[i]:
                k=list(key);k[i]-=1
                out[tuple(k)]+=key[i]*v
    return cleaned(out)


@lru_cache(None)
def distinct_permutations(state):
    counts=Counter(state)
    out=[]
    def rec(prefix):
        if len(prefix)==len(state):
            out.append(tuple(prefix));return
        for a in counts:
            if counts[a]:
                counts[a]-=1;prefix.append(a)
                rec(prefix)
                prefix.pop();counts[a]+=1
    rec([])
    return tuple(out)


@lru_cache(None)
def spectator_primaries(n,p,q):
    """Free primary polynomials only: no interaction information."""
    if n==1:
        return ({(0,0):F(1)},) if p==q==0 else ()
    if n==2:
        if (p+q)%2:
            return ()
        out={}
        for a in range(p+1):
            for b in range(q+1):
                out[(a,p-a,b,q-b)]=F((-1)**(p+q-a-b)*comb(p,a)*comb(q,b))
        return (out,)
    b=primary_basis(n,p,q)
    basis=occupation_basis(n,p,q)
    answer=[]
    for col in range(b.cols):
        out={}
        for row,state in enumerate(basis):
            if not b[row,col]:
                continue
            coeff=F(b[row,col])
            for perm in distinct_permutations(state):
                key=tuple(v[0] for v in perm)+tuple(v[1] for v in perm)
                out[key]=coeff
        answer.append(out)
    return tuple(answer)


def pair_seed(k,l):
    return {(a,k-a,b,l-b):F((-1)**(k+l-a-b)*comb(k,a)*comb(l,b))
            for a in range(k+1) for b in range(l+1)}


def tensor(pair,sp,n):
    out={}
    m=n-2
    for a,v in pair.items():
        for b,w in sp.items():
            key=a[:2]+b[:m]+a[2:]+b[m:]
            out[key]=v*w
    return out


def couple(f,n,m,h_pair,h_sp,delta,chirality):
    """CG primary from separately primary pair and spectator clusters.

    sum_r (-1)^r binom(m,r) R_pair^r R_sp^(m-r)
          /[(2h_pair)_r (2h_sp)_(m-r)] f.
    """
    if m==0:
        return f
    offset=n*chirality
    aa=tuple(offset+i for i in (0,1))
    bb=tuple(offset+i for i in range(2,n))
    spectator_ladder=[f]
    for _ in range(m):
        spectator_ladder.append(raising(spectator_ladder[-1],delta,bb))
    out=defaultdict(F)
    for r in range(m+1):
        cur=spectator_ladder[m-r]
        for _ in range(r):
            cur=raising(cur,delta,aa)
        c=F((-1)**r*comb(m,r))/(poch(2*h_pair,r)*poch(2*h_sp,m-r))
        add_scaled(out,cur,c)
    return cleaned(out)


def pair_norm(delta,k):
    return F(factorial(k))*poch(2*delta+k-1,k)/poch(delta,k)**2


def cg_norm(m,ha,hb):
    return F(factorial(m))*poch(2*ha+2*hb+m-1,m)/(poch(2*ha,m)*poch(2*hb,m))


def pair_energy(delta,k,l):
    """The dynamically established pair input, independently transcribed."""
    assert (k+l)%2==0
    n=min(k,l); spin=abs(k-l)
    mu=delta*(delta-2);h=delta+n;c=h*(h-1);u=4*mu-8*c
    if spin==0:
        if n==0:
            return -4*delta**2+2*delta**2*(2*delta+5)/((2*delta-1)*(2*delta+1))
        return u*(2*h-2)/(2*h-1)-2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin==2:
        return u+(n+1)*(n+2)*(2*delta+n-1)*(2*delta+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u


def pair_excess(delta,k,l):
    return pair_energy(delta,k,l)-(4*delta*(delta-2)-8*(delta+l)*(delta+l-1))


def casimir_baseline(delta,n,q):
    h=n*delta/2+q
    return 2*n*delta*(delta-2)-8*h*(h-1)


def swap(f,n,transpositions):
    out={}
    for key,v in f.items():
        a=list(key)
        for i,j in transpositions:
            a[i],a[j]=a[j],a[i]
            a[n+i],a[n+j]=a[n+j],a[n+i]
        out[tuple(a)]=v
    return out


def channel_vectors(delta,n,p,q,verify=False):
    if n<3 or p<q:
        raise ValueError('This construction uses N>=3 and P>=Q; exchange chiralities first.')
    labels=[];vectors=[];norm_factors=[];sp_polys=[]
    for l in range(q+1):
        for k in range(min(p,l+2)+1):
            if (k+l)%2:
                continue
            for b in range(q-l+1):
                for a in range(p-k+1):
                    sp=spectator_primaries(n-2,a,b)
                    if not sp:
                        continue
                    ml=p-k-a;mr=q-l-b
                    hl=delta+k;hr=delta+l
                    sl=(n-2)*delta/2+a;sr=(n-2)*delta/2+b
                    factor=(pair_norm(delta,k)*pair_norm(delta,l)*
                            cg_norm(ml,hl,sl)*cg_norm(mr,hr,sr))
                    for rho,poly in enumerate(sp):
                        f=tensor(pair_seed(k,l),poly,n)
                        f=couple(f,n,ml,hl,sl,delta,0)
                        f=couple(f,n,mr,hr,sr,delta,1)
                        if verify:
                            if lowering(f,range(n)) or lowering(f,range(n,2*n)):
                                raise ArithmeticError('Cluster coupling is not a global primary.')
                            if inner(f,f,delta)!=factor*inner(poly,poly,delta):
                                raise ArithmeticError('Cluster norm is incorrect.')
                        labels.append((k,l,a,b,rho));vectors.append(f)
                        norm_factors.append(factor);sp_polys.append(poly)
    return labels,vectors,norm_factors,sp_polys


def gram_matrices(delta,n,p,q,verify=False):
    labels,vecs,factors,sps=channel_vectors(delta,n,p,q,verify=verify)
    r=len(labels);g=s.zeros(r);r1=s.zeros(r);r0=s.zeros(r)
    swap1=[swap(f,n,((1,2),)) for f in vecs]
    swap0=[swap(f,n,((0,2),(1,3))) for f in vecs] if n>=4 else []
    for i in range(r):
        for j in range(i,r):
            if labels[i][:4]==labels[j][:4]:
                value=factors[i]*inner(sps[i],sps[j],delta)
                g[i,j]=g[j,i]=qs(value)
            if verify and qs(inner(vecs[i],vecs[j],delta))!=g[i,j]:
                raise ArithmeticError('Coupled channel Gram orthogonality fails.')
            r1[i,j]=r1[j,i]=qs(inner(vecs[i],swap1[j],delta))
            if n>=4:
                r0[i,j]=r0[j,i]=qs(inner(vecs[i],swap0[j],delta))
    # C_N times the Bose Gram, by the three pair-orbit double cosets.
    t=g+2*(n-2)*r1+comb(n-2,2)*r0
    v=s.diag(*[qs(pair_excess(delta,k,l)) for k,l,_,_,_ in labels])
    if any(a<=0 for a in v.diagonal()):
        raise ArithmeticError('Every included residual coefficient must be positive.')
    matrix=v*g.inv()*t if r else s.zeros(0)
    return matrix,g,t,labels,vecs


def symmetrize_orbits(f,n):
    """Coordinates of Pi_B f in DISTINCT orbit sums, using orbit averaging."""
    out=defaultdict(F)
    for key,v in f.items():
        state=tuple(sorted(zip(key[:n],key[n:])))
        count=factorial(n)//prod(factorial(c) for c in Counter(state).values())
        out[state]+=v/F(count)
    return cleaned(out)


def compressed_spectrum(delta,n,p,q,verify=False,states=False):
    started=time.monotonic();delta=F(delta)
    if delta<=1 or n<3 or p<0 or q<0:
        raise ValueError('Require Delta>1, N>=3 and nonnegative excitations.')
    if p<q:
        p,q=q,p
        exchanged=True
    else:
        exchanged=False
    matrix,g,t,labels,vecs=gram_matrices(delta,n,p,q,verify=verify)
    x=s.Symbol('lambda');r=matrix.rows
    # Drop linearly dependent image generators BEFORE forming a determinant.
    pivots=list(t.rref()[1])
    rank=len(pivots);az=r-rank
    if rank:
        coordinates=t.extract(pivots,pivots).inv()*t.extract(pivots,range(r))
        positive_matrix=coordinates*matrix.extract(range(r),pivots)
    else:
        positive_matrix=s.zeros(0)
    nonzero=positive_matrix.charpoly(x).as_expr()
    dim=primary_dimension(n,p,q)
    if rank>dim:
        raise ArithmeticError('Image rank exceeds physical Bose-primary dimension.')
    if dim-rank!=baseline_multiplicity(n,p,q):
        raise ArithmeticError('Positive image rank disagrees with the proved logarithmic-kernel formula.')
    base=qs(casimir_baseline(delta,n,q))
    physical=s.factor(x**(dim-rank)*nonzero)
    result={
        'N':n,'P':p,'Q':q,'input_chiralities_exchanged':exchanged,'Delta':str(delta),
        'energy_convention':'E=N*Delta+P+Q+G*(baseline+lambda)+o(G); no higher-order closure asserted',
        'baseline':str(base),'free_primary_energy':str(n*delta+p+q),
        'primary_dimension':dim,'auxiliary_dimension':r,'positive_rank':rank,
        'physical_baseline_multiplicity':dim-rank,'discarded_auxiliary_zeros':az,
        'shifted_characteristic_polynomial':str(physical),
        'nonzero_characteristic_polynomial':str(s.factor(nonzero)),
        'shifted_characteristic_factorization':{'zero_root_multiplicity':dim-rank,'nonzero_coefficients_descending':[str(v) for v in s.Poly(nonzero,x).all_coeffs()]},
        'nonzero_coefficients_descending':[str(v) for v in s.Poly(nonzero,x).all_coeffs()],
        'channels':labels,
        'matrix':[[str(v) for v in matrix.row(i)] for i in range(r)],
        'independent_image_columns':pivots,
        'positive_image_matrix':[[str(v) for v in positive_matrix.row(i)] for i in range(rank)],
        'bose_gram_times_pair_count':[[str(v) for v in t.row(i)] for i in range(r)],
        'elapsed_seconds':time.monotonic()-started,
        'algorithm':'pair-spectator coupled primaries and 3 double cosets; exact rational arithmetic',
    }
    if verify:
        # This verifies only the independent many-body representation engine.
        # Raw Einstein constraint checks are kept in ../physics/.
        from fock_exact import primary_hamiltonian,orbit_gram
        hp,b,hfull=primary_hamiltonian(delta,n,p,q)
        target=(hp-base*s.eye(dim)).charpoly(x).as_expr()
        if s.expand(target-physical)!=0:
            raise ArithmeticError('Independent orbit Hamiltonian characteristic polynomial differs.')
        orbit=occupation_basis(n,p,q);idx={a:i for i,a in enumerate(orbit)}
        av=s.zeros(len(orbit),r)
        for j,f in enumerate(vecs):
            for key,v in symmetrize_orbits(f,n).items():
                av[idx[key],j]=qs(v)
        expected=av.T*orbit_gram(delta,n,p,q)*av*comb(n,2)
        if expected!=t:
            raise ArithmeticError('Direct Bose projection differs from double-coset Gram.')
        if (hfull-base*s.eye(hfull.rows))*av!=av*matrix:
            raise ArithmeticError('State reconstruction does not intertwine Hamiltonians.')
        result['independent_verification']='exact characteristic polynomial, double-coset Gram and state intertwiner agree'
    if states:
        # A nonzero root lambda and any x in ker(M-lambda I) produce Pi_B F x.
        # For physical baseline eigenvectors solve the dual pair-jet constraints.
        result['state_generators']=[{
            'channel':label,
            'bose_orbit_polynomial':[{'orbit':key,'coefficient':str(value)}
                                     for key,value in sorted(symmetrize_orbits(f,n).items())]
        } for label,f in zip(labels,vecs)]
        result['state_rule']='For each lambda>0 solve (positive_image_matrix-lambda I)y=0 and combine only independent_image_columns with coefficients y; normalize using the corresponding principal submatrix of bose_gram_times_pair_count divided by binomial(N,2). All baseline states are explicitly generated by general/logarithmic_states.py.'
    return result


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--delta',default='2');ap.add_argument('--n',type=int,required=True)
    ap.add_argument('--p',type=int,required=True);ap.add_argument('--q',type=int,required=True)
    ap.add_argument('--verify',action='store_true');ap.add_argument('--states',action='store_true')
    ap.add_argument('--output',type=Path)
    args=ap.parse_args()
    result=compressed_spectrum(F(args.delta),args.n,args.p,args.q,verify=args.verify,states=args.states)
    raw=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(raw)
    print(json.dumps({k:v for k,v in result.items() if k not in ('matrix','positive_image_matrix','bose_gram_times_pair_count','state_generators','channels')},ensure_ascii=False,indent=2))


if __name__=='__main__':
    main()
