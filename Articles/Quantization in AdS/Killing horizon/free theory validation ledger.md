# Free-theory validation ledger

Date: 2026-07-12

## Status key

- **PASS**: checked directly in this benchmark.
- **PARTIAL**: analytic structure is fixed, but an independent representation or numerical check remains.
- **OPEN**: not yet computed.

## Ledger

| ID | Test | Evidence | Status | Consequence |
|---|---|---|---|---|
| G1 | BTZ curvature and horizon location | xCoba computed $R_{ab}$, $R$, and $R_{abcd}R^{abcd}$; Mathematica checked $\chi^2=-f$ | **PASS** | The horizon is regular and the background is locally AdS$_3$ |
| G2 | Killing and surface-gravity data | Mathematica checked $\mathcal L_\chi g=0$, $\kappa=f'(r_+)/2$, and the Kruskal metric | **PASS** | $\chi$ defines a regular bifurcate Killing flow |
| G3 | Euclidean Hawking period | Near-tip metric reduces to $d\rho^2+\kappa^2\rho^2d\tau^2$ | **PASS** | Smoothness fixes $\beta_H=2\pi/\kappa$ |
| C1 | Scalar variational principle | xAct returned $(\Box-\mu^2)\phi$ and the normal-derivative boundary term | **PASS** | Standard AdS falloff defines the free theory |
| C2 | CPS current conservation | xAct reduced the off-shell divergence identity to zero | **PASS** | $\Omega$ is conserved when the AdS flux vanishes |
| M1 | Separated radial equation | Mathematica derived the displayed radial ODE | **PASS** | Mode labels are $(\omega,m)$ |
| M2 | Exact real-frequency solution | Hypergeometric Gauss-equation residual is zero | **PASS** | Standard-boundary scattering modes are explicit |
| M3 | Generalized KG normalization | Horizon distributional normalization fixes $N_{\omega m}$ | **PASS** | $[a_{\omega m},a^\dagger_{\omega'm'}]=\delta\delta$ |
| M4 | Causal-kernel reconstruction | Two compact bumps in the $m=0,1$ sectors are weakly reconstructed with monotonically decreasing cutoff error | **PASS** | The continuous normalization and radial measure reproduce the identity on the tested functions |
| Q1 | Quasinormal-mode separation | Purely ingoing plus standard falloff gives the displayed complex poles | **PASS** | QNMs are response poles, not the CCR basis |
| H1 | Matter Killing-current conservation | Mathematica checked $\nabla_aJ_\chi^a=(P\phi)\partial_t\phi$ | **PASS** | $H_\chi$ is conserved on shell up to boundary flux |
| H2 | Hamiltonian density | Direct component calculation agrees with the positive exterior density | **PASS** | $H_R$ is the generator of $\partial_t$ |
| H3 | Horizon energy flux | Regular-coordinate contraction gives $T_{\chi\chi}=(\mathcal L_\chi\phi)^2$ | **PASS** | Exterior energy loss is a positive future-horizon flux |
| S1 | State-independent commutator | Thermal coefficients cancel from $W-W^{\rm T}$ | **PASS** | HHI and exterior ground representations share the same $E$ |
| S2 | KMS condition | $(1+n_\beta)e^{-\beta\omega}=n_\beta$ | **PASS** | The right restriction is KMS at $\beta_H$ |
| S3 | Hadamard and horizon regularity | Covering singularity is confined to the identity image; Euclidean tip is smooth | **PASS** | Renormalized local observables can be defined at the horizon |
| S4 | Equality of mode and image representations | Euclidean uniqueness plus three Euclidean and one regulated Lorentzian direct comparisons | **PASS** | The CPS mode sum and quotient image kernel are representations of the same HHI two-point function |
| L1 | Renormalized Wick square | Image sum and horizon limit evaluated explicitly | **PASS** | $\langle\phi^2\rangle_{\rm ren}$ is finite at $r=r_+$ |
| L2 | Renormalized stress tensor | Minimal point splitting, exact image-pair components, conservation, and Kruskal limits | **PASS** | The AdS-subtracted free HHI tensor is finite and regular on both horizon branches |
| L3 | Radial Born correction | Exact Matsubara-sector resolvent, Wronskian, Born equation, and six converged sector integrals | **PASS** | The first $\lambda\phi^4$ two-point correction is an explicit finite radial insertion |

## Current formalism verdict

Correct under the following precise conditions:

1. the background is the fixed, non-rotating, non-extremal BTZ geometry;
2. the scalar uses standard source-free AdS boundary conditions;
3. the exterior basis is the real-frequency self-adjoint spectral basis;
4. the thermal state is the HHI state selected by Euclidean regularity;
5. ultraviolet products are renormalized by local Hadamard or geodesic subtraction.

Not proven by the current calculations:

1. that the same canonical basis prescription works without modification in a rotating superradiant exterior;
2. that the mode/image uniqueness argument extends unchanged to every admissible mixed or alternative AdS boundary condition;
3. that the interacting order-$\lambda$ stress tensor and gravitational backreaction are finite without additional renormalization data.
