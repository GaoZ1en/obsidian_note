---
paper id: 2611.07019v1
title: "Charged AdS3 black branes as marginally deformed two-dimensional CFTs"
authors:
  - "Suting Zhao"
  - "Gabriel Arenas-Henriquez"
  - "Yizhou Lu"
  - "Hamed Adami"
  - "René Meyer"
publication date: 2026-11-04T19:00:04
abstract: "We study how boundary correlation functions encode the charge dependence of the renormalised Euclidean action of an AdS$_3$ black brane. In three-dimensional Einstein-Maxwell theory, the Maxwell field has logarithmic asymptotics and is locally dual to a massless pseudoscalar. In the canonical ensemble, the charge density fixes the slope of a spatially linear source for the dual marginal operator. At fixed temperature, the classical action is even in the charge density due to reflection symmetry $\\Phi\\to-\\Phi$, and its charge expansion coefficients are governed by Catalan numbers. We compute the quadratic and quartic terms from connected correlation functions around the neutral brane. The scalar two-point function and the shift symmetry of its source determine the matter Weyl anomaly, which fixes the logarithmic temperature dependence of the quadratic term in the charge expansion. At quartic order, the connected four-point function comes from tree-level graviton exchange. Integrating it against the linear source, with an infrared cutoff on the overall scale of the integral, reproduces the quartic coefficient of the action per unit length. At each higher order, the corresponding Catalan coefficient predicts the integrated sum of all connected tree-level Witten diagrams."
comments: "41 pages, 4 appendices"
url: https://arxiv.org/abs/2611.07019v1
summary: "Canonical Maxwell-scalar boundary data, endpoint charge response and a regulator-explicit classical quadratic/quartic reconstruction of the charged-brane action."
tags: []
---

# Result and Reading Guide

**Correct under the following precise conditions:** the canonical classical saddle and its small-charge expansion agree with the reconstructed quadratic and quartic terms in the paper's reference counterterm scheme and prescribed analytic source pairing. This is a bulk holographic consistency calculation. It does not identify a microscopic CFT, establish quantum Maxwell–scalar duality, or prove equivalence to every finite-box definition of the unbounded source functional.

Immediate use: keep the ensemble, logarithmic source/response split and spatial endpoint variation explicit when comparing AdS₃ Maxwell quantization with a scalar description. The reusable objects are the regulated Legendre term, the renormalised source one-form, the endpoint response to a slope variation, and the explicit integrated four-point target. Reasons: `T1-boundary; T1-Wald-CPS; T1-charge; T2-model; T2-spectral; T2-dS-BH-holography`.

This is **monograph mode**: 41 PDF pages including front matter/references, five main sections and four appendices. Essential first pass: section 2.1–2.3, 3 and Appendix B. Read section 4.1–4.2 with Appendix C for the regulator-dependent quadratic result. The most technical cluster is section 4.3 with Appendix D; its shadow normalizations and analytic-continuation prescription are necessary for the quartic numerical coefficient. Section 1 supplies motivation; section 2.4 and section 5 delimit the boundary-condition, global-duality and CFT claims.

## Complete Section Tree and Dependencies

Page numbers below are the paper's printed pages; PDF page = printed page + 2 for the main text.

| Section/cluster | Purpose, important input and later dependency |
|---|---|
| 1 Introduction, pp. 1–3 | Canonical Maxwell saddle as a generating functional; marginal source, not a specified microscopic model |
| 2 Einstein–Maxwell theory in AdS₃, pp. 3–12 | Euclidean action, local duality and Einstein–scalar equations |
| 2.1 Variational principle, pp. 5–8 | Fixed flux, first-order action, induced orientation, absent/present edge terms; required before all thermodynamics |
| 2.2 Asymptotic expansion, pp. 8–9 | FG logarithms, finite radial data, trace/divergence constraints |
| 2.3 Renormalised action and one-point functions, pp. 9–10 | Counterterms, reference scheme and response convention |
| 2.4 Further comments, pp. 10–12 | Logarithmic Maxwell data; fixed-flux versus conformal phase spaces; shift identity; finite counterterms |
| 3 Charged black brane, pp. 12–16 | Homogeneous solution and canonical quantum statistical relation |
| 3.1 Charged black brane action, pp. 13–15 | $f,A_\tau,\Phi$, temperature, FG matching, stress tensor and cutoff cancellation |
| 3.2 Semi-classical regime, pp. 15–16 | Finite backreaction at large $c$, horizon root and Catalan series |
| 4 Perturbative reconstruction, pp. 16–25 | Connected cumulants around the neutral brane, cylinder/plane map and reflection symmetry |
| 4.1 Weyl anomaly and induced action, pp. 17–20 | Scalar two-point normalization plus shift-preserving contact prescription fixes the quadratic matter anomaly |
| 4.2 Quadratic order, pp. 20–21 | Annular source, both ends retained; Appendix C fixes the finite plane pairing |
| 4.3 Quartic order, pp. 21–25 | Shadow convention, full spin-two plus trace exchange, analytically continued pair vertices and common-scale cutoff |
| 5 Discussions and outlook, pp. 25–28 | Integrated charges, concrete CFT, sixth order, alternate ensembles, logarithmic mixing, near-extremal resummation and integrability remain future work |
| A Details of holographic renormalisation, pp. 29–31 | A.1 radial coefficients/constraints; A.2 cancellation of on-shell divergences; A.3 canonical momenta and Ward identities |
| B Charge variation and spatial endpoints, pp. 31–32 | Why $\psi=0$ locally does not imply $\partial_q I=0$; exact finite-length endpoint response |
| C Quadratic kernel and annular source pairing, pp. 32–33 | Bessel/Fourier contact extension and logarithmic harmonic profile with ordered cutoffs |
| D Shadow normalisations and quartic vertices, pp. 34–36 | Exchange coupling, complex beta/OPE coefficients, normalized block conversion, stress pole and double-Laplacian source vertex |
| References, pp. 36–39 | In particular Costa–Gonçalves–Penedones, arXiv:1404.5625, supplies the general graviton-exchange coefficients |

The entire pinned [official v1](https://arxiv.org/abs/2611.07019v1) PDF and TeX were inspected in these sequential clusters. PDF pages 8, 26 and 35 were rendered and visually checked for the first-order action, quartic spectral formula and annular prescription. The cited general exchange formula was also inspected directly in the official source of [Spinning AdS Propagators](https://arxiv.org/abs/1404.5625), section 6.2, TeX label `b2ofnu` and the following spin-zero expression. That targeted reference inspection is not a separate literature treatment.

# Theory, Conventions and the Canonical Boundary Problem

Use Euclidean signature, $\Lambda=-\ell^{-2}$, $\kappa^2=8\pi G_3$, $e>0$ and $c=12\pi\ell/\kappa^2$. A real Lorentzian electric field has an imaginary Euclidean electric potential. At finite FG cutoff $z=\varepsilon$, retain $\mathcal M_\varepsilon$ with outward normal towards decreasing $z$ and fixed boundary embedding. Initially the cutoff boundary has no edges; for noncompact tangential directions the **local variation** uses compactly supported variations. This restriction is insufficient for a variation of the unbounded linear-source slope; Appendix B supplies that separate calculation.

The canonical action is

$$\begin{align}
I_{\rm E}=-\frac1{2\kappa^2}\int\sqrt g(R+2/\ell^2) +\frac1{4e^2}\int\sqrt g F_{\mu\nu}F^{\mu\nu} -\frac1{\kappa^2}\int_{\Sigma_\varepsilon}\sqrt{\mathrm g}K -\int_{\Sigma_\varepsilon}A_a\Pi^a+I_{\rm ct}, \qquad \Pi^a=\frac{\sqrt{\mathrm g}}{e^2}n_\mu F^{\mu a}.
\end{align}$$

The Maxwell bulk variation is $\int\Pi^a\delta A_a$; the Legendre term changes it to $-\int A_a\delta\Pi^a$. The ensemble fixes the **local electric momentum density**, not merely the integrated charge. The bulk equations and their trace are

$$\begin{align}
G_{\mu\nu}-\ell^{-2}g_{\mu\nu} =\frac{\kappa^2}{e^2}\left(F_{\mu\rho}F_\nu{}^\rho-\frac14g_{\mu\nu}F^2\right), \qquad \nabla_\mu F^{\mu\nu}=0, \qquad R=-6/\ell^2-\frac{\kappa^2}{2e^2}F^2.
\end{align}$$

## First-Order Duality and the Boundary Term

With bulk orientation $dz\wedge d\tau\wedge dx>0$ and $*^2=1$ on one- and two-forms, introduce independent $F,\Phi$:

$$\begin{align}
I_{\rm first}=\frac1{2e^2}\int F\wedge*F +\frac i{e^2}\int d\Phi\wedge F, \qquad *F+i\,d\Phi=0.
\end{align}$$

Varying $\Phi$ gives $dF=0$ when its boundary value is fixed. Locally $F=dA$, and

$$\begin{align}
\frac i{e^2}\int d\Phi\wedge dA =\frac i{e^2}\int_{\Sigma_\varepsilon}A\wedge d\Phi =-\int d\tau dx\,A_a\Pi^a, \qquad \Pi^a=\frac i{e^2}\varepsilon^{ab}\partial_b\Phi, \quad\varepsilon^{\tau x}=+1.
\end{align}$$

The final minus sign is the induced orientation at the outward, decreasing-$z$ boundary. Eliminating $F=-i*d\Phi$ instead gives a **positive** scalar kinetic term: its two first-order pieces contribute $-\tfrac12(d\Phi)^2/e^2$ and $+(d\Phi)^2/e^2$. Omitting the mixed term gives the wrong sign.

The local equations become

$$\begin{align}
R_{\mu\nu}=-2g_{\mu\nu}/\ell^2 +\frac{\kappa^2}{e^2}\partial_\mu\Phi\partial_\nu\Phi, \qquad \square\Phi=0.
\end{align}$$

**Checked:** an explicit Euclidean orthonormal three-component calculation with $F_{ij}=-i\epsilon_{ijk}v_k$ gives $F^2=-2v^2$, the required trace-reversed scalar stress tensor and the positive first-order on-shell kinetic term. Fixing conserved $\Pi^a$ fixes the scalar boundary gradient locally; a representative of its additive constant is required to identify this with scalar Dirichlet data. Closed dual one-forms need not be exact globally. No sum over flux, winding, holonomy or compact-gauge sectors is included.

The scalar regulated action is EH + positive scalar kinetic + GHY. Its variation has the local terms

$$\begin{align}
\int_{\Sigma_\varepsilon}\sqrt{\mathrm g} \left[\frac{K^{ab}-K\mathrm g^{ab}}{2\kappa^2}\delta\mathrm g_{ab} +\frac1{e^2}n\!\cdot\!\nabla\Phi\,\delta\Phi\right].
\end{align}$$

The Maxwell-to-scalar integration by parts also retains the edge divergence displayed in Eq. (2.23), proportional to

$$\begin{align}
-\int d\Sigma_\mu\nabla_\nu \left(\kappa^{-2}n^{[\mu}\delta n^{\nu]} +ie^{-2}\epsilon^{\mu\nu\lambda}A_\lambda\delta\Phi\right).
\end{align}$$

Direct scalar variation omits the second term. It integrates away only under the stated closed-boundary/compact-support conditions. This is the direct point of contact with regional CPS: equality of bulk equations does not identify boundary symplectic potentials without their edge improvement and global sector.

# FG Logarithms, Counterterms and Response Data

Use

$$\begin{align}
ds^2=\ell^2 dz^2/z^2+\mathrm g_{ab}dx^a dx^b, \quad n=-z\partial_z/\ell, \quad K_{ab}=-\frac z{2\ell}\partial_z\mathrm g_{ab}, \quad L_z=\log(z^2/\ell^2).
\end{align}$$

A compact notation dictionary is:

| Symbol | Meaning and convention |
|---|---|
| $\mathrm g_{ab}$ | Induced metric at finite $z$, distinct from boundary source $\gamma_{ab}$ |
| $\phi$ | Dimensionless Dirichlet source, $\Phi\to\phi$; dual operator has $\Delta=2$ |
| $T_{ab},\psi$ | Renormalised responses in $I_{\rm fin}=0$, not bare radial coefficients |
| $\gamma_{(2)ab},h_{(2)ab}$ | Finite and logarithmic metric coefficients |
| $\phi_{(2)},\widetilde\phi_{(2)}$ | Finite and logarithmic coefficients inside $z^2/\ell^2$ |
| $a=e\kappa\ell q$ | Dimensionless backreaction amplitude; unrelated to a boundary index |
| $W,\mathcal L,\eta$ | Fiducial half-length, $\mathcal L=2\pi W/\beta$, $\eta=e^{-\mathcal L}$ |
| $\varepsilon,\epsilon,r_0,\delta$ | FG length cutoff; dimensionless Poincaré cutoff; short-distance cutoff; Abel damping parameter |
| $\mathcal G=\log Z,\mathcal W$ | Connected functional and finite Weyl-induced action; $\mathcal G=-I_{\rm ren}$ at tree level |
| $p,J$ | Source amplitude and source conjugate to the unit-normalised operator; $J=p\log|\zeta|$ |
| $h_j,\bar h_j$ | Holomorphic/antiholomorphic principal-series weights; the bar is not complex conjugation |

Appendix A first writes

$$\begin{align}
\mathrm g_{ab}=\frac{\ell^2}{z^2}\gamma_{ab}+\gamma_{(2)ab}+h_{(2)ab}L_z+\cdots, \quad \Phi=\phi+\frac{z^2}{\ell^2}(\phi_{(2)}+\widetilde\phi_{(2)}L_z)+\cdots.
\end{align}$$

The radial equations imply, with $D$ and all traces taken using $\gamma$,

$$\begin{aligned}
\widetilde\phi_{(2)}&=-\frac{\ell^2}4D^2\phi,& \operatorname{Tr}h_{(2)}&=0,\\
\operatorname{Tr}\gamma_{(2)}&=-\frac{\ell^2}2\mathcal R[\gamma] +\frac{\kappa^2\ell^2}{2e^2}(D\phi)^2,\\
h_{(2)ab}&=-\frac{\kappa^2\ell^2}{2e^2} \left[D_a\phi D_b\phi-\frac12\gamma_{ab}(D\phi)^2\right],\\
D^bh_{(2)ab}&=\frac{2\kappa^2}{e^2}\widetilde\phi_{(2)}D_a\phi,\\
D^b(\gamma_{(2)ab}-\gamma_{ab}\operatorname{Tr}\gamma_{(2)}) &=\frac{2\kappa^2}{e^2}\phi_{(2)}D_a\phi.
\end{aligned}$$

The scalar logarithm follows directly from the $z^{-1}$ coefficient in its radial equation: $4\widetilde\phi_{(2)}/\ell^2+D^2\phi=0$. The trace equation and traceless gradient divergence were separately checked; the full general curved-boundary FG recursion is **Source-derived**.

The on-shell bulk action simplifies to $2(\kappa^2\ell^2)^{-1}\int\sqrt g$. This simplification is for evaluating saddle values; it must not replace the off-shell action before variation. Its regulated divergences plus GHY are

$$\begin{align}
I_{\rm reg}^{\rm div} =-\frac\ell{\kappa^2\varepsilon^2}\int\sqrt\gamma +\frac\ell{2\kappa^2}\log(\varepsilon/\ell)\int\sqrt\gamma\,\mathcal R -\frac\ell{2e^2}\log(\varepsilon/\ell)\int\sqrt\gamma(D\phi)^2.
\end{align}$$

Use the counterterm at the **induced** metric/scalar values:

$$\begin{aligned}
I_{\rm ct}={}&\frac1{\kappa^2\ell}\int\sqrt{\mathrm g} -\frac\ell{2\kappa^2}\log(\varepsilon/\ell)\int\sqrt{\mathrm g}\mathcal R[\mathrm g]\\
&+\frac\ell{2e^2}\log(\varepsilon/\ell)\int\sqrt{\mathrm g}(\partial\Phi)^2_{\mathrm g} +I_{\rm fin}[\gamma,\phi].
\end{aligned}$$

The finite response dictionary is

$$\begin{align}
T_{ab}=\frac{\gamma_{(2)ab}-\gamma_{ab}\operatorname{Tr}\gamma_{(2)}+h_{(2)ab}}{\kappa^2\ell}, \qquad \psi=-\frac2{e^2\ell}(\phi_{(2)}+\widetilde\phi_{(2)}).
\end{align}$$

For example, the logarithmic coefficient of the rescaled scalar momentum is $-[4\widetilde\phi_{(2)}/(e^2\ell)+\ell D^2\phi/e^2]\log(\varepsilon/\ell)$ and vanishes. The stress logarithm cancels by the displayed $h_{(2)ab}$. The renormalised source one-form is

$$\begin{align}
\delta I_{\rm ren}=\int\sqrt\gamma \left[-\frac12 T^{ab}\delta\gamma_{ab}+\psi\delta\phi\right]+\delta I_{\rm fin}, \quad T^a{}_a=\frac c{24\pi}\mathcal R-\frac\ell{2e^2}(D\phi)^2, \quad D^bT_{ab}=-\psi D_a\phi.
\end{align}$$

The unusual minus sign in the stress variation is part of the paper's Euclidean convention. Infinitesimal diffeomorphism variation of this one-form gives the stated divergence identity. With $I_{\rm fin}=\alpha\int\sqrt\gamma(D\phi)^2$,

$$\begin{align}
\Delta T_{ab}=2\alpha[D_a\phi D_b\phi-\tfrac12\gamma_{ab}(D\phi)^2], \qquad \Delta\psi=-2\alpha D^2\phi.
\end{align}$$

**Checked:** xAct reproduces the zero trace and divergence $(D^2\phi)D_a\phi$ of the traceless-gradient tensor, and the scalar Euler derivative $-2D^2\phi$. These shifts preserve both Ward identities. The paper additionally sets finite terms with more than two derivatives, in particular $\int\sqrt\gamma[(D\phi)^2]^2$, to zero. Without this restriction, the quartic coefficient is not invariant under arbitrary source-functional changes.

In radial gauge, the Maxwell data are

$$\begin{align}
A_a=-\widetilde a_a\log(z/\ell)+a_a+\cdots, \quad\widetilde a^{\,a}=i\ell\epsilon_\gamma^{ab}D_b\phi.
\end{align}$$

Under $z'=e^\omega z$, $\gamma'=e^{2\omega}\gamma$, $\widetilde a'_a=\widetilde a_a$ and $a'_a=a_a+\omega\widetilde a_a$ at the shown order. Hence the finite potential has scale-dependent mixing. Fixed flux is not automatically the special varying-flux phase space with two Virasoro algebras studied elsewhere, and a local Maxwell photon neither establishes nor rules out an affine boundary algebra.

# Exact Charged Saddle, Action and Slope Variation

At fixed $\beta$, use a noncompact spatial line and quote extensive quantities with fiducial length $2W$:

$$\begin{aligned}
ds^2&=f(r)d\tau^2+dr^2/f(r)+r^2dx^2/\ell^2,\\
f(r)&=(r^2-r_h^2)/\ell^2-a^2\log(r/r_h), \quad a=e\kappa\ell q,\\
A_\tau&=-ie^2\ell q\log(r/r_h),\qquad \Phi=\phi=-e^2qx.
\end{aligned}$$

For the homogeneous action density, $2W$ is a volume factor and introduces no physical end faces. Appendix B temporarily introduces faces only to evaluate the slope variation. A spatial quotient instead requires the scalar to be shift-twisted: $\Phi(x+2W)=\Phi(x)-2We^2q$. This is not a proof of compact quantum duality or of allowed charge quantization.

**Checked:** xCoba gives zero for every component of $R_{\mu\nu}+2g_{\mu\nu}/\ell^2-(\kappa^2/e^2)\partial_\mu\Phi\partial_\nu\Phi$, and

$$\begin{align}
R=-6/\ell^2+e^2\kappa^2\ell^2q^2/r^2.
\end{align}$$

The scalar equation is immediate since the metric is $x$ independent. The induced Maxwell momentum is $\Pi^\tau=-iq$. Smoothness at the horizon gives

$$\begin{align}
T=\frac{r_h}{2\pi\ell^2}-\frac{a^2}{4\pi r_h}>0, \quad 2r_h^2>a^2\ell^2, \qquad S=\frac{4\pi Wr_h}{\kappa^2\ell}.
\end{align}$$

The FG transformation obeys $dr/\sqrt f=-\ell dz/z$ and begins

$$\begin{align}
r(z)=\frac{\ell^2}z+z\left[-\frac{a^2}8\log(z^2/\ell^2) +\frac{r_h^2}{4\ell^2}-\frac{a^2}4\log(r_h/\ell)+\frac{a^2}8\right]+ O(z^3\ell^{-2}\log^2(z/\ell)).
\end{align}$$

It gives $\gamma_{ab}=\delta_{ab}$, $D^2\phi=\psi=0$ and

$$\begin{aligned}
T_{\tau\tau}&=-\frac{r_h^2}{2\kappa^2\ell^3} +\frac{e^2\ell q^2}2\log(r_h/\ell),\\
T_{xx}&=\frac{r_h^2}{2\kappa^2\ell^3} -\frac{e^2\ell q^2}2[1+\log(r_h/\ell)].
\end{aligned}$$

The trace is $-e^2\ell q^2/2$ and the divergence zero. **Checked:** the radial transformation to the displayed order, both finite metric coefficients and the direct large-$r$ Brown–York limits with the scalar logarithmic counterterm reproduce these expressions. The radial-relation test uses only the order fixed by the supplied truncated transformation, not an uncomputed $z^3\log^2z$ coefficient.

The mass and Helmholtz free energy are

$$\begin{aligned}
M&=-2WT_{\tau\tau} =2W\left[\frac{r_h^2}{2\kappa^2\ell^3} -\frac{e^2\ell q^2}2\log(r_h/\ell)\right],\\
\mathcal F&=2W\left[-\frac{r_h^2}{2\kappa^2\ell^3} +\frac{e^2\ell q^2}2-\frac{e^2\ell q^2}2\log(r_h/\ell)\right], \quad I_{\rm ren}=\beta\mathcal F=\beta M-S.
\end{aligned}$$

At $r=R_\varepsilon$, the three saddle contributions are

$$\begin{aligned}
I_{\rm bulk}&=\frac{2W\beta}{\kappa^2\ell^3}(R_\varepsilon^2-r_h^2),\\
I_{\rm GH}&=-\frac{2W\beta}{\kappa^2} \left[\frac{2R_\varepsilon^2}{\ell^3}-\frac{a^2}\ell\log(R_\varepsilon/\ell) -\frac{r_h^2}{\ell^3}+\frac{a^2}\ell\log(r_h/\ell)-\frac{a^2}{2\ell}\right],\\
I_{\rm ct}&=\frac{2W\beta}{\kappa^2} \left[\frac{R_\varepsilon^2}{\ell^3}-\frac{a^2}\ell\log(R_\varepsilon/\ell) -\frac{r_h^2-a^2\ell^2\log(r_h/\ell)}{2\ell^3}\right]+o(1).
\end{aligned}$$

Their retained cutoff terms cancel algebraically before $\varepsilon\to0$. This checks the finite expression, with vanishing terms still understood as $o(1)$.

## Appendix B: the Noncompact Endpoint Is Physical for a Slope Variation

Let $Q=2Wq$ and $\mu=-e^2\ell q\log(r_h/\ell)$. On the temporary slab $-W<x<W$, $r\leq r_c$, varying $q$ at fixed $\beta,W,e,\ell$ gives $\delta\phi=-e^2x\delta q$. Since $\sqrt g\,g^{xx}=\ell/r$,

$$\begin{align}
\mathcal B_\Phi=2\beta We^2\ell q\log(r_c/r_h)\delta q, \qquad \mathcal B_{\rm ct}=-2\beta We^2\ell q\log(r_c/\ell)\delta q+o(1).
\end{align}$$

Only their sum has the finite limit

$$\begin{align}
\delta I_{\rm ren}|_{\beta,W} =-2\beta We^2\ell q\log(r_h/\ell)\delta q =\beta\mu\delta Q.
\end{align}$$

An equivalent endpoint response per unit Euclidean time is

$$\begin{align}
\psi_{\rm end}^{(W)}(x) =-\frac\mu{e^2}[\delta(x-W)-\delta(x+W)].
\end{align}$$

It vanishes against each fixed compactly supported test variation as $W\to\infty$, but its pairing with the growing slope variation gives $2W\mu\delta q$. The order of these operations matters. **Checked:** differentiation of the exact $\mathcal F(r_h,q)$ using $(\partial_q r_h)_T=-(\partial_qT)_{r_h}/(\partial_{r_h}T)_q$ gives $\partial_q\mathcal F|_T=2W\mu$; also $dM=T\,dS+\mu\,dQ$ for independent $dr_h,dq$. The finite counterterm shifts $\mu$ by $2\alpha e^4q$ and $I$ by $2\alpha\beta We^4q^2$.

# The Catalan Expansion and Its Domain

Finite classical backreaction at fixed $e,\ell,\beta$ means $\kappa\to0$ with $\kappa^2q^2$ fixed. The source then scales as $q\sim\sqrt c$. At fixed $q=O(1)$ the weakly charged classical solution is still valid, but its matter contribution is of absolute order $c^0$ and is not the complete answer at that order without quantum terms.

Define

$$\begin{align}
\chi=\frac{a\beta}{\pi\ell},\qquad r_h=\frac{\pi\ell^2}\beta\left(1+\sqrt{1+\chi^2/2}\right), \quad C_n=\frac1{n+1}\binom{2n}n.
\end{align}$$

Then

$$\begin{align}
I_{\rm ren}=-\frac{4\pi^2W\ell}{\beta\kappa^2} \left[1+\frac{\chi^2}4\log\frac{2\pi\ell}\beta +\sum_{n=2}^\infty\frac{(-1)^n C_{n-1}}{(n-1)8^n}\chi^{2n}\right], \qquad |\chi|<\sqrt2.
\end{align}$$

The convergence restriction is the complex-charge Taylor-series radius, from the square-root branch points at $\chi=\pm i\sqrt2$; it is not a real-charge bound on the exact nonextremal solution. For a derivation, set $x=\chi^2/8$ and $h=(1+\sqrt{1+4x})/2$. The normalized bracket equals

$$\begin{align}
f(x)=h-x+2x\log(sh),\quad s=2\pi\ell/\beta, \qquad f'(x)=2\log(sh),\quad f''(x)=\frac{1-(1+4x)^{-1/2}}x.
\end{align}$$

The binomial expansion of the last expression and the initial data fix the Catalan coefficients. **Checked:** the exact second-derivative identity and every coefficient through $\chi^{24}$, including

$$\begin{align}
1+\tfrac14\chi^2\log s+\tfrac1{64}\chi^4-\tfrac1{512}\chi^6 +\tfrac5{12288}\chi^8+\cdots.
\end{align}$$

At fixed $\chi$, every displayed tree-level term is $O(c)$. The series does not compute loop corrections. Odd terms vanish by $\Phi\to-\Phi$, neutral-state symmetry and a compatible contact prescription, not merely by a constant source shift.

# Quadratic Reconstruction: Weyl Response Plus an Annular Pairing

The source convention is $S_{\rm CFT}\mapsto S_{\rm CFT}+\int\sqrt\gamma\phi\mathcal O_\phi$ and $\mathcal G=\log Z=-I_{\rm ren}$ at classical order. Therefore $\mathcal G^{(2)}$ has a positive cumulant factor $1/2$; its action contribution is negative. A regular Poincaré scalar has

$$\begin{align}
K(z,x;y)=\frac1\pi\frac{z^2}{(z^2+|x-y|^2)^2},\qquad \int d^2y\,K=1, \qquad C_{\mathcal O_\phi}=\frac{2\ell}{\pi e^2}.
\end{align}$$

The response derivative is $\delta\psi(x)/\delta\phi(y)=-C_{\mathcal O_\phi}|x-y|^{-4}$ for separated points; the connected correlator has the opposite sign to that response derivative. This determines the separated-point two-point normalization, not its contact extension.

A short-distance cutoff $|x-y|>r_0$ yields

$$\begin{align}
\mathcal G_{\rm reg}^{(2)} =\frac{\pi C_{\mathcal O_\phi}}{2r_0^2}\int\phi^2 -\frac{\pi C_{\mathcal O_\phi}}4\log(r_0\mu_R)\int\phi\Box\phi+\text{finite}.
\end{align}$$

The paper combines the local Weyl subtraction with its curvature contact extension. Constant source-shift invariance, including those contact terms and compatible infrared data, makes the source-direction metric constant. For $\gamma'=e^{-\sigma}\widetilde\gamma$ this gives

$$\begin{aligned}
\mathcal W[\sigma,\phi;\widetilde\gamma] ={}&\frac c{48\pi}\int\sqrt{\widetilde\gamma} [\sigma\mathcal R[\widetilde\gamma]-\tfrac12(\widetilde\partial\sigma)^2]\\
&-\frac\ell{4e^2}\int\sqrt{\widetilde\gamma}\,\sigma(\widetilde\partial\phi)^2, \qquad Z[\gamma',\phi]=e^{-\mathcal W}Z[\widetilde\gamma,\phi].
\end{aligned}$$

The matter anomaly is quadratic, $-\ell(D\phi)^2/(2e^2)$; this is a feature of this shift-symmetric bulk source sector, not a universal statement for every marginal operator of an arbitrary CFT. With smooth sources the quartic term has no local matter Weyl variation in this scheme.

Map the thermal cylinder by $\zeta=e^{2\pi w/\beta}$, $w=x+i\tau$, to $d\widetilde s^2=\ell^2d\zeta d\bar\zeta$. On the symmetric annulus,

$$\begin{align}
\rho_-<|\zeta|<\rho_+,\quad\rho_\pm=e^{\pm\mathcal L},\quad \mathcal L=\frac{2\pi W}\beta,\quad \sigma=2\log\left(\frac{2\pi\ell}\beta|\zeta|\right),\quad \phi=-b\log|\zeta|,\quad b=\frac{e^2\beta q}{2\pi}.
\end{align}$$

With $\widehat{\mathcal O}=\mathcal O/\sqrt C$, its source is $J=\sqrt C\phi=p\log|\zeta|$ and

$$\begin{align}
p^2=\frac{e^2\ell\beta^2q^2}{2\pi^3}.
\end{align}$$

The factors of $\ell^2$ in the plane measure cancel those in the inverse metric. The two needed integrals are $\int d^2\zeta/|\zeta|^2=4\pi\mathcal L$ and $\int d^2\zeta\log|\zeta|/|\zeta|^2=0$. Thus

$$\begin{align}
\mathcal W_{\rm matter}=-\pi^2p^2\mathcal L\log(2\pi\ell/\beta).
\end{align}$$

## Appendix C: the Finite Contact Term and Both Annular Ends

For smooth sources with Fourier measure $d^2k/(2\pi)^2$, $\Phi(z,k)=kzK_1(kz)\phi(k)$. Its small-$z$ expansion and counterterm give

$$\begin{align}
\widetilde K_\alpha(k)=\frac\ell{2e^2}k^2\log(k^2\ell^2) +\left[\frac\ell{e^2}(\gamma_E-\log2)-2\alpha\right]k^2.
\end{align}$$

The polynomial part specifies the finite local extension. “Zero finite counterterm” means this displayed constant at the reference length $\ell$, rather than an arbitrary subtraction of all polynomial terms.

For the unbounded logarithmic source use dimensionless Poincaré coordinates and the exact regular profile

$$\begin{align}
ds^2=\ell^2(du^2+d\rho^2+\rho^2d\theta^2)/u^2, \qquad \Phi(u,\rho)=-\frac b2\log(u^2+\rho^2).
\end{align}$$

Retain $u\geq\epsilon>0$ and $0<\rho_-\leq\rho\leq\rho_+<\infty$, with the induced data on **both** $\rho$ faces. Then

$$\begin{aligned}
I_{\Phi,\rm bulk}^{(2)}&=\frac{\pi\ell b^2}{e^2} \int_{\rho_-}^{\rho_+}\frac{d\rho}\rho \log\frac{\sqrt{\epsilon^2+\rho^2}}\epsilon,\\
I_{\rm ct,\Phi}^{(2)}&=\frac{\pi\ell b^2}{e^2}\log\epsilon \int_{\rho_-}^{\rho_+}d\rho\,\frac{\rho^3}{(\epsilon^2+\rho^2)^2}.
\end{aligned}$$

Remove $\epsilon\to0$ at fixed positive finite $\rho_\pm$ first. Their sum tends to

$$\begin{align}
I_{\rm plane,ren}^{(2)} =\frac{\pi\ell b^2}{2e^2}[(\log\rho_+)^2-(\log\rho_-)^2] +2\pi\alpha b^2\log(\rho_+/\rho_-).
\end{align}$$

It vanishes for the symmetric annulus in $\alpha=0$. Integration by parts gives a radial contribution $-\pi\ell b^2(L_+^2-L_-^2)/(2e^2)$ and endpoint contribution $\pi\ell b^2[L_+^2-L_-^2-\log\epsilon(L_+-L_-)]/e^2$ before adding the counterterm. The puncture/inner circle is not dropped.

**Checked:** normalized bulk-boundary integral; Bessel expansion; scalar harmonic equation for this profile; the exact $u$ integral; the fixed-annulus cutoff cancellation and primitive $\int d\rho\log\rho/\rho$; the two symmetric-annulus integrals. Uniform convergence on a fixed annulus bounded away from zero justifies the limit used here; it does not justify interchanging it with $\mathcal L\to\infty$.

Adding the neutral cylinder vacuum term $\mathcal G^{(0)}=c\mathcal L/6+o(\mathcal L)$ gives

$$\begin{align}
I^{(0)}+I^{(2)} =-\frac{4\pi^2W\ell}{\beta\kappa^2} -e^2\ell\beta Wq^2\log(2\pi\ell/\beta),
\end{align}$$

matching the first two terms of the saddle expansion in the same scheme.

# Quartic Reconstruction and Appendix D

The connected unit-normalised four-point function is $c^{-1}\mathcal H+O(c^{-2})$. Its prescribed pairing is

$$\begin{align}
\mathcal G^{(4)}_{\rm AC}=\frac{p^4}{24c}\operatorname{AC}_{\mathcal L}
\int\prod_{i=1}^4d^2\zeta_i\,\mathcal H(\zeta_i)\prod_i\log|\zeta_i|.
\end{align}$$

This is not an absolutely convergent four-source integral. The order of operations defining $\operatorname{AC}_{\mathcal L}$ is part of the result: first analytically continue each pair integral over the whole plane at fixed sewing point $y$; only afterwards restrict $e^{-\mathcal L}<|y|<e^{\mathcal L}$. It is not the definition obtained by putting four independent hard annular cutoffs on the external sources.

## Shadow Waves, Normalization and Exchange Coefficients

For $j=0,\pm2$, set

$$\begin{align}
h_j=\frac{1+i\nu+j}2,\quad\bar h_j=\frac{1+i\nu-j}2, \quad \mathcal T_{h,\bar h}(12;y) =\frac{\zeta_{12}^{h-2}\bar\zeta_{12}^{\bar h-2}} {(\zeta_1-y)^h(\zeta_2-y)^h (\bar\zeta_1-\bar y)^{\bar h}(\bar\zeta_2-\bar y)^{\bar h}}.
\end{align}$$

The raw shadow integral pairs $\mathcal T_{h,\bar h}$ with $\mathcal T_{1-h,1-\bar h}$ at $y$. The normalized spin-zero wave divides by $B_0$; the spin-two wave is the sum of the two helicities divided by $B_2$:

$$\begin{align}
B_0=\frac{128\cosh^4(\pi\nu/2)}{\pi\nu\sinh(\pi\nu)(\nu^2+1)^2}, \qquad B_2=\frac{8192\nu\cosh^4(\pi\nu/2)}{\pi\sinh(\pi\nu)(\nu^2+1)^3(\nu^2+9)^2}.
\end{align}$$

Appendix D fixes this convention through $k_a(\zeta)=\zeta^a{}_2F_1(a,a;2a;\zeta)$ and

$$\begin{align}
G_{\Delta,0}=k_{\Delta/2}(\zeta)k_{\Delta/2}(\bar\zeta),\quad G_{\Delta,2}=\tfrac14[k_{(\Delta+2)/2}(\zeta)k_{(\Delta-2)/2}(\bar\zeta)+(\zeta\leftrightarrow\bar\zeta)].
\end{align}$$

The block-plus-shadow coefficient is $\mathcal N_{\nu,j}=i\nu/(2\pi K_{1+i\nu,j})$, with

$$\begin{align}
K_{\Delta,j}=\frac{\Gamma(\Delta+j)\Gamma(\Delta)(\Delta-1)_j} {4^{j-1}\Gamma^4((\Delta+j)/2) \Gamma^2((4-\Delta+j)/2)\Gamma^2((2+\Delta+j)/2)}.
\end{align}$$

For $a=(1+i\nu)/2$, the raw physical-branch coefficients are

$$\begin{align}
S_0=\pi\frac{\Gamma(1-2a)\Gamma(a)^2}{\Gamma(2a)\Gamma(1-a)^2}, \quad S_2=\pi\frac{\Gamma(3-2a)\Gamma(a-1)^2}{\Gamma(2a+2)\Gamma(-a)^2}.
\end{align}$$

Thus $B_0=S_0/\mathcal N_{\nu,0}$ and $B_2=4S_2/\mathcal N_{\nu,2}$. The factor four compensates the spin-two block's $1/4$. The two-helicity factor in the actual wave remains a separate factor of two. Gamma recurrence/reflection lead to the hyperbolic forms above. **Checked numerically:** both ratio formulas at $\nu=1/3,1,2$ to better than 100 decimal places; cancellation-to-zero raised Mathematica extra-precision warnings, so these are finite numerical checks, not a machine proof for every real $\nu$. Also $K_{2,2}=3/4$ exactly; the two chiral stress blocks each have coefficient $2/c$, giving a spin-two pole coefficient $6/c$.

The dynamical input is the sum of the three graviton-exchange pairings. Removing $1/c$, one channel has measure $d\nu$ on the full real line and coefficients

$$\begin{align}
b_2(\nu)=\frac6{\nu^2+1},\qquad b_0(\nu)=-\frac3{16}\frac{(\nu^2+1)^2}{\nu^2+4}.
\end{align}$$

**Checked:** substituting $d=2h=2$, external dimensions $\Delta_1=\Delta_3=2$, $8\pi G_3=\kappa^2$ and $\kappa^2/\ell=12\pi/c$ in the original arXiv:1404.5625 formula gives precisely $b_2/c,b_0/c$. This checks the specialization and coupling conversion of a primary-source result. It does not independently rederive the full split propagator or all bulk integrations. The trace channel is necessary even though three-dimensional pure Einstein gravity has no local graviton.

## The Logarithmic Pair Vertex

The complex beta identity in Appendix D is analytically continued from its convergence domain, with paired powers and $\Gamma^{\mathbb C}(a|\bar a)=i^{a-\bar a}\Gamma(a)/\Gamma(1-\bar a)$. A constant source leg vanishes in this continuation through $1/\Gamma^{\mathbb C}(0|0)$. This is a prescription-dependent contact statement, not an ordinary convergent integral equal to zero.

Rescale $\zeta_i=yu_i$ and use that constant-leg identity. The pair vertex becomes

$$\begin{align}
V_j(\nu;y)=v_j(\nu)y^{-h_j}\bar y^{-\bar h_j}.
\end{align}$$

At $y=1$, the transformation $t_i=(1-\zeta_i)^{-1}$ gives $L(t)=\log|t-1|-\log|t|$ and a kernel $t_{12}^{h-2}\bar t_{12}^{\bar h-2}$. Set $H(t)=t^h\bar t^{\bar h}$ and $D=h\bar h(h-1)(\bar h-1)$. Away from its contact extension,

$$\begin{align}
\Delta_1\Delta_2H(t_{12})=16D\,t_{12}^{h-2}\bar t_{12}^{\bar h-2}, \qquad \Delta L=2\pi(\delta_1-\delta_0).
\end{align}$$

In the strip $0<\operatorname{Re}(h+\bar h)<1$, retain a smooth large-radius cutoff before integrating by parts. The source has $L=O(R^{-1})$, $\nabla L=O(R^{-2})$; the source argument then removes the cutoff terms. For even spin, $H(0)=0,H(\pm1)=1$, so the continued result is

$$\begin{align}
v_j=\frac{(2\pi)^2}{16D}[2H(0)-H(1)-H(-1)] =-\frac{\pi^2}{2D}, \quad v_0=-\frac{8\pi^2}{(\nu^2+1)^2}, \quad v_{\pm2}=-\frac{8\pi^2}{(\nu^2+1)(\nu^2+9)}.
\end{align}$$

**Checked:** the double-Laplacian algebra, invariance of $D$ under shadow weights, and all three substitutions $j=0,\pm2$. The extension of the distributional kernel and continuation from the strip are still part of the stated prescription; no brute-force unregulated four-dimensional pair integral is claimed.

## Common-Scale Volume and Spectral Integral

Only after the pair integrations, the remaining $y$ measure is $d^2y/|y|^2$, whose cutoff volume is $4\pi\mathcal L$. Combining helicities and the trace piece gives

$$\begin{align}
R(\nu)=\frac{2b_2v_2^2}{B_2}+\frac{b_0v_0^2}{B_0} =\frac{3\pi^5}4 \frac{\tanh(\pi\nu/2)}{\nu(\nu^2+4)\cosh^2(\pi\nu/2)}.
\end{align}$$

**Checked:** this simplification exactly, including $\lim_{\nu\to0}R(\nu)=3\pi^6/32$. Individual singular shadow factors must not be evaluated separately at $\nu=0$.

For the remaining absolutely convergent one-dimensional integral, keep an Abel regulator $\delta>0$ in

$$\begin{align}
\frac1{\nu(\nu^2+4)} =\frac14\lim_{\delta\to0^+}\int_0^\infty dX\,e^{-\delta X}(1-e^{-2X})\sin(\nu X), \qquad \int_{\mathbb R}\frac{\cos(\nu X)d\nu}{\cosh^2(\pi\nu/2)} =\frac{4X}{\pi\sinh X}.
\end{align}$$

At finite $\delta$, the Laplace integral divided by four is $(1+\delta)\nu/[(\delta^2+\nu^2)((2+\delta)^2+\nu^2)]$. Integration by parts and removal of damping yield

$$\begin{align}
\int_{\mathbb R}\frac{\tanh(\pi\nu/2)d\nu} {\nu(\nu^2+4)\cosh^2(\pi\nu/2)} =\frac1{\pi^2}\int_0^\infty\frac{X^2(1-e^{-2X})}{\sinh X}dX =\frac2{\pi^2}\int_0^\infty X^2e^{-X}dX=\frac4{\pi^2}.
\end{align}$$

**Checked:** the damped Laplace formula, exact Fourier transform, final exponential integral, and direct 50-digit numerical integration (absolute residual about $1.1\times10^{-49}$). Consequently $\int R\,d\nu=3\pi^3$. The three exchange channels and cumulant factor then give

$$\begin{align}
\mathcal G^{(4)}_{\rm AC}=\frac{p^4}{24c}\,3(4\pi\mathcal L)(3\pi^3) =\frac{3\pi^4p^4}{2c}\mathcal L, \qquad I^{(4)}=-\frac{e^4\kappa^2\ell\beta^3Wq^4}{16\pi^2} =-\frac{4\pi^2W\ell}{\beta\kappa^2}\frac{\chi^4}{64}.
\end{align}$$

This matches the exact saddle's quartic coefficient under the stated prescription. It does not promote the common-scale analytic pairing into a proof about an arbitrary infrared completion.

# Equation Ledger and Derivation Map

| Source equations/objects | Logical role and independent boundary |
|---|---|
| section 2 bulk action/equations; first-order Eqs. (2.13)–(2.18) | Euclidean sign, Legendre term and scalar Dirichlet map; finite component/sign algebra checked |
| section 2.2 + A.1 | FG local logs and response split; scalar coefficient and gradient identities checked, full curved-boundary recursion source-derived |
| section 2.3 + A.2–A.3 | Counterterms before variation; finite response and Ward identities; explicit brane Brown–York limits checked |
| section 3.1 + B | Exact solution, saddle action and charge endpoint; complete brane equations, cutoff sum and thermodynamic derivatives checked |
| section 3.2 | Horizon root implies Catalan coefficients; exact derivative identity and first 12 even orders checked |
| section 4.1 + C | Two-point normalization plus finite Fourier contact term; scalar kernel, Bessel and annular integrals checked; Weyl/contact prescription retained |
| section 4.3, Eqs. (4.34)–(4.48) + D | Principal-series weights, raw/normalized waves, full exchange and pair vertices; algebra and finite gamma checks detailed above |
| Eqs. (4.49)–(4.53) | Abel transform, convergent spectral integral, three channels and $1/4!$ yield quartic match |

The dependency chain is: **canonical action and local duality → regulated source one-form → FG logarithms/counterterms → fixed-slope saddle and endpoint derivative → exact horizon root/Catalan targets → normalized two-point/contact extension → prescribed pairwise shadow integration → convergent spectral density → quartic coefficient**. Dropping a boundary term, changing the finite quartic source functional or changing the order of infrared integration changes an input to this chain.

# Use in the Vault and Remaining Questions

For AdS quantization, the fixed-flux source is the logarithmic Maxwell coefficient, equivalently a scalar tangential gradient; it is not the scalar radial Neumann datum. In fact, $\partial_r\Phi=0$ for every $q$ on this family, so that datum cannot distinguish charge sectors. The response $\psi=0$ on the open line is compatible with a nonzero homogeneous charge derivative because that derivative lies outside the compact-support variation class.

For CPS and sewing, start with the finite-$\varepsilon$ action and its Maxwell/scalar edge improvement. The source one-form is useful input, but the paper does not construct a regional edge-mode phase space, a global asymptotic charge algebra or an integrated charge on the infinite line without falloff conditions. No such result should be inferred from its homogeneous stress densities.

For the scalar-coupled three-dimensional-gravity seminar, this gives a concrete **classical** matter-backreaction calculation. Its even-charge Catalan organization and quartic exchange result are separate from any Wilson-spool, determinant, or all-orders Einstein–scalar equivalence claim.

Section 5's sixth-order target is $\mathcal G^{(6)}=-9\pi^6p^6\mathcal L/(2c^2)$ in a compatible prescription. It is predicted by the saddle, not calculated from the complete connected six-point function. A concrete CFT must also fix double-trace anomalous dimensions/OPE data and contact ambiguities. Logarithmic mixing of the finite stress tensor with the source-local $h_{(2)ab}$ does not by itself establish a logarithmic operator multiplet. Near-extremal physics requires resumming a series about the neutral fixed-temperature saddle; the small-$\chi$ series cannot simply be used outside its radius.

# Verification Ledger

**Verified:** Euclidean component duality and first-order sign; xCoba exact brane Einstein equations/curvature; scalar FG leading equation and renormalised momentum cancellation; xAct gradient trace/divergence/variation; FG brane coefficients and Brown–York limits; retained radial-cutoff cancellation; first law, statistical relation and fixed-temperature slope derivative; exact Catalan derivative identity and Taylor coefficients through $\chi^{24}$; kernel normalization/Bessel/harmonic/annular checks; primary-reference exchange-coefficient specialization; finite gamma checks; vertex/spectral algebra; Abel/Fourier/exponential integrals and high-precision one-dimensional quadrature.

**Assumptions:** Euclidean continuation and stated orientation; $\ell,e,\kappa,\beta,W>0$, real $q$, nonextremal $2r_h^2>a^2\ell^2$; fixed couplings; reference $I_{\rm fin}=0$ and vanishing higher-derivative finite source terms; local classical duality; neutral reflection-symmetric saddle; the exact source-pairing prescription, full-real-axis $d\nu$ measure and specified helicity/block normalization.

**Regulator order:** retain $z=\varepsilon$ until counterterms are added; in Appendix C remove dimensionless $\epsilon$ at fixed $0<\rho_-<\rho_+<\infty$, then consider $\mathcal L\to\infty$; in the quartic construction first continue full-plane pair integrals at fixed $y$, then cut off its common scale; retain $\delta>0$ during the Fourier/Laplace interchange. No claim interchanges these distinct limits.

**Source-derived:** general curved-boundary metric FG recursion, full gravitational boundary variation, complete split-propagator/Witten-diagram derivation, distributional beta/shadow continuation and its regulator prescription, and higher-point/CFT/global-sector claims. A specialization of a primary-source exchange formula has been checked without independently reproducing the original bulk derivation.

**Failed:** no contradiction with a source equation established by the completed checks. Two local implementation issues were resolved: an incomplete Mathematica input was split into smaller calls; the scalar momentum test was rerun with the correct outward normal $-z\partial_z/\ell$. Discarded outputs are not physical failures.

**Blocked:** no unresolved source-retrieval or computation-service failure. An independent assertion of equality between this analytic pairing and a different hard-box completion would need a specified treatment of the external source cutoffs, face/corner terms and analytic contact extensions; that equality has not been supplied or proved.

**Not verified:** quantum duality/global compact sectors, full general-background FG recursion, a microscopic CFT realization, independent all-tree six-point computation, loops, a full regional CPS/gluing construction, and equivalence across distinct infrared prescriptions. “Quartic match checked” refers to the explicit conditional chain above.

Audit handles outside the vault: `xact_run-atdpaB`, `xact_run-mMyByj`, `evaluate_mathematica-25aRAd` (its first four completed results only), `evaluate_mathematica-CRtN6T`, `evaluate_mathematica-WUmcCo`, `evaluate_mathematica-PG349h`, `evaluate_mathematica-4L7uI5`, `evaluate_mathematica-Sa5NSE`, `evaluate_mathematica-YhnFw6` (excluding its superseded momentum setup), and `evaluate_mathematica-4tEwZN`. Source/PDF/rendered/reference artifacts remain in the external temporary run directory.
