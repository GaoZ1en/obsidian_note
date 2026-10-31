# Evidence and freeze record

## Scope and provenance

This is an independent analytic/domain investigation of the supplied exact local BV map and complete-AdS contraction. The requested proof is [the report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/REPORT.md>). All files written in this investigation are inside this new unique review directory. Original Articles and parent notes were read-only.

No candidate note 19 and no current reviewer's content was read. A path-discovery listing returned existing review filenames, but their contents were not inspected. The project orientation and applicable local rules were read. The only mathematical input notes used are the supplied pair and the explicitly cited earlier contorsion boundary example. The author was already a fresh independent delegate and could not start an additional reviewer at the configured delegation-depth limit.

## Frozen source evidence

- [Exact-map input snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/source16.md>) is a byte copy of the complete supplied source. SHA256: `67ba95bec2561a42c51f1c181b406619d557e6bafcf173cf906c920fa3b49ee3`.
- [Complete-AdS input snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/source18.md>) is a byte copy of the complete supplied source. SHA256: `24a6dd696cebc45c896b8fb81493228caf1788079035227c170aac2a820aaa9b`.
- [Earlier boundary-example excerpt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/source14-boundary-excerpt.md>) freezes original lines 124--126. The whole original source hash is recorded even though only that excerpt is copied.
- [CPS convention excerpt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/cps-convention-excerpt.md>) freezes original lines 7--25; these establish the retained-boundary-data discipline, not a change to Euclidean BV conventions.
- [Root rules snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/root-rules.md>) and [Article rules snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/article-rules.md>) record the applicable workspace instructions.

[The source manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/source-manifest.json>) gives original absolute paths, original hashes, snapshot hashes, byte sizes, declared excerpt ranges, and UTC freeze time.

## Actual execution evidence

No Sage, Wolfram, Mathematica, or xAct kernel was invoked. No old kernel suite was rerun. No machine algebra verification is claimed for the new proof; this task concerns domains and estimates, and the supplied exact algebraic identities are explicit premises.

The only executable source-freeze operation was [the snapshot script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/freeze_sources.py>). Its actual [standard output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/freeze.stdout.txt>) ends in `SOURCE_FREEZE_OK`, its actual [diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/freeze.stderr.txt>) are empty, and the shell returned `[exit code: 0]`. It only reads source bytes, creates declared copies/excerpts, and computes SHA256; it is not a mathematical verifier. The single-use script uses exclusive creation and should not be rerun in this frozen directory.

A separate [final hash script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/freeze_final.py>) records the completed proof/evidence hashes in [the final freeze manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/FINAL-FREEZE.json>), with preserved [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/final-freeze.stdout.txt>) and [diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/final-freeze.stderr.txt>). These links refer to the files produced at the final freeze step; no mathematical result is inferred from a successful hash operation.

## Analytic check index

| Claim tested | Decisive evidence | Status |
|---|---|---|
| Coframe inverse remains in the affine all-Sobolev class | Uniform inverse bound, inverse-minus-identity formula, differentiated inverse and Sobolev composition | Proved on the declared nondegenerate patch |
| Background ghost linearization is legitimate | Covariant splitting eta=lambda+i_xi omegabar, zeta=i_xi ebar; matching cotangent formula; cancellation of omegabar in tau* | Proved using the supplied exact component map |
| Integrated type-II generator exists | Subtract the two affine momentum-times-background densities before integration; all retained terms have at least two L2 factors | Proved; the unsubtracted generator is not claimed integrable |
| Odd symplectic identity extends | Pointwise algebraic type-II identity plus continuity of the integrated relative generator | Proved as a weak symplectic identity |
| Actual BV boundary primitive vanishes | Quadratic term ebar I(e*); every monomial has a ghost and antifield; uniform collar trace tails | Proved for every sufficiently large radius, not a subsequence |
| Map-induced physical wall change vanishes | Both corrected physical fields begin at degree two; first derivatives retain two decaying factors | Proved coefficientwise |
| Original physical relative action is the actual wall limit | Same-cutoff linear connection cancellation; residual linear coefficient has boundary L2 norm O(exp(-R)); quadratic trace estimate | Proved from the stated finite-radius wall identity |
| Every linear contorsion flux vanishes in all-Sobolev class | Counterexample U~exp(-3r/2), all derivative L2 norms finite, flux~exp(R/2) | False; explicit asymptotic counterexample |
| Derivative-cotangent adjoint is legal | Its boundary form has antifield times tangent variation, hence two L2 traces | Proved on the smooth patch |
| Arbitrary finite stationary jet is defined | Recursive coefficient formula has no unknown same-degree coefficient on its right | Proved under continuous canonical-Taylor hypotheses |
| Fixed-band continuity survives derivative loss | Every finite tree needs finitely many input Sobolev seminorms; band estimate converts these to L2 bounds | Proved, with order- and cutoff-dependent constants |
| Particular algebraic chart has a small H^s stationary graph | Nonlinear gradient H^s -> H^(s-1), h gains one derivative, explicit Lipschitz contraction | Proved for integer s>=3 in a specified coefficient realization |
| All finite-jet estimates imply convergence | Formal canonical UV translation f(x)=sum n!x^n gives stationary y=-f(x) | False; finite-dimensional counterexample |
| Full transformed graded sum is smooth in all seminorms | Requires additional uniform/high-regularity inverse estimates | Not claimed |
| Induced retained canonical map follows automatically | A canonical map can move UV fibers and polarization | Not proved or assumed |

The algebraic coefficient and sign identities of the original local map, the complete Hodge/operator identities, and the complete-background spectral gap are inherited inputs, not independently recomputed in this review. The new proof verifies their analytic use, boundary decay or non-decay, and the continuity of finite stationary constructions.
