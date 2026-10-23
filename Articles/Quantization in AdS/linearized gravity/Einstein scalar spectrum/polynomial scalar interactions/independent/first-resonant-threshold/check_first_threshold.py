#!/usr/bin/env sage -python
"""Independent exact checks of the first resonant threshold.

Run using Sage. All constructed matrices use y=sin^2(rho), the positive
Jacobi phase, and D_m=prod (a_y^dagger/d_I)^m |0>. This is deliberately
not the rational basis used by the first-stage comparison module.

Scale: A = [P V P / lambda_(2k)] / [(2*pi)^(1-k)/2].
No later project note or threshold implementation is imported.
"""
from collections import Counter
from functools import lru_cache
from itertools import product
from pathlib import Path
import importlib.util
import json
import sys

# Do not create comparison-module bytecode outside this branch.
sys.dont_write_bytecode = True

from sage.all import QQ, ZZ, PolynomialRing, matrix, binomial, factorial, prod

HERE = Path(__file__).resolve().parent
RING = PolynomialRing(QQ, 'y')
y = RING.gen()
CHAR_RING = PolynomialRing(QQ, 'z')
z = CHAR_RING.gen()


def rising(x, n):
    return prod(x+j for j in range(n))


@lru_cache(None)
def jacobi_positive(delta, n, ell):
    """P_n^(ell,Delta-1)(1-2y), from the terminating hypergeometric sum."""
    return RING(binomial(n+ell, n) * sum(
        rising(-ZZ(n), h)*rising(n+ell+delta, h)
        / (rising(ZZ(ell+1), h)*factorial(ZZ(h))) * y**h
        for h in range(n+1)))


@lru_cache(None)
def d_squared(delta, p, q):
    n, ell = min(p,q), abs(p-q)
    return QQ(rising(delta+n, ell) / rising(ZZ(n+1), ell))


@lru_cache(None)
def radial_integral(delta, k, labels):
    """Dimensionless y-integral, with all d_I and (2pi) factors removed."""
    ell_sum = sum(abs(p-q) for p,q in labels)
    assert ell_sum % 2 == 0
    ell_half = ell_sum//2
    pol = prod(jacobi_positive(delta, min(p,q), abs(p-q)) for p,q in labels)
    beta_second = k*delta-1
    return QQ(sum(coef*factorial(ZZ(ell_half+h)) /
                  rising(beta_second, ell_half+h+1)
                  for h,coef in enumerate(pol.list())))


@lru_cache(None)
def shell(N, P, Q, first_p=0, first_q=0):
    """Lexicographic Bose states, independently enumerated."""
    if N == 0:
        return ((),) if P == Q == 0 else ()
    out = []
    for p in range(first_p, P+1):
        if p*N > P:
            break
        for q in range(first_q if p == first_p else 0, Q+1):
            for tail in shell(N-1, P-p, Q-q, p, q):
                out.append(((p,q),)+tail)
    return tuple(out)


def full_basis(delta, E, J):
    out = []
    for N in range(int((E/delta).floor())+1):
        P, Q = (E-N*delta+J)/2, (E-N*delta-J)/2
        if P in ZZ and Q in ZZ and min(P,Q) >= 0:
            out.extend(shell(N,int(P),int(Q)))
    return tuple(out)


@lru_cache(None)
def annihilation_choices(state, n):
    counts = Counter(state)
    modes = sorted(counts)
    out = []
    for nums in product(*(range(counts[I]+1) for I in modes)):
        if sum(nums) == n:
            out.append(tuple((I,t) for I,t in zip(modes,nums) if t))
    return tuple(out)


def independent_entry(delta, k, bra, ket):
    annihilator_twice = 2*k + len(ket)-len(bra)
    if annihilator_twice % 2:
        return QQ.zero()
    n = annihilator_twice//2
    if n < 0 or n > min(2*k,len(ket)):
        return QQ.zero()
    bc, kc = Counter(bra), Counter(ket)
    out = QQ.zero()
    for chosen in annihilation_choices(ket,n):
        annih = Counter(dict(chosen))
        remainder = kc-annih
        if any(remainder[I] > bc[I] for I in remainder):
            continue
        create = bc-remainder
        if sum(create.values())+sum(annih.values()) != 2*k:
            continue
        if sum((p-q)*v for (p,q),v in create.items()) != sum(
                (p-q)*v for (p,q),v in annih.items()):
            continue
        labels = tuple(sorted((create+annih).elements()))
        coefficient = prod(d_squared(delta,p,q)**v/factorial(ZZ(v))
                           for (p,q),v in create.items())
        coefficient *= prod(binomial(kc[I],v) for I,v in annih.items())
        out += coefficient*radial_integral(delta,k,labels)
    return QQ(out)


def full_matrix(delta,k,basis):
    return matrix(QQ,len(basis),len(basis),
                  lambda i,j: independent_entry(delta,k,basis[i],basis[j]))


def gram(delta,basis):
    return matrix.diagonal(QQ,[prod(factorial(ZZ(v))/d_squared(delta,*I)**v
                                    for I,v in Counter(state).items())
                               for state in basis])


def threshold_prediction(delta,k,dim):
    a,b = int(delta.numerator()),int(delta.denominator())
    r,s = k-b,k+b
    assert r >= 2
    D = QQ(binomial(s,k)/(factorial(ZZ(k))*(k*delta-1)))
    C2 = QQ(binomial(a+r-2,r-2)/(factorial(ZZ(r))*factorial(ZZ(s))
                                *(s*delta-1)**2))
    positives = [] if a%2 else [QQ(binomial(c+k-2,k-2) /
                         (factorial(ZZ(k))*(k*delta+2*c-1)))
                         for c in range(a//2+1)]
    rank = 2+len(positives)
    polynomial = z**(dim-rank)*(z*z-D*z-C2)*prod(z-v for v in positives)
    return D,C2,positives,rank,CHAR_RING(polynomial)


def exact_inertia_symmetric(S):
    """Exact rational congruence elimination, including zero diagonal pivots."""
    S = matrix(QQ,S)
    positive = negative = zero = 0
    while S.nrows():
        n = S.nrows()
        nonzero_diagonal = next((i for i in range(n) if S[i,i]),None)
        if nonzero_diagonal is not None:
            order = [nonzero_diagonal]+[i for i in range(n) if i != nonzero_diagonal]
            S = S.matrix_from_rows_and_columns(order,order)
            pivot = S[0,0]
            positive += int(pivot>0)
            negative += int(pivot<0)
            column = S[1:,0:1]
            S = S[1:,1:]-column*column.transpose()/pivot
            continue
        pair = next(((i,j) for i in range(n) for j in range(i+1,n) if S[i,j]),None)
        if pair is None:
            zero += n
            break
        i,j = pair
        order = [i,j]+[l for l in range(n) if l not in pair]
        S = S.matrix_from_rows_and_columns(order,order)
        pivot = S[:2,:2]
        tail = S[2:,:2]
        S = S[2:,2:]-tail*pivot.inverse()*tail.transpose()
        positive += 1
        negative += 1
    return (positive,negative,zero)


def import_first_stage():
    path = HERE.parents[1]/'code'/'contact_blocks.py'
    spec = importlib.util.spec_from_file_location('first_stage_contact_comparison',path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main():
    comparison = import_first_stage()
    examples = [(3,QQ(2)), (3,QQ(3)), (4,QQ(3)/2), (5,QQ(4)/3),
                (4,QQ(2)), (5,QQ(5)/3)]
    results = []
    for k,delta in examples:
        b = int(delta.denominator())
        E = (k+b)*delta
        basis = full_basis(delta,E,ZZ(0))
        A = full_matrix(delta,k,basis)
        G = gram(delta,basis)
        D,C2,positives,rank,prediction = threshold_prediction(delta,k,len(basis))
        assert G*A == A.transpose()*G
        assert A.charpoly('z') == prediction
        assert A.rank() == rank
        inertia = exact_inertia_symmetric(G*A)
        assert inertia == (rank-1,1,len(basis)-rank)
        ref_basis = comparison.energy_basis(delta,E,0)
        assert ref_basis == basis
        ref = comparison.contact_matrix(delta,2*k,basis)
        # D_y,state = S_state B_first-stage,state.
        diagonal = [prod((-1)**min(p,q)*comparison.weight(delta,min(p,q))
                         for p,q in state) for state in basis]
        S = matrix.diagonal(QQ,diagonal)
        assert A == S.inverse()*ref*S
        sectors = []
        for N in sorted(set(map(len,basis))):
            states = [state for state in basis if len(state)==N]
            sectors.append({'N':N,'P':sum(p for p,q in states[0]),
                            'Q':sum(q for p,q in states[0]),'dimension':len(states)})
        record = {'k':k,'Delta':str(delta),'E_star':str(E),'J':0,
                  'dimension':len(basis),'sectors':sectors,
                  'scale':'lambda_(2k)*(2*pi)^(1-k)/2',
                  'D_scaled':str(D),'C_squared_scaled':str(C2),
                  'additional_positive_scaled':list(map(str,positives)),
                  'rank':rank,'inertia_positive_negative_zero':inertia,
                  'characteristic_polynomial':str(prediction.factor()),
                  'gram_self_adjoint':True,'predicted_charpoly_exact':True,
                  'comparison_first_stage_exact':True}
        results.append(record)
        print(json.dumps(record,sort_keys=True),flush=True)
    # Exhaustive small full-block pre-threshold search, with every N and J.
    scans = []
    for k,delta in [(3,QQ(2)),(4,QQ(3)/2)]:
        E_star = (k+delta.denominator())*delta
        blocks = set()
        for N in range(1,int((E_star/delta).ceil())):
            max_exc = int((E_star-N*delta).ceil())-1
            for P in range(max_exc+1):
                for Q in range(max_exc-P+1):
                    E = N*delta+P+Q
                    if E < E_star:
                        blocks.add((E,P-Q))
        checked = 0
        dimensions = []
        for E,J in sorted(blocks):
            basis = full_basis(delta,E,J)
            A = full_matrix(delta,k,basis)
            G = gram(delta,basis)
            assert G*A == A.transpose()*G
            inertia = exact_inertia_symmetric(G*A)
            assert inertia[1] == 0
            checked += 1
            dimensions.append(len(basis))
        record = {'k':k,'Delta':str(delta),'strictly_below':str(E_star),
                  'full_blocks_checked':checked,'maximum_dimension':max(dimensions),
                  'all_positive_semidefinite':True}
        scans.append(record)
        print('PRETHRESHOLD '+json.dumps(record,sort_keys=True),flush=True)
    output = HERE/'exact_checks.json'
    if output.exists():
        raise FileExistsError(output)
    output.write_text(json.dumps({'threshold_examples':results,'prethreshold_scans':scans},
                                 indent=2)+'\n',encoding='utf-8')
    print('OUTPUT '+str(output),flush=True)


if __name__ == '__main__':
    main()
