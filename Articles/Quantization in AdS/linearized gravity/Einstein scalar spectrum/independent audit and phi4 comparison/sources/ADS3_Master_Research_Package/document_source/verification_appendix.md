# Appendix V. Reproduction record and the meaning of the certificates

## V.1 A finite operator, a proof, and an execution record are different objects

The proofs in this note establish the all-index statements under their stated hypotheses. The finite engines construct a particular finite block. A verification program may reconstruct that block independently, check a symbolic identity, or diagnose a numerical approximation. These roles are recorded separately in the companion package. A successful finite test does not replace a proof of an infinite limit; a checksum records file identity, not mathematical validity.

The main finite entry is code/engine/fock_spectrum.py. Its primary, level and shell subcommands construct the objects of Chapter 5. Pair coefficients are supplied by Chapter 4; logarithmic state construction, stable occupation counting, and recoupling are separate interchangeable representations. Exact rational values are the default verification inputs. At an algebraic mass, the mathematical procedure specializes the exact field before choosing independent columns or factoring a polynomial. A symbolic generic output requires the same specialization and recomputation; its pivots and generic multiplicities are not valid automatically at a collision.

The main verifier is run_verification.py. The package also supplies reproduce_all.py for the independent suites, and README_REPRODUCIBILITY.md gives portable commands and the output layout. Reproduction runs into new output directories. Original reports and imported original records remain separately identified.

## V.2 What was actually recomputed

The following table records the completed prepublication runs used in the synthesis. These timings describe this execution environment and are not complexity estimates. Where a backend was inherited, the table says so. The portable wrapper's own fresh run is retained separately with its command and hashes.

| Run group | Actual work | Evidence and scope |
|---|---|---|
| Canonical physics | 111 checks in 3.48 s: 4 general recurrence identities, 3 positivity/removable-point checks, 1 orientation identity, 27 exact Klein–Gordon norms, 12 ground-external integrations, and 64 pair channels | The ground-external integrals were independently evaluated at 60 digits. The 64 channels rerun the inherited exact rational direct-\(\mathcal K_4\) evaluator at \(\Delta=1001/1000,3/2,2,7/3\), through circular level 6. |
| Formal physics interfaces | 10 checks in 0.72 s | Five inherited exact BCH/finite-block checks; a new general hypergeometric coefficient identity; dynamic-response and Weyl-coordinate counterexamples. This does not rerun the full old third-order OFPT calculation. |
| Finite spectra and worked examples | 7 exact check groups in 2.60 s | Independent engine representations agree on small mixed blocks. The complete 20-state shell, the actual saturated state, the exceptional algebraic mass, root multiplicities and physical projectors are recomputed. The billion-degree example recomputes counts and compression size, not its large-integer polynomial. |
| Hierarchy audit integration | All 11 mandatory task payloads, in 33.68 s | Exact flags, coherent inequalities, moving layer, universal low coefficient, partition and equal-cluster exchange, two strict soft inertia certificates, oriented baseline, and finite comparator checks. This reruns audited implementations with a new fail-closed wrapper. |
| Additional cluster interfaces | All 7 programs, in 9.35 s wall time | Independent finite CG norms, endpoint recurrences, partition Möbius identities, orientation and source exchange, exact nullity generating functions, the rational minimum certificate, and the integer-mass Gamma specialization. |
| Independent stable, soft and universal checks | All 6 required programs, in 57.02 s wall time | Separate Casimir/primary implementations, all-mass determining identities, the generic Jordan plane and protected doublet, the exact first-correction jets, the coherent group/counting calculation, and the two rational soft brackets. |

For the physics integrations, the twelve parameter pairs are \(\Delta=5/4,3/2,7/3,3\) and ground-external angular labels \(J=0,1,4\). The largest observed absolute difference from the analytic coefficient is below \(10^{-40}\). This is a high-precision diagnostic, not an interval quadrature bound. The canonical finite rational channel evaluations separately check the constraint reconstruction, primary extraction and exact vanishing of off-diagonal residues; they do not infer the coefficients by fitting target energies.

The cluster suite checks 171 exact CG norm/lowest-weight identities, 1,154 finite partition identities, orientation and equal-source parity in 60 cases each, nullity generating functions and transients, and 127 low-index rational minimum comparisons followed by a polynomial tail certificate. The finite Gamma specialization at \(\Delta=2,u=1,s=20\) checks the rational all-index identity in both parity tails before evaluating the finite Gamma expression at 80-digit precision. Its agreement with a retained diagnostic is numerical; the all-index rational identity and the tail proof carry the exact assertion.

The independent universal calculation verifies all six determining jets over \(\mathbb Q(d,v,w)\) and again at four rational masses. A separate rank-one-primary implementation checks the same coefficient, the Einstein substitution and the large-mass limit. The first-correction checks use symbolic mass at weights six, eight and nine, after the differential-order theorem has reduced the problem to those determining data. Extra finite Gegenbauer and diagonal-extraction identities are error checks, not the reason the all-degree theorem holds.

## V.3 Exact inertia, semantic validation, and negative tests

For \(\Delta=2,N=3\), the two delivered strict smallest-positive brackets are

\[
\begin{array}{c|c|c|c|c}
(P,Q)&d_N&\kappa_N& r_{\rm aux}&\lambda_{\min}^{+}\\
\hline
(16,8)&26&0&34&1/5<\lambda_{\min}^{+}<1/3\\
(32,16)&94&4&98&1/6000<\lambda_{\min}^{+}<1/5000 .
\end{array}
\tag{V.1}
\]

Both auxiliary nullities are eight. Thus the physical positive ranks are 26 and 90, respectively. The distinction matters: the auxiliary zero directions are removed in the inertia count; the four exact physical kernel states in the second example are a different space. Rational \(1\times1\) or \(2\times2\) Schur pivots compute the inertia without a numerical tolerance. Strict endpoint checks exclude equality at either endpoint, and the upper endpoint has a positive eigenvalue below it.

The mandatory validator checks the exact set of expected tasks, each task's declared success, required fields, exact input labels, physical and auxiliary dimensions, kernel and rank identities, and the strict inertia conditions. It checks substantive inequalities in the flags, coherent estimates, orientation and universal coefficients rather than accepting a zero exit status or a pre-existing JSON file. Code hashes before and after the run confirm that the tested copies were unchanged during execution.

Optimized Python is rejected explicitly: the correctness of the run cannot depend on assertions that disappear under a -O flag. Nine deliberately corrupted payload variants were rejected, including a missing task, a forged success flag, missing fields, a changed kernel count, incorrect inertia endpoints and a skipped status. Dependency failures in the initial default-Python attempts were retained as failures; only subsequent executions in the declared environment are recorded as successful. Independent wrappers additionally reject stale output files.

## V.4 Environment, inherited records, and reproducibility limits

The current exact runs used Python 3.12.14, SymPy 1.14.0, mpmath 1.3.0, python-flint 0.9.0, NumPy 2.3.5 and SciPy 1.17.0 on Linux x86-64. Not every suite requires every dependency. The package pins the actual versions and records the interpreter, timestamps, elapsed times, commands, standard output and standard error. The source and claim map identifies independently written code, inherited code rerun now, and inherited records not rerun.

The final portable end-to-end run also passed, in 102.64 seconds. It ran all five groups from isolated copies: the eleven-task hierarchy gate, finite regressions, physics, cluster, and the six-program independent stable/soft/universal suite. The top-level gate rejected all sixty missing, malformed or false payload cases and rejected optimized Python. The hierarchy gate separately retained its nine mutation rejections. Protected code and checker hashes agreed before and after the run. This record is stored under runs/current/portable_01; it is a fresh portable execution rather than a relabeling of the earlier authoring records.

The full historical Wolfram/xAct chain, every old radial polarization, all large binary64 four-body diagonalizations, the entire earlier Galois sweep, and every old cutoff-dependent plot were not rerun in this synthesis. Their status is inherited where they are cited. The raw pair cache is labeled as a cache; lifting it to a many-body block is not reported as fresh radial integration. The full billion-degree polynomial belongs to the inherited record; the current counting check is stated separately above.

There is no claim that the default finite engines scale uniformly polynomially with all input parameters. Fixed-\(Q\) or fixed-degree compression is mathematically powerful in its own range, while growing balanced exact matrices and their coefficient bit lengths remain a genuine cost. The portable scripts make the representative verification reproducible without requiring the original workspace paths or another explanation of what a successful payload means.
