# Claim ledger

Statuses are deliberately non-interchangeable. “PROVED” always means under the hypotheses in the final column.

| Claim | Status | Evidence | Hypotheses / boundary |
|---|---|---|---|
| Explicit tetrad, spin connection, and Dirac operator | PROVED | direct Cartan/coordinate derivation; zero Mathematica residual | diagonal tetrad patch, torsion free |
| Asymptotic roots $\Delta_\pm=3/2\pm m$ and outward projector assignment | PROVED | direct indicial equation | power-law expansion |
| First subleading coefficients with denominators $1\mp2m$ | PROVED | direct recursion; symbolic check | $m\neq1/2$ |
| Independent $\alpha,\beta$ off shell; relation only on shell | LITERATURE-SUPPORTED | Henneaux plus explicit configuration-space definition | regularity not imposed off shell |
| Both Cauchy branches normalizable iff $|m|<1/2$ | PROVED | radial integral power count | standard Dirac inner product |
| Symmetric bulk action is finite off shell | PROVED | conformal power count $d\Omega\,\Omega^{-2m}$ | derivative-controlled field space, $0<m<1/2$ |
| No extra divergence counterterm is needed in the open interval | PROVED | same power count; $C_R$ finite | chosen field space only |
| $+C_R$ fixes slow data and $-C_R$ fixes fast data | PROVED | complete finite-cutoff variation; coefficient regression | outward-normal convention |
| Standard/alternative variational principles are well posed | PROVED | radial variation vanishes for allowed source variations | pure fixed source, $0<m<1/2$ |
| Physical CPS is even graded, not BV odd | PROVED | parity construction from action | classical Grassmann-odd fields |
| $\Omega_\Sigma$ is finite | PROVED | Cauchy radial power count | pure standard or alternative data |
| Radial graded symplectic flux vanishes | PROVED | boundary cross-pairing | tangent variations obey same pure BC |
| Cauchy-surface independence of $\Omega$ | PROVED | conserved current plus zero flux | full linearized Dirac equation |
| Kosmann action preserves each pure boundary condition | PROVED | boundary conformal-spinor transformation | exact AdS Killing field |
| Boundary-complete $Q_\xi=X_\xi\cdot\theta-\alpha_\xi$ including polarization corner | PROVED | source-extended off-shell Noether identity | fixed AdS vielbein and varied regulator embedding |
| $Q_\xi$ is finite | PROVED | normalizability and $R^{-1\mp2m}$ corner estimates | $0<m<1/2$, source free |
| $Q_\xi$ is conserved | PROVED | on-shell current divergence and zero radial charge flux | exact Killing field |
| $\iota_{X_\xi}\Omega=-\delta Q_\xi$ | PROVED | finite-cutoff variation with corner cancellation | allowed tangent variations and limiting regulator |
| Pure-extension radial Hamiltonians are positive and self-adjoint | LITERATURE-SUPPORTED | Amsel--Marolf reduction to positive self-adjoint extensions | standard inner product; full domain proof not repeated |
| Jacobi radial functions solve the partner ODEs | PROVED | Jacobi differential equation; twelve exact Mathematica regressions covering both signs of $\kappa$ | regular origin, pure BC |
| Standard frequencies are $E=\Delta_++N$ | PROVED | polynomial truncation and first-order coupling | $N\in\mathbb N_0$ |
| Alternative frequencies are $E=\Delta_-+N$ | PROVED | $m\mapsto-m$, $\gamma_5$ map; symbolic branch check | four bulk dimensions, parity relabelled |
| Displayed radial normalization constant gives unit norm | PROVED | Jacobi orthogonality; exact component sums | normalized spinor harmonics |
| The displayed modes form a complete basis | LITERATURE-SUPPORTED | spectral/self-adjoint extension literature | pure extension domain |
| Positive mode inner product | PROVED | explicit sum of positive radial squares | pure modes, $0<m<1/2$ |
| Inverse even symplectic form gives graded brackets and CAR | PROVED | block inversion and one-mode matrix check | positive-energy mode splitting |
| CAR algebra determines a unique Fock representation | OPEN | not true without additional representation hypotheses | infinite number of modes |
| Global positive-energy choice defines the stated Fock representation | PROVED | discrete positive spectrum and normalized basis | selected global vacuum |
| One-particle modules are $D(\Delta_\pm,1/2)$ | PROVED | lowest state, all $K$-types, multiplicities, boundary weight, Casimir | completeness input as above |
| Quantum $SO(2,3)$ generators are normal-ordered bilinears | PROVED | fermionic second-quantization construction | free theory |
| $m=0$ mixed polarizations are fully classified | OPEN | only candidate flux-compatible relations recorded | requires parity/chirality audit |
| Ordinary alternative norm fails at $m=1/2$ | PROVED | radial density becomes $dr/r$ | unrenormalized standard inner product |
| A renormalized endpoint realizes the Di singleton | OPEN | representation label tends to $D(1,1/2)$ only | action, norm, quotient unproved |

## Automated checks

Run from the project directory:

```sh
wolframscript -file verification/geometry-and-asymptotics.wl
wolframscript -file verification/polarization-and-car.wl
wolframscript -file verification/modes-and-representation.wl
```

All three scripts must print only `True` values and exit with status zero.
