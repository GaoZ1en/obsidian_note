#!/usr/bin/env sage -python
"""Exact global-AdS3 polynomial scalar contact matrices.

Independent action -> KG modes -> beta integrals -> normal-ordered Fock lift.
Run with Sage 10.9 Python. No old spectrum implementation is imported.
The returned matrix is V_n / c_n, c_n=(2*pi)**(1-n/2)/2, with lambda_n=1.
B_m = prod_I (a_I^dagger/sqrt(w_p*w_q))**m_I |0>, w_p=(Delta)_p/p!.
Thus the matrix is rational for rational Delta; its diagonal Gram is explicit.
"""
from __future__ import annotations
from collections import Counter
from functools import lru_cache
from itertools import combinations_with_replacement
from sage.all import (QQ, ZZ, PolynomialRing, NumberField, binomial,
                      factorial as _factorial, matrix, prod, identity_matrix)


def factorial(n):
    # Sage dispatch can return a Python int for Python-int inputs. Force exact
    # integer parents before division in this ordinary (non-preparsed) module.
    return ZZ(_factorial(ZZ(n)))


@lru_cache(None)
def weight(delta, p):
    return prod((delta+j)/(j+1) for j in range(p))


@lru_cache(None)
def jacobi_x(delta, radial, spin):
    """P_radial^(delta-1,spin)(1-2x), by its finite binomial formula."""
    R = PolynomialRing(delta.parent(), 'x')
    x = R.gen()
    return R(sum(binomial(radial+delta-1, radial-j)
                 * binomial(radial+spin, j) * (-x)**j
                 * (1-x)**(radial-j) for j in range(radial+1)))


@lru_cache(None)
def radial_moment(delta, labels):
    """Integral x^(n Delta/2-2)(1-x)^(sum |l|/2) prod J_I(x) dx.

    Only call for angular-allowed vertices. The unsigned spin sum must be even.
    Rational beta evaluation is valid also at formal Delta via rational functions.
    """
    n = len(labels)
    spin_sum = sum(abs(p-q) for p,q in labels)
    if spin_sum % 2:
        raise ValueError('angular-forbidden input: odd unsigned spin sum')
    A = spin_sum//2
    polynomial = prod(jacobi_x(delta, min(p,q), abs(p-q)) for p,q in labels)
    # B(z,A+1) = A! / (z)_(A+1), z = n Delta/2 - 1 + j.
    z0 = n*delta/2-1
    return sum(coef*factorial(A)/prod(z0+j+i for i in range(A+1))
               for j,coef in enumerate(polynomial.list()))


@lru_cache(None)
def fock_basis(N, P, Q):
    """Sorted tuples of occupied (p,q), repeated with occupation number.

    Recursive bounded compositions, not a scan over the full mode Fock space.
    """
    N,P,Q = int(N),int(P),int(Q)
    if min(N,P,Q) < 0:
        return ()
    if N == 0:
        return ((),) if P == Q == 0 else ()
    modes = tuple((p,q) for p in range(P+1) for q in range(Q+1))
    @lru_cache(None)
    def build(left, ps, qs, first):
        if left == 0:
            return ((),) if ps == qs == 0 else ()
        answer=[]
        for i in range(first, len(modes)):
            p,q=modes[i]
            if p>ps or q>qs:
                continue
            for rest in build(left-1, ps-p, qs-q, i):
                answer.append(((p,q),)+rest)
        return tuple(answer)
    return build(N,P,Q,0)


def energy_basis(delta, energy, angular):
    """Complete finite (E,J) Fock block at rational Delta>1, including all N."""
    delta,energy,angular=QQ(delta),QQ(energy),ZZ(angular)
    if delta <= 1 or energy < 0:
        raise ValueError('requires Delta>1 and E>=0')
    answer=[]
    for N in range(int((energy/delta).floor())+1):
        excitation=energy-N*delta
        P,Q=(excitation+angular)/2,(excitation-angular)/2
        if min(P,Q)>=0 and P.denominator()==Q.denominator()==1:
            answer.extend(fock_basis(N,int(P),int(Q)))
    return tuple(answer)


def gram_diagonal(delta,basis):
    return tuple(prod(factorial(m)/(weight(delta,p)*weight(delta,q))**m
                      for (p,q),m in Counter(state).items()) for state in basis)


@lru_cache(None)
def stripped_entry(delta,n,bra,ket):
    """Algebra-basis matrix entry; energy projection is the caller's choice.

    Shared occupied modes can be spectators or active. Sum over EVERY common
    spectator multiset of the unique length (N_bra+N_ket-n)/2.
    """
    nb,nk=len(bra),len(ket)
    twice_spectators=nb+nk-n
    if twice_spectators < 0 or twice_spectators % 2:
        return delta.parent().zero()
    ns=twice_spectators//2
    if ns>min(nb,nk):
        return delta.parent().zero()
    bc,kc=Counter(bra),Counter(ket)
    common=tuple(sorted((bc & kc).elements()))
    result=delta.parent().zero()
    for spectators in sorted(set(combinations_with_replacement(sorted(set(common)),ns))):
        sc=Counter(spectators)
        if any(m>(bc & kc)[I] for I,m in sc.items()):
            continue
        creators,annihilators=bc-sc,kc-sc
        if sum((p-q)*m for (p,q),m in creators.items()) != sum(
                (p-q)*m for (p,q),m in annihilators.items()):
            continue
        labels=tuple(sorted((creators+annihilators).elements()))
        radial=radial_moment(delta,labels)
        if not radial:
            continue
        factor=prod(weight(delta,max(p,q))**m/factorial(m)
                    for (p,q),m in creators.items())
        factor*=prod(factorial(kc[p,q])/factorial(kc[p,q]-m)
                     /factorial(m)/weight(delta,min(p,q))**m
                     for (p,q),m in annihilators.items())
        result += factor*radial
    return result


def contact_matrix(delta,n,basis,resonant=True):
    """Column action. Returned dimensionless A obeys G A = A^T G."""
    ring=delta.parent()
    def entry(i,j):
        bra,ket=basis[i],basis[j]
        if resonant and ((len(bra)-len(ket))*delta
                +sum(p+q for p,q in bra)-sum(p+q for p,q in ket)) != 0:
            return ring.zero()
        return stripped_entry(delta,int(n),bra,ket)
    return matrix(ring,len(basis),len(basis),entry)


def lowering_matrix(delta,basis,target,side):
    """Free L_- or bar L_-: in this algebra basis the coefficient is p or q."""
    index={state:i for i,state in enumerate(target)}
    out=matrix(delta.parent(),len(target),len(basis))
    for j,state in enumerate(basis):
        count=Counter(state)
        for I,m in count.items():
            if I[side] == 0:
                continue
            new=list(I); new[side]-=1; new=tuple(new)
            target_count=count.copy(); target_count[I]-=1; target_count[new]+=1
            dest=tuple(sorted(target_count.elements()))
            if dest in index:
                out[index[dest],j]+=m*I[side]
    return out


def primary_basis(delta,N,P,Q):
    """Columns spanning the joint free lowering kernel in one fixed-N block."""
    basis=fock_basis(N,P,Q)
    left=lowering_matrix(delta,basis,fock_basis(N,P-1,Q),0)
    right=lowering_matrix(delta,basis,fock_basis(N,P,Q-1),1)
    return basis,left.stack(right).right_kernel().basis_matrix().transpose()


def compress_primary(delta,n,N,P,Q):
    basis,B=primary_basis(delta,N,P,Q)
    A=contact_matrix(delta,n,basis)
    G=matrix.diagonal(delta.parent(),gram_diagonal(delta,basis))
    g=B.transpose()*G*B
    compressed=g.inverse()*B.transpose()*G*A*B if B.ncols() else matrix(delta.parent(),0,0)
    if A*B != B*compressed:
        raise ArithmeticError('primary subspace not preserved')
    return basis,B,g,compressed


def matrix_json(A):
    return [[str(A[i,j]) for j in range(A.ncols())] for i in range(A.nrows())]


def exact_spectral_data(A):
    """Exact eigenvectors over one algebraic number field per irreducible factor.

    Each real embedding of the field gives an eigenvalue and its right
    eigenspace; no decimal approximation or root-order convention is imposed.
    Coefficients are in the B_m basis, in the order of the supplied matrix.
    """
    if A.base_ring() is not QQ:
        raise ValueError('exact_spectral_data currently requires a QQ matrix')
    answer=[]
    for f,multiplicity in A.charpoly('z').factor():
        if f.degree()==1:
            field=QQ; eigenvalue=-f[0]/f[1]
        else:
            field=NumberField(f,'e'); eigenvalue=field.gen()
        K=(A.change_ring(field)-eigenvalue*identity_matrix(field,A.nrows())).right_kernel()
        if K.dimension()!=multiplicity:
            raise ArithmeticError('unexpected Jordan block or multiplicity mismatch')
        answer.append({'minimal_polynomial':str(f),'field_generator':'e' if f.degree()>1 else None,
                       'eigenvalue':str(eigenvalue),'number_of_real_embeddings':int(f.degree()),
                       'multiplicity_per_embedding':int(multiplicity),
                       'eigenvectors_as_rows':matrix_json(K.basis_matrix())})
    return answer


if __name__ == '__main__':
    import argparse,json
    from pathlib import Path
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta',default='2')
    parser.add_argument('--degree',type=int,default=6)
    parser.add_argument('--energy',default='8')
    parser.add_argument('--angular',type=int,default=0)
    parser.add_argument('--output',required=True)
    args=parser.parse_args()
    d,E=QQ(args.delta),QQ(args.energy)
    basis=energy_basis(d,E,args.angular)
    A=contact_matrix(d,args.degree,basis)
    G=matrix.diagonal(QQ,gram_diagonal(d,basis))
    if G*A != A.transpose()*G:
        raise ArithmeticError('Gram self-adjointness failed')
    result={'Delta':str(d),'degree':args.degree,'energy':str(E),'angular':args.angular,
            'scale':'lambda_n*(2*pi)^(1-n/2)/2',
            'basis':basis,'gram_diagonal':list(map(str,G.diagonal())),
            'matrix':matrix_json(A),'rank':int(A.rank()),
            'characteristic_polynomial':str(A.charpoly('z').factor()),
            'exact_spectrum':exact_spectral_data(A),
            'state_recovery':'For an eigenvector x in this basis, normalized-Fock coefficients are sqrt(G_m)*x_m; divide by sqrt(x^*Gx). Choose any real embedding of its field.',
            'gram_self_adjoint':True}
    output=Path(args.output)
    if output.exists():
        raise FileExistsError('Refusing to overwrite an existing result: '+str(output))
    output.parent.mkdir(parents=True,exist_ok=True)
    output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'dimension':len(basis),'rank':int(A.rank()),'charpoly':str(A.charpoly('z').factor()),'output':str(output)}))
