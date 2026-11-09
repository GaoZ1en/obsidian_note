---
paper id: 2610.40778v1
title: Conformal boundaries and the photon sphere of AdS black holes
authors:
  - Raúl Arias
  - Valentino Di Pierro
  - Silvia Georgescu
publication date: 2026-10-29
abstract: |-
  The paper studies scalar and vector gravitational perturbations of Schwarzschild-AdS4 and the planar AdS4 black brane with finite conformal boundaries. At the spherical photon surface the scalar boundary problem factorizes into bulk and boundary branches. The authors prove mode stability there for l >= 2, analyze Airy and parabolic-cylinder limits, and numerically continue near-horizon fluid modes to asymptotic gravitational quasinormal modes.
comments: "46pg + Appendices"
url: https://arxiv.org/abs/2610.40778v1
summary: "An explicit finite-boundary gravitational spectrum with a regular displacement determinant, a positive boundary-weighted stability identity, and controlled noncommuting large-momentum and cutoff limits."
tags: []
---

# A Boundary Displacement Determinant That Survives Umbilicity

**Correct under precise conditions:** the source's S-deformation excludes exponentially growing scalar modes at the photon-sphere boundary, and vector modes at every finite spherical boundary, for $l\ge2$, with the stated ingoing horizon condition. It does not prove stability of every scalar finite-boundary problem or nonlinear well-posedness. The homogeneous $l=0$ boundary sector is explicitly unstable.

Immediate use: this is a concrete reference for recovering a gravitational spectrum while retaining a boundary displacement, rather than dividing by its coupling and losing a branch. The frequency-dependent Robin condition also contributes a boundary term to the spectral norm. The horizon patch is an open, dissipative spectral problem; its quasinormal frequencies are not a self-adjoint closed-system energy spectrum.

All technical exposition is **Source-derived** except the explicit **Checked** calculations. No contradiction was found in the checks executed here.

## Complete Source Map and Reading Guide

The official [PDF](https://arxiv.org/pdf/2610.40778v1), [TeX](https://arxiv.org/src/2610.40778v1) and [abstract](https://arxiv.org/abs/2610.40778v1) were retrieved. The 61-page PDF includes all four appendices; references and figure captions were inspected as part of source mapping. Printed and viewer page numbers agree.

| Source | Purpose, definitions and dependency | Reading role |
|---|---|---|
| §1, pp4–5 | Finite CBC problem, high-angular-momentum growth and two fluid limits | Orientation |
| §2.1, p6 | York boundary action, fixed conformal metric and $K$, conformal stress tensor, Weyl equation | Essential |
| §2.2, pp6–9 | SAdS and brane geometry, $K,\Delta,T_{mn}$, photon sphere | Essential geometry |
| §2.3.1, pp10–13 | Scalar KI master equation, regular normal displacement system, Weyl response | Essential spectral construction |
| §2.3.2, pp13–14 | Vector reconstruction and Robin condition | Essential comparison |
| §§2.4.1–2.4.2, pp14–18 | Exact photon-sphere split and stability; asymptotic split | Central result |
| §§3.1–3.3, pp19–29 | Separate-turning-point Airy roots; coalescing-point parabolic-cylinder problem; cutoff/momentum limits | Technical core |
| §§4.1–4.3, pp30–35 | Rindler scalar/vector families, finite-$l$ horizon expansion, black-brane counterpart | Technical reference |
| §§5.1–5.3.2, pp35–44 | CFT fluid equations, planar continuation, spherical sound and shear continuation | Application; numerical scope matters |
| §6, pp44–46 | Conclusions and unresolved initial-boundary-value problem | Claim boundary |
| App A.1–A.2, pp46–48 | Scalar $X,Y,Z$ reconstruction; vector mean curvature and stress response | Essential formula reference |
| App B.1–B.2, pp48–51 | Moving homogeneous boundary, conserved conformal energy, exact zero-energy trajectory | Essential low-mode exception |
| App C.1.1–C.1.2, pp52–53 | Brane master equations and finite-boundary residuals | Reference |
| App C.2–C.3, pp53–55 | Sound and shear hydrodynamic expansion and local diffusion | Reusable checked calculation |
| App D.1–D.3, pp55–61 | WKB validity, both Airy connection regions, forbidden barrier, outer wave, uniform PC solution | Reference for ordered limits |

Read §§2.1–2.4 and App B first. Then choose either §3/App D for spectral asymptotics or §§4–5/App C for hydrodynamics. The numerical interpolation is useful evidence for the reported branches, not a theorem of global branch uniqueness.

## Theory, Clocks and Boundary Data

The action and outward-normal convention are

$$\begin{align}
I=\frac1{16\pi G_N}\int_{\mathcal M}\sqrt{-g}\, (\mathcal R-2\Lambda) +\frac1{24\pi G_N}\int_\Gamma\sqrt{-\gamma}\,K, \qquad \Lambda=-\frac3{\ell^2},\qquad K_{mn}=\frac12\mathcal L_n\gamma_{mn}.
\end{align}$$

Here $\ell=\ell_{\rm AdS}$. The boundary term is one third of the ordinary Dirichlet GHY coefficient. The fixed data are the conformal class $[\gamma]_{mn}$ and $K$, with

$$\begin{align}
\gamma_{mn}=e^{2\boldsymbol\omega}[\gamma]_{mn}, \qquad \delta\gamma_{mn}=2\delta\boldsymbol\omega\,\bar\gamma_{mn}, \qquad \delta K=0.
\end{align}$$

The boundary Weyl factor is solved dynamically; it is not another prescribed source. The source's conformal Brown–York tensor is

$$\begin{align}
T_{mn}=-\frac{e^{\boldsymbol\omega}}{8\pi G_N} \left(K_{mn}-\frac K3\gamma_{mn}\right).
\end{align}$$

It is traceless and conserved relative to the chosen conformal representative when $K$ is constant. Its normalization changes if one changes that representative.

The normal Einstein constraint gives

$$\begin{align}
\mathcal D^2\boldsymbol\omega +\frac12(\mathcal D\boldsymbol\omega)^2 -\frac{\mathcal R_\Gamma}{4} -16\pi^2G_N^2T^{mn}T_{mn}e^{-4\boldsymbol\omega} +\frac{K^2+3\Lambda}{6}e^{2\boldsymbol\omega}=0.
\end{align}$$

This equation is not an autonomous boundary theory at generic $T_{mn}$: its linearization contains $T^{mn}\delta T_{mn}$, determined by bulk perturbations.

| Quantity | Convention |
|---|---|
| $\mathfrak r$ | Finite wall radius; retain $r_h<r\le\mathfrak r$ |
| $t,\omega$ | Bulk static time; modes $e^{-i\omega t}$; ${\rm Im}\,\omega>0$ means growth |
| $\mathfrak L^2=l(l+1)$ | Spherical harmonic eigenvalue; main KI construction assumes $l\ge2$ |
| $m=\mathfrak L^2-2$ | KI algebraic parameter, not a matter mass |
| $\Phi,\phi$ | Time-dependent and radial KI master fields |
| $\zeta$ | Proper normal displacement of the wall |
| $F,F_{ab}$ | Scalar KI invariants in Regge–Wheeler gauge |
| $r^*$ | Tortoise coordinate, $dr^*/dr=1/f$ |
| $T,T_{\rm loc}$ | Hawking and Tolman temperatures; distinguish from $T_{mn}$ |
| $h=r_h/\ell$ | Black-hole size; varying it changes the background |

## Background Geometry and the Photon-Sphere Criterion

For Schwarzschild-AdS,

$$\begin{align}
ds^2=-fdt^2+\frac{dr^2}{f}+r^2d\Omega_2^2,\qquad f=1+\frac{r^2}{\ell^2}-\frac\mu r,\qquad \mu=r_h(1+r_h^2/\ell^2),
\end{align}$$

$$\begin{align}
\kappa_h=\frac{1+3r_h^2/\ell^2}{2r_h},\qquad K=\frac{f'}{2\sqrt f}+\frac{2\sqrt f}{r},\qquad \Delta=rf'-2f=\frac{3\mu}{r}-2.
\end{align}$$

The traceless extrinsic curvature and optical potential are organized by the same quantity:

$$\begin{align}
K^t{}_t-K^\theta{}_\theta=\frac{\Delta}{2r\sqrt f},\quad \bar T^m{}_n=\frac{\Delta}{48\pi G_Nr\sqrt f} \operatorname{diag}(-2,1,1),\quad U=\frac f{r^2},\quad U'=\frac{\Delta}{r^3}.
\end{align}$$

Thus $r_{\rm ph}=3\mu/2$ is both the finite umbilic boundary and the circular null-orbit radius. At that point

$$\begin{align}
f_{\rm ph}=\frac13+\frac{r_{\rm ph}^2}{\ell^2},\quad U''_{\rm ph}=-\frac2{r_{\rm ph}^4},\quad \Omega_{\rm ph}=\frac{\sqrt{f_{\rm ph}}}{r_{\rm ph}},\quad K_{\rm ph}=3\Omega_{\rm ph}.
\end{align}$$

The conformal energy is

$$\begin{align}
E_{\rm conf}=\frac{3\mu-2\mathfrak r}{6G_N}.
\end{align}$$

Its sign is tied to the wall, not the ADM mass. The identity

$$\begin{align}
(8\pi G_N)^2\bar T^2 =\frac{\Delta^2}{6r^2f} =\frac23K^2-\frac6{\ell^2}-\frac2{r^2}
\end{align}$$

checks the background Weyl equation.

**Checked:** xCoba yields $R=-12/\ell^2$ and $R_{\mu\nu}+3g_{\mu\nu}/\ell^2=0$. Mathematica verifies the $\Delta,U''$, stress-square and $K'$ identities. In particular $K'(r_{\rm ph})=-1/(r_{\rm ph}^2\sqrt{f_{\rm ph}})$.

For the brane,

$$\begin{align}
f_{\rm br}=\frac{r^2}{\ell^2} \left(1-\frac{r_h^3}{r^3}\right),\quad ds_\perp^2=\frac{r^2}{\ell^2}(dx^2+dy^2),\quad \Delta_{\rm br}=\frac{3r_h^3}{r\ell^2}>0.
\end{align}$$

There is no finite-radius umbilic wall or photon sphere. Both geometries become asymptotically umbilic.

## Scalar Reconstruction and the Complete Boundary System

### KI Equation and Reconstruction Dictionary

Let $x=\mu/r,\ y=-r^2/\ell^2,\ H=m+3x$. The scalar equation is

$$\begin{align}
f^2\phi''+ff'\phi'+(\omega^2-V_S)\phi=0,
\end{align}$$

$$\begin{align}
V_S=\frac f{r^2H^2} \left[m^3+2m^2+3m^2x+9mx^2+9x^3-18x^2y\right].
\end{align}$$

Select the future-ingoing solution $\phi_{\rm in}\sim(r-r_h)^{-i\omega/(2\kappa_h)}$. The regular App A reconstruction is

$$\begin{align}
X=\frac1r\left[\left(\frac{\omega^2r^2}{f} -\frac{P_X}{16H^2}\right)\phi+\frac{Q_X}{4H}r\phi'\right],
\end{align}$$

$$\begin{align}
Y=\frac1r\left[\left(-\frac{\omega^2r^2}{f} -\frac{P_Y}{16H^2}\right)\phi+\frac{Q_Y}{4H}r\phi'\right], \qquad Z=i\omega\left(\frac{P_Z}{4H}\phi-fr\phi'\right),
\end{align}$$

$$\begin{align}
F=-\frac{X+Y}{4},\quad F_{tt}=-\frac f2(X-Y),\quad F_{rr}=\frac{-X+Y}{2f},\quad F_{tr}=\frac Zf.
\end{align}$$

The coefficient ledger is

$$\begin{aligned}
P_X&=48mxy+216x^3+192mx^2+72m^2x+48mx+16m^3+32m^2,\\
Q_X&=4my+18x^2+2(5m-6)x-8m,\\
P_Y&=(288x^2+48mx)y+72x^3+48mx^2+24m^2x+48mx,\\
Q_Y&=(24x+4m)y+6x^2-2mx-12x,\\
P_Z&=-12xy+6x^2+6mx-4m.
\end{aligned}$$

No denominator $\Delta$ occurs. For $l\ge2$, $H>0$ in the exterior. The familiar gauge that fixes the induced conformal metric everywhere divides by $\Delta$ and becomes singular at the photon sphere; the KI fields and this reconstruction do not.

### Retain the Displacement Amplitude

Regge–Wheeler gauge alone, at a fixed coordinate wall, overconstrains the scalar problem. Instead,

$$\begin{align}
h_{\mu\nu}^{\rm tot}=h_{\mu\nu}+\mathcal L_{\delta X}\bar g_{\mu\nu}, \quad \delta X|_\Gamma=\zeta n,\quad \delta\gamma_{mn}=h_{mn}+2\zeta K_{mn}.
\end{align}$$

The two boundary conditions become

$$\begin{align}
\mathcal I+\alpha\zeta=0,\qquad \mathcal B+\mathcal J\zeta=0,
\end{align}$$

where all quantities below are evaluated at $r=\mathfrak r$:

$$\begin{align}
\mathcal I=F_{tt}+2fF,\qquad \alpha=-\frac{\sqrt f}{r}\Delta,
\end{align}$$

$$\begin{align}
\mathcal B= 2\sqrt f F' -\frac1{2\sqrt f}\left(F_{tt}'-\frac{f'}fF_{tt}\right) -\frac{fK}{2}F_{rr} -\frac{i\omega}{\sqrt f}F_{tr},
\end{align}$$

$$\begin{align}
\mathcal J= -\frac{\omega^2}{f}+\frac{\mathfrak L^2}{r^2} -\frac{f'^2}{4f}-\frac{2f}{r^2}+\frac3{\ell^2}.
\end{align}$$

For amplitudes $(c_S,\zeta)$, the spectral determinant is, up to an irrelevant sign,

$$\begin{align}
\mathcal R_S=\alpha\mathcal B-\mathcal J\mathcal I=0.
\end{align}$$

One must use the amplitude system when $c_S=0$; normalizing every solution to a nonzero master field would discard the pure boundary branch. The observable Weyl amplitude is

$$\begin{align}
\delta\boldsymbol\omega=F+\frac{\sqrt f}{r}\zeta, \qquad \mathcal J\delta\boldsymbol\omega =-32\pi^2G_N^2\bar T^{mn}\delta T_{mn}.
\end{align}$$

The boundary response is bulk-sourced except at $\bar T=0$.

## Exact Factorization and the Positive Boundary Contribution

At $r=r_{\rm ph}$, $\alpha=0$, so the determinant factorizes:

$$\begin{align}
\mathcal I\,\mathcal J=0,\qquad \mathcal J_{\rm ph} =\frac{\Omega_{\rm ph}^2(\mathfrak L^2-1)-\omega^2}{f_{\rm ph}}.
\end{align}$$

The boundary branch has

$$\begin{align}
\phi=0,\qquad \omega_{\rm bdy}^2=\Omega_{\rm ph}^2(\mathfrak L^2-1),\qquad \delta\boldsymbol\omega=\Omega_{\rm ph}\zeta.
\end{align}$$

These are boundary-moving diffeomorphisms, not a vanishing physical perturbation of the wall data.

The bulk branch satisfies

$$\begin{align}
\left[ \frac{\omega^2r_{\rm ph}^2}{f_{\rm ph}} -(\mathfrak L^2-1) +\frac{2f_{\rm ph}(\mathfrak L^2-2)}{\mathfrak L^4} \right]\phi -\frac{f_{\rm ph}(\mathfrak L^2-2)}{\mathfrak L^2} r_{\rm ph}\phi'=0.
\end{align}$$

On this branch, for $\mathcal J\ne0$, $\zeta=-r_{\rm ph}F/\sqrt{f_{\rm ph}}$ and $\delta\boldsymbol\omega=0$. Equation (2.83), $\mathcal B=r_{\rm ph}\mathcal JF/\sqrt{f_{\rm ph}}$, must be read on $\mathcal I=0$; it is not an off-shell identity for arbitrary reconstructed radial data.

**Checked:** substituting all App A polynomials and eliminating $\phi''$ with the master equation reproduces the Robin polynomial. The ratio $\mathcal I/\text{Robin}$ is $-f_{\rm ph}/r_{\rm ph}$. The $\mathcal B$-relation has zero residual after imposing that Robin condition.

Define

$$\begin{align}
D_S=\partial_{r^*}+S_S,\quad S_S=fH'/H,\quad \widetilde V_S=V_S+fS_S'-S_S^2 =\frac{fm\mathfrak L^2}{r^2H}>0.
\end{align}$$

At the photon wall the Robin condition becomes

$$\begin{align}
D_S\phi=(a_S\omega^2-b_S)\phi,\quad a_S=\frac{r_{\rm ph}\mathfrak L^2}{f_{\rm ph}m}>0,\quad b_S=\frac{\mathfrak L^2(\mathfrak L^2-1)}{mr_{\rm ph}}>0.
\end{align}$$

Assume a growing mode, so its ingoing radial profile decays as $r^*\to-\infty$. Integrate from a horizon regulator $r^*=-L_h$ first, then send $L_h\to\infty$. The boundary term survives at the finite wall:

$$\begin{align}
\int_{-\infty}^{r^*_{\rm ph}}\! \left(|D_S\phi|^2+\widetilde V_S|\phi|^2\right)dr^* +b_S|\phi_{\rm ph}|^2 =\omega^2\left[ \int_{-\infty}^{r^*_{\rm ph}}|\phi|^2dr^* +a_S|\phi_{\rm ph}|^2\right].
\end{align}$$

Both real forms are positive for a nontrivial $l\ge2$ mode; $\omega^2$ must be real positive, incompatible with ${\rm Im}\,\omega>0$. This argument tests unstable modes, for which the horizon integral converges. It does not place damped QNMs in the same square-integrable space.

**Checked:** both S-deformed potential identities vanish identically in Mathematica. The integral sign and Robin boundary weight follow by integration by parts; the argument requires the frequency-dependent boundary norm and does not follow from positivity of the original potential alone.

## Vector Sector and Asymptotic source/response Conditions

The vector equation has

$$\begin{align}
V_V=\frac f{r^2}\left(\mathfrak L^2-\frac{3\mu}{r}\right), \quad f_r^V=f^{-1}\partial_t\Phi^V,\quad f_t^V=\frac fr\partial_r(r\Phi^V).
\end{align}$$

There is no vector normal-displacement scalar. Transverse vector harmonics imply $\delta K=0$, and fixing the induced conformal class gives

$$\begin{align}
\phi+\mathfrak r\phi'=0.
\end{align}$$

With $S_V=f/r$,

$$\begin{align}
\widetilde V_V=\frac{f(\mathfrak L^2-2)}{r^2}>0,\qquad D_V\phi|_\Gamma=0.
\end{align}$$

The same growing-mode energy argument excludes instability for every finite $\mathfrak r>r_h$, $l\ge2$, in this vector problem.

App A also gives the vector response

$$\begin{align}
8\pi G_N\delta T_{ti} =-\frac{\sqrt f}{2r}(k_V^2-1)\Phi^V\mathbb V_i, \quad 8\pi G_N\delta T_{ij} =\frac r{2\sqrt f}\partial_t\Phi^V (\widehat D_i\mathbb V_j+\widehat D_j\mathbb V_i),
\end{align}$$

with $\delta T_{tt}=0$. Vanishing induced mixed metric does not set its normal derivative or this response to zero.

For scalar $\phi=A_\infty+B_\infty/r+\cdots$, the asymptotic determinant is

$$\begin{align}
\mathcal R_S= \frac{\mathfrak L^2-1-(\omega\ell)^2}{\ell^4} \left(B_\infty+\frac{3\mu}{\mathfrak L^2-2}A_\infty\right) +O(\mathfrak r^{-1}).
\end{align}$$

**Checked:** direct substitution of the reconstruction yields this coefficient. The boundary branch is $\omega\ell=\pm\sqrt{\mathfrak L^2-1}$; the bulk branch imposes the gravitational Robin source condition. The vector condition instead gives $A_\infty^V=0$, since the $B_\infty^V/r$ terms cancel.

These are master-field boundary relations appropriate to an undeformed asymptotic metric. They are not obtained by arbitrarily choosing Dirichlet on every KI variable. In the brane case the scalar bulk factor is $B_\infty+3r_h^3A_\infty/(k_S^2\ell^2)=0$, and the boundary factor is $\omega\ell=\pm k_S$.

## Large Angular Momentum: Three Separate Limits

### Isolated Turning Point: Airy Growth Away from the Photon Surface

At fixed wall away from $r_{\rm ph}$,

$$\begin{align}
\omega=\mathfrak L\Omega_{\mathfrak r} +C_{\mathfrak r}\nu\,\mathfrak L^{1/3} +O(\mathfrak L^{-1/3}), \quad C_{\mathfrak r} =\frac{|fU'|^{2/3}}{2\Omega_{\mathfrak r}} =\Omega_{\mathfrak r}\left(\frac{\Delta^2}{8f}\right)^{1/3}.
\end{align}$$

The horizon selects different local Airy branches on the two sides:

$$\begin{align}
e^{2\pi i/3}\operatorname{Ai}'(-e^{2\pi i/3}\nu) -4\nu^2\operatorname{Ai}(-e^{2\pi i/3}\nu)=0 \quad(\mathfrak r<r_{\rm ph}),
\end{align}$$

$$\begin{align}
\operatorname{Ai}'(-\nu)-4\nu^2\operatorname{Ai}(-\nu)=0 \quad(\mathfrak r>r_{\rm ph}).
\end{align}$$

The source's growing roots are respectively $-0.4042886500+0.1555613292i$ and $0.0674242621+0.4279049060i$.
**Checked:** substitution residuals are approximately $6\times10^{-11}$ and $2\times10^{-11}$, consistent with rounded digits. No claim of enumerating all complex roots is made.

The Airy width is

$$\begin{align}
\Delta r_{\rm Airy}\sim \left(\frac{f^2}{\mathfrak L^2|U'|}\right)^{1/3}.
\end{align}$$

If $\epsilon_K=r_{\rm ph}(K-K_{\rm ph})$, then
$C/\Omega_{\rm ph}\sim|\epsilon_K|^{2/3}/2^{1/3}$.
The growth law requires $\mathfrak L\epsilon_K^2\gg1$. Sending $\epsilon_K\to0$ inside that formula at fixed $\mathfrak L$ leaves its regime of validity.

Vector Airy boundary conditions use $\operatorname{Ai}'$ zeros and have no positive-imaginary roots of these leading forms.

### Coalescing Turning Points: Uniform Parabolic-Cylinder Problem

Set

$$\begin{align}
r=r_{\rm ph}+\frac y{\sqrt{\mathfrak L}},\quad \mathfrak r=r_{\rm ph}+\frac{\mathfrak y}{\sqrt{\mathfrak L}},\quad \omega=\Omega_{\rm ph}\mathfrak L+W,\quad a=\frac1{r_{\rm ph}^4f_{\rm ph}^2}.
\end{align}$$

The leading equation and scalar boundary condition are

$$\begin{align}
\phi''+\left(ay^2+\frac{2\Omega_{\rm ph}}{f_{\rm ph}^2}W\right)\phi=0, \qquad \mathfrak y\phi'(\mathfrak y) +\frac2a q(\mathfrak y)^2\phi(\mathfrak y)=0.
\end{align}$$

Here $q(y)$ denotes the coefficient in parentheses, not the brane momentum used later. The ingoing solution is

$$\begin{align}
\phi=D_{\nu_{\rm PC}}\!\left(-e^{-i\pi/4}(4a)^{1/4}y\right), \qquad \nu_{\rm PC}=-\frac12+\frac{iW}{\Omega_{\rm ph}}.
\end{align}$$

Both terms of the determinant are retained in this scaling. At $\mathfrak y=0$, it becomes $W^2D_\nu(0)=0$: two roots coincide only at leading order, plus a damped tower.

The exact boundary root has

$$\begin{align}
W_{\rm bdy}=-\frac{\Omega_{\rm ph}}{2\mathfrak L} +O(\mathfrak L^{-3}),
\end{align}$$

and the source's bulk root has

$$\begin{align}
W_{\rm bulk}= \frac{f_{\rm ph}}{r_{\rm ph}\sqrt{\mathfrak L}} \frac{\Gamma(3/4)}{\Gamma(1/4)}e^{-i\pi/4} +O(\mathfrak L^{-1}).
\end{align}$$

The scalar tower is $W_n=-i\Omega_{\rm ph}(2n+3/2)$; the vector Neumann tower is $W_n^V=-i\Omega_{\rm ph}(2n+1/2)$. Mathematica checks the first five corresponding Dirichlet and Neumann PC values at zero, and the quoted coefficient $0.2389943987(1-i)$.

Near, rather than at, $\mathfrak y=0$, the leading determinant produces

$$\begin{align}
W^2= -\mathfrak y\, \frac{\Omega_{\rm ph}^2(4a)^{1/4}}{4\sqrt2} e^{-i\pi/4}\frac{\Gamma(3/4)}{\Gamma(1/4)} +O(|\mathfrak y|^{3/2}).
\end{align}$$

This square-root splitting and the finite-$\mathfrak L$ corrections distinguish the uniform approximation from an exact degeneracy theorem.

App D supplies the WKB chain: ingoing horizon wave → rotated inner Airy solution → forbidden-barrier mixture → outer Airy solution. The outer mixture is $\operatorname{Ai}(-\zeta)+(i/4)e^{-2\mathfrak LJ}\operatorname{Bi}(-\zeta)$, where $J$ is the barrier integral. Dropping the Bi term requires separated turning points with $\mathfrak LJ\gg1$. WKB alone fails in widths $\mathfrak L^{-2/3}$ near a simple turning point and $\mathfrak L^{-1/2}$ near the maximum.

### Removing the Finite Wall

Define $\chi=\mathfrak L\ell^2/\mathfrak r^2$. In the joint large-wall, large-angular-momentum limit,

$$\begin{align}
\omega\ell=\mathfrak L+\frac\chi2 +\nu_{\rm ext}(\chi/2)^{1/3}+O(\chi^{-1/3}) \qquad(\chi\gg1).
\end{align}$$

For $\chi\ll1$, the asymptotic boundary factorization must be taken first. Stable asymptotic branches therefore do not imply uniform suppression of every large-$l$ finite-wall growth rate. The parameter $\chi$, rather than the words “near infinity”, specifies the ordering.

## Horizon Limit and the Fluid Branches

At finite $\mathfrak L$, let $\delta=\mathfrak r-r_h$. Then

$$\begin{align}
\delta=\frac{\kappa_h}{2K^2}+O(K^{-4}), \quad \omega_{\rm sound} =\pm\frac{\mathfrak L\kappa_h}{\sqrt2|Kr_h|} -\frac{i(\mathfrak L^2-2)\kappa_h}{4|Kr_h|^2} +O(|Kr_h|^{-3}),
\end{align}$$

$$\begin{align}
\omega_{\rm shear} =-\frac{i(\mathfrak L^2-2)\kappa_h}{2|Kr_h|^2} -\frac{3i\kappa_h(\mathfrak L^2-2) (\ell^2\mathfrak L^2+12r_h^2)} {16\ell^2|Kr_h|^4} +O(|Kr_h|^{-6}).
\end{align}$$

The curvature shift $-2$ remains at finite $l$. Local boundary observers measure $\omega_{\rm loc}=\omega/\sqrt f$ and $k_{\rm loc}=\mathfrak L/\mathfrak r$; the local sound speed tends to $1/\sqrt2$. Static-time frequencies tending to zero are redshifted, not disappearing degrees of freedom.

The first scalar ingoing Frobenius coefficient is obtained directly by inserting $s^p(1+a_1s+\cdots)$, $p=-i\omega/(2\kappa_h)$, into the master ODE:

$$\begin{align}
a_1= -\frac{i\omega}{4r_h^2\kappa_h^2} +\frac{(\mathfrak L^4-2\mathfrak L^2+3)\ell^4 +12\ell^2r_h^2+9r_h^4} {2\ell^4r_h^2(\mathfrak L^2+2r_h\kappa_h)(\kappa_h-i\omega)}.
\end{align}$$

**Checked:** the recurrence residual vanishes. Special resonant denominators require a different Frobenius treatment.

To obtain the full Rindler spectrum, take $K,\mathfrak L\to\infty$ at fixed $q_{\cal R}=\mathfrak L/|Kr_h|$, rather than extrapolating the finite-$l$ expansion beyond its order. With $\widehat\omega=\omega/\kappa_h$, the scalar determinant is

$$\begin{align}
\left[2q_{\cal R}^4+2\widehat\omega^2(1+\widehat\omega^2) +q_{\cal R}^2(-1+i\widehat\omega-4\widehat\omega^2)\right] J_{-i\widehat\omega}(-iq_{\cal R}) -iq_{\cal R}^3J_{1-i\widehat\omega}(-iq_{\cal R})=0.
\end{align}$$

The vector determinant is
\(J_{-1-i\widehat\omega}(-iq_{\cal R})
-J_{1-i\widehat\omega}(-iq_{\cal R})=0\).
At small $q_{\cal R}$:

$$\begin{align}
\widehat\omega_{\rm sound}=\pm q_{\cal R}/\sqrt2-iq_{\cal R}^2/4+\cdots,\quad \widehat\omega_{\rm shear}=-iq_{\cal R}^2/2+\cdots, \quad \widehat\omega_+=i-iq_{\cal R}^2/2+\cdots.
\end{align}$$

**Checked:** numerical Bessel roots at $q_{\cal R}=0.02,0.01$ reproduce all three displayed families to their stated orders. The positive soft root remains; removing the unbounded high-$l$ growth does not remove every instability. The source also gives the split soft roots near $-i$, scalar QNM-like tower $n\ge2$, and vector tower $n\ge1$, with corrections of order $q_{\cal R}^{2n}$. Those general tower corrections remain Source-derived.

## Black-Brane Appendix: a Reusable Finite-Wall Calculation

Use $z=r_h/r$, $g=1-z^3$, $\varpi=\omega\ell^2/r_h$, $q=k\ell^2/r_h$. The physical $k=k_{S,V}/\ell$. Both $\varpi,q\ll1$ are required for hydrodynamics.

The scalar ODE is

$$\begin{align}
\phi_S''-\frac{3z^2}{g}\phi_S' +\left[\frac{\varpi^2}{g^2} -\frac{q^6+3q^4z+9q^2z^2+9z^3+18} {g(q^2+3z)^2}\right]\phi_S=0.
\end{align}$$

The finite-wall condition is $\mathcal C_1\phi_S+\mathcal C_2\phi_S'=0$, with polynomial coefficients in App C.1; in particular

$$\begin{align}
\mathcal C_2=-2q^2g^2(q^2+3z) \left[-9z^4+q^2(4-7z^3)-4\varpi^2\right].
\end{align}$$

The full $\mathcal C_1$ was included, without truncation, in the CAS boundary expansion. The vector ODE and wall condition are

$$\begin{align}
g^2\phi_V''-3z^2g\phi_V' +[\varpi^2+g(3z-q^2)]\phi_V=0, \qquad \phi_V-\mathfrak z\phi_V'=0.
\end{align}$$

Both select $(1-z)^{-i\varpi/3}$ at the horizon. App C obtains

$$\begin{align}
\varpi_{\rm sound} =\pm\sqrt{\frac{1-\mathfrak z^3}{2}}\,q -\frac i6(1-\mathfrak z^3)q^2+O(q^3),
\end{align}$$

$$\begin{align}
\varpi_{\rm shear} =-\frac i3(1-\mathfrak z^3)q^2+O(q^4).
\end{align}$$

**Checked:** expand $q=\epsilon\widetilde q,\varpi=\epsilon\widetilde\varpi$ for sound, and $\varpi=\epsilon^2\widetilde\varpi$ for shear. The source's scalar $\phi_0=1/z$, first-order logarithmic solution and vector $\phi_0=z$, second-order arctangent/logarithmic solution solve the corresponding ODEs. Substitution into the exact finite-wall residual gives

$$\begin{align}
\mathcal R_S^{(2)} =81z^6[2\widetilde\varpi^2-(1-z^3)\widetilde q^2],
\end{align}$$

$$\begin{align}
\mathcal R_S^{(3)}\big|_{\rm leading} =54\widetilde\varpi z^6 [6\widetilde\varpi_1+i(1-z^3)\widetilde q^2],
\end{align}$$

and the vector condition vanishes for $\widetilde\varpi=-i(1-z^3)\widetilde q^2/3$. The expansion is at fixed $0<\mathfrak z<1$; uniformity of the radial master-field series at $z=0$ is not inferred.

Convert to local frequency, momentum and Tolman temperature before comparing transport:

$$\begin{align}
\omega_{\rm loc}=-iD_{\rm loc}k_{\rm loc}^2+\cdots,\quad D_{\rm loc}T_{\rm loc}=\frac1{4\pi}.
\end{align}$$

At infinity, $\omega_{\rm sound}=\pm k/\sqrt2-ik^2/(8\pi T)+\cdots$, $\omega_{\rm shear}=-ik^2/(4\pi T)+\cdots$. The spherical analogues replace the damping eigenvalue by $\mathfrak L^2-2$; recovering CFT hydrodynamics requires $h=r_h/\ell\gg1$ at fixed $l$.

## Global Continuation: What the Numerical Evidence Establishes

The paper follows sound and shear roots while changing $\mathfrak r$ at fixed background and momentum. A finite-wall sound branch can cease to be hydrodynamic along the route, even if its near-horizon starting point is hydrodynamic.

For the brane, reported endpoints include $\varpi=0.36211333-0.04038667i$ at $q=0.5$ for sound, $3.142521-0.414508i$ at $q=3.213$, and $-0.05407056i$ at $q=0.4$ for shear. These are **Source-derived numerical results** here.

For the spherical sound branch, reported photon-sphere crossings lie on the bulk branch, hence have zero boundary Weyl amplitude. At $h=1,l=2$, independent shooting in this run gives

$$\begin{align}
\omega\ell\simeq2.16535406286-0.27733911613i.
\end{align}$$

**Checked, finite numerical evidence:** integrate the factored master ODE from $r=1+\eta$ to $r_{\rm ph}=3$, with the analytically verified first Frobenius coefficient, at $\eta=10^{-5},10^{-6},10^{-7}$. The roots agree to about nine decimals and reproduce the source's six-digit table entry. Precision warnings during FindRoot limit any claim beyond this convergence evidence; the displayed 30-digit working arithmetic is not a 30-digit certified root.

The full continuation and asymptotic tables were not independently recomputed. The source's sound continuations to infinity are reported explicitly for $h=1,2,3$; larger-$h$ asymptotic roots are computed separately. In the vector examples $h=2,3,5,10,l=2$, the reported branch remains purely damped. This evidence does not prove absence of other collisions or a unique global mode identification for every parameter.

## The Homogeneous Exception and Its Nonlinear Continuation

App B uses Birkhoff's theorem: there is no propagating spherical bulk graviton, but a moving timelike wall remains dynamical. Distinguish bulk static time $T$, boundary time $t$, conformal time $s=\Omega_Rt$, and proper time $d\tau=a\,ds$, with $a=Re^{\boldsymbol\omega}$. Then

$$\begin{align}
\beta=\sqrt{f(a)+\dot a^2},\quad \dot T=\beta/f(a),\quad \dot a=\boldsymbol\omega', \quad K_R=\frac{\ddot a+f'(a)/2}{\beta}+\frac{2\beta}{a}.
\end{align}$$

The conserved quantity is

$$\begin{align}
\mathcal C=a^2\beta-\frac{K_Ra^3}{3},\quad E_{\rm conf}=-\frac{\Omega_R}{G_N}\mathcal C,
\end{align}$$

$$\begin{align}
\dot a^2= \left(\frac{K_R^2}{9}-\frac1{\ell^2}\right)a^2 -1+\frac{\mu+\frac23K_R\mathcal C}{a} +\frac{\mathcal C^2}{a^4}, \quad \beta=\frac{K_Ra}{3}+\frac{\mathcal C}{a^2}>0.
\end{align}$$

The last inequality selects the outward-normal, future-directed branch and is lost if the equation is squared indiscriminately.

At $R=r_{\rm ph},\mathcal C=0$,

$$\begin{align}
\dot a^2=\frac{(a-r_{\rm ph})^2(a+2r_{\rm ph})} {3r_{\rm ph}^2a},\quad (\boldsymbol\omega')^2=\frac{e^{2\boldsymbol\omega}-3+2e^{-\boldsymbol\omega}}3, \quad \boldsymbol\omega''=\frac{e^{2\boldsymbol\omega}-e^{-\boldsymbol\omega}}3.
\end{align}$$

The exact solution is

$$\begin{align}
e^{\boldsymbol\omega} =\frac{(1+z)^2}{1-4z+z^2},\quad z=Ae^{\pm s},
\end{align}$$

restricted to the component with positive conformal factor and $a>r_h$. **Checked:** both nonlinear differential equations vanish on this expression; the radial factorization also agrees. At small $A$, $\boldsymbol\omega=6Ae^{\pm\Omega_{\rm ph}t}+\cdots$. Thus an $l=0$ growing boundary mode survives at the exactly umbilic wall. A generic growing-plus-decaying combination has nonzero $\mathcal C$ at quadratic order. The zero-energy exact trajectory is a special invariant sector, not a general nonlinear bulk/boundary factorization.

## Transfer to the Vault and Verification Boundary

The main reusable objects are the amplitude system $(c_S,\zeta)$, the regular determinant, the explicit asymptotic source condition, and the positive wall contribution $a_S|\phi|^2$ in the stability identity. In an AdS quantization calculation, keep these boundary amplitudes and spectral weights before mode elimination. A boundary displacement is not an independent oscillator without a nondegenerate canonical form and a Hamiltonian analysis.

The paper provides no full covariant symplectic form, quantization of the Weyl branch, self-adjoint extension for the dissipative horizon problem, or nonlinear initial-boundary-value theorem. A stable QNM sector and a correct reconstruction formula do not establish those additional structures.

**Verified:** xCoba background Einstein equations; optical/umbilic/stress identities; both S-deformed potentials; scalar KI-to-Robin reduction; the branch-conditioned Weyl decoupling; exact asymptotic determinant coefficient; rounded Airy roots; first five PC parity values; horizon Frobenius coefficient; Rindler sound/shear/positive-soft roots at two small momenta; fixed-wall black-brane hydrodynamic ODE and residual expansions; exact homogeneous nonlinear solution; one photon-sphere QNM with three horizon regulators.

**Assumptions:** $r_h,\ell>0$, $r_h<r\le\mathfrak r$, $l\ge2$ for KI and stability; $e^{-i\omega t}$, outward $+\sqrt f\,\partial_r$, fixed conformal representative and $K$; future-ingoing horizon data; explicitly ordered WKB, PC, hydrodynamic, large-$h$ and wall limits. The homogeneous analysis uses its separate sector and clocks.

**Failed:** no source claim failed the executed checks. Applying Eq (2.83) off its bulk boundary condition gives a nonzero residual; imposing the stated branch resolves it. An initial local shooting script used an incorrect simplified Frobenius coefficient; it was corrected before the reported convergence check and is not a source defect.

**Blocked:** no remaining retrieval or computation-service obstruction. The absent full continuation data/solver history prevent certification of the entire numerical trajectories from the published plots alone.

**Not verified:** full independent tensor derivation of the KI reconstruction, all high-order asymptotic coefficients, every complex root, all reported QNM trajectories, nonlinear well-posedness, covariant charges/norms and quantum interpretation. The checks reproduce explicit portions of the calculation rather than certify every source theorem.

PDF viewer pages 12, 15, 16, 27 and 42 were rendered and visually inspected, including the stability boundary term and numerical table. TeX supplies the exact reconstruction polynomials. All PDF/source/render/CAS artifacts remain outside the vault; no existing note was changed.
