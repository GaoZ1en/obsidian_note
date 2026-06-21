---
title: Naive generalization to second-order perturbations
date: 2026-06-02
summary: "Naively extends a first-order bulk-boundary charge identity to second-order perturbations in global AdS3 by treating the quadratic Einstein tensor as an effective gravitational source."
---

# Naive generalization to second-order perturbations

This note uses the conventions of `Articles/Quantization in AdS3/gravitational energy/perturbation.md`. In particular,

$$\begin{align}
g_{\mu\nu} =g^{(0)}_{\mu\nu} +\kappa h^{(1)}_{\mu\nu} +\kappa^2h^{(2)}_{\mu\nu} +O(\kappa^3),
\end{align}$$

and the sourced Einstein equation is

$$\begin{align}
\mathcal{E}_{\mu\nu}[g] =R_{\mu\nu}-\frac{1}{2}g_{\mu\nu}R-g_{\mu\nu} =\kappa^2T_{\mu\nu}.
\end{align}$$

The perturbative equations are

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h^{(1)}]=0,
\end{align}$$

and

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h^{(2)}] +\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] =T_{\mu\nu}.
\end{align}$$

The first-order sector is the same as the linearized-gravity discussion in the existing AdS$_3$ notes. The new bookkeeping is the second-order equation for $h^{(2)}_{\mu\nu}$.

## First-order bulk-boundary identity

The first-order statement in arXiv:2603.24932, https://arxiv.org/abs/2603.24932, is that, on a stationary asymptotically AdS background, the Hamiltonian variation associated with an asymptotic Killing field $\xi^\mu$ can be written as a bulk matter charge. For the pure-gravity AdS$_3$ problem, with no background electromagnetic field, the corresponding linear statement is

$$\begin{align}
\delta H_\xi[X] =\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}\xi^\nu S_{\mu\nu},
\end{align}$$

whenever the metric perturbation $X_{\mu\nu}$ solves

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[X]=S_{\mu\nu}.
\end{align}$$

Here $\Sigma$ is a constant-time Cauchy surface in global AdS$_3$, $\tau^{(0)\mu}$ is its future-pointing unit normal, and possible inner-boundary terms are absent. This is the form of the bulk-boundary identification that we will reuse in global AdS$_3$.

## Effective second-order source

In the present perturbative expansion the matter stress tensor appears in the second-order equation. Therefore define the effective second-order source

$$\begin{align}
\mathcal{T}^{(2)}_{\mu\nu} :=T_{\mu\nu}+T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}], \qquad
T^{\mathrm{grav}}_{\mu\nu}[h^{(1)}] :=-\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}].
\end{align}$$

The $h^{(2)}$ equation becomes

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h^{(2)}] =\mathcal{T}^{(2)}_{\mu\nu}.
\end{align}$$

This gives the naive second-order extension of the first-order result:

$$\begin{align}
H^{\mathrm{lin}}_\xi[h^{(2)}] =\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}\xi^\nu \left( T_{\mu\nu} -\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] \right).
\end{align}$$

The first term is the ordinary bulk matter charge. The second term is the effective gravitational charge carried by the first-order perturbation:

$$\begin{align}
H^{\mathrm{grav}}_\xi[h^{(1)}] :=-\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}\xi^\nu \mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}].
\end{align}$$

This is the sense in which $h^{(2)}_{\mu\nu}$ can be used as a naive gravitational-wave backreaction in AdS$_3$: the field $h^{(2)}_{\mu\nu}$ is sourced by the matter stress tensor together with the quadratic effective stress tensor of the first-order gravitational perturbation. In three-dimensional Einstein gravity this does not represent a local propagating graviton. It is a local bulk representative of the same quadratic gravitational energy that is captured more invariantly by the covariant phase-space canonical energy.

## Relation to canonical energy

The relation with the Sorce-Wald second-order formalism, https://arxiv.org/abs/1707.05862, is as follows. For a Killing field $\xi^\mu$, define the canonical energy of the first-order perturbation by

$$\begin{align}
\mathcal{W}_\Sigma[h^{(1)};\xi] :=\int_\Sigma \omega\left(g^{(0)};h^{(1)},\mathcal{L}_\xi h^{(1)}\right).
\end{align}$$

The second-order variational identity expresses the second-order boundary Hamiltonian in terms of this canonical energy, source terms, and possible boundary fluxes. In global AdS$_3$ with Brown-Henneaux falloffs and no horizon or inner boundary, the naive identification is

$$\begin{align}
H^{\mathrm{grav}}_\xi[h^{(1)}] \simeq \mathcal{W}_\Sigma[h^{(1)};\xi],
\end{align}$$

up to the usual covariant phase-space boundary ambiguities. Thus the effective stress tensor $-\mathcal{E}^{(2)}[h^{(1)},h^{(1)}]$ should be treated as a convenient bulk representative of the canonical energy density, not as a gauge-invariant local stress tensor.

For the global time translation $\xi=\partial_t$, the naive total second-order energy is

$$\begin{align}
E^{(2)} =\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}(\partial_t)^\nu T_{\mu\nu} +H^{\mathrm{grav}}_{\partial_t}[h^{(1)}].
\end{align}$$

For the rotational Killing field $\xi=\partial_\phi$, the same construction gives the second-order angular momentum

$$\begin{align}
J^{(2)} =\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)\mu}(\partial_\phi)^\nu T_{\mu\nu} +H^{\mathrm{grav}}_{\partial_\phi}[h^{(1)}].
\end{align}$$

These formulas are the global AdS$_3$ analogue of the bulk-boundary identification: the boundary charge of the second-order metric is equal to the bulk matter charge plus the quadratic gravitational energy of the first-order perturbation.

## Assumptions

- $\xi^\mu$ is an exact global AdS$_3$ Killing field or an allowed Brown-Henneaux asymptotic Killing field.
- $h^{(1)}_{\mu\nu}$ solves the vacuum linearized equation $\mathcal{E}^{(1)}[h^{(1)}]=0$.
- The matter source is conserved with respect to the background derivative, $\nabla^\mu T_{\mu\nu}=0$, and has falloff or compact support sufficient for the bulk integral to be finite.
- Gauge-invariant statements should be made using the integrated charge or canonical energy. The local tensor $T^{\mathrm{grav}}_{\mu\nu}$ is gauge dependent, although its charge is stable under proper diffeomorphisms preserving the boundary conditions.
