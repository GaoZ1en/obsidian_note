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

**Incorrect.** The finite-lattice permutation symmetrization is an exact and useful rewriting, but the paper's advertised exact evaluation is not established. The derivation subsequently takes a large-$N$ limit, drops a nonuniform Gaussian factor, replaces a finite prime-factor sum by an unrestricted Euler product and a divergent Dirichlet series, and uses Hermite functions with an incorrect orthonormal scaling. These issues affect the final formula, not only its presentation.

The statement should be rewritten as:

> The manuscript proposes a formal large-site-number representation of a scalar lattice partition function based on permutation symmetrization and prime-labelled auxiliary functions. The initial symmetrization is exact, while the inverse-kernel and final Hermite/Euler-product formulas require correction, convergence hypotheses, and an error-controlled large-$N$ limit.

## Why It Was Screened in

- **T2-model:** it attempts a nonperturbative finite-regulator representation for arbitrary local scalar potentials.
- **T2-spectral:** it replaces lattice coupling data by a Hermite expansion and a formal symmetric-tensor decomposition.
- **T3-math:** the derivation uses symmetric tensor/Waring ideas, Dirichlet series, Euler products, oscillatory kernels, and distributional inverses.

The closest connection to the current gluing work is methodological: a coupled Gaussian lattice kernel is separated from independent site potentials. The audit is valuable because it exposes exactly where a finite-cutoff identity is upgraded too quickly into a continuum or large-system claim.

## Regulated Setup

For a finite $D$-dimensional periodic lattice $A$ with $N$ sites, the discretized scalar partition function is written as

$$\begin{align}
I_U(A) = \int d^N\phi\, \exp\!\left[ -\frac12\sum_{\vec k,p} (\phi_{\vec k}-\phi_{\vec k+\vec n_p})^2 -\frac{\mu_k}{2}\sum_{\vec k}\phi_{\vec k}^2 \right] \exp\!\left[ -\sum_{\vec k}U^{(-\mu_k)}(\phi_{\vec k}) \right].
\end{align}$$

The potential factor is invariant under every permutation of the site labels. Therefore replacing the kinetic factor $K(\phi)$ by

$$\begin{align}
K_{\mathrm{sym}}(\phi) = \frac1{N!}\sum_{P\in S_N}K(P\phi)
\end{align}$$

does not change the integral:

$$\begin{align}
\int d^N\phi\,K(\phi)V(\phi) = \int d^N\phi\,K_{\mathrm{sym}}(\phi)V(\phi).
\end{align}$$

This step is exact at finite $N$, assuming the integral exists and the measure and domain are permutation invariant.

## Proposed Decomposition

The paper informally motivates a Waring-like form

$$\begin{align}
K_{\mathrm{sym}}(\phi_1,\ldots,\phi_N) = \sum_\alpha\lambda_\alpha F_\alpha(\phi_1)\cdots F_\alpha(\phi_N),
\end{align}$$

which would reduce the coupled integral to powers of one-site integrals:

$$\begin{align}
I_U = \sum_\alpha\lambda_\alpha \left[ \int d\phi\,F_\alpha(\phi)e^{-U(\phi)} \right]^N.
\end{align}$$

Rather than proving such an infinite-dimensional Waring decomposition, the manuscript inserts a symmetrized delta-function identity. Basis labels are encoded using

$$\begin{align}
p_0=1,\quad p_1=2,\quad p_2=3,\quad p_3=5,\ldots
\end{align}$$

and

$$\begin{align}
a_n(x)=w_np_n^{ix}, \qquad \widetilde b_n(x)=w_n^{-1}p_n^{-ix}.
\end{align}$$

Unique prime factorization is intended to make an auxiliary oscillatory pairing select equal multisets of basis indices.

The kinetic part is then treated as the unknown of an integral equation. A known free-field partition function is used to infer an inverse kernel $Q(\mu_p,v;x)$, leading eventually to the claimed formula

$$\begin{align}
I_U(A) = \sqrt{\frac{N}{2\pi}}\, \mu^N I_{\mathrm{free}}(A;\mu_k+\mu) \int_{(R)}dx\,T_N(ix) \left[ \sum_{n=0}^\infty w_np_n^{ix} \int d\phi\, e^{-U^{(-\mu_k)}(\phi)} \psi_n(\sqrt\mu\phi) \right]^N.
\end{align}$$

The formula is presented as an exact evaluation for arbitrary local potential. The derivation does not support that status.

## What Is Exact

### Site Symmetrization

For any integrable permutation-invariant potential factor $V$,

$$\begin{align}
\int K(P\phi)V(\phi)d^N\phi = \int K(\phi)V(\phi)d^N\phi
\end{align}$$

by the change of variables $\phi\mapsto P^{-1}\phi$. Averaging over $P$ is therefore legitimate.

### Finite Multiset Bookkeeping

At a purely algebraic level, prime labels distinguish finite multisets:

$$\begin{align}
\prod_jp_{n_j}=\prod_jp_{m_j}
\end{align}$$

if and only if the two lists contain the same nonunit primes with the same multiplicities. The $p_0=1$ labels pad the list to length $N$.

### Gaussian Translation

For a positive mass, shifting all fields by the same constant leaves the nearest-neighbour kinetic term unchanged. Thus the free partition function with potential $(\phi-v)^2$ is independent of $v$.

These valid observations do not imply the final inverse-kernel representation.

## Failure 1: the Hermite Scaling Is Not Orthonormal

The symmetrized delta identity assumes a complete orthonormal family

$$\begin{align}
\int d\phi\,f_n(\phi)f_m(\phi)=\delta_{nm}.
\end{align}$$

The paper later chooses

$$\begin{align}
f_n(\phi)=\sqrt\mu\,\psi_n(\sqrt\mu\phi).
\end{align}$$

But normalized Hermite functions satisfy

$$\begin{align}
\int_{-\infty}^{\infty} f_n(\phi)f_m(\phi)d\phi = \sqrt\mu\,\delta_{nm},
\end{align}$$

not $\delta_{nm}$. The orthonormal scaling would be

$$\begin{align}
f_n^{\mathrm{orth}}(\phi) = \mu^{1/4}\psi_n(\sqrt\mu\phi).
\end{align}$$

The same error appears in the Gaussian coefficient. With the manuscript's $f_0$,

$$\begin{align}
\int d\phi\, e^{-\mu\phi^2/2}f_0(\phi) = \pi^{1/4},
\end{align}$$

whereas the derivation uses $\pi^{1/4}/\sqrt\mu$. Consequently the powers of $\mu$ in the free-theory calibration and final formula are already inconsistent.

## Failure 2: an Essential Gaussian Factor Is Dropped

After Fourier transformation, the inverse-kernel equation contains

$$\begin{align}
\exp\!\left( -\frac{p^2}{2N\mu_p} \right).
\end{align}$$

The paper states that $N$ is large and drops this factor. For fixed $p$ and fixed $\mu_p>0$, it tends to one. The integration domain, however, includes $\mu_p\to0$, so the convergence is not uniform.

For example,

$$\begin{align}
N=100,\qquad p=1,\qquad \mu_p=10^{-3}
\end{align}$$

gives

$$\begin{align}
\exp\!\left(-\frac{p^2}{2N\mu_p}\right) =e^{-5}\approx0.00674,
\end{align}$$

not a small correction to one.

Dropping the factor would require support or decay assumptions on $Q$, dominated-convergence control, and a quantitative error estimate. Even under such assumptions, the result would be asymptotic rather than exact at finite $N$.

## Failure 3: Finite Prime-Factor Support Becomes an Unrestricted Euler Product

For fixed $N$, the ordered sum over $N$ basis labels reaches only integers whose number of prime factors, counted with multiplicity, obeys

$$\begin{align}
\Omega(r)\leq N.
\end{align}$$

The unit labels $p_0=1$ provide the remaining $N-\Omega(r)$ factors. The exact finite-$N$ expression is therefore a constrained sum.

The manuscript replaces it, in a “very large $N$” step, by a sum over all positive integers and then by an unrestricted Euler product. That removes the constraint $\Omega(r)\leq N$. No remainder estimate is supplied, and the final result is still described as exact for a finite lattice.

## Failure 4: the Zeta “Delta Function” Is Only Formal

The proposed auxiliary delta is

$$\begin{align}
\delta^{(a,b)}(x,y) = \sum_{m=1}^\infty m^{i(x-y)} = \zeta\!\left(-i(x-y)\right).
\end{align}$$

The displayed series does not converge: every term has modulus one. The equality to the analytically continued zeta function therefore cannot be used as an ordinary series identity.

A distributional or regularized meaning might be possible on a carefully chosen test-function space, but the paper does not define such a space, a regulator, or the continuity needed to exchange this object with the other infinite sums and integrals.

## Failure 5: Free Calibration Does Not Produce a General Inverse

The kernel $Q$ is required to invert a family of functions built from all products of the expansion coefficients

$$\begin{align}
C_{n_1}(\mu_p,v)\cdots C_{n_N}(\mu_p,v).
\end{align}$$

The derivation compresses this into one Gaussian relation, makes a separable ansatz

$$\begin{align}
Q(\mu_p,v;y) = \sqrt{\frac N{2\pi}}q(\mu_p)T(v,iy),
\end{align}$$

and fixes $q$ by requiring reproduction of the free theory.

Reproducing one free family is not enough to prove that this $Q$ is an inverse on the interacting kernel or on all coefficient products. The manuscript itself notes degeneracy of the inverse problem, but supplies no domain, range, or completeness theorem that would justify the extension.

## Missing Analytic Hypotheses

The claim is stated for an arbitrary potential without specifying conditions sufficient for:

- convergence of the finite-dimensional integral;
- $e^{-U}$ to lie in the relevant $L^2$ space;
- rapid decay of its Hermite coefficients;
- convergence of the prime-weighted Hermite series;
- interchange of sums, ordinary integrals, oscillatory integrals, and the large-$N$ limit;
- analytic continuation of $T_N(x)$ from its convergence half-plane to imaginary $x$;
- existence and boundedness of the inverse kernel.

For example, even at finite lattice size, a potential unbounded below can make $I_U(A)$ divergent. “Arbitrary potential” must at minimum be restricted by integrability and spectral-decay conditions.

## Minimal Repair Benchmark

A repaired proposal should first solve a finite test case without large-$N$ replacements:

1. take $N=2$ or $N=3$ sites with positive quadratic mass;
2. use the corrected basis $\mu^{1/4}\psi_n(\sqrt\mu\phi)$;
3. retain the exact constraint $\Omega(r)\leq N$;
4. introduce a finite Hermite cutoff and a regulated auxiliary pairing;
5. compare the representation with the direct determinant formula for the free theory;
6. add a weak quartic potential and compare against direct quadrature;
7. only then study convergence as the Hermite cutoff and site number grow.

This would separate three distinct claim tiers:

- exact finite-dimensional permutation identity;
- convergent finite-cutoff numerical representation;
- controlled large-$N$ asymptotic formula.

The current manuscript reaches only the first tier.

## Implications for Current Projects

### Nonuniform Lattice and Gluing Calculations

The exact symmetrization step shows that a permutation-invariant local potential can be separated from connectivity data at the level of an averaged kernel. It does not preserve spatial locality, and the $N!$ permutation average erases the geometrical organization needed for interface-local observables.

### Continuum Claim Tiers

This paper is a useful negative example for the vault's finite-cutoff discipline. An exact identity before a limit does not make later uncontrolled large-$N$ replacements exact. Partition functions, correlators, continuum fields, and Hilbert-space equivalence remain separate targets.

### Nonperturbative Methods

A convergent low-rank or tensor decomposition of $K_{\mathrm{sym}}$ could still be useful computationally. The prime/zeta construction is not yet such an algorithm: the paper gives no truncation prescription, complexity estimate, or error bound.

## Source-Derived

- Official arXiv abstract page for $2608.13117v1$, submitted 13 August 2026.
- Full 19-page official PDF.
- Complete official TeX source, bibliography, style files, and the supplied plot image.
- Visual inspection of PDF pages 1, 7, 12, and 17, covering the abstract, inverse-kernel setup, final formula, and zeta-delta appendix.
- The regulated action, permutation construction, inverse-kernel route, Hermite choice, Euler product, and stated applications above are source-derived.

## Checked

- **Analytic:** permutation averaging leaves the finite-lattice integral unchanged when the potential factor and integration measure are site-permutation invariant.
- **Mathematica:** for $f_0(\phi)=\sqrt\mu\,\pi^{-1/4}e^{-\mu\phi^2/2}$,

$$\begin{align}
\int f_0(\phi)^2d\phi=\sqrt\mu,
\end{align}$$

  confirming that the manuscript's scaled Hermite family is not orthonormal.
- **Mathematica:** the corresponding Gaussian coefficient is $\pi^{1/4}$, not $\pi^{1/4}/\sqrt\mu$.
- **Mathematica:** the allegedly negligible factor equals $e^{-5}$ for $N=100$, $p=1$, and $\mu_p=10^{-3}$.
- **Analytic:** for finite $N$, unique factorization yields the constraint $\Omega(r)\leq N$; an unrestricted Euler product contains additional terms.
- **Convergence audit:** $\sum_{m\geq1}m^{i(x-y)}$ fails the term test and cannot equal the analytically continued zeta function as an ordinary convergent series.

## Blocked

- The author provides no executable code, truncation rule, or numerical data for the final representation.
- An independent interacting benchmark cannot be implemented uniquely because the manuscript does not define a regulated auxiliary pairing, an inverse-kernel prescription, or a controlled analytic continuation.
- Exact evaluation is blocked at the derivational level by normalization errors and uncontrolled limit operations; additional computation would not turn the displayed formula into a proved identity.

## Not Independently Verified

- The symmetrized delta identity as an identity of distributions for the infinite basis.
- The existence of the infinite-dimensional Waring decomposition suggested in the introduction.
- The proposed inverse kernel $Q$.
- The convergence and analytic continuation of $T_N(ix)$.
- The final formula for a free or interacting lattice theory.
- Independence of the final representation from the arbitrary kinetic/potential mass split.
- Generalizations to multiple scalars, fermions, or Wilsonian RG flow.
- Any continuum-limit or strong-coupling claim.

## Reading Map

1. Read the introduction for the exact finite-lattice symmetrization idea.
2. Read equations (2.4)--(2.8) for the valid separation setup.
3. Audit equations (2.12)--(2.39) for the inverse-kernel and large-$N$ replacements.
4. Compare equation (2.40) with the orthonormal Hermite scaling.
5. Read Appendix A only as a formal algebraic construction until its regulator and test-function space are supplied.
6. Treat equation (2.45) as an unverified formal ansatz, not an exact evaluation.

## Daily Package

Back to [[2026_08_14_overview]].
