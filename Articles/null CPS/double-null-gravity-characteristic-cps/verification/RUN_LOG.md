# Verification Run Log

## 2026-09-01 - Stage 4.5 extended-curvature/Hodge subsidiary audit

Continued the clean `codex/double-null-gravity-cps` worktree at
`c1136f58`.  The main Note checkout and all unrelated notes were left
untouched.  No commit, push, moving-cut reset, nonlinear $C^1$ step,
finite-grid continuation or quantization was performed.

Reopened the arXiv:1406.3009v2 TeX source and Appendix A.13,
A.36--A.39, A.41 and A.43.  Calculation 12 now corrects the Stage-4.4
component count.  The six omitted second-Cartan rows are
$(124;12,13,23)$ and $(123;14,24,34)$.  The calculation distinguishes
$d_{\rm src}$ from $d_{\rm phys}$, gives every nonzero component of the
rank-six injection $J$, constructs the $18+6=24$ extended curvature
residual, fixes the 16-dimensional trace-free Young $(2,1)$ Bianchi bundle,
and builds an exact invertible incidence/Hodge map.

All sixteen conjugated source rows were expanded.  The copy-derivative
placement is hybrid: A.36 and A.38 carry copy derivatives; A.37 and A.39
carry physical derivatives.  The exact $16\times16$ matrix $S$ has
$\det S=-16$.  All four $16\times6$ matrices $A_C^i$ and the lower-order
$M_C$ operator are recorded in calculation 12.5.  No derivative outside
$(\mathcal B,\mathcal C_{\rm copy})$ remains.

The full curvature-only F1 matrices are
$A^i=E^iQ-H_BS^{-1}A_C^iP_C$.  At the Minkowski freeze,
$A_t=A^3+A^4$ has rank 24 and determinant 2.  However the normalized radial
matrix has characteristic polynomial
$(\lambda-1)^{12}(\lambda+1)^{12}$ while the $-1$ eigenspace has dimension
10.  The two generalized eigenvectors rule out a positive first-order
symmetrizer.  The algebraically square F2 system has sixteen identically
zero Bianchi derivative columns and timelike rank 24.  Thus neither F1 nor
F2 has the required positive flux.  This is a negative principal-symbol
result, not an unfinished symmetrizer search.

Executed the saved script with SymPy 1.14.0 through Sage Python:

- `scripts/stage45_extended_curvature_hodge_checks.py`: **37/37 PASS**.
  V80--V91 construct the complete component maps and matrices, the six
  exterior-of-exterior constraint identities, the F1 Jordan obstruction
  and the F2 rank obstruction.  The complete matrices can be emitted with
  `--dump-full`.  Exact output summary:
  `verification/stage45_component_results.md`.

Executed through the dedicated xAct core tools:

- `scripts/stage45_bianchi_bundle_xact.wl`: three zero exploratory
  expressions, no messages;
- fresh `canonical_contract` verification: **3/3 zero**, `allZero=true`,
  no load/setup/check messages, unknown heads or truncation.  Exact result:
  `verification/stage45_xact_results.md`.

**G.4 stop and pivot:** selected a quantitative fixed-reference Cabet
build-up/comparison theorem.  It is not proved in this run.  Consequently
there is no variable-coefficient subsidiary estimate, no
$\ell_{\rm sub}$, no reduced-to-Einstein or tangent-to-linearized-Einstein
identification, and no tangent surjectivity.  $P_{\rm cell}^k$ and
$P_{\rm rect}^{s,r}$ remain conditional.

## 2026-09-01 - Stage 4.4 bulk Einstein subsidiary audit

Continued the clean existing `codex/double-null-gravity-cps` worktree at
`5c71921b`.  All edits in this run are within this project.  No commit,
push, finite-grid continuation or quantization was performed.

Added the exhaustive `SOURCE_ROW_LEDGER`, direct plus-sheet cleanup in
calculation 10, and calculation 11.  The ledger accounts for 7 frame,
18 connection and 16 doubled-Weyl evolved scalar component rows, every
hard gauge/type relation and all six A.35 copy constraints.  The five
plus rows A.36a, A.37a, A.38a--b and A.39a were substituted directly,
without using the mirror, and agree with 10.(3.2) after retaining
$D\log c$, $O_4$, $c$ and raw/covariant derivatives.

Calculation 11 separates algebraic types from propagated residuals and
defines
$\mathcal R_{\rm bulk}=(\mathcal T,\Xi,\mathcal B,
\mathcal C_{\rm copy})$, with the essential correction
$\mathcal K=\Xi-\mathcal T\Gamma$.  In the project torsion convention,
the exact Cartan identities give
$D\mathcal T=-\mathcal K\wedge\theta$ and
$D\mathcal K=-\mathscr H(\mathcal B)+3\mathcal T\mathbin{\lrcorner}d$,
so no residual-independent
lower-order source remains after adjoining the Bianchi block.

**Stop line:** the complete sixteen-row conversion has not been assembled
into a joint characteristic principal system for
$(\mathcal K_{\rm con},\mathcal B,\mathcal C_{\rm copy})$, and no
positive complementary-flux symmetrizer has been proved.  Therefore the
bulk subsidiary system is not declared well posed, no
$\ell_{\rm sub}$ is assigned, and reduced solutions/tangents are not
promoted to (linearized) Einstein fields.  Reset and the evolution
remainder remain gated.  This preserves the precise p.55 source boundary:
Cabet--Chru\'sciel--Tagne Wafo use build-up rather than the direct
propagation theorem attempted here.

Primary-source review:

- downloaded arXiv:1406.3009v2 PDF and TeX source to the task-local
  `work/` directory, outside the Note vault;
- visually checked PDF pages 50--56 and 65--67, including (5.3),
  (5.12)--(5.14), the p.55--56 build-up paragraph and A.34--A.39;
- checked the corresponding TeX source for the exact field allocation,
  gauge and Bianchi rows.

Executed through the Mathematica MCP in a fresh kernel:

- `scripts/stage44_cleanup_subsidiary_checks.wl`: **29/29 PASS**.
  V73 checks every direct plus-row coefficient; V74 checks the lapse and
  raw/covariant rotation conversion; V75 checks the ledger metadata;
  V76 checks $\mathcal K=\Xi-\mathcal T\Gamma$, the project/Cartan
  torsion sign and the $Dd$ torsion insertion; V77--V78 check four
  representative frozen Cartan principal coefficients.  These are not a
  full residual-system regression.

Executed through the dedicated xAct core tools:

- exploratory saved-script run: three zero expressions, no messages;
- fresh `canonical_contract` verification of V79: **3/3 zero**,
  `allZero=true`, no load/setup/check messages, unknown heads or truncation.
  Exact structured result: `verification/stage44_xact_results.md`.
  The checks are the algebraic Riemann Bianchi, a contracted differential
  Bianchi and the contracted Einstein Bianchi identity for a torsion-free
  metric connection.  They do not test the torsionful doubled-copy
  subsidiary system.

The **29 new checks are regressions only**.  The analytic row audit and
Cartan derivation are calculations 10--11.  Not verified: the joint
principal matrix/symmetrizer, finite-regularity uniqueness/loss, bulk or
linearized Einstein identification, tangent surjectivity, reset, one-cell
$C^1$ or any rectangle theorem.

## 2026-08-31 - Stage 4.3 Bianchi completion and reduced restart hierarchy

Continued the clean existing codex/double-null-gravity-cps branch at
d19d2c8d in /Users/koishi/.codex/worktrees/b557/Note. The main Note
checkout was on main with unrelated changes; it was inspected read-only
and was not switched, edited, staged or committed. All repository edits
in this run are within this double-null project. No commit or push.

Added calculation 10, three scoped regression scripts and the final xAct
structured result. Updated calculation 09's current-status notice and
the exact closure of (5.4); calculations 06--08 received status notices
only, preserving their derivations and the exact evolution remainder.
Updated README/TODO and all three requested status ledgers. Earlier run
entries below are preserved.

**Re-derived here:** coordinate and parallel-frame tensor commutators,
including inverse metric, epsilon, dyad rotation and lapse derivatives;
the exact off-Gauss identity E_beta = -2 R_Gauss zeta; the own-vector
Bianchi identity; the weighted mirror and all five plus Bianchi rows;
opposite-extreme ODEs with fixed corner data; explicit frame, rotation,
torsion and nonaffinity completion; an augmented homogeneous initial
subsidiary system. C_init and its differential/completion remainder have
sufficient loss five in the free-slot I^k norm, six in the fully filled
J^k norm. These are not asserted optimal.

The pure-generator exact reduced-solution hierarchy has the derived
recurrence d_r = 2r+1 with the stated background bounds, not a guessed
3r. Hilbert-valued traces supply every outgoing free jet required by
the source class. Combined with the separately cited reduced Theorem 3.9,
the local regular-neighborhood restart has sufficient input index 2k+8
for output I^k. This is not a global regularity threshold or an Einstein
range theorem.

**Reset stop line:** the flow/inverse Jacobian and scalar affine-factor/
length estimates are derived, together with the necessary refoliated
normal and normal-connection formulas. The full moving-cut, inverse-graph,
tensor-composition and all-generator-jet estimate 10.(7.6) is not proved.
No full reset loss is assigned. Bulk Einstein/copy/metricity propagation
is a separate unproved prerequisite for interpreting reduced output as
geometric vacuum data. The direct finite-regularity subsidiary route is
selected for the next Einstein-identification step; reduced uniqueness
is not substituted for it. The evolution remainder was not reopened.
P_cell and P_rect remain conditional. No finite grid, quantization,
novelty claim or intrinsic/auxiliary-port identification.

Primary source evidence:

- Downloaded arXiv:1406.3009v2 PDF and TeX archive in the current task's
  work/ directory, not in the Note vault.
- Visually checked PDF pages 60, 61 and 67; checked the TeX for the
  normal/coefficient conventions, the e3/e4 transformation law, A.36--A.39,
  and (3.34), (3.66)--(3.74), (3.88)--(3.102).
- PDF SHA-256:
  04616cd19e4878bb3801bdaf40907a3a7bd879306a49e0272b8ad84c4ff41a13.
- TeX archive SHA-256:
  f876d4a4b2f782148f0a5116294ba4b439b77492f6428d33cb50f2a8ee6c52a4.

Executed through the Mathematica MCP in fresh kernels:

1. scripts/stage43_bianchi_jets.wl: **14/14 PASS**. Independent symmetric
   X,H; arbitrary first DX,DH,Dz and tracefree A,DA; second Dz has only
   the explicitly imposed cut-curvature commutator. No Bianchi equation
   is a substitution rule. V66 retains rho independent first and gives
   the stated off-Gauss residual before setting Gauss to zero. V68
   checks the weighted mirror; V69 substitutes explicit 4x4 connection
   matrices into source (5.3b), including the two zeta rows and nu/rotation.
2. scripts/stage43_hierarchy_reset_checks.wl: **17/17 PASS**. Ten
   principal checks at generator orders 1--3 in a nonlinear scalar
   prototype, one triangular residual product rule, and six affine/
   null-rotation identities. V71 is not a full tensor or PDE regression;
   V72 is not a Sobolev reset proof.
3. Existing scripts/stage42_initial_transverse_checks.wl: all 12 V54--V59
   checks passed and both V64 scalar residuals were zero (14 checks).

Executed through the dedicated xAct core tools:

- scripts/stage43_commutators_xact.wl, then a fresh labelled
  canonical_contract verification: **6/6 zero**, allZero=true, no load,
  setup or check messages, no unknown heads or truncation. Exact
  structured result: verification/stage43_xact_results.md.
- Existing stage42_curvature_variation_xact.wl: result 0, no messages.

Exploratory failures were not counted as evidence: one xAct call ended
without a structured payload; the first vector test used the output
connection slot in the wrong argument position and was corrected from
the coordinate formula; the first Bianchi-script run had an extra
parenthesis. The saved scripts were rerun after those repairs.

The **37 new labelled checks are regressions only**. The analytic proofs
and their hypotheses are calculation 10, not inferred from a pass count.
Not verified by this run: full reset, bulk Einstein identification,
Einstein tangent surjectivity, one-cell C1 or prescribed-rectangle existence.

Pre-edit RUN_LOG SHA-256:
246b1e2f105f84309b1b38b04fdbaf7c2f6391f855d90098b1fdc69137aaee7b.
The pre-existing body is retained after this inserted entry.

Final artifact audit: branch unchanged; all 16 changed/untracked repository
paths are inside this project. The old RUN_LOG body and the entire old
calculation 06--08 bodies are byte-preserved after their inserted notices.
git diff --check passed. Pandoc parsed calculation 10 without warnings:
60 display-math blocks, 425 total math nodes and 51 unique equation tags.
The saved xAct JSON parsed with six zero checks and no messages.
No TeX regeneration, commit or push was performed.

## 2026-08-31 - Stage 4.2 initial completion and transverse restart

Continued the existing clean branch codex/double-null-gravity-cps at
1dd68552 in its existing b557 worktree. Only this project's calculations
06--09, README/TODO, requested status ledgers and regression artifacts
were edited. No Stage-0--3 calculation or unrelated note was changed.
No commit/push, finite-grid continuation or quantization was performed.

**Re-derived here:** full-equation printed/Appendix copy conjugation
including the connection-row curvature extractor; source-to-reference
connection/symmetrizer/density identity; both mixed second-form transports
and loss-four differential/remainder bounds; free-slot preparation with
loss five; exact transverse difference equations, projected elimination,
loss-three estimate under 09.7's existing-background hypotheses and the
one-dimensional outgoing trace estimate; explicit affine/gauge reset
formulas with a scalar ODE estimate only.

**Not proved:** the constrained C_init. The first remaining lemma is
C_Bianchi, starting with the vector residual 09.(5.4), followed by its companion Bianchi,
gauge/copy and corner-jet constraints. Loss five is for C_free only.
Full restart/reset, Einstein linearized existence and the quadratic
evolution remainder remain open; P_cell and P_rect remain conditional.

Source evidence: downloaded arXiv:1406.3009v2 PDF and TeX source to the
task's work/sources directory. Visually inspected PDF pages 52, 67 and 68,
and checked the source text for Sec. 2, Sec. 5.1, Appendix A.1--A.4,
(3.34)--(3.42), (3.66)--(3.74), and (3.98)--(3.104).
The printed lists and literal Appendix rows are not mutually consistent
off the copy diagonal. The repaired note uses the printed allocation with
the complete substitution (09.1.4); retaining RHS names unchanged would
give a different system. Copy equality alone has no closed homogeneous
propagation law for arbitrary unconstrained reduced initial fields.
The source p. 55 metric build-up argument remains distinguished from a
direct finite-regularity Einstein subsidiary theorem.

MSP 2205.15267v2 Definition 7.5 / (122)--(124), MSP 2301.02722
Definition 4.6 / (69)--(72), Theorem 4.17 and Remark 5.6, and Luk
1107.0898 Definition 1 / (8)--(11) were checked as comparisons only.
They are not substitutes for the missing C_Bianchi calculation.
No new claims were imported from the optional CTWG/HVKZ sources.

Executed through the Mathematica MCP, reading the saved script:
Get[".../scripts/stage42_initial_transverse_checks.wl"].
Result: all 12 labelled V54--V59 checks passed; the two added V64 scalar residuals were zero (14 checks total). V54--V55 check the mixed
matrix/Gauss/normal-Ricci identities; V56 checks P squared, the null
allocation, copy ideal and all four angular blocks; V57 confirms the
unchanged-RHS counterexample has value -3; V58 checks the variable
density/symmetrizer product rule; V59 checks both differentiated
projected systems in a nonlinear scalar prototype. That prototype
checks algebra, not the full nonlinear Einstein compatibility hierarchy.

Executed through the dedicated xAct core verify-residuals tool:
V60 Gauss contraction, V61 mixed Ricci antisymmetric cancellation,
V62 Codazzi beta contraction, and in a separate fresh kernel V63
Gaussian curvature variation with xPert. Pipeline canonical_contract; all four
final residuals were zero, with no load/setup/check messages or
truncation. The structured result is in stage42_xact_results.md.
This is not a PDE proof and does not verify C_Bianchi.

Late analytic advancement: both minus-sheet scalar Bianchi constraints
A.37b--c are proved in 09.(5.1)--(5.3) by curvature variation, Codazzi and
Cayley--Hamilton cancellation. The actual first remaining identity is
the A.38c vector residual (5.4), including generator variation of the
cut connection and dyad. Opposite-sheet, full gauge/copy and corner-jet
compatibility remain unproved.

The analytic estimates are proved in calculation 09, independently of
the regressions. They retain their actual coefficient, geometric,
regularity and existing-solution assumptions. Historical entries below
are preserved and superseded where Stage 4.2 explicitly changes status.


Final audit: git diff --check passed. All 15 changed/untracked files
are inside this project; the original RUN_LOG body is unchanged.
Display-math delimiters are paired. Branch remains
codex/double-null-gravity-cps; no commit or push was made.
Source PDF SHA-256:
04616cd19e4878bb3801bdaf40907a3a7bd879306a49e0272b8ad84c4ff41a13.
Source TeX archive SHA-256:
f876d4a4b2f782148f0a5116294ba4b439b77492f6428d33cb50f2a8ee6c52a4.

## 2026-08-31 — Stage-4.1 truth-boundary repair and first PDE estimate

This entry supersedes the earlier Stage-4 germ/collar bijection and full
linearized-surjectivity verdicts below; earlier execution records are retained
as history. Work continued in the existing clean `codex/double-null-gravity-cps`
worktree, starting at `074490af`. No unrelated note or Stage-0--3 calculation
was edited. No commit/push or quantization was performed.

Edited: calculations 06--07, new 08, README/TODO, development audit, claim
ledger and final theorem ledger. Added scoped Stage-4.1 Wolfram/xAct scripts
and the structured xAct result.

**Re-derived here:** smooth splitting and original-sheet gauge prescription;
global reference-density and affine endpoint expressions; partial
$C_{\rm pre},DC_{\rm pre}$ Volterra/Moser estimates for $3\le k\le s-3$;
fixed-metric framing uniqueness; exact angular commutators, weighted flux
difference estimate for two existing reduced solutions, linearized equation
and exact quadratic-remainder equation.

**Open:** full $C_{\rm SH}$ begins with the unclosed mixed connection
transport $C_{\rm mix}$, 06.(8.11). The first PDE trace estimate still missing
is $R_\perp^k$, 08.(6.4), with sources (6.3). No finite loss for these full
maps is guessed. $P_{\rm cell}^k$, project-data framed collar bijectivity,
full tangent surjectivity and $P_{\rm rect}^{s,r}$ remain conditional/open
as individually classified in the authoritative ledgers. Stage H not begun.

Primary source checked: arXiv:1406.3009v2, text extraction and rendered PDF
pages 50--53, 67--68. In particular checked (5.3)--(5.14), the duplicated
Weyl fields, Appendix differential-row splitting and principal matrices.
Source Sections 2 and 3 were read for flux norms, coefficient divergence,
angular commutators and the separate transverse derivative estimates. The
printed (5.12)--(5.13) copy allocation is explicitly reconciled with the
Appendix allocation by exchanging the circled/uncircled names; the notes
use the differential rows, not incompatible labels. Page 55's indirect
Einstein build-up proof is not re-described as direct constraint propagation.
MSP source HTML was checked for the completed-data and local-uniqueness
scope. Other existing source-scope entries were retained without deriving
new finite-regularity claims from them.

Executed:

```text
rtk proxy wolframscript -file scripts/development_dictionary_checks.wl
rtk proxy wolframscript -file scripts/stage41_truth_boundary_checks.wl
dedicated xAct core: V51--V52, canonical_contract, explicit SortCovDs
rtk proxy git diff --check
```

Results: V42--V44 rerun passed; 13 labelled Wolfram residual checks covering
V45--V50 and V53 passed, exit code 0. The final fresh xAct run returned
`ok=true`, `allZero=true`, three zero residuals, no load/setup messages,
errors or truncation. An earlier scalar Hessian check without `SortCovDs`
was returned as `nonzero_normal_form`; it was an uncommuted expression,
not evidence against the identity. The final explicit derivative-sorted
check is the authoritative execution retained in the structured result.

**Verified:** displayed algebra and the precise stated tensor residuals.
Final scope/structure check: 9 modified tracked files and 4 new files, all
inside this project; calculations 00--05 are byte-identical to HEAD.
Display fences, equation tags, math braces, output-report file links and
`git diff --check` passed. Branch remains `codex/double-null-gravity-cps`,
HEAD `074490af`. Output affine parameters are now defined by transport;
their generally variable endpoint lengths remain a separate restart/gauge
obligation rather than being replaced by $U-u$ and $V-v$.

**Assumptions:** fixed smooth incoming framing and HF representative,
positive reference density/metric, positive geometric margins; the analytic
flux estimate additionally assumes existing reduced solutions, a high
angular bound and full null $W^{1,\infty}$ control.
**Not verified:** full curvature/copy constraints, Einstein existence from
project data, uniform restart width, finite-Sobolev gauge comparison, a
quadratic remainder norm bound, C1, surjectivity or nondegeneracy.

## 2026-08-31 — Stage-4 framed CIVP and development-map audit

Branch and working directory:

```text
codex/double-null-gravity-cps
Articles/null CPS/double-null-gravity-characteristic-cps
```

Direct theorem verdict:

- the framed data space, framed solution space, and proper bulk quotient are
  defined;
- the project/Luk core dictionary is proved in-project;
- cited theorems give framed development/restriction bijections for
  restricted smooth corner-germ data and for smooth data on the complete
  truncated sheets in a long-by-thin/full-sheet neighborhood;
- the fixed finite-Sobolev rectangle theorem and the forward/inverse Banach
  $C^1$ chart in the independently declared trace-regular solution topology
  are conditional on $\mathbf P_{\rm rect}^{s,r}$;
- the selected EH/characteristic identity is proved on the framed linearized
  local/collar solution spaces; a literal Banach-neighborhood pullback by the
  nonlinear development map, locally or on the full rectangle, requires the
  corresponding $C^1$ proposition;
- the physical nondegenerate boundary reduction remains independently open
  pending $\mathbf P_{\rm red}$.

Primary-source scope checked:

- Rendall 1990: local corner neighborhood;
- Luk arXiv:1107.0898, Theorem 2: smooth regular spherical data give a
  long-by-thin region with width controlled by displayed finite-order initial
  norms; the theorem is not stated for merely $H^s$ data;
- Mars--Sánchez-Pérez arXiv:2205.15267, Theorem 7.15: development of
  completed abstract DND satisfying the abstract constraints, after
  restriction if necessary;
- Mars--Sánchez-Pérez arXiv:2301.02722, Theorems 4.17 and 5.5 and Remark
  5.6: geometric existence/uniqueness near the intersection, with the
  full-sheet translation explicitly not immediate;
- Cabet--Chruściel--Tagne Wafo arXiv:1406.3009, Proposition 3.6 and Theorems
  3.9, 3.13, 3.15, and 5.3: controlled reduced-system local width,
  common-domain continuous dependence, smooth continuation, and smooth
  Einstein full-sheet neighborhood; finite-differentiability continuation
  is explicitly not established;
- Chruściel--Tagne Wafo--Gray arXiv:2305.07306, Theorem 1.1: smooth
  arbitrary-topology neighborhood, with Sobolev losses left to be tracked;
- Hilditch--Valiente Kroon--Zhao arXiv:1911.00047, Theorem 4: another
  long-by-thin null-structure theorem;
- Reisenberger arXiv:1211.3880, Section 2.2: Sachs/area data and symplectic
  variables, with all-sheet development explicitly not proved there.

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
wolframscript -file scripts/stage31_classical_closure_checks.wl
wolframscript -file scripts/development_dictionary_checks.wl
python3 ../../../scripts/validate_vault_policy.py
git diff --check
```

Result: all six Wolfram regression commands exited with code `0`; every
declared check V0--V44 passed.  The dedicated fresh xAct `core` run returned
`ok=true` and the two V33 canonical residuals `{0,0}`, with no package-load
errors or messages.  The vault-policy audit and local referenced-path audit
passed.

A bare local `wolframscript -file scripts/stage31_xact_residuals.wl` run was
also attempted and exited with code `1` because that runner does not preload
the xAct core packages, leaving `ToCanonical` unevaluated.  It is not the
documented execution path and is not used as evidence; the authoritative
fresh xAct-core execution passed.

Stage-4 symbolic additions:

- V42 checks equality of the two branch torsion formulas;
- V43 checks $\zeta=-\widehat\omega$ in the symmetric normalized frame and
  $a_+a_-e^{-m}=2$;
- V44 checks opposite-boost covariance.

Evidence boundary: V42--V44 are sign/normalization regressions only.  No
symbolic check proves a PDE existence, continuation, differentiability,
solution-space surjectivity, current-conservation, functional-kernel, or
nondegeneracy theorem.  The authoritative status split is in
`verification/DEVELOPMENT_MAP_AUDIT.md` and
`verification/FINAL_CLASSICAL_THEOREM_LEDGER.md`.

## 2026-08-31 — Stage-3.1 classical hardening and freeze

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
wolframscript -file scripts/stage31_classical_closure_checks.wl
```

Result: all five commands exited with code `0`.  Every declared finite check
V0--V32 and V34--V41 passed.  The fresh xAct `core` run of
`scripts/stage31_xact_residuals.wl` returned `ok=true`, with no load errors or
messages; the independent `canonical_contract` residual run returned
`allZero=true` for both V33 identities.

Stage-3.1 additions and exact evidence boundaries:

- V34 checks that converting an optional target covector density to the
  canonical source-density/target-covector momentum uses the source Jacobian
  exactly once, and that $p_{sA}=\pi_{s i}\partial_A s_s^i$ adds no second
  determinant.
- V35 uses nontrivial invertible linear $f,g$ and checks the commuting square,
  Liouville cancellation, and two-form cancellation with
  $|\det Dg|(Df)^T$.
- V36 checks functorial composition of the matching law and source-density
  Jacobians.
- V37 checks compensator interpolation independence modulo the Damour
  residual.
- V38 checks that HF's $h\,\delta L^a d_aS/2$ term vanishes for a
  constant-affine-parameter cut and tangential endpoint variation, while a
  normal variation restores it.
- V39 checks the finite bulk-Ward-plus-corner contraction and its reduction to
  $\delta H_\xi$ on the Damour surface.
- V40 checks equivariance of a nonabelian finite cotangent truncation.
- V41 checks affine boost weights, reference-Jacobian and reconstructed-twist
  invariance, and the condition $\ell_\pm[b]=0$.  It is explicitly not a
  closing-wall kernel check.

Analytic results, not inferred from the finite checks:

- $\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$ is the
  sole canonical endpoint type; $\widehat\tau_s$ is reserved for an optional
  target covector density.
- For fixed smooth invertible incidence maps,
  $s_2\circ g=f\circ s_1$ and
  $\pi_1=(Df)^*g^*\pi_2$ cancel the paired endpoint one-forms and two-forms
  and compose functorially.
- The HF cut-term and compensator-independence lemmas close the action-first
  endpoint derivation on the Damour surface.
- On the Raychaudhuri-reconstructed, Damour-restricted characteristic surface
  with the declared boundary/port assumptions,
  $\iota_{X_\xi}\Omega_{\rm total}=\delta H_\xi$ and
  $\{H_\xi,H_\eta\}=H_{[\xi,\eta]}$ for field-independent smearings.
- Opposite boosts are retained as a declared affine normal-frame gauge policy;
  no full closing-wall kernel theorem is claimed.

The focused novelty audit found close antecedents for every major ingredient
but not the entire exact product in one inspected construction.  This is not
evidence of novelty.  The classification is known/re-derived ingredients,
project-specific integration, and at most a potentially new combination.

Not verified: a physical closing-wall action or its port momenta; functional
nondegeneracy/completion; a chart through $\theta_s=0$; an unreduced off-shell
spacetime moment map; a boost kernel including the wall; completeness,
surjectivity, positivity, continuum topology, or any quantum statement.
The classical calculation chain is frozen at this boundary.

## 2026-08-30 — Stage-2.2 cleanup and Stage-3.0 endpoint/twist reduction

Superseded boundary: Stage 3.1 corrects the endpoint density type, upgrades
identity-incidence cancellation to general fixed $f,g$, combines bulk and
corner in the constrained characteristic moment-map theorem, and downgrades
the opposite-boost kernel language to a gauge policy.

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
```

Result: all four commands exited with code `0`; every declared Wolfram check
V0--V32 passed after the final formula, documentation, and notation updates.
The separate xAct `canonical_contract` run returned `allZero=true` for V33,
with no load errors or messages.

Decisive analytic additions:

- all Jacobian and area logarithms use the dimensionless ratios
  $\log|\mathcal B_s/\mathcal B_{*s}|$ and
  $\log(\Omega_0/\Omega_*)$;
- changing the fixed references shifts $Y$ and $\gamma_s$ oppositely, leaving
  $\delta Y+\sum_s\gamma_s\delta(s_s^*\Omega_{sL})$ invariant;
- outer-cut fields integrated on $S_0$ carry explicit endpoint-map pullbacks;
- the HF term $-\Omega\bar\eta_A\delta L^A$ is integrated by parts under the
  endpoint compensator; the bulk remainder cancels by the Damour constraint,
  leaving
  $(C_G/2)\sum_s\int\langle\pi_s,\delta s_s\rangle$;
- the Stage-3.0 check established the remaining-corner contraction; the full
  constrained characteristic theorem is the Stage-3.1 result;
- Stage 3.0 declared opposite boosts to be proper normal-frame gauge;
- the reduced local corner block contains two relative
  endpoint-map/embedding/port pairs, and V32 checks only identity-incidence
  endpoint cancellation.

Decisive finite checks:

- V26 checks reference-scale independence;
- V27 checks functorial endpoint pullbacks;
- V28 checks the Damour integrating factor with a nonzero shear source;
- V29 checks twist and both branch initial-value reconstructions;
- V30 checks the endpoint curl and moment-map contraction;
- V31 checks rank/kernel before and after the constraint/quotient and boost
  invisibility in the reconstructed corner block;
- V32 checks identity-incidence two-cell endpoint-potential and two-form
  cancellation.
- V33 checks the tracefree conformal Lie contraction and the tangential
  integration-by-parts identity that produces the Damour coefficient.

Assumptions: four-dimensional vacuum; smooth caustic-free branches; selected
HF representative; fixed outer straightening of the endpoint compensator;
invertible endpoint maps; closed common cut or tangent smearing fields;
affine Damour transport; fixed nonzero reference scales; declared opposite-
boost quotient.

Not verified: a physical closing-wall action or its spin-1 port; the full
functional diffeomorphism quotient; nondegeneracy of the completed
spin-$0+1+2$ characteristic CPS; a chart through $\theta_s=0$; completeness,
surjectivity, positivity, continuum topology, or any quantum statement.

## 2026-08-30 — Stage-2.2 hardening

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
```

Result: all three commands exited with code `0`; every declared check V0--V25
passed after the final documentation update.

Decisive new checks:

- V19 no longer inserts three target antisymmetric matrices.  It checks the
  corner/normal-scale transformation at the one-form level after
  $m=\lambda_R+
  \sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|$;
- V23 starts from the affine reduced one-form and uses
  $\phi_s(v)=\phi_0+a_s\log v$ with nonzero conformal variation, moving
  $V_s$, fixed outer areas, and fixed affine lengths.  It constructs the
  affine and area one-forms, verifies their difference is the displayed
  $\delta Y$, and obtains zero curl residual;
- V24 builds left/right segment two-forms from eight independent parameters,
  constructs the rank-four matching constraint Jacobian, pulls the product
  form back to that locus, and verifies equality with the long form.  A
  generic pre-matching point has nonzero matching residual;
- V25 begins with three independent parameter sets, constructs both
  parenthesized matching reductions, and verifies that both equal each other
  and the long bulk form.

Analytic checks added in calculation 04:

- ordinary and fixed-$v$ variations are related by
  $\delta_\lambda F=\Delta_vF-(\chi/B)\partial_vF$;
- fixed affine length imposes
  $\int_1^{V_s}\Delta\mathcal B_s\,dv
  +\mathcal B_s(V_s)\delta V_s=0$;
- fixed outer-normalized variation obeys
  $C_x=C_v+v\delta\log V_sK$;
- the complete difference is
  $\Theta_X^\lambda-\Theta_X^A
  =C_G\delta Y+C_G\sum_s\gamma_s\delta\Omega_{sL}$, with $Y$ and
  $\gamma_s$ displayed explicitly;
- the outer conformal value is already contained in Reisenberger's bulk
  integral, so no universal traceless shape port is generated;
- the independent-data bulk theorem is
  $\iota^*(\Omega_1^{\rm bulk}+\Omega_2^{\rm bulk})
  =\rho^*\Omega_{12}^{\rm bulk}$.

Primary-source check: Reisenberger arXiv:1211.3880 equations (98)--(117)
distinguish variation at fixed outer-normalized chart from variation in the
$v\theta$ chart and allow the outer conformal profile to vary while fixing
the outer area density.  Ciambelli--Klinger arXiv:2607.07785v1 equations
(6)--(18) define $\pi_A$ through the rigging connection but do not specify a
double-null cross-rigging identification with $\widehat\omega_A$.  Contracting
their definition with the natural cross riggings gives
$\pi_A^{(\pm)}=\omega_A^{(\pm)}$.

Assumptions: four-dimensional vacuum; smooth positive conformal profiles;
finite caustic-free monotonic-area intervals; fixed generator labels,
endpoint maps, and affine endpoints; selected HF representative; fixed outer
areas or the explicit transformed abstract area ports.

Not verified by this run: a chart through $\theta=0$; a closing-wall action
or its port momenta; a complete geometric finite-cell quotient; the varying
endpoint-map spin-1 pullback; full gravitational gauge nondegeneracy;
functional completion, completeness, surjectivity, positivity, or continuum
topology.

## 2026-08-30 — Stage-2.1 corner, area-gauge, and composition closure

Superseded boundary: V15--V22 remain valid as the identities now stated in the
claim ledger.  The former V19 hand-inserted matrix check has been replaced;
V21 is subdivision consistency, not independent-data composition.  The
authoritative area transformation and composition statuses are the Stage-2.2
entry above.

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
```

Result: both commands exited with code `0`; V0--V22 passed.

Decisive new checks:

- V15 verifies $h=-m$ from the exact normal $2\times2$ block, the positive
  unified HF corner curl, and the exact area/boost polarization generator;
- V16 verifies
  $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$,
  the $\widehat\omega_A$ dictionary, and
  $\tau_{\ell A}=2\widehat\omega_A$;
- V17 verifies
  $\partial_v\log|\mathcal B/\mathcal B_*|
  =v\operatorname{tr}(K^2)/8$,
  $B_0=2/\theta_0$, and the controlled field variations in a diagonal finite
  mode;
- V18 reproduces the coefficient of the shared-corner conformal endpoint term
  in that mode;
- V19 verifies the one-form corner/normal-scale transformation after
  $m=\lambda_R+
  \sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|$; the complete scale remainder is derived
  in calculation 04 and exercised by V23;
- V20 verifies the first-jet mismatch norm
  $\mathcal J^2=\Delta\sigma^2+(\Delta\theta)^2/2$ and its generic nonvanishing
  before expansion/shear matching;
- V21 verifies two-segment subdivision additivity and three-segment
  subdivision associativity in a diagonal coupled mode;
- V22 verifies the diagonal focusing equation and the shear-free limit.

Analytic source check: HF arXiv:1611.03096 equations (4.29)--(4.30) define the
single bulk-plus-cut canonical split used for the repaired corner.  Its
$e^h=\sqrt{|H|}$ definition gives $h=-m$ directly.  Reisenberger
arXiv:1211.3880 equations (100), (105)--(118) were then used as regression
targets for the fixed-map area form, including the moving-lower-limit surface
term.  The project derivation is in calculation 03.

Assumptions: four-dimensional vacuum; smooth positive conformal profiles;
finite caustic-free affine intervals; fixed labels and endpoint maps;
monotonic area on the area-chart sector; fixed outer two-metric for the direct
Reisenberger equality; coherent full first-jet matching for composition.

Not verified by this run: an area chart through $\theta=0$; a unique
variable-shape closing-wall momentum; the varying endpoint-map/twist block;
spin-1 reduction; full gravitational gauge nondegeneracy; functional
completion, completeness, surjectivity, positivity, or continuum topology.

## 2026-08-30 — Stage-1.1 repair and coupled Stage-2 pullback

Superseded boundary: the Stage-2.1 entry above resolves the corner sign and
the fixed-map area-gauge comparison.  V8--V14 remain valid within their stated
scope; the historical "unresolved relative sign" wording below records the
earlier gate rather than the current project status.

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`; every declared V0--V14 check passed.

New decisive checks:

- V8 verifies
  $\omega_A=(\omega_{A0}+\lambda D_A\theta_0/2)/F^2$ against
  $(\partial_\lambda+\theta)\omega_A=D_A\theta/2$ and records the
  angular restriction needed for a globally vanishing $\omega_A$;
- V9 verifies the unrestricted composition mismatch
  $2C_G\delta(r_1-r_0)\wedge\delta(r_2-r_1)$, shows that it has rank two
  before dynamical matching, and shows that affine slope matching kills it;
- V10 verifies $\sigma^2=\operatorname{tr}(A^2)/4$ and
  $V=\operatorname{tr}(A^2)/8$ in a non-diagonal two-function unimodular
  chart;
- V11 verifies the linearized focusing residual and the retarded Green formula
  for the finite mode $\phi=a\lambda$, $V=a^2$;
- V12 verifies the field-space curl of the complete one-form
  $2r^2\phi'\delta\phi-2r'\delta r$ for every pair among three independent
  truncation parameters;
- V12b verifies the general matrix curl, including the matrix
  $A\,B\wedge B$ term, in a four-parameter non-diagonal conformal profile,
  and separately verifies that its commutator trace vanishes on the physical
  symmetric-metric variations;
- V13 verifies that the diagonal pullback of two endpoint conformal values has
  one shared corner direction;
- V14 verifies the generic identity $\Omega\theta=(r^2)'$, so the
  $\kappa$ versus $\kappa+\theta$ endpoint shift is not tied to the
  shear-free solution.

Analytic source check: Ciambelli--Klinger arXiv:2607.07785v1 eq. (18) gives
$(\mathcal L_\ell+\theta)\omega_A
=D_A(\kappa+\theta/2)-D_B\sigma^B{}_A$ in two transverse dimensions, fixing
the positive sign and factor used by V8.  Reisenberger arXiv:1211.3880
eqs. (100), (105), and (117)--(118) were used only after the project pullback.
They confirm the conformal coefficient but show that
$n_s=\mathcal B_s\ell_s$ with
$\mathcal B_s=d\lambda_s/dv_s$, that the isolated corner blocks have an
unresolved relative sign, and that the field-dependent transformation also
produces a shared-corner conformal endpoint term.  Full equivalence is
therefore kept open.

Assumptions: four-dimensional vacuum; smooth positive unimodular conformal
profiles; finite caustic-free intervals; affine zero-shift generators; fixed
labels, embeddings, lengths, and normal frame; selected HF/LMPS
representative; Stage-1 abstract area/boost outer ports.

Not verified by this run: functional-analytic continuity on a completed
profile space; a concrete closing wall or traceless wall momentum; full
field-dependent equivalence with Reisenberger's area gauge; the spin-1
embedding pullback; full gravitational gauge nondegeneracy; completeness,
surjectivity, or continuum topology.

## 2026-08-30 — endpoint-complete Stage-1 repair

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`; every declared V0--V7 check passed.

New decisive checks:

- V2 converts the finite sheet form to
  $C_G\delta\Omega_0\wedge\delta\Omega_L/
  (2\sqrt{\Omega_0\Omega_L})$ and to the square-root-area form;
- V3 cancels the two $-C_G\Omega_0\delta a_0/2$ sheet endpoint terms against
  the $C_G\Omega_0\delta a_0$ term in $\delta I_{S_0}$, leaving
  $C_Ga_0\delta\Omega_0$;
- V4 verifies the complete $\kappa$ versus $\kappa+\theta$ endpoint shift;
- V5 gives determinant `1`, rank `6`, and empty kernel for the extended
  area/boost-port matrix; its fixed-area pullback has rank `2` and kernel
  directions $\partial_{b_+},\partial_{b_-}$ before source reduction;
- V6 verifies sheetwise affine composition through a matched middle port;
- V7 distinguishes the pure spin-2 contraction
  $2\dot\phi\delta\phi$ from the full bare-measure density
  $2\Omega\dot\phi\delta\phi$.

Assumptions: four-dimensional vacuum sheet equations; affine fixed generators,
labels, embeddings, and lengths; $\sigma_{AB}^\pm=0=\omega_A$; positive area
and caustic-free $F_\pm>0$; selected HF/LMPS representative; area/boost outer
ports.

Not verified by this run: the geometric input
$\alpha_\pm=-\delta a_0$ beyond the cited analytic joint derivation;
preservation of the shear-free/twist-free truncation under transverse vacuum
evolution; a concrete closing wall; Stage-2 constraint reduction; Damour/
spin-1 reduction; or the full gravitational gauge quotient.

## 2026-08-30 — first Stage-0/1 run

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`.

Passed identities:

- V0: corrected null projector annihilates both null normals and is
  idempotent in an exact block-metric realization;
- V1: nonlinear affine Raychaudhuri solution and area transport;
- V2: exact spin-0 pullback integral, cancellation of nonlinear terms in its
  field-space curl, and outer-area differential;
- V3: $\int\Omega\theta=\Omega_L-\Omega_0$ and cancellation by the signed
  shifts at both endpoints;
- V4: determinant, tracefree conformal velocity, shear decomposition, and
  local diagonal-chart spin-2 contraction.

Assumptions: four-dimensional vacuum sheet equations; affine fixed generators;
fixed affine length in V2; $\sigma_{AB}=0=\omega_A$ in Stage 1; exact symbolic
algebra; no caustic inside the segment.

Not verified by this run: the outer-joint polarization or its cancellation,
cross-focusing and Damour constraints, existence of a vacuum development,
Stage-2 reduction, nondegeneracy, completeness, positivity, surjectivity,
continuum topology, or existence of a reduced action.
