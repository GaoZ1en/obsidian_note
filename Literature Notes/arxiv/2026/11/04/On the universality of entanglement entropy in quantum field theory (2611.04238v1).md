---
paper id: 2611.04238v1
title: On the universality of entanglement entropy in quantum field theory
authors:
  - Orr Sela
publication date: 2026-11-03
abstract: |-
  A regulated entangling surface requires boundary conditions and a factorization map. In topological theories, shrinkable local boundaries yield the same universal entropy term under specified geometric and limit assumptions, while a non-shrinkable Chern-Simons boundary provides a counterexample. The paper gives a conditional two-dimensional CFT argument and formulates the additional modular-insertion condition needed in general theories.
comments: "8 pages + appendix, 2 figures; official PDF has 11 pages"
url: https://arxiv.org/abs/2611.04238v1
summary: "Separates shrinkability, norm-preserving factorization and replica-limit control; useful for testing regional sewing and boundary-dependent entropy."
tags: []
---

# Result and precise scope

Correct under the following precise conditions: the source's topological example has local shrinkable boundary conditions, an agreed local-counterterm normalization, shrinkability stable under the replica-smoothing family, and the derivative/limit bounds in Appendix A. Then the \(U(1)_k\) example has boundary-independent constant \(-\tfrac12\log k\). Ordinary shrinkability alone is not a general higher-dimensional universality theorem.

The paper calls the factorization map “unitary”. For a physical Hilbert space embedded in an enlarged tensor product, the property actually used is preservation of inner products on the physical image, \(U^\dagger U=1\). Surjectivity onto the entire enlarged tensor product is not established. In the example, the physical sphere Hilbert space is one-dimensional, whereas the edge-mode tensor product is much larger. Interpret “unitary” as an isometric identification with its image unless a separate surjectivity statement is provided.

Immediate use: a sewing prescription must specify the boundary defect and its normalization, and a replica calculation additionally needs control of the operator inserted by the replica derivative. Matching ordinary separated bulk correlators is not sufficient to establish entropy universality.

Reason codes: T1-boundary, T2-model, T2-dS-BH-holography.

# Complete source map

Source-derived: technical exposition follows the pinned source; only the explicitly logged checks are independently reproduced.

The official version-pinned PDF and complete TeX were inspected. PDF and printed page numbers coincide.

| Part | Pages / equations | Technical role |
|---|---|---|
| Introduction | pp. 1–3, (1)–(4) | Regulated factorization, normalized replica formula, odd/even-dimensional universal terms, definition of shrinkability |
| Entanglement entropy in Chern-Simons theory | pp. 3–6, (5)–(13) | Torus-state expansion; holomorphic shrinkable boundary; added decoupled CFT; condensed-line non-shrinkable boundary; replica entropy |
| Universality in general theories | pp. 6–8, (14)–(17) | Conditional 2D Weyl argument; higher-dimensional curvature obstruction; exact finite-regulator modular-insertion criterion |
| Acknowledgments and references | pp. 8–9 | No additional derivation; cited general results are not independently reproved here |
| Appendix A | pp. 10–11, (A1)–(A3) | Smooth replica filling, curvature-dependent couplings and uniform derivative assumptions needed to exchange limits |

Read the torus expansion and (12)–(13) together with Appendix A, then (16)–(17). Reading only the topological entropy formula misses the conditions that support it.

# Regulators, factorization and the replica derivative

Let the entangling surface have size \(l\). Excise a tube whose transverse circle has circumference \(\epsilon\). The UV cutoff \(a_{\rm UV}\) may be independent; the source often fixes \(a_{\rm UV}/\epsilon\) while taking both to zero. Universal terms are extracted from \(l\)-dependence at fixed regulators.

A local boundary condition \(\mathcal B\) supplies subregion Hilbert spaces and a path-integral map into \(\mathcal H_A\otimes\mathcal H_{\bar A}\). Let \(\widehat\rho_{\mathcal B,\epsilon}\) be the unnormalized reduced density matrix,

$$
Z_{n,\mathcal B}=\operatorname{Tr}\widehat\rho_{\mathcal B,\epsilon}^{\,n},
\qquad
\rho_{\mathcal B,\epsilon}=\widehat\rho_{\mathcal B,\epsilon}/Z_{1,\mathcal B}.
$$

At finite \(\epsilon\), before taking the shrinking limit,

$$
S_{\mathcal B}(\epsilon)
=-\left.\partial_n\log
\frac{Z_{n,\mathcal B}}{Z_{1,\mathcal B}^{\,n}}\right|_{n=1}
=\left.(1-\partial_n)\log Z_{n,\mathcal B}\right|_{n=1}.
$$

The circumference on the replicated boundary is \(n\epsilon\), while the original cutoff radius is held fixed at \(\epsilon/(2\pi)\). Replacing both by a single \(n\)-independent shrinking geometry before differentiation needs an additional argument.

For odd \(d\), the source writes a constant universal term \((-1)^{(d-1)/2}s\) after subtracting local powers of \(l/\epsilon\). For even \(d\), it writes \((-1)^{(d-2)/2}s\log(l/\epsilon)\). This assumes the stated local renormalization scheme and admissible counterterms. It is not invariance under arbitrary nonlocal rescalings of the factorization map.

# Shrinkability as a boundary-defect statement

The regulating boundary is expanded as codimension-two defects as \(\epsilon\to0\). Shrinkability means its leading operator is the identity, up to specified removable local defect counterterms. Correlators with insertions kept a fixed nonzero distance from the tube then approach the original correlators.

Two separate issues must be tracked:

1. Normalized separated correlators do not determine the overall normalization of a map. A fixed identity-defect counterterm prescription is needed to compare inner products.
2. The replica derivative inserts an operator reaching the regulating boundary. Ordinary shrinkability for separated insertions does not automatically control it.

The source does not give a general existence criterion for shrinkable boundaries. Its introductory identification with norm-preserving factorization should not be read as a construction of all Hilbert-space domains or a proof of an onto-unitary map.

# \(U(1)_k\): torus states and the identity line

## Torus expansion

Take even \(k>0\), so the example is the bosonic \(U(1)_k\) theory. The torus Hilbert space has \(k\) orthonormal states \(|\mathsf{ST}^2;a\rangle\), labeled by charges \(a\in\mathbb Z_k\). Filling a toric hole gives

$$
Z_{\mathcal B}(M\setminus\mathsf{ST}^2)
=\sum_a Z(M_a)\,Z_{\mathcal B}(\mathsf{ST}^2;a),
\qquad
T^2_{\mathcal B}=\sum_a Z_{\mathcal B}(\mathsf{ST}^2;a)\,\bar a.
$$

Thus a shrinkable torus must suppress nonidentity lines relative to the identity. The identity coefficient may contain local line counterterms.

## Holomorphic boundary and characters

For \(A_{\bar z}=A_m+iA_l=0\), the boundary variation
\((ik/4\pi)\int_{T^2}A\wedge\delta A\) vanishes on the allowed polarization. The solid-torus coefficients are \(\mathfrak u(1)_k\) characters. With \(\tau=il/\epsilon\), \(\widetilde a\in(-k/2,k/2]\),

$$
\chi_a(il/\epsilon)\sim
(1+\delta_{\widetilde a,k/2})
\exp\left[-\frac{2\pi l}{\epsilon}
\left(\frac{\widetilde a^2}{2k}-\frac1{24}\right)\right].
$$

One can reproduce the exponent by minimizing
\((a+km)^2/(2k)-1/24\) over \(m\in\mathbb Z\). The endpoint \(a=k/2\) has two minimizers; all other charge representatives have one. Consequently

$$
T^2_{A_{\bar z}=0}\sim
\exp\!\left(\frac{\pi l}{12\epsilon}\right)I.
$$

The prefactor is a perimeter counterterm. Adding a decoupled nonchiral boundary CFT with \(c_L=c_R=c\) multiplies the low-temperature vacuum factor by \(\exp(\pi c l/(6\epsilon))\). For a unique normalized vacuum this changes the perimeter coefficient to
\(\alpha=\pi(1+2c)/12\), without changing the leading defect type. Vacuum degeneracy or other finite multiplicities would require a separate normalization/admissibility analysis.

## Replica entropy and counterterm normalization

Topological invariance allows smoothing the replicated bulk while holding the induced metric of its toric boundary fixed. Under Appendix A's assumptions,

$$
Z_n\sim Z(S^3)\exp\!\left(\frac{\alpha l}{n\epsilon}\right),
\qquad Z(S^3)=k^{-1/2},
$$

and therefore

$$
S=2\alpha\,\frac l\epsilon-\frac12\log k .
$$

Allowing a smooth \(n\)-dependent perimeter coefficient gives
\(S=[2\alpha(1)-\alpha'(1)]l/\epsilon-\tfrac12\log k\).
The constant is unchanged by this enlargement.

The conclusion also requires that the allowed local defect counterterms have no independent contribution to the extracted universal constant. The paper's computation makes the perimeter contribution explicit; it does not classify every conceivable finite curvature counterterm on arbitrary entangling geometries. Its result should be used with its identity-defect normalization and local geometric prescription fixed. No unrestricted scheme-independence theorem is claimed here.

# A boundary that projects away a physical state

In \(U(1)_k\times U(1)_{-k}\), the topological condition \(A=B\) replaces the torus by the condensed-line sum

$$
T^2_{A=B}=\sum_{n\in\mathbb Z_k}
\exp\!\left(in\oint(A-B)\right).
$$

Link this sum with a line of charge \((m,m)\). The bilinear form for the doubled theory gives the phase \(e^{2\pi i(2mn/k)}\), so

$$
\sum_{n=0}^{k-1}e^{2\pi i(2mn/k)}
=k\,\delta_{2m,\,0\ {\rm mod}\ k}.
$$

For \(k>2\) and \(2m\ne0\pmod k\), a nonzero original state is mapped to a null state. This directly violates preservation of norm. It is not an alternative admissible factorization of the same physical state. For the unpunctured sphere, the extra factor \(k\) cancels \(Z(S^3)=1/k\), giving a vanishing topological entropy constant instead of \(-\log k\). The altered constant accompanies a different defect operation.

# Appendix A: why the order of limits can be controlled

The regulated round replica metric is

$$
ds_n^2=\frac{dr^2}{1-(2\pi r/l)^2}
+n^2r^2d\theta^2+
[1-(2\pi r/l)^2]dy^2,
\quad y\sim y+l,\quad\theta\sim\theta+2\pi .
$$

At \(r=\epsilon/(2\pi)\), the torus lengths are exactly \(n\epsilon\) and \(\sqrt{l^2-\epsilon^2}\). Replacing the latter by \(l\) in the perimeter term changes it by \(O(\epsilon/l)\), subject to uniformity near \(n=1\).

Multiply \(g_{rr}\) by \(n^2\), then put \(R=nr\). This preserves the induced boundary metric and removes the conical excess near the hole. In this collar, extrinsic curvature scales as \(K\to K/n\), and the round ambient curvature as \(\mathrm{Riem}\to\mathrm{Riem}/n^2\). A coupling multiplying \(p_i\) extrinsic and \(q_i\) ambient curvature factors must change as
\(\lambda_i(n)=n^{p_i+2q_i}\lambda_i\).
Shrinkability is assumed to persist along this family near \(n=1\). The construction can fail if it holds only at isolated coupling values.

Writing \(\kappa=24\pi^2/l^2\), the source separates

$$
\log Z_n=\log Z(S^3)+C(n,\epsilon)
+F\!\left(n\epsilon,\{n^{p_i+2q_i}\lambda_i\},\kappa/n^2\right).
$$

The finite-regulator entropy remainder is exactly

$$
\delta S=
\left[1-\epsilon\partial_\epsilon
-\sum_i(p_i+2q_i)\lambda_i\partial_{\lambda_i}
+2\kappa\partial_\kappa\right]F.
$$

The Appendix assumes: \(F\to0\); \(\epsilon\partial_\epsilon F\) has a finite limit; and the derivative along the coupling/geometry family converges uniformly to a continuous limit in a fixed neighborhood of \(n=1\). The first two imply the logarithmic radial derivative tends to zero. Integrating the uniform limiting family derivative between nearby values of \(n\) shows that it too vanishes. Hence \(\delta S\to0\).

The uniform condition is substantive. For the purely mathematical witness
\(f_\epsilon(n)=\epsilon e^{-(n-1)^2/\epsilon^2}\sin((n-1)/\epsilon)\),
one has \(f_\epsilon(n)\to0\) pointwise but \(\partial_n f_\epsilon(1)=1\).
This is not a physical counterexample to the paper's conditional theorem; it demonstrates why pointwise shrinkability cannot replace its derivative assumption.

# Two-dimensional CFT and the higher-dimensional obstruction

For \(c_L=c_R=c\), use disjoint small collars around the two regulated interval endpoints. In the collar where the smoothing function is one,

$$
\phi(r)=\left(1-\frac1n\right)\log\frac{2\pi r}{\epsilon},
\qquad
R=nr\left(\frac{\epsilon}{2\pi r}\right)^{1-1/n}.
$$

The metric \(e^{-2\phi}(dr^2+n^2r^2d\theta^2)\) becomes \(dR^2+R^2d\theta^2\), and the boundary sits at \(R=n\epsilon/(2\pi)\). Because \(\phi=0\) on the regulating circle, its induced metric is unchanged. The Weyl anomaly is the same for the compared boundary conditions in the source's setup; local point counterterms cannot change interval-length dependence. With the additional replica/shrinking interchange assumption, the common universal term is

$$
S_{\rm univ}=\frac c3\log(l/\epsilon).
$$

For \(d>2\), a locally planar entangling surface instead yields

$$
d\widetilde s^2=dR^2+R^2d\theta^2+
\left(\frac{n\epsilon}{2\pi R}\right)^{2(n-1)}
h_{ij}dy^i dy^j .
$$

For flat \(h_{ij}\), its scalar curvature is
\(\widetilde{\mathcal R}=-(d-1)(d-2)(n-1)^2/R^2\).
At fixed \(n\ne1\) it diverges as the regulator shrinks. Thus ordinary shrinkability on smooth backgrounds does not justify the same maneuver. The \(d=4\) value was independently checked with xCoba.

# Exact finite-regulator criterion and relation to regional observables

Define \(K_{\mathcal B,\epsilon}=-\log\widehat\rho_{\mathcal B,\epsilon}\), which differs from the modular Hamiltonian of the normalized density matrix by a constant. Then (16) is

$$
S_{\mathcal B}(\epsilon)
=\log Z_{1,\mathcal B}(\epsilon)
+\langle K_{\mathcal B,\epsilon}\rangle_{1,\mathcal B}.
$$

This identity holds at finite regulator. Shrinkability controls the first term up to the agreed counterterms. The remaining universality question is whether the universal part of the second term agrees between boundary conditions.

For a 4D CFT ball of radius \(R_{\rm ball}\), assuming the regulator and boundary condition preserve spherical modular flow, the source writes

$$
K_{\mathcal B,\epsilon}
=-2\pi\int_{A_\epsilon}d^3x\,
\frac{R_{\rm ball}^2-r^2}{2R_{\rm ball}}\,
T_{\tau\tau}^{E,\mathrm{full}}(0,x).
$$

The minus sign uses Euclidean \(T_{\tau\tau}^{E}=-T_{00}^{L}\); an additive normalization constant depends on the unnormalized convention. “Full” means variation of the entire bulk-plus-boundary action, including distributions at the regulator. Omitting these terms would change the object whose expectation value is being compared.

This is the direct connection to regional CPS and modular/charge questions: boundary completion is part of the observable. The source does not prove a gravitational JLMS relation, establish a regional symplectic quotient or resolve the Maxwell logarithm discrepancy; explicit Maxwell work is deferred to a future paper.

# Verification log

Verified:

| Evidence | Check | Result and scope |
|---|---|---|
| Checked, Mathematica | Finite-\(\epsilon\) normalized replica derivative; arbitrary smooth \(\alpha(n)\) | Both derivations give \([2\alpha(1)-\alpha'(1)]l/\epsilon-\frac12\log k\) |
| Checked, Sage | Character ground weights and endpoint multiplicities | Exact minimization for every charge at \(k=2,4,6,8\); agrees with (8) |
| Checked, Sage | Condensation linking sum | Exact cyclotomic sums at \(k=2,4,6,8\); zero precisely in the stated forbidden sectors |
| Checked, xCoba | Smoothed round collar curvature | \(24\pi^2/(n^2l^2)\), agrees with Appendix A |
| Checked, Mathematica | Appendix A chain rule | Coefficients \(1,-\epsilon,-(p_i+2q_i)\lambda_i,+2\kappa\) reproduced |
| Checked, Mathematica | Weyl coordinate change at finite positive \(n,\epsilon,r\) | Radial/angular metric residuals zero; boundary radius \(n\epsilon/(2\pi)\) |
| Checked, xCoba | Higher-dimensional warped metric | \(d=4:\ \widetilde{\mathcal R}=-6(n-1)^2/R^2\) |
| Checked, Mathematica and elementary bound | Nonuniform-limit witness | Pointwise remainder zero, derivative at \(n=1\) equal to one |
| Visually confirmed | PDF pp. 4, 5, 7, 10, 11 | Character coefficient, projector, entropy sign, warped metric, finite-\(\epsilon\) criterion and full Appendix A assumptions |

Assumptions: even positive integer level; local boundary conditions; consistent identity-defect and line-counterterm normalization; insertions separated from the tube for ordinary shrinkability; stable coupling/geometry family; derivative bounds stated above; CFT Weyl argument additionally assumes its replica/shrinking interchange and anomaly comparison. UV cutoff and tube circumference are retained independently until a ratio is specified.

Not verified: a complete Hilbert-space isometry for the holomorphic boundary; onto-unitarity; general existence of shrinkable boundaries; uniform estimates for arbitrary interacting boundary theories; a classification of all finite geometric counterterms; arbitrary-\(d\) universality; the full boundary stress tensor of a concrete 4D theory.

Blocked: no source or computation-service obstruction. A concrete 4D universality proof needs the complete regulated boundary action/domain and its modular insertion asymptotics; ordinary separated-correlator shrinkability does not provide those inputs.

Failed: no central equation is contradicted by accepted checks under the recorded assumptions. A literal reading of “unitary onto the entire enlarged tensor product” is unsupported; use an isometry onto the physical image.

Official sources: [abstract](https://arxiv.org/abs/2611.04238v1), [PDF](https://arxiv.org/pdf/2611.04238v1), [TeX](https://arxiv.org/src/2611.04238v1). No PDF attachment was created.
