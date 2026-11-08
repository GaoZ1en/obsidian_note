#!/usr/bin/env python3
"""Independent, exact first-order phi^4 checks on global AdS3.

Run with Sage's Python (no target-package imports):
  sage --nodotsage -python phi4_checks.py --output ../results/phi4_checks.json

The direct Hamiltonian is built ONLY from KG modes, radial beta integrals,
Wick combinatorics, and occupation numbers. A separate representation route
constructs pair projectors from lowest-weight polynomials and free raising
operators. It is a comparator, not an input to the direct matrix.
All matrices are exact over QQ at the specified rational Delta values.
No floating-point tolerance or fit is used.
"""
from __future__ import annotations

import argparse
from collections import Counter
from functools import lru_cache
import hashlib
import itertools
import json
from pathlib import Path
import platform
import time

from sage.all import (QQ, PolynomialRing, binomial, factorial, matrix,
                      prod, rising_factorial, vector, zero_matrix)
from sage.env import SAGE_VERSION
import sympy as sp

Y = PolynomialRing(QQ, 'y')
y = Y.gen()
CHECKS = []


def check(label, condition, **details):
    """Require an actual exact Boolean; never coerce a symbolic relation."""
    if condition is not True and condition is not False:
        raise TypeError(f'{label}: non-Boolean {type(condition)}')
    CHECKS.append({'label': label, 'passed': condition, **details})
    if not condition:
        raise AssertionError(label)


def mat_json(A):
    return [[str(A[i, j]) for j in range(A.ncols())]
            for i in range(A.nrows())]


@lru_cache(None)
def jacobi_y(n, a, b):
    """P_n^(a,b)(1-2y), independent finite binomial definition."""
    return Y(sum(binomial(n+a, n-j)*binomial(n+b, j)
                 *(-y)**j*(1-y)**(n-j) for j in range(n+1)))


@lru_cache(None)
def weight(d, p):
    return QQ(rising_factorial(d, p)/factorial(p))


def beta_poly(poly, a, b):
    """Integral y^a (1-y)^b poly(y) dy; a nonnegative integer, b>-1."""
    assert a >= 0 and a in QQ and QQ(a).denominator() == 1 and b > -1
    return sum(c*factorial(i+a)/rising_factorial(b+1, i+a+1)
               for i, c in enumerate(poly.list()))


@lru_cache(None)
def radial_integral(d, four_labels):
    """Strip mode normalizations and 1/(4 pi); keep full Jacobi integral."""
    ns = [min(p, q) for p, q in four_labels]
    aa = [abs(p-q) for p, q in four_labels]
    assert sum(aa) % 2 == 0
    poly = prod(jacobi_y(n, a, d-1) for n, a in zip(ns, aa))
    return QQ(beta_poly(poly, sum(aa)//2, 2*d-2))


def mode_norm_tests():
    # Original PDF (2.5) uses X=1-y. Compare the polynomial, not a fitted sign.
    phase_count = norm_count = 0
    for d in (QQ(3)/2, QQ(2), QQ(7)/3):
        for n in range(5):
            for a in range(5):
                original = jacobi_y(n, d-1, a)(1-y)
                ours = (-1)**n*jacobi_y(n, a, d-1)
                check(f'phase_D{d}_n{n}_a{a}', original == ours)
                phase_count += 1
                nu2 = factorial(n)*rising_factorial(d, n+a) \
                    /(factorial(n+a)*rising_factorial(d, n))
                kg = (d+2*n+a)*nu2*beta_poly(jacobi_y(n,a,d-1)**2,a,d-1)
                check(f'KG_norm_D{d}_n{n}_a{a}', kg == 1)
                norm_count += 1
    return {'phase_cases': phase_count, 'KG_cases': norm_count,
            'n_range': [0,4], 'abs_spin_range': [0,4],
            'Delta': ['3/2','2','7/3'],
            'n1_original_polynomial': 'Delta-(Delta+a+1)*X',
            'reference': 'Original PDF page 11, eqs. (2.5)-(2.7)'}


def number_change_tests():
    count = 0
    for d in (QQ(2), QQ(3)):
        labels = list(itertools.product(range(3), repeat=2))
        for triple in itertools.combinations_with_replacement(labels, 3):
            parent = (int(d)+sum(p for p,q in triple),
                      int(d)+sum(q for p,q in triple))
            value = radial_integral(d, tuple(sorted((parent,)+triple)))
            check(f'1to3_D{d}_{parent}_{triple}', value == 0)
            count += 1
    # An intentionally nonresonant overlap must not vanish identically.
    control = radial_integral(QQ(2), ((0,0),)*4)
    check('1to3_nonresonant_control_nonzero', control != 0,
          stripped_integral=str(control))
    return {'resonant_cases': count, 'Delta': ['2','3'],
            'child_p_range': [0,2], 'child_q_range': [0,2],
            'triples': 'unordered with repetitions; 165 per Delta',
            'negative_control': 'all four ground modes, not a 1-to-3 resonance',
            'minimal_D2_parent': [2,2],
            'minimal_D2_polynomial': str(jacobi_y(2,0,1))}


def coincidence_tests():
    # Independent special-function implementation: SymPy, rather than jacobi_y.
    t = sp.Symbol('t', real=True)
    def cg(d,k,p):
        return (-1)**p*sp.sqrt(sp.binomial(k,p)*sp.rf(d,k)**2 /
               (sp.rf(d,p)*sp.rf(d,k-p)*sp.rf(2*d+k-1,k)))
    def mode(d,p,q):
        n=min(p,q); a=abs(p-q)
        return (-1)**n*sp.sqrt(sp.factorial(n)*sp.rf(d,n+a) /
               (sp.factorial(n+a)*sp.rf(d,n)))*t**a \
               *sp.jacobi(n,a,d-1,1-2*t*t)
    count=0
    for d in (sp.Rational(3,2),sp.Integer(2),sp.Rational(7,3)):
        for k in range(6):
            for l in range(6):
                if (k+l)%2: continue
                lhs=sp.expand(sum(cg(d,k,p)*cg(d,l,q)*mode(d,p,q)
                    *mode(d,k-p,l-q) for p in range(k+1) for q in range(l+1)))
                rhs=(-1)**k*(1-t*t)**k if k==l else 0
                residual=sp.simplify(sp.expand(lhs-rhs))
                check(f'coincidence_D{d}_k{k}_l{l}', residual == 0)
                count+=1
    return {'cases':count,'Delta':['3/2','2','7/3'],
            'k_range':[0,5],'l_range':[0,5],'parity':'k+l even',
            'stripped_target':'delta_kl*(-1)^k*(1-t^2)^k; t^2=y'}


@lru_cache(None)
def labels(P,Q):
    return tuple(itertools.product(range(P+1),range(Q+1)))


@lru_cache(None)
def occupation_basis(N,P,Q):
    """Finite Bose occupation basis, with no tensor-product Bose shortcut."""
    if P<0 or Q<0: return ()
    labs=labels(P,Q); answer=[]
    for inds in itertools.combinations_with_replacement(range(len(labs)),N):
        if sum(labs[i][0] for i in inds)!=P: continue
        if sum(labs[i][1] for i in inds)!=Q: continue
        counts=Counter(inds)
        answer.append(tuple(counts.get(i,0) for i in range(len(labs))))
    return tuple(answer)


def pair_from_occ(occ,labs):
    return tuple(lab for lab,n in zip(labs,occ) for _ in range(n))


def basis_json(N,P,Q):
    return [[list(lab) for lab in pair_from_occ(s,labels(P,Q))]
            for s in occupation_basis(N,P,Q)]


def gram(N,P,Q,d):
    # B_n = prod (a†_pq/sqrt(w_p w_q))^n |0>; its Gram is diagonal.
    return matrix.diagonal(QQ,[prod(factorial(n) /
        (weight(d,p)*weight(d,q))**n for n,(p,q) in zip(s,labels(P,Q)))
        for s in occupation_basis(N,P,Q)])


@lru_cache(None)
def direct_matrix(N,P,Q,d):
    """Direct radial integral matrix, in units gamma0=lambda/[8pi(2Delta-1)]."""
    bs=occupation_basis(N,P,Q); labs=labels(P,Q)
    index={s:i for i,s in enumerate(bs)}; li={a:i for i,a in enumerate(labs)}
    H=zero_matrix(QQ,len(bs))
    for col,ns in enumerate(bs):
        for ci,c in enumerate(labs):
            if not ns[ci]: continue
            for di,e in enumerate(labs):
                multiplicity=ns[ci]*(ns[di]-(ci==di))
                if not multiplicity: continue
                pp=c[0]+e[0]; qq=c[1]+e[1]
                base=list(ns);base[ci]-=1;base[di]-=1
                for ap in range(pp+1):
                    for aq in range(qq+1):
                        a=(ap,aq);b=(pp-ap,qq-aq)
                        if a not in li or b not in li: continue
                        four=tuple(sorted((a,b,c,e)))
                        integral=radial_integral(d,four)
                        sign=(-1)**sum(min(v) for v in four)
                        # All square roots cancel in the rational Bargmann basis.
                        prefactor=(weight(d,max(a))*weight(d,max(b)) /
                            (weight(d,min(c))*weight(d,min(e))))
                        value=QQ(2*d-1)/2*sign*prefactor*integral*multiplicity
                        new=base[:];new[li[a]]+=1;new[li[b]]+=1
                        H[index[tuple(new)],col]+=value
    H.set_immutable()
    return H


def ladder(N,P,Q,d,axis,up):
    destP=P+(1 if up else -1)*(axis==0)
    destQ=Q+(1 if up else -1)*(axis==1)
    src=occupation_basis(N,P,Q);dst=occupation_basis(N,destP,destQ)
    ls=labels(P,Q);ld=labels(destP,destQ) if destP>=0 and destQ>=0 else ()
    dstindex={s:i for i,s in enumerate(dst)};di={a:i for i,a in enumerate(ld)}
    A=zero_matrix(QQ,len(dst),len(src))
    for col,occ in enumerate(src):
        for j,lab in enumerate(ls):
            if not occ[j] or (not up and lab[axis]==0):continue
            shifted=list(lab);shifted[axis]+=1 if up else -1;shifted=tuple(shifted)
            coeff=occ[j]*(lab[axis]+d if up else lab[axis])
            out=[0]*len(ld)
            for oi,(n,old) in enumerate(zip(occ,ls)):
                remain=n-(oi==j)
                if remain: out[di[old]]+=remain
            out[di[shifted]]+=1
            A[dstindex[tuple(out)],col]+=coeff
    return A


def primary_basis(N,P,Q,d):
    n=len(occupation_basis(N,P,Q)); mats=[]
    if P: mats.append(ladder(N,P,Q,d,0,False))
    if Q: mats.append(ladder(N,P,Q,d,1,False))
    L=zero_matrix(QQ,0,n)
    for A in mats:L=L.stack(A)
    return L.right_kernel().basis_matrix().transpose()


@lru_cache(None)
def pair_projector_matrix(P,Q,d):
    """Representation-only route: primaries, descendants, and Gram projectors."""
    target=occupation_basis(2,P,Q);G=gram(2,P,Q,d)
    answer=zero_matrix(QQ,len(target));resolution=zero_matrix(QQ,len(target))
    for k in range(P+1):
        for l in range(Q+1):
            if (k+l)%2:continue
            bs=occupation_basis(2,k,l);ls=labels(k,l);li={a:i for i,a in enumerate(ls)}
            ix={s:i for i,s in enumerate(bs)};v=vector(QQ,len(bs))
            # The polynomial (z1-z2)^k (w1-w2)^l, mapped to Bose Fock.
            for p in range(k+1):
                for q in range(l+1):
                    s=[0]*len(ls);s[li[(p,q)]]+=1;s[li[(k-p,l-q)]]+=1
                    v[ix[tuple(s)]]+=(-1)**(p+q)*binomial(k,p)*binomial(l,q)
            for pp in range(k,P):v=ladder(2,pp,l,d,0,True)*v
            for qq in range(l,Q):v=ladder(2,P,qq,d,1,True)*v
            norm=v.dot_product(G*v)
            assert norm>0
            projector=v.column()*v.row()*G/norm
            resolution+=projector
            if k==l:answer+=(2*d-1)/(2*d+2*k-1)*projector
    assert resolution==matrix.identity(QQ,len(target))
    answer.set_immutable()
    return answer


def lifted_matrix(N,P,Q,d):
    """Unique quartic Fock lift of the representation-only pair matrix."""
    bs=occupation_basis(N,P,Q);ls=labels(P,Q);li={a:i for i,a in enumerate(ls)}
    index={s:i for i,s in enumerate(bs)};H=zero_matrix(QQ,len(bs))
    for col,ns in enumerate(bs):
        for ci,c in enumerate(ls):
            if not ns[ci]:continue
            for di in range(ci,len(ls)):
                e=ls[di];count=ns[ci]*(ns[di]-(ci==di))
                if not count:continue
                pp=c[0]+e[0];qq=c[1]+e[1]
                pairbs=occupation_basis(2,pp,qq);pairls=labels(pp,qq)
                pairix={a:i for i,a in enumerate(pairls)}
                incoming=[0]*len(pairls);incoming[pairix[c]]+=1;incoming[pairix[e]]+=1
                incoming_col=pairbs.index(tuple(incoming))
                M=pair_projector_matrix(pp,qq,d)
                base=list(ns);base[ci]-=1;base[di]-=1
                for row,pair_occ in enumerate(pairbs):
                    value=M[row,incoming_col]*count/(1+(ci==di))
                    if not value:continue
                    new=base[:]
                    for n,a in zip(pair_occ,pairls):
                        if n:new[li[a]]+=n
                    H[index[tuple(new)],col]+=value
    return H


def finite_matrix_tests():
    result={'two_body_blocks':[],'three_body_blocks':[],'benchmarks':[]}
    for d in (QQ(3)/2,QQ(2),QQ(7)/3):
        for P in range(5):
            for Q in range(5):
                H=direct_matrix(2,P,Q,d);G=gram(2,P,Q,d)
                C=pair_projector_matrix(P,Q,d)
                check(f'pair_direct_vs_projectors_D{d}_P{P}_Q{Q}',H==C)
                check(f'pair_Gram_Hermiticity_D{d}_P{P}_Q{Q}',G*H==H.transpose()*G)
                X=primary_basis(2,P,Q,d)
                expected_dim=1 if (P+Q)%2==0 else 0
                check(f'pair_primary_dimension_D{d}_P{P}_Q{Q}',X.ncols()==expected_dim)
                if X.ncols():
                    K=X.solve_right(H*X)
                    expected=(2*d-1)/(2*d+2*P-1) if P==Q else QQ(0)
                    check(f'pair_primary_value_D{d}_P{P}_Q{Q}',K[0,0]==expected)
                result['two_body_blocks'].append({'Delta':str(d),'P':P,'Q':Q,
                    'dimension':H.nrows(),'primary_dimension':X.ncols(),
                    'charpoly_gamma0_units':str(H.charpoly().factor())})
        for P in range(4):
            for Q in range(4):
                H=direct_matrix(3,P,Q,d);G=gram(3,P,Q,d)
                F=lifted_matrix(3,P,Q,d)
                check(f'three_direct_vs_projector_Focklift_D{d}_P{P}_Q{Q}',H==F)
                check(f'three_Gram_Hermiticity_D{d}_P{P}_Q{Q}',G*H==H.transpose()*G)
                for axis,degree in ((0,P),(1,Q)):
                    if not degree:continue
                    L=ladder(3,P,Q,d,axis,False)
                    lower=direct_matrix(3,P-(axis==0),Q-(axis==1),d)
                    check(f'Ward_lower_D{d}_P{P}_Q{Q}_axis{axis}',L*H==lower*L)
                X=primary_basis(3,P,Q,d);K=X.solve_right(H*X)
                result['three_body_blocks'].append({'Delta':str(d),'P':P,'Q':Q,
                    'dimension':H.nrows(),'primary_dimension':X.ncols(),
                    'primary_charpoly_gamma0_units':str(K.charpoly().factor())})
    for N,P,Q,d in ((2,1,1,QQ(2)),(2,2,0,QQ(2)),
                     (3,1,1,QQ(2)),(3,2,0,QQ(2)),(3,2,2,QQ(2)),
                     (3,3,3,QQ(2))):
        H=direct_matrix(N,P,Q,d);G=gram(N,P,Q,d);X=primary_basis(N,P,Q,d)
        K=X.solve_right(H*X)
        result['benchmarks'].append({'N':N,'P':P,'Q':Q,'Delta':str(d),
            'basis_as_mode_multisets':basis_json(N,P,Q),
            'basis_convention':'B_n=prod(a†_pq/sqrt(w_p*w_q))^n|0>; w_p=(Delta)_p/p!',
            'matrix_gamma0_units':mat_json(H),'Gram':mat_json(G),
            'primary_columns':mat_json(X),'primary_Gram':mat_json(X.transpose()*G*X),
            'primary_matrix_gamma0_units':mat_json(K),
            'primary_charpoly_gamma0_units':str(K.charpoly().factor())})
    return result


def chiral_tests():
    entries=[]
    expected={2:'8/5',3:'3/5',4:'9/7',5:'11/14',7:'13/15'}
    for P in range(2,9):
        H=direct_matrix(3,P,0,QQ(2));X=primary_basis(3,P,0,QQ(2))
        K=X.solve_right(H*X);c=K.charpoly();z=c.parent().gen()
        if P in expected:target=z-QQ(expected[P])
        elif P==6:target=z*(z-QQ(7)/6)
        else:target=z*(z-QQ(61)/55)
        check(f'chiral_N3_D2_P{P}',c==target)
        entries.append({'P':P,'full_dimension':H.nrows(),
            'primary_dimension':K.nrows(),'charpoly_gamma0_units':str(c.factor()),
            'primary_matrix_gamma0_units':mat_json(K),
            'primary_Gram':mat_json(X.transpose()*gram(3,P,0,QQ(2))*X)})
    return entries


def symbolic_small_matrices():
    d=sp.Symbol('Delta',positive=True)
    def moment(k):return sp.factorial(k)/sp.rf(2*d-1,k+1)
    # Direct integrals of original-mode radial polynomials.
    # Here use explicit SymPy moments, separate from the rational radial code.
    aa=sp.simplify(moment(0)-2*(d+1)*moment(1)+(d+1)**2*moment(2))
    bb=sp.simplify(d*d*moment(2))
    ab=sp.simplify(d*((d+1)*moment(2)-moment(1)))
    # H/(lambda/8pi) in normalized |00,11>, |10,01> basis.
    pair=sp.Matrix([[2*aa,2*ab],[2*ab,2*bb]])
    target=sp.Matrix([[2*d,1],[1,2*d]])/(4*d*d-1)
    check('symbolic_two_body_P1Q1_direct_integrals',
          all(sp.simplify(v)==0 for v in pair-target))
    chiral=sp.Matrix([[d+1,sp.sqrt(d*(d+1))],
                     [sp.sqrt(d*(d+1)),d]])/(2*d+1)
    check('symbolic_two_body_P2Q0_eigenvalues',
          sp.simplify(chiral.det())==0 and sp.simplify(sp.trace(chiral)-1)==0)
    # Independent spectator-pair counting in normalized three-particle states.
    r=(2*d-1)/(2*d+1)
    three11=sp.Matrix([[2+r,sp.sqrt(2)*(1-r)/2],
                      [sp.sqrt(2)*(1-r)/2,sp.Rational(5,2)+r/2]])
    ev11=6*d/(2*d+1)
    check('symbolic_three_body_P1Q1',
          sp.simplify(three11.trace()-3-ev11)==0 and
          sp.simplify(three11.det()-3*ev11)==0)
    three20=sp.Matrix([[4*d+3,sp.sqrt(2*d*(d+1))],
                      [sp.sqrt(2*d*(d+1)),5*d+2]])/(2*d+1)
    ev20=(3*d+2)/(2*d+1)
    check('symbolic_three_body_P2Q0',
          sp.simplify(three20.trace()-3-ev20)==0 and
          sp.simplify(three20.det()-3*ev20)==0)
    return {'P1Q1_two_body_units_lambda_over_8pi':str(pair),
            'P2Q0_two_body_units_gamma0':str(chiral),
            'P1Q1_three_body_units_gamma0':str(three11),
            'P2Q0_three_body_units_gamma0':str(three20),
            'three_body_primary_P1Q1':str(ev11),
            'three_body_primary_P2Q0':str(ev20)}


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',required=True)
    args=parser.parse_args();start=time.monotonic()
    report={'scope':'Exact finite checks of independently derived first-order coefficients; not a proof of continuum remainders.',
            'normalization':'Matrices in gamma0=lambda/[8*pi*(2*Delta-1)] units unless explicitly stated.',
            'environment':{'Sage':SAGE_VERSION,'SymPy':sp.__version__,'Python':platform.python_version()},
            'target_package_imports':[],
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    report['modes']=mode_norm_tests()
    report['number_change']=number_change_tests()
    report['coincidence']=coincidence_tests()
    report['finite_matrices']=finite_matrix_tests()
    report['chiral_three_body']=chiral_tests()
    report['symbolic_small_matrices']=symbolic_small_matrices()
    report['checks']=CHECKS
    report['summary']={'total_checks':len(CHECKS),'passed':sum(c['passed'] for c in CHECKS),
                       'failed':sum(not c['passed'] for c in CHECKS),
                       'elapsed_seconds':round(time.monotonic()-start,3)}
    out=Path(args.output).resolve()
    if not out.name.startswith('phi4_') or out.suffix!='.json':
        raise ValueError('Output must be a phi4_*.json result file')
    out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report['summary'],ensure_ascii=False))
    print(str(out))


if __name__=='__main__':main()
