# Scalar Radiation and Characteristic Composition in AdS--Rindler

> **Status.** Closed on the canonical matched domain under the displayed hypotheses. “Theorem/Proposition” means proved below under the displayed hypotheses; “Conditional” marks a precisely isolated stronger analytic input; “Check” records an executed symbolic or numerical calculation; “Obstruction” isolates a failure of a stronger proposal. The fixed-channel radial theorem, the full transverse direct integral, full-field bifurcation matching, local full-field characteristic composition in $UV<1$, continuation beyond the caustic by regular global Cauchy evolution, smeared B1, and abstract algebraic B1 on the matched image are proved. Surjectivity from an independently prescribed intrinsic horizon Hilbert space is the optional Stronger Horizon-Parametrization Theorem 7.6; no unrestricted wedge-Fock factorization is claimed.

The standing assumptions are deliberately narrow:

$$\begin{align}
\text{one real free scalar}\quad+\quad \text{standard reflecting Dirichlet data}\quad+\quad d\geq2,\ M^2\geq0. \tag{0.1}
\end{align}$$

The hierarchy is

$$
\boxed{
\begin{gathered}
\text{fixed-channel Jost/Weyl theorem}\ \Longrightarrow\
\text{full Helgason--radial direct integral}\ \Longrightarrow\
\text{field-valued bifurcation matching}\ \Longrightarrow\
\text{local characteristic composition and B1}\ \Longrightarrow\
\text{regular global Cauchy continuation beyond the caustic and smeared/algebraic B1 on the matched image.}
\end{gathered}}
\tag{0.2}
$$

The reflecting AdS boundary removes an independent outer radial channel. It does not remove the horizon continuum, the logarithmic-versus-affine trace distinction, the bifurcation datum, or the need for two intersecting null profiles in the future region. The bifurcation field $c(Y)$ is not an independent oscillator: its conjugate information is distributed through the rest of the regional Cauchy/characteristic profile.

**Cross-note convention bridge.** This note uses

$$\begin{align}
\Omega_{\rm here}=\int\delta q\wedge\delta\pi
=-\int\delta\pi\wedge\delta q=-\Omega_{\rm formalism}, \tag{0.3}
\end{align}$$

where `formalism.md` and `gluing formalism.md` use the opposite ordering. Here $\Omega(X_A,\delta)=\delta A$ and $P_{\rm here}=-\Omega_{\rm here}^{-1}$; converting the two-form and inverse convention together leaves $\{q,\pi\}_{\mathrm P}=+\delta$ unchanged. No sign below should therefore be flipped merely when comparing the files. Functional-analytically, “strong symplectic” is reserved for a Hilbert/Banach space on which $\Omega^\flat:x\mapsto\Omega(x,\cdot)$ is a bounded isomorphism onto the full continuous dual; a bounded nondegenerate form whose flat map is only injective is called weak symplectic.

## 1. Geometry and Conventions

### 1.1 AdS--Rindler Wedges

Work on the universal cover of $\mathrm{AdS}_{d+1}$, $d\geq2$, with AdS radius $L_{\rm AdS}=1$ and signature $(-+\cdots+)$. Put

$$\begin{align}
n:=d-1,\qquad f(r):=r^2-1,\qquad r>1. \tag{1.1}
\end{align}$$

The right wedge metric is

$$\begin{align}
ds^2=-f(r)d\tau_R^2+\frac{dr^2}{f(r)}+r^2ds^2_{\mathbb H^n}. \tag{1.2}
\end{align}$$

Equivalently, with

$$\begin{align}
r=\sqrt{1+\xi^2},\qquad \xi\in(0,\infty), \tag{1.3}
\end{align}$$

one has

$$\begin{align}
ds^2=-\xi^2d\tau_R^2+\frac{d\xi^2}{1+\xi^2} +(1+\xi^2)ds^2_{\mathbb H^n}. \tag{1.4}
\end{align}$$

The conformal boundary is $r=\infty$; the Killing horizons are $r=1$ or $\xi=0$; and their intersection at $\tau_R=0$ is the bifurcation surface

$$\begin{align}
\mathcal B\cong\mathbb H^n. \tag{1.5}
\end{align}$$

In the embedding hyperboloid

$$\begin{align}
-(X^{-1})^2-(X^0)^2+(X^1)^2+\cdots +(X^d)^2=-1, \tag{1.6}
\end{align}$$

the right time plane may be parameterized by

$$\begin{align}
X^0=\xi\sinh\tau_R,\qquad X^1=\xi\cosh\tau_R. \tag{1.7}
\end{align}$$

For the left wedge choose a separately future-oriented time,

$$\begin{align}
X^0=\xi\sinh\tau_L,\qquad X^1=-\xi\cosh\tau_L. \tag{1.8}
\end{align}$$

If

$$\begin{align}
\zeta=X^1\partial_{X^0}+X^0\partial_{X^1}, \tag{1.9}
\end{align}$$

then

$$\begin{align}
\zeta|_R=\partial_{\tau_R},\qquad \zeta|_L=-\partial_{\tau_L}. \tag{1.10}
\end{align}$$

Thus both $e^{-i\omega\tau_A}$ are future-positive-frequency modes, while the single geometric boost charge is a right-minus-left generator.

### 1.2 Kruskal Regions

Define

$$\begin{align}
r_*:=\int^r\frac{ds}{s^2-1} =\frac12\log\frac{r-1}{r+1}\in(-\infty,0), \tag{1.11}
\end{align}$$

and in $R$ set $u=\tau_R-r_*$, $v=\tau_R+r_*$,

$$\begin{align}
U=-e^{-u},\qquad V=e^v. \tag{1.12}
\end{align}$$

The analytic extension is

$$\begin{align}
ds^2=-\frac{4\,dU\,dV}{(1+UV)^2} +\left(\frac{1-UV}{1+UV}\right)^2ds^2_{\mathbb H^n},\qquad r=\frac{1-UV}{1+UV}. \tag{1.13}
\end{align}$$

The four regions are

$$
\begin{array}{c|cc}
&U&V\\ \hline
R&<0&>0\\
L&>0&<0\\
F&>0&>0\\
P&<0&<0.
\end{array}
\tag{1.14}
$$

The bifurcation surface is $U=V=0$. The future horizons entering $F$ are $U=0,V>0$ and $V=0,U>0$; the past horizons are the corresponding negative half-rays. The two exterior conformal-boundary pieces sit at $UV=-1$. In the future chart $0<UV<1$; the surface $UV=1$ is where this hyperbolic foliation focuses at $r=0$. It is not an AdS curvature singularity, but it is an obstruction to treating the whole future region as one product rectangle.

### 1.3 Action, Mass Range, and Reflecting Boundary

Take

$$\begin{align}
S[\phi]=-\frac12\int d^{d+1}x\sqrt{-g} \left(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+M^2\phi^2\right), \qquad M^2\geq0. \tag{1.15}
\end{align}$$

Then

$$\begin{align}
(\Box-M^2)\phi=0,\qquad \nu:=\sqrt{M^2+\frac{d^2}{4}}\geq1,\qquad \Delta_\pm:=\frac d2\pm\nu. \tag{1.16}
\end{align}$$

Near conformal infinity,

$$\begin{align}
\phi\sim \alpha r^{-\Delta_-}+\beta r^{-\Delta_+}. \tag{1.17}
\end{align}$$

Standard reflecting Dirichlet means

$$\begin{align}
\alpha=0, \tag{1.18}
\end{align}$$

so the slow branch is absent and the symplectic/energy flux through conformal infinity vanishes. The choice $M^2\geq0$ is stronger than the Breitenlohner--Freedman bound but is useful here: $\nu\geq1$ makes the AdS endpoint limit-point, selects the Friedrichs realization uniquely, and avoids alternate-quantization boundary domains. Neumann and Robin extensions belong to a later iteration.

## 2. Separation and the Radial Operator

### 2.1 Equation from the Action

Let a real generalized harmonic on $\mathbb H^n$ satisfy

$$\begin{align}
-\Delta_{\mathbb H^n}Y_\lambda =\kappa_\lambda^2Y_\lambda,\qquad \kappa_\lambda^2:=\lambda^2+\frac{(n-1)^2}{4},\qquad \lambda\geq0. \tag{2.1}
\end{align}$$

Use

$$\begin{align}
\phi=e^{-i\omega\tau}Y_\lambda(y)\psi_{\omega\lambda}(r). \tag{2.2}
\end{align}$$

Substitution into the equation derived from (1.15), rather than import of a mode formula, gives

$$\begin{align}
\frac1{r^n}\frac d{dr}\left(r^nf\frac{d\psi}{dr}\right) +\left(\frac{\omega^2}{f}-M^2-\frac{\kappa_\lambda^2}{r^2}\right)\psi=0. \tag{2.3}
\end{align}$$

The static radial Hilbert space and Sturm--Liouville coefficients are

$$
\begin{aligned}
\mathcal H_\lambda&=L^2((1,\infty),w(r)dr),&
w(r)&=\frac{r^n}{f(r)},\\
p(r)&=r^nf(r),&
q_\lambda(r)&=r^n\left(M^2+\frac{\kappa_\lambda^2}{r^2}\right).
\end{aligned}
\tag{2.4}
$$

Thus

$$\begin{align}
A_\lambda\psi =-\frac1w(p\psi')'+\frac{q_\lambda}{w}\psi =-\frac f{r^n}(r^nf\psi')' +f\left(M^2+\frac{\kappa_\lambda^2}{r^2}\right)\psi, \tag{2.5}
\end{align}$$

and the minimal quadratic form is

$$\begin{align}
\mathfrak a_\lambda[\psi] =\int_1^\infty dr\left[ r^nf|\psi'|^2+r^n\left(M^2+\frac{\kappa_\lambda^2}{r^2}\right)|\psi|^2 \right]. \tag{2.6}
\end{align}$$

The Dirichlet radial operator is the positive self-adjoint operator associated with the closure of (2.6). This is precisely the static self-adjoint-extension logic of Ishibashi--Wald specialized to the chosen mass and channel.

### 2.2 Unitary Schrödinger Form

Put

$$\begin{align}
x:=-r_*>0,\qquad r=\coth x,\qquad \chi(x):=r^{n/2}\psi(r). \tag{2.7}
\end{align}$$

The map is unitary because

$$\begin{align}
\int_1^\infty w(r)|\psi(r)|^2dr =\int_0^\infty|\chi(x)|^2dx. \tag{2.8}
\end{align}$$

Equation (2.3) becomes

$$\begin{align}
H_\lambda\chi=\omega^2\chi,\qquad H_\lambda=-\frac{d^2}{dx^2}+V_\lambda(x), \tag{2.9}
\end{align}$$

with the generalized Pöschl--Teller potential

$$\begin{align}
\boxed{ V_\lambda(x)= \frac{\nu^2-\frac14}{\sinh^2x} +\frac{\lambda^2+\frac14}{\cosh^2x}.} \tag{2.10}
\end{align}$$

The closed form is

$$\begin{align}
h_\lambda[\chi]=\int_0^\infty \left(|\chi'|^2+V_\lambda|\chi|^2\right)dx, \tag{2.11}
\end{align}$$

with Friedrichs domain $D(h_\lambda)$ and operator domain

$$\begin{align}
D(H_\lambda)=\{\chi\in D(h_\lambda): -\chi''+V_\lambda\chi\in L^2(0,\infty)\}. \tag{2.12}
\end{align}$$

At the AdS endpoint $x\downarrow0$,

$$\begin{align}
V_\lambda(x)=\frac{\nu^2-\frac14}{x^2}+O(1),\qquad \chi_{\rm D}(x)=O(x^{\nu+1/2}), \tag{2.13}
\end{align}$$

while at the horizon $x\to\infty$,

$$\begin{align}
V_\lambda(x)=O(e^{-2x}). \tag{2.14}
\end{align}$$

Since $\nu\geq1$, both endpoints are limit-point. No additional horizon boundary condition is imposed.

## 3. Fixed-Channel Spectral and Radiation Theorem

### 3.1 Explicit Generalized Eigenfunctions

It is convenient to retain the coordinate $\xi=\sqrt{r^2-1}$. Define

$$\begin{align}
\Delta:=\Delta_+=\frac d2+\nu,\qquad a_\pm(\omega,\lambda):=\frac{1+\nu+i\omega\pm i\lambda}{2}. \tag{3.1}
\end{align}$$

The standard-normalizable real radial solution is

$$\begin{align}
\widetilde\psi_{\omega\lambda}(\xi) =\frac{N_{\omega\lambda}}{\Gamma(1+\nu)} \xi^{i\omega}(1+\xi^2)^{-i\omega/2-\Delta/2} {}_2F_1\left(a_-(\omega,\lambda),a_+(\omega,\lambda); 1+\nu;\frac1{1+\xi^2}\right), \tag{3.2}
\end{align}$$

where the positive normalization is

$$\begin{align}
\boxed{ N_{\omega\lambda}= \frac{ \left|\Gamma\left(\frac{1+\nu+i(\omega-\lambda)}2\right)\right| \left|\Gamma\left(\frac{1+\nu+i(\omega+\lambda)}2\right)\right|} {\sqrt{4\pi\omega}\,|\Gamma(i\omega)|}.} \tag{3.3}
\end{align}$$

For real $\omega,\lambda$, (3.2) is real despite its complex presentation. Its radial normalization is

$$\begin{align}
\int_0^\infty d\xi\, \frac{(1+\xi^2)^{(d-2)/2}}{\xi} \widetilde\psi_{\omega\lambda}(\xi) \widetilde\psi_{\omega'\lambda}(\xi) =\frac1{2\omega}\delta(\omega-\omega'), \tag{3.4}
\end{align}$$

and completeness is

$$\begin{align}
\int_0^\infty 2\omega\,d\omega\, \widetilde\psi_{\omega\lambda}(\xi) \widetilde\psi_{\omega\lambda}(\xi') =\frac{\xi}{(1+\xi^2)^{(d-2)/2}}\delta(\xi-\xi'). \tag{3.5}
\end{align}$$

Equivalently,

$$\begin{align}
\varphi_{\omega\lambda}(x):= \sqrt{2\omega}\,r^{n/2}\widetilde\psi_{\omega\lambda}(r) \tag{3.6}
\end{align}$$

is delta-normalized in $L^2((0,\infty),dx)$ and gives the unitary spectral transform

$$
\begin{aligned}
(\mathcal U_\lambda q)(\omega)
&=\int_0^\infty\overline{\varphi_{\omega\lambda}(x)}q(x)dx,\\
q(x)&=\int_0^\infty\varphi_{\omega\lambda}(x)
(\mathcal U_\lambda q)(\omega)d\omega.
\end{aligned}
\tag{3.7}
$$

### 3.2 Spectrum and Threshold

**Theorem 3.1 (fixed-channel self-adjoint radial radiation theorem).** For every $d\geq2$, $M^2\geq0$, and fixed $\lambda\geq0$, the Friedrichs operator $H_\lambda$ in (2.9)--(2.12) has

$$\begin{align}
\sigma(H_\lambda)=\sigma_{\rm ac}(H_\lambda)=[0,\infty),\qquad \sigma_{\rm pp}(H_\lambda)=\sigma_{\rm sc}(H_\lambda)=\varnothing. \tag{3.8}
\end{align}$$

There is no negative bound state, no $L^2$ zero mode, and no bounded zero-energy threshold resonance. Equations (3.2)--(3.7) give a complete multiplicity-one generalized eigenfunction transform.

**Proof.** Put $\ell:=\nu-\tfrac12\geq\tfrac12$. Near the singular endpoint write

$$\begin{align}
V_\lambda(x)=\frac{\ell(\ell+1)}{x^2}+q_{0,\lambda}(x), \qquad q_{0,\lambda}(x)=O(1), \qquad xq_{0,\lambda}\in L^1(0,1). \tag{3.8a}
\end{align}$$

At infinity,

$$\begin{align}
V_\lambda(x)&=O(e^{-2x}), \qquad V_\lambda\in L^1((1,\infty);(1+x)dx),\\
q_\lambda^{\rm KT}(x) &:=V_\lambda(x)-\frac{\ell(\ell+1)}{x^2} =-\frac{\ell(\ell+1)}{x^2}+O(e^{-2x})
\in L^1(1,\infty). \tag{3.8b}
\end{align}$$

Here $\ell\geq-1/2$, $xq_{0,\lambda}\in L^1(0,1)$, and the decomposition $q_\lambda^{\rm KT}=0/x+\widetilde q$ has $\widetilde q\in L^1(1,\infty)$. These are exactly the singular Bessel-end and short-range hypotheses used in Section 5 of [Kostenko and Teschl, *Spectral Asymptotics for Perturbed Spherical Schrödinger Operators and Applications to Quantum Scattering*](https://arxiv.org/abs/1205.5049), together with their endpoint assumption (1.2). Their use of Weidmann's Theorem 9.38 gives purely absolutely continuous spectrum on $(0,\infty)$ and at most nonpositive eigenvalues; equations (5.2)--(5.12) give the Jost solution, Weyl function, and spectral density. The coefficient $\ell(\ell+1)\geq3/4$ also makes $x=0$ limit-point, and the short-range real potential makes $x=\infty$ limit-point. Hence the scalar half-line spectrum has multiplicity one. Finally $V_\lambda\geq0$, so the Friedrichs form excludes negative eigenvalues.

It remains to identify the measure and the threshold. Remove the normalization in (3.2):

$$\begin{align}
\chi^{(0)}_{\omega\lambda}(x) :=r^{n/2}\frac{\widetilde\psi_{\omega\lambda}(r)}{N_{\omega\lambda}}. \tag{3.8c}
\end{align}$$

Let $f_+(\omega,x)=e^{i\omega x}(1+o(1))$ be the Jost solution and use the Wronskian convention of the cited theorem. With $D_\pm$ as defined in (3.11) below, the connection formula (3.9) gives

$$\begin{align}
F_\lambda(\omega):=W(f_+(\omega,\cdot),\chi^{(0)}_{\omega\lambda}) =-2i\omega\,2^{i\omega} \frac{\Gamma(-i\omega)}{D_-(\omega,\lambda)}, \qquad |F_\lambda(\omega)|^2 =\frac{4\omega^2|\Gamma(i\omega)|^2}{|D_+(\omega,\lambda)|^2}. \tag{3.8d}
\end{align}$$

Kostenko--Teschl equation (5.12) therefore yields, with $E=\omega^2$,

$$\begin{align}
d\rho_\lambda(E) =\mathbf1_{E>0}\frac{\sqrt E}{\pi|F_\lambda(\sqrt E)|^2}dE =N_{\omega\lambda}^2dE. \tag{3.8e}
\end{align}$$

Since $dE=2\omega d\omega$, the eigenfunction $\sqrt{2\omega}N_{\omega\lambda}\chi^{(0)}_{\omega\lambda}$ is delta-normalized against $d\omega$. This is exactly (3.3), (3.6), and (3.7), so the displayed normalization is the Weyl--Titchmarsh Plancherel measure rather than a delta-normalization ansatz. The same density has no singular part; positivity has already removed its possible nonpositive atoms. This proves completeness, absence of positive eigenvalues and singular continuous spectrum, and (3.8).

For clarity, a zero-energy resonance here means a nonzero solution satisfying the Friedrichs condition at $x=0$ that is bounded at $x=\infty$ but not in $L^2$. The boundary-regular zero-energy solution is positive with positive derivative for small $x$ and satisfies $\chi_0''=V_\lambda\chi_0\geq0$. It remains positive, its derivative is increasing, and it grows at least linearly. Hence it is neither bounded nor square integrable. Equivalently,

$$\begin{align}
\lim_{\omega\downarrow0}F_\lambda(\omega) =\frac{2}{\Gamma(\frac{1+\nu+i\lambda}{2}) \Gamma(\frac{1+\nu-i\lambda}{2})}\neq0, \tag{3.8f}
\end{align}$$

where the harmless phase depends on the Jost convention. Thus there is neither a zero mode nor a threshold resonance. $\square$

**Obstruction 3.2 (transverse “tachyonic” modes are not radial bound states).** The spectrum starts at $\omega=0$ for every $\lambda$. Hence modes with $0<\omega^2<\lambda^2$ are valid bulk generalized eigenmodes. They are sometimes called tachyonic relative to the boundary dispersion relation on $\mathbb R\times\mathbb H^n$, but they are not negative eigenvalues of $H_\lambda$ and do not signal a classical radial instability.

### 3.3 Horizon Amplitudes and Reflection

Near $\xi=0$,

$$\begin{align}
\widetilde\psi_{\omega\lambda} \sim N_{\omega\lambda}\left[ \frac{\Gamma(-i\omega)\xi^{i\omega}} {\Gamma\left(\frac{1+\nu-i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu-i(\omega+\lambda)}2\right)} + \frac{\Gamma(i\omega)\xi^{-i\omega}} {\Gamma\left(\frac{1+\nu+i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu+i(\omega+\lambda)}2\right)} \right]. \tag{3.9}
\end{align}$$

Since $\xi=(r+1)e^{r_*}\sim2e^{r_*}$, write

$$\begin{align}
\widetilde\psi_{\omega\lambda} \sim A_{\rm in}(\omega,\lambda)e^{-i\omega r_*} +A_{\rm out}(\omega,\lambda)e^{i\omega r_*}. \tag{3.10}
\end{align}$$

With

$$
\begin{aligned}
D_+(\omega,\lambda)&:=
\Gamma\left(\frac{1+\nu+i(\omega-\lambda)}2\right)
\Gamma\left(\frac{1+\nu+i(\omega+\lambda)}2\right),\\
D_-(\omega,\lambda)&:=\overline{D_+(\omega,\lambda)},
\end{aligned}
\tag{3.11}
$$

the coefficients are

$$\begin{align}
A_{\rm in}=N_{\omega\lambda}2^{-i\omega}\frac{\Gamma(i\omega)}{D_+},\qquad A_{\rm out}=N_{\omega\lambda}2^{i\omega}\frac{\Gamma(-i\omega)}{D_-},\qquad |A_{\rm in}|^2=|A_{\rm out}|^2=\frac1{4\pi\omega}. \tag{3.12}
\end{align}$$

Therefore

$$\begin{align}
\boxed{ \mathcal R_\lambda(\omega):=\frac{A_{\rm out}}{A_{\rm in}} =2^{2i\omega}\frac{\Gamma(-i\omega)}{\Gamma(i\omega)} \frac{ \Gamma\left(\frac{1+\nu+i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu+i(\omega+\lambda)}2\right)}{ \Gamma\left(\frac{1+\nu-i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu-i(\omega+\lambda)}2\right)}.} \tag{3.13}
\end{align}$$

For real $\omega$,

$$\begin{align}
|\mathcal R_\lambda(\omega)|=1,\qquad \lim_{\omega\downarrow0}\mathcal R_\lambda(\omega)=-1. \tag{3.14}
\end{align}$$

There are two independent proofs of the modulus statement.

1. Every gamma factor in the numerator of (3.13) is paired with its complex conjugate in the denominator.
2. The radial Wronskian current is constant. Dirichlet data make it vanish at the AdS boundary, while (3.10) gives a horizon current proportional to $|A_{\rm out}|^2-|A_{\rm in}|^2$.

The second proof uses only self-adjointness and remains valid if no gamma-function closed form is available.

Analytic continuation supplies a consistency check: setting the outgoing coefficient to zero gives the standard massless-topological-black-hole quasinormal frequencies

$$\begin{align}
\omega=\pm\lambda-i(2j+1+\nu),\qquad j=0,1,2,\ldots, \tag{3.15}
\end{align}$$

but quasinormal modes are not part of the real-frequency self-adjoint basis.

### 3.4 Infrared Space

For spectral coordinates $b_\lambda(\omega)$ define

$$
\begin{aligned}
\mathcal E_\lambda^{\rm en}
&:=L^2((0,\infty),\omega d\omega),\\
\mathcal P_\lambda^{\rm rad}
&:=L^2((0,\infty),d\omega)\cap L^2((0,\infty),\omega d\omega).
\end{aligned}
\tag{3.16}
$$

The first is the homogeneous boost-energy completion; the second is the IR-regular radiation completion. With graph norm $\int(1+\omega)|b_\lambda|^2d\omega$, its symplectic form is bounded and nondegenerate but weak: the flat map is not onto the full graph-space dual. The continuous limit $\mathcal R_\lambda(0)=-1$ means no hard infrared cutoff is needed, but energy alone still does not control the unweighted symplectic norm. This is the same threshold norm issue as flat Rindler KL scattering, not a zero-mode resonance.

## 4. Full Transverse Direct Integral and Wedge CPS

### 4.1 Exact Helgason--Fourier Measure

Put

$$\begin{align}
\rho_n:=\frac{n-1}{2},\qquad \Lambda_n:=(0,\infty)_\lambda\times S^{n-1}_\vartheta. \tag{4.1}
\end{align}$$

In the hyperboloid model write $Y=(Y^0,\mathbf Y)\in\mathbb H^n$ and $\Lambda(\vartheta)=(1,\vartheta)$. With

$$\begin{align}
h_{\lambda,\vartheta}(Y) :=(Y^0-\mathbf Y\cdot\vartheta)^{i\lambda-\rho_n},\qquad -\Delta_{\mathbb H^n}h_{\lambda,\vartheta} =(\lambda^2+\rho_n^2)h_{\lambda,\vartheta}, \tag{4.2}
\end{align}$$

define the Helgason transform initially on $C_c^\infty(\mathbb H^n)$ by

$$\begin{align}
(\mathcal F_{\mathbb H}f)(\lambda,\vartheta) =\int_{\mathbb H^n}\overline{h_{\lambda,\vartheta}(Y)}f(Y)d{\rm vol}_{\mathbb H^n}. \tag{4.3}
\end{align}$$

Take $d\vartheta$ to be the ordinary area measure on $S^{n-1}$; for $n=1$, it is counting measure on $S^0$. With this convention the positive-frequency Plancherel measure is

$$\begin{align}
\boxed{ d\mu_{\mathbb H^n}(\lambda,\vartheta) =\frac1{(2\pi)^n} \frac{|\Gamma(\rho_n+i\lambda)|^2}{|\Gamma(i\lambda)|^2} d\lambda\,d\vartheta.} \tag{4.4}
\end{align}$$

The full-line inversion formula has density $[2(2\pi)^n]^{-1}|\Gamma(\rho_n+i\lambda)/\Gamma(i\lambda)|^2$; restricting the Weyl parameter to $\lambda>0$ doubles it. This precise convention and formula are recorded in Section 5.1.1 of [Lian, *Closed expression of the hyper-complex Fourier kernel*](https://backoffice.biblio.ugent.be/download/8524975/8524976), while the invariant Plancherel theorem and range statement are the classical Helgason theorem. Thus

$$\begin{align}
\mathcal F_{\mathbb H}:L^2(\mathbb H^n) \xrightarrow{\ \cong\ } L^2(\Lambda_n,d\mu_{\mathbb H^n}),\qquad \mathcal F_{\mathbb H}(-\Delta_{\mathbb H^n})\mathcal F_{\mathbb H}^{-1} =\lambda^2+\rho_n^2. \tag{4.5}
\end{align}$$

The label $\vartheta$ is the missing degeneracy/angular label. A scalar coefficient indexed only by $\lambda$ is not a full-field spectral coordinate.

### 4.2 Assembly of the Radial Transforms

After $\chi=r^{n/2}\phi$, the static configuration Hilbert space is

$$\begin{align}
\mathscr H_{\rm stat} =L^2((0,\infty)_x\times\mathbb H^n,dx\,d{\rm vol}_{\mathbb H^n}) \cong\int_{\Lambda_n}^{\oplus}L^2(0,\infty)_x\,d\mu_{\mathbb H^n}. \tag{4.6}
\end{align}$$

On the core $C_c^\infty(0,\infty)\otimes C_c^\infty(\mathbb H^n)$ the positive Friedrichs operator decomposes as

$$\begin{align}
\mathscr H =\int_{\Lambda_n}^{\oplus}H_\lambda\,d\mu_{\mathbb H^n}, \tag{4.7}
\end{align}$$

and its closure has the same direct-integral representation. The kernel $\varphi_{\omega\lambda}(x)$ is jointly continuous in $(\omega,\lambda,x)$ away from $\omega=0$ and has a Borel threshold limit in the spectral-measure sense. Hence $\lambda\mapsto\mathcal U_\lambda$ is a measurable field of unitaries. The fiber theorem gives the unitary full-field transform

$$\begin{align}
\mathbf U:=\int_{\Lambda_n}^{\oplus}\mathcal U_\lambda\,d\mu_{\mathbb H^n}: \mathscr H_{\rm stat} \xrightarrow{\ \cong\ } L^2((0,\infty)_\omega\times\Lambda_n,d\omega\,d\mu_{\mathbb H^n}). \tag{4.8}
\end{align}$$

**Proposition 4.1 (full-field radial Plancherel theorem).** Equations (4.4)--(4.8) give the spectral resolution of the full Dirichlet AdS--Rindler static operator. In particular, generalized eigenfunctions are labelled by $(\omega,\lambda,\vartheta)$, the spectral multiplicity in the transverse direction is the Helgason multiplicity, and no additional uniform pointwise bound in $\lambda$ is required for $L^2$ unitarity.

**Proof.** The Helgason transform diagonalizes the transverse Laplacian with (4.4). The potential (2.10) depends continuously on $\lambda^2$, so the closed forms $h_\lambda$ constitute a measurable family and their Friedrichs operators form (4.7). Theorem 3.1 makes every $\mathcal U_\lambda$ unitary. The measurable direct-integral theorem then proves (4.8); Tonelli's theorem gives equality of norms. $\square$

The reflection coefficient is jointly continuous on $(0,\infty)_\omega\times[0,\infty)_\lambda$, Borel at $\omega=0$, and has unit modulus. Therefore

$$\begin{align}
(\mathbf Rb)(\omega,\lambda,\vartheta) :=\mathcal R_\lambda(\omega)b(\omega,\lambda,\vartheta) \tag{4.9}
\end{align}$$

is a unitary multiplier on every full-field $L^2$ space used below. For fixed $\omega>0$, Stirling's formula gives

$$\begin{align}
N_{\omega\lambda} \sim \frac{\sqrt\pi}{\sqrt\omega|\Gamma(i\omega)|} \left(\frac\lambda2\right)^\nu e^{-\pi\lambda/2}, \qquad \lambda\to\infty, \tag{4.10}
\end{align}$$

while (3.12) remains $|A_{\rm in}|=|A_{\rm out}|=(4\pi\omega)^{-1/2}$. The exponential factor in the boundary-normalized mode is exactly cancelled in its unit-flux horizon amplitude. Thus high $\lambda$ creates no obstruction to the bulk $L^2$ Cauchy-to-radiation transform. This statement is not a claim about pointwise bulk-to-boundary smearing kernels in AdS/CFT, which use a different norm and a different target.
The asymptotic (4.10) is not asserted uniformly when $\omega$ and $\lambda$ diverge together; such a pointwise estimate is unnecessary because the exact fiber operators and the exact multiplier (4.9) already have norm one.

### 4.3 Full Wedge Phase Space and Radiation Space

Let

$$\begin{align}
\mathcal C_A^{\rm wedge} :=D(\mathscr H^{1/2})\oplus L^2((0,\infty)\times\mathbb H^n), \tag{4.11}
\end{align}$$

where the two entries are the rescaled configuration and future-time velocity. This is the full wedge finite-static-energy Cauchy space. If $\widetilde q=\mathbf Uq$ and $\widetilde p=\mathbf Up$, put

$$\begin{align}
b(\omega,\lambda,\vartheta) =\sqrt{\frac\omega2}\,\widetilde q +\frac{i}{\sqrt{2\omega}}\,\widetilde p. \tag{4.12}
\end{align}$$

On the common real core,

$$
\begin{aligned}
\Omega_A(1,2)
&=2\operatorname{Im}\int_{\Lambda_n}\int_0^\infty
\overline{b_1}b_2\,d\omega\,d\mu_{\mathbb H^n},\\
H_A[b]
&=\int_{\Lambda_n}\int_0^\infty
\omega|b|^2d\omega\,d\mu_{\mathbb H^n}.
\end{aligned}
\tag{4.13}
$$

The homogeneous boost-energy and IR-regular radiation spaces are therefore

$$
\begin{aligned}
\mathcal E^{\rm en}
&=L^2(\omega d\omega\,d\mu_{\mathbb H^n}),\\
\mathcal P^{\rm rad}
&=L^2(d\omega\,d\mu_{\mathbb H^n})
\cap L^2(\omega d\omega\,d\mu_{\mathbb H^n}).
\end{aligned}
\tag{4.14}
$$

The multiplier (4.9) is an energy isometry on $\mathcal E^{\rm en}$ and is unitary and symplectic on $\mathcal P^{\rm rad}$. With the graph norm $\int(1+\omega)|b|^2d\omega$, the form on $\mathcal P^{\rm rad}$ is bounded and nondegenerate but weak symplectic. The realification of the unweighted $L^2(d\omega\,d\mu_{\mathbb H^n})$ completion is strong symplectic. Energy alone does not control that unweighted form at $\omega=0$.

### 4.4 Fixed-Fiber Form of the CPS

The first variation of (1.15) gives

$$\begin{align}
\theta^\mu=-\partial^\mu\phi\,\delta\phi,\qquad \omega^\mu(1,2)=\delta_1\phi\,\partial^\mu\delta_2\phi -\delta_2\phi\,\partial^\mu\delta_1\phi. \tag{4.15}
\end{align}$$

For linearized solutions, $\nabla_\mu\omega^\mu=0$. After normalizing the transverse harmonic, the fixed-channel form on $\tau=0$ is

$$\begin{align}
\Omega_{A,\lambda} =\int_1^\infty dr\,\frac{r^n}{f(r)} \delta q_A\wedge\delta p_A =\int_0^\infty d\xi\, \frac{(1+\xi^2)^{(d-2)/2}}{\xi} \delta q_A\wedge\delta p_A, \tag{4.16}
\end{align}$$

where

$$\begin{align}
q_A=\phi_\lambda|_{\tau_A=0},\qquad p_A=\partial_{\tau_A}\phi_\lambda|_{\tau_A=0}. \tag{4.17}
\end{align}$$

Let $\widetilde q=\mathcal U_\lambda(r^{n/2}q)$ and similarly for $p$. On a common spectral core set

$$\begin{align}
b_\lambda(\omega)=\sqrt{\frac\omega2}\widetilde q(\omega) +\frac{i}{\sqrt{2\omega}}\widetilde p(\omega). \tag{4.18}
\end{align}$$

Then

$$\begin{align}
\Omega_{A,\lambda}(1,2) =2\operatorname{Im}\int_0^\infty \overline{b_{1,\lambda}(\omega)}b_{2,\lambda}(\omega)d\omega,\qquad H_{A,\lambda}=\int_0^\infty\omega|b_\lambda(\omega)|^2d\omega. \tag{4.19}
\end{align}$$

Thus the transform (3.7) is both the self-adjoint spectral transform and the wedge-CPS-to-radiation transform.

### 4.5 Three Horizon Objects

The following remain distinct.

1. A **sharp affine trace** is an actual profile in the Kruskal affine parameter $U$ or $V$, including its value at $U=V=0$.
2. A **logarithmic radiation field** is the scattering limit at fixed $s_\pm=\tau\pm r_*$. It is naturally homogeneous and may be defined only modulo a constant.
3. A **finite characteristic profile** is a declared Sobolev function on a finite null segment, including its endpoint and bifurcation trace.

From (3.12), the incoming and outgoing logarithmic Fourier coefficients have modulus

$$\begin{align}
|a_\lambda^\pm(\omega)|^2=\frac{|b_\lambda(\omega)|^2}{4\pi\omega}. \tag{4.20}
\end{align}$$

Consequently their null flux is exactly (4.19), and outgoing radiation is multiplication by $\mathcal R_\lambda$. A generic element of $\mathcal P_\lambda^{\rm rad}$ need not possess an affine endpoint limit. No sharp horizon operator is inferred from (4.20).

### 4.6 What the AdS Boundary Removes

The Dirichlet/Friedrichs domain selects one boundary-regular radial solution. Hence there is no independently specifiable incoming channel from the outer radial end: horizon scattering is one-channel and reflecting, with unit-modulus multiplier (3.13). Relative to flat Rindler, this outer selection is a physical boundary condition rather than a decay convention.

It does not fix a bifurcation value, convert homogeneous radiation into an affine trace, or determine left-right state correlations.

## 5. Full-Field Bifurcation Matching

### 5.1 The Complete Slice and the Two Trace Topologies

On the global slice $X^0=0$, introduce the signed normal coordinate $\sigma$ by

$$\begin{align}
X^1=\sinh\sigma,\qquad (X^{-1},X^2,\ldots,X^d)=\cosh\sigma\,Y,\qquad Y\in\mathbb H^n. \tag{5.1}
\end{align}$$

Then

$$\begin{align}
\Sigma_0\cong\mathbb H^d,\qquad h_{\Sigma_0}=d\sigma^2+\cosh^2\sigma\,h_{\mathbb H^n},\qquad \mathcal B=\{\sigma=0\}\cong\mathbb H^n. \tag{5.2}
\end{align}$$

The right and left regional slices are $\sigma>0$ and $\sigma<0$. For geometric finite local energy the configuration space is $H^1(\Sigma_0)$. The bounded-geometry trace theorem of [Große and Schneider, *Sobolev spaces on Riemannian manifolds with bounded geometry: General coordinates and traces*](https://arxiv.org/abs/1301.2539), applied in the Fermi collar (5.2), gives a continuous surjection with a continuous right inverse:

$$\begin{align}
\operatorname{Tr}_{\mathcal B}:H^1(\Sigma_{0,A}) \longrightarrow H^{1/2}(\mathcal B). \tag{5.3}
\end{align}$$

There is a global refinement which must not be hidden. Global AdS time has lapse

$$\begin{align}
N(\sigma,Y)=X^{-1}=\cosh\sigma\,Y^0. \tag{5.4}
\end{align}$$

An equivalent graph norm on the standard Dirichlet configuration form domain $\mathcal Q_D=D(A_D^{1/2})$ is, in a collar of $\mathcal B$,

$$\begin{align}
\|q\|_{\mathcal Q_D}^2\simeq \int N\left(|\nabla_{\Sigma_0}q|^2+(1+M^2)|q|^2\right)d{\rm vol}_{\Sigma_0}. \tag{5.5}
\end{align}$$

Since $|\nabla\log N|$ is bounded on this collar, multiplication by $N^{1/2}$ identifies (5.5) with an ordinary $H^1$ collar norm. Consequently the exact trace space induced by the conserved global-time energy is the weighted space

$$\begin{align}
\boxed{ \mathcal T_{\mathcal B}:= \left\{c:(Y^0)^{1/2}c\in H^{1/2}(\mathbb H^n)\right\},\qquad \|c\|_{\mathcal T_{\mathcal B}} :=\|(Y^0)^{1/2}c\|_{H^{1/2}(\mathbb H^n)}.} \tag{5.6}
\end{align}$$

Thus the unweighted statement $c\in H^{1/2}(\mathcal B)$ is exact for geometric local energy and on every compact transverse set, but it is not the complete global Killing-energy statement. Since $Y^0\geq1$, $\mathcal T_{\mathcal B}$ embeds continuously in $H^{1/2}(\mathcal B)$. In Helgason variables the latter norm is

$$\begin{align}
\|c\|_{H^{1/2}(\mathcal B)}^2 =\int_{\Lambda_n} (1+\lambda^2+\rho_n^2)^{1/2}
|\widehat c(\lambda,\vartheta)|^2d\mu_{\mathbb H^n}. \tag{5.7}
\end{align}$$

The weighted norm (5.6) is not diagonal in $\lambda$: multiplication by $(Y^0)^{1/2}$ recombines Helgason channels. This is one reason that a formal collection $c_\lambda$ is not the full bifurcation field.

### 5.2 Full-Field Patching Theorem

Use the future unit-normal velocity $\pi=\partial_{X^0}\phi$ on $\Sigma_0$. Let

$$
\mathcal C_{\rm bif}^{\rm geom}:=
\left\{(q_L,\pi_L;q_R,\pi_R):
\begin{array}{l}
q_A\in H^1(\Sigma_{0,A}),\quad \pi_A\in L^2(\Sigma_{0,A}),\\
\operatorname{Tr}_{\mathcal B}q_L=\operatorname{Tr}_{\mathcal B}q_R
\text{ in }H^{1/2}(\mathcal B)
\end{array}
\right\}. \tag{5.8}
$$

For the conserved Dirichlet energy replace $H^1$ by $\mathcal Q_{D,A}$, the momentum norm by $L^2(Nd{\rm vol}_{\Sigma_0})$ for $\pi$, and $H^{1/2}$ by $\mathcal T_{\mathcal B}$; call the resulting space $\mathcal C_{\rm bif}^{D}$. Equivalently, if $p=\partial_t\phi=N\pi$, its momentum norm is $L^2(N^{-1}d{\rm vol}_{\Sigma_0})$.

**Theorem 5.1 (full-field bifurcation matching).** Piecewise assembly across $\sigma=0$ is a Hilbert-space isomorphism

$$\begin{align}
\mathsf A_{\rm bif}:\mathcal C_{\rm bif}^{\rm geom} \xrightarrow{\ \cong\ }
H^1(\Sigma_0)\oplus L^2(\Sigma_0), \tag{5.9}
\end{align}$$

and restricts to an isomorphism from $\mathcal C_{\rm bif}^{D}$ onto the global Dirichlet finite-energy Cauchy space. Configuration fields patch if and only if their traces agree in the stated trace space; momenta patch with no trace condition. Moreover

$$\begin{align}
\Omega_{\Sigma_0} =\int_{\Sigma_0}\delta q\wedge\delta\pi\,d{\rm vol}_{\Sigma_0} =\Omega_L+\Omega_R. \tag{5.10}
\end{align}$$

**Proof.** In the collar (5.2), multiplication by the smooth positive density factors and, for the Dirichlet form, by $N^{1/2}$ reduces the assertion to the Sobolev patching theorem on $(-\varepsilon,\varepsilon)_\sigma\times\mathbb H^n$. A piecewise $H^1$ function has distributional derivative
$\partial_\sigma q=(\partial_\sigma q)_{\rm pw}+(\operatorname{Tr}q_R-\operatorname{Tr}q_L)\delta_{\mathcal B}$; it lies in $L^2$ exactly when the jump vanishes in $H^{1/2}(\mathcal B)$. The trace map is surjective and has a bounded right inverse, so the condition is also sufficient. The same argument after multiplication by $N^{1/2}$ proves the weighted statement (5.6). An $L^2$ momentum has no codimension-one trace and patches freely. Splitting the integrals at $\sigma=0$ proves the norm and symplectic identities. $\square$

### 5.3 Transport to the Corner-Completed Full Radiation Image

At $\tau_A=0$, the wedge time velocity is

$$\begin{align}
p_A=\partial_{\tau_A}\phi=|\sinh\sigma|\,\pi_A. \tag{5.11}
\end{align}$$

Define $\mathcal C_{\rm bif}^{\rm rad}$ to be the graph-norm intersection of $\mathcal C_{\rm bif}^{D}$ with the two wedge domains $\mathcal C_L^{\rm wedge}\oplus\mathcal C_R^{\rm wedge}$ after (5.11) and the common rescaling $(q_A,p_A)\mapsto r^{n/2}(q_A,p_A)$ of Section 2.2. Require in addition that both radiation coefficients lie in the IR-regular space $\mathcal P^{\rm rad}$ of (4.14). Let $\mathcal C_{\rm bif}^{\rm rad,\infty}$ denote the subdomain of smooth matched Dirichlet data whose full radiation coefficients are smooth Helgason wave packets with compact spectral support in $\omega>0$. No density claim for this subdomain in the complete weighted intersection is needed below. The full-field corner-completed radiation images are

$$
\mathfrak R_{\rm bif}^{\pm}:=
\left\{(c(Y),b_L^\pm,b_R^\pm):
\begin{array}{l}
z\in\mathcal C_{\rm bif}^{\rm rad},\quad
c=\operatorname{Tr}_{\mathcal B}q_L=\operatorname{Tr}_{\mathcal B}q_R\in\mathcal T_{\mathcal B},\\
b_A^\pm=\operatorname{Rad}_A^\pm(z_A)
\in L^2(d\omega\,d\mu_{\mathbb H^n})
\end{array}
\right\}. \tag{5.12}
$$

Its topology and weak symplectic form are transported from $\mathcal C_{\rm bif}^{\rm rad}$. The outgoing classes obey $b_A^+=\mathbf Rb_A^-$, but the actual field $c(Y)$ is retained independently of the homogeneous logarithmic radiation norm.

**Proposition 5.2 (canonical full-field gluing domain).** The image (5.12) is a full-field, bifurcation-compatible partial gluing domain. It contains the transverse degeneracy labels and an actual corner field in $\mathcal T_{\mathcal B}$; it is not the unrestricted product of two wedge radiation Hilbert spaces. On its smooth core, wedge evolution, reflection, and local characteristic completion agree with restriction of global Cauchy evolution.

**Proof.** Theorem 5.1 gives the unique assembled Cauchy datum and equality of symplectic forms. Proposition 4.1 gives injective unitary wedge radiation transforms with all transverse labels. Uniqueness of the wedge and local Goursat problems identifies the two evolutions. $\square$

### 5.4 Fixed-Channel Fiber Statement

On the common $\tau=0$ slice, both (1.7) and the future-oriented choice (1.8) give

$$\begin{align}
\left.\partial_{\tau_R}\right|_0 =\xi\partial_{X^0},\qquad \left.\partial_{\tau_L}\right|_0 =\xi\partial_{X^0}. \tag{5.13}
\end{align}$$

Therefore the unit-normal velocity is

$$\begin{align}
\pi_A=\frac{p_A}{\xi},\qquad A=L,R, \tag{5.14}
\end{align}$$

with no left sign. Let

$$\begin{align}
a_d(\xi):=(1+\xi^2)^{(d-2)/2}. \tag{5.15}
\end{align}$$

For one fixed $\lambda$, define the half-slice Sobolev space $\mathcal V_\lambda(\mathbb R_+)$ by the norm

$$\begin{align}
\|q\|_{\mathcal V_\lambda}^2 :=\int_0^\infty a_d(\xi)\left[ (1+\xi^2)|q'|^2+ \left(1+M^2+\frac{\kappa_\lambda^2}{1+\xi^2}\right)|q|^2 \right]d\xi. \tag{5.16}
\end{align}$$

The added $1$ only fixes a Hilbert norm; it is not a new mass term. Define the matched mode space bottom-up:

$$
\mathcal C_{\lambda,\rm bif}:=
\left\{(q_L,p_L;q_R,p_R):
\begin{array}{l}
q_A\in\mathcal V_\lambda(\mathbb R_+),\\
p_A/\xi\in L^2(\mathbb R_+,a_d(\xi)d\xi),\\
\operatorname{Tr}_0q_L=\operatorname{Tr}_0q_R
\end{array}\right\}.
\tag{5.17}
$$

### 5.5 Modewise Patching Corollary

Let $s$ be the signed proper normal coordinate near $\mathcal B$, with $s=\xi$ on $R$ and $s=-\xi$ on $L$. Extend all coefficients in (5.16) evenly in $s$.

**Corollary 5.3 (fixed-channel AdS bifurcation matching).** Formally disintegrating Theorem 5.1 gives the following fiber statement: piecewise assembly in $s$ identifies the two fixed-$\lambda$ Sobolev half-lines when their scalar traces agree. The fiber symplectic forms are

$$
\begin{aligned}
\Omega_{\lambda,\rm bif}
&=\sum_{A=L,R}\int_0^\infty d\xi\,
\frac{a_d(\xi)}{\xi}\delta q_A\wedge\delta p_A\\
&=\sum_A\int_0^\infty a_d(\xi)d\xi\,
\delta q_A\wedge\delta\pi_A
=\Omega_{\lambda,\rm global}.
\end{aligned}
\tag{5.18}
$$

**Proof.** The coefficients in (5.16) are smooth, positive, and even at $s=0$. The one-dimensional weighted Sobolev patching lemma therefore reduces locally to the ordinary statement: two half-line $H^1$ functions patch to one $H^1$ function exactly when their traces agree. Momentum is only $L^2$ and has no trace condition. Splitting the integrals gives the norm identity. Equation (5.14) gives (5.18); reversing $s=-\xi$ on the left reverses both the limits and the differential, leaving no sign. $\square$

The common coefficient

$$\begin{align}
c_\lambda:=\operatorname{Tr}_0q_L=\operatorname{Tr}_0q_R \tag{5.19}
\end{align}$$

is a useful fiber diagnostic, but it is not by itself a Hilbert-space datum because one generalized Helgason channel is delta-normalized. The actual full field is the function $c(Y)$ in (5.12), with the local $H^{1/2}$ and global weighted topology established above.

As in the flat calculation, global-slice energy and boost energy are not identical. The radial-radiation-compatible subspace has the additional weighted condition

$$\begin{align}
\sum_A\int_0^\infty \xi a_d(\xi)\left[ (1+\xi^2)|q_A'|^2+ \left(M^2+\frac{\kappa_\lambda^2}{1+\xi^2}\right)|q_A|^2 +|\pi_A|^2\right]\,d\xi<\infty. \tag{5.20}
\end{align}$$

A nonzero $c_\lambda$ is finite in this homogeneous form but is not in the unweighted tortoise $L^2$ graph norm. The corner-completed radiation image must therefore retain $c_\lambda$ beside the homogeneous class. This resolves the lift on the matched image, not on arbitrary intrinsic radiation data.

**Diagnostic 5.4 (a single $\lambda$ is only a fiber).** On noncompact $\mathbb H^n$, $h_{\lambda,\vartheta}$ is delta-normalized rather than $L^2$. Corollary 5.3 is therefore a disintegrated identity, not an independently quantizable field theorem. Proposition 4.1 and Theorem 5.1 are the corresponding full-field statements.

## 6. Full-Field Local Characteristic Composition

### 6.1 Fixed-Channel Volterra Diagnostic

For the fixed channel rescale

$$\begin{align}
\Phi_\lambda(U,V):=r(UV)^{n/2}\phi_\lambda(U,V). \tag{6.1}
\end{align}$$

The wave equation obtained from (2.9) and (1.12) is

$$\begin{align}
\boxed{ \partial_U\partial_V\Phi_\lambda +\mathcal W_\lambda(UV)\Phi_\lambda=0,} \tag{6.2}
\end{align}$$

where

$$\begin{align}
\boxed{ \mathcal W_\lambda(s)= \frac{\nu^2-\frac14}{(1+s)^2} +\frac{\lambda^2+\frac14}{(1-s)^2},\qquad s=UV.} \tag{6.3}
\end{align}$$

This coefficient is smooth on every compact set with $|UV|<1$, including the two intersecting horizons and the bifurcation surface. In particular,

$$\begin{align}
\mathcal W_\lambda(0)=M^2+\kappa_\lambda^2+n. \tag{6.4}
\end{align}$$

Give two incoming profiles in $F$,

$$\begin{align}
f(V)=\Phi_\lambda(0,V),\qquad g(U)=\Phi_\lambda(U,0),\qquad f(0)=g(0)=c_\lambda. \tag{6.5}
\end{align}$$

Then (6.2) is equivalent to the Volterra equation

$$\begin{align}
\Phi_\lambda(U,V)=f(V)+g(U)-c_\lambda -\int_0^U dU'\int_0^V dV'\, \mathcal W_\lambda(U'V')\Phi_\lambda(U',V'). \tag{6.6}
\end{align}$$

For two variations obeying the same corner condition, orient the two incoming rays into $F$ and set

$$
\begin{aligned}
\Omega_{\partial D,\lambda}^{\rm in}(1,2)
&=\int_0^{V_0}
\left(\delta_1f\,\partial_V\delta_2f
-\delta_2f\,\partial_V\delta_1f\right)dV\\
&\quad+\int_0^{U_0}
\left(\delta_1g\,\partial_U\delta_2g
-\delta_2g\,\partial_U\delta_1g\right)dU .
\end{aligned}
\tag{6.6a}
$$

The endpoint calculation is independent of $\mathcal W_\lambda$. Impose the following finite-segment policy: no source is placed at the two outer endpoints, and Hamiltonian vectors vanish there. A linear functional

$$\begin{align}
L(f,g,c)=\int_0^{V_0}Ff\,dV+\int_0^{U_0}Gg\,dU+\alpha c \tag{6.6b}
\end{align}$$

has a Hamiltonian vector for (6.6a) exactly when

$$\begin{align}
\int_0^{V_0}F\,dV=\int_0^{U_0}G\,dU=:I,\qquad \alpha=-I. \tag{6.6c}
\end{align}$$

Thus the common bifurcation coefficient is part of the characteristic canonical data; it is not silently fixed or appended as an independent oscillator.

### 6.2 Fixed-Channel Local Composition

**Theorem 6.1 (local AdS--Rindler characteristic composition).** Let $U_0V_0<1$. If $f\in C^1([0,V_0])$, $g\in C^1([0,U_0])$, and $f(0)=g(0)$, then (6.6) has a unique $C^1$ solution with continuous mixed derivative on $[0,U_0]\times[0,V_0]$. With the no-outer-endpoint policy above, the Goursat map is symplectic between the two incoming null profiles, with their common corner retained, and any spacelike Cauchy segment in the rectangle.

**Proof.** On the rectangle, $\mathcal W_\lambda$ is bounded. Picard iteration of (6.6) has $j$-th difference bounded by $C(KU_0V_0)^j/(j!)^2$, so the series converges uniformly and uniqueness follows from the same estimate. Differentiation gives (6.2). The field redefinition (6.1) removes the first-derivative term, so the reduced current is the standard current of (6.2). Stokes' theorem between the two null sides and a spacelike segment identifies its incoming flux with (6.6a). The two copies of the corner cancel only because (6.5) is imposed. $\square$

For the operator statement no characteristic distribution is pulled back. Let $\chi$ be a compact test density in the interior and choose a slightly larger globally hyperbolic two-dimensional neighborhood on which $\mathcal W_\lambda$ is smooth. Denote its causal propagator by $E_{\lambda,\rm loc}$. Then $E_{\lambda,\rm loc}\chi$ is a smooth homogeneous solution, and Green's second identity gives, for every characteristic datum $z$,

$$\begin{align}
(G_\lambda^*\chi)(z) =\Omega_{\partial D,\lambda}^{\rm in} \left(\gamma_{\partial D}E_{\lambda,\rm loc}\chi,z\right). \tag{6.6d}
\end{align}$$

Thus the Hamiltonian vector of $G_\lambda^*\chi$ is the ordinary smooth trace $\gamma_{\partial D}E_{\lambda,\rm loc}\chi$. Applying the same identity twice gives the entirely smeared formula

$$\begin{align}
P_{\partial D,\lambda}(G_\lambda^*\chi,G_\lambda^*\psi) =E_{\lambda,\rm loc}(\chi,\psi). \tag{6.7}
\end{align}$$

The result is independent of the auxiliary extension because only the causal hull of the two compact supports enters. Equation (6.6d) restricts the smooth solutions $E_{\lambda,\rm loc}\chi$ and $E_{\lambda,\rm loc}\psi$; no literal pullback of the distributional kernel of $E_{\lambda,\rm loc}$ to a null embedding is used.

### 6.3 Unreduced Full-Field Goursat Theorem

The fixed-channel Volterra equation is useful for checks, but the full local theorem is geometric. Let

$$\begin{align}
\mathcal N_U:=\{U=0,\ 0\leq V\leq V_0\},\qquad \mathcal N_V:=\{V=0,\ 0\leq U\leq U_0\},\qquad \mathcal N:=\mathcal N_U\cup\mathcal N_V, \tag{6.8}
\end{align}$$

with the transverse factor $\mathbb H^n$ understood, and choose the local future domain $D$ so that $\overline D\subset\{UV<1\}$. The union $\mathcal N$ is one Lipschitz, fully characteristic hypersurface with corner $\mathcal B$. Define

$$\begin{align}
\mathcal H_{\mathcal N}:= \left\{(f,g)\in H^1(\mathcal N_U)\oplus H^1(\mathcal N_V): \operatorname{Tr}_{\mathcal B}f=\operatorname{Tr}_{\mathcal B}g =:c\in H^{1/2}(\mathcal B)\right\}. \tag{6.9}
\end{align}$$

Here $H^1(\mathcal N_U)$ controls the affine derivative $\partial_V$, the transverse derivative $\nabla_{\mathbb H^n}$, and the $L^2$ norm; similarly for $\mathcal N_V$. Let

$$\begin{align}
\mathcal E(D):= C^0([0,T];H^1(\Sigma))\cap C^1([0,T];L^2(\Sigma)) \tag{6.10}
\end{align}$$

denote the finite-energy solution space on any regular spacelike foliation of $D$.

**Lemma 6.2a (noncompact characteristic extension).** Let the two-dimensional $(U,V)$-base of $D$ be compact and globally hyperbolic, with $\mathcal N$ as its complete past characteristic boundary, a regular spacelike foliation, and no additional timelike side boundary. Let

$$\begin{align}
q_D:=\sup_{\overline D}UV<1, \tag{6.10a}
\end{align}$$

and retain the complete transverse factor $\mathbb H^n$. Choose any regular spacelike foliation $\{\Sigma_s\}_{0\leq s\leq T}$ of $D$ and equip (6.10) with the equivalent energy norm

$$\begin{align}
\|\phi\|_{\mathcal E(D)}^2 :=\sup_{0\leq s\leq T} \left(\|n_s\phi\|_{L^2(\Sigma_s)}^2+\|\phi\|_{H^1(\Sigma_s)}^2\right).
\end{align}$$

For the Helgason transform of $\Phi=r^{n/2}\phi$, define the fiber norms

$$
\begin{aligned}
\|(f_\lambda,g_\lambda)\|_{\mathcal H_{\mathcal N,\lambda}}^2
&:=\int_0^{V_0}\left(|\partial_Vf_\lambda|^2+(1+\lambda^2)|f_\lambda|^2\right)dV\\
&\quad+\int_0^{U_0}\left(|\partial_Ug_\lambda|^2+(1+\lambda^2)|g_\lambda|^2\right)dU,\\
\|\Phi_\lambda\|_{\mathcal E_\lambda(D)}^2
&:=\sup_{0\leq s\leq T}\int_{\Sigma_s^{(2)}}
\left(|n_s\Phi_\lambda|^2+|\partial_{\Sigma_s^{(2)}}\Phi_\lambda|^2
+(1+\lambda^2)|\Phi_\lambda|^2\right)d\Sigma_s^{(2)} .
\end{aligned}
\tag{6.10b}
$$

Here $\Sigma_s^{(2)}$ is the one-dimensional slice in the $(U,V)$ base; the label $\vartheta$ is passive. There is a constant $C_D\geq1$, depending only on $D,d,M$ and the chosen foliation, such that every smooth compatible fiber datum satisfies

$$\begin{align}
C_D^{-1}\|(f_\lambda,g_\lambda)\|_{\mathcal H_{\mathcal N,\lambda}} \leq
\|G_\lambda(f_\lambda,g_\lambda)\|_{\mathcal E_\lambda(D)} \leq C_D\|(f_\lambda,g_\lambda)\|_{\mathcal H_{\mathcal N,\lambda}} . \tag{6.10c}
\end{align}$$

The same $C_D$ works for every $\lambda\geq0$ and every compact transverse or spectral cutoff. After integration against $d\mu_{\mathbb H^n}(\lambda,\vartheta)$ and undoing the bounded rescaling by $r^{n/2}$, this gives

$$\begin{align}
C_D^{-1}\|(f,g)\|_{\mathcal H_{\mathcal N}} \leq
\|G_D(f,g)\|_{\mathcal E(D)} \leq C_D\|(f,g)\|_{\mathcal H_{\mathcal N}} . \tag{6.10d}
\end{align}$$

Consequently the compactly supported smooth characteristic problem extends uniquely by density to all of $\mathcal H_{\mathcal N}$, with existence, uniqueness, and continuous dependence. The common trace in $H^{1/2}(\mathcal B)$ is preserved by this completion.

**Proof.** For $\zeta=UV\in[0,q_D]$, the exact coefficient (6.3) obeys

$$\begin{align}
c_D(1+\lambda^2)\leq \mathcal W_\lambda(\zeta)
\leq C_D'(1+\lambda^2), \qquad |\partial_U\mathcal W_\lambda|+|\partial_V\mathcal W_\lambda|
\leq C_D'\mathcal W_\lambda, \tag{6.10e}
\end{align}$$

with positive constants independent of $\lambda$. Indeed, $\mathcal W_\lambda\geq(\nu^2-1/4)/(1+q_D)^2+\lambda^2+1/4$ and $\mathcal W_\lambda\leq\nu^2-1/4+(\lambda^2+1/4)/(1-q_D)^2$, while termwise differentiation gives
$|\mathcal W_\lambda'(\zeta)|\leq2(1-q_D)^{-1}\mathcal W_\lambda(\zeta)$.
Since $U,V$ range over a compact base, the last inequality implies the derivative bound in (6.10e).

**Uniformity remark.** The decisive estimate is the relative bound

$$\begin{align}
\boxed{|\mathcal W_\lambda'(\zeta)|\leq\frac{2}{1-q_D}\mathcal W_\lambda(\zeta)},\qquad 0\leq\zeta\leq q_D, \tag{6.10e'}
\end{align}$$

not an absolute bound on $\mathcal W_\lambda'$. It is exactly what makes the Gronwall constant below independent of $\lambda$.

In $t=(U+V)/2$, $x=(V-U)/2$, equation (6.2) is
$\partial_t^2\Phi_\lambda-\partial_x^2\Phi_\lambda+4\mathcal W_\lambda\Phi_\lambda=0$.
For the $t$-multiplier its exact energy identity is

$$\begin{align}
\partial_t\frac12\left( |\partial_t\Phi_\lambda|^2+|\partial_x\Phi_\lambda|^2 +4\mathcal W_\lambda|\Phi_\lambda|^2\right) -\partial_x\operatorname{Re}\left( \overline{\partial_t\Phi_\lambda}\,\partial_x\Phi_\lambda\right) =2(\partial_t\mathcal W_\lambda)|\Phi_\lambda|^2. \tag{6.10f}
\end{align}$$

For a complex Helgason coefficient this is the sum of the real and imaginary identities. Integrate (6.10f), or the equivalent future-timelike multiplier identity adapted to $\Sigma_s^{(2)}$. Its flux through the two incoming null faces is equivalent, by $\mathcal W_\lambda(0)=\nu^2+\lambda^2$, to the first norm in (6.10b). The flux through $\Sigma_s^{(2)}$ is equivalent to the second norm. The deformation-tensor terms of the fixed foliation and the only coefficient error,
$(n_s\mathcal W_\lambda)|\Phi_\lambda|^2$, are bounded by a constant times the same energy using (6.10e). Gronwall's inequality gives the right inequality in (6.10c). Applying the identical flux identity to the slab between $\Sigma_s^{(2)}$ and the past null faces gives the left inequality. Since only the relative bound in (6.10e) enters, neither constant depends on $\lambda$.

The Helgason Plancherel theorem gives

$$\begin{align}
\|\nabla_{\mathbb H^n}h\|_2^2 =\int_{\Lambda_n}(\lambda^2+\rho_n^2)|\widehat h(\lambda,\vartheta)|^2 d\mu_{\mathbb H^n}, \tag{6.10g}
\end{align}$$

so integration of (6.10c) is exactly the full $H^1$ estimate (6.10d), up to fixed equivalent zeroth-order norms. On $\overline D$, $r$ is bounded above and away from zero; multiplication by $r^{n/2}$ and its inverse therefore preserve these energy norms.

For completeness, this also makes the original cutoff/capping argument uniform. Homogeneity and bounded geometry of $\mathbb H^n$ provide cutoffs $\chi_R$ supported in $B_{R+1}$, equal to one on $B_R$, with derivative bounds independent of $R$, as well as a uniformly locally finite bounded-geometry partition of unity. Finite propagation enlarges a transverse support by at most a fixed radius determined by $D$. A spatial cap placed outside that enlarged ball cannot affect the solution in its causal hull, while (6.10d) is independent of the cap radius. Thus compactly supported approximants form a Cauchy sequence in $\mathcal E(D)$ rather than merely converging on each fixed compact set.

Smooth compatible data are dense in (6.9): approximate the common $H^{1/2}(\mathcal B)$ trace, use a bounded right inverse of each face trace, and approximate the two zero-trace remainders in $H^1$. The Volterra equation (6.6) solves the resulting smooth compact-spectral core. Estimate (6.10d) gives a unique finite-energy limit and continuous dependence; its lower bound gives uniqueness. Finally, the face trace maps $H^1(\mathcal N_A)\to H^{1/2}(\mathcal B)$ are continuous, so equality of the two corner traces is a closed condition and survives the limit. $\square$

**Theorem 6.2 (local full-field characteristic Cauchy theorem).** For the smooth AdS metric (1.13), $M^2\geq0$, and $D$ as above, restriction of the unreduced scalar field is an isomorphism

$$\begin{align}
\gamma_{\mathcal N}:\mathcal E(D) \xrightarrow{\ \cong\ }\mathcal H_{\mathcal N}. \tag{6.11}
\end{align}$$

It gives existence, uniqueness, and continuous dependence for the full field $\phi(U,V,Y)$; no fixed-$\lambda$ distributional mode enters the statement.

**Proof.** Lemma 6.2a is the direct proof. Its upper estimate in (6.10c)--(6.10d), the Volterra construction on the smooth compact-spectral core, and density extend $G_D$ to a bounded solution map on all of $\mathcal H_{\mathcal N}$. Its lower estimate gives uniqueness and a continuous inverse trace on the range. Conversely, approximate any $\phi\in\mathcal E(D)$ by smooth finite-energy solutions on a regular spacelike slice. Their ordinary characteristic traces are Cauchy in $\mathcal H_{\mathcal N}$ by the same lower estimate; the limit defines $\gamma_{\mathcal N}\phi$, and uniqueness gives $G_D\gamma_{\mathcal N}\phi=\phi$ and $\gamma_{\mathcal N}G_D=\mathrm{id}$. The closed common $H^{1/2}(\mathcal B)$ trace condition is preserved throughout, while inverse Helgason transformation gives the unreduced full field. Thus no fixed-$\lambda$ generalized mode is itself treated as a Cauchy datum.

The Hörmander/Nicolas characteristic Cauchy theorem is structural precedent for the $H^1$ trace framework on a Lipschitz fully characteristic graph and is consistent with the compact-background version of this result. No noncompact extension or surjectivity step is imported from it here. $\square$

### 6.4 Full Null CPS Flux and Local B1

For two finite-energy variations, orient both null faces into $D$. Direct contraction of (4.15) with (1.13) gives

$$
\begin{aligned}
\Omega_{\mathcal N}^{\rm in}(1,2)
&=\int_{\mathbb H^n}d{\rm vol}_{\mathbb H^n}\int_0^{V_0}
\left(\delta_1f\,\partial_V\delta_2f
-\delta_2f\,\partial_V\delta_1f\right)dV\\
&\quad+\int_{\mathbb H^n}d{\rm vol}_{\mathbb H^n}\int_0^{U_0}
\left(\delta_1g\,\partial_U\delta_2g
-\delta_2g\,\partial_U\delta_1g\right)dU .
\end{aligned}
\tag{6.12}
$$

There is no omitted warp factor: $r=1$ on either horizon, and $\sqrt{-g}\,g^{UV}$ has unit magnitude in the chosen orientation. There is also no independent corner oscillator. The corner field $c(Y)$ is the common $H^{1/2}$ trace in the domain of (6.12); if the rest of the profiles is forgotten, its pairing is not determined.

**Proposition 6.3 (local full-field symplectic composition).** If $\Sigma\subset D$ is a spacelike Cauchy surface, then

$$\begin{align}
G_D^*\Omega_\Sigma=\Omega_{\mathcal N}^{\rm in} \tag{6.13}
\end{align}$$

on $\mathcal H_{\mathcal N}$. Hence the characteristic-to-Cauchy relation of Theorem 6.2 is symplectic on the declared finite-energy spaces.

**Proof.** The current (4.15) is conserved. Apply Stokes' theorem first to smooth compactly supported data between $\mathcal N$ and $\Sigma$. The outer endpoint fluxes vanish by the declared local support/no-source policy, while the two corner contributions agree because the traces in (6.9) agree. The two-sided energy estimates in Theorem 6.2 and density extend the identity to finite energy. $\square$

Let $E_{\rm AdS,loc}$ be the causal propagator in a slightly larger globally hyperbolic neighborhood of $\overline D$. For $\chi\in C_c^\infty(D^\circ)$, $E_{\rm AdS,loc}\chi$ is a smooth homogeneous full-field solution, so its null restriction is ordinary. Transposing $G_D$ and applying Green's identity twice gives

$$\begin{align}
\boxed{ P_{\mathcal N}(G_D^*\chi,G_D^*\psi) =E_{\rm AdS,loc}(\chi,\psi).} \tag{6.14}
\end{align}$$

**Theorem 6.4 (local full-field smeared B1).** Quantization of the Hamiltonian dual of $(\mathcal H_{\mathcal N},\Omega_{\mathcal N}^{\rm in})$ gives, for compact tests in $D^\circ$,

$$\begin{align}
[\widehat\phi_D^{\rm rec}(\chi),\widehat\phi_D^{\rm rec}(\psi)] =iE_{\rm AdS,loc}(\chi,\psi)\mathbf1. \tag{6.15}
\end{align}$$

**Proof.** Green's second identity gives
$(G_D^*\chi)(z)=\Omega_{\mathcal N}^{\rm in}(\gamma_{\mathcal N}E_{\rm AdS,loc}\chi,z)$.
Thus the Hamiltonian vector of $G_D^*\chi$ is the smooth trace
$\gamma_{\mathcal N}E_{\rm AdS,loc}\chi$. Proposition 6.3 gives (6.14), and the algebraic CCR give (6.15). No pullback of the distributional kernel of $E_{\rm AdS,loc}$ and no fiberwise mode summation is used. $\square$

### 6.5 The Fixed-Channel Caustic Is Not a Spacetime Singularity

**Obstruction 6.5 (the full future region is not one regular fiber rectangle).** At $UV=1$, the hyperbolic foliation focuses at $r=0$ and the second term in (6.3) diverges. Pure AdS is smooth there, so this is a coordinate/fiber-decomposition caustic rather than a curvature singularity. A global theorem must change charts and recombine transverse channels. A single fixed $\lambda$ fiber is not expected to remain an autonomous regular variable at that locus.

The divergence is structural evidence against continuing a single fiber: the transverse term is $r^{-2}(-\Delta_{\mathbb H^n})$, and the entire hyperbolic orbit collapses when $r=0$. Smooth fields in a regular chart are therefore superpositions in which the Helgason channels recombine. No boundary datum is placed at $UV=1$.

## 7. Global Cauchy Evolution Beyond the Rindler Caustic and Global B1

### 7.1 A Regular Global Chart

Use global coordinates on the universal cover:

$$
\begin{aligned}
X^{-1}&=\sec\chi\cos t,&
X^0&=\sec\chi\sin t,&
X^j&=\tan\chi\,\Omega_j,\\
0&\leq\chi<\frac\pi2,&
\Omega&\in S^{d-1},&
t&\in\mathbb R .
\end{aligned}
\tag{7.1}
$$

The metric is

$$\begin{align}
ds^2=\sec^2\chi\left( -dt^2+d\chi^2+\sin^2\chi\,d\Omega_{d-1}^2\right). \tag{7.2}
\end{align}$$

The two Rindler horizons are the regular null hypersurfaces

$$\begin{align}
X^0=\pm X^1 \quad\Longleftrightarrow\quad \sin t=\pm\sin\chi\,\Omega_1, \tag{7.3}
\end{align}$$

and the future region is

$$\begin{align}
\mathcal F=\{0<t<\pi,\ \sin t>|\sin\chi\,\Omega_1|\}. \tag{7.4}
\end{align}$$

The Rindler orbit radius satisfies

$$
\begin{aligned}
r^2-1&=X_1^2-X_0^2
=\frac{\sin^2\chi\,\Omega_1^2-\sin^2t}{\cos^2\chi},\\
r^2&=\frac{\cos^2t-\sin^2\chi(1-\Omega_1^2)}{\cos^2\chi}.
\end{aligned}
\tag{7.5}
$$

Here $r^2=1+X_1^2-X_0^2$ is the analytic continuation of the Rindler invariant. It is the square of a real hyperbolic-orbit radius only in the Rindler-covered region $r^2>0$; after the caustic it can be negative, signalling that the $\mathbb H^n$ orbit chart has ended rather than that the spacetime has become singular. Thus $UV=1$ is $r^2=0$, where the hyperbolic orbit degenerates, but every coefficient of (7.2) is smooth for $\chi<\pi/2$. In this chart the unreduced equation is

$$\begin{align}
\boxed{ \left[ -\partial_t^2+\partial_\chi^2 +(d-1)(\cot\chi+\tan\chi)\partial_\chi +\frac1{\sin^2\chi}\Delta_{S^{d-1}} -M^2\sec^2\chi \right]\phi=0.} \tag{7.6}
\end{align}$$

**Proposition 7.1 (caustic removal).** The surface $UV=1$ is not a boundary of the wave problem and carries no matching datum. A smooth full field crosses it by ordinary evolution in (7.2). The singularity of (6.3) is solely the failure of the $\mathbb H^n$ fiber decomposition when its orbit collapses.

**Proof.** Equations (7.1)--(7.5) are embedding identities. Equation (7.6) follows from the divergence form of the Klein--Gordon operator in (7.2). Its coefficients are regular in the bulk. The factor $r^{-2}(-\Delta_{\mathbb H^n})$ in the Rindler separation is singular only because the orbit metric $r^2h_{\mathbb H^n}$ has collapsed; (7.6) uses regular spherical variables in which the channels have recombined. $\square$

### 7.2 Global Dirichlet Evolution on the Matched Image

Let $A_D$ be the positive global static spatial operator with the standard Dirichlet/Friedrichs domain and let

$$\begin{align}
\mathcal C_D:=D(A_D^{1/2})\oplus L^2(N^{-1}d{\rm vol}_{\Sigma_0}) \tag{7.7}
\end{align}$$

be its finite-energy Cauchy space, using $p=\partial_t\phi$. The self-adjoint functional calculus gives

$$\begin{align}
\phi(t)=\cos(tA_D^{1/2})q +A_D^{-1/2}\sin(tA_D^{1/2})p. \tag{7.8}
\end{align}$$

The possible zero spectral value in the second term is understood by the continuous function $\sin(t\sqrt E)/\sqrt E$. In the present $M^2\geq0$ Dirichlet problem the form is positive.

**Theorem 7.2 (global Cauchy continuation on the matched image).** For every $z\in\mathcal C_{\rm bif}^{D}$, assemble $z_{\rm glob}=\mathsf A_{\rm bif}z$ by Theorem 5.1 and evolve it by (7.8). This gives a unique global Dirichlet finite-energy solution, continuously depending on $z$, whose restriction to $\mathcal F$ crosses $UV=1$. On the smooth radiation-compatible core $\mathcal C_{\rm bif}^{\rm rad,\infty}$,

$$\begin{align}
\operatorname{Res}_{\mathcal F}\mathsf E_D\mathsf A_{\rm bif} =G_{\mathcal F}^{\rm glob}\, \operatorname{Lift}_{c(Y)} (\mathbf R_L\oplus\mathbf R_R) (\operatorname{Rad}_L^-\oplus\operatorname{Rad}_R^-). \tag{7.9}
\end{align}$$

Here $\mathsf E_D$ denotes global Cauchy evolution and $\mathcal C_{\rm bif}^{\rm rad,\infty}$ is the smooth Dirichlet subdomain declared before (5.12). Characteristic composition is proved only in local domains $\overline D\subset\{UV<1\}$ by Theorem 6.2. The symbol $G_{\mathcal F}^{\rm glob}$ in (7.9) denotes restriction of the unique global Cauchy solution determined by the matched datum; it is not a characteristic Goursat operator propagating data through $UV=1$. Beyond the local characteristic region, and in particular across the caustic, continuation is solely by the regular evolution (7.8). The surface $UV=1$ carries no matching datum. The right side is not a map from arbitrary homogeneous radiation classes.

**Proof.** Theorem 5.1 supplies exactly one global finite-energy Cauchy datum. The positive self-adjoint Dirichlet dynamics of Ishibashi--Wald gives (7.8), uniqueness, and continuous dependence. Proposition 7.1 proves that no additional datum is required at the Rindler caustic. On the smooth core, wedge uniqueness identifies the exterior restrictions of the global solution with the radial evolutions of Proposition 4.1. Their horizon traces have the common bifurcation value from Theorem 5.1. Local Theorem 6.2 and then global Cauchy uniqueness give (7.9). $\square$

### 7.3 Global Symplectic and Green Identities

For two Dirichlet solutions, the conformal-boundary part of the symplectic flux vanishes. Put $\mathfrak r=\tan\chi$ in the global chart. Then $\phi=\mathfrak r^{-\Delta_+}(\beta+o(1))$ and

$$\begin{align}
\mathcal F_{\mathscr I}(1,2) =\lim_{R\to\infty}\int_{\mathfrak r=R} R^{d+1}\left( \delta_1\phi\,\partial_{\mathfrak r}\delta_2\phi -\delta_2\phi\,\partial_{\mathfrak r}\delta_1\phi\right)dt\,d\Omega_{d-1} =0. \tag{7.10}
\end{align}$$

The leading equal-power terms cancel antisymmetrically and the remainder decays at least as $R^{-2\nu}$; here $\nu\geq1$. There is no flux surface at $r=0$.

**Proposition 7.3 (global symplectic conservation).** On $\mathcal C_{\rm bif}^{\rm rad,\infty}$, and on its completion in the norm transported from its horizon image,

$$\begin{align}
\Omega_{\Sigma_0} =\Omega_L+\Omega_R =\Omega_{\Sigma_t} =\Omega_{\mathcal H_L^+\cup\mathcal H_R^+}^{\rm in} \tag{7.11}
\end{align}$$

For arbitrary data in $\mathcal C_D$, the Cauchy-surface equality $\Omega_{\Sigma_0}=\Omega_{\Sigma_t}$ still holds, but no sharp affine horizon trace is inferred. More generally, Green's identity on any finite global slab has only Cauchy and horizon terms whenever the horizon trace exists; the Dirichlet conformal-boundary term is zero.

**Proof.** The first equality is Theorem 5.1. Conservation of (4.15), Stokes' theorem in the regular chart (7.2), and (7.10) give the remaining equalities for the smooth subdomain. The horizon-side extension is continuous by definition of the transported norm and therefore holds on its completion. Standard finite-energy evolution gives the Cauchy-surface equality on all of $\mathcal C_D$. $\square$

### 7.4 Global Matched-Image Smeared CCR Reconstruction

The Ishibashi--Wald Dirichlet self-adjoint extension has unique advanced and retarded Green operators by spectral calculus and finite propagation; denote their difference by $E_D$. Theorem 30 of [Dappiaggi, Drago, and Ferreira, *Fundamental solutions for the wave operator on static Lorentzian manifolds with timelike boundary*](https://arxiv.org/abs/1804.03434) gives the same functional-calculus mechanism for regular static timelike-boundary realizations. It is structural corroboration here; the singular conformal endpoint of global AdS is handled by the already fixed operator $A_D$.

Let $\mathfrak G_{\rm bif}$ be the global-compatible solution image transported from $\mathcal C_{\rm bif}^{D}$, and let $G_{\mathcal F}^{\rm glob}$ denote restriction of those solutions to $\mathcal F$. For compact tests $\chi,\psi\in C_c^\infty(\mathcal F^\circ)$, the global Cauchy Green identity gives

$$\begin{align}
\boxed{ P_{\mathfrak G_{\rm bif}} \left((G_{\mathcal F}^{\rm glob})^*\chi, (G_{\mathcal F}^{\rm glob})^*\psi\right) =E_D(\chi,\psi).} \tag{7.12}
\end{align}$$

**Theorem 7.4 (global matched-image smeared CCR reconstruction).** The algebraic CCR quantization of $\mathfrak G_{\rm bif}$ satisfies

$$\begin{align}
[\widehat\phi_{\mathcal F}^{\rm rec}(\chi), \widehat\phi_{\mathcal F}^{\rm rec}(\psi)] =iE_D(\chi,\psi)\mathbf1. \tag{7.13}
\end{align}$$

This is a global full-field statement on the bifurcation-matched Cauchy image. The caustic is not a boundary, the Dirichlet conformal-boundary flux vanishes, and the global causal propagator fixes the smeared CCR on that image. It is neither a surjectivity theorem for arbitrary horizon profiles nor a unitary equivalence with $\mathcal H_L\otimes\mathcal H_R$.

**Proof.** The Hamiltonian vector of the transposed bulk smearing on the matched Cauchy image is the Dirichlet causal solution $E_D\chi$. Applying the global Green identity on a Cauchy slice twice proves (7.12), and the algebraic CCR give (7.13). On the smooth horizon image, Proposition 7.3 rewrites the same bracket as characteristic flux; (7.10) removes conformal-boundary flux and Proposition 7.1 removes any fictitious caustic boundary. The proof of the matched-image identity therefore does not assume the optional onto statement in Stronger Horizon-Parametrization Theorem 7.6. $\square$

### 7.5 Algebraic B1: CCR/Weyl Composition on the Matched AdS Domain

Let $S_D$ be the real finite-energy global Dirichlet solution space with the Cauchy symplectic form $\sigma_D$. Let

$$\begin{align}
S_{\rm glue}^{\rm AdS}:=\mathcal C_{\rm bif}^{D}, \qquad \mathsf E_D\mathsf A_{\rm bif}(S_{\rm glue}^{\rm AdS}) =\mathfrak G_{\rm bif}. \tag{7.13a}
\end{align}$$

Thus $S_{\rm glue}^{\rm AdS}$ is the matched regional Cauchy domain of Theorem 5.1, while $\mathfrak G_{\rm bif}$ is its global-compatible solution presentation; $\sigma_{\rm glue}$ is the transported nondegenerate form. The map

$$\begin{align}
\operatorname{Res}_{\rm AdS}:S_D\longrightarrow S_{\rm glue}^{\rm AdS}
\end{align}$$

takes a global solution to its two regional Cauchy restrictions. Theorems 5.1 and 7.2 say exactly that this is a symplectic isomorphism, whose inverse assembles the datum and evolves it by $\mathsf E_D$.

For any real nondegenerate symplectic space $(S,\sigma)$, let $\mathfrak W(S,\sigma)$ denote the abstract Weyl/CCR algebra with

$$\begin{align}
W(f)W(g)=e^{-i\sigma(f,g)/2}W(f+g), \qquad W(f)^*=W(-f).
\end{align}$$

This algebra records smeared fields and their CCR without selecting the global AdS vacuum, a complex structure, a KMS state, or a Fock representation.

**Theorem 7.5 (abstract algebraic B1 on the matched AdS domain).** The established reconstruction induces the canonical Weyl $*$-isomorphism

$$\begin{align}
\alpha_{\rm AdS}:\mathfrak W(S_D,\sigma_D) \xrightarrow{\ \cong\ } \mathfrak W(S_{\rm glue}^{\rm AdS},\sigma_{\rm glue}), \qquad \alpha_{\rm AdS}(W_D(f)) =W_{\rm glue}(\operatorname{Res}_{\rm AdS}f). \tag{7.13b}
\end{align}$$

**Proof.** Symplecticity of $\operatorname{Res}_{\rm AdS}$ makes the proposed images satisfy the same Weyl relations. Their universal property gives a unital $*$-homomorphism. Repeating the construction with $\operatorname{Res}_{\rm AdS}^{-1}$ gives its inverse, because both compositions fix every Weyl generator. $\square$

Theorem 7.4 is the smeared causal-propagator form of the same B1 statement: on solutions $E_D\chi$ and $E_D\psi$, the symplectic inverse is $E_D(\chi,\psi)$, producing (7.13). Conversely, the Weyl relations exponentiate that commutator. No unrestricted tensor product of two wedge Fulling algebras occurs. The one-wedge corner/radiation presentation is not promoted to an independent Weyl factor when its full Cauchy pairing is only weak or becomes presymplectic after data are forgotten; the matched nondegenerate domain is the algebraic B1 object.

This is the precise algebraic content of “quantize first, then compose” here: the regional classical objects and bifurcation matching relation are specified independently, while quantization of their canonical matched domain is canonically isomorphic to the abstract connected Dirichlet CCR algebra. It is not an operator-constraint construction in an unrestricted product wedge Fock representation and not a Hilbert-space tensor-product theorem.

B2 is separate. A supplied global AdS state transports through $\alpha_{\rm AdS}$, but two regional states do not determine it: the left--right cross covariance, and hence the global vacuum/KMS analytic structure, is extra state data.

### 7.6 Optional Stronger Horizon Parametrization

The horizons together with standard Dirichlet data at conformal infinity are geometrically sufficient for the future domain: every past-inextendible causal curve in $\mathcal F$ reaches one of the two past horizons or the timelike boundary. The latter carries a fixed boundary condition, not free data. No additional interior surface occurs at $UV=1$. Compatibility is nevertheless required at the bifurcation surface and where the horizons approach conformal infinity.

The canonical gluing domain used above is already the image of matched regional Cauchy data under wedge radiation and global Dirichlet evolution. What is not proved is the following stronger onto statement for a larger, independently declared horizon Hilbert space. It is needed only if horizon profiles are required to be autonomous complete coordinates, not for partial-domain causal-complement composition.

**Stronger Horizon-Parametrization Theorem 7.6 (conditional).** Let $\mathcal H_{\rm hor}^{D}$ be the completion of smooth pairs in the sum of the two compactified null $H^1$ graph norms, with the physical Dirichlet weights inherited from the form (5.5), subject to the following conditions:

1. have a common bifurcation trace in $\mathcal T_{\mathcal B}$;
2. have finite null $H^1$ energy, including transverse derivatives, in the weights induced by the compactified metric;
3. satisfy the standard Dirichlet falloff and corner compatibility at the horizon--conformal-boundary intersections.

Then the trace map should be an isomorphism with two-sided estimate

$$\begin{align}
\operatorname{Tr}_{\rm hor}: \operatorname{Sol}_{D}^{\rm en}(\mathcal F) \xrightarrow{\ \cong\ }\mathcal H_{\rm hor}^{D}, \qquad C^{-1}\|\phi\|_{\rm en} \leq\|\operatorname{Tr}_{\rm hor}\phi\|_{\mathcal H_{\rm hor}^{D}}
\leq C\|\phi\|_{\rm en}. \tag{7.14}
\end{align}$$

Nicolas proves the required two-sided Goursat estimate without a timelike boundary on a spatially compact background. [Wu and Zhang, *The Null--Timelike Boundary Problems of Linear Wave Equations in Asymptotically Anti-de Sitter Space*](https://arxiv.org/abs/1910.01929) prove existence and uniqueness for a null--timelike AdS boundary problem in a different one-null-surface geometry. Neither theorem directly supplies (7.14) for two intersecting, noncompact horizons and their Dirichlet corners. Proving (7.14), or finding an exact theorem with these hypotheses, would replace the matched-image relation by the optional stronger onto global characteristic parametrization. It is not used in the matched-domain B1 proofs.

This conditional theorem is strictly stronger than Theorems 7.2, 7.4, and 7.5. Its proof would identify $\mathcal H_{\rm hor}^{D}$ intrinsically with the canonical image and would permit arbitrary compatible horizon profiles to be used as complete global coordinates. Its present absence does not make matched-image classical reconstruction, smeared B1, or abstract algebraic B1 conditional.

### 7.7 B2 and Representation Claims

Regional states determine the two diagonal covariance blocks but not the left--right cross covariance. The global AdS vacuum supplies one particular analytic/KMS-compatible choice; it is extra B2 state data and is not derived from the classical radial reflection multiplier. No sharp product-wedge Fock factorization or unrestricted $\mathcal H_L\otimes\mathcal H_R$ gluing is claimed.

## 8. Minkowski Versus AdS--Rindler

| issue | flat Rindler scalar | full AdS--Rindler scalar |
|---|---|---|
| outer radial end | decay selects the KL solution | physical Dirichlet/Friedrichs condition at conformal infinity |
| radial transform | Kontorovich--Lebedev | Jost/Weyl-normalized hypergeometric transform |
| transverse labels | absent in $1+1$ dimensions | $(\lambda,\vartheta)$ with the exact Helgason measure (4.4) |
| threshold/IR | no zero eigenmode; energy does not control the unweighted symplectic norm | no zero mode or resonance in every fiber; the same $\omega=0$ norm distinction remains |
| reflection | unit-modulus gamma quotient | jointly measurable unit-modulus multiplier $\mathcal R_\lambda(\omega)$ |
| bifurcation data | scalar $c$ | field $c(Y)$; $H^{1/2}$ for local geometric energy and $\mathcal T_{\mathcal B}$ for global Killing energy |
| local null composition | explicit Volterra/Bessel kernel | unreduced finite-energy Goursat isomorphism and full null CPS |
| apparent caustic | none | $UV=1$ is removed by the regular global chart; fibers recombine |
| global classical statement | matched Cauchy image | matched Dirichlet Cauchy image is closed; arbitrary-horizon surjectivity is the optional Stronger Theorem 7.6 |
| B1 | local and matched corner-completed image | local full field plus global matched-image smeared CCR and abstract Weyl algebra |
| B2 | regional marginals do not fix cross correlations | same; global AdS vacuum data are additional |

The conceptual hierarchy is unchanged:

$$\begin{align}
\text{timelike gluing} &= \text{feedback sewing},\\
\text{causal-complement composition} &=\text{bifurcation matching} +\text{ horizon radiation/scattering} +\text{ characteristic completion}. \tag{8.1}
\end{align}$$

## 9. Verification and Literature Audit

### 9.1 Executed Checks

The following checks were run for this iteration.

1. Mathematica derived (2.10) from (2.3) with symbolic $n,M^2,\lambda,\omega$; the residual after $M^2=\nu^2-(n+1)^2/4$ was exactly zero.
2. Mathematica derived $f(r(UV))=-4UV/(1+UV)^2$ and the reduced coefficient (6.3) exactly.
3. The future-time tangents of both the right and left embeddings at the bifurcation slice were exactly $(\xi,0)$ in the $(X^0,X^1)$ plane, confirming (5.13)--(5.14).
4. The hypergeometric expression (3.2) was substituted into the $z=1-r^{-2}$ radial equation at $d=3$, $\nu=2.3$, $\lambda=1.1$, $\omega=0.7$; the residual at $z=0.2,0.6,0.9$ was at most $1.2\times10^{-13}$ in absolute value.
5. Mathematica simplified the explicit product $\mathcal R_\lambda\overline{\mathcal R_\lambda}$ to $1$ and the threshold limit to $-1$. Nine samples with $\omega\in\{0.05,0.7,2\}$ and $\lambda\in\{0,1.1,3\}$ had $||\mathcal R|-1|\leq2.2\times10^{-16}$.
6. Substitution of (3.3) into (3.12) gives $|A_{\rm in}|^2=|A_{\rm out}|^2=1/(4\pi\omega)$ algebraically. This reproduces both the delta normalization and the unit-flux statement.
7. The Jost density identity
$\omega/[\pi(4\omega^2|\Gamma(i\omega)|^2/|D_+|^2)]
=|D_+|^2/[4\pi\omega|\Gamma(i\omega)|^2]$
was simplified exactly to zero after subtraction, verifying (3.8e).
8. Mathematica simplified $r^2-1-(\sin^2\chi\,\Omega_1^2-\sin^2t)/\cos^2\chi$ exactly to zero, verifying the global/Rindler coordinate relation (7.5).
9. For $(\omega,\nu)=(1.3,1.7)$, the ratio of the exact $N_{\omega\lambda}$ to the asymptotic expression (4.10) at $\lambda=10,20,40,80$ was respectively $0.9911753$, $0.9977589$, $0.9994376$, and $0.9998593$.
10. The global embedding constraint evaluated exactly to $-1$; the divergence-form radial coefficient reduced exactly to $(d-1)(\cot\chi+\tan\chi)$; and both the horizon and caustic identities in (7.3)--(7.5) simplified exactly to zero residual.
11. For Lemma 6.2a, Mathematica returned zero for $\mathcal W_\lambda(0)-(\nu^2+\lambda^2)$, for the derivative of (6.3) minus the two differentiated rational terms used in (6.10e), for $(\partial_t^2-\partial_x^2)F(t-x,t+x)-4\partial_U\partial_VF$, and for the residual of the exact energy identity (6.10f) after imposing the reduced wave equation. The termwise derivative estimate gives the relative bound highlighted in (6.10e'), which is the input making the Gronwall constant uniform in $\lambda$.

These checks verify the displayed algebraic transformations and special-function formulas. They do not prove the direct-integral, trace, Goursat, or global evolution theorems; those use the cited analytic results and the proofs in Sections 4--7. No sharp affine-horizon trace for every abstract energy vector and no arbitrary-horizon surjectivity theorem are inferred from the checks.

### 9.2 External Results and Scope

- [Ishibashi and Wald, *Dynamics in Non-Globally-Hyperbolic Static Spacetimes III: Anti-de Sitter Spacetime*](https://arxiv.org/abs/hep-th/0402184) supplies the positive-self-adjoint-extension framework and identifies the Friedrichs extension with generalized Dirichlet behavior. Here it is used only in the simple $M^2\geq0$, $\nu\geq1$ limit-point regime.
- [Kostenko and Teschl, *Spectral Asymptotics for Perturbed Spherical Schrödinger Operators and Applications to Quantum Scattering*](https://arxiv.org/abs/1205.5049), especially Section 5 and equations (5.2)--(5.12), supplies the singular-end Jost/Weyl theorem and the exact spectral-density formula used in Theorem 3.1. The endpoint and tail hypotheses are checked explicitly in (3.8a)--(3.8b).
- The invariant Helgason Plancherel theorem supplies the transverse direct integral. The exact convention-dependent density used here is displayed with the same plane-wave convention in Section 5.1.1 of [Lian, *Closed expression of the hyper-complex Fourier kernel*](https://backoffice.biblio.ugent.be/download/8524975/8524976).
- [Große and Schneider, *Sobolev spaces on Riemannian manifolds with bounded geometry: General coordinates and traces*](https://arxiv.org/abs/1301.2539) supplies the noncompact hypersurface trace and extension theorem used in Section 5. Its Fermi-coordinate formulation applies to the pair $(\Sigma_0,\mathcal B)$ of bounded geometry.
- [Sugishita and Terashima, *Rindler Bulk Reconstruction and Subregion Duality in AdS/CFT*](https://arxiv.org/abs/2207.06455) gives the AdS--Rindler coordinates, hyperbolic harmonics, real-frequency scalar modes, KG normalization, and completeness relation used to cross-check (1.4) and (3.2)--(3.5). Its CFT claims are not imported into this classical theorem.
- [Aros, Martínez, Troncoso, and Zanelli, *Quasinormal modes for massless topological black holes*](https://arxiv.org/abs/hep-th/0211024) derives the same hypergeometric radial equation and the analytic quasinormal poles. It supports the check (3.15), not the self-adjoint Plancherel proof by itself.
- [Parikh and Samantray, *Rindler-AdS/CFT*](https://arxiv.org/abs/1211.7370) is used for the two-wedge geometric interpretation and boundary geometry.
- [Nicolas, *On Lars Hörmander's remark on the characteristic Cauchy problem*](https://arxiv.org/abs/math/0504481), Theorem 3, is structural precedent for the finite-energy $H^1$ characteristic trace framework on a spatially compact background. Theorem 6.2 here is proved directly by Lemma 6.2a: the relative bound (6.10e') makes the two-sided fiber estimate uniform in $\lambda$, Helgason Plancherel gives the full-field estimate, and bounded geometry plus finite propagation controls the exhaustion. No noncompact theorem is imported from Nicolas.
- [Dappiaggi, Drago, and Ferreira, *Fundamental solutions for the wave operator on static Lorentzian manifolds with timelike boundary*](https://arxiv.org/abs/1804.03434), Theorem 30, supplies unique advanced and retarded Green operators for a lower-bounded self-adjoint boundary realization. It supports the Dirichlet causal propagator in Theorem 7.4, not the double-null trace surjectivity.
- [Baez, Segal, and Zhou, *Introduction to Algebraic and Constructive Quantum Field Theory*](https://math.ucr.edu/home/baez/bsz_new.pdf), Section 1.2, reviews the representation-independent Weyl relations used in Theorem 7.5. The isomorphism itself is proved directly from the universal relations and the established symplectic inverse.
- [Wu and Zhang, *The Null--Timelike Boundary Problems of Linear Wave Equations in Asymptotically Anti-de Sitter Space*](https://arxiv.org/abs/1910.01929) proves a nearby null--timelike well-posedness theorem. Its geometry does not contain the two intersecting noncompact horizons and Dirichlet corners required by Stronger Horizon-Parametrization Theorem 7.6, so that optional theorem is not cited as proved.

All proved claims are specialized to $d\geq2$, $M^2\geq0$, and the standard Friedrichs/Dirichlet domain. Fixed-$\lambda$ claims occur only in Sections 2--3 and the diagnostic parts of Sections 5--6; the theorems in Sections 4.1--4.3, 5.1--5.3, 6.3--6.4, and 7 are full-field statements.

## 10. Final Claim Ledger

Under the standing assumptions $d\geq2$, $M^2\geq0$, and standard Friedrichs/Dirichlet boundary conditions, the closure ledger is:

1. **Fixed-channel spectral/radiation theorem — closed.** The radial Friedrichs operator has purely absolutely continuous spectrum $[0,\infty)$, no point or singular-continuous spectrum and no zero resonance; the Jost/Weyl density gives (3.2)--(3.7), and the unit-modulus reflection amplitude preserves the fixed-fiber CPS.
2. **Full Helgason direct integral and full-field wedge CPS — closed.** Equations (4.1)--(4.20) retain the complete $(\lambda,\vartheta)$ multiplicity and give the full-field unitary radiation transform; the threshold distinction between the homogeneous energy norm, the graph-norm weak symplectic form, and the strong unweighted $L^2$ realification remains explicit.
3. **Full-field bifurcation matching and the corner-completed partial gluing domain — closed.** Theorem 5.1 gives the exact $H^{1/2}(\mathcal B)$ local trace and the weighted global trace $\mathcal T_{\mathcal B}$; Proposition 5.2 retains the actual field $c(Y)$ together with full radiation data.
4. **Local full-field characteristic composition and smeared B1 — closed.** Lemma 6.2a supplies the cutoff-independent noncompact estimate, Theorem 6.2 gives the full $H^1$ Goursat isomorphism, and Theorem 6.4 gives the local causal-propagator commutator.
5. **Global matched-image continuation by regular Cauchy evolution and global B1 — closed.** Characteristic composition is proved locally only for $\overline D\subset\{UV<1\}$. Theorem 7.2 evolves every matched Dirichlet Cauchy datum through the regular global chart beyond the $UV=1$ caustic; Proposition 7.3 gives the stated symplectic conservation, and Theorem 7.4 fixes the smeared CCR by $E_D$. The caustic is not a boundary and carries no matching datum; Dirichlet conformal-boundary flux vanishes.
6. **Abstract algebraic CCR/Weyl B1 — closed.** Theorem 7.5 identifies the Weyl algebra of the matched symplectic domain canonically with the abstract connected global Dirichlet Weyl algebra. No tensor-product wedge Hilbert space is used.
7. **Stronger arbitrary-horizon parametrization/surjectivity — optional and conditional.** Stronger Horizon-Parametrization Theorem 7.6 asks whether every independently prescribed compatible element of $\mathcal H_{\rm hor}^{D}$ is the trace of a global Dirichlet solution with the two-sided estimate (7.14). This is stronger than the partial-domain composition theorem and is outside its closure criterion.
8. **B2 state/representation reconstruction — intentionally not fixed by regional marginals.** The global AdS vacuum, cross covariance, and KMS/analytic structure are extra state data.

The following also remain optional refinements rather than blockers for the matched-image mechanism:

- a sharp affine-horizon trace for every abstract boost-energy vector;
- an intrinsic enlargement beyond the canonical matched image;
- a finite transverse/null regulator and its continuum convergence;
- any unitary equivalence with a sharp product of left/right wedge Fock representations.

For the standard Dirichlet scalar with $d\geq2$ and $M^2\geq0$, AdS--Rindler causal-complement composition is closed on the canonical bifurcation-matched partial domain at the classical, symplectic, smeared-CCR, and abstract algebraic B1 levels. What remains conditional is only the stronger claim that an independently prescribed intrinsic horizon-data Hilbert space is onto/global-complete; B2 requires extra state data. Equivalently,

$$
\boxed{
\begin{gathered}
\text{For the standard Dirichlet scalar with }d\geq2\text{ and }M^2\geq0,
\quad\text{AdS--Rindler causal-complement}\\
\text{composition is closed on the canonical bifurcation-matched partial domain at the classical, symplectic,}\\
\text{smeared-CCR, and abstract algebraic B1 levels. The stronger intrinsic horizon-space onto theorem}\\
\text{remains optional and conditional; B2 requires extra state data.}
\end{gathered}}
\tag{10.1}
$$
