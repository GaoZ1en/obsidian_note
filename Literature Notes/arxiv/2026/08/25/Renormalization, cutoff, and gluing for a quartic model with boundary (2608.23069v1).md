---
paper id: 2608.23069v1
title: Renormalization, cutoff, and gluing for a quartic model with boundary
authors:
  - A. V. Ivanov
publication date: 2026-08-24T10:14
abstract: |-
  The paper studies a three-dimensional quartic scalar model on a compact Riemannian manifold with boundary, using an averaging cutoff. It derives bulk and boundary counterterms and argues that compatibility with cutting and gluing renormalizes the boundary Dirichlet-to-Neumann Gaussian weight.
comments: "12 pages, 18 figures"
url: https://arxiv.org/abs/2608.23069v1
summary: "A directly relevant action-first boundary-gluing model whose qualitative mechanism is useful, but whose displayed one-loop boundary coefficient drops a factor of pi and whose renormalized gluing theorem has notation and imported-proof gaps."
tags: []
---

Daily package: [[2026_08_25_overview]].

# Direct verdict

Incorrect as written. Under the paper's displayed Green-function normalization,

$$
\widehat\rho(x,x)=\frac{1}{8\pi s},
$$

the boundary logarithm derived from the one-loop tadpole is

$$
-\frac{1}{4}\int_{1/\Lambda}^{1/\sigma_1}
\frac{ds}{8\pi s}
=-\frac{\log(\Lambda/\sigma_1)}{32\pi},
$$

not $-\log(\Lambda/\sigma_1)/32$. The printed boundary counterterm therefore misses a factor $1/\pi$ at the very step used to establish Theorem 1. The subsequent cut counterterm and boundary-coupling shift inherit an unresolved normalization problem.

The qualitative statement is nevertheless correct under precise restrictions: perturbation theory is formal and order-by-order in $\hbar$; the manifold is smooth, compact, three-dimensional, and has an exact product metric in a boundary collar; the fluctuation obeys Dirichlet conditions; the background is the free harmonic extension of its trace; and the bare gluing identity from the cited previous work is assumed. This paper does not construct a nonperturbative measure, a continuum Hilbert-space factorization, or an independent boundary oscillator.

Reason codes: `T1-boundary`, `T1-gluing`, `T1-renormalization`, `T1-action-first`, `T2-Green-kernel`.

# Source map

1. Section 1 motivates boundary-localized divergences and compatibility with cutting and gluing.
2. Section 2 fixes the manifold, product collar, Dirichlet problem, averaging regulator, formal connected-diagram action, and the bare gluing statement imported from earlier work.
3. Section 3 states the bulk and boundary counterterms, Theorems 1 and 2, and the proposed renormalization of the boundary coupling and Dirichlet-to-Neumann Gaussian weight.
4. Section 4 analyzes the Green kernel near the diagonal and the boundary, then treats orders $\hbar$, $\hbar^2$, and higher.
5. Section 5 records open extensions: nonlinear classical backgrounds, non-product collars, nonsmooth boundaries, and four dimensions.

# Action, allowed fields, and boundary data

Let $(\mathcal M,g)$ be a smooth compact connected oriented Riemannian three-manifold with smooth closed boundary $\Sigma$. The paper assumes a collar

$$
\Sigma\times[0,1/\mu],
\qquad
g=\operatorname{diag}(g_\Sigma,1),
$$

with $g_\Sigma$ independent of the normal coordinate. This is stronger than the existence of an ordinary collar.

For an $n$-component scalar, the quadratic operator is

$$
A^{ab}=-\delta^{ab}\Delta_g+t_2^{ab}.
$$

The field is decomposed as

$$
\phi=b+\varphi,
\qquad
A b=0,
\qquad
b|_\Sigma=\eta,
\qquad
\varphi|_\Sigma=0.
$$

Thus $\eta$ is the boundary trace of the harmonic background. It is not introduced as an additional canonical coordinate with its own boundary kinetic term. The classical action is written schematically as

$$
S_{\mathrm{cl}}[\phi]=S[\phi]+\hbar S_4[\phi],
$$

so the quartic interaction carries an explicit $\hbar$ bookkeeping factor.

# Averaging cutoff and Green-kernel decomposition

The regulated integration domain is

$$
\mathcal M_\Lambda
=\{x\in\mathcal M:r(x,\Sigma)\geq \Lambda^{-1}\}.
$$

Fields and Green kernels are smoothed by a local averaging operator $H_x^\Lambda$ built from a compactly supported radial kernel. Near the diagonal and, separately, near the boundary, the regulated Dirichlet Green kernel is organized as

$$
G^\Lambda=\rho_\Lambda+p_0^\Lambda,
$$

and

$$
G^\Lambda=\rho_\Lambda-\widehat\rho_\Lambda+p_1^\Lambda.
$$

The leading unsmoothed image terms are

$$
\rho(x,y)=\frac{1}{4\pi r(x,y)},
\qquad
\widehat\rho(x,y)=\frac{1}{4\pi\widehat r(x,y)},
$$

where in collar coordinates

$$
\widehat r^2=r_\Sigma^2+(s+t)^2.
$$

At coincident tangential position and $s=t$ this gives $\widehat r=2s$ and hence $\widehat\rho(x,x)=1/(8\pi s)$.

# Counterterm ledger

The flat-space mass shifts displayed by the paper are

$$
\Delta_1^{ab}=-\frac12\Lambda\alpha\,t_4^{abcc},
$$

and

$$
\Delta_2^{ab}
=\frac{L}{96\pi^2}
t_4^{ac_1c_2c_3}t_4^{bc_1c_2c_3},
\qquad
L=\log(\Lambda/\sigma).
$$

The proposed boundary field counterterm is

$$
S_\Sigma[\eta]
=\frac{L}{32}
\int_\Sigma d^2u\,\sqrt{g_\Sigma}\,
\eta_a\eta_b t_4^{abcc}.
$$

It is interpreted as a shift of an extended boundary quadratic coupling,

$$
t_{\mathrm b}^{ab}
\longmapsto
t_{\mathrm b}^{ab}+\frac{\hbar L}{8}t_4^{abcc}.
$$

These two printed coefficients cannot be accepted without repair because the source's own one-loop integral gives $L/(32\pi)$ rather than $L/32$. No alternate Green normalization or compensating factor of $\pi$ is stated at that step.

# One-loop boundary calculation

After the bulk $\Lambda\alpha$ divergence is cancelled by $\Delta_1$, the paper isolates the image contribution

$$
-\frac14
\int_{1/\Lambda}^{1/\sigma_1}ds
\int_\Sigma d^2u\,\sqrt{g_\Sigma}\,
b_a^\Lambda b_b^\Lambda t_4^{abcc}
\widehat\rho_\Lambda(x,x).
$$

Replacing the leading boundary values by $b^\Lambda\to\eta$ and $\widehat\rho_\Lambda\to1/(8\pi s)$ gives

$$
-\frac{L}{32\pi}
\int_\Sigma d^2u\,\sqrt{g_\Sigma}\,
\eta_a\eta_b t_4^{abcc}.
$$

The PDF instead prints $-L/32$ on page 7. This is a direct algebraic mismatch, not merely an omitted proof.

# Gluing statement and canonical interpretation

Cut $\mathcal M$ along a hypersurface $Y$ into $\mathcal M_l$ and $\mathcal M_r$, and integrate over the common trace $\psi$ with the Gaussian quadratic form given by the Dirichlet-to-Neumann operator. The paper proposes

$$
S_Y[\psi]
=\frac{L}{8}\int_Yd^2u\,\sqrt{g_Y}\,
\psi_a\psi_b t_4^{abcc},
$$

and an extra weight

$$
\exp\bigl(-2\hbar S_Y[\psi]-2C_Y\bigr).
$$

The useful structural lesson is action-first: the common trace is integrated with the boundary Gaussian determined by bulk Dirichlet-to-Neumann data, and boundary divergences renormalize that quadratic form. Nothing here establishes a tensor-product factorization or adds an autonomous boundary oscillator.

Theorem 2 is not self-contained. Its proof is reduced to a citation of the earlier bare gluing result plus cancellation of the new boundary terms. Moreover, the theorem first constructs $W_{\mathrm{ren}}^\Lambda$ on each side but then places $W_{\mathrm{reg}}^\Lambda$ in the left-hand integrand; after the scar-removal limit it again prints $W_{\mathrm{reg}}^\Lambda$ rather than $W_{\mathrm{ren}}^\Lambda$. The surrounding prose and the right-hand side indicate that these are likely notation errors, but the statement as printed is internally inconsistent.

# Higher-order scope

The $\hbar^2$ analysis reduces remaining singular parts to local bulk and boundary constants and introduces a numerical constant

$$
\theta=\theta_1+\theta_2\approx0.629615,
$$

with

$$
\theta_1
=\frac23-2\log3-\frac{3\pi^2}{8}
-\frac32\log2\log3
+\frac32\bigl(\operatorname{Li}_2(3)-\operatorname{Li}_2(-3)
+i\pi\log3\bigr)
\approx0.015424,
$$

and $\theta_2\approx0.61419$ from a numerical integral. The analytic value of $\theta_1$ is reproducible; the $\theta_2$ integral is described but no code or numerical data are supplied.

For higher orders the proof appeals to the standard $\mathcal R$-operation and a finite list of divergent substructures. This is a formal perturbative finiteness claim. It does not supply uniform estimates in order, Borel summability, a probability measure, or a cutoff-independent state space.

# Verification log

- `Checked` Official PDF, abstract page, source archive, and section structure were retrieved from arXiv. The PDF has 12 pages and the displayed formulas on pages 4, 5, 6, and 7 were visually inspected.
- `Checked` Mathematica evaluates the boundary integral to $\log(\sigma/\Lambda)/(32\pi)=-L/(32\pi)$ under $\Lambda>\sigma>0$.
- `Failed` The paper prints $-L/32$ after explicitly substituting $\widehat\rho(x,x)=1/(8\pi s)$. The missing $1/\pi$ invalidates the displayed cancellation with $S_\Sigma$ as written.
- `Failed` Theorem 2 switches from the constructed renormalized sub-actions to regularized sub-actions in its gluing integrand and again ends with a regularized rather than renormalized action.
- `Checked` Mathematica evaluates the source's analytic expression for $\theta_1$ as $0.0154241894\ldots$, consistent with the quoted $0.015424\pm10^{-6}$; adding the quoted $\theta_2$ gives $0.6296141894\ldots$, consistent with $0.629615\pm10^{-6}$.
- `Blocked` The numerical integral defining $\theta_2$ cannot be independently reproduced from a supplied code or dataset because neither is included.
- `Blocked` The bare cutoff-compatible gluing theorem is imported from reference [29] and is not reproved in this paper.
- `Not checked` The all-orders forest/$\mathcal R$-operation argument was not reconstructed graph by graph.

# Relevance to the current gluing program

The paper is unusually close to the finite-port scalar agenda because it keeps the order action $\to$ Dirichlet variation $\to$ harmonic lifting $\to$ regulated Green kernel $\to$ common boundary trace $\to$ Gaussian gluing. Its main transferable point is that the boundary trace is a port variable whose quadratic weight is induced and renormalized by the bulk problem. The coefficient failure means that its explicit boundary renormalization cannot be imported unchanged; only the structural mechanism should be retained pending correction.
