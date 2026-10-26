"""Exact finite quantum-double exchange tests.

Convention: c(v_g tensor w_h) = (g.w_h) tensor v_g.
The tests concern the category and fixed-R counting, not continuum net existence.
Run: sage quantum_double_involutive_checks.sage
"""
from sage.all import CyclotomicField, matrix, identity_matrix, factorial, binomial
from itertools import permutations, product

K = CyclotomicField(3)
zeta = K.gen()


def flip(d):
    return matrix(K, d*d, d*d, lambda row, col: int(row == (col % d)*d + col//d))


def verify_braiding(R, d, theta=None):
    unit = identity_matrix(K, d*d)
    assert R.conjugate().transpose()*R == unit
    A = R.tensor_product(identity_matrix(K, d))
    B = identity_matrix(K, d).tensor_product(R)
    assert A*B*A == B*A*B
    if theta is not None:
        partial_trace = matrix(K, d, d, lambda i,j:
            sum((R[i*d+k,j*d+k] for k in range(d)), K.zero()))
        assert partial_trace == theta*identity_matrix(K,d)
    return (R*R-unit).rank()


# S3, with permutations represented by image tuples and ordinary composition.
G = list(permutations(range(3)))
e = tuple(range(3))


def mul(g, h):
    return tuple(g[h[i]] for i in range(3))


def inv(g):
    return tuple(g.index(i) for i in range(3))


def conj(a, g):
    return mul(mul(a, g), inv(a))


def induced_braiding(g0, character):
    C = sorted({conj(a, g0) for a in G})
    representatives = {h: next(a for a in G if conj(a, g0) == h) for h in C}
    positions = {h: j for j, h in enumerate(C)}
    d = len(C)
    R = matrix(K, d*d, d*d)
    for i, g in enumerate(C):
        for j, h in enumerate(C):
            new_h = conj(g, h)
            stabilizer_element = mul(mul(inv(representatives[new_h]), g), representatives[h])
            assert conj(stabilizer_element, g0) == g0
            R[positions[new_h]*d+i, i*d+j] = character(stabilizer_element)
    return C, R


for name, d in [('trivial electric',1), ('sign electric',1), ('standard electric',2)]:
    R = flip(d)
    assert verify_braiding(R,d,theta=1) == 0
    print('PASS: S3', name, 'dimension',d,'self-involutive')

transposition = (1,0,2)
for sign in [1,-1]:
    character = lambda h, sign=sign: K(1 if h == e else sign)
    C, R = induced_braiding(transposition,character)
    rank = verify_braiding(R,len(C),theta=sign)
    assert rank == 4
    assert R**3 == sign*identity_matrix(K,len(C)**2)
    print('PASS: S3 transposition flux, character',sign,'rank(c^2-I)=',rank)

rotation = (1,2,0)
rotation_powers = [e,rotation,mul(rotation,rotation)]
for ell in [0,1,2]:
    character = lambda h, ell=ell: zeta**(ell*rotation_powers.index(h))
    C, R = induced_braiding(rotation,character)
    rank = verify_braiding(R,len(C),theta=zeta**ell)
    assert rank == (0 if ell == 0 else 4)
    print('PASS: S3 three-cycle flux, character',ell,'rank(c^2-I)=',rank)

# Left-action matrices for S3; class averages give proposed topological
# detector values only, not membership in an AQFT exterior algebra.
Ur = matrix(K,[[zeta,0],[0,zeta**-1]])
Us = matrix(K,[[0,1],[1,0]])
standard = {mul(rotation_powers[k], (e if j == 0 else transposition)): Ur**k*Us**j
            for k in range(3) for j in range(2)}
assert len(standard) == 6
assert all(standard[mul(g,h)] == standard[g]*standard[h] for g in G for h in G)
for flux, value in [(e,K(1)), (transposition,K(0)), (rotation,-K(1)/2)]:
    flux_class = {conj(a,flux) for a in G}
    average = sum((standard[h] for h in flux_class), matrix(K,2,2))/len(flux_class)
    assert average == value*identity_matrix(K,2)
    if flux != e:
        assert standard[flux] != identity_matrix(K,2)
print('PASS: S3 electric-magnetic monodromy; normalized character values 1, 0, -1/2')

# Commuting support and spin one are NOT sufficient: in C3 x S3,
# support {(z,r),(z,r^-1)}, chi(z)=zeta, chi(r)=zeta^2.
Rcounter = matrix(K,[[1,0,0,0],[0,0,zeta**2,0],
                     [0,zeta**2,0,0],[0,0,0,1]])
assert verify_braiding(Rcounter,2,theta=1) == 2
assert Rcounter**2 == matrix.diagonal(K,[1,zeta,zeta,1])
print('PASS: commuting-support, spin-one counterexample remains non-involutive')


# D8 has order eight: r^4=s^2=1, s r s=r^-1.
# The flux class {s,r^2 s} is commuting. Its centralizer character has
# chi(s)=epsilon and chi(r^2)=tau. The induced group action is explicit.
def d8_braiding(epsilon, tau):
    epsilon, tau = K(epsilon), K(tau)
    Ur = matrix(K,[[0,tau],[1,0]])
    Us = matrix(K,[[epsilon,0],[0,tau*epsilon]])
    assert Ur**4 == identity_matrix(K,2)
    assert Us**2 == identity_matrix(K,2)
    assert Us*Ur*Us == Ur.inverse()
    grade_actions = [Us, Ur**2*Us]
    R = matrix(K,4,4)
    for g in range(2):
        for h in range(2):
            for out_h in range(2):
                R[out_h*2+g,g*2+h] = grade_actions[g][out_h,h]
    return R


def inversions(word):
    return sum(word[i] > word[j] for i in range(len(word)) for j in range(i+1,len(word)))


def adjacent_word(p):
    current = list(range(len(p)))
    result = []
    for i, wanted in enumerate(p):
        j = current.index(wanted)
        while j > i:
            current[j-1],current[j] = current[j],current[j-1]
            result.append(j-1)
            j -= 1
    assert tuple(current) == p
    return result


def cycles(p):
    unseen = set(range(len(p)))
    count = 0
    while unseen:
        count += 1
        j = next(iter(unseen))
        while j in unseen:
            unseen.remove(j)
            j = p[j]
    return count


def character_from_generators(p, epsilon, tau):
    generators = adjacent_word(p)
    trace = K.zero()
    for word in product(range(2),repeat=len(p)):
        out = list(word)
        phase = K.one()
        for i in generators:
            phase *= epsilon*(tau if out[i] != out[i+1] else 1)
            out[i],out[i+1] = out[i+1],out[i]
        if tuple(out) == word:
            trace += phase
    return trace


for epsilon in [1,-1]:
    for tau in [1,-1]:
        R = d8_braiding(epsilon,tau)
        assert verify_braiding(R,2,theta=epsilon) == 0
        for n in range(1,6):
            for word in product(range(2),repeat=n):
                J_before = K(tau)**inversions(word)
                for i in range(n-1):
                    out = list(word)
                    out[i],out[i+1] = out[i+1],out[i]
                    J_after = K(tau)**inversions(out)
                    target_phase = epsilon*(tau if word[i] != word[i+1] else 1)
                    assert epsilon*J_after*J_before.conjugate() == target_phase
        for n in range(6):
            all_p = list(permutations(range(n)))
            traces = {}
            for p in all_p:
                actual = character_from_generators(p,epsilon,tau)
                expected = epsilon**(n-cycles(p))*2**cycles(p)
                assert actual == expected
                traces[p] = actual
            for orbital_modes in [1,2,3]:
                count = sum((orbital_modes**cycles(p)*traces[p] for p in all_p),K.zero())/factorial(n)
                expected = (binomial(2*orbital_modes+n-1,n) if epsilon == 1
                            else binomial(2*orbital_modes,n))
                assert count == expected
        print('PASS: D8 epsilon=',epsilon,'tau=',tau,
              'unitary involutive YB; J_n conjugation, all S_n characters and Fock counts through n=5')


# A central D8 flux acts by -I on the standard charge. This means
# unchecked R0=-I but CHECKED c=-P, not the proposed exotic checked c=-I.
Rcentral = -flip(2)
assert verify_braiding(Rcentral,2,theta=-1) == 0
assert flip(2)*Rcentral == -identity_matrix(K,4)
print('PASS: central D8 dyon has unchecked R0=-I and actual exchange c=-P')


def color_matrix(phases):
    d = phases.nrows()
    R = matrix(K,d*d,d*d)
    for i in range(d):
        for j in range(d):
            R[j*d+i,i*d+j] = phases[i,j]
    return R


def color_trace(p, phases):
    d = phases.nrows()
    generators = adjacent_word(p)
    result = K.zero()
    for word in product(range(d),repeat=len(p)):
        out, factor = list(word), K.one()
        for i in generators:
            factor *= phases[out[i],out[i+1]]
            out[i],out[i+1] = out[i+1],out[i]
        if tuple(out) == word:
            result += factor
    return result


def super_character(p, dplus, dminus):
    unseen, result = set(range(len(p))), K.one()
    while unseen:
        j, length = next(iter(unseen)), 0
        while j in unseen:
            unseen.remove(j)
            length += 1
            j = p[j]
        result *= dplus+(-1)**(length-1)*dminus
    return result


def verify_color_untwisting(phases, parities):
    d = len(parities)
    gamma = matrix(K,d,d,lambda i,j:
        (phases[j,i]/((-1)**(parities[i]*parities[j])) if i > j else 1))
    def diagonal_phase(word):
        value = K.one()
        for i in range(len(word)):
            for j in range(i+1,len(word)):
                value *= gamma[word[i],word[j]]
        return value
    for n in range(1,4):
        for word in product(range(d),repeat=n):
            before = diagonal_phase(word)
            for i in range(n-1):
                out = list(word)
                out[i],out[i+1] = out[i+1],out[i]
                after = diagonal_phase(out)
                super_sign = (-1)**(parities[word[i]]*parities[word[i+1]])
                assert after*super_sign*before.conjugate() == phases[word[i],word[i+1]]


# Nonreal reciprocal phases: G=(C3 x C3) semidirect C4, order 36.
# The C4 generator rotates (x,y) -> (-y,x). Flux support is its orbit
# of (1,0), with centralizer character chi(x,y)=zeta^(-y).
fluxes = [(1,0),(0,1),(2,0),(0,2)]
Ua = matrix.diagonal(K,[zeta**y for x,y in fluxes])
Ub = matrix.diagonal(K,[zeta**(-x) for x,y in fluxes])
Ut = matrix(K,4,4,lambda i,j: int(i == (j+1)%4))
assert Ua**3 == Ub**3 == Ut**4 == identity_matrix(K,4)
assert Ua*Ub == Ub*Ua
assert Ut*Ua*Ut.inverse() == Ub
assert Ut*Ub*Ut.inverse() == Ua.inverse()
phase36 = matrix(K,4,4,lambda i,j:
    zeta**(fluxes[i][0]*fluxes[j][1]-fluxes[i][1]*fluxes[j][0]))
for i,(x,y) in enumerate(fluxes):
    assert Ua**x*Ub**y == matrix.diagonal(K,list(phase36.row(i)))
assert verify_braiding(color_matrix(phase36),4,theta=1) == 0
verify_color_untwisting(phase36,[0,0,0,0])
for n in range(5):
    assert all(color_trace(p,phase36) == 4**cycles(p) for p in permutations(range(n)))
print('PASS: order-36 group, nonreal phases, J_n through n=3; all S_n characters through n=4')

# A genuine mixed-parity object of D(D8 x C2): X tensor (1 direct-sum psi),
# where X is the bosonic reflection dyon and psi is the C2 fermion.
mixed_labels = list(product(range(2),repeat=2))
mixed = matrix(K,4,4,lambda i,j:
    (-1)**(int(mixed_labels[i][0] != mixed_labels[j][0])
           +mixed_labels[i][1]*mixed_labels[j][1]))
assert verify_braiding(color_matrix(mixed),4) == 0
verify_color_untwisting(mixed,[p for g,p in mixed_labels])
for n in range(5):
    all_p = list(permutations(range(n)))
    traces = {p:color_trace(p,mixed) for p in all_p}
    assert all(traces[p] == super_character(p,2,2) for p in all_p)
    for orbital_modes in [1,2]:
        count = sum((orbital_modes**cycles(p)*traces[p] for p in all_p),K.zero())/factorial(n)
        expected = sum((binomial(2*orbital_modes,k)*binomial(2*orbital_modes+n-k-1,n-k)
                        for k in range(min(n,2*orbital_modes)+1)),K.zero())
        assert count == expected
print('PASS: mixed parity d_+=d_-=2, ordinary super characters and Fock counts through n=4')

# Toric-code control: every simple object has self-exchange +/-1, but the
# combined family has nontrivial mutual monodromy. Labels are (charge,flux).
labels = list(product(range(2),repeat=2))
Rall = matrix(K,16,16)
for i,(charge,flux) in enumerate(labels):
    assert (-1)**(charge*flux) in [1,-1]
    for j,(other_charge,other_flux) in enumerate(labels):
        Rall[j*4+i,i*4+j] = (-1)**(flux*other_charge)
assert verify_braiding(Rall,4) == 6
print('PASS: D(Z2) all simples self-involutive, combined monodromy has rank(c^2-I)=6')
print('All exact checks passed. General criteria require the separate analytic proof.')
