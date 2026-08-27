# Claim Ledger

Updated: 2026-08-28.

This file is authoritative for project-level claims. The only permitted status values are:

$$
\texttt{proved},\quad
\texttt{checked symbolically},\quad
\texttt{conditional},\quad
\texttt{conjectural},\quad
\texttt{false}.
$$

`checked symbolically` means that the displayed finite algebraic identities were verified by the named script. It is never promoted to a function-space, spectral, Goursat, Peierls, KMS, or novelty theorem.

## Geometry and phase-space policy

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| G-01 | Equations (2.3) and (3.5) are the exact static-$\rho$ and Kruskal forms of $dS_4$. | proved | `calculations/00`, sections 2--3 | Fixed normalization $U=e^u,V=-e^{-v}$. |
| G-02 | The component metric has $R=12/L^2$, the stated determinant, and the stated horizon radii. | checked symbolically | `scripts/geometry_hodge_checks.wl` | Exact component check; not a new geometric result. |
| G-03 | $V$ on $\mathcal H^-$ and $U$ on $\mathcal H^+$ are affine in the fixed normalization. | proved | `calculations/00`, section 3 | Constant reciprocal rescalings would change normalization. |
| G-04 | Finite static energy alone makes the characteristic symplectic form continuous at $\omega=0$. | false | `calculations/00`, section 5.3; `03`, section 9 | An additional $\omega|c|^2$ condition is needed for the chosen CPS completion. |
| G-05 | A generic vector in the CPS Hilbert completion has a pointwise bifurcation-sphere trace. | false | `calculations/00`, section 6 | Point evaluation is used only on a declared trace core. |

## Raw Maxwell CPS and gauge

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| C-01 | $S=-\tfrac12\int F\wedge*F$ gives $\theta=-\delta A\wedge*F$ and the ordered current (2.4). | proved | `calculations/01`, section 2 | Convention is $\omega=\delta_2\theta[\delta_1]-\delta_1\theta[\delta_2]$; fixed background and on-shell linearized variations. |
| C-02 | The raw pullbacks (3.3)--(3.6), including their relative and field-space signs, follow from the Hodge star and chosen orientations. | checked symbolically | `calculations/01`, section 3; `scripts/geometry_hodge_checks.wl` | Presentation orientations are those of `00`; the outgoing scattering form has the additional sign derived in `04`. |
| C-03 | On $\mathcal H^-$, Maxwell/Bianchi transport $\mathcal E,F_{AB}$ according to (4.1)--(4.2). | proved | `calculations/01`, sections 4--5 | Nonexpanding round horizon, source-free Maxwell. |
| C-04 | $F_{VA}$ alone is constraint-complete on an arbitrary raw horizon sheet. | false | `calculations/01`, sections 5--6 | Raw data also require corner integrations and an endpoint policy. |
| C-05 | Arbitrary $A_A$ alone is gauge-invariant complete horizon data. | false | `calculations/01`, section 7 | Generator frame and residual cut frame must be fixed. |
| C-06 | Proper gauge is exactly the kernel of the endpoint charge pairing (8.2) on the declared variation space. | proved | `calculations/01`, section 8 | The actual kernel changes if endpoint variations change. |
| C-07 | Every null Maxwell sheet carries a universal independent edge oscillator. | false | `calculations/01`, sections 8--9 | A relative frame appears only in an explicitly enlarged/split polarization. |
| C-08 | Charged endpoint transformations may be quotiented as gauge without changing the CPS. | false | `calculations/01`, section 8 | They are retained unless a different reduction/extension is specified. |

## Action-level master reduction

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| M-01 | Each $j\geq1$ Maxwell sector reduces from the unfixed action to the two master actions (1.1). | proved | `calculations/02`, sections 3--8 | Real harmonic basis or equivalent complex reality condition. |
| M-02 | The $j=1,2,3$ harmonic, action, Maxwell, Bianchi, potential, Hodge, and duality residuals vanish exactly. | checked symbolically | `scripts/maxwell_master_reduction.wl` | Finite regression supporting the general derivation. |
| M-03 | Equations (8.2)--(8.5) give a complete $F\leftrightarrow(\Psi^E,\Psi^B)$ dictionary for $j\geq1$. | proved | `calculations/02`, sections 8--10 | Smooth-center regularity and source-free equations imposed. |
| M-04 | The electric action can be reduced by first setting $q_E=0$ without affecting corner bookkeeping. | false | `calculations/02`, sections 4--7 and 10 | $q_E=0$ is used only as an optional post-reduction representative. |
| M-05 | Electromagnetic duality acts as $(\Psi^E,\Psi^B)\mapsto(\Psi^B,-\Psi^E)$. | proved | `calculations/02`, section 13 | Orientation and Lorentzian Hodge convention fixed in `00`. |
| M-06 | The reduced bulk Noether Hamiltonian is (12.1), with $H_{\partial t}=L^{-1}H_{\partial\tau}$. | proved | `calculations/02`, section 12 | The symplectic normalization is matched in `04`; quantum implementation awaits `05`. |

## Zero modes and topology already closed

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| Z-01 | Smooth finite-energy source-free fields on the static spatial ball have $Q_E=0$. | proved | `calculations/02`, section 14.1 | No electric sources or center singularity. |
| Z-02 | Smooth source-free fields on the trivial (U(1)) bundle over $B^3$ have $Q_B=0$. | proved | `calculations/02`, section 14.2 | A monopole/singular bundle is outside the phase space. |
| Z-03 | There is an independent flat-holonomy mode on $B^3$. | false | `calculations/02`, section 14.2 | $H^1(B^3)=0$. |
| Z-04 | The $j\geq1$ normal electric/magnetic corner fields are independent oscillators after imposing the regular bulk range. | false | `calculations/01`, section 6; `02`, section 9 | They are master cut values; endpoint frames are a separate question. |
| Z-05 | Every vector of the smooth trace core has a unique radiative/cut/memory decomposition with finite weakly nondegenerate symplectic pairing. | proved | `calculations/08`, sections 4 and 11 | This is a raw trace completion, not the asserted maximal regular-bulk range. |
| Z-06 | Nonzero half-horizon memory is a regular finite-energy zero eigenmode of $H_j$. | false | `calculations/03`, section 3; `08`, sections 7--8 | Memory has $c\sim1/\omega$; the regular zero solution has infinite energy. |
| Z-07 | Electric half-memory generates the charged large-gauge direction, while a split relative frame is a separate optional potential polarization. | proved | `calculations/08`, section 6 | Proper gauge is still the kernel on the declared variation space; no universal edge oscillator is added. |
| Z-08 | The recorded trace-splitting, endpoint-frame, infrared-scaling, and $j=1,2,3$ transport samples satisfy their thresholds. | proved | `scripts/memory_sector_checks.py`; `calculations/08`, section 13 | Finite numerical regression only. |

## Half-line spectral and scattering claims

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| S-01 | $H_j$ is limit point at both endpoints and has the unique center-regular Friedrichs realization. | proved | `calculations/03`, section 2 | $j\geq1$. |
| S-02 | $\sigma(H_j)=\sigma_{\rm ac}(H_j)=[0,\infty)$, with no point spectrum or regular zero resonance. | proved | `calculations/03`, section 3 | Uses standard one-dimensional short-range spectral results plus the explicit transform. |
| S-03 | The Darboux modes (5.1) are delta normalized and complete. | proved | `calculations/03`, sections 4--5 | Generalized spectral sense. |
| S-04 | The exact phase is (1.2) and has unit modulus for real $\omega$. | proved | `calculations/03`, section 6 | $S_j(0)=-1$ is a limit, not a zero eigenmode. |
| S-05 | The recorded phase, residual, Wronskian, reconstruction, energy, and symplectic samples lie below their declared thresholds. | proved | `calculations/03`, section 10; `scripts/scattering_phase_checks.py` | Finite numerical regression only. |

## Theorem chain

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| T1-core | $R_-:\mathcal P_{\rm bulk}^{\rm core}\to\mathcal X_{\mathcal H^-}^{\rm comp,core}$ is a continuous bijection with explicit inverse. | proved | `calculations/03`, Theorem 7.1 | Smooth spectral support stays in $K\Subset(0,\infty)$; rapid angular weights. |
| T1-CPS | T1 extends to the $(\omega+\omega^2)$-weighted CPS completion. | proved | `calculations/03`, section 7.4 | This is not the maximal energy-only endpoint space. |
| T1-max | T1, including pointwise corner/memory data, holds on the entire finite-energy space. | false | `calculations/08`, sections 7--12 | Generic finite-energy vectors need not have a point trace; the statement is not well-defined without extra topology. |
| T1-trace | Every vector of the declared raw trace space reconstructs a smooth-center bulk solution. | conditional | `calculations/08`, sections 4 and 12 | T4 classifies the trace space but does not identify the maximal regular-bulk range inside it. |
| T2-red | Multiplication by $S_j$ preserves the reduced master characteristic form. | proved | `calculations/03`, section 8 | This is the spectral precursor; the independent raw-Maxwell proof is in `04`. |
| T2-reg | The raw bulk/null electric and magnetic normalization residuals, including cut derivatives and affine factors, vanish for $j=1,2,3$. | checked symbolically | `scripts/symplectic_normalization.wl`; `calculations/04`, section 10 | Finite exact regression; it does not prove Stokes limits, density, or the gauge kernel. |
| T2 | $R_-^*\Omega_-=\Omega_{\rm bulk}$ for the constraint/corner-complete Maxwell CPS, and scattering is symplectic. | proved | `calculations/04`, Theorem 9.1 | Smooth spectral core and $(\omega+\omega^2)$ CPS completion; proper gauge quotiented. |
| T2-max | T2 holds continuously on the energy-only space with arbitrary independent endpoint traces and frames. | false | `calculations/08`, sections 7--12 | Point traces and the CPS form are not continuous in the energy norm alone. |
| T2-trace | Lee--Wald equivalence extends to the bulk-compatible part of the declared trace space with its explicit endpoint frame terms. | conditional | `calculations/08`, section 6; `09`, section 8 | The finite $B$-frame term is matched, but the maximal trace-range reconstruction remains open. |
| T3 | The characteristic inverse equals the bulk Maxwell advanced-minus-retarded Peierls bracket on compact gauge-invariant field-strength smearings. | proved | `calculations/06`, Theorem 8.1 | Test space is $\Omega_c^2/\mathcal N_F$; endpoint-memory observables outside the CPS topology are excluded. |
| T3-num | The $j=1,2,3$ causal-kernel, jump, characteristic normalization, horizon inverse, and spacelike samples satisfy the recorded thresholds. | proved | `scripts/peierls_kernel_checks.py`; `calculations/06`, section 9 | Finite numerical regression only; causal support and distributional equality are analytic claims. |
| T3-max | Peierls/characteristic equality extends to arbitrary sharp endpoint and nonzero-memory functionals. | conditional | `calculations/06`, section 1; `calculations/08`, sections 7, 9, and 12 | Such functionals are not continuous in the present CPS topology or compact local test algebra. |
| T4-core | On the declared core, $j=0$ flux is absent and all $j\geq1$ corner curvatures are reconstructed master cut values. | proved | `calculations/01`, section 6; `02`, section 14; `03`, section 7 | Zero-endpoint/no-$\omega=0$ core. |
| T4 | Coulomb, topology, endpoint memory, large gauge, relative frame, and $\omega\to0$ radiative sectors are completely classified. | proved | `calculations/08`, Theorem 11.1 | Stratified smooth-ball, CPS, and raw trace spaces; this does not promote `T1-max`, `T2-max`, or `T3-max`. |
| T5 | Bunch--Davies restricts to a $\beta_t=2\pi L$ KMS state on the local-observable characteristic algebra. | proved | `calculations/07`, Theorem 8.1 | Algebra is the BD-continuity completion generated by compact gauge-invariant Maxwell smearings; no density-matrix definition. |
| T5-reg | The Mellin, Bogoliubov, Gamma, Planck, correlator, periodicity, and infrared identities in `07` vanish exactly. | checked symbolically | `scripts/kms_mellin_checks.wl` | Finite exact regression; strip analyticity and global-state identification use the written argument and cited literature. |
| T5-full | The BD covariance defines a regular quasifree state on every vector of the full $(\omega+\omega^2)$ CPS completion. | false | `calculations/07`, section 7 | $\omega\coth(\pi\omega)\to1/\pi$ requires additional $L^2(d\omega)$ infrared control. |
| Q-01 | The Weyl algebra, static complex structure, Fock representation, and $H_{\partial t}$ are closed. | proved | `calculations/05`, sections 2--8 | Static representation on the T2 CPS space; this is not the Bunch--Davies representation. |
| Q-02 | $J_{\rm st}c=ic$ is compatible and positive, with one-particle map $Kc=\sqrt{2\omega}c$. | proved | `calculations/05`, sections 3--5 | The sign follows the Lee--Wald ordering fixed in `04`. |
| Q-03 | The $aa$ and $a^\dagger a^\dagger$ Hamiltonian coefficients vanish on shell and $\widehat H_{\partial t}=L^{-1}d\Gamma(\omega)$. | proved | `calculations/05`, sections 7--8 | Wave-packet core first; positive self-adjoint second quantization after normal ordering. |
| Q-03-reg | The complex-structure, one-particle, Hamiltonian, anomalous-term, and $j=1,2,3$ scattering residuals vanish exactly. | checked symbolically | `scripts/fock_hamiltonian_checks.wl` | Finite algebraic regression; self-adjointness follows from the multiplication-operator construction, not the script. |
| Q-04 | The static ground quasifree state constructed in `05` may be identified with Bunch--Davies before the KMS analysis. | false | `calculations/05`, sections 5 and 11 | State restriction is deferred to `07`; no density-matrix argument is allowed. |
| Q-05 | Exact center scattering is unitarily implemented by $\Gamma(\mathbf S)$ and commutes with the static Hamiltonian. | proved | `calculations/05`, section 9 | Static representation; this is not a no-thermal-particle claim for Bunch--Davies. |
| E-01 | The default zero-endpoint direct-null reduction equals the DEM stretched-horizon null limit. | false | `calculations/09`, Theorem 9.1 | The DEM limit retains the explicit sector $T^*\mathcal G_B'$. |
| E-02 | The DEM edge limit is symplectomorphic to the split direct-null $B$-frame sector when the past endpoint is fixed. | proved | `calculations/09`, equations (8.2)--(9.4) | Smooth finite-harmonic core; $j=0$ omitted by Gauss law. |
| E-03 | The DEM edge Hamiltonian stays nonzero in the null limit. | false | `calculations/09`, sections 4--5 | It vanishes as $1/\log(2L/\varepsilon_R)$ while the symplectic pair stays finite. |
| E-04 | The real-frequency radiative DtN function has a pointwise horizon limit. | false | `calculations/09`, section 6 | Standing-wave poles persist; limiting absorption/strong-resolvent convergence is the correct statement. |
| E-05 | The recorded edge-kernel, dynamic-DtN, limiting-absorption, scaling, and coefficient-map samples satisfy their thresholds. | proved | `scripts/stretched_horizon_checks.py`; `calculations/09`, section 10 | Finite numerical regression only. |

## Literature and novelty claims

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| N-01 | This project is the first construction of a free all-spin/Maxwell de Sitter horizon S-matrix. | false | `literature/literature-comparison.md`, David--Fischer--Neiman (2019) | Their hard-frequency formulation already contains free horizon scattering. |
| N-02 | This project is the first horizon symplectic quantization of source-free Maxwell on de Sitter. | false | `literature/literature-comparison.md`, 2019 and Kudler-Flam--Prabhu--Satishchandran (2025) | Prior work gives radiative horizon symplectic forms and photon quantization. |
| N-03 | Source-free electromagnetic cosmological-horizon memory has not previously been classified. | false | `literature/literature-comparison.md`, arXiv:2503.19957 | That work proves zero memory for its global local-observable solution class. |
| N-04 | The finite product $S_j(\omega)$ alone is a new publishable result. | false | `literature/literature-comparison.md`, sections on all-spin scattering and scalar phase/DOS | At most a useful calibration/translation. |
| N-05 | The Bunch--Davies static-patch KMS temperature is a novelty pillar. | false | `literature/literature-comparison.md`, state/KMS section | T5 is a consistency theorem, not the sole novelty. |
| N-06 | A combined action-first half-horizon complete-data theorem, full Lee--Wald/Peierls equivalence, and endpoint classification remains available as a novel claim. | conditional | `calculations/04`, `06`, `08`; `literature/literature-comparison.md` | No exact single-paper match was located, but all conceptual components have close prior art and search absence is not novelty evidence. |
| N-07 | Stretched-horizon dynamical edge modes may be assumed to survive unchanged in the default direct-null reduced phase space. | false | `literature/literature-comparison.md`, Ball--Law--Wong (2024); `calculations/09` | They survive as $T^*\mathcal G_B'$ only in the split-frame endpoint policy; the default CPS omits them. |
| N-10 | The completed $dS_4$ project presently clears the article novelty gate. | false | `literature/literature-comparison.md`, section 11 | It is retained as an internal calibration note; the recommended pivot is Schwarzschild--de Sitter Maxwell. |
| N-08 | Exact separation of source-free Maxwell in de Sitter static spherical coordinates is new here. | false | `literature/literature-comparison.md`, Bini--Esposito--Montaquila (2008/2010) | Lorenz-gauge hypergeometric solutions already exist; this project must contribute structure, not a new mode expansion. |
| N-09 | Relating a null initial-data bracket to the Peierls bracket is a new strategy in general. | false | `literature/literature-comparison.md`, Reisenberger (2007) | `06` proves the precise Maxwell equality here, but the general strategy is prior art. |
