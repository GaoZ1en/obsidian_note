---
paper id: 2609.17086v1
title: Carrollian Conformal Dynamics and Flat-Space Holography
authors:
  - Simon Pekar
publication date: 2026-09-15T12:19:54Z
abstract: |-
  The conformal boundary of a four-dimensional asymptotically flat spacetime is treated as a conformal Carroll manifold. Because a torsion-free compatible Carroll connection contains independent transverse symmetric data, the variational principle includes connection responses (hypermomenta) in addition to frame responses (momenta). In a fixed BMS frame, the free connection component is identified with the Bondi shear, and a proposed momentum--hypermomentum dictionary turns the Carrollian Ward identities into the Bondi mass- and angular-momentum-aspect evolution equations.
comments: "15 pages; proceedings contribution to the Athens Workshop in Theoretical Physics: 10th Anniversary"
url: https://arxiv.org/abs/2609.17086v1
summary: "A boundary-intrinsic source/response organization of Bondi shear and flux, with one explicit connection-formula typo and a holographic dictionary that remains postulated rather than renormalization-derived."
tags: []
---

Daily overview: [[2026_09_17_overview]]

# Verdict

**Correct under the paper's BMS-frame gauge choices and its postulated holographic dictionary.** The central geometric point is sound: a degenerate conformal Carroll structure does not determine a unique torsion-free compatible connection, and the undetermined transverse symmetric connection component can encode Bondi shear. Once the displayed momentum--hypermomentum dictionary is assumed, the boost and trace Ward identities are consistent with the Bondi data, and the charge functional has the standard mass-, angular-momentum-, and shear-dependent form.

**Equation (26) is incorrect as written.** Its last term is printed as a bare \(+\delta_{bc}\), which has no upper \(a\) index and cannot be added to \(\omega^a{}_{bc}\). The index- and Weyl-compatible term is

$$
+\delta_{bc}\alpha^a,
$$

exactly as in the Lorentzian Weyl--Levi--Civita formula given earlier in Eq. (16). The official PDF and TeX source both contain the defective bare term.

The paper's phrase “boundary-intrinsic derivation” requires a precise limitation: the Ward identities are intrinsic, but the dictionary that identifies their responses with \(M\), \(N_a\), \(C_{ab}\), and \(N_{ab}\) is chosen so that the BMS equations are reproduced. It is not derived from a microscopic Carrollian action or from asymptotically flat holographic renormalization. The paper explicitly leaves that derivation for future work.

# How to read the paper

- **Conceptual entry point:** Sec. 3.1. The failure of a Carrollian Levi--Civita uniqueness theorem is the reason a connection response must be retained.
- **Formal mechanism:** Sec. 3.2. The momentum \(T^B{}_A\) responds to the frame, while the hypermomentum \(\Omega_A{}^{CB}\) responds to the independent connection.
- **Gravity application:** Secs. 4.1--4.4. Fix the BMS frame, identify \(\beta_{\langle ab\rangle}=-C_{ab}/2\), and insert the proposed dictionary.
- **Charge/flux output:** the BMS charge and Ashtekar--Streubel term at the end of Sec. 4.4.
- **Scope warning:** Sec. 5. It states that the dictionary still needs a holographic-renormalization derivation and that the charge/flux split is ambiguous.
- **Technical correction:** do not use Eq. (26) without restoring \(\delta_{bc}\alpha^a\).

# Complete source map

| Section | Purpose | Result used later |
|---|---|---|
| 1. Introduction | Contrasts Lorentzian boundary conservation with null-boundary evolution. | States the target Bondi equations and identifies news as flux. |
| 2. Lorentzian conformal dynamics | Gives the metric and frame metric-affine warmup. | Shows how connection responses modify a naive stress-tensor conservation law. |
| 2.1 Metric reformulation | Derives symmetry, conservation, and tracelessness from metric response. | Baseline to compare with Carrollian geometry. |
| 2.2 Frame-like metric-affine formulation | Introduces coframes, spin/Weyl connections, and special conformal gauge freedom. | Supplies the response variables and the correct Weyl connection formula. |
| 2.3 General evolution equations | Derives algebraic Lorentz/Weyl identities and curvature--hypermomentum evolution. | Template for the Carroll Ward identities. |
| 3. Carrollian conformal dynamics | Defines the degenerate conformal structure \((g,\upsilon)\). | Replaces Lorentzian metric geometry at null infinity. |
| 3.1 Carroll frames and compatible connections | Solves torsionless/Weyl compatibility and isolates free \(\beta_{\langle ab\rangle}\). | Identifies the independent radiative source. |
| 3.2 Variational principle | Couples a Carroll theory independently to frame and connection. | Produces boost, rotation, Weyl, and diffeomorphism Ward identities. |
| 4. Gravity application | Applies the general identities to four-dimensional asymptotically flat gravity. | Relates Carroll sources/responses to Bondi data. |
| 4.1 Conformal compactification | Pulls the unphysical connection to \(\mathscr I^+\). | Sets \(\beta_{ab}=-C_{ab}/2\). |
| 4.2 BMS frame fixing | Solves residual transformations preserving the chosen frame. | Recovers global Lorentz transformations and supertranslations. |
| 4.3 Shear as connection data | Computes the shear transformation and connection curvature. | Places news and curl of shear in intrinsic curvature components. |
| 4.4 Dictionary and evolution | Postulates \(T,\Omega\) in terms of Bondi data. | Reproduces the BMS equations, charges, and Ashtekar--Streubel flux term. |
| 5. Discussion | Lists relaxed Bondi gauge, flat holographic renormalization, and microscopic Carroll theory as open problems. | Marks what has not been derived. |

There are no appendices.

# Lorentzian metric-affine warmup

For a Lorentzian theory coupled only to a metric,

$$
\delta S
=\int_{\mathcal M}\mathrm d^{d+1}x\sqrt{-g}
\left(\mathcal E_\alpha\delta\phi^\alpha
+\frac12T^{\mu\nu}\delta g_{\mu\nu}\right).
$$

On the matter equations of motion, diffeomorphisms imply \(\nabla_\mu T^{\mu\nu}=0\), while Weyl invariance implies \(T^\mu{}_\mu=0\).

If a frame \(\theta^A\) and a connection \(\omega^A{}_B\) are allowed to vary independently, the on-shell response is instead

$$
\delta S\approx\frac{1}{16\pi G}
\int_{\mathcal M}\boldsymbol\mu
\left(
\delta\boldsymbol\theta^A[\boldsymbol T_A]
+\delta\boldsymbol\omega^A{}_B[\boldsymbol\Omega_A{}^B]
\right).
$$

Here \(T^B{}_A\) is the frame momentum and \(\Omega_A{}^{CB}\) the connection hypermomentum. Local Lorentz and Weyl symmetry give

$$
T_{[AB]}=\mathcal D[\Omega_{[AB]}],
\qquad
T^A{}_A=-\mathcal D[\Omega_A{}^A],
$$

while diffeomorphisms give

$$
\mathcal D[\boldsymbol T_A]
=\boldsymbol{\mathcal R}^B{}_C
[\boldsymbol e_A,\boldsymbol\Omega_B{}^C].
$$

Ordinary stress-tensor conservation is recovered only after the connection has been expressed in terms of the metric and the chain rule has absorbed the hypermomentum contribution into an improved stress tensor. This is the conceptual preparation for the null case.

# Carroll geometry: why the connection is independent

A conformal Carroll structure is

$$
\boldsymbol g(\boldsymbol\upsilon,\cdot)=0,
\qquad
(\boldsymbol g,\boldsymbol\upsilon)
\sim(\mathscr B^{-2}\boldsymbol g,\mathscr B\boldsymbol\upsilon).
$$

Choose a Carroll frame \(\{\boldsymbol\upsilon,\boldsymbol e_a\}\) with dual coframe \(\{\boldsymbol\tau,\boldsymbol\theta^a\}\) and

$$
\boldsymbol g=\delta_{ab}\boldsymbol\theta^a\otimes\boldsymbol\theta^b,
\qquad
\boldsymbol\tau[\boldsymbol\upsilon]=1.
$$

The coframe non-holonomy decomposes into acceleration \(\varphi_a\), twist \(\varpi_{ab}\), expansion \(\theta\), and geometric shear \(\xi_{ab}\). A torsion-free Weyl-compatible Carroll connection exists only if

$$
\xi_{ab}=0,
\qquad
\alpha_0=\frac{1}{d}\theta.
$$

Even then,

$$
\beta_{(ab)}
:=\boldsymbol\omega^0{}_{(a}[\boldsymbol e_{b)}]
$$

is undetermined. Compatible connections therefore form an affine space modeled on transverse symmetric rank-two tensors. Spatial and temporal special conformal transformations can gauge away \(\alpha_a\) and the trace \(\beta^a{}_a\), but the symmetric traceless piece \(\beta_{\langle ab\rangle}\) remains genuine data.

With the source correction noted above, the transverse connection is

$$
\omega^a{}_{bc}
=\frac12\left(c^a{}_{bc}+c_b{}^a{}_c+c_c{}^a{}_b\right)
-\delta^a{}_b\alpha_c
-\delta^a{}_c\alpha_b
+\delta_{bc}\alpha^a.
$$

# Carrollian source/response Ward identities

For an effective Carrollian action, frame and connection remain independent sources:

$$
\delta S\approx\frac{1}{16\pi G}
\int_{\mathcal C}\boldsymbol\mu
\left(
\delta\boldsymbol\theta^A[\boldsymbol T_A]
+\delta\boldsymbol\omega^A{}_B[\boldsymbol\Omega_A{}^B]
\right).
$$

The independent connection response changes the meaning of “conservation.” Local boosts imply

$$
T^a{}_0\approx-\mathcal D[\Omega_0{}^a],
$$

so the energy flux need not vanish. Rotations and Weyl symmetry imply

$$
T_{[ab]}\approx\mathcal D[\Omega_{[ab]}],
\qquad
T^A{}_A\approx-\mathcal D[\Omega_A{}^A].
$$

Diffeomorphisms give the evolution system

$$
\mathcal D[\boldsymbol T_0]
\approx\boldsymbol{\mathcal R}^A{}_B
[\boldsymbol\upsilon,\boldsymbol\Omega_A{}^B],
$$

$$
\mathcal D[\boldsymbol T_a]
\approx\boldsymbol{\mathcal R}^B{}_C
[\boldsymbol e_a,\boldsymbol\Omega_B{}^C].
$$

The curvature--hypermomentum terms are the boundary encoding of flux carried by the independent radiative connection.

# Null infinity and the BMS frame

In Bondi gauge,

$$
g_{AB}=r^2\gamma_{AB}+rC_{AB}+O(1),
\qquad
\gamma^{AB}C_{AB}=0,
\qquad
N_{AB}=\partial_u C_{AB}.
$$

Penrose compactification makes \(\mathscr I^+\) a \(d=2\) conformal Carroll manifold. Leading Einstein equations set the geometric Carroll shear \(\xi_{ab}\) to zero, permitting a compatible connection. The pullback of the unphysical Levi--Civita connection fixes its remaining transverse traceless component as

$$
\beta_{ab}=-\frac12 C_{ab}.
$$

The paper then fixes

$$
\boldsymbol\tau=\mathrm du,
\qquad
\varphi_a=\varpi_{ab}=0,
\qquad
\mathcal L_{\boldsymbol\upsilon}\boldsymbol\theta^a=0,
\qquad
\alpha_a=0=\beta^a{}_a.
$$

A residual diffeomorphism is \(\boldsymbol\xi=f\boldsymbol\upsilon+Y^a\boldsymbol e_a\), supplemented by compensating boosts, rotations, and Weyl transformations. Preserving the frame gives

$$
\boldsymbol\upsilon[Y^a]=0,
\qquad
\boldsymbol\upsilon[f]=\frac12\nabla_aY^a,
\qquad
\nabla_{\langle a}Y_{b\rangle}=0.
$$

Thus

$$
f=T+\frac u2\nabla_aY^a,
$$

where \(Y^a\) is a conformal Killing vector of the celestial two-sphere and \(T(x^A)\) a supertranslation. These generate the standard \(\mathfrak{bms}_4\) algebra.

# Shear, curvature, and the proposed holographic dictionary

In the BMS frame the independent connection component is

$$
\boldsymbol\omega^0{}_a
=-\frac12C_{ab}\boldsymbol\theta^b.
$$

The inhomogeneous transformation

$$
\delta_\xi C_{ab}
=f\boldsymbol\upsilon[C_{ab}]
+(\mathcal L_YC)_{ab}
-\boldsymbol\upsilon[f]C_{ab}
-2\nabla_{\langle a}\nabla_{b\rangle}f
$$

shows that \(C_{ab}\) behaves as connection data, not as an ordinary tensor. The relevant curvature components become

$$
\mathcal R^a{}_{bcd}=\delta^a{}_{[c}\delta_{d]b}R,
\qquad
\mathcal R^0{}_{a0b}=-\frac12N_{ab},
\qquad
\mathcal R^0{}_{abc}=-\nabla_{[b}C_{c]a}.
$$

The proposed hypermomentum dictionary is

$$
\Omega_a{}^c{}_b=\nabla_{[a}C_{b]}{}^c,
\qquad
\Omega_0{}^{ab}=N^{ab}+\frac12R\delta^{ab}.
$$

The momentum dictionary is

$$
T^0{}_0=4M,
$$

$$
T^0{}_a
=2N_a+\frac1{16}\nabla_a(C^{bc}C_{bc}),
$$

$$
T^a{}_0
=-\nabla_bN^{ab}-\frac12\nabla^aR,
$$

$$
T_{ab}
=\nabla^c\nabla_{[a}C_{b]c}
-\frac12N_{[a}{}^cC_{b]c}
-\frac14RC_{ab}
-2M\delta_{ab}.
$$

The boost identity immediately reproduces the displayed energy flux, since

$$
-\nabla_b\Omega_0{}^{ab}
=-\nabla_bN^{ab}-\frac12\nabla^aR.
$$

The two-dimensional trace also works: the antisymmetric terms have zero trace, \(C^a{}_a=0\), and \(\delta^{ab}(-2M\delta_{ab})=-4M\), canceling \(T^0{}_0=4M\).

Substituting the complete dictionary into the Carrollian diffeomorphism identities is asserted to reproduce

$$
\partial_uM
=\frac14D_AD_BN^{AB}
-\frac18N_{AB}N^{AB}
+\frac18D^2R,
$$

and the standard angular-momentum-aspect equation. This reconstruction was followed in the source but not independently reproduced here because the proceedings paper suppresses the component expansion of \(\mathcal D[\boldsymbol T_A]\) and of the curvature--hypermomentum contractions.

# Charges and radiative presymplectic term

For a BMS parameter \((f,Y^a)\), the cut charge is

$$
\mathcal Q_{(f,Y)}
=\frac{1}{16\pi G}
\int_\Sigma\boldsymbol\mu_\Sigma
\left[
4fM+2Y^aN_a
+\frac1{16}Y^a\nabla_a(C_{bc}C^{bc})
\right].
$$

The on-shell variation includes the Ashtekar--Streubel term

$$
\vartheta_{\mathrm{AS}}
=\frac{1}{32\pi G}
\int_{\mathscr I^+}\boldsymbol\mu\,
\delta C_{ab}N^{ab}.
$$

This is the direct source/response pair relevant to radiative phase space: the connection datum \(C_{ab}\) is paired with its retarded-time derivative \(N_{ab}\). Charge non-conservation is therefore not a breaking of BMS covariance; it is the response to flux through an independently varying connection source.

# Generalized BMS extension

The paper also considers a traceless transverse frame deformation

$$
\delta_S\boldsymbol\theta^a
=-S^a{}_b\boldsymbol\theta^b,
\qquad
S^{ab}=S^{\langle ab\rangle},
$$

which preserves the cut volume form. Treating this as a variational symmetry fixes

$$
T_{\langle ab\rangle}=-\frac14RC_{ab}.
$$

If \(S_{\langle ab\rangle}=\nabla_{\langle a}Y_{b\rangle}\) accompanies the residual diffeomorphism, \(Y^a\) need not remain conformal Killing: the algebra extends to all sphere diffeomorphisms, corresponding to Campiglia--Laddha generalized BMS boundary conditions. The paper interprets this holographically as a Neumann-type condition on the transverse metric, but does not construct the required renormalized action.

# Translation into the vault's formalism

The useful conceptual entry point is not “Carroll symmetry” by itself. It is the source/response fact forced by degeneracy:

$$
\text{degenerate boundary metric}
\Longrightarrow
\text{connection not fixed by metric}
\Longrightarrow
\delta\omega\text{ must remain in }\delta S
\Longrightarrow
\Omega\text{ carries radiative response}.
$$

For action-first regional sewing, this warns against reducing the null boundary data to a metric/frame source alone. The independent connection history \(\beta_{\langle ab\rangle}\), identified here with \(-C_{ab}/2\), must be released together with its hypermomentum response before quotienting. Otherwise the news/flux term is erased by construction.

The paper also clarifies the charge--flux ambiguity. Parts of the compatible connection are frame-determined, so integrations by parts and response improvements can shift contributions between \(T\) and \(\Omega\). In the vault's language, a proposed regional charge is not invariant data until the action representative, boundary source space, and corner improvement are fixed.

This note is relevant to the AdS-to-Minkowski comparison, but it does not itself derive the flat limit of an AdS renormalized stress tensor. The author proposes covariant Bondi gauge as the appropriate bridge and leaves the limit open.

# Verification log

## Checked

- The official rendered PDF visually confirms that Eq. (26) ends with a bare \(+\delta_{bc}\). This is not a text-extraction artifact.
- Index typing proves Eq. (26) false as printed: \(\delta_{bc}\) lacks the upper \(a\) index of \(\omega^a{}_{bc}\). Restoring \(+\delta_{bc}\alpha^a\) matches the paper's Lorentzian Eq. (16) and the standard Weyl-compatible connection pattern.
- xAct, with a two-dimensional metric-compatible derivative, reduced
  \(-\nabla_bN^{ab}-\frac12\nabla^aR+\nabla_b(N^{ab}+\frac12Rg^{ab})\)
  exactly to zero. This checks the boost Ward identity against the hypermomentum dictionary.
- Mathematica checked the \(d=2\) trace cancellation \(T^0{}_0+T^a{}_a=0\) for general symmetric traceless \(C_{ab}\) and \(N_{ab}\), including the antisymmetric stress contributions.
- Mathematica checked that the symmetric-traceless Hessian in the shear transformation has zero trace and that the residual equation \(\partial_uf=\frac12\nabla_aY^a\) integrates to \(f=T+\frac u2\nabla_aY^a\) when \(Y\) is \(u\)-independent.

## Source-derived

- The compatible Carroll connection, curvature components, shear transformation, full momentum--hypermomentum dictionary, BMS charge, and Ashtekar--Streubel term were reconstructed from the source.
- The claim that the complete Carrollian evolution system reproduces both Bondi aspect equations was inspected at equation level but not independently derived component by component.

## Blocked

- A complete xAct reproduction of the mass- and angular-momentum-aspect equations is blocked by the proceedings paper's compressed notation: it does not display the component definition of \(\mathcal D[\boldsymbol T_A]\), the precise contraction denoted by \(\mathcal R[\boldsymbol e,\Omega]\), or all Weyl-weight connection terms after BMS frame fixing.
- A derivation of the dictionary from an action is absent. No microscopic Carrollian action or asymptotically flat holographic counterterm prescription is supplied.

## Not independently verified

- The equality of the charge expression with every standard covariant BMS-charge representative, the generalized-BMS Neumann interpretation, and the proposed AdS flat-limit route were not independently established.
- No central extension, integrability theorem, or complete covariant phase-space charge algebra is derived in this proceedings article.

# Reusable conclusions

1. Bondi shear can be treated as an independent compatible-connection component rather than appended as an extra boundary tensor.
2. Its response is a hypermomentum, and curvature--hypermomentum terms naturally turn conservation laws into evolution/flux equations.
3. The displayed BMS dictionary is a consistent matching ansatz, not yet a derivation from the boundary action.
4. Eq. (26) must be corrected before reuse.
5. For null sewing, release connection history and response before reduction; metric data alone are not a complete port.
