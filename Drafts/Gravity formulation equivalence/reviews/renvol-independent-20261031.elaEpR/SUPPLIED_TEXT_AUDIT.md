# Supplied-text audit of the source-dependent thermal AdS synthesis

**Verdict:** the reviewed source/Weyl formulas are correct at \(\ell=1\), with consistent signs and factors. The local uniqueness statement is correct under the stated exact-anomaly and marking assumptions. One sentence restoring \(\ell\) is dimensionally ambiguous and should be rewritten; two additional scope/notation clarifications are recommended. No central mathematical error was found in the requested sectors.

This is a **post-derivation audit of supplied text**, not a new independent derivation and not an independent verification of the parent's determinant density or operator-domain arguments. It was requested only after the separate [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/REPORT.md>) had been completed and sent. No parent source file was edited, and no kernels were rerun.

## Audited version and scope

- Current source named by the parent: [source synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md>).
- The retained [supplied-text snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md>) has SHA-256 `db85d9305a31691ced1d4079d9e551667fa8cb368ab6c7430825e059aa17d7fd` and 509 lines. It includes the subsequently inserted intrinsic Polyakov formula and affine-source Hessian. Line references below refer to this immutable snapshot, not an assumed unchanged live parent file.
- Requested scope: §§0/1/4/5 and the local uniqueness paragraph in §7. The displayed spectral identity (3.6) is treated as an input for this audit. I do not certify the analytic heat-kernel/domain proof or the numerical coefficient \(+13\) by merely reading the source/Weyl conclusions.
- The CPS statement in §1 was compared with the relevant conventions in [the authoritative formalism:20–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L20-L25>), [formalism:73–83](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L73-L83>), and [formalism:132–145](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L132-L145>). No other parent reports or reviews were opened for this audit.

## 1. Recommended revisions

### A. Rewrite the radius-restoration sentence

**Location:** [snapshot:302](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L302>).

The sentence says to replace the geometric volume by \(\mathrm{Vol}/\ell^3\) **and** the identity density by \(-13/(6\pi\ell^3)\). Read as instructions for the same product, this divides by \(\ell^3\) twice. The \(\ell=1\) formulas are unaffected; the dimensional restoration should instead display the two equivalent conventions:

\[
F_{G,\mathrm{id}}
=-\frac{13}{6\pi\ell^3}V_{\rm ren}^{\rm phys}
=-\frac{13}{6\pi}V_{\rm ren}^{\rm dimless},
\qquad V_{\rm ren}^{\rm dimless}=\frac{V_{\rm ren}^{\rm phys}}{\ell^3}.
\]

Then \(c_{\rm id}=-6\pi\ell^3\lambda_{\rm phys}=13\), while \(C=3\ell/(2G)\). Use either the physical volume with the dimensionful density or the dimensionless volume with the dimensionless coefficient. This is the only requested-sector sentence I would flag as needing correction rather than merely clarification.

### B. Distinguish the cutoff induced metric from the conformal source

**Location:** [snapshot:292–300](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L292-L300>).

The GHY and area-counterterm integrals currently use the same symbol \(\gamma\) as the conformal boundary representative. They actually use the induced metric \(H_\epsilon\) on the regulating surface. Recommended notation:

\[
I_\epsilon=-\frac1{16\pi G}\int_{M_\epsilon}(R+2)dV
-\frac1{8\pi G}\int_{\partial M_\epsilon}K\,dA_{H_\epsilon}
+\frac1{8\pi G}\int_{\partial M_\epsilon}dA_{H_\epsilon},
\quad n=-\rho\partial_\rho,\quad K\to2.
\]

The finite wall term quoted in the text is correct in this convention. With \(a=\mathrm{tr}_\gamma g_{(2)}=-R_\gamma/2\),

\[
\sqrt{H_\epsilon}=\epsilon^{-2}\sqrt\gamma(1+\epsilon^2a/2+\cdots),
\quad K=2-\epsilon^2a+\cdots,
\quad \sqrt{H_\epsilon}K=2\epsilon^{-2}\sqrt\gamma+O(\epsilon^2).
\]

Thus the finite boundary contribution is \(\int a\,dA/(16\pi G)=-\int R\,dA/(32\pi G)\), which vanishes on the torus. The action completion gives \(F_{\rm tree}=-CV_{\rm ren}/(6\pi)\) with the correct sign. On a surface with nonzero Euler characteristic the log counterterm would also have to be specified; that extension is not asserted in the torus calculation.

### C. Make the vacuum-module comparison qualification visible in the opening summary

**Location:** [snapshot:34](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L34>), with the necessary qualification already present in [snapshot:461–470](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L461-L470>).

The opening says the responses “match the vacuum-module formulas at this value of c.” For the main AC case, \(C>0\) implies \(c=C+13>13\), so the usual vacuum character with no additional nulls is appropriate. The same unqualified wording should not be read as constructing a unitary vacuum module with character \(P\) for every omit value \(c=C>0\): below one there are unitarity/null-quotient restrictions, and at minimal-model values the character is not this \(P\).

Suggested minimal qualification: “They match the vacuum-module formulas **when its actual vacuum quotient has character \(P\), as qualified in §7**.” The existing §7 discussion is mathematically adequate; this is a scope improvement to the opening, not a defect in the derived source formulas.

## 2. Sign and normalization checks that pass

### §§0 and 1

- [Snapshot:9–31](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L9-L31>): if \(F=-(c/6\pi)V_{\rm ren}+f(\tau,\bar\tau)\), the volume cocycle gives \(+c/(24\pi)\) multiplying the Liouville expression. There is no sign reversal from confusing \(F=\log Z\) with \(-\log Z\).
- The coefficient is correctly called either chiral value when \(c_L=c_R=c\); the trace convention is \((c_L+c_R)R/(48\pi)=cR/(24\pi)\), not twice this.
- Thermal substitution gives \(F_{\rm flat}=c\beta/12+\log|P|^2\), consistent with two chiral vacuum shifts \(-c/24\).
- [Snapshot:62–74](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L62-L74>): the flattening equation \(\Delta_\gamma\sigma=-R_\gamma/2\) has the correct sign for \(\gamma=e^{2\sigma}\gamma_0\). Its solvability follows from \(\chi(T^2)=0\). Fixing flat meridian length and fixing a point removes scale/translation redundancies without incorrectly removing constant source rescalings.
- A Weyl representative change leaves the complete filling fixed; a boundary diffeomorphism acts by pullback; a modulus change changes the loxodromic holonomy. The text keeps these distinct and does not replace the problem by a cutoff-wall spectrum.
- [Snapshot:76–84](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L76-L84>): the plus covariant-metric source tensor and its conversion to the minus convention are correct. The CPS signs are compatible with the authoritative oscillator symplectic form and bracket ordering; Euclidean Gaussian normalization is correctly not inferred from CPS alone.

### §4, including the newly inserted intrinsic formula

- [Snapshot:209–250](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L209-L250>): the volume log coefficient is \(+\pi\chi\log\epsilon\), the geodesic defining-function expansion has the negative \(-\rho^2|d\sigma|^2/4\) correction, and the finite volume cocycle is \(-1/4\) times the Liouville expression. The thermal finite part is \(-\pi\beta/2\).
- [Snapshot:263–280](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L263-L280>): on the torus \(R_\gamma=2L_\gamma\sigma\), with constants removed in \(L^{-1}\). Therefore \(\int R L^{-1}R=4\int|d\sigma|^2\). The exact coefficient \(-1/16\) in \(V_{\rm ren}\), the quadratic \(c/(96\pi)\) coefficient in \(F\), and the normalized Hessian \(c k^2PP/(12\pi)\) all pass.
- The displayed central Hessian is explicitly at a flat background, where the omitted \(\sqrt\gamma\) normalization factors are one. Its traces are contact polynomials, while its untraced longitudinal fourth-order numerator divided by \(k^2\) is nonlocal. The warning about modulus derivatives in the full Hessian is essential and correctly included.
- [Snapshot:282–300](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L282-L300>): \(\mathcal S^i{}_i=-\lambda R/4\) and \(c=-6\pi\lambda\) are correct. The source-functional conclusion follows from the stipulated full functional identity, not from a thermal number alone.

### §5

- [Snapshot:308–320](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L308-L320>): the area counterexample is valid for every canonical flat torus and invalidates the inference from flat vacuum energy alone to an anomaly. It is explicitly a finite functional of the **renormalized source**, not permission to change the required divergent cutoff-area subtraction arbitrarily. If desired, add that last distinction in one sentence.
- [Snapshot:322](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L322>): for the chiral source slice, \(R^{(1)}=4\partial^2\mu\), so the \(R^2\) counterterm contributes exactly \(16\alpha\int(\partial^2\mu)^2\) at quadratic order. It changes contacts and a trivial higher-derivative trace anomaly, not the nontrivial \(R\) coefficient.
- [Snapshot:324](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L324>): the boundary-counterterm versus full Einstein-coupling distinction is correct. Keeping the physical measured coefficient fixed permits reassigning a tree/loop split; adding the coupling term while fixing the defining reference \(C\) changes the total theory.
- [Snapshot:326–338](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L326-L338>): the sinusoidal Weyl example gives \(\Delta V=-\pi\beta a^2n^2/4\) and the AC-minus-omit difference \(+13\beta a^2n^2/24\), with no missing factor of \(\pi\) or two. Arbitrary finite real amplitude is allowed at fixed conformal class; this does not imply uniform estimates near a degenerating modulus.

## 3. The §7 local uniqueness assertion

**Location:** [snapshot:495](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/supplied-synthesis-snapshot-20261031.md#L495>).

The assertion is valid for smooth scalar metric functionals on the same connected marked source chart, with no diffeomorphism anomaly, the same additional fixed data, and the same **exact** Weyl variation for every smooth Weyl parameter. It does not require the functionals to be local actions.

A compact proof suitable for that paragraph is: set \(D=F_1-F_2\). The exact anomaly cancels, so \(D[e^{2\sigma}\gamma]=D[\gamma]\) along the connected Weyl orbit. Diff\(_0\) invariance and the normalized uniformization give

\[
D[\gamma]=D[e^{2\sigma}\phi^*\gamma_\tau]
=D[\phi^*\gamma_\tau]=D[\gamma_\tau]=d(\tau,\bar\tau).
\]

Thus equality of the flat modulus functions fixes the source extension. If their equality includes the absolute normalization, the difference is exactly zero; if only a suppressed normalization has been fixed, a source-independent constant remains. An Euler term is likewise source-independent at fixed topology and is identically zero as an integral of curvature on the torus.

The word **exact** must include trivial local Weyl anomalies/contact prescriptions, not only the shared central coefficient. The \(R^2\) example in §5 is precisely the counterexample to the weaker assertion. Global mapping-class monodromy, modular completion, other discrete source data, Hilbert-space realization, and nonlinear measure pushforward are not implied by this local argument. The source text already limits those conclusions correctly.

Finally, the last sentence of that paragraph is important and correct: even zero-average first-order metric sources can change the modulus at second order. Hence equality of central coefficients without equality of modulus functions does not determine the entire nonzero-momentum torus Hessian.

## 4. Audit boundary

This audit confirms the geometry/source/counterterm implications of the displayed functional and the local uniqueness logic. It does not recertify the operator domains, heat-tail estimates, identity density \(-13/(6\pi)\), or canonical trace construction in other sections. No previously failed computation was upgraded to evidence, and no new CAS output is claimed. The original independent investigation and its evidence remain separately identified.
