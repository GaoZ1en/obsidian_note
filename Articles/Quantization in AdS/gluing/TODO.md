# TODO

- [ ] Action: rewrite the regional phase-space discussion in `a natural method.md` as a family $\pi_i:\mathcal S_i\to\mathcal B_\Gamma$.
  Context: for fixed boundary history $q$, tangent variations satisfy $\delta q=0$ and the regional covariant symplectic form is conserved; allowing $\delta q\neq0$ moves between fibers and produces interface flux rather than a modified regional symplectic form.
  Check: derive the flux identity with the existing orientation convention and state precisely which space is pre-symplectic, symplectic, or only fibered.

- [ ] Action: define the interface data space and the regional restriction maps.
  Context: use $\mathcal P_\Gamma=T^*\mathcal B_\Gamma$ formally, with $r_i(\phi_i)=(q_i,p_i)$ and the orientation reversal $\iota(q,p)=(q,-p)$.
  Check: prove that the fiber-product conditions reproduce both $q_1=q_2$ and $p_1+p_2=0$, and that the pullback of the regional symplectic forms gives the uncut scalar CPS form with interface flux cancellation.

- [ ] Action: construct a finite-cutoff reduced symplectic model for canonical quantum gluing.
  Context: use the $2N$ physical feedback modes selected by the truncated Dirichlet-to-Neumann relation. Do not quantize the unconstrained $(2N+1)$-variable Galerkin port model as though its extra growing port mode were physical.
  Check: exhibit reduced canonical coordinates and an explicit symplectic matrix $S_N$ to the same global regulator, verifying $S_N^{\mathrm T}JS_N=J$ and equality of the quadratic Hamiltonians.

- [ ] Action: quantize the finite-dimensional symplectic map.
  Context: lift $S_N$ to a metaplectic unitary $U_N$, or equivalently compare the two finite-dimensional regular CCR representations.
  Check: verify the canonical commutators, vacuum covariance matrix, Hamiltonian intertwining, and two-point functions at fixed $N$.

- [ ] Action: determine whether the finite-cutoff quantum equivalences have a continuum Fock-space limit.
  Context: finite-dimensional unitary equivalence and fixed-window spectral convergence do not imply continuum unitary equivalence.
  Check: compute the large-mode Bogoliubov coefficients and apply the Shale--Stinespring Hilbert--Schmidt criterion before making any Fock-space claim.

- [ ] Action: formulate the gauge-theory extension only after the scalar symplectic reduction is complete.
  Context: replace equality of boundary data by gauge-equivalent descent data and ordinary reduction by the appropriate homotopy/BFV construction.
  Check: identify the gauge group at the cut, its moment map, proper versus charged transformations, and the surviving reduced interface algebra.
