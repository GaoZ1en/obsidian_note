"""Independent exact test of the three-body rectangular rank theorem.

No repository implementation is imported. Build pair eigenpolynomials and
the particle permutation directly in r=z1-z2, u=(z1+z2)/2-z3 coordinates.
Run with SymPy available. All rank decisions are over exact rationals.
"""
import json
from functools import lru_cache
from pathlib import Path
import sympy as sp


@lru_cache(None)
def pair_basis(n, delta):
    eigen = sp.zeros(n+1)
    lam = [(delta+k)*(delta+k-1) for k in range(n+1)]
    for k in range(n+1):
        eigen[k,k] = 1
        for a in range(k+2,n+1,2):
            eigen[a,k] = sp.cancel(eigen[a-2,k]*(n-a+2)*(n-a+1)/(4*(lam[a]-lam[k])))
    return eigen


@lru_cache(None)
def swap13(n):
    # (r,u) -> (r/2-u, -3r/4-u/2).
    swap = sp.zeros(n+1)
    for k in range(n+1):
        for a in range(k+1):
            for b in range(n-k+1):
                swap[a+b,k] += (sp.binomial(k,a)*sp.Rational(1,2)**a*(-1)**(k-a)
                    *sp.binomial(n-k,b)*sp.Rational(-3,4)**b*sp.Rational(-1,2)**(n-k-b))
    assert swap*swap == sp.eye(n+1)
    return swap


@lru_cache(None)
def recoupling(n, delta):
    eig = pair_basis(n,delta)
    return (eig.inv()*swap13(n)*eig).applyfunc(sp.cancel)


def dimension(p,q):
    c=(1,-1,0)
    return ((p+1)*(q+1)+3*(p%2==0)*(q%2==0)+2*c[p%3]*c[q%3])//6


def channel_matrix(p,q,delta):
    rp=recoupling(p,delta)
    rq=recoupling(q,delta)
    return sp.Matrix(q+1,q+1,lambda j,k:sp.cancel((int(j==k)+2*rp[j,k]*rq[j,k])/3))


def pair_B(n,delta):
    # Build C23 by direct differential action, separately from permutation.
    r,u=sp.symbols('r u')
    mon=[r**a*u**(n-a) for a in range(n+1)]
    cols=[]
    for f in mon:
        out=sp.expand(-(u-r/2)**2*(sp.diff(f,r,u)-sp.diff(f,u,2)/2)
              +delta*(u-r/2)*(-sp.diff(f,r)+sp.Rational(3,2)*sp.diff(f,u))
              +delta*(delta-1)*f)
        po=sp.Poly(out,r,u)
        cols.append(sp.Matrix([po.coeff_monomial(x) for x in mon]))
    raw=sp.Matrix.hstack(*cols)
    e=pair_basis(n,delta)
    return (e.inv()*raw*e).applyfunc(sp.cancel)


def main():
    records=[]
    masses=[sp.Rational(3,2),sp.Integer(2),sp.Rational(7,3)]
    for d in masses:
        for p in range(13):
            for q in range(p+1):
                k=channel_matrix(p,q,d)
                rank=k.rank()
                if p==q:
                    expected=max(p,1)
                else:
                    expected=min(dimension(p,q),q+1-(p-q==1))
                assert rank==expected,(p,q,d,rank,expected)
                records.append(dict(P=p,Q=q,Delta=str(d),dimension=dimension(p,q),rank=rank))
        print('exact rational mass passed',d,flush=True)
    d=sp.Symbol('D',positive=True)
    symbolic=[]
    for p,q in [(2,0),(3,1),(4,2),(5,2),(6,3),(7,3),(8,4)]:
        k=channel_matrix(p,q,d)
        det=sp.factor(k.det())
        symbolic.append(dict(P=p,Q=q,determinant=str(det)))
        print('symbolic determinant',p,q,det,flush=True)
    jacobi=[]
    for n in range(1,8):
        b=pair_B(n,d)
        s=n*(n+3*d-1)+3*d*(d-1)
        for j in range(n+1):
            assert sp.cancel(b[j,j]-(s-(d+j)*(d+j-1))/2)==0
            for k in range(n+1):
                if abs(j-k)>1:
                    assert b[j,k]==0
        for k in range(1,n+1):
            assert sp.cancel(b[k-1,k]+k*(n-k+d))==0
        jacobi.append(dict(degree=n,tridiagonal=True,diagonal_formula=True,upper_offdiag_formula=True))
    exception=channel_matrix(3,1,d)
    report=dict(theorem='all three-body ranks',exact_rational_records=records,
                symbolic_determinants=symbolic,jacobi_checks=jacobi,
                exceptional_31_matrix=str(exception),exceptional_31_nullspace=[str(x) for x in exception.nullspace()])
    output=Path(__file__).with_name('rectangular_rank_verification.json')
    output.write_text(json.dumps(report,indent=2))
    print('saved',output,flush=True)


if __name__=='__main__':
    main()
