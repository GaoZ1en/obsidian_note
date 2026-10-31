# Supplied-text audit of note21: linear wheel, insertion and free-BV scope

## Verdict

**The requested formulas and the new distributional \(Q_0\)-exactness statement agree with the frozen derivations, under the section-level conditions. One introductory cutoff qualifier should be added.** No coefficient, sign, sharp-projection term, or quotient correction error was found in the audited §§4–6.

This is a **supplied-text comparison**, not another independent derivation and not a computational rerun. The original derivations were frozen before the supplied synthesis was read. No other new reviewer files were opened. No edit was made to the parent synthesis.

### Audited version

- Synthesis: [note21](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md>).
- Captured SHA256: `b92baacd5460a7ee151e0964fffebf2748e3b89b0d50350232baf8baa2f1b847`.
- Capture time: 2026-10-31T03:19:25.010202+00:00.
- [Exact supplied snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md>) and [snapshot provenance](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/snapshot_provenance.json>).

Scope: introductory bullets 2–4 and §§4–6. The definitions of \(T_n\) and \(\mathcal T_n\) were read only to interpret §5.3; the global quadratic/cubic trace theorem is not independently re-audited here.

## 1. One correction to the standalone introductory summary

At [snapshot:16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L16>), bullet 3 states the existence of a genuinely retained positive trace-coframe direction without giving its cutoff range. The actual construction correctly assumes \(\Lambda^2>5\) in [§5.1:425–433](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L425-L433>). For \(\Lambda^2\le5\), the retained trace-spin channel on H3 is absent, as the synthesis itself correctly states at [snapshot:555](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L555>).

**Suggested minimal parent edit:** begin bullet 3 with “For \(\Lambda^2>5\), an actual retained …”. This also safely scopes its continuity statement. If retaining the sharpest ranges, separate them: retained positive trace example for \(\Lambda^2>5\); demonstrated nonzero compact-test continuity obstruction for \(\Lambda^2\ge5\).

This is an introductory scope omission, not a flaw in the correctly qualified construction in §5.1. No edit was applied by this reviewer.

## 2. Exact coefficient and normalization audit

### Linear wheel

[Snapshot §§4.1–4.3:266–392](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L266-L392>) correctly retains

\[
\mathfrak F_\varepsilon(r)=\frac{e^{-\varepsilon r}}r1_{r>\Lambda^2},
\qquad C_\Lambda=\frac23(I_0-2I_1+I_2).
\]

The unsigned degree traces \((4a_1,\frac83a_0+2a_1+\frac{10}3a_2,4a_1)\), BV signs \((-,+,-)\), and action factor \(1/2\) reproduce \(C_\Lambda=\frac43a_0-3a_1+\frac53a_2\). Both real internal copies are already included. No extra level, \(\kappa\), or complexification factor has been introduced.

The signed-helicity multiplicities, energy \(\lambda^2+5-m^2\), measure \((\lambda^2+m^2)d\lambda/(2\pi^2)\), and per-component division \((2s+1)a_s=\sum_{m=-s}^sI_{|m|}\) agree with the [frozen tadpole proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/proof.md>). The text correctly distinguishes the full bundle density from a TT density, and finite heat-coefficient checks from Plancherel completeness.

The J-primitive notation expands to the frozen expression:

\[
J_0-2J_1+J_2
=b_0-2b_1+b_2-\sqrt5\arctan(b_0/\sqrt5)
+3\arctan(b_1/2)+3\arctan b_2.
\]

Thus the finite cutoff-dependent value, the \(-\sqrt\varepsilon/\pi^{3/2}\) correction, the \((6-\sqrt5)/(6\pi)\) unexcluded coefficient, the positivity argument, the \(\Lambda=\sqrt5\) value and the displayed large-cutoff expansion all agree. The text correctly takes the heat limit at fixed sharp cutoff rather than silently using the full homotopy.

### Generator insertion

[Snapshot §6:477–530](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L477-L530>) agrees with the [frozen insertion proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/proof.md>):

\[
\gamma_{1,\Gamma_3}^{[1]}=-\frac{2a_1}{\kappa}\int e_0\wedge E,
\qquad a_1=\frac{I_0+2I_1}{3}.
\]

In particular:

- The bare choice with no additional source \(\Gamma_{1,0}\) is explicit.
- The actual UV parametrization \(p=-\kappa*G\bar c\) and action \(-\kappa\langle\bar c,Mc\rangle\) are retained.
- The ordered odd covariances have the correct opposite signs.
- One heat factor is assigned per covariance, not a full factor independently on each leg.
- The external odd E crosses two odd UV factors, and the epsilon contraction is \(-2\delta_{ja}\).
- No linear W,R,T term has been spuriously added.
- The coefficients of \(\varepsilon^{-1/2}\), the heat finite part and \(\sqrt\varepsilon\) are exactly the frozen ones.

The distinction between the negative exact positive-time coefficient, its negative divergence, its positive prescribed finite part, and the absence of an unrenormalized limit is correct.

## 3. Kernel and quotient scope

[Snapshot:272–283](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L272-L283>) places the derivative on the spectral kernel, not the insertion, and invokes actual H3 point symmetry of the full specified Hodge blocks. The scalar fiber parity and cancellation of the upper-degree Hodge-star orientation signs are correctly used. This is not a principal-symbol inference.

[Snapshot §4.4:394–419](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L394-L419>) keeps the actual quotient low-band projector in \(V^M_{\varepsilon,\Lambda}\). Its correction has the frozen signs

\[
\mathfrak t_M\big[(U^M-U^{\mathbb H^3})-(V^M-V^{\mathbb H^3});j\big].
\]

It correctly claims only a finite compact-support heat limit for that correction, does not periodize the discontinuous projector without justification, does not impose H3 isotropy on the quotient, and does not claim an explicitly evaluated nonidentity coefficient or noncompact-insertion extension. The possible connection-insertion term is described as allowed, not as a separately calculated nonzero example.

## 4. Spatial obstruction and additional normalization

[Snapshot §5.1:425–445](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L425-L445>) has the correct band interval, L2 norm, positive non-L1 field, factor \(3\sigma\), and compact-insertion exhaustion. It does not call the compact truncations themselves retained. Its ordinary ghost trace-class obstruction matches the frozen positive-sandwich argument. Formal higher-degree stationary corrections cannot repair an undefined homogeneous degree-one coefficient.

The new ambient continuity argument in [snapshot:449–457](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L449-L457>) is consistent: disjoint translates give the L2-based Sobolev scaling \(N^{-3/4}\sqrt N=N^{-1/4}\), while the integral scales as \(N^{1/4}\). It correctly concerns compact ambient potentials rather than compact retained vectors.

The radial bounded-band/L1 argument at [snapshot:459](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L459>) is also consistent in the stated smooth radial spectral setting: hyperbolic L1 supplies exponential integrability of the odd transform variable at infinity; regularity at the origin supplies local integrability. Analytic continuation of the compactly supported Fourier transform then rules out a nonzero radial band-limited L1 function. The explicit caveat about nonlinear stationary graphs and L1 preservation is necessary and present.

For [§5.3:463–473](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L463-L473>), the signs \(-\mathcal T_2/2+\mathcal T_3/3\) inside the overall action factor \(1/2\) match the logarithmic expansion. Conditional on the earlier theorem supplying \(\mathcal T_2,\mathcal T_3\), deleting the linear term changes the compact-test answer by exactly \(C_\Lambda(0)\int\operatorname{tr}F\). The statement that this is additional normalization, not an extension of the original tadpole or a Ward-compatible BV construction, is correct. This audit does not independently certify the earlier global quadratic/cubic existence theorem.

## 5. New distributional Q0-exactness statement

[Snapshot:534–555](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md#L534-L555>) agrees with the [frozen free-action addendum](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/free_Q0_addendum.md>):

\[
Q_0E=\kappa(d_{\omega_0}w-[e_0,f]),
\quad Q_0\int\chi e_0\wedge E
=\kappa\int d\chi\wedge e_0\wedge w-2\kappa\int\chi\operatorname{tr}F.
\]

The newly stated primitive has the correct sign and normalization. On compact **unprojected** tests,

\[
Q_0\left[-\frac{C_\Lambda(0)}{2\kappa}\int e_0\wedge E\right]
=C_\Lambda(0)\int\operatorname{tr}F.
\]

This is exactly the distributional free-BV exactness of the linear tadpole. It is not a full nonlinear exactness assertion and does not establish a retained Ward identity. The derivative of the primitive is the non-L2 smearing \(e_0\), so the warning against turning the local equation \(R_Ke_0=4e_0\) into an L2 projector formula is correct. The genuine retained non-L1 antifield and the absence of the retained trace channel for \(\Lambda^2\le5\) are also stated correctly.

The coefficient of this possible distributional primitive, \(-C_\Lambda(0)/(2\kappa)\), is **not** the Gaussian insertion finite-part coefficient \(g_{\Lambda,\mathrm{FP}}\). The synthesis does not identify them; keeping that distinction is important when discussing any future quantum transport prescription.

## Audit boundary

No mathematical kernel was run, no global theorem was re-proved, and no existing source was edited. This report is version-specific to the SHA256 recorded above. It confirms fidelity to the already frozen tadpole, insertion and free-action evidence, plus elementary supplied-text consistency checks. The introductory cutoff qualifier is the only requested textual correction found in this scope.
