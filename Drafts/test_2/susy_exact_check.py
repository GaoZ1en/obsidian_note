# Exact sparse Clifford/polynomial verification, using only Python builtins.
# Variables (a,b,c,l,q), relations a^2=b^2+c^2 and l^2+Delta*q^2=1.
# All coefficients are integers. Clifford signature (-,+,...,+).

def pa(A,B):
    C=A.copy()
    for m,z in B.items():
        C[m]=C.get(m,0)+z
        if not C[m]: del C[m]
    return C

def ps(A,z): return {m:v*z for m,v in A.items() if v*z}
def red(m,z):
    if m[0]>=2:
        n=list(m); n[0]-=2
        n[1]+=2; A=red(tuple(n),z); n[1]-=2; n[2]+=2
        return pa(A,red(tuple(n),z))
    if m[3]>=2:
        n=list(m); n[3]-=2; A=red(tuple(n),z); n[4]+=2
        return pa(A,red(tuple(n),-Delta*z))
    return {m:z} if z else {}
def pm(A,B):
    C={}
    for m,z in A.items():
        for n,w in B.items(): C=pa(C,red(tuple(x+y for x,y in zip(m,n)),z*w))
    return C
one={(0,0,0,0,0):1}
def var(i):
    t=[0]*5; t[i]=1; return {tuple(t):1}
a,b,c,l,q=[var(i) for i in range(5)]
def ca(A,B):
    C={m:p.copy() for m,p in A.items()}
    for m,p in B.items():
        C[m]=pa(C.get(m,{}),p)
        if not C[m]: del C[m]
    return C
def cs(A,z): return {m:ps(p,z) for m,p in A.items() if ps(p,z)}
def cp(A,p): return {m:pm(v,p) for m,v in A.items() if pm(v,p)}
def cm(A,B):
    C={}
    for m,p in A.items():
        for n,r in B.items():
            swaps=sum((n & ((1<<i)-1)).bit_count() for i in range(11) if (m>>i)&1)
            sign=(-1)**(swaps+bool(m&n&1)); k=m^n
            C[k]=pa(C.get(k,{}),ps(pm(p,r),sign))
            if not C[k]: del C[k]
    return C
I={0:one}
def gam(*idx):
    C=I
    for i in idx: C=cm(C,{1<<i:one})
    return C

def sign(t): return (-1)**sum(t[i]>t[j] for i in range(len(t)) for j in range(i+1,len(t)))
eta=[-1]+[1]*10

def verify(fA):
    global Delta
    Delta=eta[fA]; fibers=[fA,5,8]; triples=[(0,1,2),(3,4,5),(6,7,8)]; rs=[a,b,c]
    # lf[a,b,c]=l*f^a_bc, where f are orthonormal metric structure constants.
    lf={}; flux={}
    for tri,r in zip(triples,rs):
        flux[tri+(9,)]=ps(r,2)
        for i in tri:
            for j in tri:
                for k in tri:
                    if len({i,j,k})==3:
                        power=1+(i in fibers)-(j in fibers)-(k in fibers)
                        ratio=one if power==0 else pm(l,l)
                        lf[i,j,k]=ps(pm(r,ratio),2*eta[i]*sign((i,j,k)))
    for h,(tri,r,ff) in enumerate(zip(triples,rs,fibers)):
        ab=tuple(i for i in tri if i!=ff)
        seq=tuple(fibers[:h])+ab+tuple(fibers[h+1:])
        flux[tuple(sorted(seq))]=ps(pm(q,r),Delta*(-1)**h*(-2*eta[ff]*sign((ff,)+ab))*sign(seq))
    slash={}
    for t,p in flux.items(): slash=ca(slash,cp(gam(*t),p))
    def flow(i,j,k): return ps(lf.get((i,j,k),{}),eta[i])
    E=[]
    for k in range(11):
        D={}
        for i in range(11):
            for j in range(i+1,11):
                # 12*l*spin_connection = 3*l*(f_i,k,j-f_k,j,i+f_j,i,k)*Gamma^ij
                w=ps(pa(pa(flow(i,k,j),ps(flow(k,j,i),-1)),flow(j,i,k)),3)
                D=ca(D,cp(gam(i,j),w))
        D=ca(D,cs(cp(cm(gam(k),slash),l),eta[k]))
        for t,p in flux.items():
            if k in t:
                pos=t.index(k); rest=t[:pos]+t[pos+1:]
                D=ca(D,cp(gam(*rest),ps(pm(l,p),-3*(-1)**pos)))
        E.append(D)
    H=ca(ca(cp(gam(0,1,2),a),cp(gam(3,4,5),b)),cp(gam(6,7,8),c))
    J=cm(ca(cp(I,l),cp(gam(*fibers),ps(q,Delta))),gam(9))
    T=ca(ca(cp(I,a),cs(cp(gam(0,1,2,3,4,5),b),-1)),cs(cp(gam(0,1,2,6,7,8),c),-1))
    Pi=cm(T,ca(I,J)) # =4*a times the rank-eight projector
    def seed_polynomial(poly):
        result={}
        for exps,z in poly.items():
            if exps[4]: continue
            ee=list(exps); ee[3]=0
            result=pa(result,{tuple(ee):z})
        return result
    Eseed=[{m:seed_polynomial(p) for m,p in op.items() if seed_polynomial(p)} for op in E]
    Srot=ca(cp(I,pa(one,l)),cp(gam(*fibers),ps(q,Delta)))
    Pi0=cm(T,ca(I,gam(9)))
    checks={
        'H^2=0':cm(H,H),
        'J^2=1':ca(cm(J,J),cs(I,-1)),
        'H Pi=0':cm(H,Pi),
        '(J-1)Pi=0':cm(ca(J,cs(I,-1)),Pi),
    }
    for k,D in enumerate(E):
        checks['spinor transport_%d=0'%k]=ca(cp(cm(D,cm(Srot,Pi0)),l if k in fibers else one),cs(cp(cm(Srot,cm(Eseed[k],Pi0)),l),-1))
        checks['H D_%d Pi=0'%k]=cm(H,cm(D,Pi))
        checks['(J-1)D_%d Pi=0'%k]=cm(ca(J,cs(I,-1)),cm(D,Pi))
    curvature_operators=[]
    for i in range(11):
        for j in range(i+1,11):
            C=ca(cm(E[i],E[j]),cs(cm(E[j],E[i]),-1))
            for k in range(11): C=ca(C,cp(E[k],ps(lf.get((k,i,j),{}),-12)))
            curvature_operators.append(C)
            if (i,j)==(5,10):
                # C=144*l^2*R; R_5y=-(b*l^2/18) Gamma_y Gamma_5 B H.
                rhs=cp(cm(gam(10,5,3,4,5),H),ps(pm(b,pm(pm(l,l),pm(l,l))),-8))
                checks['mixed curvature forces H=0']=ca(C,cs(rhs,-1))
            if (i,j)==(3,4):
                # On ker H: R_34=Delta*b^2*q*Gamma34*P*(l-Delta*q*P)*(1-J).
                pref=ca(cp(I,l),cp(gam(*fibers),ps(q,-Delta)))
                rhs=cm(gam(3,4),cm(gam(*fibers),cm(pref,cm(ca(I,cs(J,-1)),T))))
                rhs=cp(rhs,ps(pm(pm(b,b),pm(q,pm(l,l))),144*Delta))
                checks['sphere curvature forces J=1']=ca(cm(C,T),cs(rhs,-1))
            checks['R_%d_%d Pi=0'%(i,j)]=cm(C,Pi)
    failed={name:len(value) for name,value in checks.items() if value}
    print('Delta =',Delta,'checks =',len(checks),'failed =',failed)
    if failed: raise SystemExit(1)
    prime=1009
    ii=next(i for i in range(prime) if i*i%prime==prime-1)
    values=[5,3,4,3*pow(5,-1,prime)%prime,4*pow(5,-1,prime)%prime] if Delta==1 else [5,3,4,5*pow(3,-1,prime)%prime,4*pow(3,-1,prime)%prime]
    def evalpoly(p):
        result=0
        for exps,z in p.items():
            for v,e in zip(values,exps): z=z*pow(v,e,prime)%prime
            result=(result+z)%prime
        return result
    def matrix(C):
        M=[[0]*32 for _ in range(32)]
        for mask,p in C.items():
            z=evalpoly(p)
            for col in range(32):
                row=col; coeff=z
                for i in range(10,-1,-1):
                    if not ((mask>>i)&1): continue
                    if i==10: coeff*=(-1)**row.bit_count()
                    else:
                        k=i//2; coeff*=(-1)**(row&((1<<k)-1)).bit_count()
                        if i%2: coeff*=ii*(-1)**((row>>k)&1)
                        if i==0: coeff*=ii
                        row ^= 1<<k
                M[row][col]=(M[row][col]+coeff)%prime
        return M
    rows=[r for C in curvature_operators for r in matrix(C)]
    rr=0
    for col in range(32):
        pivot=next((k for k in range(rr,len(rows)) if rows[k][col]),None)
        if pivot is None: continue
        rows[rr],rows[pivot]=rows[pivot],rows[rr]
        inv=pow(rows[rr][col],-1,prime); rows[rr]=[v*inv%prime for v in rows[rr]]
        for k in range(rr+1,len(rows)):
            z=rows[k][col]
            if z: rows[k]=[(x-z*y)%prime for x,y in zip(rows[k],rows[rr])]
        rr+=1
    print('Exact finite-field curvature rank =',rr,'mod',prime,'at rational point',values)
    assert rr==24

verify(2)
verify(0)
