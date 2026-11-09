---
paper id: 2607.28420v1
title: Covariant variation and its applications
authors:
  - Wen-Bin Liu
  - Jiang Long
publication date: 2026-07-30T16:01
abstract: |-
  The paper defines a metric-compatible variation of tensor fields by adding a metric compensation to the Lie derivative. Its non-closure is an orthogonal fiber rotation; on four-dimensional null hypersurfaces this becomes a helicity rotation, while in higher dimensions it is an SO(d-2) polarization rotation. The construction is related to the metric and Kosmann Lie derivatives and is tested against radiative Maxwell and p-form symplectic structures.
comments: "46 pages"
url: https://arxiv.org/abs/2607.28420v1
summary: "The transferable result is a precise distinction between tensor covariant variation and the half-density action required to be Hamiltonian on fixed-metric null radiative phase space."
tags: []
---

Back to [[2026_07_31_overview]].

The paper is useful because it isolates a subtlety that often gets hidden inside a generalized-BMS or null-flux calculation: compensating the variation of a background metric defines a natural horizontal lift on tensor bundles, but the transformation that preserves the actual radiative symplectic form may differ by a density-weight term.

## Superrotation Flux as the Origin of the Compensated Variation

For radiative Maxwell data $\mathcal A_A(u,\Omega)$ at future null infinity, the superrotation flux acts as

$$\begin{align}
[\mathrm i\mathcal F_{\mathcal Y},\mathcal A_A] = \frac12u\,\nabla\!\cdot\!\mathcal Y\,\dot{\mathcal A}_A +\mathcal Y^B\nabla_B\mathcal A_A +\mathcal A^B\nabla_{[A}\mathcal Y_{B]} +\frac12\mathcal A_A\nabla\!\cdot\!\mathcal Y. \tag{2.11}
\end{align}$$

The first term is the $u$-rescaling in the asymptotic vector field. The remaining angular action is not the ordinary tensor Lie derivative. The mismatch is half of the tracefree celestial-metric variation

$$\begin{align}
\Theta_{AB}(\mathcal Y) = \nabla_A\mathcal Y_B+\nabla_B\mathcal Y_A -\gamma_{AB}\nabla\!\cdot\!\mathcal Y, \tag{2.14}
\end{align}$$

so the paper defines

$$\begin{align}
\Delta_{\mathcal Y}\mathcal A_A = \delta_{\mathcal Y}\mathcal A_A -\frac12\Theta_{AB}(\mathcal Y)\mathcal A^B. \tag{2.15}
\end{align}$$

This is the boundary motivation for the bulk operator.

## Metric-Horizontal Lift on Ordinary Tensors

Let $\rho$ be the slotwise representation of $\operatorname{End}(TM)$ on a tensor bundle. With

$$\begin{align}
S_X =\frac12g^{-1}\mathcal L_Xg =\nabla_{(\mu}X_{\nu)}, \qquad A_X=\nabla_{[\mu}X_{\nu]},
\end{align}$$

the covariant variation is

$$\begin{align}
\Delta_X =\mathcal L_X+\rho(S_X) =\nabla_X+\rho(A_X). \tag{2.33, 2.38}
\end{align}$$

It obeys

$$\begin{align}
\Delta_Xg=0,
\end{align}$$

and therefore preserves contractions, raising/lowering, the volume form, fixed Young symmetries, and Hodge duality. In geometric terms it is the metric Lie derivative induced by a metric-dependent lift to the orthonormal-frame bundle. The same lift gives the Kosmann derivative on Lorentz tensors and spinors; combining its spacetime and Lorentz actions gives the paper's “total covariant variation” for mixed-index fields.

This operator is not a connection in its vector-field argument:

$$\begin{align}
\Delta_{fX}T =f\Delta_XT+\rho(B_{f,X})T, \qquad B_{f,X}=(\nabla_{[\mu}f)X_{\nu]}.
\end{align}$$

It depends on the first jet of $X$, not only on the tangent vector at a point.

## Curvature of the Lift

The commutator fails to close by

$$\begin{align}
\mathcal A_{X,Y}T := [\Delta_X,\Delta_Y]T-\Delta_{[X,Y]}T =\rho\!\left(-[S_X,S_Y]\right)T. \tag{2.43}
\end{align}$$

Equivalently, on a vector,

$$\begin{align}
(\mathcal A_{X,Y})^\mu{}_\nu = \frac14\mathcal L_Xg^{\mu\rho}\mathcal L_Yg_{\rho\nu} -(X\leftrightarrow Y).
\end{align}$$

The commutator of two metric-symmetric endomorphisms is metric-antisymmetric, hence the “anomaly” is an infinitesimal orthogonal rotation. It vanishes if either vector is conformal Killing. This is a classical curvature of the lift, not a quantum anomaly.

The operator Jacobi identity becomes

$$\begin{align}
\sum_{\mathrm{cyclic}} \left( \Delta_X\mathcal A_{Y,Z} +\mathcal A_{X,[Y,Z]} \right)=0.
\end{align}$$

This is the appropriate Bianchi identity for the lift curvature.

## From an Orthogonal Rotation to Helicity

On a null hypersurface with a two-dimensional Riemannian cut $(N,q)$, every antisymmetric endomorphism is proportional to the area form. Hence

$$\begin{align}
\mathcal A_{\mathcal Y,\mathcal Z}\mathcal A_A =-o_q(\mathcal Y,\mathcal Z) \epsilon_{AB}\mathcal A^B,
\end{align}$$

where

$$\begin{align}
o_q(\mathcal Y,\mathcal Z) =\frac12\epsilon^{AB} [S^q_{\mathcal Y},S^q_{\mathcal Z}]_{AB}.
\end{align}$$

For the tracefree celestial variation,

$$\begin{align}
o(\mathcal Y,\mathcal Z) = \frac14\epsilon^{AB} \Theta_{AC}(\mathcal Y)\Theta^C{}_B(\mathcal Z). \tag{2.20}
\end{align}$$

The Maxwell helicity flux

$$\begin{align}
\mathcal O_h = \int du\,d\Omega\, h\,\dot{\mathcal A}_A\mathcal A_B\epsilon^{BA} \tag{2.21}
\end{align}$$

generates this rotation:

$$\begin{align}
[\mathrm i\mathcal O_h,\mathcal A_A] =-h\epsilon_{AB}\mathcal A^B. \tag{2.25}
\end{align}$$

The already-known null-infinity algebra

$$\begin{align}
[\mathcal F_{\mathcal Y},\mathcal F_{\mathcal Z}] = \mathrm i\mathcal F_{[\mathcal Y,\mathcal Z]} +\mathrm i\mathcal O_{o(\mathcal Y,\mathcal Z)} \tag{2.19}
\end{align}$$

is thereby reinterpreted as the Hamiltonian realization of the lift curvature:

$$\begin{align}
\text{metric-changing action} \to \text{horizontal compensation} \to
-[S_{\mathcal Y},S_{\mathcal Z}] \to \mathfrak{so}(2)\text{ rotation} \to \text{helicity generator}.
\end{align}$$

The paper explains this mechanism; it does not rederive the full quantum flux algebra.

## Tensor Action Versus Half-Density Action

The intrinsic tensor covariant variation on the cut is

$$\begin{align}
\bar\Delta_{\mathcal Y}\mathcal A_A = \mathcal Y^B\nabla_B\mathcal A_A +\mathcal A^B\nabla_{[A}\mathcal Y_{B]}. \tag{2.48}
\end{align}$$

For the $L^2$ pairing

$$\begin{align}
(B,C)_q=\int d\Omega\,B^AC_A,
\end{align}$$

its formal adjoint is

$$\begin{align}
\bar\Delta_{\mathcal Y}^{\dagger} =-\bar\Delta_{\mathcal Y} -\psi_{\mathcal Y}, \qquad \psi_{\mathcal Y}:=\nabla_A\mathcal Y^A. \tag{2.52--2.53}
\end{align}$$

The fixed-$q$ radiative symplectic form is

$$\begin{align}
\Omega = \int du\, \delta\mathcal A_A\wedge \partial_u\delta\mathcal A^A. \tag{2.55}
\end{align}$$

An $u$-independent real angular operator $G$ preserves $\Omega$ precisely when $G^\dagger=-G$. Thus $\bar\Delta_{\mathcal Y}$ is symplectic only when

$$\begin{align}
\nabla_A\mathcal Y^A=0.
\end{align}$$

For a general $\mathcal Y$, the skew-adjoint operator is

$$\begin{align}
\widetilde\Delta_{\mathcal Y} = \bar\Delta_{\mathcal Y} +\frac12\psi_{\mathcal Y}. \tag{2.50}
\end{align}$$

This has a geometric interpretation:

$$\begin{align}
\widehat{\mathcal A}_A =(\sqrt q)^{1/2}\mathcal A_A \tag{2.57--2.60}
\end{align}$$

is a one-form density of weight $1/2$, and $\widetilde\Delta$ is its covariant variation. The scalar density term does not alter the curvature anomaly.

This is the note's main transferable formula. On a fixed-background radiative phase space, “metric-compatible tensor action” and “Hamiltonian action” are different requirements. The latter selects the half-density correction.

## Finite Gaussian-Null Horizon

The finite-horizon metric is

$$\begin{align}
ds^2 =-2\kappa\rho\,du^2-2du\,d\rho +2\lambda_A\rho\,du\,dx^A +(q_{AB}+\lambda_{AB}\rho)dx^Adx^B +O(\rho^2). \tag{5.5}
\end{align}$$

The analysis assumes

$$\begin{align}
\partial_uq_{AB}=0,\qquad A_\rho=0,\qquad A_u|_{\rho=0}=0,
\end{align}$$

the leading Maxwell constraint, controlled $u$-endpoints, and a vanishing soft integration function for the displayed hard flux.

The horizon phase space is

$$\begin{align}
\Omega_{\mathcal H} = \int du\,d\Omega\, \delta\mathcal A^A\wedge\delta\dot{\mathcal A}_A, \tag{5.12}
\end{align}$$

with canonical bracket

$$\begin{align}
[\mathcal A_A,\dot{\mathcal A}_B] =\frac{\mathrm i}{2}q_{AB} \delta(u-u')\delta(\Omega-\Omega'). \tag{5.13}
\end{align}$$

The stress-tensor angular flux generates

$$\begin{align}
[\mathrm i\mathcal F_{\mathcal Y},\mathcal A_A] = \mathcal Y^B\nabla_B\mathcal A_A +\frac12\nabla\!\cdot\!\mathcal Y\,\mathcal A_A +\mathcal A^B\nabla_{[A}\mathcal Y_{B]}. \tag{5.19b}
\end{align}$$

At finite radius, however,

$$\begin{align}
\mathcal L_\xi g_{AB}|_{\mathcal H} =\mathcal L_{\mathcal Y}q_{AB}, \tag{5.28}
\end{align}$$

with no celestial Weyl subtraction, and

$$\begin{align}
\nabla_\mu\xi^\mu|_{\mathcal H} =\nabla_A\mathcal Y^A. \tag{5.27}
\end{align}$$

No choice of the normal component cancels the divergence. Consequently, the bulk tensor covariant variation agrees with the flux action only on the area-preserving subalgebra

$$\begin{align}
\nabla_A\mathcal Y^A=0.
\end{align}$$

There the curvature is again

$$\begin{align}
\mathcal A_{\mathcal Y,\mathcal Z}\mathcal A_A =-o_q(\mathcal Y,\mathcal Z) \epsilon_{AB}\mathcal A^B, \tag{5.31}
\end{align}$$

and the Hamiltonian

$$\begin{align}
\mathcal O_h = \int du\,d\Omega\, h\,\epsilon_{AB}\mathcal A^A\dot{\mathcal A}^B \tag{5.33}
\end{align}$$

generates the rotation. The paper infers a possible noncentral extension of the finite-horizon flux algebra but does not calculate the complete bracket $[\mathcal F_{\mathcal Y},\mathcal F_{\mathcal Z}]$.

## Higher-Dimensional Polarization Rotation and $p$-Forms

For transverse dimension $m=d-2$, the anomaly is

$$\begin{align}
o_{AB}(\mathcal Y,\mathcal Z) = \frac14 \left[ \Theta_{AC}(\mathcal Y)\Theta^C{}_B(\mathcal Z) -(\mathcal Y\leftrightarrow\mathcal Z) \right]
\in\mathfrak{so}(m).
\end{align}$$

It is therefore a little-group rotation, not generally a single helicity scalar.

For a free nonchiral $p$-form in $d=2p+2$,

$$\begin{align}
S[B] =-\frac1{2(p+1)!} \int\sqrt{-g}\,H^2, \tag{5.57}
\end{align}$$

the paper gives the CPS current

$$\begin{align}
\omega^\mu(\delta_1,\delta_2) =-\frac1{p!} \left( \delta_1H^{\mu I}\delta_2B_I -\delta_2H^{\mu I}\delta_1B_I \right), \tag{5.59}
\end{align}$$

and radiative symplectic form

$$\begin{align}
\Omega_p =\frac1{p!} \int du\,d\Omega\, \delta\mathcal B^I\wedge \delta\dot{\mathcal B}_I. \tag{5.60}
\end{align}$$

A transverse rotation

$$\begin{align}
\delta_h\mathcal B_{A_1\ldots A_p} =-p\,h_{[A_1}{}^B \mathcal B_{|B|A_2\ldots A_p]} \tag{5.61}
\end{align}$$

has Hamiltonian

$$\begin{align}
\mathcal O_h^{(p)} =-\frac1{(p-1)!} \int du\,d\Omega\, h_A{}^B \dot{\mathcal B}^{AA_2\ldots A_p} \mathcal B_{BA_2\ldots A_p}, \tag{5.62}
\end{align}$$

provided the $u=\pm\infty$ endpoint term vanishes. For $p>1$, this is a weighted difference of conjugate polarization occupations, not a basis-independent scalar helicity.

## CPS Interpretation and Limitations

The local dictionary is:

- $\Delta_{\mathcal Y}$ is a horizontal lift when a boundary transformation changes the metric that the chosen phase space otherwise treats as fixed.
- $\mathcal A_{\mathcal Y,\mathcal Z}$ is the vertical curvature of that lift.
- It contributes to a charge algebra only if the vertical rotation is Hamiltonian for the actual boundary symplectic form.
- On fixed-$q$ radiative data, skew-adjointness forces the $+\frac12\nabla\!\cdot\!\mathcal Y$ density term.
- Alternatively, one could enlarge the phase space to include $q_{AB}$ and its conjugate data; the paper notes but does not develop this route.

The construction does not provide a Wald--Zoupas prescription, field-dependent modified bracket, flux-balance theorem, charge-integrability proof, angular corner term, edge-mode extension, or gravitational null phase space. Its finite-horizon analysis is restricted to stationary cut geometry, radial gauge, controlled endpoints, and, for the tensor-covariant match, divergence-free $\mathcal Y$.

Appendix B also makes clear that there is no unique canonical extension of $\Delta_X$ to an affine or spin connection: a family of connection variations exists, and extra geometric input is required before applying the construction to connection-valued CPS variables.

## Verification Note

The equations above were reconstructed from the full source and visually checked against the rendered PDF, including Eqs. 2.11--2.25, 2.43, 2.48--2.60, 5.12--5.33, and 5.57--5.64. No flux commutator, horizon stress-tensor reduction, or $p$-form Hamiltonian normalization was independently reproduced during this run; those parts remain source-derived.

One source typo is operationally relevant: the prose correctly selects the parameter triple $(0,-1,1)$ for $-\phi_{\mathcal Y}+A_{\mathcal Y}$, but the displayed operator is labelled $D^{(0,1,1)}$. The parameter label should be repaired before reusing that family formula.
