---
paper id: 2609.03126v1
title: Boundary-Value Problem in Type IIB Supergravity and Holography
authors:
  - Soumya Adhikari
  - Junho Hong
  - Chanyoung Joung
  - Geum Lee
  - Sourav Roychowdhury
publication date: 2026-09-02T20:02
abstract: |-
  The paper derives boundary terms for the Euclidean type-IIB pseudo action by classifying which potential or conjugate momentum is held fixed. In the fixed-five-form-charge ensemble the boundary term agrees, under stated product-background and global-form assumptions, with a topological correction previously motivated by the PST formulation. Tests on EAdS3 x S3 x M4 and warped EAdS6 x S2 x Sigma reproduce the corresponding lower-dimensional on-shell actions at a finite radial cutoff.
comments: "v1: 14 pages"
url: https://arxiv.org/abs/2609.03126v1
summary: "An action-first ensemble prescription for type-IIB holography whose canonical-momentum version is solid, while its general Page-charge interpretation remains conditional."
tags: []
---

Daily overview: [[2026_09_04_overview]]

# Verdict

**Correct under the following precise conditions:** the boundary fields and momenta are globally admissible on the radial cutoff, the selected ensemble fixes either a potential or its canonical momentum, and the background satisfies the product/degree assumptions used to apply Stokes' theorem. For the two explicit backgrounds, the ten-dimensional and lower-dimensional on-shell actions match with the authors' conventions.

**Not proven in general:** the generalized pseudo action fixes periods of the bare canonical momentum $\Pi_\Phi$, whereas a quantized Page charge may require a shifted momentum $\Pi'_\Phi$. The paper shows that the difference is inert in its examples because the other fields are Dirichlet, but leaves the generic fixed-Page-charge boundary problem open.

Reason codes: `T1-boundary`, `T2-dS-BH-holography`, `T2-model`.

# Source map

1. **§I Introduction:** reframes the vanishing/mismatched parent-theory on-shell action as an ensemble mismatch rather than only a defect of self-duality formulations.
2. **§II Euclidean type-IIB boundary-value problem:**
   - §II.A varies the bare pseudo action, identifies the momenta $\Pi_\Phi$, and shows that nonzero fixed momentum is not admissible without an additional boundary term.
   - §II.B adds a field-by-field Legendre term, classifies $s_\Phi=0,1$, and discusses global flux backgrounds, minimal boundary data, and equations of state.
3. **§III PST comparison:** proves equality between the fixed-$C_4$-momentum boundary term and the earlier PST-motivated topological correction within their common domain.
4. **§IV Examples:**
   - §IV.A treats the D1-D5 $\mathrm{EAdS}_3\times S^3\times M_4$ background, where the $C_2$ boundary term supplies the entire nonzero on-shell action.
   - §IV.B treats warped $\mathrm{EAdS}_6\times S^2\times\Sigma$, where all ensemble-changing terms vanish on shell and the ordinary pseudo action already matches Romans $F(4)$ supergravity.
5. **§V Discussion:** states the unresolved fibred-background, Page-shift, type-IIA, bubbling-geometry, and one-loop problems.

# Conventions and field content

The analysis is Euclidean and uses the Einstein frame. The bosonic fields are

$$
(g_{\mu\nu},B_2,\phi;C_0,C_2,C_4),
$$

with

$$
H_3=dB_2,
\qquad
F_{n+1}=dC_n,
$$

$$
\widetilde F_3=F_3-C_0H_3,
\qquad
\widetilde F_5=F_5+\mathcal X_5,
$$

$$
\mathcal X_5=-\frac{1}{2}C_2\wedge H_3+\frac{1}{2}B_2\wedge F_3.
$$

The Euclidean self-duality convention is

$$
*\widetilde F_5=i\widetilde F_5.
$$

It is imposed after varying the pseudo action. The gravitational Dirichlet problem includes the ten-dimensional Gibbons–Hawking–York term with outward normal and the paper's sign convention

$$
S_{\mathrm{GHY}}^{(10)}=-\frac{1}{\kappa^2}\int_{\partial\mathcal M}\sqrt h\,K.
$$

# Canonical boundary data

For $\Phi\in\{\phi,B_2,C_0,C_2,C_4\}$, the variation is organized as

$$
\delta S_{\mathrm{IIB}}
=\frac{1}{2\kappa^2}\sum_\Phi
\left[
\int_{\mathcal M}E_\Phi\wedge\delta\Phi
+\int_{\partial\mathcal M}\delta\Phi\wedge\Pi_\Phi
\right].
$$

The momenta are

$$
\Pi_\phi=*d\phi,
\qquad
\Pi_{C_0}=e^{2\phi}*F_1,
\qquad
\Pi_{C_4}=\frac{1}{2}*\widetilde F_5,
$$

$$
\Pi_{B_2}=e^{-\phi}*H_3-C_0e^\phi*\widetilde F_3
-\frac{1}{4}C_2\wedge*\widetilde F_5
+\frac{i}{2}C_4\wedge F_3,
$$

$$
\Pi_{C_2}=e^\phi*\widetilde F_3
+\frac{1}{4}B_2\wedge*\widetilde F_5
-\frac{i}{2}C_4\wedge H_3.
$$

The bare action supports pointwise Dirichlet data $\delta\Phi=0$ and homogeneous Neumann data $\Pi_\Phi=0$, but not a generic nonzero fixed momentum $\delta\Pi_\Phi=0$.

# Generalized pseudo action and ensemble switch

The proposed action is

$$
\widetilde S_{\mathrm{IIB}}
=S_{\mathrm{IIB}}+S_{\mathrm{bdry}},
$$

$$
S_{\mathrm{bdry}}
=-\frac{1}{2\kappa^2}
\sum_\Phi s_\Phi
\int_{\partial\mathcal M}\Phi\wedge\Pi_\Phi,
\qquad s_\Phi\in\{0,1\}.
$$

Its boundary variation is

$$
\delta\widetilde S_{\mathrm{IIB}}\big|_{\partial\mathcal M}
=\frac{1}{2\kappa^2}\sum_\Phi
\int_{\partial\mathcal M}
\left[(1-s_\Phi)\delta\Phi\wedge\Pi_\Phi
-s_\Phi\Phi\wedge\delta\Pi_\Phi\right].
$$

Therefore:

- $s_\Phi=0$ selects fixed potential;
- $s_\Phi=1$ selects fixed canonical momentum;
- changing ensembles changes the action by a boundary Legendre term even when the two data are correlated on shell by an equation of state.

For gauge potentials, pointwise Dirichlet/Neumann data are stronger than necessary. On a closed cutoff boundary, Hodge decomposition reduces the boundary constraint to co-exact and harmonic pairings. It is sufficient to fix local field-strength data and holonomies in the potential ensemble, or the corresponding momentum periods in the momentum ensemble.

# Canonical momentum versus Page charge

For the $C_4$ sector, the D3 Page charge uses

$$
N=\frac{2}{i(2\pi\ell_s)^4g_s}\int_{S^5}\Pi'_{C_4},
$$

$$
\Pi'_{C_4}=\Pi_{C_4}-\frac{i}{2}\mathcal X_5.
$$

The variational principle above fixes $\Pi_{C_4}$, not automatically $\Pi'_{C_4}$. Dirichlet conditions on $B_2$ and $C_2$ make the shift inert in the examples and in the Lunin–Maldacena ensemble discussed by the paper. Outside that sector, a field-dependent shift can vary, so “fixed canonical momentum” and “fixed quantized Page charge” need not coincide.

# Equality with the PST-motivated correction

Choose

$$
s_{C_4}=1,
\qquad
s_\Phi=0\quad(\Phi\ne C_4).
$$

Then

$$
S_{\mathrm{bdry}}^{(C_4)}
=-\frac{1}{4\kappa^2}\int_{\partial\mathcal M}C_4\wedge*\widetilde F_5.
$$

Using self-duality, split the closed five-form as

$$
F_5=F_{5E}+F_{5NE},
$$

where $F_{5E}$ is globally exact and $F_{5NE}$ is closed but not globally exact. Under the paper's assumptions, the radial-boundary pullback of $F_{5E}$ vanishes. Stokes' theorem then gives

$$
S_{\mathrm{bdry}}^{(C_4)}
=-\frac{i}{4\kappa^2}\int_{\mathcal M}
\left[
F_{5E}\wedge F_{5NE}
+d(\mathcal X_5\wedge C_4)
\right],
$$

which is the earlier PST-motivated correction.

The equality requires:

1. a possibly warped product $M_d\times X_{10-d}$ with compact internal factor;
2. the stated PST transformation and internal-derivative properties of the exact/non-exact split;
3. a shared external one-form factor in $F_{5E}$ absent from $F_{5NE}$;
4. globally defined boundary nine-forms, justified in the examples by internal-degree counting;
5. self-duality imposed at the boundary.

# Example 1: D1–D5 on $\mathrm{EAdS}_3\times S^3\times M_4$

The background has constant dilaton, $C_0=B_2=C_4=0$, $\widetilde F_5=0$, and R–R three-form flux

$$
F_3=2Q_5(\epsilon_3+i*_6\epsilon_3).
$$

The field-theory data fix $(N_1,N_5)$. The electric D1 charge selects $s_{C_2}=1$; the magnetic D5 flux is a topological sector and is fixed independently of $s_{C_2}$. The relevant action is

$$
\widetilde S_{\mathrm{IIB}}^{(C_2)}
=S_{\mathrm{IIB}}
-\frac{1}{2\kappa^2}\int_{\partial\mathcal M}C_2\wedge\Pi_{C_2}.
$$

The bare pseudo action vanishes on shell, while the boundary term gives

$$
\widetilde S_{\mathrm{IIB}}^{(C_2)}
=\frac{2\ell^4}{\kappa^2}
\operatorname{Vol}_{\mathrm{EAdS}_3}
\operatorname{Vol}_{S^3}
\operatorname{Vol}_{M_4}.
$$

Dimensional reduction gives

$$
\frac{1}{\kappa_3^2}
=\frac{\ell^3}{\kappa^2}
\operatorname{Vol}_{S^3}\operatorname{Vol}_{M_4},
$$

so the three-dimensional vacuum action is identical. The 10d and 3d GHY terms also match at a common cutoff because $K_{10}=K_3=2/\ell$ and the internal volume produces the same Newton-constant map.

The Brown–Henneaux central charge becomes

$$
c=\frac{12\pi\ell^4\operatorname{Vol}_{S^3}\operatorname{Vol}_{M_4}}{\kappa^2}
=6N_1N_5.
$$

# Example 2: warped $\mathrm{EAdS}_6\times S^2\times\Sigma$

The regular solutions are described by holomorphic data $\mathcal A_\pm$ on $\Sigma$. The two-form potentials have two $S^2$ legs, the three-form fluxes have two $S^2$ legs and one $\Sigma$ leg, and $\widetilde F_5=0$. Hence

$$
B_2\wedge F_3=C_2\wedge H_3=0,
\qquad
F_5=0.
$$

All remaining momentum pairings contain a normal EAdS leg after Hodge duality, so their pullbacks to the radial cutoff vanish. Thus

$$
\widetilde S_{\mathrm{IIB}}=S_{\mathrm{IIB}}
$$

on these solutions for any $s_\Phi$. The known ten-dimensional action equals the six-dimensional Romans action with

$$
\frac{1}{16\pi G_N^{(6)}}
=\frac{16\pi}{3\kappa^2}
\int_\Sigma d^2z\,\mathcal K^2\mathcal G.
$$

At finite cutoff, $K_6=5\coth u_c$ and $K_{10}=K_6/f_6$; the warp-factor integral converts the 10d GHY term into its 6d counterpart.

# Verification log

- **Checked:** Mathematica gives a zero residual for the Legendre-transform variation

  $$
  \delta(\Phi\wedge\Pi)-\left(\delta\Phi\wedge\Pi+\Phi\wedge\delta\Pi\right)=0
  $$

  for the even-degree type-IIB potentials used here, reproducing the $s_\Phi$ boundary variation.
- **Checked:** the D1–D5 Newton-constant relation makes the 3d and 10d on-shell coefficients identical.
- **Checked:** substituting $\operatorname{Vol}(S^3)=2\pi^2$, $2\kappa^2=(2\pi)^7g_s^2\alpha'^4$, and $Q_1Q_5V_4=(2\pi)^4g_s^2N_1N_5\alpha'^4$ gives $c=6N_1N_5$ exactly.
- **Checked:** direct divergence calculations give $K_{\mathrm{EAdS}_3}=2/\ell$ in Poincaré coordinates and $K_{\mathrm{EAdS}_6}=5\coth u$ in global coordinates.
- **Source-derived:** the official PDF and TeX source were inspected completely; rendered pages 4, 8, and 11 visually confirm the minimal-boundary-data formula, D1–D5 action chain, and warped GHY reduction.
- **Blocked:** a general variation of the shifted Page momentum, including large gauge transformations and nontrivial patching, is not supplied by the source and cannot be inferred from the two examples.
- **Not independently verified:** the full ten-dimensional equations of motion, the external/internal Hodge-star signs, the globally defined nine-form claims on arbitrary flux backgrounds, the original warped-$\mathrm{EAdS}_6$ on-shell integral, holographic renormalization, and the localization comparison.

# Translation to action/CPS and regional gluing

The paper gives a clean action-level distinction between two polarizations of boundary data:

$$
(\Phi,\Pi_\Phi)
\quad\leadsto\quad
\begin{cases}
\delta\Phi=0,&s_\Phi=0,\\
\delta\Pi_\Phi=0,&s_\Phi=1.
\end{cases}
$$

This is directly useful for the vault's source/response bookkeeping: a Legendre boundary term changes the boundary polarization and the ensemble, not the bulk equations. It also supplies a warning for gluing: one must decide whether the interface datum is a potential, canonical flux, or shifted Page flux before defining a sewing constraint.

It does **not** establish regional composition. The paper treats an outer radial boundary of a fixed background; it does not duplicate interface ports, prove flux matching between two regions, eliminate common histories, or show associativity. Its Hodge-decomposition remark is about admissible boundary variations, not a physical partial trace or a gauge quotient.

# Limitations and reusable stop rule

- The pseudo action still imposes five-form self-duality by hand.
- Product geometry and internal-degree counting exclude important fibred backgrounds.
- Bare versus Page momentum is unresolved in general.
- Large gauge transformations, torsion sectors, and differential-cohomology refinements are not incorporated.
- The examples match at finite cutoff before holographic renormalization; the renormalized field-theory equality uses prior results.
- Classical ensemble matching does not prove a one-loop or nonperturbative path-integral equivalence.

**Stop rule:** use the boundary term as a canonical-polarization/ensemble prescription only after stating which momentum is fixed and proving that it equals the desired quantized charge on the target configuration space. Do not transfer the Page-charge language to a new gluing problem by analogy alone.
