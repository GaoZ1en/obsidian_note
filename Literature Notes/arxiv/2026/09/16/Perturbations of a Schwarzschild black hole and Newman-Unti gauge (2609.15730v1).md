---
paper id: 2609.15730v1
title: Perturbations of a Schwarzschild black hole and Newman-Unti gauge
authors:
  - Pujian Mao
  - Baijun Zeng
  - Kai-Yu Zhang
publication date: 2026-09-14T15:26
abstract: |-
  The paper constructs the first-order coordinate transformation that carries a generic asymptotically flat Schwarzschild perturbation into Newman--Unti gauge, extracts its shear, mass aspect, and angular-momentum aspect, and applies the map to Schwarzschild quasinormal modes. Odd-parity modes have only a boost contribution to the mass aspect, whereas even-parity modes carry nonzero higher-harmonic supertranslation charges that can be used to fix the first-order BMS frame.
comments: "18 pages"
url: https://arxiv.org/abs/2609.15730v1
summary: "An explicit bridge from Regge--Wheeler--Zerilli perturbations to null-infinity Newman--Unti data and first-order supertranslation charges."
tags: []
---

Daily overview: [[2026_09_16_overview]]

# Result and scope

The main result is an explicit first-order map

$$
\text{generic Schwarzschild perturbation in background NU coordinates}
\longrightarrow
\text{full Newman--Unti gauge near }\mathscr I^+,
$$

followed by a reconstruction of the asymptotic shear $C_{AB}$, mass aspect $m$, and angular-momentum aspect $N_A$. Applied to Schwarzschild quasinormal modes (QNMs), the map gives:

- zero total energy and total angular momentum at first perturbative order;
- no dynamical mass aspect in the odd-parity sector;
- a dynamical even-parity mass aspect and nonzero $\ell\geq2$ supertranslation charges;
- a charge-based way to select the first-order BMS frame at a chosen reference time.

This is a linearized, asymptotic construction. It does not compute second-order fluxes, prove nonlinear BMS-frame uniqueness, or derive the charge from a covariant presymplectic form.

# Source map

1. **Introduction:** explains why an explicit map from black-hole perturbation theory to an asymptotic null gauge is useful, and separates the Newman--Unti (NU) analysis from earlier Bondi--Sachs work.
2. **Coordinate-transformation algorithm:** starts with a generic first-order Schwarzschild perturbation, solves the radial NU gauge conditions, fixes the residual integration functions by asymptotic falloffs, and expresses $C_{AB}$, $m$, and $N_A$ in terms of the original metric coefficients.
3. **QNMs in NU gauge:** reviews Regge--Wheeler--Zerilli master variables and reconstruction, derives a large-radius recurrence, treats odd and even parity separately, then uses the even-parity supertranslation charge to fix the BMS frame.
4. **Conclusion:** emphasizes the nontrivial higher-harmonic charge and the possible QNM/asymptotic-symmetry link.
5. **Appendix:** records the even- and odd-parity gauge transformations used before the NU transformation.

# Theory, gauge, and asymptotic data

## Background and perturbative expansion

In Boyer--Lindquist coordinates $(t,\rho,\theta,\phi)$,

$$
ds^2=-\left(1-\frac{2M}{\rho}\right)dt^2
+\frac{d\rho^2}{1-2M/\rho}+\rho^2d\Omega^2,
\qquad
g_{\mu\nu}=\bar g_{\mu\nu}+\epsilon h_{\mu\nu}+O(\epsilon^2).
$$

The background NU coordinates $(u_b,r_b,x_b^A)$ are

$$
t=u_b+\rho_*,\qquad
\rho_*=\rho+2M\log\left|\frac{\rho-2M}{2M}\right|,
\qquad \rho=r_b,
$$

so that

$$
ds^2=-\left(1-\frac{2M}{r_b}\right)du_b^2-2\,du_b\,dr_b+r_b^2d\Omega^2.
$$

The starting perturbation is assumed to admit an inverse-$r_b$ expansion. The leading angular components are allowed to scale as

$$
h_{r_bA_b}=h_{0,r_bA_b}+O(r_b^{-1}),\qquad
h_{u_bA_b}=h_{0,u_bA_b}+O(r_b^{-1}),\qquad
h_{A_bB_b}=r_b h_{m,A_bB_b}+h_{0,A_bB_b}+O(r_b^{-1}).
$$

Matter, if present, must satisfy the NU-compatible falloffs

$$
T_{r_br_b}=O(r_b^{-4}),\quad T_{r_bA_b}=O(r_b^{-3}),\quad
T_{r_bu_b}=O(r_b^{-3}),\quad T_{u_bu_b}=O(r_b^{-2}),\quad
T_{u_bA_b}=O(r_b^{-2}),\quad T_{A_bB_b}=O(r_b^{-1}).
$$

The leading linearized Einstein equations then impose, among other relations,

$$
\partial_{u_b}h_{1,r_br_b}=0,\qquad
\partial_{u_b}h_{0,r_bA_b}=0,\qquad
\partial_{u_b}(\bar\gamma^{AB}h_{m,AB})=0.
$$

These are the leading asymptotically flat constraints; the Schwarzschild mass enters only at subleading orders.

## NU transformation and residual functions

The full NU coordinates are expanded as

$$
u_b=u+\epsilon U_1+O(\epsilon^2),\qquad
r_b=r+\epsilon R_1+O(\epsilon^2),\qquad
x_b^A=x^A+\epsilon X_1^A+O(\epsilon^2).
$$

The NU gauge conditions $g_{rr}=0$, $g_{ur}=-1$, and $g_{rA}=0$ reduce at first order to radial equations

$$
\partial_rU_1=\frac12h_{r_br_b},
$$

$$
\partial_rR_1=h_{u_br_b}+\frac12f(r)h_{r_br_b}-\partial_uU_1,
\qquad
\partial_rX_1^A=\frac{1}{r^2}D^AU_1-\frac{1}{r^2}h_{r_b}{}^A,
$$

where the paper writes $f(r)=-1+2M/r$ in this intermediate formula, while its later Regge--Wheeler section uses $f=1-2M/r$. The sign is tied to how the background $g_{uu}$ is inserted; the final displayed asymptotic data use the latter standard Schwarzschild function.

After radial integration, the asymptotic conditions fix the integration functions to

$$
U_{10}=T(x^A)+\frac{u}{2}D_Ay^A,\qquad
X_{10}^A=y^A(x),
$$

$$
R_{10}=-\frac14\bar\gamma^{AB}h_{m,AB}
+\frac14D^2h_{1,r_br_b}
-\frac12D^Ah_{0,r_bA}
+\frac12D^2U_{10}.
$$

Here $T$ is the first-order supertranslation and $y^A$ is a conformal Killing field of the unit sphere,

$$
D_Ay_B+D_By_A=\bar\gamma_{AB}D_Cy^C.
$$

The divergence-free part gives rotations and the nonzero-divergence part gives boosts.

## Shear, news, mass aspect, and angular-momentum aspect

The transformed angular metric has the polyhomogeneous form

$$
h_{AB}=r\log r\,\widetilde C_{AB}+rC_{AB}+O(1),
$$

with

$$
\widetilde C_{AB}=-D_AD_Bh_{1,r_br_b}
+\frac12\bar\gamma_{AB}D^2h_{1,r_br_b}.
$$

Thus the $h_{1,r_br_b}$ coefficient controls the logarithmic branch. The ordinary shear is

$$
\begin{aligned}
C_{AB}={}&h_{m,AB}+2D_{(A}h_{0,B)r_b}+\widetilde C_{AB}
-2D_AD_BT+\bar\gamma_{AB}D^2T\\
&-\frac12\bar\gamma_{AB}\bar\gamma^{CD}h_{m,CD}
-\bar\gamma_{AB}D^Ch_{0,r_bC}.
\end{aligned}
$$

Its news is independent of $M$:

$$
N_{AB}=\partial_uC_{AB}
=\partial_{u_b}h_{m,AB}
-\frac12\bar\gamma_{AB}\bar\gamma^{CD}\partial_{u_b}h_{m,CD}.
$$

The mass aspect is

$$
m=h_{1,u_bu_b}+2\partial_uh_{2,u_br_b}
+\frac12\partial_u^2h_{3,r_br_b}+3M D_Ay^A,
$$

and the angular-momentum aspect is

$$
\begin{aligned}
N_A={}&h_{1,u_bA}+D_Ah_{2,u_br_b}
+\frac13\partial_uh_{2,r_bA}
+\frac13\partial_uD_Ah_{3,r_br_b}\\
&+M D_Ah_{1,r_br_b}+2M D_AT+uM D_AD_By^B.
\end{aligned}
$$

The $M$-dependent pieces are sphere derivatives. They affect the angular distribution but not the integrated energy or angular momentum under the stated regularity and harmonic assumptions.

# Regge--Wheeler--Zerilli input

For $\ell\geq2$, the perturbation splits into even and odd parity. The scalar harmonic satisfies

$$
D^2Y_{\ell m}=-\ell(\ell+1)Y_{\ell m}.
$$

The derived harmonics are

$$
Y_A=D_AY,\qquad X_A=-\epsilon_A{}^BD_BY,
$$

$$
Y_{AB}=\left(D_AD_B+\frac12\ell(\ell+1)\bar\gamma_{AB}\right)Y,
\qquad
X_{AB}=D_{(A}X_{B)}.
$$

The paper uses

$$
\lambda_o=\ell(\ell+1),\qquad
\lambda_e=\frac12(\ell-1)(\ell+2),\qquad
\Lambda=2\lambda_e+\frac{6M}{r_b}.
$$

The Cunningham--Price--Moncrief and Zerilli--Moncrief variables obey

$$
\left[-\partial_t^2+\partial_{r_*}^2-V_p(r_b)\right]\Psi_p=0,
\qquad p\in\{o,e\}.
$$

With $\Psi_p=e^{-i\omega t}\psi_p(r_b)$, QNM boundary conditions are ingoing at the future horizon and outgoing at infinity. The large-radius outgoing solution is written

$$
\psi_p=e^{i\omega r_*}\sum_{n=0}^{\infty}a_n^pr_b^{-n},
\qquad a_0^p=1,
$$

and $V_p=\sum_{j\geq2}v_j^pr_b^{-j}$. Substitution into the radial equation gives

$$
\begin{aligned}
2i\omega k\,a_k^p={}&(k-1)(k+4iM\omega)a_{k-1}^p
-2M(k-2)(2k-1)a_{k-2}^p\\
&+4M^2(k-3)(k-1)a_{k-3}^p
-\sum_{j=2}^{k+1}v_j^pa_{k+1-j}^p,
\qquad k\geq1.
\end{aligned}
$$

This is an asymptotic recurrence for a fixed nonzero QNM frequency; it is not a quantization condition for $\omega$.

# Odd-parity QNM data

The Regge--Wheeler reconstruction initially produces an $O(r_b)$ term in $h_{u_bA}^{\rm RW}$, incompatible with the assumed NU falloff. The appendix gauge transformation with

$$
\xi^o=-\frac{r_b}{2}\Psi_o
$$

replaces the reconstruction by

$$
h_{r_b}=r_b\partial_{r_b}\Psi_o,\qquad
h_{u_b}=\frac{f}{2}\partial_{r_b}(r_b\Psi_o),\qquad
h_2=r_b\Psi_o.
$$

Write

$$
\omega=\omega_R+i\omega_I,\qquad
\Delta_\omega=\omega_R^2+\omega_I^2,\qquad
c_\omega(u)=\cos(\omega_Ru),\quad
s_\omega(u)=\sin(\omega_Ru),
$$

with $\omega_I<0$. The resulting odd-parity NU data are

$$
C_{AB}=e^{\omega_Iu}c_\omega(u)X_{AB}
-2D_AD_BT+\bar\gamma_{AB}D^2T,
$$

$$
m=3M D_Ay^A,
$$

$$
N_A=-\frac{\lambda_o\lambda_e}{6\Delta_\omega}
e^{\omega_Iu}\bigl(\omega_Ic_\omega+\omega_Rs_\omega\bigr)X_A
+2M D_AT+uM D_AD_By^B.
$$

Because $D_Ay^A$ is an $\ell=1$ scalar and the dynamical shear is magnetic parity, there is no dynamical odd-parity mass aspect and the integrated first-order energy vanishes.

# Even-parity QNM data

The direct Regge--Wheeler reconstruction also violates the desired falloffs in the even sector: $h_{u_bu_b}^{\rm RW}=O(r_b)$ and $h_{AB}^{\rm RW}=O(r_b^2)$. The paper applies an explicit gauge transformation generated by

$$
\xi^e=\frac{H_{u_bu_b}^{\rm RW}+\frac{r_b}{2}(\partial_{r_b}f)K^{\rm RW}}
{2\omega^2-\frac{\lambda_o}{2r_b}\partial_{r_b}f},
$$

$$
\xi_{u_b}=i\omega\xi^e,\qquad
\xi_{r_b}=\frac1f\left[\frac{r_b}{2}K^{\rm RW}+i\omega\xi^e
+\frac{\lambda_o}{2r_b}\xi^e\right].
$$

The transformed fields have $j_{u_b}=K=H_{u_bu_b}=0$ and the required inverse-radius falloffs. Their NU data are

$$
C_{AB}=e^{\omega_Iu}c_\omega(u)Y_{AB}
-2D_AD_BT+\bar\gamma_{AB}D^2T,
$$

$$
m=\lambda_e(\lambda_e+1)e^{\omega_Iu}c_\omega(u)Y
+3M D_Ay^A,
$$

$$
N_A=\frac{\lambda_e(\lambda_e+1)}{3\Delta_\omega}
e^{\omega_Iu}\bigl(\omega_Ic_\omega+\omega_Rs_\omega\bigr)Y_A
+2M D_AT+uM D_AD_By^B.
$$

The first term in $m$ is the dynamical electric-parity contribution. Its sphere integral vanishes for $\ell\geq2$, so the global first-order energy still vanishes even though the angle-dependent charge does not.

# Supertranslation charge and BMS-frame fixing

For a background supertranslation parameter $S(x^A)$, distinct from the first-order residual function $T(x^A)$, the paper defines

$$
Q_S=\int d\Omega^2,S,m.
$$

If the even perturbation is expanded as $Y=\sum_{\ell,m}C_{\ell,m}Y_{\ell,m}$, then

$$
Q_{\ell,m}=C_{\ell,m}\lambda_e(\lambda_e+1)
e^{\omega_Iu}c_\omega(u),\qquad \ell\geq2.
$$

At a chosen reference time, the prescription of setting the even shear to zero fixes $T_{\ell,m}$ from the same amplitudes $C_{\ell,m}$. Hence

$$
T_{\ell,m}\sim C_{\ell,m}\sim Q_{\ell,m}.
$$

The last relation is a proportionality statement within the fixed harmonic normalization and chosen reference slice. It is not a gauge-invariant equality between the residual coordinate parameter and a canonically normalized Hamiltonian charge.

# Translation into the vault's charge and sewing language

The reusable object is the explicit map from bulk perturbative data to the null-boundary triple

$$
(h_{\mu\nu}\ \text{mod first-order gauge})
\longmapsto
(C_{AB},m,N_A)\big|_{\mathscr I^+}.
$$

For regional/global observable-algebra sewing, this is upstream boundary-response data rather than a completed observable algebra. In particular:

- $C_{AB}$ is the radiative datum and $m,N_A$ are Coulombic/asymptotic response data.
- The residual $T$ changes the representative of the boundary data; the paper's charge prescription selects a representative at a reference time.
- A full CPS comparison still requires the presymplectic flux, the integrability conditions for $Q_S$, the normalization factors suppressed in the displayed charge, and the treatment of field-dependent symmetry parameters.
- The $r\log r$ branch controlled by $h_{1,r_br_b}$ should not be discarded before deciding which asymptotic phase space and regularity class are being used.
- The vanishing of the sphere-integrated linear charge does not imply that the higher-harmonic charge density or its action on boundary data is trivial.

For Brown--Henneaux-style work, the methodological point is especially useful: first construct the explicit gauge-accessibility map and boundary coefficients, then compute the charge and its algebra. Gauge accessibility alone is not yet a phase-space theorem.

# Verification log

## Checked

- Starting from
  $$
  f^2A''+f(f'+2i\omega)A'-VA=0,
  \qquad f=1-\frac{2M}{r},
  $$
  for $\psi=e^{i\omega r_*}A(r)$, Mathematica substituted the displayed recurrence and found the coefficients of $r^{-2},\ldots,r^{-6}$ to vanish identically for symbolic $M,\omega,v_2,\ldots,v_6$. This checks the recurrence through $a_5$, not an all-orders proof.
- Mathematica checked
  $$
  \frac{d}{du}\left[
  \frac{e^{\omega_Iu}(\omega_I\cos\omega_Ru+\omega_R\sin\omega_Ru)}
  {\omega_R^2+\omega_I^2}
  \right]
  =e^{\omega_Iu}\cos(\omega_Ru),
  $$
  for nonzero $\Delta_\omega$. This reproduces the time dependence required by the displayed $N_A$ evolution in both parity sectors.
- A direct unit-sphere component calculation checked, for axisymmetric $\ell=2$ and $\ell=3$ harmonics,
  $$
  D^BY_{AB}=-\lambda_eY_A,\qquad
  D^BX_{AB}=-\lambda_eX_A,\qquad
  D^AD^BY_{AB}=2\lambda_e(\lambda_e+1)Y,\qquad
  D^AD^BX_{AB}=0,
  $$
  together with $D^2Y_A=-(\ell(\ell+1)-1)Y_A$ and the analogous identity for $X_A$. These finite checks reproduce both NU evolution equations for the stated QNM data.

## Assumptions

- First order in the perturbation parameter $\epsilon$.
- Schwarzschild background with $M$ fixed and $\ell\geq2$ radiative modes.
- NU-compatible stress-tensor falloffs and the inverse-radius/polyhomogeneous expansion stated above.
- Outgoing QNM asymptotics at infinity, ingoing behavior at the horizon, and nonzero complex frequency with $\omega_I<0$.
- Smooth sphere harmonics and standard orthogonality conventions.

## Blocked

- A general xAct proof of the sphere-tensor identities was attempted, but the available normalization did not resolve the dimension-two curvature identities cleanly. The independent check was therefore limited to explicit $\ell=2,3$, $m=0$ components.
- The paper supplies no numerical QNM mode data or code, so no QNM frequency or full radial solution was regenerated.
- The complete coordinate transformation and metric reconstruction were not independently rederived component by component; the source formulas were inspected and their downstream recurrence/evolution consistency was checked.

## Not independently verified

- Completeness of the generic NU transformation for every perturbation satisfying the stated falloffs.
- Horizon regularity of the gauge transformations for every QNM.
- The claim that the charge prescription gives a unique or globally valid BMS-frame fixing beyond the chosen first-order reference slice.
- Canonical normalization, integrability, flux balance, and charge algebra of $Q_S$ in a covariant phase-space treatment.
