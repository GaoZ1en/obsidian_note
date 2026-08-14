---
paper id: 2608.09737v1
title: "The determinant of the Dirichlet-to-Neumann map for a surface with boundary and periods of holomorphic differentials on its double"
authors:
  - Dmitrii Korikov
  - Alexey Kokotov
publication date: 2026-08-10T15:35
abstract: |-
  For an orientable Riemannian surface with one boundary component, the paper expresses the zeta-regularized determinant of the Dirichlet-to-Neumann map through the finite discrete spectrum of the boundary Hilbert transform. Those eigenvalues are in turn characterized by periods of holomorphic differentials on the Schottky double, producing a proposed relation between period data and the Ruelle length-spectrum formula.
comments: null
url: https://arxiv.org/abs/2608.09737v1
summary: "A compact boundary-spectral formula linking the Dirichlet-to-Neumann determinant, Hilbert-transform eigenvalues, and the period matrix of the double, with two explicit sign/value errors in the printed determinant calculation."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Placement

Reason codes: `T3-math`, `T1-boundary`, `T2-spectral`.

This is a medium-priority detailed note because it converts boundary response data into a conformal determinant invariant and period data on a doubled surface. It is mathematically adjacent to gluing determinants and boundary operators, but it does not address Lorentzian dynamics, covariant phase space, charges, or holographic boundary conditions.

## Source map

- The introduction defines the Dirichlet-to-Neumann map, the boundary Hilbert transform, its essential and discrete spectra, and the proposed determinant identity.
- The main proof uses Kontsevich--Vishik regularized determinants, trace-class deformations, and comparison with the disk Hilbert transform.
- The appendix relates discrete Hilbert-transform eigenvalues to the periods of Abelian differentials on the Schottky double and gives a period-matrix characteristic equation.

## Boundary operators and spectral data

Let $(M,g)$ be a smooth orientable surface of genus $\mathfrak g$ with connected boundary $\Gamma$. Constants are removed by working on

$$
\mathscr H=L^2(\Gamma,dl_g;\mathbb C)\ominus\mathbb C.
$$

For the harmonic extension $u^f$ of boundary data $f$,

$$
\Lambda f=\partial_\nu u^f\big|_\Gamma
$$

defines the Dirichlet-to-Neumann (DN) map. With arclength derivative $\partial_\gamma$ and the disk DN map $\Lambda_0=|\partial_\gamma|$,

$$
\Lambda=\Lambda_0+\widetilde\Lambda,
$$

where $\widetilde\Lambda$ is smoothing. The boundary Hilbert transform is

$$
H=\partial_\gamma^{-1}\Lambda
=H_0+\widetilde H,
\qquad
H_0=\partial_\gamma^{-1}|\partial_\gamma|,
\qquad
H_0^2=-I.
$$

Its essential spectrum is $\{-i,+i\}$. The finite discrete spectrum is asserted to consist of

$$
\lambda_{\pm k}=\pm i\mu_k,
\qquad
0<\mu_k<1,
\qquad
k=1,\ldots,\mathfrak g.
$$

The paper defines a finite determinant rather than a zeta or Fredholm determinant of $H$:

$$
\operatorname{DET}(H)
=\det H_{\mathrm{disc}}
=\prod_{k=1}^{\mathfrak g}\mu_k^2.
$$

## Proposed determinant identity

The central formula is

$$
\det_\zeta\Lambda
=\det_\zeta(\partial_\gamma)\operatorname{DET}(H).
$$

For a circle of length $|\Gamma|$,

$$
\zeta_{\Lambda_0}(s)
=2\zeta_R(s)\left(\frac{2\pi}{|\Gamma|}\right)^{-s},
\qquad
\det_\zeta\Lambda_0
=\det_\zeta\partial_\gamma
=|\Gamma|.
$$

Consequently, the claimed conformal invariant is

$$
\frac{\det_\zeta\Lambda}{|\Gamma|}
=\prod_{k=1}^{\mathfrak g}\mu_k^2.
$$

Combining this with the quoted Guillarmou--Guillopé Ruelle formula for $\mathfrak g>1$ gives

$$
\left.(2\pi s)^{-\mathfrak g}\mathscr R(s)\right|_{s=0}
=(1-\mathfrak g)\prod_{k=1}^{\mathfrak g}\mu_k^2.
$$

This last relation inherits the hypotheses and normalization conventions of the quoted Ruelle formula; it is not derived independently from a geodesic product in this paper.

## Proof architecture

For a sectorial invertible pseudodifferential operator $A$ and positive order-one regularizer $Q$, the paper uses

$$
\det_Q(A)
=\exp\operatorname*{f.p.}_{s=0}
\operatorname{Tr}\bigl(Q^{-s}\log A\bigr).
$$

Along trace-class differentiable deformations it derives

$$
\partial_t\log\det_Q A(t)
=\operatorname{Tr}\bigl(A^{-1}\dot A\bigr).
$$

It then deforms

$$
B(t)=H_0+\theta(t)\widetilde H,
\qquad
\partial_\gamma B(t)=\Lambda_0+\theta(t)\widetilde\Lambda,
$$

along a complex path avoiding the discrete noninvertibility set. A second deformation of $J(t)=-B(t)^2$ is used to isolate the finite discrete spectral contribution. Finally, regularizer independence under smoothing deformations identifies the Kontsevich--Vishik determinants of the positive DN operators with their zeta determinants.

The strategy is plausible and exposes the correct finite-dimensional spectral factor. The source does not fully audit spectral cuts, possible winding of the complex deformation path, or every analytic-continuation interchange; those are material for a rigorous proof of the phase-sensitive determinant identity.

## Periods on the double

Let $2M$ be the Schottky double with antiholomorphic involution $\tau$. The appendix states that one can choose holomorphic differentials $\omega_{\pm k}$ satisfying

$$
\int_{\tau\circ l}\omega_{\pm k}
=\frac{\pm\mu_k+1}{\pm\mu_k-1}
\int_l\omega_{\pm k}
$$

for loops $l\subset M$. In a symmetric homology basis, write the $b$-period matrix as

$$
\mathbb B
=i\begin{pmatrix}
\mathfrak G&\mathfrak F\\
\overline{\mathfrak F}&\overline{\mathfrak G}
\end{pmatrix},
\qquad
\mathfrak F^*=\mathfrak F,
\qquad
\mathfrak G^T=\mathfrak G.
$$

The discrete eigenvalues $\lambda$ are then characterized by

$$
\det\left(
\frac{\lambda+i}{\lambda-i}\mathfrak F
+2\operatorname{Re}\mathfrak G
+\frac{\lambda-i}{\lambda+i}\overline{\mathfrak F}
\right)=0.
$$

This makes the proposed DN determinant computable from the period matrix once the compatible symmetric basis and the roots $\lambda=\pm i\mu_k$ are fixed.

## Verification log

### Checked

- Read the complete TeX source and visually checked rendered PDF pages containing the definitions, trace-class deformation, final determinant identity, and appendix conventions.
- Mathematica derived $-\zeta'_{\Lambda_0}(0)=\log|\Gamma|$ from the displayed disk zeta function, confirming $\det_\zeta\Lambda_0=|\Gamma|$.
- For one discrete pair $H_{\mathrm{disc}}=\operatorname{diag}(i\mu,-i\mu)$, Mathematica verified $\det H_{\mathrm{disc}}=\mu^2$, $\det(-H_{\mathrm{disc}}^2)=\mu^4$, and $\operatorname{Tr}\log(-H_{\mathrm{disc}}^2)=4\log\mu$ for $0<\mu<1$.
- The same model verifies that $K=I+H_{\mathrm{disc}}^2$ obeys

  $$
  -\sum_{n\ge1}\frac{\operatorname{Tr}K^n}{n}
  =4\log\mu
  =\operatorname{Tr}\log(I-K).
  $$

### Source-derived

- The spectral description of $H$, the trace-class deformation formula, regularizer independence, and the period-matrix characteristic equation are source-derived and were checked for internal algebraic consistency only.
- The link to the Ruelle length spectrum uses the normalization and genus restriction of the cited Guillarmou--Guillopé result.

### Blocked

- No independent proof was made of the functional-analytic hypotheses behind the Kontsevich--Vishik variation, the analytic-continuation interchanges, or the determinant phase along a complex path avoiding noninvertibility. These are the remaining boundaries on treating the main identity as fully verified.
- No explicit positive-genus numerical surface, period matrix, DN spectrum, or reproducible code is supplied, so the final period-to-determinant formula could not be tested on a nontrivial geometry.

### Failed

- The printed proof says $\det_Q(I)=0$. By its own exponential definition it must be $1$; the following ratio also requires $1$.
- The printed expansion has

  $$
  \operatorname{Tr}\log(I-K)
  =+\sum_{n\ge1}\frac{\operatorname{Tr}K^n}{n}.
  $$

  The sign must be negative. For one eigenvalue pair the printed positive series gives $-4\log\mu$, whereas the left-hand side is $4\log\mu$. Correcting the sign restores the claimed finite spectral factor and does not by itself refute the final theorem.

## Relevance and limits

The reusable idea is that a smoothing difference between a physical boundary response operator and a reference operator can compress global conformal data into a finite spectral determinant. This is potentially useful when comparing gluing determinants or doubled geometries.

The paper is restricted to two-dimensional orientable Riemannian surfaces with one connected smooth boundary component. It does not establish a multi-boundary formula, a Lorentzian analogue, a determinant gluing theorem for the user's interface construction, or a direct relation to covariant symplectic data.

## Next checks

- Test the formula on an explicit genus-one bordered surface where both a period matrix and a DN spectrum can be computed numerically.
- Rewrite the deformation proof with a fixed spectral cut and explicit winding control, correcting the two printed determinant identities.
- Compare the finite Hilbert-transform factor with a Burghelea--Friedlander--Kappeler gluing factor for a doubled surface.
