from sage.all import QQ, AA, PolynomialRing, matrix, identity_matrix, diagonal_matrix, vector, save, version
from itertools import product
from pathlib import Path
import os, tempfile, pprint
R = PolynomialRing(QQ, ['c%d%d' % (i,j) for i in range(1,4) for j in range(1,4)])
c = R.gens()
C = matrix(R, 3, 3, c)
def eps(i,j,k):
    p = (i,j,k)
    if len(set(p)) < 3:
        return 0
    inv = sum(p[a] > p[b] for a in range(3) for b in range(a+1,3))
    return (-1)**inv
def K(a,b,j):
    return sum(eps(a,b,d)*C[d,j] for d in range(3))
quad = sum(eps(a,b,d)*K(b,f,j)*K(f,d,k)*eps(a,j,k) for a,b,d,f,j,k in product(range(3), repeat=6))
qform = C.trace()**2-(C*C).trace()
H = matrix(QQ, 9, 9, lambda i,j: qform.derivative(c[i]).derivative(c[j]))
B = []
B.append(identity_matrix(AA,3)/AA(3).sqrt())
B.append(diagonal_matrix(AA,[1,-1,0])/AA(2).sqrt())
B.append(diagonal_matrix(AA,[1,1,-2])/AA(6).sqrt())
for i,j in [(0,1),(0,2),(1,2)]:
    b = matrix(AA,3,3,0); b[i,j]=1/AA(2).sqrt(); b[j,i]=1/AA(2).sqrt(); B.append(b)
for i,j in [(0,1),(0,2),(1,2)]:
    b = matrix(AA,3,3,0); b[i,j]=1/AA(2).sqrt(); b[j,i]=-1/AA(2).sqrt(); B.append(b)
P = matrix(AA,9,9, lambda i,j: list(B[j])[i//3][i%3])
diagonal = P.transpose()*H*P
# Exact polynomial test of wall identity for general normal and arbitrary tangent vectors.
W = PolynomialRing(QQ, ['n1','n2','n3','u1','u2','u3','v1','v2','v3','p1','p2','p3','q1','q2','q3'])
w=W.gens(); n=vector(W,w[0:3]); u=vector(W,w[3:6]); v=vector(W,w[6:9]); p=vector(W,w[9:12]); t=vector(W,w[12:15])
bulk = 2*(u.dot_product(t)-v.dot_product(p))
wall = 2*sum(eps(a,b,d)*eps(d,f,k)*n[a]*(u[b]*t[k]-v[b]*p[k])*n[f] for a,b,d,f,k in product(range(3), repeat=5))
expected = 2*((1-n.dot_product(n))*(u.dot_product(t)-v.dot_product(p))+n.dot_product(u)*n.dot_product(t)-n.dot_product(v)*n.dot_product(p))
checks = {
 'curvature_polynomial_identity': quad == -qform,
 'basis_orthonormal': P.transpose()*P == identity_matrix(AA,9),
 'complete_diagonal_hessian': diagonal == diagonal_matrix(AA,[4,-2,-2,-2,-2,-2,2,2,2]),
 'hessian_determinant': H.det() == -1024,
 'general_normal_wall_identity': bulk-wall == expected,
 'negative_symmetric_counterexample': qform(*[1,0,0,0,-1,0,0,0,0]) == -2,
 'positive_trace_counterexample': qform(*[1,0,0,0,1,0,0,0,1]) == 6,
 'positive_antisymmetric_counterexample': qform(*[0,1,0,-1,0,0,0,0,0]) == 2,
}
result = {'SageVersion':version(), 'Ring':str(R), 'QuadraticForm':str(qform), 'DirectCurvatureCoefficient':str(quad), 'Hessian':H, 'CharacteristicPolynomial_det_lambdaI_minusH':H.charpoly().factor(), 'HessianDeterminant':H.det(), 'Eigenvalues':H.eigenvalues(), 'BasisDeterminant':P.det(), 'DiagonalHessian':diagonal, 'WallResidual':str(bulk-wall-expected), 'Checks':checks, 'AllChecksPass':all(checks.values())}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='independent-first-order-sage-',dir=store))
save(result,str(out/'result.sobj'))
(out/'result.txt').write_text(pprint.pformat(result,width=100,sort_dicts=False)+'\n',encoding='utf-8')
print(str(out/'result.sobj'))
print(str(out/'result.txt'))
print('AllChecksPass:',result['AllChecksPass'])
