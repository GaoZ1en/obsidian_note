# Independent review: global AdS3 boundary diffeomorphisms, completeness, and the finite CS/diffeomorphism distinction

## Results and scope

**The boundary-extension claim is true.** Every pair of smooth orientation-preserving degree-one circle lifts in the question has a smooth global bulk extension, isotopic to the identity, with the required radial compensation and projective stresses. A construction below gives uniform control for all global times, proves global injectivity and surjectivity, and can keep the fixed vector field `∂t` future timelike for the pulled-back metric. It does not assume that a finite circle diffeomorphism is one autonomous exponential.

**Smoothness, the topology `R × disk`, and Brown–Henneaux (BH) falloffs alone do not give an exhaustion theorem.** There is an explicit smooth, stably causal, geodesically incomplete Einstein metric with exactly the global-AdS metric in a fixed asymptotic collar. It is not globally hyperbolic, even when the timelike conformal boundary is included, and is not maximal. Consequently this example is not an obstruction inside an already GH/AdS-GH-restricted domain.

**On an unrestricted smooth BH field space, restricting finite Chern–Simons gauge paths to everywhere nondegenerate coframes is still insufficient to identify them with complete spacetime-diffeomorphism paths.** The same example gives a smooth boundary-trivial CS gauge path through invertible coframes; its induced time-dependent spacetime flow loses completeness at the endpoint. This last analysis responds to an additional supplied question, not to a parent candidate proof.

No parent candidate conclusions were read. The only project authority consulted was the GH/AdS-GH assumption at [formalism.md:1](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L1>). No symplectic calculation is used here.

## 1. Objects and conventions

The interior spacetime is

\[
M=\mathbb R_t\times D^2,
\qquad
g_0=\ell^2\left[-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\phi^2\right],
\]

where `r ≥ 0`, `φ ~ φ + 2π`, and the polar origin is a smooth disk center. The conformal boundary, not part of the physical metric manifold, is `R × S1`. All coordinates here are dimensionless and `ℓ > 0` has units of length. Use signature `(-,+,+)`, the usual orientation, and future direction `∂t` for `g0`.

Put

\[
u=t+\phi,\qquad v=t-\phi.
\]

The boundary cylinder is the quotient of the `(u,v)` plane by

\[
(u,v)\sim(u+2\pi,v-2\pi).
\]

Given smooth real functions

\[
f_\pm(x+2\pi)=f_\pm(x)+2\pi,
\qquad f_\pm'(x)>0,
\]

the boundary map is

\[
h([u,v])=[f_+(u),f_-(v)].
\]

The fixed boundary representative is

\[
\eta=-dt^2+d\phi^2=-du\,dv.
\]

The stress convention is the dimensionless Bañados/projective convention, with global-AdS values `L+ = L− = −1/4`; no Brown–York prefactor is included.

Near infinity use the global-AdS Fefferman–Graham radial coordinate

\[
r=z^{-1}-z/4,
\qquad z=\frac{2}{r+\sqrt{1+r^2}},
\qquad 0<z\leq2.
\]

The point `z=2` is the polar center, so this is only a regular coordinate system away from that center. In the collar,

\[
\frac{g_0}{\ell^2}
=\frac{dz^2-du\,dv}{z^2}
-\frac{du^2+dv^2}{4}
-\frac{z^2}{16}du\,dv.
\tag{1}
\]

We never attempt to extend a boundary FG coordinate chart through all of the bulk.

## 2. A uniformly controlled boundary isotopy

Use the explicit, generally nonautonomous isotopy

\[
f_{\pm,s}(x)=(1-s)x+s f_\pm(x),\qquad 0\leq s\leq1.
\tag{2}
\]

Each member is a degree-one orientation-preserving lift because

\[
f_{\pm,s}'=(1-s)+s f_\pm'>0.
\]

There is one lower bound `m > 0`, valid for both signs, all `s`, and all `x`. All derivatives of `f±,s − x`, and all derivatives of the inverse circle maps needed below, are uniformly bounded. These facts follow from smooth periodicity and compactness of `[0,1] × S1`.

The corresponding cylinder maps are

\[
T_s=\frac{f_{+,s}(u)+f_{-,s}(v)}2,
\qquad
\Phi_s=\frac{f_{+,s}(u)-f_{-,s}(v)}2.
\]

They obey `T_s(t+2π,φ)=T_s(t,φ)+2π` and `Φ_s(t+2π,φ)=Φ_s(t,φ)`. Thus the nontrivial coefficients and all their derivatives are uniformly controlled in the noncompact time direction. This periodicity is an available property of the data, not an imposed time quotient of the spacetime.

## 3. Collar jets, radial compensation, and stresses

At a fixed `s`, abbreviate

\[
P=f_{+,s}'(u),\qquad Q=f_{-,s}'(v),\qquad
\alpha=\partial_u\log P,\qquad \beta=\partial_v\log Q,
\qquad a=\sqrt{PQ},\qquad c=\alpha\beta/4.
\]

Define a collar map `C_s` by

\[
\boxed{
\begin{aligned}
U&=f_{+,s}(u)+\frac{z^2}{2}P\beta,\\
V&=f_{-,s}(v)+\frac{z^2}{2}Q\alpha,\\
Z&=a z(1+c z^2).
\end{aligned}}
\tag{3}
\]

For a sufficiently small collar, uniformly in `s,u,v`, the factor `1+c z²` is positive. The formula respects the cylinder identification: `(U,V)` changes by `(2π,−2π)` under the source spatial deck transformation.

The leading radial factor is forced by the fixed boundary representative:

\[
h_s^*\eta=PQ\,\eta=a^2\eta,
\qquad Z/z\longrightarrow a.
\]

Thus `(Z^{-2}h_s^*η)` has the same leading `z^{-2}η` as the original metric. The `z²` tangential corrections cancel the otherwise present `z^{-1} dz dx` terms. The displayed cubic normal correction is convenient: it also kills the constant terms in `gzz − ℓ²/z²` and `guv + ℓ²/(2z²)`.

Direct substitution in (1) gives

\[
\begin{aligned}
(C_s^*g_0)_{zz}/\ell^2&=z^{-2}+O(z^2),\\
(C_s^*g_0)_{zi}/\ell^2&=O(z),\\
(C_s^*g_0)_{uv}/\ell^2&=-\frac1{2z^2}+O(z^2),\\
(C_s^*g_0)_{uu}/\ell^2&=-\frac14P^2+\frac14\alpha^2-\frac12\alpha'+O(z^2),\\
(C_s^*g_0)_{vv}/\ell^2&=-\frac14Q^2+\frac14\beta^2-\frac12\beta'+O(z^2).
\end{aligned}
\tag{4}
\]

Here `i ∈ {u,v}` and the primes on `α,β` are their respective one-variable derivatives. Since

\[
\operatorname{Sch}(f,x)=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2
=\partial_x(f''/f')-\frac12(f''/f')^2,
\]

(4) gives, at `s=1`, precisely

\[
\boxed{
L_\pm(x)=-\frac14 f_\pm'(x)^2
-\frac12\operatorname{Sch}(f_\pm,x).}
\tag{5}
\]

For example, the constant `uu` coefficient comes from three transparent pieces: `−P²/4` from the seed stress, `+α²/4` from the normal rescaling, and `−α′/2` from the `z²` correction to `V`.

Equation (4) is already in the BH class: `gri=O(r^{-3})`, `grr=ℓ²/r²+O(r^{-4})`, and the tangential leading metric is fixed. An exact FG adjustment is optional, but its orders and parameter dependence can be justified explicitly as follows. No global FG chart is asserted.

### Exact FG adjustment in a common collar

Write `g=ℓ² z^{-2} ĝ`. The smooth compactified metric and its inverse satisfy

\[
\widehat g_{zz}=1+O(z^4),\qquad
\widehat g_{zi}=O(z^3),\qquad
\widehat g_{ij}=\eta_{ij}+O(z^2),
\qquad
\widehat g^{zz}=1+O(z^4),\quad \widehat g^{zi}=O(z^3).
\]

Seek a geodesic defining function `ρ=z exp(ω)`, with `ω(0,x)=0`, satisfying `g^{-1}(dρ,dρ)=ρ²/ℓ²`. Its equation is

\[
\widehat g^{zz}(1+z\omega_z)^2
+2\widehat g^{zi}(1+z\omega_z)z\omega_i
+\widehat g^{ij}z^2\omega_i\omega_j=1.
\]

After subtracting one and dividing by `z`, this is a smooth first-order equation: the apparently divided coefficient `(ĝ^{zz}−1)/z` is smooth and `O(z³)`. Its derivative with respect to `ω_z` at the initial surface is `2`. The positive-normal branch is therefore a noncharacteristic initial-value problem. The characteristic construction gives a unique local smooth solution with the fixed boundary normalization. Its first three normal Taylor coefficients vanish, so

\[
\omega=O(z^4),\qquad \rho=z+O(z^5).
\]

Put `q=ρ²g/ℓ²` and `N=q^{-1}(dρ,·)`. The eikonal equation makes `Nρ=1` and `q(N,N)=1`; its components obey `N^z=1+O(z⁴)`, `N^i=O(z³)`. Transport boundary coordinates by `N X^i=0`, `X^i|_{ρ=0}=x^i`. Integration gives

\[
X^i=x^i+O(z^4),
\qquad
 g=\frac{\ell^2}{\rho^2}
 \left(d\rho^2+\gamma_{ij}(\rho,X)dX^i dX^j\right).
\]

This proves the claimed **tangential order `z⁴`, normal order `z⁵`** without a formal-series assumption. Such a change modifies the tangential metric only at order `z²` beyond its constant coefficient, and therefore leaves (5) unchanged.

The characteristic equations are ordinary differential equations with a transverse initial hypersurface. Their solutions depend smoothly on smooth parameters in the metric. Here all coefficients are periodic in the time/angle variables, so one can use a compact boundary quotient only for estimates. On a neighborhood with a common positive derivative lower bound and bounded sufficiently many low-order norms (a bounded `C⁵` neighborhood of the lifts is enough for the characteristic-flow existence estimates), transversality and a common collar persist. Thus one obtains a locally common FG collar, uniformly for all physical times, with smooth parameter dependence. The spacetime itself is not time-quotiented.

If a global proper adjustment is wanted, cut off the local coordinate change to the identity below a smaller common collar. In logarithmic normal coordinates it is `C¹`-small, since its tangential and relative normal changes start at order `z⁴`; cutoff derivative terms have the same smallness after the collar is chosen sufficiently thin. The resulting map is a proper local diffeomorphism, hence a global boundary-trivial diffeomorphism by the argument of section 4.2. If `K:(x,z)→(X,ρ)` is this map, the adjusted bulk extension is `F∘K^{-1}`. This is exact FG near infinity and retains smooth parameter dependence.

### Symbolic and special-case checks

A generic symbolic pullback, with independent functions `F(u),H(v)` and assumptions `F′>0,H′>0`, checked the following exact coefficient residuals:

- both stress coefficients minus the right-hand side of (5);
- both `z^{-1}` radial-cross coefficients;
- the leading `uv` and `zz` coefficients;
- the constant `uv` and `zz` coefficients after including `c=αβ/4`.

All residuals were zero, with no Wolfram messages or failed expressions. A standalone, self-contained Wolfram script is preserved as [generic collar verification](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/verification-generic-AdS3-collar-20261030-1c676609.wls>). Its actual successful standalone command-line run (exit code `0`) is preserved in [the 19-check JSON export](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/verification-generic-AdS3-collar-results-20261030-235017-2f54712c.json>): `AllPassed=true`, `FailedExpression=false`, `Messages=[]`. A separate successful `Get` run is preserved in [the kernel-load export](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/verification-generic-AdS3-collar-results-20261030-234653-33ac123c.json>). That export includes every coefficient, expected expression, zero residual, kernel version, conventions, and the script SHA-256. Run the script with `wolframscript -file /absolute/path/to/script.wls`, or load it using `Get` in a fresh kernel; each run exports a uniquely named report beside the script. No package or previously defined symbol is required.

The earlier short raw records remain available as [first collar check](</Users/koishi/.dsh/research-results/session-1c6766097690/424a0e5df468-research-result.json>) and [cubic-normal-correction check](</Users/koishi/.dsh/research-results/session-1c6766097690/96d46014120c-research-result.json>). The computation checks local coefficients only; the global argument is analytic and follows next.

At `f±(x)=x+b±`, all derivative corrections vanish, `a=1`, and (5) remains `−1/4`. For a small one-chiral perturbation `f=x+εv(x)`,

\[
\delta L=-\tfrac12(v'+v'''),
\]

so the modes `1,sin x,cos x` are exactly the infinitesimal vacuum stabilizers. This also checks the Schwarzian sign and normalization.

## 4. A global smooth extension with explicit uniform estimates

Here is a direct construction that avoids relying on an unproved global collar-isotopy assertion.

Set `y=−log z`. Choose a smooth cutoff `λ(y)` satisfying

\[
\lambda=0\quad(y\leq Y_0),\qquad
\lambda=1\quad(y\geq Y_1),\qquad 0\leq\lambda\leq1.
\]

The width `Y1−Y0` is free. Consequently `||λ′||∞` can be made as small as required, while `Y0` can independently be made as large as required. For a path parameter `τ ∈ [0,1]`, put

\[
s=\tau\lambda(y),
\qquad F_\tau(u,v,z)=C_s(u,v,z)
\tag{6}
\]

in the outer collar, and define `Fτ` to be the identity for `y≤Y0`, including an entire neighborhood of the polar center. The cutoff is constant on both sides of the gluing region, so this defines a smooth map on the disk, not merely a smooth expression in singular polar coordinates. Near infinity, `Fτ=Cτ` exactly.

### 4.1 Uniform local invertibility

First omit the `O(z²)` corrections in logarithmic coordinates. The fixed-`s` map is

\[
K_s(u,v,y)=\big(f_{+,s}(u),f_{-,s}(v),y-b_s(u,v)\big),
\qquad b_s=\tfrac12\log(PQ).
\]

At fixed `s` its derivative is triangular:

\[
D K_s=
\begin{pmatrix}
P&0&0\\
0&Q&0\\
-\partial_u b_s&-\partial_v b_s&1
\end{pmatrix}.
\tag{7}
\]

This matrix and its inverse have uniform bounds, and its determinant is positive. Allowing `s=τλ(y)` adds the rank-one term

\[
\tau\lambda'(y)(\partial_s K_s)\otimes dy.
\]

The vector `∂s K_s` is also uniformly bounded: its first two components are `f±(x)−x`, and its third is `−∂s b_s`. Choose `||λ′||∞` so that the norm of this perturbation after multiplication by `(D K_s)^{-1}` is less than `1/4`.

The full map (3), in target logarithmic coordinates, is

\[
\begin{aligned}
U&=f_{+,s}(u)+\tfrac12e^{-2y}P\beta,\\
V&=f_{-,s}(v)+\tfrac12e^{-2y}Q\alpha,\\
Y&=y-b_s-\log(1+c_s e^{-2y}).
\end{aligned}
\]

The additional derivative error is uniformly `O(e^{-2Y0})`, including the terms from `s(y)`. Increase `Y0` until its corresponding relative norm is below `1/4`. The complete derivative is then an invertible matrix times `I+E`, with `||E||<1/2`. Therefore each `Fτ` is a local diffeomorphism, uniformly for all time and all `τ`, with positive Jacobian.

Increase `Y0` once more, if necessary, to keep the entire nontrivial image in a target polar collar with `0<Z<1`. The rest of the map is the identity.

### 4.2 Properness, surjectivity, and injectivity

Uniformly in all variables and `τ`,

\[
|T-t|\leq C,
\qquad |Y-y|\leq C
\tag{8}
\]

in the collar. In the inner region the map is the identity. A sequence leaving every compact subset of `R × disk` must escape in global time or in radius; (8) sends it to a sequence that also escapes every compact subset. Thus each `Fτ:M→M` is proper.

A proper local diffeomorphism has open and closed nonempty image, hence is onto the connected target, and is a covering map. The target `R × D²` is simply connected. The source is connected. Therefore this covering has exactly one sheet: each `Fτ` is a global diffeomorphism.

This is the decisive global step; a nonzero local Jacobian alone would not have established the claim.

### 4.3 Orientation, time orientation, and completeness of the isotopy

Since `F0=id` and all Jacobians are nonzero, orientation is preserved.

There is also a strong, explicit time-orientation statement. In the active collar, at fixed source radius,

\[
U_t=P+O(z^2),\qquad V_t=Q+O(z^2),\qquad Z_t/Z=O(1),
\]

uniformly in `t,φ,τ`; importantly, `s=τλ(y)` is independent of `t`. From (1),

\[
\frac{g_0(F_{\tau*}\partial_t,F_{\tau*}\partial_t)}{\ell^2}
=\left(\frac{Z_t}{Z}\right)^2
-\frac{U_tV_t}{Z^2}
-\frac{U_t^2+V_t^2}{4}
-\frac{Z^2U_tV_t}{16}.
\]

For sufficiently large `Y0`, `U_t,V_t≥m/2`, and the negative `Z^{-2}` term dominates all positive bounded terms. Thus `Fτ*∂t` is future timelike, since also `T_t=(U_t+V_t)/2>0`. In the core the statement is immediate. The pulled-back metric can therefore use the same fixed source vector `∂t` to specify its future cone.

Here “time-orientation preserving” refers to the isometry from `(M,Fτ*g0)` to `(M,g0)` and its future cones. It does not assert that a generic non-isometric `Fτ` is a causal automorphism of the fixed metric `g0` on both source and target.

**A timelike `∂t` does not imply that the coordinate surfaces `t=constant` are spacelike or Cauchy.** For example, a pure boundary time translation gives an interpolated map `T=t+bτλ(y)`, with `∂t` still mapped to `∂T`, but on a source `t=constant` surface the radial metric coefficient is

\[
(g_\tau)_{rr}/\ell^2=(1+r^2)^{-1}-b^2\tau^2\lambda'(y)^2,
\]

which can be negative in the transition region. Geometrically valid Cauchy surfaces are the pullbacks `Fτ^{-1}({T=constant})` of the global-AdS Cauchy disks, with timelike conformal boundary understood. For CPS one must choose Cauchy representatives independently: pulled-back disks are available, and a representative can also be fixed locally in a sufficiently small smooth family where it remains Cauchy. Deforming representatives within a homology class still requires the relevant boundary/flux assumptions; it is not a consequence of the timelike-vector statement alone.

The velocity

\[
W_\tau=(\partial_\tau F_\tau)\circ F_\tau^{-1}
\]

is a smooth time-dependent vector field. In the collar coordinates `(t,φ,y)`, its coefficients and the needed derivatives are uniformly bounded; in the core it vanishes. One can use an auxiliary complete Riemannian metric which is cylindrical in `y` near infinity. These bounds give complete forward and backward flow on every finite `τ` interval, and the constructed flow is exactly `Fτ`. Equivalently, the global inverses already prove this completeness directly.

This is a time-ordered isotopy. No single autonomous logarithm of `f±` or `F` is assumed or needed.

### 4.4 Properties of the resulting metric

Take `F=F1` and `g=F*g0`. It is globally smooth and nondegenerate, including the center, satisfies Einstein’s equation `Ric(g)=−2g/ℓ²`, has the BH asymptotics and stresses (5), and is globally isometric to the universal-cover AdS metric. In particular it is geodesically complete and has the same causal properties as global AdS, including the appropriate GH statement after the timelike conformal boundary is included.

### 4.5 Smooth local sections and locally common collars

Fix one pair of lifts `f±*`. Choose a neighborhood with one positive lower bound for both derivatives and common bounds on `f±−id` and their first three derivatives. Such a `C³`-open neighborhood exists in the smooth lift space. The convex isotopies of all its members obey the same bounds. Choose the strict inequalities in sections 4.1–4.3 with slack and then **freeze** `Y0,Y1,λ` for this neighborhood; do not re-optimize cutoff constants separately at each point of field space. The same core, transition annulus, boundary collar, inverse-Jacobian estimates, and properness estimates then apply to every member and every `τ`.

With those choices fixed, `f↦F[f]` is built from finite-order differentiation, multiplication, positive square roots, and composition in explicit smooth formulas. It is smooth in the usual `C∞` mapping-space calculus. Concretely, every smooth finite-dimensional family of circle lifts produces a jointly smooth family of global maps and inverses on a common collar. One can check smoothness on the compactified time-periodic quotient for estimates and then lift back; this imposes no physical time identification. This proves a smooth local right inverse of the boundary-restriction map.

For the optional exact-FG version, shrink the neighborhood to impose the additional low-order bounds used in the characteristic construction, choose its collar and its proper cutoff once, and use the smooth parameter dependence of those characteristic flows. The resulting `F[f]∘K[f]^{-1}` is again a smooth local section with one common exact-FG collar. Both the tangential `O(z⁴)` and normal `O(z⁵)` adjustments hold smoothly with these parameters.

Because opposite central shifts of the lift pair represent the same cylinder map, this statement uses a locally consistent choice of lifts. The explicit construction need not give the same bulk representative after a different lift choice; the difference is a proper diffeomorphism. Likewise, a section over the stress orbit can be obtained after choosing a local PSL representative. Neither a canonical global section after all quotients nor a group-homomorphic section is claimed or needed.

## 5. Uniqueness, stabilizers, and lift bookkeeping

### 5.1 Bulk-extension ambiguity

Let `F1,F2` be two global extensions with the same cylinder boundary map and the required normal compensation, both producing BH metrics. Then

\[
H=F_1^{-1}\circ F_2,
\qquad g_2=H^*g_1.
\]

The map `H` is boundary-trivial, with leading normal ratio one. Hence the extension is unique modulo boundary-trivial, BH-preserving bulk diffeomorphisms. This is the meaning of “proper diffeomorphism” used in this review.

If a different definition of proper gauge additionally fixes temporal ends, selected Cauchy surfaces, or a particular connected component of the kernel, those extra requirements must be specified; the preceding algebra alone does not prove them. It is not necessary to solve that stronger mapping-class question for the stated boundary-extension result.

### 5.2 Which lift pairs represent the same cylinder map?

Write `D(x)=x+2π`, and denote the group of circle lifts by `Diff~+(S1)`. The boundary conformal group with the stated orientation and time orientation is

\[
\mathcal B=
\frac{\widetilde{\mathrm{Diff}}^+(S^1)\times
\widetilde{\mathrm{Diff}}^+(S^1)}
{\langle(D,D^{-1})\rangle}.
\tag{9}
\]

Only opposite integer shifts of the two lifts are a redundancy of the same cylinder map:

\[
(f_+,f_-)\sim(f_++2\pi n,f_--2\pi n).
\]

By contrast:

- `(D,id)` induces `(t,φ)→(t+π,φ+π)`;
- `(id,D)` induces `(t,φ)→(t+π,φ−π)`, the same cylinder map as the preceding one;
- `(D,D)` induces `(t,φ)→(t+2π,φ)`.

The last transformation is a nontrivial global-time deck transformation on universal-cover AdS, not the identity. The fact that the coefficients of the construction are time-periodic never makes this time shift a spacetime identification.

### 5.3 Vacuum stabilizer and the stress quotient

The identity

\[
\operatorname{Sch}\!\left(\tan\frac{f(x)}2,x\right)
=\operatorname{Sch}(f,x)+\frac12f'^2
\]

rewrites (5) as

\[
L_f=-\tfrac12\operatorname{Sch}\!\left(\tan\frac f2,x\right).
\tag{10}
\]

The tangent function is interpreted projectively across its poles. Equal Schwarzians on a connected interval imply that the two projective maps differ by one constant real Möbius transformation. Continuation in projective charts and degree one make this a global statement. Thus

\[
L_f=L_g
\quad\Longleftrightarrow\quad
g=p\circ f,
\qquad p\in\widetilde{\mathrm{PSL}}(2,\mathbb R).
\tag{11}
\]

The vacuum stabilizer as a faithful group acting on the boundary cylinder, and equivalently the identity component of the orientation/time-orientation-preserving global AdS isometry group, is

\[
\mathcal I=
\frac{\widetilde{\mathrm{PSL}}(2,\mathbb R)\times
\widetilde{\mathrm{PSL}}(2,\mathbb R)}
{\langle(D,D^{-1})\rangle}.
\tag{12}
\]

The denominator and its sign are fixed here by `u=t+φ,v=t−φ`. Other left/right conventions may write a diagonal central quotient instead.

For the displayed pullback convention the stabilizers act by **postcomposition**, so the quotient is naturally `I\B`, or factorwise left cosets `PSL\Diff`. Using inverse group coordinates gives the more familiar notation `Diff/PSL`. The underlying orbit is the same; the side should not be silently switched.

After quotienting by isometries, central lift data are already in the stabilizer, and the orbit can be identified with two ordinary circle-diffeomorphism vacuum orbits. Before that quotient, replacing all universal-cover groups with `PSL×PSL` loses genuine global-time transformations. Equal stresses do not mean equal cylinder maps.

For bulk metrics this has the expected exact meaning. If `h2=k∘h1` with `k∈I`, choose its global AdS isometry `K`. The maps `F2` and `K∘F1` have the same boundary map, so their pullback metrics differ by a proper bulk diffeomorphism. Conversely a boundary-trivial BH diffeomorphism does not change the stresses. If two pullbacks are exactly the same tensor, their maps differ on the left by a global isometry of `g0`.

## 6. What is needed for an exhaustion theorem?

In three dimensions, `Ric(g)=−2g/ℓ²` implies constant sectional curvature `−1/ℓ²`. This is a local statement. It does not by itself make the developing map onto, injective, complete, or compatible with the claimed conformal infinity.

A clear sufficient theorem is the following.

> Suppose `M` is connected and simply connected, `g` is a geodesically complete Lorentzian Einstein metric with `Ric=−2g/ℓ²`, and it has a regular smooth BH conformal completion whose full boundary is the specified cylinder. Fix compatible orientation and time orientation. Then `g` is globally isometric to universal-cover AdS, and that isometry extends to a degree-one, orientation/time-orientation-preserving conformal cylinder map. Consequently it lies in the class constructed above, modulo a proper diffeomorphism.

The interior assertion is the complete simply connected pseudo-Riemannian space-form theorem. One way to see the role of completeness is to continue a local isometry along broken geodesics: completeness prevents a lifted finite geodesic segment from ending at a missing interior point. This produces the global covering isometry; simple connectedness removes the covering ambiguity.

For clarity, the regular-boundary part can also be justified. In a geodesic defining function, fixed-boundary-coordinate radial curves are spacelike geodesics with affine parameter proportional to `−log z`. Their images under the global isometry are AdS spacelike geodesics. In the standard quadric embedding they have the form

\[
X(z)=A(x)/z+B(x)z,
\qquad A^2=B^2=0,
\]

locally in boundary coordinates. The nonzero null ray `[A(x)]` gives a smooth endpoint on the target conformal boundary. Nondegeneracy of the source boundary metric makes the endpoint map a conformal immersion with positive normal derivative. If two distinct boundary points had the same image, their two local collar images would overlap in the interior, contradicting injectivity of the interior isometry. Thus the boundary map is injective.

An orientation/time-orientation-preserving conformal immersion of the full cylinder is chiral. Its lifts have equal positive integer spatial winding `n`; positivity excludes `n=0`, and injectivity excludes `n>1`. Thus `n=1`, the lifts are onto, and the map is exactly of the form in section 1. This proves the required boundary conclusion under the stated regular-completion assumptions.

Full geodesic completeness is sufficient, not asserted necessary. Other possible hypotheses include a suitably defined maximal GH AdS development with the correct topology and complete prescribed timelike boundary, but their exact sufficiency is not proved here. “GH in the AdS sense” must be defined rather than silently replaced by stable causality. In particular, the counterexample below is explicitly excluded by GH and maximality assumptions.

Without the disk topology, BTZ exteriors, cylindrical ends, and multiboundary or higher-genus locally AdS domains provide different sectors and holonomies. A smooth BTZ exterior is already a smooth BH Einstein example that is not a disk filling; taking just the exterior also omits completeness across the horizon. Conical defects/excesses do not supply smooth disk counterexamples because their apparent centers are singular or branched. Trivial *projective* monodromy alone is not a smooth-disk criterion: exceptional constant stresses `−n²/4` with `n>1` have the wrong winding despite projectively trivial monodromy.

## 7. Explicit counterexample when completeness and GH are not imposed

Choose a smooth radial function `χ=χ(r²)` with

\[
0\leq\chi\leq1,\quad \chi(0)=1,\quad
\chi(r^2)<1\text{ for }r>0,\quad
\chi(r^2)=0\text{ for }r\geq R_0.
\]

Such a function can be chosen with `χ=1−r²` sufficiently near zero and a smooth compact radial cutoff. Define

\[
H(t)=\log(1+e^t),\qquad
J_s(t,r,\phi)=\big(t-s\chi(r^2)H(t),r,\phi\big),
\quad 0\leq s\leq1.
\tag{13}
\]

For every finite point and every `s≤1`,

\[
\partial_t T=1-s\chi\frac{e^t}{1+e^t}>0.
\tag{14}
\]

The map is smooth at the axis because `χ` is a smooth function of Cartesian `r²`.

For `s<1`, `T(t,r)` is strictly increasing and onto the entire real line at every radius, so `Js` is a global diffeomorphism of `M`. At `s=1`, it is still onto for every `r>0`, but on the axis

\[
T=t-H(t)=-\log(1+e^{-t})\in(-\infty,0).
\]

Consequently `J1` is a diffeomorphism onto the proper open subset

\[
U=\widetilde{\mathrm{AdS}}_3\setminus
\{r=0,\ T\geq0\}.
\tag{15}
\]

Set `g_s=Js*g0`. Every `g_s`, including the endpoint, is a smooth nondegenerate Einstein metric on the same manifold `R×D²`. All are **exactly** `g0` on the fixed collar `r≥R0`, for every global time; their BH stresses are identically `−1/4`.

At `s=1`, the central timelike geodesic reaches the removed event `(T=0,r=0)` in finite proper time `ℓ ΔT`. Its source coordinate has `t→+∞`. Therefore `g1` is geodesically incomplete and cannot be the pullback of the complete metric `g0` by any onto global diffeomorphism. This is an invariant obstruction, not a bad coordinate component.

### 7.1 Stable causality, failure of GH, and non-maximality

The global AdS time function `T` has timelike gradient on `U`; its pullback is a smooth time function for `g1`. Thus the example is stably causal.

Nevertheless it is not globally hyperbolic, including in the standard formulation with the timelike conformal boundary adjoined. Put `ρ=arctan r`; the conformal causal metric is

\[
-dT^2+d\rho^2+\sin^2\rho\,d\phi^2,
\qquad 0\leq\rho\leq\pi/2.
\]

Fix small `ε>0` and allowed points

\[
a=(-2\epsilon,0),\qquad b=(2\epsilon,\epsilon,0).
\]

For sufficiently large `n`, the points `q_n=(0,1/n,0)` are timelike reachable from `a` and can timelike reach `b` by radial paths of positive radius away from the allowed starting axis point. Hence all `q_n` lie in one causal diamond. Their only ambient limit is the missing interior point `(0,0)`. The diamond is not compact in `U`, nor after adjoining the outer timelike boundary. This directly disproves GH; reflecting outer-boundary conditions do not repair the missing interior event.

The example is also not maximal: it extends smoothly to the entire global-AdS spacetime while preserving the asymptotic boundary. It therefore must not be used as a counterexample *within* a field space that already imposes GH/AdS-GH or maximal-complete global developments.

### 7.2 Connectedness and topology of convergence

The family `g_s` is jointly smooth on `[0,1]×M` and is continuous in compact-open `C∞` topology. It is a path through smooth BH Einstein metrics with nondegenerate coframes all the way to `s=1`. For `s<1` it consists of complete, AdS-GH metrics; the endpoint is not complete or GH. Thus these stronger properties are not closed under this weak topology on the unrestricted field space.

There is no uniform-in-time convergence of the maps:

\[
T_s-T_1=(1-s)\chi H(t)\sim(1-s)\chi t
\quad(t\to+\infty).
\]

At the axis the uniform lower bound for the lapse is lost as `s→1`. In the radial transition region, derivatives involving `χ′ H(t)` also prevent uniform global metric estimates. All asymptotic BH estimates remain exact and uniform, because the family is identically AdS outside `R0`. The pathology concerns interior temporal infinity, not radial infinity.

## 8. CS gauge realization and the missing global-flow condition

Fix a globally smooth oriented spin frame on `M`, not a polar frame defined only on an annulus. In the conventions

\[
A_0=\omega_0+e_0/\ell,
\qquad \bar A_0=\omega_0-e_0/\ell,
\qquad e_0=\frac\ell2(A_0-\bar A_0),
\]

both connections are flat. The manifold is contractible, so one may choose global smooth pure-gauge maps

\[
A_0=G_0^{-1}dG_0,
\qquad \bar A_0=\bar G_0^{-1}d\bar G_0.
\]

They may be taken in `SL(2,R)` or lifted to its universal cover; the calculation is unchanged. A smooth global frame avoids spurious central angular holonomy from a nonextendible polar trivialization. Flat holonomy around a contractible loop is the identity in such a global smooth trivialization.

Define

\[
G_s=G_0\circ J_s,\qquad \bar G_s=\bar G_0\circ J_s,
\qquad
u_s=G_0^{-1}G_s,\qquad \bar u_s=\bar G_0^{-1}\bar G_s.
\tag{16}
\]

With the finite gauge convention `A^u=u^{-1}Au+u^{-1}du`, direct multiplication gives

\[
A_0^{u_s}=G_s^{-1}dG_s=J_s^*A_0,
\qquad
\bar A_0^{\bar u_s}=J_s^*\bar A_0.
\tag{17}
\]

These formulas remain valid at `s=1`; pullback of forms only requires a smooth map, and here `J1` is even a local diffeomorphism everywhere.

The gauge maps are jointly smooth, start at the identity, and equal the identity on the entire fixed collar `r≥R0`. Their support is spatially compact, but it is not compact in spacetime. The resulting coframe is exactly

\[
e_s=\frac\ell2(A_s-\bar A_s)=J_s^*e_0.
\]

Equation (14) proves that it is everywhere nondegenerate, with unchanged orientation, throughout the closed parameter interval.

### 8.1 The local gauge/diffeomorphism identity still holds

The infinitesimal gauge parameters are

\[
\lambda_s=G_s^{-1}\partial_sG_s,
\qquad \bar\lambda_s=\bar G_s^{-1}\partial_s\bar G_s.
\]

Since `Js` is locally invertible, define the source vector field

\[
\boxed{
\xi_s=(D J_s)^{-1}\partial_sJ_s
=-\frac{\chi H(t)}{1-s\chi H'(t)}\,\partial_t.}
\tag{18}
\]

Then

\[
\lambda_s=\iota_{\xi_s}A_s,
\qquad \bar\lambda_s=\iota_{\xi_s}\bar A_s,
\]

and flatness gives `∂s A_s=L_{ξ_s}A_s`, with the barred counterpart; similarly `∂s g_s=L_{ξ_s}g_s`. The invertible coframe identifies the translation parameter with `ιξ e_s`. For this particular correlated pair of gauges there is no extra Lorentz parameter after subtracting `ιξ ω_s`.

Thus there is no failure of the infinitesimal on-shell identity. The issue is global integration.

### 8.2 Why the time-dependent spacetime flow fails

For `s<1`, the reverse transport equation

\[
\partial_s K_s=-\xi_s\circ K_s,\qquad K_0=\mathrm{id},
\]

is solved by `K_s=J_s^{-1}` and satisfies `K_s*g_s=g0`. On the central axis, for any fixed target `T≥0`,

\[
J_s^{-1}(T)\longrightarrow+\infty
\quad(s\uparrow1).
\]

For `T>0`, the leading divergence is `t≈T/(1−s)`; for `T=0`, it still diverges, with `(1−s)t≈s e^{-t}`. Thus the nonautonomous flow escapes to temporal infinity before it can be completed as a global inverse at the endpoint.

At the endpoint itself, the axis value is

\[
\xi_1=-(1+e^t)\log(1+e^t)\,\partial_t,
\]

whose reverse autonomous flow also escapes to `t=+∞` in finite parameter, since the integral of `1/[(1+e^t)log(1+e^t)]` at infinity converges.

Therefore pointwise coframe invertibility along a finite CS gauge path does **not** by itself imply a path of globally defined spacetime diffeomorphisms. One must also demand global integrability/completeness over the full parameter interval, or impose admissible global-development conditions that exclude the endpoint. Completeness of each instantaneous generator before an endpoint is not by itself a substitute for completeness of the full nonautonomous flow through that endpoint.

This counterexample is outside the GH-restricted domain at `s=1`. It proves no inequivalence within a separately specified GH/maximal-development phase space. Likewise, if a gauge group additionally requires compact support in all spacetime directions, or identity at specified initial/final Cauchy surfaces, (16) need not be an allowed gauge path. Those stronger conditions must be stated explicitly.

The structural lesson is precise: flat-connection and holonomy data on a contractible manifold do not encode completeness of the developing image. Here both the complete and incomplete metrics have globally pure-gauge flat connections and the same exact asymptotic collar, yet their global metric developments differ.

## 9. What is proved and what is left open

Proved here:

1. Existence of a globally smooth, onto, injective extension for every prescribed pair of circle lifts, with uniform-in-time estimates and the required stresses.
2. Uniqueness modulo the specified boundary-trivial bulk group, and the correct vacuum-stabilizer and lift/time-deck bookkeeping.
3. A sufficient complete-space-form exhaustion theorem with regular full conformal infinity.
4. A fully explicit incomplete, non-GH, non-maximal smooth BH counterexample when those global restrictions are absent.
5. A proper-at-radial-infinity CS gauge path through invertible coframes demonstrating the separate need for global flow completeness on the unrestricted field space.

Not proved here: that any particular informal definition of “AdS global hyperbolicity” alone implies the completeness or maximal-developing-domain hypotheses needed for exhaustion; or that a gauge group with additional temporal-boundary/component restrictions has the same quotient as the group used above. Those are separate global-domain statements, not gaps in the constructive boundary-extension theorem.
