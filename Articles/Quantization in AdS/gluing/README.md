# Gluing

## Current Direction

The active programme treats an artificial cut through boundary values rather than through a large interface penalty. For each prescribed regional boundary history $q_i(t)$, the allowed variations obey $\delta\phi_i|_\Gamma=0$, and the regional symplectic form is conserved. Gluing first identifies $q_1=q_2=q$ and then allows the common $q(t)$ to vary. Stationarity of the summed action gives the oriented flux condition $\phi_1'+\phi_2'=0$.

The quantum target is canonical rather than path-integral quantization. The interface equation determines the common boundary history from the regional operator data, while the $q=0$ relative modes must be retained separately. At finite cutoff, reconstruct the glued field, extract reduced canonical coordinates, and verify their symplectic map to the same global regulator before applying the metaplectic/CCR construction. The boundary value $q$ is not to be quantized as an additional independent oscillator. A continuum Fock-space statement requires a separate high-frequency or Shale--Stinespring analysis.

## Active Files

- `formalism.md`: scalar boundary-driven prototype, connected spectrum, and canonical quantum-gluing ansatz.
- `finite cutoff canonical gluing.md`: reduced $2N$-mode feedback phase space, explicit symplectic normal-mode map, and fixed-cutoff canonical quantization.
- `finite cutoff Gaussian vacuum.md`: global squeezed vacuum over the reduced regional product reference state and regulated vacuum diagnostics.
- `finite cutoff entanglement.md`: reduced regional covariance matrices, symplectic spectra, entropies, mutual information, and Gaussian modular Hamiltonian.
- `finite cutoff correlators.md`: global-vacuum Wightman, cross-region, interface, mixed, commutator, retarded, and time-ordered correlators at fixed cutoff.
- `off-center interval cut.md`: no-parity classical and canonical construction, common-pole modes, cut-position convergence, and the symplectic-normalization audit.
- `lifting function independence.md`: exact cotangent equivalence for changes of lift and controlled truncation errors for a smooth change.
- `three-region associativity.md`: two-interface Schur-complement associativity, canonical covariance, correlator equality, and uncut-limit convergence.
- `scalar cylinder.md`: channel-by-channel canonical gluing on $[-L,L]\times S_R^1$ and the double-sum Shale--Stinespring analysis.
- `maxwell 1p1.md`: Gauss-law reduction, interface moment map, global electric flux and compact-$U(1)$ quantum gluing.
- `maxwell cylinder.md`: Gauss-reduced transverse photons, interface gauge data, Wilson observables and channel canonical maps.
- `ads-rindler geometric target.md`: the global Cauchy-slice target, matching domain and obstruction to direct two-exterior horizon gluing.
- `ads-rindler scalar quantization.md`: intrinsic wedge modes, CPS normalization, opposite boost orientations, global kernels and KMS data.
- `ads-rindler regulator removal.md`: brick-wall density, boundary-trace domains, Fock obstruction and surviving algebraic statement.
- `numerics/natural_method_feedback_spectrum.wl`: finite-cutoff Dirichlet-to-Neumann feedback and Galerkin checks.
- `numerics/finite_cutoff_canonical_gluing.wl`: reduced symplectic, Hamiltonian, and vacuum-covariance checks.
- `numerics/finite_cutoff_gaussian_vacuum.wl`: Bogoliubov, squeezed-state, covariance, overlap, occupation, and energy checks.
- `numerics/finite_cutoff_entanglement.wl`: reduced-state symplectic spectra, entropy, modular-matrix, purity, and cross-covariance checks.
- `numerics/finite_cutoff_correlators.wl`: mode-sum/covariance correlator comparison, projected equations, matching conditions, and regulated CCR checks.
- `numerics/off_center_cut.wl`: off-center spectrum, exceptional modes, no-parity canonical map, modewise $L^2$ normalization, and cut-position convergence.
- `numerics/lifting_function_independence.wl`: lift-change conjugacy, symplectic equivalence, field/correlator equality, and smooth-tail convergence.
- `numerics/three_region_associativity.wl`: equality of both gluing orders for the interface map, dynamics, spectrum, covariance and correlators.
- `numerics/scalar_cylinder.wl`: cylinder-channel overlaps, polar symplectic maps, Bogoliubov identities, and radial--angular Hilbert--Schmidt sums.
- `numerics/maxwell_1p1.wl`: finite-dimensional symplectic reduction and electric-flux sector checks for $1+1$ Maxwell.
- `numerics/maxwell_cylinder.wl`: transverse-vector overlaps, channel symplectic/Bogoliubov checks and the harmonic rotor sector.
- `numerics/ads_rindler_wedge.wl`: active wrapper for the preserved wedge/global-completion checks plus the brick-wall Hilbert--Schmidt diagnostic.
- `numerics/README.md`: verification scope for the active numerical calculation.
- `TODO.md`: immediate classical and quantum tasks.

## Roadmap

- Near term: carry the interval result channel by channel to the scalar cylinder and audit the resulting double ultraviolet sum.
- Next solvable scalar model: place the scalar on $[-L,L]\times S^1_R$ and cut at $x=0$. The interface value becomes $q(t,\theta)$, while Fourier decomposition along $S^1_R$ keeps each channel analytically controllable.
- Medium term: extend the successful $1+1$ Gauss-law reduction to the cut cylinder, where nonzero angular channels add local photon modes and tangential/interface data.
- Long term: fix the AdS--Rindler geometric target, then formulate regulated global-Cauchy-data reconstruction rather than assuming direct pointwise horizon gluing.

## Deprecated Work

The previous finite-coupling, penalty-interpolation, lattice, curved-space, Maxwell, Chern--Simons, AdS--Rindler, article, and associated numerical tracks are preserved under `deprecated/`. They remain historical calculations and comparison material, but they are no longer the active formulation of the gluing project. The future Maxwell and AdS--Rindler tasks may reuse verified calculations from this directory without reinstating the deprecated conceptual framework.

## Claim Boundary

Verified so far: recovery of the connected scalar spectrum for centered, off-center and cylinder cuts; retention of common-pole $q=0$ modes; fixed-window cut, lift and associativity tests; finite-dimensional symplectic maps and pure Gaussian covariances for the declared regulators; the centered hybrid-regulator squeezed-vacuum calculations; complete fixed-cutoff interval correlators; and failure of the Shale--Stinespring condition both for that hybrid regulator and for the physically normalized interval/cylinder overlap. The cylinder double sum diverges at least linearly under a common cutoff.

Not verified: cut or normalization independence of the centered hybrid-regulator overlap, $N^3$ particle-number and $N^4$ energy growth or entropy; cutoff-independent coincident-point observables; alternative Maxwell boundary conditions; a null four-region AdS variational principle; interacting theories; or gravity. Physically normalized interval/cylinder overlaps and the AdS--Rindler brick-wall analysis independently retain the negative sharp Fock-equivalence conclusion.
