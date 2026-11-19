# Independent numerical KSE test of the unequal-sphere bosonic ansatz.
# Loads only local helper definitions, not their sample executions.
src=open('susy_clifford_check.py',encoding='utf-8').read()
exec(src.split('def check(fA,lam,q):')[0])

def unequal(timelike,lam,t):
    fA=0 if timelike else 2
    delta=-1 if timelike else 1
    fs=[fA,5]; factors=[lam if i in fs else 1 for i in range(11)]
    triples=[(0,1,2),(3,4,5),(6,7,8)]; rs=[5,3,4]
    group_signs=[1,-1,-1] if timelike else [-1,-1,-1]
    f={}
    for tri,r,sg in zip(triples,rs,group_signs):
        for a in tri:
            for b in tri:
                for c in tri:
                    if len({a,b,c})==3:
                        f[a,b,c]=sg*2*r*eta[a]*eps((a,b,c))*factors[a]/factors[b]/factors[c]
    # Bosonic review labels minus one; timelike old 2 becomes new 0.
    mapping={0:1,1:2,2:0} if timelike else {}
    raw={(0,1,2,9):10,(3,4,5,9):6,(6,7,8,9):8*lam,
         (0,1,5,10):delta*t*10,(2,3,4,10):-delta*t*6,(0,1,3,4):t*8}
    F={}
    for inds,z in raw.items():
        key,sgn=canonical(tuple(mapping.get(i,i) for i in inds)); F[key]=sgn*z
    slash=[[0j]*N for _ in range(N)]
    for inds,z in F.items(): slash=add(slash,gp(inds),z)
    def flow(a,b,c): return eta[a]*f.get((a,b,c),0)
    Ds=[]
    for c in range(11):
        D=[[0j]*N for _ in range(N)]
        for a in range(11):
            for b in range(a+1,11):
                om=(flow(a,c,b)-flow(c,b,a)+flow(b,a,c))/2
                D=add(D,gp((a,b)),om/2)
        D=add(D,mul(g[c],slash),eta[c]/12)
        for inds,z in F.items():
            if c in inds:
                pos=inds.index(c); D=add(D,gp(inds[:pos]+inds[pos+1:]),-z*(-1)**pos/4)
        Ds.append(D)
    rows=[]
    for a in range(11):
        for b in range(a+1,11):
            C=add(mul(Ds[a],Ds[b]),mul(Ds[b],Ds[a]),-1)
            for c in range(11): C=add(C,Ds[c],-f.get((c,a,b),0))
            rows+=C
    # Row-reduce before testing D-invariance to keep the closure small.
    r=0
    for c in range(N):
        p=max(range(r,len(rows)),key=lambda k:abs(rows[k][c]),default=r)
        if r==len(rows) or abs(rows[p][c])<1e-8: continue
        rows[r],rows[p]=rows[p],rows[r]; z=rows[r][c]; rows[r]=[x/z for x in rows[r]]
        for k in range(r+1,len(rows)):
            z=rows[k][c]
            if abs(z)>1e-8: rows[k]=[x-z*y for x,y in zip(rows[k],rows[r])]
        r+=1
        if r==N: break
    basis=rows[:r]
    closure=basis+[[sum(row[k]*D[k][j] for k in range(N)) for j in range(N)] for D in Ds for row in basis]
    print('unequal timelike=',timelike,'lambda=',lam,'t=',t,'curvature kernel=',N-r,'stable kernel=',N-rank(closure))
    if not timelike:
        P=gp((2,5,10)); HA=add(scale(gp((0,1,2)),5),gp((3,4,5)),3)
        for v in [-1,1]:
            Hr=add(HA,mul(add(scale(ident(),lam),P,v*t),gp((6,7,8))),4)
            for u in [-1,1]:
                J=mul(add(scale(ident(),lam),P,u*t),g[9])
                for kappa in [-1,1]:
                    constraints=Hr+add(J,ident(),-kappa)
                    if rank(constraints)==24 and rank(constraints+basis)==24:
                        print('matching projectors H sign,J sign,eigenvalue=',v,u,kappa)

unequal(False,1,0)
unequal(False,3/5,4/5)
unequal(True,5/3,4/3)
