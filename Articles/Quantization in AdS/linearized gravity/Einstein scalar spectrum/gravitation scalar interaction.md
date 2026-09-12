# Minimally Coupled Gravity and a Scalar in Global AdS3

The aim is to obtain the one-particle and two-particle spectrum using canonical quantization. Here we keep the equations for $h,k,\phi^{(0)},\phi^{(1)}$, together with the action and pre-symplectic structure through $O(\kappa)$.

## Action and Asymptotic Boundary Conditions

Set the AdS radius to one and use signature $(-,+,+)$, $\kappa^2=16\pi G>0$, and $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$. For a real minimally coupled scalar, the action is

$$\begin{align}
S_R[g,\phi] &=\frac{1}{\kappa^2}\int_{M_R}d^3x\sqrt{-g}(R[g]+2) -\frac12\int_{M_R}d^3x\sqrt{-g}\left(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+m^2\phi^2\right)\\
&\quad+\frac{2}{\kappa^2}\int_{\Gamma_R}d^2x\sqrt{-\gamma}(K-1), & S_{\rm ren}&=\lim_{R\to\infty}S_R.
\end{align}$$

Here $M_R=\{r\leq R\}$, $\Gamma_R$ is its timelike radial boundary, $n^\mu$ is the outward unit spacelike normal, $\gamma_{\mu\nu}=g_{\mu\nu}-n_\mu n_\nu$, and $K_{\mu\nu}=\gamma_\mu{}^\rho\gamma_\nu{}^\sigma\nabla_\rho n_\sigma$. The boundary action contains GHY and the AdS counterterm. Initial/final Cauchy-surface variations are retained as canonical endpoint terms.

Use global coordinates $(t,r,\varphi)$, with $t\in\mathbb R$, $r\geq0$ and $\varphi\sim\varphi+2\pi$:

$$\begin{align}
g^{(0)}_{\mu\nu}dx^\mu dx^\nu &=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\varphi^2.
\end{align}$$

Fix the boundary cylinder representative to $-dt^2+d\varphi^2$. The metric perturbations and allowed variations obey Brown–Henneaux falloffs,

$$\begin{align}
h_{tt},h_{t\varphi},h_{\varphi\varphi}&=O(1),& h_{rr}&=O(r^{-4}),& h_{rt},h_{r\varphi}&=O(r^{-3}),
\end{align}$$

and likewise for $k_{\mu\nu}$. Require smoothness at the centre in regular coordinates. For the scalar, choose the source-free standard boundary condition,

$$\begin{align}
m^2&>-1,& \Delta&=1+\sqrt{1+m^2}>1,\\
\phi&=r^{-(2-\Delta)}\alpha(t,\varphi)+r^{-\Delta}\beta(t,\varphi) +\text{subleading terms},& \alpha&=\delta\alpha=0.
\end{align}$$

Both scalar coefficients below have the fast falloff and its differentiated falloffs. The scalar action is finite and its boundary variation is $O(R^{2-2\Delta})\to0$, so no scalar boundary term is required in this sector. The boundary prescription here is restricted to these conditions.

## Field and Action Expansion

Expand

$$\begin{align}
g_{\mu\nu}&=g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu} +\kappa^2k_{\mu\nu}+O(\kappa^3),\\
\phi&=\phi^{(0)}+\kappa\phi^{(1)}+O(\kappa^2).
\end{align}$$

All perturbative indices are raised with $g^{(0)}$; $\nabla^{(0)}$ is its connection, $h=g^{(0)\mu\nu}h_{\mu\nu}$ and $k=g^{(0)\mu\nu}k_{\mu\nu}$. The leading scalar $\phi^{(0)}$ is dynamical, and the vacuum for the eventual particle construction is $(g^{(0)},0)$.

Define the gravitational functional without its coupling prefactor,

$$\begin{align}
I[g]&=\lim_{R\to\infty}\left[ \int_{M_R}d^3x\sqrt{-g}(R[g]+2) +2\int_{\Gamma_R}d^2x\sqrt{-\gamma}(K-1)\right],\\
I_n[H]&=\left.\frac1{n!}\frac{d^n}{dz^n}I[g^{(0)}+zH]\right|_{z=0}, \qquad n=2,3.
\end{align}$$

The derivatives include the boundary action and are taken at finite cutoff before the limit. Subtract the background constant and the linear gravitational endpoint term to define $S_{\rm dyn}$. For the unexpanded field $H=(g-g^{(0)})/\kappa$, the retained action is

$$\begin{align}
S_{\rm dyn}[H,\phi] &=I_2[H]-\frac12\int_Md^3x\sqrt{-g^{(0)}} \left((\nabla^{(0)}\phi)^2+m^2\phi^2\right)\\
&\quad+\kappa\left(I_3[H] +\frac12\int_Md^3x\sqrt{-g^{(0)}}H_{\mu\nu}T_{(0)}^{\mu\nu}[\phi]\right) +O(\kappa^2),\\
T_{(0)\mu\nu}[\phi] &=\partial_\mu\phi\partial_\nu\phi -\frac12g^{(0)}_{\mu\nu}\left((\nabla^{(0)}\phi)^2+m^2\phi^2\right).
\end{align}$$

The cubic Einstein term $I_3$ is needed at this order because the gravitational action carries $1/\kappa^2$.

Substituting $H=h+\kappa k+O(\kappa^2)$ and the scalar expansion gives

$$\begin{align}
S_{\rm dyn}&=S^{(0)}+\kappa S^{(1)}+O(\kappa^2),\\
S^{(0)} &=I_2[h]-\frac12\int_Md^3x\sqrt{-g^{(0)}} \left((\nabla^{(0)}\phi^{(0)})^2+m^2(\phi^{(0)})^2\right),\\
S^{(1)} &=\mathrm DI_2[h](k)+I_3[h]\\
&\quad-\int_Md^3x\sqrt{-g^{(0)}} \left(\nabla^{(0)}\phi^{(0)}\cdot\nabla^{(0)}\phi^{(1)} +m^2\phi^{(0)}\phi^{(1)}\right)\\
&\quad+\frac12\int_Md^3x\sqrt{-g^{(0)}}
h_{\mu\nu}T_{(0)}^{\mu\nu}[\phi^{(0)}].
\end{align}$$

Here $\mathrm DI_2[h](k)=\left.\partial_sI_2[h+sk]\right|_{s=0}$, including its endpoint terms. The equations are obtained by varying the action in the unexpanded fields and then substituting their series.

## Equations of Motion

Define the Einstein coefficients by

$$\begin{align}
\mathcal E_{\mu\nu}[g]&=R_{\mu\nu}[g]-\frac12g_{\mu\nu}R[g]-g_{\mu\nu},\\
\mathcal E_{\mu\nu}[g^{(0)}+zh] &=z\mathcal E^{(1)}_{\mu\nu}[h] +z^2\mathcal E^{(2)}_{\mu\nu}[h,h]+O(z^3),\\
\Box_0&=-\frac1{1+r^2}\partial_t^2 +\frac1r\partial_r\left(r(1+r^2)\partial_r\right) +\frac1{r^2}\partial_\varphi^2.
\end{align}$$

There is no factorial hidden in $\mathcal E^{(2)}$. The retained equations are

$$\begin{align}
(\Box_0-m^2)\phi^{(0)}&=0,\\
(\Box_0-m^2)\phi^{(1)} &=h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu\phi^{(0)} +\left(\nabla^{(0)}_\mu h^{\mu\nu} -\frac12\nabla^{(0)\nu}h\right)\partial_\nu\phi^{(0)},\\
O(\kappa):\qquad \mathcal E^{(1)}_{\mu\nu}[h]&=0,\\
O(\kappa^2):\qquad \mathcal E^{(1)}_{\mu\nu}[k]+\mathcal E^{(2)}_{\mu\nu}[h,h] &=\frac12T_{(0)\mu\nu}[\phi^{(0)}].
\end{align}$$

Thus the scalar backreaction first appears in $k_{\mu\nu}$. No TT condition is imposed on this sourced coefficient.

## Pre-Symplectic Potential and Form

### Boundary and Endpoint Convention

Choose orientation $dt\wedge dr\wedge d\varphi$ and$(d^2x)_\mu=\iota_{\partial_\mu}(dt\wedge dr\wedge d\varphi)$. The exact bulk potential and radial corner term are

$$\begin{align}
\boldsymbol\Theta&=\Theta^\mu(d^2x)_\mu,\\
\Theta^\mu&=\frac{\sqrt{-g}}{\kappa^2} \left(g^{\alpha\beta}\delta\Gamma^\mu_{\alpha\beta} -g^{\mu\alpha}\delta\Gamma^\beta_{\alpha\beta}\right) -\sqrt{-g}\,g^{\mu\nu}\partial_\nu\phi\,\delta\phi,\\
\boldsymbol C&=\iota_c\epsilon_\Gamma,& c^\mu&=-\frac1{\kappa^2}\gamma^{\mu\nu}n^\alpha\delta g_{\nu\alpha}.
\end{align}$$

With the stated boundary conditions, the non-corner terms in $(\boldsymbol\Theta+\delta\boldsymbol\ell)|_\Gamma$ vanish in the asymptotic limit. Following [Harlow–Wu, section 3.5](https://arxiv.org/html/1906.08616v3#S3.SS5),

$$\begin{align}
\theta_\Sigma&=\lim_{R\to\infty}\left[ \int_{\Sigma_R}\boldsymbol\Theta-\int_{\partial\Sigma_R}\boldsymbol C\right],\\
\omega_\Sigma&=\delta\theta_\Sigma.
\end{align}$$

For the explicit expansion below, choose $g_{ra}=\delta g_{ra}=0$ in a boundary collar, so the pullbacks of $\boldsymbol C$ and $\delta\boldsymbol C$ vanish there. This fixes the mixed radial components near the boundary; it does not quotient physical Brown–Henneaux transformations.

Use the bilinear contraction

$$\begin{align}
\mathcal T^\mu(p,b)&=p^{\alpha\beta}b^\mu_{\alpha\beta} -p^{\mu\alpha}b^\beta_{\alpha\beta}.
\end{align}$$

We choose the finite potential representative $\widehat\Theta^\mu=\Theta^\mu-\delta B^\mu$, where

$$\begin{align}
B^\mu&=\frac{\sqrt{-g^{(0)}}}{\kappa^2} \mathcal T^\mu\left(g^{(0)-1},\Gamma-\Gamma^{(0)}\right).
\end{align}$$

This is an endpoint convention: $\delta^2B^\mu=0$, so it leaves the pre-symplectic form unchanged.

### Retained Coefficients

The coefficients needed for the first-order potential and form are

$$\begin{align}
p_1^{\mu\nu} &=\frac h2g^{(0)\mu\nu}-h^{\mu\nu},\\
p_2^{\mu\nu} &=\left(\frac k2+\frac{h^2}{8}-\frac{h_{\rho\sigma}h^{\rho\sigma}}4\right) g^{(0)\mu\nu}-k^{\mu\nu}-\frac h2h^{\mu\nu}+h^\mu{}_\rho h^{\rho\nu},\\
c_1{}^\rho_{\mu\nu}[s] &=\frac12g^{(0)\rho\sigma} \left(\nabla^{(0)}_\mu s_{\nu\sigma} +\nabla^{(0)}_\nu s_{\mu\sigma} -\nabla^{(0)}_\sigma s_{\mu\nu}\right),\\
b_1{}^\rho_{\mu\nu}&=c_1{}^\rho_{\mu\nu}[h],\\
b_2{}^\rho_{\mu\nu}&=c_1{}^\rho_{\mu\nu}[k] -h^\rho{}_\sigma c_1{}^\sigma_{\mu\nu}[h],\\
J_0^\mu&=\nabla^{(0)\mu}\phi^{(0)},\\
J_1^\mu&=\nabla^{(0)\mu}\phi^{(1)} +p_1^{\mu\nu}\partial_\nu\phi^{(0)}.
\end{align}$$

Here $p_1,p_2$ are the coefficients of the inverse metric density $\sqrt{-g}\,g^{\mu\nu}/\sqrt{-g^{(0)}}$, and $b_1,b_2$ those of $\Gamma-\Gamma^{(0)}$, at orders $\kappa,\kappa^2$ respectively.

The potential through first order is

$$\begin{align}
\widehat\Theta^\mu &=\sqrt{-g^{(0)}}\left(\vartheta_0^\mu+\kappa\vartheta_1^\mu\right) +O(\kappa^2),\\
\vartheta_0^\mu &=\mathcal T^\mu(p_1,\delta b_1)-J_0^\mu\delta\phi^{(0)},\\
\vartheta_1^\mu &=\mathcal T^\mu(p_1,\delta b_2)+\mathcal T^\mu(p_2,\delta b_1) -J_0^\mu\delta\phi^{(1)}-J_1^\mu\delta\phi^{(0)}.
\end{align}$$

Taking a field-space derivative gives

$$\begin{align}
\delta\widehat\Theta^\mu &=\sqrt{-g^{(0)}}\left(w_0^\mu+\kappa w_1^\mu\right)+O(\kappa^2),\\
w_0^\mu &=\mathcal T^\mu(\delta p_1\wedge\delta b_1) -\delta J_0^\mu\wedge\delta\phi^{(0)},\\
w_1^\mu &=\mathcal T^\mu(\delta p_1\wedge\delta b_2) +\mathcal T^\mu(\delta p_2\wedge\delta b_1) -\delta J_0^\mu\wedge\delta\phi^{(1)} -\delta J_1^\mu\wedge\delta\phi^{(0)}.
\end{align}$$

The wedge contraction means $\mathcal T^\mu(\delta p\wedge\delta b)=\delta p^{\alpha\beta}\wedge\delta b^\mu_{\alpha\beta}-\delta p^{\mu\alpha}\wedge\delta b^\beta_{\alpha\beta}$. On the boundary gauge slice above,

$$\begin{align}
\widehat\theta_\Sigma &=\widehat\theta_\Sigma^{(0)}+\kappa\widehat\theta_\Sigma^{(1)}+O(\kappa^2),& \widehat\theta_\Sigma^{(j)} &=\lim_{R\to\infty}\int_{\Sigma_R}(d^2x)_\mu \sqrt{-g^{(0)}}\,\vartheta_j^\mu,\\
\omega_\Sigma &=\omega_\Sigma^{(0)}+\kappa\omega_\Sigma^{(1)}+O(\kappa^2),& \omega_\Sigma^{(j)} &=\lim_{R\to\infty}\int_{\Sigma_R}(d^2x)_\mu \sqrt{-g^{(0)}}\,w_j^\mu,\qquad j=0,1.
\end{align}$$

The variations act on $k,\phi^{(1)}$ as functions of the chosen solution data once the sourced equations and their homogeneous data are fixed. The mixed scalar–metric contributions through $\delta p_1$ are retained. The form is conserved for admissible solutions and tangent variations and remains pre-symplectic until proper gauge degeneracies are quotiented.

## Perturbation Theory on the Solution Space

### Free Modes

We first choose the free solution amplitudes as coordinates, then solve the sourced equations for $k$ and $\phi^{(1)}$ as functions of those amplitudes. Put $f(r)=1+r^2$. The regular, normalizable scalar modes are

$$\begin{align}
u_{nj}(t,r,\varphi)&=N_{nj}e^{-iE_{nj}t+ij\varphi}
r^{|j|}f^{-(\Delta+|j|)/2}
P_n^{(\Delta-1,|j|)}\!\left(\frac{r^2-1}{r^2+1}\right),\\
E_{nj}&=\Delta+2n+|j|,&
N_{nj}^2&=\frac{n!\,\Gamma(n+\Delta+|j|)}
{2\pi\,\Gamma(n+\Delta)\Gamma(n+|j|+1)},\\
\phi^{(0)}&=\sum_{n\geq0,\ j\in\mathbb Z}
\left(b_{nj}u_{nj}+b_{nj}^*u_{nj}^*\right).
\end{align}$$

Here $P_n^{(\alpha,\beta)}$ is a Jacobi polynomial. The normalization follows from Jacobi orthogonality with the Klein–Gordon product
$i\int dr\,d\varphi\,(r/f)(u^*\partial_t v-v\partial_tu^*)$.

For the gravitational modes, use the smooth Brown–Henneaux vacuum-orbit representatives $\zeta_{A,n}$ and their normalization in [higher perturbations of linearized gravity modes](../higher%20perturbations%20of%20linearized%20gravity%20modes.md):

$$\begin{align}
\zeta&=\sum_{A=L,R}\sum_{n\geq0}
\left(a_{A,n}\zeta_{A,n}+a_{A,n}^*\zeta_{A,n}^*\right),&
h&=\mathcal L_\zeta g^{(0)}.
\end{align}$$

The descendant index here starts at $n=0$, with frequency $n+2$. Work initially with finite mode superpositions. This describes the smooth vacuum orbit near global AdS, excluding independent conical-defect or black-hole sectors. A Brown–Henneaux vector with nonzero boundary charge is not a proper gauge degeneracy, even though its bulk metric perturbation is a Lie derivative.

### Next-Order Solutions from Covariance

In this sector, covariance solves the vacuum-driven terms directly:

$$\begin{align}
(\Box_0-m^2)\mathcal L_\zeta\phi^{(0)}
&=-\delta_h\Box\,\phi^{(0)},\\
\mathcal E^{(1)}\!\left[\frac12\mathcal L_\zeta^2g^{(0)}\right]
+\mathcal E^{(2)}[h,h]&=0.
\end{align}$$

Consequently, a solution of the retained equations is

$$\begin{align}
\phi^{(1)}&=\mathcal L_\zeta\phi^{(0)},\\
k&=\frac12\mathcal L_\zeta^2g^{(0)}+k_\phi,&
\mathcal E^{(1)}[k_\phi]&=\frac12T_{(0)}[\phi^{(0)}].
\end{align}$$

Additional homogeneous solutions may be added to $\phi^{(1)}$ and $k$. We set their independent amplitudes to zero, assigning free homogeneous data to the leading amplitudes $a,b$. This is a coordinate convention on the perturbative solution space. If instead $\phi^{(1)}$ must have zero Cauchy data at a specified time, add the free scalar solution that cancels the Cauchy data of $\mathcal L_\zeta\phi^{(0)}$. The metric initial data must still satisfy the matter constraints.

For finite harmonic mode sums, $\mathcal L_\zeta\phi^{(0)}$ supplies a bounded particular solution. Thus resonant projections of this specific scalar source vanish when the regular, source-free radial boundary conditions are imposed; one should use the covariance identity before dividing by mode-frequency denominators. This observation does not determine an interacting energy shift.

The remaining calculation is the matter response $k_\phi$, which cannot in general be represented by a vacuum diffeomorphism. Before inserting these solutions into the explicit symplectic formulas above, choose representatives satisfying the stated radial collar gauge, or retain the corner term for the original representatives.

### Circularly Symmetric Scalar Backreaction

For any circular free scalar $\phi^{(0)}(t,r)$, use polar areal gauge for the matter response:

$$\begin{align}
(k_\phi)_{tt}&=M+2fD,&
(k_\phi)_{rr}&=\frac{M}{f^2},&
(k_\phi)_{tr}&=(k_\phi)_{\mu\varphi}=0.
\end{align}$$

The independent Einstein constraints become

$$\begin{align}
\partial_r M&=\frac r2\left[
\frac{(\partial_t\phi^{(0)})^2}{f}
+f(\partial_r\phi^{(0)})^2+m^2(\phi^{(0)})^2\right],\\
\partial_r D&=-\frac r2\left[
(\partial_r\phi^{(0)})^2+\frac{(\partial_t\phi^{(0)})^2}{f^2}\right],\\
\partial_t M&=rf\,\partial_t\phi^{(0)}\partial_r\phi^{(0)}.
\end{align}$$

Regularity fixes $M(t,0)=0$; keeping $t$ as the prescribed boundary time fixes $D(t,\infty)=0$. Therefore

$$\begin{align}
M(t,r)&=\frac12\int_0^r ds\,s\left[
\frac{(\partial_t\phi^{(0)}(t,s))^2}{1+s^2}
+(1+s^2)(\partial_s\phi^{(0)}(t,s))^2
+m^2(\phi^{(0)}(t,s))^2\right],\\
D(t,r)&=\frac12\int_r^\infty ds\,s\left[
(\partial_s\phi^{(0)}(t,s))^2
+\frac{(\partial_t\phi^{(0)}(t,s))^2}{(1+s^2)^2}\right].
\end{align}$$

The free Klein–Gordon equation implies
$\partial_t(\partial_rM)=\partial_r(rf\,\partial_t\phi^{(0)}\partial_r\phi^{(0)})$,
so the momentum constraint follows with the regular-center condition. The remaining angular Einstein equation follows from stress conservation and the linearized Bianchi identity. These integrals include all cross terms in a circular scalar mode superposition.

This use of radial constraints parallels the massless circular Einstein–scalar system of [Bizoń and Jałmużna](https://arxiv.org/html/1306.0317); the expressions here retain our mass term, coupling normalization, and boundary-time convention.

### Explicit Lowest-Mode Solution

For the real lowest scalar mode, take

$$\begin{align}
\phi^{(0)}&=A f^{-\Delta/2}\cos(\Delta t),&
m^2&=\Delta(\Delta-2),\qquad \Delta>1.
\end{align}$$

The radial integrals give

$$\begin{align}
M&=\frac{A^2\Delta}{4}
\left[1-f^{1-\Delta}-r^2f^{-\Delta}\cos(2\Delta t)\right],\\
D&=\frac{A^2\Delta}{4}f^{-\Delta}\cos^2(\Delta t)
-\frac{A^2\Delta^2}{4(\Delta+1)}f^{-\Delta-1}\cos(2\Delta t),\\
(k_\phi)_{tt}&=\frac{A^2\Delta}{4}
\left[1-\frac{\Delta-1}{\Delta+1}f^{-\Delta}\cos(2\Delta t)\right],\\
(k_\phi)_{rr}&=\frac{A^2\Delta}{4f^2}
\left[1-f^{1-\Delta}-r^2f^{-\Delta}\cos(2\Delta t)\right].
\end{align}$$

This is regular at the center and obeys Brown–Henneaux falloffs:
$(k_\phi)_{tt}=O(1)$ and $(k_\phi)_{rr}=O(r^{-4})$.
Moreover $M(t,\infty)=A^2\Delta/4$ is constant and $D(t,\infty)=0$.
The free scalar energy is $H_\phi^{(0)}=2\pi M(t,\infty)=\pi A^2\Delta/2$; this is a classical energy, not a quantum spectral correction.

With $h=0$, our homogeneous-data convention gives $\phi^{(1)}=0$ while $k=k_\phi\neq0$. Arbitrary vacuum-graviton mode data can be added through the covariance formulas above, at the same retained orders.

## General Response in de Donder Gauge

For generic $\Delta>1$, with $\Delta\ne(1+\sqrt5)/2$, the [independent accessibility proof](de%20Donder%20gauge%20accessibility.md) gives the stated finite-time on-shell construction within the differentiable no-log expansion class. The exceptional-$\Delta$ limit remains deferred.

Use the [Einstein response kernel](Einstein%20response%20in%20de%20Donder%20gauge.md) to write the matter correction as

$$\begin{align}
q_{\mu\nu}&=(k_\phi)_{\mu\nu}
=\mathcal B_{\mu\nu}[\phi^{(0)},\phi^{(0)}],\\
\mathcal B_{\mu\nu}[u,v](x)
&=\frac12\int dV_{x'}\,
G_{\mu\nu}{}^{\rho\sigma}(x,x')T_{\rho\sigma}[u,v](x'),\\
T_{\rho\sigma}[u,v]
&=\nabla^{(0)}_{(\rho}u\,\nabla^{(0)}_{\sigma)}v
-\frac12g^{(0)}_{\rho\sigma}
\left(\nabla^{(0)}u\cdot\nabla^{(0)}v+m^2uv\right).
\end{align}$$

For an admissible conserved source $S$, the kernel is normalized by $\mathcal E^{(1)}[GS]=S$ and $C[GS]=0$. The [explicit kernel calculation](Einstein%20response%20kernel%20construction.md) supplies the auxiliary Euclidean coefficients. For a finite scalar-mode set, take $G=G_{\mathcal V}$ from the [scalar-source prescription](Einstein%20scalar%20response%20prescription.md): an explicit static seed and isometry recursion treat opposite-frequency pairs, a conserved Abel prescription treats same-sign pairs, and a finite source Gram matrix fixes the kernel's action on their real span $\mathcal V$. Its solutions obey the stated no-log boundary conditions and all Einstein constraints in the analytic domain specified there. Initial metric data are obtained by restricting these solutions, rather than set to zero. This does not assert a universal retarded convolution on arbitrary eternal histories.

The expression above uses our existing convention of assigning independent free data to $a,b$ and adding no independent higher-order homogeneous amplitudes. Pure-gauge homogeneous terms can be removed by proper residual transformations; physical boundary gravitons cannot. Hence writing $q^{\mathrm h}=0$ is a homogeneous-data convention together with a gauge choice, not a consequence of de Donder gauge alone. The leading physical gravitational modes remain in $h=\mathcal L_\zeta g^{(0)}$, and the complete retained response is $k=\tfrac12\mathcal L_\zeta^2g^{(0)}+q$.

## Where to Continue Toward the Spectrum

First retain a finite set of normalized scalar and physical boundary-graviton modes with free energies

$$\begin{align}
E_{nj}=\Delta+2n+|j|&<E_{\mathrm{cut}},&
E^{g}_{A,n}=n+2&<E_{\mathrm{cut}},
\qquad A=L,R.
\end{align}$$

The value of $E_{\mathrm{cut}}$ remains to be chosen. Insert these finite leading-mode sums into the bilinear kernel response and the covariance formulas. Keep the full response generated by their products, including sum/difference frequencies outside the retained free-mode band; truncating the independent input amplitudes does not justify discarding parts of the sourced Einstein constraints.

Next evaluate the prescribed finite kernel for the selected cutoff, then pull back $\omega_\Sigma$ and $H_{\partial_t}=X_{\partial_t}\cdot\theta-\alpha_{\partial_t}$ to the finite amplitudes, retaining the required boundary/corner terms. Find canonical coordinates before forming the one-/two-particle Hamiltonian matrices. The free-mode cutoff, a later cutoff on total Fock-state energy, and the perturbative order are separate choices. No cutoff-dependent spectrum has yet been computed.

## Verification Scope

- **Verified:** the retained 8 xAct checks pass, including the first/second Ricci coefficients, scalar wave-operator variation, stress conservation, minimal-coupling sign, quadratic/cubic Einstein densities with total derivatives, and Einstein potential. See [the check script](scripts/gravitation_scalar_interaction_checks.wl).
- **Assumptions:** unit AdS radius, positive Einstein coefficient, $m^2>-1$, source-free standard scalar condition and Brown–Henneaux falloffs. The explicit symplectic expansion uses the stated boundary gauge and endpoint convention.
- **Verified:** 15 additional residual groups pass in [the solution check script](scripts/gravitation_scalar_solution_checks.wl): scalar/vacuum covariance identities, the circular Einstein constraints and their propagation, every Einstein component of the explicit lowest-mode response, the general Jacobi radial equation, lowest-mode KG normalization, and the displayed center/boundary limits. Tensor calculations use xAct/xTras and xCoba; scalar checks use Mathematica.
- **Assumptions:** the solution construction uses smooth vacuum-orbit gravitational data and the stated homogeneous-data convention. The radial matter solution is circularly symmetric, regular at the center, and uses fixed boundary time. The metric expansion applies where its corrections remain perturbatively small.
- **Verified:** the de Donder operator, on-shell boundary constraints, radial response matrices, and the closed non-circular pair are checked in [the on-shell response script](scripts/de_donder_onshell_response_checks.wl). The finite-time accessibility proof also uses the explicitly stated analytic energy-domain and asymptotic arguments.
- **Not computed:** a table of evaluated responses for all mode pairs or the full interacting Hamiltonian matrix. The subsequent leading scalar-primary spectral calculation is in [the spectrum note](gravity%20scalar%20one%20and%20two%20particle%20spectrum.md), with its updated verification and scope in [the audit](closed%20form%20spectrum%20audit.md). The boundary/corner identity remains source-derived. The finite-order solutions do not establish long-time validity of the nonlinear evolution.
