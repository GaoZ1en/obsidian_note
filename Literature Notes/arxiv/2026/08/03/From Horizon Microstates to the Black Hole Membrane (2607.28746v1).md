---
paper id: 2607.28746v1
title: From Horizon Microstates to the Black Hole Membrane
authors:
  - Chong-Sun Chu
publication date: 2026-07-30T18:05
abstract: |-
  A matrix-quantum-mechanical model of black-hole horizon microstates is used to derive a microscopic membrane response. Fundamental fermions on a fuzzy sphere form finite lowest-Landau-level sectors, a bifundamental link condensate couples their gauge field to exterior electromagnetism, and the resulting conductivity controls low-frequency reflection and inclusive high-frequency absorption.
comments: "11 pages, 1 figure"
url: https://arxiv.org/abs/2607.28746v1
summary: "A compact black-hole testbed linking finite horizon partons, an explicit interface mode, membrane conductivity, and the local absorption bound."
tags: []
---

Back to [[2026_08_03_overview]].

# Why this is useful here

The paper is a concrete boundary-mechanism model rather than a general derivation of the membrane paradigm. Its useful feature is the clean separation

$$
\text{finite horizon carriers}
\longrightarrow
\text{dynamical horizon--exterior link}
\longrightarrow
\text{boundary current}
\longrightarrow
\text{reflection/absorption}.
$$

That makes it a manageable testbed for distinguishing microscopic boundary degrees of freedom from an effective boundary condition. It is medium rather than high priority: the construction does not derive a gravitational CPS charge or horizon symplectic form, and its dissipative coefficient is not computed from the microscopic model.

# Fuzzy-sphere horizon and finite Landau-level sectors

The proposed black-hole quantum mechanics contains three traceless Hermitian matrices $X_a$ and two-component fermionic matrices $\psi$,

$$
\begin{aligned}
S=\int dt\,\operatorname{Tr}\Bigg[&
\frac{\dot X_a^2}{2a_0^2M_{\rm P}}
+\frac{M_{\rm P}}{N^2}\bigl([X_a,X_b]^2+4X_a^2\bigr)
+i\psi^\dagger\dot\psi\\
&-\frac{a_2M_{\rm P}}{N^2}\psi^\dagger\sigma_aX_a\psi
\Bigg].
\end{aligned}
$$

The horizon background is the spin-$J$ fuzzy sphere

$$
X_a=J_a,\qquad [J_a,J_b]=i\epsilon_{abc}J_c,\qquad
J=\frac{N-1}{2},\qquad R=N\ell_{\rm P}.
$$

The first fermion index is an $SU(N)$ fundamental and the second gives $N$ flavors. This distinction matters: coherent-state phases cancel for adjoint matrices but survive for a fundamental fermion. A spin-$J$ coherent state therefore supplies the Berry data

$$
\mathcal A=J(1-\cos\theta)d\phi,\qquad
\mathcal F=J\sin\theta\,d\theta\wedge d\phi,\qquad
c_1=\frac1{2\pi}\int_{S^2}\mathcal F=N-1.
$$

The lowest Landau level is consequently finite. Its wavefunctions are holomorphic sections

$$
\psi(z,\bar z)=\frac{P_{N-1}(z)}{(1+|z|^2)^J},\qquad
\deg P_{N-1}\le N-1,\qquad D_{\bar z}\psi=0.
$$

Coupling the orbital spin to the Pauli spin gives two positive-energy sectors. After particle--hole conjugation of the lower band their monopole numbers are

$$
k_u=N,\qquad k_d=-(N-2),
$$

with $N+1$ and $N-1$ one-flavor states. Their local energies agree at leading order,

$$
\epsilon_u=\frac{a_2J}{2a_0N\ell_{\rm P}},\qquad
\epsilon_d=\frac{a_2(J+1)}{2a_0N\ell_{\rm P}},\qquad
\epsilon_0=\frac{a_2}{4a_0\ell_{\rm P}},
$$

and fixed occupation fails once the pair threshold

$$
\Delta_{\rm pair}=\epsilon_u+\epsilon_d=2\epsilon_0+O(N^{-1})
$$

is reached. With the stretched-horizon redshift

$$
\tau=\alpha_{\rm sh}t,\qquad
\alpha_{\rm sh}=\frac{2a_0M_{\rm P}\ell_{\rm P}}{N},\qquad
\omega=\alpha_{\rm sh}\hat\omega,
$$

the fixed-parton regime is $\omega R\ll1$.

# Guiding-center conductivity

For a localized packet in sector $s=\pm1$, the first-order action is

$$
S_s=s\int d\tau\left(\mathcal A_A\dot\xi^A-qRb_A\dot\xi^A\right),
\qquad q=\frac{a_2}{2a_0}.
$$

The paper supplements the Berry force by a phenomenological friction $\eta$,

$$
s\mathcal F\epsilon_{AB}v_s^B=-sqE_A+\eta v_{sA},\qquad
\mathcal F=\frac{J}{R^2},\qquad E_A=-\partial_\tau b_A.
$$

Solving the two-dimensional linear system gives longitudinal and Hall responses with the common denominator $\eta^2+\mathcal F^2$. In the paper's filling-fraction notation,

$$
\sigma_{xx}^{(s)}=\frac{Nq^2\nu_s}{2\pi}
\frac{\gamma_T}{1+\gamma_T^2},\qquad
\sigma_H^{(s)}=s\frac{Nq^2\nu_s}{2\pi}
\frac1{1+\gamma_T^2},\qquad
\gamma_T=\frac\eta{\mathcal F}.
$$

At half filling,

$$
\sigma_{xx}=\frac{Nq^2}{2\pi}\frac{\gamma_T}{1+\gamma_T^2},\qquad
\sigma_H=\frac{qQ}{2\pi N}\frac1{1+\gamma_T^2}.
$$

The topology and $N$-scaling of the Hall term are controlled, but the Ohmic coefficient is not: $\eta\sim T_H^2$ is a bath estimate, not a microscopic Kubo result.

# Bifundamental link and the stretched interface

The horizon and exterior are put into two matrix blocks,

$$
\boldsymbol X_a=
\begin{pmatrix}
X_a^H&W_a\\
W_a^\dagger&X_a^E
\end{pmatrix}.
$$

The most unstable off-diagonal mode is a one-dimensional outward tangential polarization. For the environmental coherent-state coordinate $\xi_a$ its quadratic eigenvalue and single-mode potential are

$$
k_-(\xi)=2(\xi_a-J_a)^2-4(J+1),
$$

$$
U(w)=\alpha\left[k_-(\xi)|w|^2+2|w|^4\right].
$$

The positive quartic stabilizes a condensate at $\xi_a=Jn_a$ and $|w|^2=J+1$. After assuming a static rotational population, this is identified with a layer $r=R+O(\ell_{\rm P})$. Its phase $\vartheta$ gives the gauge-invariant locking potential

$$
V_{\rm lock}=\frac{\mathcal K}{2}\int d\Omega\,
(b_A-a_A+\partial_A\vartheta)^2,\qquad
\mathcal K=\frac{N^3\ell_{\rm P}}{8\pi a_0}.
$$

Thus the exterior value $a_A$ and horizon field $b_A$ are not simply identified by decree: the relative field is made massive by a microscopic interface condensate. The calculation nevertheless isolates only the most unstable direction; it is not a full minimization of the link sector.

# Finite-stiffness transfer of the membrane current

After unitary gauge, the coupled quadratic action has an exterior Maxwell term, a horizon gauge kinetic term, the parton action, and $-\mathcal K(b-a)^2/2$. Varying both $a_A$ and $b_A$ eliminates the relative-field term and yields

$$
\frac1{4\pi}F_{An}=j_A^{\rm mem}=j_A+j_A^{\rm pol},
$$

$$
j_A^{\rm pol}=-\frac1{g_{\rm BH}^2}
(\Box\delta_{AB}-\partial_A\partial_B)b^B.
$$

This is the paper's cleanest transferable result. The equality between exterior flux and the total horizon current holds at finite $\mathcal K$; the stronger replacement $b_A\simeq a_A(R^+)$ additionally requires

$$
\hat\omega\ll\frac{\sqrt N}{\ell_{\rm P}},\qquad
L_{\rm ang}\ll\sqrt N.
$$

There is therefore an intermediate window in which the interface remains locked but the fixed-parton constitutive law has already failed. In boundary-language terms, “current transfer,” “field locking,” and “low-frequency membrane response” are three distinct statements.

# Reflection below threshold and absorption above it

In the locked, fixed-parton regime the membrane admittance is

$$
j_A^{\rm mem}=\sigma_{AB}E^B,\qquad
\sigma_{AB}=(\sigma_{xx}+i\omega D)\delta_{AB}+\sigma_H\epsilon_{AB},
$$

$$
D=\frac{N}{4\pi a_0^2M_{\rm P}},\qquad
\sigma_H=\frac{qQ}{2\pi N}.
$$

The near-horizon boundary condition gives, in one eigenchannel,

$$
\mathcal R(\omega)=\frac{1-4\pi\sigma(\omega)}{1+4\pi\sigma(\omega)}.
$$

Circular polarizations see

$$
\sigma_\pm=\sigma_{xx}+i(\omega D\pm\sigma_H).
$$

If the classical Ohmic reference value $\sigma_{xx}=1/(4\pi)$ is inserted, then

$$
\mathcal R_\pm=-\frac{i\mathcal D_\pm}{1+i\mathcal D_\pm},\qquad
\mathcal D_\pm=2\pi(\omega D\pm\sigma_H),
$$

so the Berry Hall response splits the two helicities. This formula is a prediction conditional on the classical Ohmic input; the matrix model has not derived $\sigma_{xx}=1/(4\pi)$.

Above the parton threshold, the correct object is the full retarded kernel,

$$
\sigma_{AB}(\omega)=\frac{\Pi^R_{AB}(\omega)}{i(\omega+i0)},
$$

with positive-frequency passivity $\operatorname{Re}\sigma_{AA}\ge0$ for the initial state considered. Combining the same impedance relation with multichannel unitarity yields

$$
\mathcal A(\omega)=1-|\mathcal R|^2
=\frac{16\pi\operatorname{Re}\sigma(\omega)}{|1+4\pi\sigma(\omega)|^2}.
$$

The identity

$$
|1+4\pi\sigma|^2-16\pi\operatorname{Re}\sigma
=(1-4\pi\operatorname{Re}\sigma)^2+(4\pi\operatorname{Im}\sigma)^2
$$

shows $0\le\mathcal A\le1$, with equality at $\sigma=1/(4\pi)$. The associated $A_H\mathcal A$ is a local stretched-horizon cross section; greybody propagation is still needed for an asymptotic cross section.

# Verification note

## Independently checked

- Mathematica inverted the Langevin matrix and reproduced the common $(\eta^2+\mathcal F^2)^{-1}$ longitudinal/Hall structure.
- Direct elimination of the finite-stiffness equations reproduced $F_{An}/(4\pi)=j_A+j_A^{\rm pol}$ without taking $\mathcal K\to\infty$.
- The reflection formula reduces to the quoted classical-reference helicity form.
- Expanding $1-|\mathcal R|^2$ reproduced the absorption formula and the positive-square proof of its upper bound.

## Source-derived boundary

The fuzzy-sphere black-hole identification, the complete matrix spectrum, the link condensate outside its singled-out unstable mode, the redshift matching, the microscopic $\sigma_{xx}(\omega)$, and every resolved $S$-matrix element remain source-derived. The paper itself leaves the last three dynamical problems open.

