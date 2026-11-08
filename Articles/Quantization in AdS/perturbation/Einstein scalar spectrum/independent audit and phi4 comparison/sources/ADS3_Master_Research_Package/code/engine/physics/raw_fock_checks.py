#!/usr/bin/env python3
"""New manybody verification from the original spatial Einstein constraints.

This driver imports the preserved previous raw solver, whose inputs are scalar
modes, the scalar/momentum constraint differential equations and their boundary
conditions, and H4_con minus the boundary-density exchange.  It does NOT use
the pair energy formula to construct the manybody matrices.  Spectral data are
introduced only in an independent post-computation comparison.

The matrices act in normalized occupation Fock states.  The source radial modes
already use the common phase convention; inter-energy ladder identities below
check this rather than adding an assumed radial phase conversion.
"""
from __future__ import annotations
import argparse
import itertools
import json
import time
from collections import Counter
from functools import lru_cache
from pathlib import Path
import sympy as s
import raw_canonical as raw

HERE = Path(__file__).resolve().parent
lam = s.Symbol('lambda')


def iszero(expr):
    if isinstance(expr, s.MatrixBase):
        return all(s.simplify(t) == 0 for t in expr)
    return s.simplify(expr) == 0


@lru_cache(None)
def fock_basis(N, P, Q):
    if min(N, P, Q) < 0:
        return ()
    modes = tuple(itertools.product(range(P+1), range(Q+1)))
    states = []
    def rec(left, pp, qq, start, state):
        if left == 0:
            if pp == qq == 0:
                states.append(tuple(state))
            return
        for pos in range(start, len(modes)):
            p, q = modes[pos]
            if p <= pp and q <= qq:
                rec(left-1, pp-p, qq-q, pos, state+[(p,q)])
    rec(N, P, Q, 0, [])
    return tuple(states)


def radial(mode):
    p, q = mode
    return min(p, q), p-q


RAW_CACHE = {}


def raw_entry(outgoing, incoming):
    key = tuple(sorted((tuple(outgoing), tuple(incoming))))
    if key not in RAW_CACHE:
        oo, ii = key
        C, X = raw.angular_entry(tuple(map(radial, oo)), tuple(map(radial, ii)))
        RAW_CACHE[key] = (s.factor(C), s.factor(X))
        print('raw entry',key,RAW_CACHE[key],flush=True)
    return RAW_CACHE[key]


def save_raw_cache():
    records = []
    for (oo, ii), (c, x) in RAW_CACHE.items():
        records.append({'out':oo, 'in':ii, 'constraint':str(c), 'boundary':str(x)})
    (HERE/'raw_pair_cache.json').write_text(json.dumps(records,indent=2)+'\n')


def load_raw_cache():
    path = HERE/'raw_pair_cache.json'
    if path.exists():
        for record in json.loads(path.read_text()):
            oo, ii = tuple(map(tuple,record['out'])),tuple(map(tuple,record['in']))
            RAW_CACHE[tuple(sorted((oo,ii)))] = (s.sympify(record['constraint']),s.sympify(record['boundary']))


def annihilate_pair(state, pair):
    counts=Counter(state);value=s.S.One
    for mode in pair:
        if counts[mode] <= 0:
            return None, s.S.Zero
        value *= s.sqrt(counts[mode]);counts[mode]-=1
    result=tuple(sorted(mode for mode,count in counts.items() for _ in range(count)))
    return result, value


def create_pair(state,pair):
    counts=Counter(state);value=s.S.One
    for mode in reversed(pair):
        counts[mode]+=1;value*=s.sqrt(counts[mode])
    result=tuple(sorted(mode for mode,count in counts.items() for _ in range(count)))
    return result,value


def pair_lift(N,P,Q,pair_value):
    """Exact lift of normalized unordered-pair entries, including Bose factors."""
    states=fock_basis(N,P,Q);index={state:i for i,state in enumerate(states)}
    M=s.zeros(len(states))
    for col,state in enumerate(states):
        for inc in sorted(set(itertools.combinations(state,2))):
            spectator,ann=annihilate_pair(state,inc)
            pp=sum(p for p,q in inc);qq=sum(q for p,q in inc)
            for out in fock_basis(2,pp,qq):
                final,cre=create_pair(spectator,out)
                normalization=s.sqrt((1+int(inc[0]==inc[1]))*(1+int(out[0]==out[1])))
                M[index[final],col]+=pair_value(out,inc)*ann*cre/normalization
    return M.applyfunc(s.factor)


def ladder(N,P,Q,chirality,lower=True):
    dp,dq = ((-1,0) if chirality==0 else (0,-1))
    if not lower:dp,dq=-dp,-dq
    start=fock_basis(N,P,Q);target=fock_basis(N,P+dp,Q+dq)
    if not target:return s.zeros(0,len(start))
    index={state:i for i,state in enumerate(target)};A=s.zeros(len(target),len(start))
    for col,state in enumerate(start):
        counts=Counter(state)
        for mode,occ in counts.items():
            n=mode[chirality]
            if lower and n==0:continue
            new=(mode[0]+dp,mode[1]+dq)
            after=counts.copy();after[mode]-=1
            factor=s.sqrt(occ*(after[new]+1))
            factor*=s.sqrt(n*(2+n-1) if lower else (n+1)*(2+n))
            after[new]+=1
            final=tuple(sorted(m for m,c in after.items() for _ in range(c)))
            A[index[final],col]+=factor
    return A


def primary_restrict(N,P,Q,H):
    A=ladder(N,P,Q,0).col_join(ladder(N,P,Q,1))
    vectors=A.nullspace()
    B=s.Matrix.hstack(*vectors) if vectors else s.zeros(H.rows,0)
    if not vectors:return B,s.zeros(0),s.S.One
    G=B.T*B;K=(G.inv()*B.T*H*B).applyfunc(s.factor)
    assert iszero(H*B-B*K)
    return B,K,s.factor(K.charpoly(lam).as_expr())


@lru_cache(None)
def benchmark_pair(P,Q):
    """Post-hoc independent pair-CG spectral construction, never raw input."""
    U=raw.chiral_U(s.Integer(2),P);V=raw.chiral_U(s.Integer(2),Q)
    bs=fock_basis(2,P,Q);M=s.zeros(len(bs))
    for k in range(P+1):
        for ell in range(Q+1):
            if (k+ell)%2:continue
            vector=s.Matrix([s.sqrt(s.Rational(2,1+int(a==b)))*U[a[0],k]*V[a[1],ell] for a,b in bs])
            M+=raw.benchmark(s.Integer(2),min(k,ell),abs(k-ell))*vector*vector.T
    return M.applyfunc(s.factor)


def spectral_entry(oo,ii):
    P=sum(p for p,q in oo);Q=sum(q for p,q in oo)
    bs=fock_basis(2,P,Q)
    return benchmark_pair(P,Q)[bs.index(tuple(oo)),bs.index(tuple(ii))]


def serialize(M):return [[str(t) for t in M.row(i)] for i in range(M.rows)]


def parse_polynomial(expression):
    # ``lambda`` is the mathematical symbol in the JSON, a Python keyword.
    return s.sympify(expression.replace('lambda','spectral_parameter'),
                     locals={'spectral_parameter':lam})


def verify_global_covariance(cases):
    """Check raw inter-energy Ward identities and all descendant factors.

    No pair eigenvalue or pair-CG formula is used in this verification.  The
    full characteristic polynomial must equal the product of every primary
    polynomial below its two excitation labels, each occurring once.
    """
    index={(r['N'],r['P'],r['Q']):r for r in cases}
    matrices={key:s.Matrix(record['total_matrix']).applyfunc(s.sympify)
              for key,record in index.items()}
    contacts={key:s.Matrix(record['constraint_matrix']).applyfunc(s.sympify)
              for key,record in index.items()}
    wards=[];descendants=[];contact_failures=[]
    for (N,P,Q),record in index.items():
        for ch in (0,1):
            pp,qq=(P-1,Q) if ch==0 else (P,Q-1)
            if min(pp,qq)<0:continue
            if (N,pp,qq) not in index:continue
            L=ladder(N,P,Q,ch)
            residual=matrices[N,pp,qq]*L-L*matrices[N,P,Q]
            assert iszero(residual),(N,P,Q,ch,residual)
            wards.append({'N':N,'P':P,'Q':Q,'chirality':'L' if ch==0 else 'R',
                          'residual_exact_zero':True})
            contact_residual=(contacts[N,pp,qq]*L-L*contacts[N,P,Q]).applyfunc(s.factor)
            if not iszero(contact_residual):
                contact_failures.append({'N':N,'P':P,'Q':Q,
                    'chirality':'L' if ch==0 else 'R',
                    'constraint_only_ward_residual':serialize(contact_residual)})
        if not all((N,p,q) in index for p in range(P+1) for q in range(Q+1)):
            continue
        predicted=s.prod(parse_polynomial(index[N,p,q]['primary_characteristic_polynomial'])
                         for p in range(P+1) for q in range(Q+1))
        actual=parse_polynomial(record['full_characteristic_polynomial'])
        assert iszero(actual-predicted),(N,P,Q,actual,predicted)
        descendants.append({'N':N,'P':P,'Q':Q,'all_primary_descendant_factors':True})
    return {'raw_ladder_ward_identities':wards,'full_descendant_factorization':descendants,
            'negative_control_without_boundary_exchange':contact_failures}


def check_case(N,P,Q):
    C=pair_lift(N,P,Q,lambda oo,ii:raw_entry(oo,ii)[0])
    X=pair_lift(N,P,Q,lambda oo,ii:raw_entry(oo,ii)[1])
    H=C+X
    assert iszero(H-H.T)
    comparison=pair_lift(N,P,Q,spectral_entry)
    assert iszero(H-comparison),(N,P,Q,H,comparison,H-comparison)
    B,K,cp=primary_restrict(N,P,Q,H)
    result={'N':N,'P':P,'Q':Q,'Delta':'2','fock_dimension':H.rows,
        'fock_basis':fock_basis(N,P,Q),'constraint_matrix':serialize(C),
        'boundary_matrix':serialize(X),'total_matrix':serialize(H),
        'primary_basis_columns':serialize(B),'primary_matrix':serialize(K),
        'primary_characteristic_polynomial':str(cp),
        'full_characteristic_polynomial':str(s.factor(H.charpoly(lam).as_expr())),
        'primary_dimension':B.cols,'posthoc_pair_formula_residual':True}
    print('CASE',N,P,Q,'dim',H.rows,'primary',B.cols,cp,flush=True)
    return result


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--max-p',type=int,default=2)
    ap.add_argument('--max-q',type=int,default=2);ap.add_argument('--particles',default='3,4')
    ap.add_argument('--recompute',action='store_true',
                    help='Re-solve every original spatial constraint and integral instead of loading this run\'s exact cache.')
    args=ap.parse_args()
    if not args.recompute:load_raw_cache()
    start=time.time();cases=[]
    try:
        for N in map(int,args.particles.split(',')):
            for P in range(args.max_p+1):
                for Q in range(args.max_q+1):
                    cases.append(check_case(N,P,Q));save_raw_cache()
        covariance=verify_global_covariance(cases)
        (HERE/'raw_fock_results.json').write_text(json.dumps({
            'method':'original constraint and boundary-density pair integrals, lifted by normal-ordered occupation algebra; phases checked by global ladders',
            'input_source_commit':'ff06682448838bcbb02b135bd61bc661b394cbba',
            'cases':cases,'raw_pair_entries':len(RAW_CACHE),'covariance_checks':covariance,
            'raw_pair_entries_with_nonzero_boundary_exchange':sum(x!=0 for c,x in RAW_CACHE.values()),
            'raw_polarized_constraints_this_run':raw.angular_pair.cache_info().currsize,
            'elapsed_seconds':time.time()-start},ensure_ascii=False,indent=2)+'\n')
    finally:save_raw_cache()


if __name__=='__main__':main()
