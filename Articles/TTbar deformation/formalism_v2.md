---
title: TTbar deformation and covariant phase space
date: 2026-05-21
summary: "A covariant phase space account of how the TTbar flow deforms the symplectic form, Hamiltonian charges, and charge algebra, with lessons from the deformed free scalar example."
---

# TTbar Deformation and Covariant Phase Space

Consider a one-parameter family of local actions on a fixed background metric $g_{\mu\nu}$,

$$
S_\lambda[\phi;g]=\int_M \mathbf L_\lambda,
\qquad
\mathbf L_\lambda=\sqrt{-g}\,\mathcal L_\lambda\,\mathrm d^2x .
$$

In this note I keep $g_{\mu\nu}$ fixed when constructing the phase space, so $\delta g_{\mu\nu}=0$. The stress tensor is still defined by metric variation. With the convention

$$
\delta S_\lambda
=-\frac{1}{2}\int_M d^2x\sqrt{-g}\,
T_{\mu\nu}^{(\lambda)}\delta g^{\mu\nu},
$$

we have

$$
T^{(\lambda)}_{\mu\nu}
=-\frac{2}{\sqrt{-g}}\frac{\delta S_\lambda}{\delta g^{\mu\nu}}.
$$

The $T\bar T$ flow equation is

$$
\partial_\lambda \mathbf L_\lambda
=\mathbf O^{T\bar T}_\lambda
:=\frac{1}{2}\sqrt{-g}\,\varepsilon^{\mu\nu}\varepsilon^{\rho\sigma}
T^{(\lambda)}_{\mu\rho}T^{(\lambda)}_{\nu\sigma}\,\mathrm d^2x .
$$

The overall sign of the flow depends on the stress-tensor and $T\bar T$ convention. What matters below is not that sign, but the fact that $\partial_\lambda\mathbf L_\lambda$ is itself a local Lagrangian density.

# Covariant Phase Space at Fixed $\lambda$

The basic variation of the Lagrangian $2$-form is

$$
\delta \mathbf L_\lambda
=\mathbf E_\lambda\,\delta\phi+d\mathbf\Theta_\lambda(\delta\phi),
$$

where $\mathbf E_\lambda=0$ is the equation of motion and $\mathbf\Theta_\lambda$ is the symplectic potential current. For two variations $\delta_1,\delta_2$ we define the symplectic current

$$
\mathbf\omega_\lambda(\delta_1,\delta_2)
=\delta_1\mathbf\Theta_\lambda(\delta_2)-\delta_2\mathbf\Theta_\lambda(\delta_1).
$$

Integrating over a Cauchy slice $\Sigma$ gives the presymplectic form

$$
\Omega_{\Sigma,\lambda}(\delta_1,\delta_2)
=\int_\Sigma \mathbf\omega_\lambda(\delta_1,\delta_2).
$$

Equivalently, if

$$
\Theta_{\Sigma,\lambda}:=\int_\Sigma \mathbf\Theta_\lambda,
$$

then

$$
\Omega_{\Sigma,\lambda}=\delta\Theta_{\Sigma,\lambda}.
$$

Here $\delta$ is the field-space exterior derivative. In gauge theories $\Omega_{\Sigma,\lambda}$ is presymplectic until proper gauge degeneracies are quotiented out.

# Flow of the Symplectic Structure

Since $\delta$ and $\partial_\lambda$ commute,

$$
\delta\,\partial_\lambda \mathbf L_\lambda
=\partial_\lambda \mathbf E_\lambda\,\delta\phi
+d(\partial_\lambda\mathbf\Theta_\lambda).
$$

Antisymmetrizing in two variations and then imposing the equations of motion and the linearized equations gives

$$
d\big(\partial_\lambda \mathbf\omega_\lambda(\delta_1,\delta_2)\big)\approx 0.
$$

This is the direct consequence of differentiating the variational identity. By itself it does not imply

$$
\partial_\lambda \Omega_{\Sigma,\lambda}=0,
$$

and it also does not imply globally that

$$
\partial_\lambda\mathbf\omega_\lambda\approx d\alpha_\lambda.
$$

The latter would require extra locality and cohomological assumptions, and it can fail on a cylinder because of zero modes, winding sectors, or boundary contributions.

The more useful identity is the field-space exact relation

$$
\partial_\lambda \Omega_{\Sigma,\lambda}
=\delta B_{\Sigma,\lambda},
\qquad
B_{\Sigma,\lambda}:=\int_\Sigma \partial_\lambda\mathbf\Theta_\lambda .
$$

This follows immediately from $\Omega_{\Sigma,\lambda}=\delta\Theta_{\Sigma,\lambda}$. The scalar example makes the point concrete: in the variables $(\phi,\dot\phi)$ the equal-time symplectic form changes with $\lambda$, while in the canonical variables $(\phi,\pi_\lambda)$ it takes Darboux form.

For the deformed scalar with

$$
x^\pm=t\pm x,\qquad
\partial_\pm=\frac{1}{2}(\partial_t\pm\partial_x),
\qquad
L_0=\frac{1}{2}\partial_+\phi\,\partial_-\phi,
$$

one finds

$$
\theta_\lambda^t=\frac{\dot\phi}{4F}\delta\phi,
\qquad
F=\sqrt{1+4\lambda L_0}.
$$

Thus

$$
\pi_\lambda=\frac{\dot\phi}{4F},
\qquad
\Omega_{\Sigma,\lambda}=\int_\Sigma dx\,\delta\pi_\lambda\wedge\delta\phi .
$$

Expanded in the original velocity variable,

$$
\Omega_{\Sigma,\lambda}
=\frac{1}{4}\int dx\,\delta\dot\phi\wedge\delta\phi
-\frac{\lambda}{16}\int dx\,
\delta\left[(\dot\phi^2-\phi'^2)\dot\phi\right]\wedge\delta\phi
+O(\lambda^2).
$$

Therefore $\partial_\lambda\Omega_{\Sigma,\lambda}$ is not zero in these coordinates. What is true is that the deformation can be absorbed into a canonical change of phase-space coordinates.

If the gauge degeneracies have been quotiented out and $\Omega_{\Sigma,\lambda}$ is nondegenerate, we may define a phase-space vector field $Y_\lambda$ by

$$
i_{Y_\lambda}\Omega_{\Sigma,\lambda}=-B_{\Sigma,\lambda}.
$$

Then Cartan's formula gives

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})\Omega_{\Sigma,\lambda}=0.
$$

Thus the family of symplectic forms can be trivialized, at least locally in phase space, by a $\lambda$-dependent canonical transport. This should be called canonical transport. A Bogoliubov transformation is only a special case when the canonical map is linear in oscillator variables.

# Hamiltonian Charges

Let $X_\lambda$ be a phase-space vector field. It is Hamiltonian at fixed $\lambda$ if there exists a charge $H_\lambda$ such that

$$
i_{X_\lambda}\Omega_{\Sigma,\lambda}=-\delta H_\lambda .
$$

This definition is broader than Noether's theorem. Some charges come from spacetime or internal symmetries, but integrable hierarchies can also contain Hamiltonian conserved charges that are not simply generated by a spacetime vector field.

The scalar example illustrates this distinction. The deformed charges

$$
Q_{\pm,n}^{(\lambda)}
=Q_{\pm,n}^{(0)}+\lambda Q_{\pm,n}^{(1)}+O(\lambda^2)
$$

are local conserved charges of an integrable hierarchy. They are naturally studied as Hamiltonian functionals on the deformed phase space, even when they are not ordinary Noether charges associated with a spacetime symmetry parameter $\xi$.

# Noether Charges as a Special Case

For a spacetime symmetry parameter $\xi$, let $X_\xi$ be the induced field-space vector,

$$
(X_\xi\phi)(x)=\delta_\xi\phi(x).
$$

Assume the Lagrangian changes by a total derivative,

$$
\delta_\xi \mathbf L_\lambda=d\mathbf M_{\xi,\lambda}.
$$

The Noether current is then

$$
\mathbf J_{\xi,\lambda}
=\mathbf\Theta_\lambda(\delta_\xi\phi)-\mathbf M_{\xi,\lambda},
$$

and on-shell,

$$
d\mathbf J_{\xi,\lambda}\approx 0.
$$

When the symmetry is Hamiltonian, its charge $H_{\xi,\lambda}$ satisfies

$$
i_{X_\xi}\Omega_{\Sigma,\lambda}=-\delta H_{\xi,\lambda}.
$$

For diffeomorphisms with boundaries there can be extra boundary terms. The Noether charge should then be understood as the boundary-improved Hamiltonian charge.

# Bare Picture Versus Dressed Picture

There are two different but compatible ways to discuss the $\lambda$-flow.

## Bare picture

In the bare picture the phase-space vector is kept fixed as a geometric operation, so

$$
\partial_\lambda X=0.
$$

Differentiating the Hamiltonian relation gives

$$
i_X\,\partial_\lambda\Omega_{\Sigma,\lambda}
=-\delta(\partial_\lambda H_\lambda).
$$

Using $\partial_\lambda\Omega_{\Sigma,\lambda}=\delta B_{\Sigma,\lambda}$,

$$
i_X\delta B_{\Sigma,\lambda}
=-\delta(\partial_\lambda H_\lambda).
$$

Since

$$
\mathcal L_XB_{\Sigma,\lambda}
=i_X\delta B_{\Sigma,\lambda}+\delta(i_XB_{\Sigma,\lambda}),
$$

we get

$$
\delta(\partial_\lambda H_\lambda)
=-\mathcal L_XB_{\Sigma,\lambda}
+\delta(i_XB_{\Sigma,\lambda}).
$$

If, in addition, $\mathcal L_XB_{\Sigma,\lambda}=0$, then

$$
\partial_\lambda H_\lambda=i_XB_{\Sigma,\lambda}+c_X(\lambda),
$$

where $c_X(\lambda)$ is a phase-space constant fixed by the normalization of the charge. Without this invariance assumption there is no universal formula for $\partial_\lambda H_\lambda$ using only $i_XB_{\Sigma,\lambda}$.

In this picture the vector field is fixed, while the Hamiltonian functional and its density generally deform with $\lambda$.

## Dressed picture

In the dressed picture one transports observables and vector fields by the canonical flow generated by $Y_\lambda$. Define the transported vector field by

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})X_\lambda=0.
$$

Because

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})\Omega_{\Sigma,\lambda}=0,
$$

the Hamiltonian relation implies

$$
\delta\Big[(\partial_\lambda+\mathcal L_{Y_\lambda})H_\lambda\Big]=0.
$$

After fixing an additive $\lambda$-dependent constant, one may choose

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})H_\lambda=0.
$$

Thus in the dressed picture the charges are transported canonically along the flow. This is the clean answer to the question of how the generator should deform: it is pushed forward by the same canonical map that trivializes $\Omega_{\Sigma,\lambda}$.

# Charge Algebra

The charge algebra must be discussed at three levels:

- the local charge density,
- the integrated charge,
- the Poisson bracket defined by $\Omega_{\Sigma,\lambda}$.

The scalar example shows why these should not be conflated. The densities of the deformed charges are not equal to their undeformed densities. To first order,

$$
q_{+,n}^{(\lambda)}
=A^n+\lambda\frac{n-1}{2}A^nB^2+O(\lambda^2),
\qquad
q_{-,n}^{(\lambda)}
=B^n+\lambda\frac{n-1}{2}A^2B^n+O(\lambda^2),
$$

where $(A,B)$ are the chiral combinations built from the deformed canonical momentum. Nevertheless, the first-order brackets of the integrated charges reduce to total derivatives, so

$$
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}
=O(\lambda^2)
$$

under periodic boundary conditions or sufficiently fast falloff.

Therefore the correct general statement is not that the bare densities are unchanged. Rather:

- in the bare picture, densities and Hamiltonian functionals generally deform;
- the integrated algebra may remain unchanged if the deformation terms become boundary terms or if the charges are transported canonically;
- in the dressed picture, if $U_\lambda$ is the canonical transport generated by $Y_\lambda$, then locally

$$
U_\lambda^*\Omega_{\Sigma,\lambda}=\Omega_{\Sigma,0}.
$$

For dressed charges this gives the transported algebra

$$
\{H^{\mathrm{dress}}_{\xi,\lambda},H^{\mathrm{dress}}_{\zeta,\lambda}\}_0
=H^{\mathrm{dress}}_{[\xi,\zeta],\lambda}+K_0(\xi,\zeta),
$$

up to central extensions, boundary terms, and global subtleties. On a cylinder the flow is more delicate because zero modes, winding sectors, and cohomology can obstruct a global canonical trivialization.

# Minimal Lessons

1. The immediate consequence of differentiating the variational identity is
   $$
   d(\partial_\lambda\mathbf\omega_\lambda)\approx 0,
   $$
   not $\partial_\lambda\Omega_{\Sigma,\lambda}=0$.
2. The quantity that controls the deformation is the field-space one-form
   $$
   B_{\Sigma,\lambda}=\int_\Sigma \partial_\lambda\mathbf\Theta_\lambda .
   $$
3. Once $Y_\lambda$ is defined by
   $$
   i_{Y_\lambda}\Omega_{\Sigma,\lambda}=-B_{\Sigma,\lambda},
   $$
   the deformation of generators follows from canonical transport rather than from an independent guess.
4. Noether charges are only a special class of Hamiltonian charges. The scalar $Q_{\pm,n}^{(\lambda)}$ tower should be treated as integrable Hamiltonian charges, not necessarily as spacetime Noether charges.
5. A charge density can deform even when the integrated charge algebra is preserved, because the bracket corrections may be total derivatives.

# How to Improve the Scalar Example

The scalar example would be more useful if it explicitly connects the concrete formulas to the abstract phase-space picture above. The most natural additions are:

1. Derive the canonical transport explicitly to first order. Start from
   $$
   \pi_\lambda=\frac{\dot\phi}{4F}
   $$
   and solve for the first-order map between $(\phi,\dot\phi)$ and $(\phi,\pi_\lambda)$.
2. Separate the three variables used in the computation:
   $$
   a=\partial_+\phi,\qquad b=\partial_-\phi,
   $$
   versus the canonical chiral variables
   $$
   A=2\pi_\lambda+\frac{1}{2}\phi',
   \qquad
   B=2\pi_\lambda-\frac{1}{2}\phi'.
   $$
   This makes clear why the bracket computation should use $A,B$, not the undeformed $a,b$.
3. State whether $Q_{\pm,n}^{(\lambda)}$ are Noether charges or integrable hierarchy charges. The latter is the cleaner interpretation.
4. Prove conservation and commutativity under one fixed convention for the light-cone normalization. The current draft should use
   $$
   L_0=\frac{1}{2}\partial_+\phi\,\partial_-\phi,
   \qquad
   F=\sqrt{1+2\lambda\partial_+\phi\,\partial_-\phi}.
   $$
5. Add a short discussion of boundary conditions. The vanishing of the bracket corrections relies on periodic boundary conditions or sufficiently fast falloff.
6. If the goal is to connect to the full $T\bar T$ story, try to identify whether the first-order charges are the beginning of an all-order dressed hierarchy, rather than only a first-order accident. 
7. The scalar example would benefit from a concrete demonstration that the first-order dressed charges are indeed the canonical transport of the undeformed charges under the flow generated by $Y_\lambda$. This would bridge the gap between the abstract formalism and the explicit.
8. Since there is already a variable called $\pi$ in the scalar example, renaming the time flow as $T$ could reduce confusion. The Hamiltonian one-form with mass dimension would be $H\,dT$, not $\mathbf H\,dt$. Alternatively, one could keep $t$ for the worldsheet time but explicitly note that in the covariant phase space formalism $\mathbf\pi$ means a field-space vector field generating a symmetry, not a canonical momentum.

# Concluding Suggestions

The paper provides an interesting formal consistency check by comparing the time-derivative and variational-derivative approaches. However, the crucial step—reinterpreting the deformation of Noether currents as the field-space one-form $B$—is underexplained relative to its importance. The scalar example would be an ideal place to anchor the formalism if it included:

- a clear explanation that the “Noether charge density” deforms differently from the Hamiltonian charge density,
- a precise derivation of the first-order canonical transport generating the dressed charges,
- a statement of the relevant boundary conditions, and
- a note distinguishing Noether and Hamiltonian charges in integrable field theories. 

Clarifying these points would strengthen the paper and help readers connect the abstract machinery to the example that is already partly presented.
