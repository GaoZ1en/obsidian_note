# TODO

## Phase 0: convention audit

- [x] Action: extract a single convention table from `../article/` for the bulk action, outward normals, induced orientations, $\theta$, $C_{\Gamma}$, $\mu_{\xi}$, $Q_{\xi}$, and $H_{\xi}$.
  Context: the inner-boundary calculation must use the same formalism rather than an imported Iyer--Wald convention.
  Check: reproduce the existing outer Brown--York matching signs before adding a second boundary component.

- [x] Action: map the project symplectic current and Noether form to 2501.08308v2 using the same physical metric variation.
  Context: the modular-wedge benchmark found $\omega_{\mathrm p}=-\omega_{2501}$.
  Check: record the order of field-space arguments, spacetime orientation, coupling normalization, and the induced sign of $\Upsilon_{\mathrm p}$.

## Phase 1: finite action with a regulated inner boundary

- [x] Action: define the regulated manifold with boundaries $\Sigma_i$, $\Sigma_f$, $\Gamma_{\infty}$, and $\mathcal H_{\epsilon}$ and enumerate every fixed-embedding codimension-two joint used in the benchmarks.
  Context: a stretched horizon is timelike before the $\epsilon\to0$ limit.
  Check: the compact BTZ regulator, all four joins, and its induced-orientation table are complete; the anchored AdS-Rindler double-cutoff boundary and its joints are fixed in `AdS-Rindler anchor regulator.md`. Moving embeddings are a separate extended-phase-space problem below.

- [x] Action: derive the Einstein--Hilbert, outer GHY/counterterm, inner GHY, and fixed-embedding joint variations off shell.
  Context: the inner counterterm content must follow from finiteness and the chosen boundary condition; it is not copied from the AdS counterterm.
  Check: the componentwise Einstein--GHY/Harlow--Wu identity, fully Dirichlet Hayward option, orthogonal compact specialization, and fixed-embedding AdS-Rindler joint are complete. Non-orthogonal moving joints require the unconstructed edge phase space and are not silently included.

- [x] Action: derive $C_{\Gamma_{\infty}}$, $C_{\mathcal H_{\epsilon}}$, and the fixed-embedding joint contribution to the integrated pre-symplectic potential.
  Context: setting a boundary term to zero by gauge choice is allowed only after the general variation is known.
  Check: $C_a$, the Brown--York canonical-pair flux, and the compact radial-gauge/collar specialization are derived. In that sector $C_\epsilon$, the flux, and the orthogonal joint vanish exactly at finite cutoff. The moving embedding pair is now derived separately in H40.

- [x] Action: select the inner Brown--York canonical-pair boundary condition for the compact BTZ benchmark.
  Context: the selected two-sector route uses a fixed-boost source-retaining family for area variation and a collar-Dirichlet Brown--Henneaux family for canonical-energy fluctuations.
  Check: `compact BTZ benchmark.md` exhibits a nontrivial perturbation with $\zeta=h=k=0$ at the inner wall; `btz_collar_mode_check.wl` passes $8/8$ tests.

- [x] Action: determine the precise criterion under which the compact two-sector choice extends to a general horizon perturbative phase space.
  Context: the collar family proves existence of a useful restricted sector, not completeness; a general source-retaining boundary condition may carry nonzero flux or edge data.
  Check: `regulated horizon phase space theorem.md` gives H0--H6. The Brown--York canonical pair must restrict to a Lagrangian polarization; radial gauge alone is insufficient. Slice independence and regulator removal follow only conditionally, while existence of the common topology and polarization is recorded as an extension rather than assumed.

- [x] Action: derive the stationary fixed-boost BTZ regulator-removal identity separating wall source work from the horizon corner.
  Context: the retained wall source plus the fused-corner variation is $-2\pi s\cosh\epsilon(\cosh\epsilon-1)/\kappa_{\mathrm p}^2$ and vanishes as $O(\epsilon^2)$; the oppositely oriented Noether cut tends to $sA_\gamma/\kappa_{\mathrm p}^2$.
  Check: `btz_brick_wall_check.wl` passes $16/16$ tests; the comparison functional is not mislabeled as a simultaneous finite-wall joint.

- [x] Action: derive the general conditional perturbative regulator-removal identity separating the artificial wall generator from the horizon corner.
  Context: the xAct background check gives $H^{\rm BY}_{\xi_{\rm mod},\epsilon}\to0$ but $-\int_{C_\epsilon}^{\rm out}Q_{\xi_{\rm mod}}\to A/(4G)$.
  Check: H36 proves the implication under H0--H6; H30 realizes it in the selected collar sector, H21 treats the source-retaining parameter family, and H16 identifies the oppositely oriented Noether corner. Universal phase-space existence is not part of the proposition.

## Phase 2: charge and area identities

- [x] Action: derive $X_{\xi}\cdot\delta S=\alpha_{\xi}|_{\Sigma_f}-\alpha_{\xi}|_{\Sigma_i}$ with both outer and inner boundaries present.
  Context: this is an off-shell symmetry statement.
  Check: `expanded formulas.md` (4.6)--(4.9) sums the inherited descent componentwise, defines $H_{\xi}=X_{\xi}\cdot\theta-\alpha_{\xi}$, and obtains $\delta H_\xi=\Omega(\delta g,\mathcal L_\xi g)$ before any field equation or horizon gauge. The precise condition is that $\xi$ preserves each fixed wall and its declared boundary data.

- [x] Action: obtain the fixed-embedding outer-minus-inner charge identity, including constraints, flux, and joint terms.
  Context: $\partial\Sigma=B_{\infty}\cup\gamma_{\epsilon}$ has opposite induced orientations on its two components.
  Check: equations (11.10)--(11.11) of `expanded formulas.md` give the exact conditional law; the compact collar sector has zero inner flux and joint corrections. The moving branch is explicitly outside this restricted theorem.

- [x] Action: prove the first- and second-order bifurcation-surface Noether-charge/area relations in extremal or Hollands--Wald gauge on the restricted phase space.
  Context: $\xi|_{\gamma}=0$ but $\nabla\xi|_{\gamma}$ is fixed by the surface gravity.
  Check: the fixed-embedding Hollands--Wald part is verified by `bifurcation_noether_area_check.wl`: the first-order difference vanishes and the second-order difference is $\tfrac{s}{2}\int_\gamma\sqrt q\,h_{kk}h_{ll}$. `ads3_extremal_area_displacement_check.wl` verifies the local AdS$_3$ Jacobi split, $V\mapsto V-v_\perp$, and the explicit anchor endpoint term. H36 supplies the finite-action regulator implication under H0--H6.

- [x] Action: derive the arbitrary-gauge completion with a general, non-Killing gauge vector $v$ on the restricted phase space.
  Context: the Killing-simplified $S_{\xi}$ formula cannot be reused with $\xi\mapsto v$.
  Check: equations (11.13)--(11.18) recover $E_{\mathrm{can,p}}^{\mathrm{GI}}=E_{\mathrm{can,p}}+\int_{\gamma}\Upsilon_{\mathrm p}=E_{\mathrm{can,p}}[h^{\rm ext}]$. `finite_action_gauge_cocycle_check.wl` passes $4/4$ exact tests; H1--H5 control the wall/joint limit. No Killing simplification is applied to $v$.

## Phase 3: compact BTZ benchmark

- [x] Action: choose a non-rotating BTZ background, its horizon Killing field, a compact bifurcation circle, and a smooth collar perturbative family.
  Context: the compact horizon removes the AdS-Rindler anchor complication; the collar cutoff removes the apparent quotient-horizon singularity of the asymptotic representative.
  Check: `btz_brick_wall_check.wl` verifies the background/Killing/surface-gravity data; `btz_collar_mode_check.wl` verifies collar regularity and nontrivial Brown--Henneaux asymptotics.

- [x] Action: evaluate the linear and second-order Einstein residuals and finite quadratic current for the collar mode.
  Context: $\mathcal E^{(1)}[h]=0$ and $\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=0$ follow from diffeomorphism covariance, but the project still needs a component/current check in its perturbative normalization.
  Check: `btz_collar_einstein_check.wl` passes $8/8$ tests at two transition-region points and the dedicated xAct residual verifier returns `allZero`; `btz_outer_charge_check.wl` and `btz_canonical_energy_check.wl` compare the outer charge with the integrated finite current without discarding surface terms. The residual result is a sampled high-precision component check, not a general symbolic theorem.

- [x] Action: evaluate the renormalized outer Brown--York charge of the $m=1$ collar mode through second order.
  Context: the inherited coefficientwise matching makes this the independent outer target for the CPS current calculation.
  Check: `btz_outer_charge_check.wl` passes $14/14$ tests and gives $\mathcal Q_1=0$, $H_{\xi_{\rm mod},T}^{[0]}=\pi^2(r_+^2+1)/(2r_+)$.

- [x] Action: split the verified outer coefficient into the $k$-linear charge and pure-$h$ quadratic canonical-energy/current contribution.
  Context: the exact EH cut gives $\int S_{\xi,h}^{[0]}=0$, $\int S_\xi[k]=\pi^2(r_+^2+1)/(2r_+)$, while the separate $k$-sector tensor has zero surface charge. The second-order equation converts the difference to the pure-$h$ bulk current.
  Check: `btz_outer_charge_check.wl` verifies the EH/Brown--York match and vanishing descent; $E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]=\pi^2(r_+^2+1)/r_+$ after the Taylor-coefficient/second-derivative factor of two.

- [x] Action: directly integrate the Lee--Wald canonical-energy current for the collar mode.
  Context: the form-valued potential requires the determinant terms $\tfrac12h_1\vartheta[h_2]-\tfrac12h_2\vartheta[h_1]$; omitting them fails cutoff independence.
  Check: `btz_canonical_energy_check.wl` passes $8/8$ tests, including the exact primitive residual and the numerical values at $r_+=2,3$ and $\rho_0=\log2/2,\log2$.

- [x] Action: prove analytic cutoff independence of the collar canonical energy.
  Context: the angle-integrated current is an exact radial derivative of $A\chi^2+B\chi\chi'+C(\chi')^2$ with $A=\pi^2(r_+^2+1)/r_+$.
  Check: `btz_canonical_energy_check.wl` verifies the primitive residual is zero; constant inner/outer jets give the endpoint value $\pi^2(r_+^2+1)/r_+$.

- [x] Action: calculate the regulated inner GHY/joint contribution and take the brick-wall limit for the selected compact fluctuation sector.
  Context: the result must be obtained from the finite action, not appended as an improvement.
  Check: `btz_inner_wall_joint_check.wl` passes $15/15$ tests and the dedicated xAct verifier returns `allZero` for $15$ scalar residuals. At every finite $\epsilon<\rho_0$, the collar family has zero inner GHY variation, $C_\epsilon$, Brown--York source, flux, and orthogonal joint; its perturbative area and inner Noether coefficients both vanish. The stationary background area normalization is separately the oppositely oriented bulk Noether corner, while the complete artificial-wall Brown--York generator tends to zero.

## Phase 4: AdS-Rindler interval and anchors

- [x] Action: combine the existing proper completion $v_L$ with radial cutoff $r=R$, brick-wall cutoff $\chi=\epsilon$, and explicit anchor joints at the level of the regulated geometry and limit prescription.
  Context: the RT geodesic meets the asymptotic boundary.
  Check: `AdS-Rindler anchor regulator.md` and `ads_rindler_regulator_geometry_check.wl` derive the exact intersections and select $\lim_{L\to\infty}\lim_{\epsilon\to0}\lim_{R\to\infty}$, equivalently $R/L\to\infty$ before the large-$L$ limit. The standalone script passes $16/16$ tests.

- [x] Action: compute outer, inner, joint, and anchor-strip contributions for the selected fixed-embedding mode, retaining induced orientations explicitly.
  Context: the old pole was produced by an incorrect radial sign and is withdrawn.
  Check: the corrected raw density is $-(1-x^2)^2(1+x^2)/8$ and has zero endpoint tails. The fixed joint passes $12/12$, area endpoint $25/25$, exact pullback $12/12$, unsimplified inner current $10/10$, and outer wall $11/11$. The corrected scaled outer-strip coefficient is $2\sinh^2\epsilon$ and the unscaled strip vanishes in the declared order.

- [x] Action: evaluate the complete finite-wall inner EH/GHY/Brown--York tail split for the selected exact-diffeomorphism mode.
  Context: reassess the endpoint limit after enforcing the vector-level Brown--Henneaux phase.
  Check: the exact pullback gives zero endpoint components and the independent unsimplified calculation extrapolates both $q_{\rm BY}^{(2)}$ and $q_{\rm EH}^{(2)}$ to zero within $1.03\times10^{-11}$; the old nonzero split is withdrawn.

- [x] Action: derive the selected-mode finite-wall tail formulas analytically.
  Context: the corrected selected mode has a strictly faster endpoint decay.
  Check: `ads_rindler_inner_wall_endpoint_pullback_check.wl` proves all six independent $h$ endpoint components and the tested quadratic relation vanish exactly; the old algebra script is no longer used as evidence for the corrected mode.

- [x] Action: organize the constraint/current map beyond the selected mode as a conditional finite-action implication.
  Context: the corrected exact mode has no fused-horizon discontinuity and still does not prove an arbitrary-perturbation phase-space theorem.
  Check: H0--H6 state the common-topology, differentiability, convergence, polarization, regularity, transgression, vacuum-dynamics, and gauge-representative hypotheses. Under them H36 gives the charge identity; their existence is not derived. Outside them the raw fused-horizon tensor is not licensed as the wall limit.

## Phase 5: draft closure

- [x] Action: complete `draft.md`, `expanded formulas.md`, and `formula verification ledger.md`.
  Context: definitions, quoted identities, derived identities, and numerical evidence must remain distinguishable.
  Check: the fixed-embedding conditional theorem is H36, the exact gauge cocycle is H37, and the Appendix B.3 source boundary is H38. All 16 standalone Wolfram/xAct regressions pass 182/182 tests.

- [x] Action: audit the final claim tier.
  Context: a classical finite-action identity is not a construction of a crossed-product algebra or a nonperturbative JLMS theorem.
  Check: `draft.md` Secs. 10--11 and `regulated horizon phase space theorem.md` Sec. 8 separately state the exact conditional implication, verified BTZ and AdS-Rindler examples, phase-space existence obstruction, and excluded quantum/crossed-product claims.

- [x] Action: assemble the completed classical result as a publication-style
  manuscript under `article/`.
  Context: the manuscript should use the same finite-action CPS conventions
  and Markdown-to-TeX template as `../article/`, while excluding audit
  history and superseded edge interpretations.
  Check: six main sections, four technical appendices, abstract, conclusion,
  references, Pandoc mapping, and LaTeX assembly are complete; the 28-page PDF
  compiles without undefined references or layout warnings.  Only authorship,
  affiliations, and acknowledgments remain intentionally blank.

## Post-project extensions

- [x] Construct and test the trace-Neumann Brown--York polarization on compact
  BTZ.
  Context: fixed-$t$ area variation and two chiral modes obey
  $\delta\Pi^{ij}=0$, but fixed boost is the relevant corner calibration.
  Check: `btz_horizon_neumann_polarization_check.wl` passes $19/19$ exact
  tests. It finds a $\rho^{-2}$ invariant divergence for the raw chiral modes
  and the fixed-boost residual $\pi s\zeta/\kappa_{\rm p}^2$ for
  $w_\zeta=\zeta\Pi^{ij}\gamma_{ij}/2$.

- [x] Derive the wall-plus-corner polarization that absorbs the fixed-boost
  trace-Legendre residual without changing the physical area coefficient.
  Context: a wall Legendre transform alone is inconsistent with the verified
  fused-corner transgression for every $\zeta\ne0$.
  Check: `moving embedding and edge phase space.md` derives
  $\Omega_J=\sigma_J\int\delta\eta\wedge\delta\sqrt q/\kappa_{\rm p}^2$.
  The trace wall generator tends to $\zeta I_{\rm fuse}/2$, and the matched
  boundary-polarization representative is
  $(1-\zeta/2)I_{\rm fuse}$. The bulk Noether/area corner remains
  $I_{\rm fuse}$; if the boundary representative is also held fixed, H39 is
  a no-go result for $\zeta\ne0$.

- [x] Construct a nonzero Kruskal-smooth horizon completion of at least two
  Brown--Henneaux modes, or prove the corresponding regularity obstruction.
  Context: the raw left $m=1$ and right $m=2$ representatives preserve
  Neumann momentum but have invariant $\rho^{-2}$ divergences; the old collar
  completion is smooth but trivial at the wall.
  Check: `Hollands-Wald boundary value problem.md` glues the asymptotic left
  $m=1$ and right $m=2$ generators to nonzero tangential Kruskal-smooth
  representatives. Their finite invariant norms, linear extremality, and HW
  normal-plane components are checked exactly; a horizon-constant bump leaves
  the outer Brown--Henneaux data unchanged.

- [x] Vary the complete pulled-back moving action and construct the total
  embedding momentum, including bulk shape, GHY, counterterm, constraint,
  Harlow--Wu endpoint, and Hayward-joint terms.
  Check: the direct first variation gives the constraint-completed
  $P_j^{\rm tot}$ and $P_\perp^{\rm tot}$, while the endpoint completion is
  the inherited Harlow--Wu form plus the Hayward area--boost polarization.
  `moving_btz_total_embedding_momentum_check.wl` passes $15/15$ exact tests
  comparing both finite-wall cutoff derivatives of the complete BTZ action
  with $P_\perp^{\rm tot}\chi_\perp$. Generic normal-translation
  integrability is a separate task below.
- [x] Construct a nontrivial moving polarization and prove Hamiltonian
  integrability for its normal surface translations.
  Check: `smooth BTZ moving polarization family.md` constructs an exact
  finite-amplitude family generated by the nonzero compact HW completions.
  The mixed functional
  $w_{{\rm sm},\epsilon}=\Pi^{ij}\gamma_{ij}/2+sR/(2\kappa_{\rm p}^2)$
  makes the complete finite-wall source and flux vanish. Uniform normal
  translation has the path-independent generator
  $H_\perp^{\rm edge}=0$. The physical edge phase space keeps $(r_+,s)$
  fixed; $r_+$ variation remains a separate area calibration. The standalone
  script passes $20/20$ exact tests, including time-symmetric bulk symplectic
  zero, Harlow--Wu endpoint, and degree-one/zero-integral edge identities.
## Beyond the proved classical full-quotient construction

- [x] Audit whether the H51 finite-rank edge one-form follows uniquely from
  the moving embedding.
  Context: the complete pullback fixes the ambient extended symplectic form,
  but a nonzero pullback $F$ on a selected tangent block still requires a
  polarization.
  Check: `intrinsic moving boundary and edge realization.md` proves the
  radial-homotopy/cotangent realization, reproduces
  $\Theta_{\rm edge}=-F_{IJ}a^I\delta a^J/2$ for constant $F$, and records the
  exact nonuniqueness. `moving_edge_radial_homotopy_check.wl` supplies the
  algebraic regression.
- [x] Determine the geometric status of the H51 edge chart for arbitrary
  nonuniform wall and joint displacement.
  Context: existence of a cotangent realization does not identify it with
  $(X,\eta,\sqrt q)$ or prove a universal polarization.
  Check: the complete moving-action variation gives the general normal and
  tangential embedding momenta, Harlow--Wu descent, and the Hayward
  $(\sqrt q,\eta/\kappa_{\rm p}^2)$ pair. Its finite-regulator pullback is not
  the optional H51 coefficient graph; their difference is the non-Killing
  transition form. H51/H59 prove that difference vanishes on the continuum
  endpoint-zero domain. Hence the auxiliary graph is a nonunique selected
  polarization, not a missing universal gravitational pair, and no extra
  canonical pair is used in H53/H61. H56 supplies the exact non-orthogonal
  component check.
- [ ] Construct a combined time-dependent nonuniform BTZ wall, tilted Cauchy
  slice, and Harlow--Wu/Hayward endpoint polarization.
  Context: H55 solves the stationary wavy wall and H56 solves an independent
  non-orthogonal joint, but their direct sum does not establish closure when
  wall shape and tilt vary together in time.  This is a nonlinear post-
  theorem classification problem, not a hypothesis used by the linear
  full-quotient H61--H62 result.
  Check: vary the complete pulled-back action for
  $\rho=E(\lambda,\phi)$ and a compatible moving endpoint, retain the
  $-D_i(\Pi^{ij}\chi_j)$ descent, and prove or falsify integrated closure.
- [x] Extend the compact moving polarization from uniform radial translation
  to stationary nonuniform wall shapes and an infinite-dimensional smooth
  mode space.
  Context: the finite-dimensional family proves existence, but a local
  $\chi_\perp(\phi)$ introduces tangential gradients and endpoint data not
  tested by the uniform calculation.
  Check: H55 allows arbitrary smooth positive periodic $R(\phi)$ and
  $E(\phi)$.  The exact identity
  $\mathcal B_X=-\delta w_{\rm wave}+\partial_\phi(p_E\delta E)$ proves
  integrated closure on the compact wall and recovers the uniform functional.
  `btz_nonuniform_moving_polarization_check.wl` verifies all component and
  primitive formulas.  Time-dependent walls and non-orthogonal joints are the
  remaining extension, not part of this checked stationary item.
- [x] Extend the selected AdS-Rindler extremal-gauge solution to a declared
  weighted projected mode space.
  Context: compact BTZ is solved for every smooth periodic source. On the
  noncompact geodesic, $J=-D_u^2+1$ has a unique decaying inverse and the
  selected normal solution is proper at both anchors. Smooth extremal gauge is
  sufficient for the canonical-energy result. H52 constructs the continuous
  normal-trace map $\mathcal H_A^s\to\mathcal V_A^{s-2}$, proves projected
  proper falloff, supplies a smooth global extension on every finite spectral
  block, and constructs the field-dependent projector/cocycle on the diagonal
  family. A single fixed-width smooth Gaussian-null collar for the completed
  infinite sum remains a stronger beyond-tier extension.
- [x] Construct a weighted $t=0$ fixed-anchor Brown--Henneaux mode space.
  Check: for $s>1/2$, endpoint evaluation is continuous on $H^s(S^1)$ and its
  joint kernel is closed of codimension two. The explicit bounded projection
  $P_A$ gives an adapted basis. The old full-tower no-go is withdrawn because
  $\cos3\phi-\cos5\phi$ fixes both endpoints.
- [x] Factor the reconstructed endpoint functional and construct its
  endpoint cotangent realization.
  Check: with $q_\pm=f(\pm a)$ and the oriented second-jet traces $p_\pm$,
  $\mathcal A[f]=-(q_+p_++q_-p_-)$. The symmetrized work of
  $\Theta_{\rm anch}=\sum P_\alpha\delta Q_\alpha$ cancels that endpoint
  finite-part functional on $H^s$, $s>5/2$. The PSL audit subsequently shows
  that this is an auxiliary realization of a representative-dependent
  analytic finite part, not a physical endpoint canonical pair.
- [x] Construct the fixed-region unprojected extremal/HW normal solution.
  Check: the growing endpoint trace is Jacobi homogeneous. Adding
  $H^{(0)}=-(q_+e^u+q_-e^{-u})/\sqrt2$ and
  $H^{(1)}=(-q_+e^u+q_-e^{-u})/\sqrt2$ to $-\zeta_\perp$ cancels both
  endpoint resonances and leaves an $O(e^{-|u|})$ two-derivative trace.
- [x] Determine whether the asymptotic moving-anchor momentum follows from
  the original complete finite action and state the maximal unprojected
  identity.
  Context: the earlier fibration interpretation overlooked global
  reducibility. Frequency-zero/one Brown--Henneaux vectors are exact AdS
  Killing fields, so they can change $q_\pm$ without changing $h$.
  Check: $P_{\rm PSL}$ fixes both endpoint values using only those Killing
  directions; the residual endpoint-fixing modular vector is the third
  $\mathfrak{sl}(2,\mathbb R)$ direction. Hence
  $H^s/\mathfrak{sl}(2,\mathbb R)\simeq
  \ker(q_+,q_-)/\operatorname{span}\{w_A\}$. There is no physical anchor
  momentum in the linear metric theorem and no negative-Virasoro frame is
  needed. Charged $m\ge2$ modes remain physical.
- [x] Resolve the raw unprojected transition pole at finite outer cutoff.
  Context: the direct $(\cos3\phi,\cos4\phi)$ generator has
  $51L^4/(16\sqrt2d)$ in an unfixed reducibility representative.
  Check: replace each generator by $P_{\rm PSL}f$. This leaves the metric
  perturbation unchanged, removes the endpoint Wronskian and its first
  derivative, and puts the full quotient in the endpoint-zero H51/H59 class.
  Exact point-jet tests cover both endpoints and all real sector pairings.
  The old rank-21 values remain analytic finite parts of the unfixed
  representative, not an anomaly requiring outer-frame renormalization.
- [x] Prove the mode-uniform projected transition-kernel estimate needed for
  an explicit schedule.
  Check: the exact point-jet factorization has frequency degree at most six
  and yields
  $\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1}
  \leq C(1+m+n)^6/L^2$. Hence
  $\|B_{M,L}-B_M^{\rm local}\|\leq C_sM^6/L^2$, and $L=M^{10}$ gives
  $M^{-14}$. `ads_rindler_transition_uniform_majorant_check.wl` verifies the
  scalar inequalities, exact integrals, and revised schedule arithmetic.
  The subsequently completed H49--H50 kernels also close the raw far-wall
  and far-joint sectors, and H59a closes the finite-cylinder outer Brown--York
  source curvature exactly and gives the outer Cauchy-corner rate
$C(1+m+n)^6R^{-6}$. H59b closes the complete finite-wall compensated source
with $C(1+m+n)^7L^{-2}$, and H59c closes the compensated joint mismatch with
$C(1+m+n)^6L^2/R^2$. The compensated article corner has the corrected
two-scale bound $C(1+m+n)^6(L^2/R^2+L^4/R^2)$. H60 closes the distinct HW
collar pullback/continuity question by exact sectorwise degeneracy.
- [x] Complete the direct two-frequency projected proper-transition kernel
  theorem.
  Context: `ads_rindler_transition_point_jet_check.wl` works in ambient
  compactified coordinates $(q,s)$, takes every metric/vector derivative
  before restricting to $t=0,s=1$, and keeps both frequencies symbolic. For
  all real cosine/cosine, cosine/sine, and sine/sine pairings, the numerator
  valuations are $(3,2,4,6)$ in the four positive powers of $L^2$, every term
  also contains the centre factor $1-q$, and the remaining frequency degree
  is at most six. The resulting ordinary density is integrable at both
  anchors and at the RT centre, and its transition difference converges
  strongly to zero in $L^1$ with rate $L^{-2}$. Thus there is neither a
  projected endpoint distribution nor a bulk remainder. The proof is direct
  and does not infer this from the unprojected rank-21 finite parts.
- [x] Prove the complete mode-uniform far-wall kernel estimate.
  Check: `ads_rindler_wall_closed_point_jet_check.wl` factorizes
  $\zeta_m=W^mU_m$, uses the rational global coordinate $s=r^2$, differentiates
  before wall restriction, and passes $10/10$ exact tests. The same-chirality
  wall kernel is zero; every mixed coefficient has total frequency degree at
  most seven, begins at $q^5$, its $q^5$ coefficient is $O(y)$ for
  $y=\tanh(\epsilon/2)$, and its exact $y=0$ restriction begins at $q^6$.
  Hence
  $|\mathcal F^{\rm wall}_{mn}|\leq
  C(1+m+n)^7(yq^5+q^6)$ and the integrated tail is
  $C(1+m+n)^7(yL^{-5}+L^{-6})$. This corrects the old finite-jet-only
  $O(\epsilon q^5)$ statement.
- [x] Prove the complete mode-uniform raw far-joint kernel estimate.
  Check: `ads_rindler_joint_closed_point_jet_check.wl` uses $d(r^2)$ for the
  outer normal, removes every angle square root with the exact normal-plane
  Gram identity, and passes $9/9$ exact tests. The same-chirality kernel is
  zero and the four mixed odd--odd coefficients give
  $|\mathcal F^J_{mn}|\leq
  C(1+m+n)^6\tanh(\epsilon/2)q^5$. This corrects the old untested
  $O(\epsilon^2)$ prose estimate. At $r=R$ the raw block is
  $C_sM^6\tanh(\epsilon/2)R^{-5}$.
  `ads_rindler_compensated_joint_outer_mismatch_check.wl` subsequently proves
  the proper-profile $C_sM^6L^2/R^2$ mismatch and passes $10/10$ tests.
- [x] Compute the complete finite-cylinder outer Brown--York source
  curvature on the symbolic-frequency tower.
  Check: `ads_rindler_outer_brown_york_kernel_check.wl` passes $10/10$ exact
  tests. It independently calibrates the closed $m=2$ vector, metric,
  extrinsic-curvature, and densitized-momentum jets against a full-metric
  linearization. Both canonical variables are nonzero, but every same- and
  mixed-chirality coefficient of
  $\delta_m\Pi_R^{ab}h_{n,ab}-\delta_n\Pi_R^{ab}h_{m,ab}$ vanishes exactly at
  finite $R$. The same remains true for the compensated source. The same script
  derives the article Cauchy-corner one-form directly and proves that its
  curvature, including the shrinking anchor strips, is uniformly
  $O((1+m+n)^6R^{-6})$. The compensated-minus-raw corner is
  $O((1+m+n)^6[L^2/R^2+L^4/R^2])$; the $L^4/R^2$ term corrects the former
  single-scale target.
- [x] Determine the optimal ordinary Sobolev threshold of the complete
  canonical-energy form.
  Check: the separated point-anchor momentum contains $f''(\pm a)$ and still
  has the sharp trace threshold $s>5/2$. After the PSL/HW section change, the
  combined Bañados form is continuous on endpoint-fixed $H^2$ and has no
  continuous extension to any $H^s$, $s<2$, by an interior high-frequency
  packet. It is not coercive in $H^2$, as an exact anchor-layer family keeps
  nonzero $H^2$ seminorm while its modular energy tends to zero.
- [x] Complete the regulator-independent infinite-mode HW collar theorem.
  Check: the repaired jet norm includes $j_{ab}$ and the fixed
  polynomial/bump extension is bounded into the independent coefficient
  space $H^{s-5}(\mathbb R_u;H^2(B_{\rho_0};N\gamma_A))$. The exact identity
  $\Delta_Xg(P_{\rm HW}h,-V[h])=h$ reduces every complete pulled-back
  bulk/wall/joint/anchor/edge sector to the fixed section and proves off-cut
  independence. `weak_hw_collar_pullback_check.wl` passes $7/7$ tests.
- [x] Prove algebraic time covariance of the anchor and HW sections.
  Check: $P_{A,t}=U_{-t}P_AU_t$ and the endpoint traces, PSL representative,
  and HW section transform by conjugation.  The old ``anchor work'' is not
  used as a physical Hamiltonian.
- [x] Prove time translation is a symplectomorphism between completed fibres.
  Check: the complete relative-action stratum inventory and bound (6.7) in
  `explicit regulators weak collar and time covariance.md` tends to zero on
  the proved schedule, uniformly under the unit-modulus Brown--Henneaux time
  phases. Together with the conjugation algebra it gives (6.8).
- [x] Evaluate the complete finite-action canonical-energy form, prove
  regulator convergence, positivity, and its optimal ordinary Sobolev
  threshold. The physical descendant normalization and six
  corrected local diagonal values through $m=5$ are exact. Direct symmetric
  bilinearization now reproduces the four-mode matrix, and exact symbolic
  $++$ and $+-$ complex two-frequency kernels are available. The physical
  diagonal $+-$ density has an $O(1)$ anchor profile in an $O(m^{-1})$ layer
  with zero leading integrated coefficient. Combining all projected local
  diagonal pieces gives an exact eight-periodic coefficient multiplying
  $m^{-1}$. The exact homogeneous endpoint factorization also proves the
  nonoptimal but uniform theorem for the separated local chart
  $|\Upsilon^{\rm local}_{mn}|\leq C(m+n)^2$ and continuity on
  $\mathcal H_A^s$ for $s>5/2$. The exact scale comparison shows that a
  truncated tower $N\leq M$ must use $M/L(M)^2\to0$; fixed $L$ and
  $M\to\infty$ do not commute. Corrected complex modes $m=2,3,4,5$ and four
  projected real low modes have zero finite-wall linear endpoint tensors at
  fixed $\chi>0$. A three-point Brown--York flux probe gives stable nonzero
  pairings (maximum $43.2355$ versus $1.70\times10^{-8}$ step error), so
  $P_A$ does not define a wall Lagrangian polarization. Because
  $\delta(\mathcal B+\delta w)=\delta\mathcal B$, a scalar $w_\epsilon$
  cannot repair this same tangent block. The compensated moving lift
  $\chi=-p_L\zeta$ has now been tested: at fixed core points its four-mode
  flux scales toward $L^{-4}$ and its $R=L^2$ anchor samples fall faster,
  with $6/6$ tests and $5.17\times10^{-11}$ step error. The complete
  fused-horizon switching layer instead has an unprojected $O(1)$ endpoint
  Wronskian; $P_A$ cancels it and leaves
  $C(1+m+n)^6L^{-2}$. Exact symbolic-frequency jets prove the
  first possible wall and joint coefficients. Both raw sectors have now been
  upgraded to complete uniform bounds:
  $C(1+m+n)^7(\tanh(\epsilon/2)e^{-5|u|}+e^{-6|u|})$ for the wall and
  $C(1+m+n)^6\tanh(\epsilon/2)e^{-5|u|}$ for the joint. The complete
  finite-wall compensated source is $C(1+m+n)^7L^{-2}$, the compensated
  joint mismatch is $C(1+m+n)^6L^2/R^2$, and the compensated article corner
  is $C(1+m+n)^6(L^2/R^2+L^4/R^2)$. The old independent anchor-shift entry is
  removed as a double count. An initial third-jet reconstruction was full rank only in
  that restricted ansatz. A proof audit raises the conservative derivative
  order to five because the
  Brown--Henneaux lift already contains two boundary derivatives. Seven
  additional cross finite parts complete the resulting 21-coefficient
  reconstruction: the unique solution sets all fourth- and fifth-jet
  coefficients to zero. These are not ordinary unprojected integrals. The
  finite-part reconstruction and auxiliary finite-rank edge realization are
  exact within the ansatz. The complete action now shows that geometric
  embedding/cross terms cancel only the fully compensated gauge core; the
  proper taper leaves the transition form. The projected ordinary kernel and
  its $M^6/L^2$ block limit and the complete fixed-section diagonal theorem
  are now proved. H60 proves that the second-jet HW coefficient collar is
  bounded and that its complete pulled-back sector forms reduce exactly to
  the fixed section, so there is no separate collar operator estimate. Do not
  assume an auxiliary edge pair in the
  action-derived projected theorem. The
  normalized $n=0,1$ Jacobi block is only one geometric block, not this full
  form. The missing global control is supplied independently by the classical
  Bañados charge-minus-geodesic Hessian:
  $E_{\rm can,p}=(8G)^{-1}\int[(F')^2+(F'')^2]ds$. This proves nonnegativity,
  exact $\mathfrak{sl}(2,\mathbb R)$ kernel, strict positivity on the metric
  quotient, $H^2$ continuity, failure below $H^2$, and $H^2$
  noncoercivity. At $H^2$ only the combined closed form is asserted; the raw
  $E+\int\Upsilon$ decomposition remains on $H^s$, $s>5/2$.
- [x] Prove the moving analogues H0$_X$--H6$_X$ for a nontrivial common family
  of regulated phase spaces.
  Check: the compact nonzero exact BTZ family with fixed $(r_+,s)$ and bounded
  $0<c\leq F'\leq C$ has a regulator-independent finite-dimensional topology,
  twice smooth physical functionals, exact vacuum dynamics, uniform Kruskal
  radial gauge, orthogonal endpoint data, the explicit mixed polarization,
  matched transgression, and an already extremal representative.
- [x] Prove the original fixed-embedding H0--H6 for a nontrivial common family,
  or identify which hypothesis fails.
  Check: H47 identifies the failure: the projected fixed-wall block has
  nonzero Brown--York canonical-pair flux, so fixed-wall H1 fails and no
  scalar $\delta w$ can repair it. The moving compensated lift, finite-rank
  edge one-form, and adapted diagonal regulator maps give a selected
  replacement family and, at the H53 stage, a conditional classical identity.
  H59--H61 later discharge the regulator/section hypotheses on the declared
  linear Brown--Henneaux quotient. A universal fixed-wall polarization for
  arbitrary smooth nonlinear horizon data is not claimed.
- [ ] Relate the classical finite-action identity to an operator-algebraic
  JLMS or crossed-product statement only after the corresponding algebras and
  reconstruction map have been constructed independently.
