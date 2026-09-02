---
paper id: 2608.28337v1
title: Explicit gauge-invariant variables in multifield inflation beyond linear order and Hamiltonian dynamics
authors:
  - Julien Grain
  - Hugo Holland
  - Lucas Pinol
publication date: 2026-08-28T13:47:43
abstract: |-
  The paper develops a Hamiltonian treatment of general relativity with multiple scalar fields and curved field space through cubic order. It proposes explicit quadratic gauge-invariant extensions of Mukhanov-Sasaki phase-space variables on super-Hubble scales, a flat-gauge Hamiltonian, and a finite-dimensional construction with a higher-order extension sketch.
comments: "34 pages + 10 pages of appendices; downloaded PDF has 48 pages including title and references"
url: https://arxiv.org/abs/2608.28337v1
summary: "Useful constrained-phase-space linear algebra, but several displayed nonlinear formulas fail direct algebraic checks; do not import the claimed complete explicit construction as verified."
tags: []
---

# Verdict and reading priority

The claim that the displayed v1 formulas form an internally consistent verified nonlinear canonical construction is incorrect. Direct checks find an incorrect lapse formula, unequal lines in Eq. (3.35), an inconsistent single-field limit of Eq. (3.47), and a momentum in Eq. (5.28) whose bracket is $-1$ rather than $+1$. These are source-level failures, confirmed against rendered pages, not PDF extraction artifacts.

The general finite-dimensional quadratic-invariant construction remains useful: it can be checked independently without accepting those formulas. The explicit result is restricted to the scalar, super-Hubble/separate-universe setting; this is not an all-scale or all-order reduction theorem.

Reason codes: T1-symplectic, T1-symmetry, T2-model. High reading priority reflects the direct reduction method, not an endorsement of every claim. Today's overview: [[2026_08_31_overview]].

Source provenance: [official abstract](https://arxiv.org/abs/2608.28337v1), [PDF](https://arxiv.org/pdf/2608.28337v1), [TeX](https://arxiv.org/src/2608.28337v1). Timestamp is UTC; primary category is astro-ph.CO, cross-listed to gr-qc and hep-th. Technical exposition below is Source-derived unless marked Checked or Re-derived.

# Full source map and dependencies

Printed page numbers are one less than PDF page numbers.

| Cluster | Content and dependency |
|---|---|
| §1, pp. 1-3 | Explains the distinction between calculating in a gauge and constructing gauge-independent variables; explicitly restricts the solved nonlinear construction to large scales. |
| §2.1-2.3, pp. 3-7 | Sigma-model action, ADM constraints, background $(v,\theta)$ and scalar perturbation variables. |
| §2.4, pp. 7-11 | Field-space covariant canonical variables, time-dependent generating function, quadratic/cubic Hamiltonian. Keep the multiplier constraint distinct from the evolution Hamiltonian. |
| §3.1, pp. 11-14 | First/second-order gauge transformations. The lapse expression (3.14) needs correction. |
| §3.2, pp. 14-19 | Linear Mukhanov-Sasaki pair, six quadratic invariants, flat-gauge and comoving completions. Eq. (3.35) contains a failed equality. |
| §3.3, pp. 19-20 | Multifield formulas and canonical-bracket claim. Their single-field limit is inconsistent with §3.2. |
| §4, pp. 20-22 | Solve constraints and preserve flat gauge, then shift momenta to remove quadratic mixing. Cubic kernel table must not be used without rederivation. |
| §5.1-5.2, pp. 23-31 | Physical/constraint/gauge basis; symmetric-matrix construction and conjugate-momentum conditions. Central linear algebra is reusable, but the displayed sufficient momentum prescription fails. |
| §5.3, pp. 31-33 | $2n+2$ phase space and cubic symmetric-tensor counting. A sketch, not a curved-field-space all-order proof. |
| §6, pp. 33-34 | Stochastic inflation, loops and nonlinear canonical decoupling as future applications. |
| A, pp. 35-37 | Generating-function bookkeeping, distinction between $\widetilde{\mathcal C}$ and $\mathcal C_{\rm cov}$, linear evolution equations. |
| B, pp. 37-38 | ADM tensor extension and Lie-derivative route. No independent full tensor audit here. |
| C, pp. 38-41 | Fifteen two-field quadratic invariants and explicit two-field formulas; several index/normalization issues remain in the displayed extension. |
| D, pp. 41-44 | Hypersurface deformation generator, lapse-dependent nested brackets, third-order expansion. |

Recommended use: start with §2.1-2.2 and §5.1-5.2; read the failure ledger before copying §3 or §4. The appendices were inspected as part of the source chain, not skipped because they are long.

# Action, background and perturbative order

The Lorentzian action is

$$
S=\int d^4x\sqrt{-g}\left[
\frac{M_{\rm Pl}^2}{2}R-\frac12g^{\mu\nu}G_{IJ}(\phi)
\partial_\mu\phi^I\partial_\nu\phi^J-V(\phi)\right].
$$

With $ds^2=-N^2d\tau^2+\gamma_{ij}(dx^i+N^id\tau)(dx^j+N^jd\tau)$,

$$
S=\int d\tau\,d^3x\,
(\pi_I\dot\phi^I+\pi^{ij}\dot\gamma_{ij}-N\mathcal C-N^i\mathcal D_i),
$$

$$
\mathcal C^\phi=\frac{G^{IJ}\pi_I\pi_J}{2\sqrt\gamma}
+\frac{\sqrt\gamma}{2}\gamma^{ij}G_{IJ}\partial_i\phi^I\partial_j\phi^J
+\sqrt\gamma V,\quad
\mathcal C^G=\frac{2}{M_{\rm Pl}^2\sqrt\gamma}
(\pi_{ij}\pi^{ij}-\tfrac12\pi^2)-\frac{M_{\rm Pl}^2\sqrt\gamma}{2}R^{(3)}.
$$

The matter part of $\mathcal D_i$ is $\pi_I\partial_i\phi^I$; the gravitational part generates spatial diffeomorphisms. Lapse and shift enforce constraints and are not counted as scalar physical pairs.

At spatially flat FLRW background,

$$
v=a^3,\quad\gamma_{ij}=v^{2/3}\delta_{ij},\quad
\pi^{ij}=\tfrac12v^{1/3}\theta\delta^{ij},\qquad
\mathcal C^{(0)}=\frac{\pi_I\pi^I}{2v}+vV-\frac{3v\theta^2}{4M_{\rm Pl}^2}=0.
$$

The canonical bracket is $\{v,\theta\}=1$. Hamilton's equations give

$$
\dot\phi^I=\frac Nv\pi^I,\quad D_\tau\pi_I=-NvV_{;I},\quad
\dot v=-\frac{3Nv\theta}{2M_{\rm Pl}^2},\quad
\dot\theta=\frac{N\pi_I\pi^I}{v^2},
$$

where the last expression uses $\mathcal C^{(0)}=0$. Also
$\rho=\pi^2/(2v^2)+V$, $p=\pi^2/(2v^2)-V$.
The expanding branch has $\theta=-2M_{\rm Pl}\sqrt{\rho/3}$.

Scalar metric perturbations are obtained with

$$
\delta\gamma_1=\delta^{ij}\delta\gamma_{ij}/\sqrt3,\qquad
\delta\gamma_2=D^{ij}\delta\gamma_{ij},\quad
D_{ij}=\sqrt{\frac32}\left(\partial_i\partial_j\partial^{-2}
-\frac13\delta_{ij}\right),
$$

and similarly for their momenta. $\partial^{-2}$ needs a zero-mode/boundary prescription. $D_{ij}$ is order zero, so its terms do not automatically disappear in a gradient expansion.

The field-space covariant perturbations begin as

$$
\delta\phi^I=Q^I-\tfrac12\Gamma^I_{JK}Q^JQ^K+\cdots,\quad
\delta\pi_I=P_I+\Gamma^K_{IJ}\pi_KQ^J+\cdots .
$$

The higher terms follow from the displayed time-dependent generating function. Such a transformation changes the Hamiltonian by its time derivative; replacing variables in $\mathcal C$ alone is insufficient.

# Why two different second-order constraints appear

The source organizes the perturbative Hamiltonian as

$$
H^{(2)}+H^{(3)}=\int d^3x\left[
\delta N(\widetilde{\mathcal C}^{(1)}+\widetilde{\mathcal C}^{(2)})
+\delta N^i(\mathcal D^{(1)}_{i,\rm cov}+\mathcal D^{(2)}_{i,\rm cov})
+N(\mathcal C_{\rm cov}^{(2)}+\mathcal C_{\rm cov}^{(3)})\right].
$$

$\widetilde{\mathcal C}^{(2)}$ multiplies an inhomogeneous lapse fluctuation. $\mathcal C_{\rm cov}^{(2)}$ includes generating-function corrections and may have spatial divergences removed under the spatial integral with homogeneous background lapse. The source gives

$$
\widetilde{\mathcal C}^{(2),G}=\mathcal C_{\rm cov}^{(2),G}+\mathcal M^{(2)},\qquad
\widetilde{\mathcal C}^{(2),\phi}=\mathcal C_{\rm cov}^{(2),\phi}
+\frac13R_I{}^{KL}{}_J\pi_K\pi_LQ^IQ^J.
$$

The quadratic matter evolution term contains
$P^2/(2v)+vV_{;IJ}Q^IQ^J/2-R_I{}^{KL}{}_J\pi_K\pi_LQ^IQ^J/(2v)$,
plus gradient and gravity-matter mixing terms. Cubic terms include covariant $V_{;IJK}$, $\nabla R\,\pi^2Q^3$ and $R\,\pi P Q^2$, as well as gravitational and gradient vertices.

For a finite spatial region, the discarded $\mathcal M^{(n)}$ is a boundary term, not zero by definition. Applying this method to regional CPS would require retaining it and specifying boundary data. In addition, the cubic potential coefficient as printed fails the elementary test below, so this note does not endorse the full cubic coefficient table.

# Linear invariants and the large-scale quadratic problem

At linear order the relevant shifts are

$$
\Delta Q^I=\frac Nv\pi^I\xi^0,\qquad
\Delta P_J=-NvV_{;J}\xi^0,\qquad
\Delta(\sqrt2\delta\gamma_1-\delta\gamma_2)
=\frac{2\sqrt2Nv^{2/3}\sqrt\rho}{M_{\rm Pl}}\xi^0.
$$

Consequently the source's linear pair is

$$
\mathcal Q^I=Q^I-
\frac{M_{\rm Pl}\pi^I}{2\sqrt2v^{5/3}\sqrt\rho}
(\sqrt2\delta\gamma_1-\delta\gamma_2),\qquad
\mathcal P_J=P_J+
\frac{M_{\rm Pl}v^{1/3}V_{;J}}{2\sqrt2\sqrt\rho}
(\sqrt2\delta\gamma_1-\delta\gamma_2).
$$

These cancel both temporal and scalar spatial gauge parameters, and their canonical bracket is $\delta^I_J$ with the spatial delta distribution understood. Both become $(Q^I,P_J)$ in flat gauge. These facts were independently checked.

At second order, $\delta_2T$ transforms as

$$
\Delta\delta_2T=\mathcal L_{\xi_{(1)}}\delta_1T+
\tfrac12\mathcal L_{\xi_{(1)}}^2\bar T+
\mathcal L_{\xi_{(2)}}\bar T.
$$

The explicit construction assumes $k^2/(a^2H^2)\ll1$, a scalar gradient expansion and the usual attractor setting. It does not include scalar-induced tensors or demonstrate a closed full nonlinear scalar truncation. The second gauge parameter cancels in a linear invariant, but products of the first parameter with perturbations remain.

For one field the source solves an inhomogeneous $4\times10$ symmetric-matrix problem and adds six homogeneous invariants $v_\alpha$. For example,

$$
v_3=P\delta\gamma_1+\frac{\sqrt\rho}{M_{\rm Pl}v^{1/3}V_{;\phi}}P^2
+\frac{M_{\rm Pl}v^{1/3}V_{;\phi}}{4\sqrt\rho}\delta\gamma_1^2.
$$

This freedom is used to remove terms surviving when $\delta\gamma_1=\delta\gamma_2=0$. A separate $D^{mn}(\delta\gamma_1\partial_\tau D_{mn}\delta\gamma_2)$ correction handles the nonlocal anisotropic scalar projector.

The intermediate basis divides by $V_{;\phi}$, $\pi_\phi$, $3p+\rho$ and $\sqrt{p+\rho}$: these expressions describe a chart, not regular coordinates through every turning point. Replacing $\pi_\phi/v$ by $\sqrt{p+\rho}$ also chooses the positive-momentum branch unless a sign is supplied. Flat gauge itself requires a nondegenerate expansion rate; comoving gauge additionally requires nonzero clock velocity.

The comoving construction adds quadratic invariants to
$\mathcal R=\delta\gamma_1/(2\sqrt3v^{2/3})-\theta vQ/(2M_{\rm Pl}^2\pi_\phi)$
so that it reduces to the metric curvature perturbation when $Q=0$.
This gauge-specialization property is not by itself proof of gauge invariance.

# The reusable finite-dimensional construction

In the isotropic separate-universe sector take
$z=(\phi,\gamma_1,\pi_\phi,\pi_1)^T$ and

$$
\Omega=\begin{pmatrix}0&I\\-I&0\end{pmatrix},\quad
K_1=\Omega\nabla\mathcal C^{(0)},\quad
K_2=\Omega\,\mathrm{Hess}(\mathcal C^{(0)}).
$$

At a regular background $K_1\neq0$, choose an orthonormal symplectic basis
$(e^{\mathcal P},e^{\mathcal C},\bar e^{\mathcal P},\bar e^{\mathcal C})$
with $\bar e=-\Omega e$ and $K_1=\lambda e^4$.
This is a local background-dependent basis, not a global reduced chart.

With $t=N\xi^0_{(1)}$, the second-order transformation has the form

$$
\Delta z_1=\lambda t e^4,\qquad
\Delta z_2=A e^4+tK_2z_1+\tfrac12\lambda t^2K_2e^4.
$$

The unspecified $A$ packages lapse and second-parameter terms. For

$$
F_2=q^Tz_2+\tfrac12z_1^TMz_1,\qquad M=M^T,
$$

the sufficient conditions are

$$
q^Te^4=0,\qquad \lambda e^{4T}M=-q^TK_2.
$$

The $t^2$ equation is the fourth component of the same row condition, not an additional independent equation. Direct symbolic substitution verifies the complete cancellation.

Thus four of ten symmetric entries are fixed and six remain. For $n$ fields, $d=2n+2$, the homogeneous quadratic freedom has dimension

$$
\dim\ker(M\mapsto MK_1)=\frac{d(d-1)}2=(2n+1)(n+1).
$$

It is $6,15,28$ for $n=1,2,3$. These are invariant quadratic polynomials before imposing the constraint, not counts of propagating modes; terms proportional to the constraint are included. The physical phase-space dimension is $2n$. The source's prose uses “kernel” and “null space” for different dimensions in §5.2; correctly, rank is $d$ and kernel/nullity is $d(d-1)/2$.

For a momentum completion $P=p^Tz+\tfrac12z^TLz$,

$$
\{F,P\}=q^T\Omega p+
z^T(M\Omega p-L\Omega q)+O(z^2).
$$

One needs $q^T\Omega p=1$ and $M\Omega p=L\Omega q$, with both matrices symmetric and satisfying their gauge rows. Quadratic truncations therefore give $1+O(z^2)$, not an exact Darboux pair. Third-order variable corrections would be needed to control the quadratic bracket remainder.

Re-derived local algebra: the source's proposed $L$ below fails, but the elementary symmetric equation $Lw=u$ has a solution for nonzero Euclidean $w$,

$$
L=\frac{uw^T+wu^T}{w^Tw}
-\frac{u^Tw}{(w^Tw)^2}ww^T.
$$

The identity $Lw=u$ was checked. Applied in the gauge-orthogonal subspace, this is a useful repair ingredient; it does not repair all printed cosmological formulas or prove global canonical completeness.

At cubic order the source introduces a symmetric $T_{abc}$ in
$q\cdot z_3+M(z_2,z_1)+T(z_1,z_1,z_1)/6$.
For a single clock, its proposed count is 20 entries, ten fixed and ten homogeneous. The combinatorial count is checked; compatibility of every third-order equation and the curved-field-space extension is not. The all-scale and all-order constructions remain open.

# Flat-gauge dynamics and its boundary

The reduction procedure is: impose $\delta\gamma_1=\delta\gamma_2=0$; use the linear scalar and momentum constraints to solve $\delta\pi_1,\delta\pi_2$; impose preservation of the gauge to solve lapse/shift; then perform a time-dependent momentum shift to remove $QP$ mixing.

The resulting structural form is

$$
H_{\rm flat}=D^{IJ}\widetilde P_I\widetilde P_J+M_{IJ}Q^IQ^J
+A_{IJK}Q^IQ^JQ^K+B_{IJ}{}^KQ^IQ^J\widetilde P_K
+C^{IJ}{}_K\widetilde P_I\widetilde P_JQ^K,
$$

with Fourier convolutions and momentum conservation implicit, not one common momentum for all three factors. Curvature and potential derivatives enter $M,A,B$; inverse Laplacians from the shift generate momentum-ratio kernels.

The source claims comparison with the Lagrangian literature. That comparison has not been independently reproduced here, and the failed cubic potential coefficient prevents using its printed table as verified. Even a corrected all-scale flat-gauge Hamiltonian would not prove that the explicit large-scale invariant variables are valid at all scales. A quantum loop claim also needs the quartic Hamiltonian, measure, regulator and boundary terms.

# Failed: precise source-level checks

## Lapse transformation, Eq. (3.14)

With the paper's plus-Lie-derivative convention,
$\Delta g_{00}=-2N\dot N\xi^0-2N^2\dot\xi^0$.
Since $\delta g_{00}=-2N\delta N$, the lapse transforms as
$\Delta\delta N=\dot N\xi^0+N\dot\xi^0$.
Equation (3.14) instead uses the metric-component expression as the lapse shift. Its residual is
$-(1+2N)(\dot N\xi^0+N\dot\xi^0)$, generically nonzero.
The later §5 and Appendix D use the correct $\partial_\tau(N\xi^0)$, so the source is internally inconsistent. Equation (3.19) also omits the free-index factor $\pi^I$ from its $\xi\partial\xi$ term, although it is present in the preceding (3.16).

## Eq. (3.35) has unequal lines; Eq. (3.47) has a failed limit

A regular expanding, inflating background witness is

$$
v=M_{\rm Pl}=N=\pi_\phi=1,\quad
\rho=3,\quad p=-2,\quad\theta=-2,\quad
V=\tfrac52,\quad V_{;\phi}=2,\quad V_{;\phi\phi}=3.
$$

It satisfies the Hamiltonian constraint and $\rho+3p<0$. Write the homogeneous perturbations as $z=(Q,g,P,h)$ with $g=\delta\gamma_1$, $h=\delta\pi_1$. Then the quadratic correction obtained from the first line of (3.35), using its particular solution and $v_1,v_3$, is

$$
-\frac{gh}{6}-\frac{gP}{2\sqrt3}+\frac{g^2}{16}.
$$

The expanded second line instead gives the same cross terms plus $5g^2/48$. The first-minus-second residual is $-g^2/24$. It is nonzero independently of any evolution claim.

For an independent gauge check, expand the exact homogeneous constraint

$$
\mathcal C=\frac{P_{\rm bg}^2}{2(\gamma_1/\sqrt3)^{3/2}}
+(\gamma_1/\sqrt3)^{3/2}V(\phi)
-\sqrt{\gamma_1/\sqrt3}\,\pi_1^2
$$

at $(\phi,\gamma_1,P_{\rm bg},\pi_1)=(0,\sqrt3,1,-\sqrt3)$,
with $V(\phi)=5/2+2\phi+3\phi^2/2$.
This gives $K_1=(1,2\sqrt3,-2,-\sqrt3/2)$.
The row residual $q^TK_2+K_1^TM$ vanishes for the first-line correction and equals $(0,1/(2\sqrt3),0,0)$ for the expanded line. Thus the failure is not fixed by stating that gradients are neglected.

The single-field specialization of (3.47) flips the signs of the displayed quadratic correction and changes the $gP$ coefficient from $-M_{\rm Pl}/(2v^{5/3}\sqrt\rho)$ to $+M_{\rm Pl}/(2v^{1/3}\sqrt\rho)$. At the same witness its gauge residual is
$(0,-3\sqrt3/2,2,2/\sqrt3)$.
At least the printed explicit extension is invalid; covariance of index notation cannot cure this limit.

## Cubic potential term, Eq. (2.53) and §4

For flat field space and no metric perturbation, directly Taylor-expanding $\sqrt\gamma V=vV$ gives
$vV_{;IJK}Q^IQ^JQ^K/6$.
Equation (2.53) prints $V_{;IJK}Q^IQ^JQ^K/6$ without $v$; the omission is repeated after flat-gauge reduction. The coefficient difference is $(v-1)V'''/6$ in the single-field test. No field rescaling that removes this factor is defined there. This blocks endorsement of the full cubic table, not the structural existence of a cubic expansion.

## Canonical sign and nonsymmetric sufficient matrix, §5.2

Equation (5.28) chooses $p_{\mathcal P}=+\Omega q_{\mathcal P}/|q_{\mathcal P}|^2$.
With the displayed $\Omega^2=-I$, this gives $q^T\Omega p=-1$. The required sign is negative. This is an exact algebraic contradiction with Eq. (5.26), not a numerical discrepancy.

The unnumbered “sufficient solution” after (5.32) chooses $L_{\rm GI}=|q_{\mathcal P}|^{-2}M_{\rm GI}\Omega$. It need not be symmetric. For $q=e_1$, $M_{\rm GI}=\mathrm{diag}(1,0,2,0)$, its antisymmetric part has entries $(L-L^T)_{13}=3$, $(L-L^T)_{31}=-3$. Even using a corrected $p=e_3$, the canonical vector residual is $(2,0,0,0)$. A different symmetric construction is required.

These checks isolate incorrect displayed expressions; they do not establish that no corrected second-order invariant/canonical chart exists.

# Verification ledger and limits

Checked — Mathematica: 24 labelled outputs, including exact linear invariant/bracket cancellations, background canonical map and on-constraint evolution, generic quadratic-invariant cancellation, the six single-field homogeneous invariant polynomials at the stated witness, canonical/gauge tests, direct Taylor coefficient and symmetric-solution identity. The run intentionally contains nonzero failed source residuals; it is not an all-pass suite.

Checked — Sage: rank/nullity $(4,6),(6,15),(8,28)$ for the symmetric map $M\mapsto MK_1$ at nonzero rational witnesses, and the single-field cubic symmetric-tensor count. These support finite linear algebra, not continuum reduction or all-order compatibility.

Checked — xAct: $R_{KIJL}\pi^K\pi^I\pi^L=0$ by the first-pair antisymmetry of the field-space Riemann tensor. The term appearing in the second-order momentum transformation therefore adds no independent structure under the stated metric-compatible Riemann convention.

Source-derived: full covariant generating-function expansion, unrestricted cubic gravity/gradient terms, the two-field coefficient list, the literature Hamiltonian comparison and higher-order nested-bracket proposal. None is promoted to Checked merely because its TeX was read.

Failed: the specific formulas and residuals above. The first-line homogeneous repair of (3.35) is checked locally, but not a repaired full second-order canonical pair. In fact, retaining one successful check does not clear the rest of the coefficient table.

Blocked: the failed displayed expressions prevent adopting a validated all-component nonlinear formula set without a fresh derivation or corrected source. An all-scale explicit invariant pair, full tensor/vector sector, higher-order compatibility proof and loop calculation are outside the demonstrated result.

Verified: the listed exact algebra, finite-dimensional diagnostics and localized counterexamples.

Assumptions: expanding background; regular constraint gradient; scalar/separate-universe approximation where stated; fixed background coefficients in perturbation brackets; nonzero denominators of each coordinate chart; field-space Riemann convention; spatial boundary terms omitted only under an appropriate integration policy.

Not independently verified: every full cubic coefficient, full field-space canonical map, all fifteen two-field formulas at arbitrary curved backgrounds, unrestricted second-order diffeomorphism algebra, exact nonlinear Darboux coordinates, continuum functional analysis or quantum observables.

PDF extraction emitted a font-type mismatch warning. Rendered printed pages 11, 13, 17, 19, 20, 29 and 30 were used to confirm the audited coefficients and labels. Initial arithmetic substitutions in the checking script's momentum and $v_2$ witnesses were corrected against source coefficients and rerun before recording source failures.

# Project takeaway

Use the gauge-direction symmetric-matrix problem as a local reduction template, with physical dimension distinguished from the dimension of invariant polynomials. Do not use this v1's explicit nonlinear formulas as a verified benchmark for CPS, gauge sewing or quantization. The next scientific step would be a fresh coefficient derivation, not an automatic promotion of the paper's “perfect agreement” claim.
