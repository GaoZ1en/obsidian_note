"""Exact symbolic application of the stated UN-03/04 pair-defect theorem.
This is an application/consistency check, not an independent proof of that theorem.
All values are divided by c0 = 1/[8*pi*(2*Delta-1)] (coefficient of lambda).
"""
from sage.all import *
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
F=FractionField(PolynomialRing(QQ,'d')); d=F.gen()
C=lambda k:(d+k)*(d+k-1)
s=-1/(2*(2*d+1))
r=lambda k:-1-s*(C(k)-C(0))
v=(2*d+5)/(2*d+1); w=2*(2*d+7)/(2*d+1)
assert r(2)==0 and r(4)==v and r(6)==w
for k in range(4,31,2):
    assert r(k)==v+(C(k)-C(4))/(2*(2*d+1))
Dstar=15*(2*d+7)*(d+5)*v+(2*d+3)*(d+2)*w
epsilon=27*v*w*(d+3)*(d+4)*(2*d+9)/(2*(2*d+5)*Dstar)
assert epsilon==27*(d+3)*(d+4)/((2*d+1)*(17*d+43))
def alpha(p,k):
    return binomial(p,k)*prod(d+i for i in range(p))/(prod(2*d+k-1+i for i in range(k))*prod(2*d+2*k+i for i in range(p-k)))
rows=[]
for p in range(2,13):
    sigma=2*sum(alpha(p,k)*(-1) for k in range(2,p+1,2))
    assert sigma==2*prod(d+i for i in range(p))/prod(2*d+i for i in range(p))-1
    gap=sigma-s*d*p
    assert (gap==0)==(p in (2,3))
    rows.append({'p':p,'slope_over_c0':str(sigma),'shifted_gap_over_c0':str(gap)})
assert (2*prod(d+i for i in range(4))/prod(2*d+i for i in range(4))-1)-s*d*4==d*(d+1)*v/(2*(2*d+3)*(2*d+5))
report={'status':'passed','scope':'Exact substitution into UN03/04 plus independent endpoint-weight sums; theorem hypotheses retained','s_over_c0':str(s),'r4_over_c0':str(v),'r6_over_c0':str(w),'epsilon_over_c0':str(epsilon),'all_even_defect_proof':'r_k=r4+(C_k-C4)/(2(2Delta+1))>0 for even k>=4 and Delta>1; not inferred from finite scan','rows':rows}
out=ROOT/'results'/'stable_contact_comparison.json';out.write_text(json.dumps(report,indent=2)+'\n'); print(report['epsilon_over_c0']);print(out)
