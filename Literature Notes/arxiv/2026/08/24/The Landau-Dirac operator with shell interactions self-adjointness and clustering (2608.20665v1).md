---
paper id: 2608.20665v1
title: "The Landau-Dirac operator with shell interactions: self-adjointness and clustering"
authors:
  - Badreddine Benhellal
  - Vincent Bruneau
  - Pablo Miranda
publication date: 2026-08-21T09:51
abstract: |-
  Two-dimensional Landau--Dirac operators with electrostatic and Lorentz-scalar delta interactions on a smooth closed curve are classified into noncritical and critical regimes. Noncritical shells preserve the Landau-level essential spectrum and create capacity-controlled eigenvalue clusters; critical shells add an interval of essential spectrum.
comments: "31 pages"
url: https://arxiv.org/abs/2608.20665v1
summary: "A rigorous boundary-operator result whose coupling denominator controls the side of Landau-level accumulation and whose critical shell changes the essential spectrum."
tags: []
---

# Compact verdict

**Direct verdict.** Correct under the stated smooth-curve and $C^1$ coupling hypotheses. The paper proves self-adjointness in both regimes, but $H^1$ regularity and compact resolvent differences fail at the critical value. The clustering theorem is noncritical only.

Reason codes: `T1-boundary`, `T2-spectral`, `T3-math`.

# Main statements

The free levels are

$$
\mu_n=\begin{cases}
\sqrt{2bn+m^2},&n\ge0,\\
-\sqrt{2b|n|+m^2},&n<0.
\end{cases}
$$

The shell is formally $(\epsilon I_2+\tau\sigma_3)\delta_\Sigma$.

For $(\epsilon^2-\tau^2)(\Sigma)\cap\{0,4\}=\varnothing$,

$$
\sigma_{\rm ess}(D_{\epsilon,\tau})=\{\mu_n:n\in\mathbb Z\},
$$

and the domain lies in $H^1(\mathbb R^2\setminus\Sigma)$. The side of accumulation is determined by

$$
V_1=\frac{4(\epsilon+\tau)}{4-(\epsilon^2-\tau^2)},
$$

not simply by the sign of the matrix potential. If $\pm V_1>0$, infinitely many eigenvalues accumulate from the corresponding side and only finitely many from the other.

The counting asymptotic contains the geometric constant

$$
\mathfrak C(\Sigma)=1+\log\!\left(\frac b2\operatorname{Cap}(\Sigma)^2\right).
$$

At the critical value $\epsilon^2-\tau^2=4$,

$$
\sigma_{\rm ess}(D_{\epsilon,\tau})
=\{\mu_n}\cup
\operatorname{ran}\!\left(-m\frac\tau\epsilon\right).
$$

The domain is no longer contained in piecewise $H^1$, and the paper does not obtain critical clustering asymptotics.

For the confining cases $(\epsilon,\tau)=(0,\pm2)$, the shell decouples interior and exterior problems. Infinite-mass boundary conditions accumulate above every Landau level; anti-infinite-mass conditions reverse the side.

# Verification ledger

## Source-derived

- Complete official TeX and the 31-page PDF were inspected.
- The proof uses trace extensions, boundary integral pseudodifferential operators, Krein-type formulas, a compact effective Hamiltonian, and Toeplitz asymptotics.

## Checked

- Substitution of $(0,2)$ gives $V_1=1>0$; $(0,-2)$ gives $V_1=-1<0$, reproducing the stated side reversal.
- At $m=0$, the added critical interval collapses to $\{0\}$, already a Landau--Dirac level, so no new essential set remains.

## Not independently verified

- The pseudodifferential principal symbols, Fredholm arguments, min--max reduction, and three-term capacity asymptotic were inspected but not reconstructed.
- The suggested bounded-domain and three-dimensional extensions are proposals, not theorems of this paper.

# Relevance

The paper is a useful exact model of how a boundary transmission coupling changes domains and spectra at a critical value. It does not add independent boundary degrees of freedom; the shell is encoded by transmission conditions and boundary operators.
