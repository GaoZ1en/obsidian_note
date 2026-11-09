---
paper id: 2609.10805v1
title: Alternative Boundary Conditions in Asymptotically Anti-de Sitter Spacetimes
authors:
  - Robert M. Wald
  - Xinkang Wang
publication date: 2026-09-09T20:14
abstract: |-
  The paper classifies which Ishibashi--Wald boundary conditions for scalar, electromagnetic, and linearized gravitational fields are local in the primary fields and AdS-invariant. In four spacetime dimensions it extends the standard magnetic boundary condition to arbitrary real electric--magnetic combinations, constructs the corresponding Maxwell, Yang--Mills, and nonlinear-gravity covariant phase spaces using topological additions to the Lagrangian, and derives consequences for asymptotic charges, linearization instability, and black-hole entropy.
comments: "31 pages, no figures"
url: https://arxiv.org/abs/2609.10805v1
summary: "A direct AdS boundary-CPS benchmark in which electric--magnetic boundary data select topological improvements, and nonstandard gravity conditions remove all asymptotic charges."
tags: []
---

Return to [[2026_09_11_overview|the 11 September 2026 arXiv overview]].

# Verdict

This is a high-priority paper for the boundary-condition side of the gluing programme. Its strongest established result is not a classification theorem for every admissible boundary condition, but an explicit one-parameter family of local conservative AdS boundary conditions together with covariant symplectic currents whose flux through conformal infinity vanishes.

The source proves or imports well-posedness for the scalar, Maxwell, and nonlinear Einstein cases it identifies. It only conjectures nonlinear Yang--Mills well-posedness and the exhaustion of all local AdS-invariant conservative conditions. For nonlinear gravity, “phase space” means a symplectic product on linearized solutions about a solution; no topology or manifold structure on the full solution space is constructed.

# How to Read This Long Paper

- Essential for the vault: sections 3--5, especially the boundary tensors, the topological improvements of the Lagrangians, and the charge/entropy consequences.
- Technical reference: section 2 and appendix A, which translate the Ishibashi--Wald mode potentials into local primary-field conditions.
- Dimension-dependent reference: appendix B for AdS$_{1,4}$ and AdS$_{1,5}$.
- PDE provenance: appendix C, which identifies the conservative Friedrich/Friedrich--Nagy conditions and the extra initial constraints needed to recover the paper's full tensor conditions.

# Source Map

1. **Introduction.** States the classification problem, separates locality from AdS invariance, and previews the electric--magnetic families.
2. **Review of the Ishibashi--Wald approach.** Reduces scalar, Maxwell, and linearized-gravity modes to one-dimensional positive self-adjoint-extension problems and records the mass/dimension windows in which Robin freedom exists.
3. **Local and AdS-invariant boundary conditions.** Reconstructs local conditions from the mode potentials; treats scalar, Maxwell, Yang--Mills, linearized gravity, and nonlinear Fefferman--Graham gravity in turn.
4. **Construction of phase space.** States the Lee--Wald flux criterion, then constructs scalar, Maxwell, Yang--Mills, and gravitational symplectic currents. The Maxwell/Yang--Mills cases use Pontryagin improvements; gravity uses Gauss--Bonnet plus gravitational Pontryagin.
5. **Asymptotic symmetries and conserved charges.** Derives the sharp contrast between the standard magnetic condition and finite-$\alpha$ conditions, then discusses linearization instability and black-hole entropy.
6. **Appendix A.** Gives the linearized Weyl tensor in terms of Ishibashi--Wald scalar and vector potentials.
7. **Appendix B.** Shows that the higher-dimensional local AdS-invariant cases reduce to the magnetic-type condition $F_{IJ}|_{\mathcal I}=0$ or its Weyl analogue.
8. **Appendix C.** Matches the conservative limits of Friedrich--Nagy and Friedrich boundary conditions to the paper's Maxwell and gravitational conditions, including the needed initial $tI$ constraints.

# Geometry, Fields, and Conventions

The bulk is AdS$_{1,d}$ for the linear theories and a four-dimensional Fefferman--Graham spacetime for nonlinear gravity. In the latter case,

$$\begin{align}
ds^2=\frac{L^2}{z^2}\left(dz^2+g_{IJ}(z,x)dx^Idx^J\right), \qquad g_{IJ}=g_{(0)IJ}+z^2g_{(2)IJ}+z^3g_{(3)IJ}+\cdots.
\end{align}$$

The conformal boundary is $\mathcal I=\{z=0\}$ and the outward unphysical normal is $n^\mu=-(\partial_z)^\mu$. Capital indices are tangent to $\mathcal I$. In four dimensions the rescaled electric and magnetic Maxwell data are

$$\begin{align}
\widetilde E_I=F_{I\mu}n^\mu, \qquad \widetilde B_I={}^*F_{I\mu}n^\mu,
\end{align}$$

while the gravitational data are

$$\begin{align}
\widetilde E_{IJ}=\Omega^{-1}\widetilde C_{I\mu J\nu}n^\mu n^\nu, \qquad \widetilde B_{IJ}=\Omega^{-1}{}^*\widetilde C_{I\mu J\nu}n^\mu n^\nu.
\end{align}$$

The real parameter $\alpha\in\mathbb R\cup\{\infty\}$ labels an electric--magnetic rotation. The standard boundary condition is the separate endpoint $\alpha=\infty$.

# From Ishibashi--Wald Modes to Local Boundary Data

## Scalar Field

For

$$\begin{align}
\mathcal L_\phi=-\frac12(\nabla\phi)^2-\frac12\mu^2\phi^2,
\end{align}$$

the Ishibashi--Wald radial operator has two admissible falloffs only in the Breitenlohner--Freedman window. A common Robin coefficient for all spherical harmonics gives a local condition. Dirichlet and Neumann are AdS-invariant; a generic Robin coefficient is local but not AdS-invariant.

The scalar symplectic current is

$$\begin{align}
\omega^{(\phi)}_{\mu_1\cdots\mu_d} =\left(\delta_1\phi\nabla^\nu\delta_2\phi- \delta_2\phi\nabla^\nu\delta_1\phi\right) \epsilon_{\nu\mu_1\cdots\mu_d}.
\end{align}$$

The common Robin relation makes the leading mixed boundary term antisymmetrize to zero, so the symplectic flux through $\mathcal I$ vanishes. This canonical energy need not coincide pointwise with the stress-tensor energy current.

## Maxwell and Yang--Mills in AdS$_{1,3}$

After combining the scalar and vector Ishibashi--Wald potentials by four-dimensional duality, the local AdS-invariant family is

$$\begin{align}
\left.\left(\widetilde E_I+\alpha\widetilde B_I\right)\right|_{\mathcal I}=0.
\end{align}$$

The endpoints are $\widetilde E_I=0$ at $\alpha=0$ and $\widetilde B_I=0$ at $\alpha=\infty$. The same expression is well defined for Yang--Mills fields with an adjoint index, but its nonlinear well-posedness is conjectural in this paper.

## Linearized and Nonlinear Gravity

For linearized gravity in AdS$_{1,3}$ the duality-completed local invariant family is

$$\begin{align}
\left.\left(\widetilde E^{(1)}_{IJ}+\alpha\widetilde B^{(1)}_{IJ}\right)\right|_{\mathcal I}=0.
\end{align}$$

The same tensor equation is meaningful nonlinearly in a four-dimensional FG spacetime:

$$\begin{align}
\left.\left(\widetilde E_{IJ}+\alpha\widetilde B_{IJ}\right)\right|_{\mathcal I}=0.
\end{align}$$

The FG coefficients make its source/response content explicit:

$$\begin{align}
\left.\widetilde E_{IJ}\right|_{\mathcal I} =-\frac{3L}{2}g_{(3)IJ} =-\frac{8\pi G_4}{L}\widetilde T_{IJ},
\end{align}$$

$$\begin{align}
\left.\widetilde B_{IJ}\right|_{\mathcal I} =-L\,Y_{IJ}[g_{(0)}],
\end{align}$$

where $Y_{IJ}$ is the Cotton--York tensor of the boundary metric. Therefore the boundary condition is equivalent to

$$\begin{align}
g_{(3)IJ}-\mu Y_{IJ}[g_{(0)}]=0, \qquad \mu=-\frac{2\alpha}{3}.
\end{align}$$

Souêtre's theorem applies to this last form. The paper also explains how the conservative Friedrich condition plus an initial $tI$ constraint propagates to the complete tensor equation.

# The Covariant Phase-Space Construction

For a Lagrangian $D$-form,

$$\begin{align}
\delta\boldsymbol{\mathcal L} =\boldsymbol{\mathcal E}\cdot\delta\varphi+d\boldsymbol\theta,
\end{align}$$

and

$$\begin{align}
\boldsymbol\omega(\varphi;\delta_1\varphi,\delta_2\varphi) =\delta_1\boldsymbol\theta(\varphi,\delta_2\varphi) -\delta_2\boldsymbol\theta(\varphi,\delta_1\varphi).
\end{align}$$

The integrated two-form

$$\begin{align}
\Omega_\Sigma=\int_\Sigma\boldsymbol\omega
\end{align}$$

is independent of the complete spacelike hypersurface $\Sigma$ only if the integral converges and the pullback $\boldsymbol\omega|_{\mathcal I}$ vanishes. A corner ambiguity $\boldsymbol\theta\mapsto\boldsymbol\theta+d\boldsymbol C$ shifts the current by $d\overleftrightarrow{\boldsymbol C}$.

## Maxwell

Starting from

$$\begin{align}
\boldsymbol{\mathcal L}_{\rm M}=-\frac12\boldsymbol F\wedge{}^*\boldsymbol F, \qquad \boldsymbol\theta_{\rm M}=-\delta\boldsymbol A\wedge{}^*\boldsymbol F,
\end{align}$$

the finite-$\alpha$ boundary condition requires

$$\begin{align}
\boldsymbol C_\alpha=\frac\alpha2\boldsymbol A\wedge\delta\boldsymbol A.
\end{align}$$

Equivalently, the covariant final theory is

$$\begin{align}
\boldsymbol{\mathcal L}_{\rm EM} =-\frac12\boldsymbol F\wedge{}^*\boldsymbol F +\frac\alpha2\boldsymbol F\wedge\boldsymbol F,
\end{align}$$

$$\begin{align}
\boldsymbol\theta_{\rm EM} =-\delta\boldsymbol A\wedge\left({}^*\boldsymbol F-\alpha\boldsymbol F\right),
\end{align}$$

$$\begin{align}
\boldsymbol\omega_{\rm EM} =\delta_1\boldsymbol A\wedge\delta_2({}^*\boldsymbol F-\alpha\boldsymbol F) -(1\leftrightarrow2).
\end{align}$$

The boundary condition says precisely that the pullback of $({}^*F-\alpha F)$ vanishes, hence so does the flux. The corresponding boundary Lagrangian is $-(\alpha/2)A\wedge dA$.

## Yang--Mills

The non-Abelian construction is parallel:

$$\begin{align}
\boldsymbol{\mathcal L}_{\rm YM} =-\frac{1}{2g_{\rm YM}^2}\operatorname{Tr}(F\wedge{}^*F) +\frac{\alpha}{2g_{\rm YM}^2}\operatorname{Tr}(F\wedge F),
\end{align}$$

$$\begin{align}
\boldsymbol\theta_{\rm YM} =-\frac1{g_{\rm YM}^2}\operatorname{Tr}\left[ \delta A\wedge({}^*F-\alpha F)\right].
\end{align}$$

The boundary primitive is the non-Abelian Chern--Simons form. This proves the formal variational and symplectic-flux statements once the solution space exists; it does not prove the nonlinear initial-boundary-value theorem.

## Nonlinear Gravity

For $\alpha=\infty$, fixing the conformal class and using boundary diffeomorphisms/conformal-factor freedom permits $\delta g_{(0)}=0$, so the Einstein--Hilbert current suffices.

For finite $\alpha$, the covariant final Lagrangian is

$$\begin{align}
\boldsymbol{\mathcal L}_{\rm G} =\boldsymbol{\mathcal L}_{\rm EH} +\frac{L^2}{64\pi G_4}\boldsymbol{\mathcal L}_{\rm GB} +\frac{\alpha L^2}{32\pi G_4}\boldsymbol{\mathcal L}_{\rm P}.
\end{align}$$

On an Einstein background its potential simplifies to

$$\begin{align}
(\theta_{\rm G})_{\mu\nu\rho} =\frac{L^2}{16\pi G_4} \left(C^{\sigma\alpha\beta\tau} +\alpha({}^*C)^{\sigma\alpha\beta\tau}\right) \nabla_\tau\delta g_{\alpha\beta}\, \epsilon_{\sigma\mu\nu\rho}.
\end{align}$$

At the conformal boundary,

$$\begin{align}
\left.\boldsymbol\theta_{\rm G}\right|_{\mathcal I} =-\frac{L}{16\pi G_4} (\widetilde E_{IJ}+\alpha\widetilde B_{IJ}) \delta g_{(0)}^{IJ}\boldsymbol\epsilon_{(0)},
\end{align}$$

so the imposed boundary condition gives both a good variational principle and vanishing symplectic flux.

# Charges, Linearization Instability, and Entropy

For the standard magnetic condition $\alpha=\infty$, the asymptotic gravitational symmetries are conformal Killing fields of the fixed $g_{(0)}$, with Ashtekar--Magnon-type charge

$$\begin{align}
H_\xi=-\frac{L}{8\pi G_4}\int_C \widetilde E_{IJ}\xi^I\widetilde\eta^Jd\widetilde S.
\end{align}$$

For every finite $\alpha$, the improved Noether charge approaches

$$\begin{align}
(Q_{\rm G})_{IJ} =-\frac{L}{8\pi G_4}(\epsilon_{(0)})_{IJ}{}^K (\widetilde E_{KL}+\alpha\widetilde B_{KL})\xi^L,
\end{align}$$

which vanishes by the boundary condition. Thus every boundary-condition-preserving diffeomorphism is gauge and every Hamiltonian charge is zero. The Maxwell result is parallel: the standard magnetic condition retains only the constant electric gauge parameter, whereas finite $\alpha$ makes every allowed gauge transformation pure gauge.

On a background with $k$ Killing fields, vanishing charges yield $k$ quadratic integrability constraints

$$\begin{align}
\int_\Sigma\boldsymbol\omega(g;\delta g,\mathcal L_\xi\delta g)=0.
\end{align}$$

For AdS$_{1,3}$ this gives ten constraints and a conical linearization-instability locus. This is a second-order integrability statement, not a proof that the full solution space is a smooth codimension-ten submanifold.

For a smooth bifurcate Killing horizon, the improved Wald entropy is initially

$$\begin{align}
S=-\frac{L^2}{16G_4}\int_{\mathcal B} \left[C_{\lambda\rho\alpha\beta} +\alpha({}^*C)_{\lambda\rho\alpha\beta}\right] n^{\lambda\rho}n^{\alpha\beta}dA.
\end{align}$$

Using the Einstein equation, vanishing extrinsic curvatures, Gauss--Bonnet, and zero normal-bundle Pontryagin flux for a smooth compact bifurcation surface gives

$$\begin{align}
S=\frac{A_{\mathcal B}}{4G_4} +\frac{\pi L^2}{2G_4}\chi(\mathcal B).
\end{align}$$

The change from Bekenstein--Hawking entropy is topological and hence constant within a fixed-topology phase space. Since the Hamiltonian charge at infinity vanishes, the stationary first law becomes $\delta S=0$. Misner strings require an excised tube and may add a string contribution; the source gives the Taub--NUT--AdS correction explicitly.

# Equation and Dependency Ledger

| Input | Intermediate object | Output | Status |
|---|---|---|---|
| Ishibashi--Wald self-adjoint extensions | common modewise Robin coefficient | local scalar/Maxwell/gravity conditions | Source-derived |
| four-dimensional duality | scalar/vector potential mixing | $\widetilde E+\alpha\widetilde B=0$ | Source-derived |
| FG Einstein expansion | $g_{(3)}$, boundary stress tensor, Cotton--York tensor | $g_{(3)}-\mu Y[g_{(0)}]=0$ | Source-derived |
| Chern--Simons boundary primitive | Maxwell/Yang--Mills Pontryagin density | flux-free gauge symplectic current | Checked algebraically for Maxwell coefficients |
| Gauss--Bonnet and Pontryagin variations | improved gravitational potential | $\theta_{\rm G}|_{\mathcal I}\propto(E+\alpha B)\delta g_{(0)}$ | Source-derived |
| improved Noether charge | finite-$\alpha$ boundary condition | all asymptotic charges vanish | Source-derived, direct boundary substitution |
| horizon Gauss relation and Euler theorem | improved Wald integral | area plus Euler constant | Checked |

# Translation into the Vault's Sewing Language

The useful object is not merely a boundary condition but the triple

$$\begin{align}
(\mathcal L_\alpha,\theta_\alpha,\omega_\alpha),
\end{align}$$

chosen so that the allowed boundary data form a flux-isotropic locus. In regional sewing language, the interface relation is

$$\begin{align}
E+\alpha B=0,
\end{align}$$

and the topological term changes the symplectic polarization without changing bulk equations of motion. This is a clean example of “same bulk dynamics, different boundary phase space.”

It should not be imported as a general gluing theorem. The paper treats an external timelike conformal boundary, assumes the stated global/gauge conditions, and does not construct a two-region fibre product, release map, Peierls comparison, quantum observable algebra, or radiative completion. Its strongest reusable ingredient is the explicit improved symplectic current and the warning that a boundary condition can eliminate, rather than merely modify, all boundary charges.

# Verification Log

## Checked

- With $c=e^{i\vartheta}$ and $|c|=1$, Mathematica gives zero imaginary part for $\alpha=i(1+c)/(1-c)$ away from $c=1$, confirming that the conservative Friedrich parameter maps to real $\alpha$.
- Using $\delta(A\wedge dA)=2\delta A\wedge F-d(A\wedge\delta A)$, Mathematica coefficient bookkeeping gives

$$\begin{align}
\theta_{\rm M}|_{\mathcal I} =\delta\left(-\frac\alpha2A\wedge dA\right) -d\left(\frac\alpha2A\wedge\delta A\right)
\end{align}$$

  under ${}^*F|_{\mathcal I}=\alpha F|_{\mathcal I}$.
- Substitution of

$$\begin{align}
C^{\mu\nu\rho\sigma}n_{\mu\nu}n_{\rho\sigma} =-2R^{(2)}-\frac4{L^2}, \qquad \int_{\mathcal B}R^{(2)}dA=4\pi\chi(\mathcal B),
\end{align}$$

  into the Wald integral reproduces $A/(4G_4)+\pi L^2\chi/(2G_4)$ with zero residual.
- The official TeX source and rendered PDF page 26 agree on the signs and coefficients in the entropy chain.

## Assumptions

- Four-dimensional Lorentzian signature and the source's Hodge-star and outward-normal conventions.
- Smooth FG conformal completion; for the standard condition, fixed boundary conformal class and the gauge/diffeomorphism choices used to set the boundary potential or $g_{(0)}$.
- Einstein equation $R_{\mu\nu}=-3g_{\mu\nu}/L^2$ for the simplified gravitational potentials and charges.
- Smooth compact bifurcation surface with both extrinsic curvatures zero for the area-plus-Euler entropy formula.
- Fixed $\alpha$ and fixed horizon topology when interpreting $\delta S=0$.

## Blocked

- A fresh tensor-package derivation of the complete Gauss--Bonnet and gravitational-Pontryagin symplectic potentials was not run; the local environment exposes `wolframscript` but not the dedicated xAct MCP named by the verification skill, and reproducing the full 31-page convention chain would require an independent xAct implementation.
- The paper's appendix-A formulas relating every Ishibashi--Wald mode to every Weyl component were inspected in source but not independently reconstructed.
- The nonlinear well-posedness results imported from Friedrich and Souêtre were not reproved.

## Not Independently Verified

- Exhaustiveness of the local AdS-invariant conservative families.
- Nonlinear Yang--Mills well-posedness.
- Global gauge-triviality of $A|_{\mathcal I}$ on boundary topologies with nontrivial $H^1(\mathcal I)$.
- The Taub--NUT normal-bundle flux and string-tube contribution.

# Bottom Line

Use this paper as a precise boundary-polarization/CPS model. Its finite-$\alpha$ gravity family is especially important because the improved symplectic structure makes every asymptotic diffeomorphism gauge and forces all charges to vanish. Keep the conjectural classification and Yang--Mills PDE claims separate from the explicit symplectic and charge calculations.
