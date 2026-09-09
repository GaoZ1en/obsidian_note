# Classical Phi4 Sewing Verification

Target: [1+1 phi4 classical observable algebra gluing](<../models/spacelike regions/non-gauge/1+1 phi4 classical observable algebra gluing.md>).

The note extracts the constant-coupling classical construction from the scalar programme and gives it directly in regional Poisson variables. It does not use the old switched model's early free window or derive its definitions by setting hbar to zero in a quantum expression. The explicit field, bracket and energy comparison stops at coupling degree two.

## Executed Checks

The dedicated Mathematica tool executed

```wl
Get["/Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/numerics/phi4_classical_sewing_checks.wl"]
```

The final execution returned `allChecksPassed -> True`, `checkCount -> 27`. The script exported [the result](<phi4_classical_sewing_results.json>).

| Check group | Evidence and scope |
| --- | --- |
| Action and force | Exact canonical momentum, negative action boundary coefficient for positive outward derivative Pi, quartic force and linearized potential. These are component scalar calculations. |
| Field recursion | The cubic source coefficients give the first and second corrections, with the second nested-source factor positive one twelfth. The linearized background includes the order-two contribution `h phi0 phi1`. |
| Regional free response | The left, right and crossing hyperbolic kernels equal the independently global expression. The interface inverse and the outward derivative matching agree. |
| Actual mismatch section | Both components of `B R = 1` are checked, including the opposite spatial orientation of the right interval. |
| Noncommuting inverse series | Exact ordered-word multiplication checks the bulk and history response inverse formulas through coupling degree two. Operator factors are not commuted. |
| Interacting field bracket | Direct differentiation using arbitrary antisymmetric free kernel entries reproduces the complete first- and second-order coefficients. The bracket of the two first-order corrections is explicitly nonzero. |
| Finite canonical evolution | A free canonical pair with interaction-picture potential `(q+s p)^4/24` checks Poisson and product preservation, both Hamilton equations and constant-coupling energy through order two. This is a time-ordering diagnostic, not an interval replacement. |
| Local continuum balance | Direct differentiation of the stated field densities gives zero energy divergence and the momentum-work term with the derivative of the spatial coupling. Opposite outward powers cancel after matching. |

All polynomial order comparisons select coefficients of coupling degrees 0, 1 and 2 explicitly. An initial execution retained higher-degree monomials in a series helper; it was replaced by this coefficient projection and the full script rerun. The removed residuals were at degrees three and four, outside the declared check. No degree-zero, one or two coefficient was changed to obtain a pass.

## Arguments in the Note

The regional algebra is defined on compatible initial data with prescribed histories. Its enhanced object includes interacting field and flux responses. Releasing the common history solves the summed flux equation and supplies the nonzero crossing Poisson blocks. Their background dependence is retained.

The pre-matching polynomial presentation uses a matched free field plus an external mismatch supplied by the actual free section. The classical ordered Poisson series generates its interacting recipes. The mismatch slots are central for this released presentation, so their ideal is Poisson. Evaluation at zero mismatch has exactly that ideal as kernel by expansion in external slots. This does not claim an arbitrary nonlinear history-extension theorem or a quotient of the old fixed-history direct-product bracket.

The independent global comparison uses the explicit regional/global free response identity in every vertex and probe slot. The first-order field and bracket have two regional vertex assignments; every second-order expression has four. Their coefficients, kernels and field polynomials agree before integration. Polynomial closure then preserves the comparison. Every global generating recipe has a regional representative, yielding the stated quotient isomorphism at the displayed accuracy.

The direct field bracket and the causal response bracket satisfy the same linearized equation and canonical initial values. Their formal coefficient recursion identifies them. Jacobi follows from the canonical initial-data bracket; the interacting field kernel is not treated as field-independent.

Local energy balance gives the prescribed-history work and opposite matched powers. Ordered-time integration gives `R1 H0 = V(t0)-V(t)` and `R2 H0 = -R1 V(t)`, identifying the sum of the actual regional stress integrals with the constant-coupling Hamiltonian. These are analytic coefficient arguments in the note, not conclusions inferred from the finite canonical diagnostic.

**Assumptions:** two finite intervals, positive mass, physical Dirichlet walls, stationary interaction equal to the specified bulk quartic near the artificial cut and absent near physical walls, compatible formal initial/history data, finite time windows and the declared smeared polynomial coefficient class.

**Not verified:** convergence, an arbitrary-history solution theorem, a larger algebra of all smooth observables, or a separate three-region calculation. Higher formal coefficients have a recursion; the explicit calculation and checks here stop at coupling degree two.

## Document Validation

The note and this record were parsed with Pandoc to a temporary LaTeX fragment. Their local links and whitespace were checked, together with the repository policy audit and `git diff --check`. Generated article fragments were not regenerated.
