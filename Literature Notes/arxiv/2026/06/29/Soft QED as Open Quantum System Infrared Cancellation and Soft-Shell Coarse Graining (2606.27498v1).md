---
paper id: 2606.27498v1
title: "Soft QED as Open Quantum System: Infrared Cancellation and Soft-Shell Coarse Graining"
authors:
  - Soo-Jong Rey
publication date: 2026-06-25T19:32:28
abstract: |-
  The paper treats unresolved soft photons as an open-system environment for hard charged particles and hard photons. Inclusive QED probabilities are encoded by Kraus operators and effects, while Schwinger-Keldysh closed-time-path identities implement the cancellation between real and virtual soft contributions. Coarse graining a soft energy shell gives a completely positive Schur channel and a scale-local Lindblad-type dephasing flow.
comments: "23 pages, 1 figure"
url: https://arxiv.org/abs/2606.27498v1
summary: "Soft-photon inclusiveness is recast as a Kraus/Schwinger-Keldysh channel with shell-by-shell dephasing."
tags: []
---

Back to [[2026_06_29_overview]].

# Hard-Soft Split as a Quantum Instrument

The paper starts from a factorization of photon degrees of freedom into unresolved soft modes and resolved hard modes,

$$\begin{align}
\mathcal H_{\rm photon} =\mathcal H_{\rm soft}(\omega<\Lambda) \otimes \mathcal H_{\rm photon}(\omega>\Lambda).
\end{align}$$

Tracing over unresolved soft photons defines a channel on the hard sector. With the initial soft state taken as the soft vacuum, the Kraus operators are

$$\begin{align}
K_n=\langle n|S_\lambda|0\rangle,
\end{align}$$

and the reduced hard map is

$$\begin{align}
\mathcal E[\rho]=\sum_n K_n\rho K_n^\dagger .
\end{align}$$

Unitarity of the full soft-inclusive $S$-matrix gives completeness,

$$\begin{align}
\sum_nK_n^\dagger K_n=1.
\end{align}$$

For a hard final projector $\Pi_f$, the corresponding quantum instrument and effect are

$$\begin{align}
\mathcal I_f[\rho]=\sum_n\Pi_fK_n\rho K_n^\dagger\Pi_f, \qquad F_f=\sum_nK_n^\dagger\Pi_fK_n.
\end{align}$$

This formulation cleanly separates hard observables from unresolved soft environmental data.

# Leading-Soft Current and Coherent Displacement

At leading soft order, the emission amplitudes factorize through the eikonal current

$$\begin{align}
J^\mu(k)=\sum_a\eta_aQ_a\frac{p_a^\mu}{p_a\cdot k},
\end{align}$$

where $\eta_a$ records incoming or outgoing orientation. The soft factor can be represented by a coherent displacement operator,

$$\begin{align}
s_n[J]=\langle n|D(\alpha)|0\rangle,
\end{align}$$

so the amplitude takes the leading form

$$\begin{align}
\mathcal M_{fi,n}=\mathcal M^{\rm hard}_{fi}s_n[J].
\end{align}$$

The normalization

$$\begin{align}
\sum_n |s_n[J]|^2=1
\end{align}$$

is the microscopic reason the inclusive hard probability can remain finite after summing over the unresolved soft states.

# Closed-Time-Path Identity for Infrared Cancellation

The Schwinger-Keldysh part introduces doubled histories $J_+$ and $J_-$. The soft influence functional has the source structure

$$\begin{align}
\mathcal F[J_+,J_-] =\exp\left[ ie^2J_DD_RJ_c -\frac{e^2}{2}J_DD_HJ_D \right],
\end{align}$$

where

$$\begin{align}
J_D=J_+-J_-, \qquad J_c=\frac12(J_++J_-).
\end{align}$$

The cancellation is traced to the contour identity

$$\begin{align}
D_{++}+D_{--}=D_{+-}+D_{-+}.
\end{align}$$

This is the closed-time-path form of the real-virtual cancellation: the inclusive probability is normalized history by history rather than only after an informal sum over emissions.

# One-Loop Cancellation

The paper writes the leading logarithmic soft factor as

$$\begin{align}
N_{fi}=\frac{\alpha}{\pi}A_{fi}\log\frac{\Lambda}{\lambda}.
\end{align}$$

The virtual correction to the hard probability contributes

$$\begin{align}
-|\mathcal M^{\rm hard}_{fi}|^2N_{fi},
\end{align}$$

while real unresolved emission contributes

$$\begin{align}
+|\mathcal M^{\rm hard}_{fi}|^2N_{fi}.
\end{align}$$

Their sum cancels. In the open-system language this is not merely a diagrammatic accident; it is a consequence of trace preservation of the soft-reduced channel.

# Soft-Shell Schur Channel

The shell coarse graining introduces a branch space $\mathcal H_B$ and a controlled displacement operator,

$$\begin{align}
V_{21}=\sum_a |a\rangle\langle a|\otimes D(\alpha_a),
\end{align}$$

for a soft shell between $\Lambda_1$ and $\Lambda_2$. Tracing over that shell gives a Schur product channel,

$$\begin{align}
(\mathcal E_{21}\rho)_{ab}=C_{ab}\rho_{ab}, \qquad C_{ab}=\langle\alpha_b|\alpha_a\rangle .
\end{align}$$

The overlap can be written in terms of an angular integral $\gamma_{ab}$, giving the shell scaling

$$\begin{align}
|\rho_{ab}|\propto \left(\frac{\Lambda_2}{\Lambda_1}\right)^{-\gamma_{ab}}.
\end{align}$$

Diagonal elements are preserved, while off-diagonal coherence between different hard charge-current histories is suppressed.

# Scale-Local Lindblad Generator

In logarithmic shell time $\ell=\log\Lambda$, the channel is represented by a scale-local generator with diagonal jump operators,

$$\begin{align}
L_{\mathbf k,r} =\sqrt{\frac{e^2}{2(2\pi)^3}} \sum_a q_{ar}(\mathbf k)|a\rangle\langle a|.
\end{align}$$

The purity loss has the form

$$\begin{align}
\frac{d}{d\ell}\operatorname{Tr}\rho^2 =-2\sum_{a,b}\gamma_{ab}|\rho_{ab}|^2.
\end{align}$$

This is the formula-level reason to keep the paper: it turns unresolved soft radiation into an explicit dephasing flow on hard-sector histories.

# Use in Soft Charge and Memory Notes

The paper is relevant to soft charges, memory, and inclusive observables because it gives a channel-theoretic organization of real-virtual cancellation. It does not directly construct gravitational edge modes or a CPS charge. Its value is to provide clean open-system language for soft-sector tracing and decoherence.

# Verification Boundary

This note is source-derived from the official arXiv TeX source. I did not independently check the closed-time-path influence functional signs, the angular integral defining $\gamma_{ab}$, or the GKSL normalization. The formulas here should be rechecked before using them in a derivation about soft gravitational sectors, where spin and gauge constraints differ from QED.
