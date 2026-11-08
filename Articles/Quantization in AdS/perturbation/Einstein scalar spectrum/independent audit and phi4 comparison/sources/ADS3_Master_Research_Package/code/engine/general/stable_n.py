#!/usr/bin/env python3
"""One exact symbolic-N Hamiltonian for every N >= P+Q.

The basis records only nonzero scalar modes; the ground occupation is N-M.
Every entry is derived by bosonic occupation combinatorics, never fitted in N.
We divide each orbit sum by its orbit size. In this averaged tensor basis the
matrix W-binomial(N,2)*g_00 is affine in N and the primary basis is independent
of N. The same finite matrix pencil therefore gives all N in the stable range.
"""
from __future__ import annotations
import argparse
from collections import Counter,defaultdict
from fractions import Fraction as F
from functools import lru_cache
from math import factorial,prod,comb
from pathlib import Path
import json
import sympy as s

from fock_exact import (occupation_basis,pair_action,einstein_pair,qsym,rising,
                       primary_multiplicity,primary_hamiltonian)


@lru_cache(None)
def excited_basis(p,q):
    if min(p,q)<0:return ()
    return tuple(tuple(mode for mode in state if mode!=(0,0))
                 for state in occupation_basis(p+q,p,q))


def orbit_ratio(source,target,n):
    """|orbit_source|/|orbit_target|, with symbolic ground occupations."""
    a,b=Counter(source),Counter(target)
    factor=s.Rational(prod(factorial(c)for c in b.values()),
                      prod(factorial(c)for c in a.values()))
    change=len(source)-len(target)
    if change>=0:
        for j in range(change):factor*=n-len(source)+1+j
    else:
        for j in range(-change):factor/=n-len(source)-j
    return factor


def stable_hamiltonian(delta,p,q,n=None):
    n=s.Symbol('N',integer=True,positive=True) if n is None else s.sympify(n)
    basis=excited_basis(p,q)
    index={state:i for i,state in enumerate(basis)}
    result=s.zeros(len(basis))
    ground=(0,0)
    for col,source in enumerate(basis):
        occ=Counter(source)
        species=[ground]+sorted(occ)
        counts={**occ,ground:n-len(source)}
        for i,alpha in enumerate(species):
            for beta in species[i:]:
                pairs=(counts[alpha]*counts[beta] if alpha!=beta else
                       counts[alpha]*(counts[alpha]-1)*s.Rational(1,2))
                if pairs == 0:
                    continue
                rest=list(source)
                if alpha!=ground:rest.remove(alpha)
                if beta!=ground:rest.remove(beta)
                for gamma,eta,value in pair_action(delta,alpha,beta):
                    target=tuple(sorted(rest+[mode for mode in (gamma,eta) if mode!=ground]))
                    result[index[target],col]+=pairs*qsym(value)
    result=result.applyfunc(s.cancel)
    ground_energy=n*(n-1)/2*qsym(einstein_pair(delta,0,0))
    affine=(result-ground_energy*s.eye(result.rows)).applyfunc(s.cancel)
    if isinstance(n,s.Symbol):
        for entry in affine:
            if s.Poly(entry,n).degree()>1:
                raise ArithmeticError('Stable orbit Hamiltonian is not affine after ground subtraction.')
    return result


def stable_lowering(p,q,chirality,n=None):
    n=s.Symbol('N',integer=True,positive=True) if n is None else s.sympify(n)
    basis=excited_basis(p,q)
    target=excited_basis(p-int(chirality==0),q-int(chirality==1))
    index={state:i for i,state in enumerate(target)}
    result=s.zeros(len(target),len(basis))
    for col,source in enumerate(basis):
        for alpha,count in Counter(source).items():
            power=alpha[chirality]
            if not power:continue
            changed=list(source);changed.remove(alpha)
            mode=list(alpha);mode[chirality]-=1;mode=tuple(mode)
            if mode!=(0,0):changed.append(mode)
            changed=tuple(sorted(changed))
            result[index[changed],col]+=count*power
    return result.applyfunc(s.cancel)


def stable_primary_basis(p,q,n=None):
    n=s.Symbol('N',integer=True,positive=True) if n is None else s.sympify(n)
    lower=stable_lowering(p,q,0,n).col_join(stable_lowering(p,q,1,n))
    columns=lower.nullspace()
    basis=s.Matrix.hstack(*columns) if columns else s.zeros(len(excited_basis(p,q)),0)
    expected=primary_multiplicity(max(1,p+q),p,q)
    if basis.cols!=expected:
        raise ArithmeticError('Stable primary dimension does not match exact Molien count.')
    return basis.applyfunc(s.cancel)


@lru_cache(None)
def centered_moment(p,q):
    """A polynomial in formal creation variables, returned as occupation terms.

    a00=1, D_L a_pq=p*a_(p-1,q), D_R a_pq=q*a_(p,q-1).
    The centered generators c_pq of total degree >=2 freely generate the
    stable primary algebra. These products are formal creation products,
    not pointwise products of N-variable averaged polynomial wavefunctions.
    """
    result=defaultdict(int)
    for i in range(p+1):
        for j in range(q+1):
            state=([(1,0)]*(p-i)+[(0,1)]*(q-j)+
                   ([(i,j)] if (i,j)!=(0,0) else []))
            result[tuple(sorted(state))]+=comb(p,i)*comb(q,j)*(-1)**(p+q-i-j)
    return tuple((state,value)for state,value in result.items()if value)


def centered_primary_basis(p,q):
    """Direct N-independent primary basis; no matrix nullspace is computed.

    Columns are products of centered creation moments indexed by excited
    multisets with no (1,0) or (0,1), ordered as in excited_basis.
    """
    full=excited_basis(p,q)
    index={state:i for i,state in enumerate(full)}
    labels=[state for state in full if (1,0)not in state and (0,1)not in state]
    result=s.zeros(len(full),len(labels))
    for column,label in enumerate(labels):
        poly={():1}
        for mode in label:
            product_poly=defaultdict(int)
            for left,lc in poly.items():
                for right,rc in centered_moment(*mode):
                    product_poly[tuple(sorted(left+right))]+=lc*rc
            poly={state:value for state,value in product_poly.items()if value}
        for state,value in poly.items():
            result[index[state],column]=value
    return result


def stable_primary_hamiltonian(delta,p,q,n=None):
    n=s.Symbol('N',integer=True,positive=True) if n is None else s.sympify(n)
    full=stable_hamiltonian(delta,p,q,n)
    basis=stable_primary_basis(p,q,n)
    if basis.cols:
        rows=list(basis.T.rref()[1])
        h=(basis[rows,:].inv()*(full*basis)[rows,:]).applyfunc(s.cancel)
        if any(s.cancel(t)!=0 for t in full*basis-basis*h):
            raise ArithmeticError('Stable primary Hamiltonian is not invariant.')
    else:h=s.zeros(0)
    return h,basis,full


@lru_cache(None)
def excitation_slope(delta,p,q):
    """Exact diagonal slope of one excited mode in the stable-N pencil.

    This is a finite sum of directly derived two-particle overlaps. It describes
    the asymptotics of the perturbative coefficient g, not a uniform large-N
    expansion of the interacting theory.
    """
    if p == q == 0:
        return s.S.Zero
    def weight(total,k):
        return (qsym(comb(total,k))*qsym(rising(delta,total)) /
                (qsym(rising(2*delta+k-1,k))*qsym(rising(2*delta+2*k,total-k))))
    a=qsym(einstein_pair(delta,0,0))
    result=sum(2*weight(p,k)*weight(q,l)*(qsym(einstein_pair(delta,k,l))-a)
               for k in range(p+1)for l in range(q+1)if (k+l)%2==0)
    return s.factor(result)


def primary_slopes(delta,p,q):
    """All stable-primary eigenvalues of A, with multiplicity, exactly.

    Occupations of (1,0),(0,1) account for global descendants and are removed.
    No matrix construction is used by this function.
    """
    result=[]
    for state in excited_basis(p,q):
        if (1,0) in state or (0,1) in state:
            continue
        result.append((state,s.factor(sum(excitation_slope(delta,*mode)for mode in state))))
    return result


def stable_spectrum(delta,p,q,include_full=True):
    n=s.Symbol('N',integer=True,positive=True)
    h,b,full=stable_primary_hamiltonian(delta,p,q,n)
    g=s.Symbol('g')
    ground=n*(n-1)/2*qsym(einstein_pair(delta,0,0))
    affine=(full-ground*s.eye(full.rows)).applyfunc(s.cancel)
    a=affine.diff(n).applyfunc(s.factor)
    c=affine.subs(n,0).applyfunc(s.factor)
    assert affine==a*n+c or all(s.cancel(t)==0 for t in affine-a*n-c)
    primary_shift=(h-ground*s.eye(h.rows)).applyfunc(s.cancel)
    primary_a=primary_shift.diff(n).applyfunc(s.factor)
    primary_b=primary_shift.subs(n,0).applyfunc(s.factor)
    if any(s.cancel(t)!=0 for t in primary_shift-n*primary_a-primary_b):
        raise ArithmeticError('The N-independent primary basis lost affine dependence.')
    lam=s.Symbol('lambda')
    shifted_polynomial=s.Poly(primary_shift.charpoly(lam).as_expr(),lam)
    result={'P':p,'Q':q,'Delta':str(delta),'domain':f'integer N >= {max(1,p+q)}, physical Delta>1',
            'energy_convention':'E=N*Delta+P+Q+G*g+o(G); no uniform large-N weak-coupling expansion asserted',
            'stable_orbit_dimension':full.rows,'stable_primary_dimension':h.rows,
            'basis_nonzero_modes':[[list(mode)for mode in state]for state in excited_basis(p,q)],
            'primary_basis_columns':[[str(s.factor(t))for t in b.col(i)]for i in range(b.cols)],
            'primary_matrix':[[str(s.factor(t))for t in h.row(i)]for i in range(h.rows)],
            'primary_characteristic_polynomial':str(s.factor(h.charpoly(g).as_expr())),
            'primary_A':[[str(t)for t in primary_a.row(i)]for i in range(primary_a.rows)],
            'primary_B':[[str(t)for t in primary_b.row(i)]for i in range(primary_b.rows)],
            'shifted_variable':'lambda=g-binomial(N,2)*g00',
            'shifted_characteristic_coefficients_descending':[str(s.factor(t))for t in shifted_polynomial.all_coeffs()],
            'exact_primary_slopes':[{'modes':[list(mode)for mode in state],
                                     'slope':str(value)}
                                    for state,value in primary_slopes(delta,p,q)],
            'ground_pair_term':str(s.factor(ground)),
            'basis_convention':'Each distinct-orbit monomial sum is divided by its orbit size.',
            'stable_affine_statement':'W=binomial(N,2)*g00*I+N*A+B; the simultaneous-lowering primary basis is N-independent.',
            'specialization_rule':'Specialize N to an integer in the stated stable range and Delta>1 before computing numerical spectra. Remove removable rational factors, then recompute square-free factors, gcds, image pivots and spectral projectors at eigenvalue coincidences or pivot zeros; generic multiplicities and projectors need not commute with specialization.',
            'method':'exact occupation factors and factorial ratios; no polynomial fitting'}
    if include_full:
        result['A']=[[str(t)for t in a.row(i)]for i in range(a.rows)]
        result['B']=[[str(t)for t in c.row(i)]for i in range(c.rows)]
    return result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta',default='2',help='rational >1 or symbolic')
    parser.add_argument('--p',type=int,required=True)
    parser.add_argument('--q',type=int,required=True)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    delta=s.Symbol('Delta',positive=True) if args.delta=='symbolic' else F(args.delta)
    if min(args.p,args.q)<0 or (args.delta!='symbolic' and delta<=1):
        parser.error('Require P,Q>=0 and physical Delta>1.')
    result=stable_spectrum(delta,args.p,args.q)
    text=json.dumps(result,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding='utf-8')
    print(text,end='')


if __name__=='__main__':
    main()
