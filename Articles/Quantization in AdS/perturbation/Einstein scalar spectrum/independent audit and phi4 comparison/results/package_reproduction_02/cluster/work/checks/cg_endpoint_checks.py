import sympy as s, math, json, mpmath as mp
from pathlib import Path

def add(a,b,f=s.S.One):
 c=a.copy()
 for n,x in b.items(): c[n]=c.get(n,0)+f*x
 return {n:s.cancel(x) for n,x in c.items() if x!=0}
def raise_one(v,inds,hs):
 w={}
 for n,x in v.items():
  for i in inds:
   nn=list(n);nn[i]+=1;nn=tuple(nn)
   w[nn]=w.get(nn,0)+(n[i]+2*hs[i])*x
 return w
def raises(v,inds,hs,m):
 for _ in range(m):v=raise_one(v,inds,hs)
 return v
def cg(v,left,right,hA,hB,m,hs):
 out={}
 for r in range(m+1):
  vv=raises(raises(v,left,hs,r),right,hs,m-r)
  out=add(out,vv,(-1)**r*s.binomial(m,r)/(s.rf(2*hA,r)*s.rf(2*hB,m-r)))
 return out
def inn(v,w,hs):
 return s.factor(sum(a*w.get(n,0)*s.prod(s.factorial(n[i])/s.rf(2*hs[i],n[i]) for i in range(3)) for n,a in v.items()))
def omega(n,a,b,c,M):
 return s.binomial(M,n)*(2*n+b+c+1)*s.rf(b+1,n)*s.rf(M+a+b+c+2,n)*s.rf(a+1,M-n)/(s.rf(c+1,n)*s.rf(b+c+n+1,M+1))
def F2(hs,M,u,v):
 a,b,c=[2*h-1 for h in hs]
 f=sum(s.rf(-v,j)*s.rf(v+b+c+1,j)*s.rf(-u,j)*s.rf(u+a+b+1,j)/(s.rf(b+1,j)*s.rf(M+a+b+c+2,j)*s.rf(-M,j)*s.factorial(j)) for j in range(min(u,v)+1))
 return s.factor(omega(u,c,b,a,M)*omega(v,a,b,c,M)*f*f)
results=[]
for hs,M,u,v in [((s.Rational(3,4),s.Rational(3,4),s.Rational(3,4)),6,0,2),((2,1,1),7,2,1),((1,3,1),8,1,2),((s.Rational(7,3),s.Rational(7,6),s.Rational(7,6)),6,2,2),((1,1,1),5,1,1),((s.Rational(3,4),s.Rational(5,2),s.Rational(3,4)),7,2,0)]:
 hs=tuple(map(s.sympify,hs)); ground={(0,0,0):s.S.One}
 L=cg(cg(ground,[0],[1],hs[0],hs[1],u,hs),[0,1],[2],hs[0]+hs[1]+u,hs[2],M-u,hs)
 R=cg(cg(ground,[1],[2],hs[1],hs[2],v,hs),[0],[1,2],hs[0],hs[1]+hs[2]+v,M-v,hs)
 actual=s.factor(inn(L,R,hs)**2/(inn(L,L,hs)*inn(R,R,hs)));pred=F2(hs,M,u,v)
 assert actual==pred,(hs,M,u,v,actual,pred)
 results.append({'weights':str(hs),'M':M,'u':u,'v':v,'squared_overlap':str(actual),'match':True})
mp.mp.dps=60
def om(n,a,b,c,M):
 return mp.binomial(M,n)*(2*n+b+c+1)*mp.rf(b+1,n)*mp.rf(M+a+b+c+2,n)*mp.rf(a+1,M-n)/(mp.rf(c+1,n)*mp.rf(b+c+n+1,M+1))
def f(h,M,u,v):
 a,b,c=[2*x-1 for x in h]
 z=sum(mp.rf(-v,j)*mp.rf(v+b+c+1,j)*mp.rf(-u,j)*mp.rf(u+a+b+1,j)/(mp.rf(b+1,j)*mp.rf(M+a+b+c+2,j)*mp.rf(-M,j)*mp.factorial(j)) for j in range(min(u,v)+1))
 return mp.sqrt(om(u,c,b,a,M)*om(v,a,b,c,M))*z
def cn(n,a,b,c):return (2*n+2*b+2*c-1)*mp.rf(2*b,n)*mp.gamma(2*b+2*c+n-1)/(mp.factorial(n)*mp.rf(2*c,n)*mp.gamma(2*a))
asym=[]
for h,u,v in [((2,1,1),2,1),((1,3,1),1,2),((mp.mpf(7)/3,mp.mpf(7)/6,mp.mpf(7)/6),2,2)]:
 C=mp.sqrt(cn(u,h[2],h[1],h[0])*cn(v,*h))
 vals=[f(h,M,u,v)*mp.power(M,2*h[1])/C for M in (1000,10000,100000)]
 asym.append({'weights':str(h),'u':u,'v':v,'ratios':[str(x) for x in vals]})
 assert abs(vals[-1]-1)<mp.mpf('.001')
out={'direct_polynomial_CG_checks':results,'large_endpoint_asymptotic_checks':asym}
Path(__file__).with_name('cg_endpoint_results.json').write_text(json.dumps(out,indent=2)); print(json.dumps(out,indent=2))
