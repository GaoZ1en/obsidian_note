---
paper id: 2606.29587v1
title: Asymptotic boundary structure of Lagrangian gauge theories
authors:
  - Ivan Dneprov
  - Maxim Grigoriev
  - Mikhail Markov
publication date: 2026-06-28T20:07:19Z
abstract: |-
  The paper studies local gauge theories with asymptotic boundaries using the gauge-PDE/Q-manifold formalism. A bulk compatible presymplectic structure with finite-order poles induces two boundary structures: a renormalized BFV-type presymplectic structure and an anomaly BV/Lagrangian structure. The construction is applied to scalar and Maxwell fields on AdS and Minkowski/null-infinity compactifications.
comments: ""
url: https://arxiv.org/abs/2606.29587v1
summary: "A high-value asymptotic-boundary CPS paper: finite-order-pole presymplectic data are split by R/A maps into renormalized boundary BFV structure and anomaly boundary dynamics."
tags: []
---

Back to [[2026_06_30_overview]].

# Source structure map

- Introduction: explains the gap between ordinary BV-BFV boundary theory and asymptotic boundaries where Lagrangian presymplectic structures diverge.
- Section 2: reviews gauge PDEs, compatible presymplectic structures, background gauge PDEs, Maxwell as a running example, and ordinary boundary pullback.
- Section 3: constructs $Q$-boundaries, compactifications, finite-order-pole cocycles, the $\mathcal R/\mathcal A$ maps, the renormalization formula, and the induced boundary presymplectic structures.
- Section 4: applies the construction to fields on AdS through compactified flat AdS gravity; scalar fields give GJMS/singleton anomaly actions and Maxwell fields give conformal Maxwell anomaly actions.
- Section 5: applies the same method to Minkowski compactification and null infinity; scalar and Maxwell examples produce conformal-Carroll or magnetic Carrollian tower actions.
- Appendices: prove choice independence of the cocycles, properties of $\mathcal R/\mathcal A$, the renormalization proposition, a Bell-polynomial identity, and scalar presymplectic-potential formulas.

# Q-boundary and gauge-PDE notation

- A $Q$-manifold is a graded manifold with a homological vector field $Q$, $Q^2=0$.
- A gauge PDE is a $Q$-bundle $(E,Q)\to(T[1]X,d_X)$. A solution $\sigma$ satisfies $d_X\sigma^*=\sigma^*Q$.
- A compatible presymplectic structure is a closed 2-form $\omega$ with

$$
d\omega=0,\qquad i_Q\omega+dH\in\mathcal I,
$$

or equivalently $L_Q\omega\in\mathcal I$, where $\mathcal I$ is the base/background ideal.

- Locally $\omega=d\chi$, and the intrinsic AKSZ-type action has the form

$$
S[\sigma]=\int\sigma^*\chi(d_X)+\sigma^*H.
$$

- A $Q$-boundary is described by a boundary-defining function $\Omega$ with $\xi=Q\Omega$, and the boundary itself imposes

$$
\Omega=0,\qquad \xi=0.
$$

- The auxiliary vector field $\mathfrak d$ satisfies $\mathfrak d\Omega=0$, $\mathfrak d\xi=1$, and $\mathfrak d^2=0$. The radial normal operator is

$$
\nabla=[Q,\mathfrak d],\qquad \nabla\Omega=1.
$$

# Finite-order poles and the two boundary maps

Let $\tilde v$ be a form on the interior with finite-order pole, so that

$$
v=\Omega^p\tilde v
$$

extends smoothly to the compactified field space. The source derives

$$
\Omega L_Qv=p\xi v
$$

for a $Q$-cocycle $\tilde v$ of pole order $p$.

The two induced boundary cocycles are

$$
v^{\mathcal R}
=b^*\frac{1}{p!}L_\nabla^p v,
$$

and

$$
v^{\mathcal A}
=b^*\frac{(-1)^{\operatorname{tot}(\tilde v)}}{(p-1)!}
L_\nabla^{p-1}L_{\mathfrak d}v.
$$

Here $b$ is the boundary embedding and $\operatorname{tot}$ is form degree plus ghost degree. The maps are independent of the nonminimal choice of $p$ and commute with $d$ and $L_Q$ modulo the relevant ideals.

# Renormalization as Q-exact counterterms plus an anomaly

The paper's key decomposition is

$$
v^{(p)}
=p!\tilde v
+L_Q\!\left(
\sum_{s=1}^{p-1}p(s-1)!\Omega^{-s}\bar v^{(p-s-1)}
+\bar v^{(p-1)}
\right)
-p\frac{\xi}{\Omega}\bar v^{(p-1)}.
$$

The pole counterterms are $L_Q$-exact, while the $\xi/\Omega$ residue is the logarithmic/anomaly part. Iterating the logarithmic term gives a renormalized integral with power counterterms and a logarithmic anomaly term. This is why the notation is $\mathcal R$ for renormalization and $\mathcal A$ for anomaly.

For the vault, this is the clean formula to reuse:

$$
\text{divergent bulk cocycle}
\quad\leadsto\quad
\text{renormalized boundary cocycle}
+\text{anomaly cocycle}.
$$

# Renormalized presymplectic structures

For a Lagrangian gauge PDE, the interior compatible presymplectic structure obeys

$$
i_Q\tilde\omega+d\tilde H\in\tilde{\mathcal I},
\qquad
d\tilde\omega=0.
$$

If $\tilde\omega$ and $\tilde H$ have finite-order poles, then the boundary receives two presymplectic structures:

$$
\omega^{\mathcal R}=\mathcal R(\tilde\omega),
\qquad
\omega^{\mathcal A}=\mathcal A(\tilde\omega).
$$

Choosing $\tilde\omega=d\tilde\chi$ gives

$$
\omega^{\mathcal R}=d\mathcal R(\tilde\chi),
\qquad
\omega^{\mathcal A}=d\mathcal A(\tilde\chi).
$$

The $\mathcal R$ structure has the boundary BFV degree and gives a renormalized asymptotic BFV system. The $\mathcal A$ structure has the usual boundary BV/Lagrangian degree and is interpreted as the anomaly action, such as the holographic Weyl anomaly in AdS.

Using

$$
\tilde\omega=(d+L_Q)(\tilde\chi+\tilde l)+\tilde{\mathcal I}_{\mathrm{fop}},
$$

the induced forms satisfy

$$
\omega^{\mathcal R}=(d+L_Q)\mathcal R(\tilde\chi+\tilde l)+\mathcal I_\partial,
\qquad
\omega^{\mathcal A}=(d+L_Q)\mathcal A(\tilde\chi+\tilde l)+\mathcal I_\partial.
$$

The anomaly Hamiltonian can be expressed as

$$
H_l^{\mathcal A}
=\frac{(-1)^{\dim X}}{(p-1)!}b^*L_\nabla^{p-1}
\left(L_{\mathfrak d}H+i_\nabla\chi\right),
$$

where $H=\Omega^p\tilde H$ and $\chi=\Omega^p\tilde\chi$ for sufficiently large $p$.

# AdS compactification and boundary fields

The AdS examples treat flat AdS gravity as a gauge PDE with compactification variables

$$
\Omega,\ n_a,\ \tau
$$

of degree zero and

$$
\xi^a,\ \rho^{ab},\ \lambda,\ \lambda^a
$$

of degree one. The boundary is the conformal compactification, and the induced boundary gauge PDE is a conformal algebra problem.

For a scalar field, the source uses

$$
Q\phi=\xi^a\nabla_a\phi+w\lambda\phi,
\qquad
w=\ell-\frac d2,
\qquad
m^2=-\epsilon w(d+w).
$$

The radial recurrence has the schematic form

$$
(N-2\ell)\phi^{(N)}
+(N-1)\epsilon\,\Box\phi^{(N-2)}=0.
$$

At integer $\ell$, the obstruction gives the boundary equation $\Box^\ell\phi=0$ and an anomaly action for the higher-order singleton/GJMS scalar.

For Maxwell theory, the compactified equations include

$$
QC=\frac12\xi^a\xi^bF_{ab},
$$

and

$$
QF_{ab}
=\xi^c\nabla_cF_{ab}
+\rho_a{}^cF_{cb}
+\rho_b{}^cF_{ac}
-2\lambda F_{ab}.
$$

The source's Euler component is

$$
Y_a=(4-D)n^bF_{ba}+\Omega\nabla^bF_{ba}.
$$

Even boundary dimensions yield nontrivial conformal Maxwell anomaly actions; the paper identifies the $d=4$ case with ordinary Maxwell and the $d=6$ case with a known higher-derivative conformal Maxwell operator.

# Null infinity and Carrollian towers

For the Minkowski/null-infinity examples, the same compactified variables are split as $a=(\Omega,u,A)$ with null metric component $g_{\Omega u}=1$. The boundary algebra is Poincare in $D$ dimensions, interpreted as conformal Carroll data in $d=D-1$ dimensions.

For scalar fields, the radial recurrence becomes

$$
(2N-2\ell+1)\partial_u\phi^{(N)}
+N\partial_A\partial^A\phi^{(N-1)}=0.
$$

The anomaly action is a finite triangular tower of Carrollian fields; for $\ell=1$ it gives the magnetic Carrollian scalar.

For Maxwell fields, one displayed component is

$$
Y_\Omega^{(N)}
=(d-3-N)\nu^{(N)}
-N\nabla^AJ_A^{(N-1)}.
$$

The source claims the resulting tower action for $d\ge5$ and identifies the $d=4$ action with the magnetic Maxwell contraction.

# Local CPS, AdS, and null-boundary dictionary

- The vault's CPS presymplectic current corresponds to $\omega=d\chi$ on the gauge-PDE fiber.
- The finite boundary symplectic form after holographic renormalization corresponds to $\omega^{\mathcal R}=\mathcal R(\tilde\omega)$.
- The logarithmic obstruction or Weyl anomaly corresponds to $\omega^{\mathcal A}=\mathcal A(\tilde\omega)$ and its Hamiltonian.
- Radial Fefferman-Graham data correspond to $\Omega$, $\xi=Q\Omega$, and coefficients such as $\phi^{(0)}$, $\phi^{(2\ell)}$, or Maxwell $J_B^{(D-4)}$.
- Null-infinity Carroll data correspond to retarded time $u$, spatial frame $e^A$, and the finite tower of boundary fields generated by the recurrence.
- This is an asymptotic compactification boundary, not a finite collar boundary with imposed flux boundary conditions. It should not be directly identified with finite-boundary CPS without translating the boundary ideal.

# Verification log

## Checked

- The source structure, notation, and formulas above were checked against the extracted TeX source.
- The official arXiv metadata was checked by `id_list` API for publication time.

## Blocked

- No independent xAct check of $Q^2=0$, tangency to the compactification constraints, or the $\mathcal R/\mathcal A$ commutation with $d$ and $L_Q$ was completed.
- The AdS scalar recurrence and Maxwell anomaly actions were not independently derived from the compactified gauge PDE.
- The null-infinity scalar and Maxwell tower actions were not machine-verified; their source formulas depend on the paper's boundary ideal and recurrence calculus.

## Failed

- No independent computation failed. The only retrieval failure relevant to this note was the date-scoped official arXiv API replacement query for the daily overview, not the paper source itself.
