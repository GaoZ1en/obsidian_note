---
paper id: 2606.31987v1
title: "BMPV black hole at first order in $\\alpha'$"
authors:
  - Alejandro Ruipérez
publication date: 2026-06-30T17:25:31
abstract: |-
  The paper studies the heterotic string low-energy effective action and derives an analytic first-order alpha-prime correction to the supersymmetric extremal BMPV black hole with three unequal charges. The corrected solution interpolates between an asymptotically flat region and the near-horizon geometry, and its entropy is computed with a generalized Wald formula that includes the Lorentz Chern-Simons term, matching recent supersymmetric-index results.
comments: "24 pages"
url: https://arxiv.org/abs/2606.31987v1
summary: "A higher-derivative black-hole reference for corrected BMPV geometry and generalized Wald entropy with Lorentz Chern-Simons terms."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is useful as a Wald-entropy and higher-derivative black-hole reference, but it is not primarily a phase-space or boundary-charge paper.

# Heterotic first-order action

The source works in the low-energy heterotic effective action at first order in $\alpha'$. The important structural feature is the Lorentz Chern-Simons contribution inside the three-form field strength, so the entropy cannot be read from a naive metric-only higher-curvature Wald formula.

The corrected equations are solved perturbatively around the two-derivative BMPV solution. The solution is organized by charge functions and rotation data, then corrected by the Kalb-Ramond equation, Bianchi identity, dilaton equation, and Einstein equations.

# BMPV embedding and corrected functions

The two-derivative BMPV black hole is embedded in the heterotic theory with three charges and rotation parameter $a$. At first order in $\alpha'$, the source gives corrected harmonic functions. The non-supersymmetric comparison section displays the same pattern compactly, for example:

$$
\begin{align}
Z_0
&=
1+\frac{q_0}{r^2}
+\frac{q_0^2\alpha'}{r^2(r^2+q_0)^2}
+O(\alpha'^2),\\
Z_+
&=
1+\frac{q_+}{r^2}
-\frac{(1+\varepsilon)\alpha'}{r^2(r^2+q_0)(r^2+q_-)}
\left(q_+q_- - \frac{2a^2}{r^2+q_0}\right)
+O(\alpha'^2),\\
Z_-
&=
1+\frac{q_-}{r^2}
+O(\alpha'^2).
\end{align}
$$

The supersymmetric branch corresponds to the sign choice compatible with the Killing-spinor equations; the appendix checks the preserved supersymmetry conditions.

# Near-horizon limit

The corrected solution interpolates between the asymptotically flat region and the near-horizon geometry. The near-horizon charge variables $\hat q_I$ and corrected angular parameter $\hat a$ are the variables entering the entropy formula.

For the non-supersymmetric comparison, the paper records

$$
\begin{align}
\hat q_+=q_+,\qquad
\hat q_0=q_0\left(1+\frac{\alpha'}{q_0}\right),\qquad
\hat a=a,\qquad
\varepsilon=-1.
\end{align}
$$

The supersymmetric case differs because the Lorentz-Chern-Simons-sensitive torsionful connection contributes to the generalized Wald entropy.

# Generalized Wald entropy

The paper uses a generalized Wald formula suitable for heterotic actions with Lorentz Chern-Simons terms. The local lesson is that the entropy calculation must include the torsionful spin-connection contribution, not only the area correction.

The non-supersymmetric comparison simplifies to an area-type expression,

$$
\begin{align}
\mathcal S_{\rm non\mbox{-}susy}
=
\frac{\pi^2}{2G_5}
\sqrt{q_+q_-q_0(1-\mathsf w^2)}
\left(1+\frac{\alpha'}{2q_0}\right),
\end{align}
$$

but the source treats the supersymmetric BMPV entropy as the reliable result and compares it with supersymmetric-index calculations.

# Use for local Wald/CPS notes

The transferable point is a caution about higher-derivative entropy with Chern-Simons terms:

$$
\begin{align}
\text{Wald entropy}
\quad\text{must be replaced by}\quad
\text{generalized Wald entropy including Lorentz Chern-Simons data}.
\end{align}
$$

This is relevant when local notes discuss Noether-charge entropy in theories whose Lagrangians are not strictly covariant under local Lorentz transformations.

# Verification note

No independent $\alpha'$ equation-of-motion or generalized-Wald calculation was performed for this medium note. The displayed corrected functions and entropy logic are source-derived from official arXiv HTML. A later check should begin with the source's normalization of the heterotic action, torsionful spin connection, and five-dimensional charge conventions.
