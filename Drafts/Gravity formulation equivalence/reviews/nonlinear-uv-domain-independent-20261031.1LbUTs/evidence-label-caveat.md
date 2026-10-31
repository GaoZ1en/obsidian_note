# Post-freeze caveat: what the finite quartic fixture actually detects

The parent's evidence-label observation is correct. This is a separately recorded qualification; the frozen proof, source, output, envelopes, and hashes remain unchanged. No kernel was rerun.

The predicate labeled `ghost_antifield_terms_actually_present_in_quartic` in [the archived source:71](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/finite-graded-check.py#L71>) tests only whether the quartic has a nonempty exterior-algebra monomial. By itself it does **not** test the presence of a ghost, a physical antifield, or an even ghost antifield separately.

The explicit [quartic output:16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-checks.json#L16>) supplies the more precise evidence: it contains terms proportional to `c0*b122` and `c1*b122`, where `b122` is a **physical antifield**. It contains no `r0`, `r1`, or `r2`, the even **ghost-antifield** variables. Those even variables were included among the retained superfield inputs, but this quartic is insensitive to them.

Accordingly, the fixture demonstrates a nonzero naive quartic master defect canceled by the tree term, with actual ghost–physical-antifield terms. It does **not** establish nontrivial quartic sensitivity to an even ghost-antifield endpoint. Any wording “ghost–antifield terms” in the frozen report or its provenance must be read in this precise first sense, not as “ghost-antifield variables occur.”

The analytic full formal-even completion theorem in §§4–6 of [the frozen report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/report.md>) is proved by the physical-body linearization and recursive continuous formal jets. It does not rely on that predicate or on nonzero ghost-antifield terms in this finite fixture. A separate endpoint-sensitive fixture would be separate evidence; no such additional calculation is claimed in this review.
