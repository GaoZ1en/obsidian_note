# Run with SageMath, or exec this text in the Sage MCP.
# Exact rational checks, independent of Mathematica's normalized-ladder code.
def rising(a, k):
    return prod(a + j for j in range(k))

def hahn(N, d, k, p):
    return sum(rising(-k, j) * rising(k + 2*d - 1, j) * rising(-p, j)
               / (rising(d, j) * rising(-N, j) * factorial(j))
               for j in range(min(k, p) + 1))

representation_data = []
for d in [QQ(3)/2, QQ(2), QQ(7)/3]:
    for N in range(9):
        W = diagonal_matrix(QQ, [binomial(N, p) * rising(d, p)
            * rising(d, N-p) / rising(2*d, N) for p in range(N+1)])
        Q = matrix(QQ, [[hahn(N, d, k, p) for k in range(N+1)]
                       for p in range(N+1)])
        C = matrix(QQ, N+1, N+1)
        for p in range(N+1):
            C[p,p] = p*(d+p-1) + (N-p)*(d+N-p-1)
            if p < N:
                C[p,p+1] = (d+p)*(N-p)
            if p > 0:
                C[p,p-1] = (d+N-p)*p
        representation_data.append((N,d,W,Q,C))

def orthogonality_ok():
    return all((Q.transpose()*W*Q).is_diagonal()
        and all(v > 0 for v in (Q.transpose()*W*Q).diagonal())
        for N,d,W,Q,C in representation_data)

def exchange_parity_ok():
    return all(Q[N-p,k] == (-1)**k * Q[p,k]
        for N,d,W,Q,C in representation_data
        for p in range(N+1) for k in range(N+1))

def casimir_ok():
    return all(C*Q == Q*diagonal_matrix(QQ,
        [(N-k)*(2*d+N+k-1) for k in range(N+1)])
        for N,d,W,Q,C in representation_data)

def reconstruction_invertible():
    for N,d,W,Q,C in representation_data:
        ns = list(range(N//2+1))
        ks = list(range(N,-1,-2))
        B = matrix(QQ, [[Q[n,k] for k in ks] for n in ns])
        if B.det() == 0 or any(Q[n,N] == 0 for n in ns):
            return False
    return True

checks = {
    "positive orthogonal chiral basis": orthogonality_ok(),
    "boson exchange parity": exchange_parity_ok(),
    "two-particle Casimir": casimir_ok(),
    "invertible reconstruction": reconstruction_invertible(),
}
print(checks)
assert all(value is True for value in checks.values())
