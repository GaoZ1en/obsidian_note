# Audit against the original rr-005 criterion

**The original one-loop criterion is met in the specified Abelian gauge--matter model.** A continuum construction of interacting unbounded charge operators is a stronger question, not a condition stated in this card. The original `problem.json` is unchanged.

| Original requirement | Evidence and precise scope |
|---|---|
| Compute a one-loop boundary anomaly class in Abelian Yang--Mills with matter. | [solution.md](solution.md) computes the massive, non-chiral charged-scalar determinant on a finite Euclidean cylinder, with an explicit gauge-preserved Dirichlet matter domain. The anomaly is exactly zero before removing the ultraviolet or collar regulator. This is a continuum functional statement, independent of the finite matrix check. |
| A well-defined class satisfying consistency. | Covariance of the closed scalar operator and its heat kernel gives the regulated Ward identity. Gauge-covariant local subtraction preserves it; an allowed change of scheme changes its representative by a BRST-exact local functional. [charged-boundary-ward.md](charged-boundary-ward.md) includes the full one-loop current-source hierarchy and contact terms. |
| Controlled collar-removal independence. | The anomalous Ward remainder is the zero distribution at every cutoff, so its collar limit is independent of profile and order of cutoff removal. [source-current.md](source-current.md) separately proves a controlled iterated limit for the normal current itself, using its regulated Dirichlet trace. The two statements are not conflated. |
| An actual boundary calculation. | The normal-current trace, boundary normalization, and contact/bubble cancellation are explicit. The additional finite interacting open chain carries nonzero endpoint charges and realizes an exact charge Ward algebra. Its finite regulator is not used to prove continuum operator convergence. |

The card asks for **one** anomaly class in a stated Abelian model; it does not require that this class be nonzero. The zero answer is a result of the scalar content, boundary domain and regulator covariance. It is not a theorem for chiral matter, arbitrary boundary conditions, or arbitrary current normalizations.

The full continuum charge-operator limit remains unproved. It is recorded as a possible stronger continuation and is not silently relabelled as solved. No such limit is used in the determinant or Ward-class proof above. Seam removal remains outside the user's requested scope.

This audit closes the ambiguity recorded in the root TODO. It does not change the original success criterion, replace the continuum anomaly calculation by the finite chain, or weaken the separate gravitational rr-004 gate.
