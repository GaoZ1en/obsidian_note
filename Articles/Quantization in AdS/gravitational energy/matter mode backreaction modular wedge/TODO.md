# TODO

- [x] Action: fix the massless complex-scalar action, Hilbert stress tensor,
  mode amplitude, and perturbative parameter.
  Context: the coefficient of $\varepsilon^2$ must not be confused with the
  second derivative at $\varepsilon=0$.
  Check: the Klein--Gordon equation, KG norm, stress conservation, total
  energy, and angular momentum are verified exactly.

- [x] Action: evaluate the scalar modular Hamiltonian in the interval wedge.
  Context: the RT curve and modular vector use the surface-gravity-$2\pi$
  convention.
  Check: obtain an exact function of $a$ and verify its positivity for
  $0<a<\pi/2$.

- [x] Action: solve the stationary axisymmetric linearized Einstein equation
  for the matter-sourced coefficient $k_{\mu\nu}$ with no homogeneous
  Brown--Henneaux graviton added.
  Context: residual gauge freedom and the homogeneous mass/rotation constants
  must be fixed by regularity at $r=0$ and the declared global-AdS reference.
  Check: every component of the sourced Einstein residual vanishes and the
  Brown--Henneaux falloffs hold.

- [x] Action: compute the renormalized Brown--York outer modular charge.
  Context: use the finite-action project convention and global-AdS
  subtraction.
  Check: reproduce the scalar global energy and the boundary interval kernel.

- [x] Action: calculate the RT geodesic-length response directly from the
  matter-sourced metric.
  Context: background extremality removes the interior embedding variation,
  but fixed anchors and cutoff subtraction must still be explicit.
  Check: compare the direct length integral with outer charge minus matter
  modular energy.

- [x] Action: state the finite-action inner-boundary result at its achieved
  claim tier.
  Context: an equality of finite numbers is not by itself a derivation of the
  regulated wall/joint variational principle.
  Check: retain separate `Verified`, `Assumptions`, and `Not verified`
  sections.

- [x] Action: derive the scalar-compatible finite-cutoff inner-wall
  variational problem and its regulator limit.
  Context: fixed Dirichlet data exclude the scalar-amplitude variation, so
  use the transparent two-sided matching polarization and distinguish the
  artificial wall generator from the wall-removal boost corner.
  Check: the matter and gravitational source/flux pairs cancel at finite
  cutoff; the Brown--York/EH/Harlow--Wu wall coefficient and orthogonal joint
  vanish on the selected charge cut; the source--corner transgression,
  collar matter energy, and anchor strips vanish in the regulator limit; the
  fused corner reproduces the direct RT coefficient.

- [x] Action: test the smooth-wedge Level-4 identities on the real scalar
  quadrature.
  Context: the transparent interface construction is general, but the
  current pointwise charge and regulator regressions use a stationary,
  axisymmetric stress tensor.
  Check: retain the static and frequency-$2\omega$ metric components, verify
  every sourced Einstein and local Noether--Stokes component, and reproduce
  the independent outer--matter--RT balance on $t=0$.

- [x] Action: complete the real-quadrature finite-wall and moving-cut test.
  Context: reflection symmetry can still force the joint to vanish on
  $\tau=0$, even though the bulk response is time dependent.
  Check: verify transparent source/flux cancellation for the selected mode,
  then compare $\tau=0$ with a general finite $\tau_s$ cut; isolate the
  nonorthogonal joint and Harlow--Wu endpoint terms and prove the collar,
  endpoint-tail, and fused-corner limits.

- [x] Action: complete the same smooth-wedge and finite-wall checks for one
  nonzero-angular-momentum complex scalar mode.
  Context: the real quadrature tests time dependence but not rotational
  response or $T_{t\phi}$.
  Check: retain the sourced $k_{t\phi}$ sector, fix all homogeneous mass and
  rotation modes, and determine which finite-wall cancellations survive.

- [x] Action: extract the cross-mode covariant finite-wall statement and an
  article-ready narrative.
  Context: three examples can distinguish structural interface/fusion
  mechanisms from accidental zeros, but they do not by themselves prove a
  theorem for arbitrary modes.
  Check: state the exact transparent-interface proposition separately from
  the then-conditional regulator-removal proposition; list every analytic
  and variational assumption; keep Hayward and Harlow--Wu endpoints distinct;
  report the achieved claim tier.  The following task upgrades this step to
  the admissible-class theorem.

- [x] Action: prove uniform wall-removal estimates for a controlled class of
  normalizable scalar solutions.
  Context: the current collar, endpoint-tail, source-transgression and anchor
  estimates are exact mode-by-mode checks.
  Check: specify a norm on the near-horizon and asymptotic data that implies
  an integrable longitudinal majorant, vanishing collar energy, and uniform
  interchange of the outer-cutoff and wall-fusion limits.

- [ ] Action: determine whether the admissible sourced-response map extends
  continuously to the finite-energy scalar Hilbert completion.
  Context: the fixed-embedding theorem is uniform on bounded sets in a
  smooth weighted $C^3\times C^2$ topology; this does not prove existence or
  continuity of $k[\phi]$ for arbitrary finite-energy data.
  Check: choose a gauge-fixed solution operator for the AdS$_3$ linearized
  Einstein constraint, prove an estimate from scalar energy/Sobolev data to
  the Brown--Henneaux response norm, and only then take the completion.

- [ ] Action: decide whether to extend the classical framework by moving the
  wall embedding or by changing matter theory.
  Context: these are different projects.  Moving embeddings require wall
  shape and endpoint canonical data; Maxwell theory requires Gauss-law and
  edge-mode terms.
  Check: choose one minimal benchmark and write a separate claim ladder
  before modifying the present fixed-embedding result.
