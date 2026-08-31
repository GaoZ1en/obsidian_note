# Development-map audit

## Direct verdict

The project now has a rigorously specified framed characteristic-data space,
framed vacuum solution space, proper bulk diffeomorphism quotient, and
development/restriction bijection for restricted smooth germ data and for
smooth full-sheet data on the neighborhood (long-by-thin collar) domains
supplied by the cited characteristic theorems.

The prescribed full finite rectangle theorem in a finite-Sobolev Banach
topology is **conditional** on the single proposition
$\mathbf P_{\rm rect}^{s,r}$.  The current literature extracts do not prove
that proposition, and the project does not infer it from finite-dimensional
algebra.

## Authoritative status table

Allowed statuses are exactly:

proved / checked symbolically / conditional / open / false

Within `proved`, provenance is kept separate: D-A1 and D-B1--D-B2 are
in-project definitions/dictionary proofs; D-C1--D-C2 and the linear
well-posedness input to D-E1 come from the cited characteristic theorems after
the explicit dictionary and gauge completion; D-F1 and D-G1 are in-project
consequences; D-H1 and D-I1--D-I2 combine standard on-shell/PDE uniqueness
with the in-project representative and interface identities.  No cited result
is relabelled as an in-project PDE proof.

| ID | Claim | Status | Provenance and evidence | Exact boundary |
|---|---|---|---|---|
| D-A1 | The rectangle, incoming cross, framed data, framed solutions, and $\operatorname{Diff}_0$ are defined without quotienting retained labels, normal frame, or endpoint maps | proved | calculations 06--07 | boundary relabellings and boosts remain separate |
| D-B1 | $T_{\rm Luk}$ is locally smooth and invertible on the positive-area/no-caustic sector | proved | calculation 06, Theorem 6.1 | fixed frame split and marked generators |
| D-B2 | $\gamma_0=\Omega_0\bar h$, $\chi^+=a_+B^+$, $\underline\chi^-=a_-B^-$, and $\zeta=-\widehat\omega$ in the symmetric frame | proved | calculation 06, Sections 4--5 | $a_+a_-e^{-m}=2$ and the stated torsion convention |
| D-B3 | The branch torsion equality, symmetric-frame sign, normalization, and opposite-boost covariance | checked symbolically | V42--V44 in scripts/development_dictionary_checks.wl | sign/factor regression only |
| D-B4 | The four Luk core fields alone have been mapped with finite-Sobolev estimates to every MSP $Y_\pm$ component | open | MSP Theorem 7.15 assumes completed DND satisfying abstract constraints | not needed when Luk/Cabet data are used as the primary CIVP chart |
| D-C1 | A framed vacuum development and inverse restriction exist on a neighborhood of $S_{00}$ | proved | Rendall/Luk smooth local existence and uniqueness after the explicit core dictionary | restricted smooth germ data only; MSP is not used without its still-open full $Y_\pm$ completion |
| D-C2 | A framed development exists on an L-shaped neighborhood of the complete truncated initial sheets | proved | Luk for smooth spherical data; Cabet--Chruściel--Tagne Wafo for smooth general compact cuts | long-by-thin/full-sheet neighborhood, not a two-long-direction rectangle or a finite-Sobolev Banach chart |
| D-C3 | The cited general-topology Einstein theorem supplies the project's exact finite-Sobolev Banach chart with tracked gauge-completion losses | false | arXiv:1406.3009 states Theorem 5.3 for smooth data and leaves finite-loss bookkeeping to the reader | reduced-system Sobolev estimates remain useful input |
| D-D1 | The uniform exact-solution difference, trace/restart, and quadratic-remainder package $\mathbf P_{\rm cell}^{k}$ | conditional | calculation 07, Section 4 gives the exact estimate and reduction to characteristic energy inequalities | the commuted Einstein-frame estimates are not written out |
| D-D2 | Nearby data to a buffered background develop on the same full $\mathcal R_{U,V}$ with the stated stability and margin estimate | conditional | $\mathbf P_{\rm rect}^{s,r}$, calculation 07, Section 6 | this is the only remaining PDE obstacle to the fixed-rectangle theorem |
| D-E1 | On the proved smooth germ/collar domain, incoming variations and framed linearized vacuum solutions are in bijection | proved | linear characteristic energy identity, constraint propagation, and geometric uniqueness | linearized solution-space statement, not identification with $DE$ on a Banach neighborhood |
| D-E2 | The nonlinear framed development is $C^1:\mathcal D^s\to\mathcal X^r$ with finite loss, $DE$ is linearized evolution, and restriction is a $C^1$ inverse on an open trace-regular solution neighborhood | conditional | forward estimate follows from $\mathbf P_{\rm cell}^{k}$ locally; the full chart is clause 5 of $\mathbf P_{\rm rect}^{s,r}$ | not supplied by common-domain continuity or by defining the target as the image |
| D-F1 | $L_{\rm loc}^*\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}$ on the framed linearized germ/collar solution spaces | proved | calculation 07, Theorem 7.1 plus calculations 02 and 05 | a literal nonlinear pullback by $E_{\rm loc}$ requires differentiability; fixed HF representative and declared corners/ports |
| D-F2 | $(E_{U,V}^{\rm fr})^*\Omega_{\rm EH}^{\rm fr}=\Omega_{\rm char}$ on a Banach neighborhood of the full rectangle | conditional | calculation 07, Corollary 7.2 | requires $\mathbf P_{\rm rect}^{s,r}$ |
| D-G1 | Diagonal generator relabelling has moment map $\mathcal C_A$ and the local linearized correspondence descends at level zero | proved | calculation 05 and calculation 07, Section 8 | regular local slice; presymplectic only; a map-level quotient needs $C^1$ |
| D-G2 | The opposite-boost and physical four-face port kernel is complete | open | proposition $\mathbf P_{\rm red}$ | no physical closing-wall action has been selected |
| D-G3 | The final boundary-reduced form is functionally nondegenerate | open | pointwise rank checks are insufficient | needs $\mathbf P_{\rm red}$ and a declared functional completion |
| D-H1 | For every existing full-rectangle solution, $\Omega_{X_{\rm in}}=\Omega_{X_{\rm out}}$ | proved | on-shell EH current conservation and Stokes | closed $S$, coherent HF representative, or explicit side no-flux condition |
| D-H2 | A uniform finite-cell evolution graph exists for all nearby data | conditional | follows from $\mathbf P_{\rm rect}^{s,r}$ | otherwise only a relation for developments that already exist |
| D-I1 | Existing adjacent framed developments compose under full DND first-jet and endpoint cotangent matching | proved | PDE uniqueness plus calculations 04--05 interface identities | common existence domain and fixed incidence maps |
| D-I2 | Solution-space composition is associative for existing developments | proved | uniqueness on overlaps and functorial cotangent matching | uniform neighborhood version is conditional on $\mathbf P_{\rm rect}^{s,r}$ |
| D-global | Arbitrary smooth characteristic data develop on an arbitrarily prescribed finite rectangle | false | focusing, chart breakdown, and source-theorem scope | no such claim is made |

## Source-scope audit

- Rendall proves local existence near the transverse corner, not a collar of
  both entire truncated sheets.
- Luk proves a long-by-thin region for regular spherical data, with the thin
  width controlled by displayed initial norms.
- Mars--Sánchez-Pérez Theorem 7.15 assumes full abstract DND satisfying the
  abstract constraints and allows restriction; the follow-up geometric
  uniqueness result is explicitly local near the intersection.
- Cabet--Chruściel--Tagne Wafo Theorem 3.9 supplies a controlled local width
  for the reduced doubly-null symmetric-hyperbolic system.  Theorem 3.13
  assumes all compared solutions already exist on the common domain.
  Theorem 3.15 is a smooth continuation criterion and explicitly does not
  establish finite-differentiability continuation.
- Reisenberger's Sachs/area variables are a data and symplectic
  parametrization; that paper explicitly does not prove a development of all
  of the double-null sheet.

## Exact remaining propositions

The PDE proposition is

$$
\mathbf P_{\rm rect}^{s,r}:
\quad
\text{uniform finite-Sobolev existence, stability, trace/restart control,}
$$

$$
\text{double-null margin persistence, and a forward/inverse $C^1$ chart on the same}
\ \mathcal R_{U,V}
\text{ near a buffered background.}
$$

After it is proved, the independent boundary proposition is

$$
\mathbf P_{\rm red}:
\quad
\text{the action-derived four-face port sector is complete and its}
$$

$$
\text{functional kernel is exactly the declared boundary gauge algebra.}
$$

Thus $\mathbf P_{\rm rect}^{s,r}$ is the single remaining obstacle to the
strongest framed fixed-rectangle **development** theorem.
$\mathbf P_{\rm cell}^{k}$ and the finite-Sobolev gauge completion are
sublemmas included in that proposition, not additional final claims.
$\mathbf P_{\rm red}$ is a later, logically separate obstacle to a
nondegenerate physical reduced symplectomorphism.

## Verification boundary

V42--V44 verify only normalization, torsion-sign, and boost-covariance
algebra.  They do not prove existence, uniqueness, continuation,
differentiability, tangent surjectivity, current conservation, or
nondegeneracy.  Those statuses come from the analytic arguments and cited
theorems listed above.
