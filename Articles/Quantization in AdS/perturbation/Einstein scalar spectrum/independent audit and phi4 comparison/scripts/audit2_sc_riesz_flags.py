"""Exact small-block stress test of the common restricted Riesz map.
Build translation-invariant polynomial primaries and Gram forms directly.
Do not import any manuscript code or reported matrices.
"""
from pathlib import Path
from itertools import combinations
from math import factorial
import json
import sympy as s
OUT=Path(__file__).resolve().parents[1]

def comps(n,k):
    if k==1:
        yield (n,);return
    for a in range(n+1):
        for rest in comps(n-a,k-1):yield (a,)+rest

def model(N,P,d):
    z=s.symbols('z:'+str(N));x=s.symbols('x:'+str(N-1))
    exps=list(comps(P,N-1));basis=[s.prod((z[i]-z[-1])**a[i] for i in range(N-1)) for a in exps]
    full=list(comps(P,N));rows={a:i for i,a in enumerate(full)}
    B=s.zeros(len(full),len(exps))
    for j,b in enumerate(basis):
        for a,c in s.Poly(b,*z).terms():B[rows[a],j]=c
    w=[s.prod(s.factorial(a[i])/s.rf(d,a[i]) for i in range(N)) for a in full]
    G=B.T*s.diag(*w)*B
    def flag(edge,K):
        if K>P:return s.zeros(len(exps),0)
        i,j=edge;delta=(x[i] if i<N-1 else 0)-(x[j] if j<N-1 else 0)
        small=list(comps(P-K,N-1));A=s.zeros(len(exps),len(small));ind={a:j for j,a in enumerate(exps)}
        for j,a in enumerate(small):
            poly=s.Poly(delta**K*s.prod(x[i]**a[i] for i in range(N-1)),*x)
            for e,c in poly.terms():A[ind[e],j]=c
        return A
    return G,flag

def columns(vectors,n):return s.Matrix.hstack(*vectors) if vectors else s.zeros(n,0)

def good(N,P,Q,d,edge):
    GL,FL=model(N,P,d);GR,FR=model(N,Q,d);cols=[]
    for l in range(Q+1):
        L=FL(edge,l+3);F=FR(edge,l+1)
        R=columns((F.T*GR).nullspace(),GR.rows)
        if L.cols and R.cols:cols.append(s.kronecker_product(L,R))
    Z=columns(cols,GL.rows*GR.rows)
    return Z,GL,GR

def main():
    report=[]
    for N,P,Q,d in [(3,6,3,s.Rational(7,3)),(4,4,2,s.Rational(3,2))]:
        G0L,_=model(N,P,s.Rational(1,2));G0R,_=model(N,Q,s.Rational(1,2))
        GdL,_=model(N,P,d);GdR,_=model(N,Q,d)
        MQ=G0R.inv()*GdR;RR=s.kronecker_product(s.eye(G0L.rows),MQ.inv())
        entries=[]
        for edge in combinations(range(N),2):
            Z0,_,_=good(N,P,Q,s.Rational(1,2),edge);Zd,_,_=good(N,P,Q,d,edge)
            T=RR*Z0;rank=Zd.rank();joint=Zd.row_join(T).rank()
            entries.append({'edge':edge,'good_dimension':rank,'transported_dimension':T.rank(),'joint_dimension':joint,'exact_equality':rank==joint==T.rank()})
        report.append({'N':N,'P':P,'Q':Q,'Delta':str(d),'restricted_Riesz_is_nondiagonal':any(MQ[i,j]!=0 for i in range(MQ.rows) for j in range(MQ.cols) if i!=j),'edges':entries})
    out=OUT/'results/audit2_sc_riesz_flags.json';assert not out.exists();out.write_text(json.dumps(report,indent=2)+'\n');print(out)
if __name__=='__main__':main()
