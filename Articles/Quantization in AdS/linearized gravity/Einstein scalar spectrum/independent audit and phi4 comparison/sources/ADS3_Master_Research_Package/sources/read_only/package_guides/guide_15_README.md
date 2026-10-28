# Physical closure, raw Hamiltonian checks, and independent mathematical audits

This directory is a new attachment to the complete scalar-Fock-space study. It does not modify the previous report, package, source notes, or verification programs.

## Results and evidence

| File | Content and status |
|---|---|
| `FULL_FOCK_PHYSICAL_CLOSURE.md` | The arbitrary-finite-N physical closure proof, special-Δ resonance audit, one-body prescription, unique pairwise Fock lift, and a nonchiral arbitrary-N exact primary. |
| `raw_canonical.py` | Byte-identical copy of the previous original-constraint solver `research_audit/verification.py`. It solves the spatial scalar/momentum equations and integrates the original contact plus boundary-density terms. |
| `raw_fock_checks.py` / `raw_fock_results.json` | **New** N=3 and N=4 complete normalized occupation blocks at Δ=2, all `0≤P,Q≤2`: 18 blocks, 24 exact global-ladder Ward identities, and 18 complete primary/descendant characteristic-factor checks. |
| `raw_pair_cache.json` | The 39 independent pair matrix entries **newly integrated during this turn** to construct those manybody blocks. Contact and virtual-boundary terms are stored separately; 21 boundary terms are nonzero. |
| `number_change_checks.py` / `number_change_results.json` | **New original-formula evaluations** of 40 circular `1→3` resonances at Δ=2,3,4,5. Every total is exactly zero although every case contains nonzero individual pairings. |
| `LOGARITHMIC_KERNEL_AUDIT.md` | Independent all-N/all-Q proof review of the complete eigenspace at the Casimir lower bound, including the flag-to-logarithmic-frame step, localization, Gram kernel, Bose invariance, and exact Hilbert series. |
| `logarithmic_kernel_audit.py` / `logarithmic_kernel_audit.json` | Independent physical Bargmann-Gram and differential-Casimir checks of 15 new generators at `(N,Q,Δ)=(3,2,2),(4,2,2),(4,2,3/2)`: 45 zero normal-jet residuals. A tempting incorrect Euclidean kernel fails an explicit negative control. |
| `PAIR_GRAM_AUDIT.md` | Independent mathematical/code audit of the three-double-coset formula, auxiliary-matrix orientation, Gram rank reduction, state reconstruction, and algorithmic scope. |
| `FOCK_SPECTRUM_AUDIT.md` | Independent proof review of exhaustive level/shell coverage, exact gcd aggregation of algebraic multiplicities, spectral projectors, trivial sectors, and state-coordinate conventions. |
| `STABLE_N_AUDIT.md` | Independent proof of the uniform particle-number matrix pencil at fixed excitation degree, including the averaged-orbit normalization and its physical Gram. |
| `final_report_audit.md` | Final reading of main-report §§0–13, confirmed formula/domain corrections, and the exact scope of the remaining compact-Racah interface integration. |
| `provenance.json` | Exact input hashes, comparison with all 13 preserved ZIP source copies, and renewed reading scope. |

The raw manybody matrices are constructed **before** loading a two-body energy formula. The latter enters only as a post-computation comparison. The new logarithmic checks test the physical representation conventions independently of both manybody spectrum engines; they do not replace the raw Hamiltonian checks.

One especially useful negative control is retained in the JSON: removing virtual-boundary exchange causes 20 of the 24 global-ladder identities to fail. At `N=3,(P,Q)=(1,1)`, the contact-only left-lowering defect is `(0,−96/25)`; the complete contact-plus-boundary matrix has zero defect.

## Reproduction commands

The scripts require Python 3, SymPy, and mpmath. The executed environment used SymPy 1.14.0 and mpmath 1.3.0. If they are not already installed in the chosen Python environment, install those two dependencies first:

```bash
python3 -m pip install sympy==1.14.0 mpmath==1.3.0
```

Then, from the research-package root:

```bash
python3 fock_research/physics/raw_fock_checks.py --particles 3,4 --max-p 2 --max-q 2
python3 fock_research/physics/number_change_checks.py
python3 fock_research/physics/logarithmic_kernel_audit.py
```

The first command uses the exact pair-integral cache generated in this turn. It newly regenerates every manybody matrix and repeats the posterior pair comparison, primary restriction, Ward identities, and descendant factorization. The saved final run has `raw_polarized_constraints_this_run=0` for this reason. Its subsecond cached elapsed time is **not** an original radial-integration timing.

To redo the original spatial constraints and all radial integrations as well:

```bash
python3 fock_research/physics/raw_fock_checks.py --particles 3,4 --max-p 2 --max-q 2 --recompute
```

This is substantially slower. The normal default does not assert that reusing an existing exact cache is a new derivation of its entries. The other two listed commands regenerate their calculations directly; they have no disk input cache of expected answers.

The raw angular solver is specialized to Δ=2. The circular number-changing checks have the explicitly listed four Δ values. Arbitrary-Δ physical closure and the arbitrary-N kernel classification are analytic proofs with their hypotheses stated in the Markdown notes; these finite calculations are independent checks of those proofs' conventions and examples.

## Renewed source reading and exact provenance

The source snapshot is repository commit `ff06682448838bcbb02b135bd61bc661b394cbba`. All 13 notes were accessed again. The following 12 shorter notes were reread in full: `Direct K4 two-particle energy shifts.md`, `Einstein response in de Donder gauge.md`, `Einstein response kernel construction.md`, `Einstein scalar response prescription.md`, both vacuum-orbit notes, `README.md`, `TODO.md`, `Untitled.md`, `de Donder gauge accessibility.md`, `perturbation.md`, and `two particle spectrum.md`.

The 10,345-line `Unreduced OFPT calculation.md` was reread along its completed physical dependency chain: §§1–4, 16–18, 37–41, 43–45, and 70–77, with the relevant historical checkpoints cross-checked against the previous report and the current reading guide. Historical portions of §§59–62 were also inspected. This attachment does not claim a new line-by-line reading or rerun of every archived calculation in §§20–36 and 46–69. Their original direct residue route is separated from the later completed proof rather than silently declared complete.

The current logical dependencies used here are:

| Input | Exact current source location |
|---|---|
| Action, boundary data, physical mode content | Mother §§1–4; `perturbation.md`, first sections. |
| Original quartic constraints and boundary cubic | Mother §16, lines 685–938. |
| Gravitational contact/energy-weighted cancellation | Mother §17, lines 940–1165. |
| Joint scalar/boundary regulator limit | Mother §39, lines 3769–3923. |
| Continuous-mass ground exchange, previously conjectural | Mother §45, lines 4877–5158. This completes the identity that was only a conjecture in §43. |
| Complete-block OFPT normal form and tree Ward projection | Mother §§70–71, lines 8799–9188. |
| Action-derived all-angular two-body input and recurrence | Mother §72, lines 9189–9536. |
| All-mode scalar trace and common local subtraction | Mother §§73–75, lines 9537–10149. |
| Measure, ordering, full degenerate-space invariance, physical mass | Mother §§76–77, lines 10150–10345; especially 10216–10247. |

The preserved local source copies contain one extra terminal LF byte relative to their Git blobs, a convention already documented in the previous provenance audit. This turn independently verified that removing **exactly one** terminal LF reproduces each of the 13 recorded Git object hashes. The files were left unchanged. Each local copy also matches the corresponding previous ZIP entry byte for byte. The new solver copy is byte-identical to the prior raw solver. All these distinctions are recorded in `provenance.json`; a reconstructed-file checksum is not mislabeled as a remote original checksum.

### Version and notation cautions retained from the audit

- The older vacuum-orbit notes transport a reference answer and preserve their older high-spin/inversion assumptions. They do not independently establish the final full graviton-mixing closure; mother §§71–76 supply it.
- The original direct residue/source bridge in §§64–69 remains an optional unfinished alternative. The evaluated two-time reconstruction in §§73–75 closes the needed self-energy without assuming that bridge.
- `two particle spectrum.md`, early “Direct Calculation”, intermixes conventions in which `H^(2)` or `γ` already contains κ². This attachment uses `E=E_0+Gg+o(G)` and `W=16π[K_4]_{22,res}` throughout, fixed by the original normalized matrix integrals.
- The auxiliary no-log de Donder issue at `Δ=(1+sqrt(5))/2` does not obstruct the maximal-slice physical operator. The pair formula's `Δ=3/2` singularity is removable. Neither is a surviving number-changing resonance.

## Physical and algorithmic limits

The complete scalar branch is invariant at the **order-G coefficient** in the full free-energy block. The proof uses the complete quartic degree bound and non-global classical boundary charges, then separately treats the quadratic quantum terms. It is not a projection that deletes a nonzero physical matrix element.

For the 31 vertex, simultaneous energy and spin conservation can only produce candidates at integer Δ>1; the global intertwiner proof kills every coefficient, hence every spectator extension. At order G the specified theory has no independent connected three-body term. The one-body loop/ordering subtraction is a prior completed input, fixed once by the physical mass; it is not silently counted as tree level.

The listed eigenvectors are leading eigenvectors of the resonant normal form. Their inverse canonical dressing restores virtual gravitational components in the unreduced variables. This work does not assert complete order-G wavefunctions, higher-order h=0 closure, a strong interacting unitary on the entire free Fock space, or uniform control as N grows with inverse coupling. The remainder `o(G)` states the proven order without adding those higher-order assertions.
