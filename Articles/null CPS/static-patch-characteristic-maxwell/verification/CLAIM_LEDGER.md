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
| C-04 | $r_A^{\rm aff}=F_{VA}$ alone is constraint-complete on an arbitrary raw horizon sheet. | false | `calculations/01`, sections 5--6 | Raw data also require corner integrations and an endpoint policy. |
| C-05 | Arbitrary $A_A$ alone is gauge-invariant complete horizon data. | false | `calculations/01`, section 7 | Generator frame and residual cut frame must be fixed. |
| C-06 | Proper gauge is exactly the kernel of the endpoint charge pairing (8.2) on the declared variation space. | proved | `calculations/01`, section 8 | The actual kernel changes if endpoint variations change. |
| C-07 | Every null Maxwell sheet carries a universal independent edge oscillator. | false | `calculations/01`, sections 8--9 | A relative frame appears only in an explicitly enlarged/split polarization. |
| C-08 | Charged endpoint transformations may be quotiented as gauge without changing the CPS. | false | `calculations/01`, section 8 | They are retained unless a different reduction/extension is specified. |
| C-09 | Arbitrary nonzero magnetic Chern mean is a tangent direction of the same global-potential phase space. | false | `calculations/01`, sections 1 and 5; `02`, section 14 | Main project fixes the trivial bundle and $\int_{S^2}b^B=0$; nonzero integers require patchwise connections and form external superselection sectors. |

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
| Z-05 | Every vector of the fixed-switch logarithmic endpoint-value profile core has a unique radiative/$\widehat a$/memory decomposition with finite weakly nondegenerate symplectic pairing. | proved | `calculations/08`, sections 4 and 11 | `T4-kin`; this is kinematic, not an affine bulk-range theorem.  Changing the switch gives a canonical shear. |
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
| S-06 | $S_j$ has the partial fractions (1.1), the time-tail kernel (1.2), and coefficients $A_{jn}=(-1)^n n\binom jn\binom{j+n}{n}$. | proved | `calculations/12`, sections 2--3 | Exact fixed-$j$ rational identity in the Fourier convention of `03`. |
| S-07 | $A_{jj}=(-1)^j j\binom{2j}{j}\sim(-1)^j4^j\sqrt{j/\pi}$. | proved | `calculations/12`, section 5 | Large diagonal residue; it enters derivative order growing with $j$, not a fixed affine seminorm. |

## Theorem chain

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| T1-log-core | $R_-:\mathcal P_{\rm bulk}^{\rm core}\to\mathcal X_{\mathcal H^-}^{\log,\rm core}$ is a continuous bijection with explicit inverse. | proved | `calculations/03`, Theorem 7.1 | The datum is $\mathfrak r_A=F_{vA}$ with spectral support in $K\Subset(0,\infty)$; this is not affine $F_{VA}$ regularity. |
| T1-log | `T1-log-core` extends to the $(\omega+\omega^2)$-weighted logarithmic CPS completion. | proved | `calculations/03`, section 7.4 | No pointwise bifurcation trace is assigned. |
| T1-energy-trace | `T1-log` automatically supplies pointwise corner/memory data on the entire finite-energy space. | false | `calculations/08`, sections 7--12; `10`, section 4 | Finite energy and even $v$-Schwartz regularity do not imply affine traces. |
| T1-aff(k,fixed-j) | For fixed $j,k$, a center-regular master is $C^{k+1}$ at the closed static-quadrant corner iff the two weighted affine trace hierarchies and corner matching hold; equivalently the incoming pole resonances vanish and the future jets are the moments in `12`. | proved | `calculations/10`, Theorems 3.1 and 6.1; `calculations/12`, Theorem 4.1 | Maxwell tensor is $C^k$.  Static-quadrant uniqueness; adjacent extension exists but is not unique without extra data. |
| T1-aff(k,unrestricted-full) | Ordinary rapid-angular decay makes the unrestricted two-trace Goursat solution continuous on a fixed Kruskal rectangle. | false | `calculations/12`, section 6 | Constant trace modes grow at least as $I_0(2\sqrt{\lambda_jUW})\sim e^{cj}$. |
| T1-aff(k,full tower) | The $S_j$-compatible rapid-angular Hardy candidate has a uniform interior Kruskal solution estimate through order $k$. | conditional | `calculations/12`, sections 5--7 | Boundary strips lose only $O(j^{2\sigma})$, but compatible interior cancellation is not proved. |
| T1-aff | The maximal completed affine Maxwell/corner range is a continuous bijective restriction target. | conditional | `calculations/10`, sections 6--9; `12`, section 7 | Missing compatible full-tower interior estimate, completed endpoint topology, and global inverse estimate. |
| Mellin-nec | Affine $C^{k,\alpha}$ regularity gives the stated meromorphic Fourier--Laplace/Mellin continuation, poles, residues, and Hardy control on every strict substrip. | proved | `calculations/10`, section 5 | Forward implication only. |
| Mellin-Sobolev-suff | A pole-subtracted Hardy boundary value with $(1+\xi^2)^{m/2}H(\xi-i\beta)\in L^2$ gives $R=e^{-\beta v}h$, $h\in H^m$; for $m>1/2$, $R=o(e^{-\beta v})$. | proved | `calculations/10`, equations (5.6)--(5.13) | Shifted $H^2$ Paley--Wiener inversion; weighted logarithmic Sobolev conclusion, not affine Hölder. |
| Mellin-Ckalph-suff | The meromorphic form plus one standard Hardy boundary norm is sufficient for affine $C^{k,\alpha}$. | conditional | `calculations/10`, section 5.1 | Needs a compatible shifted derivative/Besov family; not supplied. |
| T1-aff-reg | The finite affine-derivative, Mellin-pole, kernel, residue, moment, large-$j$, angular-loss, and switch-shear samples satisfy their thresholds. | proved | `scripts/affine_horizon_checks.py`; `scripts/incoming_affine_kernel_checks.py` | Finite regression only; it proves no Goursat/Hardy/full-tower theorem. |
| T2-log-spectral | Multiplication by $S_j$ preserves the reduced logarithmic master characteristic form. | proved | `calculations/03`, section 8 | Spectral precursor; independent raw-Maxwell proof is in `04`. |
| T2-reg | The raw bulk/null electric and magnetic normalization residuals, including cut derivatives and affine factors, vanish for $j=1,2,3$. | checked symbolically | `scripts/symplectic_normalization.wl`; `calculations/04`, section 10 | Finite exact regression; it does not prove Stokes limits, density, or the gauge kernel. |
| T2-log | $R_-^*\Omega_-=\Omega_{\rm bulk}$ on the logarithmic zero-trace CPS, and scattering is symplectic. | proved | `calculations/04`, Theorem 9.1 | Smooth spectral core and $(\omega+\omega^2)$ completion; proper gauge quotiented; no affine endpoint theorem. |
| T2-energy-trace | `T2-log` extends continuously to the energy-only space with arbitrary independent endpoint traces and frames. | false | `calculations/08`, sections 7--12 | Point traces and the CPS form are not continuous in the energy norm alone. |
| T2-aff | Lee--Wald equality extends to the maximal bulk-compatible affine range with memory/frames. | conditional | `calculations/04`, section 9.1; `08`, section 12; `10` | Depends on `T1-aff`, a completed cut topology, and a declared $\theta\to\theta+dY+\delta B$/boundary-action/polarization choice. |
| T3-local | The logarithmic characteristic inverse equals the bulk Maxwell advanced-minus-retarded Peierls bracket on compact gauge-invariant field-strength smearings. | proved | `calculations/06`, Theorem 8.1; `calculations/11` | Compact test quotient $\Omega_c^2/\mathcal N_F$, trivial bundle; exactness/cohomology/Green diagram verified. |
| T3-gauge-uniq | For co-closed compact $j$ and every declared covariant gauge with a unique causal Green problem, $G_\xi^\pm j=G_1^\pm j$; hence the causal curvature response is gauge independent. | proved | `calculations/11`, Lemma 7.1 | Globally hyperbolic open patch, constant $\xi>0$, standard causal support, no horizon boundary condition. |
| T3-center | The $a^2$ compact-source lift gives a smooth Cartesian Maxwell two-form at the center. | proved | `calculations/11`, Lemma 3.2 | Uses the regular jet $s_{jm}=\rho^{j+1}\widetilde s(\rho^2)$ and solid harmonics. |
| T3-num | The $j=1,2,3$ causal-kernel, jump, characteristic normalization, horizon inverse, and spacelike samples satisfy the recorded thresholds. | proved | `scripts/peierls_kernel_checks.py`; `calculations/06`, section 9 | Finite numerical regression only; causal support and distributional equality are analytic claims. |
| T3-sharp | Peierls/characteristic equality extends to arbitrary sharp endpoint and nonzero-memory functionals. | conditional | `calculations/06`, section 1; `calculations/08`, sections 7, 9, and 12; `11`, section 9 | Such functionals are not continuous in the present CPS topology or compact local test algebra. |
| T4-core | On the declared core, $j=0$ flux is absent and all $j\geq1$ corner curvatures are reconstructed master cut values. | proved | `calculations/01`, section 6; `02`, section 14; `03`, section 7 | Zero-endpoint/no-$\omega=0$ core. |
| T4-kin | On a fixed-switch logarithmic endpoint-value profile core, Coulomb/topology, $\widehat a$, endpoint memory, large gauge, relative frame, and soft radiative sectors have the stated unique kinematic decomposition and finite canonical form. | proved | `calculations/08`, Theorem 11.1 | Memory is conjugate to $\widehat a=a+2\ell_h(x)$; switch changes act by canonical shear. |
| T4-bulk | Restriction onto the maximal trace/memory subspace realized by smooth-across-$B$ center-regular bulk solutions is a completed range theorem. | conditional | `calculations/08`, section 12; `calculations/10`--`12` | `T1-aff(k,fixed-j)` gives a finite-order subrange; compatible full tower and maximal completion remain open. |
| T5-W* | In the BD GNS von Neumann algebra, the restricted state is normal KMS at $\beta_t=2\pi L$ for normal weak-* continuous static dynamics. | proved | `calculations/07`, Theorem 8.1 | BD-continuity space generated by compact local Maxwell smearings. |
| T5-alg | The BD covariance satisfies the KMS boundary relation on the dense analytic Weyl *-algebra. | proved | `calculations/07`, sections 6 and 8 | This is an algebraic analytic-core statement, not a standard point-norm $C^*$-KMS theorem. |
| T5-norm | The static Weyl automorphisms form a point-norm strongly continuous $C^*$-dynamical system on the full abstract Weyl algebra. | false | `calculations/05`, section 6; `07`, equation (6.6) | Generic distinct Weyl generators have norm distance two. |
| T5-bulk-dist | `T1-log` alone reconstructs a unique bulk two-point distribution from the affine horizon bidistribution. | false | `calculations/07`, section 3 | Equality of local covariances uses global Euclidean/Hadamard input; distributional extension is not a consequence of `T1-log`. |
| T5-reg | The Mellin, Bogoliubov, Gamma, Planck, correlator, periodicity, and infrared identities in `07` vanish exactly. | checked symbolically | `scripts/kms_mellin_checks.wl` | Finite exact regression; strip analyticity and global-state identification use the written argument and cited literature. |
| T5-full | The BD covariance defines a regular quasifree state on every vector of the full $(\omega+\omega^2)$ CPS completion. | false | `calculations/07`, section 7 | $\omega\coth(\pi\omega)\to1/\pi$ requires additional $L^2(d\omega)$ infrared control. |
| Q-01 | The Weyl algebra, static complex structure, Fock representation, and $H_{\partial t}$ are closed. | proved | `calculations/05`, sections 2--8 | Static representation on the `T2-log` CPS space; this is not the Bunch--Davies representation. |
| Q-02 | $J_{\rm st}c=ic$ is compatible and positive, with one-particle map $Kc=\sqrt{2\omega}c$. | proved | `calculations/05`, sections 3--5 | The sign follows the Lee--Wald ordering fixed in `04`. |
| Q-03 | The $aa$ and $a^\dagger a^\dagger$ Hamiltonian coefficients vanish on shell and $\widehat H_{\partial t}=L^{-1}d\Gamma(\omega)$. | proved | `calculations/05`, sections 7--8 | Wave-packet core first; positive self-adjoint second quantization after normal ordering. |
| Q-03-reg | The complex-structure, one-particle, Hamiltonian, anomalous-term, and $j=1,2,3$ scattering residuals vanish exactly. | checked symbolically | `scripts/fock_hamiltonian_checks.wl` | Finite algebraic regression; self-adjointness follows from the multiplication-operator construction, not the script. |
| Q-04 | The static ground quasifree state constructed in `05` may be identified with Bunch--Davies before the KMS analysis. | false | `calculations/05`, sections 5 and 11 | State restriction is deferred to `07`; no density-matrix argument is allowed. |
| Q-05 | Exact center scattering is unitarily implemented by $\Gamma(\mathbf S)$ and commutes with the static Hamiltonian. | proved | `calculations/05`, section 9 | Static representation; this is not a no-thermal-particle claim for Bunch--Davies. |
| E-DtN | The exact finite-$R$ DEM Legendre-$Q_j$ DtN kernel, positivity, harmonic-number asymptotic, and inverse-log edge energy are as stated. | proved | `calculations/09`, sections 4--5 | $j\geq1$; finite-$R$ operator statement. |
| E-cut | The normalized DEM edge pair equals the direct-null electric $B$-cut coefficient form. | proved | `calculations/09`, equations (8.2)--(9.4) | Modewise/finite-harmonic identity; not a completed phase-space isomorphism. |
| E-limit | The completed DEM reduction/null limit differs exactly by $T^*\mathfrak g_B'$ for the default policy and commutes for the split-$B$ policy. | conditional | `calculations/09`, section 9 | Missing common ambient topology, symplectic/reduction convergence, `T1-aff/T2-aff`, and global-versus-linearized $U(1)$ frame. |
| E-03 | The DEM edge Hamiltonian stays nonzero in the null limit. | false | `calculations/09`, sections 4--5 | It vanishes as $1/\log(2L/\varepsilon_R)$ while the symplectic pair stays finite. |
| E-04 | The real-frequency radiative DtN function has a pointwise horizon limit. | false | `calculations/09`, section 6 | Standing-wave poles persist; limiting absorption/strong-resolvent convergence is the correct statement. |
| E-05 | The recorded edge-kernel, dynamic-DtN, limiting-absorption, scaling, and coefficient-map samples satisfy their thresholds. | proved | `scripts/stretched_horizon_checks.py`; `calculations/09`, section 10 | Finite numerical regression only; it does not prove `E-limit`. |

## Literature and novelty claims

| ID | statement | status | proof/evidence location | boundary of the claim |
|---|---|---|---|---|
| N-01 | This project is the first construction of a free all-spin/Maxwell de Sitter horizon S-matrix. | false | `literature/literature-comparison.md`, David--Fischer--Neiman (2019) | Their hard-frequency formulation already contains free horizon scattering. |
| N-02 | This project is the first horizon symplectic quantization of source-free Maxwell on de Sitter. | false | `literature/literature-comparison.md`, 2019 and Kudler-Flam--Prabhu--Satishchandran (2025) | Prior work gives radiative horizon symplectic forms and photon quantization. |
| N-03 | Source-free electromagnetic cosmological-horizon memory has not previously been classified. | false | `literature/literature-comparison.md`, arXiv:2503.19957 | That work proves zero memory for its global local-observable solution class. |
| N-04 | The finite product $S_j(\omega)$ alone is a new publishable result. | false | `literature/literature-comparison.md`, sections on all-spin scattering and scalar phase/DOS | At most a useful calibration/translation. |
| N-05 | The Bunch--Davies static-patch KMS temperature is a novelty pillar. | false | `literature/literature-comparison.md`, state/KMS section | `T5-W*` is a consistency theorem, not the sole novelty. |
| N-06 | The surviving $S_j$-dependent affine/Mellin range is sufficient to keep the static-patch project as a paper core. | false | `calculations/10`--`12`; `kill-test-audit.md` | Fixed-$j$ moments/resonances survive, but no compatible full-tower interior theorem, established analytic angular obstruction, completed phase space, or novelty gate survives. |
| N-07 | Stretched-horizon dynamical edge modes may be assumed to survive unchanged in the default direct-null reduced phase space. | false | `literature/literature-comparison.md`, Ball--Law--Wong (2024); `calculations/09` | Only a finite-harmonic linear $T^*\mathfrak g_B'$ coefficient pair is matched; the completed `E-limit` is conditional. |
| N-10 | The repaired $dS_4$ project presently clears the article novelty gate. | false | `kill-test-audit.md`; `literature/literature-comparison.md`, section 11 | Final verdict is freeze; next work is two-intersecting-null-surfaces Maxwell composition, not SdS/Nariai. |
| N-08 | Exact separation of source-free Maxwell in de Sitter static spherical coordinates is new here. | false | `literature/literature-comparison.md`, Bini--Esposito--Montaquila (2008/2010) | Lorenz-gauge hypergeometric solutions already exist; this project must contribute structure, not a new mode expansion. |
| N-09 | Relating a null initial-data bracket to the Peierls bracket is a new strategy in general. | false | `literature/literature-comparison.md`, Reisenberger (2007) | `06` proves the precise Maxwell equality here, but the general strategy is prior art. |
