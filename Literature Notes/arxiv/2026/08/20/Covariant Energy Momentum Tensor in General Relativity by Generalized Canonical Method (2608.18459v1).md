---
paper id: 2608.18459v1
title: Covariant Energy Momentum Tensor in General Relativity by Generalized Canonical Method
authors:
  - Masakatsu Kenmoku
publication date: 2026-08-19T02:31
abstract: |-
  The paper retains the second-derivative surface term in the Einstein--Hilbert density, applies a generalized canonical Noether formula, and claims that the sum of the first- and second-derivative currents is a complete covariant gravitational energy-momentum tensor. Flat-space and Schwarzschild examples are presented.
comments: "10 pages"
url: https://arxiv.org/abs/2608.18459v1
summary: "The Einstein--Hilbert density decomposition and several regulated integrals check, but the proposed current is not shown to be a covariant local gravitational stress tensor and key examples contain measure and matter-energy errors."
tags: []
---

# Direct verdict

Incorrect.

The paper correctly restores the full Einstein--Hilbert density

\[
\mathbf R=\sqrt{-g}R=\mathbf G+\mathbf W
\]

inside a second-derivative canonical Noether formula. This makes the sum independent of the particular split between the Christoffel-squared bulk term and its compensating divergence. It does **not** turn the canonical translation current into a generally covariant local gravitational energy-momentum tensor.

The statement should be rewritten as:

> Retaining the Einstein--Hilbert surface divergence produces an improved canonical current whose selected integrated examples reproduce parts of the usual asymptotic mass bookkeeping.

The paper does not establish a tensorial transformation law, a covariant conservation equation, a diffeomorphism charge, or a covariant-phase-space Hamiltonian. Its Schwarzschild “matter canonical energy” is not derived from a matter action, and its flat polar-coordinate volume integrals use the wrong coordinate measure for quantities already defined as densities.

See [[2026_08_20_overview]] for today's queue.

# Source map

## Section 1 — proposal

The motivation is the noncovariance of Einstein and related gravitational pseudotensors. The proposed repair is to retain the divergence term in the Einstein--Hilbert Lagrangian and apply the higher-derivative canonical Noether construction.

## Section 2.1 — Christoffel-squared current

The scalar-curvature density is decomposed into a first-derivative term \(\mathbf G\) and a divergence \(\mathbf W\). The canonical current \(\mathbf t_G{}^\mu{}_\nu\) is the familiar noncovariant pseudotensor contribution.

## Section 2.2 — divergence-term current

The authors vary the second-derivative term and construct an additional canonical current \(\mathbf t_W{}^\mu{}_\nu\). Its Euler--Lagrange expression vanishes identically because \(\mathbf W\) is a total divergence.

## Section 2.3 — claimed total tensor

Adding the two currents gives

\[
\mathbf t^\mu{}_\nu
=\frac1{2\kappa}\left[
\left(
\frac{\partial\mathbf R}{\partial g_{\alpha\beta,\mu}}
-2\partial_\gamma
\frac{\partial\mathbf R}{\partial g_{\alpha\beta,\gamma\mu}}
\right)g_{\alpha\beta,\nu}
+\partial_\gamma\left(
\frac{\partial\mathbf R}{\partial g_{\alpha\beta,\gamma\mu}}
g_{\alpha\beta,\nu}
\right)
-\delta^\mu_\nu\mathbf R
\right].
\]

The paper asserts that this mixed density is generally covariant and combines with the canonical matter current in an ordinary partial-divergence conservation law.

## Section 3.1 — flat spacetime

In spherical polar coordinates the two noncovariant pieces are

\[
\mathbf G=2\sin\theta,
\qquad
\mathbf W=-2\sin\theta.
\]

They cancel pointwise. In Cartesian coordinates each is separately zero.

## Section 3.2 — Schwarzschild spacetime

The paper regularizes \(1/r\) by \(1/\sqrt{r^2+\epsilon^2}\), integrates the trace of the Einstein tensor, assigns \(m/2\) to “gravitational energy,” assigns another \(m/2\) to a “canonical matter energy,” and recovers \(m\). An asymptotically Cartesian calculation splits a surface expression into a spatial ADM-like term \(m\) and a lapse term \(-m/2\).

## Section 4 — conclusion and comparisons

The current is compared with ADM, Komar, and recent matter-energy constructions. The paper claims applicability in arbitrary spacetime and without a Killing vector.

## Appendix — total-derivative scalar model

A \(1+1\)-dimensional total divergence is used to illustrate that a term with identically vanishing Euler--Lagrange derivative can nevertheless shift a canonical translation current.

# Definitions and conventions

- Signature: \((-+++)\).
- Units: \(c=G=1\).
- Einstein coupling: \(\kappa=8\pi\).
- Boldface means a weight-one coordinate density: \(\mathbf O=\sqrt{-g}\,O\).
- Einstein--Hilbert gravitational Lagrangian:

\[
L_g=\frac{R}{2\kappa}.
\]

- First-derivative density:

\[
\mathbf G
=\sqrt{-g}\,g^{\mu\nu}
\left(
\Gamma^\lambda_{\mu\rho}\Gamma^\rho_{\nu\lambda}
-\Gamma^\lambda_{\mu\nu}\Gamma^\rho_{\lambda\rho}
\right).
\]

- Divergence:

\[
\mathbf W=\partial_\mu\mathbf W^\mu,
\qquad
\mathbf W^\mu=\sqrt{-g}
\left(
g^{\alpha\beta}\Gamma^\mu_{\alpha\beta}
-g^{\mu\nu}\Gamma^\lambda_{\nu\lambda}
\right).
\]

- Claimed energy:

\[
E_g=-\int d^3x\,\mathbf t^0{}_0.
\]

# What the generalized canonical formula does

For a Lagrangian \(L(\phi,\partial\phi,\partial^2\phi)\), rigid translations give a canonical current of the schematic form

\[
T^\mu{}_\nu
=\left(
\frac{\partial L}{\partial\phi_{,\mu}}
-\partial_\lambda\frac{\partial L}{\partial\phi_{,\mu\lambda}}
\right)\phi_{,\nu}
+\frac{\partial L}{\partial\phi_{,\mu\lambda}}\phi_{,\nu\lambda}
-\delta^\mu_\nu L.
\]

Expanding the paper's factor-\(2\) form reproduces this pattern. Thus the algebraic use of a higher-derivative canonical formula is not the main problem.

The problem is interpretive: a canonical current associated with coordinate translations is not automatically a tensor under arbitrary coordinate changes. Adding a divergence to the Lagrangian changes that current by an improvement term. This is precisely what the appendix illustrates, even though the paper interprets the improvement as a unique physical localization.

# Why covariance is not established

## 1. No tensor transformation law is derived

The displayed current contains ordinary coordinate derivatives of metric components and derivatives of the Lagrangian density with respect to those coordinate derivatives. The source never transforms the complete expression under a general \(x^\mu\mapsto x'^\mu(x)\) and never cancels the inhomogeneous second-derivative terms of the coordinate map.

Writing a free upper and lower spacetime index is not evidence that an expression is a tensor density.

## 2. The claimed conservation equation is not covariant for a mixed tensor

For a weight-one mixed tensor density \(\mathbf T^\mu{}_\nu\), covariant conservation is

\[
\nabla_\mu\mathbf T^\mu{}_\nu
=\partial_\mu\mathbf T^\mu{}_\nu
-\Gamma^\rho_{\mu\nu}\mathbf T^\mu{}_\rho.
\]

The paper proves only

\[
\partial_\mu
\left(
\mathbf t^\mu{}_\nu+\mathbf T_{\rm can}{}^\mu{}_\nu
\right)=0.
\]

It supplies no identity that removes the connection term. Therefore the conservation statement itself does not support the advertised general covariance.

## 3. The canonical matter current is not generally the Hilbert tensor

The matter term is defined by rigid-translation differentiation with respect to \(\partial_\mu\phi\). For spinor, vector, gauge, or derivative-coupled fields it need not be symmetric, gauge invariant, or equal to the metric stress tensor. No Belinfante improvement or general diffeomorphism identity is developed.

Consequently, declaring the sum of the gravitational current and \(\mathbf T_{\rm can}\) covariant is not justified.

## 4. Diffeomorphism invariance gives a Noether identity and boundary charge

For the Einstein--Hilbert theory, a diffeomorphism generated by \(\xi^\mu\) yields a Noether current that decomposes on shell into constraints plus a superpotential. A physical energy requires a chosen asymptotic symmetry or boundary structure, normalization, boundary conditions, and an integrability prescription.

The paper uses constant coordinate translations and then claims validity in arbitrary coordinates without supplying this geometric data. It therefore does not replace ADM, Komar, Brown--York, Iyer--Wald, or other boundary constructions.

## 5. Local vacuum energy is absent in the worked Schwarzschild exterior

For a stationary metric, every term proportional to \(g_{\alpha\beta,0}\) vanishes, so the proposed expression reduces to

\[
\mathbf t^0{}_0=-\frac{\mathbf R}{2\kappa}.
\]

For Schwarzschild at every regular exterior point, \(R=0\). Hence the proposed local gravitational energy density vanishes throughout the exterior. The reported \(m/2\) comes entirely from a distributional treatment of the singular source, not from a covariant localization of energy in the gravitational field.

# Direct computational audits

## Flat spacetime in polar coordinates

For

\[
ds^2=-dt^2+dr^2+r^2(d\theta^2+\sin^2\theta\,d\phi^2),
\]

Mathematica reconstructed the Christoffel symbols and returned

\[
\mathbf G=2\sin\theta,
\qquad
\mathbf W^\mu=(0,-4r\sin\theta,-2\cos\theta,0),
\qquad
\partial_\mu\mathbf W^\mu=-2\sin\theta.
\]

Thus \(\mathbf R=\mathbf G+\mathbf W=0\), as xAct also verified from the metric.

However, because \(\mathbf G\) already includes \(\sqrt{-g}=r^2\sin\theta\), its coordinate integral uses \(d^3x=dr\,d\theta\,d\phi\), not another spherical volume factor. With radial cutoff \(R_c\),

\[
\frac1{2\kappa}\int_0^{R_c}dr\int_0^\pi d\theta
\int_0^{2\pi}d\phi\,\mathbf G
=\frac{4\pi R_c}{\kappa}.
\]

The paper instead writes

\[
\frac{\pi^2R_c^3}{3\kappa},
\]

which results from multiplying the density by an additional \(r^2\sin\theta\). Both individual integrals in its equations (3.23)--(3.24) are therefore wrong. Their pointwise cancellation remains correct.

## Regularized Schwarzschild trace

With \(r_\epsilon=\sqrt{r^2+\epsilon^2}\), the paper's two radial integrals do check:

\[
4\pi\int_0^\infty dr\,
\left[-\frac{4m\epsilon^2}{(r^2+\epsilon^2)^{3/2}}\right]
=-16\pi m,
\]

and

\[
4\pi\int_0^\infty dr\,r^2
\left[-2m\Delta\frac1{r_\epsilon}\right]
=8\pi m.
\]

Their sum yields \(\int\sqrt{-g}R\,d^3x=8\pi m\), hence \(m/2\) in the proposed stationary density. This verifies the regulated integral, not its interpretation as gravitational field energy.

## Asymptotic surface split

For the stated Schwarzschild asymptotics, the standard spatial ADM combination gives

\[
\frac1{16\pi}\oint
(\partial_jh_{ij}-\partial_i h_{jj})\,dS_i=m.
\]

The additional lapse derivative used in \(\mathbf W\) gives

\[
\frac1{16\pi}\oint \partial_i g_{00}\,dS_i=-\frac m2.
\]

Their combined \(\mathbf W\) contribution is therefore \(m/2\), as written. But the missing \(m/2\) is then labeled “canonical matter energy” without deriving any matter Lagrangian or canonical stress tensor. This is bookkeeping at the singular source, not a proof that a local covariant gravitational tensor integrates to ADM mass.

# Boundary-variation issue

The paper says that it imposes \(\delta g_{\mu\nu}=0\) on both \(\partial\Omega\) and \(\partial\partial\Omega\). For an ordinary smooth region, the boundary of the boundary is empty. A second-derivative variational problem instead requires appropriate boundary data such as the field variation and a normal derivative, or a compensating boundary action such as the Gibbons--Hawking--York term for Dirichlet gravity.

The proposed condition neither states the required normal-derivative data nor analyzes corners. It does not provide a well-posed gravitational variational principle suitable for a covariant phase-space construction.

# Verification record

## Checked

- **Verified:** the official 10-page PDF and complete 696-line TeX source were retrieved; four representative pages were rendered and matched to the source.
- **Verified:** Mathematica independently reconstructed \(\mathbf G=2\sin\theta\), \(\mathbf W=-2\sin\theta\), and their cancellation in flat polar coordinates.
- **Verified:** xAct/xCoba returned a zero residual for the Ricci scalar of flat spacetime in polar coordinates.
- **Verified:** Mathematica reproduced the two regulated Schwarzschild trace integrals, \(-16\pi m\) and \(8\pi m\), and the asymptotic split \(m-m/2=m/2\).

## Failed

- **Failed:** the flat polar volume integrals double-count the spherical Jacobian. The correct cutoff behavior is \(4\pi R_c/\kappa\), not \(\pi^2R_c^3/(3\kappa)\).
- **Failed:** no tensor-density transformation law or covariant conservation identity is established for the proposed mixed current.
- **Failed:** the claimed Schwarzschild canonical matter energy \(m/2\) is not calculated from a matter action; it is assigned from the same distributional curvature bookkeeping.
- **Failed:** agreement of two integrated coordinate examples does not prove covariance under general coordinate transformations.

## Source-derived

- **Source-derived:** the higher-derivative canonical current formula and the decomposition \(\mathbf R=\mathbf G+\mathbf W\).
- **Source-derived:** the interpretation of \(m/2\) as gravitational energy and \(m/2\) as matter energy.

## Not independently verified

- **Not verified:** a general transformation of \(\mathbf t^\mu{}_\nu\) under arbitrary spacetime diffeomorphisms; the paper does not provide one.
- **Not verified:** any quasi-local charge, phase-space integrability condition, symplectic flux statement, or boundary symmetry algebra.
- **Not verified:** the proposed boundary conditions define a well-posed variational problem.

# Assumptions and limitations

- **Assumptions:** the checked coordinate calculations use the source's signature, \(\kappa=8\pi\), and coordinate-density convention.
- **Assumptions:** the Schwarzschild regulator is applied exactly as written and integrals are taken before \(\epsilon\to0\).
- The verified distributional trace does not establish a unique split between matter and gravitational energy.
- A total derivative can change a canonical current without changing equations of motion; this improvement freedom is not removed by restoring \(\mathbf R\).
- The paper is not a CPS construction. It defines neither a presymplectic potential nor an integrable Hamiltonian variation.

# Relevance to current projects

- `T1-charge`: useful as a sharp counterexample to the inference “conserved coordinate current implies geometric charge.”
- `T1-Wald-CPS`: highlights why surface terms matter, but also why they must be handled through the variational principle and symplectic potential rather than treated as a unique local energy density.
- `T2-model`: the flat-polar and regulated-Schwarzschild calculations are small symbolic benchmarks.
- For boundary/gluing work, the transferable lesson is to track Lagrangian boundary ambiguities, symplectic-potential improvements, corner data, and charge integrability explicitly.

# Blocked

- No official retrieval failed: the abstract page, PDF, and complete single-file TeX source were available.
- No code or symbolic notebook was supplied.
- A full counter-transformation of the proposed current is blocked by the paper's failure to specify how its derivatives with respect to \(g_{\alpha\beta,\mu}\) and \(g_{\alpha\beta,\mu\nu}\) are meant to transform as jet-bundle objects. This omission is itself part of the covariance gap.
- The matter split cannot be reproduced because no matter action or source stress tensor is provided.

# Bottom line

The paper usefully reminds the reader that discarding the Einstein--Hilbert divergence changes canonical-current bookkeeping. Its main claim nevertheless fails: an improved rigid-translation current is not thereby a complete generally covariant gravitational energy-momentum tensor. The worked examples verify only cancellations and distributional surface accounting, and one of them contains an explicit density-measure error.
