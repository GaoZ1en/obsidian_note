# Formalism and Statement Order

## 1. Convention Manifest

Let

$$
D=[0,U]_u\times[0,V]_v\times S,
\qquad
N_+=\{u=0\},
\qquad
N_-=\{v=0\},
\qquad
S_0=N_+\cap N_-.
$$

The first model uses

$$
ds^2=-2\,du\,dv+q_{AB}dx^A dx^B,
\qquad
\operatorname{vol}_4=du\wedge dv\wedge\operatorname{vol}_S,
$$

with $q_{AB}$ independent of $(u,v)$. The spacetime signature is $(-+++)$. Field-space exterior differentiation is denoted by $\delta$; its wedge is displayed only when it prevents ambiguity. The Lee--Wald ordering is

$$
\omega(\delta_1,\delta_2)
=\delta_1A\wedge *\delta_2F-\delta_2A\wedge *\delta_1F.
$$

The initial characteristic form is defined with incoming orientation, so both generator integrals appear with positive parameter measures in the final formula. This convention is chosen so that

$$
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.
$$

## 2. Data Classes

Write

$$
E:=F_{uv},
\qquad
p_A:=F_{uA}|_{N_-},
\qquad
r_A:=F_{vA}|_{N_+},
\qquad
b_{AB}:=F_{AB}.
$$

The gauge-invariant smooth characteristic datum is

$$
\mathcal X_F=
\left(r_A(v,x),p_A(u,x),E_0(x),b^0_{AB}(x)\right),
$$

subject to the global bundle qualification in Section 5 below. Its constrained completion on the two sheets is obtained from

$$
\begin{aligned}
\partial_vE_+&=-D^Ar_A,
&\partial_vb^+_{AB}&=2D_{[A}r_{B]},\\
\partial_uE_-&=+D^Ap_A,
&\partial_ub^-_{AB}&=2D_{[A}p_{B]},
\end{aligned}
$$

with

$$
E_+(0)=E_-(0)=E_0,
\qquad
b^+_{AB}(0)=b^-_{AB}(0)=b^0_{AB}.
$$

Thus $r_A,p_A$ are free radiative profiles; $E,b_{AB}$ are transported; $E_0,b^0_{AB}$ are shared-corner integration data.

## 3. The Classical Statement Chain

### Lemma A — action and current

**Status: proved.** For

$$
L=-\frac12F\wedge *F,
\qquad F=dA,
$$

one may take

$$
\theta[A;\delta A]=-\delta A\wedge *F,
$$

and the displayed $\omega$. On the linearized solution space, $d\omega=0$.

### Lemma B — characteristic decomposition

**Status: proved and checked symbolically.** The two radiative profiles plus $(E_0,b^0_{AB})$ generate every component of the pullback of $F$ to $N_+\cup N_-$ by the four transport equations above. No $E(v,x)$ or $b_{AB}(v,x)$ profile may be assigned independently after $E_0,b^0$ are fixed.

### Proposition C — gauge contraction

**Status: proved.** For $\delta_\epsilon A=d\epsilon$,

$$
\omega(\delta_\epsilon,\delta)=d\left(\epsilon *\delta F\right)
$$

on the linearized solution space. Hence

$$
\iota_{\delta_\epsilon}\Omega_C
=\int_{\partial C}\epsilon\,\delta(*F).
$$

A gauge transformation is proper only relative to a declared endpoint phase space: it is a degeneracy if the last integral vanishes for every allowed variation. Nonzero cut values of (epsilon) are charged when the electric flux varies.

### Theorem D — local reconstruction/restriction equivalence

**Status: conditional analytic theorem.** Assume the standard smooth Goursat existence, uniqueness and continuous-dependence theorem for source-free Maxwell fields on the finite double-null diamond, in a fixed $U(1)$ bundle sector, and assume the four transport and corner compatibility equations above. Then restriction induces a bijection

$$
\frac{\operatorname{Sol}_{\mathrm{Max}}(D)}{\mathcal G_D^0}
\longrightarrow
\frac{\mathcal X_A^{\mathrm{comp}}}{\mathcal G_X^0},
$$

where $\mathcal X_A^{\mathrm{comp}}$ is the potential-level lift of $\mathcal X_F$, including its corner transition function, and the proper gauge groups use the same endpoint charge policy.

The formal proof of injectivity and constraint propagation is given in `01-maxwell-double-null.md`. The unproved boundary is not Maxwell algebra; it is the choice and proof of the exact completed Goursat function space and global bundle sector.

### Theorem E — symplectic comparison

**Status: proved conditional only on Theorem D's existence map.** On a compact slab bounded by the initial null cross, a spacelike Cauchy surface (Sigma), and side pieces with vanishing allowed symplectic flux,

$$
G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}.
$$

This is Stokes' theorem for $d\omega=0$. There is no missing universal $S_0$ term in the raw covariant current.

### Proposition F — relative-frame polarization

**Status: proved and checked symbolically.** Give the two null sheets independent endpoint gauge frames $\chi_+,\chi_-$. After generator dressing and integration by parts, the shared-corner contribution to the potential is

$$
\Theta_{S_0}=-\int_{S_0}E_+\,\delta\chi_+
+\int_{S_0}E_-\,\delta\chi_-.
$$

The diagonal corner gauge action has moment map

$$
\mu=E_+-E_-.
$$

On $\mu=0$, quotienting the common frame leaves

$$
\lambda_{\mathrm{rel}}:=\chi_- -\chi_+,
\qquad
\Omega_{S_0}=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.
$$

This is a derived polarization of the split characteristic description, not an extra raw bulk degree of freedom.

### Proposition G — corrected composition

**Status: proved at the formal linear symplectic level.** The product reduction alone is insufficient. The characteristic image is

$$
P_X\simeq
\left(
\mathcal C_{\mathrm{corner}}
\subset
P_{N_+}^{\mathrm{ext}}\times P_{N_-}^{\mathrm{ext}}
\right)//G_{\mathrm{diag}}(S_0),
$$

where $\mathcal C_{\mathrm{corner}}$ imposes electric matching, magnetic matching and connection/transition compatibility. Only the electric matching equation is the moment map for the displayed diagonal frame action.

### Proposition H — associativity

**Status: proved for the Abelian finite smooth reduction.** With three frames,

$$
\lambda_{13}=\lambda_{12}+\lambda_{23},
$$

and electric matching is transitive. Reduction by the commuting internal $U(1)$ corner actions can therefore be performed in either order. Function-space closedness and non-Abelian singular strata are not covered.

## 4. B1 and B2 Boundary

Classical restriction/reconstruction and the future Peierls/CCR comparison are B1. They concern observables and symplectic structure. A state on two regional algebras also requires cross covariance; regional marginals do not determine it. That is B2 and is not part of the current theorem.

## 5. Topological Qualification

On a contractible cut patch, $db^0=0$ is automatic in two dimensions and a local potential exists. On $S^2$, $H^1(S^2)=0$, so a closed difference of two corner potentials is exact, but $\int_{S^2}F/(2\pi)$ fixes the bundle's Chern class. The present formulae apply within one fixed bundle sector. For a general compact cut with $H^1(S)\neq0$, harmonic one-form frames and holonomies must be added explicitly; they are not contained in the scalar $\lambda_{\mathrm{rel}}$.
