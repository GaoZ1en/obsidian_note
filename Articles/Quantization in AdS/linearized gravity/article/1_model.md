---
title: "1_model"
date: 2026-05-15
summary: "Sets up linearized Einstein gravity on global AdS3, Brown-Henneaux boundary conditions, the ungauge-fixed equations of motion, and the covariant symplectic form."
---

# Linearized Einstein gravity in global AdS$_3$

In this section, we fix the background geometry, the linearized gravitational action, and the Brown-Henneaux boundary conditions used throughout the paper.

## Spacetime background

We parameterize global AdS$_3$ by the standard coordinates $(t,r,\phi)$, with ranges $t\in(-\infty,+\infty)$, $r\in[0,+\infty)$, and angular periodicity $\phi \sim \phi+2\pi$. The background metric is

$$\begin{align}
\mathrm{d}s^{2} & =g^{(0)}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2
\end{align}$$

The isometry group is $\mathrm{SL}(2,\mathbb{R})_L\times \mathrm{SL}(2,\mathbb{R})_R$. A convenient basis of Killing fields generating $\mathfrak{sl}(2,\mathbb{R})\oplus \mathfrak{sl}(2,\mathbb{R})$ is

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}-i\sqrt{1+r^2}\frac{\partial}{\partial r}-\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\xi _{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}-\frac{\partial}{\partial \phi}\right),\\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}+i\sqrt{1+r^2}\frac{\partial}{\partial r}-\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}-i\sqrt{1+r^2}\frac{\partial}{\partial r}+\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}+\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}+i\sqrt{1+r^2}\frac{\partial}{\partial r}+\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right).
\end{align}$$

They satisfy the standard commutation relations

$$\begin{align}
[\xi_0,\xi_{\pm1}]&=\pm i\xi_{\pm1},& [\xi_1,\xi_{-1}]&=-2i\xi_0,\\
[\bar{\xi}_0,\bar{\xi}_{\pm1}]&=\pm i\bar{\xi}_{\pm1},& [\bar{\xi}_1,\bar{\xi}_{-1}]&=-2i\bar{\xi}_0,\\
[\xi_a,\bar{\xi}_b]&=0, & a,b & \in\left\{-1,0,1\right\}
\end{align}$$

## Action and boundary conditions

The renormalized gravitational action is

$$\begin{align}
S[g]=\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g}(R+2) +\frac{1}{8\pi G}\int_\Gamma\mathrm{d}^2x\sqrt{-\gamma}(K-1).
\end{align}$$

Here the spacetime region $M$ is bounded by the initial and final Cauchy surfaces $\Sigma _{i}$ and $\Sigma _{f}$, together with the timelike cutoff surface $\Gamma$. Thus $\partial M=\Sigma_i\cup\Sigma_f\cup\Gamma$. The metric induced on $\Gamma$ is denoted by $\gamma_{ab}$, and $K$ is the trace of its extrinsic curvature. The counterterm is the standard local counterterm for asymptotically AdS$_3$ gravity with unit AdS radius.

We expand around the global AdS$_3$ background as

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}.
\end{align}$$

The perturbation obeys Brown-Henneaux boundary conditions:

$$\begin{align}
h_{tt} & =\mathcal{O}(r^{0}), & h_{tr} & =\mathcal{O}(r^{-3}), & h_{t\phi} & =\mathcal{O}(r^{0}) \\
 & & h_{rr} & =\mathcal{O}(r^{-4}), & h_{r\phi} & =\mathcal{O}(r^{-3}) \\
 &  &  &  & h_{\phi \phi} & =\mathcal{O}(r^{0})
\end{align}$$

Allowed variations are required to obey the same falloffs. These boundary conditions preserve the asymptotic AdS$_3$ structure while allowing non-trivial large diffeomorphisms at infinity. At the level needed below, the corresponding vector fields have the asymptotic behavior

$$\begin{align}
\zeta ^{t} & =\mathcal{O}(r^{0}), & \zeta ^{r} & =\mathcal{O}(r), & \zeta ^{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

Expanding the bulk part of the action around the background gives

$$\begin{align}
S_{\mathrm{bulk}}[g^{(0)}+h] =\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}} \left(\mathcal{L}^{(0)}+\mathcal{L}^{(1)}+\mathcal{L}^{(2)}\right) +\mathcal{O}(h^3),
\end{align}$$

where

$$\begin{align}
\mathcal{L}^{(0)} & =-4 \\
\mathcal{L}^{(1)} & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h \\
\mathcal{L}^{(2)}&=\frac{1}{2}h^2-h_{\mu\nu}h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho+\frac{1}{2}h\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad-\frac{1}{2}h\nabla^{(0)2}h-\frac{1}{2}\nabla^{(0)}_\mu h_{\nu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

In these formulas, all indices are raised and lowered with $g^{(0)}_{\mu \nu}$, $\nabla ^{(0)}$ is the background covariant derivative compatible with $g^{(0)}_{\mu \nu}$, and $h=g^{(0)\mu \nu}h_{\mu \nu}$. The perturbative geometric formulas used to obtain this expression are recorded in Appendix A. The boundary terms required by the variational principle and by finiteness of the relevant quantities are discussed separately in Appendix B.

## Covariant phase space formalism

Varying the bulk action to quadratic order in $h_{\mu \nu}$ gives

$$\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }E^{\mu \nu}\delta h_{\mu \nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}$$

where terms supported on the cutoff boundary $\Gamma$ are treated together with the variation of the boundary action in Appendix B. The linearized equation is

$$\begin{align}
E_{\mu \nu} & =\frac{1}{16\pi G}\left(g^{(0)}_{\mu \nu}h-2h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\right. \\
 & \left.+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\right)
\end{align}$$

and the symplectic potential is

$$\begin{align}
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)} _{\mu}\theta ^{\mu} \\
\theta ^{\mu} & =-\frac{1}{16\pi G}\left(\nabla ^{(0)} _{\nu}\delta h^{\mu \nu}-\nabla ^{(0)\mu}\delta h+h^{\mu \nu}\nabla ^{(0)} _{\nu}\delta h-\frac{1}{2}h\nabla ^{(0)\mu}\delta h\right. \\
 & +h^{\nu \rho}\nabla ^{(0)\mu}\delta h_{\nu \rho}-h^{\nu \rho}\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\rho}\delta h_{\nu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu} \\
 & \left.+\frac{1}{2}\nabla ^{(0)\mu}h_{\nu \rho}\delta h^{\nu \rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}-\nabla ^{(0)} _{\rho}h^{\nu \rho}\delta h^{\mu}_{~\nu}\right)
\end{align}$$

Here $\displaystyle{\sigma ^{(0)} _{ab}}$ is the metric induced on the Cauchy surfaces $\displaystyle{\Sigma _{f,i}}$,

$$\begin{align}
\mathrm{d}s_{\Sigma} & =\sigma ^{(0)} _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} \\
 & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and $\displaystyle{\tau ^{(0)\mu}}$ is the future-pointing unit normal vector orthogonal to these Cauchy surfaces, defined as

$$\begin{align}
\tau ^{(0)\mu} & =\frac{1}{\sqrt{ 1+r^{2} }}\delta ^{\mu}_{t}
\end{align}$$

Taking a further variation of the symplectic potential gives the symplectic form

$$\begin{align}
\Omega & =\delta \theta \\
 & =-\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)} _{\mu}\left(\frac{1}{2}\delta h^{\mu \nu}\wedge \nabla ^{(0)}_{\nu}\delta h-\frac{1}{2}\delta h\wedge \nabla ^{(0)\mu}\delta h\right. \\
 & \left.+\frac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-\delta h^{\nu \rho}\wedge\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}+\frac{1}{2}\delta h\wedge \nabla ^{(0)}_{\nu}\delta h^{\mu \nu}\right)
\end{align}$$

The finiteness of the near-boundary contribution is discussed in Appendix B. We define the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the space of solutions to the linearized equations of motion obeying the Brown-Henneaux boundary conditions. At this stage we do not quotient by proper diffeomorphisms, namely gauge redundancies. The quotient and the role of improper diffeomorphisms, namely large gauge transformations, will be fixed after the mode analysis.

Since the theory is free, $\displaystyle{\tilde{\mathcal{P}}}$ is naturally a linear space. We therefore identify a solution $\displaystyle{h_{i,\mu \nu}}$ with the corresponding tangent vector on $\displaystyle{\tilde{\mathcal{P}}}$,

$$\begin{align}
X_{h_{i}} & =\int \mathrm{d}^{3}x h_{i,\mu \nu} \frac{\delta}{\delta h_{\mu \nu}}
\end{align}$$

and evaluate the symplectic form on two such tangent vectors to obtain the bilinear pairing

$$\begin{align}
\Omega[h_{1},h_{2}] & =X_{h_{2}}\cdot X_{h_{1}}\cdot \Omega|_{\tilde{\mathcal{P}}}
\end{align}$$

This bilinear form $\displaystyle{\Omega[\cdot,\cdot]}$ is finite and independent of the choice of Cauchy surface $\displaystyle{\Sigma}$. Later we will use $\displaystyle{i\Omega[h_{1},h_{2}^{*}]}$ as the Hermitian inner product on the one-particle space.
