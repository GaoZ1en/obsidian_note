# Scalar local structure: verification and claim ledger

Date: 2026-09-07. This record accompanies the [free implementation](<../scalar local structure implementation.md>), [finite-insertion obstruction](<../scalar insertion time-slice obstruction.md>), [switched-phi4 calculations](<../scalar interacting local structure.md>), and the separately [completed relative-S construction](<../scalar completed relative-S local structure.md>). It records an author verification, not an independent-agent review.

## 1. Executed symbolic checks

The saved [Mathematica driver](<scalar_local_structure_checks.wl>) was executed in full through the Mathematica tool: **31/31 exact True groups**, with no final Wolfram messages. It exits unsuccessfully if a group fails.

| Scope | What was actually checked |
|---|---|
| Cutoff | Full spacetime commutator; frequency-2 sine/cosine pairing with a relocated source; oscillator CPS sign |
| Kernel slots | Two- and four-slot three-chart partition identities; three-slot homotopy telescope |
| Wick choices | A degree-four/degree-two intertwiner and degree-six choice cocycle |
| Classical perturbation | Quartic EOM coefficients through coupling order two; quadratic insertion through that order; first retarded-tree sign |
| Quantum graphs | First-order quadratic one-loop coefficient; cancellation of disconnected graphs; future-vertex cancellation; combinatorial weights |
| Complete bounded graph table | Six differential-contraction exponentials versus all connected two-vertex trees and one-loop multigraphs for insertion degree 1 and 2; cancellation of negative hbar powers in orders 0 and 1 of the contraction expansion |
| Contact | Actual first-derivative jump of the frequency-2 Feynman kernel and its equation away from contact |
| Propagation and no-go | Massive 2+1 KG residual strictly inside the light cone; both signs of the geometric-optics transport identity; cancellation of all four packet phases |
| Dynamics | Switched energy balance in 2+1 dimensions and a scalar inverse-operator derivative diagnostic |
| Completed adjoint and response | Quartic canonical adjoint on a quadratic observable through order two, and the explicit compact-time response gradient |
| Completed formal inverse | Both products of a general matrix-valued cubic formal series and the displayed inverse vanish through order three after subtracting the identity; the noncommuting order of the two mixed terms is retained |

The compact cutoff diagnostic uses the cubic profile extended constantly at its endpoints. This profile is only C1; it is adequate for the tested integrated oscillator identity and is **not** a check of the smooth-cutoff PDE estimates.

An initial saved-driver load stopped with a Wolfram syntax error caused by a continued expression beginning on a new line. Parentheses repaired the driver. Successful intermediate versions had 21, 27 and 29 groups; the current version replaces two tautological probes with actual CPS/Feynman computations and adds the transport/full-graph/adjoint/response checks. Only successful complete runs count here. An exploratory FullSimplify applied to an Association did not simplify its values; the residuals were subsequently evaluated individually and returned zero.

The existing closure driver was also rerun in full: **25/25 groups passed**. This rechecks the actual finite-dimensional transpose/section, full DP-gradient, Jacobi, energy and mixed-slot diagnostics imported by phase A and D1. Their infinite-dimensional estimates still depend on the proof text, not the finite test count.

A separate exact geometry check found four initial points at pairwise squared distances $2T^2$ or $4T^2$, a rank-three light-cone normal matrix, conservation vector $(1,1,-1,-1)$, and a nonzero cocircularity gradient for $T>0$. These support the chosen geometry; the no-go proof uses exact support separation and a wave-equation energy remainder, not this finite matrix as a PDE proof.

## 2. Executed covariant checks

Both dedicated xAct calls used profile core, loaded xTensor/xPert/xTras, and used the full pipeline: ToCanonical, ContractMetric, ToCanonical, FullSimplification. Each returned allZero true, final residual 0, no setup/package/normalization messages, and no truncation.

1. On a three-dimensional Lorentzian manifold, the divergence of $u\nabla^av-v\nabla^au$ equals $u(\Box v+Pv)-v(\Box u+Pu)$ for a scalar multiplication potential $P$. This checks the local cancellation underlying the background-dependent CPS identity.
2. For the scalar stress tensor with potential $m^2\phi^2/2+\lambda g\phi^4/24$, its off-shell divergence is $(\Box\phi-m^2\phi-\lambda g\phi^3/6)\nabla_b\phi-\lambda\phi^4\nabla_bg/24$. The external-switching term remains.

These computations do not remove divergences, enforce interface matching, establish a quantum stress Ward identity, or prove nonlinear existence.

## 3. Analytic claims and decisive evidence

| Claim | Evidence and boundary |
|---|---|
| Free regional causal Green maps | Closed matching form, moving-cone energy inequality, complete response cancellation and energy uniqueness in implementation §2 |
| CCR local kernel and independent local comparison | Actual $G_O^Rf=G_O^Af$ compact primitive when $E_Of=0$; causal-convex GH comparison in §3 |
| CCR time-slice | $h_\chi=(1-\chi)G^R+\chi G^A$, $\tau=-[L,\chi]E$ and the exact compact-source identity in §4 |
| Complete Wick-kernel time-slice | Proper causal truncation, single-slot wavefront transport, all-slot telescope and the complete Cauchy-coefficient kernel in §5 |
| Finite decomposition diagrams | Actual collar refinement, remaining cluster response, and uniqueness before uncut comparison in §6 |
| Original finite-insertion time-slice | **False**, with four exact smooth KG solutions: early disjoint supports, late nonzero quartic polarization, and a rapidly decreasing bound for every fixed finite early expression |
| Weakly interacting classical evolution | Corresponding local solution domains and background-dependent Green tensor; time-smooth response reconstruction for full regular observables is distinguished from finite insertion expressions |
| Formal interacting locality/refinement | Off-shell causal factorization and a common graph/contact prescription before on-shell restriction |
| Higher completed relative-S target | Separate [completed construction](<../scalar completed relative-S local structure.md>): multi-insertion coefficients, explicit Laurent/nonnegative saturation and controlled representative limits; compact Cauchy compensation, compatible local cutoffs, and an actual coefficient-recursive formal inverse |

The no-go is an infinite-dimensional proof. The approximate geometric-optics fields are replaced by exact KG solutions with identical compact initial data; the H3/H2 energy bound makes the late-time error O(1/frequency). Early support separation is exact. Thus the nonzero limit is not a finite-regulator observation and does not assert that every alternative completion fails.

Primary sources inspected as HTML/abstract pages in this run: [Hawkins–Rejzner–Visser](https://arxiv.org/html/2312.15203v3), [Chilian–Fredenhagen](https://arxiv.org/html/0802.1642), [Brunetti–Dütsch–Fredenhagen](https://arxiv.org/html/0901.2038), [Bär–Ginoux–Pfäffle](https://arxiv.org/abs/0806.1036), and [Bernal–Sánchez](https://arxiv.org/abs/gr-qc/0512095). The first three were checked for their actual function classes and structural hypotheses. The completion audit additionally inspected the normal-topology operations in [Brouder–Dang–Hélein](https://arxiv.org/html/1409.7662) and the convergence/density results in [Dąbrowski–Brouder](https://arxiv.org/html/1308.1061). No PDF formula/layout or new representation-theory claim is based on these reads.

## 4. Document checks

The initial three proof notes passed the Pandoc Markdown reader (472 math nodes total). MathML conversion identified legacy TeX font commands; these were changed to explicit mathrm commands. The final synchronized pass covered **nine Markdown documents and 996 math nodes**: all readers and MathML conversions returned successfully with no stderr. All local links in the five new notes and the route resolved. The vault-policy audit and tracked diff whitespace passed. A subsequent raw-byte audit found one carriage-return character inside a right-delimiter command, which an earlier text-normalizing scan had missed; it was repaired. The current raw-byte control and trailing-whitespace checks pass. No Obsidian GUI render or article-fragment regeneration was performed.

No commit or push was requested. Other worktree edits are outside this task. The original route/README/TODO/formalism were copied to a temporary baseline before editing; later external commits to existing scalar files were respected by reading current contents before synchronization.

## 5. Original-goal completion audit

| Original requirement | Current evidence | Completion verdict |
|---|---|---|
| Independent regional inputs, actual response, source/target/kernel and no circular global definition | Free implementation §§1–3, 5–6 | Provided on the stated model/domains |
| Local inclusion and independent causal-convex GH comparison | Free implementation §3 and completed construction §§2, 3.1, 5 | Provided for the respective declared classes |
| Causality including genuine cross-seam propagation | Free implementation §2 and interacting calculations §2 | Provided; different cells are not treated as automatically commuting |
| Full coefficient-kernel time-slice, general Cauchy neighbourhoods | Free implementation §§4–5 | Provided for the full polynomial Wick class |
| Finite two/three-cell composition, mixed slots, compatible choices and uncut diagrams | Free §6; interacting §§2, 4; completed §5 | Provided under the original legal-cluster assumptions |
| Actual weak-coupling evolution with full background gradient and correct domains | Interacting §1, explicit smooth-time response gradient, closure diagnostic rerun | Provided at the regular-observable/solution-domain level; not equated to finite insertions |
| D2 time-slice in the original finite-insertion completion | Exact four-packet quartic counterexample, obstruction §§1–5 | Contradicted: the original positive assertion is false |
| A repaired formal interacting endpoint with all local structures | Completed construction §§1–5 | Provided only after the stated class/completion/saturation enlargement |
| Specified low-order diagnostics and all-order structural argument | Interacting §§2–3, completed §3; 31 new + 25 dependency groups, 2 xAct identities | Executed/provided with explicit scope; not a convergence or quantum stress-Ward theorem |

The original goal is therefore **not marked complete**. The remaining decision is the endpoint: retain the finite class and its no-go, or adopt the explicitly enlarged completed relative-S class. Both are now concrete, reviewable mathematical results. An expanded class must not be silently substituted for the original completion.

## 6. Targeted completion audit

- Specified convergent kernel representatives and their common bounds. Abstract convergence in an on-shell quotient is not assumed to lift automatically.
- Checked the topology used for smoothing, Wick contraction and compact transport. Finite tensor approximation uses errors tending to zero in the smooth topology, avoiding an unjustified diagonal argument in a nonmetrizable space.
- Distinguished exact independence under equal causal-past cutoffs from inner equivalence under merely equal local densities.
- Replaced the previous sketch of a locally inner inverse by an explicit formal recursion. Each coefficient uses finitely many continuous operations and compact causal enlargements; positivity in hbar follows from the connected-log and commutator grading argument.
- Proved the passage to the complete algebra by first placing every compact-source generator in the early algebra and then using closure in the same ambient space. No commutation of arbitrary completion with cutoff-family evaluation is presumed.
- Used the full finite-renormalization source identity to identify generated algebras before taking closures. Neither the renormalization map nor time ordering is extended to arbitrary distribution-kernel insertions.

These repairs strengthen the separate completed endpoint. They do not alter the zero-order counterexample or authorize replacing the original class.
