"""Supplemental general-odd check, requested after the blind quintic derivation."""
from sage.all import QQ, factorial, binomial, prod
import json
k=3
m=2*k
n=m+1
D=QQ(m)/(m-1)
a=n*D/2-1
b=1-(n-2)*D/2
rf=lambda x,j: prod(x+i for i in range(j))
I2=[QQ(1)/(2**(n-2)*4)*rf(b,j)**2/rf(a,j+1)**2 for j in range(k)]

def shift(j,N):
    ans=QQ(0)
    if j==0:
        for c in range(n+1):
            aa=n-c
            if aa<=N:
                M=N-aa+c
                ans+=I2[0]*factorial(N)*factorial(M)/(factorial(N-aa)**2*factorial(c)**2*factorial(aa)**2*((aa-c)*D))
    else:
        for c in range(m+1):
            aa=m-c
            if aa<=N:
                M=N-aa+c
                ans+=I2[j]*factorial(N)*factorial(M)/(factorial(N-aa)**2*factorial(c)**2*factorial(aa)**2*((aa-c)*D-(D+2*j)))
    return ans

parts=[sum((-1)**(m-N)*binomial(m,N)*shift(j,N) for N in range(m+1)) for j in range(k)]
assert sum(parts)==-QQ(168524890325)/523590680051712
assert all(x<0 for x in parts)
for kk in range(1,31):
    mm=2*kk
    for v in range(kk):
        t=QQ(2*v+1)-QQ(v)/kk
        F=sum(QQ(binomial(mm,r))**2/(2*r-mm-t) for r in range(mm+1))
        mid=sum(QQ(binomial(mm,r))**2/(2*r-mm-(2*v+1)) for r in range(mm+1))
        assert F<=mid<0, (kk, v, t, F, mid, type(F), type(mid))
print(json.dumps({'allPassed':True, 'n7_B6_pi5_parts':[str(x) for x in parts],
                 'n7_B6_pi5':str(sum(parts)), 'negativity_exact_k_max':30}, indent=2))
