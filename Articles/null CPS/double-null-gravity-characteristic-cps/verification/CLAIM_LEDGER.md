# Authoritative Claim Ledger

Allowed status vocabulary:

`proved / checked symbolically / conditional / open / false`

## Stage 0

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C0-projector | $q_{ab}=g_{ab}-\mu_{+-}^{-1}(\ell_{+a}\ell_{-b}+\ell_{-a}\ell_{+b})$ projects orthogonally to both null normals | proved | $\mu_{+-}=-e^{-m}\neq0$ | direct contractions; matrix regression V0 | none |
| C0-symbols | $\mu_{+-}$ and $\Pi_{\Omega,\pm}=\kappa_\pm+\theta_\pm/2$ are distinct variables | proved | 4D convention | definitions (2.1), (2.4) | none |
| C0-spin1 | HF momentum is $p_A^{\rm HF}=-\omega_A-D_A\bar\alpha$, hence $-\omega_A$ only in $\bar\alpha=0$ gauge | proved | normalized frame $L\cdot\bar L=1$ | translated HF definitions and identity (A3) | tangential labels are fixed, not reduced |
| C0-boost | $m\mapsto m-\beta_+-\beta_-$ and $\omega_A^{(+)}\mapsto\omega_A^{(+)}+D_A\beta_+$ | proved | branch-adapted normal-connection definition | direct rescaling | Stage 3.0 quotients the residual opposite boost as proper normal-frame gauge |
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
| C3-endpoint-potential | the gravitational null potential induces $\Theta_{S_0}^{(1)}=(C_G/2)\sum_s\int\widetilde\tau_{s i}\delta s_s^i$ | proved | selected HF representative; compensator fixed at the outer cut; Damour constraint; declared incidence and boost gauge | calculation 05 equations (2.1)--(2.11); V30 checks its curl; V33 checks the local tensor identities | another $dY$ polarization changes only the canonical representative |
| C3-nonredundant | $(s_\pm^A,\widetilde\tau_{\pm A};\Omega_0,\lambda_R,\bar h_{AB})$ is nonredundant and $\widehat\omega_A$ is reconstructed from the momentum difference and $\mathcal B_+/\mathcal B_-$ | proved | invertible endpoint maps, $\Omega_0>0$ | calculation 05 section 3; V29 | does not by itself prove full functional nondegeneracy |
| C3-Damour | $\omega_A^{(s)}=[\Omega_0\omega_{A0}^{(s)}+\int_0^\lambda\Omega_sJ_A^{(s)}]/\Omega_s$ with $J_A^{(s)}=D_A(\theta_s/2)-D_B\sigma_s^B{}_A$ | proved | affine gauge, Stage-2 reconstructed sources | integrating factor in calculation 05 section 4; nonzero-source regression V28 | global regularity beyond the caustic-free interval not claimed |
| C3-moment-map | $\mathcal C_A=(s_+^*\widetilde\tau_+)_A+(s_-^*\widetilde\tau_-)_A-2\Omega_0D_A\lambda_R$ is the moment map for diagonal relabelling of the remaining corner block | proved | Stage-2 bulk restricted by the Damour Ward identity; closed cut or tangent smearing field; cotangent lift; convention $\iota_X\Omega=\delta H$ | calculation 05 equations (5.4)--(5.6); V30 | not an off-shell bulk theorem; relative endpoint displacement is not generated by this constraint |
| C3-boost-policy | residual opposite boosts are proper normal-frame gauge and are quotiented in Stage 3.0 | conditional | area-normal tangents fixed; no added frame variable | invariant reconstruction and kernel in calculation 05 section 6; V31 | a different extended-frame polarization is possible but not used |
| C3-rank | after the two generator-chart constraints and diagonal quotient, the local corner block has rank six and contains two relative spin-1 pairs plus the area/normal pair | checked symbolically | local-point translation truncation; covector-density momenta | analytic count; V31 | not a continuum functional nondegeneracy theorem |
| C3-spin1-compose | the abstract spin-1 interface potentials cancel after diagonal endpoint-map and cotangent momentum matching | proved | explicit incidence map and opposite interface orientations | calculation 05 section 8; V32 | physical closing-wall realization remains open |
| C3-Reis-regression | the derived endpoint block agrees with Reisenberger after branch, density, pullback, reference, and normal-frame dictionaries | proved | displayed dictionary in calculation 05 section 9 | project derivation followed by source regression | not a full equivalence through $\theta_s=0$ or a closing-wall theorem |
| C3-target-CPS | the full reduced spin-$0+1+2$ gravitational characteristic CPS is nondegenerate | open | completed profile space, closing geometry, and all gauge quotients required | restricted bulk and corner blocks are derived | full functional kernel/quotient and wall ports remain open |

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
| V27 | endpoint-map covector-density pullbacks compose | exact Wolfram matrix algebra | invertible linear maps; analytic identity (1.4) supplies the nonlinear statement |
| V28 | Damour integrating-factor solution with a nonzero shear-divergence contribution | exact Wolfram ODE identity | one finite source profile; analytic equation fixes the continuum formula |
| V29 | generator constraint, twist reconstruction, and both branch initial normal connections | exact Wolfram algebra | one local transverse component |
| V30 | curl of the endpoint potential and diagonal moment-map contraction | exact Wolfram matrix algebra | local translation truncation; analytic cotangent-lift proof is calculation 05 |
| V31 | rank/kernel before and after the generator constraint/quotient, and opposite-boost kernel | exact Wolfram matrix algebra | local-point truncation; not functional nondegeneracy |
| V32 | two-cell endpoint potential and two-form cancel under diagonal cotangent matching | exact Wolfram matrix pullback | abstract interface port; not a closing-wall action |
| V33 | tracefree conformal Lie contraction and tangential integration by parts give the Damour coefficient | exact xAct residual checks with `canonical_contract` | local two-dimensional cut tensor identities; the global endpoint theorem also uses the displayed boundary conditions and Damour constraint |

Passing V0--V33 proves only the identities stated.  It does not prove a
closing-wall action or its port momenta, an area chart through $\theta=0$, a
full functional gauge quotient/nondegeneracy, completeness, surjectivity,
positivity, or a continuum topology theorem.
