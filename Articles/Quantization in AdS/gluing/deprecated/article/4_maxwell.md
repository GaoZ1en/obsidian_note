# Maxwell theory on a cut cylinder

Consider Maxwell theory on

$$
M=\mathbb R_t\times[-L,L]_x\times S_y^1,
\qquad
y\sim y+\ell_y,
$$

with a cut at $x=0$. On $M_i=\mathbb R_t\times I_i\times S_y^1$ the bulk action is

$$
S_i[A_i]=-\frac14\int_{M_i}\mathrm d^3x\,
F_{i,\mu\nu}F_i^{\mu\nu}.
$$

We write

$$
E_{i,x}=F_{i,tx},
\qquad
E_{i,y}=F_{i,ty},
\qquad
B_i=F_{i,xy}.
$$

The physical outer endpoints obey vanishing normal field strength. The purpose of the cut action is to join the two gauge theories without fixing either gauge potential at the artificial interface. Section $\ref{subsec:numerics-maxwell}$ gives the corresponding generalized finite-mode problem.

## Gauge-invariant interface action

Introduce one transition field $\varphi(t,y)$ with gauge transformation

$$
A_i\longrightarrow A_i+\mathrm d\lambda_i,
\qquad
\varphi\longrightarrow
\varphi+\lambda_1\big|_\Gamma-\lambda_2\big|_\Gamma.
$$

The dressed tangential mismatch is

$$
\eta_a
=A_{1,a}\big|_\Gamma-A_{2,a}\big|_\Gamma-\partial_a\varphi,
\qquad
a=t,y.
$$

Let $g=\mu\kappa>0$. The interface action is

$$
S_{\Gamma,g}^{\mathrm M}
=-\frac g2\int_\Gamma\mathrm dt\mathrm dy\,
\gamma^{ab}\eta_a\eta_b
=\frac g2\int_\Gamma\mathrm dt\mathrm dy\,
(\eta_t^2-\eta_y^2).
$$

Its variation, including the Maxwell cut terms, gives

$$
E_{1,x}\big|_\Gamma
=E_{2,x}\big|_\Gamma
=g\eta_t,
$$

$$
B_1\big|_\Gamma
=B_2\big|_\Gamma
=-g\eta_y,
$$

$$
\dot\eta_t-\partial_y\eta_y=0.
$$

The last equation also follows from the tangential divergence of the first two equations and the bulk Maxwell equations.

The time-endpoint term in $\delta S_{\Gamma,g}^{\mathrm M}$ contributes to the CPS data. The full pre-symplectic potential and form are

$$
\theta_g^{\mathrm M}
=\sum_{i=1}^2\int_{\Sigma_i}\mathrm dx\mathrm dy\,
(E_{i,x}\delta A_{i,x}+E_{i,y}\delta A_{i,y})
-g\int_{S_y^1}\mathrm dy\,\eta_t\delta\varphi,
$$

$$
\omega_g^{\mathrm M}
=\sum_{i=1}^2\int_{\Sigma_i}\mathrm dx\mathrm dy\,
(\delta E_{i,x}\wedge\delta A_{i,x}
+\delta E_{i,y}\wedge\delta A_{i,y})
-g\int_{S_y^1}\mathrm dy\,
\delta\eta_t\wedge\delta\varphi.
$$

The cut term ensures that gauge transformations with arbitrary and independent traces of $\lambda_1$ and $\lambda_2$ remain null directions. The physical phase space is obtained after quotienting this kernel.

The time-translation Noether charge is

$$
H_g^{\mathrm M}
=\frac12\sum_{i=1}^2\int_{\Sigma_i}\mathrm dx\mathrm dy\,
(E_{i,x}^2+E_{i,y}^2+B_i^2)
+\frac g2\int_{S_y^1}\mathrm dy\,
(\eta_t^2+\eta_y^2).
$$

At fixed unscaled gauge-invariant data, $g\to0$ removes the cut interaction. For bounded $H_g^{\mathrm M}$, the strong limit imposes $\eta_a\to0$, while the finite-coupling equations already impose continuity of $E_x$ and $B$.

## CPS reduction and dual scalar

Introduce a dual scalar in each region,

$$
E_{i,x}=-\partial_y\phi_i,
\qquad
E_{i,y}=\partial_x\phi_i,
\qquad
B_i=\dot\phi_i.
$$

The Maxwell equations imply

$$
(-\partial_t^2+\partial_x^2+\partial_y^2)\phi_i=0.
$$

For a positive-frequency Fourier component, write

$$
\phi_i=e^{-i\omega t}Y_m(y)f_i(x),
\qquad
Y_m(y)=\frac{e^{iq_my}}{\sqrt{\ell_y}},
\qquad
q_m=\frac{2\pi m}{\ell_y},
$$

$$
f_i''+k^2f_i=0,
\qquad
\omega^2=q_m^2+k^2.
$$

The physical outer equations give

$$
f_1(-L)=0,
\qquad
f_2(L)=0.
$$

The equality of $E_x$ and $B$ permits the additive constants of the two dual scalars to be chosen so that

$$
f_1(0)=f_2(0)=f_\Gamma.
$$

In a temporal--Coulomb representative,

$$
A_{i,t}=0,
\qquad
A_{i,x}=\frac{q_m}{\omega}\phi_i,
\qquad
A_{i,y}=\frac{i}{\omega}\partial_x\phi_i.
$$

The remaining cut equation is

$$
g\bigl(f_1'(0)-f_2'(0)\bigr)=k^2f_\Gamma.
$$

The transition-field component is fixed by the bulk mode,

$$
\mathcal V_m(t,y)
=-\frac{q_m}{g\omega}f_\Gamma e^{-i\omega t}Y_m(y).
$$

It is not an independent oscillator. On the reduced solution space, the original Maxwell--transition-field form becomes

$$
\omega_g^{\mathrm{osc}}
=\sum_{i=1}^2\int_{\Sigma_i}\mathrm dx\mathrm dy\,
\delta\dot\phi_i\wedge\delta\phi_i
+\frac1g\int_{S_y^1}\mathrm dy\,
\delta\dot\phi_\Gamma\wedge\delta\phi_\Gamma.
$$

The second term is obtained by evaluating the Maxwell CPS form on solutions of the cut equations. It is not an independently postulated spatial norm.

## Finite-coupling photon modes

Use reflection parity

$$
f_{\sigma,2}(x)=\sigma f_{\sigma,1}(-x),
\qquad
\sigma=\pm1,
$$

and take

$$
\Phi_{\sigma,m,n,1}
=\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t}
Y_m(y)\sin\bigl(k_{\sigma,n}(x+L)\bigr),
$$

$$
\Phi_{\sigma,m,n,2}
=\sigma\mathcal N_{\sigma,m,n}e^{-i\omega_{\sigma,m,n}t}
Y_m(y)\sin\bigl(k_{\sigma,n}(L-x)\bigr),
$$

$$
\omega_{\sigma,m,n}^2=q_m^2+k_{\sigma,n}^2.
$$

The reflection-odd tower is independent of $g$,

$$
k_{-,n}=\frac{n\pi}{L},
\qquad
n=1,2,\ldots,
$$

whereas the reflection-even tower obeys

$$
k_{+,n}\tan(k_{+,n}L)=2g,
$$

with one root in each interval

$$
\frac{(n-1)\pi}{L}<k_{+,n}<\frac{(n-\frac12)\pi}{L}.
$$

Let $\mathcal A_{\sigma,m,n,i,\mu}$ be the Maxwell representative constructed from $\Phi_{\sigma,m,n,i}$ and let $\mathcal V_{\sigma,m,n}$ be its transition-field component. The complete coupled mode is

$$
\Psi_{\sigma,m,n}^{(g)}
=\left(\{\mathcal A_{\sigma,m,n,i,\mu}\}_{i=1,2};
\mathcal V_{\sigma,m,n}\right).
$$

Evaluating the CPS contraction gives

$$
(\Psi_{\sigma,m,n}^{(g)},\Psi_{\sigma,m,n}^{(g)})_g
=2\omega_{\sigma,m,n}|\mathcal N_{\sigma,m,n}|^2
\mathcal I_{\sigma,n},
$$

where

$$
\mathcal I_{\sigma,n}
=L-\frac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}
+\frac{\sin^2(k_{\sigma,n}L)}{g}.
$$

For the odd tower $\mathcal I_{-,n}=L$. The CPS condition fixes

$$
\mathcal N_{\sigma,m,n}
=\frac{1}{\sqrt{2\omega_{\sigma,m,n}\mathcal I_{\sigma,n}}}.
$$

The cut term in $\mathcal I_{+,n}$ is essential. Normalizing only the bulk dual-scalar profile would not normalize the full Maxwell--transition-field solution.

The oscillator expansion yields

$$
\omega_g^{\mathrm{osc}}
=i\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^\infty
\delta b_{\sigma,m,n}^\dagger\wedge\delta b_{\sigma,m,n},
$$

$$
[b_{\sigma,m,n},b_{\tau,r,s}^\dagger]
=\delta_{\sigma\tau}\delta_{mr}\delta_{ns},
$$

$$
H_g^{\mathrm{osc}}
=\sum_{\sigma=\pm1}\sum_{m\in\mathbb Z}\sum_{n=1}^\infty
\omega_{\sigma,m,n}
\left(b_{\sigma,m,n}^\dagger b_{\sigma,m,n}+\frac12\right).
$$

## Holonomy sector and the strong-gluing limit

At every finite coupling there is one exact spatially constant solution,

$$
A_{1,y}(t)=A_{2,y}(t)
=\frac{\mathcal U_0}{\ell_y}+\frac{Q}{2L}t,
\qquad
E_{1,y}=E_{2,y}=\frac{Q}{2L},
\qquad
\eta_a=0.
$$

The pullback of the CPS form and Noether charge is

$$
\omega_g^{\mathrm{hol}}=\delta Q\wedge\delta\mathcal U,
\qquad
H_g^{\mathrm{hol}}=\frac{\ell_y}{4L}Q^2.
$$

For compact $U(1)$, $\mathcal U$ is angular and $Q$ has integer spectrum. If $\varphi$ is circle-valued, its winding combines with the two lifted holonomies only through the dressed invariant

$$
\mathcal R=\oint_{S_y^1}\eta_y\,\mathrm dy.
$$

Bounded energy in the strong limit forces $\mathcal R\to0$; the winding of the transition field by itself is not a physical sector label.

At fixed unscaled fields, $g\to0$ returns the two independent Maxwell regions after the transition field is removed by the gauge quotient. Spectrally,

$$
k_{+,1}^2=\frac{2g}{L}+O(g^2),
$$

$$
k_{+,n}\longrightarrow\frac{(n-1)\pi}{L},
\quad n\geq2,
\qquad
k_{-,n}=\frac{n\pi}{L}.
$$

Following a normalized family for which the unscaled cut mismatch diverges gives a different singular limit and can retain an additional rescaled interface theory. This is not the ordinary decoupling limit because it changes the limiting reduced phase space.

For every fixed mode,

$$
g\to\infty:
\qquad
k_{+,n}\longrightarrow\frac{(n-\frac12)\pi}{L},
\qquad
k_{-,n}=\frac{n\pi}{L}.
$$

The two towers interlace into

$$
K_r=\frac{r\pi}{2L},
\qquad
r=1,2,\ldots,
$$

which are the wave numbers of the global dual scalar with

$$
\phi\big|_{x=\pm L}=0.
$$

After restricting to $\eta_a=0$, pulling back $\omega_g^{\mathrm M}$, and quotienting its null directions, one obtains the Maxwell phase space on the uncut cylinder: the global photon tower together with the single common holonomy sector. This proves equality of the reduced classical phase spaces and a mode-by-mode match of the time-translation charges.

Finally, after the boundary Legendre transform, the interface action may equivalently be written using a quadratic normal-field-strength term proportional to

$$
\frac1g\int_\Gamma\mathrm dt\mathrm dy\,
\gamma_{ab}
(n_\mu F^{\mu a})(n_\nu F^{\nu b}).
$$

The cut equations give $n_\mu F^{\mu a}=\pm g\eta^a$, so this is the boundary-polarized form of the same gluing relation rather than a distinct prescription.
