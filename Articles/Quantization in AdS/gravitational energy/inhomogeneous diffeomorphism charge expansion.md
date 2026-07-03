---
title: "Inhomogeneous diffeomorphism charge expansion"
date: 2026-07-03
summary: "Re-expands the bulk diffeomorphism charge with the inhomogeneous asymptotic action on h kept explicitly, separating the kappa orders before comparing with the Brown-York boundary charge."
---

# Inhomogeneous diffeomorphism charge expansion

This note keeps the inhomogeneous action of an asymptotic diffeomorphism on the first metric perturbation. The expansion convention is

$$\begin{align}
g_{\mu\nu}
&=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu}+\kappa^2 k_{\mu\nu}+O(\kappa^3),
&
\kappa^2&=8\pi G.
\end{align}$$

The corresponding field-space vector is expanded as

$$\begin{align}
X_\xi\cdot\delta h_{\mu\nu}
&=\frac{1}{\kappa}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}
+\mathcal{L}_{\xi}h_{\mu\nu},\\
X_\xi\cdot\delta k_{\mu\nu}
&=\mathcal{L}_{\xi}k_{\mu\nu},\\
X_\xi\cdot\delta\varphi
&=\mathcal{L}_{\xi}\varphi.
\end{align}$$

Equivalently,

$$\begin{align}
X_\xi&=\frac{1}{\kappa}X_\xi^{[-1]}+X_\xi^{[0]}+O(\kappa),\\
X_\xi^{[-1]}\cdot\delta h_{\mu\nu}
&=\mathcal{L}_{\xi}g^{(0)}_{\mu\nu},&
X_\xi^{[-1]}\cdot\delta k_{\mu\nu}
&=0,&
X_\xi^{[-1]}\cdot\delta\varphi&=0,\\
X_\xi^{[0]}\cdot\delta h_{\mu\nu}
&=\mathcal{L}_{\xi}h_{\mu\nu},&
X_\xi^{[0]}\cdot\delta k_{\mu\nu}
&=\mathcal{L}_{\xi}k_{\mu\nu},&
X_\xi^{[0]}\cdot\delta\varphi&=\mathcal{L}_{\xi}\varphi.
\end{align}$$

Then

$$\begin{align}
\kappa\,X_\xi\cdot\delta h_{\mu\nu}
+\kappa^2 X_\xi\cdot\delta k_{\mu\nu}
&=\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}
+\kappa\mathcal{L}_{\xi}h_{\mu\nu}
+\kappa^2\mathcal{L}_{\xi}k_{\mu\nu}
+O(\kappa^3),
\end{align}$$

which is the perturbative expansion of \(X_\xi\cdot\delta g_{\mu\nu}=\mathcal{L}_\xi g_{\mu\nu}\).

## Action through \(O(\kappa^0)\)

The full action is

$$\begin{align}
S[g,\phi]
&=\frac{1}{2\kappa^2}\int_M\mathrm{d}^3x\sqrt{-g}\,(R+2)
-\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g}\,
\left(\nabla_{\mu}\phi\nabla^{\mu}\phi+m^2\phi^2\right).
\end{align}$$

On the unit AdS\(_3\) background,

$$\begin{align}
R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu},&
R^{(0)}&=-6,
\end{align}$$

write

$$\begin{align}
\sqrt{-g}(R+2)
&=\sqrt{-g^{(0)}}\left[
\mathcal{L}^{(0)}_{g}
+\kappa\mathcal{L}^{(1)}_{g}[h]
+\kappa^2\left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right)
\right]+O(\kappa^3),
\end{align}$$

where

$$\begin{align}
\mathcal{L}^{(0)}_{g}&=-4,\\
\mathcal{L}^{(1)}_{g}[X]
&=\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X^{\mu\nu}
-\nabla^{(0)2}X,\\
\mathcal{L}^{(2)}_{g}[X]
&=\frac{1}{2}X^2-X_{\mu\nu}X^{\mu\nu}
+X^{\mu\nu}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X
-\frac{1}{4}\nabla^{(0)}_{\mu}X\nabla^{(0)\mu}X\\
&\quad-\nabla^{(0)}_{\mu}X^{\mu\nu}\nabla^{(0)}_{\rho}X_{\nu}{}^{\rho}
+\nabla^{(0)\mu}X\nabla^{(0)}_{\nu}X_{\mu}{}^{\nu}
-X^{\mu\nu}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}X_{\mu}{}^{\rho}\\
&\quad-X^{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\nu}X_{\mu}{}^{\rho}
+\frac{1}{2}X\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X^{\mu\nu}
+X^{\mu\nu}\nabla^{(0)2}X_{\mu\nu}\\
&\quad-\frac{1}{2}X\nabla^{(0)2}X
-\frac{1}{2}\nabla^{(0)}_{\mu}X_{\nu\rho}\nabla^{(0)\rho}X^{\mu\nu}
+\frac{3}{4}\nabla^{(0)}_{\rho}X_{\mu\nu}\nabla^{(0)\rho}X^{\mu\nu}.
\end{align}$$

Thus

$$\begin{align}
S[g,\phi]
&=\frac{1}{\kappa^2}S^{[-2]}
+\frac{1}{\kappa}S^{[-1]}[h]
+S^{[0]}[h,k,\varphi]+O(\kappa),\\
S^{[-2]}
&=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,\mathcal{L}^{(0)}_{g},\\
S^{[-1]}[h]
&=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,\mathcal{L}^{(1)}_{g}[h],\\
S^{[0]}[h,k,\varphi]
&=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}
\left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right)\\
&\quad-\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}
\left(\nabla_{\mu}\varphi\nabla^{\mu}\varphi+m^2\varphi^2\right).
\end{align}$$

## Variation, equations, and symplectic potential

The variation through \(O(\kappa^0)\) is written as

$$\begin{align}
\delta S
&=\frac{1}{\kappa}\int_{\Sigma_f-\Sigma_i}
\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\Theta^{[-1]\mu}\\
&\quad+\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}
\left(E^{(h)}_{\mu\nu}\delta h^{\mu\nu}
+E^{(k)}_{\mu\nu}\delta k^{\mu\nu}
+E^{(\varphi)}\delta\varphi\right)\\
&\quad+\int_{\Sigma_f-\Sigma_i}
\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\Theta^{[0]\mu}
+O(\kappa).
\end{align}$$

With the sign convention used in `scalar charge matching.md`,

$$\begin{align}
\Theta^{[-1]\mu}
&=-\frac{1}{2}\left(\nabla^{(0)}_{\nu}\delta h^{\mu\nu}
-\nabla^{(0)\mu}\delta h\right),\\
E^{(h)}_{\mu\nu}
&=-\frac{1}{2}\mathcal{E}^{(1)}_{\mu\nu}[h],&
E^{(k)}_{\mu\nu}&=0,&
E^{(\varphi)}&=\nabla^{(0)2}\varphi-m^2\varphi.
\end{align}$$

Here

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[X]
&=-X_{\mu\nu}-\frac{1}{2}\nabla^{(0)2}X_{\mu\nu}
+\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\rho}X_{\nu}{}^{\rho}
+\frac{1}{2}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}X_{\mu}{}^{\rho}\\
&\quad-\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X
+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}X
-\frac{1}{2}g^{(0)}_{\mu\nu}
\nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}X^{\rho\sigma}.
\end{align}$$

The finite symplectic potential is

$$\begin{align}
\Theta^{[0]\mu}
&=-\frac{1}{2}\left(\nabla^{(0)}_{\nu}\delta k^{\mu\nu}
-\nabla^{(0)\mu}\delta k\right)
+\nabla^{(0)\mu}\varphi\,\delta\varphi\\
&\quad-\frac{1}{2}\left(
h^{\mu\nu}\nabla^{(0)}_{\nu}\delta h
-\frac{1}{2}h\nabla^{(0)\mu}\delta h
+h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho}
-h^{\nu\rho}\nabla^{(0)}_{\rho}\delta h^{\mu}{}_{\nu}\right.\\
&\qquad\left.
-h^{\mu\nu}\nabla^{(0)}_{\rho}\delta h_{\nu}{}^{\rho}
+\frac{1}{2}h\nabla^{(0)}_{\nu}\delta h^{\mu\nu}
+\frac{1}{2}\nabla^{(0)\mu}h_{\nu\rho}\delta h^{\nu\rho}\right.\\
&\qquad\left.
+\frac{1}{2}\nabla^{(0)}_{\nu}h\,\delta h^{\mu\nu}
-\nabla^{(0)}_{\rho}h^{\nu\rho}\delta h^{\mu}{}_{\nu}
\right).
\end{align}$$

No equation of motion or gauge condition is used in this section.

## Field-space variation of the action

Since the full Lagrangian density is a scalar density, the field-space vector above gives

$$\begin{align}
X_\xi\cdot\delta S
&=\alpha_{\xi}\big|_{\Sigma_f}-\alpha_{\xi}\big|_{\Sigma_i}
+O(\kappa),
\end{align}$$

with the \(\kappa\)-ordered boundary density

$$\begin{align}
\alpha_{\xi}^{\mu}
&=\frac{1}{\kappa^2}\alpha_{\xi}^{[-2]\mu}
+\frac{1}{\kappa}\alpha_{\xi}^{[-1]\mu}
+\alpha_{\xi}^{[0]\mu}
+O(\kappa),\\
\alpha_{\xi}^{[-2]\mu}
&=-\frac{1}{2}\xi^{\mu}\mathcal{L}^{(0)}_{g},\\
\alpha_{\xi}^{[-1]\mu}
&=-\frac{1}{2}\xi^{\mu}\mathcal{L}^{(1)}_{g}[h],\\
\alpha_{\xi}^{[0]\mu}
&=-\xi^{\mu}\left[
\frac{1}{2}\left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right)
-\frac{1}{2}\left(\nabla_{\rho}\varphi\nabla^{\rho}\varphi+m^2\varphi^2\right)
\right].
\end{align}$$

This is an off-shell identity for the truncated action. No use has been made of \(\mathcal{E}^{(1)}[h]=0\), the second-order constraint, TT gauge, radial gauge, or Brown-Henneaux falloffs.

## Bulk charge by \(\kappa\) order

Define

$$\begin{align}
H_{\xi}
&=X_{\xi}\cdot\theta-\alpha_{\xi}
=\int_{\Sigma}\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\mathcal{H}_{\xi}^{\mu}.
\end{align}$$

The expansion has the form

$$\begin{align}
\mathcal{H}_{\xi}^{\mu}
&=\frac{1}{\kappa^2}\mathcal{H}_{\xi}^{[-2]\mu}
+\frac{1}{\kappa}\mathcal{H}_{\xi}^{[-1]\mu}
+\mathcal{H}_{\xi,\mathrm{tr}}^{[0]\mu}
+O(\kappa).
\end{align}$$

To track the contraction with the inhomogeneous vector, decompose the finite potential into its \(h\), \(k\), and scalar parts:

$$\begin{align}
\Theta^{[0]\mu}
&=\Theta_{h}^{[0]\mu}+\Theta_{k}^{[0]\mu}
+\Theta_{\varphi}^{[0]\mu}.
\end{align}$$

Then the \(S^{[-2]}+S^{[-1]}+S^{[0]}\) truncation gives

$$\begin{align}
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{-2}}
&=\Theta^{[-1]\mu}\!\left[X_{\xi}^{[-1]}h\right],\\
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{-1}}
&=\Theta^{[-1]\mu}\!\left[X_{\xi}^{[0]}h\right]
+\Theta_{h}^{[0]\mu}\!\left[X_{\xi}^{[-1]}h\right],\\
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{0},\mathrm{tr}}
&=\Theta_{h}^{[0]\mu}\!\left[X_{\xi}^{[0]}h\right]
+\Theta_{k}^{[0]\mu}\!\left[X_{\xi}^{[0]}k\right]
+\Theta_{\varphi}^{[0]\mu}\!\left[X_{\xi}^{[0]}\varphi\right].
\end{align}$$

Thus the \(\kappa^{-1}\) charge is an \(h\)-sector effect: it combines the linear potential evaluated on \(\mathcal{L}_{\xi}h\) with the quadratic \(h\)-potential evaluated on \(\mathcal{L}_{\xi}g^{(0)}\). The \(k\)-sector first enters the finite truncated charge because \(X_{\xi}^{[-1]}k=0\).

The background term \(\mathcal{H}_{\xi}^{[-2]\mu}\) is removed together with the vacuum Brown-York contribution, matching \(T_{ab}^{(-2)}=0\) in `boundary charge.md`.

The leading perturbative term is

$$\begin{align}
\mathcal{H}_{\xi}^{[-1]\mu}
&=\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[h]
+\nabla^{(0)}_{\nu}S_{\xi}^{[-1]\mu\nu},\\
S_{\xi}^{[-1]\mu\nu}
&=\frac{1}{2}\left(A_{\xi}^{(1)\mu\nu}
+\frac{1}{2}hA_{\xi}^{(0)\mu\nu}\right),
\end{align}$$

where

$$\begin{align}
A_{\xi}^{(0)\mu\nu}
&=\nabla^{(0)\mu}\xi^{\nu}-\nabla^{(0)\nu}\xi^{\mu},\\
A_{\xi}^{(1)\mu\nu}
&=-h^{\mu\rho}\nabla^{(0)}_{\rho}\xi^{\nu}
+h^{\nu\rho}\nabla^{(0)}_{\rho}\xi^{\mu}
+\xi^{\rho}
\left(\nabla^{(0)\mu}h^{\nu}{}_{\rho}
-\nabla^{(0)\nu}h^{\mu}{}_{\rho}\right).
\end{align}$$

This is the \(\kappa\)-rescaled version of the linear surface potential \(Q_{\xi}^{(1)}\) in `../linearized gravity/reconsider the Noether charge.md`.

The finite term determined by the action truncated at \(S^{[0]}\) is

$$\begin{align}
\mathcal{H}_{\xi,\mathrm{tr}}^{[0]\mu}
&=\xi_{\nu}T_{(h)}^{\mu\nu}
+\xi_{\nu}T_{(\varphi)}^{\mu\nu}
+\nabla^{(0)}_{\nu}\left(S_{\xi,h}^{\mu\nu}
+S_{\xi,k,0}^{\mu\nu}\right)
+\mathcal{R}_{\xi,h}^{\mu},
\end{align}$$

with

$$\begin{align}
T_{(h)}^{\mu\nu}&=-\mathcal{E}^{(2)\mu\nu}[h,h],\\
T_{(\varphi)}^{\mu\nu}
&=\nabla^{(0)\mu}\varphi\nabla^{(0)\nu}\varphi
-\frac{1}{2}g^{(0)\mu\nu}
\left(\nabla^{(0)}_{\rho}\varphi\nabla^{(0)\rho}\varphi
+m^2\varphi^2\right),\\
\mathcal{R}_{\xi,h}^{\mu}
&=\xi^{\rho}h^{\mu\sigma}\mathcal{E}^{(1)}_{\sigma\rho}[h]
-\frac{1}{2}h\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[h].
\end{align}$$

The surface tensors \(S_{\xi,h}^{\mu\nu}\) and \(S_{\xi,k,0}^{\mu\nu}\) are the ones in `scalar charge matching.md`:

$$\begin{align}
S_{\xi,h}^{\mu\nu}
&=s_{2}\nabla^{(0)[\mu}\xi^{\nu]}
+\frac{1}{2}hD_{1,\xi}^{[\mu\nu]}
+D_{2,\xi}^{[\mu\nu]},\\
S_{\xi,k,0}^{\mu\nu}
&=\xi^{[\mu}
\left(\nabla^{(0)}_{\rho}k^{\nu]\rho}
-\nabla^{(0)\nu]}k\right).
\end{align}$$

The notation \(\mathcal{H}_{\xi,\mathrm{tr}}^{[0]\mu}\) records the truncation. Since \(X_{\xi}^{[-1]}\) lowers the \(\kappa\)-order by one, the full finite charge can also receive \(X_{\xi}^{[-1]}\)-contributions from the \(O(\kappa)\) action. The selected contribution of this type is computed next.

## The selected \(S^{[1]}\) contribution

To isolate the contribution lowered by \(X_{\xi}^{[-1]}\), extend the metric expansion by one order,

$$\begin{align}
g_{\mu\nu}
&=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu}
+\kappa^2 k_{\mu\nu}+\kappa^3\ell_{\mu\nu}
+O(\kappa^4),
\end{align}$$

and write

$$\begin{align}
S[g,\phi]
&=\frac{1}{\kappa^2}S^{[-2]}
+\frac{1}{\kappa}S^{[-1]}
+S^{[0]}
+\kappa S^{[1]}
+O(\kappa^2).
\end{align}$$

The \(S^{[1]}\) coefficient contains the gravitational terms cubic in \(h\), bilinear in \(h\) and \(k\), linear in \(\ell\), and the metric coupling \(\frac{1}{2}\int\sqrt{-g^{(0)}}\,h_{\mu\nu}T_{(\varphi)}^{\mu\nu}\). For the finite charge only the following selected contraction is needed:

$$\begin{align}
X_{\xi}^{[-1]}\cdot\delta S^{[1]}
&=\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,
E^{[1,h]\mu\nu}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}\\
&\quad+\int_{\Sigma_f-\Sigma_i}
\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu
\Theta_{h}^{[1]\mu}\!\left[\mathcal{L}_{\xi}g^{(0)}\right].
\end{align}$$

No equation of motion or gauge condition is used here. Diffeomorphism covariance of the full action fixes this term together with the homogeneous variation of \(S^{[0]}\):

$$\begin{align}
X_{\xi}^{[-1]}\cdot\delta S^{[1]}
+X_{\xi}^{[0]}\cdot\delta S^{[0]}
&=\alpha_{\xi}^{[0]}\big|_{\Sigma_f}
-\alpha_{\xi}^{[0]}\big|_{\Sigma_i}.
\end{align}$$

Thus the finite charge receives the additional local current

$$\begin{align}
\Delta\mathcal{H}_{\xi,\mathrm{inh}}^{[0]\mu}
&=\Theta_{h}^{[1]\mu}\!\left[\mathcal{L}_{\xi}g^{(0)}\right].
\end{align}$$

The corresponding surface tensor is most compactly obtained by comparing with the \(\kappa^0\) coefficient of the full Iyer-Wald potential. With the same orientation convention as \(S_{\xi}^{[-1]}\),

$$\begin{align}
S_{\xi,\mathrm{IW}}^{[0]\mu\nu}
&=\frac{1}{2}\left(
A_{\xi}^{(1)\mu\nu}[k]
+A_{\xi}^{(2)\mu\nu}[h,h]
+\frac{1}{2}hA_{\xi}^{(1)\mu\nu}[h]
+\left(\frac{1}{2}k+s_2\right)A_{\xi}^{(0)\mu\nu}
\right),
\end{align}$$

where

$$\begin{align}
A_{\xi}^{(2)\mu\nu}[h,h]
&=h^{\mu}{}_{\rho}h^{\rho\sigma}
\nabla^{(0)}_{\sigma}\xi^{\nu}
-h^{\nu}{}_{\rho}h^{\rho\sigma}
\nabla^{(0)}_{\sigma}\xi^{\mu}\\
&\quad+\xi^{\lambda}\left[
h^{\mu\rho}\left(
\nabla^{(0)\nu}h_{\rho\lambda}
-\nabla^{(0)}_{\rho}h^{\nu}{}_{\lambda}
\right)\right.\\
&\qquad\left.
-h^{\nu\rho}\left(
\nabla^{(0)\mu}h_{\rho\lambda}
-\nabla^{(0)}_{\rho}h^{\mu}{}_{\lambda}
\right)\right],\\
s_2&=-\frac{1}{4}h_{\rho\sigma}h^{\rho\sigma}
+\frac{1}{8}h^2.
\end{align}$$

The identities

$$\begin{align}
D_{1,\xi}^{[\mu\nu]}&=\frac{1}{2}A_{\xi}^{(1)\mu\nu}[h],\\
D_{2,\xi}^{[\mu\nu]}&=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h],\\
S_{\xi,k}^{\mu\nu}
&=\frac{1}{2}A_{\xi}^{(1)\mu\nu}[k]
+\frac{1}{4}kA_{\xi}^{(0)\mu\nu}
\end{align}$$

give the selected \(S^{[1]}\) surface correction

$$\begin{align}
S_{\xi,\mathrm{inh}}^{[0]\mu\nu}
&:=S_{\xi,\mathrm{IW}}^{[0]\mu\nu}
-\left(S_{\xi,h}^{\mu\nu}+S_{\xi,k}^{\mu\nu}\right)\\
&=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h]
-D_{2,\xi}^{[\mu\nu]}
=0.
\end{align}$$

Thus this selected inhomogeneous contraction changes the local finite current but adds no antisymmetric surface tensor. The finite surface charge remains

$$\begin{align}
H_{\xi}^{[0]}
&=H_{\xi,\mathrm{tr}}^{[0]}.
\end{align}$$

The scalar coupling in \(S^{[1]}\) contributes to the bulk \(E^{[1,h]\mu\nu}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}\) term but adds no antisymmetric surface tensor, because it contains no derivative of \(h_{\mu\nu}\).

## Using the constraints

The first-order and second-order constraints from `perturbation.md` are

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h]&=0,\\
\mathcal{E}^{(1)}_{\mu\nu}[k]
+\mathcal{E}^{(2)}_{\mu\nu}[h,h]
&=T_{(\varphi)\mu\nu}.
\end{align}$$

Equivalently,

$$\begin{align}
\mathcal{E}^{(1)\mu\nu}[k]
&=T_{(h)}^{\mu\nu}+T_{(\varphi)}^{\mu\nu}.
\end{align}$$

The charge becomes

$$\begin{align}
H_{\xi}
&=\frac{1}{\kappa}
\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,
\tau_{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{[-1]\nu\mu}\\
&\quad+\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma^{(0)}}\tau_{\mu}
\left[
\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[k]
+\nabla^{(0)}_{\nu}
\left(S_{\xi,h}^{\mu\nu}+S_{\xi,k,0}^{\mu\nu}\right)
\right]
+O(\kappa).
\end{align}$$

For a background Killing vector, the contracted linearized Einstein tensor is a divergence,

$$\begin{align}
\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[k]
&=\nabla^{(0)}_{\nu}\widehat{S}_{\xi,k}^{\mu\nu},
\end{align}$$

where

$$\begin{align}
\widehat{S}_{\xi,k}^{\mu\nu}
&=\xi^{[\mu}\nabla^{(0)\nu]}k
-\xi^{[\mu}\nabla^{(0)}_{\rho}k^{\nu]\rho}
+\xi_{\rho}\nabla^{(0)[\mu}k^{\nu]\rho}\\
&\quad+\frac{1}{2}k\nabla^{(0)[\mu}\xi^{\nu]}
-k^{\rho[\mu}\nabla^{(0)}_{\rho}\xi^{\nu]}.
\end{align}$$

Thus, with

$$\begin{align}
S_{\xi,k}^{\mu\nu}
&:=S_{\xi,k,0}^{\mu\nu}+\widehat{S}_{\xi,k}^{\mu\nu}\\
&=\xi_{\rho}\nabla^{(0)[\mu}k^{\nu]\rho}
+\frac{1}{2}k\nabla^{(0)[\mu}\xi^{\nu]}
-k^{\rho[\mu}\nabla^{(0)}_{\rho}\xi^{\nu]},
\end{align}$$

the on-constraint bulk charge with the selected inhomogeneous contribution is

$$\begin{align}
H_{\xi}
&=\frac{1}{\kappa}H_{\xi}^{[-1]}
+H_{\xi}^{[0]}
+O(\kappa),\\
H_{\xi}^{[-1]}
&=\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,
\tau_{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{[-1]\nu\mu},\\
H_{\xi}^{[0]}
&=\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,
\tau_{\mu}^{(0)}n_{\nu}^{(0)}
\left(S_{\xi,h}^{\nu\mu}+S_{\xi,k}^{\nu\mu}\right).
\end{align}$$

## Comparison with the Brown-York boundary charge

The Brown-York charge in `boundary charge.md` expands as

$$\begin{align}
H_{\xi,T}
&=\frac{1}{\kappa}H_{\xi,T}^{[-1]}
+H_{\xi,T}^{[0]}+O(\kappa),\\
H_{\xi,T}^{[-1]}
&=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\,
\tau^{(0)a}\zeta^{b}\mathcal{B}^{[-1]}_{ab}[h],\\
H_{\xi,T}^{[0]}
&=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\,
\tau^{(0)a}\zeta^{b}\mathcal{B}^{[0]}_{ab}[h,k].
\end{align}$$

The leading term \(H_{\xi}^{[-1]}\) is the bulk counterpart of the Brown-York linear charge \(H_{\xi,T}^{[-1]}\). It is absent if one starts directly from the finite action \(S^{[0]}\) and uses only the homogeneous transformation \(X_\xi h=\mathcal{L}_{\xi}h\).

At finite order, the selected inhomogeneous \(S^{[1]}\) contraction gives no additional surface tensor. The comparison remains the finite-part comparison in `boundary charge.md`:

$$\begin{align}
H_{\xi}^{[0]}-H_{\xi,T}^{[0]}
&=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\,
\tau^{(0)a}\Delta_{\xi,a},\\
\Delta_{\xi,a}
&=g^{(0)}_{ab}
\left(\mathcal{S}^{b}_{\xi,h,0}+\mathcal{S}^{b}_{\xi,k}\right)
-\zeta^{b}\mathcal{B}_{ab}.
\end{align}$$

Therefore the comparison should be organized as two separate statements:

$$\begin{align}
H_{\xi}^{[-1]}&\leftrightarrow H_{\xi,T}^{[-1]},\\
H_{\xi}^{[0]}&\leftrightarrow H_{\xi,T}^{[0]}.
\end{align}$$

The inhomogeneous term in \(X_\xi h\) supplies the first line. The selected \(S^{[1]}\) contraction does not shift the finite surface tensor. The second line is a finite-part statement involving the radial boundary data and possible boundary improvements, captured by \(\Delta_{\xi,a}\).

## Status

- The action expansion, equations of motion, and symplectic potentials are taken from `scalar charge matching.md` with the additional \(S^{[-1]}\) potential made explicit.
- The leading surface tensor \(S_{\xi}^{[-1]}\) is the \(\kappa\)-rescaled \(Q_{\xi}^{(1)}\) from `../linearized gravity/reconsider the Noether charge.md`.
- No equation of motion or gauge condition is used in the off-shell computation of \(X_\xi\cdot\delta S\).
- The selected \(S^{[1]}\) contribution from \(X_{\xi}^{[-1]}h=\mathcal{L}_{\xi}g^{(0)}\) has \(S_{\xi,\mathrm{inh}}^{[0]\mu\nu}=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h]-D_{2,\xi}^{[\mu\nu]}=0\), so it adds no finite antisymmetric surface tensor.
- The constraints from `perturbation.md` are used only after the off-shell charge density has been organized by \(\kappa\)-order.
- The scalar part of this selected \(S^{[1]}\) contraction has no antisymmetric surface tensor; it contributes only to the bulk term before the constraint/improvement rearrangement.
