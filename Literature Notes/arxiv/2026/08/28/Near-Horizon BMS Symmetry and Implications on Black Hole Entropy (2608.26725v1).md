---
paper id: 2608.26725v1
title: Near-Horizon BMS Symmetry and Implications on Black Hole Entropy
authors:
  - Nihar Ranjan Ghosh
  - Malay K. Nandy
publication date: 2026-08-27T07:15
abstract: |-
  The paper studies horizon-adapted BMS-like supertranslations of a time-dependent near-horizon Schwarzschild ansatz. It treats the supertranslation parameter as a Goldstone-like mode, extracts a boundary term from the quadratic Einstein-Hilbert expansion, imposes a future-outer-trapping-horizon condition, and proposes a horizon charge and entropy formula with supertranslation-dependent corrections.
comments: "25 pages"
url: https://arxiv.org/abs/2608.26725v1
summary: "The horizon-symmetry target is directly relevant, but the submitted charge/entropy chain is not established: the background is off shell, the stated smooth FOTH sign conditions are incompatible, and the surface-gravity/charge formulas have unresolved normalization and dimensional defects."
tags: []
---

# Verdict

**The paper's central charge-and-entropy conclusion is not proven by the submitted calculation.** The algebraic solution of the displayed marginality equation is correct, but three earlier or parallel steps fail:

1. the metric used as the Einstein-Hilbert background is not an on-shell vacuum metric, even when $m$ is constant, so the paper's reason for discarding the linear variation is false;
2. for a smooth, nonsingular horizon cross-section, the paper's own expression for $\Theta_k$ cannot be strictly negative everywhere on $S^2$, so imposing only $\Theta_l=0$ does not produce the claimed FOTH;
3. the proposed surface gravity and angular average are not a controlled Kodama construction for the nonspherical transformed metric, and the displayed charge leaves all subleading terms in an unspecified function.

The note is nevertheless useful as a compact failure case for horizon CPS work: it shows exactly why a near-horizon diffeomorphism, a boundary term in a quadratic action, and a formal conserved two-form do not yet define an integrable gravitational charge or entropy.

# Source map

- **Section 1, Introduction:** motivates horizon soft hair, dynamical BMS-like transformations, and a Goldstone interpretation of the supertranslation parameter.
- **Section 2, Gauge Conditions and Metric Perturbation:** introduces the truncated near-horizon metric, the residual vector field, and the transformed metric $\bar g=g+\mathcal L_\eta g$.
- **Section 3, Action for the Goldstone Mode and Conserved Charge:** expands the Einstein-Hilbert action, retains a quadratic surface term, and constructs a current and two-form for a general total-derivative Lagrangian.
- **Section 4, Trapped Horizon:** chooses null normals, computes two expansions at $r=0$, and solves $\Theta_l=0$ for $F$.
- **Section 5, Surface Gravity:** imports the Kodama-vector relation, sets $K^a=\delta^a_v$, and states a local surface gravity.
- **Section 6, Charge and Entropy:** gives only the leading scaling of the horizon charge, substitutes the marginality solution into $\kappa$, and states the leading area law.
- **Section 7, Discussion:** interprets the same $F$ as geometry, charge, and thermodynamic hair. There are no appendices or ancillary calculations.

# Geometry, fields, and conventions

Coordinates are $(v,r,\theta,\phi)$, with $v$ an advanced-time coordinate and $m=m(v)$. The paper begins with

$$
ds^2=-\frac{r}{2m(v)}dv^2+2\,dv\,dr+4m(v)^2d\Omega_2^2,
\qquad
d\Omega_2^2=d\theta^2+\sin^2\theta\,d\phi^2.
$$

This is obtained by truncating the static Schwarzschild near-horizon metric and then replacing $m$ by $m(v)$. It is not the exact ingoing Vaidya metric, and the truncation removes radial terms needed by the vacuum Einstein equations.

The residual gauge conditions are

$$
\mathcal L_\eta g_{rr}=\mathcal L_\eta g_{rv}=\mathcal L_\eta g_{Ar}=0.
$$

The printed vector is

$$
\eta=F\partial_v-r\partial_vF\partial_r-\frac{r}{4m^2\gamma_{AA}}\partial_A.
$$

**Source defect:** both the TeX source and rendered PDF omit an angular derivative of $F$ in the last term. As printed, that term is independent of $F$ and does not generate the angular derivatives displayed in the transformed metric. The subsequent formulas require an intended component of the form $\eta^A\propto-D^AF$, but the exact intended contraction and summation convention are not stated.

The paper defines

$$
\mathcal F_1=\frac{m'}{2m^2}-\frac{\partial_vF}{2m}-2\partial_v^2F,
\qquad
\mathcal F_2=\frac{2m'}mF-\frac{F}{2m}-2\partial_vF,
$$

and writes $h_{ab}=\mathcal L_\eta g_{ab}$, with the horizon angular block

$$
\bar g_{AB}\big|_{r=0}=\left(4m^2+8mm'F\right)\gamma_{AB}.
$$

# Quadratic surface action and formal two-form

The proposed effective action starts from

$$
S_E[\bar g]=S_E[g]
+h_{ab}\frac{\delta S_E}{\delta\bar g_{ab}}\bigg|_g
+h_{ab}h_{cd}\frac{\delta^2S_E}{\delta\bar g_{ab}\delta\bar g_{cd}}\bigg|_g+\cdots.
$$

The paper discards the linear term on the assertion that $g$ solves Einstein's equations. It then imports the quadratic surface piece

$$
S_{\rm surface}=\frac1{16\pi G}\int d^4x\sqrt{-g}\,\nabla_a
\left[
\frac12h\nabla_bh^{ab}-\frac14h\nabla^ah
-h^{bc}\nabla_bh^a{}_c-h^{ab}\nabla_ch^c{}_b
\right]
=\int\sqrt{-g}\,\nabla_aA^a.
$$

For a generic total derivative $\sqrt{-g}\mathscr L=\sqrt{-g}\nabla_aB^a$, the source constructs

$$
J^a[\zeta]=\mathscr L\zeta^a-\nabla_b(B^a\zeta^b)+B^b\nabla_b\zeta^a,
\qquad
Q^{ab}=2\zeta^{[a}B^{b]}.
$$

This is a conserved two-form representative for the selected boundary Lagrangian. It is not by itself the Iyer-Wald/Barnich-Brandt surface charge of Einstein gravity. The paper does not compute a presymplectic current, verify degeneracy versus a physical edge transformation, impose boundary conditions, or test charge finiteness, integrability, conservation between cuts, and improvement ambiguity.

# Trapping-horizon chain

With null normals $k^a$ and $l^a$, the source states at $r=0$

$$
\Theta_l=
\frac{2}{m(m+2Fm')}
\left[F(m')^2+m\{Fm''+m'(1+\partial_vF)\}\right],
$$

$$
\Theta_k=
\frac{\Delta_{S^2}F}{4m(m+2Fm')},
\qquad
\Delta_{S^2}F=
\partial_\theta^2F+\cot\theta\,\partial_\theta F
+\csc^2\theta\,\partial_\phi^2F.
$$

Solving $\Theta_l=0$ gives

$$
F(v,\theta,\phi)=\frac{f(\theta,\phi)-\frac12m(v)^2}{m(v)m'(v)}.
$$

This relation is valid only where $m\neq0$ and $m'\neq0$. Substitution into the horizon angular metric gives

$$
\bar g_{AB}\big|_{r=0}=8f(\theta,\phi)\gamma_{AB}.
$$

Thus the area is not generically a small perturbation of $16\pi m^2$, and the slow-evolution or stationary limit $m'\to0$ is singular unless $f-m^2/2$ is tuned simultaneously.

More decisively, a FOTH requires all three stated conditions, including $\Theta_k<0$. At a fixed $v$, assume $F$ is smooth on the connected $S^2$ and $m+2Fm'$ is nonzero, as required for the displayed metric and expansion to stay nonsingular. The denominator of $\Theta_k$ then has a fixed sign. But

$$
\int_{S^2}\Delta_{S^2}F\,d\Omega=0.
$$

Therefore $\Delta_{S^2}F$ cannot have the strict sign needed to make $\Theta_k<0$ everywhere. Constant angular data give $\Theta_k=0$, not $\Theta_k<0$. The submitted construction does not define a smooth FOTH at $r=0$ under its own sign convention.

# Surface gravity and entropy claim

The source imports a Kodama relation and, despite the transformed metric being nonspherical, uses the ansatz $K^a=\delta^a_v$. It states

$$
\kappa=
\frac1{4m}
+\frac{d}{dv}\left(\frac1{4m}\right)
+\frac1{4m}\partial_vF
+\partial_v^2F.
$$

There are four boundaries here:

1. the standard Kodama construction is tied to a warped-product spherical geometry, whereas $F(v,\theta,\phi)$ breaks spherical symmetry;
2. the paper does not display the residuals establishing its two Kodama conditions to the claimed perturbative order;
3. with the standard near-horizon dimensions $[v]=[r]=[m]=L$ and $[F]=L$, $d(1/m)/dv$ has dimension $L^{-2}$ while the other displayed terms have dimension $L^{-1}$;
4. the angular average is written with $d\theta\,d\phi$ rather than the horizon area measure and is not normalized in the final formula.

The charge is reported only as

$$
Q=\int_{\mathscr H}d\Sigma_{ab}Q^{ab}
=\frac{m}{4G}\left[1+\mathscr F(1/m)\right],
$$

where $\mathscr F$ is an unspecified polynomial. No explicit $F$-dependent density, integration measure, or subleading coefficient is provided. The later statement $\mathcal S=A/(4G)$ is therefore not derived at the claimed subleading level. At leading order it follows only after pairing the stated $Q\sim m/(4G)$ with the stated $\kappa_{\rm eff}\sim1/(8m)$; neither normalization has an independent CPS/Wald check.

# Equation ledger

| Source item | Role | Status |
|---|---|---|
| Eqs. (2)-(3), truncated near-horizon metric | background for the EH expansion | **Failed** as an on-shell vacuum background |
| Eq. (5), residual vector | generates $h=\mathcal L_\eta g$ | **Failed** as printed; missing angular $F$ derivative |
| Eqs. (10)-(11), quadratic surface term | Goldstone boundary action | **Blocked** by the off-shell background and unspecified matter completion |
| Eqs. (14)-(16), $J^a$ and $Q^{ab}$ | formal total-derivative current | **Source-derived**; not a verified gravitational Hamiltonian charge |
| Eqs. (23)-(25), expansions and $F$ | locate the proposed FOTH | $\Theta_l$ solution **Checked**; full FOTH claim **Failed** |
| Eqs. (27)-(29), Kodama ansatz and $\kappa$ | dynamical surface gravity | **Blocked** by nonsphericity and absent residuals; dimensional consistency **Failed** |
| Eq. (30), horizon charge | input to entropy | **Blocked** because $\mathscr F$ and the density are not supplied |
| Eq. (31), $\kappa_{\rm eff}$ | soft/dynamical correction | substitution algebra **Checked**; averaging and physical interpretation **Failed** |
| Eq. (32), entropy | central conclusion | **Not independently verified** and not established by the preceding chain |

# Verification log

- **Checked — marginality algebra:** Mathematica substituted
  $F=(f-m^2/2)/(mm')$ into the numerator of $\Theta_l$ and returned exactly zero for $m\neq0$, $m'\neq0$.
- **Checked — Eq. (31) substitution:** Mathematica independently differentiated $F$ and reproduced the printed $m,m',m'',m^{(3)}$ coefficients and the coefficient multiplying the angular $f$ term. This checks only the algebraic substitution into Eq. (29), not Eq. (29) itself.
- **Checked — sphere obstruction:** Mathematica rewrote
  $\sin\theta\,\Delta_{S^2}F$
  as
  $\partial_\theta(\sin\theta\,\partial_\theta F)+\partial_\phi^2F/\sin\theta$.
  Smooth pole behavior and $2\pi$ periodicity give zero total integral, excluding a strict global sign.
- **Failed — background equation:** an xAct/xCoba component calculation for the source metric gives at $r=0$
  $$
  G_{vv}=\frac{m'-4mm''}{2m^2},
  \qquad
  G_{vr}=-\frac1{4m^2},
  $$
  with all angular components zero. In particular $G_{vr}\neq0$ even for constant $m$. Hence the vacuum linear EH variation does not vanish.
- **Visually confirmed:** rendered PDF pages 6, 14, and 15 agree with the TeX for the missing $F$ derivative in Eq. (5), the surface-gravity formula, the non-area angular average, and the unspecified charge polynomial.
- **Blocked:** no author notebook, component residuals, matter action, complete quadratic bulk action, charge density, or boundary-condition analysis is supplied. A full independent xAct reconstruction of the transformed nonspherical metric is also ambiguous because Eq. (5) is incomplete.

# Translation to the vault's CPS conventions

For a reusable horizon-CPS calculation, the order of construction should be reversed:

1. start from an exact solution of a specified gravity-plus-matter action, or retain enough near-horizon orders for the equations of motion and symplectic current;
2. state the corrected residual vector and boundary conditions, then decide whether it is a degenerate gauge direction or a large transformation with a nonzero surface generator;
3. derive $\theta$, $\omega$, and the Iyer-Wald/Barnich-Brandt $k_\eta$ from the same action;
4. check finiteness, integrability, flux/balance, field dependence of $\eta$, and corner improvements;
5. define a genuinely admissible marginal tube and verify every future/outer sign condition globally;
6. only then compare the Hamiltonian charge with a Wald or dynamical-horizon entropy relation.

The paper's formal $Q^{ab}=2\eta^{[a}A^{b]}$ can be kept as a candidate boundary-current representative, but not imported as a gravitational charge until these steps are supplied.

# Bottom line for current projects

The paper is high-priority because it directly joins horizon supertranslations, boundary terms, charges, and dynamical entropy. Its useful result for the vault is negative and precise: the submitted construction does not pass the on-shell-background, global-horizon, or CPS-integrability gates. Reopening the entropy claim requires an exact Vaidya-plus-matter completion, a corrected residual vector, and an explicit covariant phase-space charge calculation.

Back to [[2026_08_28_overview]].
