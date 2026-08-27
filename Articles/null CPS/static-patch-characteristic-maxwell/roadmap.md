# Roadmap and Dependency Gates

## Non-negotiable order

$$
\text{action}
\to\text{raw null pullback}
\to\text{constraints/corners}
\to\text{proper gauge}
\to\text{bulk reconstruction}
\to\text{symplectic equivalence}
\to\text{Peierls/algebra}
\to\text{state}.
$$

B1 phase-space/algebraic reconstruction precedes B2 state choice. No formal partial trace, sharp Hilbert tensor factorization, or density matrix defines the static-patch theory.

## Phase A — first-round classical core

### A0 Geometry and claims — closed

Deliverable: `calculations/00-geometry-conventions-and-claims.md`.

Exit evidence:

- exact static/Kruskal coordinate map;
- horizon and corner orientations;
- smooth-center, energy, infrared, endpoint, and gauge policies;
- scoped T1--T5 targets.

### A1 Raw horizon CPS — closed

Deliverable: `calculations/01-raw-horizon-cps-and-constraints.md`.

Exit evidence:

- $\theta=-\delta A\wedge*F$ and raw pullbacks;
- generator constraints separated from bulk evolution;
- corner integrations and $j=0$ fluxes retained before bulk regularity;
- proper, charged-endpoint, and relative-frame notions separated.

### A2 Action master reduction — closed

Deliverable: `calculations/02-action-level-master-reduction.md`.

Exit evidence:

- electric/magnetic vector-harmonic action reduction without gauge fixing;
- electric parent action with boundary divergence;
- complete $F\leftrightarrow\Psi^{E/B}$, potential, symplectic, Hamiltonian, and duality dictionaries;
- exact $j=1,2,3$ regression.

### A3 Half-line scattering and reconstruction — closed

Deliverable: `calculations/03-half-line-scattering-and-reconstruction.md`.

Exit evidence:

- Friedrichs domain, spectrum, and zero-energy classification;
- Darboux regular modes and exact $S_j(\omega)$;
- T1 on the smooth core and infrared-controlled completion;
- phase, Wronskian, reconstruction, and normalization regressions.

## Phase B1 — classical/algebraic closure

### B1.1 Full symplectic restriction — closed

Deliverable: `calculations/04-symplectic-restriction-and-normalization.md`.

Exit evidence:

$$
R_-^*\Omega_-=\Omega_{\rm bulk}
$$

on the smooth spectral core and CPS completion, with finite characteristic
triangles, the electric cut term, proper-gauge degeneracies, endpoint limits,
future scattering sign, angular normalization, and exact $j=1,2,3$ regression
all explicit.

### B1.2 Weyl/CCR/Fock/Hamiltonian — closed

Deliverable: `calculations/05-weyl-fock-hamiltonian.md`.

Exit evidence: weakly nondegenerate real symplectic space, Weyl algebra,
compatible positive static complex structure, regular Fock representation,
positive self-adjoint $H_{\partial t}$, vanishing anomalous terms, and a unitary
Fock scattering implementer. This constructs the static representation; it
does not select Bunch--Davies.

### B1.3 Peierls equality — closed

Deliverable: `calculations/06-peierls-and-causal-propagator.md`.

Exit evidence: normalized master retarded/advanced kernels, explicit compact
field-strength test quotient and adjoint dictionary, covariant gauge-independent
Maxwell lift, characteristic inverse equality, and passing spacelike-vanishing
regression. Endpoint-memory observables remain outside this theorem.

## Phase B2 — state choice

### B2.1 Bunch--Davies KMS — closed

Deliverable: `calculations/07-bunch-davies-kms.md`.

Exit evidence: global Euclidean/affine-horizon definition on the local
gauge-invariant characteristic algebra, exact Mellin normalization,
$\beta_t=2\pi L$ strip/detailed-balance proof, and an explicit demonstration
that the larger CPS completion needs extra infrared control. No density matrix
or sharp tensor factor is used.

### B2.2 Endpoint, memory, topology — closed

Deliverable: `calculations/08-zero-modes-memory-and-topology.md`.

Exit evidence: unique radiative/cut/memory trace decomposition with finite
symplectic pairing; exact separation from $j=0$ flux, large gauge, relative
frames, soft radiative families, and generic energy-only infrared data; and a
coordinate-level reconciliation with the 2025 complete-horizon zero-memory
theorem. T4 is proved on the declared stratified spaces; maximal energy-only
point-trace reconstruction is false, while the maximal smooth-center bulk
range inside the separately topologized trace space remains conditional.

## Phase C — comparison only after the main chain

### C1 Stretched horizon — closed

Deliverable: `calculations/09-stretched-horizon-comparison.md`.

Entry gate: T1--T4 closed. Compute modewise Dirichlet-to-Neumann kernels and edge-Hamiltonian scaling, then test rather than assume

$$
\lim_{R\to L}\operatorname{Red}(\mathcal P_R^{\rm ext})
\stackrel{?}{=}
\operatorname{Red}\!\left(\lim_{R\to L}\mathcal P_R^{\rm ext}\right).
$$

Exit evidence: exact Legendre-$Q_j$ edge DtN kernel, inverse-log edge energy,
real-frequency non-limit and limiting-absorption statements for the radiative
DtN, exact DEM-to-$B$-cut symplectic map, and the explicit
$T^*\mathcal G_B'$ mismatch for the default direct-null policy.

## Publication gate

T1--T4 are proved at their scoped function-space level, but the literature
audit does not leave a sufficiently strong first-in-literature claim. Preserve
this as calibration and pivot according to the README stop rule.
