---
paper id: 2609.33690v1
title: Extrinsic Renormalization of New Massive Gravity
authors:
- Corral, Cristóbal
- Olea, Rodrigo
- Sanhueza, Leonardo
publication date: '2026-09-27T15:52:08Z'
abstract: "The renormalization of asymptotically AdS spacetimes in New Massive Gravity\
  \ is studied using boundary terms constructed with the extrinsic curvature. For\
  \ generic values of the theory couplings, a single extrinsic boundary term produces\
  \ a consistent holographic description, as the variation of the total action is\
  \ finite and expressible in terms of the holographic source. This prescription applies\
  \ to constant-curvature geometries and non-Einstein solutions with Brown-Henneaux\
  \ asymptotic conditions. A suitable asymptotic expansion shows the agreement of\
  \ the resulting holographic stress tensor with the one obtained from the auxiliary-field\
  \ formulation.\n At the degenerate point, where the two maximally symmetric vacua\
  \ coalesce, the Fefferman-Graham expansion admits an additional mode associated\
  \ with relaxed AdS boundary conditions. A quadratic extrinsic counterterm removes\
  \ the new divergences and leads naturally to a holographic picture with two independent\
  \ sources. The corresponding responses obey a modified holographic Ward identity\
  \ and determine finite conserved charges.\n Finally, the proper use of the Noether-Wald\
  \ formalism reproduces the correct charges of the BTZ black hole, non-Einstein AdS\
  \ waves, and the rotating hairy black hole."
comments: 28 pages
url: https://arxiv.org/abs/2609.33690v1
summary: Reconstructs NMG extrinsic counterterms and two-source Ward identities, while
  isolating explicit action, response and charge inconsistencies before CPS reuse.
tags: []
---

# Extrinsic counterterms and the two-source boundary problem

The useful construction separates ordinary AdS data from the extra linear Fefferman–Graham mode at the degenerate NMG vacuum. The additional quadratic extrinsic counterterm cancels the linear-mode divergence produced by the linear extrinsic term, and a two-source variational problem has a definite modified Ward identity. These mechanisms are reusable. The printed action, response tensors and charge formulas, however, are not mutually consistent in the displayed conventions; the equalities claimed between them must not be imported without repair.

Source: [2609.33690v1](https://arxiv.org/abs/2609.33690v1). Complete PDF and TeX inspected; PDF page 16, printed page 15, visually confirms (4.25)–(4.29). Context: [[2026_09_30_overview]]. Dense-paper mode is used because the conclusion depends on a long asymptotic and variational chain.

## How to read this paper and its full structure

Read §3 and §4.1 first to distinguish the two exceptional couplings. Then read §§4.2.1–4.2.3 with the failure ledger below open. Section 5 supplies the intended charge map; §6 tests concrete solutions. Section 2 and §4.3 are comparison references, not independent confirmations of a consistent sign convention. Appendices A–B are needed to reproduce the expansion.

| Section cluster | Definitions and purpose | Later dependency |
|---|---|---|
| §1 Introduction | Why asymptotic source Dirichlet data permit extrinsic boundary terms | Entire construction |
| §2 Einstein-AdS3 boundary terms | Gauss-normal gauge, outward normal, $K$, FG coefficients, full versus half GHY | Signs, normalization and Einstein limit |
| §3 NMG; §§3.1–3.3 | Schouten/Cotton form, vacuum polynomial, degenerate and critical points | Which FG coefficients are permitted |
| §4.1 Field equations | Radial equations and constraints through $z^2$ | Source count and counterterms |
| §4.2 Action/variation; §§4.2.1–4.2.3 | Einstein, non-Einstein Brown–Henneaux, and relaxed degenerate sectors | Finite variational responses |
| §4.3 Auxiliary-field comparison | Eliminate $f_{\mu\nu}$; compare stress tensors | Claimed scheme equivalence |
| §5 Noether–Wald charges | Prepotential plus boundary improvement | Charges in each asymptotic sector |
| §6; §§6.1–6.3 | BTZ, AdS waves, rotating hairy black hole | Physical examples and normalization |
| §7 Conclusions | Proposed extension to logarithmic modes | Open, outside present analysis |
| Appendix A | Generalized Kronecker delta and contractions | Compact curvature expressions |
| Appendix B | Connection, Gauss–Codazzi, Schouten and Cotton expansions | §4 derivations |

No logarithmic branch is analyzed. The chosen power-law expansion is also a restriction on possible higher-derivative asymptotic modes; it is not a classification of every NMG boundary condition.

## Fields, signs and vacuum branches

The sole bulk field is a three-dimensional metric. The source writes

$$
I_{\rm NMG}=\kappa\int_M d^3x\sqrt{|g|}
\left[\sigma_1R-2\lambda-\frac{\sigma_2}{\mu^2}
\left(R_{\mu\nu}R^{\mu\nu}-\frac38R^2\right)\right],
\qquad \kappa=\frac1{16\pi G},\quad \sigma_{1,2}=\pm1.
\tag{3.1}
$$

Here $\mu$ is a mass scale, $\lambda$ is the bare cosmological constant, and $\Lambda=-\ell^{-2}$ labels a chosen effective AdS vacuum. They must not be identified. The Schouten tensor, its trace and Cotton tensor are

$$
S_{\mu\nu}=R_{\mu\nu}-\tfrac14Rg_{\mu\nu},\qquad
S=\tfrac14R,\qquad C_\lambda{}^{\mu\nu}=2\nabla^{[\nu}S^{\mu]}{}_\lambda.
$$

With $\delta^{\mu\nu}_{\lambda\rho}=\delta^\mu_\lambda\delta^\nu_\rho-\delta^\mu_\rho\delta^\nu_\lambda$,

$$
R_{\mu\nu}R^{\mu\nu}-\frac38R^2
=\operatorname{tr}(S^2)-(\operatorname{tr}S)^2
=-\delta^{\mu\nu}_{\lambda\rho}S^\lambda{}_{\mu}S^\rho{}_{\nu}.
$$

The source packages the variation as $\delta I=\int\sqrt{|g|}\mathcal E_{\mu\nu}\delta g^{\mu\nu}+\int\sqrt{|g|}\nabla_\mu\Theta^\mu$, with

$$
\begin{aligned}
E^{\mu\nu}_{\lambda\rho}
&
=\frac{\kappa\sigma_1}{2}\delta^{\mu\nu}_{\lambda\rho}
-\frac{2\kappa\sigma_2}{\mu^2}
\left(\delta^{[\mu}_{[\lambda}S^{\nu]}{}_{\rho]}-\tfrac14\delta^{\mu\nu}_{\lambda\rho}S\right),\\
\nabla_\rho E^{\mu\nu}_{\lambda\rho}&=-\frac{\kappa\sigma_2}{2\mu^2}C_\lambda{}^{\mu\nu},\\
\Theta^\mu&=2\delta\Gamma^\lambda_{\nu\rho}E_\lambda{}^{\rho\mu\nu}
-2\delta g_{\nu\sigma}\nabla_\rho E^{\nu\mu\rho\sigma}.
\end{aligned}
$$

Index positions in a reuse must follow the defining $E=\partial\mathcal L/\partial R$ and the source's (3.8); raising or lowering a curvature pair changes which displayed delta is being contracted. The corresponding field equation is

$$
\kappa^{-1}\mathcal E^\mu{}_{\nu}
=\sigma_1G^\mu{}_{\nu}+\lambda\delta^\mu_\nu
+\frac{\sigma_2}{2\mu^2}
\left(\delta^{\mu\alpha\beta}_{\nu\lambda\rho}
S^\lambda{}_{\alpha}S^\rho{}_{\beta}+2\nabla_\lambda C_\nu{}^{\lambda\mu}\right).
\tag{3.10}
$$

The Cotton term carries the fourth derivatives; its contraction gives the second-order scalar constraint (3.13). On constant curvature, $S^\mu{}_{\nu}=\Lambda\delta^\mu_\nu/2$ and $C=0$, giving

$$
E_0=\lambda-\sigma_1\Lambda+\frac{\sigma_2\Lambda^2}{4\mu^2}=0,
\qquad
\Lambda_\pm=2\sigma_2\mu^2\left(\sigma_1\pm\sqrt{1-\sigma_2\lambda/\mu^2}\right).
$$

Define

$$
\varpi_\pm=\sigma_1\pm\frac{\sigma_2}{2\mu^2\ell^2}.
$$

The **degenerate vacuum** has $\varpi_+=0$ and $\varpi_-=2\sigma_1$: the two vacuum roots coincide and a linear FG coefficient is allowed. The **critical coupling** has $\varpi_-=0$: the Brown–Henneaux central charges $c_L=c_R=3\ell\varpi_-/(2G)$ vanish. These are distinct loci. Critical logarithmic modes are excluded in this paper.

## Radial data and asymptotic constraints

The source uses

$$
ds^2=N^2dz^2+h_{ij}dx^idx^j,
\qquad K_{ij}=-\frac1{2N}\partial_zh_{ij},\qquad n_\mu=-N\delta^z_\mu,
$$

and then $N=\ell/z$, $h=\ell^2\bar g/z^2$ with

$$
\bar g=g_{(0)}+\frac z\ell g_{(1)}+\frac{z^2}{\ell^2}g_{(2)}+O(z^3).
$$

All coefficient indices are raised with $g_{(0)}$. Write the mixed matrices $A=g_{(0)}^{-1}g_{(1)}$, $B=g_{(0)}^{-1}g_{(2)}$ and scalars $t=\operatorname{tr}A$, $q=\operatorname{tr}A^2$, $u=\operatorname{tr}B$. Then

$$
K^i{}_j=\frac1\ell\delta^i_j-\frac{z}{2\ell^2}A^i{}_j
+\frac{z^2}{\ell^3}\left(\tfrac12A^2-B\right)^i{}_j+O(z^3),
$$

$$
\sqrt{|h|}=\frac{\ell^2}{z^2}\sqrt{|g_{(0)}|}
\left[1+\frac{zt}{2\ell}+\frac{z^2}{2\ell^2}
\left(u+\tfrac14t^2-\tfrac12q\right)+O(z^3)\right].
$$

These expansions were independently checked for an arbitrary $2\times2$ matrix pair. Appendix B's Schouten expansion was checked through $z^2$ with xCoba for arbitrary constant diagonal $A,B$ and flat $g_{(0)}$; this is a scoped component check, not a proof of every derivative term in the general appendix.

In §4.1 the leading radial equation fixes $E_0=0$. At order $z$, $\varpi_+t=0$ and $\varpi_+(A-t\mathbf1)=0$. Away from both special loci this yields

$$
A=0,\qquad u=-\tfrac12\ell^2\mathcal R_{(0)}.
\tag{4.3}
$$

At $\varpi_+=0$, the next scalar constraint instead gives $q=t^2$. In two dimensions Cayley–Hamilton implies

$$
\det A=0,\qquad A^2=tA.
\tag{4.4}
$$

Thus the relaxed branch has an extra source $g_{(1)}$, subject to constraints. It is not an unconstrained second symmetric tensor. Variations must remain tangent to the allowed asymptotic data.

## Action coefficients and the extrinsic subtraction

Before imposing a branch, the source expands $\kappa^{-1}\mathcal L=L_{(0)}+zL_{(1)}+z^2L_{(2)}+\cdots$. Once $E_0=0$,

$$
\begin{aligned}
L_{(0)}&=-\frac{4\varpi_-}{\ell^2},\qquad
L_{(1)}=\frac{2\varpi_-t}{\ell^3},\\
L_{(2)}&=\frac{\varpi_+}{4\ell^4}(t^2-q)
-\frac{\varpi_-}{2\ell^4}(t^2+2q-4u-2\ell^2\mathcal R_{(0)}).
\end{aligned}
$$

Multiplying by the volume expansion, rather than inferring divergences from $L_{(k)}$ alone, gives the independently checked density

$$
\frac{\sqrt{|g|}\mathcal L}{\kappa\sqrt{|g_{(0)}|}}
=-\frac{4\ell\varpi_-}{z^3}
+\frac{1}{z}\left[\ell\varpi_-\mathcal R_{(0)}
+\frac{\varpi_+}{4\ell}(t^2-q)\right]+O(1).
$$

There is no $z^{-2}$ term. The $z^{-1}$ term is **not zero** on the generic branch: it becomes $\ell\varpi_-\mathcal R_{(0)}$. At degeneracy it becomes $2\ell\sigma_1\mathcal R_{(0)}$, as in (4.22). An Euler-density logarithm has no local bulk variation on a closed two-dimensional boundary of fixed topology, but its numerical action divergence does not disappear just because it is topological. Vanishing Euler integral, explicit logarithmic subtraction or an agreed topological normalization is needed for a literal finite action; corners require their own completion.

The source proposes

$$
I_K=-\kappa\varpi_-\int_{\partial M}\sqrt{|h|}\,K,
\tag{4.12}
$$

and at degeneracy adds

$$
I_{\rm ct}=\kappa\varpi_-\int_{\partial M}\sqrt{|h|}
\left(\frac1\ell-\frac\ell2\delta^{ik}_{jl}K^j{}_iK^l{}_k\right)
=\kappa\varpi_-\int\sqrt{|h|}\left(\frac1\ell-\ell\det K\right).
\tag{4.24}
$$

The boundary expansions give

$$
\frac{\sqrt{|h|}K}{\sqrt{|g_{(0)}|}}
=\frac{2\ell}{z^2}+\frac{t}{2z}+O(z),\qquad
\frac{\sqrt{|h|}(\ell^{-1}-\ell\det K)}{\sqrt{|g_{(0)}|}}
=\frac{t}{2z}+O(1).
$$

Therefore the new $t/z$ contributions from $I_K$ and $I_{\rm ct}$ cancel exactly. This relative cancellation is a valid algebraic result even though the source's leading bulk/boundary sign needs attention.

### Leading-sign test on pure AdS

Take the source's positive densities, outward normal, $K=2/\ell$, a flat boundary patch of unit coordinate area, and physical cutoff region $\epsilon\le z\le z_0$. Its equations give

$$
I_{\rm bulk}=\kappa\varpi_-\int_\epsilon^{z_0}-\frac{4\ell}{z^3}\,dz
=-\frac{2\kappa\varpi_-\ell}{\epsilon^2}+O(1),
\qquad
I_K=-\frac{2\kappa\varpi_-\ell}{\epsilon^2}.
$$

Their sum doubles the divergence. Reversing the boundary sign would cancel it, but would also require recomputing the variation and charge improvements. The source does not specify a reversed boundary integration orientation that resolves all its later signs. This is an explicit failure of literal finiteness with the displayed scalar measures and cutoff domain, not a conclusion that extrinsic renormalization is impossible.

## Responses: reconstruct the variation before naming a stress tensor

For $A=0$, (4.15) prints

$$
\tau^{ij}=-\frac{2\kappa\varpi_-}{\ell}
\left(g_{(2)}^{ij}-u g_{(0)}^{ij}\right).
$$

Equation (4.37) instead gives $\delta I_{\rm HT}=+(\kappa\varpi_-/\ell)\int\sqrt{|g_{(0)}|}(g_{(2)}^{ij}-u g_{(0)}^{ij})\delta g_{(0)ij}$ and calls the answers equal. Under their shared definition $\delta I=\tfrac12\int\sqrt{|g_{(0)}|}\tau^{ij}\delta g_{(0)ij}$, they are opposites. The same sign discrepancy already occurs between (2.9) and (2.12). A topological variation cannot reverse an arbitrary non-topological stress response.

For the relaxed branch define $c_0=2u-\ell^2\mathcal R_{(0)}-q/2$. Reading (4.25) directly with the definition (4.26) gives

$$
\begin{aligned}
T_{\rm read}^{ij}
&=\frac{\kappa\varpi_-}{2\ell}
\left[tg_{(1)}^{ij}-4g_{(2)}^{ij}+c_0g_{(0)}^{ij}\right],\\
P_{\rm read}^{ij}
&=-\frac{\kappa\varpi_-}{2\ell}
\left[g_{(1)}^{ij}-t g_{(0)}^{ij}\right].
\end{aligned}
$$

But (4.27) prints

$$
T_{\rm print}^{ij}=\frac{\kappa\varpi_-}{2\ell}
\left[4g_{(2)}^{ij}-tg_{(1)}^{ij}+c_0g_{(0)}^{ij}\right],\qquad
P_{\rm print}^{ij}=-P_{\rm read}^{ij}.
$$

The $T$ difference is $(\kappa\varpi_-/(2\ell))(8g_{(2)}^{ij}-2t g_{(1)}^{ij})$; it is not simply an overall convention change because the trace term was not reversed. These formulas were visually confirmed in the rendered PDF and independently compared symbolically. $T_{\rm read},P_{\rm read}$ are only the correct coefficients of the printed (4.25), not an independently repaired full gravitational variation.

## The two-source Ward identity and conserved current

Independently of the defective explicit coefficients, suppose a correctly renormalized variation has the form

$$
\delta I=\frac12\int\sqrt{|g_{(0)}|}
\left(T^{ij}\delta g_{(0)ij}+P^{ij}\delta g_{(1)ij}\right).
$$

For symmetric responses and simultaneous boundary diffeomorphisms of both sources,

$$
\delta_\xi g_{(1)ij}
=\xi^kD_kg_{(1)ij}+g_{(1)kj}D_i\xi^k+g_{(1)ik}D_j\xi^k.
$$

Substitution and integration by parts, for compactly supported $\xi$ or with endpoint terms accounted for, give

$$
D_j\left(T^{ij}+P^{jk}g_{(1)k}{}^i\right)
=\frac12P^{jk}D^ig_{(1)jk}.
\tag{4.28}
$$

xAct independently reduced the local integration-by-parts identity to zero. The conserved symmetry must preserve **both** source tensors; being a Killing vector only of $g_{(0)}$ is insufficient in general. When $\mathcal L_\xi g_{(0)}=\mathcal L_\xi g_{(1)}=0$, the current built from $T+Pg_{(1)}$ is conserved, giving the intended (4.29). Source constraints can introduce response ambiguities transverse to the allowed variation space; they do not license arbitrary component sign changes.

## Auxiliary field, Noether prepotential and examples

The auxiliary action (4.30) contains $f^{\mu\nu}G_{\mu\nu}+\sigma_2\mu^2(f_{\mu\nu}f^{\mu\nu}-f^2)/4$. Varying $f$ gives

$$
f_{\mu\nu}=-\frac{2\sigma_2}{\mu^2}S_{\mu\nu},
$$

whose substitution reproduces the curvature-squared action; this algebraic identity was checked. The auxiliary approach fixes metric and mixed auxiliary boundary data before the FG limit. Agreement with an extrinsic scheme therefore requires both a common convention and matching asymptotic source spaces. The sign discrepancy above prevents accepting the displayed equivalence as a verified result.

The intended source charge prescription is

$$
q^{\mu\nu}=-2\left(E^{\mu\nu}_{\lambda\rho}\nabla^\lambda\xi^\rho
+2\xi^\lambda\nabla_\rho E^{\mu\nu}_{\lambda\rho}\right),\qquad
Q[\xi]=\int_{\Sigma_\infty}\left(q^{\mu\nu}-2\xi^{[\mu}n^{\nu]}\mathcal B\right)d\Sigma_{\mu\nu}.
$$

For constant curvature this reduces to $q^{\mu\nu}=-2\kappa\varpi_-\nabla^{[\mu}\xi^{\nu]}$. The boundary improvement is essential; a bulk Wald prepotential alone does not define a renormalized asymptotic Hamiltonian. At degeneracy, the boundary action contains both $I_K$ and $I_{\rm ct}$.

In mixed notation, (5.8) proposes a charge density proportional to

$$
B-\tfrac12u\mathbf1-\tfrac14t\left(A-\tfrac12t\mathbf1\right)
+\tfrac14\ell^2\mathcal R_{(0)}\mathbf1.
$$

Using $A^2=tA$, the printed $PA$ is zero. After expressing both proposed currents with common prefactor $\kappa\varpi_-/(2\ell)$, the current from (4.27)–(4.29) differs from (5.8) by

$$
\left(4u-2\ell^2\mathcal R_{(0)}-q\right)\mathbf1.
$$

The constraint $q=t^2$ alone does not remove this discrepancy. In fact, even $A=0$ and $u=-\ell^2\mathcal R_{(0)}/2$ leave a curvature term. The claimed equality needs an additional repair or restriction.

### BTZ normalization and first law

Section 6.1 uses $f=r^2/\ell^2-8Gm+16G^2j^2/r^2$, $N^\phi=-4Gj/r^2$ and reports

$$
M=\varpi_-m,\qquad J=\varpi_-j,\qquad
S=\frac{2\pi r_+}{4G}\varpi_-.
$$

At fixed couplings, $m=(r_+^2+r_-^2)/(8G\ell^2)$, $j=r_+r_-/(4G\ell)$, $T=(r_+^2-r_-^2)/(2\pi\ell^2r_+)$ and $\Omega=r_-/(\ell r_+)$ give $dM-TdS-\Omega dJ=0$ for both independent radius variations. This check confirms thermodynamic consistency of the reported normalized charges, not their derivation from the inconsistent printed boundary action. Their vanishing at $\varpi_-=0$ concerns the specified Einstein/power-law sector, not logarithmic solutions.

### AdS waves and the actual Brown–Henneaux threshold

The source takes $ds^2=\ell^2z^{-2}(dz^2-2du\,dv-Fdu^2)$, with $F=F_+(u)z^{1+\alpha}+F_-(u)z^{1-\alpha}$ and

$$
\alpha=\ell\mu\sqrt{\sigma_2\varpi_+},\qquad
\alpha^2=\sigma_1\sigma_2\mu^2\ell^2+\tfrac12.
$$

Brown–Henneaux $g_{uu}=O(1)$ requires $F=O(z^2)$. For a nonzero $F_+$ branch with $F_-=0$, this means $\alpha\ge1$. The source's stated $\sigma_2=1$, $\varpi_+>0$ does not suffice: $\sigma_1=\sigma_2=1$, $\mu\ell=1/2$ gives $1+\alpha=1+\sqrt3/2<2$. The $\partial_v$ charge is reported to vanish; the general wave charge computation has not been independently reproduced here and must use the corrected falloff scope.

### Hairy black hole and a checked static sector

Section 6.3 supplies a rotating solution with $\eta=\sqrt{1-a^2/\ell^2}$, a shifted radial function $H(r)$, and hair $b$. Its reported charges are

$$
M_{\rm OTT}=m+\frac{b^2\ell^2}{16G},\qquad J_{\rm OTT}=aM_{\rm OTT}.
$$

The static $a=0$ reduction is $ds^2=-fdt^2+dr^2/f+r^2d\phi^2$, $f=r^2/\ell^2+br-4Gm$. xCoba gives

$$
R=-\frac6{\ell^2}-\frac{2b}{r},\qquad
S^\mu{}_{\nu}=\operatorname{diag}\left(-\frac1{2\ell^2},-\frac1{2\ell^2},-\frac1{2\ell^2}-\frac b{2r}\right),\qquad C=0.
$$

For $\sigma_1=1$, $\sigma_2=-1$, $\mu^2=1/(2\ell^2)$, $\lambda=-1/(2\ell^2)$, every component of (3.10) vanishes. This confirms a non-Einstein, conformally flat solution with the required slower falloff. It does not reproduce the rotating charge integral. In the $b=a=0$ limit, $m_{\rm BTZ}=m/2$ because the two metric conventions use $8Gm_{\rm BTZ}$ and $4Gm$; $\varpi_-=2$ then reconciles the reported masses.

## Equation ledger and CPS use

The reusable chain is: action and vacuum polynomial → admitted FG source coefficients → density divergences → a candidate boundary subtraction → independently consistent finite variation → Ward identity → symmetry-preserving conserved current. Finiteness of an on-shell action cannot replace the finite-variation step. The current failure lies precisely between the printed subtraction, variation and responses, so later agreement claims do not close that chain.

For regional CPS, retain the pair $(g_{(0)},g_{(1)})$ as prescribed boundary data only on the relaxed branch, with their constraints. Releasing a source changes the variational problem and can add flux. A regional sewing construction still needs the symplectic potential, corner terms and source-matching prescription; the paper does not supply an interface theory. For AdS quantization, the distinction $\varpi_+=0$ versus $\varpi_-=0$ is directly useful when classifying admissible modes, but log spectra and determinants remain outside this analysis.

## Verification log

- **Source-derived:** full field-equation/variation presentation, generic derivative-dependent FG equations, rotating hairy metric and its reported charges, wave charge and central-charge interpretation. All major sections and useful appendices are mapped above.
- **Checked:** Mathematica verified the Schouten curvature invariant, auxiliary-field elimination, vacuum root, arbitrary $2\times2$ determinant/$K$ expansions, density coefficients, Cayley–Hamilton identity, relative $t/z$ cancellation, response mismatches, pure-AdS divergence and BTZ first law. xAct verified the covariant two-source Ward integration by parts; xCoba checked Appendix B's constant diagonal FG Schouten sector and the static hairy geometry/Cotton/EOM.
- **Failed:** literal leading divergence cancellation with the printed positive measures and normal; omission of the generic Euler logarithm from the nonzero-density count; equality of (2.9)/(2.12) and (4.15)/(4.37); extraction of (4.27) from (4.25); equality with (5.8) using only (4.4); the stated sufficient Brown–Henneaux condition for waves.
- **Blocked:** a convention-consistent general finite variation and associated renormalized Hamiltonian charges cannot be certified from the mutually inconsistent formulas. An explicit orientation/sign repair and a treatment of the Euler term/corners are required. This is not a source-access or computation-service outage.
- **Not independently verified:** full arbitrary-boundary fourth-order variation, all Cotton FG coefficients, rotating hairy Noether integral, complete wave charge, logarithmic boundary conditions, integrability on an enlarged source-varying phase space, or any quantum result.

**Verified:** only the scoped computations and identities listed above. **Assumptions:** fixed couplings; $z>0$, outward normal $n=-Ndz$; characteristic-zero $2\times2$ algebra; power-law FG sector; boundary integration-by-parts terms controlled; explicit static solution parameters as stated. **Not verified:** a fully repaired renormalization scheme or general equivalence of all printed charge constructions.

Official versioned PDF and TeX retrieval succeeded. The font extraction warning was resolved with TeX and rendered formula inspection. A first Mathematica call had an extra closing bracket and was rerun successfully. An initial abstract xCoba Cotton expression retained unevaluated basis derivatives; explicitly evaluating the xCoba connection and component covariant derivative gave all zero Cotton components. Neither failed harness attempt was counted as verification. No updated/tracked paper content was retrieved during this note.
