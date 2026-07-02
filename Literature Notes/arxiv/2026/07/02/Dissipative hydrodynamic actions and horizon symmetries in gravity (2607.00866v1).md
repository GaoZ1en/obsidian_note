---
paper id: 2607.00866v1
title: Dissipative hydrodynamic actions and horizon symmetries in gravity
authors:
  - Mike Blake
  - Arpit Das
  - Richard A. Davison
publication date: 2026-07-01T12:31:32
abstract: |-
  The paper gives a gravitational prescription for deriving a Schwinger-Keldysh effective action for the large-scale stress-tensor dynamics of a holographic QFT dual to AdS4-Schwarzschild gravity. The hydrodynamic degrees of freedom are relative diffeomorphisms between the black-hole horizon and the two asymptotic boundaries of the CGL contour. The authors compute the quadratic action to first order in derivatives, reproduce hydrodynamic Green functions, and analyze the horizon diffeomorphisms that preserve the chosen boundary conditions.
comments: "55 pages (including refs), 1 figure"
url: https://arxiv.org/abs/2607.00866v1
summary: "A direct horizon-boundary relative-diffeomorphism construction of a dissipative SK stress-tensor action, with horizon-symmetry boundary-condition data useful for CPS and edge-mode comparisons."
tags: []
---

# Dissipative stress-tensor action from horizon-relative diffeomorphisms

Back to [[2026_07_02_overview]].

The paper constructs an off-shell hydrodynamic Schwinger-Keldysh action for the stress tensor of the CFT dual to planar AdS4-Schwarzschild. The central structural move is to avoid working only with boundary sources: the dynamical SK fields are relative diffeomorphisms between the two asymptotic boundaries and the black-hole horizon. This makes the paper locally useful for the vault because the same "relative transformation between a boundary and an interior/corner surface" is the mechanism behind many edge-mode and finite-boundary CPS constructions.

The calculation is not a covariant phase-space charge calculation. Its relevance is more specific: it gives a controlled example in which horizon boundary conditions decide which diffeomorphisms become off-shell hydrodynamic symmetries, and in which the remaining Einstein constraints become the equations of motion of the effective action.

## Source route through the paper

Section 2 fixes the gravitational background and the CGL contour. The bulk action is

$$\begin{align}
S_{\mathrm{EH}}=\int d^4x\sqrt{-g}(R+6),\qquad
S_{\mathrm{GH}}=\int d^3x\sqrt{-\gamma}(2K-4-R[\gamma]),
\end{align}$$

and the planar AdS4-Schwarzschild solution is written as

$$\begin{align}
ds^2=-D(r)d\tau^2+\frac{dr^2}{D(r)}+r^2(dx^2+dy^2),\qquad
D(r)=r^2\left(1-\frac{r_0^3}{r^3}\right).
\end{align}$$

In ingoing coordinates $t=\tau+r_*(r)$ this becomes

$$\begin{align}
ds^2=-r^2f(r)dt^2+2dt\,dr+r^2(dx^2+dy^2),\qquad
f(r)=1-\frac{r_0^3}{r^3}.
\end{align}$$

The equilibrium thermodynamics used later is

$$\begin{align}
4\pi T=3r_0,\qquad s=4\pi r_0^2,\qquad
\varepsilon=2r_0^3,\qquad p=r_0^3.
\end{align}$$

Sections 3 and 4 solve transverse and longitudinal perturbations only partially on shell. Dynamical radial equations are imposed, while the conservation constraints are deliberately left off shell. Section 5 combines the two channels into the SK action, computes constitutive relations, and checks retarded/symmetric correlators. Section 6 identifies the horizon diffeomorphisms that preserve the main boundary conditions. Section 7 repeats the comparison for an alternative horizon condition that matches the Knysh et al. horizon-symmetry profile more directly but has a weaker variational-principle status. The appendices record the UV Fefferman-Graham matching, the partially on-shell solutions, the horizon variational principle, and the comparison with a gauge-fixed alternative approach.

## Fields, branches, and horizon data

The CGL contour has two branches, labelled $\sigma=1,2$. Sources and hydrodynamic variables are put into $+$ and $-$ combinations by

$$\begin{align}
\xi_\mu^+=\frac{\xi_\mu^1+\xi_\mu^2}{2},\qquad
\xi_\mu^-=\xi_\mu^1-\xi_\mu^2,
\end{align}$$

and similarly for the boundary metric perturbations.

In the transverse channel the metric perturbation is decomposed as

$$\begin{align}
\delta g_{ty}^{\sigma}&=r^2h_{ty}^{\sigma}+\partial_t\zeta_y^{\sigma},\\
\delta g_{yr}^{\sigma}&=-\frac{2}{r}\zeta_y^\sigma+\partial_r\zeta_y^\sigma,\\
\delta g_{xy}^{\sigma}&=r^2h_{xy}^{\sigma}+\partial_x\zeta_y^\sigma.
\end{align}$$

The horizon radial-gauge condition leaves a residual function

$$\begin{align}
\zeta^{y,\sigma}(t,r\to r_0,x)=Y^\sigma(t,x)+O((r-r_0)^2),
\end{align}$$

and the hydrodynamic field is the relative diffeomorphism

$$\begin{align}
\xi_y^\sigma=[\zeta^y]_{r_0}^{\infty}
=\zeta^{y,\sigma}(r=\infty)-Y^\sigma
=\int_{r_0}^{\infty}\frac{\delta g_{yr}^\sigma}{r^2}\,dr.
\end{align}$$

The gauge-invariant linear combinations are

$$\begin{align}
B_{ty}^{\sigma}=\delta g_{ty}^{\sigma(s)}-\partial_t\xi_y^\sigma,\qquad
B_{xy}^{\sigma}=\delta g_{xy}^{\sigma(s)}-\partial_x\xi_y^\sigma.
\end{align}$$

In the longitudinal channel the residual horizon data are $T^\sigma,R^\sigma,X^\sigma$, and the relative diffeomorphisms are

$$\begin{align}
\xi_t^\sigma&=[-\zeta^{t,\sigma}]_{r_0}^{\infty}
=-\zeta^{t,\sigma}(r=\infty)+T^\sigma,\\
\xi_x^\sigma&=[\zeta^{x,\sigma}-\partial_x\zeta^{t,\sigma}/r]_{r_0}^{\infty}
=\zeta^{x,\sigma}(r=\infty)-X^\sigma.
\end{align}$$

The source-response-like combinations are

$$\begin{align}
B_{tt}^{\sigma}&=\delta g_{tt}^{\sigma(s)}-2\partial_t\xi_t^\sigma,\\
B_{tx}^{\sigma}&=\delta g_{tx}^{\sigma(s)}-\partial_x\xi_t^\sigma-\partial_t\xi_x^\sigma,\\
B_p^\sigma&=\delta g_p^{\sigma(s)}-2\partial_x\xi_x^\sigma,\\
B_m^\sigma&=\delta g_m^{\sigma(s)}-2\partial_x\xi_x^\sigma,
\end{align}$$

where $\delta g_p=\delta g_{xx}+\delta g_{yy}$ and $\delta g_m=\delta g_{xx}-\delta g_{yy}$.

## Horizon boundary conditions as the effective-action input

The primary horizon boundary condition is

$$\begin{align}
\delta g_{t\mu}^{\sigma}(r_0)=0,\qquad
2r_0^2\partial_r\delta g_{tt}^{\sigma}(r_0)
=\partial_t\delta g_{xx}^{\sigma}(r_0)+\partial_t\delta g_{yy}^{\sigma}(r_0).
\end{align}$$

The traceless spatial components are treated differently: $\delta g_{xy}^\sigma$ and $\delta g_m^\sigma$ are made continuous after analytic continuation around the horizon of the CGL contour. In practice, the logarithm in the lower branch is continued by

$$\begin{align}
\log(r-r_0)\mapsto \log(r-r_0)-2\pi i.
\end{align}$$

For the transverse channel this fixes

$$\begin{align}
\beta_4^\sigma=-\frac{i}{2\pi}B_{xy}^-,
\end{align}$$

and for the longitudinal traceless sector

$$\begin{align}
\alpha_6^\sigma=-\frac{i}{2\pi}B_m^-.
\end{align}$$

This is the source of the dissipative $i(B^-)^2$ terms in the SK action. Locally, this is the key boundary-condition lesson: branch-coupled continuity at the horizon partially breaks the two independent horizon gauge symmetries and produces noise/dissipation terms.

The alternative boundary condition studied later is

$$\begin{align}
\delta g_{t\mu}^{\sigma}(r_0)=0,\qquad
\partial_r\delta g_{tt}^{\sigma}(r_0)=0.
\end{align}$$

It has the same first-derivative action but does not manifestly guarantee that the hydrodynamic equations of motion are the unimposed Einstein constraints. At the pole $\omega=2\pi iT$ this distinction becomes important for the exponentially growing chaos-related mode.

## Partially on-shell gravity and constraints

The transverse Einstein equations split into two radial dynamical equations and a radially conserved constraint once the dynamical equations are imposed. The constraint is

$$\begin{align}
\mathrm{momentum}_y^\sigma
=-\partial_t\left(r^4\partial_rh_{ty}^\sigma-r^2\partial_xh_{xy}^\sigma\right)
-\partial_x\left(-r^4f\partial_rh_{xy}^\sigma+r^2\partial_xh_{ty}^\sigma\right).
\end{align}$$

After applying the boundary conditions it becomes

$$\begin{align}
\mathrm{momentum}_y^\sigma
=-r_0^3\left(
3\partial_tB_{ty}^\sigma
+\frac{3i}{2\pi}\partial_xB_{xy}^-
-\frac{3i}{2\pi r_0}\partial_x(\partial_xB_{ty}^--\partial_tB_{xy}^-)
-\frac{1}{r_0}\partial_x\partial_tB_{xy}^{\bar\sigma}
\right).
\end{align}$$

The longitudinal channel is analogous, except the trace constraint is imposed off shell so that the resulting stress tensor is traceless. The energy and momentum constraints remain off shell:

$$\begin{align}
\mathrm{momentum}_x^\sigma
&=-\frac{3ir_0^3}{4\pi}\partial_xB_m^-
-3r_0^3\partial_tB_{tx}^\sigma
+\frac{3ir_0^2}{2\pi}\partial_x^2B_{tx}^-
+\frac{r_0^2}{2}\partial_t\partial_xB_m^{\bar\sigma}
-\frac{3ir_0^2}{4\pi}\partial_t\partial_xB_m^-,\\
\mathrm{energy}^\sigma
&=-\frac{3r_0^3}{2}\partial_tB_p^\sigma
-3r_0^3\partial_tB_{tt}^\sigma
-\frac{3ir_0^2}{4\pi}\partial_x^2B_m^-.
\end{align}$$

The effective action is designed so that variation with respect to $\xi_\mu^\sigma$ returns these constraints.

## Schwinger-Keldysh action

The transverse quadratic action through first order in derivatives is

$$\begin{align}
S_{\mathrm{hydro}}^{\perp}
=r_0^3\int d^3x\bigg(
&3B_{ty}^+B_{ty}^-
+\frac{3i}{4\pi}(B_{xy}^-)^2
+\frac{3i}{2\pi r_0}B_{ty}^-\partial_xB_{xy}^-\\
&+\frac{1}{r_0}B_{xy}^+\partial_tB_{xy}^-
-\delta g_{xy}^{+(s)}\delta g_{xy}^{-(s)}
-2\delta g_{ty}^{+(s)}\delta g_{ty}^{-(s)}
\bigg).
\end{align}$$

The longitudinal action has a linear equilibrium term

$$\begin{align}
S_{\mathrm{hydro}}^{(1)}
=\int d^3x\left(r_0^3\delta g_{tt}^{-(s)}+\frac{r_0^3}{2}\delta g_p^{-(s)}\right),
\end{align}$$

and a zero-derivative quadratic piece decomposed into dissipative and non-dissipative parts:

$$\begin{align}
S_{\mathrm{diss}}
=r_0^3\int d^3x\,\frac{3i}{16\pi}(B_m^-)^2,
\end{align}$$

$$\begin{align}
S_{\mathrm{non-diss}}^\sigma
=r_0^3\int d^3x\bigg(
&3(\partial_t\xi_t^\sigma)^2
+\frac{3}{2}(\partial_t\xi_x^\sigma)^2
+3(\partial_t\xi_t^\sigma)(\partial_x\xi_x^\sigma)\\
&-3\partial_t\xi_x^\sigma\,\delta g_{tx}^{\sigma(s)}
-3\partial_t\xi_t^\sigma(\delta g_{tt}^{\sigma(s)}+\delta g_p^{\sigma(s)}/2)
-\frac18(\delta g_m^{\sigma(s)})^2\\
&+\frac12\delta g_p^{\sigma(s)}\delta g_{tt}^{\sigma(s)}
+(\delta g_{tt}^{\sigma(s)})^2
+\frac12(\delta g_{tx}^{\sigma(s)})^2
\bigg).
\end{align}$$

At first derivative order the longitudinal correction is

$$\begin{align}
S_{\mathrm{hydro},1}^{\parallel}
=r_0^2\int d^3x\left(
-\frac14B_m^-\partial_tB_m^+
+\frac{3i}{4\pi}B_{tx}^-\partial_xB_m^-
\right).
\end{align}$$

The paper then rewrites the result in terms of the nonlinear diffeomorphism-invariant metric pullback

$$\begin{align}
{\mathcal B}_{\mu\nu}(x)
=\frac{\partial y^\alpha}{\partial x^\mu}
\frac{\partial y^\beta}{\partial x^\nu}
g_{\alpha\beta}^{(s)}(y(x))-\eta_{\mu\nu},\qquad
y^\mu=x^\mu-\xi^\mu.
\end{align}$$

To quadratic order,

$$\begin{align}
{\mathcal B}_{\mu\nu}
=&\delta g_{\mu\nu}^{(s)}
-\partial_\mu\xi_\nu-\partial_\nu\xi_\mu
-\partial_\rho\delta g_{\mu\nu}^{(s)}\xi^\rho
-\delta g_{\mu\rho}^{(s)}\partial_\nu\xi^\rho
-\delta g_{\rho\nu}^{(s)}\partial_\mu\xi^\rho
+\partial_\mu\xi^\alpha\partial_\nu\xi_\alpha.
\end{align}$$

This is the action's cleanest local-formalism translation: the hydrodynamic mode is an embedding/diffeomorphism field, while ${\mathcal B}$ is the induced metric perturbation seen after dragging the boundary source along the relative horizon-boundary map.

## Correlators and fluctuation-dissipation check

After integrating out $\xi_\mu^\sigma$, the retarded momentum-density correlators are

$$\begin{align}
G^R_{T^{ty}T^{ty}}(\omega,k)
=-\frac{r_0^2k^2}{i\omega-k^2/(3r_0)}-2r_0^3,
\end{align}$$

and

$$\begin{align}
G^R_{T^{tx}T^{tx}}(\omega,k)
=-\frac{3r_0^3\omega^2}{\omega^2-k^2/2+i\omega k^2/(3r_0)}+r_0^3.
\end{align}$$

These match the conformal-fluid variational formulas after inserting

$$\begin{align}
\eta=\frac{s}{4\pi}=r_0^2,\qquad \varepsilon+p=3r_0^3.
\end{align}$$

The symmetric correlators are

$$\begin{align}
G^S_{T^{ty}T^{ty}}(\omega,k)
=\frac{3r_0^3}{2\pi}
\frac{k^2(1-2k^2/(3r_0^2))}
{\omega^2+k^4/(9r_0^2)},
\end{align}$$

and

$$\begin{align}
G^S_{T^{tx}T^{tx}}(\omega,k)
=\frac{3r_0^3}{2\pi}
\frac{\omega^2k^2(1-2k^2/(3r_0^2))}
{(\omega^2-k^2/2)^2+\omega^2k^4/(9r_0^2)}.
\end{align}$$

The terms suppressed by two additional derivatives are outside the controlled first-derivative calculation. Dropping those numerator corrections, the paper's fluctuation-dissipation relation uses

$$\begin{align}
G^S_{ij}=\frac12\coth\left(\frac{\omega}{2T}\right)\Delta_{ij},\qquad
i\Delta_{ij}=G^R_{ij}-G^A_{ij}.
\end{align}$$

## Horizon symmetries and the boundary-condition split

Near-horizon diffeomorphisms preserving radial gauge can be written as

$$\begin{align}
\chi_r^\sigma&=\delta T^\sigma+O((r-r_0)^2),\\
\chi_i^\sigma&=r^2\delta X_i^\sigma+r\partial_i\delta T^\sigma+O((r-r_0)^2),\\
\chi_t^\sigma&=-D(r)\delta T^\sigma-r\partial_t\delta T^\sigma+\delta R^\sigma+O((r-r_0)^2).
\end{align}$$

For the variational-principle boundary conditions, preservation gives

$$\begin{align}
\delta T^\sigma
&=b_1^\sigma+b_2^\sigma e^{-\kappa_0t}+d_1^\sigma e^{\kappa_0t},\\
\delta R^\sigma
&=b_3^\sigma e^{\kappa_0t}-r_0\kappa_0b_2^\sigma e^{-\kappa_0t},\\
\delta X_i^\sigma
&=b_i^\sigma-\frac{1}{r_0}\partial_i b_2^\sigma e^{-\kappa_0t}
-\frac{1}{\kappa_0r_0^2}\partial_i b_3^\sigma e^{\kappa_0t},
\end{align}$$

with

$$\begin{align}
2(-\nabla^2+3r_0^2)b_3^\sigma
+3r_0^2(3r_0^2+\nabla^2)d_1^\sigma=0.
\end{align}$$

The induced hydrodynamic-field transformations are

$$\begin{align}
\delta_H\xi_t^\sigma&=b_1^\sigma+b_2^\sigma e^{-\kappa_0t}+d_1^\sigma e^{\kappa_0t},\\
\delta_H\xi_i^\sigma&=-b_i^\sigma+\frac{1}{r_0}\partial_i b_2^\sigma e^{-\kappa_0t}
+\frac{1}{\kappa_0r_0^2}\partial_i b_3^\sigma e^{\kappa_0t}.
\end{align}$$

The traceless-continuity conditions across the two SK branches further impose

$$\begin{align}
\partial_i\bar b_j^-+\partial_j\bar b_i^- -\delta_{ij}\partial_l\bar b_l^-=0,\qquad
\Delta_{ij}\mathfrak d^-=0.
\end{align}$$

At nonzero spatial momentum, the off-diagonal time-independent shifts are reduced and the exponentially growing off-diagonal mode is forced to vanish. Thus the SK branch-coupling horizon condition breaks part of the naive two-copy horizon symmetry.

With the alternative condition $\partial_r\delta g_{tt}^\sigma(r_0)=0$, the preserved horizon diffeomorphisms match the Knysh et al. profile with $d_1^\sigma=0$ and unconstrained $b_3^\sigma$. The price is that the relation between hydrodynamic equations and Einstein constraints is only order-by-order and becomes subtle near $\omega=2\pi iT$.

## Translation to local vault conventions

- Boundary/CPS object: the paper does not compute an Iyer-Wald presymplectic current, but $S_{\mathrm{bulk}}$ reduces to relative-diffeomorphism times a radially conserved constraint. This is a Hamiltonian-reduction analogue of "edge mode times constraint" in finite-boundary phase space.
- Edge-mode analogue: $\xi_\mu^\sigma$ is the edge-mode-like relative diffeomorphism between horizon and asymptotic boundary. It vanishes in radial gauge, just as a pure gauge choice can hide the boundary coordinate mode.
- Source/response split: $\delta g_{\mu\nu}^{(s)}$ is the asymptotic metric source; ${\mathcal B}_{\mu\nu}$ is the diffeomorphism-dressed source; the stress tensor is obtained by varying the action with respect to $\delta g_{\mu\nu}^{(s)}$ on each branch.
- Constraint/equation split: partially on-shell gravity imposes radial dynamical equations but leaves energy-momentum conservation constraints. Varying $\xi$ imposes those constraints. This is the clean local mechanism to compare with boundary gauge transformations in CPS notes.
- Horizon symmetry lesson: a horizon symmetry is not just a vector field near $r=r_0$; it is a vector field preserving the chosen variational boundary data and the SK branch-gluing conditions.

## Verification log

### Checked

- Mathematica checked the fluctuation-dissipation relation for the displayed $T^{ty}$ and $T^{tx}$ momentum-density correlators, using $4\pi T=3r_0$, $G^A(\omega,k)=G^R(-\omega,-k)$, and the paper convention $i\Delta=G^R-G^A$. After dropping the explicitly uncontrolled two-derivative numerator corrections in $G^S$, both differences simplify to zero.
- Source equations were checked against the official arXiv TeX source for the background metric, horizon boundary conditions, transverse and longitudinal constraint formulas, the manifestly diffeomorphism-invariant ${\mathcal B}_{\mu\nu}$ definition, and the horizon-symmetry transformations.

### Blocked

- I did not reproduce the full radial Einstein-equation reduction from the quadratic Einstein-Hilbert action. A full check would require an xAct/xPert component calculation for the AdS4-Schwarzschild background, the transverse and longitudinal decompositions, and the CGL horizon continuation.
- I did not independently derive the UV Fefferman-Graham matching constants or the logarithmic horizon matching constants. The exact input needed is the component expansion of the perturbed metric in Schwarzschild and ingoing coordinates through the same derivative order as the paper.
- I did not test the exponentially growing horizon-symmetry mode as an action symmetry, because the source paper itself states that this requires an all-derivative action not available in the paper.

### Failed

- No failed mathematical check was found in the limited independent checks performed here.
