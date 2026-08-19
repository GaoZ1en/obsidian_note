# AGENTS.md — Boundary-Feedback Gluing

## Scope And Authority

- These instructions apply throughout `Articles/Quantization in AdS/gluing/`, including `numerics/` and future scalar, Maxwell, and AdS--Rindler work.
- Read `formalism.md` before any substantive edit in this subtree. Its action-first, boundary-feedback, canonical-quantization logic is the authoritative active formulation.
- Use `README.md` for the current claim boundary and project roadmap, and `TODO.md` for the ordered unfinished calculations.
- Treat `deprecated/` as historical comparison material. Do not restore its penalty-interpolation or extra-port formulations as the active definition of gluing, and do not edit deprecated files unless the user explicitly requests it.
- Follow the logic and conventions of `formalism.md`, but do not propagate a local algebraic typo when it conflicts with the action, boundary conditions, or a verified identity. Verify the formula, state the discrepancy, and make only the supported correction.

## Required Expository Language

- Use the direct language of prescribed boundary histories, allowed variations, continuity, flux matching, reconstructed fields, canonical coordinates, and operator relations.
- Do not replace this presentation by affine-solution-space, fiber-bundle, fiber-product, interface-cotangent-space, stack, or homotopy language unless the user explicitly asks for that reformulation.
- The active quantum route is canonical. Do not introduce a path-integral gluing formula as the derivation or as evidence for a canonical claim unless the user explicitly requests a separate path-integral comparison.
- Avoid textbook filler. Add a definition or intermediate calculation only when it closes a real logical gap in the argument.

## Mandatory Logical Order

1. Start from the regional actions, the physical outer boundary conditions, and the chosen interface orientation. In the interval prototype,
   `y_1=x+L` and `y_2=L-x` both increase toward the cut, so signed flux matching is
   $\phi_1'(L)+\phi_2'(L)=0$.
2. Vary the action before imposing the interface equation. First identify
   $q_1=q_2=q$; then use the arbitrariness of the common $\delta q$ to derive flux matching. Do not impose flux matching by assertion.
3. For each prescribed regional history $q_i(t)$, keep $q_i$ fixed under the allowed regional variations. Explain the loss of time-translation invariance directly: a nonconstant prescribed history is changed by time translation, and the regional energy obeys a boundary-work balance law.
4. In the glue-first spectral calculation, retain the full amplitudes $(B_1,B_2,q)$ until the homogeneous system has been solved. Do not divide by $\sin(kL)$ before separating the two spectral sectors, and treat $k=0$ with its own linear spatial solution.
5. Keep both spectral sectors:
   - the zeros of the Dirichlet-to-Neumann response give the common, nonzero-interface sector;
   - its poles signal regional Dirichlet eigenmodes and must be restored from the original equations as the $q=0$ relative sector.
   Never call the zero set of the response alone the full glued spectrum.
6. Normalize every positive-frequency global mode with the integrated symplectic form before introducing its creation and annihilation operators.
7. In the quantize-first calculation, decompose
   $\phi_i=\psi_i+(y/L)q_i$, use strict-Dirichlet modes for $\psi_i$, derive the forced oscillator equations, and retain the exact homogeneous plus retarded solution. Keep the time-domain feedback problem distinct from the homogeneous frequency-domain response problem.
8. Quantize the regional initial data only while $q_i$ is prescribed. The operators $d_{i,n}$ define a reference Gaussian representation; for nonconstant $q_i(t)$, do not call its annihilated state a stationary regional vacuum.
9. After gluing, solve the interface equation for the operator-valued common history $q[d_+]$ and retain the decoupled $d_-$ modes. Reconstruct the full field from $q(t)$ and $c_{i,n}(t;q)$ before defining global canonical variables.
10. Obtain the glued operators through the sequence
    $$(q,c_i)\longrightarrow\phi_{\mathrm{glued}}\longrightarrow(Q_r,P_r)\longrightarrow(a_r,a_r^\dagger).$$
    Define $Q_r,P_r$ by projection onto normalized glued eigenmodes and verify their reduced canonical commutators. Do not infer them from the spectrum alone.
11. Use a common finite regulator on the regional and global descriptions before making an equivalence claim. Construct the reduced symplectic map first, quantize it second, and study the continuum limit last.

## Quantum Claim Boundaries

- The fixed-source relations $[C_{i,n},V_{j,m}]=i\delta_{ij}\delta_{nm}$ do not by themselves prove the same relations after $q$ becomes operator-valued. Derive the reduced symplectic form or the equivalent reduced CCR.
- A formal Bogoliubov formula is not yet a physical gluing theorem. Verify the canonical commutators, Hamiltonian intertwining, and regulator dependence on the correctly reduced variables.
- Do not quantize the boundary value $q$ as an additional independent port oscillator. At a finite cutoff, remove any spurious port mode before comparing with the global theory.
- Finite-dimensional symplectic or metaplectic equivalence does not imply continuum Fock-space equivalence. Apply the Shale--Stinespring Hilbert--Schmidt criterion to the large-mode Bogoliubov coefficients.
- Formal boundary operator identities require a stated trace domain or regulator. An $L^2$ change of basis alone does not impose continuity or flux matching.
- Distinguish a recovered spectrum, a verified CCR algebra, a finite-regulator unitary, and a continuum unitary equivalence. Never promote one level to the next without its separate check.

## Extensions

- For higher-dimensional scalar models, preserve the same order channel by channel: action variation, interface conditions, regional quantization, operator feedback, reduced canonical map, then continuum analysis.
- For Maxwell theory, solve Gauss law and classify allowed versus charged boundary gauge transformations before quantization. Identify electric-flux and Wilson-line data explicitly; do not add edge oscillators merely to balance dimensions.
- For AdS--Rindler work, do not treat the two Lorentzian exteriors as a complete global decomposition or impose pointwise horizon equality as gluing. First specify the reconstructed region and use matched global Cauchy data, a suitable timelike cut, or an explicit horizon regulator. Keep intrinsic wedge KMS/Unruh statements distinct from global reconstruction and from Fock-space factorization.

## Editing And Verification

- Preserve the notation, section order, sign conventions, and direct prose style of `formalism.md`. Make narrow local patches and do not insert broad preliminary exposition before the point where it is needed.
- Before changing a formula, run the computationally appropriate check required by the parent `AGENTS.md`. Verify determinants, mode overlaps, series identities, canonical matrices, and asymptotics rather than relying on inspection.
- After editing Markdown, run `git diff --check` and a Pandoc parse of the changed note. After changing an active Wolfram script, run its documented narrow regression when available and update `numerics/README.md` only if the verified scope changes.
- Run `python3 scripts/validate_vault_policy.py` after adding or changing an `AGENTS.md` in this subtree.
- Report mathematical edits with `Verified:`, `Assumptions:`, and `Not verified:`. Keep formal or regulator-dependent statements explicitly labelled.
- Do not modify `README.md`, `TODO.md`, or deprecated material merely to mirror conversational history. Update them only when the stable project direction, immediate tasks, or verified claim boundary changes.
