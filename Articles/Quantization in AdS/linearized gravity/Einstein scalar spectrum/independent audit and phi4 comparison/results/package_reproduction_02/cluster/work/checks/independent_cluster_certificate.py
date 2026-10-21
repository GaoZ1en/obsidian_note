#!/usr/bin/env python3
"""Independent rational CG overlap and noncommuting Mobius certificates.
No import of original code. Finite tests do not establish infinite theorems.
"""
from fractions import Fraction as F
from math import comb, factorial
from functools import lru_cache
import json
from pathlib import Path

def rf(x,n):
    y=F(1)
    for j in range(n): y*=x+j
    return y

def cg(a,b,R):
    return [F((-1)**j*comb(R,j))/(rf(2*a,j)*rf(2*b,R-j)) for j in range(R+1)]

def left_source(a,b,c,R,u):
    # Unnormalized primary in ((a,b)_u,c)_(R-u), in raising monomials.
    out={}
    for j,x in enumerate(cg(a,b,u)):
        for t,y in enumerate(cg(a+b+u,c,R-u)):
            for k in range(t+1):
                v=(j+k,u-j+t-k,R-u-t)
                out[v]=out.get(v,F(0))+x*y*comb(t,k)
    return {k:v for k,v in out.items() if v}

def right_source(a,b,c,R,v):
    # Reverse left tree and reorder leaves; no phase adjustment, square tested.
    return {(z,y,x):coef for (x,y,z),coef in left_source(c,b,a,R,v).items()}

def inner(x,y,weights):
    return sum((v*y.get(k,0)*factorial(k[0])*rf(2*weights[0],k[0])*
                factorial(k[1])*rf(2*weights[1],k[1])*factorial(k[2])*rf(2*weights[2],k[2])
                for k,v in x.items()),F(0))

def omega(j,a,b,c,R):
    return (F(comb(R,j))*(2*j+2*b+2*c-1)*rf(2*b,j)*rf(R+2*a+2*b+2*c-1,j)*rf(2*a,R-j)
            /(rf(2*c,j)*rf(2*b+2*c+j-1,R+1)))

def racah_squared(a,b,c,R,u,v):
    hyper=sum((rf(-F(v),j)*rf(v+2*b+2*c-1,j)*rf(-F(u),j)*rf(u+2*a+2*b-1,j)
               /(rf(2*b,j)*rf(R+2*a+2*b+2*c-1,j)*rf(-F(R),j)*factorial(j))
               for j in range(min(u,v)+1)),F(0))
    return omega(u,c,b,a,R)*omega(v,a,b,c,R)*hyper**2

def lowering(v,weights):
    out={}
    for ns,coef in v.items():
        for i in range(3):
            n=ns[i]
            if n:
                kk=list(ns);kk[i]-=1;kk=tuple(kk)
                out[kk]=out.get(kk,F(0))+coef*n*(2*weights[i]+n-1)
    return {k:v for k,v in out.items() if v}

@lru_cache(None)
def parts(n):
    if not n:return ((),)
    res=[]
    for p in parts(n-1):
        res.append(p+((n-1,),))
        for i in range(len(p)):
            res.append(p[:i]+(p[i]+(n-1,),)+p[i+1:])
    return tuple(res)

def refine(a,b):return all(any(set(x)<=set(y) for y in b) for x in a)

def main():
    rows=[]
    for weights in [(F(3,4),F(5,6),F(7,5)),(F(1),F(3),F(1)),(F(2),F(1),F(2))]:
        for R in [2,5,9,15]:
            for u in range(min(R,3)+1):
                left=left_source(*weights,R,u)
                assert not lowering(left,weights)
                for v in range(min(R,3)+1):
                    right=right_source(*weights,R,v)
                    assert not lowering(right,weights)
                    value=inner(left,right,weights)**2/(inner(left,left,weights)*inner(right,right,weights))
                    expected=racah_squared(*weights,R,u,v)
                    assert value==expected
                    rows.append({'weights':list(map(str,weights)),'R':R,'u':u,'v':v,'overlap_squared':str(value)})
    mob=[]
    for n in range(2,8):
        pp=parts(n)
        for gamma in pp:
            total=sum((-1)**(len(pi)-1)*factorial(len(pi)-1) for pi in pp if refine(gamma,pi))
            assert total==int(len(gamma)==1)
        mob.append({'N':n,'all_graph_component_partitions':len(pp),'passed':True})
    # Independent matrix checks of twisted exchange with coincident energies,
    # different degrees, right-budget removal, and exact ranks.
    states=[(0,0,F(2)),(2,0,F(2)),(1,1,F(2)),(3,1,F(3)),(0,2,F(5))]
    exchange=[]
    for Q in range(5):
        for lam in [F(4),F(5),F(6),F(7),F(8),F(10)]:
            pairs=[(i,j) for i,a in enumerate(states) for j,b in enumerate(states) if a[1]+b[1]<=Q and a[2]+b[2]==lam]
            K=len(pairs); T=sum(i==j for i,j in pairs)
            assert all((j,i) in pairs for i,j in pairs)
            for eta in [1,-1]:
                direct=sum(i<j or (i==j and eta==1) for i,j in pairs)
                assert 2*direct==K+eta*T
            exchange.append({'Q':Q,'lambda':str(lam),'ordered_K':K,'trace_T':T,'even_rank':(K+T)//2,'odd_rank':(K-T)//2})
    output={'independent_CG_checks':rows,'mobius_checks':mob,'exchange_multiplicity_checks':exchange,
            'theorem_scope':'Finite exact tests independently validate interfaces only. Infinite proofs are in the Chinese review.'}
    dst=Path(__file__).with_name('independent_cluster_certificate.json');dst.write_text(json.dumps(output,indent=2)+'\n')
    print(json.dumps({'CG_exact_cases':len(rows),'Mobius_max_N':7,'exchange_cases':len(exchange),'output':str(dst)}))
if __name__=='__main__':main()
