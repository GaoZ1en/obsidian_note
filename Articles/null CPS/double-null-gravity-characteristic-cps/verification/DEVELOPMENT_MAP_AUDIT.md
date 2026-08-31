# Development-map audit

## Direct verdict

Stage 4.2 proves the full printed/Appendix copy conjugation and the
fixed-reference energy conversion. It closes $C_{\rm mix}$ with
conservative loss four and $C_{\rm free}$ with loss five, including
their differentials and quadratic remainders. $C_{\rm init}$ remains
unproved at the explicit $C_{\rm Bianchi}$ compatibility gate, 09.5.

For existing reduced solutions under 09.7's bounds, $R_\perp^k$ is
proved with loss three and first outgoing $C^0$ traces. These do not
supply the full restart/gauge class or linearized Einstein existence.
$P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ remain conditional; no
finite-grid continuation or quantization is begun.

## Authoritative status table

Allowed statuses: proved / checked symbolically / conditional / open / false.

Cited metric existence and in-project lemmas have distinct provenance.

| ID | Claim | Status | Provenance and evidence | Exact boundary |
|---|---|---|---|---|
| D-A1 | Global reference-density affine framed chart and proper bulk quotient | proved | 06.1--2; 07.1 | fixed $\nu_0,h_0,D^0$, atlas labels; no global chart or dyad |
| D-B1 | Core tensor equivalence onto the smooth fixed splitting slice $\mathcal F$ | proved | 06.4--6 | not all Luk gauges; no bounded inverse recovering a lost angular derivative |
| D-B2 | Original-sheet Cabet parameter prescription retains both outer cuts | proved | 06.(4.6)--(4.7) | kinematic domain/gauge prescription; not full PDE completion |
| D-B3 | Normalization, torsion sign and affine endpoint algebra | checked symbolically | V42--V47, V50 | no existence or surjectivity conclusion |
| D-B4 | Full MSP transverse $Y_\pm$ completion from project data | open | 06.6.2 | completed DND and Ricci compatibility are prerequisites of the cited theorem |
| D-B5 | $C_{\rm pre}$ and $DC_{\rm pre}$ with smooth/Lipschitz finite-scale estimates | proved | 06.(8.1)--(8.10) | $3\le k\le s-3$, uniform positive margins; partial fields only |
| D-B6 | Full constrained $C_{\rm init}$ and its differential | open | 09.5: $C_{\rm Bianchi}$ | mixed transport closed; complementary Bianchi/gauge/copy compatibility and full loss open |
| D-B7 | Affine endpoint/corner potential valid through $\theta_s=0$ | proved | 06.(9.1)--(9.3); HF compensator derivation | fixed affine cuts, tangential endpoint variations, positive area |
| D-C0 | Metric local/neighborhood existence for complete smooth source data | proved | Cabet Theorem 5.3; Rendall/Luk; MSP for completed DND | known from literature; does not itself construct project $C_{\rm init}$ |
| D-C1 | Framed project-data development/restriction bijection near the corner | conditional | 07.3 | full completion, source constraints and framed PDE uniqueness required |
| D-C2 | Framed project-data bijection on a full-sheet collar | conditional | 06.4.1; 07.3 | parameter domain retained, but full completion still missing |
| D-C3 | Source Einstein theorem directly supplies the exact project finite-Sobolev chart | false | Cabet p.54--55 | finite-loss tracking and direct doubled-system constraint propagation not supplied there |
| D-C4 | Unique framing extension of an existing metric in the fixed gauge | proved | 07.3.1 eikonal/transport lemma | common regular optical neighborhood; no finite-Sobolev gauge estimate |
| D-D0 | Angular $H^k$ flux difference estimate with zero reduced incoming loss | proved | 08.(3.1)--(4.3) | two already existing reduced solutions; $k\ge3$, high angular and full $W^{1,\infty}$ bounds |
| D-D1 | Full uniform Einstein one-cell theorem $P_{\rm cell}^k$ | conditional | 08.6 | loss-three transverse bound proved in 09.7; full initial/restart, linearized existence and remainder open |
| D-D2 | Background-nearby project data develop on a prescribed full rectangle | conditional | 07.6; $P_{\rm rect}^{s,r}$ | completion, cell, restart/gauge and target-chart gates retained; grid not begun |
| D-E1 | All project tangents and all framed linearized metric solutions are in bijection | conditional | 07.7 | $DC_{\rm init}$, linearized constraints and gauge exhaustion not proved |
| D-E2 | Nonlinear Banach $C^1$ chart with linearized Einstein derivative and inverse | conditional | 08.5--6; 07.6 | no assigned full derivative loss or target openness |
| D-F1 | Intrinsic EH identity for restrictions / any constructed lift image | proved | 07.(7.3)--(7.4); 06.9 | no full tangent surjectivity; no full lift constructed in this round |
| D-F2 | Full-rectangle nonlinear pullback equals $\Omega_{\rm char}^{\rm intr}$ | conditional | 07.(7.5) | requires full framed $P_{\rm rect}^{s,r}$ |
| D-F3 | Pullback equality including auxiliary abstract outer ports | conditional | 07.(7.2); $P_{\rm red}$ | action-derived definitions/replacement without double counting required |
| D-G1 | Descent of a full local/collar solution-space correspondence | conditional | 07.8 | Stage-3 data moment map proved; full equivariant PDE lift not proved |
| D-G2 | Complete physical four-face/boost functional kernel | open | $P_{\rm red}$ | no chosen closing action or nondegeneracy theorem |
| D-H1 | Intrinsic input/output current conservation for existing solutions | proved | 07.9; on-shell EH current and Stokes | closed cuts/coherent HF representative or specified side flux |
| D-H2 | Uniform nearby-data finite-cell evolution graph | conditional | 07.9 | existing-solution relation only without the PDE theorem |
| D-I1 | Uniqueness/composition identities on an existing common smooth glued domain | proved | 07.10; full DND and fixed incidence matching | does not manufacture existence, restart regularity or a physical port sector |
| D-global | Arbitrary-data existence on an arbitrary prescribed finite rectangle | false | focusing and source scope | no such theorem is claimed |

## Source-scope audit

- Rendall proves local existence near the transverse corner, not a collar of
  both entire truncated sheets.
- Luk proves a long-by-thin region for regular spherical data, with the thin
  width controlled by displayed initial norms.
- Mars--Sánchez-Pérez Theorem 7.15 assumes full abstract DND satisfying the
  abstract constraints and allows restriction; the follow-up geometric
  uniqueness result is explicitly local near the intersection.
- Cabet--Chruściel--Tagne Wafo Theorem 3.9 supplies a controlled local width
  for the reduced doubly-null symmetric-hyperbolic system.  Theorem 3.13
  assumes all compared solutions already exist on the common domain.
  Theorem 3.15 is a smooth continuation criterion and explicitly does not
  establish finite-differentiability continuation.
- Reisenberger's Sachs/area variables are a data and symplectic
  parametrization; that paper explicitly does not prove a development of all
  of the double-null sheet.

## Exact remaining propositions

The first initial gate is $C_{\rm Bianchi}$, 09.5, beginning with
the residual (5.4). The complete constrained $C_{\rm init}$ and its
differential/finite loss remain unproved, despite the loss-five
$C_{\rm free}$. After the proved loss-three $R_\perp^k$, the complete
generator jets, corner constraints and geometric reset remain required.
Uniform Einstein existence, linearized existence and the quadratic
evolution remainder are independent remaining gates for $P_{\rm cell}^k$.

Only after these gates may a prescribed-rectangle argument be considered.
No finite grid or numerical $s(r,I,J)$ is supplied. The separate
$P_{\rm red}$ action/physical-port gate is unchanged.

### Required Stage-4.2 verdict

1. **Copy system:** a slot-only swap with unchanged RHS is false.
   Calculation 08 now uses the printed allocation with the full conjugation
   09.(1.4), exactly equivalent to the literal Appendix equations.
2. **Fixed reference energy:** proved with the explicit metric, density,
   connection and coefficient margins in 09.2.
3. **$C_{\rm init}$:** not proved. $C_{\rm free}$, its differential and
   quadratic remainder have conservative loss five, 09.(4.3); no full
   initial-completion loss is assigned.
4. **$C_{\rm mix}$:** proved by 09.(3.3),(3.5), with conservative loss four
   and the same loss for its differential and quadratic remainder.
5. **$R_\perp^k$:** proved for existing reduced solutions under 09.7,
   with loss three. This is not a project-data Einstein existence theorem.
6. **Outgoing traces:** first $C^0$ traces are controlled; full generator
   jets, complementary constraints and bounded reset are not.
7. **$P_{\rm cell}^k$:** not proved. The first remaining initial lemma is
   $C_{\rm Bianchi}$, beginning with 09.(5.4); full restart, linearized
   Einstein existence and the quadratic evolution remainder also remain.
8. **$P_{\rm rect}^{s,r}$:** conditional; no finite-grid continuation,
   guessed global threshold, or quantization.

## Verification boundary

V0--V44 are historical algebraic regressions. New V45--V53 are scoped
normalization, endpoint, principal-matrix, remainder and tensor checks;
their exact executed results are in `RUN_LOG.md`. No symbolic check proves
the full initial completion, existence, restart, differentiability,
surjectivity or nondegeneracy. The analytic angular-flux estimate retains
all assumptions in 08.(3.1), including null $W^{1,\infty}$ control.

Stage 4.2 adds V54--V64. Their exact scope/results are in RUN_LOG.
The analytic $C_{\rm mix}$ and $R_\perp^k$ proofs are in 09.3 and 09.7,
not consequences of a zero symbolic residual.

## Stage 4.2 additions

| ID | Claim | Status | Evidence | Exact boundary |
|---|---|---|---|---|
| C42-copy-slot-only | Changing slot allocation while keeping RHS copies unchanged is conjugacy | false | 09.1; nonzero alpha-row counterexample | source literal printed lists and Appendix rows disagree |
| C42-copy-full | Printed allocation with the full substitution $P$ is equivalent to the literal Appendix system | proved | 09.(1.1)--(1.6) | includes connection Weyl extractor; no copy-only propagation theorem |
| C42-reference | Fixed-bundle/reference-density energy conversion | proved | 09.2 | all metric/density/connection derivatives and uniform margins retained |
| C42-mix | Both mixed second-form transports, differential and quadratic remainder | proved | 09.3 | conservative loss four; prescribed finite sheets with regular coefficients |
| C42-free | Free reduced incoming preparation, differential and quadratic remainder | proved | 09.4 | conservative loss five; not constrained $C_{\rm init}$ |
| C42-scalars | Minus-sheet scalar Bianchi constraints A.37b--c | proved | 09.(5.1)--(5.3) | curvature variation, Codazzi and Cayley--Hamilton; remaining vector/opposite-sheet constraints open |
| C42-init | Full constrained minimal $C_{\rm init}$ and its finite loss | open | 09.5 | first residual (5.4), then full complementary Bianchi/gauge/copy and corner jets |
| C42-transverse | Exact reduced-solution $R_\perp^k$ with loss three | proved | 09.6--7 | existing solutions, high angular/coefficient and bounded incoming-background norms |
| C42-trace | First outgoing $C^0$ free-slot traces | proved | 09.(7.7)--(7.8) | not full generator jets or source restart class |
| C42-reset | Full bounded geometric reset into incoming class | open | 09.9 | scalar ODE estimate proved; flow/composition, jets and constraints remain |
| C42-cell | One-cell Einstein $C^1$ map | conditional | 09.8 | initial completion, full restart, linearized existence and remainder not closed |
