"""Fresh EX07 averaged-occupation negative-cycle check, N2 P2Q2 d2."""
from sage.all import *
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
d=QQ(2);T=2;I=identity_matrix(QQ,3);lo=matrix(QQ,2,3,[[2,1,0],[0,1,2]]);up=matrix(QQ,3,2,[[3,0],[2,2],[0,3]])
C=(T+d)*(T+d-1)*I-up*lo;cs=[(d+k)*(d+k-1) for k in range(3)];p=[prod((C-cs[j]*I)/(cs[k]-cs[j]) for j in range(3) if j!=k) for k in range(3)]
def gam(k,l):
 n=min(k,l);s=abs(k-l);h=d+n;cc=h*(h-1);u=-8*cc
 if s==0:return u*(2*h-2)/(2*h-1)-2*cc**2/((2*h-3)*(2*h-1)*(2*h+1))
 if s==2:return u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
 return u
W=sum((gam(k,l)*p[k].tensor_product(p[l]) for k in range(3) for l in range(3) if (k+l)%2==0),zero_matrix(QQ,9))
reps=[(0,0),(0,1),(0,2),(1,0),(1,1)];S=zero_matrix(QQ,9,5)
for col,(i,j) in enumerate(reps):
 idx=3*i+j;rev=3*(2-i)+(2-j)
 if idx==rev:S[idx,col]=1
 else:S[idx,col]=S[rev,col]=QQ(1)/2
rows=S.transpose().pivots();M=S.matrix_from_rows(rows).inverse()*(W*S).matrix_from_rows(rows)
assert W*S==S*M
triangles=[]
for i,j,k in Subsets(range(5),3):
 factors=[M[i,j],M[j,k],M[k,i]]
 if prod(factors)<0:triangles.append({'indices':[int(i),int(j),int(k)],'factors':[str(x) for x in factors],'product':str(prod(factors))})
assert triangles
wanted=prod([QQ(312)/35,-QQ(528)/35,QQ(416)/35])
match=[tr for tr in triangles if QQ(tr['product'])==wanted]
assert match
result={'all_passed':True,'checks':[{'label':'EX07_physical_cycle_product_exact','passed':True}],'basis_representatives':reps,'matrix':str(M),'matching_triangles':match}
path=OUT/'results/audit2_stable_cycle.json';path.write_text(json.dumps(result,indent=2)+'\n');print(M);print('MATCH',match);print('RESULT',path)
