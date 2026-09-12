# Proof audit — revision 2

## Exact claim

Minimal Einstein gravity plus one real, minimally coupled scalar in global AdS3, radius one, kappa^2 = 16 pi G, standard normalizable boundary condition Delta > 1, smooth centre and fixed Brown–Henneaux boundary cylinder. The physical one-scalar mass is fixed. No independent order-G scalar contact coupling is included.

The all-(n,ell) formulas give the connected, resonant, tree-level four-scalar coefficients. With a non-null positive-energy Brown–Henneaux Virasoro representation and no coincident additional matter primary, they are the energy shifts of uniquely continued scalar-primary branches. They do not claim a complete bare Fock-space diagonalization, an infinite-mode convergence theorem, or a higher-order result.

## A. Paired exchange to the Casimir equation

### Analytic work now supplied

1. An off-shell operator identity, E^(1)q = -P(Casimir-2)q + P symgrad C[q], replaces the unsupported use of a universal inverse. The explicit gauge remainder is kept through the pairing.
2. The generator Casimir is identified with the tensor differential operator. This is independently tested as an identity on arbitrary component functions, not only on the special primary solutions.
3. Both Casimir and Einstein Green currents are written explicitly. Their radial fluxes, in the actual coordinate measure r J^r, are respectively O(r^(-2 Delta)) and O(r^(-2)). Smooth centre fluxes vanish. Integrated bounded time currents vanish after taking the resonant average.
4. Conservation makes the remaining gauge terms divergences. Even a bounded large Brown–Henneaux vector has a vanishing matter-pairing flux, O(r^(2-2 Delta)); the stronger mixed-component stress falloff is used. This paired statement does not quotient physical external boundary-graviton excitations.
5. Reciprocity and paired equivariance justify transferring the external crossed Casimir. A finite-source choice of representatives need not itself be an invariant distributional kernel.
6. Four-leg combinatorics produces -2 kappa^2 per unordered partition of four distinct real-scalar legs. Collapse fixes the contact normalization rather than fitting it to a low-spin answer.
7. The contact decomposition is pointwise algebra. Its form-factor integrations have explicit decaying boundary terms.
8. A finite-block Duhamel identity fixes the energy-to-logarithm factor G/2. Canonical endpoint redefinitions project to a commutator with H0 and cannot alter a resonant matrix element.

### Executed checks

`verify_collapse.py`, `verify_lie_casimir.py`, `verify_contact.py`, plus the pre-existing block and form-factor scripts. Each of the first two operator checks covers six tensor basis components with arbitrary H(r) and symbolic omega,j. The boundary powers and time-averaging argument are analytic estimates in the manuscript, not inferred from these finite tests.

### Domain, not an unproved universal extension

Finite normalizable mode sources and smooth, differentiated Brown–Henneaux responses with bounded harmonic representatives are used. Bounded representatives for this source class are constructed in Section 5.1: opposite-frequency sources by the finite Killing-ladder recursion from the static seed, and same-sign sources by finite primary decomposition and Killing derivatives of the explicit spin-zero/spin-two responses. Their only apparent spin-zero pole is removable. This construction does not require global de Donder gauge accessibility. A secular physical resonance is not time-averaged away. Such a resonance belongs in the physical projected Hamiltonian. There is no assertion of a retarded inverse on every eternal tensor history, uniform long-time control, or infinite-mode norm convergence. Smooth homogeneous vacuum responses are diffeomorphisms on the simply connected smooth vacuum patch; singular conical additions and new topology are excluded.

## B. Structural degeneracies and the primary branch

### Analytic work now supplied

1. A coefficientwise character identity decomposes the free scalar-pair space times vacuum-orbit oscillators into one non-null Virasoro module per global scalar-pair primary. This is not a thermal trace convergence argument.
2. Within a formal perturbed spectral cluster, subtracting D(D†D)^(-1)D† removes the descendant span. This is a Gram inverse, not an inverse of a vanishing energy denominator.
3. The orthogonal complement is H,J invariant and is annihilated by all positive Virasoro modes. When its rank is one, its normalized continuation defines the desired energy branch.
4. The level-two example explicitly distinguishes the additional global quasiprimary built from L_-2 and L_-1^2 from a true Virasoro primary. Its Gram norm is positive for c > 1 and h > 0.
5. The light-weight Virasoro-to-global block expansion supplies the all-level order counting. Additional global quasiprimary terms in a Virasoro block start at order 1/c. Shifting their parent weight by order G therefore gives a new logarithm only at order G^2. Consequently the order-G logarithmic data determine the scalar-primary energy rather than an average over structural graviton degeneracies.

### Executed checks and sourced input

`verify_primary_branch.py` checks the level-two Gram algebra, projector, positivity identity, Ward overlap, and log order counting exactly. The all-level global decomposition of a Virasoro block is a representation-theoretic input, cited to Perlmutter, arXiv:1502.07742. The existence of the perturbative Brown–Henneaux charge representation and its positive-energy, non-null sector is a physical assumption, not newly constructed by this paper.

### Precisely retained limitation

A collision between independent matter primaries is not merely a descendant degeneracy. In the real-scalar even sector a 2s-scalar primary can coincide with a two-scalar primary only if (s-1) Delta is an integer, with appropriate nonnegative chiral levels. Irrational Delta > 1 is a sufficient all-level exclusion. At a fixed energy, the relevant finite list can instead be checked directly.

At a true collision the primary projector can have rank greater than one. Additional primary mixing must then be evaluated before claiming all physical eigenvalues. The example Delta = 2, pair (n,ell) = (2,0) at E0 = 8 coincides with the four-scalar ground primary. This does not prove that their mixing is nonzero. It makes the scope unambiguous. The Delta = 2 noncircular check at E0 = 6 is below this collision.

## C. Independent noncircular matrix element

### Analytic calculation now supplied

The external states are A = b00† b10†|0> and B = b0,+1† b0,-1†|0>. Their total J is zero, but the crossed sources and responses have J = +1 and -1 and are not circular.

The static polar-areal response gives the angular responses by an exact Killing derivative. This uses covariance of the field equation, not the spectrum, a fitted Casimir eigenvalue, or Hahn reconstruction. The same-sign response is written explicitly from the circular constraints. All three pairings are then integrated directly for arbitrary Delta > 1.

The result is

V_AB/G = 2 Delta^2 (32 Delta^2 + 34 Delta - 13) / [(2 Delta-1)(2 Delta+1)(2 Delta+3)].

At Delta = 2 the three contributions are 104/15, 104/15 and 8/105, summing to 488/35. The prior spectral formula is used only as a final comparison.

### Executed checks

`verify_noncircular.py`: full coordinate Einstein residual for each response at Delta = 2 (nine displayed tensor entries for each of three responses), plus direct radial integration.

`verify_noncircular_mass.py`: three distinct scalar KG equations, two independent static-seed constraints, all three same-sign circular constraints, and the exact arbitrary-mass integrals. Arbitrary-mass angular field equations follow from the verified seed and exact Killing covariance.

A development-stage forced square-root simplification was rejected because it changed branches on 0 < x < 1. The delivered script uses expressions with the correct real sqrt(1-x) branch and compares the independent r- and x-coordinate results. No failed scratch implementation is distributed.

## Previous results rechecked

The 21 arbitrary-parameter algebraic identities, explicit primary tensor equations, and the 588 exact radial/channel coefficient comparisons were rerun. Every tested residual vanished. These include the original all-level recurrence certificate and the finite-band uniqueness determinant.

## What has not been claimed

No regulator-specific one-body self-energy, genuine multi-primary mixing at exceptional masses, full Fock-space dressing map, new higher derivative coupling, higher loop, arbitrary boundary condition, nonperturbative quantum-gravity construction, or exhaustive priority/novelty search. No external reviewer or formal proof assistant has certified the manuscript. The computational checks support concrete identities; they are not a substitute for the stated physical and analytic inputs.
