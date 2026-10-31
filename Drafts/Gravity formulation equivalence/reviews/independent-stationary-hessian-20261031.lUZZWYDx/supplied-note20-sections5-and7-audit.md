# Supplied-text audit of note20 sections 5 and 7

## Verdict and scope

**The supplied sections are correct under their stated small-body and fixed-background hypotheses. No substantive mathematical correction is needed.** The operator orientation is correct: the CS formula is left-relative, and the geometric ghost normalization removes the compressed principal factor on the right of that left-relative block.

This is a later supplied-text audit, not part of the initial blind derivation. I first read [section 5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L313-L370>) and [section 7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L419-L502>), with the surrounding conventions and scope statements. Section 7 was then at lines 406–489; an unrelated insertion later shifted it to the linked current lines 419–502. No kernel was rerun. Neither the supplied parent note nor the frozen independent artifacts were modified by this reviewer.

The two optional precision comments below concern that first supplied snapshot. The parent subsequently implemented both, and the narrow follow-up inspection in §6 confirms the fixes. A typography erratum in the frozen follow-up and actual Wolfram server-return paths are recorded separately.

## 1. Section 5: the retained radial obstruction

The radial conjugation, exact compact sine-transform support, shift by four in the physical trace block, norm \(2\pi^2b\), and failure of L1 are correct. The field is exactly retained for \(b^2<\Lambda^2-5\), not merely localized or approximately bandlimited. Small amplitude puts it in the actual stationary domain; this does not mean its UV stationary correction is zero.

The sign in [equation (26)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L352-L357>) agrees with the declared left-derivative BV Laplacian: the rightmost derivative first differentiates the even antifield \(T\), and the subsequent odd ghost derivative brings the displayed overall \((-1)^{\epsilon(\zeta)}=-1\). There is no missing \(\kappa\) in this contraction. The other two cubic monomials contain no conjugate pair in the fixed background-aligned canonical chart.

Using the actual rank-three \(R_1\) projector is essential and is done correctly. Its finite positive diagonal gives the extended positive trace

\[
\operatorname{Tr}(P_0M_{\sigma\phi_b}P_0)
 =\sigma q_\Lambda\int\phi_b\,dV=+\infty.
\]

Thus the conclusion is that the ordinary finite BV contraction is undefined, not that one has assigned a finite value to a divergent trace. There is no cancellation with a higher homogeneous tree term. This is an off-shell retained-domain infrared obstruction and is not asserted to be a physical anomaly.

The extension to full and UV heat multipliers at fixed positive heat time is also valid. On \(\mathbb H^3\), these are invariant positive operators with strictly positive constant diagonal trace; the UV multiplier is nonzero because the vector spectrum is unbounded. Interpret the positive trace through sandwiching or monotone spatial localization. The same nonnegative non-L1 coefficient then gives infinity before any small-time finite-part operation.

### Optional precision: exact spectral bottom is unnecessary

The first supplied snapshot at [note20:360](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L360>) said the ghost spectral bottom is four. This stronger fact is compatible with the actual hyperbolic vector spectrum, but the supplied trace counterexample needs only nonemptiness below the chosen \(\Lambda^2>5\). It follows directly from

\[
R_1\nabla u=\nabla(-\nabla^2_{\rm scalar}+4)u.
\]

Scalar bands just above one provide nonzero vector bands just above five. This proves \(q_\Lambda>0\) with no dependence on an exact transverse-vector threshold formula. The previously quoted lower bound \(R_1\ge4\), by itself, would not prove that the bottom equals four. No conclusion in section 5 depends on that unnecessary stronger assertion.

## 2. Section 7.1: projection, orientation, and global Schatten scope

For clarity, with \(Q=R\delta D\Delta_{\rm H}^{-1}\) and \(Q'=RD\delta\Delta_{\rm H}^{-1}\), the cyclic Hessian and free inverse are

\[
K_j=\kappa QH(D_T+\operatorname{ad}_j)|_{\mathcal L},
\qquad K_0^{-1}=\kappa^{-1}h_TH|_{\mathcal L},
\qquad HQ=Q'H.
\]

Consequently

\[
K_0^{-1}K_j=1+h_T\operatorname{ad}_j|_{\mathcal L},
\]

exactly the left-relative formula in [equation (31)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L421-L429>). It is not the right-relative operator \(K_jK_0^{-1}\). The latter has excess \(QH\operatorname{ad}_j h_TH\), and the same Schatten estimate applies by putting the square-root resolvent on the other side of the multiplication coefficient.

Both ratios are bounded-product reversals: if \(X=K_0^{-1}\) and \(Y=K_j-K_0\), their excesses are \(XY\) and \(YX\). Here both \(X\) and \(Y\) are bounded on the coefficient Hilbert space, and both products are in \(\mathcal S_4\). Their nonzero spectra agree with algebraic multiplicity, so their \(\det_4\) agree. At a physical body this may be applied in each parity block. Thus use of the right-relative convention in a finite Gaussian formula earlier in the note does not contradict the explicitly left-relative calculation in section 7.

### Optional precision: specialize the reference

The earlier finite-dimensional discussion allowed a general fixed reference \(K_*\). In section 7, the displayed inverse \(h_TH\) specifically means the **free restricted Hessian** \(K_*=K_0\). The text already indicates this through “free inverse”; explicitly stating \(K_*=K_0\) at the start of section 7 would remove any possible ambiguity. Formula (31) would not hold for an arbitrary unrelated reference.

The heat interpolation argument in (32) is correct. In particular, its global conclusion relies on the actual \(L^2\cap L^\infty\) stationary coefficient, not solely on local order. The small-time integral has exponent \(-1/2-3/(2p)\), so \(p>3\) is the correct threshold. Large-time convergence follows from the spectral gap. These facts work on each fixed stated geometry; no uniform short-geodesic degeneration is claimed.

The fourth-modified logarithm, its trace-class series, and its finite coefficientwise graded interpretation are correctly limited. The proof neither produces the first three wheel traces nor treats formal supertrace cancellation as absolute trace class. The stated local ghost symbol is nonzero for a nonzero physical coefficient because the gravitational algebra has zero center; the local singular-value conclusion \(A_j\notin\mathcal S_3\) is correct. The qualification “generic semisimple insertions” for the first three non-trace-class powers avoids an unwarranted assertion about every algebraically degenerate background.

## 3. Section 7.2: the normalized ghost block and its paired transpose

The cubic geometric vertex gives the derivative coefficient \(C_j\), and the sign of
\(N_{\rm eq}\xi=(\iota_\xi\mathcal R,\iota_\xi T_{\rm torsion})\)
in (35) agrees with the exact ghost-only off-shell remainder. In particular the equation-of-motion term cannot be discarded merely because the body is UV stationary.

The statement that \(B_j\) is multiplication with \(L^2\cap L^\infty\) coefficients is correct on the actual smooth-Sobolev physical graph: derivatives of \(j\) are still L2 and bounded, and products with bounded coefficients preserve L2. A nonzero \(f\) gives the claimed order-zero obstruction. Nonzero \(w\) can also obstruct compactness; the stated sufficient condition on \(f\) is simply narrower, not false. The radial example realizes the obstruction on an actual stationary lift, since its leading coframe matrix is a positive scalar matrix and \(y=O(\sigma^2)\).

The compression \(C_R=R C_jR|_{RE^0}\), the norm-small Neumann inverse, and the right multiplication by \(C_R^{-1}\) in [equation (36)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L485-L502>) are all correct. Raw \(C_j\) is not an endomorphism of the fixed UV subspace, so this compression cannot be omitted.

Here is an explicit verification of the transpose-block estimate without conjugating by an unbounded operator. Let

\[
U=GM^{-1/2},\quad Q_0=M^{1/2},\quad
Q_g=M^{-1/2}RG^\dagger G_{g,j}R,
\quad E=Q_gC_R^{-1}-Q_0=U^\dagger B_jR C_R^{-1}.
\]

All operators are on their indicated UV coefficient spaces; the chain projection supplies the omitted compatible R factors. Then

\[
Q_0^{-1}E=M^{-1}RG^\dagger B_jR C_R^{-1}\in\mathcal S_4.
\]

For the other orientation, use \(C_R^{-1}=1-C_R^{-1}T_R\), \(T_R=R(C_j-1)R\), to obtain

\[
E Q_0^{-1}=U^\dagger B_jM^{-1/2}R
 -U^\dagger B_jR C_R^{-1}R(C_j-1)M^{-1/2}R\in\mathcal S_4.
\]

Each term has either \(B_jM^{-1/2}\) or \((C_j-1)M^{-1/2}\) in \(\mathcal S_4\), with all other factors bounded. Taking adjoints proves both estimates for the transposed odd-Hessian block. Equivalently one may use precisely the displayed identity
\(C_R^{-\dagger}=1-T_R^\dagger C_R^{-\dagger}\).

Thus the paired interpretation in the supplied text is adequate: normalize the ghost argument of the bilinear and build its corresponding transpose Hessian block. It is not an unspecified simultaneous positive-Hilbert-dual change of the two independent integration variables.

The final scope statement is correct. The normalized \(1+\mathcal S_4\) remainder is a different, field-dependent-reference determinant problem; it neither defines a determinant of the removed noncompact factor nor proves multiplicativity or functional-measure transport. No equality of this determinant with the CS determinant has been established.

## 4. Frozen typography erratum only

The frozen [followup.md:91](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md#L91>) contains a literal U+0008 BACKSPACE before the text `igl`. The intended rendered expression is simply

\[
\operatorname{Tr}_{L^2(TM)}(P_M M_{\varepsilon\phi_b}P_M).
\]

The missing TeX sizing command is the command whose letters are b-i-g-l, preceded by a backslash. No mathematical operation or coefficient is missing. The frozen file and its previously recorded hash have deliberately not been changed.

The first supplied snapshot at [note20:225](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L225>) had the same control-character typography before `igl` in equation (16). That is outside the mathematical sections audited here; it was flagged only as a rendering diagnostic. The current parent version has fixed it, as confirmed in §6.

## 5. Actual Wolfram server returns, independently re-read for this audit

The [evidence file](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/evidence-and-diagnostics.md>) already links the raw tool records. For direct access:

- Principal-symbol batch: [actual server-return JSON](</Users/koishi/.dsh/research-results/session-ec7666ab9ad4/dbdd3bbda769-research-result.json#L1-L27>). Its schema says `completeness: server-returned` and `upstreamTruncated: false`. The received server text at lines 16 and 23 contains the tuple `{symbol-result-path, True, False, {}}`: the source's returned booleans mean `AllPassed=True`, `Failed=False`, followed by an empty message list. The [saved complete result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check-result.txt>) lists all fourteen checks.
- Radial follow-up batch: [actual server-return JSON](</Users/koishi/.dsh/research-results/session-ec7666ab9ad4/4f0b6ec92fc1-research-result.json#L1-L27>). It likewise says `completeness: server-returned`, `upstreamTruncated: false`, and contains `{radial-result-path, True, False, {}}` at lines 16 and 23. The [saved complete result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-result.txt>) lists all seven checks.

I read both raw JSON records during this audit, rather than inferring kernel success only from the locally written summaries. No new computation or replacement output was generated. These are exact finite algebra/scalar checks; the heat/Schatten, local singular-value, and actual ghost-projector arguments remain analytic proofs.

## 6. Narrow inspection of the parent's subsequent fixes

After the first audit the parent reported three narrow changes. I re-read only the relevant current locations, plus section 7 to verify its shifted anchors:

- [Note20:225](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L225>) now contains a normal TeX sizing command, with no displayed backspace character. The frozen independent follow-up remains unmodified, with its erratum in §4 above.
- [Note20:360](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L360>) now proves nonemptiness and positivity through the actual gradient intertwiner and invariant positive diagonal. This directly supplies everything the retained counterexample needs, without the earlier exact-bottom assertion.
- [Note20:421](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L421>) now explicitly chooses \(K_*=K_0\), gives the regular domain \(\mathcal L_0\cap H^1\), and states the bounded extension of the relative expressions. This resolves the reference ambiguity identified above.

**Current status: sections 5 and 7 pass this supplied-text audit, including the three inspected fixes.** The earlier optional comments are historical findings, not outstanding issues. No additional mathematical correction is requested. The unrelated new section-6 material was not included in this audit, and no additional kernel run was performed.
