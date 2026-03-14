# 2. The Proca-Chern-Simons theory in the global AdS$_3$ spacetime

In this section, we introduce the main setup of our study: the free topologically massive vector field—specifically, the Proca-Chern-Simons theory—in the global AdS$_3$ spacetime.

## 2.1 Spacetime background

We parameterize the global AdS$_3$ spacetime using the standard coordinate system $(t, r, \phi)$, with ranges $t \in (-\infty, +\infty)$, $r \in (0, +\infty)$, and the angular periodicity $\phi \sim \phi + 2\pi$. The background metric takes the form:

$$\mathrm{d}s^2 = -(1+r^2)\mathrm{d}t^2 + \frac{\mathrm{d}r^2}{1+r^2} + r^2 \mathrm{d}\phi^2.$$

This geometry possesses an $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$ isometry group. The six independent Killing vector fields corresponding to this $\mathfrak{sl}(2, \mathbb{R}) \oplus \mathfrak{sl}(2, \mathbb{R})$ algebra can be explicitly chosen as:

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\xi _{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}-\frac{\partial}{\partial \phi}\right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}-\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}-i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}+\frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left(\frac{r}{\sqrt{ 1+r^{2} }} \frac{\partial}{\partial t}+i\sqrt{ 1+r^{2} } \frac{\partial}{\partial r}+\frac{\sqrt{ 1+r^{2} }}{r} \frac{\partial}{\partial \phi}\right)
\end{align}$$

These Killing vectors satisfy the following standard commutation relations:

$$\begin{align}
[\xi _{0},\xi _{\pm 1}] & =\mp \xi _{\pm 1}, & [\xi _{1},\xi _{-1}] & =2\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{\pm 1}] & =\mp \bar{\xi}_{\pm 1}, & [\bar{\xi}_{1},\bar{\xi}_{-1}] & =2\bar{\xi}_{0} \\
[\xi _{a},\bar{\xi}_{b}] & =0, & a,b & \in \{-1,0,1\}
\end{align}$$

We naturally divide these Killing vectors into two sets, $\{\xi_{-1}, \xi_0, \xi_1\}$ and $\{\bar{\xi}_{-1}, \bar{\xi}_0, \bar{\xi}_1\}$, which generate the left and right $\mathfrak{sl}(2, \mathbb{R})$ sub-algebras, respectively. For each set, the inner products between the Killing vectors naturally form a constant non-degenerate matrix:

$$\begin{align}
g_{\mu \nu}\xi _{a}^{\mu}\xi _{b}^{\nu}=g_{\mu \nu}\bar{\xi}_{a}^{\mu}\bar{\xi}_{b}^{\nu} & =\begin{pmatrix}
0 & 0 & \frac{1}{2} \\
0 & -\frac{1}{4} & 0 \\
\frac{1}{2} & 0 & 0
\end{pmatrix}
\end{align}$$

Accordingly, the inverse metric can be expressed directly in terms of the Killing vectors as:

$$\begin{align}
g^{\mu \nu} & =2\xi _{-1}^{\mu}\xi _{1}^{\nu}+2\xi _{1}^{\mu}\xi _{-1}^{\nu}-4\xi _{0}^{\mu}\xi _{0}^{\nu} \\
 & =2\bar{\xi}_{-1}^{\mu}\bar{\xi}_{1}^{\nu}+2\bar{\xi}_{1}^{\mu}\bar{\xi}_{-1}^{\nu}-4\bar{\xi}_{0}^{\mu}\bar{\xi}_{0}^{\nu}
\end{align}$$

The contractions of the totally antisymmetric Levi-Civita tensor $\varepsilon _{\mu \nu \rho}$ with two Killing fields naturally yield a third Killing field sequence:

$$\begin{align}
\varepsilon _{\mu \nu \rho}\xi _{0}^{\nu}\xi _{1}^{\rho} & =\frac{i}{2}\xi _{1,\mu} \\
\varepsilon _{\mu \nu \rho}\xi _{0}^{\nu}\xi _{-1}^{\rho} & =-\frac{i}{2}\xi _{-1,\mu} \\
\varepsilon _{\mu \nu \rho}\xi _{1}^{\nu}\xi _{-1}^{\rho} & =-i\xi _{0,\mu}
\end{align}$$

and similarly for the right-moving (barred) Killing vectors:

$$\begin{align}
\varepsilon _{\mu \nu \rho}\bar{\xi}_{0}^{\nu}\bar{\xi}_{1}^{\rho} & =-\frac{i}{2}\bar{\xi}_{1,\mu} \\
\varepsilon _{\mu \nu \rho}\bar{\xi}_{0}^{\nu}\bar{\xi}_{-1}^{\rho} & =\frac{i}{2}\bar{\xi}_{-1,\mu} \\
\varepsilon _{\mu \nu \rho}\bar{\xi}_{1}^{\nu}\bar{\xi}_{-1}^{\rho} & =i\bar{\xi}_{0,\mu}
\end{align}$$

Finally, the covariant derivatives of the Killing fields can be expressed cleanly as linear combinations of the dual Killing fields themselves:

$$\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{\rho} \\
\nabla _{\mu}\bar{\xi}_{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{\rho}
\end{align}$$

These elegant algebraic properties will be utilized extensively in later sections to classify the energy and angular momentum modes into highest-weight representations and simplify covariant phase space calculations.

## 2.2 The Action and Asymptotic Boundary Conditions

The fundamental dynamical variable of our theory is a massive vector field $A_\mu(x)$. The full action consists of a Maxwell term, a Proca mass term (with parameter $\mu > 0$), and a topological Chern-Simons term characterized by a real coupling constant $k \in \mathbb{R}$:

$$S = -\frac{1}{4}\int_M \mathrm{d}^3x \sqrt{-g} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2}\mu^2 \int_M \mathrm{d}^3x \sqrt{-g} A_\mu A^\mu + \frac{k}{4\pi} \int_M \mathrm{d}^3x \sqrt{-g} \, \varepsilon^{\mu\nu\rho} A_\mu \nabla_\nu A_\rho,$$

where $F_{\mu\nu} = \nabla_\mu A_\nu - \nabla_\nu A_\mu$ is the electromagnetic field strength tensor, and $\varepsilon^{\mu\nu\rho}$ is the totally antisymmetric Levi-Civita covariant tensor defined as $\varepsilon^{\mu\nu\rho} = \frac{1}{\sqrt{-g}} \hat{\epsilon}^{\mu\nu\rho}$ (with the standard coordinate setup $\hat{\epsilon}^{tr\phi} = 1$). We define the integration region $M$ as the spacetime bulk sandwiched between an initial constant-$t$ Cauchy surface $\Sigma_i$ at $t=t_i$ and a final Cauchy surface $\Sigma_f$ at $t=t_f$ (where $t_f > t_i$).

To ensure a well-defined variational principle and mathematically normalizable mode solutions, we impose the following specific asymptotic boundary conditions for the covariant field components as $r \to \infty$:

$$\begin{align}
A_{t} & =o(r^{-2}), & A_{r} & =o(r^{-1}), & A_{\phi} & =o(r^{-2})
\end{align}$$

and for the global variation configurations of the fields as $r \to \infty$:

$$\begin{align}
\delta A_{t} & =o(r^{-2}), & \delta A_{r} & =o(r^{-1}), & \delta A_{\phi} & =o(r^{-2})
\end{align}$$

As demonstrated in detail in Appendix A (see [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/5_appendices|5_appendices]]), under these asymptotic boundary conditions, the action and its derivative physical quantities remain strictly finite. Thus, both the theory and its associated covariant variational principle are rigorously well-defined without the need for additional ad-hoc surface boundary counterterms.

