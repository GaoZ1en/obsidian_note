---
title: "1_model"
date: 2026-04-13
summary: ""
---

# 1. The Proca-Chern-Simons theory in the global AdS$_3$ spacetime

In this section, we specify the background geometry, the Proca-Chern-Simons action, and the asymptotic boundary conditions used throughout the paper.

## 1.1 Spacetime background

We parameterize global AdS$_3$ by the standard coordinates $(t, r, \phi)$, with ranges $t \in (-\infty, +\infty)$, $r \in (0, +\infty)$, and angular periodicity $\phi \sim \phi + 2\pi$. The metric is

$$\begin{align}
\mathrm{d}s^2 = -(1+r^2)\mathrm{d}t^2 + \frac{\mathrm{d}r^2}{1+r^2} + r^2 \mathrm{d}\phi^2.
\end{align}$$

The isometry group is $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$. A convenient basis of Killing fields generating the algebra $\mathfrak{sl}(2, \mathbb{R}) \oplus \mathfrak{sl}(2, \mathbb{R})$ is

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\xi _{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}-\frac{\partial}{\partial \phi}\right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}+\frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right)
\end{align}$$

These Killing fields satisfy the standard commutation relations

$$\begin{align}
[\xi _{0},\xi _{\pm 1}] & =\pm i\xi _{\pm 1}, & [\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{\pm 1}] & =\pm i\bar{\xi}_{\pm 1}, & [\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0} \\
[\xi _{a},\bar{\xi}_{b}] & =0, & a,b & \in \{-1,0,1\}
\end{align}$$

The sets $\{\xi_{-1}, \xi_0, \xi_1\}$ and $\{\bar{\xi}_{-1}, \bar{\xi}_0, \bar{\xi}_1\}$ generate the left- and right-moving $\mathfrak{sl}(2, \mathbb{R})$ subalgebras, respectively. Within each set, their inner products form the constant non-degenerate matrix

$$\begin{align}
g_{\mu \nu}\xi _{a}^{\mu}\xi _{b}^{\nu}=g_{\mu \nu}\bar{\xi}_{a}^{\mu}\bar{\xi}_{b}^{\nu} & =\begin{pmatrix}
0 & 0 & \frac{1}{2} \\
0 & -\frac{1}{4} & 0 \\
\frac{1}{2} & 0 & 0
\end{pmatrix}
\end{align}$$

Accordingly, the inverse metric can be written directly in terms of the Killing fields:

$$\begin{align}
g^{\mu \nu} & =2\xi _{-1}^{\mu}\xi _{1}^{\nu}+2\xi _{1}^{\mu}\xi _{-1}^{\nu}-4\xi _{0}^{\mu}\xi _{0}^{\nu} \\
 & =2\bar{\xi}_{-1}^{\mu}\bar{\xi}_{1}^{\nu}+2\bar{\xi}_{1}^{\mu}\bar{\xi}_{-1}^{\nu}-4\bar{\xi}_{0}^{\mu}\bar{\xi}_{0}^{\nu}
\end{align}$$

Contracting the Levi-Civita tensor $\varepsilon _{\mu \nu \rho}$ with two Killing fields yields a third Killing field:

$$\begin{align}
\varepsilon _{\mu \nu \rho}\xi _{0}^{\nu}\xi _{1}^{\rho} & =\frac{i}{2}\xi _{1,\mu} \\
\varepsilon _{\mu \nu \rho}\xi _{0}^{\nu}\xi _{-1}^{\rho} & =-\frac{i}{2}\xi _{-1,\mu} \\
\varepsilon _{\mu \nu \rho}\xi _{1}^{\nu}\xi _{-1}^{\rho} & =-i\xi _{0,\mu}
\end{align}$$

and similarly for the right-moving sector:

$$\begin{align}
\varepsilon _{\mu \nu \rho}\bar{\xi}_{0}^{\nu}\bar{\xi}_{1}^{\rho} & =-\frac{i}{2}\bar{\xi}_{1,\mu} \\
\varepsilon _{\mu \nu \rho}\bar{\xi}_{0}^{\nu}\bar{\xi}_{-1}^{\rho} & =\frac{i}{2}\bar{\xi}_{-1,\mu} \\
\varepsilon _{\mu \nu \rho}\bar{\xi}_{1}^{\nu}\bar{\xi}_{-1}^{\rho} & =i\bar{\xi}_{0,\mu}
\end{align}$$

Finally, their covariant derivatives satisfy

$$\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{\rho} \\
\nabla _{\mu}\bar{\xi}_{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{\rho}
\end{align}$$

These algebraic identities will be used repeatedly in the later analysis, both in organizing the normal modes into highest-weight representations and in simplifying the covariant phase space computations.

## 1.2 The action and asymptotic boundary conditions

The dynamical field is a massive vector field $A_\mu(x)$. The action contains a Maxwell term, a Proca mass term with parameter $\mu > 0$, and a Chern-Simons term with real coupling $k \in \mathbb{R}$:

$$\begin{align}
S = -\frac{1}{4}\int_M \mathrm{d}^3x \sqrt{-g} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2}\mu^2 \int_M \mathrm{d}^3x \sqrt{-g} A_\mu A^\mu + \frac{k}{4\pi} \int_M \mathrm{d}^3x \sqrt{-g} \, \varepsilon^{\mu\nu\rho} A_\mu \nabla_\nu A_\rho,
\end{align}$$

Here $F_{\mu\nu} = \nabla_\mu A_\nu - \nabla_\nu A_\mu$ is the field strength, and $\varepsilon^{\mu\nu\rho}$ is the Levi-Civita tensor defined by $\varepsilon^{\mu\nu\rho} = \frac{1}{\sqrt{-g}} \hat{\epsilon}^{\mu\nu\rho}$ with $\hat{\epsilon}^{tr\phi} = 1$. The integration region $M$ is the bulk spacetime region between the initial constant-$t$ Cauchy surface $\Sigma_i$ at $t=t_i$ and the final Cauchy surface $\Sigma_f$ at $t=t_f$, with $t_f > t_i$.

To obtain a well-defined variational principle and a normalizable mode expansion, we impose the following asymptotic falloffs on the contravariant components as $r \to \infty$:

$$\begin{align}
A^{t} & =o(r^{-2}), & A^{r} & =o(r^{-1}), & A^{\phi} & =o(r^{-2})
\end{align}$$

and similarly on the variations:

$$\begin{align}
\delta A^{t} & =o(r^{-2}), & \delta A^{r} & =o(r^{-1}), & \delta A^{\phi} & =o(r^{-2})
\end{align}$$

Equivalently, after lowering indices with the AdS$_3$ metric, these conditions become

$$\begin{align}
A_{t} & =o(r^{0}), & A_{r} & =o(r^{-3}), & A_{\phi} & =o(r^{0})
\end{align}$$

and the same falloffs hold for the corresponding variations. As shown in [[Articles/Quantization in AdS/Proca-Chern-Simons/arxiv/another template/appendix_a|Appendix A]], these asymptotic conditions ensure that the action and the physical quantities entering the covariant phase space analysis remain finite. Therefore, the theory admits a well-defined variational principle without the need for additional boundary counterterms.
