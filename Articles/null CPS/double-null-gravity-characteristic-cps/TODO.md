# Immediate Research Tasks

- [x] Action: retain $S_+$ and $S_-$ as area/boost ports and compute the
  endpoint-complete Stage-1 rank/kernel.
  Context: the abstract signed port variables $b_\pm$ keep the closing normal
  data without choosing a particular outer wall.
  Check: the extended matrix has rank six; the fixed-area pullback has rank two
  with only the unused $b_\pm$ source directions in its kernel.

- [x] Action: repair Stage 1.1 with the Damour constraint.
  Context: $\omega_A$ is transported from the shared $\omega_{A0}$ and is not
  assumed to vanish; fixed $\delta\ell^A=0$ still removes the spin-1 potential.
  Check: V8 verifies the exact shear-free solution and records that global
  $\omega_A=0$ needs $\omega_{A0}=0=D_A\theta_0$ in this gauge.

- [x] Action: repair the affine composition claim.
  Context: geometric boost $b$ and dynamical area momentum
  $p_\Omega=-(\kappa+\theta/2)$ are distinct.
  Check: V9 verifies the unrestricted mismatch and its vanishing only after
  slope/expansion matching.

- [x] Action: perform the coupled Stage-2 pullback of the **full** null
  potential with $\bar q^+|_{S_0}=\bar q^-|_{S_0}$ imposed once.
  Context: calculation 02 now derives $r''+\operatorname{tr}(A^2)r/8=0$,
  the retarded variation map, and the complete nonlocal two-form.
  Check: V10--V14 verify the coefficients, finite-mode Green/curl identities,
  shared corner, and generic endpoint representative identity.

- [ ] Action: complete the field-dependent affine-to-area transformation to
  Reisenberger's full form.
  Context: the conformal bulk coefficient agrees, but
  $n_s=(d\lambda_s/dv_s)\ell_s$ makes the normal scalar and twist dictionary
  field dependent.  The isolated corner blocks also have an unresolved
  relative sign and a shared-corner conformal endpoint term.
  Check: reproduce all surface terms and the corner sign without freezing or
  deleting induced cut contributions.

- [ ] Action: realize the abstract $b_\pm$ ports with one concrete oriented
  closing geometry if a geometric boundary action is needed.
  Context: Stage 1 is already closed as an extended port system; this step
  identifies the port momenta with explicit outer normals/embeddings.
  Check: reproduce (5.3) up to the declared endpoint canonical transformation.

- [ ] Action: begin Stage 3 only in the controlled classical transport lane.
  Context: Stage-2 data now determine
  $D_A(\theta/2)-D_B\sigma^B{}_A$, but the symplectic partner of $\omega_A$
  depends on the generator/corner embedding policy.
  Check: choose that policy, solve Damour, and compare the resulting
  endpoint-map/twist block with Reisenberger; do not introduce quantum data.
