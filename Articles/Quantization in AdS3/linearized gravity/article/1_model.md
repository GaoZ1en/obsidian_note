---
title: "1_model"
date: 2026-05-15
summary: "Sets up linearized Einstein gravity on global AdS3, Brown-Henneaux boundary conditions, the ungauge-fixed equations of motion, and the covariant symplectic form."
---

# 1. Linearized Einstein gravity in global AdS$_3$

In this section, we specify the background geometry, the renormalized gravitational action, the Brown-Henneaux boundary conditions, and the covariant phase space structure used in the rest of the paper. The presentation follows the same logic as the Proca-Chern-Simons analysis: first define the model and its boundary conditions, then extract the equations of motion and the symplectic form that will be used for quantization.

## 1.1 Spacetime background

We work in global AdS$_3$ with AdS radius set to one. The coordinates are $(t,r,\phi)$, with $\phi\sim \phi+2\pi$, and the background metric is

$$
\mathrm{d}s^2=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2.
$$

The isometry group is $\mathrm{SL}(2,\mathbb{R})_L\times \mathrm{SL}(2,\mathbb{R})_R$. We use the following Killing-vector conventions:

$$
\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}-i\sqrt{1+r^2}\frac{\partial}{\partial r}-\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\xi _{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}-\frac{\partial}{\partial \phi}\right),\\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}+i\sqrt{1+r^2}\frac{\partial}{\partial r}-\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}-i\sqrt{1+r^2}\frac{\partial}{\partial r}+\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{0} & =\frac{1}{2}\left(\frac{\partial}{\partial t}+\frac{\partial}{\partial \phi}\right),\\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left(\frac{r}{\sqrt{1+r^2}}\frac{\partial}{\partial t}+i\sqrt{1+r^2}\frac{\partial}{\partial r}+\frac{\sqrt{1+r^2}}{r}\frac{\partial}{\partial \phi}\right).
\end{align}
$$

They satisfy

$$
\begin{align}
[\xi_0,\xi_{\pm1}]&=\pm i\xi_{\pm1},&
[\xi_1,\xi_{-1}]&=-2i\xi_0,\\
[\bar{\xi}_0,\bar{\xi}_{\pm1}]&=\pm i\bar{\xi}_{\pm1},&
[\bar{\xi}_1,\bar{\xi}_{-1}]&=-2i\bar{\xi}_0,\\
[\xi_a,\bar{\xi}_b]&=0.
\end{align}
$$

These exact Killing fields will be used to build the highest-weight boundary modes in Section 2.

## 1.2 Action and boundary conditions

The renormalized gravitational action is

$$
S[g]=\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g}(R+2)
+\frac{1}{8\pi G}\int_\Gamma\mathrm{d}^2x\sqrt{-\gamma}(K-1).
$$

Here $\Gamma$ is the large-radius timelike boundary, $\gamma_{ab}$ is the induced metric on $\Gamma$, and $K$ is the trace of the extrinsic curvature. The counterterm is the standard local counterterm for asymptotically AdS$_3$ gravity with unit AdS radius.

We expand around the AdS$_3$ background as

$$
g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}.
$$

The perturbation obeys Brown-Henneaux boundary conditions:

$$
\begin{array}{c|ccc}
\mathcal{O}(r^n) & h_{tt},h_{t\phi},h_{\phi\phi} & h_{tr},h_{r\phi} & h_{rr}\\
\hline
 & 0 & -3 & -4
\end{array}
$$

The same falloffs are imposed on allowed variations. These boundary conditions preserve the asymptotic AdS$_3$ structure while allowing non-trivial large diffeomorphisms at infinity. The component falloffs and boundary geometry are collected in Appendix A.

## 1.3 Linearized equations and symplectic form

Expanding the bulk action around the background gives

$$
S_{\mathrm{bulk}}[g^{(0)}+h]
=\frac{1}{16\pi G}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}
\left(\mathcal{L}^{(0)}+\mathcal{L}^{(1)}+\mathcal{L}^{(2)}\right)
+\mathcal{O}(h^3),
$$

where

$$
\mathcal{L}^{(0)}=-4,
$$

the linear term is the total derivative

$$
\mathcal{L}^{(1)}
=\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}
-\nabla^{(0)2}h,
$$

and the quadratic bulk Lagrangian is

$$
\begin{align}
\mathcal{L}^{(2)}
&=\frac{1}{2}h^2-h_{\mu\nu}h^{\mu\nu}
+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h
-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho
+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu
-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho
+\frac{1}{2}h\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}
+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad-\frac{1}{2}h\nabla^{(0)2}h
-\frac{1}{2}\nabla^{(0)}_\mu h_{\nu\rho}\nabla^{(0)\rho}h^{\mu\nu}
+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}
$$

The perturbative geometric formulas used to obtain this expression are recorded in Appendix D. The boundary action does not affect the bulk equations of motion, but its perturbative expansion is needed when checking the radial variational problem.

The first variation takes the form

$$
\delta S_{\mathrm{bulk}}
=\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,E_{\mu\nu}\delta h^{\mu\nu}
+\theta|_{\Sigma_f}-\theta|_{\Sigma_i},
$$

The radial contribution is treated together with the Gibbons-Hawking term and counterterm in the boundary expansion of Appendix D. The ungauge-fixed linearized equation is

$$
\begin{align}
0=&-h_{\mu\nu}-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}
-\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\sigma h^{\rho\sigma}
+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}h\\
&+\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\rho h_\nu{}^\rho
+\frac{1}{2}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho
-\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h .
\end{align}
$$

The trace equation is

$$
-h+\frac{1}{2}\nabla^{(0)2}h-\frac{1}{2}\nabla^{(0)}_\rho\nabla^{(0)}_\sigma h^{\rho\sigma}=0.
$$

This equation defines the linearized phase space before choosing representatives of each diffeomorphism class.

The symplectic potential is

$$
\theta
=\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\Theta^\mu,
\qquad
\Theta^\mu=-\frac{1}{16\pi G}
\left(
\nabla^{(0)}_\nu\delta h^{\mu\nu}
-\nabla^{(0)\mu}\delta h
+h^{\mu\nu}\nabla^{(0)}_\nu\delta h
-\frac{1}{2}h\nabla^{(0)\mu}\delta h
+h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho}
-h^{\nu\rho}\nabla^{(0)}_\rho\delta h^\mu{}_\nu
-h^{\mu\nu}\nabla^{(0)}_\rho\delta h_\nu{}^\rho
+\frac{1}{2}h\nabla^{(0)}_\nu\delta h^{\mu\nu}
+\frac{1}{2}\nabla^{(0)\mu}h_{\nu\rho}\delta h^{\nu\rho}
+\frac{1}{2}\nabla^{(0)}_\nu h\,\delta h^{\mu\nu}
-\nabla^{(0)}_\rho h^{\nu\rho}\delta h^\mu{}_\nu
\right).
$$

The first two terms come from the total derivative $\mathcal{L}^{(1)}$; they do not contribute to the field-space exterior derivative because the background connection is fixed. The symplectic form is

$$
\begin{align}
\Omega
&=\delta\theta\\
&=-\frac{1}{16\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu
\Big[
\delta h^{\mu\nu}\wedge\nabla^{(0)}_\nu\delta h
-\frac{1}{2}\delta h\wedge\nabla^{(0)\mu}\delta h\\
&\qquad+\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}
-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu
-\delta h^{\mu\nu}\wedge\nabla^{(0)}_\rho\delta h_\nu{}^\rho\\
&\qquad+\frac{1}{2}\delta h\wedge\nabla^{(0)}_\nu\delta h^{\mu\nu}
+\frac{1}{2}\nabla^{(0)\mu}\delta h_{\nu\rho}\wedge\delta h^{\nu\rho}
+\frac{1}{2}\nabla^{(0)}_\nu\delta h\wedge\delta h^{\mu\nu}
-\nabla^{(0)}_\rho\delta h^{\nu\rho}\wedge\delta h^\mu{}_\nu
\Big].
\end{align}
$$

Here $\Sigma$ is a constant-$t$ Cauchy surface and $\tau_\mu$ is its future-pointing unit normal. For explicit mode calculations this covariant form can be rewritten by choosing representatives of the gauge orbits and integrating by parts on $\Sigma$.
