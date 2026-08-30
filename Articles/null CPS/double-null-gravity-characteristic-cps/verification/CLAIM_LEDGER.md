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
| C1-bulk-pullback | $\Omega_N^{(0),\rm bulk}=C_GL\,\delta\Omega_0\wedge\delta\theta_0/2$ | proved | selected HF/LMPS representative, fixed affine length, positive characteristic orientation | exact integral and field-space curl; V2 | a $dY$ shift moves two-form support to the endpoints |
| C1-area-port-form | the same sheet form is $C_G\delta\Omega_0\wedge\delta\Omega_L/(2\sqrt{\Omega_0\Omega_L})=2C_G\delta\sqrt{\Omega_0}\wedge\delta\sqrt{\Omega_L}$ | proved | $\Omega_0>0$, $F_L>0$ | analytic wedge conversion; V2 | none within this chart |
| C1-bulk-vanishes | the finite sheet spin-0 bulk pullback vanishes | false | $L>0$ | C1-bulk-pullback | only restricted variations can kill it |
| C1-joint | the combined two sheet endpoints plus $\delta I_{S_0}$ cancel $\Omega_0\delta a_0$ and leave one pair $-C_G\delta m_0\wedge\delta\Omega_0$ | proved | selected representative, outward-convex initial joint; $a_0=-m_0-\log2$ | calculation 00 section 6; V3 | overall hypersurface orientation reverses the whole form |
| C1-no-double-area | the shared $S_0$ area is imposed once and its joint is not duplicated per sheet | proved | corner matching | diagonal pullback $\Omega_{0+}=\Omega_{0-}$ | none |
| C1-extended-rank | retaining area/boost ports $(\Omega_{\pm L},b_\pm)$ gives pointwise rank six and zero kernel | proved | spin-0 truncation, fixed labels/affine gauge, positive areas, declared port policy | determinant and rank; V5 | not full gravitational gauge nondegeneracy |
| C1-fixed-area | fixing $\Omega_{\pm L}$ gives rank two; $b_\pm$ are kernel source directions until fixed or quotiented | proved | spin-0 truncation and fixed-area outer policy | pulled-back matrix; V5 | a fixed-boost policy is different |
| C1-theta-partners | with outer ports retained, each $\theta_{\pm0}$ acquires a partner through its own $(\Omega_{\pm L},b_\pm)$ port | proved | declared port policy, invertible Raychaudhuri map, $F_{\pm L}>0$ | equation (6.3); C1-extended-rank | not a claim without retained ports |
| C1-only-corner | after fixed-area port reduction, the remaining spin-0 form is only $-C_G\delta m_0\wedge\delta\Omega_0$ | proved | $\delta\Omega_{\pm L}=0$ and port source directions fixed/quotiented | equation (7.2); V5 | false as a policy-independent statement |
| C1-compose | two consecutive affine spin-0 sheet segments compose after matching the middle area/boost port | proved | spin-0 sheet truncation, common affine slope, fixed segment lengths | square-root-area formula; V6 | not a full double-null spacetime-cell theorem |
| C1-cross-compatibility | generic CK/Sachs data require an extra algebraic cross-focusing compatibility condition at $S_0$ | false | generic characteristic data | CIVP/data distinction | cross-focusing remains a preservation test for this special truncation |
| C1-target-CPS | the full proposed finite characteristic data carry a reduced CPS | open | all constraints, endpoints, and gauge quotients required | only spin-0 port-complete sector closed | Stages 2--3 remain open |

## Stage 2 and Stage 3

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C2-kinematics | $\sigma_{AB}=\Omega\partial_\lambda\bar q_{AB}/2$ for $\det\bar q=1$ | proved | fixed generator chart | direct decomposition; V7 | none |
| C2-density | with $\widetilde\sigma^{AB}=\Omega\sigma^{AB}$ and bare $d\lambda d^2x$, the selected HF potential contains $\Omega\widetilde\sigma^{AB}\delta\bar q_{AB}/2$ | proved | Stage-0/HF representative; $dB=\Omega d\lambda d^2x$ | calculation 00 (5.1)--(5.2), calculation 02 | not a representative-independent density convention |
| C2-chart | diagonal unimodular chart gives the pure contraction $\widetilde\sigma^{AB}\delta\bar q_{AB}/2=2\dot\phi\delta\phi$ and full density $2\Omega\dot\phi\delta\phi$ | checked symbolically | one local conformal chart | V7 | not a reduced pullback |
| C2-reduced | reduced spin-2 $\Theta_X,\Omega_X$ and Reisenberger equivalence | open | use the Stage-1 port policy and corrected density | no completed pullback | constraints, endpoints, shared corner metric |
| C3-spin1 | reduced spin-1 form with $\omega_{A0}$ | open | Stage 1--2 closure required | only unreduced dictionary established | Damour transport and embedding quotient |

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

Passing V0--V7 proves only the identities stated.  It does not prove
preservation of the spin-0 truncation by transverse evolution, existence of a
vacuum development, completeness, full-gauge nondegeneracy, surjectivity,
positivity, continuum topology, or a reduced Stage-2 CPS.
