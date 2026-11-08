# Drafts

## Current writing decision

**Internal working decision，frozen on 2026-07-25：Maxwell first。** Advisor confirmation may change the publication order，but the proof package below is now the default branch and no longer waits on that external response。

1. write the action-first formalism together with the complete 3D Maxwell pilot first；
2. use that manuscript to stabilize the definitions、proof style and reproducible checks；
3. extract the 4D fixed-frame gravity theorem as the second manuscript；
4. postpone the corners/generalized-BMS/quantum synthesis until the first two proof packages are stable。

This is a packaging decision，not a claim that 3D Maxwell is physically more important than the 4D gravity result。Its reason is evidentiary：the Maxwell off-shell action theorem has a closed no-EOM dependency chain and a reproducible finite check package，whereas the nonlinear 4D counterterm-completeness audit is substantially larger。

## Paper I：formalism plus 3D Maxwell

### Working title

> Off-shell action renormalization for polyhomogeneous Maxwell fields at null infinity

### Frozen central theorem

For pure Maxwell theory on a fixed three-dimensional Minkowski exterior null collar、a finite $u$-slab and any fixed finite log-cap sequence：

1. strict intrinsic local gauge-invariant counterterms cannot cancel the constant-Coulomb $E^2\log R$ divergence；
2. admitting the two declared normal-field-strength cutoff observables gives explicit gauge-invariant counterterms for which the relative action、its first variation and its second variation have a local cutoff limit；
3. the same relative action has finite null-lid potentials and corner terms under arbitrary endpoint variations；
4. none of these statements uses Maxwell EOM，so action finiteness does not select the on-shell cap $n\leq\lceil m\rceil$。

This is the single central theorem。The compact positive-frequency actual-solution class is a separate nonemptiness proposition；the fixed-charge-leaf reduction is a corollary with a declared boundary polarization。

### Proposed section order

1. Why off-shell histories must be separated from the Bondi solution expansion。
2. Relative boundary/corner variational problem and $C^2$ criterion。
3. Maxwell index family and radial-gauge accessibility。
4. Divergence ledger and strict intrinsic no-go。
5. Extended counterterms and arbitrary endpoint variations。
6. Maxwell EOM、formal recursion and flux balance。
7. Compact positive-frequency Fourier--Bessel actual solutions as the nonemptiness gate。
8. Large $U(1)$、zero modes and reduced phase space。
9. Discussion：what action finiteness can and cannot select。

### Exclude from Paper I

- 4D gravity formulas；
- generalized/extended BMS；
- massive $i^\pm$ data；
- BV--BFV and dressed Ward identities；
- a broad soft-theorem literature review。
- the full zero-frequency conormal Hankel--Mellin image/kernel/cokernel theorem，until the analytic obligations in `Paper I proof audit.md` A5 are proved。

### Frozen dependency and audit package

- `definitions.md` supplies the off-shell、relative-action and $C^2$ definitions；
- `3d Maxwell.md` sections 2、4--10 supply the no-EOM action branch；
- `3d Maxwell.md` Proposition 11.1 supplies only the band-limited nonempty actual class；
- `3d Maxwell.md` sections 12--14 supply the on-shell flux、charges and polarization-dependent reduction after the action theorem；
- `Paper I proof ledger.md` is the authoritative acyclic dependency graph；
- `Paper I proof audit.md` is the authoritative `Verified / Assumptions / Not verified` boundary；
- `checks/maxwell/run_all.wls` is the reproducible finite symbolic/special-function check。

The main theorem imports no 4D、endpoint-matching、generalized-BMS or global-scattering assumption。

## Paper II：4D fixed-frame gravity

### Working title

> Finite-order action renormalization for polyhomogeneous gravity at null infinity

### Candidate central claim

For fixed round $q_{AB}$、fixed $\Omega$、a finite retarded-time slab and any fixed radial order $N$，the standard no-leading-log Bondi history space admits a fixed-frame finite-normal-jet relative action with locally $C^2$ cutoff limit。No deeper radial coefficient introduces a new divergent support。A logarithm in a leading gravitational、scalar or Maxwell radiative coefficient gives the sharp no-edge symplectic obstruction。

### Proposed section order

1. Precise off-shell category and main theorem。
2. Linear EH + GHY bridge and boundary orientations。
3. Nonlinear Bondi closure and first-log divergence support。
4. Null lids、joints and reparametrization completion。
5. Fixed-$N$ induction and remainder estimate。
6. Massless matter extension。
7. EOM-last reduction and FR/GLZ/Ashtekar--Streubel dictionary。
8. Leading-log obstruction and analytic-status boundary。

### Keep outside the main theorem

- independent variation of the celestial metric；
- generic $u\to\pm\infty$ tails；
- massive timelike data；
- meromorphic punctures；
- quantum Ward identities。

### Main risk

The present notes contain the full ledger，but publication readiness requires a compact reproducible derivation of the nonlinear EH + GHY support theorem and an independent audit that the finite-normal-jet counterterm category is neither silently enlarged nor narrowed between sections。

## Paper III：corners、tails and enlarged symmetries

### Candidate components

- real blow-up and the three-face polyhomogeneous index family；
- incidence-relative face--corner counterterm complex；
- absence of a category-independent maximal falloff family；
- antipodal matching no-go for independent traces；
- superrotation anomaly torsor；
- massive drag counterterm no-go and conditional Dollard edge sector；
- varying-$q$ local-covariant obstruction；
- comparison of nonlocal、edge and puncture completions。

### Packaging warning

This is presently too broad for one clean paper。The likely split is：

1. a mathematical corners/matching paper；
2. a generalized-BMS local-covariance and edge-completion paper。

The puncture construction should remain optional until its defect data and novelty relative to existing coadjoint-orbit descriptions have been independently audited。

## Quantum material

The BV--BFV and Faddeev--Kulish sections currently serve as consistency diagnostics。They should not be presented as a nonperturbative quantum-gravity construction。A separate paper would require at least：

- a specified Green-hyperbolic null/punctured gauge；
- a relative-anomaly calculation for fixed matter content；
- an explicit global action/gluing input for the relevant $i^0/i^\pm$ sector；
- a clean distinction between the cloud-stripped dressed amplitude and the resolved soft amplitude。

## Packaging alternatives

### Alternative A：4D gravity first

Advantage：it addresses the motivating question directly and has the strongest physical headline。

Cost：the proof audit is substantially larger，and an unstable nonlinear ledger could obscure the more basic action-first logic。

### Alternative B：one long monograph-style paper

Not recommended。It would mix positive theorems、category-relative no-go results、conditional edge completions and quantum diagnostics，making the main claim difficult to identify and referee。

## Advisor scope decision packet

### Recorded internal decision

Proceed with Paper I as a standalone action-first formalism plus 3D Maxwell paper。Treat this as the working decision unless the advisor explicitly prefers a 4D-first submission。The technical notes are not rewritten if the publication order changes。

### Four decisions to confirm

| Question | Recommended answer | Consequence if accepted | Consequence if rejected |
|---|---|---|---|
| Is Maxwell substantial enough for Paper I？ | Yes：the paper has one category-relative no-go、one explicit $C^2$ construction、arbitrary-endpoint completion and an EOM-last comparison。 | Keep the frozen outline above。 | Merge sections 2--6 into the foundations of Paper II；retain the proof package as an appendix/preprint module。 |
| Where should the leading-log obstruction appear？ | As the sharp boundary theorem of Paper II，not Paper I。 | Paper II has a positive fixed-frame theorem plus one category boundary。 | Move it to discussion and weaken the Paper-II headline。 |
| How should the varying-$q$ obstruction be packaged？ | As an independent later result paired with nonlocal/edge completions。 | Split the current Paper III into a corners paper and a generalized-BMS category paper。 | Use it only as motivation for fixing $q_{AB}$ in Paper II。 |
| Which theorem receives the next line-by-line audit？ | The nonlinear 4D EH + GHY support theorem，because the Maxwell audit is now complete at manuscript-scope level。 | Begin Paper-II extraction after Paper-I prose drafting。 | Re-audit Maxwell only if a specific objection to A1--A6 is identified。 |

### Evidence supplied with the packet

- the frozen theorem and no-cycle graph in `Paper I proof ledger.md`；
- the claim-by-claim verdict in `Paper I proof audit.md`；
- the 25-test reproducible package in `checks/maxwell/`；
- the row-level novelty/prior-art screen in `results index.md`；
- the explicit exclusion of the unproved conormal image theorem。

### External-response status

No advisor response is recorded in this vault as of 2026-07-25。This is an external confirmation item，not an unresolved mathematical dependency。If a response arrives，only this section and the manuscript order need updating。
