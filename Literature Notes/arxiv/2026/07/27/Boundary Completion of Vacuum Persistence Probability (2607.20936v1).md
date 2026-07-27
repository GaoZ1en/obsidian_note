---
paper id: 2607.20936v1
title: Boundary Completion of Vacuum Persistence Probability
authors:
  - Yu Zhou
  - Hai-Qing Zhang
publication date: 2026-07-23T05:30
abstract: |-
  The apparent mismatch between the Bogoliubov and coincident-Green-function prescriptions for vacuum persistence comes from omitting the mass dependence of the initial and final vacuum wavefunctionals. The bulk Green-function variation leaves endpoint Wronskian terms; the Gaussian endpoint states reproduce them with the opposite signs, leaving a unique imaginary part equal to the Bogoliubov result.
comments: "6+10 pages. Comments are welcome"
url: https://arxiv.org/abs/2607.20936v1
summary: "Endpoint Gaussian wavefunctionals complete the bulk Green-function response and isolate the unique vacuum-decay probability."
tags: []
---

Back to [[2026_07_27_overview]].

This is a clean temporal-boundary mechanism rather than a timelike AdS-boundary or null-corner result. Its main value is the rule that a parameter variation of an amplitude must vary both the bulk action and the endpoint states. It is especially close to finite-regulator Gaussian overlap calculations.

## The two incomplete-looking prescriptions

For a free real scalar on a globally hyperbolic region \(\Omega\), with temporal boundaries \(\Sigma_{\mathrm{in}}\) and \(\Sigma_{\mathrm{out}}\),

$$
S_m[\phi]
=-\frac12\int_\Omega d^{d+1}x\sqrt{|g|}
\left[
g^{\mu\nu}\nabla_\mu\phi\nabla_\nu\phi
+m^2\phi^2
\right].
$$

The in-out amplitude and vacuum persistence probability are

$$
Z=\langle0,\mathrm{out}|0,\mathrm{in}\rangle=e^{iW},
\qquad
P_{\mathrm{vac}}=|Z|^2=e^{-2\operatorname{Im}W}.
$$

Canonical quantization gives the Bogoliubov expression

$$
W_B=\frac{i}{2}\operatorname{Tr}\log\alpha,
\tag{1}
$$

up to a real phase. The conventional Green-function prescription instead integrates the coincident in-out Feynman propagator:

$$
W_G
=-\frac12\int_\Omega d^{d+1}x\sqrt{|g|}
\int_{+\infty}^{m^2}d\bar m^2\,
G_F(x,x;\bar m^2).
\tag{2}
$$

The paper's point is not that either formula is intrinsically ambiguous. Equation (2) computes only the bulk response to changing \(m^2\).

## The complete amplitude has endpoint states

The path integral is

$$
e^{iW}
=
\int_\Omega\mathcal D\phi\,
\Psi_{\mathrm{out}}^*
[\phi|_{\Sigma_{\mathrm{out}}}]
\Psi_{\mathrm{in}}
[\phi|_{\Sigma_{\mathrm{in}}}]
e^{iS_m[\phi]}.
\tag{3}
$$

Consequently,

$$
\partial_{m^2}W
=
\partial_{m^2}W_G
+\partial_{m^2}W_\Psi,
\tag{5}
$$

where

$$
\partial_{m^2}W_G
=-\frac12
\int_\Omega d^{d+1}x\sqrt{|g|}\,G_F(x,x),
$$

and \(W_\Psi\) collects the variation of both endpoint wavefunctionals. A lateral boundary is assumed either absent or subject to falloff conditions that remove its contribution.

## The bulk trace becomes two Wronskians

Let \(u_k^{\mathrm{in}}\) and \(u_{k'}^{\mathrm{out}}\) be positive-frequency bases related by

$$
u_{k'}^{\mathrm{out}}
=\sum_k
\left(
\alpha_{k'k}u_k^{\mathrm{in}}
+\beta_{k'k}u_k^{\mathrm{in}*}
\right).
$$

With a common regulator in which \(\alpha\) is invertible,

$$
G_F(x,x)
=\sum_{k,k'}
(\alpha^{-1})_{kk'}
u_{k'}^{\mathrm{out}}(x)
u_k^{\mathrm{in}*}(x).
\tag{6}
$$

The Green--Lagrange identity converts the spacetime mode product into a boundary current. With

$$
W_\Sigma[f,g]
=
\int_\Sigma d\Sigma_\mu
\left(
f\nabla^\mu g-g\nabla^\mu f
\right),
$$

one obtains

$$
\begin{aligned}
\int_\Omega\sqrt{|g|}\,
u_{k'}^{\mathrm{out}}u_k^{\mathrm{in}*}
={}&
W_{\Sigma_{\mathrm{in}}}
\left[
u_{k'}^{\mathrm{out}},
\partial_{m^2}u_k^{\mathrm{in}*}
\right]
\\
&-
W_{\Sigma_{\mathrm{out}}}
\left[
u_{k'}^{\mathrm{out}},
\partial_{m^2}u_k^{\mathrm{in}*}
\right].
\end{aligned}
\tag{7}
$$

Separating the variation of

$$
W_\Sigma
\left[
u_{k'}^{\mathrm{out}},
u_k^{\mathrm{in}*}
\right]
=i\alpha_{k'k},
$$

gives

$$
\partial_{m^2}W_G
=
\partial_{m^2}W_B
-\mathcal B_{\mathrm{in}}
-\mathcal B_{\mathrm{out}}.
\tag{9}
$$

The \(\mathcal B_\sigma\) are not new bulk terms. They are the endpoint Wronskians left by integrating the Green identity over \(\Omega\).

## Gaussian vacua know the missing boundary data

On either endpoint \(\Sigma_\sigma\), define mode coordinate and normal-momentum data

$$
q_k^\sigma=u_k^\sigma|_{\Sigma_\sigma},
\qquad
p_k^\sigma
=n^\mu\nabla_\mu u_k^\sigma|_{\Sigma_\sigma}.
$$

The annihilation condition fixes a Gaussian Schrödinger wavefunctional

$$
\Psi_\sigma[\varphi^\sigma]
=
\mathcal N_\sigma
\exp\left[
\frac{i}{2}
\varphi^\sigma\cdot K^\sigma\cdot\varphi^\sigma
\right],
\tag{10}
$$

with

$$
K^\sigma\cdot q_j^{\sigma *}=p_j^{\sigma *}.
$$

The normalization is not optional. In a finite \(N\)-site regulator,

$$
\mathcal N_\sigma
=(2\pi)^{-N/4}
\left[
\det_{\Sigma_\sigma}Q^\sigma
\right]^{-1/4}
e^{i\theta^\sigma},
\qquad
Q^\sigma(\mathbf x,\mathbf y)
=\sum_kq_k^\sigma(\mathbf x)q_k^{\sigma *}(\mathbf y).
\tag{11}
$$

Varying both \(K^\sigma\) and \(\mathcal N_\sigma\), and using the restriction of the same in-out Green function to the endpoint, produces

$$
\partial_{m^2}W_\Psi
=
\mathcal B_{\mathrm{in}}
+\mathcal B_{\mathrm{out}}
+\partial_{m^2}\Theta.
\tag{17}
$$

Here \(\Theta\) is real and combines the Gaussian normalization phases and the remaining imaginary boundary traces before multiplication by \(-i\).

## Cancellation and the unique decay probability

Adding the bulk and endpoint variations gives

$$
\partial_{m^2}W
=
\partial_{m^2}W_B
+\partial_{m^2}\Theta.
\tag{18}
$$

Thus the endpoint states cancel the Wronskian obstruction exactly. The undetermined \(\Theta\) changes only \(\operatorname{Re}W\), reflecting the phase convention of the in- and out-vacua.

Taking the no-production large-mass limit as reference fixes the imaginary integration constant. Therefore

$$
\operatorname{Im}W
=\frac14
\operatorname{Tr}\log
\left(
\alpha\alpha^\dagger
\right),
\tag{19}
$$

and

$$
P_{\mathrm{vac}}
=
\exp\left[
-\frac12
\operatorname{Tr}\log
\left(
\alpha\alpha^\dagger
\right)
\right].
$$

The vacuum-decay probability is prescription independent when all pieces are regulated and varied together. The real phase is not fixed without an additional convention or renormalization condition.

## Translation to boundary quantization

The mechanism can be summarized as

$$
\delta\log Z
=
\left\langle i\,\delta S_{\mathrm{bulk}}\right\rangle
+\delta\log\Psi_{\mathrm{in}}
+\delta\log\Psi_{\mathrm{out}}^*.
$$

This is directly reusable for finite-lattice Gaussian overlaps: the state normalization determinant and the quadratic kernel must be varied with the bulk operator. It is also a warning for alternative quantization and pAQFT amplitudes: a bulk Green function reconstructs a response of the operator, not automatically the response of the complete state-to-state amplitude.

The boundaries here are spacelike Cauchy endpoints. Nothing in the paper derives a timelike AdS boundary term, a null presymplectic potential, a Wald--Zoupas flux, or a corner charge.

## Verification boundary

Checked with Mathematica:

- The combination

  $$
  (\partial W_B-\mathcal B_{\mathrm{in}}-\mathcal B_{\mathrm{out}})
  +(\mathcal B_{\mathrm{in}}+\mathcal B_{\mathrm{out}}+\partial\Theta)
  -(\partial W_B+\partial\Theta)
  $$

  has zero residual.
- In a finite-dimensional regulator and on a consistent logarithm branch,

  $$
  \operatorname{Im}
  \left(
  \frac{i}{2}\log\det\alpha
  \right)
  =
  \frac14\log\det(\alpha\alpha^\dagger).
  $$

Visually checked in the rendered PDF:

- Eqs. (6)--(19), including the signs of the initial and final Wronskians.

Not independently verified:

- The functional-determinant manipulations in the endpoint kernel calculation.
- The orientation signs in the Green--Lagrange reduction for an arbitrary globally hyperbolic region.
- Removal of the common regulator.
- The de Sitter cutoff application or extensions to interacting, gauge, and gravitational fields.
