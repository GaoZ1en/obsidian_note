# Development-map audit

## Direct verdict

Stage 4.1 withdraws the unconditional project-data germ/collar bijection and
full tangent-surjectivity claims. Core tensors, original-sheet parameter
preservation, affine endpoints and a partial Sobolev completion are proved.
Metric existence for completed source data is a separate literature theorem.
The actual PDE advance is 08.(4.3), an angular-flux difference estimate for
already existing reduced solutions. Full $C_{\rm SH}$ and $P_{\rm cell}^k$
are not proved. The next PDE estimate is $R_\perp^k$; $P_{\rm rect}^{s,r}$
remains conditional and the finite-grid stage is gated.

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
| D-B6 | Full $C_{\rm SH}$, inverse and linearized completion | open | 06.(8.11): $C_{\rm mix}$ | mixed connection, full frame/curvature constraints and loss still unclosed |
| D-B7 | Affine endpoint/corner potential valid through $\theta_s=0$ | proved | 06.(9.1)--(9.3); HF compensator derivation | fixed affine cuts, tangential endpoint variations, positive area |
| D-C0 | Metric local/neighborhood existence for complete smooth source data | proved | Cabet Theorem 5.3; Rendall/Luk; MSP for completed DND | known from literature; does not itself construct project $C_{\rm SH}$ |
| D-C1 | Framed project-data development/restriction bijection near the corner | conditional | 07.3 | full completion, source constraints and framed PDE uniqueness required |
| D-C2 | Framed project-data bijection on a full-sheet collar | conditional | 06.4.1; 07.3 | parameter domain retained, but full completion still missing |
| D-C3 | Source Einstein theorem directly supplies the exact project finite-Sobolev chart | false | Cabet p.54--55 | finite-loss tracking and direct doubled-system constraint propagation not supplied there |
| D-C4 | Unique framing extension of an existing metric in the fixed gauge | proved | 07.3.1 eikonal/transport lemma | common regular optical neighborhood; no finite-Sobolev gauge estimate |
| D-D0 | Angular $H^k$ flux difference estimate with zero reduced incoming loss | proved | 08.(3.1)--(4.3) | two already existing reduced solutions; $k\ge3$, high angular and full $W^{1,\infty}$ bounds |
| D-D1 | Full uniform Einstein one-cell theorem $P_{\rm cell}^k$ | conditional | 08.6 | first unclosed $R_\perp^k$; no full restart, linearized existence or quadratic estimate |
| D-D2 | Background-nearby project data develop on a prescribed full rectangle | conditional | 07.6; $P_{\rm rect}^{s,r}$ | completion, cell, restart/gauge and target-chart gates retained; grid not begun |
| D-E1 | All project tangents and all framed linearized metric solutions are in bijection | conditional | 07.7 | $DC_{\rm SH}$, linearized constraints and gauge exhaustion not proved |
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

The initial-data gate is $C_{\rm mix}$, 06.(8.11), followed by the full
curvature/copy constraint and $DC_{\rm SH}$ completion. The next PDE gate
is $R_\perp^k$, 08.(6.4), controlling the mixed terms (6.3) from completed
incoming norms. The remaining restart derivatives, uniform existence width,
linearized Einstein existence and quadratic remainder are all required for
$P_{\rm cell}^k$. No finite loss is assigned until derived.

Only after these gates may $P_{\rm rect}^{s,r}$ be attacked by restarting
on a finite grid with explicit gauge resets and derivative losses. A target
Banach chart, image openness and inverse regularity also require proofs.
$P_{\rm red}$ is the separate action-derived outer-port and functional-kernel
gate; even a proved PDE chart would identify only the intrinsic form first.

### Required seven-part verdict

1. **Full marked-sheet project-to-PDE dictionary: not proved.** The smooth
   core equivalence uses the fixed prescription $a_\pm[m]$; the direct
   Cabet gauge preserves both original sheets and outer cuts. Full
   connection/curvature completion is still open.
2. **$C_{\rm SH}$: incomplete.** $C_{\rm pre}$ and $DC_{\rm pre}$ are
   constructed with smooth/Lipschitz estimates for $3\le k\le s-3$.
   The full map, its derivative loss and $DC_{\rm SH}$ are not proved.
3. **Framed local/collar bijectivity: conditional.** Fixed-metric framing
   uniqueness is proved before optical breakdown; complete project-to-PDE
   initial data and finite-regularity gauge comparison remain required.
4. **Presymplectic identity: restriction/constructed-image only.** It holds
   for compatible existing variations and any actually constructed lift,
   with $\Omega_{\rm char}^{\rm intr}$. Full tangent-space surjectivity is
   not proved. Extended auxiliary ports require $P_{\rm red}$.
5. **$P_{\rm cell}^k$: not proved.** Angular-flux stability for existing
   reduced solutions is proved; the first missing estimate is $R_\perp^k$,
   calculation 08.(6.4), controlling mixed sources (6.3) and outgoing traces.
6. **$P_{\rm rect}^{s,r}$: still conditional.** No finite-grid proof or
   unproved numerical regularity threshold is retained.
7. **Next single PDE lemma:** prove $R_\perp^k$ from completed incoming
   norms with a tracked finite derivative loss. The upstream initial-data
   sublemma is $C_{\rm mix}$, calculation 06.(8.11).

## Verification boundary

V0--V44 are historical algebraic regressions. New V45--V53 are scoped
normalization, endpoint, principal-matrix, remainder and tensor checks;
their exact executed results are in `RUN_LOG.md`. No symbolic check proves
the full initial completion, existence, restart, differentiability,
surjectivity or nondegeneracy. The analytic angular-flux estimate retains
all assumptions in 08.(3.1), including null $W^{1,\infty}$ control.
