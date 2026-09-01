# Spatial-Region Gauge Gluing Audit

> Status: repaired A--Q audit plus the proved Maxwell 2+1 smooth-core orbit/collar and time-slab relation theorems; no general theorem upgrade. Model upgrades below refer to the explicit dossier proofs, not to formal definitions. This file audits only a spatial partition of one spacelike Cauchy slice,
>
> $$\begin{align}
> \Sigma&=\Sigma_1\cup_S\Sigma_2,
> &\Gamma&=I\times S,
> \end{align}$$
>
> where the artificial spatial interface $S$ sweeps out a timelike worldtube $\Gamma$. Null characteristic/Goursat composition is outside the scope of every claim below.

## Executive Verdict

**The action-first algebra and exact framed $1+1$ reductions remain supported; a general spatial gauge-gluing theorem remains unproved.** Maxwell $3+1$ still supplies mode-level support only. The Maxwell $2+1$ dossier proves intrinsic collar assembly, choice independence, complete regional arrows, the two-sided smooth-orbit theorem and CPS on horizontal tangent classes, while retaining both raw counterexamples. Its separate Section 10 now also proves the smooth-core time-slab mixed evolution relations, endpoint/history action, relation composition, staged reduction, original on-shell-action exactness and symplectic/power balance. The general architecture repairs remain conditional definitions; this bounded model upgrade rests on the separate analytical proofs.

The first draft had five structural defects: its incoming map was defined on the original variational trace; its physical matched locus required a global gauge slice; a single residual group purported to contain all Gribov intersections; its variable-transition quotient conflated passive presentation and active reduction; and its electric-center statement did not distinguish Abelian from non-Abelian flux. Those formulations are replaced below. An additional logical safeguard is explicit: defining matched-slice equivalence by global orbit equality makes the corresponding faithfulness criterion tautological; an effective regional construction of the arrows still needs proof.

For the general theorem, the main open gates remain the enlarged constraint-preserving IBVP domain, physical weak patching, restriction coverage, active extension images and regional arrow completeness, and original CPS/kernel compatibility. A gauge-condition jump can obstruct an optional global representative without creating an original Euler--Lagrange surface source. Exact $1+1$ mechanics bypasses the enlarged hyperbolic trace and higher-dimensional collar/Gribov problems; it does not solve them.

## Evidence and Claim Labels

The primary evidence is the live working-tree version of:

- `gluing formalism.md`, especially Part I, “Variational Polarization Versus Admissible Dynamical Polarization,” “Global Reconstruction and Symplectomorphism,” and “Where Flux Matching Enters the Equal-Time Theory”;
- `formalism.md`;
- `gauge-covariant sewing and reduction.md`;
- the three Maxwell notes, `Yang-Mills 1+1.md`, and both versions of `spatial gauge gluing formalism.md`;
- `README.md`, `TODO.md`, `roadmap.md`, and the active regression scripts.

The labels in this audit mean:

| Label | Meaning |
|---|---|
| `proved` | A proof is present for the displayed hypotheses and object, not merely a numerical witness. |
| `conditionally supported` | A correct theorem schema or formal derivation is present, but one or more stated analytic/geometric hypotheses remain inputs. |
| `model-specific` | Proved or explicitly checked only in the named model/sector; it is not evidence for the general theorem without another argument. |
| `missing` | The required definition, theorem, or two-way implication is absent. |
| `false` | The proposed general statement is contradicted by the present structure or requires a narrower replacement. |

The previous draft records eight passing finite (SU(2)) Yang--Mills witnesses and twenty passing Maxwell symbolic checks; these are historical evidence, not rerun in this repair. Those checks cover transition and one-form identities, finite representation projectors, Maxwell divergence/curl--curl equations, gluing determinants, lifting coefficients, normalizations, finite-matrix positivity, and the (1+1) Hamiltonian. They do not test an IBVP, Sobolev reconstruction, gauge-slice completeness, quotient smoothness, or a continuum observable algebra.

## Conventions Fixed by the Source Notes

The gauge convention is

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg,
&F^g&=g^{-1}Fg.
\end{align}$$

The transition convention is

$$\begin{align}
\boxed{a_2=a_1^h=h^{-1}a_1h+h^{-1}\mathrm d_\Gamma h},
&h&\longmapsto k_1^{-1}hk_2.
\end{align}$$

For fixed $h$, linearized descent gives

$$\begin{align}
\delta a_2=\operatorname{Ad}_{h^{-1}}\delta a_1,
\end{align}$$

and the original action gives the outward-oriented transmission equation

$$\begin{align}
\boxed{\Pi_1+\operatorname{Ad}_h^*\Pi_2=0}.
\end{align}$$

The Cauchy-cut active boundary-gauge moment map is instead

$$\begin{align}
\boxed{\mu_S=E_1^\perp+\operatorname{Ad}_h^*E_2^\perp}.
\end{align}$$

For Maxwell in the $y_i$-coordinates that both increase toward the cut,

$$\begin{align}
\left.\delta S_i\right|_\Gamma
=-\frac1{e^2}\int_\Gamma
\left(E_{y,i}\delta\alpha_i+F_{ya,i}\delta q_i^a\right),
\end{align}$$

with $F_{ys}=B$ in $2+1$. Thus the source notes' equations

$$\begin{align}
E_{y,1}+E_{y,2}&=0,
&F_{ya,1}+F_{ya,2}&=0
\end{align}$$

are the Abelian component form of the same coadjoint transmission convention. No sign change is introduced in this audit.

## A. Original Gauge-Invariant Action/CPS Versus Gauge-Fixed PDE Evolution

**Verdict: `model-specific` for the examples; `conditionally supported` at the general relation level.**

Evidence:

- `Maxwell 1+1.md`, “Regional Action and CPS,” explicitly varies

  $$\begin{align}
  S_i=\frac12\int E_i^2
  \end{align}$$

  before solving Gauss law or choosing a representative, and reads off

  $$\begin{align}
  \Theta_i&=\int E_i\delta A_{y,i},
  &\Omega_i&=\int\delta E_i\wedge\delta A_{y,i}.
  \end{align}$$

- `Yang-Mills 1+1.md`, “Action First,” varies the original second/first-order Yang--Mills action before the based quotient and derives

  $$\begin{align}
  \Theta_i=\int\langle\mathcal E_i,\delta A_{y,i}\rangle.
  \end{align}$$

- `Maxwell 2+1 cylinder.md` and `Maxwell 3+1 slab.md` first derive the complete interface variation, then set $A_t=0$ and impose Coulomb gauge.
- `gauge-covariant sewing and reduction.md` defines $\Pi_i$, transition sewing, and the moment map from the complete original action and declares the IBVP and constraint propagation to be separate inputs.

No active note adds a Lorenz/Coulomb gauge-fixing term to the action and then identifies its extra symplectic contribution with physical CPS. That specific error is absent.

The remaining gap is not the order of presentation; it is proof that pulling the original pre-symplectic form to the chosen higher-dimensional gauge slice, then quotienting its residual kernel, gives the complete physical CPS. The oscillator normalizations in the Maxwell notes support this in the separated sectors but do not prove it for the full regional solution space.

## B. Regional Gauge Fixing and IBVP Well-Posedness

**Verdict: `conditionally supported` in general; the separate Maxwell 2+1 dossier proves a smooth finite-Fourier mixed realization. A general hyperbolic IBVP theorem is `missing`.**

The general notes are careful. `gluing formalism.md` states that a variational polarization is not automatically an admissible dynamical polarization, and that causal response requires constraint propagation, incoming-characteristic admissibility, energy estimates, causality, and corner compatibility. `gauge-covariant sewing and reduction.md` likewise says that the trace pair does not prove every component of (a_i) can be freely prescribed. Thus the general notes do **not** establish an ordinary well-posed raw-potential IBVP.

The Maxwell realizations use:

$$\begin{align}
A_t&=0,
&\partial_yA_y+\partial_aA^a&=0,
\end{align}$$

followed by Fourier decomposition and solution of Gauss law. Coulomb gauge is spatially elliptic/nonlocal; it is not itself a local hyperbolic reduction. The reduced master fields obey wave/Klein--Gordon equations, which is enough for the displayed separated-mode calculation, but the notes do not specify the full Sobolev compatibility domain or prove an energy estimate for the original constrained boundary system.

In the original mode benchmarks, the prescribed and derived components were not separated at the required generality. The table records that baseline; the new cylinder dossier supplies its explicit mixed-domain replacement:

| Model/sector | Fixed configuration part of the original variational trace | Reduced master-field boundary datum | What remains unproved |
|---|---|---|---|
| Maxwell $2+1$, $\ell\neq0$ | $(\alpha_i,q_i)=\left.(A_t,A_s)\right\rvert_\Gamma$ | $-\partial_yv_{i,\ell}(L)=q_{i,\ell}$ | which combinations of $(\alpha,q)$ are independent constraint-preserving incoming data after temporal gauge |
| Maxwell $2+1$, $\ell=0$ | $q_{i,0}$ plus $\alpha_i$ for the compact normal mode | Dirichlet $w_i(L)=q_{i,0}$; compact source $\alpha_i$ | joint initial/boundary compatibility and energy-space trace theorem |
| Maxwell $3+1$, transverse | $q_{i,T}$ | Dirichlet $w_i(L)=q_{i,T}$ | full constrained incoming/output split |
| Maxwell $3+1$, longitudinal-normal | $q_{i,L}$ | Neumann-type $-\partial_yv_i(L)=q_{i,L}$ | full constrained incoming/output split |
| Maxwell $3+1$, $p=0$ | two tangential $q_{i,a}$ and compact $\alpha_i$ | two Dirichlet waves plus compact zero mode | joint domain and residual gauge classification |

The correct audit statement is therefore: the Maxwell notes exhibit dynamically solvable **representatives and channels**, not a general proof that the entire affine connection pullback is freely prescribable boundary input.

## C. Does Cutting Commute with Gauge Fixing?

**Verdict: unrestricted commutation is `false`; the separate cylinder dossier now proves the harmonic difference formula and exhibits a raw slice counterexample.**

There is no general identity

$$\begin{align}
\operatorname{Res}\circ\operatorname{Fix}_{\chi_M}
=
(\operatorname{Fix}_{\chi_1}\times\operatorname{Fix}_{\chi_2})\circ\operatorname{Res}.
\end{align}$$

For Coulomb gauge, the global fixing parameter solves a spatial elliptic problem on all of $\Sigma$, whereas separate regional fixing parameters solve two elliptic problems with extra artificial-boundary conditions. Their difference is generally a nonzero harmonic gauge transformation controlled by data at $S$. Therefore the two representatives need not agree even when they lie on the same global gauge orbit.

The reconstructed Maxwell normal modes are divergence-free on the connected cylinder/slab and their restrictions have the displayed regional master-field form. This is a `model-specific` compatibility check on the explicit separated basis. It is not a gauge-fixing compatibility theorem for arbitrary Cauchy data or boundary histories.

## D. Physical Transition Data Versus Optional Gauge-Slice Matching

**Verdict: formal descent/transmission and the $h$-corner identity are supported; the previous mandatory global-slice condition was too strong.**

The physical equations remain

$$\begin{align}
a_2=a_1^h,\qquad\Pi_1+\operatorname{Ad}_h^*\Pi_2=0,
\end{align}$$

on the projected original traces $\rho_i^{\chi_i}(\widehat z_i)$. They must be accompanied by original constraints/corners and actual kinematic weak-connection patching hypotheses. A geometric collar may be needed to define the bundle/connection, but that does not require a unified PDE gauge. These requirements define $\mathcal C_{h,\mathrm{phys}}^\chi$.

Only the optional subset $\mathcal C_{h,\chi_M}^{\chi,\mathrm{slice}}$ adds a collar extension $\widetilde h$, gauge-driver/normal compatibility, and direct assembly into a specified global slice. Its defining target property must be proved from independent sufficient conditions; naming it does not prove it. The $1+1$ holonomy reduction avoids this high-dimensional slice problem. The new cylinder dossier supplies a smooth compatible-history mixed domain and a separate harmonic restoration; direct raw slice patching remains false. A completed-domain theorem is still absent.

With $\eta=h^{-1}\delta h$, the off-shell worldtube identity is

$$\begin{align}
\int_\Gamma\langle\Pi_2^\alpha,D_\alpha\eta\rangle
=-\int_\Gamma\langle D_\alpha\Pi_2^\alpha,\eta\rangle
-[\langle E_2^\perp,\eta\rangle_S]_{t_-}^{t_+}
+\int_{I\times\partial S}\langle n_A^S\Pi_2^A,\eta\rangle.
\end{align}$$

The endpoint representative $-\langle E_2^\perp,\eta\rangle_S$ alone is valid only after this full integration by parts, on the original constraint/on-shell locus and with spatial corners treated. In Maxwell $2+1$, $D_\alpha\Pi^\alpha=-e^{-2}(\dot E_y+\partial_sB)$ is the normal Euler equation; Gauss law alone and the off-shell Noether identity do not set it to zero. A universal off-shell endpoint-only formula is **false**. Density and outward-Stokes conventions are specified in formalism Section 4. Passive chart changes still carry no physical charge; see Q.

## E. Equal-Time Assembly Versus Timelike Transmission

**Verdict: the conceptual distinction is `proved` in the general gauge note; its full higher-dimensional PDE realization is `missing`.**

Four operations must be separated:

| Operation | Geometric support | Gauge content | Status in existing examples |
|---|---|---|---|
| Cauchy-data compatibility/spatial assembly | $S\subset\Sigma$ | connection descent of spatial trace plus distributional Gauss compatibility | exact after (1+1) holonomy reduction; implicit in higher-dimensional mode reconstruction, without a Sobolev theorem |
| full timelike transmission | $\Gamma=I\times S$ | all components of $\Pi_1+\operatorname{Ad}_h^*\Pi_2=0$ | derived from the original action; mode-realized in Maxwell (2+1/3+1) |
| Cauchy-cut Gauss moment map | $S\subset\Sigma$ | $E_1^\perp+\operatorname{Ad}_h^*E_2^\perp=0$ | exact in (1+1); explicitly distinguished in higher-dimensional Maxwell |
| gauge reduction | Cauchy phase space | active global proper equivalence; matched-slice groupoid on realized data | exact (1+1), plus the declared (2+1) smooth tangent core; general/completed versions conditional |

In (1+1), there is no independent tangential spatial connection component on the point (S). The full worldtube momentum is the normal electric datum, so timelike transmission and the Gauss moment map coincide. In Maxwell (2+1), full transmission is

$$\begin{align}
E_{y,1}+E_{y,2}&=0,
&B_1+B_2&=0,
\end{align}$$

whereas the moment map contains only the first equation. In Maxwell (3+1), the second equation is the two-component condition

$$\begin{align}
F_{ya,1}+F_{ya,2}=0.
\end{align}$$

Thus the higher-dimensional notes correctly refute “moment-map reduction alone reconstructs the field.”

## F. Regional Proper Gauge, Active Boundary Transformations, and Passive Frames

**Verdict: exact $1+1$ active reductions remain supported; the general presentation needs the passive/active distinction and extension restriction.**

Regional based proper gauge is identity at the physical boundary and the cut. Active allowed transformations with nonzero cut value act on original solutions/CPS, sometimes between different fixed-history domains. Their cut group is the restriction image

$$\begin{align}
\mathcal G_{\Gamma,i}^{\mathrm{act,ext}}
=\operatorname{Im}[\mathcal G_i^{\mathrm{allowed}}\to\operatorname{Map}(\Gamma,G)].
\end{align}$$

Only restrictions of **global proper** gauge are eventually reduced at the glued cut. Preserving a fixed transition requires $k_2=h^{-1}k_1h$, but this algebraic condition neither proves extendability nor identifies a residual action on a gauge slice. A map on the cut alone also needs a bulk lift, or a previously justified based quotient, to act on regional fields.

Passive changes of trivialization instead re-express the same geometric field and all its gauge/driver/boundary coordinates. They carry no Hamiltonian charge. `gauge-covariant sewing and reduction.md` uses “boundary-frame” for both roles and writes a product-frame quotient directly as the physical phase space. Its covariance identities are valid, but that quotient is **specialized/conditional** as a physical statement: it must separately supply the active extendable reduction and the required coverage/quotient hypotheses. Treating a purely passive quotient alone as physical reduction is false. The old file is not edited in this round; Q makes the replacement interpretation explicit.

Physical outer/asymptotic large symmetries are not quotiented. Based disconnected components can be proper when explicitly included by the boundary/topological policy, as in the exact $1+1$ examples.

## G. Restoring the Complete Global Gauge Redundancy

**Verdict: exact in the declared reduced $1+1$ sectors; higher-dimensional bulk unfixing/coverage remains missing.**

The repaired target is based on the physical locus:

$$\begin{align}
\mathcal G_M^{\mathrm{prop}}\cdot\operatorname{Asm}_h(\mathcal C_{h,\mathrm{phys}}^\chi)
&=\operatorname{Sol}(M),\\
\mathcal C_{h,\mathrm{phys}}^\chi/\mathcal R_h^\chi
&\simeq\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.
\end{align}$$

Neither line requires the optional global-slice locus. The first adds proper gauge copies without creating omitted orbits; the second identifies copies. Completeness must therefore be proved from the two directions in J, not defined through saturation. Assembly choices also need independence up to global proper gauge.

The old conditional formula after regional based reduction does not supply these steps or a classification of slice intersections. In the framed $1+1$ models, direct based holonomy classification, Maxwell's compact $a\sim a+2\pi w$, and Yang--Mills's $V=U_2^{-1}U_1$ agree with direct uncut reduction. This is an exact reduced benchmark. Higher-dimensional connected mode bases do not establish the same orbit statement.

## H. Extension of the Restored Cut Gauge Group

**Verdict: `missing` in the older general note; the use of all $\operatorname{Map}(S,G)$ is `false` without an extension hypothesis. The Maxwell $2+1$ smooth core now passes the time-slab action/intertwining test model-specifically.**

At equal time the correct group is

$$\begin{align}
\boxed{
\mathcal G_{S,h}^{\mathrm{ext}}
:=\operatorname{Im}\!\left[
\mathcal G_\Sigma^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{S,h}}
\mathcal G_{S,1}\times\mathcal G_{S,2}
\right].}
\end{align}$$

Here $\mathcal G_{S,i}$ denotes the coordinate cut-mapping space; the active group is the displayed image. Its elements obey $k_2=h^{-1}k_1h$ in a fixed-$h$ chart. The time-slab analogue is the **theorem target**

$$\begin{align}
1\longrightarrow\mathcal K_\Gamma\longrightarrow\mathcal G_{M^I}^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{\Gamma,h}}\mathcal G_{\Gamma,h}^{\mathrm{ext}}
\longrightarrow1.
\end{align}$$

Image-defined abstract exactness proves no dynamical statement. Formalism Section 10 lists the required endpoint action, temporal-corner/frame policy, history-family and initial-boundary domain preservation, time-dependent driver/realization action, spacetime kernel jets, and intertwining of regional time-slab evolution relations. None follows from equal-time reduction by stages.

Dossier Section 10 supplies those missing items in the cylinder core: $e^{if(t,s)}$ acts on $\xi_i^\pm$, $(\alpha_i,q_i)$ and every realized jet; arbitrary endpoint values are allowed; the compatibility-domain family is preserved; and the mixed evolution graphs are equivariant. Regional based reduction followed by the common cut-history action agrees with intrinsic $\mathcal K_h$ reduction and with the global proper solution-history orbit relation. The proof does **not** identify the independent regional based product with the global restriction kernel. This is a model-specific relation theorem, not evidence that the displayed general sequence has a Lie-group topology or acts on an arbitrary Yang--Mills IBVP.

The framed $1+1$ examples evade the obstruction because $S$ is a point. For connected $G$, every $k\in G$ is connected to the identity by a path along the interval, so it extends to a regional bulk transformation that is identity at the physical endpoint.

The higher-dimensional Maxwell geometries already show why the general replacement is necessary:

- on $\Sigma_i=[0,L]\times S^1$, a cut value $k:S^1\to U(1)$ extends to a map equal to $1$ at the physical wall only if $k$ is null-homotopic, equivalently has zero winding;
- on $\Sigma_i=[0,L]\times T^2$, both winding classes in $H^1(T^2;\mathbb Z)\simeq\mathbb Z^2$ must vanish for such a relative extension.

Thus the full mapping group includes nonextendable components even in the present Abelian testbeds. Regularity, bundle sector, physical-boundary conditions, and allowed large components can narrow the image further.

## I. Physical Weak Patching Versus Optional Slice Patching

**Verdict: two conditional schemas are now distinguished; neither general analytic theorem has been proved here.**

| Question | Required data | Status |
|---|---|---|
| weak geometric connection, no singular curvature from a tangential jump | original connection descent and explicit kinematic trace/bundle patching hypotheses | formal mechanism; no general gauge trace theorem |
| no original Euler--Lagrange surface current | original Green identity and full physical transmission on the shared test space | conditional physical weak-patching argument |
| legitimate weak Bianchi identity | actual descended connection and sufficient products/regularity | cannot infer from selected curvature components alone |
| membership in a specified global gauge slice | additional $\widetilde h$, normal/gauge-driver compatibility and gauge-operator analysis | optional slice-patching theorem, separate from physical sources |

Physical statement (A) is descent + full physical transmission + original constraints/corners + declared geometric/regularity hypotheses $\Rightarrow$ original equations hold weakly. It does **not** require patching $\chi_M$. Optional statement (B) adds sufficient slice/driver conditions and concludes the assembled representative satisfies $\chi_M$ distributionally, or strongly with an additional regularity theorem.

A gauge-condition jump is not an original Euler--Lagrange source. Conversely, absence of physical sources does not imply membership in an independently selected global gauge. The first draft's combined “no distributional defect” equivalence incorrectly bound those questions together. A converse to (A) needs separating test traces for transmission and a separate geometric descent argument; it is not automatic from vanishing selected curvature/current defects.

`gluing formalism.md` already conditions reconstruction on a Green-defect and transmission-regularity hypothesis; it need not be rewritten. The Maxwell modes have the required continuity and divergence properties for those modes only. No arbitrary-history physical or slice patching theorem is inferred.

## J. Restriction Completeness and Reconstruction Completeness

**Verdict: both directions are proved for the exact reduced $1+1$ benchmarks and the Maxwell $2+1$ smooth-core orbit/collar and time-slab relation theorems; general and completed-domain versions remain missing.**

$\operatorname{Res}_h^\chi\subset\operatorname{Sol}(M)\times\mathcal C_{h,\mathrm{phys}}^\chi$ is a restriction/gauge-fix relation constructed from global proper representatives, restrictions, regional allowed transformations, induced transition data, auxiliary realizations and admissible domains. It is not defined as the inverse of assembly. Its proof obligations are:

1. **Restriction:** every relevant global orbit has such a realization. Regional gauge fixing must not leave the admissible domain, silently change fixed physical boundary data or force a different fixed-$h$ sector.
2. **Reconstruction:** every physically matched regional realization assembles into the independently declared global weak solution space, with controlled assembly choices. Stronger global regularity requires an additional theorem.
3. **Two-sided compatibility:** with nonempty compositions and all outputs in the indicated equivalence class,

   $$\begin{align}
   \operatorname{Asm}_h\circ\operatorname{Res}_h^\chi
   &\sim_{\mathcal G_M^{\mathrm{prop}}}\operatorname{id}_{\operatorname{Sol}(M)},\\
   \operatorname{Res}_h^\chi\circ\operatorname{Asm}_h
   &\sim_{\mathcal R_h^\chi}\operatorname{id}_{\mathcal C_{h,\mathrm{phys}}^\chi}.
   \end{align}$$

Only then does the saturation equality summarize coverage; it cannot hide which analytic direction failed. A kinematic patching placeholder must be replaced by actual regularity/trace hypotheses, not by defining admissibility to mean “already reconstructible.” No optional global hyperbolic gauge is needed for these physical targets. Dossier Section 9 restricts arbitrary original smooth representatives and constructs assembly by based radial collar integration. Its two-sided statement uses regional based classes **and** common-cut arrows. Regional IBVP well-posedness alone proves neither direction.

## K. Matched-Slice Equivalence, Stabilizers, and Gribov Intersections

**Verdict: a fixed residual group containing all Gribov intersections is unjustified; use an explicitly defined equivalence relation/groupoid.**

For controlled assembly choices, the repaired groupoid has objects $u\in\mathcal C_{h,\mathrm{phys}}^\chi$ and arrows

$$\begin{align}
g:u\to u'\quad\Longleftrightarrow\quad
g\in\mathcal G_M^{\mathrm{prop}},\qquad
\operatorname{Asm}_h(u')=(\operatorname{Asm}_h(u))^g.
\end{align}$$

Both endpoints obey the regional gauge, driver and boundary-domain conditions; an arrow need not preserve every point of the slice. Composition is $gg'$, inverses are $g^{-1}$ and automorphisms record stabilizers. Auxiliary copies of the same physical field can be related by an identity global transformation. This accommodates field-dependent arrows without pretending they form a single field-independent subgroup action.

For this induced definition, “assemblies are gauge equivalent iff the regional objects are related” is a definition-level fact, **not a new faithfulness theorem**. Effective faithfulness requires independently constructing regional arrows, proving that they patch to global proper transformations, and proving that all global equivalences of assemblies are obtained. A boundary-value match alone may not patch the required normal jets.

Dossier Section 9 supplies that independent construction for the cylinder. Regional wall-identity maps with equal cut phases define the arrows first; comparing the two smooth collar outputs proves that the resulting comparison maps patch smoothly. Conversely a global arrow restricts and can be conjugated by the collar repairs to recover a regional arrow. The based product used here is not asserted to patch in the raw frame.

Only a proved local slice theorem, invertible FP operator modulo declared residual directions, absence of additional copies in the neighborhood, controlled auxiliary fibers and a fixed domain-preserving residual subgroup allow an ordinary $\mathcal G_{\mathrm{res},h}^\chi$ quotient. FP invertibility alone does not give global uniqueness. Reducible strata require separate treatment.

The framed $1+1$ holonomy models independently prove free diagonal actions and unique representatives (Yang--Mills: $U_2=1$). Those exact group quotients remain valid; they do not prove the analogous slice claim for the higher-dimensional Maxwell representatives.

## L. Original CPS Compatibility and Kernel

**Verdict: exact in the framed reduced $1+1$ models and proved on horizontal tangent classes in the Maxwell $2+1$ smooth core; the same cylinder core now also has an exact-isotropic time-slab relation. Everything remains conditional on admissible variations and regularity in general.**

The repaired target is

$$\begin{align}
\operatorname{Asm}_h^*\Omega_M
=\left.(\Omega_1+\Omega_2+\Omega_{\mathrm{corner}}^h)\right|_{\mathcal C_{h,\mathrm{phys}}^\chi}.
\end{align}$$

Each regional form is pulled from the original action and evaluated on variable-history admissible families, not only the tangent space of a fixed-source fiber. The $h$-corner term is included once. Before a smooth-domain theorem this is a bilinear identity on differentiable admissible families. An optional global-slice restriction further pulls back this identity and does not replace it with the gauge-fixed action's symplectic form.

In the common-frame $1+1$ Maxwell model the reduced form is $\delta E\wedge\delta(a_1-a_2)$; with variable $\varphi$ it is $\delta E\wedge\delta(a_1-a_2+\varphi)$. Yang--Mills gives $\Theta_{\mathrm{red}}=\langle J_1,V_h^{-1}\delta V_h\rangle$. These exact benchmark identities do not establish a high-dimensional pullback theorem.

Restored infinitesimal proper gauge directions lie in the pulled-back kernel under the fixed physical outer policy. Equality requires nondegeneracy modulo gauge, regularity and control of extra auxiliary/assembly fibers. Disconnected gauge identifications are not tangent kernel directions. The first draft's unconditional “precisely the kernel” wording is withdrawn. Maxwell mode normalization/CCR do not prove these requirements or gauge-fixing independence.

For the cylinder time slab, the original on-shell identity is

$$\begin{align}
\delta S_{i,\mathrm{on}}
=\Theta_i^+-\Theta_i^-+
\langle\Pi_i,\delta a_i\rangle_\Gamma.
\end{align}$$

On descent and full transmission the interface primitives cancel and the original actions add exactly, so the composed relation is exact isotropic with primitive $S_{M,\mathrm{on}}$. Original symplectic flux and port power cancel pairwise. The regional polarization Hamiltonian is $H_i^{\rm raw}+e^{-2}\int_S\alpha_iE_{y,i}$; its matched sum is the connected Maxwell Hamiltonian, including the Wilson/electric zero mode. No maximal-isotropic/Lagrangian theorem is inferred in the radially infinite-dimensional core.

## M. Observable Algebra and the Non-Abelian Electric Center

**Verdict: the unrestricted central-flux claim is false; exact $1+1$ crossing observables do not establish a continuum center theorem.**

Keep $\mathfrak A_i^{\mathrm{fr}}$ (based-gauge invariant, actively cut-charged), $\mathfrak A_i^{\mathrm{inv}}$ (invariant under a declared active cut action), and $\mathfrak A_i^{\mathrm{ext}}$ (declared transition/dressing variables) separate. Passive frame re-expression is not any of these active reductions.

For $U(1)$ an electric-center choice can retain smeared normal flux as a central variable, provided the chosen algebra excludes operators shifting it. For non-Abelian $G$, raw Lie-algebra-valued $\mu$ is a boundary gauge generator and transforms as $\delta_\eta\mu=[\mu,\eta]$ in the source pairing convention. It is generally not central. Casimirs, representation labels and suitable invariant orbit/conjugacy data can label central/superselection sectors only after choosing the regional algebra. Even a Casimir central in the charge subalgebra need not be central in the full framed/extended algebra.

The $1+1$ crossing data $a_1-a_2+\varphi$ and $V_h=U_2^{-1}h^{-1}U_1$, and the exact Haar invariant-subspace reduction, remain valid. They do not show whether a continuum electric center disappears, is paired or survives gluing. Physical outer charges/topological sectors must be retained. Higher-dimensional local algebras and crossing Wilson/dressing constructions remain missing; no sharp Hilbert factorization is inferred.

## N. Quantum/BRST--BV Layer

**Verdict: `missing`.**

The active gauge notes do not construct regional ghost boundary data, a gauge-fixed BRST differential, a BV--BFV boundary complex, anomaly cancellation, or a gluing quasi-isomorphism. `gauge-covariant sewing and reduction.md` correctly lists BRST/BV as one possible continuum route and declines to claim a theorem.

For continuum gauge-fixed QFT, “restore gauge redundancy” should ultimately mean that regional gauge-fixed complexes and their boundary/transition data compose to a global complex whose cohomology is the physical global theory. Artificially adding classical gauge copies is a useful classical saturation operation, not a quantum BRST theorem.

## O. Associativity, Transition Cocycles, and Corners

**Verdict: `proved` for the (1+1) chain; general higher-dimensional associativity/corners are `missing`.**

`Yang-Mills 1+1.md` proves both the classical cotangent reduction and the normalized-Haar reduction by stages for three cells:

$$\begin{align}
[(W_r,J_r)]\longmapsto(W_3W_2W_1,J_1).
\end{align}$$

It proves equality of the reduced canonical one-form, not just associativity of group multiplication. This is an exact benchmark.

It is not a triple-junction theorem. The spatial chain has distinct point interfaces and no codimension-two locus at which three regional faces meet. Higher-dimensional gluing requires joint trace spaces, corner/JKM completion, clean relation composition, compatible stabilizers, and reduction-by-stages hypotheses at every intermediate union.

With the source convention $(A^g)^h=A^{gh}$, transition data on a triple overlap obey

$$\begin{align}
h_{ik}&=h_{ij}h_{jk},
&\boxed{h_{ij}h_{jk}h_{ki}=1}.
\end{align}$$

No active higher-dimensional note proves joint original-trace/corner patching with this cocycle. Enlarged realization traces require separate compatibility; a unified global gauge slice is an optional additional theorem.

## P. Original Variational Trace Versus Enlarged Hyperbolic Trace

**Verdict: missing in the first draft; the definition is now repaired, while realization-specific maps/domains remain unproved.**

The original $\mathcal Z_{i,\Gamma}^{\mathrm{inv}}$ is defined by the gauge-invariant action/Green identity and physical corners. It need not consist of gauge-invariant observables and has not automatically been quotiented. The enlarged $\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}$ contains the additional normal, constraint, gauge-driver or boundary-jet data required by the chosen realization. Its two maps are

$$\begin{align}
\rho_i^{\chi_i}:\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}
&\to\mathcal Z_{i,\Gamma}^{\mathrm{inv}},\\
P_{i,\mathrm{in}}^{\chi_i}:\widehat{\mathcal Z}_{i,\Gamma}^{\chi_i}
&\to\mathcal B_{i,\mathrm{in}}^{\chi_i}.
\end{align}$$

No factorization $P_{\mathrm{in}}=\overline P\circ\rho$, surjectivity of $\rho$, or canonical section is assumed. Original sewing uses $\rho\widehat z$, whereas gauge/driver compatibility can use the remaining enlarged components. The displayed commutative trace identity in formalism Section 3 is a requirement to verify, not a constructed map for Maxwell.

Maxwell $2+1$ supplies $(\alpha,q)$, its original Green-dual coefficients $(E_y,B)$, and Neumann/Dirichlet/compact-source master histories. Maxwell $3+1$ supplies $(\alpha,q_a)$, coefficients $(E_y,F_{ya})$, and transverse/longitudinal-normal/zero-mode histories. Neither note constructs the full enlarged trace/domain/incoming map, nor proves that arbitrary original connection histories are independent causal inputs. Their existing trace information is original variational data plus reduced-channel realizations, not a complete gauge-fixed hyperbolic boundary trace theorem. The new cylinder dossier separately constructs $\widehat z,\rho,P_{\rm in}$ for its smooth mixed realization.

The $1+1$ models solve Gauss and reduce directly to finite-dimensional mechanics. They bypass this enlarged hyperbolic trace question; they do not validate an unrestricted identification of the two spaces.

## Q. Passive Presentation Arrows Versus Active Gauge Reduction

**Verdict: the first draft conflated two operations with similar coordinate formulas; the distinction is now explicit.**

Passive arrows change regional trivializations of one geometric connection. They re-express $a_i$, $h$, the gauge conditions, driver components and boundary data together, with $h\mapsto k_1^{-1}hk_2$. They have no Hamiltonian charge. Their allowed chart domains and fixed physical outer frames must be respected; not every arbitrary cut map is a global chart change.

Active arrows hold the frame convention fixed and transform solutions/CPS via allowed bulk gauge transformations. Their cut values belong to regional restriction images; only the global proper image is eventually a physical equivalence. They can carry boundary charges or move between prescribed-history fibers. Physical large outer symmetries remain symmetries. Gauge-fixed representatives can require field-dependent re-fixing, hence the groupoid in K.

Variable-$h$ product-frame identification is first passive presentation redundancy. A physical quotient must separately supply the active proper reduction. These two steps can combine in the exact $1+1$ presentation but cannot be identified just from the shared algebraic law for $(a_i,h)$. The canonical $h$-corner term is required by the original action under variable presentation; it does not turn passive arrows into charged physical transformations. The old sewing note's quotient formula is therefore retained only with the specialized/conditional interpretation in F and the repaired formalism, not used as a general theorem.

## Claim Ledger

| Item | Current status | Exact boundary after repair |
|---|---|---|
| A | model action identities supported; general functional layer conditional | original CPS is pulled to realized fields; gauge-fixed action pairs do not replace it |
| B | full gauge IBVP missing | reduced master histories do not specify the complete enlarged incoming/constraint domain |
| C | naive cut/fix commutation false in general | mode representatives do not prove restriction compatibility |
| D | descent/corner algebra supported; slice patching conditional | physical locus does not require the optional global slice |
| E | conceptual distinction supported | original Cauchy descent/Gauss precedes gauge realization and quotient; full worldtube transmission is stronger |
| F | exact $1+1$ reductions; general interpretation narrowed | active allowed/proper restriction images differ from passive frame arrows |
| G | $1+1$ exact reduced benchmark; higher-dimensional coverage missing | saturation of physical assemblies cannot create omitted orbits |
| H | unrestricted mapping-group reduction false; $2+1$ smooth-core time-slab action/intertwining proved | use the actual proper restriction image and compatible bulk extension class; no general functional sequence follows |
| I | two conditional patching schemas | gauge-condition defects are not original Euler--Lagrange surface sources |
| J | two-sided theorem in $1+1$ and the $2+1$ smooth core; conditional generally | original restriction and non-Coulomb collar assembly proved independently on fixed domains; cylinder endpoint evaluations now intertwine the full time-slab relation |
| K | intrinsic $2+1$ arrows proved complete; universal residual-group claim withdrawn | regional map/cut definition, smooth comparison lemma and converse; not induced orbit equality |
| L | $1+1$ exact; $2+1$ CPS plus time-slab exact-isotropic composition proved | choice independence and kernel equality only in the stated nondegenerate-mod-gauge sector; no smooth quotient manifold or Lagrangian maximality |
| M | unrestricted non-Abelian electric-center claim false | raw flux generates the cut algebra; invariant sector labels depend on the chosen algebra |
| N | outlook only | no BRST/BV complex or gluing theorem |
| O | exact interval chain; general corners missing | original joint traces/physical patching first; unified gauge slice optional |
| P | dual trace definitions repaired; model maps/domains missing | $\rho$ and $P_{\mathrm{in}}$ have the enlarged trace as domain and need not factor through one another |
| Q | passive/active distinction repaired | a passive chart quotient alone is not the physical proper-gauge quotient |

Defining a locus, relation, image or quotient does not change a missing analytic theorem into a proved one. The model specialization tables in the repaired formalism state the two trace layers, physical versus slice patching and restriction/unfixing status separately.

## General Statements Actually Supported by the Existing Examples

1. Original action/Green identities determine the physical trace and the outward signs before PDE gauge fixing.
2. Original variational traces, reduced master-field boundary histories and complete gauge-fixed IBVP traces are distinct objects; the examples supply only their stated realizations.
3. Passive frame covariance and active based/boundary/proper actions have different meanings, even with similar formulas.
4. The variable-$h$ canonical term and full transmission versus Gauss distinction are necessary; neither by itself proves physical reduction.
5. Framed compact $1+1$ action reduction, crossing holonomies and Haar/Peter--Weyl reduction can be exact without proving high-dimensional trace or slice theorems.
6. Abelian Fourier sewing recovers the displayed connected modes; finite/symbolic checks do not prove an arbitrary-history reconstruction theorem.
7. In the declared Maxwell $2+1$ smooth core, the separately defined mixed evolution relations compose at orbit level, their original on-shell actions add, and internal symplectic flux/work cancels. This does not generalize the Abelian history action or IBVP theorem.

## Statements Not Implied by the Existing Examples

- every original variational trace is a freely prescribable hyperbolic input, or $P_{\mathrm{in}}$ factors through $\rho$;
- physical assembly requires or automatically satisfies one global gauge slice;
- gauge-condition jumps are physical Euler--Lagrange sources;
- all cut maps extend to global proper gauge, or arbitrary based regional maps patch with the required regularity;
- a fixed residual group represents every Gribov intersection;
- an induced orbit-equivalence definition proves effective regional faithfulness;
- the Maxwell modes prove both restriction and reconstruction in a common energy/Sobolev class;
- the higher-dimensional CPS kernel consists exactly of gauge directions without further hypotheses;
- non-Abelian raw electric flux, or every charge Casimir, is central in every regional algebra;
- finite compact Haar reduction proves continuum local algebras, center removal or sharp Hilbert factorization;
- interval-chain associativity proves higher-dimensional corners, or classical saturation proves BRST/BV gluing.

## Minimal Kill Tests

**Maxwell 2+1: proved for the bounded smooth finite-Fourier orbit/collar and time-slab relation theorems.** The independent dossier is `maxwell-2p1-spatial-gluing-kill-test/`, especially Sections 9--10. Maxwell 3+1 remains deferred. The following outcomes supersede the older cylinder-only missing/model-level entries above; general and completed-domain claims remain conditional.

### Kill Test 1: Maxwell $2+1$ Physical Restriction and Assembly

Passed: original smooth restriction and intrinsic based-class collar assembly, full admissible-choice independence, complete regional arrows, two-sided orbit theorem and original CPS on horizontal tangent classes. The collar definition uses radial integration, not Coulomb/DtN; restoration is proved to be its section modulo discrete proper copies. Failed and retained: raw smooth-orbit reconstruction, direct Coulomb membership and raw kernel equality, with both the cusp and piecewise-quadratic counterexamples. The physical target is only $\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$; $\operatorname{Sol}_{\rm pw}$ is diagnostic. Neither topology nor gauge group is changed.

Time-slab follow-up passed: the regional $\mathscr U_i^\chi$ graphs and compatibility domains are explicit; the cut-history action includes both endpoints and all jets; matched histories and their intrinsic arrows biject with global solution-history orbits; staged reduction intertwines evolution; the original HJ primitives compose exactly; and symplectic/power/Hamiltonian balance closes, including the zero mode. The relation is exact isotropic, not proved Lagrangian/maximal.

### Kill Test 2: Active Extension Image

Cylinder result: the smooth proper image is exactly $\operatorname{Map}_0(S^1,U(1))$, with smooth time histories and the finite-Fourier-preserving subgroup distinguished. Intrinsic regional arrows are wall-identity pairs with equal cut phases; their images and converse completeness are proved by the smooth comparison lemma. Active stabilizers are trivial. Direct smooth Coulomb residuals still give only $\lambda_n=\pi n(x+L)/L$, with cut image $\{\pm1\}$. The regional product based equivalence is valid after collar repair, but is not the global smooth restriction kernel. The separate Maxwell $3+1$ slab calculation remains deferred.

The cusp parameter is Lipschitz/$W^{1,\infty}$ and removes the raw cusp in a category permitting that gauge. Its failure under globally smooth gauge is a representative/category obstruction, not a physical sewing failure; the theorem does not assert the same obstruction in Sobolev quotients. A bare integral change of the restoring real $f$ is not harmless unless the accompanying based re-fixing is retained.

### Kill Test 3: Maxwell $3+1$ Polarization Completeness

If reopened, repeat the two physical directions with both polarization families and zero modes, specifying full original transmission separately from the enlarged incoming/driver traces. Keep optional slice patching distinct.

### Kill Condition

A failed restriction or reconstruction direction is a reason to narrow the claim to the verified modes. Do not redefine the global target, admissible domain or topology merely to force an onto statement.

### Next Formalism Review: Three Points to Challenge

1. Is $\rho$ actually well defined on the proposed enlarged trace domain, and are the physical Green pairing and corner data retained without covertly assuming admissibility?
2. Do the kinematic patching hypotheses imply physical weak reconstruction independently of a global gauge condition, without defining reconstructibility into the locus?
3. Can regional arrows be constructed and proved complete independently of assembly-induced orbit equality, while preserving the active proper policy and controlling extra CPS kernel directions?

## Verification Boundary of This Audit

**Locally checked (previous repair; its cited local scripts were not retained in the repository):** source action/CPS conventions were reread. Two xAct original-Maxwell variational/Green residuals vanished with the full xTras pipeline. Thirteen Mathematica checks passed for the existing Maxwell component signs and $1+1$ reductions, the coadjoint/variable-transition identities (including a componentwise residual), a non-Abelian noncentral charge variation, the Yang--Mills corner one-form and the $U(1)$ moment-map contraction. Exact finite matrix witnesses are not continuum or completeness proofs. The former draft's 8 finite Yang--Mills and 20 Maxwell checks are historical evidence for that earlier repair; current reruns are recorded separately below.

**Assumptions:** live source notes retain their declared flat backgrounds, compact groups, fixed physical outer frames, bundle/character sectors, absence of charged matter and original symplectic sign. All general trace, smoothness and patching hypotheses remain explicit inputs.

**Not verified in the general theory:** a concrete enlarged hyperbolic IBVP theorem, completed-domain patching, restriction completeness, effective regional groupoid faithfulness, geometric assembly-choice independence, full CPS kernel equality, continuum observable/center or BRST/BV reconstruction. The cylinder dossier states its narrower core results and failures. Research Radar and the excluded model branches were not modified.

**Verified:** the prior round's 30/30 exact witnesses were rerun; the orbit/collar follow-up adds 9/9 exact diagnostics; the time-slab sign/action follow-up adds 12/12. The earlier 20/20 mixed-model benchmark is historical to the prior round. Dossier Sections 9--10 give the analytical choice-independence, intrinsic-arrow, two-sided orbit/relation, HJ and balance arguments; symbolic success is not their proof. Verdict: proved in this smooth core; general functional, quotient-manifold and Lagrangian-maximality claims remain conditional.
