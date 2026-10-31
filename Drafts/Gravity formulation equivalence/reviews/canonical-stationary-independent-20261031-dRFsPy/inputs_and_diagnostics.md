# Source boundary and verification diagnostics

## Isolation

This directory was created uniquely for the delegated independent task on 2026-10-31 (Asia/Shanghai). No parent notes were edited. Original Articles were not edited or used as a proof source. No current reviewer, candidate note19, or parent candidate proof was read.

The authoritative outcome is [the self-contained proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/proof.md>). The theorem was derived from the CME, the stationary equations, and their regularity. Its crucial step is the `Q`-invariance of the common zero locus `ξ=0, ∂_yS=0`; it was not inferred from an earlier transfer claim.

## Inputs actually consulted

- [Vault rules](</Users/koishi/Documents/Note/AGENTS.md>): read in full; no more local AGENTS applies to the target project.
- [Project maintainer workflow](</Users/koishi/Documents/Note/.codex/skills/research-project-maintainer/SKILL.md>): read in full. The direct task's restriction to this new review directory takes precedence over its usual suggestion to update project-level notes.
- [Project orientation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/README.md>): read for project scope and existing artifact boundaries, not as evidence for the new theorem.
- [Completed contraction/domain input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L183-L253>): the file was read through line 260. Only its contraction, polarization, and domain facts are used. No assertion in its transfer discussion is used to prove the theorem in this review.
- [Sage skill reference](</Users/koishi/.dsh/profiles/desktop/node_modules/@koishi/dsh-research-preset/skills/math-computation/references/sage.md>): read after loading the named math-computation skill.
- The task itself supplied the coefficient-first bracket, superfield signs, totalized product, `D_T`, `h_T`, and fixed-quadratic isotopy conventions.

No external literature claim is needed for this local theorem. All argument steps and conventions are written in the proof.

### Frozen contraction/domain facts used, with source locations

From [note18:195–209](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L195-L209>):

\[
Dh+hD=R,\quad h^2=Ph=hP=0,\quad
\mathcal B(hu,v)=(-1)^p\mathcal B(u,hv),
\]

with the stated operator domains and the estimates `||h u||_s≤Λ⁻¹||u||_s`, `||h u||_{s+1}≤||u||_s`.

From [note18:224–253](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L224-L253>): the Hilbert UV polarization `L_0` is closed, whereas

\[
\operatorname{im}(h:L^2\to L^2)=L_0\cap H^1
\]

is generally proper and dense in `L_0`. A regular stationary domain is `L_s=L_0∩H^s` or the smooth core. These are limitations on an infinite-dimensional application, not a proof of new canonical transport.

## Kernel record

1. A preliminary Sage 10.9 inspection confirmed native exterior-algebra basis representation and multiplication. It completed successfully. It was interface exploration only, not a mathematical test.
2. [Native Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_exterior_check.py>) was run in a fresh Sage kernel. All **217/217** exact residual checks passed. The raw tool record reported `ok=true`, no error, no warnings, no truncation, 6889 ms elapsed. See [actual checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_actual_output.txt>) and [unabridged transport evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_kernel_transport.json>).
3. [Independent bitmask/SymPy source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_sympy_check.py>) was run in another fresh Sage kernel using SymPy 1.14.0 and no Sage exterior operations. All **212/212** exact residual checks passed. The raw tool record reported `ok=true`, no error, no truncation, 8062 ms elapsed. It emitted six identical `DeprecationWarning: bitcount function is deprecated` warnings. These nonfatal implementation-API warnings are retained in [the unabridged transport evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_kernel_transport.json>); they were not suppressed or misreported as clean diagnostics. See [actual checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_actual_output.txt>).
4. After the parent independently confirmed the mechanism and requested an explicit orientation comparison, a [supplementary inverse-orientation source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_orientation_check.py>) reused only the native algebra definitions, not its executed tests. It checked the opposite/right-action maps and passed **185/185** exact residuals. The [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_actual_output.txt>) and [complete raw envelope](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_kernel_transport.json>) record `ok=true`, no error/warning/truncation, 6855 ms elapsed. This does not count as a third independent implementation. The parent supplied only orientation feedback after the independent decisive result, not a candidate proof used as input.
5. No mathematical check failed. The two original programs were not modified after the successful runs that generated the frozen outputs. Different internal exterior orderings print `−2vrd` as `+2rdv`; this is the same expression because `v,d` are odd.

The only rejected administrative operation was an attempted local goal registration: the runtime permits goals only on direct top-level human turns, not delegated agents. This did not block the research. A fresh further subagent was also unavailable by the explicit depth limit; none was called. The proof reviewer here is independent of the parent candidate, and the second algebra implementation is independent of the native exterior engine, but no additional independent reviewer is claimed.

## What the tests establish

The kernels check signs and exact identities for a finite 10-coordinate graded algebra, including both retained ghosts and their even antifields. There is no numerical approximation, mode cutoff convergence test, or replacement of a formal exponent by a finite Taylor approximation. The proof, not the finite example, establishes the general local/formal theorem.

Both engines retain the nonzero UV bracket `+2bcrd`, and both detect the noncanonical naive projection through the defect `−2tr exp(tr²)c`. Thus the test is sensitive to precisely the disputed simplification and to the false projected-map conclusion.

## Replay and preservation

Run either source in Sage 10.9 with Python-compatible syntax, in a fresh kernel. Both sources contain an absolute `OUT` directory and write their reports there. To preserve this frozen record during replay, copy the source to a new unique review subdirectory and change `OUT` in that copy before running. Do not rerun over the frozen output files.

The manifest records exact hashes of every deliverable and input source. Hashes establish the frozen versions, not mathematical truth.
