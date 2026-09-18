---
paper id: 2609.17656v1
title: The Kerr/CFT energy gap
authors:
  - Robert Penna
publication date: 2026-09-15T18:00
abstract: |-
  The paper embeds the near-horizon extremal Kerr geometry in a one-parameter vacuum family that reaches an analytically continued flat reference at its endpoint. It integrates a Barnich--Brandt charge along that family and finds an order-of-limits ambiguity in assigning the reference energy, with candidate NHEK gaps (J), (0), and (J/2).
comments: "6 pages"
url: https://arxiv.org/abs/2609.17656v1
summary: "A concrete reference-family construction for the NHEK conformal charge whose unresolved endpoint prescription leaves the energy gap ambiguous."
tags: []
---

# Verdict

**Correct as an exhibition of a reference and order-of-limits ambiguity; it does not determine a unique Kerr/CFT energy gap.** The source gives one Kinnersley--Kelley path through exact vacuum solutions and three inequivalent endpoint prescriptions. The value (Q_0=J/2) reproduces the extremal Kerr entropy through Cardy's formula, but that agreement is a consistency motivation for an asymmetric limit prescription, not a derivation that selects it.

# Source map

The paper is a short continuous argument rather than a sectioned article.

1. It explains why NHEK lacks the usual asymptotically flat reference and motivates integrating charge variations along an auxiliary solution-space path.
2. It writes the Kinnersley--Kelley metric in Weyl form and identifies (p=1) with NHEK and (p=0) with a rescaled analytically continued flat metric.
3. It states the Barnich--Brandt surface-charge two-form and integrates the (p)-variation for (zeta=-\partial_\phi).
4. It reduces the answer to endpoint values of a kink potential (Phi(p,u)), exposes the noncommuting limits, and discusses three possible gaps.
5. It observes that the mixed prescription gives the Cardy entropy (2\pi J).

# Geometry and conventions

The coordinates are ((t,r,u,\phi)), with

$$
e^u=\cot\frac{\theta}{2}.
$$

The one-parameter metric is

$$
ds^2=f(d\phi+\omega dt)^2+f^{-1}\left[e^{2\gamma}
\left(dr^2+r^2\operatorname{sech}^2u\,du^2\right)-\rho^2dt^2\right],
$$

where

$$
f=4J\operatorname{sech}(2pu),\qquad
\omega=pr,\qquad
\rho=2Jr\operatorname{sech}u,
$$

$$
e^{2\gamma}=4J^2\left(\frac{\operatorname{sech}u}{r}\right)^{2p^2}.
$$

The source keeps (J) fixed and varies (p). Its identifications are

- (p=1): NHEK;
- (p=0): a rescaled analytically continued Minkowski reference;
- (p<0): the anti-kink continuation.

At (p=0), direct substitution gives

$$
ds_0^2=J\left[-r^2\operatorname{sech}^2u\,dt^2+dr^2
+r^2\operatorname{sech}^2u\,du^2\right]+4J,d\phi^2.
$$

This run checked the substitution and the determinant of the full coordinate metric, but did not independently construct the analytic continuation to standard Minkowski coordinates or recompute the Ricci tensor.

# Charge path

For neighboring metrics (g) and (g+h), the source uses

$$
\delta Q_\zeta[g]=\frac{1}{8\pi}\int_{\partial\Sigma}k_\zeta[h,g],
$$

with the Barnich--Brandt two-form

$$
\begin{aligned}
k_\zeta[h,g]=-
\frac14\epsilon_{\alpha\beta\mu\nu}\bigg[&
\zeta^\nu D^\mu h-\zeta^\nu D_\sigma h^{\mu\sigma}
+\zeta_\sigma D^\nu h^{\mu\sigma}
+\frac12hD^\nu\zeta^\mu\\
&-h^{\nu\sigma}D_\sigma\zeta^\mu
+\frac12h^{\sigma\nu}(D^\mu\zeta_\sigma+D_\sigma\zeta^\mu)
\bigg]dx^\alpha\wedge dx^\beta .
\end{aligned}
$$

The path and generator are

$$
h_{\mu\nu}=\partial_pg_{\mu\nu},\qquad
p:0\longrightarrow1,qquad
\zeta=-\partial_\phi.
$$

The central source-derived reduction is

$$
\begin{aligned}
Q_0={}&\Phi(1,+\infty)-\Phi(1,-\infty)\\
&-\left[\Phi(0,+\infty)-\Phi(0,-\infty)\right],
\end{aligned}
$$

with

$$
\Phi(p,u)=\frac{J}{2}\tanh(2pu).
$$

For every fixed (p>0), (Phi) interpolates from (-J/2) to (+J/2). As (p\to0^+), its width diverges, so the endpoint and reference limits do not commute:

$$
\lim_{p\to0^+}\lim_{u\to\pm\infty}\Phi(p,u)=\pm\frac J2,
\qquad
\lim_{u\to\pm\infty}\lim_{p\to0}\Phi(p,u)=0.
$$

# Three endpoint prescriptions

## Reference first

Setting (p=0) at finite (u) assigns zero charge to the flat reference. The NHEK jump is then

$$
Q_0=J.
$$

This is the conventional-looking subtraction, but it makes the charge discontinuous at the reference endpoint of this particular family.

## Angular endpoint first

Taking (u\to\pm\infty) at fixed (p>0) and only then sending (p\to0^+) assigns the same jump (J) to the reference. The gap is therefore

$$
Q_0=0.
$$

This prescription keeps the fixed-(J) family at a common conformal energy.

## Mixed endpoints

Using the reference-first limit at one pole and the endpoint-first limit at the other subtracts (J/2), so

$$
Q_0=\frac J2.
$$

With the standard Kerr/CFT central charge (c=12J), treating this gap as (h=J/2) gives

$$
S=2\pi\sqrt{\frac{ch}{6}}=2\pi J.
$$

The mixed prescription is intrinsically asymmetric between the two angular endpoints. The entropy match is therefore not yet a local or global principle fixing the subtraction.

# Translation to the vault's CPS language

The useful object is not the number (J/2) by itself but the attempted path integral in solution space,

$$
Q_\zeta[g_1;g_0]=\int_0^1dp\,\delta Q_\zeta[g(p);\partial_pg(p)].
$$

This makes two separate choices visible:

1. the path (g(p)) connecting NHEK to a reference;
2. the regulator/order prescription at the noncompact angular ends.

In action-first CPS terms, a unique Hamiltonian requires more than a formally integrable one-parameter pullback. One must specify the admissible phase space, its boundary conditions at both (u\)-ends, the corner terms or counterterms defining the symplectic potential, and the normalization of the reference Hamiltonian. The kink formula shows exactly where this data is missing: the limiting reference point is nonuniform at the two ends.

For the regional-sewing programme, the two endpoint contributions should be retained separately as boundary-port data until a gluing or regularity condition selects their relation. Combining them into a single number before fixing the endpoint prescription hides the ambiguity.

# Verification log

## Source-derived

- The Kinnersley--Kelley metric is an exact vacuum solution for real (p), with (p=1) NHEK and (p=0) an analytically continued flat reference.
- The Barnich--Brandt integration reduces to the endpoint formula for (Phi(p,u)).
- The Kerr/CFT identification uses (zeta=-\partial_\phi) and (c=12J).

## Checked

- Mathematica reconstructed the coordinate metric and verified its determinant against the block-factorized expression
  $$
  \det g=-\rho^2\left(\frac{e^{2\gamma}}{f}\right)^2r^2\operatorname{sech}^2u.
  $$
- Direct symbolic substitution reproduced the displayed (p=0) metric.
- Mathematica reproduced the NHEK jump (J), the reference-first jump (0), the endpoint-first reference jump (J), the mixed gap (J/2), and the Cardy value (2\pi J), assuming (J>0) and (p\to0^+).

## Blocked

- No regulator or boundary condition in the source selects one of the three noncommuting-limit prescriptions. Consequently a unique physical energy gap is not established.

## Not independently verified

- The four-dimensional vacuum Einstein equations for the complete (p)-family.
- The component reduction of the Barnich--Brandt surface integral to the kink potential.
- Path independence under replacing the Kinnersley--Kelley interpolation by another admissible route through solution space.

# Reusable takeaway

This paper is a sharp warning about reference charges on noncompact or singularly limiting phase spaces: even when a smooth family of exact solutions connects the target to a nominal vacuum, a nonuniform boundary limit can leave the integrated Hamiltonian ambiguous. For later use, keep the two angular endpoint terms separate and ask which boundary/corner prescription makes the generator differentiable before adopting (Q_0=J/2).
