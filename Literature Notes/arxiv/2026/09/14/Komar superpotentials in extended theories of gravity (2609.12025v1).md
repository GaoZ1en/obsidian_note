---
paper id: 2609.12025v1
title: Komar superpotentials in extended theories of gravity
authors:
  - H. Arthur Weldon
publication date: 2026-09-10
abstract: |-
  For diffeomorphism-invariant gravitational and scalar-matter Lagrangians with curvature dependence, the paper separates the Euler-Lagrange part of the Noether current from an identically conserved current and constructs an antisymmetric superpotential. It gives a covariant formula when the Lagrangian depends algebraically on the Riemann tensor, examples in f(R) and quadratic gravity, matter analogues, and a coefficient recursion for arbitrary higher metric derivatives.
comments: "15 pages"
url: https://arxiv.org/abs/2609.12025v1
summary: "The useful result is an explicit off-shell Noether-II potential for L(g,R); its relation to a CPS Hamiltonian charge remains conditional on action and boundary data."
tags: []
---

Daily overview: [[2026_09_14_overview]]

# Verdict

**Correct under the paper's local assumptions for the displayed $\mathcal L(g,R)$ construction.** The source gives a coherent Noether-second-theorem derivation of an identically conserved current density and an antisymmetric potential. The $f(R)$ and $\phi^2R$ specializations were independently reproduced with xAct. This does **not** by itself construct an Iyer--Wald Hamiltonian charge: phase-space boundary conditions, the symplectic-potential representative, allowed vector fields, finiteness, and integrability are not analyzed.

The arbitrary-$N$ result is weaker than the abstract may suggest. For $N>2$ the paper proves a coordinate derivative-expansion recursion for the superpotential coefficients; it does not supply a closed manifestly covariant formula comparable to the $N=2$ expression.

# How to read the paper

- **Essential:** Secs. III.B--III.C, especially Eqs. (3.21), (3.27), (3.29), and (3.39). These contain the covariant $M$-tensor formulation and the $f(R)$/quadratic examples.
- **Derivation reference:** Sec. III.A and Appendix B.1. They show how independence of the derivatives of $\xi$ yields the current split and prove the $N=2$ potential.
- **Matter extension:** Sec. IV, especially Eqs. (4.16), (4.20)--(4.27), and (4.34).
- **Higher-derivative reference:** Sec. V and Appendices A--B.4. The all-$N$ statement is an algebraic recursion in the coordinate derivative expansion.
- **Covariantization details:** Appendix C derives the $N=2$ current and potential from the non-covariant coefficients.

# Complete section tree

1. Introduction: motivation, split between gravitational and matter sectors, main formulas.
2. Diffeomorphism invariance and Lie derivatives: active-sign convention and scalar-density identity.
3. Gravitational Lagrangian $\mathcal L_G$: current-jet expansion; off-shell Bianchi identity; conserved current; local potential; covariant form; $f(R)$, quadratic, conformal, and Gauss--Bonnet examples.
4. Matter Lagrangian $\mathcal L_M$: curvature-dependent scalar matter; current split; non-minimal $\gamma\phi^2R$ example; second-derivative and ordinary scalar models.
5. Discussion: extension to $N$ metric derivatives.
6. Appendix A: all-$N$ off-shell identity and conserved current.
7. Appendix B: $N=2$ proof, $N=3$ formula, all-$N$ recursion, and proof.
8. Appendix C: manifestly covariant $N=2$ current and potential.

# Conventions and curvature response

The metric signature is $(-+++)$ and $g=-\det g_{\mu\nu}>0$. The source fixes $R^\alpha{}_{\sigma\tau\omega}=\partial_\omega\Gamma^\alpha_{\sigma\tau}+\cdots$. It uses the active convention

$$
\pounds_\xi g_{\alpha\beta}=\nabla_\alpha\xi_\beta+\nabla_\beta\xi_\alpha
$$

for $x^\mu\mapsto x^\mu+\xi^\mu(x)$, explicitly opposite in sign to older passive-variation conventions cited there.

For

$$
\mathcal L_G=\mathcal L_G(g_{\mu\nu},R_{\alpha\mu\nu\beta})=\sqrt g\,L_G,
$$

define

$$
\sqrt g\,M^{\alpha\mu\nu\beta}:=\frac{\partial\mathcal L_G}{\partial R_{\alpha\mu\nu\beta}}.
$$

The derivative is taken with Riemann symmetries, hence

$$
M^{\alpha\mu\nu\beta}=-M^{\mu\alpha\nu\beta}=-M^{\alpha\mu\beta\nu}=M^{\nu\beta\alpha\mu},
\qquad
M^{\alpha\mu\nu\beta}+M^{\alpha\nu\beta\mu}+M^{\alpha\beta\mu\nu}=0.
$$

# Noether identity and current split

Scalar-density covariance gives

$$
0=\pounds_\xi\mathcal L_G-\partial_\alpha(\xi^\alpha\mathcal L_G)
=\sqrt g\,E^{\alpha\beta}\pounds_\xi g_{\alpha\beta}+\partial_\alpha\mathcal J_G^\alpha.
$$

Expanding $\mathcal J_G^\alpha$ in the independent jets of arbitrary $\xi^\lambda$ forces the off-shell identity

$$
\nabla_\alpha E^\alpha{}_{\lambda}=0.
$$

The current then separates as

$$
\mathcal J_G^\alpha
=\underbrace{-2\sqrt g\,E^\alpha{}_{\lambda}\xi^\lambda}_{\mathcal J_{G1}^\alpha}
+\mathcal J_{G2}^\alpha,
\qquad
\partial_\alpha\mathcal J_{G2}^\alpha=0.
$$

This is an improper/off-shell conservation identity, not conservation of a physical energy current on a specified solution space.

# Covariant $N=2$ result

The central potential is

$$
\boxed{\Phi_G^{[\alpha\mu]}
=4\sqrt g\,(\nabla_\nu M^{\alpha\mu\nu\beta})\xi_\beta
-2\sqrt g\,M^{\alpha\mu\nu\beta}\nabla_\nu\xi_\beta}
$$

with $\partial_\mu\Phi_G^{[\alpha\mu]}=\mathcal J_{G2}^\alpha$. The displayed current is

$$
\mathcal J_{G2}^\alpha=\sqrt g\left[
4(\nabla_\mu\nabla_\nu M^{\alpha\mu\nu\beta})\xi_\beta
-2(\nabla_\beta M^{\alpha\{\mu\nu\}\beta})\pounds_\xi g_{\mu\nu}
-2M^{\alpha\mu\nu\beta}\nabla_\mu\nabla_\nu\xi_\beta\right].
$$

Subtracting it from the full current gives

$$
E^{\alpha\beta}=2\nabla_\mu\nabla_\nu M^{\alpha\{\mu\nu\}\beta}
-\frac12M^{\alpha\mu\nu\rho}R^\beta{}_{\mu\nu\rho}
-\frac12M^{\beta\mu\nu\rho}R^\alpha{}_{\mu\nu\rho}
+\frac12g^{\alpha\beta}L_G.
$$

The source proves symmetry and zero covariant divergence using covariant-derivative commutators and the Bianchi identities.

# Examples

## $f(R)$ gravity

For $\mathcal L_G=\sqrt g\,f(R)/(16\pi G)$,

$$
M^{\alpha\mu\nu\beta}=\frac{f'(R)}{32\pi G}
(g^{\alpha\nu}g^{\beta\mu}-g^{\alpha\beta}g^{\mu\nu}),
$$

and

$$
\Phi_G^{[\alpha\mu]}=\frac{\sqrt g}{16\pi G}\left[
f'(R)(\nabla^\mu\xi^\alpha-\nabla^\alpha\xi^\mu)
+2f''(R)((\nabla^\alpha R)\xi^\mu-(\nabla^\mu R)\xi^\alpha)\right].
$$

The Einstein--Hilbert case is recovered by $f(R)=R$ in the paper's sign convention.

## Quadratic gravity

For $L_G=aR^2+bR_{\mu\nu}R^{\mu\nu}+cR_{\rho\sigma\tau\omega}R^{\rho\sigma\tau\omega}$,

$$
\begin{aligned}
M^{\alpha\mu\nu\beta}={}&aR(g^{\alpha\nu}g^{\beta\mu}-g^{\alpha\beta}g^{\mu\nu})
+\frac b2(g^{\alpha\nu}R^{\beta\mu}+g^{\beta\mu}R^{\alpha\nu}\\
&-g^{\alpha\beta}R^{\mu\nu}-g^{\mu\nu}R^{\alpha\beta})+2cR^{\alpha\mu\nu\beta}.
\end{aligned}
$$

For four-dimensional Gauss--Bonnet, $a=c$ and $b=-4c$: all derivative coefficients in the displayed Euler tensor cancel, while $M$ and the Lagrangian-level potential need not vanish.

## Curvature-coupled scalar

For $\mathcal L_M=\mathcal L_0(g,\phi,\partial\phi)+\sqrt g\,\gamma\phi^2R$,

$$
\widetilde M^{\alpha\mu\nu\beta}=\frac\gamma2\phi^2
(g^{\alpha\nu}g^{\beta\mu}-g^{\alpha\beta}g^{\mu\nu}),
$$

$$
\widetilde\Phi^{[\alpha\mu]}=\sqrt g\,\gamma\phi^2(\nabla^\mu\xi^\alpha-\nabla^\alpha\xi^\mu)
+4\sqrt g\,\gamma\phi(\xi^\mu\nabla^\alpha\phi-\xi^\alpha\nabla^\mu\phi).
$$

The matter identity is

$$
\nabla_\alpha T^\alpha{}_{\lambda}
=\frac1{\sqrt g}\frac{\delta\mathcal L_M}{\delta\phi}\,\partial_\lambda\phi,
$$

so $T^{\alpha\beta}$ is conserved only on the scalar equation, although the separated $\mathcal J_{M2}$ is identically conserved.

# Arbitrary derivative order

For a Lagrangian with up to $N-2$ symmetrized derivatives of the Riemann tensor, the source writes

$$
\mathcal J_{G2}^\alpha=-(\partial_\mu B_\lambda^{\mu\alpha})\xi^\lambda
+\sum_{s=1}^{N}B_\lambda^{\alpha\{\mu_1\cdots\mu_s\}}
\partial_{\mu_1}\cdots\partial_{\mu_s}\xi^\lambda.
$$

Defining

$$
C_\lambda^{[\alpha\mu_1]\mu_2\cdots\mu_s}
=B_\lambda^{\alpha\{\mu_1\cdots\mu_s\}}
-B_\lambda^{\mu_1\{\alpha\mu_2\cdots\mu_s\}},
$$

the potential coefficients are

$$
W_\lambda^{[\alpha\mu_1]\mu_2\cdots\mu_s}
=\frac{s}{s+1}C_\lambda^{[\alpha\mu_1]\mu_2\cdots\mu_s}
+\sum_{p=1}^{N-s}\frac{s(-1)^p}{s+p+1}
\partial_{\mu_{s+1}}\cdots\partial_{\mu_{s+p}}
C_\lambda^{[\alpha\mu_1]\mu_2\cdots\mu_{s+p}}.
$$

Appendix B proves that its divergence reproduces the current. This is a coordinate formula; the paper does not finish a closed covariant all-$N$ version.

# Translation to the vault's CPS language

The reusable curvature response is $M=(1/\sqrt g)\,\partial\mathcal L/\partial R$. But the logical relation is only

$$
\text{diffeomorphism identity}\Longrightarrow\mathcal J_{G2}=\partial\Phi,
$$

not yet the CPS statement

$$
\delta H_\xi=\int_{\partial\Sigma}(\delta Q_\xi-i_\xi\theta).
$$

That comparison still requires the full action including boundary/topological terms, a chosen symplectic-potential representative, boundary and corner conditions, phase-space-preserving $\xi$, and checks of finiteness and integrability. The nonzero Gauss--Bonnet potential with vanishing four-dimensional bulk Euler derivative is a concrete warning that the action representative matters for regional sewing.

# Verification log

## Checked

- **Generic curved $f(R)$ specialization:** xAct substituted the source $M$ into the covariant potential. With arbitrary scalar $q(x)$ representing $R$, arbitrary covector $\xi_\mu$, metric compatibility, and no field equations, `ToCanonical -> ContractMetric -> ToCanonical` returned zero.
- **Generic curved $\gamma\phi^2R$ specialization:** the same xAct pipeline returned zero, including the factor and sign of the $4\gamma\phi$ term.
- **Gauss--Bonnet derivative cancellation:** Mathematica returned `{0,0,0}` after $a=c$, $b=-4c$ was substituted into $a+b/2+c$, $2a+b/2$, and $b+4c$.
- **Visual source check:** rendered PDF pages 4--8 confirm the index order and signs in Eqs. (3.27), (3.39)--(3.45), (4.20)--(4.27), and the distinction between curvature-dependent and ordinary scalar matter.

## Assumptions

- The xAct checks establish the two specializations, not the general current--potential theorem.
- The Gauss--Bonnet check establishes cancellation of derivative terms only; the dimension-dependent curvature-square identity was not reproduced.

## Source-derived

- The current-jet proof of $\nabla_\alpha E^{\alpha\beta}=0$ and $\partial_\alpha\mathcal J_{G2}^\alpha=0$.
- The general $N=2$ potential and the arbitrary-$N$ recursion/proof.
- The complete quadratic Euler tensor and the second-derivative scalar construction.

## Not independently verified

- Equality with a chosen Iyer--Wald or ADT representative after convention and ambiguity matching.
- Global existence/uniqueness on nontrivial topology.
- Boundary flux, finiteness, conservation between cuts, and Hamiltonian integrability.
