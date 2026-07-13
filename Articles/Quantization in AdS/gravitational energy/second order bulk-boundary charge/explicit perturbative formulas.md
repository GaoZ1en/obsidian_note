---
title: "Explicit perturbative formulas for second-order bulk-boundary charge matching"
date: 2026-07-12
summary: "A gauge-free coefficient dictionary for the metric, curvature, action, covariant phase-space data, Noether currents, and radial boundary geometry used in the second-order AdS3 charge-matching draft."
---

# Explicit perturbative formulas

This note is a calculation companion to “draft.md” in the same directory. Its purpose is to expose the coefficient formulas that are abbreviated there, so that every step can be checked or modified by hand. All formulas are off shell unless a constraint is explicitly displayed, and no gauge condition is imposed on $h_{mu\nu}$, $k_{mu\nu}$, or $p_{mu\nu}$.

The Noether charge convention is kept fixed throughout:

$$\begin{align}
H_\xi=X_\xi\mathbin{\cdot}\theta-\alpha_\xi.
\end{align}$$

No alternative surface-form definition is introduced in this note.

## 1. Background and notation

Set the AdS radius to one and write

$$\begin{aligned}
\mathrm ds_0^2&=-f(r)\,\mathrm dt^2+\frac{\mathrm dr^2}{f(r)}+r^2\mathrm d\phi^2, &f(r)&=1+r^2,\\
R^{(0)}_{\mu\nu\rho\sigma} &=-\left(g^{(0)}_{\mu\rho}g^{(0)}_{\nu\sigma} -g^{(0)}_{\mu\sigma}g^{(0)}_{\nu\rho}\right), &R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu}, &R^{(0)}&=-6.
\end{aligned}$$

The metric expansion is

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu} +\kappa^2k_{\mu\nu}+\kappa^3p_{\mu\nu}+O(\kappa^4).
\end{align}$$

All perturbative indices are moved with $g^{(0)}$. We use

$$
\begin{gathered}
h:=g^{(0)\mu\nu}h_{\mu\nu},\qquad
k:=g^{(0)\mu\nu}k_{\mu\nu},\qquad
p:=g^{(0)\mu\nu}p_{\mu\nu},\\
(h^2)^{\mu\nu}:=h^\mu{}_{\rho}h^{\rho\nu},\qquad
(hk)^{\mu\nu}:=h^\mu{}_{\rho}k^{\rho\nu},\qquad
(h^3)^{\mu\nu}:=h^\mu{}_{\rho}h^\rho{}_{\sigma}h^{\sigma\nu},\\
h_2:=h_{\mu\nu}h^{\mu\nu},\qquad
hk:=h_{\mu\nu}k^{\mu\nu},\qquad
h_3:=h_\mu{}^\nu h_\nu{}^\rho h_\rho{}^\mu.
\end{gathered}
$$

Antisymmetrization has weight one half. The notation $[\kappa^n]F$ means the coefficient of $\kappa^n$ in $F$.

## 2. Algebraic metric expansions

### 2.1 Inverse metric

Write

$$\begin{align}
g^{\mu\nu}=\sum_{n=0}^3\kappa^n q_{(n)}^{\mu\nu}+O(\kappa^4).
\end{align}$$

The coefficients are

$$\begin{aligned}
q_{(0)}^{\mu\nu}&=g^{(0)\mu\nu},\\
q_{(1)}^{\mu\nu}&=-h^{\mu\nu},\\
q_{(2)}^{\mu\nu}&=(h^2)^{\mu\nu}-k^{\mu\nu},\\
q_{(3)}^{\mu\nu}&=-p^{\mu\nu}+(hk)^{\mu\nu}+(kh)^{\mu\nu}-(h^3)^{\mu\nu}.
\end{aligned}$$

Thus $\sum_{r+s=n}q_{(r)}^{\mu\rho}g^{(s)}_{\rho\nu}=0$ for $n\geq1$, where $g^{(0)}_{\mu\nu}$, $g^{(1)}_{\mu\nu}=h_{\mu\nu}$, $g^{(2)}_{\mu\nu}=k_{\mu\nu}$, and $g^{(3)}_{\mu\nu}=p_{\mu\nu}$.

### 2.2 Volume density

The expansion

$$\begin{align}
\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}} =1+\kappa v_1+\kappa^2v_2+\kappa^3v_3+O(\kappa^4)
\end{align}$$

has coefficients

$$\begin{aligned}
v_1&=\frac12h,\\
v_2&=\frac12k+\frac18h^2-\frac14h_2,\\
v_3&=\frac12p+\frac14h\,k-\frac12h_{\mu\nu}k^{\mu\nu} +\frac1{48}h^3-\frac18h\,h_2+\frac16h_3.
\end{aligned}$$

Equivalently, in matrix trace notation,

$$\begin{align}
v_3=\frac12\operatorname{tr}p +\frac14(\operatorname{tr}h)(\operatorname{tr}k) -\frac12\operatorname{tr}(hk) +\frac1{48}(\operatorname{tr}h)^3 -\frac18(\operatorname{tr}h)\operatorname{tr}(h^2) +\frac16\operatorname{tr}(h^3).
\end{align}$$

### 2.3 Density-weighted inverse metric

Define

$$\begin{align}
P^{\mu\nu}:=\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}}g^{\mu\nu} =\sum_{n=0}^3\kappa^nP_{(n)}^{\mu\nu}+O(\kappa^4).
\end{align}$$

Then

$$\begin{aligned}
P_{(0)}^{\mu\nu}&=g^{(0)\mu\nu},\\
P_{(1)}^{\mu\nu}&=v_1g^{(0)\mu\nu}-h^{\mu\nu},\\
P_{(2)}^{\mu\nu}&=v_2g^{(0)\mu\nu}-v_1h^{\mu\nu} +(h^2)^{\mu\nu}-k^{\mu\nu},\\
P_{(3)}^{\mu\nu}&=v_3g^{(0)\mu\nu}-v_2h^{\mu\nu} +v_1\left((h^2)^{\mu\nu}-k^{\mu\nu}\right)\\
&\quad-p^{\mu\nu}+(hk)^{\mu\nu}+(kh)^{\mu\nu}-(h^3)^{\mu\nu}.
\end{aligned}$$

## 3. Connection and curvature

### 3.1 Connection difference

For any symmetric covariant tensor $u_{\mu\nu}$, define the background-linear connection operator

$$\begin{align}
\mathscr C[u]^\rho{}_{\mu\nu} :=\frac12g^{(0)\rho\lambda} \left(\nabla^{(0)}_\mu u_{\lambda\nu} +\nabla^{(0)}_\nu u_{\lambda\mu} -\nabla^{(0)}_\lambda u_{\mu\nu}\right).
\end{align}$$

The exact connection difference is

$$\begin{align}
C^\rho{}_{\mu\nu}:=\Gamma^\rho{}_{\mu\nu}[g] -\Gamma^{(0)\rho}{}_{\mu\nu} =\sum_{n=1}^3\kappa^nC_{(n)}^\rho{}_{\mu\nu}+O(\kappa^4),
\end{align}$$

with

$$\begin{aligned}
C_{(1)}^\rho{}_{\mu\nu} &=\mathscr C[h]^\rho{}_{\mu\nu},\\
C_{(2)}^\rho{}_{\mu\nu} &=\mathscr C[k]^\rho{}_{\mu\nu} -h^\rho{}_{\lambda}\mathscr C[h]^\lambda{}_{\mu\nu},\\
C_{(3)}^\rho{}_{\mu\nu} &=\mathscr C[p]^\rho{}_{\mu\nu} -h^\rho{}_{\lambda}\mathscr C[k]^\lambda{}_{\mu\nu}\\
&\quad+\left(h^\rho{}_{\alpha}h^\alpha{}_{\lambda} -k^\rho{}_{\lambda}\right)\mathscr C[h]^\lambda{}_{\mu\nu}.
\end{aligned}$$

These formulas include all $h$--$k$ mixing and require no coordinate or gauge specialization.

### 3.2 Riemann and Ricci tensors

With the convention

$$\begin{align}
R^\rho{}_{\sigma\mu\nu} =R^{(0)\rho}{}_{\sigma\mu\nu} +2\nabla^{(0)}_{[\mu}C^\rho{}_{\nu]\sigma} +2C^\rho{}_{[\mu|\lambda|}C^\lambda{}_{\nu]\sigma},
\end{align}$$

the coefficient at order $n\geq1$ is

$$\begin{align}
R_{(n)}^\rho{}_{\sigma\mu\nu} =2\nabla^{(0)}_{[\mu}C_{(n)}^\rho{}_{\nu]\sigma} +2\sum_{r=1}^{n-1}C_{(r)}^\rho{}_{[\mu|\lambda|} C_{(n-r)}^\lambda{}_{\nu]\sigma}.
\end{align}$$

Equivalently, the first three Ricci coefficients are

$$\begin{aligned}
R^{(1)}_{\mu\nu} &=\nabla^{(0)}_\rho C_{(1)}^\rho{}_{\mu\nu} -\nabla^{(0)}_\nu C_{(1)}^\rho{}_{\mu\rho},\\
R^{(2)}_{\mu\nu} &=\nabla^{(0)}_\rho C_{(2)}^\rho{}_{\mu\nu} -\nabla^{(0)}_\nu C_{(2)}^\rho{}_{\mu\rho}\\
&\quad+C_{(1)}^\rho{}_{\rho\lambda}C_{(1)}^\lambda{}_{\mu\nu} -C_{(1)}^\rho{}_{\nu\lambda}C_{(1)}^\lambda{}_{\mu\rho},\\
R^{(3)}_{\mu\nu} &=\nabla^{(0)}_\rho C_{(3)}^\rho{}_{\mu\nu} -\nabla^{(0)}_\nu C_{(3)}^\rho{}_{\mu\rho}\\
&\quad+C_{(1)}^\rho{}_{\rho\lambda}C_{(2)}^\lambda{}_{\mu\nu} +C_{(2)}^\rho{}_{\rho\lambda}C_{(1)}^\lambda{}_{\mu\nu}\\
&\quad-C_{(1)}^\rho{}_{\nu\lambda}C_{(2)}^\lambda{}_{\mu\rho} -C_{(2)}^\rho{}_{\nu\lambda}C_{(1)}^\lambda{}_{\mu\rho}.
\end{aligned}$$

### 3.3 Scalar curvature

Write $R=R^{(0)}+\sum_{n=1}^3\kappa^n\mathcal R^{(n)}+O(\kappa^4)$. Then

$$\begin{aligned}
\mathcal R^{(1)} &=g^{(0)\mu\nu}R^{(1)}_{\mu\nu}-h^{\mu\nu}R^{(0)}_{\mu\nu},\\
\mathcal R^{(2)} &=g^{(0)\mu\nu}R^{(2)}_{\mu\nu}-h^{\mu\nu}R^{(1)}_{\mu\nu} +\left((h^2)^{\mu\nu}-k^{\mu\nu}\right)R^{(0)}_{\mu\nu},\\
\mathcal R^{(3)} &=g^{(0)\mu\nu}R^{(3)}_{\mu\nu}-h^{\mu\nu}R^{(2)}_{\mu\nu} +\left((h^2)^{\mu\nu}-k^{\mu\nu}\right)R^{(1)}_{\mu\nu}\\
&\quad+\left(-p^{\mu\nu}+(hk)^{\mu\nu}+(kh)^{\mu\nu} -(h^3)^{\mu\nu}\right)R^{(0)}_{\mu\nu}.
\end{aligned}$$

On AdS$_3$ these become

$$\begin{aligned}
\mathcal R^{(1)} &=g^{(0)\mu\nu}R^{(1)}_{\mu\nu}+2h,\\
\mathcal R^{(2)} &=g^{(0)\mu\nu}R^{(2)}_{\mu\nu}-h^{\mu\nu}R^{(1)}_{\mu\nu} -2h_2+2k,\\
\mathcal R^{(3)} &=g^{(0)\mu\nu}R^{(3)}_{\mu\nu}-h^{\mu\nu}R^{(2)}_{\mu\nu} +\left((h^2)^{\mu\nu}-k^{\mu\nu}\right)R^{(1)}_{\mu\nu}\\
&\quad+2p-4hk+2h_3.
\end{aligned}$$

### 3.4 Cosmological Einstein tensor

Define

$$\begin{align}
\mathcal E_{\mu\nu}[g] :=R_{\mu\nu}-\frac12g_{\mu\nu}R-g_{\mu\nu} =\sum_{n\geq1}\kappa^n\mathcal E^{[n]}_{\mu\nu}.
\end{align}$$

The first three coefficients are

$$\begin{aligned}
\mathcal E^{[1]}_{\mu\nu} &=R^{(1)}_{\mu\nu}-\frac12g^{(0)}_{\mu\nu}\mathcal R^{(1)}+2h_{\mu\nu},\\
\mathcal E^{[2]}_{\mu\nu} &=R^{(2)}_{\mu\nu}-\frac12g^{(0)}_{\mu\nu}\mathcal R^{(2)} -\frac12h_{\mu\nu}\mathcal R^{(1)}+2k_{\mu\nu},\\
\mathcal E^{[3]}_{\mu\nu} &=R^{(3)}_{\mu\nu}-\frac12g^{(0)}_{\mu\nu}\mathcal R^{(3)} -\frac12h_{\mu\nu}\mathcal R^{(2)} -\frac12k_{\mu\nu}\mathcal R^{(1)}+2p_{\mu\nu}.
\end{aligned}$$

The notation used in the draft is

$$\begin{aligned}
\mathcal E^{[1]}[h]&=\mathcal E^{(1)}[h],\\
\mathcal E^{[2]}[h,k]&=\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h],\\
\mathcal E^{(2)}_{\mu\nu}[h,h] &=R^{(2)}_{\mu\nu}[h,h] -\frac12g^{(0)}_{\mu\nu}\mathcal R^{(2)}[h,h] -\frac12h_{\mu\nu}\mathcal R^{(1)}[h].
\end{aligned}$$

The explicit derivative-ordered linear operator is

$$\begin{aligned}
\mathcal E^{(1)}_{\mu\nu}[u] ={}&2u_{\mu\nu}-g^{(0)}_{\mu\nu}u -\frac12\nabla^{(0)}_\mu\nabla^{(0)}_\nu u +\frac12\nabla^{(0)}_\rho\nabla^{(0)}_\mu u_\nu{}^\rho +\frac12\nabla^{(0)}_\rho\nabla^{(0)}_\nu u_\mu{}^\rho\\
&-\frac12\nabla^{(0)2}u_{\mu\nu} -\frac12g^{(0)}_{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\sigma u^{\rho\sigma} +\frac12g^{(0)}_{\mu\nu}\nabla^{(0)2}u.
\end{aligned}$$

The gravitational self-stress used in the matching is therefore

$$\begin{align}
T_{(h)\mu\nu}:=-\mathcal E^{(2)}_{\mu\nu}[h,h].
\end{align}$$

## 4. Perturbative action

### 4.1 Gravitational density

Let

$$\begin{align}
\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}}(R+2) =\ell_0+\kappa\ell_1+\kappa^2\ell_2+\kappa^3\ell_3+O(\kappa^4).
\end{align}$$

Direct multiplication gives

$$\begin{aligned}
\ell_0&=-4,\\
\ell_1&=\mathcal R^{(1)}-4v_1,\\
\ell_2&=\mathcal R^{(2)}+v_1\mathcal R^{(1)}-4v_2,\\
\ell_3&=\mathcal R^{(3)}+v_1\mathcal R^{(2)}+v_2\mathcal R^{(1)}-4v_3.
\end{aligned}$$

Their field decomposition is

$$\begin{aligned}
\ell_1&=\mathcal L_g^{(1)}[h],\\
\ell_2&=\mathcal L_g^{(1)}[k]+\mathcal L_g^{(2)}[h,h],\\
\ell_3&=\mathcal L_g^{(1)}[p]+2\mathcal L_g^{(2)}[h,k] +\mathcal L_g^{(3)}[h,h,h].
\end{aligned}$$

On the AdS background,

$$\begin{align}
\mathcal L_g^{(1)}[u] =\nabla^{(0)}_\mu\nabla^{(0)}_\nu u^{\mu\nu} -\nabla^{(0)2}u.
\end{align}$$

The local quadratic density is

$$\begin{aligned}
\mathcal L_g^{(2)}[u,u] ={}&\frac12u^2-u_{\mu\nu}u^{\mu\nu} +u^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu u -\frac14\nabla^{(0)}_\mu u\nabla^{(0)\mu}u\\
&-\nabla^{(0)}_\mu u^{\mu\nu}\nabla^{(0)}_\rho u_\nu{}^\rho +\nabla^{(0)\mu}u\nabla^{(0)}_\nu u_\mu{}^\nu -u^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho u_\mu{}^\rho\\
&-u^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu u_\mu{}^\rho +\frac12u\nabla^{(0)}_\mu\nabla^{(0)}_\nu u^{\mu\nu} +u^{\mu\nu}\nabla^{(0)2}u_{\mu\nu}\\
&-\frac12u\nabla^{(0)2}u -\frac12\nabla^{(0)}_\mu u_{\nu\rho}\nabla^{(0)\rho}u^{\mu\nu} +\frac34\nabla^{(0)}_\rho u_{\mu\nu}\nabla^{(0)\rho}u^{\mu\nu}.
\end{aligned}$$

The mixed term is fixed without integrations by parts by

$$\begin{align}
\mathcal L_g^{(2)}[h,k] :=\frac12\left(\mathcal L_g^{(2)}[h+k,h+k] -\mathcal L_g^{(2)}[h,h]-\mathcal L_g^{(2)}[k,k]\right).
\end{align}$$

The pure cubic term is obtained by setting $k=p=0$ in the formulas of Secs. 2--3:

$$\begin{align}
\mathcal L_g^{(3)}[h,h,h] =\mathcal R^{(3)}[h,h,h] +\frac12h\,\mathcal R^{(2)}[h,h] +\left(\frac18h^2-\frac14h_2\right)\mathcal R^{(1)}[h] -4\left(\frac1{48}h^3-\frac18h\,h_2+\frac16h_3\right).
\end{align}$$

Consequently,

$$\begin{align}
S_{\mathrm{EH}} =\int_M\!\epsilon_0\left( \frac{\ell_0}{2\kappa^2}+\frac{\ell_1}{2\kappa} +\frac{\ell_2}{2}+\frac{\kappa\ell_3}{2} \right)+O(\kappa^2).
\end{align}$$

### 4.2 General matter sector

For a general diffeomorphism-covariant matter action, the model-independent information is

$$\begin{align}
\delta S_{\mathrm m} =\frac12\int_M\!\epsilon_g\,T^{\mu\nu}\delta g_{\mu\nu} +\int_M\!\epsilon_g\,E_A\delta\Psi^A +\int_{\partial M}\!\boldsymbol\Theta_{\mathrm m}.
\end{align}$$

Therefore the first metric-dependent term is

$$\begin{align}
S_{\mathrm m}[g,\Psi] =S_{\mathrm m}^{[0]}[g^{(0)},\Psi] +\frac\kappa2\int_M\!\epsilon_0\,h_{\mu\nu}T^{\mu\nu} +\kappa S_{\mathrm m,field}^{[1]}+O(\kappa^2).
\end{align}$$

No more explicit universal expression exists until a particular matter Lagrangian is chosen. In the stress-tensor description used here, variation of the $O(\kappa)$ action gives

$$\begin{align}
E_h^{[1]\mu\nu} =-\frac12\left( \mathcal E^{(1)\mu\nu}[k] +\mathcal E^{(2)\mu\nu}[h,h]-T^{\mu\nu} \right).
\end{align}$$

## 5. First variation and symplectic data

### 5.1 Variations of the connection coefficients

Let $\delta C_{(n)}$ denote the field-space variation of $C_{(n)}$. The coefficients needed through $\Theta^{[1]}$ are

$$\begin{aligned}
\delta C_{(1)}^\rho{}_{\mu\nu} &=\mathscr C[\delta h]^\rho{}_{\mu\nu},\\
\delta C_{(2)}^\rho{}_{\mu\nu} &=\mathscr C[\delta k]^\rho{}_{\mu\nu} -\delta h^\rho{}_{\lambda}\mathscr C[h]^\lambda{}_{\mu\nu} -h^\rho{}_{\lambda}\mathscr C[\delta h]^\lambda{}_{\mu\nu},\\
\delta C_{(3)}^\rho{}_{\mu\nu} &=\mathscr C[\delta p]^\rho{}_{\mu\nu} -\delta h^\rho{}_{\lambda}\mathscr C[k]^\lambda{}_{\mu\nu} -h^\rho{}_{\lambda}\mathscr C[\delta k]^\lambda{}_{\mu\nu}\\
&\quad+\left( \delta h^\rho{}_{\alpha}h^\alpha{}_{\lambda} +h^\rho{}_{\alpha}\delta h^\alpha{}_{\lambda} -\delta k^\rho{}_{\lambda} \right)\mathscr C[h]^\lambda{}_{\mu\nu}\\
&\quad+\left(h^\rho{}_{\alpha}h^\alpha{}_{\lambda} -k^\rho{}_{\lambda}\right)
\mathscr C[\delta h]^\lambda{}_{\mu\nu}.
\end{aligned}$$

### 5.2 Einstein--Hilbert symplectic potential

The exact convention is

$$\begin{align}
\Theta_{\mathrm{EH}}^\mu[g;\delta g] =-\frac1{2\kappa^2}P^{\alpha\beta}\delta\Gamma^\mu{}_{\alpha\beta} +\frac1{2\kappa^2}P^{\mu\alpha}\delta\Gamma^\beta{}_{\alpha\beta}.
\end{align}$$

Expanding

$$\begin{align}
\Theta_{\mathrm{EH}}^\mu =\kappa^{-1}\Theta^{[-1]\mu} +\Theta^{[0]\mu}+\kappa\Theta^{[1]\mu}+O(\kappa^2),
\end{align}$$

gives the following explicit coefficient rules:

$$\begin{aligned}
\Theta^{[-1]\mu} &=-\frac12\left( P_{(0)}^{\alpha\beta}\delta C_{(1)}^\mu{}_{\alpha\beta} -P_{(0)}^{\mu\alpha}\delta C_{(1)}^\beta{}_{\alpha\beta} \right),\\
\Theta^{[0]\mu} &=-\frac12\left( P_{(0)}^{\alpha\beta}\delta C_{(2)}^\mu{}_{\alpha\beta} +P_{(1)}^{\alpha\beta}\delta C_{(1)}^\mu{}_{\alpha\beta} \right)\\
&\quad+\frac12\left( P_{(0)}^{\mu\alpha}\delta C_{(2)}^\beta{}_{\alpha\beta} +P_{(1)}^{\mu\alpha}\delta C_{(1)}^\beta{}_{\alpha\beta} \right),\\
\Theta^{[1]\mu} &=-\frac12\left( P_{(0)}^{\alpha\beta}\delta C_{(3)}^\mu{}_{\alpha\beta} +P_{(1)}^{\alpha\beta}\delta C_{(2)}^\mu{}_{\alpha\beta} +P_{(2)}^{\alpha\beta}\delta C_{(1)}^\mu{}_{\alpha\beta} \right)\\
&\quad+\frac12\left( P_{(0)}^{\mu\alpha}\delta C_{(3)}^\beta{}_{\alpha\beta} +P_{(1)}^{\mu\alpha}\delta C_{(2)}^\beta{}_{\alpha\beta} +P_{(2)}^{\mu\alpha}\delta C_{(1)}^\beta{}_{\alpha\beta} \right).
\end{aligned}$$

The leading term simplifies to

$$\begin{align}
\Theta^{[-1]\mu}[\delta h] =-\frac12\left( \nabla^{(0)}_\nu\delta h^{\mu\nu} -\nabla^{(0)\mu}\delta h \right).
\end{align}$$

For the selected contraction used in the finite inhomogeneous current, set $\delta k=\delta p=0$. Then

$$\begin{aligned}
\left.\delta C_{(2)}^\rho{}_{\mu\nu}\right|_{\delta h} &=-\delta h^\rho{}_{\lambda}\mathscr C[h]^\lambda{}_{\mu\nu} -h^\rho{}_{\lambda}\mathscr C[\delta h]^\lambda{}_{\mu\nu},\\
\left.\delta C_{(3)}^\rho{}_{\mu\nu}\right|_{\delta h} &=-\delta h^\rho{}_{\lambda}\mathscr C[k]^\lambda{}_{\mu\nu}\\
&\quad+\left( \delta h^\rho{}_{\alpha}h^\alpha{}_{\lambda} +h^\rho{}_{\alpha}\delta h^\alpha{}_{\lambda} \right)\mathscr C[h]^\lambda{}_{\mu\nu}\\
&\quad+\left(h^\rho{}_{\alpha}h^\alpha{}_{\lambda} -k^\rho{}_{\lambda}\right)
\mathscr C[\delta h]^\lambda{}_{\mu\nu}.
\end{aligned}$$

Substituting these two lines into the displayed formula for $\Theta^{[1]}$ gives $\Theta_h^{[1]\mu}[\delta h]$ with every $h^2\delta h$ and $k\delta h$ term retained.

### 5.3 Finite gravitational symplectic current

For field-space one-forms, define

$$\begin{align}
A\wedge B(\delta_1,\delta_2) :=A(\delta_1)B(\delta_2)-A(\delta_2)B(\delta_1).
\end{align}$$

The leading nonzero gravitational current is the finite coefficient

$$\begin{aligned}
\omega_{\mathrm{EH}}^{[0]\mu} =-\frac12\bigg[{} &\frac12\delta h^{\mu\nu}\wedge\nabla^{(0)}_\nu\delta h -\frac12\delta h\wedge\nabla^{(0)\mu}\delta h +\frac12\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}\\
&-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_{\nu} +\frac12\delta h\wedge\nabla^{(0)}_\nu\delta h^{\mu\nu}
\bigg].
\end{aligned}$$

The complete finite symplectic structure also contains the leading matter current and the antisymmetrized variation of the corner potential:

$$\begin{align}
\Omega_\Sigma^{[0]} =\int_\Sigma\left( \boldsymbol\omega_{\mathrm{EH}}^{[0]} +\boldsymbol\omega_{\mathrm m}^{[0]} \right) -\int_{C_R}\delta\boldsymbol C_\Gamma^{[0]}.
\end{align}$$

Here $\delta\boldsymbol C_\Gamma^{[0]}$ denotes the field-space exterior derivative, evaluated on the ordered pair of variations.

## 6. Diffeomorphisms and Noether coefficients

### 6.1 Perturbative field-space vector

For any covariant perturbation $u_{\mu\nu}$,

$$\begin{align}
(\mathcal L_\xi u)_{\mu\nu} =\xi^\rho\nabla^{(0)}_\rho u_{\mu\nu} +u_{\rho\nu}\nabla^{(0)}_\mu\xi^\rho +u_{\mu\rho}\nabla^{(0)}_\nu\xi^\rho.
\end{align}$$

The perturbative diffeomorphism vector is

$$\begin{align}
X_\xi=\kappa^{-1}X_\xi^{[-1]}+X_\xi^{[0]}+O(\kappa),
\end{align}$$

with nonzero contractions

$$
\begin{array}{lll}
X_\xi^{[-1]}\mathbin{\cdot}\delta h_{\mu\nu}
=\mathcal L_\xi g^{(0)}_{\mu\nu},
&X_\xi^{[0]}\mathbin{\cdot}\delta h_{\mu\nu}=\mathcal L_\xi h_{\mu\nu},\\[1mm]
X_\xi^{[0]}\mathbin{\cdot}\delta k_{\mu\nu}=\mathcal L_\xi k_{\mu\nu},
&X_\xi^{[0]}\mathbin{\cdot}\delta p_{\mu\nu}=\mathcal L_\xi p_{\mu\nu},\\[1mm]
X_\xi^{[0]}\mathbin{\cdot}\delta\Psi^A=\mathcal L_\xi\Psi^A.
\end{array}
$$

All omitted contractions of $X_\xi^{[-1]}$ vanish.

### 6.2 The $\alpha_\xi$ coefficients

For the bulk Lagrangian,

$$\begin{align}
\alpha_{\xi,\mathrm{bulk}}=\int_\Sigma\xi\mathbin{\cdot}\boldsymbol L_{\mathrm{bulk}}.
\end{align}$$

Its first three coefficients are

$$\begin{aligned}
\boldsymbol\alpha_{\xi,\mathrm{bulk}}^{[-2]} &=\xi\mathbin{\cdot}\left(\frac12\ell_0\boldsymbol\epsilon_0\right),\\
\boldsymbol\alpha_{\xi,\mathrm{bulk}}^{[-1]} &=\xi\mathbin{\cdot}\left(\frac12\ell_1\boldsymbol\epsilon_0\right),\\
\boldsymbol\alpha_{\xi,\mathrm{bulk}}^{[0]} &=\xi\mathbin{\cdot}\left[ \left(\frac12\ell_2+\mathcal L_{\mathrm m}^{[0]}\right) \boldsymbol\epsilon_0\right].
\end{aligned}$$

Including the timelike-boundary descent form $\boldsymbol\mu_\xi$,

$$\begin{align}
\alpha_\xi =\int_\Sigma\xi\mathbin{\cdot}\boldsymbol L_{\mathrm{bulk}} -\int_{C_R}\boldsymbol\mu_\xi.
\end{align}$$

With the renormalized Cauchy potential, the exact split following from the fixed Noether definition is

$$\begin{aligned}
H_\xi&=H_{\xi,\mathrm{bulk}}+H_{\xi,\Gamma},\\
H_{\xi,\mathrm{bulk}} &=\int_\Sigma\left[ X_\xi\mathbin{\cdot}(\boldsymbol\Theta_{\mathrm{EH}}+\boldsymbol\Theta_{\mathrm m}) -\xi\mathbin{\cdot}\boldsymbol L_{\mathrm{bulk}} \right],\\
H_{\xi,\Gamma} &=\int_{C_R}\left( \boldsymbol\mu_\xi-X_\xi\mathbin{\cdot}\boldsymbol C_\Gamma \right).
\end{aligned}$$

### 6.3 Antisymmetric surface tensors

Define

$$\begin{aligned}
A_\xi^{(0)\mu\nu} &=\nabla^{(0)\mu}\xi^\nu-\nabla^{(0)\nu}\xi^\mu,\\
A_\xi^{(1)\mu\nu}[u] &=-u^{\mu\rho}\nabla^{(0)}_\rho\xi^\nu +u^{\nu\rho}\nabla^{(0)}_\rho\xi^\mu\\
&\quad+\xi^\rho\left( \nabla^{(0)\mu}u^\nu{}_{\rho} -\nabla^{(0)\nu}u^\mu{}_{\rho} \right),\\
A_\xi^{(2)\mu\nu}[h,h] &=h^\mu{}_{\rho}h^{\rho\sigma}\nabla^{(0)}_\sigma\xi^\nu -h^\nu{}_{\rho}h^{\rho\sigma}\nabla^{(0)}_\sigma\xi^\mu\\
&\quad+\xi^\lambda\bigg[ h^{\mu\rho}\left( \nabla^{(0)\nu}h_{\rho\lambda} -\nabla^{(0)}_\rho h^\nu{}_{\lambda} \right)\\
&\qquad\qquad-h^{\nu\rho}\left( \nabla^{(0)\mu}h_{\rho\lambda} -\nabla^{(0)}_\rho h^\mu{}_{\lambda} \right)
\bigg].
\end{aligned}$$

The leading surface tensor is

$$\begin{align}
S_\xi^{[-1]\mu\nu} =\frac12\left( A_\xi^{(1)\mu\nu}[h]+\frac12hA_\xi^{(0)\mu\nu} \right).
\end{align}$$

For the quadratic $h$ contribution, let

$$\begin{aligned}
s_2&=-\frac14h_2+\frac18h^2,\\
D_{1,\xi}^{\mu\nu} &=-h^{\mu\rho}\nabla^{(0)}_\rho\xi^\nu +g^{(0)\mu\sigma}\mathscr C[h]^\nu{}_{\sigma\rho}\xi^\rho,\\
D_{2,\xi}^{\mu\nu} &=h^\mu{}_{\lambda}h^{\lambda\rho}\nabla^{(0)}_\rho\xi^\nu -h^{\mu\rho}\mathscr C[h]^\nu{}_{\rho\sigma}\xi^\sigma\\
&\quad-g^{(0)\mu\rho}h^\nu{}_{\lambda}
\mathscr C[h]^\lambda{}_{\rho\sigma}\xi^\sigma.
\end{aligned}$$

In the last line we used the pure-$h$ coefficient
$C_{(2)}[h,h]^\nu{}_{\rho\sigma}=-h^\nu{}_{\lambda}\mathscr C[h]^\lambda{}_{\rho\sigma}$ explicitly. Then

$$\begin{aligned}
S_{\xi,h}^{\mu\nu} &=s_2\nabla^{(0)[\mu}\xi^{\nu]} +\frac12hD_{1,\xi}^{[\mu\nu]}+D_{2,\xi}^{[\mu\nu]},\\
S_{\xi,k}^{\mu\nu} &=\xi_\rho\nabla^{(0)[\mu}k^{\nu]\rho} +\frac12k\nabla^{(0)[\mu}\xi^{\nu]} -k^{\rho[\mu}\nabla^{(0)}_\rho\xi^{\nu]}\\
&=\frac12A_\xi^{(1)\mu\nu}[k] +\frac14kA_\xi^{(0)\mu\nu}.
\end{aligned}$$

The complete Einstein--Hilbert surface coefficient before simplifying is

$$\begin{aligned}
S_{\xi,\mathrm{EH}}^{[0]\mu\nu} =\frac12\bigg(&A_\xi^{(1)\mu\nu}[k] +A_\xi^{(2)\mu\nu}[h,h] +\frac12hA_\xi^{(1)\mu\nu}[h]\\
&+\left(\frac12k+s_2\right)A_\xi^{(0)\mu\nu}
\bigg).
\end{aligned}$$

The identities

$$\begin{align}
D_{1,\xi}^{[\mu\nu]}=\frac12A_\xi^{(1)\mu\nu}[h], \qquad D_{2,\xi}^{[\mu\nu]}=\frac12A_\xi^{(2)\mu\nu}[h,h]
\end{align}$$

show that the selected inhomogeneous contraction adds no independent antisymmetric Einstein--Hilbert surface tensor.

### 6.4 Off-shell local bulk currents

After subtracting the background coefficient,

$$\begin{align}
\mathcal H_{\xi,\mathrm{bulk}}^\mu =\kappa^{-1}\mathcal H_{\xi,\mathrm{bulk}}^{[-1]\mu} +\mathcal H_{\xi,\mathrm{bulk}}^{[0]\mu}+O(\kappa).
\end{align}$$

The leading coefficient is

$$\begin{align}
\mathcal H_{\xi,\mathrm{bulk}}^{[-1]\mu} =\xi_\nu\mathcal E^{(1)\mu\nu}[h] +\nabla^{(0)}_\nu S_\xi^{[-1]\mu\nu}.
\end{align}$$

Before imposing any equation, the finite homogeneous contribution can be written

$$\begin{aligned}
\mathcal H_{\xi,\mathrm{bulk,tr}}^{[0]\mu} ={}&\xi_\nu T_{(h)}^{\mu\nu}+\xi_\nu T^{\mu\nu} +\nabla^{(0)}_\nu\left( S_{\xi,h}^{\mu\nu}+S_{\xi,k,0}^{\mu\nu} \right)\\
&+\mathcal R_{\xi,h}^\mu+\mathcal R_{\xi,\mathrm m}^\mu,
\end{aligned}$$

where

$$\begin{aligned}
S_{\xi,k,0}^{\mu\nu} &=\xi^{[\mu}\left( \nabla^{(0)}_\rho k^{\nu]\rho} -\nabla^{(0)\nu]}k \right),\\
\mathcal R_{\xi,h}^\mu &=\xi^\rho h^{\mu\sigma}\mathcal E^{(1)}_{\sigma\rho}[h] -\frac12h\xi_\nu\mathcal E^{(1)\mu\nu}[h].
\end{aligned}$$

The matter remainder $\mathcal R_{\xi,\mathrm m}^\mu$ is model dependent and is proportional to the leading matter equations, up to a matter superpotential. The inhomogeneous local contribution is

$$\begin{align}
\Delta\mathcal H_{\xi,\mathrm{inh}}^{[0]\mu} =\Theta_h^{[1]\mu}[\mathcal L_\xi g^{(0)}].
\end{align}$$

It vanishes for a background Killing field but has been retained here for checking the off-shell asymptotic-symmetry calculation.

## 7. Radial boundary geometry

Let $\Gamma_R$ be the timelike surface $r=R$, with tangential indices $a,b\in\{t,\phi\}$. No radial gauge is imposed, so $h_{ra}$ and $k_{ra}$ are retained.

### 7.1 Outward unit normal

The exact outward normal is

$$\begin{align}
n_\mu=N\,\delta^r_\mu, \qquad N=(g^{rr})^{-1/2}, \qquad n^\mu=Ng^{\mu r}.
\end{align}$$

Define

$$\begin{align}
a_1:=-h^{rr}, \qquad a_2:=(h^2)^{rr}-k^{rr}, \qquad g^{rr}=f+\kappa a_1+\kappa^2a_2+O(\kappa^3).
\end{align}$$

Then $N=N_0+\kappa N_1+\kappa^2N_2+O(\kappa^3)$, with

$$\begin{aligned}
N_0&=\frac1{\sqrt f},\\
N_1&=\frac{h^{rr}}{2f^{3/2}},\\
N_2&=-\frac{(h^2)^{rr}-k^{rr}}{2f^{3/2}} +\frac{3(h^{rr})^2}{8f^{5/2}}.
\end{aligned}$$

The covariant components are simply $n_{(j)\mu}=N_j\delta^r_\mu$. The contravariant coefficients are

$$\begin{aligned}
n_{(0)}^r&=\sqrt f, &n_{(0)}^a&=0,\\
n_{(1)}^r&=-\frac{h^{rr}}{2\sqrt f}, &n_{(1)}^a&=-\frac{h^{ar}}{\sqrt f},\\
n_{(2)}^r&=\frac{(h^2)^{rr}-k^{rr}}{2\sqrt f} -\frac{(h^{rr})^2}{8f^{3/2}}, &n_{(2)}^a&=\frac1{\sqrt f}\left[ (h^2)^{ar}-k^{ar}-\frac{h^{rr}h^{ar}}{2f} \right].
\end{aligned}$$

These expressions satisfy $n_\mu n^\mu=1$ through $O(\kappa^2)$ without setting $h_{ra}$ to zero.

### 7.2 Induced metric and boundary volume

The pullback metric is

$$\begin{align}
\gamma_{ab}=\gamma^{(0)}_{ab}+\kappa h_{ab}+\kappa^2k_{ab}+O(\kappa^3), \qquad \gamma^{(0)}_{ab}\mathrm dx^a\mathrm dx^b=-f\,\mathrm dt^2+r^2\mathrm d\phi^2.
\end{align}$$

Raise tangential indices with $\gamma^{(0)}$. If

$$\begin{align}
\gamma^{ab}=\bar q_{(0)}^{ab}+\kappa\bar q_{(1)}^{ab} +\kappa^2\bar q_{(2)}^{ab}+O(\kappa^3),
\end{align}$$

then

$$\begin{aligned}
\bar q_{(0)}^{ab}&=\gamma^{(0)ab},\\
\bar q_{(1)}^{ab}&=-h_{\parallel}^{ab},\\
\bar q_{(2)}^{ab}&=h_{\parallel}^a{}_ch_{\parallel}^{cb}-k_{\parallel}^{ab},
\end{aligned}$$

where $h_{\parallel}^{ab}:=\gamma^{(0)ac}\gamma^{(0)bd}h_{cd}$. Cross components $h_{ra}$ do not enter this intrinsic inverse.

Define

$$\begin{align}
h_\partial:=\gamma^{(0)ab}h_{ab}, \qquad k_\partial:=\gamma^{(0)ab}k_{ab}, \qquad h_{\partial,2}:=h_{ab}h_{cd}\gamma^{(0)ac}\gamma^{(0)bd}.
\end{align}$$

The boundary volume density is

$$\begin{align}
\sqrt{-\gamma} =r\sqrt f\left[ 1+\frac\kappa2h_\partial +\kappa^2\left( \frac12k_\partial+\frac18h_\partial^2-\frac14h_{\partial,2} \right) \right]+O(\kappa^3).
\end{align}$$

### 7.3 Extrinsic curvature

For a constant-$r$ surface, $n_a=0$ exactly, so

$$\begin{align}
K_{ab}=\nabla_a n_b=-N\Gamma^r{}_{ab}[g].
\end{align}$$

Using

$$\begin{align}
\Gamma^r{}_{ab}[g] =\Gamma^{(0)r}{}_{ab} +\kappa C_{(1)}^r{}_{ab} +\kappa^2C_{(2)}^r{}_{ab}+O(\kappa^3),
\end{align}$$

one obtains

$$\begin{aligned}
K^{(0)}_{ab} &=-N_0\Gamma^{(0)r}{}_{ab},\\
K^{(1)}_{ab} &=-N_1\Gamma^{(0)r}{}_{ab}-N_0C_{(1)}^r{}_{ab},\\
K^{(2)}_{ab} &=-N_2\Gamma^{(0)r}{}_{ab}-N_1C_{(1)}^r{}_{ab} -N_0C_{(2)}^r{}_{ab}.
\end{aligned}$$

This form automatically keeps all radial-shift contributions. For the global background,

$$
\begin{gathered}
\Gamma^{(0)r}{}_{tt}=rf,
\qquad
\Gamma^{(0)r}{}_{\phi\phi}=-rf,
\qquad
\Gamma^{(0)r}{}_{t\phi}=0,\\
K^{(0)}_{tt}=-r\sqrt f,
\qquad
K^{(0)}_{\phi\phi}=r\sqrt f,
\qquad
K^{(0)}=\frac{1+2r^2}{r\sqrt f}.
\end{gathered}
$$

For $K=\gamma^{ab}K_{ab}=K^{(0)}+\kappa K^{(1)}+\kappa^2K^{(2)}+O(\kappa^3)$,

$$\begin{aligned}
K^{(1)} &=\gamma^{(0)ab}K^{(1)}_{ab}-h_{\parallel}^{ab}K^{(0)}_{ab},\\
K^{(2)} &=\gamma^{(0)ab}K^{(2)}_{ab}-h_{\parallel}^{ab}K^{(1)}_{ab} +\left(h_{\parallel}^a{}_ch_{\parallel}^{cb}-k_{\parallel}^{ab}\right)K^{(0)}_{ab}.
\end{aligned}$$

### 7.4 Brown--York tensor coefficients

Define the unscaled Brown--York bracket

$$\begin{align}
B_{ab}:=K_{ab}-K\gamma_{ab}+\gamma_{ab} =B^{(0)}_{ab}+\kappa B^{(1)}_{ab}+\kappa^2B^{(2)}_{ab}+O(\kappa^3).
\end{align}$$

Its coefficients are

$$\begin{aligned}
B^{(0)}_{ab} &=K^{(0)}_{ab}-K^{(0)}\gamma^{(0)}_{ab}+\gamma^{(0)}_{ab},\\
B^{(1)}_{ab} &=K^{(1)}_{ab}-K^{(1)}\gamma^{(0)}_{ab} -K^{(0)}h_{ab}+h_{ab},\\
B^{(2)}_{ab} &=K^{(2)}_{ab}-K^{(2)}\gamma^{(0)}_{ab} -K^{(1)}h_{ab}-K^{(0)}k_{ab}+k_{ab}.
\end{aligned}$$

The stress tensor is $\mathcal T_{ab}=\kappa^{-2}B_{ab}$. Relative subtraction removes the full background charge, but perturbations of the corner measure and time normal multiplying $B^{(0)}_{ab}$ must still be retained.

### 7.5 Future normal and corner measure

On the $t={\rm const.}$ corner inside $\Gamma_R$, set

$$\begin{align}
\tau_a=-M\delta_a^t, \qquad M=(-\gamma^{tt})^{-1/2}, \qquad \tau^a=-M\gamma^{at}.
\end{align}$$

Let

$$\begin{align}
F_n:=-\bar q_{(n)}^{tt}, \qquad -\gamma^{tt}=F_0+\kappa F_1+\kappa^2F_2+O(\kappa^3).
\end{align}$$

Then $M=M_0+\kappa M_1+\kappa^2M_2+O(\kappa^3)$, where

$$\begin{aligned}
M_0&=F_0^{-1/2},\\
M_1&=-\frac{M_0F_1}{2F_0},\\
M_2&=M_0\left(-\frac{F_2}{2F_0}+\frac{3F_1^2}{8F_0^2}\right).
\end{aligned}$$

The contravariant coefficients are the convolution

$$\begin{align}
\tau_{(n)}^a=-\sum_{r=0}^nM_r\bar q_{(n-r)}^{at}, \qquad n=0,1,2.
\end{align}$$

In particular, $\tau_{(0)}^t=f^{-1/2}$ and $\tau_{(0)}^\phi=0$. The corner line element has

$$\begin{align}
\sqrt\sigma =r\left(1+\kappa s_1+\kappa^2s_2\right)+O(\kappa^3), \qquad s_1=\frac{h_{\phi\phi}}{2r^2}, \qquad s_2=\frac{k_{\phi\phi}}{2r^2}-\frac{h_{\phi\phi}^2}{8r^4}.
\end{align}$$

### 7.6 Explicit Brown--York charge coefficients

For fixed contravariant $\xi^a$, define

$$\begin{align}
\sqrt\sigma\,\tau^a\xi^bB_{ab} =\mathcal Q_0+\kappa\mathcal Q_1+\kappa^2\mathcal Q_2+O(\kappa^3).
\end{align}$$

The three coefficients are

$$\begin{aligned}
\mathcal Q_0 &=r\,\tau_{(0)}^a\xi^bB^{(0)}_{ab},\\
\mathcal Q_1 &=r\left[ \tau_{(0)}^a\xi^bB^{(1)}_{ab} +\tau_{(1)}^a\xi^bB^{(0)}_{ab} +s_1\tau_{(0)}^a\xi^bB^{(0)}_{ab} \right],\\
\mathcal Q_2 &=r\bigg[ \tau_{(0)}^a\xi^bB^{(2)}_{ab} +\tau_{(1)}^a\xi^bB^{(1)}_{ab} +\tau_{(2)}^a\xi^bB^{(0)}_{ab}\\
&\qquad+s_1\left( \tau_{(0)}^a\xi^bB^{(1)}_{ab} +\tau_{(1)}^a\xi^bB^{(0)}_{ab} \right) +s_2\tau_{(0)}^a\xi^bB^{(0)}_{ab}
\bigg].
\end{aligned}$$

After subtracting the global AdS charge,

$$\begin{aligned}
H_{\xi,T}^{[-1]}&=-\lim_{R\to\infty}\int_0^{2\pi}\!\mathrm d\phi\,\mathcal Q_1,\\
H_{\xi,T}^{[0]}&=-\lim_{R\to\infty}\int_0^{2\pi}\!\mathrm d\phi\,\mathcal Q_2.
\end{aligned}$$

These formulas make the measure and normal corrections at finite order explicit.

## 8. Corner potential and boundary-current coefficients

### 8.1 Projector coefficients

For use in the covariant boundary expressions, define the full projector

$$\begin{align}
\Pi^{\mu\nu}=g^{\mu\nu}-n^\mu n^\nu, \qquad \Pi^\mu{}_{\nu}=\delta^\mu{}_{\nu}-n^\mu n_\nu.
\end{align}$$

If $\Pi=\sum_{n\geq0}\kappa^n\Pi_{(n)}$, then

$$\begin{aligned}
\Pi_{(n)}^{\mu\nu} &=q_{(n)}^{\mu\nu} -\sum_{r=0}^nn_{(r)}^\mu n_{(n-r)}^\nu,\\
\Pi_{(n)}^\mu{}_{\nu} &=\delta_{n0}\delta^\mu{}_{\nu} -\sum_{r=0}^nn_{(r)}^\mu n_{(n-r)\nu}.
\end{aligned}$$

For tangential components, $\Pi_{(n)}^{ab}=\bar q_{(n)}^{ab}$.

### 8.2 Corner potential

Suppressing the boundary volume-form factor, write

$$\begin{align}
\mathfrak C_\Gamma^\mu[\delta g] :=-\frac1{2\kappa^2}\Pi^{\mu\nu}n^\rho\delta g_{\nu\rho} =\kappa^{-1}c^{[-1]\mu}+c^{[0]\mu} +\kappa c^{[1]\mu}+O(\kappa^2).
\end{align}$$

The explicit coefficients are

$$\begin{aligned}
c^{[-1]\mu} &=-\frac12\Pi_{(0)}^{\mu\nu}n_{(0)}^\rho\delta h_{\nu\rho},\\
c^{[0]\mu} &=-\frac12\bigg[ \Pi_{(0)}^{\mu\nu}n_{(0)}^\rho\delta k_{\nu\rho} +\Pi_{(0)}^{\mu\nu}n_{(1)}^\rho\delta h_{\nu\rho} +\Pi_{(1)}^{\mu\nu}n_{(0)}^\rho\delta h_{\nu\rho} \bigg],\\
c^{[1]\mu} &=-\frac12\bigg[ \Pi_{(0)}^{\mu\nu}n_{(0)}^\rho\delta p_{\nu\rho} +\Pi_{(0)}^{\mu\nu}n_{(1)}^\rho\delta k_{\nu\rho} +\Pi_{(0)}^{\mu\nu}n_{(2)}^\rho\delta h_{\nu\rho}\\
&\qquad+\Pi_{(1)}^{\mu\nu}n_{(0)}^\rho\delta k_{\nu\rho} +\Pi_{(1)}^{\mu\nu}n_{(1)}^\rho\delta h_{\nu\rho} +\Pi_{(2)}^{\mu\nu}n_{(0)}^\rho\delta h_{\nu\rho}
\bigg].
\end{aligned}$$

The coefficients of the actual one-form $\boldsymbol C_\Gamma$ are obtained by the additional convolution with the expansion of $\epsilon_\Gamma$. For $X_\xi\mathbin{\cdot}\boldsymbol C_\Gamma$, substitute the exact variation $\delta g=\mathcal L_\xi g$ before extracting powers of $\kappa$; this is what retains the order-lowered terms from $X_\xi^{[-1]}$.

### 8.3 Boundary descent, Einstein--Hilbert, and Brown--York currents

To expand the exact boundary currents, introduce

$$\begin{align}
\chi:=n_\mu\xi^\mu=\sum_{n\geq0}\kappa^n\chi_n, \qquad \chi_n=n_{(n)\mu}\xi^\mu,
\end{align}$$

and

$$\begin{align}
Z_{\rho\nu}:=\nabla_\rho\xi_\nu =\sum_{n\geq0}\kappa^nZ_{(n)\rho\nu}.
\end{align}$$

For fixed contravariant $\xi^\mu$,

$$\begin{aligned}
Z_{(0)\rho\nu} &=g^{(0)}_{\nu\lambda}\nabla^{(0)}_\rho\xi^\lambda,\\
Z_{(1)\rho\nu} &=h_{\nu\lambda}\nabla^{(0)}_\rho\xi^\lambda +g^{(0)}_{\nu\lambda}C_{(1)}^\lambda{}_{\rho\sigma}\xi^\sigma,\\
Z_{(2)\rho\nu} &=k_{\nu\lambda}\nabla^{(0)}_\rho\xi^\lambda +h_{\nu\lambda}C_{(1)}^\lambda{}_{\rho\sigma}\xi^\sigma +g^{(0)}_{\nu\lambda}C_{(2)}^\lambda{}_{\rho\sigma}\xi^\sigma.
\end{aligned}$$

Expand the mixed extrinsic curvature as $K^\mu{}_{\nu}=\sum_n\kappa^nK_{(n)}^\mu{}_{\nu}$ and its trace as $K=\sum_n\kappa^nK^{(n)}$. Define

$$\begin{aligned}
d_{(n)}^\mu &:=\sum_{r=0}^n\Pi_{(r)}^{\mu\nu}\partial_\nu\chi_{n-r},\\
z_{(n)}^\mu &:=\sum_{r+s+t=n}\Pi_{(r)}^{\mu\nu}n_{(s)}^\rho Z_{(t)\rho\nu},\\
b_{(n)}^\mu &:=\sum_{r=0}^n\left(K^{(r)}-\delta_{r0}\right) \Pi_{(n-r)}^\mu{}_{\nu}\xi^\nu.
\end{aligned}$$

These are respectively the coefficients of $D^\mu(n\mathbin{\cdot}\xi)$, $\Pi^{\mu\nu}n^\rho\nabla_\rho\xi_\nu$, and $(K-1)\Pi^\mu{}_{\nu}\xi^\nu$.

Now write

$$\begin{align}
\mathcal J_{\xi,A}^\mu =\frac1{\kappa^2}\sum_{n\geq0}\kappa^n j_{A,(n)}^\mu, \qquad A\in\{\mathrm{EH},\Gamma,T\}.
\end{align}$$

The three coefficient dictionaries are

$$\begin{aligned}
j_{\Gamma,(n)}^\mu &=\frac12\left[ -K_{(n)}^\mu{}_{\nu}\xi^\nu +2b_{(n)}^\mu-d_{(n)}^\mu+z_{(n)}^\mu \right],\\
j_{\mathrm{EH},(n)}^\mu &=\frac12\left[ -K_{(n)}^\mu{}_{\nu}\xi^\nu +d_{(n)}^\mu-z_{(n)}^\mu \right],\\
j_{T,(n)}^\mu &=-K_{(n)}^\mu{}_{\nu}\xi^\nu+b_{(n)}^\mu.
\end{aligned}$$

Hence the exact full-field identity holds separately at every order:

$$\begin{align}
j_{\mathrm{EH},(n)}^\mu+j_{\Gamma,(n)}^\mu =j_{T,(n)}^\mu.
\end{align}$$

The vector-current coefficients above must still be convolved with the boundary volume form when integrated. The explicit Brown--York charge formulas in Sec. 7.6 already perform the corresponding corner-measure convolution.

## 9. Constraint reduction and matching coefficients

Only in this section impose

$$\begin{align}
\mathcal E^{(1)}_{\mu\nu}[h]=0, \qquad \mathcal E^{(1)}_{\mu\nu}[k] +\mathcal E^{(2)}_{\mu\nu}[h,h]=T_{\mu\nu}, \qquad E_A^{(0)}=0,
\end{align}$$

and take $\xi$ to be a background Killing field. The second equation is

$$\begin{align}
\mathcal E^{(1)}_{\mu\nu}[k] =T_{(h)\mu\nu}+T_{\mu\nu}.
\end{align}$$

The useful divergence identity is

$$\begin{align}
\xi_\nu\mathcal E^{(1)\mu\nu}[k] =\nabla^{(0)}_\nu\widehat S_{\xi,k}^{\mu\nu},
\end{align}$$

where

$$\begin{aligned}
\widehat S_{\xi,k}^{\mu\nu} ={}&\xi^{[\mu}\nabla^{(0)\nu]}k -\xi^{[\mu}\nabla^{(0)}_\rho k^{\nu]\rho} +\xi_\rho\nabla^{(0)[\mu}k^{\nu]\rho}\\
&+\frac12k\nabla^{(0)[\mu}\xi^{\nu]} -k^{\rho[\mu}\nabla^{(0)}_\rho\xi^{\nu]}.
\end{aligned}$$

Adding $\widehat S_{\xi,k}$ to $S_{\xi,k,0}$ gives the $S_{\xi,k}$ displayed in Sec. 6.3. The on-constraint bulk coefficients are

$$\begin{aligned}
H_{\xi,\mathrm{bulk}}^{[-1]} &=\lim_{R\to\infty}\int_{C_R}\!\epsilon_C^{(0)}
\,\tau_\mu^{(0)}n_\nu^{(0)}S_\xi^{[-1]\nu\mu},\\
H_{\xi,\mathrm{bulk}}^{[0]} &=\lim_{R\to\infty}\int_{C_R}\!\epsilon_C^{(0)}
\,\tau_\mu^{(0)}n_\nu^{(0)} \left(S_{\xi,h}^{\nu\mu}+S_{\xi,k}^{\nu\mu}\right).
\end{aligned}$$

The boundary coefficients are the $\mathcal Q_1$ and $\mathcal Q_2$ integrals of Sec. 7.6. The coefficientwise current identity of Sec. 8.3 then gives

$$\begin{align}
H_\xi^{[-1]}=H_{\xi,T}^{[-1]}, \qquad H_\xi^{[0]}=H_{\xi,T}^{[0]}.
\end{align}$$

## 10. Suggested manual-check order

For a direct calculation with arbitrary $h$, $k$, and $p$, the shortest dependency chain is:

1. Compute $q_{(n)}$, $v_n$, and $P_{(n)}$ from Sec. 2.
2. Compute $C_{(1)}$, $C_{(2)}$, and $C_{(3)}$ from Sec. 3.1.
3. Build $R^{(n)}_{\mu\nu}$, $\mathcal R^{(n)}$, and $\mathcal E^{[n]}_{\mu\nu}$ from Secs. 3.2--3.4.
4. Check the action coefficients $\ell_1$, $\ell_2$, and $\ell_3$ before varying them.
5. Build $\delta C_{(n)}$ and substitute them into the three $\Theta$ coefficients.
6. For the finite inhomogeneous term, set $\delta k=\delta p=0$ only after the general $\Theta^{[1]}$ expression has been assembled.
7. At $r=R$, compute $N_n$, $K^{(n)}_{ab}$, $B^{(n)}_{ab}$, $\tau_{(n)}^a$, and $\mathcal Q_n$ in that order.
8. Impose the Einstein and matter constraints only after the off-shell currents have been obtained.

The companion “formula verification ledger.md” records which identities were checked symbolically and which statements remain conditional on the general matter assumptions.
