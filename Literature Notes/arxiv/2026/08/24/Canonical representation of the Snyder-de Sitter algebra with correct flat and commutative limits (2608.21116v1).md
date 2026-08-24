---
paper id: 2608.21116v1
title: Canonical representation of the Snyder-de Sitter algebra with correct flat and commutative limits
authors:
  - V. G. Kupriyanov
  - E. L. F. de Lima
publication date: 2026-08-21T21:59
abstract: |-
  An explicit all-order Darboux representation is constructed for the Snyder--de Sitter symplectic algebra. Unlike earlier parameterizations, it is regular in the flat and commutative one-parameter limits and is used to pull canonical phase-space gauge transformations back to the deformed variables.
comments: "14 pages"
url: https://arxiv.org/abs/2608.21116v1
summary: "A clean exact Darboux map with checked scalar identities and honest limits, though the resulting eight-dimensional Poisson gauge theory remains physically unresolved."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct on the real Darboux patch $1+\lambda>0$, with the removable point $\lambda=0$ understood by continuity. The scalar identities defining the transformation and the quoted series are independently reproduced. The map is an exact classical symplectomorphism; it is not a quantization theorem, and its eight-dimensional Poisson gauge theory is only a semiclassical construction whose four-dimensional interpretation remains open.

Reason codes: `T1-symplectic`, `T2-model`, `T3-math`.

The main vault relevance is methodological: derive a symplectic potential, construct Darboux variables, and check singular parameter limits before interpreting deformed variables. It is not directly about boundary gluing.

# Snyder--de Sitter Poisson tensor

For $X^{\mathcal M}=(x^\mu,p_\mu)$, the brackets include

$$
\{x^\mu,x^\nu\}
=\beta^2(x^\mu p^\nu-x^\nu p^\mu),
$$

$$
\{p_\mu,p_\nu\}
=\alpha^2(x_\mu p_\nu-x_\nu p_\mu),
$$

$$
\{x^\mu,p_\nu\}
=\delta^\mu_\nu+\alpha^2x^\mu x_\nu
+\beta^2p^\mu p_\nu+2\alpha\beta p^\mu x_\nu.
$$

Define

$$
\lambda=\alpha^2x^2+\beta^2p^2+2\alpha\beta x\cdot p.
$$

The inverse Poisson tensor carries an overall $(1+\lambda)^{-1}$, so the displayed symplectic chart excludes $\lambda=-1$.

# Symplectic potential

With $u=x^2/2$, $v=p^2/2$, and $z=x\cdot p$, the Lorentz-covariant potential uses

$$
F(\lambda)=\frac{\lambda-\log(1+\lambda)}{2\lambda^2},
\qquad F(0)=\frac14.
$$

The first-order action

$$
S=\int d\tau\,[J_{\mathcal M}(X)\dot X^{\mathcal M}-H(X)]
$$

reproduces the SdS Poisson structure through $dJ=\Omega=\Theta^{-1}/2$. The logarithm makes the real chart condition $1+\lambda>0$ explicit.

# Exact Darboux map

Let $Y^{\mathcal M}=(y^\mu,\xi_\mu)$ be canonical. The inverse map $Y(X)$ is built from

$$
A(\lambda)=
\frac{\lambda+\log(1+\lambda)}
{2\sqrt{\lambda\log(1+\lambda)}},
$$

$$
B(\lambda)=
\frac{\lambda-\log(1+\lambda)}
{\sqrt{\lambda^3\log(1+\lambda)}}.
$$

The coefficient matrix is fixed by

$$
A^2-\frac{\lambda^2}{4}B^2=1,
\qquad
B\left(A-\frac\lambda2B\right)=2F.
$$

These two identities encode unit determinant and symplectic-potential matching.

For the forward map $X(Y)$, define

$$
\bar\lambda=
\alpha^2y^2+\beta^2\xi^2+2\alpha\beta y\cdot\xi,
\qquad
\lambda=e^{\bar\lambda}-1,
$$

and

$$
C(\bar\lambda)=
\frac{e^{\bar\lambda}-1+\bar\lambda}
{2\sqrt{(e^{\bar\lambda}-1)\bar\lambda}},
$$

$$
D(\bar\lambda)=
\frac{e^{\bar\lambda}-1-\bar\lambda}
{\sqrt{(e^{\bar\lambda}-1)\bar\lambda^3}}.
$$

Then

$$
\begin{aligned}
x_\mu={}&
\left[C+(\alpha^2\bar u-\beta^2\bar v)D\right]y_\mu
+(\beta^2\bar z+2\alpha\beta\bar u)D\,\xi_\mu,\\
p_\mu={}&
(\alpha^2\bar z+2\alpha\beta\bar v)D\,y_\mu
+\left[C-(\alpha^2\bar u-\beta^2\bar v)D\right]\xi_\mu.
\end{aligned}
$$

The apparent singularities at $\bar\lambda=0$ are removable:

$$
C=1+\frac{\bar\lambda^2}{32}
+\frac{\bar\lambda^3}{192}+O(\bar\lambda^4),
$$

$$
D=\frac12+\frac{\bar\lambda}{24}
+\frac{\bar\lambda^2}{192}+O(\bar\lambda^3).
$$

Because every deformation correction contains $\alpha$ or $\beta$, the simultaneous limit gives $x=y$, $p=\xi$. Setting one parameter to zero before the other also remains regular, which is the improvement claimed in the title.

# Poisson gauge application

Canonical phase-space gauge transformations are pulled back using the Jacobian

$$
\Gamma^{\mathcal N}{}_{\mathcal M}(X)
=\left.\frac{\partial X^{\mathcal N}}
{\partial Y^{\mathcal M}}\right|_{Y=Y(X)}.
$$

The proposed law is

$$
\delta_fA_{\mathcal M}
=\Gamma^{\mathcal N}{}_{\mathcal M}\partial_{\mathcal N}f
+\{A_{\mathcal M},f\},
$$

with covariant field strength

$$
\mathcal F_{\mathcal M\mathcal N}
=\Gamma^{\mathcal K}{}_{\mathcal M}\partial_{\mathcal K}A_{\mathcal N}
-\Gamma^{\mathcal K}{}_{\mathcal N}\partial_{\mathcal K}A_{\mathcal M}
+\{A_{\mathcal M},A_{\mathcal N}\}.
$$

Closure is inherited from canonical coordinates. However, even at $\alpha=\beta=0$ the fields live on full phase space, so this is not yet ordinary four-dimensional Maxwell theory.

# Independent verification

## Checked

- Mathematica gives $A^2-\lambda^2B^2/4=1$ and $B(A-\lambda B/2)=2F$ on the positive real branch.
- Mathematica reproduces the displayed regular series for $C$ and $D$, including the next coefficients.
- The relation $\bar\lambda=\log(1+\lambda)$ inverts to $\lambda=e^{\bar\lambda}-1$ and identifies the chart boundary.

## Source-derived

- The complete 14-page PDF and TeX source were inspected.
- The paper explicitly calls the representation nonunique and leaves physical interpretation of the phase-space gauge theory for future work.

## Not independently verified

- The full component Jacobian $\Gamma$ and all Poisson brackets of the all-order map were not recomputed symbolically in four dimensions.
- Global coverage across $\lambda=-1$, quantization, star-product ordering, Hilbert-space representations, and reduction from eight to four field-theory dimensions are not established.

# Takeaway

This is a reliable reusable Darboux parameterization on its stated patch. Cite the exact classical symplectic result and its regular limits, not a completed noncommutative gauge theory or quantum representation.
