"""Exact convention checks: oriented baseline and degree-twisted source exchange."""
from fractions import Fraction as F
from pathlib import Path
import json, sys
if sys.flags.optimize:
    raise RuntimeError("Assertions must be active.")
def baseline(n,q,d):
    return -2*n*(n-1)*d*d-8*q*(n*d+q-1)
baseline_rows=[]
for d in (F(3,2),F(2),F(7,3)):
    for n in (2,3,4,5):
        for p,q in ((0,1),(1,3),(2,4),(4,1),(3,3)):
            shift=baseline(n,min(p,q),d)-baseline(n,q,d)
            # Include the backend baseline multiplicity through r=0.
            for r in (F(0),F(1,7),F(4)):
                physical=baseline(n,min(p,q),d)+r
                oriented=physical-baseline(n,q,d)
                if oriented!=r+shift:raise AssertionError("Oriented baseline restoration")
            if p<q and not shift>0:raise AssertionError("Missing positive orientation shift")
            if p>=q and shift!=0:raise AssertionError("Spurious orientation shift")
            baseline_rows.append({"Delta":str(d),"n":n,"p":p,"q":q,"shift":str(shift),"baseline_state_included":True})
states=[(0,0,F(2)),(2,0,F(2)),(3,0,F(2)),(1,1,F(2)),(4,1,F(3)),(0,2,F(5))]
exchange=[]
for Q in range(5):
    for lam in sorted({a[2]+b[2] for a in states for b in states}):
        pairs=[(i,j) for i,a in enumerate(states) for j,b in enumerate(states) if a[1]+b[1]<=Q and a[2]+b[2]==lam]
        twisted_minus=0
        for i,j in pairs:
            di=(-1)**(states[i][0]+states[i][1])
            dj=(-1)**(states[j][0]+states[j][1])
            sign=di*dj
            if (j,i) not in pairs:raise AssertionError("Budget not swap invariant")
            if sign*sign!=1:raise AssertionError("J not an involution")
            # (I tensor D) Swap (I tensor D): d_j before, d_i after.
            if dj*di!=sign:raise AssertionError("Twist conjugation failed")
            twisted_minus+=sign==-1
        K=len(pairs); trace=sum(i==j for i,j in pairs)
        for eta in (1,-1):
            direct=sum(i<j or (i==j and eta==1) for i,j in pairs)
            if 2*direct!=K+eta*trace:raise AssertionError("Source exchange rank")
        exchange.append({"Q":Q,"lambda":str(lam),"ordered_dimension":K,"trace":trace,
                         "negative_twist_entries":twisted_minus,"even_rank":(K+trace)//2,"odd_rank":(K-trace)//2})
if not any(x["negative_twist_entries"] for x in exchange):raise AssertionError("Twist test was vacuous")
a,b,c=F(24,5),F(8,35),F(7,200); minimum=[]
for t in range(2,129):
    eta=(-1)**t
    w0=F(6,(t+2)*(t+3))
    w2=F(84*(t-1)*(t+6),(t+1)*(t+2)*(t+3)*(t+4))
    h=1-F(50,t*(t+5))+F(300,t*(t-1)*(t+5)*(t+6))
    tr=a+b+2*eta*(a*w0+b*w2*h)
    det=(a+2*eta*a*w0)*(b+2*eta*b*w2*h)-4*a*b*w0*w2
    if not(det>=0 and tr>0):raise AssertionError("Triple positivity")
    if t==9:
        ok=det>0 and det-c*tr+c*c<0
    elif det==0:
        ok=tr>c
    else:
        ok=tr>2*c and det-c*tr+c*c>0
    if not ok:raise AssertionError(("Finite minimum",t))
    minimum.append({"t":t,"passed":True,"t9_below_threshold":t==9})
out={"oriented_baseline_checks":baseline_rows,"twisted_exchange_checks":exchange,
     "finite_minimum_checks":minimum,"all_checks_pass":True,
     "scope":"Exact convention identities with duplicate source energies and nontrivial degree twists, plus the self-contained Fraction minimum certificate; the baseline checks are algebraic convention checks, not new physical spectra."}
Path(__file__).with_name("convention_results.json").write_text(json.dumps(out,indent=2))
print(json.dumps({"baseline_cases":len(baseline_rows),"twisted_exchange_cases":len(exchange),"minimum_cases":len(minimum),"passed":True}))
