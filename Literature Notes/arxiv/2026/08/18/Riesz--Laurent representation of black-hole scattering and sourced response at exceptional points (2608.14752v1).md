---
paper id: 2608.14752v1
title: Riesz--Laurent representation of black-hole scattering and sourced response at exceptional points
authors:
  - Okuto Morikawa
  - Shoya Ogawa
  - Takuya Hirose
publication date: 2026-08-14T03:02
abstract: |-
  At a black-hole exceptional point (EP), two quasinormal modes coalesce and their separate residues become ill-conditioned. Rather than postulating a near-degenerate modal fit, we derive the response constructively from the complex-scaled Regge--Wheeler--Zerilli resolvent, treating the modes as one isolated rank-two Riesz cluster. Its zeroth and first contour moments determine an exact pair resolvent on both sides of, and at, the EP, without labeling the individual modes or constructing a normalized Jordan chain. At a second-order EP, these moments determine the simple- and double-pole Laurent operators. Although the modal decomposition is singular, fixed-real-frequency transmission and the greybody factor remain real-analytic through the EP, provided that the cluster remains isolated, the complementary resolvent is regular, and no pole reaches the physical axis. Source--observer matrix elements of the Laurent operators define finite, normalization-independent amplitudes and fix both the constant and linear-in-time terms in the causal ringdown. Their equality with the coefficients from the Jost double-zero expansion shows that they are operator-defined coefficients of the specified physical response, rather than fitting parameters. Thus two cluster moments provide mode-label-free data from which both scattering and driven responses follow.
comments: 55 pages, 0 figures, 0 tables
url: https://arxiv.org/abs/2608.14752v1
summary: "Two Riesz contour moments give an exact, label-free resolvent for an isolated rank-two QNM cluster and finite EP source amplitudes, but the black-hole implementation is a proposed numerical protocol rather than completed numerical evidence."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** the complex-scaled operator forms an analytic family, one contour isolates an algebraic rank-two cluster, the complementary resolvent is regular, and the chosen source/channel matrix elements share a common continuation domain. Under these assumptions the zeroth and first Riesz moments determine the exact resolvent restricted to that cluster. At a second-order exceptional point they become the simple- and double-pole Laurent operators.

The real-frequency regularity statement is also conditional: the physical evaluation point must remain off the continued poles, the localized channel vectors must vary analytically, and no threshold or rotated-cut singularity may enter the chosen domain. The theorem excludes an EP branch singularity in the operator parameters; it does not exclude large or rapidly varying transmission.

The black-hole application is not numerically demonstrated in this paper. The Gaussian-deformed Regge--Wheeler EP is imported as a benchmark, while the contour quadrature, Jost comparison, flux test, and time-domain reconstruction are specified as future computations.

Relevance: **medium detailed** (`T2-spectral`, `T2-model`).

# Operator and scattering setup

For one Schwarzschild Regge--Wheeler--Zerilli channel,

$$
H_\ell=-\frac{d^2}{dx^2}+V_\ell(x),
\qquad
R_\ell(z)=(z-H_\ell)^{-1},
\qquad z=(\omega+i0)^2.
$$

The outgoing Green function is

$$
G_\ell(\omega;x,x')
=\frac{u^H_\ell(\omega,x_<)u^\infty_\ell(\omega,x_>)}{W_\ell(\omega)}.
$$

With $u^H\sim A^{\mathrm{in}}e^{-i\omega x}+A^{\mathrm{out}}e^{i\omega x}$ at infinity,

$$
W_\ell=2i\omega A^{\mathrm{in}}_\ell,
\qquad
\mathcal T_\ell=\frac{1}{A^{\mathrm{in}}_\ell}
=\frac{2i\omega}{W_\ell}.
$$

Thus QNM poles, the real-axis transmission amplitude, and a sourced response are different matrix elements or analytic limits of the same resolvent. A trace such as the continuum level density cannot by itself recover the off-diagonal transmission channel.

Complex scaling deforms the radial contour so outgoing QNM profiles become square-integrable and the continuum rotates away. For dilation-analytic source and observation vectors,

$$
R_\ell(z)=U_\theta^{-1}R_{\ell,\theta}(z)U_\theta.
$$

The angle $\theta$ is representational, not physical. Exact admissible matrix elements are independent of it; finite-basis $\theta$ dependence is an error diagnostic.

# Two Riesz moments

Let $\Gamma_{\mathrm{pair}}$ enclose exactly two QNM eigenvalues, counted with algebraic multiplicity. Define

$$
P^\theta_{\mathrm{pair}}
=\frac{1}{2\pi i}\oint_{\Gamma_{\mathrm{pair}}}
R_{\ell,\theta}(z)\,dz,
$$

$$
\mathcal M^\theta_{\mathrm{pair}}
=\frac{1}{2\pi i}\oint_{\Gamma_{\mathrm{pair}}}
zR_{\ell,\theta}(z)\,dz
=H_{\ell,\theta}P^\theta_{\mathrm{pair}}.
$$

The projector identifies the invariant two-dimensional root space, while the first moment records the operator restricted to it. Introduce

$$
E_c=\frac12\operatorname{Tr}\mathcal M^\theta_{\mathrm{pair}},
\qquad
K^\theta_{\mathrm{pair}}
=\mathcal M^\theta_{\mathrm{pair}}-E_cP^\theta_{\mathrm{pair}},
$$

$$
\Delta^2
=\frac12\operatorname{Tr}\left[(K^\theta_{\mathrm{pair}})^2\right].
$$

On a two-dimensional space, Cayley--Hamilton and $\operatorname{Tr}K=0$ give

$$
K^2=\Delta^2P.
$$

Therefore the exact cluster resolvent is

$$
R^\theta_{\mathrm{pair}}(z)
=\frac{(z-E_c)P^\theta_{\mathrm{pair}}+K^\theta_{\mathrm{pair}}}
{(z-E_c)^2-\Delta^2}.
$$

This is exact for the selected spectral component, not a fit of the full resolvent. The full response remains

$$
R_{\ell,\theta}=R^\theta_{\mathrm{pair}}+R^\theta_{\mathrm{rest}}.
$$

# Exceptional-point limit

Away from the EP, a local square-root branch gives

$$
E_\pm=E_c\pm\Delta,
\qquad
P_\pm=\frac12\left(P\pm\frac K\Delta\right).
$$

The $1/\Delta$ terms explain why the separately labeled projectors become ill-conditioned. Their sum, the cluster moments, $E_c$, and $\Delta^2$ remain single-valued.

At a genuine second-order EP,

$$
\Delta^2=0,
\qquad
K\neq0,
\qquad
K^2=0,
$$

and

$$
R^\theta_{\mathrm{pair}}(z)
=\frac{K^\theta_{\mathrm{pair}}}{(z-E_{\mathrm{EP}})^2}
+\frac{P^\theta_{\mathrm{pair}}}{z-E_{\mathrm{EP}}}.
$$

Hence

$$
\mathcal L_{-2}=K^\theta_{\mathrm{pair}},
\qquad
\mathcal L_{-1}=P^\theta_{\mathrm{pair}}.
$$

The condition $\Delta^2=0$ alone locates a repeated eigenvalue. Establishing an EP rather than a semisimple degeneracy additionally requires rank $P=2$, $K\neq0$, and $K^2=0$ with geometric multiplicity one.

# Real-frequency scattering

The paper defines a linear channel functional $\mathfrak T_{\ell,\omega}$ such that

$$
\mathcal T_\ell(\omega;q)
=\mathfrak T_{\ell,\omega}[R_\ell(z_\omega;q)].
$$

Equivalently, using the transition operator, the localized channel vectors are $V_\ell|-\omega\rangle$. Applying the exact cluster formula gives

$$
\mathcal T_{\ell,\mathrm{pair}}
=\frac{(z_\omega-E_c)\tau_P+\tau_K}
{(z_\omega-E_c)^2-\Delta^2}.
$$

The full amplitude is the coherent sum

$$
\mathcal T_\ell
=\mathcal T_{\ell,\mathrm{pair}}
+\mathcal T_{\ell,\mathrm{rest}}.
$$

Consequently the greybody factor includes interference:

$$
\Gamma_\ell
=|\mathcal T_{\mathrm{pair}}|^2
+|\mathcal T_{\mathrm{rest}}|^2
+2\operatorname{Re}
\left(\mathcal T_{\mathrm{pair}}\mathcal T_{\mathrm{rest}}^*\right).
$$

The pair/rest terms are not separately measurable probabilities. Large near-EP modal contributions can cancel or interfere without a singularity in the total real-axis observable.

# Sourced response and ringdown coefficients

For source $f$ and observation functional $g$, define the physical cluster matrix elements

$$
C_{-1}[g,f]
=\langle g|U_\theta^{-1}P^\theta_{\mathrm{pair}}U_\theta|f\rangle,
$$

$$
C_{-2}[g,f]
=\langle g|U_\theta^{-1}K^\theta_{\mathrm{pair}}U_\theta|f\rangle.
$$

At the EP they are the $z$-plane Laurent coefficients of the selected source-to-observer response. Converting $z=\omega^2$ around $\omega_{\mathrm{EP}}$ gives

$$
A_{-2}=\frac{C_{-2}}{4\omega_{\mathrm{EP}}^2},
$$

$$
A_{-1}
=\frac{C_{-1}}{2\omega_{\mathrm{EP}}}
-\frac{C_{-2}}{4\omega_{\mathrm{EP}}^3}.
$$

With the paper's inverse Fourier convention, the positive-frequency causal term is

$$
\psi_{\mathrm{EP}}(t)
=\Theta(t)(D_0+D_1t)e^{-i\omega_{\mathrm{EP}}t},
$$

$$
D_0=-iA_{-1},
\qquad
D_1=-A_{-2}.
$$

Thus $C_{-2}=0$ is a source--observer selection rule eliminating the linear-in-time term even though the operator still has a second-order EP.

# Jost comparison

Locally write the same scalar response as

$$
F_{g,f}(\omega)=\frac{\mathcal Q_{g,f}(\omega)}{W_\ell(\omega)}.
$$

If $W(\omega_{\mathrm{EP}})=W'(\omega_{\mathrm{EP}})=0$ and $W''(\omega_{\mathrm{EP}})\neq0$, series division yields

$$
A^J_{-2}=\frac{2\mathcal Q(\omega_{\mathrm{EP}})}{W''(\omega_{\mathrm{EP}})},
$$

$$
A^J_{-1}
=\frac{2\mathcal Q'(\omega_{\mathrm{EP}})}{W''(\omega_{\mathrm{EP}})}
-\frac{2\mathcal Q(\omega_{\mathrm{EP}})W'''(\omega_{\mathrm{EP}})}
{3[W''(\omega_{\mathrm{EP}})]^2}.
$$

Their equality with the Riesz coefficients follows from the uniqueness of the Laurent expansion of the same scalar meromorphic response. This is an analytic equivalence, not a reported numerical cross-check.

# Proposed numerical realization

The paper's appendix gives a useful implementation protocol:

1. assemble the complex-scaled generalized pencil $(\mathbf H_\theta,\mathbf N)$;
2. compute the coefficient-space resolvent $(z\mathbf N-\mathbf H_\theta)^{-1}\mathbf N$ on a contour;
3. obtain $\mathbf P_\Gamma$ and $\boldsymbol{\mathcal M}_\Gamma$ by trapezoidal quadrature;
4. test idempotence, the first-moment relation, Cayley--Hamilton, and $\operatorname{Tr}P\simeq2$;
5. locate the EP from the two real equations $\operatorname{Re}\Delta^2=\operatorname{Im}\Delta^2=0$;
6. contract the moments with source and channel vectors, then compare with direct Jost integration, flux conservation, and time evolution.

The benchmark is the odd-parity $\ell=2$ Regge--Wheeler potential plus a Gaussian bump. With the paper's tortoise convention, the imported EP center is shifted from $d_Y\simeq15.698$ to

$$
d_{\mathrm{EP}}=d_{Y,\mathrm{EP}}-2\ln2\simeq14.312.
$$

# Why it is not high priority

The rank-two contour-moment identity is mathematically reusable for non-self-adjoint spectral problems, and the source/channel distinction is valuable for interpreting resonant enhancement. It is not a direct contribution to covariant phase space, boundary charges, AdS gluing, or quantization. Moreover, the paper does not yet supply numerical values, convergence data, or a black-hole waveform produced by the proposed construction.

# Verification log

## Source-derived

- Read the complete 55-page PDF and the complete 4,230-line TeX source, including the numerical, complex-scaling, and individual-projector appendices.
- Visually inspected the abstract, channel functional, Riesz-cluster construction, Jordan interpretation, conclusion, numerical workflow, and projector appendix on rendered pages.
- Traced all assumptions in the real-axis analyticity proposition and the distinction among the operator deformation, inhomogeneous source, and observation channel.

## Checked

Verified: Mathematica reproduced $K^2=\tfrac12\operatorname{Tr}(K^2)I$ for a generic traceless $2\times2$ matrix and returned zero for the residual of the exact pair-resolvent formula.

Verified: Mathematica expanded the $z$-plane simple and double poles under $z=\omega^2$ and reproduced the coefficients $1/(4\omega_{\mathrm{EP}}^2)$, $-1/(4\omega_{\mathrm{EP}}^3)$, and $1/(2\omega_{\mathrm{EP}})$ used in $A_{-2}$ and $A_{-1}$.

Verified: exact series division of $\mathcal Q/W$ at a double zero reproduced both printed Jost coefficients.

Verified: the clockwise lower-half-plane retarded contour and the derivative residue of a double pole give $D_0=-iA_{-1}$ and $D_1=-A_{-2}$ with the stated Fourier convention.

Assumptions: the Riesz contour stays in the resolvent set and encloses the same algebraic rank-two cluster; source and observation vectors lie in one admissible analytic/ECS domain; the physical frequency does not collide with a pole; the complementary resolvent remains regular.

## Blocked

Blocked: the paper reports no numerical contour moments, residuals, greybody curves, Jost comparison, flux check, or time-domain signal. The supplied workflow cannot be validated quantitatively without running or extending the cited Julia implementations and choosing basis/contour data.

Blocked: the imported Gaussian-potential EP values are not independently recomputed here; doing so requires the full complex-scaled Regge--Wheeler discretization and a two-parameter root search.

## Not independently verified

Not verified: the functional-analytic hypotheses of the Aguilar--Balslev--Combes theorem for the analytically continued Schwarzschild tortoise map and Gaussian-deformed potential on the proposed contours.

Not verified: convergence of finite pseudostates to the prompt response and late-time branch-cut tail.

# Bottom line

The paper gives a clean and correct rank-two spectral construction: use the cluster projector and first moment, not two singular modal residues. It precisely explains when a double QNM pole yields a finite, channel-dependent $(D_0+D_1t)e^{-i\omega_{\mathrm{EP}}t}$ response and why a fixed real-frequency observable need not inherit the modal branch singularity. Its current evidence is analytic; the advertised black-hole computation remains a well-specified but unexecuted numerical program.
