# YM circle and CS corner verification

Date: 2026-09-07. Base revision inspected: 5947eb4b2a7d5c10e5f389bf0c8d887c5dd2911c.

The work extends the two interval YM notes, repairs the gauge template's trace-group domain, and adds the [open-chord CS model](<../models/U(1) Chern-Simons disk and open-chord sewing.md>) and [self-sewing topology note](<../self-sewing topology and orientation.md>). Prior conversation verdicts and old “Verified” labels were treated as claims, not evidence.

## Executed exact checks

| Tool / reproducible input | Executed result | Scope |
|---|---|---|
| Mathematica: [ym_circle_cs_corner_checks.wl](<ym_circle_cs_corner_checks.wl>) | 18/18 groups passed; all residuals zero | Radial commutators and quadratic relation, Haar conjugation, characters of highest weights 0–12, classical invariant brackets, full group second-order moment-Casimir identity, CS action decomposition and endpoint cancellations, doubled level matrix |
| SageMath 10.9: [ym_circle_self_sewing_topology_checks.sage](<ym_circle_self_sewing_topology_checks.sage>) | 16/16 checks passed; no warnings or truncated result | Exact elimination ideal and reduced irreducible relation; orientable genera 1–6 and nonorientable crosscap numbers 1–8, with vertex links, Euler counts and integer cellular Smith data |
| xAct xTensor/xPert/xTras, canonical pipeline | 1/1 residual zero; no load or setup messages | Abelian CS first variation equals its bulk term plus divergence, for a parallel orientation density |

The full-group Mathematica identity compares all coefficients of operators of differential order at most two, using constants, the four matrix-coordinate functions and their ten quadratic monomials, with the determinant-one relation imposed. Those 15 jet probes suffice for that bounded operator identity. This is stronger than testing 15 unrelated wavefunctions, but does not prove the general invariant-symbol theorem or the kernel induction.

The executed xAct setup and residual are:

~~~wl
DefManifold[M3, 3, {a,b,c,d}];
DefTensor[av[-a], M3];
DefTensor[bv[-a], M3];
DefTensor[eps[a,b,c], M3, Antisymmetric[{a,b,c}]];
DefCovD[CD[-a]];
residual =
 eps[a,b,c] (bv[-a] CD[-b][av[-c]] + av[-a] CD[-b][bv[-c]])
 - 2 eps[a,b,c] bv[-a] CD[-b][av[-c]]
 - eps[a,b,c] (CD[-b][av[-a]] bv[-c] + av[-a] CD[-b][bv[-c]]);
ToCanonical[residual]
(* 0 *)
~~~

Here bv is the variation of av. The divergence has been expanded with a parallel orientation density; the check does not silently discard a boundary term. The integrated temporal/face terms, polarization choice and endpoint compatibility are derived in the CS note.

During setup, two Sage API assumptions were corrected: multivariate irreducibility was checked by exact factorization instead of an unavailable is_irreducible method, and the Smith matrix was requested with transformation=False instead of treating the returned transformation tuple as a matrix. Both corrected computations completed successfully; the failed setup calls are not counted as passed checks.

## What is proved separately

- YM classical: continuum periodic reconstruction and the singular quotient; the full smooth extension uses the explicitly stated Schwarz invariant-function theorem and a tubular extension.
- YM quantum: Gram invariant symbols, differential-order induction, the principal moment-Casimir kernel, explicit independent radial generators, and Rees exactness. The complete character basis and graph norm, rather than the finite character check, determine the self-adjoint Hamiltonian domain.
- CS: joint trace extension, the endpoint-zero/zero-winding gauge trace group, compatible history relation, global smooth reconstruction and the exact sequence from matched Cauchy data to the disk boundary. Symmetric-algebra/PBW splitting proves the full declared current kernel and image without a finite mode cutoff.
- Topology: the surface classification is a declared standard theorem input; the note gives constructions, local link criteria and theory-descent conditions. The finite polygon checks only audit the displayed families.

## Limits

These checks do not prove arbitrary-history IBVPs, all-smooth quantum algebras, arbitrary charged multitime invariants, sharp vertex/Wilson renormalization, non-Abelian CS, arbitrary gauge-group circle reduction, nonorientable quantum anomaly cancellation, or general high-dimensional topology classification.

## Document checks

The changed proof notes parse with Pandoc's Markdown/TeX-math reader; all local links introduced by this work resolve, and the scoped whitespace check passes. Pandoc's optional TeX-to-plain conversion falls back to the original TeX for several expressions and the gauge note's existing align convention; this is not a mathematical failure or evidence of an Obsidian rendering check. The pre-existing imported-draft audit link in the gluing README remains unresolved and was not used as proof evidence. No generated article/texfiles fragments were regenerated.
