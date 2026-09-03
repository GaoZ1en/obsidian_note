# Stage 4.6 exact component results

Executed 2026-09-03 on `codex/double-null-gravity-cps`, starting at
`cb0c55f3bb96a406c673f66967e0d84ce7b0222c`.

**Verdict:** Part B5 stops the prescribed characteristic 18+6 route.
The exact 6+10 source decomposition leaves six independent Bianchi
coordinates in the six copy-derivative candidates. Full local elimination
leaves eighteen independent equations on twenty-four unknowns.

## Reproduce

From this project directory:

```sh
rtk proxy sage -python scripts/stage46_characteristic_split_checks.py
rtk proxy sage -python scripts/stage46_characteristic_split_checks.py --dump-full
rtk proxy sage -python scripts/stage46_characteristic_split_checks.py --json /tmp/stage46_matrices.json --wolfram /tmp/stage46_matrices.wl
rtk proxy wolframscript -file scripts/stage46_characteristic_split_crosscheck.wl /tmp/stage46_matrices.wl
```

The first script imports the unchanged Stage-4.5 constructors for the
Weyl tensor, source jets, copy injection and exterior incidence. It builds
every full matrix; no representative submatrix replaces a full matrix.
The JSON and Wolfram exports include all rational entries, the exact
unknown/row order is printed and included in JSON metadata, and the
six-dimensional free-time-jet basis is printed explicitly.
The Wolfram crosscheck independently recomputes arithmetic from those
exported matrices; it is not an independent rederivation of the source
equations. The actual run used the task's `work/` directory for temporary
exports and the Mathematica MCP to execute the saved crosscheck.

## Executed results

`stage46_characteristic_split_checks.py`: **34/34 PASS**, V93--V98.

| Diagnostic | Exact result |
|---|---|
| Unknowns | unchanged $U=(K_{\rm src,con}[18],C[6])$ |
| Cartan partition | 18 selected evolution rows, 6 withheld constraints |
| Source Bianchi map | $\det S=-16$ |
| Selected Cartan incidence | $\operatorname{rank}P_eH=16$ |
| All copy first-jet rows | rank 8 |
| Copy time pivots | rank 6, A.36b$_1$, A.36b$_2$, A.38a, A.38b, A.38c$_1$, A.38c$_2$ |
| Remaining ten equations | determine $z_7,\ldots,z_{16}$, not $z_1,\ldots,z_6$ |
| Mixed system on $(\partial_tU,\mathbf B)$ | rank 34 in 40 columns |
| Exact Schur elimination | eighteen $U$ equations plus sixteen equations determining $\mathbf B$ |
| $F_{e,t}$ | rank 18; its curvature block is invertible |
| Free time jets | $F_{e,t}N=0$, last six rows of $N$ equal $I_6$ |
| Failed 24-row padding | six identically zero rows; time rank 18, determinant zero |
| Inherited F1 comparator | $\det F_t=2$, radial polynomial $(\lambda-1)^{12}(\lambda+1)^{12}$ |
| Inherited F1 eigenspaces | $+1$: 12; $-1$: 10; two size-two Jordan blocks at $-1$ |
| One constant constraint family | $[I\ \Lambda](F_e,F_c)^T$ has at most 18 rows; square completion is an invertible F1 row operation for every $\Lambda$ |
| Bare exterior identity | all six rows vanish identically |
| Full eliminated exterior identity | $M(p_3p_4-p_1^2-p_2^2)C$, $MC=(c,u_2,-b_2,-u_1,b_1,-2s)$ |
| Evolution-shell counterexample | $U=t^2v/2$ with $v_{k_1}=v_{k_{11}}=v_{k_{18}}=v_c=1$ gives $G=(t,0,0,0,0,0)$ |

`stage46_characteristic_split_crosscheck.wl`: **15/15 PASS** through the
Mathematica MCP, no error messages in returned output:

```text
source determinant: True
source 6+10 basis: True
Schur elimination all 34 rows: True
rank 34 of mixed 34x40: True
rank 18 of evolved and padded time matrices: True
all six copy time jets free: True
all 24 curvature jet rows independent: True
bare exterior identity: True
full eliminated copy wave identity: True
invertible wave coefficient: True
F1 time determinant: True
F1 radial polynomial: True
F1 radial Jordan witness: True
constant constraint family inverse: True
nonzero constraint forcing on evolution shell: True
OVERALL: PASS (15/15)
```

During script development, the declared expected copy-wave map initially
had an incorrect sign in its $(5,1)$ entry. The polynomial check failed,
and inspection of the generated full matrix corrected that entry to $+1$.
The full matrix construction was unchanged. All results above are from
the corrected run, independently checked in Mathematica.

Final verification also ran `--dump-full` successfully, reran the unchanged
Stage-4.5 script (**37/37 PASS**), and parsed all eighteen manuscript
principal rows plus the six displayed constraint formulas back into exact
jet expressions: **24/24 matched** the generated matrices.

**Verified:** exact local row/column algebra and the stated frozen
polynomial identities. The analytic obstruction and its locality scope
are written in calculation 13.4--7.

**Assumptions:** inherited Stage-4.5 tensor/source conventions, rational
Minkowski freeze, fixed 24-component residual basis and local algebraic
first-order elimination. The counterexample tests the unconstrained
candidate residual model, not an actual Einstein development.

**Not verified:** a variable-coefficient uniqueness theorem, a closed wave
subsidiary system or quantitative Cabet comparison. There is no new
$V(n)$ or strong-hyperbolicity claim for the underdetermined split.
Bulk/tangent Einstein identification, reset, $P_{\rm cell}^k$ and
$P_{\rm rect}^{s,r}$ stay open/conditional. No further first-order
formulation, nonlinear $C^1$, finite-grid continuation or quantization.
