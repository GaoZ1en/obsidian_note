"""Exact leading resonance multiplicities; additional finite evidence, not the all-n proof."""
import sys,json
sys.path.insert(0,'stable_work')
from independent_contact import *
d=s.symbols('d');out=[]
def centered_shell(P,Q):
    modes=[(p,q) for p in range(P+1) for q in range(Q+1) if p+q>=2]
    ans=[]
    def rec(start,p,q,state):
        if not p and not q:ans.append(tuple(state));return
        for i in range(start,len(modes)):
            a,b=modes[i]
            if a<=p and b<=q:rec(i,p-a,q-b,state+[(a,b)])
    rec(0,P,Q,[])
    return ans
def g(p,q):return 2*s.binomial(p+q,p)*s.rf(d,p)*s.rf(d,q)/s.rf(2*d,p+q)
for n in range(2,9):
    div=s.factor(g(n,n)-g(n-1,n-1)+1/(2*d+1))
    f=s.Poly(s.fraction(div)[0],d)
    factors=s.factor_list(f.as_expr())[1]
    factor=[h for h,m in factors if any(a>1 for (a,b),m in s.intervals(h,eps=s.Rational(1,10**6)))][0]
    f=s.Poly(factor,d,domain=s.QQ).monic();deg=f.degree()
    def image(v):
        num,den=s.fraction(s.cancel(v));r=(s.Poly(num,d,domain=s.QQ)*s.invert(s.Poly(den,d,domain=s.QQ),f)).rem(f)
        return tuple(r.nth(i) for i in range(deg))
    vals={(p,q):image(g(p,q)-1) for p in range(n+1) for q in range(n+1) if p+q>=2}
    target=vals[(n,n)];states=centered_shell(n,n);hits=[]
    for st in states:
        if tuple(sum(vals[a][i] for a in st) for i in range(deg))==target:hits.append(st)
    rec={'n':n,'primary_dimension_stable':len(states),'critical_mass_minimal_polynomial':str(f.as_expr()),'resonance_multiplicity':len(hits),'resonant_centered_monomials':hits}
    out.append(rec);print(rec,flush=True)
with open('stable_work/resonant_cluster_counts.json','w') as f:json.dump(out,f,indent=2)
