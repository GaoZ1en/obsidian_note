# Killing Hamiltonian, matter charge, and horizon flux

Date: 2026-07-12

## 0. Direct verdict

For the scalar field, the Killing vector $\chi=\partial_t$ defines the matter Hamiltonian and the corresponding energy flux. It does not define the Wald entropy of the scalar field.

The relevant matter charge is codimension one,

$$
H_\chi[\Sigma]
=\int_\Sigma d\Sigma_a\,T^a{}_b\chi^b.
$$

The gravitational entropy is instead a codimension-two Iyer-Wald surface charge built from the curvature dependence of the dynamical gravitational Lagrangian.

## 1. Stress tensor and conserved current

For the minimally coupled scalar,

$$
T_{ab}
=\nabla_a\phi\nabla_b\phi
-\frac12g_{ab}
\left[
(\nabla\phi)^2+\mu^2\phi^2
\right].
$$

Define

$$
J_\chi^a=T^a{}_b\chi^b.
$$

Off shell,

$$
\nabla_aJ_\chi^a
=(P\phi)\,\mathcal L_\chi\phi
+T^{ab}\nabla_{(a}\chi_{b)}.
$$

For a Killing field and a solution of $P\phi=0$,

$$
\nabla_aJ_\chi^a=0.
$$

## 2. Explicit exterior Hamiltonian

On a $t={\rm const}$ slice of the right exterior,

$$
n^a=f^{-1/2}(\partial_t)^a,
\qquad
d\Sigma=\frac{r}{\sqrt f}\,dr\,d\varphi.
$$

Therefore

$$
\boxed{
H_R
=\frac12\int_{r_+}^{\infty}dr\int_0^{2\pi}d\varphi
\left[
\frac{r}{f}(\partial_t\phi)^2
+rf(\partial_r\phi)^2
+\frac1r(\partial_\varphi\phi)^2
+r\mu^2\phi^2
\right]
}.
$$

For $\mu^2\ge0$, the classical density is nonnegative in the exterior.

With

$$
\pi=\frac{r}{f}\partial_t\phi
$$

and the convention

$$
\Omega=\int\delta\pi\wedge\delta\phi,
$$

the phase-space vector

$$
X_\chi\phi=\mathcal L_\chi\phi
$$

satisfies

$$
\boxed{
\delta H_\chi=\Omega(\delta,X_\chi)
}.
$$

This equation, with the slot order shown, is the precise Hamiltonian statement.

## 3. Oscillator form

For the normalized real-frequency modes,

$$
\mathcal L_\chi u_{\omega m}=-i\omega u_{\omega m}.
$$

After normal ordering,

$$
:H_R:
=\sum_{m\in\mathbb Z}\int_0^\infty d\omega\,
\omega\,
\widehat a_{\omega m}^\dagger\widehat a_{\omega m}.
$$

It generates Killing evolution:

$$
i[:H_R:,\widehat\phi]=\mathcal L_\chi\widehat\phi.
$$

On the full two-sided geometry, $\chi$ is future-directed in the right exterior and past-directed in the left exterior. The global generator is therefore

$$
H_\chi=H_R-H_L.
$$

## 4. Flux balance

Integrating $\nabla_aJ_\chi^a=0$ over a region bounded by two hypersurfaces, the AdS boundary, and a future-horizon segment gives

$$
H_\chi[\Sigma_2]-H_\chi[\Sigma_1]
=-\mathcal F_{\mathcal H^+}
-\mathcal F_{\mathscr I}.
$$

The standard reflecting AdS boundary condition gives

$$
\mathcal F_{\mathscr I}=0.
$$

On the future horizon, $\chi$ is null and tangent to the generators. For the minimally coupled scalar,

$$
T_{ab}\chi^a\chi^b
=\left(\mathcal L_\chi\phi\right)^2
\ge0.
$$

Thus the future-directed Killing-energy flux is nonnegative. This is the correct role of the Killing horizon in the matter charge problem:

1. globally, the horizon is an interior hypersurface and the total Hamiltonian generates an exact symmetry;
2. on complete static exterior slices, the self-adjoint Hamiltonian $H_R$ is conserved;
3. on horizon-penetrating or hyperboloidal regional slices that meet different horizon cuts, the same current measures the energy crossing the intervening horizon segment.

## 5. Why this is not black-hole entropy

There are three different quantities:

1. The matter Killing Hamiltonian

$$
H_\chi=\int_\Sigma T^a{}_b\chi^b\,d\Sigma_a
$$

   generates time evolution and measures flux.

2. The matter thermal entropy in the exterior is obtained from the state,

$$
S_{\rm matter}
=\left(1-\beta\partial_\beta\right)\log Z_{\rm matter},
$$

   or from the reduced density matrix. It is not equal to $H_\chi$.

3. The gravitational Wald entropy is

$$
S_{\rm Wald}
=-2\pi\int_{\mathcal B}d^{D-2}x\sqrt h\,
\frac{\partial \mathcal L}{\partial R_{abcd}}
\epsilon_{ab}\epsilon_{cd},
$$

   when $\mathcal L$ depends algebraically on the Riemann tensor; the displayed convention treats $\mathcal L$ as the scalar Lagrangian rather than the density.

For the primary minimally coupled scalar,

$$
\frac{\partial \mathcal L_{\rm matter}}{\partial R_{abcd}}=0,
$$

so it has no direct classical matter Wald term. A nonminimal term such as $-\xi R\phi^2/2$ changes this conclusion because it contributes to the curvature derivative of the Lagrangian.

Quantum matter can still contribute to generalized entropy through entanglement entropy and the one-loop effective action. That is a different calculation from the matter Noether Hamiltonian.

## 6. Verification status

Verified:

1. Mathematica checked

$$
\nabla_a(T^a{}_b\chi^b)
=(P\phi)\partial_t\phi
$$

   componentwise on BTZ.
2. Mathematica checked the displayed Hamiltonian density directly from $T_{ab}n^a\chi^b$.
3. In ingoing regular coordinates, Mathematica checked

$$
T_{ab}\chi^a\chi^b|_{\mathcal H^+}
=(\mathcal L_\chi\phi)^2.
$$

4. The oscillator commutator gives $i[H_R,\phi]=\mathcal L_\chi\phi$.

Assumptions:

1. Boundary terms in $\delta H_\chi$ vanish under the standard AdS condition and finite-energy horizon behavior.
2. Normal ordering is with respect to the exterior positive-frequency representation when writing $:H_R:$.

Not verified:

1. The free AdS-subtracted expectation value $\langle T_{ab}\rangle$ has been computed in renormalized stress tensor on BTZ.md; its order-$\lambda$ correction has not.
2. Backreaction and the gravitational first law are outside the fixed-background benchmark.
