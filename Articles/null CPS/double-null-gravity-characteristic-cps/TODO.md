# Immediate Research Tasks

**Stage 4.1 theorem boundary.** Stages 0--3 remain classical and unchanged.
Full project-data completion and framed germ/collar bijectivity are not
closed. The first reduced-system flux estimate is proved; the full one-cell
and prescribed-rectangle theorems remain conditional. Do not quantize.

- [x] Replace fixed scale factors by $m\mapsto a_\pm[m]$ and restrict the
  core equivalence to its fixed framing slice; remove the unsupported
  lower-to-higher Sobolev inverse claim. Check: 06.4--6.
- [x] Keep the original marked null sheets in the direct Cabet gauge;
  do not assert a ragged-endpoint Luk theorem. Check: 06.4.1.
- [x] Use $\nu_0,h_0,D^0$ globally and write the affine endpoint potential
  through $\theta=0$. Check: 06.1, 06.9.
- [x] Separate intrinsic HF cuts from auxiliary abstract ports and restrict
  the solution identity to existing variations / constructed images.
  Check: 07.7; extended equality remains under $P_{\rm red}$.
- [x] Construct $C_{\rm pre},DC_{\rm pre}$ and prove their finite-scale
  Volterra/Moser bounds. Check: 06.(8.1)--(8.10), $3\le k\le s-3$.
- [x] Prove fixed-metric smooth framing uniqueness on a regular optical
  neighborhood. Check: 07.3.1; no finite-Sobolev gauge estimate inferred.
- [ ] Initial-data action: close $C_{\rm mix}$, the mixed connection
  transport 06.(8.11), eliminating the curvature source with the actual
  Gauss/normal-curvature constraints and matching corner data. Then finish
  curvature/copy transports, $C_{\rm SH}$, inverse and $DC_{\rm SH}$.
- [x] Fix the actual source principal splitting, including Weyl copies,
  and derive angular commutators and flux difference bounds for already
  existing solutions. Check: 08.(1.3)--(4.3), assumptions (3.1).
- [ ] **Next single PDE lemma: $R_\perp^k$.** Derive and bound the coupled
  transverse derivatives in 08.(6.2), especially mixed sources (6.3), from
  completed incoming norms; prove (6.4) with a stated finite loss.
- [ ] After that, iterate outgoing generator derivatives/corner jets to
  the full source restart class; prove uniform data-dependent existence
  width, linearized Einstein/copy constraint propagation and the quadratic
  remainder bound. Only then mark $P_{\rm cell}^k$ proved.
- [ ] Gated: finite-grid restart/gauge bookkeeping and $s(r,I,J)$ for
  $P_{\rm rect}^{s,r}$. No numerical loss is guessed. Target openness and
  inverse regularity remain separate proof obligations.
- [ ] Full framed germ/collar bijection and tangent-space surjectivity:
  promote only after the completion, PDE and gauge hypotheses are proved.

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

- [ ] Deferred reopening condition: realize the abstract $b_\pm$ ports with
  one concrete oriented closing geometry if a manuscript needs a geometric
  boundary action.
  Context: the null reduction forces no independent outer shape port.  A
  concrete closing action must derive its area/normal port and determine
  whether that wall polarization also adds a traceless shape pair.
  Check: reproduce calculation 04 equation (3.11) for the area port and
  derive any additional wall term directly from the selected action.

- [x] Action: close Stage 3.1 in the controlled classical transport lane.
  Context: calculation 05 now types
  $\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$,
  separates any target density $\widehat\tau_s$, proves general fixed
  invertible $f,g$ cotangent composition, and includes the HF cut-term and
  compensator-interpolation lemmas.
  Check: analytic equations (1.1)--(9.1), V27--V41, and the independent xAct
  residuals; no quantum data were introduced.

- [x] Action: combine the Stage-2 bulk and Stage-3 corner blocks in the
  constrained reduced characteristic moment-map audit.
  Context: after Raychaudhuri reconstruction and the Damour restriction,
  calculation 05 proves
  $\iota_{X_\xi}\Omega_{\rm total}=\boldsymbol\delta H_\xi$ including the
  retained corner and matched abstract ports, and verifies equivariance for
  closed cuts or tangent/no-flux fields.
  Check: equations (5.7)--(5.10), finite truncations V39--V40, and explicit
  boundary assumptions.  This is not an unreduced off-shell theorem.

- [ ] Action: prove functional nondegeneracy only if the project is reopened.
  Context: the local corner quotient leaves two relative
  endpoint-map/embedding/port pairs, but a pointwise rank calculation does not
  prove nondegeneracy of the completed spin-$0+1+2$ profile space.
  Check: characterize every bulk-plus-corner kernel on a declared function
  space and include the physical wall ports.

- [ ] Deferred reopening condition: derive one concrete oriented closing-wall
  action and its full area, normal, and spin-1 interface ports.
  Context: the abstract endpoint cotangent block composes, but this does not
  identify the port supplied by a physical closing wall.
  Check: reproduce the area-port and endpoint-map incidence terms from that
  action and rerun two-cell composition with its actual boundary data.

- [x] Action: consolidate Stages 0--3 and the current Stage-4 theorem boundary.
  Context: `verification/FINAL_CLASSICAL_THEOREM_LEDGER.md` is the
  authoritative theorem/gauge/open-item ledger, and
  `verification/DEVELOPMENT_MAP_AUDIT.md` separates cited, in-project,
  conditional, and open development claims.
  Check: Stage 4.1 explicitly separates $C_{\rm SH}$, $R_\perp^k$,
  $P_{\rm cell}^k$, the gated $P_{\rm rect}^{s,r}$, and the independent
  boundary target $P_{\rm red}$.
