#!/usr/bin/env sage -python
"""Independent fixed-(P,Q) condensate expansion for the AdS3 2k contact.

Run with Sage 10.9, e.g. sage --nodotsage -python fixed_shell.py.
All returned contact matrices are divided by
    g * kappa_{k,0} / (k-1)!,
with lambda_{2k}=g*N**(1-k), and the all-ground energy is subtracted.
Exact AA arithmetic is used for normalized occupation matrix entries.
The main construction does not import the existing contact engine; the
self-test imports it only as a comparison implementation.
"""
from collections import Counter
from functools import lru_cache
from itertools import product
from pathlib import Path
import importlib.util
import json
import sys
sys.dont_write_bytecode = True
from sage.all import (AA, QQ, ZZ, RDF, PolynomialRing, binomial, factorial,
                      matrix, prod, sqrt)


def parameter(delta):
    """Keep rational Delta rational; otherwise accept exact real algebraics."""
    try:
        return QQ(delta)
    except (TypeError,ValueError):
        return AA(delta)


def fac(n):
    return ZZ(factorial(ZZ(n)))


def falling(n, r):
    if r < 0 or n < r:
        return ZZ(0)
    return prod(ZZ(n-j) for j in range(r))


@lru_cache(None)
def weight(delta, p):
    return prod((delta+j)/ZZ(j+1) for j in range(p))


@lru_cache(None)
def jacobi(delta, nu, ell):
    R = PolynomialRing(delta.parent(), 'x')
    x = R.gen()
    return R(sum(binomial(nu+delta-1, nu-j)*binomial(nu+ell, j)
                 *(-x)**j*(1-x)**(nu-j) for j in range(nu+1)))


@lru_cache(None)
def stable_basis(P, Q):
    """Excited-mode multisets, no (0,0), in an N-independent order."""
    modes = tuple((p,q) for p in range(P+1) for q in range(Q+1)
                  if p+q)
    @lru_cache(None)
    def build(p, q, first):
        if p == 0 and q == 0:
            return ((),)
        out = []
        for j in range(first, len(modes)):
            a,b = modes[j]
            if a <= p and b <= q:
                out.extend(((a,b),)+tail for tail in build(p-a,q-b,j))
        return tuple(out)
    return tuple(sorted(build(P,Q,0), key=lambda t: (len(t),t)))


@lru_cache(None)
def radial(delta, k, labels):
    """I/c_k, with all mode d-factors removed; direct polynomial integration."""
    ell = sum(abs(p-q) for p,q in labels)
    if ell % 2:
        raise ValueError('Angular selection forbids this vertex')
    R = PolynomialRing(delta.parent(), 'x'); x = R.gen()
    polynomial = (1-x)**(ell//2)
    for p,q in labels:
        polynomial *= jacobi(delta,min(p,q),abs(p-q))
    return sum(a/(k*delta-1+h) for h,a in enumerate(polynomial.list()))


@lru_cache(None)
def vertex(delta, k, labels):
    """Exact normalized-mode I/c_k in AA, c_k=(2*pi)**(1-k)/2."""
    d_squared = prod(weight(delta,max(p,q))/weight(delta,min(p,q))
                     for p,q in labels)
    return AA(radial(delta,k,labels))*AA(d_squared).sqrt()


@lru_cache(None)
def omega(delta, k, p, q):
    """Dimensionless limiting one-excitation frequency, excluding (0,0)."""
    if p == q == 0:
        raise ValueError('The ground mode is not an excitation oscillator')
    labels = tuple(sorted([(0,0)]*(2*k-2)+[(p,q)]*2))
    overlap = ((k*delta-1)*weight(delta,max(p,q))
               /weight(delta,min(p,q))*radial(delta,k,labels))
    return k*overlap-1


def common_spectators(bra, ket):
    modes = sorted(set(bra)|set(ket))
    bc,kc = Counter(bra),Counter(ket)
    for counts in product(*(range(min(bc[I],kc[I])+1) for I in modes)):
        yield {I:t for I,t in zip(modes,counts) if t}


def vertex_data(delta,k,bra,ket,spectators):
    """The N-independent factor and numbers r,s of active excited legs."""
    bc,kc = Counter(bra),Counter(ket)
    t = Counter(spectators)
    c,a = bc-t,kc-t
    r,s = sum(c.values()),sum(a.values())
    if max(r,s)>k:
        return AA(0),r,s
    labels = tuple(sorted(list(c.elements())+list(a.elements())
                          +[(0,0)]*(2*k-r-s)))
    denom = fac(k-r)*fac(k-s)*prod(fac(v) for v in c.values())*prod(
        fac(v) for v in a.values())
    excited_sq = prod(fac(bc[I])*fac(kc[I])/fac(t[I])**2
                      for I in set(bc)|set(kc))
    return vertex(delta,k,labels)*AA(excited_sq).sqrt()/denom,r,s


def finite_matrix(delta,k,N,P,Q):
    """Exact full finite-N normalized shifted matrix in the stable basis."""
    delta = parameter(delta)
    basis = stable_basis(P,Q)
    if N < P+Q:
        raise ValueError('This stable-basis implementation requires N>=P+Q')
    scale = fac(k)*fac(k-1)*(k*delta-1)/ZZ(N)**(k-1)
    ground = QQ(binomial(N,k))/(fac(k)*(k*delta-1))
    def entry(i,j):
        bra,ket = basis[i],basis[j]
        out = AA(0)
        for t in common_spectators(bra,ket):
            factor,r,s = vertex_data(delta,k,bra,ket,t)
            if factor:
                ground_sq = falling(N-len(ket),k-s)*falling(N-len(bra),k-r)
                out += factor*AA(ground_sq).sqrt()
        return scale*(out-(ground if i==j else 0))
    return basis,matrix(AA,len(basis),len(basis),entry)


def limiting_matrix(delta,k,P,Q):
    delta=parameter(delta); basis=stable_basis(P,Q)
    return basis,matrix.diagonal(delta.parent(),[sum(omega(delta,k,p,q) for p,q in state)
                                               for state in basis])


def half_order_matrix(delta,k,P,Q):
    """Coefficient of N**(-1/2), including all 1<->2 excitation processes."""
    delta=parameter(delta); basis=stable_basis(P,Q)
    scale=fac(k)*fac(k-1)*(k*delta-1)
    def entry(i,j):
        bra,ket=basis[i],basis[j]
        t=Counter(bra)&Counter(ket)
        d=len(bra)+len(ket)-2*sum(t.values())
        if d!=3:
            return AA(0)
        factor,r,s=vertex_data(delta,k,bra,ket,t)
        return scale*factor
    return basis,matrix(AA,len(basis),len(basis),entry)


def primary_states(P,Q):
    return tuple(s for s in stable_basis(P,Q) if (1,0) not in s and (0,1) not in s)


def spectral_table(delta,k,P,Q,primary=False):
    basis=primary_states(P,Q) if primary else stable_basis(P,Q)
    counts=Counter(sum(omega(QQ(delta),k,p,q) for p,q in s) for s in basis)
    return [{'frequency':str(e),'multiplicity':m} for e,m in sorted(counts.items())]


def reference_engine():
    root=Path(__file__).resolve().parents[2]
    path=root/'code'/'contact_blocks.py'
    spec=importlib.util.spec_from_file_location('verified_contact_blocks',path)
    cb=importlib.util.module_from_spec(spec); spec.loader.exec_module(cb)
    return cb


def verify():
    cb=reference_engine()
    exact=[]
    for delta,k,N,P,Q in [(QQ(2),2,6,2,2),(QQ(2),3,6,2,2),
                           (QQ(5)/3,3,7,3,2),(QQ(2),4,7,3,2)]:
        b,A=finite_matrix(delta,k,N,P,Q)
        physical=tuple(tuple(sorted([(0,0)]*(N-len(s))+list(s))) for s in b)
        C=cb.contact_matrix(delta,2*k,physical)
        G=cb.gram_diagonal(delta,physical)
        scale=fac(k)*fac(k-1)*(k*delta-1)/ZZ(N)**(k-1)
        ground=QQ(binomial(N,k))/(fac(k)*(k*delta-1))
        reference=matrix(AA,len(b),len(b),lambda i,j:
            scale*(C[i,j]*AA(G[i]/G[j]).sqrt()-(ground if i==j else 0)))
        passed=A==reference and A==A.transpose()
        assert passed
        # Representation-theoretic primary dimension, independent of the limit.
        _,B=cb.primary_basis(delta,N,P,Q)
        assert B.ncols()==len(primary_states(P,Q))
        exact.append({'Delta':str(delta),'k':k,'N':N,'P':P,'Q':Q,
                      'dimension':len(b),'matrix_equal':passed,
                      'primary_dimension':B.ncols()})
    # Collaborative follow-up: parent supplied this all-N radial-primary formula
    # only after the independent all-shell result had been derived.
    radial_family_checks=0
    for delta in [QQ(3)/2,QQ(2),QQ(7)/3]:
        for k in [2,3,4,5]:
            for N in [k,k+2,17]:
                b,A=finite_matrix(delta,k,N,1,1)
                pref=((k-2)*delta-1)/(k*delta+1)
                coefficient=AA(fac(k-1)*binomial(N-2,k-2)
                               /ZZ(N)**(k-1)*pref)
                expected=coefficient*matrix(AA,[[N-1,-AA(N-1).sqrt()],
                                                [-AA(N-1).sqrt(),1]])
                assert b==(((1,1),),((0,1),(1,0)))
                assert A==expected
                radial_family_checks+=1
    tables=[]
    for k in [2,3,4]:
        for P,Q in [(2,2),(3,2),(4,0),(3,3)]:
            tables.append({'Delta':'2','k':k,'P':P,'Q':Q,
                           'full':spectral_table(QQ(2),k,P,Q),
                           'primary':spectral_table(QQ(2),k,P,Q,True)})
    convergence=[]
    for k,P,Q in [(2,2,2),(3,3,2),(4,3,3)]:
        _,D=limiting_matrix(QQ(2),k,P,Q)
        _,B=half_order_matrix(QQ(2),k,P,Q)
        for N in [32,128,512,2048]:
            _,A=finite_matrix(QQ(2),k,N,P,Q)
            residual=(A-D).change_ring(RDF)
            second=residual-B.change_ring(RDF)/RDF(N).sqrt()
            convergence.append({'k':k,'P':P,'Q':Q,'N':N,
                'sqrtN_times_operator_error':float(RDF(N).sqrt()*residual.norm(2)),
                'N_times_after_half_order_error':float(N*second.norm(2))})
    # Irrational Delta: no cross-N resonance, but a true N^(-1/2) splitting.
    special_delta=(AA(13).sqrt()-1)/2
    b,D=limiting_matrix(special_delta,2,2,2)
    _,B=half_order_matrix(special_delta,2,2,2)
    i=b.index(((2,2),)); j=b.index(((1,1),(1,1)))
    alpha=AA(2).sqrt()*(AA(13).sqrt()-2)/(3*AA(13).sqrt())
    assert D[i,i]==D[j,j]
    assert B[i,j]==alpha
    special=[]
    for N in [64,256,1024,4096]:
        _,A=finite_matrix(special_delta,2,N,2,2)
        pair=sorted(A.change_ring(RDF).eigenvalues(),
                    key=lambda e: abs(e-float(D[i,i])))[:2]
        special.append({'N':N,'scaled_splitting':sorted(
            float(RDF(N).sqrt()*(e-D[i,i])) for e in pair)})
    return {'normalization':'(shifted energy)/(g*kappa_{k,0}/(k-1)!)',
            'exact_engine_comparisons':exact,
            'collaborative_radial_family_exact_checks':radial_family_checks,
            'limiting_spectra':tables,
            'convergence':convergence,
            'irrational_collision':{'Delta':'(sqrt(13)-1)/2',
                'limiting_frequency':'-2/sqrt(13)',
                'half_order_coefficient':'sqrt(2)*(sqrt(13)-2)/(3*sqrt(13))',
                'exact_frequency_and_coefficient_checks':True,
                'coefficient_decimal':float(alpha),'finite_N':special}}


if __name__=='__main__':
    report=verify()
    print(json.dumps(report,indent=2,default=int))
