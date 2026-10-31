# Supplied-text audit of note 20, sections 3–6

## Verdict and provenance

**The mathematical assertions in §§3–6 pass this audit, with one rendering correction and one useful uniformity clarification.** The retained radial example is genuine: it is already in the actual complete physical spectral band, not merely a smooth nonintegrable tail. The determinant discussion remains correctly limited to chosen relative regularizations and does not claim canonical pushforward or QME.

This is a **supplied-text audit**, requested after the independent proof and its eleven artifacts had been frozen. It is not another independent discovery of the supplied formulas. No kernel was rerun. No parent source or previous frozen artifact was edited.

Inspected source: [note 20](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md>). The inspected version has SHA-256 `f572d3bec740f01ab48cd63bad798d4f42eec47ea5e839523895af8c3bc6f0ef`; its exact byte count and control-character diagnostic are in [source diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-note20-supplied-audit-20261031.SnCnWtBT/source_snapshot_diagnostics.json>). Line references below apply to that version; later source edits are not silently covered by this hash.

The comparison uses the already established conventions and [independent divergence/heat proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/report.md>), together with the separately labeled [supplied determinant follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/supplied-followup-det2-assessment.md>). The fresh additional analytic check in this audit is the actual retained radial construction and its trace implication.

## 1. Small corrections and clarifications

### 1.1 Rendering correction, not a sign correction

At [note 20:225](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L225>) the intended `\bigl` is corrupted by a literal control character U+0008 at column 38. The diagnostic displays the substring as `\!\x08igl[`. Replace that control character and `igl` with the intended TeX command `\bigl`. The mathematical plus sign and the tensor contraction on that line are correct.

This audit reports the issue but does not edit the source.

### 1.2 Uniformity of the local logarithm bound

At [note 20:391](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L391>), the estimate should be understood as

\[
\|\log(1+F)-F\|_1\le C_\delta\|F\|_2^2,
\qquad \|F\|_\infty\le\delta<1.
\]

The constant is uniform on each such smaller ball, not over the entire open unit ball. A scalar negative eigenvalue approaching minus one shows why a universal constant would fail. This is a clarification of the usual implicit dependence, not a failure of the proposed determinant construction.

For an application of §6 to the coframe, it would also be useful to say explicitly that the multiplier acts on the bundle on which \(P\) acts. On the translation-ghost bundle use \(fe_0^{-1}\), conjugate by the fixed coframe to \(F=e_0^{-1}f\). The abstract operator statement already reads consistently if that compatibility is understood.

## 2. Section 3: divergence, source sign, and cell normalization

The formula at [note 20:220–250](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L220-L250>) agrees with direct coefficient-first differentiation:

\[
\Delta_{{\rm BV},0}\Gamma_t
=-\operatorname{tr}(B_tF)
+\frac{t}{\kappa}\operatorname{tr}[B_te_0^{-1}(\iota_{\chi_t}W)].
\]

The negative ghost contribution comes from \((\zeta,T)\). The positive physical contribution comes from \((f,E)\), with the antisymmetry of the two-form and the ordering of the odd \(\chi,W\) coefficients both essential. The other two conjugate contractions vanish. In particular the displayed initial value \(-\operatorname{tr}F\) is correct, as is the possible nonzero nilpotent value at \(F=0,t\ne0\).

The semidensity direction is faithful. With \(\nu_t=\det(1+tF)^{-1}\),

\[
\partial_t\log\nu_t=-\operatorname{tr}(B_tF),\qquad
(\log\nu_t,\Gamma_t)
=-\frac{t}{\kappa}\operatorname{tr}[B_te_0^{-1}(\iota_{\chi_t}W)].
\]

Their combination obeys the right-action source equation
\(\partial_t\log\nu=(\log\nu,\Gamma)+\Delta\Gamma\), rather than an equation omitting convection. This agrees with the Euclidean sign in §1. The text expressly limits this to finite canonical cells and correctly uses integrated cell momenta for non-unit cell weight; it does not replace the coincident-mode trace by an unregulated spacetime integral.

## 3. Section 4: actual heat kernels and the finite-part distinction

The physical and ghost heat blocks in [note 20:254–277](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L254-L277>) are the actual full operators:
\(R_K=\nabla^*\nabla+2\mathsf T\) and \(R_1=\nabla^*\nabla+2\). The nonzero diagonal insertions are on one rank-nine physical copy and one rank-three ghost copy. Stating that the other diagonal copy has zero insertion, rather than deleting that BV sector, is correct.

The first-coefficient calculation at [note 20:279–297](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L279-L297>) has the correct sign and factor four:

\[
a_{1,\rm phys}=-1-2\mathsf T,\qquad a_{1,\rm ghost}=-3,
\qquad \operatorname{tr}(\mathsf T A)=-\operatorname{tr}A.
\]

Thus the naive source-PDE defect is
\((4\pi\varepsilon)^{-3/2}[4\varepsilon\int\operatorname{tr}A+O(\varepsilon^2)]\).
The text properly identifies this as a nonzero divergent half-integer heat coefficient for the particular fixed-heat prescription, not a proved finite quantum anomaly or a no-go theorem for counterterms.

The full-versus-UV assertion at [note 20:299–311](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L299-L311>) is also correct under its displayed assumptions: an \(\varepsilon\)-independent smooth compactly supported multiplication insertion, no spatial boundary, the actual Laplace-type operator, and a fixed paired band. The full local constant coefficient vanishes in three dimensions. Subtracting the retained analytic heat trace leaves

\[
\operatorname{FP}\operatorname{Tr}(M_A(1-P)e^{-\varepsilon\Delta_{m H}})
=-\operatorname{Tr}(PM_AP).
\]

The note preserves the BV parity signs and explicitly declines a QME/BV-Stokes inference. Compact support here is not silently attributed to retained spectral fields; §5 addresses their different spatial behavior.

## 4. Section 5: direct analytic verification of the retained radial example

Let \(b>0\), \(b^2<\Lambda^2-5\), and

\[
\phi_b(r)=\frac{1-\cos(br)}{r\sinh r},\qquad
u_b(r)=\sinh r\,\phi_b(r)=\frac{1-\cos(br)}r.
\]

I use \(\nu_b\) here only as a radial scalar, to avoid confusing the note's radial \(u\) with an operator variation. It is not a BV semidensity.

### 4.1 Smoothness and boundedness

Both numerator and denominator of \(\phi_b\) vanish quadratically at the origin. Their quotient is an even smooth function of \(r\), with value \(b^2/2\). Moreover

\[
0\le\phi_b(r)\le b^2/2
\]

by \(1-\cos(br)\le b^2r^2/2\) and \(r\sinh r\ge r^2\). Hence \(f=\sigma\phi_b e_0\) is uniformly small for small \(\sigma\), and the coframe factor is positive. This verifies the nondegenerate-coframe qualification independently of merely naming a small parameter.

### 4.2 Actual spectral support

For the nonnegative scalar Laplacian on radial functions,

\[
L_{\rm sc}=-\partial_r^2-2\coth r\,\partial_r,
\qquad
(\sinh r)L_{\rm sc}(\sinh r)^{-1}=-\partial_r^2+1.
\]

Regularity at the origin becomes the Dirichlet condition \(\nu_b(0)=0\). The sine-transform identity is exact:

\[
\nu_b(r)=\int_0^b\sin(\lambda r)\,d\lambda.
\]

With the unitary sine transform \(\mathcal S\),
\(\mathcal S\nu_b=\sqrt{\pi/2}\,1_{[0,b]}\).
Thus \(\nu_b\) is an actual \(L^2\) vector with half-line spectral support \([0,b^2]\); \(\phi_b\) has scalar spectrum \([1,1+b^2]\). No nonnormalizable single radial power or generalized eigenvector has been substituted for an \(L^2\) field.

The soldering form is parallel and \(\mathsf T(1)=2\,1\). Therefore the physical trace block acts by

\[
R_K(\phi_b e_0)=(L_{\rm sc}+4)\phi_b\,e_0.
\]

Its support lies in \([5,5+b^2]\subset[0,\Lambda^2]\). Consequently \((0,\sigma\phi_b e_0)\) is genuinely retained by the actual physical projection and belongs to every Sobolev space. This is precisely the substantive improvement over an arbitrary smooth radial tail.

### 4.3 Norm and failure of \(L^1\)

Sine-transform Plancherel gives

\[
\|\nu_b\|_{L^2(0,\infty)}^2=\frac{\pi b}{2},
\qquad
\|\phi_b\|_{L^2(\mathbb H^3)}^2=4\pi\|\nu_b\|_2^2=2\pi^2b.
\]

Equivalently one can use
\((1-\cos x)^2=2(1-\cos x)-\frac12(1-\cos2x)\)
in the elementary integral. The numerical coefficient in the note is correct.

In contrast,

\[
\int\phi_b\,dV=4\pi\int_0^\infty\frac{\sinh r}{r}(1-\cos br)\,dr=+\infty.
\]

For example, on intervals
\([\frac{\pi/2+2\pi n}{b},\frac{3\pi/2+2\pi n}{b}]\),
\(1-\cos br\ge1\). Their positive contributions grow exponentially with \(n\). There is no cancellation issue, since \(\phi_b\ge0\).

### 4.4 The divergent trace is genuinely retained

At cubic order \(\gamma_3=\Gamma_3|_P\); setting the external ghosts and antifields to zero is done only after taking derivatives. The physical cubic contraction vanishes, and the translation-ghost contraction is

\[
\Delta_{{\rm BV},P}\gamma_3
=-\operatorname{Tr}(P_0M_{\sigma\phi_b}P_0).
\]

For \(\Lambda^2>5\), the actual ghost band, with bottom four, is nonempty. Homogeneity makes \(q_\Lambda=\operatorname{tr}P_0(z,z)\) finite, positive, and spatially constant. Positivity gives the extended trace identity by Tonelli,

\[
\operatorname{Tr}(P_0M_{\sigma\phi_b}P_0)
=\|M_{\sqrt{\sigma\phi_b}}P_0\|_{\mathfrak S_2}^2
=\sigma q_\Lambda\int\phi_b\,dV=+\infty.
\]

This is not an ambiguous subtraction of graded infinite traces: at this field degree only this positive ghost-block trace remains, with its overall BV minus sign. Since \(\phi_b\in L^2\), the compressed multiplier is nevertheless Hilbert–Schmidt, illustrating exactly why the modified determinant in §6 can exist while its ordinary linear trace does not.

The full and UV heat multipliers have the same homogeneous positive-diagonal mechanism at every positive heat time. Higher total-field-degree terms cannot cancel the independent formal degree-one coefficient. These claims at [note 20:352–370](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L352-L370>) are justified and correctly limited to an off-shell trace obstruction, not a physical anomaly or impossibility of every renormalization.

## 5. Section 6: determinant scope and the sign of leakage

Subject to the small-ball constant clarification above, [note 20:374–404](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L374-L404>) faithfully states the limited theorem:

- bounded spectral diagonal and \(F\in L^2\cap L^\infty\) imply \(PM_FP\in\mathfrak S_2\);
- \(\log(1+F)-F\in L^1\), so its band-sandwiched insertion is trace class;
- the two functionals are defined directly by quadratic-starting series, without taking the divergent linear trace;
- their difference starts with
  \[
  +\frac{\sigma^2}{2}\operatorname{Tr}(PM_F(1-P)M_FP),
  \]
  equal to \(\sigma^2\|(1-P)M_FP\|_{\mathfrak S_2}^2/2\) for selfadjoint \(F\);
- the determinant-two composition factor is \(e^{-\operatorname{Tr}(AB)}\), with the written negative sign.

The supplied text appropriately refuses to identify either functional with the source semidensity in §3. It also does not claim that spatial subtraction alone provides the stationary normalized insertion or a continuum QME. The stronger exact positivity statement for selfadjoint perturbations in the separate follow-up is compatible with this section, but is not needed to make its present second-order assertion correct.

## 6. Scope of this audit

**Passed:** §§3–6 mathematical signs, source and trace-domain qualifications, actual retained radial spectral support, its norm and positive infinite trace, and the limited determinant-two construction.

**Requested correction:** the single U+0008 rendering defect in (16).

**Requested clarification:** make the logarithmic estimate uniform only on \(\|F\|_\infty\le\delta<1\); optionally spell out the multiplier/bundle identification in §6.

**Not audited here:** the finite pushforward derivation in §§1–2 or the ultraviolet Hessian statements in §7. Their appearance in the read context does not mean they received an additional independent verification in this audit. No new CAS, numerical spectral computation, or continuum quantum theorem is claimed.
