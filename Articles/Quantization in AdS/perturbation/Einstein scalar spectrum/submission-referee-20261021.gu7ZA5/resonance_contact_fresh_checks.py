"""Fresh, selective exact checks of the stable contact resonance argument.
Run with SageMath 10.9: sage --nodotsage resonance_contact_fresh_checks.py
No repository package, prior audit, saved matrix, or result is imported.
This records the calculations independently executed through Sage MCP.
"""
from sage.all import *

R = PolynomialRing(QQ, names=('n', 'b'))
n, b = R.gens()
K = R.fraction_field()
a = K(2*n*(n+b)/((2*n+b-1)*(2*n+b)))
brec = K(b*b/((2*n+b-2)*(2*n+b)))
c = K(2*(n-1)*(n+b-1)/((2*n+b-2)*(2*n+b-1)))
u = K((2*n+2*b+1)*b/(2*(n+b)*(b+1)))
v = K((n-1)*(2*n+2*b+1)*b*(b-1)/
      ((2*n-1)*(n+b-1)*(b+1)*(b+2)))
triple = K(((b+2)*(a+brec*u+c*v)-b*u)/2)
assert triple == K(n/(2*n-1))
print('all-index adjacent triple: PASS')

d = b+1
A = 2*n-1
h = K((2*d+1)*(d+A)/(2*d+A))
assert h.derivative(b) == K((4*d*d+4*A*d+2*A*A-A)/(2*d+A)**2)
den = (n+1)*(2*d+2*n+1)*(d+2*n-1)
num = (2*n-1)*(d+n-1)*(d+2*n+1)
assert den-num == 3*d*d+(8*n-1)*d+8*n*n-2
print('uniqueness derivative and sequence monotonicity: PASS')

S = PolynomialRing(QQ, 'y')
y = S.gen()
def rise(x, k):
    return prod(x+j for j in range(k))
def jac(m, alpha, beta):
    return S(sum((-1)**j*binomial(m+alpha, m-j)*
                 rise(m+alpha+beta+1, j)/factorial(j)*y**j
                 for j in range(m+1)))
def beta_integral(poly, alpha, beta2):
    return sum(QQ(poly[j])*QQ(gamma(alpha+j+1)*gamma(beta2+1)/
               gamma(alpha+j+beta2+2))
               for j in range(poly.degree()+1))
checks = []
for alpha, beta in [(0, QQ(1)/2), (2, QQ(3)/2), (1, QQ(2))]:
    for nn, mm in [(1, 0), (2, 1), (3, 1), (4, 3)]:
        lhs = beta_integral(jac(nn, alpha, beta)*jac(mm, alpha, beta),
                            alpha, 2*beta)
        rhs = QQ(gamma(alpha+nn+mm+1)*gamma(2*beta+1)/
                 (factorial(nn)*factorial(mm)*gamma(alpha+nn+mm+2*beta+2))*
                 rise(beta+mm-nn+1, nn)*rise(beta+nn-mm+1, mm))
        checks.append(lhs == rhs)
assert all(checks)
print('direct unequal Jacobi/Beta checks:', sum(checks), '/', len(checks))

D = PolynomialRing(QQ, 'd')
d = D.gen()
F = D.fraction_field()
def w(p, k):
    return F(binomial(p, k)*rise(d, p)/
             (rise(2*d+k-1, k)*rise(2*d+2*k, p-k)))
checks = []
for p, q in [(1, 1), (2, 0), (3, 1), (2, 4), (5, 3), (6, 6)]:
    lhs = F(2*sum((2*d-1)/(2*d+2*k-1)*w(p, k)*w(q, k)
                  for k in range(min(p, q)+1)))
    rhs = F(2*binomial(p+q, p)*rise(d, p)*rise(d, q)/rise(2*d, p+q))
    checks.append(lhs == rhs)
assert all(checks)
print('channel/beta-binomial checks:', sum(checks), '/', len(checks))
