---
paper id: 2608.13289v1
title: Differential Obstructions to Curvature-Dependent Conformal Transformations
authors:
  - David S. Pereira
  - Francisco S.N. Lobo
  - José Pedro Mimoso
publication date: 2026-08-13
abstract: |-
  Curvature-dependent conformal rules are local forward assignments on known metrics but are not generically local changes of metric variables. For the nondegenerate class g-tilde = F(R[g])g, the complete inverse metric tangent map contains a nonpolynomial longitudinal projector. Metric f(R) gravity realizes the distinction between a local scalar--tensor parent and a differentially projected metric theory, with consequences for boundary data, Hessians, Gaussian measures, zero modes, weak-field response, and cosmology.
comments: "25 pages, 1 figure"
url: https://arxiv.org/abs/2608.13289v1
summary: "A careful finite-jet no-go result and a projected-field-space treatment of off-shell metric f(R) theory in Einstein variables."
tags: []
---

Back to [[2026_08_14_overview]].

The direct verdict is:

> Correct under the paper's precise conditions: for $F>0$, $F_R\ne0$, and an open set of unrestricted metrics, the map $\widetilde g_{\mu\nu}=F(R[g])g_{\mu\nu}$ has no differentiable finite-jet metric-only inverse. This does not exclude branchwise Green-operator inverses after boundary or Cauchy data are fixed.

The paper's most useful conceptual distinction is among:

1. a local forward map of a known metric;
2. an algebraic Weyl redefinition on an enlarged metric--scalar parent field space;
3. a metric-only inverse, which requires solving a differential projection;
4. an unrestricted scalar--tensor parent theory, which has a larger off-shell fluctuation domain than the projected metric theory.

# How to read this long paper

- **Essential theorem:** Sections II--IV. These contain the fixed-point equation, full inverse symbol, $f(R)$ parent, normal operator, and tangent constraint.
- **Essential variational content:** Sections V and VI. Boundary/Cauchy data define the section; the pulled-back Hessian includes an off-shell embedding term.
- **Useful benchmarks:** Sections VII--X. They connect the normal inverse to Yukawa response, cosmological response, spectral graph failure, and the exact Gaussian nonlocal kernel.
- **Scope control:** Sections XI and XII. Palatini and higher-curvature models require separate normal matrices; no generic quantum equivalence theorem is claimed.
- **Do not conflate:** Legendre degeneracy, nonlocal inverse, nonunique graph, tachyonic response, normal zero mode, and a zero mode of the projected action Hessian.

# Complete source map

1. **Introduction:** defines finite-jet locality and separates solution maps from off-shell field redefinitions.
2. **Curvature-dependent conformal maps:** derives the differential fixed point, auxiliary localization, inverse symbol, and off-shell fibers.
3. **Metric $f(R)$ gravity and its local parent:** constructs the Legendre scalar, Einstein-frame parent, differential projection, and common-shell identity.
4. **Normal operator and inverse sections:** derives $\mathcal L_\Phi$, its Green response, kernel/cokernel compatibility, mass parameter, and metric source $B[\gamma]$.
5. **Boundary conditions and variational data:** records the $f_RK$ completion and emphasizes that the operator expression alone does not define an inverse.
6. **Projected Hessian and constrained Gaussian theory:** differentiates the section twice, derives the embedding correction, and separates projected, restricted-parent, and unrestricted-parent Hessians.
7. **Weak-field limit and compact scalar charges:** recovers the $R+\alpha R^2$ Yukawa scalaron and source-determined exterior charge.
8. **Cosmological projection and scalaron response:** gives the nonlinear FLRW section ODE, retarded linear response, quasistatic denominator, and reconstruction map.
9. **Breakdown of the projected graph:** distinguishes operator noninvertibility from physical instability and gives Euclidean spectral examples.
10. **Metric-only Einstein-side action:** obtains the nonlocal scalar-curvature kernel, determinant, and zero-mode compatibility condition by constrained Gaussian elimination.
11. **Beyond metric $f(R)$:** compares metric, scalar--tensor, Palatini, hybrid, and higher-curvature carrier problems.
12. **Discussion:** restates the finite-jet result and lists the missing gauge-fixed quantum and nonlinear-global analyses.
13. **Appendices:** derive the normal operator and the second-variation embedding term.

# Generic curvature-dependent map

Consider

$$
\widetilde g_{\mu\nu}=F(R[g])g_{\mu\nu},
\qquad F>0.
$$

Given $\widetilde g$, write

$$
g_{\mu\nu}=F(R_J)^{-1}\widetilde g_{\mu\nu},
\qquad R_J=R[g].
$$

The unknown curvature must satisfy

$$
R_J=R[F(R_J)^{-1}\widetilde g].
$$

In four dimensions the conformal formula gives

$$
R_J=F\widetilde R+3F_R\widetilde\Box R_J
+3\left(F_{RR}-\frac32\frac{F_R^2}{F}\right)
(\widetilde\nabla R_J)^2.
$$

This is a nonlinear differential fixed point. Formal iteration generally generates derivatives of unbounded order. That observation motivates the result, but the actual no-go proof uses the complete inverse response rather than derivative counting alone.

# Auxiliary localization and symbol proof

Introduce an independent carrier $X$:

$$
\widetilde g_{\mu\nu}=F(X)g_{\mu\nu}.
$$

The Weyl map is now algebraic, while the metric sector is selected by

$$
\widehat{\mathcal P}_F[\widetilde g,X]
=R[F(X)^{-1}\widetilde g]-X=0.
$$

Explicitly,

$$
\widehat{\mathcal P}_F
=F\widetilde R+3F_X\widetilde\Box X
+3\left(F_{XX}-\frac32\frac{F_X^2}{F}\right)(\widetilde\nabla X)^2-X.
$$

Linearize as

$$
\delta\widehat{\mathcal P}_F=B_F[\gamma]+\mathcal N_F\chi,
\qquad
\gamma_{\mu\nu}=\delta\widetilde g_{\mu\nu},
\quad \chi=\delta X.
$$

For a noncharacteristic covector $\xi^2\ne0$, the principal symbols are

$$
\sigma_2(\mathcal N_F)=-3F_X\xi^2,
$$

$$
\sigma_2(B_F)\gamma
=F(-\xi^\mu\xi^\nu\gamma_{\mu\nu}+\xi^2\gamma).
$$

Therefore

$$
\sigma_0(-\mathcal N_F^{-1}B_F)\gamma
=-\frac{F}{3F_X}
\left(\frac{\xi^\mu\xi^\nu}{\xi^2}\gamma_{\mu\nu}-\gamma\right).
$$

The inverse metric response is

$$
\sigma_0(\delta g_{\mu\nu})
=\frac1F\gamma_{\mu\nu}
+\frac1{3F}
\left(\frac{\xi^\alpha\xi^\beta}{\xi^2}\gamma_{\alpha\beta}-\gamma\right)
\widetilde g_{\mu\nu}.
$$

A finite-order differential operator has polynomial momentum dependence. The longitudinal factor $\xi^\mu\xi^\nu/\xi^2$ is nonpolynomial, so a $C^1$ finite-jet inverse on an open set of unrestricted metrics would contradict its own linearization.

The conclusion is microlocal and generic. At $\xi^2=0$ one must choose a global Green prescription; special symmetry reductions or exceptional cancellations require separate proof.

# Off-shell fibers

A single transformed metric can have multiple preimages. On a monotonic branch, set

$$
g_{\mu\nu}=\varphi^2\widetilde g_{\mu\nu}.
$$

Then the fiber equation is

$$
6\widetilde\Box\varphi
=\varphi\left[\widetilde R-\varphi^2r_F(\varphi^{-2})\right],
$$

where $r_F$ is the local inverse of $F$. For $F=1+2\alpha R$ and $\widetilde g=\eta$, homogeneous fibers satisfy

$$
\ddot\varphi+\frac{\varphi(\varphi^2-1)}{12\alpha}=0,
$$

with conserved energy

$$
E_\varphi=\frac12\dot\varphi^2+\frac{(\varphi^2-1)^2}{48\alpha}.
$$

For $0<E_\varphi<1/(48\alpha)$ there are positive oscillatory preimages above the same Minkowski transformed metric. These are generally off shell, so they do not contradict equivalence of exact regular solutions.

# Metric $f(R)$ parent and differential projection

On a regular Legendre branch,

$$
\Phi=f_X(X),
\qquad f_{XX}\ne0,
\qquad \Phi>0,
$$

and

$$
U(\Phi)=\Phi X(\Phi)-f(X(\Phi)).
$$

The Jordan parent is

$$
S_J=\frac1{2\kappa^2}\int\sqrt{-g}[\Phi R-U(\Phi)]+S_m.
$$

With

$$
\widetilde g_{\mu\nu}=\Phi g_{\mu\nu},
\qquad s=\ln\Phi,
$$

the Einstein-frame parent becomes

$$
S_E=\frac1{2\kappa^2}\int\sqrt{-\widetilde g}
\left[\widetilde R-\frac32(\widetilde\nabla s)^2-W(s)\right]
+S_m[e^{-s}\widetilde g,\psi].
$$

The original metric theory is not the unrestricted parent. It is the constraint set

$$
\widehat{\mathcal P}_f[\widetilde g,s]
=e^s\left[\widetilde R+3\widetilde\Box s
-\frac32(\widetilde\nabla s)^2\right]-X(e^s)=0.
$$

On the full parent shell this projection is a linear combination of the parent metric trace and scalar equations. Exact regular parent and metric solutions therefore coincide. The distinction begins off shell.

# Normal operator and tangent section

The linearized constraint is

$$
B[\gamma]+\mathcal L_\Phi\sigma=0,
\qquad
\sigma=\delta s.
$$

On the projected section,

$$
\mathcal L_\Phi
=3\Phi(\widetilde\Box-\widetilde\nabla^\mu s\,\widetilde\nabla_\mu)
+X(\Phi)-\Phi X_\Phi(\Phi).
$$

For a chosen right inverse $G_P$,

$$
\sigma=-G_PB[\gamma]+\sigma_h,
\qquad
\mathcal L_\Phi\sigma_h=0.
$$

The Green operator determines a particular sourced response. Homogeneous data are separate boundary or Cauchy data.

If the realization has kernel or cokernel,

$$
\Pi_{\rm coker}B[\gamma]=0
$$

is the Fredholm compatibility condition. A normal zero mode obstructs a unique graph only for the chosen domain; it does not automatically imply a physical flat direction.

On a constant projected background,

$$
\mathcal L_\Phi=3f_R(\widetilde\Box-m_E^2),
$$

$$
m_E^2=\frac{f_R-Rf_{RR}}{3f_Rf_{RR}},
\qquad
m_J^2=f_Rm_E^2.
$$

On a common-shell background this is the physical scalaron pole after conformal rescaling. Off shell it is a projection-response parameter.

# Pure-trace response remains nonlocal

For constant $s$ the frozen tangent symbol is

$$
\widehat{\delta s_\star}
=-\frac{widetilde R^{\mu\nu}\widehat\gamma_{\mu\nu}
+\xi^\mu\xi^\nu\widehat\gamma_{\mu\nu}-\xi^2\widehat\gamma}
{3(\xi^2+m_E^2)}.
$$

For $\widehat\gamma_{\mu\nu}=\widehat\gamma\widetilde g_{\mu\nu}/4$,

$$
\widehat{\delta s_\star}
=\left[
\frac14-\frac1{12f_{RR}}\frac1{\xi^2+m_E^2}
\right]\widehat\gamma.
$$

The identity used here is

$$
\widetilde R+3m_E^2=\frac1{f_{RR}}.
$$

Since $f_{RR}$ is finite and nonzero on a regular Legendre branch, the inverse-operator residue does not vanish. The obstruction is therefore not confined to diffeomorphism directions.

# Boundary and inverse data

The usual metric boundary completion is

$$
S_{\partial f}=\frac1{\kappa^2}\int_{\partial\mathcal M}\sqrt{|h|}\,f_RK,
$$

with induced metric plus higher-derivative data such as $\delta R|_{\partial\mathcal M}=0$. The boundary term alone does not eliminate the need for this additional datum.

Different problems require different inverses:

- elliptic Dirichlet/Neumann/Robin maps for Euclidean or static boundary problems;
- retarded/advanced solution operators for Lorentzian Cauchy problems;
- self-adjoint or Euclidean inverses for ordinary variational quadratic forms;
- Feynman inverses for in--out effective actions.

A retarded Green operator is not symmetric, so it cannot simply be inserted as the Hessian kernel of a standard single-history action.

# Pulled-back Hessian

Define the metric-only section action

$$
S_\star[\widetilde g]=S_E[\widetilde g,s_\star[\widetilde g]].
$$

For tangent lifts $\eta_a=(\gamma_a,\sigma_a)$,

$$
\delta^2s_\star[\gamma_1,\gamma_2]
=-G_P\delta^2\widehat{\mathcal P}_f[\eta_1,\eta_2].
$$

Hence

$$
\boxed{
\delta^2S_\star
=\delta^2S_E[\eta_1,\eta_2]
-\left\langle E_s,
G_P\delta^2\widehat{\mathcal P}_f[\eta_1,\eta_2]
\right\rangle
}.
$$

The second term is the embedding correction. It is the normal Euler derivative contracted with the second fundamental form of the constraint section. It vanishes on the parent scalar shell, but it is generally present off shell.

Thus three quadratic objects differ:

$$
H_{\rm metric}^{\rm proj}
=H_{\rm parent}|_{T\mathcal M_f}+H_{\rm embed},
$$

$$
H_{\rm restricted}=H_{\rm parent}|_{T\mathcal M_f},
\qquad
H_{\rm parent}=H_{\rm parent}[\gamma,\sigma\ \text{arbitrary}].
$$

An unrestricted scalar--tensor Gaussian cannot be turned into the metric result merely by adding or deleting a scalar determinant.

# Explicit $R+\alpha R^2$ checks

For

$$
f(R)=R+\alpha R^2,
\qquad
m_s^2=\frac1{6\alpha},
$$

the flat projected constraint is

$$
\widetilde R^{(1)}+3(\widetilde\Box-m_s^2)s=0.
$$

On a constant projected but off-parent-shell background, the paper gives a nonzero constant-mode embedding contribution in exponential metric coordinates:

$$
\Delta H_{\chi_0}^{(\exp)}
=-\frac{V_E}{\kappa^2}
\frac{(\Phi-1)^2}{\alpha\Phi}\chi_0^2.
$$

Its isolated sign is not a parametrization-independent stability criterion. The covariant statement is the full pullback identity.

For a self-adjoint inverse, constrained Gaussian elimination gives

$$
S_{\star,0}^{(2)}
=S_{\rm EH}^{(2)}
+\frac1{12\kappa^2}\int
\widetilde R^{(1)}\frac1{\widetilde\Box-m_s^2}\widetilde R^{(1)}.
$$

Simultaneously it produces the normal determinant $|\det(3D_s)|^{-1}$ for the displayed factorized scalar measure. A complete quantum answer still needs the pushed-forward Jordan metric measure, projected gauge and ghosts, regularization, phase/contour, and zero-mode treatment.

# Weak-field and cosmological response

For a static nonrelativistic source,

$$
(\Delta-m_s^2)s=-\frac{\kappa^2}{3}\rho.
$$

With regularity, matching, and decay,

$$
s_{\rm ext}(r)=\frac{Q_se^{-m_sr}}r,
$$

$$
Q_s=\frac{\kappa^2}{3m_s}\int_0^{R_b}d\bar r\,
\bar r\sinh(m_s\bar r)\rho(\bar r).
$$

The same denominator yields the standard $1/3$ Yukawa correction to the Jordan potentials. The exterior scalar charge is fixed only for this static boundary problem; Lorentzian scalaron waves correspond to different homogeneous Cauchy data.

For homogeneous Einstein-frame FLRW, the projection becomes

$$
e^s\left[
6(\dot{\widetilde H}+2\widetilde H^2)
-3\ddot s-9\widetilde H\dot s+\frac32\dot s^2
\right]=X(e^s).
$$

It is a nonlinear second-order ODE requiring branch and initial data. In the weak Starobinsky regime,

$$
\ddot s+3\widetilde H\dot s+m_s^2s\simeq\frac{\widetilde R}{3},
$$

whose retarded solution contains both a curvature-sourced particular response and independent homogeneous scalaron data.

# Spectral graph breakdown

On a compact Euclidean constant-curvature background,

$$
-\widetilde\Box Y_n=\lambda_nY_n,
$$

$$
\mathcal L_\Phi Y_n=-3\Phi(\lambda_n+m_E^2)Y_n.
$$

The chosen graph fails to be uniquely invertible when $\lambda_n+m_E^2=0$. On $S^4$,

$$
\lambda_\ell=\frac{\ell(\ell+3)}{a^2}.
$$

This is a zero mode of the normal operator realization. It is not automatically a zero mode of the projected action Hessian, a nonlinear fold, or a physical instability.

# Relevance to current projects

**Reason codes:** `T1-boundary`, `T2-model`, `T2-spectral`, `T3-math`.

- The paper is a strong example of parameter/domain closure failure: writing a differential operator is not enough; an inverse requires its function spaces, boundary/Cauchy data, kernel, and cokernel.
- Its pulled-back Hessian is directly relevant to CPS/pAQFT and gluing, where restricting the field space changes both allowed variations and boundary data.
- The distinction between retarded response and symmetric variational kernels is important for causal effective equations.
- The paper preserves the scalaron as a physical spin-zero metric mode while denying that it is a local finite-jet function of the Einstein metric alone.
- It is medium rather than high priority because the vault's active work concerns boundary/CPS constructions directly, whereas this paper develops a modified-gravity field-redefinition benchmark.

# Evidence audit

## Source-derived

- The official abstract, full 25-page PDF, complete TeX source, all twelve main sections, and both appendices were read.
- PDF pages 1, 7, 12, 19, and 24 were rendered and visually checked; the field-space diagram, normal-operator formulas, embedding formulas, spectral section, and bibliography were legible.
- The first direct arXiv e-print request failed transiently; the official export arXiv e-print endpoint succeeded, so no source content remained blocked.

## Checked

- **Mathematica:** composing the scalar response symbol with the inverse-metric variation reproduces the displayed inverse metric symbol with zero residual.
- **Mathematica:** $\widetilde R+3m_E^2=1/f_{RR}$ and the pure-trace decomposition both simplify identically.
- **Mathematica:** the homogeneous fiber oscillator conserves the displayed energy.
- **Mathematica:** the constant-mode $R+\alpha R^2$ second projection and embedding-Hessian coefficient reproduce the paper's formulas exactly.
- **Analytic Gaussian check:** solving $\widetilde R^{(1)}+3D_ss=0$ and substituting into $(3/2)\langle s,D_ss\rangle$ gives $(1/6)\langle\widetilde R^{(1)},D_s^{-1}\widetilde R^{(1)}\rangle$; the pairing supplies the final $1/(12\kappa^2)$ coefficient.
- **Symbol logic:** a finite-order differential inverse would have polynomial symbol, incompatible with the nonzero $1/\xi^2$ longitudinal term for $F_R\ne0$.

## Blocked

- The paper gives a structural constrained path integral, not a fully gauge-fixed one-loop computation. No explicit pushed-forward metric measure or projected ghost determinant is supplied for independent evaluation.
- No numerical solver is supplied for the nonlinear global section or off-shell fiber bifurcations.

## Not independently verified

- Full covariant variation of every arbitrary-background tensor term in $B[\gamma]$ and $\delta^2\widehat{\mathcal P}_f$.
- Existence and uniqueness of any nonlinear global section beyond the local implicit-function framework.
- Complete gauge-fixed one-loop equivalence, determinant phases, renormalization, or unitarity.
- Cosmological observable formulas beyond their standard quasistatic algebra and the stated approximations.
- Exceptional symmetry-reduced or higher-curvature models, which require separate normal-matrix calculations.

# Achieved claim tier

**Verified tier:** the finite-jet symbol obstruction and its main algebraic/variational $R+\alpha R^2$ consequences, with complete source reconstruction and explicit operator-domain qualifications.

**Not achieved:** a nonlinear global inverse theorem, a full gauge-fixed quantum comparison, or a universal result for Palatini, metric-affine, and general higher-curvature transformations.
