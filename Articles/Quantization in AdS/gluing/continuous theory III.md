# AdS--Rindler Gluing and Global $\displaystyle{\mathrm{AdS}_{3}}$ Charge Recovery

Consider a real scalar on global $\displaystyle{\mathrm{AdS}_{3}}$ with AdS radius one,

$$\begin{align}
S_{\mathrm{global}} &=-\dfrac12\int_M\mathrm d^3x\sqrt{-g}\left(\partial_\mu\Phi\partial^\mu\Phi+m^2\Phi^2\right), &m^2&=\Delta(\Delta-2), &\Delta&>1,
\end{align}$$

with the same standard normalizable boundary condition as in `continuous theory II.md`. Physical boundary counterterms at conformal infinity are kept implicit. As requested, the action below is used only as a compact way to specify the bulk equation and the artificial-interface conditions; no claim about a fully renormalized variational principle at the asymptotic boundary will be needed.

The aim is to reconstruct the global scalar, its CPS form, and its Killing charges from scalar data on an AdS--Rindler wedge and its causal complement. There is an important geometric qualification: the two exteriors are not two spacetime regions separated by a common timelike or null codimension-one cut. The exact gluing operation is instead performed on their complementary Cauchy data at the bifurcation geodesic and then evolved with the global equation.

## Geometry and the Obstruction to Direct Horizon Gluing

Embed $\displaystyle{\mathrm{AdS}_{3}}$ in $\displaystyle{\mathbb R^{2,2}}$ with

$$\begin{align}
-X_{-1}^{2}-X_0^{2}+X_1^{2}+X_2^{2}&=-1.
\end{align}$$

The right AdS--Rindler wedge $\displaystyle{W_R}$ is parameterized by

$$\begin{align}
X_{-1}&=\cosh y\cosh\chi, &X_1&=\cosh y\sinh\chi,\\
X_0&=\sinh y\sinh\tau_R, &X_2&=\sinh y\cosh\tau_R, &y&>0,
\end{align}$$

and its causal complement $\displaystyle{W_L}$ by

$$\begin{align}
X_{-1}&=\cosh y\cosh\chi, &X_1&=\cosh y\sinh\chi,\\
X_0&=\sinh y\sinh\tau_L, &X_2&=-\sinh y\cosh\tau_L, &y&>0.
\end{align}$$

Both metrics are

$$\begin{align}
\mathrm ds^2&=-\sinh^2y\,\mathrm d\tau_A^2+\mathrm dy^2+\cosh^2y\,\mathrm d\chi^2, &A&=R,L.
\end{align}$$

The global boost Killing vector

$$\begin{align}
\zeta&=X_2\partial_{X_0}+X_0\partial_{X_2}
\end{align}$$

has opposite future-time representations in the two wedges,

$$\begin{align}
\zeta|_{W_R}&=\partial_{\tau_R}, &\zeta|_{W_L}&=-\partial_{\tau_L}.
\end{align}$$

The wedge conditions are

$$\begin{align}
W_R&:\quad X_2>|X_0|, &W_L&:\quad X_2<-|X_0|.
\end{align}$$

They meet on the bifurcation geodesic

$$\begin{align}
B&:\quad X_0=X_2=0, &X_{-1}&=\cosh\chi, &X_1&=\sinh\chi,
\end{align}$$

but $\displaystyle{W_R\cup W_L}$ omits the future and past regions $\displaystyle{|X_0|>|X_2|}$. In particular, a term such as $\displaystyle{\int_{\mathcal H}(\Phi_R-\Phi_L)^2}$ on a supposed shared horizon is not an action for global gluing: a horizon of $\displaystyle{W_R}$ borders a future or past region, not $\displaystyle{W_L}$. A decomposition along the null horizons would require four regions $\displaystyle{W_R,W_L,F,P}$ and characteristic matching between adjacent regions.

There is nevertheless an exact two-piece construction on the common global slice $\displaystyle{t=0}$. On that slice $\displaystyle{\tau_R=\tau_L=0}$, and the two spatial halves glue to a complete $\displaystyle{H^2}$ slice. Introducing a signed coordinate $\displaystyle{Y\in\mathbb R}$,

$$\begin{align}
X_{-1}&=\cosh Y\cosh\chi, &X_1&=\cosh Y\sinh\chi, &X_2&=\sinh Y,
\end{align}$$

gives

$$\begin{align}
\Sigma&=\Sigma_R\cup_B\Sigma_L, &\Sigma_R&:\ Y\geq0, &\Sigma_L&:\ Y\leq0,\\
\mathrm ds_\Sigma^2&=\mathrm dY^2+\cosh^2Y\,\mathrm d\chi^2, &B&:\ Y=0.
\end{align}$$

Thus the precise statement to be implemented is

$$\begin{align}
\text{matched data on }\Sigma_R\oplus\Sigma_L \quad\Longrightarrow\quad \text{global Cauchy data on }\Sigma \quad\Longrightarrow\quad \text{a global solution on }M.
\end{align}$$

The second arrow is global hyperbolic evolution with the standard AdS boundary condition. It is this step that fills the future and past regions omitted by $\displaystyle{W_R\cup W_L}$.

## Global-Time Completion and the Finite-$\displaystyle{\kappa}$ Action

To define a finite-$\displaystyle{\kappa}$ interpolation, extend each half of $\displaystyle{\Sigma}$ along global time. Use $\displaystyle{y_A\geq0}$ on both copies and write

$$\begin{align}
X_{-1}&=\cosh y_A\cosh\chi\cos t, &X_0&=\cosh y_A\cosh\chi\sin t,\\
X_1&=\cosh y_A\sinh\chi, &X_2&=s_A\sinh y_A, &(s_R,s_L)&=(+1,-1).
\end{align}$$

The two global-time completions $\displaystyle{M_R^C}$ and $\displaystyle{M_L^C}$ have the same metric

$$\begin{align}
\mathrm ds^2&=-\cosh^2y_A\cosh^2\chi\,\mathrm dt^2+\mathrm dy_A^2+\cosh^2y_A\,\mathrm d\chi^2.
\end{align}$$

Their common artificial timelike cut $\displaystyle{\Gamma}$ is the global-time orbit of $\displaystyle{B}$,

$$\begin{align}
\Gamma&:\quad y_A=0, &\mathrm ds_\Gamma^2&=-\cosh^2\chi\,\mathrm dt^2+\mathrm d\chi^2, &\sqrt{-\gamma}&=\cosh\chi.
\end{align}$$

This surface is a global $\displaystyle{\mathrm{AdS}_2}$ plane inside $\displaystyle{\mathrm{AdS}_3}$. It is not a Rindler horizon. Denote the two traces by

$$\begin{align}
q_A(t,\chi)&=\Phi_A(t,0,\chi), &A&=R,L.
\end{align}$$

The formal finite-$\displaystyle{\kappa}$ action is

$$\begin{align}
S_\kappa&=S_{\mathrm{bulk}}+S_D^{(\kappa)}+S_{\mathrm{glue}}^{(\kappa)},\\
S_{\mathrm{bulk}} &=-\dfrac12\sum_{A=R,L}\int_{M_A^C}\mathrm d^3x\sqrt{-g} \left(\partial_\mu\Phi_A\partial^\mu\Phi_A+m^2\Phi_A^2\right),\\
S_D^{(\kappa)} &=-\dfrac1{2\kappa}\int_\Gamma\mathrm dt\,\mathrm d\chi\,\cosh\chi \left(q_R^2+q_L^2\right),\\
S_{\mathrm{glue}}^{(\kappa)} &=-\dfrac\kappa2\int_\Gamma\mathrm dt\,\mathrm d\chi\,\cosh\chi \left(q_R-q_L\right)^2, &\kappa&>0.
\end{align}$$

Unlike the separable but position-dependent regulator used in `continuous theory II.md`, these are ordinary scalar defect terms with the invariant measure on $\displaystyle{\Gamma}$. The two regulators have the same Dirichlet and smooth-gluing endpoints but define different finite-$\displaystyle{\kappa}$ theories.

Let $\displaystyle{n_A}$ be the unit normal pointing outward from $\displaystyle{M_A^C}$. Since both coordinates increase away from the cut,

$$\begin{align}
n_A^\mu\partial_\mu&=-\partial_{y_A} \qquad\text{at }\Gamma.
\end{align}$$

The interface part of the variation is

$$\begin{align}
\delta S_\kappa|_\Gamma &=-\int_\Gamma\mathrm dt\,\mathrm d\chi\,\cosh\chi\Bigg[ \left(n_R^\mu\partial_\mu\Phi_R+\dfrac1\kappa q_R+\kappa(q_R-q_L)\right)\delta q_R\\
&\hspace{47mm}+ \left(n_L^\mu\partial_\mu\Phi_L+\dfrac1\kappa q_L+\kappa(q_L-q_R)\right)\delta q_L
\Bigg].
\end{align}$$

We therefore take the bulk equations and interface conditions to be

$$\begin{align}
(\Box-m^2)\Phi_A&=0,\\
n_R^\mu\partial_\mu\Phi_R+\dfrac1\kappa q_R+\kappa(q_R-q_L)&=0,\\
n_L^\mu\partial_\mu\Phi_L+\dfrac1\kappa q_L+\kappa(q_L-q_R)&=0.
\end{align}$$

In the global-time coordinates the bulk equation is

$$\begin{align}
0=(\Box-m^2)\Phi_A &=\left[-\dfrac{1}{\cosh^2y_A\cosh^2\chi}\partial_t^2 +\dfrac1{\cosh^2y_A}\partial_{y_A}\left(\cosh^2y_A\partial_{y_A}\right)\right.\\
&\left.\hspace{12mm} +\dfrac1{\cosh^2y_A\cosh\chi}\partial_\chi\left(\cosh\chi\partial_\chi\right)-m^2\right]\Phi_A.
\end{align}$$

It is useful to package the interface equations as

$$\begin{align}
\boldsymbol d&=-A_\kappa\boldsymbol q,
&\boldsymbol q&=\begin{pmatrix}q_R\\
q_L\end{pmatrix},
&\boldsymbol d&=\begin{pmatrix}n_R\cdot\partial\Phi_R\\
n_L\cdot\partial\Phi_L\end{pmatrix},\\
A_\kappa&=
\begin{pmatrix}
\kappa^{-1}+\kappa&-\kappa\\
-\kappa&\kappa^{-1}+\kappa
\end{pmatrix}.
\end{align}$$

The two eigenvalues of $\displaystyle{A_\kappa}$ are

$$\begin{align}
a_+(\kappa)&=\kappa^{-1}, &a_-(\kappa)&=\kappa^{-1}+2\kappa,
\end{align}$$

for the common and relative traces, respectively. Consequently,

$$\begin{align}
\kappa\to0:&\quad q_R=q_L=0,\\
\kappa\to\infty:&\quad q_R=q_L, &n_R\cdot\partial\Phi_R+n_L\cdot\partial\Phi_L&=0.
\end{align}$$

The second line is continuity of the field and of its signed normal derivative across the artificial cut. It is precisely the operator-domain condition for a smooth global scalar. The symmetry of $\displaystyle{A_\kappa}$ also gives, for any two linearized solutions,

$$\begin{align}
\delta_1\boldsymbol q^{\,T}\delta_2\boldsymbol d -\delta_2\boldsymbol q^{\,T}\delta_1\boldsymbol d&=0,
\end{align}$$

so the two interface fluxes cancel at every finite $\displaystyle{\kappa}$.

## CPS Form, Hamiltonian, and Finite-$\displaystyle{\kappa}$ Quantization

The lapse and spatial volume density are

$$\begin{align}
N&=\cosh y_A\cosh\chi, &\sqrt\sigma&=\cosh y_A.
\end{align}$$

The canonical momentum, symplectic potential, and CPS form are

$$\begin{align}
\Pi_A&=\dfrac{\sqrt\sigma}{N}\partial_t\Phi_A =\dfrac1{\cosh\chi}\partial_t\Phi_A,\\
\theta_\kappa &=\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\, \Pi_A\,\delta\Phi_A,\\
\omega_\kappa &=\delta\theta_\kappa =\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\, \delta\Pi_A\wedge\delta\Phi_A.
\end{align}$$

There is no defect contribution to $\displaystyle{\theta_\kappa}$ because the cut action contains no time derivatives. Its Legendre transform gives the Hamiltonian

$$\begin{align}
H_\kappa &=\dfrac12\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\,\cosh\chi \Big[\Pi_A^2+\cosh^2y_A(\partial_{y_A}\Phi_A)^2+(\partial_\chi\Phi_A)^2 +m^2\cosh^2y_A\Phi_A^2\Big]\\
&\quad+\dfrac12\int_{-\infty}^\infty\mathrm d\chi\,\cosh\chi \left[\dfrac1\kappa(q_R^2+q_L^2)+\kappa(q_R-q_L)^2\right].
\end{align}$$

For masses in the negative part of the Breitenlohner--Freedman window, semiboundedness is understood with the standard normalizable AdS boundary condition and its usual renormalized boundary energy; only the displayed defect contribution is manifestly positive by itself.

The static one-particle problem can be stated without finding a separable finite-$\displaystyle{\kappa}$ spectrum. Introduce

$$\begin{align}
\langle f,g\rangle_\mu &=\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\dfrac{\mathrm d\chi}{\cosh\chi}\, f_A^*g_A.
\end{align}$$

The spatial quadratic form is

$$\begin{align}
Q_\kappa[f] &=\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\,\cosh\chi \left[\cosh^2y_A|\partial_{y_A}f_A|^2+|\partial_\chi f_A|^2 +m^2\cosh^2y_A|f_A|^2\right]\\
&\quad+\int_{-\infty}^\infty\mathrm d\chi\,\cosh\chi \left[\dfrac1\kappa(|q_R|^2+|q_L|^2)+\kappa|q_R-q_L|^2\right].
\end{align}$$

Let $\displaystyle{\mathcal A_\kappa}$ be the self-adjoint spatial operator associated with this semibounded form,

$$\begin{align}
Q_\kappa[f,g]&=\langle f,\mathcal A_\kappa g\rangle_\mu.
\end{align}$$

Its operator domain obeys the two finite-$\displaystyle{\kappa}$ interface equations above. For an orthonormal spectral basis, with sums replaced by spectral integrals if necessary,

$$\begin{align}
\mathcal A_\kappa v_J^{(\kappa)}&=(\Omega_J^{(\kappa)})^2v_J^{(\kappa)}, &\langle v_I^{(\kappa)},v_J^{(\kappa)}\rangle_\mu&=\delta_{IJ},\\
u_J^{(\kappa)}(t)&=\dfrac{e^{-i\Omega_J^{(\kappa)}t}}{\sqrt{2\Omega_J^{(\kappa)}}}v_J^{(\kappa)}, &(u_I^{(\kappa)},u_J^{(\kappa)})&=\delta_{IJ}.
\end{align}$$

The field and its canonical quantization are

$$\begin{align}
\Phi_A&=\sum_J\left(b_Ju_{J,A}^{(\kappa)}+b_J^\dagger u_{J,A}^{(\kappa)*}\right),\\
\omega_\kappa&=i\sum_J\delta b_J^\dagger\wedge\delta b_J, &[b_I,b_J^\dagger]&=\delta_{IJ},\\
H_\kappa&=\sum_J\Omega_J^{(\kappa)} \left(b_J^\dagger b_J+\dfrac12\right).
\end{align}$$

This is a complete abstract quantization of the finite-$\displaystyle{\kappa}$ defect theory. Unlike `continuous theory II.md`, the invariant interface coupling does not preserve the angular/radial separation, so no closed finite-$\displaystyle{\kappa}$ spectral equation is asserted here.

The two form limits have distinct meanings:

$$\begin{align}
\kappa\to0:&\quad \mathcal A_\kappa\longrightarrow\mathcal A_{R,D}\oplus\mathcal A_{L,D},\\
\kappa\to\infty:&\quad \mathcal A_\kappa\longrightarrow\mathcal A_{\mathrm{global}}.
\end{align}$$

The first theory contains two global-time half-spacetimes with a timelike Dirichlet wall. It must not be identified with intrinsic AdS--Rindler quantization, which has a Killing horizon rather than a reflecting wall. The second limit removes the artificial defect: the matched field and normal derivative define the standard global scalar.

## Exact Reconstruction from Wedge Cauchy Data

The global and Rindler time slices coincide at $\displaystyle{t=\tau_A=0}$. Directly from the embedding maps,

$$\begin{align}
\partial_{\tau_A} &=\dfrac{\tanh y_A}{\cosh\chi}\partial_t \qquad\text{on }t=\tau_A=0.
\end{align}$$

The Rindler momentum density is therefore

$$\begin{align}
\pi_A^{\mathrm{Rin}} &=\coth y_A\,\partial_{\tau_A}\Phi_A =\dfrac1{\cosh\chi}\partial_t\Phi_A =\Pi_A.
\end{align}$$

Hence the wedge and global CPS forms agree on the common slice,

$$\begin{align}
\omega_R+\omega_L &=\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\, \coth y_A\,\delta\partial_{\tau_A}\Phi_A\wedge\delta\Phi_A\\
&=\sum_{A=R,L}\int_0^\infty\mathrm dy_A\int_{-\infty}^\infty\mathrm d\chi\, \delta\Pi_A\wedge\delta\Phi_A =\omega_{\mathrm{global}}.
\end{align}$$

For smooth classical initial data the full gluing conditions are

$$\begin{align}
q_R&=q_L, &n_R\cdot\partial\Phi_R+n_L\cdot\partial\Phi_L&=0, &\pi_R^{\mathrm{Rin}}|_B&=\pi_L^{\mathrm{Rin}}|_B.
\end{align}$$

The first two conditions are the $\displaystyle{\kappa\to\infty}$ operator-domain conditions. The third matches the independent canonical momentum data. For finite-energy data the pointwise momentum trace need not exist; the invariant statement is that the two half-data define one element of the global energy phase space. The apparent $\displaystyle{\coth y}$ singularity of the Rindler CPS form is harmless for smooth global data because $\displaystyle{\partial_{\tau_A}\Phi_A=O(y_A)}$ near $\displaystyle{B}$.

This proves the classical reconstruction statement: the $\displaystyle{\kappa\to\infty}$ gluing map is a symplectic identification of matched wedge Cauchy data with global Cauchy data. Global evolution then reconstructs the field in all four causal regions.

## Intrinsic AdS--Rindler Modes

Intrinsic Rindler quantization is useful for describing the global vacuum and the boost charge, but it is logically separate from the finite-$\displaystyle{\kappa}$ timelike-defect regulator. Set

$$\begin{align}
\rho&=\cosh y, &1<\rho<\infty.
\end{align}$$

Then

$$\begin{align}
\mathrm ds^2 &=-(\rho^2-1)\mathrm d\tau_A^2 +\dfrac{\mathrm d\rho^2}{\rho^2-1} +\rho^2\mathrm d\chi^2,
\end{align}$$

and the wave equation is

$$\begin{align}
0=(\Box-m^2)\Phi_A &=\left[-\dfrac1{\rho^2-1}\partial_{\tau_A}^2 +\dfrac1\rho\partial_\rho\left(\rho(\rho^2-1)\partial_\rho\right) +\dfrac1{\rho^2}\partial_\chi^2-m^2\right]\Phi_A.
\end{align}$$

For $\displaystyle{\omega>0}$ and $\displaystyle{k\in\mathbb R}$ choose

$$\begin{align}
u_{A,\omega k} &=\mathcal N_{\omega k}e^{-i\omega\tau_A+ik\chi}f_{\omega k}(\rho),\\
f_{\omega k}(\rho) &=\rho^{-\Delta}(1-\rho^{-2})^{-i\omega/2} {}_2F_1\left( \dfrac{\Delta-i\omega+ik}{2}, \dfrac{\Delta-i\omega-ik}{2}; \Delta;\rho^{-2}\right).
\end{align}$$

This is the standard-normalizable solution at $\displaystyle{\rho\to\infty}$. Its continuation to $\displaystyle{\rho\to1}$ contains both horizon wave branches. The constant $\displaystyle{\mathcal N_{\omega k}}$ and a harmless phase are fixed by the generalized CPS normalization

$$\begin{align}
(u_{A,\omega k},u_{B,\omega'k'}) &=\delta_{AB}\delta(\omega-\omega')\delta(k-k'),\\
\omega_A &=\int_1^\infty\mathrm d\rho\int_{-\infty}^\infty\mathrm d\chi\, \dfrac{\rho}{\rho^2-1}\, \delta\partial_{\tau_A}\Phi_A\wedge\delta\Phi_A.
\end{align}$$

The Rindler fields are expanded as

$$\begin{align}
\Phi_A &=\int_0^\infty\mathrm d\omega\int_{-\infty}^\infty\mathrm dk \left(b_{A,\omega k}u_{A,\omega k} +b_{A,\omega k}^\dagger u_{A,\omega k}^*\right),\\
[b_{A,\omega k},b_{B,\omega'k'}^\dagger] &=\delta_{AB}\delta(\omega-\omega')\delta(k-k').
\end{align}$$

After dropping the zero-point term, the two positive Rindler Hamiltonians are

$$\begin{align}
K_A&=\int_0^\infty\mathrm d\omega\int_{-\infty}^\infty\mathrm dk\, \omega\,b_{A,\omega k}^\dagger b_{A,\omega k}.
\end{align}$$

They generate future $\displaystyle{\tau_A}$ translations in their respective wedges. Because the global boost reverses orientation between the wedges, its global charge is the difference rather than the sum,

$$\begin{align}
H_\zeta&=K_R-K_L.
\end{align}$$

## Global Vacuum as the Gluing State

After a compatible phase choice for the left and right modes, define the Unruh annihilators

$$\begin{align}
d_{1,\omega k} &=\dfrac{b_{R,\omega k}-e^{-\pi\omega}b_{L,\omega,-k}^\dagger} {\sqrt{1-e^{-2\pi\omega}}},\\
d_{2,\omega k} &=\dfrac{b_{L,\omega k}-e^{-\pi\omega}b_{R,\omega,-k}^\dagger} {\sqrt{1-e^{-2\pi\omega}}}.
\end{align}$$

Their coefficients obey $\displaystyle{(1-e^{-2\pi\omega})^{-1}-e^{-2\pi\omega}(1-e^{-2\pi\omega})^{-1}=1}$, so they have canonical commutators. Their corresponding mode combinations are analytic across the horizons and extend into the future and past regions. The global invariant vacuum is characterized by

$$\begin{align}
d_{1,\omega k}|\Omega_G\rangle &=d_{2,\omega k}|\Omega_G\rangle=0.
\end{align}$$

Formally, with a horizon and volume regulator in place,

$$\begin{align}
|\Omega_G\rangle &\propto\exp\left[ \int_0^\infty\mathrm d\omega\int_{-\infty}^\infty\mathrm dk\, e^{-\pi\omega}b_{R,\omega k}^\dagger b_{L,\omega,-k}^\dagger \right]|0_R\rangle\otimes|0_L\rangle,\\
\langle\Omega_G|b_{R,\omega k}^\dagger b_{R,\omega'k'}|\Omega_G\rangle &=\dfrac{\delta(\omega-\omega')\delta(k-k')}{e^{2\pi\omega}-1},\\
\rho_R&\propto e^{-2\pi K_R}.
\end{align}$$

Thus the quantum gluing datum is not equality of two horizon field operators. It is the global analyticity, or equivalently the Unruh/KMS correlation, that pairs the two wedge mode algebras and reconstructs global correlations. The temperature is $\displaystyle{T=1/(2\pi)}$ in the dimensionless boost time.

The tensor-product and density-matrix notation in the preceding display is regulator-dependent. In the continuum, sharp wedge algebras are Type III and there is no literal factorization of the global Hilbert space into two sharp-wedge Hilbert spaces. The invariant content is the KMS property and the two-point-function continuation; the thermofield-double display is a convenient regulated mnemonic.

## Global Modes and the Other Noether Charges

The standard global positive-frequency modes may be denoted by $\displaystyle{U_I=U_{n\ell}}$, with

$$\begin{align}
\Omega_{n\ell}&=\Delta+2n+|\ell|, &n&=0,1,2,\ldots, &\ell&\in\mathbb Z,\\
\Phi&=\sum_{n,\ell}\left(c_{n\ell}U_{n\ell}+c_{n\ell}^\dagger U_{n\ell}^*\right), &[c_{n\ell},c_{ms}^\dagger]&=\delta_{nm}\delta_{\ell s}.
\end{align}$$

The exact global-to-Rindler transformation can be defined on the split $\displaystyle{t=0}$ Cauchy data by

$$\begin{align}
U_I|_{\Sigma_A} &=\int_0^\infty\mathrm d\omega\int_{-\infty}^\infty\mathrm dk\, \left(\alpha^A_{I;\omega k}u_{A,\omega k} +\beta^A_{I;\omega k}u_{A,\omega k}^*\right),\\
\alpha^A_{I;\omega k} &=(U_I,u_{A,\omega k})_{\Sigma_A}, &\beta^A_{I;\omega k} &=-(U_I,u_{A,\omega k}^*)_{\Sigma_A},\\
c_I &=\sum_{A=R,L}\int_0^\infty\mathrm d\omega\int_{-\infty}^\infty\mathrm dk\, \left(\alpha^{A*}_{I;\omega k}b_{A,\omega k} -\beta^{A*}_{I;\omega k}b_{A,\omega k}^\dagger\right).
\end{align}$$

The ordering of the CPS products follows the convention $\displaystyle{(\Phi_1,\Phi_2)=iX_2^*\cdot X_1\cdot\omega}$, which is linear in the first entry. Both the field and momentum components of the Cauchy data are included. The global Hamiltonian is therefore the exact quadratic pullback

$$\begin{align}
H_{\partial_t} &=\sum_{n,\ell}\Omega_{n\ell} \left(c_{n\ell}^\dagger c_{n\ell}+\dfrac12\right),
\end{align}$$

with each $\displaystyle{c_{n\ell}}$ replaced by the preceding Bogoliubov transform. In the $\displaystyle{b_R,b_L}$ variables it contains number terms and pair-creation/pair-annihilation terms. In particular,

$$\begin{align}
H_{\partial_t}&\neq K_R+K_L.
\end{align}$$

The right-hand side generates two independent boost times, whereas the left-hand side generates global time.

For any global Killing field $\displaystyle{\xi}$, use the scalar stress tensor

$$\begin{align}
T_{\mu\nu} &=\partial_\mu\Phi\partial_\nu\Phi -\dfrac12g_{\mu\nu}\left(\partial_\alpha\Phi\partial^\alpha\Phi+m^2\Phi^2\right)
\end{align}$$

and define

$$\begin{align}
H_\xi &=\int_\Sigma\mathrm d\Sigma_\mu\,T^\mu{}_{\nu}\xi^\nu,\\
\delta H_\xi &=\omega_{\mathrm{global}}(\delta\Phi,\mathcal L_\xi\Phi),\\
i[H_\xi,\Phi]&=\mathcal L_\xi\Phi.
\end{align}$$

At the quantum level the quadratic stress-tensor expressions are understood with one common regulator and normal-ordering prescription. The displayed commutator, rather than an unregulated zero-point constant, is the normalization-independent charge statement.

On the $\displaystyle{\kappa\to\infty}$ matched phase space,

$$\begin{align}
H_\xi &=\int_{\Sigma_R}\mathrm d\Sigma_\mu\,T^\mu{}_{\nu}\xi^\nu +\int_{\Sigma_L}\mathrm d\Sigma_\mu\,T^\mu{}_{\nu}\xi^\nu.
\end{align}$$

No interface term remains: field and normal-derivative matching cancel the cut flux, and $\displaystyle{\omega_R+\omega_L=\omega_{\mathrm{global}}}$. This reconstructs all six $\displaystyle{\mathfrak{so}(2,2)}$ scalar Noether generators. The boost generator is the explicit special case $\displaystyle{H_\zeta=K_R-K_L}$; the global-time generator and the remaining charges are obtained either from the stress-tensor integral or from their Bogoliubov pullbacks.

At finite $\displaystyle{\kappa}$ the plane $\displaystyle{\Gamma}$ is a physical defect. Only the $\displaystyle{SO(2,1)}$ subgroup preserving that plane remains a symmetry, and its charges include the corresponding defect contribution. The full $\displaystyle{SO(2,2)}$ charge family is restored only after $\displaystyle{\kappa\to\infty}$ removes the defect.

## Achieved Claim and Remaining Work

The construction establishes the following statements.

1. The complementary wedge slices form two halves of a global Cauchy slice, although the two Lorentzian wedges themselves do not cover global $\displaystyle{\mathrm{AdS}_{3}}$.
2. The displayed invariant cut action defines a finite-$\displaystyle{\kappa}$ self-adjoint interface problem on the two global-time completions. It approaches two Dirichlet half-spacetimes as $\displaystyle{\kappa\to0}$ and the global scalar as $\displaystyle{\kappa\to\infty}$.
3. At $\displaystyle{\kappa\to\infty}$ the matched wedge Cauchy data, CPS forms, global solution, and all scalar Killing charges are recovered exactly at the classical free-field level.
4. Intrinsic Rindler quantization gives the continuous $\displaystyle{(\omega,k)}$ modes, the KMS/Unruh characterization of the global vacuum, and the explicit boost charge $\displaystyle{K_R-K_L}$.
5. The global-time Hamiltonian and every other global charge are exactly defined in the Rindler oscillator variables by the CPS Bogoliubov kernels.

The following stronger claims have not been proved here.

1. The normalization constant $\displaystyle{\mathcal N_{\omega k}}$ and the overlap kernels $\displaystyle{\alpha^A_{I;\omega k},\beta^A_{I;\omega k}}$ have not been evaluated in closed gamma-function form.
2. No norm-resolvent convergence rate or convergence theorem for the finite-$\displaystyle{\kappa}$ vacua has been established.
3. No ordinary unitary equivalence between a sharp continuum Rindler product Fock representation and the global representation is claimed.
4. Interactions, stress-tensor renormalization beyond normal ordering, and gravitational backreaction are not included.
5. A direct two-exterior horizon action remains impossible without adding the future and past regions or replacing the problem by a regulated Euclidean/path-integral gluing construction.
