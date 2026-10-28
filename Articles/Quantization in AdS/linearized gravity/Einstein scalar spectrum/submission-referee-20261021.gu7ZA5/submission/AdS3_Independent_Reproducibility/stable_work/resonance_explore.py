import sys,json
sys.path.insert(0,'stable_work')
from independent_contact import *
d=s.symbols('d',positive=True)
g={n:s.factor(vertex((0,0),(n,n),(0,0),(n,n),d)) for n in range(1,9)}
out={}
for n in range(2,9):
    div=s.factor(g[n]-g[n-1]+1/(2*d+1))
    coup=s.factor(vertex((1,1),(n-1,n-1),(0,0),(n,n),d))
    numerator=s.Poly(s.fraction(div)[0],d)
    real=s.polys.polytools.intervals(numerator,eps=s.Rational(1,10**12))
    phys=[((a,b),mult) for (a,b),mult in real if a>1]
    cg=s.Poly(s.fraction(coup)[0],d)
    gcd=s.gcd(numerator,cg)
    print(n,'g',g[n],'div',div,'coup',coup,'roots',[(float(a),float(b)) for (a,b),m in phys],'gcd',gcd.as_expr(),flush=True)
    signs=[s.sign(x) for x in s.Poly(numerator.as_expr().subs(d,d+1),d).all_coeffs() if x]
    out[n]={'g':str(g[n]),'divisor':str(div),'coupling':str(coup),'physical_root_intervals':[(str(a),str(b),int(m)) for (a,b),m in phys],'gcd':str(gcd.as_expr()),'sign_variations_after_shift':sum(int(a!=b) for a,b in zip(signs,signs[1:]))}
with open('stable_work/resonance_results.json','w') as f:json.dump(out,f,indent=2)
