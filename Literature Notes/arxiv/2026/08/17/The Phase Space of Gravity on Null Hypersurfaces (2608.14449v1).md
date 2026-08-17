---
paper id: 2608.14449v1
title: The Phase Space of Gravity on Null Hypersurfaces
authors:
  - Luca Ciambelli
  - Laurent Freidel
  - Robert G. Leigh
publication date: 2026-08-14T16:34
abstract: |-
  We construct the bulk kinematical Poisson structure of general relativity on a caustic-free null segment, prior to imposing the Raychaudhuri and Damour constraints. Shifts of the Ehresmann connection are shown to be pure gauge, allowing that connection to be fixed as background data. A three-stage Dirac reduction then produces coupled spin-0, spin-1 and spin-2 brackets; the spin-2 bracket is bilocal and is controlled by an antisymmetric Green kernel for transport along the null generators. The brackets are independently reconstructed from Hamiltonian vector fields of the reduced symplectic form.
comments: "45 pages, v1; official PDF has 47 pages including front matter and references"
url: https://arxiv.org/abs/2608.14449v1
summary: "A conditional but technically substantive construction of the full classical kinematical null-gravity phase space before the Raychaudhuri and Damour constraints are imposed."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: the analysis is local to a caustic-free null segment, the Ehresmann connection is fixed as background through the prime-phase-space gauge, endpoint and cut terms vanish or are controlled by compatible boundary conditions, and the first-order spin-2 transport operator admits a chosen skew Green inverse on the selected function space.

Under those conditions, the paper constructs a classical **kinematical** Poisson structure for null gravitational data before imposing the Raychaudhuri and Damour constraints. It does not construct the reduced solution phase space, include the finite-region edge modes needed for nonzero corner flux, cross caustics, or quantize the full constraint algebra.

There is one localized source typo in Section 5.4: the unsmeared spin-1 bracket is printed once with the mixed projector indices transposed. The consistent formula, used earlier and implied by the generator, is
\[
\{\ell^a(x_1),\widetilde\pi_b(x_2)\}
=q_b{}^a(x_1)\widetilde\delta^{(3)}(x_1,x_2),
\]
not \(q_a{}^b\widetilde\delta^{(3)}\). This typo does not alter the main bracket ledger, where the orientation is correct.

# How to read this long paper

## Essential route

1. Section 2.1 for the ruled Carrollian data \((q_{ab},\ell^a,k_a)\) and the connection conventions.
2. Section 3.1 for the proof that shifts of \(k_a\) lie in the presymplectic kernel.
3. Section 3.2 for the prime condition \(\delta k_a=0\) and the compensated action of diffeomorphisms.
4. Section 4.1 for the spin decomposition after the first two reductions.
5. Section 4.2 for the spin-2 Green kernel and the final bracket ledger.
6. Section 5.4 for the independent Hamiltonian-generator reconstruction.

## Technical-reference route

- Appendix A for the Damour equation in the paper's intrinsic connection conventions.
- Appendix B for the normalization and horizontality Dirac reductions.
- Appendix C for inversion of the shear-constraint bracket and the complete third-step algebra.
- Appendix D for the variation of the traceless projector.
- Appendix E for the Gaussian-null bulk dictionary.

## Optional background

The detailed discussion of rescaling weights and the comparison with Reisenberger and Adami et al. is most useful after the main bracket construction is understood.

# Complete source map

## Section 1 — Introduction

The paper deliberately separates kinematics from dynamics. It retains the Raychaudhuri and Damour equations as constraints acting on phase space rather than solving them first. The claimed novelty is the simultaneous inclusion of the spin-0, spin-1 and spin-2 sectors in one gauge-independent local null phase space.

## Section 2 — Null hypersurfaces

- Section 2.1 defines the ruled Carrollian geometry, its torsionless minimally non-metric connection, the Ehresmann connection, acceleration and vorticity.
- Section 2.2 packages the Raychaudhuri and Damour equations as vertical and horizontal projections of a null Brown--York conservation law.
- Section 2.3 distinguishes null diffeomorphisms, rescalings of \(\ell\), and horizontal shifts of \(k\), and derives their action on the intrinsic fields and constraints.

## Section 3 — Symplectic analysis

- Section 3.1 begins from a corner-improved covariant presymplectic potential. Diffeomorphisms have charges and flux, rescalings have corner charges, and shifts have neither.
- Section 3.2 fixes \(k_a\) as background, defines the compensated prime action, identifies the bulk Raychaudhuri and Damour generators, and states the boundary conditions under which their charge algebra is canonical.

## Section 4 — Kinematical Poisson structure

- The starting phase space treats \((\widetilde\tau^{ab},q_{ab},\widetilde\tau_a,\ell^a)\) as independent canonical variables.
- Step 1 imposes \(k_a\ell^a=1\) and the vertical momentum constraint.
- Step 2 imposes \(q_{ab}\ell^a=0\) and \(\widetilde\tau^{ab}k_b=0\).
- Step 3 imposes equality between the traceless momentum and the shear. Its inverse constraint kernel is a boundary-condition-dependent first-order Green function along each null generator.

## Section 5 — Alternative derivation

The reduced symplectic form is decomposed directly into spin-0, spin-1 and spin-2 pieces. Five families of smeared Hamiltonians are constructed and unsmeared to reproduce the Dirac brackets. This is an independent derivation at the formal distributional level, subject to the same endpoint and Green-kernel assumptions.

## Section 6 — Conclusions

The paper proposes the resulting brackets as the starting point for imposing the null Einstein constraints and for later quantization. The constraint algebra, anomaly question, finite corners, edge modes and caustics are explicitly future work.

## Appendices

- Appendix A derives the intrinsic Damour equation.
- Appendix B performs the first two second-class reductions.
- Appendix C derives the spin-2 inverse kernel and the final reduced brackets.
- Appendix D proves the projector-variation identity used in Section 5.
- Appendix E translates \((\mu,\pi_A,\theta_{AB})\) into Gaussian-null metric coefficients.

# Geometry, fields and conventions

The null hypersurface is a three-manifold \(\mathcal N\simeq S\times I\), with the interval restricted to lie between caustics. Lowercase Latin indices are intrinsic to \(\mathcal N\). Horizontal indices are raised with the generalized inverse \(q^{ab}\).

The Carrollian structure is
\[
\ell^a q_{ab}=0,
\qquad
q_{ab}=\Omega\,\bar q_{ab},
\]
where \(\Omega\) is the cut area density and \(\bar q_{ab}\) is unimodular on each two-dimensional cut.

An Ehresmann one-form \(k_a\) obeys
\[
k_a\ell^a=1,
\qquad
q_a{}^b=\delta_a{}^b-k_a\ell^b.
\]
Horizontal vectors satisfy \(k_aY^a=0\). The acceleration \(\varphi_a\) and vorticity \(\varpi_{ab}\) are defined by
\[
\mathrm d k=\varphi\wedge k-\varpi,
\qquad
\mathcal L_\ell k_a=-\varphi_a.
\]
The cut distribution is integrable only when \(\varpi=0\).

The torsionless Carrollian connection is minimally non-metric:
\[
D_aq_{bc}=-\theta_{ab}k_c-\theta_{ac}k_b,
\qquad
(D_a-\omega_a)\ell^b=\theta_a{}^b.
\]
The expansion tensor, expansion and shear are
\[
\theta_{ab}=\frac12\mathcal L_\ell q_{ab},
\qquad
\theta_a{}^b=\frac12\theta q_a{}^b+\sigma_a{}^b,
\qquad
\sigma_a{}^a=0.
\]
The boost one-form decomposes as
\[
\omega_a=\kappa k_a+\pi_a,
\]
with inaffinity \(\kappa=k_bD_\ell\ell^b\) and horizontal Hájíček form \(\pi_a\).

The surface-tension variable is
\[
\mu=\kappa+\frac12\theta.
\]
The intrinsic null Brown--York tensor and its hydrodynamic decomposition are
\[
8\pi G\,T_a{}^b=D_a\ell^b-\delta_a{}^bD_c\ell^c,
\]
\[
T_a{}^b=\tau_a\ell^b+\tau_a{}^b,
\quad
8\pi G\,\tau_a=\pi_a-\theta k_a,
\quad
8\pi G\,\tau_a{}^b=\sigma_a{}^b-\mu q_a{}^b.
\]

Section 4 sets \(8\pi G=1\). Factors of \(8\pi G\) must be restored when moving its brackets into the vault's ordinary CPS conventions.

# Dynamics retained as constraints

The intrinsic Einstein equations are written as
\[
D_bT_a{}^b=T^{\mathrm{mat}}_{a\ell}.
\]
The paper studies the densitized vacuum constraint functions
\[
C=8\pi G\,\Omega\,\ell^bD_aT_b{}^a,
\qquad
J_a=8\pi G\,\Omega\,q_a{}^bD_cT_b{}^c.
\]

The vertical projection contains
\[
8\pi G\,\ell^bD_aT_b{}^a
=-(\mathcal L_\ell+\theta)\theta+\mu\theta
-\sigma_a{}^b\sigma_b{}^a-R_{\ell\ell},
\]
and the horizontal projection is
\[
\begin{aligned}
8\pi G\,q_a{}^bD_cT_b{}^c
={}&(\mathcal L_\ell+\theta)\pi_a-\bar D_a\mu
+(\theta-\mu)\varphi_a\\
&+(\bar D_b+\varphi_b)\sigma_a{}^b-q_a{}^bR_{b\ell}.
\end{aligned}
\]

The crucial scope decision is that \(C=0\) and \(J_a=0\) are not imposed during the phase-space construction.

# Why shifts of the Ehresmann connection are gauge

The corner-improved canonical potential is
\[
\Theta^{\mathrm{can}}
=\int_{\mathcal N}\varepsilon_{\mathcal N}
\left(
\frac12\tau^{ab}\delta q_{ab}-\tau_a\delta\ell^a
\right).
\]

A horizontal shift is
\[
\delta_\zeta k_a=-\zeta_a,
\qquad
\zeta_a\ell^a=0.
\]
With the induced inhomogeneous transformation
\[
\delta_\zeta\Gamma^c{}_{ab}=-\theta_{ab}\zeta^c,
\]
the null Brown--York tensor and its divergence are invariant. The contraction with the presymplectic form vanishes:
\[
I_{\hat\zeta}\Omega^{\mathrm{can}}=0.
\]
Therefore \(k_a\) has no independent bulk conjugate and may be fixed.

This is a bulk statement. It does not prove that every finite-region boundary realization of the shift is trivial after edge modes are added.

# Prime phase space and compensated diffeomorphisms

The prime condition is
\[
\delta k_a=0.
\]
A diffeomorphism is decomposed as \(\xi=f\ell+Y\), with \(Y\) horizontal. Rescaling and shift parameters are made field dependent so that the combined action preserves \(k\):
\[
\lambda(\xi)=\ell(f)+Y^b\varphi_b,
\qquad
\zeta_a(\xi)=(\bar D_a-\varphi_a)f-Y^b\varpi_{ba}.
\]

The associated prime charge separates into a vertical Raychaudhuri generator \(M_f'\) and a horizontal Damour generator \(P_Y'\). Each is a bulk constraint smeared over \(\mathcal N\) plus a cut term.

For integrable \(k\), adapted cuts and vanishing total cut flux, the algebra is
\[
\{M_f',M_g'\}=-M_{[f,g]'}',
\qquad
\{P_Y',M_f'\}=-M'_{Y(f)},
\qquad
\{P_Y',P_{Y'}'\}=-P'_{[Y,Y']}.
\]
The paper does not claim this algebra without the cut-flux conditions.

# Three-stage Dirac reduction

## Starting variables

Using the field-independent bare measure, the potential is
\[
\Theta^{\mathrm{can}}
=\int_{\mathcal N}
\left(
\frac12\widetilde\tau^{ab}\delta q_{ab}
-\widetilde\tau_a\delta\ell^a
\right).
\]
The initial brackets are canonical for symmetric \(q_{ab}\) and \(\widetilde\tau^{ab}\).

## Step 1 — normalization and vertical momentum

The second-class constraints are
\[
k_a\ell^a=1,
\qquad
\ell^a\widetilde\tau_a=-\Omega\theta.
\]
They leave the horizontal momentum
\[
\widetilde\pi_a=q_a{}^b\widetilde\tau_b
\]
as the spin-1 conjugate.

## Step 2 — horizontality

The second-class constraints are
\[
\ell^aq_{ab}=0,
\qquad
\widetilde\tau^{ab}k_b=0.
\]
After splitting trace and traceless parts,
\[
\tau_{ab}=-\mu q_{ab}+\widehat\tau_{ab},
\qquad
q^{ab}\widehat\tau_{ab}=0,
\]
the independent data are
\[
(\Omega,\mu;\ \ell^a,\widetilde\pi_a;\ \bar q_{ab},\widehat\tau_{ab}).
\]
At this stage \(\widehat\tau_{ab}\) is not yet the shear.

## Step 3 — shear constraint

The final constraint is
\[
\chi_{ab}
=\widehat\tau_{ab}
-\frac{\Omega}{2}\mathcal L_\ell\bar q_{ab}
=0.
\]
Its traceless projector is
\[
\Pi_{ab}{}^{cd}
=\frac12
\left(
q_a{}^cq_b{}^d+q_a{}^dq_b{}^c-q_{ab}q^{cd}
\right).
\]

The inverse constraint kernel \(P_{ab}{}^{cd}(x_1,x_2)\) is skew:
\[
P_{abcd}(x_1,x_2)=-P_{cdab}(x_2,x_1),
\]
and satisfies
\[
\begin{aligned}
\delta^{(3)}(x_1,x_2)\Pi_{ab}{}^{ef}(x_1)
={}&
\left(\mathcal L_{\ell_1}-\frac{\theta_1}{2}\right)
P_{ab}{}^{ef}(x_1,x_2)\\
&-
\left(\sigma_{ac}q_{bd}+q_{ac}\sigma_{bd}\right)_{x_1}
P^{cdef}(x_1,x_2).
\end{aligned}
\]
Existence, uniqueness and zero-mode treatment are not automatic; they are part of the boundary prescription.

For \(\ell=\partial_v\), constant transverse data, \(\theta=\sigma=0\), one recovers
\[
P_{abcd}(x_1,x_2)
=
\frac{\tfrac12\operatorname{sgn}(v_1-v_2)
\delta^{(2)}(\theta_1,\theta_2)}
\Omega(\theta_1)}
\Pi_{abcd}(\theta_1).
\]
With nonzero shear and expansion, the paper dresses this sign kernel by a path-ordered transport matrix along each null generator.

# Main reduced brackets

After all three kinematical reductions, the fields are
\[
(\Omega,\mu;\ \ell^a,\widetilde\pi_a;\ q_{ab}),
\]
with \(\sigma_{ab}=\frac12\Pi_{ab}{}^{cd}\mathcal L_\ell q_{cd}\) now composite.

The cleanest brackets are
\[
\{\Omega(x_1),\mu(x_2)\}
=\widetilde\delta^{(3)}(x_1,x_2),
\]
\[
\{\ell^a(x_1),\widetilde\pi_b(x_2)\}
=q_b{}^a(x_1)\widetilde\delta^{(3)}(x_1,x_2),
\]
\[
\{q_{ab}(x_1),q_{cd}(x_2)\}
=2P_{abcd}(x_1,x_2),
\]
and
\[
\{\mu(x_1),\mu(x_2)\}
=\frac12
\sigma_{ab}(x_1)P^{abcd}(x_1,x_2)\sigma_{cd}(x_2).
\]

The mixed bracket is
\[
\{\mu(x_1),q_{ab}(x_2)\}
=-q_{ab}(x_2)\delta^{(3)}(x_1,x_2)
-\sigma_{cd}(x_1)P^{cd}{}_{ab}(x_1,x_2).
\]

The \(\widetilde\pi_a\)-self bracket and its bracket with \(q_{bc}\) contain:

1. the local horizontal-projector term;
2. horizontal derivatives of \(P\);
3. insertions of the horizontal Lie derivative \(\mathcal L_{\bar\partial_a}q_{bc}\).

This realizes the paper's compact rule: \(\mu\) inserts vertical evolution through the shear, \(\widetilde\pi_a\) inserts horizontal metric evolution, and \(P\) connects the insertions.

# Independent Hamiltonian reconstruction

The reduced symplectic two-form is reorganized as
\[
\begin{aligned}
\Omega^{\mathrm{can}}
=\int_{\mathcal N}
&\delta\Omega\wedge
\left(
\delta\mu+\frac12\widehat\Delta:\sigma
\right)\\
&+\frac14\Pi^{abcd}
\mathcal L_\ell(\sqrt\Omega\,\widehat\Delta_{ab})
\wedge
(\sqrt\Omega\,\widehat\Delta_{cd})\\
&+\delta\ell^a\wedge
\left(
\delta\widetilde\pi_a
-\frac{\Omega}{2}(\bar D^b-\varphi^b)\widehat\Delta_{ab}
\right).
\end{aligned}
\]

The five useful smeared generators are
\[
Q_S=\frac12\int_{\mathcal N}S_{ab}\bar q^{ab},
\qquad
\Omega_\alpha=\int_{\mathcal N}\alpha\Omega,
\qquad
m_\beta=\int_{\mathcal N}\beta\Omega\mu,
\]
\[
L_A=\int_{\mathcal N}A_a\ell^a,
\qquad
p_B=\int_{\mathcal N}B^a\widetilde\pi_a.
\]
Their Hamiltonian vector fields reproduce the full bracket ledger, giving a derivation independent of the explicit Dirac-matrix contractions but not independent of the same boundary integrations and Green inverse.

# Relation to nearby formalisms

- Reisenberger solves the null Einstein equations and parametrizes free double-null solution data. The present paper works one stage earlier and keeps spin-0 and spin-1 bulk constraints.
- Adami et al. work with a null-boundary solution phase space and a co-rotating Gaussian-null gauge. The current paper keeps the constraints off shell and retains the spin-1 pair.
- In the integrable gauge \(k=\mathrm dv\), the paper's transverse metric and shear reduce to the familiar Gaussian-null variables; Appendix E gives the explicit map.

# Translation into the vault's CPS and gluing conventions

The immediately reusable structure is
\[
\text{bulk null kinematics}
\longrightarrow
\left[
(\Omega,\mu)
\oplus
(\ell^a,\widetilde\pi_a)
\oplus
(\bar q_{ab},\sigma_{ab})
\right],
\]
with the last pair nonlocal along each generator after reduction.

For the vault's finite-region and gluing work:

- fixing \(k_a\) is a bulk gauge choice, not a license to discard corner embedding or edge data;
- the inverse \(P\) is not a universal propagator until its endpoint function space and zero-mode prescription are fixed;
- nonzero corner flux requires phase-space extension rather than simply declaring the charge canonical;
- the result is an excellent classical input for a moving-null-interface calculation, but it is not yet a quantum algebra or a gluing theorem;
- the distinction between kinematical reduction and imposing \(C=J_a=0\) should be kept explicit in any comparison with the vault's reduced or physical phase spaces.

# Equation and dependency ledger

1. Ruled Carrollian data determine \(\theta_{ab}\), \(\omega_a\), \(\kappa\), \(\pi_a\), \(\varphi_a\) and \(\varpi_{ab}\).
2. These assemble the null Brown--York tensor \(T_a{}^b\).
3. Its divergence gives the Raychaudhuri and Damour constraints.
4. Shift invariance plus vanishing presymplectic contraction makes \(k_a\) background gauge data.
5. The prime condition fixes the compensating rescaling and shift for each diffeomorphism.
6. The canonical potential supplies the unreduced brackets.
7. Normalization and horizontality isolate the spin-0 and spin-1 pairs.
8. The shear constraint introduces the inverse transport kernel \(P\).
9. Dirac's formula gives the final bilocal brackets.
10. Hamiltonian generators reconstruct the same brackets from the reduced symplectic form.
11. Only after this construction should the Raychaudhuri and Damour constraint algebra be imposed and reduced.

# Verification log

## Checked

- Full official TeX source and all major sections and appendices were read. The 47-page PDF was text-extracted; rendered pages 1, 17, 29, 36 and 41 were visually inspected for formulas, labels and layout.
- xAct, using a two-dimensional cut metric, returned zero for both the trace and idempotence residuals of \(\Pi_{ab}{}^{cd}\) under the canonical-contract pipeline.
- Mathematica verified exactly that the Step-2 constraint-matrix inverse
  \[
  q_a{}^b+2k_a\ell^b
  \quad\leftrightarrow\quad
  q_a{}^b+\frac12k_a\ell^b
  \]
  multiplies to the identity when \(k_a\ell^a=1\).
- Mathematica verified the homogeneous Green-transport equation for a constant diagonal traceless shear, constant expansion, and arbitrary symmetric traceless source. The residual was the zero \(2\times2\) matrix.
- The spin-1 generator implies \(q_b{}^a\) in \(\{\ell^a,\widetilde\pi_b\}\). A symbolic non-symmetric mixed projector gives \(q_a{}^b-q_b{}^a\neq0\), confirming that the single transposed display in Section 5.4 is a genuine typo rather than harmless notation.

## Failed

- Source Section 5.4, immediately after the Hamiltonian identity, prints
  \(\{\ell^a,\widetilde\pi_b\}=q_a{}^b\widetilde\delta\).
  This contradicts the source's own Eq. for the main bracket, the action
  \(\mathcal L_A\widetilde\pi_b=q_b{}^cA_c\), and direct unsmearing. The corrected projector is \(q_b{}^a\).

## Blocked

- The full distributional Jacobi identities for all Step-3 brackets were not independently evaluated. They require a concrete endpoint function space, zero-mode projection and Green kernel, none of which is fixed uniquely by the paper.
- No finite-region edge-mode extension is supplied, so brackets with nonvanishing corner flux cannot be checked from the source alone.

## Not independently verified

- The complete inhomogeneous shift transformation of the Carrollian connection and every intermediate component of the Step-3 Dirac contraction remain source-derived.
- The equivalence to the Reisenberger and Adami et al. solution-space formulations is a structural comparison, not a checked canonical isomorphism.
- The proposed quantum anomaly and dressed-observable applications are future targets, not results of this paper.

# Bottom line

This is a high-priority classical null-CPS result. Its strongest reusable output is the explicit spin-0/spin-1/spin-2 bracket structure and the recognition that the spin-2 sector requires a boundary-condition-dependent transport inverse. The paper should be cited with its local and boundary assumptions attached, and the one transposed-projector typo should be corrected whenever the spin-1 generator is reused.
