#!/usr/bin/env python3
"""Exact arbitrary-particle scalar spectrum from the audited Einstein pair kernel.

This is an independent *many-body* construction in bosonic orbit monomials.
It uses no Racah recoupling or low-rank compression. It is intended both as a
usable general calculator and as an independent audit of compressed algorithms.
The pair input is the already dynamically derived O(G) Einstein-scalar kernel;
this file by itself does not rederive that kernel from gravitational constraints.

Single-particle polynomial conventions:
  L_1 = d/dz, L_0 = z d/dz + Delta/2,
  L_-1 = z^2 d/dz + Delta z,
  <z^p,z^p> = p!/(Delta)_p (and an independent right copy).
The bosonic basis m_A is the sum of DISTINCT labelled monomials in each orbit.
All entries are rational when Delta is rational. No square roots are needed.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
from math import factorial, prod, comb
from pathlib import Path
import json
import time

import sympy as s


def qsym(x):
    if isinstance(x,s.Expr):
        return x
    return s.Rational(x.numerator, x.denominator) if isinstance(x, F) else s.Rational(x)


def exact_delta(value):
    """Keep symbolic gaps symbolic; use fast Fraction arithmetic otherwise."""
    if isinstance(value,s.Expr) and not value.is_Rational:
        return value
    return F(value)


def symbolic_zero(value):
    return s.cancel(value) == 0


@lru_cache(None)
def rising(a: F, n: int) -> F:
    return prod((a+j for j in range(n)), start=F(1))


@lru_cache(None)
def mono_norm(delta: F, p: int) -> F:
    return F(factorial(p))/rising(delta, p)


@lru_cache(None)
def orbit_size(state):
    # Avoid forming N! when a very large ground occupation is a spectator.
    remaining=len(state)
    result=1
    for count in Counter(state).values():
        result*=comb(remaining,count)
        remaining-=count
    return result


@lru_cache(None)
def occupation_basis(n: int, p: int, q: int):
    """All multisets of n bidegrees with sums (p,q), generated without labels."""
    if n < 0 or p < 0 or q < 0:
        return ()
    if n == 0:
        return ((),) if p == q == 0 else ()
    if n > p+q:
        # At most p+q particles can occupy nonzero modes. Large N therefore
        # does not create an artificial recursion-depth limitation.
        return tuple(((0,0),)*(n-p-q)+state
                     for state in occupation_basis(p+q,p,q))
    out = []

    def visit(left, pp, qq, smallest, prefix):
        if left == 1:
            if (pp, qq) >= smallest:
                out.append(prefix+((pp, qq),))
            return
        for a in range(smallest[0], pp+1):
            for b in range(smallest[1] if a == smallest[0] else 0, qq+1):
                # Every later p is at least a. If all remaining p equal a,
                # each corresponding q is at least b as well.
                if left*a > pp or (left*a == pp and left*b > qq):
                    continue
                visit(left-1, pp-a, qq-b, (a, b), prefix+((a, b),))
    visit(n, p, q, (0, 0), ())
    return tuple(out)


def primary_multiplicity(n: int, p: int, q: int) -> int:
    """Exact coefficient of (1-x)(1-y) times the N-particle Hilbert series."""
    if n == 0:
        return int(p == q == 0)
    return (len(occupation_basis(n,p,q))-len(occupation_basis(n,p-1,q))
            -len(occupation_basis(n,p,q-1))+len(occupation_basis(n,p-1,q-1)))


@lru_cache(None)
def integer_partitions(n, minimum=1):
    if n == 0:
        return ((),)
    out=[]
    for a in range(minimum,n+1):
        for tail in integer_partitions(n-a,a):
            out.append((a,)+tail)
    return tuple(out)


def molien_series(n: int):
    """Rational bivariate Hilbert series of simultaneous-translation primaries.

    For n>=1 this is the diagonal S_n invariant ring on two standard modules:
    (1-x)(1-y) sum_{lambda |- n} 1/z_lambda /
                 prod_{a in lambda}((1-x^a)(1-y^a)).
    """
    x,y=s.symbols('x y')
    if n == 0:
        return s.S.One
    ans=s.S.Zero
    for partition in integer_partitions(n):
        counts=Counter(partition)
        z=prod(a**c*factorial(c) for a,c in counts.items())
        ans+=s.Rational(1,z)/prod((1-x**a)*(1-y**a) for a in partition)
    return s.factor((1-x)*(1-y)*ans)


@lru_cache(None)
def chiral_pair_vectors(delta: F, total: int):
    """Coefficient/norm data for (L_-1^1+L_-1^2)^(T-k)(z1-z2)^k."""
    result=[]
    for k in range(total+1):
        v=[F((-1)**(k-a)*factorial(k),factorial(a)*factorial(k-a))
           for a in range(k+1)]
        for degree in range(k,total):
            raised=[F(0)]*(degree+2)
            for a,c in enumerate(v):
                raised[a+1]+=(delta+a)*c
                raised[a]+=(delta+degree-a)*c
            v=raised
        norms=[mono_norm(delta,a)*mono_norm(delta,total-a)
               for a in range(total+1)]
        norm=sum(c*c*w for c,w in zip(v,norms))
        exact_norm=(F(factorial(k))*rising(2*delta+k-1,k)/rising(delta,k)**2
                    *F(factorial(total-k))*rising(2*delta+2*k,total-k))
        if norm != exact_norm and not (isinstance(delta,s.Expr) and symbolic_zero(norm-exact_norm)):
            raise ArithmeticError('Pair descendant norm mismatch.')
        if isinstance(delta,s.Expr):
            v=[s.factor(c) for c in v]
            result.append((tuple(v),tuple(s.cancel(c*w/exact_norm) for c,w in zip(v,norms))))
        else:
            result.append((tuple(v),tuple(c*w/norm for c,w in zip(v,norms))))
    return tuple(result)


def einstein_pair(delta: F, k: int, ell: int) -> F:
    """Known pair eigenvalue, coefficient of G, on Bose-allowed channels."""
    if (k+ell)%2:
        raise ValueError('Odd simultaneous pair parity is not a boson channel.')
    n=min(k,ell)
    spin=abs(k-ell)
    h=delta+n
    mu=delta*(delta-2)
    c=h*(h-1)
    u=4*mu-8*c
    if spin == 0:
        if n == 0:
            # Simplification removes the apparent singularity at Delta=3/2.
            return -4*delta*delta+2*delta*delta*(2*delta+5)/((2*delta-1)*(2*delta+1))
        return u*(2*h-2)/(2*h-1)-2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin == 2:
        return u+(n+1)*(n+2)*(2*delta+n-1)*(2*delta+n)/((2*h-1)*(2*h+1)*(2*h+3))
    return u


@lru_cache(None)
def pair_action(delta: F, alpha: tuple, beta: tuple, probe: str = 'einstein'):
    """Nonzero coefficients of w_12 on one labelled pair monomial.

    The harmless extension to odd total pair parity is zero; Bose projection
    removes that extension exactly when this is used in the N-boson operator.
    """
    p,q=alpha[0]+beta[0],alpha[1]+beta[1]
    lv=chiral_pair_vectors(delta,p)
    rv=chiral_pair_vectors(delta,q)
    out=defaultdict(F)
    for k,(left,leftdual) in enumerate(lv):
        al=leftdual[alpha[0]]
        if not al:
            continue
        for ell,(right,rightdual) in enumerate(rv):
            if (k+ell)%2:
                continue
            if probe == 'einstein':
                channel_value=einstein_pair(delta,k,ell)
            elif probe == 'P0L':
                channel_value=F(k==0)
            elif probe == 'P2L':
                channel_value=F(k==2)
            elif probe == 'CLCR':
                channel_value=(delta+k)*(delta+k-1)*(delta+ell)*(delta+ell-1)
            elif probe == 'CL2':
                channel_value=((delta+k)*(delta+k-1))**2
            else:
                raise ValueError('Unknown invariant pair probe.')
            value=al*rightdual[alpha[1]]*channel_value
            if not value:
                continue
            for a,vl in enumerate(left):
                if not vl:
                    continue
                for b,vr in enumerate(right):
                    if vr:
                        out[((a,b),(p-a,q-b))]+=value*vl*vr
    if isinstance(delta,s.Expr):
        out={key:s.cancel(value) for key,value in out.items()}
    return tuple((a,b,value) for (a,b),value in out.items() if value)


def orbit_lowering(n,p,q,chirality):
    """Exact differential L_1 matrix on symmetric orbit sums."""
    basis=occupation_basis(n,p,q)
    target=occupation_basis(n,p-int(chirality==0),q-int(chirality==1))
    index={state:j for j,state in enumerate(target)}
    out=s.zeros(len(target),len(basis))
    for col,state in enumerate(basis):
        for alpha,count in Counter(state).items():
            power=alpha[chirality]
            if not power:
                continue
            changed=list(state);changed.remove(alpha)
            new=list(alpha);new[chirality]-=1;changed.append(tuple(new))
            changed=tuple(sorted(changed))
            value=F(orbit_size(state)*count*power,orbit_size(changed))
            out[index[changed],col]+=qsym(value)
    return out


@lru_cache(None)
def primary_basis(n,p,q):
    """Columns in orbit coordinates; independent of Delta in this realization."""
    dim=len(occupation_basis(n,p,q))
    if n == 0:
        return s.eye(dim)
    lowering=orbit_lowering(n,p,q,0).col_join(orbit_lowering(n,p,q,1))
    columns=lowering.nullspace()
    out=s.Matrix.hstack(*columns) if columns else s.zeros(dim,0)
    if out.cols != primary_multiplicity(n,p,q):
        raise ArithmeticError('Primary kernel does not match Molien coefficient.')
    return out


def orbit_hamiltonian(delta,n,p,q,probe='einstein'):
    """Exact all-pairs W_N in a bosonic orbit basis, with no labelled N! space."""
    delta=exact_delta(delta)
    basis=occupation_basis(n,p,q)
    index={state:j for j,state in enumerate(basis)}
    out=s.zeros(len(basis))
    for col,state in enumerate(basis):
        occ=Counter(state)
        species=sorted(occ)
        column=defaultdict(F)
        for a,alpha in enumerate(species):
            for beta in species[a:]:
                pair_count=occ[alpha]*occ[beta] if alpha!=beta else occ[alpha]*(occ[alpha]-1)//2
                if not pair_count:
                    continue
                rest=list(state);rest.remove(alpha);rest.remove(beta)
                for gamma,eta,value in pair_action(delta,alpha,beta,probe):
                    target=tuple(sorted(rest+[gamma,eta]))
                    column[index[target]]+=(F(orbit_size(state)*pair_count,orbit_size(target))*value)
        for row,value in column.items():
            if value:
                out[row,col]=s.cancel(value) if isinstance(delta,s.Expr) else qsym(value)
    return out


def orbit_gram(delta,n,p,q):
    weights=[]
    delta=exact_delta(delta)
    for state in occupation_basis(n,p,q):
        weights.append(qsym(orbit_size(state)*prod(
            (mono_norm(delta,a)*mono_norm(delta,b) for a,b in state),start=F(1))))
    return s.diag(*weights)


def restrict_operator(matrix,basis):
    if not basis.cols:
        return s.zeros(0)
    pivots=list(basis.T.rref()[1])
    result=basis[pivots,:].inv()*(matrix*basis)[pivots,:]
    if any(t.free_symbols for t in matrix):
        result=result.applyfunc(s.cancel)
        residual=(matrix*basis-basis*result).applyfunc(s.cancel)
    else:
        residual=matrix*basis-basis*result
    if residual != s.zeros(*residual.shape):
        raise ArithmeticError('Operator does not preserve primary subspace.')
    return result


def primary_hamiltonian(delta,n,p,q,verify=True):
    full=orbit_hamiltonian(delta,n,p,q)
    basis=primary_basis(n,p,q)
    result=restrict_operator(full,basis)
    if verify:
        gram=orbit_gram(delta,n,p,q)
        residual=full.T*gram-gram*full
        if any(t.free_symbols for t in residual):
            residual=residual.applyfunc(s.cancel)
        if residual != s.zeros(*residual.shape):
            raise ArithmeticError('Physical Bargmann self-adjointness fails.')
    return result,basis,full


def baseline(delta,n,q):
    delta=exact_delta(delta)
    h=F(n)*delta/2+q
    return 2*n*delta*(delta-2)-8*h*(h-1)


def symbolic_spectrum(n,p,q,delta=None,states=False,verify=True):
    """Exact rational-function matrix and polynomial for general physical gap.

    Root isolation requires a numerical/algebraic specialization; the returned
    characteristic polynomial and basis apply to every real Delta>1, after
    simplifying removable factors. This path is slower than Fraction mode.
    """
    d=s.Symbol('Delta',positive=True) if delta is None else s.sympify(delta)
    h,b,full=primary_hamiltonian(d,n,p,q,verify=verify)
    g=s.Symbol('g')
    cp=s.factor(h.charpoly(g).as_expr())
    result={'N':n,'P':p,'Q':q,'Delta':str(d),'domain':'real Delta>1',
            'energy_convention':'E=N*Delta+P+Q+G*g+o(G); higher orders not asserted',
            'orbit_dimension':full.rows,'primary_dimension':h.rows,
            'primary_matrix':[[str(s.factor(x)) for x in h.row(i)]for i in range(h.rows)],
            'primary_characteristic_polynomial':str(cp),
            'scope':'exact rational-function formulas; specialize before root isolation'}
    if states:
        result['orbit_basis']=[[list(pair)for pair in state]for state in occupation_basis(n,p,q)]
        result['primary_basis_columns']=[[str(x)for x in b.col(i)]for i in range(b.cols)]
    return result


def spectrum(delta,n,p,q,states=False,verify=True,digits=18):
    """Exact algebraic primary spectrum; descendants are identified separately."""
    started=time.monotonic()
    delta=F(delta)
    h,b,full=primary_hamiltonian(delta,n,p,q,verify=verify)
    x=s.Symbol('g')
    cp=s.factor(h.charpoly(x).as_expr())
    base=qsym(baseline(delta,n,min(p,q)))
    shifted=h-base*s.eye(h.rows)
    null=shifted.nullspace()
    factors=s.factor_list(cp,x)[1]
    # real_roots avoids guessed float multiplicities and retains RootOf values.
    exact_roots=s.polys.polytools.intervals(cp,eps=s.Rational(1,10**digits)) if h.rows else []
    result={
        'N':n,'P':p,'Q':q,'Delta':str(delta),
        'energy_convention':'E=N*Delta+P+Q+G*g+o(G), for primaries; higher orders are not asserted',
        'free_primary_energy':str(n*delta+p+q),
        'orbit_dimension':full.rows,'primary_dimension':h.rows,
        'primary_characteristic_polynomial':str(cp),
        'irreducible_factors':[{'polynomial':str(f),'multiplicity':int(mult),'degree':int(s.degree(f,x))} for f,mult in factors],
        'root_intervals':[{'left':str(a),'right':str(c),'multiplicity':m}
                          for (a,c),m in exact_roots],
        'stronger_Casimir_lower_bound':str(base),
        'saturating_primary_multiplicity':len(null),
        'primary_matrix':[[str(t) for t in h.row(i)] for i in range(h.rows)],
        'runtime_seconds':round(time.monotonic()-started,6),
        'validation':'exact Bose construction, both lowering kernels, physical Gram self-adjointness' if verify else 'unchecked',
    }
    if states:
        result['orbit_basis']=[[list(pair) for pair in state] for state in occupation_basis(n,p,q)]
        result['primary_basis_columns']=[[str(t) for t in b.col(i)] for i in range(b.cols)]
        result['saturating_primary_columns']=[[str(t) for t in v] for v in null]
        result['general_eigenstate_instruction']='For each root g, take ker(primary_matrix-g I), then multiply by primary_basis_columns; orbit monomials sum DISTINCT label permutations.'
    return result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta',default='2',help='rational physical scalar gap >1')
    parser.add_argument('--n',type=int,required=True)
    parser.add_argument('--p',type=int,required=True)
    parser.add_argument('--q',type=int,default=0)
    parser.add_argument('--states',action='store_true')
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    symbolic=args.delta=='symbolic'
    d=None if symbolic else F(args.delta)
    if (not symbolic and d<=1) or min(args.n,args.p,args.q)<0:
        parser.error('Require Delta>1 and nonnegative N,P,Q.')
    result=(symbolic_spectrum(args.n,args.p,args.q,states=args.states) if symbolic
            else spectrum(d,args.n,args.p,args.q,states=args.states))
    serialized=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(serialized,encoding='utf-8')
    print(serialized,end='')


if __name__=='__main__':
    main()
