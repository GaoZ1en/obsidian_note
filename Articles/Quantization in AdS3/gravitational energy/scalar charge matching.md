---
title: Scalar matter charge matching in AdS3
date: 2026-06-08
summary: "Completes the AdS3 charge-matching draft for a minimally coupled free scalar field in the z-coordinate asymptotic setup."
---

# Scalar matter charge matching in AdS$_3$

This note completes the setup in `Attachments/ads3 charge matching.pdf` for the case where the matter sector is an ordinary minimally coupled free real scalar. The goal is to compute the same asymptotic charge in two ways:

1. from the renormalized Noether charge of the gravitational action, and
2. from the renormalized boundary stress tensor.

The output should be compared with the bulk second-order constraint used in `Articles/Quantization in AdS3/gravitational energy/naive generalization.md`.

## Coordinates and boundary conditions

Use coordinates

$$ x^\mu=(z,x^a),\qquad x^a=(t,\phi), $$

where $z=0$ is the conformal boundary and $a,b$ are boundary indices. The boundary metric $g^{(0)}_{ab}$ is fixed in the variational principle, with covariant derivative $D^{(0)}_a$. For explicit component checks one may take

$$ g^{(0)}_{ab}\mathrm{d}x^a\mathrm{d}x^b=-\mathrm{d}t^2+\mathrm{d}\phi^2, $$

so that the reference AdS$_3$ metric is

$$ \mathrm{d}\bar{s}^2=\frac{\mathrm{d}z^2+g^{(0)}_{ab}\mathrm{d}x^a\mathrm{d}x^b}{z^2}. $$

The asymptotic boundary conditions used in the PDF are

$$\begin{align} g_{zz}&=\frac{1}{z^2}+O(z^0),& g_{za}&=O(z),& g_{ab}&=\frac{1}{z^2}g^{(0)}_{ab}+O(z^0). \end{align}$$

The perturbative expansion is

$$ g_{\mu\nu}=\bar g_{\mu\nu}+\lambda h_{\mu\nu}+\lambda^2 k_{\mu\nu}+O(\lambda^3), $$

with the corresponding falloffs

$$\begin{align} h_{zz},k_{zz}&=O(z^0),& h_{za},k_{za}&=O(z),& h_{ab},k_{ab}&=O(z^0). \end{align}$$

The parameter is normalized by

$$ \lambda^2=8\pi G, $$

so the Einstein equation following from the action below is

$$ \mathcal{E}_{\mu\nu}[g]=8\pi G\,T_{\mu\nu}=\lambda^2T_{\mu\nu}. $$

## Free scalar matter

Take the matter action to be

$$ I_{\mathrm{m}}[g,\varphi]=-\frac{1}{2}\int_M\mathrm{d}^3x\sqrt{-g}\left(g^{\mu\nu}\partial_\mu\varphi\partial_\nu\varphi+m^2\varphi^2\right). $$

The scalar stress tensor is

$$ T_{\mu\nu}^{(\varphi)}=\partial_\mu\varphi\partial_\nu\varphi-\frac{1}{2}g_{\mu\nu}\left(g^{\rho\sigma}\partial_\rho\varphi\partial_\sigma\varphi+m^2\varphi^2\right). $$

In the background metric,

$$ (\bar\nabla\varphi)^2=z^2\left((\partial_z\varphi)^2+D^{(0)}_a\varphi D^{(0)a}\varphi\right), $$

and the scalar equation is

$$ \left[z^2\left(\partial_z^2+D^{(0)}_aD^{(0)a}\right)-z\partial_z-m^2\right]\varphi=0. $$

The corresponding background stress-tensor components are

$$\begin{align}
T^{(\varphi)}_{zz}&=\frac{1}{2}(\partial_z\varphi)^2-\frac{1}{2}D^{(0)}_a\varphi D^{(0)a}\varphi-\frac{m^2}{2z^2}\varphi^2,\\
T^{(\varphi)}_{za}&=\partial_z\varphi\,D^{(0)}_a\varphi,\\
T^{(\varphi)}_{ab}&=D^{(0)}_a\varphi D^{(0)}_b\varphi-\frac{1}{2}g^{(0)}_{ab}\left((\partial_z\varphi)^2+D^{(0)}_c\varphi D^{(0)c}\varphi+\frac{m^2}{z^2}\varphi^2\right).
\end{align}$$

On shell,

$$ \bar\nabla^\mu T^{(\varphi)}_{\mu\nu}=\left(\bar\nabla^2-m^2\right)\varphi\,\partial_\nu\varphi=0. $$

Near $z=0$, the scalar equation gives

$$ \varphi(z,x)=z^{\Delta_-}\varphi_{(0)}(x)+z^{\Delta_+}\varphi_{(2\nu)}(x)+\cdots,\qquad \Delta_\pm=1\pm\nu,\qquad \nu=\sqrt{1+m^2}. $$

This assumes the AdS$_3$ scalar BF bound $m^2\geq -1$. For the source-free normalizable problem one sets $\varphi_{(0)}=0$ when the standard quantization is used. The massless scalar is recovered by setting $m=0$, for which $\Delta_+=2$.

## Perturbative Einstein equation

With the normalization above, the expansion of

$$ \mathcal{E}_{\mu\nu}[g]=R_{\mu\nu}-\frac{1}{2}g_{\mu\nu}R-g_{\mu\nu}. $$

gives

$$ \mathcal{E}_{\mu\nu}[g]=\lambda\mathcal{E}^{(1)}_{\mu\nu}[h]+\lambda^2\left(\mathcal{E}^{(1)}_{\mu\nu}[k]+\mathcal{E}^{(2)}_{\mu\nu}[h,h]\right)+O(\lambda^3). $$

For any symmetric tensor $X_{\mu\nu}$, define

$$\begin{align}
C[X]^\rho{}_{\mu\nu}&=\frac{1}{2}\left(\bar\nabla_\mu X^\rho{}_\nu+\bar\nabla_\nu X^\rho{}_\mu-\bar\nabla^\rho X_{\mu\nu}\right),\\
C[h,h]^\rho{}_{\mu\nu}&=-\frac{1}{2}h^{\rho\sigma}\left(\bar\nabla_\mu h_{\sigma\nu}+\bar\nabla_\nu h_{\mu\sigma}-\bar\nabla_\sigma h_{\mu\nu}\right).
\end{align}$$

The linearized Ricci tensor and scalar are

$$\begin{align}
R^{(1)}_{\mu\nu}[X]&=\frac{1}{2}\left(\bar\nabla_\rho\bar\nabla_\mu X^\rho{}_\nu+\bar\nabla_\rho\bar\nabla_\nu X^\rho{}_\mu-\bar\nabla^2X_{\mu\nu}-\bar\nabla_\mu\bar\nabla_\nu X\right),\\
R^{(1)}[X]&=\bar\nabla_\mu\bar\nabla_\nu X^{\mu\nu}-\bar\nabla^2X+2X.
\end{align}$$

The linearized Einstein tensor with cosmological term is

$$ \mathcal{E}^{(1)}_{\mu\nu}[X]=R^{(1)}_{\mu\nu}[X]+2X_{\mu\nu}-\frac{1}{2}\bar g_{\mu\nu}R^{(1)}[X]. $$

The quadratic Ricci tensor and scalar are

$$\begin{align}
R^{(2)}_{\mu\nu}[h,h]&=\bar\nabla_\rho C[h,h]^\rho{}_{\nu\mu}-\bar\nabla_\nu C[h,h]^\rho{}_{\rho\mu}\\
&\quad+C[h]^\rho{}_{\rho\lambda}C[h]^\lambda{}_{\nu\mu}-C[h]^\rho{}_{\nu\lambda}C[h]^\lambda{}_{\rho\mu},\\
R^{(2)}[h,h]&=\bar g^{\mu\nu}R^{(2)}_{\mu\nu}[h,h]-h^{\mu\nu}R^{(1)}_{\mu\nu}[h]-2h_{\mu\nu}h^{\mu\nu}.
\end{align}$$

Therefore

$$ \mathcal{E}^{(2)}_{\mu\nu}[h,h]=R^{(2)}_{\mu\nu}[h,h]-\frac{1}{2}\bar g_{\mu\nu}R^{(2)}[h,h]-\frac{1}{2}h_{\mu\nu}R^{(1)}[h]. $$

Thus the perturbative equations are

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h]&=0,\\
\mathcal{E}^{(1)}_{\mu\nu}[k]+\mathcal{E}^{(2)}_{\mu\nu}[h,h]&=T^{(\varphi)}_{\mu\nu}.
\end{align}$$

Equivalently,

$$ \mathcal{E}^{(1)}_{\mu\nu}[k]=T^{(\varphi)}_{\mu\nu}-\mathcal{E}^{(2)}_{\mu\nu}[h,h]. $$

This is the bulk constraint form of the charge-matching problem. The right hand side contains the scalar matter stress tensor and the quadratic effective gravitational source.

## Boundary stress-tensor route

The PDF uses the following boundary fields:

$$ B=g_{zz}-\frac{1}{z^2},\qquad A_{ab}=g_{ab}-\frac{1}{z^2}g^{(0)}_{ab},\qquad A=g^{(0)ab}A_{ab}. $$

The renormalized boundary stress tensor is

$$\begin{align}
T^{\mathrm{bdy}}_{ab}&=\lim_{z\to0}\frac{1}{4G}\Big[\frac{1}{2}Bg^{(0)}_{ab}-A_{ab}-\frac{1}{2}z\partial_zA_{ab}+g^{(0)}_{ab}A+\frac{1}{2}zg^{(0)}_{ab}\partial_zA\\
&\quad+\frac{1}{2}zD^{(0)}_ag_{zb}+\frac{1}{2}zD^{(0)}_bg_{za}-zg^{(0)}_{ab}D^{(0)}_c\left(g^{(0)cd}g_{zd}\right)-\frac{1}{2}z^2g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}\Big].
\end{align}$$

Define the linear boundary functional

$$\begin{align}
\mathcal{B}_{ab}[X]&=\frac{1}{2}X_{zz}g^{(0)}_{ab}-X_{ab}-\frac{1}{2}z\partial_zX_{ab}+g^{(0)}_{ab}X^c{}_c+\frac{1}{2}zg^{(0)}_{ab}\partial_zX^c{}_c\\
&\quad+\frac{1}{2}zD^{(0)}_aX_{zb}+\frac{1}{2}zD^{(0)}_bX_{za}-zg^{(0)}_{ab}D^{(0)}_cX_z{}^c,
\end{align}$$

where $X^c{}_c=g^{(0)cd}X_{cd}$ and $X_z{}^c=g^{(0)cd}X_{zd}$. Then

$$\begin{align}
T^{\mathrm{bdy}(1)}_{ab}&=\frac{1}{4G}\lim_{z\to0}\mathcal{B}_{ab}[h],\\
T^{\mathrm{bdy}(2)}_{ab}&=\frac{1}{4G}\lim_{z\to0}\left(\mathcal{B}_{ab}[k]-\frac{1}{2}z^2g^{(0)}_{ab}g^{(0)cd}h_{zc}h_{zd}\right).
\end{align}$$

For a boundary time slice $C=\partial\Sigma$ and an asymptotic symmetry $\xi^a$, the boundary-stress-tensor charge is

$$ H^{\mathrm{bdy}(n)}_\xi=\int_C\frac{\mathrm{d}\ell}{2\pi}\,u^aT^{\mathrm{bdy}(n)}_{ab}\xi^b, $$

where $u^a$ is the future-pointing unit normal to $C$ in the boundary metric. On the flat boundary cylinder this becomes

$$ H^{\mathrm{bdy}(n)}_\xi=\int_0^{2\pi}\frac{\mathrm{d}\phi}{2\pi}\,T^{\mathrm{bdy}(n)}_{tb}\xi^b. $$

## Noether-charge route

The Noether route starts from the second-order perturbative action and only then forms the charge
$H_\xi=X_\xi\cdot\Theta-\alpha_\xi$. With $\lambda^2=8\pi G$, the order-$\lambda^2$ perturbative action used here is

$$\begin{align}
I^{[2]}_{\mathrm{pert}}[h,k,\varphi]&=\int_M\mathrm{d}^3x\sqrt{-\bar g}\Bigg\{\frac{1}{2}\left(\bar\nabla_\mu\bar\nabla_\nu k^{\mu\nu}-\bar\nabla^2k\right)+\frac{1}{4}h^2-\frac{1}{2}h_{\mu\nu}h^{\mu\nu}\\
&\quad+\frac{1}{2}h^{\mu\nu}\bar\nabla_\mu\bar\nabla_\nu h-\frac{1}{8}\bar\nabla_\mu h\bar\nabla^\mu h-\frac{1}{2}\bar\nabla_\mu h^{\mu\nu}\bar\nabla_\rho h_\nu{}^\rho\\
&\quad+\frac{1}{2}\bar\nabla^\mu h\bar\nabla_\nu h_\mu{}^\nu-\frac{1}{2}h^{\mu\nu}\bar\nabla_\nu\bar\nabla_\rho h_\mu{}^\rho-\frac{1}{2}h^{\mu\nu}\bar\nabla_\rho\bar\nabla_\nu h_\mu{}^\rho\\
&\quad+\frac{1}{4}h\bar\nabla_\mu\bar\nabla_\nu h^{\mu\nu}+\frac{1}{2}h^{\mu\nu}\bar\nabla^2h_{\mu\nu}-\frac{1}{4}h\bar\nabla^2h\\
&\quad-\frac{1}{4}\bar\nabla_\mu h_{\nu\rho}\bar\nabla^\rho h^{\mu\nu}+\frac{3}{8}\bar\nabla_\rho h_{\mu\nu}\bar\nabla^\rho h^{\mu\nu}-\frac{1}{2}\left(\bar g^{\mu\nu}\partial_\mu\varphi\partial_\nu\varphi+m^2\varphi^2\right)\Bigg\}.
\end{align}$$

Following the Noether-theorem workflow in `Articles/Quantization in AdS3/gravitational energy/Noether theorem.md`, its variation is

$$\begin{align}
\delta I^{[2]}_{\mathrm{pert}}&=\int_M\mathrm{d}^3x\sqrt{-\bar g}\left[-\mathcal{E}^{(1)\mu\nu}[h]\delta h_{\mu\nu}+\left(\bar\nabla^2\varphi-m^2\varphi\right)\delta\varphi\right]\\
&\quad+\Theta^{[2]}[h,k,\varphi;\delta h,\delta k,\delta\varphi]\big|_{\Sigma_f-\Sigma_i}.
\end{align}$$

The second-order metric equation is the order-$\lambda^2$ coefficient of the full Einstein equation,

$$ \mathcal{E}^{(1)}_{\mu\nu}[k]+\mathcal{E}^{(2)}_{\mu\nu}[h,h]=T^{(\varphi)}_{\mu\nu}. $$

The boundary one-form is

$$ \Theta^{[2]}=\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau_\mu\left(\theta_k^\mu+\theta_h^\mu+\theta_\varphi^\mu\right), $$

where

$$ \theta_k^\mu=\frac{1}{2}\left(\bar\nabla_\nu\delta k^{\mu\nu}-\bar\nabla^\mu\delta k\right), $$

$$\begin{align}
\theta_h^\mu&=-\frac{1}{2}\Big[h^{\mu\nu}\bar\nabla_\nu\delta h-\frac{1}{2}h\bar\nabla^\mu\delta h+h^{\nu\rho}\bar\nabla^\mu\delta h_{\nu\rho}-h^{\nu\rho}\bar\nabla_\rho\delta h^\mu{}_\nu\\
&\quad-h^{\mu\nu}\bar\nabla_\rho\delta h_\nu{}^\rho+\frac{1}{2}h\bar\nabla_\nu\delta h^{\mu\nu}+\frac{1}{2}\bar\nabla^\mu h_{\nu\rho}\delta h^{\nu\rho}+\frac{1}{2}\bar\nabla_\nu h\,\delta h^{\mu\nu}-\bar\nabla_\rho h^{\nu\rho}\delta h^\mu{}_\nu\Big].
\end{align}$$

$$ \theta_\varphi^\mu=-\bar\nabla^\mu\varphi\,\delta\varphi. $$

For an asymptotic symmetry generated by $\xi^\mu$, define

$$\begin{align}
\delta_\xi h_{\mu\nu}&=2\bar\nabla_{(\mu}\xi_{\nu)}+\xi^\rho\bar\nabla_\rho h_{\mu\nu}+h_{\rho\nu}\bar\nabla_\mu\xi^\rho+h_{\mu\rho}\bar\nabla_\nu\xi^\rho,\\
\delta_\xi k_{\mu\nu}&=\xi^\rho\bar\nabla_\rho k_{\mu\nu}+k_{\rho\nu}\bar\nabla_\mu\xi^\rho+k_{\mu\rho}\bar\nabla_\nu\xi^\rho,\\
\delta_\xi\varphi&=\xi^\rho\partial_\rho\varphi.
\end{align}$$

The traces are $\delta_\xi h=\bar g^{\mu\nu}\delta_\xi h_{\mu\nu}$ and $\delta_\xi k=\bar g^{\mu\nu}\delta_\xi k_{\mu\nu}$. The field-space vector on the perturbative variables is

$$ X_\xi^{[2]}=\int\mathrm{d}^3x\left[\delta_\xi h_{\mu\nu}\frac{\delta}{\delta h_{\mu\nu}}+\delta_\xi k_{\mu\nu}\frac{\delta}{\delta k_{\mu\nu}}+\delta_\xi\varphi\frac{\delta}{\delta\varphi}\right]. $$

For an exact background Killing field the term $2\bar\nabla_{(\mu}\xi_{\nu)}$ vanishes. For a Brown-Henneaux asymptotic symmetry it is retained. Acting on the action without imposing the field equations gives

$$ X_\xi^{[2]}\cdot\delta I^{[2]}_{\mathrm{pert}}=\alpha^{[2]}_\xi[h,k,\varphi]\big|_{\Sigma_f-\Sigma_i}. $$

Explicitly,

$$ \alpha^{[2]}_\xi=\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau_\mu\alpha^{[2]\mu}_\xi, $$

with

$$\begin{align}
\alpha^{[2]\mu}_\xi&=-\xi^\mu\Bigg[\frac{1}{2}\left(\bar\nabla_\rho\bar\nabla_\sigma k^{\rho\sigma}-\bar\nabla^2k\right)+\frac{1}{4}h^2-\frac{1}{2}h_{\rho\sigma}h^{\rho\sigma}\\
&\quad+\frac{1}{2}h^{\rho\sigma}\bar\nabla_\rho\bar\nabla_\sigma h-\frac{1}{8}\bar\nabla_\rho h\bar\nabla^\rho h-\frac{1}{2}\bar\nabla_\rho h^{\rho\sigma}\bar\nabla_\lambda h_\sigma{}^\lambda\\
&\quad+\frac{1}{2}\bar\nabla^\rho h\bar\nabla_\sigma h_\rho{}^\sigma-\frac{1}{2}h^{\rho\sigma}\bar\nabla_\sigma\bar\nabla_\lambda h_\rho{}^\lambda-\frac{1}{2}h^{\rho\sigma}\bar\nabla_\lambda\bar\nabla_\sigma h_\rho{}^\lambda\\
&\quad+\frac{1}{4}h\bar\nabla_\rho\bar\nabla_\sigma h^{\rho\sigma}+\frac{1}{2}h^{\rho\sigma}\bar\nabla^2h_{\rho\sigma}-\frac{1}{4}h\bar\nabla^2h\\
&\quad-\frac{1}{4}\bar\nabla_\rho h_{\sigma\lambda}\bar\nabla^\lambda h^{\rho\sigma}+\frac{3}{8}\bar\nabla_\lambda h_{\rho\sigma}\bar\nabla^\lambda h^{\rho\sigma}-\frac{1}{2}\left(\bar g^{\rho\sigma}\partial_\rho\varphi\partial_\sigma\varphi+m^2\varphi^2\right)\Bigg].
\end{align}$$

The second-order Noether charge is

$$\begin{align}
H^{\mathrm{Noether}(2)}_\xi[h,k,\varphi]&=\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau_\mu\Bigg\{\frac{1}{2}\left(\bar\nabla_\nu\delta_\xi k^{\mu\nu}-\bar\nabla^\mu\delta_\xi k\right)\\
&\quad-\frac{1}{2}\Big[h^{\mu\nu}\bar\nabla_\nu\delta_\xi h-\frac{1}{2}h\bar\nabla^\mu\delta_\xi h+h^{\nu\rho}\bar\nabla^\mu\delta_\xi h_{\nu\rho}-h^{\nu\rho}\bar\nabla_\rho\delta_\xi h^\mu{}_\nu\\
&\qquad-h^{\mu\nu}\bar\nabla_\rho\delta_\xi h_\nu{}^\rho+\frac{1}{2}h\bar\nabla_\nu\delta_\xi h^{\mu\nu}+\frac{1}{2}\bar\nabla^\mu h_{\nu\rho}\delta_\xi h^{\nu\rho}+\frac{1}{2}\bar\nabla_\nu h\,\delta_\xi h^{\mu\nu}-\bar\nabla_\rho h^{\nu\rho}\delta_\xi h^\mu{}_\nu\Big]\\
&\quad-\bar\nabla^\mu\varphi\,\delta_\xi\varphi\\
&\quad+\xi^\mu\Bigg[\frac{1}{2}\left(\bar\nabla_\rho\bar\nabla_\sigma k^{\rho\sigma}-\bar\nabla^2k\right)+\frac{1}{4}h^2-\frac{1}{2}h_{\rho\sigma}h^{\rho\sigma}\\
&\qquad+\frac{1}{2}h^{\rho\sigma}\bar\nabla_\rho\bar\nabla_\sigma h-\frac{1}{8}\bar\nabla_\rho h\bar\nabla^\rho h-\frac{1}{2}\bar\nabla_\rho h^{\rho\sigma}\bar\nabla_\lambda h_\sigma{}^\lambda\\
&\qquad+\frac{1}{2}\bar\nabla^\rho h\bar\nabla_\sigma h_\rho{}^\sigma-\frac{1}{2}h^{\rho\sigma}\bar\nabla_\sigma\bar\nabla_\lambda h_\rho{}^\lambda-\frac{1}{2}h^{\rho\sigma}\bar\nabla_\lambda\bar\nabla_\sigma h_\rho{}^\lambda\\
&\qquad+\frac{1}{4}h\bar\nabla_\rho\bar\nabla_\sigma h^{\rho\sigma}+\frac{1}{2}h^{\rho\sigma}\bar\nabla^2h_{\rho\sigma}-\frac{1}{4}h\bar\nabla^2h\\
&\qquad-\frac{1}{4}\bar\nabla_\rho h_{\sigma\lambda}\bar\nabla^\lambda h^{\rho\sigma}+\frac{3}{8}\bar\nabla_\lambda h_{\rho\sigma}\bar\nabla^\lambda h^{\rho\sigma}-\frac{1}{2}\left(\bar g^{\rho\sigma}\partial_\rho\varphi\partial_\sigma\varphi+m^2\varphi^2\right)\Bigg]\Bigg\}.
\end{align}$$

## Bulk-boundary matching target

The second-order matching statement to prove is

$$ H^{\mathrm{Noether}(2)}_\xi[h,k,\varphi]=H^{\mathrm{bdy}(2)}_\xi[h,k]. $$

Using

$$ \mathcal{E}^{(1)}_{\mu\nu}[k]=T^{(\varphi)}_{\mu\nu}-\mathcal{E}^{(2)}_{\mu\nu}[h,h], $$

the linear-in-$k$ part of the charge is related to the bulk source. The complete order-$\lambda^2$ charge also contains the quadratic $h,h$ part of the Noether charge one-form and the renormalized boundary contribution. Equivalently, after the boundary prescription is fixed, the charge can be packaged as

$$ H^{\mathrm{Noether}(2)}_\xi[h,k,\varphi]=\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau^\mu\xi^\nu T^{(\varphi)}_{\mu\nu}+H^{\mathrm{grav,ren}}_\xi[h]. $$

The naive bulk representative corresponds to the term

$$ -\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau^\mu\xi^\nu\mathcal{E}^{(2)}_{\mu\nu}[h,h], $$

while the full Noether computation determines the quadratic boundary contribution needed to turn it into $H^{\mathrm{grav,ren}}_\xi[h]$.

For the flat boundary cylinder and the constant-time slice of the reference metric,

$$ \sqrt{\bar\sigma}=z^{-2},\qquad \bar\tau^\mu=z(\partial_t)^\mu. $$

Thus the scalar contribution to the global energy is

$$ E_\varphi=\frac{1}{2}\int\mathrm{d}z\,\mathrm{d}\phi\,\frac{1}{z}\left[(\partial_t\varphi)^2+(\partial_z\varphi)^2+(\partial_\phi\varphi)^2+\frac{m^2}{z^2}\varphi^2\right], $$

and the scalar contribution to the angular momentum is

$$ J_\varphi=\int\mathrm{d}z\,\mathrm{d}\phi\,\frac{1}{z}\,\partial_t\varphi\,\partial_\phi\varphi. $$

The unrenormalized gravitational bulk representative appearing in the same charges is

$$ H^{\mathrm{grav}}_\xi[h]=-\int_\Sigma\mathrm{d}^2x\sqrt{\bar\sigma}\,\bar\tau^\mu\xi^\nu\mathcal{E}^{(2)}_{\mu\nu}[h,h], $$

subject to the boundary prescription above.

## Concrete calculation sequence

1. Solve the free scalar equation in the chosen sector and compute $T^{(\varphi)}_{\mu\nu}$.
2. Solve the linearized equation for $k_{\mu\nu}$ with source $T^{(\varphi)}_{\mu\nu}-\mathcal{E}^{(2)}_{\mu\nu}[h,h]$ and the PDF falloffs.
3. Evaluate $T^{\mathrm{bdy}(2)}_{ab}$ from $\mathcal{B}_{ab}[k]$ and the quadratic $h_{za}h_{zb}$ term.
4. Evaluate the renormalized Noether charge at order $\lambda^2$.
5. Check equality of the two boundary charges and then compare the common answer with the bulk integral of $T^{(\varphi)}_{\mu\nu}-\mathcal{E}^{(2)}_{\mu\nu}[h,h]$.

This gives a controlled version of the effective gravitational-energy formula: the local source $-\mathcal{E}^{(2)}_{\mu\nu}[h,h]$ is used only after the renormalized boundary charge has fixed the normalization and the boundary representative.
