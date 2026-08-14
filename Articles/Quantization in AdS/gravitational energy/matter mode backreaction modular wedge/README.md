# Matter-Mode Backreaction in a Modular Wedge

## Project question

This project asks whether a normalizable matter mode in global AdS$_3$, with
no independent first-order graviton,

$$
h_{\mu\nu}=0,
$$

gives a controlled finite-action outer--inner charge identity after its
classical metric response is included.  The first benchmark uses a massless
complex scalar on vacuum global AdS$_3$ and one boundary interval.

The project distinguishes three statements:

1. the fixed-background matter Hamiltonian
   $\int_{\Sigma_A}d\Sigma_\mu\,\xi_{A\nu}T^{\mu\nu}$;
2. the matter-sourced metric equation and its Brown--York charge;
3. the finite-wall variational problem and the identification of its
   wall-removal boost corner, rather than the artificial timelike-wall
   generator, with the RT-length response.

The third statement is not assumed from the first two.

## Convention lock

We inherit the gravitational-energy conventions

$$
\kappa_{\mathrm p}^{2}=8\pi G,
\qquad
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\phi^2,
$$

and use the modular Killing vector normalized to surface gravity $2\pi$.
The scalar action, stress tensor, mode normalization, perturbative amplitude,
boundary conditions, and orientation are fixed explicitly in the benchmark
note before any charge comparison.

## Claim ladder

- Level 1: exact fixed-background scalar mode and matter modular energy;
- Level 2: exact stationary axisymmetric matter-sourced metric response and
  Brown--York outer charge;
- Level 3: direct RT-length response in the backreacted metric;
- Level 4: regulated finite-action outer--inner identity for the selected
  interval and mode;
- Level 5: robustness under time-dependent and rotating scalar responses,
  followed by a covariant transparent-interface proposition and a
  conditional wall-fusion statement with explicit regulator hypotheses;
- Level 6: a fixed-embedding theorem for a smooth weighted class of
  normalizable massless scalars, with uniform collar/anchor estimates,
  commuting regulator limits and an explicit general-cut endpoint
  functional.

No level is a proof of quantum JLMS, a matter-loop calculation, a graviton
construction, or a general inner-boundary phase-space theorem.

## Files

- `scalar single mode benchmark.md`: definitions, derivation, verified
  formulas, assumptions, and unverified boundary;
- `scalar_single_mode_backreaction.wl`: smooth-wedge, local-current, and
  oriented surface-charge checks;
- `scalar_inner_wall_finite_action.wl`: AdS--Rindler pullback, transparent
  interface, GHY/Harlow--Wu/joint, and regulator-limit checks;
- `scalar real quadrature benchmark.md`: time-dependent real-scalar
  smooth-wedge extension and its exact claim boundary;
- `scalar_real_quadrature_backreaction.wl`: static plus frequency-$2\omega$
  sourced response, charge balance, and local-current checks;
- `scalar_real_quadrature_inner_wall.wl`: transparent matching,
  Brown--York/EH/descent, fused-corner, collar, and general-cut joint checks;
- `scalar angular mode benchmark.md`: nonzero-angular-momentum scalar,
  rotating metric response, charge balance, and finite-wall conclusions;
- `scalar_angular_mode_backreaction.wl`: KG, $T_{t\phi}$, rotating Einstein,
  Brown--York, RT, and local Noether--Stokes checks;
- `scalar_angular_mode_inner_wall.wl`: off-diagonal transparent matching,
  fused-wall, collar, and rotation-odd endpoint checks;
- `finite wall synthesis.md`: covariant propositions, cross-mode claim
  boundary, and manuscript spine;
- `admissible scalar finite wall theorem.md`: admissible norm, smooth
  outer--matter--area theorem, generic Kruskal/anchor estimates, and the
  separate Hayward and Harlow--Wu endpoint functionals;
- `admissible_scalar_finite_wall_structure.wl`: 18 mode-independent checks of
  the generic wall jet, transgression, collar, endpoint and anchor algebra;
- `TODO.md`: executable next calculations and completion criteria;
- `Drafts.md`: provisional routes and unresolved choices.

## Current phase

Levels 1--4 are complete for the selected massless complex scalar mode under
the transparent two-sided wall matching polarization.  The two exact
xAct/xCoba regressions pass 67 checks.  In addition to the normalized mode,
sourced metric, Brown--York outer charge, matter modular energy, and direct RT
response, they verify the local Noether--Stokes identity and both oriented
surface densities.  At finite AdS--Rindler cutoff the matching conditions
cancel matter and gravitational source/flux terms.  The complete artificial
wall generator has zero selected-mode coefficient; removing the wall instead
leaves a fused boost corner whose regulator limit is exactly the RT response.
The real-quadrature and nonzero-angular-momentum Level-5 benchmarks are also
complete.  Their four regressions add 123 exact checks.  Time dependence
preserves the sourced Einstein, local Noether--Stokes and
outer--matter--area identities, while producing a nonzero endpoint term on
a general modular-time cut.  Rotation preserves the same chain with a
genuine $k_{t\phi}$ response and off-diagonal wall data; on the symmetric cut
its endpoint density is locally nonzero but integrates to zero.  Across all
three modes, transparent matching, wall-generator cancellation in the fused
limit, and the separate area corner survive, whereas separate
Brown--York/EH/descent and joint zeros do not.  The three mode packages
contain 190 exact checks.  A further 18 generic checks verify the
mode-independent Rindler/Kruskal and anchor algebra, for a total of 208.  The
previous conditional fusion proposition has thereby been upgraded to a
theorem on the declared smooth weighted admissible class.  Within that class
the collar and source-transgression errors are $O(\chi_0^2)$, anchor and
longitudinal-cutoff errors are $O(R^{-2})$, and the two limits commute.  A
general-cut Hayward or Harlow--Wu endpoint functional is retained in the
finite-wall decomposition but does not modify the smooth
outer--matter--area identity.  Single-sided reflecting walls, extension to
the full finite-energy Hilbert completion, moving embeddings, and quantum
interpretations remain open.
