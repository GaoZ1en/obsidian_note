from sage.all import *
import json
K=QuadraticField(-1,'I'); I=K.gen()
pauli=[matrix(K,[[0,1],[1,0]]), matrix(K,[[0,-I],[I,0]]), matrix(K,[[1,0],[0,-1]])]
T=[-I*x/2 for x in pauli]
def eps(a,b,c):
    if len({a,b,c})<3: return 0
    return Permutation([a+1,b+1,c+1]).signature()
J=[matrix(QQ,3,3,lambda a,c:eps(a,b,c)) for b in range(3)]
checks={}
checks['Ta_commutators']=all(T[a]*T[b]-T[b]*T[a]==sum((eps(a,b,c)*T[c] for c in range(3)),zero_matrix(K,2)) for a in range(3) for b in range(3))
checks['Ta_trace']=all((T[a]*T[b]).trace()==(-QQ(1)/2 if a==b else 0) for a in range(3) for b in range(3))
checks['sum_J_square_minus_2I']=sum((j*j for j in J),zero_matrix(QQ,3))==-2*identity_matrix(QQ,3)
R=PolynomialRing(QQ, names=['p0','p1','p2','v0','v1','v2']+['u%d%d'%(a,b) for a in range(3) for b in range(3)])
gens=R.gens(); p=vector(R,gens[0:3]); v=vector(R,gens[3:6]); u=matrix(R,3,3,gens[6:])
def cross(x,y): return vector(R,[sum(eps(a,b,c)*x[b]*y[c] for b in range(3) for c in range(3)) for a in range(3)])
def decomp(u):
    h=u+u.transpose()
    r=vector(R,[-sum(eps(a,b,c)*u[b,c] for b in range(3) for c in range(3))/2 for a in range(3)])
    return h,r
def spin(h,r):
    return matrix(R,3,3,lambda mu,a:sum(eps(a,b,c)*p[b]*h[mu,c] for b in range(3) for c in range(3))/2+p[mu]*r[a])
h,r=decomp(u)
u_recon=matrix(R,3,3,lambda mu,a:h[mu,a]/2+sum(eps(a,mu,c)*r[c] for c in range(3)))
checks['frame_decomposition_inverse']=u_recon==u
ug=matrix(R,3,3,lambda mu,a:p[mu]*v[a]); hg,rg=decomp(ug)
checks['rotation_ghost_symbol']=rg==-cross(p,v)/2
checks['spin_symbol_annihilates_pure_gradient_frame']=spin(hg,rg)==zero_matrix(R,3)
S=spin(h,r)
B=matrix(R,9,9,lambda i,j:S.list()[i].derivative(gens[6+j]))
B1=B.subs({p[0]:1,p[1]:0,p[2]:0}).change_ring(QQ)
checks['full_spin_symbol_rank_at_unit_covector_is_6']=B1.rank()==6
hh=zero_matrix(R,3); hh[1,1]=1
SS=spin(hh,vector(R,[0,0,0])).subs({p[0]:1,p[1]:0,p[2]:0})
checks['high_frequency_h22_spin_symbol']=SS==matrix(R,[[0,0,0],[0,0,QQ(1)/2],[0,0,0]])
print(json.dumps({'checks':checks,'B_rank':int(B1.rank()),'h22_spin_symbol':str(SS),'all_passed':all(checks.values())},indent=2))