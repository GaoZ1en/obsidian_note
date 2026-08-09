# Scalar field on a cut interval

Consider a massive real scalar on $[-L,L]$, cut at $x=0$ into

$$
I_1=[-L,0],
\qquad
I_2=[0,L].
$$

We take $m>0$ and use homogeneous Neumann data at the physical endpoints. This example gives an elementary realization of the general gluing rule and an exactly solvable finite-coupling spectrum.

## Action and interface equations

The coupled action is

$$
S_g
=\frac12\sum_{i=1}^2\int\mathrm dt\int_{I_i}\mathrm dx
\left(\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2\right)
-\frac g2\int\mathrm dt\,(\phi_1-\phi_2)^2\big|_{x=0}.
$$

The equations of motion, physical endpoint equations, and cut equations are

$$
(-\partial_t^2+\partial_x^2-m^2)\phi_i=0,
$$

$$
\phi_1'(-L)=0,
\qquad
\phi_2'(L)=0,
$$

$$
\phi_1'(0)=\phi_2'(0)
=-g\bigl(\phi_1(0)-\phi_2(0)\bigr).
$$

The pre-symplectic potential, pre-symplectic form, and time-translation Noether charge are

$$
\theta_g=\sum_{i=1}^2\int_{I_i}\mathrm dx\,\dot\phi_i\delta\phi_i,
\qquad
\omega_g=\sum_{i=1}^2\int_{I_i}\mathrm dx\,
\delta\dot\phi_i\wedge\delta\phi_i,
$$

$$
H_g
=\frac12\sum_{i=1}^2\int_{I_i}\mathrm dx
\left(\dot\phi_i^2+\phi_i'^2+m^2\phi_i^2\right)
+\frac g2(\phi_1-phi_2)^2\big|_{x=0}.
$$

The associated positive spatial quadratic form defines a self-adjoint interface operator.

## Finite-coupling modes

Reflection about the cut splits the solutions into sectors $\sigma=\pm1$ satisfying

$$
\phi_{\sigma,2}(x)=\sigma\phi_{\sigma,1}(-x).
$$

The reflection-even modes are

$$
\Phi_{+,n,1}
=\mathcal N_{+,n}e^{-i\omega_{+,n}t}
\cos\bigl(k_{+,n}(x+L)\bigr),
$$

$$
\Phi_{+,n,2}
=\mathcal N_{+,n}e^{-i\omega_{+,n}t}
\cos\bigl(k_{+,n}(L-x)\bigr),
$$

with

$$
k_{+,n}=\frac{n\pi}{L},
\qquad
\omega_{+,n}=\sqrt{m^2+k_{+,n}^2},
\qquad
n=0,1,2,\ldots.
$$

This tower is independent of $g$. Its $n=0$ member has a spatially constant profile and frequency $m$.

The reflection-odd modes are

$$
\Phi_{-,n,1}
=\mathcal N_{-,n}e^{-i\omega_{-,n}t}
\cos\bigl(k_{-,n}(x+L)\bigr),
$$

$$
\Phi_{-,n,2}
=-\mathcal N_{-,n}e^{-i\omega_{-,n}t}
\cos\bigl(k_{-,n}(L-x)\bigr),
$$

where

$$
k_{-,n}\tan(k_{-,n}L)=2g,
\qquad
\omega_{-,n}=\sqrt{m^2+k_{-,n}^2},
$$

and the $n$th root is the unique solution in

$$
\frac{(n-1)\pi}{L}<k_{-,n}<\frac{(n-\frac12)\pi}{L},
\qquad
n=1,2,\ldots.
$$

Direct contraction with $\omega_g$ gives

$$
(\Phi_{\sigma,n},\Phi_{\tau,r})_g
=iX_{\tau,r}^*\mathbin{\cdot}X_{\sigma,n}\mathbin{\cdot}\omega_g
=\delta_{\sigma\tau}\delta_{nr}
$$

provided

$$
\mathcal N_{\sigma,n}
=\frac{1}{\sqrt{2\omega_{\sigma,n}}}
\left[
L+\frac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}
\right]^{-1/2}.
$$

The expression is understood by continuity at $k=0$. Expanding

$$
\phi_i
=\sum_{\sigma=\pm1}\sum_n
\left(
b_{\sigma,n}\Phi_{\sigma,n,i}
+b_{\sigma,n}^\dagger\Phi_{\sigma,n,i}^*
\right)
$$

gives

$$
\omega_g=i\sum_{\sigma,n}\delta b_{\sigma,n}^\dagger\wedge\delta b_{\sigma,n},
\qquad
[b_{\sigma,n},b_{\tau,r}^\dagger]
=\delta_{\sigma\tau}\delta_{nr},
$$

$$
H_g=\sum_{\sigma,n}\omega_{\sigma,n}
\left(b_{\sigma,n}^\dagger b_{\sigma,n}+\frac12\right).
$$

## Endpoint theories

As $g\to0$, the odd roots satisfy

$$
k_{-,n}\longrightarrow\frac{(n-1)\pi}{L}.
$$

The even and odd towers become pairwise degenerate and may be rotated into modes supported on $I_1$ or $I_2$. This recovers the direct sum of the two interval theories.

For bounded $H_g$, the limit $g\to\infty$ forces

$$
\phi_1(0)=\phi_2(0),
\qquad
\phi_1'(0)=\phi_2'(0).
$$

Moreover,

$$
k_{-,n}\longrightarrow\frac{(n-\frac12)\pi}{L}.
$$

The two parity towers interlace into the full-interval wave numbers

$$
K_r=\frac{r\pi}{2L},
\qquad
r=0,1,2,\ldots,
$$

with CPS-normalized modes

$$
\Phi_r(t,x)
=\frac{e^{-i\Omega_rt}}{\sqrt{2\Omega_r}}U_r(x),
\qquad
\Omega_r=\sqrt{m^2+K_r^2},
$$

$$
U_0(x)=\frac{1}{\sqrt{2L}},
\qquad
U_r(x)=\frac{1}{\sqrt L}\cos\bigl(K_r(x+L)\bigr),
\quad r\geq1.
$$

This establishes convergence of each fixed spectral branch and identifies the endpoint spatial operators. It does not by itself establish convergence of the vacua or a unitary identification of the continuum Fock representations.
