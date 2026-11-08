#!/usr/bin/env python3
"""Generate the complete arbitrary-N Casimir-bound primary eigenspace.

The generator uses the free logarithmic frame of the braid arrangement and
the labelled-primary Bargmann reproducing kernel. It needs no many-body
Hamiltonian matrix. See LOGARITHMIC_KERNEL_THEOREM.md for the proof.

Coordinates are x_i=z_i-z_N, y_i=w_i-w_N, i=1,...,N-1. Output factors the
universal V_N(z)^4 out of the polynomial so even high-spin states remain
readable. The code accepts exact rational Delta>1.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
from math import factorial, comb, prod
from pathlib import Path
import json
import sympy as s

from fock_exact import mono_norm, qsym, baseline, chiral_pair_vectors


@lru_cache(None)
def compositions(total, parts):
    if parts == 0:
        return ((),) if total == 0 else ()
    if parts == 1:
        return ((total,),)
    return tuple((a,)+tail for a in range(total+1)
                 for tail in compositions(total-a,parts-1))


def kernel_labels(n,p,q):
    """All free monomial labels (e_2,...,e_N; theta_1,...,theta_{N-1})."""
    if n < 2:
        return [((),())] if p == q == 0 else []
    remaining=p-2*n*(n-1)
    if remaining < q:
        return []
    out=[]
    def sym_labels(degree,r=2,prefix=()):
        if r == n+1:
            if degree == 0:
                yield prefix
            return
        for a in range(degree//r+1):
            yield from sym_labels(degree-r*a,r+1,prefix+(a,))
    for m in compositions(q,n-1):
        deg=remaining-sum((a+1)*m[a] for a in range(n-1))
        if deg >= 0:
            out.extend((a,m) for a in sym_labels(deg))
    return out


def kernel_count(n,p,q):
    return len(kernel_labels(n,p,q))


def labelled_polynomial(alpha):
    """Dictionary for product_i(z_i-z_N)^alpha_i in N labelled coordinates."""
    total=sum(alpha)
    out={}
    for powers in product(*(range(a+1) for a in alpha)):
        coefficient=prod(comb(a,b) for a,b in zip(alpha,powers))*(-1)**(total-sum(powers))
        out[powers+(total-sum(powers),)]=coefficient
    return out


@lru_cache(None)
def primary_gram(delta,n,q):
    delta=F(delta)
    indices=compositions(q,n-1)
    polynomials=[labelled_polynomial(alpha) for alpha in indices]
    weights={}
    for poly in polynomials:
        for powers in poly:
            weights[powers]=prod((mono_norm(delta,a) for a in powers),start=F(1))
    gram=s.zeros(len(indices))
    for a,fa in enumerate(polynomials):
        for b in range(a+1):
            fb=polynomials[b]
            value=sum((F(coef)*fb.get(powers,0)*weights[powers]
                       for powers,coef in fa.items()),start=F(0))
            gram[a,b]=gram[b,a]=qsym(value)
    if gram.det() <= 0:
        raise ArithmeticError('Labelled-primary Gram determinant is not positive.')
    return gram


def coordinate_data(n):
    x=s.symbols(f'x1:{n}')
    y=s.symbols(f'y1:{n}')
    eta=s.symbols(f'eta1:{n}')
    mean=sum(x)/n
    centered=tuple(a-mean for a in x)+(-mean,)
    elementary={r:s.expand(sum(prod(centered[i] for i in subset)
                             for subset in combinations(range(n),r)))
                for r in range(2,n+1)}
    # Theta_a acts on x_j=z_j-z_N by Z_j^a-Z_N^a.
    theta={a:s.expand(sum((centered[j]**a-centered[-1]**a)*eta[j]
                           for j in range(n-1))) for a in range(1,n)}
    vandermonde=s.prod(x)*s.prod(x[i]-x[j] for i in range(n-1) for j in range(i+1,n-1))
    return x,y,eta,centered,elementary,theta,vandermonde


def reproducing_kernel(delta,n,q):
    x,y,eta,centered,e,theta,v=coordinate_data(n)
    indices=compositions(q,n-1)
    inv=primary_gram(F(delta),n,q).inv()
    fx=[prod(t**a for t,a in zip(x,alpha)) for alpha in indices]
    fy=[prod(t**a for t,a in zip(y,alpha)) for alpha in indices]
    return s.expand(sum(fx[a]*inv[a,b]*fy[b]
                        for a in range(len(indices)) for b in range(len(indices))))


def generate_quotient(delta,n,p,q,label):
    """Return F in Psi=V^4 F, as an exact polynomial in x,y coordinates."""
    if n < 2:
        return s.S.One if p == q == 0 else s.S.Zero
    a,m=label
    if label not in kernel_labels(n,p,q):
        raise ValueError('The requested label does not have the target bidegree.')
    x,y,eta,centered,e,theta,v=coordinate_data(n)
    c=s.Poly(s.expand(prod(e[r]**a[r-2] for r in range(2,n+1))
                     *prod(theta[b]**m[b-1] for b in range(1,n))),*eta)
    indices=compositions(q,n-1)
    inv=primary_gram(F(delta),n,q).inv()
    coefficients=[c.coeff_monomial(alpha)*prod(factorial(t) for t in alpha)
                  for alpha in indices]
    right=[prod(t**power for t,power in zip(y,beta)) for beta in indices]
    result=s.expand(sum(coefficients[i]*inv[i,j]*right[j]
                        for i in range(len(indices)) for j in range(len(indices))))
    if not result:
        raise ArithmeticError('A free logarithmic symbol generated a zero state.')
    return result


def verify_pair_flags(delta,n,q,quotient):
    """Independently apply every right SU(1,1) pair projector to F.

    Verify P_l^right F is divisible by (z_i-z_j)^l, which is exactly the
    pairwise Casimir-bound condition after restoring V^4. No logarithmic
    frame property is used in this check.
    """
    delta=F(delta)
    x,y,eta,centered,e,theta,v=coordinate_data(n)
    z=s.symbols(f'z0:{n}');w=s.symbols(f'w0:{n}')
    full=s.Poly(quotient.subs({**{x[i]:z[i]-z[-1] for i in range(n-1)},
                              **{y[i]:w[i]-w[-1] for i in range(n-1)}}).expand(),*z,*w)
    terms=full.as_dict()
    checked=0
    for i,j in combinations(range(n),2):
        for ell in range(q+1):
            projected={}
            for powers,coefficient in terms.items():
                a,b=powers[n+i],powers[n+j]
                total=a+b
                if total < ell:
                    continue
                vector,dual=chiral_pair_vectors(delta,total)[ell]
                scale=coefficient*qsym(dual[a])
                for newa,value in enumerate(vector):
                    if not value:
                        continue
                    changed=list(powers);changed[n+i]=newa;changed[n+j]=total-newa
                    changed=tuple(changed)
                    projected[changed]=projected.get(changed,s.S.Zero)+scale*qsym(value)
            expression=s.expand(sum(c*prod(t**a for t,a in zip(z+w,powers))
                                    for powers,c in projected.items()))
            for order in range(ell):
                if s.expand(s.diff(expression,z[i],order).subs(z[i],z[j])) != 0:
                    raise ArithmeticError(f'Pair {i,j}, right channel {ell}, left jet {order} failed.')
            checked+=1
    # Translation invariance is already manifest in x,y; check simultaneous
    # permutation generators independently in the N-variable expression.
    expression=full.as_expr()
    for i in range(n-1):
        permuted=expression.xreplace({z[i]:z[i+1],z[i+1]:z[i],w[i]:w[i+1],w[i+1]:w[i]})
        if s.expand(permuted-expression) != 0:
            raise ArithmeticError('Diagonal Bose symmetry failed.')
    return {'pair_channels_checked':checked,'all_left_jet_residuals':'exact zero',
            'Bose_generators_checked':n-1,'separate_translations':'manifest in difference coordinates'}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta',default='2')
    parser.add_argument('--n',type=int,required=True)
    parser.add_argument('--p',type=int,required=True)
    parser.add_argument('--q',type=int,required=True)
    parser.add_argument('--verify',action='store_true')
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    delta=F(args.delta)
    if delta<=1 or args.n<2 or min(args.p,args.q)<0:
        parser.error('Require N>=2, Delta>1, and nonnegative P,Q.')
    labels=kernel_labels(args.n,args.p,args.q)
    states=[]
    for label in labels:
        quotient=generate_quotient(delta,args.n,args.p,args.q,label)
        item={'elementary_powers':label[0],'logarithmic_symbol_powers':label[1],
              'quotient_F':str(quotient)}
        if args.verify:
            item['verification']=verify_pair_flags(delta,args.n,args.q,quotient)
        states.append(item)
    result={'N':args.n,'P':args.p,'Q':args.q,'Delta':str(delta),
            'multiplicity':len(states),'g':str(baseline(delta,args.n,args.q)),
            'state_convention':'Psi=V_N(z)^4 F(x,y), x_i=z_i-z_N, y_i=w_i-w_N',
            'energy_convention':'E=N*Delta+P+Q+G*g+o(G); higher orders not asserted',
            'states':states}
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding='utf-8')
    print(text,end='')


if __name__=='__main__':
    main()
