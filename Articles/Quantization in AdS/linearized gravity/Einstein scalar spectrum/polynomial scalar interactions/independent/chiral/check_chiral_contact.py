"""Independent exact checks for global-AdS3 chiral phi^(2k) contact operators.
Run: sage --nodotsage -python check_chiral_contact.py
All contact matrices are divided by c_k=lambda/[2^k*pi^(k-1)*k!*(k*Delta-1)].
No existing notes or parent candidate results are imported.
"""
from sage.all import *
from collections import Counter
from itertools import combinations


def parts(N, L):
    if N == 0:
        return [()] if L == 0 else []
    return [tuple(list(p) + [0] * (N - len(p)))
            for p in Partitions(L, max_length=N)]


def rising(x, n):
    return prod(x + j for j in range(n))


def monomial_norm(p, delta):
    """Squared Bergman-product norm of distinct-orbit monomial sum m_p.
    Explicit QQ/ZZ coercions are essential under Python, not Sage preparser.
    """
    counts = Counter(p)
    orbit_size = QQ(factorial(len(p))) / prod(ZZ(factorial(v)) for v in counts.values())
    return orbit_size * prod(ZZ(factorial(j)) / rising(delta, j) for j in p)


def restriction(N, k, L):
    """m_lambda(z,...,z,y) in basis z^M*m_mu(y), with k copies of z."""
    ps = parts(N, L)
    rows = [(L-ell, mu) for ell in range(L+1) for mu in parts(N-k, ell)]
    R = matrix(QQ, len(rows), len(ps))
    for col, p in enumerate(ps):
        a = Counter(p)
        for row, (M, mu) in enumerate(rows):
            b = Counter(mu)
            difference = {v: a[v]-b[v] for v in set(a) | set(b)}
            if min(difference.values(), default=0) >= 0:
                R[row, col] = QQ(factorial(k)) / prod(ZZ(factorial(v)) for v in difference.values())
    return ps, rows, R


def contact_matrix(N, k, L, delta=QQ(2)):
    ps, rows, R = restriction(N, k, L)
    K = delta.parent()
    W = diagonal_matrix(K, [ZZ(factorial(M))/rising(k*delta, M)
                            * monomial_norm(mu, delta) for M, mu in rows])
    G = diagonal_matrix(K, [monomial_norm(p, delta) for p in ps])
    H = binomial(N, k)*G.inverse()*R.transpose()*W*R
    return ps, R, H


def raising(N, L, delta):
    source, target = parts(N, L), parts(N, L+1)
    index = {p: i for i, p in enumerate(target)}
    A = matrix(delta.parent(), len(target), len(source))
    for col, p in enumerate(source):
        for v in set(p):
            q = list(p)
            q[q.index(v)] += 1
            q = tuple(sorted(q, reverse=True))
            A[index[q], col] += (v+delta)*q.count(v+1)
    return A


def lowering(N, L, delta):
    source, target = parts(N, L), parts(N, L-1)
    index = {p: i for i, p in enumerate(target)}
    A = matrix(delta.parent(), len(target), len(source))
    for col, p in enumerate(source):
        for v in set(p)-{0}:
            q = list(p)
            q[q.index(v)] -= 1
            q = tuple(sorted(q, reverse=True))
            A[index[q], col] += v*q.count(v-1)
    return A


def admissible(p, k):
    return all(p[i]-p[i+k-1] >= 2 for i in range(len(p)-k+1))


def zero_dimension(N, k, L):
    return sum(admissible(p, k) for p in parts(N, L))


def cluster_counts(s, N):
    if s == 0:
        return [()] if N == 0 else []
    return [a+(m,) for m in range(N//s+1) for a in cluster_counts(s-1, N-s*m)]


def zero_hilbert_series(N, k, precision):
    T = PowerSeriesRing(QQ, 't', default_prec=precision)
    t = T.gen()
    result = T(0)
    for counts in cluster_counts(k-1, N):
        degree = sum(min(i+1,j+1)*counts[i]*counts[j]
                     for i in range(k-1) for j in range(k-1))-N
        denominator = prod(prod(1-t**j for j in range(1, m+1)) for m in counts)
        result += t**degree/denominator
    return result.add_bigoh(precision)


def check(label, condition):
    assert condition is True, (label, condition)
    print('PASS:', label)


print('Sage version:', version())
print('Matrices use exact QQ or QQ(Delta); no floating-point arithmetic.')

# Direct polynomial radial integrals check the physical KG normalization,
# separately from the abstract projector/Gram construction below.
Rrad = PolynomialRing(QQ, 'u')
u = Rrad.gen()
def integral01(f):
    return sum(QQ(c)/(j+1) for j,c in enumerate(Rrad(f).list()))
kg_checks = []
for D in (2,3,4):
    for n in range(4):
        for a in range(4):
            jacobi = Rrad(jacobi_P(n,a,D-1,1-2*u))
            radial = integral01(u**a*(1-u)**(D-1)*jacobi**2)
            Csq_pi = QQ(factorial(n)*factorial(n+a+D-1))/(2*factorial(n+a)*factorial(n+D-1))
            kg_checks.append(2*(D+a+2*n)*Csq_pi*radial == 1)
check('direct KG Jacobi norms, Delta=2,3,4, n=0..3, |ell|=0..3', all(kg_checks))
check('absolute chiral contact factor from beta integral, k=2..4, Delta=2,3,4, M=0..8',
      all((k*D-1)*integral01(u**M*(1-u)**(k*D-2))*rising(QQ(k*D),M)/ZZ(factorial(M)) == 1
          for k in range(2,5) for D in (2,3,4) for M in range(9)))

# Restriction ranks are independent of Delta. This compares independently
# constructed exact restriction matrices to the literature's partition rule.
check('restriction nullities = admissible counts, k=2..4, N=k..8, L=0..12',
      all(len(parts(N,L))-restriction(N,k,L)[2].rank() == zero_dimension(N,k,L)
          for k in range(2,5) for N in range(k,9) for L in range(13)))

check('fermionic Hilbert series = admissible counts, k=2..4, N=0..8, L=0..24',
      all(all(zero_hilbert_series(N,k,25)[L] == zero_dimension(N,k,L) for L in range(25))
          for k in range(2,5) for N in range(9)))

check('minimal kernel degree and uniqueness, k=2..4, N=k..8',
      all(zero_dimension(N,k, (k-1)*(N//(k-1))*(N//(k-1)-1)
                           +2*(N//(k-1))*(N%(k-1))) == 1
          and all(zero_dimension(N,k,L) == 0
                  for L in range((k-1)*(N//(k-1))*(N//(k-1)-1)
                                +2*(N//(k-1))*(N%(k-1))))
          for k in range(2,5) for N in range(k,9)))

print('\nPhi6 exact ranks, columns L=0,...,12:')
for N in range(3,9):
    print('N=', N, [restriction(N,3,L)[2].rank() for L in range(13)])
print('Phi6 exact nullities, columns L=0,...,12:')
for N in range(3,9):
    print('N=', N, [zero_dimension(N,3,L) for L in range(13)])

x = polygen(QQ, 'x')
check('N=k contact is a rank-one projector, k=2..4, L=0..8',
      all(contact_matrix(k,k,L)[2].charpoly() == (x-1)*x**(len(parts(k,L))-1)
          for k in range(2,5) for L in range(9)))
check('SL(2) raising intertwiner, (N,k)=(4,2),(4,3),(5,3), L=0..7',
      all(contact_matrix(N,k,L+1)[2]*raising(N,L,QQ(2))
          == raising(N,L,QQ(2))*contact_matrix(N,k,L)[2]
          for N,k in ((4,2),(4,3),(5,3)) for L in range(8)))

K = FractionField(PolynomialRing(QQ, 'Delta'))
delta = K.gen()
checks2, checks3 = [], []
for N in range(3,8):
    for k in range(2,N+1):
        ps,R,H = contact_matrix(N,k,2,delta)
        f2 = vector(K, [(QQ(N-1)/N if p[0]==2 else -QQ(2)/N) for p in ps])
        epsilon2 = binomial(N,k)-K(N*delta+1)/(k*delta+1)*binomial(N-2,k-2)
        checks2.append(H*f2 == epsilon2*f2)
        ps,R,H = contact_matrix(N,k,3,delta)
        coeff = {(3,): QQ((N-1)*(N-2))/N**2,
                 (2,1): -QQ(3*(N-2))/N**2, (1,1,1): QQ(12)/N**2}
        f3 = vector(K, [coeff[tuple(v for v in p if v)] for p in ps])
        epsilon3 = binomial(N-1,k)+binomial(N-1,k-1)*K((N-k)*(N-2*k))*(delta+1)*(delta+2)/((N-1)*(N-2)*(k*delta+1)*(k*delta+2))
        checks3.append(H*f3 == epsilon3*f3)
check('degree-two primary family, symbolic Delta, 3<=N<=7 and 2<=k<=N', all(checks2))
check('degree-three primary family, symbolic Delta, 3<=N<=7 and 2<=k<=N', all(checks3))

checks = []
for delta0 in (QQ(3)/2, QQ(2), QQ(3)):
    for k in range(2,5):
        N = k+1
        for L in range(9):
            H = contact_matrix(N,k,L,delta0)[2]
            degrees = [0]+list(range(2,L+1))
            polynomial = prod(x-(1+k*(-1)**d*rising(delta0,d)/rising(k*delta0,d)) for d in degrees)
            polynomial *= x**(len(parts(N,L))-len(degrees))
            checks.append(H.charpoly() == polynomial)
check('complete N=k+1 spectrum, k=2..4, Delta=3/2,2,3, L=0..8', all(checks))

# Direct zero-polynomial check, independent of Jack machinery.
for N in range(3,7):
    R = PolynomialRing(QQ, ['z'+str(i+1) for i in range(N)])
    z = R.gens()
    a = N//2
    Phi = R(0)
    for A in combinations(range(N), a):
        B = tuple(i for i in range(N) if i not in A)
        Phi += prod((z[i]-z[j])**2 for i,j in combinations(A,2))*prod((z[i]-z[j])**2 for i,j in combinations(B,2))
    check('balanced-group Phi6 zero mode, N='+str(N),
          Phi != 0 and Phi.subs({z[1]:z[0],z[2]:z[0]}) == 0
          and Phi.total_degree() == (N*(N-2)//2 if N%2==0 else (N-1)**2//2))

# Deliberate counterexample search: the quartic multilinear/descendant flag
# does not remain invariant under sextic contact.
N,L = 4,4
vectors = []
for s in [0,2,3,4]:
    v = vector(QQ, [1 if p==tuple([1]*s+[0]*(N-s)) else 0 for p in parts(N,s)])
    for t in range(s,L):
        v = raising(N,t,QQ(2))*v
    vectors.append(v)
B = matrix(QQ, vectors).transpose()
H2 = contact_matrix(N,2,L)[2]
H3 = contact_matrix(N,3,L)[2]
check('quartic multilinear-descendant flag invariant in N=4,L=4,Delta=2',
      B.augment(H2*B).rank() == B.rank())
check('sextic multilinear-descendant flag NOT invariant in N=4,L=4,Delta=2',
      B.augment(H3*B).rank() > B.rank())
print('Counterexample ranks: flag=',B.rank(),', sextic enlarged=',B.augment(H3*B).rank())

print('\nSelected dimensionless Phi6 characteristic polynomials, Delta=2:')
for N,L in ((4,4),(4,5),(4,6),(5,4),(5,5),(6,4)):
    print((N,L),contact_matrix(N,3,L)[2].charpoly().factor())
print('\nAll assertions passed.')
