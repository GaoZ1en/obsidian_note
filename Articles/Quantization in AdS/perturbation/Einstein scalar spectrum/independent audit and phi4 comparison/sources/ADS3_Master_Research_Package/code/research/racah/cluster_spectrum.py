"""Complete fixed-Q, P->infinity N=4 residual cluster spectrum.

This implements finite truncations of the proved cluster limit, exact atom
weights, exact eventual auxiliary-nullity counts, and an explicit rational
tail bound.  It never constructs a high-P four-particle polynomial or matrix.
Right subtraction is held fixed even when a three-particle block has t<u.
"""
from __future__ import annotations
from fractions import Fraction as F
from itertools import combinations_with_replacement
from math import comb
from pathlib import Path
import json
import sys

ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'engine'/'three'))
sys.path.insert(0,str(ROOT/'engine'/'main'))
from three_body_nonchiral import (channels,primary_dimension as d3,
    chiral_primary_dimension,rational_recoupling,residual_potential)
from pair_gram import pair_excess
from su11_recoupling import equal_low_f,poch


def oriented_kernel_3(t,u):
    """Kernel of W3-b3(u); DO NOT interchange t and u here."""
    return sum(chiral_primary_dimension(t-12-u-j) for j in range(u+1))


def three_matrix_exact(delta,t,u):
    import sympy as s
    aa=channels(t,u)
    return s.Matrix([[(int(i==j)+2*rational_recoupling(delta,t,k,r)
                       *rational_recoupling(delta,u,l,v))*residual_potential(delta,r,v)
                       for j,(r,v) in enumerate(aa)]
                       for i,(k,l) in enumerate(aa)])


def three_matrix_numeric(delta,t,u):
    import numpy as np
    aa=channels(t,u)
    vv=np.array([float(pair_excess(F(str(delta)),k,l)) for k,l in aa])
    R=np.array([[(-1)**(t+u+k+l+r+v)*equal_low_f(delta,t,k,r)
                 *equal_low_f(delta,u,l,v) for r,v in aa] for k,l in aa])
    return np.sqrt(vv[:,None]*vv[None,:])*(np.eye(len(aa))+2*R)


def pair_pair_labels(Q,epsilon):
    aa=channels(Q+2,Q)
    return [(a,b) for a,b in combinations_with_replacement(aa,2)
            if a[1]+b[1]<=Q and (a!=b or epsilon==1)]


def atom_weights(delta,Q):
    aa=channels(Q+2,Q)
    total=sum(Q-l+1 for k,l in aa)
    out=[]
    for k,l in aa:
        out.append({'channel':[k,l],'atom':str(pair_excess(F(str(delta)),k,l)),
                    'weight':str(F(Q-l+1,total))})
    return out


def eventual_nullity(Q,epsilon):
    z31=sum(len(channels(t,u))-d3(t,u)+oriented_kernel_3(t,u)
            for u in range(Q+1) for t in range(2*u+8))
    aa=channels(Q+2,Q)
    distinct=same=0
    for a,b in combinations_with_replacement(aa,2):
        if a[1]+b[1]<=Q:
            if a==b:same+=1
            else:distinct+=1
    z22=distinct+(same if epsilon==-1 else 0)
    return {'three_plus_one_nullity':z31,'two_plus_two_nullity':z22,
            'total_auxiliary_nullity':z31+z22,
            'sufficient_stability_threshold':'P > 15+3*Q'}


def racah_tail_bound(delta,Q,T):
    """Rational bound sup_(t>=T,u<=Q) ||R3(t,u)|| for rational Delta>1.

    Uses |right Racah entries|<=1 and sqrt(Wk*Wr)<=(Wk+Wr)/2.
    The bound is conservative; it is explicit, positive, and O(T^-Delta).
    For integral Delta the leading gamma ratio is a fixed-length product.
    """
    d=F(delta);K=Q+2
    if T<K:
        raise ValueError('Require T>=Q+2.')
    if d.denominator==1:
        n=int(d);a=poch(d,n)/poch(T+d,n)
    else:
        a=poch(d,T)/poch(2*d,T)
    def W(k):
        return (poch(2*d-1,k)/poch(1,k)*(2*d+2*k-1)/(2*d-1)
                *poch(T+3*d-1,k)/poch(T+2*d,k))
    def absolute_polynomial(k,r):
        term=out=F(1)
        for j in range(min(k,r)):
            term *= ((k-j)*(k+2*d-1+j)*(r-j)*(r+2*d-1+j)
                     /((d+j)*(T-j)*(T+3*d-1+j)*(j+1)))
            out+=term
        return out
    bound=F(0)
    for u in range(Q+1):
        aa=channels(K,u)
        for k,l in aa:
            row=sum((a*(W(k)+W(r))/2*absolute_polynomial(k,r) for r,v in aa),F(0))
            bound=max(bound,row)
    return min(F(1),bound)


def limiting_clusters(delta,Q,T,epsilon=1):
    import numpy as np
    if epsilon not in [-1,1]:raise ValueError('epsilon is (-1)^(P+Q).')
    blocks=[]
    for u in range(Q+1):
        for t in range(T+1):
            B=three_matrix_numeric(delta,t,u)
            vals=np.linalg.eigvalsh(B)
            rank=d3(t,u)-oriented_kernel_3(t,u)
            positive=vals[len(vals)-rank:] if rank else np.empty(0)
            blocks.append({'t':t,'u':u,'positive_residual_eigenvalues':positive.tolist(),
                           'auxiliary_nullity':len(vals)-rank})
    pairs=[{'pair1':list(a),'pair2':list(b),
            'residual_eigenvalue':str(pair_excess(F(str(delta)),*a)+pair_excess(F(str(delta)),*b))}
            for a,b in pair_pair_labels(Q,epsilon)]
    return {'Delta':str(delta),'Q':Q,'P_plus_Q_parity_sign':epsilon,
            'three_particle_cutoff':T,'atom_measure':atom_weights(delta,Q),
            'three_plus_one_blocks':blocks,'two_plus_two_clusters':pairs,
            'R3_tail_norm_bound':str(racah_tail_bound(F(str(delta)),Q,max(T+1,Q+2))),
            **eventual_nullity(Q,epsilon)}


def certify_delta2_chiral_minimum():
    """Exact proof: min positive cluster shift is the lower N3 t=9 root."""
    import sympy as s
    threshold=s.Rational(7,200)  # 0.035, strictly above the candidate.
    cutoff=128
    candidate_matrix=three_matrix_exact(2,9,0)
    tr=s.trace(candidate_matrix);det=candidate_matrix.det()
    candidate=s.factor((tr-s.sqrt(tr*tr-4*det))/2)
    assert candidate>0 and candidate<threshold
    checks=[]
    for t in range(cutoff+1):
        M=three_matrix_exact(2,t,0)
        rank=d3(t,0)-oriented_kernel_3(t,0)
        if not rank or t==9:continue
        tr=s.trace(M)
        if rank==1:
            assert tr>threshold
        else:
            assert tr>2*threshold
            assert M.det()-threshold*tr+threshold**2>0
        checks.append(t)
    atom_min=F(8,35)
    max_potential=F(24,5)
    tail=racah_tail_bound(F(2),0,cutoff+1)
    tail_lower=atom_min-2*max_potential*tail
    assert tail_lower>F(threshold)
    # Pair+pair eigenvalues are sums of positive atoms and hence larger.
    assert 2*atom_min>F(threshold)
    return {'all_checks_exact':True,'candidate':str(candidate),
            'candidate_minimal_polynomial':str(s.factor(candidate_matrix.charpoly(s.Symbol('x')).as_expr())),
            'candidate_decimal':str(s.N(candidate,30)),'origin':{'t':9,'u':0},
            'rational_separation_threshold':str(threshold),
            'other_finite_blocks_checked':checks,'tail_starts_at':cutoff+1,
            'exact_R3_tail_bound':str(tail),'exact_tail_positive_lower_bound':str(tail_lower),
            'conclusion':'For Delta=2,Q=0 along either P parity, the smallest strictly positive N4 residual tends to this exact quadratic irrational.'}


if __name__=='__main__':
    result=certify_delta2_chiral_minimum()
    Path(__file__).with_name('cluster_minimum_certificate.json').write_text(json.dumps(result,indent=2))
    print(json.dumps(result,indent=2))
