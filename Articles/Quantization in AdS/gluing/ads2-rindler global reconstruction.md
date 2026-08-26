# AdS$_2$--Rindler Global Reconstruction from Characteristic Data

> **Status.** The circular transported-global proof has been removed. The intrinsic tier is proved on the smooth compatible null domain declared in Section 2.2 and, for spectral exhaustiveness, on its cyclic lowest-weight completion. The local Goursat theorem, direct null symplectic form, null Hamiltonian, lowest-weight spectrum and ladder modes do not use global modes, a global spectral decomposition, or the finite-$(Z,N)$ project. Extending arbitrary independently completed horizon data onto the full universal cover is not proved; the full-space identification still uses a separately labelled global Friedrichs continuation/completeness theorem. KMS is a smeared algebraic theorem. The finite-$(Z,N)$ construction is only a comparison with no canonical null-regulator theorem.
>
> This results file is the sole substantive note revised here. `ads2-rindler global reconstruction plan.md` and the existing Rindler notes are not modified.

## 1. Result and Convention Manifest

The primary chain is now genuinely characteristic:

$$\begin{align}
\text{compatible data on two intersecting horizons} \xrightarrow{\ \text{action/CPS}\ }
\Omega_{\rm null} \xrightarrow{\ \text{Goursat}+\xi_0\ }
X_0^{\rm null},\ H_0^{\rm null} \xrightarrow{\ \mathfrak{sl}(2,\mathbb R)\ \text{on the horizons}\ }
\{\Delta+n,z_n,\Phi_n\} \xrightarrow{\ \Omega^{-1}\ }
E_D \xrightarrow{\ J_{\rm global}\ }
G^+ \xrightarrow{\ \mathrm{Res}_R\ } \text{smeared boost KMS at }\beta=2\pi .
\end{align}$$

The proof is divided into three noninterchangeable tiers.

1. **Intrinsic null/characteristic derivation.** The inputs are two profiles $(f,g)$, their common corner value, the characteristic equation, the null pullback of the scalar symplectic current, and the ambient AdS$_2$ Killing fields. This tier derives $\Omega_{\rm null}$, $H_0^{\rm null}$, the lowest weight, the ladder, the reconstructed modes, the null CCR, the state, and the smeared KMS property on the domain stated below.
2. **Transported-global comparison.** A standard global Friedrichs Cauchy theorem and the $\rho$-coordinate Sturm--Liouville operator are used only to compare topologies, prove full-space exhaustiveness, and identify the already reconstructed functions with the usual Gegenbauer presentation. No formula in this tier defines the null phase space or generates the spectrum.
3. **Finite-$(Z,N)$ spectral approximation.** Here $Z$ is a timelike near-horizon wall position and $N$ is the number of retained wedge modes. This project projects the already known global-time Noether energy into a regulated Rindler basis. It is not the source of the exact characteristic theory.

The following distinctions remain in force:

1. matching Cauchy data on a spacelike slice, prescribing a history on a timelike cut, and composing Goursat data on intersecting null surfaces are different operations;
2. the two Lorentzian exteriors are causal complements, meet only at the bifurcation point, and omit $F$ and $P$;
3. the exterior marginal states do not determine the left--right covariance; that covariance is B2 data fixed here by the reconstructed global positive-frequency split;
4. no sharp tensor product of two Fulling Fock spaces is asserted;
5. the future and past Goursat crosses are two oriented presentations of one solution and are never added as independent phase spaces.

The embedding and Kruskal conventions are

$$\begin{align}
-(X^{-1})^2-(X^0)^2+(X^1)^2=-L^2,
\end{align}$$

$$\begin{align}
X^{-1}=L\frac{1-UV}{1+UV},\qquad X^0=L\frac{U+V}{1+UV},\qquad X^1=L\frac{V-U}{1+UV}, \tag{1.1}
\end{align}$$

$$\begin{align}
ds^2=-\frac{4L^2\,dU\,dV}{(1+UV)^2}, \tag{1.2}
\end{align}$$

with

$$\begin{align}
R:(U<0,V>0),\quad L:(U>0,V<0),\quad F:(U>0,V>0),\quad P:(U<0,V<0). \tag{1.3}
\end{align}$$

The conformal boundary is $UV=-1$ and the bifurcation point is $U=V=0$. The null-CPS convention is

$$\begin{align}
\Omega=\int\delta q\wedge\delta\pi=-\Omega_{\texttt{formalism.md}}, \qquad \Omega(X_H,\delta)=\delta H, \qquad P=-\Omega^{-1}. \tag{1.4}
\end{align}$$

Thus $\{q,\pi\}_{\rm P}=+\delta$. All frequencies below are dimensionless eigenvalues of $i\partial_t$; physical frequencies are $\omega/L$. Define

$$\begin{align}
\Delta=\frac12+\sqrt{\frac14+m^2L^2},\qquad m^2L^2=\Delta(\Delta-1),\qquad \Delta\geq1. \tag{1.5}
\end{align}$$

## 2. Task A: Exact AdS$_2$ Characteristic Theory

### 2.1 Geometry and Scalar Equation

Global conformal coordinates are derived from (1.1), not assumed:

$$\begin{align}
X^{-1}=L\sec\rho\cos t,\qquad X^0=L\sec\rho\sin t,\qquad X^1=L\tan\rho, \qquad -\frac\pi2<\rho<\frac\pi2, \tag{2.1}
\end{align}$$

and inversion of (1.1) gives

$$\begin{align}
U=\tan\frac{t-\rho}{2},\qquad V=\tan\frac{t+\rho}{2},\qquad ds^2=L^2\sec^2\rho(-dt^2+d\rho^2). \tag{2.2}
\end{align}$$

In the right exterior use

$$\begin{align}
X^{-1}=Lr,\qquad X^0=L\sqrt{r^2-1}\sinh\eta_R, \qquad X^1=L\sqrt{r^2-1}\cosh\eta_R, \tag{2.3}
\end{align}$$

so

$$\begin{align}
ds^2=L^2\left[-(r^2-1)d\eta_R^2+\frac{dr^2}{r^2-1}\right], \qquad U=-e^{-\eta_R}\sqrt{\frac{r-1}{r+1}},\quad V=e^{\eta_R}\sqrt{\frac{r-1}{r+1}}. \tag{2.4}
\end{align}$$

In the left exterior take the future-directed chart

$$\begin{align}
X^{-1}=Lr,\qquad X^0=L\sqrt{r^2-1}\sinh\eta_L, \qquad X^1=-L\sqrt{r^2-1}\cosh\eta_L,
\end{align}$$

$$\begin{align}
U=e^{\eta_L}\sqrt{\frac{r-1}{r+1}},\qquad V=-e^{-\eta_L}\sqrt{\frac{r-1}{r+1}}, \tag{2.4a}
\end{align}$$

with the same metric as (2.4).

The boost is

$$\begin{align}
\zeta=-U\partial_U+V\partial_V=\partial_{\eta_R}=-\partial_{\eta_L}. \tag{2.5}
\end{align}$$

Here $\eta_L$ is future-directed in the left exterior. Since $f(r)=r^2-1$, the horizon surface gravity is $f'(1)/2=1$ in this dimensionless normalization. The four half-horizons are

$$\begin{align}
\mathcal H_R^-:(V=0,U<0),\quad \mathcal H_R^+:(U=0,V>0),
\end{align}$$

$$\begin{align}
\mathcal H_L^-:(U=0,V<0),\quad \mathcal H_L^+:(V=0,U>0). \tag{2.6}
\end{align}$$

Starting from

$$\begin{align}
S[\phi]=-\frac12\int_M\sqrt{-g}\left(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+m^2\phi^2\right)d^2x, \tag{2.7}
\end{align}$$

variation gives $(\Box-m^2)\phi=0$. Since

$$\begin{align}
\sqrt{-g}\,g^{UV}=\sqrt{-g}\,g^{VU}=-1,
\end{align}$$

the exact Kruskal equation is

$$\begin{align}
\boxed{\partial_U\partial_V\phi+\frac{m^2L^2}{(1+UV)^2}\phi=0.} \tag{2.8}
\end{align}$$

### 2.2 Domain, Profiles, and Goursat Map

Start with one future Goursat cross

$$\begin{align}
\mathcal N_F=\{U=0,V\geq0\}\cup\{V=0,U\geq0\} \tag{2.9}
\end{align}$$

and define its data without first referring to a global mode decomposition. Three horizon objects remain distinct. On an affine half-ray with parameter $\lambda\in(0,\infty)$:

1. a **sharp affine profile** is a pointwise function used on the smooth Goursat core;
2. with $s=\log\lambda$, the homogeneous canonical radiation class is $\dot H^{1/2}(\mathbb R_s)$ modulo constants, while finite boost energy requires $\dot H^1(\mathbb R_s)$;
3. a **finite characteristic profile** is a $C^1$ function on a compact null segment with the explicitly retained endpoint/corner values used in the local Goursat theorem.

For the exact calculation use the intrinsic smooth admissible domain $\mathscr D_{\mathcal N}^{\rm adm}$ of pairs $z=(f,g)$ such that

$$\begin{align}
f,g\in C^\infty([0,\infty)),\qquad f(0)=g(0)=c, \tag{2.10}
\end{align}$$

$$\begin{align}
\int_0^\infty\!dV\left[(1+V^2)|f'|^2+a|f|^2\right] +\int_0^\infty\!dU\left[(1+U^2)|g'|^2+a|g|^2\right]<\infty, \qquad a=m^2L^2, \tag{2.11}
\end{align}$$

and $f^{(j)}(x),g^{(j)}(x)=O(x^{-\Delta-j})$ in the compactified endpoint charts. Their corner jets are paired by the characteristic equation: in particular

$$\begin{align}
h_f(V):=\partial_U\phi(0,V),\qquad k_g(U):=\partial_V\phi(U,0),
\end{align}$$

$$\begin{align}
h_f'(V)=-af(V),\quad h_f(0)=g'(0),qquad
k_g'(U)=-ag(U),\quad k_g(0)=f'(0). \tag{2.12}
\end{align}$$

Higher mixed corner jets are obtained by differentiating (2.8). Finally, the local solutions obtained below must continue through successive regular Kruskal charts with the standard $O((\cos\rho)^\Delta)$ conformal falloff. This is a condition on the characteristic solution relation, not a transported norm or a reference to global modes. It defines a compatible domain but does not claim that an unrestricted product of completed half-ray spaces is admissible or onto.

On a future rectangle $0\leq U\leq U_0$, $0\leq V\leq V_0$ contained in $1+UV>0$, prescribe

$$\begin{align}
f(V)=\phi(0,V),\qquad g(U)=\phi(U,0),\qquad f(0)=g(0)=c. \tag{2.13}
\end{align}$$

Twice integrating (2.8) gives the exact Volterra equation

$$\begin{align}
\boxed{ \phi(U,V)=f(V)+g(U)-c -m^2L^2\int_0^Udu\int_0^Vdv\, \frac{\phi(u,v)}{(1+uv)^2}.} \tag{2.14}
\end{align}$$

If $f,g\in C^1$ satisfy (2.13), Picard iteration converges uniformly: the $n$th difference is bounded by

$$\begin{align}
C\frac{(m^2L^2U_0V_0)^n}{(n!)^2}
\sup_{[0,U_0]\times[0,V_0]}(1+UV)^{-2n}.
\tag{2.15}
\end{align}$$

On any compact rectangle away from $UV=-1$ the last factor is finite. The same estimate for a difference gives uniqueness and continuous dependence; differentiation of (2.14) gives (2.8). The past rectangle is identical after reversing both affine parameters. Conformal-endpoint compatibility is not an extra free datum: it is the requirement that the continued solution obey the standard/Friedrichs falloff declared after (2.12).

Equation (2.14) therefore defines the local Goursat map

$$\begin{align}
G_{U_0,V_0}^{F}:(f,g)\longmapsto\phi|_{[0,U_0]\times[0,V_0]}
\tag{2.16}
\end{align}$$

directly from the two profiles. The analogous past map is obtained by reversing both affine parameters. On $\mathscr D_{\mathcal N}^{\rm adm}$, $G_{\mathcal N}$ will mean the relation obtained by composing these local Goursat maps and changing regular Kruskal charts. If one invokes the standard global Friedrichs well-posedness theorem, this relation has a unique universal-cover continuation $G_{\mathcal N}^{\rm univ}$. That global PDE theorem is an analytic continuation input; it is not used to define the profiles, $\Omega_{\rm null}$, or the null lowest-weight module. Surjectivity from arbitrary independently completed horizons remains open.

### 2.3 Null CPS, Orientations, and Corner Policy

The covariant symplectic current is

$$\begin{align}
\omega^\mu(\delta_1,\delta_2)= \delta_1\phi\,\partial^\mu\delta_2\phi -\delta_2\phi\,\partial^\mu\delta_1\phi. \tag{2.17}
\end{align}$$

With the incoming orientation of a future Goursat rectangle,

$$\begin{align}
\Omega_{U=0}(f_1,f_2)=\int dV\,(f_1f_2'-f_2f_1'), \qquad \Omega_{V=0}(g_1,g_2)=\int dU\,(g_1g_2'-g_2g_1'). \tag{2.18}
\end{align}$$

Reversing the geometric boundary orientation reverses the corresponding term. The **primary definition** is the direct action/CPS pullback

$$\begin{align}
\boxed{ \Omega_{\rm null}(z_1,z_2) :=\int_0^\infty(f_1f_2'-f_2f_1')dV +\int_0^\infty(g_1g_2'-g_2g_1')dU.} \tag{2.19}
\end{align}$$

The two incoming rays of $F$ form one Goursat cross; the two outgoing rays of $P$ form another. Conservation says that their oriented forms are equal. They are two presentations of the same solution and must not be added. The common value $c$ is shared, not doubled. On finite segments,

$$\begin{align}
\Omega_I(f_1,f_2)=2\int_I f_1f_2'\,dx-[f_1f_2]_{\partial I}, \tag{2.20}
\end{align}$$

so varying $c$ retains two corner terms. Their induced orientations are opposite and they cancel under $\delta f(0)=\delta g(0)$. If $c$ is fixed, its variation is absent. No independent corner oscillator is added.

For standard falloff $\phi=O((\cos\rho)^\Delta)$, the conformal-boundary symplectic flux is $O((\cos\rho)^{2\Delta-1})$ and vanishes for $\Delta\geq1$ on the smooth core; the Friedrichs form closure gives the corresponding weak statement on the energy space.

On compact characteristic diamonds, Stokes' theorem applied to the conserved current proves directly

$$\begin{align}
(G_{U_0,V_0}^{F})^*\Omega_\Sigma=\Omega_{\rm null}^{[0,U_0]\times[0,V_0]}. \tag{2.21}
\end{align}$$

This is the intrinsic symplectic-composition theorem. After a universal-cover continuation has independently been supplied, a global Cauchy slice gives the **comparison identity**

$$\begin{align}
\Omega_{\rm null}(z_1,z_2) =\Omega_0\bigl(C_0G_{\mathcal N}^{\rm univ}z_1, C_0G_{\mathcal N}^{\rm univ}z_2\bigr). \tag{2.22}
\end{align}$$

Equation (2.22) is not a definition. It compares two action-derived fluxes. Completing with a transported global energy norm is therefore a comparison construction only; the intrinsically defined finite-energy form (2.11) and its cyclic completion are the domains used in the null derivation.

## 3. Tasks B--C: Global Time and Its Hamiltonian on Null Data

### 3.1 The Induced Vector Field

Acting with

$$\begin{align}
\partial_t=-X^0\partial_{X^{-1}}+X^{-1}\partial_{X^0} \tag{3.1}
\end{align}$$

on (1.1) and solving for its coordinate components gives

$$\begin{align}
\boxed{\xi_0=\frac12(1+U^2)\partial_U+ \frac12(1+V^2)\partial_V.} \tag{3.2}
\end{align}$$

Its flow in one Kruskal chart is the Möbius transformation

$$\begin{align}
U_s=\frac{U+\tan(s/2)}{1-U\tan(s/2)},\qquad V_s=\frac{V+\tan(s/2)}{1-V\tan(s/2)}. \tag{3.3}
\end{align}$$

The apparent poles only change the Kruskal chart; the lift is the complete translation $t\mapsto t+s$ on the universal cover. Although $\xi_0$ is not tangent to either ray, the local Goursat map supplies its transverse derivative. On every compact cross define

$$\begin{align}
\boxed{X_0^{\rm null}z :=\gamma_{\mathcal N}\mathcal L_{\xi_0}G_{U_0,V_0}^{F}z.} \tag{3.4}
\end{align}$$

Overlapping rectangles agree by Goursat uniqueness. On $\mathscr D_{\mathcal N}^{\rm adm}$ this gives the universal-cover action whenever the continuation in Section 2.2 exists. The cyclic domain constructed in Section 5 is invariant by construction. Tangency on an arbitrary independently completed horizon Hilbert space is not asserted.

Write $a=m^2L^2$. On $U=0$,

$$\begin{align}
(X_0^{\rm null}f)(V)=\frac12h_f(V)+\frac12(1+V^2)f'(V), \qquad h_f(V):=\partial_U\phi(0,V), \tag{3.5}
\end{align}$$

and (2.8) gives

$$\begin{align}
h_f'(V)=-a f(V),\qquad h_f(V)=h_0-a\int_0^Vf(s)ds. \tag{3.6}
\end{align}$$

On $V=0$,

$$\begin{align}
(X_0^{\rm null}g)(U)=\frac12k_g(U)+\frac12(1+U^2)g'(U),
\end{align}$$

$$\begin{align}
k_g'(U)=-a g(U),\qquad k_g(U)=k_0-a\int_0^Ug(s)ds. \tag{3.7}
\end{align}$$

The integration constants are already contained in the opposite profiles,

$$\begin{align}
h_0=\partial_U\phi(0,0)=g'(0),\qquad k_0=\partial_V\phi(0,0)=f'(0). \tag{3.7a}
\end{align}$$

They are not freely appended horizon momenta. Equations (3.5)--(3.7a) prove directly that “restrict after Lie derivative” agrees with reconstruction of the transverse derivative from the EOM and exhibit the coupling of the two profiles. The same formulas with reversed affine orientations apply on the $P$ cross.

### 3.2 Hamiltonian, Moving Cut, and Integrability

Use the direct form (2.19), not (2.22). For real data define

$$\begin{align}
\boxed{ H_0^{\rm null}[z] =\frac12\Omega_{\rm null}(X_0^{\rm null}z,z).} \tag{3.8}
\end{align}$$

Before any integration by parts this is already a controlled profile functional:

$$\begin{align}
H_0^{\rm null}[f,g] =\frac12\int_0^\infty dV\left[(X_0^{\rm null}f)f' -f(X_0^{\rm null}f)'\right] +\frac12\int_0^\infty dU\left[(X_0^{\rm null}g)g' -g(X_0^{\rm null}g)'\right], \tag{3.8a}
\end{align}$$

where (3.5)--(3.7a) express the transverse derivatives through the paired data and finite integrals. In fact it becomes local on the two rays. For $A(x)=1+x^2$, $y'= -af$, and $Xf=(y+Af')/2$,

$$\begin{align}
(Xf)f'-f(Xf)' =A(f')^2+af^2+\frac{d}{dx} \left[\frac12f\bigl(y-Af'\bigr)\right]. \tag{3.8b}
\end{align}$$

At the common corner the two primitives are

$$\begin{align}
\frac c2\bigl[g'(0)-f'(0)\bigr], \qquad \frac c2\bigl[f'(0)-g'(0)\bigr], \tag{3.8c}
\end{align}$$

and cancel. The endpoint at infinity vanishes as $x^{1-2\Delta}$. Therefore

$$\begin{align}
\boxed{ H_0^{\rm null}[f,g] =\frac12\int_0^\infty\!dV\left[(1+V^2)(f')^2+af^2\right] +\frac12\int_0^\infty\!dU\left[(1+U^2)(g')^2+ag^2\right].} \tag{3.8d}
\end{align}$$

This positive quadratic form is written solely in the two characteristic profiles. It neither contains $C_0G_{\mathcal N}$ nor assumes a global Hamiltonian.

For an arbitrary compatible variation $e$, the exact one-ray identity is

$$\begin{align}
\delta H_f-\Omega_f(Xf,e) =\left[\frac12\bigl(Af'-y\bigr)e\right]_{0}^{\infty}. \tag{3.9a}
\end{align}$$

At $x=0$, $e_f(0)=e_g(0)=\delta c$, $y_f(0)=g'(0)$, and $y_g(0)=f'(0)$, so the two lower-end terms cancel exactly; the upper terms vanish by the declared falloff. Hence

$$\begin{align}
\boxed{\iota_{X_0^{\rm null}}\Omega_{\rm null} =\delta H_0^{\rm null}.} \tag{3.9}
\end{align}$$

This is an identity on $\mathscr D_{\mathcal N}^{\rm adm}$ wherever the global symmetry is tangent, and unconditionally on the invariant cyclic core of Section 5. It is not a modewise tautology.

The fixed cross is moved by global time, so the scalar moving-embedding audit is still required. Use a reference cross $\mathcal N_0$ with embedding $X$ and

$$\begin{align}
\Delta_X\phi=\delta\phi+\mathcal L_\chi\phi, \qquad \chi=\delta X\circ X^{-1}. \tag{3.11}
\end{align}$$

For a fixed AdS background, the exact shape-variation identity is

$$\begin{align}
\delta(X^*\mathbf L)=X^*\left(E(\phi)\delta\phi +d\left[\boldsymbol\theta(\phi,\delta\phi) +\iota_\chi\mathbf L\right]\right). \tag{3.11a}
\end{align}$$

Here (3.11) records the variation of the pulled-back scalar itself, while (3.11a) keeps the fixed-background field variation and the shape term separate. Rewriting everything with $\Delta_X$ would require including the corresponding metric/background variation; for the present global-time displacement $\chi=\xi_0$ the metric term vanishes because $\xi_0$ is Killing. The embedding-extended endpoint potential is therefore the pullback of $\boldsymbol\theta+\iota_\chi\mathbf L$, with all endpoints retained. Antisymmetrizing gives the bulk current plus endpoint transgression. Equations (3.8b)--(3.9a) are its explicit scalar evaluation: the two bifurcation pieces cancel and the standard conformal endpoint contributes zero. The moving and fixed presentations agree on the declared tangent domain. Pulling back the action alone would not prove integrability; the direct residual (3.9a) does. No gravitational Brown--York/Hayward momentum and no embedding oscillator is imported. Set $H_0^{\rm null}[0]=0$.

**Transported-global comparison only.** Once $G_{\mathcal N}^{\rm univ}$ and a global Cauchy slice are independently available, (2.22) turns (3.8d) into

$$\begin{align}
H_0^{\rm null}[z] =\frac12\int_{-\pi/2}^{\pi/2} \left[p_z^2+(q_z')^2+a\sec^2\rho\,q_z^2\right]d\rho =Q[\xi_0], \tag{3.12}
\end{align}$$

where $(q_z,p_z)=C_0G_{\mathcal N}^{\rm univ}z$. This equality checks the null result against the global energy; it does not define it.

## 4. Task D: Hamiltonian $\mathfrak{sl}(2,\mathbb R)$

The two remaining embedding generators are

$$\begin{align}
\xi_1=-\frac12(1-U^2)\partial_U+ \frac12(1-V^2)\partial_V, \qquad \xi_2=-U\partial_U+V\partial_V. \tag{4.1}
\end{align}$$

In global coordinates,

$$\begin{align}
\xi_0=\partial_t,
\end{align}$$

$$\begin{align}
\xi_1=-\sin\rho\sin t\,\partial_t+ \cos\rho\cos t\,\partial_\rho, \qquad \xi_2=\sin\rho\cos t\,\partial_t+ \cos\rho\sin t\,\partial_\rho. \tag{4.2}
\end{align}$$

Their brackets are

$$\begin{align}
[\xi_0,\xi_1]=-\xi_2,\qquad [\xi_0,\xi_2]=\xi_1,\qquad [\xi_1,\xi_2]=\xi_0. \tag{4.3}
\end{align}$$

For $a=0,1,2$, set

$$\begin{align}
X_a^{\rm null}=\gamma_{\mathcal N}\mathcal L_{\xi_a}G_{U_0,V_0}^{F}, \qquad H_a^{\rm null}=\frac12\Omega_{\rm null}(X_a^{\rm null}z,z). \tag{4.4}
\end{align}$$

The local Goursat maps agree on overlaps, so these operators are defined without global Cauchy transport. The moving-cross prescription and endpoint cancellation are the same as in Section 3. Therefore all three charges are integrable on the common group-invariant smooth core generated in Section 5. On the larger admissible domain, common tangency is conditional on the universal-cover continuation theorem. With $H_a[0]=0$, the convention (1.4) makes the Hamiltonian-vector assignment an anti-homomorphism, $X_{\{H_a,H_b\}}=-[X_a,X_b]$. Hence the charge algebra is

$$\begin{align}
\{H_0,H_1\}=H_2,\qquad \{H_0,H_2\}=-H_1,\qquad \{H_1,H_2\}=-H_0, \tag{4.5}
\end{align}$$

with no cocycle or boundary constant.

On complexified solutions define

$$\begin{align}
L_0=i\mathcal L_{\xi_0},\qquad L_\pm=i\mathcal L_{\xi_1}\pm\mathcal L_{\xi_2}. \tag{4.6}
\end{align}$$

Then $[L_0,L_\pm]=\pm L_\pm$ and $[L_+,L_-]=-2L_0$. The adjoint statement is already null-side. On the positive-frequency null subspace define

$$\begin{align}
(z_1,z_2)_{\mathcal N}:=i\Omega_{\rm null}(\bar z_1,z_2). \tag{4.6a}
\end{align}$$

The action-derived flux is invariant under each real Killing flow. With the same endpoint cancellation as (3.9a), $\mathcal L_{\xi_a}$ is anti-adjoint on the common core. Consequently

$$\begin{align}
L_0^\dagger=L_0, \qquad L_+^\dagger=L_-. \tag{4.6b}
\end{align}$$

This does not use a reconstructed global one-particle product. The scalar Casimir convention is

$$\begin{align}
\boxed{ \mathcal C=-\mathcal L_{\xi_0}^2+ \mathcal L_{\xi_1}^2+ \mathcal L_{\xi_2}^2=L^2\Box.} \tag{4.7}
\end{align}$$

Thus on solutions

$$\begin{align}
\boxed{\mathcal C=m^2L^2=\Delta(\Delta-1).} \tag{4.8}
\end{align}$$

## 5. Tasks E--F: Null Lowest-Weight Spectrum and Reconstructed Modes

### 5.1 Lowest Weight Directly on the Future Goursat Cross

No $\rho$-coordinate ansatz is used in this subsection. On $U=0$, the operators (4.6) act as

$$\begin{align}
L_-f=\frac i2\left[-h_f+(1+iV)^2f'\right], \qquad L_0f=\frac i2\left[h_f+(1+V^2)f'\right]. \tag{5.1}
\end{align}$$

On $V=0$,

$$\begin{align}
L_-g=\frac i2\left[k_g-(1+iU)^2g'\right], \qquad L_0g=\frac i2\left[k_g+(1+U^2)g'\right]. \tag{5.2}
\end{align}$$

Let $z_0=(f_0,g_0)$ obey $L_-z_0=0$ and $L_0z_0=h z_0$. The first equation fixes the transverse derivatives,

$$\begin{align}
h_{f_0}=(1+iV)^2f_0', \qquad k_{g_0}=(1+iU)^2g_0'. \tag{5.3}
\end{align}$$

Substitution into the $L_0$ equations gives two ordinary horizon equations,

$$\begin{align}
i(1+iV)f_0'=hf_0, \qquad i(1+iU)g_0'=hg_0. \tag{5.4}
\end{align}$$

With branches continued from the common corner,

$$\begin{align}
\boxed{ f_0(V)=C(1+iV)^{-h}, \qquad g_0(U)=C(1+iU)^{-h}.} \tag{5.5}
\end{align}$$

The equality of the constants is exactly $f_0(0)=g_0(0)$; no global spatial mode has entered. Differentiating (5.3) and using (5.5) gives

$$\begin{align}
h_{f_0}'=-h(h-1)f_0, \qquad k_{g_0}'=-h(h-1)g_0. \tag{5.6}
\end{align}$$

The characteristic equation (2.12) therefore requires

$$\begin{align}
\boxed{h(h-1)=m^2L^2.} \tag{5.7}
\end{align}$$

The two roots are $h=\Delta$ and $h=1-\Delta$. The standard endpoint condition in $\mathscr D_{\mathcal N}^{\rm adm}$ selects $h=\Delta$; for $m=0$ it excludes the constant $h=0$ solution and keeps $h=1$. Thus

$$\begin{align}
\boxed{L_-z_0=0,\qquad L_0z_0=\Delta z_0} \tag{5.8}
\end{align}$$

is obtained entirely from the paired characteristic profiles and the EOM.

### 5.2 Null Ladder, Common Domain, and Normalization

The raising operator is also explicit on the horizons:

$$\begin{align}
L_+f=\frac i2\left[-h_f+(1-iV)^2f'\right], \qquad L_+g=\frac i2\left[k_g-(1-iU)^2g'\right]. \tag{5.9}
\end{align}$$

Starting with (5.5), define recursively

$$
\begin{aligned}
h_n(V)&=g_n'(0)-a\int_0^Vf_n(s)ds,\\
k_n(U)&=f_n'(0)-a\int_0^Ug_n(s)ds,\\
f_{n+1}(V)&=\frac i2\left[-h_n(V)+(1-iV)^2f_n'(V)\right],\\
g_{n+1}(U)&=\frac i2\left[k_n(U)-(1-iU)^2g_n'(U)\right].
\end{aligned}
\tag{5.10}
$$

This constructs the profiles before any bulk special function is written. Goursat uniqueness and the fact that $L_+$ is a scalar symmetry imply that every pair preserves the EOM corner jets. Its large-affine behavior remains $O(x^{-\Delta})$, so it stays in the common action/Hamiltonian domain. The exact checks through $n=4$ verify the eigenvalue, KG, and corner residuals without making a mode ansatz.

Since $[L_0,L_+]=L_+$,

$$\begin{align}
L_0L_+^nz_0=(\Delta+n)L_+^nz_0. \tag{5.11}
\end{align}$$

Define the intrinsic cyclic null space

$$\begin{align}
\mathcal H_{\mathcal N}^{\rm cyc} :=\overline{\operatorname{span}\{L_+^nz_0, \overline{L_+^nz_0}:n\geq0\}} \tag{5.12}
\end{align}$$

in the graph norm of $H_0^{\rm null}$ and the null KG product (4.6a). This domain is declared without a global mode decomposition. It is the exact scope of the primary spectral theorem; equality with the full global Friedrichs theory is the comparison theorem in Section 5.4.

The lowest null norm is computed directly from the two rays:

$$\begin{align}
i\Omega_{\rm null}(\bar z_0,z_0) =4\Delta|C|^2\int_0^\infty(1+x^2)^{-\Delta-1}dx =2|C|^2\sqrt\pi\frac{\Gamma(\Delta+\tfrac12)}{\Gamma(\Delta)}. \tag{5.13}
\end{align}$$

Choose

$$\begin{align}
N_{0,\Delta} =\left[\frac{\Gamma(\Delta)}{2\sqrt\pi\, \Gamma(\Delta+\tfrac12)}\right]^{1/2}. \tag{5.14}
\end{align}$$

Using $L_+^\dagger=L_-$ and the algebra gives

$$\begin{align}
\|L_+^nz_0\|_{\mathcal N}^2=n!(2\Delta)_n. \tag{5.15}
\end{align}$$

Hence the phase choice

$$\begin{align}
\boxed{ z_n:=\frac{i^n}{\sqrt{n!(2\Delta)_n}}L_+^nz_0} \tag{5.16}
\end{align}$$

is orthonormal and obeys

$$\begin{align}
\boxed{L_0z_n=(\Delta+n)z_n, \qquad \omega_n=\Delta+n.} \tag{5.17}
\end{align}$$

The unique standard-normalizable lowest profile makes the positive-energy multiplicity one. The ladder alternates spatial parity after reconstruction, so it contains both even and odd sectors. The conjugates $\bar z_n$ are the negative-frequency tower, not a second omitted positive tower. Abstract positive-energy $\widetilde{SL}(2,\mathbb R)$ representation theory therefore gives one $D_\Delta^+$ on $\mathcal H_{\mathcal N}^{\rm cyc}$. A claim that every element of an unrestricted horizon completion belongs to this module would require the still-open onto theorem and is not made.

### 5.3 Goursat Bulk Modes First; Global Special Functions Last

The two profiles (5.5) have the exact Goursat reconstruction

$$\begin{align}
\boxed{ \Phi_0(U,V)=N_{0,\Delta} \left[\frac{1+UV}{(1+iU)(1+iV)}\right]^\Delta.} \tag{5.18}
\end{align}$$

It restricts to (5.5), and direct substitution gives

$$\begin{align}
\partial_U\partial_V\Phi_0+ \frac{\Delta(\Delta-1)}{(1+UV)^2}\Phi_0=0. \tag{5.19}
\end{align}$$

Local uniqueness therefore identifies it with $G_{\mathcal N}z_0$. Define the higher bulk modes by characteristic reconstruction,

$$\begin{align}
\Phi_n:=G_{\mathcal N}z_n =\frac{i^n}{\sqrt{n!(2\Delta)_n}}L_+^n\Phi_0. \tag{5.20}
\end{align}$$

The commutator algebra and (5.19) prove, still in Kruskal variables,

$$\begin{align}
L_0\Phi_n=(\Delta+n)\Phi_n, \qquad (\Box-m^2)\Phi_n=0. \tag{5.21}
\end{align}$$

Only now change to global coordinates. The elementary identity

$$\begin{align}
\frac{1+UV}{(1+iU)(1+iV)}=e^{-it}\cos\rho \tag{5.22}
\end{align}$$

turns (5.18) into the lowest global-coordinate expression. Acting with the already derived $L_+$ gives

$$\begin{align}
L_+\left[e^{-i(\Delta+n)t}(\cos\rho)^\Delta
C_n^\Delta(\sin\rho)\right] =-i(n+1)e^{-i(\Delta+n+1)t}(\cos\rho)^\Delta C_{n+1}^\Delta(\sin\rho). \tag{5.23}
\end{align}$$

Thus the closed-form identification, as an output of (5.20), is

$$\begin{align}
\boxed{ \Phi_n(t,\rho)=N_{n,\Delta}e^{-i(\Delta+n)t} (\cos\rho)^\Delta C_n^\Delta(\sin\rho),} \tag{5.24}
\end{align}$$

$$\begin{align}
N_{n,\Delta}=N_{0,\Delta}\sqrt{\frac{n!}{(2\Delta)_n}} =\left[ \frac{2^{2\Delta-2}n!\Gamma(\Delta)^2} {\pi\Gamma(n+2\Delta)} \right]^{1/2}. \tag{5.25}
\end{align}$$

The normalization (5.25) was already fixed by the null flux and ladder algebra. The global integral

$$\begin{align}
\int_{-\pi/2}^{\pi/2}(\cos\rho)^{2\Delta} \left[C_n^\Delta(\sin\rho)\right]^2d\rho =\frac{\pi2^{1-2\Delta}\Gamma(n+2\Delta)} {n!(n+\Delta)\Gamma(\Delta)^2} \tag{5.26}
\end{align}$$

is an independent normalization check. Likewise the horizon restrictions of (5.24),

$$\begin{align}
f_n(V)=\Phi_n(\arctan V,\arctan V), \qquad g_n(U)=\Phi_n(\arctan U,-\arctan U), \tag{5.27}
\end{align}$$

are closed-form identifications of the profiles already generated by (5.10), not their definition.

### 5.4 Independent Global-Coordinate Exhaustiveness Check

This subsection is comparison tier. Let

$$\begin{align}
A_\Delta=-\partial_\rho^2+\Delta(\Delta-1)\sec^2\rho \tag{5.28}
\end{align}$$

be the global Friedrichs operator and set

$$\begin{align}
B_\Delta=\partial_\rho+\Delta\tan\rho, \qquad B_\Delta^\dagger=-\partial_\rho+\Delta\tan\rho. \tag{5.29}
\end{align}$$

Then

$$\begin{align}
A_\Delta=B_\Delta^\dagger B_\Delta+\Delta^2, \qquad B_\Delta B_\Delta^\dagger+\Delta^2=A_{\Delta+1}. \tag{5.30}
\end{align}$$

Compact resolvent, simple Sturm--Liouville spectrum, and Darboux induction show that the global Friedrichs spectrum contains exactly the same $\Delta+n$ tower and no residual sector. Its spectral theorem gives density in $L^2$ and in the form domain. Comparing (5.24) with that complete basis proves that the universal-cover continuation of $\mathcal H_{\mathcal N}^{\rm cyc}$ is the full global Friedrichs solution space. This establishes full-space exhaustiveness, but it did not generate (5.7), (5.17), or the profiles.

The field expansion

$$\begin{align}
\widehat\phi=\sum_{n\geq0} (a_n\Phi_n+a_n^\dagger\Phi_n^*), \qquad [a_n,a_m^\dagger]=\delta_{nm}, \tag{5.31}
\end{align}$$

therefore quantizes the null-derived cyclic theory; the global spectral theorem is the independent equality check that this cyclic theory exhausts the standard global presentation.

## 6. Task G: Pauli--Jordan Function and CCR

Let $\mathcal T_D=C_c^\infty(M^\circ)/ (\Box-m^2)C_c^\infty(M^\circ)$, with the standard reflecting propagator and smearings kept away from ill-defined sharp horizon pullbacks. On the characteristic Hamiltonian test algebra, the symplectic inverse is

$$\begin{align}
E_{\rm null}(F,G)=\Omega_{\rm null} \left((\Omega_{\rm null}^\flat)^{-1}F, (\Omega_{\rm null}^\flat)^{-1}G\right). \tag{6.1}
\end{align}$$

Green's identity and the local symplectic theorem (2.21) show first that the reconstructed inverse equals the causal propagator on every compact characteristic diamond. Universal-cover continuation gives $E_D$ on the declared cyclic domain. The independently expanded null basis then yields

$$\begin{align}
\boxed{ E_D(x,x')=-i\sum_{n\geq0} \left[\Phi_n(x)\Phi_n^*(x')- \Phi_n^*(x)\Phi_n(x')\right],} \tag{6.2}
\end{align}$$

as a smeared distribution. The sign is fixed by (1.4). Equality with (6.1) follows from the null orthonormal resolution (5.12)--(5.16); equality with the full global $E_D$ uses the exhaustiveness comparison in Section 5.4. Both sides solve the same advanced-minus-retarded problem and have

$$\begin{align}
E_D|_{t=t'}=0, \qquad \partial_tE_D(t,\rho;t',\rho')|_{t=t'}=-\delta(\rho-\rho'). \tag{6.3}
\end{align}$$

Consequently

$$\begin{align}
[\widehat\phi(F),\widehat\phi(G)]=iE_D(F,G)\mathbf1, \tag{6.4}
\end{align}$$

and the Weyl generators obey

$$\begin{align}
W(F)W(G)=e^{-iE_D(F,G)/2}W(F+G). \tag{6.5}
\end{align}$$

The kernel is antisymmetric, satisfies the KG equation and standard boundary condition in both entries, continues across both horizons, and has support in the causal relation of the AdS initial-boundary-value problem, including reflected causal propagation. These are statements after smearing; (6.2) is not a pointwise horizon commutator.

## 7. Task H: Global Vacuum and Correlators

The positive-frequency split is defined on the null-derived ladder by

$$\begin{align}
J_{\rm null}z_n=iz_n, \qquad J_{\rm null}\bar z_n=-i\bar z_n. \tag{7.1}
\end{align}$$

The positivity of (3.8d) and (5.17) makes this the positive split of $H_0^{\rm null}$. The quasifree global vacuum is defined intrinsically by $a_n|0_G\rangle=0$. Its Wightman distribution is first obtained from the null-derived reconstructed modes:

**Comparison only.** Under the global Cauchy identification of Section 5.4, the same complex structure is

$$\begin{align}
J_0(q,p)=(-A_\Delta^{-1/2}p,A_\Delta^{1/2}q). \tag{7.1a}
\end{align}$$

$$\begin{align}
\boxed{G^+(x,x')=\sum_{n\geq0}\Phi_n(x)\Phi_n^*(x').} \tag{7.2}
\end{align}$$

Positivity is immediate after smearing,

$$\begin{align}
\sum_{ij}\bar c_i c_jG^+(F_i,F_j) =\sum_n\left|\sum_i c_i\Phi_n(F_i)\right|^2\geq0, \tag{7.3}
\end{align}$$

and

$$\begin{align}
G^+(x,x')-G^+(x',x)=iE_D(x,x'). \tag{7.4}
\end{align}$$

Now, and only now, the mode sum may be resummed. To see that this is a derivation rather than an imported kernel, insert (5.25) into (7.2), use

$$\begin{align}
\frac{n!}{\Gamma(n+2\Delta)} =\frac1{\Gamma(2\Delta-1)} \int_0^1s^n(1-s)^{2\Delta-2}ds, \tag{7.4a}
\end{align}$$

and sum the resulting bilinear Gegenbauer Poisson kernel for $|se^{-i(t-t'-i\epsilon)}|<1$. The remaining Euler integral is the standard integral representation of $Q_{\Delta-1}$. Analytic continuation in $\Delta\geq1$ includes the endpoint $\Delta=1$. Define

$$\begin{align}
\zeta_\epsilon(x,x')=-\frac{X(x)\cdot X(x'_{-i\epsilon})}{L^2}. \tag{7.5}
\end{align}$$

The sum gives

$$\begin{align}
\boxed{G^+(x,x')=\frac1{2\pi}Q_{\Delta-1}(\zeta_\epsilon).} \tag{7.6}
\end{align}$$

On the universal cover, $Q_{\Delta-1}$ in (7.6) means the sheet obtained by continuous $i\epsilon$ continuation of the mode sum, not a principal branch reset after every $2\pi$ in global time. This retains the phase $e^{-2\pi i\Delta}$ required by (7.2) for noninteger $\Delta$. Equation (7.6) is a derived closed form and thereafter a comparison/checking tool. It has the interior two-dimensional Hadamard singularity $-(4\pi)^{-1}\log\sigma_\epsilon$; the claim here is the usual local Hadamard property away from the timelike conformal boundary, not a separate boundary wavefront-set theorem.

For two right-wedge points,

$$\begin{align}
\zeta_{RR}=rr'-\sqrt{r^2-1}\sqrt{r'^2-1} \cosh(\eta_R-\eta_R'-i\epsilon). \tag{7.7}
\end{align}$$

For one point in each exterior,

$$\begin{align}
\zeta_{RL}=rr'+\sqrt{r^2-1}\sqrt{r'^2-1} \cosh(\eta_R+\eta_L'-i\epsilon_G), \tag{7.8}
\end{align}$$

where $\epsilon_G$ is inherited from decreasing global time of the second argument. Thus

$$\begin{align}
G^+_{RL}=\frac1{2\pi}Q_{\Delta-1}(\zeta_{RL})\neq0; \tag{7.9}
\end{align}$$

the cross covariance is explicit B2 data. For an exterior point and a future-region point it is safest to use the chart-independent Kruskal expression

$$\begin{align}
\zeta(U,V;U',V') =1-\frac{2(U'-U)(V'-V)}{(1+UV)(1+U'V')}, \tag{7.10}
\end{align}$$

with $U<0<V$ and $U',V'>0$, and insert it into (7.6). This gives the requested $RF$ continuation without treating the horizon as a boundary.

The remaining propagators are derived from the same pair $(G^+,E_D)$:

$$\begin{align}
G_F(x,x')=\theta(t-t')G^+(x,x')+\theta(t'-t)G^+(x',x),
\end{align}$$

$$\begin{align}
G_{\rm ret}(x,x')=\theta(t-t')E_D(x,x'),\qquad G_{\rm adv}(x,x')=-\theta(t'-t)E_D(x,x'). \tag{7.11}
\end{align}$$

## 8. Task I: Global--Rindler Transform and KMS

### 8.1 Intrinsic Wedge Modes

Set

$$\begin{align}
x=\operatorname{arccoth}r,qquad r=\coth x,qquad 0<x<\infty. \tag{8.1}
\end{align}$$

Then the wedge equation is

$$\begin{align}
\left[-\partial_{\eta}^2+\partial_x^2- \frac{\Delta(\Delta-1)}{\sinh^2x}\right]\phi=0, \tag{8.2}
\end{align}$$

and the Friedrichs radial operator has simple absolutely continuous spectrum $\omega^2\in[0,\infty)$. Indeed the potential is nonnegative, behaves as $\Delta(\Delta-1)x^{-2}$ at the conformal endpoint, and decays exponentially at the horizon. The Friedrichs condition fixes the endpoint solution; standard half-line Jost theory then gives purely absolutely continuous spectrum on $(0,\infty)$. Nonnegativity excludes negative spectrum, and the regular zero-energy solution is unbounded at the horizon (for $\Delta=1$ it is proportional to $x$), so there is no zero eigenvalue or resonance. A boundary-normalizable Jost solution is

$$\begin{align}
F_\omega(r)=r^{-\Delta}(1-r^{-2})^{-i\omega/2} {}_2F_1\left( \frac{\Delta-i\omega}{2}, \frac{\Delta+1-i\omega}{2}; \Delta+\frac12;r^{-2}\right). \tag{8.3}
\end{align}$$

Near the horizon,

$$\begin{align}
F_\omega\sim A_-(\omega)(1-r^{-2})^{-i\omega/2} +A_+(\omega)(1-r^{-2})^{i\omega/2}, \tag{8.4}
\end{align}$$

$$\begin{align}
A_-(\omega)= \frac{\Gamma(\Delta+\tfrac12)\Gamma(i\omega)} {\Gamma(\tfrac{\Delta+1+i\omega}{2}) \Gamma(\tfrac{\Delta+i\omega}{2})}, \qquad A_+(\omega)=\overline{A_-(\omega)}. \tag{8.5}
\end{align}$$

The hypergeometric expression is real for real $\omega$: its boundary coefficient is real and the two horizon coefficients in (8.5) are conjugate. Normalize it by

$$\begin{align}
\psi_\omega(x)= \frac{F_\omega(\coth x)} {\sqrt{2\pi}|A_-(\omega)|} \tag{8.6}
\end{align}$$

so that the two horizon plane-wave coefficients both have modulus $1/\sqrt{2\pi}$. The two horizon branches in (8.4) are both retained. Then

$$\begin{align}
\int_0^\infty\psi_\omega(x)\psi_{\omega'}(x)dx =\delta(\omega-\omega'), \tag{8.7}
\end{align}$$

and

$$\begin{align}
u_{R\omega}=\frac{e^{-i\omega\eta_R}}{\sqrt{2\omega}}\psi_\omega(x), \qquad u_{L\omega}=\frac{e^{-i\omega\eta_L}}{\sqrt{2\omega}}\psi_\omega(x) \tag{8.8}
\end{align}$$

have positive wedge KG norm. Relative to the same geometric boost $\zeta$, the left eigenvalue has the opposite sign because $\zeta=-\partial_{\eta_L}$.

The reflection phase is not discarded. Put

$$\begin{align}
c_\omega:=2^{-i\omega}\frac{A_-(\omega)}{|A_-(\omega)|}, \qquad |c_\omega|=1. \tag{8.8a}
\end{align}$$

Using $U=-e^{-(\eta_R+x)}$, $V=e^{\eta_R-x}$ in $R$ and $U=e^{\eta_L-x}$, $V=-e^{-(\eta_L+x)}$ in $L$, the two standing-wave components are

$$\begin{align}
u_{R\omega}\sim\frac1{\sqrt{4\pi\omega}} \left[c_\omega V^{-i\omega}+\bar c_\omega(-U)^{i\omega}\right],
\end{align}$$

$$\begin{align}
u_{L\omega}\sim\frac1{\sqrt{4\pi\omega}} \left[c_\omega U^{-i\omega}+\bar c_\omega(-V)^{i\omega}\right]. \tag{8.8b}
\end{align}$$

Thus each self-adjoint standing wave contains both future- and past-horizon scattering branches. This phase-resolved form is the input to Section 8.3.

### 8.2 Exact Overlap Kernel

At $t=0$ in the right half-slice,

$$\begin{align}
r=\sec\rho,\qquad x(\rho)=\operatorname{arctanh}(\cos\rho),\qquad \partial_t=\frac1{\sin\rho}\partial_{\eta_R}. \tag{8.9}
\end{align}$$

The global-to-right-wedge Bogoliubov kernel is therefore the explicit KG overlap

$$\begin{align}
\boxed{ \alpha_{\omega n}=(u_{R\omega},\Phi_n)_{KG,R} =\int_0^{\pi/2}d\rho\, \left(\omega_n+\frac\omega{\sin\rho}\right) \frac{\psi_\omega(x(\rho))}{\sqrt{2\omega}} N_{n,\Delta}(\cos\rho)^\Delta C_n^\Delta(\sin\rho),} \tag{8.10}
\end{align}$$

$$\begin{align}
\boxed{ \beta_{\omega n}=-(u_{R\omega},\Phi_n^*)_{KG,R} =\int_0^{\pi/2}d\rho\, \left(\omega_n-\frac\omega{\sin\rho}\right) \frac{\psi_\omega(x(\rho))}{\sqrt{2\omega}} N_{n,\Delta}(\cos\rho)^\Delta C_n^\Delta(\sin\rho).} \tag{8.11}
\end{align}$$

These integrals include both field and normal/characteristic information. They are defined by first inserting an endpoint cutoff $\rho\geq\epsilon$, pairing with $w(\omega)\in C_c^\infty(0,\infty)$, and then taking $\epsilon\downarrow0$ in the wave-packet topology. With this convention
$b_R(\omega)=\sum_n[\alpha_{\omega n}a_n-\beta_{\omega n}a_n^\dagger]$.
Completeness of the null-derived modes (5.24) and the half-line basis (8.7) then gives, distributionally,

$$\begin{align}
\sum_n(\alpha_{\omega n}\bar\alpha_{\omega'n} -\beta_{\omega n}\bar\beta_{\omega'n})=\delta(\omega-\omega'),
\end{align}$$

$$\begin{align}
\sum_n(\alpha_{\omega n}\beta_{\omega'n} -\beta_{\omega n}\alpha_{\omega'n})=0. \tag{8.12}
\end{align}$$

The left kernels follow from $\rho\mapsto-\rho$ and the future-time sign in (2.5). The inverse Bogoliubov identities require the sum of the left and right overlap integrals; one half-slice alone is not a complete global Cauchy surface. No sharp endpoint integral or product-Fock unitary is inferred. The formulas and measures have been audited analytically, but an independent high-precision wave-packet quadrature for general $\Delta$ has not been added; this is recorded in the claim ledger rather than hidden.

### 8.3 Analytic Continuation, Thermal Factor, and B2

There are two independent KMS derivations.

**(A) Horizon analytic continuation with the reflection phase retained.** In (8.8b), lower-half-plane continuation gives

$$\begin{align}
\bar c_\omega(-U)^{i\omega} \longrightarrow e^{-\pi\omega}\bar c_\omega U^{i\omega}, \qquad c_\omega V^{-i\omega} \longrightarrow e^{-\pi\omega}c_\omega(-V)^{-i\omega}.
\tag{8.13a}
\end{align}$$

The same multiplier works for both scattering components. The phases $c_\omega$ and $\bar c_\omega$ are already present in $u_R$ and $u_L^*$ and therefore cancel from the relative coefficient. In the real, left--right phase-locked convention (8.6), the globally positive families are

$$\begin{align}
U_\omega^{(1)}= \frac{u_{R\omega}+e^{-\pi\omega}u_{L\omega}^*} {\sqrt{1-e^{-2\pi\omega}}}, \qquad U_\omega^{(2)}= \frac{u_{L\omega}+e^{-\pi\omega}u_{R\omega}^*} {\sqrt{1-e^{-2\pi\omega}}}. \tag{8.13}
\end{align}$$

If the wedge modes are independently rephased by $u_R\mapsto e^{i\theta_R}u_R$ and $u_L\mapsto e^{i\theta_L}u_L$, the coefficient in the first line becomes $e^{-\pi\omega}e^{i(\theta_R+\theta_L)}$ and the B2 covariance acquires the conjugate phase. Equation (8.13) is therefore correct only with the phase-locking stated above; it is not a basis-independent literal formula.

If $c_{1,2}(\omega)$ annihilate (8.13),

$$\begin{align}
c_1=\frac{b_R-e^{-\pi\omega}b_L^\dagger} {\sqrt{1-e^{-2\pi\omega}}}, \qquad c_2=\frac{b_L-e^{-\pi\omega}b_R^\dagger} {\sqrt{1-e^{-2\pi\omega}}}. \tag{8.15}
\end{align}$$

This is the $\alpha$--$\beta$ thermal relation in a global-positive continuum basis; expansion of $U_\omega^{(a)}$ in the null-derived discrete modes (5.24) connects it to the kernel (8.10)--(8.11). After wave-packet smearing it implies

$$\begin{align}
\langle0_G|b_R^\dagger(\omega)b_R(\omega')|0_G\rangle =\frac{\delta(\omega-\omega')}{e^{2\pi\omega}-1}, \tag{8.16}
\end{align}$$

$$\begin{align}
\langle0_G|b_R(\omega)b_L(\omega')|0_G\rangle =\frac{\delta(\omega-\omega')}{2\sinh\pi\omega}. \tag{8.17}
\end{align}$$

The second line is the explicit state-level left--right B2 covariance. It is fixed by the global null-derived state and cannot be reconstructed from the two regional thermal marginals.

**(B) Wightman strip analyticity.** With $z=\eta_R-\eta_R'$, the right-wedge Wightman boundary value is analytic in the lower strip $-2\pi<\operatorname{Im}z<0$. Equivalently, for right-wedge smearings $A,B$, the function

$$\begin{align}
F_{A,B}(s)=\langle0_G|A\,\alpha_s(B)|0_G\rangle \tag{8.18a}
\end{align}$$

obtained from (7.7) with the second argument boosted is analytic in $0<\operatorname{Im}s<2\pi$ and continuous at the smeared boundary. The lower and upper boundary values are related by continuing the same $Q_{\Delta-1}$ sheet selected by the mode sum; one must not reset to a principal branch merely because $\cosh(z-2\pi i)=\cosh z$. The lower-strip boundary relation is

$$\begin{align}
G^+_{RR}(\eta-i2\pi,\eta')=G^+_{RR}(\eta',\eta). \tag{8.18}
\end{align}$$

Or, equivalently, $F_{A,B}(s+i2\pi)=F_{B,A}(-s)$. Therefore the global vacuum restricted to the right-wedge Weyl algebra is KMS for the boost automorphism at

$$\begin{align}
\boxed{\beta_{\rm boost}=2\pi.} \tag{8.19}
\end{align}$$

The two routes give the same $e^{-\pi\omega}$ and $\beta=2\pi$. The theorem is algebraic and smeared. Equations (8.13)--(8.17) are its phase-audited wave-packet spectral realization, not a sharp factorization theorem
$\mathcal H_G\cong\mathcal H_L\otimes\mathcal H_R$.

## 9. Task J: Corrected Verdict on the Finite-$(Z,N)$ Project

This section was rederived from the original uploaded archive `ads2_rindler_gluing.zip`, including both numerical logs and both Python sources. The old result had interchanged the two regulators. The correct meanings are

$$\begin{align}
\boxed{Z=\text{near-horizon tortoise-wall position}, \qquad N=\text{retained wedge-mode count per side}.} \tag{9.1}
\end{align}$$

### 9.1 Geometry and Self-Adjoint Wall Problem

Each regulated wedge is

$$\begin{align}
ds^2=\frac{-d\tau^2+dz^2}{\sinh^2z}, \qquad 0<z<Z. \tag{9.2}
\end{align}$$

The AdS boundary is $z=0$ and the Killing horizon is $z\to\infty$. Thus finite $Z$ removes the near-horizon region $z>Z$. At $t=0$ the two wall points lie at

$$\begin{align}
\rho=\pm a_Z, \qquad a_Z:=\arctan(\operatorname{csch}Z), \tag{9.3}
\end{align}$$

so the two regulated exterior slices omit the central interval $|\rho|<a_Z$ around the bifurcation point. The worldline $z=Z$ has induced metric $ds^2=-d\tau^2/\sinh^2Z$ and is timelike.

On each finite interval the code solves

$$\begin{align}
\left[-\frac{d^2}{dz^2}+\frac{m^2L^2}{\sinh^2z}\right]u_p^{(Z)} =\omega_p(Z)^2u_p^{(Z)}, \qquad u_p'(Z)=0, \tag{9.4}
\end{align}$$

with standard falloff at $z=0$. The Neumann condition is the natural reflecting boundary condition of this finite-interval variational problem and defines a self-adjoint discrete wedge operator. It is an auxiliary timelike-wall problem, not an exact horizon condition. For $m=0$,

$$\begin{align}
u_p^{(Z)}=\sqrt{\frac2Z}\sin\frac{(p+\tfrac12)\pi z}{Z}, \qquad p=0,1,\ldots. \tag{9.5}
\end{align}$$

The second regulator retains $p=0,\ldots,N-1$ on each side, giving $2N$ canonical oscillator pairs. At fixed $Z$, $N$ controls the wedge ultraviolet cutoff, approximately $(N-\tfrac12)\pi/Z$ in the massless benchmark. At fixed sufficiently large $N$, $Z$ controls the geometric wall/omitted-central-region error. The massive benchmark in the archive is $m=1$, $Z=10$, $N=64$.

### 9.2 What Is Projected and Why the Link Is Rank One

The finite Hamiltonian is not the sum of two Rindler Hamiltonians. The source explicitly **projects the global-time Noether energy** onto the retained Rindler modes. Its outside matrices contain the weight $\cosh z$:

$$\begin{align}
A_{pq}^{(Z,N)}=\int_0^Z\cosh z\,u_pu_q\,dz,
\end{align}$$

$$\begin{align}
B_{pq}^{(Z,N)}=\int_0^Z\cosh z \left(u_p'u_q'+\frac{m^2L^2}{\sinh^2z}u_pu_q\right)dz. \tag{9.6}
\end{align}$$

Let $b_p=u_p^{(Z)}(Z)$. Linear interpolation across the omitted interval gives

$$\begin{align}
H_{\rm link}^{(Z,N)} =\frac{\left[\boldsymbol b\cdot\boldsymbol q_R- \boldsymbol b\cdot\boldsymbol q_L\right]^2}{4a_Z}. \tag{9.7}
\end{align}$$

Thus the projected variable is the finite wall value $\phi_{R,L}(Z)=\boldsymbol b\cdot\boldsymbol q_{R,L}$. In the odd parity sector (9.7) is the rank-one stiffness update $\boldsymbol b\boldsymbol b^{\mathsf T}/a_Z$; it vanishes in the even sector. The leading central gradient energy is retained, while the central kinetic and massive terms are omitted. No central canonical momentum is added, because that would change the finite symplectic form.

### 9.3 No Canonical Exact-Null Projection Has Been Constructed

An exact regulator relation would require maps such as

$$\begin{align}
P_{Z,N}:\mathscr D_{\mathcal N}^{\rm adm}\longrightarrow
\mathbb R^{4N}, \qquad I_{Z,N}:\mathbb R^{4N}\longrightarrow\mathscr D_{\mathcal N}^{\rm adm}, \tag{9.8}
\end{align}$$

with, at minimum,

$$\begin{align}
P_{Z,N}^*\Omega_{Z,N}\to\Omega_{\rm null}, \qquad P_{Z,N}X_0^{\rm null}\simeq X_0^{(Z,N)}P_{Z,N}, \tag{9.9}
\end{align}$$

plus mode, state, and smeared-correlator convergence. The archive supplies none of these maps. Its coefficients are spatial projections on the $t=0$ regulated wedge, after a Neumann self-adjoint extension has been chosen; exact characteristic profiles live on the true null horizons. Passing between them already requires bulk reconstruction and a choice of finite timelike slice. Moreover, $X_0^{(Z,N)}$ is built from the projected global Noether energy, whereas $X_0^{\rm null}$ was derived from the characteristic action.

The structural comparison is therefore:

| object | intrinsic null theory | finite-$(Z,N)$ project |
|---|---|---|
| geometry | true intersecting horizons and Goursat diamonds | two wedges cut by timelike walls $z=Z$ plus an omitted central interval |
| variables | two compatible profiles $(f,g)$ with a shared corner | first $N$ Neumann-wall coefficients on each side |
| symplectic form | direct null flux $\Omega_{\rm null}$ | canonical form on $2N$ oscillator pairs; no central pair |
| Hamiltonian | (3.8d), derived by $\iota_X\Omega_{\rm null}=\delta H$ | global Noether energy projected into the wall basis plus (9.7) |
| modes | null $\mathfrak{sl}(2,\mathbb R)$ ladder and Goursat reconstruction | Neumann-wall eigenmodes followed by finite symplectic diagonalization |
| state/correlator | null-derived positive split, $RR/RL/RF$, smeared KMS | neither TFD/global state nor correlators constructed in the archive |
| established approximation | exact on $\mathcal H_{\mathcal N}^{\rm cyc}$; global equality by comparison theorem | fixed-window spectral convergence only |

### 9.4 Regulator Sensitivity and Verdict

The archived tables show the two errors separately. At $Z=10$, increasing $N$ eventually reaches a finite-$Z$ plateau; for the massive first-ten window the maximum error changes from $2.11\times10^{-4}$ at $N=48$ to $5.75\times10^{-5}$ at $N=64$ and then does not improve at $N=80$. At $N=64$, moving the wall from $Z=6$ to $8$ to $10$ changes the first-twelve maximum error from $3.15\times10^{-3}$ to $4.26\times10^{-4}$ to $5.78\times10^{-5}$.

The coupling choice is also material. Re-evaluating the massless source matrices at $(Z,N)=(10,24)$ gives the first three odd-sector frequencies

$$\begin{align}
\gamma=0:\ (1.00006,3.00032,5.01883), \qquad \gamma=1:\ (2.00001,4.00224,6.09405), \tag{9.10}
\end{align}$$

where $\gamma$ multiplies the source's rank-one link. Removing the link leaves the wrong parity tower. Intermediate link coefficients give different finite matrices. Likewise, replacing the Neumann wall by Robin/Dirichlet data would change the wedge basis and every projected matrix; no wall-condition independence was tested. The precise $\gamma=1$ coefficient follows from the chosen linear central interpolation, not from a regulator-independence theorem.

The corrected verdict is

$$
\boxed{
\begin{gathered}
\texttt{global-Noether-energy Galerkin approximation in a timelike-wall}\\
\texttt{Rindler basis; no exact-null canonical projection, intertwiner,}\\
\texttt{state/correlator convergence, or Rindler-gluing theorem proved.}
\end{gathered}}
\tag{9.11}
$$

This does not negate the observed spectral accuracy. It identifies exactly what has and has not been approximated and keeps $Z\to\infty$ distinct from $N\to\infty$.

## 10. Task K: Reproducible Checks

Two durable verification files accompany this note.

1. \`numerics/ads2_rindler_null_reconstruction_checks.wl\` is self-contained and was run in a fresh Wolfram Engine 14.3.0 kernel. It checks the $\mathfrak{sl}(2,\mathbb R)$ signs, both lowest-weight profiles, the characteristic mass relation, the null ladder for $n=0,\ldots,4$, the reconstructed Kruskal KG residual, corner compatibility, the direct null-Hamiltonian density and variation identities, the endpoint cancellation, the later Gegenbauer identification, the KMS/reflection-phase algebra, the universal-cover $2\pi$ phase, and the finite-link rank/sensitivity.
2. \`numerics/ads2_rindler_finite_zn_source_audit.py\` reads the original archive without modifying it. It parses the two logs and two source files, verifies the meanings of $Z$ and $N$, identifies the Neumann wall, the projected global Noether energy, the wall-value vector, and the rank-one link, and verifies that no state/correlator is constructed.

The exact Mathematica run returned

\`\`\`Text sl2_signs: True casimir_sign: True null_lowest_weight_profiles: True null_ladder_n0_to_n4: True reconstructed_bulk_kg: True corner_compatibility: True null_hamiltonian_density: True null_hamiltonian_variation: True endpoint_corner_cancellation: True gegenbauer_identification_only_after_reconstruction: True global_coordinate_kg_cross_check: True standing_wave_amplitudes_are_conjugate: True kms_reflection_phase_cancellation: True kms_and_universal_cover_phase: True finite_link_rank_one: True finite_link_choice_changes_spectrum: True AllChecksPassed \`\`\`

The source audit returned

\`\`\`Text archive_members: True Z_is_wall_position: True wall_is_neumann: True N_is_retained_mode_count: True massive_benchmark_Z10_N64: True global_noether_energy_is_input: True rank_one_link_definition: True projected_variable_is_wall_value: True Z_and_N_control_distinct_errors: True state_and_correlator_not_constructed: True AllChecksPassed \`\`\`

These checks establish exact algebraic residuals and the stated source facts. They do not by themselves prove global characteristic surjectivity, exponentiation on an unrestricted horizon completion, the analytic Friedrichs/completeness theorem, or general-$\Delta$ high-precision wave-packet quadrature for (8.10)--(8.12). Those scopes remain analytic comparison statements or explicit open items below.

## 11. Final Claim Ledger

| ID | claim | status | assumptions/domain | evidence | remaining boundary |
|---|---|---|---|---|---|
| A1 | embedding, Kruskal/global/Rindler charts and KG equation | proved + exact symbolic check | universal-cover atlas, $m^2L^2\geq0$ | Sections 2.1 and 10 | none |
| A2 | two-profile local Goursat existence, uniqueness and symplectic composition | proved | compact rectangles away from $UV=-1$, compatible $C^1$ profiles | (2.14)--(2.21) | none |
| A3 | universal-cover continuation of admissible characteristic data | conditional analytic input | standard-normalizable continuation and global Friedrichs well-posedness | Section 2.2 | no onto theorem for an unrestricted product of horizon completions |
| A4 | $\Omega_{\rm null}$ from direct action/CPS pullback | proved on the declared smooth/finite-energy domain | orientations and shared-corner policy in Section 2.3 | (2.17)--(2.21) | unrestricted completion not classified |
| A5 | equality with global Cauchy symplectic form | comparison theorem | A3 and vanishing conformal flux | (2.22) | not a definition of $\Omega_{\rm null}$ |
| B1 | global-time action including transverse reconstruction | proved locally and on the cyclic core | paired profiles and corner jets | (3.4)--(3.7a) | tangency on arbitrary completed horizon data is conditional |
| C1 | integrable positive $H_0^{\rm null}[f,g]$ | proved + exact symbolic check | $\mathscr D_{\mathcal N}^{\rm adm}$ or invariant cyclic core | (3.8b)--(3.9a) | none on the stated domain |
| C2 | moving-cross endpoint/corner cancellation | proved for the scalar declared domain | complete scalar pullback and standard falloff | (3.11)--(3.11a), direct residual (3.9a) | no claim for unrelated moving-boundary polarizations |
| D1 | null Hamiltonian $\mathfrak{sl}(2,\mathbb R)$, Poisson signs and Casimir | proved + exact symbolic check on common cyclic core | phase-space convention (1.4) | Section 4 and verification script | full admissible-domain exponentiation remains conditional |
| D2 | $L_0^\dagger=L_0$, $L_+^\dagger=L_-$ in the null KG product | proved on the common core | endpoint cancellation and isometry invariance of null flux | (4.6a)--(4.6b) | no product-Fock adjoint claim |
| E1 | $h=\Delta$ and $\omega_n=\Delta+n$ from null profiles | proved on $\mathcal H_{\mathcal N}^{\rm cyc}$ | standard branch, positive null Hamiltonian | (5.1)--(5.17) | unrestricted horizon-surjectivity is not required or proved |
| F1 | profiles $\to$ Goursat bulk modes $\to$ Gegenbauer identification | proved + exact symbolic check | same cyclic domain | (5.18)--(5.27) | special functions are comparison/closed-form output |
| F2 | no second positive tower and full global Friedrichs exhaustiveness | proved in two stages | positive-energy $D_\Delta^+$ on cyclic domain; global compact-resolvent theorem for equality with full global theory | Sections 5.2 and 5.4 | arbitrary independent horizon completion remains open |
| G1 | Pauli--Jordan and CCR from the null symplectic inverse | proved after smearing on the cyclic theory | Hamiltonian test algebra and Goursat Green identity | Section 6 | sharp horizon fields excluded |
| H1 | null-derived vacuum and $RR,RL,RF$ correlators | proved after smearing | positive split of $H_0^{\rm null}$, A3 for universal cover | Section 7 | no separate boundary-Hadamard wavefront theorem |
| H2 | $Q_{\Delta-1}$ closed form and noninteger-$\Delta$ universal-cover sheet | derived after mode sum | continuous $i\epsilon$ sheet | (7.5)--(7.10) | principal-branch reset is invalid |
| I1 | self-adjoint standing-wave Rindler basis with both scattering branches | proved using standard half-line Jost theory | $\omega>0$, wave packets at threshold | (8.2)--(8.8b) | zero frequency handled only by completion |
| I2 | overlap kernels and Bogoliubov identities | conditional/distributional theorem | endpoint cutoff, $\omega$-wave packets, both left and right kernels for inverse identities | (8.10)--(8.12) | no independent general-$\Delta$ high-precision quadrature |
| I3 | reflection-phase audit of Unruh combinations | proved on the phase-locked real standing-wave basis | (8.6), lower-half-plane continuation | (8.8a)--(8.17), exact symbolic check | independent wedge rephasings insert the stated compensating phase |
| I4 | right-wedge KMS at $\beta=2\pi$ | proved as a smeared algebraic theorem | null-derived global state and boost normalization $\kappa=1$ | both routes in Section 8.3 | no sharp continuum tensor-factor theorem |
| J1 | $Z$ wall versus $N$ mode-count diagnosis | proved from original archive source/logs | uploaded archive inspected read-only | Sections 9.1--9.2 and source audit | none |
| J2 | finite-$(Z,N)$ relation to exact null theory | open canonical/convergence problem | existing source project | Sections 9.3--9.4 | no symplectic projection/intertwiner, state, correlator, or convergence theorem |

## 12. Three-Tier Conclusion

### 12.1 Intrinsic null/characteristic Derivation

The direct scalar action gives $\Omega_{\rm null}$ on two intersecting future horizon rays. The characteristic EOM reconstructs the transverse derivatives and makes the ambient compact generator $X_0^{\rm null}$ an explicit coupled operator on $(f,g)$. Its contraction integrates to the positive profile Hamiltonian (3.8d), with the moving-cut variation and corner cancellation computed explicitly. The same null CPS carries the common $\mathfrak{sl}(2,\mathbb R)$ action.

Solving $L_-z_0=0$ and $L_0z_0=hz_0$ on the horizons gives $f_0=C(1+iV)^{-h}$, $g_0=C(1+iU)^{-h}$, and the characteristic equation gives $h(h-1)=m^2L^2$. Standard falloff selects $h=\Delta$. The null ladder then gives $\omega_n=\Delta+n$, null normalization, both parity sectors, and the reconstructed bulk modes before any global special function is introduced. The null symplectic inverse gives the smeared CCR/Pauli--Jordan function; the positive split of $H_0^{\rm null}$ gives the state and its cross-region covariance; the right-wedge restriction is KMS at $2\pi$.

This tier is exact on the declared cyclic characteristic theory. Local Goursat evolution is proved. Universal-cover continuation of the larger admissible domain uses the separately stated analytic PDE input.

### 12.2 Equivalence with the Global Cauchy Presentation

After the null derivation is complete, global coordinates identify the reconstructed ladder with

$$\begin{align}
e^{-i(\Delta+n)t}(\cos\rho)^\Delta C_n^\Delta(\sin\rho).
\end{align}$$

The global Friedrichs Sturm--Liouville/Darboux theorem independently proves compact-resolvent exhaustiveness and equality of the cyclic null theory with the standard full global free scalar. The global energy integral, $A_\Delta$-complex structure, KG normalization integral, and invariant $Q_{\Delta-1}$ kernel are checks or closed-form identifications. They are not inputs to $\Omega_{\rm null}$, $H_0^{\rm null}$, the lowest weight, or the frequency ladder.

### 12.3 Finite-$(Z,N)$ Spectral Approximation

The original finite project cuts each wedge at the timelike wall $z=Z$, imposes Neumann data there, keeps the first $N$ wall modes, projects the global-time Noether energy into that basis, and adds a rank-one wall-value link from a linear interpolation across the omitted central interval. $Z$ controls the near-horizon geometric error floor; $N$ controls the retained boost-frequency window. The observed spectral convergence is real but regulator-dependent.

No canonical projection from exact null profiles to the finite variables, symplectic/Hamiltonian intertwiner, strong-resolvent theorem, mode convergence, or state/correlator convergence has been constructed. Its current status is therefore a useful global-Hamiltonian Galerkin approximation, not a proved realization of exact Rindler characteristic gluing.

## Verified

- Exact Mathematica residuals vanish for the null lowest-weight equations, $h(h-1)=m^2L^2$, the $n=0,\ldots,4$ ladder, reconstructed bulk KG equation, $\mathfrak{sl}(2,\mathbb R)$ signs, null Hamiltonian density/variation, endpoint cancellation, later Gegenbauer identification, reflection-phase cancellation, and KMS factors.
- The original archive source confirms $Z$ is the timelike near-horizon wall, $N$ is the retained mode count, the link is rank one in the wall-value vector, and the projected Hamiltonian uses global-time Noether energy.
- The null-derived normalization agrees with the later global KG integral, and the global Darboux theorem independently exhausts the same tower.

## Assumptions

- Universal-cover AdS$_2$, signature $(- ,+)$, standard/Friedrichs falloff, and $m^2L^2\geq0$.
- Sharp formulas begin on $\mathscr D_{\mathcal N}^{\rm adm}$ or the invariant cyclic core; CCR, correlators, overlap kernels, and KMS boundary values are smeared/distributional.
- The global comparison invokes standard Friedrichs well-posedness and compact-resolvent Sturm--Liouville theory but no known mode list as input.
- Restoring dimensions gives $\omega_{\rm phys}=(\Delta+n)/L$; the dimensionless boost inverse temperature remains $2\pi$.

## Not Verified

- An onto theorem from an unrestricted product of independently completed half-horizon spaces to the global energy space.
- Common-domain exponentiation of all three Killing generators on such an unrestricted completion.
- A sharp regional Hilbert-space tensor factorization or a unitary map to two Fulling Fock spaces.
- A general-$\Delta$ numerical wave-packet quadrature of every Bogoliubov identity, beyond the analytic distributional proof and exact phase checks.
- A canonical exact-null to finite-$(Z,N)$ projection, convergence theorem, or state/correlator comparison.
- Regulator independence under Robin/Dirichlet wall conditions or alternative central finite elements.

## Revision Audit

- **Retained:** the AdS$_2$ geometry, Kruskal equation, local Volterra/Goursat theorem, explicit Killing fields, intrinsic wedge Jost modes, null CCR/Pauli--Jordan architecture, $RR/RL/RF$ correlators, invariant $Q_{\Delta-1}$ resummation, and the global Friedrichs/Darboux calculation as an independent check.
- **Replaced:** $\Omega_{\mathcal N}:=(C_0G_{\mathcal N})^*\Omega_0$ is no longer a definition; $\Omega_{\rm null}$ is the direct action/CPS flux. The old Darboux-first spectrum proof is replaced by the horizon lowest-weight derivation (5.1)--(5.17). Global modes are now obtained only after profile laddering and Goursat reconstruction. The Hamiltonian is the explicit profile functional (3.8d), with its direct variation residual, rather than a transported global-energy tautology.
- **Downgraded:** unrestricted characteristic surjectivity remains open; full-domain generator tangency is conditional; overlap-kernel identities are distributional/wave-packet statements; KMS is a smeared algebraic theorem rather than a sharp continuum factorization statement.
- **Finite-$(Z,N)$ correction:** the old claim that $Z$ counted retained modes was false. $Z$ is the timelike near-horizon wall position and $N$ is the retained mode count. The archive also shows that global Noether energy is an input. Section 9 now compares geometry, variables, symplectic forms, Hamiltonians, modes, states, and regulator errors on that correct basis.
- **KMS audit:** the self-adjoint standing waves contain both horizon scattering components. Their reflection phase cancels from the simple Unruh coefficient only in the phase-locked real basis; a general wedge rephasing inserts a compensating phase. The thermal factor and $\beta=2\pi$ are unchanged, and the independent Wightman-strip derivation agrees with the horizon continuation.
- ads2-rindler global reconstruction plan.md was not modified.
