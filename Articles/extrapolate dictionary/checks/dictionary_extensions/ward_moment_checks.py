#!/usr/bin/env python3
"""Exact finite-switch Ward, Hankel contact, and future-fiber checks."""
import json, sys
from pathlib import Path
import sympy as s

res={}
def ck(name,expr):
    val=s.simplify(s.expand(expr))
    assert val==0,(name,val)
    res[name]=str(val)

# Full Brown--York + retained BF normalization.
g,C,V,ch=s.symbols("g C V chi")
tau4=-g*C/6
divC,AA,derchi,derV=s.symbols("divC A dchi dV")
divh4=-g*divC/6+g*AA/2
ck("full_stress_trace",2*tau4/g-8*tau4/g-4*ch*V-(C-4*ch*V))
ck("full_stress_divergence",
   2*divh4/g+divC/3-derchi*V-ch*derV-(AA-derchi*V-ch*derV))

# Exact beta-removal primitives, using only the covariant conservation law.
u=s.symbols("u",positive=True)
Z=s.Function("Z")(u); P=s.Function("P")(u); U=s.Function("U")(u)
Ttrace=-u*s.diff(Z,u)+2*Z-u*P
divdivT=-s.diff(P,u)+3*P/u
ck("C_beta_primitive",Ttrace/u**3+divdivT/(2*u)
   +s.diff(Z/u**2+P/(2*u),u))
ck("A_beta_primitive",(-s.diff(U,u)+3*U/u)/u**3+s.diff(U/u**3,u))

# Distribution normal form: f(d) delta^(n)(d) is reduced at d=0.
d,x,c=s.symbols("d x c",real=True)
def normal(terms):
    out={}
    for n,f in terms.items():
        for j in range(n+1):
            v=(-1)**j*s.binomial(n,j)*s.diff(f,d,j).subs(d,0)
            out[n-j]=s.expand(out.get(n-j,0)+v)
    return {n:s.simplify(v) for n,v in out.items()}
def ck_dist(name,terms):
    red=normal(terms)
    for n,val in red.items(): ck(f"{name}_delta{n}",val)
# K^i Mbar_ij=(y-x) k_j I1=0.
ck_dist("M_transverse",{0:-2*d})
# K K A=(c-x)(y-x), I3=-8(x delta''+delta'), J=2(x delta'+delta).
K2=2*c-2*x+d  # y=x-d, K dot K=2c-x-y
# K K N = A_contracted I3 + 4 K2*J.
Acon=-(c-x)*d
terms={2:-8*x*Acon,1:-8*Acon+8*K2*x,0:8*K2-4*(2*c-4*x)}
ck_dist("C_unswitched_Ward",terms)

# Check the positive-half-line contact by testing an arbitrary quadratic jet.
# D_x[theta(v)delta(d)] in (v,d), d=x-y,v=(x+y)/2:
# v_+ delta''(d) - (1/4)delta(v)delta(d).
# Integration by parts along the diagonal supplies the corner coefficient.
v=s.symbols("v",positive=True)
f=s.exp(-2*v)  # independent nontrivial trace jet
ck("Hankel_corner_coefficient",
   s.integrate(s.diff(v*f,v,2),(v,0,s.oo))+1)

# Future-total lightfront fiber, s(K)=Y, K+=(P), q+=(zeta P).
eta=s.Matrix([[0,-s.Rational(1,2),0,0],
              [-s.Rational(1,2),0,0,0],[0,0,1,0],[0,0,0,1]])
z,Y,B,w1,w2=s.symbols("zeta Y B w1 w2",positive=True)
cc=z*(1-z); bb=z-s.Rational(1,2); LL=cc*Y
K=s.Matrix([B,Y/B,0,0])
q=s.Matrix([z*B,(d+(1-z)*Y)/B,w1,w2])
k=K-q
dot=lambda a,b:(a.T*eta*b)[0]
mass=lambda a:-dot(a,a)
xx,yy=mass(q),mass(k)
ck("fiber_mass_difference",xx-yy-d)
ck("fiber_mean_mass",(xx+yy)/2-(LL-w1*w1-w2*w2+bb*d))
ck("fiber_corner_cancellation",-8*bb*bb+2-8*cc)
ql,kl=eta*q,eta*k
A=-(ql*kl.T+kl*ql.T)+eta*(dot(q,k)-xx)
def disk(expr,L=LL):
    ans=0
    for (i,j),coef in s.Poly(s.expand(expr),w1,w2).terms():
        if i%2 or j%2: continue
        a,b=i//2,j//2
        ans+=coef*s.pi*L**(a+b+1)*s.factorial(2*a)*s.factorial(2*b)/(
            4**(a+b)*s.factorial(a)*s.factorial(b)*s.factorial(a+b+1))
    return s.expand(ans)
def surface(expr):
    H=s.symbols("L",positive=True)
    return s.diff(disk(expr,H),H).subs(H,LL)
def weighted(expr):
    return s.expand(LL*disk(expr)-disk((w1*w1+w2*w2)*expr))
def i3_fiber(expr):
    return (-4*weighted(s.diff(expr,d,2).subs(d,0))
            -8*bb*disk(s.diff(expr,d).subs(d,0))
            +4*cc*surface(expr.subs(d,0)))
def j_fiber(expr):
    # J=partial_x[x I1], formula from v,d variables.
    return ((1-z)*disk(expr.subs(d,0))
            -weighted(s.diff(expr,d).subs(d,0)))
M=s.zeros(4);N=s.zeros(4)
for i in range(4):
    for j in range(i,4):
        M[i,j]=M[j,i]=s.simplify(s.integrate(disk(A[i,j].subs(d,0)),(z,0,1)))
        N[i,j]=N[j,i]=s.simplify(s.integrate(
            i3_fiber(A[i,j])+4*eta[i,j]*j_fiber(s.Integer(1)),(z,0,1)))
Kl=eta*K
Mt=-s.pi*Y*(Y*eta+Kl*Kl.T)/15
Nt=2*s.pi*Y*eta/15-4*s.pi*Kl*Kl.T/15
for i in range(4):
    for j in range(i,4):
        ck(f"integrated_M_fiber_{i}{j}",M[i,j]-Mt[i,j])
        ck(f"integrated_N_fiber_{i}{j}",N[i,j]-Nt[i,j])
for j in range(4):
    ck(f"integrated_M_transverse_{j}",(K.T*M)[j])
    ck(f"integrated_KN_margin_{j}",(K.T*N)[j]-2*s.pi*Y*Kl[j]/5)
ck("I1_fiber",s.integrate(disk(s.Integer(1)),(z,0,1))-s.pi*Y/6)
ck("I3_fiber",s.integrate(i3_fiber(s.Integer(1)),(z,0,1))-2*s.pi/3)
ck("J_fiber",s.integrate(j_fiber(s.Integer(1)),(z,0,1))-s.pi*Y/12)

# Logarithmic normal-form integrals controlling the actual switched lift.
b,L=s.symbols("b L",positive=True)
I0=s.log((L+b)/b)
IY=L-b*I0
IY2=I0-L/(L+b)
ck("retarded_integral_Y_over_Yb",
   s.integrate(Y/(Y+b),(Y,0,L))-IY)
ck("retarded_integral_Y_over_Yb_squared",
   s.integrate(Y/(Y+b)**2,(Y,0,L))-IY2)

# Counterterm splitting and simultaneous Weyl transformation at linear metric order.
ct,jj,th,tbar,chi,sig=s.symbols("ct jj trh trbar chi sigma")
Wct=ct*jj*(1-tbar/2-chi*(th-tbar)/2)/2
ck("physical_ct_weight",s.diff(Wct,th)+ct*jj*chi/4)
ck("anchor_ct_weight",s.diff(Wct,tbar)+ct*jj*(1-chi)/4)
ck("total_ct_weight",s.diff(Wct,th)+s.diff(Wct,tbar)+ct*jj/4)
ww=s.exp(4*sig)*s.exp(-4*sig)
ck("nonderivative_finite_ct_Weyl_invariant",s.diff(ww,sig))
ck("BF_source_anomaly_normalization",
   s.diff((ct+2*s.pi**2*sig)*jj*ww/2,sig).subs(sig,0)-s.pi**2*jj)

out={"status":"all exact residuals passed","sympy_version":s.__version__,
     "exact_zero_count":len(res),"residuals":res,
     "I1_future_fiber":"pi*Y/6 * theta(Y)",
     "I3_future_fiber":"2*pi/3 * theta(Y)",
     "Mbar_future_fiber":"-pi/15 * Y*(Y*eta + K_lower*K_lower) * theta(Y)",
     "N_future_fiber":"(2*pi/15*Y*eta - 4*pi/15*K_lower*K_lower) * theta(Y)",
     "scope":"Tree-level fixed-normalization BF scalar/stress sector; exact symbolic identities, not an all-order IIB theorem."}
Path(__file__).with_name("ward_moment_results.json").write_text(json.dumps(out,indent=2)+"\n")
print(json.dumps(out,indent=2))
