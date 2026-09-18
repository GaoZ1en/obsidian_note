# Exact rational checks of the chiral basis used in the OFPT reconstruction.
# Run with SageMath; the functions can also be loaded by the Sage MCP.
def ofpt_rising(d, n):
    value = QQ(1)
    for j in range(n):
        value *= d + j
    return value


def ofpt_hahn(N, k, p, d):
    return sum((ofpt_rising(-k, j) * ofpt_rising(k + 2*d - 1, j)
                * ofpt_rising(-p, j)
                / (ofpt_rising(d, j) * ofpt_rising(-N, j) * factorial(j))
                for j in range(min(k, p) + 1)), QQ(0))


ofpt_basis_checks = {
    "primary lowering": True,
    "raising agrees with Hahn coefficients": True,
    "positive chiral orthogonality": True,
    "exchange parity": True,
    "half range orthogonality": True,
    "nonzero inverse entries": True,
}

for d in [QQ(3)/2, QQ(2), QQ(7)/3]:
    for N in range(9):
        w = vector(QQ, [binomial(N, p) * ofpt_rising(d, p)
                        * ofpt_rising(d, N-p) / ofpt_rising(2*d, N)
                        for p in range(N+1)])
        Q = matrix(QQ, [[ofpt_hahn(N, k, p, d) for k in range(N+1)]
                        for p in range(N+1)])
        H = Q.transpose() * diagonal_matrix(w) * Q
        ofpt_basis_checks["positive chiral orthogonality"] &= (
            H.is_diagonal() and all(h > 0 for h in H.diagonal()))
        ofpt_basis_checks["exchange parity"] &= all(
            Q[N-p, k] == (-1)**k * Q[p, k]
            for p in range(N+1) for k in range(N+1))
        for k in range(N+1):
            # Unnormalized product basis (L_-1)^p|Delta/2> in each factor.
            c = [QQ(1)]
            for p in range(k):
                c.append(-c[-1] * (k-p) * (d+k-p-1) / ((p+1)*(d+p)))
            ofpt_basis_checks["primary lowering"] &= all(
                c[p+1]*(p+1)*(d+p) + c[p]*(k-p)*(d+k-p-1) == 0
                for p in range(k))
            raised = vector(QQ, [sum(c[p] * binomial(N-k, r-p)
                              for p in range(k+1) if 0 <= r-p <= N-k)
                              for r in range(N+1)])
            rescaled = vector(QQ, [raised[p]*factorial(p)*factorial(N-p)
                                  for p in range(N+1)])
            ofpt_basis_checks["raising agrees with Hahn coefficients"] &= (
                rescaled == rescaled[0]*Q.column(k))
        ns, ks = list(range(N//2+1)), list(range(N, -1, -2))
        half = matrix(QQ, [[sum(QQ(2)/(1 + ZZ(2*p == N))
                                    * w[p]*Q[p, k]*Q[p, l] for p in ns)
                             for l in ks] for k in ks])
        ofpt_basis_checks["half range orthogonality"] &= (
            half == diagonal_matrix([H[k, k] for k in ks]))
        ofpt_basis_checks["nonzero inverse entries"] &= all(
            Q[p, N] != 0 for p in ns)

print(ofpt_basis_checks)
assert all(value is True for value in ofpt_basis_checks.values())
