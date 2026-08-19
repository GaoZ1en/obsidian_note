# TODO

## Immediate: Interval Scalar

- [ ] Action: repair the local formula and wording issues in `formalism.md` using the direct language of prescribed boundary histories, allowed variations, continuity, and flux matching.
  Context: keep the presentation in terms of prescribed boundary histories, allowed variations, continuity, and flux matching. Explain time-translation breaking directly: when $q_i(t)$ is prescribed and nonconstant, translating a solution changes its boundary history, while the energy balance records the resulting boundary work.
  Check: correct the mass sign in the regional equation, treat $k=0$ separately rather than as a zero of $k\cot(kL)$, repair the overlap-matrix indices, and call the state annihilated by $d_{i,n}$ a reference Gaussian state rather than a stationary regional vacuum.

- [ ] Action: connect the operator-valued feedback solution to the glued annihilation operators.
  Context: after obtaining $q[d_+]$ and $c_{i,n}(t;q)$, reconstruct the glued field and project it onto the normalized global modes to define $Q_r(t)$ and $P_r(t)$. Retain the $q=0$ relative modes associated with the poles of the Dirichlet-to-Neumann response.
  Check: derive $a_r=e^{i\Omega_r(t-t_i)}(\sqrt{\Omega_r/2}\,Q_r+iP_r/\sqrt{2\Omega_r})$ and verify its canonical commutators from the reduced symplectic form rather than assuming that the fixed-source commutators remain unchanged after $q$ becomes operator-valued.

- [ ] Action: construct a finite-cutoff reduced symplectic model for canonical quantum gluing.
  Context: use the $2N$ physical feedback modes selected by the truncated Dirichlet-to-Neumann relation. Do not quantize the unconstrained $(2N+1)$-variable Galerkin port model as though its extra growing port mode were physical.
  Check: exhibit reduced canonical coordinates and an explicit symplectic matrix $S_N$ to the same global regulator, verifying $S_N^{\mathrm T}JS_N=J$ and equality of the quadratic Hamiltonians.

- [ ] Action: quantize the finite-dimensional symplectic map.
  Context: lift $S_N$ to a metaplectic unitary $U_N$, or equivalently compare the two finite-dimensional regular CCR representations.
  Check: verify the canonical commutators, vacuum covariance matrix, and Hamiltonian intertwining at fixed $N$.

- [ ] Action: construct the finite-$N$ global vacuum from the two regional Gaussian states.
  Context: start from the product reference state $\ket{0_{\mathrm D}^{(N)}}=\ket{0_1^{(N)}}\otimes\ket{0_2^{(N)}}$ built from the correctly reduced regional operators. For $a=\boldsymbol\alpha_N b+\boldsymbol\beta_N b^\dagger$, define $\boldsymbol Z_N=\boldsymbol\alpha_N^{-1}\boldsymbol\beta_N$ and construct the corresponding squeezed state. If the prescribed histories have a nonzero classical mean, keep the coherent displacement separate from the squeezing produced by gluing.
  Check: verify $\boldsymbol Z_N^{\mathrm T}=\boldsymbol Z_N$, $1-\boldsymbol Z_N\boldsymbol Z_N^\dagger>0$, the annihilation equations $a_r\ket{0_{\mathrm{global}}^{(N)}}=0$, the determinant normalization, and equality between the squeezed-state covariance matrix and the vacuum covariance obtained directly from the global Hamiltonian.

- [ ] Action: compute finite-cutoff vacuum diagnostics in the regional representation.
  Context: calculate the overlap $F_N=|\langle0_{\mathrm D}^{(N)}|0_{\mathrm{global}}^{(N)}\rangle|$, the regional occupation matrix in the global vacuum, the total regional particle number $\operatorname{Tr}(\boldsymbol\beta_N^\dagger\boldsymbol\beta_N)$, and the corresponding regional energy sum.
  Check: reproduce each quantity independently from the squeezed state and the covariance matrix, determine its large-$N$ behavior, and distinguish a regulated overlap tending to zero, failure of the Hilbert--Schmidt condition, and divergence of the more strongly weighted regional energy.

- [ ] Action: compute the reduced regional Gaussian states and their entanglement spectra.
  Context: restrict the global vacuum covariance matrix to either subregion and compute its symplectic eigenvalues, entanglement and Rényi entropies, Gaussian modular Hamiltonian, and left--right mutual information.
  Check: verify purity and the uncertainty relation for the full finite-$N$ covariance matrix, mixedness and positivity of each reduced covariance matrix, and agreement with the cross-region correlators. Keep all sharp-cut continuum entropy statements regulator-dependent until their ultraviolet behavior has been analyzed.

- [ ] Action: compute the glued correlation functions of the interval scalar.
  Context: distinguish the global vacuum from the regional reference Gaussian state. Compute the same two-point function both from the normalized global modes $a_r$ and from the reconstructed regional fields $q(t)$ and $c_{i,n}(t;q)$, including the cross-region correlator $\langle\phi_1\phi_2\rangle$, the interface correlator $\langle q(t)q(t')\rangle$, and mixed correlators $\langle q\phi_i\rangle$. Obtain the commutator, retarded, and time-ordered correlators from the same state-dependent Wightman data.
  Check: at fixed $N$, compare the mode-sum and covariance-matrix calculations and verify the field equation in both arguments, the outer Dirichlet conditions, interface continuity, oriented flux matching, and the equal-time CCR. Before taking $N\to\infty$, identify which coincident-point or interface traces require distributional interpretation or regularization; use Wick's theorem for higher Gaussian correlators only after the two-point function is established.

- [ ] Action: determine whether the finite-cutoff quantum equivalences have a continuum Fock-space limit.
  Context: finite-dimensional unitary equivalence and fixed-window spectral convergence do not imply continuum unitary equivalence.
  Check: compute the large-mode Bogoliubov coefficients and apply the Shale--Stinespring Hilbert--Schmidt criterion before making any Fock-space claim.

## Structural Tests Before Higher-Dimensional Models

- [ ] Action: repeat the construction for an off-center cut $[-L_1,0]\cup[0,L_2]$ with $L_1\neq L_2$.
  Context: reflection symmetry and the simple $d_\pm$ decomposition are then absent. Away from regional poles, the interface condition becomes $D_1(\Omega)+D_2(\Omega)=0$ with $D_i(\Omega)=k\cot(kL_i)$; possible common poles must still be restored from the original amplitude equations.
  Check: retain $(B_1,B_2,q)$ until the homogeneous system is solved, recover $k_r=r\pi/(L_1+L_2)$ including any exceptional $q=0$ modes, and construct the finite-$N$ canonical map, global Gaussian vacuum, and correlators without using parity. Verify that physical results are independent of the artificial cut position.

- [ ] Action: prove independence of the lifting function used in the regional decomposition.
  Context: replace $\phi_i=\psi_i+(y/L_i)q_i$ by $\phi_i=\psi_i+h_i(y)q_i$ with $h_i(0)=0$ and $h_i(L_i)=1$. The regional coefficients and forcing terms change, but the reconstructed field and glued observables should not depend on this auxiliary choice.
  Check: derive the change of regional canonical coordinates, verify preservation of the symplectic form and CCR, and compare the Dirichlet-to-Neumann response, spectrum, global covariance, and correlation functions. Distinguish exact independence in the complete theory from lifting-dependent truncation errors at finite $N$, and verify that the latter vanish in the controlled regulator limit.

- [ ] Action: test associativity by cutting the interval into three subregions.
  Context: compare $(\Sigma_1\cup\Sigma_2)\cup\Sigma_3$ with $\Sigma_1\cup(\Sigma_2\cup\Sigma_3)$ using the same global finite regulator and the same outer boundary conditions.
  Check: compare the two reduced symplectic maps up to canonical coordinate relabelling, verify equality of the global spectrum and Hamiltonian, and match the finite-$N$ global vacuum covariance and correlation functions. If metaplectic operators are constructed, determine whether the two compositions agree up to the expected overall phase before asking for a continuum associativity statement.

## Next Solvable Scalar Model

- [ ] Action: generalize the construction to a massive scalar on $[-L,L]\times S^1_R$ with the cut at $x=0$.
  Context: the interface value becomes a field $q(t,\theta)$. Fourier decomposition along $S^1_R$ reduces each angular channel to the interval calculation with effective mass $m_\ell^2=m^2+\ell^2/R^2$.
  Check: recover the connected cylinder spectrum, construct the channel-by-channel canonical map, and determine whether summing over both radial and angular mode numbers changes the Hilbert--Schmidt behavior.

## Medium Term: Maxwell Theory

- [ ] Action: solve $1+1$ dimensional Maxwell theory on a cut interval as the minimal gauge-theory gluing model.
  Context: this model has no local photon oscillator and isolates Gauss law, the global electric flux, boundary gauge transformations, and possible charged interface data.
  Check: specify the outer boundary conditions, solve the constraint before quantization, identify the physical regional and global observables, and verify that gluing reproduces the uncut electric-flux sectors without adding a spurious edge oscillator.

- [ ] Action: extend Maxwell gluing to $[-L,L]\times S^1_R$.
  Context: this geometry retains the scalar cylinder's mode decomposition while adding local photon modes and nontrivial gauge data at the cut.
  Check: identify the allowed gauge transformations, normal electric flux, tangential gauge data and Wilson-line observables; construct the finite-regulator reduced symplectic form and compare its canonical quantization with the uncut theory.

## Long Term: AdS--Rindler Wedges

- [ ] Action: fix the geometric target before defining AdS--Rindler gluing.
  Context: the left and right Lorentzian exteriors omit the future and past regions and therefore do not by themselves form a global Lorentzian decomposition. Candidate constructions are matched data on a global Cauchy slice, a global-time timelike cut, or a stretched-horizon regulator.
  Check: state exactly which region is to be reconstructed, which surface carries the initial data, and which boundary conditions make the classical evolution well posed. Do not use pointwise equality across the Killing horizon as a substitute for this step.

- [ ] Action: redo the free-scalar wedge quantization in the active boundary-feedback language.
  Context: the preserved AdS--Rindler calculations provide real-frequency Klein--Gordon-normalized modes, left/right boost generators, Unruh combinations, and KMS checks, but they do not establish sharp-wedge factorization or ordinary global/wedge Fock equivalence.
  Check: retain both horizon branches, track the opposite future-time orientation of the two wedges, reconstruct the appropriate global Cauchy data, and verify the Bogoliubov and KMS relations with an explicit regulator.

- [ ] Action: study the removal of the AdS--Rindler regulator before extending to gauge fields or gravity.
  Context: horizon traces, infinite redshift, and the continuous boost spectrum may obstruct the same Fock-space identification that is already nontrivial for the interval scalar.
  Check: analyze the stretched-horizon limit, boundary-trace domains, high-frequency Bogoliubov coefficients, and the precise algebraic statement that survives if unitary Fock equivalence fails.
