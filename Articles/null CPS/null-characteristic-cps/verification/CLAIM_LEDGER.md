# Verification and Claim Ledger

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| A1 | $g^{uv}=-1$, $det g=-det q$, and the Hodge map (2.2) | checked symbolically | fixed product double-null metric, chosen orientation | `maxwell_double_null_checks.wl` | varying $q_{AB}(u,v,x)$ not included |
| A2 | action admits $\theta=-\delta A\wedge *F$ and current (1.1) | proved | fixed metric | direct variation | boundary counterterms can change polarization |
| A3 | Maxwell decomposition (3.1) | checked symbolically | product metric | exact component check | none in stated model |
| A4 | Bianchi decomposition (3.2) | checked symbolically | torsion-free cut derivative | exact component check | none in stated model |
| A5a | $(r,p;E_0,b^0)$ parameterizes the complete reduced sheet constraint data | proved | smooth finite segments, fixed admissible corner sector | integrated Maxwell/Bianchi transport equations and their inverse by corner evaluation | this is not a bulk existence theorem |
| A5b | compatible potential-level characteristic data are in bijection with bulk Maxwell solutions modulo the same proper gauge group | conditional in general; proved for the benchmark radiative sectors | general curved statement needs a Goursat theorem; benchmark uses $\mathbb R^{1,1}\times S^2_R$, $\ell\geq1$, matched $H^1$/smooth data and the declared endpoint policy | potential lift plus Q3 explicit Bessel reconstruction | $\ell=0$ is a separate flux sector; arbitrary curved backgrounds remain conditional |
| A5c | $(F_{vA}|_{N_+},F_{uA}|_{N_-})$ alone form complete double-null characteristic data | false | even for smooth constant sectors on the fixed product | pure Coulomb and pure magnetic regression examples | kernel contains nonzero corner/Coulomb sectors |
| A5d | $r_A,p_A$ are sheetwise radiative profiles, while constraints also require shared $E_0,b^0$ integration data | proved + checked symbolically | stated product model | component decomposition, transport equations and regression examples | “radiative” does not mean bulk-complete |
| A6 | null pullbacks (7.1)--(7.2) | checked symbolically | orientation manifest | exact wedge/Hodge component check | none in stated model |
| A7 | gauge contraction is a cut exact form | proved + checked symbolically | linearized equations | (d(\epsilon *\delta F)) identity | field-dependent gauge parameters require extra terms |
| B1 | restriction of a bulk solution gives compatible data | proved | smooth solution | Maxwell/Bianchi equations | none |
| B2 | compatible smooth data reconstruct a unique bulk Maxwell field modulo proper gauge | conditional in general; proved for benchmark $\ell\geq1$ | fixed bundle/holonomy and endpoint policy; benchmark smooth harmonic core or per-sector matched $H^1$ data | Q3 plus the master-to-Maxwell map | sheet transport alone still does not prove the general statement |
| B3 | $G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}$ | proved for restrictions of bulk solutions; phase-space isomorphism conditional on A5b; checked symbolically on an exact polynomial pair | zero side symplectic flux | Stokes, $d\omega=0$, and `maxwell_double_null_checks.wl` | nonzero side flux must be retained |
| C1 | raw CPS needs an added universal corner two-form | false | raw Lee--Wald current | Stokes identity | a changed polarization may expose endpoint terms |
| C2 | generator dressing yields corner potential (3.1) | proved + checked symbolically | compact cut/no cut boundary | integration by parts and transport | future endpoints must be controlled |
| C3 | diagonal cut gauge moment map is $E_+-E_-$ | proved + checked symbolically | Abelian frame action | contraction of corner two-form | outward-normal notation becomes $E_{\perp,+}+E_{\perp,-}$ |
| C4 | reduced pair is $\int\delta E_0\wedge\delta\lambda_{\mathrm{rel}}$ | proved under precise conditions | variable flux, independent frames, zero moment level | reduction of (3.1) | absent in fixed-flux or single-frame sectors |
| C5 | product reduction alone reconstructs the bulk | false | unrestricted product | magnetic/connection counterexample | corrected compatibility locus required |
| D1 | the compatible split characteristic object is a compatibility locus plus diagonal reduction | proved formally | local/fixed topological sector, regular smooth Abelian action | equations (2.1)--(2.3) | bulk identification and functional-analytic quotient remain conditional |
| D1b | $P_X\simeq\mathcal C_{S_0}/G_{\mathrm{diag}}(S_0)$ as a bulk phase-space equivalence | conditional in general; proved modewise for the benchmark radiative sector | A5b plus regular reduction and complete bundle/harmonic matching; benchmark fixed-sector assumptions of Q3--Q5 | formal compatibility relation in general; explicit master reconstruction and weak-nondegeneracy proof in calculations 07--08 for the benchmark | arbitrary curved backgrounds, harmonic one-form sectors and singular quotients remain conditional |
| D2 | relative frames compose additively and reduction is associative | proved formally + checked symbolically | Abelian group, regular levels | Section 4--5 and original script | this is only the frame/flux zero-mode statement |
| E1 | the combined Maxwell theorem story is absent from prior literature | conditional novelty claim | search through 2026-08-27 | literature matrix | negative search is not exhaustive proof |
| E2 | gravity pair is obtained by replacing flux with area | false | none | different actions and extended sectors | only structural analogy retained |
| F1 | CCR/Peierls bracket matches the characteristic inverse | proved for benchmark radiative sectors; conditional in general | compactly supported master or projected field-strength smearings, fixed bundle sector | Q9 analytic mode/Green identity plus numerical regression | gauge-potential propagator and arbitrary curved backgrounds excluded |
| F2 | regional marginals determine global cross covariance | false | generic quasifree state | B2 information-loss argument from scalar benchmark | global state input required |
| Q1 | the Maxwell action reduces to two massive scalar masters for every $\ell\geq1$ | proved + checked symbolically | stationary ultrastatic $\mathbb R^{1,1}\times S^2_R$, fixed bundle sector | `06-s2-harmonic-master-reduction.md`; exact parent-action regression | product background is not $3+1$ Minkowski |
| Q2 | exact/coexact harmonics exhaust the $\ell\geq1$ Maxwell radiative sectors | proved; representative identities checked symbolically | round $S^2_R$, $H^1(S^2)=0$ | Hodge theorem, scalar harmonic completeness, vector-harmonic regression | no statement for cuts with harmonic one-forms |
| Q3 | the finite-rectangle master Goursat map is an explicit bounded isomorphism | proved + checked symbolically/numerically | $(f,g)\in H^1(0,U)\oplus H^1(0,V)$ with shared trace; per fixed $\lambda_\ell>0$ | Bessel/Riemann formula, Volterra estimate, exact kernel and mode reconstruction checks | no uniform same-order full-tower Sobolev estimate without angular weights |
| Q4 | global stationary modes are complete on the characteristic energy image | proved | spacelike finite-energy master data; no-null-infinity-flux completion | Fourier completeness and explicit restriction/projection maps | not every arbitrary nondecaying half-line profile is included |
| Q5 | the reduced characteristic two-form is weakly nondegenerate after proper gauge quotient | proved; finite Galerkin check | matched $H^1$ master data, outer endpoint variations retained | kernel proof in calculation 08 and full-rank regression | strong surjectivity onto the Banach dual is not claimed |
| Q6 | characteristic and global stationary modes are related by one symplectic transform | proved + checked symbolically | complete two-sheet energy image, $\alpha\beta=\lambda_\ell/2$ | explicit complete-cross projection, finite-overlap kernels, both principal-value cancellations and delta Jacobians | finite-cross data alone have no unique global coefficient map; not a Bogoliubov map until a second complex structure and, regionally, an extension are chosen |
| Q7 | stationary creation/annihilation operators obey Fock CCR | proved | fixed $(Q_E,n)$, global stationary complex structure | normalized modes and projection-sign check | finite diamond alone does not select this representation |
| Q8 | $H_{\partial_t}$ is diagonal and generates stationary evolution in CPS | proved + checked symbolically | normal ordering for the quantum expression | Noether energy, anomalous-term cancellation and $\iota_{\partial_t}\Omega=-\delta H$ | vacuum energy is removed by normal ordering |
| Q9 | characteristic inverse, mode commutator and Peierls causal propagator agree | proved + checked numerically | compact master/field-strength smearings, $\ell\geq1$ | Fourier--Bessel identity, Green relation and truncated regressions | $A_\mu$ propagator remains gauge dependent |
| Q10 | radiative composition is canonically weak-symplectically associative mode by mode | proved + checked symbolically | linear product benchmark, matched traces, explicit Goursat uniqueness | calculation 11 and sectorwise matrix/additivity regression | nonlinear, non-Abelian and singular reductions excluded |
| Q11 | fixed-flux and extended zero-mode quantum sectors are distinct | proved at classical-sector level; representation choice conditional | fixed Chern class; endpoint and large-gauge policy declared | `zero-modes-and-superselection.md` | $\lambda_0\in\mathbb R$ versus $U(1)$ is extra input |
| Q12 | stationary vacuum and master/field-strength two-point functions are explicit | proved | global ultrastatic positive-frequency state | mode integral and $K_0$ Wightman kernel | this is B2 input and is not selected by a finite diamond |

## Executed Check Contract

Run from the project root:

    wolframscript -file scripts/maxwell_double_null_checks.wl
    wolframscript -file scripts/s2_master_quantization_checks.wl
    wolframscript -file scripts/master_mode_numeric_checks.wl

All three scripts were executed with Wolfram Engine 14.3.0. They finished with `ALL CHECKS PASSED`, `ALL S2 MASTER/QUANTIZATION CHECKS PASSED`, and `ALL MASTER MODE NUMERICAL CHECKS PASSED`. The numerical reconstruction errors were below $1.5\times10^{-15}$; the finite-$k$ timelike and spacelike commutator errors were below $6\times10^{-4}$. The independent earlier `xact_verify_residuals` run used the `components` profile, loaded xTensor/xPert/xTras/xCoba without errors, and returned `allZero=true` for the scalarized inverse-metric, Hodge, null-pullback and corner-moment-map residuals.

The analytic proof of Q3 is the Volterra/Riemann theorem and estimates in calculation 07; the numerical mode reconstruction is only a regression. Likewise, Q5 is proved by the continuum kernel argument, not by the finite Galerkin rank, and Q9 is proved by the Fourier--Bessel/Green identities, not by a finite momentum cutoff.

## Verified

- All exact finite component and orientation identities listed as checked symbolically.
- The pure Coulomb and pure magnetic kernels of restriction to $(r,p)$.
- Formal smooth reduction and associativity algebra.

## Assumptions

- Signature $(-+++)$, $ds^2=-2du\,dv+q_{AB}dx^A dx^B$, $q_{AB}$ independent of $(u,v)$.
- Compact cut without boundary or compactly supported cut variations.
- Field-independent $U(1)$ gauge parameters for the charge calculation.

## Not Verified

- A same-order Sobolev Goursat isomorphism for arbitrary curved double-null backgrounds or the full harmonic tower without angular weights.
- Strong symplectic surjectivity onto the full Banach dual, and completions with nonzero massive flux at null infinity.
- Large-gauge periodicity of the optional zero-mode frame, nontrivial harmonic-one-form cuts and bundle sums.
- Gauge-potential Peierls kernels without gauge fixing, non-Abelian extension and gravity.
