"""Independent Rankin--Cohen collision calculations; no repository imports.

Run with SymPy available.  All ranks and residuals in this script are exact.
The coordinate x_i = z_i-z_N (and y_i = w_i-w_N) implements primaries.
"""
import json
from functools import lru_cache
from itertools import product
from pathlib import Path
import sympy as s


def rc(f, variables, k, delta, i=0, j=1):
    """Unnormalised Rankin--Cohen projection, retaining the fused coordinate."""
    u, v = variables[i], variables[j]
    out = 0
    for a in range(k + 1):
        out += (-1)**a*s.binomial(k,a)*s.diff(f,u,a,v,k-a)/(s.rf(delta,a)*s.rf(delta,k-a))
    return s.expand(out.subs(v,u))


def casimir(f,z,d):
    u,v=z
    return s.expand(-(u-v)**2*s.diff(f,u,v)+d*(u-v)*(s.diff(f,u)-s.diff(f,v))+d*(d-1)*f)


def raise_pair(f,z,d):
    return s.expand(sum(t*t*s.diff(f,t)+d*t*f for t in z))


def rc_tests():
    d=s.symbols('delta',positive=True)
    u,v,t=s.symbols('u v t')
    records=[]
    for ell in range(6):
        f=(u-v)**ell
        for n in range(7-ell):
            if n: f=raise_pair(f,(u,v),d)
            for k in range(ell+n+1):
                observed=s.factor(rc(f,(u,v),k,d))
                if k==ell:
                    g=s.factor(s.factorial(k)*s.rf(2*d+k-1,k)/s.rf(d,k)**2)
                    target=(-1)**k*g*s.rf(2*d+2*k,n)*u**n
                else: target=0
                assert s.cancel(observed-target)==0,(ell,n,k)
                records.append([ell,n,k])
    return {'exact_descendant_projection_checks':len(records)}


def partitions_weighted(degree, weights):
    if not weights:
        if degree==0: yield ()
        return
    w=weights[0]
    for a in range(degree//w+1):
        for tail in partitions_weighted(degree-a*w,weights[1:]):
            yield (a,)+tail


def first_strip_basis(N,P):
    x=s.symbols('x:'+str(N-1)); y=s.symbols('y:'+str(N-1))
    sx=sum(x)/N; sy=sum(y)/N
    X=[a-sx for a in x]+[-sx]; Y=[b-sy for b in y]+[-sy]
    inv={j:s.Poly(s.symmetric_poly(j,*X),*x).as_expr() for j in range(2,N+1)}
    basis=[]; names=[]
    for r in range(1,N):
        if r>P: continue
        pr1=s.expand(sum(a**r*b for a,b in zip(X,Y)))
        for a in partitions_weighted(P-r,list(range(2,N+1))):
            f=pr1
            for j,e in zip(range(2,N+1),a): f*=inv[j]**e
            basis.append(s.Poly(f,*(x+y)).as_expr())
            names.append([r,list(a)])
    return x,y,basis,names


def coefficient_matrix(polys,variables):
    polyd=[s.Poly(f,*variables).as_dict() for f in polys]
    mons=sorted(set().union(*(set(d) for d in polyd)))
    return s.polys.matrices.DomainMatrix.from_Matrix(s.Matrix([[d.get(m,0) for d in polyd] for m in mons])).to_field()


def strip_check(N,P,d):
    x,y,b,names=first_strip_basis(N,P)
    if not b: return {'N':N,'P':P,'delta':str(d),'dim':0,'rank':0,'nullity':0}
    # x2=x1 and y2=y1; z_N and w_N are spectators, so ordinary derivatives apply.
    maps=[]
    for k in (0,1):
        maps.append(coefficient_matrix([rc(rc(f,x,k,d),y,k,d) for f in b],x+y))
    M=maps[0].vstack(maps[1])
    rank=len(M.rref()[1])
    D=N*(N-1)
    predicted=sum(1 for r in range(1,N) for _ in partitions_weighted(P-D-r,list(range(2,N+1)))) if P>=D+1 else 0
    assert len(b)-rank==predicted,(N,P,d,len(b),rank,predicted)
    return {'N':N,'P':P,'delta':str(d),'dim':len(b),'rank':rank,'nullity':len(b)-rank,'predicted_nullity':predicted}


def hilbert_coeffs(N,maxP):
    a=[0]*(maxP+1);a[0]=1
    for j in range(2,N+1):
        for p in range(j,maxP+1):a[p]+=a[p-j]
    m=[sum(a[p-r] for r in range(1,N) if p>=r) for p in range(maxP+1)]
    D=N*(N-1)
    return [{'P':p,'dim':m[p],'kernel':m[p-D] if p>=D else 0,'rank':m[p]-(m[p-D] if p>=D else 0)} for p in range(maxP+1)]


if __name__=='__main__':
    out=rc_tests()
    out['first_strip']=[]
    for N,P in [(3,3),(3,6),(3,7),(3,8),(4,3),(4,6),(4,12),(4,13),(4,14),(5,4),(5,6)]:
        for d in [s.Rational(3,2),s.Rational(2),s.Rational(7,3)]:
            r=strip_check(N,P,d)
            out['first_strip'].append(r)
            print(r,flush=True)
    out['counting_tables']={str(N):hilbert_coeffs(N,N*(N-1)+8) for N in [2,3,4,5,6]}
    dest=Path(__file__).with_name('contact_jets_results.json')
    dest.write_text(json.dumps(out,indent=2))
    print('saved',dest)
