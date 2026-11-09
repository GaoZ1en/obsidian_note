---
paper id: 2608.02987v1
title: Quantum Anomalies of Tensionless Bosonic Strings
authors:
  - Bin Chen
  - Zezhou Hu
publication date: 2026-08-04T00:54
abstract: |-
  The paper compares BRST anomalies for conformal, ILST, Carroll-Weyl, and hybrid tensionless bosonic strings in induced and flipped vacua. It separates Jacobi-allowed cocycles, coboundaries, and representation-dependent anomaly coefficients, and shows that worldsheet BRST nilpotency need not imply quantum preservation of target-space conformal generators.
comments: "30 pages and 4 appendices"
url: https://arxiv.org/abs/2608.02987v1
summary: "A four-model anomaly ledger showing exactly which conclusions depend on the constraint complex, vacuum polarization, and regulator."
tags: []
---

Back to [[2026_08_05_overview]].

The central lesson is that the common gauge-fixed matter action does not define a common quantum theory. The retained constraints determine the ghost algebra; the vacuum determines contractions; and the regulator can decide whether a formal central term even satisfies Jacobi before it is interpreted as an anomaly.

## One Matter Action, Four Constraint Complexes

All four models share

$$\begin{align}
S_{\mathrm{flat}}=\frac1{2\pi}\int d^2\sigma\, \frac12(\partial_\tau X)^2, \tag{2.1}
\end{align}$$

with modes

$$\begin{align}
X^M(\tau,\sigma)=\sum_mx_m^Me^{-im\sigma} +\tau\sum_np_n^Me^{-in\sigma}, \qquad [x_m^M,p_n^N]=i\delta_{m+n,0}\eta^{MN}.
\end{align}$$

The common bilinears are

$$\begin{align}
M^{-1}_m=\frac12\sum_k:p_kp_{m-k}:, \quad M^0_m=\frac12\sum_k:x_kp_{m-k}:,
\end{align}$$

$$\begin{align}
M^1_m=\frac12\sum_k:x_kx_{m-k}:, \quad M^L_m=-i\sum_k k:x_kp_{m-k}:.
\end{align}$$

| Formulation | Independent constraints | Residual algebra | Ghost branches |
| --- | --- | --- | ---: |
| Conformal string | $M^{-1},M^0,M^1,M^L$ | $\widehat{\mathfrak{sl}}(2)\rtimes\mathrm{Vir}$ | 4 |
| ILST null string | $M^{-1},M^L$ | $\mathfrak{bms}_3$ | 2 |
| Carroll-Weyl string | $M^{-1},M^0,M^L$ | $\widehat{\mathfrak{aff}}(1)\rtimes\mathrm{Vir}$ | 3 |
| Hybrid null string | $M^{-1},M^{L_\lambda}$ | $\mathfrak g^{(1)}_\lambda$ | 2 |

For the hybrid theory,

$$\begin{align}
M^{L_\lambda}=M^L+(\lambda-1)\partial_\sigma M^0, \qquad [M^{L_\lambda}_m,M^{-1}_n] =(\lambda m-n)M^{-1}_{m+n}.
\end{align}$$

Here $M^0$ is a kinematic bilinear, not an independent constraint.

## Universal BRST Form and Cocycle Classification

With a composite constraint label $\mathcal A=(i,m)$,

$$\begin{align}
Q_0=c^{\mathcal A}M_{\mathcal A} -\frac12f_{\mathcal A\mathcal B}{}^{\mathcal C} c^{\mathcal A}c^{\mathcal B}b_{\mathcal C}.
\end{align}$$

Normal ordering permits zero-mode shifts

$$\begin{align}
Q=Q_0-\sum_iA_ic^i_0, \qquad \widetilde\phi^i_m=\{b_{i,m},Q\} =M^i_m+G^i_m-A_i\delta_{m0}.
\end{align}$$

If

$$\begin{align}
[\widetilde\phi^i_m,\widetilde\phi^j_n] =U^{ij}{}_r(m,n)\widetilde\phi^r_{m+n} +d^{ij}_m\delta_{m+n,0},
\end{align}$$

then

$$\begin{align}
Q^2=\frac12\sum_{m,i,j}d^{ij}_m c^i_{-m}c^j_m.
\end{align}$$

The paper first solves Jacobi, then separates genuine cohomology classes from linear coboundaries removable by $A_i$, and finally asks which allowed classes are realized in each vacuum. This order prevents a regulator artifact that violates Jacobi from being misread as a critical-dimension condition.

## Induced Vacuum and the Symmetric Trace Prescription

The universal matter polarization is

$$\begin{align}
p_n^M|0\rangle_{\mathrm{Ind}}=0 \qquad(\forall n\in\mathbb Z).
\end{align}$$

The divergent contact trace is assigned

$$\begin{align}
S_\alpha=\left.\sum_{r\in\mathbb Z}1\right|_\alpha=-2\alpha.
\end{align}$$

For the conformal string, the unregularized central data give the shift-independent Jacobi mismatch

$$\begin{align}
\mathcal J_m =d^{1,-1}_m-\frac{2i}{m}d^{0,L}_m =\frac{D-2}{2}S_\alpha.
\end{align}$$

At generic $\alpha\neq0$, this is not a two-cocycle and is neither a genuine central extension nor a removable ordering term. The source chooses

$$\begin{align}
\alpha=0, \qquad S_0=1+2\zeta(0)=0.
\end{align}$$

Under this symmetric prescription, nontrivial induced-vacuum anomalies vanish in all four formulations; remaining linear pieces are coboundaries. “No critical dimension” is therefore conditional on this compatible polarization and regularization, not a regulator-independent theorem.

## Flipped-Vacuum Anomaly Table

The flipped vacuum annihilates positive modes of $x,p,b,c$, together with a specified zero-mode ordering. Step-function contractions reduce central terms to finite sums. The results are:

| Model | Independent nontrivial conditions | Consequence |
| --- | --- | --- |
| Conformal | $(D-26)/6=0$, $i((D+2)/4-2)=0$ | Incompatible $D=26$ and $D=6$. |
| ILST | $(D-26)/6=0$ | $D=26$. |
| Carroll-Weyl | $(D-27)/6=0$, $i(D/4-1)=0$, $i(D/4-3/2)=0$ | Incompatible $D=27,4,6$. |
| Hybrid | One Virasoro coefficient | $D=D(\lambda)$. |

The hybrid curve is

$$\begin{align}
D(\lambda) =\frac{2(6\lambda^2+6\lambda+14)}{3\lambda^2-1}. \tag{4.4}
\end{align}$$

It contains $D(1)=26$. For integer $\lambda$ and integer $D\ge4$, the paper finds only

$$\begin{align}
(\lambda,D)=(1,26),(-1,14).
\end{align}$$

The $\lambda=-1$ point is an algebraic extension and is not generated by finite values of the Stueckelberg parameter used earlier in the construction.

## Worldsheet Nilpotency Versus Target-Space Conformal Symmetry

For ILST, the target dilatation and special-conformal generators require ghost completion,

$$\begin{align}
\mathcal D=\mathcal D_{\mathrm{matter}}-2iJ_0, \qquad K^\mu=K^\mu_{\mathrm{matter}} -2i\sum_l:x^\mu_{-l}J_l:.
\end{align}$$

In the induced vacuum, their obstruction is proportional to $S_\alpha$, so the $\alpha=0$ prescription makes the completed charges BRST closed.

In the flipped vacuum, the anomaly contains two independent operator structures,

$$\begin{align}
\mathcal A^\mu_{\mathrm{Flip}} =\sum_{n\ne0}A_n(D)c^L_{-n}x_n^\mu +\sum_nB_n(D)c^{-1}_{-n}p_n^\mu,
\end{align}$$

with mode-dependent coefficients that cannot vanish simultaneously for any $D$. Thus

$$\begin{align}
Q_{\mathrm{worldsheet}}^2=0 \centernot\Longrightarrow
[K^\mu,Q_{\mathrm{worldsheet}}]=0.
\end{align}$$

At $D=26$, flipped ILST cancels the worldsheet BRST anomaly but the displayed normal-ordered special-conformal representative is not BRST closed.

## Exact Claim Boundary

The paper does not analyze the oscillator vacuum, full BRST cohomology, spectrum, amplitudes, or positivity. Exceptional hybrid cocycles are Jacobi-allowed but vanish in the two representations computed. The target-space obstruction is proved for the displayed representative of $K^\mu$. The induced-vacuum result uses the symmetric $\alpha=0$ generalized-zeta prescription. These distinctions should remain attached to any later citation of “critical dimension” or “anomaly-free.”

## Verification Note

- **Checked with Mathematica:** $D(1)=26$, $D(-1)=14$, and a direct integer scan over $-100\le\lambda\le100$ found only $(1,26)$ and $(-1,14)$ with integer $D\ge4$. The Carroll-Weyl conditions have no common root.
- **Source-derived:** Jacobi recurrences, vacuum contractions, ghost signs, zero-mode shifts, and the target-space operator anomaly were not independently recomputed.
- **Boundary:** nilpotency, target symmetry, and physical BRST cohomology are three different claim tiers; only the first two are compared here.
