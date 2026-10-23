# Independent exact Jacobi integration and rational-series verification.
# Run with SageMath 10.9: sage --nodotsage verify.sage.py
# No parent source is loaded. No files are written by this script.
from sage.all import QQ, PolynomialRing, binomial, factorial, RealBallField

R = PolynomialRing(QQ, 'x')
x = R.gen()

def rf(a, n):
    out = QQ(1)
    for j in range(n):
        out *= a + j
    return out

def jacobi_direct(n, delta, ell):
    return R(sum((-1)**q * binomial(n + delta - 1, n - q)
                 * binomial(n + ell, q) * x**q * (1 - x)**(n - q)
                 for q in range(n + 1)))

def moment_direct(F, n, delta, ell):
    a = 3 * delta / 2 - 1
    poly = R((1 - x)**ell * F * jacobi_direct(n, delta, ell))
    if poly == 0:
        return QQ(0)
    return sum(poly[j] / (a + j) for j in range(poly.degree() + 1))

def moment_formula(F, n, delta, ell):
    out = QQ(0)
    for k, f in enumerate(F.list()):
        a = 3 * delta / 2 - 1 + k
        out += (f * factorial(ell) / rf(a, ell + 1)
                * rf(ell + 1, n) * rf(delta - a, n)
                / (factorial(n) * rf(a + ell + 1, n)))
    return out

def d2(n, delta, ell):
    return rf(delta, n + ell) * factorial(n) / (
        factorial(n + ell) * rf(delta, n))

# Actual polynomial integrations, rather than integration of a pre-summed formula.
delta = QQ(5) / 3
ell = 2
F = 1 - 3*x + 2*x**2
G = 2 + x**3
checks = [moment_direct(P, n, delta, ell) == moment_formula(P, n, delta, ell)
          for P in [F, G] for n in range(11)]
assert all(checks)
print('22 non-even polynomial direct integrals:', all(checks))
print('F moments n=0..4:', [moment_direct(F, n, delta, ell) for n in range(5)])
print('G moments n=0..4:', [moment_direct(G, n, delta, ell) for n in range(5)])

# Finite-support and pole projection test.
delta = QQ(4)
ell = 2
F = 1 + 2*x
G = 1 - x + 3*x**2
N = 1
Omega = delta + ell + 2*N
mF = [moment_direct(F, n, delta, ell) for n in range(8)]
mG = [moment_direct(G, n, delta, ell) for n in range(8)]
assert all(mF[n] == moment_formula(F, n, delta, ell)
           and mG[n] == moment_formula(G, n, delta, ell) for n in range(8))
assert all(mF[n] == 0 for n in range(3, 8))
assert all(mG[n] == 0 for n in range(4, 8))
residue = d2(N, delta, ell) * mF[N] * mG[N]
Qsum = sum(d2(n, delta, ell) * mF[n] * mG[n] / (Omega - delta - ell - 2*n)
           for n in range(8) if n != N)
assert residue == QQ(377)/635040
assert Qsum == QQ(28807)/17463600
print('Even-Delta F direct moments:', mF)
print('Even-Delta G direct moments:', mG)
print('Even-Delta resonance residue:', residue)
print('Even-Delta Q sum:', Qsum)

# Exact independent check of the infinite Delta=3 series.
# All partial-fraction terms use (2*n+r)^(-s), with r odd.
PN = PolynomialRing(QQ, 'n')
n = PN.gen()
field = PN.fraction_field()
t = field(900) / ((3 - 2*n) * ((2*n - 1)*(2*n + 1)*(2*n + 3)
                             *(2*n + 5)*(2*n + 7))**2)
c1 = {-3: -QQ(1)/16384, -1: -QQ(475)/98304, 1: -QQ(175)/12288,
      3: QQ(25)/4096, 5: QQ(575)/49152, 7: QQ(131)/98304}
c2 = {-1: QQ(25)/8192, 1: QQ(25)/1024, 3: QQ(75)/2048,
      5: QQ(25)/2048, 7: QQ(5)/8192}
apart = (sum(c / (2*n + r) for r, c in c1.items())
         + sum(c / (2*n + r)**2 for r, c in c2.items()))
assert t == apart
assert sum(c1.values()) == 0

def shift_correction(r, power):
    p = (r - 1) // 2
    if p >= 0:
        return -sum(QQ(1)/(2*j + 1)**power for j in range(p))
    return sum(QQ(1)/(2*j + 1)**power for j in range(p, 0))

rational_part = (sum(c * shift_correction(r, 1) for r, c in c1.items())
                 + sum(c * shift_correction(r, 2) for r, c in c2.items()))
pi_squared_coefficient = sum(c2.values()) / 8
assert rational_part == -QQ(1)/15
assert pi_squared_coefficient == QQ(315)/32768
print('Exact partial-fraction identity:', t == apart)
print('Exact series =', rational_part, '+', pi_squared_coefficient, '* pi^2')

# Interval arithmetic numerical cross-check with a rigorous elementary tail bound.
BF = RealBallField(200)
partial = sum(BF(900) / ((3 - 2*j) * ((2*j - 1)*(2*j + 1)*(2*j + 3)
                                   *(2*j + 5)*(2*j + 7))**2)
              for j in range(1001))
closed = BF(315) * BF.pi()**2 / 32768 - BF(1)/15
bound = BF(90) / 1000**10
# For j>=1001 all five factors |2*j+r| >= j, and |3-2*j| >= j.
# Thus |t_j| <= 900/j^11 and the tail <= integral_1000^inf 900*x^-11 dx.
assert abs(closed - partial) < bound
print('200-bit ball partial sum:', partial)
print('Closed value minus partial:', closed - partial)
print('Rigorous tail bound:', bound)
print('Certified difference below tail bound:', abs(closed - partial) < bound)

# Rational specialization verified at several non-even half-integral parameters.
for delta, ell, k in [(QQ(3)/2, 0, 0), (QQ(3)/2, 2, 1),
                      (QQ(5)/2, 1, 2), (QQ(3), 3, 1)]:
    a = 3*delta/2 - 1 + k
    b = delta - a
    M = int(2*delta + ell + 2*k - 1)
    for index in range(8):
        rational = (factorial(ell)/rf(a, ell + 1)
                    * rf(index + 1, ell)/factorial(ell)
                    * rf(b, M)/rf(index + b, M))
        assert rational == moment_direct(x**k, index, delta, ell)
        assert d2(index, delta, ell) == rf(index + delta, ell)/rf(index + 1, ell)
print('32 rational-kernel direct-integral checks: True')

# Later parent-requested arithmetic extension: a nontrivial angular source.
# Delta=5/2,l=1,F=G=5/2-9*x/2, mixed Omega=3.
PP = PolynomialRing(QQ, 'q')
q = PP.gen()
FF = PP.fraction_field()
delta = QQ(5)/2
s = delta + 1
radial = FF(-3360)*(q+1)*(4*q*q+14*q+1) / (
    (4*q-5)*(4*q-1)*(4*q+3)*(4*q+7)*(4*q+11)*(4*q+15)*(4*q+19))
weight = FF(q+delta)/(q+1)
frequency = s+2*q
paired = weight*radial**2*(2*frequency/(9-frequency**2))
assert radial(-q-s) == weight*radial
assert weight(-q-s)*weight == 1
assert paired(-q-s) == -paired
print('Three paired rational reflection identities: True')
partial = BF(0)
for j in range(1001):
    r = BF(-3360)*(j+1)*(4*j*j+14*j+1) / (
        (4*j-5)*(4*j-1)*(4*j+3)*(4*j+7)*(4*j+11)*(4*j+15)*(4*j+19))
    freq = BF(7)/2+2*j
    partial += (BF(j)+BF(5)/2)/(j+1)*r*r*(2*freq/(9-freq*freq))
closed = -BF(1)/210-3*BF.pi()/4096
# For j>=1001: |R_j| <= (127680/2187)*j^-4, d_j^2<2, |D_j|<2/j.
bound = BF(4)*(BF(127680)/2187)**2/8/1000**8
assert abs(closed-partial) < bound
print('Paired Delta5/2 ball partial:', partial)
print('Paired closed minus partial:', closed-partial)
print('Paired rigorous tail bound:', bound)
print('Paired certified difference below tail bound:', abs(closed-partial) < bound)
