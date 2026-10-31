# Limited supplied-text audit of Section 9

Date: 2026-10-31 (Asia/Shanghai).

**Classification.** This is a supplied-text audit performed after the independent derivation was completed and archived. It is not part of, and does not change the independence status of, the [fresh derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/fresh-prequantum-transport-review.md>). That report was not altered. No new CAS calculation was run for this audit.

**Scope.** The assessed text is [Section 9 of the quantum benchmark:529–565](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L529-L565>), as returned during this audit turn, before any later parent edits. The read tool also returned the adjoining Verification boundary block; that block was excluded from this assessment. No earlier sections were inspected, and no claim cited only by an earlier equation number was independently validated. Minor inline-TeX formatting and the announced future addition of the cylinder obstruction were deliberately excluded.

## Verdict

**The transport statement is correct under the supplied convention \(\{f,g\}=X_gf\), a compatible trivialization interpretation, and the stated geometric and analytic transport assumptions. No operator or lift sign correction is needed.** One analytic qualification should be explicit if real quantum observables are intended to be self-adjoint; two additional wording clarifications prevent convention or bundle-type ambiguity.

## Precise clarifications

### 1. State the bracket convention explicitly

The [opening sentence:531](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L531>) says “For i_XfΩ=−df the operator is,” but does not itself state the Poisson-bracket convention.

Add \(\{f,g\}=X_gf\) there. The Hamiltonian-vector-field convention alone does not fix which sign the author assigns to the Poisson bracket. With the supplied convention, the subsequent identities
\[
[X_f,X_g]=-X_{\{f,g\}},\qquad
\Omega(X_f,X_g)=-\{f,g\}
\]
and \(\widehat f_{\rm pre}=-i\hbar\nabla_{X_f}+f\) are correct. This is a standalone-clarity issue, not evidence of an inconsistent convention elsewhere; earlier sections were not read.

### 2. Distinguish bare coefficient pullback from the lifted map

The [phase formula:538–542](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L538-L542>) uses
\[
Us_2=e^{-iF/\hbar}\Phi^*s_2.
\]
Specify “in chosen unitary trivializations,” with \(\Phi^*s_2\) on the right denoting bare coefficient/base pullback. It must not already mean the connection-preserving lifted pullback, or the phase would be counted twice. The intrinsic formula is
\[
(Us_2)(x)=\widetilde\Phi_x^{-1}s_2(\Phi x).
\]
The displayed negative phase is precisely the trivialized form of that inverse-fiber operation. The forward fiber lift has the positive phase as written. The later discussion of flat holonomy correctly covers bundles for which no global scalar formula is available.

### 3. State self-adjointness when using “observable” in that sense

The [domain sentence:548](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L548>) currently reads:

> Specified unbounded operators must have transported common cores and closures, or explicitly transported extensions/boundary conditions.

This suffices for intertwining appropriately specified closed operators; it does not by itself guarantee that those operators are self-adjoint. If real observables are intended in the spectral-theorem sense, a precise sufficient replacement is:

> For real observables, assume essential self-adjointness on transported invariant cores, or choose self-adjoint extensions with explicitly transported domains and boundary conditions. The corresponding closures or extensions then intertwine.

The invariant common domain also needs to support operator products whenever a commutator is asserted. The algebraic prequantum calculation and unitary extension of the state-space map do not themselves prove these operator-domain properties.

## Checks with no correction required

- **Prequantum sign and commutator:** the signs of the curvature term, \(-i\hbar\nabla_{X_f}\), and multiplication by \(+f\) agree with the stated target commutator.
- **Lift direction and global obstruction:** the forward \(+F\) phase, inverse section \(-F\) phase, flat-difference holonomy condition, and integral-period alternative to a real global \(F\) are correct.
- **Half-forms:** the \(-i\hbar\mathcal L^{\rm half}_{X_f}\) correction has the correct sign. The asserted naturality requires the selected compatible square-root lift already included among the hypotheses. A coefficient-level Jacobian can accompany the prequantum phase.
- **Pairing and completion:** a pairing-preserving bijection between dense polarized test spaces extends to a surjective unitary. The caution about real-polarized versus full-phase-space pairings is appropriate.
- **Canonical and shear tests:** the displayed \(\Theta=p\,dq\), \(\Omega=dp\wedge dq\), prequantum operators, vertical-polarization reduction, and shear intertwiner all have the correct signs.
- **Scope:** classical symplectic/connection transport is correctly separated from infinite-dimensional measure existence, fixed-polarization implementability, and a globally realized half-form/determinant lift. These are assumptions or separate problems, not consequences of the phase calculation.

## Verification boundary

**Verified analytically in this limited audit:** consistency of the Section 9 signs, lift direction, conditional half-form naturality, dense-space unitarity argument, and the qualifications above, against the conventions supplied for the completed fresh derivation.

**Not checked:** the claims attributed to equations (7.2), (8.2), (5.5), (2.8), (7.5), or (4.4); project-specific representations, Gaussian/determinant calculations, self-adjointness, measure existence, or bulk/gravity equivalence. The final paragraphs' separation of these questions is logically appropriate, but this audit is not evidence for the earlier calculations themselves.

**Files changed:** only this new audit note was created. Neither the benchmark nor the independent review was edited.
