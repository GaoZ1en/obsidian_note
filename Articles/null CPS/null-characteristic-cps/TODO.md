# TODO

## Closed in the Product Benchmark

- [x] Action: choose $M=\mathbb R^{1,1}\times S^2_R$ and use $Q_E=n=0$ for the main global Fock theorem.
  Result: $H^1(S^2)=0$ removes harmonic one-form modes; $\ell=0$ flux/Chern data are separated from the two $\ell\geq1$ radiative polarizations, while fixed nonzero sectors are named only as infinite-background fluctuation theories.
  Check: exact vector-harmonic regression.
- [x] Action: derive both master fields from the Maxwell action before gauge fixing.
  Result: each $(\ell,m,E/B)$ sector has $(2\partial_u\partial_v+\lambda_\ell)\Phi=0$ and the exact field-strength/potential quotient map.
  Check: parent-action, divergence and transport residuals vanish.
- [x] Action: close the finite-rectangle Goursat theorem.
  Result: Theorem I gives the Bessel/Riemann bounded inverse on matched $H^1$ profiles; those profiles coordinatize the local solution germ/restriction space on the patch, not the global solution space.
  Check: analytic Volterra estimates and $10^{-15}$ mode-reconstruction regression.
- [x] Action: normalize characteristic/global modes on the complete two-sheet cross.
  Result: the two principal-value pieces cancel and $\Omega_X(U_I,U_J^*)=-i\delta(I,J)$ without sheet doubling.
  Check: exact Wolfram normalization and sign regression.
- [x] Action: prove half-cross completion rather than assume a no-flux policy.
  Result: massive null-trace Plancherel bounds put both profiles in $H^1(\mathbb R_+)$, symplectic tails vanish, Schwartz packets decay rapidly at null infinity, and energy density extends the result to all finite-energy solutions.
  Check: exact null-frequency/Jacobian weights plus the analytic tail/density proof in calculation 12.
- [x] Action: characterize $\operatorname{Ran}R_X$ intrinsically.
  Result: the range is the graph-closed fixed-point space of the closed analysis operator and graph-bounded idempotent $P_X=S_XT_X$, with boxed two-sheet $a_k[f,g]$, inverse, exact one-particle/energy norms and an explicit nonlocal $J_X$ kernel.
  Check: calculation 15 proves density, closability, bounded synthesis, $T_\mu S_\mu=1$ and graph closedness; principal-value cancellations, delta Jacobians and kernel coefficients pass in Wolfram 14.3.
- [x] Action: separate classical energy profiles from the one-particle completion.
  Result: $J_{X,E}=S_\mu(-i)T_\mu$ acts on the graph-closed classical energy fixed-point space, while the one-particle completion is transported from $L^2(dk)$ and may have distributional profiles without a pointwise corner trace.
  Check: the kernel acts first on the Schwartz core; its integration-by-parts corner term is displayed explicitly.
- [x] Action: fix the global gauge policy.
  Result: the main theorem is on gauge-invariant master/field-strength solutions; the potential-quotient statement is only a fixed-asymptotic-frame corollary with explicit falloff and proper-gauge parameters.
  Check: calculation 16; finite-cut proper/charged bookkeeping is not imported into the boundaryless Fock theorem.
- [x] Action: replace flux-sector-dependent incompleteness evidence.
  Result: $\Phi=cJ_0(\sqrt{2\lambda_\ell uv})$ gives $r=p=0$ but a nonzero shared corner value for every fixed $\ell\geq1$, entirely within $Q_E=n=0$ on a finite patch.
  Check: calculation 07, equations (5.4)--(5.7); the mode is not mislabeled as a normalizable global half-cross vector.
- [x] Action: complete Weyl/CCR, stationary Fock, Hamiltonian and correlator layers.
  Result: global $J$ pulls back nonlocally to $J_X$; $[a_I,a_J^\dagger]=\delta(I,J)$ and $H_{\partial_t}$ generates the CPS time translation.
  Check: anomalous Hamiltonian coefficients vanish on shell.
- [x] Action: perform the Peierls comparison on gauge-invariant smearings.
  Result: the characteristic inverse, master causal propagator and projected Maxwell field-strength Peierls bracket agree.
  Check: analytic Fourier--Bessel identity plus timelike/spacelike truncation regressions.
- [x] Action: prove weak-symplectic associativity of sequential radiative master-cell composition.
  Result: explicit Goursat uniqueness identifies both parenthesizations with the same solution space and the pullback kernel is zero.
  Check: the replacement regression starts from independent $P_1\oplus P_2\oplus P_3$, uses an $18\times6$ compatibility embedding, feeds reconstructed traces through both parenthesizations, verifies the block-cut pullback, and cancels two nonzero full-rank internal-edge matrices only after matched pullback.
- [x] Action: add the Weyl-algebra composition corollary.
  Result: the symplectic reconstruction induces the canonical B1 $*$-isomorphism $W(c)\mapsto W(Gc)$.
  Check: no Hilbert tensor-product or Fock-implementability claim is made.

## Immediate Manuscript-Hardening Tasks

- [ ] Action: turn calculations 06--11 into a compact theorem/proof manuscript draft.
  Context: the project notes deliberately retain repair boundaries and script details that should not all appear in the paper.
  Check: every manuscript theorem points to one claim-ledger row and one proof location.
- [x] Action: audit the infinite-endpoint completion against precise massive Klein--Gordon references.
  Result: calculations 12 and the literature matrix cite Adler--Jacob, Nicolas and Sussman while retaining a self-contained $L^2(\omega dk)$ proof.
  Check: the exact convergence norm and trace constants are displayed.
- [ ] Action: decide whether the first paper omits the optional extended $\ell=0$ representation or puts it in an appendix.
  Context: the main theorem takes $Q_E=n=0$; $L^2(\mathbb R)$ versus $L^2(U(1))$ requires extra large-gauge input.
  Check: no extended-frame sentence leaks into the radiative completeness theorem.
- [ ] Action: finish a bibliography-quality pre-1990 reference chase through Wódkiewicz, Yan and Casher.
  Context: this round added Leutwyler--Klauder--Streit, Yan's coupled spin-one paper and Casher and narrowed novelty to the integrated action/CPS chain; an exhaustive predecessor-by-predecessor audit is still open.
  Check: inspect every cited predecessor rather than infer absence from title/abstract metadata.

## Parked Generalizations (Not Active This Round)

- A same-order Sobolev restriction/reconstruction theorem for the full angular tower without moving angular weights between seminorms.
- Curved double-null backgrounds, caustics and non-product cuts.
- Cuts with $H^1(S)\neq0$, including harmonic connection differences and flat holonomies.
- Large-gauge periodicity and charge normalization for the optional zero-mode frame.
- Non-Abelian singular reduction and gravitational symplectic composition.
- BRST, Schwarzschild/Kruskal, curved spherically symmetric Maxwell and B2 regional state reconstruction.

## Explicit Non-Blockers for the First Benchmark Paper

- Recovery of arbitrary B2 cross covariance from regional states.
- Sharp regional or sheetwise Hilbert tensor-product factorization.
- A sum over magnetic Chern sectors.
- Non-Abelian and gravitational quantization.
