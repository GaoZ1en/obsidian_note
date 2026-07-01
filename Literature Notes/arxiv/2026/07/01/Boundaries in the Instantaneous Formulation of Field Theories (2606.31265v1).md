---
paper id: 2606.31265v1
title: Boundaries in the Instantaneous Formulation of Field Theories
authors:
  - Silvester G.A. Borsboom
publication date: 2026-06-30T07:41:19
abstract: |-
  The paper studies boundary conditions in GiMmsy's covariant and instantaneous formulations of classical field theory. It shows that fixed Dirichlet boundary data give an instantaneous tangent-bundle state space, while imposing only boundary-vanishing velocities gives a sector structure whose Legendre transform produces a leafwise canonical Poisson phase space. Applied to Yang-Mills theory, sector-moving gauge transformations are not Hamiltonian in this phase space, leading to a boundary symmetry group defined as Hamiltonian boundary-preserving transformations modulo trivial ones.
comments: "14 pages"
url: https://arxiv.org/abs/2606.31265v1
summary: "A precise instantaneous/Hamiltonian boundary formalism explains when boundary gauge transformations have flux charges and when they instead move between Poisson leaves."
tags: []
---

Back to [[2026_07_01_overview]].

# Boundary conditions before charges

The paper is about the Hamiltonian side of boundary field theory, not directly about the covariant phase space formalism. Its value for the vault is that it gives a clean distinction between:

- fixed boundary data, which give ordinary tangent-bundle instantaneous state spaces;
- velocity-only boundary restrictions, which give a union of boundary sectors;
- boundary-preserving gauge transformations, which may be Hamiltonian;
- sector-moving gauge transformations, which are Poisson automorphisms but not Hamiltonian in the chosen phase space.

This is directly relevant to finite-boundary and edge-mode notes because it identifies when a missing boundary momentum is a structural feature of the chosen phase space, rather than a failed charge calculation.

# GiMmsy 3+1 split and the Legendre square

Let $M$ be spacetime, $Y\to M$ the field bundle, and $Q=\Gamma(Y)$ the covariant configuration space. A slicing gives Cauchy surfaces $\Sigma_t$ and compatible generators $(\zeta_M,\zeta_Y)$. A field history $\varphi$ is decomposed into

$$\begin{align}
\varphi_t=\varphi|_{\Sigma_t}, \qquad \dot\varphi_t= \left(T\varphi\circ\zeta_M-\zeta_Y\circ\varphi\right)|_{\Sigma_t}.
\end{align}$$

The jet decomposition map is

$$\begin{align}
\beta_\zeta(j^1\varphi(x)) =\left(j^1\varphi_t(x),\dot\varphi_t(x)\right),
\end{align}$$

and Proposition 2.1 identifies the restricted holonomic jets with the instantaneous tangent bundle,

$$\begin{align}
(j^1Q)_t\simeq TQ_t.
\end{align}$$

The instantaneous Lagrangian is obtained by spatial integration,

$$\begin{align}
\mathcal L_{t,\zeta}(\varphi_t,\dot\varphi_t) =\int_{\Sigma_t}\mathfrak L_{t,\zeta}(j^1\varphi_t,\dot\varphi_t),
\end{align}$$

and the instantaneous Legendre transform is the fiber derivative

$$\begin{align}
\left\langle \mathbb F\mathcal L_{t,\zeta}(q,v_q),w_q \right\rangle = \left.\frac{d}{d\epsilon}\right|_{\epsilon=0} \mathcal L_{t,\zeta}(q,v_q+\epsilon w_q).
\end{align}$$

The point of the paper is that boundary conditions can change the domain of this Legendre transform before any constraint reduction is performed.

# Fixed spatial Dirichlet data

A covariant boundary condition is a subspace

$$\begin{align}
B\subset J^1Y|_{\partial M}.
\end{align}$$

With a boundary-compatible slicing, it induces

$$\begin{align}
B_t^\zeta:=\beta_\zeta^\partial(B|_{\partial\Sigma_t}),
\end{align}$$

so that

$$\begin{align}
j^1\varphi|_{\partial\Sigma_t}\in B|_{\partial\Sigma_t} \quad\Longleftrightarrow\quad (j^1\varphi_t,\dot\varphi_t)|_{\partial\Sigma_t}\in B_t^\zeta .
\end{align}$$

The instantaneous boundary restriction is

$$\begin{align}
r_t:Q_t=\Gamma(Y_t)\to\Gamma(Y_t|_{\partial\Sigma_t}), \qquad r_t(q)=q|_{\partial\Sigma_t}.
\end{align}$$

For a fixed boundary value $b_t$, define

$$\begin{align}
Q_t^{b_t}=r_t^{-1}(b_t).
\end{align}$$

The tangent space to this sector is

$$\begin{align}
T_qQ_t^{b_t} =\ker(T_qr_t) =\{v\in T_qQ_t:v|_{\partial\Sigma_t}=0\}.
\end{align}$$

If $b_t$ is constant under the slicing flow, then a field history has constant boundary value exactly when

$$\begin{align}
\dot\varphi_t|_{\partial\Sigma_t}=0.
\end{align}$$

Proposition 3.5 then says fixed spatial Dirichlet data give an ordinary instantaneous state space $TQ_t^{b_t}$.

# Velocity-only boundary conditions and sector decomposition

The more interesting case is when the boundary condition only says that the velocity vanishes at the boundary, without specifying the boundary value in advance. Then every admissible history has some constant boundary value, but that value labels a sector. The state space is therefore not a single tangent bundle:

$$\begin{align}
D_t =\bigsqcup_{b_t\in\Gamma(Y_t|_{\partial\Sigma_t})} TQ_t^{b_t}.
\end{align}$$

Suppressing $t$, the global notation is

$$\begin{align}
D=\ker(Tr)=\bigsqcup_{b\in Q^\partial}TQ^b.
\end{align}$$

This is a vector bundle over $Q$, but not the tangent bundle $TQ$. Its dual satisfies

$$\begin{align}
D^*|_{Q^b}\cong T^*Q^b, \qquad D^*=\bigsqcup_{b\in Q^\partial}T^*Q^b.
\end{align}$$

The important physical statement is that there is no boundary-conjugate momentum in this phase space, because boundary velocities were removed from $D$.

# Legendre transform on the sectored velocity bundle

The Legendre transform on $D$ is defined by

$$\begin{align}
\left\langle \mathbb F_D\mathcal L_D(v_q),w_q \right\rangle = \left.\frac{d}{d\epsilon}\right|_{\epsilon=0} \mathcal L_D(v_q+\epsilon w_q), \qquad v_q,w_q\in D_q.
\end{align}$$

Proposition 4.3 states that this definition restricts on each fixed sector to the ordinary Legendre transform on $TQ^b$. Thus the phase space is leafwise symplectic:

$$\begin{align}
\mathcal P=\bigsqcup_{b\in Q^\partial}\mathcal P_b, \qquad \mathcal P_b\subset T^*Q^b.
\end{align}$$

The Poisson bracket is defined by restricting to leaves,

$$\begin{align}
\{F,G\}_{D^*}|_{T^*Q^b} = \{F|_{T^*Q^b},G|_{T^*Q^b}\}_{T^*Q^b}.
\end{align}$$

Hamiltonian vector fields for this Poisson structure are tangent to the leaves. This is the structural reason sector-moving transformations cannot be Hamiltonian unless the phase space is enlarged.

# Yang-Mills at spatial infinity

In temporal gauge on a compactified Cauchy surface, the Yang-Mills instantaneous Lagrangian is

$$\begin{align}
\mathcal L(A,\alpha_A) =\frac12\|\alpha_A\|^2-\frac12\|F(A)\|^2,
\end{align}$$

with finite-energy boundary condition

$$\begin{align}
\alpha_A|_{\partial\Sigma}=0.
\end{align}$$

Therefore

$$\begin{align}
D_{\rm YM} =\{(A,\alpha_A)\in TQ:\alpha_A|_{\partial\Sigma}=0\} =\bigsqcup_{b\in Q^\partial}TQ^b, \qquad Q^\partial=\operatorname{Conn}(P|_{\partial\Sigma}).
\end{align}$$

The Legendre transform gives

$$\begin{align}
\left\langle \mathbb F\mathcal L_D(A,\alpha_A),\omega \right\rangle = \langle\alpha_A,\omega\rangle_{L^2} = \int_\Sigma\operatorname{Tr}(\alpha_A\wedge *\omega), \qquad \omega\in T_AQ^b,
\end{align}$$

and

$$\begin{align}
\mathbb F\mathcal L_D(A,\alpha_A)=(A,E), \qquad E=*\alpha_A.
\end{align}$$

The electric field acts only on variations that vanish at the boundary, even though the boundary electric flux itself can be nonzero.

# Gauge transformations, Gauss law, and flux momentum

Gauge transformations act by

$$\begin{align}
A^g=g^{-1}Ag+g^{-1}dg, \qquad \alpha_A^g=g^{-1}\alpha_Ag, \qquad E^g=g^{-1}Eg.
\end{align}$$

They move boundary sectors according to

$$\begin{align}
g\cdot TQ^b=TQ^{b^{g_\partial}}, \qquad g\cdot\mathcal P_b=\mathcal P_{b^{g_\partial}}.
\end{align}$$

Thus the full gauge group acts by Poisson automorphisms of $\mathcal P_{\rm YM}$, but not necessarily by leaf-preserving maps.

The boundary-vanishing identity component $\mathcal G_0^\infty$ has a Hamiltonian action on every leaf with momentum map

$$\begin{align}
J(A,E)=D_AE,
\end{align}$$

and constraint surface

$$\begin{align}
\mathcal C=\bigsqcup_{b\in Q^\partial}\mathcal C_b, \qquad \mathcal C_b=\{(A,E)\in\mathcal P_b:D_AE=0\}.
\end{align}$$

For a fixed sector, the stabilizer is

$$\begin{align}
\mathcal G_b=\{g\in\mathcal G:b^{g_\partial}=b\}, \qquad \mathfrak g_b=\{\xi\in\operatorname{Lie}(\mathcal G):D_b\xi_\partial=0\}.
\end{align}$$

For $\xi\in\mathfrak g_b$, integration by parts gives the sector-preserving boundary momentum

$$\begin{align}
\langle J_b(A,E),\xi\rangle =-\int_\Sigma\operatorname{Tr}(E\wedge D_A\xi) =\int_\Sigma\operatorname{Tr}((D_AE)\xi) -\int_{\partial\Sigma}\operatorname{Tr}(E\xi_\partial).
\end{align}$$

On the Gauss constraint surface,

$$\begin{align}
J_b^\xi=-\int_{\partial\Sigma}\operatorname{Tr}(E\xi_\partial).
\end{align}$$

If $D_b\xi_\partial\neq0$, the transformation moves the boundary connection and hence moves the Poisson leaf. It has no Hamiltonian function in this phase space because Hamiltonian vector fields are leaf-tangent.

# Physical boundary gauge group

The paper proposes defining the physical boundary gauge group as

$$\begin{align}
\mathcal G_{\rm phys} =\mathcal G_{\rm Ham}/\mathcal G_{\rm triv},
\end{align}$$

where $\mathcal G_{\rm Ham}$ consists of boundary-preserving Hamiltonian transformations and $\mathcal G_{\rm triv}$ are the transformations treated as gauge-trivial.

For the total all-sector phase space, the connected Hamiltonian quotient is

$$\begin{align}
(\mathcal G_{\rm Ham}^{\rm tot})_0/\mathcal G_0^\infty
\cong Z(G)_0.
\end{align}$$

For electromagnetism this gives the expected global gauge group:

$$\begin{align}
\mathcal G_{\rm phys}\cong U(1).
\end{align}$$

For semisimple non-Abelian $G$, the center condition leaves no nontrivial connected physical gauge group on the unrestricted all-sector phase space. If one restricts to $\operatorname{Ad}(G)$-invariant boundary configurations, the paper recovers $\mathcal G_{\rm phys}\cong G$, but notes that this restriction is strong.

# Translation to CPS and edge-mode language

- $b$ is fixed boundary configuration data, not fixed electric flux.
- $D=\ker(Tr)$ means boundary velocities are removed; the missing boundary momentum is a choice of phase space.
- $\mathcal P_b$ are the symplectic leaves. The total $\mathcal P$ is Poisson but not globally symplectic.
- Sector-preserving boundary gauge transformations have electric-flux momentum. Sector-moving transformations do not have Hamiltonian charges in this phase space.
- The paper explicitly leaves the rigorous relation to CPS open. It is therefore a Hamiltonian/instantaneous input for later CPS comparison, not a finished CPS theorem.
- Edge modes would enlarge the phase space with boundary-conjugate variables; the paper presents this as the route by which sector-moving transformations may become Hamiltonian.
- Away from temporal gauge, finite energy constrains $u=\dot A-D_AA_0$ rather than $\dot A$, producing affine admissible velocities. The present vector-bundle Legendre transform must then be generalized.

# Verification log

## Checked

- Mathematica checked the formal noncommutative Yang-Mills covariance identity

$$\begin{align}
D_{A^g}E^g=g^{-1}(D_AE)g
\end{align}$$

  using $d(g^{-1})=-g^{-1}dg\,g^{-1}$ and $D_AE=dE+[A,E]$.
- The sector logic

$$\begin{align}
T_qQ^b=\ker(T_qr)
\end{align}$$

  was checked directly from the definition $Q^b=r^{-1}(b)$ under the source assumption that $r$ is a smooth submersion.

## Blocked

- The smoothness, split-submersion, and closed-image hypotheses for infinite-dimensional section spaces are source assumptions, not independently checked here.
- The falloff conditions imported from the earlier Yang-Mills spatial-infinity paper were not independently rederived.
- The holonomy/stabilizer and global topology statements for gauge groups were not independently checked.
- The affine non-temporal-gauge Legendre transform and the CPS/null-boundary extension are explicitly open problems in the source.

## Failed

- No independent check failed in the algebraic identities attempted here.
