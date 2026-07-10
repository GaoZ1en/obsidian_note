---
title: "Inhomogeneous diffeomorphism charge expansion"
date: 2026-07-03
summary: "Re-expands the diffeomorphism Noether charge by kappa order and restores the timelike-boundary corner term required for agreement with the Brown-York charge."
---

# Inhomogeneous diffeomorphism charge expansion

This note keeps the inhomogeneous action of an asymptotic diffeomorphism on the first metric perturbation. The expansion convention is

$$\begin{align}
g_{\mu\nu} &=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu}+\kappa^2 k_{\mu\nu}+O(\kappa^3), & \kappa^2&=8\pi G.
\end{align}$$

The corresponding field-space vector is expanded as

$$\begin{align}
X_\xi\cdot\delta h_{\mu\nu} &=\frac{1}{\kappa}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu} +\mathcal{L}_{\xi}h_{\mu\nu},\\
X_\xi\cdot\delta k_{\mu\nu} &=\mathcal{L}_{\xi}k_{\mu\nu},\\
X_\xi\cdot\delta\varphi &=\mathcal{L}_{\xi}\varphi.
\end{align}$$

Equivalently,

$$\begin{align}
X_\xi&=\frac{1}{\kappa}X_\xi^{[-1]}+X_\xi^{[0]}+O(\kappa),\\
X_\xi^{[-1]}\cdot\delta h_{\mu\nu} &=\mathcal{L}_{\xi}g^{(0)}_{\mu\nu},& X_\xi^{[-1]}\cdot\delta k_{\mu\nu} &=0,& X_\xi^{[-1]}\cdot\delta\varphi&=0,\\
X_\xi^{[0]}\cdot\delta h_{\mu\nu} &=\mathcal{L}_{\xi}h_{\mu\nu},& X_\xi^{[0]}\cdot\delta k_{\mu\nu} &=\mathcal{L}_{\xi}k_{\mu\nu},& X_\xi^{[0]}\cdot\delta\varphi&=\mathcal{L}_{\xi}\varphi.
\end{align}$$

Then

$$\begin{align}
\kappa\,X_\xi\cdot\delta h_{\mu\nu} +\kappa^2 X_\xi\cdot\delta k_{\mu\nu} &=\mathcal{L}_{\xi}g^{(0)}_{\mu\nu} +\kappa\mathcal{L}_{\xi}h_{\mu\nu} +\kappa^2\mathcal{L}_{\xi}k_{\mu\nu} +O(\kappa^3),
\end{align}$$

which is the perturbative expansion of $X_\xi\cdot\delta g_{\mu\nu}=\mathcal{L}_\xi g_{\mu\nu}$.

## Action through $O(\kappa^0)$

The full action is

$$\begin{align}
S[g,\phi] &=\frac{1}{2\kappa^2}\int_M\mathrm{d}^3x\sqrt{-g}\,(R+2) -\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g}\, \left(\nabla_{\mu}\phi\nabla^{\mu}\phi+m^2\phi^2\right).
\end{align}$$

On the unit AdS$_3$ background,

$$\begin{align}
R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu},& R^{(0)}&=-6,
\end{align}$$

write

$$\begin{align}
\sqrt{-g}(R+2) &=\sqrt{-g^{(0)}}\left[ \mathcal{L}^{(0)}_{g} +\kappa\mathcal{L}^{(1)}_{g}[h] +\kappa^2\left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right) \right]+O(\kappa^3),
\end{align}$$

where

$$\begin{align}
\mathcal{L}^{(0)}_{g}&=-4,\\
\mathcal{L}^{(1)}_{g}[X] &=\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X^{\mu\nu} -\nabla^{(0)2}X,\\
\mathcal{L}^{(2)}_{g}[X] &=\frac{1}{2}X^2-X_{\mu\nu}X^{\mu\nu} +X^{\mu\nu}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X -\frac{1}{4}\nabla^{(0)}_{\mu}X\nabla^{(0)\mu}X\\
&\quad-\nabla^{(0)}_{\mu}X^{\mu\nu}\nabla^{(0)}_{\rho}X_{\nu}{}^{\rho} +\nabla^{(0)\mu}X\nabla^{(0)}_{\nu}X_{\mu}{}^{\nu} -X^{\mu\nu}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}X_{\mu}{}^{\rho}\\
&\quad-X^{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\nu}X_{\mu}{}^{\rho} +\frac{1}{2}X\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X^{\mu\nu} +X^{\mu\nu}\nabla^{(0)2}X_{\mu\nu}\\
&\quad-\frac{1}{2}X\nabla^{(0)2}X -\frac{1}{2}\nabla^{(0)}_{\mu}X_{\nu\rho}\nabla^{(0)\rho}X^{\mu\nu} +\frac{3}{4}\nabla^{(0)}_{\rho}X_{\mu\nu}\nabla^{(0)\rho}X^{\mu\nu}.
\end{align}$$

Thus

$$\begin{align}
S[g,\phi] &=\frac{1}{\kappa^2}S^{[-2]} +\frac{1}{\kappa}S^{[-1]}[h] +S^{[0]}[h,k,\varphi]+O(\kappa),\\
S^{[-2]} &=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,\mathcal{L}^{(0)}_{g},\\
S^{[-1]}[h] &=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\,\mathcal{L}^{(1)}_{g}[h],\\
S^{[0]}[h,k,\varphi] &=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}} \left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right)\\
&\quad-\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}} \left(\nabla_{\mu}\varphi\nabla^{\mu}\varphi+m^2\varphi^2\right).
\end{align}$$

## Variation, equations, and symplectic potential

The variation through $O(\kappa^0)$ is written as

$$\begin{align}
\delta S &=\frac{1}{\kappa}\int_{\Sigma_f-\Sigma_i} \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\Theta^{[-1]\mu}\\
&\quad+\int_M\mathrm{d}^3x\sqrt{-g^{(0)}} \left(E^{(h)}_{\mu\nu}\delta h^{\mu\nu} +E^{(k)}_{\mu\nu}\delta k^{\mu\nu} +E^{(\varphi)}\delta\varphi\right)\\
&\quad+\int_{\Sigma_f-\Sigma_i} \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\Theta^{[0]\mu} +O(\kappa).
\end{align}$$

With the sign convention used in `scalar charge matching.md`,

$$\begin{align}
\Theta^{[-1]\mu} &=-\frac{1}{2}\left(\nabla^{(0)}_{\nu}\delta h^{\mu\nu} -\nabla^{(0)\mu}\delta h\right),\\
E^{(h)}_{\mu\nu} &=-\frac{1}{2}\mathcal{E}^{(1)}_{\mu\nu}[h],& E^{(k)}_{\mu\nu}&=0,& E^{(\varphi)}&=\nabla^{(0)2}\varphi-m^2\varphi.
\end{align}$$

Here

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[X] &=-X_{\mu\nu}-\frac{1}{2}\nabla^{(0)2}X_{\mu\nu} +\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\rho}X_{\nu}{}^{\rho} +\frac{1}{2}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}X_{\mu}{}^{\rho}\\
&\quad-\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}X +\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}X -\frac{1}{2}g^{(0)}_{\mu\nu} \nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}X^{\rho\sigma}.
\end{align}$$

The finite symplectic potential is

$$\begin{align}
\Theta^{[0]\mu} &=-\frac{1}{2}\left(\nabla^{(0)}_{\nu}\delta k^{\mu\nu} -\nabla^{(0)\mu}\delta k\right) +\nabla^{(0)\mu}\varphi\,\delta\varphi\\
&\quad-\frac{1}{2}\left( h^{\mu\nu}\nabla^{(0)}_{\nu}\delta h -\frac{1}{2}h\nabla^{(0)\mu}\delta h +h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho} -h^{\nu\rho}\nabla^{(0)}_{\rho}\delta h^{\mu}{}_{\nu}\right.\\
&\qquad\left. -h^{\mu\nu}\nabla^{(0)}_{\rho}\delta h_{\nu}{}^{\rho} +\frac{1}{2}h\nabla^{(0)}_{\nu}\delta h^{\mu\nu} +\frac{1}{2}\nabla^{(0)\mu}h_{\nu\rho}\delta h^{\nu\rho}\right.\\
&\qquad\left. +\frac{1}{2}\nabla^{(0)}_{\nu}h\,\delta h^{\mu\nu} -\nabla^{(0)}_{\rho}h^{\nu\rho}\delta h^{\mu}{}_{\nu} \right).
\end{align}$$

No equation of motion or gauge condition is used in this section.

## Field-space variation of the action

Since the truncated bulk Lagrangian density is a scalar density, the field-space vector above gives

$$\begin{align}
X_\xi\cdot\delta S &=\alpha_{\xi}\big|_{\Sigma_f}-\alpha_{\xi}\big|_{\Sigma_i} +O(\kappa),
\end{align}$$

with the $\kappa$-ordered boundary density

$$\begin{align}
\alpha_{\xi}^{\mu} &=\frac{1}{\kappa^2}\alpha_{\xi}^{[-2]\mu} +\frac{1}{\kappa}\alpha_{\xi}^{[-1]\mu} +\alpha_{\xi}^{[0]\mu} +O(\kappa),\\
\alpha_{\xi}^{[-2]\mu} &=-\frac{1}{2}\xi^{\mu}\mathcal{L}^{(0)}_{g},\\
\alpha_{\xi}^{[-1]\mu} &=-\frac{1}{2}\xi^{\mu}\mathcal{L}^{(1)}_{g}[h],\\
\alpha_{\xi}^{[0]\mu} &=-\xi^{\mu}\left[ \frac{1}{2}\left(\mathcal{L}^{(1)}_{g}[k]+\mathcal{L}^{(2)}_{g}[h]\right) -\frac{1}{2}\left(\nabla_{\rho}\varphi\nabla^{\rho}\varphi+m^2\varphi^2\right) \right].
\end{align}$$

This is an off-shell identity for the truncated bulk action. No use has been made of $\mathcal{E}^{(1)}[h]=0$, the second-order constraint, TT gauge, radial gauge, or Brown-Henneaux falloffs. The timelike-boundary completion of $\theta$ and $\alpha_{\xi}$ is added next.

## Timelike-boundary contribution

The Brown-York expression is derived from the renormalized action with a timelike cutoff boundary,

$$\begin{align}
S_{\mathrm{ren}} &=\lim_{\varepsilon\to0}\left(\int_{M_{\varepsilon}}\mathbf L+\int_{\Gamma_{\varepsilon}}\ell\right),& \ell&=\frac{1}{8\pi G}(K-1)\,\varepsilon_{\Gamma}+\ell_{\log}.
\end{align}$$

Consequently, the same Noether definition $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$ must use the boundary and corner data of this action. With

$$\begin{align}
\left.\Theta\right|_{\Gamma_{\varepsilon}}+\delta\ell &=\mathrm d C-\frac{1}{4\pi}T^{\mu\nu}\delta g_{\mu\nu}\,\varepsilon_{\Gamma},\\
\left.\left(\xi\cdot\mathbf L+X_{\xi}\cdot\delta\ell\right)\right|_{\Gamma_{\varepsilon}} &=\mathrm d\mu_{\xi}+\nu_{\xi},
\end{align}$$

the charge on a Cauchy slice is

$$\begin{align}
H_{\xi} &=\int_{\Sigma_{\varepsilon}} \left(X_{\xi}\cdot\Theta-\xi\cdot\mathbf L-X_{\xi}\cdot\delta\ell\right) +\int_{\partial\Sigma_{\varepsilon}} \left(\mu_{\xi}-X_{\xi}\cdot C\right).
\end{align}$$

This is exactly the definition used in `Articles/Noether charge/Boundary stress tensor.md`. For the Brown-York convention in that note there is no independent Cauchy-slice boundary counterterm, $X_{\xi}\cdot\delta\ell|_{\Sigma}=0$. It is therefore useful to write

$$\begin{align}
H_{\xi}&=H_{\xi,\mathrm{bulk}}+H_{\xi,\Gamma},\\
H_{\xi,\mathrm{bulk}} &:=\int_{\Sigma_{\varepsilon}}\left(X_{\xi}\cdot\Theta-\xi\cdot\mathbf L\right),\\
H_{\xi,\Gamma} &:=\int_{\partial\Sigma_{\varepsilon}}\left(\mu_{\xi}-X_{\xi}\cdot C\right).
\end{align}$$

The calculation below determines $H_{\xi,\mathrm{bulk}}$. The term $H_{\xi,\Gamma}$, which contains the GHY/counterterm contribution, was not included in the previous finite-order comparison.

In the flat-cylinder renormalization scheme used in `../linearized gravity/linearize.md`, the logarithmic counterterm is absent. The variation of

$$\begin{align}
\ell_{\Gamma}&=\frac{1}{8\pi G}(K-1)\,\varepsilon_{\Gamma}
\end{align}$$

gives the corner one-form

$$\begin{align}
C_{\Gamma} &=-\frac{1}{16\pi G}\gamma^{\mu\nu}n^{\rho}\delta g_{\nu\rho}\, \varepsilon^{\Gamma}_{\mu\mu_{1}}\mathrm d x^{\mu_{1}},\\
\mu_{\xi} &=\frac{1}{8\pi G}\left[(K-1)\gamma^{\mu}{}_{\nu}\xi^{\nu} -D^{\mu}(n_{\nu}\xi^{\nu})\right] \varepsilon^{\Gamma}_{\mu\mu_{1}}\mathrm d x^{\mu_{1}}.
\end{align}$$

Substituting $X_{\xi}\cdot\delta g_{\mu\nu}=\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}$ directly into $\mu_{\xi}-X_{\xi}\cdot C_{\Gamma}$ and using

$$\begin{align}
\gamma^{\mu\nu}n^{\rho}\nabla_{\nu}\xi_{\rho} &=D^{\mu}(n_{\rho}\xi^{\rho})-K^{\mu}{}_{\nu}\xi^{\nu}
\end{align}$$

gives

$$\begin{align}
\mu_{\xi}-X_{\xi}\cdot C_{\Gamma} &=\mathcal J_{\xi,\Gamma}^{\mu}\varepsilon^{\Gamma}_{\mu\mu_{1}}\mathrm d x^{\mu_{1}},\\
\mathcal J_{\xi,\Gamma}^{\mu} &=\frac{1}{16\pi G}\left[-K^{\mu}{}_{\nu}\xi^{\nu} +2(K-1)\gamma^{\mu}{}_{\nu}\xi^{\nu} -D^{\mu}(n_{\nu}\xi^{\nu}) +\gamma^{\mu\nu}n^{\rho}\nabla_{\rho}\xi_{\nu}\right].
\end{align}$$

The surface current obtained from the Einstein-Hilbert bulk term is

$$\begin{align}
\mathcal J_{\xi,\mathrm{EH}}^{\mu} &=\frac{1}{16\pi G}\left[-K^{\mu}{}_{\nu}\xi^{\nu} +D^{\mu}(n_{\nu}\xi^{\nu}) -\gamma^{\mu\nu}n^{\rho}\nabla_{\rho}\xi_{\nu}\right].
\end{align}$$

Therefore the contribution of the boundary Lagrangian is fixed before any $\kappa$ expansion and obeys the off-shell algebraic identity

$$\begin{align}
\mathcal J_{\xi,\mathrm{EH}}^{\mu}+\mathcal J_{\xi,\Gamma}^{\mu} &=\frac{1}{8\pi G}\left(-K^{\mu}{}_{\nu}+(K-1)\gamma^{\mu}{}_{\nu}\right)\xi^{\nu} =:\mathcal J_{\xi,T}^{\mu}.
\end{align}$$

This is a direct calculation of $H_{\xi,\Gamma}$ from the boundary Lagrangian, rather than a definition of it as the difference between two charges.

The large-radius expansion in `../linearized gravity/linearize.md` also makes its perturbative order explicit. Replacing the full perturbation there by

$$\begin{align}
\Delta g_{\mu\nu}&=\kappa h_{\mu\nu}+\kappa^{2}k_{\mu\nu}+O(\kappa^{3}),& h_{\partial}&:=\gamma^{(0)ab}h_{ab},& k_{\partial}&:=\gamma^{(0)ab}k_{ab},
\end{align}$$

one obtains

$$\begin{align}
S_{\Gamma} &=\frac{1}{\kappa^{2}}S_{\Gamma}^{[-2]} +\frac{1}{\kappa}S_{\Gamma}^{[-1]}+S_{\Gamma}^{[0]}+O(\kappa),\\
S_{\Gamma}^{[-2]} &=\int_{\Gamma}\mathrm d^{2}x\left(r^{2}+\frac{1}{2}\right),\\
S_{\Gamma}^{[-1]} &=\int_{\Gamma}\mathrm d^{2}x\left(-\frac{1}{2}h_{\partial} +\frac{r}{2}\partial_{r}h_{\partial}-r^{4}h_{rr}-rD^{(0)a}h_{ra}\right),\\
S_{\Gamma}^{[0]} &=\int_{\Gamma}\mathrm d^{2}x\left(-\frac{1}{2}k_{\partial} +\frac{r}{2}\partial_{r}k_{\partial}-r^{4}k_{rr}-rD^{(0)a}k_{ra} +r^{2}\gamma^{(0)ab}h_{ra}h_{rb}\right).
\end{align}$$

Thus the boundary action has a genuine finite coefficient containing both the linear $k$ sector and the quadratic $h$ sector. This action expansion is only a power-counting check: because $X_{\xi}^{[-1]}$ lowers the $\kappa$-order, $H_{\xi,\Gamma}^{[0]}$ can also receive terms pulled down from $S_{\Gamma}^{[1]}$. The complete finite boundary charge must therefore be extracted by expanding the exact full-field expression $\mu_{\xi}-X_{\xi}\cdot C_{\Gamma}$, as done above, rather than from $S_{\Gamma}^{[0]}$ alone.

For the pure-gravity part, the exact identity derived in `Articles/Noether charge/Conserved charge.md` is

$$\begin{align}
H_{\xi} &=\lim_{\varepsilon\to0}\left[ \frac{1}{16\pi G}\int_{\Sigma_{\varepsilon}} \left(R^{\mu\nu}-\frac{1}{2}Rg^{\mu\nu}-g^{\mu\nu}\right) \xi_{\nu}\varepsilon_{\mu\mu_{1}\mu_{2}}\, \mathrm d x^{\mu_{1}}\wedge\mathrm d x^{\mu_{2}}\right.\\
&\qquad\left. +\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon}} \left(-K^{\mu\nu}+K\gamma^{\mu\nu}-\gamma^{\mu\nu}\right)
\gamma_{\nu\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}_{\mu\mu_{1}}\, \mathrm d x^{\mu_{1}} \right].
\end{align}$$

The minimally coupled scalar changes the bulk equation and its perturbative constraint. Under the fixed-source, normalizable scalar boundary condition used here, it adds no finite boundary charge, so the gravitational data $\ell$, $C$, and $\mu_{\xi}$ continue to fix the full on-constraint charge by the Brown-York term. If a nonzero scalar source or scalar boundary flux is allowed, the corresponding scalar counterterm and boundary contribution must be added separately.

## Bulk charge by $\kappa$ order

Define the bulk-only intermediate quantity

$$\begin{align}
H_{\xi,\mathrm{bulk}} &=\int_{\Sigma}\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_{\mu}\mathcal{H}_{\xi,\mathrm{bulk}}^{\mu}.
\end{align}$$

The expansion has the form

$$\begin{align}
\mathcal{H}_{\xi,\mathrm{bulk}}^{\mu} &=\frac{1}{\kappa^2}\mathcal{H}_{\xi,\mathrm{bulk}}^{[-2]\mu} +\frac{1}{\kappa}\mathcal{H}_{\xi,\mathrm{bulk}}^{[-1]\mu} +\mathcal{H}_{\xi,\mathrm{bulk,tr}}^{[0]\mu} +O(\kappa).
\end{align}$$

To track the contraction with the inhomogeneous vector, decompose the finite potential into its $h$, $k$, and scalar parts:

$$\begin{align}
\Theta^{[0]\mu} &=\Theta_{h}^{[0]\mu}+\Theta_{k}^{[0]\mu} +\Theta_{\varphi}^{[0]\mu}.
\end{align}$$

Then the $S^{[-2]}+S^{[-1]}+S^{[0]}$ truncation gives

$$\begin{align}
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{-2}} &=\Theta^{[-1]\mu}\!\left[X_{\xi}^{[-1]}h\right],\\
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{-1}} &=\Theta^{[-1]\mu}\!\left[X_{\xi}^{[0]}h\right] +\Theta_{h}^{[0]\mu}\!\left[X_{\xi}^{[-1]}h\right],\\
\left.X_{\xi}\cdot\theta^{\mu}\right|_{\kappa^{0},\mathrm{tr}} &=\Theta_{h}^{[0]\mu}\!\left[X_{\xi}^{[0]}h\right] +\Theta_{k}^{[0]\mu}\!\left[X_{\xi}^{[0]}k\right] +\Theta_{\varphi}^{[0]\mu}\!\left[X_{\xi}^{[0]}\varphi\right].
\end{align}$$

Thus the $\kappa^{-1}$ charge is an $h$-sector effect: it combines the linear potential evaluated on $\mathcal{L}_{\xi}h$ with the quadratic $h$-potential evaluated on $\mathcal{L}_{\xi}g^{(0)}$. The $k$-sector first enters the finite truncated charge because $X_{\xi}^{[-1]}k=0$.

The background term $\mathcal{H}_{\xi,\mathrm{bulk}}^{[-2]\mu}$ is removed together with the vacuum Brown-York contribution, matching $T_{ab}^{(-2)}=0$ in `boundary charge.md`.

The leading perturbative term is

$$\begin{align}
\mathcal{H}_{\xi,\mathrm{bulk}}^{[-1]\mu} &=\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[h] +\nabla^{(0)}_{\nu}S_{\xi}^{[-1]\mu\nu},\\
S_{\xi}^{[-1]\mu\nu} &=\frac{1}{2}\left(A_{\xi}^{(1)\mu\nu} +\frac{1}{2}hA_{\xi}^{(0)\mu\nu}\right),
\end{align}$$

where

$$\begin{align}
A_{\xi}^{(0)\mu\nu} &=\nabla^{(0)\mu}\xi^{\nu}-\nabla^{(0)\nu}\xi^{\mu},\\
A_{\xi}^{(1)\mu\nu} &=-h^{\mu\rho}\nabla^{(0)}_{\rho}\xi^{\nu} +h^{\nu\rho}\nabla^{(0)}_{\rho}\xi^{\mu} +\xi^{\rho} \left(\nabla^{(0)\mu}h^{\nu}{}_{\rho} -\nabla^{(0)\nu}h^{\mu}{}_{\rho}\right).
\end{align}$$

This is the $\kappa$-rescaled version of the linear surface potential $Q_{\xi}^{(1)}$ in `../linearized gravity/reconsider the Noether charge.md`.

The finite term determined by the action truncated at $S^{[0]}$ is

$$\begin{align}
\mathcal{H}_{\xi,\mathrm{bulk,tr}}^{[0]\mu} &=\xi_{\nu}T_{(h)}^{\mu\nu} +\xi_{\nu}T_{(\varphi)}^{\mu\nu} +\nabla^{(0)}_{\nu}\left(S_{\xi,h}^{\mu\nu} +S_{\xi,k,0}^{\mu\nu}\right) +\mathcal{R}_{\xi,h}^{\mu},
\end{align}$$

with

$$\begin{align}
T_{(h)}^{\mu\nu}&=-\mathcal{E}^{(2)\mu\nu}[h,h],\\
T_{(\varphi)}^{\mu\nu} &=\nabla^{(0)\mu}\varphi\nabla^{(0)\nu}\varphi -\frac{1}{2}g^{(0)\mu\nu} \left(\nabla^{(0)}_{\rho}\varphi\nabla^{(0)\rho}\varphi +m^2\varphi^2\right),\\
\mathcal{R}_{\xi,h}^{\mu} &=\xi^{\rho}h^{\mu\sigma}\mathcal{E}^{(1)}_{\sigma\rho}[h] -\frac{1}{2}h\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[h].
\end{align}$$

The surface tensors $S_{\xi,h}^{\mu\nu}$ and $S_{\xi,k,0}^{\mu\nu}$ are the ones in `scalar charge matching.md`:

$$\begin{align}
S_{\xi,h}^{\mu\nu} &=s_{2}\nabla^{(0)[\mu}\xi^{\nu]} +\frac{1}{2}hD_{1,\xi}^{[\mu\nu]} +D_{2,\xi}^{[\mu\nu]},\\
S_{\xi,k,0}^{\mu\nu} &=\xi^{[\mu} \left(\nabla^{(0)}_{\rho}k^{\nu]\rho} -\nabla^{(0)\nu]}k\right).
\end{align}$$

The notation $\mathcal{H}_{\xi,\mathrm{bulk,tr}}^{[0]\mu}$ records the truncation. Since $X_{\xi}^{[-1]}$ lowers the $\kappa$-order by one, the bulk finite charge can also receive $X_{\xi}^{[-1]}$-contributions from the $O(\kappa)$ action. The selected contribution of this type is computed next.

## The selected $S^{[1]}$ contribution

To isolate the contribution lowered by $X_{\xi}^{[-1]}$, extend the metric expansion by one order,

$$\begin{align}
g_{\mu\nu} &=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu} +\kappa^2 k_{\mu\nu}+\kappa^3\ell_{\mu\nu} +O(\kappa^4),\\
\phi&=\varphi+\kappa\psi+O(\kappa^2).
\end{align}$$

The gravitational density has the ordered form

$$\begin{align}
\sqrt{-g}(R+2) &=\sqrt{-g^{(0)}}\left[ \mathcal L_g^{(0)} +\kappa\mathcal L_g^{(1)}[h]\right.\\
&\quad+\kappa^2\left( \mathcal L_g^{(1)}[k]+\mathcal L_g^{(2)}[h] \right)\\
&\quad\left. +\kappa^3\left( \mathcal L_g^{(1)}[\ell] +2\mathcal L_g^{(2)}[h,k] +\mathcal L_g^{(3)}[h] \right)\right]+O(\kappa^4),
\end{align}$$

where the bilinear term is the polarization of the quadratic density,

$$\begin{align}
\mathcal L_g^{(2)}[h,k] &:=\frac{1}{2}\left( \mathcal L_g^{(2)}[h+k] -\mathcal L_g^{(2)}[h] -\mathcal L_g^{(2)}[k]\right),
\end{align}$$

The cubic density is written compactly as follows. Define

$$\begin{align}
v_1[h]&=\frac{1}{2}h,\\
v_2[h]&=\frac{1}{8}h^2-\frac{1}{4}h_{\rho\sigma}h^{\rho\sigma},\\
v_3[h]&=\frac{1}{48}h^3-\frac{1}{8}h\,h_{\rho\sigma}h^{\rho\sigma} +\frac{1}{6}h_{\mu}{}^{\nu}h_{\nu}{}^{\rho}h_{\rho}{}^{\mu}.
\end{align}$$

For the pure $h$-expansion, write the connection perturbations

$$\begin{align}
C_1[h]^{\rho}{}_{\mu\nu} &=\frac{1}{2}\left( \nabla^{(0)}_{\mu}h^{\rho}{}_{\nu} +\nabla^{(0)}_{\nu}h^{\rho}{}_{\mu} -\nabla^{(0)\rho}h_{\mu\nu}\right),\\
C_2[h]^{\rho}{}_{\mu\nu} &=-\frac{1}{2}h^{\rho\sigma}\left( \nabla^{(0)}_{\mu}h_{\sigma\nu} +\nabla^{(0)}_{\nu}h_{\mu\sigma} -\nabla^{(0)}_{\sigma}h_{\mu\nu}\right),\\
C_3[h]^{\rho}{}_{\mu\nu} &=\frac{1}{2}h^{\rho}{}_{\lambda}h^{\lambda\sigma}\left( \nabla^{(0)}_{\mu}h_{\sigma\nu} +\nabla^{(0)}_{\nu}h_{\mu\sigma} -\nabla^{(0)}_{\sigma}h_{\mu\nu}\right).
\end{align}$$

The corresponding Ricci perturbations are

$$\begin{align}
R^{(1)}_{\mu\nu}[h] &=\nabla^{(0)}_{\rho}C_1[h]^{\rho}{}_{\mu\nu} -\nabla^{(0)}_{\nu}C_1[h]^{\rho}{}_{\mu\rho},\\
R^{(2)}_{\mu\nu}[h,h] &=\nabla^{(0)}_{\rho}C_2[h]^{\rho}{}_{\mu\nu} -\nabla^{(0)}_{\nu}C_2[h]^{\rho}{}_{\mu\rho}\\
&\quad+C_1[h]^{\rho}{}_{\rho\lambda}C_1[h]^{\lambda}{}_{\mu\nu} -C_1[h]^{\rho}{}_{\nu\lambda}C_1[h]^{\lambda}{}_{\mu\rho},\\
R^{(3)}_{\mu\nu}[h,h,h] &=\nabla^{(0)}_{\rho}C_3[h]^{\rho}{}_{\mu\nu} -\nabla^{(0)}_{\nu}C_3[h]^{\rho}{}_{\mu\rho}\\
&\quad+C_1[h]^{\rho}{}_{\rho\lambda}C_2[h]^{\lambda}{}_{\mu\nu} +C_2[h]^{\rho}{}_{\rho\lambda}C_1[h]^{\lambda}{}_{\mu\nu}\\
&\quad-C_1[h]^{\rho}{}_{\nu\lambda}C_2[h]^{\lambda}{}_{\mu\rho} -C_2[h]^{\rho}{}_{\nu\lambda}C_1[h]^{\lambda}{}_{\mu\rho}.
\end{align}$$

Their scalar contractions are

$$\begin{align}
\mathcal R^{(1)}[h] &=g^{(0)\mu\nu}R^{(1)}_{\mu\nu}[h] -h^{\mu\nu}R^{(0)}_{\mu\nu},\\
\mathcal R^{(2)}[h,h] &=g^{(0)\mu\nu}R^{(2)}_{\mu\nu}[h,h] -h^{\mu\nu}R^{(1)}_{\mu\nu}[h] +h^{\mu}{}_{\rho}h^{\rho\nu}R^{(0)}_{\mu\nu},\\
\mathcal R^{(3)}[h,h,h] &=g^{(0)\mu\nu}R^{(3)}_{\mu\nu}[h,h,h] -h^{\mu\nu}R^{(2)}_{\mu\nu}[h,h]\\
&\quad+h^{\mu}{}_{\rho}h^{\rho\nu}R^{(1)}_{\mu\nu}[h] -h^{\mu}{}_{\rho}h^{\rho}{}_{\sigma}h^{\sigma\nu}R^{(0)}_{\mu\nu}.
\end{align}$$

Then

$$\begin{align}
\mathcal L_g^{(3)}[h] &=\mathcal R^{(3)}[h,h,h] +v_1[h]\mathcal R^{(2)}[h,h] +v_2[h]\mathcal R^{(1)}[h] -4v_3[h].
\end{align}$$

Thus

$$\begin{align}
S[g,\phi] &=\frac{1}{\kappa^2}S^{[-2]} +\frac{1}{\kappa}S^{[-1]} +S^{[0]} +\kappa S^{[1]} +O(\kappa^2),\\
S^{[1]} &=\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\, \left( \mathcal L_g^{(1)}[\ell] +2\mathcal L_g^{(2)}[h,k] +\mathcal L_g^{(3)}[h]\right)\\
&\quad-\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\, \left(\nabla^{(0)}_{\mu}\varphi\nabla^{(0)\mu}\psi +m^2\varphi\psi\right)\\
&\quad+\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\, h_{\mu\nu}T_{(\varphi)}^{\mu\nu},
\end{align}$$

with $T_{(\varphi)}^{\mu\nu}$ defined above. The $\psi$-dependent term contributes to the scalar equations and symplectic potential, but it is not hit by $X_{\xi}^{[-1]}$. For the selected contribution,

$$\begin{align}
X_{\xi}^{[-1]}\cdot\delta h_{\mu\nu} &=\mathcal L_{\xi}g^{(0)}_{\mu\nu},& X_{\xi}^{[-1]}\cdot\delta k_{\mu\nu} &=0,& X_{\xi}^{[-1]}\cdot\delta\ell_{\mu\nu}&=0,\\
X_{\xi}^{[-1]}\cdot\delta\varphi&=0,& X_{\xi}^{[-1]}\cdot\delta\psi&=0.
\end{align}$$

Write the $S^{[1]}$ variation as

$$\begin{align}
\delta S^{[1]} &=\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\, \left( E_{h}^{[1]\mu\nu}\delta h_{\mu\nu} +E_{k}^{[1]\mu\nu}\delta k_{\mu\nu} +E_{\ell}^{[1]\mu\nu}\delta\ell_{\mu\nu}\right.\\
&\qquad\left. +E_{\varphi}^{[1]}\delta\varphi +E_{\psi}^{[1]}\delta\psi\right) +\int_{\Sigma_f-\Sigma_i} \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu
\Theta^{[1]\mu}.
\end{align}$$

The gravitational part of $\Theta^{[1]\mu}$ is the $\kappa$-coefficient of the full Einstein-Hilbert presymplectic potential, written with the background measure:

$$\begin{align}
\Theta_{\mathrm{EH}}^{\mu}[g;\delta g] &=-\frac{1}{2\kappa^2} \frac{\sqrt{-g}}{\sqrt{-g^{(0)}}} \left(g^{\alpha\beta}\delta\Gamma[g]^{\mu}{}_{\alpha\beta} -g^{\mu\alpha}\delta\Gamma[g]^{\beta}{}_{\alpha\beta}\right).
\end{align}$$

For the selected $h$-variation,

$$\begin{align}
\Theta_{h}^{[1]\mu}[\delta h] &:=\left[\kappa^1\right]\, \Theta_{\mathrm{EH}}^{\mu} \left[g;\delta g_{\mu\nu}=\kappa\,\delta h_{\mu\nu}\right],
\end{align}$$

where $[\kappa^1]$ means the coefficient of $\kappa$ after inserting $g=g^{(0)}+\kappa h+\kappa^2 k+\kappa^3\ell$. The scalar part of $S^{[1]}$ contains no derivative of $h_{\mu\nu}$, so it does not contribute to $\Theta_h^{[1]\mu}[\delta h]$.

The selected contraction is

$$\begin{align}
X_{\xi}^{[-1]}\cdot\delta S^{[1]} &=\int_M\mathrm{d}^3x\sqrt{-g^{(0)}}\, E_{h}^{[1]\mu\nu}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}\\
&\quad+\int_{\Sigma_f-\Sigma_i} \mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu
\Theta_{h}^{[1]\mu}\!\left[\mathcal{L}_{\xi}g^{(0)}\right].
\end{align}$$

Here the matter part of the selected bulk coefficient is

$$\begin{align}
E_{h,\mathrm{matter}}^{[1]\mu\nu} &=\frac{1}{2}T_{(\varphi)}^{\mu\nu}.
\end{align}$$

With the sign convention $E_h^{[0]\mu\nu}=-\frac{1}{2}\mathcal E^{(1)\mu\nu}[h]$, the selected bulk coefficient is

$$\begin{align}
E_h^{[1]\mu\nu} &=-\frac{1}{2}\left( \mathcal E^{(1)\mu\nu}[k] +\mathcal E^{(2)\mu\nu}[h,h] -T_{(\varphi)}^{\mu\nu}\right).
\end{align}$$

This is the off-shell form of the second-order Einstein constraint; the constraint is not imposed in the selected contraction.

The selected presymplectic form at this order is

$$\begin{align}
\Omega_{\xi,\mathrm{sel}}^{[1]} &=\int_{\Sigma}\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\, \delta\Theta_{h}^{[1]\mu}\!\left[\mathcal L_{\xi}g^{(0)}\right],
\end{align}$$

where $g^{(0)}$ and $\xi$ are kept fixed in the field-space variation. No equation of motion or gauge condition is used here. Diffeomorphism covariance of the full action fixes this term together with the homogeneous variation of $S^{[0]}$:

$$\begin{align}
X_{\xi}^{[-1]}\cdot\delta S^{[1]} +X_{\xi}^{[0]}\cdot\delta S^{[0]} &=\alpha_{\xi}^{[0]}\big|_{\Sigma_f} -\alpha_{\xi}^{[0]}\big|_{\Sigma_i}.
\end{align}$$

Thus the finite charge receives the additional local current

$$\begin{align}
\Delta\mathcal{H}_{\xi,\mathrm{inh}}^{[0]\mu} &=\Theta_{h}^{[1]\mu}\!\left[\mathcal{L}_{\xi}g^{(0)}\right].
\end{align}$$

The corresponding surface tensor is most compactly obtained by comparing with the $\kappa^0$ coefficient of the full Einstein-Hilbert Noether surface tensor derived directly from $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$. With the same orientation convention as $S_{\xi}^{[-1]}$,

$$\begin{align}
S_{\xi,\mathrm{EH}}^{[0]\mu\nu} &=\frac{1}{2}\left( A_{\xi}^{(1)\mu\nu}[k] +A_{\xi}^{(2)\mu\nu}[h,h] +\frac{1}{2}hA_{\xi}^{(1)\mu\nu}[h] +\left(\frac{1}{2}k+s_2\right)A_{\xi}^{(0)\mu\nu} \right),
\end{align}$$

where

$$\begin{align}
A_{\xi}^{(2)\mu\nu}[h,h] &=h^{\mu}{}_{\rho}h^{\rho\sigma} \nabla^{(0)}_{\sigma}\xi^{\nu} -h^{\nu}{}_{\rho}h^{\rho\sigma} \nabla^{(0)}_{\sigma}\xi^{\mu}\\
&\quad+\xi^{\lambda}\left[ h^{\mu\rho}\left( \nabla^{(0)\nu}h_{\rho\lambda} -\nabla^{(0)}_{\rho}h^{\nu}{}_{\lambda} \right)\right.\\
&\qquad\left. -h^{\nu\rho}\left( \nabla^{(0)\mu}h_{\rho\lambda} -\nabla^{(0)}_{\rho}h^{\mu}{}_{\lambda} \right)\right],\\
s_2&=-\frac{1}{4}h_{\rho\sigma}h^{\rho\sigma} +\frac{1}{8}h^2.
\end{align}$$

The identities

$$\begin{align}
D_{1,\xi}^{[\mu\nu]}&=\frac{1}{2}A_{\xi}^{(1)\mu\nu}[h],\\
D_{2,\xi}^{[\mu\nu]}&=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h],\\
S_{\xi,k}^{\mu\nu} &=\frac{1}{2}A_{\xi}^{(1)\mu\nu}[k] +\frac{1}{4}kA_{\xi}^{(0)\mu\nu}
\end{align}$$

give the selected $S^{[1]}$ surface correction

$$\begin{align}
S_{\xi,\mathrm{inh}}^{[0]\mu\nu} &:=S_{\xi,\mathrm{EH}}^{[0]\mu\nu} -\left(S_{\xi,h}^{\mu\nu}+S_{\xi,k}^{\mu\nu}\right)\\
&=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h] -D_{2,\xi}^{[\mu\nu]} =0.
\end{align}$$

Thus this selected inhomogeneous contraction changes the local finite bulk current but adds no antisymmetric bulk surface tensor. Therefore

$$\begin{align}
H_{\xi,\mathrm{bulk}}^{[0]} &=H_{\xi,\mathrm{bulk,tr}}^{[0]}.
\end{align}$$

This conclusion concerns $H_{\xi,\mathrm{bulk}}$ only. It does not set the independent timelike-boundary contribution $H_{\xi,\Gamma}^{[0]}$ to zero.

The scalar coupling in $S^{[1]}$ contributes to the bulk $E_h^{[1]\mu\nu}\mathcal{L}_{\xi}g^{(0)}_{\mu\nu}$ term but adds no antisymmetric surface tensor, because it contains no derivative of $h_{\mu\nu}$.

## Using the constraints

The first-order and second-order constraints from `perturbation.md` are

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h]&=0,\\
\mathcal{E}^{(1)}_{\mu\nu}[k] +\mathcal{E}^{(2)}_{\mu\nu}[h,h] &=T_{(\varphi)\mu\nu}.
\end{align}$$

Equivalently,

$$\begin{align}
\mathcal{E}^{(1)\mu\nu}[k] &=T_{(h)}^{\mu\nu}+T_{(\varphi)}^{\mu\nu}.
\end{align}$$

The bulk contribution becomes

$$\begin{align}
H_{\xi,\mathrm{bulk}} &=\frac{1}{\kappa} \int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\, \tau_{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{[-1]\nu\mu}\\
&\quad+\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma^{(0)}}\tau_{\mu} \left[ \xi_{\nu}\mathcal{E}^{(1)\mu\nu}[k] +\nabla^{(0)}_{\nu} \left(S_{\xi,h}^{\mu\nu}+S_{\xi,k,0}^{\mu\nu}\right) \right] +O(\kappa).
\end{align}$$

For a background Killing vector, the contracted linearized Einstein tensor is a divergence,

$$\begin{align}
\xi_{\nu}\mathcal{E}^{(1)\mu\nu}[k] &=\nabla^{(0)}_{\nu}\widehat{S}_{\xi,k}^{\mu\nu},
\end{align}$$

where

$$\begin{align}
\widehat{S}_{\xi,k}^{\mu\nu} &=\xi^{[\mu}\nabla^{(0)\nu]}k -\xi^{[\mu}\nabla^{(0)}_{\rho}k^{\nu]\rho} +\xi_{\rho}\nabla^{(0)[\mu}k^{\nu]\rho}\\
&\quad+\frac{1}{2}k\nabla^{(0)[\mu}\xi^{\nu]} -k^{\rho[\mu}\nabla^{(0)}_{\rho}\xi^{\nu]}.
\end{align}$$

Thus, with

$$\begin{align}
S_{\xi,k}^{\mu\nu} &:=S_{\xi,k,0}^{\mu\nu}+\widehat{S}_{\xi,k}^{\mu\nu}\\
&=\xi_{\rho}\nabla^{(0)[\mu}k^{\nu]\rho} +\frac{1}{2}k\nabla^{(0)[\mu}\xi^{\nu]} -k^{\rho[\mu}\nabla^{(0)}_{\rho}\xi^{\nu]},
\end{align}$$

the on-constraint bulk-only contribution with the selected inhomogeneous term is

$$\begin{align}
H_{\xi,\mathrm{bulk}} &=\frac{1}{\kappa}H_{\xi,\mathrm{bulk}}^{[-1]} +H_{\xi,\mathrm{bulk}}^{[0]} +O(\kappa),\\
H_{\xi,\mathrm{bulk}}^{[-1]} &=\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\, \tau_{\mu}^{(0)}n_{\nu}^{(0)}S_{\xi}^{[-1]\nu\mu},\\
H_{\xi,\mathrm{bulk}}^{[0]} &=\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\, \tau_{\mu}^{(0)}n_{\nu}^{(0)} \left(S_{\xi,h}^{\nu\mu}+S_{\xi,k}^{\nu\mu}\right).
\end{align}$$

## Comparison with the Brown-York boundary charge

The Brown-York charge in `boundary charge.md` expands as

$$\begin{align}
H_{\xi,T} &=\frac{1}{\kappa}H_{\xi,T}^{[-1]} +H_{\xi,T}^{[0]}+O(\kappa),\\
H_{\xi,T}^{[-1]} &=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\, \tau^{(0)a}\zeta^{b}\mathcal{B}^{[-1]}_{ab}[h],\\
H_{\xi,T}^{[0]} &=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\, \tau^{(0)a}\zeta^{b}\mathcal{B}^{[0]}_{ab}[h,k].
\end{align}$$

The full Noether charge has the ordered decomposition

$$\begin{align}
H_{\xi} &=\frac{1}{\kappa}H_{\xi}^{[-1]}+H_{\xi}^{[0]}+O(\kappa),\\
H_{\xi}^{[n]} &=H_{\xi,\mathrm{bulk}}^{[n]}+H_{\xi,\Gamma}^{[n]}.
\end{align}$$

Because the exact identity in the timelike-boundary section is an identity of the full fields, its perturbative coefficients match separately:

$$\begin{align}
H_{\xi}^{[-1]}&=H_{\xi,T}^{[-1]},& H_{\xi}^{[0]}&=H_{\xi,T}^{[0]}.
\end{align}$$

At leading order,

$$\begin{align}
H_{\xi,\Gamma}^{[-1]} &=H_{\xi,T}^{[-1]}-H_{\xi,\mathrm{bulk}}^{[-1]}.
\end{align}$$

Thus whenever the displayed leading bulk expression already reproduces $H_{\xi,T}^{[-1]}$, the boundary/corner coefficient $H_{\xi,\Gamma}^{[-1]}$ vanishes in that sector. More generally, the exact identity fixes any remaining leading boundary contribution.

At finite order, the calculation in `boundary charge.md` gives the bulk-only difference

$$\begin{align}
H_{\xi,\mathrm{bulk}}^{[0]}-H_{\xi,T}^{[0]} &=-\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\, \tau^{(0)a}\Delta_{\xi,a},\\
\Delta_{\xi,a} &=g^{(0)}_{ab} \left(\mathcal{S}^{b}_{\xi,h,0}+\mathcal{S}^{b}_{\xi,k}\right) -\zeta^{b}\mathcal{B}_{ab}.
\end{align}$$

Expanding the directly computed identity $\mathcal J_{\xi,\Gamma}=\mathcal J_{\xi,T}-\mathcal J_{\xi,\mathrm{EH}}$ to finite order gives

$$\begin{align}
H_{\xi,\Gamma}^{[0]} &=H_{\xi,T}^{[0]}-H_{\xi,\mathrm{bulk}}^{[0]}\\
&=\int_{\partial\Sigma}\mathrm{d}x\sqrt{q^{(0)}}\,\tau^{(0)a}\Delta_{\xi,a}.
\end{align}$$

Consequently,

$$\begin{align}
H_{\xi}^{[0]} &=H_{\xi,\mathrm{bulk}}^{[0]}+H_{\xi,\Gamma}^{[0]} =H_{\xi,T}^{[0]}.
\end{align}$$

This is not an independently chosen improvement. It is the $\kappa^{0}$ coefficient of the explicitly evaluated $\int_{\partial\Sigma}(\mu_{\xi}-X_{\xi}\cdot C_{\Gamma})$, fixed by the GHY term and the AdS counterterm in the same action that defines the Brown-York tensor. The result $S_{\xi,\mathrm{inh}}^{[0]\mu\nu}=0$ remains correct for the bulk Einstein-Hilbert contribution; it does not imply $H_{\xi,\Gamma}^{[0]}=0$.

As a component check, take the non-rotating BTZ family

$$\begin{align}
\mathrm d s^{2} &=-(r^{2}-M)\mathrm d t^{2} +\frac{\mathrm d r^{2}}{r^{2}-M} +r^{2}\mathrm d\phi^{2},& M&=-1+\kappa^{2}m.
\end{align}$$

Here $h_{\mu\nu}=0$, $k_{tt}=m$, $k_{rr}=m/(1+r^{2})^{2}$, and $k=0$. For $\xi=\partial_t$, direct xAct evaluation gives

$$\begin{align}
S_{\xi,k}^{rt}&=0,
\end{align}$$

while the exact boundary term gives

$$\begin{align}
H_{\partial_t,T}(-1+\kappa^{2}m)-H_{\partial_t,T}(-1) &=\frac{\kappa^{2}m}{8G} =\pi m.
\end{align}$$

Thus the asymptotic finite coefficient sits in $H_{\xi,\Gamma}^{[0]}$ for this outer-boundary test. This directly shows, within $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$, why the bulk-only finite surface tensor cannot be compared to the Brown-York charge without the corner term. If the BTZ Cauchy slice is taken to have an inner boundary, its contribution must be retained separately; the check above concerns only the asymptotic boundary.

## Status

- The action expansion, equations of motion, and symplectic potentials are taken from `scalar charge matching.md` with the additional $S^{[-1]}$ potential made explicit.
- The definition $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$ is unchanged. For the renormalized action, $\theta$ and $\alpha_{\xi}$ include the corner data $C$ and $\mu_{\xi}$ fixed by the timelike GHY/counterterm action.
- The leading surface tensor $S_{\xi}^{[-1]}$ is the $\kappa$-rescaled $Q_{\xi}^{(1)}$ from `../linearized gravity/reconsider the Noether charge.md`.
- The $S^{[1]}$ action includes the explicit matter expansion with $\phi=\varphi+\kappa\psi$, and $\mathcal L_g^{(3)}[h]$ is defined by the connection and Ricci perturbations $C_i[h]$, $R^{(i)}_{\mu\nu}[h]$.
- The selected $S^{[1]}$ presymplectic potential $\Theta_h^{[1]\mu}$ is the $\kappa^1$ coefficient of the full Einstein-Hilbert symplectic potential appearing in $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$, evaluated on $\delta g_{\mu\nu}=\kappa\delta h_{\mu\nu}$.
- No equation of motion or gauge condition is used in the off-shell computation of $X_\xi\cdot\delta S$.
- The selected $S^{[1]}$ contribution from $X_{\xi}^{[-1]}h=\mathcal{L}_{\xi}g^{(0)}$ has $S_{\xi,\mathrm{inh}}^{[0]\mu\nu}=\frac{1}{2}A_{\xi}^{(2)\mu\nu}[h,h]-D_{2,\xi}^{[\mu\nu]}=0$, so it adds no finite antisymmetric bulk surface tensor.
- The constraints from `perturbation.md` are used only after the off-shell charge density has been organized by $\kappa$-order.
- Direct variation of $S_{\Gamma}$ gives $C_{\Gamma}$ and $\mu_{\xi}$, and their combination obeys $\mathcal J_{\xi,\mathrm{EH}}+\mathcal J_{\xi,\Gamma}=\mathcal J_{\xi,T}$ before the perturbative expansion. Its finite coefficient is $H_{\xi,\Gamma}^{[0]}=\int_{\partial\Sigma}\sqrt{q^{(0)}}\,\tau^{(0)a}\Delta_{\xi,a}$, so $H_{\xi}^{[0]}=H_{\xi,T}^{[0]}$.
- xAct gives zero canonical residuals for the projected product-rule identity, $D_{1,\xi}^{[\mu\nu]}=\frac12A_{\xi}^{(1)\mu\nu}$, and $D_{2,\xi}^{[\mu\nu]}=\frac12A_{\xi}^{(2)\mu\nu}$. Mathematica reproduces the $S_{\Gamma}^{[-2]}$, $S_{\Gamma}^{[-1]}$, and $S_{\Gamma}^{[0]}$ coefficients. An independent xCoba component check gives $\mathcal J_{\xi,\mathrm{EH}}+\mathcal J_{\xi,\Gamma}-\mathcal J_{\xi,T}=0$ for the BTZ metric and $S_{\xi,k}^{rt}=0$, while the exact Brown-York term gives $\delta H_{\partial_t}=\kappa^{2}m/(8G)$.
