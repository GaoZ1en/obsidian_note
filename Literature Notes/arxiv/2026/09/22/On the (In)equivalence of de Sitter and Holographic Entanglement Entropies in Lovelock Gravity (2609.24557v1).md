---
paper id: 2609.24557v1
title: "On the (In)equivalence of de Sitter and Holographic Entanglement Entropies in Lovelock Gravity"
authors:
  - "Kanai, Takamasa"
publication date: 2026-09-21
abstract: |-
  We investigate the relation between de Sitter entropy and holographic entanglement entropy in higher-curvature gravity and its braneworld realization. Using the canonical formulation of the gravitational action and the Euclidean gravitational path integral, we derive the de Sitter entropy, including contributions from higher-curvature surface terms, and compare it with the holographic entanglement entropy obtained from the corresponding entropy functional. We first consider Gauss-Bonnet gravity and show that the two entropies coincide for static asymptotically de Sitter braneworld spacetimes on the RS II model, while they generally differ for stationary spacetimes. The mismatch in the stationary case arises from an extrinsic-curvature contribution associated with the constant-time surface, which vanishes for static configurations but is generally nonzero for stationary geometries. We then extend the analysis to general Lovelock gravity and show that the agreement between the de Sitter entropy and holographic entanglement entropy persists for static asymptotically de Sitter braneworld spacetimes in the RS II model beyond the Gauss-Bonnet case. We also comment that the same distinction between static and stationary configurations applies to braneworld black holes: the black hole entropy agrees with the holographic entanglement entropy in the static case, while the two generally differ for stationary braneworld black holes. Our results clarify the relation between gravitational and holographic entropies in higher-curvature gravity and provide a broader perspective on holographic correspondence in Lovelock theories and their braneworld realizations.
comments: "20 pages, 1 figure"
url: https://arxiv.org/abs/2609.24557v1
summary: "Audits the full Lovelock boundary entropy chain; checks the static density and identifies internal failures preventing acceptance of a generic stationary mismatch."
tags: []
---

# Verdict and the question worth retaining

**The advertised generic stationary entropy mismatch is not established by the printed calculation.** The paper identifies a candidate brane integral quadratic in the extrinsic curvature of a time slice, but its junction-condition cancellation has explicit coefficient/normalization inconsistencies. A nonzero time-slice curvature also does not, by itself, imply a nonzero candidate integral. The static horizon density agrees with an independent Gauss–Bonnet conical-product check; the general static Lovelock argument is recorded with its boundary assumptions and printing defects.

Source: [2609.24557v1](https://arxiv.org/abs/2609.24557v1), Takamasa Kanai, 20 pages. Entire PDF inspected; equations (103)–(104) and (130) visually confirmed on pp.13/18. Context: [[2026_09_22_overview]].

# Complete route through a dense paper

This is a compact but dense action-to-corner calculation, so the useful reading order is not the abstract's conclusion first.

- I, pp.1–3: RS II geometry and Table I's several distinct extrinsic curvatures.
- II, pp.3–4: Gauss–Bonnet bulk/Myers boundary action and vacuum-brane junction condition.
- III, pp.4–9: frame decomposition, canonical momentum, Hamiltonian constraint and retained surface terms; III.A, pp.8–9: a second split at the brane and the boundary-of-boundary contribution.
- IV, pp.9–13: Jacobson–Myers comparison, regulated Euclidean horizon, brane cancellation and the claimed stationary remainder.
- V, pp.13–18: general Lovelock action, transgression polynomial, static decomposition and horizon/corner entropy.
- VI, pp.18–19: stationary interpretation and proposed black-hole extension; references pp.19–20. No appendices.

**How to read this dense chain:** use II and the geometry dictionary before III. Track the bulk horizon term, brane term and intersection term separately through (78), (87), (91)–(104). Check (103) before interpreting (105). In V, the essential chain is (106)–(113), static identity (119), integration-by-parts (123)–(128), then the regulated limit (130); long antisymmetrized expressions are reference material but their coefficients matter.

# Geometry dictionary: do not conflate the normals

The bulk is $M_n^+\cup M_n^-$ with $Z_2$ gluing across an $(n-1)$-dimensional brane. The brane is asymptotically de Sitter and intersects bulk cosmological-horizon sections $\Gamma^\pm$ at $\partial\Gamma$.

| Object | Metric | Normal or curvature |
| --- | --- | --- |
| bulk | $g_{MN}$ | Lorentzian signature $(-,+,\ldots)$ |
| time slice | $h_{ij}$ | unit timelike $u$, curvature $H_{ij}[u]$ |
| brane | $q_{\mu\nu}$ | outward spacelike $n$, curvature $K_{\mu\nu}[n]$ |
| brane time slice | $\gamma$ | tangential projections of $H,K$ |
| horizon section | $G$ | normals $u,r$ |
| intersection | $p$ | boundary curvature $k=\operatorname{tr}K^{(n-3)}[n]$ |

The paper's symbol $\Sigma_n$ is a label for a constant-time slice; its dimension is $n-1$. $[F]^-=F(0^+)-F(0^-)$ follows the stated Gaussian-normal orientation; one cannot replace jumps by factors of two without retaining normal signs. The time foliation meets the timelike brane orthogonally. A Killing horizon having vanishing null expansion/shear is not identical to $H_{ij}=0$ throughout a chosen spatial foliation.

# Action and junction condition

Set $\alpha=\beta l^2/4$. The action is
$$
I={1\over16\pi G_n}\int_{M^+\cup M^-}\sqrt{-g}(R-2\Lambda+\alpha L_{GB})
 +\int_{\rm brane}\sqrt{-q}\left(-\sigma+{[Q]^-\over16\pi G_n}\right),
$$
$$
L_{GB}=R^2-4R_{MN}R^{MN}+R_{MNKL}R^{MNKL},\qquad
Q=2K+\beta l^2(J-2\mathcal G_{\mu\nu}K^{\mu\nu}).
$$
The cubic tensor is
$$
J_{\mu\nu}=-\tfrac13(2K_{\mu\rho}K_{\nu\sigma}K^{\rho\sigma}
 -2K K_{\mu\rho}K^\rho{}_{\nu}-K_{\mu\nu}\operatorname{tr}K^2+K^2K_{\mu\nu}),
$$
so $J=-[2\operatorname{tr}K^3-3K\operatorname{tr}K^2+K^3]/3$. The junction condition is
$$
[K^\mu{}_{\nu}-\delta^\mu_\nu K]^-
 +{\beta l^2\over2}[3J^\mu{}_{\nu}-\delta^\mu_\nu J-2P^{\mu\rho}{}_{\nu\sigma}K_{\rho}{}^\sigma]^-
 =8\pi G_n\tau^\mu{}_{\nu},\quad\tau_{\mu\nu}=-\sigma q_{\mu\nu}.
$$
Here $P$ is the divergence-free brane-curvature combination in (11). Contracting with $u^\mu u^\nu$ gives (93), the condition that must cancel the vacuum-brane contribution. No arbitrary matter stress tensor is included.

# Canonical decomposition and the surface terms that carry entropy

With $g=-N^2dt^2+h_{ab}(dx^a+N^adt)(dx^b+N^bdt)$, choose $E^\perp=Ndt$. The connection splits into $H^a$, acceleration $a^a=D^a\log N$, spatial connection $\widetilde\omega^{ab}$ and antisymmetric frame rotation $l^{ab}$. Gauss–Codazzi gives
$$
F^{ab}=\widetilde\Omega^{ab}+H^a\wedge H^b,\quad
\Lambda^{ab}=\widetilde\Omega^{ab}+\tfrac13H^a\wedge H^b,
$$
$$
\pi_a=2\xi_{ab}\wedge H^b+\beta l^2\xi_{abcd}\wedge H^b\wedge\Lambda^{cd},
\quad\mathcal H=2\Lambda\xi-F^{ab}\wedge\xi_{ab}-{\beta l^2\over4}F^{ab}\wedge F^{cd}\wedge\xi_{abcd}.
$$
The canonical action contains $\pi_a\wedge\dot E^a-N\mathcal H-N^a\mathcal H_a$ **and** horizon, brane and corner terms. Integrating derivatives of $H$ or the connection changes those terms; it cannot be discarded merely as a total derivative.

At the brane the additional split uses $\widehat H^A$, $\widehat K^A$, $b^A=H^{zA}$ and $c=a^z$. The Myers contribution cancels several acceleration terms, leaving the brane combination schematically
$\widehat K\wedge(\widehat\Omega-\widehat H\wedge\widehat H-\widehat K\wedge\widehat K/3)$,
plus the shift momentum term and a genuine intersection integral. Equation (74) retains
$$
-{\beta l^2\over16\pi G_n}\int dt\int_{\partial S_t}
 N\big(b_CE^Cl^{AB}+2a^A\widehat K^B\big)\wedge\varphi_{AB}.
$$
This is the part that produces the boundary term of the entropy functional. Its derivation relies on the orthogonal intersection and normal conventions; it is not a general arbitrary-corner action.

# Euclidean horizon and the Jacobson–Myers target

Use a horizon-adapted time generator, choose the shift to vanish at the horizon, and regulate with $N=\epsilon$. Smoothness of the Euclidean normal disk gives
$$
\beta_0\,r^M\partial_MN\longrightarrow2\pi.
$$
The target functional is
$$
S_{JM}={1\over4G_n}\int_{\Gamma^+\cup\Gamma^-}\sqrt G(1+2\alpha\widetilde R[G])
 +{\alpha\over G_n}\int_{\partial\Gamma}\sqrt p\,[k]^- .\tag{79}
$$
The acceleration term on the small horizon tube gives the first integral, and the corner term gives the second. The Hamiltonian and momentum constraints vanish on shell. The thermodynamic angular term called $J$ in (88) contains the Euclidean period and the boundary shift-momentum integral; it should not be silently identified with an unweighted angular momentum. An ensemble and generator normalization are needed to interpret $S=-I_E$ in a rotating problem.

The source also assumes enough vanishing of $H$ and the shift at the regulated horizon to obtain (91)–(92). Those conditions require a regularity argument in a general stationary metric; they do not follow from stationarity alone.

# The claimed stationary remainder and its audit

The printed (104) writes $S_{dS}=S_{JM}+\Delta S$ with
$$
\Delta S_{\rm printed}=2\beta_0\beta l^2
 \int_{\Sigma_{\rm brane}}N\sqrt\gamma\,
 [\delta^{abc}_{def}K^d{}_aH^e{}_bH^f{}_c]^-.
$$
This is the source's expression, **not a verified correction**. It notably lacks the gravitational normalization present in the action. In a static orthogonal foliation $H=0$, the candidate vanishes. For a general stationary foliation, $H$ can depend on derivatives of the shift.

Let $A=[K_{\mu\nu}u^\mu u^\nu+K]^-$, $B=[3J_{\mu\nu}u^\mu u^\nu+J-2P_{\mu\rho\nu\sigma}u^\mu u^\nu K^{\rho\sigma}]^-$, $C=[\delta KHH]^-$, and $b=\beta l^2$. Equation (93) says $A+bB/2=8\pi G_n\sigma$. The first line of (103), as visually printed, has
$$
-\sigma+{A\over8\pi G_n}+{bB\over2}+bC,
$$
while its next line claims $2bC$. Substitution leaves a discrepancy
$$
{bB\over2}\left(1-{1\over8\pi G_n}\right)-bC,
$$
which is not zero. Thus the displayed cancellation is algebraically false even before discussing the meaning of the entropy. Restoring a missing normalization alone does not explain the factor change from $C$ to $2C$.

A second elementary check is that (94)'s right-hand cubic expression equals **$3J_{\mu\nu}u^\mu u^\nu$**, not $J_{\mu\nu}u^\mu u^\nu$; (102) later uses the correct factor. These local inconsistencies mean that no exact coefficient for a stationary correction is recovered here.

Even a corrected nonzero $H$ would not prove an inequality. Algebraically
$$
\delta KHH=\operatorname{tr}K[(\operatorname{tr}H)^2-\operatorname{tr}H^2]
 -2\operatorname{tr}H\operatorname{tr}(KH)+2\operatorname{tr}(KH^2).
$$
For diagonal three-dimensional data it is $2(k_1h_2h_3+k_2h_1h_3+k_3h_1h_2)$ and vanishes for rank-one $H$, even when $H\ne0$. This is a test of the inference, not a constructed stationary RS II solution. An actual stationary solution satisfying junction, regularity, ensemble and extremal-surface conditions is absent from the paper's examples.

# General static Lovelock chain

For $L_m=2^{-m}\delta^{M_1N_1\cdots M_mN_m}_{K_1L_1\cdots K_mL_m}\prod R^{K_iL_i}{}_{M_iN_i}$ and couplings $c_m$, the boundary polynomial is
$$
Q_m={4m\over2^m}\int_0^1ds\,\delta_{2m-1}K\,(\mathcal R-2s^2KK)^{m-1}.
$$
Expanding the integral yields coefficients $\binom{m-1}{k}(-2)^k/(2k+1)$; the printed (108) has an inconsistent $n-1$ in one binomial, while the integral and subsequent formulas use $m-1$.

Staticity sets $H_{ij}=0$. The Gauss equation removes time-slice extrinsic products, and the two-time Riemann projection becomes a divergence of acceleration as in (119). Bianchi and projection identities remove the remaining derivative-curvature terms. At the brane, a second Gauss–Codazzi decomposition separates the junction expression from an intersection divergence, producing the lower Lovelock boundary polynomial. The junction condition cancels the former; smooth Euclidean normal angle fixes the latter's horizon coefficient.

The compact expected entropy organization is
$$
S={1\over4G_n}\sum_m m c_m\left[
 \int_{\Gamma^+\cup\Gamma^-}\sqrt G\,L_{m-1}[G]
 +\int_{\partial\Gamma}\sqrt p\,[Q_{m-1}[p,k]]^-\right],
$$
with the boundary term absent for $m=1$. This is a convenient translation of the intrinsic Lovelock plus Myers boundary structure. For $c_1=1$, $c_2=\alpha$, $L_0=1$, $L_1=R$, $Q_1=2k$, it reproduces (79).

**Printing obstruction:** (114) and the final line of (130) retain an extra $N$ multiplying the intersection entropy, even after $\beta_0N a\cdot r=2\pi$ has been used. The preceding line of (130) has no such lapse. Since $N\to0$ at the cut, retaining it contradicts the nonzero Gauss–Bonnet boundary term. The compact expression above removes that inconsistent residual lapse; it is not a verbatim endorsement of (130).

# Independent checks and remaining work

**Source-derived:** the full canonical, boundary, junction and Lovelock decomposition chain. The proposed generic stationary inequivalence and the stationary black-hole extension remain unproved by this audit.

**Checked:** xAct reduces the trace of the defined cubic $J_{\mu\nu}$ minus its trace polynomial to zero. Mathematica checks the corresponding diagonal matrix expression and the factor-three distinction, and reproduces the nonzero residual in (103). Sage independently contracts the rank-three generalized delta for diagonal $K,H$, obtaining the expression and rank-one zero above. The transgression test $\int_0^1(a-2s^2b)^2ds=a^2-4ab/3+4b^2/5$ checks the $m=3$ coefficients.

For a local product of a two-dimensional conical normal plane and a $d$-dimensional constant-curvature cut, the Gauss–Bonnet scalar has normal-curvature term $2R_2R_d$. Mathematica therefore gives $\partial(R+\alpha L_{GB})/\partial R_2=1+2\alpha R_d$, independently reproducing the static horizon density. This finite local model is not the full brane/corner derivation.

**Failed:** (103)'s cancellation as printed; (94)'s missing factor; the lapse mismatch between successive forms of (130). A generic nonzero stationary correction cannot be inferred from these equations. The rank-one test separately refutes the shortcut $H\ne0\Rightarrow\delta KHH\ne0$.

**Blocked:** official `/src/2609.24557v1` returned HTTP 406 twice; complete PDF access succeeded. A corrected action-to-junction coefficient chain and an explicit stationary braneworld solution are missing for verification of the claimed new inequality.

**Not independently verified:** the entire frame-based canonical momentum derivation, arbitrary-order Lovelock contractions in general dimension, full horizon regularity for stationary slices, global extremality/homology of the chosen surface, and rotating thermodynamic ensemble matching.

**Verified:** local static density, selected trace/transgression contractions, and explicit internal contradictions. **Assumptions:** orthogonal brane/time foliation, stated jump orientation, regular Euclidean horizon, vacuum brane, staticity for the Lovelock reduction. **Not verified:** a physical entropy inequivalence in general stationary Lovelock braneworlds.

For action-first CPS work the relevant lesson is to retain intersection and shift terms, then check their coefficients against the same junction condition and ensemble. A leftover slice-dependent term is a candidate to audit, not automatically a new observable entropy.
