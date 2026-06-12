---
title: "appendix_a_falloffs_and_variational_principle"
date: 2026-06-10
summary: "records the mode-selection falloffs and the variational-principle estimates used for the Maxwell sector."
---

# Appendix A: Falloffs and variational principle

This appendix collects the falloff conventions and variational estimates used in the main text.

## A.1 Boundary behavior

The mode analysis uses the boundary behavior

$$\begin{align}
A^{t}&=O(r^{-2}), &
A^{r}&=o(r^{1}), &
A^{\phi}&=O(r^{-2}), \\
A_{t}&=O(r^{0}), &
A_{r}&=o(r^{-1}), &
A_{\phi}&=O(r^{0}).
\end{align}$$

The notation $A_{t},A_{\phi}=O(r^{0})$ is used in the asymptotic-expansion sense. The leading boundary values are functions of $(t,\phi)$ only, and the radial tails satisfy

$$\begin{align}
\partial_{r}A_{t}&=o(r^{-1}), &
\partial_{r}A_{\phi}&=o(r^{-1}).
\end{align}$$

## A.2 Field-strength estimates

For this falloff convention, the angular field strength obeys

$$\begin{align}
F_{t\phi}&=\partial_{t}A_{\phi}-\partial_{\phi}A_{t}=O(r^{0}), &
F^{t\phi}&=O(r^{-4}).
\end{align}$$

The radial derivative estimate gives

$$\begin{align}
F^{tr}&=o(r^{-1}), &
F^{r\phi}&=o(r^{-1}).
\end{align}$$

## A.3 Off-shell boundary variation

On the cutoff surface $\Gamma_{r}$ at fixed $r=r$,

$$\begin{align}
\sqrt{-\gamma}\,n_{r}&=r.
\end{align}$$

The boundary term in the off-shell variation is therefore

$$\begin{align}
\delta S\big|_{\Gamma_{r}}&=-\int_{\Gamma_{r}}\mathrm{d}t\,\mathrm{d}\phi\,r\left(F^{rt}\delta A_{t}+F^{r\phi}\delta A_{\phi}\right),
\end{align}$$

with

$$\begin{align}
F^{rt}&=-(\partial_{r}A_{t}-\partial_{t}A_{r}), \\
F^{r\phi}&=\frac{1+r^{2}}{r^{2}}(\partial_{r}A_{\phi}-\partial_{\phi}A_{r}).
\end{align}$$

Using $\partial_{r}A_{t},\partial_{r}A_{\phi}=o(r^{-1})$ and $A_{r}=o(r^{-1})$, the field-strength components obey

$$\begin{align}
F^{rt}&=o(r^{-1}), &
F^{r\phi}&=o(r^{-1}).
\end{align}$$

For allowed variations preserving the same falloff, $\delta A_{t},\delta A_{\phi}=O(r^{0})$. Hence the cutoff boundary density is $o(r^{0})$, and the off-shell boundary variation vanishes as $r\to\infty$.

For the radial part of the off-shell bulk action, the corresponding sufficient non-borderline condition is

$$\begin{align}
\int^{\infty}\mathrm{d}r\,r\left(|\partial_{r}A_{t}|^{2}+|\partial_{r}A_{\phi}|^{2}\right)&<\infty.
\end{align}$$

This square-integrability condition is the off-shell action analogue of the radial-tail estimate used in the boundary variation.

## A.4 Symplectic pairing

On a constant-time slice, the symplectic potential can be estimated from

$$\begin{align}
\Theta_{\Sigma}&=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_{\mu}F^{\mu\nu}\delta A_{\nu}.
\end{align}$$

For fields obeying the falloff convention, the potentially relevant large-$r$ terms have the form

$$\begin{align}
rF^{tr}\delta A_{r}&=o(r^{-1}), \\
rF^{t\phi}\delta A_{\phi}&=O(r^{-3}).
\end{align}$$

The second term is integrable directly. The first is controlled by the same non-borderline radial-tail condition used in A.3 for the off-shell action. These estimates make the symplectic form finite on the corresponding phase space.

## A.5 Isometry preservation

The global AdS$_3$ Killing fields satisfy

$$\begin{align}
\xi^{t}&=O(r^{0}), &
\xi^{r}&=O(r), &
\xi^{\phi}&=O(r^{0}), \\
\partial_{r}\xi^{t}&=O(r^{-3}), &
\partial_{r}\xi^{r}&=O(r^{0}), &
\partial_{r}\xi^{\phi}&=O(r^{-3}).
\end{align}$$

Using

$$\begin{align}
(\mathcal{L}_{\xi}A)_{\mu}&=\xi^{\nu}\partial_{\nu}A_{\mu}+A_{\nu}\partial_{\mu}\xi^{\nu},
\end{align}$$

one finds that the falloff class is preserved by the global $\mathrm{SL}(2,\mathbb{R})_{L}\times\mathrm{SL}(2,\mathbb{R})_{r}$ isometries.

## A.6 Boundary variation

The boundary term in the variation of the action is

$$\begin{align}
\delta S\big|_{\partial M}&=-\int_{\partial M}\mathrm{d}^{2}x\sqrt{|\gamma|}\,n_{\mu}F^{\mu\nu}\delta A_{\nu}.
\end{align}$$

For configurations satisfying the falloff convention and radial-tail estimates above, this term is finite and the on-shell variational principle is well defined for variations preserving the boundary behavior.
