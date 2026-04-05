consider a one-parameter family of local actions on a fixed background metric $g_{\mu\nu}$,

$$
S_\lambda[\phi;g]=\int_M \mathbf L_\lambda,
\qquad
\mathbf L_\lambda=\sqrt{-g}\,\mathcal L_\lambda\,\mathrm d^2x .
$$

in this note I keep $g_{\mu\nu}$ fixed when constructing the phase space, so $\delta g_{\mu\nu}=0$. the stress tensor is still defined by metric variation,

$$
T^{(\lambda)}_{\mu\nu}=-\frac{2}{\sqrt{-g}}\frac{\delta S_\lambda}{\delta g^{\mu\nu}}.
$$

the $T\bar T$ flow equation is

$$
\partial_\lambda \mathbf L_\lambda
=\mathbf O^{T\bar T}_\lambda
:=\frac{1}{2}\sqrt{-g}\,\varepsilon^{\mu\nu}\varepsilon^{\rho\sigma}
T^{(\lambda)}_{\mu\rho}T^{(\lambda)}_{\nu\sigma}\,\mathrm d^2x .
$$

# covariant phase space at fixed $\lambda$

the basic variation of the Lagrangian $2$-form is

$$
\delta \mathbf L_\lambda
=\mathbf E_\lambda\,\delta\phi+d\mathbf\Theta_\lambda(\delta\phi),
$$

where $\mathbf E_\lambda=0$ is the equation of motion and $\mathbf\Theta_\lambda$ is the symplectic potential current. for two variations $\delta_1,\delta_2$ we define the symplectic current

$$
\mathbf\omega_\lambda(\delta_1,\delta_2)
=\delta_1\mathbf\Theta_\lambda(\delta_2)-\delta_2\mathbf\Theta_\lambda(\delta_1).
$$

integrating over a Cauchy slice $\Sigma$ gives the presymplectic form

$$
\Omega_{\Sigma,\lambda}(\delta_1,\delta_2)
=\int_\Sigma \mathbf\omega_\lambda(\delta_1,\delta_2).
$$

equivalently, if

$$
\Theta_{\Sigma,\lambda}:=\int_\Sigma \mathbf\Theta_\lambda,
$$

then

$$
\Omega_{\Sigma,\lambda}=\delta\Theta_{\Sigma,\lambda}.
$$

# flow of the symplectic structure

since $\delta$ and $\partial_\lambda$ commute,

$$
\delta\,\partial_\lambda \mathbf L_\lambda
=\partial_\lambda \mathbf E_\lambda\,\delta\phi+d(\partial_\lambda\mathbf\Theta_\lambda).
$$

now antisymmetrize in two variations $\delta_1,\delta_2$. on-shell and for linearized solutions we obtain

$$
d\big(\partial_\lambda \mathbf\omega_\lambda(\delta_1,\delta_2)\big)\approx 0.
$$

this is the correct conclusion from differentiating the variational identity. by itself it does not imply

$$
\partial_\lambda \Omega_{\Sigma,\lambda}=0,
$$

and it also does not imply globally that $\partial_\lambda\mathbf\omega_\lambda\approx d\alpha_\lambda$. the latter would require extra locality and cohomological assumptions, and it can fail globally on a cylinder.

the more useful statement is instead the field-space exact relation

$$
\partial_\lambda \Omega_{\Sigma,\lambda}
=\delta B_{\Sigma,\lambda},
\qquad
B_{\Sigma,\lambda}:=\int_\Sigma \partial_\lambda\mathbf\Theta_\lambda.
$$

this follows immediately from $\Omega_{\Sigma,\lambda}=\delta\Theta_{\Sigma,\lambda}$.

if the gauge degeneracies have been quotiented out and $\Omega_{\Sigma,\lambda}$ is nondegenerate, we may define a phase-space vector field $Y_\lambda$ by

$$
i_{Y_\lambda}\Omega_{\Sigma,\lambda}=-B_{\Sigma,\lambda}.
$$

then Cartan's formula gives

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})\Omega_{\Sigma,\lambda}=0.
$$

therefore the family of symplectic forms can be trivialized, at least locally in phase space, by a $\lambda$-dependent canonical transport. this is the natural covariant-phase-space version of the statement that on the plane the $T\bar T$ flow acts by a canonical or Bogoliubov transformation.

# symmetries and Noether charges

let $X_\xi$ be the field-space vector associated with a spacetime symmetry parameter $\xi$:

$$
(X_\xi\phi)(x)=\delta_\xi\phi(x).
$$

assume the Lagrangian changes by a total derivative,

$$
\delta_\xi \mathbf L_\lambda=d\mathbf M_{\xi,\lambda}.
$$

the Noether current is then

$$
\mathbf J_{\xi,\lambda}
=\mathbf\Theta_\lambda(\delta_\xi\phi)-\mathbf M_{\xi,\lambda},
$$

and on-shell,

$$
d\mathbf J_{\xi,\lambda}\approx 0.
$$

when the symmetry is Hamiltonian, its charge $H_{\xi,\lambda}$ is defined by

$$
i_{X_\xi}\Omega_{\Sigma,\lambda}=-\delta H_{\xi,\lambda}.
$$

for diffeomorphisms with boundaries there can be extra boundary terms, but this is the basic relation we need.

# bare picture versus dressed picture

there are two different but compatible ways to discuss the $\lambda$-flow.

## bare picture

in the bare picture the geometric action of the symmetry is kept fixed, so

$$
\partial_\lambda X_\xi=0.
$$

then differentiating the Hamiltonian relation gives

$$
i_{X_\xi}\,\partial_\lambda\Omega_{\Sigma,\lambda}
=-\delta(\partial_\lambda H_{\xi,\lambda}).
$$

using $\partial_\lambda\Omega_{\Sigma,\lambda}=\delta B_{\Sigma,\lambda}$, we get

$$
i_{X_\xi}\delta B_{\Sigma,\lambda}
=-\delta(\partial_\lambda H_{\xi,\lambda}).
$$

if in addition $\mathcal L_{X_\xi}B_{\Sigma,\lambda}=0$, then

$$
\partial_\lambda H_{\xi,\lambda}=i_{X_\xi}B_{\Sigma,\lambda}+c_\xi(\lambda),
$$

where $c_\xi(\lambda)$ is a phase-space constant fixed by the normalization of the charge. in this picture the symmetry vector is fixed, while the charge and its bracket deform with $\lambda$.

## dressed picture

in the dressed picture one transports observables by the canonical flow generated by $Y_\lambda$. define the transported symmetry vector by

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})X_{\xi,\lambda}=0.
$$

because $(\partial_\lambda+\mathcal L_{Y_\lambda})\Omega_{\Sigma,\lambda}=0$, we find

$$
\delta\Big[(\partial_\lambda+\mathcal L_{Y_\lambda})H_{\xi,\lambda}\Big]=0.
$$

after fixing an additive $\lambda$-dependent constant, we may choose

$$
(\partial_\lambda+\mathcal L_{Y_\lambda})H_{\xi,\lambda}=0.
$$

so in the dressed picture the charges are transported canonically along the flow. this is the clean answer to the question of how $X_{\xi,\lambda}$ should deform: it should be pushed forward by the same canonical map that trivializes $\Omega_{\Sigma,\lambda}$.

# charge algebra

in the bare picture the Poisson bracket is defined by the $\lambda$-dependent symplectic form, so the algebra of charges generally deforms with $\lambda$.

in the dressed picture, if $U_\lambda$ is the canonical transport generated by $Y_\lambda$, then locally

$$
U_\lambda^*\Omega_{\Sigma,\lambda}=\Omega_{\Sigma,0}.
$$

therefore the dressed charges satisfy the same algebra as at $\lambda=0$,

$$
\{H^{\mathrm{dress}}_{\xi,\lambda},H^{\mathrm{dress}}_{\zeta,\lambda}\}_0
=H^{\mathrm{dress}}_{[\xi,\zeta],\lambda}+K_0(\xi,\zeta),
$$

up to the usual central extension and possible global subtleties. this is the sense in which the symmetry algebra is preserved on the plane. on a cylinder the flow is typically more subtle because of zero modes, winding sectors, and nontrivial cohomology.

# minimal lessons

1. the immediate consequence of differentiating the variational identity is $d(\partial_\lambda\mathbf\omega_\lambda)\approx 0$, not $\partial_\lambda\Omega_{\Sigma,\lambda}=0$.
2. the quantity that controls the deformation is the field-space one-form $B_{\Sigma,\lambda}=\int_\Sigma \partial_\lambda\mathbf\Theta_\lambda$.
3. once $Y_\lambda$ is defined by $i_{Y_\lambda}\Omega_{\Sigma,\lambda}=-B_{\Sigma,\lambda}$, the deformation of symmetry generators follows from canonical transport rather than from an independent guess.