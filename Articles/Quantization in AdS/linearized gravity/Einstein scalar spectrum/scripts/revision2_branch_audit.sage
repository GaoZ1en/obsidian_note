"""Finite checks support the character/large-c argument; they do not construct the interacting charges."""
from sage.all import QQ, PolynomialRing, matrix, vector
from pathlib import Path
import json

R = PolynomialRing(QQ, names=('h', 'c', 'a'))
h, c, a = R.gens()
F = R.fraction_field()

def add(out, word, value):
    out[word] = out.get(word, F(0)) + value
    if out[word] == 0:
        del out[word]

def act(n, word):
    # word stores positive integers k for generators L_{-k}.
    if n < 0:
        return {(-n,) + word: F(1)}
    if n == 0:
        return {word: F(h + sum(word))}
    if not word:
        return {}
    k, rest = word[0], word[1:]
    out = {}
    for tail, val in act(n, rest).items():
        add(out, (k,) + tail, val)
    for tail, val in act(n-k, rest).items():
        add(out, tail, (n+k)*val)
    if n == k:
        add(out, rest, c*QQ(n*(n*n-1))/12)
    return out

def apply(n, state):
    out = {}
    for word, coeff in state.items():
        for tail, val in act(n, word).items():
            add(out, tail, coeff*val)
    return out

def gram(left, right):
    state = {right: F(1)}
    for k in left:
        state = apply(k, state)
    return state.get((), F(0))

basis = [(2,), (1, 1)]
G = matrix(F, [[gram(l, r) for r in basis] for l in basis])
v = vector(F, [1, -F(3)/(2*(2*h+1))])
nu = F(c)/2 + F(h*(8*h-5))/(2*h+1)
Q = {basis[i]: v[i] for i in range(2)}
proj = matrix(F, 2, 2, lambda i,j: (1 if i==j else 0)-v[i]*(v*G)[j]/nu)
checks = {
    'Gram_from_Virasoro_commutators': G == matrix(F, [[c/2+4*h,6*h],[6*h,4*h*(2*h+1)]]),
    'Q2_L1_zero': apply(1,Q) == {},
    'Q2_L2_norm': apply(2,Q) == {(): nu},
    'Q2_norm': v*G*v == nu,
    'positive_norm_decomposition': nu == F(c-1)/2 + F((4*h-1)**2)/(2*(2*h+1)),
    'projector_idempotent': proj*proj == proj,
    'projector_Gram_self_adjoint': proj.transpose()*G == G*proj,
    'projector_removes_Q2': proj*v == vector(F,[0,0]),
    'Ward_Q2_overlap': v*vector(F,[h+a,h*(h+1)]) == h+a-F(3*h*(h+1))/(2*(2*h+1))
}

N=8
modes=[(p,q) for p in range(N+1) for q in range(N+1)]
direct={(p,q):0 for p in range(N+1) for q in range(N+1)}
for i,(p,q) in enumerate(modes):
    for r,s in modes[i:]:
        if p+r<=N and q+s<=N:
            direct[p+r,q+s]+=1
pred={key:0 for key in direct}
for n in range(N+1):
    for ell in range(-N,N+1):
        if ell%2: continue
        left,right=n+max(ell,0),n+max(-ell,0)
        for p in range(left,N+1):
            for q in range(right,N+1): pred[p,q]+=1
checks['81_symmetric_two_scalar_character_coefficients'] = direct == pred

report={'engine':'SageMath exact rational functions', 'character_max_chiral_grade':int(N),
        'assumptions':'fixed finite grade; non-null large-c light-weight representation is an input',
        'checks':{k:bool(v) for k,v in checks.items()}, 'allPassed':all(checks.values())}
if '__file__' in globals():
    Path(__file__).with_name('revision2_branch_audit_results.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
assert report['allPassed']
