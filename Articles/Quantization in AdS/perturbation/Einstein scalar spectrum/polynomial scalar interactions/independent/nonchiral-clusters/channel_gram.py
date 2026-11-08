#!/usr/bin/env sage -python
"""Independent nonchiral N=k+1 contact-channel construction.

No contact/Fock implementation is imported.  Uses three-module SU(1,1)
recoupling with exact polynomial inner products.  Output eigenvalue unit:
    lambda_(2k) / [2*k!*(2*pi)^(k-1)].
Thus the normalized k-body scalar-channel eigenvalue is d_k(a)/(k*Delta+2*a-1).

The (min(P,Q)+1)-square rational matrix is similar to the positive channel
Gram, has precisely the nonzero N=k+1 primary eigenvalues, and can have
redundant zero eigenvalues.  It is not the entire primary matrix and its zero
multiplicity is not the physical kernel dimension.
"""
from functools import lru_cache
from sage.all import QQ, ZZ, PolynomialRing, matrix, prod, binomial, factorial


def rising(a,n):
    return prod(a+j for j in range(int(n)))


def two_primary_norm(alpha,beta,r):
    """Norm of (x-y)^r, with ||x^p||^2=p!/(alpha)_p."""
    r=int(r)
    return factorial(r)*rising(alpha+beta+r-1,r)/(rising(alpha,r)*rising(beta,r))


def chiral_multiplicity(k,a):
    k,a=int(k),int(a)
    if k==1:
        return ZZ(a==0)
    return binomial(a+k-2,k-2)


@lru_cache(None)
def coupled_polynomial(alpha,delta,T,r):
    """((core,single),single) primary, core weight alpha/2, others delta/2.

    Inner cluster relative degree r; total relative degree T. Core-primary
    multiplicity indices are untouched. No square roots enter.
    """
    T,r=int(T),int(r)
    ring=alpha.parent()
    R=PolynomialRing(ring,3,'x'); x,y,z=R.gens()
    f=(x-y)**r
    A=alpha+delta+2*r
    answer=R.zero()
    for s in range(T-r+1):
        answer+=(-1)**(T-r-s)*binomial(T-r,s)*z**(T-r-s)*f/rising(A,s)
        f=x*x*f.derivative(x)+alpha*x*f+y*y*f.derivative(y)+delta*y*f
    return answer


def monomial_inner(f,g,alpha,delta):
    gd=g.dict()
    return sum(coef*gd.get(e,0)*prod(factorial(ei)/rising(w,ei)
                    for ei,w in zip(e,(alpha,delta,delta)))
               for e,coef in f.dict().items())


@lru_cache(None)
def recoupling_overlap(delta,k,P,c,a,b):
    """Unnormalized finite Racah overlap; swaps the two single modules."""
    alpha=(k-1)*delta+2*c
    fa=coupled_polynomial(alpha,delta,P-c,a-c)
    fb=coupled_polynomial(alpha,delta,P-c,b-c)
    x,y,z=fa.parent().gens()
    return monomial_inner(fa,fb.subs({y:z,z:y}),alpha,delta)


def channel_data(delta,k,P,Q):
    """Return rational data M,C,n,h. M has all nonzero physical eigenvalues.

    C_ab=<U_a,tau U_b> is the crossed unsymmetrized channel overlap.
    <U_a,U_b>=delta_ab*n_a, n_a=d_k(a)*h_a.
    Symmetrized Gram S=(diag(n)+k*C)/(k+1).
    M=(diag(n)+k*C)*diag(1/((k*delta+2*a-1)*h_a)).
    """
    k,P,Q=int(k),int(P),int(Q)
    if k<2 or min(P,Q)<0:
        raise ValueError('requires k>=2 and P,Q>=0')
    m=min(P,Q); ring=delta.parent()
    h=[two_primary_norm(k*delta+2*a,delta,P-a)
       *two_primary_norm(k*delta+2*a,delta,Q-a) for a in range(m+1)]
    n=[chiral_multiplicity(k,a)*h[a] for a in range(m+1)]
    def entry(a,b):
        return sum(chiral_multiplicity(k-1,c)
            *recoupling_overlap(delta,k,P,c,a,b)
            *recoupling_overlap(delta,k,Q,c,a,b)
            /(two_primary_norm((k-1)*delta+2*c,delta,a-c)
              *two_primary_norm((k-1)*delta+2*c,delta,b-c))
            for c in range(min(a,b)+1))
    C=matrix(ring,m+1,m+1,entry)
    Sscaled=matrix.diagonal(ring,n)+k*C
    D=matrix.diagonal(ring,[1/((k*delta+2*a-1)*h[a]) for a in range(m+1)])
    return {'matrix':Sscaled*D,'crossed':C,'norms':n,'h':h,
            'symmetrized_gram':Sscaled/(k+1),'coefficient':D}


def exact_rank(k,P,Q):
    """All-Delta>1 rank theorem for k>=3; see independent proof."""
    if k<3:
        raise ValueError('rank theorem here is only for k>=3')
    m=min(P,Q); J=abs(P-Q)
    if P==Q==0:
        return 1
    return m if J<=1 else m+1


if __name__=='__main__':
    import argparse,json
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--delta',default='2'); p.add_argument('--k',type=int,default=3)
    p.add_argument('--P',type=int,default=2); p.add_argument('--Q',type=int,default=2)
    args=p.parse_args()
    M=channel_data(QQ(args.delta),args.k,args.P,args.Q)['matrix']
    print(json.dumps({'Delta':args.delta,'k':args.k,'P':args.P,'Q':args.Q,
          'scale':'lambda_(2k)/(2*k!*(2*pi)^(k-1))',
          'matrix':[[str(t) for t in row] for row in M.rows()],
          'rank':int(M.rank()),'charpoly':str(M.charpoly('z').factor())},indent=2))
