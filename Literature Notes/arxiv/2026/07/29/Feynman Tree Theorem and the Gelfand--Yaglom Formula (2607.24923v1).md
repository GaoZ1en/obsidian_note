---
paper id: 2607.24923v1
title: Feynman Tree Theorem and the Gelfand--Yaglom Formula
authors:
  - Ipak Fadakar
  - Guilherme L. Pimentel
  - Behrang Tafreshi
publication date: 2026-07-27T18:00
abstract: |-
  The paper derives the one-dimensional Gelfand--Yaglom determinant formula by replacing Dirichlet propagator loops with trees built from retarded Green functions. It also gives a matrix formulation for general linear boundary conditions and explains the obstruction to a direct higher-dimensional field-theory extension.
comments: "4 pages"
url: https://arxiv.org/abs/2607.24923v1
summary: "A compact causal derivation of functional-determinant ratios that exposes the boundary correction converting a retarded inverse into a Dirichlet Green function."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T2-spectral`, `T1-boundary`.

This note is worth keeping because it makes the boundary-condition dependence of a determinant completely explicit. The useful object for current boundary work is the finite-rank correction that converts a causal Green function into the Green function satisfying the selected endpoint conditions.

## Initial-value operator and Volterra solution

Consider

$$
\mathcal O_g=\partial_t^2+\omega^2-g\,u(t)
$$

on $t_i\leq t\leq t_f$. Let $y_g(t)$ solve

$$
\mathcal O_g y_g=0,
\qquad
y_g(t_i)=0,
\qquad
\dot y_g(t_i)=1.
$$

Using the retarded Green function of $\mathcal O_0$, the equation is equivalent to a Volterra integral equation. Iterating it generates time-ordered trees: every retarded line points from an earlier to a later time, so a closed directed cycle is impossible.

## From the retarded inverse to Dirichlet boundary data

The retarded Green function is adapted to an initial-value problem but does not vanish at both endpoints. The exact Dirichlet Green function is

$$
G_D(t,t')
=
G_R(t,t')
-
\frac{G_R(t,t_i)\,G_R(t_f,t')}
{G_R(t_f,t_i)}.
$$

The second term is a rank-one boundary correction. It removes the unwanted value at $t_f$ while preserving the delta-function equation in the interior.

In the loop expansion

$$
\log\frac{\det\mathcal O_g}{\det\mathcal O_0}
=
-\sum_{n\geq1}\frac{g^n}{n}
\operatorname{Tr}\bigl[(G_Du)^n\bigr],
$$

any cycle made only from $G_R$ vanishes by incompatible time ordering. Every surviving loop must contain at least one boundary-cut term. Cutting a loop at such a term produces the same retarded trees that appear in the Volterra expansion of $y_g(t_f)$.

Summing the marked cuts and accounting for cyclic symmetry yields

$$
\boxed{
\frac{\det\mathcal O_g}{\det\mathcal O_0}
=
\frac{y_g(t_f)}{y_0(t_f)}
}.
$$

This is the Gelfand--Yaglom formula in the normalization fixed by the common initial conditions.

## General linear boundary conditions

Introduce the first-order phase-space vector

$$
\mathbf y(t)=
\begin{pmatrix}
y(t)\\
\dot y(t)
\end{pmatrix},
\qquad
\mathbf y(t_f)=U_g(t_f,t_i)\mathbf y(t_i).
$$

For boundary matrices $M_i$ and $M_f$,

$$
M_i\mathbf y(t_i)+M_f\mathbf y(t_f)=0,
$$

the characteristic matrix is

$$
\mathbb M_g=M_i+M_fU_g(t_f,t_i).
$$

The corresponding Green function differs from the retarded one by a finite-dimensional boundary correction involving $\mathbb M_g^{-1}$. Repeating the loop-cutting argument gives

$$
\boxed{
\frac{\det\mathcal O_g}{\det\mathcal O_0}
=
\frac{\det\mathbb M_g}{\det\mathbb M_0}
}.
$$

Dirichlet, Neumann, Robin, periodic, and mixed endpoint conditions are therefore different choices of the finite-dimensional characteristic matrix rather than different bulk determinant mechanisms.

## Boundary and spectral interpretation

- The retarded kernel contains the causal bulk propagation; $\mathbb M_g^{-1}$ contains all endpoint-condition dependence.
- The zeros of $\det\mathbb M_g$ are precisely the eigenvalue condition. The determinant ratio packages how the boundary-value spectrum moves with $g$.
- This is closely analogous to a Dirichlet-to-Neumann construction, but the paper works with a one-dimensional second-order operator and a finite-dimensional endpoint space.
- The derivation does not automatically extend to a field theory: spatial momentum/phase-space integrations reintroduce loop variables, and a general boundary-value problem may not admit one retarded Cauchy kernel that carries all relevant data.

## Verification boundary

### Checked

- Mathematica independently verified the Dirichlet identity: the displayed rank-one correction satisfies both endpoint conditions and leaves the Green-function jump unchanged.
- For constant $u(t)=1$, $\Omega_g^2=\omega^2-g$ gives
  $y_g(t_f)=\sin(\Omega_gT)/\Omega_g$. Mathematica expanded
  $\log[y_g(t_f)/y_0(t_f)]$ through $g^2$ and reproduced the first two Dirichlet trace terms with zero residual.

### Blocked

- The all-order combinatorial identification between marked loop cuts and Volterra trees was followed from the paper rather than formalized in a separate graph proof.
- No higher-dimensional determinant or QFT extension is established.

### Failed

- No independently attempted identity failed. Treating a purely retarded determinant as though it already imposed the endpoint condition would be incorrect; the finite-rank correction is essential.
