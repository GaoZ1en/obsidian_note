# CPS-pAQFT formalism goal completion audit

日期：2026-07-09

## 0. Direct verdict

Correct under the following precise scope:

The current goal is complete for a v1 scalar/global-symmetry CPS-pAQFT formalism validated against 4d flat \(\phi^3/\phi^4\) scattering, correlators, Schwinger-Dyson identities, and charge/Ward checks.

It is not a claim that dynamical gauge theory, perturbative gravity, or AdS boundary renormalization has been fully constructed. Those are next-stage gates and are explicitly labeled as such in `cps_paqft_complete_formalism_v1.md`.

## 1. Requirements extracted from the goal

The active objective requires:

1. Write a complete formalism, not only a classical tree algorithm.
2. Test it with 4d flat \(\phi^3/\phi^4\) scattering or another correlator.
3. Feed the test results back into the formalism until it is consistent and usable.
4. Make CPS structures, especially the symplectic form, play a real role.
5. Keep the result honest about what remains outside the completed scope.

## 2. Evidence table

| Requirement | Evidence | Verdict |
| --- | --- | --- |
| Complete object chain | `cps_paqft_complete_formalism_v1.md` defines CPS data, Peierls kernel, \(\star_H\)-algebra, \(T_n^{\rm ren}\), \(S(V)\), \(R_V(F)\), classical tree limit, symplectic normalization, charges, Ward identities, BV-BRST caveat, and boundary/AdS caveat. | Proven for v1 scalar/global-symmetry scope. |
| 4d \(\phi^3/\phi^4\) scattering test | `flat4_phi3_phi4_paqft_check.md` derives the standard tree amplitude \(\mathcal M_4^{\rm tree}=-g_4-g_3^2[(s-m^2)^{-1}+(t-m^2)^{-1}+(u-m^2)^{-1}]\). | Proven. |
| Correlator / loop-layer test | `flat4_phi3_phi4_quantum_eom_ward_check.md` checks Schwinger-Dyson form, \(\phi^4\) tadpole, \(\phi^3\) bubble, and renormalized composite-field EOM. | Proven at schematic pAQFT/Feynman-rule level. |
| Ward / charge test | `flat4_phi3_phi4_stress_tensor_charge_check.md` checks \(\delta P_\xi=\iota_{X_\xi}\Omega\) becomes the \(\star\)-commutator generator of translations and records the switching-function Ward term. | Proven for flat scalar translations. |
| Internal symmetry test | `flat4_complex_phi4_u1_current_check.md` checks the complex scalar \(U(1)\) charge, CPS normalization, Ward identity, and charge-flow selection rule. | Proven for simplest non-anomalous internal current. |
| Anomaly slot is meaningful | `flat4_abj_anomaly_cps_paqft_check.md` checks the ABJ anomaly as a real nonzero \(\mathcal A_\lambda\) at background-field level. | Proven as anomaly-layer example, not as full dynamical gauge theory. |
| Feedback into formalism | `cps_paqft_complete_formalism_v1.md` now includes the refinements forced by checks: \(V\)-sign convention, \(\Omega\Rightarrow E\) but not \(H\), classical rooted trees versus time-ordered Feynman trees, switching/adiabatic limits, renormalized composite fields, and charge/Ward current renormalization. | Proven. |
| CPS is not decorative | The v1 note and checks use \(\Omega^{-1}=E\), \([\Phi(f),\Phi(g)]_\star=i\hbar E(f,g)\), \(p_g^*\Omega_g=\Omega_0\), and \(\delta Q=\iota_X\Omega\) as normalization and consistency conditions. | Proven. |
| Remaining scope is honest | The v1 note labels full BV-BRST gauge/gravity, AdS boundary \(T_n^{\rm ren}\), edge modes, and gravitational charge checks as next-stage gates. | Proven. |

## 3. Current consistency checks

The final v1 formalism is consistent with the flat checks in the following sense:

1. The retarded classical solution is exactly \(R_V(F)|_{\hbar^0}\).
2. The same \(S(V)\) gives standard tree-level \(\phi^3/\phi^4\) scattering.
3. Loops are not inserted into the classical tree map; they arise from \(T_n^{\rm ren}\) and \(\star\)-contractions.
4. Composite operator equations are renormalized identities, not bare pointwise equations.
5. Charges are normalized by the CPS relation \(\delta Q=\iota_X\Omega\), then implemented as \(\star\)-commutators.
6. Anomalies live in the Ward identity layer, not in the classical solution map.

## 4. Completion boundary

The achieved result is:

\[
\boxed{
\text{usable v1 CPS-based pAQFT formalism for scalar/global-symmetry perturbation theory}
}
\]

with tested flat-space \(\phi^3/\phi^4\) scattering/correlators and explicit CPS normalization.

The not-yet-achieved next phase is:

1. full BV-BRST implementation for dynamical gauge theory and gravity;
2. boundary-compatible \(T_n^{\rm ren}\) in AdS;
3. edge/corner charge algebra and anomaly calculations;
4. long-time global AdS resonant normal form connected to the quantum \(R_V\) layer;
5. off-shell perturbative gravitational CPS charge examples.
