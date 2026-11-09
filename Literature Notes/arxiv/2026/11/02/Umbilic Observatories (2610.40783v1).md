---
paper id: 2610.40783v1
title: Umbilic Observatories
authors:
  - Dionysios Anninos
  - Raúl Arias
  - Damián A. Galante
publication date: 2026-10-29
abstract: |-
  The authors study four-dimensional Minkowski gravity with a timelike dS3 hyperboloid as a finite umbilic boundary. They derive the independent boundary Weyl equation, reduce the bulk scalar and vector master fields to a time-dependent Pöschl–Teller problem, obtain reflection and energy estimates, and compare conformal and Dirichlet boundary conditions. Inner-region master-field stability is distinct from the growing boundary Weyl branch and the outer-region bound states.
comments: "22 pages + appendices"
url: https://arxiv.org/abs/2610.40783v1
summary: "A solvable moving gravitational boundary with an independent Weyl mode, positive inner-region master-field boundary energy, and explicit distinctions between inner and outer spectra."
tags: []
---

# A Moving Umbilic Wall with Independent Weyl Data

**Correct under the following conditions:** for the inner region, the stated scalar and vector master-field boundary problems have positive non-increasing energy, with an amplification constant independent of $l$. This excludes the angular-momentum-dependent exponential instability of a static spherical cavity. It does not mean every metric or Weyl perturbation decays. The independent boundary Weyl sector has solutions growing as $e^{|\tau|}$, and the outer region supports additional growing bound states.

Immediate use: this gives a simpler flat-space model in which one can explicitly keep a boundary displacement, identify its independent initial data, and see how a dynamical spectral boundary condition contributes positive boundary energy. It complements the photon-sphere calculation without assuming that a classical boundary datum is already a quantum oscillator.

All source claims are **Source-derived** except the **Checked** calculations specified below.

## Source Tree and How to Read the Paper

Official [abstract](https://arxiv.org/abs/2610.40783v1), [PDF](https://arxiv.org/pdf/2610.40783v1), and [TeX](https://arxiv.org/src/2610.40783v1) were retrieved. The technical structure includes all five appendices; page numbers below are printed pages, one greater than the PDF viewer index because the title page is unnumbered.

| Source | Purpose, definitions and dependencies | Reading role |
|---|---|---|
| §1, pp2–4 | Motivation: remove high-$l$ growth using umbilicity; distinguish boundary conditions from background geometry | Orientation |
| §2 and §2.1, pp4–6 | York action; stress tensor and constraints; Minkowski hyperboloid, orientation and conformal representative | Essential |
| §3, pp6–8 | Allowed versus boundary-moving diffeomorphisms; Weyl equation and decoupling | Essential |
| §3.1, pp8–10 | $l=0,1$, Legendre $l\ge2$, growth and antipodal parity; outer patch | Essential |
| §3.2, pp10–11 | Nonlinear constant-scalar-curvature examples, not generic bulk solutions | Reference and claim boundary |
| §§4.1–4.2, pp11–14 | Low harmonics, Poincaré sectors, KI reconstruction and Pöschl–Teller modes | Essential bulk construction |
| §4.3, pp14–16 | Separate conformal-class conditions, $\delta K$, displacement and free data | Central derivation |
| §4.4, pp16–18 | Reflection, excluded inner imaginary momenta, logarithmic modes, outer bound state | Essential spectral analysis |
| §4.5, p18 | Scalar and vector boundary energies, uniform $l$-bound | Central estimate |
| §4.6, pp18–20 | Regularity-dependent tails and displacement memory | Application |
| §5, pp20–22 | Dirichlet subset, inhomogeneous data and derivative loss; speculative symmetry/Euclidean discussion | Essential comparison |
| App A, pp22–24 | Low-mode diffeomorphisms, singular charge sectors, compensators and Brown–York charges | Charge reference |
| App B, pp24–27 | Weyl, scalar and vector stress tensors; traces, conservation and corner data | Response dictionary |
| App C, pp27–28 | KI invariants, master fields and gauge transformation back to boundary variables | Reconstruction reference |
| App D, pp28–29 | Darboux intertwiner, kernel/resonance and late-time tails | Technical reference |
| App E, pp29–31 | Compact pulse, numerical scheme, grids, energy and displacement | Finite numerical illustration |

Read §§2–4.5, then App B for a charge/response calculation. App C fixes normalizations. App D and E are needed for the late-time statements; these require more than finite energy alone. The nonlinear and asymptotic-symmetry proposals do not replace the linear initial-data analysis.

## Action, Conformal Representative and Geometry

In $d+1$ dimensions, with a timelike wall $\Gamma$,

$$\begin{align}
I=\frac1{16\pi G_N}\int_{\mathcal M}\sqrt{-g}\,R +\frac1{8\pi G_Nd}\int_\Gamma\sqrt{-\gamma}\,K, \qquad K_{mn}=\tfrac12\mathcal L_n\gamma_{mn}.
\end{align}$$

Conformal boundary conditions fix $[\gamma]_{mn}$ and $K$, with $\gamma=e^{2\boldsymbol\omega}[\gamma]$. The stress density is

$$\begin{align}
T_{mn}=-\frac{e^{(d-2)\boldsymbol\omega}}{8\pi G_N} \left(K_{mn}-\frac Kd\gamma_{mn}\right).
\end{align}$$

For constant $K$, it is conserved and traceless with respect to the conformal representative. The general momentum constraint is

$$\begin{align}
\mathcal D^mT_{mn} =-\frac{d-1}{8\pi dG_N}e^{d\boldsymbol\omega}\mathcal D_nK.
\end{align}$$

The normal constraint gives

$$\begin{align}
\mathcal D^2\boldsymbol\omega +\frac{d-2}{2}(\mathcal D\boldsymbol\omega)^2 -\frac{R_\Gamma}{2(d-1)} -\frac{64\pi^2G_N^2}{2(d-1)}T^{mn}T_{mn}e^{-2(d-1)\boldsymbol\omega} +\frac{K^2}{2d}e^{2\boldsymbol\omega}=0.
\end{align}$$

Specialize to $d=3$, $\Lambda=0$. In the spacelike wedge $r>|t|$, define

$$\begin{align}
t=\rho\sinh\tau,\qquad r=\rho\cosh\tau, \qquad ds^2=d\rho^2+\rho^2(-d\tau^2+\cosh^2\tau\,d\Omega_2^2).
\end{align}$$

The wall is at $\rho=R$, with $R=\mathfrak r$ in the paper. The outward normal is $\sigma\partial_\rho$:

$$\begin{align}
\sigma=+1:\ 0<\rho\le R,\qquad \sigma=-1:\ R\le\rho<\infty,
\end{align}$$

$$\begin{align}
\bar\gamma_{mn}=R^2g^{\rm dS_3}_{mn},\quad \bar K_{mn}=\frac{\sigma}{R}\bar\gamma_{mn},\quad K=\frac{3\sigma}{R},\quad \bar T_{mn}=0,\quad R_\Gamma=\frac6{R^2}.
\end{align}$$

Thus $\Gamma$ is a moving hyperboloid, not a static spherical cylinder. Its areal radius is $R\cosh\tau=\sqrt{R^2+t^2}$. The background is time dependent in $\tau$; a separation label $k$ introduced below is a spatial dilation momentum, not a conserved time frequency.

**Checked:** xCoba returns $R_\Gamma=6/R^2$ and $\mathcal D^2w(\tau)=-R^{-2}(w''+2\tanh\tau\,w')$. The umbilic extrinsic curvature follows immediately from the normal derivative of the warp factor.

## The Independent Boundary Weyl Sector

Allowed gauge transformations have $\xi_\perp|_\Gamma=0$ and preserve the boundary data. A normal displacement with nonzero $\xi_\perp|_\Gamma$ is not removed by that gauge quotient. Umbilicity implies

$$\begin{align}
\delta_\xi\gamma_{mn}=2\xi_\perp K_{mn},\qquad \delta_\xi\boldsymbol\omega=\frac K3\xi_\perp.
\end{align}$$

Because $\bar T=0$, the linearized constraint has no $T^{mn}\delta T_{mn}$ source:

$$\begin{align}
\left(\mathcal D^2+\frac3{R^2}\right)\delta\boldsymbol\omega=0.
\end{align}$$

The effective dS scalar mass is negative, $-3/R^2$. The total Weyl factor is fixed by its own two corner data for every spherical harmonic. It is independent of the bulk master-field initial data.

Let $\delta\boldsymbol\omega=w_l(\tau)Y_{lm}$. Then

$$\begin{align}
w_l''+2\tanh\tau\,w_l' +\left[l(l+1)\operatorname{sech}^2\tau-3\right]w_l=0.
\end{align}$$

For $l=0,1$,

$$\begin{align}
w_0=a_0\sinh\tau+b_0\frac{\cosh2\tau}{\cosh\tau},\qquad w_1=a_1\cosh\tau+ b_1\frac{\sinh\tau(2\cosh^2\tau+1)}{\cosh^2\tau}.
\end{align}$$

For $l\ge2$,

$$\begin{align}
w_l=\operatorname{sech}\tau \left[\alpha_lP_l^2(\tanh\tau)+\beta_lQ_l^2(\tanh\tau)\right].
\end{align}$$

The $P$ branch decays as $e^{-3|\tau|}$, while the $Q$ branch grows as $e^{|\tau|}$. Along the wall, $e^{|\tau|}\sim2|t|/R$. Thus there is no growth exponent diverging with $l$, but there is linear-in-$|t|$ boundary growth. For a perturbation of size $\varepsilon$, the growing branch leaves linear control at $t\sim R/\varepsilon$.

**Checked:** all four low-mode solutions, $P_l^2/\cosh\tau$ for $l=2,\ldots,6$, and real-branch $Q_l^2/\cosh\tau$ for $l=2,3,4$, solve the ODE exactly in Mathematica.

The $a_0,a_1$ normal profiles are the normal parts of Minkowski translations. A full Poincaré translation also includes a tangential conformal Killing vector, which can cancel its induced Weyl change; App A distinguishes these combinations. One must not interpret a background Killing vector as a nonzero metric perturbation.

An additional Beig–Schmidt-type antipodal parity condition in the outer asymptotic comparison removes the growing $\beta_l$ and translation profiles. That is extra data, not a consequence of finite-wall CBCs.

### Nonlinear Boundary Equation

Setting $T_{mn}=0$ nonlinearly yields the Lorentzian constant-scalar-curvature equation

$$\begin{align}
-\mathcal D^2\boldsymbol\omega -\tfrac12(\mathcal D\boldsymbol\omega)^2+\frac{R_\Gamma}{4} =\frac{K^2}{6}e^{2\boldsymbol\omega}.
\end{align}$$

For the inner patch $KR=3$, the homogeneous solutions include

$$\begin{align}
\boldsymbol\omega=-\ln(\cos\alpha-\sin\alpha\sinh\tau), \qquad \boldsymbol\omega=-\ln\sqrt3-\ln\cosh\tau.
\end{align}$$

**Checked:** both satisfy the boundary equation on intervals where the conformal factor is real and positive. The first becomes singular at finite conformal time when its logarithm argument vanishes. The second is the limiting static-cylinder/photon-sphere example.

These boundary solutions require a suitable vacuum infilling. The source identifies Minkowski fillings for translation-type solutions and Schwarzschild for the homogeneous mass-like family. Solving the scalar-curvature equation alone does not construct a general bulk metric or prove nonlinear umbilicity for angular-dependent data.

## Bulk Master Variables and the Boundary Displacement

### The Two Polarizations

For $l\ge2$, use the orbit metric $g_{ab}dy^ady^b=-\rho^2d\tau^2+d\rho^2$, area radius $r=\rho\cosh\tau$, scalar harmonic $\mathbb S=Y_{lm}$, and transverse vector harmonic $\mathbb V_i=(\star d\mathbb S)_i$.

In the KI gauge $f_a^S=H^S=H^V=0$,

$$\begin{align}
F=\frac14\Box_2\Phi^S,\quad F_{ab}=(D_aD_b-\tfrac12g_{ab}\Box_2)\Phi^S,\quad F^a_V=\frac1r\epsilon^{ab}D_b\Phi^V,\quad \epsilon_{\rho\tau}=\rho.
\end{align}$$

The explicit reconstruction is

$$\begin{aligned}
h^S_{\tau\tau}&=\tfrac12(\partial_\tau^2+ \rho^2\partial_\rho^2-\rho\partial_\rho)\Phi^S\mathbb S,\\
h^S_{\tau\rho}&=(\partial_\tau\partial_\rho-\rho^{-1}\partial_\tau)\Phi^S\mathbb S,\\
h^S_{\rho\rho}&=\tfrac12(\partial_\rho^2-\rho^{-1}\partial_\rho+ \rho^{-2}\partial_\tau^2)\Phi^S\mathbb S,\\
h^S_{ij}&=\frac{\rho^2\cosh^2\tau}{2} (\partial_\rho^2+\rho^{-1}\partial_\rho-\rho^{-2}\partial_\tau^2) \Phi^S\widetilde g_{ij}\mathbb S,\\
h^V_{\tau i}&=-\rho\partial_\rho\Phi^V\mathbb V_i,\qquad h^V_{\rho i}=-\rho^{-1}\partial_\tau\Phi^V\mathbb V_i.
\end{aligned}$$

Undoing the KI gauge can involve a normal diffeomorphism nonzero at the wall. Therefore the full perturbation is the two master-field pieces plus $\mathcal L_\xi\bar g$; KI invariants alone omit the physical boundary mode.

Both master fields satisfy

$$\begin{align}
\Box_2\left(\frac{\Phi}{\rho\cosh\tau}\right) -\frac{l(l+1)}{\rho^2\cosh^2\tau} \frac{\Phi}{\rho\cosh\tau}=0.
\end{align}$$

Define

$$\begin{align}
x=\ln(\rho/R),\qquad \psi=\frac{\Phi}{\rho\cosh\tau},\qquad V_l(\tau)=l(l+1)\operatorname{sech}^2\tau.
\end{align}$$

Then

$$\begin{align}
\psi_{\tau\tau}-\psi_{xx}+V_l(\tau)\psi=0.
\end{align}$$

The inner domain is $x\le0$. Spatial plane-wave labels $e^{ikx}$ have time functions

$$\begin{align}
u_k''+(k^2+V_l)u_k=0,\qquad u_k=\prod_{j=l}^{1}(j\tanh\tau-\partial_\tau)e^{ik\tau},
\end{align}$$

with the ordered product acting from $j=1$ upwards. For $l=2$,

$$\begin{align}
u_k=(3\tanh^2\tau-3ik\tanh\tau-1-k^2)e^{ik\tau}.
\end{align}$$

**Checked:** the recursion solves the PT ODE for $l=1,\ldots,6$ and arbitrary symbolic $k$. Exceptional $k=0,\pm ij$ require an independent Legendre second solution, since $u_k,u_{-k}$ become dependent. A single real-$k$ plane wave is not finite-energy on a half-line; finite-energy spectral statements concern wave packets.

### Conformal-Class Conditions Before $\delta K$

For the scalar reconstruction, matching temporal and angular Weyl factors gives

$$\begin{align}
\partial_\rho^2\Phi^S|_R=0 \quad\Longleftrightarrow\quad (\psi_{xx}+\psi_x)|_0=0.
\end{align}$$

Using the bulk equation, this is the dynamical wall condition

$$\begin{align}
(\psi_{\tau\tau}+V_l\psi+\psi_x)|_0=0.
\end{align}$$

For vectors,

$$\begin{align}
\partial_\rho\Phi^V|_R=0 \quad\Longleftrightarrow\quad (\psi_x+\psi)|_0=0.
\end{align}$$

The vector $\delta K$ vanishes by angular transversality. In the scalar sector, define

$$\begin{align}
\delta\boldsymbol\omega^S=\tfrac14\Box_2\Phi^S|_R,\qquad \delta\boldsymbol\omega_l= \delta\boldsymbol\omega^S+\frac K3\xi_\perp.
\end{align}$$

Once the conformal-class condition holds, the total mean-curvature constraint is exactly the free Weyl equation for $\delta\boldsymbol\omega_l$. It determines

$$\begin{align}
\xi_\perp|_R=\frac3K (\delta\boldsymbol\omega_l-\delta\boldsymbol\omega^S).
\end{align}$$

It does not add an independent fourth-order condition on the bulk master field. Free data are the two bulk polarization Cauchy data plus two Weyl corner data for each harmonic. This separation is special to the umbilic background; CBCs do not require the perturbed boundary to stay umbilic.

## The Spectral Problem on the Two Half-Lines

For $e^{ikx}+\mathcal R e^{-ikx}$, the wall conditions imply

$$\begin{align}
\mathcal R_S=\frac{1+ik}{1-ik},\qquad \mathcal R_V=-\frac{1+ik}{1-ik}.
\end{align}$$

**Checked:** both moduli are one for real $k$; the phase is independent of $l$ and $\tau$. This is reflection in the dilation coordinate, not an autonomous global time-frequency S matrix.

For an inner decaying exponential $e^{\kappa x}$, $\kappa>0$, the boundary polynomials are

$$\begin{align}
\mathcal B_S:\ \kappa(\kappa+1)=0,\qquad \mathcal B_V:\ \kappa+1=0.
\end{align}$$

Neither permits $\kappa>0$. The $k=0$ constant/linear functions are not separate finite-energy eigenfunctions for $l\ge2$. Polynomial logarithmic dressings $x^ne^{\kappa x}$ do not supply new discrete modes: the allowed roots are simple, so generalized chains fail the combined PDE and wall condition. General logarithmic tails in initial data can still enter through the continuum.

On the outer half-line $x\ge0$, finite energy selects $e^{-\kappa x}$; now the polynomials are $\kappa(\kappa-1)$ and $\kappa-1$. Both admit $\kappa=1$:

$$\begin{align}
\psi=\frac R\rho \left[\alpha_lP_l^1(\tanh\tau)+\beta_lQ_l^1(\tanh\tau)\right].
\end{align}$$

The second time branch grows as $e^{|\tau|}$. The inner energy argument cannot be transferred with the same sign to the outer region.

## Positive Boundary Energy and Its Precise Meaning

Start with

$$\begin{align}
E_{\rm bulk} =\frac12\int_{-\infty}^0 (\psi_\tau^2+\psi_x^2+V_l\psi^2)\,dx.
\end{align}$$

Regulate first at $x=-X$, retain the flux there, and remove it by finite propagation/decay before taking $X\to\infty$. At $x=0$, the flux is $\psi_\tau\psi_x$. The wall conditions convert it to the derivatives of

$$\begin{align}
E_\Gamma^S=\tfrac12(\psi_\tau^2+V_l\psi^2)|_0,\qquad E_\Gamma^V=\tfrac12\psi^2|_0.
\end{align}$$

Hence

$$\begin{align}
\frac{dE^S}{d\tau} =\frac{V_l'}2\left(\int_{-\infty}^0\psi^2dx+\psi(0)^2\right), \quad \frac{dE^V}{d\tau} =\frac{V_l'}2\int_{-\infty}^0\psi^2dx,
\end{align}$$

$$\begin{align}
V_l'=-2\tanh\tau\,V_l,\qquad E^{S,V}(\tau)\le E^{S,V}(0)\quad(\tau\ge0).
\end{align}$$

**Checked:** substituting the scalar dynamical wall condition and vector Robin condition cancels the boundary fluxes with exactly these signs. The resulting bound has amplification constant 1 for every $l$, although the initial energy itself contains the $l$-dependent weight.

This is an estimate in the specified master-field energy. As $V_l\to0$, it does not uniformly control an unweighted pointwise $\psi$ value or every metric derivative without additional regularity. It also says nothing about the independent Weyl energy. The metric reconstruction contains the factor $\rho\cosh\tau$; bounded master energy is not a statement that all reconstructed components decay.

### Independent Finite Pulse Evolution

The source uses a smooth bump supported at $-3<x<-1$, with

$$
\psi(0,x)=\mathfrak b(x+2),\qquad
\psi_\tau(0,x)=\tfrac12\mathfrak b(x+2),\qquad
\mathfrak b(s)=
\begin{cases}e^{4-4/(1-s^2)},&|s|<1,\\0,&|s|\ge1.\end{cases}
$$

**Checked, finite numerical evidence:** independently evolve $l=2$ to $\tau=6$ on $[-20,0]$, using second-order centered spatial differences and Mathematica time integration. The artificial left wall cannot return a signal within this time. The positive semidiscrete mass at the last scalar node is $1+\Delta x/2$; the vector endpoint has mass $\Delta x/2$ and an additional unit boundary spring. These implement the respective boundary energies directly.

| $\Delta x$ | scalar $\psi(6,0)$ | vector $\psi(6,0)$ |
|---|---|---|
| 0.04 | −0.3352559128 | 0.0989472658 |
| 0.02 | −0.3352554581 | 0.0989561177 |
| 0.01 | −0.3352553247 | 0.0989580729 |

The energy decreases at all sampled times in all six runs. Endpoint differences decrease on refinement; the vector differences have a ratio about 4.5. This is a bounded $l=2,\tau\le6$ reproduction, not a new all-$l$ numerical theorem or a reproduction of every source figure.

## Regularity-Dependent Tails and Displacement Memory

For initial data regular at the vertex $O$, the source uses $\psi=O(e^{(l+1)x})$ as $x\to-\infty$, stronger than finite energy. Near the wall at late times, the result is

$$\begin{align}
\psi_S|_0=u_\infty+(a_S+b_S\tau)e^{-\tau}+\cdots,\qquad \psi_V|_0=(a_V+b_V\tau)e^{-\tau}+\cdots.
\end{align}$$

App D derives these terms using the Darboux intertwiner acting on $\chi=F(x+\tau)+G(x-\tau)$. Its kernel produces resonant forcing of the free wall equation and the $\tau e^{-\tau}$ term. The constant scalar remnant is not a normalizable isolated $k=0$ eigenmode.

The induced scalar Weyl component is

$$\begin{align}
\delta\boldsymbol\omega^S =-\frac{\cosh\tau}{4R} \left(2\psi_{\tau\tau}+2\tanh\tau\,\psi_\tau+V_l\psi\right)|_0.
\end{align}$$

**Checked:** substituting the scalar tail gives $\delta\boldsymbol\omega^S\to b_S/(4R)$. With zero total Weyl data and $\sigma=+1$, the normal displacement tends to $-b_S/4$. This is a classical permanent displacement after radiation, conditional on the tail assumptions.

Finite energy alone permits tails $e^{\kappa x}$ with $0<\kappa<1$, singular at $O$, and weaker late-time control. The source explicitly allows Weyl contributions $t^{1-\kappa}$ in that case. The outer-region scalar bound state can induce a $t^2$ normal displacement even with homogeneous Dirichlet data.

## Stress Response, Low Harmonics and Charges

At $\bar T=0$, the pure total-Weyl response is

$$\begin{align}
8\pi G_N\delta T^{\omega}_{mn} =\frac3K\left(\mathcal D_m\mathcal D_n -\frac13\bar\gamma_{mn}\mathcal D^2\right) \delta\boldsymbol\omega.
\end{align}$$

For dS curvature $R_{mn}=2\bar\gamma_{mn}/R^2$, its divergence is proportional to $\mathcal D_n(\mathcal D^2+3/R^2)\delta\boldsymbol\omega$. It is conserved on the Weyl equation. **Checked with xCoba:** the trace-free Hessians of the temporal and spatial translation profiles vanish; the $l=2$, $3\operatorname{sech}^3\tau\,P_2(\cos\theta)$ response has zero divergence.

Its components include

$$\begin{align}
8\pi G_N\delta T^\omega_{\tau\tau} =\frac3K(\partial_\tau^2-1)\delta\boldsymbol\omega,\qquad 8\pi G_N\delta T^\omega_{\tau i} =\frac3K(\partial_\tau-\tanh\tau) \widetilde\nabla_i\delta\boldsymbol\omega.
\end{align}$$

For bulk modes at the wall, the App B response dictionary is

$$\begin{aligned}
8\pi G_N\delta T^S_{\tau\tau} &=\frac{\sigma}{4}(l-1)l(l+1)(l+2) \frac{\psi_S}{\cosh^3\tau}\mathbb S,\\
8\pi G_N\delta T^S_{\tau i} &=-\frac{\sigma}{4}(l-1)(l+2) \frac{\partial_\tau\psi_S}{\cosh\tau}\widetilde\nabla_i\mathbb S,\\
8\pi G_N\delta T^S_{ij} &=-\frac3K\delta\boldsymbol\omega^S (\widetilde\nabla_i\widetilde\nabla_j-\tfrac12\widetilde g_{ij} \widetilde\nabla^2)\mathbb S\\
&\quad+\frac{\sigma}{8}(l-1)l(l+1)(l+2) \frac{\psi_S}{\cosh\tau}\widetilde g_{ij}\mathbb S,\\
8\pi G_N\delta T^V_{\tau\tau}&=0,\\
8\pi G_N\delta T^V_{\tau i} &=\frac{\sigma}{2}(l-1)(l+2) \frac{\psi_V}{\cosh\tau}\mathbb V_i,\\
8\pi G_N\delta T^V_{ij} &=-\frac{\sigma}{2}\partial_\tau(\cosh\tau\,\psi_V) (\widetilde\nabla_i\mathbb V_j+\widetilde\nabla_j\mathbb V_i).
\end{aligned}$$

The scalar response includes the compensating displacement that removes the scalar master field's own Weyl change. The source gives traceless conserved tensors for arbitrary wall functions $\psi_{S,V}$; the full independent symbolic verification of these two generic tensors was not performed here.

For $l=0,1$, regular vacuum perturbations inside $O$ have zero linearized bulk Poincaré charge by shrinking the constraint surface to the regular vertex. Singular mass, momentum, dipole and angular-momentum sectors are treated separately in App A and can occur in the outer region; they are not locally pure-gauge curvature perturbations merely because their harmonic number is small.

The conformal boundary charges are

$$\begin{align}
Q[\zeta]=R^2\cosh^2\tau\int d\Omega\, \delta T_{mn}\zeta^mu^n,\qquad u=R^{-1}\partial_\tau.
\end{align}$$

For the $+\partial_\rho$ orientation,

$$\begin{align}
Q[\partial_t]=M+\frac{Rb_0}{G_N},\quad Q[\partial_z]=-P_z+\frac{Rb_1}{G_N},\quad Q[z\partial_t+t\partial_z]=D_z,\quad Q[\partial_\varphi]=-J_z.
\end{align}$$

The outer outward normal flips the overall signs. **Checked:** the $b_0$ stress is $8\pi G_N\delta T_{\tau\tau}=2Rb_0/\cosh^3\tau$; integrating the temporal and $m=0$ spatial profiles gives $Rb_{0,1}/G_N$. The source's full compensating diffeomorphisms for $M,D,P,J$ remain Source-derived.

## Dirichlet Data and the Limits of the Interpretation

Homogeneous Dirichlet data set $\delta\gamma_{mn}=0$, hence total $\delta\boldsymbol\omega=0$. Linearize the Hamiltonian constraint while retaining $\delta K$:

$$\begin{align}
\mathcal D^2\delta\boldsymbol\omega +\frac3{R^2}\delta\boldsymbol\omega+\frac K3\delta K=0.
\end{align}$$

Since $K\ne0$, Dirichlet then implies $\delta K=0$ on this background. The bulk scalar/vector boundary conditions and inner energy estimate are unchanged; the independent corner Weyl data are removed, and

$$\begin{align}
\xi_\perp=-\frac3K\delta\boldsymbol\omega^S
\end{align}$$

is fixed by the bulk. This implication is specific to the umbilic nonzero-$K$ background; it is not a general equivalence of Dirichlet and conformal ensembles.

For inhomogeneous Dirichlet data, the source obtains

$$\begin{align}
\delta K=\frac3K\left( \frac14\delta R_\Gamma-\mathcal D^2\delta\boldsymbol\omega -\frac3{R^2}\delta\boldsymbol\omega\right).
\end{align}$$

Two tangential derivatives of prescribed data enter a quantity containing one derivative of the bulk metric. This is the derivative-loss issue; the mode analysis is not a nonlinear regularity theorem.

The Euclidean flat-ball boundary term gives $\log Z_{\rm saddle}=\pi R^2/(4G_N)=9\pi/(4G_NK^2)$.
**Checked:** its normalization follows from $\operatorname{Area}(S^3_R)=2\pi^2R^3$ and $K=3/R$. Quantum corrections, a statistical interpretation and the proposed finite version of spatial-infinity symmetry are not derived here. Umbilicity alone is not a proof of global causal behavior or an infinite charge algebra.

## Derivation Ledger and Transfer to Regional Quantization

| Step | Result | Evidence boundary |
|---|---|---|
| York action → fixed conformal class and $K$ | Dynamic Weyl factor, traceless stress | Source-derived variational framework |
| Umbilic $\bar T=0$ → Weyl equation | Independent corner Cauchy data, bounded-in-$l$ growth exponent | xCoba geometry and finite harmonic ODE checks |
| KI reconstruction → PT master equation | Time-dependent potential; $k$ is spatial | Source-derived full reconstruction, checked finite PT recursion |
| Conformal-class conditions → wall polynomials | Dynamical scalar BC and vector Robin BC | Algebraic reconstruction |
| Wall flux → boundary energy | Positive inner master energy; no worsening amplification with $l$ | Checked flux cancellation and finite pulse evolution |
| Opposite half-line → $\kappa=1$ bound state | Outer growing branch | Explicit boundary polynomials |
| Regular initial data → late tails | Scalar remnant and displacement memory | Source-derived asymptotics; checked tail-to-Weyl limit |
| $\delta\boldsymbol\omega=0$ → Dirichlet subset | Same bulk operator, removed free Weyl data | Linear constraint with $K\ne0$ |

For the vault, the useful lesson is the order: specify action, normal, fixed data and gauge quotient; retain bulk amplitudes and normal displacement; derive the wall equation and energy; only then consider canonical or quantum interpretation. The scalar boundary kinetic term appears in a genuine dynamical boundary condition. It should not be inserted for an unrelated interface trace without deriving that structure.

**Verified:** dS curvature and scalar Laplacian; low and selected higher Weyl harmonics; PT recursion through $l=6$; reflection moduli and boundary characteristic polynomials; scalar/vector boundary-flux cancellation; two nonlinear homogeneous boundary solutions; selected xCoba Hessian/Ward identities; $b_0,b_1$ charge normalization; late scalar Weyl limit; Euclidean saddle normalization; six finite pulse evolutions at three grid spacings.

**Assumptions:** $R>0$, orientation $\sigma$ retained, CBC or homogeneous Dirichlet specified explicitly; $l\ge2$ for master fields; finite inner energy and compatible initial/corner data; regularity at $O$ for the stated late-time rates; finite cutoff $X=20$, duration 6 and $l=2$ for the numerical experiment. Neither generic outer data nor nonlinear metric norms inherit the inner energy estimate.

**Failed:** no source formula failed the executed checks. The unrestricted phrase “all perturbations decay” would be incorrect; the source itself displays growing Weyl and outer branches.

**Blocked:** no remaining retrieval or computation-service obstruction. An initial combined xCoba higher-derivative expression timed out after 60 seconds; componentizing the stress tensor before differentiation resolved the calculation. General nonlinear existence and a complete charge/CPS quantization require structures beyond this source.

**Not verified:** full independent tensor derivation of all KI and bulk-stress formulas, all low-mode compensators, the full source numerical parameter scan, general reconstruction regularity, nonlinear well-posedness, global symmetry algebra and quantum state counting.

PDF viewer pages 9, 17, 18, 21 and 25 were rendered and visually inspected for the growth, half-line spectra, energy, Dirichlet and stress formulas. Exact formulas were cross-read in TeX. All retrieval, render and computation artifacts remain outside the vault; no pre-existing note was altered.
