---
paper id: 2610.14418v1
title: Yang-Mills Theory in the Multisymplectic Framework
authors:
- Villa-Blanco, David
publication date: '2026-10-10'
abstract: This Master's thesis develops and applies the multisymplectic field-theory framework to (pure) Yang-Mills
  theory. Building from the geometric foundations of jet bundles and the Poincaré-Cartan forms, the work constructs
  the Lagrangian multisymplectic formalism for first-order field theories, recovering the usual Euler-Lagrange field
  equations and extending the Poisson brackets of symplectic mechanics to a full graded Lie algebra. It then establishes
  the Legendre correspondence with the multisymplectic Hamiltonian formalism (in which Hamilton equations are retrieved)
  including the case of singular Lagrangians (where a constraint algorithm is reproduced). Breaking Lorentz covariance
  via a Cauchy surface slicing, the thesis then relates the covariant multisymplectic picture to an instantaneous
  presymplectic (infinite-dimensional) formulation in which the instantaneous De Donder equations and presymplectic
  brackets are obtained in a compatible way. A comprehensive treatment of symmetries then leads to multisymplectic
  and instantaneous momentum maps generalizations and to several versions of Noether's theorems. Specializing the
  formalism to principal-bundle gauge theory, the thesis identifies the multisymplectic configuration space with
  the bundle of connections, gauge symmetries with symmetries in the multisymplectic language and builds the Yang-Mills
  Lagrangian. Lastly, among many computations, the standard tensorial Yang-Mills equations and the Bianchi identity
  in local trivializations are retrieved, Yang-Mills conserved currents and charges are obtained and the graded
  algebra is derived for a special class of Hamiltonian forms.
comments: 96 pages, 3 figures
url: https://arxiv.org/abs/2610.14418v1
summary: A complete Yang–Mills example linking jet-bundle Poincaré–Cartan forms, a singular Legendre map, Cauchy
  transgression and boundary gauge currents; constrained Hamilton equations and special-form brackets require explicit
  qualifications.
tags: []
---

# Yang–Mills Theory in the Multisymplectic Framework

The useful result is a concrete dictionary between first-order Yang–Mills theory, its singular covariant Legendre map, the Poincaré–Cartan form, and gauge currents that become boundary fluxes on shell. The thesis also explains how integration over an embedded hypersurface produces a presymplectic form. This provides a worked example for the variational/CPS reading path, provided one keeps separate jet-space geometry, holonomic solutions, boundary conditions and reduction by gauge transformations.

It does **not** establish a Lorentzian initial-boundary value theorem, a Peierls bracket, or regional sewing. Some printed statements are too strong: the unprojected constrained Hamilton equation on p. 64 excludes valid pure gauges; regularity alone does not give globally connected Legendre fibres; and nonzero boundary gauge parameters need not carry nonzero charge. The scalar bracket at the end is a representative-level computation whose constant becomes zero in the earlier quotient by closed forms.

Source: [official v1](https://arxiv.org/abs/2610.14418v1), 96 PDF pages, a Master's thesis by David Villa-Blanco. Page references below are printed pages; PDF page number is printed page + 5 in the main text. Full PDF and TeX were inspected; key pages 19, 57, 63–64 and 68–70 were visually checked. Reason codes: `T1-Wald-CPS; T1-symplectic; T1-charge; T2-model`.

## Complete section tree and dependency map

| Source cluster | Complete coverage and purpose | Downstream use |
|---|---|---|
| 1. Introduction | Motivation and comparison with ordinary Hamiltonian mechanics; scope is first-order classical field theory. | Sets the geometric, rather than causal-PDE, task. |
| 2.1. Lagrangian setting | 2.1.1 vertical endomorphism; 2.1.2 first prolongation; 2.1.3 Poincaré–Cartan forms; 2.1.4 Euler–Lagrange and De Donder equations; 2.1.5 singular Lagrangians/constraint algorithm; 2.1.6 Hamiltonian forms; 2.1.7 graded Lie algebra. | Defines contact forms, currents and the quotient used later. |
| 2.2–2.3. Hamiltonian setting and Legendre map | Extended/restricted multimomenta, Hamilton sections, Hamilton–De Donder–Weyl equations; 2.3.1 almost regular Lagrangians and comparison of constraint algorithms. | The antisymmetric Yang–Mills momentum submanifold. |
| 3. Instantaneous framework | Space of hypersurface embeddings and boundary-corrected transgression; 3.1 instantaneous De Donder evolution; 3.2 presymplectic bracket. | Passage from local differential forms to integrated charges. |
| 4. Symmetries and Noether theorems | 4.1 Euler–Lagrange symmetries, exact/divergence symmetries and Cartan symmetries; 4.2 De Donder symmetries, including singular theory; 4.3 Hamiltonian symmetries and 4.3.1 Legendre correspondence; 4.4 instantaneous symmetries; 4.5 localizable symmetries/second Noether theorem; 4.6 multisymplectic and instantaneous momentum maps. | Which currents are conserved and which integrated generators exist. |
| 5. Principal-bundle gauge theory | 5.1 principal bundles; 5.2 connections/adjoint bundle; 5.3 curvature and exterior covariant derivative, including the coadjoint action; 5.4 connection bundle; 5.5 active/passive gauge transformations and 5.5.1 infinitesimal generators; 5.6 Yang–Mills Lagrangian. | Makes the abstract bundle of fields into the affine bundle of connections. |
| 6.1–6.4. Yang–Mills computation | Notation; Poincaré–Cartan forms/Legendre map; Euler–Lagrange equation, including intrinsic derivation; De Donder equation for nonholonomic sections. | Explicit field equations and degeneracies. |
| 6.5–6.7. Hamilton and connection formulations | Constrained Hamilton–De Donder–Weyl equations, horizontal-projector equation, Bianchi identity. | Comparison of equivalent descriptions, with projection/integrability caveats. |
| 6.8–6.10. Currents and algebra | 6.8.1 Lagrangian invariance; 6.8.2 gauge current and charge; 6.9.1 top Hamiltonian forms; 6.9.2 special lower-degree forms; 6.10 dictionary and future work. | Boundary flux and graded-form examples. Future directions are proposals. |
| Appendix A | Vertical lift and the jet-bundle vertical endomorphism. | Background for 2.1.1. |
| Appendix B | Integration-by-parts derivation of Euler–Lagrange equations. | Fixes potential and contact terms. |
| Appendix C | Contact forms and holonomicity. | Distinguishes a jet section from a prolonged field. |
| Appendix D | Hamiltonian forms under hypersurface transgression. | Compatibility of instantaneous brackets. |
| Appendix E | Boundary conditions for symmetry transformations. | Tangency to the boundary subbundle and preservation of its primitive. |
| Appendix F, F.1 | Gauge transformation identities and lift to the connection bundle. | Active/passive conventions and Lie brackets. |
| Appendix G.1–G.5 | Momentum/differential of momentum, derivative of L with respect to A, Hessian, horizontal-projector contractions, gauge identities; G.5.1 superpotential sign. | Computational reference for all of Chapter 6. |
| Appendix H | Physics–geometry dictionary, pp. 90–91. | Reading aid, not an additional theorem. |

The main dependency chain is

$$
(Y\to X,J^1Y,\theta^i)\longrightarrow
(\Theta_L,\Omega_L,\mathrm{EL/DD})\longrightarrow
(\operatorname{Leg},M_1,H)\longrightarrow
(\widetilde\Omega_L,\widetilde J)
$$

with a second input chain

$$
P\to X\longrightarrow C(P),\operatorname{ad}P
\longrightarrow(F,D_A,\kappa)\longrightarrow
(L_{YM},p,J^\xi,K^\xi).
$$

The two chains meet only after the fields, momenta, boundary subbundle and allowed symmetry generators have been specified.

## Global notation dictionary

| Symbol | Meaning and convention |
|---|---|
| $d=n+1$ | Spacetime dimension; $n$ is hypersurface dimension. |
| $\eta,\eta_\mu,\eta_{\mu\nu}$ | $\eta=dx^0\wedge\cdots\wedge dx^n$, $\eta_\mu=\iota_{\partial_\mu}\eta$, $\eta_{\mu\nu}=\iota_{\partial_\nu}\iota_{\partial_\mu}\eta$. The coordinate volume is distinguished from $\mathrm{vol}_g=\sqrt{|g|}\eta$. |
| $Y\to X$, $Z=J^1Y$ | Configuration bundle and first jets, with coordinates $(x^\mu,y^i,z^i_\mu)$. |
| $\theta^i$ | Contact one-form $dy^i-z^i_\mu dx^\mu$; zero after pullback by $j^1\phi$. |
| $\Theta_L,\Omega_L$ | Poincaré–Cartan $d$-form and $d+1$-form; $\Omega_L=-d\Theta_L$. |
| $p,p_i^\mu$ | Extended energy coordinate and multimomenta; a Hamilton section fixes $p=-H$. |
| $B,\Pi$ | Boundary subbundle $B\subset\partial Z$ and primitive $i_B^*\Theta_L=d\Pi$; $\Pi$ has degree $n$. |
| $M,\widetilde Z$ | Compact oriented embedded $n$-manifold and associated space of admissible embeddings into $Z$. Neither automatically means the causal Cauchy problem or the reduced solution space. |
| $P,C(P)=J^1P/G$ | Principal bundle and its affine bundle of connections. |
| $[e_b,e_c]=C^a{}_{bc}e_a$ | Lie algebra basis, with nondegenerate Ad-invariant $\kappa_{ab}$. Anti-Hermitian matrix conventions can be used; preserve the sign of the chosen invariant pairing. |
| $A^a_{\mu\nu}$ | Jet coordinate for $\partial_\nu A^a_\mu$; the derivative index is **second**. This determines the sign of $p_a^{\mu\nu}$. |
| $\mathbb A^a,\mathbb F_a$ | Lower-degree forms on $M_1$: $A^a_\mu dx^\mu$ and $\frac12p_a^{\mu\nu}\eta_{\mu\nu}$; $\mathbb F_a$ corresponds to $\kappa_{ab}*F^b$. |

## Cluster I: jets, Poincaré–Cartan forms and dynamics

For a first-order density $\mathcal L=L(x,y,z)\eta$, define

$$
p_i^\mu=\frac{\partial L}{\partial z^i_\mu},\qquad
\Theta_L=L\eta+p_i^\mu\theta^i\wedge\eta_\mu,
\qquad\Omega_L=-d\Theta_L.
$$

The vertical endomorphism is $S_\eta=\theta^i\wedge\eta_\nu\otimes\partial_{z^i_\nu}$; it packages the derivative of $L$ into the contact correction to $L\eta$. For a projectable vector field $\xi_Y=\xi^\mu\partial_\mu+\xi^i\partial_{y^i}$, preserving the contact structure determines its prolongation:

$$
\xi_Y^{(1)}=\xi^\mu\partial_\mu+\xi^i\partial_{y^i}
 +(D_\mu\xi^i-z^i_\nu D_\mu\xi^\nu)\partial_{z^i_\mu}.
$$

Integration by parts gives

$$
\delta\mathcal L=
\left(\frac{\partial L}{\partial y^i}-D_\mu p_i^\mu\right)
\delta y^i\eta+d\bigl(p_i^\mu\delta y^i\eta_\mu\bigr).
$$

Thus the Euler–Lagrange equation is $D_\mu p_i^\mu=\partial L/\partial y^i$. Intrinsically it is the vanishing of $(j^1\phi)^*(\iota_V\Omega_L)$ for all relevant variations, with higher jets used when differentiating the pulled-back coefficients. A De Donder section $\sigma:X\to Z$ instead obeys $\sigma^*(\iota_V\Omega_L)=0$ without initially requiring $\sigma=j^1\phi$. The regular Hessian can recover holonomicity; the singular case must retain the contact constraint separately. Appendix C is essential here.

The connection formulation uses a horizontal projector $h$ satisfying

$$
\iota_h\Omega_L=n\Omega_L.
$$

A constraint algorithm restricts to points where such projectors exist and are tangent to the preceding constraint surface and boundary data. Pointwise solvability of this equation does not establish integrability of the horizontal distribution. Integral sections require a Frobenius/integrability condition; identifying them with physical fields also requires holonomicity. No hyperbolic existence theorem follows from the finite-dimensional algebraic algorithm.

## Cluster II: covariant Legendre map and Hamiltonian forms

On the extended multimomentum bundle $\Lambda_2^dY$, the canonical form is

$$
\Theta=p\eta+p_i^\mu dy^i\wedge\eta_\mu.
$$

The restricted bundle $Z^*=\Lambda_2^dY/\Lambda_1^dY$ forgets $p$. A section $h:Z^*\to\Lambda_2^dY$ fixes $p=-H$, and

$$
\Theta_h=-H\eta+p_i^\mu dy^i\wedge\eta_\mu,
\qquad
\Omega_h=dH\wedge\eta-dp_i^\mu\wedge dy^i\wedge\eta_\mu.
$$

The extended Legendre map sends $p_i^\mu=L_{z^i_\mu}$ and $p=L-z^i_\mu p_i^\mu$, so its pullback of the canonical form is $\Theta_L$. For a compatible Hamilton section, the restricted pullback agrees too. This qualification matters: an arbitrary Hamilton section does not satisfy the Legendre correspondence.

For an almost regular theory the image is embedded, the Legendre map onto it is a submersion with connected fibres, and the energy descends to the image. One then uses the induced $H$ and restricted premultisymplectic form on $M_1$. Yang–Mills meets this condition because its fibres are affine spaces of symmetric jet components.

**Regularity correction (Remark 2.3.2, p. 19).** A nonsingular Hessian is a local statement. It does not imply globally connected fibres. For a mechanical first-order Lagrangian

$$
L(u,v)=e^u\cos v,\qquad
\det\operatorname{Hess}L=-e^{2u},\qquad
(p_u,p_v)=e^u(\cos v,-\sin v),
$$

the different velocities $(u,2\pi k)$ have the same restricted momenta and the same energy $E=e^u(u-1)$. Their extended Legendre fibre is disconnected. A globally invertible/hyperregular hypothesis, or a local branch restriction, removes this example. This does not undermine the independently justified affine-fibre property of Yang–Mills.

For a Hamiltonian $\ell$-form $\alpha$ the source uses

$$
d\alpha=\iota_{U_\alpha}\Omega,
\qquad \deg U_\alpha=n+1-\ell.
$$

The multivector is defined modulo the kernel of contraction with $\Omega$. Hamiltonian forms are then quotiented by closed forms. The bracket is

$$
\{\alpha,\beta\}=-\iota_{U_\alpha\wedge U_\beta}\Omega,
\qquad
\deg\{\alpha,\beta\}=\ell_\alpha+\ell_\beta-n.
$$

With shifted degree $|\widehat\alpha|=n-\ell_\alpha$ and the source's sign adjustment $\{\widehat\alpha,\widehat\beta\}^*=(-1)^{|\widehat\alpha|}\{\alpha,\beta\}$, the quotient carries a graded Lie bracket. Before taking the quotient, the Jacobiator has an exact-form remainder. In top degree the representative bracket is $\iota_{X_\alpha}\iota_{X_\beta}\Omega$. The thesis presents the general graded theorem from the multisymplectic literature; the checks below concern explicit Yang–Mills representatives, not a new proof for every degree and every premultisymplectic manifold.

## Cluster III: hypersurface transgression and boundary conditions

The data include a boundary subbundle $B$ and a primitive $\Pi$ with

$$
i_B^*\Theta_L=d\Pi,\qquad i_B^*\Omega_L=0.
$$

The degree of $\Pi$ is $n$, as required by the equation; the $n+1$ degree printed in the early boundary discussion is a degree typo. For admissible embeddings $\gamma:M\to Z$, the thesis defines

$$
\widetilde\Theta_L(\delta\gamma)
=\int_M\gamma^*(\iota_{\delta\gamma}\Theta_L)
 +\int_{\partial M}\gamma^*(\iota_{\delta\gamma}\Pi),
$$

$$
\widetilde\Omega_L(\delta_1\gamma,\delta_2\gamma)
=\int_M\gamma^*(\iota_{\delta_2\gamma}\iota_{\delta_1\gamma}\Omega_L),
\qquad\widetilde\Omega_L=-\delta\widetilde\Theta_L.
$$

The general relative-form construction for $i_B^*\alpha=d\beta$ has a boundary term $-(-1)^k\int_{\partial M}\iota_{v_1}\cdots\iota_{v_k}\beta$ when transgressing an $(n+k)$-form. Stokes' theorem supplies the boundary correction needed for compatibility with exterior differentiation. Boundary tangency and preservation of the relative data are part of the statement, not optional conditions that can be discarded after integrating.

A spacetime slicing turns a De Donder section into a curve in $\widetilde Z$. Under the stated geometric correspondence its tangent belongs to $\ker\widetilde\Omega_L$. For an admissible function $f$ with $df=\iota_{X_f}\widetilde\Omega_L$, the instantaneous bracket is defined modulo kernel vector fields. Appendix D relates this construction to transgressed Hamiltonian forms.

Two distinctions matter for CPS. First, the source calls a compact embedded hypersurface a “Cauchy surface” without proving it is Cauchy for a Lorentzian PDE. Second, $\widetilde Z$ includes embedding/jet data; one must impose the equations, contact conditions and gauge quotient to obtain a physical phase space. The presymplectic construction alone proves neither uniqueness from initial data nor existence of advanced/retarded Green operators.

## Cluster IV: exact, divergence and Cartan symmetries

A projectable transformation preserving the Lagrangian modulo a divergence yields a Noether current. Exact preservation of $\Theta_L$ gives

$$
J^\xi=\iota_{\xi^{(1)}}\Theta_L,
\qquad dJ^\xi=\iota_{\xi^{(1)}}\Omega_L,
\qquad (j^1\phi)^*dJ^\xi=0
$$

on shell. More generally, for $\mathcal L_\xi\Theta_L=d\alpha$, Cartan's identity gives

$$
J^\xi=\iota_\xi\Theta_L-\alpha.
$$

Subtracting $d\alpha$, as printed in Theorem 4.2.2, has the wrong form degree. The sign follows from $\mathcal L_\xi=d\iota_\xi+\iota_\xi d$ and $\Omega_L=-d\Theta_L$; a minus sign in the displayed Cartan identity in the earlier Hamiltonian-form discussion is likewise not the convention used in this reconstruction.

The source extends these statements across Lagrangian, De Donder, Hamiltonian and instantaneous descriptions. Their boundary hypotheses require the vector fields to be tangent to $B$ and preserve the boundary primitive as specified in Appendix E. In the singular theory, preservation of the relevant constraint surfaces is also required.

For momentum maps the representative-level algebra reads

$$
\{J^\xi,J^\zeta\}=J^{[\xi,\zeta]}
 -d\bigl(\iota_{\xi}\iota_{\zeta}\Theta_L\bigr).
$$

The exact term disappears in the quotient by closed forms, but can contribute to boundary integrals in other settings. For the vertical Yang–Mills gauge vectors, $\Theta_L$ has at most one vertical differential, so the double contraction vanishes identically and the local top-form algebra closes exactly. The repeated $\xi$ in one printed double contraction in §6.9.1 is a typo; the general formula contains $\xi,\zeta$.

Localizable symmetries lead to the second Noether statement: on shell their integrated charges vanish when their parameters have compact interior support. Extending a parameter to the boundary changes the boundary problem and requires a separate differentiability/integrability analysis. It does not follow merely from “gauge invariance of the bulk Lagrangian” that the transformation is an allowed Hamiltonian symmetry of a chosen region.

## Cluster V: connection bundle, curvature and Yang–Mills density

Connections on $P\to X$ are sections of the affine bundle $C(P)=J^1P/G$. In a local trivialization the connection is $A=A^a_\mu e_a dx^\mu$ and

$$
F^a_{\mu\nu}=A^a_{\nu\mu}-A^a_{\mu\nu}
 +C^a{}_{bc}A^b_\mu A^c_\nu,
\qquad F=dA+\tfrac12[A,A].
$$

Under an active gauge transformation,

$$
A\mapsto g^{-1}Ag+g^{-1}dg,
\quad F\mapsto g^{-1}Fg,
\quad\delta_\xi A=D_A\xi,
\quad\delta_\xi F=[F,\xi].
$$

The infinitesimal action on the connection bundle has a pointwise Lie-algebra homomorphism convention. The principal-bundle realization by invariant vertical vector fields uses the corresponding anti-homomorphism convention; these should not be silently interchanged. Active transformations and passive changes of local section also have inverse-conjugation conventions that must be tracked.

The Lagrangian density is

$$
\mathcal L_{YM}=-\tfrac12\kappa_{ab}F^a\wedge *F^b
=L_{YM}\eta,\qquad
L_{YM}=-\frac{\sqrt{|g|}}4\kappa_{ab}F^a_{\mu\nu}F^{b\mu\nu}.
$$

Ad-invariance of $\kappa$ proves gauge invariance. The unqualified “most general first-order gauge-invariant Lagrangian” statement on p. 57 is false: $[\kappa_{ab}F^a_{\mu\nu}F^{b\mu\nu}]^2\mathrm{vol}_g$ is another first-derivative gauge-invariant density. A uniqueness statement needs extra restrictions such as quadratic dependence on curvature and a specified invariant pairing/class of contractions. The thesis's actual quadratic model is well defined without that uniqueness claim.

## Cluster VI: explicit Legendre constraints and field equations

With the derivative index second, the momenta are

$$
p_a^{\mu\nu}:=\frac{\partial L_{YM}}{\partial A^a_{\mu\nu}}
=\sqrt{|g|}\kappa_{ab}F^{b\mu\nu},\qquad
p_a^{(\mu\nu)}=0.
$$

The remaining derivative and Hessian are

$$
\frac{\partial L_{YM}}{\partial A^a_\mu}
=-C^c{}_{ab}A^b_\nu p_c^{\mu\nu},
$$

$$
W_{ab}^{\mu\nu,\rho\sigma}
=\sqrt{|g|}\kappa_{ab}
\left(g^{\mu\sigma}g^{\nu\rho}-g^{\mu\rho}g^{\nu\sigma}\right).
$$

For nondegenerate $g,\kappa$, this annihilates symmetric jets and is invertible on antisymmetric jets. Per Lie-algebra component the rank is $d(d-1)/2$ and the kernel has dimension $d(d+1)/2$. Consequently

$$
M_1=\{p_a^{(\mu\nu)}=0\},\qquad
H=-\frac1{4\sqrt{|g|}}p_a^{\mu\nu}p^a_{\mu\nu}
 +\frac12C^a{}_{bc}A^b_\mu A^c_\nu p_a^{\mu\nu}.
$$

To derive $H$, contract $p$ with $A_{\mu\nu}$; antisymmetry removes the symmetric jets. Replacing the antisymmetric combination by $F-[A,A]$ leaves $-p^2/(2\sqrt{|g|})+\frac12[A,A]p$, and subtracting $L=-p^2/(4\sqrt{|g|})$ produces the displayed result.

The Euler–Lagrange equation becomes

$$
\partial_\nu p_a^{\mu\nu}+C^c{}_{ab}A^b_\nu p_c^{\mu\nu}
\equiv D_\nu p_a^{\mu\nu}=0.
$$

In invariant form this is $D_A(\kappa_{ab}*F^b)=0$, equivalently $D_A*F=0$ after identifying adjoint and coadjoint bundles with $\kappa$. The Bianchi identity $D_AF=0$ is off shell. In coordinates the antisymmetry of $F^{\mu\nu}$ cancels the Christoffel term symmetric in its lower pair, while the trace Christoffel produces the derivative of $\sqrt{|g|}$.

On a nonholonomic section $\sigma=(x,A,S)$ of $J^1C(P)$ define $\Delta^a_{\mu\nu}=\partial_\nu A^a_\mu-S^a_{\mu\nu}$. The De Donder contractions give

$$
\Delta^a_{[\mu\nu]}=0,\qquad D_\nu p_a^{\mu\nu}=0.
$$

The symmetric $S^a_{(\mu\nu)}$ is undetermined. This is redundancy of the enlarged nonholonomic jet description; it is not by itself a proof that these directions coincide with gauge orbits of spacetime connections.

**Constrained Hamilton equation (p. 64).** The displayed component equation

$$
\partial_\nu A^a_\mu
=-\frac1{2\sqrt{|g|}}p^a_{\mu\nu}
 +\frac12C^a{}_{bc}A^b_\mu A^c_\nu
$$

cannot hold for all ordered components on $M_1$. Its right side is antisymmetric, imposing an extra $\partial_{(\nu}A^a_{\mu)}=0$. The legitimate equation obtained by varying the independent antisymmetric momenta is its antisymmetric projection,

$$
\partial_\nu A^a_\mu-\partial_\mu A^a_\nu
=-\frac1{\sqrt{|g|}}p^a_{\mu\nu}
 +C^a{}_{bc}A^b_\mu A^c_\nu.
$$

Together with $D_\nu p_a^{\mu\nu}=0$, this is equivalent to the preceding Yang–Mills equations. For an explicit failure of the literal equation, take $U(1)$ on flat space and $A=d(x^1)^2$. Then $F=p=0$, but $\partial_1A_1=2$. It solves Yang–Mills and the projected equation. Thus the source's transition to its boxed antisymmetric equation is a projection, not an equivalence to the stronger preceding equation.

The horizontal-projector computation in §6.6 similarly contracts the coefficient mismatch with $W$. Only its antisymmetric part is fixed. The remaining equation is the covariant divergence of $p$. The pointwise connection equation and its constraint algorithm do not remove the separate integrability requirement discussed above.

For nonconstant background metrics, retain the full differential

$$
dp_a^{\mu\nu}=\kappa_{ab}\sqrt{|g|}g^{\mu\rho}g^{\nu\sigma}\,dF^b_{\rho\sigma}
+\kappa_{ab}F^b_{\rho\sigma}
\partial_\alpha(\sqrt{|g|}g^{\mu\rho}g^{\nu\sigma})dx^\alpha.
$$

Appendix G.1 contains this coefficient dependence. A shortened expansion keeping only $\partial\sqrt{|g|}$ in the main computation is not valid on a general metric. For $g=\operatorname{diag}(e^{2x},1,1)$ and a fixed $F_{12}=f$, the true coefficient derivative is $-e^{-x}f$, whereas differentiating the density alone gives $+e^{-x}f$.

## Cluster VII: gauge current, superpotential and boundary algebra

The gauge lift is

$$
\xi_C=(D_\mu\xi)^a\partial_{A^a_\mu},\qquad
j^1\xi_C=\xi_C+D_\nu^{\rm total}(D_\mu\xi)^a\partial_{A^a_{\mu\nu}},
$$

and its induced momentum variation is

$$
\delta_\xi p_a^{\mu\nu}=-C^b{}_{ad}p_b^{\mu\nu}\xi^d.
$$

Ad-invariance makes $j^1\xi_C(L_{YM})=0$ and the canonical construction gives exact preservation of $\Theta_L$. The current is therefore

$$
J^\xi=p_a^{\mu\nu}(D_\mu\xi)^a\eta_\nu,
\qquad dJ^\xi=\iota_{j^1\xi_C}\Omega_L.
$$

After holonomic pullback its divergence is proportional to $(D_\mu\xi)^aD_\nu p_a^{\mu\nu}$ and vanishes on shell. Integrating by parts covariantly gives

$$
p_a^{\mu\nu}(D_\mu\xi)^a
=\partial_\mu(p_a^{\mu\nu}\xi^a)
 -(D_\mu p_a^{\mu\nu})\xi^a.
$$

With the stated orientation,

$$
dx^\alpha\wedge\eta_{\mu\nu}
=\delta^\alpha_\nu\eta_\mu-\delta^\alpha_\mu\eta_\nu,
$$

so the on-shell current is

$$
J^\xi\simeq dK^\xi,\qquad
K^\xi=-\frac12p_a^{\mu\nu}\xi^a\eta_{\mu\nu}
=-\xi^a\mathbb F_a.
$$

This minus sign is fixed by the jet ordering and volume contractions; changing the definition of momentum or of $\eta_{\mu\nu}$ changes its appearance. Under the additional condition $\iota_{j^1\xi_C}\Pi=0$, the instantaneous current integrates to

$$
\widetilde J^\xi\simeq\int_{\partial M}K^\xi.
$$

The source invokes a horizontal $\Pi$ to remove the boundary contraction without specifying a universal boundary subbundle that supplies it. For reuse, impose this condition or keep the $\int_{\partial M}\iota_{j^1\xi_C}\Pi$ term. A prescribed regional boundary condition is still needed to establish a conserved, integrable Hamiltonian generator.

If $\xi|_{\partial M}=0$, the displayed flux vanishes. The converse is false: $F=0$ gives zero flux even for nonzero $\xi$ on the boundary. Moreover a boundary-dependent function $\xi$ need not be rigid. The p. 68 identification of nonvanishing boundary transformations with rigid transformations carrying necessarily nontrivial charge should therefore be weakened to: **boundary-supported gauge transformations can carry charge when allowed by the boundary structure, and the charge depends on the field configuration.**

The top-current algebra follows from the coadjoint variation of $p$ and the derivation rule for $D_A$:

$$
\{J^\xi,J^\zeta\}
=\iota_{j^1\xi_C}\iota_{j^1\zeta_C}\Omega_L
=p_a^{\mu\nu}D_\mu[\xi,\zeta]^a\eta_\nu
=J^{[\xi,\zeta]}.
$$

This is the local form algebra for fixed gauge parameters. It does not automatically identify the charge algebra after imposing boundary conditions, reducing gauge degeneracies, or using field-dependent parameters.

## Cluster VIII: special lower-degree forms and the constant bracket

On $M_1$ the source introduces

$$
\mathbb A^a=A^a_\mu dx^\mu,\qquad
\mathbb F_a=\tfrac12p_a^{\mu\nu}\eta_{\mu\nu},\qquad
\Omega_{M_1}=dH\wedge\eta-dp_a^{\mu\nu}\wedge dA^a_\mu\wedge\eta_\nu.
$$

They are called **special** Hamiltonian forms: the equation $d\alpha=\iota_{X_\alpha}\Omega$ is relaxed by a horizontal remainder. In the selected trivialization the displayed multivectors are

$$
X_{\mathbb F_a}=\frac12\sum_\mu\partial_{A^a_\mu}\wedge\partial_\mu,
\qquad
X_{\mathbb A^a}=\frac1{2n}\sum_{\mu,\nu}
\partial_{p_a^{\mu\nu}}\wedge\partial_{x_{\mu\nu}^{n-1}}.
$$

Antisymmetric-coordinate differentiation means

$$
\partial_{p_a^{\mu\nu}}p_b^{\rho\sigma}
=\delta^a_b(\delta^\rho_\mu\delta^\sigma_\nu-
\delta^\rho_\nu\delta^\sigma_\mu).
$$

With this convention the vertical part of the contraction gives $d\mathbb A$ or $d\mathbb F$; the $dH\wedge\eta$ term supplies the horizontal remainder. The thesis computes

$$
\{\mathbb A^a,\mathbb A^b\}^*=0\quad(n>2),\qquad
\{\mathbb F_a,\mathbb F_b\}^*=0,\qquad
\{\mathbb A^a,\mathbb F_b\}^*=(-1)^n\frac{n+1}{2}\delta^a_b.
$$

The last coefficient follows by contracting one momentum derivative and one field derivative, leaving the number $d(d-1)$ of ordered distinct spacetime-index pairs divided by $2n$. Explicit exterior-algebra checks in $d=3,4,5$ give $3/2,-2,5/2$, respectively. Terms involving $dH$ cannot contribute to this mixed full contraction because they have only one vertical differential.

There are two limits to the interpretation. First, the theorem of §2.1.7 is stated for ordinary Hamiltonian forms; extending it to forms satisfying a relaxed equation requires checking the new equivalence relation, closure and Jacobi identity. The words “applies verbatim” do not supply those missing hypotheses. Second, a constant zero-form is closed. In the earlier quotient $\mathcal H^0/Z^0$, the class of the displayed scalar is zero. One may retain the representative calculation or define a different algebra, but cannot simultaneously quotient by all closed forms and call this a nonzero canonical commutator. Also $\mathbb A$ is a local gauge potential, not a globally defined gauge-invariant observable.

## Translation to the vault's CPS and regional questions

For a fixed metric and invariant pairing, the usual spacetime presymplectic potential in these conventions is

$$
\theta_{\mathrm{CPS}}(A;\delta A)
=p_a^{\mu\nu}\delta A^a_\mu\eta_\nu
=-\kappa_{ab}\delta A^a\wedge *F^b.
$$

The source uses $\Omega=-d\Theta$ and hence $\widetilde\Omega=-\delta\widetilde\Theta$. If the vault convention is $\omega=\delta\theta_{\mathrm{CPS}}$, the fixed-hypersurface bulk transgression is $-\int_M\omega$; orienting the field-space contraction consistently is necessary before comparing Hamiltonian signs.

The reusable objects are $\theta_{\mathrm{CPS}}$, the constraint $D_A*F=0$, the flux form $K^\xi=-\xi^a\kappa_{ab}*F^b$, and the relative boundary data $(B,\Pi)$. A regional application must next choose the boundary polarization, allowed variations and gauge parameters, determine the flux through the boundary, and check the Hamiltonian variation. This thesis supplies local geometric ingredients; it does not construct edge modes, prove factorization of regional observable algebras, or prove that regional charges sew across an interface.

For the current PDE reading route, use this as the geometric counterpart to a separate analysis of gauge fixing and hyperbolicity. The finite-dimensional Legendre Hessian diagnoses antisymmetric momentum constraints; it does not supply the Green-hyperbolic operator required for a Peierls construction.

## Equation ledger and how to read this long paper

| Chain | Source location | Result to retain | Qualification |
|---|---|---|---|
| Variation $\to$ EL | §§2.1.3–2.1.4, Appendix B | $\Theta_L=L\eta+p\theta\eta_\mu$, $D_\mu p_i^\mu=L_{y^i}$ | Holonomic pullback and admissible boundary variations. |
| Singular dynamics | §§2.1.5, 2.3.1 | Constraint projectors; induced $\Omega_{M_1}$ | Pointwise algebra does not prove integrability. |
| Slice integration | Chapter 3, Appendix D | $\widetilde\Omega=-\delta\widetilde\Theta$ | Relative boundary primitive and admissible embeddings. |
| Noether map | Chapter 4, Appendices E–F | $dJ=\iota_\xi\Omega$ and bracket up to an exact form | Correct $J=\iota_\xi\Theta-\alpha$ for $\mathcal L_\xi\Theta=d\alpha$. |
| YM Legendre map | §§5.6, 6.2, G.1–G.3 | $p=\sqrt{|g|}\kappa F$, $p^{(\mu\nu)}=0$, descended $H$ | Nondegenerate metric/pairing; affine symmetric-jet fibres. |
| EL/DD/HDW | §§6.3–6.6, G.4 | $D_\nu p^{\mu\nu}=0$, antisymmetric jet relation | Project constrained momenta; retain metric derivatives. |
| Gauge current | §6.8, G.5–G.5.1 | $J^\xi\simeq dK^\xi$, $K^\xi=-\xi\mathbb F$ | On shell; boundary primitive contributes unless its contraction vanishes. |
| Top and lower algebra | §6.9 | Exact top-current Lie algebra; mixed scalar representative | Fixed parameters; special-form extension and closed-form quotient need separate treatment. |

**How to read this long paper.** The essential path for CPS is §§2.1.3–2.1.5 → Chapter 3 → §§4.2, 4.5–4.6 → §§6.2–6.8. Read §§5.2–5.5 alongside Chapter 6 to track adjoint/coadjoint and active/passive signs. Keep §§2.2–2.3 and Appendix G as technical reference when reproducing the singular Legendre map. §§2.1.6–2.1.7 and 6.9 are a separate algebraic branch; read them after the current calculation so the quotient and special-form caveats are visible. The introduction, principal-bundle preliminaries, Appendices A–C and H supply background/dictionaries. The future-work list is optional motivation. Every section is mapped above; this is a completed master reconstruction, not a preliminary source map.

## Verification record and limitations

**Verified:** Mathematica reproduced the momenta, Hessian, $\partial L/\partial A$ and Legendre energy for generic independent $SU(2)$ field/jet variables in flat Euclidean $d=3$; all polynomial residuals are zero and the Hessian rank is 9 out of 27. The displayed general rank/kernel follows from the Hessian's antisymmetrizer with invertible $g,\kappa$. A separate exterior-form implementation checked the superpotential sign and the vertical contractions of $X_{\mathbb A},X_{\mathbb F}$ in $d=3,4,5$, giving zero residuals and mixed coefficients $3/2,-2,5/2$. The exterior engine explicitly antisymmetrizes coordinate wedges and contracts independent ordered basis indices; it does not assume the sought formula.

**Verified:** xAct/xTensor canonicalization gave $G^a{}_{bc}P^{bc}=0$ for symmetric $G$ and antisymmetric $P$. In the same xAct kernel, arbitrary-function $SU(2)$ component calculations verified the Bianchi identity, $\delta F=[F,\xi]$ and the covariant derivation identity underlying the current algebra; all components vanish identically. Quadratic and quartic invariant curvature contractions have zero infinitesimal gauge variation. These checks include nonconstant arbitrary connection components; they are not a numerical sample.

**Checked counterexamples:** Mathematica gave $\det\mathrm{Hess}(e^u\cos v)=-e^{2u}$ and equal extended momenta/energy at $v=0,2\pi$, disproving the general connected-fibre inference. The pure-gauge example gives zero curvature and a literal HDW residual with entry 2. The varying-metric coefficient check gives a residual $-2e^{-x}f$ when inverse-metric derivatives are omitted. These are failures of the specific unrestricted claims, not failures of quadratic Yang–Mills theory.

**Assumptions:** Smooth first-order fields; oriented $d$-manifold; nondegenerate background metric and Ad-invariant pairing; local trivializations for component formulas; $A_{\mu\nu}=\partial_\nu A_\mu$; fixed gauge parameters in the current algebra; admissible boundary subbundle and primitive for transgression; on-shell restriction for the superpotential charge. No causal or global-triviality assumption is silently inferred from local coordinates.

**Failed:** The general “regular implies connected Legendre fibres” statement on p. 19; the unqualified first-order uniqueness claim on p. 57; the all-component constrained HDW equation on p. 64; the implication “nonzero boundary parameter implies rigid transformation with nonzero charge” on p. 68. The literal Cartan-current formula with $-d\alpha$ fails degree counting. Corrected/conditional forms are given at the point of use.

**Blocked:** The source does not specify a boundary subbundle and primitive adequate to certify a general regional Hamiltonian charge; its assertion that the $\Pi$ contraction always vanishes cannot be imported universally. The relaxed special-Hamiltonian-form algebra requires additional closure/equivalence hypotheses to apply the ordinary graded-Lie theorem; a nonzero scalar class cannot survive the stated quotient by closed zero-forms. These are mathematical-input boundaries, not retrieval failures.

**Not verified:** Global existence and smoothness of the infinite-dimensional reduced phase space; full constraint-algorithm integrability; Lorentzian well-posedness or Green operators; field-dependent/boundary charge algebra; all-degree special-form Jacobi theorem; quantum or regional-sewing consequences. General literature theorems in Chapters 2–4 remain Source-derived. No source-access blocker remains. PDF extraction emitted a font-type warning, but TeX and rendered pages resolved the formulas used here.
