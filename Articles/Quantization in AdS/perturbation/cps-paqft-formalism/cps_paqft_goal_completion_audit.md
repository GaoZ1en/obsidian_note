# CPS-pAQFT formalism goal completion audit

日期：2026-07-09

## 0. Direct verdict

The current notes now define a practical fixed-background scalar pipeline and a separate CPS-pAQFT consistency backend. They do not constitute a completed construction of interacting global charges or boundary-renormalized pAQFT on AdS.

Concrete scalar calculations use $\hbar=1$ and are routed through `../cps canonical quantization to loop corrections.md`. Boundary conditions and boundary actions are theory data. Gauge theory, BV-BRST, and gravity are outside the present scope rather than unfinished gates of this audit.

## 1. Requirements extracted from the current goal

The current objective requires:

1. Make `../cps canonical quantization to loop corrections.md` the operational calculation pipeline.
2. Treat pAQFT as a conceptual and consistency backend rather than a mandatory calculation stage.
3. Use $\hbar=1$ in concrete examples while keeping any explicit $\hbar$ only as formal loop grading.
4. Treat the boundary condition $\mathcal B$ as part of the definition of the theory.
5. Modify general statements according to what each concrete example actually establishes.
6. Defer gauge theory, BV-BRST, and gravity.

## 2. Evidence table

| Requirement | Evidence | Verdict |
| --- | --- | --- |
| Operational calculation chain | `../cps canonical quantization to loop corrections.md` now starts from $(M,g,S,\mathcal B)$ and runs through CPS-normalized modes, state, $G_F^{\mathcal B}$ or $G_E^{\mathcal B}$, Wick contractions, counterterms, and renormalized observables. | Implemented for the fixed-background scalar examples covered by that note. |
| pAQFT responsibility | `cps_paqft_complete_formalism_v1.md` and `cps_paqft_quantum_perturbation_formalism.md` identify themselves as consistency backends and point calculations to the canonical/Wick pipeline. | Responsibility split implemented. |
| Off-shell/on-shell EOM | The backend and `flat4_phi3_phi4_quantum_eom_ward_check.md` use $R_V(S_0^{(1)}(f)+V^{(1)}(f))=S_0^{(1)}(f)$ off shell and set the right-hand side to zero only in the free-EOM quotient. | Formulated consistently with the stated Bogoliubov-map convention. |
| Split and finite-renormalization consistency | The backend records PPA for moving a boundary-compatible quadratic term between $S_0$ and $V$, and the local Stueckelberg-Petermann finite-renormalization freedom. | Formulated as an audit condition; not yet checked by an explicit AdS comparison calculation. |
| 4d $\phi^3/\phi^4$ scattering | `flat4_phi3_phi4_paqft_check.md` records the standard tree amplitude. | Analytically derived in that benchmark; no new machine check is claimed here. |
| Correlator and loop layer | The canonical pipeline and dedicated AdS tadpole/bubble notes derive Wick contractions, symmetry factors, local mass renormalization, and spectral reduction. | Implemented for the displayed examples; not a general all-loop construction. |
| Translation Ward/charge layer | `flat4_phi3_phi4_stress_tensor_charge_check.md` verifies the free CPS generator and gives the switched local Ward identity and balance law. | Free generator verified; interacting global charge conditional on adiabatic, infrared, domain, finiteness, and flux assumptions. |
| Internal $U(1)$ layer | `flat4_complex_phi4_u1_current_check.md` verifies the free CPS generator and diagrammatic charge-flow rule and records the anomaly-free Ward normalization. | Free generator and selection rule verified; interacting current counterterm and integrated charge not explicitly constructed. |
| AdS boundary source/response | `global_ads3_scalar_boundary_source_setup.md` separates independent asymptotic radial data from the regular Euclidean solution graph and distinguishes fixed-$\Delta$ from shifted-$\Delta_R$ extraction. | Structural distinction implemented; boundary-compatible renormalized products remain open. |
| CPS role | The notes use $\Omega^{-1}=E$, CPS mode normalization, $p_g^*\Omega_g$, and $\delta Q=\iota_X\Omega$ as inputs and checks. | Verified in the free/classical layers; interacting charge existence remains separate. |
| Scope boundary | BV/gravity sections are labeled deferred and are excluded from current completion criteria. | Implemented. |

## 3. Current consistency checks

The notes are mutually consistent in the following precise sense:

1. Retarded rooted trees belong to the classical solution-map branch; $G_F$ and $G_E$ belong to time-ordered or Euclidean correlator branches.
2. Concrete loop calculations set $\hbar=1$ and track coupling order and graph loop number separately.
3. The pAQFT equation of motion is nonzero off shell and vanishes only after the free-EOM quotient.
4. Composite-operator equations are renormalized identities, not bare pointwise equations.
5. Local Ward identities, integrated balance laws, and existence of global charges are distinct claims.
6. The nonzero asymptotic radial two-form lives on independent $(\phi_{(0)},\phi_{(\Delta)})$ data, while its pullback to the regular Euclidean Dirichlet graph vanishes.
7. A one-loop mass shift either changes $\Delta_R$ or is canceled by a fixed-physical-$\Delta$ renormalization condition; the two branches are not combined.

## 4. Completion boundary

The achieved result is

$$\begin{align}
\boxed{\text{practical CPS-normalized scalar loop pipeline}\quad+\quad\text{separate pAQFT consistency backend}.}
\end{align}$$

The remaining in-scope research tasks are:

1. construct boundary-compatible renormalized products for a chosen AdS scalar boundary condition;
2. perform an explicit PPA/split-independence comparison for AdS mass resummation;
3. prove existence, domain, infrared, and flux conditions in any example claiming an interacting global charge;
4. connect the global AdS resonant normal form to the canonical loop pipeline.

Gauge theory, BV-BRST, and gravity are deferred outside this scope.
