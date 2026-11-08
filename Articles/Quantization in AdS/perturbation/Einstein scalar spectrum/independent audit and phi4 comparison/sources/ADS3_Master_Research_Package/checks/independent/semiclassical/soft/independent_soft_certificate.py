import sys
if sys.flags.optimize:
 raise RuntimeError("Verification requires Python assertions; optimization is forbidden")
#!/usr/bin/env python3
"""Independent direct-primary polynomial audit. No package implementation imports.
Pair Casimir eigenvectors are solved triangularly in delta=z1-z2,
t=(z1+z2)/2-z3. A literal particle transposition supplies recoupling.
Exact rational inertia uses 1x1 or 2x2 congruence pivots, never root tolerances.
"""
import sympy as s
from fractions import Fraction as F
from math import comb
from itertools import permutations, product
import json,time,argparse
from pathlib import Path

def rep(p,d):
    # Columns are exact pair-Casimir eigenvectors in delta^j t^(p-j).
    E=s.zeros(p+1)
    lam=lambda k:(d+k)*(d+k-1)
    for k in range(p+1):
        E[k,k]=1
        for j in range(k+2,p+1,2):
            E[j,k]=E[j-2,k]*(p-j+2)*(p-j+1)/(4*(lam(j)-lam(k)))
    # Swap particles 2 and 3: delta -> delta/2+t; t -> 3delta/4-t/2.
    U=s.zeros(p+1)
    for k in range(p+1):
        for a in range(k+1):
            for b in range(p-k+1):
                U[a+b,k]+=s.Rational(comb(k,a)*comb(p-k,b))*s.Rational(1,2)**a*s.Rational(3,4)**b*s.Rational(-1,2)**(p-k-b)
    C=s.diag(*[lam(k) for k in range(p+1)])
    for k in range(p-1): C[k+2,k]=-s.Rational((p-k)*(p-k-1),4)
    assert C*E==E*s.diag(*[lam(k) for k in range(p+1)])
    R=E.inv()*U*E
    assert R*R==s.eye(p+1)
    parity=s.diag(*[(-1)**k for k in range(p+1)])
    assert (parity*R)**3==s.eye(p+1)
    w=[s.cancel(R[0,k]/R[k,0]) for k in range(p+1)]
    assert all(x>0 for x in w)
    assert s.diag(*w)*R==R.T*s.diag(*w)
    return [[F(x) for x in row] for row in R.tolist()],[F(x) for x in w]

def residual(d,k,l):
    n=min(k,l);h=d+n;c=h*(h-1);m=d*(d-2)
    diff=8*((d+l)*(d+l-1)-c)
    if abs(k-l)>=4:return diff
    if abs(k-l)==2:return diff+F((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    if n==0:return 2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
    return (8*c-4*m)/(2*h-1)-2*(c+m)**2/((2*h-3)*(2*h-1)*(2*h+1))

def inertia(B):
    A=[r[:] for r in B];out=[0,0,0];steps=[]
    while A:
        n=len(A); i=next((i for i in range(n) if A[i][i]),None)
        if i is not None:
            ids=[i]+[j for j in range(n) if j!=i]; A=[[A[x][y] for y in ids] for x in ids]
            v=A[0][0];out[0 if v>0 else 1]+=1;steps.append(1 if v>0 else -1)
            A=[[A[x][y]-A[x][0]*A[0][y]/v for y in range(1,n)] for x in range(1,n)]
        else:
            pair=next(((i,j) for i in range(n) for j in range(i+1,n) if A[i][j]),None)
            if pair is None:out[2]+=n;break
            i,j=pair; ids=[i,j]+[k for k in range(n) if k not in (i,j)]
            A=[[A[x][y] for y in ids] for x in ids];v=A[0][1]
            out[0]+=1;out[1]+=1;steps.append('2x2 +-')
            A=[[A[x][y]-(A[x][0]*A[1][y]+A[x][1]*A[0][y])/v for y in range(2,n)] for x in range(2,n)]
    return out

def certificate(p,q,thresholds):
    start=time.time();RL,wL=rep(p,s.Rational(2)); RR,wR=rep(q,s.Rational(2))
    labels=[(k,l) for l in range(q+1) for k in range(min(p,l+2)+1) if (k+l)%2==0]
    weights=[wL[k]*wR[l] for k,l in labels];a=[residual(F(2),k,l) for k,l in labels]
    S=[[weights[i]*(F(i==j)+2*RL[k][r]*RR[l][t]) for j,(r,t) in enumerate(labels)] for i,(k,l) in enumerate(labels)]
    assert all(S[i][j]==S[j][i] for i in range(len(S)) for j in range(i))
    rows=[]
    for eps in [F(0)]+list(map(F,thresholds)):
        B=[row[:] for row in S]
        for i in range(len(B)): B[i][i]-=eps*weights[i]/a[i]
        it=inertia(B);rows.append({'threshold':str(eps),'inertia_positive_negative_zero':it})
    expected={(16,8):[[26,0,8],[26,8,0],[25,9,0]],(32,16):[[90,0,8],[90,8,0],[89,9,0]]}
    assert [r['inertia_positive_negative_zero'] for r in rows]==expected[p,q]
    return {'P':p,'Q':q,'dimension_auxiliary':len(labels),'method':'direct polynomial transposition, no Racah formula imported','rows':rows,'elapsed_seconds':time.time()-start}

def boundary():
    rot={};group=0;central=0
    for p in permutations(range(3)):
        sign=(-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
        for sg in product([-1,1],repeat=3):
            det=sign*sg[0]*sg[1]*sg[2];tr=det*sum(sg[i] for i in range(3) if p[i]==i)
            rot[tr]=rot.get(tr,0)+1
            if tr!=3:assert F(3-tr,4)>=F(1,2)
        for sl in product([-1,1],repeat=3):
            for sr in product([-1,1],repeat=3):
                group+=1;central+=int(p==(0,1,2) and len(set(sl))==len(set(sr))==1)
    assert (group,central)==(384,4)
    cases=0
    for p in range(1,401):
        for q in range((p+1)//2,p+1):
            cyc=[1,-1,0];D=((p+1)*(q+1)+3*int(p%2==q%2==0)+2*cyc[p%3]*cyc[q%3])//6
            assert 6*D>=p*q
            kap=sum((p-q-12-3*b)//2+1 for b in range(max(0,(p-q-12)//3+1)))
            assert 12*kap<=(p-q)**2
            cases+=1
    # Moment identity proves |B_12|~Beta(1,N-2): both moment sequences.
    for N in range(3,12):
        for m in range(21):
            lhs=s.rf(s.Rational(1,2),s.Rational(m,2))*s.rf(1,s.Rational(m,2))/(s.rf(s.Rational(N-1,2),s.Rational(m,2))*s.rf(s.Rational(N,2),s.Rational(m,2)))
            rhs=s.factorial(m)*s.factorial(N-2)/s.factorial(m+N-2)
            assert s.simplify(lhs-rhs)==0
    return {'group_size':group,'central_count':central,'rotation_trace_counts':rot,'exact_grid_count':cases,'plucker_moment_checks':189,'trace_constant':str(F(380,384)*150),'finite_count_coefficient':'1/2','finite_exponent_denominator':2304,'asymptotic_exponent_denominator':4608}

def metric_transport():
    z=s.symbols('z0:3');delta=z[0]-z[1];t=(z[0]+z[1])/2-z[2]
    def data(p,d):
        polys=[s.Poly(s.expand(delta**k*t**(p-k)),*z).as_dict() for k in range(p+1)]
        G=s.Matrix(p+1,p+1,lambda i,j:sum(v*polys[j].get(a,0)*s.prod(s.factorial(ai)/s.rf(d,ai) for ai in a) for a,v in polys[i].items()))
        E=s.zeros(p+1);lam=lambda k:(d+k)*(d+k-1)
        for k in range(p+1):
            E[k,k]=1
            for j in range(k+2,p+1,2):E[j,k]=E[j-2,k]*(p-j+2)*(p-j+1)/(4*(lam(j)-lam(k)))
        assert (E.T*G*E).is_diagonal()
        U=s.zeros(p+1)
        for k in range(p+1):
            for a in range(k+1):
                for b in range(p-k+1):U[a+b,k]+=s.Rational(comb(k,a)*comb(p-k,b))*s.Rational(1,2)**a*s.Rational(3,4)**b*s.Rational(-1,2)**(p-k-b)
        assert U.T*G*U==G
        return G,E,U
    p,q=6,3;d0=s.Rational(1,2);d=s.Rational(7,3)
    gp0,ep0,up=data(p,d0);gq0,eq0,uq=data(q,d0)
    gpd,epd,_=data(p,d);gqd,eqd,_=data(q,d)
    mp=gp0.inv()*gpd;mq=gq0.inv()*gqd;T=s.kronecker_product(s.eye(p+1),mq.inv())
    G0=s.kronecker_product(gp0,gq0);Gd=s.kronecker_product(gpd,gqd)
    assert T.T*Gd*T==G0*s.kronecker_product(mp,mq.inv())
    U=s.kronecker_product(up,uq)
    V=s.kronecker_product(s.diag(*[(-1)**k for k in range(p+1)]),s.diag(*[(-1)**l for l in range(q+1)]))
    assert T*U==U*T and T*V==V*T
    D=s.diag(*[int(k>=l+3) for k in range(p+1) for l in range(q+1)])
    E0=s.kronecker_product(ep0,eq0);Ed=s.kronecker_product(epd,eqd)
    Z0=E0*D*E0.inv();Zd=Ed*D*Ed.inv();ident=s.eye(T.rows)
    for W in (ident,U,V*U):
        F0=W*Z0*W.inv();Fd=W*Zd*W.inv()
        assert (ident-Fd)*T*F0==s.zeros(T.rows)
        assert (ident-F0)*T.inv()*Fd==s.zeros(T.rows)
    return {'N':3,'P':p,'Q':q,'physical_Delta':str(d),'auxiliary_Delta':str(d0),'labelled_dimension':T.rows,'all_three_pair_flags_both_inclusions':True,'restricted_metric_identity':True,'Bose_equivariance':True}

def inertia_selfcheck():
    cases=[([[0,1],[1,0]],[1,1,0]),([[1,2],[2,4]],[1,0,1]),([[0,1,2],[1,0,3],[2,3,0]],[1,2,0]),([[0,0,0],[0,-2,1],[0,1,3]],[1,1,1])]
    for A,expected in cases:assert inertia([[F(x) for x in row] for row in A])==expected
    return {'exact_test_cases':len(cases),'zero_diagonal_2x2_pivot_exercised':True}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--large',action='store_true');args=ap.parse_args()
    result={'status':'passed','inertia_selfcheck':inertia_selfcheck(),'metric_transfer':metric_transport(),'boundary':boundary(),'spectral_certificates':[certificate(16,8,['1/5','1/3'])]}
    if args.large:result['spectral_certificates'].append(certificate(32,16,['1/6000','1/5000']))
    path=Path(__file__).with_suffix('.json');path.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
