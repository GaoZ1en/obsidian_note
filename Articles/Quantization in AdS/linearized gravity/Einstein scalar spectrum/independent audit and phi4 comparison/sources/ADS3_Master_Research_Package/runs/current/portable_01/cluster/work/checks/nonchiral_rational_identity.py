"""Independent Delta=2, u=1 determinant reconstruction from finite Racah sums."""
import json
import sys
from pathlib import Path
import sympy as s
if sys.flags.optimize:
    raise RuntimeError("Assertions must be active.")
t=s.symbols("t")
def omega(n,R):
    return s.cancel((2*n+3)*(n+1)*(n+2)*(R-n+1)*s.rf(R+5,n)/s.rf(R+1,n+3))
def hyper(k,r,R):
    return s.cancel(sum(s.rf(-k,j)*s.rf(k+3,j)*s.rf(-r,j)*s.rf(r+3,j)/
                        (s.rf(2,j)*s.rf(R+5,j)*s.rf(-R,j)*s.factorial(j))
                        for j in range(min(k,r)+1)))
atoms={(0,0):s.Rational(24,5),(2,0):s.Rational(8,35),
       (1,1):s.Rational(312,35),(3,1):s.Rational(8,21)}
def factor(R,u,eta):
    labels=[a for a in atoms if a[1]<=u and (not isinstance(R,int) or a[0]<=R)]
    mat=s.eye(len(labels))
    for i,(k,l) in enumerate(labels):
        for j,(r,v) in enumerate(labels):
            weight=omega(r,R)*omega(v,u)*atoms[(r,v)]/(20+atoms[(r,v)])
            mat[i,j]+=2*eta*(-1)**u*hyper(k,r,R)*hyper(l,v,u)*weight
    return s.factor(mat.det(method="domain-ge"))
C=s.symbols("C")
coefficients={
 1:[49512859,-965349490,-36897892656,2531703580048,-55706313971344,
    448355770462944,-804814733494656,-99602839321159680,2354932309885747200,
    -15868616384839680000,22777385983672320000],
 -1:[49512859,-2005422050,59626249104,-2109151550192,39871122618736,
     59239627206624,-13129076943639936,231488302666106880,-1819047222197452800,
     5323530281287680000,22777385983672320000]}
den=49512859*C**4*(C-12)*(C-6)**2*(C-2)**3
results=[]
for eta in (1,-1):
    numerator=sum(c*C**(10-j) for j,c in enumerate(coefficients[eta]))
    claimed=(numerator/den).subs(C,(t+2)*(t+3))
    difference=s.cancel(factor(t,1,eta)-claimed)
    if difference!=0:
        raise AssertionError(f"Nonchiral all-index rational identity failed: {eta}")
    results.append({"eta":eta,"all_index_rational_identity":True,
                    "numerator_coefficients_descending_C":coefficients[eta],
                    "numerator_C_degree":10,"denominator_C_degree":10})
prefix=[factor(n,1,(-1)**n) for n in range(3)]
if prefix!=[s.Rational(25,31),s.Rational(8875,7843),s.Rational(1413125,1388211)]:
    raise AssertionError(("Prefix mismatch",prefix))
out={"scope":"Exact all-index rational determinant for Delta=2,u=1,s=20 from independently assembled finite Racah sums; no original module imports.",
     "rational_identities":results,"prefix":[str(x) for x in prefix],"prefix_pass":True,
     "gamma_decimal_recomputed":False}
Path(__file__).with_name("nonchiral_rational_results.json").write_text(json.dumps(out,indent=2))
print(json.dumps({"all_index_identities":len(results),"prefix":out["prefix"],"passed":True}))
