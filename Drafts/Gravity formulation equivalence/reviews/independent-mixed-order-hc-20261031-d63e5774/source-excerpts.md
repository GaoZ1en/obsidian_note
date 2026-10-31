# Source provenance and narrowly used excerpts

This records the external statements consulted during the independent audit on **2026-10-31, Asia/Shanghai (UTC+08:00)**. The exact unversioned URLs below were fetched in this session. This is an excerpt/provenance record, not a claim to have inspected the original books or visually checked PDFs.

## A. Song–Tang: Schwartz wave packets

**URL fetched:** https://www.cambridge.org/core/journals/forum-of-mathematics-sigma/article/higher-orbital-integrals-cyclic-cocycles-and-noncommutative-geometry/9C8AFF9E5D5F190859EC8380313B1D8B

**Published article:** Yanli Song and Xiang Tang, *Higher Orbital Integrals, Cyclic Cocycles and Noncommutative Geometry*, Forum of Mathematics, Sigma 13 (2025), e37; DOI 10.1017/fms.2024.115. The HTML says “Published online ... 10 February 2025.” Its fetched page header reported render date `2026-10-30T18:23:10.847Z`.

**Location:** §4.2, Definition 4.6 and Theorem 4.7.

The fetched HTML retains the following prose, but drops some inline mathematical objects:

> Definition 4.6. Let h be a Schwartz-class function from [mathematical object omitted in fetched HTML] into operators on [omitted] that is invariant under the [omitted]-action.

> A fundamental theorem of Harish-Chandra asserts that wave packets are Schwartz functions on G.

> Theorem 4.7. The wave packets associated to the Schwartz-class functions from [omitted] into [omitted] all belong to the Harish-Chandra Schwartz space [omitted]. Moreover, the wave packet operator is adjoint to the Fourier transform.

> Proof. See [Reference Wallach30, Theorems 12.7.1 and 13.4.1] and [Reference Clare, Crisp and Higson4, Corollary 9.8].

The reference list identifies Wallach30 as *Real Reductive Groups. II* (Academic Press, 1992), and Clare–Crisp–Higson4 as *Parabolic induction and restriction via C*-algebras and Hilbert C*-modules*, Compositio Mathematica 152(6) (2016), 1286–1318.

**Use in the report:** the standard finite-K Schwartz wave-packet theorem and continuity/adjointness. The report separately establishes the Gaussian-symbol derivative estimates and intertwining compatibility. It does not claim that a scalar trace identity alone provides admissible Fourier-transform data.

**Qualification:** the original Wallach book and the original Clare–Crisp–Higson proof were not read. No PDF visual validation was performed. The mathematical form of the standard theorem, specialized to finite K-types and unitary principal series, is the harmonic-analysis theorem invoked; the HTML citation corroborates its location and content rather than replacing its hypotheses.

## B. Finis–Grunewald–Tirao: explicit SL(2,C) orbital inversion

**URL fetched:** https://ar5iv.labs.arxiv.org/html/0808.1204

**Article:** Tobias Finis, Fritz Grunewald and Paulo Tirao, *The cohomology of lattices in SL(2,C)*, arXiv:0808.1204. The fetched article header is dated August 8, 2008. The unversioned ar5iv URL was used; no exact arXiv version number is asserted.

**Location:** §5.1, the discussion immediately preceding equation (5.1).

The fetched HTML explicitly contains the following formulas (typesetting normalized here):

- \(t=\operatorname{diag}(e^{u+i\theta},e^{-u-i\theta})\), and \(\sigma_{m,i\nu}(e^{u+i\theta})=e^{i(\nu u+m\theta)}\).
- \(F_f^T(t)=e^{2u}\int_{K\times N} f(ktnk^{-1})\,dk\,dn\).
- \(J_G(t,f)=|D_G(t)|^{1/2}O_t(f)=F_f^T(t)\), with \(|D_G(t)|^{1/2}=|t-t^{-1}|^2\) for the scalar eigenvalue \(t=e^{u+i\theta}\).
- \(\Theta_{m,i\nu}(f)=(2\pi)^{-1}\int F_f^T(e^{u+i\theta})e^{i(\nu u+m\theta)}\,du\,d\theta\).
- \(F_f^T(e^{u+i\theta})=(2\pi)^{-1}\sum_{m\in\mathbb Z}\int_{\mathbb R}\Theta_{m,i\nu}(f)e^{-i(\nu u+m\theta)}\,d\nu\).
- Equation (5.1): \(f(1)=(16\pi^2)^{-1}\sum_m\int\Theta_{m,i\nu}(f)(m^2+\nu^2)\,d\nu\), in the article's stated Haar convention.

**Use in the report:** principal character traces determine regular semisimple orbital integrals, and the identity trace is given by Plancherel. The audit uses physical distance \(\ell=2u\), physical rotation \(\vartheta=2\theta\), \(m=2n\), and \(\nu=2\lambda\). It does not import the article's Haar normalization into the intrinsic heat-coefficient calculation without a conversion.

**Qualification:** that passage initially states these formulas for compactly supported smooth functions. The audit explains their extension to the HC-Schwartz kernels by Schwartz approximation and orbital-integral continuity/explicit absolute bounds. The article concerns finite-covolume lattices in later trace-formula statements; those quotient theorems are not used for the infinite-volume cyclic quotient.

## C. Items not treated as inspected sources

A search result for a Herb paper on Schwartz wave packets was found, but the subsequent fetch failed. It is not relied upon as a read source. Neither original research notes nor other current reviewer reports were consulted.
