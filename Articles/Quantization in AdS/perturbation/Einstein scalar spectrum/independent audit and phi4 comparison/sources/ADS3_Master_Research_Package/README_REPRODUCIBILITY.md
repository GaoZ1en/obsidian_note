# Reproducing the AdS3 master research note

Run `reproduce_all.py` to execute the complete required verification scope. It runs the audited eleven-job hierarchy suite, the finite-spectrum regressions, and the independent physics, cluster, and semiclassical suites. Every group must complete and its actual JSON payloads must pass semantic validation before the overall result is accepted.

The package is self-contained after its Python dependencies are installed. It uses the single canonical implementation in `code/engine`, the required advanced modules in `code/research`, and independent checks in `checks/independent`. Execution does not require the original repository, Library downloads, nested archives, or the historical absolute paths retained in authoring records.

## Environment and one-command reproduction

The tested interpreter is **CPython 3.12.14**. The pinned dependencies are SymPy 1.14.0, mpmath 1.3.0, python-flint 0.9.0, NumPy 2.3.5, and SciPy 1.17.0. The runner verifies these exact versions. Python 3.11 or later is accepted by the entry point; only the stated Python 3.12 environment is recorded as tested. Install the dependencies once, then run without network access.

From the package directory:

```bash
python3.12 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -B reproduce_all.py --output-dir runs/current/my_reproduction_01
```

Use a directory that **does not yet exist**. A later reproduction must use a new name. The entry point also works from another working directory when called by its absolute path. Relative output paths are resolved against the caller's current directory.

On Windows, use the virtual environment's `Scripts/python.exe` executable. No shell-specific command is needed by the runner itself.

The complete run normally takes a few minutes on a single workstation. The semiclassical suite runs three independent jobs concurrently; exact soft-mode inertia is the longest of those jobs. Actual durations, interpreter and dependency versions are written into each run's records.

## Recorded portable execution

The complete fresh run in `runs/current/portable_01/` **passed in 102.638021 seconds** using the pinned environment. The recorded group durations were:

| Group | Result | Seconds |
| --- | --- | ---: |
| Mandatory hierarchy | Passed all eleven jobs | 31.450751 |
| Finite spectra | Passed all seven regression tasks | 2.923345 |
| Independent physics | Passed 111 physics checks and ten ancillary checks | 4.730920 |
| Independent cluster | Passed all seven programs | 9.458401 |
| Independent semiclassical | Passed all six programs | 53.717717 |

All 72 protected source/dependency hashes agreed before and after that execution. The 19 independent source copies in its private workspaces also retained their recorded hashes. The portable acceptance checks rejected all 60 tested missing, malformed, or false payload/summary cases and an optimized invocation. The hierarchy suite additionally rejected its nine own mutations and its own optimized invocation.

After this complete pass, three frontend documentation strings were clarified: the command-line help, the level multiplicity rule, and the shell closure statement now state the dressed scalar branch with no independent free boundary-graviton excitations. The entire non-string abstract syntax tree is unchanged. Fresh help and a two-particle ground-level CLI output were checked; the level remains one-dimensional with `g=-56/5`. This **post-run documentation-only revision** is recorded with both source hashes, the exact diff, commands, outputs, and the syntax-tree comparison in `runs/current/portable_scope_revision_01/revision.json`. The earlier complete run is preserved exactly; no new full mathematical run is claimed for this wording revision.

## Required verification groups

| Group | Entry point or preserved runner | Acceptance scope |
| --- | --- | --- |
| `hierarchy` | `run_verification.py` | All eleven named mandatory jobs, exact required payload inventory, source and result hashes, the original semantic checks, nine negative payload mutations, and rejection of an optimized invocation. |
| `finite` | `checks/finite_regressions.py` | Seven exact regression tasks: pair normalization, two mixed primary blocks, the complete scalar shell at Delta 2 and free energy 10, an actual saturated state, the full algebraic critical-mass block, and compact output with exact billion-degree counts. |
| `physics` | `check_physics.py`, then `check_ancillary.py` | 111 physics checks and ten ancillary checks. These include 64 exact canonical pair channels, twelve independent high-precision gravitational integrals, 27 exact Klein–Gordon norms, symbolic crossed-Casimir identities, and the stated finite/formal ancillary identities. |
| `cluster` | `run_cluster_checks.py` | All seven required programs, including 171 exact Clebsch–Gordan cases, endpoint and nullity checks, exact rational determinant identities, finite minimum and uniform-tail certificates, exchange conventions, and one 80-digit Gamma specialization. |
| `semiclassical` | `run_local_checks.py` | All six required programs: symbolic and rational stable blocks, Jordan data, generic normal-form identities, universality jets, and both exact soft-mode inertia certificates with physical and auxiliary nullities distinguished. |

The hierarchy job names, in mandatory order, are:

1. `independent_flags`
2. `coherent_bounds`
3. `boundary_layer`
4. `universal_chiral`
5. `partition_hierarchy`
6. `fixed_q_exchange`
7. `bose_clusters`
8. `soft_inertia_P16Q8`
9. `soft_inertia_P32Q16`
10. `oriented_comparator`
11. `finite_comparator_smoke`

The final summary reports program counts, regression tasks, and individual physics checks as separate units. They are not added together into an artificial single test count.

## Where fresh results go

The output directory contains:

| Path | Meaning |
| --- | --- |
| `reproduce_all_summary.json` | Overall result, environment, five required groups, command records, semantic acceptance details, and SHA256 hashes for generated artifacts. |
| `protected_sources_before.json`, `protected_sources_after.json` | Hashes of the canonical code, checks, entry points, and dependency pins. They must agree. |
| `portable_rejection_checks.json` | Actual rejection tests for missing output files, malformed task payloads, incomplete or failed group summaries, source mutation, and optimized Python. |
| `hierarchy/` | All eleven fresh certificates, their logs, the hierarchy summary, and the original semantic/rejection records. |
| `finite/` | Seven regression records and the worked-example JSON files containing the exact spectral data. |
| `physics/`, `cluster/`, `semiclassical/` | Group logs, source-copy manifests, and private source/output workspaces for each independent suite. |

Several independent scripts write JSON next to their own source files. To preserve them unchanged, the portable runner copies **only their Python sources** into the new group's `work/checks/` tree. It then runs those copies. No historical JSON or logs are copied into a fresh execution workspace. Subdirectories and sibling imports are preserved, and every source copy is hash-checked. This is an execution snapshot of the independent checks; `code/engine` remains the sole canonical Fock implementation.

The cluster runner writes its local manifest and logs into `cluster/work/runs/`; its task payloads remain in `cluster/work/checks/`. The semiclassical runner writes `semiclassical/work/checks/execution_manifest.json`, its payloads beneath that directory, and its logs in the sibling `logs/` subdirectory. Physics payloads are `physics/work/checks/physics_run.json` and `ancillary_run.json`.

The package retains the pure cluster validator separately in `checks/cluster_payload_validation.py`. Its `require()` and `validate()` definitions are copied verbatim from the cluster runner. This permits the complete entry point to revalidate the fresh payloads without importing that runner's top-level subprocess loop. The semiclassical runner already has a main guard, so its original validators can be imported directly. No mathematical algorithm is changed by either adapter.

## Earlier records and provenance

The following directories contain preserved current authoring runs. Their contents are copied byte-for-byte, including their original commands, timestamps, and environment records:

- `runs/current/hierarchy_01/` and `runs/current/finite_01/`: the canonical package's earlier current verification and finite-example runs.
- `runs/current/finite_root_independent/vandermonde_norm.json`: the root author's previously executed independent exact arithmetic for the norm of the three-particle Vandermonde-fourth-power state at Delta 2. It records the 61 monomial terms, thirteen orbit representatives with their monomial coefficients and orbit sizes, and the exact norm `15158/49`; it is separate from the seven finite-regression tasks.
- `runs/current/physics_authoring/`: the completed 111-check physics run, ten-check ancillary run, and editorial syntax record.
- `runs/current/cluster_authoring/`: the seven-program cluster manifest, task payloads, and logs.
- `runs/current/semiclassical_authoring/`: the six-program execution manifest, task payloads, and logs, with the original tree preserved.

These records document calculations that actually ran during preparation. A fresh `reproduce_all.py` execution computes its own results in its requested new directory; it does not use these authoring records as substitutes for execution. Historical commands contain historical absolute paths as provenance only. The unchanged cluster runner also carries a `prior_environment_attempts` field describing the author's earlier missing-dependency attempts; these are historical context and are separate from the current `runs` array.

The inherited baseline examples in `checks/reference/hierarchy/` are **schema/reference inputs** for the original hierarchy checker. Their presence is not evidence of a new run. Fresh hierarchy results are accepted only after actual subprocess execution, payload semantics, source/result hashes, and negative tests pass.

`runs/inherited/fock_galois/` contains the original exact Galois records referred to by the note: `quintic_galois.json` for the four-particle chiral S5 example, `galois_obstruction.json` for the three-particle mixed S5 example, and `galois_n4_4_2.json` for the four-particle S6 example. These are retained certificates with their original modular factorizations and group arguments. They are labelled inherited and were not rerun by `reproduce_all.py`.

`provenance/portable_copy_manifest.json` records the original and destination SHA256 hashes for independent source copies, preserved authoring records and inherited Galois records, the exact adapter edits, hashes for newly authored reproduction files, and the post-run frontend wording revision. The canonical engine and advanced module copies are tracked separately by `provenance/code_copy_manifest.json`.

The additional mixed-basis manuscript review calculations were executed inline during review. No saved executable artifact was available to preserve, so they are not advertised as a packaged automated suite or included in the check counts.

## Rejection rules and interpretation

The complete entry point rejects an existing output directory, optimized Python, missing or mismatched pinned dependencies, a missing program, a nonzero subprocess exit, absent or stale JSON, incorrect required task inventories, invalid mathematical payloads, failed task semantics, changed source/result hashes, and an incomplete overall result. Failures preserve the partial fresh output directory and a failed summary; they do not overwrite an earlier successful run. Inspect the group's `command_*.stderr.log` and its native manifest to locate the failure.

The runner includes a negative test of its own optimized invocation. Do not use `python -O`, `python -OO`, or a nonzero `PYTHONOPTIMIZE`. Some inherited calculations contain assertions, so preserving them is part of the executable contract. The portable wrapper itself uses explicit exceptions for acceptance decisions.

The energy convention throughout this package is **E = E0 + G g + o(G)**. The calculated spectrum belongs to the dressed scalar branch with no independent free boundary graviton. Exact finite arithmetic verifies the finite tasks named in the run records; symbolic identities verify their declared parameter domains. High-precision numerical calculations are identified as such. The manuscript supplies the all-index and asymptotic proofs and states the matching renormalized source/Hessian/observable domain for the closed Einstein channel formula. Successful execution does not assert all-order energy control or complete the optional continuum response reconstruction.
