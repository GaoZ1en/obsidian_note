# Phi4 Quantum Sewing Verification

Target: [1+1 phi4 quantum observable algebra gluing](<../models/spacelike regions/non-gauge/1+1 phi4 quantum observable algebra gluing.md>).

The model has a stationary quartic coupling, positive reference mass, two finite intervals and physical Dirichlet walls. The interaction is nonzero near the artificial cut and zero near the physical walls. The intended observables include derivatives, stress, total energy and history insertions. Independent regional finite-renormalization conventions are transported together with the interaction and all insertion sources.

The completed acceptance scope is total coupling degree at most two and loop number at most two, including tree contributions and the corresponding counterterms. The note now gives explicit integral coefficients and finite contacts for the stress/interface-energy comparison at these orders. No all-order stress theorem is claimed or required.

## Executed Checks

The dedicated Mathematica tool executed

```wl
Get["/Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/numerics/phi4_quantum_sewing_checks.wl"]
```

The final execution returned `allChecksPassed -> True` and `checkCount -> 28`. The script itself exported [the result](<phi4_quantum_sewing_results.json>); it was not filled in by hand.

| Check group | Evidence and scope |
| --- | --- |
| Finite Wick subtraction | Exact square and quartic coefficients; composition through degree eight. The finite-degree checks supplement the general Wick pairing argument. |
| Mass and energy matching | Exact equality of the two potential polynomials, including their constant term; equality of their forces checked separately. |
| General finite map | First and second insertion chain rules for a nonlinear polynomial map; its inverse through third order. The all-order result follows from formal recursion and the ordinary chain rule, not from the truncation. |
| Quartic contractions | All four cross-contraction coefficients: 16, 72, 96, 24; quartic/square and cubic/linear coefficients. |
| Quantum Hamiltonian | Exact Moyal calculation of the field and momentum generators, the quartic correction to a cubic momentum observable and the commutator derivation identity. This is a finite canonical diagnostic. |
| First-order field | Exact sign and factor with a finite Wick shift retained. |
| Crossing commutator | Exact two-insertion first-order identity for arbitrary linear combinations of a canonical pair. Continuum equality additionally uses the explicit regional/global kernels. |
| Dyson ordering | A noncommuting matrix example through second order checks that the earlier vertex is the outer nested commutator. |
| Regional response | Exact hyperbolic-function interface inverse, actual mismatch right inverse and cross-region/global Green identity at positive real complex-frequency parameter. These are meromorphic identities before the causal limits. |
| Energy and force | Exact coordinate differentiation using the classical equation, with stationary coupling; the spatial force proportional to the derivative of the coupling is retained. These checks are not quantum Ward proofs. |
| Cut exchange | Opposite endpoint fluxes cancel with the derivative convention used in the new note. |
| Polynomial kernel | A degree-eight projection diagnostic. The arbitrary-degree argument is external-mismatch expansion on the declared formal coefficient algebra. |

An initial execution found that a line break in the verification script had separated the vacuum-energy adjustment from the assigned potential. The script was corrected and rerun; the potential residual then vanished. This was a check-script issue, not a change to the stated Wick coefficients.

The dedicated Mathematica tool also executed [the stress/contact script](<phi4_stress_contact_checks.wl>). Its final result was `allChecksPassed -> True`, `checkCount -> 27`, exported by the script to [the stress/contact result](<phi4_stress_contact_results.json>).

| Additional check group | Evidence and scope |
| --- | --- |
| Collision counts | Exact bulk and boundary margins, their one-divergence versions, and integer inequalities. These check the arithmetic of the stated local bound, not the existence of every extended graph. |
| Cauchy contacts | Exact derivative of a smooth approximate Cauchy kernel, its integral coefficient pi, and the sign of the double-pole delta derivative. |
| Stress-polynomial contractions | General polynomial-degree single/double contraction coefficients, the quartic coefficient and the free scalar stress central coefficient. |
| One-vertex Ward residue | Exact cancellation with the local companion, including a nonconstant source and the quartic local correction. The contact derivation in the note supplies the distributional interpretation. |
| Polynomial transformation | A nontrivial degree-six example of the logarithmic stress transformation commutator, and its commutation with a constant Wick change. The arbitrary-degree proof uses commuting coordinate and field derivatives. |
| Reflecting boundary kernel | Exact normal derivative of the local image logarithm, its unit time integral and half-disk integral. Image-logarithm integrability checked through power six; arbitrary finite powers follow by the elementary exponential substitution. |
| Time cocycle | A noncommuting two-by-two matrix example through time degree four, including the generator sign. This does not prove the continuum series; the source identities and coefficient recursion do that on the specified bulk class. |
| Energy conversion | Exact noncommuting similarity calculation of the extra free-derivative term in the transformed correction and its generator identity. |

The dedicated Mathematica tool subsequently executed [the canonical-energy script](<phi4_canonical_energy_checks.wl>). The final execution returned `allChecksPassed -> True`, `checkCount -> 20`, and exported [its result](<phi4_canonical_energy_results.json>).

| Canonical check group | Evidence and scope |
| --- | --- |
| Two-cell quantum energy | Exact Moyal field and momentum generators with the Wick mass subtraction; left/right energy exchange and total conservation. The absence of higher Moyal terms in this energy commutator does not remove them for other observables. |
| Boundary work | The plus sign for prescribed-history work and cancellation of the two outward powers. |
| Single energy contact | Exact energy/quartic commutator, including Wick subtraction; the central-CCR sum underlying the symmetrized polynomial chain rule. |
| Auxiliary energy comparison | Coordinate work with all quartic subtractions and a noncommuting matrix check that the interaction-picture energy changes only by the derivative of the auxiliary coupling. This is a comparison device, not physical switching. |
| Physical wall | Exact Bessel-function scalar coefficient of the reflected free energy; the inverse-square pieces cancel and the remaining logarithm is integrable. This does not prove all operator limits. |
| Second-order field | Quartic/cubic contraction multiplicities 12, 36, 24; field degrees 5, 3, 1 and explicit hbar powers 0, 1, 2. Regional/global equality additionally uses the full kernels in each of the two vertex slots. |

The finite canonical cells are an ordering and sign diagnostic. The sewing map itself is constructed from continuum regional responses, not from these cells.

For the scoped endpoint, the dedicated Mathematica tool directly checked the connected-graph relation $\mathcal L=I-V+1$ against the contraction counts already used in the note. The three second-order field terms give loop counts `{0, 1, 2}`, hbar powers `{0, 1, 2}` and remaining field degrees `{5, 3, 1}`. The four-point bubble, two-point sunset and two-vertex connected vacuum graph have loop counts `1`, `2`, `3`, respectively. A four-point two-loop graph with three quartic vertices lies at coupling degree three and is outside the chosen scope. The free two-stress contraction has one loop but raw hbar power two. These are exact counting checks; no additional two-loop stress integrals were evaluated in this scope update.

## Completed Two-Loop Checks

The dedicated Mathematica tool executed

```wl
Get["/Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/numerics/phi4_two_loop_sewing_checks.wl"]
```

The final execution returned `allChecksPassed -> True`, `checkCount -> 38`. The script exported [its result](<phi4_two_loop_sewing_results.json>). The Wick enumeration uses arbitrary contraction symbols; the response and contact checks separately supply their continuum values. No finite-cell replacement is used in the new contact calculation.

| Check group | Executed evidence |
| --- | --- |
| One-vertex bilinear | Complete direct Wick derivative agrees with the displayed formula, including the order-hbar-squared scalar image term. |
| Two-vertex bilinear | Independent direct differentiation agrees with the indexed contraction formula in each of loop degrees 0, 1 and 2. There are respectively 4, 13 and 16 indexed terms with distinct root slots; these are not counts of unlabelled graph topologies. |
| Potential insertion | All retained contractions of the quartic root with one vertex agree with the finite sum, including quadratic image insertions. Constant potential vertices commute and do not produce nested terms. |
| Spatial-stress correction | The one-vertex dressing of `hbar P2/(8 pi)` agrees with all three retained terms in the note. Its scalar part transports with the Wick shift. |
| Field insertion | The two-vertex field expansion includes its sunset coefficient and has field degrees 5, 3, 1 at the respective loop orders, including finite image terms. |
| Finite images | Exact square and quartic coordinate changes retain the quadratic and scalar coefficients. The derivative of the quartic image polynomial supplies precisely `hbar w' P2/4` in the current contact. |
| Continuum energy contact | With the actual equal-time covariance entries, the double-contraction squares cancel before removing the separation. The remaining single contraction includes the finite quadratic term of the potential. |
| Continuum current contact | Differentiating the regulated short-distance logarithm gives `hbar delta_epsilon'/(8 pi)` exactly; its first moment is minus one. This fixes the spatial-stress correction and its sign. |
| Endpoint and collar contacts | The explicit light-cone delta-derivative kernels have zero energy divergence and zero energy endpoint residue. Their current endpoint gives the required pressure contact. Derivatives of the two smooth collar partitions cancel. |
| Collision count | The two-vertex full-collision and one-divergence margins are 2 and 1. Their interpretation uses the previously evaluated smaller collisions; the count alone is not the contact calculation. |
| Actual response and root derivatives | The left, right and both crossing Green expressions match the independent global interval expression. Interface values and opposite outward derivatives match for a vertex on either side. The history inverse and the off-shell unit contact are retained. |
| Independent finite part | The image sum and an independent subtracted Euclidean resolvent integral at `m=1.3`, `ell=2`, `a=0.8` agree to better than twelve decimal places: `-0.02036983441009108844...`. This numerical check supplements the analytic response identity. |
| Finite conventions | The interaction inverse and insertion inverse are checked through coupling degree two. The insertion test includes the cubic finite-map coefficient, whose derivative contributes at this order. The multilinear formulas are derived in the note. |

The new pressure term is

$$
\Delta T^{11}=-\frac{\lambda\hbar h}{8\pi}[\Phi^2]_*.
$$

It is absent from the canonical energy density. At order $\lambda^2$ its one-vertex dressing must also be included. The two-loop scalar piece follows from the same local Wick power. This identifies the place of the formerly calculated logarithmic stress companion in the equal-time prescription; no change to the physical Hamiltonian is made.

The final matching is an analytic equality of integral coefficients for arbitrary allowed stationary $h$. Each of the four two-vertex regional assignments has the same Wick coefficient and the same response kernel as its global counterpart. The explicit one-vertex contact is used for the smaller collisions; the two-vertex count leaves no additional primitive coefficient. After summing the collar labels, the time-smeared interface current has no independent finite remainder. These are the arguments in the note, not assertions that the script numerically integrated every two-loop graph.

Energy is checked by differentiating the actual ordered-time integrals. With $L_t=(i/\hbar)[V(t),\cdot]$, the calculated contacts give

$$
\partial_t e^{(1)}+\partial_x j^{(1)}=L_te_0+\dot v=0,
\qquad
\partial_t e^{(2)}+\partial_x j^{(2)}
=R_1(L_te_0+\dot v)+L_tv=0.
$$

Opposite root orientations then give equal and opposite regional powers. Integration by parts gives $R_1H_0=V(t_0)-V(t)$ and $R_2H_0=-R_1V(t)$, identifying the sum of regional stress integrals with $H_0+\lambda V(t_0)$, with its scalar term. These general ordered-integral identities are proved in the note; they are not inferred from finite matrix tests.

## Formal Arguments and Their Status

**Proved algebraically:** Given admissible finite-renormalization isomorphisms and a reference sewing map, conjugating that map transports its complete kernel, image, involution, dynamics and multiple-source contact rules. The result holds at every formal order and is not restricted to the illustrative Wick shift.

**Physical constant coupling:** The primary construction uses the canonical field Hamiltonian with stationary quartic potential. The reference time only labels canonical fields; finite-time recursion works in both time directions and supplies no physical free past. Smooth auxiliary tests appear later as relative-source coordinates. Their comparison uses causal factorization and does not invoke time-slice surjectivity of the old finite-word class.

**Canonical energy calculation:** The new continuum contact calculation establishes the energy/vertex cancellation with all local Wick terms retained. The complete two-vertex coefficients then give the two energy-conservation identities above. Explicit response-derivative and finite-image matching identifies the regional insertions and their interface current; integrating the density gives the same stationary Hamiltonian. This is established through the selected two-loop order, beyond the earlier finite-cell diagnostics.

**Conditional auxiliary energy identification:** Differentiating the conjugated instantaneous Hamiltonian leaves the source work. If the required renormalized local stress-work identity has been established, integrating its past branch identifies the regional energy sum with the smooth-time generator. This algebraic comparison retains the vacuum term but does not itself establish the physical stress-work identity.

**Collision reduction:** For bulk kinetic stresses and separately time-labelled linear histories, counting derivatives against independent relative coordinates excludes additional full-collision contact freedom and one-divergence defects with two or more undifferentiated bulk vertices, provided proper subcollisions have already been normalized with the stated bounds and identities. For the current endpoint, the one-vertex current contact and its finite image term have now been evaluated before taking the cut limit. Independent multiple-stress/current sources remain outside the endpoint.

**Computed local stress contact:** The single/double Wick contractions in the local logarithmic convention give the stress-polynomial pole rule and its companion. The new real-time current contact fixes the corresponding equal-time spatial-stress correction, which is twice that companion with a minus sign in the pressure; no such correction is added to the canonical Hamiltonian. Its first-order insertion, second-order dressing and finite scalar transport are all included. This is not a Ward construction for independent nonlinear boundary-current sources.

**Recipe sewing:** The actual free section writes pre-matched fields as a quantum matched field plus an external mismatch field. For an evaluated polynomial recipe class admitting those replacements, evaluation at zero external mismatch is an ordinary algebra map whose kernel consists of terms with a mismatch slot. The new finite-order calculation supplies the stress and interface coefficients needed to apply this argument through coupling degree two and two loops. Its application to higher orders or larger insertion classes remains conditional on their own compatible collision prescriptions.

**Derived contact obstruction:** The history-source response has `(D1+D2) K = 1` in both causal inverses. It cancels from the ordinary commutator kernel but remains as `-i delta` in the Feynman kernel. This prohibits inferring time-ordered descent from the ordinary matching ideal. The interface-inverse symbolic check verifies its algebraic coefficient; no new distribution existence theorem is claimed.

**Outside the constructed target:** Independent multiple-stress and nonlinear boundary-current time-ordered sources, arbitrary higher-derivative local probes, convergence of the perturbation series, and removal of all cutoffs as operators on one common domain. The single energy-insertion contacts and time-smeared regional energy identities do not prove these stronger statements. The physical-wall calculation explicitly checks only the potentially singular local free scalar energy coefficient; interaction vertices vanish near those walls.

The source [Hollands--Wald, Conservation of the stress tensor](https://arxiv.org/html/gr-qc/0404074#S6) was read in HTML, including its explicit dimension-two qualification. Its dimension-greater-than-two existence theorem is not imported as a proof for this model. No PDF was used as formula evidence and no general curved-space tensor identity was claimed or checked.

The time-averaged generator, cocycle and auxiliary-test conversion in [Fredenhagen--Lindner, Section 3](https://arxiv.org/html/1306.6519#S3) were read in HTML. Their time-slice statement is not imported as a statement about the old finite-word class. The quartic local stress contact was compared with equations (3.10)-(3.11) of [the two-dimensional quartic model](https://arxiv.org/html/1704.04500#S3.SS2), including that source's distinction between the lightcone stress component and Hamiltonian integrand. The normal-ordered canonical quartic was checked against [Rychkov--Vitale, Section 2.1](https://arxiv.org/html/1412.3460#S2.SS1). Their periodic-box calculation is not used as an interval/history theorem. These are source checks; the sewing and energy arguments are given explicitly in the note.

## Validation

Pandoc parsed the new note and this record to a temporary LaTeX fragment without warnings. All their local links resolved and neither file had trailing whitespace. The repository policy audit and `git diff --check` passed. No perturbation-series convergence, infinite-time scattering, representation or vacuum-state result is asserted.
