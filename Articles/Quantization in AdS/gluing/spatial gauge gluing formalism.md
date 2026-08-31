# Spatial-Region Gauge Gluing Formalism

> Status: first draft for criticism and iteration. This note adds a gauge layer to the spatial-partition/timelike-worldtube architecture of `gluing formalism.md`; it does not modify that manuscript and does not claim a new general PDE, quotient, or quantum theorem. Every theorem schema below is labelled by its current claim level.

## 0. Scope and Dependence on the General Gluing Formalism

Fix a globally hyperbolic background and a finite time slab

$$\begin{align}
M^I&=I\times\Sigma,
&I&=[t_-,t_+].
\end{align}$$

Take a spatial partition of one Cauchy slice,

$$\begin{align}
\Sigma&=\Sigma_1\cup_S\Sigma_2,
&\operatorname{int}\Sigma_1\cap\operatorname{int}\Sigma_2&=\varnothing,
\end{align}$$

and let the artificial spatial interface sweep out the timelike worldtube

$$\begin{align}
\Gamma:=I\times S.
\end{align}$$

The first draft treats:

- a fixed globally hyperbolic background;
- compact internal gauge group (G);
- Maxwell/Yang--Mills-type second-order connection theories;
- fixed physical outer boundary conditions and a declared outer-frame policy;
- a locally trivializable sewing collar;
- smooth or sufficiently regular fields in one declared bundle/topological sector;
- a regular/irreducible stratum, or a perturbative neighborhood in which the gauge slice and quotient are controlled.

It excludes from the main theorem charged matter, nontrivial bundle-sector changes, anomalies, gravity/diffeomorphism gauge, first-order Chern--Simons/BF theory, and null characteristic composition. These are future branches. Null hypersurfaces require characteristic data, direct null CPS flux, shared-cut compatibility, and a Goursat problem; they are not a limiting case of the construction below.

This note reuses the following objects and logic from `gluing formalism.md`:

$$\begin{align}
\text{spatial partition and }\Gamma
&\longrightarrow \text{complete variational trace spaces }\mathcal Z_{i,\Gamma}
\longrightarrow \text{polarization-independent sewing relation}\\
&\longrightarrow \text{admissible dynamical polarization and compatibility domain}
\longrightarrow \text{regional time-slab input--output relation}\\
&\longrightarrow \text{on-shell action/exact-isotropic relation}
\longrightarrow \text{relation composition, reconstruction, and associativity}.
\end{align}$$

Gauge theory adds three structures that cannot be represented by appending a formal quotient symbol:

$$\begin{align}
\boxed{
\text{constraint-compatible hyperbolic realization}
+\text{connection descent/frame data}
+\text{bulk unfixing and gauge-orbit completeness}.}
\end{align}$$

**Claim level:** scope and architecture definition. No general theorem is asserted in this section.

## 1. Original Gauge-Invariant Variational Layer

Use anti-Hermitian connections and

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg,
&F^g&=g^{-1}Fg.
\end{align}$$

For each region (M_i^I=I\times\Sigma_i), begin with the original gauge-invariant action, including its physical-boundary and corner representatives,

$$\begin{align}
S_i^{\mathrm{inv}}[A_i]
=\int_{M_i^I}\mathscr L(A_i,F_i)
+S_{i,\partial_{\mathrm{phys}}}
+S_{i,\mathrm{corner}}.
\end{align}$$

No gauge-fixing term is used to define physical CPS. On shell, after tangential integrations by parts, write the complete first variation as

$$\begin{align}
\delta S_i^{\mathrm{inv}}
&=\Theta_i(t_+)-\Theta_i(t_-)
+\langle\Pi_i,\delta a_i\rangle_\Gamma
+\text{declared temporal/spatial-corner terms},\\
a_i&:=\iota_\Gamma^*A_i.
\end{align}$$

Here (a_i) is a point of an affine connection space, not a vector-space field coordinate. The outward Green-dual momentum (Pi_i) includes density, coupling, Hodge, and tangential integration-by-parts factors. At energy regularity it is generally a dual trace.

The original action defines:

$$\begin{align}
\operatorname{Sol}_i&:=\{A_i:\mathcal E_i(A_i)=0, \text{physical boundary conditions}\},\\
\Omega_i&:=\delta\Theta_i,\\
(\mathcal Z_{i,\Gamma},\omega_{i,\Gamma}^{\mathrm{out}})
&:=\text{complete variational trace phase space},\\
\operatorname{Tr}_{i,\Gamma}&:\operatorname{Sol}_i\longrightarrow\mathcal Z_{i,\Gamma}.
\end{align}$$

Before quotienting, (Omega_i) is pre-symplectic. A gauge transformation that is identity on every physical boundary and at the artificial interface defines a regional proper direction. A transformation with nontrivial interface value is instead a boundary-frame action/covariance. Its Cauchy generator is the Gauss boundary charge; in Yang--Mills type theories the corresponding interface moment map is the outward normal electric field, with the action-derived density and sign.

The logical rule is

$$\begin{align}
\boxed{
\text{original action}\longrightarrow
(\Theta,\Omega,\mathcal Z,\Pi,\mu)
\quad\text{before}\quad
\text{PDE gauge fixing}.}
\end{align}$$

**Claim level:** `proved` for the displayed Maxwell (1+1,2+1,3+1) and Yang--Mills (1+1) actions; a general functional-analytic boundary phase space remains a declared input.

## 2. Hyperbolic Gauge-Realization Layer

For each region choose additional gauge-realization data

$$\begin{align}
\mathfrak f_i
:=(\chi_i,\mathcal E_i^{\chi_i},\mathbf B_i^{\chi_i},\mathcal C_i).
\end{align}$$

The four entries have different jobs:

1. (chi_i(A_i)=0) is a gauge condition;
2. (mathcal E_i^{\chi_i}(A_i)=0) is a strongly/symmetrically hyperbolic reduced system or another declared well-posed hyperbolic realization;
3. (mathbf B_i^{\chi_i}) is a constraint-preserving admissible boundary operator selecting the freely prescribable incoming data;
4. (mathcal C_i=0) denotes Gauss, gauge, and corner compatibility constraints together with their propagation statement.

Define gauge-fixed Cauchy data and boundary input spaces

$$\begin{align}
\Xi_i^{\chi_i,-},
\qquad
\mathcal B_{i,\mathrm{in}}^{\chi_i},
\end{align}$$

and a compatibility domain

$$\begin{align}
\mathfrak D_i^{\chi_i}
\subset
\Xi_i^{\chi_i,-}\times\mathcal B_{i,\mathrm{in}}^{\chi_i}.
\end{align}$$

Only after proving existence, uniqueness modulo the declared residual gauge, constraint propagation, causality, and continuous/smooth dependence on this domain may one define the regional evolution relation

$$\begin{align}
\boxed{
\mathscr U_i^{\chi_i}
=\left\{(\xi_i^-,\xi_i^+;b_i,z_i):
A_i\text{ solves }(\mathcal E_i^{\chi_i},\chi_i,\mathcal C_i),
\ b_i=\mathbf B_i^{\chi_i}(z_i)
\right\}.}
\end{align}$$

Here (z_i=\operatorname{Tr}_{i,\Gamma}A_i) is the **full variational trace history**, retained as output even though only (b_i) is prescribed. If uniqueness fails, (mathscr U_i^{\chi_i}) remains a relation rather than a graph.

The gauge-fixed action may be useful for PDE estimates or BRST quantization, but its extra unphysical symplectic pairs do not replace the pullback of the original (Omega_i). Physical CPS is still obtained from the original action, followed by the appropriate kernel quotient/cohomology.

**Claim level:** theorem input. Maxwell (2+1/3+1) supply exact temporal/Coulomb separated-mode realizations, not this general hyperbolic IBVP theorem.

## 3. Full Variational Trace Is Not the Prescribed Input

Let

$$\begin{align}
P_{i,\mathrm{in}}^{\chi_i}:\mathcal Z_{i,\Gamma}longrightarrow
\mathcal B_{i,\mathrm{in}}^{\chi_i}
\end{align}$$

denote the input projection induced by the admissible boundary operator. The prescribed history is

$$\begin{align}
\boxed{b_i=P_{i,\mathrm{in}}^{\chi_i}(z_i),
\qquad z_i=\operatorname{Tr}_{i,\Gamma}A_i.}
\end{align}$$

In general (P_{i,\mathrm{in}}^{\chi_i}) is neither the identity nor a projection onto every component of (a_i=iota^*A_i). The remaining trace components are responses, constrained components, outgoing characteristic data, or gauge/frame data. Their values are determined by the reduced equations, constraints, initial data, and (b_i).

For the active Maxwell notes, the full affine connection pullback is held fixed in the variational problem, while the temporal/Coulomb master equations turn its Fourier components into Dirichlet, Neumann-type, compact zero-mode, or gauge-frame data. This is a valid model calculation. It does not prove that an arbitrary full (a_i) is an admissible causal input.

Changing a variational polarization canonically pushes forward (mathscr U_i), the sewing relation, and the corner representative as in `gluing formalism.md`. It preserves a causal graph presentation only when the transformed input projection is again admissible and locally invertible on the compatibility domain.

**Claim level:** `proved` as a structural distinction in `gluing formalism.md`; model-specific input maps still require an IBVP proof.

## 4. Gauge-Covariant Sewing Layer

### Fixed-(h) Chart

Let (h:\Gamma\to G) relate the two interface frames. The connection-descent convention is

$$\begin{align}
\boxed{a_2=a_1^h=h^{-1}a_1h+h^{-1}\mathrm d_\Gamma h.}
\end{align}$$

At fixed (h), the full cotangent-polarized transmission relation is

$$\begin{align}
\boxed{
a_2=a_1^h,
\qquad
\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.}
\end{align}$$

Invariantly, this is the (h)-twisted graph/conormal representative of a polarization-independent relation

$$\begin{align}
\mathsf S_{\Gamma,h}
\subset
\overline{\mathcal Z_{1,\Gamma}}
\times\mathcal Z_{2,\Gamma}.
\end{align}$$

The fixed-(h) chart-preserving boundary-frame transformations obey

$$\begin{align}
k_2=h^{-1}k_1h.
\end{align}$$

This condition defines a twisted diagonal inside the boundary-frame presentation. Section 10 will restrict it further to values that extend to global proper gauge transformations.

### Variable-(h) Presentation

If (h) is a variable chart coordinate, the product frame group acts by

$$\begin{align}
a_i&\longmapsto a_i^{k_i},
&h&\longmapsto k_1^{-1}hk_2.
\end{align}$$

The completed variation must retain the (h)-corner term. With the present convention its Cauchy representative contains

$$\begin{align}
\boxed{
\Theta_{S,\mathrm{ext}}
=\Theta_{S,1}+\Theta_{S,2}
-\langle E_2^\perp,h^{-1}\delta h\rangle_S,}
\end{align}$$

up to the declared polarization/JKM representative. One must not introduce variable (h), discard this term, and then count (h) as an independent edge oscillator.

### Cauchy Moment Map

On a Cauchy cut (S=\Gamma\cap\Sigma_t), the boundary-frame action is generated by

$$\begin{align}
\boxed{\mu_S=E_1^\perp+\operatorname{Ad}_h^*E_2^\perp.}
\end{align}$$

This is the Gauss moment map. It is not the complete worldtube conormal equation when (S) has positive dimension. In a full connection polarization, the normal-electric equation may be a component/consequence of the complete transmission relation; its role as the generator of gauge reduction remains logically distinct.

Therefore

$$\begin{align}
\boxed{
\text{Cauchy assembly}
\neq\text{full timelike transmission}
\neq\text{Gauss moment-map role}
\neq\text{gauge quotient}.}
\end{align}$$

**Claim level:** the fixed-(h) variation, coadjoint sign, variable-(h) corner term, and distinction of roles are `proved` algebraically and checked in (1+1); PDE reconstruction remains conditional.

## 5. Gauge-Fixed Matched Locus

Let (widehat{\operatorname{Sol}}_i^{\chi_i}) be the gauge-fixed regional solutions realized by (mathscr U_i^{\chi_i}), before restoring non-residual global gauge copies. Define

$$\begin{aligned}
\mathcal C_h^\chi:=\{(A_1,A_2)\in
\widehat{\operatorname{Sol}}_1^{\chi_1}
\times\widehat{\operatorname{Sol}}_2^{\chi_2}:\;&
(\operatorname{Tr}_{1,\Gamma}A_1,
\operatorname{Tr}_{2,\Gamma}A_2)\in\mathsf S_{\Gamma,h},\\
&\mathcal C_1=\mathcal C_2=0
\text{ with propagated corner compatibility},\\
&\text{the collar/gauge-slice condition of Section 6 holds}\}.
\end{aligned}$$

In a cotangent chart, the first line expands into connection descent and full transmission. Its Cauchy restriction lies on the Gauss moment-map locus when the original action/Noether identity identifies the normal-electric component accordingly; the moment map should not be imposed a second time as an unrelated equation.

(mathcal C_h^\chi) is a matched **representative locus**. It is not yet:

- the full gauge-redundant global solution space;
- the physical quotient;
- a smooth manifold;
- a symplectic space.

Those conclusions require Sections 7--10. In the variable-(h) presentation, replace (mathcal C_h^\chi) by (widetilde{\mathcal C}^\chi) containing (h) and the completed corner data, and use the product frame action.

**Claim level:** definition/theorem target. Existing general gauge notation is recovered when the gauge-realization and collar conditions are suppressed as assumptions.

## 6. Collar and Gauge-Slice Matching

The transition (h) has two independent jobs:

1. (h) identifies the two boundary bundle/connection traces;
2. an extension (widetilde h) must relate the two chosen gauge-slice germs in a sewing collar.

Choose one-sided collars (N_i(\Gamma)\simeq[0,\varepsilon)\times\Gamma), and, when using smooth local bundle patching, enlarge them to overlapping collar charts. A **collar gauge-slice match** consists of:

- an extension (widetilde h) with (widetilde h|_\Gamma=h);
- one-sided representatives whose traces/jets define one connection in the two collar trivializations, or an equivalent Sobolev weak-patching statement;
- residual regional transformations, if needed, that preserve (chi_i=0), the physical outer boundary, and the admissible boundary operator;
- compatibility of the gauge conditions and gauge-driver constraints across the collar.

Denote this condition by

$$\begin{align}
\operatorname{Match}_{\mathrm{col}}^\chi(A_1,A_2;\widetilde h)=0.
\end{align}$$

For two identical local gauges a sufficient smooth condition is that the collar representatives be related by (widetilde h) and that the transformed gauge condition agree,

$$\begin{align}
\chi_2(A_1^{\widetilde h})=0
\quad\text{whenever}\quad
\chi_1(A_1)=0,
\end{align}$$

possibly after a declared residual correction. For two different gauges, this line is replaced by a slice-change boundary problem.

A local collar extension of (h) is not the same as extending a cut gauge transformation all the way to a physical wall. The latter is the global extension-image problem of Section 10.

**Claim level:** required definition/hypothesis. No active higher-dimensional example proves this condition for its regional Coulomb slice.

## 7. Weak Patching Theorem Target

The correct target concerns the original equations and, separately, the assembled gauge condition.

**Conditional proposition (weak connection patching).** Assume:

1. a local second-order Yang--Mills-type action with a valid Green identity;
2. smooth fields, or Sobolev regularity high enough that the nonlinear products, traces, and transition action are defined;
3. regional original equations and constraints;
4. connection descent through (h) and a compatible collar extension (widetilde h);
5. the complete coadjoint transmission equation;
6. the collar gauge-slice matching condition;
7. density/surjectivity of the allowed test traces needed for the converse.

Then the target implication is

$$\begin{align}
\boxed{
\text{descent+full transmission+gauge compatibility}
\Longrightarrow
\begin{cases}
\text{the piecewise connection solves the original equations weakly},\\
\text{there is no delta-supported electric surface current},\\
\text{there is no magnetic/Bianchi interface defect},\\
\text{the assembled representative satisfies the global gauge condition distributionally}.
\end{cases}}
\end{align}$$

Connection descent removes the curvature defect caused by a tangential connection jump. The Green identity identifies the remaining Euler--Lagrange surface term with (Pi_1+\operatorname{Ad}_h^*\Pi_2). The regional Bianchi identities patch only because the fields are representatives of one connection, not because one selected curvature component happens to match. Gauge compatibility separately removes a delta defect in (chi_M(A)), which is not an original gauge-invariant field equation.

Under assumption 7, absence of the corresponding distributional defects implies the displayed trace/transmission conditions, giving the converse. A weak-to-strong transmission regularity theorem is still needed to conclude membership in a stronger global solution class.

**Claim level:** `conditional theorem target`. `gluing formalism.md` contains the analogous reconstruction hypothesis; the active Maxwell notes verify it only for their displayed smooth separated modes.

## 8. Assembly and Restoration of Full Global Gauge Redundancy

Let

$$\begin{align}
\operatorname{Sol}(M)
\end{align}$$

denote the original, gauge-redundant global solution space in the declared sector and physical outer-boundary class. Let

$$\begin{align}
\mathcal G_M^{\mathrm{prop}}
\end{align}$$

be the global proper gauge group: transformations whose physical/asymptotic boundary charges vanish according to the chosen outer policy. Physical outer/asymptotic large gauge symmetries are not included. Based disconnected components can be included when the model declares them proper, as in compact (1+1) Maxwell/Yang--Mills.

Under the weak patching proposition, define the assembly map

$$\begin{align}
\boxed{
\operatorname{Asm}_h:\mathcal C_h^\chi
\longrightarrow\operatorname{Sol}(M).}
\end{align}$$

Its image is the global gauge-fixed locus reconstructed from the regional slices. Restore the complete global gauge redundancy by saturation:

$$\begin{align}
\boxed{
\operatorname{Unfix}_h(\mathcal C_h^\chi)
:=\operatorname{Sat}_{\mathcal G_M^{\mathrm{prop}}}
(\operatorname{Asm}_h(\mathcal C_h^\chi))
=\mathcal G_M^{\mathrm{prop}}\cdot
\operatorname{Asm}_h(\mathcal C_h^\chi).}
\end{align}$$

This operation adds the gauge copies required to recover the original redundant solution space. It does not identify them. The physical quotient is a later operation:

$$\begin{align}
\operatorname{Unfix}_h(\mathcal C_h^\chi)
\longrightarrow
\operatorname{Unfix}_h(\mathcal C_h^\chi)/\mathcal G_M^{\mathrm{prop}}.
\end{align}$$

Thus

$$\begin{align}
\boxed{\text{restore gauge redundancy}\neq\text{take the physical quotient}.}
\end{align}$$

**Claim level:** explicit new layer/definition. Equality of the saturation with all of (operatorname{Sol}(M)) is the completeness target below, not a definition.

## 9. Completeness, Faithfulness, Symplectic Compatibility, and Physical Quotient

Define the residual matched-slice group (mathcal G_{\mathrm{res},h}^\chi) to consist of pairs of regional transformations that:

- preserve the physical outer-boundary policy;
- preserve the gauge conditions, gauge drivers, and admissible boundary operators;
- preserve the fixed-(h) chart and collar match;
- assemble to a transformation in (mathcal G_M^{\mathrm{prop}}).

It includes all residual/Gribov slice intersections that survive in the declared sector. It is not assumed trivial.

The first-draft master theorem schema has four independent parts.

### (1) Completeness

$$\begin{align}
\boxed{
\mathcal G_M^{\mathrm{prop}}\cdot
\operatorname{Asm}_h(\mathcal C_h^\chi)
=\operatorname{Sol}(M).}
\end{align}$$

Every global solution orbit must meet the assembled regional slice.

### (2) Faithfulness

$$\begin{align}
\boxed{
\operatorname{Asm}_h(u)
\sim_{\mathcal G_M^{\mathrm{prop}}}
\operatorname{Asm}_h(u')
\Longleftrightarrow
u\sim_{\mathcal G_{\mathrm{res},h}^\chi}u'.}
\end{align}$$

The residual group must describe every multiple intersection of one global orbit with the matched slice, and no more.

### (3) Symplectic Compatibility

Let every (Omega_i) be pulled back from the original gauge-invariant action to the gauge-fixed regional solution locus. Then

$$\begin{align}
\boxed{
\operatorname{Asm}_h^*\Omega_M
=\left.
(\Omega_1+\Omega_2+\Omega_{\mathrm{corner}}^h)
\right|_{\mathcal C_h^\chi}.}
\end{align}$$

For fixed (h), a closed (S), and compatible representatives, (Omega_{\mathrm{corner}}^h) may vanish. For variable (h), it includes the two-form obtained from the (h)-corner one-form and any required JKM completion. This identity must also imply that restored proper gauge directions are precisely the relevant kernel before the regular quotient, and that the glued Hamiltonian equals the original global Hamiltonian when the boundary work terms cancel.

### (4) Physical Gauge-Slice Equivalence

On a regular/irreducible stratum,

$$\begin{align}
\boxed{
\mathcal C_h^\chi/\mathcal G_{\mathrm{res},h}^\chi
\simeq
\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.}
\end{align}$$

When the two-forms are suitably nondegenerate on the quotient, this should be a symplectomorphism; otherwise it is first a bijection/equivalence of reduced solution relations.

Current claim levels are:

| Model/tier | Completeness | Faithfulness | Symplectic compatibility | Physical quotient |
|---|---|---|---|---|
| Maxwell (1+1), framed trivial sector | `proved` by direct global representative and compact holonomy reduction | `proved` including based large-gauge periodicity | `proved` | `proved` |
| Yang--Mills (1+1), framed trivial/trivial-character sector | `proved` by based holonomy classification and direct uncut reduction | `proved`; diagonal action free | `proved` from reduced canonical one-form/Hamiltonian | `proved` |
| Maxwell (2+1/3+1) separated smooth modes | mode reconstruction only | `missing` | mode normalization only | `missing` |
| general Yang--Mills-type theory | `conditional target` | `conditional target` | `conditional target` | `conditional target` |

The four targets must not be promoted together merely because one of them has been checked.

## 10. Cut Gauge Restoration as Reduction by Stages

The cleanest exact sequence is an equal-time statement. Define

$$\begin{align}
\mathcal G_{\Sigma_i}^0
:=\{g_i:\Sigma_i\to G:
g_i|_S=1,
\ g_i|_{\partial_{\mathrm{phys}}\Sigma_i}=1\},
\end{align}$$

with the model's regularity and allowed components. Let (mathcal G_\Sigma^{\mathrm{prop}}) be the corresponding global proper group. In a fixed-(h) chart define

$$\begin{align}
\boxed{
\mathcal G_{S,h}^{\mathrm{ext}}
:=\operatorname{Im}\!\left[
\mathcal G_\Sigma^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{S,h}}
\mathcal G_{S,1}\times\mathcal G_{S,2}
\right].}
\end{align}$$

Every element of the image obeys

$$\begin{align}
k_2=h^{-1}k_1h.
\end{align}$$

Do not replace the image by all of (operatorname{Map}(S,G)) without proof. Under the extension/patching hypothesis that the kernel consists exactly of independently based regional transformations, there is a short exact sequence

$$\begin{align}
\boxed{
1\longrightarrow
\mathcal G_{\Sigma_1}^0\times\mathcal G_{\Sigma_2}^0
\longrightarrow
\mathcal G_\Sigma^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{S,h}}
\mathcal G_{S,h}^{\mathrm{ext}}
\longrightarrow1.}
\end{align}$$

The time-slab version replaces (S) by (Gamma) and includes temporal endpoint/history compatibility.

If the first subgroup is normal, the actions preserve the constraint loci, and all intermediate quotients are controlled, reduction by stages gives

$$\begin{align}
\boxed{
\frac{\mathcal C_h^{\mathrm{pre}}}
{\mathcal G_\Sigma^{\mathrm{prop}}}
\simeq
\frac{
\mathcal C_h^{\mathrm{pre}}/
(\mathcal G_{\Sigma_1}^0\times\mathcal G_{\Sigma_2}^0)}
{\mathcal G_{S,h}^{\mathrm{ext}}}.}
\end{align}$$

Here (mathcal C_h^{\mathrm{pre}}) is the pre-reduction matched Cauchy locus. This equation explains how “regional based quotient, then cut quotient” can equal one global proper quotient.

It can fail if boundary values do not extend, a reducible stratum makes the quotient singular, the gauge slices omit an orbit, the residual group is misidentified, an anomaly/projective action obstructs the quotient, or a physical outer symmetry has been incorrectly included as proper gauge.

Concrete topology already matters. For the framed (U(1)) cylinder, only zero-winding maps (S^1\to U(1)) extend to the physical wall as the identity. For the slab, both (T^2\to U(1)) winding classes must vanish. The (1+1) interval sees the full connected (G) only because its cut is a point.

**Claim level:** the exact sequence/reduction formula is `conditional`; the two-cell and three-cell (1+1) compact-group reductions are `proved` model benchmarks.

## 11. Gauge-Fixing Independence Square

Let (chi) and (chi') be two admissible hyperbolic gauge realizations in the same physical/bundle sector. A gauge-slice change is defined only if every relevant global orbit meets both assembled loci and the slice-change boundary problem is unique modulo the two residual groups. Under completeness and faithfulness, it induces

$$
\begin{array}{ccc}
\mathcal C_h^\chi/\mathcal G_{\mathrm{res},h}^\chi
&\xrightarrow{\ T_{\chi\to\chi'}\ }&
\mathcal C_h^{\chi'}/\mathcal G_{\mathrm{res},h}^{\chi'}\\
\downarrow&&\downarrow\\
\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}
&\xrightarrow{\ \operatorname{id}\ }&
\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.
\end{array}
$$

The square should commute and (T_{\chi\to\chi'}) should preserve the reduced original CPS form. This is the gauge-theory analogue of polarization covariance, but it includes a nontrivial orbit/slice theorem rather than only a boundary canonical transformation.

Cutting and a Coulomb-like gauge generally do not commute. The global Coulomb parameter solves an elliptic problem on all of (Sigma); regional parameters solve two problems with artificial-boundary conditions. Their difference is controlled by a harmonic extension of the interface frame and belongs in the (h,widetilde h), residual-group, and compatibility data.

**Claim level:** `conditional theorem target`; no general commuting square is proved by the existing Maxwell mode calculations.

## 12. Equal-Time Assembly Versus Time-Slab Sewing

### Scalar Comparison

For a scalar in the energy class,

$$\begin{align}
(\phi,\pi)\in H^1(\Sigma)\oplus L^2(\Sigma),
\end{align}$$

equal-time assembly of the configuration requires equality of the (H^{1/2}) traces of (phi_1,phi_2). The momentum (pi\in L^2) is assembled piecewise and has no generic pointwise trace to match. Conormal flux matching belongs to the operator/graph domain or to the weak time-slab transmission equation; it is not an additional pointwise equality imposed on arbitrary energy Cauchy data.

### Gauge Theory

For second-order connection theory, equal-time Cauchy data schematically have

$$\begin{align}
(A_\Sigma,E)\in\mathcal X_A\oplus\mathcal X_E,
\end{align}$$

where (mathcal X_A) has the tangential trace needed for connection descent and (E) obeys Gauss law in the weak sense. The equal-time requirements are:

1. descent of the spatial tangential connection across (S), with transition (h|_S);
2. corner/bundle cocycle compatibility;
3. the weak Gauss cut condition, represented by

   $$\begin{align}
   E_1^\perp+\operatorname{Ad}_h^*E_2^\perp=0
   \end{align}$$

   when the normal electric dual trace is defined;
4. quotient/saturation by the correct residual/global proper group.

The time-slab problem additionally prescribes admissible incoming boundary histories, evolves them through (mathscr U_i^{\chi_i}), and imposes the full worldtube relation

$$\begin{align}
\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.
\end{align}$$

In Maxwell (2+1/3+1), its tangential (F_{ya}) components are genuine transmission data and are not generated by the Cauchy Gauss moment map.

The symbols must therefore retain their support:

$$\begin{align}
S&\subset\Sigma
&&\text{for equal-time assembly and gauge reduction},\\
\Gamma&=I\times S
&&\text{for boundary histories and full transmission}.
\end{align}$$

**Claim level:** structural distinction `proved`; a gauge energy-space assembly theorem is a model-dependent target.

## 13. Observable Algebra, Center, and Dressing

At the algebraic layer distinguish at least three regional choices:

1. (mathfrak A_i^{\mathrm{fr}}): invariant under regional based proper gauge but allowed to transform under the cut boundary-frame group; open Wilson endpoints and cut-charged operators can live here;
2. (mathfrak A_i^{\mathrm{inv}}): a further fixed-point/invariant algebra for a declared cut action and center choice;
3. (mathfrak A_i^{\mathrm{ext}}): an enlarged presentation containing declared transition/dressing/boundary variables when needed to represent the cut action. Such variables are not automatically independent physical edge oscillators.

An electric-center regional algebra can contain the normal cut flux as a central/superselection label. Gluing imposes the twisted matching/Gauss condition and reduces by (mathcal G_{S,h}^{\mathrm{ext}}); the center associated only with the artificial cut should then be paired or removed. Physical outer charges, global topological fluxes, and genuine defect charges can survive and must not be erased by this statement.

Crossing observables require transition data. The (1+1) Yang--Mills benchmark fixes the convention:

$$\begin{align}
\boxed{V_h=U_2^{-1}h^{-1}U_1.}
\end{align}$$

Higher-dimensional crossing Wilson lines and dressed charged observables must be reconstructed by the analogous path-ordered composition, with endpoints and orientation declared.

A conditional algebraic target is

$$\begin{align}
\mathfrak A_M
\simeq
\operatorname{Red}_{\mathcal G_{S,h}^{\mathrm{ext}}}
\left[
(\mathfrak A_1^{\mathrm{fr}}\ \text{composed with}\ \mathfrak A_2^{\mathrm{fr}})
\big|_{\text{descent/transmission}}
\right].
\end{align}$$

The word “composed” is intentionally not replaced by an unconditional Hilbert tensor product. In continuum QFT, touching regional algebras need not define a sharp type-I factorization, and the relevant product/fusion must be specified model by model.

The exact compact benchmark

$$\begin{align}
(L^2(G)\otimes L^2(G))^{G_\Delta}\simeq L^2(G)
\end{align}$$

proves the finite (1+1) Hilbert reduction only. It does not prove a continuum local-algebra or field-valued-interface theorem.

**Claim level:** (1+1) crossing holonomy and Haar reduction `proved`; the continuum algebra/center/dressing framework is `conditional` and model-dependent.

## 14. Quantum BRST--BV Outlook

The classical saturation of Section 8 is not the final language for a continuum gauge-fixed quantum field theory. The expected quantum route is:

$$\begin{align}
(\mathcal K_i^{\mathrm{BRST/BV}},Q_i,	ext{ghost/antighost boundary data})
&\longrightarrow
\text{transition- and corner-compatible composition}\\
&\longrightarrow
(\mathcal K_M^{\mathrm{BRST/BV}},Q_M)
\longrightarrow
H^\bullet(Q_M).
\end{align}$$

The regional complexes must include the boundary data required by the chosen gauge fixing, and the sewing map must intertwine the differentials. Anomalies/projective boundary actions, ghost zero modes, reducible strata, and BV corner terms are possible obstructions. The physical global theory is obtained from global cohomology, not by manually adding gauge copies to a Hilbert space and then averaging over an infinite-dimensional mapping group.

**Claim level:** outlook only. No universal BRST/BV gluing theorem is claimed or presently proved in this project.

## 15. Associativity, Transition Cocycles, and Corners

For a finite spatial partition, reuse the relation-composition language of `gluing formalism.md`. Set-theoretic composition remains associative when every interface relation is imposed exactly once. A smooth/canonical conclusion additionally requires clean/split fiber products, controlled projection, reconstruction for every intermediate union, and regular quotient/reduction by stages.

Gauge transition data add the cocycle condition. Since

$$\begin{align}
(A^g)^h=A^{gh},
\end{align}$$

the present convention gives on triple overlaps

$$\begin{align}
h_{ik}=h_{ij}h_{jk},
\qquad
\boxed{h_{ij}h_{jk}h_{ki}=1}.
\end{align}$$

At a genuine codimension-two corner/triple junction one must also provide:

- a joint admissible trace space, not only pairwise traces;
- the completed corner/JKM and variable-transition canonical terms;
- compatible gauge slices and ghost/residual data;
- stabilizer and reduction-by-stages hypotheses;
- a weak patching theorem for the multi-face distributional defects.

`Yang-Mills 1+1.md` is an exact chain benchmark. It proves

$$\begin{align}
(T^*G)^3//(G\times G)\simeq T^*G,
\qquad
[(W_r,J_r)]\longmapsto(W_3W_2W_1,J_1),
\end{align}$$

and the corresponding normalized-Haar projector composition. The two internal point interfaces are distinct; there is no true triple junction or higher-codimension corner. Therefore the example checks reduction by stages, not the full corner theorem.

**Claim level:** (1+1) chain associativity `proved`; general gauge/corner associativity `conditional target`.

## 16. Model Specialization Table

| Model | Gauge fixing/constraint treatment | Regional object | Prescribed boundary input | Full variational trace | Cauchy moment map | Full transmission | Bulk unfixing | Quantum claim |
|---|---|---|---|---|---|---|---|---|
| scalar comparison | no gauge; ordinary KG hyperbolic problem in the declared class | fixed-history scalar solution/evolution relation | admissible configuration history (q) | ((q,\Pi)) or invariant full trace | n/a | (q_1=q_2, \Pi_1+\Pi_2=0) | n/a | finite linear reduction and declared free-scalar continuum algebra/dynamics/smeared-state results proved in `gluing formalism.md`; no gauge inference |
| Maxwell (1+1) | Gauss law solved exactly; quotient by based regional (U(1)), including declared large components | (T^*U(1)) with ((a_i,E_i)), quantum (L^2(U(1))) | frame history (alpha_i=A_{t,i}|_\Gamma) | (delta S|_\Gamma=-\int E_i\delta\alpha_i) plus Cauchy ((a_i,E_i)) | (E_1+E_2) | same equation in this zero-mode model | `proved` by direct connected representative and saturation/classification | exact Haar reduction, integer flux spectrum, connected Hamiltonian `proved` |
| Maxwell (2+1) cylinder | temporal gauge then Coulomb representative; Gauss solved modewise; no full IBVP theorem | fixed-history master oscillators plus compact normal zero mode | full pullback written as ((\alpha_i,q_i)); reduced channels use Neumann/Dirichlet/zero-mode data | (-e^{-2}(E_y\delta\alpha+B\delta q)) | (E_{y,1}+E_{y,2}) | moment-map equation plus (B_1+B_2=0) | `missing` beyond separated-mode reconstruction | normalized connected modes and oscillator algebra proved in the displayed basis; cutoff-uniform regulator and regional-Fock equivalence not proved |
| Maxwell (3+1) slab | temporal gauge then Coulomb representative; transverse, longitudinal-normal, and zero modes | two polarization oscillator families plus compact normal variable | ((\alpha_i,q_{i,T},q_{i,L})) after Fourier decomposition | (-e^{-2}(E_y\delta\alpha+F_{ya}\delta q^a)) | (E_{y,1}+E_{y,2}) | moment-map equation plus two (F_{ya,1}+F_{ya,2}=0) equations | `missing` beyond separated-mode reconstruction | complete displayed connected mode basis/CCR; no continuum regulator or gauge-slice equivalence theorem |
| Yang--Mills (1+1) | exact Gauss reduction by all declared based components; fixed outer frames | (T^*G) with ((U_i,J_i)), quantum (L^2(G)) | (alpha_i=A_{t,i}|_\Gamma) | (-\langle\mu_i,\delta\alpha_i\rangle), (mu_i=-\operatorname{Ad}_{U_i}J_i) | (mu_1+\operatorname{Ad}_h^*\mu_2) | coincides with the only interface momentum equation | `proved` in the framed trivial/trivial-character sector by holonomy classification/direct uncut reduction | exact Haar/Peter--Weyl reduction, Casimir spectrum, and three-cell reduction by stages `proved`; no continuum field-valued group theorem |

## Master Architecture

The complete first-draft architecture is

$$\begin{align}
S_i^{\mathrm{inv}}
&\longrightarrow
(\Theta_i,\Omega_i,\mathcal Z_{i,\Gamma},\Pi_i,\mu_i)\\
&\longrightarrow
\mathfrak f_i=(\chi_i,\mathcal E_i^{\chi_i},\mathbf B_i^{\chi_i},\mathcal C_i)
\longrightarrow
\mathscr U_i^{\chi_i}\\
&\longrightarrow
\mathcal C_h^\chi
\ \text{by full-trace descent/transmission, constraints, and collar matching}\\
&\longrightarrow
\operatorname{Asm}_h(\mathcal C_h^\chi)
\longrightarrow
\mathcal G_M^{\mathrm{prop}}\cdot\operatorname{Asm}_h(\mathcal C_h^\chi)\\
&\longrightarrow
\frac{\mathcal C_h^\chi}{\mathcal G_{\mathrm{res},h}^\chi}
\simeq
\frac{\operatorname{Sol}(M)}{\mathcal G_M^{\mathrm{prop}}}
\longrightarrow
\text{observable algebra/state or BRST--BV cohomology}.
\end{align}$$

The third line is assembly; the fourth line first restores redundancy and then takes the quotient. Reversing or identifying those operations erases the main new layer of this note.

## First-Draft Claim Ledger

**Proved now, within stated sources and model hypotheses:**

- original-action variational traces and signs in the displayed Maxwell/Yang--Mills models;
- fixed-(h) connection descent and coadjoint transmission variation;
- variable-(h) product-frame covariance and required (h)-corner term;
- full transmission versus Gauss moment-map distinction;
- complete framed (1+1) Maxwell/Yang--Mills classical reductions;
- compact (1+1) Haar/Peter--Weyl quantum reduction and Yang--Mills three-cell reduction by stages;
- separated Maxwell (2+1/3+1) mode equations, determinants, connected bases, and normalizations.

**Conditional theorem targets introduced or made explicit here:**

- admissible hyperbolic regional gauge realization;
- collar/gauge-slice matching through (widetilde h);
- weak patching with no original-equation or gauge-condition interface defect;
- global saturation completeness and residual faithfulness;
- full CPS/Hamiltonian compatibility;
- the short exact restriction sequence with (mathcal G_{S,h}^{\mathrm{ext}});
- gauge-fixing independence;
- continuum observable-algebra/center/dressing reconstruction;
- higher-dimensional associativity with transition cocycles and corners.

**Not claimed:** a universal gauge IBVP, an all-(operatorname{Map}(S,G)) extension theorem, a smooth continuum quotient, Maxwell regulator convergence, continuum normalized-Haar averaging, sharp Hilbert factorization, universal quantization-commutes-with-reduction, BRST/BV gluing, charged matter, nontrivial bundle-sector changes, anomalies, Chern--Simons/BF, gravity, or null gauge composition.

## Verification Boundary

**Verified:** the source conventions were kept fixed; all active Yang--Mills (1+1) finite regressions and Maxwell symbolic regressions passed before this draft was written; the model table agrees with the verification boundaries of the source notes.

**Assumptions:** every conditional proposition uses one declared regularity and bundle sector, fixed physical outer-boundary policy, constraint propagation, compatible trace/corner representatives, and regular/irreducible quotient data.

**Not verified:** every general theorem target listed above. The first recommended proof attempt is the Maxwell (2+1) two-way global-solution versus matched-regional-Coulomb correspondence, followed by the (U(1)) extension-image calculation and the Maxwell (3+1) polarization-completeness test.
