# Supplied-text audit of main note 21, scoped sections

## Verdict

**The audited mathematical synthesis is correct with one trace-convention clarification: on the global noncompact domain, define the positive-time wheel by the right-weighted product or by the heat sandwich. The written global proof establishes those products; it does not by itself establish the opposite ordering merely by cyclic notation.**

The coexact parity calculation, the corrected cyclic smoothing factorization (16), the quadratic/cubic all-Sobolev extension, the translated-bump and radial-band statements, and the quadratic-starting functional (33) pass the scoped audit. No parent text was edited.

This is a **supplied-synthesis audit**, not a second fresh derivation. It uses the already frozen [independent proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/proof.md>) and [later global-estimate follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-followup-20261031.Re9NnFZn/followup.md>). No other new reviewer's output was read or requested.

## 1. Version and scope

The supplied source was [main note 21](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md>). The preserved [audited snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md>) has SHA-256

`b92baacd5460a7ee151e0964fffebf2748e3b89b0d50350232baf8baa2f1b847`.

The requested scope was §§1–3 and §§5.2–5.3. The entire supplied note was read for context, but the generator calculation and finite Ward fixtures in the other sections were not independently audited here. The explicit positivity argument in §4 is consistent with the normalization used in §5.2; no other reviewer evidence was used to certify it.

## 2. Trace-order clarification at the noncompact extension

The [snapshot:83–89](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L83-L89>) defines `T_n` using `e^{-epsilon Delta} A^n`. The global factorization in [snapshot:193–212](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L193-L212>) proves instead

\[
A^n e^{-\varepsilon\Delta_Q}\in\mathfrak S_1,
\qquad n\ge2,
\]

by its full-complex representative. A trace-class product cannot be rotated to a different ordering before that other ordering is justified; `AB in S1` does not imply `BA in S1` for bounded operators.

The cleanest definition, fully supported by the proof, is either

\[
T_n=\operatorname{STr}_{QE}(A^n e^{-\varepsilon\Delta_Q}),
\]

or

\[
T_n=\operatorname{STr}_{QE}
(e^{-\varepsilon\Delta_Q/2}A^n e^{-\varepsilon\Delta_Q/2}).       \tag{A1}
\]

The second version is trace class and agrees with the first, already for `j in L2 cap Linfinity`, `n>=2`. To see this on the full complex, put

\[
X=(hJ)^{n-2}(hJh)\in\mathfrak S_2,
\qquad B^n=XJ,
\qquad E=e^{-\varepsilon\Delta/2}.
\]

Then `(EX)(JE)` is a product of two Hilbert–Schmidt operators. Its ordinary trace equals that of `(JE)(EX)=JE^2X`. Separately, `X(JE^2)` is trace class and the same Hilbert–Schmidt cyclicity gives exactly the same trace. For the supertrace the odd factors `X` and `J` introduce the same minus sign in both cyclic rotations, so the claimed equality still follows; one must not omit that sign in an isolated rotation. The projection `Q` commutes with `E`, and `QX=X`, so bounded-projection cyclicity removes the two compressions exactly as in (13).

For compact smooth tests all the displayed heat orderings are trace class and equal, so no coefficient or compact-support calculation changes. The issue is proof scope on the global extension. This audit does **not** claim a counterexample for the smoother all-Sobolev subclass; it identifies an avoidable missing implication in the written proof and supplies a definition that needs no such implication.

## 3. The corrected smoothing factorization (16) passes

The [snapshot:225–237](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L225-L237>) uses

\[
\operatorname{Tr}\bigl(SJ(hJ)^{n-1}e^{-\varepsilon\Delta}\bigr)
=\operatorname{Tr}\bigl[(Je^{-\varepsilon\Delta}\Delta^{-N})T_N
(\Delta^{-N}J(hJ)^{n-2}h)\bigr].                       \tag{A2}
\]

The placement is correct. At positive time, `SJ(hJ)^{n-2}h` and `Je^{-epsilon Delta}` are Hilbert–Schmidt, so the first cyclic rotation is legitimate. Splitting `S=Delta^{-N}T_N Delta^{-N}` then yields (A2).

For `N-alpha>3/4`, `0<alpha<=1`,

\[
\|J(e^{-\varepsilon\Delta}-1)\Delta^{-N}\|_2
\le C_N\varepsilon^\alpha\|j\|_2.
\]

Thus the displayed two-Hilbert–Schmidt product converges in trace norm, even though the original unheated ordering need not be asserted trace class. The paragraph following (16) states exactly the correct distinction. Multiple smoothing placements are covered by the telescoping argument in [the global follow-up:131–146](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-followup-20261031.Re9NnFZn/followup.md#L131-L146>).

The sharp spectral correction is included in this global Sobolev-smoothing class. No unjustified rapidly-decaying image sum for the sharp projector, and no false proper-support assumption, is needed.

## 4. Uniform heat subtraction and H-infinity extension pass

The argument in [snapshot:239–258](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L239-L258>) is a correct compressed use of the uniform parametrix calculus, provided its stated uniform heat bounds—not only its integrability of homogeneous coefficients—are retained.

The detailed sufficient estimate is, for some fixed finite Sobolev order `s`,

\[
\sup_{0<\varepsilon\le1}
|W_{n,p}(\varepsilon;j)
-\mathbf1_{n=2}c_{2,p}(j)\varepsilon^{-1/2}|
\le C\|j\|_{H^s}^{n},\qquad n=2,3,                   \tag{A3}
\]

with the polarized versions of the same bound. It is established in [the follow-up:148–243](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-followup-20261031.Re9NnFZn/followup.md#L148-L243>): localize without commuting a cutoff through the heat kernel, retain symbols through degree minus three, use trace-norm convergence for the order-minus-four remainder, evaluate the finite homogeneous-symbol radial integrals, and sum the bounds using the displayed local Sobolev square sum. Global nonproper smoothing terms are handled separately by (A2).

Once (A3) is present, compact-support density proves an actual heat limit, not just the existence of a named finite part. For compact `j_k -> j` in `H^s`, polarization gives

\[
\sup_{0<\varepsilon\le1}|r_{n,\varepsilon}(j)-r_{n,\varepsilon}(j_k)|
\le C\|j-j_k\|_{H^s}(\|j\|_{H^s}+\|j_k\|_{H^s})^{n-1}.
\]

First let `epsilon` tend to zero at fixed `k`, then let `k` tend to infinity. The ordinary quadratic limit requires its power subtraction; the BV coefficient is zero. The cubic has no subtraction. The note correctly avoids asserting trace-classness of the unheated powers or this smooth-symbol theorem for merely measurable coefficients.

For readability and durable evidence, the main paragraph could link the later global-estimate follow-up and display (A3), but this is not a correction of its mathematical statement.

## 5. Domain counterexamples in §5.2 pass

The [translated-bump paragraph](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L447-L457>) has the correct normalization:

\[
\|N^{-3/4}\sum_{i=1}^N\varphi_i e_0\|_{H^m}
=O_m(N^{-1/4}),\qquad
\int\operatorname{tr}F_N=3N^{1/4}\int\varphi.
\]

Disjoint-support orthogonality proves this for all integer geometric Sobolev norms; fixed norm equivalence gives convergence in the all-Sobolev topology. Isometric translates are being used on `H3`, not an arbitrary cyclic quotient. The functional is nonzero, so no continuous extension agreeing with the compact core exists. The text explicitly excludes the mistaken retained-band interpretation.

The [radial-band paragraph](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L459-L459>) is also correct: weighted absolute integrability of `u=sinh(r)phi` makes its Fourier transform holomorphic in a strip, while the bounded spectral support makes it zero on an open real interval. The identity theorem gives `u=0`. The caveat about nonlinear stationary-graph cancellations and lack of `L1` preservation is necessary and is present.

## 6. The quadratic-starting functional (33) passes

The [snapshot:461–473](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md#L461-L473>) defines

\[
\mathcal W^{\ge2}_{1,\Lambda}
=\frac12\left[\operatorname{STr}g_4(A)
-\frac12\mathcal T_2+\frac13\mathcal T_3\right].
\]

Both signs and all three factors are correct. The quadratic and cubic action coefficients are respectively `-1/4` and `+1/6`; the trace-class tail starts at degree four.

Continuity of the tail is not only a formal series assertion. On `||A||<=q<1`,

\[
\|g_4(A)\|_1\le \frac{\|A\|_4^4}{4(1-q)},
\]

and the telescoping expansion of each power gives local continuity from `S4` to `S1`. The multiplier estimate makes `j -> A_j` continuous from the smooth Sobolev domain to `S4`; the small-operator-norm condition is open in a sufficiently high Sobolev norm. Combined with the continuous quadratic and cubic forms, this proves the asserted physical-body continuity.

The normalization comparison is also correct. The independent coefficient for `f=phi e0` is a supertrace coefficient without the action factor. Multiplying by `1/2` and using `tr F=3 phi` divides that coefficient by six, exactly the main note's `C_Lambda`. Thus the omitted term is precisely `C_Lambda integral tr F` on compact H3 tests, not an untracked level or doubling factor.

The text correctly calls (33) additional physical-body normalization data. It is not an extension of the nonzero compact-support linear functional, not the unmodified determinant, and not a full graded BV or Ward theorem.

## 7. Computational and review scope

No new CAS run was needed for this audit: the finite symbol coefficients already have frozen actual evidence, while the new checks concern trace ideals, heat ordering, uniform bounds, density, and domain distinctions. The original 15-label exact Wolfram calculation is evidence only for its stated finite algebra and integrals.

**Required clarification:** choose the globally proved right-weighted or heat-sandwiched definition of the wheel, or separately prove the literal left-weighted product trace-classness before using it globally.

**Otherwise accepted in the requested scope:** symbols/parity, ordinary powers and BV cancellation, corrected (16), the smooth-domain quadratic/cubic limits under the stated uniform calculus, the two domain obstructions, and the normalized functional (33).

**Not audited:** the other new reviewers' work, the full generator insertion computation, the finite graded Ward fixtures, any continuum QME or quantum-transport claim. No parent source was edited.
