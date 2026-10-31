# Supplied follow-up: a Hilbert–Schmidt determinant regularization

## Status and provenance

**The proposed repair is valid under the precise conditions below, as a limited relative determinant regularization. It is not the canonical pushforward or a QME theorem.**

This question was supplied by the parent after the independent derivation and the initial [report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/report.md>) had been written. It was not part of the blind derivation. The proposed analytic extension is assessed here without rerunning the already verified finite compression identities.

The useful improvement is that quadratic subtraction removes the spatial linear-trace obstruction for two explicitly defined functionals on \(L^2\cap L^\infty\). It does not show that the un-subtracted regulated BV divergence exists there, that the exact finite-cell density has survived unchanged, or that the chosen subtraction obeys quantum canonical composition.

## 1. Precise setting

Let \(\mathscr E\to\mathbb H^3\) be one of the actual finite-rank bundles of the fixed complete Hodge operator. Let

\[
P=1_{[0,\Lambda^2]}(\Delta),\qquad R=1-P
\]

for the actual full Laplace-type block, acting on \(\mathscr H=L^2(\mathscr E)\). Assume the usual fixed-band bound

\[
\sup_x\|P(x,x)\|_{\rm op}\le C_\Lambda<\infty.
\tag{1.1}
\]

On the homogeneous hyperbolic background this follows from spectral smoothing and homogeneity; it is not an assumption that \(P\) is finite rank. The same argument applies to any stated background where (1.1) has been established. The gap is compatible with this bound but is not itself a substitute for it.

Take a matrix multiplier \(F\in L^2(\operatorname{End}\mathscr E)\cap L^\infty\), with
\(\|F\|_\infty<1\). The \(L^2\) norm uses the fiber Hilbert–Schmidt norm. The stronger \(H^\infty\) condition in the proposed application is allowed but is not needed for these determinant assertions. For coframe comparison on the translation-ghost block, conjugate \(e_0^{-1}f\) to an endomorphism of the internal ghost bundle using the fixed coframe.

Define on \(P\mathscr H\)

\[
A=PM_FP,\qquad
\mathcal D_P(F)=\log\det{}_2(1+A),
\]
\[
\mathcal L_P(F)=\operatorname{Tr}\left(PM_{\log(1+F)-F}P\right).
\tag{1.2}
\]

Both logarithms use their analytic branch at zero. For general non-selfadjoint matrix \(F\), these are complex-valued analytic expressions; positivity statements below require selfadjoint \(F\).

## 2. Hilbert–Schmidt compression and a finite local subtraction

The spectral diagonal gives

\[
\|M_FP\|_{\mathfrak S_2}^2
=\int\operatorname{tr}\left(F(x)^*F(x)P(x,x)\right)dV_x
\le C_\Lambda\|F\|_2^2.
\tag{2.1}
\]

Consequently \(A\in\mathfrak S_2\), with \(\|A\|\le\|F\|_\infty<1\). The regularized determinant is defined and nonzero, and

\[
\boxed{\mathcal D_P(F)
=\sum_{n=2}^{\infty}\frac{(-1)^{n+1}}{n}\operatorname{Tr}(A^n).}
\tag{2.2}
\]

The series converges absolutely since
\(\|A^n\|_1\le\|A\|^{n-2}\|A\|_2^2\).
No trace of \(A\) is used.

Pointwise matrix power estimates likewise give, uniformly for \(\|F\|_\infty\le\delta<1\),

\[
\|\log(1+F)-F\|_{L^1(\mathfrak S_1\text{ on the fiber})}
\le C_\delta\|F\|_2^2.
\tag{2.3}
\]

For any matrix insertion \(G\in L^1\), \(PM_GP\) is trace class: factor it using the pointwise polar decomposition \(G=U|G|\), and use (1.1) to make \(M_{|G|^{1/2}}P\) and \(PM_U M_{|G|^{1/2}}\) Hilbert–Schmidt. In particular,

\[
\|PM_GP\|_1\le C_\Lambda\int\operatorname{tr}|G|\,dV.
\tag{2.4}
\]

Thus \(\mathcal L_P(F)\) is finite, with the absolutely convergent representation

\[
\boxed{\mathcal L_P(F)
=\sum_{n=2}^{\infty}\frac{(-1)^{n+1}}{n}
\operatorname{Tr}(PM_{F^n}P).}
\tag{2.5}
\]

These are continuous analytic functionals on the Banach domain \(L^2\cap L^\infty\), locally with \(\|F\|_\infty<1\). In particular they are defined for the non-\(L^1\) radial coframe example in the independent report. This genuinely repairs that example **for these quadratically subtracted functionals**.

## 3. Exact second-order discrepancy without a divergent linear trace

For a scalar parameter \(s\) with \(|s|\|F\|_\infty<1\), subtract (2.5) from (2.2). The leading term is

\[
\begin{aligned}
\mathcal D_P(sF)-\mathcal L_P(sF)
&=\frac{s^2}{2}\left[
\operatorname{Tr}(PM_{F^2}P)-\operatorname{Tr}((PM_FP)^2)\right]+O(s^3)\\
&=\boxed{\frac{s^2}{2}\operatorname{Tr}(PM_FRM_FP)+O(s^3).}
\end{aligned}
\tag{3.1}
\]

Every displayed trace is trace class separately. Indeed \(M_FP\) and \(PM_F\) are Hilbert–Schmidt, and inserting \(R\) preserves that property. The remainder admits the usual bound of order
\(|s|^3\|F\|_\infty\|F\|_2^2/(1-|s|\|F\|_\infty)\), up to fixed-band constants. There was no subtraction of two infinite linear traces at any stage.

If \(F=F^*\), then

\[
\boxed{\mathcal D_P(sF)-\mathcal L_P(sF)
=\frac{s^2}{2}\|RM_FP\|_{\mathfrak S_2}^2+O(s^3).}
\tag{3.2}
\]

The proposed sign is therefore correct, and the quadratic coefficient is strictly positive when the multiplier mixes the retained and UV subspaces. No positivity is asserted for non-selfadjoint \(F\).

## 4. A stronger restricted positivity statement

For selfadjoint \(F\) and real \(s\) with \(|s|\|F\|_\infty<1\), the complete discrepancy is nonnegative, not just its quadratic term:

\[
\mathcal D_P(sF)-\mathcal L_P(sF)\ge0.
\tag{4.1}
\]

To see this, let \(H=1+sM_F>0\). In the \(P\oplus R\) decomposition write

\[
H=\begin{pmatrix}H_{PP}&B\\B^*&H_{RR}\end{pmatrix},
\qquad B=sPM_FR.
\]

For \(u\ge0\), the Schur formula gives

\[
P(H+u)^{-1}P
=\left(H_{PP}+u-B(H_{RR}+u)^{-1}B^*\right)^{-1}
\ge(H_{PP}+u)^{-1}.
\tag{4.2}
\]

The integral representation of the logarithm therefore gives the positive trace-class operator

\[
\log H_{PP}-P(\log H)P
=\int_0^\infty\left[P(H+u)^{-1}P-(H_{PP}+u)^{-1}\right]du\ge0.
\tag{4.3}
\]

Trace-classness also follows directly by rewriting the left side as
\([\log(1+sA)-sA]-P[\log(1+sM_F)-sM_F]P\), whose two terms were proved trace class above. Taking its trace gives (4.1). For \(s\ne0\), a nonzero mixing block makes the positive resolvent difference nonzero, hence the trace is strictly positive. If \(RM_FP=0\), selfadjointness makes \(P\) reducing and the two prescriptions coincide exactly.

This is a genuine restricted operator theorem. It remains a statement about two specified regularized determinant functionals, not about the full graded canonical map.

## 5. What can legitimately be called a density regularization

For the inverse determinant appearing in the finite-cell semidensity, one may define either background-normalized coefficient

\[
\nu_P^{(2)}(F)=\det{}_2(1+PM_FP)^{-1},
\qquad
\nu_P^{\rm loc}(F)=\exp[-\mathcal L_P(F)].
\tag{5.1}
\]

Both equal one at \(F=0\), both have vanishing first variation there, and both exist on the stated \(L^2\cap L^\infty\) domain. They are in general different, by (3.1). Calling them **chosen relative density coefficients** or **quadratically subtracted determinant prescriptions** is accurate. Calling either the unique canonical semidensity of the exact nonlinear map is not.

Three qualifications are decisive.

1. **The linear term was changed by choice.** On a trace-class/finite-cell configuration, \(\det_2(1+A)=\det(1+A)e^{-\operatorname{Tr}A}\). This is a specified tadpole subtraction, not the same density as the exact finite-cell Jacobian. For example, at \(t=0\), \(\partial_t\log\nu_P^{(2)}(tF)=0\). The exact finite-cell source divergence is instead \(-\operatorname{tr}F\). Thus the same source PDE cannot hold without a corresponding modification of the divergence or counterterms, even before invoking the nilpotent heat-kernel defect.
2. **Modified determinants do not have the ordinary Jacobian composition law.** For Hilbert–Schmidt \(A,B\), with the relevant invertibility assumptions,
   \[
   \det{}_2((1+A)(1+B))
   =\det{}_2(1+A)\det{}_2(1+B)\exp[-\operatorname{Tr}(AB)].
   \tag{5.2}
   \]
   The product \(AB\) is trace class. This multiplicative correction must be tracked if a determinant line or density cocycle is intended. Moreover, raw spectral compression of the actual nonlinear map is not canonical in the first place.
3. **There is no QME consequence.** Neither (5.1) nor (5.2) supplies a regulator-compatible BV Laplacian, the target QME, quantum BV-Stokes, the retained quantum generator, or loop counterterms. The prior fixed-heat mismatch and the distinction between full and UV-subtracted heat traces remain relevant. A finite modified determinant is useful input, not a replacement for those identities.

## 6. Assessment

The supplied repair is mathematically sound and should be retained as a limited positive result. Its clean formulation is:

> A fixed bounded-diagonal spectral band admits two analytic, quadratic-order-normalized relative determinant prescriptions for small \(L^2\cap L^\infty\) matrix coframe perturbations. Their discrepancy is controlled at second order by retained–UV leakage and, for selfadjoint perturbations, is nonnegative exactly. Neither prescription is thereby identified with the semidensity pushforward of the actual geometric–CS canonical isotopy.

No additional numerical or CAS evidence is claimed for this analytic extension. The proof uses standard Schatten factorization, uniformly convergent logarithmic series, and an explicitly displayed resolvent argument. The original finite compression fixture has not been rerun or relabeled as an independent continuum computation.
