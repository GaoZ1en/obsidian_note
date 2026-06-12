---
title: "1_model"
date: 2026-06-10
summary: "Sets up Maxwell theory in global AdS3, the mode-selection falloffs, the equations of motion, and the covariant symplectic form used for quantization."
---

# 1. Maxwell fields in global AdS$_3$

This section fixes the background geometry, the Maxwell action, the boundary conditions, and the symplectic structure used in the mode construction.

## 1.1 Spacetime background

We use global AdS$_3$ coordinates $(t,r,\phi)$, with $t\in(-\infty,\infty)$, $r\in[0,\infty)$, and $\phi\sim\phi+2\pi$. The metric is

$$\begin{align}
\mathrm{d}s^{2}&=-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}.
\end{align}$$

Thus

$$\begin{align}
\sqrt{-g}&=r, & g^{tt}&=-\frac{1}{1+r^{2}}, & g^{rr}&=1+r^{2}, & g^{\phi\phi}&=\frac{1}{r^{2}}.
\end{align}$$

The orientation is chosen so that $\varepsilon_{tr\phi}=r$. The isometry group is $\mathrm{SL}(2,\mathbb{R})_{L}\times\mathrm{SL}(2,\mathbb{R})_{R}$.

## 1.2 Action and equations of motion

The Maxwell action is

$$\begin{align}
S[A]&=-\frac{1}{4}\int_{M}\mathrm{d}^{3}x\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}, &
F_{\mu\nu}&=\nabla_{\mu}A_{\nu}-\nabla_{\nu}A_{\mu}.
\end{align}$$

Its variation is

$$\begin{align}
\delta S&=\int_{M}\mathrm{d}^{3}x\sqrt{-g}\,\nabla_{\mu}F^{\mu\nu}\delta A_{\nu}
-\int_{\partial M}\mathrm{d}^{2}x\sqrt{|\gamma|}\,n_{\mu}F^{\mu\nu}\delta A_{\nu}.
\end{align}$$

The bulk equation of motion is

$$\begin{align}
\nabla_{\mu}F^{\mu\nu}&=0.
\end{align}$$

The action is invariant under the gauge transformation

$$\begin{align}
A_{\mu}&\mapsto A_{\mu}+\nabla_{\mu}\Lambda.
\end{align}$$

## 1.3 Boundary conditions

The mode analysis uses the following asymptotic behavior for the gauge potential:

$$\begin{align}
A^{t}&=O(r^{-2}), &
A^{r}&=o(r^{1}), &
A^{\phi}&=O(r^{-2}), \\
A_{t}&=O(r^{0}), &
A_{r}&=o(r^{-1}), &
A_{\phi}&=O(r^{0}).
\end{align}$$

The notation $A_{t},A_{\phi}=O(r^{0})$ is understood in the asymptotic-expansion sense: the leading boundary values are independent of $r$, and the radial tails obey $\partial_{r}A_{t},\partial_{r}A_{\phi}=o(r^{-1})$. The temporal gauge $A_{t}=0$ preserves the spatial falloffs. The normalizable temporal-gauge modes constructed below form a stronger subspace with $A^{r}=O(r^{-1})$ and $A^{\phi}=O(r^{-2})$.

## 1.4 Symplectic form

On a Cauchy surface $\Sigma$, the symplectic potential is

$$\begin{align}
\Theta_{\Sigma}&=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_{\mu}F^{\mu\nu}\delta A_{\nu},
\end{align}$$

where $\tau^{\mu}$ is the future-pointing unit normal to $\Sigma$. The corresponding symplectic form is

$$\begin{align}
\Omega&=\delta\Theta_{\Sigma}
=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_{\mu}\delta F^{\mu\nu}\wedge\delta A_{\nu}.
\end{align}$$

With this asymptotic convention, the cutoff boundary variation is finite and vanishes for variations preserving the falloff. Appendix A records the cutoff estimate explicitly.

The pre-phase space $\widetilde{\mathcal{P}}$ is the space of solutions to $\nabla_{\mu}F^{\mu\nu}=0$ obeying the falloffs above, before quotienting by proper gauge transformations. The oscillator phase space is the normalizable sector on which the symplectic pairing is finite and diagonal in the modes constructed in Section 2. Proper gauge transformations have vanishing surface charge in this sector. Possible large-gauge sectors are kept separate from the oscillator phase space.
