---
paper id: 2609.09816v1
title: Thermodynamics of Kerr-Newman-Bertotti-Robinson black holes
authors:
  - Zelin Zhang
  - Zhenyu Zhang
  - Bin Chen
publication date: 2026-09-09T07:18
abstract: |-
  For the general four-parameter Kerr-Newman-Bertotti-Robinson family, the paper fixes a regular axial and electromagnetic convention, computes electric charge and total angular momentum from horizon surface charges, proves that coordinate time translation gives a nonintegrable solution-space one-form, and selects an integrable canonical mass generator using the Kerr-Newman zero-field boundary condition.
comments: "20 pages"
url: https://arxiv.org/abs/2609.09816v1
summary: "A concrete Einstein-Maxwell case study in separating spacetime conservation, solution-space integrability, generator normalization, and boundary-condition-dependent energy."
tags: []
---

# Verdict and relevance

This is a high-priority charge paper. It gives a clean example in which a surface-charge form is conserved under deformations of the integration surface but is not integrable in the four-parameter solution space. The physical mass is therefore not the charge of the coordinate vector \(\partial_t\); it is the charge of a field-dependent combination of time translation, rotation, and Maxwell gauge transformation.

The main result is correct under the paper's regularity, rank, and boundary-condition assumptions. The canonical mass is the positive Christodoulou-Ruffini function of \((S,J,Q_e)\), while a fixed-external-field boundary problem admits a different mass with a magnetic work term.

See [[2026_09_10_overview]] for today's screening context.

# Source map

1. Introduction: explains why non-asymptotically-flat external-field backgrounds do not supply a preferred mass normalization and places the problem in canonical surface-charge and isolated-horizon frameworks.
2. General Kerr-Newman-Bertotti-Robinson black hole:
   - 2.1 records the metric, parameter domain, axial conicity normalization, and the Maxwell gauge regular on both axes.
   - 2.2 gives horizon area, entropy, temperature, angular velocity, and electric potential.
3. Canonical surface charges and the mass problem:
   - 3.1 distinguishes spacetime conservation from path independence in solution space.
   - 3.2 evaluates the electric and angular-momentum charges.
   - 3.3 proves that the \((\partial_t,0)\) charge one-form is nonintegrable already on the neutral fixed-\(B\) subfamily.
4. Definition of mass from integrability:
   - 4.1 introduces the general canonical generator and standard first law.
   - 4.2 uses local rank plus the Kerr-Newman zero-field boundary condition to fix \(M(S,J,Q_e)\).
5. Thermodynamics:
   - 5.1 gives the explicit mass and Smarr relation.
   - 5.2 differentiates the mass to obtain the thermodynamic potentials and generator coefficients.
   - 5.3 changes coordinates and Maxwell gauge to the canonical frame.
   - 5.4 contrasts the all-parameter canonical problem with fixed-\(B\) thermodynamics.
   - 5.5 recovers the neutral and specially charged subfamilies.
6. Conclusions: summarizes the distinct roles of the external field, physical charges, and boundary prescription.
7. Appendix A: makes the Maxwell potential axis regular and reduces the electric and total-angular-momentum integrals to endpoint terms.
8. Appendix B: translates to the conventions of the specially charged Kerr-BR branch, including the electromagnetic sign reversal.

# Theory, parameters, and regularity

The theory is four-dimensional Einstein-Maxwell with

$$
G=c=\hbar=k_B=1.
$$

The solution parameters are \((m,a,e,B)\): mass scale, rotation, electric parameter, and external Bertotti-Robinson field. They are not themselves all physical charges.

The metric is

$$
ds^2=\Omega_{\mathrm c}^{-2}\left[
-\frac{Q}{\rho^2}
\left(dt-\frac{a\sin^2\theta}{K}d\phi\right)^2
+\frac{\rho^2}{Q}dr^2+\frac{\rho^2}{P}d\theta^2
+\frac{P\sin^2\theta}{\rho^2}
\left(a\,dt-\frac{r^2+a^2}{K}d\phi\right)^2
\right],
$$

with

$$
\rho^2=r^2+a^2\cos^2\theta,
\qquad
P=1+B^2\mu^2\cos^2\theta,
\qquad
Q=I\Delta,
$$

$$
I=(1+kBr)^2+B^2r^2,
\qquad
\Omega_{\mathrm c}^2=I-B^2\Delta\cos^2\theta,
$$

$$
\Delta=(1+k^2)a^2-2mr+
\left(1+k^2-\frac{e^2}{a^2}\right)r^2.
$$

The auxiliary data are

$$
s^2=1+(e^2-a^2)B^2-(m^2+e^2)a^2B^4,
$$

$$
k=\frac{es-amB}{a(1+e^2B^2)},
\qquad
\mu^2=m^2-(1+k^2)^2a^2+(1+k^2)e^2,
\qquad
K=1+B^2\mu^2.
$$

The paper chooses \(s,\mu>0\), orders the roots \(r_+\ge r_-\), requires a regular outer horizon and Lorentzian exterior, and takes the branch of \(\Omega_{\mathrm c}\) continuously connected to \(1\) at \(B=0\).

The azimuthal coordinate has period \(2\pi\), so the axial generator is

$$
\eta=\partial_\phi.
$$

This absorbs the original conicity factor into the \(K^{-1}\) terms of the metric. The Maxwell potential is shifted by a closed one-form so that

$$
A_\phi\big|_{\theta=0,\pi}=0.
$$

This regular gauge is essential because the angular momentum contains \((\eta\cdot A)\star F\). The equal pole values also give zero magnetic monopole charge, avoiding gauge-patch terms in the horizon identity.

The charged parametrization is singular as \(a\to0\) at fixed nonzero \((e,B)\). The regular nonrotating limits require setting \(e=0\) first or \(B=0\) first.

# Horizon data

The outer horizon generator is

$$
\chi=\partial_t+\Omega_H\partial_\phi.
$$

Define

$$
R_H^2=\frac{A_H}{4\pi}=\frac{S}{\pi}
=\frac{r_+^2+a^2}{KI_+},
\qquad
I_+=I(r_+).
$$

Then

$$
S=\pi R_H^2,
\qquad
T_H=\frac{\mu}{2\pi K R_H^2},
\qquad
\Omega_H=\frac{aK}{r_+^2+a^2},
\qquad
\Phi_H=\frac{er_+}{r_+^2+a^2}.
$$

The potential convention is \(\Phi_H=-\chi\cdot A|_{r_+}\), and

$$
2T_HS=\frac{\mu}{K}.
$$

These are quantities associated with the coordinate-frame horizon generator. They are not yet the canonical thermodynamic potentials.

# Surface charges and two notions of consistency

An exact Einstein-Maxwell symmetry is a pair

$$
\epsilon=(\xi,\lambda),
\qquad
\mathcal L_\xi g_{\mu\nu}=0,
\qquad
\mathcal L_\xi A+d\lambda=0.
$$

For fixed symmetry parameters, the infinitesimal surface charge is

$$
\delta\mathcal Q_\epsilon
=\int_\Sigma\boldsymbol k_\epsilon[\delta g,\delta A;g,A].
$$

The source stresses two independent requirements:

1. On-shell closure of \(\boldsymbol k_\epsilon\) makes the integral invariant under deformations of \(\Sigma\) through the source-free exterior.
2. The field-space curl
   $$
   \int_\Sigma\left(
   \delta_1\boldsymbol k_\epsilon[\delta_2]
   -\delta_2\boldsymbol k_\epsilon[\delta_1]
   \right)=0
   $$
   makes the finite charge independent of the path through solution space.

Spacetime conservation does not imply solution-space integrability.

# Electric charge and total angular momentum

With horizon orientation toward increasing \(r\) and

$$
\epsilon_{tr\theta\phi}=+\sqrt{-g},
$$

the charge generators are \((0,-1)\) and \((-\eta,0)\). Their horizon representatives are

$$
Q_e=\frac1{4\pi}\int_{\mathcal H}\star F,
$$

$$
J=\frac1{16\pi}\int_{\mathcal H}\star d\eta^\flat
+\frac1{4\pi}\int_{\mathcal H}(\eta\cdot A)\star F.
$$

Both gravitational and electromagnetic pieces are required for generic charged configurations. Appendix A reduces the integrals to axis endpoints and obtains

$$
Q_e=\frac eK,
\qquad
J=\frac{ma}{K^2}.
$$

Consequently

$$
\delta J
=\frac{a\,\delta m+m\,\delta a}{K^2}
-\frac{2ma}{K^3}\delta K.
$$

The last term is the solution dependence of the regular angular identification; omitting it would use a different phase-space convention.

# Why coordinate time is not the mass

Holding the background value of \(\Omega_H\) fixed inside the surface-charge form gives the horizon identity

$$
\int_{\mathcal H}\boldsymbol k_{(\chi,0)}
=T_H\delta S+\Phi_H\delta Q_e.
$$

Linearity and \(\chi=\partial_t+\Omega_H\partial_\phi\) yield

$$
\not\!\delta\mathcal Q_{(\partial_t,0)}
=T_H\delta S+\Omega_H\delta J+\Phi_H\delta Q_e.
$$

The slash is essential: this is generally not the exact differential of a state function.

The obstruction is already visible for the neutral branch \(e=0\). Define

$$
b=\sqrt{1+m^2B^2},
\qquad
K_a=1-a^2b^2B^2,
\qquad
K=b^2K_a.
$$

Then

$$
\left.\not\!\delta\mathcal Q_{(\partial_t,0)}\right|_{e=0}
=b\,\delta\left(\frac{m}{Kb}\right).
$$

Writing this as \(q_m\delta m+q_a\delta a+\cdots\), its fixed-\(B\) curl is

$$
\left.
\left(\frac{\partial q_a}{\partial m}
-\frac{\partial q_m}{\partial a}\right)
\right|_{e=0,B}
=\frac{2m^2aB^4b^2}{K^2}.
$$

It is nonzero for generic rotation and external field. Thus the \(\partial_t\) charge can be conserved as a spacetime surface charge while failing to define a Hamiltonian function on the solution family.

# Canonical generator and integrable mass

The most general energy generator considered is

$$
\epsilon_M
=\alpha\left(
\partial_t+\Omega_{\mathrm{int}}\partial_\phi,
\Phi_{\mathrm{int}}
\right).
$$

The three coefficients are constant in spacetime but functions on solution space. They are held fixed inside \(\boldsymbol k_{\epsilon_M}\), while their solution dependence enters the adjusted integrability condition.

The mass variation is

$$
\delta M
=\alpha\left[
\not\!\delta\mathcal Q_{(\partial_t,0)}
-\Omega_{\mathrm{int}}\delta J
-\Phi_{\mathrm{int}}\delta Q_e
\right].
$$

Define

$$
T=\alpha T_H,
\qquad
\Omega=\alpha(\Omega_H-\Omega_{\mathrm{int}}),
\qquad
\Phi=\alpha(\Phi_H-\Phi_{\mathrm{int}}).
$$

Then

$$
\delta M=T\delta S+\Omega\delta J+\Phi\delta Q_e.
$$

On a regular open set where \(dS,dJ,dQ_e\) are linearly independent, tangent directions preserving all three extensive variables also preserve \(M\). Hence, locally,

$$
M=M(S,J,Q_e).
$$

The zero-field boundary condition

$$
M(m,a,e,0)=m
$$

fixes this function because the \(B=0\) Kerr-Newman map is locally invertible for \(m>0\) and nonextremal \(d_0=\sqrt{m^2-a^2-e^2}>0\):

$$
\det\frac{\partial(S,J,Q_e)}{\partial(m,a,e)}
=2\pi m\left(
2m+d_0+\frac{m^2+a^2}{d_0}
\right)>0.
$$

The result is the positive Christodoulou-Ruffini branch,

$$
M^2
=\frac{S}{4\pi}+\frac{Q_e^2}{2}
+\frac{\pi(Q_e^4+4J^2)}{4S}
=\frac{(R_H^2+Q_e^2)^2+4J^2}{4R_H^2},
\qquad
M>0.
$$

It equals the corresponding rotating isolated-horizon energy.

# Potentials, Smarr relation, and canonical frame

Differentiating the mass gives

$$
T=\frac1{8\pi M}
\left[1-\frac{Q_e^4+4J^2}{R_H^4}\right],
$$

$$
\Omega=\frac{J}{MR_H^2},
\qquad
\Phi=\frac{Q_e(R_H^2+Q_e^2)}{2MR_H^2}.
$$

Homogeneity gives

$$
M=2TS+2\Omega J+\Phi Q_e.
$$

The canonical generator coefficients are

$$
\alpha=\frac{T}{T_H},
\qquad
\Omega_{\mathrm{int}}=\Omega_H-\frac{\Omega}{\alpha},
\qquad
\Phi_{\mathrm{int}}=\Phi_H-\frac{\Phi}{\alpha}.
$$

For each nonextremal solution, define

$$
t_{\mathrm{can}}=\frac t\alpha,
\qquad
\phi_{\mathrm{can}}=\phi-\Omega_{\mathrm{int}}t,
$$

and

$$
A^{\mathrm{can}}=A+d(\Phi_{\mathrm{int}}t).
$$

Then

$$
\epsilon_M=(\partial_{t_{\mathrm{can}}},0).
$$

Thus the canonical mass is a time-translation charge only after a solution-dependent coordinate and gauge choice.

At extremality,

$$
R_H^4=Q_e^4+4J^2,
\qquad
\mu=0.
$$

The mass remains finite, but the explicit ratios used for the nonextremal generator are \(0/0\)-type and are defined only by a continuous extremal limit.

# Varying \(B\) versus fixing \(B\)

In the canonical construction all four parameters vary. The external field changes the map

$$
(m,a,e,B)\longmapsto(S,J,Q_e),
$$

but it is not an additional argument of the fundamental mass relation:

$$
\left(\frac{\partial M}{\partial B}\right)_{S,J,Q_e}=0.
$$

This does not imply \((\partial M/\partial B)_{m,a,e}=0\).

If \(B\) is instead fixed as a boundary source, integrability on each fixed-\(B\) leaf permits a different state function \(\widetilde M(S,J,Q_e;B)\). Its variation can be written

$$
\not\!\delta M
=\delta\widetilde M+\mu_{\mathrm{mag}}\delta B,
\qquad
\mu_{\mathrm{mag}}
=-\left(\frac{\partial\widetilde M}{\partial B}\right)_{S,J,Q_e}.
$$

This is a different Hamiltonian boundary-value problem, not a correction term to the canonical mass.

# Translation into the vault's CPS language

This paper sharply separates three structures that are often conflated:

| question | condition | result here |
|---|---|---|
| Is the charge independent of the spacetime surface? | on-shell closure of \(\boldsymbol k_\epsilon\) | yes for the exact symmetries through the source-free exterior |
| Is the infinitesimal charge a state-space differential? | vanishing field-space curl | no for \((\partial_t,0)\); yes after choosing \(\epsilon_M\) |
| Which finite Hamiltonian is selected? | normalization/boundary condition | Christodoulou-Ruffini mass for the all-parameter canonical problem |

For regional sewing, equality of surface integrals is therefore insufficient. One must also specify the field-dependent generator convention and verify integrability on the actual solution/trace domain.

The regular Maxwell representative is part of the charge definition. Changing the axial period or adding a non-single-valued gauge shift changes the surface representative and can move electromagnetic contributions between terms. This is directly analogous to the vault's requirement that seam gauge data and corner trivializations be fixed before comparing charges.

The fixed-\(B\) alternative is also a useful warning: holding a boundary source fixed defines a different phase-space leaf. Its Hamiltonian need not agree with the function obtained when that source is allowed to vary.

# Verification log

## Checked

- Mathematica, exact symbolic differentiation: the fixed-\(B\), \(e=0\) curl of
  $$
  b\,d\left(\frac{m}{Kb}\right)
  $$
  equals
  $$
  \frac{2m^2aB^4b^2}{K^2}.
  $$
  This independently reproduces the nonintegrability obstruction.
- Mathematica, exact differentiation: the three derivatives of the positive Christodoulou-Ruffini mass reproduce the displayed \(T,\Omega,\Phi\).
- Mathematica, exact homogeneity check: substituting those derivatives gives zero residual for
  $$
  M-(2TS+2\Omega J+\Phi Q_e).
  $$
- Mathematica, exact Jacobian: the Kerr-Newman map \((m,a,e)\mapsto(S,J,Q_e)\) reproduces the displayed determinant under \(m>0\) and \(m^2>a^2+e^2\).
- Mathematica, exact appendix algebra: both axis identities
  $$
  u^2=1-(1+k^2)a^2B^2,
  \qquad
  k+mB=\frac{eu}{a}
  $$
  follow from the definitions when denominators are nonzero and the chosen square-root branch is real.
- Mathematica, exact rational differentiation: the appendix primitive \(\mathcal Y(x)\) obeys the displayed derivative identity after imposing \(H^2=I_+\) and \(\mu=m-(1+k^2)a^2/r_+\); its endpoint values are \(\mathcal Y(\pm1)=\pm4ma\), reproducing the last step in \(J=ma/K^2\).
- PDF rendering: the title/abstract, coordinate-time nonintegrability, canonical-generator, and appendix-convention pages were visually inspected; formulas and labels agree with the TeX source. Poppler reported a font-embedding warning without visible corruption on those pages.

## Source-derived

- The full Einstein-Maxwell surface-charge two-form and its on-shell closure are cited but not printed in a form independently replayed here.
- The reduction of the metric and Maxwell field to the horizon densities \(\mathcal E,\mathcal A,\mathcal G\).
- Regularity of the full exterior and constancy of \(-\chi\cdot A\) over the horizon.
- Equality with the isolated-horizon energy beyond the shared final formula.

## Blocked

- A complete xAct reconstruction of the Einstein-Maxwell solution, horizon surface-charge form, and both gravitational/electromagnetic angular-momentum densities would require the full component field ansatz plus the convention-specific Barnich-Brandt or Iyer-Wald implementation; no machine-readable notebook is supplied.
- The rank argument is local. The note does not prove that \((S,J,Q_e,B)\) is a single global coordinate chart across extremal, singular, or branch-changing loci.
- The extremal canonical generator is specified by continuity; the explicit limiting functions \(\alpha,\Omega_{\mathrm{int}},\Phi_{\mathrm{int}}\) are not evaluated in the source.
- An outer-boundary energy requires additional time-translation, electromagnetic boundary-data, and reference choices. The horizon mass does not settle that separate Hamiltonian problem.

## Failed

- None of the source formulas tested above failed under the stated assumptions.

# Assumptions and limitations

- Regular outer horizon, Lorentzian exterior, \(\Omega_{\mathrm c}>0\), \(s,\mu>0\), and the selected connected branch.
- Axis period \(2\pi\), axial generator \(\partial_\phi\), and Maxwell potential regular at both poles.
- No magnetic monopole charge; otherwise gauge-patch contributions would enter.
- All four solution parameters vary in the canonical mass problem.
- Linear independence of \(dS,dJ,dQ_e\) on the open set where the mass-state-function argument is applied.
- Positive-mass Kerr-Newman boundary condition at \(B=0\).
- Nonextremal formulas for the canonical generator; extremality is only a continuous limit.
- The quasi-local horizon energy and an energy at an outer boundary are different boundary-value problems.

# Reusable takeaways

1. Record spacetime conservation and solution-space integrability as separate claims.
2. Include the field dependence of normalization, rotation, and Maxwell gauge parameters in the adjusted integrability test.
3. Fix the axial period and regular gauge representative before comparing angular momentum.
4. State which external sources are varied; fixed-source and variable-source thermodynamics define different Hamiltonians.
5. Do not promote the local rank argument to a global phase-space coordinate theorem.
