---
title: "Exact Evaluation of Lattice-Regularized Scalar Field Vacuum Amplitude via Site Permutations"
authors:
  - Vadim Asnin
arxiv_id: "2608.13117v1"
arxiv_url: "https://arxiv.org/abs/2608.13117v1"
pdf_url: "https://arxiv.org/pdf/2608.13117v1"
source_url: "https://export.arxiv.org/e-print/2608.13117v1"
official_list_date: "2026-08-14"
date_read: "2026-08-14"
priority: medium
reason_codes:
  - T2-model
  - T2-spectral
  - T3-math
status: "audited; exact-evaluation claim fails"
---

# Exact Evaluation of Lattice-Regularized Scalar Field Vacuum Amplitude via Site Permutations

## Verdict

**Incorrect.** The finite-lattice permutation symmetrization is an exact and useful rewriting, but the paper's advertised exact evaluation is not established. The derivation subsequently takes a large-\(N\) limit, drops a nonuniform Gaussian factor, replaces a finite prime-factor sum by an unrestricted Euler product and a divergent Dirichlet series, and uses Hermite functions with an incorrect orthonormal scaling. These issues affect the final formula, not only its presentation.

The statement should be rewritten as:

> The manuscript proposes a formal large-site-number representation of a scalar lattice partition function based on permutation symmetrization and prime-labelled auxiliary functions. The initial symmetrization is exact, while the inverse-kernel and final Hermite/Euler-product formulas require correction, convergence hypotheses, and an error-controlled large-\(N\) limit.

## Why it was screened in

- **T2-model:** it attempts a nonperturbative finite-regulator representation for arbitrary local scalar potentials.
- **T2-spectral:** it replaces lattice coupling data by a Hermite expansion and a formal symmetric-tensor decomposition.
- **T3-math:** the derivation uses symmetric tensor/Waring ideas, Dirichlet series, Euler products, oscillatory kernels, and distributional inverses.

The closest connection to the current gluing work is methodological: a coupled Gaussian lattice kernel is separated from independent site potentials. The audit is valuable because it exposes exactly where a finite-cutoff identity is upgraded too quickly into a continuum or large-system claim.

## Regulated setup

For a finite \(D\)-dimensional periodic lattice \(A\) with \(N\) sites, the discretized scalar partition function is written as

\[
I_U(A)
=
\int d^N\phi\,
\exp\!\left[
-\frac12\sum_{\vec k,p}
(\phi_{\vec k}-\phi_{\vec k+\vec n_p})^2
-\frac{\mu_k}{2}\sum_{\vec k}\phi_{\vec k}^2
\right]
\exp\!\left[
-\sum_{\vec k}U^{(-\mu_k)}(\phi_{\vec k})
\right].
\]

The potential factor is invariant under every permutation of the site labels. Therefore replacing the kinetic factor \(K(\phi)\) by

\[
K_{\mathrm{sym}}(\phi)
=
\frac1{N!}\sum_{P\in S_N}K(P\phi)
\]

does not change the integral:

\[
\int d^N\phi\,K(\phi)V(\phi)
=
\int d^N\phi\,K_{\mathrm{sym}}(\phi)V(\phi).
\]

This step is exact at finite \(N\), assuming the integral exists and the measure and domain are permutation invariant.

## Proposed decomposition

The paper informally motivates a Waring-like form

\[
K_{\mathrm{sym}}(\phi_1,\ldots,\phi_N)
=
\sum_\alpha\lambda_\alpha
F_\alpha(\phi_1)\cdots F_\alpha(\phi_N),
\]

which would reduce the coupled integral to powers of one-site integrals:

\[
I_U
=
\sum_\alpha\lambda_\alpha
\left[
\int d\phi\,F_\alpha(\phi)e^{-U(\phi)}
\right]^N.
\]

Rather than proving such an infinite-dimensional Waring decomposition, the manuscript inserts a symmetrized delta-function identity. Basis labels are encoded using

\[
p_0=1,\quad p_1=2,\quad p_2=3,\quad p_3=5,\ldots
\]

and

\[
a_n(x)=w_np_n^{ix},
\qquad
\widetilde b_n(x)=w_n^{-1}p_n^{-ix}.
\]

Unique prime factorization is intended to make an auxiliary oscillatory pairing select equal multisets of basis indices.

The kinetic part is then treated as the unknown of an integral equation. A known free-field partition function is used to infer an inverse kernel \(Q(\mu_p,v;x)\), leading eventually to the claimed formula

\[
I_U(A)
=
\sqrt{\frac{N}{2\pi}}\,
\mu^N I_{\mathrm{free}}(A;\mu_k+\mu)
\int_{(R)}dx\,T_N(ix)
\left[
\sum_{n=0}^\infty
w_np_n^{ix}
\int d\phi\,
e^{-U^{(-\mu_k)}(\phi)}
\psi_n(\sqrt\mu\phi)
\right]^N.
\]

The formula is presented as an exact evaluation for arbitrary local potential. The derivation does not support that status.

## What is exact

### Site symmetrization

For any integrable permutation-invariant potential factor \(V\),

\[
\int K(P\phi)V(\phi)d^N\phi
=
\int K(\phi)V(\phi)d^N\phi
\]

by the change of variables \(\phi\mapsto P^{-1}\phi\). Averaging over \(P\) is therefore legitimate.

### Finite multiset bookkeeping

At a purely algebraic level, prime labels distinguish finite multisets:

\[
\prod_jp_{n_j}=\prod_jp_{m_j}
\]

if and only if the two lists contain the same nonunit primes with the same multiplicities. The \(p_0=1\) labels pad the list to length \(N\).

### Gaussian translation

For a positive mass, shifting all fields by the same constant leaves the nearest-neighbour kinetic term unchanged. Thus the free partition function with potential \((\phi-v)^2\) is independent of \(v\).

These valid observations do not imply the final inverse-kernel representation.

## Failure 1: the Hermite scaling is not orthonormal

The symmetrized delta identity assumes a complete orthonormal family

\[
\int d\phi\,f_n(\phi)f_m(\phi)=\delta_{nm}.
\]

The paper later chooses

\[
f_n(\phi)=\sqrt\mu\,\psi_n(\sqrt\mu\phi).
\]

But normalized Hermite functions satisfy

\[
\int_{-\infty}^{\infty}
f_n(\phi)f_m(\phi)d\phi
=
\sqrt\mu\,\delta_{nm},
\]

not \(\delta_{nm}\). The orthonormal scaling would be

\[
f_n^{\mathrm{orth}}(\phi)
=
\mu^{1/4}\psi_n(\sqrt\mu\phi).
\]

The same error appears in the Gaussian coefficient. With the manuscript's \(f_0\),

\[
\int d\phi\,
e^{-\mu\phi^2/2}f_0(\phi)
=
\pi^{1/4},
\]

whereas the derivation uses \(\pi^{1/4}/\sqrt\mu\). Consequently the powers of \(\mu\) in the free-theory calibration and final formula are already inconsistent.

## Failure 2: an essential Gaussian factor is dropped

After Fourier transformation, the inverse-kernel equation contains

\[
\exp\!\left(
-\frac{p^2}{2N\mu_p}
\right).
\]

The paper states that \(N\) is large and drops this factor. For fixed \(p\) and fixed \(\mu_p>0\), it tends to one. The integration domain, however, includes \(\mu_p\to0\), so the convergence is not uniform.

For example,

\[
N=100,\qquad p=1,\qquad \mu_p=10^{-3}
\]

gives

\[
\exp\!\left(-\frac{p^2}{2N\mu_p}\right)
=e^{-5}\approx0.00674,
\]

not a small correction to one.

Dropping the factor would require support or decay assumptions on \(Q\), dominated-convergence control, and a quantitative error estimate. Even under such assumptions, the result would be asymptotic rather than exact at finite \(N\).

## Failure 3: finite prime-factor support becomes an unrestricted Euler product

For fixed \(N\), the ordered sum over \(N\) basis labels reaches only integers whose number of prime factors, counted with multiplicity, obeys

\[
\Omega(r)\leq N.
\]

The unit labels \(p_0=1\) provide the remaining \(N-\Omega(r)\) factors. The exact finite-\(N\) expression is therefore a constrained sum.

The manuscript replaces it, in a “very large \(N\)” step, by a sum over all positive integers and then by an unrestricted Euler product. That removes the constraint \(\Omega(r)\leq N\). No remainder estimate is supplied, and the final result is still described as exact for a finite lattice.

## Failure 4: the zeta “delta function” is only formal

The proposed auxiliary delta is

\[
\delta^{(a,b)}(x,y)
=
\sum_{m=1}^\infty m^{i(x-y)}
=
\zeta\!\left(-i(x-y)\right).
\]

The displayed series does not converge: every term has modulus one. The equality to the analytically continued zeta function therefore cannot be used as an ordinary series identity.

A distributional or regularized meaning might be possible on a carefully chosen test-function space, but the paper does not define such a space, a regulator, or the continuity needed to exchange this object with the other infinite sums and integrals.

## Failure 5: free calibration does not produce a general inverse

The kernel \(Q\) is required to invert a family of functions built from all products of the expansion coefficients

\[
C_{n_1}(\mu_p,v)\cdots C_{n_N}(\mu_p,v).
\]

The derivation compresses this into one Gaussian relation, makes a separable ansatz

\[
Q(\mu_p,v;y)
=
\sqrt{\frac N{2\pi}}q(\mu_p)T(v,iy),
\]

and fixes \(q\) by requiring reproduction of the free theory.

Reproducing one free family is not enough to prove that this \(Q\) is an inverse on the interacting kernel or on all coefficient products. The manuscript itself notes degeneracy of the inverse problem, but supplies no domain, range, or completeness theorem that would justify the extension.

## Missing analytic hypotheses

The claim is stated for an arbitrary potential without specifying conditions sufficient for:

- convergence of the finite-dimensional integral;
- \(e^{-U}\) to lie in the relevant \(L^2\) space;
- rapid decay of its Hermite coefficients;
- convergence of the prime-weighted Hermite series;
- interchange of sums, ordinary integrals, oscillatory integrals, and the large-\(N\) limit;
- analytic continuation of \(T_N(x)\) from its convergence half-plane to imaginary \(x\);
- existence and boundedness of the inverse kernel.

For example, even at finite lattice size, a potential unbounded below can make \(I_U(A)\) divergent. “Arbitrary potential” must at minimum be restricted by integrability and spectral-decay conditions.

## Minimal repair benchmark

A repaired proposal should first solve a finite test case without large-\(N\) replacements:

1. take \(N=2\) or \(N=3\) sites with positive quadratic mass;
2. use the corrected basis \(\mu^{1/4}\psi_n(\sqrt\mu\phi)\);
3. retain the exact constraint \(\Omega(r)\leq N\);
4. introduce a finite Hermite cutoff and a regulated auxiliary pairing;
5. compare the representation with the direct determinant formula for the free theory;
6. add a weak quartic potential and compare against direct quadrature;
7. only then study convergence as the Hermite cutoff and site number grow.

This would separate three distinct claim tiers:

- exact finite-dimensional permutation identity;
- convergent finite-cutoff numerical representation;
- controlled large-\(N\) asymptotic formula.

The current manuscript reaches only the first tier.

## Implications for current projects

### Nonuniform lattice and gluing calculations

The exact symmetrization step shows that a permutation-invariant local potential can be separated from connectivity data at the level of an averaged kernel. It does not preserve spatial locality, and the \(N!\) permutation average erases the geometrical organization needed for interface-local observables.

### Continuum claim tiers

This paper is a useful negative example for the vault's finite-cutoff discipline. An exact identity before a limit does not make later uncontrolled large-\(N\) replacements exact. Partition functions, correlators, continuum fields, and Hilbert-space equivalence remain separate targets.

### Nonperturbative methods

A convergent low-rank or tensor decomposition of \(K_{\mathrm{sym}}\) could still be useful computationally. The prime/zeta construction is not yet such an algorithm: the paper gives no truncation prescription, complexity estimate, or error bound.

## Source-derived

- Official arXiv abstract page for \(2608.13117v1\), submitted 13 August 2026.
- Full 19-page official PDF.
- Complete official TeX source, bibliography, style files, and the supplied plot image.
- Visual inspection of PDF pages 1, 7, 12, and 17, covering the abstract, inverse-kernel setup, final formula, and zeta-delta appendix.
- The regulated action, permutation construction, inverse-kernel route, Hermite choice, Euler product, and stated applications above are source-derived.

## Checked

- **Analytic:** permutation averaging leaves the finite-lattice integral unchanged when the potential factor and integration measure are site-permutation invariant.
- **Mathematica:** for \(f_0(\phi)=\sqrt\mu\,\pi^{-1/4}e^{-\mu\phi^2/2}\),
  \[
  \int f_0(\phi)^2d\phi=\sqrt\mu,
  \]
  confirming that the manuscript's scaled Hermite family is not orthonormal.
- **Mathematica:** the corresponding Gaussian coefficient is \(\pi^{1/4}\), not \(\pi^{1/4}/\sqrt\mu\).
- **Mathematica:** the allegedly negligible factor equals \(e^{-5}\) for \(N=100\), \(p=1\), and \(\mu_p=10^{-3}\).
- **Analytic:** for finite \(N\), unique factorization yields the constraint \(\Omega(r)\leq N\); an unrestricted Euler product contains additional terms.
- **Convergence audit:** \(\sum_{m\geq1}m^{i(x-y)}\) fails the term test and cannot equal the analytically continued zeta function as an ordinary convergent series.

## Blocked

- The author provides no executable code, truncation rule, or numerical data for the final representation.
- An independent interacting benchmark cannot be implemented uniquely because the manuscript does not define a regulated auxiliary pairing, an inverse-kernel prescription, or a controlled analytic continuation.
- Exact evaluation is blocked at the derivational level by normalization errors and uncontrolled limit operations; additional computation would not turn the displayed formula into a proved identity.

## Not independently verified

- The symmetrized delta identity as an identity of distributions for the infinite basis.
- The existence of the infinite-dimensional Waring decomposition suggested in the introduction.
- The proposed inverse kernel \(Q\).
- The convergence and analytic continuation of \(T_N(ix)\).
- The final formula for a free or interacting lattice theory.
- Independence of the final representation from the arbitrary kinetic/potential mass split.
- Generalizations to multiple scalars, fermions, or Wilsonian RG flow.
- Any continuum-limit or strong-coupling claim.

## Reading map

1. Read the introduction for the exact finite-lattice symmetrization idea.
2. Read equations (2.4)--(2.8) for the valid separation setup.
3. Audit equations (2.12)--(2.39) for the inverse-kernel and large-\(N\) replacements.
4. Compare equation (2.40) with the orthonormal Hermite scaling.
5. Read Appendix A only as a formal algebraic construction until its regulator and test-function space are supplied.
6. Treat equation (2.45) as an unverified formal ansatz, not an exact evaluation.

## Daily package

Back to [[2026_08_14_overview]].
