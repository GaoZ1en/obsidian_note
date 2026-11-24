"""Independent contact audit. Run: sage --nodotsage ward_contact_audit.py
No project code imports. Exact Gaussian-rational arithmetic via SymPy in Sage.
Coordinates: R(x,tau)=R(x+i*tau), L(x,tau)=L(x-i*tau).
FP is homogeneous in epsilon; scale epsilon=1 after retaining Taylor order P-1.
The real-line rational integral is i*pi*(Res_upper-Res_lower); combined
bosonic commutator has zero 1/s tail, where this agrees with closing above.
"""
from math import factorial
import sympy as S

I, pi = S.I, S.pi
s = S.Symbol('s')

# A field is (species, derivative); lexical L precedes R, derivative ascending.
# Moving an LL block across an RR block has even parity, so the input
# four-fermion monomials retain their displayed coefficients.
def add(out, key, value):
    out[key] = out.get(key, 0) + value

def clean(out):
    return {k:S.simplify(v) for k,v in out.items() if S.simplify(v) != 0}

def canon(fields):
    if len(set(fields)) != len(fields):
        return 0, ()
    inv = sum(fields[i] > fields[j] for i in range(len(fields)) for j in range(i+1,len(fields)))
    return (-1)**inv, tuple(sorted(fields))

def mon(coef, fields):
    sign,key = canon(fields)
    return {key:S.sympify(coef)*sign} if sign else {}

def plus(*args):
    out={}
    for a in args:
        for k,v in a.items(): add(out,k,v)
    return clean(out)

def scale(a,c): return clean({k:c*v for k,v in a.items()})

def deriv(a,n=1):
    for _ in range(n):
        out={}
        for k,c in a.items():
            for j,(sp,d) in enumerate(k):
                fs=list(k); fs[j]=(sp,d+1)
                sign,key=canon(fs)
                if sign: add(out,key,sign*c)
        a=clean(out)
    return a

def compositions(n,m):
    if m==0:
        if n==0: yield ()
        return
    if m==1:
        yield (n,); return
    for a in range(n+1):
        for rest in compositions(n-a,m-1): yield (a,)+rest

# enumerate partial cross matchings with fermionic Wick signs.
def matchings(fields, nleft):
    # Inactive retained fermions remain in the list for Wick sign counting.
    def step(remaining,pairs,sign,inactive):
        active=[q for q in remaining if q<nleft and q not in inactive]
        if not active:
            yield pairs,remaining,sign; return
        a=active[0]
        yield from step(remaining,pairs,sign,inactive|{a})
        for b in remaining:
            if b>=nleft and fields[a][0]==fields[b][0]:
                ia,ib=remaining.index(a),remaining.index(b)
                sign2=sign*(-1)**(ib-ia-1)
                rem=[q for q in remaining if q not in (a,b)]
                yield from step(rem,pairs+[(a,b)],sign2,inactive)
    yield from step(list(range(len(fields))),[],1,set())

# Coefficient for derivative contraction at ordered upper/lower endpoints.
# z = direction*s + i*chirality, chirality R:+1,L:-1.
def contraction(spec,a,b,direction):
    chir=1 if spec=='R' else -1
    p=a+b+1
    c=chir*I/(2*pi) * (-1)**a * factorial(a+b)
    # d_upper^a d_lower^b (z^-1): (-1)^a (a+b)!.
    return c, p, direction, chir

_rescache={}
def integrated_poly(poly,p,q):
    """i times real-line integral; poles (-i)^p,(+i)^q."""
    poly=S.sympify(poly); p=int(p); q=int(q)
    key=(S.expand(poly),p,q)
    if key in _rescache: return _rescache[key]
    # exact residue from finite derivative, much faster than generic residue.
    out=0
    if q:
        out -= pi*S.diff(poly/(s+I)**p,s,q-1).subs(s,I)/factorial(q-1)
    if p:
        out += pi*S.diff(poly/(s-I)**q,s,p-1).subs(s,-I)/factorial(p-1)
    out=S.simplify(out)
    _rescache[key]=out
    return out

def bracket(a,b,legs=None,verbose=False):
    out={}
    for ka,ca in a.items():
      for kb,cb in b.items():
       for reverse in (False,True):
        # First product A(y,+)B(x,-); reverse B(x,+)A(y,-).
        left,right=(kb,ka) if reverse else (ka,kb)
        fs=list(left+right); nl=len(left)
        direction=-1 if reverse else 1
        for pairs,rem,sgn in matchings(fs,nl):
          if not pairs or (legs is not None and len(rem)!=legs): continue
          pref=ca*cb*sgn*(-1 if reverse else 1)
          p=q=0
          for j,k in pairs:
            coeff,powr,di,chir=contraction(fs[j][0],fs[j][1],fs[k][1],direction)
            pref*=coeff
            # (-s+i*chir)^-powr = (-1)^powr*(s-i*chir)^-powr
            if reverse:
                pref*=(-1)**powr; chir=-chir
            if chir==1: p+=powr
            else: q+=powr
          N=p+q-1
          # Endpoint analytic coordinates relative to x, tau=0.
          zs=[]
          for j in rem:
            chir=1 if fs[j][0]=='R' else -1
            if not reverse:
                zs.append(s+chir*I/2 if j<nl else -chir*I/2)
            else:
                zs.append(chir*I/2 if j<nl else s-chir*I/2)
          for ns in compositions(N,len(rem)):
            fnew=[(fs[j][0],fs[j][1]+n) for j,n in zip(rem,ns)]
            sign,key=canon(fnew)
            if not sign: continue
            poly=S.prod(z**n/S.factorial(n) for z,n in zip(zs,ns))
            integral=integrated_poly(poly,p,q)
            if integral: add(out,key,pref*sign*integral)
    return clean(out)

R=lambda d:('R',d)
L=lambda d:('L',d)
r=mon(-I/2,[R(0),R(1)])
l=mon(I/2,[L(0),L(1)])
h0=plus(r,l)
F=mon(1,[R(0),R(1),L(0),L(1)]) # -4*r*l = -F
V1=scale(F,-1)
kappa=1/(48*pi)
h1=plus(V1,scale(deriv(h0,2),4*kappa))
Qden=plus(mon(I,[R(0),R(5)]),mon(-I,[L(0),L(5)]))
A=plus(mon(1,[R(0),R(3),L(0),L(1)]),mon(1,[R(0),R(1),L(0),L(3)]))
B=plus(mon(1,[R(1),R(2),L(0),L(1)]),mon(1,[R(0),R(1),L(1),L(2)]))
C6=mon(1,[R(0),R(2),L(0),L(2)])

def show(label,a):
    print(label)
    for k,v in sorted(a.items()): print(' ',k,':',v)
    if not a: print('  ZERO')

def d0(a):
    """Free time derivative D0 R=-R', D0 L=+L'."""
    out={}
    for k,c in a.items():
        for j,(sp,d) in enumerate(k):
            fs=list(k); fs[j]=(sp,d+1)
            sign,key=canon(fs)
            if sign: add(out,key,sign*c*(-1 if sp=='R' else 1))
    return clean(out)

# A second implementation for the Jacobi coefficient. It neither enumerates
# Wick matchings nor Taylor-composes multiple uncontracted fields. Instead it
# factors the full LL contraction as a 2x2 determinant and integrates RR7
# by parts analytically before taking residues.
def con(ch,a,b,direction):
    return ch*I/(2*pi)*(-1)**a*factorial(a+b)/(direction*s+ch*I)**(a+b+1)

def ll(a,b,m,n,direction):
    return -con(-1,a,m,direction)*con(-1,b,n,direction)+con(-1,a,n,direction)*con(-1,b,m,direction)

def integrate_rational(expr):
    expr=S.cancel(expr)
    ru=S.residue(expr,s,I); rl=S.residue(expr,s,-I)
    tail=S.simplify(S.limit(s*expr,s,S.oo))
    return S.simplify(-pi*(ru-rl)),tail

def outer_one(gen_coef,la,lb,cubic_coef,lm,ln,rk):
    f=ll(la,lb,lm,ln,1)*(con(1,1,rk,1)*(s+I/2)**7/factorial(7)-con(1,0,rk,1)*(s+I/2)**6/factorial(6))
    rev=ll(lm,ln,la,lb,-1)*(con(1,rk,0,-1)*(s-I/2)**6/factorial(6)-con(1,rk,1,-1)*(s-I/2)**7/factorial(7))
    return gen_coef*cubic_coef*(f-rev)

def rpair_integrated(direction):
    delta=-s-I if direction==1 else s-I
    out=0
    for a,b,sg,d,e in [(0,0,-1,1,1),(0,1,1,1,0),(1,0,1,0,1),(1,1,-1,0,0)]:
        n=7-d-e
        out+=sg*con(1,a,b,direction)*(-1)**d*delta**n/factorial(n)
    return out

def determinant_jacobi():
    xe=sum(outer_one(-1,0,1,coef,lm,ln,rk) for coef,lm,ln,rk in
           [(-I/2,0,2,1),(-I/4,0,3,0),(-I/4,1,2,0)])
    ye=sum(outer_one(S.Rational(1,4),0,2,coef,lm,ln,rk) for coef,lm,ln,rk in
           [(2*I,0,1,1),(I,0,2,0)])
    ze=-S.Rational(1,4)*(ll(0,1,0,2,1)*rpair_integrated(1)-ll(0,2,0,1,-1)*rpair_integrated(-1))
    x,tx=integrate_rational(xe); y,ty=integrate_rational(ye); q,tq=integrate_rational(ze)
    z=S.simplify(-2*I*q) # i[q*integral RR7,R] = -2i*q R7
    return (x,y,z,S.simplify(x-y-z)),(tx,ty,tq),q

def audit():
    print('SymPy',S.__version__)
    free=bracket(h0,mon(1,[R(0),R(1)]),legs=2)
    assert free==mon(-1,[R(0),R(2)])
    assert bracket(h0,mon(1,[R(0)]))==mon(-1,[R(1)])
    show('Free sanity C(H0,RR1)',free)
    first=bracket(V1,h0)
    show('C(V1,h0)',first)
    first_residual=plus(d0(h1),first)
    show('First energy Ward local residual D0 h1+C(V1,h0)',first_residual)
    assert first_residual=={}
    # At any finite epsilon, the double integral C(V1,V1)=0 by x<->y.
    # This identity uses no equal-time-algebra assumption and no Jacobi.
    print('Integrated C(V1,V1)=0: exact endpoint-swap identity at finite epsilon.')
    show('C(V1,V1): local pure chiral (not zero)',bracket(V1,V1,legs=2))
    source=bracket(V1,h1,legs=2)
    qsource=bracket(Qden,h0,legs=2)
    asource=bracket(A,h0,legs=2)
    csource=bracket(C6,h0,legs=2)
    show('C(V1,h1): pure chiral',source)
    show('C(Q5,h0): pure chiral',qsource)
    show('C(K42,h0): pure chiral',asource)
    show('C(K33,h0): pure chiral',csource)
    a,b,c,u,v,w=S.symbols('a b c u v w')
    hpure=plus(scale(Qden,a),mon(I*b,[R(1),R(4)]),mon(-I*b,[L(1),L(4)]),
               mon(I*c,[R(2),R(3)]),mon(-I*c,[L(2),L(3)]))
    ward=plus(d0(hpure),source,scale(qsource,u),scale(asource,v),scale(csource,w))
    keys=[(R(0),R(6)),(R(1),R(5)),(R(2),R(4))]
    eqs=[S.simplify(ward[k]/I) for k in keys]
    print('Pure R Ward coefficients after dividing by i:',eqs)
    sol=S.solve(eqs,[a,b,c],dict=True)[0]
    norm=S.simplify((a-b+c-u).subs(sol))
    print('Pure normalization a-b+c-u after Ward:',norm)
    assert norm==-6*u-1/(30*pi**2)
    unec=S.solve(norm,u)[0]
    assert unec==-1/(180*pi**2)
    print('Necessary u from local pure Ward and integral h2=V2:',unec)

    g=mon(S.Rational(1,4),[R(0),R(1),L(0),L(2)])
    rr=mon(1,[R(0)])
    dvr=bracket(V1,rr); dgr=bracket(g,rr)
    show('D_V R',dvr); show('D_G R',dgr)
    x=bracket(V1,dgr,legs=1); y=bracket(g,dvr,legs=1)
    vg=bracket(V1,g,legs=2); z=bracket(vg,rr,legs=1)
    jac=plus(x,scale(y,-1),scale(z,-1))
    show('D_V D_G R one-fermion',x);show('D_G D_V R one-fermion',y)
    show('C(V,g) local bilinear',vg);show('D_C(V,g) R one-fermion',z)
    show('Jacobi defect ([D_V,D_G]-D_C(V,g))R one-fermion',jac)
    expected=-S.Rational(1079,41287680)/pi**2
    assert jac==mon(expected,[R(7)])
    direct,tails,q=determinant_jacobi()
    print('Independent determinant coefficients x,y,z,J:',direct)
    print('Independent determinant 1/s tails:',tails)
    print('Integrated RR7 coefficient in C(V,g):',q)
    assert direct==(x[(R(7),)],y[(R(7),)],z[(R(7),)],expected)
    assert tails==(0,0,0)
    assert q==29*I/(10080*pi**2)
    print('ALL EXACT ASSERTIONS PASSED')

if __name__=='__main__':
    audit()
