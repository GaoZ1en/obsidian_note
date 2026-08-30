# Immediate Research Tasks

- [x] Action: retain $S_+$ and $S_-$ as area/boost ports and compute the
  endpoint-complete Stage-1 rank/kernel.
  Context: the abstract signed port variables $b_\pm$ keep the closing normal
  data without choosing a particular outer wall.
  Check: the extended matrix has rank six; the fixed-area pullback has rank two
  with only the unused $b_\pm$ source directions in its kernel.

- [x] Action: repair Stage 1.1 with the Damour constraint.
  Context: the shared datum is $\widehat\omega_A$; it determines distinct
  branch-adapted initial values $\omega_A^{(+)}$ and $\omega_A^{(-)}$.
  Fixed $\delta\ell^A=0$ still removes the spin-1 potential.
  Check: V8 verifies the exact shear-free transport and V16 verifies the
  two-branch sum/difference dictionary.

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

- [x] Action: close the Stage-2.1 initial corner and two-branch normal
  connection in one HF representative.
  Context: $h=-m$ follows directly from the normal block and gives
  $+C_G\delta m_0\wedge\delta\Omega_0$; the former negative sign mixed
  incompatible cut/joint splits.
  Check: V15--V16 verify the determinant, corner curl, exact polarization
  change, and $\widehat\omega_A$ dictionary.

- [x] Action: complete the field-dependent affine-to-area transformation on
  the common fixed-endpoint-map sector.
  Context: fixed affine length imposes
  $\int_1^{V_s}\Delta\mathcal B_s\,dv
  +\mathcal B_s(V_s)\delta V_s=0$; fixed-$v$ and fixed
  $x=v/V_s$ variations differ.  Calculation 04 gives the explicit generator
  $Y$ and area-port shift.  The outer conformal metric may vary.
  Check: equations (3.1)--(3.13) prove the one-form identity; V23 derives the
  two curls from the affine one-form for a moving-endpoint nontrivial profile.

- [x] Action: clean the Stage-2.2 reference, pullback, and variable-counting
  ambiguities.
  Context: all Jacobian and area logarithms now use fixed dimensionless
  ratios; outer-cut fields carry explicit $s_s^*$ pullbacks; the area
  Jacobian is $\mathcal B$ and never $B_{AB}$; $\widehat\omega_A$ is derived
  rather than counted alongside both endpoint momenta.
  Check: calculation 04 equations (3.14)--(3.17) and V26 prove reference-scale
  independence of the exact-plus-port combination.

- [x] Action: prove independent-data spin-$0+2$ **bulk** reduction.
  Context: construct $\mathcal P_1\times\mathcal P_2$ before matching
  $(\Omega,\bar q_{AB},\theta,\sigma_{AB})$, equivalently
  $(q_{AB},B_{AB})$, and keep the geometric port diagonal separate.
  Check: calculation 04 defines $\iota$ and $\rho$; V24 builds the independent
  eight-parameter product form and the rank-four matching Jacobian; V25 tests
  three independent cells.  V21 is retained only as subdivision consistency.

- [ ] Action: realize the abstract $b_\pm$ ports with one concrete oriented
  closing geometry if a geometric boundary action is needed.
  Context: the null reduction forces no independent outer shape port.  A
  concrete closing action must derive its area/normal port and determine
  whether that wall polarization also adds a traceless shape pair.
  Check: reproduce calculation 04 equation (3.11) for the area port and
  derive any additional wall term directly from the selected action.

- [x] Action: complete Stage 3.0 in the controlled classical transport lane.
  Context: Stage-2 data now determine
  $D_A(\theta/2)-D_B\sigma^B{}_A$.  Calculation 05 derives the HF
  endpoint-map potential, solves Damour, proves the diagonal moment map of the
  remaining corner block after the Damour bulk restriction, quotients
  opposite boosts, and checks rank and abstract interface composition.
  Check: analytic equations (2.4)--(8.3) and V27--V32; no quantum data were
  introduced.

- [ ] Action: combine the Stage-2 bulk and Stage-3 corner blocks in a full
  functional gauge audit.
  Context: the local corner quotient leaves two relative spin-1 pairs, but a
  pointwise rank calculation does not prove nondegeneracy of the completed
  spin-$0+1+2$ profile space.
  Check: characterize every bulk-plus-corner diffeomorphism kernel and prove
  the quotient on a declared function space.

- [ ] Action: derive one concrete oriented closing-wall action and its full
  area, normal, and spin-1 interface ports.
  Context: the abstract endpoint cotangent block composes, but this does not
  identify the port supplied by a physical closing wall.
  Check: reproduce the area-port and endpoint-map incidence terms from that
  action and rerun two-cell composition with its actual boundary data.
