# Gauge-Covariant Sewing and Reduction on a Timelike Artificial Interface

## Scope and Claim Level

This note extracts a gauge-covariant sewing/reduction layer from the action-first construction of `formalism.md` and the relation-level framework of `gluing formalism.md`. Its scope is deliberately restricted to:

- a fixed globally hyperbolic background;
- a compact internal gauge group \(G\);
- principal connections and Yang--Mills-type second-order connection theories;
- a timelike artificial interface \(\Gamma\), with fixed physical outer frames;
- a trivializable sewing collar and declared bundle identifications;
- no charged matter and no gravity.

The universal statement below is conditional and relation-level. It does not prove a general gauge IBVP theorem, a universal symplectic quotient formula, or a continuum Hilbert-space gluing theorem. The prescribed-history construction here is timelike. Null interfaces instead require characteristic data, corner compatibility, direct null CPS flux, and a Goursat problem; they are not obtained by changing coordinates in this note.

Chern--Simons and BF theory are mentioned only as first-order comparisons. Their boundary polarizations, boundary representations, and Hamiltonians are not identified with the Yang--Mills branch.

## Conventions and Variational Trace Data

Use anti-Hermitian Lie-algebra-valued connections and

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg, &F^g&=g^{-1}Fg.
\end{align}$$

Let \(\langle\, ,\,\rangle_{\mathfrak g}\) be a positive \(\operatorname{Ad}\)-invariant inner product, extended to the required Sobolev dualities. On a trivialized collar of the regional interface define

$$\begin{align}
a_i:=\iota_i^*A_i\in\operatorname{Conn}(P_i|_\Gamma).
\end{align}$$

This is a point of an affine connection space. A variation \(\delta a_i\) is an \(\operatorname{ad}P_i\)-valued one-form, but \(a_i\) itself is not a vector-space coordinate.

Start from the complete regional action, including the chosen physical-boundary and corner representatives. After imposing the bulk equations and integrating tangential derivatives off \(\delta a_i\), assume the interface part of its variation has the declared polarization

$$\begin{align}
\boxed{
\left.\delta S_i\right|_\Gamma
=\langle\Pi_i,\delta a_i\rangle_\Gamma
+\text{temporal/spatial-corner terms}.}
\end{align}$$

Here \(\Pi_i\) is the outward-oriented Green-dual/conormal momentum. For Yang--Mills it is the appropriate pullback of \(-g_{\mathrm{YM}}^{-2}n_i\mathbin{\lrcorner}F_i\), with density and Hodge factors included in the pairing. At energy regularity, this is generally a dual trace, not a pointwise normal derivative.

The following are inputs, not consequences of the displayed formula:

1. the boundary polarization and corner completion;
2. the trace and dual-trace regularity;
3. constraint propagation and the compatibility domain of Cauchy and boundary data;
4. regional hyperbolic IBVP existence, uniqueness, causality, and continuous or smooth dependence.

Thus a variational trace pair does not by itself prove that every component of \(a_i\) can be freely prescribed as a causal boundary history.

## Three Gauge Groups That Must Remain Distinct

Fix a gauge frame at every physical outer boundary and, while defining a regional fixed-history problem, at the artificial interface.

### Regional Proper Gauge

The regional proper group is

$$\begin{align}
\mathcal G_i^0
:=\{g_i:M_i\to G\mid g_i|_{\Gamma_{i0}}=1,\ g_i|_\Gamma=1\}.
\end{align}$$

It is quotiented before regional quantization. Its infinitesimal directions are presymplectic kernels subject to the declared boundary and constraint conditions.

### Boundary-Frame Group

The interface frame group is

$$\begin{align}
\mathcal G_\Gamma:=\operatorname{Map}(\Gamma,G).
\end{align}$$

A regional transformation with nontrivial interface value changes

$$\begin{align}
a_i\longmapsto a_i^{k_i}
=k_i^{-1}a_ik_i+k_i^{-1}\mathrm d_\Gamma k_i.
\end{align}$$

Before sewing, this is generally a charged Hamiltonian boundary symmetry or covariance between different fixed-history fibers. It is not automatically a regional proper gauge transformation and must not be quotiented merely because it is a gauge transformation in the bulk.

### Glued Diagonal Proper Gauge

After connection descent and flux matching, the frame changes which are restrictions of a continuous global transformation act diagonally, with the transition function inserted when the two regional frames differ. On the Gauss moment-map locus this action becomes global proper gauge and is quotiented.

The policy is therefore

$$\begin{align}
\boxed{
\text{regional proper gauge}
\neq\text{boundary-frame symmetry}
\neq\text{glued diagonal proper gauge}.}
\end{align}$$

## Non-Abelian Transition-Function Sewing

Let the two interface frames be related by \(h:\Gamma\to G\), with the convention

$$\begin{align}
\boxed{a_2=h^{-1}a_1h+h^{-1}\mathrm d_\Gamma h=:a_1^h.}
\end{align}$$

Under independent changes of regional interface frames \(k_1,k_2\),

$$\begin{align}
a_i&\longmapsto a_i^{k_i}, &h&\longmapsto k_1^{-1}hk_2.
\end{align}$$

This preserves the sewing equation because \((a^{k_1})^{k_1^{-1}hk_2}=(a^h)^{k_2}\).

Keep \(h\) fixed first. Its linearized sewing relation is

$$\begin{align}
\delta a_2&=\operatorname{Ad}_{h^{-1}}\delta a_1.
\end{align}$$

The summed on-shell interface variation is therefore

$$\begin{align}
\left.\delta(S_1+S_2)\right|_\Gamma
&=\left\langle
\Pi_1+\operatorname{Ad}_h^*\Pi_2,
\delta a_1
\right\rangle_\Gamma,
\end{align}$$

where

$$\begin{align}
\langle\operatorname{Ad}_h^*\Pi_2,X\rangle
:=\langle\Pi_2,\operatorname{Ad}_{h^{-1}}X\rangle.
\end{align}$$

Releasing the common connection history gives the complete oriented transmission equation

$$\begin{align}
\boxed{\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.}
\end{align}$$

The pair

$$\begin{align}
a_2&=a_1^h,
&\Pi_1+\operatorname{Ad}_h^*\Pi_2&=0
\end{align}$$

is the cotangent-polarized representative of the invariant full-trace sewing relation. It is not an equality of ordinary vector-space variables.

### Is \(h\) a New Edge Degree of Freedom?

Not automatically. With fixed \(h\), transformations which change \(h\) relate different sewing charts. If \(h\) is allowed to vary, then

$$\begin{align}
\delta(a_1^h)
=\operatorname{Ad}_{h^{-1}}\delta a_1
+D_{a_2}(h^{-1}\delta h),
\end{align}$$

and integration by parts along \(\Gamma\) produces the corresponding Gauss/corner contribution. The temporal endpoint term conjugate to \(h\) must be kept. Only after this completed variation may one identify the chart redundancy or a genuine interface phase space. Introducing \(h\) and then discarding its canonical/corner term would change the variational theory. The \(1+1\) Yang--Mills benchmark gives the explicit finite-dimensional version.

## Full Sewing Relation Is Not Gauge Reduction

For spatial dimension greater than one, releasing all of the timelike interface connection \(a_\Gamma\) imposes all components of

$$\begin{align}
\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.
\end{align}$$

This is a transmission equation on the timelike worldtube. It includes the matching conjugate to tangential connection components and is part of reconstructing a global solution.

By contrast, let \(S=\Gamma\cap\Sigma\) be a Cauchy cut. The Hamiltonian boundary-frame action on regional Cauchy data is generated by the Gauss-law charge. In Yang--Mills-type theories its moment map is the outward normal electric component,

$$\begin{align}
\boxed{
\mu_S=E_1^\perp+\operatorname{Ad}_h^*E_2^\perp,}
\end{align}$$

with density, coupling, and sign fixed by the Cauchy symplectic potential. The residual frame changes preserving a fixed \(h\) obey \(k_2=h^{-1}k_1h\); in the common-frame chart \(h=1\) this is the diagonal group.

Thus

$$\begin{align}
\boxed{\text{full sewing relation}\neq\text{gauge moment-map reduction}.}
\end{align}$$

The two are compatible by the Gauss/Noether identity. They coincide in the compact \(1+1\) zero-mode example because there is only the normal electric datum at the interface; that coincidence is not a general theorem.

## Conditional Classical Reconstruction Statement

Let \(\widehat{\mathcal P}_i\) denote regional solution data after quotienting only \(\mathcal G_i^0\), with the chosen fixed-history polarization and trace class. Define the matched relation

$$\begin{aligned}
\mathcal C_G:=\{(\Phi_1,\Phi_2,h):\;&a_2=a_1^h,\\
&\Pi_1+\operatorname{Ad}_h^*\Pi_2=0,\\
&\text{the regional constraints and corner conditions hold}\}.
\end{aligned}$$

**Conditional relation-level theorem.** Suppose:

1. both regional IBVPs and the connected IBVP are well posed in one declared regularity class;
2. the bundle and connection traces descend across the collar through \(h\);
3. the Green-dual traces and corner representatives are compatible and the summed action is exactly the restriction of the connected action;
4. matched piecewise weak solutions satisfy a transmission/regularity theorem giving a connected solution;
5. the residual diagonal frame action has a regular moment-map locus and a well-defined quotient.

Then restriction and assembly identify connected solutions modulo global proper gauge with matched regional data modulo regional frame changes. On the smooth nondegenerate tier, the identification preserves the reduced symplectic form.

Schematically one may write

$$\begin{align}
\mathcal P_M
\simeq
\mathcal C_G/\mathcal G_{\Gamma,\mathrm{diag}},
\end{align}$$

but this is shorthand for the displayed relation, reconstruction, and quotient hypotheses. The note does not assert for an arbitrary gauge theory that

$$\begin{align}
\mathcal P_M=(\mathcal P_1\times\mathcal P_2)//\mathcal G_\Gamma.
\end{align}$$

In particular, the full connection transmission condition, bundle descent, and PDE reconstruction cannot be replaced by the Cauchy-cut moment map alone.

## Quantum Claim Tiers

### Finite Regulator

For a finite spatial interface regulator with \(N_S\) sites or cells, the boundary group is the compact finite-dimensional group \(G^{N_S}\). Its normalized Haar measure exists. Once the regulated boundary action and constraint representation have been derived, the exact projector is

$$\begin{align}
P_{N_S}=\int_{G^{N_S}}\mathrm d\boldsymbol g\,
U_{N_S}(\boldsymbol g).
\end{align}$$

Classical reduction and quantum group averaging are exact finite-regulator statements. Reduction by stages is exact for commuting internal-vertex actions, or under the usual normal-subgroup hypotheses with the updated second-stage action.

### Continuum Classical

The continuum classical statement is moment-map/symplectic reduction only after the functional-analytic hypotheses above are supplied. Regularity, closed range, quotient smoothness, Gribov/global issues, and nontrivial bundle sectors are model-dependent.

### Continuum Algebraic

Given a specified continuum observable algebra and a well-defined action of the boundary-frame group, the gauge-invariant or fixed-point algebra is a meaningful target. This does not by itself choose a Hilbert-space representation or a state.

### Continuum Hilbert Space

For the infinite-dimensional group \(\operatorname{Map}(S,G)\), this note does not write a normalized Haar functional integral. A continuum physical Hilbert space obtained by group averaging, BRST/BV, a rigged-Hilbert construction, or a lattice limit is model- and representation-dependent. No universal continuum Hilbert-space reduction theorem is claimed.

## Associativity and Reduction by Stages

At finite regulator, a chain of cells has one compact \(G\) action at each internal vertex. These actions commute when they belong to distinct vertices, their normalized Haar projectors commute, and one-shot averaging equals averaging by stages. Classical group multiplication and cotangent reduction obey the same parenthesization-independent identity.

For continuum Yang--Mills-type fields, associativity remains a theorem target unless each intermediate union satisfies the same bundle descent, corner compatibility, clean relation composition, quotient regularity, and reconstruction hypotheses. Category or stack language does not replace these checks.

## First-Order Comparison and Exclusions

Chern--Simons and BF theories have first-order boundary symplectic structures. Their admissible polarizations may expose current-algebra, WZW, finite conformal-block, or categorical data, depending on the model and boundary condition. None of the following is inferred from the Yang--Mills discussion:

- equality of their boundary Hilbert spaces with a Yang--Mills \(L^2(G)\) factor;
- the same Hamiltonian or moment map;
- the same continuum averaging measure;
- a common quantum sewing theorem.

Also excluded here are charged matter, nontrivial bundle descent beyond the assumed collar trivialization, anomalies, gravity/diffeomorphism constraints, and null-characteristic evolution.

## Verification Boundary

Derived here: the fixed-\(h\) non-Abelian variation, the coadjoint oriented-flux equation, the three gauge roles, and the distinction between the full timelike transmission relation and the Cauchy-cut Gauss moment map.

Assumptions: compact internal \(G\), fixed globally hyperbolic background, fixed physical outer frames, trivializable sewing collar, declared trace polarization, regional and connected well-posedness, constraint propagation, and the reconstruction/quotient hypotheses displayed above.

Checked in `Yang-Mills 1+1.md`: transition-function covariance, left/right action and orientation, the moment-map sign, reduction to \(T^*G\), connected Hamiltonian normalization, compact Haar averaging, Peter--Weyl spectrum, and finite three-cell reduction by stages.

Not proved here: a universal gauge IBVP theorem; a smooth continuum quotient for \(\operatorname{Map}(S,G)\); continuum normalized-Haar group averaging; charged matter; nontrivial bundles or topology change; Chern--Simons/BF quantum sewing; anomalies; gravity; or null-characteristic gauge composition.
