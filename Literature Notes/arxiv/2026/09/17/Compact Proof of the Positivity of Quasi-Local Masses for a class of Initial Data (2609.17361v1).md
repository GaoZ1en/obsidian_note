---
paper id: 2609.17361v1
title: Compact Proof of the Positivity of Quasi-Local Masses for a class of Initial Data
authors:
  - Puskar Mondal
  - Shing-Tung Yau
publication date: 2026-09-15T15:59:22Z
abstract: |-
  The paper gives an entirely compact, quasi-local positivity argument for a perturbative class of Wang--Yau data. It reduces the Wang--Yau energy on a Jang graph to the Brown--York mass of a boundary-preserving scalar-flat conformal metric, constructs nontrivial physical data whose reduction is a transverse-traceless perturbation of a strictly convex Euclidean fill-in, and proves strict positivity from the Brown--York Hessian in nonzero TT directions.
comments: Comments welcome
url: https://arxiv.org/abs/2609.17361v1
summary: "A clean Jang-to-scalar-flat-to-Brown--York reduction, followed by a positive TT Hessian; the conclusion is rigorous only for the explicitly defined small TT-generated class and a minimizing admissible Wang--Yau time function."
tags: []
---

Daily overview: [[2026_09_17_overview]]

# Verdict

**Correct under the following precise conditions:** the physical initial data obey the dominant energy condition; the chosen Wang--Yau time function is admissible and attains the minimum; the Jang Dirichlet problem is smooth; the projected reference surface bounds a connected strictly convex Euclidean domain; and the scalar-flat Jang reduction belongs exactly to the paper's small, nonzero, TT-generated class. Under these hypotheses, the reduction

$$
E_{\mathrm{WY}}(\Sigma,\tau)
\geq m_{\mathrm{BY}}(\widehat\Sigma;\widehat\Omega,g_{\mathrm{sf}})
$$

and the positive quadratic Brown--York coefficient are internally consistent. The conformal coefficients, coercive square completion, boundary flux factors, and Taylor coefficients pass independent symbolic checks.

The title must not be read as a general compact proof of positivity for arbitrary initial data. The strict result is local near a Euclidean fill-in and applies only after the exact TT-generated representation has been imposed. Existence of a minimizing admissible time function is assumed, not proved, and the analytic existence results behind the Jang reduction and Wang--Yau reference construction are imported.

# Conceptual entry point

The paper solves a sharply restricted version of a genuine problem. Standard positivity proofs for Brown--York, Liu--Yau, or Wang--Yau mass often pass through an asymptotically flat extension and the positive mass theorem. A compact spinorial proof instead produces a boundary integral weighted by the norm of a harmonic spinor. Removing that weight would require boundary data strong enough to enforce \(|\psi|=1\), but an elliptic boundary condition for a first-order Dirac operator fixes only half the boundary components.

The replacement strategy is:

$$
\text{Lorentzian Wang--Yau data}
\longrightarrow
\text{Riemannian Jang graph}
\longrightarrow
\text{scalar-flat fill-in}
\longrightarrow
\text{Brown--York Hessian in a TT direction}.
$$

The first two arrows retain the momentum information through a Jang vector field. The last arrow is perturbative: Euclidean space is a critical point of Brown--York mass under scalar-flat, fixed-boundary-metric deformations, and the second variation is strictly positive on every nonzero TT seed satisfying the boundary condition.

# How to read this long paper

- **Read the main-results and proof-outline blocks first.** They contain the entire logical chain and make the perturbative scope explicit.
- **Then read the scalar-flat reduction proposition.** This is the reusable part for covariant phase space and finite-boundary work: it isolates the positive bulk remainder left after the Wang--Yau-to-Brown--York comparison.
- **Read the TT completion and physical-realization propositions together.** The first constructs scalar-flat metrics from TT seeds; the second reverse-engineers physical initial data for which the Jang reduction returns exactly those metrics.
- **Read the Brown--York first- and second-variation lemmas last.** They provide the strict sign and expose every boundary term.
- **The long spinor discussion is contextual.** It explains why the compact proof uses a conformal/variational route rather than claiming a generic spinorial proof.
- **The projected-Ricci-flow remarks are formal only.** They are not used in the theorem and do not establish a well-posed boundary flow.

# Complete source map

| Source block | Function | Main output |
|---|---|---|
| Introduction and geometric setup | Defines Brown--York, Liu--Yau, Wang--Yau, the Jang graph, and the projected reference metric. | Fixes signature \((-+++ )\), units \(8\pi G=1\), and outward-normal conventions. |
| Spinorial compact approach | Reviews the Dirac boundary problem and its normalization obstruction. | A positive weighted Hamiltonian does not by itself imply positivity of the unweighted quasi-local mass. |
| Main results | States three increasingly restrictive theorems. | Scalar-flat reduction; construction of a nontrivial TT-generated physical class; strict positivity within that class. |
| Proof outline | Gives the four reductions in one continuous calculation. | The shortest reliable map of the paper. |
| TT-generated scalar-flat fill-ins | Defines the TT space and constructs compactly supported TT tensors using the linearized Cotton--York operator. | Infinite-dimensional seed space and exact conformal scalar-flat completion. |
| Wang--Yau reduction | Matches the reference projection and Jang boundary Hamiltonian. | \(8\pi E_{\mathrm{WY}}=\int(k_0-\mathcal H)\). |
| Scalar-flat reduction proposition | Solves a conformal Dirichlet problem on the Jang graph. | \(E_{\mathrm{WY}}\geq m_{\mathrm{BY}}\) plus two nonnegative bulk terms. |
| TT completion proposition | Applies the implicit-function theorem to \(\delta+\lambda h\). | \(g_\lambda=v_\lambda^4(\delta+\lambda h)\), \(R_{g_\lambda}=0\), and \(v_\lambda=1+O(\lambda^2)\). |
| Physical-realization proposition | Reverse-engineers \((g,K)\) and matter densities from the scalar-flat family. | Nonempty strict-DEC class whose Jang--conformal reduction returns \(g_\lambda\) exactly. |
| Brown--York variation lemmas | Varies total boundary mean curvature within the scalar-flat, fixed-boundary-metric class. | Vanishing first variation and a positive TT Hessian. |
| Final theorem | Combines the comparison and Hessian. | Strict Wang--Yau positivity for sufficiently small nonzero \(\lambda\). |

# Definitions and conventions

The physical data are a compact spacelike initial data set \((\Omega,g,K)\) with boundary \(\Sigma\), energy density \(\mu\), momentum density \(J\), and dominant energy condition

$$
\mu\geq |J|_g.
$$

The spacetime signature is \((-+++ )\), and the paper sets \(8\pi G=1\). For a Riemannian fill-in with outward unit normal, the second fundamental form is

$$
A(Y,Z)=g(\nabla_Y\nu,Z),
\qquad H=\operatorname{tr}A,
$$

so a strictly convex Euclidean boundary has \(A_0>0\) and \(H_0>0\). The Brown--York mass is

$$
m_{\mathrm{BY}}(\Sigma;\Omega,g)
=\frac{1}{8\pi}\int_\Sigma(H_0-H)\,dA.
$$

For an admissible Wang--Yau time function \(\tau\), the Jang graph has metric

$$
\widehat g=g+df\otimes df,
\qquad f|_\Sigma=\tau,
$$

and boundary metric

$$
\widehat\sigma=\sigma+d\tau\otimes d\tau.
$$

This is also the metric induced on the Euclidean projection of the Minkowski reference embedding, so the physical and reference Hamiltonians are compared on the same two-surface.

# Reduction to a scalar-flat Brown--York problem

Let \(\widetilde e_4\) be the downward unit normal to the Jang graph and \(\widetilde e_3\) the outward unit normal to its boundary. The Jang vector is

$$
X^\flat
=\left\langle\widetilde\nabla_{\widetilde e_4}\widetilde e_4,\,\cdot\,\right\rangle
-P(\widetilde e_4,\,\cdot\,),
$$

and the generalized boundary mean curvature is

$$
\mathcal H=\widehat H-\langle X,\nu\rangle.
$$

The Wang--Yau Hamiltonian reduction is

$$
8\pi E_{\mathrm{WY}}(\Sigma,\tau)
=\int_{\widehat\Sigma}(k_0-\mathcal H)\,dA_{\widehat\sigma}.
$$

The dominant energy condition supplies the Schoen--Yau inequality

$$
R_{\widehat g}\geq 2|X|_{\widehat g}^2-2\operatorname{div}_{\widehat g}X.
$$

For \(\phi\in H^1_0(\widehat\Omega)\), integration by parts gives

$$
\int_{\widehat\Omega}
\left(8|\widehat\nabla\phi|^2+R_{\widehat g}\phi^2\right)
\geq
6\int_{\widehat\Omega}|\widehat\nabla\phi|^2
+2\int_{\widehat\Omega}|\widehat\nabla\phi+\phi X|^2.
$$

Thus the Dirichlet conformal Laplacian is coercive. Its unique positive solution

$$
-8\Delta_{\widehat g}U+R_{\widehat g}U=0,
\qquad U|_{\widehat\Sigma}=1,
$$

defines

$$
g_{\mathrm{sf}}=U^4\widehat g.
$$

In three dimensions,

$$
R_{U^4\widehat g}
=U^{-5}\left(-8\Delta_{\widehat g}U+R_{\widehat g}U\right)=0.
$$

The boundary metric is unchanged because \(U=1\) there. With the stated outward-normal convention,

$$
H_{\mathrm{sf}}=\widehat H+4\partial_\nu U
$$

on the boundary. Multiplication of the conformal equation by \(U\), followed by the curvature inequality, yields

$$
\int_{\widehat\Sigma}(H_{\mathrm{sf}}-\mathcal H)
\geq
3\int_{\widehat\Omega}|\widehat\nabla U|^2
+\int_{\widehat\Omega}|\widehat\nabla U+UX|^2.
$$

Consequently,

$$
\begin{aligned}
E_{\mathrm{WY}}(\Sigma,\tau)
\geq{}&m_{\mathrm{BY}}(\widehat\Sigma;\widehat\Omega,g_{\mathrm{sf}})\\
&+\frac{3}{8\pi}\int_{\widehat\Omega}|\widehat\nabla U|^2
+\frac{1}{8\pi}\int_{\widehat\Omega}|\widehat\nabla U+UX|^2.
\end{aligned}
$$

This is stronger than the bare comparison and identifies two equality obstructions.

# TT-generated scalar-flat metrics

Let \(\Omega_0\subset\mathbb R^3\) have connected strictly convex boundary \(\Sigma_0\). A seed tensor satisfies

$$
\operatorname{div}_\delta h=0,
\qquad
\operatorname{tr}_\delta h=0,
\qquad
h^T|_{\Sigma_0}=0.
$$

The paper constructs infinitely many compactly supported examples by applying the linearized Cotton--York operator to compactly supported symmetric tensors. Locality preserves support, while the linearized Cotton identities give trace- and divergence-freeness.

For sufficiently small \(\lambda\), solve

$$
-8\Delta_{\delta+\lambda h}v_\lambda
+R_{\delta+\lambda h}v_\lambda=0,
\qquad v_\lambda|_{\Sigma_0}=1,
$$

and set

$$
g_\lambda=v_\lambda^4(\delta+\lambda h).
$$

The induced boundary metric stays equal to \(\gamma_0\), and \(R_{g_\lambda}=0\) exactly. At first order,

$$
DR_\delta(h)
=-\Delta_\delta(\operatorname{tr}_\delta h)
+\partial^i\partial^j h_{ij}=0.
$$

Differentiating the conformal equation therefore gives a homogeneous Dirichlet problem for \(\dot v_0\), hence

$$
\dot v_0=0,
\qquad
v_\lambda=1+O_{C^{k,\alpha}}(\lambda^2),
$$

and

$$
g_\lambda=\delta+\lambda h+O_{C^{k,\alpha}}(\lambda^2).
$$

The important logical direction is exact construction first, perturbative expansion second. Scalar flatness is not inferred merely from the linearized TT condition.

# Physical realization and what it does prove

The scalar-flat family would be only an abstract Riemannian construction without a spacetime realization. The paper supplies one. Solve

$$
-\Delta_{g_{\mathrm{sf},\lambda}}\phi_\lambda=1,
\qquad \phi_\lambda|_{\Sigma_0}=0,
$$

put \(w_{\lambda,a}=1+a\phi_\lambda\), and define

$$
\widehat g_{\lambda,a}=w_{\lambda,a}^4g_{\mathrm{sf},\lambda}.
$$

Then

$$
R_{\widehat g_{\lambda,a}}
=8a\,w_{\lambda,a}^{-5}>0.
$$

For a small function \(f\), take

$$
g_{\lambda,a,f}=\widehat g_{\lambda,a}-df\otimes df,
\qquad
K_{\lambda,a,f,S}=A_f+S,
$$

where \(S\) is trace-free with respect to \(\widehat g_{\lambda,a}\). The graph metric is exactly \(\widehat g_{\lambda,a}\), and the trace condition makes \(f\) solve Jang's equation. At \(f=S=0\), one has \(K=0\), \(J=0\), and

$$
\mu=\frac12R_{\widehat g_{\lambda,a}}>0.
$$

Strict dominant energy persists for sufficiently small \((f,S)\). The inverse conformal factor \(U=w^{-1}\) returns the original scalar-flat metric exactly.

This proves that the class is nonempty and open in the auxiliary small variables used in the construction. It does **not** show that a generic physical initial data set, or a generic Wang--Yau minimizer, has a TT-generated scalar-flat reduction.

# Brown--York Hessian

For a scalar-flat family with fixed induced boundary metric, let

$$
F(\lambda)=\int_{\Sigma_0}H_\lambda\,dA_{\gamma_0}.
$$

The first-variation identity is

$$
2F'(\lambda)
=-\int_{\Omega_0}
\left\langle\dot g_\lambda,\operatorname{Ric}(g_\lambda)\right\rangle_{g_\lambda}
\,dV_{g_\lambda}.
$$

At \(\lambda=0\), \(g_0=\delta\), \(\dot g_0=h\), and \(\operatorname{Ric}(\delta)=0\), so

$$
m'_{\mathrm{BY}}(0)=0.
$$

For a TT tensor on the flat background,

$$
D\operatorname{Ric}_\delta(h)=-\frac12\Delta_\delta h.
$$

Let the boundary vector \(Z_h\) be defined by

$$
\gamma_0(Z_h,Y)=h(\nu_0,Y).
$$

Using \(h^T=0\), trace-freeness, divergence-freeness, and integration by parts, the paper obtains

$$
\begin{aligned}
8\pi m''_{\mathrm{BY}}(0)
={}&\frac14\int_{\Omega_0}|\nabla^\delta h|_\delta^2\,dV_\delta\\
&+\frac12\int_{\Sigma_0}
\left(A_0(Z_h,Z_h)+H_0|Z_h|_{\gamma_0}^2\right)dA_{\gamma_0}.
\end{aligned}
$$

Strict convexity makes the boundary contribution nonnegative. If the whole quadratic form vanishes, then \(h\) is parallel and vanishes on the boundary, hence vanishes everywhere on the connected domain. Therefore it is strictly positive for every nonzero seed.

Taylor expansion gives

$$
\begin{aligned}
m_{\mathrm{BY}}(g_\lambda)
={}&\frac{\lambda^2}{64\pi}
\int_{\Omega_0}|\nabla^\delta h|_\delta^2\,dV_\delta\\
&+\frac{\lambda^2}{32\pi}
\int_{\Sigma_0}
\left(A_0(Z_h,Z_h)+H_0|Z_h|_{\gamma_0}^2\right)dA_{\gamma_0}
+o(\lambda^2).
\end{aligned}
$$

Thus \(m_{\mathrm{BY}}(g_\lambda)>0\) for all sufficiently small nonzero \(\lambda\). If \(\tau_*\) is an admissible minimizer and its reduction is exactly this family, then

$$
M_{\mathrm{WY}}(\Sigma)
=E_{\mathrm{WY}}(\Sigma,\tau_*)
>0.
$$

# Relation to my current projects

The most reusable object is not the final perturbative positivity theorem but the boundary-preserving comparison

$$
E_{\mathrm{WY}}-m_{\mathrm{BY}}
\geq
\frac{3}{8\pi}\|\widehat\nabla U\|_{L^2}^2
+\frac{1}{8\pi}\|\widehat\nabla U+UX\|_{L^2}^2.
$$

For action-first regional sewing, this is a concrete example in which momentum data are not discarded when one passes to a Riemannian fill-in: they survive as the boundary correction \(\langle X,\nu\rangle\) and the bulk square \(|\widehat\nabla U+UX|^2\). That is structurally close to the requirement that released boundary-history data remain visible until the gluing constraint is imposed.

The construction also cleanly separates three layers that should remain separate in the vault's gauge-sewing work:

1. a Lorentzian initial-data constraint and boundary Hamiltonian;
2. a boundary-preserving reduction to a Riemannian problem;
3. a perturbative positivity statement in a restricted slice of metric space.

The paper does not derive a covariant symplectic form, a Peierls bracket, or a regional observable algebra. It is therefore a model for keeping boundary and constraint information under a reduction, not yet a sewing theorem.

# Verification record

## Verified

- **Source and PDF coverage:** read the full 38-page paper in monograph mode, using the TeX source for equation-level navigation and rendered PDF pages for the central comparison and Hessian formulas.
- **Conformal coefficients:** independently checked the three-dimensional cancellation leading to
  \(R_{U^4g}=U^{-5}(-8\Delta U+RU)\).
- **Coercive square completion:** independently checked
  \(8a^2+2b^2+4ab=6a^2+2(a+b)^2\), which fixes the coefficients in the conformal-Laplacian estimate.
- **Boundary-flux normalization:** independently checked the factor-of-two passage from the integrated conformal equation to
  \(4\partial_\nu U+\langle X,\nu\rangle\).
- **TT linearization:** the displayed flat-background formula gives \(DR_\delta(h)=0\) under the stated divergence-free and trace-free assumptions.
- **Taylor coefficients:** independently checked that the Hessian normalization produces \(\lambda^2/(64\pi)\) in the bulk term and \(\lambda^2/(32\pi)\) in the boundary term.
- **Visual confirmation:** the rendered PDF shows the comparison, TT conditions, Hessian, and quadratic expansion with the same coefficients as the source.

## Assumptions

- The Wang--Yau reference-embedding theorem, Jang solvability under admissibility, and the Schoen--Yau scalar-curvature inequality are used as cited inputs.
- A smooth admissible time function that actually attains the Wang--Yau infimum exists for the surface under consideration.
- The scalar-flat Jang reduction admits the exact boundary-preserving TT-generated representation, not merely a first-order approximation.
- The perturbation parameter is sufficiently small and nonzero for a fixed normalized nonzero seed \(h\).

## Not verified

- I did not independently reprove the global elliptic existence and regularity statements for the Jang, conformal-Laplacian, or Wang--Yau optimal-embedding equations.
- I did not independently reconstruct the full Cotton--York linearization or the physical-realization continuity estimates in a computer algebra system.
- The paper proves no general compact positivity theorem outside its TT-generated class.
- The formal projected Ricci flow is not shown to exist or be well posed.

# Source defects and cautions

The mathematical spine is readable, but the v1 source has several editorial defects: an empty proposition reference, inconsistent \(G\) versus \(\mathfrak G\) notation in the final proof, duplicated words, and minor typographical errors. These do not alter the checked equations.

The more important caution is logical rather than typographical. The final strict positivity theorem starts with membership in the TT-generated Jang-reduced class. The separate physical-realization proposition proves that this class is nonempty, but it does not turn that membership condition into a generic gauge choice or a decomposition theorem for all nearby initial data.

# Bottom line

This is a valuable compact perturbative theorem and a useful boundary-reduction template. Its strongest reusable statement is the positive-remainder comparison between Wang--Yau and Brown--York energies. Its strict positivity conclusion is correct for the explicitly constructed small TT-generated sector, not for arbitrary initial data.
