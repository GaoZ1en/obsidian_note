# Supplied-text audit — only §§1–2 and §3.1

**Verdict: the Euclidean transgression, exact wall split, auxiliary Hessian/contour formulas, and stated coframe/Lorentz Jacobians agree with the independent derivation, under the explicitly identified normalization conditions below.** One residual notation typo was found after the auxiliary matrix was renamed to \(U\). The metric trace-norm statement needs its DeWitt convention stated or explicitly referenced; it does not follow from a Frobenius norm alone.

This is a **supplied-text audit**, not the original blind independent analysis. It does **not** certify the later analytic determinant theorem, its domains, its regulator, or its trace manipulations. No mathematical kernels were rerun.

## Version and scope

The audited source is [Geometric CS Gaussian map and regulator, §§1–2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L20-L127>) and [§3.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L189-L202>). Only these bodies were read; headings were used to locate them. The linked external CPS and Lorentzian-convention notes were not followed and are not certified by this audit.

The exact version captured after the parent's \(C\to U\) renaming has whole-source SHA-256:

```text
43da890c03b57a494e70c62f4c92b53c4b08a67668399ef9ee2273622fb3ffc8
```

The full file was hashed only to identify its revision; only the authorized sections were retained. Exact snapshots are [§§1–2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md>) and [§3.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-section-3.1.md>). Their source line ranges, byte counts, individual SHA-256 values, and UTC capture time are in the [snapshot manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/snapshot-manifest.json>). The snapshot, not a subsequently edited live file, fixes this audit's subject.

## 1. Euclidean, Wick, and transgression checks

The generator algebra in [snapshot §§1–2:5–22](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md#L5-L22>) is correct: \(T_a=-i\sigma_a/2\) gives \(\operatorname{tr}T_aT_b=-\delta_{ab}/2\) and \(\operatorname{tr}T_aT_bT_c=-\epsilon_{abc}/4\). For real geometric \(e,\omega\), \(\bar A=-A^\dagger\). Moreover

\[
F(A)=R_\omega-e\wedge e+iD_\omega e,
\quad R^{ab}=-\epsilon^{ab}{}_c R^c,
\]

so flatness of both factors is equivalent, for the stated nondegenerate real geometry, to torsion zero and \(R^{ab}=-e^a\wedge e^b\), hence \(\mathrm{Ric}=-2g\) in three dimensions.

The Wick interchange in [snapshot §§1–2:24](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md#L24>) is algebraically correct: the written component substitution and basis map give \(e_L=-ie_E\), \(\omega_L=\omega_E\), and therefore \(A_L\to\bar A_E\), \(\bar A_L\to A_E\). Assuming the Lorentzian action coefficient is \(+k/(4\pi)\) multiplying the unbarred-minus-barred CS difference, \(I_E=-iS_L\) indeed produces \(+ik/(4\pi)\). The statement that the chosen Lorentzian \(J_a\) have the referenced normalization remains conditional on that external convention: the linked source was outside the authorized reading scope.

For the transgression, direct differential-form expansion gives

\[
\begin{aligned}
\operatorname{cs}(\omega+ie)-\operatorname{cs}(\omega-ie)
&=4i\operatorname{tr}(eR_\omega)-\frac{4i}{3}\operatorname{tr}(e^3)
 -2i\,d\operatorname{tr}(\omega e)\\
&=-2i e_aR^a+\frac{i}{3}\epsilon_{abc}e^ae^be^c
+i\,d(\omega_a e^a).
\end{aligned}
\]

Thus [equation (1.3)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md#L39-L47>) is correct **provided**

\[
\boxed{\frac{k}{4\pi}=a=\frac1{16\pi G},\qquad k=\frac1{4G}.}
\]

This relation is not stated inside the permitted §1 excerpt. If it is already defined in an earlier uninspected section, no correction is needed; otherwise add it beside the definition of \(a\). With it, the exact term is \(dB_E\), \(B_E=a e_a\wedge\omega^a=-a\omega_a\wedge e^a\). Consequently \(l_{\rm gCS}=l_P-B_E\), not \(l_P+B_E\), is the correct wall subtraction. The qualifications about common trivialization and not identifying unrelated global/framing or boundary-polarization data are appropriate.

## 2. Exact wall split, Hessian, and contour

All substantive formulas in [snapshot §§1–2:49–108](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md#L49-L108>) agree with the earlier [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/report.md>): its matrix \(C\) is exactly the present \(U\), with \(K^{ab}=+\epsilon^{ab}{}_cU^c{}_de^d\), and therefore minus the connection's dual contorsion under (1.1).

In particular:

- The derivative term is \(+a\int\Theta\), and the specified wall term is its exact negative for unrestricted \(K\) under \(n^2=1\), \(n\cdot e|_{\partial M}=0\).
- The split is \(I_P=I_g+a\int q(U)\mathrm{vol}\), \(q=(\operatorname{tr}U)^2-\operatorname{tr}(U^2)\). No discarded flux or torsion boundary condition is used.
- In the stated Frobenius-orthonormal coordinates, \(Q=2a(2\Pi_0-\Pi_2+\Pi_1)\), \(\det Q=-2^{10}a^9\), and inertia \((4,5,0)\) are correct. \(Q\) is the Hessian per unit physical volume; the finite-cell Hessian is \(vQ\).
- For the oriented upper rotation of all five symmetric-traceless modes, the bare finite-cell integral is \(i\pi^{9/2}/(\sqrt2z^{9/2})\), and the measure normalized by \((2\pi)^{-9/2}\) gives \(i/(32z^{9/2})\). The contour and the infinite-product caveats are correctly distinguished from the pointwise algebra.
- The \(e^{-3r/2}\) antisymmetric example has finite quadratic tail but divergent separate wall flux. Combining the boundary terms at the same cutoff is the valid ordering; it does not assert a finite-wall spectral boundary-value problem.

**Definite correction:** [snapshot §§1–2:100](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-sections-1-2.md#L100>) (original line 119) still has `dC_A` in the normalized integral after the \(U\) rename. Replace it by `dU_A`. This is typography only; the Gaussian value is unchanged.

The sentence referring to evaluation in §6 is an uninspected forward reference, not a claim endorsed by this audit.

## 3. Coframe/Lorentz measures and the trace-norm condition

The finite-dimensional statements in [snapshot §3.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/supplied-text-audit.n1b4jbut/source-section-3.1.md>) match the independent derivation:

\[
\|\delta e\|^2=\tfrac14\|h\|_F^2+2\|r\|^2,
\qquad
\frac{d^9X}{d^3\lambda_{\rm canonical}}=2^{-9/2}d^6h_F,
\]

or \(2^{-6}d^6h_F\) with matching antisymmetric Frobenius normalization. The raw-component factors \((8\det E)^{-1}\) and \((\det E)^3\), and the resulting \((\det E)^{-5/2}\) after the specified finite-cell Gaussian, are correct. They do not establish a preferred continuum measure.

**Convention to make explicit:** the further trace norm \(\|\psi\|^2/6\) follows if the scalar called \(h_{\rm trace}\) is \(\operatorname{tr}h\) and the target metric field-space norm is the DeWitt choice

\[
\|h\|_{\rm DW}^2=\int\mathrm{vol}\left(h_{ab}h_{ab}-\tfrac12(\operatorname{tr}h)^2\right)
=\|h_{\rm TF}\|_F^2-\tfrac16\|\operatorname{tr}h\|^2.
\]

Then \(\operatorname{tr}h=i\psi\) gives the quoted positive \(\|\psi\|^2/6\). An ordinary Frobenius norm alone would instead have trace coefficient \(1/3\), so the \(1/6\) cannot be inferred from “background L2 norm” without this additional definition. If it is already defined in the uninspected §3, an explicit reference suffices; it is not a numerical error under the displayed DeWitt convention.

With the latter convention and the upper trace contour, the local holomorphic measure conversion is

\[
d^6h_F=d^5h_{\rm TF}\,\frac{d(\operatorname{tr}h)}{\sqrt3}
=i\sqrt2\,d^5h_{\rm TF}\,\frac{d\psi}{\sqrt6}.
\]

Thus that additional spin-zero factor includes \(i\sqrt2\), or \(\sqrt2\) if the phase is deliberately recorded separately from a positive contour density. This finite local observation does not certify its later infinite-dimensional regulation.

Finally, translation of the connection variable by \(B(h)+Dr\) has unit triangular Jacobian on a finite block with compatible variables. This is valid algebra; whether those maps preserve the claimed closed operator domains or common regulated spin spaces is outside this audit and has not been inferred from the local Jacobian.

## Bottom line

No sign or factor correction is needed in (1.2), (1.3) subject to \(k=4\pi a\), or (2.2)–(2.6). Correct the surviving `dC_A` notation, state/reference \(k=4\pi a\), and state/reference the metric DeWitt trace norm and trace-contour phase. The original [CAS evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/evidence.md>) remains the evidence for the settled auxiliary and coframe calculations; this follow-up adds an analytic scoped text comparison, not a fresh kernel run or recertification of any later theorem.
