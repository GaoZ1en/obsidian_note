---
paper id: 2609.24366v1
title: "T-duality of string charge density/bit threads correspondence in type II supergravity"
authors:
  - "Wu, Houwen"
  - "Ying, Shuxuan"
publication date: 2026-09-21
abstract: |-
  In this paper, we study Abelian T-duality of the string charge density/bit threads correspondence in ten-dimensional Type II supergravity. T-duality along the common compact circle maps the Type IIB F1-NS5-P background to a Type IIA P-NS5-F1 background with the winding and momentum charges exchanged. The radial F1 source remains an F1 source, and its projected charge density gives a bit-thread flow whose maximal flux reproduces the black hole entropy. The same duality maps D1-D5-P to D0-D4-F1. In this case, a radial D1 source becomes a D2 source wrapped on the dual circle. Contracting the resulting spatial bivector with the normalized closed one-form on that circle gives a conserved effective radial flow whose maximal flux again reproduces the entropy. Although the local metrics, dilatons, source currents, and flow norms change, the dilaton-weighted transverse area density and the integrated maximal flux are invariant. These results provide a nontrivial T-duality test of the correspondence and extend it from string currents to wrapped-brane currents that reduce to string-like flows.
comments: "27 pages, 2 figures"
url: https://arxiv.org/abs/2609.24366v1
summary: "Tracks T-duality of normalized entropy flows, including closed-form reduction of wrapped D2 currents; checks Buscher, capacity and flux invariants."
tags: []
---

# What T-duality tests here

The result is a concrete consistency test of a **normalized probe-current entropy flow**. After fixing the conversion from unit source number to entropy by horizon saturation, Abelian T-duality preserves the complete radial capacity ratio and integrated maximal flux. The paper explicitly does not claim an independent derivation of the area law from counting probe strings. Its most reusable new construction is the reduction of a wrapped D2 spatial bivector to a conserved radial vector using a closed, topologically normalized circle one-form.

Source: [2609.24366v1](https://arxiv.org/abs/2609.24366v1), 27 pages, Houwen Wu and Shuxuan Ying. Entire PDF text and structure read; PDF p.19 visually confirms the reduction, normalization and orientation convention. Context: [[2026_09_22_overview]].

# Source structure and conventions

§1 (pp.2–4) distinguishes geometric flow, physical carrier and the two duality chains. §2.1 (pp.5–6) derives projected source density, string-frame capacity and normalization; §2.2 (pp.6–7) fixes backgrounds, Buscher signs and asymptotic moduli. §3.1 (pp.8–9) transforms NS–NS background and source; §3.2 (pp.9–12) constructs the normal-aligned F1 slice, smeared flow and entropy. §4.1 (pp.12–14) transforms D1–D5–P; §4.2 (pp.14–17) transforms the radial D1 DBI/WZ coupling and worldvolume gauge field; §4.3 (pp.17–22) derives, projects and reduces the D2 current. §5 (pp.22–24) compares all local/global invariants and states the conditional boundary matching. §6 (pp.24–25) lists extensions and limitations; references pp.25–27. There are no appendices.

Ten-dimensional string frame is used throughout. The radial dilaton $\phi$ vanishes at infinity; its constant zero mode is stored in $g_s$ and $G_{10}=8\pi^6g_s^2\alpha'^4$. The normalized Einstein metric is $g_E=e^{-\phi/2}g_s$, hence an eight-dimensional cut has $dA_E=e^{-2\phi}dA_s$. The circle has coordinate period $L_w=2\pi R_w$; $V_0=L_wV_{T^4}\Omega_3$, $\Omega_3=2\pi^2$, is a reference coordinate volume, not a proper volume. $N$ counts auxiliary probe carriers and is distinct from the integers sourcing the three harmonic functions.

Assumptions are two-derivative supergravity, Abelian circle isometry, positive charge parameters, probe backreaction negligible relative to the background, and continuum smearing compatible with the circle zero-mode truncation. The full exteriors are asymptotically flat; ordinary boundary-entanglement language applies in the decoupled AdS throat, not automatically at flat infinity.

# Source current, spatial projection and the bottleneck

Variation of the antisymmetric worldsheet coupling gives the unit-normalized current
$$
j^{ab}(x)={1\over\sqrt{-g}}\int d^2\sigma\,
(\partial_\tau X^a\partial_\sigma X^b-\partial_\tau X^b\partial_\sigma X^a)
\delta^{10}(x-X).
$$
The physical tension/charge normalization has been stripped off in this definition. Away from worldsheet endpoints, $\partial_a(\sqrt{-g}j^{ab})=0$. Its slice charge density is $q^I=N_{\rm ADM}j^{0I}=\sqrt{-g}\,j^{0I}/\sqrt h$. The $b=0$ conservation equation gives $\partial_I(\sqrt h q^I)=0$ in the source-free exterior; an endpoint crossing the slice needs a source term.

For homogeneous radial carriers,
$$
\sqrt h=\sqrt{g_{rr}}Y(r)\sqrt{\bar\gamma},\quad
q^r={N\over V_0\sqrt{g_{rr}}Y(r)},\quad
v^r=C_{\rm geom}q^r,\quad |v|={C_{\rm geom}N\over V_0Y(r)}.
$$
The Einstein-frame capacity becomes $|v|\le e^{-2\phi}/(4G_{10})$. Consequently
$$
\mathcal A(r)=e^{-2\phi}Y(r),\qquad
C_{\rm geom}={V_0\mathcal A(0)\over4G_{10}N},\qquad
\Phi=C_{\rm geom}N.
$$
The mechanism is two steps: show the normalized radial vector obeys capacity everywhere, then show it saturates the horizon cut. The latter fixes its maximum flux and normalization together; it is not a microscopic derivation of $C_{\rm geom}$.

# NS–NS chain: the shift cannot be omitted

Let $H_i=1+Q_i/r^2$ for $i=1,5,P$, $K=H_P-1$. The original string metric and fields are
$$
ds^2=H_1^{-1}[-dt^2+dw^2+K(dt+dw)^2]+H_5(dr^2+r^2d\Omega_3^2)+dy_4^2,
$$
$$
e^{2\phi}=H_5/H_1,\qquad B_2=(1-H_1^{-1})dt\wedge dw+2Q_5\omega_2,
\quad d\omega_2=\omega_3.
$$
Buscher uses both $g_{tw}=(H_P-1)/H_1$ and $B_{tw}=(H_1-1)/H_1$:
$$
\widetilde g_{ww}=g_{ww}^{-1},\quad
\widetilde g_{\mu w}=B_{\mu w}/g_{ww},\quad
\widetilde B_{\mu w}=g_{\mu w}/g_{ww},\quad
\widetilde g_{\mu\nu}=g_{\mu\nu}-{g_{\mu w}g_{\nu w}-B_{\mu w}B_{\nu w}\over g_{ww}}.
$$
With the source orientation of the dual circle this yields the same functional metric with $H_1\leftrightarrow H_P$, $e^{2\widetilde\phi}=H_5/H_P$, $\widetilde B_{t\widetilde w}=1-H_P^{-1}$. Background winding and momentum integers exchange. A radial auxiliary F1 is transverse to the circle and remains an F1; it is not the background winding string.

At $t=0$, use $X^t=\tau$, $X^r=\sigma$, $X^{\widetilde w}=\widetilde w_0-\widetilde\beta^{\widetilde w}(r)\tau$, $\widetilde\beta=(H_1-1)/H_1$. The induced metric has $\gamma_{\tau\tau}=-1/(H_1H_P)$, $\gamma_{\sigma\sigma}=H_5$, $\gamma_{\tau\sigma}=0$. This is a timelike slice-adapted worldsheet; the paper does not solve a stationary embedding of that form for all time. Uniformly summing the transverse delta functions gives $\widetilde j^{0r}=\sqrt{\bar\gamma}N/(\sqrt{-\widetilde g}\widetilde V_0)$.

One detail of wording requires care: $j^{0r}$ is the only nonzero **charge-density** component on that slice, not necessarily the only component of the full antisymmetric current. The moving embedding also has $j^{\widetilde w r}=-\widetilde\beta\,j^{tr}$. This does not change the projected radial charge used in the calculation.

# D1–D2 chain: transform the source action before projecting

For D1–D5–P,
$$
ds^2=(H_1H_5)^{-1/2}[-dt^2+dw^2+K(dt+dw)^2]
 +(H_1H_5)^{1/2}(dr^2+r^2d\Omega_3^2)+(H_1/H_5)^{1/2}dy_4^2,
$$
with $e^{2\phi}=H_1/H_5$, $B_2=0$ and $C_2=(1-H_1^{-1})dt\wedge dw+2Q_5\omega_2$. Its dual is static:
$$
d\widetilde s^2=-{dt^2\over H_P\sqrt{H_1H_5}}
 +{\sqrt{H_1H_5}\over H_P}d\widetilde w^2
 +\sqrt{H_1H_5}(dr^2+r^2d\Omega_3^2)+\sqrt{H_1/H_5}\,dy_4^2,
$$
$$
e^{2\widetilde\phi}=H_1^{3/2}H_5^{-1/2}H_P^{-1},\quad
\widetilde B_2=(1-H_P^{-1})dt\wedge d\widetilde w,
$$
$$
\widetilde C_1=(1-H_1^{-1})dt,\qquad
\widetilde C_3=2Q_5\omega_2\wedge d\widetilde w.
$$
These RR signs use the explicit charge orientation of §4.1. The background becomes D0–D4–F1; D0/D4 are smeared along the dual circle. The radial D1 instead becomes D2$(t,r,\widetilde w)$.

Eliminating the D1 auxiliary metric gives its DBI area plus $\mu_1\int P[C_2]$. Transverse T-duality maps $X^w=2\pi\alpha' A_{\widetilde w}$ and gives the complete D2 WZ coupling
$$
\mu_2\int_{W_3}\big(P[\widetilde C_3]+P[\widetilde C_1]\wedge\mathcal F\big),\quad
\mathcal F=P[\widetilde B_2]+2\pi\alpha' F,\quad
\mu_2={(2\pi)^{-2}\alpha'^{-3/2}}.
$$
The normal-aligned D1 has $\beta^w=1-H_P^{-1}$ and $X^w=w_0-t\beta^w(r)$. Thus $2\pi\alpha'F_{t\widetilde w}=-\beta^w$, $2\pi\alpha'F_{r\widetilde w}=-t\partial_r\beta^w$. The radial term is needed for $dF=0$. At $t=0$ both gauge-invariant components vanish: $\mathcal F_{t\widetilde w}=0$, $\mathcal F_{r\widetilde w}=0$. One must not set $F=0$ while retaining the electric background $\widetilde B$.

Varying with respect to the independent $\widetilde C_3$ gives a rank-three D2 current. The $C_1\wedge\mathcal F$ term instead defines an induced D0 current under $C_1$ variation; variation in $B_2$ defines a different NS–NS current. These are distinct source channels.

# Closed-circle contraction is the conservation mechanism

The D2 embedding $(X^t,X^r,X^{\widetilde w})=(\tau,\sigma,\vartheta)$ with positive $\epsilon^{\tau\sigma\vartheta}$ gives
$$
j^{0r\widetilde w}={\sqrt{\bar\gamma}\over\sqrt{-\widetilde g}}
 \sum_{n=1}^N\delta_{T^4}(y-y_n)\delta_{S^3}(\Omega,\Omega_n).
$$
Smearing is over seven transverse coordinates with $V_\perp=V_{T^4}\Omega_3$, not over the circle each D2 already wraps. Define $Q^{IJ}=\widetilde N_{\rm ADM}j^{0IJ}$ and
$$
\eta={d\widetilde w\over L_{\widetilde w}},\quad\int_{S^1}\eta=1,\quad d\eta=0,
\qquad q^I=Q^{IJ}\eta_J.
$$
This fixes the contraction sign and preserves normalization under constant circle-coordinate rescaling. Dividing by the local proper circumference would introduce radial derivatives and generally destroy closure.

The tensor identity is
$$
D_Iq^I=(D_IQ^{IJ})\eta_J+\tfrac12Q^{IJ}(d\eta)_{IJ}=0.
$$
It uses antisymmetry and a torsion-free derivative, not covariant constancy of $\eta$. The radial component is
$$
q^r={Q^{r\widetilde w}\over L_{\widetilde w}}
 ={\sqrt{\bar\gamma}N\over\sqrt{\widetilde h}\,L_{\widetilde w}V_\perp},
$$
so its source-number flux is $N$, independent of dual-circle size. It is a reduced wrapped-brane current represented as a radial flow; it is not a new ten-dimensional F1 source current.

# Local and global invariant ledger

| Frame | $Y/r^3$ | $e^{-2\phi}$ |
| --- | --- | --- |
| IIB F1–NS5–P | $H_1^{-1/2}H_5^{3/2}H_P^{1/2}$ | $H_1/H_5$ |
| IIA P–NS5–F1 | $H_P^{-1/2}H_5^{3/2}H_1^{1/2}$ | $H_P/H_5$ |
| IIB D1–D5–P | $H_1^{3/2}H_5^{-1/2}H_P^{1/2}$ | $H_5/H_1$ |
| IIA D0–D4–F1 | $H_1^2H_P^{-1/2}$ | $H_1^{-3/2}H_5^{1/2}H_P$ |

Every product is
$$
\mathcal A(r)=\sqrt{(r^2+Q_1)(r^2+Q_5)(r^2+Q_P)}.
$$
For positive $Q_i$, $\partial_r\log\mathcal A=r\sum_i(r^2+Q_i)^{-1}\ge0$. Therefore the capacity ratio $\mathcal A(0)/\mathcal A(r)$ is at most one everywhere. Under $R_{\widetilde w}=\alpha'/R_w$, $\widetilde g_s=g_s\sqrt{\alpha'}/R_w$, both $V_0$ and $G_{10}$ acquire $\alpha'/R_w^2$; their ratio is invariant. Locally $\widetilde Y=Y/g_{ww}$ cancels $e^{-2\widetilde\phi}=e^{-2\phi}g_{ww}$. Neither a current component nor an unnormalized vector norm is invariant.

For the D1 frame,
$$
Q_1={g_s\alpha'^3n_1\over V_4},\quad Q_5=g_s\alpha'n_5,\quad
Q_P={g_s^2\alpha'^4n_P\over R_w^2V_4},\quad V_{T^4}=(2\pi)^4V_4,
$$
so $V_0\sqrt{Q_1Q_5Q_P}/(4G_{10})=2\pi\sqrt{n_1n_5n_P}$. The dual smeared D0/D4 charge formulas include inverse $R_{\widetilde w}$ and reproduce the same harmonic parameters. In the NS chain the F1 and momentum parameters exchange and again the integer entropy is unchanged.

The boundary assignment $C_{\rm CFT}=S_{\rm CFT}/N=C_{\rm geom}$ is explicitly conditional on the previous boundary-matching conjecture and fixed tube coarse graining. T-dualizing the BTZ circle does not leave a standard AdS3 boundary; a charged-black-string boundary derivation remains separate.

# Verification and use in phase-space work

**Source-derived:** the complete source-to-projection-to-reduction construction, RR convention and both dual backgrounds; the probe interpretation and conjectural boundary matching remain at the source's stated scope.

**Checked:** Mathematica returns zero for the NS Buscher metric components, its ADM normal norm, the D1 metric/dilaton Buscher map, and each of the four weighted-area residuals. It reproduces $2\pi\sqrt{n_1n_5n_P}$ including all $2\pi$, radius and Newton factors. The induced worldvolume $F$ satisfies its Bianchi identity; the normal-aligned worldsheet norm is $-1/(H_1H_P)$. The monotonicity above is a direct positive-term derivative. xAct independently reduces the full contraction/divergence identity to zero with antisymmetric $Q$ and a Levi-Civita derivative, before imposing $D_IQ^{IJ}=0$ and $d\eta=0$.

**Failed:** the phrase “only nonvanishing component” for the full moving F1 current must be restricted to its $j^{0I}$ charge-density sector; the omitted spatial $j^{\widetilde w r}$ is nonzero. This does not affect the radial flux computation.

**Blocked:** `https://arxiv.org/src/2609.24366v1` returned HTTP 406 twice. The complete official PDF succeeded, so technical processing did not stop; no TeX-only claim is made.

**Not independently verified:** full ten-dimensional supergravity equations and RR gauge patching, probe embedding dynamics away from the selected slice, microscopic boundary matching, localized string-scale T-duality, higher-derivative capacities or general nontrivially fibered compact cycles.

**Verified:** Buscher/area/normalization algebra and the tensor conservation reduction. **Assumptions:** leading two-derivative action, positive charges, normalized dilaton, source-free exterior, negligible probe backreaction, compatible smearing and fixed source-unit convention. **Not verified:** a derivation of entropy from independently normalized microscopic carriers.

For CPS use, keep the source variation and current rank before reduction. The closed-form contraction is a concrete model for preserving a conserved current under compactification, but it provides neither a regional symplectic sewing theorem nor an interface charge algebra by itself.
