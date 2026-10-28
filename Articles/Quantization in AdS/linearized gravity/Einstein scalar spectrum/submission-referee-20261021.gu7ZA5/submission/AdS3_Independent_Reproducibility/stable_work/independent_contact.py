"""Independent finite contact calculation: Jacobi polynomials -> beta moments -> Fock -> primaries.
No repository implementation or stored matrix is imported.
"""
import sympy as s
from functools import lru_cache
from itertools import combinations_with_replacement

y=s.symbols('y')

@lru_cache(None)
def w(p,d):
    return s.rf(d,p)/s.factorial(p)

@lru_cache(None)
def radial_poly(A,d):
    p,q=A; n=min(A); l=abs(p-q)
    # Jacobi finite sum from binomial coefficients, no special-function integral.
    return s.Poly(s.expand(s.expand_func(sum(s.binomial(n+l,n-h)*s.binomial(n+d-1,h)*(-y)**h*(1-y)**(n-h) for h in range(n+1)))),y)

@lru_cache(None)
def vertex(A,B,C,D,d):
    if (A[0]+B[0], A[1]+B[1]) != (C[0]+D[0],C[1]+D[1]): return s.S.Zero
    modes=(A,B,C,D)
    poly=s.Poly(1,y)
    for a in modes: poly*=radial_poly(a,d)
    ell=sum(abs(a[0]-a[1]) for a in modes)//2
    integ=sum(v*s.factorial(k[0]+ell)/s.rf(2*d-1,k[0]+ell+1) for k,v in poly.terms())
    # From H_int=lambda/4 int e_A e_B e_C e_D a^+a^+aa, normalized by c0.
    # B coordinate creation is a^+/sqrt(w_p w_q); multiply outgoing/incoming coordinate weights.
    sign=(-1)**sum(min(a) for a in modes)
    return s.factor(2*(2*d-1)*sign*w(max(A),d)*w(max(B),d)*integ/((1+(A==B))*(1+(C==D))*w(min(C),d)*w(min(D),d)))

def excited_shell(P,Q):
    modes=[(p,q) for p in range(P+1) for q in range(Q+1) if p+q]
    ans=[]
    def rec(start,p,q,state):
        if not p and not q: ans.append(tuple(state));return
        for i in range(start,len(modes)):
            a,b=modes[i]
            if a<=p and b<=q: rec(i,p-a,q-b,state+[(a,b)])
    rec(0,P,Q,[])
    return sorted(ans,key=lambda x:(len(x),x))

def count_state(state):
    return {a:state.count(a) for a in set(state)}

def shell_matrix(P,Q,N,d):
    states=excited_shell(P,Q); idx={x:i for i,x in enumerate(states)}
    modes=[(0,0)]+[(p,q) for p in range(P+1) for q in range(Q+1) if p+q]
    pairs=list(combinations_with_replacement(modes,2))
    outputs={}
    for a,b in pairs: outputs.setdefault((a[0]+b[0],a[1]+b[1]),[]).append((a,b))
    M=s.zeros(len(states))
    for j,state in enumerate(states):
        n=count_state(state);n[(0,0)]=N-len(state)
        for c,e in combinations_with_replacement(sorted(n),2):
            factor=n[c]*(n[e]-int(c==e))
            if factor==0: continue
            for a,b in outputs[(c[0]+e[0],c[1]+e[1])]:
                v=vertex(a,b,c,e,d)
                if v==0:continue
                m=n.copy()
                for u in (c,e):m[u]-=1
                for u in (a,b):m[u]=m.get(u,0)+1
                target=tuple(sorted(u for u in m if u!=(0,0) for k in range(int(m[u]))))
                if target in idx:M[idx[target],j]+=v*factor
    return states,M.applyfunc(s.factor)

def lower(P,Q,direction):
    states=excited_shell(P,Q)
    target=excited_shell(P-(direction==0),Q-(direction==1))
    idx={x:i for i,x in enumerate(target)};M=s.zeros(len(target),len(states))
    for j,state in enumerate(states):
        n=count_state(state)
        for a,k in n.items():
            if a[direction]:
                m=list(state);m.remove(a);b=list(a);b[direction]-=1;b=tuple(b)
                if b!=(0,0):m.append(b)
                M[idx[tuple(sorted(m))],j]+=a[direction]*k
    return M

def primary_matrix(P,Q,N,d):
    states,M=shell_matrix(P,Q,N,d)
    L=lower(P,Q,0).col_join(lower(P,Q,1))
    X=s.Matrix.hstack(*L.nullspace())
    rows=list(X.T.rref()[1]);pivot=X[rows,:]
    K=(pivot.inv()*(M*X)[rows,:]).applyfunc(s.factor)
    assert (M*X-X*K).applyfunc(s.factor)==s.zeros(M.rows,X.cols)
    return states,M,X,K

def centered(p,q):
    def a(i,j):return s.S.One if (i,j)==(0,0) else s.Symbol('a%d_%d'%(i,j))
    return s.expand(sum(s.binomial(p,i)*s.binomial(q,j)*(-a(1,0))**(p-i)*(-a(0,1))**(q-j)*a(i,j) for i in range(p+1) for j in range(q+1)))

def polynomial_vector(expr,states):
    modes=sorted(set(a for state in states for a in state))
    symbols=[s.Symbol('a%d_%d'%a) for a in modes]
    poly=s.Poly(expr,*symbols)
    return s.Matrix([poly.coeff_monomial(s.prod(s.Symbol('a%d_%d'%a) for a in state)) for state in states])

def degree22():
    N,d=s.symbols('N d',positive=True)
    states,M=shell_matrix(2,2,N,d)
    X=s.Matrix.hstack(*(polynomial_vector(f,states) for f in [centered(2,2),centered(2,0)*centered(0,2),centered(1,1)**2]))
    rows=list(X.T.rref()[1]);K=(X[rows,:].inv()*(M*X)[rows,:]).applyfunc(s.factor)
    assert (M*X-X*K).applyfunc(s.factor)==s.zeros(M.rows,3)
    R=K-s.binomial(N,2)*s.eye(3)
    R=R.applyfunc(lambda v:s.factor(s.expand_func(v)))
    A=R.diff(N);B=R.subs(N,0)
    return N,d,states,M,X,K,A,B

if __name__=='__main__':
    import json
    N,d,states,M,X,K,A,B=degree22()
    print('D22_DIM',len(states));print('A=',A);print('B=',B)
    data={'basis22':[str(x) for x in states],'A22':str(A),'B22':str(B)}
    states,M,X,K=primary_matrix(3,3,s.Integer(8),s.Integer(2))
    z=s.symbols('z');cp=s.factor(K.charpoly(z).as_expr())
    print('D33_DIM',len(states),X.cols);print('CP33=',cp)
    data['charpoly33']=str(cp)
    # Independently isolate exchange-even sector through actual permutation of modes.
    idx={x:i for i,x in enumerate(states)};T=s.zeros(len(states))
    for j,state in enumerate(states):T[idx[tuple(sorted((q,p) for p,q in state))],j]=1
    rows=list(X.T.rref()[1]);TP=X[rows,:].inv()*(T*X)[rows,:]
    E=s.Matrix.hstack(*(TP-s.eye(TP.rows)).nullspace());erows=list(E.T.rref()[1])
    KE=E[erows,:].inv()*(K*E)[erows,:]
    even_cp=s.Poly(KE.charpoly(z).as_expr(),z).clear_denoms()[1].primitive()[1]
    data['even_polynomial']=str(even_cp.as_expr());data['even_dimension']=E.cols
    for p in [11,19,107]:
        factors=s.factor_list(even_cp.as_expr(),modulus=p)[1]
        degrees=[s.degree(f,z) for f,m in factors for _ in range(m)]
        print('MOD',p,degrees)
        data['mod_'+str(p)]={'degrees':list(map(int,degrees)),'factors':[(str(f),int(m)) for f,m in factors]}
    data['root_intervals']=[str(x) for x in s.polys.polytools.intervals(even_cp,eps=s.Rational(1,10**8))]
    with open('stable_work/independent_results.json','w') as f:json.dump(data,f,indent=2)
