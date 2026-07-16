---
paper id: 2607.10561v1
title: Quantum Horizon and Quantum Membrane Paradigm from Black Hole Quantum Mechanics
authors:
  - Chong-Sun Chu
publication date: 2026-07-12T04:27
abstract: |-
  A matrix quantum-mechanical black-hole model is expanded into a fuzzy-sphere horizon block, a Cartesian environmental block, and bifundamental link fields. Fundamental horizon fermions see the fuzzy sphere's Berry monopole and form lowest-Landau-level partons. Their guiding-center motion supplies Hall transport, a phenomenological thermal friction supplies longitudinal transport, and the horizon gauge-field kinetic term supplies a reactive polarization response. A tachyonic link mode condenses in a Planck-thick layer, locks the horizon gauge field to the exterior Maxwell boundary value, and turns the microscopic response into a frequency- and helicity-dependent boundary condition.
comments: "52 pages. 3 appendices"
url: https://arxiv.org/abs/2607.10561v1
summary: "A long-form reconstruction of how fuzzy-sphere Berry geometry, LLL partons, bifundamental-link condensation, and a dynamical horizon gauge field combine into a microscopic electromagnetic membrane boundary condition, including the precise conjectural and failed steps."
tags: []
---

Back to [[2026_07_14_overview]].

This paper is useful because it does not merely assign constitutive data to a stretched horizon. It proposes a microscopic interface system and follows a concrete chain

$$\begin{align}
\text{matrix blocks} \longrightarrow
\text{Berry-monopole LLL partons} \longrightarrow
\text{Hall/longitudinal response} \longrightarrow
\text{link condensation} \longrightarrow b_A\simeq a_A|_{r=R} \longrightarrow \text{Maxwell boundary admittance}.
\end{align}$$

The result is promising but not a derivation of a complete black-hole geometry or a complete covariant phase space. The universal longitudinal conductivity is conjectural, the dissipative response has no KMS/Kubo derivation, the Schwarzschild propagation problem is assumed, and a printed polarization identity has the wrong sign. Those boundaries are part of the result, not afterthoughts.

# How to read this long paper

The essential route is Sections 2, 3.1, 4.2--4.5, 5.3, and 6.1--6.3. Section 5.1 is needed to understand why the link is a relative-gauge-field Higgs variable; Section 5.2 is a technical reference for later three-block extensions. The appendices are not optional: Appendix A fixes the sphere frames and orientation, Appendix B justifies the coherent-state continuum map, and Appendix C proves the Berry line-bundle data.

| Source part | Technical role | Reading status |
|---|---|---|
| Section 1 | States the matrix model and the three problems: intrinsic monopole, parton transport, and coupling to the exterior | Essential orientation |
| Section 2 | Derives the classical stretched-horizon Maxwell target and the purely ingoing condition | Essential benchmark |
| Section 3.1 | Expands the fuzzy-sphere block into a tangential gauge field and a normal scalar | Essential; source of the later polarization term |
| Section 3.2 | Expands a commuting Cartesian block into exterior Maxwell theory | Essential interface data |
| Section 4.1 | Defines the charged half-filled parton ensemble | Essential charge bookkeeping |
| Sections 4.2--4.4 | Constructs the Berry line bundle, LLL states, and guiding-center phase space | Essential microscopic mechanism |
| Section 4.5 | Derives Hall response and models longitudinal response with friction | Essential, but the longitudinal normalization is conjectural |
| Section 5.1 | Expands a two-block matrix model into node and bifundamental link sectors | Technical foundation |
| Section 5.2 | Generalizes links to many blocks and exposes triangle/path interactions | Reference for future interior blocks |
| Section 5.3 | Restores the temporal-gauge Gauss constraint and matches exterior flux to horizon parton charge | Essential charge interface |
| Section 6.1 | Finds a tachyonic outward-extremal link mode and its condensate | Essential locking mechanism |
| Section 6.2 | Integrates the locking force into a boundary current with Ohmic, Hall, and polarization parts | Essential constitutive law |
| Section 6.3 | Converts the admittance into helicity-resolved reflectivity | Essential phenomenological consequence |
| Section 7 | Discusses open-string links, emergent gravity, fuzzballs, chaos, interiors, and de Sitter horizons | Research agenda, not established results |
| Appendix A | Sphere frames, projector, trace--integral map, and fuzzy derivatives | Required conventions |
| Appendix B | Coherent states, resolution of identity, Berezin/star product, and large-$N$ Abelian limit | Required continuum control |
| Appendix C | Berry connection, curvature, Chern number, Poisson bracket, and fuzzy commutator | Required topology and symplectic data |

The global derivation map is

$$\begin{aligned}
&\text{matrix action and two-block expansion} \xrightarrow{\text{Secs. 3 and 5}}
(b_A,a_A,W_A,\text{Gauss law})\\
&\text{fuzzy spin frame and Berry line bundle} \xrightarrow{\text{Secs. 4.2--4.4}}
(\mathcal F,\text{LLL},\{\cdot,\cdot\}_{\rm GC})\\
&\text{guiding-center response and thermal friction} \xrightarrow{\text{Sec. 4.5}}
(\sigma_H,\sigma_{xx})\\
&\text{outward-extremal link instability} \xrightarrow{\text{Sec. 6.1}} \langle W_A\rangle\neq0 \xrightarrow{\text{Sec. 6.2}} b_A-a_A=O(\mathscr K^{-1})\\
&\hspace{7em}\xrightarrow{\text{Maxwell variation}} F_A{}^n=4\pi j_A^{\rm tot} \xrightarrow{\text{Sec. 6.3}} \mathcal R_\pm(\omega).
\end{aligned}$$

The global equation ledger used across the section-specific reconstruction is:

| Source equations | Object | Downstream use |
|---|---|---|
| (1.1) | Matrix action and fundamental-fermion coupling | Defines every horizon, environment, and link sector |
| (2.3), (2.9)--(2.10) | Classical membrane current and ingoing condition | Benchmark for the quantum boundary condition |
| (3.18), (3.28) | Horizon and environmental Maxwell actions | Fixes the relative normalization needed for locking |
| (C.3)--(C.4), (4.21)--(4.22) | Berry connection, curvature, Chern number, and LLL count | Produces the intrinsic monopole and $N$ LLL states |
| (4.40)--(4.41) | Guiding-center symplectic form and bracket | Generates Hall drift |
| (4.64)--(4.73) | Langevin inversion and conductivities | Produces $\sigma_H$ and the conjectural $\sigma_{xx}$ |
| (5.59), (5.64)--(5.69) | Total Gauss constraint and block charges | Identifies exterior flux with parton imbalance |
| (6.34)--(6.48) | Link eigenvalue, quartic potential, and condensate | Establishes a Planck-thick locking layer |
| (6.53)--(6.60) | Covariant link derivative and locking kernel | Higgses the relative horizon/environment gauge field |
| (6.64)--(6.68) | Ohmic, Hall, polarization, and total boundary currents | Gives the full horizon admittance |
| (6.69), (6.72), (6.74)--(6.79) | Robin condition, helicity response, and optical observables | Converts microscopic response into reflectivity |

# Fields, indices, and approximation regime

The basic matrix model is Eq. (1.1),

$$\begin{align}
S=\int dt\,\operatorname{Tr}\!\left[ \frac{1}{2a_0^2M_P}\dot X_a^2 +\frac{M_P}{N^2}\bigl([X_a,X_b]^2+4X_a^2\bigr) +i\psi^\dagger\dot\psi -a_2\frac{M_P}{N^2}\psi^\dagger\sigma_aX_a\psi \right]. \tag{1.1}
\end{align}$$

The sign of the quadratic bosonic term is essential: in the potential it is a negative mass term. The fermion coupling is also essential. It is a left-action coupling $\psi^\dagger\sigma_aX_a\psi$, not the adjoint BFSS coupling $\psi^\dagger\sigma_a[X_a,\psi]$. The right matrix index is therefore a flavor index, while the left index transforms in the fuzzy-sphere fundamental representation.

The principal notation is:

| Symbol | Meaning and convention |
|---|---|
| $a,b,c=1,2,3$ | Ambient Cartesian or matrix-vector indices |
| $A,B$ | Tangential indices on the unit $S^2$; in transport formulas they are often orthonormal-frame indices with $\epsilon_{12}=+1$ |
| $N$ | Horizon block rank; $J=(N-1)/2$ and the physical radius is taken to be $R=Nl_P$ |
| $N'$ | Environmental block rank; it is sent to infinity together with its regulator $L$ |
| $X_a^H,X_a^E$ | Horizon and environmental node matrices |
| $W_a$ | Bosonic $H$--$E$ bifundamental link; it carries opposite charges at its two ends |
| $b_A,\phi_H$ | Tangential gauge field and normal scalar on the fuzzy horizon |
| $a_A,\phi_E$ | Boundary pullback of the environmental Maxwell field and its normal scalar component |
| $\mathcal A,\mathcal F$ | Berry connection and curvature; these are not the exterior Maxwell potential and field strength |
| $u,d$ | Particle and hole partons with charges $+q$ and $-q$ |
| $r,s$ | Total $u,d$ occupations; $r+s=N^2$ at half filling |
| $Q=q(r-s)$ | Proposed black-hole electric charge |
| $\mathscr K=N^3l_P/(8\pi a_0)$ | Link-condensate locking stiffness |
| $D=l_P/(2\pi a_0)=1/g_{\rm BH}^2$ | Reactive polarization coefficient |
| $t,\tau$ | Schwarzschild/matrix time and stretched-horizon FIDO time |
| $u=t-r_*,v=t+r_*$ | Outgoing and ingoing null coordinates in Section 6.3 |

The derivation uses temporal gauge but does not discard Gauss' law; the constraint is restored in Section 5.3 by covariantizing the time derivative before setting $A_0=0$. It also uses large $N$, large $N'$, a stretched horizon at proper distance $O(l_P)$, an external magnetic field small compared with the Berry monopole field, and a low-frequency/low-angular-momentum regime below the link-locking scale. The exact radial-spin degeneracies are $N+1$ and $N-1$; most transport formulas retain only their common leading value $N$.

There is a notation collision in the source: the physical radius in the main text is $R=Nl_P$, whereas Appendix B also uses a dimensionless fuzzy radius denoted $R$. This note reserves $R$ for the physical horizon radius.

# The classical stretched-horizon target

For exterior Maxwell theory,

$$\begin{align}
S_{\rm out} =-\frac{1}{16\pi}\int d^4x\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}, \tag{2.1}
\end{align}$$

the on-shell variation has a stretched-horizon term proportional to the normal electric flux. With an outward-pointing radial normal, the paper writes

$$\begin{align}
j_A^{\rm mem}=\frac{1}{4\pi}F_{A\mu}n^\mu. \tag{2.3}
\end{align}$$

The classical membrane constitutive relation is

$$\begin{align}
j_A^{\rm mem}=\frac{1}{4\pi}E_A, \qquad E_A=F_{A\tau}=\frac{F_{At}}{\sqrt f}, \qquad f(r)=1-\frac{R}{r}. \tag{2.5--2.6}
\end{align}$$

For an $S$-wave in $A_t=0$ gauge, eliminating the fictitious current gives

$$\begin{align}
f\,\partial_rA_A=\partial_tA_A, \qquad (\partial_t-\partial_{r_*})A_A=0, \qquad dr_*=\frac{dr}{f}. \tag{2.9--2.10}
\end{align}$$

Thus $A_A=A_A(t+r_*)$ is purely ingoing. The target of the rest of the paper is to replace this bookkeeping current by actual horizon degrees of freedom and to derive the deviations from perfect absorption.

The boundary-phase-space translation is immediate but must be orientation-aware. The Maxwell presymplectic potential can be taken as

$$\begin{align}
\theta^\mu_{\rm EM}(\delta A) =-\frac{1}{4\pi}F^{\mu\nu}\delta A_\nu.
\end{align}$$

Hence $A_A|_\Gamma$ is the configuration datum and $F_{A\mu}n^\mu/(4\pi)$ its normal response. Because the stretched horizon is an inner boundary of the exterior region, the induced boundary orientation can differ from the paper's increasing-$r$ normal. Any comparison with a Harlow--Wu or covariant-phase-space convention must audit this sign separately.

# A tangential photon on the fuzzy-sphere block

The horizon background and fluctuation are

$$\begin{align}
X_a=J_a+RB_a, \qquad [J_a,J_b]=i\epsilon_{abc}J_c, \qquad J_aJ_a=J(J+1), \qquad J=\frac{N-1}{2}. \tag{3.1--3.3}
\end{align}$$

Using the Killing tangent frame,

$$\begin{align}
B_a=K_a{}^Ab_A+n_a\phi_H, \tag{3.6}
\end{align}$$

separates a tangential gauge field from a normal scalar. The quadratic operator

$$\begin{align}
\mathcal N=(S\!\cdot\!L)^2-(S\!\cdot\!L)-2, \qquad (S_c)_{ab}=-i\epsilon_{cab},
\end{align}$$

has the special property that the vector remains massless even though the parent matrix model has a negative mass term. After the trace--integral map

$$\begin{align}
\operatorname{Tr}_N\longrightarrow\frac{N}{4\pi}\int d\Omega,
\end{align}$$

and the FIDO-time rescaling, the horizon action becomes

$$\begin{align}
S_H=\frac{R^2}{2g_{\rm BH}^2}\int d\tau\,d\Omega\left[ (\partial_\tau b_A)^2+(\partial_\tau\phi_H)^2 -\frac{1}{l_P^2}\left( f^2+(D_A\phi_H)^2+4\phi_H^2-8f\phi_H \right) \right], \tag{3.18}
\end{align}$$

with

$$\begin{align}
\frac{1}{2g_{\rm BH}^2}=\frac{l_P}{4\pi a_0}. \tag{3.19}
\end{align}$$

The $b_A$ kinetic term will later become the polarization current. It is not generated by the LLL partons. This distinction is obscured by the abstract's collective wording but is clear in the derivation.

The corresponding canonical one-form in temporal gauge is

$$\begin{align}
\Theta_H =\frac{R^2}{g_{\rm BH}^2}\int_{S^2}d\Omega\, \left(\partial_\tau b^A\,\delta b_A +\partial_\tau\phi_H\,\delta\phi_H\right).
\end{align}$$

This is a gauge-fixed canonical expression, not a completed covariant phase space: the source does not construct the residual-gauge quotient, boundary improvement, or corner data.

# The Cartesian environmental Maxwell block

The second block is expanded as

$$\begin{align}
X_a=LY_a, \qquad Y_a=y_a+\frac{R}{L}A_a, \qquad y_a=\frac{x_a}{2l_PL}-i\partial_a. \tag{3.20--3.23}
\end{align}$$

Then

$$\begin{align}
[Y_a,Y_b]=-\frac{iR}{L}F_{ab}, \qquad F_{ab}=\partial_aA_b-\partial_bA_a.
\end{align}$$

With

$$\begin{align}
L=\frac{N'l_P}{N}, \qquad \operatorname{Tr}_{N'}f=\frac{N'}{V_3}\int d^3x\,f, \qquad V_3=\nu_3R^2L,
\end{align}$$

the large-$N'$ limit gives

$$\begin{align}
S_{\rm env} =\frac{1}{2g_{\rm EM}^2}\int d\tau\,d^3x \left[(\partial_\tau A_a)^2-\frac12F_{ab}F_{ab}\right], \qquad \frac{1}{2g_{\rm EM}^2}=\frac{1}{a_0\nu_3}. \tag{3.28}
\end{align}$$

At the horizon the field is decomposed with the same frame normalization,

$$\begin{align}
A_a|_{r=R}=K_a{}^Aa_A+n_a\phi_E, \qquad \delta a_A=D_A\lambda, \qquad \delta\phi_E=0. \tag{3.31--3.33}
\end{align}$$

This matched normalization is what later permits the transparent locking relation $b_A=a_A$, rather than a relation with an additional rescaling.

# Charged half-filled partons

On the fuzzy background, the fermions become two sets of oscillators. Their normal-ordered Hamiltonian and occupation numbers are

$$\begin{align}
H_F=\frac{a_2M_P}{2N}(r+s), \qquad r=\sum_{p,k}u_k^{p\dagger}u_k^p, \qquad s=\sum_{p,k}d_k^{p\dagger}d_k^p. \tag{4.4--4.5}
\end{align}$$

The half-filled sector satisfies

$$\begin{align}
r+s=N^2. \tag{4.6}
\end{align}$$

The global fermion-number $U(1)$ motivates

$$\begin{align}
Q=q(r-s), \qquad q=\frac{a_2}{2a_0}, \tag{4.8, 4.25}
\end{align}$$

and the charged ensemble is parametrized by

$$\begin{align}
r=\frac12(N^2+n), \qquad s=\frac12(N^2-n), \qquad Q=nq. \tag{4.9}
\end{align}$$

At this point $Q$ is a proposed identification. The equality between $q(r-s)$ and the external Maxwell flux is not established until the two-block Gauss law in Section 5.3.

# The intrinsic Berry monopole and the LLL Hilbert space

For a spin-$J$ coherent state, the north-patch Berry connection is

$$\begin{align}
\mathcal A=-i\langle\Omega|d|\Omega\rangle =J(1-\cos\theta)d\phi, \tag{4.16}
\end{align}$$

so

$$\begin{align}
\mathcal F=d\mathcal A =J\sin\theta\,d\theta\wedge d\phi, \qquad \frac{1}{2\pi}\int_{S^2}\mathcal F=2J=N-1. \tag{C.3--C.4}
\end{align}$$

The fundamental wavefunction is a section of this line bundle. In stereographic coordinate $z=e^{i\phi}\tan(\theta/2)$,

$$\begin{align}
\psi(z,\bar z) =\frac{P_{N-1}(z)}{(1+|z|^2)^J}, \qquad \deg P_{N-1}\leq N-1, \qquad D_{\bar z}\psi=0. \tag{4.21--4.22}
\end{align}$$

Thus the section space has dimension $2J+1=N$ and is the monopole LLL. An adjoint matrix has a fundamental and an anti-fundamental index; their Berry phases cancel. The present fundamental fermion has no such cancellation.

The same curvature is the guiding-center symplectic form. Its inverse yields

$$\begin{align}
\{n_a,n_b\}=\frac{1}{J}\epsilon_{abc}n_c,
\end{align}$$

and quantization reproduces the fuzzy commutator. The paper's geometric noncommutativity and parton guiding-center noncommutativity are therefore two readings of the same prequantum line bundle.

# Particle--hole frame and microscopic current

The continuum spinor is expanded in a local radial-spin frame,

$$\begin{align}
(\sigma\!\cdot\!n)\eta_\pm=\pm\eta_\pm, \qquad \chi_I=\eta_+u_I+\eta_-d_I^\dagger. \tag{4.33, 4.37}
\end{align}$$

The $u$ particle and $d$ hole carry opposite charges. The continuum action is

$$\begin{align}
S_F=\int d\tau\,d\Sigma\left[ \sum_I\left(iu_I^\dagger\partial_\tau u_I +id_I^\dagger\partial_\tau d_I\right) -j_Ab^A-n_P\mu \right], \tag{4.40}
\end{align}$$

with

$$\begin{align}
n_P=\sum_I(u_I^\dagger u_I+d_I^\dagger d_I), \qquad \rho=q\sum_I(u_I^\dagger u_I-d_I^\dagger d_I),
\end{align}$$

and

$$\begin{align}
j^A=q\sum_I\left( \zeta^Au_I^\dagger d_I^\dagger +\bar\zeta^Ad_Iu_I \right). \tag{4.41}
\end{align}$$

The unprojected current is off-diagonal in radial-spin space. A time-dependent $b_A$ mixes the two radial-spin sectors virtually; after projection to the LLL, the same response is represented by diagonal guiding-center motion. This is why the field-theory current and the single-particle transport current look different without being contradictory.

# Guiding-center symplectic dynamics and Hall transport

For occupied LLL wave packets the first-order mechanics is

$$\begin{align}
L_K=\sum_{p\in\mathcal S}\left[ i\eta_p^\dagger\dot\eta_p \pm\mathcal A_A(\Omega_p)\dot\xi_p^A \right], \tag{4.51}
\end{align}$$

where the sign is $+$ for $u$ and $-$ for $d$. The corresponding phase-space potential and symplectic form are

$$\begin{align}
\Theta_{\rm parton} =\sum_p\left[i\eta_p^\dagger\delta\eta_p +\pm\mathcal A_A\delta\xi_p^A\right],
\end{align}$$

$$\begin{align}
\Omega_{\rm parton} =\sum_p\left[ i\,\delta\eta_p^\dagger\wedge\delta\eta_p +\pm\frac12\mathcal F_{AB} \delta\xi_p^A\wedge\delta\xi_p^B \right].
\end{align}$$

Adding the horizon gauge field gives the equation

$$\begin{align}
(\mathcal F_{AB}-qF_{AB})\dot y^B=-qE_A, \qquad E_A=-\partial_\tau b_A. \tag{4.55}
\end{align}$$

When the perturbing magnetic field is small compared with the intrinsic Berry field,

$$\begin{align}
\dot y^A=q(\mathcal F^{-1})^{AB}E_B. \tag{4.57}
\end{align}$$

Charge and Berry-curvature signs both flip between $u$ and $d$, so their drift velocities agree. Their electric currents therefore subtract, giving

$$\begin{align}
j^A=\epsilon^{AB}\sigma_HE_B,
\end{align}$$

$$\begin{align}
\sigma_H =\frac{Nq^2}{2\pi}(\nu_u-\nu_d) =\frac{qQ}{2\pi N} \quad\text{at leading large }N. \tag{4.62--4.63}
\end{align}$$

The Hall current vanishes for a neutral half-filled sea and is nondissipative.

# Thermal friction and the longitudinal response

The paper then models the horizon as a bath through

$$\begin{align}
\mathcal F_s\epsilon_{AB}v_s^B =-q_sE_A+\eta v_{sA}, \qquad q_s=\pm q, \qquad \mathcal F_s=\pm\mathcal F. \tag{4.64}
\end{align}$$

Solving gives

$$\begin{align}
v_s^A =\frac{q_s}{\eta^2+\mathcal F^2} \left(\eta\delta^{AB}+\mathcal F_s\epsilon^{AB}\right)E_B. \tag{4.65}
\end{align}$$

With $\gamma_T=\eta/\mathcal F$ and filling fraction $\nu_s=N_s/N^2$,

$$\begin{align}
\sigma_{xx} =\frac{Nq^2}{2\pi}(\nu_u+\nu_d) \frac{\gamma_T}{1+\gamma_T^2},
\end{align}$$

$$\begin{align}
\sigma_H =\frac{Nq^2}{2\pi}(\nu_u-\nu_d) \frac{1}{1+\gamma_T^2}. \tag{4.69}
\end{align}$$

The estimate $\eta\sim T_H^2$ and $\mathcal F\sim1/(Nl_P^2)$ gives $\gamma_T=c_T/N$, hence at half filling

$$\begin{align}
\sigma_{xx} =\frac{q^2c_T}{2\pi}+O(N^{-2}). \tag{4.73}
\end{align}$$

This establishes only $N$-independence. The membrane value follows after the conjecture

$$\begin{align}
c_T=\frac{1}{2q^2} \quad\Longrightarrow\quad \sigma_{xx}=\frac{1}{4\pi}.
\end{align}$$

The paper cites decay of a fermion two-point function as support for the bath picture, but does not establish a KMS state, fluctuation--dissipation relation, noise kernel, or Kubo formula. The Ohmic normalization is therefore not a microscopic result of this paper.

# Bifundamental links and the total Gauss constraint

For two blocks,

$$
\mathbf X_a=
\begin{pmatrix}
X_a&W_a\\
W_a^\dagger&Y_a
\end{pmatrix},
\qquad
W_a\longmapsto U_HW_aU_E^\dagger.
\tag{5.3, 5.6}
$$

Thus $W_a$ is a dynamical interface field charged under the relative gauge group. It is similar to an open string stretching between the two matrix blocks. It is not an auxiliary edge mode added to repair a subregion factorization; it is already a degree of freedom of the parent matrix model.

Restoring $A_0$ before returning to temporal gauge yields

$$\begin{align}
G=i[X_a,P_a]+\rho_\Psi=0. \tag{5.59}
\end{align}$$

The link charges at the two nodes obey

$$\begin{align}
\operatorname{Tr}_H\rho_W^H =-\operatorname{Tr}_E\rho_W^E, \tag{5.64}
\end{align}$$

so the link transfers charge but does not create it. In the continuum limit,

$$\begin{align}
D^AE_A^H=\rho_\psi^H+\rho_W^H, \qquad \nabla_iE^i=\rho_W^E+\rho_\psi^E. \tag{5.65, 5.67}
\end{align}$$

Integrating the closed horizon constraint and the exterior Gauss law gives, in the low-energy truncation where environmental and fermionic link excitations are absent,

$$\begin{align}
Q_{\rm BH} =\int_{S_R^2}d\Sigma\,E_r =q(r-s). \tag{5.68--5.69}
\end{align}$$

This is the step that turns the internal fermion-number imbalance into the external Maxwell charge. It is not a Wald charge, and the source does not construct a surface-charge algebra.

# The outward-extremal tachyon and a Planck-thick condensate

On the horizon/environment background,

$$\begin{align}
\bar X_a^H=J_a, \qquad \bar X_a^E=Ly_a, \qquad F_{ab}^H=i\epsilon_{abc}J_c, \qquad F_{ab}^E=0,
\end{align}$$

the link quadratic operator is

$$\begin{align}
\mathcal K_{ab}(\xi) =\mathcal H_{ab}(\xi)-4\delta_{ab}-4(\mathbf J\!\cdot\!\mathbf S)_{ab},
\end{align}$$

$$\begin{align}
\mathcal H_{ab}=2(\bar{\mathcal D}^2\delta_{ab}-\bar{\mathcal D}_b\bar{\mathcal D}_a), \qquad \bar{\mathcal D}_aW_b=(J_a-\xi_a)W_b. \tag{6.20--6.22}
\end{align}$$

The conserved $M=J_3+S_3$ organizes the spectrum. The paper does not diagonalize every sector, but it finds an exact $M=J+1$ outward-extremal mode,

$$\begin{align}
W_a=w\,e_a^{(+)}|J,J\rangle_H\,{}_E\langle\xi,\hat z|, \tag{6.34}
\end{align}$$

with eigenvalue

$$\begin{align}
k_-(\xi)=2(\xi-J)^2-4(J+1). \tag{6.35}
\end{align}$$

The quadratic and quartic terms reduce to

$$\begin{align}
U(w)=\alpha\left(k_-(\xi)|w|^2+2|w|^4\right), \qquad \alpha=\frac{1}{2l_P^2}. \tag{6.40}
\end{align}$$

For $k_-<0$,

$$\begin{align}
|w|^2=-\frac{k_-(\xi)}{4}. \tag{6.41}
\end{align}$$

The lowest point is $\xi=J$, where

$$\begin{align}
|w|^2=J+1.
\end{align}$$

Rotating the north-pole mode with coherent states and filling the sphere gives a mean-field condensate. Matching $\xi_a$ to the Cartesian background locates it at

$$\begin{align}
r=R+\delta, \qquad \delta\lesssim l_P. \tag{6.48}
\end{align}$$

This establishes the existence of one tachyonic channel and a rotationally organized large-$N$ condensate ansatz. It does not prove that the displayed mode is the unique or globally lowest instability, and finite-$N$ overlaps among coherent link modes are not evaluated.

# Higgs locking of the relative connection

Turning on both gauge fields introduces

$$\begin{align}
C_a=R(B_a-A_a).
\end{align}$$

The condensate produces

$$\begin{align}
V_{\rm int} =\frac{\mathscr K}{2}\int d\Omega\left[ (b_A-a_A)^2+2(\phi_H-\phi_E)^2 \right],
\end{align}$$

$$\begin{align}
\mathscr K=\frac{N^3l_P}{8\pi a_0}. \tag{6.53--6.54}
\end{align}$$

At low energy,

$$\begin{align}
b_A\simeq a_A, \qquad \phi_H\simeq\phi_E. \tag{6.55}
\end{align}$$

The gauge-invariant interpretation is that the link phase is a Stückelberg/Higgs field for the relative gauge group and the condensate leaves the diagonal subgroup. The displayed $(b-a)^2$ is a unitary-gauge form; the source does not retain $d\arg w$ explicitly. The equality is not exact off shell. The full kernel shows corrections of order $\omega^2/\mathscr K$, $p^2/\mathscr K$, and $\omega\sigma/\mathscr K$.

# Boundary admittance and the origin of its three terms

Varying the exterior potential and the horizon potential gives

$$\begin{align}
\frac{1}{4\pi}F_B{}^n +\frac{\mathscr K}{R^2}(b_B-a_B)=0, \tag{6.57}
\end{align}$$

$$\begin{align}
\frac{1}{g_{\rm BH}^2}
(\Box b_B-\partial_B\partial_Ab_A) -j_B -\frac{\mathscr K}{R^2}(b_B-a_B)=0. \tag{6.58}
\end{align}$$

Eliminating the locking force yields

$$\begin{align}
\frac{1}{4\pi}F_B{}^n=j_B^{\rm tot},
\end{align}$$

$$\begin{align}
j_B^{\rm tot} =j_B-\frac{1}{g_{\rm BH}^2} (\Box b_B-\partial_B\partial_Ab_A). \tag{6.59--6.60}
\end{align}$$

In the slow regime $\omega,|p_A|\ll\sqrt N/l_P$, the large stiffness enforces $b_A\simeq a_A$. The exterior field then sees

$$\begin{align}
F_B{}^n=4\pi j_B^{\rm tot}, \qquad j_B^{\rm tot}=\sigma_{BC}(\omega)E^C, \tag{6.64}
\end{align}$$

with

$$\begin{align}
\sigma^{AB}(\omega) =(\sigma_{xx}+i\omega D)\delta^{AB} +\sigma_H\epsilon^{AB},
\end{align}$$

$$\begin{align}
\sigma_{xx}=\frac{1}{4\pi}, \qquad D=\frac{l_P}{2\pi a_0}, \qquad \sigma_H=\frac{qQ}{2\pi N}. \tag{6.65--6.66}
\end{align}$$

The three terms have different microscopic status:

1. $\sigma_H\epsilon^{AB}E_B$ is the LLL parton Hall response and is independently tied to the charge imbalance.
2. $\sigma_{xx}E^A$ is the parton longitudinal response, but its value $1/(4\pi)$ uses the conjectured $c_T$.
3. $i\omega D E^A$ comes from the horizon gauge-field kinetic term, not from the parton guiding-center action. It can be written

$$\begin{align}
j_A^{\rm pol}=\partial_\tau P_A, \qquad P_A=-D E_A. \tag{6.67--6.68}
\end{align}$$

The negative susceptibility describes a reactive interface response. A local real action does not by itself encode the dissipative Ohmic term; a Keldysh/influence-functional or Kubo completion would be needed for a full phase-space treatment.

# Helicity-resolved reflectivity

Assuming that the matrix model produces a Schwarzschild exterior, the admittance becomes the Robin condition

$$\begin{align}
\partial_{r_*}a_A-4\pi\sigma_{AB}\partial_ta_B=0. \tag{6.69}
\end{align}$$

For circular polarizations

$$\begin{align}
e_A^{(\pm)}=\frac{1}{\sqrt2}(e_A^1\pm ie_A^2), \qquad \epsilon_A{}^Be_B^{(\pm)}=\pm i e_A^{(\pm)},
\end{align}$$

the admittance eigenvalues are

$$\begin{align}
\sigma_\pm=\sigma_{xx}+i(\omega D\pm\sigma_H). \tag{6.72}
\end{align}$$

Using $\partial_{r_*}=-\partial_u+\partial_v$ and $\partial_t=\partial_u+\partial_v$ gives

$$\begin{align}
\partial_ua_A^{(\pm)} =\mathcal R_\pm\partial_va_A^{(\pm)},
\end{align}$$

$$\begin{align}
\mathcal R_\pm =-\frac{i\mathcal D_\pm}{1+i\mathcal D_\pm}, \qquad \mathcal D_\pm=2\pi(\omega D\pm\sigma_H). \tag{6.74--6.76}
\end{align}$$

For $D=\sigma_H=0$, $\partial_ua=0$ and the perfectly absorbing result returns. Otherwise $D$ gives frequency-dependent reflection even at $Q=0$, while $\sigma_H$ splits the two helicities. At small $\mathcal D_\pm$,

$$\begin{align}
\theta_{\rm rot} =\frac12(\delta_--\delta_+) \simeq-2\pi\sigma_H,
\end{align}$$

and, under the additional hierarchy $|\sigma_H|\ll|\omega D|$,

$$\begin{align}
\eta_{\rm ellp} =\frac12\log\left|\frac{\mathcal R_+}{\mathcal R_-}\right| \simeq\frac{\sigma_H}{\omega D}. \tag{6.78--6.79}
\end{align}$$

The simple reflection coefficient is valid only after low-energy locking and the local admittance approximation. At higher frequency one must retain the full finite-$\mathscr K$ kernel of Eq. (6.62).

# Relation to boundary, charge, and edge-mode formalisms

The paper's interface data translate into the vault's working language as follows:

| Paper object | Local formalism translation | Limitation |
|---|---|---|
| $A_0$ variation | Gauss moment map on an equal-time phase space | Constraint algebra and reduction are not written |
| $W_a$ | Dynamical interface/open-string field charged under two regional gauge groups | It is not a standard auxiliary edge mode |
| Link phase | Relative-gauge Stückelberg variable | Eliminated in the displayed unitary-gauge locking term |
| $b_A-a_A$ | Difference of the two pullback connections | Heavy but not exactly zero at finite $\mathscr K$ |
| $\operatorname{Tr}\rho_W^H=-\operatorname{Tr}\rho_W^E$ | Interface charge conservation | No local surface-charge algebra is derived |
| $Q=q(r-s)$ | Matter charge mapped to exterior electric flux by Gauss' law | Valid in the low-energy truncation |
| $F_A{}^n=4\pi j_A^{\rm tot}$ | Maxwell variational boundary condition | Not a gravitational Noether charge |
| $b_A$ kinetic term | Genuine dynamical boundary field and reactive response | Scalar $\phi_H$ is dropped in the final EM analysis |
| $\sigma_H$ | Parity-odd boundary response | No effective Chern--Simons action is derived |
| $\sigma_{xx}$ | Dissipative symplectic/energy flux | Requires open-system data absent from the source |
| $\mathcal R_\pm$ | Helicity-resolved boundary scattering amplitude | Assumes Schwarzschild geometry and local locking |

The paper therefore gives a matrix-derived dynamical boundary medium. It does not yet give a full covariant phase space with boundary/corner improvements, large-gauge charges, integrability, or a charge algebra.

# Concrete project extensions

1. Restore the link phase and write the locking sector as a gauge-invariant boundary Stückelberg theory. This would make the diagonal/relative gauge reduction explicit before choosing unitary gauge.
2. Derive the boundary symplectic potential from the combined Maxwell--horizon--link action, keeping finite $\mathscr K$. The response kernel should then be compared with the finite-boundary conventions used in the current AdS/CPS work.
3. Replace the phenomenological friction with a Schwinger--Keldysh influence functional for the horizon partons. The KMS and fluctuation--dissipation conditions would determine whether $\sigma_{xx}=1/(4\pi)$ is actually produced.
4. Compute the complete link spectrum, including all $M$ sectors, and test whether the outward-extremal mode is the unique lowest instability.
5. Keep coherent-state overlaps and star-product corrections to determine the finite-$N$ shift of the condensate profile and locking stiffness.
6. Insert the finite-$\mathscr K$ boundary kernel into Maxwell mode calculations in Schwarzschild or BTZ-like backgrounds and distinguish genuine echoes from the low-frequency approximation.
7. Extend the two-block Gauss analysis to three blocks representing interior, horizon, and exterior. Section 5.2 predicts new triangular link interactions that may supply a concrete edge/interior gluing model.

Source inspection used the official TeX together with rendered PDF pages 6, 20--21, 31, 35, and 39--40 to confirm the displayed guiding-center, Gauss-law, tachyon, condensate, admittance, and reflection formulas and their equation labels. This is source confirmation, not an independent mathematical check.

# Verification log

## Checked

- xAct independently varied the Maxwell Lagrangian. Its first variation produced the bulk Maxwell equation plus a total derivative, and its symplectic potential reduced to the normal contraction of $F^{\mu\nu}\delta A_\nu/(4\pi)$, up to the stated normal-orientation convention.
- Mathematica checked the local spin frame: $\eta_\pm$ are orthonormal, their projectors equal $(1\pm\sigma\cdot n)/2$, and the tangential matrix elements obey $\zeta^A\zeta_A=0$ and $\zeta^A\bar\zeta_A=2$.
- Mathematica integrated $\mathcal F=J\sin\theta\,d\theta\wedge d\phi$ to obtain flux $4\pi J$, Chern number $2J$, and LLL dimension $2J+1=N$.
- Mathematica inverted the Langevin operator and reproduced Eq. (4.65). With $J=N/2$, $N_s=N^2\nu_s$, and $\gamma_T=\eta/\mathcal F$, it reproduced the longitudinal and Hall coefficients and the expansion

$$\begin{align}
\sigma_{xx}=\frac{q^2c_T}{2\pi} -\frac{q^2c_T^3}{2\pi N^2}+O(N^{-4}).
\end{align}$$

- Mathematica checked the tachyonic potential. It found $k_-(J)=-4(J+1)$ and the nonzero stationary point $|w|^2=-k_-/4=J+1$. An explicit circular polarization gave $D_{ab}D_{ab}=-2$, so the positive quartic and the condensate magnitude survive the sign correction recorded below.
- Mathematica converted the Robin boundary condition into

$$\begin{align}
\mathcal R_\pm=-\frac{i\mathcal D_\pm}{1+i\mathcal D_\pm}
\end{align}$$

  and reproduced $|\mathcal R|=|\mathcal D|/\sqrt{1+\mathcal D^2}$. It also found the controlled small-Hall expansions

$$\begin{align}
\theta_{\rm rot} =-\frac{2\pi\sigma_H}{1+4\pi^2\omega^2D^2}+O(\sigma_H^2),
\end{align}$$

$$\begin{align}
\eta_{\rm ellp} =\frac{\sigma_H}{\omega D(1+4\pi^2\omega^2D^2)} +O(\sigma_H^2),
\end{align}$$

  whose further $|\omega D|\ll1$ limits agree with Eqs. (6.78)--(6.79).

## Blocked

- The full vector-harmonic reduction from Eqs. (3.7)--(3.10) to the horizon action was not independently reproduced; the source does not display every intermediate contraction.
- The unprojected off-diagonal current-to-guiding-current projection is described conceptually but not supplied as a complete quantitative projection calculation.
- The full link spectrum is unavailable because the paper diagonalizes only selected sectors and uses the exact outward-extremal mode. Uniqueness of the instability cannot be checked from the supplied source.
- Finite-$N$ cross-quartic terms among the nonorthogonal coherent link modes are not given, so the uniform condensate remains a large-$N$ mean-field construction.
- The KMS condition, noise kernel, force correlator, and Kubo formula required to determine $c_T$ are absent. The claimed membrane value of $\sigma_{xx}$ is therefore not independently reproducible.
- Schwarzschild geometry and general covariance are assumed rather than derived from the matrix model. The final propagation and echo claims depend on that external input.
- The source gives no Schwinger--Keldysh or other action principle for the dissipative current, preventing a complete CPS verification of the Ohmic sector.
- Environmental fermions and fermionic links are removed by a low-energy truncation. If they are excited, the exterior flux need not equal the horizon $u-d$ imbalance alone.

## Failed

- Equation (6.38), visible on PDF page 35, prints

$$\begin{align}
e_a^{(+)}e_b^{(+)*} =\frac12\left(P^T_{ab}+i\epsilon_{abc}n_c\right)
\end{align}$$

  while the same page defines $e^{(+)}=(e^{(1)}+ie^{(2)})/\sqrt2$ and immediately concludes $D_{ab}=-i\epsilon_{abc}n_c$. For $n=(0,0,1)$, Mathematica gives

$$\begin{align}
e_a^{(+)}e_b^{(+)*} =\frac12\left(P^T_{ab}-i\epsilon_{abc}n_c\right).
\end{align}$$

  The printed plus sign is incorrect. Replacing it by a minus sign makes the next line consistent. The downstream identity $D_{ab}D_{ab}=-2$, the quartic potential, and the condensate magnitude do not depend on this sign and were checked separately.
