# Exact finite deck-group witnesses; not a distribution or EG existence proof.
from sage.all import *
from itertools import product, permutations
import json
checks = {}
P = matrix(QQ, [[0,1],[1,0]])
Delta = identity_matrix(QQ,2)
contact = Delta + P
checks["simultaneous invariance is insufficient"] = ((P*Delta*P == Delta) and (P*Delta != Delta))
checks["quotient contact has both lifted diagonals"] = (P*contact == contact and contact*P == contact)
checks["averaging lone diagonal has wrong contact normalization"] = ((Delta+P*Delta)/2 == contact/2 and contact/2 != contact)
M = matrix(QQ, [[1,0],[1,0],[0,1],[0,1]])
T = matrix(QQ, [[2,3],[5,7]])
f = vector(QQ,[11,13]); h = vector(QQ,[17,19])
checks["two-slot density normalization"] = ((M*f)*((M*T*M.transpose())*(M*h))/4 == f*(T*h))
for k in range(2,5):
    slots = list(product((0,1), repeat=k))
    ix = {s:i for i,s in enumerate(slots)}
    N = len(slots)
    def translation(g):
        return matrix(QQ,N,N,lambda i,j: QQ(j == ix[tuple((slots[i][a]+g[a])%2 for a in range(k))]))
    mats = [translation(g) for g in slots]
    R = sum(mats, zero_matrix(QQ,N))/N
    checks[f"k={k} independent-slot Reynolds projection"] = (R*R == R and all(A*R == R for A in mats))
    perms = []
    for perm in permutations(range(k)):
        Q = matrix(QQ,N,N,lambda i,j: QQ(j == ix[tuple(slots[i][a] for a in perm)]))
        perms.append(Q)
    checks[f"k={k} vertex permutations preserve Reynolds projection"] = all(Q*R == R for Q in perms)
    components = [{tuple((s+e)%2 for e in (0,)+eps) for s in (0,1)}
                  for eps in product((0,1),repeat=k-1)]
    checks[f"k={k} lifted total diagonal components"] = (
        len(components) == 2**(k-1) and
        set().union(*components) == set(slots) and
        sum(map(len,components)) == N)
    v = vector(QQ,range(N))
    L = matrix(QQ,1,N,[1]*N)
    checks[f"k={k} affine normalization survives averaging"] = (L*R*v == L*v)
u = vector(QQbar,[3+I,3+3*I])
rhs = vector(QQbar,[6,6])
avg = (u+P*u)/2
star = lambda v: vector(QQbar,[z.conjugate() for z in v])
checks["fixed affine star relation survives real averaging"] = (u+star(u) == rhs and avg+star(avg) == rhs)
print(json.dumps({"scope":"finite exact deck-group witnesses only","count":len(checks),
                  "allPassed":all(checks.values()),"checks":checks},indent=2))
