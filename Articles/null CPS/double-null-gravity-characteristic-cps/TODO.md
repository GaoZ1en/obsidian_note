# Immediate Research Tasks

**Stage 4 theorem boundary.**  Stages 0--3 remain frozen at their established
classical algebraic scope.  The smooth solution-space phase is closed for a
local germ and long-by-thin collar, but the finite-Sobolev Banach chart and
the prescribed full rectangle are conditional on one active PDE proposition
$\mathbf P_{\rm rect}^{s,r}$.  Do not quantize.

- [x] Action: define the framed characteristic and vacuum solution spaces.
  Context: retain optical functions, affine null frame, generator labels,
  corner embedding, and endpoint markings; quotient only
  $\operatorname{Diff}_0$ that is trivial on this framing.
  Check: calculation 07, Section 1.

- [x] Action: prove the project-to-rigorous-CIVP core dictionary.
  Context: calculation 06 derives
  $\gamma_0=\Omega_0\bar h$, $\chi^+=a_+B^+$,
  $\underline\chi^-=a_-B^-$, and
  $\zeta=-\widehat\omega$ in the symmetric normalized frame.
  Check: analytic inverse/equivariance theorem and V42--V44.

- [x] Action: audit the exact domains of Rendall, Luk,
  Mars--Sánchez-Pérez, Cabet--Chruściel--Tagne Wafo, Hilditch et al., and
  Reisenberger.
  Context: germ, full-sheet collar, and prescribed two-long-direction
  rectangle are kept distinct.
  Check: calculations 06--07 and
  `verification/DEVELOPMENT_MAP_AUDIT.md`.

- [x] Action: construct the framed germ/collar development map and inverse
  restriction after the dictionary.
  Context: this is an actual vacuum solution-space statement, modulo only
  proper bulk diffeomorphisms.
  Check: calculation 07, Section 3.

- [x] Action: lift the selected characteristic form to the framed linearized
  local/collar solution spaces.
  Context:
  $L_{\rm loc}^{*}\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}$ follows from
  linearized characteristic well-posedness plus the Stage-2/3 pullback.
  A literal Banach-neighborhood pullback by $E_{\rm loc}^{\rm fr}$ remains
  part of the $C^1$ PDE item below.
  Check: calculation 07, Theorem 7.1.

- [x] Action: state output conservation and solution-space composition at
  the scope actually supported.
  Context: both apply to developments already known to exist; a uniform
  nearby-data evolution map on the full rectangle remains conditional.
  Check: calculation 07, Sections 9--10.

- [ ] Active PDE action:
  prove $\mathbf P_{\rm rect}^{s,r}$.
  Context: establish uniform finite-Sobolev cell estimates, output
  trace/restart control, background-relative stability, double-null margin
  persistence, and a quadratic remainder estimate giving Banach $C^1$
  dependence on the same $\mathcal R_{U,V}$, plus openness and $C^1$ inverse
  restriction in the independently declared trace-regular solution topology.
  Check: close every clause (6.1)--(6.5) in calculation 07.  Cabet et al.
  Theorems 3.13 and 3.15 do not already do this.

- [ ] Optional dictionary completion: write and estimate every remaining MSP
  $Y_\pm$ constraint transport if MSP DND are to replace Luk/Cabet data as
  the primary Banach chart.
  Context: MSP Theorem 7.15 assumes completed DND satisfying the abstract
  constraints; it does not construct this free-data completion.
  Check: produce a smooth locally invertible completion map with a stated
  Sobolev loss, or retain the current Luk-core route.

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
  Check: the only active framed fixed-rectangle PDE target is
  $\mathbf P_{\rm rect}^{s,r}$; the independent boundary target is
  $\mathbf P_{\rm red}$.
