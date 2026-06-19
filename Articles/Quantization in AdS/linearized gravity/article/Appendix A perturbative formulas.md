---
title: "Appendix A perturbative formulas"
date: 2026-05-19
summary: "Collects the perturbative formulas for linearized Einstein gravity, including the equations of motion, covariant symplectic structure, and surface-charge form used in the main text."
---

# Perturbative formulas

This appendix records the perturbative formulas used in the main text. All quantities are expanded around global AdS$_3$,

$$
g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}.
$$

We collect the direct perturbative expansions used in the main text.

## Background conventions

The AdS radius is set to one. All indices on the perturbation are raised and lowered with $g^{(0)}_{\mu\nu}$, and $\nabla^{(0)}$ denotes the covariant derivative compatible with $g^{(0)}_{\mu\nu}$. We use

$$
h=g^{(0)\mu\nu}h_{\mu\nu}.
$$

The background curvature conventions are

$$\begin{align}
R^{(0)}_{\mu\nu\rho\sigma}&=g^{(0)}_{\mu\sigma}g^{(0)}_{\nu\rho}-g^{(0)}_{\mu\rho}g^{(0)}_{\nu\sigma},\\
R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu},\\
R^{(0)}&=-6.
\end{align}$$

The volume form $\displaystyle{\varepsilon^{(0)}{} _{\mu \nu \rho}}$ is normalized by $\displaystyle{\sqrt{ -g }\varepsilon ^{(0)}{}_{tr\phi}=1}$.

## Bulk perturbation

The inverse metric and volume density expand as

$$\begin{align}
g^{\mu\nu}&=g^{(0)\mu\nu}-h^{\mu\nu}+h^{\mu\rho}h_{\rho}{}^{\nu}+\mathcal{O}(h^3),\\
\sqrt{-g}&=\sqrt{-g^{(0)}}\left(1+\frac{1}{2}h-\frac{1}{4}h_{\mu\nu}h^{\mu\nu}+\frac{1}{8}h^2+\mathcal{O}(h^3)\right).
\end{align}$$

Writing

$$
\Gamma^\rho{}_{\mu\nu}={\Gamma^{(0)}}^\rho{}_{\mu\nu}+C^{(1)\rho}{}_{\mu\nu}+C^{(2)\rho}{}_{\mu\nu}+\mathcal{O}(h^3),
$$

the first two perturbative pieces are

$$\begin{align}
C^{(1)\rho}{}_{\mu\nu}&=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu h_{\sigma\nu}+\nabla^{(0)}_\nu h_{\mu\sigma}-\nabla^{(0)}_\sigma h_{\mu\nu}\right),\\
C^{(2)\rho}{}_{\mu\nu}&=\frac{1}{2}h^{\rho\sigma}\left(\nabla^{(0)}_\sigma h_{\mu\nu}-\nabla^{(0)}_\mu h_{\sigma\nu}-\nabla^{(0)}_\nu h_{\mu\sigma}\right).
\end{align}$$

Using these expansions, the bulk Lagrangian density takes the form

$$
\sqrt{-g}(R+2)=\sqrt{-g^{(0)}}\left(\mathcal{L}^{(0)}+\mathcal{L}^{(1)}+\mathcal{L}^{(2)}\right)+\mathcal{O}(h^3),
$$

with

$$\begin{align}
\mathcal{L}^{(0)}&=-4,\\
\mathcal{L}^{(1)}&=\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}-\nabla^{(0)2}h,\\
\mathcal{L}^{(2)}&=\frac{1}{2}h^2-h_{\mu\nu}h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho+\frac{1}{2}h\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad-\frac{1}{2}h\nabla^{(0)2}h-\frac{1}{2}\nabla^{(0)}_\mu h_{\nu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The linear term is a total derivative on the AdS$_3$ background. The boundary and counterterm contributions needed to make the variational principle finite under Brown-Henneaux falloffs are discussed in Appendix B.

## Linearized equations of motion

Expanding the full Einstein equation

$$
\mathcal{E}_{\mu\nu}[g]:=R_{\mu\nu}[g]-\frac{1}{2}g_{\mu\nu}R[g]-g_{\mu\nu}
$$

around $g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}$ gives, since $\mathcal{E}_{\mu\nu}[g^{(0)}]=0$,

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}&=-h_{\mu\nu}-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}+\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\rho h_\nu{}^\rho+\frac{1}{2}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho-\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h\\
&\quad+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}h-\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\sigma h^{\rho\sigma}.
\end{align}$$

The equation of motion is $\mathcal{E}^{(1)}_{\mu\nu}=0$. The variational equation $E_{\mu\nu}=0$ in Section 1 is the same equation written in the representative obtained from the quadratic action after integrations by parts.

The CPS and charge formulas below are also perturbative expansions of the corresponding full-gravity objects; they fix conventions and agree with the covariant phase-space construction used in Sections 1 and 3.

## Symplectic potential and symplectic form

Expanding the full symplectic potential gives, on a Cauchy surface,

$$
\theta=\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)}_\mu\theta^\mu ,
$$

where

$$\begin{align}
\theta^\mu&=-\frac{1}{16\pi G}\left(\nabla^{(0)}_\nu\delta h^{\mu\nu}-\nabla^{(0)\mu}\delta h+h^{\mu\nu}\nabla^{(0)}_\nu\delta h-\frac{1}{2}h\nabla^{(0)\mu}\delta h\right.\\
&\quad+h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho}-h^{\nu\rho}\nabla^{(0)}_\rho\delta h^\mu{}_\nu-h^{\mu\nu}\nabla^{(0)}_\rho\delta h_\nu{}^\rho+\frac{1}{2}h\nabla^{(0)}_\nu\delta h^{\mu\nu}\\
&\quad\left.+\frac{1}{2}\nabla^{(0)\mu}h_{\nu\rho}\delta h^{\nu\rho}+\frac{1}{2}\nabla^{(0)}_\nu h\,\delta h^{\mu\nu}-\nabla^{(0)}_\rho h^{\nu\rho}\delta h^\mu{}_\nu\right).
\end{align}$$

Taking one further field-space variation of this perturbative potential gives the bulk symplectic form

$$\begin{align}
\Omega&=\delta\theta\\
&=-\frac{1}{16\pi G}\int_\Sigma \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau^{(0)}_\mu\left(\frac{1}{2}\delta h^{\mu\nu}\wedge\nabla^{(0)}_\nu\delta h-\frac{1}{2}\delta h\wedge\nabla^{(0)\mu}\delta h\right.\\
&\quad\left.+\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu+\frac{1}{2}\delta h\wedge\nabla^{(0)}_\nu\delta h^{\mu\nu}\right).
\end{align}$$

## Noether charge

For an asymptotic diffeomorphism generated by $\xi^\mu$, expanding the full diffeomorphism action on $g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}$ gives the symmetry vector field on the linearized configuration space,

$$
X_\xi=\int\mathrm{d}^3x\left(\mathcal{L}_\xi g^{(0)}_{\mu\nu}+\mathcal{L}_\xi h_{\mu\nu}+\mathcal{O}(h^2)\right)\frac{\delta}{\delta h_{\mu\nu}}.
$$

The corresponding Noether charge is likewise obtained by perturbatively expanding the full gravitational surface charge. This is the surface-charge representative compatible with the CPS bracket in Section 3,

$$
H_\xi\approx\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,\tau^{(0)}_\mu n^{(0)}_\nu Q_\xi^{\mu\nu},
$$

where, to the order needed for the main text,

$$\begin{align}
Q_\xi^{\mu\nu}&=\frac{1}{16\pi G}\left(A_\xi^{(1)\mu\nu}+\frac{1}{2}hA_\xi^{(0)\mu\nu}\right)+\mathcal{O}(h^2),\\
A_\xi^{(0)\mu\nu}&=\nabla^{(0)\mu}\xi^\nu-\nabla^{(0)\nu}\xi^\mu,\\
A_\xi^{(1)\mu\nu}&=-h^{\mu\rho}\nabla^{(0)}_\rho\xi^\nu+h^{\nu\rho}\nabla^{(0)}_\rho\xi^\mu+\xi^\rho\left(\nabla^{(0)\mu}h^\nu{}_\rho-\nabla^{(0)\nu}h^\mu{}_\rho\right).
\end{align}$$

The variation of the Noether charge is

$$
\delta H_\xi\approx\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,\tau^{(0)}_\mu n^{(0)}_\nu k_\xi^{\mu\nu},
$$

with

$$
k_\xi^{\mu\nu}=\delta Q_\xi^{\mu\nu}-2\xi^{[\mu}\theta^{\nu]}.
$$

Explicitly,

$$\begin{align}
k_\xi^{\mu\nu}&=\frac{1}{16\pi G}\left[\xi^\rho\left(\nabla^{(0)\mu}\delta h^\nu{}_\rho-\nabla^{(0)\nu}\delta h^\mu{}_\rho\right)+\frac{1}{2}\delta h\left(\nabla^{(0)\mu}\xi^\nu-\nabla^{(0)\nu}\xi^\mu\right)\right.\\
&\quad-\delta h^{\mu\rho}\nabla^{(0)}_\rho\xi^\nu+\delta h^{\nu\rho}\nabla^{(0)}_\rho\xi^\mu+\xi^\mu\left(\nabla^{(0)}_\rho\delta h^{\nu\rho}-\nabla^{(0)\nu}\delta h\right)\\
&\quad\left.-\xi^\nu\left(\nabla^{(0)}_\rho\delta h^{\mu\rho}-\nabla^{(0)\mu}\delta h\right)\right]+\mathcal{O}(h\delta h).
\end{align}$$
