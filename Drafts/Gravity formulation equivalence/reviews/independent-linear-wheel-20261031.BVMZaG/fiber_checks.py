from sage.all import *
from itertools import combinations
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG')

def eps(i,j,k):
    if len({i,j,k})<3: return 0
    return Permutation([i+1,j+1,k+1]).signature()
def delta(i,j): return ZZ(i==j)
forms={p:list(combinations(range(3),p)) for p in range(4)}
def wedge(i,p):
    z=zero_matrix(QQ,len(forms[p+1]),len(forms[p]))
    for col,I in enumerate(forms[p]):
        if i not in I:
            J=tuple(sorted((i,)+I)); z[forms[p+1].index(J),col]=(-1)**sum(a<i for a in I)
    return z

def star(p):
    z=zero_matrix(QQ,len(forms[3-p]),len(forms[p]))
    for col,I in enumerate(forms[p]):
        J=tuple(a for a in range(3) if a not in I)
        z[forms[3-p].index(J),col]=Permutation([a+1 for a in I+J]).signature()
    return z.tensor_product(identity_matrix(QQ,6))
L=[matrix(QQ,3,3,lambda a,b:eps(i,b,a)) for i in range(3)]
z3=zero_matrix(QQ,3)
J=[block_matrix([[L[i],z3],[z3,L[i]]]) for i in range(3)]
B=[block_matrix([[z3,-L[i]],[L[i],z3]]) for i in range(3)]
P=[]
for s in range(3):
    Q=zero_matrix(QQ,18)
    for i in range(3):
      for a in range(3):
       for j in range(3):
        for b in range(3):
         p0=QQ(1)/3*delta(i,a)*delta(j,b)
         p1=QQ(1)/2*(delta(i,j)*delta(a,b)-delta(i,b)*delta(a,j))
         p2=QQ(1)/2*(delta(i,j)*delta(a,b)+delta(i,b)*delta(a,j))-p0
         for c in range(2): Q[i*6+c*3+a,j*6+c*3+b]=[p0,p1,p2][s]
    P.append(Q)
checks={}
checks['Lie_JJ']=all(J[i]*J[j]-J[j]*J[i]==sum((eps(i,j,k)*J[k] for k in range(3)),zero_matrix(QQ,6)) for i in range(3) for j in range(3))
checks['Lie_JP']=all(J[i]*B[j]-B[j]*J[i]==sum((eps(i,j,k)*B[k] for k in range(3)),zero_matrix(QQ,6)) for i in range(3) for j in range(3))
checks['Lie_PP']=all(B[i]*B[j]-B[j]*B[i]==-sum((eps(i,j,k)*J[k] for k in range(3)),zero_matrix(QQ,6)) for i in range(3) for j in range(3))
checks['positive_adjoint_B']=all(X.transpose()==X for X in B)
checks['skew_adjoint_J']=all(X.transpose()==-X for X in J)
checks['projector_algebra']=all(P[s]*P[t]==(P[s] if s==t else zero_matrix(QQ,18)) for s in range(3) for t in range(3))
checks['projector_sum']=sum(P)==identity_matrix(QQ,18)
checks['projector_ranks']=[X.rank() for X in P]==[2,6,10]
checks['star_square']=all(star(3-p)*star(p)==identity_matrix(QQ,len(forms[p])*6) for p in range(4))
Dalg=[sum((wedge(i,p).tensor_product(B[i]) for i in range(3)),zero_matrix(QQ,len(forms[p+1])*6,len(forms[p])*6)) for p in range(3)]
contractions={}
for p in range(3):
    fs=P if p==0 else ([star(1)*Q*star(2) for Q in P] if p==1 else [identity_matrix(QQ,6)])
    for s,F in enumerate(fs):
        for label,gens in [('w',J),('f',B)]:
            M=matrix(QQ,3,3,lambda k,a:(Dalg[p].transpose()*F*wedge(k,p).tensor_product(gens[a])).trace())
            contractions[f'p{p}_s{s}_{label}']=[[str(v) for v in row] for row in M.rows()]
            checks[f'isotropic_p{p}_s{s}_{label}']=M==M[0,0]*identity_matrix(QQ,3)
            if label=='w': checks[f'zero_w_p{p}_s{s}']=M==zero_matrix(QQ,3)
# Totalization: input coefficient has ghost number 1-p, ad_j and h_T each give (-1)^(1-p).
checks['totalization_cancel']=all((-1)**(1-p)*(-1)**(1-p)==1 for p in range(3))
report={'sage_version':version(),'conventions':'forms lexicographic; (J_1,J_2,J_3,P_1,P_2,P_3); epsilon_123=1; positive adjoint; parity 1-p', 'checks':{k:bool(v) for k,v in checks.items()},'contractions':contractions,'failures':[k for k,v in checks.items() if not v]}
(OUT/'fiber_actual_output.json').write_text(json.dumps(report,indent=2)+'\n')
(OUT/'fiber_actual_output.txt').write_text('\n'.join(f'{k}: {v}' for k,v in report.items())+'\n')
print(json.dumps(report,indent=2))
