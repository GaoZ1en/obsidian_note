"""Offline certificate for homogeneous 11D null LM examples (Python >=3.10).
No dependencies, input files, or output files. eta=(-,+,...,+), vol=012...10,
F0=(10 e012+6 e345+8 e678)^e9; d*F+F^2/2=0. Compare the three relative
handedness choices. Remove constant overall metric scale h^(2/3) and flux
scale h via the classical scaling symmetry; all calculations use this frame.

Forms/Clifford monomials are indexed by bitmasks, not divided components.
The matrix representation uses gamma^0=i Z_0...Z_4 (bit 0 least significant),
gamma^(2k+1)=Z_0...Z_(k-1) X_k, gamma^(2k+2)=Z_0...Z_(k-1) Y_k.
The upper-index volume element thus acts as -1.
"""
from fractions import Fraction as Q
from functools import lru_cache
from collections import defaultdict
from itertools import combinations

I=range(11); PAIRS=list(combinations(I,2)); V=2047; sg=[-1]+[1]*10
one=[{1<<i:1} for i in I]; unit={0:1}; prime=257

@lru_cache(None)
def parity(a,b):
    return (-1)**sum((b% (1<<i)).bit_count() for i in I if a>>i&1)

def plus(*terms):
    out=defaultdict(int)
    for weight,x in terms:
        for a,v in x.items(): out[a]+=weight*v
    return {a:v for a,v in out.items() if v}

def mul(x,y,clifford=False):
    return plus(*[(parity(a,b)*(-1 if clifford and a&b&1 else 1)*v*w,{a^b:1})
                  for a,v in x.items() for b,w in y.items() if clifford or not a&b])

def exterior(*args):
    out=unit
    for x in args: out=mul(out,x)
    return out

def cl(*args):
    out=unit
    for x in args: out=mul(out,x,True)
    return out

def star(x):
    return {V^a:(-1 if a&1 else 1)*parity(a,V^a)*v for a,v in x.items()}

def ix(k,x):
    return plus(*[(parity(1<<i,a^(1<<i))*v*w,{a^(1<<i):1})
                  for i,w in k.items() for a,v in x.items() if a>>i&1])

def d(x,de):
    return plus(*[((-1)**(a%(1<<i)).bit_count()*v,
                   exterior({a%(1<<i):1},de[i],{a&~((2<<i)-1):1}))
                  for a,v in x.items() for i in I if a>>i&1])

def inner(x,y):
    return sum(v*y.get(a,0)*(-1 if a&1 else 1) for a,v in x.items())

@lru_cache(None)
def gamma_action(a,j):
    """Return row and coefficient of gamma^[mask] on e_j, in F_257 (i=16)."""
    h=1
    for i in reversed(I):
        if not a>>i&1: continue
        if i==0:
            h*=16*(-1)**j.bit_count(); continue
        k=(i-1)//2; h*=(-1)**(j%(1<<k)).bit_count()
        if i%2==0: h*=16*(-1)**(j>>k&1)
        j^=1<<k
    return j,h%prime

def matrix(A):
    m=[[0]*32 for _ in range(32)]
    for a,x in A.items():
        v=Q(x); coeff=v.numerator*pow(v.denominator,-1,prime)%prime
        for j in range(32):
            i,y=gamma_action(a,j); m[i][j]=(m[i][j]+coeff*y)%prime
    return m

def det(m):
    m=[r[:] for r in m]; v=1
    for j in range(len(m)):
        u=next((u for u in range(j,len(m)) if m[u][j]),None)
        if u is None: return 0
        if u!=j: m[j],m[u]=m[u],m[j]; v=-v
        z=m[j][j]; v=v*z%prime; row=[x*pow(z,-1,prime)%prime for x in m[j]]
        for u in range(j+1,len(m)):
            if m[u][j]:
                z=m[u][j]; m[u]=[(x-z*y)%prime for x,y in zip(m[u],row)]
    return v%prime

def rank(curv):
    piv={}
    for A in curv:
        for r in matrix(A):
            for i in sorted(piv):
                z=r[i]
                if z: r=[(w-z*t)%prime for w,t in zip(r,piv[i])]
            if any(r):
                i=next(t for t in range(32) if r[t]); v=pow(r[i],-1,prime)
                piv[i]=[(w*v)%prime for w in r]
        if len(piv)==32: break
    return len(piv)

def irreducible(x):
    """Reduce a real rational Clifford element by gamma^[0..10]=-1."""
    return plus(*[(v,{a:1}) if a.bit_count()<=5 else
                  (-v*parity(V,a^V)*(-1 if V&(a^V)&1 else 1),{a^V:1})
                  for a,v in x.items()])

def sample(sig,theta=1,c=Q(3,4),h=Q(5,4),target=None,frequencies=(10,6,8),connection_only=False):
    assert h>0 and h*h==1+theta**2*c*c and c!=0
    Z={0:-1,1:1,10:c}; w={1<<i:v*sg[i] for i,v in Z.items()}
    f0,fp,fm=frequencies; assert f0*f0==fp*fp+fm*fm
    F0=exterior({7:f0,56:fp,448:fm},one[9]); Z5={5:1}; Z8={8:1}
    # theta^a(new frame)=(1+(h^-1-1)Pi)^a_b e^b, Pi=WW*/c²+H+H+*+H-H-*.
    def S(scale):
        return [plus((1,one[i]),((scale-1)*Z.get(i,0)/c**2,w),
                     ((scale-1)*(i in (5,8)),one[i])) for i in I]
    nn=S(h); m=S(1/h)
    @lru_cache(None)
    def sub(a): return exterior(*[nn[j] for j in I if a>>j&1])
    def T(x): return plus(*[(v,sub(a)) for a,v in x.items()])
    de=[]
    for i in I:
        v={}
        if i<9:
            a,b=sorted(set(range(i//3*3,i//3*3+3))-{i})
            v[1<<a|1<<b]=-sg[i]*(-1)**((a>i)+(b>i))*sig[i//3]*frequencies[i//3]
        de.append(v)
    e=[T(d(mi,de)) for mi in m]
    F=T(plus((1/h,F0),(theta/h**3,d(exterior(w,one[5],one[8]),de)),
             (theta/h,ix(Z8,ix(Z5,ix(Z,star(F0)))))))
    assert not d(F,e) and not plus((1,d(star(F),e)),(Q(1,2),exterior(F,F)))
    # Pull back star' F' and (C-C_seed) F'/2 on S^3_+ x S^3_- x S_y^1.
    # Return from the hatted orthonormal frame to the unsheared seed coframe:
    # the Hodge homothety and F rescaling together multiply star(F) by h^2.
    cycle=sum(1<<j for j in [3,4,5,6,7,8,10]); etaB=exterior(one[5],one[6],one[7])
    def seed_coords(form):
        return plus(*[(v,exterior(*[m[j] for j in I if a>>j&1])) for a,v in form.items()])
    tplus=de[5][(1<<3)|(1<<4)]
    change=plus((theta/h**2,exterior(w,one[5],one[8])),(-Q(theta*c*f0,tplus),etaB))
    maxwell=h**2*seed_coords(star(F)).get(cycle,0)
    cs=h*Q(1,2)*exterior(change,seed_coords(F)).get(cycle,0)
    assert maxwell==-f0/h**2 and maxwell+cs==-f0
    @lru_cache(None)
    def C(i,j,k): return 0 if i==j else (1 if i>j else -1)*e[k].get(1<<i|1<<j,0)
    @lru_cache(None)
    def omega(i,j,k): return Q(C(i,k,j)*sg[j]-C(k,j,i)*sg[i]+C(j,i,k)*sg[k],2)
    def christ(i,j,k): return sg[k]*omega(i,k,j)
    def Ric(i,j):
        return sum(christ(i,j,b)*christ(a,b,a)-christ(a,j,b)*christ(i,b,a)
                   -C(a,i,b)*christ(b,j,a) for a in I for b in I)
    for i in I:
        for j in I:
            assert Ric(i,j)==Q(1,2)*inner(ix({i:1},F),ix({j:1},F))-(sg[i] if i==j else 0)*Q(1,6)*inner(F,F)
    B=[]
    for i in I:
        spin={1<<j|1<<k:omega(i,j,k)/2 for j,k in PAIRS}
        B.append(plus((1,spin),(Q(sg[i],12),cl(one[i],F)),(-Q(1,4),ix({i:1},F))))
    if connection_only:
        return nn,B
    def cur(i,j):
        return plus((1,cl(B[i],B[j])),(-1,cl(B[j],B[i])),*[(-C(i,j,k),B[k]) for k in I])
    curv=[cur(i,j) for i,j in PAIRS]; r=rank(curv)
    print(f'handedness={sig}, gamma={theta}, h={h}: dF, Maxwell(+), Einstein all zero; curvature rank mod 257={r}')
    assert target==r
    if sig==(-1,1,1) and theta==1:
        r1=matrix(curv[0]); r2=matrix(curv[1]); cols=list(range(24))+[24,26,28,30]
        v=det([[r[j] for j in cols] for r in r1[:24]+r2[:8:2]])
        u=det([r[:24] for r in r1[:24]])
        print('R01 minor[0:24,0:24] =',u,'mod 257')
        print('stack R01 rows 0..23 and R02 rows 0,2,4,6; columns 0..23,24,26,28,30: det =',v,'mod 257')
        assert (u,v)==(128,140)
        # Direct LOWER bound without a duality spinor-preservation assumption:
        # a real rank-four subbundle, invariant under D, with trivial curvature.
        # The orthonormal coframe and the projector are left-invariant, hence the
        # latter's components are constant, though the spinor coefficients need not be.
        J=cl({7:1},{56:Q(6,10),448:Q(8,10)})
        seed=plus((Q(1,8),cl(plus((1,unit),(1,one[9])),
                             plus((1,unit),(1,{3:1})),plus((1,unit),(-1,J)))))
        G=cl(w,one[5],one[8]); t=Q(theta,h+1)
        U=plus((1,unit),(t,G)); Uinv=plus((1/(1+(t*c)**2),plus((1,unit),(-t,G))))
        P=cl(U,seed,Uinv); complement=plus((1,unit),(-1,P))
        assert not irreducible(plus((1,cl(P,P)),(-1,P)))
        assert 32*irreducible(P).get(0,0)==4
        assert all(not irreducible(cl(complement,A,P)) for A in B)
        assert all(not irreducible(cl(A,P)) for A in curv)
        assert not irreducible(cl(plus((1,one[0]),(1,one[1])),P))
        print('Exact real Clifford checks: P^2=P, tr P=4, (1-P) B_a P=0, R_ab P=0, slash(n) P=0.')

def verify_family():
    """Exact polynomial-identity test, not numerical evidence or sampling.

    For c>0 an AdS boost rescales n, putting c=1 with gamma replaced by
    c*gamma. Extend to c<=0 by real analyticity: the apparent poles of
    (h-1)/c²=gamma²/(h+1) and (1/h-1)/c²=-gamma²/[h(h+1)] at c=0 are
    removable. The frequencies lie on a cone; discard its overall scale.
    Write (f0,fp,fm)=(1+r²,1-r²,2r). Use t=gamma/(h+1), so h=(1+t²)/
    (1-t²). Entries of N and M have degree <=2 over (1-t²) and (1+t²).
    With D=(1+t²)^3(1-t²)^4, every D*C or D*F has t-degree <=14: C is
    M*N*N*C0, and the three F terms are N^4*(1/h,gamma/h^3,gamma/h).
    All are linear in frequencies. Thus D² times a bosonic residual has
    bidegree <=(28,4) in (t,r). For the KSE multiply the intertwiner below
    by D*f0: its bidegree is <=(15,4), since U has t-degree 1 and f0*P0 is
    linear in frequencies. A 29-by-5 rational grid therefore suffices.
    """
    sig=(-1,1,1); c=Q(1); w={1:1,2:1,1024:1}; G=cl(w,one[5],one[8])
    for r in [Q(i,7) for i in range(1,6)]:
        f0,fp,fm=fs=(1+r*r,1-r*r,2*r)
        J=cl({7:1},{56:fp/f0,448:fm/f0})
        P0=plus((Q(1,8),cl(plus((1,unit),(1,one[9])),plus((1,unit),(1,{3:1})),plus((1,unit),(-1,J)))))
        _,B0=sample(sig,0,c,Q(1),frequencies=fs,connection_only=True)
        for j in range(-14,15):
            t=Q(j,17); h=(1+t*t)/(1-t*t); theta=2*t/(1-t*t)
            N,B=sample(sig,theta,c,h,frequencies=fs,connection_only=True)
            U=plus((1,unit),(t,G))
            for a in I:
                identity=plus((1,cl(B[a],U)),*[(-N[b].get(1<<a,0),cl(U,B0[b])) for b in I])
                assert not irreducible(cl(identity,P0))
        print(f'Exact EOM and KSE intertwiner on all 29 t nodes at r={r}',flush=True)
    print('Interpolation: all bosonic residuals and all 11 KSE intertwining identities vanish identically.')

if __name__=='__main__':
    assert all(gamma_action(V,j)==(j,256) for j in range(32))
    sample((-1,1,1),target=28)
    sample((1,1,1),target=24)
    sample((-1,1,-1),target=32)
    sample((-1,1,1),theta=0,h=Q(1),target=16)
    import sys
    if '--family' in sys.argv[1:]: verify_family()
