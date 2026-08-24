---
paper id: 2608.16997v1
title: Who Writes the Gravitational Second Law of Thermodynamics?
authors:
  - V. R. Shajiee
  - M. M. Sheikh-Jabbari
  - V. Taghiloo
publication date: 2026-08-17T18:00
abstract: |-
  The paper identifies Einstein-gravity entropy with the local transverse-Lorentz-boost surface charge and asks which observers see it obey a second law. It selects freely falling causal observers whose non-affine parameter is adjusted by the codimension-two expansion, then rewrites the entropy rate as a future-integrated Raychaudhuri balance. Non-negativity follows conditionally from a future-equilibrium boundary condition and an integrated strong energy condition.
comments: "5 pages, two-column, two figures"
url: https://arxiv.org/abs/2608.16997v1
summary: "A concise boost-charge construction whose second-law statement is useful but teleological and substantially more conditional than the abstract suggests."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: work in Einstein gravity; choose a compact spacelike codimension-two surface and a hypersurface-orthogonal timelike geodesic congruence; impose the normal-frame gauge used in the paper; use the expansion-adjusted non-affine parameter; assume the entropy rate tends to zero in the future with the stated normalization; and require the future integral of the Ricci term to be non-negative.

Under these conditions the paper derives a **classical geometric balance law** for the area entropy rate. It does not prove a generalized second law, a quantum statement, or an unconditional local-in-time theorem. The sign is obtained from a future-integrated Raychaudhuri equation, so the result is teleological despite the paper's use of “(quasi)-local.”

The phrase “strictly non-decreasing” should be rewritten as **non-decreasing**: the rate can vanish when the expansion, shear, normal rotation and Ricci contraction all vanish along the relevant future segment.

# What is being proposed

The construction has two logically separate parts:

1. identify entropy with an integrable local-Lorentz boost charge in first-order Einstein gravity;
2. choose a special causal observer parametrization for which Raychaudhuri turns the entropy rate into a sum of squares plus a curvature term.

The first part is observer independent only after a boost generator has been fixed. The second part is explicitly observer and parametrization dependent.

# Geometric setup and notation

Let \(\Sigma\) be a compact spacelike codimension-two surface. A unit future timelike vector \(v^\mu\) and unit spacelike normal \(s^\mu\) span its transverse plane \(\mathcal D\):
\[
v^2=-1,
\qquad
s^2=1,
\qquad
v\cdot s=0.
\]
The spacetime metric is decomposed as
\[
g_{\mu\nu}=q_{\mu\nu}-v_\mu v_\nu+s_\mu s_\nu,
\]
where \(q_{\mu\nu}\) is the induced metric on \(\Sigma\). The binormal is
\[
\epsilon_{\mu\nu}=2v_{[\mu}s_{\nu]}.
\]

The source decomposes the derivatives of \(v\) and \(s\) into the codimension-two expansion tensors, accelerations, normal extrinsic curvatures and a normal-bundle one-form \(\omega_\mu\). For the selected observer it imposes hypersurface orthogonality of \(v\), the normal gauge \(\kappa_s=0\), and affine geodesic motion in proper time,
\[
v\cdot\nabla v^\mu=0.
\]

Writing
\[
\Theta^{(v)}_{\mu\nu}
=\frac{\theta_v}{D-2}q_{\mu\nu}+N^{(v)}_{\mu\nu},
\qquad
q^{\mu\nu}N^{(v)}_{\mu\nu}=0,
\]
defines the transverse expansion \(\theta_v\) and shear \(N^{(v)}_{\mu\nu}\).

# Entropy as a transverse-boost surface charge

In first-order Einstein gravity the source starts from
\[
\delta Q_\Lambda
=-\frac{1}{16\pi G}\int_\Sigma
\Lambda^{ab}\,\delta\!\left[\star(e_a\wedge e_b)\right].
\]
If the internal Lorentz parameter is field independent,
\[
\delta\Lambda^{ab}=0,
\]
this integrates to
\[
Q_\Lambda
=-\frac{1}{16\pi G}\int_\Sigma
\star(e_a\wedge e_b)\Lambda^{ab}.
\]
For the transverse boost generator
\[
\Lambda_{\mathrm{boost}}^{ab}
=-\frac{2\pi}{\hbar}\epsilon^{ab},
\]
the charge is
\[
S[\lambda]
=\frac{1}{4G\hbar}\int_{\Sigma(\lambda)}\!\mathrm d^{D-2}x\sqrt q
=\frac{A(\lambda)}{4G\hbar}.
\]

This is a clean algebraic integrability statement only for a fixed internal boost parameter. Because the displayed \(\epsilon^{ab}\) is written using the adapted dynamical frame and normal plane, the compatibility of \(\delta\Lambda^{ab}=0\) with arbitrary variations of a moving \(\Sigma\) is assumed here rather than established in this Letter. The paper delegates the full CPS construction and comparison with Wald entropy to arXiv:2511.07510.

# Expansion-adjusted observers

Reparametrize the same timelike curve from proper time \(\tau\) to \(\lambda\):
\[
v_\lambda^\mu=\mathscr R v^\mu,
\qquad
\mathscr R=\frac{\mathrm d\tau}{\mathrm d\lambda}>0.
\]
The paper selects the non-affine geodesic condition
\[
v_\lambda\cdot\nabla v_\lambda^\mu
=-\theta_{v_\lambda}v_\lambda^\mu,
\qquad
\theta_{v_\lambda}=\mathscr R\theta_v.
\]
Using affine motion in \(\tau\), this is equivalent to
\[
v\cdot\nabla\mathscr R=-\mathscr R\theta_v.
\]
Since \(v\cdot\nabla\sqrt q=\sqrt q\,\theta_v\), one gets
\[
v_\lambda\cdot\nabla(\sqrt q\,\mathscr R)=0.
\]
Thus \(\sqrt q\,\mathscr R\), not \(\sqrt q\) separately, is constant along the selected parametrized congruence. The condition fixes \(\mathscr R\) along each generator only after initial normalization data are supplied.

# Source chain for the second-law formula

The instantaneous entropy rate is
\[
\delta_\gamma S[\lambda]
=\frac{1}{4G\hbar}
\int_{\Sigma(\lambda)}\!\mathrm d^{D-2}x\,
\mathcal L_{v_\lambda}\sqrt q.
\]
The paper assumes the future boundary condition
\[
\left.\mathcal L_{v_\lambda}\sqrt q\right|_{\lambda\to\infty}=0,
\qquad
\mathscr R\to1,
\]
and rewrites the current rate as
\[
\delta_\gamma S[\lambda]
=-\frac{1}{4G\hbar}
\int_\Gamma\!\mathrm d^{D-2}x\,\mathrm d\lambda\,
\mathcal L_{v_\lambda}\mathcal L_{v_\lambda}\sqrt q.
\]
This equality already contains the future-equilibrium assumption; it is not a pointwise consequence of the local field equations.

For the affine congruence the causal Raychaudhuri equation is written as
\[
v\cdot\nabla\theta_v
=-\frac{\theta_v^2}{D-2}
-2\omega_\mu\omega^\mu
-N_v^2
-R_{vv}.
\]
The apparently unusual denominator \(D-2\) and the \(2\omega^2\) term are consistent with the paper's codimension-two split. In a spatial basis adapted to \((q,s)\), the full deformation matrix has the block form
\[
B=
\begin{pmatrix}
\frac{\theta_v}{D-2}\mathbf 1+N & -\omega\\
-\omega^{\mathsf T} & 0
\end{pmatrix},
\]
so
\[
B_{ij}B^{ij}
=\frac{\theta_v^2}{D-2}+N_v^2+2\omega^2.
\]

Using \(\mathrm d\lambda=\mathrm d\tau/\mathscr R\) then yields the main formula
\[
\delta_\gamma S[\tau]
=\frac{1}{4G\hbar}
\int_\Gamma\!\mathrm d^{D-2}x\,\mathrm d\tau\,
\sqrt q\,\mathscr R
\left(
\frac{\theta_v^2}{D-2}
+2\omega^2+N_v^2+R_{vv}
\right).
\]

# Energy condition and exact positivity statement

With the Einstein equation written without a cosmological-constant term,
\[
R_{\mu\nu}
=8\pi G\left(T_{\mu\nu}-\frac{T}{D-2}g_{\mu\nu}\right),
\]
the strong energy condition implies \(R_{vv}\ge0\). The balance law therefore gives
\[
\delta_\gamma S\ge0.
\]

The minimal condition is weaker than pointwise SEC: the weighted future integral of \(R_{vv}\) may be negative on subsegments provided the total, together with the non-negative kinematical terms, remains non-negative. Conversely, the theorem does not directly cover a negative cosmological constant, dark-energy matter, generic quantum fields, or semiclassical backreaction. Those cases require the actual curvature contribution to be audited rather than folded silently into “matter satisfying SEC.”

# Null limit

The Letter quotes, rather than derives, a null limit from arXiv:2511.07510:
\[
\delta_\gamma S[\tau]
=\frac{1}{4G\hbar}
\int_\Gamma\!\mathrm d^{D-2}x\,\mathrm d\tau\,
\sqrt q\,\widetilde{\mathscr R}
\left(
\frac{\theta_l^2}{D-2}+N_l^2+R_{ll}
\right).
\]
Its sign follows under an integrated null-curvature condition, corresponding in Einstein gravity to an integrated null energy condition. The timelike-to-null limiting procedure is not contained in the five-page source and remains source-derived here.

# Relation to the vault's CPS and gluing programme

- The local-Lorentz charge is a useful first-order-gravity comparison for entropy as an internal-gauge surface charge rather than a diffeomorphism charge.
- The paper sharply separates charge integrability from monotonicity: integrability comes from \(\delta\Lambda=0\), whereas the sign of the rate comes from Raychaudhuri, a selected clock, a future boundary condition and an energy condition.
- It does not provide a finite-region extended phase space, corner symplectic form, boundary-condition analysis, or gluing map. “Surface charge” here should therefore not be imported as a completed boundary-feedback construction.
- For AdS applications the missing cosmological-constant bookkeeping is decisive. One must recompute \(R_{vv}\) with the chosen Einstein-equation convention before treating the result as an AdS second law.

# What is established and what is not

## Source-derived

- The first-order charge variation and its algebraic integration for field-independent \(\Lambda^{ab}\).
- The area value of the boost charge in Einstein gravity.
- The expansion-adjusted observer condition and conservation of \(\sqrt q\mathscr R\).
- The future-integrated timelike balance formula and the quoted null analogue.
- The conditional positivity statement under integrated curvature/energy conditions.

## Checked

- The five-page official PDF was rendered and visually inspected; the title, authors, equation labels, central formulas and reference to arXiv:2511.07510 agree with the retrieved TeX source.
- Mathematica independently checked the expansion-adjusted identity
  \(v_\lambda\!\cdot\nabla(\sqrt q\mathscr R)=0\)
  after substituting
  \(v\cdot\nabla\sqrt q=\sqrt q\theta_v\) and
  \(v\cdot\nabla\mathscr R=-\mathscr R\theta_v\).
- Mathematica checked the measure conversion from \(\lambda\) to \(\tau\) in the main balance law.
- In the explicit \(D=4\) block decomposition, Mathematica returned zero for
  \[
  \operatorname{tr}(B^2)
  -\left(\frac{\theta_v^2}{2}+\operatorname{tr}(N^2)+2\omega^2\right),
  \]
  confirming the coefficient and sign of the kinematical squares in that realization.

## Blocked or not independently verified

- The full Lorentz-charge derivation, its boundary-term choices and the field-independence of the adapted boost generator are not reproduced because this Letter supplies only the final variation and delegates the CPS analysis to arXiv:2511.07510.
- The null limiting procedure is not reproducible from this source for the same reason.
- No theorem is provided that generic initial data satisfying SEC reach the assumed future non-expanding state without caustics. Future equilibrium is an input, not an output of the calculation.
- The proposed extension to arbitrary diffeomorphism-invariant gravity is explicitly future work.

# Audit notes

- **Terminology boundary:** the derived rate is future-integrated and observer-parametrization dependent; call it a conditional classical area-balance law, not a general local second law.
- **Integrability boundary:** “manifestly integrable” is conditional on \(\delta\Lambda^{ab}=0\). For a moving adapted frame, that condition needs a fixed internal normal-frame prescription.
- **Positivity boundary:** SEC is sufficient, not necessary. “Strictly non-decreasing” overstates the equality case.
- **AdS boundary:** the displayed Einstein equation omits \(\Lambda g_{\mu\nu}\), so direct transfer to AdS is not justified without restoring conventions.
- **Reason codes:** `T1-charge`, `T1-Wald-CPS`, `T1-boundary`; independent author signal `A-big-name` for M. M. Sheikh-Jabbari.

# Reading recommendation

Read this Letter for the clean separation among entropy charge, observer choice and Raychaudhuri balance. Before using the boost charge in a CPS or gluing argument, read arXiv:2511.07510 and audit the normal-frame dependence and boundary terms. For the present vault, the most reusable result is the conditional chain
\[
\delta\Lambda=0
\Longrightarrow
S=\frac{A}{4G\hbar},
\qquad
\text{future equilibrium + adjusted clock + integrated curvature positivity}
\Longrightarrow
\delta_\gamma S\ge0,
\]
with no implication from the first arrow to the second.
