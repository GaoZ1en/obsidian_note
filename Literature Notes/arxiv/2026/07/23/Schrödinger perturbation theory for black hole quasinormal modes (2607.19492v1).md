---
paper id: 2607.19492v1
title: Schrödinger perturbation theory for black hole quasinormal modes
authors:
  - Jacopo Lestingi
  - Laura Sberna
  - Stephen R. Green
publication date: 2026-07-21T18:09
abstract: |-
  The paper uses the Kerr quasinormal-mode bilinear form to derive recursive frequency shifts to arbitrary perturbative order. First-order mode corrections require both discrete QNM residues and continuous-spectrum data, so the construction exposes rather than removes QNM incompleteness. Pöschl--Teller and slowly rotating Kerr examples reproduce frequency shifts while showing that the bare discrete QNM sum is not a convergent substitute for the regularized Green function.
comments: "20 pages, 3 figures"
url: https://arxiv.org/abs/2607.19492v1
summary: "A reusable all-order QNM frequency-shift recursion whose central warning is that bilinear orthogonality does not provide a convergent resolution of identity."
tags: []
---

Back to [[2026_07_23_overview]].

Reason codes: T2-spectral, T2-dS-BH-holography. There is no tracked-author signal.

The transferable result is narrower and more useful than “Schrödinger theory for QNMs”: the bilinear form gives orthogonality and frequency-shift numerators, but not completeness. Higher-order work should solve the inhomogeneous mode equation or use the regularized Green function rather than substitute a bare QNM sum.

## Teukolsky modes and the bilinear form

The background problem is

$$
{}_s\mathcal O\psi=0,
\qquad s=\pm2,
$$

with QNMs identified as simple poles of the radial Green function, equivalently simple zeros of the scaled Wronskian \(W_{\ell m}(\omega)\). A mode label

$$
\boldsymbol n=p\ell mn
$$

includes the mirror index \(p=\pm1\).

For opposite-spin GHP scalars, the adjoint identity is

$$
\psi\,\mathcal O\widetilde\psi
-\widetilde\psi\,\mathcal O^\dagger\psi
=\nabla_a\pi^a[\widetilde\psi,\psi].
$$

Kerr's \(t\)-\(\phi\) reflection operator \(\mathcal J\) maps the adjoint spin sector back to the original one:

$$
\mathcal O\Psi_2^{4/3}\mathcal J
=\Psi_2^{4/3}\mathcal J\mathcal O^\dagger.
$$

The bilinear form is

$$
\langle\!\langle\psi_1,\psi_2\rangle\!\rangle
=\int_{\Sigma_t}d\Sigma_a\,
\pi^a[\Psi_2^{4/3}\mathcal J\psi_1,\psi_2].
$$

Because QNMs grow on a real radial slice, the radial integration contour is analytically continued around the horizon branch point into the complex \(r\)-plane. The balance law

$$
\frac d{dt}
\langle\!\langle\psi_1,\psi_2\rangle\!\rangle
=\int_{\Sigma_t}d\Sigma_a\,t^a
\nabla_b\pi^b[
\Psi_2^{4/3}\mathcal J\psi_1,\psi_2]
$$

gives on-shell orthogonality:

$$
0=-i(\omega_n-\omega_{n'})
\langle\!\langle\psi_{n'},\psi_n\rangle\!\rangle.
$$

Two useful dictionaries are

$$
\langle\!\langle\psi_n,\psi_n\rangle\!\rangle
=\frac{4iM^{4/3}}{A_n}
\left.\frac{dW}{d\omega}\right|_{\omega_n},
$$

and

$$
\langle\!\langle\psi_n,\psi_n\rangle\!\rangle
=-i\left\langle
\psi_n,
\left.\partial_\omega\widehat{\mathcal O}^\dagger
\right|_{\omega_n}\psi_n
\right\rangle.
$$

The first relates the norm to the excitation factor \(A_n\) and Wronskian derivative. The second converts the spacetime bilinear norm into a Sturm--Liouville denominator.

## Perturbed Teukolsky hierarchy

The convention includes factorials:

$$
\psi_n
=\psi_n^{(0)}
+\zeta\psi_n^{(1)}
+\frac{\zeta^2}{2}\psi_n^{(2)}
+\cdots,
$$

$$
\omega_n
=\omega_n^{(0)}
+\zeta\omega_n^{(1)}
+\frac{\zeta^2}{2}\omega_n^{(2)}
+\cdots.
$$

The assumed order-\(k\) modified Teukolsky equation is

$$
\mathcal O^\dagger_{(0)}\psi_n^{(k)}
=-\sum_{j=0}^{k-1}
\binom{k}{j}
\mathcal S_{(k-j)}\psi_n^{(j)}.
$$

This hierarchy is expected rather than derived for an arbitrary modified theory. Reality-induced \(m\leftrightarrow-m\) mixing and the corresponding degenerate perturbation problem are set aside.

At first order,

$$
\omega_n^{(1)}
=i\frac{
\displaystyle
\int_{\Sigma_t}d\Sigma_a\,t^a
(\Psi_2^{4/3}\mathcal J\psi_n^{(0)})
\mathcal S_{(1)}\psi_n^{(0)}
}{
\langle\!\langle\psi_n^{(0)},\psi_n^{(0)}
\rangle\!\rangle
}.
$$

Equivalently,

$$
\omega_n^{(1)}
=-\frac{
\langle\psi_n^{(0)},
\mathcal S_{(1)}\psi_n^{(0)}\rangle
}{
\langle\psi_n^{(0)},
\partial_\omega\widehat{\mathcal O}_{(0)}^\dagger
\psi_n^{(0)}\rangle
}.
$$

At arbitrary order,

$$
\begin{aligned}
\omega_n^{(k)}
={}&i\frac{
\displaystyle
\int_{\Sigma_t}d\Sigma_a\,t^a
\Psi_2^{4/3}\mathcal J\psi_n^{(0)}
\sum_{j=0}^{k-1}\binom{k}{j}
\mathcal S_{(k-j)}\psi_n^{(j)}
}{
\langle\!\langle\psi_n^{(0)},\psi_n^{(0)}
\rangle\!\rangle
}\\
&-\sum_{j=1}^{k-1}\binom{k}{j}
\omega_n^{(j)}
\frac{
\langle\!\langle
\psi_n^{(0)},\psi_n^{(k-j)}
\rangle\!\rangle
}{
\langle\!\langle
\psi_n^{(0)},\psi_n^{(0)}
\rangle\!\rangle
}.
\end{aligned}
$$

The formula is recursive, not closed: order \(k\) requires every lower-order mode correction.

The second-order expression is invariant under

$$
\psi_n^{(1)}
\longmapsto
\psi_n^{(1)}+\beta\psi_n^{(0)}.
$$

This freedom is the normalization ambiguity of the perturbed mode.

## Why the mode correction is not a discrete QNM sum

Frequency variation creates a secular term:

$$
\psi_n^{(1)}
=-i\omega_n^{(1)}t\,\psi_n^{(0)}
+e^{-i\omega_n^{(0)}t}\chi_n^{(1)}.
$$

The spatial correction obeys an inhomogeneous equation at the resonant frequency. The paper therefore solves first at generic \(\omega\), integrates the Green function around the target pole, and deforms the contour. The result contains:

- residues at the other QNM poles;
- a branch-cut/continuous-spectrum integral;
- a possible high-frequency arc.

The off-diagonal projection coefficient is

$$
\langle\!\langle
\psi_{n'}^{(0)},\psi_n^{(1)}
\rangle\!\rangle
=\frac{i}{
\omega_n^{(0)}-\omega_{n'}^{(0)}
}
\langle
\psi_{n'}^{(0)},
\mathcal S_{(1)}\psi_n^{(0)}
\rangle.
$$

The same-mode projection reproduces the secular term. The formal decomposition is therefore not the ordinary Rayleigh--Schrödinger resolution:

$$
\psi_n^{(1)}
=\psi_{n,\gamma}^{(1)}
+\sum_{n'}c_{n'}\psi_{n'}^{(0)}
+\text{secular projections}.
$$

Here \(\psi_{n,\gamma}^{(1)}\) is the continuum contribution. The paper does not prove convergence of the discrete or continuum pieces separately. Appendix B instead gives a regularized direct Green-function representation, which is the safer reusable object.

## Pöschl--Teller benchmark

The toy problem is

$$
(-\partial_t^2+\partial_x^2-V)\psi=0,
\qquad
V(x,\zeta)=\operatorname{sech}^2(\zeta x),
$$

with unperturbed width \(\zeta=1\). Its exact QNM spectrum is

$$
\omega_n(\zeta)
=\pm\sqrt{1-\frac{\zeta^2}{4}}
-i\zeta\left(n+\frac12\right).
$$

Direct differentiation gives

$$
\omega_n^{(1)}
=-\frac1{2\sqrt3}
-i\left(n+\frac12\right),
$$

and for the fundamental mode

$$
\omega_0^{(2)}
=-\frac{2}{3\sqrt3}.
$$

The analytically continued bilinear-form integral reproduces these shifts. By contrast, the displayed partial discrete-QNM sums for the mode correction grow rather than settle. This is numerical evidence that the discrete part diverges; it is not a proof that the complete discrete-plus-continuum representation diverges.

One source formula defines the unperturbed operator with \(V(x,\zeta=0)\). Since \(V(x,0)=1\), while the section explicitly declares \(\zeta=1\) to be the unperturbed Pöschl--Teller problem, this is a typo.

## Slowly rotating Kerr

The paper sets

$$
a=\zeta M,
\qquad \zeta\ll1,
$$

and expands Kerr around Schwarzschild. After angular integration, the first shift becomes a complex-contour radial ratio involving the Schwarzschild QNM, the operator perturbation, and the bilinear norm. The radial function is evaluated by a rotated-branch-cut Leaver series.

At second order the first mode correction is approximated by a finite difference,

$$
R_n^{(1)}(a)
=\frac{R_n(a)-R_n^{(0)}}a,
$$

and inserted into the recursive formula. The tabulated errors decrease roughly linearly with the finite-difference step.

There is a normalization caveat:

$$
a=\zeta M
\quad\Longrightarrow\quad
\frac d{d\zeta}
=M\frac d{da}.
$$

The source later identifies the first coefficient with \(d\omega/da\) and only partly signals the \(M=1\) convention near the Leaver expansion. Formula reuse must keep this factor explicit.

## Reusable workflow

1. Derive the stationary source operators \(\mathcal S_{(k)}\).
2. Compute the unperturbed QNM and its complex-contour bilinear norm.
3. Use the first-order ratio for \(\omega_n^{(1)}\).
4. Solve the inhomogeneous equation directly, or use the regularized Green function, for lower-order \(\psi_n^{(j)}\).
5. Insert those mode corrections into the all-order recursion.
6. Do not replace the Green function by a bare QNM sum unless convergence and the continuum sector have been controlled.

## Verification note

Checked with Mathematica:

- the first and second derivatives of the exact Pöschl--Teller spectrum at \(\zeta=1\);
- invariance of the second-order frequency formula under \(\psi_n^{(1)}\to\psi_n^{(1)}+\beta\psi_n^{(0)}\), using the first-order relation;
- \(V(x,0)=1\) versus \(V(x,1)=\operatorname{sech}^2x\);
- the chain-rule factor \(d/d\zeta=M\,d/da\).

Source-derived, not independently reproduced:

- the Teukolsky adjoint/bilinear identities;
- the complex-contour norm and Wronskian relation;
- the analytic continuation of the Pöschl--Teller integrals;
- the QNM-sum divergence plots;
- the Leaver integrations and slow-Kerr tables.

The all-order hierarchy is also an assumed input for a general modified theory, and exceptional or zero-norm modes are outside the source's treatment.
