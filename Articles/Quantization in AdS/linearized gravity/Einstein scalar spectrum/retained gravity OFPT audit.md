# Audit of retained-gravity OFPT

Date: 2026-09-27. Companion: [OFPT with boundary gravitons retained](OFPT%20with%20boundary%20gravitons%20retained.md).

## Verdict and precise scope

The calculation establishes the leading connected two-scalar binding energies
in the original physical-mass convention, and a full-space normal-form theorem
that explains why retaining Brown--Henneaux gravitons does not add a leading
resonant mixing eigenvalue. It does not establish a complete regulator-specific
bare scalar self-energy or construct all renormalized Brown--Henneaux charges.

The central advance is not a relabeling of the old quartic matrix element as
second-order OFPT. The new argument starts with physical graviton oscillators,
all exactly resonant states, the cubic Hamiltonian and its second-order
resolvent. It proves a normal form on that space and then identifies a set of
matrix elements for which every connected physical-graviton exchange vanishes
by angular momentum. The remaining canonical integrals are recomputed rather
than read from saved spectrum data.

This is a conditional theorem about a regular Ward-preserving quantum
presentation. Its connected tree four-leg part also follows from the classical
CPS charge algebra. The distinction is retained in the note and must remain in
any publication claim.

## Inputs that are independent of the answer

1. The minimal Einstein--real-scalar action with the displayed GHY and AdS
   counterterm, a smooth center, Brown--Henneaux falloffs, fixed boundary time,
   and source-free scalar standard quantization with Delta > 1.
2. The perturbative physical Fock presentation near global AdS, including both
   graviton chiralities, after quotienting only proper gauge and treating
   nondynamical constraints. This is not a nonperturbative factorization claim.
3. The regular perturbative Hamiltonian and charge expansions, the
   time-translation Ward identities, and their leading oscillator charges.
   Quantum statements assume a prescription satisfying these identities to
   the order used. An arbitrary finite mode cutoff is not such a prescription.
4. The original physical one-particle-gap condition. There is no independent
   order-G scalar four-point contact coupling.
5. For the short all-index closed-form proof, the existing internal
   Einstein--Casimir and reciprocal conserved-source identities. The new work
   does not claim to rederive those tensor identities with xAct. The finite
   canonical algorithm is independent of the old numerical coefficient table.

The scalar-primary-branch isolation and absence of leading particle-number
mixing are not new assumptions: they are conclusions of the full-space normal
form, field degree, scalar parity and the global-intertwiner argument.

## Attacks on the normal-form proof

**A zero denominator was silently discarded.** It was not. The projection P_E
contains the complete free eigenspace before imposing an angular-momentum
block. The order-kappa Ward identity proves that the resonant cubic operator
is zero. Only then is its nonresonant homological inverse used.

**The proposed order-sqrt(G) splitting could still occur at integer Delta.**
Under the stated regular Ward identities it cannot. The resonant cubic
operator commutes with every leading graviton oscillator and so is scalar
only; the minimal real-scalar cubic field content excludes that operator.
This is stronger than the kinematic observation that a single chiral graviton
cannot have the energy and spin of two positive-energy massive scalars.
Energy coincidence alone would never have proved a nonzero matrix element.

**The Ward identity was used in a truncated J block.** It must not be. The
normal-form proof uses all energy and angular-momentum sectors, since the
charges move between them. Angular blocks are taken only afterwards.

**Corrected charges were kept fixed during a Hamiltonian transformation.**
The same near-identity transformation is applied to H and all charges. The
order-kappa-inverse oscillator term is unchanged; the transformed subleading
charge is exactly the term annihilated by the Bohr projection in the proof.

**Commuting with annihilation operators alone is insufficient.** Both signs of
the charge modes, and both chiralities, are used. The conclusion is about the
polynomial commutant of the creation and annihilation operators on the formal
Fock core, not an uncontrolled assertion about arbitrary unbounded operators.

**The proof assumes the desired answer through a quantum symmetry postulate.**
The Ward input specifies the gravitational symmetry, not the scalar
interaction coefficients: it allows a general global-invariant scalar
quartic operator. The binding energies still require bulk constraint
integrals. However, constructing the full quantum Ward-preserving composite
charges is not accomplished here. It remains an explicit dependence. For the
connected tree four-leg part the corresponding classical charge identities
suffice, because extra quantum contractions lower the field degree.

**Exact two-to-four collisions were excluded by choosing the scalar sector.**
They were retained. A normal-ordered number-changing quartic coefficient
would give a one-to-three scalar intertwiner. The one-particle lowest weights
are below every three-particle weight, so such an intertwiner vanishes,
including with spectators. This reasoning does not claim number conservation
at higher perturbative orders.

## Attacks on the dynamical matching

**Solving circular constraints throws away physical boundary gravitons.**
Circular constraints are only used to evaluate a diagnostic compression. In a
connected four-leg tree with four circular external modes, each cubic vertex
requires an exchanged graviton of angular momentum zero. No physical
Brown--Henneaux oscillator has that angular momentum. The physical-graviton
exchange sum is therefore evaluated as zero, not omitted from the theory.

**Intermediate noncircular scalar modes invalidate that selection rule.**
They occur in one-body self-energy graphs with a spectator, not in a connected
four-scalar tree made of two h-phi-squared vertices. The former are retained
in the mass discussion. There is no internal scalar line in the latter graph.

**A missing seagull could change the four-leg matrix.** A single
h-squared-phi-squared seagull has only two scalar legs. It affects the one-body
completion but not this connected four-scalar tree. Nondynamical gravitational
constraint contributions are included in H4 and are not added a second time.

**Canonical momenta and scalar velocities were interchanged.** The exact
constraints are expanded at fixed phi and p=2 pi r Pi. Boundary energy is
H=2 pi M(infinity). These two choices fix the sign and normalization of the
instantaneous vertex. The boundary Hamiltonian is not set to zero after
solving the bulk constraints.

**Circular matrix eigenvalues were mistaken for primary shifts.** They were
not. The script constructs free primary-descendant overlaps, solves for the
new coefficients at each level, and tests every unused off-diagonal matrix
element. The analytic full-matrix inverse in the note works at arbitrary
finite level and is not inferred from numerical invertibility.

**The old all-index result was merely copied and declared independently
verified.** The note explicitly reuses the old internal tensor/Casimir
identity for its concise all-index proof. The new code imports no spectrum
implementation or saved table. It calculates canonical radial matrices first,
reconstructs their primary coefficients, and only then invokes the closed
formula for comparison. The physical-space normal-form theorem and the
explicit physical-graviton cubic calculation are separate additions.

## One-body audit: what has and has not been computed

The one-particle statement in the original mass convention is
E(n,j)=Delta+2n+|j| through order G. The mass condition fixes the lowest gap;
the global Ward identities transport it to the other modes. This is not a
calculation of a unique correction to a bare action parameter.

A concrete nonzero component has been computed using the normalized TT
graviton tower and the bulk cubic vertex. The ground scalar emission matrix
elements have only radial n=0 and n=1 contributions, by an explicit Jacobi
orthogonality argument. The pair-creation terms containing the ground scalar
vanish in this representative. Both graviton chiralities are included. The
Delta=2 cutoff sum is an exact harmonic-number expression with logarithmic
coefficient -192 G; the single-m=2 contribution is -232 G/25.

That result is not the complete bare self-energy. It omits the separate V2
seagull, constraint ordering, canonical/boundary completion and counterterm
pieces. Neither its finite part nor its logarithmic coefficient is asserted
to be a gauge-invariant anomalous dimension. No seagull is reverse-engineered
by requiring agreement with a preferred mass shift. Determining the complete
bare-to-physical mass relation in an explicit regulator remains unfinished.

## Executed tests and their limits

The saved JSON records a fresh Python 3.13.5 / SymPy 1.14.0 run. No Mathematica,
xAct or Sage execution is claimed for this work.

| Check | Executed scope | What it does not prove |
|---|---|---|
| Canonical radial reconstruction | Three rational masses, each through level 8: 25 primary coefficients, 55 unique matrix entries and 30 unused off-diagonals | All-index truth by finite sampling |
| Generic-mass radial reconstruction | Through level 3: 6 primary coefficients, 8 matrix entries and 2 unused off-diagonals | A full symbolic sum of every Jacobi--Hahn series |
| Chiral Gram matrices | 165 checks per rational mass and 20 at generic mass | Full interacting dressed eigenvectors |
| CPS and normalized graviton modes | Seed bulk integral, corner limit, trace, and four vector ladders | A new derivation of the entire interacting gravitational phase space |
| Bulk cubic integrals | 50 generic-mass endpoint integrals, two arbitrary-mode integration-by-parts identities, five direct h:T radial integrals, five exact cutoff sums | Complete V2 or a complete bare loop |
| Number-changing constraint coefficients | 15 exact circular one-to-three resonant integrals | A brute-force scan of all noncircular channels; the general result uses the theorem |
| Initial row | 39 beta-integral and triangular-projection checks | An independent calculation of a rotating gravitational propagator |
| Crossed recurrence | Three arbitrary-index identities, three endpoints and the removable mass pole | A newly executed tensor-package derivation of its source identity |
| Homological inverse | Exact degenerate three-state BCH/Feshbach comparison and Dyson integral | An explicit three-state Einstein V2 model |
| Full even-parity blocks at Delta=2 | Character counts at E=4,6,8 and theorem-implied eigenvalues | A separately assembled raw 15-by-15 unreduced Hamiltonian |

The finite checks support the analytic proof and normalization; they are not
substituted for it. In particular the 15-state E=8 example is a consequence
of the proved normal form, not a claim that every original-basis matrix
entry has been integrated separately.

## Integration policy

Add the new note, this audit, the standalone verifier and its actual report.
Retain the existing notes and their historical scope statements. Do not remove
all prior limitations on the strength of a finite numerical check. A later
manuscript can cite the normal-form theorem to discharge the leading-order
branch-isolation caveat, while retaining its Ward/renormalization hypotheses.

The unresolved bare mass map, composite-charge construction, higher-order
energies and explicit dressed eigenvectors should remain visible. None is
silently converted into an already completed calculation by this PR.
