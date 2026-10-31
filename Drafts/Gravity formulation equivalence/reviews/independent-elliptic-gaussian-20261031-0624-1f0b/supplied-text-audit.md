# Supplied-text audit after freezing the independent investigation

## Verdict and scope

**The action sign, factor two, Hermitian augmentation, exact balanced square, complete augmented domain, eta symmetry, and finite multiplier/ghost normalization in the supplied sections agree with the independent derivation. I found no required sign or scalar-normalization correction. Two completion/qualification repairs are needed if this note is to be self-contained at its stated theorem level: explicitly state the ungaugefixed closed domain/kernel, and distinguish the matched metric contour/density transfer hypothesis from the imported metric trace value.**

This is a supplied-text audit, not a second independent derivation. It began only after the independent report, runnable sources, failed and corrected tool records, and results were frozen with SHA-256 hashes. The [frozen independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/derivation.md>) and its evidence have not been edited during this audit.

Reviewed text: [parent note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md>), opening balanced claims, sections 1–4 (lines 24–218), and the balanced verification claims in section 7 (lines 336–342). Snapshot SHA-256: `b591df871d9183dca312319f78d77c92d39dab2b9cfc98761cae6f4f8f651bb3`; fingerprint time 2026-10-31T06:41:27+0800. No other parent/reviewer source was read. Sections 5–6 were not inspected. The opening displays the nonzero-mu coefficient, but this audit neither recalculates nor certifies it. It also does not certify the imported metric coefficient/product, the source-family theorem, or the parent's xAct artifacts.

## 1. Checked signs and Gaussian normalization: no repair required

1. [Hessian, lines 54–63](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L54-L63>): `I2=a<q,Kq>`, `J=2aK`, with diagonal blocks `(T,-T)` and off-diagonal curl, is exactly what the stated CS action produces. The complex-bilinear continuation of the original real quadratic pairing is correctly distinguished from a Hermitian absolute square.

2. [Gauge/augmentation, lines 65–86](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L65-L86>): the real proper G, its Hermitian adjoint, `M=G†G=R1 pair`, and augmented Hessian `2a D_mu` are consistent. The ghost factor is det M, not its square root.

3. [Fourier density, lines 88–104](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L88-L104>): for normalized original field/parameter densities, `(2a/i) db/sqrt(2pi)` on b=iR indeed gives `sqrt(2pi) delta(z)`. For mu=-sigma<0, direct integration gives `sqrt(2a/sigma) exp(-a z²/sigma)`. Both coefficients and signs are correct. The plain-Lebesgue version is `(a/(pi i)) db`, as stated in the parent in equivalent notation.

4. [Spectral branch, lines 154–164](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L154-L164>): `Arg(negative)=-pi` is the correct determinant branch for a +i negative-mode Gaussian contour. With the grading and zeta_R(0)=0, equation (3.1) has no missing phase. Without zeta_R(0)=0 there would be a term `-i pi zeta_R(0)/2` in log det D0, so retaining the explanatory sentence after (3.1) is important.

5. [Finite gauge block, lines 198–208](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L198-L208>): the finite normalized Gaussian of the real symmetric block `[[0,sqrt(r)],[sqrt(r),mu]]` is `i/(2a sqrt(r))` on the upper thimble, independently of mu. Multiplying by `(2a/i)r` gives sqrt(r), exactly the original L2 quotient density. The determinant-one shear and the gap estimate are correct for finite real mu. This verifies only the finite block, not any nonzero-mu continuum eta coefficient.

## 2. Complete operator statements: correct, with one missing domain specification

[The balanced square and augmented domain, lines 108–150](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L108-L150>), agree with the fresh calculation:

\[
 D_0^2=R_0^{\oplus2}\oplus R_1^{\oplus4}\oplus R_2^{\oplus2},
 \quad\mathcal D(D_0)=H^1,\quad\mathcal D(D_0^2)=H^2.
\]

The deficiency-vector argument is valid with the usual complete Laplace-type maximal-domain theorem; the graph estimate and global bounded-geometry elliptic regularity supply the stated Sobolev domains. The supplied gaps can also be justified immediately by `R2=Delta_D+1`, `R1=ordinary Hodge Laplacian+4`, and `Delta0>=1` on the cyclic quotient. The parallel grading cancels the diagonal eta kernel, including nonidentity images, rather than merely its principal symbol.

**Required completion R1:** specify the selfadjoint closure of the ungaugefixed K/J, and the domain of its physical restriction in [lines 188–190](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L188-L190>). A suitable addition is:

\[
 \mathcal R=G(H^1),\quad\mathcal T=\ker G^\dagger\subset L^2,
 \qquad
 \mathcal D(\bar K)=\mathcal R\oplus(H^1\cap\mathcal T),
 \qquad \ker\bar K=\mathcal R,
 \quad\mathcal D(K|_{\mathcal T})=H^1\cap\mathcal T.
\]

Here `ker G†` is understood distributionally. The closed range follows from M>=4, and the transverse gap follows from the already proved square. This is not a correction to the claimed augmented H1 domain; it prevents that domain from being silently assigned to the nonelliptic ungaugefixed Hessian. In particular, u in H1 but not H2 may have Gu in L2 but not H1, and every such Gu is still in the closed zero eigenspace of K. If the note intentionally states only the augmented theorem, identify the ungaugefixed closure/kernel as omitted instead of implying that all requested domains were covered.

For fixed mu, bounded perturbation gives the same augmented H1 domain. The isometry U_G intertwines the relevant Sobolev graph norms because `D0² G=G M` in the field block; the homogeneous-functional-calculus assumption already stated in the parent is sufficient for its trace use. No arbitrary spatial finite-part cyclicity is justified or needed here.

## 3. Spectral determinant versus metric transfer

[Equation (3.2), lines 166–174](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L166-L174>), is correct as the balanced normalized elliptic-quotient determinant in the stated heat/zeta prescription. The fixed multiplier scalar drops out because its count is taken with the positive M prescription and zeta_M(0)=0, rather than because the scalar was omitted at finite dimension.

The operator expression can be reduced, independently of a metric Hessian, by the complete York intertwiners:

\[
 K_{\rm York}v=\nabla_{(i}v_{j)}-\tfrac13g_{ij}\nabla\cdot v,
 \quad R_2K_{\rm York}=K_{\rm York}R_1,
 \quad K_{\rm York}^\dagger K_{\rm York}
 =\tfrac12R_1-\tfrac16\operatorname{grad}\operatorname{div}\ge2.
\]

Together with `R1 grad=grad R0` and Delta0>=1, this gives closed orthogonal decompositions and the modulus `sqrt(det R1_transverse / det R2_TT)` in an equivariant direct-sum-compatible prescription. It still does not choose a physical metric integration cycle or measure.

**Required qualification R2:** [the opening equality](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L5-L22>) and [the inference at line 177](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L177>) need an explicit distinction between these two imported assertions:

- the value of the metric trace, including its local source derivatives; and
- a metric/auxiliary-to-first-order quotient theorem matching the original L2 densities, allowed proper domains, source-dependent Jacobian normalization, conformal/auxiliary cycles and their orientation, and the same spatial finite-part prescription.

An imported numerical metric trace is not itself the second theorem. The statement at [line 104](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L104>) chooses a transported metric/auxiliary cycle and also chooses the upper augmented eigenmode cycle. Their agreement, with the same orientation and source-dependent measure, must either be supplied as an explicit hypothesis or cited to the precise prior result proving it. No whole-L2 determinant-one change of variables may be substituted for this: the connection-elimination shear contains a derivative of the coframe fluctuation and needs the finite regulator/Sobolev formulation.

A minimal replacement for the inferential sentence is:

> Equation (3.2) proves the balanced Hermitian quotient determinant in the stated normalization. Under the previously established metric/auxiliary transfer theorem [precise theorem/line citation], including equality of the transported quotient cycle with the upper cycle and the original L2 density Jacobians in the common trace prescription, this equals the imported metric Gaussian. The imported source-dependent metric evaluation then gives the first line of (0.1).

If those transfer hypotheses have not in fact been proved in the earlier comparison, qualify the section title and opening as a conditional equality, rather than treating the imported trace value as the missing proof. This audit did not read that earlier comparison and therefore does **not** assert that its theorem is absent or incorrect. It identifies the logical input needed in the currently supplied text.

## 4. Verification boundary

The balanced claims of [section 7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L336-L342>) may cite this investigation for the action-derived Hessian, full balanced square, essential selfadjointness and Sobolev domains, zero-mode/gap statements, exact balanced eta cancellation, and the finite Fourier-to-upper-thimble normalization bridge. The preservation of the initial failed shape comparisons and corrected run makes the algebraic provenance explicit.

Do not cite this audit as a verification of the nonzero-mu eta/phase polynomial, the imported metric coefficient/product, source-family contact terms, or the parent's eighteen-group xAct output. Those were outside scope. No parent file or frozen independent artifact was modified.
