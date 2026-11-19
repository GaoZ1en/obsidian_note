# Local finite-dimensional KSE check. No external packages or file reads.
# Mostly plus; gamma arrays carry upper orthonormal indices.
N=32

def ident():
    return [[complex(i==j) for j in range(N)] for i in range(N)]
def scale(A,c): return [[c*x for x in row] for row in A]
def add(A,B,c=1): return [[x+c*y for x,y in zip(a,b)] for a,b in zip(A,B)]
def mul(A,B):
    C=[[0j]*N for _ in range(N)]
    for i in range(N):
        for k,z in enumerate(A[i]):
            if z:
                for j,w in enumerate(B[k]):
                    if w: C[i][j]+=z*w
    return C

def kron(A,B): return [[a*b for a in ar for b in br] for ar in A for br in B]
I=[[1,0],[0,1]]; X=[[0,1],[1,0]]; Y=[[0,-1j],[1j,0]]; Z=[[1,0],[0,-1]]
g=[]
for k in range(5):
    for P in [X,Y]:
        M=[[1]]
        for j in range(5): M=kron(M,Z if j<k else P if j==k else I)
        g.append(M)
M=[[1]]
for j in range(5): M=kron(M,Z)
g.append(M)
g[0]=scale(g[0],1j)
eta=[-1]+[1]*10
cache={():ident()}
def gp(t):
    t=tuple(t)
    if t not in cache: cache[t]=mul(gp(t[:-1]),g[t[-1]])
    return cache[t]

def canonical(t):
    if len(set(t))!=len(t): return None,0
    return tuple(sorted(t)),(-1)**sum(t[i]>t[j] for i in range(len(t)) for j in range(i+1,len(t)))
def eps(t): return canonical(t)[1]

def rank(A,tol=1e-8):
    A=[list(row) for row in A]; r=0
    for c in range(N):
        p=max(range(r,len(A)),key=lambda k:abs(A[k][c]),default=r)
        if r==len(A) or abs(A[p][c])<tol: continue
        A[r],A[p]=A[p],A[r]; z=A[r][c]; A[r]=[x/z for x in A[r]]
        for k in range(r+1,len(A)):
            z=A[k][c]
            if abs(z)>tol: A[k]=[x-z*y for x,y in zip(A[k],A[r])]
        r+=1
        if r==N: break
    return r

def check(fA,lam,q):
    Delta=eta[fA]; fs=[fA,5,8]; s=[lam if i in fs else 1 for i in range(11)]
    F={}; f={}
    triples=[(0,1,2),(3,4,5),(6,7,8)]; rs=[5,3,4]
    for tri,r in zip(triples,rs):
        F[tri+(9,)]=2*r
        for a in tri:
            for b in tri:
                for c in tri:
                    if len({a,b,c})==3:
                        f[a,b,c]=2*r*eta[a]*eps((a,b,c))*s[a]/s[b]/s[c]
    for h,(tri,r,ff) in enumerate(zip(triples,rs,fs)):
        ab=tuple(i for i in tri if i!=ff)
        seq=tuple(fs[:h])+ab+tuple(fs[h+1:])
        key,sgn=canonical(seq)
        coeff=q*Delta*(-1)**h*(-2*r*eta[ff]*eps((ff,)+ab))*sgn
        F[key]=F.get(key,0)+coeff
    slash=[[0j]*N for _ in range(N)]
    for t,z in F.items(): slash=add(slash,gp(t),z)
    Ds=[]
    def flow(a,b,c): return eta[a]*f.get((a,b,c),0)
    for c in range(11):
        Dc=[[0j]*N for _ in range(N)]
        for a in range(11):
            for b in range(a+1,11):
                omega=(flow(a,c,b)-flow(c,b,a)+flow(b,a,c))/2
                if omega: Dc=add(Dc,gp((a,b)),omega/2)
        Dc=add(Dc,mul(g[c],slash),eta[c]/12)
        for t,z in F.items():
            if c in t:
                pos=t.index(c); rest=t[:pos]+t[pos+1:]
                Dc=add(Dc,gp(rest),-z*(-1)**pos/4)
        Ds.append(Dc)
    rows=[row for D in Ds for row in D]
    # Curvature in a non-coordinate frame: [D_a,D_b]-f^c_ab D_c.
    curvature=[]
    for a in range(11):
        for b in range(a+1,11):
            C=add(mul(Ds[a],Ds[b]),mul(Ds[b],Ds[a]),-1)
            for c in range(11):
                z=f.get((c,a,b),0)
                if z: C=add(C,Ds[c],-z)
            curvature+=C
    print('fiber',fA,'lambda',lam,'q',q,'G relation residual',lam*lam-(1-Delta*q*q))
    print('constant spinor dimension',N-rank(rows),'curvature kernel dimension',N-rank(curvature))
    print('flux coefficients',F)
    H=add(add(scale(gp((0,1,2)),5),gp((3,4,5)),3),gp((6,7,8)),4)
    P=gp(tuple(fs))
    for sign in [-1,1]:
        J=mul(add(scale(ident(),lam),P,sign*q),g[9])
        constraints=H+add(J,ident(),-1)
        preserve=[]
        for D in Ds:
            preserve += [[sum(row[k]*D[k][j] for k in range(N)) for j in range(N)] for row in constraints]
        print('projector sign',sign,'rank constraints',rank(constraints),
              'rank with curvature',rank(constraints+curvature),
              'rank with D preservation',rank(constraints+preserve))

check(2,1,0)
check(2,3/5,4/5)
check(0,5/3,4/3)
check(2,4/5,3/5)
