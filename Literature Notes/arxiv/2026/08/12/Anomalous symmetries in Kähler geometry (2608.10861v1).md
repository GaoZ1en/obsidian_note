---
paper id: 2608.10861v1
title: Anomalous symmetries in Kähler geometry
authors:
  - Dmitri Bykov
  - Andrew Kuzovchikov
publication date: 2026-08-11T12:33
abstract: We initiate a study of centrally extended (anomalous) symmetries in Kähler geometry, focusing on the simplest, and most ubiquitous, Abelian case. In particular, we provide a local description of the geometry admitting such isometries. A long-standing no-go theorem asserts that there is an obstruction to gauging such symmetries in the purely Kähler framework. Utilizing the language of supersymmetry, we then show that these symmetries may be gauged within the setup of generalized Kähler geometry. Our results may be applied to quotients, T-dualities, etc.
summary: Classifies local Kähler geometries whose Abelian isometries have centrally extended moment maps, reduces them to Heisenberg blocks and ordinary Kähler quotients, and gauges them after introducing twisted-chiral compensators in generalized Kähler geometry.
comments: 25 pages
url: https://arxiv.org/abs/2608.10861v1
tags: []
---

## Verdict and relevance

**Correct at the structural level under the stated local, Abelian, positive-definite assumptions, but the displayed moment-map normalization is inconsistent with the paper's own Kähler-form convention by a factor of two.** The normalization issue rescales the numerical central charge \(c\) in examples and canonical potentials; it does not by itself invalidate the local Heisenberg-block classification or the compensator mechanism.

This is a **medium-priority reusable-method paper**. Its strongest vault connections are to symplectic reduction, moment-map equivariance, classical central extensions, sigma-model gauging, and the distinction between a genuine obstruction and a compensator enlargement. The word “anomalous” here refers to a **classical** central extension of the moment-map algebra, not a computed quantum anomaly.

## Main result first

Let a real Abelian Lie algebra \(\mathfrak g\) act on a Kähler manifold by holomorphic Killing vector fields. The Hamiltonians/moment maps need not furnish a strictly equivariant representation of \(\mathfrak g\):

$$
\{\mu_{\mathsf W},\mu_{\mathsf V}\}
=\mu_{[\mathsf W,\mathsf V]}+\mathcal C(\mathsf W,\mathsf V),
$$

where \(\mathcal C\) is a constant Lie-algebra two-cocycle. For Abelian \(\mathfrak g\), a nonzero \(\mathcal C\) is a genuine central extension.

The paper's local classification has three layers:

1. \(\mathcal C=0\) if and only if a Kähler transformation can make the potential invariant under the whole Abelian action.
2. Every nonzero antisymmetric block of \(\mathcal C\) is locally a Heisenberg block, with two canonical types depending on whether the holomorphic parts of its two real Killing fields are complex-linearly independent or dependent.
3. The general geometry is locally an ordinary Kähler quotient of a universal model \(\mathcal N\) built from independent Heisenberg blocks plus directions in \(\ker\mathcal C\).

Naive gauging in ordinary Kähler \(\mathcal N=(2,2)\) superspace is obstructed. Adding one twisted-chiral compensator per symplectic block of \(\mathcal C\) converts the non-invariance into a generalized Kähler transformation. The enlarged invariant system can then be gauged using a real gauge superfield and a semi-chiral superfield.

## Kähler transformations and moment maps

The paper takes

$$
\omega=\frac{i}{2}\,\partial\bar\partial\mathcal K.
$$

For a holomorphic Killing vector

$$
\mathsf V=\mathsf V^i(z)\partial_{z_i}
+\overline{\mathsf V}^{\bar i}(\bar z)\partial_{\bar z_i},
$$

preservation of \(\omega\) implies

$$
\nabla_{\mathsf V}\mathcal K
=f_{\mathsf V}(z)+\bar f_{\mathsf V}(\bar z).
$$

Thus the metric can be invariant even when the potential changes by a Kähler transformation. Locally, with

$$
\iota_{\mathsf V}\omega=d\mu_{\mathsf V},
$$

the central term is controlled by the failure of the map \(\mathsf V\mapsto f_{\mathsf V}\) to be a Chevalley--Eilenberg cocycle:

$$
\mathcal C\sim\delta f.
$$

The invariant content is unchanged by

$$
\mathcal K\mapsto\mathcal K+h(z)+\bar h(\bar z),
\qquad
f_{\mathsf V}\mapsto f_{\mathsf V}+\nabla_{\mathsf V}h.
$$

Hence the presence of the central extension is locally independent of the choice of Kähler potential.

## Abelian equivalence theorem

The paper proves, locally and for a positive-definite Kähler metric:

$$
\boxed{
\mathcal C=0
\quad\Longleftrightarrow\quad
\text{there is a Kähler gauge with }\nabla_{\mathsf V}\mathcal K=0
\text{ for every }\mathsf V\in\mathfrak g.
}
$$

The nontrivial direction uses two facts:

- if the \((1,0)\) parts of commuting fields are complex-linearly independent, they can be rectified and the Poincaré lemma makes \(f\) locally exact;
- if the real fields are independent but their holomorphic parts appear dependent, \(\mathcal C=0\) plus positivity forces the holomorphic dependence coefficients to be real constants, contradicting real independence unless redundant generators are removed.

This result is explicitly **local**. Global obstructions remain possible: \(\iota_{\mathsf V}\omega\) may fail to be exact, moment maps may exist only patchwise, and periodic identifications can change the group action.

## Canonical Heisenberg blocks

For two commuting Killing fields \(\mathsf V,\mathsf W\) with a nonzero central pairing, there are two local cases.

### Independent holomorphic parts

When

$$
\mathsf V^{(1,0)}=\partial_z,
\qquad
\mathsf W^{(1,0)}=\partial_w,
$$

the potential can be brought to

$$
\mathcal K
=-\frac{ic}{2}(w+\bar w)(z-\bar z)
+\mathcal K_0(w-\bar w,z-\bar z,\ldots).
$$

The non-invariant bilinear term sources the central extension; \(\mathcal K_0\) is invariant.

### Dependent holomorphic parts

When

$$
\mathsf V^{(1,0)}=\partial_z,
\qquad
\mathsf W^{(1,0)}=\lambda(r)\partial_z,
$$

with \(\lambda\) holomorphic and not a real constant, the canonical form is

$$
\mathcal K
=\frac{ic}{2}\,
\frac{[i(z-\bar z)]^2}{\lambda(r)-\bar\lambda(\bar r)}
+\mathcal K_0(r,\bar r).
$$

This has a fibration structure. A notable complete/homogeneous example is obtained from \(\lambda(r)=r\) and a logarithmic base term; it is related to the Siegel--Jacobi space and, after lattice identifications, the universal elliptic curve.

The two types are unified by adjoining auxiliary complex coordinates: the dependent case can be obtained as a Kähler quotient of an independent model by an isometry lying in \(\ker\mathcal C\).

## General local classification

Any real antisymmetric matrix representing \(\mathcal C\) can be brought by \(GL(n,\mathbb R)\) to

$$
\mathcal C_{k,n}
=c\begin{pmatrix}
\mathbf1_k\otimes
\begin{pmatrix}0&1\\-1&0\end{pmatrix}&0\\
0&0_{n-2k}
\end{pmatrix}.
$$

For independent holomorphic generators, the universal local model \(\mathcal N\) contains a sum of \(k\) bilinear Heisenberg pieces,

$$
\mathcal K_{\mathcal N}
=-\frac{ic}{2}\sum_{A=1}^k
(w_A+\bar w_A)(z_A-\bar z_A)
+\mathcal K_0(\text{invariant combinations})
+\kappa+\bar\kappa.
$$

If the relevant holomorphic fields are not independent, one adds enough flat complex directions to make them independent, then quotients by commuting fields in the kernel of \(\mathcal C\). Locally,

$$
\boxed{
\mathcal M
=\bigl(\mathcal N,\mathfrak g\oplus\mathbb R^m,
\mathcal C_{k,n+m}\bigr)\big/\!\big/\mathbb R^m.
}
$$

The quotient preserves the central pairing on the projected symmetry algebra provided the quotient generators commute with \(\mathfrak g\) and lie in \(\ker\mathcal C\).

## Why ordinary gauging is obstructed

In ordinary \(\mathcal N=(2,2)\) Kähler superspace, gauging requires an invariant Kähler potential after introducing the usual vector multiplet. For \(\mathcal C\neq0\), the Abelian theorem says that no ordinary Kähler transformation makes the potential invariant under the entire algebra. Chiral compensators can make the expression formally invariant, but the cited no-go result says the resulting gauging is ill-defined in the purely Kähler setting.

The obstruction is therefore an equivariance problem for the moment maps/potential, not the quantum non-invariance of a path-integral measure.

## Twisted-chiral compensators

Choose a maximal isotropic subalgebra

$$
\mathfrak p\subset\mathfrak g,
\qquad
\mathcal C|_{\mathfrak p}=0.
$$

A Kähler transformation makes \(\mathcal K'\) invariant under \(\mathfrak p\). For each of the \(k\) complementary generators \(\mathsf W_A\), introduce a twisted-chiral field \(\mathbf S_A\) and define

$$
\mathcal K''
=\frac12\left(
\prod_{A=1}^k e^{\mathbf S_A\nabla_{\mathsf W_A}}
+\prod_{A=1}^k e^{\bar{\mathbf S}_A\nabla_{\mathsf W_A}}
\right)\mathcal K'.
$$

It is invariant under simultaneous transformations obeying

$$
\left(
\nabla_{\mathsf W_A}
-\partial_{\mathbf S_A}
-\partial_{\bar{\mathbf S}_A}
\right)\mathcal K''=0.
$$

The difference \(\mathcal K''-\mathcal K'\) is a generalized Kähler transformation involving chiral and twisted-chiral combinations. This is why twisted-chiral, rather than merely chiral, compensators evade the ordinary Kähler obstruction.

Gauging then uses an extended multiplet containing real gauge fields \(\mathbf V\) and a semi-chiral field \(\mathbf X\). Integrating out gauge fields produces generalized Kähler quotients; adding flatness multipliers and integrating in the opposite order produces T-duals.

## Claim tier

The paper establishes, subject to the normalization caveat below:

- a **local differential-geometric classification** for positive-definite Kähler manifolds with finite-dimensional Abelian holomorphic isometries;
- a reduction of the nontrivial cocycle to finite Heisenberg blocks;
- preservation of the cocycle under specified Kähler quotients;
- an off-shell superspace construction of compensators and gauged potentials in representative blocks;
- recipes for generalized Kähler quotients and T-dualities.

It does not establish:

- a global classification of group actions, moment maps, line bundles, or quotient topology;
- a quantum anomaly calculation or anomaly-cancellation theorem;
- non-Abelian or infinite-dimensional extensions;
- positivity/completeness of every potential in the general family;
- quantum consistency of the gauged sigma models.

## Normalization audit

The paper simultaneously states

$$
\omega=\frac{i}{2}\partial\bar\partial\mathcal K,
\qquad
\iota_{\mathsf V}\omega=d\mu_{\mathsf V},
$$

and

$$
\mu_{\mathsf V}^{\rm paper}
=\frac{i}{2}\left(
\mathsf V^i\mathcal K_i
-\bar{\mathsf V}^{\bar i}\mathcal K_{\bar i}
+\bar f_{\mathsf V}-f_{\mathsf V}
\right).
$$

Using \(\nabla_{\mathsf V}\mathcal K=f_{\mathsf V}+\bar f_{\mathsf V}\), the latter is twice the Hamiltonian compatible with the displayed \(\omega\):

$$
\mu_{\mathsf V}^{\rm compatible}
=\frac{i}{2}\left(
\mathsf V^i\mathcal K_i-f_{\mathsf V}
\right)
=\frac12\mu_{\mathsf V}^{\rm paper}.
$$

For the simplest check, take \(\mathcal K=z\bar z\), \(z=x+iy\). Then

$$
\omega=dx\wedge dy.
$$

The real translations are \(\mathsf V_x=\partial_x\) and \(\mathsf V_y=\partial_y\). The defining Hamiltonian equation requires

$$
\mu_x=y,
\qquad
\mu_y=-x,
\qquad
\{\mu_x,\mu_y\}=1.
$$

The paper's formula gives \(2y,-2x\), for which

$$
d(2y)-\iota_{\partial_x}\omega=dy\neq0,
\qquad
d(-2x)-\iota_{\partial_y}\omega=-dx\neq0,
$$

and the canonical Poisson bracket is \(4\), while the paper's flat-space formula reports \(2\). Thus the displayed conventions cannot all hold simultaneously. Equation (2.19) also contains the typographical bracket \(\{\mu_n,\mu_n\}\), which must vanish antisymmetrically and evidently should involve \(\mu_m\).

The clean repair is to halve the moment-map formula (and consistently normalize \(\mathcal C\)), or instead double the Kähler form. Until one choice is made, numerical factors multiplying \(c\) in the canonical potentials should be treated conventionally.

## Cohomological caveat

The paper's broad statement that a constant cocycle \(\mathcal C=\delta f\) is trivial in \(H^2(\mathfrak g,\mathbb R)\) “only if \(f\) is a real constant cochain” is too strong for a general non-Abelian algebra: \(f\) may differ from a real cochain by an \(\mathcal O(U)\)-valued one-cocycle. The later Abelian specialization is safer because every real one-cochain has zero coboundary on an Abelian algebra, so any nonzero constant \(\mathcal C\) is automatically nontrivial.

## Verification audit

### Source-derived

The local classification, quotient theorem, and generalized-Kähler gauging construction below are reconstructed from the authors' statements and proofs; only the normalization test was independently recomputed.

### Checked

**Verified:** The arXiv abstract, full 25-page PDF, TeX source, theorem statements, canonical potentials, quotient construction, gauging section, and appendix route were inspected. Rendered pages confirmed the central-extension/cohomology discussion, Heisenberg potentials, and twisted-chiral construction.

**Verified:** The flat \(\mathbb C\) example was independently evaluated in real coordinates with Mathematica. With the paper's \(\omega\) convention, its displayed moment maps fail \(\iota_V\omega=d\mu_V\) by a factor of two; the halved moment maps have zero residual.

**Verified:** The same example gives Poisson bracket \(4\) from the displayed moment maps, \(1\) from the compatible Hamiltonians, and \(2\) in the paper's stated flat-space central term. This confirms an internal normalization mismatch rather than a mere sign choice.

### Failed

With the displayed convention \(\omega=\frac{i}{2}\partial\bar\partial\mathcal K\), the paper's moment-map formula fails \(\iota_V\omega=d\mu_V\) by a factor of two in the flat \(\mathbb C\) example. Numerical factors assigned to \(\mathcal C\) and \(c\) therefore remain conventionally inconsistent until repaired.

### Not independently verified

**Assumptions:** Local coordinate patch; constant rank of the relevant vector-field distributions; finite-dimensional Abelian Lie algebra; positive-definite Kähler metric; existence of local moment maps; regular quotient levels and free/proper actions where a smooth quotient is intended.

**Not verified:** The general quotient theorem and all semi-chiral superconnection formulae were not independently rederived component by component. No executable symbolic notebook accompanies the source.

**Not verified:** Global topology, completeness, quantum gauge invariance, path-integral measures, and anomaly cancellation beyond the classical superspace construction.

## Reusable lessons

1. Treat moment-map equivariance as an independent datum from invariance of the metric.
2. For Abelian actions, put the cocycle into symplectic block form before analyzing geometry or gauging.
3. Separate local Kähler-gauge statements from global Hamiltonian actions.
4. Quotient only by commuting generators in \(\ker\mathcal C\) if the central pairing is to descend unchanged.
5. When ordinary compensators fail, identify which enlarged multiplet changes the geometry rather than declaring the obstruction removed in the original category.
6. Lock the normalization of \(\omega\), Hamiltonians, and Poisson brackets before assigning a numerical central charge.
