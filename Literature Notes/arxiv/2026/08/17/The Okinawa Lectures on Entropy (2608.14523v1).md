---
paper id: 2608.14523v1
title: "The Okinawa Lectures on Entropy"
authors:
  - Klaas Landsman
publication date: 2026-08-14
abstract: |-
  Graduate lectures connect classical entropy, large deviations and hypothesis testing to quantum relative entropy, modular theory, Haagerup noncommutative Lp spaces and quantum dynamical entropy.
comments: "259 pages, 8 figures"
url: https://arxiv.org/abs/2608.14523v1
summary: "A broad, mathematically explicit entropy course and modular-theory reference; it contains no black-hole application or second-law theorem."
tags: []
---

# Direct verdict and claim tier

Correct as a graduate-level synthesis under the hypotheses stated for each theorem. The source explicitly says that none of the material is original except possibly its arrangement, general approach and some proofs. Its useful contribution is a single route

\[
\text{large deviations}
\longrightarrow
\text{hypothesis testing}
\longrightarrow
\text{relative quantum entropy}
\longrightarrow
\text{modular theory and Haagerup }L^p,
\]

plus classical and quantum dynamical entropy.

The statement should be rewritten as: these lectures provide mathematical prerequisites that may be used in black-hole entropy work. They do **not** derive the Bekenstein--Hawking formula, discuss a gravitational generalized entropy, prove a second law or construct a quantum reference-frame entropy map. The black-hole formula appears only as an unsolved final exercise; the preface and abstract expressly omit the application and the second law.

# Classical entropy and large deviations

For a finite prior \(q\) and empirical measure \(L_N\), the basic rate function is the Kullback--Leibler divergence

\[
D(p\Vert q)=\sum_a p(a)\log\frac{p(a)}{q(a)}.
\]

The finite-alphabet Sanov theorem is stated in its full upper/lower-bound form and, for continuity sets \(B\), gives

\[
\lim_{N\to\infty}\frac1N\log q^N(L_N\in B)
=-\inf_{p\in B}D(p\Vert q).
\]

Cramer's theorem contracts this rate function to the sample mean. The lectures then formulate a general large-deviation principle with a lower-semicontinuous rate function, exponential tightness where needed, and the Varadhan, Bryc, Gartner--Ellis and Kifer tools. The distinction between weak-law, central-limit and order-one large fluctuations is maintained.

The pressure/rate duality is

\[
\Lambda_q(t)=\log\langle e^{tE}\rangle_q,
\qquad
I_q(x)=\sup_t\{tx-\Lambda_q(t)\}.
\]

The statistical-mechanics chapters apply this to Boltzmannian empirical measures, Gibbs measures and thermodynamic limits. These are classical probability results; they should not be read as quantum large-deviation theorems.

# Hypothesis testing as the bridge

For asymmetric binary testing, Stein's exponent gives the operational role of relative entropy:

\[
\lim_{N\to\infty}\frac1N\log\beta_N^\varepsilon(p_0,p_1)
=-D(p_0\Vert p_1).
\]

The finite-dimensional quantum version replaces probability distributions by density matrices and tests by effects. Its exponent is the Umegaki entropy

\[
D(\rho\Vert\sigma)
=\operatorname{Tr}\rho(\log\rho-\log\sigma),
\]

provided \(\operatorname{supp}\rho\subseteq\operatorname{supp}\sigma\), and is \(+\infty\) otherwise. The Chernoff, Stein and Hoeffding regimes are treated separately. Data processing, joint convexity, strong subadditivity and the Petz-type relative Renyi family are presented at their appropriate finite-dimensional tier.

The notes correctly warn that results called “quantum Sanov” are often hypothesis-testing theorems rather than a full quantum analogue of the classical empirical-measure large-deviation principle.

# Modular formulation of entropy

For a von Neumann algebra \(M\) in standard form and faithful normal states represented by \(\Omega_1,\Omega_2\), the relative Tomita operator is

\[
S_{12}A\Omega_2=A^\ast\Omega_1,
\qquad
\Delta_{12}=S_{12}^\ast S_{12}.
\]

Araki's entropy is written equivalently as

\[
D(\omega_1\Vert\omega_2)
=\langle\Omega_2,\Delta_{12}\log\Delta_{12}\,\Omega_2\rangle
=-\langle\Omega_1,\log\Delta_{21}\,\Omega_1\rangle.
\]

For \(M=B(H)\), standard form on the Hilbert--Schmidt space gives

\[
\Delta_{21}X=\rho_2X\rho_1^{-1},
\]

and reduces the modular formula to Umegaki's trace formula. In the commutative case it reduces to Kullback--Leibler divergence. Support projections extend the definition from faithful to arbitrary normal states.

# Haagerup noncommutative Lp spaces

For an arbitrary \(M\), including type III, the construction passes to the semifinite core

\[
N=M\rtimes_{\sigma^\omega}\mathbb R
\]

with its dual action and canonical semifinite trace. The Haagerup spaces are scaling eigenspaces,

\[
L^p(M)=
\left\{
X\,\middle|\,
\widehat\sigma_E(X)=e^{-E/p}X
\right\}.
\]

They provide \(L^\infty(M)\cong M\), \(L^1(M)\cong M_\ast\), a standard-form Hilbert space \(L^2(M)\), and a canonical density \(h_\omega\in L^1(M)^+\) for each normal state:

\[
\omega(A)=\operatorname{tr}_H(h_\omega A).
\]

The crucial scope point is that \(\operatorname{tr}_H\) is not a trace on the original type-III algebra. The density operators are generally unbounded operators affiliated with the crossed-product core, and distinct \(L^p(M)\) spaces intersect only at zero in this realization. The trace-looking entropy formula is therefore a Haagerup-core statement, not evidence that a type-III local algebra secretly has ordinary trace-class density matrices.

# Dynamical entropy

The final chapter develops the Connes--Narnhofer--Thirring entropy from finite-dimensional subalgebras, state decompositions and abelian models. For hyperfinite algebras a noncommutative Sinai approximation makes the quantity computable, and the quantum Bernoulli shift has entropy equal to the one-site von Neumann entropy.

This is a dynamical-system entropy. It is distinct from Umegaki/Araki relative entropy, entanglement entropy, generalized entropy and thermodynamic second-law entropy.

# Local corrections

The main theorem statements survive three localized source errors:

- In the overview of quantum testing, both projection outcomes are said to confirm \(\mathsf H_0\); the zero-eigenvalue outcome should confirm \(\mathsf H_1\).
- In the Schmidt-reduction formula, the bra in \(\rho_B\) is printed as \(\langle u_{a(i)}|\); it should be \(\langle u_{b(i)}|\).
- In the derivation of the two Araki formulas, the final line retains \(\Delta_{12}\). Using \(\Delta_{12}=J\Delta_{21}^{-1}J\) gives \(-\langle\Omega_1,\log\Delta_{21}\Omega_1\rangle\), as correctly stated in the displayed theorem.

These are index/editorial mistakes, not counterexamples to the underlying standard results.

# Independent verification

## Checked

- Mathematica checked the Bernoulli Legendre duality at \(q=0.3\), \(x=0.7\): both the stationarity and \(xt-\Lambda_q(t)-D(x\Vert q)\) residuals were exactly zero.
- For two noncommuting positive \(2\times2\) density matrices, Mathematica compared the Hilbert--Schmidt relative-modular formula with Umegaki entropy. The residual was \(2.1\times10^{-49}\).
- In the same example, the modular definition of the order-\(1/2\) relative Renyi entropy agreed with \(\log\operatorname{Tr}(\rho_1^{1/2}\rho_2^{1/2})/(1/2-1)\) to the working precision.
- The official TeX source and all sections of the 259-page PDF were navigated. Rendered pages 1, 42, 74, 139, 180, 188, 192, 203 and 250 visually confirm the title, Sanov and general-LDP statements, quantum entropy, modular/Araki/Haagerup chapters, dynamical entropy and references.

## Assumptions

- Finite alphabets for the fully proved elementary Sanov/Cramer treatments; Polish-space extensions require the separately stated topology, exponential-tightness and differentiability conditions.
- I.i.d. product structure for the basic classical and quantum hypothesis-testing exponents.
- Normal states and the stated support conditions for finite relative entropy.
- Faithful normal states or weights for the initial modular/core construction; general normal states are handled through support projections.
- Hyperfiniteness for the practical CNT approximation theorem.

## Not independently verified

- The full proofs of Sanov, Gartner--Ellis, Varadhan, the quantum Chernoff/Stein/Hoeffding theorems and all appendix results.
- The deep existence, uniqueness and duality theorems underlying the Haagerup core and all \(L^p(M)\) spaces.
- Every domain and measurability step for products and logarithms of affiliated unbounded operators.
- Any black-hole entropy, generalized-entropy, QRF, second-law or gravitational application.

# Relevance to the vault

This is a useful reference for keeping three levels separate:

- relative entropy as a hypothesis-testing rate;
- Araki entropy intrinsic to normal states on a von Neumann algebra;
- Haagerup densities and traces living in the crossed-product core.

That separation is directly relevant to the vault's type-III and generalized-entropy notes. The lectures do not establish a gravitational crossed-product construction, an area term, JLMS, a boundary charge or an entropy balance law. The word “quantum reference frame” occurs only as outside motivation for some crossed-product literature.

# Bottom line

Keep this paper as a broad background reference, especially for modular theory and Haagerup \(L^p\) bookkeeping. Do not promote it as a new entropy theorem or a black-hole result. The most useful transfer to current projects is the warning that density-operator notation for type III algebras lives in the core and must not be confused with ordinary trace-class density matrices in the original algebra.
