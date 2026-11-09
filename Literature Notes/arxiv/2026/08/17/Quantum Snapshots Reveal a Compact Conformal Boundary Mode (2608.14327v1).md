---
paper id: 2608.14327v1
title: "Quantum Snapshots Reveal a Compact Conformal Boundary Mode"
authors:
  - M. A. Rajabpour
publication date: 2026-08-14T14:19
abstract: |-
  Partial occupation snapshots of the half-filled critical XX chain define an exact record-only circle variable. Its integer Fourier moments are finite free-fermion determinants, and its thermodynamic law is a wrapped Gaussian whose variance is fixed by the conformal modulus of the four-arc geometry.
comments: "7-page Letter plus 44-page Supplemental Material; 51-page official PDF with one figure"
url: https://arxiv.org/abs/2608.14327v1
summary: "A clean free-fermion theorem connecting partial measurement records to a compact conformal zero mode; the lattice law is proved, while its interpretation as the continuum relative Dirichlet phase remains a scaling-limit identification."
tags: []
---

# Direct Verdict and Claim Tier

Correct under the following precise conditions: the state is the half-filled ground state of the periodic critical XX chain; the four endpoints form a fixed nondegenerate conformal quadrilateral; sites are midpoint samples and the admissible even sizes preserve the arc assignment; and the compact observable is tested through integer circle characters. Under these hypotheses the paper proves

$$\begin{align}
\lim_{L\to\infty}\mathbb E\!\left[e^{iq\delta_L}\right] =e^{-h(\zeta)q^2},\qquad q\in\mathbb Z,
\end{align}$$

with

$$\begin{align}
h(\zeta)=\pi\frac{K(\zeta)}{K(1-\zeta)}.
\end{align}$$

The finite-size statement that $\delta_L$ is computable from the measured sites alone is exact. The determinant representations and the Gaussian limit of a real lift are also proved. Calling the limiting variable the relative Dirichlet phase conjugate to charge is a source-supported continuum interpretation, not an independent consequence of the finite lattice theorem. The extension to interacting Luttinger liquids is conjectural.

Claim tier: exact finite free-fermion identities plus a controlled thermodynamic-limit theorem. This is not a theorem for generic monitored dynamics, arbitrary lattice critical points, interacting compact bosons or individual smooth conformal boundary profiles.

# Essential Reading Route

1. Main-text equations (3)--(5) for the record-only compact coordinate.
2. Main-text equations (6)--(8) for the determinant bridge and variance identity.
3. Supplemental Sections S2--S5 for endpoint conventions, determinant equivalences and the cutoff proof of the Gaussian limit.
4. Supplemental Section S6 for the conformal Dirichlet-energy evaluation.
5. Supplemental Sections S7--S9 for numerical checks, convention translation and limitations.

# Microscopic Construction

Let the periodic ring be divided cyclically into unmeasured arcs $A,B$ and measured arcs $C_1,C_2$, with $C=C_1\cup C_2$. Their cross ratio is

$$\begin{align}
\zeta= \frac{\sin\frac{\theta_2-\theta_1}{2}\, \sin\frac{\theta_4-\theta_3}{2}} {\sin\frac{\theta_3-\theta_1}{2}\, \sin\frac{\theta_4-\theta_2}{2}}
\in(0,1).
\end{align}$$

A Schwarz--Christoffel map $W$ sends the disk to a rectangle of height $\pi$ and width $h(\zeta)$. Its boundary coordinate

$$\begin{align}
f(\theta)=2\operatorname{Im}W(e^{i\theta})
\end{align}$$

equals zero on $A$, equals $2\pi$ on $B$, rises once along $C_1$, and falls once along $C_2$. For midpoint samples $f_j$, define the real statistic

$$\begin{align}
X_L=\sum_{j=0}^{L-1}f_j\left(n_j-\frac12\right).
\end{align}$$

Because the values on the two unmeasured arcs are constant,

$$\begin{align}
X_L= \sum_{j\in C}f_j\left(n_j-\frac12\right) +2\pi N_B-\pi|B|.
\end{align}$$

Therefore the circle class

$$\begin{align}
\delta_L(m_C)= \left[ \sum_{j\in C}f_j\left(m_C(j)-\frac12\right)-\pi|B| \right]_{2\pi}
\end{align}$$

is fixed by the partial record. The unknown integer $N_B$ changes only the lift. For every integer $q$,

$$\begin{align}
e^{iqX_L}=e^{iq\delta_L(m_C)}
\end{align}$$

configuration by configuration. Noninteger characters are not record-only and are not observables on this circle.

# Exact Determinant Bridge

At half filling, write the occupied one-particle orbitals as the $L\times N$ matrix $U$, with $N=L/2$, and let

$$\begin{align}
K=UU^\dagger, \qquad D_t=\operatorname{diag}(e^{itf_0},\ldots,e^{itf_{L-1}}).
\end{align}$$

The characteristic function has equivalent occupied-space and full-lattice forms,

$$\begin{align}
\chi_L(t) =e^{-\frac{it}{2}\sum_jf_j}\det_N(U^\dagger D_tU) =e^{-\frac{it}{2}\sum_jf_j}\det_L[I+(D_t-I)K].
\end{align}$$

For $q\in\mathbb Z$, $D_q-I$ vanishes on $A\cup B$, so block reduction gives the measured-space determinant

$$\begin{align}
\chi_L(q)= e^{-iq(\frac12\sum_{j\in C}f_j+\pi|B|)} \det_C[I_C+(D_{q,C}-I_C)K_C].
\end{align}$$

This reduction is exact at finite size. It uses compactness and integer characters, not a Gaussian approximation or a partial trace.

Consecutive occupied momenta make $U^\dagger D_tU$ a discrete Toeplitz matrix. The centering phase cancels constant shifts of $f$ because the particle number is fixed at half filling.

# Gaussian Lift and Compact Law

The conformal corners give an inverse-square-root singularity in $f'$, hence

$$\begin{align}
f_m=O(|m|^{-3/2}), \qquad \mathcal E[f]=\sum_{m\ge1}m|f_m|^2<\infty.
\end{align}$$

For any real lattice function $u$, the projection determinantal process obeys

$$\begin{align}
\operatorname{Var}X_L(u) =\operatorname{Tr}[K\mathsf U(I-K)\mathsf U] =\sum_{m=1}^{L-1}d_L(m)|\widehat u_L(m)|^2, \qquad d_L(m)=\min(m,L-m).
\end{align}$$

The proof first fixes a finite Fourier cutoff, where midpoint aliasing is controlled and strong Szegő applies, and then removes the cutoff using the variance tail

$$\begin{align}
\operatorname{Var}X_L(f-f^{(M)}) \leq \frac{c_1}{M}+\frac{c_2}{L}.
\end{align}$$

Thus for every fixed real $t$,

$$\begin{align}
\chi_L(t)\longrightarrow e^{-t^2\mathcal E[f]}.
\end{align}$$

The real lift becomes Gaussian with variance $2\mathcal E[f]$. Restricting to integer characters wraps this Gaussian onto the circle.

# Why the Variance Equals the Rectangle Modulus

If $H_f$ is the harmonic extension of $f$ to the disk, Fourier expansion gives

$$\begin{align}
\mathcal D_{\mathbb D}[H_f] =\int_{\mathbb D}|\nabla H_f|^2d^2x =4\pi\mathcal E[f].
\end{align}$$

Under the conformal map, $H_f=2v$ on the rectangle $0<u<h$, $0<v<\pi$. Hence

$$\begin{align}
\mathcal D_{\mathcal R_h}[2v] =\int_0^hdu\int_0^\pi dv\,4 =4\pi h,
\end{align}$$

so $\mathcal E[f]=h(\zeta)$. The limiting density is consequently the heat kernel on the circle,

$$\begin{align}
p_h(\delta)=\frac1{2\pi}
\sum_{q\in\mathbb Z}e^{-hq^2}e^{-iq\delta}.
\end{align}$$

# Numerical Evidence in the Source

The supplemental material performs an exhaustive $L=12$ comparison of five representations: the direct Vandermonde sum and four determinant implementations agree at roughly $10^{-16}$. For larger sizes through $L=720$, the first Fourier mode approaches $e^{-h}$ at the reported $0.1$--$0.2\%$ level, while higher modes converge more slowly. Replacing the conformal weight by a uniform angular interpolation gives a different limiting energy, which supports the geometric rather than purely arc-length interpretation.

These numerics test the finite formulas and convergence rate. They are not the proof of the asymptotic theorem.

# Independent Verification

## Checked

- **Finite determinant identity.** Mathematica evaluated an $L=8$, $N=4$ Fermi sea with a generic real weight vector. Direct enumeration of all $\binom84$ Slater configurations and the occupied-space determinant differed by

$$\begin{align}
-7.77\times10^{-16}+5.55\times10^{-17}i.
\end{align}$$

- **Projection variance identity.** On the same example,
  $\operatorname{Tr}[K\mathsf F(I-K)\mathsf F]$ and
  $\sum_md_L(m)|\widehat f_L(m)|^2$ differed by
  $8.88\times10^{-16}+5.29\times10^{-16}i$.
- **Record-only cancellation.** A toy partition with two sites in $B$ gave zero residual between the full lift reduced modulo $2\pi$ and the measured-record expression.
- **Dirichlet normalization.** For $f(\theta)=\cos\theta$, Mathematica found
  $\mathcal E[f]=1/4$ and
  $\int_{\mathbb D}|\nabla(r\cos\theta)|^2d^2x=\pi=4\pi\mathcal E[f]$.
- **Source and layout.** The complete official TeX source and the 51-page official PDF were read; PDF pages 1, 22, 35 and 45 were visually inspected.

## Assumptions

- Fixed ordered endpoints with $0<\zeta<1$; pinching limits require a separate joint-limit analysis.
- Half filling, a projection Fermi sea of consecutive momenta, and the midpoint discretization used in the proof.
- The thermodynamic limit is taken at fixed geometry before any endpoint degeneration.
- Compact observables are integer Fourier characters.

## Not Independently Verified

- Every constant in the uniform Fourier-tail bound and every branch choice in the explicit Schwarz--Christoffel map.
- The reported $L\leq720$ numerical table was inspected but not rerun.
- The identification with the continuum post-measurement relative Dirichlet phase, which imports the compact-boson/BCFT dictionary.
- Any interacting Luttinger-liquid extension.

# Relevance to the Vault

The paper supplies an unusually explicit microscopic-to-boundary bridge: a partial measurement record produces a compact coordinate, its conjugate integer modes are exactly record-accessible, and the conformal quadrilateral controls the resulting heat kernel. This is useful for distinguishing three layers that are often merged in boundary discussions:

1. an exact microscopic observable;
2. a universal continuum probability law;
3. a physical interpretation as boundary phase and charge.

For the gluing and boundary-phase-space program, the most transferable mechanism is the separation between a non-observable real lift and an observable compact class. It resembles edge-mode constructions in which an extension-dependent coordinate becomes physical only modulo a large-gauge lattice. The paper does not construct a gravitational symplectic form, a charge algebra or a gluing theorem, so that analogy must remain structural.

# Bottom Line

This is a technically strong medium-priority paper. The exact finite-size partial-record variable and determinant identities are clean, and the cutoff-plus-variance argument handles the corner singularities needed for the thermodynamic theorem. The safe reusable result is the compact heat-kernel law in the free XX chain. The boundary-zero-mode interpretation is well motivated but should not be promoted into a generic microscopic theorem beyond that model.
