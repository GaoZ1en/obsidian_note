"""Exact checks for weighted face crossing and generated-category reconstruction.

All finite path bases are orthonormal. W(a,b,c,d) maps |a,b,c> to
|a,d,c>. Positive crossing is W(a,b,c,d)=sqrt(mu_b mu_d/(mu_a mu_c))
W(d,a,b,c). No spacetime-net construction is asserted by this script.
"""
from itertools import product
from sage.all import (
    AA, QQ, QQbar, ZZ, PolynomialRing, QuadraticField, CyclotomicField,
    identity_matrix, matrix, vector,
)


def paths(vertices, edges, steps):
    result = [(a,) for a in vertices]
    for _ in range(steps):
        result = [p+(b,) for p in result for b in vertices if (p[-1], b) in edges]
    return result


def operator(field, vertices, edges, amplitudes, steps, site):
    basis = paths(vertices, edges, steps)
    lookup = {p: j for j, p in enumerate(basis)}
    result = matrix(field, len(basis))
    for column, p in enumerate(basis):
        for d in vertices:
            key = (p[site-1], p[site], p[site+1], d)
            if key in amplitudes:
                target = p[:site]+(d,)+p[site+1:]
                result[lookup[target], column] = amplitudes[key]
    return result


def verify_model(label, field, vertices, edges, mu, delta, W, sign=1):
    for a in vertices:
        assert sum(mu[b] for b in vertices if (a,b) in edges) == delta*mu[a]
    for (a,b,c,d), value in W.items():
        weight = field(QQbar(mu[b]*mu[d]/(mu[a]*mu[c])).sqrt())
        assert value == sign*weight*W[d,a,b,c]
    R = operator(field, vertices, edges, W, 2, 1)
    assert R*R == identity_matrix(field, R.nrows())
    assert R.conjugate_transpose() == R
    R1 = operator(field, vertices, edges, W, 3, 1)
    R2 = operator(field, vertices, edges, W, 3, 2)
    assert R1*R2*R1 == R2*R1*R2
    p1, p3 = paths(vertices, edges, 1), paths(vertices, edges, 3)
    lookup = {p: j for j, p in enumerate(p3)}
    CL = matrix(field, len(p3), len(p1))
    CR = matrix(field, len(p3), len(p1))
    for column, (a,b) in enumerate(p1):
        for x in vertices:
            if (a,x) in edges:
                CL[lookup[a,x,a,b],column] = field(QQbar(mu[x]/mu[a]).sqrt())
            if (b,x) in edges:
                CR[lookup[a,b,x,b],column] = field(QQbar(mu[x]/mu[b]).sqrt())
    assert CL.conjugate_transpose()*CL == delta*identity_matrix(field,len(p1))
    assert CR.conjugate_transpose()*CR == delta*identity_matrix(field,len(p1))
    assert CL.conjugate_transpose()*CR == identity_matrix(field,len(p1))
    assert R2*R1*CR == sign*CL
    raw, weighted = [], []
    for a in vertices:
        terms = [(b,c) for b,c in product(vertices,repeat=2) if (a,b,c,b) in W]
        raw.append(sum(W[a,b,c,b] for b,c in terms))
        weighted.append(sum(mu[c]/mu[a]*W[a,b,c,b] for b,c in terms))
    print('PASS:',label,'path dimensions',len(p1),R.nrows(),len(p3),
          'raw traces',raw,'weighted traces',weighted)
    return raw, weighted


# Generic symbolic residual factorization; PF and involutivity need not yet hold.
vertices = tuple(range(3))
quadruples = list(product(vertices,repeat=4))
def orbit(q):
    return min(q[j:]+q[:j] for j in range(4))
representatives = sorted(set(orbit(q) for q in quadruples))
index = {q:j for j,q in enumerate(representatives)}
ring = PolynomialRing(QQ, names=tuple('t%d'%j for j in vertices)
                      +tuple('k%d'%j for j in range(len(representatives))))
field = ring.fraction_field()
t, k = ring.gens()[:3], ring.gens()[3:]
def generic_W(a,b,c,d):
    return field(k[index[orbit((a,b,c,d))]])/(t[a]*t[c])
for a,b,y,z in quadruples:
    slide = sum(field(t[x])/t[b]*generic_W(a,b,x,y)*generic_W(y,x,b,z)
                for x in vertices)
    square = sum(generic_W(y,a,b,x)*generic_W(y,x,b,z) for x in vertices)
    assert slide == field(t[y])/t[a]*square
print('PASS: 81 symbolic weighted cup-slide identities with 24 independent crossing orbits')


# Dense non-permutation example on three vacua including loops.
edges = set(product(vertices,repeat=2))
mu = {a:QQ.one() for a in vertices}
W = {(a,b,c,d):QQ(2)/3-int((a+c-b-d)%3 == 0) for a,b,c,d in quadruples}
raw, weighted = verify_model('dense three-vacuum solution',QQ,vertices,edges,mu,3,W)
assert raw == weighted == [3,3,3]
r = matrix(QQ,9)
for g,h,out_g,out_h in quadruples:
    if (out_g+out_h-g-h)%3 == 0:
        r[3*out_g+out_h,3*g+h] = W[0,g,(g+h)%3,out_g]
omega = QQbar.zeta(3)
U = matrix(QQbar,3,3,lambda g,m:omega**(g*m)/AA(3).sqrt())
UU = U.tensor_product(U)
color = UU.conjugate_transpose()*r.change_ring(QQbar)*UU
expected = matrix(QQbar,9)
for m,n in product(vertices,repeat=2):
    expected[3*n+m,3*m+n] = 1 if m == n else -1
assert color == expected
for degree in (2,3,4):
    basis = list(product(vertices,repeat=degree))
    lookup = {p:j for j,p in enumerate(basis)}
    signs = [(-1)**sum(p[i]>p[j] for i in range(degree) for j in range(i+1,degree))
             for p in basis]
    for position in range(degree-1):
        for column,p in enumerate(basis):
            target = list(p)
            target[position],target[position+1] = target[position+1],target[position]
            row = lookup[tuple(target)]
            q = 1 if p[position] == p[position+1] else -1
            assert signs[row]*q*signs[column] == 1
print('PASS: exact Fourier reduction and inversion-sign untwisting through four particles')


# Complete quantum-amplitude trace lemma: a zero-diagonal 3x3 involution is impossible.
ring = PolynomialRing(QQ,names=('a','b','c','d','e','f'))
a,b,c,d,e,f = ring.gens()
M = matrix(ring,[[0,a,b],[c,0,d],[e,f,0]])
assert ring.ideal((M*M-identity_matrix(ring,3)).list()).is_one()
print('PASS: zero-diagonal 3x3 involution equations generate the unit ideal')


# A nonregular graph control from the ordinary real standard representation of S3.
K = QuadraticField(2,'u')
u = K.gen()
dimensions = {0:1,1:1,2:2}
I2 = identity_matrix(K,2)
T = {
    (0,2):I2,
    (1,2):matrix(K,[[0,-1],[1,0]]),
    (2,0):matrix(K,4,1,[1/u,0,0,1/u]),
    (2,1):matrix(K,4,1,[0,1/u,-1/u,0]),
    (2,2):matrix(K,[[1/u,0],[0,-1/u],[0,-1/u],[-1/u,0]]),
}
# T_ab : V_b -> V_a tensor X. Check intertwiners for generators of S3.
rotation = matrix(QQbar,[[-QQbar(1)/2,-AA(3).sqrt()/2],
                        [AA(3).sqrt()/2,-QQbar(1)/2]])
reflection = matrix(QQbar,[[1,0],[0,-1]])
for generator,sgn in ((rotation,1),(reflection,-1)):
    reps = {0:matrix(QQbar,[[1]]),1:matrix(QQbar,[[sgn]]),2:generator}
    for (a,b),intertwiner in T.items():
        assert reps[a].tensor_product(generator)*intertwiner == intertwiner*reps[b]
for a in vertices:
    total = matrix(K,2*dimensions[a])
    for (left,b),intertwiner in T.items():
        if left == a:
            assert intertwiner.transpose()*intertwiner == identity_matrix(K,dimensions[b])
            total += intertwiner*intertwiner.transpose()
    assert total == identity_matrix(K,2*dimensions[a])
flip = matrix(K,4,4,lambda i,j:int(i//2 == j%2 and i%2 == j//2))
W = {}
for a,c in product(vertices,repeat=2):
    middles = [b for b in vertices if (a,b) in T and (b,c) in T]
    intertwiners = {b:T[a,b].tensor_product(I2)*T[b,c] for b in middles}
    for b,d in product(middles,repeat=2):
        block = intertwiners[d].transpose()*identity_matrix(K,dimensions[a]).tensor_product(flip)*intertwiners[b]
        value = block.trace()/dimensions[c]
        assert block == value*identity_matrix(K,dimensions[c])
        W[a,b,c,d] = value
mu = {a:K(dimensions[a]) for a in vertices}
raw,weighted = verify_model('ordinary S3 nonregular graph',K,vertices,set(T),mu,K(2),W)
assert raw == [1,1,3] and weighted == [2,2,2]
central_block = matrix(K,3,3,lambda d,b:W[2,b,2,d])
assert central_block == matrix(K,[[QQ(1)/2,-QQ(1)/2,1/u],
                                 [-QQ(1)/2,QQ(1)/2,1/u],[1/u,1/u,0]])
cX = matrix(K,4,1,[1,0,0,1])
for a,b in T:
    path_intertwiner = T[a,b].tensor_product(I2)*T[b,a]
    contraction = path_intertwiner.transpose()*identity_matrix(K,dimensions[a]).tensor_product(cX)
    coefficient = K(QQbar(mu[b]/mu[a]).sqrt())
    assert contraction == coefficient*identity_matrix(K,dimensions[a])
print('PASS: ordinary S3 intertwiners and their positive Perron cups')


# Negative-crossing control: I-E on the triangle WITHOUT loops.
edges = {(a,b) for a,b in product(vertices,repeat=2) if a != b}
mu = {a:QQ.one() for a in vertices}
W = {}
for a,b,c,d in quadruples:
    if all(edge in edges for edge in ((a,b),(b,c),(c,d),(d,a))):
        W[a,b,c,d] = QQ(int(b == d)-int(a == c))
verify_model('signed-crossing TL reflection',QQ,vertices,edges,mu,2,W,sign=-1)
# No local vacuum-dependent cup coefficients repair the involutive exchange.
ring = PolynomialRing(QQ,names=tuple('u%d'%j for j in range(6)))
variables = ring.gens()
p1,p3 = paths(vertices,edges,1),paths(vertices,edges,3)
edge_index = {edge:j for j,edge in enumerate(p1)}
path_index = {path:j for j,path in enumerate(p3)}
CL = matrix(ring,len(p3),len(p1))
CR = matrix(ring,len(p3),len(p1))
for column,(a,b) in enumerate(p1):
    for x in vertices:
        if (a,x) in edges:
            CL[path_index[a,x,a,b],column] = variables[edge_index[a,x]]
        if (b,x) in edges:
            CR[path_index[a,b,x,b],column] = variables[edge_index[b,x]]
R1 = operator(ring,vertices,edges,W,3,1)
R2 = operator(ring,vertices,edges,W,3,2)
for phase_square,expected_rank in ((1,6),(-1,4)):
    residual = phase_square*R2*R1*CR-CL
    coefficients = matrix(QQ,[[p.monomial_coefficient(v) for v in variables]
                              for p in residual.list()])
    assert coefficients.rank() == expected_rank
print('PASS: cup solution dimensions are 0 for R and 2 for iR on the triangle')
# Rational form of the signed scalar completion, x=exp(theta).
K4 = CyclotomicField(4)
i = K4.gen()
P = PolynomialRing(K4,'x')
x = P.gen()
F = P.fraction_field()
def scalar(z):
    return i*(z-i)/(z+i)
assert scalar(F(x))*scalar(F(1)/x) == 1
assert scalar(-F(1)/x) == -scalar(F(x))
assert F(x)*scalar(F(x)).derivative()/scalar(F(x)) == i*2*x/(x*x+1)
print('PASS: signed scalar unitarity, negative crossing and nonconstant phase')
print('All exact checks passed; no interacting local-net existence is inferred.')
