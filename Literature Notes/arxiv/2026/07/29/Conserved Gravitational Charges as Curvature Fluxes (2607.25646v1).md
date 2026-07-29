---
paper id: 2607.25646v1
title: Conserved Gravitational Charges as Curvature Fluxes
authors:
  - Emel Altas
  - Bayram Tekin
publication date: 2026-07-28T12:30
abstract: |-
  The paper gives unified curvature-flux representatives for gravitational energy, momentum, angular momentum, and boost or center-of-mass charges. It derives the construction from a divergence-free rank-four tensor, introduces explicit Killing potentials in flat space, recovers ADM and Regge--Teitelboim charges, and isolates the Weyl obstruction on generic Einstein backgrounds.
comments: "37 pages, 1 figure"
url: https://arxiv.org/abs/2607.25646v1
summary: "A monograph-mode reconstruction and symbolic audit of curvature representatives for AdS, ADM, Lorentz, and generic-Einstein charges, including one consequential AdS index-convention failure."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T1-charge`, `T1-boundary`, `T1-symmetry`.

This paper is directly aligned with the charge program because it asks the right structural question: given the usual Einstein/Abbott--Deser current, can one replace a first-derivative metric potential by a flux of the linearized curvature without changing the charge? Its strongest contribution is the flat-space Killing potential that treats all Poincaré generators in one formula. Its main caveat is equally important: the advertised AdS reduction from the exact $\mathcal P$ representative to a mixed-index Riemann representative conflicts with the paper's own stated linearization convention unless an omitted background-raising term is restored.

## How to read this long paper

1. Read Sections II--IV to fix conventions and the exact $\mathcal P$ identity. Keep the exact $\mathcal P$-flux formula; do not yet replace it by Riemann.
2. Read Sections V--VI as the conceptual core. The flat Killing potential, not a $\Lambda\to0$ limit of the AdS Killing two-form, is what makes translations work.
3. Sections VII--VIII prove that the curvature representative is the usual ADM/Regge--Teitelboim charge under weighted vacuum falloffs and parity. The Schwarzschild, displaced-Schwarzschild, and Kerr tests fix signs and normalizations.
4. Section IX separates local curvature gauge invariance from invariance of the integrated charge under proper asymptotic gauge transformations.
5. Section X identifies the exact background-Weyl obstruction. The charge still exists through Abbott--Deser; what fails generically is a universal, local, curvature-only representative.
6. Appendix A explains the canonical generator and algebra, but assumes the standard differentiable phase space and absence of symplectic flux rather than reconstructing them from the curvature formula.

## Source structure map

- **I. Introduction:** the curvature-flux question, the $P/\mathcal P$ tensors, the AdS, flat, and generic-Einstein claims.
- **II. Conventions:** signature, Riemann sign, field-equation normalization, perturbative index placement, binormal orientation, and the $E=M$ Schwarzschild normalization.
- **III. Killing charges in metric-perturbation form:** effective source, linearized Bianchi identity, Killing current, and Abbott--Deser potential.
- **IV. Charges as curvature fluxes in AdS:** exact $\mathcal P$ identity, asymptotic Riemann representative, and the claimed equivalence with Abbott--Deser.
- **V. Flat-space Killing potentials:** explicit potential for a general Poincaré Killing vector and its improvement freedom.
- **VI. Flat-space curvature-flux identity:** the master $P$-flux and the conditional Riemann replacement.
- **VII. ADM four-momentum:** energy, Schwarzschild normalization, spatial momentum, boosted Schwarzschild, and comparison with ADM.
- **VIII. Lorentz charges and Regge--Teitelboim completion:** rotations, boosts/center of mass, parity, displaced Schwarzschild, Poincaré brackets, and Kerr spin.
- **IX. Gauge invariance and boundary conditions:** flat and AdS linearized diffeomorphisms, proper versus improper transformations, and falloff requirements.
- **X. Generic Einstein backgrounds and the Weyl completion:** the surviving Killing potential, loss of curvature gauge invariance, exact Weyl current, and conditions under which the AdS-like flux survives.
- **XI. Conclusions and outlook:** scope, equivalence rather than a new charge, and the open curvature-only Weyl completion.
- **Appendix A. Canonical interpretation of the AdS curvature charge:** differentiable generators, constraints, exact-Killing algebra, absence of a central term in the chosen phase space, and contrast with Brown--Henneaux.

## Conventions and notation dictionary

| Object | Meaning and convention |
| --- | --- |
| $g_{\mu\nu}=\bar g_{\mu\nu}+h_{\mu\nu}$ | Background split; unless otherwise stated, indices on linearized fields are moved with $\bar g$. |
| $[\nabla_\mu,\nabla_\nu]V^\rho=R^\rho{}_{\sigma\mu\nu}V^\sigma$ | Riemann convention; signature $(-,+,\ldots,+)$. |
| $\mathcal G_{\mu\nu}=R_{\mu\nu}-\frac12Rg_{\mu\nu}+\Lambda g_{\mu\nu}$ | Cosmological Einstein tensor, with $\mathcal G_{\mu\nu}=\kappa_nT_{\mu\nu}$ and $\kappa_4=8\pi G$. |
| $P^{\mu\nu\rho\sigma}$ | Non-cosmological divergence-free double-dual-type tensor; in $n=4$, $P={}^\star R^\star$. |
| $\mathcal P^\nu{}_{\mu\beta\sigma}$ | Shifted cosmological tensor whose trace is $-(n-3)\mathcal G_{\mu\sigma}$ and which vanishes on maximally symmetric AdS. |
| $\bar S_{\mu\nu}=\bar\nabla_\mu\bar\xi_\nu$ | AdS Killing two-form. It vanishes for flat translations. |
| $F^{\mu\nu}[\xi]$ | Flat or Einstein-space Killing potential satisfying $\nabla_\nu F^{\nu\mu}=\xi^\mu$. |
| $\mathcal F_{\rm AD}^{\mu\nu}$ | Standard Abbott--Deser two-form built from $h$ and one derivative. |
| $\mathcal W^\mu,\mathcal V_W^{\mu\nu}$ | Background-Weyl current and its known superpotential on a generic Einstein background. |
| $\mathrm d\Sigma_{\mu\nu}=n_{[\mu}\sigma_{\nu]}\mathrm dS$ | Binormal convention. Reversing the curvature pair to $\nu\mu$ supplies a consequential minus sign on a $t=$ constant slice. |
| $E=Q[\partial_t]$, $P_k=-Q[\partial_k]$ | Translation sign conventions fixed by $E_{\rm Schwarzschild}=+M$. |

Antisymmetrization has weight $1/2$. The construction requires $n>3$; the trace of $P$ degenerates in three dimensions.

## The divergence-free curvature tensor

For $\Lambda=0$,

$$
\begin{aligned}
P^{\mu\nu\rho\sigma}
={}&R^{\mu\nu\rho\sigma}
+g^{\mu\sigma}R^{\nu\rho}
-g^{\mu\rho}R^{\nu\sigma}\\
&-g^{\nu\sigma}R^{\mu\rho}
+g^{\nu\rho}R^{\mu\sigma}
+\frac R2
\left(g^{\mu\rho}g^{\nu\sigma}
-g^{\mu\sigma}g^{\nu\rho}\right).
\end{aligned}
$$

Its two decisive off-shell identities are

$$
\nabla_\mu P^{\mu\nu\rho\sigma}=0,
\qquad
P^\mu{}_{\nu\mu\sigma}=-(n-3)G_{\nu\sigma}.
$$

Equivalently, $P$ is one half of the derivative of the Gauss--Bonnet scalar with respect to the Riemann tensor. For cosmological Einstein gravity, the paper shifts the Ricci and scalar pieces to define $\mathcal P$ so that

$$
\nabla_\nu\mathcal P^{\nu\mu\beta\sigma}=0,
\qquad
\mathcal P^\nu{}_{\mu\nu\sigma}=-(n-3)\mathcal G_{\mu\sigma},
\qquad
\bar{\mathcal P}=0
$$

on maximally symmetric AdS. These three properties are the whole engine: divergence turns a product into a boundary form, while the trace turns its derivative into the Einstein current.

## The baseline Abbott--Deser current

For a vacuum background $E_{\mu\nu}[\bar g]=0$, the nonlinear remainder is moved into an effective stress tensor,

$$
\left(E_{\mu\nu}\right)^{(1)}
=\kappa_nT_{\mu\nu}^{\rm eff},
\qquad
\bar\nabla_\mu\left(E^{\mu\nu}\right)^{(1)}=0.
$$

Every background Killing vector therefore gives

$$
J^\mu[\bar\xi]
=\bar\xi_\nu\left(E^{\mu\nu}\right)^{(1)}.
$$

For cosmological Einstein gravity,

$$
\bar\xi_\nu
\left(\mathcal G^{\mu\nu}\right)^{(1)}
=\bar\nabla_\alpha
\mathcal F_{\rm AD}^{\mu\alpha}[h;\bar\xi].
$$

The curvature-flux formulas in the rest of the paper are alternative representatives of this same current and charge. They are not new observables.

## AdS: exact $\mathcal P$ flux and the index-convention fault

On AdS,

$$
\bar R_{\mu\nu\rho\sigma}
=K(\bar g_{\mu\rho}\bar g_{\nu\sigma}
-\bar g_{\mu\sigma}\bar g_{\nu\rho}),
\qquad
K=\frac{2\Lambda}{(n-1)(n-2)}.
$$

With $\bar S_{\beta\sigma}=\bar\nabla_\beta\bar\xi_\sigma$, linearizing the exact product identity is clean because $\bar{\mathcal P}=0$:

$$
\bar\nabla_\nu
\left[
\bar S^{\beta\sigma}
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
\right]
=
\frac{4\Lambda(n-3)}{(n-1)(n-2)}
\bar\xi_\lambda
\left(\mathcal G^{\mu\lambda}\right)^{(1)}.
$$

Hence the exact linearized representative is

$$
\boxed{
Q[\bar\xi]
=
\frac{(n-1)(n-2)}
{4\kappa_n\Lambda(n-3)}
\int_{\partial\bar\Sigma}
\mathrm d\bar\Sigma_{\mu\nu}\,
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
\bar\nabla^\beta\bar\xi^\sigma
}.
\tag{IV.13}
$$

This identity was independently checked and is the safe AdS formula.

The paper next prints

$$
\begin{aligned}
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
={}&
\left(R^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
+2\delta^\nu_{[\sigma}
\left(\mathcal G_{\beta]}{}^\mu\right)^{(1)}\\
&+2\delta^\mu_{[\beta}
\left(\mathcal G^\nu{}_{\sigma]}\right)^{(1)}
+R^{(1)}
\delta^\nu_{[\sigma}\delta^\mu_{\beta]}.
\end{aligned}
\tag{IV.14}
$$

But Section II explicitly says that an object such as
$(R^{\nu\mu}{}_{\beta\sigma})^{(1)}$ means: first linearize the all-down Riemann tensor, then raise with the background metric. Under that convention, xAct gives the nonzero residual

$$
\begin{aligned}
\mathrm{LHS}-\mathrm{RHS}
=K\bigl(
&\delta^\nu_\sigma h^\mu{}_\beta
-\delta^\nu_\beta h^\mu{}_\sigma\\
&+\delta^\mu_\beta h^\nu{}_\sigma
-\delta^\mu_\sigma h^\nu{}_\beta
\bigr).
\end{aligned}
$$

Equation (IV.14) closes only if the mixed tensor is varied *after* raising indices with the full metric. Thus one must choose one of two repairs:

1. reinterpret every mixed linearized curvature in (IV.14)--(IV.15) as the variation of the mixed tensor; or
2. retain the stated Section-II convention and add the displayed $Kh$ term.

Only after making that repair and imposing sufficiently strong asymptotic vacuum falloffs can the Ricci/scalar pieces be dropped to obtain the Riemann-only flux (IV.15). The exact $\mathcal P$ formula (IV.13) is unaffected.

## Flat space: the missing potential for translations

The AdS Killing two-form cannot survive a naive $\Lambda\to0$ limit: for a translation $\xi^\mu=a^\mu$, $\partial_\mu\xi_\nu=0$. The replacement is an antisymmetric potential

$$
\partial_\nu F^{\nu\mu}[\xi]=\xi^\mu.
$$

For a general Poincaré Killing vector

$$
\xi^\mu=a^\mu+\omega^\mu{}_\nu x^\nu,
\qquad
\omega_{\mu\nu}=-\omega_{\nu\mu},
$$

the chosen representative is

$$
\boxed{
F^{\mu\nu}[\xi]
=
\frac1{n-1}(x^\mu\xi^\nu-x^\nu\xi^\mu)
+\frac{x^2}{2(n-1)}\omega^{\mu\nu}
}.
\tag{V.8}
$$

Its derivative contains a trace part plus

$$
x_\beta\omega_{\sigma\nu}
-x_\sigma\omega_{\beta\nu}
+x_\nu\omega_{\beta\sigma}
=3x_{[\nu}\omega_{\beta\sigma]}.
$$

The latter dies against the algebraic Bianchi identity of $P$. This is why the selected potential treats translations and Lorentz generators uniformly.

## The flat master identity

On Minkowski space,

$$
\partial_\nu
\left[
F_{\beta\sigma}
\left(P^{\nu\mu\beta\sigma}\right)^{(1)}
\right]
=
\left(P^{\nu\mu\beta\sigma}\right)^{(1)}
\partial_\nu F_{\beta\sigma}.
$$

Using the two traces of $P$ and the Bianchi cancellation gives

$$
\boxed{
\xi_\lambda\left(G^{\mu\lambda}\right)^{(1)}
=
-\frac{n-1}{2(n-3)}
\partial_\nu
\left[
F_{\beta\sigma}[\xi]
\left(P^{\nu\mu\beta\sigma}\right)^{(1)}
\right]
}.
\tag{VI.8}
$$

The resulting exact linearized $P$-flux is

$$
Q[\xi]
=
\frac1{2\kappa_n(n-3)}
\int_{\partial\Sigma}\mathrm d\Sigma_{\mu\nu}\,
\left(P^{\nu\mu\beta\sigma}\right)^{(1)}
\left(
\xi_\beta x_\sigma-\xi_\sigma x_\beta
-\frac12x^2\omega_{\beta\sigma}
\right).
$$

The replacement $P^{(1)}\to R^{(1)}$ is conditional. The weighted Ricci and scalar fluxes must vanish. For Lorentz generators the polynomial weight is $O(r^2)$, so the condition is stronger than an unweighted statement that the Ricci tensor approaches zero.

## Translations and ADM four-momentum

On a $t=$ constant slice the binormal convention yields

$$
\mathrm d\Sigma_{\mu\nu}
\left(R^{\nu\mu\beta\sigma}\right)^{(1)}
=
-\mathrm dS_i
\left(R^{i0\beta\sigma}\right)^{(1)}.
$$

For a constant translation,

$$
Q[a]
=
-\frac1{\kappa_n(n-3)}
\lim_{r\to\infty}
\int_{S_r}\mathrm dS_i\,
\left(R^{i0\beta\sigma}\right)^{(1)}
a_\beta x_\sigma.
$$

Substituting the linearized Riemann tensor, integrating angular total derivatives, and imposing the vacuum/constraint falloffs recovers the standard ADM expressions. The checked examples are:

- Schwarzschild: $E=M$, fixing the global sign;
- boosted Schwarzschild: $P^\mu=\gamma M(1,\vec v)$;
- general asymptotically Cartesian data: the curvature energy and momentum reduce to the ADM surface terms, including the trace of the extrinsic curvature.

These equalities are integrated boundary identities. They use regularity and asymptotic constraints; they are not pointwise identities between a Riemann component and the ADM density.

## Lorentz generators and the Regge--Teitelboim completion

Lorentz charges require the Regge--Teitelboim phase space. In four dimensions the leading spatial metric perturbation is even under $\hat x\mapsto-\hat x$, while the leading canonical momentum is odd. These parities cancel the apparently divergent leading rotation and boost integrals.

For rotations, the linear Codazzi relation converts $R_{0ijk}^{(1)}$ into derivatives of the canonical momentum. The curvature formula reduces to the Regge--Teitelboim angular momentum after the required weighted field-equation term is discarded.

For boosts, the Gauss/Ricci decomposition contains both the spatial curvature and a subtraction term. That subtraction is essential for the center-of-mass charge. A displaced Schwarzschild solution gives

$$
-r^3f'(r)+r^2f(r)
=2Ar+3A(\vec a\cdot\hat{\vec r}),
$$

and the parity-odd divergent part drops out, leaving

$$
K_k=\frac{4\pi A}{\kappa_4}a_k=Ea_k.
$$

For Kerr, the main angular density and correction are

$$
\rho_{\rm main}=3GJ\sin^2\theta,
\qquad
\rho_{\rm corr}
=\frac{3GJ}{2}(3\cos^2\theta-1).
$$

Their sphere integrals give $8\pi GJ$, $0$, and $8\pi GJ$ in the source's three decompositions, hence the standard spin.

The component Poincaré brackets are consistent with

$$
\eta_{\mu\nu}=\operatorname{diag}(-,+,+,+),
\qquad
P_0=-E,
\qquad
J_{0i}=K_i.
$$

The algebraic signs were checked. Functional differentiability and the absence of a central term still come from the Regge--Teitelboim canonical theorem, not from the curvature integral alone.

## Gauge transformations and boundary conditions

For a covariantly constructed tensor,

$$
\delta_\zeta X^{(1)}=\mathcal L_\zeta\bar X.
$$

On flat space, $\bar R=0$, so the linearized Riemann tensor is invariant under

$$
h_{\mu\nu}\mapsto h_{\mu\nu}+2\partial_{(\mu}\zeta_{\nu)}.
$$

On maximally symmetric AdS, the mixed constant-curvature identity is Lie invariant. An all-down curvature perturbation acquires the metric Lie-derivative terms expected from lowering indices. This distinction is another way to see why the mixed-index convention in Section IV must be handled consistently.

Local gauge invariance of the integrand is not enough. The integrated charge is invariant only for proper gauge transformations whose boundary term vanishes. Improper transformations are asymptotic symmetries and may carry nonzero charges. Finiteness and conservation further require the stated falloffs, RT parity in the Lorentz sector, and no unwanted boundary flux.

## Generic Einstein backgrounds: the Weyl obstruction

For

$$
\bar R_{\mu\nu}
=\frac{2\Lambda}{n-2}\bar g_{\mu\nu},
$$

the shifted tensor no longer vanishes:

$$
\bar{\mathcal P}^{\nu\mu}{}_{\beta\sigma}
=\bar C^{\nu\mu}{}_{\beta\sigma}.
$$

A Killing potential still exists,

$$
\bar F^{\nu\mu}[\bar\xi]
=-\frac{n-2}{2\Lambda}\bar\nabla^\nu\bar\xi^\mu,
\qquad
\bar\nabla_\nu\bar F^{\nu\mu}=\bar\xi^\mu.
$$

The obstruction instead has two pieces:

$$
\delta_\zeta
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
=
\mathcal L_\zeta\bar C^{\nu\mu}{}_{\beta\sigma},
$$

and

$$
\bar\nabla_\nu
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
=-\mathcal A^\mu{}_{\beta\sigma}[h;\bar C],
$$

where $\mathcal A$ is linear in $\bar C$ and $\bar\nabla h$. The exact product identity is

$$
\bar\nabla_\nu
\left[
\bar S^{\beta\sigma}
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
\right]
=
\frac{4\Lambda(n-3)}{(n-1)(n-2)}
\bar\xi_\lambda
\left(\mathcal G^{\mu\lambda}\right)^{(1)}
+\mathcal W^\mu,
$$

with

$$
\mathcal W^\mu
=
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
\bar C^{\sigma\beta}{}_{\nu\lambda}\bar\xi^\lambda
-\bar S^{\beta\sigma}\mathcal A^\mu{}_{\beta\sigma}.
$$

The current $\mathcal W^\mu$ itself has a superpotential,

$$
\mathcal V_W^{\nu\mu}
=
\bar S^{\beta\sigma}
\left(\mathcal P^{\nu\mu}{}_{\beta\sigma}\right)^{(1)}
+\frac{4\Lambda(n-3)}{(n-1)(n-2)}
\mathcal F_{\rm AD}^{\nu\mu},
\qquad
\mathcal W^\mu=\bar\nabla_\nu\mathcal V_W^{\nu\mu}.
$$

Thus the surface charge has not disappeared; the known completion contains the metric Abbott--Deser potential. What remains open is a universal local completion built only from background and linearized curvatures. An AdS-like curvature representative survives only if the boundary flux of $\mathcal V_W$ vanishes for the particular phase space.

## Canonical and covariant-phase-space translation

The paper's charge $Q[\xi]$ is the boundary term in the differentiable canonical generator

$$
G[\xi]
=
\int_\Sigma
\left(\xi^\perp\mathcal H+\xi^i\mathcal H_i\right)
+Q[\xi].
$$

On the constraint surface, $G=Q$. For exact AdS Killing vectors and charges normalized to vanish on the background,

$$
K(\xi_1,\xi_2)
=
\int_{\partial\Sigma}
k_{\xi_1}[\mathcal L_{\xi_2}\bar g;\bar g]
=0,
$$

so

$$
\{Q[\xi_1],Q[\xi_2]\}
=Q\!\left([\xi_1,\xi_2]\right).
$$

This is a statement about the standard no-flux global AdS phase space. It does not cover Brown--Henneaux asymptotic Killing vectors, for which $\mathcal L_\xi\bar g\neq0$ and a central term can survive.

In local CPS notation:

- $\mathcal F_{\rm AD}^{\mu\nu}$ and the curvature flux are cohomologous surface-charge representatives only under the stated asymptotic conditions;
- replacing $P$ by $R$ is an additional on-shell/falloff reduction, not an off-shell equality of surface forms;
- the paper does not compute $\theta$, $\omega$, or an integrability condition $\delta_1\delta_2H_\xi=\delta_2\delta_1H_\xi$ from first principles;
- the exact-Killing algebra inherits its normalization and absence of central term from the established canonical/CPS representative;
- proper gauge invariance, charge conservation, and absence of symplectic flux are logically separate requirements.

## Global equation ledger

| Source location | Role | Status |
| --- | --- | --- |
| I.1--I.3 | $P$ definition, trace, divergence | Checked with xAct. |
| I.7, I.9--I.11 | shifted $\mathcal P$, trace, AdS background value | Checked with xAct. |
| IV.10--IV.13 | AdS current and exact $\mathcal P$ charge | Checked. |
| IV.14 | mixed $\mathcal P$ expansion under Section-II convention | **Failed**; missing $Kh$ index-raising contribution. |
| IV.15 | Riemann-only AdS representative | Conditional on repairing IV.14 and imposing falloffs. |
| V.8--V.15 | flat Poincaré Killing potential | Checked with Mathematica/xAct. |
| VI.3--VI.8 | trace/Bianchi collapse and flat current identity | Checked. |
| VII | ADM energy and momentum, Schwarzschild and boost tests | Checked, conditional on asymptotic constraints. |
| VIII | rotations, boosts, RT parity, center of mass, Kerr | Checked, conditional on weighted falloffs and the standard RT phase space. |
| IX | flat and AdS gauge covariance | Checked. |
| X.1--X.23 | Einstein/Weyl decomposition and obstruction | Checked. |
| X.24--X.31 | Abbott--Deser completion and boundary simplification | Source-derived; conditional on the AD identity and boundary flux. |
| A.15--A.25 | exact-Killing covariance and $\mathfrak{so}(n-1,2)$ algebra | Algebra checked; canonical premises conditional. |

## Global derivation map

1. Diffeomorphism invariance gives the linearized Bianchi identity.
2. A background Killing vector turns the linearized Einstein tensor into a conserved current.
3. The divergence-free $P/\mathcal P$ tensor converts an antisymmetric potential times curvature into a total divergence.
4. Its trace converts the derivative of that potential into the Einstein current.
5. In AdS, the potential is $\bar\nabla\bar\xi$ and $\bar{\mathcal P}=0$ removes connection-variation terms.
6. In flat space, translations force the introduction of $F$ with $\partial\cdot F=\xi$; the selected representative makes Lorentz-dependent terms vanish by the algebraic Bianchi identity.
7. The exact $P/\mathcal P$ flux becomes a Riemann flux only after weighted Ricci/scalar boundary terms are shown to vanish.
8. ADM and RT formulas follow by Gauss--Codazzi decomposition, parity, and asymptotic field equations.
9. On a generic Einstein background, $\bar{\mathcal P}=\bar C$ creates both gauge-variation and divergence obstructions; the standard AD potential supplies the known Weyl completion.

## Concrete project extensions

1. Re-derive the AdS representative covariantly with an explicit declaration of whether $\delta(R^{\nu\mu}{}_{\beta\sigma})$ varies the full mixed tensor or raises $\delta R_{\alpha\gamma\beta\sigma}$ afterward. Record the two representatives and their $Kh$ difference.
2. Compare the exact $\mathcal P$ surface form with the local Iyer--Wald/Barnich--Brandt $k_\xi$ before taking radial limits. This will show which improvement and normal-displacement terms are being discarded.
3. Test the $P\to R$ replacement on the vault's asymptotically AdS and null-boundary falloffs using weighted, not merely pointwise, Ricci estimates.
4. Apply the flat Killing potential to Maxwell and gravitational null-boundary charges, keeping possible corner improvements $F\to F+H$ explicit.
5. Search for special-background Weyl completions using Killing--Yano tensors, but treat them as background-specific currents rather than a universal solution.
6. Reconstruct the RT Lorentz sector from the CPS symplectic form to decide exactly which parity conditions guarantee integrability and zero flux.

## Verification log

### Checked

- xAct/xPert independently reproduced the $P/\mathcal P$ trace and divergence identities, the linearized Bianchi/Killing identities, the AdS coefficient in (IV.12), and the exact $\mathcal P$ current (IV.13).
- Mathematica/xAct reproduced the flat Killing potential, the Bianchi cancellation, and the master identity (VI.8).
- The ADM energy/momentum chain, Schwarzschild $E=M$, boosted Schwarzschild four-momentum, and the extrinsic-curvature trace contribution were independently checked.
- The full rotation and boost component reductions were checked: all 27 spatial components of the key curvature-to-ADM identity vanish, as do the arbitrary-symmetric-$h_{ij}$ residuals in the boost identity.
- RT parity cancellation, displaced-Schwarzschild $K_i=Ea_i$, Kerr angular densities and sphere integrals, and all displayed Poincaré component signs were checked.
- Flat pure-gauge Riemann invariance, AdS mixed-index covariance, $\bar{\mathcal P}=\bar C$, the Weyl-current coefficients, and the Appendix-A exact-Killing adjoint identity were checked.
- Rendered PDF pages covering the formula-dense sections were compared with the TeX source so that the audited signs and labels are visibly present in the published source.

### Blocked

- The $P\to R$ boundary replacement is conditional on weighted Ricci/scalar fluxes. In the Lorentz sector the weights grow as $r^2$; no universal theorem follows from pointwise vacuum asymptotics.
- Functional differentiability, charge integrability, the full Poisson realization, and zero symplectic flux rely on the standard Abbott--Deser/Regge--Teitelboim phase spaces; they were not reconstructed from a fresh $\theta$ and $\omega$ computation.
- The generic-Einstein identity $\bar\xi\cdot\mathcal G^{(1)}=\bar\nabla\cdot\mathcal F_{\rm AD}$ was used in the Weyl superpotential step rather than independently rederived in that audit.
- A universal local, gauge-invariant, curvature-only Weyl completion remains open.

### Failed

- **Equation (IV.14) fails under the paper's stated Section-II index convention.** The exact nonzero residual is the $Kh$ tensor displayed above. Downstream reliance on the Riemann-only AdS formula must first repair this convention and then verify the boundary falloffs.
- No formula in Sections V--X or Appendix A failed under its explicit conditional assumptions.
