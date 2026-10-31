# Independent check: the antipodal Plebanski configuration

**Conclusion.** The fields descend in the stipulated trivial internal bundle and solve the full nondegenerate Plebanski equations. No global real coframe in that bundle produces this fixed B in any of the four branches. The induced metric is not time orientable. Its time-orientation obstruction is exactly the central-sign obstruction to lifting B to a coframe; imposing time orientability removes this obstruction, provided the internal Lorentz bundle is globally time oriented and local nondegenerate reconstruction is assumed.

## 1. Descent and full equations

Write p: R⁴\{0} → M for the covering, a(x) = −x, Σ^{IJ} = dx^I ∧ dx^J, and V = dx⁰ ∧ dx¹ ∧ dx² ∧ dx³. Internal indices are raised with η = diag(−+++); in particular ε^{0123} = −1. With full antisymmetric-pair sums,

\[
(B^{01},B^{02},B^{03},B^{12},B^{13},B^{23})
=(-dx^{23},dx^{13},-dx^{12},dx^{03},-dx^{02},dx^{01}),
\]

where $dx^{IJ}=dx^I\wedge dx^J$. Since $a^*dx^I=-dx^I$, B and V are invariant. Thus B descends with **identity internal transition functions**; no internal −Id transition is being inserted. The trivial connection ω = 0 and φ = 0 also descend.

For compactly supported variations, the equations are (with the usual pair-symmetric part of φ understood, since only that part enters the action)

\[
D_\omega B^{IJ}=0,\qquad
F_{IJ}=\phi_{IJKL}B^{KL},\qquad
B^{IJ}\wedge B^{KL}=-\nu_B\,\epsilon^{IJKL}.
\]

The last equation is the constrained-φ equation: B∧B annihilates every ε-trace-free multiplier variation. The minus sign follows from ε_{IJKL}ε^{IJKL} = −24. Here

\[
p^*\nu_B=-V,\qquad
B^{IJ}\wedge B^{KL}=\epsilon^{IJKL}V.
\]

Consequently ν_B is nowhere zero, while dB = F = φ = 0 verifies the remaining equations. Finiteness of an action integral over this noncompact manifold is not needed for these local Euler–Lagrange statements.

## 2. No global root; other branches are excluded locally

Suppose B = ⋆(e∧e) for a global real coframe into the fixed internal bundle. On the connected cover write $p^*e=A\,dx$. Invertibility of ⋆ gives Λ²A = Id. The elementary kernel fact

\[
\ker\bigl(\Lambda^2:GL(4,\mathbb R)\to GL(6,\mathbb R)\bigr)=\{\pm\mathrm{Id}\}
\]

follows because A must preserve every two-plane, hence every line, hence be scalar; its scalar square is 1. Smoothness therefore gives $p^*e=+dx$ everywhere or $p^*e=-dx$ everywhere. Both are deck-anti-invariant, whereas a pulled-back global e must be deck-invariant. This is a contradiction.

There is no escape through another branch:

- B = −⋆(e∧e) would imply Λ²A = −Id. The same two-plane argument forces A = λId with λ² = −1, impossible over the reals.
- B = ±e∧e would require the nonzero covector e⁰ to lie simultaneously in the planes spanned by {dx²,dx³}, {dx¹,dx³}, and {dx¹,dx²}, using B^{01}, B^{02}, B^{03}. Their intersection is zero. These branches are therefore impossible even pointwise.

Thus the only local roots of this B are the two roots ±dx in the +⋆ branch.

## 3. Metric, sign cocycle, and frame topology

The reconstructed metric satisfies

\[
p^*g=-(dx^0)^2+(dx^1)^2+(dx^2)^2+(dx^3)^2.
\]

It is a smooth flat Lorentz metric on M, but it is **not time orientable**. Indeed, a global timelike vector field would lift to a deck-invariant timelike field T. Its component T⁰ is nowhere zero and has constant sign on the connected cover, whereas deck invariance requires T⁰(−x) = −T⁰(x), a contradiction.

Choose local sections of p and pull back dx. The resulting local coframes obey e_β = s_{αβ}e_α, with locally constant s_{αβ} ∈ {±1}. These signs satisfy the Čech cocycle condition. Their class is the nonzero element of

\[
H^1(M;\mathbb Z_2)\simeq H^1(\mathbb {RP}^3;\mathbb Z_2)\simeq\mathbb Z_2,
\]

represented by the antipodal cover itself. It is also the time-cone cover of g. Equivalently, Levi–Civita parallel transport around the generator has holonomy −Id, which Λ² cannot detect.

This is **not failure of ordinary parallelizability**: M ≅ (0,∞) × RP³, and RP³ ≅ SO(3) is a parallelizable Lie group. Global coframes exist, but none generates the specified B or is orthonormal for this g. Ordinary tangent-frame topology and the Lorentz/sign lift must not be conflated.

## 4. Precisely what a time-oriented restriction accomplishes

More generally, let E be a fixed oriented, globally time-oriented Lorentz bundle, and assume B has local invertible roots e_α: TM → E in one fixed branch. On overlaps the kernel argument gives e_β = s_{αβ}e_α. Hence the root cover defines [s] ∈ H¹(M;Z₂), vanishing exactly when a global root exists.

The internal future cone C_E⁺ makes e_α induce the spacetime future cone e_α⁻¹(C_E⁺). Multiplication by −1 reverses this cone. Therefore

\[
[s]=\text{the time-orientation obstruction of }(TM,g).
\]

If g is time orientable, choose a global future cone C_g⁺. On each patch choose the **unique** sign of e_α that maps C_g⁺ to C_E⁺. All overlap signs then equal +1, so these roots glue to a smooth global e. A chosen time orientation selects one root; without choosing it, there are two global roots on each connected component.

This is a conditional reconstruction theorem for an already locally reconstructible B, not a claim that time orientability alone trivializes an arbitrary frame bundle. The resulting e is a bundle isomorphism TM ≅ E. If E is trivial, existence of such a time-orientable B consequently forces a global coframe; for nontrivial E, global reconstruction means a soldering isomorphism, not four globally defined scalar-valued one-forms. The example fails the required time-orientability hypothesis and therefore does not contradict this restricted statement.

**Verification and scope.** The arguments above are analytic. An exact Wolfram component check additionally verified ⋆² = −Id, ν_B/V = −1, and all 256 simplicity components with full pair sums, with no kernel messages. No claim about global hyperbolicity or a regional covariant-phase-space theorem is made.
