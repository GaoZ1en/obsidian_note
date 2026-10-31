# EXACT INITIAL EXPLORATORY SOURCE, preserved without correcting its two shape errors.
# gauge_derivative_1 and gauge_derivative_2 compare a 9x3 matrix with a 9x9
# zero matrix; False therefore records a test-shape bug, not an identity failure.
# The corrected source is verify_operator.py, with a separately preserved run.
from sage.all import *
from itertools import product
R=PolynomialRing(QQ, names=('p0','p1','p2')); p=R.gens()
def eps(i,j,k):
    if len({i,j,k})<3: return 0
    return 1 if (i,j,k) in [(0,1,2),(1,2,0),(2,0,1)] else -1
D=matrix(R,9,3,lambda q,b: p[q//3] if q%3==b else 0)
T=matrix(R,9,3,lambda q,b: eps(q%3,q//3,b))
B=matrix(R,9,9,lambda q,r: (1 if q//3==q%3 and r//3==r%3 else 0)-(1 if r//3==q%3 and r%3==q//3 else 0))
C=matrix(R,9,9,lambda q,r: sum(eps(q//3,j,r//3)*p[j] for j in range(3)) if q%3==r%3 else 0)
P0=matrix(QQ,9,9,lambda q,r: QQ(1)/3 if q//3==q%3 and r//3==r%3 else 0)
P1=matrix(QQ,9,9,lambda q,r: QQ(1)/2*((1 if q==r else 0)-(1 if r//3==q%3 and r%3==q//3 else 0)))
checks={
'B_symmetric': B==B.transpose(),
'B_square': B*B==identity_matrix(R,9)+3*P0,
'TTadj': T*T.transpose()==2*P1,
'potential_identity': B*B+T*T.transpose()==2*identity_matrix(R,9)+B,
'offdiagonal_square_cancellation': B*C-C*B+D*T.transpose()+T*D.transpose()==zero_matrix(R,9),
'gauge_derivative_1': B*D+C*T==zero_matrix(R,9),
'gauge_derivative_2': C*D==zero_matrix(R,9)
}
for k,v in checks.items(): print(k,v)
# derivative symbol: use i to replace derivatives; principal H=[[0,C],[C,0]], G=diag(D,D).
Z9=zero_matrix(R,9); Z93=zero_matrix(R,9,3); Z3=zero_matrix(R,3)
Hp=block_matrix([[Z9,C],[C,Z9]])
Gp=block_matrix([[D,Z93],[Z93,D]])
Lp=block_matrix([[Hp,Gp],[-Gp.transpose(),zero_matrix(R,6)]])
print('principal_raw_square_minus_p2', Lp*Lp == -sum(x*x for x in p)*identity_matrix(R,24))
print('B_eigenvalues', B.change_ring(QQ).charpoly().factor())
