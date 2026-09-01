# Claim ledger

Labels refer to the hypotheses in `calculations.md`, not to an unrestricted Maxwell theorem. `passed` means a proof in that core; `conditional` means a required identification/domain theorem remains; `failed` means an explicit counterexample. Symbolic checks are witnesses, never the proof of completeness.

| Test | Verdict | Evidence and exact boundary |
|---|---|---|
| A1 worldtube identity | passed | Full covariant integration by parts with density/outward signs. Endpoint-only representative requires original normal Euler equation, Cauchy constraints and corner policy. Gauss alone is insufficient. |
| A2 time-slab sequence | passed model-specifically in Section 10; conditional generally | The cylinder core has explicit endpoint actions, history-domain covariance, spacetime arrows and evolution intertwining. Abstract image exactness alone still proves none of these statements for a general gauge theory. |
| A3 fixed transition | passed | Existing $h=r_1^{-1}h_0r_2$ retained; follows from $(A^g)^r=A^{gr}$. |
| A4 provenance | passed | Old unretained local checks labelled `locally checked`; new witnesses retained separately. No commit or push is claimed. |
| B1 dual traces / realization | passed in smooth finite-Fourier mixed core | Explicit $\widehat z,\rho,P_{\rm in}$, Coulomb/Gauss, harmonic $A_t$, forced master equations, zero mode and all compatibility jets; 1D energy/Duhamel argument. Not a raw-potential hyperbolic or completed Sobolev theorem. |
| B2 physical weak patching | passed | Independent $\delta'$ coefficients force tangential descent; $\delta$ coefficients force electric and magnetic transmission. Arbitrary original test values/normal jets are available. Bianchi follows for the actual distributional connection. |
| B3 direct global Coulomb slice | failed as a universal statement | $A=d[\beta(1-|x|/L)]$ is source-free, regionally Coulomb, but has $J\delta(x)$ divergence. A smooth global gauge cannot remove it. |
| B3 regional harmonic restoration | passed | $f=(2T)^{-1}J$, all $T_\ell>0$, and $\dot f=-\alpha$ restore smooth temporal/Coulomb representatives. This is a regional re-fixing operation, not a direct smooth gauge equivalence of raw weak potentials. |
| B4 extension image | passed | Smooth proper image is exactly zero winding; the finite-core subgroup has finite-Fourier real lifts. Temporal endpoint policy is explicit. |
| B4 effective arrows | passed for intrinsic smooth-core assembly; conditional generally | Section 9.4 defines arrows from regional maps with equal cut phases, proves their global images and converse completeness, and identifies the Coulomb re-fixing realization. Direct raw smooth residuals remain a smaller subgroup. |
| B5 smooth restriction / weak reconstruction | passed separately | Global temporal then Dirichlet Coulomb fixing gives admissible restrictions. Every matched regional object gives an original distributional weak solution. These facts alone have different target categories. |
| B5 raw two-sided orbit theorem | failed | Raw assembly need not be smooth-gauge equivalent to a smooth field; a separate piecewise quadratic pure gauge also obstructs smooth-orbit restriction into regional Coulomb on the full weak target. |
| B5 restored two-sided orbit theorem | passed at set level in the stated core | Section 9 identifies restoration with independently defined geometric assembly and proves restriction directly from original global representatives. No statement for an unspecified general-theory assembly. |
| B6 original CPS pullback | passed on differentiable core families | Raw additivity; restored correction vanishes by Gauss and transmission. Fixed $h$, closed $S$: corner zero. Variable $h$: $-e^{-2}\int_S\delta E_{y,2}\wedge\delta\varphi$ on the declared constraint locus. |
| B6 kernel equality | failed for raw smooth gauge; passed for restored core modulo re-fixing arrows | Common harmonic regional gradients are extra raw nulls. For restoration they are precisely its invisible fibers; smooth global Coulomb Cauchy core is nondegenerate, including the Wilson/electric pair. No general quotient manifold theorem. |
| B7 connected modes | passed as consistency check | Original frequencies, both radial branches, zero sector and CPS normalization retained. Old 20 checks and new 30 witnesses pass; mode agreement proves none of B2--B6. |
| B8 bounded kill decision | passed as smooth-core orbit theorem | Section 9 closes the geometric-identification gate with fixed target and gauge group. General functional/quotient-manifold extensions remain open and are not prerequisites for this set-level result. |

## Orbit-level collar theorem

| Claim | Verdict | Exact evidence and boundary |
|---|---|---|
| Physical target | fixed | Only $\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$; $\operatorname{Sol}_{\rm pw}$ is diagnostic, never the final target. |
| Regional object and based equivalence | proved, Section 9.1--9.3 | Original smooth regional solutions with full physical matching and fixed walls. All regional based components are allowed because the smooth-output comparison lemma proves well-definedness; their independent raw jets are not declared patchable. |
| Based classes alone biject with global orbits | false | The common active cut action remains. Objects are $\mathcal B_h$, final classes are $\mathcal B_h/\mathcal H_\Gamma$. |
| Non-Coulomb geometric assembly | proved, Section 9.2 | Full transmission gives all curvature jets; based radial integration constructs a common smooth collar without $T$. No interpolated physical curvature or assumed reconstructibility. |
| Full admissible-choice independence | proved, Section 9.3 | Includes collar, pure-gauge interpolation, transition extensions/lifts, based representatives and reachable fixed-$h$ presentations. Smooth comparison ODE supplies a global smooth proper map; walls, time dependence, winding and based large components are controlled. Arbitrary field interpolation is excluded. |
| Intrinsic arrows and stabilizers | proved, Section 9.4 | Regional definition independent of global orbit equality; every arrow maps globally and every global equivalence is captured modulo based maps. Active stabilizers trivial; smooth extension image remains zero winding. |
| Two-sided orbit theorem | proved, Section 9.5 | Restrict arbitrary original smooth representatives, then take intrinsic arrow classes. Both composites are identity on orbit sets; no topology defined by an image. |
| Coulomb restoration as section | proved, Section 9.6 | Same geometric orbit; temporal/Coulomb representative only modulo discrete proper copies. No global unique smooth Wilson-angle section. |
| Integral restoring-lift shift | false if applied alone | Fixed-input $f+2\pi m$ recreates the normal jump. Accompanying based re-fixing gives the controlled global large identification; unequal-length algebra in Section 9.7. |
| CPS on orbit tangents | proved, Section 9.8 | Original forms invariant/horizontal under based and common-cut actions, choice independent, with B6 recovered on the section. Variable $h$ keeps $-e^{-2}\int_S\delta E_{y,2}\wedge\delta\varphi$. |
| Kernel equality | proved only in the declared nondegenerate-mod-gauge tangent sector | Fixed $h$, or after passive presentation equivalence: based plus intrinsic cut vertical directions, with the Wilson/electric pair retained. Unquotiented variable-$h$ data also have passive vertical nulls. Large maps are discrete identifications. |
| Smooth versus Sobolev obstruction | category-specific, Section 9.9 | Cusp parameter is Lipschitz/$W^{1,\infty}$ and removable by that lower-regularity gauge. No claim of the same obstruction in $H^1$/Sobolev quotients. Smooth category unchanged. |
| Smooth quotient manifold / completion | not proved; outside this round | Set/equivalence classes and two-forms on admissible horizontal tangents only; no Fréchet symplectomorphism. |

## Time-slab evolution-relation theorem

| Claim | Verdict | Exact evidence and boundary |
|---|---|---|
| Regional $\mathscr U_i^\chi$ | proved, Section 10.1 | Inputs are $(\xi_i^-,\alpha_i,q_i)$ on $\mathfrak D_i^\chi$; $\xi_i^+$ and the normal/gauge/jet entries of $\widehat z_i$ are outputs/constraints. The Section 1 one-dimensional KG/wave/ODE construction gives existence, uniqueness and seminorm/family dependence on the finite-Fourier smooth core. |
| Cut-history action/domain invariance | proved, Section 10.2 | Zero-winding finite-Fourier lifts act on both endpoints, histories and all enlarged jets; they preserve the family of compatibility domains and intertwine evolution. They need not preserve a fixed history fiber or be identity at $t_\pm$. |
| Matched relation | proved, Section 10.3 | Original connection descent and full $E_y/B$ transmission are imposed on the whole worldtube, with Gauss and corner compatibility. Global Coulomb matching is excluded from the physical locus. |
| Relation-level two-sided theorem | proved as an orbit-set relation, Section 10.4 | Smooth family collar assembly intertwines both endpoint evaluations; global histories restrict conversely; intrinsic regional arrows capture exactly global proper equivalences. No quotient manifold is asserted. |
| Reduction by stages | proved model-specifically, Section 10.5 | Regional based reduction followed by common cut-history reduction equals intrinsic $\mathcal K_h$ reduction and the global proper orbit relation. The based product is not identified with the global restriction kernel. |
| Regional Hamilton--Jacobi identity | proved, Section 10.6 | Original action only: $\delta S_{i,\rm on}=\Theta_i^+-\Theta_i^-+\langle\Pi_i,\delta a_i\rangle_\Gamma$. Fixed $h$ has no extra term; variable reachable $h$ retains the calibrated endpoint corner once. |
| On-shell action additivity | proved exactly, Section 10.6 | Collar maps preserve $F$, the cut has no action, and the same original representative is used. Hence $S_{M,\rm on}=S_{1,\rm on}+S_{2,\rm on}$ with constant zero. Coherent future JKM changes must transform all primitives together. |
| Exact-isotropic composition | proved on admissible differentiable families, Section 10.7 | Regional primitives are $S_{i,\rm on}$; matching cancels the port one-forms and gives primitive $S_{M,\rm on}$. Lagrangian maximality/split range is not proved. |
| Symplectic and power balance | proved, Section 10.8 | Original current gives pairwise flux cancellation. $H_i^{\rm pol}=H_i^{\rm raw}+e^{-2}\int\alpha_iE_{y,i}$ obeys pure port power; on matching its sum is the connected Maxwell Hamiltonian. |
| Wilson/electric zero sector | retained and checked | $\nu_1+\nu_2=0$, $(a,\nu)=(a_1-a_2,\nu_1)$ and $H_M=e^2L\nu^2/C$. No discrete large identification is treated as a kernel vector. |
| Coulomb relation section | proved, Section 10.9 | $f=(2T)^{-1}J$, $\dot f=-\alpha$ act consistently on both endpoints; global temporal/Coulomb restrictions are fixed and arbitrary matched histories map to the same intrinsic class. Section is local in a Wilson-angle chart modulo discrete copies. |
| General YM-type time-slab theorem | not proved | The Abelian harmonic action, free cut action, trivial stabilizers and one-dimensional mixed realization are model-specific. |

## No claim inflation

- The bulk theory is only Maxwell here; the formalism repair is only for second-order connection theories on a fixed background.
- No low-regularity trace surjectivity, completed phase space, continuum Hilbert reduction, regulator convergence, or quantum equivalence follows.
- No unrestricted product of based regional smooth maps is identified with the smooth global restriction kernel. Its distinct intrinsic equivalence is justified by the collar comparison proof.
- No passive frame change is assigned a Hamiltonian charge.
- The time-slab result is not inferred from the Section 9 orbit notation: its inputs/outputs, endpoint action, domain invariance, HJ primitive and balance laws are separately proved in Section 10.
- The model-specific cylinder theorem validates the general relation architecture but does not prove the general Yang--Mills-type rows.
- No target topology or global gauge group was changed after a failed test. Raw and restored constructions are named separately throughout.
