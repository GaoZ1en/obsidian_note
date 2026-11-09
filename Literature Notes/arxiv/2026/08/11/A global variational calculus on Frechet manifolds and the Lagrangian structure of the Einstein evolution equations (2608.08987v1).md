---
paper id: 2608.08987v1
title: A global variational calculus on Fréchet manifolds and the Lagrangian structure of the Einstein evolution equations
authors:
  - José Antonio Vallejo
publication date: 2026-08-10T01:12
abstract: |-
  The paper develops a variational calculus for curves on Fréchet manifolds and applies it to Einstein evolution on the manifold of Riemannian metrics of a compact manifold. It proves Euler-Lagrange equations, energy conservation, and an infinitesimal Noether theorem for weak pseudo-Riemannian mechanical systems without assuming that a symmetry vector field integrates to a flow. For the DeWitt Lagrangian, the momentum constraint is the zero level of the diffeomorphism Noether momentum map, while a pointwise transport identity propagates the Hamiltonian constraint. A Maupertuis-Jacobi theorem then converts constrained Einstein histories away from zero total scalar curvature into reparametrized unit-speed geodesics of a conformally rescaled DeWitt metric.
comments: "24 pages in amsart with 1in margins"
url: https://arxiv.org/abs/2608.08987v1
summary: "A rigorous Lagrangian route from Fréchet-space Euler-Lagrange theory to Noether propagation of the ADM momentum constraint and a pointwise transport law for the Hamiltonian density."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Why This Is High Priority

Reason codes: `T1-charge`, `T1-symmetry`, `T1-Wald-CPS`, `T1-symplectic`.

The paper gives a careful infinite-dimensional mechanics framework in which one half of the Einstein constraints is literally a Noether momentum-map condition and its propagation becomes a one-line conservation argument. It is especially useful because it states what is and is not being claimed: the “momentum map” is assembled from Lagrangian Noether functions, no canonical presymplectic identity is proved, and the results concern smooth solutions already known to exist rather than establishing a Fréchet-space evolution theory.

## Source Map

1. **Introduction.** States the analytic, Noether, Einstein-evolution, and Maupertuis--Jacobi results and fixes the scope of “global.”
2. **The manifold of Riemannian metrics and the DeWitt family.** Defines the Fréchet manifold $\mathcal M$, weak metrics $G^c$, the DeWitt value $G^-$, their Levi-Civita connections, gradients, and $G^c$-divergences.
3. **Variational calculus for curves.** Defines compactly supported variations, proves a Fréchet-valued DuBois--Reymond lemma through scalar testing, derives Euler--Lagrange equations, mechanical equations, and energy conservation.
4. **Symmetry and conservation laws.** Proves infinitesimal Noether without requiring a flow and constructs the equivariant diffeomorphism Noether momentum map.
5. **Einstein equations as a Lagrangian system.** Uses the DeWitt Lagrangian, identifies the constraints, proves momentum-constraint propagation, and derives the pointwise energy-density transport law.
6. **Maupertuis--Jacobi theorem.** Establishes the weak-metric conformal connection, the reparametrized geodesic correspondence, and its specialization to gravity.
7. **Homothetic solutions.** Checks Milne, de Sitter, and round $S^4$ through a scalar reduction.

There are no appendices. The proof dependencies are nearly linear: Sections 2--4 are prerequisites for Section 5, while Section 6 uses the mechanical theory of Section 3 and the Einstein identification of Section 5.

## Standing Assumptions and Conventions

- $M$ is compact, connected, smooth, without boundary, and $\dim M=n\ge2$.
- $I\subset\mathbb R$ is an open time interval; every curve and solution is smooth.
- $\mathcal M$ is the open convex cone of Riemannian metrics inside the Fréchet space $\Gamma^\infty(S^2T^*M)$, with its single global chart.
- Infinite-dimensional smoothness is in the convenient/Kriegl--Michor sense; for open subsets of Fréchet spaces it agrees with Michal--Bastiani smoothness.
- The spatial Laplacian is $\Delta_g=-\operatorname{tr}_g\nabla^g d=\delta_gd$.
- Divergence carries a minus sign:

$$\begin{align}
(\delta_gh)_j=-g^{ik}\nabla_i h_{kj}.
\end{align}$$

- Spacetime is restricted to constant lapse and zero shift:

$$\begin{align}
\widetilde g=\alpha,dt^2+g_t, \qquad \alpha\ne0.
\end{align}$$

  Lorentzian unit lapse is $\alpha=-1$.
- Einstein normalization is $\rho(\widetilde g)=\lambda\widetilde g$, so $\Lambda=(n-1)\lambda/2$.

“Global” means chart-independent formulation and use of the global cone chart on $\mathcal M$. It does not mean global-in-time solutions, a global quotient by diffeomorphisms, or completeness.

## The DeWitt Family on the Space of Metrics

For $h,k\in T_g\mathcal M$, split off the tracefree parts and define

$$\begin{align}
\langle h,k\rangle_g^c =\operatorname{tr}(g^{-1}h_0g^{-1}k_0) +c\,\operatorname{tr}_g(h)\operatorname{tr}_g(k),
\end{align}$$

$$\begin{align}
G_g^c(h,k)=\int_M\langle h,k\rangle_g^c\,\mu_g.
\end{align}$$

The distinguished DeWitt value is

$$\begin{align}
c^- =\frac{1-n}{n}, \qquad \langle h,k\rangle_g^- =\operatorname{tr}(g^{-1}hg^{-1}k) -\operatorname{tr}_g(h)\operatorname{tr}_g(k).
\end{align}$$

$G^c$ is weakly nondegenerate but does not identify every continuous covector with a tangent vector. Consequently, gradients are assumptions to be checked for the functionals used.

The paper uses the Christoffel sign convention

$$\begin{align}
\nabla_{\partial_t}h=h'-\Gamma_g(g',h),
\end{align}$$

so geodesics satisfy $g''=\Gamma_g(g',g')$. For $G^-$,

$$\begin{align}
\Gamma^-_g(h,h) =hg^{-1}h-\frac12\operatorname{tr}_g(h)h -\frac{1}{4(n-1)}\langle h,h\rangle_g^-g.
\end{align}$$

The shifted total scalar-curvature functional is

$$\begin{align}
S_\lambda(g)=\int_M\tau_\lambda(g)\mu_g, \qquad \tau_\lambda=\tau-\lambda(n-1),
\end{align}$$

with DeWitt gradient

$$\begin{align}
\operatorname{grad}^-S_\lambda =-\rho+\frac{\tau}{2(n-1)}g+\frac\lambda2g.
\end{align}$$

## The DeWitt Divergence and the ADM Momentum Constraint

The formal adjoint of the symmetrized derivative with respect to $G^c$ is

$$\begin{align}
\delta_g^ch =\delta_gh+\left(\frac1n-c\right)d(\operatorname{tr}_gh).
\end{align}$$

At the DeWitt value,

$$\begin{align}
\delta_g^-h =\delta_gh+d(\operatorname{tr}_gh) =\delta_g\!left(h-(\operatorname{tr}_gh)g\right).
\end{align}$$

Thus, for $k=g'$, $\delta_g^-k=0$ is the ADM momentum constraint up to the paper's overall divergence sign.

## Fréchet Variational Calculus

For a Lagrangian $L(g,k)$ on an open subset of a Fréchet space, compactly supported variations give

$$\begin{align}
\delta I =\int\left[D_1L(c,c')(A)+D_2L(c,c')(A')\right]dt.
\end{align}$$

The analytic issue is that $D_2L(c,c')$ is a curve in the continuous dual $E'$. The paper proves a DuBois--Reymond lemma for weak-$*$ continuous $E'$-valued curves by testing only $A(t)=\varphi(t)y$ and reducing to the scalar fundamental lemma. Banach--Steinhaus then supplies the joint continuity required to differentiate pairings $\gamma(t)(w(t))$.

The Euler--Lagrange equation is therefore the family of scalar identities

$$\begin{align}
\frac d{dt}\left[D_2L(c,c')(y)\right] =D_1L(c,c')(y), \qquad y\in E.
\end{align}$$

For a weak pseudo-Riemannian metric $G$ possessing a Levi-Civita connection and a potential $V$ possessing a $G$-gradient,

$$\begin{align}
\mathcal L(g,k)=\frac12G_g(k,k)-V(g)
\end{align}$$

has the intrinsic equation

$$\begin{align}
\nabla_{\partial_t}c'=-\operatorname{grad}V(c),
\end{align}$$

and energy

$$\begin{align}
\mathsf E_\mathcal L(g,k)=\frac12G_g(k,k)+V(g).
\end{align}$$

The proof of energy conservation uses the dual-pairing lemma rather than assuming a cotangent bundle identification.

## Infinitesimal Noether Theorem without Flows

A vector field on a Fréchet manifold need not generate a local flow. The paper therefore assumes only infinitesimal quasi-invariance:

$$\begin{align}
D_1L(g,k)(X(g))+D_2L(g,k)(DX(g)k)=dF(g)(k).
\end{align}$$

Then

$$\begin{align}
J_X(g,k)=D_2L(g,k)(X(g))
\end{align}$$

satisfies

$$\begin{align}
\frac d{dt}\left[J_X(c,c')-F(c)\right]=0
\end{align}$$

along every critical curve. This is the right theorem for the general Fréchet setting; when a genuine flow exists it reduces to ordinary Noether.

## Diffeomorphism Noether Momentum Map

$\operatorname{Diff}(M)$ acts on $\mathcal M$ by pullback. The infinitesimal generator is

$$\begin{align}
\zeta_X(g)=\mathcal L_Xg=2\delta_g^*(X^\flat).
\end{align}$$

For any $\operatorname{Diff}(M)$-invariant mechanical potential,

$$\begin{align}
\langle\mathbf J(g,k),X\rangle =G_g^c(k,\mathcal L_Xg) =2\int_M\langle X^\flat,\delta_g^ck\rangle_g\mu_g.
\end{align}$$

It follows that

$$\begin{align}
\mathbf J(g,k)=0 \Longleftrightarrow
\delta_g^ck=0 \Longleftrightarrow k\perp_{G^c}\operatorname{im}(2\delta_g^*).
\end{align}$$

The map is equivariant under pullback/pushforward. The terminology must be read precisely: this is an assembled family of Lagrangian Noether charges. The paper does not introduce a canonical two-form on $T\mathcal M$ or prove

$$\begin{align}
\iota_{\zeta_X}\omega=d\langle\mathbf J,X\rangle.
\end{align}$$

## Einstein Evolution as DeWitt Mechanics

The DeWitt Lagrangian is

$$\begin{align}
\mathcal L_{\alpha,\lambda}(g,k) =\frac12G_g^-(k,k)-2\alpha S_\lambda(g).
\end{align}$$

Its Euler--Lagrange equation is

$$\begin{align}
g''=\Gamma_g^-(g',g')-2\alpha\operatorname{grad}^-S_\lambda(g).
\end{align}$$

Together with the constraints

$$\begin{align}
\delta_g^-g'=0, \qquad \mathcal H_\lambda(g,g')=0,
\end{align}$$

where

$$\begin{align}
\mathcal H_\lambda(g,k) =\frac12\langle k,k\rangle_g^-+2\alpha\tau_\lambda(g),
\end{align}$$

this is equivalent, by the cited Gil-Medrano theorem, to $\rho(\widetilde g)=\lambda\widetilde g$ for $\widetilde g=\alpha dt^2+g_t$.

The energy is only the integral

$$\begin{align}
\mathsf E_{\mathcal L_{\alpha,\lambda}} =\int_M\mathcal H_\lambda\mu_g.
\end{align}$$

Therefore the pointwise Hamiltonian constraint is stronger than vanishing Noether energy. The paper explicitly does not call $\mathcal H_\lambda$ a Noether charge density.

## Propagation of the Constraints

### Momentum Constraint

For every fixed $X\in\mathfrak X(M)$, Noether gives

$$\begin{align}
t\longmapsto\langle\mathbf J(g_t,g_t'),X\rangle
\end{align}$$

constant. If $\delta^-g'=0$ at one time, all pairings vanish there and hence at every time. Weak nondegeneracy then gives

$$\begin{align}
\delta_{g_t}^-g_t'=0
\end{align}$$

throughout the smooth evolution. No PDE uniqueness theorem is used in this argument.

### Hamiltonian-Density Transport

Along every smooth solution of the evolution equation, without imposing either constraint,

$$\begin{align}
\partial_t\mathcal H_\lambda =-\frac12\operatorname{tr}_g(k)\mathcal H_\lambda +2\alpha\delta_g(\delta_g^-k),
\end{align}$$

or, using $\partial_t\mu_g=\tfrac12\operatorname{tr}_g(k)\mu_g$,

$$\begin{align}
\partial_t(\mathcal H_\lambda\mu_g) =2\alpha\delta_g(\delta_g^-k)\mu_g.
\end{align}$$

Once the momentum constraint is propagated, the right-hand side vanishes pointwise. Hence $\mathcal H_\lambda\mu_g$ is fixed in time, and initial pointwise vanishing propagates the Hamiltonian constraint. Integrating over closed $M$ recovers ordinary energy conservation because the divergence term integrates to zero.

The “pointwise” statement refers to points of the fixed underlying manifold in the chosen zero-shift product description. It is not by itself a construction of diffeomorphism-invariant local gravitational observables.

## Maupertuis--Jacobi Correspondence

For a general mechanical system of energy $e$, define on $\{V\ne e\}$

$$\begin{align}
\widetilde G=2(e-V)G.
\end{align}$$

If $f=2(e-V)$ admits a gradient and never vanishes, the conformal weak metric has Levi-Civita connection

$$\begin{align}
\widetilde\Gamma_g(h,k) =\Gamma_g(h,k)-\frac1{2f} \left[df(h)k+df(k)h-G(h,k)\operatorname{grad}f\right].
\end{align}$$

An energy-$e$ extremal becomes a unit-speed $\widetilde G$-geodesic under

$$\begin{align}
\frac{ds}{dt}=2(e-V(c(t))).
\end{align}$$

The key identity is

$$\begin{align}
\widetilde\nabla_{\partial_s}\gamma' =\frac1{f^2}\nabla_{\partial_t}c' +\frac{G(c',c')}{f^3}\operatorname{grad}V.
\end{align}$$

Using $G(c',c')=f$ and the mechanical equation makes the right-hand side vanish.

For constrained Einstein evolution $e=0$ and $V=2\alpha S_\lambda$, so

$$\begin{align}
\mathcal G=-4\alpha S_\lambda(g)G^-.
\end{align}$$

On any interval where $S_\lambda\ne0$,

$$\begin{align}
\frac{ds}{dt}=-4\alpha S_\lambda(g_t)
\end{align}$$

turns the history into a unit-speed $\mathcal G$-geodesic. The converse yields a zero-total-energy DeWitt extremal, but an Einstein evolution only after both pointwise constraints are imposed at one mechanical time and propagated.

The construction degenerates on $S_\lambda=0$. Because $G^-$ is indefinite, this locus includes but is not limited to moments with $g'=0$.

## Homothetic Check Models

For $g_t=c(t)g_0$ with $g_0$ Einstein, $\rho(g_0)=\tau_0g_0/n$, the momentum constraint is automatic. The remaining system becomes

$$\begin{align}
c''=\frac{4-n}{4}\frac{(c')^2}{c} +\frac{\alpha(n-2)\tau_0}{n(n-1)}-\alpha\lambda c,
\end{align}$$

$$\begin{align}
(c')^2=Ac-Bc^2, \qquad A=\frac{4\alpha\tau_0}{n(n-1)}, \qquad B=\frac{4\alpha\lambda}{n}.
\end{align}$$

On the constraint surface the nonlinear equation reduces to

$$\begin{align}
c''=\frac A2-Bc.
\end{align}$$

The three examples are $c=t^2$ for Milne, $c=(3/\lambda)\cosh^2(\sqrt{\lambda/3},t)$ for Lorentzian de Sitter, and $c=(3/\lambda)\cos^2(\sqrt{\lambda/3},t)$ for round $S^4$.

## Dependency Map

$$
\begin{gathered}
\text{weak-* DuBois--Reymond}
\Longrightarrow \text{Fréchet Euler--Lagrange}
\Longrightarrow \text{energy and infinitesimal Noether},\\
\operatorname{Diff}(M)\text{ invariance}
\Longrightarrow \mathbf J
\Longrightarrow \delta^-g'=0\text{ propagates},\\
\text{DeWitt evolution}+D\tau
\Longrightarrow \partial_t(\mathcal H\mu)
\Longrightarrow \mathcal H=0\text{ propagates},\\
\text{fixed energy}+S_\lambda\ne0
\Longrightarrow \text{conformal DeWitt geodesic}.
\end{gathered}
$$

## Translation into the Vault's CPS Language

1. The Noether pairing $G^-(k,\mathcal L_Xg)$ is the Lagrangian/configuration-space analogue of a diffeomorphism generator. It should not be silently identified with an Iyer--Wald surface charge because $M$ is closed and no spacetime presymplectic current or codimension-two surface is used.
2. The momentum constraint is genuinely a zero-momentum-map condition. The Hamiltonian constraint is different: only its integral is the conserved Noether energy, while pointwise vanishing follows from an additional transport identity plus the momentum constraint.
3. Compactness and absence of spatial boundary are essential. With a boundary, the adjointness relations acquire surface terms; the Noether generator, momentum constraint, and propagation proof would require boundary conditions or boundary charges.
4. Constant lapse and zero shift fix the slicing strongly. Extending the argument to arbitrary lapse/shift would make local time-reparametrization symmetry and the constraint algebra more visible but requires a different configuration-space setup.

## Verification Log

### Checked

- **PDF/source agreement.** Rendered pages 1, 10, 13, 16, 19, and 21. The table of contents, Euler--Lagrange proof, Noether momentum pairing, transport calculation, Jacobi theorem, and homothetic reduction are visually consistent with the TeX source.
- **DeWitt divergence identity.** In a fresh xAct kernel on a three-manifold with a metric-compatible connection and symmetric $k_{ab}$, canonicalized

$$\begin{align}
-\nabla^b\!left(k_{ba}-(\operatorname{tr}k)g_{ba}\right) -\left[-\nabla^bk_{ba}+\nabla_a(\operatorname{tr}k)\right]
\end{align}$$

  to zero. This checks the tensor identity behind the momentum-constraint convention.
- **Transport algebra.** Mathematica independently simplified the trace algebra from $P=g^{-1}k$ and the evolution equation. The residual against

$$\begin{align}
\partial_t\langle k,k\rangle^- =-\frac12(\operatorname{tr}P)\langle k,k\rangle^- +4\alpha\langle\rho,k\rangle -2\alpha\tau\operatorname{tr}P +2(n-1)\alpha\lambda\operatorname{tr}P
\end{align}$$

  vanished for symbolic $n>1$. This checks the algebraic core of the transport proof; the scalar-curvature variation formula remains an input.
- **Homothetic reduction.** Mathematica substituted $(c')^2=Ac-Bc^2$ into the nonlinear evolution and obtained $c''=A/2-Bc$ with zero residual for symbolic $n>1$.
- **Examples.** The Milne, de Sitter, and round-sphere functions each satisfy their stated first-order constraint with zero Mathematica residual.

### Source-Derived

- The general Fréchet analytic lemmas and their functional-analytic hypotheses were proof-read but not independently formalized in a theorem prover.
- The equivalence between the constrained DeWitt evolution and $\rho(\widetilde g)=\lambda\widetilde g$ is imported from Gil-Medrano's theorem and was not rederived by an independent spacetime curvature computation.
- The conformal weak-metric and Maupertuis--Jacobi proofs were reconstructed line by line but not machine-verified beyond their scalar/algebraic substitutions.

### Blocked

- A canonical CPS momentum-map identity is not checkable because the paper deliberately does not define a presymplectic form on $T\mathcal M$.
- Boundary and corner generalizations are blocked by the standing assumption that $M$ is closed; the integrations by parts used for $\delta_g^c$ would acquire unspecified boundary terms.
- Existence, uniqueness, completeness, and global-in-time behavior are not established. The evolution map loses two spatial derivatives through $\rho(g)$, so ordinary Banach-space Picard--Lindelöf does not apply; the identities presuppose smooth solutions supplied by gauge-fixed Einstein Cauchy theory.

### Failed

- None. No contradiction was found under the stated assumptions.

## Bottom Line

Correct under the stated smooth, compact-without-boundary, constant-lapse, zero-shift assumptions. The paper proves a strong and reusable constraint-propagation mechanism, but it does not construct Wald surface charges, a covariant presymplectic reduction, or a well-posed Fréchet geodesic flow.
