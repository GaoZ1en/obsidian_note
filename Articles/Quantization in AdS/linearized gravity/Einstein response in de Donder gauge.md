# Einstein Response in De Donder Gauge

## Conventions and Domain

Use the conventions of [gravitation scalar interaction](gravitation%20scalar%20interaction.md): unit AdS radius, $f=1+r^2$, $\kappa^2=16\pi G$, and $\mathcal E^{(1)}[q]=T/2$. The field $q=k_\phi$ is the matter contribution to the order-$\kappa^2$ metric coefficient.

Work with generic $\Delta>1$, $m^2=\Delta(\Delta-2)$, excluding $\Delta=(1+\sqrt5)/2$ for now. Require a smooth center, the fixed boundary cylinder, Brown–Henneaux falloffs, and the differentiated logarithm-free expansions in [de Donder gauge accessibility](de%20Donder%20gauge%20accessibility.md). The exceptional-$\Delta$ limit remains deferred. Initially use finite sums of normalizable free scalar modes.

All derivatives and index contractions below use $g^{(0)}$. The equations to solve are

$$\begin{align}
\mathcal E^{(1)}_{\mu\nu}[q]&=\frac12T_{\mu\nu},& C_\nu[q]&=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu q=0.
\end{align}$$

Equivalently, with $\bar q_{\mu\nu}=q_{\mu\nu}-g^{(0)}_{\mu\nu}q/2$,

$$\begin{align}
(\Box_0+2)\bar q_{\mu\nu}-2g^{(0)}_{\mu\nu}\bar q&=-T_{\mu\nu},& \nabla^\mu\bar q_{\mu\nu}&=0.
\end{align}$$

## Integral Kernel and Bilinear Scalar Response

Choose a real linear response operator with kernel $G_{\mu\nu}{}^{\rho\sigma}(x,x')$, normalized on its admissible conserved-source domain by

$$\begin{align}
(GS)_{\mu\nu}(x) &=\int dV_{x'}\,G_{\mu\nu}{}^{\rho\sigma}(x,x')S_{\rho\sigma}(x'),\\
\mathcal E^{(1)}[GS]&=S,&C[GS]&=0,& dV_{x'}&=\sqrt{-g^{(0)}(x')}\,d^3x'.
\end{align}$$

The primed tensor indices of $G$ contract with the source at $x'$. This is a right inverse on conserved sources with the stated regularity and boundary conditions. It is not an inverse of the ungauged Einstein operator on arbitrary tensor sources.

The choice of $G$ includes the proper residual gauge representative and a compatible prescription for homogeneous data and time evolution. It must include any source-dependent completion of the gravitational initial constraints. In particular, it is not defined here by imposing zero metric Cauchy data for an arbitrary nonzero matter source. At temporal poles, the chosen response may have polynomial time dependence; no bounded monochromatic response is assumed.

The [explicit kernel construction](Einstein%20response%20kernel%20construction.md) gives the auxiliary Euclidean coefficient functions and their retarded continuation. The [scalar-source prescription](Einstein%20scalar%20response%20prescription.md) now fixes the response on a finite scalar-source space $\mathcal V$: opposite-frequency sources use a static seed and isometry recursion; positive-positive sources use a common-mass Abel continuation, including the full time dependence in any Laurent finite part. An independent real source basis and its finite Gram matrix give the actual kernel $G_{\mathcal V}$. In the finite-mode calculation below, take $G=G_{\mathcal V}$. This is a solution-space kernel; it is not an unqualified retarded convolution with an eternal source.

The construction supplies de Donder solutions with the stated no-log boundary expansions. Their restrictions to any initial slice obey the Einstein constraints. Thus the initial metric data are fixed by this particular-response prescription, rather than supplied as unknown additional terms. The analytic argument uses the reflecting realization, meromorphic spectral continuation, and the generic-mass boundary recursion stated in the prescription note.

For two free scalar solutions define the polarized stress tensor

$$\begin{align}
T_{\rho\sigma}[u,v] &=\nabla_{(\rho}u\,\nabla_{\sigma)}v -\frac12g^{(0)}_{\rho\sigma} \left(\nabla u\cdot\nabla v+m^2uv\right).
\end{align}$$

It is symmetric in $u,v$, is conserved when both solve the same Klein–Gordon equation, and satisfies $T[\phi,\phi]=T[\phi]$. Define

$$\begin{align}
\mathcal B_{\mu\nu}[u,v](x) &=\frac12\int dV_{x'}\, G_{\mu\nu}{}^{\rho\sigma}(x,x')T_{\rho\sigma}[u,v](x').
\end{align}$$

Then the general response is

$$\begin{align}
q_{\mu\nu} &=q^{\mathrm h}_{\mu\nu} +\mathcal B_{\mu\nu}[\phi^{(0)},\phi^{(0)}],\\
\mathcal E^{(1)}[q^{\mathrm h}]&=0,&C[q^{\mathrm h}]&=0.
\end{align}$$

Once $G$ is fixed, $\mathcal B$ is one fixed symmetric bilinear map. Mode-pair responses, when needed for matrix elements, are simply its evaluations on two free modes; no separate long mode-pair expansion is needed in the general formula.

## Homogeneous Data Convention

Residual de Donder transformations obey

$$\begin{align}
q&\longmapsto q+\mathcal L_\xi g^{(0)},& (\Box_0-2)\xi_\nu&=0.
\end{align}$$

Only smooth logarithm-free proper vectors are gauge redundancies. In our asymptotic class they obey $\xi^r=O(r^{-1})$ and $\xi^t,\xi^\varphi=O(r^{-4})$, with differentiated falloffs. They can remove the proper pure-gauge part of $q^{\mathrm h}$. Physical Brown–Henneaux boundary-graviton data cannot be removed in this way. This is the distinction between gauge degeneracies and physical directions in the [covariant phase-space construction](https://arxiv.org/html/1906.08616v4#S2.SS1).

Adopt the homogeneous-data convention already used in the interaction note: free physical data are assigned to the leading scalar and boundary-graviton amplitudes $b,a$, and no additional independent homogeneous amplitudes are introduced at the next order. Within the same vacuum-orbit mode sector, homogeneous corrections can be represented by perturbative redefinitions of those leading amplitudes. This is a choice of coordinates and of particular response, not removal of a physical excitation by a proper gauge transformation.

Together with a choice of proper gauge representative included in $G$, this permits the working expression

$$\begin{align}
q_{\mu\nu} &=\mathcal B_{\mu\nu}[\phi^{(0)},\phi^{(0)}],\\
k_{\mu\nu} &=\frac12(\mathcal L_\zeta^2g^{(0)})_{\mu\nu} +\mathcal B_{\mu\nu}[\phi^{(0)},\phi^{(0)}], & h_{\mu\nu}&=(\mathcal L_\zeta g^{(0)})_{\mu\nu}.
\end{align}$$

Thus $q^{\mathrm h}=0$ is our no-additional-homogeneous-data convention relative to the selected kernel. It does not set $h=0$, does not eliminate the boundary charges required by the matter source, and does not imply zero metric initial data. If an independent physical $q^{\mathrm h}$ is specified while the leading amplitudes are held fixed, it must be retained.

## Next Step: A Free-Energy Cutoff

Keep $E_{\mathrm{cut}}$ symbolic for now. Use the normalized free modes from the interaction note and retain

$$\begin{align}
\mathcal I_\phi(E_{\mathrm{cut}}) &=\{(n,j):n\ge0,\ j\in\mathbb Z,\ \Delta+2n+|j|<E_{\mathrm{cut}}\},\\
\mathcal I_g(E_{\mathrm{cut}}) &=\{(A,n):A=L,R,\ n\ge0,\ n+2<E_{\mathrm{cut}}\},\\
\phi^{(0)}_{<} &=\sum_{I\in\mathcal I_\phi} (b_Iu_I+b_I^*u_I^*),\\
\zeta_{<} &=\sum_{(A,n)\in\mathcal I_g} (a_{A,n}\zeta_{A,n}+a_{A,n}^*\zeta_{A,n}^*),& h_{<}&=\mathcal L_{\zeta_{<}}g^{(0)}.
\end{align}$$

Here the gravitational modes are the physical Brown–Henneaux boundary gravitons; the descendant label $n=0$ has free energy $2$. Both sets are finite. Evaluate the sourced corrections by

$$\begin{align}
q_{<} &=\mathcal B[\phi^{(0)}_{<},\phi^{(0)}_{<}],\\
\phi^{(1)}_{<} &=\mathcal L_{\zeta_{<}}\phi^{(0)}_{<},& k_{<}&=\frac12\mathcal L_{\zeta_{<}}^2g^{(0)}+q_{<}.
\end{align}$$

The subscript $<$ labels the retained independent free amplitudes. It is not a projection of the nonlinear response onto the same free-energy band: products generate sum and difference frequencies, including zero frequency and frequencies above $E_{\mathrm{cut}}$. Retain their full sourced response at the working perturbative order so that the Einstein constraints remain satisfied.

For a selected cutoff, evaluate the finite source basis and the responses in the prescribed kernel. Then pull back the retained symplectic form and $H_{\partial_t}$ to the finite amplitudes, preserving the applicable boundary/corner terms, and find canonical coordinates. Only after this step should the one-/two-particle Hamiltonian matrices and any state-space energy truncation be specified. A cutoff on single-mode energies alone does not bound occupation numbers in the full Fock space.

## Verification and Remaining Work

- **Verified:** the de Donder Einstein operator and residual gauge identity, trace/divergence identities, and polarized scalar-source conservation and diagonal normalization are checked with xAct/xTras in [the response checks](scripts/de_donder_onshell_response_checks.wl). The factor $1/2$ in $\mathcal B$ follows from the displayed normalization $\mathcal E^{(1)}G=1$ on conserved sources.
- **Assumptions:** the stated nonresonant mass and no-log domain, compatible gravitational constraint data, and a real linear response prescription. The convention $q^{\mathrm h}=0$ fixes additional homogeneous data relative to that prescription.
- **Computed:** the explicit auxiliary Euclidean kernel and a specified retarded continuation in the separate construction note; its new symbolic checks are reproducible in [the kernel checks](scripts/einstein_kernel_checks.wl).
- **Constructed on finite scalar-source spaces:** the static-seed/descendant response, the conserved same-sign frequency prescription, and the finite Gram kernel. The separate prescription note proves the constraint and no-log statements in its stated analytic domain and records the new symbolic and numerical checks.
- **Not computed:** a complete matrix of responses for a chosen numerical cutoff, the pulled-back interacting Hamiltonian, or the particle spectrum. No convergence on infinite scalar-mode sums or universal extension to arbitrary eternal conserved tensors is claimed.

The earlier component and mode-pair calculations remain available as checks in the scripts; the working exposition is the kernel formulation above.
