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

**Status: false.** The pair $(F_{vA}|_{N_+},F_{uA}|_{N_-})$ alone does not form complete double-null characteristic data. The electric and magnetic examples in Section 2 lie in its kernel.

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

### Theorem D — Bulk Reconstruction/Restriction Equivalence

**Status: conditional in general; proved for the product-benchmark radiative sectors.** Fix a function space in which the Maxwell or Lorenz-potential Goursat problem on the chosen double-null domain has existence, uniqueness and continuous dependence. Also fix a $U(1)$ bundle/holonomy sector, impose the transport and full corner compatibility conditions, and use one endpoint charge policy on the bulk and characteristic sides. Under precisely those hypotheses, restriction induces a bijection

$$\begin{align}
\frac{\operatorname{Sol}_{\mathrm{Max}}(D)}{\mathcal G_D^0} \longrightarrow \frac{\mathcal X_A^{\mathrm{comp}}}{\mathcal G_X^0},
\end{align}$$

where $\mathcal X_A^{\mathrm{comp}}$ is the potential-level lift of $\mathcal X_F$, including its corner transition function, and the proper gauge groups use the same endpoint charge policy.

Here $\mathcal X_A^{\mathrm{comp}}$ retains the potential-level connection/frame data needed when quotienting only by proper gauge; $\mathcal X_F$ alone describes the gauge-invariant field-strength sector but forgets charged boundary frames. The proved direction is that every bulk solution restricts to compatible data. Existence and uniqueness of a bulk solution are imported together from the Goursat theorem; integrated transport equations prove neither. Rácz's Newman--Penrose treatment supplies a useful smooth local structural cross-check, but not the exact fixed-background Sobolev quotient asserted here.

For $M=\mathbb R^{1,1}\times S^2_R$ and every $\ell\geq1$ electric/magnetic master sector, `07-characteristic-mode-reconstruction.md` supplies the missing theorem directly: matched $H^1$ profiles reconstruct through a Bessel/Riemann kernel with a bounded inverse, and the smooth weighted harmonic sum is continuous. The $\ell=0$ flux/Chern data remain separate, and no generic curved-background conclusion follows from this benchmark.

### Theorem E — Symplectic Comparison

**Status: proved conditional only on Theorem D's existence map.** On a compact slab bounded by the initial null cross, a spacelike Cauchy surface (Sigma), and side pieces with vanishing allowed symplectic flux,

$$\begin{align}
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.
\end{align}$$

This is Stokes' theorem for $d\omega=0$. There is no missing universal $S_0$ term in the raw covariant current.

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
