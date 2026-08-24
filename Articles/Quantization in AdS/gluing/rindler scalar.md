# Causal-Complement Composition for the $1+1$-Dimensional Massive Scalar

> **Status.** Core mechanism closed under the displayed hypotheses at the classical, symplectic, smeared-CCR, and abstract algebraic B1 levels; only optional function-space and representation refinements remain. “Theorem/Proposition” means proved below under the displayed hypotheses; “Conditional” marks an unproved functional-analytic input; “Check” records an executed symbolic/numerical check; “Obstruction” records a failure of the naive proposal.

We test the causal network

$$\begin{align}
P\longrightarrow(L,R)\longrightarrow F
\end{align}$$

for a free massive scalar. This is not the timelike feedback sewing of formalism.md: $L$ and $R$ are causal complements and share no timelike interface. The arrows mean propagation of characteristic data.

The first conclusion is negative but useful:

$$\begin{align}
\boxed{\text{A half-horizon profile alone is not local Goursat data for a Rindler wedge.}}
\end{align}$$

A wedge incoming-to-outgoing map exists only after an extra global condition is specified—for example the Rindler scattering condition excluding an independent channel from $\rho=\infty$—or after replacing the wedge by a finite diamond/cavity. The KL transform proves canonical scattering on an IR-regular radiation completion with a bounded, nondegenerate symplectic form. Bottom-up matching of the two Rindler Cauchy half-lines supplies the common bifurcation value and removes the affine-lift ambiguity on the matched global-energy image. B1 closes locally, at a corner-complete finite regulator, and on that corner-completed matched image; Section 6.5 records the corresponding representation-independent Weyl-algebra isomorphism. The remaining conceptual point is now fixed: causal-complement composition is a partial relation on this corner-compatible image, not a constraint or map on the unrestricted product of two standard Fulling theories. An extension to arbitrary independently chosen intrinsic radiation data is optional and is not required by global Minkowski energy theory. Separately chosen left/right states do not fix their cross covariance (B2). The bifurcation value $c$ is not an independent oscillator: its conjugate information is distributed through the rest of the regional Cauchy/radiation profile.

## 1. Geometry and Conventions

Let

$$\begin{align}
u=t-x,\qquad v=t+x,\qquad t=\frac{u+v}{2},\qquad x=\frac{v-u}{2}.
\end{align}$$

With signature $(-+)$,

$$\begin{align}
ds^2=-dt^2+dx^2=-du\,dv,\qquad g_{uv}=g_{vu}=-\frac12,\qquad \square=-4\partial_u\partial_v.
\end{align}$$

The four open regions are

$$\begin{aligned}
F&=\{u>0,v>0\}=\{t>|x|\},& P&=\{u<0,v<0\}=\{t<-|x|\},\\
R&=\{u<0,v>0\}=\{x>|t|\},& L&=\{u>0,v<0\}=\{x<-|t|\}.
\end{aligned}$$

Thus $L=R'$ and $R=L'$ as open causal complements. Their closures meet only at $u=v=0$; $L\cup R$ is not a decomposition of Minkowski spacetime.

Take

$$\begin{align}
S[\phi]=-\frac12\int d^2x\, \left(\partial_\mu\phi\partial^\mu\phi+m^2\phi^2\right),\qquad m>0,
\end{align}$$

so that

$$\begin{align}
(\square-m^2)\phi=0,\qquad \partial_u\partial_v\phi+\mu\phi=0,\qquad \mu:=\frac{m^2}{4}. \tag{1.1}
\end{align}$$

In $R$,

$$\begin{align}
t=\rho\sinh\eta_R,\quad x=\rho\cosh\eta_R,\quad u=-\rho e^{-\eta_R},\quad v=\rho e^{\eta_R}. \tag{1.2}
\end{align}$$

In $L$, choose future time

$$\begin{align}
t=\rho\sinh\eta_L,\quad x=-\rho\cosh\eta_L,\quad u=\rho e^{\eta_L},\quad v=-\rho e^{-\eta_L}. \tag{1.3}
\end{align}$$

Both metrics are $ds^2=-\rho^2d\eta^2+d\rho^2$. The boost field is

$$\begin{align}
\xi=x\partial_t+t\partial_x=-u\partial_u+v\partial_v =\partial_{\eta_R}=-\partial_{\eta_L}. \tag{1.4}
\end{align}$$

Future positive frequency is therefore $e^{-i\omega\eta_R}$ in $R$ and $e^{-i\omega\eta_L}$ in $L$. Relative to the same geometric boost $\xi$, their boost eigenvalues have opposite signs.

The horizons are

$$
\begin{array}{c|cc}
&\text{past}&\text{future}\\ \hline
R&\mathcal H_R^-:\ v=0,\ u<0&\mathcal H_R^+:\ u=0,\ v>0\\
L&\mathcal H_L^-:\ u=0,\ v<0&\mathcal H_L^+:\ v=0,\ u>0.
\end{array}
\tag{1.5}
$$

Each is one connected half-ray.

$$
\begin{CD}
P @>>> L\\
@VVV @VVV\\
R @>>> F
\end{CD}
\qquad
\text{meaning }P\to(L,R)\to F.
\tag{1.6}
$$

These are null characteristic arrows, not feedback forces obtained by varying a common timelike trace.

**Cross-note convention bridge.** This note uses

$$\begin{align}
\Omega_{\rm here}=\int\delta q\wedge\delta\pi
=-\int\delta\pi\wedge\delta q=-\Omega_{\rm formalism}, \tag{1.7}
\end{align}$$

where `formalism.md` and `gluing formalism.md` use the opposite ordering. Here the Hamiltonian-vector convention (2.4a) gives $P_{\rm here}=-\Omega_{\rm here}^{-1}$; converting the two-form and inverse convention together leaves $\{q,\pi\}_{\mathrm P}=+\delta$ unchanged. No sign below should therefore be flipped merely when comparing the files. Functional-analytically, “strong symplectic” is reserved for a Hilbert/Banach space on which $\Omega^\flat:x\mapsto\Omega(x,\cdot)$ is a bounded isomorphism onto the full continuous dual; a bounded nondegenerate form whose flat map is only injective is called weak symplectic.

## 2. CPS on Spacelike and Null Hypersurfaces

### 2.1 First Variation

Varying before imposing the equation gives

$$
\begin{aligned}
\delta S
&=-\int d^2x\,
\left(\partial^\mu\phi\,\partial_\mu\delta\phi+m^2\phi\delta\phi\right)\\
&=\int d^2x\,(\square\phi-m^2\phi)\delta\phi
-\int_{\partial M}d\Sigma_\mu\,\partial^\mu\phi\,\delta\phi.
\end{aligned}
\tag{2.1}
$$

Take

$$\begin{align}
\theta^\mu=-\partial^\mu\phi\,\delta\phi,\qquad \omega^\mu(\delta_1,\delta_2) =\delta_1\phi\,\partial^\mu\delta_2\phi -\delta_2\phi\,\partial^\mu\delta_1\phi. \tag{2.2}
\end{align}$$

For linearized solutions,

$$\begin{align}
\partial_\mu\omega^\mu =\delta_1\phi(\square-m^2)\delta_2\phi -\delta_2\phi(\square-m^2)\delta_1\phi=0. \tag{2.3}
\end{align}$$

Our sign convention is chosen so that on a future-oriented spacelike line $\Sigma$,

$$\begin{align}
q=\phi|_\Sigma,\qquad \pi=n^\mu\partial_\mu\phi,\qquad \Omega_\Sigma =\int_\Sigma d\Sigma\, (\delta_1q\,\delta_2\pi-\delta_2q\,\delta_1\pi) =\int_\Sigma\delta q\wedge\delta\pi. \tag{2.4}
\end{align}$$

On $t=0$, $\pi=\dot\phi$. We use the Hamiltonian-vector convention

$$\begin{align}
\Omega(X_A,\delta)=\delta A,\qquad \{A,B\}_{\mathrm P}=\Omega(X_A,X_B). \tag{2.4a}
\end{align}$$

Thus $\{q(x),\pi(y)\}_{\mathrm P}=\delta(x-y)$. In matrix notation the Poisson tensor associated with the displayed ordering of the two-form is $P=-\Omega^{-1}$. This minus sign is not optional: it is what makes (2.4), $[\widehat q,\widehat\pi]=i\delta$, and the Pauli--Jordan sign in Section 6 mutually consistent.

### 2.2 Exact Null Pullback

For $N_u=\{u=0\}$, parameterized by $v$, $dt\wedge dx=\frac12du\wedge dv$ and

$$\begin{align}
\omega^u=-2(\delta_1\phi\,\partial_v\delta_2\phi -\delta_2\phi\,\partial_v\delta_1\phi).
\end{align}$$

With the incoming orientation of a future domain,

$$\begin{align}
\boxed{ \Omega_{N_u}(f_1,f_2) =\int_I dv\,(f_1\partial_vf_2-f_2\partial_vf_1), \qquad f=\phi|_{u=0}.} \tag{2.5}
\end{align}$$

Similarly,

$$\begin{align}
\Omega_{N_v}(g_1,g_2) =\int_Jdu\,(g_1\partial_ug_2-g_2\partial_ug_1), \tag{2.6}
\end{align}$$

with the sign reversed when the geometric boundary orientation is reversed.

**Proposition 2.1 (one null profile, not a trace pair).** The null CPS form depends on the profile and its derivative tangent to the generator. There is no independent momentum profile analogous to a timelike-boundary normal derivative.

**Proof.** The conormal $du$ is null and its raised vector is proportional to $\partial_v$, tangent to $u=0$. Contracting (2.2) with the boundary element therefore produces $\partial_vf$. The equation constrains the transverse derivative by

$$\begin{align}
\partial_v(\partial_u\phi)=-\mu f. \tag{2.7}
\end{align}$$

Freely assigning both $f$ and $\partial_vf$ would double-count one function. $\square$

### 2.3 Declared Profile Spaces, Corners, and Zero Modes

On $I=[a,b]$,

$$\begin{align}
\Omega_I(f,h)=2\int_a^b f\,\partial_vh\,dv-[fh]_a^b. \tag{2.8}
\end{align}$$

Hence endpoint policy is part of the definition:

- if both endpoint values are fixed, nonzero constant variations are excluded;
- if endpoint values vary, the displayed corner term can pair a constant profile;
- if only derivative data are normed, or if periodic endpoints cancel the corner term, constants form a kernel and must be quotiented or paired with a retained zero/corner variable;
- on an infinite ray constants are usually excluded by decay/energy conditions, but low-frequency singularities remain possible.

For a complete null line, Fourier evolution formally gives

$$\begin{align}
\widehat\phi(k,v)=e^{i\mu v/k}\widehat f(k),\qquad k\ne0, \tag{2.9}
\end{align}$$

using $f(u)=\int e^{iku}\widehat f(k)dk$. Thus $k=0$ needs a prescription. A controlled core is

$$\begin{align}
\mathscr S_0(\mathbb R) =\{f\in\mathscr S(\mathbb R):\widehat f\text{ vanishes near }k=0\}. \tag{2.10}
\end{align}$$

For local fields away from all endpoints, the clean choice is

$$\begin{align}
\mathcal Z_0(\mathbb R):=C_c^\infty(\mathbb R),\qquad \mathcal D_0(\mathbb R):=\partial C_c^\infty(\mathbb R) =\left\{F\in C_c^\infty(\mathbb R):\int_{\mathbb R}F=0\right\}. \tag{2.11}
\end{align}$$

The same definition on an open ray uses compact support away from its endpoint. Constants are absent from $\mathcal Z_0$, and $\Omega_N$ is weakly nondegenerate there. The restriction to $\mathcal D_0$ is a restriction on Hamiltonian **smearings**, not on the profile itself: it is the minimal condition which makes the inverse derivative compactly supported.

**Lemma 2.2 (inverse null flux form).** For $F\in\mathcal D_0(\mathbb R)$ define

$$\begin{align}
(E_NF)(v):=-\frac12\int_{-\infty}^{v}F(s)ds =-\frac14\int_{\mathbb R}\operatorname{sgn}(v-s)F(s)ds. \tag{2.12}
\end{align}$$

Then $E_NF\in\mathcal Z_0(\mathbb R)$ and

$$\begin{align}
\Omega_N(E_NF,h)=\int_{\mathbb R}F(v)h(v)dv,\qquad h\in\mathcal Z_0(\mathbb R). \tag{2.13}
\end{align}$$

Consequently, for the linear profile observable

$$\begin{align}
\Phi_N(F)[f]:=\int_{\mathbb R}F(v)f(v)dv, \tag{2.14}
\end{align}$$

the induced Poisson bracket is

$$\begin{align}
\boxed{ \{\Phi_N(F),\Phi_N(G)\}_{\mathrm P} =P_N(F,G) :=-\frac14\int_{\mathbb R^2}F(v)\operatorname{sgn}(v-s)G(s)\,dv\,ds .} \tag{2.15}
\end{align}$$

**Proof.** Compact support removes the endpoint term. Integration by parts gives
$\Omega_N(E_NF,h)=-2\int(E_NF)'h=\int Fh$. Equation (2.15) is $\Omega_N(E_NF,E_NG)=\int F(E_NG)$. Nondegeneracy follows because
$\Omega_N(f,h)=0$ for every $h\in C_c^\infty$ implies $f'=0$ distributionally, and the only compactly supported constant is zero. $\square$

**Theorem 2.3 (characteristic/null CCR on the reduced test algebra).** Quantization of the real linear observables (2.14) is defined by

$$\begin{align}
[\widehat\Phi_N(F),\widehat\Phi_N(G)] =iP_N(F,G)\mathbf 1,\qquad F,G\in\mathcal D_0(\mathbb R). \tag{2.16}
\end{align}$$

The formal expression

$$\begin{align}
[\widehat\phi_N(v),\widehat\phi_N(s)] =-\frac{i}{4}\operatorname{sgn}(v-s) \tag{2.17}
\end{align}$$

is only distributional shorthand for (2.16); it is not a pointwise horizon operator identity. Reversing the geometric orientation reverses both $\Omega_N$ and (2.17).

This algebra needs one profile, not a separately chosen momentum profile. The tangent derivative already occupies the momentum slot in the null flux. This is intrinsic characteristic canonical data and is not the timelike port pair $(q,\Pi)$ moved onto a null surface.

### 2.4 The Common Corner on Two Finite Null Segments

For the compact Goursat rectangle used below, let

$$\begin{align}
\mathcal Z_{U,V}:=\{(f,g)\in C^1([0,V])\oplus C^1([0,U]):f(0)=g(0)=c\}. \tag{2.18}
\end{align}$$

The tangent space has the same common-corner condition. A linear functional with no source at the two outer endpoints has the form

$$\begin{align}
L_{F,G,\alpha}(f,g)=\int_0^V F(v)f(v)dv+\int_0^U G(u)g(u)du+\alpha c. \tag{2.19}
\end{align}$$

**Lemma 2.4 (corner-compatible inverse).** The functional (2.19) has a Hamiltonian vector for $\Omega_{N_u}+\Omega_{N_v}$ with vanishing values at $v=V$ and $u=U$ if and only if

$$\begin{align}
\int_0^V F(v)dv=\int_0^U G(u)du=:I,\qquad \alpha=-I. \tag{2.20}
\end{align}$$

When (2.20) holds, that vector is

$$\begin{align}
x_F(v)=\frac12\int_v^V F(s)ds,\qquad y_G(u)=\frac12\int_u^U G(r)dr,\qquad x_F(0)=y_G(0)=\frac I2. \tag{2.21}
\end{align}$$

For two admissible functionals $L,L'$, the exact double-null Poisson bracket is

$$\begin{align}
P_{\partial D}(L,L') =\int_0^V F(v)x_{F'}(v)dv +\int_0^U G(u)y_{G'}(u)du +\frac12\alpha I'. \tag{2.22}
\end{align}$$

**Proof.** Integrating $\Omega_N(x,h)$ by parts gives the outer endpoint terms, the interior coefficient $-2x'$, and the corner coefficient $-[x(0)+y(0)]$. Matching these three pieces to (2.19) gives (2.20)--(2.21); (2.22) is $L(X_{L'})$. $\square$

Thus the common corner is not silently discarded. Fixing $c$ reduces to the zero-corner algebra; allowing it requires the compatibility term in (2.19). A characteristic phase space is incomplete until this endpoint policy, its kernel/quotient if any, and its Hamiltonian test algebra have all been declared.

## 3. Massive Goursat Problem in $F$

Give

$$\begin{align}
f(v)=\phi(0,v),\qquad g(u)=\phi(u,0),\qquad f(0)=g(0)=c. \tag{3.1}
\end{align}$$

Integrating (1.1) on $[0,u]\times[0,v]$ gives

$$\begin{align}
\boxed{ \phi(u,v)=f(v)+g(u)-c -\mu\int_0^u dr\int_0^v ds\,\phi(r,s).} \tag{3.2}
\end{align}$$

Resumming its Volterra series gives

$$
\begin{aligned}
\phi(u,v)=&\,f(v)+g(u)-cJ_0(m\sqrt{uv})\\
&-\frac m2\sqrt u\int_0^v ds\,
\frac{J_1(m\sqrt{u(v-s)})}{\sqrt{v-s}}f(s)\\
&-\frac m2\sqrt v\int_0^u dr\,
\frac{J_1(m\sqrt{v(u-r)})}{\sqrt{u-r}}g(r).
\end{aligned}
\tag{3.3}
$$

The endpoint singularities are removable since $J_1(z)/z\to1/2$. Formula (3.3) displays the massive interior tail.

**Theorem 3.1 (Goursat well-posedness on compact rectangles).** Let $U,V<\infty$. If $f\in C^1([0,V])$, $g\in C^1([0,U])$, and $f(0)=g(0)$, then (3.2) has a unique $C^1$ solution on $[0,U]\times[0,V]$ with continuous mixed derivative satisfying (1.1). It is given by (3.3).

**Proof.** Picard iteration of the right side of (3.2) has $n$-th difference bounded by $C(\mu UV)^n/(n!)^2$, so it converges uniformly without a smallness assumption. Applying the estimate to a difference proves uniqueness. Differentiating gives the equation and regularity. Expanding $J_0,J_1$, integrating termwise, and using $J_0'=-J_1$ reproduces the Volterra series. $\square$

**Check 3.2.** Formula (3.3) has the required boundary values and satisfies $(\partial_u\partial_v+\mu)\phi=0$. If $f=g=c$, each integral equals $c[1-J_0(m\sqrt{uv})]$, so $\phi=cJ_0(m\sqrt{uv})$.

As $m\to0$,

$$\begin{align}
\phi(u,v)\longrightarrow f(v)+g(u)-c.
\tag{3.4}
\end{align}$$

The massless field is a sum of left- and right-movers; the Bessel integrals are the new massive tail.

Let a spacelike segment $\Sigma\subset F$ and the two past null segments bound a causal diamond. Stokes' theorem applied to (2.3) yields

$$\begin{align}
\Omega_\Sigma=\Omega_{N_v}^{\rm in}+\Omega_{N_u}^{\rm in}. \tag{3.5}
\end{align}$$

Corner terms cancel under (3.1). Thus the reduced double-null Goursat-to-Cauchy map is symplectic.

## 4. Rindler-Wedge Classical Dynamics

### 4.1 Self-Adjoint Radial Operator and KL Spectral Data

In either wedge,

$$\begin{align}
\left[-\rho^{-2}\partial_\eta^2 +\rho^{-1}\partial_\rho(\rho\partial_\rho)-m^2\right]\phi=0. \tag{4.1}
\end{align}$$

On $\eta=0$,

$$\begin{align}
\Omega_{R,L} =\int_0^\infty\frac{d\rho}{\rho}\, \delta\phi\wedge\delta(\partial_\eta\phi). \tag{4.2}
\end{align}$$

Writing $r_*=\log(m\rho)$ gives

$$\begin{align}
(-\partial_\eta^2+\partial_{r_*}^2-e^{2r_*})\phi=0. \tag{4.3}
\end{align}$$

Set $r=r_*$. On $L^2(\mathbb R,dr)$ let $A$ be the positive self-adjoint operator associated with the closed form

$$\begin{align}
\mathfrak a[q]=\int_{\mathbb R}\left(|q'(r)|^2+e^{2r}|q(r)|^2\right)dr,\qquad A=-\partial_r^2+e^{2r}. \tag{4.4}
\end{align}$$

The graph-energy bulk Cauchy space is

$$\begin{align}
\mathcal C_R^{\rm gr}:=D(A^{1/2})\oplus L^2(\mathbb R,dr),\qquad H_R(q,p)=\frac12\left(\|A^{1/2}q\|_2^2+\|p\|_2^2\right), \tag{4.4a}
\end{align}$$

with the CPS form (4.2). In its natural graph norm the form is bounded and nondegenerate but weak symplectic: its flat map is not onto the full graph-space dual. The graph norm includes $\|q\|_2$; the conserved energy itself does not control that threshold component. The homogeneous energy completion used below is the completion of compact Cauchy data in the norm
$\|(q,p)\|_{\rm en}:=(\|A^{1/2}q\|_2^2+\|p\|_2^2)^{1/2}$.

The horizon is $r\to-\infty$; the exponential potential at $+\infty$ is a reflecting end. Put

$$\begin{align}
\psi_\omega(r):=\frac{\sqrt{2\omega\sinh\pi\omega}}{\pi}K_{i\omega}(e^r),\qquad \omega>0. \tag{4.5}
\end{align}$$

The Kontorovich--Lebedev transform in unitary normalization is

$$\begin{align}
(\mathcal Uq)(\omega)=\int_{\mathbb R}\psi_\omega(r)q(r)dr,\qquad q(r)=\int_0^\infty\psi_\omega(r)(\mathcal Uq)(\omega)d\omega . \tag{4.6}
\end{align}$$

Indeed, after $x=e^r=m\rho$, the transform measure $dr=dx/x$ and

$$\begin{align}
\int_0^\infty\frac{d\rho}{\rho} K_{i\omega}(m\rho)K_{i\omega'}(m\rho) =\frac{\pi^2}{2\omega\sinh\pi\omega}\delta(\omega-\omega'). \tag{4.7}
\end{align}$$

Thus $\mathcal U$ is unitary, $\mathcal U A\mathcal U^{-1}$ is multiplication by $\omega^2$, and $A$ has purely absolutely continuous spectrum $[0,\infty)$ of multiplicity one. There is no $L^2$ zero eigenfunction. The normalized Fulling modes are

$$\begin{align}
w_\omega^{R,L}(\eta,r)=\frac{\psi_\omega(r)}{\sqrt{2\omega}}e^{-i\omega\eta} =\frac{\sqrt{\sinh\pi\omega}}{\pi}K_{i\omega}(m\rho)e^{-i\omega\eta}. \tag{4.8}
\end{align}$$

For real Cauchy data $(q,p)=(\phi,\partial_\eta\phi)|_{\eta=0}$ write $\widetilde q=\mathcal Uq$, $\widetilde p=\mathcal Up$, and

$$\begin{align}
b(\omega)=\sqrt{\frac\omega2}\,\widetilde q(\omega) +\frac{i}{\sqrt{2\omega}}\widetilde p(\omega). \tag{4.9}
\end{align}$$

Then

$$\begin{align}
\phi(\eta,r)=\int_0^\infty d\omega\, \left[b(\omega)w_\omega(\eta,r)+\overline{b(\omega)w_\omega(\eta,r)}\right], \tag{4.10}
\end{align}$$

and on the common spectral core

$$\begin{align}
\Omega_R(1,2)&=2\operatorname{Im}\int_0^\infty \overline{b_1(\omega)}b_2(\omega)d\omega,\\
H_R[b]&=\int_0^\infty\omega|b(\omega)|^2d\omega. \tag{4.11}
\end{align}$$

We distinguish two completions:

$$
\begin{aligned}
\mathcal E_R^{\rm en}&:=\overline{C_c^\infty(0,\infty)}^{\ \|b\|_{\rm en}},
\qquad \|b\|_{\rm en}^2:=\int_0^\infty\omega|b(\omega)|^2d\omega,\\
\mathcal P_R^{\rm rad}&:=L^2((0,\infty),d\omega)\cap L^2((0,\infty),\omega d\omega).
\end{aligned}
\tag{4.12}
$$

$\mathcal E_R^{\rm en}$ is the homogeneous finite-boost-energy completion. The second space is the declared finite-energy **IR-regular radiation completion**: the extra unweighted $L^2$ condition makes (4.11) finite. With its graph norm $\int(1+\omega)|b|^2d\omega$, the form in (4.11) is bounded and nondegenerate but weak symplectic; its flat map is not onto the full graph-space dual. Finite boost energy alone does not control the threshold. For example $b(\omega)=\omega^{-3/4}\mathbf1_{(0,1)}$ lies in $L^2(\omega d\omega)$ but not in $L^2(d\omega)$. This is an infrared norm obstruction, not a missing discrete $\omega=0$ oscillator. The term “one-particle space” will be reserved for Section 6, after a positive-frequency complex structure has been chosen.

$\mathcal C_R^{\rm gr}$, $\mathcal E_R^{\rm en}$, and $\mathcal P_R^{\rm rad}$ agree on the compact spectral core but are different completions. The first has a bounded nondegenerate weak-symplectic Cauchy pairing in the graph topology, the second retains only the conserved energy norm, and the third is the IR-regular graph completion on which the radiation flux is bounded and nondegenerate. The realification of the unweighted $L^2(d\omega)$ completion is strong symplectic; the two graph completions just listed are not.

### 4.2 Incoming and Outgoing Radiation

Define the logarithmic null coordinates

$$
\begin{aligned}
s_-&=\eta_R-r=-\log(-m u) &&\text{on }\mathcal H_R^-,\\
s_+&=\eta_R+r=\log(m v) &&\text{on }\mathcal H_R^+,
\end{aligned}
\tag{4.13}
$$

In $L$, the corresponding formulas are $s_-=\eta_L-r=-\log(-m v)$ on $\mathcal H_L^-$ and $s_+=\eta_L+r=\log(m u)$ on $\mathcal H_L^+$. The small-$e^r$ expansion gives

$$\begin{align}
w_\omega\sim c_-(\omega)e^{-i\omega s_-} +c_+(\omega)e^{-i\omega s_+}, \tag{4.14}
\end{align}$$

where

$$
\begin{aligned}
c_-(\omega)&=\frac{\sqrt{\sinh\pi\omega}}{2\pi}
2^{-i\omega}\Gamma(-i\omega),\\
c_+(\omega)&=\frac{\sqrt{\sinh\pi\omega}}{2\pi}
2^{i\omega}\Gamma(i\omega),\\
|c_\pm(\omega)|^2&=\frac1{4\pi\omega}.
\end{aligned}
\tag{4.15}
$$

For $b\in C_c^\infty(0,\infty)$, the actual incoming and outgoing radiation profiles are therefore

$$\begin{align}
F^\pm(s)=\int_0^\infty d\omega\, \left[c_\pm(\omega)b(\omega)e^{-i\omega s} +\overline{c_\pm(\omega)b(\omega)}e^{i\omega s}\right]. \tag{4.16}
\end{align}$$

Write $a^\pm(\omega)=c_\pm(\omega)b(\omega)$. The real logarithmic radiation spaces used here are

$$
\begin{aligned}
\|F\|_{\rm can}^2&:=4\pi\int_0^\infty\omega|a(\omega)|^2d\omega,
&\mathcal Z_{\rm rad}^{\rm can}
&:=\overline{\mathscr S(\mathbb R;\mathbb R)}^{\|\cdot\|_{\rm can}},\\
\|F\|_{\rm en}^2&:=4\pi\int_0^\infty\omega^2|a(\omega)|^2d\omega,
&\mathcal Z_{\rm rad}^{\rm en}
&:=\overline{\mathscr S(\mathbb R;\mathbb R)}^{\|\cdot\|_{\rm en}}.
\end{aligned}
\tag{4.16a}
$$

These are abstract homogeneous completions. When represented distributionally, they act naturally on the zero-mean test space and are defined modulo a constant; a separate $\delta(\omega)$ constant mode is not included. By (4.15), $b\mapsto F^\pm$ is an isometry from $L^2(d\omega)$ to $\mathcal Z_{\rm rad}^{\rm can}$ and from $L^2(\omega d\omega)$ to $\mathcal Z_{\rm rad}^{\rm en}$.

Their flux is exactly the bulk form:

$$\begin{align}
\int_{\mathbb R}(F_1^\pm\partial_sF_2^\pm-F_2^\pm\partial_sF_1^\pm)ds =2\operatorname{Im}\int_0^\infty\overline b_1b_2d\omega. \tag{4.17}
\end{align}$$

Decay at $r\to+\infty$ selects $K_{i\omega}$ and gives

$$\begin{align}
\widehat F^+(\omega)=\mathcal R(\omega)\widehat F^-(\omega),\qquad \boxed{\mathcal R(\omega)=2^{2i\omega}\frac{\Gamma(i\omega)}{\Gamma(-i\omega)}}. \tag{4.18}
\end{align}$$

For real $\omega$, $|\mathcal R(\omega)|=1$, and

$$\begin{align}
\mathcal R(0):=\lim_{\omega\downarrow0}\mathcal R(\omega)=-1. \tag{4.19}
\end{align}$$

There is no hidden $m$ in (4.18), because $r=\log(m\rho)$ fixed the origin of tortoise coordinate. If instead $\widetilde r=\log\rho$, the same multiplier is

$$\begin{align}
\mathcal R_m(\omega)=\left(\frac2m\right)^{2i\omega} \frac{\Gamma(i\omega)}{\Gamma(-i\omega)} =e^{-2i\omega\log m}\mathcal R(\omega). \tag{4.20}
\end{align}$$

Only the convention-dependent phase changes.

**Theorem 4.1 (KL bulk-to-radiation scattering).** For the self-adjoint radial realization (4.4):

1. on $C_c^\infty(0,\infty)$ in spectral space, the incoming coefficient determines the unique decaying Rindler solution (4.10), and its outgoing coefficient is (4.18);
2. the incoming and outgoing radiation maps are symplectic by (4.17), and multiplication by $\mathcal R$ is unitary both on $L^2(d\omega)$ and on $L^2(\omega d\omega)$;
3. by density, the scattering map extends uniquely and bijectively from $\mathcal P_R^{\rm rad}$ to $\mathcal Z_{\rm rad}^{\rm can}\cap\mathcal Z_{\rm rad}^{\rm en}$, preserves (4.11), and requires no hard infrared cutoff; it also extends as an energy isometry from $\mathcal E_R^{\rm en}$ to $\mathcal Z_{\rm rad}^{\rm en}$. The multiplier itself has the continuous threshold value (4.19), although an $L^2$ equivalence class has no point value at $\omega=0$.

**Proof.** The KL inversion formula gives the unitary spectral representation and uniqueness of $b$. The two coefficients in (4.15) follow from the two small-argument powers of $K_{i\omega}$. The gamma identity $\Gamma(i\omega)\Gamma(-i\omega)=\pi/(\omega\sinh\pi\omega)$ gives their moduli and (4.17). Complex conjugacy of $\Gamma(i\omega)$ and $\Gamma(-i\omega)$ gives $|\mathcal R|=1$; writing $\Gamma(i\omega)/\Gamma(-i\omega)=-\Gamma(1+i\omega)/\Gamma(1-i\omega)$ gives (4.19). A unit-modulus multiplier extends uniquely to both declared completions. $\square$

The theorem proves a complete KL spectral radiation representation and canonical scattering on $\mathcal P_R^{\rm rad}$. On the energy-only completion it proves energy scattering; the unweighted pairing in (4.11) need not even be finite there, so no continuous symplectic form is claimed. Identifying the completed radiation class with a pointwise or strong affine-horizon trace for every finite-energy solution is a separate theorem and is not used.

### 4.3 Three Non-Equivalent Meanings of Horizon Data

The following objects must not be identified without a trace theorem.

1. A **sharp affine trace** is $h_R^+(v)=\lim_{u\uparrow0}\phi(u,v)$ at fixed $v>0$, with an asserted function/distribution topology and a statement about $v\downarrow0$.
2. A **radiation field** is the $r\to-\infty$ scattering limit at fixed $s_\pm=\eta\pm r$. On the dense core it is (4.16); on $\mathcal P_R^{\rm rad}$ it is an element of $\mathcal Z_{\rm rad}^{\rm can}\cap\mathcal Z_{\rm rad}^{\rm en}$, distributionally modulo constants.
3. A **finite characteristic profile** is an actual $C^1$ (or specified Sobolev) function on a finite affine null segment, with its endpoint and common-corner values included in the data.

The coordinate relation $v=e^{s_+}/m$ converts a sufficiently regular radiation representative into a function on the open half-ray, but it does not prove an affine endpoint limit at $v=0$. Generic Fulling finite-energy data therefore need not define $\phi|_{\mathcal H}$ pointwise. The local finite-diamond theorem in Section 3 concerns object 3; Theorem 4.1 concerns object 2.

### 4.4 The Decisive Local Obstruction

**Obstruction 4.2 (one half-ray is not local characteristic Cauchy data).** Knowing $g(u)=\phi(u,0)$ only for $u<0$ does not determine a solution in $R$ in an unrestricted local $C^k$ solution class.

**Proof.** On the boundary,

$$\begin{align}
\partial_u[\partial_v\phi(u,0)]=-\mu g(u),
\end{align}$$

hence

$$\begin{align}
\partial_v\phi(u,0)=A-\mu\int_{u_0}^u g(s)ds. \tag{4.21}
\end{align}$$

The constant $A$ is not fixed by $g$; different values give different local solutions with the same trace. Equivalently, a characteristic rectangle needs two intersecting sides. $\square$

This does not contradict (2.9): there one knows the profile on the complete null line, chooses a zero-mode prescription, and imposes a nonlocal Fourier condition.

**Obstruction 4.3 (generic wedge data lack a corner trace).** Since $K_{i\omega}$ oscillates in $\log\rho$, generic finite Rindler-energy packets have radiation limits but need not have a pointwise $\rho\to0$ limit. Thus $\phi_L(0)=\phi_R(0)$ is not defined on the full intrinsic wedge energy spaces. Theorem 4.1 removes the old spectral-scattering conditional, but it does not remove this sharp-trace obstruction.

### 4.5 Minimal Local Repair

For a strictly local theorem, use a finite characteristic diamond, or add a timelike mirror $\rho=\rho_0$ with a declared reflecting condition. Two intersecting null sides, or one null side plus the mirror and corner compatibility, then define a standard mixed problem. This is the appropriate regulator for sharp horizon traces.

## 5. Two-Tier Classical Composition

### 5.1 Tier A: Local Finite-Diamond Composition

Let $D_{U,V}$ be the compact diamond whose past boundary is

$$\begin{align}
N_u=\{u=0,0\leq v\leq V\},\qquad N_v=\{v=0,0\leq u\leq U\}. \tag{5.1}
\end{align}$$

Choose a background solution with corner value $c$. For the canonical tangent space take smooth variations compactly supported away from the two outer endpoints; their corner variations obey $\delta f(0)=\delta g(0)$ and are treated by Lemma 2.4. Let $\Sigma\subset D_{U,V}$ be any smooth spacelike Cauchy segment joining $(U,0)$ to $(0,V)$.

**Theorem 5.1 (local double-null Goursat composition).** The map

$$\begin{align}
G_{U,V}:\mathcal Z_{U,V}\longrightarrow\operatorname{Sol}(D_{U,V}), \qquad (f,g)\longmapsto\phi \text{ given by (3.3)}, \tag{5.2}
\end{align}$$

is bijective onto the $C^1$ solutions with continuous mixed derivative and the declared boundary values. On the declared tangent space,

$$\begin{align}
G_{U,V}^*\Omega_\Sigma=\Omega_{N_u}^{\rm in}+\Omega_{N_v}^{\rm in}. \tag{5.3}
\end{align}$$

Hence finite-diamond characteristic composition is symplectic and needs no Rindler scattering assumption. Its Poisson inverse is taken on the compatible Hamiltonian functionals of Lemma 2.4.

**Proof.** Existence and uniqueness are Theorem 3.1. Integrate the conserved current (2.3) over the region between $N_u\cup N_v$ and $\Sigma$. The outer endpoint terms vanish on the declared tangent space, while the two copies of the common past-corner term combine exactly as in (2.20). This gives (5.3). The compatible dual on which Hamiltonian vectors exist is precisely Lemma 2.4. $\square$

This theorem is local. A finite affine profile is genuine Goursat data; it is not obtained merely by writing a symbol $\phi|_{\mathcal H}$ for an asymptotic radiation class.

### 5.2 Bottom-Up Bifurcation Matching at $t=0$

The common spacelike surface of the two wedges is the punctured line $t=0$. Write the regional data using the outward radial coordinate on each half-line,

$$
\begin{aligned}
q_R(\rho)&:=\phi(0,\rho),&
p_R(\rho)&:=\left.\partial_{\eta_R}\phi\right|_{\eta_R=0},\\
q_L(\rho)&:=\phi(0,-\rho),&
p_L(\rho)&:=\left.\partial_{\eta_L}\phi\right|_{\eta_L=0}.
\end{aligned}
\tag{5.3a}
$$

The signs are fixed directly from (1.2)--(1.3):

$$
\begin{aligned}
\partial_{\eta_R}
&=\rho\cosh\eta_R\,\partial_t+\rho\sinh\eta_R\,\partial_x
\xrightarrow{\eta_R=0}\rho\partial_t,\\
\partial_{\eta_L}
&=\rho\cosh\eta_L\,\partial_t-\rho\sinh\eta_L\,\partial_x
\xrightarrow{\eta_L=0}\rho\partial_t.
\end{aligned}
\tag{5.3b}
$$

Thus the future-oriented left time carries no extra momentum sign even though $\partial_{\eta_L}=-\xi$:

$$\begin{align}
\pi_A(\rho):=\partial_t\phi(0,\pm\rho)=\frac{p_A(\rho)}{\rho}, \qquad A=L,R. \tag{5.3c}
\end{align}$$

For $m>0$ let $H_m^1(\mathbb R_+)=H^1(\mathbb R_+)$ with the equivalent norm
$\|q\|_{H_m^1}^2=\int_0^\infty(|q'|^2+m^2|q|^2)d\rho$. Define the matched regional space without referring to any spacetime solution:

$$
\boxed{
\mathcal C_{\rm bif}:=
\left\{(q_L,p_L;q_R,p_R):
\begin{array}{l}
q_L,q_R\in H_m^1(\mathbb R_+),\\
p_L/\rho,p_R/\rho\in L^2(\mathbb R_+),\\
\operatorname{Tr}_0q_L=\operatorname{Tr}_0q_R
\end{array}\right\}.}
\tag{5.3d}
$$

The trace is well defined because $H^1(\mathbb R_+)\hookrightarrow C^0([0,\infty))$ in one spatial dimension. Define the assembly map

$$
\mathsf A_{\rm bif}(q_L,p_L;q_R,p_R)=(q,\pi),
\quad
\begin{cases}
q(x)=q_R(x),\quad \pi(x)=p_R(x)/x,&x>0,\\
q(x)=q_L(-x),\quad \pi(x)=p_L(-x)/(-x),&x<0.
\end{cases}
\tag{5.3e}
$$

**Theorem 5.2 (bottom-up bifurcation matching).** The map $\mathsf A_{\rm bif}$ is a canonical isometric isomorphism

$$\begin{align}
\mathsf A_{\rm bif}:\mathcal C_{\rm bif} \xrightarrow{\ \cong\ }
H_m^1(\mathbb R)\oplus L^2(\mathbb R). \tag{5.3f}
\end{align}$$

With

$$\begin{align}
\Omega_{\rm bif}:= \sum_{A=L,R}\int_0^\infty\frac{d\rho}{\rho}\, \delta q_A\wedge\delta p_A, \qquad \Omega_{\mathbb M}:=\int_{\mathbb R}dx\,\delta q\wedge\delta\pi, \tag{5.3g}
\end{align}$$

one has $\mathsf A_{\rm bif}^*\Omega_{\mathbb M}=\Omega_{\rm bif}$.

**Proof.** The one-dimensional Sobolev patching lemma says that two $H^1$ half-line functions define an $H^1(\mathbb R)$ function exactly when their traces at the joining point agree. In distributional language, unequal traces would create a delta term in $\partial_xq$; equal traces remove it. Conversely, restriction of a global $H^1$ function gives the two half-line functions and their common trace. The $L^2$ momentum patches with no trace condition. Splitting the massive energy integral at $x=0$ proves the norm identity and gives the inverse of (5.3e) by restriction.

For the symplectic form, $x=-\rho$ on the left reverses both the integration limits and $dx$, so no extra sign remains. Using $p_A=\rho\pi_A$ gives

$$\begin{align}
\Omega_{\rm bif} =\sum_A\int_0^\infty d\rho\,\delta q_A\wedge\delta\pi_A =\int_{-\infty}^{\infty}dx\,\delta q\wedge\delta\pi =\mathsf A_{\rm bif}^*\Omega_{\mathbb M}. \tag{5.3h}
\end{align}$$

This also verifies the left-wedge sign independently of the boost convention. $\square$

The common value

$$\begin{align}
c:=\operatorname{Tr}_0q_L=\operatorname{Tr}_0q_R \tag{5.3i}
\end{align}$$

is the intrinsic bifurcation datum. If $\kappa\in C_c^\infty([0,\infty))$ satisfies $\kappa(0)=1$, then

$$\begin{align}
q_A=c\kappa+\bar q_A,\qquad \operatorname{Tr}_0\bar q_A=0. \tag{5.3j}
\end{align}$$

Changing $\kappa$ changes only the zero-trace coordinate $\bar q_A$; it does not change the assembled datum. Thus the affine/corner lift in (5.5) is not an extra oscillator on the matched space. It is the characteristic propagation of the already existing scalar $c$.

There is one necessary distinction between Minkowski energy and boost energy. The space (5.3d) is exactly the global Minkowski energy space, but it need not have finite first moment of the energy density and therefore need not belong to the KL/Fulling completion. Define the dense weighted subspace

$$\begin{align}
\mathcal C_{\rm bif}^{\rm boost}:= \left\{z\in\mathcal C_{\rm bif}: \sum_A\int_0^\infty\rho \left(|q_A'|^2+m^2|q_A|^2+|p_A/\rho|^2\right)d\rho<\infty\right\}. \tag{5.3k}
\end{align}$$

Equip this intersection with the graph norm obtained by adding the integral in (5.3k) to the $\mathcal C_{\rm bif}$ norm. Smooth compact assembled Cauchy data are dense by cutoff and mollification in the signed $x$ coordinate. In $r=\log(m\rho)$ the extra integral is the homogeneous radial energy of Section 4, because $p_A=\rho\pi_A$. The ordinary $L^2(dr)$ graph domain still excludes a nonzero constant as $r\to-\infty$. By the zero trace in (5.3j), the one-dimensional Hardy estimate near $\rho=0$ and the ordinary $H^1(d\rho)$ bound at infinity put $\bar q_A$ in the tortoise-$L^2$ graph sector; the scalar $c$ is retained separately.

**Lemma 5.2a (homogeneous boost-energy extension of the corner component).** Let $\kappa$ be as in (5.3j), put $k(r):=\kappa(e^r/m)$, and define the homogeneous configuration space

$$\begin{align}
\dot{\mathcal Q}_A:=\overline{C_c^\infty(\mathbb R)}^{\ \mathfrak a^{1/2}}.
\end{align}$$

Then $ck\in\dot{\mathcal Q}_A$ for every $c\in\mathbb R$, although $ck\notin L^2(dr)$ when $c\neq0$. The KL transform extends uniquely and isometrically to

$$\begin{align}
\dot{\mathcal U}:\dot{\mathcal Q}_A\xrightarrow{\ \cong\ }L^2((0,\infty),\omega^2d\omega),\qquad
\mathfrak a[q]=\int_0^\infty\omega^2|\dot{\mathcal U}q(\omega)|^2d\omega.
\end{align}$$

Together with the ordinary unitary transform of $p\in L^2(dr)$, this extension intertwines the homogeneous energy evolution with boost time. Explicitly, if $\widetilde q=\dot{\mathcal U}q$ and $\widetilde p=\mathcal Up$, then

$$
\begin{aligned}
\widetilde q_\eta&=\cos(\omega\eta)\widetilde q+\frac{\sin(\omega\eta)}{\omega}\widetilde p,\\
\widetilde p_\eta&=-\omega\sin(\omega\eta)\widetilde q+\cos(\omega\eta)\widetilde p,
\end{aligned}
$$

and the corresponding coefficient (4.9) obeys $b_\eta(\omega)=e^{-i\omega\eta}b_0(\omega)$. Hence KL/spectral evolution extends continuously to $\dot{\mathcal Q}_A\oplus L^2$ and commutes with boost evolution.

**Proof.** Choose $\chi\in C^\infty(\mathbb R)$ with $0\leq\chi\leq1$, $\chi=0$ on $(-\infty,-2]$, and $\chi=1$ on $[-1,\infty)$. For $R>1$ set $\chi_R(r)=\chi(r/R)$ and $k_R=\chi_Rk\in C_c^\infty(\mathbb R)$. Since $k(r)\to1$, $k'(r)=O(e^r)$ as $r\to-\infty$, and $k$ is right-compact,

$$\begin{aligned}
\mathfrak a[k-k_R]
&\leq2\int_{-\infty}^{-R}|k'|^2dr
+2\|k\|_{L^\infty(-\infty,-R)}^2\|\chi_R'\|_2^2
+\int_{-\infty}^{-R}e^{2r}|k|^2dr\\
&\longrightarrow0,
\qquad \|\chi_R'\|_2^2=R^{-1}\|\chi'\|_2^2,
\end{aligned}$$

where the last potential tail is $O(e^{-2R})$. Thus $k\in\dot{\mathcal Q}_A$. On the compact form core, the spectral theorem gives $\mathfrak a[h]=\int\omega^2|\mathcal Uh|^2d\omega$. Since this core is a form core for $A$, completion gives the displayed isometry onto $L^2(\omega^2d\omega)$. The two spectral evolution formulas preserve $\omega^2|\widetilde q|^2+|\widetilde p|^2$ pointwise and therefore extend by density; substitution into (4.9) gives $b_\eta=e^{-i\omega\eta}b_0$. $\square$

The KL energy-radiation map of Theorem 4.1, extended by Lemma 5.2a, therefore induces the **corner-completed radiation image**

$$\begin{align}
\mathfrak R_{\rm bif}^{\pm}:= \left\{\left(c,[F_L^\pm],[F_R^\pm]\right):
(q_L,p_L;q_R,p_R)\in\mathcal C_{\rm bif}^{\rm boost},\qquad [F_A^\pm]=\operatorname{Rad}_A^\pm(q_A,p_A)\right\}. \tag{5.3l}
\end{align}$$

Its topology and symplectic form are the ones transported from $\mathcal C_{\rm bif}^{\rm boost}$ by the injective wedge Cauchy/radiation evolution. On the IR-regular intersection with $\mathcal P_L^{\rm rad}\oplus\mathcal P_R^{\rm rad}$, the transported form is the sum of the logarithmic fluxes (4.17). Equation (5.3l) is an image definition from matched regional variables; it is not the circular condition “there exists a global solution.”

For the sharp affine statement use the dense smooth core

$$\begin{align}
\mathcal C_{\rm bif}^{\infty}:= \mathsf A_{\rm bif}^{-1} \left(C_c^\infty(\mathbb R)\oplus C_c^\infty(\mathbb R)\right). \tag{5.3m}
\end{align}$$

For $z\in\mathcal C_{\rm bif}^{\infty}$, let $h_A^+$ be the ordinary future-horizon trace of the wedge solution. It obeys $h_L^+(0)=h_R^+(0)=c$. Define $\widetilde{\mathfrak R}_{\rm bif}^{+}$, and similarly $\widetilde{\mathfrak R}_{\rm bif}^{-}$, as the image of this core with the actual $h_A^\pm$ retained together with the KL classes.

**Theorem 5.3 (commuting bifurcation/radiation/Goursat diagram on the smooth core).** Let $E_{\mathbb M}$ be global Minkowski evolution, $E_A$ the two wedge evolutions selected by the KL radial realization, $S_A$ their radiation scattering maps, and $G_F$ the double-null Goursat map. On $\mathcal C_{\rm bif}^{\infty}$,

$$\begin{align}
\boxed{ \operatorname{Res}_F E_{\mathbb M}\mathsf A_{\rm bif} =G_F\,\operatorname{Lift}_{c} (S_L\oplus S_R)(\operatorname{Rad}_L^-\oplus\operatorname{Rad}_R^-).} \tag{5.3n}
\end{align}$$

Equivalently, assembling at the bifurcation surface and then evolving gives the same field in $F$ as wedge evolution to the two future horizons followed by corner-complete Goursat evolution. Both routes preserve the symplectic form on this core.

**Proof.** Let $\phi=E_{\mathbb M}\mathsf A_{\rm bif}z$. Its restrictions to $L$ and $R$ have the regional Cauchy data $z_A$. In the decomposition (5.3j), $\bar q_A$ belongs to the tortoise-$L^2$ form domain, while Lemma 5.2a puts the nonzero component $c\kappa$ in the homogeneous form completion and extends the KL evolution to it. Thus $z_A\in\dot{\mathcal Q}_A\oplus L^2$, and energy uniqueness for that spectral evolution gives

$$\begin{align}
E_Az_A=\phi|_A
\end{align}$$

also when $c\neq0$. On the present smooth core their future-horizon traces are therefore the ordinary smooth traces $h_A^+=\phi|_{\mathcal H_A^+}$. Sobolev matching fixes their common corner to $c$. The restriction $\phi|_F$ and the right side of (5.3n) have the same two characteristic profiles; Theorem 3.1 on every compact rectangle gives equality. Theorem 5.2, (4.17), and Stokes' identity (3.5) give equality of the symplectic forms. $\square$

This theorem gives an intrinsic characterization of the old “globally extendible” smooth radiation sector: it is exactly $\widetilde{\mathfrak R}_{\rm bif}^{-}$, the radiation image of bottom-up matched regional Cauchy data. On that image the unrestricted common corner is fixed, so the affine-lift ambiguity is resolved. This statement does **not** say that arbitrary independent elements of the intrinsic Fulling radiation spaces admit such a lift. Extending the sharp-trace part of (5.3n) continuously from the smooth core to all of $\mathcal C_{\rm bif}^{\rm boost}$ requires a characteristic trace/exhaustion theorem and is not asserted here.

### 5.3 Tier B: Asymptotic Rindler Causal Completion

The output of Theorem 4.1 is a homogeneous logarithmic radiation class $[F_A^+]$, not an affine trace with a preferred additive constant. A **Goursat lift** of that class is an actual affine profile $h_A$ such that

$$\begin{align}
\left[s\longmapsto h_R(e^s/m)\right]=[F_R^+],\qquad \left[s\longmapsto h_L(e^s/m)\right]=[F_L^+]. \tag{5.4}
\end{align}$$

The brackets denote equality in the homogeneous radiation space. The lifted matched space is

$$
\widetilde{\mathcal M}_G^+:=
\left\{\big(([F_L^+],[F_R^+]);h_L,h_R\big):
\begin{array}{l}
[F_A^+]\in\mathcal Z_{A,\rm rad}^{\rm can}\cap\mathcal Z_{A,\rm rad}^{\rm en},\\
h_A\in C^1([0,a])\text{ for every }a<\infty\text{ and satisfies (5.4)},\\
h_L(0)=h_R(0)=:c
\end{array}\right\}. \tag{5.5}
$$

Let $\pi:\widetilde{\mathcal M}_G^+\to (\mathcal Z_{L,\rm rad}^{\rm can}\cap\mathcal Z_{L,\rm rad}^{\rm en}) \oplus(\mathcal Z_{R,\rm rad}^{\rm can}\cap\mathcal Z_{R,\rm rad}^{\rm en})$ forget the affine lifts. In general $\pi$ is not injective: a common additive constant is invisible to the homogeneous radiation norm but changes the massive Goursat solution by a corner mode. Thus the lift is genuine matching/IR data, not notation for a trace theorem.

There is, however, an explicit zero-corner core on which no such choice remains:

$$\begin{align}
\widetilde{\mathcal M}_{G,{\rm c}}^+ :=\left\{\widetilde F^+\in\widetilde{\mathcal M}_G^+:
h_L,h_R\in C_c^\infty((0,\infty))\right\}. \tag{5.6}
\end{align}$$

Here both profiles vanish near the corner and affine infinity. Their logarithmic representatives are in $C_c^\infty(\mathbb R)$; their Fourier coefficients are Schwartz, and (4.15) places the corresponding $b$ in $\mathcal P_R^{\rm rad}$.

Let $S=S_L\oplus S_R$ and define the matched incoming data by the fiber products

$$
\begin{aligned}
\widetilde{\mathcal M}_G^-&:=
\left\{(F^-,\widetilde F^+):SF^-=\pi(\widetilde F^+)\right\},\\
\widetilde{\mathcal M}_{G,{\rm c}}^-&:=
\widetilde{\mathcal M}_G^-\cap
\left[(\mathcal P_L^{\rm rad}\oplus\mathcal P_R^{\rm rad})
\times\widetilde{\mathcal M}_{G,{\rm c}}^+\right].
\end{aligned}
\tag{5.7}
$$

**Theorem 5.4 (asymptotic Rindler causal completion on a matched core).**

1. Every element of $\widetilde{\mathcal M}_G^-$ determines a unique $C^1$ solution on each compact rectangle in $F$; these solutions agree on overlaps and hence define a unique local solution $\phi_F$ on all of $F$.
2. On $\widetilde{\mathcal M}_{G,{\rm c}}^-$ the lift is unique, the incoming-to-$F$ map is symplectic onto its solution image, and the symplectic form on a complete spacelike Cauchy curve in $F$ equals the sum of the two incoming radiation fluxes.

**Proof.** Theorem 4.1 gives the outgoing classes. A supplied lift in (5.5) gives exactly two $C^1$ affine profiles with a common corner, so Theorem 5.1 applies on every rectangle; uniqueness proves agreement on overlaps. On the compact core all boundary profiles vanish near $0$ and $\infty$. Along a hyperbolic Cauchy curve $uv=\tau^2$, formula (3.3) and the boundedness of $J_1$ give $\phi=O(v^{-1})$ as $v\to\infty$ and symmetrically $\phi=O(u^{-1})$ at the other end; the differentiated formula gives the corresponding integrable flux bound. Hence no endpoint term survives exhaustion. The logarithmic-to-affine Jacobian cancels the tangent derivative in the null flux, and (4.17) together with (5.3) proves the second statement. $\square$

For the larger lifted space, Theorem 5.4 proves local composition, not a bounded symplectomorphism between completed global energy spaces. Such an extension would require a topology controlling the affine lift, corner, Cauchy flux, and exhaustion limit.

The old existentially defined “globally extendible incoming subspace” is replaced by the bottom-up image

$$\begin{align}
\widetilde{\mathcal M}_{\rm bif}^-:= \left\{\left(c,h_L^-,h_R^-;[F_L^-],[F_R^-]\right):
\begin{array}{l}
z\in\mathcal C_{\rm bif}^{\infty},\\
c=\operatorname{Tr}_0q_L=\operatorname{Tr}_0q_R,\\
h_A^-\text{ is the actual smooth past-horizon trace of }E_Az_A,\\
[F_A^-]=\operatorname{Rad}_A^-(z_A)
\end{array}\right\}. \tag{5.8}
\end{align}$$

Where the output includes the common $c$ and the affine profiles fixed by Theorem 5.3. If one retains the old notation and the same smooth/KL regularity class, Cauchy uniqueness and Theorem 5.2 give

$$\begin{align}
\widetilde{\mathcal M}_{\rm glob}^- =\widetilde{\mathcal M}_{\rm bif}^-. \tag{5.8a}
\end{align}$$

Equation (5.8a) is a theorem about two descriptions of the same image, not a definition by global existence. The bottom-up membership test is: first check (5.3d), then apply the declared wedge radiation maps.

**Obstruction 5.5 (independent wedge data are not automatically matched data).** An arbitrary pair of incoming homogeneous classes need not lie in the image (5.8), need not admit a Goursat lift, and does not choose its common constant if a lift exists. The bifurcation theorem characterizes the global-compatible sector through matched regional Cauchy variables; it does not turn the unrestricted direct sum of Fulling radiation spaces into global data.

The middle of the causal network is therefore the relation

$$\begin{align}
(F_L^-,F_R^-)\xrightarrow{\,S_L\oplus S_R\,}
([F_L^+],[F_R^+])
\xleftarrow{\ \pi\ }
\widetilde F^+ \xrightarrow{\ G_F\ }\phi_F. \tag{5.9}
\end{align}$$

It is a factorization of global evolution on $\widetilde{\mathcal M}_{\rm bif}^-$ by Theorem 5.3. On the rest of $\widetilde{\mathcal M}_G^-$ it is a causal-completion relation with an explicitly supplied affine/corner lift, not a map from intrinsic wedge classes alone. Since $P$ itself needs two past characteristic components, neither statement is a global Cauchy decomposition from unrestricted $L,R$ radiation alone.

| operation | data | composition law | obstruction |
|---|---|---|---|
| timelike feedback sewing | trace plus regional response | identify the trace; variation gives flux matching | trace domains/port limit |
| local null composition | two finite affine profiles plus common corner | Goursat equation (3.2) | endpoint/corner policy |
| asymptotic causal completion | homogeneous radiation plus an affine/corner lift | wedge scattering relation then $G_F$ | lift, IR norm, sharp trace, matched-image membership |

## 6. Canonical Quantization and B1

### 6.1 Wedge Quantization

On the spectral core, and distributionally on the one-particle completion,

$$\begin{align}
\widehat\phi_R =\int_0^\infty d\omega\, [b_R(\omega)w_\omega^R+b_R^\dagger(\omega)w_\omega^{R*}], \tag{6.1}
\end{align}$$

and likewise for $L$, with

$$\begin{align}
[b_A(\omega),b_B^\dagger(\omega')] =\delta_{AB}\delta(\omega-\omega'). \tag{6.2}
\end{align}$$

The future Hamiltonians and geometric boost are

$$\begin{align}
H_R=\int d\omega\,\omega b_R^\dagger b_R,\qquad H_L=\int d\omega\,\omega b_L^\dagger b_L,\qquad K_\xi=H_R-H_L \tag{6.3}
\end{align}$$

up to vacuum constants.

The sign in $K_\xi$ follows from $\xi=\partial_{\eta_R}=-\partial_{\eta_L}$, while $H_R,H_L$ each generate their wedge's future time. This operator statement uses the Fulling one-particle space $L^2(d\omega)$; a vector has finite boost-energy expectation only on the corresponding $\omega$-weighted form domain.

### 6.2 Radiation CCR, Not a Sharp Horizon Operator

The small-$\rho$ expansion (4.14) gives incoming/outgoing radiation operators first as smearings. On the reduced real test algebra of Theorem 2.3,

$$\begin{align}
\widehat\Phi_A^\pm(F) =\int_{\mathbb R}F(s)\widehat F_A^\pm(s)ds, \qquad [\widehat\Phi_A^\pm(F),\widehat\Phi_B^\pm(G)] =i\delta_{AB}P_N(F,G)\mathbf1. \tag{6.4}
\end{align}$$

Equations (4.15)--(4.17) derive (6.4) directly from $[b_A(\omega),b_B^\dagger(\omega')]=\delta_{AB}\delta(\omega-\omega')$; Theorem 2.3 gives the inverse derivation from null CPS. The scattering multiplier satisfies $c_+=\mathcal R c_-$ and preserves the same CCR. A sharp $\widehat\phi|_{\mathcal H}$ is not asserted.

### 6.3 Transposed Goursat Reconstruction

Work first in a finite rectangle $D_{U,V}$ and let $\chi\in C_c^\infty(D_{U,V}^{\circ})$. Transpose the exact Goursat map:

$$\begin{align}
G_{U,V}^*\chi=:L_\chi=(F_\chi,G_\chi,\alpha_\chi), \tag{6.5}
\end{align}$$

meaning

$$\begin{align}
\int_{D_{U,V}}\chi\,G_{U,V}(f,g)\,d^2x =\int_0^V F_\chi f\,dv+\int_0^U G_\chi g\,du+\alpha_\chi c. \tag{6.6}
\end{align}$$

Absorbing the constant Jacobian $d^2x=\tfrac12du\,dv$ into $\chi$, the explicit transpose is

$$
\begin{aligned}
F_\chi(s)
&=\int_0^U\chi(u,s)du
-\frac m2\int_0^Udu\int_s^Vdv\,
\chi(u,v)\sqrt u\,
\frac{J_1(m\sqrt{u(v-s)})}{\sqrt{v-s}},\\
G_\chi(r)
&=\int_0^V\chi(r,v)dv
-\frac m2\int_0^Vdv\int_r^Udu\,
\chi(u,v)\sqrt v\,
\frac{J_1(m\sqrt{v(u-r)})}{\sqrt{u-r}},\\
\alpha_\chi
&=-\int_0^Udu\int_0^Vdv\,
\chi(u,v)J_0(m\sqrt{uv}).
\end{aligned}
\tag{6.6a}
$$

Thus in (6.6a)--(6.9) $\chi$ is the test density relative to $du\,dv$; a scalar Minkowski test $\chi_{\rm phys}$ is replaced by $\chi_{\rm phys}/2$. The pairing $\Delta_m(\chi,\psi)$ below uses the same density convention.

Integrating the first two lines and using

$$\begin{align}
\frac m2\sqrt u\int_0^v \frac{J_1(m\sqrt{u(v-s)})}{\sqrt{v-s}}ds =1-J_0(m\sqrt{uv}) \tag{6.6b}
\end{align}$$

shows directly that

$$\begin{align}
\int_0^V F_\chi=\int_0^U G_\chi=:I_\chi, \qquad \alpha_\chi=-I_\chi, \tag{6.7}
\end{align}$$

which is exactly Lemma 2.4. The corner term is therefore fixed by the same Bessel identity as the bulk tail; it would be lost by treating the two rays separately.

Define the reconstructed smeared operator by

$$\begin{align}
\widehat\phi_F^{\rm rec}(\chi):=\widehat\Phi_{\partial D}(L_\chi). \tag{6.8}
\end{align}$$

For $L_\psi=(F_\psi,G_\psi,\alpha_\psi)$, equations (2.21)--(2.22) give the commutator without an abstract inversion step:

$$
\begin{aligned}
[\widehat\phi_F^{\rm rec}(\chi),\widehat\phi_F^{\rm rec}(\psi)]
&=iP_{\partial D}(L_\chi,L_\psi)\mathbf1,\\
P_{\partial D}(L_\chi,L_\psi)
&=\int_0^V F_\chi(v)\left[\frac12\int_v^V F_\psi(s)ds\right]dv\\
&\quad+\int_0^U G_\chi(u)\left[\frac12\int_u^U G_\psi(r)dr\right]du
+\frac12\alpha_\chi I_\psi .
\end{aligned}
\tag{6.9}
$$

With $[\widehat\phi(t,x),\widehat\pi(t,y)]=i\delta(x-y)$ and $[\widehat\phi(X),\widehat\phi(Y)]=i\Delta_m(X-Y)$, our Pauli--Jordan convention is

$$\begin{align}
\Delta_m(t,x) &=-\int_{\mathbb R}\frac{dk}{2\pi}\, \frac{\sin(\sqrt{k^2+m^2}\,t)}{\sqrt{k^2+m^2}}e^{ikx}\\
&=-\frac12\operatorname{sgn}(t) J_0(m\sqrt{t^2-x^2})\Theta(t^2-x^2), \qquad \partial_t\Delta_m(0,x)=-\delta(x). \tag{6.10}
\end{align}$$

The symmetric characteristic boundary prescription, conventionally denoted $\Theta(0)=1/2$, gives the same-ray kernel $-\tfrac14\operatorname{sgn}$ in (2.17). This is a boundary value, not a literal pullback of a distribution through a characteristic embedding. The two different past rays are spacelike separated away from the common corner and therefore have zero cross commutator there.

For a bulk test density $\chi$, define the smooth causal-propagator solution

$$\begin{align}
(E_m\chi)(X):=\int_{\mathbb M^{1,1}}\Delta_m(X-Y)\chi(Y)d^2Y. \tag{6.10a}
\end{align}$$

Convolution with a compact smooth test removes the wave-front obstruction: $E_m\chi$ is a smooth homogeneous KG solution, so its restriction $\gamma_{\partial D}E_m\chi$ to the two finite null segments is an ordinary smooth characteristic profile. No pullback of the unsmeared distribution $\Delta_m$ is being taken.

**Lemma 6.1a (Green/symplectic identity with the present sign).** Let $\chi\in C_c^\infty(D_{U,V}^{\circ})$ and let $\varphi$ be any smooth KG solution in the future quadrant. Choose a complete spacelike curve $\Sigma$ to the future of $\operatorname{supp}\chi$. Then

$$\begin{align}
\int_D\chi\varphi\,d^2x =\Omega_\Sigma(E_m\chi,\varphi) =\Omega_{\partial D}^{\rm in} (\gamma_{\partial D}E_m\chi,\gamma_{\partial D}\varphi). \tag{6.10b}
\end{align}$$

**Proof.** Apply Green's second identity separately to the retarded and advanced fundamental solutions and subtract. Causal support makes the trace of $E_m\chi$ vanish on the portions of the two past half-rays outside $[0,U]$ and $[0,V]$, and it removes the auxiliary endpoint fluxes. This leaves the Cauchy flux and proves the first equality. The sign is fixed without convention guessing by a smooth approximation to $\chi(t,x)=\delta(t)f(x)$: in the limit $E_m\chi$ has Cauchy data $(0,-f)$, so (2.4) gives $\Omega_\Sigma(E_m\chi,\varphi)=\int f\varphi(0,x)dx$. Stokes' theorem for the conserved current between the two past null rays and $\Sigma$ proves the second equality. $\square$

**Theorem 6.1 (characteristic CCR reconstruction).** For every $\chi,\psi\in C_c^\infty(D_{U,V}^{\circ})$,

$$\begin{align}
[\widehat\phi_F^{\rm rec}(\chi),\widehat\phi_F^{\rm rec}(\psi)] =i\Delta_m(\chi,\psi)\mathbf1. \tag{6.11}
\end{align}$$

**Proof.** Let $z=(f,g)$ be arbitrary admissible characteristic data and put $\varphi=G_{U,V}z$. By the definition (6.5) of the transpose and Lemma 6.1a,

$$\begin{align}
(G_{U,V}^*\chi)(z) =\int_D\chi\varphi =\Omega_{\partial D}^{\rm in} (\gamma_{\partial D}E_m\chi,z). \tag{6.11a}
\end{align}$$

With the Hamiltonian-vector convention (2.4a), this says exactly that $X_{G^*\chi}=\gamma_{\partial D}E_m\chi$. Therefore

$$\begin{aligned}
P_{\partial D}(G^*\chi,G^*\psi) &=\Omega_{\partial D}^{\rm in} (\gamma E_m\chi,\gamma E_m\psi)\\
&=\Omega_\Sigma(E_m\chi,E_m\psi)\\
&=\int_D\chi(X)(E_m\psi)(X)d^2X\\
&=\int_{D\times D}\chi(X)\Delta_m(X-Y)\psi(Y)d^2X\,d^2Y =\Delta_m(\chi,\psi). \tag{6.11b}
\end{aligned}$$

The second line is Stokes' identity and the third is Lemma 6.1a with $\varphi=E_m\psi$. Substitution into the explicit corner-complete formula (6.9) gives (6.11). The proof is entirely smeared; it uses only the smooth traces of $E_m\chi$ and $E_m\psi$, never a characteristic pullback of $\Delta_m$ itself. $\square$

**Corollary 6.2 (asymptotic characteristic CCR on the zero-corner matched core).** Let $\chi,\psi$ be supported in a common finite rectangle and suppose their transposes satisfy

$$\begin{align}
I_\chi=I_\psi=0. \tag{6.12}
\end{align}$$

On $\widetilde{\mathcal M}_{G,{\rm c}}^-$, condition (6.12) removes the corner functional in (6.7). After the affine-to-logarithmic Jacobian, the two ray smearings have zero integral and therefore belong to the reduced test algebra of Theorem 2.3. Pulling them through the unitary scattering maps of Theorem 4.1 preserves (6.9), so (6.11) holds.

**Corollary 6.3 (corner-complete asymptotic B1 on the bifurcation-matched core).** On $\widetilde{\mathcal M}_{\rm bif}^-$, no condition $I_\chi=0$ is required. The common variable $c$ supplied by (5.3i) represents the corner functional in (6.7), and Lemma 5.2a together with the commuting identity (5.3n) transports the global Minkowski symplectic form to the two horizon profiles, including the nonzero-corner sector. Hence the final theorem identity (6.11) holds for every pair of compact bulk tests whose supports lie in a common finite rectangle.

**Proof.** Quantize the transported symplectic space $\widetilde{\mathcal M}_{\rm bif}^-$, including $c$, rather than the homogeneous radiation direct sum with its constant removed. Lemma 5.2a closes the nonzero-corner boost-energy extension used in Theorem 5.3, which identifies its Goursat evolution with restriction of global evolution. Theorem 6.1 then gives the claimed smeared commutator. $\square$

### 6.4 The Correct Regional Quantum Object and the Partial Gluing Domain

There are three distinct classical levels, and only the third is used in the corner-complete B1 statement.

#### Level I: Ordinary Homogeneous Fulling Radiation

For one wedge, $\mathcal P_A^{\rm rad}$ in (4.12), with graph norm $\int(1+\omega)|b|^2d\omega$, is a real Hilbert space with a bounded, nondegenerate but weak symplectic form. Completing its common core in the unweighted $L^2(d\omega)$ norm gives the standard Fulling one-particle space; the realification of that unweighted completion is strong symplectic. It contains the logarithmic homogeneous radiation class and the scattering multiplier, but it neither contains nor controls

$$\begin{align}
c_A=\operatorname{Tr}_0q_A. \tag{6.13}
\end{align}$$

This is not a defect in Fulling quantization: the latter quantizes the homogeneous boost-radiation sector it was designed to describe. It becomes incomplete only if it is mistaken for a standalone gluing object.

#### Level II: a Corner-Extended Regional Data Object

Let $\operatorname{pr}_A\mathcal C_{\rm bif}^{\rm boost}$ be the one-wedge projection of (5.3k). For a fixed $\kappa$ as in (5.3j), define the regional Cauchy presentation

$$
\widehat{\mathcal Z}_A:=
\left\{(c_A,\bar q_A,p_A;[F_A^-]):
\begin{array}{l}
(q_A,p_A)\in\operatorname{pr}_A\mathcal C_{\rm bif}^{\rm boost},\\
c_A=\operatorname{Tr}_0q_A,\quad q_A=c_A\kappa+\bar q_A,\\
[F_A^-]=\operatorname{Rad}_A^-(q_A,p_A)
\end{array}
\right\}. \tag{6.14}
$$

Changing $\kappa$ only changes the coordinates $(c_A,\bar q_A)$, not $q_A$ or the object. Its two-form is the regional Cauchy form

$$\begin{align}
\Omega_A=\int_0^\infty\frac{d\rho}{\rho}\, \delta q_A\wedge\delta p_A, \tag{6.15}
\end{align}$$

transported to the image (6.14). On the declared Sobolev graph topology this form is nondegenerate but generally weak symplectic; the corresponding radiation presentation is best regarded as an injective relation or dual-pair object, not as a new strong Hilbert phase space obtained by adjoining one coordinate to $\mathcal P_A^{\rm rad}$.

In particular, $c_A$ is not an independent canonical oscillator. A variation of $c_A$ is the profile variation $\delta q_A=\delta c_A\kappa$ and pairs through (6.15) with the distributed momentum functional $\int\kappa\,\delta(p_A/\rho)d\rho$. There is no intrinsic, lift-independent scalar $p_{c_A}$ and no canonical factor $T^*\mathbb R_{c_A}$. If one forgets $(\bar q_A,p_A)$ and merely adjoins $c_A$ to a homogeneous radiation class, the two-form is not determined; declaring the missing pairing to vanish makes $c_A$ a presymplectic null direction. The conjugate information is carried by the rest of the characteristic/Cauchy profile. The two-ray corner-complete matrix (7.4) is the finite-dimensional version of precisely this fact.

#### Level III: the Matched left/right Gluing Domain

For $z_A=(q_A,p_A)$ let
$\widehat z_A:=\iota_Az_A:=(c_A,\bar q_A,p_A;[\operatorname{Rad}_A^-z_A])$
be its presentation in (6.14). Define the incoming gluing domain bottom-up by

$$\begin{align}
\mathcal D_{\rm glue}^-:= \operatorname{im}\left[ \mathcal C_{\rm bif}^{\rm boost} \xrightarrow{\ (\iota_L,\iota_R)\ } \widehat{\mathcal Z}_L\times\widehat{\mathcal Z}_R \right]. \tag{6.16}
\end{align}$$

Thus $c_L=c_R$ is imposed as Sobolev bifurcation compatibility before radiation is transported. On the smooth core, the composition law is the partial characteristic relation

$$\begin{align}
\mathfrak{Rel}_{L,R\rightsquigarrow F} \subset \mathcal D_{\rm glue}^-\times\operatorname{Sol}(F), \qquad ((\widehat z_L,\widehat z_R),\phi_F)\in\mathfrak{Rel}_{L,R\rightsquigarrow F} \Longleftrightarrow
\phi_F=G_F\operatorname{Lift}_{c} \left(S_L[F_L^-],S_R[F_R^-]\right),\qquad \widehat z_A=(c,\bar q_A,p_A;[F_A^-]). \tag{6.17}
\end{align}$$

The relation is the graph of the map in Theorem 5.3 on $\mathcal C_{\rm bif}^{\infty}$. At completion level it is deliberately called a relation because a sharp affine horizon trace/exhaustion theorem has not been proved. It is not defined on the unrestricted direct sum $\mathcal P_L^{\rm rad}\oplus\mathcal P_R^{\rm rad}$.

An intrinsic pair belongs to $\mathcal D_{\rm glue}^-$ exactly when it admits regional Cauchy representatives in $\mathcal C_{\rm bif}^{\rm boost}$ whose $H^1$ traces agree and whose declared wedge radiation maps give the two stated incoming classes. For the sharp smooth relation (6.17), the actual affine horizon representatives must in addition be the wedge traces, their additive constants must equal the common $c$, and their outgoing classes must equal $(S_L\oplus S_R)([F_L^-],[F_R^-])$. This is a regional Cauchy/radiation criterion; it does not quantify over a pre-existing global spacetime solution.

**Proposition 6.4 (canonical global-energy gluing domain).** The domain $\mathcal D_{\rm glue}^-$ and its corner-completed version $\widetilde{\mathcal M}_{\rm bif}^-$ are canonical radiation images of, respectively, $\mathcal C_{\rm bif}^{\rm boost}$ and its smooth core. Through Theorem 5.2 their transported two-forms agree with the global Minkowski Cauchy form, and Theorem 5.3 identifies (6.17) with restriction of global evolution on the smooth core. No claim of uniqueness or minimality among all possible infrared extensions is made.

**Proof.** The equal-trace condition and the isomorphism to global Cauchy data are Theorem 5.2. Injectivity of wedge Cauchy evolution and the KL transform makes (6.16) an image with a transported nondegenerate form. The sharp commuting statement and its symplectic identity are Theorem 5.3. $\square$

The hierarchy is therefore:

| level | retained data | canonical structure | quantized here? |
|---|---|---|---|
| ordinary Fulling theory | homogeneous logarithmic radiation | bounded nondegenerate weak form on graph-norm $\mathcal P_A^{\rm rad}$; strong symplectic only after unweighted $L^2$ completion; standard one-particle/Fock realization | yes, separately, but not as a complete gluing object |
| corner-extended regional object | regional Cauchy profile, its trace $c_A$, and its radiation image | weak symplectic in the Cauchy presentation; only relational/presymplectic if the profile or lift is forgotten | used as classical input, not asserted to factor as an extra oscillator |
| matched gluing domain | two regional objects with $c_L=c_R$ and wedge-scattering/Goursat compatibility | transported nondegenerate global Cauchy form; no strong-symplectic claim in the graph/energy topology; finite regulators are nondegenerate | Corollary 6.3 gives smeared CCR and Theorem 6.5 gives the abstract Weyl algebra |

### 6.5 Algebraic B1: CCR/Weyl Composition on the Partial Gluing Domain

Write $\sigma$ for the real bilinear symplectic form underlying $\Omega$. The global and matched real symplectic spaces are

$$\begin{align}
S_{\mathbb M}:=H_m^1(\mathbb R)\oplus L^2(\mathbb R), \qquad S_{\rm glue}:=\mathcal C_{\rm bif},
\end{align}$$

with $\sigma_{\rm glue}:=\mathsf A_{\rm bif}^*\sigma_{\mathbb M}$. Thus $S_{\rm glue}$ is the nondegenerate bifurcation-compatible subspace of the product regional Cauchy presentation, not the unrestricted product. Its radiation-compatible presentation is $\mathcal D_{\rm glue}^-$ in (6.16); restricting the following construction to $\mathcal C_{\rm bif}^{\rm boost}$ gives the same statement on that Level-III domain.

For a real nondegenerate symplectic space $(S,\sigma)$, let $\mathfrak W(S,\sigma)$ be the abstract Weyl/CCR algebra generated by unitaries $W(f)$ subject only to

$$\begin{align}
W(f)W(g)=e^{-i\sigma(f,g)/2}W(f+g), \qquad W(f)^*=W(-f), \qquad f,g\in S.
\end{align}$$

This packages the smeared field commutators without choosing a vacuum, a positive-frequency complex structure, or a Fock representation.

**Theorem 6.5 (abstract algebraic B1 on the canonical partial gluing domain).** The symplectic isomorphism established in Theorem 5.2,

$$\begin{align}
\operatorname{Res}_{\rm glue}:=\mathsf A_{\rm bif}^{-1}: (S_{\mathbb M},\sigma_{\mathbb M}) \xrightarrow{\ \cong\ } (S_{\rm glue},\sigma_{\rm glue}),
\end{align}$$

induces the canonical Weyl $*$-isomorphism

$$\begin{align}
\alpha_{\rm glue}:\mathfrak W(S_{\mathbb M},\sigma_{\mathbb M}) \xrightarrow{\ \cong\ }
\mathfrak W(S_{\rm glue},\sigma_{\rm glue}), \qquad \alpha_{\rm glue}\!\left(W_{\mathbb M}(f)\right) =W_{\rm glue}(\operatorname{Res}_{\rm glue}f).
\end{align}$$

On $S_{\mathbb M}^{\rm rad}:=\mathsf A_{\rm bif}(\mathcal C_{\rm bif}^{\rm boost})$, the radiation presentation $(\iota_L,\iota_R)$ identifies the target with $\mathcal D_{\rm glue}^-$ and gives the corresponding restricted isomorphism.

**Proof.** Symplecticity gives
$\sigma_{\rm glue}(\operatorname{Res}_{\rm glue}f,
\operatorname{Res}_{\rm glue}g)=\sigma_{\mathbb M}(f,g)$, so the proposed images obey exactly the same Weyl relations. The universal property therefore gives a unital $*$-homomorphism $\alpha_{\rm glue}$. Applying the same construction to $\operatorname{Res}_{\rm glue}^{-1}$ gives a homomorphism in the opposite direction. Their compositions fix every Weyl generator and hence are the identity. The restricted statement follows from Proposition 6.4. $\square$

No embedding into a tensor product of regional Fulling algebras is used in this proof. Such an embedding would require separately declared nondegenerate regional symplectic spaces and an injective symplectic inclusion into their product. The Level-II corner-extended radiation presentation is only weak symplectic while the full Cauchy profile is retained, and can become relational or presymplectic if that profile is forgotten; the note therefore does not assign it an ordinary Weyl factor and then impose operator constraints. The actual algebraic B1 object is the matched nondegenerate domain above.

This is the strongest correct meaning of “quantize first, then compose” proved here: the two regional classical objects and their partial matching relation are defined independently, and quantizing the matched symplectic domain gives canonically the same abstract connected CCR algebra as quantizing the assembled global data. It is not a Hilbert-space tensor-product construction and is not obtained by imposing constraints inside two unrestricted standard Fulling Fock representations.

Algebraically, the B1/B2 split is now exact. B1 is the isomorphism $\alpha_{\rm glue}$. B2 asks for a state on either isomorphic Weyl algebra. A supplied global state transports across $\alpha_{\rm glue}$, but a pair of regional states does not supply that state because it leaves the left--right covariance undetermined. This is precisely compatible with the Fulling-product obstruction and with Proposition 8.1.

**Optional extension 6.6 (unrestricted intrinsic radiation is not the target theorem).** For a general compact bulk test, $I_\chi$ need not vanish, so Theorem 6.1 uses the common-corner functional in Lemma 2.4. One may ask for a larger symplectic IR extension containing arbitrary independent elements of $\mathcal P_L^{\rm rad}\oplus\mathcal P_R^{\rm rad}$ together with continuous affine lifts. The homogeneous Fulling norm does not provide it, and global Minkowski energy theory does not require it: an arbitrary pair need not satisfy the membership criterion following (6.17). Such an extension would be additional structure, not a missing theorem forced to exist. No such extension is proved here.

Thus Theorem 6.1 is a full local characteristic operator/CCR reconstruction theorem. Corollary 6.2 is the asymptotic zero-corner sector for the homogeneous radiation algebra, and Corollary 6.3 is the full-corner result on the bottom-up matched image. None is a full AQFT local-net gluing theorem, a sharp-horizon operator theorem, or a unitary equivalence between complete left/right Fulling Fock spaces and the Minkowski representation. The correct conceptual statement is

$$
\boxed{\begin{gathered}
\text{Causal-complement quantum composition is a partial characteristic relation on a}\\
\text{bifurcation-compatible, corner-completed regional domain; it is not a constraint on}\\
\text{the unrestricted product of two standard Fulling Hilbert/Fock theories.}
\end{gathered}} \tag{6.18}
$$

**Failure mode 6.7.** Any of the following changes the commutator by a homogeneous bisolution:

- using arbitrary local half-horizon data without the scattering condition;
- applying the one-ray sign kernel to a nonzero-mean smearing without its common-corner term;
- identifying energy radiation with a sharp trace without proving that trace.

These are missing domain or canonical data, not failures of the Bessel Goursat kernel.

## 7. Finite Symplectic Characteristic Regulator

This regulator keeps the null-composition idea and retains the common corner rather than silently fixing it. Work on two past segments of equal affine length $\ell$. Put

$$\begin{align}
e_a(s)=\sin\frac{a\pi s}{\ell},\qquad a=1,\ldots,2N+1. \tag{7.1}
\end{align}$$

For any number $M$ of sine modes, their exact null symplectic matrix is

$$
(J_M)_{ab}=\Omega_N(e_a,e_b)
=\begin{cases}
\displaystyle\frac{4ab}{a^2-b^2},&a+b\text{ odd},\\[4pt]
0,&a+b\text{ even}.
\end{cases}
\tag{7.2}
$$

Add the corner lift

$$\begin{align}
k(s)=1-\frac{s}{\ell},\qquad K=(k,k),\qquad d_a:=\Omega_N(e_a,k)=
\begin{cases}
-\dfrac{4}{\pi a},&a\text{ odd},\\[3pt]
0,&a\text{ even}.
\end{cases} \tag{7.3}
\end{align}$$

Use $2N$ sine modes on the left ray, $2N+1$ on the right ray, and one shared coefficient multiplying $K$. The one-mode offset is only a finite-dimensional parity device; exchanging the two rays gives an equivalent regulator. In the order $(z_L,z_R,c)$, the full boundary matrix is

$$
\mathbb J_{\partial,N}^{\rm full}=
\begin{pmatrix}
J_{2N}&0&d_{2N}\\
0&J_{2N+1}&d_{2N+1}\\
-d_{2N}^T&-d_{2N+1}^T&0
\end{pmatrix},
\qquad
\mathbb P_{\partial,N}^{\rm full}
:=-\left(\mathbb J_{\partial,N}^{\rm full}\right)^{-1}.
\tag{7.4}
$$

This $(4N+2)$-dimensional form is nondegenerate. Indeed, $J_{2N}$ is invertible by the even Cauchy-block argument. After symplectically eliminating its coupling to $K$, the remaining odd right modes pair with the $N$ even right modes and $K$. If $o_j=2j-1$ and $e_k=2k$, the resulting $(N+1)\times(N+1)$ pairing block is, up to nonzero row and column factors,

$$\begin{align}
\left(\frac1{o_j^2-e_k^2}\ \middle|\ -\frac1{o_j^2}\right), \qquad j=1,\ldots,N+1,\quad k=1,\ldots,N. \tag{7.5}
\end{align}$$

It is a Cauchy matrix with second-node set $\{e_1^2,\ldots,e_N^2,0\}$ and is invertible. The common corner therefore has a conjugate inside the retained profile data; no external corner oscillator has been added.

Let
$U_{L,a}=G_{U,V}(0,e_a)$ for $a\leq2N$,
$U_{R,a}=G_{U,V}(e_a,0)$ for $a\leq2N+1$, and
$U_c=G_{U,V}(k,k)$, with $G_{U,V}$ given by the exact massive kernel (3.3). Collect these $4N+2$ solutions into the row vector $\mathbf U_N(X)$. For $z\in\mathbb R^{4N+2}$,

$$\begin{align}
\phi_N(X)=\mathbf U_N(X)z. \tag{7.6}
\end{align}$$

For any finite list of bulk smearings $\chi_i$, the characteristic evolution matrix is explicitly

$$\begin{align}
(\mathsf K_N)_{ia}=\int_{D_{U,V}}\chi_i(X)\mathbf U_{N,a}(X)d^2X, \qquad \phi_N(\chi_i)=(\mathsf K_Nz)_i. \tag{7.7}
\end{align}$$

If the $\chi_i$ are chosen as $4N+2$ independent Cauchy-coordinate functionals on a spacelike segment $\Sigma$, write the resulting square matrix as $\mathsf S_N$ and the Cauchy symplectic matrix as $\mathbb J_{\Sigma,N}$. Exact propagation and Stokes' theorem give

$$\begin{align}
\boxed{\mathsf S_N^T\mathbb J_{\Sigma,N}\mathsf S_N =\mathbb J_{\partial,N}^{\rm full}.} \tag{7.8}
\end{align}$$

**Theorem 7.1 (finite B1 closure).** Quantize the boundary coefficients by

$$\begin{align}
[\widehat z_a,\widehat z_b] =i(\mathbb P_{\partial,N}^{\rm full})_{ab}\mathbf1. \tag{7.9}
\end{align}$$

Then characteristic propagation preserves the CCR exactly:

$$\begin{align}
[\widehat\phi_N(\chi_i),\widehat\phi_N(\chi_j)] =i(\mathsf K_N\mathbb P_{\partial,N}^{\rm full}\mathsf K_N^T)_{ij}\mathbf1. \tag{7.10}
\end{align}$$

For a full Cauchy coordinate set,

$$\begin{align}
\mathsf S_N\mathbb P_{\partial,N}^{\rm full}\mathsf S_N^T =-\mathbb J_{\Sigma,N}^{-1}=: \mathbb P_{\Sigma,N}. \tag{7.11}
\end{align}$$

Thus quantize-then-compose and compose-then-quantize give the same finite global commutator. Equivalently,

$$\begin{align}
\Delta_N(X,Y):=\mathbf U_N(X)\mathbb P_{\partial,N}^{\rm full}\mathbf U_N(Y)^T \tag{7.12}
\end{align}$$

is exactly the Pauli--Jordan kernel of this $(4N+2)$-dimensional characteristic Galerkin theory.

**Proof.** Equation (7.8) implies
$-\mathbb J_{\Sigma,N}^{-1}=\mathsf S_N[-(\mathbb J_{\partial,N}^{\rm full})^{-1}]\mathsf S_N^T$. Substitution into (7.9) gives (7.10)--(7.12). No continuum or Fock-space statement enters. $\square$

**Check 7.2 (finite inverse and smeared convergence).** Mathematica verified (7.2)--(7.3) symbolically. It also found
$\operatorname{rank}\mathbb J_{\partial,N}^{\rm full}=4N+2$ for
$N=1,\ldots,6$ (matrix dimensions $6,10,14,18,22,26$); for $N=1$,
$\det\mathbb J_{\partial,1}^{\rm full}=2^{26}/(18225\pi^2)$. On one unit ray take the zero-mean smearings

$$
\begin{aligned}
F(s)&=\partial_s[s^2(1-s)^4],\\
G(s)&=\partial_s[s^3(1-s)^2].
\end{aligned}
\tag{7.13}
$$

The exact sign-kernel bracket (2.15) is $P_N(F,G)=1/3465$. The finite values and absolute errors were

| $2N$ | finite bracket | absolute error |
|---:|---:|---:|
| 2 | $2.7460782662\times10^{-4}$ | $1.39925\times10^{-5}$ |
| 4 | $2.8486352665\times10^{-4}$ | $3.73676\times10^{-6}$ |
| 8 | $2.8817838102\times10^{-4}$ | $4.21908\times10^{-7}$ |
| 12 | $2.8850245561\times10^{-4}$ | $9.78330\times10^{-8}$ |
| 16 | $2.8856707035\times10^{-4}$ | $3.32182\times10^{-8}$ |
| 24 | $2.8859329888\times10^{-4}$ | $6.98972\times10^{-9}$ |

Because the exact $G_{U,V}$ is used in (7.6), Theorem 7.1 propagates the full finite characteristic CCR, including the retained common corner, into $F$ without further error. The table checks convergence only for the displayed smooth one-ray observables; it is not a continuum theorem for point fields.

A separate corner-complete point-kernel diagnostic, at $m=1$, $\ell=6$, and matrix dimensions $6$ through $50$, oscillated around the analytic value $\Delta_m(X,Y)=-0.2559138359$ for $(u_X,v_X)=(2.2,2.6)$ and $(u_Y,v_Y)=(0.7,1.1)$ rather than converging monotonically. Point evaluation is outside the declared smeared test topology, so this is recorded as a Gibbs-type warning and is not used as evidence for the continuum limit.

**Open continuum step.** One must prove convergence of the symplectic Galerkin projectors on the corner-compatible null test algebra, continuity of $G_{U,V}$ in the chosen characteristic Sobolev topology, convergence of (7.12) after bulk smearing to $\Delta_m$, and compatibility with exhaustion of $F$. The executed finite checks do not prove those statements or any continuum unitary equivalence.

## 8. B1 Versus B2

B1 asks for the representation-independent operator relations. It is now the canonical Weyl $*$-isomorphism of Theorem 6.5, equivalently the smeared characteristic commutator theorem on the matched image. B2 asks for a state/representation of that algebra and needs the symmetric two-point function in addition to the antisymmetric CCR form.

For a Gaussian state, write

$$
C=
\begin{pmatrix}
C_L&X\\
X^\dagger&C_R
\end{pmatrix}.
\tag{8.1}
$$

Regional states determine $C_L,C_R$, but not the cross block $X$.

**Proposition 8.1 (B2 underdetermination).** Independently quantized $L,R$, even with correct dynamics and CCR, do not determine a global quasifree state.

**Proof.** The commutator fixes the antisymmetric covariance, while the regional marginals fix only the diagonal symmetric blocks. Positivity constrains $X$ but generally does not select it. $\square$

An explicit two-mode example makes the nonuniqueness finite-dimensional. In the order $(q_L,p_L,q_R,p_R)$, let

$$
V_c=\begin{pmatrix}
\nu I_2&\operatorname{diag}(c,-c)\\
\operatorname{diag}(c,-c)&\nu I_2
\end{pmatrix},
\qquad \nu>\frac12.
\tag{8.2}
$$

Both regional marginals are $\nu I_2$ for every $c$. The two symplectic eigenvalues are $\sqrt{\nu^2-c^2}$, so

$$\begin{align}
|c|\leq\sqrt{\nu^2-\frac14} \tag{8.3}
\end{align}$$

gives a continuous family of positive Gaussian covariances with the same marginals and different cross blocks. The special case $\nu=1/2$ has a pure marginal and forces $c=0$; this does not contradict the generic mixed-marginal statement.

In the field theory the same argument is made on the declared real test/one-particle space: $C_L,C_R,X$ must define continuous covariance forms and the full form must obey $V+i\Omega/2\geq0$. Those requirements bound the admissible operator $X$ but, for mixed regional covariances, do not generally make it unique.

The naive product Fulling state has $X=0$ and is not the Minkowski vacuum. The Minkowski vacuum restricts to boost-KMS wedge states and has nonzero left-right correlations; Unruh modes encode them through two-mode squeezing with factor $e^{-\pi\omega}$. KMS/analyticity or an equivalent global covariance is additional B2 data, not an output of the classical Goursat kernel.

$$\begin{align}
\boxed{\begin{gathered}
\text{B1 closes locally and on the corner-completed bifurcation image, including its abstract Weyl algebra;}\\
\text{unrestricted intrinsic radiation is outside the canonical gluing domain, and naive B2 fails.}
\end{gathered}}
\tag{8.4}
\end{align}$$

No continuum unitary equivalence with a sharp product Fulling representation is claimed.

## 9. Verification and Literature Audit

### 9.1 Executed Checks

The first-iteration Volterra, massless-limit, and Pauli--Jordan checks were retained. Fresh second-iteration Mathematica calculations gave:

1. both Rindler pullback metrics equal $\operatorname{diag}(-\rho^2,1)$, with $\partial_{\eta_R}=\xi$ and $\partial_{\eta_L}=-\xi$ exactly;
2. $(-\partial_r^2+e^{2r}-\omega^2)K_{i\omega}(e^r)=0$ exactly;
3. $\Gamma(i\omega)\Gamma(-i\omega)=\pi/(\omega\sinh\pi\omega)$, $|c_\pm|^2=1/(4\pi\omega)$, $|\mathcal R|^2=1$, and $\mathcal R(0)=-1$ exactly under $\omega>0$;
4. the tortoise-origin identity $\mathcal R_m=e^{-2i\omega\log m}\mathcal R$ exactly for $m,\omega>0$;
5. $(\partial_u\partial_v+m^2/4)J_0(m\sqrt{uv})=0$ and the constant-tail integral $1-J_0(m\sqrt{uv})$ exactly;
6. the null Galerkin formulas (7.2)--(7.3) symbolically, all sine-block entries against direct integration through $a,b\leq8$, and full rank of the corner-complete matrices (7.4) for dimensions $6,10,14,18,22,26$;
7. the finite smeared brackets in Check 7.2 through $2N=24$, plus the explicitly nonmonotone point-kernel diagnostic through dimension $50$;
8. $-(\Omega_4V_c)^2=(\nu^2-c^2)I_4$, proving the symplectic eigenvalues used in (8.3).
9. for Lemma 5.2a, the spectral boost formulas preserve $\omega^2|\widetilde q|^2+|\widetilde p|^2$ and give $b_\eta=e^{-i\omega\eta}b_0$ exactly; a unit-width polynomial transition rescaled to $[-2R,-R]$ gives cutoff-derivative norm $6/(5R)$, while $\int_{-\infty}^{-R}e^{2r}dr=e^{-2R}/2$, confirming the two explicit decay scales used in the long-cutoff estimate.

The sign/orientation audit was also done directly from the definitions: (1.2)--(1.4) give $\xi=\partial_{\eta_R}=-\partial_{\eta_L}$; the incoming orientation gives (2.5); the Fourier representation of the canonical commutator gives $\partial_t\Delta_m(0,x)=-\delta(x)$ and therefore the minus sign in (6.10). These checks verify displayed formulas. They do not prove a sharp horizon trace or the continuum limit of the finite regulator.

### 9.2 External Facts and Their Scope

The unitary normalization in (4.5)--(4.7) is the Plancherel form of the [NIST DLMF Kontorovich--Lebedev transform](https://dlmf.nist.gov/10.43#v), whose direct and inverse formulas are 10.43.30--10.43.31. The two small-argument powers use the [modified-Bessel connection formulas](https://dlmf.nist.gov/10.27) and [imaginary-order asymptotics](https://dlmf.nist.gov/10.45). These inputs establish the spectral transform used in Theorem 4.1; they do not establish a pointwise horizon trace on the homogeneous energy completion.

The Weyl relations and their representation-independent symplectic role in Section 6.5 are the standard construction reviewed in Section 1.2 of [Baez, Segal, and Zhou, *Introduction to Algebraic and Constructive Quantum Field Theory*](https://math.ucr.edu/home/baez/bsz_new.pdf). The isomorphism in Theorem 6.5 is proved directly from the universal relations; no theorem about Fock implementability is imported.

Light-front literature is used only to corroborate the need to control constrained zero modes, not to import interacting conclusions: [Srivastava, Constraints and Hamiltonian in Light-Front Quantized Field Theory](https://arxiv.org/abs/hep-th/9308046) and [Yamawaki, Zero-Mode Problem on the Light Front](https://arxiv.org/abs/hep-th/9802037).

The Unruh/KMS statement in Section 8 supplies possible B2 data only. No modular-theory claim is needed here.

## 10. AdS--Rindler Bridge

Reflecting conditions at conformal infinity change the status of the outer radial end. In flat Rindler space, the self-adjoint realization and decay at $\rho\to\infty$ already select $K_{i\omega}$ from the two local radial solutions; Theorem 4.1 therefore leaves no unresolved outer-channel multiplicity in this toy model. In AdS--Rindler, a declared reflecting Dirichlet, Neumann, or admissible Robin condition is instead part of the physical variational problem. Whether it selects a stable one-channel standing-wave/scattering solution must be proved case by case for the chosen mass, transverse channel, and boundary domain.

This does **not** make one half-horizon profile local Goursat data. It only makes the outer completion physical rather than auxiliary. Threshold behavior, logarithmic-versus-affine horizon data, the common corner, and the distinction between B1 and B2 remain.

The companion note ads-rindler scalar.md hardens the fixed-channel theorem, assembles the full Helgason/radial direct integral, proves the full-field bifurcation matching theorem with its local $H^{1/2}(\mathcal B)$ and global weighted trace topologies, and proves local full-field characteristic composition and smeared B1 without distributional fixed-channel modes. Characteristic composition is local to $UV<1$; beyond the $UV=1$ fiber caustic the note uses regular global Cauchy evolution, with no matching datum on the caustic, to prove global matched-image B1 and the abstract Weyl-algebra isomorphism. The remaining double-null Dirichlet trace problem asks the stronger, optional question whether every independently prescribed compatible horizon datum belongs to the global image; it is not a blocker for matched-domain causal-complement composition.

What disappears conceptually is the auxiliary choice of a flat-space decay completion: the AdS outer condition is physical boundary data. The need for bifurcation matching and the distinction between the canonical global-compatible image and unrestricted products do not disappear.

## 11. Final Status and Open Problems

### (A) Fully Proved Local Result

For two finite intersecting affine null segments with $C^1$ data and a common corner, the Volterra/Bessel formula gives a unique massive KG solution on every compact diamond. Stokes' theorem proves symplectic composition on the declared tangent space, and Lemma 2.4 gives the exact Poisson inverse on its corner-compatible Hamiltonian test algebra. This is Theorems 3.1 and 5.1.

### (B) Proved Asymptotic Rindler Result

The KL transform diagonalizes $A=-\partial_r^2+e^{2r}$ with the normalization (4.5)--(4.8). On $\mathcal P_R^{\rm rad}=L^2(d\omega)\cap L^2(\omega d\omega)$, incoming radiation determines the unique decaying solution, outgoing radiation differs by (4.18), and scattering is bijective, unitary, and symplectic. No hard infrared cutoff is imposed; the multiplier has the continuous threshold limit $\mathcal R(0)=-1$. On the larger energy-only completion, only the energy-isometric statement is claimed. Theorem 5.2 identifies matched half-line Cauchy data canonically with the global Minkowski energy space. Lemma 5.2a proves that the nonzero bifurcation component $c\kappa$, although outside tortoise $L^2(dr)$, lies in the homogeneous finite-boost-energy completion and evolves by the extended KL spectral group. Theorem 5.3 therefore proves on the smooth matched core that assemble-then-evolve and wedge-scatter-then-Goursat-complete commute, with $c$ supplying the affine corner. Theorem 5.4 separately retains causal completion for externally lifted radiation data.

### (C) B1 and Regional-Object Status

At every corner-complete finite characteristic Galerkin regulator, B1 is exactly closed: (7.8)--(7.12) prove CCR preservation and equality with the finite global commutator. In the continuum, Theorem 6.1 proves the decisive identity $P_{\partial D}(G^*\chi,G^*\psi)=\Delta_m(\chi,\psi)$ entirely at the smeared level by Green's identity and the causal propagator. Corollary 6.2 proves the homogeneous zero-corner sector. The horizon-based, corner-complete Corollary 6.3 uses Lemma 5.2a through Theorem 5.3 and therefore now includes the nonzero-corner sector without a domain gap. By contrast, the abstract algebraic Weyl Theorem 6.5 depends only on the Sobolev bifurcation isomorphism of Theorem 5.2 and was unaffected by this boost-energy extension. Section 6.4 identifies the independently quantized Fulling theory as Level I, the one-wedge corner-extended weak-symplectic relation as Level II, and the matched partial gluing domain as Level III. Theorem 6.5 upgrades that matched symplectic identification to a canonical isomorphism of abstract Weyl algebras. It does not manufacture Level III from an unrestricted product of Level-I Fock spaces. These are operator/CCR results, not local-net or Fock-factorization theorems.

### (D) Remaining Conditional or Open Statements

The following are not proved:

- a pointwise sharp affine-horizon field for generic Fulling finite-energy data;
- a continuous nondegenerate symplectic form on the energy-only completion without the additional $L^2(d\omega)$ infrared condition or an alternative dual-pair formulation;
- identification of the abstract energy-completion radiation class with a strong geometric $r\to-\infty$ limit for every energy datum;
- a continuous sharp-trace/exhaustion extension of Theorem 5.3 from the smooth core to every datum in $\mathcal C_{\rm bif}^{\rm boost}$;
- an optional symplectic IR extension carrying affine lifts for arbitrary independent Fulling radiation data outside the canonical bifurcation image; no theorem requires such an extension to exist;
- convergence of the finite matrices (7.12) to $\Delta_m$ for all compact bulk smearings and under exhaustion to the full wedge;
- continuum unitary equivalence with a sharp regional product-Fock representation.

### (E) B2 Status

Regional marginals determine $C_L,C_R$ but not the admissible cross block $X$. Positivity and the CCR constrain $X$; the explicit family (8.2)--(8.3) shows that they do not generally fix it. Minkowski-vacuum/Unruh KMS analyticity is extra B2 data.

### (F) Closure Statement

The Minkowski scalar causal-complement mechanism is closed at the classical, symplectic, smeared-CCR, and abstract algebraic B1 levels on the canonical partial gluing domain. No unrestricted Fulling-product/Fock gluing is claimed; B2 requires extra state data. The remaining items in (D) are optional function-space, sharp-trace, regulator-convergence, or representation-comparison refinements; none changes this closure statement. Equivalently,

$$\begin{align}
\boxed{\begin{gathered}
\text{B1 is closed locally, at finite regulator, and algebraically on the corner-completed matched image;}\\
\text{composition is a partial relation, unrestricted Fulling-product/Fock gluing is not claimed, and B2 requires extra state data.}
\end{gathered}}
\end{align}$$

**Optional regulator diagnostic.** If a chosen Galerkin sequence fails to converge to (6.10) after the required corner/zero sector is retained, that sequence is not a valid continuum regulator. Such a failure would not overturn the regulator-independent smeared identities in Theorem 6.1 and Corollary 6.3.
