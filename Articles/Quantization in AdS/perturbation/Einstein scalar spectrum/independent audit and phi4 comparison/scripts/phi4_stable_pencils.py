"""Stable-N phi4 primary pencils from exact direct contact integrals.
No Einstein-package imports. K is in units c0=1/[8*pi*(2*Delta-1)].
Works over QQ(Delta)(N); fixed-degree primary columns do not depend on N or Delta.
This uses the previously audited rational Bargmann conversion, independently
implements symbolic occupation counting, and checks the physical Gram identity.
"""
from sage.all import *
from functools import lru_cache
from collections import Counter
from itertools import product
from pathlib import Path
import argparse,json,time,sys
ROOT=Path(__file__).resolve().parents[1]
D=FractionField(PolynomialRing(QQ,'d'));d=D.gen()
RN=PolynomialRing(D,'N');N=RN.gen();F=RN.fraction_field()
Y=PolynomialRing(D,'y');y=Y.gen()

def rf(a,k): return prod(a+i for i in range(k))
@lru_cache(None)
def weight(k): return rf(d,k)/factorial(k)
@lru_cache(None)
def states(P,Q):
    if P<0 or Q<0:return ()
    labs=tuple((p,q) for p in range(P+1) for q in range(Q+1) if p+q)
    ans=[]
    def walk(start,p,q,acc):
        if p==0 and q==0:ans.append(tuple(acc));return
        for j in range(start,len(labs)):
            a,b=labs[j]
            if a<=p and b<=q:walk(j,p-a,q-b,acc+[labs[j]])
    walk(0,P,Q,[])
    return tuple(sorted(ans,key=lambda s:(len(s),s)))
@lru_cache(None)
def jacobi(n,a):
    return sum(binomial(n+a,n-j)*binomial(d+n-1,j)*(-y)**j*(1-y)**(n-j) for j in range(n+1))
@lru_cache(None)
def radial(four):
    ns=[min(x) for x in four];aa=[abs(x[0]-x[1]) for x in four]
    assert sum(aa)%2==0
    power=sum(aa)//2;poly=prod(jacobi(n,a) for n,a in zip(ns,aa))
    return sum(c*factorial(i+power)/rf(2*d-1,i+power+1) for i,c in enumerate(poly.list()))
@lru_cache(None)
def vertex(a,b,c,e):
    four=tuple(sorted((a,b,c,e)))
    return D((2*d-1)/2*(-1)**sum(min(v) for v in four)*weight(max(a))*weight(max(b))/weight(min(c))/weight(min(e))*radial(four))

def matrix_full(P,Q):
    bs=states(P,Q);ix={s:i for i,s in enumerate(bs)};H=zero_matrix(F,len(bs))
    for col,st in enumerate(bs):
        counts=Counter(st);counts[(0,0)]=N-len(st);active=sorted(counts)
        for c in active:
            for e in active:
                mult=counts[c]*(counts[e]-int(c==e))
                if mult==0:continue
                base=Counter(st)
                for lab in (c,e):
                    if lab!=(0,0):base[lab]-=1
                pp=c[0]+e[0];qq=c[1]+e[1]
                for ap in range(pp+1):
                    for aq in range(qq+1):
                        a=(ap,aq);b=(pp-ap,qq-aq);v=vertex(a,b,c,e)
                        if not v:continue
                        out=base.copy()
                        for lab in (a,b):
                            if lab!=(0,0):out[lab]+=1
                        assert all(n>=0 for n in out.values())
                        dest=tuple(sorted(lab for lab,n in out.items() for _ in range(n)))
                        H[ix[dest],col]+=mult*v
    return H

def lower(P,Q,axis):
    bs=states(P,Q);dst=states(P-int(axis==0),Q-int(axis==1));ix={s:i for i,s in enumerate(dst)}
    L=zero_matrix(QQ,len(dst),len(bs))
    for col,st in enumerate(bs):
        for lab,count in Counter(st).items():
            if lab[axis]==0:continue
            target=list(lab);target[axis]-=1;target=tuple(target)
            out=list(st);out.remove(lab)
            if target!=(0,0):out.append(target)
            L[ix[tuple(sorted(out))],col]+=count*lab[axis]
    return L

def primary_monomials(P,Q):
    return tuple(st for st in states(P,Q) if all(p+q>=2 for p,q in st))

def primary(P,Q):
    bs=states(P,Q)
    labs=tuple((p,q) for p in range(P+1) for q in range(Q+1) if p+q)
    R=PolynomialRing(QQ,['a'+str(p)+'_'+str(q) for p,q in labs]);a=dict(zip(labs,R.gens()));a[(0,0)]=R.one()
    def centered(p,q):
        return sum(binomial(p,i)*binomial(q,j)*(-a.get((1,0),R.zero()))**(p-i)*(-a.get((0,1),R.zero()))**(q-j)*a[(i,j)] for i in range(p+1) for j in range(q+1))
    cp={lab:centered(*lab) for lab in labs if sum(lab)>=2}
    basis=[prod(cp[lab] for lab in st) for st in primary_monomials(P,Q)]
    occ=[prod(a[lab] for lab in st) for st in bs]
    Phi=matrix(QQ,[[f.monomial_coefficient(m) for f in basis] for m in occ])
    L=zero_matrix(QQ,0,len(bs))
    if P:L=L.stack(lower(P,Q,0))
    if Q:L=L.stack(lower(P,Q,1))
    assert L*Phi==0 and Phi.rank()==Phi.ncols()==L.right_nullity()
    return Phi

def metric(P,Q):
    vals=[]
    for st in states(P,Q):
        a=prod(factorial(n)/(weight(p)*weight(q))**n for (p,q),n in Counter(st).items())
        vals.append(F(a/prod(N-j for j in range(len(st)))))
    return diagonal_matrix(F,vals)

def coordinates(Phi,V):
    piv=Phi.transpose().pivots()
    out=Phi.matrix_from_rows(piv).change_ring(F).solve_right(V.matrix_from_rows(piv))
    assert Phi*out==V
    return out

def js(M):return [[str(c) for c in row] for row in M.rows()]

def make_block(P,Q,parity='all',delta=None,characteristic=True):
    P,Q=int(P),int(Q)
    tick=time.monotonic();H=matrix_full(P,Q);Phi=primary(P,Q);G=metric(P,Q)
    if parity!='all':
        assert P==Q
        bs=states(P,Q);ix={s:i for i,s in enumerate(bs)};S=zero_matrix(QQ,len(bs))
        for j,st in enumerate(bs):S[ix[tuple(sorted((q,p) for p,q in st))],j]=1
        assert S*H==H*S
        R=coordinates(Phi,S*Phi).change_ring(QQ)
        Y=(R-(1 if parity=='even' else -1)*identity_matrix(QQ,R.nrows())).right_kernel().basis_matrix().transpose()
        Phi=Phi*Y
    M=coordinates(Phi,H*Phi);Gamma=Phi.transpose()*G*Phi
    assert M.transpose()*Gamma==Gamma*M
    residual=M-N*(N-1)/2*identity_matrix(F,M.nrows())
    assert all(x.denominator().degree()==0 and x.numerator().degree()<=1 for x in residual.list())
    A=matrix(D,M.nrows(),[RN(x)[1] for x in residual.list()]);B=matrix(D,M.nrows(),[RN(x)[0] for x in residual.list()])
    assert M==N*A+B+N*(N-1)/2*identity_matrix(F,M.nrows())
    report={'P':P,'Q':Q,'parity':parity,'stable_range':'N>='+str(max(1,P+Q)),'full_dimension':H.nrows(),'primary_dimension':M.nrows(),'units':'c0=1/[8*pi*(2*Delta-1)] coefficient of lambda','occupation_basis':[list(st) for st in states(P,Q)],'primary_columns':js(Phi),'centered_monomials_before_parity':[list(st) for st in primary_monomials(P,Q)],'matrix':js(M),'Gram':js(Gamma),'A':js(A),'B':js(B),'Gram_selfadjoint':True,'affine_pencil_proved_and_checked':True,'seconds':time.monotonic()-tick}
    target=M
    if delta is not None:
        target=matrix(F,M.nrows(),[sum(F(c(delta))*N**i for i,c in enumerate(x.numerator().list()))/sum(F(c(delta))*N**i for i,c in enumerate(x.denominator().list())) for x in M.list()])
        report['Delta_specialization']=str(delta)
    if characteristic and M.nrows():
        cp=target.charpoly('z');report['charpoly']=str(cp);report['charpoly_factored']=str(cp.factor())
        report['leading_slopes']=str(A.charpoly('s').factor())
    return report,H,Phi,M,Gamma

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--P',type=int,required=True);ap.add_argument('--Q',type=int,required=True);ap.add_argument('--parity',choices=['all','even','odd'],default='all');ap.add_argument('--Delta');ap.add_argument('--no-charpoly',action='store_true');ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    if args.output.exists():raise FileExistsError(args.output)
    rep,H,Phi,M,G=make_block(args.P,args.Q,args.parity,QQ(args.Delta) if args.Delta else None,not args.no_charpoly)
    rep['status']='passed';rep['python']=sys.version
    args.output.write_text(json.dumps(rep,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:rep[k] for k in ['P','Q','parity','primary_dimension','seconds','status']}));print(rep.get('charpoly_factored','matrix-only'));print(args.output)
if __name__=='__main__':main()
