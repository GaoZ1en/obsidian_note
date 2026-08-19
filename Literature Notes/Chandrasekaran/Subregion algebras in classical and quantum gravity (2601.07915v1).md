---
paper id: 2601.07915v1
title: Subregion algebras in classical and quantum gravity
authors: [Venkatesa Chandrasekaran, Éanna É. Flanagan]
publication date: 2026-01-12T19:00
abstract: "We study the kinematics and dynamics of subregion algebras in classical and perturbative quantum gravity associated with portions of null surfaces such as event horizons and finite causal diamonds. We construct half-sided supertranslation generators by extending subregion phase spaces of the event horizon to include doubled pairs of corner edge modes obtained from splitting the horizon, namely relative boosts and null translations of the respective corners. These edge modes carry a corner symplectic form and give rise to canonical charges generating half-sided boosts and translations. We show that the null translation generator is necessarily two-sided in the complementary translation edge modes. The charges act nontrivially on gravitationally dressed local observables on the horizon, such that the horizon subalgebra naturally takes the form of a crossed product by the associated automorphism group. Quantizing the extended phase space after linearizing around a black hole background, we obtain for each horizon cut a Type II$_{\\infty}$ von Neumann algebra equipped with a trace, whose von Neumann entropy coincides with the generalized entropy of that cut. The integrability of the half-sided null translation generator lifts to the existence of a self-adjoint operator that implements null time evolution on the Type II$_\\infty$ horizon subalgebras. The area operator is identified as the bulk implementation of the Connes cocycle flow for one-sided observables in excited states. The nesting property of the resulting one-parameter family of horizon subalgebras implies a generalized second law for non-stationary linearized perturbations of Killing horizons. Lastly, we use gravitational half-sided modular inclusion algebras to prove the quantum focusing conjecture in the perturbative quantum gravity regime."
comments: "111 pages, 9 figures"
pdf: "[[Attachments/Assets/Subregion algebras in classical and quantum gravity (2601.07915v1).pdf]]"
url: https://arxiv.org/abs/2601.07915v1
summary: "Develops an extended algebraic framework for gravitational subregions on null surfaces, deriving Type II_infinity horizon algebras whose entropy matches generalized entropy and using their nesting to establish the generalized second law and quantum focusing in perturbative gravity."
tags: []
---

## Summary

This paper studies subregion algebras for gravity on null surfaces such as event horizons and causal diamonds. It extends the phase space by introducing doubled corner edge modes, which allows the construction of half-sided boost and null-translation generators acting on gravitationally dressed observables. After linearizing around a black hole and quantizing, the resulting horizon algebras for each cut become Type II_infinity von Neumann algebras whose entropy agrees with generalized entropy. The algebraic nesting structure is then used to derive a generalized second law for linearized perturbations of Killing horizons and to prove the quantum focusing conjecture in perturbative quantum gravity.

## Subregion Phase Space

We consider null components $\displaystyle{\mathcal{N}}$ of the boundaries $\displaystyle{\partial M}$ of spacetimes $\displaystyle{(M,g_{\mu \nu})}$, focussing on boundaries at finite locations rather than asymptotic boundaries.

## Derivation Details

A useful way to follow the paper is to organize the derivation into a small number of structural steps.

1. Start from the covariant phase space on a null boundary. The boundary pullback of the presymplectic potential is decomposed as

$$\begin{align}
\Pi^* \theta = \delta \alpha + d\gamma + E,
\end{align}$$

   where $E$ is the flux/obstruction term. The presymplectic current is then defined by

$$\begin{align}
\omega = \delta(\theta - d\gamma),
\end{align}$$

   and the charge variation is computed from the symplectic form on a Cauchy slice. The important lesson is that for a subregion ending on a cut of a null surface, the obstruction term $E$ is what prevents the naive half-sided symmetry generator from being integrable.

1. In general relativity the explicit boundary data give a concrete corner charge. Using the Wald-Zoupas decomposition with $\gamma = 0$, the supertranslation corner charge becomes

$$\begin{align}
Q_\xi[S] = A^\circ_\beta[S] + P^\circ_\alpha[S],
\end{align}$$

   with

$$\begin{align}
A^\circ_\beta[S] = \frac{1}{8\pi}\int_S \beta\,\mu, \qquad P^\circ_\alpha[S] = -\frac{1}{8\pi}\int_S \alpha\,\Theta\,\mu.
\end{align}$$

   So the boost part is essentially an area functional, while the translation part is conjugate to the null expansion. Section 2 shows that these are only corner charges, not yet true Hamiltonian generators on a genuine subregion phase space.

1. The paper then tests half-sided supertranslations by truncating the symmetry at a cut $u=u_0$. The formal charge variation is written with a Heaviside function,

$$\begin{align}
\delta Q_\xi = \int_N H(u-u_0)\,\omega(\phi,\delta\phi,i_{\hat\xi}\delta\phi).
\end{align}$$

   This suggests how the subregion generator should work, but by itself it is ad hoc. The deeper problem is that the half-sided flow changes the relation between the future and past sides of the cut, so one cannot keep the usual smooth gluing data and still have a fully integrable symmetry on the original phase space.

1. The resolution is to split the horizon across a thin Cauchy splitting region and introduce doubled corner edge modes

$$\begin{align}
(\Gamma_0^+,\Upsilon_0^+), \qquad (\Gamma_0^-,\Upsilon_0^-).
\end{align}$$

   These variables encode relative boosts and affine shifts of the two sides of the cut. The symplectic form must then be enlarged by a corner contribution $\Omega_{\partial G}$. Its crucial feature is the mixed term coupling $\Upsilon_0^+$ and $\Upsilon_0^-$, which is why the null translation generator is necessarily two-sided in the complementary edge modes. This is the technical place where gravity differs from an ordinary factorized QFT subregion.

1. After adding the edge modes, the half-sided generators become honest canonical generators. The corner symplectic form yields

$$\begin{align}
-i_{\hat\xi}\Omega_{\partial G} = \delta(A_\beta + P_\alpha),
\end{align}$$

   so the boost and translation generators are now integrable on the extended phase space. Physically, the half-sided flow acts by changing the future edge modes while keeping the past side fixed, which corresponds to moving the subregion relative to its complement. In the spacetime picture this produces a null shock localized at the cut.

1. For perturbations around a Killing horizon, the gravitational constraints let the generators be rewritten in terms of horizon null energy. In the linearized theory one obtains

$$\begin{align}
A_\beta = \int_{u_0^+}^{\infty} du\, d^{d-2}x\, \sqrt{q}\,\beta(x^A)(u-u_0^+)T_{uu}(u) - A_\beta(\infty),
\end{align}$$

$$\begin{align}
P_\alpha = -\int_{u_0^+}^{\infty} du\, d^{d-2}x\, \sqrt{q}\,\alpha(x^A)T_{uu}(u).
\end{align}$$

   So $A_\beta$ is the half-sided vacuum modular Hamiltonian and $P_\alpha$ is the half-sided ANEC operator. Their action on dressed observables is

$$\begin{align}
[\hat P_\alpha,\hat O(p)] = -i\alpha\,\partial_u \hat O(p), \qquad [\hat A_\beta,\hat O(p)] = -i(u-u_0)\beta\,\partial_u \hat O(p),
\end{align}$$

   which makes the half-sided $ax+b$ structure explicit.

1. Once these generators act on the dressed horizon algebra, the natural algebraic object is a crossed product: bulk dressed observables together with the edge-mode-generated automorphisms. Quantization then gives a Type II$_\infty$ algebra for each cut. The entropy of that cut algebra matches the generalized entropy, and the nesting of the algebras in $u$ gives the generalized second law; with half-sided modular inclusion technology, the same structure leads to quantum focusing.

For studying the paper, the key derivational bottleneck is therefore not the final Type II$_\infty$ language itself, but the mid-stage construction in Sections 4-6: how the corner obstruction is converted into a genuine symplectic edge-mode sector, and how that sector turns null translations from outer to inner automorphisms on the enlarged algebra.

## Core Logic

This section reconstructs the paper's logical chain end to end, following the paper's own section order. The paper's throughline, stated explicitly in §1.3, is

$$\begin{align}
\text{classical phase space}\;\to\;\text{corner edge modes}\;\to\;\text{integrability + gravitational dressing}\;\to\;\text{canonical quantization}\;\to\;\text{Tomita–Takesaki theory / gravitational half-sided modular inclusions}.
\end{align}$$

The overall goal (§1): unify the thermodynamics of null surfaces (Bekenstein–Hawking entropy, GSL, QFC) with the algebraic-QFT picture of subregion algebras and modular theory, in a *bulk*, *dynamical* framework built from canonical variables, symplectic forms, and corner edge modes — not from abstract boundary or large-$N$ constructions. For every cut $u$ of a future event horizon $\mathscr{H}$ the paper constructs (i) an extended subregion phase space, (ii) integrable half-sided boost/translation generators acting on gravitationally dressed observables, and (iii) a Type II$_\infty$ crossed-product von Neumann algebra $\widehat{\mathcal{M}}_{\mathscr{H}_{>u}}$ whose trace entropy equals the generalized entropy of that cut; nesting of the cut algebras then gives the GSL, and a gravitational half-sided modular inclusion structure gives quantum focusing.

### 1. The Problem: Gravitational Subregions Have No Naive Phase Space (§2)

On a null boundary the pullback of the presymplectic potential splits as

$$\begin{align}
\Pi_*\boldsymbol{\theta}=\delta\boldsymbol{\alpha}+d\boldsymbol{\gamma}+\boldsymbol{\mathcal{E}},
\end{align}$$

and the presymplectic current is $\boldsymbol{\omega}=\delta(\boldsymbol{\theta}-d\boldsymbol{\gamma})$. Computing the charge variation on the subregion $\mathscr{S}=\mathscr{H}_{>u_0}$ (with $\gamma=0$ in GR, Wald–Zoupas criteria) gives

$$\begin{align}
\delta\mathcal{Q}_\xi=\delta\!\int_{S_0}\big[\boldsymbol{Q}_\xi-i_\xi\boldsymbol{\alpha}\big]-\delta\!\int_{S_\infty}\big[\boldsymbol{Q}_\xi-i_\xi\boldsymbol{\alpha}\big]-\int_{S_0}i_\xi\boldsymbol{\mathcal{E}}.
\end{align}$$

The third term is the flux/obstruction term at the corner: it makes the charge non-integrable away from the bifurcation surface $S_0=\mathscr{B}$. The integrable "corner charge" obtained by dropping it,

$$\begin{align}
\overset{\circ}{\mathcal{Q}}_\xi[S]=\frac{1}{8\pi}\int_S\boldsymbol{\mu}\,\big[\pounds_\ell f+\kappa f-\Theta f\big] =\overset{\circ}{\mathscr{A}}_\beta[S]+\overset{\circ}{\mathscr{P}}_\alpha[S],\qquad \overset{\circ}{\mathscr{A}}_\beta[S]=\frac{1}{8\pi}\int_S\beta\,\boldsymbol{\mu},\quad \overset{\circ}{\mathscr{P}}_\alpha[S]=-\frac{1}{8\pi}\int_S\alpha\,\Theta\,\boldsymbol{\mu},
\end{align}$$

is only a *corner charge*, not a Hamiltonian generator: it does not generate the supertranslation flow on any genuine subregion phase space. Two concrete shortcomings (§2.2): (i) supertranslations do not preserve the naive "fields on $\mathscr{H}_{>u_0}$" phase space (they drag data across the cut), and (ii) the obstruction term blocks integrability. This is the seed of the whole paper: the corner data that make the charge integrable must be promoted to dynamical variables.

### 2. First Fix: Canonical Half-Sided Supertranslations (§3)

Instead of truncating the *region* (integrating the symplectic form over $\mathscr{H}_{>u_0}$), truncate the *flow*: use the full symplectic form contracted with the half-sided phase-space vector field

$$\begin{align}
\hat{\xi}_T=\int_{\mathscr{N}}d^{d-1}y\,H(u-u_0)\,\mathfrak{i}_{\hat{\xi}}\delta\phi\,\frac{\delta}{\delta\phi(y)}.
\end{align}$$

The Heaviside cutoff generates delta-function terms $\propto\delta(u-u_0)$ in the conjugate momenta, and these exactly cancel the flux obstruction on the corner:

$$\begin{align}
i_\xi\boldsymbol{\mathcal{E}}=-i_\ell\boldsymbol{\Xi}\qquad\text{(pullback to }S_0\text{)},
\end{align}$$

which holds for supertranslations $\xi^a=f\ell^a$ in GR and for any theory whose symplectic form is of the canonical form (3.5), but **not** for $\text{Diff}(\mathbb{S}^{d-2})$ generators (Appendix A). The resulting generator coincides with the corner-charge expression (2.14), but now *actually generates* the half-sided flow. Lesson: integrate over all of $\mathscr{H}$ and truncate the phase-space vector field, not the region — the price is a corner term that encodes the failure of strict factorization at the cut.

### 3. Spacetime Half-Sided Diffeomorphisms Force Null Shocks (§4)

Next interpret the half-sided symmetry as a spacetime vector field $\xi^a=\xi_0^a H(u-u_0)$ with $\xi_0^a=(\alpha+u\beta)\ell^a$. This is *not* a boundary symmetry of the phase space $\mathcal{P}_{\mathscr{H}}$ (it violates (2.3)); staying in $\mathcal{P}_{\mathscr{H}}$ (i.e. $\delta\kappa=0$) requires compensating null shocks in the stress tensor and Weyl tensor, and on-shellness forces them to be impulsive:

$$\begin{align}
\ell^i\ell^j\,\mathfrak{i}_{\hat{\xi}}\delta T_{ij}(u)=-\frac{1}{8\pi}\big[\alpha\,\partial_u\Theta(u)-\beta\,\Theta(u)\big]\,\delta(u-u_0),
\end{align}$$

with the analogous Weyl shock for shear (5.21b). The distributional corrections to the symplectic-current identity read

$$\begin{align}
\mathfrak{i}_{\hat{\xi}}\boldsymbol{\omega}=-d(\delta\boldsymbol{Q}_\xi-i_\xi\boldsymbol{\theta})+\frac{1}{8\pi}\,\delta\big(\beta\boldsymbol{\eta}-\alpha\,\pounds_\ell\boldsymbol{\eta}\big)\,\delta(u-u_0).
\end{align}$$

Two integration prescriptions over $u$ then differ crucially: the Cauchy principal-value prescription (excising a tube $G_\varepsilon$ around the cut) *misses the shocks* and reproduces the old non-integrable charges; the "on-shell" prescription keeps them and yields integrable generators

$$\begin{align}
\mathscr{A}_\beta=\frac{1}{8\pi}\Big[\int_{S_0}\beta\,\boldsymbol{\mu}-\int_{S_\infty}\beta\,\boldsymbol{\mu}\Big],\qquad \mathscr{P}_\alpha=-\frac{1}{8\pi}\int_{S_0}\alpha\,\pounds_\ell\boldsymbol{\mu},
\end{align}$$

now obtained from the distributional term rather than from the exact boundary term. Physical statement (§4.2): the global horizon phase space admits half-sided null translation generators **iff** the null constraints hold across the Cauchy splitting region $G_\varepsilon$ — half-sided time evolution of a subregion requires spacetime to remain connected across the corner.

### 4. The Structural Step: Doubled Corner Edge Modes (§5)

This is the paper's technical core. Two complementary derivations of the same edge-mode sector:

- **Bottom-up (§5.2).** Writing a consistent subregion phase space for $\mathscr{H}_\pm$ alone requires canceling the anomalous (non-gauge) transformation of bulk fields under supertranslations by making the corner $\text{Aff}(1)$ frame dynamical: promote the relative boost angle $\Gamma_0^\pm$ (analogous to a $\text{U}(1)$ gauge parameter for the normal-bundle spin connection, $\omega_i^\pm\to\omega_i^\pm+\widehat{\nabla}_i\Gamma^\pm$) and the affine shift $\Upsilon_0^\pm$ to genuine edge modes, transforming under half-sided supertranslations as $\mathfrak{i}_{\hat{\xi}}\delta\Gamma_0^+=-\beta,\ \mathfrak{i}_{\hat{\xi}}\delta\Upsilon_0^+=-\alpha$ on the future corner and trivially on the past one. Gauge invariance then forces the extended symplectic form

$$\begin{align}
\widehat{\Omega}_{\mathscr{H}}=\Omega_{\mathscr{H}_-}+\Omega_{\mathscr{H}_+}+\Omega_{\partial G},
\end{align}$$

with the corner symplectic form (5.11). Its key new term couples the *complementary* translation edge modes,

$$\begin{align}
\Omega_{\partial G}\supset\frac{1}{8\pi}\int_{S_0}\delta\Upsilon_0^+\wedge\delta\Upsilon_0^-\,\pounds_\ell(\boldsymbol{\mu}\Theta),
\end{align}$$

expressing that the null constraints glue $\mathscr{H}_+$ and $\mathscr{H}_-$ across the split. Consequently the half-sided null translation generator is **necessarily two-sided**: its Hamiltonian flow acts only on $\Upsilon_0^+$, but the generator depends on the relative displacement $\Upsilon_0^+-\Upsilon_0^-$:

$$\begin{align}
\mathscr{P}_\alpha=-\frac{1}{8\pi}\int_{S_0^+}\alpha\,e^{\Gamma_0^+}\Big[\pounds_\ell\boldsymbol{\mu}-\big(\Upsilon_0^+-\Upsilon_0^-\big)\pounds_\ell(\boldsymbol{\mu}\Theta)\Big], \qquad\mathscr{A}_\beta=\frac{1}{8\pi}\Big[\int_{S_0^+}\beta\,\boldsymbol{\mu}-\int_{S_\infty}\beta\,\boldsymbol{\mu}\Big].
\end{align}$$

The flows are $\hat{\xi}_\beta=\int\beta\,\delta/\delta\Gamma_0^+$ and $\hat{\xi}_\alpha=\int\alpha e^{\Gamma_0^+}\,\delta/\delta\Upsilon_0^+$, and the corner charges close into the classical $ax+b$ algebra

$$\begin{align}
\{\mathscr{A}_\beta,\mathscr{P}_\alpha\}=\mathscr{P}_{-\alpha\beta},\qquad \{\mathscr{A}_\beta,\mathscr{A}_{\beta'}\}=0,\qquad \{\mathscr{P}_\alpha,\mathscr{P}_{\alpha'}\}=0.
\end{align}$$

Imposing the constraints across $G_\varepsilon$ reproduces the impulsive shocks of §4; for $\alpha,\beta>0$ the stress tensor shock satisfies the null energy condition on event horizons (background NEC + focusing theorem), which is the origin of the constraint $\Upsilon_0^+>\Upsilon_0^-$.

- **Top-down (§5.3–5.4).** Start from the global horizon phase space (including shocks) and *undo the gauge fixing* of the cut: the covariant dressed-subregion formalism (reference manifold $\bar{M}$ + embedding maps $X_\pm:\bar{\mathscr{H}}_\pm\to\mathscr{H}$, Stueckelberg trick) produces the same two sets of edge modes from two *independent* embeddings — this is why two edge-mode copies are needed rather than one. The corner form (5.11) is derived from first principles by computing the distributional corrections to the identity (5.50) for a discontinuous embedding variation $\chi$ (§5.4, result (5.58)). On the physical manifold, physical diffeos act only on the edge modes; true gauge (physical-manifold diffeos) has zero charge — see Table 1 for the dictionary.

With the edge modes in place, the half-sided generators of §2–4 become honest canonical generators on the extended phase space: $-\mathfrak{i}_{\hat{\xi}}\Omega_{\partial G}=\delta(\mathscr{A}_\beta+\mathscr{P}_\alpha)$.

### 5. Classical Crossed Product from Gravitational Dressing (§6.1)

"Bulk" local observables on $\mathscr{H}_{>u_0}$ are dressed to the future corner: $p=\exp(u\ell)p_0$ with $p_0\in S_0^+$, so the dressed point is located relationally w.r.t. the edge-mode frame $(\Gamma_0^+,\Upsilon_0^+)$. Varying the corner data then moves the dressed point along the generator, and the corner charges act on dressed observables as

$$\begin{align}
\{\mathscr{P}_\alpha,\mathscr{O}(p)\}=-\alpha\,e^{\Gamma_0^+}\,\mathfrak{L}_{\hat{\ell}}\mathscr{O}(p),\qquad \{\mathscr{A}_\beta,\mathscr{O}(p)\}=-(u-u_0)\,\beta\,\mathfrak{L}_{\hat{\ell}}\mathscr{O}(p).
\end{align}$$

Two consequences. (I) Both charges generate *outer* automorphisms of the bulk subregion algebra $\mathcal{A}_{\mathscr{H}_{>u_0}}$ (they are not elements of it). (Ii) **The area operator is not central**: it fails to commute with dressed bulk observables precisely because it acts on their dressing — in sharp contrast to the quantum-error-correction picture where the area lives in the center; the non-centrality is the signature of treating gravity dynamically. The natural classical horizon subalgebra is therefore the crossed product

$$\begin{align}
\widehat{\mathcal{A}}_{\mathscr{H}_{>u_0}}=\mathcal{A}_{\mathscr{H}_{>u_0}}\rtimes\Big(C^\infty_\beta(\mathbb{S}^{d-2})^*\rtimes C^\infty_\alpha(\mathbb{S}^{d-2})^*\Big),
\end{align}$$

i.e. the bulk algebra extended by the automorphisms that move the subregion relative to its complement. The "bulk" Hamiltonian is a constraint (vanishes on bulk observables, (6.15)–(6.17)); all nontrivial half-sided dynamics is localized at the corner through the dressing.

### 6. Quantization: Type II$_\infty$ Horizon Algebras (§6.2, §7.1)

Linearize around a bifurcate Killing horizon (or an isolated horizon; §7.3 extends to general non-stationary backgrounds via local Rindler frames). Integrating out the linearized Raychaudhuri constraint $\partial_u\delta\Theta=-8\pi G_N T_{uu}$ with the teleological condition $\delta\Theta\to 0$ at $u\to\infty$,

$$\begin{align}
\delta\Theta(u)=8\pi G_N\!\int_u^\infty\!ds\,T_{uu}(s),\qquad \Delta h(u)=16\pi G_N\!\int_u^\infty\!ds\,(s-u)\,T_{uu}(s),
\end{align}$$

reduces the bulk symplectic form to a bilinear form on radiative data with kernel $K_{u_0}(s,s')=(s-s')(\min(s,s')-u_0)$. The corner charges become the half-sided light-ray operators

$$\begin{align}
\mathscr{A}_\beta=\int_{u_0^+}^\infty\!du\!\int_{S_0^+}\!d^{d-2}x\,\sqrt{q}\,\beta(x^A)(u-u_0^+)\,T_{uu}(u)-\mathscr{A}_\beta(\infty),\qquad \mathscr{P}_\alpha=-\int_{u_0^+}^\infty\!du\!\int_{S_0^+}\!d^{d-2}x\,\sqrt{q}\,\alpha(x^A)\,T_{uu}(u),
\end{align}$$

i.e. the half-sided vacuum modular Hamiltonian and the half-sided ANEC operator of the matter theory — both $\mathcal{O}(1)$ in $G_N$, so despite working perturbatively one can generate $\mathcal{O}(1)$ flows of the corner data. CCR quantization of the extended phase space (Weyl algebra) gives for each cut the crossed product

$$\begin{align}
\widehat{\mathcal{A}}_{\mathscr{H}_{>u_0}}=\big(\mathcal{A}^{\rm grav}_{\mathscr{H}_{>u_0}}[\hat{\sigma}]\otimes\mathcal{A}^{\rm mat}_{\mathscr{H}_{>u_0}}[\hat{\psi}]\big)\rtimes\mathcal{A}_{\partial G}[\hat{\Gamma}_0^+,\hat{\Upsilon}_0^+],
\end{align}$$

with commutators $[\hat{\mathscr{P}}_\alpha,\hat{\mathscr{O}}]=-i\alpha\,\partial_u\hat{\mathscr{O}}$, $[\hat{\mathscr{A}}_\beta,\hat{\mathscr{O}}]=-i(u-u_0)\beta\,\partial_u\hat{\mathscr{O}}$ on dressed operators. In the $\ell=0$ (minisuperspace) edge-mode sector the extended GNS Hilbert space is $\widehat{\mathcal{H}}=\mathcal{H}\otimes L^2(\mathbb{R}_s)\otimes L^2(\mathbb{R}_u)$. Conditioning on the translation edge mode (a classical cut location) via the canonical conditional expectation $E_u$ selects, for each cut, the algebra

$$\begin{align}
\widehat{\mathcal{M}}_{\mathscr{H}_{>u}}=\mathcal{A}_{\mathscr{H}_{>u}}\rtimes\mathbb{R}_s,
\end{align}$$

which is a **Type II$_\infty$ factor** with the canonical semifinite trace $\text{tr}[\hat{\mathscr{O}}]=\int dx\,e^{\beta x}\langle\Psi|\hat{\mathscr{O}}(x)|\Psi\rangle$; the *unconditioned* algebra (with both edge-mode sectors) remains Type III$_1$ and has no trace. Null translation is implemented as an inner automorphism on $\widehat{\mathcal{A}}_{\mathscr{H}_{>u_0}}$ by $U(\delta u)=e^{i\hat{\mathscr{P}}\delta u}$ (it would be merely outer on the underlying Type III "bulk" algebra).

### 7. Entropy = Generalized Entropy; GSL (§7.1–7.2)

The Type II$_\infty$ trace yields density matrices and von Neumann entropy $S(\hat{\psi};\widehat{\mathcal{M}}_{\mathscr{H}_{>u}})=-\text{tr}[\rho_{\hat{\psi}}(u)\log\rho_{\hat{\psi}}(u)]$ per cut. Two structural results:

- **Area operator = bulk Connes cocycle flow.** In excited states, the (state-dependent) CC flow of the one-sided Type III algebra is implemented in the bulk by the (state-independent) area operator,

$$\begin{align}
\langle\Psi|u_{\Psi|\Omega;u}(s)\,\hat{\mathscr{O}}^{\pm}\,u^\dagger_{\Psi|\Omega;u}(s)|\Psi\rangle =\langle\Psi|e^{i\beta\hat{\mathscr{A}}(u)s}\,\hat{\mathscr{O}}^{\pm}\,e^{-i\beta\hat{\mathscr{A}}(u)s}|\Psi\rangle,
\end{align}$$

concretely realizing the "bulk CC flow = kink transform" idea of [12]: acting on the corner edge modes changes the dressing of one-sided observables exactly as CC flow acts on the algebra.

- **Entropy formula.** Using $\log\rho_{\hat{\psi}}(u)\approx-\beta\hat{\mathscr{A}}(\infty)+h_{\Omega|\Psi}(u)-h_\Omega(\infty)-h_\Psi(u)$ (7.12) and the half-sided density matrices, the von Neumann entropy equals the generalized entropy *averaged over quantum fluctuations of the cut location* (the translation edge mode $\hat{\Upsilon}_0^+$ has wavefunction $g(\Delta u_0)$):

$$\begin{align}
S(\hat{\psi};\widehat{\mathcal{M}}_{\mathscr{H}_{>u}})\approx\bar{S}_{\rm gen}(u;\hat{\psi}) =\int_{-\infty}^{\infty}\!d\Delta u_0\,|g(\Delta u_0)|^2\,S_{\rm gen}(u-\Delta u_0;\hat{\psi}),
\end{align}$$

up to a state-independent constant. The GSL then follows purely from algebra nesting: translation covariance + isotony give $U(\delta u)\widehat{\mathcal{M}}_{\mathscr{H}_{>u_0}}U(-\delta u)\subset\widehat{\mathcal{M}}_{\mathscr{H}_{>u_0}}$ for $\delta u\geq 0$, and trace-respecting nesting (Appendix G, Jensen's operator inequality) makes the algebraic entropy monotone, hence

$$\begin{align}
\partial_u\bar{S}_{\rm gen}(u;\hat{\psi})\geq 0.
\end{align}$$

For non-stationary backgrounds (§7.3), the same statements hold to first order in a neighborhood of any cut (local Rindler frame; local KMS state), with $\hat{\mathscr{A}}_g,\hat{\mathscr{P}}_g$ acquiring graviton ($\hat{\sigma}$) terms through the linearized Raychaudhuri equation.

### 8. Applications: HSMI, QFC, Causal Diamonds, Corner Holography (§8)

- **Gravitational half-sided modular inclusions (§8.1).** The half-sided translation semigroup on the net of cut algebras satisfies the Borchers–Wiesbrock structure: there is a positive self-adjoint generator $G\geq 0$ with $ax+b$ relations against modular flow, and it is identified with $\hat{\mathscr{P}}$ ($G_\alpha\equiv\hat{\mathscr{P}}_\alpha$ for $\alpha\geq 0$). Positivity comes from modular inclusion, *not* from the light-ray integral representation; what is new in gravity is that the edge modes make the half-sided translations **inner** on the crossed product subregion algebra (outer in QFT). A subtlety: Type II$_\infty$ algebras do support half-sided modular inclusions — Wiesbrock's Type III$_1$ conclusion requires a unique translation-invariant vacuum vector, which fails here because the cut location lives in a quantum reference-frame sector ($L^2(\mathbb{R}_u)$ has no translation-invariant vector).
- **Quantum focusing (§8.2).** $\bar{S}_{\rm gen}(u;\hat{\psi})=-S_{\rm rel}(u)+\text{const}$ with the Araki relative entropy on $\widehat{\mathcal{M}}_u$, so QFC is convexity of $S_{\rm rel}$ along $u$. The Ceyhan–Faulkner variational formula adapts verbatim:

$$\begin{align}
-\frac{1}{2\pi}\,\partial_u S_{\rm rel}(u)=\inf_{V\in U(\widehat{\mathcal{M}}_u')}\langle\hat{\psi}|V^\dagger\hat{\mathscr{P}}_u V|\hat{\psi}\rangle,
\end{align}$$

with the infimum saturated by the Connes-cocycle purification family. Since the commutants *grow* under forward translations ($\widehat{\mathcal{M}}_{u+a}'\supset\widehat{\mathcal{M}}_u'$ for $a\geq 0$, eq. (8.18) — the conditional-expectation subtlety (8.20)–(8.23) is essential here), the minimization domain enlarges and the infimum can only decrease, giving $\boldsymbol{\Theta}(u+a)\leq\boldsymbol{\Theta}(u)$, i.e.

$$\begin{align}
\partial_u^2\bar{S}_{\rm gen}(u;\hat{\psi})\leq 0.
\end{align}$$

**A proof of the quantum focusing conjecture in perturbative quantum gravity.**
- **Causal diamonds (§8.3).** The same construction applies to the lightsheets $\mathscr{N}^\pm$ of a finite causal diamond (tips $p^\pm$, blow-up boundary conditions near the tips). A conformal boost $\zeta\mathrel{\widehat{=}}\frac{u}{u_0}(u-u_0)\partial_u$ plays the role of the Killing boost; since conformal isometries are not isometries (linearized gravity is not a CFT), entropy statements use the local-Rindler logic of §7.3. Each cut of a generic smooth causal diamond again yields a Type II$_\infty$ algebra whose von Neumann entropy is the (averaged) generalized entropy of the cut.
- **Cauchy slice holography (§8.4).** On the characteristic Cauchy surface $\Sigma^+=\mathscr{H}_{>u_0}\cup\mathscr{I}^+$, standard HKLL reconstruction gives $\mathcal{A}_{\rm ext}=\mathcal{A}_{\mathscr{H}_{>u_0}}\vee\mathcal{A}_{\mathscr{I}^+}$. The corner translation unitaries generate any finite-distance operator from an arbitrarily thin corner strip, so the whole exterior algebra is generated by two corners:

$$\begin{align}
\mathcal{A}_{\rm ext}=\mathcal{A}_{\rm corner}(S_0)\vee\mathcal{A}_{\rm corner}(i^0),
\end{align}$$

valid within the perturbative regime (flows of $\exp(\mathcal{O}(1))$ in $G_N$; not past the Page time).

**One-paragraph summary of the logic.** The obstruction to integrable half-sided generators on a gravitational subregion is the corner flux term; making the corner relational data (relative boost and affine shift on each side of a Cauchy splitting tube) dynamical cancels it and simultaneously provides the dressing needed to define gauge-invariant subregion observables; the resulting corner charges generate half-sided $ax+b$ flows and are non-central on dressed observables, so the classical subregion algebra is a crossed product; linearizing around a Killing horizon and quantizing, conditioning on the cut location yields Type II$_\infty$ factors per cut whose trace entropy is the generalized entropy averaged over cut fluctuations; nesting gives the GSL, and the half-sided modular inclusion structure inherited from the edge modes gives the QFC.

### Verification Log

- `Verified:` (Mathematica 14, `wolframscript -file`): (i) the classical corner algebra (5.16a)–(5.16b), $\{\mathscr{A}_\beta,\mathscr{P}_\alpha\}=\mathscr{P}_{-\alpha\beta}$ and $\{\mathscr{A}_\beta,\mathscr{A}_{\beta'}\}=0$, from the definitions (5.14)–(5.15) with $\{F,G\}=-\mathfrak{i}_{X_F}\delta G$; (ii) the kernel identity in (6.26)–(6.28): the triple integral over $u$ of the antisymmetrized $(s-u)\,T_{uu}(s)T'_{uu}(s')$ kernel collapses to $\frac{1}{2}\int ds\,ds'\,(s-s')(\min(s,s')-u_0)\,T_{uu}(s)T'_{uu}(s')$, checked both numerically (test functions $e^{-2s},e^{-3s}$) and symbolically.
- `Assumptions:` (5.16c) $\{\mathscr{P}_\alpha,\mathscr{P}_{\alpha'}\}=0$ was checked to hold for a one-sided flow (5.15b) only when the background satisfies $\pounds_\ell(\boldsymbol{\mu}\Theta)|_{S_0}=0$ — automatic for Killing/isolated horizons ($\Theta=0$), i.e. exactly the regime of §6–§8; the fully general non-stationary classical statement is not verified here. Signs and $2\pi$ normalizations follow the paper's conventions (e.g. modular Hamiltonian $K=\beta\hat{\mathscr{A}}(u)$ in (7.6)); these were not re-derived.
- `Not verified:` the long derivations — (2.22) from the Wald–Zoupas decomposition, the corner symplectic form (5.11) from §5.4, the distributional identity (4.4), the linearized-GR form of $\hat{\mathscr{A}}_g,\hat{\mathscr{P}}_g$ (7.33), and the QFC proof steps (8.32)–(8.40) beyond algebraic structure. These are reproduced from the source (arXiv:2601.07915v1, HTML rendering; formulas checked against the PDF's LaTeX where needed). All displayed equations above are transcribed faithfully from the paper; any residual typos are transcription-level and should be checked against the source PDF (attached as `[[Attachments/Assets/Subregion algebras in classical and quantum gravity (2601.07915v1).pdf]]`).
