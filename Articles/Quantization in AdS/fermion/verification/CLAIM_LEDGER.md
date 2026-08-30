# Claim ledger

Statuses are deliberately non-interchangeable. “PROVED” always means under the hypotheses in the final column. An automated algebraic identity or sample residual is recorded as a regression check in the evidence column; it is not promoted to an analytic proof merely because the check passes.

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
| Boundary-complete $Q_\xi=X_\xi\cdot\theta-\alpha_\xi$ including polarization corner | PROVED | explicit finite-$R$ $\beta_{\xi,R}^s=\int_{\Gamma_R}\sqrt{-\gamma}\,\chi_\xi(\mathcal L_D+\nabla_nq_s+K_Rq_s)$ and action-derived $Q_{\xi,R}^s$ in Section 05 | fixed AdS vielbein, exact Killing field, and source-extended regulator embedding |
| $Q_\xi$ is finite | PROVED | explicit $R^{-1-2m}$ / $R^{-1+2m}$ wall and corner estimates | $0<m<1/2$, source free |
| $Q_\xi$ is conserved | PROVED | complete finite-$R$ identity $Q_f-Q_i=\beta_{\xi,R}^s-\int_{\Gamma_R}\sqrt{-\gamma}\,\mathfrak b_R^s(X_\xi)$ and zero limiting flux | exact Killing field and pure source-free BC |
| $\iota_{X_\xi}\Omega=-\delta Q_\xi$ | PROVED | explicit corner contractions, embedding remainder, and finite-$R$ boundary remainder $\int_{S_R^2}\sqrt h(\tau\cdot\xi)\mathfrak b_R^s(\delta)$ | allowed tangent variations and $R\to\infty$ |
| Pure-extension radial Hamiltonians are positive and self-adjoint | LITERATURE-SUPPORTED | Amsel--Marolf reduction to positive self-adjoint extensions | standard inner product; full domain proof not repeated |
| Section 01 Dirac operator gives the stated unrotated and rotated radial systems | PROVED | explicit local diagonal-to-Cartesian spin-frame translation and angular ansatz; exact general-symbolic Mathematica check of the Section 01 block signs and $UA_\kappa U^{-1}+U'U^{-1}$ | $K=1+\boldsymbol\sigma\cdot\mathbf L$, $K\Omega_\kappa=\kappa\Omega_\kappa$, $(\boldsymbol\sigma\cdot\hat r)\Omega_\kappa=\Omega_{-\kappa}$ |
| Jacobi radial functions solve the full first-order Dirac system | PROVED | analytic intertwining identities after the proved radial bridge; exact Mathematica zero-residual regressions for $n=0,1,2$, both signs of $\kappa$, and $m,-m$ | regular origin, pure BC |
| Standard frequencies are $E=\Delta_++N$ | PROVED | polynomial truncation and first-order coupling | $N\in\mathbb N_0$ |
| Alternative frequencies are $E=\Delta_-+N$ | PROVED | $m\mapsto-m$, $\gamma_5$ map; symbolic branch check | four bulk dimensions, parity relabelled |
| Displayed radial normalization constant gives unit norm | PROVED | analytic Jacobi orthogonality; exact direct sample integrals are independent regressions only | normalized spinor harmonics |
| The displayed modes form a complete basis | LITERATURE-SUPPORTED | spectral/self-adjoint extension literature | pure extension domain |
| Positive mode inner product | PROVED | explicit sum of positive radial squares | pure modes, $0<m<1/2$ |
| Inverse even symplectic form gives graded brackets and CAR | PROVED | block inversion and one-mode matrix check | positive-energy mode splitting |
| Action-derived $Q_{\partial_t}$ gives the classical mode Hamiltonian | PROVED | explicit $\mathcal L_{\partial_t}^K=\partial_t$, $\pm E$ one-mode action, and Grassmann ordering | normalized particle/antiparticle modes |
| CAR quantization gives $\widehat H=\sum E(a^\dagger a+b^\dagger b)$ | PROVED | graded inverse plus explicit antiparticle normal ordering; two-mode matrix regression | normal ordering drops the field-independent vacuum constant |
| Action-derived global $U(1)$ charge matches particle minus antiparticle number | PROVED | classical phase generator, mode expansion, Grassmann ordering, and two-mode commutator regression | phase convention $X_{U(1)}\psi=-i\psi$ |
| CAR algebra determines a unique Fock representation | OPEN | not true without additional representation hypotheses | infinite number of modes |
| Global positive-energy choice defines the stated Fock representation | PROVED | discrete positive spectrum and normalized basis | selected global vacuum |
| One-particle modules are $D(\Delta_\pm,1/2)$ | PROVED | standard positive-energy module classification applied to directly computed lowest state, all $K$-types, boundary weight, Casimir, and level-one boost Gram/matrix-element regression | completeness input as above |
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
wolframscript -file verification/noether-time-translation.wl
```

Each script prints its labelled checks, then `OVERALL: PASS` or `OVERALL: FAIL`, and exits with status zero or one accordingly. The angular $\kappa$ convention, Section 01 block reduction, and radial $U$ conjugation are exact general-symbolic checks. Spectrum rewriting, component-norm sums, Jacobi substitution at stated quantum numbers, direct sample integration, boost-matrix construction, and finite-dimensional CAR checks are regressions at the scope stated by their labels; the analytic proof sources remain the derivations cited in the table.
