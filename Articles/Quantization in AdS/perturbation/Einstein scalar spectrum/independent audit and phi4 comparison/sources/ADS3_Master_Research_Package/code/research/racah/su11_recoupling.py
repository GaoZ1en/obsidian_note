"""Positive-discrete su(1,1) F moves and the four-leaf 9j exchange.

All old research inputs remain read-only.  The canonical binary primary is
C_m(A,B)=sum_r (-1)^r binom(m,r) R_A^r A R_B^(m-r) B /
                    [(2h_A)_r(2h_B)_(m-r)].
F_{u,v}(s1,s2,s3;M) is the orthonormal overlap of ((12)u,3) and
(1,(23)v).  Both endpoint rows are positive in this convention.

The exact routines use only finite products and terminating 4F3 sums.  The
numerical routine constructs the SAME orthogonal transform from its Jacobi
matrix, with known eigenvalues, avoiding unstable high-degree 4F3 evaluation.
"""
from __future__ import annotations

from fractions import Fraction as F
from functools import lru_cache
from math import comb, factorial, isqrt


@lru_cache(None)
def poch(x, n):
    x = F(x)
    out = F(1)
    for j in range(n):
        out *= x+j
    return out


@lru_cache(None)
def omega(n, c1, c2, c3, M):
    """The normalization Omega in Crampe et al. (2024), Eq. (2.3)."""
    c1,c2,c3 = map(F,(c1,c2,c3))
    if not 0 <= n <= M:
        return F(0)
    return (comb(M,n)*(2*n+c2+c3+1)*poch(c2+1,n)
            *poch(M+2+c1+c2+c3,n)*poch(c1+1,M-n)
            /(poch(c3+1,n)*poch(c2+c3+n+1,M+1)))


@lru_cache(None)
def racah4(n, x, c1, c2, c3, M):
    c1,c2,c3 = map(F,(c1,c2,c3))
    term=out=F(1)
    for j in range(min(n,x)):
        term *= ((-n+j)*(n+c2+c3+1+j)*(-x+j)*(x+c1+c2+1+j)
                 / ((c2+1+j)*(M+2+c1+c2+c3+j)*(-M+j)*(j+1)))
        out += term
    return out


@lru_cache(None)
def f_move_exact(s1,s2,s3,M,u,v):
    """Return (r,q): F_{u,v}=r*sqrt(q), with r,q rational, q>0."""
    if not (0 <= u <= M and 0 <= v <= M):
        return F(0),F(1)
    c1,c2,c3=(2*F(s)-1 for s in (s1,s2,s3))
    return (racah4(v,u,c1,c2,c3,M),
            omega(u,c3,c2,c1,M)*omega(v,c1,c2,c3,M))


def rational_sqrt(x):
    x=F(x)
    a,b=isqrt(x.numerator),isqrt(x.denominator)
    if a*a!=x.numerator or b*b!=x.denominator:
        raise ArithmeticError(f'Expected a rational square, got {x}')
    return F(a,b)


@lru_cache(None)
def pair_norm(delta,k):
    d=F(delta)
    return factorial(k)*poch(2*d+k-1,k)/poch(d,k)**2


@lru_cache(None)
def coupled_norm(delta,P,k,a):
    d=F(delta);m=P-k-a
    return (pair_norm(d,k)*pair_norm(d,a)*factorial(m)
            *poch(4*d+2*k+2*a+m-1,m)
            /(poch(2*d+2*k,m)*poch(2*d+2*a,m)))


@lru_cache(None)
def ninej_unnormalized(delta,P,k,a,r,c):
    """Exact <canonical F_(k,a), U23 canonical F_(r,c)>.

    No polynomial in z is formed.  The three square roots cancel against the
    outside CG norms term by term.  Canonical pair seeds are (z2-z1)^k and
    (z4-z3)^a.  The old polynomial code instead uses the negatives of these
    differences, so its one-chirality overlap has an extra (-1)^(k+a+r+c).
    In simultaneous pair/spectator Bose channels left*right phases cancel.
    """
    d=F(delta);h=d/2
    outer=coupled_norm(d,P,k,a)*coupled_norm(d,P,r,c)
    out=F(0)
    for t in range(max(k,r),P+1):
        f1,q1=f_move_exact(d+k,h,h,P-k,t-k,a)
        fm,qm=f_move_exact(h,h,h,t,k,r)
        f3,q3=f_move_exact(d+r,h,h,P-r,t-r,c)
        out += (-1)**(t+k+r)*f1*fm*f3*rational_sqrt(outer*q1*qm*q3)
    return out


def f_move_numeric(s1,s2,s3,M,diagnostics=False):
    """Stable O(M^2) orthogonal Racah table from a tridiagonal eigensystem.

    The eigenspectrum is known analytically; the numerical diagonalization
    is solely a stable evaluator of the orthogonal polynomials, not of the
    physical Einstein Hamiltonian.  All leaves may have unequal spins >0.
    """
    import numpy as np
    from scipy.linalg import eigh_tridiagonal
    c1,c2,c3=(2*float(s)-1 for s in (s1,s2,s3))
    x=np.arange(M+1,dtype=float)
    B=((x-M)*(x+c2+1)*(x+c1+c2+c3+M+2)*(x+c1+c2+1)
       /((2*x+c1+c2+1)*(2*x+c1+c2+2)))
    D=(x*(x+c1)*(x-c3-M-1)*(x+c1+c2+M+1)
       /((2*x+c1+c2)*(2*x+c1+c2+1)))
    # Physical use has s1>=Delta>1, s2=s3=Delta/2>1/2, so denominators
    # are strictly positive.  This function deliberately rejects singular
    # parameterizations instead of taking an unverified numerical 0/0 limit.
    if not np.all(np.isfinite(B)) or not np.all(np.isfinite(D)):
        raise ValueError('Use nonsingular positive Jacobi parameters.')
    eigenvalues,U=eigh_tridiagonal(-B-D,-np.sqrt(B[:-1]*D[1:]),
                                   lapack_driver='stemr')
    U *= np.where(U[0,:] < 0,-1.0,1.0)
    if diagnostics:
        exact=x*(x+c2+c3+1)
        return U,{'max_known_eigenvalue_error':float(np.max(abs(eigenvalues-exact))),
                  'orthogonality_error':float(np.max(abs(U.T@U-np.eye(M+1))))}
    return U


def equal_low_f(delta,t,k,r):
    """Small-index orthonormal equal-leaf F, at arbitrary t, float."""
    from math import exp, lgamma, sqrt
    d=float(delta)
    if max(k,r)>t:
        return 0.0
    def weight(j):
        out=(2*d+2*j-1)/(2*d-1)
        for u in range(j):
            out *= ((t+3*d-1+u)*(-t+u)*(2*d-1+u)
                    /((1-d-t+u)*(2*d+t+u)*(u+1)))
        return out
    polynomial=term=1.0
    for u in range(min(k,r)):
        term *= ((-k+u)*(k+2*d-1+u)*(-r+u)*(r+2*d-1+u)
                 /((d+u)*(-t+u)*(t+3*d-1+u)*(u+1)))
        polynomial+=term
    if d.is_integer():
        a=1.0
        for u in range(int(d)):
            a *= (d+u)/(t+d+u)
    else:
        a=exp(lgamma(t+d)-lgamma(t+2*d)+lgamma(2*d)-lgamma(d))
    return a*sqrt(weight(k)*weight(r))*polynomial


class NineJTable:
    """All low-pair-degree 9j blocks without Bargmann-polynomial expansion."""
    def __init__(self,delta,P,K,diagnostics=False):
        import numpy as np
        self.delta,self.P,self.K=float(delta),P,min(K,P)
        self.moves={}
        self.diagnostics={}
        for k in range(self.K+1):
            result=f_move_numeric(self.delta+k,self.delta/2,self.delta/2,
                                  P-k,diagnostics=diagnostics)
            if diagnostics:
                self.moves[k],self.diagnostics[k]=result
            else:
                self.moves[k]=result
        self.blocks={}

    def block(self,k,r):
        """Rows spectator degree a, columns c; all valid a,c."""
        import numpy as np
        if (k,r) in self.blocks:
            return self.blocks[k,r]
        if (r,k) in self.blocks:
            return self.blocks[r,k].T
        start=max(k,r)
        middle=np.array([(-1)**(t+k+r)*equal_low_f(self.delta,t,k,r)
                         for t in range(start,self.P+1)])
        A=self.moves[k][start-k:,:]
        B=self.moves[r][start-r:,:]
        out=A.T@(middle[:,None]*B)
        self.blocks[k,r]=out
        return out

