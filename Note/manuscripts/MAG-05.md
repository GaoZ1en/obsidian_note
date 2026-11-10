# Spinor Variables and the Quantized Compact Link

**MAG-05 — DRAFT; bounded review recorded.**

Two canonical complex spinors can encode a nonzero-flux $SU(2)$ cotangent link after an area-matching reduction. Quantizing them as bosonic oscillators and imposing number matching gives an explicit Hilbert space unitarily equivalent to the standard compact-link space. We construct that map, including its target-dual phase, and obtain actual flux and holonomy operators. A chosen rotor Hamiltonian then gives coherent and group kernels with exact gluing and measures. These are controlled spinorial kinematics and a specified amplitude model, not quantization of an arbitrary metric–affine connection.

The physical spacetime convention is four-dimensional $(-,+,+,+)$. To embed the compact model in tetrad gravity, assume an oriented, time-oriented spin spacetime, a spacelike foliation and the chosen time gauge of [EC-07](<EC-07.md>). A global Lorentz spin lift on spacetime M requires $w_2(TM)=0$ and a choice of lift; it is not supplied by these finite coordinates. The calculation can alternatively be read as an independent finite link model.

Keep $c=1$ and explicit $\hbar$, and set

$$\begin{align}
\gamma\in\mathbb R\setminus\{0\},\qquad \alpha=\kappa\gamma,\quad\kappa=8\pi G>0,\quad \ell_P^2=G\hbar,\qquad a_0=|\alpha|\hbar=8\pi|\gamma|\ell_P^2.
\end{align}$$

Thus alpha times an angular momentum has area units. Our endpoint/Poisson convention is the [cotangent-link convention of AST-20](<AST-20.md#L37-L100>): for $\tau_i=-i\sigma_i/2$, the link transforms as $h\mapsto g_t h g_s^{-1}$, and its source and target fluxes are outward-oriented vectors.

## 1. Two Canonical Spinors and Their Matching Constraint

Treat the oriented link ends as boundary data or as ends within a larger graph; no vacuum Gauss projection at two isolated one-valent vertices is imposed. Let $z,w\in\mathbb C^2$ have commuting components, with the real slice identifying bars with complex conjugation. The Pauli convention has $\epsilon_{123}=+1$. These are auxiliary phase-space coordinates, not physical fermion fields. Choose

$$\begin{align}
\Theta_{\rm sp}=\frac i2 (\bar z_A\,dz_A-z_A\,d\bar z_A +\bar w_A\,dw_A-w_A\,d\bar w_A), \qquad\omega_{\rm sp}=-d\Theta_{\rm sp}.
\end{align}$$

For example $z_A=(q_A+ip_A)/\sqrt2$ makes its contribution $p_A dq_A-d(q_Ap_A)/2$, so $\{q_A,p_B\}=\delta_{AB}$ and

$$\begin{align}
\{z_A,\bar z_B\}=-i\delta_{AB},\qquad \{w_A,\bar w_B\}=-i\delta_{AB},\qquad \{z_A,w_B\}=\{z_A,\bar w_B\}=0.
\end{align}$$

The components have units of square-root action. Define the real norms and rotation moment maps

$$\begin{align}
r_s=z^\dagger z,\quad r_t=w^\dagger w, \qquad X_s^i=\frac12z^\dagger\sigma_i z,\quad X_t^i=\frac12w^\dagger\sigma_i w, \qquad \mathbf N_s=\alpha\mathbf X_s,\quad \mathbf N_t=\alpha\mathbf X_t.
\end{align}$$

Pauli completeness gives $\mathbf X_s^2=r_s^2/4$, and similarly at the target. The Poisson brackets are $\{X_s^i,X_s^j\}=\epsilon^{ij}{}_kX_s^k$, the same at the target, and zero between ends.

Use the first-class constraint

$$\begin{align}
\mathcal C=r_s-r_t=0.
\end{align}$$

Its Hamiltonian flow is $z\mapsto e^{-i\varphi}z$, $w\mapsto e^{i\varphi}w$, with period $2\pi$. On the level set $r_s=r_t=r>0$ this action is free and the moment map is regular. Its constraint plus gauge quotient removes two of the original eight real dimensions. We work on this regular six-dimensional stratum first.

## 2. The Actual Holonomy and the Missing Zero Section

Fix the antilinear ket map by components:

$$
|z]:=\mathfrak j z=
 \begin{pmatrix}-\bar z_1\\\bar z_0\end{pmatrix},
\qquad
[z|=(-z_1,z_0),\qquad
\mathfrak j^2=-I,
\qquad
K=\begin{pmatrix}0&-1\\1&0\end{pmatrix}.
$$

Here $|z]=K\bar z$. The explicit matrix fixes the sign; no unprinted epsilon-index convention is being used. It obeys $\langle z|z]=0$, $[z|z]=r_s$ and $\mathfrak j(gz)=g\mathfrak jz$ for $g\in SU(2)$.

For positive norms define

$$\begin{align}
F(z)=\frac1{\sqrt{r_s}}\bigl(|z\rangle,|z]\bigr)\in SU(2), \qquad h=F(w)K F(z)^\dagger =\frac{|w]\langle z|-|w\rangle[z|}{\sqrt{r_sr_t}}.
\end{align}$$

The orthogonal normalized columns prove $h^\dagger h=I$ and $\det h=1$. Each numerator term is invariant under the matching U(1). On its zero level,

$$\begin{align}
h|z\rangle=|w],\qquad h|z]=-\,|w\rangle, \qquad \mathbf N_t\cdot\boldsymbol\sigma =-h(\mathbf N_s\cdot\boldsymbol\sigma)h^{-1}.
\end{align}$$

An independent endpoint rotation gives $h\mapsto g_t h g_s^{-1}$. The minus sign in the flux relation is the outward orientation, not an optional removal of the target dual.

The map is invertible up to the matching phase when $\mathbf N_s\ne0$. Given h and this source vector, choose a spinor satisfying $\mathbf X_s=\mathbf N_s/\alpha$, with $r=2|\mathbf N_s|/|\alpha|$, and set $w=-\mathfrak j(hz)$. A choice of z exists because $zz^\dagger=rI/2+\mathbf X_s\cdot\boldsymbol\sigma$ is positive rank one. Its freedom is one phase; w acquires the opposite phase. No globally smooth choice of a Hopf representative is needed for the quotient.

At $r=0$, matching forces $z=w=0$: the spinor quotient contains only one zero point. In contrast the zero section of $T^*SU(2)$ contains every h with zero flux. The denominator defining h is then undefined. Thus the construction identifies the **regular nonzero-flux stratum**, not the full classical quotient with the full cotangent bundle. Retaining a quantum vacuum later will not repair this lost classical family of holonomies.

## 3. Reduced Symplectic Form and Endpoint Signs

Write $h^{-1}dh=\tau_i\lambda^i$. On the matching surface the exact one-form identity is

$$\begin{align}
\Theta_{\rm sp}\big|_{\mathcal C=0} =-\frac1\alpha N_s^i\lambda^i.
\end{align}$$

There is no discarded endpoint derivative in this equality. To see the coefficient, put $z=\sqrt r\,u_s$, $w=\sqrt r\,u_t$ with unit spinors, and write $F_s=F(z)$, $F_t=F(w)$. Since $K\sigma_3K^\dagger=-\sigma_3$ and $\operatorname{tr}(\sigma_3F^\dagger dF)=2u^\dagger du$, substitution in $h=F_tKF_s^\dagger$ gives

$$\begin{align}
-N_s^i\lambda^i/\alpha =ir(u_s^\dagger du_s+u_t^\dagger du_t) =\Theta_{\rm sp}\big|_{\mathcal C=0}.
\end{align}$$

The form annihilates the matching-phase direction and is invariant under it, so it descends to the regular quotient. The regularity/free-action conditions above make the reduced two-form symplectic. It is precisely the AST-20 potential with the same $\omega=-d\Theta$ convention.

Equivalently, direct Poisson calculation gives on this reduced stratum

$$\begin{aligned}
\{N_s^i,N_s^j\}&=\alpha\epsilon^{ij}{}_kN_s^k, &\{N_s^i,h\}&=\alpha h\tau_i,\\
\{N_t^i,N_t^j\}&=\alpha\epsilon^{ij}{}_kN_t^k, &\{N_t^i,h\}&=-\alpha\tau_i h,\\
\{N_s^i,N_t^j\}&=0, &\{h_{AB},h_{CD}\}&=0.
\end{aligned}$$

All entries are U(1)-invariant extensions, so their on-level brackets define the reduced brackets. The final commutativity assertion uses matching: away from that level, the holonomy brackets need not vanish. For example $z=(\sqrt{s_*},0)$, $w=(2\sqrt{s_*},0)$, with a positive action scale $s_*$, gives $\{h_{00},h_{11}\}=-3i/(4s_*)$. Endpoint transformation signs are therefore obtained from the actual reduction, not guessed from a matrix parametrization alone.

## 4. Bargmann Quantization and Number Matching

Use the holomorphic Bargmann space at each end, with dimensionless variables $\zeta=(\zeta_0,\zeta_1)$ and Gaussian measure

$$\begin{align}
d\mu_B(\zeta)=\pi^{-2}e^{-|\zeta|^2}d^4\zeta.
\end{align}$$

The operators $a_A^\dagger=\zeta_A$ and $a_A=\partial_{\zeta_A}$ satisfy $[a_A,a_B^\dagger]=\delta_{AB}$ on polynomials. Quantization of the original coordinates is $\widehat z_A=\sqrt\hbar\,a_A$, $\widehat{\bar z}_A=\sqrt\hbar\,a_A^\dagger$, not a declaration that the holomorphic variable is simultaneously an annihilation operator. Use $b_A,b_A^\dagger$ at the target. These oscillators are bosonic auxiliary variables, not CAR operators for physical spin matter.

The number operators are $n_s=a_A^\dagger a_A$, $n_t=b_A^\dagger b_A$. Their self-adjoint diagonal realizations have the usual number-weighted square-summability domains. Normal ordering gives $\widehat r_s=\hbar n_s$ and the analogous target expression. Impose

$$\begin{align}
\widehat{\mathcal C}=\hbar(n_s-n_t), \qquad P_{\rm m}=\frac1{2\pi}\int_0^{2\pi} e^{-i\varphi(n_s-n_t)}d\varphi.
\end{align}$$

The constraint is a self-adjoint real diagonal operator on its maximal difference-number domain. Integer eigenvalues make the bounded group average exactly its zero-eigenspace projector. This compact U(1) projection is not a gauge fixing of the noncompact projective shift of an affine connection.

For $j=n/2$ define the normalized monomial

$$\begin{align}
e_{jm}(\zeta)= \frac{\zeta_0^{j+m}\zeta_1^{j-m}}
 {\sqrt{(j+m)!(j-m)!}},\qquad -j\le m\le j.
\end{align}$$

Angular integration kills unequal monomials; the radial Gaussian moment is $n!$. Thus these monomials are orthonormal. Each fixed total number n carries $V_j=\operatorname{Sym}^n\mathbb C^2$, and matching gives

$$\begin{align}
\mathcal H_{\rm m}=\ker\widehat{\mathcal C} =\widehat{\bigoplus}_{n=0}^\infty V_{n/2}^{(s)}\otimes V_{n/2}^{(t)}, \qquad E^j_{m_sm_t}=e_{jm_s}(\zeta)e_{jm_t}(\widetilde\zeta).
\end{align}$$

The fixed-n dimension is $(n+1)^2$. Single annihilators belong to the unreduced Fock space and change the number difference; only matching-preserving combinations act on this kernel. An unbounded bosonic occupation produces all half-integer j; a two-component coordinate is not a restriction of the link spectrum to one fundamental representation.

Define dimensionless Schwinger generators $J_s^i=a^\dagger\sigma_i a/2$ and $J_t^i=b^\dagger\sigma_i b/2$. Then

$$\begin{align}
\widehat{\mathbf N}_s=\alpha\hbar\mathbf J_s, \qquad\widehat{\mathbf N}_t=\alpha\hbar\mathbf J_t, \qquad \mathbf J_s^2=\frac n2\left(\frac n2+1\right) =\mathbf J_t^2\quad\text{on }\mathcal H_{\rm m}.
\end{align}$$

Pauli completeness and $aa^\dagger=a^\dagger a+1$ give explicitly $4\mathbf J^2=2n(n+1)-n^2=n(n+2)$. Thus quantizing the classical norm square is not the replacement $r^2/4\mapsto\hbar^2n^2/4$: it contains the ordering correction $\hbar^2n/2$. The puncture-area prescription is

$$\begin{align}
\widehat A=a_0\sqrt{\frac n2\left(\frac n2+1\right)}.
\end{align}$$

Every generator is the direct sum of finite Hermitian blocks; its maximal domain is $\sum_n\|J^i\psi_n\|^2<\infty$. The finite polynomial span is a common invariant core. For the Casimir, use the domain weighted by $[n(n+2)/4]^2$; for area use the weight $n(n+2)/4$. The formulas specify kinematical operators, not physical spectra after gravitational constraints.

## 5. A Normalized Peter–Weyl Map, Including the Target Dual

Let $dh$ be normalized Haar measure. Fix $D^{1/2}(h)=h$ and the standard magnetic basis, with Hermitian $J_3$ eigenvalue m. The normalized group basis is

$$\begin{align}
\Phi^j_{mn}(h)=\sqrt{d_j}\,D^j_{mn}(h),\qquad d_j=2j+1.
\end{align}$$

Schur orthogonality has factor $1/d_j$ for the unnormalized matrix elements, so the displayed Phi basis is orthonormal and complete in $L^2(SU(2),dh)$. The explicit unitary map is

$$\begin{align}
\mathcal U E^j_{m_sm_t} =(-1)^{j-m_t}\Phi^j_{-m_t,m_s}.
\end{align}$$

The exponent is an integer. This is a norm-preserving permutation/phase in each complete block, so it extends to all of $\mathcal H_{\rm m}$. No class-function restriction has been imposed: the multiplicity here is $d_j^2$, not one character per j.

The target phase implements the invariant tensor

$$\begin{align}
(\varepsilon_j)_{m\mu}=(-1)^{j-\mu}\delta_{m,-\mu}, \qquad -J_i^{\mathsf T}\varepsilon_j=\varepsilon_jJ_i.
\end{align}$$

Indeed the endpoint pullback on group wavefunctions is $f(h)\mapsto f(g_t^{-1}hg_s)$. The source column carries $D^j(g_s)$, whereas the target row carries its conjugate/dual representation. The written epsilon converts the target fundamental Schwinger block to that dual; dropping it would give wrong endpoint generators.

On smooth finite Peter–Weyl sums set

$$\begin{align}
\mathscr D_s^if(h)=\left.\frac{d}{du}f(he^{u\tau_i})\right|_0, \qquad \mathscr D_t^if(h)=\left.\frac{d}{du}f(e^{u\tau_i}h)\right|_0.
\end{align}$$

The mapped fluxes are $i\alpha\hbar\mathscr D_s^i$ and $-i\alpha\hbar\mathscr D_t^i$. In row/column representation labels they are respectively the source J and target $-J^{\mathsf T}$, with the tensor factors exchanged by the map. These are the quantizations of Section 3, including both insertion signs. Self-adjoint closures are the same block operators already specified.

The n=0 oscillator vacuum maps to the constant Haar-normalized function. It is a perfectly good quantum state spread over h, not a collection of distinct classical zero-flux holonomies. This selected quantization of spinors with matching is not a proof that quantization commutes with every singular classical reduction.

## 6. The Actual Holonomy Operator and Cutoff Corrections

Define each entry without a singular norm inverse:

$$\begin{align}
\widehat h_{AB}=\mathcal U^{-1}M_{h_{AB}}\mathcal U.
\end{align}$$

It is bounded, with norm at most one, on the whole matching Hilbert space. Its adjoint and products are determined by multiplication on the group. Thus the entries commute, $\widehat h^\dagger\widehat h=I$ as a two-by-two operator matrix, and its determinant is I.

There is also an explicit spinor-oscillator formula. Let $n=n_s=n_t$ on the matching space and $F(n)=(n+1)^{-1/2}$. On its finite polynomial core,

$$\begin{align}
\boxed{\displaystyle \widehat h_{AB}=F(n)\left[ (K b^\dagger)_A a_B^\dagger -b_A(K a)_B\right]F(n).}
\end{align}$$

A creation pair changes both endpoint numbers from n to n+1, so its coefficient is the ordinary occupation square root divided by $\sqrt{(n+1)(n+2)}$. An annihilation pair has denominator $\sqrt{n(n+1)}$ for n>0 and kills the vacuum. These coefficients follow by multiplying the symmetric-power matrix polynomials by $h_{AB}$ and comparing normalized neighboring blocks. They give exactly the pullback above, rather than a new choice of a classical denominator ordering.

For example,

$$\begin{align}
\widehat h_{0B}|0\rangle=-\frac{a_B^\dagger b_1^\dagger}{\sqrt2}|0\rangle, \qquad \widehat h_{1B}|0\rangle=\frac{a_B^\dagger b_0^\dagger}{\sqrt2}|0\rangle.
\end{align}$$

The positive number in F makes this expression well defined at n=0. Its bounded closure is fixed by the group construction. On the common core, the commutators are $[\widehat N_s^i,\widehat h]=i\hbar\alpha\widehat h\tau_i$ and $[\widehat N_t^i,\widehat h]=-i\hbar\alpha\tau_i\widehat h$. No undeclared ordering of the classical transport relation is needed.

Different finite cutoffs change different algebras. For one unreduced oscillator truncated at occupation L,

$$\begin{align}
[a_L,a_L^\dagger]=I_{L+1}-(L+1)|L\rangle\langle L|.
\end{align}$$

The top correction follows by acting on each number state; its trace is zero, as any finite matrix commutator must be. Exact CCR therefore cannot hold for those finite matrices. Number matching is not this truncation.

Alternatively compress the matching link to $n\le N$. The Schwinger rotations preserve each n block and retain their exact SU(2) algebra, but holonomy multiplication changes n. Products of compressed entries omit excursions through N+1, so their matrix unitarity need not survive. Already N=0 gives zero compressed holonomy entries, not a unitary matrix. Below an unaffected cutoff boundary the exact products are recovered. A finite spin computation must retain these corrections, not treat its regulator as the full link algebra.

## 7. Coherent and Group Kernels with an Actual Gluing Measure

A concrete amplitude requires another choice. Choose the nonnegative compact rotor Hamiltonian $H_*=E_*\mathbf J^2$, $E_*>0$, on the spectral Casimir domain above. Its real-time evolution is unitary. For an auxiliary Euclidean duration $\beta\hbar>0$, write $t=\beta E_*$ and use $e^{-t\mathbf J^2}$. This is a chosen one-dimensional rotor model, not a four-dimensional gravity action or an intrinsic temperature of a graph.

The Gaussian Bargmann resolution gives the matching projector and damped kernel explicitly. Put $x=(\zeta,\widetilde\zeta)$, $y=(\eta,\widetilde\eta)$ and use the product measure $d\mu_B(y)=d\mu_B(\eta)d\mu_B(\widetilde\eta)$. Then

$$\begin{align}
\mathcal K_t(x,\bar y)=\sum_{n=0}^\infty e^{-t n(n+2)/4} \frac{[(\zeta\cdot\bar\eta) (\widetilde\zeta\cdot\overline{\widetilde\eta})]^n}{(n!)^2}.
\end{align}$$

At t=0 it is the reproducing kernel of $P_{\rm m}$. To obtain its coefficient, sum the normalized monomials of fixed n at each end: the binomial theorem gives $(\zeta\cdot\bar\eta)^n/n!$ at the source and the corresponding target factor. Gaussian orthogonality now performs the gluing:

$$\begin{align}
\int d\mu_B(y)\,\mathcal K_t(x,\bar y)\mathcal K_s(y,\bar z) =\mathcal K_{t+s}(x,\bar z).
\end{align}$$

The same construction in the group representation is

$$\begin{align}
K_t(h_2,h_1)=K_t(h_2h_1^{-1}),\qquad K_t(g)=\sum_{j=0,1/2,\ldots}d_j e^{-t j(j+1)}\chi_j(g).
\end{align}$$

The factor d comes from summing the normalized matrix elements, not from treating a character as $d^2$ separate states. Schur orthogonality gives the actual Haar composition law

$$\begin{align}
\int_{SU(2)}dk\,K_t(h_2,k)K_s(k,h_1) =K_{t+s}(h_2,h_1), \qquad \operatorname{Tr}e^{-t\mathbf J^2}=K_t(I) =\sum_jd_j^2e^{-t j(j+1)}.
\end{align}$$

The trace and uniform kernel convergence are finite for t>0, since $|\chi_j|\le d_j$ and the Gaussian spin suppression beats the polynomial multiplicity. The standard compact-group heat-kernel positivity theorem gives $K_t(g)>0$ for t>0; positivity is not inferred merely by inspecting positive spectral coefficients multiplying sign-changing characters.

This also defines an exact time-sliced action and measure. With fixed $g_0=h_1$, $g_M=h_2$, choose

$$\begin{align}
S_{t,M}(g_0,\ldots,g_M) =-\hbar\sum_{r=1}^M\log K_{t/M}(g_r g_{r-1}^{-1}), \qquad \mathcal A_{t,M}=\int\prod_{r=1}^{M-1}dg_r\,e^{-S_{t,M}/\hbar}.
\end{align}$$

All intermediate measures are normalized Haar. Gluing gives $\mathcal A_{t,M}=K_t(h_2,h_1)$ for every positive integer M; no unperformed continuum limit is used. Endpoints are fixed boundary group data. The action is real, not necessarily nonnegative: a positive kernel density can exceed one. This is an auxiliary Euclidean kernel/action, not a second physical time or a Lorentzian MAG spin foam.

With a finite spin projection the same convolution holds on the projected Hilbert space, but pointwise positivity can fail. At cutoff $j\le1/2$,

$$\begin{align}
K_t^{\rm cut}(-I)=1-4e^{-3t/4}.
\end{align}$$

For $e^{-t/4}=3/4$ this equals $-11/16$. The projected heat operator is still positive as an operator, but that cutoff kernel cannot be used as a positive Boltzmann weight by taking a real logarithm. The action just specified uses the full positive heat kernel. These distinct senses of positivity and regulation must not be combined silently.

## 8. Why This Is Not Full Nonmetric Quantization

The spinors were commuting auxiliary SU(2) coordinates. They are not a Penrose twistor with incidence/reality/helicity constraints, a Lorentz-covariant twistor phase space, or a representation of arbitrary GL shear. A time-gauge rotation model does not automatically recover boosts, conformal rescalings and nonmetricity. Even determinant-normalizing a real affine transporter in [MAG-02](<MAG-02.md>) removes only its stated positive central scaling; it does not turn the transporter into an SU(2) matrix.

The [MAG-01](<MAG-01.md>) action has a projective kernel and a source-trace compatibility condition. The [MAG-02 conditional integral](<MAG-02.md#L247-L336>) specifies an action, gauge slice, finite measure and oscillatory determinant at fixed metric/source. Those conditions are not the U(1) area-matching constraint. Multiplying that conditional result by compact loop states would still leave the joint symplectic reduction, metric/matter Jacobians, boundary data, regulators and remaining constraints to define. An auxiliary Gaussian is not a complete positive physical inner product, and its determinant is not universally a constant.

A prescribed route may eliminate a suitable auxiliary sector first and then use the metric canonical construction of EC-07 on its stated kinetic and boundary domain. Quantization of the unreduced nonmetric theory is a different problem; equality of the two routes is not proved here. There is no normalized finite Haar probability on a generic noncompact affine group obtained by simply copying the compact measure used in Section 7.

At graph nodes one would additionally impose the endpoint SU(2) Gauss constraints and select intertwiners. Spatial diffeomorphism and Hamiltonian constraints, their anomaly questions and a physical inner product remain further work. This chapter imposes only link U(1) matching. It derives neither a standard-model matter spectrum nor a universal bounce, entropy or singularity resolution.

## 9. Scope and References

On the regular nonzero-flux stratum we obtained a symplectic spinor description with the exact AST-20 source/target signs. On the quantum side we supplied a complete normalized Bargmann matching space, its target-dual Peter–Weyl map, ordered holonomy, Schwinger Casimir/area and domains. The quantum vacuum is included without claiming recovery of the missing classical zero section. Coherent and Haar kernels glue in a specified rotor model with a real action built from the positive full heat kernel, while finite CCR and link/kernel cutoffs retain explicit failures at their boundaries.

The spectral/direct-sum realization, Haar/Schur completeness, Gaussian Bargmann resolution and compact heat-kernel positivity are the functional-analytic inputs. The explicit maps and coefficient calculations give their present application; finite calibrations do not prove a unique quantization of four-dimensional metric–affine gravity.

L. Freidel and S. Speziale, “Twistors to twisted geometries,” *Physical Review D* **82** (2010), 084041, provides context for spinorial parametrizations and reduction; conventions must be translated to the explicit ket dual and potential here. E. R. Livine and J. Tambornino, “Spinor representation for loop quantum gravity,” *Journal of Mathematical Physics* **53** (2012), 012503, discusses the spinor Hilbert-space route. B. C. Hall, *Quantum Theory for Mathematicians* (Springer, 2013), supplies compact harmonic analysis, Bargmann and heat-kernel tools.
