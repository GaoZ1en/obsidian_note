---
paper id: 2610.24040v1
title: "Canonical currents without improvements: the QCD example"
authors:
  - Tomi Koivisto
publication date: 2026-10-16T13:09:15Z
abstract: |-
  QCD coupled to General Parallel Relativity is used to derive a colour-compensated canonical current, its Belinfante-Rosenfeld relation and a finite-region spin surface term. An independent reference frame can be selected to have vanishing gravitational translation current. An exact aligned quark/gluon pp-wave solution admits such a frame and a finite periodic cell with conserved energy and rotation charges despite the absence of the corresponding metric isometries. Opposite quark helicities have the same metric and symmetric stress tensor but opposite spin contributions to the rotation charge.
comments: "6 pages"
url: https://arxiv.org/abs/2610.24040v1
summary: "The explicit pp-wave and finite-cell surface charges are checked; canonical-frame selection, boundary integrability and restricted zero-flux conditions are kept distinct from a universal uniqueness or conservation claim."
tags: []
---

# Canonical-frame currents and a finite-cell spin charge

The concrete result is an exact classical example in which

$$
g_{\mu\nu}^{(+)}=g_{\mu\nu}^{(-)},\qquad
T_{\mu\nu}^{(+)}=T_{\mu\nu}^{(-)},\qquad
H_\varphi^{(\pm)}=\pm\frac{N_q}{2}.
$$

The two configurations differ by quark helicity. Their finite-region rotation charge contains a spin surface term that is absent from the symmetric stress tensor. The metric, Dirac equation, gauge stress tensor, canonical-frame condition, relevant boundary potential and surface integrals can all be checked explicitly.

The general statement is conditional. Matter translation currents are separately conserved on coupled solutions **admitting a reference frame satisfying** $J_{G,a}=0$. This is a frame-selection condition, not an Euler–Lagrange equation. Rotations require an additional term because their coefficients in the reference frame are position dependent. A Hamiltonian rotation charge also needs a specified boundary phase space; conservation requires control of flux.

**Source-derived:** complete reading of [v1](https://arxiv.org/abs/2610.24040v1), §§I–VII and Appendix A. **Checked:** exact component and Clifford calculations, a nontrivial flat massive-Dirac check of the spin-divergence identity, the pp-wave construction, restricted boundary potential, non-Abelian extension and finite-cell integrals. Broader claims about unique physical currents or existence/uniqueness of canonical frames are not established by these checks.

## Section map and conventions

| Source | Main step |
|---|---|
| I | Motivation: improvements, reference frames and finite-region spin |
| II, Eqs. (1)–(7) | Independent coframe/tetrad, coupled action and QCD boundary potential |
| III, Eqs. (8)–(14) | Compensated diffeomorphisms, canonical density, Belinfante relation and balance law |
| IV, Eqs. (15)–(19) | Gravitational superpotential and canonical-frame condition |
| V, Eqs. (20)–(23) | Nonconstant frame coefficients, total rotation potential and Hamiltonian integrability |
| VI, Eqs. (24)–(28) | Exact pp-wave, finite periodic cell, energy and helicity-sensitive rotation charge |
| VII | Interpretation and limits |
| Appendix A | A genuinely noncommuting $SU(3)$ wave with the same geometry and charges |

The reference coframe $e^a{}_\mu$ and its dual, denoted here by $e_a{}^\mu$, are independent of the metric tetrad $h^I{}_\mu$ and its dual $h_I{}^\mu$. Indices $a,b$ label the reference $GL$ frame, $I,J$ the metric Lorentz frame, and $\mu,\nu$ coordinates.

The metric and Clifford conventions are

$$
g_{\mu\nu}=\eta_{IJ}h^I{}_\mu h^J{}_\nu,\qquad
\eta_{IJ}=\operatorname{diag}(-1,1,1,1),
$$

$$
\{\gamma^I,\gamma^J\}=-2\eta^{IJ},\qquad
\gamma^{IJ}=\gamma^{[I}\gamma^{J]},\qquad
\bar\psi=\psi^\dagger\gamma^0.
$$

Thus the gamma matrices may be the usual Dirac matrices with
$(\gamma^0)^2=1$, $(\gamma^i)^2=-1$, despite the mostly-plus metric. Antisymmetrization has weight $1/2$. Also
$\kappa=(8\pi G)^{-1}$ and
$\operatorname{tr}(t_At_B)=\delta_{AB}/2$.

The objects $\Theta^{\mu\nu}$, $\mathcal S^{\rho\mu\nu}$, $J^\mu$ and $H_a{}^{\lambda\mu}$ are densities. Their ordinary coordinate divergences and surface integrals must not be confused with integrals of undensitized tensors against an independently inserted volume factor.

## II: independent reference data and the QCD action

The reference defines a torsion-free connection

$$
\Gamma^\alpha{}_{\mu\nu}
=e_a{}^\alpha\partial_{(\mu}e^a{}_{\nu)}.
$$

The gravitational action instead uses the full difference tensor

$$
X^\alpha{}_{\mu\nu}
=e_a{}^\alpha\partial_\mu e^a{}_\nu
-\mathring\Gamma^\alpha{}_{\mu\nu},
$$

where the ring denotes the metric Levi-Civita connection. The two expressions should not be interchanged for an anholonomic coframe.

For the Hermitian colour connection,

$$
F_{\mu\nu}
=2\partial_{[\mu}A_{\nu]}-ig_s[A_\mu,A_\nu].
$$

It does not involve the spacetime connection. The spinor derivative is

$$
\nabla_\mu\psi
=\left[
\partial_\mu
-\frac14h_{I\nu}
\left(\partial_\mu h_J{}^\nu
+\Gamma^\nu{}_{\mu\rho}h_J{}^\rho\right)\gamma^{IJ}
-ig_sA_\mu
\right]\psi.
$$

The coupled action is

$$
\begin{aligned}
I=\int d^4x\sqrt{-g}\bigg[
&-\kappa X^\alpha{}_{[\beta}{}^\beta
X^\gamma{}_{\gamma]\alpha}
-\frac12\operatorname{tr}(F_{\mu\nu}F^{\mu\nu})\\
&+\sum_f\left(
\frac i2\bar\psi_f\gamma^\mu
\overset{\leftrightarrow}{\nabla}_\mu\psi_f
-m_f\bar\psi_f\psi_f\right)
\bigg].
\end{aligned}
$$

The gravitational term differs from $\kappa\mathring R/2$ by a divergence. Its chosen boundary representative is part of the current prescription.

The Hermitian Dirac action is independent of the torsion-free reference connection. Its change under a symmetric connection difference contracts that difference with
$\{\gamma^\mu,\gamma^{IJ}\}$, which is totally antisymmetric in the relevant three frame directions. Hence the reference coframe drops out of the QCD bulk action. Replacing $\nabla$ by $\mathring\nabla$ in that action is therefore legitimate under the stated torsion-free assumption.

The Hilbert tensor is defined by metric-tetrad variation:

$$
T^{\mu\nu}
=\tau_I{}^{(\mu}h_J{}^{\nu)}\eta^{IJ},\qquad
\tau_I{}^\mu=\frac1{\sqrt{-g}}
\frac{\delta I_{\rm QCD}}{\delta h^I{}_\mu}.
$$

On the spinor equations, local Lorentz invariance supplies its symmetry.

### The boundary potential and the spin density

Variation gives

$$
\begin{aligned}
\theta^\mu_{\rm QCD}[\delta]
={}&-\sqrt{-g}\,F_A^{\mu\nu}\delta A^A_\nu
+\frac12\mathcal S^{\mu IJ}h_{J\nu}\delta h_I{}^\nu\\
&+\frac i2\sqrt{-g}\sum_f
\left(\bar\psi_f\gamma^\mu\delta\psi_f
-\delta\bar\psi_f\gamma^\mu\psi_f\right),
\end{aligned}
$$

with

$$
\mathcal S^{\rho\mu\nu}
=\frac i4\sqrt{-g}\sum_f
\bar\psi_f\{\gamma^\rho,\gamma^{\mu\nu}\}\psi_f.
$$

This spin density is completely antisymmetric. It arises from varying the tetrad-dependent spinor connection, rather than being appended to the stress tensor afterward. Minimal Yang–Mills curvature has no response to an independent Lorentz connection; this does not mean that gluon configurations have no angular momentum.

## III: compensated Noether current and Belinfante relation

Combine a diffeomorphism with colour and Lorentz compensation:

$$
\widehat\delta_\xi A_\mu=\xi^\nu F_{\nu\mu},\qquad
\widehat\delta_\xi\psi=\xi^\mu\mathring\nabla_\mu\psi,\qquad
\widehat\delta_\xi h^I{}_\mu
=h^I{}_\nu\mathring\nabla_\mu\xi^\nu.
$$

The last equation gives
$\widehat\delta_\xi g_{\mu\nu}=2\mathring\nabla_{(\mu}\xi_{\nu)}$.
On the Dirac equations, the Hermitian kinetic term equals the mass term, so the quark Lagrangian vanishes on shell even for nonzero mass.

With the paper's current sign,

$$
J^\mu_\xi
=\sqrt{-g}\,\xi^\mu\mathcal L_{\rm QCD}
-\theta^\mu_{\rm QCD}[\widehat\delta_\xi]
=\Theta^{\mu\nu}\xi_\nu
-\frac12\mathcal S^{\lambda\mu\nu}
\mathring\nabla_\lambda\xi_\nu,
$$

where

$$
\begin{aligned}
\Theta^{\mu\nu}
=\sqrt{-g}\bigg[
&2\operatorname{tr}\left(
F^{\mu\lambda}F^\nu{}_\lambda
-\frac14g^{\mu\nu}F_{\rho\sigma}F^{\rho\sigma}\right)\\
&-\frac i2\sum_f
\bar\psi_f\gamma^\mu
\overset{\leftrightarrow}{\mathring\nabla}{}^\nu\psi_f
\bigg].
\end{aligned}
$$

Colour compensation removes the gauge-dependent connection term that occurs in an uncompensated translation current. Pure Lorentz-lift changes cancel between the spinor and tetrad pieces for this prescribed transformation.

The on-shell Lorentz identity is

$$
\partial_\lambda\mathcal S^{\lambda\mu\nu}
=\Theta^{\nu\mu}-\Theta^{\mu\nu}.
$$

For a completely antisymmetric weight-one density, the Levi-Civita connection contributions to this divergence cancel. Consequently,

$$
\sqrt{-g}\,T^{\mu\nu}
=\Theta^{(\mu\nu)}
=\Theta^{\mu\nu}
+\frac12\partial_\lambda\mathcal S^{\lambda\mu\nu}.
$$

Substitution gives the useful surface form

$$
J^\mu_\xi
=\sqrt{-g}\,T^{\mu\nu}\xi_\nu
-\frac12\partial_\lambda
\left(\mathcal S^{\lambda\mu\nu}\xi_\nu\right).
$$

The spin term may be nonzero even when
$\partial_\lambda\mathcal S^{\lambda\mu\nu}=0$, because the derivative also acts on $\xi$.

### The actual conservation criterion

On the matter equations,

$$
\partial_\mu J^\mu_\xi
=\sqrt{-g}\,T^{\mu\nu}
\mathring\nabla_{(\mu}\xi_{\nu)}.
$$

A Killing vector is sufficient for conservation for arbitrary matter configurations. It is not necessary on a particular solution: the contraction can vanish for a non-Killing generator.

The abstract's unqualified statement that curved-spacetime currents are conserved only along metric symmetries should therefore be read with this correction. The explicit solution below satisfies the weaker contraction condition directly, as the paper's own body explains.

## IV: canonical frames are an additional selection

For reference translations $\xi^\mu=e_a{}^\mu$, the gravitational current is

$$
J^\mu_{G,a}
=-\kappa\sqrt{-g}\,\mathring G^\mu{}_\nu e_a{}^\nu
+\partial_\lambda H_a{}^{\lambda\mu},
$$

$$
H_a{}^{\lambda\mu}
=-\kappa\sqrt{-g}\,e_a{}^\alpha
\left(X^{[\lambda}{}_\alpha{}^{\mu]}
+2\delta^{[\lambda}_\alpha X^{\mu]}\right),
$$

with

$$
X^\mu=X^{[\mu}{}_\alpha{}^{\alpha]}
=\frac12\left(
g^{\alpha\beta}X^\mu{}_{\alpha\beta}
-g^{\mu\beta}X^\alpha{}_{\alpha\beta}\right).
$$

The total current obeys

$$
\partial_\mu J^\mu_{{\rm tot},\xi}
=\sqrt{-g}\left(T^{\mu\nu}-\kappa\mathring G^{\mu\nu}\right)
\mathring\nabla_{(\mu}\xi_{\nu)}.
$$

The coupled Einstein equation conserves this total current for any generator; it does not generally conserve the matter current separately.

A canonical reference is defined by

$$
J^\mu_{G,a}=0.
$$

In such a frame, on a coupled solution,

$$
J^\mu_a=J^\mu_{{\rm tot},a}
=\partial_\lambda
\left(H_a{}^{\lambda\mu}
-\frac12\mathcal S^{\lambda\mu\nu}e_{a\nu}\right),
\qquad \partial_\mu J^\mu_a=0.
$$

The paper explicitly states that $J_{G,a}=0$ is not obtained by varying the action: the reference has no bulk field equation. It selects a class of frames. The short paper does not prove a general global existence or uniqueness theorem for this condition. Its pp-wave example supplies one exact canonical frame.

## V: rotation, integrability and spin surface terms

For $\xi=f^ae_a$, a nonconstant $f^a$ gives

$$
J^\mu_{G,\xi}
=f^aJ^\mu_{G,a}
+(\partial_\lambda f^a)H_a{}^{\lambda\mu}.
$$

The canonical condition removes only the first term. The full current has

$$
J^\mu_{{\rm tot},\xi}
=\sqrt{-g}\left(T^{\mu\nu}-\kappa\mathring G^{\mu\nu}\right)\xi_\nu
+\partial_\lambda Q_\xi^{\lambda\mu},
$$

$$
Q_\xi^{\lambda\mu}
=f^aH_a{}^{\lambda\mu}
-\frac12\mathcal S^{\lambda\mu\nu}\xi_\nu.
$$

Thus separate matter rotation conservation does not follow merely from separate translation conservation.

Let a fixed rotation generator $\varphi$ of period $2\pi$ be tangent to a fixed closed two-surface $\mathcal B$, and suppose it preserves the allowed boundary-data family. In the paper's convention,

$$
\delta H_\varphi
=\oint_{\mathcal B}
\left[\delta Q_\varphi+i_\varphi(\theta_G+\theta_{\rm QCD})\right]
=\delta\oint_{\mathcal B}Q_\varphi.
$$

The pullback of $i_\varphi\theta$ vanishes because a three-form is being evaluated on three vectors tangent to a two-dimensional surface. This gives integrability for the stated fixed surface/generator and potential prescription. It is not a statement about arbitrary field-dependent generators, moving boundaries or arbitrary boundary counterterms.

Conservation across time additionally requires a flux statement. The paper checks a restricted family of aligned-wave variations; it does not give a general boundary condition for all QCD and gravitational perturbations.

In the flat limit, the kinetic angular-momentum density is

$$
J_{\rm kin}^{\rho\mu\nu}
=2x^{[\mu}\Theta^{|\rho|\nu]}+\mathcal S^{\rho\mu\nu}.
$$

For a finite region,

$$
J_{\rm kin}^{\mu\nu}(V)-J_{\rm BR}^{\mu\nu}(V)
=-\frac12\oint_{\partial V}dS\,\hat n_k
\left(x^\mu\mathcal S^{k0\nu}
-x^\nu\mathcal S^{k0\mu}\right).
$$

Complete antisymmetry means that, on a two-surface with two independent normals, only the component of $\xi$ tangent to the surface contributes to the spin potential. A normal time evolution has no such spin correction, while a rotation can.

## VI: reconstructing the exact coupled wave

### Geometry, quarks and gluons

Use coordinates $(t,x,y,z)$ and

$$
u=t-z,\qquad k_\mu=(1,0,0,-1),\qquad
e^a=dx^a,\qquad
g_{\mu\nu}=\eta_{\mu\nu}+Wk_\mu k_\nu.
$$

The inverse and determinant are

$$
g^{\mu\nu}=\eta^{\mu\nu}-Wk^\mu k^\nu,\qquad
\det g=-1,\qquad k^\mu=(-1,0,0,-1).
$$

The vector $k$ is covariantly constant, and every profile depends on $u,x,y$, with $k^\mu\partial_\mu W=0$.

Take three massless flavours with orthonormal colour vectors $c_f$ spanning the fundamental representation and
$t_3c_f=\lambda_fc_f$, $\sum_f\lambda_f=0$:

$$
\psi_f=\sqrt{\frac{n(u)}3}\,e^{-i\Phi(u)}
\chi\otimes c_f,
$$

$$
(\gamma^{\hat0}-\gamma^{\hat3})\chi=0,\qquad
\chi^\dagger\chi=1,\qquad n>0,\quad\Phi'>0.
$$

The circularly polarized gluon wave is

$$
A=-t_3(x\varepsilon_x+y\varepsilon_y)\,du,
\qquad
(\varepsilon_x,\varepsilon_y)
=E_0(\cos\omega_gu,\ \pm\sin\omega_gu),
$$

so $F=t_3\,k\wedge\varepsilon$ and $F_{ui}=t_3\varepsilon_i$.

Choose

$$
W=-\frac{\rho+E_0^2}{2\kappa}(x^2+y^2)
+b_+(u)(x^2-y^2)+2b_\times(u)xy,
\qquad \rho=\Phi'n.
$$

The two $b$ functions are transverse harmonic vacuum-wave contributions.

### Dirac and Yang–Mills equations

The tetrad

$$
h^I{}_\mu=\delta^I_\mu+\frac W2k^Ik_\mu
$$

has a simple inverse because $k$ is null. In this tetrad, the spin connection annihilates the two independent constant null spinors. The colour potential also appears multiplied by $k_\mu$, giving

$$
\mathring\nabla_\mu\psi_f
=k_\mu\left(
\frac{n'}{2n}-i\Phi'
+ig_s\lambda_f x^i\varepsilon_i\right)\psi_f.
$$

Contraction with $\gamma^\mu$ vanishes by the null-spinor condition. In a standard Dirac representation, convenient normalized helicity representatives are

$$
\chi_+=\frac1{\sqrt2}(1,0,1,0)^T,\qquad
\chi_-=\frac1{\sqrt2}(0,1,0,-1)^T,
$$

$$
\Sigma_3=i\gamma^{\hat1}\gamma^{\hat2},\qquad
\Sigma_3\chi_\pm=\pm\chi_\pm.
$$

Their vector bilinear is
$\bar\chi\gamma^\mu\chi=-k^\mu$ in this metric convention.

Summing one equal-amplitude flavour per orthonormal colour vector gives
$\sum_fc_f^\dagger t_Ac_f=\operatorname{tr}t_A=0$,
so the colour current vanishes. The null alignment gives
$k_\mu F^{\mu\nu}=0$, and the transverse-uniform wave satisfies the source-free Yang–Mills equation. The $\lambda_f$ terms in the quark stress tensor cancel in the flavour sum.

### Einstein equation and non-Killing generators

The only Ricci tensor contribution is

$$
\mathring G_{\mu\nu}
=-\frac12(\partial_x^2+\partial_y^2)W\,k_\mu k_\nu,
\qquad \mathring R=0.
$$

The quark and gluon stresses are respectively
$\rho\,k_\mu k_\nu$ and $E_0^2k_\mu k_\nu$.
The chosen $W$ therefore solves

$$
\kappa\mathring G_{\mu\nu}
=(\rho+E_0^2)k_\mu k_\nu=T_{\mu\nu}.
$$

Neither helicity changes this tensor. Generic $u$ dependence removes the $\partial_t$ isometry. For
$\varphi=x\partial_y-y\partial_x$,

$$
\varphi(W)
=2b_\times(x^2-y^2)-4b_+xy,
$$

so generic vacuum-wave polarizations remove the rotation isometry too.

Nevertheless,

$$
T^{\mu\nu}\mathring\nabla_\mu\xi_\nu
=(\rho+E_0^2)\,k^\mu\partial_\mu(k\cdot\xi).
$$

This vanishes for both $\xi=\partial_t$ and $\xi=\varphi$.
Thus the example's separate matter-current conservation also follows directly from the usual balance law. The canonical frame provides the chosen surface representation and interpretation; it does not replace that balance law.

### Exact canonical-frame check

For the Cartesian reference, $X=-\mathring\Gamma$ and $X^\mu=0$. The superpotential reduces to

$$
H_a{}^{\lambda\mu}
=\frac\kappa2k_a
\left(k^\lambda\partial^\mu W-k^\mu\partial^\lambda W\right).
$$

Direct differentiation gives

$$
\partial_\lambda H_a{}^{\lambda\mu}
=\kappa\mathring G^\mu{}_a,
$$

for arbitrary smooth $W(u,x,y)$. Therefore
$J^\mu_{G,a}=0$ exactly, not merely in a weak-wave approximation.

## The finite cell and its boundary phase space

Keep

$$
V=D_R^2\times S_L^1,\qquad z\sim z+L
$$

with finite $R,L$. The profiles are $L$-periodic, with

$$
\Phi(u+L)-\Phi(u)\in2\pi\mathbb Z,\qquad
\omega_gL\in2\pi\mathbb Z,
\qquad 1+W>0
$$

throughout the chosen cell. The last condition makes the constant-$t$ spatial slice nondegenerate and spacelike in this description. These conditions are part of the setup; no $R\to\infty$ limit or isolated transverse wave packet is taken.

Periodicity removes longitudinal endcaps. The remaining boundary is the torus $r=R$. The allowed variations keep wave amplitudes fixed while varying normalized null polarizations, rotating gluon/gravitational polarizations, and applying rigid transverse rotations of the reference frame.

The absence of radial symplectic flux has several separate ingredients:

- For any two spinors in the null two-dimensional spinor subspace,
  $\chi_1^\dagger\gamma^{\hat0}\gamma^{\hat r}\chi_2=0$.
- The Yang–Mills potential has
  $F^{r\nu}\delta A_\nu=0$ for $\delta A\propto k$.
- The metric-tetrad spin term vanishes for the aligned $\delta h\propto k^Ik_\mu$ variations.
- The gravitational potential from the displayed first-derivative action vanishes for $\delta g_{\mu\nu}=\delta W\,k_\mu k_\nu$ and for rigid transverse frame rotations.

The last item was checked directly from the action's derivative coefficients, not inferred from the Einstein equation. Writing
$\mathcal L_G=\mathcal L_G(g,X)$ and
$\mathcal F_\alpha{}^{\mu\nu}
=\partial(\sqrt{-g}\mathcal L_G)/\partial X^\alpha{}_{\mu\nu}$,
the derivative part of $\delta X$ is

$$
\delta X^\alpha{}_{\mu\nu}\big|_{\partial\delta}
=e_a{}^\alpha\partial_\mu\delta e^a{}_\nu
-\frac12g^{\alpha\rho}
\left(\partial_\mu\delta g_{\rho\nu}
+\partial_\nu\delta g_{\rho\mu}
-\partial_\rho\delta g_{\mu\nu}\right).
$$

Extracting the coefficients of these derivatives gives a boundary potential whose four components vanish on the two stated variation directions. Since the potential vanishes throughout this restricted family, its antisymmetrized variation gives no flux there. This check does not cover arbitrary perturbations outside the family.

The rotation preserves the gravitational polarization amplitude:

$$
\delta_\varphi b_+=2b_\times,\qquad
\delta_\varphi b_\times=-2b_+,\qquad
\delta_\varphi(b_+^2+b_\times^2)=0.
$$

## Energy, momentum and rotation: explicit surface integrals

The translation spin term integrates to zero around the circle. Since $k^r=0$,

$$
H_a{}^{rt}=\frac\kappa2k_a\,\partial_rW.
$$

Using the coordinate Gauss surface element appropriate to this density,
$dS=R\,d\phi\,dz$,

$$
P_a=\frac\kappa2k_a\oint_{\partial V}\partial_rW\,dS
=-k_a\int_V(\rho+E_0^2)\,d^3x.
$$

The harmonic terms integrate to zero. Hence

$$
E=-P_t
=\pi R^2\int_0^L(\rho+E_0^2)\,dz>0,\qquad
P_z=E.
$$

One should not insert an extra induced-metric volume factor into this density integral. The reference-frame energy here differs in interpretation from a detector-frame gravitational-wave energy; the absence of the harmonic wave's contribution is a statement about this chosen canonical frame.

For rotation,
$k_\mu\varphi^\mu=0$, so both
$f^aH_a{}^{\lambda\mu}$ and
$T^t{}_\nu\varphi^\nu$ vanish. The spin density is divergence-free but has

$$
\mathcal S^{txy}
=\frac n2\chi^\dagger\Sigma_3\chi.
$$

Set $s=\mathcal S^{txy}$. The transverse spin potential has

$$
Q_\varphi^{xt}=\frac12sx,\qquad
Q_\varphi^{yt}=\frac12sy,
$$

so its divergence is $J_\varphi^t=s$. Integrating either the bulk density or its surface flux gives

$$
H_\varphi
=\frac{N_q}{2}\chi^\dagger\Sigma_3\chi,\qquad
N_q=\pi R^2\int_0^Ln(u)\,dz.
$$

Thus $H_\varphi=\pm N_q/2$ for the two helicities. The metric and symmetric stress tensor are identical. For a common choice of reference, the gravitational contribution is the same for the two configurations, so their charge difference is independent of that common reference contribution.

Periodicity gives
$d\int_0^Lf(t-z)\,dz/dt=f(t)-f(t-L)=0$.
Therefore $P_a$, $N_q$ and the helicity eigenstate charges are time independent.

The uniform circular gluon wave's helicity does not enter this rotation charge. This is a property of the aligned, transverse-uniform wave and the prescribed finite-cell charge. It is not a claim that arbitrary localized gluon configurations have no spin/angular-momentum contribution.

## Appendix A: genuinely non-Abelian waves

Replace the single-generator wave by

$$
A=-x^i\mathcal E_i(u)\,du,
$$

$$
\mathcal E_x=E_0\cos(\omega_gu)t_3,
$$

$$
\mathcal E_y
=\sigma E_0\sin(\omega_gu)
\left(\cos\alpha\,t_3+\sin\alpha\,t_1\right),
\qquad \sigma=\pm1.
$$

Because $A\propto k$, its wedge-square vanishes, while
$k_\mu F^{\mu\nu}=0$ removes the commutator term from the Yang–Mills equation. Matrix-valued transverse profiles need not commute for this argument.

The colour traces are

$$
\operatorname{tr}\mathcal E_i=0,\qquad
2\operatorname{tr}(\mathcal E_x^2+\mathcal E_y^2)=E_0^2.
$$

Thus the same three-flavour trace cancellation, stress tensor, geometry and charges remain. Yet

$$
[F_{ux},F_{uy}]
=\frac i2\sigma E_0^2\sin\alpha\,
\sin(2\omega_gu)t_2.
$$

For $\sin\alpha\ne0$, this is nonzero at generic $u$, so the field is not gauge equivalent to an Abelian configuration. The gauge-invariant mixed trace is

$$
2\operatorname{tr}(F_{ux}F_{uy})
=\frac12\sigma E_0^2\cos\alpha\,\sin(2\omega_gu),
$$

which distinguishes the family on $\alpha\in[0,\pi]$ under the stated nondegenerate wave conditions. These matrix identities were independently reproduced.

## CPS interpretation and scope of “without improvements”

The paper gives a definite current once the action representative, compensated transformation, reference prescription and boundary phase space have been selected. The spin surface term is then fixed by that variational calculation. This is a useful way to avoid inserting a tensor improvement without tracking its boundary effect.

It does not prove that all possible boundary-potential or Lagrangian representatives give identical finite-region charges. Standard shifts of a potential by an exact form, changes of boundary action, or different choices of allowed boundary variables require a new CPS comparison. Likewise, the canonical-frame equation is a selection criterion whose general solution space is not classified here.

Three operations should therefore remain separate:

1. Relating $\Theta$ and $T$ by the on-shell Lorentz identity.
2. Selecting a reference with $J_{G,a}=0$.
3. Defining an integrable, conserved finite-region Hamiltonian on a specified boundary phase space.

The explicit wave performs all three within a narrow family. The most reusable regional calculation is the spin potential
$-\frac12\mathcal S^{\lambda\mu\nu}\xi_\nu$:
its divergence can vanish for translations yet survive for a position-dependent rotation, and its boundary integral distinguishes states with the same symmetric tensor.

The non-Killing conservation example is also precise. A Killing vector is a universal sufficient condition, while this solution uses the special null stress tensor and $k\cdot\xi$. The example should not be presented as a general failure of the ordinary stress-tensor balance law.

## Verification ledger

**Verified:**

| Check | Independent result |
|---|---|
| Clifford and torsion-free connection cancellation | Exact $4\times4$ gamma matrices: Clifford residuals vanish; an arbitrary connection difference symmetric in its lower spacetime indices drops out of the Hermitian Dirac action |
| Nontrivial Belinfante spin divergence | A superposition of two massive flat-space Dirac waves, $m=1$, $E=2$, momenta along different axes, has nonzero antisymmetric $\Theta$; Dirac, spin-divergence and symmetric-tensor conservation residuals all vanish |
| pp-wave metric | xAct-hosted exact components for arbitrary $W(t-z,x,y)$: inverse, determinant $-1$, parallel $k$, Ricci tensor and zero scalar curvature reproduced |
| Canonical frame | The general displayed superpotential reduces to the pp-wave expression; all components of $\partial_\lambda H_a{}^{\lambda\mu}-\kappa G^\mu{}_a$ vanish |
| Gravitational boundary potential | Derived from the first-derivative $X$ action; all four components vanish for aligned $\delta W$ and rigid transverse frame-rotation variations |
| Spinors | Both normalized helicity representatives satisfy the null condition; the computed pp-wave spin connection annihilates them; vector currents agree and $\mathcal S^{txy}/n=\pm1/2$ |
| Boundary spinor flux | Every transverse bilinear between the two null-spinor basis vectors vanishes, establishing the claim for their full linear span |
| Spin density | Complete antisymmetry and divergence-free density for arbitrary $n(t-z)$ reproduced |
| Gauge wave | Null contraction, zero scalar $F^2$, and the full stress tensor $E_0^2k_\mu k_\nu$ checked |
| Coupled profile | Transverse Laplacian of $W$ gives exactly $(\rho+E_0^2)/\kappa$ with the stated sign |
| Cell charges | Angular Gauss integrals reproduce energy and spin flux; harmonic gravitational terms vanish from the translation charge |
| Non-Abelian extension | Explicit $SU(3)$ matrices reproduce the commutator, mixed trace and total intensity; flavour-energy trace cancellation gives zero residual |

**Assumptions:** classical fields; the paper's metric/Clifford and density conventions; three equal-amplitude massless flavours in a complete colour basis for the exact solution; smooth periodic profiles, finite $R,L$, phase/wave periodicity and $1+W>0$; a fixed rotation and fixed boundary surface; the restricted allowed polarization/reference variations.

**Not verified:** a general canonical-frame existence or uniqueness theorem; the full arbitrary-background derivation of the gravitational Noether identity from scratch; quantum QCD or hadronic states; arbitrary boundary perturbations; an isolated-wave or $R\to\infty$ limit; invariance of all finite-region charges under changes of boundary action/potential; a universal resolution of pseudogauge or gravitational-energy ambiguity.

**Failed / Blocked:** no irreparable algebraic failure or access blocker was found in the explicit construction. The abstract's “only along metric symmetries” wording is too strong without the solution-dependent balance-law qualification above. Initial verification scripts had bracket syntax errors and a missing map argument in the colour sum; corrected runs are those reported here, and these tool-code errors are not source failures.

## Source and completion audit

The official PDF and TeX source were retrieved outside the vault. All sections and Appendix A were read; PDF pages 1–5, containing all technical formulas and the cell figure, were rendered and inspected. The remaining page is bibliography continuation. A browser fetch of the versioned abstract returned a cache miss, while direct official PDF/source retrieval and the earlier official abstract metadata retrieval succeeded.

The completed note reconstructs the variational-current chain, the canonical-frame condition, rotation integrability, exact coupled solution, finite-cell boundary prescription and non-Abelian extension, with the computational and interpretation limits stated separately.
