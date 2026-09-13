---
paper id: 2609.09954v1
title: The Geometry of Gravitational Radiation
authors:
  - Jelle Hartong
publication date: 2026-09-09T09:44
abstract: |-
  The paper organizes the asymptotic expansion of four-dimensional vacuum gravity at future null infinity by gauging the conformal Carroll algebra. Its surviving special-conformal curvatures encode the radiative Weyl data, define a Carroll-covariant vacuum/radiative shear split, and rewrite the Bondi loss equations as a flux-sourced Ward identity for a traceless Carroll energy-momentum tensor with vanishing energy flux.
comments: "76 pages, 6 appendices"
url: https://arxiv.org/abs/2609.09954v1
summary: "A monograph-scale construction of Carroll-covariant soft shear, radiative curvature data, and BMS currents at future null infinity."
tags: []
---

# Verdict and relevance

This is a high-priority paper for the null-boundary and charge parts of the vault. Its reusable result is not merely a change of Bondi coordinates: it packages the soft/hard shear split into conformal-Carroll gauge geometry and identifies the non-conservation of BMS currents with a hierarchy of special-conformal curvatures.

The exact scope is narrower than a full covariant-phase-space charge theorem. The paper derives an on-shell response complex from the Einstein-Hilbert action with boundary terms, but the primed tensor used for the clean BMS current is obtained by rewriting the Bondi loss equations. A variational derivation of that primed tensor, and its identification with the literature's “good prescription,” are left open by the source.

See [[2026_09_10_overview]] for today's screening context.

# How to read this long paper

- Essential: sections 2.1-2.3 for the Carroll data and transformations; sections 3.7-3.8 for the surviving \(K\)-curvatures; sections 4.2-4.3 for their Weyl/Newman-Penrose meaning; section 5 for the covariant vacuum shear; section 6.2 for the rewritten loss equations and BMS currents.
- Technical reference: sections 3.1-3.6 for the gauging and dependent connections; appendices B-D for the boundary curvature, bulk Weyl expansion, and vacuum-shear derivations; appendix F for the loss-equation algebra.
- Independent cross-check: appendix E derives the same vacuum shear by a finite diffeomorphism of Minkowski space.
- Optional on a first pass: the detailed bulk-frame quotient in section 4.1 and the intermediate curvature manipulations in appendices C and D.

# Complete source map

1. Introduction: motivates a Carroll-covariant split between vacuum (soft) and radiative (hard) shear and previews the relation between \(K\)-curvatures, Weyl data, Bondi loss, and BMS currents.
2. Review of Carroll-covariant Bondi-Sachs gauge:
   - 2.1 fixes the radial gauge, boundary Carroll data, radial expansion, and umbilicity constraint.
   - 2.2 derives boundary diffeomorphism, Weyl, and Carroll-boost transformations and the conformal-coordinate ambiguity of \(h_{\mu\nu}\).
   - 2.3 chooses a torsion-free boundary affine connection and records its non-metricity and commutators.
   - 2.4 reviews the Einstein-equation solution through the orders needed later.
3. Gauging the conformal Carroll algebra:
   - 3.1 writes the algebra, isomorphic to the Poincare algebra in one higher dimension.
   - 3.2 introduces the gauge fields for \(H,P_a,B_a,J_{ab},D,K,K_a\), their curvatures, and transformations.
   - 3.3 imposes the first conventional constraints and solves the dilatation/rotation/boost connections in terms of boundary data and shear.
   - 3.4 relates the vielbein postulates to the chosen affine connection.
   - 3.5-3.6 compute the barred boost and rotation curvatures.
   - 3.7 sets every curvature except the special-conformal pair to zero and derives the Carroll-boost hierarchy.
   - 3.8 fixes \(S=0\) and \(b_\mu=\tilde b_\mu\), then gives explicit \(K\)-curvature formulas.
4. Conformal Carroll algebra in the bulk:
   - 4.1 derives the boundary algebra from radial bulk diffeomorphisms and local Lorentz transformations and identifies it as a quotient of a larger bulk gauge algebra.
   - 4.2 maps five leading Weyl components to the five independent \(K\)-curvature components.
   - 4.3 reduces to standard Bondi coordinates and solves the vacuum hierarchy explicitly.
5. Vacuum shear:
   - 5.1 rewrites all three levels of the \(K\)-curvature hierarchy as deviations from vacuum news/shear.
   - 5.2 solves the auxiliary first-order equations, removes the \(Y_{\mu\nu}\) redundancy, fixes the conformal-coordinate ambiguity by a Stueckelberg field, and obtains the final two-scalar formula.
6. \(K\)-curvatures and Bondi loss:
   - 6.1 reviews the on-shell action variation and its energy-momentum-news responses, including the Carroll-boost anomaly.
   - 6.2 defines a primed Carroll tensor, rewrites the loss equations with \(K\)-curvature fluxes, and constructs BMS currents.
7. Appendix A proves the special two-dimensional tensor identities used throughout.
8. Appendix B computes the curvature of the boundary affine connection and its scalar contraction.
9. Appendix C computes the ten independent leading Weyl components in the radial expansion.
10. Appendix D supplies the six derivations that connect \(K\)-curvatures to vacuum news and shear, including the first-order PDE solutions for \(\mathcal T_{\mu\nu}\) and \(Y_{\mu\nu}\).
11. Appendix E obtains the vacuum shear by a finite diffeomorphism from Minkowski space.
12. Appendix F carries out the mass- and angular-momentum-loss rewritings used in section 6.2.

# Geometric data and conventions

The bulk theory is four-dimensional vacuum Einstein gravity near future null infinity \(\mathcal I^+\). Bulk coordinates are \((r,x^\mu)\), while Greek boundary indices run over the three-dimensional Carroll manifold and \(a,b=1,2\) are spatial frame indices. The bulk signature is encoded through a null frame with

$$
U\cdot V=-1,
\qquad
E^a\cdot E^b=\delta^{ab}.
$$

The Carroll-covariant Bondi-Sachs gauge is

$$
g_{rr}=0,
\qquad
\Gamma^\rho_{rr}=0,
\qquad
\Gamma^\rho_{\rho r}=2r^{-1},
$$

and the metric is decomposed as

$$
ds^2=-2e^\beta\tau_\mu dx^\mu dr+g_{\mu\nu}dx^\mu dx^\nu,
\qquad
g_{\mu\nu}=-e^{2\beta}S\tau_\mu\tau_\nu+\Pi_{\mu\nu}.
$$

The boundary inverse data satisfy

$$
h^{\mu\rho}h_{\rho\nu}-v^\mu\tau_\nu=\delta^\mu_\nu,
\qquad
v^\mu\tau_\mu=-1,
\qquad
v^\mu h_{\mu\nu}=0,
\qquad
\tau_\mu h^{\mu\nu}=0.
$$

The leading radial expansion is

$$
\beta=r^{-2}\beta^{(2)}+\cdots,
\qquad
S=rK+S^{(0)}+r^{-1}S^{(1)}+\cdots,
$$

$$
g_{\mu\nu}=r^2h_{\mu\nu}+r g^{(-1)}_{\mu\nu}+g^{(0)}_{\mu\nu}
+r^{-1}\log r\,g^{(1,1)}_{\mu\nu}+r^{-1}g^{(1)}_{\mu\nu}+\cdots.
$$

The leading Einstein equations require

$$
K_{\mu\nu}:=-\frac12\mathcal L_v h_{\mu\nu}
=\frac12Kh_{\mu\nu},
\qquad
h_{\mu\nu}dx^\mu dx^\nu=e^{2\varphi}dX^a dX^a,
\qquad
K=-2\mathcal L_v\varphi.
$$

Thus the spatial leaves are totally umbilical and locally conformally flat. The order-\(r\) coefficient contains the spatial symmetric trace-free shear \(C_{\mu\nu}\):

$$
g^{(-1)}_{\mu\nu}
=-K\tau_\mu\tau_\nu-\tau_\mu a_\nu-\tau_\nu a_\mu+C_{\mu\nu},
\qquad
a_\mu=\mathcal L_v\tau_\mu.
$$

The twist and news conventions are

$$
F_{\mu\nu}=2\partial_{[\mu}\tau_{\nu]}+2\tau_{[\mu}a_{\nu]},
\qquad
N_{\mu\nu}=-\left(\mathcal L_v+\frac12K\right)C_{\mu\nu}.
$$

In standard Bondi coordinates the source fixes are \(\tau=du\), \(h=\sigma_{ij}(x)dx^idx^j\), \(v=-\partial_u\), \(K=a_i=F_{ij}=0\), so the convention above becomes \(N_{ij}=\partial_u C_{ij}\).

# Gauge transformations and the shear shift

Gauge-preserving bulk transformations induce a boundary diffeomorphism \(\chi^\mu\), Weyl parameter \(\Lambda_D\), and spatial Carroll boost \(\lambda_\mu\):

$$
\delta\tau_\mu=\mathcal L_\chi\tau_\mu+\Lambda_D\tau_\mu+\lambda_\mu,
\qquad
\delta h_{\mu\nu}=\mathcal L_\chi h_{\mu\nu}+2\Lambda_Dh_{\mu\nu},
$$

$$
\delta C_{\mu\nu}
=\mathcal L_\chi C_{\mu\nu}+\Lambda_D C_{\mu\nu}
+2h^\rho_{\langle\mu}h^\sigma_{\nu\rangle}
  (\mathcal D_\rho+a_\rho)\lambda_\sigma.
$$

The last term is inhomogeneous. The central construction is a vacuum shear with exactly the same shift, so \(C-C^{\mathrm{vac}}\) is boost invariant.

The conformal-coordinate presentation \(h=e^{2\varphi}dX^a dX^a\) has a separate ambiguity under two-dimensional conformal maps of the \(X^a\) target. This is not a Carroll boost. The paper removes this ambiguity from the final vacuum shear by replacing \(\varphi\) with an invariant scalar \(\Phi\).

# Conformal Carroll gauging and dependent connections

The conformal Carroll algebra is presented with generators

$$
\{H,P_a,B_a,J_{ab},D,K,K_a\},
$$

whose gauge fields are respectively

$$
\{\tau_\mu,e^a_\mu,\omega^a_\mu,\omega^{ab}_\mu,b_\mu,f_\mu,f^a_\mu\}.
$$

The source data are \((\tau_\mu,e^a_\mu)\). The shear appears in the symmetric spatial part of the boost connection. Conventional curvature constraints solve \((\omega^{ab}_\mu,\omega^a_\mu)\) and the time component of \(b_\mu\). A second set

$$
R(B)_{\mu\nu}{}^a=0,
\qquad
R(J)_{\mu\nu}{}^{ab}=0
$$

solves \((f_\mu,f^a_\mu)\) and, by the Bianchi identities, also gives \(R(D)=0\). After the gauge choice

$$
S=0,
\qquad
b_\mu=\widetilde b_\mu:=a_\mu+\frac12K\tau_\mu,
$$

every curvature vanishes except \(R(K)_{\mu\nu}\) and \(R(K)_{\mu\nu}{}^a\).

The radial bulk analysis reproduces this algebra on the boundary but also exposes extra subleading frame transformations. The conformal Carroll algebra is therefore a quotient of the larger residual bulk gauge algebra, and it does not encode every coefficient in the metric expansion: in particular, a spatial piece of \(\Pi^{(0)}_{\mu\nu}\), the response-containing \(g^{(1)}_{\mu\nu}\), and lower orders lie outside the displayed gauging.

# The \(K\)-curvature hierarchy

In two spatial dimensions the algebraic Bianchi identities leave five independent components:

$$
R(K)_{ab},
\qquad
v^\mu R(K)_{\mu a},
\qquad
v^\mu R(K)_{\mu ab},
$$

with \(1+2+2=5\) components. Carroll boosts act triangularly,

$$
R(K)_{ab}
\longrightarrow
v^\mu R(K)_{\mu a}
\longrightarrow
v^\mu R(K)_{\mu ab}
\longrightarrow 0.
$$

This makes the nested vanishing conditions gauge invariant and defines four source classifications:

| class | highest nonzero level | source terminology |
|---|---|---|
| i | none | vacuum |
| ii | \(R(K)_{ab}\) | strongly non-radiative |
| iii | \(v^\mu R(K)_{\mu a}\) | weakly non-radiative |
| iv | \(v^\mu R(K)_{\mu ab}\) | radiative |

In standard Bondi coordinates,

$$
R(K)_{ui}{}^a e_{aj}=-\frac12\partial_uN_{ij},
$$

$$
R(K)_{ui}=\partial_uP^{(0)}_i-\frac12\partial_iS^{(0)},
$$

$$
R(K)_{ij}=\partial_iP^{(0)}_j-\partial_jP^{(0)}_i
+\frac14N_{ik}C^k{}_j-\frac14N_{jk}C^k{}_i,
$$

where

$$
S^{(0)}=\frac12R[\sigma],
\qquad
P^{(0)}_i=-\frac12D_kC^k{}_i,
\qquad
N_{ij}=\partial_uC_{ij}.
$$

Solving the hierarchy gives

$$
C^{\mathrm{vac}}_{ij}
=-2D_{\langle i}\partial_{j\rangle}C+(C+u)T_{ij},
\qquad
D_kT^k{}_i=-\frac12\partial_iR[\sigma].
$$

# Relation to bulk Weyl data

On a vacuum solution the Riemann and Weyl tensors agree. Five leading Weyl components are the \(K\)-curvature data:

$$
U^\nu\Pi^\rho_\alpha\Pi^\sigma_\beta C_{r\nu\rho\sigma}
=r^{-1}h^\rho_\alpha h^\sigma_\beta R(K)_{\rho\sigma}+\cdots,
$$

$$
U^\nu U^\rho\Pi^\sigma_\alpha C_{r\nu\rho\sigma}
=r^{-1}v^\mu R(K)_{\mu\alpha}+\cdots,
$$

$$
U^\mu U^\rho\Pi^\nu_{\langle\alpha}\Pi^\sigma_{\beta\rangle}
C_{\mu\nu\rho\sigma}
=-r\,v^\mu h^\nu_{\langle\alpha}e^a_{\beta\rangle}
R(K)_{\mu\nu}{}^a+\cdots.
$$

In Newman-Penrose language these correspond respectively to the imaginary part of \(\psi_2\), to \(\psi_3\), and to \(\psi_4\). The remaining leading Weyl data include the mass and angular-momentum aspects and a spatial STF tensor \(D_{\mu\nu}\). Nonzero \(D_{\mu\nu}\) violates standard peeling. Without logarithmic radial terms it is time independent and divergence free; on a two-sphere there is no globally regular nonzero solution, but other topologies or logarithmic terms can retain it.

# Carroll-covariant vacuum shear

The paper first defines a vacuum news tensor and rewrites the hierarchy as differences from it. The final parametrization uses two Carroll scalars \(F\) and \(\Phi\):

$$
C^{\mathrm{vac}}_{\mu\nu}
=2h^\rho_{\langle\mu}h^\sigma_{\nu\rangle}
\left[
-\mathcal D_\rho\partial_\sigma F
+F\left(
\mathcal D_\rho\partial_\sigma\Phi
+\partial_\rho\Phi\,\partial_\sigma\Phi
\right)
\right],
$$

subject to

$$
\left(\mathcal L_v+\frac12K\right)F=-1.
$$

Its news is

$$
N^{\mathrm{vac}}_{\mu\nu}
=2h^\rho_{\langle\mu}h^\sigma_{\nu\rangle}
\left(
\mathcal D_\rho\partial_\sigma\Phi
+\partial_\rho\Phi\,\partial_\sigma\Phi
-\mathcal D_\rho a_\sigma-a_\rho a_\sigma
\right).
$$

The field \(F\) contains the supertranslation Goldstone mode. Writing \(F=e^\varphi f\) gives

$$
f=C(X)+U,
\qquad
\widetilde v^\mu\partial_\mu U=-1,
\qquad
v^\mu=e^{-\varphi}\widetilde v^\mu.
$$

The invariant \(\Phi=\varphi+\zeta\) removes the conformal-coordinate ambiguity, where locally for a holomorphic map \(W=f(Z)\),

$$
\zeta=-\frac12\log f'(Z)+\mathrm{c.c.}
$$

and the associated spatial tensor is minus a Schwarzian derivative:

$$
\widetilde{\mathcal T}_{ZZ}
=2\left(\partial^2\zeta+(\partial\zeta)^2\right)
=-\left[
\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2
\right].
$$

Both total and vacuum shear acquire the same inhomogeneous Carroll-boost term. Therefore

$$
\delta(C_{\mu\nu}-C^{\mathrm{vac}}_{\mu\nu})
=\mathcal L_\chi(C_{\mu\nu}-C^{\mathrm{vac}}_{\mu\nu})
+\Lambda_D(C_{\mu\nu}-C^{\mathrm{vac}}_{\mu\nu}),
$$

so the difference is boost invariant. Calling the difference “hard/radiative shear” additionally assumes the \(K\)-curvatures have the required corner behavior at the ends of \(\mathcal I^+\).

# Response complex and Bondi loss

After adding extrinsic, normal, and intrinsic boundary terms, the on-shell action variation is

$$
\delta S_{\mathrm{ren}}\big|_{\mathrm{os}}
=\cdots+2\int_{\mathcal I^+}d^3x\,e
\left(
T^\mu\delta\tau_\mu
+\frac12T^{\mu\nu}\delta h_{\mu\nu}
+\frac12S^{\mu\nu}\delta C_{\mu\nu}
\right),
$$

with shear response

$$
S^{\mu\nu}=\frac12h^{\mu\rho}h^{\nu\sigma}N_{\rho\sigma}.
$$

The Weyl and boost Ward identities are

$$
\tau_\mu T^\mu+h_{\mu\nu}T^{\mu\nu}
+\frac14C_{\mu\nu}N^{\mu\nu}=0,
$$

$$
h_{\mu\rho}T^\rho
-\frac12h^{\rho\sigma}\mathcal D_\rho N_{\sigma\mu}
=\mathcal A^B_\mu,
\qquad
\mathcal A^B_\mu=v^\rho R(K)_{\rho\mu}.
$$

Thus the Carroll-boost anomaly is itself the middle level of the \(K\)-curvature hierarchy.

The source then redefines the energy and momentum densities using leading Weyl components and packages them into

$$
T'^\mu=-\tau\!\cdot\!T'\,v^\mu,
$$

$$
T'^{\mu\nu}
=-2v^{(\mu}h^{\nu)\kappa}P'_\kappa
+\frac12KD^{\mu\nu}
-\frac12h^{\mu\nu}\tau\!\cdot\!T',
$$

up to the displayed STF improvement ambiguity. It obeys

$$
T'^\mu h_\mu{}^\rho=0,
\qquad
T'^\mu{}_{\mu}=0.
$$

The Bondi equations become a sourced Carroll Ward identity,

$$
-e^{-1}\partial_\mu(eT'^\mu{}_{\nu})
+T'^\mu\partial_\nu\tau_\mu
+\frac12T'^{\mu\rho}\partial_\nu h_{\mu\rho}
=\mathcal F_\nu,
$$

where the two projections of \(\mathcal F_\nu\) are built from the \(K\)-curvatures:

$$
v^\nu\mathcal F_\nu
=-(\mathcal D_\mu+a_\mu)\mathcal A_B^\mu
-\frac12v^\nu C^{\rho\sigma}R(K)_{\nu\rho}{}^a e^a_\sigma,
$$

$$
h^\nu_\kappa\mathcal F_\nu
=\frac12h_{\kappa\sigma}(\mathcal D_\mu+2a_\mu)R(K)^{\mu\sigma}
+C^\sigma{}_\kappa\mathcal A^B_\sigma.
$$

For a Carroll conformal Killing vector \(K^\nu\), the BMS current is

$$
J^\mu_{\mathrm{BMS}}=eT'^\mu{}_{\nu}K^\nu,
\qquad
\partial_\mu J^\mu_{\mathrm{BMS}}=-eK^\nu\mathcal F_\nu.
$$

This is a balance law. A conserved current requires the contracted flux to vanish or to be itself a divergence that can be improved away.

# Equation ledger and dependency map

| object/result | depends on | role later |
|---|---|---|
| \(K_{\mu\nu}=\frac12Kh_{\mu\nu}\) | leading vacuum Einstein equations | permits the conformal-coordinate form of \(h\) and constrains source variations |
| \(C_{\mu\nu}\), \(N_{\mu\nu}\) | order-\(r\) metric and \(v,h,\tau\) | radiative source and response pair |
| conventional curvature constraints | invertible \((\tau,e^a)\) frame | solve all conformal-Carroll connections except the \(K\)-sector |
| \(K\)-curvature hierarchy | algebraic Bianchi identities and boost transformations | gauge-invariant radiative classification |
| Weyl/\(K\) map | on-shell vacuum Einstein equations and radial expansion | identifies the hierarchy with \(\psi_2,\psi_3,\psi_4\)-type data |
| \(N^{\mathrm{vac}}\) | \(\varphi,a,\mathcal T\) and first-order PDE constraints | rewrites the top two hierarchy levels as \(N-N^{\mathrm{vac}}\) |
| \(C^{\mathrm{vac}}\) | \(F,\Phi\) and \((\mathcal L_v+K/2)F=-1\) | makes \(C-C^{\mathrm{vac}}\) boost invariant |
| \(\mathcal A^B_\mu=v^\rho R(K)_{\rho\mu}\) | on-shell action and curvature formula | identifies the boost anomaly |
| \(T'^\mu,T'^{\mu\nu}\) | Weyl components and improvement choice | gives a traceless zero-flux Carroll tensor |
| \(\mathcal F_\nu\) | all three \(K\)-curvature levels | controls BMS-current non-conservation |

# Translation into the vault's action-first language

The source/response split closest to the vault's conventions is

$$
(\tau_\mu,h_{\mu\nu},C_{\mu\nu})
\quad\longleftrightarrow\quad
(T^\mu,T^{\mu\nu},\tfrac12N^{\mu\nu}).
$$

This is genuinely action-derived after the boundary counterterms are fixed. It is the right object to compare with a null-boundary presymplectic potential or regional response map.

By contrast, the primed tensor \(T'\) is presently a Ward-identity normal form. It is not yet shown to be the response obtained by holding \(C-C^{\mathrm{vac}}\) fixed while varying \((\tau,h)\). For an action-first sewing theorem, that missing variational statement is essential: an algebraic rewrite of the loss equations does not by itself define the boundary polarization or symplectic flux.

The boost-invariant radiative datum

$$
C^{\mathrm{rad}}_{\mu\nu}=C_{\mu\nu}-C^{\mathrm{vac}}_{\mu\nu}
$$

is the most useful object for the current gluing programme. It suggests separating soft frame data \((F,\Phi)\) from the released radiative history. However, the paper does not specify the Sobolev trace class, corner data, or response operator needed to sew two finite null regions. Its corner condition is qualitative, not a joint trace-domain theorem.

The triangular \(K\)-curvature hierarchy is also useful as an obstruction ledger: a proposed null seam should not call a history “vacuum” merely because \(\partial_uN=0\); the lower levels, including the boost anomaly and the spatial curl condition, must vanish as well.

# Appendix dependency ledger

- Appendix A: proves the \(d=2\) algebraic identities used to rearrange boost/rotation curvatures and the loss equations.
- Appendix B: derives the curvature of \(\mathcal C^\rho_{\mu\nu}\), including the scalar
  $$
  \mathcal R=-2h^{\mu\nu}\mathcal D_\mu\partial_\nu\varphi
  -e^{-1}\partial_\mu(ea^\mu).
  $$
- Appendix C: reduces the vacuum Riemann tensor to ten independent components, expands them, and supplies the Weyl/\(K\) identifications used in sections 4 and 6.
- Appendix D.1-D.2: proves the first two difference formulas for \(N-N^{\mathrm{vac}}\).
- Appendix D.3-D.5: integrates vacuum news to shear, computes \(P^{(0)}_{\mathrm{vac}}\), and rewrites the spatial \(K\)-curvature.
- Appendix D.6: solves the first-order equations for \(\mathcal T_{\mu\nu}\) and \(Y_{\mu\nu}\) in local conformal coordinates.
- Appendix E: constructs a finite coordinate transformation from Minkowski space and recovers the final vacuum-shear formula, providing a source-internal cross-check independent of the gauging derivation.
- Appendix F: verifies that the original mass and angular-momentum loss identities are equivalent to the primed \(K\)-curvature-sourced form.

# Verification log

## Checked

- Mathematica, exact symbolic components: all three special \(d=2\) identities in appendix A vanish for general antisymmetric \(2\times2\) tensors and general symmetric trace-free \(2\times2\) tensors.
- Mathematica, exact differentiation: for \(\zeta=-\frac12\log f'(z)\),
  $$
  2(\zeta''+(\zeta')^2)+\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2=0
  $$
  under \(f'(z)\neq0\).
- Mathematica, exact standard-Bondi reduction: if
  $$
  C^{\mathrm{vac}}_{ij}=-2D_{\langle i}\partial_{j\rangle}C+(C+u)T_{ij}
  $$
  with \(u\)-independent \(C,T_{ij}\), then \(N^{\mathrm{vac}}_{ij}=T_{ij}\) and \(\partial_uN^{\mathrm{vac}}_{ij}=0\), reproducing the highest vacuum condition.
- Mathematica, exact \(2\times2\) determinant algebra: the appendix-E relation
  $$
  C^2-D=\frac18e^{2\Phi}C_{ij}C^{ij}
  $$
  follows from a general spatial STF matrix in the stated decomposition.
- Mathematica, adapted Carroll frame: the displayed \(T'^\mu\) and \(T'^{\mu\nu}\) have exactly zero spatial energy flux and zero mixed trace for arbitrary energy, momentum, \(K\), and spatial STF \(D^{\mu\nu}\).
- PDF rendering: pages containing the title/abstract, final vacuum-shear construction, appendix-D identities, and appendix-F loss equations were visually compared with the TeX source; equation labels and glyphs were legible and consistent. Poppler emitted a font-embedding warning but no visible formula corruption was found on the inspected pages.

## Source-derived

- The radial Einstein-equation solution and the five Weyl/\(K\)-curvature identifications.
- The complete dependent-connection solution after imposing the curvature constraints.
- The general Carroll-covariant PDE chain leading from vanishing \(K\)-curvatures to \(C=C^{\mathrm{vac}}\).
- The full appendix-F rewriting of the angular-momentum loss equation.

## Blocked

- A full xAct reproduction of the 76-page radial curvature expansion was not attempted: it depends on the paper's custom degenerate Carroll connection, radial ansatz through \(g^{(1)}\), and long intermediate identities not supplied as machine-readable code.
- The global “if and only if” between vanishing \(K\)-curvatures and vacuum shear is not established by the finite checks. The source solves the relevant first-order equations in local conformal coordinates and absorbs homogeneous pieces into \(\mathcal T\) and \(Y\); global topology, regularity, and corner compatibility require separate analysis.
- The existence of a variational principle whose response is exactly \(T'\), and equality with the BMS “good prescription,” are explicitly work in progress or expectations in the source.
- No continuum phase-space theorem, charge-algebra theorem, or null-region sewing theorem follows from the checks above.

## Failed

- None of the source formulas tested above failed under the stated assumptions.

# Assumptions and limitations

- Four-dimensional vacuum Einstein equations; matter fluxes are not included.
- Analysis is near future null infinity in the stated Carroll-covariant Bondi-Sachs gauge.
- The boundary frame \((\tau_\mu,e^a_\mu)\) is nowhere vanishing and invertible.
- The leading Einstein equations impose the totally umbilical constraint on the Carroll spatial metric.
- The explicit \((\Phi,F)\) construction is local in conformal coordinates; global patches and transition data are not supplied.
- Peeling depends on the logarithmic sector and boundary topology through \(D_{\mu\nu}\).
- The original response tensor includes an STF improvement ambiguity caused by constrained source variations.
- The radiative shear requires additional corner behavior; no function space or joint endpoint domain is fixed.
- The BMS current obeys a flux balance law and is not automatically conserved.
- The primed tensor is a rewriting, not yet an independently derived boundary response.

# Reusable takeaways

1. Use \(C-C^{\mathrm{vac}}\), not bare Bondi shear, as the Carroll-boost-invariant radiative datum.
2. Audit all three levels of the \(K\)-curvature hierarchy before declaring a null history vacuum or non-radiative.
3. Keep the action-derived response complex distinct from the primed Ward-identity tensor.
4. Treat soft fields \((F,\Phi)\), radiative history, and corner conditions as separate pieces of seam data.
5. Do not infer a global null-boundary sewing or CPS charge-algebra theorem from the local Carroll construction.
