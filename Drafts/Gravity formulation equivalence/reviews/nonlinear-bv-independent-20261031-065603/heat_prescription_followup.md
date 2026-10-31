# Separate non-blind follow-up: a specified coincident-heat finite part

## Verdict

**The proposed vanishing is valid under precise hypotheses.** For a fixed smooth Laplace-type operator on a smooth boundaryless three-dimensional background, a fixed smooth compactly supported order-zero insertion has zero spatial-first **minimal** heat finite part. This includes the finite Grassmann-valued coefficient insertions associated with the displayed local log-density and leading nilpotent BV-density correction.

This claim was supplied by the parent **after** the independent calculation was frozen. It is a separate, non-blind assessment, not part of the blind derivation. The frozen [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/derivation.md>) and its [SHA256 manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/independent_result.sha256>) have not been changed for this assessment.

The vanishing is a result about one specified localized trace prescription. It is not a quantum master equation, a canonical-map theorem for regulated functional integrals, or a statement that multiplication preserves spectral-cutoff fibers.

## 1. Precise statement and proof

Let \((M,\bar g)\) be a smooth, complete, boundaryless Riemannian manifold of dimension three. An asymptotic conformal boundary at infinite physical distance is compatible with this local statement; a finite boundary with a spectral boundary condition is not included. Let \(R\) be a fixed Laplace-type operator on a finite-rank smooth bundle, with a self-adjoint semibounded realization for which a smooth heat kernel exists. Assume the usual local heat parametrix is valid uniformly on every compact set. No zero-mode or other finite-rank spectral subspace is removed.

Let \(B(x)\) be a smooth compactly supported bundle endomorphism, independent of the regulator parameter \(t\). Define the spatial-first localized trace by

\[
 T_B(t)=\int_M\operatorname{vol}_{\bar g}(x)\,
          \operatorname{tr}_{\rm fiber}[B(x)K_R(t;x,x)].
\tag{H1}
\]

When the localized operator is trace-class this agrees with \(\operatorname{Tr}(M_Be^{-tR})\); the diagonal-integral definition makes clear which object is being used on a noncompact space, without assuming the full heat operator is trace-class.

The boundaryless diagonal parametrix is

\[
 K_R(t;x,x)\sim(4\pi t)^{-3/2}\sum_{j=0}^{\infty}t^j a_j(x;R).
\tag{H2}
\]

Compact support and uniformity allow integration of this expansion. If
\(A_j(B,R)=\int\operatorname{vol}_{\bar g}\operatorname{tr}(B a_j)\), then

\[
 T_B(t)=(4\pi)^{-3/2}\left[A_0t^{-3/2}+A_1t^{-1/2}+O(t^{1/2})\right].
\tag{H3}
\]

There is no integer \(j\geq0\) for which \(j-3/2=0\). Consequently

\[
 \operatorname{FP}^{\rm min}_{t\to0^+}T_B(t)
 :=\lim_{t\to0^+}\left\{T_B(t)-(4\pi)^{-3/2}
       [A_0t^{-3/2}+A_1t^{-1/2}]\right\}=0.
\tag{H4}
\]

No finite counterterm is added in the word “minimal.” Adding one defines a different prescription.

For a finite formal Grassmann expansion of \(B\), apply (H1)–(H4) coefficientwise. Nilpotence creates no new power of \(t\). The same applies when derivatives of fields, ghosts, or antifields appear only as smooth coefficients inside the order-zero multiplication operator \(B\).

## 2. Application to the independently computed local coefficients

Write \(r=\sqrt{\det(\bar g^{-1}g)}\), with \(g-\bar g\) compactly supported. The finite joint density was \(r^{-7/2}\), so its order-zero logarithmic insertion is \(B=-(7/2)\log r\) times the appropriate bundle identity/multiplicity. Each term of its cubic expansion is a smooth compactly supported multiplication insertion. Equation (H4) gives zero for their renormalized coincident trace in this prescription.

Similarly the leading weighted-BV-Laplacian coefficient

\[
 B_F(x)=\frac1{2a}e_a{}^\mu\epsilon_{\nu\mu\sigma}
                \xi^\nu\omega_a^{*\sigma}
\tag{H5}
\]

is a finite nilpotent order-zero coefficient when ghosts and antifields have the compact support used in the independent report. If its coincident functional contraction is **defined** by the fixed-background heat kernel in (H1), its spatial-first minimal finite part vanishes coefficientwise.

This does not say that the finite block density equals one as a finite-dimensional density. It says that this particular prescription assigns zero to its traced local logarithm. Matched dynamical geometric target densities already canceled the finite residual without this prescription; the heat statement supplies a different, explicitly specified treatment of the local trace relative to frozen densities.

## 3. Sharp counterexamples when hypotheses change

### 3.1 Removing zero modes produces a finite term

If a zero-mode projector \(P_0\) is subtracted, then

\[
 T_B'(t)=T_B(t)-\operatorname{Tr}(B P_0),\qquad
 \operatorname{FP}^{\rm min}T_B'=-\operatorname{Tr}(B P_0).
\tag{H6}
\]

On a flat three-torus, for the scalar Laplacian, the constant zero mode gives
\(-\operatorname{Vol}^{-1}\int B\) in (H6). The unprimed heat expansion still has no constant term; there is no contradiction, since a separately removed finite spectral projector is not part of its local heat coefficients.

### 3.2 A finite spectral wall can produce a constant term

Take the flat Dirichlet half-space \(\mathbb R^2\times\mathbb R_+\), with normal coordinate \(r\), and \(B(y,r)=b(y)\phi(r)\), smooth and compactly supported up to the boundary. The diagonal heat kernel is

\[
 K_D(t;y,r;y,r)=(4\pi t)^{-3/2}(1-e^{-r^2/t}).
\]

Expand the image contribution using
\(\int_0^\infty r^k e^{-r^2/t}dr=\tfrac12\Gamma((k+1)/2)t^{(k+1)/2}\). The \(k=2\) term yields

\[
 \operatorname{FP}^{\rm min}\operatorname{Tr}(B e^{-t\Delta_D})
 =-\frac1{64\pi}\int_{\mathbb R^2} b(y)\,\phi''(0)\,d^2y.
\tag{H7}
\]

For \(\phi=e^{-\alpha r^2}\), this is \(\alpha\int b/(32\pi)\neq0\). Multiplying \(\phi\) by a compact cutoff equal to one near \(r=0\) changes no constant term, so this is also a compactly supported counterexample. Conversely, if the insertion is supported a fixed positive distance from the wall, the reflected contribution is exponentially small at short time and does not create a power-series finite part.

Thus regulating on a complete boundaryless extension is different from imposing a finite-wall spectral boundary condition, even when a classical wall completion has already been specified.

### 3.3 Spectral compression is not logarithmic multiplication

Noncommutation of multiplication with a spectral projection is not resolved by (H4). Already for the positive matrix

\[
 M=\begin{pmatrix}2&1\\1&2\end{pmatrix},\qquad P=\begin{pmatrix}1&0\\0&0\end{pmatrix},
\]

one has, on the one-dimensional image of \(P\),

\[
 \log\det(PMP)=\log2,\qquad
 \operatorname{Tr}(P\log M P)=\tfrac12\log3.
\tag{H8}
\]

Thus a prescription for \(\operatorname{Tr}(M_{\log r}e^{-tR})\) is not automatically the determinant of a multiplication map compressed to finitely many eigenmodes. The finite point/jet calculation and a continuum mode cutoff remain different constructions.

## 4. Derivative and coincident-functional caveats

1. **A derivative of a coefficient is still order zero.** If \(B\) contains \(\partial\xi\), \(\partial g\), etc. but does not differentiate the heat kernel, (H4) applies directly.
2. **A fixed finite-order local differential insertion also has a useful parity extension.** Differentiating the off-diagonal parametrix and then restricting to the diagonal introduces integer powers of \(t^{-1}\); first derivatives of the geodesic phase vanish on the diagonal. A compactly supported, \(t\)-independent differential operator therefore has diagonal powers \(t^{-3/2+k}\) with integer \(k\), possibly starting at more negative \(k\). There is still no constant term. This requires analyzing that differential insertion, rather than blindly treating it as an endomorphism. The flat second-derivative example was checked explicitly below.
3. **Nonlocal/pseudodifferential insertions are not covered.** Spectral projectors, inverse operators, absolute-value operators, and nonlocal gauge-fixing Green functions may have different expansions. Products of coincident functional contractions or coupled regulator limits cannot be identified automatically with the single trace (H1).
4. **Compact support is substantive.** For a full Brown–Henneaux/proper-\(H^1\) field space, the spatial integral can involve an infinite-volume/asymptotic renormalization. Interchanging that subtraction, the heat limit, and functional variations needs a separate uniform argument. The present theorem does not supply it.
5. **A local finite part is not a determinant or a QME.** An integrated proper-time determinant uses an additional \(dt/t\) integral and can have a nonzero finite answer even though (H4) vanishes. A quantum master identity additionally requires a consistently regulated BV bracket/Laplacian, the nonminimal sector, the transported gauge-fixing Lagrangian, and compatible counterterms. A fixed background regulator is not automatically covariant under the dynamical BRST transformation.

Within the stated boundaryless Laplace-type class, the zero local finite part is robust. It should be stated as that limited theorem, not as a universal regulator-independence or quantum-equivalence result.

## 5. Actual computational evidence

The safe self-contained input [heat_followup_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/heat_followup_checks.wl>) was executed after the independent freeze. Its [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/heat_followup_checks.actual.txt>) reports:

- flat massive three-dimensional heat insertion: minimal finite part \(0\);
- flat second-derivative insertion: minimal finite part \(0\);
- flat Dirichlet half-space with Gaussian normal smearing: \(\alpha\int b/(32\pi)\);
- boundary-jet formula residual: \(0\);
- compression counterexample: \(\log2-\tfrac12\log3>0\).

The outer kernel message list was empty. These checks support the explicit examples and coefficients; the general theorem is the analytic compact-support parametrix argument (H2)–(H4), not an extrapolation from the examples.
