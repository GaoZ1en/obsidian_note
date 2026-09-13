---
paper id: 2609.10432v1
title: Null String Holography, Null Strings Probe Projective Boundary of Their Target Spaces
authors:
  - M.M. Sheikh-Jabbari
  - H. Yavartanoo
publication date: 2026-09-09T16:44
abstract: |-
  The paper gauges a target-space homothety, or a chosen conformal Killing flow after a conformal-frame change, in the Carroll-Weyl-invariant null-string action. On regular non-null orbit patches the connection can be eliminated and the classical action becomes an ILST action on the orbit space with a Schur-complement metric; null orbit patches instead retain a multiplier and a constrained Carrollian target structure. AdS, de Sitter, and Minkowski examples motivate calling selected orbit spaces projective boundaries.
comments: "14 pages"
url: https://arxiv.org/abs/2609.10432v1
summary: "A patchwise classical reduction of gauged null strings to ILST-type orbit-space theories, with a singular Carrollian branch and an explicitly conjectural quantum extension."
tags: []
---

# Verdict and relevance

This is a high-priority paper for the vault's Carrollian-boundary and reduction questions. Its solid result is a **patchwise classical action reduction**. If a target metric admits a regular homothety with nonzero norm, gauging its flow and eliminating the Carroll-Weyl connection gives the Isberg-Lindström-Sundborg-Theodoridis (ILST) null-string action on the \((D-1)\)-dimensional orbit space. When the homothety is null, elimination becomes singular: the connection remains a Lagrange multiplier, and the quotient theory is Carrollian and constrained rather than an ordinary nondegenerate ILST model.

The advertised quantum equivalence is not proven. The source explicitly calls it a conjecture and leaves functional measures, gauge fixing, and anomalies unresolved. The word “holography” also requires care: the construction intrinsically produces an orbit space. Identification of that orbit space with a geometric conformal or asymptotic boundary needs additional global or endpoint data, supplied explicitly only in examples such as the Poincaré AdS patch.

See [[2026_09_10_overview]] for today's screening context.

# How to read this paper

- Essential: sections 2.2-2.3 for the non-null Schur-complement reduction and the singular null-orbit constraint.
- Technical reference: section 2.4 for the local CKV-to-homothety conformal frame and section 3.1 for the explicit Poincare-AdS example.
- Diagnostic examples: section 3.3 for the change between Lorentzian, Euclidean, and Carrollian quotient sectors in Minkowski space.
- Read cautiously: the quantum-equivalence language in sections 2.2 and 4; the discussion, not the classical algebra, fixes its status as conjectural.

# Source map

1. Introduction: reviews null strings, Carroll-Weyl (CW) gauge symmetry, and the proposed projective-boundary interpretation.
2. Minimal and nearest-to-minimal null-string actions:
   - 2.1 defines the ILST action and the gauged minimal null-string action on a background with a homothety.
   - 2.2 adapts coordinates to a non-null homothetic flow, constructs CW-invariant variables, eliminates the connection, and obtains the orbit-space Schur-complement metric.
   - 2.3 treats an everywhere-null homothety, where the connection instead imposes a constraint and the quotient carries a Carrollian decomposition.
   - 2.4 promotes a selected conformal Killing vector (CKV) to a homothety by a local conformal-frame change and defines the \(K\)-dependent nearest-to-minimal theory.
3. Examples:
   - 3.1 chooses the radial CKV in the Poincaré patch of AdS, constructs a homothetic representative, and identifies its orbit space with the Minkowski conformal-boundary patch through an endpoint map.
   - 3.2 states the analogous timelike reduction in a de Sitter cosmological patch.
   - 3.3 splits Minkowski space into spacelike, timelike, and null dilation sectors, producing respectively de Sitter, hyperbolic, and Carrollian quotient theories.
4. Discussion: stresses patch and CKV dependence, proposes the quantum extension, and lists quantization and horizon applications as future work.

# Definitions and conventions

The worldsheet is \(\Sigma\), with coordinates \(\sigma^a=(\tau,\sigma)\). The target is a \(D\)-dimensional manifold \(\mathcal M\) with metric \(g_{\mu\nu}\). The degenerate worldsheet structure is encoded by a contravariant vector density \(\mathcal V^a\). The ungauged ILST action is

$$
S_{\mathrm{ILST}}[g;\mathcal V]
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal V^a\mathcal V^b
g_{\mu\nu}(X)\partial_aX^\mu\partial_bX^\nu .
$$

The minimal construction assumes a homothetic vector \(\rho\):

$$
\mathcal L_\rho g_{\mu\nu}=2g_{\mu\nu}.
$$

Introduce a CW connection \(\mathcal W_a\) and

$$
D_aX^\mu=\partial_aX^\mu+\mathcal W_a\rho^\mu(X).
$$

The gauged action is

$$
S_{\mathrm{MNS}}[g;\mathcal V]
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal V^a\mathcal V^b
g_{\mu\nu}(X)D_aX^\mu D_bX^\nu .
$$

Its local CW transformations are

$$
\delta_\chi X^\mu=\chi\rho^\mu,
\qquad
\delta_\chi\mathcal W_a=-\partial_a\chi,
\qquad
\delta_\chi\mathcal V^a=-\chi\mathcal V^a.
$$

They imply

$$
\delta_\chi(D_aX^\mu)
=\chi(\partial_\nu\rho^\mu)D_aX^\nu.
$$

Combining this with \(\mathcal L_\rho g=2g\), the target kinetic bilinear has CW weight \(+2\), while \(\mathcal V^a\mathcal V^b\) has weight \(-2\). The action is therefore invariant.

# Non-null homothetic reduction

Work on a regular patch where \(\rho\neq0\), its orbits form a smooth quotient, and its norm has fixed nonzero sign. Choose coordinates \((s,Y^i)\) adapted to the flow:

$$
\rho=\partial_s,
\qquad
\rho^2=\epsilon e^{2s},
\qquad
\epsilon=\pm1.
$$

The homothety condition gives

$$
g_{\mu\nu}(s,Y)=e^{2s}h_{\mu\nu}(Y),
\qquad
\partial_sh_{\mu\nu}=0.
$$

Define the CW-invariant vector density and covariant orbit derivative

$$
\mathcal U^a=e^s\mathcal V^a,
\qquad
D_as=\partial_as+\mathcal W_a,
\qquad
D_aY^i=\partial_aY^i.
$$

Then

$$
S_{\mathrm{MNS}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal U^a\mathcal U^b
\left[
h_{ss}D_asD_bs
+2h_{si}D_as\,\partial_bY^i
+h_{ij}\partial_aY^i\partial_bY^j
\right].
$$

Only the contraction \(\mathcal U^a\mathcal W_a\) appears. Put

$$
P_s
=\mathcal U^a\partial_as
+\frac{h_{si}}{h_{ss}}\mathcal U^a\partial_aY^i,
$$

and define

$$
G_{ij}
=h_{ij}-\frac{h_{si}h_{sj}}{h_{ss}}.
$$

Completing the square gives

$$
S_{\mathrm{MNS}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\left[
h_{ss}\bigl(\mathcal U^a\mathcal W_a+P_s\bigr)^2
+\mathcal U^a\mathcal U^b
G_{ij}\partial_aY^i\partial_bY^j
\right].
$$

The connection equation is

$$
\mathcal U^a\mathcal W_a=-P_s.
$$

Substitution therefore yields exactly

$$
\left.S_{\mathrm{MNS}}[g;\mathcal V]\right|_{\mathcal W\text{ EOM}}
=S_{\mathrm{ILST}}[G;\mathcal U].
$$

This is a classical action identity on the stated regular patch. Algebraically, \(G\) is the Schur complement of the \(ss\) block. Geometrically, it is the metric induced on directions transverse to the non-null flow.

## What this equivalence does and does not establish

The source describes the relation as a classical equivalence and, in the AdS example, as an equivalence of reduced phase spaces. At action level the elimination is explicit. A complete global reduced-phase-space theorem would additionally require:

- a specified worldsheet function space and gauge group;
- control of stabilizers, zero modes, and global gauge slices;
- boundary terms and boundary conditions;
- proof that the symplectic forms and all constraints descend bijectively.

Those data are not supplied. The present derivation therefore proves the local reduced action, not a global equivalence of every classical sector.

# Null homothetic reduction

If \(\rho^2=0\), the same completion of the square is impossible. With

$$
v^\mu=\mathcal V^a\partial_aX^\mu,
\qquad
w=\mathcal V^a\mathcal W_a,
$$

the action density contains

$$
g_{\mu\nu}v^\mu v^\nu
+2w\rho_\mu v^\mu
+w^2\rho^2.
$$

For \(\rho^2=0\), \(w\) is linear and imposes

$$
\rho_\mu\mathcal V^a\partial_aX^\mu=0
$$

instead of being solved for.

On an everywhere-null, nonvanishing, regular orbit patch, again write

$$
g=e^{2s}h,
\qquad
\rho=\partial_s,
\qquad
h_{ss}=0,
\qquad
\partial_sh=0.
$$

The ambient nondegeneracy implies that the quotient one-form \(h_{is}dY^i\) is nonzero. With

$$
\mathcal U^a=e^s\mathcal V^a,
\qquad
B_a=\partial_as+\mathcal W_a,
$$

the action becomes

$$
S_{\mathrm{MNS}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal U^a\mathcal U^b
\left[
h_{ij}\partial_aY^i\partial_bY^j
+2B_a h_{is}\partial_bY^i
\right].
$$

Choose an auxiliary quotient vector \(V^i\) normalized by

$$
h_{is}V^i=1.
$$

Define

$$
A_i
=h_{ij}V^j
-\frac12(h_{kl}V^kV^l)h_{is},
$$

$$
\gamma_{ij}
=h_{ij}-h_{is}A_j-h_{js}A_i.
$$

Then

$$
\gamma_{ij}V^j=0.
$$

For a Lorentzian ambient metric and real fields, the source argues that \(\gamma\) is positive semidefinite of rank \(D-2\) on the spatial quotient directions. Shifting the multiplier,

$$
\widehat B_a=B_a+A_i\partial_aY^i,
$$

reconstructs the action exactly as

$$
S_{\mathrm{MNS}}
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal U^a\mathcal U^b
\left[
\gamma_{ij}\partial_aY^i\partial_bY^j
+2\widehat B_a h_{is}\partial_bY^i
\right].
$$

The individual \(\gamma_{ij}\) and \(\widehat B_a\) depend on the choice of normalized \(V^i\), but their combination in the full action does not.

Writing

$$
q^i=\mathcal U^a\partial_aY^i,
$$

the multiplier equation and the \(\mathcal U^a\) equation imply

$$
h_{is}q^i=0,
\qquad
\gamma_{ij}q^iq^j=0.
$$

Positivity then gives \(q^i=fV^i\), and normalization gives \(f=0\). Hence

$$
\mathcal U^a\partial_aY^i=0.
$$

The projected embedding is frozen along the distinguished worldsheet direction, although spatial profiles and other multiplier equations remain. This is why the null branch is not obtained by simply deleting the multiplier and retaining the degenerate kinetic term.

# Extension from homotheties to conformal Killing flows

AdS and de Sitter admit CKVs but no homothety of their physical metrics. Let \(K\) obey

$$
\mathcal L_K\mathcal G_{\mu\nu}
=2\omega_K(X)\mathcal G_{\mu\nu},
\qquad
\omega_K=\frac1D\nabla_\mu K^\mu.
$$

The nearest-to-minimal action is

$$
S_{\mathrm{NMNS}}[\mathcal G;\mathcal E;K]
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal E^a\mathcal E^b\mathcal G_{\mu\nu}
D_aX^\mu D_bX^\nu,
$$

where

$$
D_aX^\mu=\partial_aX^\mu+\mathcal W_aK^\mu.
$$

Its CW transformations contain the target-dependent weight

$$
\delta_\chi\mathcal E^a
=-\chi\omega_K(X)\mathcal E^a.
$$

On a patch where \(K\neq0\), solve along its orbits

$$
K^\mu\partial_\mu\Omega=\omega_K-1.
$$

Then

$$
g_{\mu\nu}=e^{-2\Omega}\mathcal G_{\mu\nu}
$$

obeys

$$
\mathcal L_Kg_{\mu\nu}=2g_{\mu\nu}.
$$

With

$$
\mathcal V_K^a=e^\Omega\mathcal E^a,
$$

one has the exact rewriting

$$
S_{\mathrm{NMNS}}[\mathcal G;\mathcal E;K]
=S_{\mathrm{MNS}}[g;\mathcal V_K].
$$

The earlier reductions can then be applied. This construction is local: a smooth global solution for \(\Omega\) is not guaranteed. It also depends on the chosen CKV \(K\); different choices define different gauged theories and different orbit spaces.

# Examples

## Poincaré AdS

The physical metric is

$$
ds_{\mathcal G}^2
=\frac{L^2}{z^2}
\left(dz^2+\eta_{ij}dx^idx^j\right).
$$

The radial vector \(\rho=\partial_z\) satisfies

$$
\mathcal L_\rho\mathcal G=-\frac2z\mathcal G,
\qquad
\mathcal G(\rho,\rho)=\frac{L^2}{z^2}>0.
$$

It becomes a homothety of

$$
g=z^2e^{2z}\mathcal G
=L^2e^{2z}
\left(dz^2+\eta_{ij}dx^idx^j\right),
$$

because

$$
\mathcal L_\rho g=2g.
$$

With \(h=e^{-2z}g\), \(\mathcal U^a=e^z\mathcal V^a\), and \(w=\mathcal U^a\mathcal W_a\),

$$
S_{\mathrm{MNS}}
=\frac{\kappa L^2}{2}\int_\Sigma d^2\sigma
\left[
\bigl(\mathcal U^a\partial_az+w\bigr)^2
+\mathcal U^a\mathcal U^b
\eta_{ij}\partial_ax^i\partial_bx^j
\right].
$$

The connection equation sets

$$
w=-\mathcal U^a\partial_az,
$$

leaving

$$
S_{\mathrm{ILST}}[L^2\eta;\mathcal U].
$$

The orbits keep \(x^i\) fixed and end at \(z=0\), so an endpoint map identifies their quotient with the Minkowski patch of the conformal boundary. The source correctly notes that this endpoint map is additional geometric input: quotienting by a flow alone does not generally manufacture a conformal boundary.

## de Sitter cosmological patch

For

$$
ds_{\mathcal G}^2
=\frac1{H^2\eta^2}
\left(-d\eta^2+\delta_{ij}dx^idx^j\right),
$$

the paper chooses \(\rho=\partial_\eta\), whose orbits are timelike. It states that the quotient ILST theory lives on a flat Euclidean constant-\(\eta\) slice and identifies the \(\eta=0\) endpoint as the boundary. The algebra is parallel to the AdS example but is not written out. Global de Sitter and regions where the selected flow changes causal character are explicitly deferred.

## Minkowski dilation sectors

Minkowski space admits the Euler homothety

$$
\rho=X^\mu\partial_\mu,
\qquad
\rho^2=X^2.
$$

The reduction is necessarily sectorwise.

For \(X^2>0\), set

$$
X^\mu=e^sY^\mu,
\qquad
Y^2=1.
$$

Since \(Y\cdot dY=0\),

$$
dX^2=e^{2s}
\left(ds^2+ds_{\mathrm{dS}_{D-1}}^2\right),
$$

and the quotient target is Lorentzian \(\mathrm{dS}_{D-1}\). Nonzero null propagation can remain.

For \(X^2<0\), set

$$
X^\mu=e^sY^\mu,
\qquad
Y^2=-1.
$$

Then

$$
dX^2=e^{2s}
\left(-ds^2+ds_{\mathbb H^{D-1}}^2\right).
$$

The quotient is Euclidean \(\mathbb H^{D-1}\). For real fields the ILST constraint with its positive-definite target metric forces

$$
\mathcal U^a\partial_aY^A=0.
$$

On the light cones \(X^2=0\), the Euler vector is null only on a hypersurface, not throughout an open Minkowski region. The paper therefore sketches a related everywhere-null CKV quotient. Its representative action is

$$
S_{\mathrm{red}}^K
=\frac{\kappa}{2}\int_\Sigma d^2\sigma\,
\mathcal U^a\mathcal U^b
\left[
\gamma_{AB}\partial_ay^A\partial_by^B
+2B_a\partial_bv
\right],
$$

where \(\gamma_{AB}\) is the celestial-sphere metric and \(v\) is the Carrollian time coordinate. The equations freeze both \(v\) and \(y^A\) along \(\mathcal U^a\).

# Relation to the vault programme

## What transfers

- The paper gives a clean example of reduction at the **action** level: introduce an actual gauge connection, form invariant variables, solve its equation, and identify the reduced kernel by a Schur complement.
- The null branch is an instructive singular reduction. The multiplier and its constraint survive; a degenerate quotient metric alone does not encode the full theory.
- The dependence on a chosen CKV and regular orbit patch is analogous to the vault's insistence that sewing data include the actual domain and response map. A geometric quotient label does not remove the need to specify admissible fields, constraints, and global identifications.
- The AdS endpoint map illustrates the extra step required to turn an orbit quotient into a genuine boundary construction.

## What does not transfer automatically

- This is not a covariant-phase-space sewing theorem. It does not construct regional observable algebras, Peierls brackets, corner symplectic forms, or a response operator.
- Eliminating \(\mathcal W_a\) is not by itself a proof that quantum path integrals agree. Gaussian determinants, gauge volumes, ghosts, anomalies, boundary terms, and zero modes are uncomputed.
- The term “projective boundary” denotes an orbit-space construction in the general formalism. Its identification with conformal infinity, null infinity, or a horizon is example-dependent.
- The null quotient is constrained Carrollian dynamics, not an ordinary ILST theory with only a degenerate metric.

# Independent verification

## Checked

Using Mathematica with symbolic entries:

1. The non-null completion-of-the-square identity was expanded for a two-dimensional quotient block. The residual was exactly zero:

$$
h_{ss}A^2+2A h_{si}y^i+h_{ij}y^iy^j
=h_{ss}\left(A+\frac{h_{si}y^i}{h_{ss}}\right)^2
+\left(h_{ij}-\frac{h_{si}h_{sj}}{h_{ss}}\right)y^iy^j.
$$

2. For a generic symmetric \(2\times2\) quotient matrix, a vector \(V\), and a covector \(n_i=h_{is}\) subject to \(n_iV^i=1\), Mathematica verified

$$
\gamma_{ij}V^j=0
$$

and the exact reconstruction

$$
h_{ij}
=\gamma_{ij}+n_iA_j+n_jA_i.
$$

3. For the Poincaré-AdS representative \(g=L^2e^{2z}(dz^2+\eta_{ij}dx^idx^j)\), Mathematica returned zero for

$$
\partial_z g-2g.
$$

4. The CW weight cancellation follows directly from the homothety identity:

$$
\delta_\chi
\left(g_{\mu\nu}D_aX^\mu D_bX^\nu\right)
=2\chi\,g_{\mu\nu}D_aX^\mu D_bX^\nu,
$$

which cancels

$$
\delta_\chi(\mathcal V^a\mathcal V^b)
=-2\chi\mathcal V^a\mathcal V^b.
$$

## Visual confirmation

Rendered PDF pages 1, 5, 8, and 13 were inspected. They confirm the title/metadata, the Schur-complement reduction, the null-orbit constraints and CKV extension, and the Minkowski null-sector action/discussion. The arXiv comments say 14 pages; the downloaded PDF has 15 physical pages because the bibliography continues onto the last page.

## Source-derived

The complete action chain, patch assumptions, CKV conformal-frame construction, null-branch multiplier equations, AdS/de Sitter/Minkowski examples, and the quantum caveats were reconstructed from the official TeX source and checked against the rendered PDF. Claims in this category were inspected but not independently rederived unless they also appear under `Checked`.

## Assumptions

- \(\rho\) or \(K\) is nonzero on the chosen patch, and its flow has a smooth local quotient.
- For the non-null reduction, \(h_{ss}\neq0\) and the causal character does not change on the patch.
- The worldsheet density \(\mathcal U^a\) is nonvanishing on the patch used to solve the connection equation.
- The null-branch positivity statement assumes a Lorentzian ambient metric and real fields.
- The CKV conformal-frame equation for \(\Omega\) is solved locally along regular \(K\)-orbits.
- Boundary conditions, global quotient topology, and possible orbit stabilizers are outside the local calculation.

## Blocked

A global phase-space or quantum-equivalence check is blocked by absent boundary conditions, function spaces, global quotient data, gauge-fixing measure, ghost action, and anomaly calculation. The source does not provide these inputs.

## Not independently verified

- No full Hamiltonian or covariant-phase-space reduction was reconstructed.
- The equivalence of reduced symplectic forms, constraint algebras, and global solution spaces was not established.
- No quantum functional determinant, BRST measure, anomaly cancellation, or gauge-fixing comparison was computed.
- The de Sitter example was not independently derived beyond its local conformal-frame analogy.
- The global identification of every orbit space with a conformal boundary, null infinity, or horizon was not verified.

## Failed

No explicit algebraic contradiction was found in the identities tested. The quantum-equivalence language was not tested as a failed theorem because the source ultimately labels it conjectural; the earlier sentence suggesting direct quantum integration is insufficient evidence for that stronger claim.

# Claim ledger

- **Proved in the source and independently checked algebraically:** the regular non-null action reduces by a Schur complement after solving the CW connection equation.
- **Proved in the source and independently checked algebraically:** the null Carrollian decomposition reconstructs the constrained action and has kernel \(V^i\).
- **Conditional classical statement:** the quotient interpretation requires a regular patch, a smooth orbit space, fixed causal character, and nonvanishing worldsheet kernel density.
- **Example-dependent geometric statement:** Poincaré-AdS radial orbits identify with the Minkowski boundary patch through an endpoint map.
- **Source assertion with abbreviated derivation:** the de Sitter cosmological-patch analogue.
- **Conjectural:** equivalence of the quantum parent and quotient theories.
- **Not established:** a general holographic dictionary, equality of observables/correlation functions, or a theorem for black-hole horizons.

# Bottom line

The paper supplies a useful action-first reduction template and correctly separates its classical derivation from its quantum conjecture. Its strongest reusable lesson is the singular distinction between non-null and null gauge orbits: the former produce a Schur-complement target metric after eliminating the connection, whereas the latter retain a multiplier constraint and therefore define a genuinely constrained Carrollian quotient theory.
