---
paper id: 2606.27308v1
title: Universal Lichnerowicz Lifting of Near-Horizon Soft Modes
authors:
  - Peng Cheng
  - Yu-Qi Liu
publication date: 2026-06-25T17:28
abstract: |-
  The paper studies the Lichnerowicz spectral origin of universal low-temperature one-loop thermodynamics in near-extremal black holes. It constructs normalizable transverse-traceless tensor zero modes from near-horizon reparametrizations and shows that small temperature lifts these modes with a universal eigenvalue shift after projection onto normalized tensor modes.
comments: "36 pages, 2 tables"
url: https://arxiv.org/abs/2606.27308v1
summary: "Near-horizon reparametrization soft modes become transverse-traceless tensor zero modes whose finite-temperature Lichnerowicz lifting reproduces the Schwarzian soft sector."
tags: []
---

Back to [[2026_06_26_overview]].

This is a medium-priority technical note. Its value is spectral rather than charge-theoretic: it gives a reusable mechanism for near-horizon zero-mode lifting in one-loop determinant calculations.

# Operator setup

The field is a metric fluctuation $h_{\mu\nu}$ around an extremal near-horizon background. The relevant gauge and sector are:

$$\begin{align}
\nabla_\mu h^{\mu\nu}=0,\qquad h=0,
\end{align}$$

with only the two-dimensional throat components $h_{ab}$ turned on. The quadratic operator is the transverse-traceless Lichnerowicz operator. In the notation of the paper, the relevant part has the schematic form

$$\begin{align}
h^*_{\alpha\beta}\Delta_L^{\alpha\beta\mu\nu}h_{\mu\nu} =h^*_{\alpha\beta} \left( \frac12\bar g^{\alpha\mu}\bar g^{\beta\nu}\bar\square +\bar R^{\alpha\mu\beta\nu} -\frac{\Lambda}{2}\bar g^{\alpha\mu}\bar g^{\beta\nu} \right)h_{\mu\nu} +\text{matter terms}.
\end{align}$$

The source argues that the relevant matter terms do not affect the small-temperature eigenvalue shift in this soft tensor sector.

# Tensor zero modes from reparametrizations

On Euclidean $M_2$, the scalar generator obeys

$$\begin{align}
\frac{1}{y^2-1}\partial_\tau^2\Phi +\partial_y\bigl((y^2-1)\partial_y\Phi\bigr)-2\Phi=0.
\end{align}$$

With $\Phi=e^{in\tau}\phi(y)$, the normalizable solutions have

$$\begin{align}
\phi_n(y)\propto \left(\frac{y-1}{y+1}\right)^{|n|/2}(|n|+y), \qquad |n|\ge2.
\end{align}$$

The scalar generates a diffeomorphism

$$\begin{align}
\zeta_n^a=\epsilon^{ab}\bar\nabla_b\Phi_n,
\end{align}$$

and the associated tensor mode is

$$\begin{align}
h_{ab}^{(n)}=\bar\nabla_a\zeta_b+\bar\nabla_b\zeta_a.
\end{align}$$

The $n=0,\pm1$ modes are excluded as $SL(2,\mathbb R)$ Killing modes, leaving the expected $\mathrm{Diff}(S^1)/SL(2,\mathbb R)$ soft sector.

# Finite-temperature lifting

Small temperature deforms the metric and the operator:

$$\begin{align}
g_{\mu\nu}=\bar g_{\mu\nu}+T\,\delta g_{\mu\nu}, \qquad \Delta_L=\bar\Delta_L+\delta\Delta_L.
\end{align}$$

The first-order shift is

$$\begin{align}
\delta\lambda_n =\frac{1}{16\pi G}\int d^4x\sqrt{\bar g}\, \bar h^{(n)*}_{\alpha\beta} \delta\Delta_L^{\alpha\beta\mu\nu} h^{(n)}_{\mu\nu}.
\end{align}$$

For static spherically symmetric backgrounds the projected result is universal:

$$\begin{align}
\delta\lambda_n =\frac{\epsilon}{8G}\frac{|n|T}{r_i}, \qquad |n|\ge2,
\end{align}$$

where $r_i$ is the degenerate horizon radius and $\epsilon=+1,-1,0$ for AdS$_2$, dS$_2$, and flat branches.

The paper's key mechanism is that the local integrand depends on parent-geometry data such as derivatives of the blackening factor, but those details cancel after projection onto normalized tensor modes.

# Rotating throats and angular projection

For warped rotating throats, angular data survive only through an average warp factor:

$$\begin{align}
\delta\lambda_n =\frac{1}{\langle\sigma\rangle} \frac{\epsilon}{8G}\frac{|n|T}{r_i}.
\end{align}$$

Here

$$\begin{align}
\langle\sigma\rangle= \frac{\int_0^\pi\sigma(\theta)\sin\theta\,d\theta} {\int_0^\pi\sin\theta\,d\theta}.
\end{align}$$

For the Kerr-type warp

$$\begin{align}
\sigma(\theta)=1+\frac{a^2}{r_i^2}\cos^2\theta,
\end{align}$$

one gets

$$\begin{align}
\langle\sigma\rangle^{-1}=\frac{3r_i^2}{3r_i^2+a^2}.
\end{align}$$

Thus rotation changes the projection normalization but not the radial soft-mode lifting mechanism.

# Schwarzian matching

The projected radial effective action becomes a boundary term:

$$\begin{align}
I_{\rm eff}\sim T N_n^2\int_1^\infty dy\,\partial_yF(y) =TN_n^2[F(\infty)-F(1)].
\end{align}$$

The boundary contribution reproduces the quadratic Schwarzian kernel

$$\begin{align}
I_{\rm Sch}^{(2)}\propto T\,n^2(n^2-1)\bar\epsilon_n\epsilon_n, \qquad |n|\ge2.
\end{align}$$

After translating the boundary reparametrization amplitude into bulk-normalized tensor modes, the kernel produces the linear lifting

$$\begin{align}
\delta\lambda_n\propto \epsilon |n|T.
\end{align}$$

# Use for spectral projects

The reusable dictionary is:

$$\begin{align}
\text{large diffeomorphism} \longrightarrow
\text{TT tensor zero mode} \longrightarrow
\text{finite-temperature Lichnerowicz lifting} \longrightarrow
\text{Schwarzian soft determinant}.
\end{align}$$

For heat-kernel or one-loop notes, the zero-mode contribution should be treated as

$$\begin{align}
\delta\log Z=-\frac12\sum_{|n|\ge2}\log\delta\lambda_n
\end{align}$$

only in the sector where the lifting calculation applies. The dS$_2$ branch has negative lifted eigenvalues and needs a contour or analytic-continuation prescription; the flat branch does not carry the same normalizable tensor soft sector.

# Verification note

The formulas above are source-derived from official arXiv HTML/PDF sources. The Lichnerowicz variation, normalization integrals, total-derivative reduction, and determinant contribution were not independently reproduced with Mathematica or xAct in this run.
