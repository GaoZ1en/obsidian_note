"""Exact rational tests; intermediate Witt modes are never truncated."""
import sympy as s
from math import factorial
from pathlib import Path
import json
I=s.I

def add(a,b,f=1):
    o=dict(a)
    for k,v in b.items():o[k]=s.expand(o.get(k,0)+f*v)
    return {k:v for k,v in o.items() if v!=0}
def scale(a,f):return {k:s.expand(f*v) for k,v in a.items() if f*v!=0}
def br(a,b):
    o={}
    for m,x in a.items():
        for n,y in b.items():o[m+n]=o.get(m+n,0)-I*(m-n)*x*y
    return {k:s.expand(v) for k,v in o.items() if s.expand(v)!=0}
def high(a):return {k:v for k,v in a.items() if abs(k)>=2}
def B(a,b):return s.expand(sum(I*k*(k*k-1)*v*b.get(-k,0) for k,v in a.items()))
def Ap(z,a,n):
    for _ in range(n):a=br(z,a)
    return a
def omega(z,u,v,n):
    return s.expand(sum(s.Rational((-1)**n,factorial(j+1)*factorial(n-j+1))*B(Ap(z,u,j),Ap(z,v,n-j)) for j in range(n+1)))
def xseries(z,p,R):
    xs=[]
    for r in range(R+1):
        v=scale(high(Ap(z,{p:1},r)),s.Rational((-1)**r,factorial(r)))
        for j in range(1,r+1):v=add(v,high(Ap(z,xs[r-j],j)),-s.Rational((-1)**j,factorial(j+1)))
        xs.append(v)
    return xs

def dH(z,u,p,n):
    v={p:1};dv={}
    for _ in range(n-1):dv=add(br(u,v),br(z,dv));v=br(z,v)
    return s.expand(s.Rational((-1)**(n-1),factorial(n))*(B(u,v)+B(z,dv)))

def main():
    z={-4:s.Rational(2,7),-3:s.Rational(1,5),-2:s.Rational(3,8),2:s.Rational(-1,6),3:s.Rational(2,9),4:s.Rational(1,11)}
    checks=0
    for p in range(-4,5):
        xs=xseries(z,p,4)
        for k in (-3,-2,2,3):
            u={k:1}
            for t in range(5):
                value=s.expand(sum(omega(z,xs[j],u,t-j) for j in range(t+1))+dH(z,u,p,t+1))
                assert value==0,(p,k,t,value)
                checks+=1
    xs=xseries(z,0,4)
    assert xs[0]=={} and xs[1]=={k:I*k*v for k,v in z.items()}
    assert all(x=={} for x in xs[2:])
    # Scalar indicial / resonant trace coefficients.
    D=(1+s.sqrt(5))/2;ss=2*D
    assert s.simplify(ss*(ss-2)-4)==0
    T=s.simplify(-D*(2*D-3))
    logcoef=s.simplify(-2*T/(2*ss-2))
    assert s.simplify(logcoef-(3-s.sqrt(5))/(2*s.sqrt(5)))==0
    result={'hamiltonian_identity_checks_through_kappa3':checks,'X0_exact_through_kappa3':True,'exceptional_trace_log_coefficient':str(logcoef),'intermediate_mode_truncation':False}
    Path(__file__).with_name('classical_checks.json').write_text(json.dumps(result,indent=2))
    print(result)
if __name__=='__main__':main()
