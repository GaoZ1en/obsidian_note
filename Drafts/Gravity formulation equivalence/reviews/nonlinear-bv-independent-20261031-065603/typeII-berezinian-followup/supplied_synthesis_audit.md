# Supplied-text audit after the exact determinant freeze

## Verdict

**Sections 4–7 are correct within their local algebraic/compatible finite-fiber scope, with the subsequently incorporated on-shell-collar support correction.** The strengthening to arbitrary retained metric and diffeomorphism antifields is justified by the exact antifield-independent Berezinian, together with the geometric auxiliary section and the specified Lorentz fiber Lagrangian. “Arbitrary” means within the corrected Q-stable interior domain. It is not a gauge-invariant finite truncation or a continuum quantum BV theorem. Ghost/antifield support alone, as in the initially read version, was insufficient for the restricted BV-space claim.

This is a **non-blind supplied-text audit**. It was performed only after freezing the independently derived exact determinant in [exact_berezinian.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/typeII-berezinian-followup/exact_berezinian.md>) and its [checksum manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/typeII-berezinian-followup/frozen.sha256>). The audited source is [Nonlinear BV map and finite density transport:266–480](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L266-L480>). No parent/source text was edited.

The exact master-action identity established in the supplied text's §3 is used here as a stated premise. This audit independently verifies the determinant/density consequences, not the whole all-order master-action proof again.

## 0. Necessary support correction, assessed after the initial read

The initial 480-line supplied snapshot required only ghosts and antifields to vanish in an open collar. That kills the integrated boundary primitive but does not make the restricted field space Q-stable. At zero antifields,

\[
 Qe^*|_0=\kappa\mathcal R,\qquad Q\omega^*|_0=\kappa T,
\]

so arbitrary off-shell physical collar fields immediately generate nonzero collar antifields.

The parent subsequently supplied, and then incorporated, the correct fix: physical fluctuations must also vanish relative to a fixed **on-shell** nondegenerate collar/background. I re-read and verified the updated [support contract:49–51](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L49-L51>). Then the field equations and all antifield-source terms vanish on the fixed collar, and the restricted sector is Q-stable. On a noncompact manifold the analogous compact-support version is relative to the fixed on-shell background.

The Lorentz chart must likewise be anchored to that fixed collar frame; only interior rotation variables are eliminated. Any unfixed boundary-frame data must remain external/unreduced. This is now stated explicitly in the updated [Lorentz-chart paragraph:316](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L316>), which I also re-read. Without this domain correction, one should retain only the general local density/modulo-exact-derivative identity, not call the support-restricted space a BV complex.

The same qualification applies to any reading of the frozen original independent report's compact-support statement as a claim about a Q-stable restricted integrated BV space: its local algebraic identities remain valid, but that stronger domain interpretation needs the on-shell-background support restriction just described. The frozen records are preserved rather than retrospectively rewritten.

The section/line references below were taken from the initial 480-line snapshot; the support correction subsequently added two lines above them. The algebraic and determinant calculations themselves were not changed.

## 1. Exact auxiliary and Lorentz reduction

The completed split, Hessian, and homogeneous contorsion law in [§4:268–312](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L268-L312>) agree with the independent analytic and exact CAS calculation:

- the nonzero bulk/wall fluxes cancel at the same cutoff;
- \(L(U)=\operatorname{tr}(U)1-U^T\) is invertible;
- \(QU=\xi\partial U+[U,\Lambda]\) is homogeneous;
- on \(U^*=0\), no retained antifield sources \(U\), so \(U=0\) exactly;
- at nonzero \(U^*\), the source equation is different and cannot be identified with that reduction.

The local Lorentz doublet and the warning that reduction is not a lower-dimensional symplectomorphism in [§4:314–322](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L314-L322>) are also correct.

## 2. Full Berezinian and the cubic-step caveat

The right-versus-left sign, exact Schur complement, and determinant in [§5.1:328–355](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L328-L355>) agree with both independently calculated mixed blocks:

\[
 \operatorname{Ber}(Q_q|_P)=\mathcal E^{-1},\qquad
 \operatorname{Ber}(p_P|_q)=\mathcal E,\qquad
 \operatorname{Ber}D\Phi=\mathcal E^{-2}.
\]

No antifield restriction is used. In particular the first row of the later density table is legitimately the **full** supplied canonical map, no longer just the ghost cotangent lift.

The interpretation of the nonzero individual \(\Delta_\nu G_3\) in [§5.2:357–370](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L357-L370>) is appropriately corrected. The individual cubic-step calculation is real, but its divergence cannot be identified with the first correction of the complete exact transformation. A higher-degree generator can contribute at the same degree after the two derivatives in the BV Laplacian. The complete graded-Jacobian cancellation is decisive.

## 3. Why arbitrary retained antifields are now allowed

The strengthening in [§6.2:441–443](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L441-L443>) follows as an actual local fiber statement:

1. The specified original minimal field/parameter density has a constant coefficient in background-normalized coordinates.
2. The exact map contributes \(\mathcal E^{-1}\) to its semidensity, with no nilpotent antifield coefficient.
3. The connection shift and coframe/Lorentz-ghost cotangent changes contribute \(\mathcal E^3\) and \(\mathrm{const}\,\mathcal E^{-1}\), also independent of antifields.
4. On the auxiliary Lagrangian \(U^*=0\), the geometric master action is a metric/diffeomorphism part plus \(av\mathcal E q(U)\); retained antifields do not enter the auxiliary source or Hessian.
5. On the local Lorentz fiber Lagrangian \(\theta=0,\chi^*=0\), the integrated variables are the odd pair \((\theta^*,\chi)\). The Berezin integral of \(\exp(-\theta^*\chi/\hbar)\) is a nonzero field-independent normalization. The metric/diffeomorphism antifields remain unrestricted within the stated support domain.

Therefore the residual coefficient \(r^{-7/2}\) is valid with arbitrary retained antifields in this local fiber calculation. The caveat in [§6.2:443](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L443>) correctly rules out inference of a diffeomorphism-invariant lattice, a closed finite-mode BRST complex, or a continuum QME. Compatible point/jet/finite blocks are not interchangeable with spectral compressions.

The matched target density assertion in [§6.2:423–439](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L423-L439>) also has the correct powers: metric \(\mathcal E^{-1}\), diffeomorphism ghost \(\mathcal E^{-5/2}\), product \(\mathcal E^{-7/2}\). It is a comparison of specified densities, not an arbitrary choice that declares a determinant to be one.

## 4. Contour and normalization constants

The phase in [§4:286](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L286>) is correct for the explicitly retained upper rotation of all five negative auxiliary directions: \(i^5=i\).

More explicitly, with the stated Euclidean exponent and a coordinate cell weight \(v\),

\[
 \int_\Gamma d^9U\,\exp[-av\mathcal E q(U)/\hbar]
 =\frac{i}{\sqrt2}\left(\frac{\pi\hbar}{av\mathcal E}\right)^{9/2}.
\]

The \(1/\sqrt2\) is the normalized trace eigenvalue; the phase comes from the five rotated negative modes. The retained background normalization removes these fixed factors only as common constants for the same cell count and contour. It does not prove that their product over a field-dependent number of modes is field-independent.

The source explicitly retains the contour phase and fixed background constants in [§6.1:396–398](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L396-L398>) and [§6.2:439](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L439>), and warns about \(C(a)^{N_\Lambda(g)}\) in [§7:480](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L480>). Thus no missing field-dependent contour constant was found. Displaying the raw Gaussian above would be an optional clarification, not a correction.

## 5. Heat finite part and counterexample signs

The narrow theorem in [§7:447–463](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L447-L463>) is valid provided the stated localized heat trace and uniform compact-support parametrix exist. Smooth boundaryless Laplace-type kernels in dimension three have powers \(t^{j-3/2}\), never \(t^0\). The statement is a spatial-first **minimal** finite part, not an arbitrary finite renormalization, a determinant calculation, or a QME.

All three counterexamples in [§7:467–478](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L467-L478>) have the correct signs and coefficients:

- zero-mode subtraction adds \(-\operatorname{Tr}(BP_0)\), assuming that localized projector trace exists;
- the flat Dirichlet image term gives \(-\frac1{64\pi}\int b\,\varphi''(0)\); for \(\varphi=e^{-\alpha z^2}\) this is \(+\frac{\alpha}{32\pi}\int b\), verified in the earlier actual CAS run;
- the compression example has \(\log2-\tfrac12\log3>0\), exactly as stated.

Interior support a positive distance from a finite wall kills the boundary power terms, whereas a general smooth wall insertion need not. The supplied text makes this distinction correctly. Its noncompact/asymptotic and mode-count warnings remain necessary.

## 6. Scope of this audit

No algebraic or density error was found in §§4–7. The restricted BV-domain claim did require the on-shell-collar correction explained in §0; it has been incorporated and its support contract re-read. The interior Lorentz reduction must be understood with a collar-anchored chart and no elimination of external boundary-frame data. Subject to those corrections, the finite determinant supports the arbitrary-retained-antifield strengthening. The explicit raw Gaussian normalization would be a useful optional display. The higher-order classical master-action map, literature audit, complete Gaussian operator comparison, and full boundary/proper-domain extension were not independently re-proved in this supplied-text audit.
