# Fresh independent inline Sage check, saved after its successful execution.
# This file was not rerun on saving. Requires SageMath.
# The setup and four check expressions below reproduce the successful MCP call.
from sage.all import QQ, PolynomialRing, PowerSeriesRing, FractionField, prod, binomial, factorial

A=PolynomialRing(QQ,'a'); a=A.gen(); K=FractionField(A)
B=PolynomialRing(K, names=('x','y','t')); x,y,t=B.gens()
def rf(v,n): return prod(v+j for j in range(n))
def raise_pair(f): return x*x*f.derivative(x)+y*y*f.derivative(y)+a*(x+y)*f
def g(k): return K(factorial(k)*rf(2*a+k-1,k)/rf(a,k)**2)
def raw(k,f):
    return sum((-1)**r*binomial(k,r)/K(rf(a,r)*rf(a,k-r))*f.derivative(x,r).derivative(y,k-r) for r in range(k+1)).subs({x:t,y:t})
def T(k,f): return (-1)**k*raw(k,f)/g(k)
intertwining=[]; selectivity=[]
for k in range(5):
    for m in range(7):
        f=x**m*y**(6-m)
        intertwining.append(T(k,raise_pair(f)) == t*t*T(k,f).derivative(t)+(2*a+2*k)*t*T(k,f))
    for ell in range(5):
        f=(x-y)**ell
        for n in range(5):
            expected=rf(2*a+2*k,n)*t**n if ell==k else B.zero()
            selectivity.append(T(k,f)==expected)
            f=raise_pair(f)
C=PolynomialRing(QQ,'z'); z=C.gen(); S=PowerSeriesRing(QQ,'z')
h4=(S(z+z*z+z**3)/S((1-z*z)*(1-z**3)*(1-z**4))).add_bigoh(14)

checks = [
    ('Normalized extractor intertwines raising: k=0..4, symbolic Delta, degree-six monomials', all(intertwining)),
    ('Normalized extractor selects exactly its irrep: labels=0..4 and descendants=0..4', all(selectivity)),
    ('N4 dimensions m(12,1)=12 and m(13,1)=16', h4[12] == 12 and h4[13] == 16),
    ('Second extractor tangential correction', raw(2,x**2+y**2)==4/(a*(a+1)) and T(2,(x+y)**2)==-1/(2*a+1)),
]
for label, value in checks:
    print(label, value)
