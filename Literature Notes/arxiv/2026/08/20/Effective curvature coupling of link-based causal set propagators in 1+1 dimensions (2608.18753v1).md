---
paper id: 2608.18753v1
title: Effective curvature coupling of link-based causal set propagators in 1+1 dimensions
authors:
  - Arsim Kastrati
publication date: 2026-08-19T10:02
abstract: |-
  The paper studies the curvature response of a causal-set propagator built from the exponential of the link matrix. A regular-region asymptotic calculation and finite-density AdS/dS simulations identify a construction-dependent leading coupling consistent with xi_eff=1/6.
comments: "17 pages, 6 figures"
url: https://arxiv.org/abs/2608.18753v1
summary: "Promising evidence for a link-induced curvature coupling, but the singular convolution region and numerical continuum extrapolation remain unverified."
tags: []
---

# Direct verdict

Not proven by the current derivation; the evidence only shows: the two-link null-corner tail and the **regular part** of the link-exponential flow produce a leading constant-curvature correction consistent with

\[
\xi_{\rm eff}=\frac16,
\]

and finite-density AdS\(_2\)/dS\(_2\) simulations visually follow continuum curves with that fixed coefficient.

The paper explicitly leaves uncalculated possible curvature sources from the singular convolution region that generates the flat logarithmic term. Therefore the statement should be rewritten as:

> The regular-region asymptotics predict \(\xi_{\rm eff}=1/6\), and the available constant-curvature simulations support this prediction over the tested range.

This is not yet a complete asymptotic theorem, a density-to-infinity extrapolation with error control, or a universal causal-set curvature coupling.

See [[2026_08_20_overview]] for today's queue.

# Discrete kernel

For a causal set \(\mathcal C\), the link matrix is

\[
L_{ij}=1
\quad\Longleftrightarrow\quad
c_j\prec c_i
\text{ and no }c_k\text{ satisfies }c_j\prec c_k\prec c_i.
\]

Powers \(L^n\) count \(n\)-link paths. With Poisson sprinkling density \(\rho\),

\[
F_n(a,b)=\langle(L^n)_{ab}\rangle,
\qquad
F_{k+l}(a,b)
=\rho\int_{I(a,b)}dV\,F_k(a,z)F_l(z,b).
\]

The proposed kernel is not the inverse of a demonstrated discrete wave operator. It is defined by

\[
G(a,b)=\langle(e^L)_{ab}\rangle
=\sum_{n\ge1}\frac{F_n(a,b)}{n!}.
\]

Its normalization is fixed after the fact so that the flat large-distance limit equals the \(1+1\)-dimensional massless retarded Green function:

\[
G_{\rm norm}=\frac12e^{\gamma_E}G.
\]

# Flat asymptotics

The one-link expectation is exponentially short ranged,

\[
F_1^{(0)}(\tau)=e^{-\rho\tau^2/2}.
\]

The two-link term has the long tail

\[
F_2^{(0)}(\tau)\simeq\frac4{\rho\tau^2}.
\]

Introducing \(G_\lambda=\langle e^{\lambda L}\rangle\), the flat ansatz

\[
G_\lambda^{(0)}(\tau)=\alpha(\lambda)\tau^{-\beta(\lambda)}
\]

gives

\[
\beta(\lambda)=2-2\lambda,
\qquad
\alpha(\lambda)=
\frac{e^{-\lambda\gamma_E}(\rho/2)^{\lambda-1}}
{\Gamma(\lambda)^2}.
\]

At \(\lambda=1\), \(G^{(0)}\to e^{-\gamma_E}\).

# Local curvature calculation

In conformal coordinates the causal order is unchanged, but the link-emptiness probability

\[
\langle L_{ab}\rangle=e^{-\rho V(a,b)}
\]

depends on the physical Alexandrov volume.

For a small constant-curvature interval,

\[
V(a,b)=\frac{\tau^2}{2}-\frac{\mathcal R\tau^4}{96}
+\mathcal O(\tau^6).
\]

The null-corner evaluation yields

\[
F_2(a,b)
=\frac4{\rho\tau^2}
\left(1-\frac{\mathcal R\tau^2}{24}+\cdots\right)
=F_2^{(0)}
\left(1-\frac{\mathcal V(a,b)}{12}+\cdots\right),
\]

where

\[
\mathcal V(a,b)=\int_{I(a,b)}\mathcal R\,dV
=\frac{\mathcal R\tau^2}{2}+\cdots.
\]

# Link-exponential flow and its gap

The curved ansatz is

\[
G_\lambda
\simeq G_\lambda^{(0)}
\left[1-\zeta(\lambda)\mathcal V+\cdots\right],
\qquad
\zeta(0^+)=\frac1{12}.
\]

Keeping only the leading regular convolution region gives

\[
\zeta'(\lambda)
=\frac2\lambda\left(\frac1{12}-\zeta\right),
\]

with solution

\[
\zeta(\lambda)=\frac1{12}+\frac C{\lambda^2}.
\]

Regularity at \(\lambda\to0^+\) sets \(C=0\), so the paper obtains

\[
G_{\rm norm}
\simeq\frac12-\frac1{24}
\int_{I(a,b)}\mathcal R\,dV.
\]

However, this derivation uses the large-distance power-law ansatz inside

\[
\int_0^\tau dr\,r\,G_\lambda^{(0)}(r),
\]

including its small-\(r\) endpoint, and it omits the singular region \(\tau-r\sim q\). The paper itself notes that this region produces the flat logarithmic contribution and that its curvature correction is uncomputed. A contribution at the same curvature order could alter the flow equation or its matching constant.

# Continuum matching

For

\[
(\Box_g-\xi\mathcal R)\mathcal G_\xi
=\frac{\delta^{(2)}}{\sqrt{-g}},
\]

the first-order Dyson correction about \(\mathcal G_0=1/2\) is

\[
\mathcal G_\xi
=\frac12-\frac{\xi}{4}
\int_I\mathcal R\,dV+\cdots.
\]

Matching the regular-region causal-set coefficient \(1/24\) to \(\xi/4\) gives

\[
\xi_{\rm eff}=\frac16.
\]

This \(1/6\) is not the \(1+1\)-dimensional conformal coupling, which is zero. It is specific to the chosen link-exponential construction unless a broader theorem is found.

# Constant-curvature comparisons

For curvature radius \(\kappa\),

\[
\mathcal R_{\rm AdS}=-\frac2{\kappa^2},
\qquad
\mathcal R_{\rm dS}=+\frac2{\kappa^2}.
\]

The exact interval volumes used are

\[
V_{\rm AdS}
=2\kappa^2\log\sec^2\frac{\tau}{2\kappa},
\qquad
V_{\rm dS}
=2\kappa^2\log\cosh^2\frac{\tau}{2\kappa}.
\]

Their first-curvature kernel predictions are

\[
G_{\rm norm}^{\rm AdS}
\simeq\frac12+\frac16\log\sec^2\frac{\tau}{2\kappa},
\]

\[
G_{\rm norm}^{\rm dS}
\simeq\frac12-\frac16\log\cosh^2\frac{\tau}{2\kappa}.
\]

The full comparison curves are Legendre solutions with

\[
\nu(\nu+1)=-2\xi.
\]

At \(\xi=1/6\), the AdS effective parameter \(m^2\kappa^2=-1/3\) lies below the AdS\(_2\) Breitenlohner--Freedman bound \(-1/4\). The paper correctly cautions that this is not a physical particle mass. Global AdS quantum-field interpretation would additionally require boundary conditions and stability analysis.

# Numerical evidence

The figures report:

- \(10^4\) independent sprinkling averages;
- densities ranging up to \(\rho=10^4\);
- AdS enhancement and dS suppression;
- a stable large-\(\tau\) tail as density increases;
- cancellation of the AdS curvature term near an added \(m^2=1/3\) for \(\kappa=1\).

The mass/curvature coefficient is not fitted in the continuum curves. This is a meaningful consistency check. But the source gives no executable simulation, raw matrices, binning rules, covariance/error bars, or continuum-extrapolation fit.

# Verification record

## Checked

- **Verified:** the official 17-page PDF and complete 1,182-line TeX source with all six figures were retrieved; six representative pages were rendered.
- **Verified:** Mathematica expanded the exact AdS and dS interval volumes to \(\tau^2/2-\mathcal R\tau^4/96\).
- **Verified:** Mathematica solved the displayed \(\zeta\)-flow as \(1/12+C/\lambda^2\) and reproduced the matching \(\xi=1/6\).
- **Verified:** keeping an infrared cutoff \(\epsilon\) gives

\[
\int_\epsilon^\tau dr\,r^{-1+2\lambda}
=\frac{\tau^{2\lambda}-\epsilon^{2\lambda}}{2\lambda},
\]

making explicit the endpoint sensitivity as \(\lambda\to0^+\).

## Failed

- **Failed as written:** equation (A42) uses \(e^{-\rho\tau''^2/2}\) while integrating over \(\tau'\). It must be \(e^{-\rho\tau'^2/2}\), consistent with \(F_1(\tau')\) and the claimed finite integral. With the printed factor the \(\tau'\) integral diverges.
- **Failed as a complete proof:** the regular-region calculation cannot establish the final coefficient until same-order contributions from the acknowledged singular region are excluded or included.

## Source-derived

- **Source-derived:** the finite-density AdS/dS and added-mass simulation curves.
- **Source-derived:** the null-corner asymptotic reduction of \(F_2\).

## Not independently verified

- **Not verified:** the histogram/curve data, matrix-exponential implementation, statistical errors, or density extrapolation.
- **Not verified:** the singular-region curvature correction.
- **Not verified:** curvature gradients, higher-curvature terms, global boundary effects, or an inverse-operator interpretation of \(e^L\).

# Assumptions and relevance

- **Assumptions:** Poisson sprinkling, \(1+1\) dimensions, conformally flat constant curvature, and

\[
\rho^{-1}\ll\tau^2\ll|\mathcal R|^{-1}.
\]

- **Assumptions:** the flat normalization and the exponential path weights \(1/n!\).
- `T2-spectral`: the kernel gives a concrete finite-density spectral/propagator benchmark.
- `T2-model`: the distinction between causal order and physical interval volume is directly reusable.
- The finite-density curves do not prove a continuum quantum field, a Fock representation, or universality across causal-set discretizations.

# Blocked

- No abstract, PDF, TeX, or figure retrieval failed.
- Numerical reproduction is blocked by absent code, seeds, sprinkling samples, matrix data, binning details, and uncertainty tables.
- Completion of the analytic proof is blocked by the explicitly unevaluated singular convolution region.

# Bottom line

The paper identifies a plausible and interesting mechanism: causal order is conformally blind in \(1+1\) dimensions, but links are not, because empty-interval probabilities see volume. The value \(1/6\) is a well-motivated prediction with numerical support. It should remain labeled a regular-region result until the missing singular contribution and the high-density numerical limit are controlled.
