# Literature Comparison and Novelty Audit

## Search Boundary

Searches were run through 2026-08-27 for combinations of `Maxwell`, `Einstein--Maxwell`, `Newman--Penrose`, `double null`, `intersecting null hypersurfaces`, `characteristic initial value`, `Goursat`, `covariant phase space`, `corner`, `edge mode`, and `symplectic reduction`. The negative novelty statement below means “not found in this search and in the cited papers,” not a proof of absence from the literature.

## Direct Verdict

The ingredients of the project are individually established in nearby literatures:

1. characteristic evolution for gauge fields on pairs of null hypersurfaces;
2. null-boundary CPS and charges, especially for gravity;
3. electric-flux superselection and extended boundary frames for bounded Yang--Mills;
4. relative boost--area data on intersecting gravitational horizons.

What was not located is a (3+1) fixed-background Maxwell treatment that begins from the action without gauge fixing and establishes, with one exact function-space theorem, the complete chain

$$\begin{align}
\text{double-null restriction/reconstruction} +\text{Gauss/Bianchi corner compatibility} +\text{CPS intertwining} +\text{relative-frame reduction} +\text{associative composition}.
\end{align}$$

The current project derives the sheet-constraint/CPS/composition parts of this chain and keeps bulk reconstruction conditional. The integration of these layers, rather than single-null Maxwell reduction, is the candidate paper contribution.

## Source Matrix

| Source | Established result | Reuse here | Does not establish |
|---|---|---|---|
| [Rácz, *Stationary Black Holes as Holographs II*](https://arxiv.org/abs/1307.1683) | in the generic NP Einstein--Maxwell characteristic system, reduced data include $\phi_0$ on one null sheet, $\phi_2$ on the other, and $\phi_1$ on the intersection; Appendix A gives a smooth gauge-fixed local existence/uniqueness argument for full compatible data | direct structural cross-check of radiative sheet data plus a shared Coulomb corner datum | the exact fixed-background Maxwell Sobolev restriction map, global finite-diamond surjectivity, bundle/harmonic sectors, or CPS composition |
| [Rendall, *Reduction of the characteristic initial value problem to the Cauchy problem and its applications to the Einstein equations*](https://doi.org/10.1098/rspa.1990.0009) | reduction of smooth data on two transversely intersecting characteristic hypersurfaces to a Cauchy problem; local well-posedness applications | analytic route for a Lorenz-potential wave formulation, after its data and subsidiary constraints are matched precisely | by itself, the gauge-invariant Maxwell data dictionary, proper-gauge quotient, or a theorem on the entire finite null segments |
| [Chandrasekaran--Flanagan, *Horizon phase spaces in general relativity*](https://arxiv.org/abs/2309.03871) | phase space on two intersecting null surfaces; relative boost and area pair in an extended gravitational sector | comparison architecture for double-null data, constraints and relative frames | Maxwell characteristic data or electric-flux reduction |
| [Ciambelli--Freidel--Leigh, *The Phase Space of Gravity on Null Hypersurfaces*](https://arxiv.org/abs/2608.14449) | local kinematical gravitational Poisson structure on a caustic-free null segment before Raychaudhuri/Damour reduction | distinction between raw kinematics and imposed null constraints | intersecting-surface Maxwell composition or finite-corner reduction |
| [Mondal--Yau, *Einstein--Yang--Mills equations in the double null framework*](https://arxiv.org/abs/2205.01101) | gauge-covariant estimates and existence of developments from incoming/outgoing null data in the coupled system | evidence that double-null gauge-field characteristic evolution is an established PDE problem | action-derived Maxwell CPS, cut charges or symplectic composition |
| [Tadmon, *Construction of Initial Data ... Einstein--Yang--Mills--Higgs*](https://arxiv.org/abs/1203.2423) | hierarchical construction of data on two intersecting null hypersurfaces | precedent for constraint-complete characteristic data | reduced phase space and Maxwell corner pair |
| [Riello, *Symplectic reduction of Yang--Mills theory with boundaries*](https://arxiv.org/abs/2010.15894) | electric-flux superselection sectors; optional extensions conjugate to flux; interface flux matching | proper/charged gauge distinction and caution that edge extensions depend on the phase-space policy | null characteristic reconstruction or a unique boundary extension |
| [Donnelly--Freidel, *Local subsystems in gauge theory and gravity*](https://arxiv.org/abs/1601.04744) | extended phase spaces and boundary reference frames for local subsystems | frame language and gluing comparison | uniqueness of the Maxwell null-corner polarization |
| [Chandrasekaran--Flanagan--Prabhu, *Symmetries and charges of general relativity at null boundaries*](https://arxiv.org/abs/1807.11499) | null-boundary symmetries, charges and fluxes in gravity | finite-null-boundary CPS comparison | Maxwell double-null Goursat theorem |
| [Chandrasekaran--Flanagan--Shehzad--Speranza, *Brown--York charges at null boundaries*](https://arxiv.org/abs/2109.11567) | action/boundary potential analysis for null gravitational charges | reminder that boundary polarization and corner terms must be derived | Maxwell composition formula |
| [Asymptotic structure of scalar--Maxwell theory at the null boundary](https://arxiv.org/abs/2407.13866) | asymptotic null-boundary constraint/symplectic analysis in scalar--Maxwell theory | single-null/asymptotic comparison | finite double-null diamond and shared-corner reconstruction |

## Maxwell Characteristic-Data Cross-Check

Rácz states the generic reduced Einstein--Maxwell data in NP variables as

$$
\phi_0|_{\mathcal H_1},
\qquad
\phi_2|_{\mathcal H_2},
\qquad
\phi_1|_{\mathcal Z},
$$

along with the gravitational data, where $\mathcal Z=\mathcal H_1\cap\mathcal H_2$. With a tetrad adapted so that $\ell$ and $n$ generate the two sheets, the structural dictionary is

$$
\phi_0\sim r_A m^A,
\qquad
\phi_2\sim p_A\bar m^A,
\qquad
\phi_1\sim E_0+iB_0,
$$

up to tetrad normalization, orientation and complex-conjugation conventions. This precisely supports the statement that the two radiative scalars do not exhaust the reduced characteristic data: the middle/Coulomb scalar is supplied on the shared corner.

Two limitations are essential. First, Rácz treats the coupled gauge-fixed smooth Einstein--Maxwell system, not the present fixed-background CPS quotient. Second, the existence result used there is local in the characteristic domain near the intersection; the paper itself distinguishes this from control on an arbitrary full finite pair of null segments. It therefore supports the structure and a conditional local existence route, not the exact A5b theorem still sought here.

## Relation to the User's Existing Notes

The existing scalar characteristic notes establish three methodological constraints reused here:

- a finite double-null cross is one Goursat input, not a product of two independent phase spaces;
- shared corner values must not be doubled;
- B1 symplectic/algebraic reconstruction is separate from B2 state and cross-covariance data.

The deprecated finite-boundary Maxwell note establishes a single-null collar pullback and cut-charge balance in (2+1) dimensions. It does not contain propagating (3+1) double-null composition. The active scalar gluing formalism supplies associativity discipline but no Maxwell formula is imported from it.

## Novelty Tiers

### Already Known

- Maxwell/Yang--Mills characteristic constraints and double-null evolution as a PDE subject.
- Null CPS fluxes and cut charges.
- Electric flux as boundary/superselection data.
- Boundary frames conjugate to flux in extended gauge-theory phase spaces.
- Relative boost--area structure for intersecting gravitational horizons.

### Project-Specific Derivation Completed Here

- one convention-complete (3+1) Maxwell sheet-constraint data ledger, with bulk reconstruction kept conditional;
- raw null pullback on both sheets with orientations;
- derivation of the relative $U(1)$ frame--electric flux pair from generator dressing;
- proof that electric matching is the moment map but not the whole compatibility locus;
- Abelian relative-frame composition law and formal associativity;
- a Maxwell-derived general null-CPS workflow that keeps B1/B2 separate.

### Still Requiring a Novelty-Proof-Quality Audit

- whether an older characteristic Hamiltonian treatment already states the same reduced corner pair in equivalent variables;
- whether an exact smooth/Sobolev fixed-background Maxwell reconstruction quotient exists in the literature with precisely $(r,p;E_0,b^0)$, potential transition data and the declared proper gauge policy;
- whether the associativity statement is a special case of an explicitly cited BV--BFV composition theorem with identical endpoint data.

## Citation Policy for a Paper

Do not advertise single-null reduction or electric-flux edge modes as new. Until A5b closes, phrase the contribution as the integration of a proved sheet-constraint dictionary and two-sheet CPS with a conditional characteristic-reconstruction target and corner-compatible symplectic composition.
