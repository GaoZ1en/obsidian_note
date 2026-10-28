"""Closed all-N primary and exact Casimir-bound multiplicity algorithms.

Only the Python standard library is required.  No Hamiltonian matrices,
permutation enumeration, floating-point arithmetic, or fitted ranks are used.
"""
from collections import Counter
from fractions import Fraction as F
from functools import lru_cache
from math import factorial, comb, prod


@lru_cache(None)
def partitions(n,minimum=1):
    if n==0:
        return ((),)
    return tuple((a,)+tail for a in range(minimum,n+1)
                 for tail in partitions(n-a,a))


@lru_cache(None)
def coin_coefficients(coins,degree):
    if degree<0:
        return ()
    out=[0]*(degree+1);out[0]=1
    for c in coins:
        for j in range(c,degree+1):
            out[j]+=out[j-c]
    return tuple(out)


@lru_cache(None)
def coin_coefficient(coins,degree):
    """Coefficient of prod(1-x^c)^(-1) in O(D^2 log degree) operations.

    D=sum(coins). Binary polynomial powering uses the exact linear recurrence;
    no array extending to the requested excitation level is allocated.
    """
    if degree<0:
        return 0
    if not coins:
        return int(degree==0)
    order=sum(coins)
    if degree<max(64,order):
        return coin_coefficients(coins,degree)[degree]
    denominator=[1]
    for c in coins:
        old=denominator
        denominator=old+[0]*c
        for j,v in enumerate(old):
            denominator[j+c]-=v
    initial=coin_coefficients(coins,order-1)
    def multiply(a,b):
        out=[0]*(2*order-1)
        for i,u in enumerate(a):
            if u:
                for j,v in enumerate(b):
                    if v:
                        out[i+j]+=u*v
        for k in range(2*order-2,order-1,-1):
            value=out[k]
            if value:
                for j in range(1,order+1):
                    out[k-j]-=value*denominator[j]
        return out[:order]
    answer=[1]+[0]*(order-1)
    power=([0,1]+[0]*(order-2)) if order>1 else [-denominator[1]]
    exponent=degree
    while exponent:
        if exponent&1:
            answer=multiply(answer,power)
        exponent//=2
        if exponent:
            power=multiply(power,power)
    return sum(a*b for a,b in zip(answer,initial))


def primary_dimension(n,p,q):
    if min(p,q)<0:
        return 0
    if n<2:
        return int(p==q==0)
    # At most P+Q particles can carry nonzero excitations. Ground spectators
    # no longer change the orbit index set after this stable range begins.
    n=min(n,max(1,p+q))
    value=F(0)
    for lam in partitions(n):
        counts=Counter(lam)
        z=prod(a**m*factorial(m) for a,m in counts.items())
        left=coin_coefficient(lam,p)-coin_coefficient(lam,p-1)
        right=coin_coefficient(lam,q)-coin_coefficient(lam,q-1)
        value+=F(left*right,z)
    assert value.denominator==1 and value>=0
    return int(value)


def level_dimension(n,p,q):
    """Complete symmetric Fock dimension, including global descendants."""
    if min(n,p,q)<0:
        return 0
    if n==0:
        return int(p==q==0)
    n=min(n,max(1,p+q))
    value=F(0)
    for lam in partitions(n):
        counts=Counter(lam)
        z=prod(a**m*factorial(m) for a,m in counts.items())
        value+=F(coin_coefficient(lam,p)*coin_coefficient(lam,q),z)
    assert value.denominator==1
    return int(value)


def auxiliary_dimension(n,p,q):
    """Pair-spectator image-generator count, before Gram dependencies."""
    if p<q:
        p,q=q,p
    if n<3:
        return primary_dimension(n,p,q)
    return sum(level_dimension(n-2,p-k,q-ell)
               for ell in range(q+1)
               for k in range(min(p,ell+2)+1) if (k+ell)%2==0)


@lru_cache(None)
def frame_degree_polynomial(n,q):
    """Coefficients of h_q(t,t^2,...,t^(N-1))."""
    if n<2:
        return (1,) if q==0 else ()
    maximum=(n-1)*q
    dp=[[0]*(maximum+1) for _ in range(q+1)];dp[0][0]=1
    for a in range(1,n):
        for number in range(1,q+1):
            for degree in range(a,maximum+1):
                dp[number][degree]+=dp[number-1][degree-a]
    assert sum(dp[q])==comb(q+n-2,n-2)
    return tuple(dp[q])


def baseline_multiplicity(n,p,q):
    if n<2 or min(p,q)<0:
        return 0
    if p<q:
        p,q=q,p
    degree=p-2*n*(n-1)
    if degree<q:
        return 0
    frame=frame_degree_polynomial(n,q)
    return sum(v*coin_coefficient(tuple(range(2,n+1)),degree-j)
               for j,v in enumerate(frame) if v and j<=degree)


def dimensions(n,p,q):
    d=primary_dimension(n,p,q)
    k=baseline_multiplicity(n,p,q)
    assert 0<=k<=d
    return {'primary_dimension':d,'baseline_multiplicity':k,'positive_rank':d-k}


def transposition_character(n,q):
    # Sym^q of the standard representation: eigenvalues +1^(N-2), -1.
    if n==2:
        return (-1)**q
    return sum((-1)**j*comb(q-j+n-3,n-3) for j in range(q+1))


def positive_rank_leading_coefficient(n,q):
    """Unaveraged coefficient of P^(N-3), fixed N>=3,Q.

    N=3: the rank equals this integer for P>=2Q+8.
    N>=4: remainder O(P^(N-4)); see general/ASYMPTOTIC_RANK.md.
    """
    if n<3:
        raise ValueError('Asymptotic statement requires N>=3.')
    dimension=comb(q+n-2,n-2);pairs=comb(n,2)
    trace=transposition_character(n,q)
    return F(dimension*(7*pairs+n*q)+pairs*trace,
             2*factorial(n)*factorial(n-3))


if __name__=='__main__':
    import argparse,json
    a=argparse.ArgumentParser(description=__doc__)
    a.add_argument('--n',type=int,required=True);a.add_argument('--p',type=int,required=True)
    a.add_argument('--q',type=int,required=True);v=a.parse_args()
    print(json.dumps({'N':v.n,'P':v.p,'Q':v.q,**dimensions(v.n,v.p,v.q)},indent=2))
