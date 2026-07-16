---
paper id: 2607.12834v1
title: "Timelike Entanglement First Law and Linearized Field Equations in Higher Curvature Gravity"
authors:
  - Mei-Hui Xiao
  - Guo-Ying Li
  - Song He
  - Jia-Rui Sun
publication date: 2026-07-14T14:52:31
abstract: |-
  The paper studies holographic timelike entanglement for hyperbolic regions when the bulk theory is Lovelock gravity. Using double Wick rotation and the Jacobson--Myers entropy functional, it shows first in cubic Lovelock gravity and then at arbitrary Lovelock order that the linear entropy variation and modular-energy variation acquire the same coupling-dependent normalization. For normalizable Fefferman--Graham perturbations with fixed boundary sources, the timelike first law is equivalent to the linearized Lovelock field equations about a non-critical AdS vacuum.
comments: ""
url: https://arxiv.org/abs/2607.12834v1
summary: "The linearized bulk equation, boundary stress tensor, and timelike entanglement variation are all controlled by the same Lovelock vacuum derivative, provided the AdS branch is non-critical and the source and surface boundary terms obey the paper's restrictions."
tags: []
---

Back to [[2026_07_15_overview]].

The central reusable coefficient is

$$\begin{align}
C_L =1-\sum_{m=2}m\lambda_m f_\infty^{m-1} =-P'(f_\infty).
\end{align}$$

It multiplies three different objects: the linearized Lovelock equation, the holographic stress tensor, and the first variation of the Jacobson--Myers entropy. The paper thereby proves a first-law/EOM equivalence in its hyperbolic, normalizable, fixed-source sector. It does not derive the Lovelock presymplectic potential, symplectic current, or Iyer--Wald charge.

# Source structure and reading map

| Source part | Technical role |
|---|---|
| 1. Introduction | Relates timelike entanglement first laws to bulk dynamics |
| 2.1 Lovelock gravity | Defines Euler densities, the AdS vacuum polynomial, Wald entropy, and Jacobson--Myers entropy |
| 2.2 Holographic timelike entanglement entropy | Uses double Wick rotation to define the relevant complex extremal surface |
| 2.3 Timelike entanglement first law | Gives the modular Hamiltonian for the hyperbolic timelike region |
| 3.1 Low-energy excitation in cubic Lovelock | Introduces the black-brane perturbation and the induced geometry |
| 3.2 $\Delta S=\Delta\langle H\rangle$ | Computes bulk and surface entropy variations and the holographic stress tensor |
| 4. Linearized field equations | Reduces the general Lovelock variation on AdS to $C_L\delta G_{AB}=0$ |
| 5.1 Stress tensor in general Lovelock | Derives the Myers completion, canonical momentum, counterterm, and normalizable response |
| 5.2 Extremal surface | Shows that the spherical complex surface extremizes the completed entropy functional |
| 5.3 General timelike entropy | Separates algebraic Euler-density variation from Palatini and surface terms |
| 6. Conclusions | States the regime of the first-law/EOM equivalence |
| Appendix A | Fixes extrinsic-curvature conventions for the conformal and extremal-surface boundaries |

# Lovelock AdS vacuum and effective coupling

## Action and Euler densities

In $D=d+1$ bulk dimensions the action is

$$\begin{align}
I =\frac{1}{16\pi G_{d+1}} \int d^{d+1}x\sqrt{-g}
\sum_{m=0}^{\lfloor(d+1)/2\rfloor} c_mL^{2m-2}\mathcal L_m(R), \tag{2.1}
\end{align}$$

with

$$\begin{align}
\mathcal L_m(R) =\frac{1}{2^m} \delta_{B_1\cdots B_{2m}}^{A_1\cdots A_{2m}} R_{A_1A_2}{}^{B_1B_2}\cdots R_{A_{2m-1}A_{2m}}{}^{B_{2m-1}B_{2m}}. \tag{2.2}
\end{align}$$

The AdS metric has effective radius

$$\begin{align}
\widetilde L^2=\frac{L^2}{f_\infty},
\end{align}$$

where the chosen branch solves

$$\begin{align}
1=f_\infty-\sum_{m=2}^{\lfloor d/2\rfloor} \lambda_m f_\infty^m, \qquad \lambda_m=(-)^m\frac{(d-2)!}{(d-2m)!}c_m. \tag{2.4--2.5}
\end{align}$$

Equivalently,

$$\begin{align}
P(f)=1-f+\sum_{m\ge2}\lambda_m f^m,\qquad P(f_\infty)=0.
\end{align}$$

The physical branch used throughout is the one continuously connected to Einstein gravity.

## Wald versus Jacobson--Myers entropy

For a codimension-two surface $\Sigma$, the Wald expression contains the tangential projection of the bulk curvature:

$$\begin{align}
S_{\rm W} =\frac{1}{4G_{d+1}}\int_\Sigma d^{d-1}x\sqrt\gamma \left[ 1+\sum_{m=2}m c_mL^{2m-2} \mathcal L_{m-1}(R^\parallel[g]) \right]. \tag{2.7}
\end{align}$$

Gauss--Codazzi gives

$$\begin{align}
R^\parallel_{ijkl}[g] =\mathcal R_{ijkl}[\gamma] -\eta_{\hat m\hat n} \left( \mathfrak K^{\hat m}_{ik}\mathfrak K^{\hat n}_{jl} -\mathfrak K^{\hat m}_{il}\mathfrak K^{\hat n}_{jk} \right). \tag{2.8}
\end{align}$$

The holographic entropy functional used in the paper is instead

$$\begin{align}
S_{\rm JM} =\frac{1}{4G_{d+1}}\int_\Sigma d^{d-1}x\sqrt\gamma \left[ 1+\sum_{m=2}m c_mL^{2m-2} \mathcal L_{m-1}(\mathcal R[\gamma]) \right], \tag{2.9}
\end{align}$$

together with its own boundary completion. Wald and Jacobson--Myers agree for the spherical surface considered later because its two second fundamental forms vanish. This is a property of that special extremal surface, not a general equivalence of the two functionals.

# Timelike entropy and modular energy

The timelike first law is written in the usual relative-entropy form

$$\begin{align}
\Delta S=\Delta\langle H\rangle. \tag{2.11}
\end{align}$$

After double Wick rotation, the relevant timelike interval becomes a hyperbolic region $\mathcal D'$ whose local modular Hamiltonian is

$$\begin{align}
H_{\mathcal D'} =2\pi\int_{\mathcal D'}d\tau\,d^{d-2}\mathbf x\, \frac{T_0^2-\tau^2-\mathbf x^2}{2T_0} T^{(d-1)(d-1)}. \tag{2.14}
\end{align}$$

The field-theory input is therefore the boundary stress response. The bulk input is the first variation of the completed Jacobson--Myers functional on the complex spherical surface.

# Cubic Lovelock thermal excitation

## Vacuum polynomial and entropy functional

For the cubic example,

$$\begin{align}
1=f_\infty-\lambda f_\infty^2-\mu f_\infty^3, \tag{3.2}
\end{align}$$

so

$$\begin{align}
C_L^{(3)} =1-2\lambda f_\infty-3\mu f_\infty^2.
\end{align}$$

The completed entropy contains the intrinsic Einstein, Gauss--Bonnet, and cubic Lovelock densities on the codimension-two surface, plus a Myers-type term on its cutoff boundary. That surface term is essential for a well-posed variation even though its first-order contribution vanishes in the conformal limit used here.

## Normalizable black-brane perturbation

At first order in $m_z$, the double-Wick-rotated metric is

$$\begin{align}
ds^2 =\frac{\widetilde L^2}{z^2} \left[ (1+m_zz^d)dz^2 +(1-m_zz^d)d\tau^2 +d\mathbf x^2 \right]. \tag{3.6}
\end{align}$$

The unperturbed spherical embedding is

$$\begin{align}
\xi(u)=T_0\cos(u/T_0),\qquad z(u)=T_0\sin(u/T_0). \tag{3.7}
\end{align}$$

Because this background surface already extremizes the completed functional, the first-order entropy change can be evaluated at fixed embedding. The source computes the induced metric, its determinant, and its intrinsic-curvature variation. A representative identity is

$$\begin{align}
\delta\mathcal R =\frac{d-2}{\widetilde L^2}\delta\gamma +\nabla_i\nabla_j\delta\gamma^{ij} -\nabla^2\delta\gamma. \tag{3.14}
\end{align}$$

The divergence terms are precisely where the entropy surface completion matters.

## Common renormalization of entropy and stress

After including the surface term and taking the cutoff $\epsilon\to0$, the entropy variation is

$$\begin{align}
\Delta S =C_L^{(3)}\Delta S_{\rm Einstein}. \tag{3.31, 4.11}
\end{align}$$

The holographically renormalized stress tensor satisfies

$$\begin{align}
\Delta T_{\mu\nu} =C_L^{(3)}\Delta T_{\mu\nu}^{\rm Einstein}, \tag{3.38}
\end{align}$$

and hence

$$\begin{align}
\Delta\langle H\rangle =C_L^{(3)} \Delta\langle H\rangle_{\rm Einstein} =\Delta S. \tag{3.41}
\end{align}$$

The equality is not obtained by discarding all boundary terms. It follows after the action and entropy variations have each been given their correct Myers completion and the remaining cutoff contributions have been shown to vanish with the paper's normalizable falloff.

# Arbitrary-order Lovelock linearized equations

The exact Lovelock equations are

$$\begin{align}
\sum_m c_mL^{2m-2}\mathcal E^{(m)}_{AB}=0. \tag{4.1}
\end{align}$$

On the maximally symmetric background

$$\begin{align}
\overline R_{ABCD} =-\frac{1}{\widetilde L^2} (\overline g_{AC}\overline g_{BD} -\overline g_{AD}\overline g_{BC}), \tag{4.3}
\end{align}$$

the generalized-delta contractions reduce the full variation to

$$\begin{align}
\sum_m c_mL^{2m-2}\delta\mathcal E^{(m)}_{AB} = \left( 1-\sum_{m=2}m\lambda_mf_\infty^{m-1} \right)\delta G_{AB} =C_L\,\delta G_{AB}=0. \tag{4.9}
\end{align}$$

Thus

$$\begin{align}
G_{\rm eff}^{-1}=G_{d+1}^{-1}C_L. \tag{4.10}
\end{align}$$

The conclusion “first law implies the linearized field equation” requires

$$\begin{align}
\boxed{C_L=-P'(f_\infty)\ne0}.
\end{align}$$

At a critical/degenerate root, $\Delta S$, $\Delta H$, and the linearized EOM can all lose their leading coefficient. Their simultaneous vanishing then does not reconstruct $\delta G_{AB}=0$.

# Fixed sources and the general Lovelock boundary stress tensor

## Fefferman--Graham sector

The perturbation is expanded as

$$\begin{align}
\delta\widetilde h_{\mu\nu} =\delta\widetilde h_{\mu\nu}^{(0)} +\cdots +z^d\delta\widetilde h_{\mu\nu}^{(d)} +z^d\log z^2\,\delta\widehat h_{\mu\nu}^{(d)} +\cdots. \tag{5.2}
\end{align}$$

The Hilbert space and boundary geometry are held fixed:

$$\begin{align}
\delta\widetilde h_{\mu\nu}^{(0)}=0, \qquad \delta\widetilde h_{\mu\nu} =z^d\delta\widetilde h_{\mu\nu}^{(d)}+\cdots. \tag{5.3}
\end{align}$$

This is the local boundary dictionary:

- $\delta\widetilde h^{(0)}_{\mu\nu}$ is the non-normalizable source;
- $\delta\widetilde h^{(d)}_{\mu\nu}$ is the normalizable response;
- fixing the source is what removes additional boundary-state variation from the first law.

## Myers completion and canonical momentum

The action boundary term begins with

$$\begin{align}
\widetilde I_{\rm surf} =\frac{1}{4\pi G_{d+1}} \int d^dx\sqrt{-h}\,\Psi^{AB}K_{AB}, \qquad \Psi^{AB} =\frac{\partial\mathcal L}{\partial R_{ACBD}}n_Cn_D. \tag{5.4--5.5}
\end{align}$$

Homogeneity in the extrinsic curvature gives, for Lovelock order $m$,

$$\begin{align}
I_{\rm surf}^{(m)} =\frac{\widetilde I_{\rm surf}^{(m)}}{2m-1}. \tag{5.16}
\end{align}$$

After adding the local counterterm, the renormalized stress tensor is obtained from the canonical momentum. Its normalizable response becomes

$$\begin{align}
\Delta T_{\mu\nu} =-\frac{d\widetilde L^{d-1}}{16\pi G_{d+1}}
\sum_{m=1}m(-)^mc_m \left(\frac{L}{\widetilde L}\right)^{2m-2} \frac{(d-2)!}{(d-2m)!} \delta\widetilde h_{\mu\nu}^{(d)}. \tag{5.30}
\end{align}$$

Using the definition of $\lambda_m$, the modular energy reduces to

$$\begin{align}
\Delta\langle H\rangle =C_L\,\Delta\langle H\rangle_{\rm Einstein}. \tag{5.31}
\end{align}$$

# Spherical extremal surface and completed entropy variation

The source next varies the completed Jacobson--Myers functional for a rotationally symmetric embedding. The bulk Euler-density variation produces second derivatives of the embedding; the entropy boundary term cancels those derivatives. The remaining equation admits the spherical surface as an extremum for every Lovelock order.

One algebraic identity in this reduction is

$$\begin{align}
\frac{1}{2l+1}\frac{d}{du} \frac{(\gamma^{uu})^l}{\sqrt{\gamma_{uu}}} = (\gamma^{uu})^l \frac{d}{du}\frac{1}{\sqrt{\gamma_{uu}}}, \tag{5.51}
\end{align}$$

with $\gamma^{uu}=1/\gamma_{uu}$ in the one-dimensional radial block.

For the entropy variation, the Euler-density term splits into:

1. an algebraic metric variation, which produces the factor $C_L$;
2. a Palatini total derivative;
3. the variation of the explicit entropy surface term.

Under the normalizable FG falloff, fixed source, closed spherical entangling surface, and $\epsilon\to0$ limit, the last two contributions are $O(\epsilon^2)$. Therefore

$$\begin{align}
\Delta S=C_L\,\Delta S_{\rm Einstein}. \tag{5.77}
\end{align}$$

Combining this with (5.31) yields the first law and, for $C_L\ne0$, the linearized Lovelock equation.

# Translation to local CPS and gravitational-energy language

| Paper object | Local interpretation | What is not proved |
|---|---|---|
| $P(f_\infty)=0$ | choice of AdS vacuum branch | branch stability/unitarity beyond the sign of $C_L$ |
| $C_L=-P'(f_\infty)$ | graviton kinetic and boundary-energy normalization | equality of the full CPS representatives |
| $\delta\widetilde h^{(0)}=0$ | fixed Dirichlet source | mixed/Neumann source sectors |
| $\delta\widetilde h^{(d)}$ | normalizable response | nonlinear source-response mixing |
| Myers action term | generalized GHY completion | renormalized corner completion |
| entropy surface term | boundary completion of the JM variation | a general finite-boundary entropy charge |
| holographic canonical momentum | boundary stress/energy response | a direct Iyer--Wald Hamiltonian |
| $\mathfrak K^{\hat m}_{ij}=0$ | totally geodesic special surface | generic HRT surfaces |

The paper never establishes

$$\begin{align}
\Theta_{\rm Lovelock}=C_L\Theta_{\rm Einstein},\qquad \omega_{\rm Lovelock}=C_L\omega_{\rm Einstein},\qquad Q_\xi^{\rm Lovelock}=C_LQ_\xi^{\rm Einstein}.
\end{align}$$

Those relations may hold only modulo exact forms, EOM terms, and boundary/corner completions. For the gravitational-energy project, deriving this representative-level dictionary is the next nontrivial step.

# Verification log

## Checked

- **Vacuum-polynomial derivative.** Mathematica differentiated
  $P(f)=1-f+\lambda f^2+\mu f^3$ and returned zero residual for
  $-P'(f)-(1-2\lambda f-3\mu f^2)$.
- **Extremal-surface identity (5.51).** Mathematica returned zero residual after substituting $\gamma^{uu}=1/\gamma_{uu}$, assuming $\gamma_{uu}>0$ and integer $l\ge0$.
- These checks establish only the stated algebraic reductions; they do not independently establish the full entropy or stress-tensor calculation.

## Blocked

- The dimension-dependent normalization in (2.4)--(2.5), including the topological endpoint of the Lovelock sum, was not independently reconstructed.
- The induced-metric, intrinsic-curvature, and extrinsic-curvature chain (3.11)--(3.30) was not reproduced. The PDF/TeX endpoints were unavailable in this run, so the HTML formulas could not be visually cross-checked against the original typesetting.
- The radial/angular integrations in (3.31), cubic counterterm calculation in (3.33)--(3.38), and their sign conventions remain source-derived.
- The generalized Kronecker-delta contraction (4.6)--(4.9) and the full arbitrary-order Myers/canonical-momentum chain (5.9)--(5.31) require a dedicated component/xAct implementation and were not completed.
- Only identity (5.51) was checked inside the extremal-surface chain. The cancellation of all second embedding derivatives in (5.35)--(5.56), the Palatini scaling in (5.58)--(5.65), and the surface variation in (5.66)--(5.77) remain source-derived.
- Appendix A's normal orientations and signs were not independently checked. The paper's result depends on those conventions.
- CPS objects $\Theta,\omega,Q_\xi$ are absent from the source and therefore cannot be listed as verified consequences.

## Failed

- No independently recomputed mathematical residual failed.
- The HTML near (5.11) appears to mix $m$ and $p$ in one generalized-delta index range, and the prose after (4.9) refers to “Equation (4)” where a more specific cross-reference is expected. Without the original PDF/TeX rendering these are recorded as source-display ambiguities, not silently corrected formulas.
