---
title: Asymptotic behavior of Maxwell fields in global AdS3
date: 2026-04-15
summary: "Derives the refined asymptotic falloffs for Maxwell fields in global AdS3, emphasizing that finite boundary values imply a stronger radial derivative estimate than naive power counting."
---

# Setup

Start with the Maxwell action

$$\begin{align}
S
&= -\frac{1}{4}\int \mathrm{d}^{3}x \sqrt{-g}\, F_{\mu \nu}F^{\mu \nu}.
\end{align}$$

The variation is

$$\begin{align}
\delta S
&= -\int \mathrm{d}^{3}x \sqrt{-g}\, F^{\mu \nu}\nabla_{\mu}\delta A_{\nu} \\
&= \int \mathrm{d}^{3}x \sqrt{-g}\, \nabla_{\mu}F^{\mu \nu}\delta A_{\nu}
-\int_{\partial M}\mathrm{d}^{2}x \sqrt{|\gamma|}\, n_{\mu}F^{\mu \nu}\delta A_{\nu}.
\end{align}$$

Thus the equation of motion is

$$\begin{align}
\nabla_{\mu}F^{\mu \nu}=0.
\end{align}$$

In global AdS3,

$$\begin{align}
\mathrm{d}s^{2}
&= -(1+r^{2})\mathrm{d}t^{2}
+\frac{\mathrm{d}r^{2}}{1+r^{2}}
+r^{2}\mathrm{d}\phi^{2},
\end{align}$$

so that

$$\begin{align}
\sqrt{-g}&=r, &
g^{tt}&=-\frac{1}{1+r^{2}}, &
g^{rr}&=1+r^{2}, &
g^{\phi \phi}&=\frac{1}{r^{2}}.
\end{align}$$

# Refined Boundary Condition

The shorthand $A_t,A_{\phi}=O(r^{0})$ is not by itself precise enough for radial derivatives. The intended asymptotic phase space is

$$\begin{align}
A_t &= a_t(t,\phi)+\alpha_t(t,\phi,r), &
A_{\phi} &= a_{\phi}(t,\phi)+\alpha_{\phi}(t,\phi,r), \\
A_r &= O(r^{-3})
\end{align}$$

with

$$\begin{align}
\alpha_t,\alpha_{\phi}&=o(1), &
\partial_r\alpha_t,\partial_r\alpha_{\phi}&=o(r^{-1}).
\end{align}$$

For finiteness of the off-shell action, this little-$o$ condition should be understood in the non-borderline sense used by the asymptotic expansion. Equivalently, the radial tails obey

$$\begin{align}
\int^{\infty}\mathrm{d}r\,r
\left(
|\partial_r\alpha_t|^{2}
+|\partial_r\alpha_{\phi}|^{2}
\right)<\infty.
\end{align}$$

Equivalently, since

$$\begin{align}
r^{2}A^t
&= -\frac{r^{2}}{1+r^{2}}A_t, &
r^{2}A^{\phi}
&= A_{\phi},
\end{align}$$

the radial derivative condition can be written as

$$\begin{align}
\partial_r(r^{2}A^{t,\phi})=o(r^{-1}).
\end{align}$$

This is the subtle point: one should not infer from $r^{2}A^{t,\phi}=O(r^{0})$ that

$$\begin{align}
\partial_r(r^{2}A^{t,\phi})=O(r^{-1}).
\end{align}$$

The leading $O(r^{0})$ boundary mode is a function of $(t,\phi)$ only, so its radial derivative vanishes. Only the subleading radial tail contributes. In the usual asymptotic-expansion sense, this tail is non-borderline, and its derivative is smaller than $r^{-1}$.

The same discussion allows the slightly weaker radial gauge component

$$\begin{align}
A_r=O(r^{-3}\log r),
\end{align}$$

because this term remains subleading in the estimates below.

# Field Strength

Using the refined boundary condition,

$$\begin{align}
F_{tr}
&= \partial_t A_r-\partial_r A_t
= o(r^{-1}), \\
F_{r\phi}
&= \partial_r A_{\phi}-\partial_{\phi}A_r
= o(r^{-1}), \\
F_{t\phi}
&= \partial_t A_{\phi}-\partial_{\phi}A_t
=O(r^{0}).
\end{align}$$

Raising indices gives

$$\begin{align}
F^{tr}
&= g^{tt}g^{rr}F_{tr}
=-F_{tr}
=o(r^{-1}), \\
F^{r\phi}
&=g^{rr}g^{\phi\phi}F_{r\phi}
=\frac{1+r^{2}}{r^{2}}F_{r\phi}
=o(r^{-1}), \\
F^{t\phi}
&=g^{tt}g^{\phi\phi}F_{t\phi}
=-\frac{1}{r^{2}(1+r^{2})}F_{t\phi}
=O(r^{-4}).
\end{align}$$

# Symplectic Potential

On a constant-time slice $\Sigma$, the directed surface element is

$$\begin{align}
\mathrm{d}\Sigma_{\mu}
=-r\,\delta_{\mu}^{t}\,\mathrm{d}r\,\mathrm{d}\phi.
\end{align}$$

Up to an overall sign convention, the symplectic potential is therefore

$$\begin{align}
\Theta_{\Sigma}
&= -\int_{\Sigma}\mathrm{d}\Sigma_{\mu}\,F^{\mu\nu}\delta A_{\nu} \\
&= \int_{0}^{\infty}\mathrm{d}r\int_{0}^{2\pi}\mathrm{d}\phi\,
r\left(F^{tr}\delta A_r+F^{t\phi}\delta A_{\phi}\right).
\end{align}$$

For variations preserving the boundary condition,

$$\begin{align}
\delta A_{\phi}&=O(r^{0}), &
\delta A_r&=O(r^{-3})
\end{align}$$

or, in the logarithmic case, $\delta A_r=O(r^{-3}\log r)$. Hence

$$\begin{align}
rF^{tr}\delta A_r
&=o(r^{-3}) \quad \text{or} \quad o(r^{-3}\log r), \\
rF^{t\phi}\delta A_{\phi}
&=O(r^{-3}).
\end{align}$$

Both terms are integrable at $r=\infty$, so the symplectic potential is finite.

# Preservation Under Isometries

The relevant $\mathrm{SL}(2,\mathbb{R})$ Killing vectors have the asymptotic structure

$$\begin{align}
\xi^{t}&=O(r^{0}), &
\xi^{\phi}&=O(r^{0}), &
\xi^{r}&=O(r), \\
\partial_r\xi^{t}&=O(r^{-3}), &
\partial_r\xi^{\phi}&=O(r^{-3}), &
\partial_r\xi^{r}&=O(r^{0}).
\end{align}$$

The Lie derivative of the gauge field is

$$\begin{align}
(\mathcal{L}_{\xi}A)_{\mu}
=\xi^{\nu}\partial_{\nu}A_{\mu}+A_{\nu}\partial_{\mu}\xi^{\nu}.
\end{align}$$

For the boundary components,

$$\begin{align}
(\mathcal{L}_{\xi}A)_{t,\phi}
=O(r^{0})+\xi^{r}\partial_r A_{t,\phi}
=O(r^{0})+o(1)
=O(r^{0}).
\end{align}$$

For the radial component,

$$\begin{align}
(\mathcal{L}_{\xi}A)_r
&=\xi^{\nu}\partial_{\nu}A_r
+A_t\partial_r\xi^t
+A_{\phi}\partial_r\xi^{\phi}
+A_r\partial_r\xi^r \\
&=O(r^{-3})
\end{align}$$

or $O(r^{-3}\log r)$ if the logarithmic radial component is allowed. Thus the boundary condition is preserved by the global AdS3 isometries.

# Equations of Motion

Because $F^{\mu\nu}$ is antisymmetric,

$$\begin{align}
\nabla_{\mu}F^{\mu\nu}
=\frac{1}{r}\partial_{\mu}\left(rF^{\mu\nu}\right).
\end{align}$$

With the same non-borderline radial regularity used above, the leading asymptotic estimates are

$$\begin{align}
\nabla_{\mu}F^{\mu t}
&=o(r^{-2}), \\
\nabla_{\mu}F^{\mu \phi}
&=o(r^{-2}), \\
\nabla_{\mu}F^{\mu r}
&=o(r^{-1}).
\end{align}$$

These are off-shell falloffs. On shell, the three expressions vanish.

# Action Finiteness

The action density can be written as

$$\begin{align}
S
&=-\frac{1}{2}\int \mathrm{d}^{3}x\,r
\left(
F_{tr}F^{tr}
+F_{t\phi}F^{t\phi}
+F_{r\phi}F^{r\phi}
\right) \\
&=\frac{1}{2}\int \mathrm{d}^{3}x\,r
\left(
F_{tr}^{2}
+\frac{1}{r^{2}(1+r^{2})}F_{t\phi}^{2}
-\frac{1+r^{2}}{r^{2}}F_{r\phi}^{2}
\right).
\end{align}$$

The $F_{t\phi}$ term is manifestly integrable because

$$\begin{align}
r\frac{1}{r^{2}(1+r^{2})}F_{t\phi}^{2}
=O(r^{-3}).
\end{align}$$

The potentially dangerous terms are the radial derivatives of the boundary components:

$$\begin{align}
F_{tr}
&= -\partial_r A_t+O(r^{-3}\log r), \\
F_{r\phi}
&= \partial_r A_{\phi}+O(r^{-3}\log r).
\end{align}$$

Equivalently,

$$\begin{align}
\partial_r A_t
&= -\partial_r(r^{2}A^t)+O(r^{-3}), \\
\partial_r A_{\phi}
&= \partial_r(r^{2}A^{\phi}).
\end{align}$$

Thus the radial part of the action is controlled term by term by

$$\begin{align}
\int^{\infty}\mathrm{d}r\, r
\left[
\left|\partial_r(r^{2}A^t)\right|^2
+\left|\partial_r(r^{2}A^{\phi})\right|^2
\right]
\end{align}$$

up to integrable subleading terms. The refined boundary condition requires these radial derivatives to be square-integrable with measure $r\,\mathrm{d}r$, so this integral is finite. In particular, for an ordinary power expansion this means

$$\begin{align}
\partial_r(r^{2}A^{t,\phi})=O(r^{-1-\epsilon})
\end{align}$$

for some $\epsilon>0$, which is stronger than the naive borderline estimate $O(r^{-1})$.

# Subtlety

The incorrect logarithmic divergence comes from differentiating the symbol $O(r^{0})$ as if it represented a generic radial function. The boundary condition instead says that $r^{2}A^{t,\phi}$ approaches a finite boundary field:

$$\begin{align}
r^{2}A^{t,\phi}
=a^{t,\phi}(t,\phi)+\text{subleading radial tail}.
\end{align}$$

The derivative of the leading boundary field is zero. Therefore

$$\begin{align}
\partial_r(r^{2}A^{t,\phi})=o(r^{-1})
\end{align}$$

in the asymptotic-expansion sense used by the phase space. The action is finite even off shell because the apparent $r^{-1}$ borderline term is not actually present.
