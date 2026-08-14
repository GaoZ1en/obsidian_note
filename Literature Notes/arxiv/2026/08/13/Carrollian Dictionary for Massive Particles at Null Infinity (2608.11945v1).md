---
paper id: 2608.11945v1
title: Carrollian Dictionary for Massive Particles at Null Infinity
authors:
  - Yu-fan Zheng
publication date: 2026-08-12
abstract: |-
  The paper embeds massive one-particle states into the complete Carrollian representation at null infinity by recording momentum projections onto the null frame at every celestial point. It gives an adjoint reconstruction map, transports Kallen--Lehmann spectral data to a Carrollian two-point function, and interprets massive hard actions in soft photon and graviton theorems as nonlocal angular transforms.
comments: "25 pages"
url: https://arxiv.org/abs/2608.11945v1
summary: "A concrete state-level massive/null-infinity dictionary with correct null-frame kinematics and useful soft-action kernels; normalization and full intertwining are asserted rather than derived in the letter, and the massless limit remains open."
tags: []
---

# Why this is medium priority

Reason codes: `T2-celestial-carrollian`, `T1-symmetry`.

This fills a precise gap in the recent Carrollian notes: a massive trajectory ends at timelike infinity, so a massive state cannot be assigned to one point of $\mathscr I^\pm$ by the ordinary radiative dictionary. The paper instead uses every celestial point as a choice of null frame and stores the same timelike momentum through its frame projections.

The construction is valuable as a representation-theoretic dictionary, not as a statement that the massive worldline reaches null infinity and not as a bulk-to-boundary propagator.

# Source map

- Section 2: scalar and spinning dictionary, reconstruction, isometry, and overcompleteness.
- Section 3: Källén--Lehmann density in the non-contact Carrollian two-point function.
- Section 4: leading soft photon, leading soft graviton, and subleading soft graviton actions.
- Appendix A: four-dimensional null frame and global Poincaré/Carrollian generator dictionary.
- Appendix B: finite-spin unitary matrix factors.
- Appendix C: three-dimensional analogue.

# 1. Complete Carrollian orbit and null frame

The boundary state is labelled by

$$
X=(u,z^a;\Delta,l,\beta^a,\kappa),
\qquad a=1,2.
$$

The usual radiative representation sits at $\beta^a=\kappa=0$ and has zero quadratic Poincaré Casimir. Massive states instead use the $\kappa>0$ orbit for outgoing momenta and the $\kappa<0$ orbit for incoming momenta.

With signature $(-,+,+,+)$, the celestial null frame is

$$
\begin{aligned}
q_0^\mu(z)&=(1+\vec z^{,2},2z^1,2z^2,1-\vec z^{,2}),\\
q_1^\mu(z)&=(z^1,1,0,-z^1),\\
q_2^\mu(z)&=(z^2,0,1,-z^2),\\
q_3^\mu(z)&=\frac12(1,0,0,-1).
\end{aligned}
$$

It obeys

$$
q_0^2=q_3^2=0,
\quad q_0\cdot q_3=-1,
\quad q_a\cdot q_b=\delta_{ab},
\quad q_0\cdot q_a=q_3\cdot q_a=0.
$$

The kernel support identifies

$$
\beta^a=-p\cdot q_a(z),
\qquad
\kappa=-p\cdot q_0(z).
$$

For $p^2=-m^2$, completeness of the frame gives the reconstruction

$$
p^\mu=
\frac{m^2+\vec\beta^{,2}}{2\kappa}q_0^\mu(z)
-\beta^a q_a^\mu(z)
+\kappa q_3^\mu(z).
$$

The Fourier conjugate of $u$ is

$$
\rho=-2p\cdot q_3
=\frac{m^2+\vec\beta^{,2}}{\kappa},
$$

and $m^2=\kappa\rho-\vec\beta^{,2}$ is the nonzero quadratic Casimir.

# 2. Dictionary and reconstruction

For a scalar, the outgoing overlap kernel is

$$
G(p;X)=2m\,e^{2iu p\cdot q_3(z)}
|\kappa|^{1-\Delta}
\delta^{(2)}(\beta^a+p\cdot q_a(z))
\delta(\kappa+p\cdot q_0(z)).
$$

The reconstruction kernel is

$$
K(X;p)=2m\,e^{-2iu p\cdot q_3(z)}
|\kappa|^{\Delta-3}
\delta^{(2)}(\beta^a+p\cdot q_a(z))
\delta(\kappa+p\cdot q_0(z)).
$$

On the unitary line $\Delta=2+i\nu$, these satisfy $K=G^*$. The paper identifies them as state overlaps,

$$
G(p;X)=\langle p|O_X\rangle,
\qquad
K(X;p)=\langle O_X|p\rangle,
$$

rather than propagators. With the stated normalization,

$$
\widehat G^\dagger\widehat G=I_{\mathcal H^{(+)}_j},
\qquad
\widehat G\widehat G^\dagger=\Pi_{S_O^{>0}}\neq I_{S_O^{>0}}.
$$

Thus the map is an isometric embedding into an overcomplete boundary state space. The pullbacks of the Carrollian states form a continuous Parseval frame; the reverse composition projects out boundary combinations that do not encode a physical massive state.

For spin $j$, the delta-function support is unchanged and a unitary matrix $R^{(j)}$ carries the little-group data. Appendix B gives $j=1/2$, $j=1$, and a polynomial $SU(2)$ formula for arbitrary half-integer spin.

# 3. Spectral data

Starting from

$$
\langle\Phi(p_1)\Phi(p_2)\rangle
=(2\pi)^2\delta^{(4)}(p_1+p_2)
\int_0^\infty d\mu^2\,
\rho_{\rm KL}(\mu^2)\theta(p_1^0)
\delta(p_1^2+\mu^2),
$$

the two dictionary kernels produce a distributional Carrollian two-point function. Its support fixes

$$
\mu^2=-\frac{\kappa_2\vec\beta_1^{,2}
+\kappa_1\vec\beta_2^{,2}}
{\kappa_1+\kappa_2}.
$$

For $\mu^2>0$ and $\kappa_1>0$, the second state lies on the incoming $\kappa_2<0$ orbit. Matching the result to the globally invariant non-contact two-point function fixes its otherwise arbitrary coefficient to

$$
f(\mu^2,L)=\frac{\mu^2}{2\pi^2}\rho_{\rm KL}(\mu^2).
$$

The conclusion is conditional: Carrollian symmetry alone permits an $L$ dependence, while boundary data that actually arise from the assumed scalar bulk spectral representation do not acquire an independent $L$ dependence.

# 4. Massive hard actions from soft theorems

For a massive hard leg, the soft factor has no angular pole that localizes the smearing function at one celestial direction. The hard action remains a Poisson-type transform over the whole stereographic plane.

## Large gauge transformations

For a local parameter $\alpha(w)$,

$$
\mathcal I_A^\gamma[\alpha]
=\eta_A\frac{e_A m_A^2}{\pi}
\int d^2w\,
\frac{\alpha(w)}{[-p_A\cdot q_0(w)]^2}.
$$

The derivation assumes the boundary term at stereographic infinity vanishes. The constant mode has a vanishing soft smearing kernel and its individual hard action is fixed separately by global $U(1)$ symmetry; the resulting Ward identity is charge conservation.

## Supertranslations

For a local supertranslation $f(w)$,

$$
\mathcal I_A^g[f]
=\eta_A\frac{2m_A^4}{\pi}
\int d^2w\,
\frac{f(w)}{[-p_A\cdot q_0(w)]^3}.
$$

The four global modes $f\in\operatorname{span}\{1,w^a,-\vec w^{,2}\}$ are fixed by the ordinary translation representation. For these modes the total Ward identity reduces to momentum conservation.

## Superrotations

At subleading soft-graviton order, a local vector field $Y^a(w)$ gives an angular integral involving the orbital Lorentz generator. The six global conformal vector fields have vanishing soft smearing kernel, while their hard action is the complete Carrollian differential representation of bulk Lorentz transformations. The paper proposes the same projection picture for local superrotations but leaves their action in the integral form rather than reducing it to a closed local operator.

# Independent verification

## Checked

- **Mathematica:** reproduced all null-frame inner products and orthogonality relations.
- **Mathematica:** substituting the reconstructed $p^\mu$ gives
  $$
  p^2=-m^2,
  \quad -p\cdot q_a=\beta_a,
  \quad -p\cdot q_0=\kappa,
  \quad -2p\cdot q_3=(m^2+\vec\beta^{,2})/\kappa.
  $$
- **Mathematica:** in the rest frame, the normalized constant-mode kernels give
  $$
  \frac{m^2}{\pi}\int_{\mathbb R^2}
  \frac{d^2w}{[m(1+|w|^2)]^2}=1,
  $$
  and
  $$
  \frac{2m^4}{\pi}\int_{\mathbb R^2}
  \frac{d^2w}{[m(1+|w|^2)]^3}=m.
  $$
  These reproduce the constant $U(1)$ action and rest-energy translation normalization when the local kernels are continuously extended to the global modes.
- **Visual confirmation:** rendered PDF pages 4, 6, 7, 9, 11, and 16 and checked the kernel, projection, spectral coefficient, soft hard-action, global Lorentz, and spin-unitarity statements against the TeX source.

## Assumptions

- The bulk state normalization is $\langle p'|p\rangle=(2\pi)^2\delta^{(4)}(p-p')$ on the direct integral over the positive timelike cone.
- The boundary pairing includes $du\,d^2z\,d^2\beta\,d\kappa$, which shifts the four-dimensional unitary line to $\Delta=2+i\nu$.
- Soft hard-action formulas are for scalar massive legs; spin terms are absent in the displayed global superrotation action.
- Local large-gauge and supertranslation formulas require sufficient behavior at stereographic infinity for the integrations by parts.

## Not independently verified

- The paper states, but does not display and solve in detail, the full Poincaré intertwining equations that uniquely fix the kernel.
- The distributional Jacobian establishing the exact $2m$ normalization and $\widehat G^\dagger\widehat G=I$ was not independently reconstructed.
- The arbitrary-spin polynomial identity $R^{(j)}R^{(j)\dagger}=I$ was not checked beyond the source's stated calculation.
- The transform of the full Källén--Lehmann distribution, including every Jacobian in equation (3.2), was not independently recomputed.
- The $m\to0$ relation to the localized radiative dictionary is explicitly left open by the paper.
- This is a one-particle representation map. It does not prove a boundary operator algebra, interacting holographic duality, asymptotic completeness, or Fock-space unitary equivalence.

# Claim tier and takeaway

**Achieved claim tier:** exact one-particle kinematic dictionary at the level of null-frame projections, with source-stated isometry and spectral/soft applications. The current audit verifies the frame geometry and global kernel normalizations, not the full distributional isometry or an interacting boundary theory.

The clean conceptual correction is:

> A massive state at $\mathscr I$ is not localized where its worldline ends. It is redundantly encoded by its projections onto the null frame associated with every celestial direction.

For the active Carrollian program, the next useful check would be to derive the distributional normalization in equation (2.13) explicitly and then test whether the projected boundary subspace is stable under the proposed local symmetry actions.
