---
paper id: 2610.12262v1
title: Horizon symmetries of exact hydrodynamic actions
authors:
  - Mike Blake
  - Arpit Das
  - Richard A. Davison
publication date: 2026/10/08
abstract: |-
  The authors realize horizon symmetries of AdS black holes in hydrodynamic actions for the dual stress tensor. Diffeomorphisms preserving chosen horizon boundary conditions induce symmetries of the corresponding action. They construct actions for small-amplitude perturbations of JT and AdS3 black holes, without a derivative expansion, and compare mixed and Dirichlet horizon conditions.
comments: "55 pages (including refs)"
url: https://arxiv.org/abs/2610.12262v1
summary: "Relative boundary–horizon diffeomorphisms give explicit partially on-shell JT/BTZ actions; their formal zero modes depend on horizon conditions, while generic-frequency stress correlators agree."
tags: []
---

# Result and scope

The reusable construction is an action for relative diffeomorphisms between the asymptotic boundary and a horizon, obtained by solving the radial dynamical equations and the trace constraint while leaving energy and momentum conservation off shell. Mixed horizon conditions produce the quadratic Schwarzian in JT and a non-chiral BTZ action with pointwise exponential zero modes. Dirichlet conditions produce different kernels but the same stress-tensor response functions at generic frequencies.

“Exact” means no derivative expansion **at quadratic order in perturbation amplitudes**, in these nondissipative theories. It does not mean a nonlinear action, a completed Schwinger–Keldysh prescription, or a proof that all formal kernel vectors are degeneracies of a globally defined covariant phase space.

Reason codes: `T1-boundary`, `T1-symmetry`, `T1-Wald-CPS`, `T2-model`, `T2-spectral`. Immediate use: a concrete action/constraint/boundary-condition testbed for regional gravitational phase space, with explicit separation of source transformations from horizon redundancies. [Official v1](https://arxiv.org/abs/2610.12262v1).

# Source map and how to read this long paper

| Section cluster | Contents and role | Later dependency |
|---|---|---|
| §1 Introduction | Single-exterior prescription; nondissipative exceptions; relation to chaos proposals | Scope of all correlator claims |
| §2 Horizon symmetries | Relative diffeomorphisms, mixed horizon data, preserving transformations | Horizon zero modes in §§3–4 |
| §3 JT: equilibrium, perturbations, variables, equations | JT action; radial gauge plus diffeomorphism; dynamical/constraint split | Partially on-shell family |
| §3 JT: partial solutions, UV/horizon conditions, linear/quadratic action | Four radial coefficients reduced by trace and boundary data; Schwarzian with sources | Constitutive relations and response |
| §3 JT: compact forms, constitutive relations, UV/horizon symmetries | Pullbacks, Weyl-invariant ratio, Ward identities, exponential zero modes | Comparison with Appendix E |
| §4 BTZ: perturbations through boundary conditions | Six coefficients; two relative fields; trace solved, two constraints retained | Quadratic action |
| §4 BTZ: action and compact forms | Bulk constraint pairing, UV contacts, metric pullback and Liouville form | Off-shell stress tensor |
| §4 BTZ: constitutive relations, UV/horizon symmetries, field propagators | Six stress correlators; four spatial-function zero modes; kernel inverse | Limits of chaos interpretation |
| §5 Discussion | Nonlinear completion, temporal boundary data, contour prescription and higher-dimensional extension | Open problems, not results |
| Appendix A, JT and BTZ | Variation of quadratic action; horizon bilinear; allowed variations | Variational principle modulo tangential endpoint terms |
| Appendix B | Quadratic BTZ horizon boundary term | Discarded horizon contribution in §4 |
| Appendix C, JT and BTZ | Near-horizon radial gauge calculation of actions | Simpler independent parameterization |
| Appendix D, JT and BTZ | Residual radial-gauge diffeomorphisms preserving horizon data | Geometric realization of zero modes |
| Appendix E: JT partial solutions/action/correlators/symmetries/limit | Stretched-horizon Dirichlet alternative | Explicit counterexample to boundary-condition-independent symmetry |
| Appendix E: BTZ action, contacts, constitutive relations, symmetries, horizon limit and inverse | Two-field Dirichlet kernel becoming one-field at the horizon | Same stress response, different auxiliary propagator |

Essential first pass: §2 → JT partial solution and sourced action → BTZ constraints/action → Appendix E. Technical reference: A–D and the full source contact terms. §1 and §5 provide motivation and limitations. All clusters above were read; the equations checked independently are identified below.

# Conventions and notation dictionary

Set the AdS radius to one and use Lorentzian ingoing coordinates,

$$
D(r)=r^2-r_0^2,\qquad r_0=2\pi T>0,\qquad
ds^2=-Ddt^2+2dt\,dr+r^2dx^2.
$$

Omit the last term for JT; its background dilaton is $\Phi=ar$, with $a\ne0$. Bulk indices are $M,N$ and boundary indices $\mu,\nu$. For BTZ the displayed normalization is $16\pi G=1$, hence $s=4\pi r_0$ and equilibrium energy density and pressure are both $r_0^2$. The calculation is local on the black brane; a compact spatial quotient imposes additional periodicity restrictions.

| Object | Meaning |
|---|---|
| $\delta g_{MN}$, $\delta\Phi$ | Full small bulk perturbations |
| $h_{\mu\nu}$, $\delta\phi$ | Radial-gauge representatives, before adding a diffeomorphism |
| $\zeta^M$ | Bulk diffeomorphism fields, regular at the future horizon |
| $\xi_t,\xi_x$ | Relative UV–IR diffeomorphism fields; boundary indices use $\eta_{\mu\nu}$ |
| $h=\delta g_{tt}^{(s)}$, $j=\delta g_{tx}^{(s)}$, $l=\delta g_{xx}^{(s)}$, $p=\delta\phi^{(s)}$ | Shorthand used only in this note for external sources |
| $B_{\mu\nu}$ | Linearized source pullback |
| $\mathcal B_{\mu\nu}$ | Pullback through quadratic order |
| $\mathcal E,\mathcal P,\mathcal T$ | Source's energy, momentum and trace constraints |
| $f,Z,\widetilde X$ | Horizon values of a new infinitesimal diffeomorphism |
| $r_c>r_0$, $D_c=r_c^2-r_0^2$ | Timelike stretched horizon and its lapse factor |

Use $e^{-i\omega t+ikx}$. Integration by parts below is an equivalence modulo $t,x$ boundary terms. Compact support or specified endpoint data suffices for the variational checks; an exponential shift need not preserve that domain. The source's symbol $\delta\kappa$ denotes the particular combination below; its normalization should be retained rather than identified without qualification with a separately normalized surface-gravity variation.

# Horizon data before solving the bulk

The variables are defined by radial integrals, not guessed from symmetry:

$$
\xi_t=[-\zeta^t]_{r_0}^{\infty}
=-\frac12\int_{r_0}^{\infty}\delta g_{rr}\,dr,
\qquad
\xi_x=[\zeta^x-r^{-1}\partial_x\zeta^t]_{r_0}^{\infty}
=\int_{r_0}^{\infty}\left(\frac{\delta g_{xr}}{r^2}-\frac{\partial_x\delta g_{rr}}{2r}\right)dr.
$$

Only $\xi_t$ exists in JT. The main-text horizon conditions are

$$
\delta g_{t\mu}|_{r_0}=0,\qquad
\delta\kappa\equiv
(\partial_r\delta g_{tt}-2\partial_t\delta g_{tr}+2r_0\delta g_{tr})|_{r_0}=0.
$$

There is no Gibbons–Hawking term at this horizon. A diffeomorphism trivial at infinity, with $\chi|_{r_0}=f\partial_t+Z\partial_r+\widetilde X\partial_x$, induces

$$
\Delta\delta g_{tt}=2(\partial_t-r_0)Z,\quad
\Delta\delta g_{tx}=r_0^2\partial_t\widetilde X+\partial_xZ,\quad
\Delta\delta\kappa=-2(Z+r_0\partial_tf+\partial_t^2f).
$$

These were reproduced from the xAct background connection. Setting them to zero gives

$$
f=c_0(x)+c_-(x)e^{-r_0t}+c_+(x)e^{r_0t},\qquad
Z=-2r_0^2c_+(x)e^{r_0t}.
$$

After absorbing $\partial_xc_0/r_0$ in an arbitrary function $c_x$,

$$
\Delta_H\xi_t=f,\qquad
\Delta_H\xi_x=c_x(x)+\frac{c_-'(x)}{r_0}e^{-r_0t}-\frac{c_+'(x)}{r_0}e^{r_0t}.
$$

JT has constant $c_0,c_\pm$ and no spatial field. The fields/sources in these formulas are linearized; this does not construct their full nonlinear transformation law.

# JT: radial equations and the partially on-shell family

The action and equations are

$$
S_{\rm JT}=\int\sqrt{-g}\,\Phi(R+2)+2\int_{\rm UV}\sqrt{-\gamma}\,\Phi(K-1),
\quad E_{MN}=-\nabla_M\nabla_N\Phi+g_{MN}\nabla^2\Phi-g_{MN}\Phi,
\quad E_\Phi=R+2.
$$

Write $\delta g=h^{\rm rad}+\mathcal L_\zeta g$, with $h^{\rm rad}_{tt}=-Dh_{tt}$ and other radial-gauge components zero, and $\delta\Phi=a\zeta^r+\delta\phi$. In lowered variables,

$$
\zeta^t=\zeta_r,\quad \zeta^r=\zeta_t+D\zeta_r,\quad
\delta g_{rr}=2\partial_r\zeta_r,\quad
\delta g_{tr}=D'\zeta_r+\partial_r\zeta_t+\partial_t\zeta_r,
$$

$$
\delta g_{tt}=-Dh_{tt}+2\partial_t\zeta_t-D'(\zeta_t+D\zeta_r).
$$

The dynamical equations give

$$
\partial_r^2(Dh_{tt})=0,\quad \partial_r^2\delta\phi=0,\qquad
Dh_{tt}=\alpha_1r+\alpha_2,\quad \delta\phi=\alpha_3+\alpha_4r.
$$

**Failed source signs:** with the source's own tensor and scalar definitions, $\delta E_{rr}=-\partial_r^2\delta\phi$ and $\delta E_\Phi=-\partial_r^2(Dh_{tt})$, not the plus signs printed in (3.17). Their zero equations are unaffected. Both terms on each right-hand side of (3.20)–(3.21) require reversed signs: $\partial_r\mathcal T=-a\delta E_\Phi-2(r+\partial_t)\delta E_{rr}$ and $\partial_r\mathcal E=ar\partial_t\delta E_\Phi+2(r\partial_t+r_0^2)\partial_t\delta E_{rr}$. The correctly defined constraints themselves pass the xAct check:

$$
\mathcal T=2(\delta E_{tr}+D\delta E_{rr})
=a\alpha_1-2\alpha_3+2\alpha_4',
$$

$$
\mathcal E=-2(\delta E_{tt}+D\delta E_{tr})-r\partial_t\mathcal T
=a\alpha_2'-2r_0^2\alpha_4'+2\alpha_3''.
$$

Impose $\mathcal T=0$, so $\alpha_3=a\alpha_1/2+\alpha_4'$, while leaving

$$
\mathcal E=a\alpha_1''+a\alpha_2'-2r_0^2\alpha_4'+2\alpha_4'''
$$

off shell. UV Fefferman–Graham matching fixes

$$
h=-2\zeta_r^{(-1)},\qquad
\alpha_4=p+\frac a2h-a\partial_t\zeta_t^{(2)}.
$$

Horizon data fix, with all $\zeta$ values evaluated at $r_0$,

$$
\alpha_1=-2\zeta^r-2r_0\partial_t\zeta^t-2\partial_t^2\zeta^t,\quad
\alpha_2=2\partial_t\zeta^r+2r_0^2\partial_t\zeta^t+2r_0\partial_t^2\zeta^t.
$$

Substitution cancels the separate endpoint coordinates and gives the Checked reduction

$$
Q=2p+a(h-2\partial_t\xi_t),\qquad
\mathcal E=(\partial_t^2-r_0^2)\partial_tQ.
$$

# JT: sourced Schwarzian, Ward identities and zero modes

The bulk quadratic action reduces to $-\frac12\int\xi_t\mathcal E$. The horizon boundary term becomes $-ar_0\partial_t(\delta g_{tr}^2)$ under the mixed conditions; it vanishes only after the stated treatment of endpoints. Adding the UV terms yields

$$
S^{(1)}=\int dt\left(r_0^2p+\frac{ar_0^2}{2}h\right),
$$

$$
S^{(2)}=\int dt\left[
a(\xi_t''{}^2+r_0^2\xi_t'{}^2)
2\left(p+\frac a2h\right)(\xi_t'''-r_0^2\xi_t')
\frac{3ar_0^2}{8}h^2-\frac a4h''h+\frac{r_0^2}{2}ph-ph''
\right].
$$

This is the complete sourced quadratic JT action, not just its source-free kernel. The source contact terms are needed to recover the Ward identities and the prescribed response convention. With $T^{tt}=2(-g^{(s)})^{-1/2}\delta S/\delta h$ and $\mathcal O_\phi=(-g^{(s)})^{-1/2}\delta S/\delta p$,

$$
T^{tt}_{\rm eq}=ar_0^2,\quad \mathcal O_{\phi,\rm eq}=r_0^2,
$$

$$
\delta T^{tt}=a(\partial_t^2-r_0^2)(2\xi_t'-h)+ar_0^2h+r_0^2p-2p'',\quad
\delta\mathcal O_\phi=(\partial_t^2-r_0^2)(2\xi_t'-h).
$$

Thus the trace identity holds off shell, whereas energy conservation is the $\xi_t$ equation:

$$
\delta T^{tt}-a\delta\mathcal O_\phi=ar_0^2h+r_0^2p-2p'',\qquad
\frac{\delta S}{\delta\xi_t}=-\mathcal E
=\partial_t\delta T^{tt}-ar_0^2h'+r_0^2p'.
$$

At $\omega\ne0,\pm ir_0$,

$$
\xi_t(\omega)=\frac{i(ah+2p)}{2a\omega},\quad
G_{TT}=ar_0^2,\quad G_{T\mathcal O}=G_{\mathcal OT}=-r_0^2,\quad
G_{\mathcal O\mathcal O}=-\frac2a(\omega^2+r_0^2).
$$

Here responses differentiate **densitized** expectation values, e.g. $G_{TT}=2\delta(\sqrt{-g^{(s)}}T^{tt})/\delta h$. They are contact terms in real time. Real-axis pole prescriptions and the symmetric correlator require more than these generic-frequency formulas.

For the compact representation define $y=t+\xi_t$, $\mathcal G_{tt}=y'^2g_{tt}^{(s)}(y)$, $\Psi=\phi^{(s)}(y)$ and

$$
\mathcal B=h-2\xi_t'+\xi_th'+2h\xi_t'-\xi_t'{}^2,\quad
\varphi=p+\xi_tp',\quad \sigma=\frac{\Psi}{\sqrt{-\mathcal G_{tt}}}.
$$

Then, through quadratic order,

$$
S=\int dt\left(r_0^2\sigma-\frac1a\sigma\partial_t^2\sigma+\frac1a\Psi\partial_t^2\Psi\right).
$$

$\sigma$ is Weyl invariant for $g^{(s)}\mapsto e^{-2\Omega}g^{(s)}$, $\phi^{(s)}\mapsto e^{-\Omega}\phi^{(s)}$; the final term supplies the matter anomaly. UV diffeomorphisms transform sources and fields to preserve pullbacks. Horizon shifts hold sources fixed and change the pullbacks. These are different operations.

For $f=c_0+c_-e^{-r_0t}+c_+e^{r_0t}$, $(\partial_t^2-r_0^2)f'=0$, so both constitutive relations are unchanged. The additional solution $\xi_t=c_1t$ of the fourth-order source-free equation changes the energy and is not a horizon redundancy. Invariance of the integrated action under $f$ remains modulo its endpoint term; the source explicitly acknowledges this qualification in footnote 20.

# BTZ: dynamical equations, constraints and boundary matching

The bulk action is $\int\sqrt{-g}(R+2)$. Use the outward normal and $K=\gamma^{MN}\nabla_Mn_N$ at the UV boundary. Then the renormalizing boundary term is $2\int\sqrt{-\gamma}(K-1)$.

**Failed source normalization:** (4.1) prints $(K+1)$. xAct gives $K=(2r^2-r_0^2)/(r\sqrt D)$; the on-shell bulk plus this printed UV term diverges as $4r_\Lambda^2$ per coordinate $dt\,dx$. Replacing $+1$ by $-1$ cancels the divergence and leaves $r_0^2$ in the limit. Thus the printed action is not renormalized under the convention fixed here. The downstream finite hydrodynamic action is checked as a separate explicit object below; the complete general-gauge EH/GH expansion was not independently reproduced.

The radial-gauge representative has components $h^{\rm rad}_{tt}=-Dh_{tt}$, $h^{\rm rad}_{tx}=r^2h_{tx}$, $h^{\rm rad}_{xx}=r^2h_{xx}$, with $\delta g=h^{\rm rad}+\mathcal L_\zeta g$ and $\zeta^x=\zeta_x/r^2$. The xAct-derived dynamical equations are

$$
\delta E_{rr}=-\frac1{2r^2}\partial_r(r^2\partial_rh_{xx}),\quad
\delta E_{rx}=\frac1{2r}\partial_r(r^3\partial_rh_{tx}),\quad
\delta E_{xx}=\frac{r^2}{2}\partial_r^2(Dh_{tt}).
$$

Their general radial solution is

$$
Dh_{tt}=\alpha_1r+\alpha_2,\qquad
h_{xx}=\alpha_3+\frac{\alpha_4}{r},\qquad
h_{tx}=\alpha_5+\frac{\alpha_6}{r^2}.
$$

The constraint definitions are

$$
\mathcal T=2r(\delta E_{tr}+D\delta E_{rr}),\quad
\mathcal P=2r(\delta E_{tx}+D\delta E_{rx}),\quad
\mathcal E=-2r(\delta E_{tt}+D\delta E_{tr})+r^{-1}\partial_x\mathcal P-r\partial_t\mathcal T.
$$

They reduce to

$$
\mathcal T=\alpha_1-\alpha_4+\partial_t\alpha_3-2\partial_x\alpha_5,\quad
\mathcal P=2\partial_t\alpha_6+\partial_x\alpha_2,
$$

$$
\mathcal E=\partial_t(\alpha_2-r_0^2\alpha_3+\partial_t\alpha_4)
+\partial_x(2r_0^2\alpha_5+2\alpha_6-\partial_x\alpha_1).
$$

Set $\mathcal T=0$ to eliminate $\alpha_4$. UV matching gives

$$
h=-2\zeta_r^{(-1)},\quad
j=\alpha_5+\partial_t\zeta_x^{(2)}+\partial_x\zeta_t^{(2)},\quad
l=\alpha_3-h+2\partial_t\zeta_t^{(2)}+2\partial_x\zeta_x^{(2)}.
$$

Mixed horizon data fix $\alpha_1,\alpha_2$ exactly as in JT and

$$
\alpha_6=-r_0^2\alpha_5-r_0^2\partial_t\zeta^x|_{r_0}-\partial_x\zeta^r|_{r_0}.
$$

Define

$$
B_{tt}=h-2\partial_t\xi_t,\quad B_{xx}=l-2\partial_x\xi_x,\quad
B_{tx}=j-\partial_t\xi_x-\partial_x\xi_t.
$$

Exact substitution of the coefficients yields

$$
\mathcal P=-2r_0^2\partial_tB_{tx},\qquad
\mathcal E=\partial_t\left[(\partial_t^2-r_0^2)(B_{tt}+B_{xx})-2\partial_t\partial_xB_{tx}\right].
$$

The bulk action is $-\frac12\int(\xi_t\mathcal E+\xi_x\mathcal P)$. In the intermediate formula (4.28), the source prints $-2r\delta E_{tx}h_{tx}$; the metric inverse and direct contraction give **$-2r\delta E_{rx}h_{tx}$**. Only the latter vanishes under the declared partial equations. This is a checked index error, not an extra imposition of the momentum constraint.

# BTZ: complete quadratic action and stress tensor

Writing $u=\xi_t$, $v=\xi_x$ temporarily, the action is

$$
S^{(1)}=\frac{r_0^2}{2}\int dtdx\,(h+l),
$$

$$
\begin{aligned}
S^{(2)}=\int dtdx\,[&u(\partial_t^2-\partial_x^2-r_0^2)\partial_t^2u
-r_0^2v\partial_t^2v-2r_0^2u\partial_t\partial_xv\\
&+(h+l)(\partial_t^2-r_0^2)\partial_tu
-2j\partial_t(r_0^2v+\partial_t\partial_xu)+\mathcal L_s],
\end{aligned}
$$

$$
\mathcal L_s=\frac{r_0^2}{2}j^2-\frac{r_0^2}{8}l^2+\frac{3r_0^2}{8}h^2
+\frac{r_0^2}{4}hl-\frac14h(\partial_t^2+\partial_x^2)h
-\partial_xj\partial_th-\frac12h\partial_t^2l.
$$

This is (4.33)–(4.35), including contacts. Mathematica variation gives $\delta S/\delta u=-\mathcal E$, $\delta S/\delta v=-\mathcal P$ and

$$
\begin{aligned}
\delta T^{tt}&=2(\partial_t^2-r_0^2)\partial_tu
+(2r_0^2-\partial_t^2-\partial_x^2)h-\partial_t^2l+2\partial_t\partial_xj,\\
\delta T^{xx}&=2(\partial_t^2-r_0^2)\partial_tu
+(r_0^2-\partial_t^2)h-r_0^2l,\\
\delta T^{tx}&=-2r_0^2\partial_tv-2\partial_x\partial_t^2u+r_0^2j+\partial_x\partial_th.
\end{aligned}
$$

The off-diagonal source is symmetric: varying the single variable $j$ gives $T^{tx}$, whereas varying $h,l$ includes a factor two. Also retain $\sqrt{-g^{(s)}}=1+(l-h)/2$; dropping this density factor changes contact terms.

The checked off-shell trace and dynamical Ward identities are

$$
-\delta T^{tt}+\delta T^{xx}+r_0^2(h+l)
=\partial_x^2h+\partial_t^2l-2\partial_t\partial_xj=\delta R[g^{(s)}],
$$

$$
\frac{\delta S}{\delta u}=\partial_t[\delta T^{tt}+r_0^2(l-h)]+\partial_x(\delta T^{tx}-r_0^2j),
$$

$$
\frac{\delta S}{\delta v}=\partial_t(\delta T^{tx}+r_0^2j)+\partial_x[\delta T^{xx}+r_0^2(l-h)].
$$

For $\omega\ne0$, $\omega^2\ne-r_0^2,k^2$,

$$
u=\frac{i[\omega(h+l)+2kj]}{2(\omega^2-k^2)},\qquad
v=\frac{i[k(h+l)+2\omega j]}{2(\omega^2-k^2)}.
$$

Let $G_{AB}=2\delta(\sqrt{-g^{(s)}}T^A)/\delta g_B^{(s)}$, with the symmetric-source convention just stated. All nine entries of the symmetric $3\times3$ response matrix were checked; its six independent entries are

$$
\begin{aligned}
G_{tt,tt}&=\frac{2k^2(k^2+r_0^2)}{k^2-\omega^2}+r_0^2,&
G_{tx,tx}&=\frac{2\omega^2(k^2+r_0^2)}{k^2-\omega^2}+r_0^2,\\
G_{xx,xx}&=\frac{2k^2(\omega^2+r_0^2)}{k^2-\omega^2}-2\omega^2-3r_0^2,&
G_{tt,tx}&=\frac{2\omega k(k^2+r_0^2)}{k^2-\omega^2},\\
G_{tt,xx}&=\frac{2\omega^2(k^2+r_0^2)}{k^2-\omega^2}+r_0^2,&
G_{tx,xx}&=\frac{2\omega k(\omega^2+r_0^2)}{k^2-\omega^2}.
\end{aligned}
$$

These reproduce the source's convention, including its local terms; alternative correlator definitions can differ by contacts. Generic-frequency agreement does not select an $i\epsilon$ prescription or define the zero-frequency sector.

# BTZ: pullback geometry, anomaly and kernel

For $y^\mu=x^\mu-\xi^\mu$,

$$
\mathcal G_{\mu\nu}=\partial_\mu y^\alpha\partial_\nu y^\beta g^{(s)}_{\alpha\beta}(y),\qquad
\mathcal B_{\mu\nu}=\mathcal G_{\mu\nu}-\eta_{\mu\nu}.
$$

Through second order,

$$
\mathcal B_{\mu\nu}=B_{\mu\nu}-\xi^\rho\partial_\rho\delta g^{(s)}_{\mu\nu}
-\delta g^{(s)}_{\rho\nu}\partial_\mu\xi^\rho
-\delta g^{(s)}_{\mu\rho}\partial_\nu\xi^\rho
+\partial_\mu\xi^\alpha\partial_\nu\xi_\alpha.
$$

The action becomes $\frac{r_0^2}{2}\int(\mathcal B_{tt}+\mathcal B_{xx})+\int\mathcal L_s[\mathcal B]$. Euler variations of this expansion and the explicit action agree for all five fields/sources. With $\Psi=\log(-\mathcal G_{tt})$, $\widetilde{\mathcal G}=e^{-\Psi}\mathcal G$, it can also be written

$$
S=\frac12\int d^2x\sqrt{-\widetilde{\mathcal G}}
\left[2r_0^2+\frac12\widetilde{\mathcal G}^{\mu\nu}\partial_\mu\Psi\partial_\nu\Psi
+\Psi R[\widetilde{\mathcal G}]\right]+O(\text{amplitude}^3).
$$

The pressure term is Weyl invariant; the other two terms produce the trace anomaly. The derivative-sector expansion was checked modulo integration by parts. The non-chiral structure follows from this diffeomorphism-preserving choice of contacts; a chiral Virasoro action requires a separate convention/counterterm translation.

The source-free Fourier kernel is

$$
K=\begin{pmatrix}
\omega^2(\omega^2+r_0^2-k^2)&-r_0^2\omega k\\
-r_0^2\omega k&r_0^2\omega^2
\end{pmatrix},\qquad
\det K=r_0^2\omega^2(\omega^2+r_0^2)(\omega^2-k^2).
$$

Its checked inverse has entries

$$
(K^{-1})_{tt}=\frac1{(\omega^2+r_0^2)(\omega^2-k^2)},\quad
(K^{-1})_{tx}=\frac{k}{\omega(\omega^2+r_0^2)(\omega^2-k^2)},
$$

$$
(K^{-1})_{xx}=\frac{\omega^2+r_0^2-k^2}{r_0^2(\omega^2+r_0^2)(\omega^2-k^2)}.
$$

These are the matrix inverses called propagators in (4.63). A path-integral covariance additionally depends on whether the action is normalized as $\xi K\xi$ or $\frac12\xi K\xi$, on Lorentzian factors, gauge fixing and contour data; those were not supplied here as an independent quantization prescription.

At $\omega=\pm ir_0$, the null relation is $v=\mp ik,u/r_0$, precisely the exponential horizon shifts. Inserting their arbitrary spatial profiles into all stress components gives zero. Light-cone solutions at $\omega=\pm k$ can instead carry stress. The source relates the exponential pole to $e^{r_0(t-|x|)}$ in suitable Fourier contours and OTOCs. The present calculation checks the pole structure, not the complete operator coupling or an OTOC normalization.

# Appendices A–D: variation, horizon boundary terms and radial gauge

Appendix A supplies the boundary bilinear in two independent perturbations $(\delta g,\delta\Phi)$ and $(\delta\chi,\delta\Psi)$. In JT, both obeying $\delta g_{tt}=\delta\chi_{tt}=0$ and their respective $\delta\kappa=0$ removes the horizon variation modulo time derivatives. In BTZ the displayed bilinear consists of factors of $\delta g_{tt}$, $\delta g_{tx}$, $\delta\kappa$ or their varied counterparts and tangential derivatives. Setting these horizon functions to zero eliminates the terms; their radial derivatives are not separately set to zero in a generic gauge.

Consequently the remaining variation is

$$
\delta S_{\rm partial}=-\int(\delta\xi_t\,\mathcal E+\delta\xi_x\,\mathcal P),
$$

with the momentum term absent in JT. This is the precise reason the hydrodynamic EOM restore the missing constraints. It is stronger than merely observing that a field transforms like a diffeomorphism.

Appendix B gives a BTZ horizon action representative involving the same vanishing data, modulo tangential derivatives. Its written expression and subsequent total-derivative representative should be used modulo those derivatives, not as a pointwise equality: the displayed first representative vanishes directly after the conditions. No finite-interval corner term was reconstructed from these representatives.

Appendix C chooses near-horizon radial gauge,

$$
\zeta_r=T,\quad \zeta_t=-DT-r\partial_tT+R,\quad
\zeta_x=r^2X+r\partial_xT,
$$

up to terms vanishing quadratically at $r_0$. Here $T,R,X$ are functions, not temperature or scalar curvature. Then $\delta g_{rM}|_{r_0}=0$ and the conditions reduce to $\delta g_{tt}=\partial_r\delta g_{tt}=\delta g_{tx}=0$. They fix

$$
\alpha_1=-2R-2\partial_t^2T,\quad
\alpha_2=2r_0^2\partial_tT+2\partial_tR,\quad
\alpha_6=-r_0^2\alpha_5-\partial_xR-r_0^2\partial_tX.
$$

The relative fields become $\xi_t=\zeta_t^{(2)}+T$ and $\xi_x=\zeta_x^{(2)}-X$. Appendix D preserves this radial gauge and the horizon data with

$$
\delta T=b_0+b_+e^{r_0t}+b_-e^{-r_0t},\quad
\delta R=-r_0^2(b_+e^{r_0t}+b_-e^{-r_0t}),
$$

$$
\delta X=c_0+\frac{b_+'}{r_0}e^{r_0t}-\frac{b_-'}{r_0}e^{-r_0t}.
$$

Substitution into the generic horizon solution gives the same zero modes, with $\delta_H\xi_t=\delta T$, $\delta_H\xi_x=-\delta X$. Thus fixing radial gauge does not remove the relative endpoint field. The generic-gauge coefficient reduction was machine-checked; the full off-shell boundary bilinear is Source-derived.

# Appendix E: Dirichlet horizon data change the action

## JT at a stretched horizon

Include a GH term, without a counterterm, at $r=r_c>r_0$, with outward normal pointing toward decreasing $r$. Fix both $\delta g_{tt}(r_c)=0$ and $\delta\Phi(r_c)=0$, and redefine $\xi_t=[-\zeta^t]_{r_c}^{\infty}$. The coefficient solution now replaces the differential operator in the remaining constraint:

$$
\mathcal E_{\rm Dir}=D_c\partial_tQ,\qquad Q=2p+a(h-2\xi_t').
$$

The quadratic action is

$$
S_{\rm Dir}^{(2)}=\int dt\left[
\frac{ar_0^2}{8}h^2-\frac{r_0^2}{2}ph
+\frac1a p(\partial_t^2-r_0^2)p-\frac{D_c}{4a}Q^2\right].
$$

The mixed action has the same first three terms but last term $-Q(\partial_t^2-r_0^2)Q/(4a)$, modulo integration by parts. In zero sources the Dirichlet action is $-aD_c\int\xi_t'{}^2$, hence it is second order in time rather than fourth order. Its equation is $-D_c\partial_tQ=0$. At nonzero frequency it fixes the same $\xi_t$ and the same three responses as above.

The constitutive relations are

$$
\delta T^{tt}_{\rm Dir}=ar_0^2h-r_0^2p-D_cQ,\qquad
\delta\mathcal O_{\phi,\rm Dir}=\frac2a(\partial_t^2-r_0^2)p-\frac{D_c}{a}Q.
$$

Preserving the fixed dilaton forces $Z_c=0$; preserving the metric then forces $D_c\partial_tf_c=0$. Thus for $D_c>0$ only constant time shifts remain. At $D_c=0$, $\xi_t$ drops out altogether and the source-only action already generates the responses: the bulk family has become fully on shell. This is a rank-changing limit, not a smooth equivalence of off-shell phase spaces.

## BTZ Dirichlet action, contacts and response

Fix all three induced metric components at $r_c$ and set

$$
q_c=\partial_x\xi_t-r_c\xi_x,\qquad \Box=\partial_t^2-\partial_x^2.
$$

The source-free action and source couplings are

$$
S_{\rm Dir,0}^{(2)}=\int dtdx\,[D_c\xi_t\Box\xi_t-q_c\Box q_c],
$$

$$
\Delta\mathcal L_{\rm Dir}=(h+l)[D_c\partial_t\xi_t+(\partial_t-r_c)\partial_xq_c]
+2j[(r_c\partial_t-\partial_x^2)q_c-D_c\partial_x\xi_t]+\mathcal L_{s,\rm Dir},
$$

$$
\begin{aligned}
\mathcal L_{s,\rm Dir}={}&\frac{3r_0^2-2r_c^2}{8}h^2
-\frac{r_0^2+2r_c^2}{8}l^2+\frac{r_0^2-2r_c^2}{4}hl
+\frac{2r_c^2-r_0^2}{2}j^2\\
&-\frac14h\partial_x^2h+\frac14l\partial_t^2l+j\partial_x^2j
+r_ch\partial_xj+l(r_c-\partial_t)\partial_xj.
\end{aligned}
$$

The linear action is unchanged. Varying this entire action, solving both generic-frequency field equations, and differentiating the densitized stress tensor gives **the same full response matrix**, including contacts, as the mixed action. This equivalence was checked directly, rather than inferred solely from shared symmetries. It assumes $D_c\ne0$ and $\omega^2\ne k^2$ in the elimination.

The preserving transformations at $r_c$ are

$$
\widetilde X_c=F(x+t)+G(x-t),\quad
Z_c=-r_c[F'(x+t)+G'(x-t)],
$$

$$
f_c=f_0+\frac{r_c^2}{D_c}[F(x+t)-G(x-t)]
-\frac{r_c}{D_c}[F'(x+t)+G'(x-t)].
$$

They induce $\delta_H\xi_t=f_c$, $\delta_H\xi_x=-\widetilde X_c+\partial_xf_c/r_c$. All three induced-metric variations vanish, and their stress response vanishes; both statements were checked for arbitrary $F,G$. They differ from the main-text pointwise exponential shifts.

The Fourier kernel and determinant are

$$
K_{\rm Dir}=(\omega^2-k^2)
\begin{pmatrix}k^2-D_c&ir_ck\\-ir_ck&r_c^2\end{pmatrix},\qquad
\det K_{\rm Dir}=-D_cr_c^2(\omega^2-k^2)^2.
$$

Its inverse agrees with (E.35): $tt=-1/[D_c(\omega^2-k^2)]$, $xx=(D_c-k^2)/[r_c^2D_c(\omega^2-k^2)]$, and $tx=-xt=ik/[r_cD_c(\omega^2-k^2)]$.

At $r_c=r_0$ the action depends only on $q_c$; the constraint combination $r_0\mathcal E-\partial_x\mathcal P$ vanishes identically. The surviving horizon transformations have

$$
\widetilde X_c=Ae^{r_0(t+x)}+Be^{r_0(t-x)}+C,\quad
Z_c=-r_0^2Ae^{r_0(t+x)}+r_0^2Be^{r_0(t-x)},\quad f_c=f(t,x).
$$

Now $\delta_Hq_c=r_0\widetilde X_c$. Unlike the mixed case, the spatial exponential profile is fixed. A spatial circle can exclude these nonperiodic profiles, so the brane statement cannot be transferred to global BTZ without checking the quotient.

# Equation ledger and derivation map

| Stage | Input → output | Evidence boundary |
|---|---|---|
| JT (3.3), (3.17)–(3.25) | Metric/dilaton equations → affine radial family and conserved constraints | xAct constraints pass; printed $E_{rr}$ and $E_\Phi$ signs fail |
| Mixed horizon matching | UV sources plus horizon data → $Q$ and $B_{\mu\nu}$ constraints | Exact coefficient substitution Checked |
| JT sourced action | Bulk constraint pairing + source boundary terms → Schwarzian/contacts | Final variation and pullback expansion Checked |
| BTZ (4.11)–(4.25) | Linear Einstein tensor → six coefficients → two remaining constraints | xAct components and coefficient substitution Checked |
| BTZ (4.28)–(4.34) | Partial bulk pairing + UV contacts → hydrodynamic action | Correct $E_{rx}$ contraction Checked; full UV expansion Source-derived |
| (4.46)–(4.52) | Action → constitutive relations → Ward identities → response | Euler derivatives, field elimination and nine matrix entries Checked |
| (4.59)–(4.63) | Preserving horizon diffeomorphisms → zero stress/kernel vectors | Local shifts, determinant and inverse Checked; global action domain unresolved |
| A–D | Variational data → admissible mixed boundary conditions and residual gauge forms | Source-derived boundary bilinear; local substitutions Checked |
| E, especially (E.22)–(E.35) | Dirichlet data → different kernel → same physical response | Full displayed source action eliminated algebraically; generic-frequency equivalence Checked |

The logical chain is radial equations → trace constraint → boundary matching → action → constitutive relations → remaining constraints → physical response. Horizon symmetry is determined by preserving the chosen boundary data and only then compared with the action kernel. The same response does not imply equal off-shell action, symplectic form, auxiliary propagator or horizon symmetry group.

# Translation to the vault's CPS and regional questions

The most useful object is $\delta S_{\rm partial}=-\int\delta\xi_\mu\,\mathcal C^\mu$: it identifies the still-unimposed constraints as the variational equations of relative endpoint fields. It provides a small model for checking a proposed regional action before choosing a quotient of boundary variables.

For a CPS application, one must still construct $\Theta$, its corner improvements and the integrated $\Omega$ on the declared temporal/spatial domain. Vanishing linear stress response and a formal action-kernel vector do not by themselves prove $\iota_{\delta_H}\Omega=0$. In particular the exponential transformations change endpoint data unless the domain or compensating boundary term is specified. The paper does not compute the associated surface-charge algebra or its central extension.

For AdS quantization, the BTZ kernels provide explicit constraints and gauge candidates. They are thermal black-brane boundary kernels, not the global AdS bulk-mode Gram matrix or the interacting two-particle energy-shift operator. Restoring $16\pi G$, the AdS radius, spatial periodicity and source contact conventions is required before importing them. The Dirichlet comparison is a warning that agreement of two-point functions alone cannot fix an off-shell gravitational quantization scheme.

# Verification log and remaining boundaries

- **Checked — geometry:** xAct/xCoba returned $R=-2$ in JT and $R=-6$ in BTZ; background-connection linearization reproduced the JT constraint tensors, all three BTZ radial dynamical equations, all three explicit BTZ constraints, and the three generic horizon Lie-derivative conditions. The mixed BTZ radial-gauge contraction selects $E_{rx}$.
- **Checked — coefficient reduction:** Mathematica returned zero residuals for the JT mixed and Dirichlet energy constraints and both BTZ mixed constraints after substituting UV/horizon coefficients. The corrected JT radial trace and energy identities also vanish.
- **Checked — variational chain:** JT sourced action EOM and both one-point functions; BTZ two EOM, three one-point functions and three Ward identities; JT and BTZ pullback-action Euler differences; BTZ quadratic Liouville derivative reduction; JT Dirichlet EOM. These are local identities modulo integration by parts.
- **Checked — response and kernels:** all nine entries of the BTZ response matrix; mixed/Dirichlet on-shell densitized-stress equivalence; mixed horizon stress cancellation; Dirichlet induced-metric and stress cancellation for arbitrary $F,G$; both determinants and matrix inverses. Generic denominators are excluded before inversion.
- **Checked — boundary normalization:** outward-normal BTZ $K$ and the leading UV divergence; JT mixed horizon boundary expression reduces to $-ar_0\partial_t(\delta g_{tr}^2)$.
- **Failed — source (3.17), (3.20), (3.21):** $\delta E_{rr}=-\partial_r^2\delta\phi$ and $\delta E_\Phi=-\partial_r^2(Dh_{tt})$ under the stated definitions. Both terms on each right-hand side of the radial identities must be reversed. The partially on-shell zero conditions and explicit constraint formulas remain valid.
- **Failed — source (4.28):** replace $E_{tx}$ by $E_{rx}$ in the radial-gauge bulk contraction. Imposing $E_{tx}=0$ at that stage would incorrectly solve a constraint meant to remain off shell.
- **Failed under the declared outward-normal convention — source (4.1):** $K+1$ does not renormalize the UV action; $K-1$ cancels the checked divergence. This note does not silently use the printed sign to justify the later finite action.
- **Source-derived:** full generic-gauge EH/GH boundary expansion, Appendix A's complete bilinear and the chosen contact scheme, source interpretation of the kernels as hydrodynamic propagators, and their proposed OTOC use. Algebraic checks of their consequences are narrower than independently deriving the entire boundary functional.
- **Blocked — global symmetry/quantization upgrade:** the paper leaves the temporal domain, endpoint/corner completion and action-level $i\epsilon$/full-contour prescription unspecified. These are exact missing inputs for proving integrated-action gauge invariance under growing modes, a complete symmetric correlator, or a normalized OTOC. No retrieval or CAS-service blocker remains.
- **Not independently verified:** nonlinear completion; a full CPS charge algebra; interacting or higher-dimensional dissipative generalization; compact-quotient admissibility; direct one-field $D_c=0$ response elimination distinct from the generic $D_c\ne0$ calculation.

**Verified:** the local quadratic action/constraint/response chain and stated normalization defects. **Assumptions:** radius one, $r_0>0$, $a\ne0$, linear perturbations, regular future-horizon diffeomorphisms, chosen source contacts, generic frequencies for inversion, and boundary conditions permitting the integrations by parts used. **Not verified:** a global gauge quotient or a nonlinear, contour-complete hydrodynamic/CPS theory.

Official PDF and TeX were available. Text extraction was used for navigation; PDF pages 10, 21, 27, 34, 50 and 51 were rendered and visually checked for the disputed signs/indices, kernels, Dirichlet transformations and labels. A font-type warning did not prevent comparison with the TeX. An initial JT checking script had an accidental matrix-valued Hessian entry; the corrected scalar-component script produced the residuals reported above. Retrieval, renders and machine logs remain outside the vault.
