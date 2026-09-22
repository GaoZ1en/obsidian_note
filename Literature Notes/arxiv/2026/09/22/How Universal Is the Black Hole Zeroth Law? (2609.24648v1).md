---
paper id: 2609.24648v1
title: "How Universal Is the Black Hole Zeroth Law?"
authors:
  - "Ghosh, Rajes"
  - "Sarkar, Sudipta"
publication date: 2026-09-21
abstract: |-
  The black hole zeroth law asserts the thermal equilibrium of a stationary Killing horizon, yet its status beyond general relativity remains limited. We demonstrate that its validity is not governed by a universal mechanism: distinct gravitational theories enforce constancy of the surface gravity through different horizon-projections of their field equations. In general relativity, $f(R)$-gravity, and Lovelock theories, the zeroth law is known to follow from the mixed (null-transverse) horizon equations. By contrast, we show that in non-Lovelock theories the zeroth law is enforced by qualitatively different mechanisms. In generalized quadratic gravity, for instance, the null-null component of the field equations dictates its validity. Exploiting this novel diagnostic, we obtain the first exact proof of the zeroth law in the broader landscape of higher-curvature gravity, without relying on a perturbative expansion around general relativity. Our result establishes the zeroth law as a sharp probe of the underlying thermodynamic structure of gravity, and points toward a classification of modified theories according to the mechanism responsible for its validity.
comments: "6 pages, 1 figure"
url: https://arxiv.org/abs/2609.24648v1
summary: "Reconstructs the nonperturbative elliptic zeroth-law mechanism and checks quadratic/cubic horizon projections in variable-surface-gravity Gaussian-null models."
tags: []
---

# The new mechanism: an elliptic horizon constraint

For generalized quadratic gravity with a nonzero Ricci-squared coupling, the source derives an exact null–null horizon equation $E_{\xi\xi}=-\beta D^2(\kappa^2)$. On a smooth connected compact cross section without boundary, with no matter flux $T_{\xi\xi}=0$, this forces constant surface gravity. The useful distinction is between an elliptic null–null constraint and the mixed algebraic constraint familiar from Einstein/Lovelock gravity. It is not a theorem that every higher-curvature theory obeys the zeroth law without additional assumptions.

Source: [2609.24648v1](https://arxiv.org/abs/2609.24648v1), Rajes Ghosh and Sudipta Sarkar, 6 pages. Full text/source including appendices and references inspected; PDF p.4 visually confirms the two decisive projection formulas. Context: [[2026_09_22_overview]].

# Section and dependency map

I introduces the non-Einstein-branch question. II fixes Killing-horizon geometry. III proves the quadratic result and classifies null–null degenerate/nondegenerate mechanisms, then introduces the cubic example. IV discusses entropy-response rank and possible observational questions; V is acknowledgments. Appendix A derives the quadratic projection; Appendix B supplies the cubic weighted divergence and its $R=0$ patch; Appendix C relates the Lovelock mixed matrix to first variation of Jacobson–Myers entropy. References end on p.6.

Read II → A → III's compactness argument first. Then read B as a separate conditional extension: it requires an additional mixed matter condition and a nonvanishing entropy coefficient on degenerate patches. C gives an interpretation of a horizon constraint, not the full gravitational characteristic matrix.

# Horizon data and assumptions

Let $\xi^a$ generate a smooth stationary Killing horizon, with $N^a$ auxiliary null, $\xi\cdot N=-1$, and $e_A^a$ tangent to a spatial section $S$. Write
$$
\sigma^{AB}e_A^ae_B^b=g^{ab}+2\xi^{(a}N^{b)},\qquad
\xi^a\nabla_a\xi^b=\kappa\xi^b,\qquad\mathcal L_\xi\kappa=0.
$$
$D_A$ is the Levi-Civita derivative of positive-definite $\sigma_{AB}$. Vanishing generator expansion and shear yield
$$
R_{\xi\xi}=R_{\xi A\xi B}=R_{\xi ABC}=0,\qquad
R_{\xi A}=-D_A\kappa.\tag{1}
$$
The problem is thus transverse constancy, with the normalization of $\xi$ fixed. No bifurcation surface or constant $\kappa$ is assumed at the start of the dynamical proof.

The field equation is $E_{ab}=8\pi GT_{ab}$. **No horizon flux $T_{\xi\xi}=0$ is a separate hypothesis.** Stationarity of a matter tensor alone does not generally imply that contraction vanishes. The paper's parenthetical explanation should not replace a matter-model argument. When a mixed equation is used, $T_{\xi A}=0$ is also needed; an appropriate dominant-energy condition together with the null-flux condition supplies it.

# Quadratic action and the two terms that do not vanish

The Lagrangian is
$$
L=R-2\Lambda+\alpha R^2+\beta R_{ab}R^{ab}+\gamma L_{GB}.
$$
There is no expansion in $\alpha,\beta,\gamma$ and no assumption that a solution approaches Einstein gravity as they tend to zero. On a stationary Killing horizon the Einstein, $R^2$ and Gauss–Bonnet null–null contributions vanish under the geometric identities. For example, for a stationary scalar $R$,
$\xi^a\xi^b\nabla_a\nabla_bR=\xi(\xi R)-(\nabla_\xi\xi)^b\nabla_bR=0$.

The Ricci-squared Euler tensor is
$$
E^{(R_{cd}R^{cd})}_{ab}=2R_{acbd}R^{cd}+\Box R_{ab}-\nabla_a\nabla_bR
 +\tfrac12g_{ab}(\Box R-R_{cd}R^{cd}).\tag{A1}
$$
One must not replace $\xi^a\xi^b\Box R_{ab}$ with $\Box(R_{\xi\xi})$; derivatives of the Killing vector contribute. Appendix A gives
$$
2R_{\xi c\xi d}R^{cd}=-4(D\kappa)^2,\qquad
\xi^a\xi^b\Box R_{ab}=-2\kappa D^2\kappa+2(D\kappa)^2.
$$
Adding them gives
$$
E_{\xi\xi}=-2\beta[\kappa D^2\kappa+(D\kappa)^2]
             =-\beta D^2(\kappa^2).\tag{2}
$$
This cancellation is the important source chain; neither Ricci-squared contribution vanishes separately.

# From the local equation to the zeroth law

For $\beta\ne0$ and zero null flux, set $f=\kappa^2$. On compact boundaryless $S$,
$$
0=\int_S\sqrt\sigma\,fD^2f=-\int_S\sqrt\sigma\,D_AfD^Af.
$$
Thus $f$ is constant on each connected component. In a connected nonextremal region smoothness fixes the sign of $\kappa$, so $D_A\kappa=0$. If that constant is zero, smooth real $\kappa$ is identically zero as well; use of a nonextremal bifurcate extension is a separate subsequent step. No sign restriction on nonzero $\beta$ is needed for this harmonic-function argument.

For noncompact $S$, or a cross section with boundary, the discarded boundary integral must be controlled. A harmonic $\kappa^2$ need not be constant there. For $\beta=0$ the argument disappears and the mixed projection must be analyzed. The source invokes a Rácz–Wald extension only after obtaining constant nonzero surface gravity; existence of the extension and its regularity hypotheses should not be used circularly to prove the starting result.

# Cubic extension: use two different projections on different patches

For $L=R+\lambda R R_{ab}R^{ab}$ let $S_R=R_{ab}R^{ab}$ and $X_{ab}=RR_{ab}$. Appendix B writes
$$
E^{(3)}_{ab}=S_RG_{ab}+2R R_{ac}R_b{}^c+g_{ab}[\Box S_R+\nabla_c\nabla_d(RR^{cd})]
-\nabla_a\nabla_bS_R+\Box X_{ab}-\nabla_c\nabla_aX_b{}^c-\nabla_c\nabla_bX_a{}^c.
$$
The two derivative structures combine with the algebraic term to yield
$$
E_{\xi\xi}=-\lambda D_A(RD^A\kappa^2).
$$
On a nodal domain where $R$ has a definite nonzero sign, multiply by $\kappa^2$ and integrate. If the boundary lies at $R=0$ and the fields/boundary limit are regular enough for the weighted boundary flux to vanish, the integral of $R|D\kappa^2|^2$ forces constancy there. Merely saying “elliptic locally” would not force a harmonic function to be constant on an open patch; the global weighted boundary argument is essential.

On an open $R=0$ patch, $D_AR=\mathcal L_\xi R=0$ but $\nabla_NR$ need not vanish. The source keeps these normal derivatives before cancellation, using
$$
\nabla_A\nabla_BR=\nabla_\xi\nabla_AR=0,\quad
\nabla_\xi\nabla_NR=\kappa\nabla_NR,\quad\Box R=-2\kappa\nabla_NR.
$$
The mixed equation then reduces to
$$
(1+\lambda S_R)D_A\kappa=0.\tag{B6}
$$
This needs $T_{\xi A}=0$ and $1+\lambda S_R\ne0$ on the patch. Positivity of the local Wald entropy density $\sqrt\sigma(1+\lambda S_R)/(4G)$ is a sufficient **additional restriction**, not a consequence of writing the Lagrangian. Smooth matching to neighboring nodal domains completes the source's argument. A vanishing coefficient leaves this equation inconclusive; it does not construct a zeroth-law violation.

# Lovelock comparison and entropy response

In Einstein and suitable $f(R)$ theories the mixed equation suffices, with $f'(R)\ne0$ needed in the latter. Lovelock instead gives a matrix constraint $M_A{}^BD_B\kappa=0$, whose nonperturbative inversion can fail. For Einstein–Gauss–Bonnet,
$$
M_A{}^B=\delta_A^B-4\gamma\mathcal G_A{}^B[\sigma],\qquad
S_{JM}={1\over4G}\int_S\sqrt\sigma(1+2\gamma\mathcal R).
$$
Varying the lower metric gives, up to an intrinsic total derivative,
$$
\delta S_{JM}={1\over8G}\int_S\sqrt\sigma
 (\sigma^{AB}-4\gamma\mathcal G^{AB})\delta\sigma_{AB}.
$$
Thus $M^{AB}$ is the first entropy-response tensor. It is not an entropy Hessian and its vector null eigenvalue is not automatically a zero mode of the full gravitational principal symbol. On a $d$-dimensional constant-curvature section of sectional curvature $K$, its eigenvalue is $1+2\gamma(d-1)(d-2)K$. This identifies an algebraic exceptional locus, not the existence of an admissible stationary solution there.

The paper's classification is a diagnostic organization: null–null identically degenerate; null–null constraining, possibly assisted by mixed equations on degenerate patches; and generic theories for which only perturbative control is known. It is not an exhaustive theorem assigning a good elliptic operator to every curvature Lagrangian.

# Independent verification and precise limits

**Source-derived:** complete main proof and Appendices A–C, including the geometric identities and general cubic zero-patch cancellation. The matter, topology and coefficient qualifications above are kept explicit.

**Checked:** Mathematica directly constructs the Christoffel symbols, curvature, Ricci tensor and covariant tensor Laplacian for
$$
ds^2=2dv\,dr-2r\kappa(x)dv^2+dx^2.
$$
At $r=0$, with $\xi=\partial_v$, it obtains $R_{vx}=-\kappa'$, $R=0$, $2R_{vcvd}R^{cd}=-4(\kappa')^2$ and $\Box R_{vv}=2[(\kappa')^2-\kappa\kappa'']$. The full quadratic projection minus $-\partial_x^2\kappa^2$ is zero. Repeating with $2rh\,dv\,dx$, constant $h$, gives $R=-3h^2/2$ and the same zero projection residual. These are off-shell stationary horizon geometries; adding flat spectator directions supplies higher-dimensional local tests.

For the cubic theory, the independent family
$ds^2=2dvdr+[-2r\kappa(x)+r^2a(x)]dv^2+dx^2$
has $R=2a(x)$ and $S_R|_H=2a(x)^2$. Directly evaluating (B1) gives
$$
E^{(3)}_{vv}|_H=-4\{a(\kappa')^2+\kappa[a'\kappa'+a\kappa'']\}
=-\partial_x[2a\,\partial_x\kappa^2],
$$
with zero residual for arbitrary smooth $a,\kappa$. xAct independently verifies the scalar product rule converting the quadratic terms to $D^2\kappa^2$. The compact integration-by-parts argument is an explicit analytic proof once the projection identity and boundary hypotheses hold.

**Failed:** no contradiction was found in these central projection tests. The causal inference “matter is stationary, therefore $T_{\xi\xi}=0$” is not used; no-flux remains an assumption. Likewise positive cubic entropy density is not inferred from stationarity.

**Blocked:** none for retrieval or the performed computations. No general symbolic horizon package reduction of every free transverse/radial jet was completed.

**Not independently verified:** the full arbitrary-horizon tensor proof beyond the tested families; cubic mixed cancellation with nonzero $\nabla_NR$; extension/global existence theorems; observational proposals; the existence of solutions on a degenerate Lovelock entropy-response locus.

**Verified:** nontrivial local quadratic and cubic projection families plus the scalar elliptic implication under compact boundaryless hypotheses. **Assumptions:** smooth Killing horizon and cross section, fixed generator, no null matter flux, $\beta\ne0$ for quadratic gravity, additional mixed-flux and nonvanishing coefficient assumptions for cubic zero patches. **Not verified:** a universal zeroth law for all higher-curvature gravity.

The connection to the vault is direct: identify which on-shell horizon projection removes a potentially variable thermodynamic datum, and keep the exceptional coefficient domains. An entropy-response degeneracy does not itself provide a new boundary degree of freedom or charge.
