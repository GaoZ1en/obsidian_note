# Authoritative Claim Ledger

Allowed status vocabulary:

`proved / checked symbolically / conditional / open / false`

## Stage 0

Current development overrides are the Stage-4.5 rows below; earlier Stage-4
rows retain their historical proof scope. No Stage-0--3 claim is upgraded.

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C0-projector | $q_{ab}=g_{ab}-\mu_{+-}^{-1}(\ell_{+a}\ell_{-b}+\ell_{-a}\ell_{+b})$ projects orthogonally to both null normals | proved | $\mu_{+-}=-e^{-m}\neq0$ | direct contractions; matrix regression V0 | none |
| C0-symbols | $\mu_{+-}$ and $\Pi_{\Omega,\pm}=\kappa_\pm+\theta_\pm/2$ are distinct variables | proved | 4D convention | definitions (2.1), (2.4) | none |
| C0-spin1 | HF momentum is $p_A^{\rm HF}=-\omega_A-D_A\bar\alpha$, hence $-\omega_A$ only in $\bar\alpha=0$ gauge | proved | normalized frame $L\cdot\bar L=1$ | translated HF definitions and identity (A3) | tangential labels are fixed, not reduced |
| C0-boost | $m\mapsto m-\beta_+-\beta_-$ and $\omega_A^{(+)}\mapsto\omega_A^{(+)}+D_A\beta_+$ | proved | branch-adapted normal-connection definition | direct rescaling | Stage 3.1 declares the affine residual opposite boost to be proper normal-frame gauge; a full closing-wall kernel is not proved |
| C0-shared-normal | $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$ and $\widehat\omega_A=(\omega_A^{(+)}-\omega_A^{(-)})/2$ is the shared torsion datum | proved | $\ell_+\cdot\ell_-=-e^{-m}$ | differentiated inner product; calculations 03, 05; V16, V29 | $\widehat\omega_A$ is derived rather than independently counted in the endpoint polarization |
| C0-CK-pi | CK's single corner $\pi_A$ is literally $\widehat\omega_A$ | false | CK's displayed definitions alone | calculation 04 section 6 | with natural cross riggings $\pi_A^{(\pm)}=\omega_A^{(\pm)}$; any single choice is convention-equivalent only after retaining $m$ |
| C0-action | the HF bulk-plus-cut canonical split is the selected representative; an LMPS logarithmic-joint split is compared only after its total cut variation is transformed coherently | conditional | closing boundary pieces exist with declared normals | HF eqs. (4.29)--(4.30); calculation 00 | exact outer boundary type is not selected |
| C0-representative | $\kappa$ and $\kappa+\theta$ representatives differ by a generator total derivative canceled by shifts at both endpoints | proved | fixed segment incidence and coherently transformed ports | analytic identity; V4 | deleting an endpoint makes the comparison invalid |

## Stage 1

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C1-Ray | $\theta=\theta_0/(1+\lambda\theta_0/2)$ solves 4D affine vacuum Raychaudhuri | proved | $F>0$, $\sigma=0$ | differentiation; V1 | transverse preservation of the truncation excluded |
| C1-area | $\Omega=\Omega_0(1+\lambda\theta_0/2)^2$ and $\partial_\lambda\Omega=\theta\Omega$ | proved | same | differentiation; V1 | none within the sheet equation |
| C1-Damour | in the affine shear-free sector $(\partial_\lambda+\theta)\omega_A^{(s)}=D_A\theta/2$ and $\omega_A^{(s)}=[\omega_{A0}^{(s)}+\lambda D_A\theta_0/2]/F^2$, with the two initial values fixed by $(m_0,\widehat\omega_A)$ | proved | zero shift, fixed generator labels/normal frame; CK horizontal derivative convention | CK eq. (18), direct integrating factor; calculation 03; V8, V16 | spin-1 symplectic partner excluded by $\delta\ell^A=0$ |
| C1-generic-twist-free | $\omega_A=0$ along a whole sheet for generic angle-dependent $\theta_0$ | false | affine shear-free gauge | C1-Damour | requires at least $\omega_{A0}=0=D_A\theta_0$ in this gauge |
| C1-bulk-pullback | $\Omega_N^{(0),\rm bulk}=C_GL\,\delta\Omega_0\wedge\delta\theta_0/2$ | proved | selected HF representative, fixed affine length, positive characteristic orientation | exact integral and field-space curl; V2 | a $dY$ shift moves two-form support to the endpoints |
| C1-area-port-form | the same sheet form is $C_G\delta\Omega_0\wedge\delta\Omega_L/(2\sqrt{\Omega_0\Omega_L})=2C_G\delta\sqrt{\Omega_0}\wedge\delta\sqrt{\Omega_L}$ | proved | $\Omega_0>0$, $F_L>0$ | analytic wedge conversion; V2 | none within this chart |
| C1-bulk-vanishes | the finite sheet spin-0 bulk pullback vanishes | false | $L>0$ | C1-bulk-pullback | only restricted variations can kill it |
| C1-joint | the two initial HF cut terms have $h=-m$ and leave one pair $+C_G\delta m_0\wedge\delta\Omega_0$ | proved | unified HF representative and positive characteristic orientation | calculation 00 section 6; calculation 03; V3, V15 | overall hypersurface orientation reverses the whole form |
| C1-no-double-area | the shared $S_0$ area is imposed once and its joint is not duplicated per sheet | proved | corner matching | diagonal pullback $\Omega_{0+}=\Omega_{0-}$ | none |
| C1-extended-rank | retaining area/boost ports $(\Omega_{\pm L},b_\pm)$ gives pointwise rank six and zero kernel | proved | spin-0 truncation, fixed labels/affine gauge, positive areas, declared port policy | determinant and rank; V5 | not full gravitational gauge nondegeneracy |
| C1-fixed-area | fixing $\Omega_{\pm L}$ gives rank two; $b_\pm$ are kernel source directions until fixed or quotiented | proved | spin-0 truncation and fixed-area outer policy | pulled-back matrix; V5 | a fixed-boost policy is different |
| C1-theta-partners | with outer ports retained, each $\theta_{\pm0}$ acquires a partner through its own $(\Omega_{\pm L},b_\pm)$ port | proved | declared port policy, invertible Raychaudhuri map, $F_{\pm L}>0$ | equation (6.3); C1-extended-rank | not a claim without retained ports |
| C1-only-corner | after fixed-area port reduction, the remaining spin-0 form is only $+C_G\delta m_0\wedge\delta\Omega_0$ | proved | $\delta\Omega_{\pm L}=0$ and port source directions fixed/quotiented | equation (7.2); V5 | false as a policy-independent statement |
| C1-compose | two consecutive affine spin-0 sheet segments compose after area **and** dynamical slope/expansion matching | proved | spin-0 sheet truncation, $(r_1-r_0)/L_1=(r_2-r_1)/L_2$, fixed lengths | unrestricted diagnostic and matched pullback; V9 | area/geometric-boost matching alone is insufficient |
| C1-cross-compatibility | generic CK/Sachs data require an extra algebraic cross-focusing compatibility condition at $S_0$ | false | generic characteristic data | CIVP/data distinction | cross-focusing remains a preservation test for this special truncation |
| C1-target-CPS | the full proposed finite characteristic data carry a reduced CPS | open | all constraints, endpoints, and gauge quotients required | Stage-1 block, Stage-2 affine pullback, and restricted Stage-3 corner block are derived | closing geometry and the full functional gauge quotient remain open |

## Stage 2 and Stage 3

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C2-kinematics | $\sigma_{AB}=\Omega\partial_\lambda\bar q_{AB}/2$ for $\det\bar q=1$ | proved | fixed generator chart | direct decomposition; V7 | none |
| C2-density | with $\widetilde\sigma^{AB}=\Omega\sigma^{AB}$ and bare $d\lambda d^2x$, the selected HF potential contains $\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}/2$ | proved | Stage-0/HF representative; $dB=\Omega d\lambda d^2x$ | calculation 00 (5.1)--(5.2), calculation 02 | not a representative-independent density convention |
| C2-chart | diagonal unimodular chart gives the pure contraction $\widetilde\sigma^{AB}\delta\bar q_{AB}/2=2\dot\phi\delta\phi$ and full density $2\Omega\dot\phi\delta\phi$ | checked symbolically | one local conformal chart | V7 | not a reduced pullback |
| C2-shear-norm | $\sigma_{AB}\sigma^{AB}=\operatorname{tr}[(\bar q^{-1}\bar q')^2]/4$ | proved | positive-definite unimodular $\bar q$ | analytic matrix contraction; V10 | none |
| C2-Ray | $r=\sqrt\Omega$ obeys $r''+\operatorname{tr}[(\bar q^{-1}\bar q')^2]r/8=0$ with the stated corner data | proved | affine vacuum, caustic-free positive solution | analytic Raychaudhuri reduction; V10 | no closed form for generic profile |
| C2-Green | $\delta r$ is given by the retarded Volterra map (3.8), with $\delta V=\operatorname{tr}(AB')/4$ | proved | smooth finite profile and fixed initial cut | variation of the ODE; constant-potential regression V11 | functional-space continuity/completion theorem not supplied |
| C2-full-pullback | the selected full null potential reduces to (4.4), and its curl is the coupled nonlocal form (5.1) | proved | fixed labels/embeddings/affine lengths; selected HF representative | analytic field-space curl; finite-mode regression V12 | not representative-independent or gauge-reduced |
| C2-shared-corner | $\bar q^+(0)=\bar q^-(0)=\bar h$ and $\Omega_0$ are imposed once, $\theta_{+0},\theta_{-0}$ remain independent, and $(m_0,\widehat\omega_A)$ determine the two branch connections | proved | diagonal pullback at $S_0$ | calculations 02--03; V3, V13, V16 | no varying-embedding corner block |
| C2-outer-response | spin-2 backreaction enters the retained area/boost ports through $\delta\Omega_{sL}=2r_s(L_s)\delta r_s(L_s)$ | proved | Stage-1 abstract port policy | Green map evaluated at $L_s$ | a concrete closing wall can add further momenta |
| C2-outer-shape | a variable outer traceless metric universally requires an independent shape port $\pi_s^{AB}\delta\bar q_{AB,sL}$ | false | null branch reduction with Reisenberger outer-normalized polarization | calculation 04 sections 3--4 | a selected closing wall or different $dY$ polarization may add such a pair; that claim is conditional on the wall action |
| C2-Reis-bulk | the conformal bulk coefficient agrees with Reisenberger after the inverse-metric and area-coordinate dictionary | proved | monotonic area parameter and matched orientation conventions | calculation 02 section 8; Reisenberger eq. (100) | complete equality also needs the surface terms below |
| C2-Reis-normal | Reisenberger's $n_s=\partial_{v_s}$ equals the project's affine $\ell_s$ and hence $\lambda_R=m$ | false | generic affine data with nonstationary area parameter | $n_s=\mathcal B_s\ell_s$, $\mathcal B_{s0}=2/\theta_{s0}$ | equality needs an extra fixed normalization |
| C2-reference-scales | changing fixed $\mathcal B_{*s}$ or $\Omega_*$ changes only $Y$ and the endpoint port representative, not the two-form | proved | nonzero fixed references; explicit $s_s^*$ pullbacks | calculation 04 equations (3.14)--(3.17); V26 | field-dependent reference choices are excluded |
| C2-Reis-corner | the positive HF corner, normal-scale terms, and moving lower limit reproduce $+C_G\delta\lambda_R\wedge\delta\Omega_0$ plus the shared conformal endpoint term | proved | monotonic area; fixed endpoint maps; common fixed affine endpoints; fixed outer areas or transformed area ports | calculation 04 equations (3.1)--(3.12); V18, V19, V23 | varying endpoint maps belong to Stage 3 |
| C2-Reis-full | the affine reduced form equals Reisenberger's fixed-map area-gauge form up to the explicit $C_G\delta Y$ and area-port transformation | proved | $\theta_s\neq0$; fixed endpoint maps and affine endpoints; fixed outer areas or $b_s^A=b_s^\lambda+\gamma_s$ | calculation 04 equations (3.9)--(3.13); V23 | not a global chart through $\theta_s=0$ and not a varying-endpoint-map theorem |
| C2-subdivision | a single long spin-$0+2$ profile has additive regional two-form under subdivision | proved | one common $C^1$ forward profile | calculation 03 equation (4.3); V21 | not an independent-data theorem |
| C2-independent-bulk-compose | two independent segment bulk forms reduce to the long bulk form on the full first-jet matching locus | proved | independent data; continuity of $(q_{AB},B_{AB})$; fixed lengths | calculation 04 equations (5.2)--(5.7); V24 | off locus $\rho$ is undefined and $\mathcal J_{AB}=[B_{AB}]$ is the domain obstruction |
| C2-compose | the complete geometric finite-cell forms compose after independent-data matching | conditional | C2-independent-bulk-compose plus diagonally matched oriented interface ports | calculation 04 equations (5.8)--(5.9); V24 | the abstract $b_s$ port has not been derived from a closing action |
| C2-independent-bulk-associative | three independent segment bulk reductions are associative | proved | full first-jet matching at both cuts | calculation 04 section 5.3; V25 | finite-mode check supplements the analytic integral identity |
| C2-associative | the complete geometric finite-cell port quotient is associative | conditional | C2-compose and coherent port orientations at both cuts | calculation 04 section 5.3 | closing-action port realization remains open |
| C2-target-CPS | the full spin-0+2 gravitational characteristic CPS is nondegenerate and representative independent | open | closing geometry and all gauge quotients required | a selected presymplectic pullback is derived | full rank/kernel and port realization remain open |
| C3-source | Stage-2 data determine the affine Damour source $D_A(\theta/2)-D_B\sigma^B{}_A$ | proved | calculation 02 assumptions | $r[\bar q]$, $\theta=2r'/r$, $\sigma_{AB}=r^2\bar q'_{AB}/2$ | none at the transport-equation level |
| C3-endpoint-type | the canonical endpoint momentum is $\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$, with $p_{sA}=\pi_{s i}\partial_A s_s^i$ and no second Jacobian | proved | invertible endpoint maps | calculation 04 section 6; calculation 05 section 1; V34 | an optional target density must use the distinct symbol $\widehat\tau_s$ |
| C3-endpoint-potential | the gravitational null potential induces $\Theta_{S_0}^{(1)}=(C_G/2)\sum_s\int\langle\pi_s,\delta s_s\rangle$ | proved | selected HF representative; tangential constant-$\lambda$ endpoint variations; compensator fixed at the outer cut; Damour constraint; declared incidence | calculation 05 equations (2.1)--(2.11); V30, V33, V37--V38 | another $dY$ polarization changes only the canonical representative; normal cut motion restores the omitted HF cut term |
| C3-nonredundant | $(s_\pm,\pi_\pm;\Omega_0,\lambda_R,\bar h_{AB})$ is nonredundant and $\widehat\omega_A$ is reconstructed from the common-cut momentum difference and $\mathcal B_+/\mathcal B_-$ | proved | invertible endpoint maps, $\Omega_0>0$ | calculation 05 section 3; V29, V34 | does not by itself prove full functional nondegeneracy |
| C3-Damour | $\omega_A^{(s)}=[\Omega_0\omega_{A0}^{(s)}+\int_0^\lambda\Omega_sJ_A^{(s)}]/\Omega_s$ with $J_A^{(s)}=D_A(\theta_s/2)-D_B\sigma_s^B{}_A$ | proved | affine gauge, Stage-2 reconstructed sources | integrating factor in calculation 05 section 4; nonzero-source regression V28 | global regularity beyond the caustic-free interval not claimed |
| C3-moment-map | $\mathcal C_A=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R$ is the moment map for diagonal relabelling of the full retained reduced characteristic form | proved | Raychaudhuri reconstruction; Damour constraint; matched abstract ports; closed cut or tangent/no-flux smearing field; cotangent lift; convention $\iota_X\Omega=\delta H$ | calculation 05 equations (5.7)--(5.10); V33, V39 | theorem is on the reduced characteristic constraint surface, not unreduced off-shell spacetime; wall realization remains abstract |
| C3-equivariance | $\{H_\xi,H_\eta\}=H_{[\xi,\eta]}$ for field-independent smearings | proved | C3-moment-map assumptions; closed cut or tangent/no-flux boundary condition | calculation 05 equations (5.9)--(5.10); V40 | an open-cut remainder is a field-dependent boundary charge, not a central extension |
| C3-boost-policy | residual affine opposite boosts are declared proper normal-frame gauge and quotiented | conditional | $\ell_+[b]=0=\ell_-[b]$; no added frame variable; reconstructed variables and abstract ports as declared | calculation 05 section 6; V31 checks only the reconstructed corner block; V41 checks affine covariance | the missing physical closing-wall momentum has no derived boost law, so no full-form kernel theorem is claimed |
| C3-rank | after the two generator-chart constraints and diagonal quotient, the local corner block has rank six and contains two relative endpoint-map/embedding/port pairs plus the area/normal pair | checked symbolically | local-point translation truncation; source-density/target-covector momenta | analytic count; V31 | not a continuum functional nondegeneracy or physicality theorem |
| C3-spin1-compose | general fixed smooth invertible incidence maps $f,g$ with $s_2\circ g=f\circ s_1$ cancel the endpoint Liouville forms and two-forms under $\pi_1=(Df)^*g^*\pi_2$ | proved | fixed $f,g$; opposite interface incidences; invertible endpoint maps | calculation 05 section 8; V35--V36; V32 is the identity-chart special case | field-dependent incidence adds terms; physical closing-wall realization remains open |
| C3-Reis-regression | the derived endpoint block agrees with Reisenberger after branch, density, pullback, reference, and normal-frame dictionaries | proved | displayed dictionary in calculation 05 section 9 | project derivation followed by source regression | not a full equivalence through $\theta_s=0$ or a closing-wall theorem |
| C3-target-CPS | the full reduced spin-$0+1+2$ gravitational characteristic CPS is nondegenerate | open | completed profile space, closing geometry, and all gauge quotients required | the constrained selected-representative form and moment map are derived | full functional kernel/quotient and wall ports remain open |

## Stage 4 - current development and one-cell boundary

| ID | Claim | Status | Evidence | Remaining boundary |
|---|---|---|---|---|
| C4-framed-spaces | Global reference-density affine framed chart and proper bulk quotient | proved | 06.1--2; 07.1 | fixed $\nu_0,h_0,D^0$, atlas labels; no global chart or dyad |
| C4-Luk-dictionary | Core tensor equivalence onto the smooth fixed splitting slice $\mathcal F$ | proved | 06.4--6 | not all Luk gauges; no bounded inverse recovering a lost angular derivative |
| C4-original-sheet | Original-sheet Cabet parameter prescription retains both outer cuts | proved | 06.(4.6)--(4.7) | kinematic domain/gauge prescription; not full PDE completion |
| C4-dictionary-symbols | Normalization, torsion sign and affine endpoint algebra | checked symbolically | V42--V47, V50 | no existence or surjectivity conclusion |
| C4-MSP-completion | Full MSP transverse $Y_\pm$ completion from project data | open | 06.6.2 | completed DND and Ricci compatibility are prerequisites of the cited theorem |
| C4-SH-pre | $C_{\rm pre}$ and $DC_{\rm pre}$ with smooth/Lipschitz finite-scale estimates | proved | 06.(8.1)--(8.10) | $3\le k\le s-3$, uniform positive margins; partial fields only |
| C4-SH-completion | Constrained incoming $C_{\rm init}$, differential and remainder | proved | 10.1--4 | loss five in free-slot $I^k$, six in filled-cross $J^k$; not bulk Einstein propagation |
| C4-affine-endpoint | Affine endpoint/corner potential valid through $\theta_s=0$ | proved | 06.(9.1)--(9.3); HF compensator derivation | fixed affine cuts, tangential endpoint variations, positive area |
| C4-cited-metric | Metric local/neighborhood existence for complete smooth source data | proved | Cabet Theorem 5.3; Rendall/Luk; MSP for completed DND | known from literature; does not itself construct project $C_{\rm init}$ |
| C4-germ-map | Framed project-data development/restriction bijection near the corner | conditional | 07.3; 10.4 | initial completion is proved; bulk Einstein identification and framed PDE uniqueness remain |
| C4-collar-map | Framed project-data bijection on a full-sheet collar | conditional | 06.4.1; 07.3; 10.4 | parameter domain and initial completion are retained; bulk subsidiary/gauge uniqueness remain |
| C4-general-Sobolev-chart | Source Einstein theorem directly supplies the exact project finite-Sobolev chart | false | Cabet p.54--55 | finite-loss tracking and direct doubled-system constraint propagation not supplied there |
| C4-framing-uniqueness | Unique framing extension of an existing metric in the fixed gauge | proved | 07.3.1 eikonal/transport lemma | common regular optical neighborhood; no finite-Sobolev gauge estimate |
| C4-angular-flux | Angular $H^k$ flux difference estimate with zero reduced incoming loss | proved | 08.(3.1)--(4.3) | two already existing reduced solutions; $k\ge3$, high angular and full $W^{1,\infty}$ bounds |
| C4-cell-estimate | Full uniform Einstein one-cell theorem $P_{\rm cell}^k$ | conditional | 08.6; 10.7--8 | initial and reduced restart gates closed; project reset, bulk Einstein identification, tangent existence and evolution remainder open |
| C4-rectangle-map | Background-nearby project data develop on a prescribed full rectangle | conditional | 07.6; $P_{\rm rect}^{s,r}$ | completion, cell, restart/gauge and target-chart gates retained; grid not begun |
| C4-linearized-local | All project tangents and all framed linearized metric solutions are in bijection | conditional | 07.7; 10.4 | $DC_{\rm init}$ proved; bulk linearized constraints, existence and gauge exhaustion not proved |
| C4-C1 | Nonlinear Banach $C^1$ chart with linearized Einstein derivative and inverse | conditional | 08.5--6; 07.6 | no assigned full derivative loss or target openness |
| C4-solution-pullback | Intrinsic EH identity for restrictions / any constructed lift image | proved | 07.(7.3)--(7.4); 06.9 | no full tangent surjectivity; no full lift constructed in this round |
| C4-rectangle-pullback | Full-rectangle nonlinear pullback equals $\Omega_{\rm char}^{\rm intr}$ | conditional | 07.(7.5) | requires full framed $P_{\rm rect}^{s,r}$ |
| C4-extended-pullback | Pullback equality including auxiliary abstract outer ports | conditional | 07.(7.2); $P_{\rm red}$ | action-derived definitions/replacement without double counting required |
| C4-boundary-reduction | Descent of a full local/collar solution-space correspondence | conditional | 07.8 | Stage-3 data moment map proved; full equivariant PDE lift not proved |
| C4-port-kernel | Complete physical four-face/boost functional kernel | open | $P_{\rm red}$ | no chosen closing action or nondegeneracy theorem |
| C4-current | Intrinsic input/output current conservation for existing solutions | proved | 07.9; on-shell EH current and Stokes | closed cuts/coherent HF representative or specified side flux |
| C4-evolution | Uniform nearby-data finite-cell evolution graph | conditional | 07.9 | existing-solution relation only without the PDE theorem |
| C4-solution-compose | Uniqueness/composition identities on an existing common smooth glued domain | proved | 07.10; full DND and fixed incidence matching | does not manufacture existence, restart regularity or a physical port sector |
| C4-global | Arbitrary-data existence on an arbitrary prescribed finite rectangle | false | focusing and source scope | no such theorem is claimed |


## Stage 4.2 additions (historical scope, superseded by Stage 4.3 below)

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
| C42-cell | One-cell Einstein $C^1$ map | conditional | 09.8 | Stage-4.2 boundary; current remaining gates are C43-reset/C43-Einstein and the evolution remainder |

## Stage 4.3 current initial and restart status

| ID | Claim | Status | Evidence | Exact boundary |
|---|---|---|---|---|
| C43-commutator | Full metric/frame/rotation/lapse tensor commutators | proved | 10.1 | fixed conventions and parallel or explicitly rotated cut frames |
| C43-Bianchi | All initial Bianchi rows on both sheets | proved | 10.2--3; 09 scalar proof | identities for dependent curvatures; opposite extremes solved with fixed corner values |
| C43-initial-subsidiary | Augmented homogeneous initial system for constraints/copies/gauge | proved | 10.(4.6)--(4.8) | entire supplied initial segments; not a bulk or copy-only propagation theorem |
| C43-init | $C_{\rm init}$, $DC_{\rm init}$ and quadratic completion remainder | proved | 10.4.3 | sufficient loss five in $I^k$, six in $J^k$; fixed positive-margin framed chart |
| C43-jets | Pure-generator exact reduced-solution difference hierarchy | proved | 10.5 | loss $2r+1$, specified high backgrounds, $N\ge2R+3$; not all mixed jets |
| C43-traces | Every free outgoing $r\le k$ jet has continuous endpoints in $H^{k-r}$ | proved | 10.6 | uses one additional generator jet and Hilbert-valued trace estimates |
| C43-restart | Local reduced $I_{\rm in}^{2k+8}\to I_{\rm out}^k$ map | proved | 10.(6.3)--(6.4), reduced Cabet Theorem 3.9 | regular neighborhood with bounded complementary transports and common local width; not Einstein output |
| C43-reset-pieces | Label flow/inverse margins, scalar affine factor/length and null-rotation formulas | proved | 10.7.1--3 | supplied regular coefficients; not the full all-jets reset estimate |
| C43-reset | Full $G_{\rm reset}$ into project affine data | open | first missing estimate 10.(7.6) | moving-cut tensor composition/all jets and geometric input; no full loss assigned |
| C43-Einstein | Finite-regularity bulk Einstein/copy/gauge propagation | open | 10.8 | direct subsidiary route selected; initial-sheet uniqueness is insufficient |
| C43-cell | One-cell Einstein $C^1$ theorem | conditional | 10.8 | reset, bulk identification, Einstein tangent existence and evolution remainder still open |

No rectangle, finite-grid, novelty, quantization or auxiliary-port claim is
promoted by the new derivative bookkeeping.

## Stage 4.4 bulk subsidiary audit

| ID | Claim | Status | Evidence | Exact boundary |
|---|---|---|---|---|
| C44-ledger | `SOURCE_ROW_LEDGER` exhausts the fixed gauge/source operator | proved | source (5.3), (5.12)--(5.14), A.35--A.39; ledger; V75 | 41 evolved scalar component rows plus constraints; not bulk propagation |
| C44-plus-direct | All five plus-sheet Bianchi rows agree by direct source substitution | proved | 10.(3.4)--(3.8); V73--V74 | retains $D\log c$, $O_4$, $c$ and raw/covariant conversion; no mirror used |
| C44-residual | Complete nonduplicated bulk residual vector | proved | 11.(2.1)--(2.9) | definition/typing; metricity, Weyl type and hard gauge kept algebraic |
| C44-Cartan | In the project sign convention, $D\mathcal T=-\mathcal K\wedge\theta$ and $D\mathcal K=-\mathscr H(\mathcal B)+3\mathcal T\mathbin{\lrcorner}d$ give homogeneous torsion/curvature transports | proved | 11.(3.1)--(3.7); V76--V79 | Bianchi/copy block is still an input to these transports |
| C44-subsidiary-principal | Full joint $(\mathcal K_{\rm con},\mathcal B,\mathcal C_{\rm copy})$ principal matrices close and are symmetrizable | false as proposed | superseded by 12.7--9 | Stage 4.4 omitted six Cartan rows; repaired F1 has a radial Jordan block and F2 has zero B derivative columns |
| C44-subsidiary-energy | Finite-regularity uniqueness with an explicit $\ell_{\rm sub}$ | open | 11.5 | no loss is guessed before C44-subsidiary-principal |
| C44-incoming-zero | Incoming characteristic bulk residuals and linearized residuals vanish | proved | ledger; 10.1--4; 11.6, 11.8 | zero incoming flux does not imply zero in the cell without subsidiary uniqueness |
| C44-Einstein | Every completed reduced solution/tangent is bulk (linearized) Einstein | open | 11.6--8 | reconstruction is conditional; tangent surjectivity additionally needs gauge exhaustion |
| C44-reset | Full moving-cut project reset and loss | open | gated at 11.9; first formula 10.(7.6) | not attempted before bulk Einstein identification |
| C44-cell | $P_{\rm cell}^k$ is a $C^1$ project-to-Einstein map | conditional | 11.10 | $P_{\rm sub}^m$, energy, reset, tangent and evolution remainder remain |

V73--V79 are exact algebraic regressions only.  V79 checks standard
torsion-free Riemann/Bianchi identities, not the doubled residual PDE.

## Stage 4.5 extended-curvature/Hodge audit

| ID | Claim | Status | Evidence | Exact boundary |
|---|---|---|---|---|
| C45-six-Cartan | The six omitted Cartan rows are $(124;12,13,23)$ and $(123;14,24,34)$ | proved | 12.2; V81, V91 | all 24 rows retained in F1; principal constraint identities also checked |
| C45-J | $d_{\rm src}-d_{\rm phys}=J\mathcal C_{\rm copy}$ and $\widehat{\mathcal K}=\mathcal K_{\rm src}+J\mathcal C_{\rm copy}$ | proved | 12.3; V86--V87 | component-by-component A.13 map, rank six |
| C45-B | $\mathcal B$ is a 16-dimensional irreducible bundle and $H_B$ is invertible on it | proved | 12.4; V82--V84, V92 | cyclic plus trace constraints; explicit basis and incidence inverse |
| C45-source | Every A.36--A.39 row has explicit $S,A_C^i,M_C$ | proved | 12.5; V84--V85 | no derivative outside $(\mathcal B,\mathcal C_{\rm copy})$ |
| C45-F1-square | Curvature-only subsidiary principal system is square $24\times24$ with invertible time matrix | proved | 12.7--8; V88--V89 | frozen principal statement; $\det A_t=2$ |
| C45-F1-sym | F1 has a positive first-order symmetrizer | false | 12.9; V89 | radial $-1$ algebraic/geometric multiplicities $12/10$ |
| C45-F2-sym | Mixed $40\times40$ system has a positive first-order symmetrizer | false | 12.7, 12.9; V90 | 16 zero B derivative columns |
| C45-comparison | Quantitative finite-regularity Cabet build-up/comparison theorem | open | 12.10 | selected G.4 pivot; no $\ell_{\rm sub}$ yet |
| C45-Einstein | Reduced/completed tangent is bulk (linearized) Einstein | open | 12.10--11 | comparison/wave uniqueness and tangent exhaustion absent |
| C45-cell | $P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ | conditional | 12.11 | reset, Einstein identification and later $C^1$ gates remain |

## Verification ledger

| ID | Check | Evidence type | Evidence boundary |
|---|---|---|---|
| V0 | null projector annihilation/idempotence in an exact block metric | exact Wolfram regression | matrix realization, not a tensor theorem by itself |
| V1 | nonlinear Raychaudhuri and area solution | exact Wolfram identity | sheet equations only |
| V2 | pullback integral, curl, and initial/outer-area conversion | exact Wolfram identity | fixed $L$, selected sheet representative |
| V3 | $h=-m$, unified HF initial potential, positive corner curl, and boost-polarization generator | exact Wolfram matrix/one-form algebra | selected HF representative and declared incidence |
| V4 | $\kappa$ versus $\kappa+\theta$ endpoint cancellation | exact Wolfram identity | both endpoints and their port shifts retained |
| V5 | extended-port determinant/rank/kernel and fixed-area pullback | exact Wolfram matrix algebra | pointwise spin-0 truncation only |
| V6 | two consecutive affine sheet segments compose | exact Wolfram matrix pullback | common affine slope; not full cell composition |
| V7 | unimodular spin-2 trace/shear, pure contraction, and full bare-measure density | exact Wolfram regression | one chart; not Stage-2 reduction |
| V8 | shear-free Damour solution and twist-free restriction | exact Wolfram ODE identity | source sign/factor comes analytically from CK eq. (18) |
| V9 | unrestricted composition mismatch and slope-matched cancellation | exact Wolfram two-form matrices | spin-0 affine segments only |
| V10 | non-diagonal unimodular shear norm and $1/8$ focusing coefficient | exact Wolfram regression | one two-function chart, supplementing the analytic identity |
| V11 | linearized focusing residual and retarded Green identity | exact Wolfram finite-mode regression | constant conformal potential; not a functional theorem |
| V12 | field-space curl of the complete reduced one-form | exact Wolfram finite-dimensional regression | diagonal profile $\phi=a\lambda$ with three parameters |
| V12b | matrix curl including $A\,B\wedge B$, and its physical symmetric-metric cancellation | exact Wolfram finite-dimensional regression | non-diagonal two-function profile with four parameters; not a continuum theorem |
| V13 | one shared conformal corner coordinate under diagonal pullback | exact Wolfram matrix regression | coordinate-counting check, not a corner theorem by itself |
| V14 | $\Omega\theta=(r^2)'$ for a generic profile | exact Wolfram differential identity | proves representative endpoint shift, not closing-wall equivalence |
| V15 | normal-block determinant, positive HF corner, and exact area/boost polarization change | exact Wolfram regression | corner representative only |
| V16 | branch H\'aj\'i\v{c}ek sum and shared-normal-connection/twist dictionary | exact Wolfram algebra | uses the displayed branch definitions |
| V17 | affine-to-area focusing Jacobian, $\mathcal B_0=2/\theta_0$, and field variations | exact Wolfram finite-mode regression | diagonal constant-slope conformal profile |
| V18 | shared-corner conformal endpoint coefficient | exact Wolfram finite-mode regression | diagonal profile; analytic origin is the moving lower limit |
| V19 | one-form corner/normal-scale transformation after $m=\lambda_R+\sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|$ | exact Wolfram one-form algebra | lower-scale remainder is derived analytically in calculation 04 and independently exercised by V23 |
| V20 | first-jet jump norm and generic mismatch before $\theta/\sigma$ matching | exact Wolfram matrix algebra | orthonormal two-metric chart at the cut |
| V21 | two-segment additivity and three-segment associativity for a pre-existing long profile | exact Wolfram finite-mode regression | subdivision consistency only |
| V22 | diagonal focusing and shear-free limit | exact Wolfram identity/limit | tested profile only |
| V23 | affine and area one-forms differ by the explicit $dY$, and their curls agree, for $\phi_s(v)=\phi_0+a_s\log v$ with moving endpoints | exact Wolfram finite-mode regression | fixed affine lengths and outer areas; analytic functional proof is calculation 04 |
| V24 | independent eight-parameter two-segment product form, rank-four matching Jacobian, reduced equality, and nonzero off-locus residual | exact Wolfram finite-mode regression | diagonal constant-slope profiles; verifies the finite truncation, not functional completion |
| V25 | three independently declared segment forms and the two parenthesized matching reductions agree with the long form | exact Wolfram finite-mode regression | diagonal constant-slope profiles; geometric port realization remains conditional |
| V26 | reference-scale change cancels between $\delta Y$ and the endpoint port shifts | exact Wolfram algebra | fixed reference constants; not a field-dependent renormalization theorem |
| V27 | ordinary pullback of the optional target covector density gives the common-cut one-form density and composes | exact Wolfram matrix algebra | orientation-preserving invertible linear maps; it checks $p$, not the canonical source-density momentum $\pi$ |
| V28 | Damour integrating-factor solution with a nonzero shear-divergence contribution | exact Wolfram ODE identity | one finite source profile; analytic equation fixes the continuum formula |
| V29 | generator constraint, twist reconstruction, and both branch initial normal connections | exact Wolfram algebra | one local transverse component |
| V30 | curl of the endpoint potential and diagonal moment-map contraction | exact Wolfram matrix algebra | local translation truncation; analytic cotangent-lift proof is calculation 05 |
| V31 | rank/kernel before and after the generator constraint/quotient, and opposite-boost invisibility in the reconstructed corner block | exact Wolfram matrix algebra | local-point truncation; not functional nondegeneracy or a closing-wall boost-kernel theorem |
| V32 | two-cell endpoint potential and two-form cancel in the identity-incidence chart | exact Wolfram matrix pullback | special case only; abstract interface port, not a closing-wall action |
| V33 | tracefree conformal Lie contraction and tangential integration by parts give the Damour coefficient | exact xAct residual checks with `canonical_contract` | local two-dimensional cut tensor identities; the global endpoint theorem also uses the displayed boundary conditions and Damour constraint |
| V34 | source-density/target-covector momentum uses one source Jacobian, and $p_{sA}=\pi_{s i}\partial_A s_s^i$ adds none | exact Wolfram matrix algebra | nontrivial linear endpoint map; analytic bundle typing supplies the invariant statement |
| V35 | nontrivial invertible $f,g$ matching cancels endpoint Liouville forms and two-forms with the $|\det Dg|(Df)^T$ factor | exact Wolfram matrix algebra | fixed linear incidence maps; analytic change-of-variables proof supplies the nonlinear theorem |
| V36 | the $f,g$ momentum law is functorial under two successive interface identifications | exact Wolfram matrix algebra | fixed invertible linear maps |
| V37 | two compensators with the same endpoints differ by the Damour residual and agree on the constraint surface | exact Wolfram finite-mode regression | one bulk interpolation mode; analytic integration-by-parts identity is calculation 05 |
| V38 | the HF $h\,\delta L^a d_aS/2$ term vanishes for constant-$\lambda$ cuts and tangential endpoint variation | exact Wolfram contraction | local adapted-coordinate check; normal cut motion is excluded |
| V39 | bulk Ward residual plus corner contraction reduces to $\delta H_\xi$ on the Damour constraint surface | exact Wolfram finite-mode regression | finite retained mode; not an off-shell continuum theorem |
| V40 | a nonabelian finite cotangent truncation obeys $\{H_\xi,H_\eta\}=H_{[\xi,\eta]}$ | exact Wolfram matrix algebra | field-independent finite generators; boundary charge excluded |
| V41 | opposite-boost weights preserve affine reconstruction and reconstructed corner invariants | exact Wolfram algebra | $\ell_\pm[b]=0$ and no physical wall momentum; not a full retained-form kernel check |
| V42 | the two branch expressions for rigorous-CIVP torsion agree after the normal-product identity | exact Wolfram algebra | sign/factor dictionary only |
| V43 | the symmetric frame gives $\zeta_A=-\widehat\omega_A$ and $a_+a_-e^{-m}=2$ | exact Wolfram algebra | one-component symbolic realization of the frame identity |
| V44 | the torsion dictionary is covariant under the residual opposite boost | exact Wolfram algebra | assumes the stated boost laws; not a Hamiltonian-kernel check |

Passing the listed checks proves only their stated algebraic identities.  It does not prove a
closing-wall action or its port momenta, an area chart through $\theta=0$, a
full functional gauge quotient/nondegeneracy, a boost kernel including the
wall, the MSP $Y_\pm$ completion, finite-rectangle existence, finite-Sobolev
$C^1$ dependence, completeness, surjectivity, positivity, or a continuum
topology theorem.

| New ID | Check | Evidence type | Boundary |
|---|---|---|---|
| V45 | smooth splitting and its variation | Wolfram | no gauge PDE estimate |
| V46 | affine endpoint sum and twist inverse | Wolfram | fixed affine cut representative |
| V47 | Cabet original-sheet corner normalization/torsion | Wolfram | no full frame completion |
| V48 | two curvature principal matrices and positive time symbol | Wolfram | $c>0$; not a cell existence theorem |
| V49 | exact matrix nonlinear remainder identity | Wolfram example | not a remainder norm estimate |
| V50 | reference-density determinant | Wolfram | positive reference density and metric |
| V51 | connection-variation trace; scalar Hessian sorting | xAct | tensor identities, no constraint propagation |
| V52 | null-gradient geodesic identity | xAct | null eikonal gradient, smooth metric |
| V53 | linearized Raychaudhuri/Damour algebra | Wolfram | partial completion only |
| V54--V55 | Mixed transport, Gauss matrix and normal-Ricci cancellation | Wolfram algebra | not full initial compatibility |
| V56--V57 | Copy permutation, null allocation, copy ideal and unchanged-RHS counterexample | Wolfram algebra | not Einstein constraint propagation |
| V58--V59 | Density/symmetrizer product rule and differentiated projected systems | Wolfram algebra / nonlinear scalar prototype | PDE estimate is analytic 09.7 |
| V60--V62 | Gauss contraction, mixed Ricci and Codazzi contractions | xAct canonical_contract | three zero residuals; not $C_{\rm Bianchi}$ |
| V63 | Gaussian curvature variation for qdot=2H | xAct/xPert canonical_contract | zero residual; not full C_init |
| V64 | Both minus-sheet scalar Bianchi cancellations | Wolfram algebra after geometric substitution | two zero residuals; analytic proof in 09.5 |
| V65 | Cut connection/frame/lapse commutators | xAct canonical_contract | six zero residuals; initial tensor bookkeeping only |
| V66--V69 | Minus Bianchi, weighted mirror and source connection rows | Wolfram unrestricted-jet/matrix algebra | analytic initial proof is calculation 10; no bulk propagation |
| V70--V72 | Initial residual product rule, pure-jet prototype and affine/null-rotation identities | Wolfram algebra | not a tensor hierarchy, reset Sobolev estimate or one-cell theorem |
| V73--V74 | Direct plus-sheet source coefficients and raw/covariant lapse/rotation conversion | Wolfram algebra | supplements the analytic A.36--A.39 substitution; initial sheet only |
| V75 | Source-row metadata checksum | Wolfram exact integer/list check | verifies ledger incidence counts, not mathematical independence or bulk propagation |
| V76--V78 | Source/geometric curvature correction and representative Cartan principal coefficients | Wolfram algebra | representative blocks only; no complete residual matrix/symmetrizer |
| V79 | Algebraic Riemann, contracted differential and Einstein Bianchi identities | xAct canonical_contract | torsion-free metric identities only; not the doubled-copy subsidiary system |
| V80--V81 | $18+6=24$ counts and all six omitted Cartan labels | exact SymPy rational regression | component incidence; not a PDE theorem |
| V82--V84 | Bianchi cyclic/trace projector, $H_B$ and exact invertible $S$ | exact SymPy rational regression | full finite component maps; analytic bundle statement is 12.4--5 |
| V85--V88 | All copy-principal rows, $J$, extended-curvature decomposition and all 24 Cartan rows | exact SymPy rational regression | full printed convention; no variable-coefficient estimate |
| V89 | Full F1 symbol, $\det A_t=2$ and defective radial $-1$ eigenspace | exact SymPy rational matrix regression | disproves positive F1 symmetrizer at Minkowski |
| V90 | Full F2 matrices and 16 zero B derivative columns | exact SymPy rational matrix regression | disproves strict positive timelike F2 flux |
| V91 | Six exterior-of-exterior Cartan constraint identities | exact SymPy rational regression | principal propagation only; lower-order analytic terms remain homogeneous |
| V92 | B antisymmetry, Weyl cyclic identity and B trace | xAct canonical_contract | three zero tensor residuals; not dimension or PDE uniqueness |
