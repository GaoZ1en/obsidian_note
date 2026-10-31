"""Run with SageMath 10.9: sage --nodotsage canonical_map_checks.py.
Exact Grassmann checks of the mixed-antifield generating function.
All products here are component Grassmann products, not total-form products.
The symbol g is 1/kappa = 1/(2*a).  One internal component suffices because
this generating function is an orthogonal sum over internal components.
"""
from sage.all import QQ, PolynomialRing, ExteriorAlgebra
from sage.version import version
from itertools import permutations

R = PolynomialRing(QQ, names=('g','x','y','e0','e1','e2','w0','w1','w2'))
g,x,y,*rest = R.gens()
e = rest[:3]
w = rest[3:]
A = ExteriorAlgebra(R, names=('z0','z1','z2','p0','p1','p2','q0','q1','q2','l'))
z = list(A.gens()[:3])
p = list(A.gens()[3:6])
q = list(A.gens()[6:9])
l = A.gens()[9]

def eps(i,j,k):
    if len({i,j,k}) < 3: return 0
    return 1 if (i,j,k) in ((0,1,2),(1,2,0),(2,0,1)) else -1

def i1_two(P):
    return [sum((eps(a,m,n)*z[m]*P[a] for a in range(3) for m in range(3)), A.zero()) for n in range(3)]

def i2_three(X):
    return [-sum((eps(m,n,j)*z[m]*z[n]*X for m in range(3) for n in range(3)), A.zero()) for j in range(3)]

def i2_two(P):
    return -sum((eps(a,m,n)*z[m]*z[n]*P[a] for a in range(3) for m in range(3) for n in range(3)), A.zero())

def i3_three(X):
    return -6*z[0]*z[1]*z[2]*X

def even_derivative(f, variable):
    return A.sum_of_terms((key, coefficient.derivative(variable)) for key,coefficient in f.monomial_coefficients().items())

def check(label, residual):
    ok = residual == 0
    print(label + ': ' + ('PASS' if ok else 'FAIL'))
    if not ok: print('  residual =', residual)
    assert ok, label

F = sum((p[i]*e[i]+q[i]*w[i]+y*z[i]*e[i]+x*z[i]*w[i] for i in range(3)), A.zero()) + x*l
F += g*sum((p[i]*i1_two(q)[i] for i in range(3)), A.zero())
F += g/2*sum((p[i]*i2_three(x)[i]+q[i]*i2_three(y)[i] for i in range(3)), A.zero())
F += g/3*y*i3_three(x)
print('SageMath:', version)
print('Generating density monomials:', len(F.monomial_coefficients()))
for i in range(3):
    check('dF/dP_E[%d]' % i, F.interior_product(p[i])-e[i]-g*i1_two(q)[i]-g/2*i2_three(x)[i])
    check('dF/dP_Omega[%d]' % i, F.interior_product(q[i])-w[i]-g*i1_two(p)[i]-g/2*i2_three(y)[i])
    check('dF/de[%d]' % i, even_derivative(F,e[i])-p[i]-z[i]*y)
    check('dF/domega[%d]' % i, even_derivative(F,w[i])-q[i]-z[i]*x)
check('dF/dP_rho', even_derivative(F,x)-l-sum(z[i]*w[i] for i in range(3))-g/2*i2_two(p)-g/3*i3_three(y))
check('dF/dP_tau', even_derivative(F,y)-sum(z[i]*e[i] for i in range(3))-g/2*i2_two(q)-g/3*i3_three(x))
check('dF/dlambda', F.interior_product(l)-x)

# Re-express new antifields P_E,P_Omega in terms of geometric e*,omega*.
images = z + [p[i]-z[i]*y for i in range(3)] + [q[i]-z[i]*x for i in range(3)] + [l]
# Sage 10.9 A.hom(images,A) cannot verify homomorphisms here.
# Check all defining exterior relations ourselves, then evaluate monomials.
assert all(images[i]*images[j]+images[j]*images[i] == 0 for i in range(10) for j in range(10))
def sub(f):
    ans = A.zero()
    for key,coefficient in f.monomial_coefficients().items():
        term = A(coefficient)
        for j in key: term *= images[j]
        ans += term
    return ans
for i in range(3):
    omega_star_contract_e_star = sum((eps(a,i,n)*q[n]*p[a] for a in range(3) for n in range(3)), A.zero())
    expected = y*e[i] + x*w[i] - g*omega_star_contract_e_star
    check('dF/dxi[%d] after antifield substitution' % i, sub(F.interior_product(z[i]))-expected)
    check('E[%d] explicit' % i, sub(F.interior_product(p[i]))-e[i]-g*i1_two(q)[i]+g/2*i2_three(x)[i])
    check('Omega[%d] explicit' % i, sub(F.interior_product(q[i]))-w[i]-g*i1_two(p)[i]+g/2*i2_three(y)[i])
check('tau explicit', sub(even_derivative(F,y))-sum(z[i]*e[i] for i in range(3))-g/2*i2_two(q)+g/6*i3_three(x))
check('rho explicit', sub(even_derivative(F,x))-l-sum(z[i]*w[i] for i in range(3))-g/2*i2_two(p)+g/6*i3_three(y))
print('ALL CANONICAL MAP CHECKS PASSED')
