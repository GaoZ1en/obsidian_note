---
paper id: 2607.24914v1
title: Kaluza-Klein Perturbation Theory from Exceptional Field Theory
authors:
  - Camille Eloy
  - Olaf Hohm
  - Camilla Lavino
  - Henning Samtleben
  - Yehudi Simon
publication date: 2026-07-27T18:00
abstract: |-
  The paper develops linear Kaluza--Klein perturbation theory for generalized Scherk--Schwarz backgrounds in E6(6) exceptional field theory. It organizes Stückelberg fields, gauge parameters, equations, and Noether identities into chain complexes, uses homotopy transfer to isolate physical fields and projected mass operators, and applies the formalism to selected type-IIB modes near an extremal Kerr--Newman--AdS5 black hole.
comments: "57 pages, 6 figures, 5 tables"
url: https://arxiv.org/abs/2607.24914v1
summary: "A reusable homological method for separating physical Kaluza--Klein modes from tensor-hierarchy gauge pairs before constructing mass matrices."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T2-model`, `T3-math`; author signal: `A-big-name` (Olaf Hohm and Henning Samtleben), not used by itself for promotion.

The useful idea is to treat a Kaluza--Klein Higgs mechanism as a homotopy equivalence of gauge complexes. Instead of fixing each spin sector by hand, one constructs adjoints and Green operators, removes contractible gauge pairs, and projects the linear equations directly onto physical fields.

## E6(6) exceptional field theory data

The bosonic fields are

$$
\left\{
g_{\mu\nu},
\mathcal M_{MN},
\mathcal A_\mu{}^M,
\mathcal B_{\mu\nu M}
\right\},
$$

where $M=1,\ldots,27$ and

$$
d^{MNP}\partial_M\otimes\partial_N=0
$$

is the section condition. The generalized metric parametrizes
$E_{6(6)}/\mathrm{USp}(8)$, while $\mathcal A$ and $\mathcal B$ belong to the tensor hierarchy.

The generalized Scherk--Schwarz ansatz factors all internal dependence through a twist $U_M{}^{\underline M}(Y)$ and density $\rho(Y)$. The flattened derivative is

$$
\mathrm d_{\underline M}
=
\rho^{-1}(U^{-1})_{\underline M}{}^N\partial_N,
$$

and the twist defines a constant embedding tensor
$X_{\underline{MN}}{}^{\underline K}$. Fluctuations are expanded in the full harmonic tower rather than truncated to the finite five-dimensional gauged supergravity.

The paper keeps the metric, scalar-metric, vector, and two-form fluctuations:

$$
h_{\mu\nu},
\qquad
m_{MN},
\qquad
a_\mu{}^M,
\qquad
b_{\mu\nu M}.
$$

Gauge invariance of the complete linear equations requires the five-dimensional background equations. This is an on-shell background expansion, not an arbitrary off-shell Hessian.

## Restricted backgrounds and the differential complex

The clean homotopy construction assumes

$$
\bar{\mathcal F}_{\mu\nu}{}^M=0,
\qquad
\bar{\mathcal B}_{\mu\nu M}=0,
\qquad
\bar{\mathcal M}_{MN}=\text{constant}.
$$

The internal maps that govern the Stückelberg couplings are:

- $\mathrm d_M$, the promoted internal derivative;
- $\mathcal Z^{MN}$, the tensor-hierarchy map from one-form parameters/two-forms to vectors;
- $\Pi_{MN,K}$, the vector-to-scalar Higgs map.

They satisfy the source's nilpotency relations

$$
\Pi\mathcal Z=0,
\qquad
\mathcal Z\,\mathrm d=0,
\qquad
\mathrm d\,\mathcal Z=0,
$$

together with the adjoint relations

$$
\mathcal Z^\dagger\Pi^\dagger=0,
\qquad
\mathcal Z^\dagger\mathrm d^\dagger=0.
$$

The linear gauge transformations can then be written schematically as

$$
\begin{aligned}
\delta h_{\mu\nu}
&=2\nabla_{(\mu}\zeta_{\nu)}
+\frac23(\mathrm d\lambda)g_{\mu\nu},\\
\delta m&=-\mathfrak D\lambda,\\
\delta a_\mu
&=\partial_\mu\lambda
+\mathfrak D\xi_\mu
+\mathrm d^\dagger\zeta_\mu,\\
\delta b_{\mu\nu}
&=2\partial_{[\mu}\xi_{\nu]}+\omega_{\mu\nu}.
\end{aligned}
$$

The extra $\omega_{\mu\nu}$ lives in the zero modes of the tensor Laplacian and represents the next tensor-hierarchy gauge redundancy. Gauge-for-gauge parameters, gauge parameters, and fields therefore form a chain

$$
X_{-2}\xrightarrow{\partial_{-2}}
X_{-1}\xrightarrow{\partial_{-1}}
X_0,
\qquad
\partial_{-1}\partial_{-2}=0.
$$

## Hodge-type operators and Green homotopies

Positive internal inner products define adjoints and the three Laplace-type operators

$$
\Delta=\mathrm d^M\mathrm d_M,
\qquad
\Delta_V=\Pi^\dagger\Pi,
\qquad
\Delta_T=\mathcal Z^\dagger\mathcal Z.
$$

Their Green operators $K,K_V,K_T$ invert them only on the nonzero-mode subspaces and vanish on their kernels. For example,

$$
K_V\Delta_V
=\Delta_VK_V
=1-[\,\cdot\,]_V.
$$

Positivity implies the familiar Hodge statement: a Laplacian zero mode is annihilated by the corresponding differential and its adjoint. This gives orthogonal decompositions into physical zero modes, exact Stückelberg directions, and nonzero massive modes.

The two important projectors are

$$
\boxed{
\mathcal P^M{}_N
=
\delta^M{}_N
-\mathcal Z^{MK}(K_T)_K{}^L
\mathcal Z^\dagger_{LN}
-\mathrm d^MK\mathrm d_N
}
$$

and

$$
\boxed{
\mathbb P_{MN}{}^{KL}
=
\delta_{(M}{}^K\delta_{N)}{}^L
-\Pi_{MN,P}(K_V)^P{}_Q
\Pi^{\dagger\,Q,KL}
}.
$$

They obey

$$
\mathcal P^2=\mathcal P,
\qquad
\mathbb P^2=\mathbb P,
$$

and project onto

$$
\mathrm d_M\widehat a_\mu{}^M
=
\mathcal Z^\dagger_{MN}\widehat a_\mu{}^N
=0,
\qquad
\Pi^{\dagger\,K,MN}\widehat m_{MN}=0.
$$

## Hatted fields and contractible gauge pairs

Field-dependent homotopies $\mathfrak h_0(\Phi)$ are used to define

$$
\widehat\Phi
=
\Phi-\partial_{-1}\mathfrak h_0(\Phi).
$$

In components, $\widehat m$ and the nonzero tensor modes $\widehat b$ are fully gauge invariant. The vector and graviton zero modes retain their ordinary lower-dimensional gauge transformations:

$$
\delta\widehat a_\mu{}^M
=
\partial_\mu[\widehat\lambda^M]_V,
$$

and $\widehat h_{\mu\nu}$ retains the lower-dimensional diffeomorphism generated by the surviving zero-mode $\zeta_\mu$.

This is the precise Higgs picture:

- nonzero scalar directions in $\operatorname{im}\Pi$ are eaten by vectors;
- nonzero vector directions in $\operatorname{im}\mathcal Z$ are eaten by two-forms;
- harmonic kernels survive as massless gauge fields;
- contractible pairs are removed without choosing a component gauge.

The paper extends the complex beyond fields to the linear equations of motion and their Noether identities. Homotopy transfer then produces a downstairs complex whose equations act only on the projected hatted fields.

## Projected Kaluza--Klein mass operators

For the scalar metric modes,

$$
\nabla^2\widehat m_{MN}
-
(\mathcal M_{\rm sm})_{MN}{}^{PQ}
\widehat m_{PQ}=0,
$$

with the unprojected scalar operator sandwiched between $\mathbb P$ projectors.

For vectors, the projected Proca equation has

$$
(\mathcal M_V)^M{}_N
=
-\frac1{12}
\mathcal P^M{}_K
(\Delta_V)^K{}_L
\mathcal P^L{}_N.
$$

Taking a divergence yields $\nabla_\mu\widehat a^{\mu M}=0$ on nonzero eigenmodes. Analogous projected operators organize the tensor and spin-two sectors. The mass matrices are therefore defined on the homotopy-transferred physical complex, not on the original redundant fluctuation space.

## Extremal Kerr--Newman--AdS5 near-horizon application

The application considers a type-IIB uplift of an extremal five-dimensional Kerr--Newman--AdS black hole. Its near-horizon geometry is a fibration over

$$
\mathrm{AdS}_2\times\text{squashed }S^3.
$$

The authors insert this background into the ExFT fluctuation equations, decompose selected fields in the internal harmonics, and derive effective $\mathrm{AdS}_2$ masses. The analysis targets subsectors for which spin mixing remains tractable and plots stability against the relevant $\mathrm{AdS}_2$ bound.

This is not a complete ten-dimensional spectrum or a proof of black-hole stability. It is a demonstration that the same projected ExFT machinery can reach a nontrivial rotating near-horizon background without reconstructing every ten-dimensional component equation.

## Reuse and limitations

- The chain-complex formulation is a clean language for BRST/BV or $L_\infty$ treatments of KK towers.
- Green operators are defined only off the zero-mode kernels. Any application must state the internal inner product, domain, and treatment of noncompact or continuous spectra.
- The restricted-background assumptions remove background flux and scalar gradients. General backgrounds will mix the spin sectors and deform the differential.
- The construction is linear. A nonlinear homotopy transfer would have to track interaction vertices and higher brackets.
- The black-hole application samples stable/unstable subsectors; it does not exhaust all modes.

## Verification boundary

### Checked

- Mathematica tested the projector mechanism on an exact finite-dimensional chain model with orthogonal $\operatorname{im}\mathrm d$ and $\operatorname{im}\mathcal Z$. The analogues of $\mathcal P^2-\mathcal P$, $\mathcal Z^\dagger\mathcal P$, and $\mathrm d^\dagger\mathcal P$ all vanished; the scalar projector likewise obeyed $\mathbb P^2=\mathbb P$ and $\Pi^\dagger\mathbb P=0$.

### Blocked

- The $E_{6(6)}$ generalized-Lie identities, nilpotency maps, adjoints, full projected mass matrices, and near-horizon spectra were source-derived and not independently recomputed.
- The Green-operator argument assumes positive internal inner products and invertibility on the nonzero-mode subspaces.

### Failed

- No independently attempted linear-algebra identity failed. Promoting the selected near-horizon subsectors to a complete ten-dimensional stability theorem would exceed what the source establishes.
