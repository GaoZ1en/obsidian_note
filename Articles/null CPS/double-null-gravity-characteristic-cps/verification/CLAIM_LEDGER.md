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
| C0-representative | $\kappa$ and $\kappa+\theta$ representatives differ by a generator total derivative canceled by shifts at both endpoints | proved | fixed segment incidence | analytic identity; V3 | no statement if an endpoint is discarded |

## Stage 1

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C1-Ray | $\theta=\theta_0/(1+\lambda\theta_0/2)$ solves 4D affine vacuum Raychaudhuri | proved | $F>0$, $\sigma=0$ | differentiation; V1 | cross constraints excluded |
| C1-area | $\Omega=\Omega_0(1+\lambda\theta_0/2)^2$ and $\partial_\lambda\Omega=\theta\Omega$ | proved | same | differentiation; V1 | none within sheet constraint |
| C1-bulk-pullback | $\Omega_N^{(0),\rm bulk}=C_GL\,\delta\Omega_0\wedge\delta\theta_0/2$ | proved | fixed affine length and positive characteristic orientation | exact integral and field-space curl; V2 | cut terms not included in this isolated claim |
| C1-bulk-vanishes | the finite sheet spin-0 bulk pullback vanishes | false | $L>0$ | C1-bulk-pullback | only special restricted variations can kill it |
| C1-joint | $S_0$ supplies one area/relative-boost pair proportional here to $-C_G\delta m_0\wedge\delta\Omega_0$ | proved | area polarization; $a_0=-m_0-\log2$ | direct variation | global orientation reverses overall sign |
| C1-no-double-area | the shared $S_0$ area is imposed once and its joint is not duplicated per sheet | proved | corner matching | diagonal pullback $\Omega_{0+}=\Omega_{0-}$ | none |
| C1-theta-partners | $\theta_{+0}$ and $\theta_{-0}$ each have independent canonical partners inside the proposed target | false for the displayed bulk-plus-initial-corner truncation | fixed $L_\pm$, frozen outer variables | only $L_+\theta_{+0}+L_-\theta_{-0}$ couples to $\Omega_0$ | outer variables can change the result |
| C1-only-corner | the complete reduced spin-0 sector is only $\delta m_0\wedge\delta\Omega_0$ | open | requires complete outer polarization and quotient | outer-cut term (5.3) is unresolved | specify $a_\pm/h_{\pm L}$, embeddings, affine scales |
| C1-target-CPS | the proposed finite target carries a well-defined reduced characteristic CPS | open | would require all constraints, endpoint data, quotient, and rank | Stage-1 obstruction | outer-cut closure and Stages 2--3 |

## Stage 2 and Stage 3

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| C2-kinematics | $\sigma_{AB}=\Omega\partial_\lambda\bar q_{AB}/2$ for $\det\bar q=1$ | proved | fixed generator chart | direct decomposition; V4 | none |
| C2-chart | diagonal unimodular chart gives $\widetilde\sigma^{AB}\delta\bar q_{AB}/2=2\dot\phi\delta\phi$ | checked symbolically | one local conformal chart | V4 | not general reduction |
| C2-reduced | reduced spin-2 $\Theta_X,\Omega_X$ and Reisenberger equivalence | open | Stage-1 closure first | no completed pullback | constraints, endpoints, shared corner metric |
| C3-spin1 | reduced spin-1 form with $\omega_{A0}$ | open | Stage 1--2 closure required | only unreduced dictionary established | Damour transport and embedding quotient |

## Verification ledger

| ID | Check | Evidence type | Evidence boundary |
|---|---|---|---|
| V0 | null projector annihilation/idempotence in an exact block metric | exact Wolfram regression | matrix realization, not a tensor theorem by itself |
| V1 | nonlinear Raychaudhuri and area solution | exact Wolfram identity | sheet equations only |
| V2 | pullback integral and field-space curl coefficient | exact Wolfram identity | fixed $L$, isolated sheet bulk |
| V3 | $\kappa$ versus $\kappa+\theta$ endpoint cancellation | exact Wolfram identity | both endpoints must be retained |
| V4 | unimodular spin-2 trace/shear/local-chart contraction | exact Wolfram regression | one chart; not Stage-2 closure |

Passing V0--V4 proves only the identities stated.  It does not prove existence
of a vacuum development, completeness, nondegeneracy, surjectivity, positivity,
continuum topology, or an endpoint-independent reduced CPS.

