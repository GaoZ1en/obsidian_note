# Authoritative Claim Ledger

Allowed status vocabulary:

`proved / checked symbolically / conditional / conjectural / false`

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| A0 | The unfixed Maxwell action gives $\theta=-\delta A\wedge *F$ and the displayed Lee--Wald current | proved | fixed background and orientation | direct variation; calculations 01 and 06 | a genuinely dynamical boundary action defines another theory |
| A1 | $(r,p;E_0,b^0)$ is continuously bijective to completed sheet fields satisfying the four transport constraints | proved | finite segments; finite harmonic, rapid matched-$H^1$, or smooth subcore | explicit transport integrals and inverse corner evaluation | not a bulk existence theorem |
| A2 | $(r,p)$ alone is complete characteristic data | false | even in fixed $Q_E=n=0$ radiative local sectors | shared master corner value; read-only lemma bank | none |
| A3 | The rapid-core transport map is continuous with neighboring angular seminorms | proved | seminorms (6.3) and one angular derivative loss | estimates (6.4) | no same-order Sobolev theorem |
| B0 | Diagonal cut gauge has moment map $E_+^0-E_-^0$ | proved | incoming orientation, variable flux | direct contraction (3.2); Wolfram/Python regression | outward-normal convention changes the displayed matching sign |
| B1 | Magnetic and full connection matching are the same moment map as electric matching | false | scalar $U(1)$ diagonal action | compatibility matrix (2.1) | dual-potential extensions are outside scope |
| B2 | The full one-harmonic corner matrix has rank five | proved | $S^2$, $\ell\geq1$, both sheet-curvature equations retained | explicit row dependence (2.3) | on other cuts harmonic data change the matrix |
| B3 | On the electric zero level, the minimal corner kernel is exactly diagonal gauge | proved | one nonzero harmonic, variable electric flux | matrix (3.1)--(3.3) | proper sheet kernels belong to the full sheet block |
| B4 | With fixed outer exact dressed-connection anchors, $\lambda_{\mathrm{rel}}$ is determined by $r^E,p^E$ | proved | equation (4.1), $\ell\geq1$ | direct generator integration and connection compatibility | variable anchors give a different space |
| B5 | The anchored kernel is $\mathfrak g_{+,\mathrm{proper}}\oplus\mathfrak g_{-,\mathrm{proper}}\oplus\mathfrak g_{\mathrm{diag}}$ | proved | anchored rapid matched-$H^1$ core | finite block decomposition plus the continuous slice of calculation 05 | stronger shifted completion not included |
| B6 | The anchored finite-cutoff reduced dimension equals both intrinsic field-strength and matched-master dimensions | proved | $1\leq\ell\leq L$, $K$ Darboux/on-shell pairs per polarization | equation (4.7); exact Python block checks for $L=1,\ldots,4$, $K=1,\ldots,3$; explicit on-shell rank at $K=3$ | finite rank is not continuum closedness |
| B7 | The anchored split-frame-to-field-strength map is canonical | proved | generator dressing, fixed anchors, anchored rapid matched-$H^1$ core | calculations 03, 05, and 06; symbolic regressions | endpoint-inclusive charged theory differs |
| B8 | The unanchored diagonal quotient is equivalent to intrinsic $\mathcal X_F$ | false | variable outer longitudinal anchors and variable $E_0$ | nontrivial $\lambda$/anchor fiber; its contraction with $\delta E\wedge\delta\lambda$ is nonzero | enlarge target or fix/reduce extra data |
| B9 | The rapid-core gauge quotient is Hausdorff with the same exact kernel | proved | fixed anchors and rapid matched-$H^1$ Fréchet topology | continuous canonical projection, Poincaré/path primitive, harmonic test variations | stronger shifted completion remains conditional |
| C0 | Each $\ell\geq1$ Maxwell field-strength sector is bijective to electric and magnetic masters | proved | round $S^2_R$, trivial fixed bundle | explicit formulas (3.1)--(3.3) and inverse harmonic decomposition | $\ell=0$ excluded |
| C1 | Maxwell electric/magnetic corner matching is equivalent to matched (E/B) master corner values | proved | $s_\ell>0$ | equations (5.1)--(5.2); exact jet matrices | potential compatibility is a separate representative equation |
| C2 | Shared $E_0,B_0$ are extra oscillators beyond the masters | false | $\ell\geq1$ | they equal $-s_\ell c^{E/B}$ | $\ell=0$ sectors are separate |
| C3 | The Maxwell/potential/master characteristic square commutes | proved | anchored rapid matched-$H^1$ core | explicit inverse maps; calculations 04--05; symbolic regression | shifted Hilbert quotient remains conditional |
| C4 | The top bulk row of the Maxwell/master diagram is a continuous bijection | proved | anchored rapid matched-$H^1$ core | both inverse composites in calculation 05 | stronger shifted completion remains conditional |
| V1 | The finite compatibility, Darboux-block kernel, jet dictionary, and unanchored-obstruction tests pass for $L=1,\ldots,4$, $K,J=1,\ldots,3$ | checked symbolically | dependency-free exact rational elimination; $s\neq0$ | `finite_harmonic_reduction.py` | tested cutoffs are regression only |
| V2 | Projected Maxwell/Bianchi, anchor, and (6/12)-rank symplectic tests pass | checked symbolically | $\lambda>0$, representative on-shell basis | `maxwell_master_commuting_checks.wl`, Wolfram 14.3 | finite basis is not a continuum proof |
| V3 | The explicit Goursat kernel, Maxwell lift, anchored frames, raw E/B pullback, dressing endpoints, and conserved master current checks pass | checked symbolically | $\lambda>0$, fixed anchors | `phase_ii_goursat_lee_wald_checks.wl`, Wolfram 14.3 | regression is not the Fréchet proof |
| V4 | The full three-cell Maxwell compatibility, two diagonal reductions, final $F$, Lee--Wald matrix, and quadratic witness checks pass | checked symbolically | finite injective E/B trace basis, one real harmonic | `full_maxwell_composition_checks.py`, exact rational arithmetic | finite regression is not the analytic associativity proof or an $H_K$ theorem |
| V5 | Finite-cross translation anomalies have ranks $(2,4)$ while the rotation anomaly has rank zero | checked symbolically | six exact on-shell directions per master | `hamiltonian_test_checks.wl`, Wolfram 14.3 | analytic obstruction is the endpoint identity (3.1) of calculation 09 |
| D0 | $R_X:\operatorname{Sol}_{\mathrm{Max}}/\mathcal G_{\mathrm{proper}}\to\mathcal X_F^{\mathrm{comp}}$ is a rapid-core continuous bijection | proved | fixed anchors, $Q_E=n=0$, $\ell\geq1$, rapid matched-$H^1$ graph | Bessel inverse, explicit Maxwell/potential lift, continuous canonical slice | stronger shifted completion remains conditional |
| E0 | $R_X^*\Omega_X=\Omega_{\mathrm{bulk}}$ on the rapid core | proved | T-D and fixed outer frames | finite Stokes theorem, direct E/B pullback, endpoint and ambiguity audit | endpoint-inclusive charged theory differs |
| F0 | Full Maxwell two-cell null-interface composition equals the union phase space | proved | complete $F,*F$, endpoint, and transition trace; T-D--T-E | distributional gluing, potential transition, Goursat uniqueness, internal flux cancellation | topology and charged endpoints excluded |
| G0 | Full Maxwell three-cell composition is associative | proved | two interface groups and full compatibility | uniqueness, reduction by stages, two flux cancellations, full-Maxwell regression | non-Abelian/singular and topological reductions excluded |
| H0 | $\partial_t,\partial_z,SO(3)$, and cut gauge are all Hamiltonian on the finite anchored characteristic phase space | false | variable physical outer data | nonzero endpoint anomaly for both translations; calculation 09 and V5 | choose an endpoint repair before restating T-H |
| H1 | $SO(3)$ and proper/diagonal cut gauge pass the Hamiltonian tests | proved | smooth-generator domain, round $S^2$, anchored policy | zero rotational anomaly; kernel/moment-map calculations | does not repair translation failure |
| I0 | Full Maxwell composition induces the integrated B1 Weyl theorem after the declared Hamiltonian gate | conditional | requires a repaired T-H | T-F already supplies the symplectic relation | no B2 or Hilbert factorization claim |
| N0 | The integrated theorem chain is absent from prior literature | conditional | preliminary primary-source screen through 2026-08-28 | literature matrix | negative novelty search is not exhaustive |
| M0 | The project is manuscript-ready | false | current state | T-D--T-G close, but finite-cross T-H is false and T-I is gated | select and prove an endpoint repair |

## Executed check contract

From the project root:

```text
python3 scripts/finite_harmonic_reduction.py
wolframscript -file scripts/maxwell_master_commuting_checks.wl
wolframscript -file scripts/phase_ii_goursat_lee_wald_checks.wl
python3 scripts/full_maxwell_composition_checks.py
wolframscript -file scripts/hamiltonian_test_checks.wl
```

The executed outputs ended with:

```text
ALL FINITE-HARMONIC REDUCTION CHECKS PASSED
ALL MAXWELL/MASTER COMMUTING CHECKS PASSED
ALL PHASE-II GOURSAT/LEE-WALD CHECKS PASSED
ALL FULL-MAXWELL COMPOSITION CHECKS PASSED
ALL HAMILTONIAN KILL TESTS PASSED
```

The Wolfram run used version 14.3.0 and returned one-/two-master symplectic
ranks (6) and (12).  The Python script is dependency-free and uses exact
rational row reduction; the separate Wolfram script retains symbolic
$s=\sqrt\lambda$.

## Verified

- finite harmonic/Darboux-block rank, kernel, dimension, and separate jet dictionary;
- signs of both electric and magnetic master characteristic maps;
- anchored relative-frame formula and connection compatibility;
- the unanchored noninjective, non-null fiber;
- rapid Goursat/Lee--Wald lift and full-Maxwell composition bookkeeping;
- translation failure and the passing rotational/cut-gauge subtests.

## Assumptions

- signature $(-+++)$, $ds^2=-2\,du\,dv+R^2d\Omega_2^2$;
- incoming characteristic orientation of calculation 01;
- trivial bundle, $Q_E=n=0$, $\ell\geq1$;
- fixed outer exact dressed-connection anchors and frames;
- sheet-proper gauge vanishes at both endpoints;
- compact $S^2$ without harmonic one-forms.

## Not verified

- stronger shifted Sobolev/graph completion;
- a repaired endpoint policy for translation Hamiltonians;
- integrated Peierls/Weyl T-I phase;
- $\ell=0$, nontrivial bundle, general cut topology, BRST, or B2 claims.
