# Scalar gluing in curved and higher-dimensional geometries

The construction extends to curved backgrounds and to networks of interfaces. The two examples below separate the universal gluing rule from questions of separability; their finite-mode realizations are compared in Section $\ref{subsec:numerics-scalar-geometries}$.

## Global AdS$_2$

Take unit-radius global $\mathrm{AdS}_2$,

$$
\mathrm ds^2=\frac{-\mathrm dt^2+\mathrm d\rho^2}{\cos^2\rho},
\qquad
-\frac\pi2<\rho<\frac\pi2,
$$

and a real scalar with

$$
m^2=\Delta(\Delta-1),
\qquad
\Delta=\frac12+\sqrt{\frac14+m^2}>1.
$$

We use the standard normalizable branch at the two conformal boundaries. Cutting at $\rho=0$ gives $I_L=(-\pi/2,0]$ and $I_R=[0,\pi/2)$. The finite-coupling action is

$$
S_g^{\mathrm{AdS}_2}
=\frac12\sum_{i=L,R}\int\mathrm dt\int_{I_i}\mathrm d\rho
\left[
\dot\phi_i^2-(\partial_\rho\phi_i)^2
-\frac{m^2}{\cos^2\rho}\phi_i^2
\right]
-\frac g2\int\mathrm dt\,(\phi_L-\phi_R)^2\big|_{\rho=0}.
$$

The cut equations are

$$
\partial_\rho\phi_L\big|_0
=\partial_\rho\phi_R\big|_0
=-g(\phi_L-\phi_R)\big|_0.
$$

The pre-symplectic form and time-translation Noether charge are

$$
\omega_g
=\sum_{i=L,R}\int_{I_i}\mathrm d\rho\,
\delta\dot\phi_i\wedge\delta\phi_i,
$$

$$
H_g^{\mathrm{AdS}_2}
=\frac12\sum_{i=L,R}\int_{I_i}\mathrm d\rho
\left[
\dot\phi_i^2+(\partial_\rho\phi_i)^2
+\frac{m^2}{\cos^2\rho}\phi_i^2
\right]
+\frac g2(\phi_L-\phi_R)^2\big|_0.
$$

For frequency $\omega$, the right-half solution with standard normalizable asymptotics can be chosen as

$$
f_\omega(\rho)
=(\cos\rho)^\Delta
{}_2F_1\left(
\frac{\Delta-\omega}{2},
\frac{\Delta+\omega}{2};
\Delta+\frac12;
\cos^2\rho
\right).
$$

It satisfies

$$
f_\omega''
+\left[
\omega^2-\frac{\Delta(\Delta-1)}{\cos^2\rho}
\right]f_\omega=0.
$$

The exact response-to-value ratio at the origin is

$$
D_\Delta(\omega)
:=\frac{f_\omega'(0)}{f_\omega(0)}
=-2
\frac{
\Gamma\left(\frac{\Delta+1-\omega}{2}\right)
\Gamma\left(\frac{\Delta+1+\omega}{2}\right)}{
\Gamma\left(\frac{\Delta-\omega}{2}\right)
\Gamma\left(\frac{\Delta+\omega}{2}\right)}.
$$

Reflection modes may be written as

$$
\Phi_{\sigma,r,L}
=\sigma\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}
f_{\omega_{\sigma,r}}(-\rho),
\qquad
\Phi_{\sigma,r,R}
=\mathcal N_{\sigma,r}e^{-i\omega_{\sigma,r}t}
f_{\omega_{\sigma,r}}(\rho).
$$

The reflection-even tower is independent of $g$,

$$
\omega_{+,r}=\Delta+2r,
\qquad
r=0,1,2,\ldots,
$$

while the reflection-odd tower is determined by

$$
D_\Delta(\omega_{-,r})=2g,
\qquad
\Delta+2r<\omega_{-,r}<\Delta+2r+1.
$$

The CPS normalization is

$$
iX_{\sigma,r}^*\mathbin{\cdot}X_{\sigma,r}\mathbin{\cdot}\omega_g
=4\omega_{\sigma,r}|\mathcal N_{\sigma,r}|^2
\int_0^{\pi/2}\mathrm d\rho\,
f_{\omega_{\sigma,r}}(\rho)^2,
$$

and hence

$$
\mathcal N_{\sigma,r}
=\left[
4\omega_{\sigma,r}
\int_0^{\pi/2}\mathrm d\rho\,
f_{\omega_{\sigma,r}}(\rho)^2
\right]^{-1/2}.
$$

The endpoint spectra are

$$
g\to0:
\quad
\omega_{-,r}\to\Delta+2r,
$$

$$
g\to\infty:
\quad
\omega_{-,r}\to\Delta+2r+1.
$$

In the second limit, the two towers become the complete global basis

$$
\Phi_n^{\mathrm{global}}(t,\rho)
=\frac{e^{-i(\Delta+n)t}}{\sqrt{2(\Delta+n)}}u_n(\rho),
$$

$$
u_n(\rho)
=\frac{(\cos\rho)^\Delta C_n^\Delta(\sin\rho)}{\sqrt{h_n^{(\Delta)}}},
\qquad
h_n^{(\Delta)}
=\frac{\pi 2^{1-2\Delta}\Gamma(n+2\Delta)}
{n!(n+\Delta)\Gamma(\Delta)^2}.
$$

Thus the finite-coupling construction recovers both parities of the global $\mathrm{AdS}_2$ scalar, even though each decoupled half-region contains only the origin-Neumann tower.

## Four quadrants of a square

Let

$$
\Omega=[-L,L]_x\times[-L,L]_y,
\qquad
\Omega_{ab}=I_a^x\times I_b^y,
\qquad
a,b\in\{-,+\},
$$

where $I_-=[-L,0]$ and $I_+=[0,L]$. A scalar $\phi_{ab}$ is assigned to each quadrant. Four independent couplings may be placed on the four half-axes:

$$
g_x^-,\quad g_x^+,\quad g_y^-,\quad g_y^+>0.
$$

The interface action is

$$
\begin{aligned}
S_{\Gamma,\boldsymbol g}
&=-\frac12\int\mathrm dt\Bigg[
\sum_{b=\pm}g_x^b\int_{I_b^y}\mathrm dy\,
\bigl(\phi_{-,b}(0,y)-\phi_{+,b}(0,y)\bigr)^2 \\
&\hspace{32mm}
+\sum_{a=\pm}g_y^a\int_{I_a^x}\mathrm dx\,
\bigl(\phi_{a,-}(x,0)-\phi_{a,+}(x,0)\bigr)^2
\Bigg].
\end{aligned}
$$

The vertical cut equations are

$$
\partial_x\phi_{-,b}\big|_{x=0}
=\partial_x\phi_{+,b}\big|_{x=0}
=-g_x^b(\phi_{-,b}-\phi_{+,b})\big|_{x=0},
$$

and the horizontal equations are

$$
\partial_y\phi_{a,-}\big|_{y=0}
=\partial_y\phi_{a,+}\big|_{y=0}
=-g_y^a(\phi_{a,-}-\phi_{a,+})\big|_{y=0}.
$$

No point-supported action is required at $x=y=0$. The form domain consists of one $H^1$ function on each quadrant, and the central point has zero measure in every interface integral.

The pre-symplectic form is

$$
\omega_{\boldsymbol g}
=\sum_{a,b}\int_{\Omega_{ab}}\mathrm dx\mathrm dy\,
\delta\dot\phi_{ab}\wedge\delta\phi_{ab}.
$$

For nonnegative couplings, the spatial quadratic form is positive and closed. A complete real eigenbasis satisfies

$$
-(\partial_x^2+\partial_y^2)u_{A,ab}^{(\boldsymbol g)}
=k_A^2u_{A,ab}^{(\boldsymbol g)},
\qquad
\Omega_A=\sqrt{m^2+k_A^2},
$$

with the interface equations above. After choosing

$$
\sum_{a,b}\int_{\Omega_{ab}}\mathrm dx\mathrm dy\,
u_{A,ab}^{(\boldsymbol g)}u_{B,ab}^{(\boldsymbol g)}
=\delta_{AB},
$$

the CPS-normalized positive-frequency modes are

$$
\Phi_{A,ab}^{(\boldsymbol g)}
=\frac{e^{-i\Omega_At}}{\sqrt{2\Omega_A}}
u_{A,ab}^{(\boldsymbol g)},
\qquad
iX_B^*\mathbin{\cdot}X_A\mathbin{\cdot}\omega_{\boldsymbol g}
=\delta_{AB}.
$$

For four unrelated couplings the interface coefficients jump at the central point, and the eigenproblem is not a tensor product. It becomes separable when

$$
g_x^-=g_x^+=g_x,
\qquad
g_y^-=g_y^+=g_y.
$$

Let $\chi_{\sigma,n}^{(g_z)}(z)$ be the one-dimensional profiles of the interval problem, with $z=x,y$. Their wave numbers are

$$
k_{+,n}^{(g_z)}=\frac{n\pi}{L},
\qquad
n=0,1,2,\ldots,
$$

and

$$
k_{-,n}^{(g_z)}\tan\bigl(k_{-,n}^{(g_z)}L\bigr)=2g_z,
\qquad
n=1,2,\ldots.
$$

The normalized two-dimensional profiles factorize as

$$
u_I^{(g_x,g_y)}(x,y)
=\chi_{\sigma_x,n_x}^{(g_x)}(x)
\chi_{\sigma_y,n_y}^{(g_y)}(y),
$$

with

$$
\Omega_I^2
=m^2+\left(k_{\sigma_x,n_x}^{(g_x)}\right)^2
+\left(k_{\sigma_y,n_y}^{(g_y)}\right)^2.
$$

When all four couplings vanish, the reflection combinations rotate into the four independently supported quadrant bases. When all four couplings tend to infinity with bounded quadratic-form energy, the jumps vanish on every half-axis and the four fields define one $H^1$ field on the full square. In the separable case the limiting basis is

$$
\Phi_{r,s}^{\mathrm{square}}(t,x,y)
=\frac{e^{-i\Omega_{r,s}t}}{\sqrt{2\Omega_{r,s}}}
U_r(x)U_s(y),
$$

$$
\Omega_{r,s}
=\sqrt{m^2+K_r^2+K_s^2},
\qquad
K_r=\frac{r\pi}{2L},
\qquad
r,s=0,1,2,\ldots,
$$

where $U_r$ is the full-interval Neumann basis displayed in Section $\ref{sec:interval-scalar}$. Taking only a subset of the couplings to infinity gives a partially glued geometry.
