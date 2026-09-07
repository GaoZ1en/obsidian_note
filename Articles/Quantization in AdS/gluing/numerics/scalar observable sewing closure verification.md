# Scalar observable sewing closure: verification

Date: 2026-09-07.

Scope: [scalar closure note](<../scalar observable sewing closure.md>), its exact class distinctions, the scalar portions of README/TODO, and short pointers in the original scalar notes. Existing gauge and other working-tree edits were preserved. No commit or push was requested.

## 1. Executed mathematical diagnostics

The saved [Mathematica driver](<scalar_observable_sewing_closure_checks.wl>) was executed in full through the Mathematica tool. Result: **25/25 groups passed**, all conditions exact True, no final Wolfram messages. These comprise 23 zero-residual groups and two explicitly nonzero counterexamples.

| Groups | Actual bounded content |
|---|---|
| Cutoff and corrected source | One oscillator at frequency 2; sine/cosine cutoff reconstruction and the vanishing causal transform of the corrected source |
| Linear maps and transposes | An explicit 3-by-2 embedding, left inverse, both beta/symplectic transpose identities and the sewn Poisson matrix |
| Nonlinear sewing | The graph $(q,p,q^2)$; coordinate Jacobi, mismatch Casimir, noncentral physical history, and the full gradient including the derivative of the Poisson tensor |
| Wick and labels | Polynomial normal-ordering covariance, Wick associativity, mixed chart slots, common partition refinement and quadratic polarization |
| Dynamics and choices | One-mode energy-weight multiplication, quartic switched energy balance with the $\dot g$ term, outward response sign, and the finite-renormalization chain rule |
| Counterexamples | Omitting the derivative of the Poisson tensor gives a nonzero residual; retaining only diagonal partition slots loses half the quadratic coefficient at equal weights |

The polynomial cutoff is extended constantly outside its test interval and is C1, sufficient for that integrated oscillator identity. It does **not** test the infinitely differentiable cutoff estimates used in the proof.

The first saved-driver execution failed two groups because Wolfram treated leading plus/minus lines as separate expressions: the source correction and interaction energy term were missing from the evaluated expressions. Explicit parentheses corrected the driver, after which the entire saved input passed. No failed run was counted as a successful check. Earlier orchestration quoting errors occurred before writing or executing the driver and are not mathematical evidence.

## 2. Covariant Green identity

The dedicated xAct tool ran with profile core, extra package xAct/xTras, and pipeline full:
ToCanonical, ContractMetric, ToCanonical, FullSimplification[].

Setup: a three-dimensional manifold with Lorentzian metric and scalar fields $h,k,V$. Residual:
$$
\nabla_a(h\nabla^ak-k\nabla^ah)
-\left[h(\nabla_a\nabla^ak+Vk)-k(\nabla_a\nabla^ah+Vh)\right].
$$
Result: **0**, allZero true, with no package/setup/normalization messages or truncation. This checks the covariant local identity, including cancellation of a real multiplication potential; it does not discard a divergence or prove boundary matching.

## 3. Analytic proof inputs and limits

The new rectangle theorem uses a changed, explicit regular-dual class:
$C_K^\infty((H^{1/2}(\partial R))')$, with the complete joint trace topology. It does not certify old claims about ordinary spatially smooth densities on every face.

The infinite-dimensional argument is in the proof note:

- spectral time integration by parts gives arbitrary finite graph regularity from compact-time controls with spatial negative-order regularity;
- harmonic lifting and energy estimates give the normalized regional chart;
- the corrected-source identity makes the advanced and retarded lift transposes agree with compact support;
- actual beta/symplectic transposes give BR=1 and a regular extension for each target observable;
- the finite-dimensional nonlinear check audits the gradient formula only; existence, smooth dependence and regular transposes use the stated Sobolev multiplication and wave energy estimates;
- polynomial quantum normal forms use compact chart partitions, valid distribution transport, actual Wick contractions and full Cauchy-coefficient polarization;
- interacting kernel completeness is a coefficient criterion, not a finite-generation or terminating-decision theorem.

Primary source inputs read in this run:

- [Schöberl §§97–98.2](https://jschoeberl.github.io/iFEM/domaindecomposition/traces.html): joint trace norm, dual response norm and nonadditivity across subdivisions.
- [Hawkins–Rejzner–Visser v3, §§5.1.2 and 7](https://arxiv.org/html/2312.15203v3#S7): polynomial/equicausal contraction input; no inference from arbitrary microcausal pointwise conditions.
- [Brunetti–Dütsch–Fredenhagen, Theorem 4.1](https://arxiv.org/html/0901.2038#S4): local finite-renormalization framework; the derivative identity for insertions is written separately in the proof note.

These sources were read as HTML. No new PDF formula or layout claim was made. The model-specific quantum kernel and extension arguments are imported with their declared scope from the current local Q0/Qn notes. This run is an author review, not a new independent-agent audit.

## 4. Document validation

Nine new/modified Markdown documents passed the Pandoc markdown+tex_math_dollars reader with no stderr; the initial final-content pass contained 1,856 math nodes. The new proof and verification notes additionally passed HTML/MathML conversion with no warnings. The subsequent explicit cutoff-transition paragraph was parsed again.

All local links in the new notes resolve, as do all newly added links in the existing notes. The first link checker needed URL decoding for Pandoc's percent-encoded spaces; after correcting that checker, only 14 already-existing imported-audit links in two old notes remained unresolved. They were not used as proof inputs or modified.

Scoped whitespace checks, control-character/trailing-whitespace inspection and the vault-policy audit passed. No Obsidian GUI rendering or generated article/texfiles conversion was performed. Shared README/TODO received only the scalar additions; concurrent gauge updates were preserved.
