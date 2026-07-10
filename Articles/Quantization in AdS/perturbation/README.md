# Perturbation theory on fixed backgrounds

This directory develops a CPS-normalized perturbative framework for scalar fields on fixed backgrounds, with flat-space and global-AdS3 benchmarks.

## Scope and conventions

- Concrete calculations use $\hbar=1$.
- The boundary condition $\mathcal B$, boundary action, and allowed field space are part of the definition of the theory.
- The operational method is canonical quantization plus Wick contractions.
- pAQFT is used as a consistency backend for causality, off-shell identities, local counterterms, split independence, and Ward identities.
- Gauge theory, BV-BRST, and dynamical gravity are outside the present scope.

## Start here

- [Practical pipeline: CPS canonical quantization to loop corrections](<cps canonical quantization to loop corrections.md>) — the default workflow for modes, propagators, Wick diagrams, loop integrals, counterterms, and renormalized bulk or boundary observables.

## Classical companions

- [Classical companion: retarded solution maps and CPS pullback](cps-paqft-formalism/tree_cps_pipeline_note.md) — the compact classical rooted-tree and CPS-pullback workflow.
- [Diagrammatic perturbative solutions and CPS](cps-paqft-formalism/diagrammatic_perturbative_solutions_cps_note.md) — broader background on rooted trees, Green-operator recursion, and CPS pullback.
- [4d flat scalar tree/CPS benchmark](cps-paqft-formalism/flat4_phi3_phi4_tree_cps.md) — retarded $\phi^3/\phi^4$ recursion and the finite-time symplectic pullback.
- [Global AdS3 scalar tree/CPS benchmark](cps-paqft-formalism/global_ads3_interacting_scalar_tree_cps.md) — finite-time retarded trees, discrete resonances, and long-time normal forms.
- [2606.24442 higher-order CPS check](cps-paqft-formalism/2606_24442_higher_order_cps_check.md) — a kinetic/constraint toy-model normalization benchmark.

## pAQFT consistency backend

- [CPS-pAQFT consistency backend](cps-paqft-formalism/cps_paqft_complete_formalism_v1.md) — the main off-shell algebra, renormalization, PPA, and Ward-consistency reference.
- [Detailed pAQFT conceptual companion](cps-paqft-formalism/cps_paqft_quantum_perturbation_formalism.md) — expanded definitions and benchmark feedback.
- [Completion audit](cps-paqft-formalism/cps_paqft_goal_completion_audit.md) — precise evidence levels and remaining in-scope checks.

## Flat-space benchmarks

- [Tree scattering benchmark](cps-paqft-formalism/flat4_phi3_phi4_paqft_check.md)
- [Quantum EOM and Schwinger-Dyson benchmark](cps-paqft-formalism/flat4_phi3_phi4_quantum_eom_ward_check.md)
- [Translation Ward and balance-law benchmark](cps-paqft-formalism/flat4_phi3_phi4_stress_tensor_charge_check.md)
- [Complex-scalar $U(1)$ benchmark](cps-paqft-formalism/flat4_complex_phi4_u1_current_check.md)
- [ABJ background-field illustration](cps-paqft-formalism/flat4_abj_anomaly_cps_paqft_check.md) — a separate anomaly example, not part of the scalar completion claim.

## Global-AdS3 loop and boundary examples

- [$\phi^4$ tadpole](cps-paqft-formalism/global_ads3_phi4_tadpole_embedding_check.md) — local mass renormalization and fixed-$\Delta$ versus shifted-$\Delta_R$ schemes.
- [$\phi^3$ bubble](cps-paqft-formalism/global_ads3_phi3_bubble_embedding_check.md) — nonlocal spectral self-energy.
- [Boundary source and response](cps-paqft-formalism/global_ads3_scalar_boundary_source_setup.md) — normalizable CPS data, independent asymptotic radial data, the regular Euclidean solution graph, and boundary extraction.

## Keep these layers separate

1. $G_R^{\mathcal B}$ and $G_A^{\mathcal B}$ solve causal classical problems; $E^{\mathcal B}=G_R^{\mathcal B}-G_A^{\mathcal B}$ fixes the bracket and commutator; $G_F^{\mathcal B}$ and $G_E^{\mathcal B}$ are quantum or Euclidean contractions.
2. A nonzero asymptotic radial symplectic form lives on independent $(\phi_{(0)},\phi_{(\Delta)})$ data; its pullback to the regular Euclidean Dirichlet graph vanishes.
3. A local Ward identity and an integrated balance law do not prove that a global interacting charge exists.
4. Fixed physical $\Delta$ and retained finite mass shift are alternative renormalization schemes.
