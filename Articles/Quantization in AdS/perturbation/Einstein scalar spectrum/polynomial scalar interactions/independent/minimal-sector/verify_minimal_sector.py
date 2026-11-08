"""Exact Sage checks for minimal-particle scalar contacts on global AdS3.

Run with Sage 10.9/Python syntax, e.g. sage --nodotsage this_file.py.
No numerical tolerances, candidate eigenvectors, or floating arithmetic.
The script prints a report; it does not modify any file.

Normalized-oscillator modes are rescaled to the rational ladder basis
b^dagger_pq = sqrt[p! q! (Delta)_p (Delta)_q] a^dagger_pq.
Hence all matrices/Gram matrices are rational functions of Delta.
A contact of degree d has a common prefactor
    lambda_d / [2 (2*pi)^(d/2-1)].
All contact matrices below have this prefactor stripped off.
"""
from sage.all import (
    QQ, PolynomialRing, matrix, diagonal_matrix, factorial, binomial,
)
from collections import Counter
from functools import lru_cache

D = PolynomialRing(QQ, "Delta")
Delta = D.gen()
F = D.fraction_field()
R = PolynomialRing(F, "z")
z = R.gen()
T = PolynomialRing(F, "X")
X = T.gen()


def rising(a, n):
    out = F(1)
    for j in range(int(n)):
        out *= a + j
    return out


def jacobi(n, ell):
    """P_n^(ell,Delta-1)(1-2z), expanded over QQ(Delta)."""
    return R(sum(
        (-1)**j * binomial(n + ell, n - j)
        * rising(Delta + n + ell, j) / factorial(j) * z**j
        for j in range(n + 1)
    ))


def ladder_norm(p, q):
    return factorial(p) * factorial(q) * rising(Delta, p) * rising(Delta, q)


@lru_cache(maxsize=None)
def states(k, P, Q):
    """Unordered k-tuples of one-particle (p,q), total (P,Q)."""
    if P < 0 or Q < 0:
        return ()
    modes = [(p, q) for p in range(P + 1) for q in range(Q + 1)]
    out = []

    def rec(start, left, pleft, qleft, seq):
        if left == 0:
            if pleft == qleft == 0:
                out.append(tuple(seq))
            return
        for j in range(start, len(modes)):
            p, q = modes[j]
            if p <= pleft and q <= qleft:
                rec(j, left - 1, pleft - p, qleft - q, seq + [(p, q)])

    rec(0, k, P, Q, [])
    return tuple(out)


@lru_cache(maxsize=None)
def data(k, P, Q):
    """Radial products after stripping z^|J|/2 (1-z)^kDelta/2 / (2pi)^k/2."""
    basis = states(k, P, Q)
    ell = abs(P - Q)
    polynomials, norms = [], []
    for st in basis:
        poly = z**((sum(abs(p-q) for p, q in st) - ell) // 2)
        gram = F(1)
        for (p, q), occ in Counter(st).items():
            n, m = min(p, q), max(p, q)
            # Phase makes both sl(2) ladder coefficients positive.
            mode = (-1)**n * factorial(n) * rising(Delta, m) * jacobi(n, m-n)
            poly *= mode**occ
            gram *= factorial(occ) * ladder_norm(p, q)**occ
        polynomials.append(poly)
        norms.append(gram)
    return basis, tuple(polynomials), tuple(norms)


def beta_integral(poly, ell, exponent_plus_one):
    """Integral_0^1 z^ell (1-z)^(exponent_plus_one-1) poly(z) dz."""
    return sum(
        F(c) * factorial(j + ell) / rising(exponent_plus_one, j + ell + 1)
        for j, c in enumerate(R(poly).list())
    )


def contact(r, Pr, Qr, s=None, Ps=None, Qs=None):
    """Return source/target Gram matrices and the reduced vertex bilinear form."""
    if s is None:
        s, Ps, Qs = r, Pr, Qr
    assert Pr - Qr == Ps - Qs
    _, fr, gr = data(r, Pr, Qr)
    _, fs, gs = data(s, Ps, Qs)
    exponent_plus_one = F(r + s) * Delta / 2 - 1
    K = matrix(F, len(fs), len(fr), lambda i, j:
               beta_integral(fs[i] * fr[j], abs(Pr-Qr), exponent_plus_one))
    return diagonal_matrix(F, gr), diagonal_matrix(F, gs), K


def lowering(k, P, Q, side):
    source = states(k, P, Q)
    target = states(k, P-1, Q) if side == 0 else states(k, P, Q-1)
    index = {st: j for j, st in enumerate(target)}
    ans = matrix(F, len(target), len(source))
    for col, st in enumerate(source):
        for mode, occ in Counter(st).items():
            p, q = mode
            n = mode[side]
            if n:
                seq = list(st)
                seq.remove(mode)
                seq.append((p-1, q) if side == 0 else (p, q-1))
                row = index[tuple(sorted(seq))]
                ans[row, col] += occ * n * (Delta + n - 1)
    return ans


def primaries(k, P, Q):
    L = lowering(k, P, Q, 0).stack(lowering(k, P, Q, 1))
    return L.right_kernel().basis_matrix().transpose()


def primary_multiplicity(k, P, Q):
    def count(p, q):
        return len(states(k, p, q)) if p >= 0 and q >= 0 else 0
    return count(P, Q)-count(P-1, Q)-count(P, Q-1)+count(P-1, Q-1)


def primary_reduced_eigenvalue(k, n):
    return F(binomial(n+k-2, k-2)) / (factorial(k)*(k*Delta+2*n-1))


def exact_block_tests():
    print("A. Generic-Delta characteristic polynomials (Delta>1)")
    cases = [
        (2,0,0), (2,1,0), (2,1,1), (2,2,0), (2,2,2),
        (3,1,1), (3,2,0), (3,2,2), (4,1,1), (4,2,2),
    ]
    for k, P, Q in cases:
        G, _, K = contact(k, P, Q)
        M = G.inverse()*K
        expected_rank = min(P, Q)+1
        expected = X**(M.nrows()-expected_rank)
        for n in range(expected_rank):
            expected *= X-primary_reduced_eigenvalue(k, n)
        assert T(M.charpoly()) == expected
        assert M.rank() == expected_rank
        print("PASS k=%d (P,Q)=(%d,%d): dim=%d rank=%d charpoly exact"
              % (k, P, Q, M.nrows(), M.rank()))


def exact_primary_tests():
    print("\nB. Primary spaces obtained independently by both lowering kernels")
    for k, P, Q in [(2,1,1),(2,2,0),(2,2,2),(3,2,2),(3,3,0),(4,2,2)]:
        G, _, K = contact(k, P, Q)
        U = primaries(k, P, Q)
        multiplicity = primary_multiplicity(k, P, Q)
        assert U.ncols() == multiplicity
        Gp, Kp = U.transpose()*G*U, U.transpose()*K*U
        Mp = Gp.inverse()*Kp
        if P == Q:
            expected = X**(multiplicity-1)*(X-primary_reduced_eigenvalue(k,P))
            expected_rank = 1
        else:
            expected = X**multiplicity
            expected_rank = 0
        assert T(Mp.charpoly()) == expected
        assert Mp.rank() == expected_rank
        print("PASS k=%d primary (P,Q)=(%d,%d): multiplicity=%d rank=%d"
              % (k,P,Q,multiplicity,Mp.rank()))


def specialize(A, value):
    return matrix(QQ, A.nrows(), A.ncols(), [a(value) for a in A.list()])


def cross_vertex_tests():
    print("\nC. Minimal r->s resonant cross vertices, exact rational Delta")
    # Target ground: tests unique and multiply-degenerate source scalar primaries.
    for r,s,a,dval in [(2,3,1,QQ(2)),(2,4,2,QQ(2)),
                       (3,5,2,QQ(2)),(2,6,3,QQ(3)/2)]:
        assert r*dval+2*a == s*dval
        Mmass = s*dval
        Gr, Gs, K = contact(r,a,a,s,0,0)
        Gr, Gs, K = (specialize(A,dval) for A in (Gr,Gs,K))
        # Squared row norm in the two Fock metrics; no presumed primary vector.
        strength = (Gs.inverse()*K*Gr.inverse()*K.transpose())[0,0]
        expected = QQ(binomial(a+r-2,r-2))/(factorial(r)*factorial(s)*(Mmass-1)**2)
        assert strength == expected
        U = specialize(primaries(r,a,a),dval)
        Gp, Kp = U.transpose()*Gr*U, K*U
        strength_primary = (Gs.inverse()*Kp*Gp.inverse()*Kp.transpose())[0,0]
        assert strength_primary == strength
        print("PASS r=%d s=%d Delta=%s source a=%d: reduced |V|^2=%s; source-primary multiplicity=%d"
              % (r,s,dval,a,strength,U.ncols()))
    # One descendant of a shared M=8 module and a second, M=10 primary.
    Gr,Gs,K = contact(2,3,3,4,1,1)
    Gr,Gs,K = (specialize(A,QQ(2)) for A in (Gr,Gs,K))
    squared = Gs.inverse()*K*Gr.inverse()*K.transpose()
    target = (X-QQ(1)/2352)*(X-QQ(1)/1296)
    assert T(squared.charpoly()) == target
    print("PASS r=2 s=4 Delta=2 E=10 J=0: two squared reduced singular values 1/2352, 1/1296")


def broader_exact_samples():
    print("\nD. Larger exact rational blocks (not used as an all-level proof)")
    for k,P,Q,dval in [(2,4,4,QQ(3)/2),(3,3,3,QQ(3)/2),
                       (4,3,3,QQ(7)/5),(5,3,3,QQ(2)),(3,4,2,QQ(5)/3)]:
        G,_,K = contact(k,P,Q)
        G,K = specialize(G,dval),specialize(K,dval)
        M = G.inverse()*K
        expected = X**(M.nrows()-min(P,Q)-1)
        for n in range(min(P,Q)+1):
            expected *= X-primary_reduced_eigenvalue(k,n)(dval)
        assert T(M.charpoly()) == expected
        print("PASS k=%d (P,Q)=(%d,%d) Delta=%s: dim=%d rank=%d charpoly exact"
              % (k,P,Q,dval,M.nrows(),M.rank()))


def spectator_counterexample():
    print("\nE. Concrete full-theory cross-N resonance counterexample")
    # Delta=2, phi^6: |in>=(a11dagger)^2 a00dagger|0>/sqrt(2),
    # |out>=(a00dagger)^5|0>/sqrt(5!), both E=10,J=0.
    integrand = (1-z)**4 * (1-3*z)**2
    beta_value = sum(c/QQ(j+1) for j,c in enumerate(integrand.list()))
    assert beta_value == QQ(3)/35
    oscillator_squared = QQ(factorial(5)*factorial(2))/(factorial(4)*factorial(2))**2
    reduced_squared = oscillator_squared * beta_value**2
    assert reduced_squared == QQ(3)/3920
    print("PASS phi^6 Delta=2: N=3 -> N=5 at E=10,J=0; reduced |V|^2=3/3920")
    print("Equivalent matrix element: lambda6*sqrt(15)/(1120*pi^2), nonzero.")


def main():
    exact_block_tests()
    exact_primary_tests()
    cross_vertex_tests()
    broader_exact_samples()
    spectator_counterexample()
    print("\nALL CHECKS PASSED. All displayed values are exact, no float tolerances.")
    print("All vertex matrices strip lambda_d/[2(2*pi)^(d/2-1)].")


if __name__ == "__main__":
    main()
