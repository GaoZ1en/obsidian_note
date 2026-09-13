---
paper id: 2606.13774v2
title: A note on the quantization of angular momentum for black holes
authors:
  - Jon Goker
  - Luca V. Iliesiu
  - Elisa Tabor
publication date: 2026-09-03T19:14:26
abstract: |-
  The paper constructs integer-labelled families of smooth complex rotating black-hole saddles whose angular velocities differ by the spin-structure period. An infinite, translation-invariant image sum is formally periodic and its Fourier dual has half-integral angular momentum. The smoothness construction is explicit, but the contributing contour, convergence in several examples, and the claim that a finite saddle subset remains periodic are not established.
comments: "19 pages + 3 appendices, 3 figures; v2 corrects typos and adds a reference; the official generated PDF has 36 pages including appendices and references"
url: https://arxiv.org/abs/2606.13774v2
summary: "Smooth complex image saddles give a formal half-integral spin comb only when the gravitational contour and weights preserve the full angular-velocity period."
tags: []
---

Daily overview: [[2026_09_07_overview]].

# Verdict

**Not proven by the current source; the evidence only shows:** explicit families of smooth complex BTZ, asymptotically flat Kerr--Newman, and AdS$_4$ Kerr--Newman saddles labelled by

$$
\Omega_n=\Omega_0+\frac{4\pi i n}{\beta},\qquad n\in\mathbb Z,
$$

or the opposite shift in the fixed-$J$ ensemble. If the gravitational contour includes a translation-invariant orbit with periodic weights and the resulting sum/distribution is well defined, the partition function is $4\pi i/\beta$-periodic and its Fourier support lies at $J\in\frac12\mathbb Z$.

The paper does not derive the integration contour or show that these hypotheses hold in all dimensions or ensembles. Moreover, its statement that a finite set of saddles is nevertheless periodic is **incorrect for a generic finite subset**: a nonempty finite subset of the integer orbit is not invariant under $n\mapsto n+1$, and an explicit five-image Gaussian sum changes by a nonzero endpoint term. Thus the central quantization conclusion is conditional, while the smooth-saddle construction is the verified part.

# Complete source map

- Section 1 motivates angular-momentum quantization through periodic angular velocity and separates the AdS$_3$ mapping-class explanation from higher-dimensional complex saddles.
- Section 2 uses two-dimensional Maxwell theory as the exact model, then introduces Brown--York boundary data and treats fixed angular velocity (Dirichlet) and fixed angular momentum (Neumann) ensembles.
- Section 3 constructs the BTZ image family, identifies it with the $ST^{2n}$ subset of the spin-structure-preserving modular sum, and repeats the construction at fixed $J_z$.
- Section 4 constructs asymptotically flat Kerr--Newman images at fixed $\Omega_0$ and fixed $J_z$.
- Appendix A gives the analogous AdS$_4$ Kerr--Newman family, carefully distinguishing horizon angular velocity from the thermodynamic angular velocity measured in the nonrotating frame at infinity.
- Appendix B studies convergence of the fixed-$\Omega$ image sum for BTZ, asymptotically flat Kerr/Kerr--Newman, and AdS$_4$ Kerr--Newman.
- Appendix C studies near-extremal image sums for real Lorentzian and Euclidean angular velocity in semiclassical and quantum regimes.

# Ensemble and boundary-data dictionary

Write the timelike boundary metric in ADM form,

$$
ds^2=-N^2dt^2+h_{ab}(dx^a+V^a dt)(dx^b+V^b dt),
$$

and define the Brown--York tensor by

$$
T_{ij}=\frac{2}{\sqrt{-h}}\frac{\delta I}{\delta h^{ij}}.
$$

For a spatial cut $\Sigma$ of the boundary,

$$
\epsilon=-\frac{1}{\sqrt\sigma}\frac{\delta I_{\rm cl}}{\delta N},
\qquad
j_a=\frac{1}{\sqrt\sigma}\frac{\delta I_{\rm cl}}{\delta V^a},
$$

$$
M=\int_\Sigma\sqrt\sigma\,\epsilon,
\qquad
J_{z,{\rm cl}}=\int_\Sigma\sqrt\sigma\,j_\phi.
$$

The fixed-$\Omega$ action has on-shell value

$$
-I_{\rm cl}(\beta,\Omega_0)=-\beta M+\beta\Omega_0J_{z,{\rm cl}}+S.
$$

The fixed-$J_z$ variational problem is obtained by the boundary Legendre transform

$$
I(\beta,J_z)=I(\beta,\Omega_0)+\int_{\partial\mathcal M}\sqrt\sigma\,V^aj_a+I_{\rm ct},
$$

so that

$$
-I_{\rm cl}(\beta,J_z)=-\beta M+S.
$$

These are Brown--York ensemble statements. They are not a derivation of an Iyer--Wald Hamiltonian, a covariant phase-space charge algebra, or a choice of gravitational Lefschetz thimbles.

# Exact model: Maxwell theory on a disk

For fixed Euclidean chemical potential $\mu_E$, smooth connections are indexed by their winding at the origin,

$$
A_\tau=\left(\mu_E-\frac{2\pi n}{\beta}\right)\frac{r^2}{r_*^2}+\frac{2\pi n}{\beta},
$$

with classical action

$$
I_n=\frac{\beta}{e^2r_*^2}\left(\mu_E-\frac{2\pi n}{\beta}\right)^2.
$$

The full integer sum is $2\pi/\beta$-periodic. Poisson resummation converts it to a charge sum with $Q\in\mathbb Z$. In the fixed-charge ensemble, the same fact appears as the regulated comb

$$
\sum_{n\in\mathbb Z}e^{-\epsilon n^2}e^{2\pi i nQ}
=\sqrt{\frac\pi\epsilon}\sum_{m\in\mathbb Z}
e^{-\pi^2(m-Q)^2/\epsilon}.
$$

After the paper's constant counterterm and $\epsilon\to0^+$, the result has support only at integral $Q$. This example is exact because the contributing topological sectors and their measure are specified; gravity inherits the Fourier mechanism but not automatically the contour premise.

# Formal gravitational quantization mechanism

With fermions, the thermal identification must preserve a spin structure, so a $4\pi$ rotation is the relevant period. The proposed fixed-$\Omega$ sum is

$$
Z_{\rm grav}(\beta,\Omega_0)=
\sum_{n\in\mathbb Z}
e^{-I_{\rm cl}(\beta,\Omega_0+4\pi i n/\beta)}
Z_{\rm 1-loop}(\beta,\Omega_0+4\pi i n/\beta)(1+\cdots).
$$

If every term is defined on a common branch and the set and weights are invariant under $n\mapsto n+1$, reindexing proves

$$
Z(\Omega_0+4\pi i/\beta)=Z(\Omega_0).
$$

The Fourier-conjugate variable then lies in $\frac12\mathbb Z$. For a purely bosonic theory the period may be $2\pi i/\beta$, giving $J\in\mathbb Z$. The individual classical Brown--York values $(J_{z,{\rm cl}})_n$ need not be quantized.

At fixed $J_z$, the saddle approximation gives

$$
Z(\beta,J_z)\approx e^{S-\beta M}Z_{\rm 1-loop}(1+\cdots)
\sum_{n\in\mathbb Z}e^{4\pi i nJ_z}.
$$

With a Gaussian regulator,

$$
\sum_{n\in\mathbb Z}e^{-\epsilon n^2}e^{4\pi i nJ_z}
=\sqrt{\frac\pi\epsilon}\sum_{m\in\mathbb Z}
e^{-\pi^2(m-2J_z)^2/\epsilon},
$$

which becomes a distribution supported at $J_z\in\frac12\mathbb Z$. This conclusion still assumes that all image saddles have the asserted common $n$-independent prefactor and that the regulated saddle sum represents the gravitational path integral.

# BTZ cluster

For Euclidean BTZ with $r_-$ imaginary, horizon smoothness and the antiperiodic spin structure impose

$$
\frac{(r_-)_n}{(r_+)_n}=\Omega_0+\frac{4\pi i n}{\beta},
\qquad
\beta=\frac{2\pi(r_+)_n}{(r_+)_n^2-(r_-)_n^2}.
$$

Writing $w_n=\Omega_0+4\pi i n/\beta$, the solution is

$$
(r_+)_n=\frac{2\pi}{\beta(1-w_n^2)},
\qquad
(r_-)_n=w_n(r_+)_n,
$$

and

$$
(J_{z,{\rm cl}})_n=\frac{(r_+)_n(r_-)_n}{4G_N}.
$$

Here the images are not merely analogous to modular images: they form the $ST^{2n}$ subset of the $\Gamma_\theta$ sum appropriate to the chosen NS spin structure. This supplies an actual boundary mapping-class origin in three dimensions. At fixed $J_z$, the geometry keeps $r_\pm$ fixed while

$$
\Omega_n=\frac{r_-}{r_+}-\frac{4\pi i n}{\beta}.
$$

# Asymptotically flat Kerr--Newman cluster

The complex Euclidean Kerr--Newman saddles obey

$$
\frac{a_n}{r_n^2+a_n^2}=\Omega_0+\frac{4\pi i n}{\beta},
$$

$$
\beta=\frac{4\pi r_n(r_n^2+a_n^2)}{r_n^2-a_n^2-Q^2}.
$$

Their thermodynamic data are

$$
M_n=\frac{r_n^2+Q^2+a_n^2}{2G_Nr_n},
\qquad
(J_{z,{\rm cl}})_n=M_na_n,
\qquad
S_n=\frac{\pi(r_n^2+a_n^2)}{G_N}.
$$

For $Q=0$, define

$$
\Delta_n=\sqrt{4\pi^2+\beta^2w_n^2}.
$$

The two branches are

$$
r_n=\sigma\frac{\beta}{2\Delta_n},
\qquad
a_n=\frac{1}{2w_n}\left(1-\sigma\frac{2\pi}{\Delta_n}\right),
\qquad \sigma=\pm1.
$$

Unlike BTZ, these higher-dimensional images are not generated by the boundary mapping class group: $\operatorname{MCG}(S^1\times S^2)=\mathbb Z_2$ does not contain this integer orbit. Smoothness produces legitimate complex solutions but does not decide whether their thimbles intersect the original contour.

At fixed $J_z$, $r_+$ and $a_0$ are held fixed and

$$
\Omega_n=\frac{a_0}{r_+^2+a_0^2}-\frac{4\pi i n}{\beta}.
$$

# AdS$_4$ cluster

For Kerr--Newman--AdS$_4$, distinguish

$$
\Omega_0=\Omega_H-\Omega_\infty=\Omega_H+\frac{a}{\ell^2}.
$$

Smoothness at fixed thermodynamic $\Omega_0$ requires

$$
\frac{a_n(r_n^2+\ell^2)}{\ell^2(r_n^2+a_n^2)}
=\Omega_0+\frac{4\pi i n}{\beta},
$$

$$
\beta=\frac{4\pi(r_n^2+a_n^2)}{r_n\left[1+\ell^{-2}(a_n^2+3r_n^2)-r_n^{-2}\{a_n^2+Q^2(1-a_n^2/\ell^2)^2\}\right]}.
$$

With $\Xi_n=1-a_n^2/\ell^2$,

$$
M_n=\frac{(r_n^2+a_n^2)(1+r_n^2/\ell^2)+\Xi_n^2Q^2}
{2G_Nr_n\Xi_n^2},
$$

$$
(J_{z,{\rm cl}})_n=M_na_n,
\qquad
S_n=\frac{\pi(r_n^2+a_n^2)}{G_N\Xi_n}.
$$

At fixed $J_z$,

$$
\Omega_n=\frac{a_0(r_+^2+\ell^2)}{\ell^2(r_+^2+a_0^2)}-
\frac{4\pi i n}{\beta}.
$$

The flat limit $\ell\to\infty$ recovers the asymptotically flat formulas, but convergence and contour selection remain branch dependent.

# Convergence and near-extremal regimes

Appendix B does not establish a universal saddle sum:

- For BTZ, the classical factor approaches a constant and would diverge, while the one-loop determinant decays as $n^{-3}$ and makes the displayed subset summable.
- For uncharged asymptotically flat Kerr, the classical action approaches zero as $1/n$, so a one-loop determinant or contour prescription is required.
- For charged asymptotically flat Kerr--Newman, the physical branch has favorable one-tail asymptotics in the chosen continuation, but the branch choice and both tails of the integer sum must be controlled before calling the full contour convergent.
- For Kerr--Newman--AdS$_4$, behavior depends on charge, branch, and parameters; some cases require one-loop or contour input and some candidate sums diverge.

Appendix C expands near extremality and Poisson resums an approximate Gaussian image sum. In the broad-image quantum regime it explicitly neglects the $n$ dependence of the one-loop determinant, even though that dependence may encode the theory and supersymmetry. The nearest-half-integer behavior is therefore a conditional approximation, not a nonperturbative spectrum theorem.

# Failed finite-subset claim

For a generic summand $f$ and a finite cutoff,

$$
Z_N(\Omega)=\sum_{n=-N}^{N}f(\Omega+nT),
$$

one has

$$
Z_N(\Omega)-Z_N(\Omega+T)
=f(\Omega-NT)-f(\Omega+(N+1)T),
$$

which is not zero in general. Taking $T=1$, $N=2$, $f(z)=e^{-z^2}$, and $\Omega=1/3$ gives

$$
Z_2(1/3)-Z_2(4/3)=0.0621615786835915\ldots.
$$

Therefore agreement with a convergent angular-momentum ensemble cannot be obtained merely by retaining an arbitrary finite number of image saddles while keeping exact periodicity. A valid repair would need a contour prescription whose selected cycles and weights transform covariantly under the period, a different completion restoring the missing endpoints, or a proof that the exact nonperturbative integrand is periodic independently of this saddle truncation.

# Global derivation map

1. Fix Brown--York Dirichlet data $(\beta,\Omega_0)$ or perform the boundary Legendre transform to fixed $(\beta,J_z)$.
2. Impose horizon smoothness together with the boundary spin structure.
3. Solve the smoothness equations to obtain an integer-labelled complex family.
4. **Additional premise:** choose a gravitational contour and measure that include a translation-invariant image orbit with compatible branches and weights.
5. Reindex the infinite sum to obtain angular-velocity periodicity.
6. Fourier transform or Poisson resum to obtain support on half-integral $J_z$; use integer $J_z$ in the bosonic $2\pi$ case.
7. Independently prove convergence or define the sum distributionally, including one-loop determinants and both large-$|n|$ tails.

Steps 1--3 are constructed in the paper. Steps 4 and 7 are not generally supplied. Step 5 fails for a generic finite truncation.

# Local translation to the vault

The useful object is the ensemble-dependent boundary Legendre transform and its discrete image orbit. For regional or boundary algebra work, the analogue of Step 4 is indispensable: a list of classical solutions does not identify the physical integration cycle, Hilbert-space decomposition, or exact quantum observable algebra. The paper is therefore a good warning against inferring a representation theorem from formal periodicity before proving that the contour and weights realize the periodic group action.

The Maxwell disk calculation is the clean benchmark because its topological sectors are explicit. The higher-dimensional gravity construction is best treated as a conditional semiclassical proposal. No regional gluing map, CPS symplectic reduction, edge-mode algebra, or exact onto statement follows from it.

# Equation ledger

- Maxwell image action: exact finite-dimensional model for periodic chemical potential.
- Brown--York $\epsilon,j_a$: conjugate boundary densities defining $M,J_z$.
- Fixed-$\Omega$ on-shell action: grand-canonical saddle weight.
- Fixed-$J$ boundary Legendre term: source of $e^{4\pi i nJ_z}$.
- Regulated Dirac comb: distributional half-integral support.
- BTZ smoothness system: mapping-class-controlled image family.
- Kerr--Newman and Kerr--Newman--AdS systems: higher-dimensional complex image families without a mapping-class derivation.
- Appendix-B asymptotics: branch-specific convergence diagnostics.
- Appendix-C Gaussian: near-extremal approximation with one-loop dependence suppressed.

# Verification log

- **Source-derived:** the complete section tree, ensemble definitions, smoothness systems, thermodynamic data, convergence cases, and near-extremal approximations were reconstructed from the official v2 TeX source and complete 36-page generated PDF.
- **Visually confirmed:** the title/abstract page, fixed-$J$ Poisson formula, AdS$_4$ conventions, near-extremal resummation, and final reference page render correctly on PDF pages 1, 10, 20, 30, and 36.
- **Checked:** Mathematica substituted the displayed BTZ solution into both smoothness equations and obtained two exact zero residuals. It substituted both uncharged Kerr branches into the two fixed-$\Omega$ constraints and obtained two exact zero residuals. A 121-term numerical evaluation of the regulated Poisson identity agreed to better than $10^{-25}$. The finite-image periodicity test reduced exactly to the two missing endpoint terms and gave the nonzero numerical counterexample above.
- **Assumptions:** Euclidean complex saddles; fixed boundary spin structure; regular Brown--York variational problem; common choices of square-root branches; a contour and measure compatible with the image translation; convergence or a stated distributional regulator; axis-independent class-function argument only after rotation covariance is established.
- **Not independently verified:** the complete one-loop determinant, the KSW admissibility of each saddle, the thimble decomposition, the all-dimensional rotation-group character claim, branch continuations across singular loci, or the near-extremal one-loop approximation.
- **Failed:** the statement that an arbitrary finite contributing saddle set nevertheless yields an exactly periodic partition function.
- **Blocked:** without a nonperturbative contour/cycle prescription, the smooth image family cannot be promoted to an unconditional theorem that the gravitational Hilbert space has precisely the asserted angular-momentum support.

# How to read this long paper

Essential: Section 2.1 for the exact Maxwell mechanism; Sections 2.2--2.3 for the Brown--York ensemble change and the conditional periodicity step; Sections 3 and 4 for the explicit BTZ and Kerr--Newman smoothness systems.

Technical reference: Appendix A for the AdS$_4$ distinction between $\Omega_H$ and $\Omega_0$; Appendix B for where classical convergence fails or becomes branch dependent; Appendix C for near-extremal image competition.

Optional background: the coordinate derivations of each near-horizon disk are useful when checking signs and periods, but the logical bottleneck is not local smoothness. It is the global contour, measure, and translation invariance of the contributing saddle set.
