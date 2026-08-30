# Authoritative Claim Ledger

Allowed status vocabulary:

`proved / checked symbolically / conditional / open / false`

## Stage 0

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C0-projector | $q_{ab}=g_{ab}-\mu_{+-}^{-1}(\ell_{+a}\ell_{-b}+\ell_{-a}\ell_{+b})$ projects orthogonally to both null normals | proved | $\mu_{+-}=-e^{-m}\neq0$ | direct contractions; matrix regression V0 | none |
| C0-symbols | $\mu_{+-}$ and $\Pi_{\Omega,\pm}=\kappa_\pm+\theta_\pm/2$ are distinct variables | proved | 4D convention | definitions (2.1), (2.4) | none |
| C0-spin1 | HF momentum is $p_A^{\rm HF}=-\omega_A-D_A\bar\alpha$, hence $-\omega_A$ only in $\bar\alpha=0$ gauge | proved | normalized frame $L\cdot\bar L=1$ | translated HF definitions and identity (A3) | tangential labels are fixed, not reduced |
| C0-boost | $m\mapsto m-\beta_+-\beta_-$ and $\omega_A\mapsto\omega_A+D_A\beta_+$ | proved | user normal-connection definition | direct rescaling | choice quotient versus retained remains open beyond Stage 1 |
| C0-action | EH + $\kappa$ sheets + all logarithmic initial/outer joints is the chosen Dirichlet representative | conditional | closing boundary pieces exist with declared normals | LMPS rule and explicit ledger | exact outer boundary type is not selected |
| C0-representative | $\kappa$ and $\kappa+\theta$ representatives differ by a generator total derivative canceled by shifts at both endpoints | proved | fixed segment incidence and coherently transformed ports | analytic identity; V4 | deleting an endpoint makes the comparison invalid |

## Stage 1

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C1-Ray | $\theta=\theta_0/(1+\lambda\theta_0/2)$ solves 4D affine vacuum Raychaudhuri | proved | $F>0$, $\sigma=0$ | differentiation; V1 | transverse preservation of the truncation excluded |
| C1-area | $\Omega=\Omega_0(1+\lambda\theta_0/2)^2$ and $\partial_\lambda\Omega=\theta\Omega$ | proved | same | differentiation; V1 | none within the sheet equation |
| C1-Damour | in the affine shear-free sector $(\partial_\lambda+\theta)\omega_A=D_A\theta/2$ and $\omega_A=[\omega_{A0}+\lambda D_A\theta_0/2]/F^2$ | proved | zero shift, fixed generator labels/normal frame; CK horizontal derivative convention | CK eq. (18), direct integrating factor; V8 | spin-1 symplectic partner excluded by $\delta\ell^A=0$ |
| C1-generic-twist-free | $\omega_A=0$ along a whole sheet for generic angle-dependent $\theta_0$ | false | affine shear-free gauge | C1-Damour | requires at least $\omega_{A0}=0=D_A\theta_0$ in this gauge |
| C1-bulk-pullback | $\Omega_N^{(0),\rm bulk}=C_GL\,\delta\Omega_0\wedge\delta\theta_0/2$ | proved | selected HF/LMPS representative, fixed affine length, positive characteristic orientation | exact integral and field-space curl; V2 | a $dY$ shift moves two-form support to the endpoints |
| C1-area-port-form | the same sheet form is $C_G\delta\Omega_0\wedge\delta\Omega_L/(2\sqrt{\Omega_0\Omega_L})=2C_G\delta\sqrt{\Omega_0}\wedge\delta\sqrt{\Omega_L}$ | proved | $\Omega_0>0$, $F_L>0$ | analytic wedge conversion; V2 | none within this chart |
| C1-bulk-vanishes | the finite sheet spin-0 bulk pullback vanishes | false | $L>0$ | C1-bulk-pullback | only restricted variations can kill it |
| C1-joint | the combined two sheet endpoints plus $\delta I_{S_0}$ cancel $\Omega_0\delta a_0$ and leave one pair $-C_G\delta m_0\wedge\delta\Omega_0$ | proved | selected representative, outward-convex initial joint; $a_0=-m_0-\log2$ | calculation 00 section 6; V3 | overall hypersurface orientation reverses the whole form |
| C1-no-double-area | the shared $S_0$ area is imposed once and its joint is not duplicated per sheet | proved | corner matching | diagonal pullback $\Omega_{0+}=\Omega_{0-}$ | none |
| C1-extended-rank | retaining area/boost ports $(\Omega_{\pm L},b_\pm)$ gives pointwise rank six and zero kernel | proved | spin-0 truncation, fixed labels/affine gauge, positive areas, declared port policy | determinant and rank; V5 | not full gravitational gauge nondegeneracy |
| C1-fixed-area | fixing $\Omega_{\pm L}$ gives rank two; $b_\pm$ are kernel source directions until fixed or quotiented | proved | spin-0 truncation and fixed-area outer policy | pulled-back matrix; V5 | a fixed-boost policy is different |
| C1-theta-partners | with outer ports retained, each $\theta_{\pm0}$ acquires a partner through its own $(\Omega_{\pm L},b_\pm)$ port | proved | declared port policy, invertible Raychaudhuri map, $F_{\pm L}>0$ | equation (6.3); C1-extended-rank | not a claim without retained ports |
| C1-only-corner | after fixed-area port reduction, the remaining spin-0 form is only $-C_G\delta m_0\wedge\delta\Omega_0$ | proved | $\delta\Omega_{\pm L}=0$ and port source directions fixed/quotiented | equation (7.2); V5 | false as a policy-independent statement |
| C1-compose | two consecutive affine spin-0 sheet segments compose after area **and** dynamical slope/expansion matching | conditional | spin-0 sheet truncation, $(r_1-r_0)/L_1=(r_2-r_1)/L_2$, fixed lengths | unrestricted mismatch and matched pullback; V9 | area/geometric-boost matching alone is insufficient |
| C1-cross-compatibility | generic CK/Sachs data require an extra algebraic cross-focusing compatibility condition at $S_0$ | false | generic characteristic data | CIVP/data distinction | cross-focusing remains a preservation test for this special truncation |
| C1-target-CPS | the full proposed finite characteristic data carry a reduced CPS | open | all constraints, endpoints, and gauge quotients required | Stage-1 block and Stage-2 affine pullback are derived | spin-1/embedding policy, closing geometry, and full gauge quotient remain open |

## Stage 2 and Stage 3

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C2-kinematics | $\sigma_{AB}=\Omega\partial_\lambda\bar q_{AB}/2$ for $\det\bar q=1$ | proved | fixed generator chart | direct decomposition; V7 | none |
| C2-density | with $\widetilde\sigma^{AB}=\Omega\sigma^{AB}$ and bare $d\lambda d^2x$, the selected HF potential contains $\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}/2$ | proved | Stage-0/HF representative; $dB=\Omega d\lambda d^2x$ | calculation 00 (5.1)--(5.2), calculation 02 | not a representative-independent density convention |
| C2-chart | diagonal unimodular chart gives the pure contraction $\widetilde\sigma^{AB}\delta\bar q_{AB}/2=2\dot\phi\delta\phi$ and full density $2\Omega\dot\phi\delta\phi$ | checked symbolically | one local conformal chart | V7 | not a reduced pullback |
| C2-shear-norm | $\sigma_{AB}\sigma^{AB}=\operatorname{tr}[(\bar q^{-1}\bar q')^2]/4$ | proved | positive-definite unimodular $\bar q$ | analytic matrix contraction; V10 | none |
| C2-Ray | $r=\sqrt\Omega$ obeys $r''+\operatorname{tr}[(\bar q^{-1}\bar q')^2]r/8=0$ with the stated corner data | proved | affine vacuum, caustic-free positive solution | analytic Raychaudhuri reduction; V10 | no closed form for generic profile |
| C2-Green | $\delta r$ is given by the retarded Volterra map (3.8), with $\delta V=\operatorname{tr}(AB')/4$ | proved | smooth finite profile and fixed initial cut | variation of the ODE; constant-potential regression V11 | functional-space continuity/completion theorem not supplied |
| C2-full-pullback | the selected full null potential reduces to (4.4), and its curl is the coupled nonlocal form (5.1) | proved | fixed labels/embeddings/affine lengths; selected HF/LMPS representative | analytic field-space curl; finite-mode regression V12 | not representative-independent or gauge-reduced |
| C2-shared-corner | $\bar q^+(0)=\bar q^-(0)=\bar h$ and $\Omega_0$ are imposed once, while $\theta_{+0},\theta_{-0}$ remain independent | proved | diagonal pullback at $S_0$ | calculation 02 section 6; V3, V13 | no varying-embedding corner block |
| C2-outer-response | spin-2 backreaction enters the retained area/boost ports through $\delta\Omega_{sL}=2r_s(L_s)\delta r_s(L_s)$ | proved | Stage-1 abstract port policy | Green map evaluated at $L_s$ | a concrete closing wall can add a traceless shape momentum |
| C2-Reis-bulk | the conformal bulk coefficient agrees with Reisenberger after the inverse-metric and area-coordinate dictionary | proved | monotonic area parameter and matched orientation conventions | calculation 02 section 8; Reisenberger eq. (100) | not equality of the complete forms |
| C2-Reis-normal | Reisenberger's $n_s=\partial_{v_s}$ equals the project's affine $\ell_s$ and hence $\lambda_R=m$ | false | generic affine data with nonstationary area parameter | $n_s=B_s\ell_s$, $B_{s0}=2/\theta_{s0}$ | equality needs an extra fixed normalization |
| C2-Reis-corner | the project corner block already agrees with Reisenberger after an overall orientation reversal | false | conformal bulk signs held aligned | isolated blocks have opposite sign and $\lambda_R=m-\log|B_+B_-|$; Reisenberger also has a conformal endpoint term | explicit field-dependent endpoint/$dY$/joint transformation required |
| C2-Reis-full | the complete affine reduced form equals Reisenberger's full area-gauge form | open | field-dependent $\lambda\mapsto v$, normal scales $B_s$, moving endpoints, endpoint maps, and transformed ports required | conformal coefficient regression only | normal/twist dictionary repaired; corner sign and surface terms unresolved |
| C2-target-CPS | the full spin-0+2 gravitational characteristic CPS is nondegenerate and representative independent | open | closing geometry and all gauge quotients required | a selected presymplectic pullback is derived | full rank/kernel and port realization remain open |
| C3-source | Stage-2 data determine the affine Damour source $D_A(\theta/2)-D_B\sigma^B{}_A$ | proved | calculation 02 assumptions | $r[\bar q]$, $\theta=2r'/r$, $\sigma_{AB}=r^2\bar q'_{AB}/2$ | none at the transport-equation level |
| C3-spin1 | reduced spin-1 form with $\omega_{A0}$ | open | embedding/endpoint-map polarization must be chosen | Damour transport is ready; unreduced dictionary established | pullback of $-\bar\eta_A\delta\ell^A$ and gauge quotient |

## Verification ledger

| ID | Check | Evidence type | Evidence boundary |
|---|---|---|---|
| V0 | null projector annihilation/idempotence in an exact block metric | exact Wolfram regression | matrix realization, not a tensor theorem by itself |
| V1 | nonlinear Raychaudhuri and area solution | exact Wolfram identity | sheet equations only |
| V2 | pullback integral, curl, and initial/outer-area conversion | exact Wolfram identity | fixed $L$, selected sheet representative |
| V3 | initial two-endpoint normalization cancellation against $\delta I_{S_0}$ | exact Wolfram one-form algebra | orientation and geometric $\alpha_\pm=-\delta a_0$ input are analytic |
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

Passing V0--V14 proves only the identities stated.  It does not prove a
concrete closing-wall action, full Reisenberger equivalence, a reduced spin-1
block, full-gauge nondegeneracy, completeness, surjectivity, positivity, or a
continuum topology theorem.
