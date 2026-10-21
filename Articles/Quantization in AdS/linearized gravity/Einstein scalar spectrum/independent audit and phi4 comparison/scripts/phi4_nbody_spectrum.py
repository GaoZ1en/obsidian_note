#!/usr/bin/env python3
"""Exact arbitrary finite-N first-order phi^4 spectrum on global AdS3.

New implementation of occupation enumeration, rational quartic action, primary
projection, exact spectral subspaces and descendant assembly. Reuses ONLY the
previous independent phi4_checks.py radial_integral/weight routines in production;
no original Einstein-package imports. Matrices are K/c0, c0=1/[8*pi*(2*Delta-1)],
so E=N*Delta+P+Q+lambda*c0*eigenvalue+o(lambda).

Public API:
  occupation_basis(N,P,Q), character_dimension(N,P,Q)
  hamiltonian(N,P,Q,Delta), gram(N,P,Q,Delta)
  ladder(N,P,Q,Delta,axis=0,up=False)
  primary_block(N,P,Q,Delta) -> dict basis,X,K,G,H,G_fock
  descendant_reconstruction(N,P,Q,Delta)
  spectrum_report(N,P,Q,Delta,eigenspaces=False,descendants=False,compact=False)

CLI: sage --nodotsage -python phi4_nbody_spectrum.py --N 6 --P 2 --Q 2
         --Delta 2 --eigenspaces --descendants --output phi4_nbody_example.json
Existing output files are never overwritten. All exact algebra uses Sage QQ or
number fields. Optional root isolating intervals are exact rational SymPy output.
"""
from __future__ import annotations

import argparse
from copy import copy
from functools import lru_cache
import hashlib
import importlib.util
import json
from pathlib import Path
import platform
import sys
import time

sys.dont_write_bytecode = True
from sage.all import (QQ, ZZ, NumberField, PolynomialRing, binomial,
                      block_diagonal_matrix, factorial, identity_matrix,
                      matrix, prod, rising_factorial, vector, zero_matrix)
from sage.env import SAGE_VERSION
import sympy as sp

HERE = Path(__file__).resolve().parent
LEGACY_PATH = HERE / 'phi4_checks.py'
_spec = importlib.util.spec_from_file_location('_phi4_independent_radial_reuse', LEGACY_PATH)
legacy = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(legacy)
RZ = PolynomialRing(QQ, 'z')
z = RZ.gen()


def validate(N, P, Q, Delta):
    if any(ZZ(v) != v for v in (N,P,Q)) or min(N,P,Q)<0:
        raise ValueError('N,P,Q must be nonnegative integers')
    Delta=QQ(Delta)
    if Delta<=1: raise ValueError('The prescribed fast-falloff domain requires Delta>1')
    if N==0 and (P or Q): raise ValueError('The N=0 sector has only P=Q=0')
    return int(N),int(P),int(Q),Delta


@lru_cache(None)
def labels(P,Q):
    return tuple((p,q) for p in range(P+1) for q in range(Q+1))


@lru_cache(None)
def occupation_basis(N,P,Q):
    """Exact Bose basis; recurse on excited particles, fill remaining ground modes.

    Complexity tracks admissible excitation multisets rather than all multisets
    of N modes. The ordering agrees with the old independent small-N basis.
    """
    if min(N,P,Q)<0:return ()
    ls=labels(P,Q)
    @lru_cache(None)
    def excited(left,prem,qrem,start):
        if prem==0 and qrem==0:return ((),)
        if left==0:return ()
        ans=[]
        for i in range(start,len(ls)):
            p,q=ls[i]
            if p>prem or q>qrem:continue
            for tail in excited(left-1,prem-p,qrem-q,i):
                ans.append((i,)+tail)
        return tuple(ans)
    states=[]
    for ex in excited(N,P,Q,1):
        expanded=(0,)*(N-len(ex))+ex
        occ=[0]*len(ls)
        for i in expanded:occ[i]+=1
        states.append((expanded,tuple(occ)))
    states.sort()
    return tuple(s for _,s in states)


@lru_cache(None)
def character_dimension(N,P,Q):
    """Independent coefficient extraction from prod(1-t*x^p*y^q)^(-1).

    Unbounded 3D knapsack, unrelated to the excitation-multiset recursion.
    """
    if min(N,P,Q)<0:return 0
    D={(0,0,0):1}
    for a in range(P+1):
        for b in range(Q+1):
            for n in range(1,N+1):
                for p in range(a,P+1):
                    for q in range(b,Q+1):
                        key=(n,p,q)
                        D[key]=D.get(key,0)+D.get((n-1,p-a,q-b),0)
    return D.get((N,P,Q),0)


def primary_character_dimension(N,P,Q):
    if N==0:return int(P==0 and Q==0)
    return (character_dimension(N,P,Q)-character_dimension(N,P-1,Q)
            -character_dimension(N,P,Q-1)+character_dimension(N,P-1,Q-1))


@lru_cache(None)
def gram(N,P,Q,Delta):
    d=QQ(Delta)
    diag=[prod(factorial(n)/(legacy.weight(d,p)*legacy.weight(d,q))**n
               for n,(p,q) in zip(s,labels(P,Q)))
          for s in occupation_basis(N,P,Q)]
    G=matrix.diagonal(QQ,diag);G.set_immutable();return G


@lru_cache(None)
def pair_transitions(c,e,Delta):
    """Unordered-pair coefficients T_ab;ce in sum T b†_a b†_b b_c b_e.

    b†_pq=a†_pq/sqrt(w_p*w_q), b_pq=sqrt(w_p*w_q)*a_pq,
    w_p=(Delta)_p/p!. T is in K/c0 units and is an explicit beta-polynomial
    integral, not an inferred pair energy or a fitted matrix.
    """
    d=QQ(Delta)
    if c>e:c,e=e,c
    pp=c[0]+e[0];qq=c[1]+e[1]
    result=[]
    for ap in range(pp+1):
        for aq in range(qq+1):
            a=(ap,aq);b=(pp-ap,qq-aq)
            if a>b:continue
            four=tuple(sorted((a,b,c,e)))
            integral=legacy.radial_integral(d,four)
            sign=(-1)**sum(min(v) for v in four)
            ratio=(legacy.weight(d,max(a))*legacy.weight(d,max(b)) /
                   (legacy.weight(d,min(c))*legacy.weight(d,min(e))))
            T=2*(2*d-1)*sign*ratio*integral / ((1+(a==b))*(1+(c==e)))
            if T:result.append((a,b,QQ(T)))
    return tuple(result)


@lru_cache(None)
def hamiltonian(N,P,Q,Delta):
    """Full Bose shell matrix K/c0 in the rational Bargmann occupation basis."""
    N,P,Q,d=validate(N,P,Q,Delta)
    bs=occupation_basis(N,P,Q);ls=labels(P,Q)
    ix={s:i for i,s in enumerate(bs)};li={a:i for i,a in enumerate(ls)}
    H=zero_matrix(QQ,len(bs))
    for col,ns in enumerate(bs):
        occupied=[i for i,n in enumerate(ns) if n]
        for at,ci in enumerate(occupied):
            c=ls[ci]
            for ei in occupied[at:]:
                e=ls[ei];mult=ns[ci]*(ns[ei]-(ci==ei))
                if not mult:continue
                base=list(ns);base[ci]-=1;base[ei]-=1
                for a,b,T in pair_transitions(c,e,d):
                    target=base[:];target[li[a]]+=1;target[li[b]]+=1
                    H[ix[tuple(target)],col]+=mult*T
    H.set_immutable();return H


@lru_cache(None)
def ladder(N,P,Q,Delta,axis=0,up=False):
    d=QQ(Delta)
    if axis not in (0,1):raise ValueError('axis must be 0 or 1')
    pp=P+(1 if up else -1)*(axis==0)
    qq=Q+(1 if up else -1)*(axis==1)
    src=occupation_basis(N,P,Q);dst=occupation_basis(N,pp,qq)
    ls=labels(P,Q);ld=labels(pp,qq) if min(pp,qq)>=0 else ()
    ix={s:i for i,s in enumerate(dst)};di={a:i for i,a in enumerate(ld)}
    A=zero_matrix(QQ,len(dst),len(src))
    for col,ns in enumerate(src):
        for i,a in enumerate(ls):
            if not ns[i] or (not up and a[axis]==0):continue
            b=list(a);b[axis]+=1 if up else -1;b=tuple(b)
            coeff=ns[i]*(a[axis]+d if up else a[axis])
            out=[0]*len(ld)
            for j,(n,v) in enumerate(zip(ns,ls)):
                remain=n-(i==j)
                if remain:out[di[v]]+=remain
            out[di[b]]+=1
            A[ix[tuple(out)],col]+=coeff
    A.set_immutable();return A


@lru_cache(None)
def _primary_data(N,P,Q,Delta):
    H=hamiltonian(N,P,Q,Delta);GF=gram(N,P,Q,Delta)
    L=zero_matrix(QQ,0,H.nrows())
    if P:L=L.stack(ladder(N,P,Q,Delta,0,False))
    if Q:L=L.stack(ladder(N,P,Q,Delta,1,False))
    X=L.right_kernel().basis_matrix().transpose()
    K=X.solve_right(H*X)
    G=X.transpose()*GF*X
    for A in (X,K,G):A.set_immutable()
    return X,K,G


def primary_block(N,P,Q,Delta):
    N,P,Q,d=validate(N,P,Q,Delta)
    X,K,G=_primary_data(N,P,Q,d)
    return {'N':N,'P':P,'Q':Q,'Delta':d,'basis':occupation_basis(N,P,Q),
            'labels':labels(P,Q),'X':X,'K':K,'G':G,
            'H':hamiltonian(N,P,Q,d),'G_fock':gram(N,P,Q,d)}


def mat_json(A):
    return [[str(A[i,j]) for j in range(A.ncols())] for i in range(A.nrows())]


def basis_json(N,P,Q):
    return [[[int(p),int(q),int(n)] for n,(p,q) in zip(s,labels(P,Q)) if n]
            for s in occupation_basis(N,P,Q)]


def polynomial_matrix(f,A):
    I=identity_matrix(A.base_ring(),A.nrows());B=zero_matrix(A.base_ring(),A.nrows())
    for c in reversed(f.list()):B=B*A+c*I
    return B


def rational_root_intervals(f):
    """Exact rational isolating intervals; no float is used to certify a root."""
    x=sp.Symbol('x')
    poly=sp.Poly(sum(sp.Rational(c.numerator(),c.denominator())*x**i
                    for i,c in enumerate(f.list())),x)
    intervals=poly.intervals(eps=sp.Rational(1,10**12))
    if sum(m for _,m in intervals)!=f.degree():
        raise AssertionError('Hermitian spectrum acquired nonreal roots')
    return [{'lower':str(a),'upper':str(b),'multiplicity_in_factor':int(m)}
            for (a,b),m in intervals]


def spectral_resolution(K,G,X=None,eigenspaces=False,projectors=True):
    """Complete exact description without demanding radical formulas.

    Irreducible factors + isolating intervals label every eigenvalue. A rational
    projector isolates all conjugate roots of one factor. With eigenspaces=True,
    one kernel basis over QQ(alpha) describes each individual eigenspace under
    every real embedding alpha -> the listed isolated root.
    """
    n=K.nrows();cp=RZ(K.charpoly());facts=list(cp.factor())
    m=RZ(prod(f for f,e in facts));I=identity_matrix(QQ,n)
    if polynomial_matrix(m,K)!=zero_matrix(QQ,n):
        raise AssertionError('The square-free characteristic polynomial does not annihilate K')
    result={'charpoly':str(cp),'factorization':str(cp.factor()),
            'dimension':n,'factors':[],'semisimple_verified':True}
    if not n:return result
    total=zero_matrix(QQ,n)
    for f,exponent in facts:
        q=m//f
        gcd,u,v=q.xgcd(f)
        if gcd!=1:raise AssertionError('Non-coprime square-free factors')
        ep=(u*q)%m
        Proj=polynomial_matrix(ep,K)
        if Proj*Proj!=Proj or G*Proj!=Proj.transpose()*G:
            raise AssertionError('Bad physical spectral projector')
        total+=Proj
        U=Proj.column_space().basis_matrix().transpose()
        if U.ncols()!=f.degree()*exponent:raise AssertionError('Wrong factor multiplicity')
        entry={'factor':str(f),'degree':int(f.degree()),
               'multiplicity_of_each_root':int(exponent),
               'real_root_isolating_intervals':rational_root_intervals(f),
               'projector_polynomial':str(ep),
               'rational_factor_subspace_dimension':U.ncols()}
        if projectors:
            entry['rational_factor_projector']=mat_json(Proj)
            entry['rational_factor_subspace_columns']=mat_json(U)
        if eigenspaces:
            if f.degree()==1:
                F=QQ;alpha=-f[0]/f[1];description=f'QQ; alpha={alpha}'
            else:
                F=NumberField(f,'alpha');alpha=F.gen()
                description=f'QQ(alpha), {f}=0; each real embedding is one listed interval'
            KF=K.change_ring(F)
            V=(KF-alpha*identity_matrix(F,n)).right_kernel().basis_matrix().transpose()
            if V.ncols()!=exponent or KF*V!=alpha*V:
                raise AssertionError('Incorrect algebraic eigenspace')
            entry['field']=description
            entry['eigenspace_columns_primary_coordinates']=mat_json(V)
            entry['eigenspace_Gram']=mat_json(V.transpose()*G.change_ring(F)*V)
            if X is not None:
                entry['eigenspace_columns_occupation_coordinates']=mat_json(X.change_ring(F)*V)
        result['factors'].append(entry)
    if total!=I:raise AssertionError('Spectral projectors do not resolve identity')
    result['projectors_resolve_identity']=True
    return result


@lru_cache(None)
def descendant_reconstruction(N,P,Q,Delta):
    """Explicit basis of the full shell from all lower-bidegree primaries."""
    N,P,Q,d=validate(N,P,Q,Delta)
    H=hamiltonian(N,P,Q,d);GF=gram(N,P,Q,d)
    columns=[];primary_matrices=[];component_grams=[];components=[]
    expected=RZ(1)
    for p in range(P+1):
        for q in range(Q+1):
            X,K,G=_primary_data(N,p,q,d)
            if not K.nrows():continue
            V=X
            for a in range(p,P):V=ladder(N,a,q,d,0,True)*V
            for b in range(q,Q):V=ladder(N,P,b,d,1,True)*V
            norm=(factorial(P-p)*rising_factorial(N*d+2*p,P-p)
                  *factorial(Q-q)*rising_factorial(N*d+2*q,Q-q))
            if V.transpose()*GF*V!=norm*G:raise AssertionError('Wrong descendant norm')
            columns.append(V);primary_matrices.append(K);component_grams.append(norm*G)
            expected*=RZ(K.charpoly())
            components.append({'primary_P':p,'primary_Q':q,'primary_dimension':K.nrows(),
                'charpoly':str(RZ(K.charpoly())),'norm_multiplier':str(norm),
                'column_start':sum(B.ncols() for B in columns[:-1]),
                'column_stop':sum(B.ncols() for B in columns)})
    R=columns[0] if columns else zero_matrix(QQ,H.nrows(),0)
    for B in columns[1:]:R=R.augment(B)
    B=block_diagonal_matrix([copy(A) for A in primary_matrices]) if primary_matrices else zero_matrix(QQ,0)
    GD=block_diagonal_matrix([copy(A) for A in component_grams]) if component_grams else zero_matrix(QQ,0)
    if R.ncols()!=H.nrows() or R.rank()!=H.nrows():raise AssertionError('Incomplete descendant basis')
    if H*R!=R*B:raise AssertionError('Descendant spectral intertwiner failed')
    if R.transpose()*GF*R!=GD:raise AssertionError('Distinct modules not Gram-orthogonal')
    if RZ(H.charpoly())!=expected:raise AssertionError('Shell characteristic-polynomial product failed')
    for A in (R,B,GD):A.set_immutable()
    return {'R':R,'block_matrix':B,'descendant_Gram':GD,'components':components,
            'shell_charpoly_from_primaries':expected,'all_checks_passed':True}


def block_checks(N,P,Q,Delta):
    N,P,Q,d=validate(N,P,Q,Delta);b=primary_block(N,P,Q,d)
    H=b['H'];GF=b['G_fock'];X=b['X'];K=b['K'];G=b['G']
    checks={'Bose_dimension_character':H.nrows()==character_dimension(N,P,Q),
            'primary_dimension_character':K.nrows()==primary_character_dimension(N,P,Q),
            'Gram_Hermiticity':GF*H==H.transpose()*GF,
            'primary_Gram_Hermiticity':G*K==K.transpose()*G,
            'primary_invariance':H*X==X*K,
            'positive_occupation_Gram':all(v>0 for v in GF.diagonal())}
    for axis,budget in ((0,P),(1,Q)):
        if budget:
            L=ladder(N,P,Q,d,axis,False)
            Hl=hamiltonian(N,P-(axis==0),Q-(axis==1),d)
            checks[f'Ward_lower_{axis}']=L*H==Hl*L
    if not all(v is True for v in checks.values()):raise AssertionError(checks)
    return checks


def metadata():
    return {'Sage':SAGE_VERSION,'SymPy':sp.__version__,'Python':platform.python_version(),
            'engine_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            'reused_script':'phi4_checks.py',
            'reused_script_sha256':hashlib.sha256(LEGACY_PATH.read_bytes()).hexdigest(),
            'production_reuse':['radial_integral','weight'],
            'original_Einstein_engine_imports':[]}


def spectrum_report(N,P,Q,Delta,eigenspaces=False,descendants=False,compact=False):
    start=time.monotonic();N,P,Q,d=validate(N,P,Q,Delta)
    b=primary_block(N,P,Q,d);H=b['H'];GF=b['G_fock']
    report={'N':N,'P':P,'Q':Q,'Delta':str(d),
            'free_energy':str(N*d+P+Q),'spin':P-Q,
            'normalization':'E=E0+lambda/[8*pi*(2*Delta-1)]*z+o(lambda)',
            'scope':'Exact first-order finite block; no continuum or uniform remainder assertion.',
            'metadata':metadata(),'shell_dimension':H.nrows(),
            'primary_dimension':b['K'].nrows(),'checks':block_checks(N,P,Q,d),
            'full_shell_charpoly':str(RZ(H.charpoly())),
            'full_shell_factorization':str(RZ(H.charpoly()).factor()),
            'primary_spectrum':spectral_resolution(b['K'],b['G'],b['X'],
                                                   eigenspaces=eigenspaces,projectors=not compact)}
    if not compact:
        report.update({'basis_nonzero_occupations':basis_json(N,P,Q),
            'basis_convention':'prod(a†_pq/sqrt(w_p*w_q))^n|0>, w_p=(Delta)_p/p!',
            'full_shell_matrix':mat_json(H),'full_shell_Gram':mat_json(GF),
            'primary_columns':mat_json(b['X']),'primary_matrix':mat_json(b['K']),
            'primary_Gram':mat_json(b['G'])})
    if eigenspaces:
        report['full_shell_spectrum']=spectral_resolution(H,GF,identity_matrix(QQ,H.nrows()),
                                                        eigenspaces=True,projectors=not compact)
    if descendants:
        D=descendant_reconstruction(N,P,Q,d)
        report['descendants']={'components':D['components'],
            'shell_charpoly_from_primaries':str(D['shell_charpoly_from_primaries']),
            'rank':D['R'].rank(),'all_checks_passed':D['all_checks_passed']}
        if not compact:
            report['descendants'].update({'columns_in_shell':mat_json(D['R']),
                'block_matrix':mat_json(D['block_matrix']),
                'Gram':mat_json(D['descendant_Gram'])})
    report['elapsed_seconds']=round(time.monotonic()-start,3)
    return report


def save_new_json(path,report):
    path=Path(path).resolve()
    if not path.name.startswith('phi4_nbody_') or path.suffix!='.json':
        raise ValueError('Use a fresh phi4_nbody_*.json filename')
    if path.exists():raise FileExistsError(f'Refusing to overwrite {path}')
    with path.open('x',encoding='utf-8') as f:json.dump(report,f,ensure_ascii=False,indent=2);f.write('\n')
    return str(path)


def main(argv=None):
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--N',required=True,type=int)
    parser.add_argument('--P',required=True,type=int)
    parser.add_argument('--Q',required=True,type=int)
    parser.add_argument('--Delta',required=True)
    parser.add_argument('--eigenspaces',action='store_true',help='Exact QQ(alpha) bases for every primary and shell eigenvalue')
    parser.add_argument('--descendants',action='store_true',help='Explicit full-shell descendant reconstruction')
    parser.add_argument('--compact',action='store_true',help='Omit large matrices, retain exact polynomials and certification')
    parser.add_argument('--output',help='Fresh phi4_nbody_*.json path; otherwise print JSON')
    args=parser.parse_args(argv)
    report=spectrum_report(args.N,args.P,args.Q,QQ(args.Delta),args.eigenspaces,args.descendants,args.compact)
    if args.output:
        path=save_new_json(args.output,report)
        print(json.dumps({'output':path,'N':args.N,'P':args.P,'Q':args.Q,
                         'shell_dimension':report['shell_dimension'],
                         'primary_dimension':report['primary_dimension'],
                         'all_checks_passed':all(report['checks'].values()),
                         'elapsed_seconds':report['elapsed_seconds']},ensure_ascii=False))
    else:print(json.dumps(report,ensure_ascii=False,indent=2))
    return report


if __name__=='__main__':main()
