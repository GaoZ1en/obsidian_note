---
paper id: 2605.22434v2
title: "Entropic route to Brown-York tensor: A unified framework for null and timelike hypersurfaces"
authors:
  - Krishnakanta Bhattacharya
  - Bhera Ram
  - Bibhas Ranjan Majhi
publication date: 2026-09-04T06:55
abstract: |-
  Starting from Padmanabhan's entropy functional for a hypersurface normal, the paper interprets the Brown-York tensor as a tangential projection of the entropy-functional polymomentum. The same construction yields the standard timelike and null expressions in general relativity and their Jordan-frame scalar-tensor extensions, where the boundary balance law includes momentum exchange with the scalar sector.
comments: "33-page v2; minor corrections and new comments; to appear in Physical Review D"
url: https://arxiv.org/abs/2605.22434v2
summary: "A single normal-field polymomentum reproduces bare timelike and null Brown-York tensors, with an explicit scalar-sector balance term."
tags: []
---

Daily overview: [[2026_09_07_overview]].

# Verdict

**Correct under the following precise conditions:** use the paper's mostly-plus signature, extrinsic-curvature signs, dual null projectors, and the canonical Padmanabhan entropy-functional representative; interpret the displayed polymomentum as the derivative of the **normalized** density $(16\pi)^{-1}s$; and retain the auxiliary-null-vector and boundary-prescription choices in the null construction.

The projected GR and scalar-tensor Brown-York formulas are algebraically correct with those conventions. The paper gives a useful action-like boundary-momentum unification, but it is not an Iyer-Wald covariant-phase-space derivation, does not fix counterterm/reference subtraction, and does not construct charges or their algebra.

There is a localized normalization error: Eqs. (58), (82), and (87) write $t=\partial s/\partial(\nabla n)$ although the displayed right-hand sides include the overall $1/(16\pi)$ from the functional. The corrected definition is

$$
t^i{}_j=\frac{1}{16\pi}
\frac{\partial s}{\partial(\nabla_i n^j)}.
$$

# How to read this long paper

- **Essential:** Sections 4.1 and 4.2 derive the timelike and null GR polymomenta and their Brown-York projections. Sections 5.1 and 5.2 give the Jordan-frame scalar-tensor counterparts.
- **Technical reference:** Section 3 fixes the conventional metric-variation results being reproduced. Appendix A derives the scalar-tensor boundary balance laws; Appendix B relates the divergence of the unprojected polymomentum to the divergence of the projected Brown-York tensor.
- **Conceptual framing:** Section 2 uses Maxwell theory to explain why the normal-direction index and field index of a polymomentum need not be symmetric. Section 6 states the total-derivative ambiguity and the choice of Padmanabhan representative.
- **Optional for the boundary-momentum result:** Section 5.3 reconstructs the Einstein- and Jordan-frame bulk equations. It is useful for consistency but is logically downstream of the boundary projection formulas.

# Complete section tree

1. **Introduction:** Brown-York tensors as quasi-local boundary momenta; null degeneracy and scalar-tensor motivation.
2. **Obtaining insights from vector field theory:** on-shell boundary variation and the two distinct roles of the indices of $P^{(i)j}=-F^{ij}$.
3. **Brown-York tensor: subtleties in null boundaries and modified theories**
   - General relativity: Hamilton-Jacobi timelike tensor; null data $(q_{ab},l^a)$ and their conjugate momenta.
   - Scalar-tensor gravity: Jordan-frame timelike/null tensors and scalar response.
4. **Entropy density to Brown-York tensor**
   - GR timelike surface.
   - GR null surface.
5. **Scalar-tensor theory**
   - Jordan-frame timelike surface.
   - Jordan-frame null surface.
   - Bulk gravitational equations in the Einstein and Jordan frames.
6. **Discussion and conclusions:** representative dependence, conservation versus normal flux, and scope.
7. **Appendix A:** timelike and null scalar-tensor boundary divergences.
8. **Appendix B:** timelike and null relations between projected Brown-York divergence and full polymomentum divergence.

# Conventions and notation dictionary

- Spacetime signature: $(-,+,+,+)$; $\nabla_a$ is the spacetime Levi-Civita derivative.
- Timelike hypersurface: outward spacelike unit normal $s^a$, $s^2=1$,
  $$
  \gamma_{ab}=g_{ab}-s_as_b,
  \qquad
  K_{ab}=-\gamma_a{}^c\gamma_b{}^d\nabla_c s_d.
  $$
- Null hypersurface $\mathcal H$: generator $l^a$, auxiliary null $k^a$, and $l\cdot k=-1$.
- Tangent and cross-section projectors:
  $$
  \Pi^a{}_b=\delta^a{}_b+k^al_b,
  \qquad
  q^a{}_b=\delta^a{}_b+l^ak_b+k^al_b.
  $$
  For covectors, the dual pullback is $\Pi_a{}^b=\delta_a{}^b+l_a k^b$; it must not be obtained by naively transposing the mixed vector projector.
- Null kinematics:
  $$
  \theta_{ab}=q_a{}^cq_b{}^d\nabla_c l_d,
  \quad
  \theta=q^{ab}\theta_{ab},
  \quad
  l^b\nabla_b l^a=\kappa l^a,
  $$
  $$
  \omega_a=-\Pi_a{}^b k^c\nabla_b l_c,
  \qquad
  W^a{}_b=\theta^a{}_b+l^a\omega_b,
  \qquad
  W=\theta+\kappa.
  $$
- GR entropy tensor:
  $$
  P_{ab}^{\ \ cd}=\frac12
  \left(\delta_a^c\delta_b^d-\delta_b^c\delta_a^d\right).
  $$
- In scalar-tensor gravity, $\phi$ is the Jordan-frame scalar and $\omega(\phi)$ the Brans-Dicke coupling.

# Conventional Brown-York data

For a timelike boundary, the Einstein-Hilbert plus GHY action gives

$$
T_{ab}^{\mathrm{BY}}
=\frac{1}{8\pi}(K_{ab}-K\gamma_{ab}),
$$

with the flux balance

$$
D_aT_{\mathrm{BY}}^{ab}
=-T_{\mathrm{mat}}^{ac}s_a\gamma_c{}^b.
$$

For a null boundary, the metric variation separates the momenta conjugate to $q^{ab}$ and $l^a$:

$$
\mathcal P^{(q)}_{ab}
=\frac{1}{16\pi}
\left[\theta_{ab}-(\theta+\kappa)q_{ab}\right],
$$

$$
\mathcal P^{(l)}_a
=\frac{1}{8\pi}
\left[(\theta+\kappa)k_a+\omega_a\right].
$$

Their standard combination is

$$
T^a{}_{b\,\mathrm{null}}
=2q^{ai}\mathcal P^{(q)}_{ib}+l^a\mathcal P^{(l)}_b
=\frac{1}{8\pi}
\left(W^a{}_b-\Pi^a{}_bW\right).
$$

This expression depends on the null normalization and auxiliary structure in the usual way. The paper does not supply a new normalization-invariant null charge.

# GR entropy functional and its boundary momentum

For either a unit spacelike normal $s^a$ or a null normal $l^a$, the canonical representative has the schematic form

$$
S[n]=\frac{1}{16\pi}\int_{\mathcal V}d^4x\sqrt{-g}\,
\left[-4P_{ab}^{\ \ cd}\nabla_cn^a\nabla_dn^b
+\mathcal T_{ab}n^an^b\right].
$$

The normalization constraint $n^2=1$ or $n^2=0$ is imposed with a Lagrange multiplier. Integrating the variation by parts produces a bulk Euler term plus

$$
\int_{\partial\mathcal V}d\Sigma_i\,t^i{}_j\,\delta n^j,
$$

where

$$
t^i{}_j
=-\frac{1}{2\pi}P_{jn}^{\ \ im}\nabla_m n^n
=\frac{1}{4\pi}
\left(\nabla_jn^i-\delta^i{}_j\nabla_an^a\right).
$$

The unprojected tensor has more information than the Brown-York tensor: its first index records the hypersurface direction while its second labels the varied normal field.

## Timelike projection

Using

$$
\nabla_i s_j=-K_{ij}+s_i a_j,
\qquad
a^i=s^a\nabla_a s^i,
$$

the normal terms drop from the double tangential projection:

$$
T^a{}_{b\,\mathrm{BY}}
=-\frac12\gamma^a{}_i\gamma^j{}_b t^i{}_j
=\frac{1}{8\pi}
\left(K^a{}_b-\gamma^a{}_bK\right).
$$

## Null projection

The decomposition

$$
\nabla_jl^i
=\theta^i{}_j+l^i\omega_j-l_jk^m\nabla_m l^i
$$

gives

$$
T^a{}_{b\,\mathrm{null}}
=\frac12\Pi^a{}_i\Pi^j{}_b t^i{}_j
=\frac{1}{8\pi}
\left[\theta^a{}_b+l^a\omega_b
-\Pi^a{}_b(\theta+\kappa)\right].
$$

The difference in the signs of the timelike and null projection factors follows from the paper's definitions $K_{ab}=-\gamma\gamma\nabla s$ and $\theta_{ab}=qq\nabla l$.

# Divergence and projected balance in GR

For either normal,

$$
\nabla_i t^i{}_j
=\frac{1}{4\pi}R_{ij}n^i.
$$

For a timelike boundary,

$$
D_aT^a{}_{b\,\mathrm{BY}}
=-\frac12\gamma^j{}_b\nabla_i t^i{}_j.
$$

Thus a cosmological-constant contribution may leave the full divergence purely normal while the tangential Brown-York divergence still vanishes. Full covariant conservation of $t^i{}_j$ and intrinsic conservation of its Brown-York projection are distinct statements.

The null projections of $\nabla_i t^i{}_{j\,\mathrm{null}}$ recover, according to the cited identities, the Raychaudhuri, Damour-Navier-Stokes, and null thermodynamic relations. The paper emphasizes that the Brown-York projection discards some of this information.

# Scalar-tensor extension

The Jordan-frame entropy density is obtained by conformally transforming the Einstein-frame representative. For a normal $n^a$ it adds

$$
-4(\nabla_an^a)(n^b\nabla_b\phi)
-\frac{3}{\phi}n^an^b\nabla_a\phi\nabla_b\phi
-2(n_a\nabla^b\phi)(\nabla_b n^a)
$$

to the GR-like term with $P_{ab}^{\ \ cd}\mapsto\phi P_{ab}^{\ \ cd}$.

The timelike polymomentum is

$$
t^i{}_{j\,J}
=\frac{1}{16\pi}\left[
4\phi(\nabla_js^i-\delta^i{}_j\nabla_as^a)
-4\delta^i{}_j s^b\nabla_b\phi
-2s_j\nabla^i\phi
\right],
$$

and its projection gives

$$
T^a{}_{b\,\mathrm{BY}}(\gamma,\phi)
=\frac{1}{8\pi}\left[
\phi(K^a{}_b-\gamma^a{}_bK)
+\gamma^a{}_b s^i\nabla_i\phi
\right].
$$

For a null normal,

$$
t^{i\,\mathrm{null}}{}_{j\,J}
=\frac{1}{16\pi}\left[
4\phi(\nabla_jl^i-\delta^i{}_j\nabla_al^a)
-4\delta^i{}_j l^b\nabla_b\phi
-2l_j\nabla^i\phi
\right],
$$

so

$$
T^{a\,\mathrm{null}}{}_b(\Pi,\phi)
=\frac{1}{8\pi}\left[
\phi\left(\theta^a{}_b+l^a\omega_b-\Pi^a{}_b(\theta+\kappa)\right)
-\Pi^a{}_b l^i\nabla_i\phi
\right].
$$

The scalar-tensor balance law is

$$
D_aT_{\mathrm{BY}}^{ab}(\gamma,\phi)
=-T_{\mathrm{mat}}^{ac}s_a\gamma_c{}^b
+\gamma^{ab}\Pi^{(\phi)}D_a\phi,
$$

$$
\Pi^{(\phi)}
=-\frac{1}{8\pi}
\left(K+\frac{\omega}{\phi}s^c\nabla_c\phi\right),
$$

with a corresponding null formula. The Brown-York sector is therefore not separately conserved when momentum is exchanged with the scalar; the combined gravitational-plus-scalar balance is the relevant closed statement.

# Bulk equation map

The normal variation gives a curvature equation after commuting derivatives. In GR, demanding the result for the allowed normals and using the Bianchi identity identifies the rank-two source up to the cosmological term and yields Einstein's equation.

In the Einstein frame of scalar-tensor gravity, the paper identifies the undetermined symmetric source with matter plus the minimally coupled scalar stress tensor. Conformal transformation back to the Jordan frame gives

$$
\phi G_{ab}
=8\pi T_{ab}^{\mathrm{mat}}
+\frac{\omega}{\phi}
\left(\nabla_a\phi\nabla_b\phi
-\frac12g_{ab}(\nabla\phi)^2\right)
+\nabla_a\nabla_b\phi-g_{ab}\Box\phi
-\frac12V(\phi)g_{ab}.
$$

This reconstruction uses the paper's conformal-frame and source-identification assumptions; the entropy functional by itself does not independently determine an arbitrary matter model.

# Equation ledger and derivation map

1. Normal-field entropy functional plus normalization multiplier.
2. Integration by parts defines the full polymomentum $t^i{}_j$ and the bulk normal equation.
3. Timelike/null kinematic decomposition separates tangential from normal pieces.
4. Double projection removes the acceleration/auxiliary-normal pieces and reproduces the conventional bare Brown-York tensor.
5. Divergence of $t^i{}_j$ reduces to a Ricci contraction by the covariant-derivative commutator.
6. Einstein or scalar-tensor equations convert this contraction into matter flux and, for scalar-tensor gravity, a scalar response.
7. The Bianchi identity constrains the Lagrange-multiplier contribution and completes the bulk equation identification.

# Local translation to the vault

The reusable object is not merely the final Brown-York tensor but the unprojected polymomentum $t^i{}_j$. Projection loses normal-direction information, exactly as a regional boundary reduction can lose flux or corner data. This supports an action-first audit order:

1. fix the functional representative and boundary conditions;
2. vary before imposing gauge or projection;
3. identify the complete boundary momentum;
4. only then project to observer-dependent or intrinsic boundary data.

The paper itself makes the crucial limitation explicit: adding a total divergence changes the boundary potential and hence the momentum. Therefore its result cannot be promoted to a representative-independent CPS statement. It also gives the bare Brown-York response only; reference subtraction, holographic counterterms, integrable generators, corner improvements, and charge algebras remain separate problems.

# Verification log

- **Source-derived:** all six main sections and both appendices were reconstructed from the complete v2 TeX source and visually checked against representative pages of the 33-page official PDF.
- **Checked:** xAct reproduced
  $$
  \nabla_i\left(\nabla_jn^i-\delta^i{}_j\nabla_an^a\right)=R_{ij}n^i
  $$
  for independent timelike and null vector fields; both canonical residuals were exactly zero.
- **Checked:** exact Mathematica component tests, using a mostly-plus metric and nontrivial admissible point data, reproduced the timelike and null GR projections, both Jordan-frame scalar-tensor projections, the unit/null normalization constraints, and the null nonaffinity condition. Every matrix residual was zero.
- **Checked:** a flat timelike-boundary specialization with arbitrary scalar derivatives reproduced the scalar-tensor momentum-balance cancellation after eliminating the matter flux with the Jordan-frame field equation.
- **Failed:** the literal equalities $t=\partial s/\partial(\nabla n)$ in Eq. (58) and the scalar-tensor analogues miss $1/(16\pi)$. Differentiating the unnormalized $s$ gives no factor of $\pi$. The right-hand component formulas and every later Brown-York projection are recovered by differentiating $(16\pi)^{-1}s$.
- **Assumptions:** smooth Levi-Civita geometry; the paper's extrinsic-curvature signs; a chosen null normalization and auxiliary $k^a$; the dual covector projector $\Pi_a{}^b=\delta_a{}^b+l_a k^b$; the canonical Padmanabhan representative; and the stated source-conservation/Bianchi assumptions.
- **Not independently verified:** the full null projected derivative $\mathcal D_a$, all Appendix B rearrangements with arbitrary off-surface extensions, equivalence of the entropy representatives under every allowed boundary modification, and the general scalar-tensor conformal-frame derivation.
- **Blocked:** the paper supplies no CPS symplectic potential, corner prescription, charge integrability analysis, or subtraction/counterterm scheme, so no boundary charge algebra or finite quasi-local charge follows from the checked identities alone.
