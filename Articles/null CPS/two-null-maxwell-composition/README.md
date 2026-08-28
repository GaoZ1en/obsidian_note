# Two-Null Maxwell Composition

## Direct verdict

This is an independent action-first project for source-free $U(1)$ Maxwell
theory on two intersecting null hypersurfaces.  The first-round finite-harmonic
kill test has the following precise outcome.

1. The sheet-constraint map

   $$
   (r_A,p_A;E_0,b^0_{AB})\longleftrightarrow
   (r_A,p_A;E_\pm,b^\pm_{AB})
   $$

   is proved on finite segments and on the rapid-angular smooth core.  It is
   only a sheet theorem.
2. With fixed outer exact dressed-connection anchors, connection compatibility
   determines the relative corner frame from $r^E,p^E$.  At every finite
   harmonic and finite generator-basis cutoff, the compatible split-frame space modulo
   sheet-proper and diagonal gauge has the same dimension as the intrinsic
   field-strength data, and the finite presymplectic kernel is exactly

   $$
   \mathfrak g_{+,\mathrm{proper}}\oplus
   \mathfrak g_{-,\mathrm{proper}}\oplus
   \mathfrak g_{\mathrm{diag}}.
   $$
3. If the outer longitudinal anchors are allowed to vary independently, the
   claimed equivalence with field-strength data is false.  Diagonal reduction
   leaves charged frame/anchor data; in the minimal corner block it leaves
   $\delta E_0\wedge\delta\lambda_{\mathrm{rel}}$, and the forgetful map to
   $\mathcal X_F$ is not injective.
4. In the fixed-anchor policy, the Maxwell characteristic dictionary commutes
   exactly with the matched (E/B) master dictionary for every
   $\ell\geq1$.  The shared $E_0,B_0$ coefficients are common master values,
   not extra oscillators.
5. The matched-$H^1$ Goursat inverse lifts continuously to the anchored Maxwell
   quotient on the rapid-angular core, and the quotient is Hausdorff with the
   exact proper-plus-diagonal kernel.
6. Lee--Wald equivalence, complete two-cell Maxwell composition, and
   three-cell associativity are proved on that core.  The interface trace keeps
   $i^*F$, $i^*(*F)$, endpoints, and connection/frame transitions.
7. The finite-cross Hamiltonian kill test fails for $\partial_t$ and
   $\partial_z$: freely varying physical outer data produce nonzero endpoint
   symplectic anomalies.  $SO(3)$ and cut-gauge tests pass, but T-H as a whole
   is `false` and T-I remains gated.

Thus Phases I--III close only under the fixed outer longitudinal-anchor policy.
The project is not manuscript-ready because the finite-cross translation
Hamiltonians require a changed endpoint policy.  The unanchored extended-frame
version remains a false comparison, not an implicit repair.

## Model and sector

The first version fixes

$$
D=[0,U]_u\times[0,V]_v\times S^2_R,
\qquad
ds^2=-2\,du\,dv+R^2d\Omega_2^2,
$$

$$
N_+=\{u=0\},\qquad N_-=\{v=0\},\qquad
S_0=N_+\cap N_-.
$$

The main sector is a trivial $U(1)$ bundle with

$$
Q_E=0,\qquad n=\frac1{2\pi}\int_{S^2}F=0,
\qquad \ell\geq1.
$$

The $\ell=0$ variable flux-frame extension is optional and cannot block the
radiative theorem.  No nontrivial bundle, harmonic one-form, non-Abelian, or
gravitational theorem is inferred from the $S^2$ result.

## Characteristic data

The complete gauge-invariant sheet-constraint datum is

$$
\boxed{\mathcal X_F=(r_A,p_A;E_0,b^0_{AB})},
$$

$$
r_A=F_{vA}|_{N_+},\qquad p_A=F_{uA}|_{N_-},\qquad
E_0=F_{uv}|_{S_0},\qquad b^0_{AB}=F_{AB}|_{S_0}.
$$

The pair $(r,p)$ alone is not complete.  The shared corner data are
characteristic integration data, not additional radiative oscillators.

In the split potential polarization the project retains
$\chi_\pm,\bar a^0_\pm$, and
$\lambda_{\mathrm{rel}}=\chi_--\chi_+$, with

$$
\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0,
\qquad
d_S\bar a_+^0=d_S\bar a_-^0=b^0.
$$

Electric matching is the moment map for the diagonal cut gauge action.
Magnetic matching and connection/transition compatibility are fiber-product
conditions.  On $S^2$, curvature matching becomes algebraically redundant
after both sheet-curvature equations and full connection matching are imposed;
it is still not the electric moment map.

## Endpoint policy for the main first-round theorem

- Incoming orientations are fixed in `calculations/01-oriented-null-segments-and-endpoints.md`.
- Outer charged variables are not discarded.  For the main intrinsic theorem,
  the exact part of each outer dressed connection is anchored to zero; this is
  a longitudinal representative choice and does not constrain its curvature.
- Sheet-proper gauge parameters vanish at $S_0$ and at the corresponding
  outer cut.
- The diagonal cut parameter has a common value at $S_0$ and is extended to
  vanish at the outer cuts.
- An unanchored endpoint-inclusive extended phase space is a different object.
  It is not equivalent to $\mathcal X_F$.

## Function-space layers

1. **Finite harmonic and generator-basis cutoff.** Exact rank, kernel, and
   compatibility regressions use $K$ Darboux/on-shell pairs per master;
   separate finite jets test the characteristic dictionary.
2. **Rapid-angular matched-$H^1$ Fréchet core.** The first full classical
   target, with a dense smooth-generator domain for Killing actions; angular
   losses are controlled by neighboring seminorms.
3. **Shifted Sobolev/graph completion.** Conditional until closedness,
   Hausdorff quotient, and reconstruction estimates are proved without defining
   the target topology by the reconstruction map.

## Current theorem status

- T-A sheet constraint: `proved`.
- T-B anchored finite-cutoff corner reduction: `proved`.
- T-B unanchored equivalence to intrinsic field-strength data: `false`.
- T-C Maxwell/master commuting diagram: `proved`.
- T-D rapid-core Maxwell Goursat lift: `proved`.
- T-E Lee--Wald symplectomorphism: `proved`.
- T-F two-cell full-Maxwell composition: `proved`.
- T-G three-cell full-Maxwell associativity: `proved`.
- T-H finite-cross Hamiltonian test algebra: `false` because the translation
  subtests fail; $SO(3)$ and cut gauge subtests are `proved`.
- T-I Peierls/Weyl composition: `conditional`, blocked by the declared T-H
  gate.

Only the status words `proved / checked symbolically / conditional /
conjectural / false` are used in the authoritative ledger.

## File map

- `roadmap.md`: phase gates and stop rules.
- `TODO.md`: executable next work.
- `calculations/00-scope-spaces-and-theorem-ledger.md`: conventions, spaces,
  gauge groups, and theorem targets.
- `calculations/01-oriented-null-segments-and-endpoints.md`: orientations and
  endpoint ledger.
- `calculations/02-extended-sheet-prephase-spaces.md`: raw and dressed sheet
  variables.
- `calculations/03-corner-compatibility-and-diagonal-reduction.md`: first-round
  kill test and repaired theorem.
- `calculations/04-maxwell-master-commuting-diagram.md`: exact (E/B) data
  dictionary and commuting square.
- `calculations/05`--`08`: rapid Goursat/Lee--Wald and full-Maxwell composition
  proofs.
- `calculations/09`: Hamiltonian kill-test result and endpoint repair branches.
- `calculations/10`--`11`: gated B1 and optional sectors.
- `verification/CLAIM_LEDGER.md`: authoritative claim ledger.
- `scripts/`: independent finite-cutoff and symbolic regressions.
- `literature/literature-comparison.md`: preliminary precedent/novelty matrix.
- `closure-audit.md`: current closure and manuscript-readiness verdict.

## Read-only lemma bank

The sibling projects `null-characteristic-cps` and
`static-patch-characteristic-maxwell` are read-only sources.  No file from
either project is copied, migrated, rewritten, or assigned a stronger status
here.  Imported lemmas are cited by exact source file and are reconnected to
the present gauge-theoretic diagram rather than treated as new proofs.
