# Draft Routes and Open Choices

## Recommended first route

Use a massless complex scalar with one stationary, axisymmetric global-AdS$_3$
normal mode.  Its stress tensor is time independent, so the metric response
reduces to radial ordinary differential equations.  Set the independent
first-order gravitational perturbation to zero and exclude every homogeneous
Brown--Henneaux boundary-graviton solution from the sourced response.

This route should establish the global charge and RT-length balance before a
brick-wall finite-action interpretation is attempted.

This route, including its finite-wall interpretation, is now complete for the
selected mode.  The exact result is recorded in
`scalar single mode benchmark.md`.  The next fork is a genuinely new mode or
matter theory rather than another reinterpretation of the same three finite
numbers.

The recommended manuscript route is now recorded in `finite wall
synthesis.md`: lead with the admissible-class theorem, prove transparent
insertion and the smooth outer--matter--area identity covariantly, derive the
generic Kruskal and anchor estimates, and only then use the stationary,
real-time-dependent, and rotating modes as tests that expose accidental
componentwise and endpoint zeros.

## Perturbative bookkeeping

Keep the scalar amplitude $\varepsilon$ separate from the gravitational
coupling.  The intended form is

$$
\Phi=\varepsilon\phi+O(\varepsilon^3),
\qquad
g_{\mu\nu}=G_{\mu\nu}
+\kappa_{\mathrm p}^2\varepsilon^2 k_{\mu\nu}
+O(\varepsilon^4).
$$

Thus $[\varepsilon^2]$ and
$\tfrac12\left.d^2/d\varepsilon^2\right|_{0}$ denote the same Taylor
coefficient.  Canonical energy defined by the full second derivative carries
the corresponding factor of two.

## Gauge and homogeneous-solution choice

The stationary axisymmetric response can contain radial gauge freedom and a
homogeneous shift of the asymptotic mass.  The physical solution should be
selected by all of the following together:

1. regularity at the global-AdS centre;
2. Brown--Henneaux falloff;
3. no independent vacuum boundary graviton;
4. outer energy fixed by the scalar stress-tensor integral.

The last condition is a charge normalization, not a substitute for checking
the sourced Einstein equation.

## Inner-boundary fork

Two levels must remain separate:

1. a direct RT-length calculation in the smooth backreacted geometry;
2. a finite-cutoff derivation with an inner timelike wall, matter boundary
   conditions, GHY/Harlow--Wu descent, and endpoint joints.

Agreement of the direct length with the integrated constraint supports the
selected solution.  It does not automatically complete the second level.

For the selected mode the second level is completed with a transparent
two-sided interface, not a single-sided reflecting wall.  Matching the
induced fields and taking opposite momenta defines a Lagrangian
correspondence, so matter and gravitational source/flux terms cancel at every
finite cutoff.  The complete timelike-wall generator has zero
$[\varepsilon^2]$ coefficient.  The RT term instead comes from the fused
boost corner left by wall removal; its source transgression and the omitted
collar matter energy vanish as $O(\chi_0^2)$.

This choice should remain explicit in later comparisons.  It does not prove
single-wedge factorization or construct a local reflecting condition whose
phase space contains the modular orbit of the global mode.

## Later matter theories

- The real scalar route is complete at the selected-mode claim tier.  Its
  static plus $2\omega$ response preserves the local Noether--Stokes and
  outer--matter--area identities.  The transparent wall and fused corner
  survive, but the finite-wall EH/descent pieces cancel nontrivially and a
  general modular-time cut has a finite nonzero endpoint coefficient.  This
  separates the structural mechanism from the stationary and
  reflection-symmetric zeros of the original complex mode.
- The nonzero-angular-momentum complex route is complete for the $(n,m)=(0,1)$
  mode.  It retains $T_{t\phi}$, $k_{t\phi}$, off-diagonal interface data and
  a rotation-odd symmetric-cut joint density.  The exact outer--matter--area
  and fused-corner mechanisms survive.
- The uniform theorem for the smooth weighted massless-scalar class is now
  proved in `admissible scalar finite wall theorem.md`.  The remaining
  extension is functional analytic: existence and continuity of the sourced
  response map on the full finite-energy Hilbert completion.
- A massive or alternative-quantization scalar requires a new positivity and
  boundary-action audit.
- Maxwell theory introduces Gauss-law and entangling-cut edge terms and should
  follow, rather than precede, the scalar benchmark.
