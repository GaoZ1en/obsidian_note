# Peierls and Weyl Composition

## Status

**Status: conditional.** T-D--T-G close on the anchored rapid matched-$H^1$
core, but T-H is `false` for finite-cross translations.  Under the project's
declared gate order, this B1 phase is not promoted until an endpoint repair
makes the full Hamiltonian test algebra well defined.

## Target chain

T-F already proves that the full Maxwell composition map is a symplectic
relation.  Algebraically this is enough to define a Weyl functor on the reduced
symplectic spaces.  The integrated T-I claim nevertheless remains gated by
T-H, because the requested theorem includes compatibility with the declared
Hamiltonian generators.  After an endpoint repair, functoriality should induce

$$
\mathfrak W(\mathcal P(D_1))\star_N
\mathfrak W(\mathcal P(D_2))
\simeq
\mathfrak W(\mathcal P(D_1\cup_ND_2)).
$$

The claim is restricted to the Weyl algebra of the reduced symplectic space.
No Hilbert tensor factorization, partial trace, Fock implementability,
Shale--Stinespring theorem, or B2 cross covariance is part of this target.
