---
paper id: 2607.18675v1
title: Gravitational Memory Beyond Null Infinity through Finite-Distance Carrollian Screens
authors:
  - Felipe Diaz
  - Sercan Hüsnügil
  - Oriana Labrin
  - Leonardo Sanhueza
publication date: 2026-07-21T03:47
abstract: |-
  The paper studies gravitational memory on finite null hypersurfaces with Carrollian geometry. Robinson--Trautman spacetimes provide an exact radiative laboratory in which the authors reconstruct Bondi data, define finite-screen tensor, scalar, shape, and vector transitions from the intrinsic and optical geometry, and recover Bondi displacement memory as the leading tracefree large-radius limit. Late screens approaching Schwarzschild lose their anisotropic data while retaining isotropic null Brown--York stress. A finite-cosmological-constant extension relates the same relaxation to an AdS holographic work balance, although the displayed charge-flux chain contains a normalization inconsistency recorded below.
comments: "78 pages, 3 figures"
url: https://arxiv.org/abs/2607.18675v1
summary: "A complete finite-null-screen reconstruction of Robinson--Trautman memory, with a direct Bondi limit and a sharply delimited CPS/charge gap."
tags: []
---

Back to [[2026_07_22_overview]].

Reason codes: `T1-symmetry`, `T1-boundary`, `T2-celestial-carrollian`; the AdS work law is `T1-charge`-adjacent, but the paper does not construct a finite-screen Hamiltonian charge-memory relation.

This is the strongest bridge paper in the issue. Its reusable statement is not merely that Robinson--Trautman radiation has memory. It identifies which finite-null-surface data remember the transition, separates generator-following from fixed-coordinate comparisons, packages the null constraint as a Carrollian Brown--York balance law, and proves that the ordinary Bondi tensor is only the universal wave-zone projection of a richer quasilocal response.

## How to Read This Long Paper

The shortest technically faithful route is:

1. Read §2 for the Robinson--Trautman field and its parabolic equation.
2. Read §§3--4 for the RT-to-Bondi map and the linear electric-parity memory.
3. Read Appendix B before §5 if the rigging/projector conventions are unfamiliar.
4. Read §§5--6 together: §5 constructs the finite-screen Carrollian data; §6 defines their integrated transitions and takes the Bondi limit.
5. Read Appendix C only as a symmetry map, not as a completed charge construction.
6. Read §7 and Appendix D together. The finite-
   $\Lambda$ screen geometry is useful, but the displayed holographic charge flux should not be used without repairing the normalization mismatch in the verification log.

The paper's logical spine is

$$
\text{RT metric}+\text{RT equation}
\longrightarrow
\begin{cases}
\text{Bondi map}\to(C_{AB},N_{AB},m_{\rm B})\to\Delta C_{AB},\\
\text{null-screen embedding}\to(q_{AB},\theta,\sigma,\omega,\kappa)\to\Delta_{\cal N}q_{AB},
\end{cases}
$$

and the two branches meet at large radius:

$$\begin{align}
\lim_{r_{\cal N}\to\infty} \frac{1}{r_{\cal N}} (\Delta_{\cal N}q_{AB})^{\rm TF} =\Delta C_{AB}.
\end{align}$$

## Source Structure and Dependency Map

| Source part | Technical object constructed | Downstream use |
|---|---|---|
| §1 Introduction | finite-screen memory problem and RT strategy | fixes the scope: geometric transition first, charge interpretation later |
| §2 Robinson--Trautman waves | exact metric, Calabi-flow equation, null-screen equation | supplies the common bulk dynamics |
| §3 Bondi data and asymptotic memory | asymptotic coordinate map, shear, news, mass and angular aspects | produces the standard null-infinity observables |
| §4 Linearized RT memory | harmonic decay, exact leading time map, electric shear and detector displacement | gives the explicit memory benchmark |
| §5 Finite null screens | induced Carrollian geometry, optical data, null Brown--York tensor and constraint | turns RT evolution into a quasilocal balance law |
| §5.1 Late-time Carrollian relaxation | screen embedding response and decay of anisotropic fluid data | distinguishes radiation-driven response from screen-choice transients |
| §6 Finite-screen memory | generator, fixed-frame, scalar, shape, vector and Bondi-limit memories | defines the paper's main observable |
| §7 Nonzero $\Lambda$ | loss of null infinity, finite-screen continuation, AdS holographic work law | extends the geometry and proposes a boundary charge diagnostic |
| §8 Conclusions | scope and open phase-space questions | explicitly leaves the finite-screen CPS construction open |
| Appendix A | Bondi--Sachs and Ashtekar--Streubel dictionary | fixes $C_{AB}$, $N_{AB}$, flux and parity conventions |
| Appendix B | rigged null geometry and Carrollian fluid decomposition | supplies all projectors, boost/rigging behavior and $T_a{}^b$ |
| Appendix C | Gaussian-null near-screen form and residual algebra | gives kinematics $\mathrm{Diff}(S^2)\ltimes C^\infty(S^2)$, not integrable charges |
| Appendix D.1 | $\Lambda$-BMS/Fefferman--Graham dictionary | feeds §7's boundary shift and holographic momentum |
| Appendix D.2 | quadratic RT perturbation | gives forced even harmonics and the first resonance |
| Appendix D.3 | finite-$\Lambda$ screen optics | shows that $\Lambda$ shifts the scalar pressure sector |

## Conventions and Overloaded Symbols

| Symbol | Meaning here | Local warning |
|---|---|---|
| $x_R^\mu=(u_R,r_R,z_R,\bar z_R)$ | RT/Newman--Unti coordinates | $r_R$ is affine, not the Bondi luminosity radius |
| $x^\mu=(u,r,x^A)$ | Bondi or $\Lambda$-BMS coordinates | §§5--6 drop the RT subscript while staying in RT coordinates |
| $\Phi=-2\log P$ | RT conformal field | do not confuse it with the screen defining function $\check\Phi=r-\rho$ |
| $\Delta_R=e^{-\Phi}\partial_z\partial_{\bar z}=P^2\partial_z\partial_{\bar z}$ | deformed-sphere Laplacian | its normalization is tied to $2e^\Phi dz,d\bar z$ |
| $\gamma_{AB},D_A$ | unit-round-sphere metric and derivative | $\mathscr D_A$ instead denotes the finite-cut derivative |
| $q_{AB}$ | induced finite-cut metric in §§5--6 | in Appendix D.1 it instead denotes leading boundary-sphere data |
| $\ell^\mu$ | null normal and tangent generator | also $\ell$ labels a spherical multipole; context matters |
| $n^\mu$ | auxiliary null rigging on the screen | §7 reuses $n$ for a timelike-boundary slice normal |
| $\rho(u,x^A)$ | finite-screen embedding $r=\rho$ | it is dynamical through the nullity equation |
| $V^A$ | angular drift of screen generators | $V_A=\mathscr D_A\rho$ in the chosen rigging |
| $\theta_{AB},\theta,\sigma_{AB}$ | optical tensor, expansion and shear | not the angular coordinate $\theta$ in Appendix D.2 |
| $\Omega_a=-\kappa n_a+\omega_a$ | normal connection split | $\omega_A$ is the horizontal Hájíček form |
| $\mu=\kappa+\theta/2$ | isotropic Carrollian pressure variable in two cut dimensions | unrelated to a field mass |
| $T_a{}^b$ | null-screen Brown--York tensor | distinct from the holographic $T_{ab}$ in §7 |
| $C_{AB},N_{AB}=\partial_uC_{AB}$ | Bondi shear and news | at finite $\Lambda$, $C_{AB}$ is constrained rather than free news data |
| $\lambda_\ell=\ell(\ell+1)$ | sphere eigenvalue | $\omega_\ell=\lambda_\ell(\lambda_\ell-2)/(12m)$ |

Signature and normalization are those of

$$\begin{align}
ds^2=-Fdu_R^2-2du_Rdr_R+2r_R^2e^\Phi dz_Rd\bar z_R.
\end{align}$$

The screen generator is normalized by

$$\begin{align}
\ell_\mu dx^\mu=-d(r-\rho),\qquad \ell^u=1,
\end{align}$$

so its late Schwarzschild inaffinity is $\kappa\to-1/(4m)$. A boost of $\ell$ changes several optical variables; memory is therefore definite only after fixing generator normalization and the cut-identification prescription.

## Robinson--Trautman Geometry as the Common Dynamical Core

The vacuum metric is

$$\begin{align}
ds^2=-Fdu_R^2-2du_Rdr_R+2r_R^2e^\Phi dz_Rd\bar z_R, \qquad F=r_R\partial_{u_R}\Phi-\Delta_R\Phi-\frac{2m}{r_R}. \tag{2.1--2.2}
\end{align}$$

All nontrivial Einstein dynamics reduces to

$$\begin{align}
\Delta_R\Delta_R\Phi+3m\partial_{u_R}\Phi=0. \tag{2.3}
\end{align}$$

For the cut metric $h_{AB}dx^Adx^B=2e^\Phi dzd\bar z$,

$$\begin{align}
\mathcal R_R=-2\Delta_R\Phi, \qquad \partial_{u_R}h_{AB}=\frac{1}{6m}(\Delta_R\mathcal R_R)h_{AB},
\end{align}$$

so the radiative relaxation is a normalized Calabi flow. The round representative is

$$\begin{align}
P_\circ=1+\frac12z\bar z, \qquad e^{\Phi_\circ}=P_\circ^{-2}.
\end{align}$$

The principal null tetrad has $\ell=\partial_{r_R}$, and the nonzero Weyl scalars are $\Psi_2,\Psi_3,\Psi_4$. The Coulomb term is $\Psi_2=-m/r_R^3$; the leading $r_R^{-1}$ part of $\Psi_4$ carries the outgoing radiation. This gives a clean split between the algebraically special preferred congruence and the radiative Bondi data extracted only after changing gauge.

A finite ingoing null screen is the graph $r_R=\rho(u_R,z_R,\bar z_R)$. Its defining normal is null iff

$$\begin{align}
F(\rho)+2\partial_{u_R}\rho +\frac{2e^{-\Phi}}{\rho^2} \partial_{z_R}\rho\,\partial_{\bar z_R}\rho=0. \tag{2.12}
\end{align}$$

This is a first-order evolution equation for the embedding. It is distinct from both the global event horizon and the elliptic Penrose--Tod apparent-horizon equation.

## From the Affine RT Frame to Bondi Radiative Data

The asymptotic coordinate map is organized as

$$\begin{align}
u_R=U_0(u,x^A)+O(r^{-1}),qquad
r_R=rR_L(u,x^A)+O(1),
\end{align}$$

with leading coefficients

$$\begin{align}
R_L=\frac{\widehat P}{P_\circ}, \qquad \partial_uU_0=\frac{P_\circ}{\widehat P}.
\end{align}$$

Here $\widehat P(u,x^A)=P(U_0(u,x),x_R(u,x))$ is the pulled-back RT conformal factor. The angular coefficients and subleading radial shift are then fixed recursively by the Bondi determinant and gauge conditions.

The reconstruction yields the Bondi expansion

$$\begin{align}
g_{AB}=r^2\gamma_{AB}+rC_{AB}+O(1), \qquad N_{AB}=\partial_uC_{AB},
\end{align}$$

together with $m_{\rm B}$ and $N_A$. The local Bondi mass-loss equation reduces to the RT equation after substituting the map; conversely, failure of the pulled-back RT equation is exactly the obstruction to the Bondi constraint. This is the important structural result: the parabolic RT flow is not an extra approximation imposed on Bondi data, but the reduced Einstein equation that makes the reconstructed data consistent.

The shear has the sphere Hodge split

$$\begin{align}
C_{AB}=-2\left(D_AD_B-\frac12\gamma_{AB}D^2\right)C +\epsilon_{C(A}D_{B)}D^C\widetilde C. \tag{A.40}
\end{align}$$

The diagnostics

$$\begin{align}
\mathcal E=D^AD^BC_{AB}=-D^2(D^2+2)C, \qquad \mathcal B=\epsilon^{AC}D_AD^BC_{BC} =\frac12D^2(D^2+2)\widetilde C
\end{align}$$

annihilate only the irrelevant $\ell=0,1$ kernel. Thus $\mathcal B=0$ is an invariant statement that the physical shear is purely electric.

## One Harmonic: Decay, Shear, and Displacement Memory

For a linear mode

$$\begin{align}
K(u,\theta)=e^{-\omega_\ell u}P_\ell(\cos\theta), \qquad \omega_\ell=\frac{(\ell-1)\ell(\ell+1)(\ell+2)}{12m}, \quad \ell\ge2,
\end{align}$$

the linear RT equation is

$$\begin{align}
\partial_uK+\frac{1}{12m}\Delta_\circ(\Delta_\circ+2)K=0.
\end{align}$$

The leading time map can be solved exactly. Writing

$$\begin{align}
a=\frac{\varepsilon_\ell}{4} e^{-\omega_\ell(u+\beta)}P_\ell,
\end{align}$$

one has

$$\begin{align}
U_0=u+\beta+\frac{2}{\omega_\ell}\log(1-a), \qquad \partial_uU_0=\frac{1+a}{1-a}.
\end{align}$$

The linear Bondi shear and news are

$$\begin{align}
C_{AB}^{(1)}=\frac{\varepsilon_\ell}{\omega_\ell}e^{-\omega_\ell u} \left(D_AD_B-\frac12\gamma_{AB}D^2\right)P_\ell,
\end{align}$$

$$\begin{align}
N_{AB}^{(1)}=-\varepsilon_\ell e^{-\omega_\ell u} \left(D_AD_B-\frac12\gamma_{AB}D^2\right)P_\ell.
\end{align}$$

It is pure electric parity. Between two nonradiative endpoints,

$$\begin{align}
\Delta C_{AB}=\int_{u_i}^{u_f}N_{AB},du, \qquad \Delta s^A=\frac{1}{2r}\gamma^{AC}\Delta C_{BC}s^B.
\end{align}$$

The local angular-momentum aspect is a gradient for the axisymmetric mode, so its global Lorentz charge vanishes even though the local aspect need not. This is a useful warning against identifying local aspect data with a nonzero integrated charge.

## Rigged Null Geometry and the Carrollian Screen Fluid

On ${\cal N}:r=\rho(u,x^A)$, choose the auxiliary rigging $n^\mu=\partial_r$, with $\ell\cdot n=-1$. The induced cut metric and generator are

$$\begin{align}
q_{AB}dx^Adx^B=2\rho^2e^\Phi dzd\bar z, \qquad \ell=\partial_u+V^A\partial_A, \qquad V_A=\mathscr D_A\rho.
\end{align}$$

Appendix B distinguishes three maps that should not be conflated:

- $\Pi^\mu{}_{\nu}$, the ambient projector onto all of $T\mathcal N$, retaining $\ell$;
- $\pi^a{}_b$, the intrinsic projection from $T\mathcal N$ to the horizontal cut space;
- $\pi^\mu{}_{\nu}$, the ambient codimension-two projector removing both $\ell$ and $n$.

The optical tensor is

$$\begin{align}
\theta_{ab}=\frac12\mathcal L_\ell q_{ab}, \qquad \theta_{AB}=\frac12\theta q_{AB}+\sigma_{AB}.
\end{align}$$

Because $\partial_uq_{AB}$ is conformal in the RT coordinates, the tracefree part comes entirely from the embedding drift:

$$\begin{align}
\sigma_{AB}= \left(\mathscr D_A\mathscr D_B -\frac12q_{AB}\mathscr D^2\right)\rho. \tag{5.24}
\end{align}$$

The Weingarten endomorphism is decomposed as

$$\begin{align}
W_a{}^b=\theta_a{}^b+\Omega_a\ell^b, \qquad \Omega_a=-\kappa n_a+\omega_a, \qquad W=\theta+\kappa.
\end{align}$$

The null Brown--York tensor is then

$$\begin{align}
T_a{}^b=\frac{1}{8\pi G} (W_a{}^b-\delta_a{}^bW) =\ell^b\tau_a+\tau_a{}^b,
\end{align}$$

with

$$\begin{align}
\tau_a=\frac{1}{8\pi G}(\omega_a+\theta n_a), \qquad \tau_a{}^b=\frac{1}{8\pi G} (\sigma_a{}^b-\mu\pi_a{}^b), \qquad \mu=\kappa+\frac12\theta.
\end{align}$$

This is the paper's Carrollian fluid: $\omega_a$ is momentum/heat-current data, $\sigma_a{}^b$ is tracefree viscous stress, and $\mu$ is isotropic pressure.

The projected Einstein equation is the fluid balance law,

$$\begin{align}
D_bT_a{}^b=-\frac{1}{8\pi G} e^\mu{}_aG_{\mu\nu}\ell^\nu. \tag{5.42}
\end{align}$$

After imposing screen nullity, its spatial/Damour projection vanishes identically, while

$$\begin{align}
e^\mu{}_uG_{\mu\nu}\ell^\nu =\frac{1}{\rho^2} (\Delta_R^2\Phi+3m\partial_u\Phi). \tag{5.44}
\end{align}$$

Thus the remaining Carrollian conservation equation is precisely the RT equation. This equality is the central bridge between the bulk reduced dynamics and finite-boundary data.

## Screens Settling to Schwarzschild

Use

$$\begin{align}
\Phi=\Phi_\circ+\varepsilon_\ell e^{-\omega_\ell u}P_\ell, \qquad \rho=2m[1+\varepsilon_\ell h_\ell(u)P_\ell].
\end{align}$$

Linearized nullity gives

$$\begin{align}
4m\dot h_\ell+h_\ell+ \left[-2m\omega_\ell+\frac{\lambda_\ell}{2}-1\right] e^{-\omega_\ell u}=0, \tag{5.47}
\end{align}$$

with

$$\begin{align}
h_\ell=C_\ell e^{-u/(4m)}+B_\ell e^{-\omega_\ell u}, \qquad B_\ell= \frac{-2m\omega_\ell+\lambda_\ell/2-1}{4m\omega_\ell-1}. \tag{5.48--5.49}
\end{align}$$

The $C_\ell$ term is a homogeneous screen-choice transient. Setting it to zero isolates the deformation driven by the RT radiation. Then

$$\begin{align}
\theta,\omega_A,\sigma_A{}^B\to0, \qquad \kappa,\mu\to-\frac{1}{4m},
\end{align}$$

and

$$\begin{align}
T_a{}^b\to\frac{1}{32\pi Gm}\pi_a{}^b.
\end{align}$$

The final round screen has no anisotropic hair, but it does retain isotropic null Brown--York stress. The memory is therefore a transition observable, not a stationary deformation.

## Three Finite-Screen Transitions and Their Bondi Projection

There are two inequivalent ways to compare cuts.

### Following the Same Generators

Let $X_u:S_{u_i}\to S_u$ be the flow of $\ell$, and pull the cut metric back to the initial cut:

$$\begin{align}
Q_{AB}(u)=X_u^*q_{AB}(u).
\end{align}$$

Then

$$\begin{align}
\Delta_\ell Q_{AB} =\int_{u_i}^{u_f}du\, X_u^*(\theta q_{AB}+2\sigma_{AB}). \tag{6.3}
\end{align}$$

This is the clean detector observable: it compares the transverse separation of the same neighboring null generators.

### Holding the RT Angular Coordinates Fixed

At fixed $x^A$,

$$\begin{align}
\Delta_{\cal N}q_{AB} =\int du\,[\theta q_{AB}+2\sigma_{AB} -(\mathcal L_Vq)_{AB}], \tag{6.4}
\end{align}$$

and, because $V_A=\mathscr D_A\rho$,

$$\begin{align}
(\mathcal L_Vq)_{AB}=2\mathscr D_A\mathscr D_B\rho.
\end{align}$$

This frame makes the sector split explicit:

$$\begin{align}
\Delta_{\cal N}\log\sqrt q =\int du\,(\theta-\mathscr D^2\rho) =\left[2\log\rho+\Phi\right]_{u_i}^{u_f}, \tag{6.7--6.9}
\end{align}$$

$$\begin{align}
(\Delta_{\cal N}q_{AB})^{\rm TF} =2\int du\left[ \sigma_{AB}-(\mathscr D_A\mathscr D_B\rho)^{\rm TF} \right], \tag{6.10}
\end{align}$$

and the proposed vector transition is $\Delta_\ell\omega_A$.

In fixed RT angular coordinates the two tracefree terms cancel pointwise because every cut metric remains conformal. This does not kill generator-following memory, and it does not kill Bondi memory: the Bondi transformation changes the asymptotic comparison frame.

### Wave-Zone Limit

On a large Bondi-gauge screen,

$$\begin{align}
q_{AB}^{\cal N}=r_{\cal N}^2\gamma_{AB} +r_{\cal N}C_{AB}+O(1),
\end{align}$$

$$\begin{align}
V^A=O(r_{\cal N}^{-2}), \qquad \sigma_{AB}=\frac12r_{\cal N}N_{AB}+O(1).
\end{align}$$

Therefore

$$\begin{align}
\Delta C_{AB} =\lim_{r_{\cal N}\to\infty} \frac{1}{r_{\cal N}} (\Delta_{\cal N}q_{AB})^{\rm TF} =\int du\,N_{AB}. \tag{6.18}
\end{align}$$

The finite observable retains focusing, embedding response, angular drift, Coulombic data, and near-zone information. Bondi memory is the leading tracefree piece that survives after the universal radius rescaling.

## What the Balance Laws Do and Do Not Prove

The paper organizes the three sectors as

| Memory sector | Geometric equation | Screen datum |
|---|---|---|
| scalar/area | Raychaudhuri/focusing | $\theta$ |
| tracefree shape | Sachs/shear evolution | $\sigma_{AB}$ |
| vector/momentum | Damour constraint | $\omega_A$ |

This is a strong Ward-identity-style organization, but it is not yet a covariant-phase-space charge-memory theorem. To obtain one, a variational problem must fix:

- the embedding $X:{\cal N}\hookrightarrow{\cal M}$;
- the normalization of $\ell$ and choice of rigging $n$;
- the cut foliation and identification map;
- allowed variations of $q_{AB},\rho,\kappa,\omega_A$;
- a null boundary/corner presymplectic potential and its counterterms.

Appendix C brings the screen locally to Gaussian-null form and finds the residual kinematical algebra

$$\begin{align}
\mathrm{Diff}(S^2)\ltimes C^\infty(S^2),
\end{align}$$

or $SL(2,\mathbb C)\ltimes C^\infty(S^2)$ after restricting to global conformal transformations. Generic radiative charge variations are expected to be nonintegrable. No Hamiltonian generator, integrable charge, soft pair, or equality between charge flux and the memory tensor is actually constructed.

## Cosmological Constant: Two Distinct Continuations

For $\Lambda\ne0$, conformal infinity is not null, so the standard Bondi cut/news construction has no direct arena. Two different statements survive.

First, finite bulk null screens still exist. Appendix D.3 modifies nullity and the scalar optical variables. The cosmological constant appears as an isotropic background-curvature pressure in the Brown--York fluid; it changes the embedding and scalar memory, not the dissipative shear channel.

Second, in the AdS branch the conformal boundary has a holographic stress tensor. In a fixed-round conformal frame,

$$\begin{align}
ds_{(0)}^2=-du^2-\frac{\Lambda}{3}\gamma_{AB} (dx^A-U^Adu)(dx^B-U^Bdu), \tag{7.6}
\end{align}$$

and the radiative information is carried by the shift. At first order,

$$\begin{align}
U_A^{(1)}=\frac{\Lambda}{6\omega_\ell}D_AK_\ell^{(1)}, \qquad \partial_uU^{A(1)}=-\frac{\Lambda}{6}D^AK_\ell^{(1)}, \tag{7.7--7.8}
\end{align}$$

while finite-$\Lambda$ shear is constrained by

$$\begin{align}
\frac{\Lambda}{3}C_{AB}^{(1)} =2D_{\langle A}U_{B\rangle}^{(1)}. \tag{7.9}
\end{align}$$

For a non-Killing boundary vector $\xi$, stress conservation gives

$$\begin{align}
\nabla_aJ^a[\xi] =\frac12T^{ab}\mathcal L_\xi g_{ab}^{(0)}.
\end{align}$$

Choosing $\xi=-\partial_u$, the paper writes

$$\begin{align}
\frac{dM_\xi}{du} =-\int_{S^2}d\Omega_\circ\,p_A\partial_uU^A, \tag{7.16}
\end{align}$$

with

$$\begin{align}
p_A^{(1)}=\frac{1}{8\pi G} \left[\frac{\lambda_\ell-2}{4} +\frac{m\Lambda}{2\omega_\ell}\right]D_AK_\ell^{(1)}. \tag{7.17}
\end{align}$$

The intended conclusion is a frame- and generator-dependent holographic charge whose monotonicity changes at a mode-dependent $\Lambda_{\rm crit}^{(\ell)}$. As printed, however, (7.19) does not follow from (7.8), (7.16), and (7.17); see `Failed`. The finite-screen memory construction does not depend on this failed branch.

## Quadratic RT Response and the First Resonance

Appendix D.2 expands

$$\begin{align}
\Phi=\varepsilon_\ell f+\varepsilon_\ell^2h+O(\varepsilon_\ell^3), \qquad \bar K=e^{-\Phi}\left(1-\frac12\Delta_\circ\Phi\right).
\end{align}$$

The first two equations are

$$\begin{align}
\partial_uf+\frac{1}{12m} \Delta_\circ(\Delta_\circ+2)f=0, \tag{D.34}
\end{align}$$

$$\begin{align}
\partial_uh+\frac{1}{12m} \Delta_\circ(\Delta_\circ+2)h =\frac{1}{12m}\left[ \Delta_\circ(f^2+f\Delta_\circ f) +f\Delta_\circ(\Delta_\circ+2)f \right]. \tag{D.35}
\end{align}$$

For $f=e^{-\omega_\ell u}P_\ell$, decompose

$$
P_\ell^2=\sum_{k=0}^{\ell}a_{2k}^{(\ell)}P_{2k},
\qquad
a_{2k}^{(\ell)}=(4k+1)
\begin{pmatrix}\ell&\ell&2k\\0&0&0\end{pmatrix}^{\!2}.
$$

Each forced coefficient solves

$$\begin{align}
\dot h_{2k}^{(\ell)}+\omega_{2k}h_{2k}^{(\ell)} =S_{2k}^{(\ell)}e^{-2\omega_\ell u}P_{2k}.
\end{align}$$

The nonresonant response is proportional to

$$\begin{align}
\frac{e^{-2\omega_\ell u}}
{\omega_{2k}-2\omega_\ell},
\end{align}$$

while resonance gives $u e^{-2\omega_\ell u}$. The first integer resonance is

$$\begin{align}
(\ell,k)=(5,3), \qquad \omega_6=2\omega_5.
\end{align}$$

This quadratic branch is needed for local second-order reconstruction, but §7's integrated $O(\varepsilon^2)$ work law uses only products of first-order shift and momentum.

## Compact Equation Ledger

| Domain | Source equations | Inputs | Output/use |
|---|---|---|---|
| RT core | (2.1)--(2.3), (2.12) | $\Phi,m$, affine NU gauge | parabolic flow and screen embedding |
| Bondi map | §3 leading/subleading map | $P/P_\circ$, Bondi gauge | $C_{AB},N_{AB},m_{\rm B},N_A$ |
| Linear memory | §4 | one $P_\ell$ mode | pure electric $C_{AB}$, $\Delta C_{AB}$ |
| Null geometry | (5.1)--(5.36), Appendix B | $\rho,\ell,n,q$ | $\theta,\sigma,\kappa,\omega,T_a{}^b$ |
| Screen constraint | (5.42)--(5.44) | Brown--York divergence | RT equation |
| Late screen | (5.46)--(5.61) | linear nullity | decaying anisotropy, final isotropic stress |
| Memory | (6.3)--(6.18) | cut comparison and optical data | scalar/shape/vector transitions and Bondi limit |
| Near-screen symmetry | (C.1)--(C.24) | Gaussian-null boundary conditions | BMS-like residual algebra; no completed charge |
| $\Lambda$-BMS | (D.1)--(D.26) | finite-$\Lambda$ Bondi/FG gauge | boundary metric, stress and shift |
| Quadratic RT | (D.27)--(D.53) | one linear harmonic | forced even harmonics and resonances |
| $\Lambda$ screens | (D.54)--(D.76) | RT--(A)dS nullity | shifted scalar pressure and memory |

## Translation into the Vault's CPS and Boundary Language

The paper contains four neighboring but inequivalent structures:

1. At $\mathscr I^+$, $(C_{AB},N_{AB})$ are radiative Ashtekar--Streubel data, and $\Delta C_{AB}$ is the soft/displacement transition.
2. On a finite null screen, $(q_{AB},\ell,\theta,\sigma,\omega,\kappa)$ are embedded-boundary data. $D_bT_a{}^b=0$ is a projected Einstein constraint, not yet a Hamilton equation on a declared reduced phase space.
3. Appendix C's near-screen algebra is kinematical. Its generic charge variation is nonintegrable, and the boundary/corner symplectic potential is not specified.
4. Section 7's AdS charge is defined from the timelike conformal-boundary holographic stress tensor. It is separate from the finite-screen Brown--York tensor and from the null-infinity radiative phase space.

For the local perturbation formalism, the natural next calculation is to pull a general finite-null-boundary presymplectic current back to the RT submanifold and ask whether this sector is symplectic, constrained, or Lagrangian. Only after that pullback is it meaningful to ask whether $\Delta_\ell Q_{AB}$ is canonically paired with a finite-screen soft mode or generated by a surface charge.

## Concrete Project Extensions

1. **CPS pullback.** Evaluate the Einstein presymplectic current on two RT variations $\delta_1\Phi,\delta_2\Phi$, including screen-displacement variations $\delta\rho$. Determine the flux and corner term required for a well-posed finite-null-screen variational problem.
2. **Boost and rigging audit.** Track $\Delta_\ell Q_{AB}$, scalar memory, and $\Delta_\ell\omega_A$ under $\ell\to e^\lambda\ell$ and horizontal rigging shifts. Identify invariant combinations after fixing endpoint cuts.
3. **Brown--Henneaux-style benchmark.** In a simpler three-dimensional or linearized AdS model, reproduce the hierarchy “finite boundary transition $\to$ asymptotic charge/memory” with an explicit integrable generator before importing the RT construction.
4. **Repair §7.** Re-derive the fixed-round boundary work law with the physical cut measure $\sqrt h=(-\Lambda/3)\sqrt\gamma$, the precise normalization of $p_A$, and the definition of $M_\xi$. This should locate the missing factor between (7.18) and (7.19).
5. **Quadratic memory.** Use the Appendix-D forced modes to compute the first nonzero area/mass memory at $O(\varepsilon^2)$, keeping the $(\ell,k)=(5,3)$ resonance separate.

## Verification Log

### Checked

- **RT screen nullity (xAct/xCoba).** Inverting the metric in the $(u,r,z,\bar z)$ chart gives

$$\begin{align}
g^{ur}=-1,quad g^{rr}=F,quad
  g^{z\bar z}=\frac{e^{-\Phi}}{r^2}.
\end{align}$$

  Contracting $\ell_\mu=(\partial_u\rho,-1,\partial_z\rho,\partial_{\bar z}\rho)$ reproduced (2.12) with residual zero.
- **Screen shear kinematics (xAct).** `LieDToCovD` reproduced
  $(\mathcal L_Vq)_{AB}=2\mathscr D_{(A}V_{B)}$ with residual zero. With $V_A=\mathscr D_A\rho$ and conformal $\partial_uq_{AB}$, taking the tracefree part gives
  $\sigma_{AB}=(\mathscr D_A\mathscr D_B-\tfrac12q_{AB}\mathscr D^2)\rho$, and also explains the exact fixed-RT-frame cancellation in (6.10).
- **RT Einstein projection (xAct/xCoba).** Computing the full Einstein tensor of the RT metric, contracting it with the screen tangent $e_u^\mu$ and generator $\ell^\nu$, and imposing the graph nullity condition produced

$$\begin{align}
e_u^\mu G_{\mu\nu}\ell^\nu =\pm\frac{1}{r^2} (\Delta_R^2\Phi+3m\partial_u\Phi),
\end{align}$$

  with exact residual zero after accounting for the opposite Riemann-tensor sign used by xAct. Thus the vanishing projection is independently equivalent to the RT equation; the overall displayed sign is curvature-convention dependent.
- **Exact leading time map (Mathematica).** For $a=(\varepsilon/4)e^{-\omega(u+\beta)}P_\ell$, Mathematica reproduced
  $\partial_uU_0=(1+a)/(1-a)$ and verified exactly that the pulled-back source factor equals $(\partial_uU_0)^2$, with residual zero on the real branch $1-a>0$.
- **Linear RT spectrum (Mathematica).** The identity
  $\lambda_\ell(\lambda_\ell-2)=12m\omega_\ell$ reduced to zero symbolically.
- **Angular tensor and norm checks (Mathematica).** For $2\le\ell\le8$, the axisymmetric tracefree-Hessian identity reduced to the associated-Legendre expression with residual zero. For $1\le\ell\le8$,

$$\begin{align}
\int_{S^2}|DP_\ell|^2d\Omega =\frac{4\pi\lambda_\ell}{2\ell+1}
\end{align}$$

  was independently integrated with zero residual.
- **Late-screen embedding (Mathematica).** Substituting the displayed $B_\ell e^{-\omega_\ell u}$ into (5.47) gave residual zero. The exceptional denominator is harmless for integer $\ell\ge2$: the formal $4m\omega=1$ condition does not coincide with an allowed RT rate.
- **Quadratic RT expansion (Mathematica).** Direct expansion of $e^{-\Phi}(1-\Delta_\circ\Phi/2)$ and the RT equation reproduced (D.34)--(D.35) for the source modes $2\le\ell\le7$, with first- and second-order residuals zero. An integer scan through $\ell=30$ found the first and only resonance in that range at $(\ell,k)=(5,3)$; its $u e^{-2\omega_5u}$ particular solution also had zero residual.
- **Quadrupole simplification (Mathematica).** The paper's final coefficient simplifies to
  $-3(4+\Lambda m^2)/40=-(3/10)(1+\Lambda m^2/4)$, conditional on accepting the upstream charge formula.

### Blocked

- The complete nonlinear RT-to-Bondi coordinate recursion, exact Bondi mass aspect, and angular-momentum aspect were reconstructed from the source but not independently rederived with xAct. Their downstream linear formulas are source-derived.
- The full null Weingarten decomposition, every mixed Brown--York component, and the general rigged-connection identity (5.42) require the paper's nonstandard mixed ambient/intrinsic projectors. Their definitions and the decisive contracted Einstein projection (5.44) were checked, but the entire component table was not independently regenerated.
- The large-radius expansion leading to (6.18) was checked for order counting and consistency, not derived from a complete finite-radius coordinate solution.
- Appendix D.1's Fefferman--Graham stress dictionary and the linear momentum density (7.17) depend on external holographic-renormalization conventions not supplied in enough detail for an independent reconstruction during this run.
- Appendix D.24 contains a branch with an apparently singular $\Lambda\to0$ limit. The source does not give enough orientation/branch data to decide whether the displayed plus sign is intentional.
- The finite-screen charge-memory relation is not blocked by tooling; it is absent from the paper. Appendix C supplies only the symmetry kinematics and explicitly leaves the CPS construction open.

### Failed

- **Finite-$\Lambda$ work chain, §7 equations (7.8), (7.16)--(7.19).** Define

$$\begin{align}
A_\ell=\frac{\lambda_\ell-2}{4} +\frac{m\Lambda}{2\omega_\ell}.
\end{align}$$

  Direct substitution of the printed equations gives

$$\begin{align}
-p_A^{(1)}\partial_uU^{A(1)} =\frac{\Lambda}{48\pi G}A_\ell D_AK_\ell^{(1)}D^AK_\ell^{(1)},
\end{align}$$

  whereas (7.19) prints

$$\begin{align}
-\frac{1}{16\pi G}A_\ell
  D_AK_\ell^{(1)}D^AK_\ell^{(1)}.
\end{align}$$

  Mathematica finds their difference proportional to $(\Lambda+3)A_\ell$; they agree only at the special normalization $\Lambda=-3$ or at the critical zero $A_\ell=0$. Because §7 subsequently varies $\Lambda$ and takes $\Lambda\to0$, no stated assumption repairs the chain. Equations (7.19)--(7.24), including the general monotonicity claim, are therefore not independently supported as printed.
- **Appendix D.27 metric.** Both TeX and rendered PDF display
  $r^2e^\Phi(d\theta+\sin^2\theta\,d\phi)$. A metric requires squared differentials:
  $r^2e^\Phi(d\theta^2+\sin^2\theta\,d\phi^2)$.
- **Appendix A Bondi-mass normalization.** Appendix A defines $M_{\rm B}=\int m_{\rm B}d\Omega$ but then writes the usual $1/(32\pi G)$ global flux. The main text instead uses $M_{\rm B}=(4\pi G)^{-1}\int m_{\rm B}d\Omega$, which is the normalization consistent with that flux. Appendix A's definition is missing the prefactor.
