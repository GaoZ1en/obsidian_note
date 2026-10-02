# Canonical matching lemma for retained-gravity OFPT

This supplies the canonical-coordinate step used in sections 4–5 of
[OFPT with boundary gravitons retained](OFPT%20with%20boundary%20gravitons%20retained.md).
It concerns formal classical phase space and the connected order-G tree
coefficient, not an independent construction of all quantum counterterms.

## 1. The circular submanifold is not a quantum truncation

Let the proper-gauge-reduced perturbative phase space be regular near global
AdS, with the action's CPS symplectic form. Retain physical Brown–Henneaux
modes. Let S denote the rotation-fixed classical submanifold: scalar fields
are circular and independent boundary-graviton amplitudes vanish. A smooth
center and the fixed vacuum sector exclude an additional axisymmetric vacuum
mass or angular-momentum integration constant. Scalar-sourced circular metric
data are retained, not set to zero.

The circular ADM reduction gives exactly

$$
\iota_S^*\Omega=\int_0^\infty dr\,\delta p(r)\wedge\delta\phi(r),
\qquad p=2\pi r\Pi.
$$

It gives the boundary Hamiltonian restricted to S as $2\pi M(\infty)$.
Consequently the coefficient of its scalar quartic term is the displayed
constraint Hamiltonian $H_4$. This does not make the space of circular
multi-particle Fock states a closed quantum block.

## 2. A canonical extension can fix S pointwise

Choose initial free mode coordinates extending $(\phi,p)$ on S, with free
symplectic form $\Omega_0$, and write $\Omega=\Omega_0+O(\kappa)$.
The two forms have the same pullback to S. In a formal tubular neighborhood,
the relative Poincare homotopy gives a one-form $\eta$ such that

$$
d\eta=\Omega-\Omega_0,\qquad \eta|_S=0
$$

where the second statement is vanishing as a covector, not merely its tangent
pullback. Indeed the normal radial homotopy vector vanishes on S, and the
pullback of the two-form difference is zero. Average the primitive under the
compact rotation group to make it rotation equivariant without changing these
properties.

For $\Omega_t=\Omega_0+t(\Omega-\Omega_0)$ solve

$$
\iota_{X_t}\Omega_t=-\eta.
$$

Nondegeneracy holds as a formal power series around $\Omega_0$. The resulting
formal Moser flow is rotation equivariant, fixes S pointwise and gives a
Darboux presentation extending its existing canonical variables. Thus
canonicalization of the full graviton–matter CPS does not secretly change the
restricted quartic coefficient used for the circular diagnostic.

This is a local formal construction on the regular perturbative presentation;
no global infinite-dimensional Darboux theorem or analytic convergence is
asserted. At each field degree, the primitive and vector field are obtained
recursively. The construction neither gauges away boundary gravitons nor
claims a nonperturbative Hilbert-space factorization.

## 3. The homological correction does not add a circular four-scalar term

In that equivariant canonical presentation the mixed cubic vertex has one
physical graviton and two scalar legs. Each physical graviton carries
$J=\pm m$ with $m\ge2$. A vertex with two circular scalar legs is therefore
zero. Its homological inverse has the same angular-momentum selection rule,
because division by a nonzero free energy difference does not change angular
momentum.

The scalar-quartic part of the Poisson bracket of two mixed cubic vertices is
obtained by contracting their graviton legs. With four circular external
scalar legs, both vertex coefficients vanish. Contracting scalar legs instead
leaves a graviton-quadratic, scalar-quadratic expression; it does not generate
four scalar legs. Pure-gravity cubic vertices cannot change this counting.
Thus the connected four-circular-scalar coefficient of

$$
\mathcal R_0\left(V_2-\tfrac12[\mathcal A,V_1]\right)
$$

is precisely the coefficient obtained from the constraint Hamiltonian on S.
Equivalently, all connected physical-graviton exchange time orderings give
zero in these diagnostic matrix elements. This is a selection-rule evaluation
of the second-order term, not omission of that term.

Normal ordering and extra contractions of the cubic commutator produce
lower-degree terms. These include genuine one-body self-energy contributions
with noncircular internal scalar modes and must be treated separately. They
do not alter the connected four-leg tree matching. A single $h^2\phi^2$
seagull also has only two scalar legs. An independent order-G scalar contact
coupling would change the answer and is excluded by the specified theory.

The full-space Ward normal-form theorem then supplies the global scalar
intertwiner. Its multiplicity-one primary decomposition allows the circular
compression to determine all two-scalar primary coefficients using the
explicit inverse in the main note. None of these statements identifies the
circular compression's own eigenvalues with the physical spectrum.
