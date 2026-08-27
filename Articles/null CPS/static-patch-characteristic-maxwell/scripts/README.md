# Regression Scripts

## Environment

The first-round suite was run with:

- Mathematica 14.3;
- Python 3.14.7;
- NumPy 2.5.2.

No third-party Python package beyond NumPy is required.

## Usage

Run from the project root:

```bash
wolframscript -file scripts/geometry_hodge_checks.wl
wolframscript -file scripts/maxwell_master_reduction.wl
python3 scripts/scattering_phase_checks.py
wolframscript -file scripts/symplectic_normalization.wl
wolframscript -file scripts/fock_hamiltonian_checks.wl
python3 scripts/peierls_kernel_checks.py
wolframscript -file scripts/kms_mellin_checks.wl
python3 scripts/memory_sector_checks.py
python3 scripts/stretched_horizon_checks.py
```

Every script exits nonzero if a declared check fails.

## `geometry_hodge_checks.wl`

Coverage:

- static-to-$\rho$ metric and determinant;
- $R=12/L^2$ by an independent component curvature calculation;
- Kruskal two-metric and sphere radius;
- general double-null determinant and Lorentzian $*^2=-1$;
- raw past/future horizon pullbacks of $\theta=-\delta A\wedge*F$;
- the fixed field-space ordering of the past/future raw symplectic currents;
- all four Maxwell/Bianchi transport equations from generic component functions and a coordinate-dependent double-null lapse.

Success marker:

```text
ALL GEOMETRY/HODGE CHECKS PASSED
```

## `maxwell_master_reduction.wl`

Coverage for $j=1,2,3$, using exact symbolic arithmetic:

- scalar/exact/coexact vector-harmonic identities;
- direct angular integration of the original electric and magnetic Maxwell action;
- electric parent elimination and its retained divergence;
- every Maxwell and Bianchi component after imposing the master equation;
- optional $q_E=0$ potential reconstruction;
- electromagnetic duality and $*^2=-1$.

Success marker:

```text
ALL MAXWELL MASTER-REDUCTION CHECKS PASSED
```

The script can take roughly one to two minutes because it performs exact spherical integrations.

## `scattering_phase_checks.py`

Coverage:

- Darboux polynomial realization of $\mathcal L_j$;
- product phase versus an independent Lanczos complex-Gamma evaluation;
- unit modulus;
- Schrödinger residuals for $j=1,2,3$;
- unit incoming and exact outgoing amplitudes;
- normalized Jost Wronskian and its radial constancy;
- Gaussian wave-packet incoming-to-bulk-to-outgoing reconstruction;
- bulk spectral energy versus past-horizon flux;
- preservation of the reduced spectral symplectic form.

The numerical thresholds are printed on every run and are also recorded in calculation `03`. Success marker:

```text
ALL HALF-LINE SCATTERING CHECKS PASSED
```

## `symplectic_normalization.wl`

Coverage for $j=1,2,3$, using exact symbolic arithmetic:

- the convention $\omega=\delta_2\theta[\delta_1]-\delta_1\theta[\delta_2]$
  against $\delta q\wedge\delta p$;
- the unreduced electric bulk form, including its cut derivative;
- past and future raw Maxwell/master identities for both polarizations;
- affine-coordinate, $L$, and $\lambda_j$ cancellation;
- null-coordinate orientation Jacobian;
- Fourier $2\pi$ cancellation and the factor $4$ in the spectral form;
- smooth-center cut vanishing for $j=1,2,3$.

Success marker:

```text
ALL SYMPLECTIC NORMALIZATION CHECKS PASSED
```

## `fock_hamiltonian_checks.wl`

Coverage:

- compatibility, positivity, and CPS continuity of the static complex
  structure;
- the one-particle normalization $2\operatorname{Im}\langle Kx,Ky\rangle
  =\Omega(x,y)$;
- equality of the classical energy with
  $\langle Kc,h_\tau Kc\rangle$ and the physical $L^{-1}$ factor;
- exact cancellation of $aa$ and $a^\dagger a^\dagger$ terms;
- the mixed oscillator coefficient and normal-ordering constant;
- one-particle unitarity and energy commutation of $S_j$ for $j=1,2,3$.

Success marker:

```text
ALL FOCK/HAMILTONIAN CHECKS PASSED
```

## `peierls_kernel_checks.py`

Coverage for $j=1,2,3$:

- Darboux eigenfunction residuals entering the causal kernel;
- the smeared equal-time jump of the advanced-minus-retarded kernel;
- Peierls spectral normalization versus the characteristic form;
- the $-\tfrac14\operatorname{sgn}(v-v')$ horizon inverse on zero-mean
  profile smearings;
- causally separated compact source packets, cutoff-tail control, and a
  timelike nonzero control.

The script imports only the local Darboux helpers from
`scattering_phase_checks.py` and otherwise requires NumPy. The observed
errors and thresholds are recorded in calculation `06`. Success marker:

```text
ALL PEIERLS KERNEL CHECKS PASSED
```

## `kms_mellin_checks.wl`

Coverage:

- regulated Mellin transforms and their affine boundary factors;
- exact Bogoliubov $\beta/\alpha$ ratio;
- imaginary-Gamma and log-frequency delta normalization;
- Planck occupation, detailed balance, and coth covariance;
- affine-to-static derivative correlator and imaginary $2\pi$ periodicity;
- conversion to $\beta_t=2\pi L$ and the zero-frequency covariance limit.

Success marker:

```text
ALL KMS/MELLIN CHECKS PASSED
```

## `memory_sector_checks.py`

Coverage:

- the finite trace-space symplectic integral versus its canonical
  radiative/cut/memory splitting;
- constant--memory unit pairing and the average/relative endpoint-frame
  identity;
- $O(1)$ CPS norm and $O(\epsilon)$ energy for soft radiative packets;
- finite energy and logarithmic CPS divergence for a regulated $1/\omega$
  memory coefficient;
- the $j=1,2,3$ harmonic coefficients of the integrated Maxwell/Bianchi
  transport laws.

Success marker:

```text
ALL MEMORY-SECTOR CHECKS PASSED
```

## `stretched_horizon_checks.py`

Coverage for $j=1,2,3$:

- the exact Legendre-$Q_j$ DEM edge solution and radial ODE;
- positivity and the harmonic-number asymptotic of the edge DtN kernel;
- inverse-log edge-Hamiltonian scaling;
- the radiative master DtN scattering asymptotic;
- upper-half-plane limiting absorption and a real-frequency non-limit control;
- the normalized finite-wall edge/direct-null cut coefficient map.

Success marker:

```text
ALL STRETCHED-HORIZON CHECKS PASSED
```

## Claim boundary

These scripts check only their listed algebraic identities and finite numerical
samples. In particular, the symplectic script does not prove Stokes limits,
density, or the proper-gauge kernel; those are the written arguments in `04`.
The suite does not by itself prove a maximal Goursat theorem, operator
self-adjointness, Peierls equality, KMS, or novelty.

## Deferred script names

No placeholder script is listed as evidence. A later calculation must add and
pass its regression before the README records it.
