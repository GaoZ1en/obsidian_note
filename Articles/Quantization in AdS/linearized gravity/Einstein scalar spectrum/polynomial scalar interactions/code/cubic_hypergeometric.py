#!/usr/bin/env sage -python
"""Exact cubic order-lambda3^2 finite matrices, including non-even rational Delta.

Coefficients strip lambda3^2/(8*pi). Non-even Delta gives finite combinations
of absolutely convergent 5F4(1), not radial-cutoff matrices. Even Delta uses
Jacobi termination and the rational engine. No quartic finite deformation.
After invariant vacuum subtraction and fixing the one-particle gap this is
the full second-order resonant matrix, in the algebraic B basis.
"""
from collections import Counter
from functools import lru_cache
from itertools import combinations_with_replacement
from sage.all import QQ,PolynomialRing,prod
import sympy as sp
from contact_blocks import jacobi_x,weight,factorial,energy_basis,gram_diagonal
from cubic_effective import signed_pairs,spin,omega,stripped_quartic_coefficient


def symq(x):
    x=QQ(x)
    return sp.Rational(int(x.numerator()),int(x.denominator()))


@lru_cache(None)
def source_terms(d,labels,ell):
    """F(x)=J_i J_j (1-x)^K, relative to Jacobi weight (1-x)^ell."""
    K=(sum(abs(spin(I)) for I in labels)-ell)//2
    if K<0 or 2*K!=sum(abs(spin(I)) for I in labels)-ell:
        raise ValueError('angular-forbidden source')
    R=PolynomialRing(QQ,'x');x=R.gen()
    F=(1-x)**K*prod(jacobi_x(d,min(I),abs(spin(I))) for I in labels)
    return tuple((h,coef) for h,coef in enumerate(F.list()) if coef)


@lru_cache(None)
def radial_hyper_sum(d,left,right,ell,grade):
    """Exact sum d_n^2 R_n[left] R_n[right]/(grade-d-ell-2n).

    For non-even Delta all lower hypergeometric parameters are away from their
    forbidden nonpositive integers. With z=(d+ell-grade)/2, each (h,k) term has
    excess 4*d-2+2*h+2*k>0. Angular conservation is encoded by source_terms.
    """
    z=(d+ell-grade)/2
    if z.denominator()==1 and z<=0:
        raise ValueError('use finite, Q-projected even-Delta engine at resonance')
    pieces=[]
    for h,ch in source_terms(d,left,ell):
        a=3*d/2-2+h
        ba=factorial(ell)/prod(a+1+i for i in range(ell+1))
        for k,ck in source_terms(d,right,ell):
            b=3*d/2-2+k
            bb=factorial(ell)/prod(b+1+i for i in range(ell+1))
            top=tuple(map(symq,(ell+1,d+ell,d-1-a,d-1-b,z)))
            bottom=tuple(map(symq,(d,a+ell+2,b+ell+2,z+1)))
            pieces.append(symq(-ch*ck*weight(d,ell)*ba*bb/(2*z))*sp.hyper(top,bottom,1))
    return sp.Add(*pieces)


def reduce_rational_polygammas(expr):
    """Explicit recurrence psi_m(z+1)=psi_m(z)+(-1)^m*m!/z^(m+1).

    Reduce rational arguments to (0,1]; no numerical zero tests or coercions.
    Quarter-argument trigammas use their exact Catalan identities.
    """
    rules={}
    for atom in expr.atoms(sp.polygamma):
        order,arg=atom.args
        if not (order.is_Integer and arg.is_Rational):continue
        m=int(order);shift=int(sp.floor(arg));base=arg-shift
        if base==0:base=sp.S.One;shift-=1
        sign=(-1)**m*sp.factorial(m)
        if shift>=0:correction=sign*sum((base+j)**(-m-1) for j in range(shift))
        else:correction=-sign*sum((base+j)**(-m-1) for j in range(shift,0))
        value=sp.polygamma(m,base)
        if m==1 and base==sp.Rational(1,4):value=sp.pi**2+8*sp.Catalan
        if m==1 and base==sp.Rational(3,4):value=sp.pi**2-8*sp.Catalan
        rules[atom]=value+correction
    return sp.simplify(sp.expand(expr.xreplace(rules)))


def rational_series_sum(expr,n):
    """Sum a decaying rational function by partial fractions, without divergent sums.

    For simple poles the residues must sum to zero. Higher poles use the
    convergent polygamma identity. All poles are linear over QQ here.
    """
    pieces=sp.Add.make_args(sp.apart(sp.cancel(expr),n));answer=sp.S.Zero;simple=sp.S.Zero
    for term in pieces:
        num,den=sp.fraction(term)
        coefficient,factors=sp.factor_list(den,n)
        if len(factors)!=1 or sp.Poly(num,n).degree()!=0:
            raise ArithmeticError('expected proper rational partial fractions with linear poles')
        base,power=factors[0];poly=sp.Poly(base,n)
        if poly.degree()!=1:raise ArithmeticError('nonlinear pole')
        slope=poly.nth(1);beta=poly.nth(0)/slope
        residue=num/(coefficient*slope**power)
        if beta.is_integer and beta<=0:raise ArithmeticError('unprojected pole on summation contour')
        if power==1:
            simple+=residue;answer-=residue*sp.digamma(beta)
        else:
            answer+=residue*(-1)**power*sp.polygamma(power-1,beta)/sp.factorial(power-1)
    if sp.cancel(simple)!=0:raise ArithmeticError('uncancelled logarithmic tail')
    return reduce_rational_polygammas(answer)


@lru_cache(None)
def radial_polygamma_sum(d,left,right,ell,grade):
    """Alternative exact finite formula when 2*Delta is integer, Delta not even."""
    if (2*d).denominator()!=1 or (d.denominator()==1 and d.numerator()%2==0):
        raise ValueError('requires non-even half-integral Delta')
    n=sp.Symbol('n',integer=True,nonnegative=True)
    def radial(labels):
        terms=[]
        for k,coef in source_terms(d,labels,ell):
            a=3*d/2-1+k;b=1-d/2-k;length=int(2*d+ell+2*k-1)
            beta=factorial(ell)/prod(a+j for j in range(ell+1))
            r=symq(coef*beta*prod(b+j for j in range(length))/factorial(ell))
            r*=sp.prod(n+1+j for j in range(ell))/sp.prod(n+symq(b)+j for j in range(length))
            terms.append(r)
        return sp.Add(*terms)
    di2=sp.prod((n+symq(d)+j)/(n+1+j) for j in range(ell))
    summand=di2*radial(left)*radial(right)/(symq(grade-d-ell)-2*n)
    return rational_series_sum(summand,n)


@lru_cache(None)
def exact_quartic_coefficient(d,creators,annihilators,apply_number_selection=True,half_integer_closed=False):
    """Quartic coefficient with external d_I and 1/(8*pi) stripped.

    The all-Delta 1<->3 selection follows from free SO(2,2) intertwining after
    cubic normal-form removal. Set apply_number_selection=False to expose the
    unreduced hypergeometric identities used in independent checks.
    """
    d=QQ(d)
    if len(creators)+len(annihilators)!=4:raise ValueError('four external legs required')
    if sum(omega(d,I) for I in creators)!=sum(omega(d,I) for I in annihilators):return sp.S.Zero
    if sum(map(spin,creators))!=sum(map(spin,annihilators)):return sp.S.Zero
    if apply_number_selection and len(creators)!=2:return sp.S.Zero
    if d.denominator()==1 and d.numerator()%2==0:
        return symq(stripped_quartic_coefficient(d,creators,annihilators))
    pieces=[]
    for A,B in signed_pairs(creators,annihilators):
        left=tuple(sorted(I for (sgn,I),m in A.items() for _ in range(m)))
        right=tuple(sorted(I for (sgn,I),m in B.items() for _ in range(m)))
        ell=abs(sum(sgn*spin(I)*m for (sgn,I),m in A.items()))
        grade=sum(sgn*omega(d,I)*m for (sgn,I),m in A.items())
        norm=prod(factorial(m) for m in A.values())*prod(factorial(m) for m in B.values())
        kernel=radial_polygamma_sum if half_integer_closed else radial_hyper_sum
        pieces.append(kernel(d,left,right,ell,grade)/symq(norm))
    return sp.Add(*pieces)


@lru_cache(None)
def exact_tree_entry(d,bra,ket,half_integer_closed=False):
    d=QQ(d)
    # Proven for every Delta>1; no particle-changing quartic at this order.
    if len(bra)!=len(ket):return sp.S.Zero
    if sum(p+q for p,q in bra)!=sum(p+q for p,q in ket):return sp.S.Zero
    if len(ket)<2:return sp.S.Zero
    ns=len(ket)-2;bc,kc=Counter(bra),Counter(ket);common=bc&kc
    pieces=[]
    for st in combinations_with_replacement(sorted(common),ns):
        spectators=Counter(st)
        if any(m>common[I] for I,m in spectators.items()):continue
        c,a=bc-spectators,kc-spectators
        coeff=exact_quartic_coefficient(d,tuple(sorted(c.elements())),tuple(sorted(a.elements())),True,half_integer_closed)
        factor=prod(weight(d,max(I))**m for I,m in c.items())
        factor*=prod(factorial(kc[I])/factorial(kc[I]-m)/weight(d,min(I))**m for I,m in a.items())
        pieces.append(coeff*symq(factor))
    result=sp.Add(*pieces)
    return sp.simplify(result) if half_integer_closed else result


def exact_cubic_matrix(d,basis,half_integer_closed=False):
    d=QQ(d)
    if d<=1:raise ValueError('standard-fast problem requires Delta>1')
    return sp.ImmutableMatrix(len(basis),len(basis),lambda i,j:exact_tree_entry(d,basis[i],basis[j],half_integer_closed))


if __name__=='__main__':
    import argparse,json
    from pathlib import Path
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--delta',default='3/2');p.add_argument('--energy',default='3')
    p.add_argument('--angular',type=int,default=0);p.add_argument('--digits',type=int,default=30)
    p.add_argument('--half-integer-closed',action='store_true',help='use rational-series/polygamma reduction when 2*Delta is integral')
    p.add_argument('--output',required=True);args=p.parse_args()
    d,E=QQ(args.delta),QQ(args.energy);basis=energy_basis(d,E,args.angular)
    A=exact_cubic_matrix(d,basis,args.half_integer_closed);G=sp.diag(*(symq(g) for g in gram_diagonal(d,basis)))
    residual=(G*A-A.T*G).applyfunc(sp.expand)
    if residual!=sp.zeros(len(basis)):raise ArithmeticError('exact Gram symmetry failure')
    result={'Delta':str(d),'energy':str(E),'angular':args.angular,'scale':'lambda3^2/(8*pi)',
            'prescription':'vacuum zero, invariant physical gap Delta fixed, no added quartic',
            'basis':basis,'Gram':list(map(str,G.diagonal())),
            'exact_matrix':[[str(A[i,j]) for j in range(A.cols)] for i in range(A.rows)],
            'numerical_matrix':[[str(A[i,j].evalf(args.digits)) for j in range(A.cols)] for i in range(A.rows)],
            'exact_Gram_self_adjoint':True,'radial_cutoff':None,
            'entry_representation':('finite polygamma expression; rational at even Delta' if args.half_integer_closed else 'finite rational combination of convergent 5F4(1); rational at even Delta'),
            'numeric_scope':'SymPy numerical evaluation, not a certified interval error bound'}
    out=Path(args.output)
    if out.exists():raise FileExistsError(str(out))
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'dimension':len(basis),'output':str(out),'Gram':True,'radial_cutoff':None}))
