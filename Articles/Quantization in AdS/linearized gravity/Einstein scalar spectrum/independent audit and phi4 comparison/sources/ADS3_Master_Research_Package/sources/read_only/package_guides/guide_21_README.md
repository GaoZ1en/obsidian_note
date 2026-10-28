# New recoupling and fixed-right spectral analysis

All files in this directory are new to the 2026-10-19 round. Original reports, source calculations, and the previous Fock-space package were read without modification.

## Main results

The principal mathematical note is **FOUR_BODY_CLUSTER_FREDHOLM_THEOREM.md**. It proves the normalized three-\(6j\) overlap, complete fixed-\(Q\) four-body cluster limit with multiplicities, exact auxiliary-zero identity, limiting Fredholm determinant, and finite Gamma reduction for integral \(\Delta\). It includes a new exact asymptotic minimum and an actually completed nonchiral Gamma example.

**ALL_N_F_MOVES.md** gives the general binary-tree construction, channel rules, finite move count, Bose fractional parentage, and complexity. It explicitly distinguishes the demonstrated four-body backend from the not-yet-integrated arbitrary-\(N\) tree compiler.

**LOW_CHANNEL_POWER_IDEALS.md** classifies, for every finite \(N\), the simultaneous pair-channel cutoffs \(k\le2\) and \(k\le3\), including their complete graded \(S_N\) representations. It gives exact low-channel multiplicities for every right degree, explicit degree-one-right primary states, and the complete critical-mass yrast multiplicities when the physical affine bound is saturated. A fifth-power counterexample identifies the first obstruction to extending the same simple construction to higher cutoffs.

The physics remains the scalar \(h=0\) prescription of the preceding package, with the complete established two-body Einstein kernel. The expansion is \(E=E_0+G\gamma+o(G)\).

## Programs

Run from the extracted research-package root with Python, SymPy, NumPy, SciPy, and mpmath installed. The programs read the bundled preceding calculation modules without modifying them:

    python -B analytic_research/recoupling/four_body_racah.py --Delta 2 --P 32 --Q 0 --exact --output analytic_research/recoupling/example_exact.json

For a large nonchiral floating-point spectrum:

    python -B analytic_research/recoupling/four_body_racah.py --Delta 2 --P 512 --Q 2 --diagnostics --output analytic_research/recoupling/example_numeric.json

For the independent original-power-ideal and permutation-character checks:

    python -B analytic_research/recoupling/verify_power_ideals.py

The last command needs only SymPy and the Python standard library. It regenerates power_ideal_verification.json. Timings in the retained floating-point benchmarks used one BLAS thread; elapsed time on a different installation can vary.

The main callable interfaces are:

| Module | Interface and result |
|---|---|
| four_body_racah.py | exact_matrices(delta,P,Q): rational matrix, physical CG metric, labels and potentials |
| four_body_racah.py | exact_spectrum(delta,P,Q): complete exact nonzero characteristic polynomial and exact multiplicities |
| four_body_racah.py | numeric_spectrum(delta,P,Q): all positive roots and physical corrections, clearly marked numerical |
| cluster_spectrum.py | limiting_clusters(delta,Q,T,epsilon): every cluster through cutoff \(T\), atoms, pair branches, nullity and explicit tail norm bound |
| fredholm_determinant.py | fredholm_log_truncated(delta,Q,s,T,epsilon): convergent determinant product at any \(\Delta>1\) |
| fredholm_determinant.py | fredholm_gamma_delta2_chiral(s,epsilon,precision): completed explicit quartic/Gamma expression |
| integer_gamma_tail.py | gamma_fredholm(delta,Q,s,epsilon,precision): exact parity-tail polynomial construction and finite Gamma evaluation at integral \(\Delta\) |
| certify_numeric_matrix.py | certify(P,Q): exact rational-interval operator-norm forward error certificate |

The generic Gamma routine accepts positive rational \(s\). Its symbolic determinant and root-finding costs grow with \(Q,\Delta\), while remaining independent of four-body \(P\). The completed sample is \(\Delta=2,Q=1,s=20\); the theorem is broader than this numerical demonstration.

## Verification hierarchy

1. **Original Hamiltonian representation:** recoupling_verification.json and four_body_verification.json compare exact entries against the previous independent physical Bargmann polynomial construction, including nonintegral \(\Delta\) and full simultaneous Bose symmetry.
2. **Measured improvement:** exact_benchmarks.json compares exact matrix hashes, time and Python allocation against the old sparse polynomial stage. High-\(P\) floating-point records are four_256_0_numeric.json and four_512_2_numeric.json.
3. **Exact new finite spectra:** four_6_2_exact.json and four_32_0_exact.json contain rational characteristic coefficients; the latter has positive degree 26.
4. **Exact cluster statements:** cluster_count_identity.json records the symbolic Molien identities and independent coefficient checks. cluster_minimum_certificate.json is an exact finite-plus-tail inequality proof covering all three-body degrees.
5. **Spectral determinant:** fredholm_gamma_verification.json and nonchiral_gamma_verification.json contain exact tail identities, finite Gamma values, and independent infinite-product truncation comparisons.
6. **Numerical accuracy:** numerical_cluster_checks.json records finite-\(P\) convergence and high-dimensional eigensystem residuals. numeric_matrix_forward_certificate.json gives a rigorous rational forward-error bound against the exact moderate-size matrix.
7. **Complete low-channel modules:** power_ideal_verification.json checks 70 exact cases, \(N=2,\ldots,6\), cubic and quartic root powers, and degrees \(0,\ldots,N+2\). It computes original-generator Macaulay matrices and the actual quotient character on every conjugacy class. It also verifies the degree-six fifth-power obstruction at \(N=3\).

Small floating-point residuals are not described as exact roots. Agreement with a truncated infinite product is not described as a 60-digit verification of its infinite limit. Exact rational identities, analytic convergence proofs, interval bounds, and numerical evidence are separately identified.

## Remaining limitations

The fixed-\(Q\), \(P\to\infty\) theorem does not address a simultaneous large-\(P,Q\) limit. Generic finite-\(P\) four-body positive roots still require a characteristic polynomial or numerical diagonalization. The Racah structure organizes the matrix and solves its complete unbalanced cluster asymptotics; it does not establish integrability of the full interacting scalar Fock space.
