We start from the $\displaystyle{\mathcal{K}_{4}}$ operator defined in [[Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/Direct ofpt calculation|Direct ofpt calculation]], and define

$$\begin{align}
\mathcal{K}_{4} & =H_{4}^{\mathrm{con}}-\sum _{m\geqslant 2}m\left\{D^{\dagger}_{m},D_{m}\right\} \\
W & =16\pi[\mathcal{K}_{4}]_{22,\mathrm{res}}
\end{align}$$

here, the subscript $\displaystyle{22}$ selects the normally ordered terms with two creation and two annihilation operators, while $\displaystyle{\mathrm{res}}$ retains only terms that commute with the free Hamiltonian $\displaystyle{H_{0}}$. The factor $\displaystyle{16\pi}$ follows from $\displaystyle{\kappa ^{2}=16\pi G}$.

After vacuum subtraction and with the physical one-particle gap $\displaystyle{\Delta}$ held fixed, the leading gravitational energy shifts are obtained by diagonalizing $\displaystyle{W}$ within each degenerate scalar eigenspace of $\displaystyle{H_{0}}$. Writing

$$\begin{align}
H_{0}\ket{\psi _{a}} & =E^{(0)}_{a}\ket{\psi _{a}} , & W\ket{\psi _{a}} & =g_{a}\ket{\psi _{a}} ,
\end{align}$$

the corresponding energies are

$$\begin{align}
E_{a} & =E^{(0)}_{a}+Gg_{a}+\mathcal{O}(G^{2})
\end{align}$$

the expansion is understood at fixed finite eigenvalue of $\displaystyle{H_{0}}$.

---

The restriction to the resonant part follows from degenerate perturbation theory. At leading order in $\displaystyle{G}$, energy shifts are determined by matrix elements within each eigenspace of the free Hamiltonian $\displaystyle{H_{0}}$. Terms connecting different eigenspaces affect the perturbed states but not the energy shifts at this order.

After normal ordering, the quartic operator contains components with creation-annihilation degrees $\displaystyle{(4,0),(3,1),(2,2),(1,3),(0,4)}$. Positivity of the single-particle energies excludes resonances in the $\displaystyle{(4,0)}$ and $\displaystyle{(0,4)}$ components. The resonant $\displaystyle{(3,1)}$ component vanishes by the global AdS symmetry: the Ward identities make it an interwiner between the one- and three-particle representations, but it annihilates the one-particle lowest-weight state, whose energy $\displaystyle{\Delta}$ lies below the three-particle threshold $\displaystyle{3\Delta}$. Commutation with the raising generators then implies that it annihilates every one-particle state. Since this component contains only one annihilation operator, all its coefficients must vanish, and the $\displaystyle{(1,3)}$ component vanishes by Hermitian conjugation. Thus only the resonant $\displaystyle{(2,2)}$ component contributes to the leading quartic energy shifts; particle-number conservation is a consequence of this argument.

---

Choose a total order on the single-particle mode labels, so that $\displaystyle{I\leqslant J}$ counts each unordered pair once (and we can prove that the choice of order does not affect the spectrum), and define

$$\begin{align}
B^{\dagger}_{IJ} & =\dfrac{b^{\dagger}_{I}b^{\dagger}_{J}}{\sqrt{ 1+\delta _{IJ} }}, & \ket{IJ}  & =B^{\dagger}_{IJ}\ket{0}
\end{align}$$

since $\displaystyle{W}$ is a normally ordered, number-conserving quartic operator, its two-particle matrix element $\displaystyle{W_{IJ;KL}=\braket{ IJ|W|KL }}$ determine it uniquely:

$$\begin{align}
W & =\sum _{I\leqslant J,K\leqslant L}W_{IJ;KL}B^{\dagger}_{IJ}B_{KL}, & W_{N} & =\sum _{1\leqslant i<j\leqslant N}W_{ij}
\end{align}$$

here $\displaystyle{W_{N}}$ is the restriction of $\displaystyle{W}$ to the $\displaystyle{N}$-particle sector. The operator $\displaystyle{w=W_{2}}$ act on the symmetry two-particle space as

$$\begin{align}
w\ket{IJ}  & =\sum _{K\leqslant L}W_{KL;IJ}\ket{KL}
\end{align}$$

$\displaystyle{w_{ij}}$ denotes this same two-body operator acting on particle $\displaystyle{i}$ and $\displaystyle{j}$, with the identity on all remaining particles.

---

## A Covariant Phase-Space Proof of the Response Formula

The inputs are the boundary-completed action and response equation in [the model](<Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/perturbation.md>) and the definitions of the symplectic form and Noether generator in [the CPS formalism](<Articles/Quantization in AdS/perturbation/formalism.md>). The useful observation is that we need not show that eliminating gravity leaves the scalar symplectic form unchanged. Its correction is precisely what converts the energy in the original variables into the interaction Hamiltonian in canonical variables.

Let $\displaystyle{\phi^{(0)}}$ be a finite superposition of free scalar modes, and let $\displaystyle{k_\phi}$ be quadratic in their amplitudes. In the scalar response sector, write

$$\begin{align}
g_{\mu\nu}&=g^{(0)}_{\mu\nu}+\kappa^2(k_\phi)_{\mu\nu}+\cdots, & \phi&=\phi^{(0)}+\kappa^2\phi^{(2)}+\cdots,\\
\mathcal E^{(1)}[k_\phi]&=\frac12T_{(0)}, & (\nabla^{(0)2}-m^2)\phi^{(0)}&=0.
\end{align}$$

Here $\displaystyle{\mathcal E_{\mu\nu}=G_{\mu\nu}-g_{\mu\nu}}$, indices are raised with $\displaystyle{g^{(0)}}$, and $\displaystyle{k_\phi}$ does not include the factor $\displaystyle{\kappa^2}$. There is no independent leading gravitational excitation, but the sourced gravitational response is not set to zero.

**Response domain.** Fix the boundary cylinder and clock, the regular center, the source-free scalar condition with $\displaystyle{\Delta>1}$, and the Brown–Henneaux conditions of the model. We require a smooth response section of the physical phase space: a prescription assigning gravitational Cauchy data to scalar Cauchy data such that the full time evolution is tangent to its image through the retained order. The prescription fixes the physical homogeneous gravitational data. It must solve the complete gravitational equations and constraints, not just a selected component. Only proper diffeomorphisms are quotiented. All boundary and corner terms belong to the same variational problem. Finally, the total endpoint functional $\displaystyle{B}$ introduced below must satisfy

$$\begin{align}
\lim_{\mathcal T\to\infty}\frac{B(\mathcal T)-B(0)}{\mathcal T}=0.
\end{align}$$

Bounded quasiperiodic endpoints suffice. These are conditions on the response prescription, not consequences of $\displaystyle{\mathcal E^{(1)}[k_\phi]=T_{(0)}/2}$ alone. The phase-space argument is local and can be made at a finite regulator; in the continuum its contractions and the infinitesimal canonical change below must exist on the chosen domain. A finite set of external modes is not assumed to be an invariant nonlinear truncation.

On this domain we will prove

$$\begin{align}
\boxed{\displaystyle [\mathcal K_4^{\mathrm{cl}}]_{\mathrm{res}} =-\frac14\left[\int_\Sigma r\,\mathrm dr\,\mathrm d\varphi\, T_{(0)}^{\mu\nu}(k_\phi)_{\mu\nu}\right]_{\mathrm{res}}.}
\end{align}$$

The superscript $\displaystyle{\mathrm{cl}}$ denotes the classical degree-four symbol of the quartic operator above. The resonance projection means the zero-frequency part under the free scalar flow, equivalently its Cesàro time average. The average is taken after extracting the perturbative coefficient on free histories, not by assuming a uniform long-time expansion of the nonlinear solution. No common finite period is assumed.

### The Factor $1/4$: Homogeneity of the Gravitational Action

Let $\displaystyle{\mathcal Q[k]}$ denote the quadratic gravitational action multiplying $\displaystyle{\kappa^2}$ when $\displaystyle{g=g^{(0)}+\kappa^2k+\cdots}$. It includes the quadratic boundary completion. Since variation with respect to the lower-index metric gives

$$\begin{align}
\delta S_g\big|_{\mathrm{bulk}} &=-\frac1{\kappa^2}\int_M\mathrm dV_g\,\mathcal E^{\mu\nu}\delta g_{\mu\nu}, &\delta_gS_\phi\big|_{\mathrm{bulk}} &=\frac12\int_M\mathrm dV_g\,T^{\mu\nu}\delta g_{\mu\nu},
\end{align}$$

the completed quadratic variation is

$$\begin{align}
\delta\mathcal Q[k] =-\int_M\mathrm dV_0\,(\mathcal E^{(1)}[k])^{\mu\nu}\delta k_{\mu\nu} +\bigl[\theta_{\mathcal Q}(k;\delta k)\bigr]_{t_i}^{t_f}.
\end{align}$$

Here $\displaystyle{\mathrm dV_0=r\,\mathrm dt\,\mathrm dr\,\mathrm d\varphi}$; the spatial boundary variation has already been treated with the boundary action, while the temporal potential is retained. Apply this identity to the scaling variation $\displaystyle{\delta k=k}$. Quadratic homogeneity gives the exact identity

$$\begin{align}
2\mathcal Q[k] =-\int_M\mathrm dV_0\,k_{\mu\nu}(\mathcal E^{(1)}[k])^{\mu\nu} +\bigl[\theta_{\mathcal Q}(k;k)\bigr]_{t_i}^{t_f}.
\end{align}$$

The scalar–metric coupling contributes $\displaystyle{\frac12\int_M\mathrm dV_0\,T_{(0)}^{\mu\nu}k_{\mu\nu}}$ to the same action coefficient. Hence, upon using the response equation,

$$\begin{align}
S_{\mathrm{red}}^{(4)} &=\kappa^2\left(\mathcal Q[k_\phi] +\frac12\int_M\mathrm dV_0\,T_{(0)}^{\mu\nu}(k_\phi)_{\mu\nu}\right) +\text{other endpoints}\\
&=\frac{\kappa^2}{4}\int_M\mathrm dV_0\, T_{(0)}^{\mu\nu}(k_\phi)_{\mu\nu} +\kappa^2[B_{\mathrm{cov}}]_{t_i}^{t_f}.
\end{align}$$

In particular, $\displaystyle{B_{\mathrm{cov}}}$ includes $\displaystyle{\theta_{\mathcal Q}(k_\phi;k_\phi)/2}$. The correction $\displaystyle{\phi^{(2)}}$ contributes only a free equation-of-motion term and an endpoint, because

$$\begin{align}
\delta S_\phi^{(0)}[\phi^{(0)};\phi^{(2)}] =\int_M\mathrm dV_0\,(\nabla^{(0)2}-m^2)\phi^{(0)}\,\phi^{(2)} +\left[\int_\Sigma\mathrm dr\,\mathrm d\varphi\,\pi_{\phi,0}\phi^{(2)}\right]_{t_i}^{t_f}, \qquad \pi_{\phi,0}=\frac r{1+r^2}\partial_t\phi^{(0)}.
\end{align}$$

The bulk term vanishes on the external histories. Likewise, terms linear in a higher metric coefficient multiply the background gravitational equation and leave only completed endpoints. Thus no higher response is needed to obtain this quartic action coefficient. This argument uses the action and its variation, not an assumed symmetric inverse on arbitrary off-shell sources.

### The Minus Sign: the CPS Correction to Canonical Coordinates

Pull back the full CPS potential and the boundary-time Noether generator to the same response section. The leading gravitational potential, linear in $\displaystyle{\delta k_\phi}$ with coefficients evaluated at fixed $\displaystyle{g^{(0)}}$, is field-space exact; put its primitive in the endpoint functional. Whenever $\displaystyle{\delta F_0}$ is removed from the potential, make the matching change $\displaystyle{\alpha_t\mapsto\alpha_t-X_tF_0}$ in the Noether boundary functional, leaving $\displaystyle{H=X_t\cdot\theta-\alpha_t}$ unchanged. The leading symplectic form is then the free scalar one. With $\displaystyle{f=1+r^2}$, a representative is

$$\begin{align}
\theta_0&=\int_\Sigma\mathrm dr\,\mathrm d\varphi\, \frac r f\,\partial_t\phi^{(0)}\,\delta\phi^{(0)}, &\omega_0&=\delta\theta_0.
\end{align}$$

For the intermediate calculation, choose scalar Cauchy coordinates $\displaystyle{z=(q,p_0)}$ on this section, with

$$\begin{align}
q=\phi|_{\Sigma_t},\qquad p_0=\frac r f\,\partial_t\phi|_{\Sigma_t},\qquad \theta_0=\int_\Sigma\mathrm dr\,\mathrm d\varphi\,p_0\,\delta q.
\end{align}$$

Thus $\displaystyle{p_0}$ is a rescaled velocity, not the exact interacting canonical momentum; on a free history it is $\displaystyle{\pi_{\phi,0}}$. The coefficients in the following calculation are evaluated at fixed $\displaystyle{(q,p_0)}$. At the order and scalar degree of interest, write

$$\begin{align}
\theta_{\mathrm{red}}&=\theta_0+\kappa^2\theta_2+\cdots, &\omega_{\mathrm{red}}&=\omega_0+\kappa^2\delta\theta_2+\cdots,\\
H_{\mathrm{red}}&=H_\phi+\kappa^2H_2+\cdots, &\iota_{X_0}\omega_0&=-\delta H_\phi.
\end{align}$$

Here $\displaystyle{X_0}$ is the free scalar evolution. Neither $\displaystyle{\theta_2}$ nor $\displaystyle{\delta\theta_2}$ is assumed to vanish. In particular, $\displaystyle{H_2}$ is not yet the interaction Hamiltonian to be quantized with the free brackets.

Restore canonical coordinates by the infinitesimal change $\displaystyle{\mathscr F=\mathrm{id}+\kappa^2Y+\cdots}$, choosing $\displaystyle{Y}$ to solve

$$\begin{align}
\iota_Y\omega_0=-\theta_2.
\end{align}$$

At a finite regulator this follows from the nondegeneracy of the physical free symplectic form. In the continuum it is the stated domain requirement. Cartan's identity gives, at the retained order,

$$\begin{align}
\mathscr F^*\omega_{\mathrm{red}}&=\omega_0,\\
\mathscr F^*\theta_{\mathrm{red}} &=\theta_0+\kappa^2\delta\bigl(\theta_0(Y)\bigr),\\
\mathscr F^*H_{\mathrm{red}} &=H_\phi+\kappa^2\bigl(H_2+YH_\phi\bigr).
\end{align}$$

The extra term in the potential is an endpoint. More importantly, the sign convention of the CPS formalism fixes

$$\begin{align}
YH_\phi =\omega_0(Y,X_0) =-\theta_2(X_0).
\end{align}$$

Consequently, the canonical quartic coefficient is

$$\begin{align}
\boxed{\displaystyle K_4^{\mathrm{can}}=H_2-\theta_2(X_0).}
\end{align}$$

Now use the Noether definition $\displaystyle{H=X_t\cdot\theta-\alpha_t}$. Write the interacting evolution as $\displaystyle{X_t=X_0+\kappa^2X_2+\cdots}$. Our velocity coordinates have the useful property

$$\begin{align}
X_tq=\frac f r p_0=X_0q, \qquad X_2q=0, \qquad \theta_0(X_2)=0.
\end{align}$$

This does not set the interaction to zero: it changes the equation for $\displaystyle{p_0}$. It only removes the extra term that would otherwise occur when expanding the Noether identity. For rigid time translation, $\displaystyle{\alpha_t}$ is the boundary-completed time-slice Lagrangian. Writing $\displaystyle{\alpha_t=\alpha_0+\kappa^2\alpha_2+\cdots}$, its quartic Noether identity is therefore

$$\begin{align}
H_2&=\theta_2(X_0)+\theta_0(X_2)-\alpha_2 =\theta_2(X_0)-\alpha_2,\\
\boxed{\displaystyle K_4^{\mathrm{can}}=H_2-\theta_2(X_0)=-\alpha_2.}
\end{align}$$

Integrating the time-slice Lagrangian recovers the same action, so on the free external histories

$$\begin{align}
S_{\mathrm{red}}^{(4)} &=\kappa^2\int_{t_i}^{t_f}\mathrm dt\,\alpha_2 +\kappa^2[B_{\mathrm{can}}]_{t_i}^{t_f}\\
&=-\kappa^2\int_{t_i}^{t_f}\mathrm dt\,K_4^{\mathrm{can}} +\kappa^2[B_{\mathrm{can}}]_{t_i}^{t_f}.
\end{align}$$

The endpoint includes the chosen potential representative and any matched scalar-coordinate change. Corrections to the scalar trajectory contribute only the free equations of motion and endpoints already displayed. No local off-shell action for an arbitrary spacetime response kernel has been assumed: $\displaystyle{\alpha_2}$ is obtained from the original completed action on the specified response section. The entire unknown symplectic correction is accounted for by its cancellation between the Noether charge and the canonical-coordinate change. The raw energy correction $\displaystyle{H_2}$ alone would miss this cancellation.

### Taking the Resonant Part

Comparison of the two expressions for the same action yields

$$\begin{align}
\int_0^{\mathcal T}\mathrm dt\left( K_4^{\mathrm{can}}+\frac14\int_\Sigma r\,\mathrm dr\,\mathrm d\varphi\, T_{(0)}^{\mu\nu}(k_\phi)_{\mu\nu}\right) =B(\mathcal T)-B(0).
\end{align}$$

Divide by $\displaystyle{\mathcal T}$ and take the free-flow average. The endpoint condition proves the claimed response formula for $\displaystyle{[K_4^{\mathrm{can}}]_{\mathrm{res}}}$.

To identify this with $\displaystyle{[\mathcal K_4^{\mathrm{cl}}]_{\mathrm{res}}}$ defined at the beginning of the note, the canonical calculation and the response must describe the same reduced scalar dynamics, with the same boundary clock and physical homogeneous data. Once the lower-order reduction is matched, two local canonical charts agreeing at free order can differ at order $\displaystyle{\kappa^2}$ by a canonical transformation generated by a quartic $\displaystyle{F}$. It changes the quartic coefficient by

$$\begin{align}
\Delta K_4=-X_0F, &\qquad [\Delta K_4]_{\mathrm{res}} =-\lim_{\mathcal T\to\infty}\frac{F(\mathcal T)-F(0)}{\mathcal T}=0.
\end{align}$$

A quartic polynomial $\displaystyle{F}$ on a finite set of free modes is bounded along the free flow, so its endpoint condition holds automatically. Thus the resonant coefficient is independent of the admissible local canonical chart, even though the unaveraged quartic and the symplectic potential need not agree. This completes the proof without using a special cancellation between gravitational oscillator branches. $\square$

For the connected four-leg operator, the previously defined projection then gives

$$\begin{align}
W=-4\pi\left[\int_\Sigma r\,\mathrm dr\,\mathrm d\varphi\, T_{(0)}^{\mu\nu}(k_\phi)_{\mu\nu}\right]_{22,\mathrm{res}}.
\end{align}$$

Here the bracket means quantizing the classical quartic polynomial and retaining its normally ordered two-creation, two-annihilation part. It makes no additional assertion about its lower-degree contractions. The number-changing selection rule and the one-body subtraction remain separate from this classical proof.

**Scope.** The result is a conditional response identity at the leading classical quartic order, not an instantaneous equality and not an existence theorem for every response kernel. A secular endpoint $\displaystyle{B(t)=tC}$ would survive the projection. An arbitrary retarded response, or a change of physical boundary-graviton data, is not automatically an admissible reparametrization of the same scalar system. The two starting notes do not by themselves establish the required response reduction and endpoint bounds for every source prescription; those requirements have been kept explicit rather than replaced by an assumption that the symplectic correction vanishes.
