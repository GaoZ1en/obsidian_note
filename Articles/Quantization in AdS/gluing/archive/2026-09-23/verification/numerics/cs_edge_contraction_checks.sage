from itertools import product
out={}
G=SymmetricGroup(3); gs=list(G)
# Triangle: collapse edge 0->1. Gauge U_uv -> h_v^-1 U_uv h_u.
ok=True
for a,b,c in product(gs,repeat=3):
    hs=[G.one(),a,G.one()]
    normalized=[hs[1]**(-1)*a*hs[0],hs[2]**(-1)*b*hs[1],hs[0]**(-1)*c*hs[2]]
    ok=ok and normalized[0]==G.one() and normalized[2]*normalized[1]==c*b*a
out['S3 triangle tree slice all 216 connections']=ok
# Exact free-group words retain a cycle, preserve a face relator, and intertwine arbitrary gauges.
F=FreeGroup(['a','b','c','h0','h1','h2']);a,b,c,h0,h1,h2=F.gens()
ap=h1**(-1)*a*h0;bp=h2**(-1)*b*h1;cp=h0**(-1)*c*h2
out['free group cycle covariance']=(cp*bp*ap==h0**(-1)*(c*b*a)*h0)
out['free group contracted arrow covariance']=(bp*ap==h2**(-1)*(b*a)*h0)
out['nontrivial cycle is not deleted']=(c*b*a!=F.one())
# SU(2) fusion independently from the representation-ring quotient R(SU2)/(chi_{k+1}).
R=PolynomialRing(QQ,'x');x=R.gen()
chi=[R.one(),x]
for t in range(2,15):chi.append(x*chi[-1]-chi[-2])
cases=0; good=True
for k in range(1,7):
    for a,b in product(range(k+1),repeat=2):
        product_mod=(chi[a]*chi[b]).mod(chi[k+1])
        prescribed=sum((chi[c] for c in range(abs(a-b),min(a+b,2*k-a-b)+1,2)),R.zero())
        good=good and product_mod==prescribed
        cases+=1
out['SU2 representation quotient vs fusion formula (%s pairs)'%cases]=good
Q=R.quotient(chi[2],'q')
out['SU2 level 1 spin half squared is vacuum']=(Q(x)**2==Q.one())
print(out)
assert all(v is True for v in out.values())
