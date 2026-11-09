---
paper id: 2608.18633v1
title: Exact Matching-Polynomial Solution of the Periodic Baxter-Fendley Z_N Clock Chain
authors:
  - Yuguan Li
  - D. C. Liu
  - Murray T. Batchelor
publication date: 2026-08-19T07:29
abstract: |-
  The paper identifies the periodic Baxter--Fendley clock-chain matching polynomial with a cyclic tau-two transfer matrix and uses root-of-unity closure to obtain finite charge-sector spectral equations. It also develops positive-coupling ground-state continuation and a conditional thermodynamic seam criterion.
comments: "8 pages, 2 figures, plus Supplemental Material"
url: https://arxiv.org/abs/2608.18633v1
summary: "The finite-size algebraic construction passes exact small-system checks; the thermodynamic critical data remain conditional and numerically unreproduced."
tags: []
---

# Direct Verdict

Correct under the following precise conditions: the finite-size matching-polynomial construction is defined for $N,L\ge2$, the root-of-unity closure is used on the paper's stated nonzero-coupling chart, and spectral solutions are counted with algebraic multiplicity in a fixed $Z_N$ charge sector. Exact Sage checks at $(N,L)=(3,2)$ and $(3,3)$ reproduce the advertised commuting charges and charge-resolved characteristic polynomials.

The ground-state continuation theorem is narrower: it requires positive real, reflection-symmetric couplings and defines the “ground state” of the plus-sign non-Hermitian Hamiltonian as the unique eigenvalue with maximal real part; the physical Hamiltonian is $-H_{\rm PBC}$.

The reciprocal $N=3$ critical couplings and exponents are not finite-size algebraic theorems. They depend on uniform thermodynamic convergence near a unique nondegenerate saddle, a nonzero smooth coefficient, and numerical solution of the saddle equation. The source supplies figures but no code, root tables, continuation tolerances, or raw curvature data.

See [[2026_08_20_overview]] for today's serial queue.

# Periodic Weyl Cycle

For $\omega=e^{2\pi i/N}$, the model is

$$\begin{align}
H=\sum_{j=1}^{L} \left(\lambda_{2j-1}\tau_j +\lambda_{2j}\sigma_j^\dagger\sigma_{j+1}\right), \qquad \sigma_{L+1}=\sigma_1.
\end{align}$$

Writing these $2L$ terms as currents $h_n$ gives the cyclic algebra

$$\begin{align}
h_nh_{n+1}=\omega h_{n+1}h_n, \qquad h_n^N=\lambda_n^N\mathbf1,
\end{align}$$

with non-neighboring currents commuting. For matchings of the cycle $C_{2L}$, define

$$\begin{align}
I(u)=\sum_{k=0}^{L}(-u)^kI_k,
\end{align}$$

where $I_k$ sums products of $k$ mutually nonadjacent currents. Then $I_1=H$, and the source proves

$$\begin{align}
[I_k,I_\ell]=0.
\end{align}$$

Pairing consecutive two-by-two matching matrices and applying a telescoping auxiliary gauge produces a site-local Lax operator. Its auxiliary trace is exactly $I(u)$, identifying the matching polynomial with the cyclic BBS/$\tau^{(2)}$ transfer matrix.

# Root-of-Unity Spectral Closure

The global charge is

$$\begin{align}
Q=\prod_{j=1}^{L}\tau_j, \qquad Q|\Psi_q\rangle=\omega^q|\Psi_q\rangle.
\end{align}$$

In sector $q$, a transfer eigenvalue is written as

$$\begin{align}
\widetilde\Lambda_q(u) =1+\sum_{k=1}^{L-1}c_ku^k +(-1)^L(\omega^q\lambda_o+\lambda_e)u^L,
\end{align}$$

with $c_1=-E$. Root-of-unity fusion reduces the closure defect to

$$\begin{align}
\Phi_q[\widetilde\Lambda_q](u) -\mathcal Z_{\boldsymbol\lambda}^{(N)}(u^N) =\sum_{\ell=1}^{L-1}R_{q,\ell}(\boldsymbol c)u^{N\ell}.
\end{align}$$

Thus the spectrum is obtained from $L-1$ degree-$N$ equations

$$\begin{align}
R_{q,\ell}(\boldsymbol c)=0.
\end{align}$$

The supplemental proof shows that their leading homogeneous forms have no common projective zero at infinity. Bézout's theorem then gives

$$\begin{align}
N^{L-1}=\dim\mathcal H_q
\end{align}$$

finite solutions counted with multiplicity. Combined with the operator transfer-family construction, this supplies the claimed finite-size completeness on the stated chart. It is not an independent-quasiparticle solution: periodic closure replaces independent open-chain occupations by a global polynomial constraint.

# Exact Finite Checks

For $N=3,L=2$ with inhomogeneous couplings $(1,2,3,4)$, Sage constructed the three charge-sector Hamiltonians exactly over the third cyclotomic field. In every sector, the cubic closure equation with $c=-E$ equaled the direct characteristic polynomial:

$$\begin{align}
q=0:\quad E^3-33E-100=0,
\end{align}$$

and the two cyclotomic-coefficient sector polynomials also matched identically.

For $N=3,L=3$ with couplings $(1,2,3,4,5,6)$, exact $27\times27$ matrices gave

$$\begin{align}
[I_1,I_2]=[I_1,I_3]=[I_2,I_3]=0,
\end{align}$$

and verified the top matching coefficient

$$\begin{align}
I_3=(\lambda_1\lambda_3\lambda_5)Q +\lambda_2\lambda_4\lambda_6\mathbf1.
\end{align}$$

These are finite-regulator algebraic checks, not a proof of the general Yang--Baxter or thermodynamic statements.

# Ground-State Branch

For positive reflection-symmetric couplings and nonnegative seam $\mu$, the supplemental material folds the chain into a positivity-improving map on a finite-dimensional $C^*$-algebra. Perron--Frobenius theory gives a real, algebraically simple eigenvalue $E_*(\mu)$ with strictly maximal real part and charge $q=0$.

Analytic perturbation theory then connects the open-chain all-zero occupation branch to the periodic endpoint without crossing another maximal-real-part eigenvalue. This justifies Newton continuation for that positive path. It does not apply to arbitrary complex/signed couplings, broken reflection symmetry, or other charge sectors.

# Thermodynamic Seam Criterion

For homogeneous coupling $\lambda$, the first seam response has the large-$L$ form

$$\begin{align}
E'_0\simeq \frac{\sin(\pi/N)}{\pi\lambda} \int_{-\infty}^{\infty} e^{-L\Delta_{N,\lambda}(x)}dx.
\end{align}$$

Assuming uniform convergence and a unique nondegenerate minimum $x_*$, exponential suppression is lost when

$$\begin{align}
\Delta_{N,\lambda_*}(x_*)=0, \quad \partial_x\Delta_{N,\lambda_*}(x_*)=0, \quad \partial_x^2\Delta_{N,\lambda_*}(x_*)>0.
\end{align}$$

The local parabolic saddle gives a negative-lobe area proportional to $(\lambda-\lambda_*)^{3/2}$, hence a conditional second-derivative singularity and the saddle exponents $z=2$, $\nu=1/2$, $\alpha=1/2$.

For $N=3$, the reported numerical roots are

$$\begin{align}
\lambda_-=0.784618343716599\ldots, \qquad \lambda_+=\lambda_-^{-1} =1.274504997248950\ldots.
\end{align}$$

The reciprocal pairing follows from the finite-size duality relation. The numerical root value, finite-size peak scaling through $L=90$, and nonzero saddle coefficient were not independently reproduced.

# Verification Record

## Checked

- **Verified:** the official 15-page PDF, complete 1,707-line TeX source containing end matter and supplement, bibliography, and figure asset were retrieved; six representative pages were rendered and inspected.
- **Verified:** Sage reproduced the full $N=3,L=2$ charge-sector characteristic polynomials from the closure equations for an inhomogeneous test point.
- **Verified:** Sage checked all matching-charge commutators and the top matching coefficient exactly at $N=3,L=3$.
- **Verified:** the projective Bézout count and Perron--Frobenius argument were followed from the supplied supplemental derivation with their stated hypotheses.

## Failed

- **Failed as an unconditional claim:** the thermodynamic critical points and exponents do not follow from finite-size completeness alone; they require the explicit saddle and convergence assumptions.

## Source-Derived

- **Source-derived:** the general RLL relation, quantum determinant, root-of-unity truncation identity, ODBA/SoV equivalence, and all-size completeness theorem.
- **Source-derived:** Newton continuation through large $L$, critical roots, and curvature-peak plots.

## Not Independently Verified

- **Not verified:** general symbolic RLL residuals, arbitrary-$N,L$ closure, or nongeneric-coupling multiplicity schemes.
- **Not verified:** the $L=10$ through $90$ continuation, thermodynamic integral root, finite-size exponents, or numerical error bars.

# Assumptions and Relevance

- **Assumptions:** finite $N,L\ge2$, exact Weyl relations at an $N$-th root of unity, and the nonzero odd-site-coupling chart for the quoted fusion specialization.
- **Assumptions:** positive reflection-symmetric couplings only for the Perron branch; uniform saddle convergence only for the thermodynamic criterion.
- `T2-spectral`: an unusually explicit finite polynomial spectral problem with algebraic multiplicity control.
- `T3-math`: matching cycles, cyclotomic Weyl algebra, Bézout counting, and positivity improving maps form a reusable exact-algebra testbed.
- The finite checks do not imply continuum, Hermitian, unitary, or quantum-field-theoretic results.

# Blocked

- No abstract, PDF, source, bibliography, supplement, or figure retrieval failed.
- Large-size reproduction is blocked by absent continuation code, step-size strategy, Jacobian conditioning data, critical-root tables, raw curvature arrays, and precision/error controls.

# Bottom Line

The finite-size algebraic solution is the paper's strongest layer and survives exact independent checks. The periodic model is integrable without reverting to independent parafermion occupations. The critical-coupling application is promising but belongs to a separate conditional tier until its saddle assumptions and large-$L$ numerics are independently controlled.
