# Spatial-Region Gauge Gluing Formalism

> Status: repaired draft for criticism and iteration; with a separately scoped Maxwell 2+1 kill test. This note adds a gauge layer to the spatial-partition/timelike-worldtube architecture of `gluing formalism.md`; it does not modify that manuscript and does not claim a new general PDE, quotient, or quantum theorem. Every theorem schema below is labelled by its current claim level.

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

This draft treats:

- a fixed globally hyperbolic background;
- compact internal gauge group $G$;
- Maxwell/Yang--Mills-type second-order connection theories;
- fixed physical outer boundary conditions and a declared outer-frame policy;
- a locally trivializable sewing collar;
- smooth or sufficiently regular fields in one declared bundle/topological sector;
- equivalence relations before any smooth quotient; smooth symplectic claims only on a controlled regular sector.

This round is restricted to **Yang--Mills-type second-order connection theories on a fixed background**, with Maxwell as the Abelian benchmark. Charged matter, nontrivial bundle-sector changes, anomalies, gravity/diffeomorphism gauge, first-order Chern--Simons/BF, higher-form/higher gauge, and null characteristic composition are excluded. No result below is extended to those theories.

This note reuses the following objects and logic from `gluing formalism.md`:

$$\begin{align}
\text{spatial partition and }\Gamma
&\longrightarrow \text{original variational trace spaces }\mathcal Z_{i,\Gamma}^{\mathrm{inv}}
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

Use signature $(-,+,+,\ldots)$, anti-Hermitian connections, a positive invariant Lie-algebra pairing, and

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg,& F^g&=g^{-1}Fg.
\end{align}$$

For $M_i^I=I\times\Sigma_i$, start with the original action, including the physical-boundary and corner representatives:

$$\begin{align}
S_i^{\mathrm{inv}}[A_i]
&=\int_{M_i^I}\mathscr L(A_i,F_i)+S_{i,\partial_{\mathrm{phys}}}+S_{i,\mathrm{corner}},\\
\delta S_i^{\mathrm{inv}}
&=\langle\mathcal E_i(A_i),\delta A_i\rangle_{M_i^I}
+\Theta_i(t_+)-\Theta_i(t_-)
+\langle\Pi_i,\delta a_i\rangle_\Gamma
+\text{remaining declared corner terms},\\
a_i&:=\iota_\Gamma^*A_i,&\Omega_i&:=\delta\Theta_i.
\end{align}$$

Here $a_i$ is an affine connection, and $\Pi_i$ is its outward Green-dual momentum, including coupling, density, Hodge, and tangential integration-by-parts factors. Corner terms already absorbed into $\Theta_i$ are not counted again. There is no intrinsic physical action at the artificial cut.

Let $\operatorname{Sol}_i$ consist of regional solutions of the original equations with the declared physical boundary policy, allowing the stated family of artificial-cut histories. Define the **original variational trace** and its map by

$$\begin{align}
(\mathcal Z_{i,\Gamma}^{\mathrm{inv}},\omega_{i,\Gamma}^{\mathrm{out}})
&:=\text{trace data seen by this original Green identity, with its corner completion},\\
\operatorname{Tr}_{i,\Gamma}^{\mathrm{inv}}:
\operatorname{Sol}_i&\longrightarrow\mathcal Z_{i,\Gamma}^{\mathrm{inv}}.
\end{align}$$

In a connection polarization these data include $(a_i,\Pi_i)$ and the required physical corner data, subject to the original trace constraints. The superscript $\mathrm{inv}$ refers to the **gauge-invariant action**: it does not mean that $a_i$ is a gauge-invariant observable or that a gauge quotient has already been taken. The trace form may be presymplectic; at low regularity the pairing is a duality, not a pointwise product. No gauge-driver or gauge-fixing symplectic pairs are included.

For the source Maxwell actions, with $y_i$ increasing toward the cut,

$$\begin{align}
\Theta_i&=e^{-2}\int_{\Sigma_i} E_i^j\,\delta A_{i,j},\\
\left.\delta S_i^{\mathrm{inv}}\right|_\Gamma
&=-e^{-2}\int_\Gamma(E_{y,i}\delta\alpha_i+F_{ya,i}\delta q_i^a).
\end{align}$$

In $2+1$, $F_{ys}=B$; in `Maxwell 1+1.md` the coupling is set to one. Thus the temporal component of $\Pi_i$ is $-E_i^\perp$, where $E_i^\perp$ denotes the outward **electric momentum** (including $e^{-2}$ and the measure), whereas the Cauchy charge uses $+E_i^\perp$. These are compatible signs, not two definitions of one covector. For Yang--Mills $1+1$, $E_i^\perp=\mu_i=\mathcal E_i(L)=-\operatorname{Ad}_{U_i}J_i$ and $\Theta_i=\langle J_i,U_i^{-1}\delta U_i\rangle$.

The rule remains original action $\to(\Theta,\Omega,\mathcal Z^{\mathrm{inv}},\Pi,\mu)$ before PDE gauge fixing. A transformation identity at the physical boundary and at the cut is regional based proper gauge; active transformations nontrivial at the cut can carry charge. Passive coordinate changes are separately defined in Section 4.

**Claim level:** action/Green identities and the displayed model signs are derived; a complete functional-analytic trace space for a general gauge theory is an input, not a consequence of this notation.

## 2. Hyperbolic Gauge-Realization Layer

For each region choose

$$\begin{align}
\mathfrak f_i=(\chi_i,\mathcal E_i^{\chi_i},\mathbf B_i^{\chi_i},\mathcal C_i^{\chi_i}).
\end{align}$$

These specify the gauge condition, reduced evolution system, admissible boundary operator, and compatibility/constraint propagation conditions. Original Gauss constraints and auxiliary gauge/driver constraints must be distinguished within $\mathcal C_i^{\chi_i}$. Coulomb reduction can instead be a declared mixed elliptic/evolution realization; calling its master equations hyperbolic does not prove a raw-potential hyperbolic IBVP.

Write a realized solution as $\widehat A_i=(A_i,\text{auxiliary realization variables})$; there need be no auxiliary variables in a particular model. Let $F_i^\chi\widehat A_i=A_i$ forget them. The realized solution domain must enforce propagation so that $A_i$ solves the **original** equations. A solution of a reduced equation with nonzero constraint violation is excluded.

The boundary space for this realization is independently specified:

$$\begin{align}
\widehat{\operatorname{Tr}}_{i,\Gamma}^{\chi_i}:
\widehat{\operatorname{Sol}}_i^{\chi_i}
&\longrightarrow\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i},
&\widehat z_i&:=\widehat{\operatorname{Tr}}_{i,\Gamma}^{\chi_i}\widehat A_i.
\end{align}$$

$\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}$ contains all boundary variables needed to state that IBVP, including the data needed to recover the original variational trace. Depending on the chosen reduction, it can also contain normal potential components, incoming/outgoing combinations, gauge-condition or driver traces, and boundary jets. This list is not a prescription to impose all these quantities independently, nor to add ghosts to the present classical theory. The space has no assumed physical symplectic structure.

Let $\Xi_i^{\chi_i,\pm}$ be the realized initial/final Cauchy-data spaces, with Cauchy trace maps $\widehat{\operatorname{Tr}}_{\Sigma_i^\pm}^{\chi_i}$. With input histories $\mathcal B_{i,\mathrm{in}}^{\chi_i}$, declare

$$\begin{align}
\mathfrak D_i^{\chi_i}\subset
\Xi_i^{\chi_i,-}\times\mathcal B_{i,\mathrm{in}}^{\chi_i}.
\end{align}$$

The solution relation can be defined before existence or uniqueness is proved:

$$\begin{align}
\mathscr U_i^{\chi_i}:=\{(\xi_i^-,\xi_i^+;b_i,\widehat z_i):\;&
\widehat A_i\in\widehat{\operatorname{Sol}}_i^{\chi_i},\quad
(\xi_i^-,b_i)\in\mathfrak D_i^{\chi_i},\\
&\widehat z_i=\widehat{\operatorname{Tr}}_{i,\Gamma}^{\chi_i}\widehat A_i,
\quad b_i=P_{i,\mathrm{in}}^{\chi_i}(\widehat z_i),\quad
\xi_i^\pm=\widehat{\operatorname{Tr}}_{\Sigma_i^\pm}^{\chi_i}\widehat A_i\}.
\end{align}$$

Calling it a well-posed causal evolution, or a graph, requires existence, uniqueness at the declared equivalence level, constraint propagation, energy estimates and continuous/smooth dependence. Physical CPS on this realization is the pullback of the original $\Omega_i$ by $F_i^\chi$, never the extra symplectic form of a gauge-fixed action.

**Claim level:** definitions and theorem inputs. Maxwell $2+1/3+1$ supply separated temporal/Coulomb realizations, not this full IBVP theorem.

## 3. Two Trace Spaces and Two Different Maps

On a declared compatible trace domain define

$$\begin{align}
\boxed{\rho_i^{\chi_i}:\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}
\longrightarrow\mathcal Z_{i,\Gamma}^{\mathrm{inv}}},
\qquad
\boxed{P_{i,\mathrm{in}}^{\chi_i}:\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}
\longrightarrow\mathcal B_{i,\mathrm{in}}^{\chi_i}},\\
\rho_i^{\chi_i}\circ\widehat{\operatorname{Tr}}_{i,\Gamma}^{\chi_i}
&=\operatorname{Tr}_{i,\Gamma}^{\mathrm{inv}}\circ F_i^\chi,
&z_i&=\rho_i^{\chi_i}(\widehat z_i),\quad b_i=P_{i,\mathrm{in}}^{\chi_i}(\widehat z_i).
\end{align}$$

$\rho_i^{\chi_i}$ forgets the unphysical boundary information; it can involve reconstructing a Green-dual trace from the realized boundary variables. Its domain and continuity must be proved for the chosen realization. It is not assumed surjective onto all of $\mathcal Z^{\mathrm{inv}}$, injective, or to admit a section. If the proposed $\widehat z_i$ does not determine $z_i$, the enlarged trace list is incomplete. $P_{i,\mathrm{in}}^{\chi_i}$ implements $\mathbf B_i^{\chi_i}$ on that enlarged space. It is an input map, not necessarily a linear or idempotent projection.

In particular, there is **no assumed factorization** $P_{i,\mathrm{in}}^{\chi_i}=\overline P_i\circ\rho_i^{\chi_i}$. Gauge/driver inputs may distinguish two enlarged traces with the same original variational trace. Original connection descent, full physical transmission and physical corners are imposed on $(\rho_1\widehat z_1,\rho_2\widehat z_2)$. Regional gauge constraints, and any optional global-slice matching, can use additional components of $\widehat z_i$.

The original $\mathcal Z$ in `gluing formalism.md` remains its Green-identity trace space. This repair does not enlarge that manuscript's physical phase space: it adds a realization layer above it. Polarization changes act on $\mathcal Z^{\mathrm{inv}}$ and its sewing/corner representative. A compatible change of $\widehat{\mathcal Z}^{\chi}$ and $P_{\mathrm{in}}^\chi$ requires its own IBVP check; an arbitrary physical canonical transformation need not lift to an admissible incoming prescription.

The Maxwell $2+1/3+1$ notes provide the original connection/flux pairing and Fourier master-field Dirichlet, Neumann-type and zero-mode histories. They do not specify the full enlarged trace space, its $\rho$, or an incoming map on a common constraint-preserving function-space domain. Thus neither “variational trace = incoming trace” nor “all $a_i$ are freely prescribable causal data” follows from those calculations. The separate `maxwell-2p1-spatial-gluing-kill-test/calculations.md` now supplies explicit maps and a smooth finite-Fourier mixed Coulomb realization; this is not a general hyperbolic IBVP theorem.

**Claim level:** repaired architecture/definitions; realization-specific existence and admissibility remain conditional.

## 4. Gauge-Covariant Sewing, Passive Frames, and Active Gauge

### Fixed-$h$ Physical Sewing

For a fixed transition $h:\Gamma\to G$, use the projected original traces and impose

$$\begin{align}
a_2&=a_1^h=h^{-1}a_1h+h^{-1}\mathrm d_\Gamma h,\\
\langle\operatorname{Ad}_h^*\Pi_2,X\rangle
&:=\langle\Pi_2,\operatorname{Ad}_{h^{-1}}X\rangle.
\end{align}$$

Fixed-$h$ descent gives $\delta a_2=\operatorname{Ad}_{h^{-1}}\delta a_1$. Releasing the common connection history in the summed original action gives

$$\begin{align}
\left.\delta(S_1+S_2)\right|_\Gamma
&=\langle\Pi_1+\operatorname{Ad}_h^*\Pi_2,\delta a_1\rangle_\Gamma,
&\boxed{\Pi_1+\operatorname{Ad}_h^*\Pi_2=0}.
\end{align}$$

The equation means vanishing on the shared admissible test-trace space; at corners, face covectors must first be pulled back to that joint space. Only with independently arbitrary test components is it componentwise equality. With both momenta outward, this conormal relation is isotropic for the **sum** of the outward forms. Equivalently, after converting to the common interface orientation of `gluing formalism.md`, write

$$\begin{align}
\mathsf S_{\Gamma,h}^{\mathrm{inv}}
\subset\overline{\mathcal Z_{1,\Gamma}^{\mathrm{inv},o_\Gamma}}
\times\mathcal Z_{2,\Gamma}^{\mathrm{inv},o_\Gamma}.
\end{align}$$

The bar reverses the common-orientation form, not a second copy of the outward sign. Maximality/smoothness is not inferred from this formal isotropy.

### Passive Frame/Trivialization Changes

Let $\mathrm{Fr}_{\Gamma,i}$ have as objects allowed regional trivializations of a fixed geometric bundle/connection, with the physical outer frames retained, and as arrows changes of those trivializations on their chart domains. Their cut values are denoted $k_i$; a map specified only on $\Gamma$ is not automatically a change of a fixed regional chart. In coordinates,

$$\begin{align}
a_i&\longmapsto a_i^{k_i},&h&\longmapsto k_1^{-1}hk_2.
\end{align}$$

Composition is composition of frame changes. The underlying connection has not changed, so these arrows have no Hamiltonian charge and are not part of the physical gauge quotient. Gauge equations, boundary operators and driver components must also be re-expressed in the new coordinates; freezing their coordinate formula while transforming $a_i$ would instead ask an active gauge question.

The variable-$h$ presentation consists of $(\widehat A_1,\widehat A_2,h)$ together with this trivialization information. Identifying presentations by $\mathrm{Fr}_{\Gamma,1}\times\mathrm{Fr}_{\Gamma,2}$ only removes coordinate multiplicity. It does not yet give $\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}$. In a reachable fixed-$h$ chart the coordinate stabilizer satisfies $k_2=h^{-1}k_1h$; this algebraic condition says nothing by itself about properness or extension to physical walls.

### Variable-$h$ Canonical Term

For field-dependent presentation variations set $\eta=h^{-1}\delta h$. On the descent locus, before imposing the equations of motion,

$$\begin{align}
\delta(a_1^h)&=\operatorname{Ad}_{h^{-1}}\delta a_1+D_{a_2}\eta,\\
\left.\delta(S_1+S_2)\right|_\Gamma
&=\langle\Pi_1+\operatorname{Ad}_h^*\Pi_2,\delta a_1\rangle_\Gamma
+\int_\Gamma\langle\Pi_2^\alpha,D_\alpha\eta\rangle.
\end{align}$$

Here $\Pi^\alpha$ is a tangential vector **density** valued in the dual Lie algebra. Its divergence includes the density and dual gauge connection; do not insert a second volume density. Equivalently, use the induced measure and its covariant divergence everywhere. Invariance of the pairing gives the complete worldtube identity

$$\begin{align}
\boxed{\int_\Gamma\langle\Pi_2^\alpha,D_\alpha\eta\rangle
=-\int_\Gamma\langle D_\alpha\Pi_2^\alpha,\eta\rangle
+\int_{\partial\Gamma}\langle n_\alpha^\Gamma\Pi_2^\alpha,\eta\rangle.}
\end{align}$$

The boundary integral is oriented Stokes flux; the outward conormal and induced boundary measure include its orientation, without another Lorentzian unit-normal sign. Since $\Pi_2^t=-E_2^\perp$, for $\Gamma=I\times S$ this becomes

$$\begin{align}
\int_\Gamma\langle\Pi_2^\alpha,D_\alpha\eta\rangle
={}&-\int_\Gamma\langle D_\alpha\Pi_2^\alpha,\eta\rangle
-\left[\langle E_2^\perp,\eta\rangle_S\right]_{t_-}^{t_+}
+\int_{I\times\partial S}\langle n_A^S\Pi_2^A,\eta\rangle.
\end{align}$$

For $S=-\frac1{4e^2}\int\sqrt{-g}\langle F_{\mu\nu},F^{\mu\nu}\rangle$, an adapted unit-normal collar gives $\Pi^\alpha=-e^{-2}\sqrt{|\gamma|}F^{n\alpha}$ and $D_\alpha\Pi^\alpha=\sqrt{|\gamma|}\mathcal E^n$, where $\mathcal E^\nu=e^{-2}D_\mu F^{\mu\nu}$ is the Euler expression without volume density. The symmetric extrinsic-curvature contraction with antisymmetric $F$ vanishes. In the flat Maxwell cylinder,

$$\begin{align}
D_\alpha\Pi^\alpha=-e^{-2}(\dot E_y+\partial_s B)=\mathcal E^y.
\end{align}$$

The bulk term therefore vanishes on the original equations, including their normal component. The off-shell Noether identity $D_\nu\mathcal E^\nu=0$ relates equations; it does **not** set $\mathcal E^n=0$. Cauchy Gauss law alone does not remove $\dot E_y+\partial_s B$. A propagated original constraint/evolution system may supply this equation; unconstrained gauge-fixed data may not. A more general second-order constitutive connection action uses its actual Green dual and boundary Noether identity, including any declared boundary contributions, before the divergence may be discarded.

Only on the original constraint/on-shell locus, after this full integration by parts and with the $I\times\partial S$ terms retained or removed by the declared boundary policy, the Cauchy representative is

$$\begin{align}
\Theta_{S,\mathrm{ext}}=\Theta_{S,1}+\Theta_{S,2}
-\langle E_2^\perp,h^{-1}\delta h\rangle_S.
\end{align}$$

This is not a universal off-shell identity. It is a coordinate completion of the original potential, not a new interface action. In Maxwell $1+1$ it gives $-E_2\delta\varphi$, and on $E_2=-E_1=-E$ the potential is $E\delta(a_1-a_2+\varphi)$. This term neither makes $h$ an independent oscillator nor gives a passive frame change a physical charge.

### Active Extendable Boundary Transformations

Now hold the geometric frame convention fixed and actively transform the fields by an allowed bulk automorphism. Define

$$\begin{align}
\mathcal G_{\Gamma,i}^{\mathrm{act,ext}}
&:=\operatorname{Im}\!\left[\mathcal G_i^{\mathrm{allowed}}
\longrightarrow\operatorname{Map}(\Gamma,G)\right],\\
\mathcal G_{S,h}^{\mathrm{ext}}
&:=\operatorname{Im}\!\left[\mathcal G_\Sigma^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{S,h}}
\operatorname{Map}(S,G)^2\right].
\end{align}$$

For nontrivial bundle charts, the mapping notation means compatible sections of the gauge-group bundle. The time-slab global image uses $\mathcal G_M^{\mathrm{prop}}$ and $\Gamma$, with temporal conditions. An active cut value acts unambiguously only after retaining a bulk lift or quotienting its allowed based kernel. A fixed-history fiber need not be preserved: the active map can instead relate two admissible histories. A gauge-fixed realization can require re-fixing and need not carry an ordinary group action.

On original Cauchy data, for field-independent parameters, the integrable charge convention is

$$\begin{align}
Q_i[\eta_i]&=\langle E_i^\perp,\eta_i\rangle_S,
&\iota_{X_{\eta_i}}\Omega_i&=-\delta Q_i[\eta_i],\\
\boxed{\mu_S=E_1^\perp+\operatorname{Ad}_h^*E_2^\perp}.
\end{align}$$

These formulas use original Gauss law and the fixed physical outer policy. On the full unreduced data the generator includes the bulk Gauss term. Nonintegrable or field-dependent charge prescriptions require additional analysis. Only the subgroup coming from global proper gauge is finally quotiented; physical outer/asymptotic large symmetries remain. The full $\Pi$ equation contains additional tangential transmission when $\dim S>0$.

Passive and active formulas look alike because both use the same change-of-frame law for connection components. Their operands differ: passive arrows change the coordinates of one field; active arrows transform a field in retained frames. The product-frame quotient in `gauge-covariant sewing and reduction.md` is therefore only a **specialized/conditional combined presentation** if read as a physical quotient: it must separately implement the active extendable proper reduction, and supply a slice theorem if used on gauge-fixed data. Its covariance and $1+1$ identities do not prove these additional identifications. The older file is left unchanged; the ambiguity is recorded in audit F/Q.

**Claim level:** action-derived algebra and the framed $1+1$ checks are established; active extension images, slice realizations and continuum reduction are conditional.

## 5. Physical Matched Locus

Let $\widehat{\operatorname{Sol}}_i^{\chi_i}$ range over the declared admissible regional inputs, with original and realization constraints propagated. A single externally fixed history fiber is used only if explicitly required; it cannot silently stand for this union. Write $u=(\widehat A_1,\widehat A_2)$ and $A_i=F_i^\chi\widehat A_i$. Define

$$\begin{aligned}
\mathcal C_{h,\mathrm{phys}}^\chi:=\{u\in
\widehat{\operatorname{Sol}}_1^{\chi_1}\times
\widehat{\operatorname{Sol}}_2^{\chi_2}:\;&
(\rho_1^{\chi_1}\widehat z_1,\rho_2^{\chi_2}\widehat z_2)
\in\mathsf S_{\Gamma,h}^{\mathrm{inv}},\\
&\text{original constraints/Gauss and physical corners hold},\\
&\operatorname{Patch}_{\mathrm{geom}}(A_1,A_2;h)\}.
\end{aligned}$$

$\operatorname{Patch}_{\mathrm{geom}}$ means the declared **kinematic regularity and bundle-patching conditions**: compatible transition/corner cocycles, existence of one weak connection from the piecewise representatives, well-defined curvature/nonlinear products and Green dualities in the stated class, and no extra physical interface action. Any needed geometric collar charts are included here. This condition must be stated independently of “the assembled field solves the global equations”; putting that conclusion in the definition would make reconstruction vacuous. A concrete model must replace this placeholder by actual trace/regularity hypotheses. Section 7(A) is the required implication from them to a global weak solution.

The original constraints include the weak Gauss cut condition $\mu_S=0$ when the electric dual trace exists. If that is already the temporal component of full transmission, it is not an additional independent equation. The locus does **not** require the regional representatives to assemble directly into any specified global gauge $\chi_M$. It is a set of representatives, not yet a manifold, a physical quotient, or a symplectic space.

In the variable-$h$ presentation, let $h$ and its completed corner data vary and first identify passive descriptions as in Section 4. If one fixed chart does not cover the declared physical sector, use this compatible chart collection; do not assert completeness in that fixed chart by definition.

**Claim level:** repaired definition; the geometric patching class and the analytic implication remain model-dependent inputs.

## 6. Optional Global-Gauge-Slice Locus

Fix a global gauge realization $\chi_M$ only when such a representative is wanted. In addition to physical matching, specify a collar extension $\widetilde h|_\Gamma=h$, the transition of gauge/driver variables, and their normal/jet compatibility. Denote these extra conditions by $\operatorname{Match}_{\chi_M}^{\mathrm{slice}}(u;\widetilde h)$. They require that the specified assembly prescription lands directly in the global slice; regional slice corrections, if permitted, must be recorded rather than treated as an invisible operation on $u$.

$$\begin{aligned}
\mathcal C_{h,\chi_M}^{\chi,\mathrm{slice}}
:=\{u\in\mathcal C_{h,\mathrm{phys}}^\chi:\;&
\exists\widetilde h, \widetilde h|_\Gamma=h,\\
&\operatorname{Match}_{\chi_M}^{\mathrm{slice}}(u;\widetilde h),\quad
\operatorname{Asm}_h(u)\in\operatorname{Sol}^{\chi_M}(M)\}.
\end{aligned}$$

The last clause states the target property. A slice-patching theorem must give independent sufficient trace/driver conditions for it, rather than assume that clause as its proof. If assembly is a relation, the selected branch and collar choices must be specified in this definition. The inclusion can be strict, and no orbit-coverage statement for this smaller locus is assumed.

A geometric collar needed to describe **one weak connection** in Section 5 is different from a collar making two PDE gauge realizations compatible with **one global gauge condition**. Only the latter is optional here. A local extension of $h$ is also different from extending an active cut transformation to a global proper transformation identity at the physical walls.

**Claim level:** optional representative selection; no general slice-patching or coverage theorem is proved by the higher-dimensional Maxwell examples.

## 7. Two Separate Patching Statements

### (A) Physical Weak Patching

**Conditional theorem schema.** Assume a local second-order connection action, compatible regional/global boundary and corner representatives with exact action additivity, and a declared weak field class with continuous trace/Green pairings and defined nonlinear products. Assume that $\operatorname{Patch}_{\mathrm{geom}}$ and original connection descent produce one weak connection, and that its only Euler--Lagrange interface defect is the original Green boundary pairing. Regional original equations, full physical transmission, original constraints and physical corners then give

$$\begin{align}
\langle\mathcal E_M(A),\eta\rangle
&=\sum_i\langle\mathcal E_i(A_i),\eta_i\rangle
+\langle\Pi_1+\operatorname{Ad}_h^*\Pi_2,\iota_\Gamma^*\eta_1\rangle_\Gamma=0.
\end{align}$$

Here $\eta$ is any global test variation with compact temporal support and the physical boundary policy; spatial-corner pairings are included or cancelled by the declared completion. In a common local chart, the singular curvature term is proportional to $n^\flat\wedge[A]$; tangential descent removes it. The remaining surface current is precisely the Green-dual transmission defect. The Bianchi identity is that of the assembled connection, provided the weak products/identity are legitimate in the chosen class. These statements require **no global gauge condition**.

This is a formal Green-identity argument under explicit analytic inputs, not a supplied Sobolev patching theorem. A strong target additionally requires a weak-to-strong transmission theorem. For a converse, separating/dense test traces recover transmission only in the correct dual space; geometric connection descent must be established separately. Absence of a selected curvature/current defect alone does not prove bundle descent or a complete trace classification.

### (B) Optional Slice Patching

In addition to (A), assume separately proved compatibility conditions for $\widetilde h$, all gauge-driver/normal traces, and the chosen global reduced system. These conditions must imply

$$\begin{align}
\chi_M(\operatorname{Asm}_h u)&=0
\quad\text{and the global driver constraints hold distributionally}.
\end{align}$$

A separate regularity theorem is needed if the conclusion is strong rather than distributional. A jump or distributional defect of $\chi_M$ is **not** an original Euler--Lagrange surface source. It can obstruct this optional global slice while (A) still gives a valid original solution. Not every gauge operator even produces a delta defect from a jump; this must be checked for that operator.

**Claim level:** two conditional schemas. Existing smooth Maxwell modes support both properties for those modes only; they do not establish either statement for arbitrary admissible histories.

## 8. Assembly Relation and Restoration of Global Gauge Redundancy

Let $\operatorname{Sol}(M)$ mean the original gauge-redundant **weak** solution space in one independently declared bundle, boundary and regularity sector. Use a stronger target only after a transmission regularity theorem. Let $\mathcal G_M^{\mathrm{prop}}$ preserve that sector and the fixed physical outer policy, with infinitesimal zero-charge gauge directions and explicitly declared allowed disconnected components. Vanishing charge accidentally at one field does not define properness. Physical outer/asymptotic large symmetries are excluded from this quotient; based large components can be proper as in the $1+1$ models.

Under Section 7(A), geometric assembly gives

$$\begin{align}
\mathscr A_h^\chi&\subset\mathcal C_{h,\mathrm{phys}}^\chi\times\operatorname{Sol}(M),\\
(u,A)\in\mathscr A_h^\chi
&\quad\Longleftrightarrow\quad A\text{ is an allowed assembly of the physical fields in }u.
\end{align}$$

With fixed geometric identifications and auxiliary chart choices this can be represented by

$$\begin{align}
\operatorname{Asm}_h:\mathcal C_{h,\mathrm{phys}}^\chi\longrightarrow\operatorname{Sol}(M).
\end{align}$$

If different allowed assemblies exist, prove they lie in one global proper orbit before using a single-valued orbit map. Their image need not lie in any global gauge slice. Forgetting auxiliary driver data can also make assembly noninjective without a physical ambiguity.

Bulk unfixing is the saturation

$$\begin{align}
\operatorname{Unfix}_h(\mathcal C_{h,\mathrm{phys}}^\chi)
&:=\mathcal G_M^{\mathrm{prop}}\cdot
\operatorname{Asm}_h(\mathcal C_{h,\mathrm{phys}}^\chi).
\end{align}$$

It restores proper gauge copies of the represented orbits, without identifying them and without adding missing orbits. Equality with the independently specified $\operatorname{Sol}(M)$ is a theorem target, not the definition of that target. The physical quotient is a later operation. No optional global slice from Section 6 is needed for this definition.

**Claim level:** definitions; total weak assembly, independence of its choices, and orbit coverage remain separate proof obligations.

## 9. Restriction, Assembly, Matched-Slice Equivalence, and CPS

### Restriction/Gauge-Fix Relation

Define $\operatorname{Res}_h^\chi\subset\operatorname{Sol}(M)\times\mathcal C_{h,\mathrm{phys}}^\chi$ **by a restriction procedure**, not by declaring it the inverse of assembly. An element $(A,u)$ requires a global $g\in\mathcal G_M^{\mathrm{prop}}$, regional allowed transformations $r_i$, and realizable auxiliary data such that

$$\begin{align}
F_i^\chi\widehat A_i=((A^g)|_{M_i})^{r_i},
\qquad (\xi_i^-,P_{i,\mathrm{in}}^{\chi_i}\widehat z_i)\in\mathfrak D_i^{\chi_i}.
\end{align}$$

The regional choices must respect original boundary data and remain in the declared admissible history family. If the restricted field has transition $h_0$, their induced transition is $h=r_1^{-1}h_0r_2$; a fixed-$h$ target requires this equality or a recorded passive change of presentation. The identifications must give a global proper equivalence of the assembled field to $A$, not just unrelated regional gauge orbits. Proving these extension and coverage properties is part of the restriction problem. Gauge fixing/Gribov copies make this a relation, not generally a function.

### Matched-Slice Equivalence and Its Arrows

After fixing assembly choices (or proving their independence up to proper gauge), define a concrete groupoid

$$\begin{align}
\operatorname{Ob}(\mathcal R_h^\chi)&=\mathcal C_{h,\mathrm{phys}}^\chi,\\
\operatorname{Hom}_{\mathcal R_h^\chi}(u,u')
&:=\{g\in\mathcal G_M^{\mathrm{prop}}:
\operatorname{Asm}_h(u')=(\operatorname{Asm}_h(u))^g\}.
\end{align}$$

Both endpoints must satisfy the regional gauge/driver, boundary-domain and physical-matching conditions; intermediate fields along an active gauge path need not remain in a slice. Composition of $g:u\to u'$ and $g':u'\to u''$ is $gg'$, because $(A^g)^{g'}=A^{gg'}$; identity and inverse are $1$ and $g^{-1}$. Stabilizers are retained as automorphisms. Auxiliary realizations of the same physical field can be related even with $g=1$.

The associated equivalence relation is

$$\begin{align}
\boxed{u\sim_{\mathcal R_h^\chi}u'
\ \Longleftrightarrow\
\exists g\in\mathcal G_M^{\mathrm{prop}}:
\operatorname{Asm}_h(u')=(\operatorname{Asm}_h(u))^g.}
\end{align}$$

This does not assume a fixed residual subgroup acts on the whole slice. Field-dependent residual transformations and multiple slice intersections are described by arrows with specified endpoints.

### Two-Sided Master Theorem Schema

The following are independent requirements, not consequences of regional IBVP well-posedness:

1. **Restriction completeness.** Every relevant global proper orbit has at least one restriction/gauge-fixed realization $u\in\operatorname{Res}_h^\chi(A)$ in the declared domains. A fixed chart or fixed input fiber may fail this requirement.
2. **Reconstruction completeness.** Every $u\in\mathcal C_{h,\mathrm{phys}}^\chi$ has an assembly in the independently chosen original weak solution class, by Section 7(A). Assembly choices are equivalent by global proper gauge. Strong regularity, if wanted, is a separate upgrade.
3. **Two-sided compatibility.** The independently constructed relations satisfy, with nonempty compositions,

   $$\begin{align}
   \operatorname{Asm}_h\circ\operatorname{Res}_h^\chi
   &\sim_{\mathcal G_M^{\mathrm{prop}}}\operatorname{id}_{\operatorname{Sol}(M)},\\
   \operatorname{Res}_h^\chi\circ\operatorname{Asm}_h
   &\sim_{\mathcal R_h^\chi}\operatorname{id}_{\mathcal C_{h,\mathrm{phys}}^\chi}.
   \end{align}$$

   All outputs of each composition must lie in the indicated input equivalence class. This is equality of the induced relations on equivalence classes, not equality of chosen representatives.
4. **Effective faithfulness.** The desired criterion is

   $$\begin{align}
   \operatorname{Asm}_h(u)\sim_{\mathcal G_M^{\mathrm{prop}}}\operatorname{Asm}_h(u')
   \quad\Longleftrightarrow\quad u\sim_{\mathcal R_h^\chi}u'.
   \end{align}$$

   For the induced definition of $\mathcal R_h^\chi$ above this is a **definition-level identity**. A substantive regional faithfulness theorem must instead construct arrows from regional transformations and their actual trace/collar extensions, prove that every such arrow gives a global proper transformation, and prove that every global equivalence between assemblies is captured. Merely renaming global orbit equality proves none of those facts. Charge-carrying outer symmetries must not enter these arrows.

With (1)--(3), saturation and the equivalence-class quotient follow:

$$\begin{align}
\boxed{\mathcal G_M^{\mathrm{prop}}\cdot
\operatorname{Asm}_h(\mathcal C_{h,\mathrm{phys}}^\chi)=\operatorname{Sol}(M)},\\
\boxed{\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal R_h^\chi
\simeq\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}}.
\end{align}$$

The second line first means a bijection of equivalence classes. Retaining arrows also retains stabilizers; no smooth or stack-theoretic theorem is inferred. Effective regional faithfulness is needed to make this a useful regional construction rather than an implicit use of the global quotient.

### When an Ordinary Residual-Group Quotient Is Permitted

Only in a sector with a proved local slice theorem, invertible Faddeev--Popov operator on the complement of any declared residual directions, no further Gribov intersections in the chosen neighborhood, controlled auxiliary-data fibers, and one fixed residual subgroup preserving the domains and chart may the same equivalence relation be represented by a group action $\mathcal G_{\mathrm{res},h}^\chi$. That representation of the arrows/orbits must itself be checked. Then one may replace $\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal R_h^\chi$ by $\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal G_{\mathrm{res},h}^\chi$. FP invertibility alone is a local linear statement and excludes neither distant copies nor global extension obstructions. The exact framed $1+1$ holonomy reductions furnish a separately proved ordinary-group model without requiring a high-dimensional FP theorem.

### Original CPS Compatibility and Kernel

Allow variations of the admissible histories when restricting the completed original potentials to the physical matched locus. A fixed-history two-form alone omits those tangent directions. Under differentiability, exact action/potential additivity, compatible corner representatives and the physical outer flux policy, the target is

$$\begin{align}
\boxed{\operatorname{Asm}_h^*\Omega_M
=\left.(\Omega_1+\Omega_2+\Omega_{\mathrm{corner}}^h)
\right|_{\mathcal C_{h,\mathrm{phys}}^\chi}}.
\end{align}$$

Each $\Omega_i$ here is the original completed regional form pulled back by $F_i^\chi$ on variable-history admissible families. Before a smooth-domain theorem, this line means equality evaluated on such differentiable families, not an unproved manifold pullback. The corner term includes $\delta[-\langle E_2^\perp,h^{-1}\delta h\rangle]$ for variable $h$, without double-counting terms already in $\Omega_i$. For fixed $h$, closed $S$ and compatible representatives it may vanish. Restricting further to $\mathcal C_{h,\chi_M}^{\chi,\mathrm{slice}}$ only selects representatives; it does not change the original CPS or introduce driver pairs.

Infinitesimal matched directions which assemble to global proper gauge directions lie in the kernel:

$$\begin{align}
\mathcal V_{\mathrm{prop}}\subseteq
\ker\left.\bigl(\Omega_1+\Omega_2+\Omega_{\mathrm{corner}}^h\bigr)
\right|_{\mathcal C_{h,\mathrm{phys}}^\chi}.
\end{align}$$

Equality requires nondegeneracy modulo gauge, control of invisible auxiliary/assembly fibers, a regular sector and fixed physical outer policy. Disconnected proper transformations are equivalences, not tangent kernel vectors. A symplectomorphism of smooth quotients requires these further hypotheses. Hamiltonian intertwining likewise requires matching original boundary-work terms; it does not follow from mode normalization alone.

**Claim levels:** framed Maxwell/Yang--Mills $1+1$ have exact reduced completeness, one-form and quotient results. Maxwell $3+1$ retains mode-level support only. The separate Maxwell $2+1$ kill test proves core weak patching and an explicit restored orbit/CPS construction, while disproving the unqualified raw smooth-gauge comparison. Identifying that restoration with geometric assembly remains conditional; the general master theorem is not upgraded.

## 10. Active Cut Gauge Restoration as Reduction by Stages

This is first an equal-time statement on original constrained Cauchy fields, before imposing regional PDE slices. Let

$$\begin{align}
\mathcal K_S&:=\ker\operatorname{res}_{S,h},\\
1\longrightarrow\mathcal K_S\longrightarrow\mathcal G_\Sigma^{\mathrm{prop}}
&\xrightarrow{\operatorname{res}_{S,h}}\mathcal G_{S,h}^{\mathrm{ext}}
\longrightarrow1.
\end{align}$$

Exactness as a group sequence follows from defining the target as the image; a topological/Lie-group exact sequence needs additional regularity. Only under a separate gauge-transformation patching theorem may one identify $\mathcal K_S$ with $\mathcal G_{\Sigma_1}^0\times\mathcal G_{\Sigma_2}^0$, where each regional group is identity at $S$ and the physical outer boundary. Equality of boundary values alone need not patch arbitrary smooth or high-Sobolev gauge transformations with incompatible normal jets. Otherwise use the compatible subgroup of that product, not all independent based maps.

Let $\mathcal C_{h,\mathrm{Cauchy}}^{\mathrm{pre}}$ be the original physically matched Cauchy locus of Section 12, retaining the full active proper action. With controlled actions and quotients, reduction by stages gives

$$\begin{align}
\mathcal C_{h,\mathrm{Cauchy}}^{\mathrm{pre}}/\mathcal G_\Sigma^{\mathrm{prop}}
\simeq
(\mathcal C_{h,\mathrm{Cauchy}}^{\mathrm{pre}}/\mathcal K_S)
/\mathcal G_{S,h}^{\mathrm{ext}}.
\end{align}$$

This is not an ordinary residual-group theorem on $\mathcal C_{h,\mathrm{phys}}^\chi$; a regional slice brings back the equivalence relation of Section 9. Passive frame identifications have already been separated.

### Time-Slab Restriction: Theorem Target Only

After specifying a spacetime proper group preserving the physical-wall and temporal policies, set

$$\begin{align}
\mathcal K_\Gamma&:=\ker\operatorname{res}_{\Gamma,h},\\
1\longrightarrow\mathcal K_\Gamma\longrightarrow\mathcal G_{M^I}^{\mathrm{prop}}
&\xrightarrow{\operatorname{res}_{\Gamma,h}}\mathcal G_{\Gamma,h}^{\mathrm{ext}}
\longrightarrow1,\\
\mathcal G_{\Gamma,h}^{\mathrm{ext}}&:=\operatorname{Im}\operatorname{res}_{\Gamma,h}.
\end{align}$$

Only abstract group exactness is tautological after these groups and restriction are defined. A functional sequence, an action on regional realizations, and reduction by stages **intertwining time-slab evolution relations** are theorem targets. They require:

1. The action at $t=t_\pm$ on Cauchy data. Arbitrary proper endpoint transformations, fixed endpoint representatives, and endpoint-identity transformations give different images.
2. Temporal-corner/frame policy, including the variable-$h$ endpoint potential above; endpoint charges and frame changes cannot silently be dropped.
3. Preservation of the prescribed-history **family** and initial-boundary compatibility domain $\mathfrak D_i^\chi$. One fixed history fiber generally is not preserved.
4. The time-dependent active action on gauge drivers/auxiliary variables, or an explicit re-fixing relation with admissible endpoints. Transforming only $a_i$ is insufficient.
5. Spacetime regularity and required normal/mixed temporal jets for kernel patching. Identity on $\Gamma$ does not identify $\mathcal K_\Gamma$ with an unrestricted regional product.
6. Compatibility with initial/final evaluations and sewn regional $\mathscr U_i^\chi$, including original constraints and boundary work. Equal-time quotient bijections do not establish evolution intertwining.

No time-slab reduction theorem is asserted here. The cylinder test separately distinguishes smooth bulk extension from the smaller image represented by directly patchable regional Coulomb residuals.

For the framed $U(1)$ cylinder, an extendable cut map must have zero winding on $S^1$; on the slab its two $T^2$ winding classes must vanish. Necessity follows by restricting a bulk map to successive radial slices, a homotopy to the identity wall value. Under the smooth trivial product-collar policy these null-homotopic maps can be extended, but additional temporal, bundle or boundary restrictions can shrink the image. The $1+1$ point cut sees all of connected $G$ because a path joins every cut value to the identity.

**Claim level:** conditional functional reduction; exact compact $1+1$ two/three-cell reductions remain model benchmarks. Neither all mapping-group extension nor quotient smoothness is asserted.

## 11. Gauge-Fixing Independence Square

For two realizations $\chi,\chi'$ of the same original sector, a representative change is generally a relation. If both satisfy the two-sided completeness and effective faithfulness requirements, they induce

$$
\begin{array}{ccc}
\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal R_h^\chi
&\xrightarrow{\ T_{\chi\to\chi'}\ }&
\mathcal C_{h,\mathrm{phys}}^{\chi'}/\mathcal R_h^{\chi'}\\
\downarrow&&\downarrow\\
\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}
&\xrightarrow{\ \operatorname{id}\ }&
\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.
\end{array}
$$

This square is first about equivalence classes. Smoothness and preservation of the reduced original CPS require the separate differentiability and nondegeneracy hypotheses. There is no need to choose a common global hyperbolic slice. Using the smaller optional slice loci requires proving that they cover the same physical orbits.

Cutting and Coulomb gauge fixing generally do not commute: the global elliptic fixing problem and the regional problems have different boundary conditions. Harmonic interface corrections can matter both for restriction admissibility and for an optional global Coulomb representative. A passive re-expression of all gauge data is coordinate covariance, whereas changing the active realization requires the orbit/domain theorem above.

**Claim level:** conditional target, not proved by the existing mode calculations.

## 12. Equal-Time Assembly Versus Time-Slab Sewing

For the scalar comparison, energy data $(\phi,\pi)\in H^1(\Sigma)\oplus L^2(\Sigma)$ require matching configuration traces; a generic $L^2$ momentum has no pointwise cut trace. Conormal transmission belongs to the operator/graph domain or the weak time-slab equation.

For gauge theory, first work on original constrained Cauchy data $(A_\Sigma,E)\in\mathcal X_A\oplus\mathcal X_E$. Define $\mathcal C_{h,\mathrm{Cauchy}}^{\mathrm{pre}}$ by spatial tangential connection descent at $S$, bundle/corner compatibility, a kinematically legitimate weak field assembly, and original weak Gauss compatibility. When its normal dual trace exists, the last condition is

$$\begin{align}
E_1^\perp+\operatorname{Ad}_{h|_S}^*E_2^\perp=0.
\end{align}$$

This definition requires no choice of global hyperbolic gauge. Active proper quotienting is a subsequent operation; it is not one of the Cauchy compatibility equations. Regional gauge-fixed Cauchy representatives are a possible realization of these constrained data, with their own forgetting map and restriction-completeness question. Drivers and normal gauge-fixing components can be needed by that realization without becoming physical Cauchy matching data.

On the time slab, evolve admissible $(\xi_i^-,b_i)$ through $\mathscr U_i^{\chi_i}$, retaining $\widehat z_i$ and applying physical sewing to $z_i=\rho_i^{\chi_i}\widehat z_i$. Full worldtube transmission is

$$\begin{align}
\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.
\end{align}$$

Its tangential $F_{ya}$ components in Maxwell $2+1/3+1$ are additional physical evolution/transmission conditions, not generated by the Cauchy Gauss moment map. Gauge-driver/collar compatibility is added only if one also wants $\mathcal C_{h,\chi_M}^{\chi,\mathrm{slice}}$.

Keep the supports distinct:

$$\begin{align}
S&\subset\Sigma&&\text{original Cauchy assembly and active cut reduction},\\
\Gamma&=I\times S&&\text{enlarged IBVP histories and full physical transmission}.
\end{align}$$

**Claim level:** structural distinction; a gauge energy-space assembly theorem still requires a specified trace class and proof.

## 13. Observable Algebra, Center, and Dressing

Distinguish three regional choices, all independently of passive coordinate redundancy:

1. $\mathfrak A_i^{\mathrm{fr}}$: invariant under regional based proper gauge, but allowed to transform under the **active extendable** cut action; cut-charged operators/open Wilson endpoints can occur.
2. $\mathfrak A_i^{\mathrm{inv}}$: the invariant subalgebra for a declared active cut action, with a specified operator domain/completion and center choice.
3. $\mathfrak A_i^{\mathrm{ext}}$: an enlarged presentation with declared transition/dressing/boundary variables needed to represent the action; these are not automatically independent physical oscillators.

For Abelian $U(1)$, suitably smeared normal electric fluxes can be central variables for an **electric-center choice** which excludes operators changing those fluxes. They need not be central in the framed or extended algebra containing conjugate crossing/endpoint operators.

For non-Abelian $G$, the Lie-algebra-valued flux/moment map is generally **not central**. With the conventions here,

$$\begin{align}
\mu_i^k&=\operatorname{Ad}_{k^{-1}}^*\mu_i,
&\delta_\eta\mu_i&=[\mu_i,\eta]
\quad\text{under the invariant-pairing identification},\\
Q_i[\eta]&=\langle\mu_i,\eta\rangle,
&\iota_{X_\eta}\Omega_i&=-\delta Q_i[\eta].
\end{align}$$

Thus the flux components generate the boundary gauge algebra; the nonzero commutator variation obstructs treating all components as commuting central labels. Possible central/superselection data are Casimirs, representation labels, coadjoint-orbit data, or appropriate conjugacy-invariant data, **only for a specified regional algebra and center choice**. A Casimir commutes with the charge subalgebra, but need not commute with every operator in the framed/extended algebra; an operator can change the representation sector.

Gluing enforces physical descent/transmission and the Gauss condition, then performs the active proper reduction. How cut sectors are paired and whether any center disappears must be derived from that algebra; it is not automatic. Physical outer charges and global topological sectors must not be erased. The $1+1$ crossing observable is

$$\begin{align}
V_h=U_2^{-1}h^{-1}U_1.
\end{align}$$

It is covariant under passive re-presentation and invariant under the declared glued proper action with fixed outer frames. Higher-dimensional Wilson compositions require their actual path ordering, endpoints and domains. No charged-matter construction is added here.

The conditional algebra target remains reconstruction of $\mathfrak A_M$ from the matched regional algebras, transition data and active extendable reduction. The product/fusion operation must be supplied model by model; no sharp Hilbert tensor factorization is assumed. In particular,

$$\begin{align}
(L^2(G)\otimes L^2(G))^{G_\Delta}\simeq L^2(G)
\end{align}$$

is the exact compact $1+1$ Hilbert benchmark, not a continuum local-algebra or center theorem.

**Claim level:** noncentrality follows from the moment-map action; $1+1$ holonomy/Haar reduction is established; continuum algebra, center and dressing reconstruction remain conditional.

## 14. Quantum BRST--BV Outlook

The classical saturation of Section 8 is not the final language for a continuum gauge-fixed quantum field theory. The expected quantum route is:

$$\begin{align}
(\mathcal K_i^{\mathrm{BRST/BV}},Q_i,\text{ghost/antighost boundary data})
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

- joint original variational traces and, separately, joint enlarged realization traces;
- the completed corner/JKM and variable-transition canonical terms;
- original constraint/corner compatibility; global-slice/driver compatibility only for an optional slice theorem;
- matched-slice arrows, stabilizers and active reduction-by-stages hypotheses;
- a weak patching theorem for the multi-face distributional defects.

`Yang-Mills 1+1.md` is an exact chain benchmark. It proves

$$\begin{align}
(T^*G)^3//(G\times G)\simeq T^*G,
\qquad
[(W_r,J_r)]\longmapsto(W_3W_2W_1,J_1),
\end{align}$$

and the corresponding normalized-Haar projector composition. The two internal point interfaces are distinct; there is no true triple junction or higher-codimension corner. Therefore the example checks reduction by stages, not the full corner theorem.

**Claim level:** (1+1) chain associativity `proved`; general gauge/corner associativity `conditional target`.

## 16. Model Specialization Tables

The two trace layers and the two patching questions have different evidence:

| Model | Original variational trace $\mathcal Z^{\mathrm{inv}}$ | Enlarged realized trace $\widehat{\mathcal Z}^{\chi}$ / input | Physical weak patching | Optional global-slice matching |
|---|---|---|---|---|
| scalar comparison | configuration/Green-dual flux plus declared corners | no gauge enlargement; admissibility still separately required | proved only in the declared scalar classes of `gluing formalism.md` | n/a |
| Maxwell $1+1$ | $\delta S|_\Gamma=-\int E_i\delta\alpha_i$; reduced Cauchy pair $(a_i,E_i)$ | exact Gauss-reduced mechanics with frame history $\alpha_i$; no enlarged hyperbolic driver problem is solved | exact framed holonomy/flux assembly and direct uncut reduction | bypassed by exact reduction; no general collar/Gribov theorem |
| Maxwell $2+1$ cylinder | $(\alpha,q)$ with Green pairing $-e^{-2}(E_y\delta\alpha+B\delta q)$ and original CPS | separate kill test gives explicit enlarged traces/maps and smooth finite-Fourier mixed realization | direct distributional equivalence proved in the piecewise smooth core | raw global Coulomb claim false; explicit regional harmonic restoration derived |
| Maxwell $3+1$ slab | $(\alpha,q_a)$ with $-e^{-2}(E_y\delta\alpha+F_{ya}\delta q^a)$ and original CPS | transverse Dirichlet, longitudinal-normal Neumann and zero-mode histories; full enlarged trace/domain missing | mode-level support only | mode-level support only; drivers/normal compatibility not proved |
| Yang--Mills $1+1$ | $-\langle\mu_i,\delta\alpha_i\rangle$, $\mu_i=-\operatorname{Ad}_{U_i}J_i$; $T^*G$ Cauchy form | exact based Gauss reduction with history $\alpha_i$; bypasses enlarged hyperbolic trace | exact framed reduced connection/holonomy assembly | bypasses high-dimensional slice/collar/Gribov problem |

| Model | Cauchy Gauss vs full worldtube transmission | Restriction completeness / bulk unfixing | Effective faithfulness / original CPS / quotient | Quantum boundary |
|---|---|---|---|---|
| Maxwell $1+1$ | $E_1+E_2=0$ is the only transmission component | proved by based holonomy classification and direct connected representative | exact reduced benchmark, including declared based large components | Haar reduction and integer-flux Hamiltonian proved |
| Yang--Mills $1+1$ | $\mu_1+\operatorname{Ad}_h^*\mu_2=0$ is the only component | proved in framed trivial-bundle/trivial-character sector | free diagonal reduction, canonical one-form and direct uncut agreement proved | exact Haar/Peter--Weyl and three-cell reduction; no field-valued continuum theorem |
| Maxwell $2+1$ | Gauss: $E_{y,1}+E_{y,2}=0$; full adds $B_1+B_2=0$ | smooth restriction and weak reconstruction proved separately; raw smooth-orbit two-way claim fails | explicit restored core has orbit/CPS result; raw smooth-gauge quotient has extra kernel; geometric identification conditional | no cutoff-uniform gauge regulator or continuum algebra theorem |
| Maxwell $3+1$ | Gauss: $E_{y,1}+E_{y,2}=0$; full adds both $F_{ya,1}+F_{ya,2}=0$ | missing beyond separated-mode reconstruction | mode-level support only | same limitations; no independent regional-Fock equivalence |
| YM-type second-order connection theory | distinct by original Green/Noether identities | conditional restriction and reconstruction schemas | conditional effective equivalence/CPS/kernel theorem | outlook only |

The $1+1$ results prove their exact reduced models, not the analytic hypotheses they avoid. The separate cylinder dossier supplies only the core-specific positive and negative results stated in these tables.

## Master Architecture

The repaired architecture keeps original physics, realization and optional representative choices separate:

$$\begin{align}
S_i^{\mathrm{inv}}&\longrightarrow
(\Theta_i,\Omega_i,\mathcal Z_{i,\Gamma}^{\mathrm{inv}},\Pi_i,\mu_i),\\
\mathfrak f_i&\longrightarrow
\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}
\xrightarrow{\ (\rho_i^{\chi_i},P_{i,\mathrm{in}}^{\chi_i})\ }
\mathcal Z_{i,\Gamma}^{\mathrm{inv}}\times\mathcal B_{i,\mathrm{in}}^{\chi_i},\\
\prod_i\mathscr U_i^{\chi_i}&\longrightarrow\mathcal C_{h,\mathrm{phys}}^\chi
\ \underset{\operatorname{Res}_h^\chi}{\overset{\operatorname{Asm}_h}{\rightleftarrows}}\
\operatorname{Sol}(M),\\
\mathcal C_{h,\chi_M}^{\chi,\mathrm{slice}}&\subseteq\mathcal C_{h,\mathrm{phys}}^\chi
\quad\text{optional},\\
\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal R_h^\chi
&\simeq\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}
\quad\text{only under the two-sided hypotheses}.
\end{align}$$

Restriction and assembly are relations until their choices are controlled. Passive presentation identifications precede and are distinct from active proper equivalence. Saturation restores copies of represented orbits; quotienting identifies them. Neither operation establishes missing restriction coverage.

## Repair Claim Ledger

**Established within the source/model assumptions:** original action signs; fixed-$h$ descent and coadjoint transmission; the variable-$h$ canonical term on the original constraint/on-shell locus after full worldtube integration by parts; full transmission versus Gauss; exact framed $1+1$ Maxwell/Yang--Mills reduction and compact Haar/Peter--Weyl benchmarks; displayed higher-dimensional Maxwell modes and normalizations. Non-Abelian raw flux is not a general central observable.

**Definitions repaired, not new analytic results:** two trace spaces and their distinct maps; physical and optional global-slice loci; passive frame arrows versus active extendable gauge; matched-slice groupoid; separate restriction and assembly relations; equivalence-class quotient before any ordinary residual-group simplification.

**Conditional/open in the general theory or beyond the stated cylinder core:** actual enlarged trace domains and continuous $\rho$; regional constraint-preserving IBVP; physical weak patching and stronger regularity; optional global-slice patching; restriction coverage; effective regional arrow construction/extension; independence of assembly choices; CPS pullback and nondegeneracy modulo gauge; active restriction-kernel patching; gauge-fixing independence; continuum observable/center reconstruction and corners.

**Not claimed:** a universal gauge IBVP, all-mapping-group extension, a universal residual group containing Gribov copies, a smooth continuum quotient, Maxwell regulator convergence, sharp regional-Fock factorization, automatic disappearance of an electric center, or a BRST/BV gluing theorem. The separately scoped Maxwell $2+1$ kill test remains `conditional`; no other model is started.

## Verification Boundary

**Locally checked (previous repair; its cited local scripts were not retained in the repository):** xAct with xTras/full simplification returned zero for the antisymmetric original Maxwell action variation and its covariant Green identity (2 checks). Mathematica returned true for 13 action/coadjoint/corner checks: the $2+1/3+1$ outward coefficients, $3+1$ Cauchy coefficients, $1+1$ source and transition endpoint signs, reduced one-form and Hamiltonian, variable-$h$ connection variation (including a componentwise residual), dual pairing, a nonzero non-Abelian charge variation, the Yang--Mills reduced corner one-form and the $U(1)$ moment-map contraction. Matrix checks are exact finite $SU(2)$ witnesses with symbolic tangent data; the general identities use the displayed invariant-pairing algebra. They do not prove a field-space theorem. The source notes' previous 8/20 regressions remain historical evidence; they were not rerun in that earlier repair.

**Assumptions:** original signature and action/CPS signs; fixed physical outer frames/policy; one declared bundle and weak regularity class; defined nonlinear products and traces; compatible corner representatives. Each smooth, strong-solution or ordinary-quotient claim requires its additional hypotheses explicitly stated above.

**Not verified:** general IBVP, enlarged trace-domain continuity/surjectivity, physical weak patching in a specified Sobolev class, optional global-slice patching, restriction completeness, effective regional groupoid faithfulness, gauge-kernel equality, or continuum observable/BRST/BV results. The separate cylinder dossier records its narrower passed/failed core claims; no general or completed-space theorem is inferred.

**Verified (current cylinder test):** `maxwell-2p1-spatial-gluing-kill-test/verification/checks.wl` passed 30/30 exact witnesses; the existing Maxwell regression passed 20/20. The dossier supplies the analytical proofs and counterexamples. The earlier unretained local checks above are not counted in these totals.
