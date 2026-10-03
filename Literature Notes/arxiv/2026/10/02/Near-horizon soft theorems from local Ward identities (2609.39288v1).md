---
paper id: 2609.39288v1
title: Near-horizon soft theorems from local Ward identities
authors:
  - Jin-Peng Zhuge
  - Peng Cheng
publication date: 2026-09-30T08:35
abstract: |-
  We develop a unified formulation of leading soft photon theorems for nondegenerate static spherical horizons. By fixing the photon mode normalization from the horizon symplectic form, we obtain a common angular soft factor whose sign follows from the boundary orientation. We determine the geometric coefficients in the local angular and momentum representations for a chosen radial normalization. The charge balance includes horizon endpoint data and contributions from other boundaries. This formulation brings black hole and cosmological horizons into a common description. Applying the same construction to Yang-Mills fields yields the corresponding tree-level soft gluon theorem. These results identify the common soft structure underlying different horizon geometries.
comments: "36 pages, 5 figures, and 1 table"
url: https://arxiv.org/abs/2609.39288v1
summary: "A horizon charge-balance benchmark with fixed electric endpoint sectors, explicit auxiliary boundaries, and separately normalized local soft modes."
tags: []
---

# Horizon charge balance before a soft theorem

The reusable result is a charge balance for a **probe** Maxwell field on a nondegenerate static spherical horizon. The homogeneous soft Ward identity requires both matching of electric endpoint sectors and vanishing *change* of the auxiliary-boundary charge. The single-emission theorem requires an additional crossing assumption. The coefficients obtained in isotropic coordinates describe a chosen mode normalization; they are not invariant emission probabilities or greybody factors.

Source: [official v1](https://arxiv.org/abs/2609.39288v1), full PDF and TeX inspected. The reconstruction below is **Source-derived**, except for the explicitly recorded independent checks. Daily placement: `T1-Wald-CPS; T1-charge; T1-boundary`.

## Source tree and reading guide

| Source section, printed pages | Content and dependency |
| --- | --- |
| 1, 1–2 | Local Ward identities versus global evolution and infrared sectors. |
| 2.1, 3–5 | General metric, Maxwell action, characteristic data and supplementary constraint. Essential. |
| 2.2, 5–7 | Endpoint-completed charge, symplectic form, orientation, bifurcation matching and other-boundary flux. Essential. |
| 3, 7–11 | Symplectic photon normalization, crossed insertion, optional single emission, isotropic and local-momentum representations. Essential. |
| 4.1, 11–19 | Schwarzschild, S-AdS, dS, RN and S-dS; local radial normalization and global boundary conditions differ. Technical reference. |
| 4.2, 19–22 | Bumblebee background and nonconstant redshift; independent minimally coupled probe is crucial. |
| 4.3, 22–27 | Tree-level Yang–Mills, gluon hard flux and an additional nonlinear corner condition; coefficient table. |
| 5, 27–28 | Scope: no radial propagation, rotating/extremal extension or quantum non-Abelian result. |
| A, 28–30 | Static/null/isotropic charts and orientation. Use with Sections 2–3. |
| B, 30–33 | Radial integral, endpoint brackets, positive-frequency half weight and local Fourier dictionary. Essential normalization reference. |

Read 2 → B → 3 first; consult A when comparing orientations, then 4.3 for a non-Abelian regional benchmark. Section 4.1 is a family of checks, not a new independent Ward identity for every geometry. All sections and both appendices are covered here.

# Fields, action and characteristic data

The background and angular measure are

$$
ds^2=-f(r)dt^2+h(r)dr^2+2r^2\gamma_{z\bar z}dz\,d\bar z,
\qquad \gamma_{z\bar z}=\frac{2}{(1+z\bar z)^2},
\qquad d\Omega=\gamma_{z\bar z}d^2z.
$$

Let $c=\sqrt{fh}$ extend smoothly to $c_h>0$, with $f(r_h)=0$ and $f'(r_h)\ne0$. In the static region $f,h>0$. With $dr_*=c\,dr/f$ and $u=t-r_*$,

$$
ds^2=-fdu^2-2c\,du\,dr+2r^2\gamma_{z\bar z}dz\,d\bar z,
\qquad g^{ur}=-c^{-1},\quad g^{rr}=f/c^2,
\quad \sqrt{-g}=cr^2\gamma_{z\bar z}.
$$

The positive surface gravity is $\kappa=|f'(r_h)|/(2c_h)$; its time normalization is that of the chosen $t$. Near the horizon, $x=r-r_h$ and proper distance obey $\ell=2c_h\sqrt{x/f'(r_h)}+O(|x|^{3/2})$ on the static side. No assumption $c'=0$ is made.

The action and current convention are

$$
S=-\frac1{4g^2}\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}+S_m,
\qquad j^\nu=-\frac1{\sqrt{-g}}\frac{\delta S_m}{\delta A_\nu},
\qquad \nabla_\mu F^{\mu\nu}=g^2j^\nu.
$$

For fixed metric, integration by parts gives the electromagnetic boundary potential $\theta^\mu=-g^{-2}F^{\mu\nu}\delta A_\nu$ (with the volume density supplied by the integration measure). Matter uses $D_\mu\Phi=(\nabla_\mu-iqA_\mu)\Phi$. The physical coupling of the canonically normalized photon is $gq$.

Radial gauge and falloffs are $A_r=0$, $A_u=O(x)$, $A_A=O(1)$, with $A_A=\sum_m A_A^m x^m$ and finite smooth currents. Define

$$
E\equiv A_u^0=\frac{r_h^2}{c_h}\partial_r A_u|_h,
\qquad J\equiv j_u^0=r_h^2j_u|_h.
$$

Here $A_u^0$ denotes electric data, **not** the horizon value of $A_u$. Residual parameters obey $\partial_r\epsilon=\partial_u\epsilon=0$. The normalized electric datum is needed for the cancellation of $c_h$.

The radial equation is

$$
\partial_r\left(\frac{r^2}{c}\partial_r A_u\right)
=\gamma^{-1}\partial_r(\partial_z A_{\bar z}+\partial_{\bar z}A_z)+g^2r^2j_r.
$$

Twice integrating with $A_u(r_h)=0$ yields Appendix B's exact radial construction:

$$
A_u(r)=\int_{r_h}^r\frac{c(s)}{s^2}ds\left[
E+\gamma^{-1}\{\partial_z(A_{\bar z}(s)-A_{\bar z}^0)
+\partial_{\bar z}(A_z(s)-A_z^0)\}
+g^2\int_{r_h}^s s'^2j_r(s')ds'\right].
$$

Finite $j_r$ first contributes at $O(x^2)$, and need not vanish. The angular equation transports subleading data:

$$
2\partial_u A_z^1=\frac{f'_h}{c_h}A_z^1+
\frac{c_h}{r_h^2}\partial_zE-g^2c_hj_z^0+
\frac{c_h}{r_h^2}\partial_z[\gamma^{-1}(\partial_{\bar z}A_z^0-\partial_zA_{\bar z}^0)].
$$

Thus $A_A^0$ are free radiative data, while higher radial coefficients require initial-cut values and transport. Current conservation separately fixes

$$
\partial_r(r^2j_u)=-\partial_u(r^2j_r)+\partial_r(r^2fj_r/c)
+c\gamma^{-1}(\partial_zj_{\bar z}+\partial_{\bar z}j_z).
$$

The horizon $r$ equation reduces to the central supplementary constraint

$$
\boxed{\quad \partial_uE=-\gamma^{-1}\partial_u(\partial_zA_{\bar z}^0+
\partial_{\bar z}A_z^0)-g^2J.\quad}
$$

This chain, rather than setting $h=f^{-1}$ at the outset, explains geometric universality of the intrinsic charge balance.

# Electric sectors, generators and global matching

In the retarded reference orientation,

$$
\mathcal Q_\epsilon(u)=\frac1{g^2}\int d^2z\,\gamma\epsilon E,
\qquad Q_\epsilon\equiv\mathcal Q_\epsilon(-\infty)
=Q_s+Q_h+Q_e,
$$

$$
Q_s=\frac1{g^2}\int du\,d^2z\,\epsilon\partial_u
(\partial_zA_{\bar z}^0+\partial_{\bar z}A_z^0),
\quad Q_h=\int du\,d^2z\,\gamma\epsilon J,
\quad Q_e=\mathcal Q_\epsilon(+\infty).
$$

Finite integrated fluxes and endpoint limits are assumed. Choose a sector with fixed $E(+\infty)$ and flat endpoint connections $A_A^0(\pm\infty)=\partial_A\phi_\pm$. The phases vary freely; fixing them would remove the large gauge action. The symplectic form (2.8) is

$$
\begin{aligned}
\Omega_{\mathcal H}={}&g^{-2}\int du\,d^2z\,[
\delta\dot A_z^0\wedge\delta A_{\bar z}^0+
\delta\dot A_{\bar z}^0\wedge\delta A_z^0]\\
&+r_h^2\int du\,d^2z\,\gamma[
\delta\dot{\bar\Phi}^0\wedge\delta\Phi^0+
\delta\dot\Phi^0\wedge\delta\bar\Phi^0].
\end{aligned}
$$

For endpoint-vanishing scalar packets, contraction with $\delta_\epsilon A_A=\partial_A\epsilon$, $\delta_\epsilon\Phi=iq\epsilon\Phi$ gives $\Omega(\delta_\epsilon,\delta)=\delta Q_s+\delta Q_h=\delta Q_\epsilon$. The last step uses $\delta Q_e=0$; it is a statement within the chosen electric sector.

The interior photon commutator is $[A_z^{rad}(u,z),A_{\bar w}^{rad}(u',w)]_D=-ig^2\operatorname{sgn}(u-u')\delta^2(z-w)/4$. Endpoint continuity adds

$$
[\phi_\pm(z),A_w^0(u,w)]=\mp\frac{ig^2}{8\pi(z-w)}.
$$

With $Q_s=2g^{-2}\int\epsilon\partial_z\partial_{\bar z}(\phi_+-\phi_-)$ and $\partial_{\bar z}(z-w)^{-1}=2\pi\delta^2(z-w)$, angular integration by parts yields $[Q_s,A_w^0]=i\partial_w\epsilon$. The interior bracket alone must not be used to infer the full endpoint generator. Similarly, $[\bar\Phi(u),\Phi(u')]=-i\gamma^{-1}\operatorname{sgn}(u-u')/(4r_h^2)$ and $J=iqr_h^2(\bar\Phi\dot\Phi-\Phi\dot{\bar\Phi})$ give $[Q_h,\Phi]=-q\epsilon\Phi$ after dropping the endpoint terms allowed by the packet assumption.

The paper **imposes** bifurcation matching under $\mathcal A(z,\bar z)=(-1/\bar z,-1/z)$:

$$
\epsilon^+=\mathcal A^*\epsilon^-,\qquad
\star F^+|_B=-\mathcal A^*(\star F^-|_B),\qquad
\phi_B^+=\mathcal A^*\phi_B^-.
$$

This does not follow from the one-branch constraint and does not equate arbitrary radiative fields on the two branches. Physical orientations are encoded by $\eta=+1$ for a black-hole horizon and $-1$ for a cosmological horizon. Appendix A uses $U=-e^{-\eta\kappa u}$, $V=e^{\eta\kappa v}$ to locate $B$.

For evolution on **all** boundary components,

$$
\langle Q_\epsilon^+\mathcal S-\mathcal S Q_\epsilon^-\rangle=-\Delta_\epsilon.
$$

A homogeneous soft/hard identity requires both $\Delta_\epsilon=0$ and $\langle Q_e^+\mathcal S-\mathcal SQ_e^-\rangle=0$. Equal auxiliary charge eigenvalues suffice; the charges need not individually vanish. Schwarzschild/RN have null infinity, S-AdS a timelike conformal boundary, and S-dS the other horizon. These are independent inputs to a regional theory.

# From the symplectic mode to the soft insertion

For $\omega>0$, source (3.3)–(3.5) use

$$
A_z^{rad}=-\frac{i\sqrt2g}{8\pi^2(1+z\bar z)}
\int_0^\infty d\omega\,[b_+e^{-i\omega u}-b_-^\dagger e^{i\omega u}],
$$

$$
[b_\alpha(\omega,z),b_\beta^\dagger(\omega',w)]
=\frac{2(2\pi)^3}{\omega}\delta_{\alpha\beta}\delta(\omega-\omega')\delta_\Omega^2(z,w).
$$

The sine integral reproduces the interior commutator. Taking $\epsilon=(w-z)^{-1}$ as a smeared distribution and using endpoint flatness gives $Q_s(w)=4\pi\Delta A_w^0/g^2$. The positive-frequency delta function has half weight, hence

$$
Q_s(w)=-\frac1{\sqrt2g(1+w\bar w)}
\lim_{\omega\to0^+}\omega[b_+(\omega,w)+b_-^\dagger(\omega,w)].
$$

Define $H(w)=\sum_{out}q_l/(w-w_l)-\sum_{in}q_k/(w-w_k)$ and $S(w)=(1+w\bar w)H(w)/(\sqrt2\omega)$. In a band without pre-existing soft photons the two vacuum-annihilated terms drop out and

$$
\langle b_+\mathcal S-\mathcal S b_-^\dagger\rangle
\simeq2\eta gS(w)\langle\mathcal S\rangle.
$$

This is the result directly fixed by the Ward identity. Only if the incoming insertion is minus the outgoing one at leading order does

$$
\langle b_+\mathcal S\rangle=\eta gS(w)\langle\mathcal S\rangle+o(\omega^{-1})
$$

follow. Dressed states can require the other two soft operators. Existence of the smeared zero-frequency limit is an infrared-sector assumption, not a consequence of finite-frequency mode norm.

# Isotropic conversion and its invariant content

Set $d\rho/\rho=\sqrt h\,dr/r$, $A=\sqrt f$, $B=r/\rho$, and $R=|\rho-\rho_H|>0$. The paper defines a projected local coefficient by

$$
b_\alpha(\omega,w;R)=\frac{4i\omega}{g\mathcal K(R)}a_\alpha(\omega,w;R),
\quad \mathcal K=\frac{A}{B^4\rho},\quad
\frac{\mathcal K}{R}\longrightarrow\frac{\kappa\rho_H^2}{r_h^3}.
$$

Indeed $r-r_h=f'_h r_h^2R^2/(4c_h^2\rho_H^2)+O(R^3)$, so $A=\kappa(r_h/\rho_H)R+O(R^2)$. For the same projected wavepacket,

$$
\langle a_+\mathcal S\rangle\simeq
\frac{\eta g^2\mathcal K}{4i\omega}S(w)\langle\mathcal S\rangle.
$$

Local massless momentum matching is an additional condition: a horizon crossing position is not generally the momentum direction. For inward radial motion the angular identification is antipodal. At fixed $R$ the source's null covector and polarization give

$$
\frac{k_\mu\varepsilon^{+\mu}}{k_\nu p^\nu}
=\frac{A}{\omega}\frac{1+w\bar w}{\sqrt2(w-w_k)}.
$$

Thus $S(p)=AS(w)$ and the equivalent coefficient is $\eta g^2\mathcal K/(4i\omega A)$, with $\mathcal K/A\to C=\rho_H^3/r_h^4$. Gauge shifts of the polarization cancel when total hard charge balances. Since $S(p)\sim A/\omega$, the local $a$ amplitude behaves as $R/\omega^2$; this is the same normalized $b$ soft pole in different variables.

Appendix B's shell measure is $\pi A^2/\omega$ after positive-energy delta integration, and $A^2d^3p/(2\omega)=B^3\omega\,d\omega\,d\Omega_p/(2A)$. This does **not** determine the angular projection or radial propagation. The order of limits is

$$
\lim_{\omega\to0}\omega b
=\frac{4i}{g}\lim_{R\to0}\frac1{\mathcal K}
\lim_{\omega\to0}\omega^2a.
$$

Under $\rho'=\lambda\rho$, $(\mathcal K',C',a')=\lambda^3(\mathcal K,C,a)$ while $b$ is unchanged. Hence $C$ is a coordinate-normalization coefficient, not a new invariant horizon charge.

## Background checks, including independent metric functions

| Background | $\rho_H$, orientation | $\mathcal K/R$ | $C$ |
| --- | --- | --- | --- |
| Schwarzschild | $M/2,+$ | $1/(128M^2)$ | $1/(128M)$ |
| S-AdS | $r_S/4,+$ | $(1+3r_S^2/\ell^2)/(32r_S^2)$ | $1/(64r_S)$ |
| dS | $\ell,-$ | $1/\ell^2$ | $1/\ell$ |
| RN outer | $\sigma/2,+$ | $\sigma^3/(4r_+^5)$ | $\sigma^3/(8r_+^4)$ |
| S-dS black-hole | $r_S/4,+$ | $(1-\Lambda r_S^2)/(32r_S^2)$ | $1/(64r_S)$ |
| S-dS cosmological | $r_C,-$ | $(\Lambda r_C^2-1)/(2r_C^2)$ | $1/r_C$ |
| Bumblebee | $M/2,+$ | $1/(128M^2\sqrt{1+\mathfrak l})$ | $1/(128M)$ |
| Dirty Schwarzschild | $M/2,+$ | $e^{\psi_h}/(128M^2)$ | $1/(128M)$ |

For RN, $\sigma=\sqrt{M^2-Q_{BH}^2}>0$ and $r_+=M+\sigma$; the probe Maxwell field is independent of the background supporting field. For S-dS, $0<M<\ell/(3\sqrt3)$ and the two entries use **separately** normalized charts. For S-AdS, reflecting boundary conditions alone must be supplemented by the stated fixed auxiliary-charge sector when using the homogeneous Ward identity.

The bumblebee example has $h=(1+\mathfrak l)/f$, $f=1-2M/r$, $\mathfrak l>-1$; the probe has no direct coupling to the Lorentz-breaking vector. The dirty example has $f=e^{2\psi(r)}(1-2M/r)$ and $h=(1-2M/r)^{-1}$, so $c=e^\psi$ need not be constant. Both leave the intrinsic constraint unchanged. The table does not verify either background's gravitational field equations; they enter as supplied probe geometries.

# Yang–Mills: hard radiation and a distinct corner term

Section 4.3 uses $-\frac14F^aF^a$, with $F^a=dA^a+g_{YM}f^{abc}A^bA^c$ in component convention and $D_\mu\Phi=(\nabla_\mu-ig_{YM}A_\mu^aT^a)\Phi$. The horizon constraint is

$$
\dot E^a=-\gamma^{-1}\partial_u(\partial_zA_{\bar z}^a+\partial_{\bar z}A_z^a)
-g_{YM}J^a-g_{YM}\gamma^{-1}f^{abc}
(A_z^b\dot A_{\bar z}^c+A_{\bar z}^b\dot A_z^c).
$$

The last term supplies the hard-gluon color flux. The fixed electric endpoint data are set to zero so that residual color rotations preserve the sector. Nonlinear endpoint flatness gives a *separate* contribution:

$$
Q_s^a(w)=4\pi\Delta A_w^a+Q_{corner}^a(w),\qquad
Q_{corner}^a=-g_{YM}f^{abc}\int d^2z\,
\frac{\Delta(A_z^bA_{\bar z}^c)}{w-z}.
$$

It need not vanish at tree level. The stated theorem imposes cancellation of its outgoing-minus-incoming matrix element, as well as auxiliary-charge balance. Without that condition it stays on the right-hand side of the linear soft Ward identity. Linearizing about the trivial gauge background gives the Maxwell mode norm at $g=1$; hard $q_k$ become $g_{YM}T_k^a$ acting on each external color index. Thus the crossed factor is $2\eta g_{YM}S^a(w)$, and the local single-emission factor is $\eta g_{YM}\mathcal K S^a(w)/(4i\omega)$. $S^a$ is an operator on amplitudes, not a scalar ratio of matrix elements. No loop or nontrivial-background theorem is established.

# Translation to regional CPS and verification boundary

The source uses $\Omega(\delta_\epsilon,\delta)=\delta Q$. With the vault convention $\delta H=-\iota_X\Omega$ and the same order of arguments, $H=-Q$; align this sign before comparing charge brackets. The independent regional inputs are the endpoint electric sector, variable flat endpoint phases, antipodal branch matching, auxiliary-boundary state data, and (for Yang–Mills) a nonlinear corner matrix element. The paper supplies a useful characteristic charge benchmark; it does not construct a regional quantum state space or prove a sewing equivalence.

The derivation chain is action → characteristic constraints → surface charge plus endpoint data → symplectic generator → full-boundary Ward balance → crossed soft insertion → conditional single emission → convention-dependent local representation. Dropping any of the three endpoint/auxiliary/crossing qualifications changes the claim.

## Verification log

**Verified:** xAct and Mathematica checks described below, in source order. **Assumptions:** fixed smooth metric, nondegenerate horizon, the stated gauges and endpoint sectors, smooth smearing, $A,B>0$ at finite stretched radius, distinct angular directions for the rational contraction, and nonzero denominators. **Not verified:** existence of a global infrared-finite $\mathcal S$, soft crossing, state-to-momentum matching, radial propagation/greybody factors, nonlinear gravitational backreaction, quantum Yang–Mills corrections or regional sewing.

| Status | Target and explicit result |
| --- | --- |
| Checked | xAct `canonical_contract`: antisymmetry reduction of the Maxwell kinetic variation and the integration-by-parts identity both returned zero. This checks the bulk equation/potential sign. |
| Checked | xCoba metric setup plus explicit density divergence: radial Maxwell constraint and the horizon supplementary equation each returned residual zero for arbitrary $f(r),c(r)$. No $c'=0$ assumption. |
| Checked | Independent distributional calculation: endpoint phase difference supplies the full $i\partial\epsilon$ generator; scalar current commutator has two equal contributions after endpoint-allowed integration by parts, giving $-q\epsilon\Phi$. |
| Checked | Mathematica mode coefficient multiplication reproduces $-ig^2\operatorname{sgn}(u-u')/4$; Abel regularization gives $\int_0^\infty e^{-\varepsilon x}\sin(tx)dx/x=\arctan(t/\varepsilon)$. The positive-frequency half-weight gives the displayed soft coefficient exactly. |
| Checked | Five Mathematica nullness, transversality and momentum-contraction residuals vanish. This is a local algebraic check, not propagation of a bulk wavepacket. |
| Checked | Exact Schwarzschild/dS isotropic expressions reproduce $\mathcal K/R$; all eight table rows reproduce both $\kappa\rho_H^2/r_h^3$ and $\rho_H^3/r_h^4$; RN neutral limit and isotropic rescaling residuals vanish. |
| Checked | Nonlinear endpoint flatness rewrites the Yang–Mills pole-kernel charge as $4\pi\Delta A_w^a-g_{YM}f^{abc}\int\Delta(A_z^bA_{\bar z}^c)/(w-z)$, retaining rather than discarding the corner term. |
| Source-derived | Endpoint continuity prescription, matching conditions, interpretation of $\mathcal S$ and tree-level color action are source inputs. Their downstream conditional algebra was reconstructed; the prescription is not proved unique. |
| Blocked, recovered | Initial PDF request failed with SSL `UNEXPECTED_EOF_WHILE_READING`; retry succeeded. Initial xCoba setup emitted `CTensor::unknown` because scalar functions were undeclared; explicit `DefScalarFunction` repaired it, with both residuals zero. |
| Failed | No contradiction found in the independently tested targets. This is not a proof of all source claims. |

PDF extraction emitted a font-type warning; TeX supplied the formula text. Rendered physical PDF pages 7 and 10 visually confirmed (2.7)–(2.12) and (3.8)–(3.15), including the symplectic sign, crossing qualification and normalization dictionary. The remaining formula navigation used TeX, not an assertion that every PDF page was visually checked. Retrieval artifacts and computation tooling are outside the vault.
