---
paper id: 2608.27956v1
title: Holographic Ensembles in Type IIB
authors:
  - Jesse van Muiden
publication date: 2026-08-28T05:59:58
abstract: |-
  The sign of a topological term in the Euclidean type IIB action selects fixed five-form flux or fixed conjugate four-form potential. Supersymmetric thermal AdS5 times S5 provides a test against the canonical and grand canonical U(N) Schur partition functions, including the role of large gauge transformations and nonperturbative corrections.
comments: "No comments field on the official abstract page; PDF has 20 pages including references"
url: https://arxiv.org/abs/2608.27956v1
summary: "A concrete action-polarization and flux-potential Legendre transform, with an explicit distinction between bulk semiclassical matching and boundary-derived quantum completion."
tags: []
---

# Result and scope

The ensemble distinction is correct under the specified Euclidean orientation, boundary polarization, unit normalization of the quantized flux response, and supersymmetric renormalization scheme. In particular, stationarity alone selects the fixed-flux action but does not select the fixed-potential action. The latter also uses the Hamilton-Jacobi normalization $\partial_\mu S=-N$.

This is directly relevant to action-first boundary work: an additional topological term changes the admissible boundary variation without changing the local equations. It is not a derivation of a full type IIB quantum measure, a bulk localization theorem, or a general CPS gluing construction.

Reason codes: T1-boundary, T2-model, T2-spectral, T2-dS-BH-holography. Today's overview: [[2026_08_31_overview]].

Source provenance: [official abstract](https://arxiv.org/abs/2608.27956v1), [PDF](https://arxiv.org/pdf/2608.27956v1), [TeX source](https://arxiv.org/src/2608.27956v1). Publication timestamp is UTC. Exposition is Source-derived unless independently checked below.

# Source map

Printed and PDF page numbers agree.

| Source | Role |
|---|---|
| §1, pp. 1-3 | Motivates summing rank/flux and separates the IIB self-dual-field problem from the M-theory ensemble prescription. |
| §2, pp. 3-6 | Euclidean PST action, electric/magnetic split, topological term, flux quantization, variation and conjugate polarizations. |
| §2.1, pp. 7-10 | Twisted thermal AdS, Schur specialization, finite renormalization, KK contribution, large-gauge images and Fourier projection. |
| §3, pp. 11-13 | Exact boundary Schur generating function, effective chemical potential and giant-graviton corrections. |
| §4, p. 14 | Other backgrounds/fluxes, line operators, and the unresolved direct string derivation. |
| Appendix A.1, pp. 15-16 | Harmonic spectrum and regulator-sensitive Casimir prefactor. |
| Appendix A.2-A.3, pp. 16-17 | Localization branch and holographic counterterm scheme matching the Schur Casimir energy. |

Read §2 before §2.1: using only the final Gaussian obscures which boundary variable is fixed. Appendix A is required, not optional normalization housekeeping. §3 supplies the exact field-theory input; it must not be relabelled as an independent bulk computation.

# Euclidean five-form and the missing on-shell action

With orientation $\mathrm{vol}_{10}=\mathrm{vol}_{S^5}\wedge\mathrm{vol}_{\mathrm{AdS}_5}$,

$$
\star\mathrm{vol}_{\mathrm{AdS}_5}=-\mathrm{vol}_{S^5},\qquad
\star\mathrm{vol}_{S^5}=\mathrm{vol}_{\mathrm{AdS}_5},\qquad
\star^2|_{\Omega^5}=-1.
$$

The Euclidean self-duality condition is $\star F_5=iF_5$, and the background is

$$
F_5=-\frac{4i}{L}\mathrm{vol}_{\mathrm{AdS}_5}
+\frac4L\mathrm{vol}_{S^5}.
$$

The ordinary pseudoaction has vanishing on-shell bulk density here: the two curvature contributions cancel and the self-dual five-form has vanishing quadratic contraction. This does not imply vanishing thermodynamic action.

The PST completion uses an auxiliary scalar $a$ and $\mathcal F_5=F_5+i\star F_5$, with the scalar boundary value held fixed. Its detailed covariant variation is source-derived. What matters for the ensemble is the surviving electric boundary pairing

$$
\langle A,B\rangle=\frac{2\pi}{(2\pi\ell_s)^8}
\int_{\partial M}A\wedge B,\qquad
\delta_{\rm el}S_{\rm PST}
=\frac12\langle\delta c_4^{\rm el},\star f_5^{\rm el}\rangle .
$$

Here $c,f$ denote boundary pullbacks and $\star f_5^{\rm el}=if_5^{\rm mag}$ on the self-dual background. The topological term is

$$
S_{\rm top}=-\frac{i}{4\kappa^2}
\int_M F_5^{\rm el}\wedge F_5^{\rm mag}
=-\frac12\langle c_4^{\rm el},\star f_5^{\rm el}\rangle.
$$

Consider $S^{(\alpha)}=S_{\rm PST}+\alpha S_{\rm top}+S_{\rm GHY}+S_{\rm ct}$. Its electric variation contains

$$
\delta S^{(\alpha)}
=\frac{1-\alpha}{2}\langle\delta c,\star f\rangle
-\frac{\alpha}{2}\langle c,\delta\star f\rangle,
$$

in addition to metric/source variations fixed in the stated problem. Dropping the second term requires fixed flux; it is not an off-shell identity for arbitrary boundary data.

# Fixed flux versus fixed potential

Define the integer flux and dimensionless electric source by

$$
N=\frac1{(2\pi\ell_s)^4}\int_{S^5}F_5^{\rm mag},\qquad
\mu=\frac{2\pi i}{(2\pi\ell_s)^4}
\int_{S^1_\tau\times S^3}c_4^{\rm el},\qquad
\langle c,\star f\rangle=-\mu N.
$$

Within a fixed discrete flux sector $\delta\star f=0$, so

$$
\delta S^{(\alpha)}=-\frac{1-\alpha}{2}N\,\delta\mu.
$$

For free $\delta\mu$, stationarity selects $\alpha=+1$. For fixed $\mu$, the same variation vanishes for every $\alpha$; the additional response normalization

$$
\frac{\partial S^{(\alpha)}}{\partial\mu}
=-\frac{1-\alpha}{2}N=-N
$$

selects $\alpha=-1$. The normalization refers to the integer charge conjugate to a source with period $2\pi i$, not to an arbitrary rescaled charge. Thus

$$
S^{(N)}=S_{\rm PST}+S_{\rm top}+S_{\rm GHY}+S_{\rm ct},\qquad
S^{(\mu)}=S_{\rm PST}-S_{\rm top}+S_{\rm GHY}+S_{\rm ct},
$$

$$
S^{(N)}-S^{(\mu)}=2S_{\rm top}=\mu N,\qquad
dS^{(\mu)}=-N\,d\mu,\quad dS^{(N)}=\mu\,dN.
$$

The differential in $N$ describes the continuous saddle interpolation; the exact ensemble is a discrete sum. The PST transformation $\delta_bC_4=b_4$ has cancelling boundary terms for $\alpha=+1$. For $\alpha=-1$, the compatible redundancy obeys $b_4|_{\partial M}=0$. Therefore the admissible gauge group is polarization-dependent; one cannot use the same unrestricted boundary gauge quotient in both ensembles.

Project inference: this is a useful finite-dimensional template for keeping source fibers separate from charge sectors. It is not a proof that arbitrary flux-changing transformations are null directions of a presymplectic form.

# Twisted thermal AdS and the supersymmetric finite term

The thermal identifications rotate the AdS angles by $\widetilde\phi_a=\phi_a+i\epsilon_a\tau$ and the sphere angles by $\widetilde\varphi_I=\varphi_I+i\sigma_I\tau$. The supersymmetric family obeys

$$
\epsilon_1+\epsilon_2+\sum_I\sigma_I=1.
$$

The Schur point is $(\epsilon_1,\epsilon_2)=(1,0)$, $\sigma_I=0$. With
$b_a=1+\epsilon_a$, this is $(b_1,b_2)=(2,1)$. The complex chemical potentials are

$$
\Delta_I=\beta(1-\sigma_I),\qquad
\omega_a=\beta(1+\epsilon_a),\qquad
\sum_I\Delta_I-\sum_a\omega_a=0,
$$

on the selected supersymmetric branch; at Schur they are $(\beta,\beta,\beta;2\beta,\beta)$.

The gauge potential and the flux relation are

$$
C_4^{\rm el}=-iL^4\sinh^4\rho\,d\tau\wedge\mathrm{vol}_{S^3},\qquad
N=\frac{L^4}{4\pi\ell_s^4},\qquad
\mu=\frac{L^4}{2\pi^3\ell_s^4}\mathrm{Vol}^{\rm ren}_{\mathrm{AdS}_5}.
$$

The supersymmetric scheme gives

$$
\mathrm{Vol}^{\rm susy}_{\mathrm{AdS}_5}
=\frac{\pi^2\beta}{54}\frac{(b_1+b_2)^3}{b_1b_2}
\ \longrightarrow\ \frac{\pi^2\beta}{4}.
$$

Consequently

$$
S^{(\mu)}=-\frac{\pi^2\mu^2}{4\mathrm{Vol}^{\rm susy}}
=-\frac{\mu^2}{\beta},\qquad
\mu=\frac{\beta N}{2},\qquad S^{(N)}=\frac{\beta N^2}{4}.
$$

The twist-blind minimal subtraction volume $3\pi^2\beta/16$ would instead give $S^{(\mu)}=-4\mu^2/(3\beta)$ and $S^{(N)}=3\beta N^2/16$. The change from $3/16$ to $1/4$ is a finite scheme choice constrained by supersymmetry; it cannot be suppressed as an irrelevant constant when summing over $N$.

# KK factor, large-gauge images and Fourier projection

Put $q=e^{-\beta}=e^{i\pi\tau}$ with $\beta>0$. The cited single-particle index, including the singleton/doubleton contribution appropriate to $U(N)$ rather than $SU(N)$, is

$$
i_{\rm KK}(q)=\frac{q(2+q)}{1-q^2}.
$$

Its plethystic exponential is

$$
A_{\rm KK}(\beta)=\prod_{n=1}^\infty
\frac1{(1-q^{2n})(1-q^{2n-1})^2}
=\frac1{\vartheta_4(0|\tau)}.
$$

The paper uses this spectrum/index result; it does not recompute the ten-dimensional gauge-fixed determinant from its kinetic operators. Its absence-of-normalizable-zero-modes assertion is likewise not independently established here.

The single-saddle grand potential is $\mu^2/\beta+\log(\mathcal N A_{\rm KK})$. Large gauge transformations act by $\mu\mapsto\mu+2\pi in$. Restoring periodicity yields

$$
\Xi_{\rm pert}(\mu,\beta)=\mathcal N A_{\rm KK}
\sum_{n\in\mathbb Z}\exp\frac{(\mu+2\pi in)^2}{\beta}.
$$

The Gaussian zero-Fourier coefficient fixes $\mathcal N=\sqrt{4\pi/\beta}$:

$$
\frac{\mathcal N}{2\pi}\int_{\mathbb R}e^{-t^2/\beta}\,dt=1.
$$

This normalizes the Gaussian sector only. Including $A_{\rm KK}$, the perturbative $N=0$ coefficient is $A_{\rm KK}$, not the exact empty-theory answer $1$; the large-$N$ approximation need not work at $N=0$.

Poisson resummation gives

$$
\Xi_{\rm pert}=A_{\rm KK}\,
\vartheta_3\left(\frac{i\mu}{2}\,\middle|\,\frac{i\beta}{4\pi}\right)
=A_{\rm KK}\sum_{N\in\mathbb Z}e^{-\beta N^2/4+\mu N}.
$$

Fourier projection on the imaginary $\mu$ period, followed by unfolding the images, gives
$Z_N^{\rm pert}=A_{\rm KK}e^{-\beta N^2/4}$. The bilateral Gaussian sum is a perturbative completion; the exact boundary rank sum has $N\geq0$. Negative integers in the former do not prove physical negative-rank gauge theories.

# Exact boundary answer and nonperturbative corrections

The source imports the exact $U(N)$ Schur matrix integral and its grand canonical evaluation from earlier work. It is the supersymmetric partition function

$$
Z_N(\beta)=q^{N^2/4}I_N(q),
$$

not just the index $I_N$, that is summed:

$$
\Xi(\mu,\beta)=\sum_{N\geq0}e^{\mu N}Z_N
=\frac{\vartheta_3(i\mu_{\rm eff}|\tau)+
\vartheta_2(i\mu_{\rm eff}|\tau)}{\vartheta_4(0|\tau)},
$$

$$
\mu_{\rm eff}=\mu+
\log\frac{1+\sqrt{1-4e^{-2\mu}}}{2}.
$$

The branch is the one asymptotic to $\mu_{\rm eff}\sim\mu$ at large positive real $\mu$; outside it an analytic-continuation prescription is needed. The duplication identity
$\vartheta_2(i\mu|\tau)+\vartheta_3(i\mu|\tau)
=\vartheta_3(i\mu/2|\tau/4)$ reproduces the bulk perturbative answer when $\mu_{\rm eff}$ is replaced by $\mu$.

For $w=e^{-2\mu}$,

$$
\mu_{\rm eff}-\mu=-w-\frac32w^2-\frac{10}{3}w^3+O(w^4),
$$

$$
J_{\rm np}=\frac{\mu_{\rm eff}^2-\mu^2}{\beta}
=\frac{-2\mu w+(1-3\mu)w^2+
(3-\frac{20}{3}\mu)w^3}{\beta}+O(w^4).
$$

This is the nonperiodic grand-potential correction before summing images. The leading $\mu$-enhanced correction to the ratio of periodic partition functions is $-2\mu e^{-2\mu}/\beta$; derivatives of its periodic factor can also contribute at order $e^{-2\mu}$ without the $\mu$ enhancement. Do not confuse these two expansions.

At fixed rank the source gives the giant-graviton expansion

$$
Z_N=q^{N^2/4}A_{\rm KK}
\left[1+\sum_{m\geq1}(-1)^m\frac{N+2m}{m}
\binom{N+m-1}{m-1}q^{m(N+m)}\right].
$$

For example,

$$
\log Z_N^{\rm np}=-(N+2)q^{N+1}
-\frac{(N+2)^2}{2}q^{2N+2}
+\frac{(N+1)(N+4)}2q^{2N+4}+\cdots .
$$

The D3-brane interpretation and exact finite-rank formula are literature-derived inputs here, not a new worldvolume quantization. Absence of additional inverse-$\mu$ terms is inferred by matching the exact boundary expression. A direct bulk localization proof remains open.

# Appendix A: why the Casimir factor is not optional

For $\chi_j(y)=\sum_{m=-j}^{j}y^m$ and $j_1=J_L^3+J_R^3$, the scalar, fermion and transverse-vector harmonic towers are

$$
z_s=\sum_{k\geq0}x^{k+1}\chi_{k/2}^2,\qquad
z_f=\sum_{k\geq0}x^{k+3/2}\chi_{(k+1)/2}\chi_{k/2},
$$

$$
z_v=2\sum_{k\geq0}x^{k+2}\chi_{(k+2)/2}\chi_{k/2},
\qquad z_{\mathcal N=4}=6z_s+z_v-8z_f.
$$

Twist-blind zeta regularization gives $E_s=1/40$, $E_v=11/120$, $E_f=17/240$, hence $E=3/16$ per adjoint generator. Regulating with $x=e^{-\delta}$, $y=e^{-a\delta}$ gives instead

$$
E_c(a)=-\frac12\operatorname{FP}_{\delta\to0}
\partial_\delta z_{\mathcal N=4}(e^{-\delta},e^{-a\delta})
=\frac{3+a^2}{16}.
$$

The generic $a$ is a regulator grading, not a family of supersymmetric physical backgrounds. At $a=1$, the combined letter function reduces to $2q/(1+q)$ and $E_c=1/4$. Multiplying by $\dim U(N)=N^2$ gives the required prefactor.

The localization branch independently quoted in A.2 has
$F=N^2\Delta_1\Delta_2\Delta_3/(2\omega_1\omega_2)=\beta N^2/4$.
A.3 matches it using the finite supersymmetric holographic term. Thus spectrum, localization and renormalization must refer to the same branch and regulator; mixing the untwisted Casimir energy into the Schur sum changes the leading grand potential.

# Verification and evidence boundaries

**Checked — Mathematica, 16 labelled targets.** Two linear equations independently return $\alpha=+1,-1$ with the stated distinct inputs. Eleven exact residuals vanish: Legendre transform, Schur volume, flux-potential relation, KK letter decomposition, Gaussian Fourier coefficient, ordinary zeta Casimir sum, general twisted Casimir finite part, Schur letter limit, localization letter reduction, effective-potential series and grand-potential correction series. Three high-precision numerical tests pass: theta duplication, image/flux sum agreement and the KK product at $\beta=3/2,\mu=7/3$, with absolute residual below $10^{-70}$.

The numerical comparisons use 100-digit inputs, images $-8\leq n\leq8$, flux terms $-30\leq N\leq30$, and 80 product factors. They are finite diagnostic evaluations of the displayed analytic identities, not a uniform convergence proof. The Gaussian integral assumes $\beta>0$ and real Fourier parameter. The character-generating functions were summed independently before expanding the regulator, rather than inserting the source's Casimir answer.

**Checked — Sage, three groups.** For harmonic levels $k=0,\ldots,8$, independent Laurent-polynomial $SU(2)$ characters reproduce dimensions, scalar/spinor magnetic-reflection symmetry, and the two vector-tower dimensions. This is a finite representation check, not a proof of the ten-dimensional KK spectrum.

**Source-derived.** Full PST covariant variation, kinetic-spectrum assignment, exact Schur matrix integral, localization formula, brane interpretation, and finite holographic counterterm prescription. Rendered pages 6, 10 and 15 visually confirm the ensemble signs, Gaussian normalization/Fourier contour and harmonic tower coefficients.

**Blocked.** A first-principles string measure, direct ten-dimensional determinant including zero-mode analysis, and a bulk proof of higher-loop cancellation are not supplied by the paper; they cannot be established by the finite algebraic checks performed here.

**Failed.** No irreparable source contradiction was established. An initial Fourier residual retained $\sqrt{\beta^{-1}}\sqrt\beta$ because the outer simplifier lacked $\beta>0$; adding the assumption yielded zero. Initial exact-input numerical cancellation warnings were removed by rerunning with 100-digit inputs and explicit residual thresholds. These were verification-script issues, not failed paper identities.

Verified: the listed algebra, Fourier transform, regulator finite part and finite numerical/representation diagnostics.

Assumptions: Euclidean self-duality/orientation above; fixed non-electric sources; flux-sector variation versus continuous saddle interpolation distinguished; $\beta>0$; $U(N)$ singleton included; Schur supersymmetric branch and counterterm scheme; large-positive-$\mu$ branch for the transseries.

Not independently verified: the full PST tensor derivation, the KK determinant/zero modes, exact matrix-integral evaluation, nonperturbative brane measure, general-topology contour and bulk localization. No general CPS nondegeneracy, gauge-reduction completeness or gluing theorem follows.

# Use in the current project

The most reusable chain is boundary variation → allowed polarization → response normalization → Legendre transform. Keep the gauge group's boundary restriction beside the polarization, and keep finite counterterms beside a quantity later summed over sectors. The paper provides a controlled worked example of those distinctions, not authorization to infer a quantum sewing measure from a classical boundary term.
