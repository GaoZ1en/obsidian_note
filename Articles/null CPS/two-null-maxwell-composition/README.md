# Two-Null Maxwell Composition

## Direct verdict

The project now has two distinct theorem layers.

1. **Layer L (finite cross)** treats a finite null cross as a local Goursat
   chart and an open-region composition object. L-A--L-G are `proved` on the
   fixed-endpoint-section rapid-angular matched-$H^1$ core. On a fixed finite
   cross with varying physical outer data, translations do not preserve the
   outer cuts and are not internal Hamiltonian symmetries. L-H-trans is a
   `proved` moving-boundary obstruction, not evidence that the local Goursat
   chart is incomplete.
2. **Layer G (complete future cross)** uses

   $$
   X_\infty=H_L^+\cup_{S_0}H_R^+,
   \qquad
   H_L^+=\{v=0,u\geq0\},\quad
   H_R^+=\{u=0,v\geq0\}.
   $$

   This is the global characteristic phase space. G-A, G-C--G-G are `proved`
   for the gauge-invariant finite-energy radiative Maxwell space in the
   trivial-bundle $Q_E=n=0$, $\ell\geq1$ sector. G-B is `proved` for the
   fixed-asymptotic-frame Schwartz potential core and `conditional` for an
   energy-completed potential quotient.

The main characteristic datum in both layers is

$$
\boxed{\mathcal X_F=(r_A,p_A;E_0,b^0_{AB})},
$$

not only $(r,p)$. The shared $E_0,b^0$ are the common electric and magnetic
master corner values and are not extra oscillators.

## Geometry and conventions

On

$$
M=\mathbb R_t\times\mathbb R_z\times S^2_R,
\qquad
u=\frac{t-z}{\sqrt2},\quad v=\frac{t+z}{\sqrt2},
$$

the global future surface is

$$
X_\infty=H_L^+\cup_{S_0}H_R^+,
\quad S_0=\{u=v=0\}.
$$

Finite exhaustions are

$$
X_T=\{H_L^+:0\leq u\leq\sqrt2T\}
\cup\{H_R^+:0\leq v\leq\sqrt2T\}.
$$

Legacy symbols $N_\pm$ remain only in finite calculations where changing them
would obscure earlier orientation formulae. Global statements use
$H_L^+,H_R^+$ exclusively.

The action and Lee--Wald convention are

$$
S[A]=-\frac12\int F\wedge *F,
\qquad
\theta=-\delta A\wedge *F,
$$

$$
\iota_{\delta_X}\Omega=-\delta H_X.
$$

The radiative theorem fixes a trivial $U(1)$ bundle and

$$
Q_E=0,\qquad n=\frac1{2\pi}\int_{S^2}F=0,\qquad \ell\geq1.
$$

Zero modes, nontrivial bundles, and charged asymptotic frames are separate
sectors.

## Layer L — finite-cross composition

The finite cross is a local solution/restriction space for a triangle or
rectangle. Its exact dressed-connection outer coefficient is fixed as an
**endpoint section / boundary-polarization choice**. It is not ordinary bulk
gauge fixing. If the two outer anchors vary independently, the charged
relative-frame pair survives; in split-frame variables its derived corner
term is $\delta E_0\wedge\delta\lambda_{\rm rel}$. That unanchored theory is a
different phase space.

- L-A sheet constraints: `proved`.
- L-B anchored corner reduction: `proved`; unanchored equivalence: `false`.
- L-C full-Maxwell/master commuting dictionary: `proved`.
- L-D local Maxwell Goursat lift: `proved` on the rapid core.
- L-E finite Lee--Wald symplectomorphism: `proved`.
- L-F full-interface two-cell composition: `proved`.
- L-G three-cell associativity: `proved`.
- L-H-trans fixed-cut translations: `proved` as an obstruction statement.
  $SO(3)$ and proper/diagonal cut gauge remain Hamiltonian.
- L-Weyl algebraic composition: `proved`; it needs the symplectic map, not a
  translation Hamiltonian on a finite open region.

The complete interface trace retains $i^*F$, $i^*(*F)$, endpoints, and
connection/frame transitions. Equality in the matched-$H^1$ graph excludes
both electric surface current and magnetic distributional defect.

## Layer G — complete-future-cross representation

For each polarization and harmonic, $\mu_\ell^2=\lambda_\ell>0$ and the bulk
Cauchy data lie in

$$
H^1(\mathbb R_z)\oplus L^2(\mathbb R_z),
\qquad
\sum_{P,\ell,m}\int_{\mathbb R}\omega_{k\ell}
|a^P_{k\ell m}|^2dk<\infty.
$$

The intrinsic characteristic target is not arbitrary
$H^1(\mathbb R_+)\oplus H^1(\mathbb R_+)$. It is the graph-closed fixed-point
space of the explicit two-sheet analysis--synthesis projector, translated to
full Maxwell data by the literal dictionary in calculation 13. Thus the
target topology is not defined by declaring restriction unitary.

The global chain is:

- G-A complete-future restriction/reconstruction: `proved` on the
  gauge-invariant energy space.
- G-B asymptotic frame theorem: `proved` on the Schwartz potential core;
  energy-completed potential quotient `conditional`.
- G-C global Lee--Wald symplectomorphism: `proved` by finite exhaustion and
  massive tail estimates.
- G-D time/space translations, $SO(3)$ and proper gauge: `proved` on their
  declared dense generator domains, with no corner central term.
- G-E1 Peierls equality and G-E2 Poisson composition/exhaustion: `proved` for
  compact gauge-invariant field-strength smearings and classical energy data.
- G-F-Weyl algebraic representation: `proved`; G-F-dyn: `proved` on the G-D
  automorphism domains. No tensor factorization or implementability claim.
- G-G finite exhaustion/local-to-global compatibility: `proved` on the
  globally extendable fixed-point subspace. Finite restriction is not
  surjective onto every local matched pair.

## File map

- `calculations/00`--`10`: Layer-L conventions, reduction, local composition,
  finite-cut obstruction, Peierls and algebraic Weyl result.
- `calculations/11-zero-modes-topology-and-optional-brst.md`: separated
  non-radiative/topological sectors; none blocks the main chain.
- `calculations/12-complete-future-horizon-geometry-and-spaces.md`: global
  geometry and intrinsic energy target.
- `calculations/13-global-maxwell-characteristic-restriction.md`: full-Maxwell
  dictionary, restriction/reconstruction, and asymptotic-frame theorem.
- `calculations/14-global-lee-wald-and-tail-limit.md`: Maxwell tail lift,
  ambiguity audit, and G-C.
- `calculations/15-global-hamiltonians.md`: global generator domains,
  Hamiltonians, signs, and algebra.
- `calculations/16-global-peierls-weyl-and-exhaustion.md`: G-E--G-G.
- `verification/CLAIM_LEDGER.md`: authoritative local/global status table.
- `closure-audit.md`: Layer-L closure.
- `global-closure-audit.md`: global closure and manuscript-readiness verdict.
- `scripts/`: exact finite regressions and global spectral-packet regressions.

## Read-only lemma bank and excluded work

The sibling projects `null-characteristic-cps` and
`static-patch-characteristic-maxwell` are read-only lemma banks. Their
analytic master results are reconnected here through the full-Maxwell
dictionary; no sibling file is modified and no mode regression is presented
as a Maxwell continuum proof.

This round does not modify the GitHub repository index or Research Radar and
does not enter curved backgrounds, Yang--Mills theory, or gravity.
