# Physics contribution: integration and verification record

The complete narrative is in `physics.md` (Chapters 2–4). Its proofs are in `physics_appendices.md` (Appendices A–D). `claims_physics.json` supplies 14 stable claims, source hashes and sections, dependencies, audit corrections, proof homes, and the exact scope of the current code runs.

The parent master note owns final chapter/appendix renumbering, bibliography, TeX conversion, PDF compilation, and publication. These files contain no final upload or template mutation.

## Logical interfaces

The canonical construction is established on the stated proper-gauge and quantization domain: constraints, boundary momentum, the actual cubic, complete-block OFPT identity, scalar closure, physical one-body subtraction, and the finite direct K4 evaluation are retained as independent results. The compact all-label Einstein coefficient is derived by the source–Einstein–Casimir route on the common renormalized source/Hessian/observable domain. Its equality with a spacetime response requires the explicitly stated lapse/shift reconstruction and averaged endpoint hypotheses. The finite canonical algorithm does not require this optional interface. Neither its independent finite checks nor the abstract tree-transfer theorem is described as a universal continuum endpoint theorem.

The one-body proof is kept in full analytic form: boundary-tower cancellation; fixed-external convergence; two-time Casimir transfer; direct ground-source calculation via a six-variable current; the pole integral; and source-level tadpole plus matched kinetic/mass subtraction. Its old complete Wolfram/xAct verification suite has not been rerun. The present checks do not pretend otherwise.

Appendix A.6 retains the original finite-time de Donder accessibility construction with its exact analytic hypotheses and its off-shell boundary counterexample. It cannot supply the infinite-time bounded endpoint required by the response bridge. Appendix D retains formal tree transfer, Feshbach eigenkernel and residue, leading Weyl-symbol induction, explicit failure examples, and the conditional next-order quantum Ward repair. No such ancillary result is used to upgrade the main remainder beyond `o(G)`.

## Current successful checks

Both wrappers fail closed. They use explicit exceptions, check the expected output schema or task set, and save records only after all acceptance decisions pass.

| Record | Current successful checks | Meaning |
|---|---:|---|
| `physics_run.json` | 111 | Four arbitrary-parameter crossed recurrences; three positivity/removable-limit checks; one oriented baseline identity; 27 exact KG norms; 12 independent 60-digit canonical ground–J quadratures; 64 exact direct K4 pair coefficients |
| `ancillary_run.json` | 10 | Five unchanged inherited polynomial/BCH checks; one symbolic arbitrary hypergeometric coefficient identity; two dynamic-oscillator identities; two exact coordinate/Weyl identities |

The direct canonical grid is `Delta = 1001/1000, 3/2, 2, 7/3`, circular levels `T=0,...,6`, with all 16 distinct physical pair tasks per mass and all stored compression matrices required. It includes `s=0`, `s=2`, and higher even spins. The backend's own exact off-diagonal reconstruction checks remain active because the wrapper rejects optimized Python. The independent ground–J quadratures use `Delta = 5/4, 3/2, 7/3, 3` and `J = 0, 1, 4`, with every absolute error below `1e-40`.

`direct_k4.py` is byte-for-byte copied from the first research package's `research_simplification/direct_k4_benchmark.py`. `inherited_physics_audit.py` is byte-for-byte copied from the first audit package's `physics/independent_checks.py`. Hashes and original paths are in the claims file. The wrappers and their additional checks are new. The first ancillary attempt failed because its acceptance condition compared factored and unfactored SymPy expressions structurally; simplifying their difference corrected that test condition. No underlying formula was altered to make it pass.

Run from this directory with a non-optimized Python that has SymPy and mpmath:

```bash
python check_physics.py
python check_ancillary.py
```

The actual successful environment is recorded in each JSON: Python 3.12.14, SymPy 1.14.0, and mpmath 1.3.0 where used. The inherited audit's opposite-chirality `H3_C_B4 = +16 beta omega` is nonresonant. Only `H3_A_b4 = -16 beta omega` and its conjugate establish the third-order toy obstruction. The full historical third-order OFPT intermediate-state sum was not rerun; the displayed matrix element follows from the newly rerun polynomial coefficient and explicit ladder factors.

## Integration notes

Use `G` only for Newton's constant, `Gamma` for the master note's Gram matrix, `P,Q` for primary degrees, `k,l` for pair labels, and `s=abs(k-l)` for nonnegative even pair spin. The direct circular compression label is `T`; it is not the particle number. Pair coefficients are dimensionless and all final energy expansions multiply them by `G`.

The main TeX layout challenges are the explicit six-by-six current system (B.48), the rational momentum coefficients (B.41)–(B.45), and the two-time heat-trace polynomials. Preserve their full expressions; use a local small font, aligned line breaks, or a landscape page if necessary. They are part of the self-contained proof, not disposable implementation detail. The `\tag` labels currently follow local chapter/appendix numbering and may need remapping during integration.

The only inline external citation marker in the physics prose is `[HW]`, for Harlow and Wu, *Covariant phase space with boundaries*, arXiv:1906.08616, JHEP 10 (2020) 146, DOI 10.1007/JHEP10(2020)146. Its official arXiv metadata was checked. The broader original-source provenance is in the claims file and should be connected to the master bibliography/source map. No claim is made to have searched the entire literature or read every paper in the older report's bibliography.

All required primary materials for this physics contribution were available. Original files and the fixed Git snapshot were not edited. The repository snapshot is `ff06682448838bcbb02b135bd61bc661b394cbba`.
