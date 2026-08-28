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

### A0 Geometry and claim split — repaired

Deliverable: `calculations/00-geometry-conventions-and-claims.md`.

Exit evidence:

- exact static/Kruskal coordinate map;
- horizon and corner orientations;
- smooth-center, energy, infrared, endpoint, and gauge policies;
- scoped `T1-log/T1-aff`, `T2-log/T2-aff`, `T3-local/T3-sharp`,
  `T4-kin/T4-bulk`, and `T5-W*/T5-C*` targets.

### A1 Raw horizon CPS — closed in the fixed trivial-bundle sector

Deliverable: `calculations/01-raw-horizon-cps-and-constraints.md`.

Exit evidence:

- $\theta=-\delta A\wedge*F$ and raw pullbacks;
- generator constraints separated from bulk evolution;
- corner integrations and $j=0$ fluxes retained before bulk regularity;
- proper, charged-endpoint, and relative-frame notions separated.
- $r_A^{\rm aff}=F_{VA}$ separated from
  $\mathfrak r_A=F_{vA}$;
- zero magnetic Chern mean imposed for the global-potential tangent space;
  patchwise nonzero sectors deferred.

### A2 Action master reduction — closed

Deliverable: `calculations/02-action-level-master-reduction.md`.

Exit evidence:

- electric/magnetic vector-harmonic action reduction without gauge fixing;
- electric parent action with boundary divergence;
- complete $F\leftrightarrow\Psi^{E/B}$, potential, symplectic, Hamiltonian, and duality dictionaries;
- exact $j=1,2,3$ regression.

### A3 Half-line scattering and reconstruction — `T1-log` closed, `T1-aff` open

Deliverable: `calculations/03-half-line-scattering-and-reconstruction.md`.

Exit evidence:

- Friedrichs domain, spectrum, and zero-energy classification;
- Darboux regular modes and exact $S_j(\omega)$;
- `T1-log` on the smooth core and infrared-controlled completion;
- `T1-aff(k)` finite-order two-ended criterion in `10`;
- maximal completed `T1-aff` remains `conditional`;
- phase, Wronskian, reconstruction, and normalization regressions.

## Phase B1 — classical/algebraic closure

### B1.1 Symplectic restriction — `T2-log` closed, `T2-aff` open

Deliverable: `calculations/04-symplectic-restriction-and-normalization.md`.

Exit evidence:

$$
R_-^*\Omega_-=\Omega_{\rm bulk}
$$

on the smooth logarithmic spectral core and CPS completion, with finite characteristic
triangles, the electric cut term, proper-gauge degeneracies, endpoint limits,
future scattering sign, angular normalization, and exact $j=1,2,3$ regression
all explicit.  Endpoint-extended equality must additionally fix
$\theta\mapsto\theta+dY+\delta B$, the boundary action, and polarization;
`T2-aff` remains conditional on `T1-aff`.

### B1.2 Weyl/CCR/Fock/Hamiltonian — closed

Deliverable: `calculations/05-weyl-fock-hamiltonian.md`.

Exit evidence: weakly nondegenerate real symplectic space, Weyl algebra,
compatible positive static complex structure, regular Fock representation,
positive self-adjoint $H_{\partial t}$, vanishing anomalous terms, and a unitary
Fock scattering implementer. This constructs the static representation; it
does not select Bunch--Davies.

### B1.3 Peierls equality — `T3-local` closed

Deliverable: `calculations/06-peierls-and-causal-propagator.md`.

Exit evidence: normalized master retarded/advanced kernels, explicit compact
field-strength test quotient and adjoint dictionary, the compact-source/test-
complex exactness lemma of `11`, covariant gauge-independent Maxwell lift,
characteristic inverse equality, and passing spacelike-vanishing regression.
`T3-sharp` endpoint-memory observables remain conditional.

## Phase B2 — state choice

### B2.1 Bunch--Davies KMS — split and closed in the repaired scope

Deliverable: `calculations/07-bunch-davies-kms.md`.

Exit evidence: global Euclidean/affine-horizon definition on the local
gauge-invariant characteristic algebra, exact Mellin normalization,
$\beta_t=2\pi L$ strip/detailed-balance proof, `T5-W*` on the normal BD GNS
von Neumann algebra, the dense analytic `T5-C*` boundary relation, and an
explicit demonstration that the larger CPS completion needs extra infrared
control.  Point-norm continuous abstract Weyl dynamics is false.  No density
matrix or sharp tensor factor is used.

### B2.2 Endpoint, memory, topology — `T4-kin` closed, `T4-bulk` open

Deliverable: `calculations/08-zero-modes-memory-and-topology.md`.

Exit evidence for `T4-kin`: unique fixed-switch radiative/$\widehat a$/memory
trace decomposition with finite symplectic pairing and explicit switch shear;
exact separation from $j=0$ flux, large gauge, relative
frames, soft radiative families, and generic energy-only infrared data; and a
coordinate-level reconciliation with the 2025 complete-horizon zero-memory
theorem.  Maximal energy-only point-trace reconstruction is false.  `10`
proves a finite-order smooth subrange, while maximal `T4-bulk` remains
conditional.

## Phase C — comparison only after the main chain

### C1 Stretched horizon — DtN/cut closed, `E-limit` open

Deliverable: `calculations/09-stretched-horizon-comparison.md`.

Entry gate: the logarithmic chain is closed. Compute modewise
Dirichlet-to-Neumann kernels and edge-Hamiltonian scaling, then test rather
than assume

$$
\lim_{R\to L}\operatorname{Red}(\mathcal P_R^{\rm ext})
\stackrel{?}{=}
\operatorname{Red}\!\left(\lim_{R\to L}\mathcal P_R^{\rm ext}\right).
$$

Proved evidence: exact Legendre-$Q_j$ edge DtN kernel, inverse-log edge energy,
real-frequency non-limit and limiting-absorption statements for the radiative
DtN, strong-resolvent radiative limit, and exact finite-harmonic DEM-to-$B$-cut
coefficient form.  The completed phase-space comparison `E-limit` remains
conditional until a common ambient topology, symplectic/reduction convergence,
affine bulk range, and global-versus-linearized $U(1)$ frame are supplied.

## Publication gate

The logarithmic chain, `T3-local`, `T4-kin`, and `T5-W*` are proved at their
scoped levels, but the maximal affine chain is not.  Continue only the
`T1-aff/T4-bulk` kill test.  If the two-ended $S_j$-dependent condition does
not become a nontrivial completed Mellin--Hardy range theorem, preserve this
as calibration and pivot according to the README stop rule.
