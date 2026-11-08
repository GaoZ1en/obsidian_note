# Arbitrary finite radial order in fixed-frame vacuum gravity

## 0. Scope and verdict

This note completes Stage 4 in the following precise sense：

> For every fixed radial order $N$，the standard fixed-round Bondi class with no logarithm in the leading shear admits the same fixed-frame relative renormalization as the first-log class。No new action or symplectic divergence can first appear at order $N\geq3$。

The theorem is relative to a deliberately explicit category：

- fixed $\Omega=1/r$；
- fixed round $q_{AB}$；
- finite $u$-slab；
- luminosity-radius Bondi gauge；
- finite polyhomogeneous log caps at each radial order；
- finite tangential jets and finite normal jets；
- explicit $R$ and $L_R=\log(R/r_0)$；
- no inverse angular or $u$ operators；
- no new edge fields。

It is not a theorem that：

1. the resulting counterterms are conformal-frame covariant；
2. strict intrinsic counterterms suffice；
3. the formal series converges as $N\to\infty$；
4. arbitrary formal coefficients are realized by an actual vacuum spacetime；
5. the two-variable $(\Omega,\rho)$ expansion at $i^0$ is controlled。

The first item belongs to the Freidel--Riello category，the fourth is a PDE problem，and the fifth is Stage 7。

---

## 1. Model and standard finite-order histories

Use the exact metric and determinant parametrization of `4d nonlinear gravity.md`：

$$\begin{aligned}
d\widetilde s^2 = & e^{2\beta}\frac Vr\,du^2 -2e^{2\beta}du\,dr
\\
& +\gamma_{AB} \left( dx^A-U^Adu \right) \left( dx^B-U^Bdu \right),
\end{aligned}$$

$$\begin{align}
\gamma_{AB} = r^2q_{AB} \sqrt{ 1+\frac{[\mathcal C\mathcal C]}{2r^2}
} +r\mathcal C_{AB}, \qquad q^{AB}\mathcal C_{AB}=0,
\end{align}$$

and

$$\begin{align}
\mathcal V:=V+r.
\end{align}$$

For each fixed $N\geq3$，take

$$\begin{aligned}
\mathcal C_{AB} &= \sum_{n=0}^{N} r^{-n}
\sum_{k=0}^{K_n^{\mathcal C}} \mathcal C_{AB}^{n,k}L^k +\mathcal R_{\mathcal C,N}, \\
\beta &= \sum_{n=1}^{N+1} r^{-n}
\sum_{k=0}^{K_n^\beta} \beta_{n,k}L^k +\mathcal R_{\beta,N}, \\
U^A &= \sum_{n=2}^{N+2} r^{-n}
\sum_{k=0}^{K_n^U} U_{n,k}^AL^k +\mathcal R_{U,N}, \\
\mathcal V &= \sum_{n=0}^{N+1} r^{-n}
\sum_{k=0}^{K_n^{\mathcal V}} \mathcal V_{n,k}L^k +\mathcal R_{\mathcal V,N}.
\end{aligned}$$

The offsets merely ensure that two radial derivatives cannot pull an omitted coefficient into the target order。All displayed coefficients are independent off shell。

### 1.1 Standard leading caps

The standard sector is defined by

$$\begin{align}
\boxed{ K_0^{\mathcal C} = K_1^\beta = K_2^\beta = K_2^U = K_0^{\mathcal V} =0.
}
\end{align}$$

The coefficient $\mathcal V_1(L)$ may have a finite log polynomial because its outer-GHY contribution cancels the standard joint contribution exactly。The first angular logs are allowed in $\mathcal C_{AB}^{2,k}$，as in the GLZ class。

The restriction

$$\begin{align}
K_0^{\mathcal C}=0
\end{align}$$

is not an aesthetic convention：`4d spin-2.md` proves that a leading term

$$\begin{align}
\mathcal C_{AB}^{0,1}L
\end{align}$$

produces

$$\begin{align}
L_R^2
\delta\dot{\mathcal C}_{AB}^{0,1} \wedge \delta\mathcal C^{0,1\,AB}
\end{align}$$

in the outer symplectic flux。It is not a finite-$u$ endpoint descent in the present no-edge-field category。

### 1.2 Remainder Banach spaces

Fix $R_*\geq r_0$ and write

$$\begin{align}
\mathcal C_* = [R_*,\infty)_r \times [u_-,u_+]_u \times S^2.
\end{align}$$

For a tensor component $f$，define the finite-$s$ weighted-conormal norm

$$\begin{align}
\boxed{ \|f\|_{\rho,K;s} = \max_{j+m+|\alpha|\leq s} \sup_{\mathcal C_*} r^\rho (1+L)^{-K} \left| \mathsf D^j D_x^\alpha \partial_u^m f \right|, \qquad \mathsf D=r\partial_r.
}
\end{align}$$

The corresponding completed space is denoted by $\mathcal X_{\rho,K}^s$。For each field $X$，the fixed-$N$ coordinate norm is

$$\begin{align}
\boxed{ \|X\|_{N,s} = \sum_{n,k}
\|X_{n,k}\|_{C^s([u_-,u_+]\times S^2)} + \|\mathcal R_{X,N}\|_{\rho_{X,N},K_{X,N}^{\rm rem};s}.
}
\end{align}$$

The sums are finite。The product over

$$\begin{align}
X \in
\{ \mathcal C_{AB}, \beta, U^A, \mathcal V
\}
\end{align}$$

is a Banach space at fixed $s$；the projective limit over $s$ is the corresponding Fréchet space。

For $s\geq4$，require each remainder and every tangent variation to belong to this space。Equivalently，

$$\begin{align}
\left| \left( r\partial_r \right)^j
D_x^\alpha
\partial_u^m
\delta^\ell\mathcal R_{X,N} \right| \leq C_{\alpha,m,j,\ell} r^{-\rho_{X,N}} (1+L)^{K_{X,N}^{\rm rem}},
\end{align}$$

for

$$\begin{align}
j+m+|\alpha|\leq s, \qquad \ell=0,1,2,
\end{align}$$

with $\rho_{X,N}$ strictly beyond the last displayed weight after the component offsets above。Here $\delta^\ell\mathcal R$ denotes the $\ell$-th Fréchet derivative of a chart map evaluated on $\ell$ tangent vectors；it is not an independent formal coefficient。

On a ball on which

$$\begin{align}
F = 1-\frac{\mathcal V}{r}
\geq
f_*>0
\end{align}$$

and the angular metric remains nondegenerate，inverse metrics、determinants and every local density occurring in EH + GHY + joints are smooth maps of these Banach variables。

### 1.3 Quantitative $C^2$ cutoff estimate

The norm above obeys the elementary weighted Leibniz estimate

$$\begin{align}
\boxed{ \|fg\|_{\rho_1+\rho_2,K_1+K_2;s} \leq C_s
\|f\|_{\rho_1,K_1;s}
\|g\|_{\rho_2,K_2;s}.
}
\end{align}$$

The same estimate，combined with the ordinary finite-dimensional chain rule，applies to reciprocal、determinant and square-root maps on the nondegenerate ball。Since the regulated gravitational action has finite differential order，the subtracted radial density and its first two Fréchet derivatives satisfy，for every fixed $N$ and bounded ball $\mathbb B_N(B)$，

$$\begin{align}
\boxed{ \left|
D^\ell\mathscr L_{\rm sub}(r) \left[ v_1,\ldots,v_\ell \right] \right| \leq A_N(B)\, r^{-1-\epsilon_N} (1+L)^{K_N^{\rm eff}}
\prod_{i=1}^{\ell}
\|v_i\|_{N,s}, \qquad \ell=0,1,2.
}
\end{align}$$

Here：

- $\epsilon_N>0$ is the smallest post-subtraction radial gap furnished by the strict remainder weights；
- $K_N^{\rm eff}<\infty$ is the largest log degree produced by the finite local products；
- $A_N(B)$ is independent of $r$ and of the cutoff $R$，but may depend on $N$、the ball radius、$f_*^{-1}$ and the finite jet orders。

This is an estimate，not a topology declaration。For $R\geq R_*$，set

$$\begin{align}
\mathcal P_K(L_R;\epsilon) = \sum_{j=0}^{K} \frac{K!}{(K-j)!} \frac{(1+L_R)^{K-j}}{\epsilon^{j+1}}.
\end{align}$$

Direct radial integration gives

$$\begin{align}
\int_R^\infty
r^{-1-\epsilon}
(1+L)^K\,dr = R^{-\epsilon} \mathcal P_K(L_R;\epsilon).
\end{align}$$

Consequently，after also bounding the finite $u$-interval and $S^2$ volume，

$$
\boxed{
\begin{aligned}
&
\left|
D^\ell
\left(
S_{\rm ren}-S_{{\rm ren},R}
\right)
\left[
v_1,\ldots,v_\ell
\right]
\right|
\\
&\qquad
\leq
\mathcal C_N(B)\,
R^{-\epsilon_N}
\mathcal P_{K_N^{\rm eff}}
\left(
L_R;\epsilon_N
\right)
\prod_{i=1}^{\ell}
\|v_i\|_{N,s},
\qquad
\ell=0,1,2.
\end{aligned}
}
$$

The right-hand side tends to zero uniformly on bounded sets of fields and tangent vectors。The same argument applies to outer-face and joint remainders，with their corresponding positive post-subtraction weights。Thus $S_{{\rm ren},R}$ converges in the $C^2$ topology on bounded balls。In particular，

$$\begin{align}
\delta\lim_{R\to\infty} = \lim_{R\to\infty}\delta
\end{align}$$

twice，and the limiting Hessian is continuous。This supplies the estimate behind item 4 of Theorem 8.1；a merely formal series has no such implication。

### 1.4 Uniform-$N$ verdict

There is no $N$-uniform estimate on the presently declared unweighted finite-cap spaces。The obstruction already appears in the scalar radial integration map。For

$$\begin{align}
f_K(r) = r^{-1-\epsilon} \left[ \log(r/r_0) \right]^K
\end{align}$$

with unit coefficient，

$$\begin{align}
\boxed{ \int_{r_0}^{\infty}
f_K(r)\,dr = r_0^{-\epsilon} \frac{K!}{\epsilon^{K+1}}.
}
\end{align}$$

The GLZ caps permit $K_n\leq n+1$，so $K_N^{\rm eff}$ is not uniformly bounded as $N\to\infty$。Hence the operator norm of the radial primitive already grows at least factorially before nonlinear coefficient combinatorics or the increasing-degree Hermite projectors of Proposition 2.1 are included。

For fixed $s$，the conormal norm of $f_K$ grows at most polynomially，

$$\begin{align}
\|f_K\|_{1+\epsilon,K;s} \leq C_{s,\epsilon}(1+K)^s.
\end{align}$$

Normalizing by this norm therefore still leaves a lower bound proportional to

$$\begin{align}
\frac{K!}{(1+K)^s\epsilon^{K+1}},
\end{align}$$

so the factorial failure is not an artifact of using coefficient norm instead of the Banach norm。

A uniform theorem would require a different infinite-order space，for example：

1. a uniform positive gap $\inf_N\epsilon_N>0$；
2. factorial/Gevrey weights compensating $K!$；
3. a summability norm over radial order $n$ stable under nonlinear convolution；
4. control of the increasing normal-jet projectors，or replacement by an infinite-order radial functional calculus。

None of these follows from finite polyhomogeneous caps。If all log caps were bounded by a fixed $K_*$ and the radial coefficient norms were summable in $n$，the displayed estimate identifies a sufficient route to uniformity；the generic GLZ finite-cap hierarchy does not satisfy those hypotheses without additional coefficient decay。Thus the finite-$N$ $C^2$ theorem is now proved quantitatively，while its $N\to\infty$ upgrade fails in the current topology at the explicit $K!/\epsilon^{K+1}$ gate。

---

## 2. Finite normal jets recover every finite coefficient

The fixed-frame counterterm category can be stated at finite cutoff without treating asymptotic coefficients as mysterious nonlocal objects。

Let

$$\begin{align}
\mathsf D:=r\partial_r.
\end{align}$$

On a radial-log monomial，

$$\begin{align}
\boxed{ \left( \mathsf D+p \right) \left[ r^{-p}L^k \right] = k\,r^{-p}L^{k-1}.
}
\end{align}$$

For a finite index set

$$\begin{align}
\mathcal E_N = \left\{ (p,k) \mid
p\in P_N,\ 0\leq k\leq K_p \right\},
\end{align}$$

the space spanned by its radial monomials is a finite module on which $\mathsf D$ has Jordan blocks with eigenvalues $-p$。

### Proposition 2.1：finite-jet coefficient projectors

For every $p\in P_N$ there is a polynomial $Q_p(x)$ satisfying

$$\begin{align}
Q_p(x)
\equiv1
\mod (x+p)^{K_p+1},
\end{align}$$

and

$$\begin{align}
Q_p(x)
\equiv0
\mod (x+p')^{K_{p'}+1}, \qquad p'\neq p.
\end{align}$$

Consequently

$$\begin{align}
Q_p(\mathsf D)
\end{align}$$

projects a truncated polyhomogeneous field onto its complete radial-power-$p$ logarithmic block。

#### Proof

The ideals

$$\begin{align}
\left( (x+p)^{K_p+1} \right)
\end{align}$$

are pairwise coprime。The polynomial Chinese remainder theorem gives $Q_p$，unique modulo

$$\begin{align}
\prod_{p'\in P_N} (x+p')^{K_{p'}+1}.
\end{align}$$

Since $Q_p(\mathsf D)$ has finite degree，it uses only finitely many normal derivatives。Within a fixed block，successive powers of $\mathsf D+p$ give the triangular system

$$\begin{align}
\left( \mathsf D+p \right)^j \left[ r^{-p} \sum_{k=0}^{K_p} a_{p,k}L^k \right] = r^{-p}
\sum_{k=j}^{K_p} \frac{k!}{(k-j)!} a_{p,k}L^{k-j},
\end{align}$$

which recovers $a_{p,K_p},a_{p,K_p-1},\ldots,a_{p,0}$ recursively。$\square$

Thus every finite-order coefficient-local density can be represented by a finite-cutoff density built from finite normal jets and explicit $R,L_R$。This is why the theorem below belongs to an extended fixed-normal category rather than automatically to a strict intrinsic Dirichlet category。

### Machine check

Mathematica constructed the Hermite projectors for

$$\begin{align}
(p,K_p) \in \left\{ (0,0),(1,1),(2,2) \right\}
\end{align}$$

and applied them to

$$\begin{align}
f = a_0 +r^{-1} \left( a_{10}+a_{11}L \right) +r^{-2} \left( a_{20}+a_{21}L+a_{22}L^2 \right).
\end{align}$$

The three block residuals and the three triangular coefficient-recovery residuals were all zero。

---

## 3. The all-$N$ action-weight theorem

The key input is the exact physical/conformal identity

$$\begin{align}
\boxed{ \frac{\sqrt{-\widetilde g}\,\widetilde R}{\sqrt q} = e^{2\beta}z^{-2}R[g] -6z^{-1}\mathcal V -6\partial_z\mathcal V +6z^{-3}D_AU^A, \qquad z=\frac1r.
}
\end{align}$$

Together with the exact outer-GHY and joint formulae of `4d nonlinear gravity.md`，this fixes the entire divergent support before any Einstein equation is used。

### 3.1 Bulk support

| Exact term | Coefficients that can be non-integrable at $z=0$ |
|---|---|
| $e^{2\beta}z^{-2}R[g]$ | the $z^0$ and $z^1$ coefficients of $e^{2\beta}R[g]$ |
| $-6z^{-1}\mathcal V$ | $\mathcal V_0$ |
| $-6\partial_z\mathcal V$ | only a forbidden log at $z^0$；standard $\mathcal V_0$ is log-free |
| $6z^{-3}D_AU^A$ | $U_2^A$ |

The two curvature coefficients in the first row were computed in Stage 3：

$$\begin{align}
\left[ e^{2\beta}R[g] \right]_{z^0} = -4\dot\beta_1,
\end{align}$$

$$\begin{aligned}
\left[ e^{2\beta}R[g] \right]_{z^1} = & D_AD_BC^{AB} -4D_AU_2^A -4D^2\beta_1
\\
& +6\mathcal V_0 -8\dot\beta_2 -\frac12C^{AB}\dot C_{AB}.
\end{aligned}$$

Every deeper coefficient has positive additional radial weight。Products cannot lower that weight，and radial differentiation has already been included in the exact $R[g]$ coefficient calculation。Therefore no term added at $N\to N+1$ can modify the bulk divergence。

### 3.2 Outer and joint support

The exact outer density is

$$\begin{aligned}
\frac{\sqrt{-\widetilde\gamma}\widetilde K}{\sqrt q} = & 2r-\frac32\mathcal V +r^2F\beta' -\frac r2\mathcal V'
\\
& -r^2\dot\beta -\frac{r\dot{\mathcal V}}{2F}
\\
& -r^2 \left[ D_AU^A +U^AD_A\beta -\frac12U^AD_A\log F \right],
\end{aligned}$$

where $F=1-\mathcal V/r$。Its divergent field-dependent support can involve only

$$\begin{align}
\beta_1, \qquad \mathcal V_0, \qquad \mathcal V_1(L_R).
\end{align}$$

The exact outer joint angle is

$$\begin{align}
\eta = -\beta -\frac12\log F,
\end{align}$$

so

$$\begin{align}
2R^2\eta = R(-2\beta_1+\mathcal V_0) +\mathcal V_1(L_R) -2\beta_2 +\frac12\mathcal V_0^2 +o(1).
\end{align}$$

The $\mathcal V_0$ and $\mathcal V_1(L_R)$ divergences cancel between bulk/outer and the standard joint。No coefficient deeper than $\beta_2$ or $\mathcal V_1$ can enter a divergent joint density。

### Proposition 3.1：no new action divergences

For every fixed $N\geq3$，the complete field-dependent divergent action is exactly the Stage 3 expression

$$
\boxed{
\begin{aligned}
16\pi G\,S_{\rm div}^{(N)}
=
\left[
\int_{S^2}d^2x\sqrt q
\left\{
-8R\beta_1
+L_R
\left(
-8\beta_2-\frac14[CC]
\right)
\right\}
\right]_{u_-}^{u_+}
\\
{}+
\int du\,d^2x\,
D_A
\left(
L_R\sqrt q\,\mathcal J^A
\right),
\end{aligned}
}
$$

up to the fixed inner boundary and field-independent Minkowski subtraction。

The Stage 3 endpoint and angular relative counterterms therefore renormalize the action for every finite $N$。No induction step creates a new action counterterm。

#### Proof

The exact formulae above show that the divergent radial support is finite。The $z^0,z^1$ curvature coefficients and the outer/joint coefficients depend only on the Stage 3 jet。All new $N+1$ data enter with a strictly positive extra power of $z$；polyhomogeneous logarithms cannot overcome a positive power。Proposition 2.1 realizes the required coefficient functionals by allowed finite normal jets。The quantitative estimate of section 1.3 justifies termwise radial integration and two variations。$\square$

---

## 4. Symplectic induction and its only radial obstruction

Action counterterms alone cannot cancel a nontrivial divergent symplectic two-form，because

$$\begin{align}
\delta^2S_{\rm ct}=0.
\end{align}$$

The symplectic statement therefore requires a separate weight argument。

### 4.1 Outer boundary

For a coefficient $\mathcal C_{AB}^{n,k}$，

$$\begin{align}
\delta\gamma_{AB}^{(n,k)} = \mathcal O \left( r^{1-n}L^k \right).
\end{align}$$

The tracefree Brown--York momentum conjugate to the leading angular deformation begins at order $r^{-1}$。A bilinear symplectic pairing between radial levels $n$ and $m$ therefore has weight

$$\begin{align}
\mathcal O \left( r^{-(n+m)}
L^{k+\ell} \right).
\end{align}$$

Only

$$\begin{align}
n=m=0
\end{align}$$

can survive at $\mathscr I$。All nonlinear corrections contain at least one further factor of $r^{-1}$ because the dimensionless angular deformation is

$$\begin{align}
\frac{\mathcal C}{r}.
\end{align}$$

The scalar leading terms give the field-space exact one-form

$$\begin{align}
4\delta\beta_1 -2\delta\mathcal V_0
\end{align}$$

and hence no symplectic two-form。Therefore

$$\begin{align}
\boxed{ \Omega_{\mathscr I}^{(N)} = \frac1{32\pi G} \int du\,d^2x\sqrt q\, \delta\dot C^{AB} \wedge \delta C_{AB}
}
\end{align}$$

for every finite $N$。

If $C_{AB}$ itself contains $L^k$ with $k>0$，the same weight-zero block instead produces powers of $L_R$，including the Stage 2B obstruction

$$\begin{align}
L_R^2
\delta\dot C_{AB}^{(1)} \wedge \delta C^{(1)\,AB}.
\end{align}$$

Thus $K_0^{\mathcal C}=0$ is the unique radial obstruction boundary in the declared category。

### 4.2 Null lids

The least-decaying asymptotic lid pairing is

$$\begin{align}
\frac1{r^2}
\delta D^{AB} \wedge \delta C_{AB}.
\end{align}$$

Every newly added radial level gains at least one further power of $r^{-1}$。Hence the tail of the lid symplectic integral is dominated by

$$\begin{align}
\int_R^\infty \frac{L^K}{r^2}\,dr,
\end{align}$$

which converges for every finite $K$。The finite lid form depends on the full radial profile，but its existence is uniform in $N$。

### Proposition 4.1：symplectic induction

Assume the standard leading caps and the $C^2$ remainder bounds。Then

$$\begin{align}
\Omega_{\rm ren}^{(N+1)} -\Omega_{\rm ren}^{(N)}
\end{align}$$

has a vanishing outer limit and an absolutely convergent lid tail。Therefore finiteness and closedness at order $N$ imply finiteness and closedness at order $N+1$。

No Einstein equation is used。

---

## 5. Counterterm-complex finiteness and scale anomaly

At a fixed radial weight，only finitely many monomials can occur because：

1. every subleading field has positive effective $z$ weight；
2. each derivative changes weight by a fixed integer；
3. the Lagrangian has finite differential order；
4. each log cap is finite；
5. the target counterterm category has a fixed tangential jet order。

Leading $C_{AB}$ has coefficient weight zero，but it enters the dimensionless metric as $zC_{AB}$，so increasing its polynomial degree also increases effective radial weight。Thus the relative local complex at each weight is finite-dimensional modulo integrations by parts and two-dimensional tensor identities。

### 5.1 Resonant radial primitive

For $a\neq-1$，

$$\begin{align}
\int
z^a(\log z)^k\,dz = z^{a+1}
\sum_{j=0}^k \frac{(-1)^j k!}{(k-j)!(a+1)^{j+1}} (\log z)^{k-j},
\end{align}$$

whereas the sole resonance is

$$\begin{align}
\int
z^{-1}(\log z)^k\,dz = \frac{(\log z)^{k+1}}{k+1}.
\end{align}$$

The resonance creates the logarithmic counterterm/anomaly but does not obstruct the finite-$N$ primitive。

### 5.2 Wess--Zumino check

A change of subtraction scale

$$\begin{align}
r_0\longmapsto e^\sigma r_0
\end{align}$$

acts by

$$\begin{align}
L\longmapsto L-\sigma.
\end{align}$$

The resulting finite scale variation is the local coefficient of the logarithmic counterterm。Since the scale group is abelian，

$$\begin{align}
\boxed{ \left[ \Delta_{\sigma_1}, \Delta_{\sigma_2} \right]
S_{\rm ren}^{(N)} =0.
}
\end{align}$$

This is the Wess--Zumino consistency condition available in the fixed-frame problem。A local angle-dependent Weyl parameter changes $q_{AB}$ and belongs to Stage 5；its cohomology is not silently identified with this constant-scale check。

---

## 6. Formal Einstein recursion

Only now impose

$$\begin{align}
\widetilde G_{\mu\nu}=0.
\end{align}$$

For the GLZ logarithmically-asymptotically-flat sector，the angular metric caps are

$$\begin{align}
0\leq m\leq n+1
\end{align}$$

at radial level $E_{AB}^{n,m}/r^n$。The hypersurface equations determine the corresponding caps of $\beta,U^A,V$，and the tracefree angular equation has the triangular structure

$$\begin{align}
\dot D_{AB}=0, \qquad \dot E_{AB}^{n,n+1}=0,
\end{align}$$

$$\begin{align}
\dot E_{AB}^{n,n} = -\frac{n}{2(n+2)(n-1)} \left[ \Delta +\frac12(n^2+n-4)R \right] E_{AB}^{n-1,n}, \qquad n\geq2.
\end{align}$$

At $n=1$，

$$\begin{align}
\dot E_{AB}^{1,1} = \frac16(\Delta-R)D_{AB}.
\end{align}$$

Therefore the finite-cap GLZ index family is preserved by the formal radial and retarded-time recursion。The completed off-shell hull is broader，so it is preserved as well。

This proves formal compatibility only。It does not turn freely assigned formal coefficients into actual characteristic data。

---

## 7. Actual PDE realization boundary

Kádár--Kehrberger prove semiglobal scattering constructions and propagation of polyhomogeneity for a class of quasilinear wave equations near $i^0$，and state that their harmonic-gauge framework applies to the vacuum Einstein equations。This supplies a genuine PDE entry point，not merely a formal recursion。

What remains unproved for the present action domain is the composite map

$$
\boxed{
\begin{aligned}
\text{admissible characteristic/harmonic-gauge data}
&\longrightarrow
\text{actual vacuum solution}
\\
&\longrightarrow
\text{Bondi luminosity gauge}
\\
&\longrightarrow
\mathcal F_{\rm off}^{(N)}
\text{ with the declared }C^2\text{ bounds}.
\end{aligned}
}
$$

In particular，one must control：

- the coordinate transformation to luminosity radius without losing polyhomogeneous weights；
- uniform angular summability；
- the two field-space variations needed by the action topology；
- compatibility with both null ends and $i^0$。

These are analytic realization questions，not missing algebraic counterterms。

---

## 8. Stage 4 theorem and obstruction ledger

### Theorem 8.1：finite-$N$ fixed-frame renormalization

For every fixed $N\geq3$，on the standard history space of section 1 and in the finite-normal-jet fixed-frame category：

1. the nonlinear Bondi parametrization and the Einstein Lagrangian are closed on the completed finite index family；
2. all action divergences have the Stage 3 support and are removed by the same relative boundary/corner counterterms；
3. no new non-exact symplectic divergence occurs at $N\to N+1$；
4. the renormalized functional is $C^2$ in the declared finite-order weighted-conormal topology，with the explicit uniform-on-bounded-balls cutoff estimate of section 1.3；
5. its scale anomaly is local and satisfies the fixed-frame Wess--Zumino condition；
6. the formal vacuum Einstein hierarchy preserves the GLZ finite-log caps。

The only radial obstruction in the declared category is a logarithm in the leading shear。Actual PDE realization and conformal-frame-covariant/intrinsic completeness are separate unproved statements。

### Status table

| Stage 4 requirement | Verdict |
|---|---|
| Nonlinear closure at finite $N$ | Proved |
| Finite local basis at each weight | Proved relative to bounded jets |
| Counterterm induction | Proved；no new divergent support after Stage 3 |
| First obstruction | Leading-log shear at weight zero |
| Wess--Zumino consistency | Proved for fixed-frame scale transformations |
| $C^2$ remainder control | Proved at fixed $N$ by the section 1.3 tail estimate |
| Uniformity as $N\to\infty$ | Fails in the present norms at $K!/\epsilon^{K+1}$；requires factorial/summability weights |
| Formal EOM preservation | Source-derived and matched |
| Actual PDE realization | Completed on normalized no-caustic exterior collars by `4d nonlinear gravity.md` Theorem 12.3 |
| Strict intrinsic/conformal-covariant all-order scheme | Not proved |
| Infinite-order analytic status | Purely asymptotic in the declared smooth/polyhomogeneous category；section 9 |

---

## 9. Infinite-order analytic status

### 9.1 三个不同概念

对

$$\begin{align}
g \sim
\sum_{n=0}^{\infty} \rho^nP_n(\log\rho), \qquad \rho=r^{-1},
\end{align}$$

必须区分：

1. **Polyhomogeneous asymptoticity**

$$\begin{align}
g
   - \sum_{n<N} \rho^nP_n(\log\rho) = \mathcal O_{\mathrm{con}}(\rho^N)
\end{align}$$

   for every fixed $N$；

2. **Convergence**

   infinite sum在某个 $0<\rho<\rho_*$ 的 function-space norm 中 converges to $g$；

3. **Borel summability**

   coefficients至少满足某个 Gevrey bound，Borel transform有 analytic continuation和 exponential-growth control，其 Laplace transform恢复一个指定的 $g$。

Kádár--Kehrberger 的 propagation theorem和本文 Theorem 8.1只给第一项。它们都不蕴含第二或第三项。

### 9.2 Formal hierarchy 不可能推出 universal convergence

Section 6 的 triangular hierarchy在每个 radial level留下 freely specifiable cut coefficients。固定一个 smooth STF tensor $T_{AB}(x)$，取

$$\begin{align}
E_{AB}^{n,0}(u_0,x) = (n!)^2T_{AB}(x),
\end{align}$$

并由 formal Einstein recursion生成其余 coefficients。每个 finite truncation都良定义，但 scalar majorant

$$\begin{align}
\sum_{n=0}^{\infty} (n!)^2\rho^n
\end{align}$$

对任意 $\rho\neq0$ 都发散，因为 successive-term ratio 是

$$\begin{align}
(n+1)^2|\rho| \longrightarrow
\infty.
\end{align}$$

它甚至不是 ordinary Borel-$1$：一次 Borel transform仍有 coefficients $n!$，radius of convergence仍为零。把 $(n!)^2$ 换成 $(n!)^s$ 或 $e^{n^2}$ 可得到任意 Gevrey order或 no finite Gevrey order。

Polyhomogeneous Borel extension lemma仍可用 shrinking radial cutoffs构造一个 smooth function具有这组 divergent asymptotic jets；不同 extensions相差 $\mathcal O(\rho^\infty)$。这叫 **Borel realization of a jet**，不是 Borel summation，也不保证 extension满足 Einstein equations。

所以

$$\begin{align}
\boxed{ \text{formal recursion}
\not\Longrightarrow
\text{convergent radial series}.
}
\end{align}$$

这个反例不依赖 gravity nonlinearity；scalar、Maxwell和 massless matter 的 freely specifiable formal cut jets也有同样问题。

### 9.3 Actual PDE solution 也只由 asymptotic jet控制到 flat remainder

`4d nonlinear gravity.md` Theorem 12.3 把 actual harmonic solution送到 Bondi history，并对每个 fixed $N$ 给 remainder estimate。它不使

$$\begin{align}
N\to\infty
\end{align}$$

uniform。实际 solution还可含

$$\begin{align}
\mathcal O(\rho^\infty)
\end{align}$$

而非零的 sectors；例如 nonstationary oscillatory integral 的 incoming branch在 finite future-null slab上可为 $O(r^{-\infty})$，却不在 finite $r$ identically vanish。因而 full formal jet一般既不收敛到 solution，也不唯一决定 solution。

Kádár--Kehrberger 的 result应精确读取为

$$\begin{align}
\boxed{ \text{polyhomogeneous data}
\Longrightarrow
\text{actual solution with a full asymptotic expansion}, }
\end{align}$$

而不是 “the expansion converges”。

### 9.4 当前 action topology 为什么也不能取 uniform $N$

Section 1.4 已给出独立于 EOM 的 quantitative obstruction：

$$\begin{align}
\int_{r_0}^{\infty}
r^{-1-\epsilon} \left[ \log(r/r_0) \right]^Kdr = r_0^{-\epsilon} \frac{K!}{\epsilon^{K+1}}.
\end{align}$$

当 $K_n\leq n+1$ 时，fixed-order radial primitive的 norm至少 factorial growth。故即使某个 metric series碰巧 pointwise convergent，当前 unweighted coefficient/conormal topology仍不足以交换

$$\begin{align}
\lim_{N\to\infty}, \qquad \lim_{R\to\infty}, \qquad \delta, \qquad \delta^2.
\end{align}$$

这和上一节的 coefficient divergence是两个不同 obstruction：

- arbitrary cut jets否定 universal series convergence；
- $K!/\epsilon^{K+1}$ 否定当前 action estimate的 uniform-$N$ boundedness。

### 9.5 哪些额外假设足以重新提问

若要得到一个真正 infinite-order theorem，至少要另定义 coefficient space。例如可要求

$$\begin{align}
\sum_{n=0}^{\infty}
\sum_{k=0}^{K_n} A^n \tau^k k!\, \|a_{n,k}\|_{C^s}
< \infty \tag{9.1}
\end{align}$$

for some $A,\tau>0$。这同时：

- 强制 radial coefficients有 exponential decay；
- 用 $k!$ penalty抵消 resonant primitive的 log-factorial growth；
- 在适当减小 $\rho_*$ 后使
  $\sum\rho^nP_n(\log\rho)$ normally convergent；
- 对 finite products和 analytic composition可建立 Banach-algebra estimate。

另一条路线是 radial-order Gevrey bound

$$\begin{align}
\|P_n\|_{\tau,s} \leq CA^n(n!)^\sigma. \tag{9.2}
\end{align}$$

它只保证 local Borel transform在 $\sigma$-Borel plane near the origin converges。要宣称 Borel summability还必须证明：

1. Borel-transformed nonlinear Einstein/matter hierarchy可解；
2. transform沿指定 ray analytic continue；
3. 有 uniform exponential bound；
4. Stokes directions和 log-resonant sectors得到一致 lateral prescription；
5. Laplace sum满足原 PDE、boundary conditions和 action $C^2$ bounds。

当前文献和本项目均未给出这些 estimates。因此 (9.1)--(9.2) 是新的 model assumptions/research programme，不是现有 theorem 的 consequence。

### 9.6 Vacuum、massless matter 与 massive sector

上述 negative verdict 对三个 sector的含义不同：

- **Vacuum gravity**：free higher cut aspects已足以构造 zero-radius formal families；actual small-data theorem只给 polyhomogeneous remainders。
- **Massless scalar/Maxwell**：null-characteristic recursions同样允许 arbitrary smooth jets；nonlinear backreaction不提供 coefficient-growth bound，所以仍只有 asymptotic status。
- **Massive matter**：generic massive fields的主要 asymptotics位于 $i^\pm$，带 timelike oscillatory phase，而不是单纯的 null-radial polyhomogeneous series。其 null expansion即使 asymptotic，也不能替代 hyperbolic/timelike expansion；因此在完成 coupled $i^\pm$ category前，连同一个 radial Borel problem都没有被正确定义。

### Theorem 9.1：analytic-status verdict

在本文的 smooth finite-log polyhomogeneous history spaces、Kádár--Kehrberger actual-solution class及目前的 action norms中：

$$\begin{align}
\boxed{ \text{nonlinear gravity/matter radial series are controlled only as asymptotic expansions}.
}
\end{align}$$

更精确地：

1. universal convergence是 false，section 9.2 给出 zero-radius formal families；
2. Borel realization of arbitrary jets成立但 nonunique，且不等于 solving the PDE；
3. ordinary或 higher-order Borel summability均 not proved，现有 hypotheses甚至不 impose a finite Gevrey order；
4. analytic/factorially weighted subcategories可能支持 convergence或 summability theorem，但必须作为严格更小的新 phase space另行证明。

这是一项 negative/conditional classification，不是把 unknown 简写成 “probably asymptotic”。

---

## 10. Sources and verification

Sources：

- Laurent Freidel and Aldo Riello，[Renormalization of conformal infinity as a stretched horizon](https://arxiv.org/abs/2402.03097)，especially the polyhomogeneous radial homotopy and symplectic-renormalization algorithm。
- Marc Geiller，Alok Laddha and Céline Zwikel，[Symmetries of the gravitational scattering in the absence of peeling](https://arxiv.org/abs/2407.07978)，especially the all-order finite-log caps and triangular evolution equations。
- Istvan Kádár and Leonhard Kehrberger，[Scattering, Polyhomogeneity and Asymptotics for Quasilinear Wave Equations From Past to Future Null Infinity](https://arxiv.org/abs/2501.09814)，for the PDE realization entry point。

Verified：

- the exact bulk、GHY and joint identities were verified in `4d nonlinear gravity.md`；
- Mathematica returned zero for all Hermite-projector and triangular coefficient-extraction residuals in Proposition 2.1；
- Mathematica evaluated the tail integral in section 1.3 for $0\leq K\leq8$ and returned zero against the displayed closed form；it also verified the $R=r_0$ factorial specialization for $0\leq K\leq12$；
- Mathematica verified the ratio tests in section 9.2：$(n!)^2\rho^n$ has ratio $(n+1)^2\rho$，its first Borel transform has ratio $(n+1)\rho$，and only division by $(n!)^2$ removes that factorial growth；
- Mathematica differentiated the nonresonant and resonant primitives of section 5.1 for $0\leq k\leq6$ and returned zero residuals；
- Mathematica previously verified the complete Stage 3 divergent coefficients and the cancellation of outer/joint $\mathcal V_1(L_R)$ terms；
- the GLZ source TeX was checked directly for the caps $m\leq n+1$ and the displayed evolution equations；
- Pandoc parsing is part of the final note audit。

Assumptions：

- fixed round $q_{AB}$、fixed $\Omega$ and fixed null normalization；
- finite $u$-slab；
- standard leading log caps；
- finite normal jets and explicit cutoff dependence are allowed；
- the remainder estimates of section 1.2。

Not verified：

- strict intrinsic counterterm completeness；
- local Weyl Wess--Zumino cohomology；
- actual vacuum PDE realization in Bondi luminosity gauge；
- convergence or summability of the infinite radial series。
