"""
Exact finite calculation for the rank-one m=3 R family.

This computes necessary commutants for local operators, using the external
creation-field transport.  It covers regions of one, two, and three modes.
It is not a proof for arbitrarily many modes or for a continuum local net.

Run with SageMath.  All ranks are exact.  Reduction modulo 101 gives upper
bounds on characteristic-zero nullities, not numerical approximations.
The matching lower bounds come from the density/pair algebra proved in
"Nonunitary R pair observables and ordinary fermions.md".
"""

from itertools import product
from sage.all import (
    CyclotomicField, GF, ZZ, binomial, block_diagonal_matrix, block_matrix,
    identity_matrix, matrix, vector, zero_matrix,
)


def transport(ring, z):
    imaginary_unit = z**5
    sqrt_five = 1 + 2 * (z**4 + z**(-4))
    lam = matrix(ring, [
        [imaginary_unit/2, sqrt_five/2, 0],
        [-sqrt_five/2, imaginary_unit/2, 0],
        [0, 0, 1],
    ])
    xi = -lam.transpose()
    assert lam * xi == -identity_matrix(ring, 3)
    assert sum(lam[a, b] * xi[a, b]
               for a, b in product(range(3), repeat=2)) == 2
    return {
        (a, b): matrix(ring, 3, 3, lambda r, s:
            lam[r, b] * xi[a, s] - (1 if r == a and s == b else 0))
        for a, b in product(range(3), repeat=2)
    }


def tensor_transport(left, right):
    ring = next(iter(left.values())).base_ring()
    dl = next(iter(left.values())).nrows()
    dr = next(iter(right.values())).nrows()
    return {
        (a, b): sum(
            (left[a, c].tensor_product(right[c, b]) for c in range(3)),
            zero_matrix(ring, dl * dr),
        )
        for a, b in product(range(3), repeat=2)
    }


def intertwiner_dimension(source, target):
    """Solve X source[a,b] = target[a,b] X for all a,b."""
    ring = next(iter(source.values())).base_ring()
    ds = next(iter(source.values())).nrows()
    dt = next(iter(target.values())).nrows()
    eye_s = identity_matrix(ring, ds)
    eye_t = identity_matrix(ring, dt)
    constraints = [
        source[ab].transpose().tensor_product(eye_t)
        - eye_s.tensor_product(target[ab])
        for ab in source
    ]
    return ds * dt - block_matrix([[row] for row in constraints]).rank()


# A specialization of Z[zeta_20, 1/2], with a primitive twentieth root.
field = GF(101)
root = field.multiplicative_generator()**5
assert root.multiplicative_order() == 20
v = transport(field, root)
trivial = {
    (a, b): matrix(field, [[1 if a == b else 0]])
    for a, b in product(range(3), repeat=2)
}
v2 = tensor_transport(v, v)
v3 = tensor_transport(v2, v)
representations = [trivial, v, v2, v3]
hom_dimensions = matrix(ZZ, [
    [intertwiner_dimension(source, target) for target in representations]
    for source in representations
])
assert hom_dimensions == matrix(ZZ, [
    [1, 0, 1, 0],
    [0, 1, 0, 2],
    [1, 0, 2, 0],
    [0, 2, 0, 5],
])

# One site's occupation space is 1 + V + 1.  Its N-fold tensor product
# contains binomial(N,r) * 2**(N-r) copies of V**tensor(r).
bounds = []
for modes in [1, 2, 3]:
    counts = vector(ZZ, [
        binomial(modes, r) * 2**(modes-r) if r <= modes else 0
        for r in range(4)
    ])
    upper = counts * hom_dimensions * counts
    # dim L_C_N(omega_k) = C(2N,k) - C(2N,k-2).
    lower = sum(
        (binomial(2*modes, k)
         - (binomial(2*modes, k-2) if k >= 2 else 0))**2
        for k in range(modes+1)
    )
    assert upper == lower
    bounds.append(upper)
assert bounds == [5, 42, 429]

# Check the one-site commutant over the number field itself as well.
number_field = CyclotomicField(20)
v_exact = transport(number_field, number_field.gen())
one_site = {
    (a, b): block_diagonal_matrix(
        matrix(number_field, [[1 if a == b else 0]]),
        v_exact[a, b],
        matrix(number_field, [[1 if a == b else 0]]),
    )
    for a, b in product(range(3), repeat=2)
}
assert intertwiner_dimension(one_site, one_site) == 5

print("Exact modular Hom table, tensor degrees 0 through 3:")
print(hom_dimensions)
print("Matching local-algebra dimensions for 1, 2, 3 modes:", bounds)
print("One-site characteristic-zero commutant: 5")
