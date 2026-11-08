# Formalism and Statement Order

## 1. Convention Manifest

Let

$$\begin{align}
D=[0,U]_u\times[0,V]_v\times S, \qquad N_+=\{u=0\}, \qquad N_-=\{v=0\}, \qquad S_0=N_+\cap N_-.
\end{align}$$

The first model uses

$$\begin{align}
ds^2=-2\,du\,dv+q_{AB}dx^A dx^B, \qquad \operatorname{vol}_4=du\wedge dv\wedge\operatorname{vol}_S,
\end{align}$$

with $q_{AB}$ independent of $(u,v)$. The spacetime signature is $(-+++)$. Field-space exterior differentiation is denoted by $\delta$; its wedge is displayed only when it prevents ambiguity. The Lee--Wald ordering is

$$\begin{align}
\omega(\delta_1,\delta_2) =\delta_1A\wedge *\delta_2F-\delta_2A\wedge *\delta_1F.
\end{align}$$

The initial characteristic form is defined with incoming orientation, so both generator integrals appear with positive parameter measures in the final formula. This convention is chosen so that

$$\begin{align}
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.
\end{align}$$

## 2. Data Classes

Write

$$\begin{align}
E:=F_{uv}, \qquad p_A:=F_{uA}|_{N_-}, \qquad r_A:=F_{vA}|_{N_+}, \qquad b_{AB}:=F_{AB}.
\end{align}$$

The principal sheetwise radiative profiles are $(r_A,p_A)$. They are not complete double-null characteristic data. The reduced gauge-invariant constraint datum is

$$\begin{align}
\mathcal X_F= \left(r_A(v,x),p_A(u,x),E_0(x),b^0_{AB}(x)\right),
\end{align}$$

subject to the global bundle qualification in Section 5 below. Its constrained completion on the two sheets is obtained from

$$\begin{aligned}
\partial_vE_+&=-D^Ar_A, &\partial_vb^+_{AB}&=2D_{[A}r_{B]},\\
\partial_uE_-&=+D^Ap_A, &\partial_ub^-_{AB}&=2D_{[A}p_{B]},
\end{aligned}$$

with

$$\begin{align}
E_+(0)=E_-(0)=E_0, \qquad b^+_{AB}(0)=b^-_{AB}(0)=b^0_{AB}.
\end{align}$$

Thus $r_A,p_A$ are radiative profiles; $E,b_{AB}$ are transported; $E_0,b^0_{AB}$ are shared-corner integration data. These variables belong to different logical classes and must not all be called “free radiative data.” In particular,

$$\begin{align}
F=E_c\,du\wedge dv, \qquad F=B_c\,\operatorname{vol}_S,
\end{align}$$

with nonzero constants $E_c$ or $B_c$, gives a nonzero source-free field with $r=p=0$. Therefore restriction to $(r,p)$ alone is not injective.

## 3. The Classical Statement Chain

### Lemma A — Action and Current

**Status: proved.** For

$$\begin{align}
L=-\frac12F\wedge *F, \qquad F=dA,
\end{align}$$

one may take

$$\begin{align}
\theta[A;\delta A]=-\delta A\wedge *F,
\end{align}$$

and the displayed $\omega$. On the linearized solution space, $d\omega=0$.

### Lemma B1 — Sheet-Constraint Parameterization

**Status: proved and checked symbolically.** The map

$$\begin{align}
(r,p;E_0,b^0)\longmapsto (r,p;E_\pm,b^\pm)
\end{align}$$

defined by the four transport integrals is a bijection onto the smooth sheet field data satisfying those transport equations and the shared-corner equalities. No second $E$ or $b_{AB}$ profile may be assigned independently after $E_0,b^0$ are fixed. This is an ODE-along-generators statement; it neither asserts nor proves bulk Maxwell existence.

### Claim B2 — Radiative Pair Alone

**Status: false.** The pair $(F_{vA}|_{N_+},F_{uA}|_{N_-})$ alone does not form complete double-null characteristic data. The pure electric example proves this within a fixed magnetic Chern sector whenever the electric-flux sector is not fixed. On $S^2$, the pure constant magnetic example is primarily a cross-Chern-sector/topological check; it is not a tangent variation inside one fixed Chern sector.

### Proposition C — Gauge Contraction

**Status: proved.** For $\delta_\epsilon A=d\epsilon$,

$$\begin{align}
\omega(\delta_\epsilon,\delta)=d\left(\epsilon *\delta F\right)
\end{align}$$

on the linearized solution space. Hence

$$\begin{align}
\iota_{\delta_\epsilon}\Omega_C =\int_{\partial C}\epsilon\,\delta(*F).
\end{align}$$

A gauge transformation is proper only relative to a declared endpoint phase space: it is a degeneracy if the last integral vanishes for every allowed variation. Nonzero cut values of $\epsilon$ are charged when the electric flux varies.

### Theorem I — Local Goursat Reconstruction

**Status: proved for every fixed benchmark master sector.** For $a_\ell=\lambda_\ell/2>0$, let

$$\begin{align}
\mathcal G^1_{U,V} =\{(f,g)\in H^1(0,U)\oplus H^1(0,V):f(0)=g(0)\}
\end{align}$$

with the sum $H^1$ norm, and let $\mathcal E^1_{U,V}(a_\ell)$ be the distributional solution graph space with the $C^0+L^\infty L^2+L^2$ mixed-derivative norm of calculation 07. Then

$$\begin{align}
\boxed{ \operatorname{Res}_{U,V}:\mathcal E^1_{U,V}(a_\ell) \overset{\sim}{\longrightarrow}\mathcal G^1_{U,V}}
\end{align}$$

is a bounded isomorphism. Its inverse is the exact Bessel/Riemann formula (2.5) of calculation 07, with explicit reconstruction and trace estimates (3.4), (3.11). This is a pure local PDE/characteristic-coordinate theorem. The finite profiles coordinatize the local solution germ/restriction space on $D_{U,V}$; they do not coordinatize the global solution space.  The patch is not an autonomous finite-region gauge phase space, does not select a vacuum, and does not determine global annihilation coefficients.

### Theorem II — Global Characteristic Representation

**Status: proved for the radiative benchmark in the zero-flux/zero-Chern
sector.** On $M=\mathbb R_t\times\mathbb R_z\times S^2_R$, take $Q_E=n=0$ and let $\mathcal S_E^{\mathrm{rad}}$ be the direct sum of the two $\ell\geq1$ master energy spaces $H^1(\mathbb R_z)\oplus L^2(\mathbb R_z)$. For the complete half-cross

$$\begin{align}
X=\{v=0,u\geq0\}\cup_{S_0}\{u=0,v\geq0\},
\end{align}$$

restriction is an injective symplectic isomorphism

$$\begin{align}
\boxed{ R_X:\mathcal S_E^{\mathrm{rad}} \overset{\sim}{\longrightarrow} \widehat\bigoplus_{P,\ell,m}\mathfrak X_{E,\sqrt{\lambda_\ell}}, \qquad \Omega_\Sigma=\Omega_X\circ(R_X\times R_X).}
\end{align}$$

The intrinsic target is not defined as $R_X\mathcal S_E$.  Sectorwise it is the graph-closed fixed-point space $\ker_{\mathcal D_E(T_\ell)}(1-S_\ell T_\ell)$ of the closed two-sheet analysis operator, with
$\int\omega_{k\ell}|a_{k\ell}[f,g]|^2dk<\infty$.  The two-sheet formula,
Closed domain, inverse, exact core one-particle/energy norms, and explicit classical-energy $J_{X,E}$ kernel are in calculations 12--15.  The abstract one-particle completion and its bounded transported $J_{X,1}$ are stated separately: generic completed vectors need not have ordinary distribution-valued individual sheet profiles or pointwise corner traces.

The analytic bridge is the massive half-cross lemma: the null trace estimate puts both profiles and tangential derivatives in $L^2(\mathbb R_+)$, their symplectic tails vanish, Schwartz wave packets decay rapidly at null infinity, and density extends the vanishing exterior Cauchy flux to the full energy space. Hence the finite-cross Stokes identity converges to $\Omega_X=\Omega_\Sigma$ and injectivity follows from Cauchy nondegeneracy.

### General Reconstruction Boundary

The primary global theorem is on the gauge-invariant master/field-strength space.  Its proper-gauge potential-quotient corollary uses the explicit fixed-asymptotic-frame policy of calculation 16.  For an arbitrary product/curved double-null background, potential-level compatible data give a bulk proper-gauge quotient only after a separate Goursat existence, uniqueness, continuous-dependence, bundle/holonomy, and endpoint theorem.  That general theorem remains conditional.  Theorems I--II close only the stated $\mathbb R^{1,1}\times S^2_R$ radiative benchmark and do not turn integrated sheet transport into generic Maxwell surjectivity.

### Proposition F — Relative-Frame Polarization

**Status: proved and checked symbolically under the declared split-sheet endpoint polarization.** Give the two null sheets independent endpoint gauge frames $\chi_+,\chi_-$. After generator dressing and integration by parts, with the future endpoints fixed or retained, the shared-corner contribution to the potential is

$$\begin{align}
\Theta_{S_0}=-\int_{S_0}E_+\,\delta\chi_+ +\int_{S_0}E_-\,\delta\chi_-.
\end{align}$$

The diagonal corner gauge action has moment map

$$\begin{align}
\mu=E_+-E_-.
\end{align}$$

On $\mu=0$, quotienting the common frame leaves

$$\begin{align}
\lambda_{\mathrm{rel}}:=\chi_- -\chi_+, \qquad \Omega_{S_0}=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.
\end{align}$$

This is a derived polarization of the split characteristic description, not an extra raw bulk degree of freedom. It vanishes from the two-form in a fixed-flux sector and is absent as an independent pair in a single smooth bulk trivialization.

### Proposition G — Corrected Composition

**Status: necessary compatibility proved formally; identification with $P_X$ conditional on Theorem D and regular reduction.** The unrestricted product reduction is false. The candidate bulk characteristic image is

$$\begin{align}
P_X\simeq \left( \mathcal C_{\mathrm{corner}}
\subset P_{N_+}^{\mathrm{ext}}\times P_{N_-}^{\mathrm{ext}} \right)//G_{\mathrm{diag}}(S_0),
\end{align}$$

where $\mathcal C_{\mathrm{corner}}$ imposes electric matching, magnetic-curvature matching and connection/transition compatibility, together with harmonic/holonomy and bundle-sector matching when required. Only the electric matching equation is the moment map for the displayed diagonal scalar-frame action.

### Proposition H — Associativity

**Status: proved for the Abelian finite smooth reduction.** With three frames,

$$\begin{align}
\lambda_{13}=\lambda_{12}+\lambda_{23},
\end{align}$$

and electric matching is transitive. Reduction by the commuting internal $U(1)$ corner actions can therefore be performed in either order. Function-space closedness and non-Abelian singular strata are not covered.

## 4. B1 and B2 Boundary

Classical restriction/reconstruction and the Peierls/CCR comparison are B1. They concern observables and symplectic structure. The benchmark Peierls equality is proved in `10-peierls-and-propagator-check.md`. A state on two regional algebras also requires cross covariance; regional marginals do not determine it. That is B2; the stationary Fock state is an explicit global input, not something reconstructed from regional marginals.

The reusable characteristic-data lesson is

$$\begin{align}
\text{characteristic null data}= \text{sheetwise radiative data} +\text{lower-dimensional corner integration/constraint data} +\text{compatibility}.
\end{align}$$

Flux variables can suffice when a null surface is used only as a flux boundary. They do not suffice when the same null surface is used as characteristic input intended to reconstruct the bulk phase space.

## 5. Topological Qualification

On a contractible cut patch, $db^0=0$ is automatic in two dimensions and a local potential exists. On $S^2$, $H^1(S^2)=0$, so a closed difference of two corner potentials is exact, but $\int_{S^2}F/(2\pi)$ fixes the bundle's Chern class. The present formulae apply within one fixed bundle sector. For a general compact cut with $H^1(S)\neq0$, harmonic one-form frames and holonomies must be added explicitly; they are not contained in the scalar $\lambda_{\mathrm{rel}}$.
