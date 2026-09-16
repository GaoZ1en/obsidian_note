"""Independent exact Virasoro-vacuum PBW and normal-symbol reconstruction.
No Mathematica dependency. c is symbolic. Parts 1 are quotiented out at vacuum.
"""
from functools import lru_cache
from pathlib import Path
import sympy as s
import json,time
c=s.Symbol('c'); OUT=Path(__file__).parent

def add(a,b,f=1):
    z=dict(a)
    for w,v in b.items(): z[w]=s.expand(z.get(w,0)+f*v)
    return {w:v for w,v in z.items() if v!=0}

@lru_cache(None)
def parts(n,cap=None):
    if n==0: return ((),)
    if n<2:return ()
    cap=min(n,n if cap is None else cap)
    return tuple((a,)+w for a in range(cap,1,-1) for w in parts(n-a,a))

@lru_cache(None)
def act(m,w):
    if not w: return {(-m,):s.Integer(1)} if m<=-2 else {}
    if m==0: return {w:s.Integer(sum(w))}
    if m<=-2 and -m>=w[0]:return {(-m,)+w:s.Integer(1)}
    n,tail=w[0],w[1:]
    z={}
    for v,a in act(m,tail).items(): z=add(z,act(-n,v),a)
    z=add(z,act(m-n,tail),m+n)
    if m==n:z=add(z,{tail:c*s.Rational(m*(m*m-1),12)})
    return z

def apply_seq(ms,w):
    z={w:s.Integer(1)}
    for m in ms:
        out={}
        for v,a in z.items():out=add(out,act(m,v),a)
        z=out
    return z

@lru_cache(None)
def gram(n):
    pp=parts(n)
    return s.Matrix([[apply_seq(I,J).get((),0) for J in pp] for I in pp])

@lru_cache(None)
def action_matrix(m,n):
    out=parts(n-m);inp=parts(n)
    return s.Matrix(len(out),len(inp),lambda i,j:act(m,inp[j]).get(out[i],0))

@lru_cache(None)
def mono_matrix(I,J,n,u):
    out=parts(n-u);inp=parts(n)
    seq=tuple(J)+tuple(-i for i in reversed(I))
    return s.Matrix(len(out),len(inp),lambda i,j:apply_seq(seq,inp[j]).get(out[i],0))

def normal_symbols(u,limit,seed=None):
    blocks={}; records=[];start=2
    if seed:
        raw=json.loads(Path(seed).read_text())
        records=[((tuple(x["negative"]),tuple(x["positive"])),s.sympify(x["exact"],locals={"c":c})) for x in raw]
        start=max(x["positive_level"] for x in raw)+1
    for n in range(start,limit+1):
        pp,qq=parts(n-u),parts(n)
        if not pp or not qq:continue
        residual=action_matrix(u,n)
        for (I,J),coef in records:
            residual-=coef*mono_matrix(I,J,n,u)
        residual=residual.applyfunc(s.cancel)
        # Matrix of operator action is C G_n (not the matrix of inner products).
        C=(residual*gram(n).inv(method='DM')).applyfunc(s.factor)
        assert (C*gram(n)-residual).applyfunc(s.cancel)==s.zeros(len(pp),len(qq))
        block=[]
        for i,I in enumerate(pp):
            for j,J in enumerate(qq):
                if C[i,j]!=0:
                    records.append(((I,J),C[i,j]));block.append((I,J,C[i,j]))
        blocks[n]=block
        print('u',u,'level',n,'new',len(block),flush=True)
        checkpoint=[{'u':u,'negative':a,'positive':b,'positive_level':sum(b),'exact':str(v)} for ((a,b),v) in records]
        (OUT/f'checkpoint_u{u}_level{n}.json').write_text(json.dumps(checkpoint))
    return records,blocks

def inverse_c_all(expr,order=4):
    num,den=s.fraction(s.cancel(expr))
    pn,pd=s.Poly(num,c),s.Poly(den,c)
    shift=pd.degree()-pn.degree()
    out={k:s.Integer(0) for k in range(1,order+1)}
    if shift>order:return out
    na=list(reversed([pn.nth(k) for k in range(pn.degree()+1)]))
    da=list(reversed([pd.nth(k) for k in range(pd.degree()+1)]))
    cs=[]
    for j in range(order-shift+1):
        v=(na[j] if j<len(na) else 0)-sum(da[i]*cs[j-i] for i in range(1,min(j,len(da)-1)+1))
        cs.append(s.cancel(v/da[0]))
        if j+shift in out:out[j+shift]=cs[-1]
    return out

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--level',type=int,default=8);p.add_argument('--u',type=int,default=0);p.add_argument('--seed',default=None);args=p.parse_args()
    t=time.time();rec,blocks=normal_symbols(args.u,args.level,args.seed)
    rows=[]
    for (I,J),coef in rec:
        rows.append({'u':args.u,'negative':I,'positive':J,'positive_level':sum(J),'exact':str(coef),**{f'c^-{k}':str(v) for k,v in inverse_c_all(coef).items()}})
    (OUT/f'quantum_u{args.u}_through_level{args.level}.json').write_text(json.dumps(rows,indent=2))
    print('DONE',len(rows),'terms',time.time()-t,flush=True)
