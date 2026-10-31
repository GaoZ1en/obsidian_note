# Supplied-text audit of the geometric-CS Gaussian comparison

**Status:** Separately commissioned supplied-text review, following completion of the independent audit. This is **not** an independent discovery report. The completed independent report and source evidence have been left unchanged.

**Text inspected:** [Geometric CS Gaussian map and regulator](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md>), the 431-line snapshot read in the turn beginning 2026-10-31 06:05:31 Asia/Shanghai. Line references below refer to that inspected snapshot; they may shift when the parent applies the proposed repairs. No other current reviewer report was read. The imported metric calculation and the cited Wolfram run artifacts were not independently audited here.

## 1. Verdict

**The actual adapted-gauge common-Casimir determinant theorem is analytically supported by the written closure, HC-Schwartz, amenability, orbital-inversion, and source-family arguments.** I found one genuine formula-scope error: the signed-image phase in (6.6) applies an absolute value to the translation but not simultaneously to the rotation. It is harmless for the actual helicity-even traces but incorrect as a general orbital inversion formula.

A second repair is a scope clarification with real mathematical content: the explicitly constructed adapted selfadjoint Hessian and positive ghost/Gram blocks are controlled; an independently realized, closed Hermitian-Lorenz-gauge Hessian was not constructed in the text. Finite FP quotient-density algebra must not be relabeled as that additional theorem or as an adapted disintegration of the full L2 proper-gauge quotient. The parent has stated that the intended repair is to retain the narrower, adequate adapted-gauge theorem.

The printed coefficient in (6.6), **β/(2π)** for integration over λ≥0 and a single positive image, is correct. No factor-of-two repair is needed.

## 2. Required correction: signed images and Weyl equivalence

**Location:** [§6.2:357–367](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L357-L367>), especially the phase in (6.6).

The text writes, for an apparently signed cyclic image n,
\[
\cos(\lambda|n|\beta+mn\theta).
\]
For a general character transform, only
\[
\Theta(-\lambda,-m)=\Theta(\lambda,m)
\]
is supplied by Weyl equivalence. A loxodromic element with signed parameters \((n\beta,n\theta)\) is conjugate to the one with parameters \((-n\beta,-n\theta)\). Making the translation positive must also reverse the rotation. The printed expression instead reverses only one of them when \(n<0\).

This is not a hypothetical distinction. Take a smooth compactly supported spectral datum \(a(\lambda)\) on \(\lambda>0\), away from zero, supported in helicity \(m=1\), and extend it to \(m=-1,\lambda<0\) by Weyl equivalence. It is a legitimate finite-K Schwartz test datum. The printed positive- and negative-image formulas differ by a multiple of
\[
\sin(n\theta)\int_0^\infty a(\lambda)\sin(\lambda n\beta)\,d\lambda,
\]
which is generically nonzero, whereas the two orbital integrals must agree by conjugacy.

**Minimal replacement wording:**

> In the following formula take n≥1, let θ be the rotation of the chosen generator with positive primitive translation β, and let m run over all signed helicities. The contribution of one positive image is
> \[
> \mathcal O_n(f)=\frac{\beta}{2\pi}\sum_m\int_0^\infty
> \Theta_{\lambda,m}(f)
> \frac{\cos(\lambda n\beta+mn\theta)}{\cosh(n\beta)-\cos(n\theta)}\,d\lambda.
> \]
> Since g^n and g^{-n} are conjugate in G, define \(\mathcal O_{-n}(f)=\mathcal O_n(f)\). Thus the full nonidentity cyclic sum is \(2\sum_{n\ge1}\mathcal O_n\). This uses joint Weyl symmetry, not separate helicity or spectral-parameter parity.

Alternatively, for every signed n≠0 put \(\cos[n(\lambda\beta+m\theta)]\) in the numerator and retain \(|n|\) in the denominator. The positive-n formulation is less error-prone.

**Effect on the main theorem:** none after this repair. The actual reduced logarithmic traces depend on \(\lambda^2\) and \(|m|\), so they have the additional separate parity that accidentally conceals the error. A general inversion theorem should not assume that extra parity.

## 3. Orbital normalization independently checked

**Location:** the same [formula (6.6)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L357-L365>).

For \(R_0=\Delta_0+4\), the intrinsic scalar heat kernel is
\[
K_t(d)=(4\pi t)^{-3/2}\frac d{\sinh d}
 e^{-5t-d^2/(4t)}.
\]
Let \(L=n\beta>0\), \(b_n=\cosh(n\beta)-\cos(n\theta)\). Cylindrical coordinates give
\[
\cosh d=\cosh(n\beta)+b_n\sinh^2\rho,
\quad \sinh d\,dd=2b_n\sinh\rho\cosh\rho\,d\rho.
\]
The fundamental range has axial length β and angular range 2π. Therefore a **single image** integrates to
\[
\begin{split}
I_n(t)
&=\frac{\pi\beta}{b_n}(4\pi t)^{-3/2}e^{-5t}
\int_L^\infty d\,e^{-d^2/(4t)}\,dd\\
&=\frac{\beta}{4\sqrt{\pi t}\,b_n}
 e^{-5t-L^2/(4t)}.
\end{split}
\]
In (6.6), the scalar character trace is \(e^{-t(\lambda^2+5)}\), and
\[
\int_0^\infty e^{-t\lambda^2}\cos(\lambda L)d\lambda
=\frac{\sqrt\pi}{2\sqrt t}e^{-L^2/(4t)}.
\]
Multiplication by β/(2πb_n) reproduces \(I_n(t)\). Thus the coefficient is correct with the positive-n/signed-helicity convention above. The result must be doubled only when adding the inverse image; the real-field Gaussian factor 1/2 is a separate bookkeeping factor.

## 4. Required gauge-scope clarification

### 4.1 What is established

**Locations:** [§3:174–195](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L174-L195>), [§4:229–238](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L229-L238>), [§5:269–291](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L269-L291>), and [§6:331–369](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L331-L369>).

The reference adapted construction is sufficiently specified:

- algebraic frame gauge r=0;
- the reference normalized metric de Donder Gaussian average;
- after choosing the positive gauge orientation, the differential ghost is the positive complete \(R_1\);
- the frame factor and rotation-ghost shear are finite common-fiber factors;
- the resulting bosonic block has the explicit selfadjoint realization (5.5);
- constant spin factors and contour counts are evaluated with the same regulator.

The finite FP identity (4.3) is correct when its action is gauge-invariant, \(HG_0\) is invertible, and the stated orientation/orbit-measure/transported-cycle conventions are used. A normalized Gaussian gauge average gives the same finite identity: integrate the gauge coordinate after the linear transformation \(w\mapsto HG_0w\), with its Jacobian and the Gaussian normalization retained.

### 4.2 What must not be inferred

The adapted FP matrix, regarded on the **geometric** parameter domain \(\rho\in H^1,\xi\in H^2\), is not itself a closed operator on the L2 parameter direct sum. On \(\xi=0\), its first component is simply the identity restricted to \(H^1\). Choose \(\rho_j\in H^1\) with \(\rho_j\to\rho\in L^2\setminus H^1\). Then
\[
(\rho_j,0)\to(\rho,0),\qquad
M_{\rm ad}(\rho_j,0)\to(\rho,0),
\]
but the limit is outside the geometric domain. Closing that algebraic identity on L2 enlarges its domain; it does not enlarge the proper geometric gauge group.

The note already warns about this domain distinction. The remaining vulnerable wording is the unqualified transfer of an “analogous finite FP equality” to actual orbital kernels, and the possibility of reading the Hermitian-Lorenz comparison as a determinant of a separately constructed closed Hermitian-gauge Hessian. Only the adapted Hessian is explicitly realized and analyzed. The positive Hermitian ghost Gram operator \(G_0^*G_0=R_1\oplus R_1\) is controlled, but it is not the full gauge-fixed field Hessian.

### 4.3 Minimal wording matching the intended theorem

**Proposed insertion/replacement at the end of §4, after (4.3):**

> The continuum Gaussian theorem below is defined in adapted frame gauge with the normalized reference metric de Donder average. Its frame determinant and rotation-ghost shear are evaluated in compatible finite common-Casimir multiplicity spaces; its sole positive differential ghost block is the complete R1. The use of (4.3) for Hermitian Lorenz gauge means applying the same finite-fiber quotient density and orbit-volume convention and then the common trace prescription. It does not assert the determinant of a separately realized closed Hermitian-gauge field Hessian, or an adapted Faddeev–Popov disintegration of the entire L2 field space by H1 proper gauge transformations. Both finite gauge presentations use the same transported quotient Gaussian cycle and normalized gauge average.

**Proposed replacement of the relevant part of §6.2, around lines 367–369:**

> Equation (6.3) therefore gives equality of the identity density and every nonidentity orbital integral for the actual adapted selfadjoint block. The gauge factors used in this comparison reduce to the positive R1 ghost/Gram blocks and the specified constant spin factors; these are covered by the same heat-kernel argument. Finite identity (4.3) fixes the common-fiber quotient-density convention, not an additional unconstructed continuum gauge-fixed Hessian. The equality holds after the spatial geodesic finite part at each ε>0, before the ε finite part.

This retains the main theorem and avoids an unnecessary new analytic claim. If one later wants an independently realized Hermitian-gauge Hessian determinant, a separate closure/nonzero-fiber/polynomial-inverse lemma is needed. Such a lemma is plausible and accessible, but it should not be silently included in the present result.

**Status:** important precision repair, not a counterexample to the adapted CC comparison.

## 5. Closure, strong intertwiners, and mixed domains

**Locations:** [§5:256–291](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L256-L291>).

**Assessment: pass.** The actual written argument correctly distinguishes the closure from the literal unbounded shear composition, does not identify the domain with H2 on every component, and does not claim finite rank for common spectral bands.

The decisive analytic facts are as follows. With \(C=B R_{\rm sym}^{-1/2}\), core intertwining and the first-order estimate give a bounded spectral intertwiner. The parallel \(A_0,Q\) commute with their spin regulators. Consequently (5.5), expressed through \(C,C^*\), is bounded selfadjoint and strongly commutes with the direct-sum \(R\). Its injectivity is immediate: if \(S(f,g)=0\), its first row implies
\[
R^{-1/2}f+C^*g=0,
\]
and the second then gives \(Q^{-1}g=0\), hence \(f=g=0\). Thus \(H=S^{-1}\) is selfadjoint, gapped, and strongly commutes with R. Spectral-band graph approximation followed by the R-core approximation proves essential selfadjointness of the formal differential Hessian.

The weak domain description at line 289 is correct, with \(w\in L^2\) already implicit in the ambient direct sum. It allows the necessary cancellation between \(H_0u\) and \(B^*z\).

**Optional one-sentence clarity improvement at line 289:**

> The bounded transforms and parallel matrices make S commute with every spectral projection of R, so its inverse H strongly commutes with R; this, rather than formal commutation alone, justifies the band approximation.

This is already a consequence of the preceding text, not an additional hypothesis.

## 6. HC compatibility, actual quotient functional calculus, and image convergence

**Locations:** [§6.2:335–355](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L335-L355>).

**Assessment: pass, subject to the explicitly invoked standard HC theorem.** The written proof supplies the genuinely needed ingredients:

1. compact-picture differential matrices are polynomial in λ;
2. the actual mixed-order Hessian has the inverse control required for logarithmic differentiation;
3. Gaussian weighting gives Schwartz bounds for every λ derivative;
4. normalized representation intertwiners conjugate the operators and their functional calculus;
5. the symbol is finite K-type and is not inferred merely from a scalar trace identity.

This is enough to apply the finite-K Schwartz wave-packet theorem. The argument would not be valid for arbitrary unrelated scalar multipliers, but the current text explicitly says that.

The amenability step at line 345 is important and correct. It bridges cover multipliers to the complete quotient functional calculus through
\[
1_\Gamma\prec\lambda_\Gamma,
\qquad
\operatorname{Ind}_\Gamma^G1\prec\lambda_G,
\]
without assuming finite automorphic multiplicities. Compact-support approximation in the HC-Schwartz topology, reduced-C*-continuity, and local image convergence then identify the actual quotient kernel.

The tail bound (6.5) is correct as an **integrated radial tail**. It follows from \(d_n\ge2R+|n|\beta-c\), \(\Xi(d)\sim d e^{-d}\), and the hyperbolic radial density. One should not read its exponent \(2-N\) as the pre-integration density bound; that density has exponent \(1-N\). The text calls it a tail, so no correction is necessary.

A source-reference precision improvement would be to cite the inspected Song–Tang theorem and the explicit SL(2,C) orbital formula directly in addition to the review link. This is provenance improvement, not a mathematical gap; it avoids making an internal review the sole named location of the standard theorem.

## 7. Source differentiation and the small-ε limit

**Locations:** [§6.2:369](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L369>) and [§6.3:373–402](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L373-L402>).

**Assessment: pass for the stated local marked hyperbolic source family, not for arbitrary off-shell source perturbations.** At fixed ε, character Fourier inversion gives smooth modulus dependence; derivatives introduce polynomial factors in image number and spectral parameter, while the Weyl denominator retains exponential image decay locally for β>0. Pure representative changes affect only the identity finite-part volume because the image sum is absolutely integrable. Pullbacks do not change the scalar trace functional when the cutoff is pulled back consistently.

The sentence taking ε→0 only after the exact trace identity is the right strategy. One need not prove uniform HC seminorms for every unsimplified matrix block. If the parent wants this part self-contained rather than dependent on the imported metric source calculation, the following short addition suffices:

> After (6.3), the character traces are finite sums of \(e^{-\epsilon(\lambda^2+c)}[d\log(\lambda^2+c)+q]\), with c∈{1,4,5}. Away from zero translation, the limiting Fourier transform of the logarithm is \(-e^{-\sqrt c L}/L\), and the constant term tends to zero. For each j and N>j+1, the L1 norms of \(\partial_\lambda^N[\lambda^j e^{-\epsilon(\lambda^2+c)}\log(\lambda^2+c)]\) are uniformly bounded for 0<ε≤1. Integration by parts gives locally uniform image and source-derivative bounds, summable against the exponential Weyl denominator. The identity coefficients have an ordinary power/log heat expansion multiplied by the smoothly varying renormalized volume.

This also makes explicit why varying mixed-order band orders do not obstruct smoothness of the **trace** functional.

Equations (6.7)–(6.9) are correctly restricted to complete odd-dimensional gapped homogeneous blocks. The vanishing heat count is not confused with a vanishing determinant, and the specified auxiliary/constant phase terms have the correct signs for the lower-negative-axis logarithm and +i contour rotation.

## 8. Gaussian/contour equality and conclusion strength

**Locations:** [§5:291](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L291>), [opening result:5–18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L5-L18>), [§6.3:402](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L402>), and [§8:427–431](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L427-L431>).

**Assessment: appropriately scoped after the gauge clarification above.** The covariance statement is about holomorphic Wick data on the specified complex contour. The metric covariance and auxiliary white-noise covariance can be pushed forward by the differential map on distributions, and their holomorphic covariance is exactly S. It is not asserted to be a positive real L2 Gaussian measure. The note correctly separates these normalized data from the renormalized partition normalization.

The Gaussian contour must remain the transported metric/auxiliary contour, with its stated orientation. The resulting equality is not a deformation theorem for a divergent real Euclidean auxiliary integral, and the current text says so. Nor is it an identification with an independent complex-CS contour, spectral eta phase, or global framing choice.

The coefficient and product in (0.1) are imported from the metric source calculation. This supplied audit verifies the analytic **transfer** under the stated common prescription; it does not independently rederive C+13, the thermal product, or the stress/contact formulas in that imported calculation. Equality of the locally smooth scalar source functional does transfer its source derivatives, once that metric input and the same coupling conventions are fixed.

The “Verified/Assumptions/Not established” paragraph at line 429 has the right overall strength. A minimal addition to its assumptions is the chosen **adapted common-fiber gauge prescription**, so that “complete proper ghosts” is not read as a full-L2 adapted-orbit disintegration. The line about additional investigations “being integrated” is an evidence-index update issue only. The audit did not reread the cited runnable bridge or actual-server-return artifact, so it does not independently certify the reported CAS success flags.

## 9. Minimal repair list

1. **Correct (6.6) for signed images:** restrict it to n≥1, state all signed helicities are summed, and set \(\mathcal O_{-n}=\mathcal O_n\) by conjugacy. Keep β/(2π) unchanged.
2. **Make the gauge scope explicit:** the continuum theorem uses the actual adapted selfadjoint block plus the positive R1 ghost/Gram blocks and constant spin factors. Hermitian-Lorenz language fixes the same common-fiber quotient-density convention, not a new closed field-Hessian determinant or global L2 gauge disintegration.
3. **Optional but useful:** spell out strong spectral commutation of S and H with R; include the short scalar Fourier estimate for ε→0 source control; directly cite the inspected harmonic-analysis sources.
4. **Do not enlarge (0.1) or §8:** retain its dependence on the specified source family, contour, measures, wall completion, and common regulator. Do not promote it to regulator-independent quantum equivalence or an independently regularized CS result.

No parent source was edited. No part of the completed independent report or its source evidence was altered.
