---
title: "1_model"
date: 2026-06-10
summary: "Specifies the global AdS3 background, the Maxwell action, and the asymptotic boundary conditions used throughout the paper."
---

# 1. The Maxwell theory in the global AdS$_3$ spacetime

In this section, we specify the background geometry, the Maxwell action, and the asymptotic boundary conditions used throughout the paper.

## 1.1 Spacetime background

We parameterize global AdS$_3$ by the standard coordinates $(t, r, \phi)$, with ranges $t \in (-\infty, +\infty)$, $r \in (0, +\infty)$, and angular periodicity $\phi \sim \phi + 2\pi$. The metric is

$$\mathrm{d}s^2 = -(1+r^2)\mathrm{d}t^2 + \frac{\mathrm{d}r^2}{1+r^2} + r^2 \mathrm{d}\phi^2.$$

The isometry group is $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$. A convenient basis of Killing fields generating the algebra $\mathfrak{sl}(2, \mathbb{R}) \oplus \mathfrak{sl}(2, \mathbb{R})$ is

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\xi _{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}-\frac{\partial}{\partial \phi}\right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}+\frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right)
\end{align}$$

These Killing fields will be used in Section 2 when we discuss the symmetry generators on the Maxwell phase space.

## 1.2 The action and asymptotic boundary conditions

The dynamical field is a $\mathrm{U}(1)$ gauge potential $A_\mu(x)$. The action is

$$S = -\frac{1}{4}\int_M \mathrm{d}^3x \sqrt{-g} F_{\mu\nu} F^{\mu\nu},$$

where

$$\begin{align}
F_{\mu\nu}&=\nabla_\mu A_\nu-\nabla_\nu A_\mu.
\end{align}$$

Here $\varepsilon^{\mu\nu\rho}$ is the Levi-Civita tensor defined by $\varepsilon^{\mu\nu\rho} = \frac{1}{\sqrt{-g}} \epsilon^{\mu\nu\rho}$ with $\epsilon^{tr\phi} = 1$. The spacetime region $M$ is sandwiched by the initial constant-$t$ Cauchy surface $\Sigma_i$ at $t=t_i$ and the final Cauchy surface $\Sigma_f$ at $t=t_f$, with $t_f > t_i$.

To obtain a well-defined variational principle and a normalizable mode expansion, we impose the following asymptotic falloffs on the contravariant components as $r \to \infty$:

$$\begin{align}
A^{t} & =O(r^{-2}), & A^{r} & =o(r^{1}), & A^{\phi} & =O(r^{-2})
\end{align}$$

and similarly on the variations:

$$\begin{align}
\delta A^{t} & =O(r^{-2}), & \delta A^{r} & =o(r^{1}), & \delta A^{\phi} & =O(r^{-2}).
\end{align}$$

Equivalently, after lowering indices with the AdS$_3$ metric, these conditions become

$$\begin{align}
A_{t} & =O(r^{0}), & A_{r} & =o(r^{-1}), & A_{\phi} & =O(r^{0})
\end{align}$$

and the same falloffs hold for the corresponding variations.

As shown in Appendix A, these asymptotic conditions, together with the radial derivative behavior satisfied by the mode basis, ensure the action and other physical quantities entering the covariant phase space analysis remain finite. Therefore, the theory admits a well-defined variational principle without the need for additional boundary counterterms.
