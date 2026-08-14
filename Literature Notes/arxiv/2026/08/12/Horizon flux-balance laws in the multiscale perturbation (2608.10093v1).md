---
paper id: 2608.10093v1
title: Horizon flux-balance laws in the multiscale perturbation
authors:
  - Ali Seraj
publication date: 2026-08-10T18:04
abstract: |-
  Black-hole event horizons obey evolution equations for their intrinsic and extrinsic geometry. This paper studies those equations in a two-timescale expansion about Kerr, derives coarse-grained rigidity constraints, constructs a perturbative transformation from a generic bulk gauge to an ingoing Newman--Unti horizon gauge, and formulates horizon charges and fluxes for energy, dynamical entropy, and angular momentum through the orders needed for post-adiabatic EMRI applications.
comments: "33 pages, 1 figure"
url: https://arxiv.org/abs/2608.10093v1
summary: "A detailed horizon-adapted pipeline from multiscale Kerr perturbations to null-boundary charges, with a sharp separation between locally ambiguous Carter data and protected global entropy, angular momentum, and energy."
tags: []
---

# Why this paper matters here

This is a direct T1-charge, T1-boundary, T1-Wald-CPS, and T1-symmetry match. It combines three pieces that are usually treated separately:

1. the exact Raychaudhuri--Damour--shear evolution tower on a null horizon;
2. a two-timescale expansion appropriate to extreme mass-ratio inspirals (EMRIs), including a flow-based coarse-graining operation;
3. a covariant-phase-space/Wald--Zoupas construction of horizon charges and fluxes in a fully adapted Carter gauge.

The most reusable point for the vault is not merely the final flux formula. It is the paper's bookkeeping of gauge, perturbative order, and global versus local observables. A second-order bulk perturbation does not determine all second-order local Carter data because the finite transformation mixes orders, but it does determine the global dynamical entropy, axial angular momentum, and the proposed horizon energy through second order.

# How to read this long paper

- **Essential:** sections 2, 3.2--3.4, 4.1, 4.3, 5.2--5.4, and appendix A. These contain the null data, exact constraint/evolution system, multiscale rigidity argument, bulk-to-horizon algorithm, charge/flux law, and the order-mixing audit.
- **Technical reference:** section 4.2 gives explicit first- and second-order horizon data in terms of the gauge-transformed bulk metric; section 5.4 gives the complete perturbative charge/flux ledger through the claimed orders.
- **Background/motivation:** section 1 locates the construction relative to optical scalars, the membrane paradigm, null-boundary phase spaces, and EMRI two-timescale perturbation theory.
- **Optional on a first pass:** the detailed finite-coordinate basis transformation in section 4.3 can be postponed until one actually needs Carter-gauge local fields.

# Complete source map

## Section 1: Introduction

The paper connects the Sachs/Newman--Penrose optical equations, Hawking--Hartle horizon absorption, the Damour membrane picture, modern null-boundary charges, and two-timescale EMRI perturbation theory. Its target application is the slow evolution of the primary black hole caused by horizon absorption, which feeds into post-adiabatic waveform corrections.

## Section 2: Ingoing Newman--Unti coordinates

The ingoing Newman--Unti (INU) chart \((v,s,x^A)\) is built from a horizon generator \(\ell\), an ingoing affinely parametrized null congruence \(n=-\partial_s\), and horizon cuts \(\mathcal S_v\). It provides a near-horizon analogue of Bondi coordinates.

## Section 3: Horizon dynamics

- Section 3.1 defines the intrinsic metric, shift/velocity, inaffinity, Hajicek connection, expansion, and shear.
- Section 3.2 records the exact vacuum evolution tower and its covariance properties.
- Section 3.3 introduces the two-timescale expansion and averaging along the background horizon generator.
- Section 3.4 proves the first-order coarse-grained rigidity statements.

## Section 4: From a user gauge to INU gauge

- Section 4.1 solves the bulk INU gauge equations and fixes the boundary data by horizon locking plus adiabatic conditions on \(V^A\) and \(\kappa\).
- Section 4.2 gives the first- and second-order horizon geometry extracted from the transformed metric.
- Section 4.3 constructs the finite map to Carter coordinates and identifies the order-mixing ambiguity.

## Section 5: Horizon charges and fluxes

- Section 5.1 identifies the residual Carter-gauge symmetries.
- Section 5.2 imports the Chandrasekaran--Flanagan--Prabhu null phase space and Wald--Zoupas stationarity prescription, then derives the exact charges and fluxes.
- Section 5.3 isolates dynamical entropy, Lorentz/angular momentum, and a proposed off-Kerr energy.
- Section 5.4 expands charges through \(O(\epsilon^2)\), fluxes through \(O(\epsilon^3)\), and proves that the three global charges are protected against the local order-mixing ambiguity.

## Appendix A: Green function on the horizon

The appendix selects the advanced/teleological Green function for \((\partial_v-\bar\kappa)f=-g\) and explains when the result has a local derivative expansion.

# Theory, notation, and conventions

- Natural units \(G=c=1\).
- \(\mathcal M\) is spacetime, \(\mathcal H\) the event horizon, and \(\mathcal S_v\) a two-dimensional cut.
- Greek indices are spacetime indices, lower-case Latin indices are intrinsic to \(\mathcal H\), and upper-case Latin indices are intrinsic to \(\mathcal S_v\).
- A bar denotes a stationary Kerr-background quantity. \(X_{(n)}\) or \(X^{(n)}\) denotes the \(n\)-th perturbative coefficient.
- The paper uses \(\doteq\) for equality after restriction to \(\mathcal H\).
- Exact cut indices are moved with \(q_{AB}\); perturbative coefficients are moved with \(\bar q_{AB}\).
- The generator obeys \(\ell^\nu\nabla_\nu\ell^\mu=\kappa\ell^\mu\). Under \(\ell\mapsto\alpha\ell\),

  $$
  \kappa\mapsto(\partial_\ell+\kappa)\alpha.
  $$
- The slow time is \(\tilde v=\epsilon v\), with \(v\) and \(\tilde v\) treated as independent in the multiscale expansion.
- The background is stationary, axisymmetric, and non-extremal: \(\bar\kappa>0\), \(\bar\theta=0\), \(\bar\sigma_{AB}=0\), and \(\bar V^A=\bar\Omega_H\phi^A\).
- The event-horizon equations use a teleological future boundary condition, not retarded evolution from past data.

# INU geometry and the exact horizon system

The INU gauge conditions and metric are

$$
g_{ss}=g_{sA}=0,\qquad g_{vs}=1,
$$

$$
ds^2=dv(-F\,dv+2ds)+g_{AB}(dx^A-U^A dv)(dx^B-U^B dv).
$$

Near \(s=0\),

$$
F=2s\kappa+s^2\lambda+\cdots,\qquad
U^A=V^A+2s\omega^A+s^2K^A+\cdots,\qquad
g_{AB}=q_{AB}+sC_{AB}+\cdots.
$$

Thus \(q_{AB}\), \(V^A\), \(\kappa\), and \(\omega_A\) can be read directly from the near-horizon metric. The deformation tensor is

$$
\Theta_{AB}=\sigma_{AB}+\frac12\theta q_{AB},\qquad q^{AB}\sigma_{AB}=0,
$$

and the convective derivative is

$$
\mathcal D_v=\frac{d}{dv}+\mathcal L_V.
$$

In vacuum, the horizon equations used in the paper are

$$
(\mathcal D_v-\theta)\sqrt q=0,\qquad
(\mathcal D_v-\theta)q_{AB}=2\sigma_{AB},
$$

$$
(\mathcal D_v-\kappa)\theta=-\frac12\theta^2-\sigma_{AB}\sigma^{AB},
$$

$$
(\mathcal D_v+\theta)\omega_A
=D_A(\kappa+\theta/2)-D_B\sigma_A{}^B,
$$

$$
(\mathcal D_v-\kappa+\theta)\sigma^A{}_B=-\mathcal C^A{}_B.
$$

Here \(\mathcal C_{AB}=e_A^\nu e_B^\beta\ell^\mu\ell^\alpha C_{\mu\nu\alpha\beta}\) is the ingoing Weyl/tidal field. The first two equations are kinematic; the next two are the Raychaudhuri and Damour equations; the last propagates the shear.

The differential operators are organized by cut diffeomorphisms, boost weight under rescaling of \(\ell\), and Weyl weight. This is useful when translating the equations into a null-boundary covariant language: the combinations are not arbitrary coordinate artifacts.

# Two-timescale coarse-graining and adiabatic rigidity

The expansion is

$$
f(v,x^A;\epsilon)\sim\sum_{n=0}^N\epsilon^n f_{(n)}(v,\tilde v,x^A),\qquad \tilde v=\epsilon v,
$$

with

$$
\frac{df_{(n)}}{dv}=\partial_v f_{(n)}+\epsilon\partial_{\tilde v}f_{(n)}.
$$

The average \(\langle\cdot\rangle\) is taken along the flow of the background generator \(\bar\ell=\partial_v+\bar V^A\partial_A\). It satisfies

$$
\bar{\mathcal D}_v\langle f\rangle=0=
\langle\bar{\mathcal D}_v f\rangle,\qquad
\langle f\bar{\mathcal D}_v g\rangle=-\langle g\bar{\mathcal D}_v f\rangle.
$$

For a circular equatorial mode \(f_m(\tilde v,\theta)e^{im(\varphi-\Omega v)}\), only \(m=0\) survives for \(\Omega\neq\bar\Omega_H\); exact corotation is the resonance where all azimuthal modes survive.

The gauge choice removes fast pieces from \(\kappa\) and \(V^A\):

$$
\operatorname{osc}\kappa=0,\qquad \operatorname{osc}V^A=0.
$$

The perturbative chain is then:

1. Linearized Raychaudhuri gives \((\bar{\mathcal D}_v-\bar\kappa)\theta_{(1)}=0\). The teleological final-state condition removes the exponentially growing homogeneous mode, hence

   $$
   \theta_{(1)}=0,\qquad \theta=\epsilon^2\theta_{(2)}+O(\epsilon^3).
   $$

2. At second order,

   $$
   (\bar{\mathcal D}_v-\bar\kappa)\theta_{(2)}=-\sigma_{(1)}^2,\qquad
   \langle\theta_{(2)}\rangle=\frac{\langle\sigma_{(1)}^2\rangle}{\bar\kappa}.
   $$

3. Averaging the linearized metric equation yields

   $$
   \mathcal L_{V_{(1)}}\bar q_{AB}=2\langle\sigma^{(1)}_{AB}\rangle,\qquad
   \bar D_A V_{(1)}^A=0.
   $$

4. Smearing the averaged Damour equation with \(V_{(1)}^A\), integrating by parts on the closed cut, and using incompressibility gives the positive integral

   $$
   \int_{\mathcal S}\sqrt{\bar q}\,
   \langle\sigma^{(1)}_{AB}\rangle
   \langle\sigma_{(1)}^{AB}\rangle=0.
   $$
   Therefore

   $$
   \boxed{\langle\sigma^{(1)}_{AB}\rangle=0.}
   $$

5. Consequently \(V_{(1)}^A\) is a Killing vector of the background cut. For Kerr,

   $$
   V_{(1)}^A=\Omega_{(1)}(\tilde v)\phi^A,\qquad
   \kappa_{(1)}=\kappa_{(1)}(\tilde v),\qquad
   \langle\mathcal C^{(1)}_{AB}\rangle=0.
   $$

This is the paper's **adiabatic rigidity**: the coarse-grained linear shear vanishes, the angular correction lies along the axial isometry, and the inaffinity correction is angle-independent. These conclusions require a closed positive-definite horizon cut, \(\bar\kappa>0\), stationarity/axisymmetry of the background, the stated averaging properties, and the teleological boundary condition.

# Bulk user gauge to horizon data

Start from

$$
\tilde g^{\mu\nu}=\bar g^{\mu\nu}+h^{\mu\nu},\qquad
h^{\mu\nu}=\epsilon h_{(1)}^{\mu\nu}+\epsilon^2h_{(2)}^{\mu\nu}+\cdots,
$$

with the background already written in INU coordinates. Under the second-order knight diffeomorphism, the inverse-metric perturbation becomes

$$
\hat h^{\mu\nu}
=\epsilon(h_{(1)}^{\mu\nu}+\mathcal L_{\xi_{(1)}}\bar g^{\mu\nu})
+\epsilon^2\left(h_{(2)}^{\mu\nu}+\mathcal L_{\xi_{(1)}}h_{(1)}^{\mu\nu}
+\frac12\mathcal L_{\xi_{(1)}}^2\bar g^{\mu\nu}
+\mathcal L_{\xi_{(2)}}\bar g^{\mu\nu}\right).
$$

The radial ODEs fixing \(\hat h^{vv}=\hat h^{vs}=\hat h^{vA}=0\) determine the bulk extension of \(\xi_{(n)}\) from its horizon values. At first order the residual horizon vector is

$$
\xi_{(1)}\doteq f_{(1)}\bar\ell+Q_{(1)}\partial_s+Y_{(1)}^A\partial_A.
$$

The remaining conditions are:

- **Horizon locking:** choose \(Q_{(1)}\) so that the perturbed event horizon remains at \(s=0\), with

  $$
  (\bar{\mathcal D}_v-\bar\kappa)Q_{(1)}=\frac12h_{(1)}^{ss}.
  $$
- **Adiabatic velocity:** use \(Y_{(1)}^A\) to remove only the oscillatory part of \(V_{(1)}^A\); its average cannot be removed perturbatively over the radiation-reaction time.
- **Adiabatic inaffinity:** use \(f_{(1)}\) to remove the oscillatory part of \(\kappa_{(1)}\).

Once in INU gauge,

$$
V^A\doteq g^{sA},\qquad q_{AB}\doteq g_{AB},\qquad
\kappa\doteq\frac12\partial_s g^{ss},\qquad
\omega^A\doteq\frac12\partial_s g^{sA}.
$$

The paper gives the complete first-order \(q^{(1)}_{AB}\), \(\Theta^{(1)}_{AB}\), and \(\omega^A_{(1)}\) in terms of \(h_{(1)}^{\mu\nu}\), \(Q_{(1)}\), \(Y_{(1)}^A\), and \(f_{(1)}\). Second order is generated by the replacement

$$
h_{(1)}^{\mu\nu}\longrightarrow
H_{(2)}^{\mu\nu}=h_{(2)}^{\mu\nu}
+\mathcal L_{\xi_{(1)}}h_{(1)}^{\mu\nu}
+\frac12\mathcal L_{\xi_{(1)}}^2\bar g^{\mu\nu},
$$

together with the inverse-metric quadratic correction in \(q^{(2)}_{AB}\).

# Finite Carter transformation and the order-mixing obstruction

Carter coordinates \((\hat v,\hat x^A)\) impose

$$
\hat\ell=\partial_{\hat v},\qquad \hat\kappa=\bar\kappa,\qquad \hat V^A=0.
$$

The required transformation is finite because \(O(\epsilon)\) changes in \(\kappa\) and \(V^A\) accumulate to \(O(1)\) over \(\hat v=O(\epsilon^{-1})\). Writing \(\ell=\lambda\hat\ell\), one solves

$$
(\hat\ell+\bar\kappa)\lambda=\kappa,\qquad
\frac{dv}{d\hat v}=\lambda^{-1},\qquad
\frac{dx^A}{d\hat v}=\lambda^{-1}V^A.
$$

The transformed null frame is a boost plus a null rotation, and the horizon data transform as

$$
\hat q_{AB}=E_A{}^CE_B{}^Dq_{CD},\qquad
\hat\Theta_{AB}=E_A{}^CE_B{}^D\lambda^{-1}\Theta_{CD},
$$

$$
\hat\omega_A=E_A{}^B\left(\omega_B-D_B\ln\lambda
+\bar\kappa\lambda\beta_B-\Theta_{BC}\beta^C\right).
$$

The obstruction is precise: determining \(\hat q^{(2)}_{AB}\) and \(\hat\omega_A^{(2)}\) requires the coordinate map through \(O(\epsilon^2)\), whose source includes \((\kappa_{(3)},V^A_{(3)})\). The unknown third-order completion produces

$$
\Delta_\zeta q^{(2)}_{AB}=\mathcal L_Z\bar q_{AB},\qquad
\Delta_\zeta\omega_A^{(2)}=\mathcal L_Z\bar\omega_A+\bar\kappa\bar D_AF,\qquad
\Delta_\zeta\Theta_{AB}=O(\epsilon^3).
$$

This is a gauge/order-mixing ambiguity in local second-order Carter data, not a failure of the second-order INU extraction.

# Residual symmetries, charges, and exact flux law

In Carter gauge the residual generators are

$$
\xi=f\partial_{\hat v}+Y^A\partial_A,\qquad
f=T(\hat x^A)+W(\hat x^A)e^{-\bar\kappa\hat v},\qquad
\partial_{\hat v}Y^A=0.
$$

The paper fixes the equivalence class \([\ell^\mu,\kappa]\) as boundary structure and adopts the Wald--Zoupas condition that the boundary presymplectic potential vanish on nonexpanding, shear-free horizons. With \(\oint=\int d^2\hat x/(4\pi)\),

$$
Q_\xi=\frac12\oint\sqrt q\left[f(\bar\kappa-\theta)+\partial_{\hat v}f+Y^A\omega_A\right].
$$

The supertranslation and superrotation pieces are

$$
Q_f=\frac12\oint\sqrt q\left[f(\bar\kappa-\theta)+\partial_{\hat v}f\right],\qquad
Q_Y=\frac12\oint\sqrt q\,Y^A\omega_A.
$$

Using the exact horizon equations, their fluxes combine into

$$
\boxed{
\mathcal F_\xi=\frac14\oint\sqrt q
\left(\sigma^{AB}-\frac12\theta q^{AB}\right)\delta_\xi q_{AB}
},
$$

where \(\delta_\xi q_{AB}=f\partial_{\hat v}q_{AB}+\mathcal L_Yq_{AB}\). This makes the flux a pairing between the trace-reversed deformation tensor and the symmetry-induced metric deformation.

With \(q_{AB}=\mu\gamma_{AB}\), \(\mu=\sqrt q\), and \(\det\gamma=1\), the same formula becomes

$$
\mathcal F_\xi=\frac14\oint\left(\mu^2\sigma^{AB}\mathcal L_\xi\gamma_{AB}
-\theta\mathcal L_\xi\mu\right).
$$

This separates conformal shape/shear from area/expansion and is likely the cleanest form for comparison with null-boundary canonical pairs.

# Global charges

## Dynamical entropy

For \(T=1\),

$$
Q_{T=1}=\frac{1}{8\pi}\left(\bar\kappa A-\partial_{\hat v}A\right)
=T_HS_{\rm dyn},\qquad T_H=\frac{\bar\kappa}{2\pi},
$$

$$
S_{\rm dyn}=\left(1-\tau\partial_\tau\right)\frac A4,\qquad
\tau=\frac{e^{\bar\kappa\hat v}}{\bar\kappa}.
$$

The exact production law is

$$
\partial_{\hat v}S_{\rm dyn}
=\frac{1}{4\bar\kappa}\int_{\mathcal S_{\hat v}}d^2\hat x\sqrt q
\left(\sigma_{AB}\sigma^{AB}-\frac12\theta^2\right).
$$

In this perturbative regime \(\sigma=O(\epsilon)\) and \(\theta=O(\epsilon^2)\), so the leading \(O(\epsilon^2)\) production is non-negative. This does **not** prove a nonperturbative local second law because the exact integrand contains \(-\theta^2/2\).

## Lorentz charges and angular momentum

If \(\bar Y^A\) is a conformal Killing vector of \(\bar q_{AB}\), with \(\bar D_A\bar Y^A=\psi\), the horizon Lorentz generator is

$$
\chi=\bar Y^A\partial_A+\frac{\psi}{2\bar\kappa}\partial_{\hat v}.
$$

For the axial Killing vector \(\phi=\partial_\varphi\),

$$
J=-Q_\phi.
$$

Its flux begins at \(O(\epsilon^2)\). The paper gives the Lorentz and axial fluxes through \(O(\epsilon^3)\), including the slow derivative \(\partial_{\tilde v}\theta_{(2)}\) and all measure/index-raising corrections.

## Energy and its limitation

The charge of the background asymptotic time vector gives \(M_{\rm Kerr}/2\) on Kerr, so the paper does not identify that charge directly with the energy. Instead it proposes an off-Kerr extension using the Kerr equation of state:

$$
E\equiv M_{\rm Kerr}(S_{\rm dyn},J),\qquad
M_{\rm Kerr}(S,J)=\sqrt{\frac{S}{4\pi}+\frac{\pi J^2}{S}}.
$$

Then

$$
\delta E=\frac{\kappa_{\rm Kerr}(S_{\rm dyn},J)}{2\pi}\delta S_{\rm dyn}
+\Omega_{\rm Kerr}(S_{\rm dyn},J)\delta J.
$$

This agrees with ADM/Kerr energy on the stationary Kerr family, but away from that family it is a chosen extension, not a first-principles field-dependent-symmetry charge derived in the paper. The thermodynamic \(\kappa_{\rm Kerr}\) and \(\Omega_{\rm Kerr}\) need not equal the geometrical inaffinity and angular velocity of the dynamical horizon.

# Perturbative ledger and protected observables

The area density expansion is

$$
\sqrt q=\sqrt{\bar q}\left(1+\epsilon\mu_{(1)}+\epsilon^2\mu_{(2)}\right)+O(\epsilon^3),
$$

$$
\mu_{(1)}=\frac12q_{(1)},\qquad
\mu_{(2)}=\frac12q_{(2)}+\frac18q_{(1)}^2
-\frac14q^{(1)}_{AB}q_{(1)}^{AB}.
$$

The paper expands \(Q_T,Q_Y,Q_W\) through second order and the fluxes through third order. The order-mixing shift gives

$$
\Delta_\zeta Q_T^{(2)}
=-\frac{\bar\kappa}{2}\oint\sqrt{\bar q}\,Z^A\bar D_AT,
$$

so a general angle-dependent \(T\) charge is ambiguous, while the constant mode is protected. A parallel calculation shows that a generic superrotation/Lorentz charge is ambiguous, but the closed-cut integral and background axisymmetry imply

$$
\Delta_\zeta S_{\rm dyn}^{(2)}=0,\qquad
\Delta_\zeta J^{(2)}=0,\qquad
\Delta_\zeta E^{(2)}=0.
$$

This is the paper's achieved claim tier: an exact null-horizon charge/flux framework plus a controlled perturbative extraction algorithm and protected global charges through second order. It is not yet an explicit EMRI absorption calculation, because no concrete Lorenz-gauge bulk perturbation is inserted.

# Appendix A: teleological Green function

For

$$
(\partial_v-\bar\kappa)f=-g,
$$

the future-regular event-horizon solution is

$$
f_A(v)=\int_v^\infty e^{-\bar\kappa(v'-v)}g(v')\,dv'.
$$

The retarded solution contains a late-time exponentially growing homogeneous part. If the source varies slowly compared with \(\bar\kappa^{-1}\), the advanced solution admits the local expansion

$$
f(v)=\frac{g(v)}{\bar\kappa}
+\frac{\partial_vg(v)}{\bar\kappa^2}+\cdots,
$$

valid when \(\lvert\partial_vg/(\bar\kappa g)\rvert\ll1\). This condition must be checked before replacing the teleological integral by local derivatives.

# Translation to the vault's boundary/CPS language

- The fixed structure \([\ell,\kappa]\) is part of the boundary phase-space definition. Changing the representative or allowing \(\delta\kappa\) changes which null presymplectic potential is selected; the paper's charge formula is therefore prescription- and boundary-condition-dependent in a controlled way.
- The exact flux pairs the trace-reversed null deformation with \(\delta_\xi q_{AB}\). In shape/area variables it separates two candidate canonical pairs: \((\gamma_{AB},\mu^2\sigma^{AB})\) and \((\mu,-\theta)\).
- The INU chart is the natural finite-cutoff/null-boundary data-extraction frame. Carter gauge is more convenient for charges but introduces a finite slow-time transformation and the order-mixing obstruction.
- The global/local distinction is essential: a local second-order charge density can remain gauge-completion dependent even when the integrated Killing charge is unambiguous.
- The energy construction should be kept separate from the directly derived Wald--Zoupas charges. Its validity is “correct under the chosen Kerr-equation-of-state extension,” not a universal horizon-energy theorem.

# Verification log

## Assumptions

- Vacuum general relativity near a stationary, axisymmetric, non-extremal Kerr horizon with \(\bar\kappa>0\).
- A regular two-timescale expansion with slow time \(\tilde v=\epsilon v\), horizon locking, and the paper's adiabatic conditions on \(V^A\) and \(\kappa\).
- Closed horizon cuts, teleological future regularity, and the fixed null-boundary structure \([\ell,\kappa]\) used by the selected Wald--Zoupas prescription.
- Perturbative coefficients are raised with \(\bar q_{AB}\) and the local derivative expansion of the advanced Green function is used only when \(|\partial_v g/(\bar\kappa g)|\ll1\).

## Checked

- **Kerr thermodynamic algebra (Mathematica):** independently reproduced \(\partial_SM_{\rm Kerr}=\kappa_{\rm Kerr}/(2\pi)\), \(\partial_JM_{\rm Kerr}=\Omega_{\rm Kerr}\), the Maxwell relation \(\partial_J\kappa_{\rm Kerr}=2\pi\partial_S\Omega_{\rm Kerr}\), and the Smarr identity. All residuals were exactly zero under \(S>0\) and real \(J\).
- **Area-density expansion (Mathematica):** expanded \(\sqrt{\det(\bar q+\epsilon q_{(1)}+\epsilon^2q_{(2)})}\) for a generic symmetric \(2\times2\) perturbation after choosing a local orthonormal background frame. The residual against the stated \(\mu_{(1)},\mu_{(2)}\) formula was exactly zero.
- **Third-order shear-flux measure/index algebra (Mathematica):** for generic symmetric first- and second-order shear matrices with trace-free \(\sigma_{(1)}\), expanded \(\sqrt q\,\sigma_{AB}\sigma^{AB}\) through \(O(\epsilon^3)\). This exactly reproduced the paper's \(2\sigma_{(1)}\!\cdot\!\sigma_{(2)}\), \(-2q_{(1)}\sigma_{(1)}\sigma_{(1)}\), and \(q_{(1)}\sigma_{(1)}^2/2\) terms.
- **Dynamical-entropy balance algebra (Mathematica):** differentiated the local density \(\sqrt q(\bar\kappa-\theta)/2\), substituted \(\partial_{\hat v}\sqrt q=\sqrt q\theta\) and Raychaudhuri, and obtained exactly \(\sqrt q(\sigma^2-\theta^2/2)/2\).
- **Green-function sign:** direct differentiation of the advanced integral reproduces \((\partial_v-\bar\kappa)f_A=-g\); the future exponential kernel decays for \(\bar\kappa>0\).

## Source-derived

- The INU gauge-fixing ODEs, the explicit first- and second-order bulk-to-horizon formulas, and the transformed Hajicek connection were reconstructed from the TeX source and visually cross-checked against the rendered PDF.
- The coarse-grained shear proof was followed step by step, including its closed-cut integration by parts and positivity input.
- The exact Wald--Zoupas charge formula and its dependence on the fixed \([\ell,\kappa]\) boundary structure were read from section 5.2; no independent derivation from the Einstein--Hilbert presymplectic current was attempted.

## Blocked

- An explicit check of the complete user-gauge-to-INU pipeline requires a concrete first- and second-order bulk perturbation \(h^{\mu\nu}_{(1,2)}\) satisfying the vacuum Einstein equations near Kerr. No such dataset or ancillary implementation is supplied.
- The claimed \(O(\epsilon^3)\) Lorentz and angular-momentum fluxes can be checked algebraically once \(q^{(1,2)}_{AB}\), \(\omega^{(1,2)}_A\), and their slow/fast derivatives are specified, but the paper supplies no numerical or symbolic EMRI example.
- The global energy would require a field-dependent-symmetry CPS derivation to become a first-principles charge. The paper explicitly leaves that problem open.

## Failed

- None among the independently checked algebraic chains.

## Not independently verified

- The full tensorial derivation of the null presymplectic potential and all gauge-transformation formulas.
- Existence and regularity of the assumed two-timescale Kerr perturbation over the full radiation-reaction time.
- Quantitative waveform improvement or horizon-backreaction accuracy, since this paper constructs the framework but does not apply it to a concrete EMRI solution.
