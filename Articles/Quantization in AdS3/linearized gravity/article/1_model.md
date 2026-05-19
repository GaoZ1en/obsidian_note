---
title: "1_model"
date: 2026-05-15
summary: "Sets up linearized Einstein gravity on global AdS3, Brown-Henneaux boundary conditions, the ungauge-fixed equations of motion, and the covariant symplectic form."
---

# Linearized Einstein gravity in global AdS$_3$

In this section, we specify the background geometry, the linearized gravitational action, the Brown-Henneaux boundary conditions used throughout the paper.

## Spacetime background

we parameterize the global AdS$\displaystyle{_{3}}$ by the standard coordinates $\displaystyle{(t,r,\phi)}$, with ranges $\displaystyle{t\in(-\infty,+\infty)}$, $\displaystyle{r\in[0,+\infty)}$, and angular periodicity $\displaystyle{\phi \sim \phi+2\pi}$. the background metric is

$$
\mathrm{d}s^2=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2.
$$

The isometry group is $\mathrm{SL}(2,\mathbb{R})_L\times \mathrm{SL}(2,\mathbb{R})_R$. a convenient basis of Killing fields generating the algebra $\displaystyle{\mathfrak{sl}(2,\mathbb{R})\oplus \mathfrak{sl}(2,\mathbb{R})}$ is

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
[\xi_0,\xi_{\pm1}]&=\pm i\xi_{\pm1},&
[\xi_1,\xi_{-1}]&=-2i\xi_0,\\
[\bar{\xi}_0,\bar{\xi}_{\pm1}]&=\pm i\bar{\xi}_{\pm1},&
[\bar{\xi}_1,\bar{\xi}_{-1}]&=-2i\bar{\xi}_0,\\
[\xi_a,\bar{\xi}_b]&=0, & a,b & \in\left\{-1,0,1\right\}
\end{align}$$

## Action and boundary conditions

The renormalized gravitational action is

$$
S[g]=\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g}(R+2)
+\frac{1}{8\pi G}\int_\Gamma\mathrm{d}^2x\sqrt{-\gamma}(K-1).
$$

here the spacetime region $\displaystyle{M}$ is sandwiched by the inital and final Cauchy surfaces $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$ respectively, and the boundary $\displaystyle{\partial M}$ consists of $\displaystyle{\Sigma _{i}}$, $\displaystyle{\Sigma _{f}}$, and the spatial boundary $\displaystyle{\Gamma}$. $\gamma_{ab}$ is the induced metric on $\Gamma$, and $K$ is the trace of the extrinsic curvature. The counterterm is the standard local counterterm for asymptotically AdS$_3$ gravity with unit AdS radius.

We expand around the global AdS$_3$ background as

$$
g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}.
$$

The perturbation obeys Brown-Henneaux boundary conditions:

$$\begin{align}
h_{tt} & =\mathcal{O}(r^{0}), & h_{tr} & =\mathcal{O}(r^{-3}), & h_{t\phi} & =\mathcal{O}(r^{0}) \\
 & & h_{rr} & =\mathcal{O}(r^{-4}), & h_{r\phi} & =\mathcal{O}(r^{-3}) \\
 &  &  &  & h_{\phi \phi} & =\mathcal{O}(r^{0})
\end{align}$$

The same falloffs are imposed on allowed variations. These boundary conditions preserve the asymptotic AdS$_3$ structure while allowing non-trivial large diffeomorphisms at infinity.

Expanding the bulk action around the background gives

$$
S_{\mathrm{bulk}}[g^{(0)}+h]
=\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}
\left(\mathcal{L}^{(0)}+\mathcal{L}^{(1)}+\mathcal{L}^{(2)}\right)
+\mathcal{O}(h^3),
$$

where

$$\begin{align}
\mathcal{L}^{(0)} & =-4 \\
\mathcal{L}^{(1)} & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h \\
\mathcal{L}^{(2)}&=\frac{1}{2}h^2-h_{\mu\nu}h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho+\frac{1}{2}h\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad-\frac{1}{2}h\nabla^{(0)2}h-\frac{1}{2}\nabla^{(0)}_\mu h_{\nu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The perturbative geometric formulas used to obtain this expression are recorded in Appendix D. we will drop the discussion about boundary action, since it does not contribute to our main result which appears clearly in Appendix D.

take a variation of the linearized bulk action with respect to the metric perturbation $\displaystyle{h_{\mu \nu}}$

$$\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }E^{\mu \nu}\delta h_{\mu \nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}$$

terms support on the spatial boundary $\displaystyle{\Gamma}$ and the variation of boundary action will be treated in detail in Appendix D. here the linearized equation reads

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

here, $\displaystyle{\sigma ^{(0)} _{ab}}$ is the induced metric on the Cauchy surfaces $\displaystyle{\Sigma _{f,i}}$

$$\begin{align}
\mathrm{d}s_{\Sigma} & =\sigma ^{(0)} _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} \\
 & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and $\displaystyle{\tau ^{(0)\mu}}$ is the future-pointing unit normal vector orthogonal to these Cauchy surfaces, defined as

$$\begin{align}
\tau ^{(0)\mu} & =\frac{1}{\sqrt{ 1+r^{2} }}\delta ^{\mu}_{t}
\end{align}$$

take a further variation of the symplectic potential, we get the symplectic form

$$\begin{align}
\Omega & =\delta \theta \\
 & =-\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)} _{\mu}\left(\frac{1}{2}\delta h^{\mu \nu}\wedge \nabla ^{(0)}_{\nu}\delta h-\frac{1}{2}\delta h\wedge \nabla ^{(0)\mu}\delta h\right. \\
 & \left.+\frac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-\delta h^{\nu \rho}\wedge\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}+\frac{1}{2}\delta h\wedge \nabla ^{(0)}_{\nu}\delta h^{\mu \nu}\right)
\end{align}$$

finiteness of near-boundary contribution will be discussed in the Appendix D. we define the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the sapce of solutions of the equations of motions that obeying the asymptotic boundary conditions. because the theory is free, $\displaystyle{\tilde{\mathcal{P}}}$ is naturally a linear space. we therefore identify a solution $\displaystyle{h_{i,\mu \nu}}$ with the corresponding tangent vector on $\displaystyle{\tilde{\mathcal{P}}}$

$$\begin{align}
X_{h_{i}} & =\int \mathrm{d}^{3}x h_{i,\mu \nu} \frac{\delta}{\delta h_{\mu \nu}}
\end{align}$$

and evaluate the symplectic form on two such tangent vectors to obtain the bilinear pairing

$$\begin{align}
\Omega[h_{1},h_{2}] & =X_{h_{2}}\cdot X_{h_{1}}\cdot \Omega|_{\tilde{\mathcal{P}}}
\end{align}$$

this bilinear form $\displaystyle{\Omega[\cdot,\cdot]}$ is finite and independent of the choice of Cauchy surface $\displaystyle{\Sigma}$. later we will use $\displaystyle{i\Omega[h_{1},h_{2}^{*}]}$ as the Hermitian inner product on the one-particle space.
