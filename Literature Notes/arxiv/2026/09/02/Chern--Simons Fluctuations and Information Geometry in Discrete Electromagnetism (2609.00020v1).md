---
paper id: 2609.00020v1
title: Chern--Simons Fluctuations and Information Geometry in Discrete Electromagnetism
authors:
  - Jean-Pierre Magnot
publication date: 2026-08-21T13:35
abstract: |-
  The paper constructs a helicity-conditioned Gaussian family on the finite-dimensional radiative sector of Whitney-discretized Maxwell theory on a closed oriented three-manifold. Exact cochain gauge invariance and Hodge splitting reduce the spatial Abelian Chern--Simons functional to the coexact potential sector, after which its partition function, relative-entropy projection, Fisher metric, and helicity susceptibility are computed explicitly.
comments: "17 pages"
url: https://arxiv.org/abs/2609.00020v1
summary: "A clean finite-mesh gauge-reduced Maxwell diagnostic whose exact Chern--Simons and Gaussian identities are useful, without providing regional sewing or continuum-limit results."
tags: []
---

Back to [[2026_09_02_overview]].

# Why this paper is high priority

The paper gives an exact finite-dimensional Abelian gauge-reduction model built from a simplicial de Rham complex. It cleanly separates gauge, harmonic, and coexact sectors and then constructs a quadratic Chern--Simons observable on the reduced radiative variables. This is immediately useful as a finite-core diagnostic for the vault's Maxwell sewing work, particularly because the source does **not** quotient harmonic modes as gauge and does **not** promote a mesh calculation to a continuum theorem.

Reason codes: `T1-symplectic`, `T1-boundary`, `T2-model`.

The `T1-boundary` relevance is methodological rather than literal: the paper works only on a closed manifold, but its exact-sector/harmonic-sector separation is precisely what must be revisited when a boundary or regional interface is introduced.

# Source map

1. **Introduction:** continuous helicity, the Whitney-discrete Chern--Simons functional, and the interpretation as conditioned inference rather than Maxwell equilibrium.
2. **Whitney discretization and gauge reduction:** cochain complex, Whitney maps, exact gauge invariance, Hodge sectors, Gauss law, and the radiative phase space.
3. **Discrete Abelian Chern--Simons pairing:** symmetry, annihilation of exact and harmonic directions, and positive magnetic energy on the coexact sector.
4. **Helicity-conditioned electromagnetic states:** normalizability, determinant formula, generalized helicity spectrum, means, and entropy.
5. **Minimum relative entropy:** the Pythagorean identity and uniqueness of the constrained state.
6. **Information geometry:** covariance/Hessian Fisher matrix and helicity susceptibility.
7. **Whitney matrices and paired helicity modes:** mesh-level formulas and an explicitly labelled idealized two-mode block.
8. **Compatibility with Maxwell dynamics:** nonconservation of magnetic helicity under free Maxwell flow.
9. **Discussion:** finite-mesh scope and explicit exclusions of continuum, refinement, non-Abelian, quantum, and boundary claims.

There are no appendices.

# Discrete Maxwell complex and gauge reduction

Let $M$ be a closed oriented Riemannian three-manifold with finite triangulation $K$. The real cochains form

$$
0\longrightarrow C^0(K)
\xrightarrow{\delta_0}C^1(K)
\xrightarrow{\delta_1}C^2(K)
\xrightarrow{\delta_2}C^3(K)
\longrightarrow0,
\qquad
\delta_{k+1}\delta_k=0.
$$

The Whitney maps satisfy the commuting relation

$$
dW_k=W_{k+1}\delta_k.
$$

The discrete potential and magnetic cochain are

$$
a\in C^1(K),
\qquad
b=\delta_1a\in C^2(K),
$$

and the gauge transformation is

$$
a\mapsto a+\delta_0\chi.
$$

The magnetic field is exactly invariant because $\delta_1\delta_0=0$. This is an algebraic identity of the finite complex, not an approximate small-mesh statement.

The Whitney inner products are

$$
\langle u,v\rangle_k
=\int_M W_k(u)\wedge\star W_k(v).
$$

With adjoints defined by these inner products, degree-one cochains split orthogonally as

$$
C^1(K)
=\operatorname{im}\delta_0
\oplus\mathcal H_K^1
\oplus\operatorname{im}\delta_1^*,
$$

where

$$
\mathcal H_K^1=\ker\delta_1\cap\ker\delta_0^*.
$$

It is useful to name

$$
V_{\rm g}=\operatorname{im}\delta_0,
\qquad
V_{\rm h}=\mathcal H_K^1,
\qquad
V_{\rm T}=\operatorname{im}\delta_1^*.
$$

For the electric cochain $e\in C^1(K)$, Gauss law is

$$
\delta_0^*e=0,
$$

so the set-theoretic gauge quotient is

$$
\mathcal P_{\rm red}
\simeq(V_{\rm h}\oplus V_{\rm T})
\oplus(V_{\rm h}\oplus V_{\rm T}).
$$

The source fixes both harmonic sectors and works on

$$
\mathcal P_{\rm T}=V_{\rm T}\oplus V_{\rm T}.
$$

This is a sector choice, not a gauge quotient: harmonic modes are genuine cohomological degrees of freedom. The magnetic energy has a flat harmonic-potential direction, so an unconstrained Gaussian integral over that direction would diverge. Electric harmonic modes could be retained because their Gaussian factor is finite.

# Discrete Chern--Simons pairing

Define

$$
c_K(a,b)=\int_M W_1(a)\wedge dW_1(b),
\qquad
\operatorname{CS}_K(a)=c_K(a,a).
$$

On a closed manifold,

$$
\int_M d\bigl(W_1(a)\wedge W_1(b)\bigr)=0
$$

gives

$$
c_K(a,b)=c_K(b,a).
$$

The exact direction is annihilated:

$$
c_K(\delta_0\chi,a)
=\int_M dW_0(\chi)\wedge dW_1(a)=0.
$$

If $h\in\mathcal H_K^1$, then $\delta_1h=0$ and hence $dW_1(h)=0$. Symmetry then gives

$$
c_K(h,a)=0.
$$

Therefore

$$
\operatorname{CS}_K(a)
=\operatorname{CS}_K(a_{\rm T}).
$$

In a Whitney-orthonormal basis of $V_{\rm T}$,

$$
\operatorname{CS}_K(a)=a^TCa,
\qquad
C=C^T.
$$

The magnetic energy is

$$
E_{\rm m}(a)
=\frac12\langle\delta_1a,\delta_1a\rangle_2
=\frac12a^TLa.
$$

The matrix $L$ is positive definite on $V_{\rm T}$ because

$$
\ker\delta_1=(\operatorname{im}\delta_1^*)^\perp,
$$

so $\ker\delta_1\cap V_{\rm T}=0$.

# Conditioned Gaussian family

On $\mathcal P_{\rm T}\simeq\mathbb R^n\oplus\mathbb R^n$, the reduced energy is

$$
E_K(a,e)=\frac12e^Te+\frac12a^TLa.
$$

For $\beta>0$, the helicity-conditioned density is

$$
p_{\beta,\gamma}(a,e)
=Z_K(\beta,\gamma)^{-1}
\exp\bigl[-\beta E_K(a,e)-\gamma\operatorname{CS}_K(a)\bigr].
$$

Introduce

$$
Q_{\beta,\gamma}=\beta L+2\gamma C.
$$

The Gaussian exists exactly when

$$
Q_{\beta,\gamma}>0,
$$

and then

$$
Z_K(\beta,\gamma)
=(2\pi)^n\beta^{-n/2}det(Q_{\beta,\gamma})^{-1/2}.
$$

With

$$
T=L^{-1/2}CL^{-1/2}
$$

and eigenvalues $\lambda_j$, admissibility is the modewise condition

$$
\beta+2\gamma\lambda_j>0
\quad\text{for every }j.
$$

The mean energy and helicity are

$$
\langle E_K\rangle
=\frac{n}{2\beta}
+\frac12\operatorname{Tr}(Q^{-1}L),
$$

$$
\langle\operatorname{CS}_K\rangle
=\operatorname{Tr}(Q^{-1}C)
=\sum_j\frac{\lambda_j}{\beta+2\gamma\lambda_j}.
$$

The entropy satisfies

$$
S_K=\log Z_K+n
=n\log(2\pi e)-\frac n2\log\beta-\frac12\log\det Q.
$$

# Relative-entropy projection

At fixed $\beta$, let $p_{\beta,0}$ be the Maxwell Gaussian and set

$$
h_\gamma
=\langle\operatorname{CS}_K\rangle_{\beta,\gamma}.
$$

For any density $p$ with this mean helicity and finite $D(p\|p_{\beta,0})$, the source proves

$$
D(p\|p_{\beta,0})
=D(p\|p_{\beta,\gamma})
+D(p_{\beta,\gamma}\|p_{\beta,0}).
$$

Hence $p_{\beta,\gamma}$ is the unique minimum-relative-entropy state with that constraint. If $C\ne0$, then

$$
\frac{d}{d\gamma}
\langle\operatorname{CS}_K\rangle_{\beta,\gamma}
=-2\sum_j
\frac{\lambda_j^2}{(\beta+2\gamma\lambda_j)^2}<0,
$$

so every attainable mean helicity selects a unique multiplier.

# Fisher geometry and susceptibility

The exponential-family Fisher metric is

$$
g_{ij}=\partial_i\partial_j\log Z_K,
\qquad
(\theta^1,\theta^2)=(\beta,\gamma).
$$

Its helicity component is

$$
g_{\gamma\gamma}
=2\operatorname{Tr}(Q^{-1}CQ^{-1}C)
=2\sum_j\frac{\lambda_j^2}{(\beta+2\gamma\lambda_j)^2}.
$$

Therefore

$$
-\partial_\gamma
\langle\operatorname{CS}_K\rangle
=\operatorname{Var}(\operatorname{CS}_K)
=g_{\gamma\gamma}.
$$

At fixed $\beta$,

$$
D\left(p_{\beta,\gamma}\middle\|p_{\beta,\gamma+\varepsilon}\right)
=\frac{\varepsilon^2}{2}
\operatorname{Var}_{\beta,\gamma}(\operatorname{CS}_K)
+O(\varepsilon^3).
$$

The idealized paired block with eigenvalues $\pm\lambda$ has admissible interval

$$
|\gamma|<\frac{\beta}{2\lambda},
$$

and divergent susceptibility at its endpoints. The paper correctly says this is loss of finite-mesh Gaussian normalizability, not a thermodynamic phase transition and not a spectrum-pairing theorem for arbitrary triangulations.

# Mesh-level realization

For Whitney edge basis $w_i$, define

$$
S_{ij}=\int_M w_i\wedge dw_j.
$$

Closedness gives

$$
S=S^T,
\qquad
SD_0=0.
$$

If the columns of $B$ form a Whitney-orthonormal basis of $V_{\rm T}$,

$$
B^TM_1B=I,
$$

then

$$
L=B^TD_1^TM_2D_1B,
\qquad
C=B^TSB.
$$

This is the concrete reusable finite diagnostic: incidence matrices enforce exact gauge identities, while mass matrices and the metric determine the Hodge splitting and energy.

# Maxwell dynamics and the correct physical interpretation

With the source's canonical sign convention,

$$
\dot a=e,
\qquad
\dot e=-La.
$$

Then

$$
\frac{d}{dt}\operatorname{CS}_K(a)
=2a^TCe,
$$

and

$$
\frac{d^2}{dt^2}\operatorname{CS}_K(a)
=2e^TCe-a^T(CL+LC)a.
$$

Thus helicity is not generally conserved by free Maxwell flow, and $p_{\beta,\gamma}$ for $\gamma\ne0$ is not a stationary Gibbs state. It is an instantaneous inference state conditioned on helicity information. The paper is unusually careful about this boundary.

# Translation to the vault's gauge-sewing program

The finite model preserves three distinctions that should remain explicit in regional gluing:

1. $\operatorname{im}\delta_0$ is the genuine gauge orbit;
2. $\mathcal H_K^1$ is physical/cohomological and must not be silently quotiented;
3. $\operatorname{im}\delta_1^*$ is a metric-dependent coexact section on which the magnetic quadratic form is positive.

For a region with interface $\Gamma$, the proof of symmetry and gauge annihilation acquires a boundary term:

$$
\int_M d\bigl(W_1(a)\wedge W_1(b)\bigr)
=\int_\Gamma W_1(a)\wedge W_1(b).
$$

Therefore the closed-manifold statements do not automatically descend to a regional Chern--Simons pairing. One would need explicit boundary conditions or interface/edge data, and then distinguish physical transmission, gauge saturation, and the final quotient. This paper supplies a strong closed finite core, not the regional extension.

The source also calls the quotient a reduced phase space but does not derive a symplectic form from an action or write the moment map. The standard canonical interpretation is natural in the chosen orthonormal coordinates, yet the action/CPS bridge remains to be supplied before using it as a covariant phase-space theorem.

# Verification log

- **Source-derived:** All nine sections, the exact/harmonic/coexact decomposition, Chern--Simons pairing, Gaussian family, relative-entropy theorem, Fisher matrix, mesh formulas, and Maxwell-flow qualification were reconstructed from the full TeX source.
- **Visually confirmed:** The cochain/Hodge equations, positive radiative energy, determinant normalizability theorem, relative-entropy proof, mesh matrices, paired-mode formulas, and nonstationarity discussion were checked on rendered PDF pages 3, 6, 10, 13, and 15.
- **Checked:** An exact Sage assembly on the oriented boundary of a 4-simplex (a triangulated $S^3$) reproduced $D_1D_0=0$, $SD_0=0$, symmetry of the globally assembled Whitney Chern--Simons matrix, vanishing $H^1$, a six-dimensional coexact sector, positive magnetic matrix, and a full-rank symmetric reduced $C$.
- **Checked:** The same exact finite example reproduced the determinant factorization, positivity/admissibility test, mean-helicity log-determinant derivative, and positive susceptibility; 13 labelled checks report `OVERALL: PASS`.
- **Checked:** The local single-tetrahedron pairing is not symmetric by itself, while the assembled closed-complex pairing is symmetric. This directly confirms that the proof uses cancellation of interface boundary terms, as stated in the source.
- **Not independently verified:** A mesh-refinement or continuum limit, convergence of spectra or conditioned measures, arbitrary-topology numerical examples, nontrivial bundles or large gauge transformations, manifolds with boundary, regional sewing, non-Abelian extension, quantization, and a CPS derivation of the reduced symplectic structure.

# Bottom line

Correct under the following precise conditions: **finite triangulation of a closed oriented Riemannian three-manifold, globally defined Abelian potentials in the trivial bundle sector, Whitney inner products, fixed harmonic sectors, and parameters satisfying $\beta L+2\gamma C>0$.** Under those conditions the gauge-reduction, Chern--Simons, Gaussian, relative-entropy, and Fisher identities are sound. They establish neither a continuum theorem nor a regional gluing result.
