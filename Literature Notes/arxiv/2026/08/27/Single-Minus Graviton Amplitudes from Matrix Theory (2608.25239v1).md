---
paper id: 2608.25239v1
title: Single-Minus Graviton Amplitudes from Matrix Theory
authors:
  - Alfredo Guevara
  - Alexandru Lupsasca
  - Juan Maldacena
  - Andrew Strominger
publication date: 2026-08-25T23:58
abstract: |-
  The paper relates quarter-supersymmetric single-minus graviton amplitudes in BFSS/matrix-string theory to a helicity supertrace counting Coulomb-branch BPS states in four-dimensional N=4 super Yang--Mills. It evaluates the index in one ordered decay chamber using primitive wall crossing, derives an all-orders soft recursion inside a fixed kinematic chamber, and checks a plane-wave boundary limit directly in gravity and the matrix model.
comments: "29 pages, 11 figures; rendered PDF has 30 pages including title material"
url: https://arxiv.org/abs/2608.25239v1
summary: "The decay-chamber charge product and normalization ledger are algebraically consistent, but the amplitude--index equality remains conditional on an open/closed-channel identification and on applying Sen wall crossing to the matrix-string field-theory limit."
tags: []
---

See the daily placement and audit in [[2026_08_27_overview]].

# Verdict

**Not proven by the current derivation; the evidence only shows:** conditional on the stated open/closed-channel identification, the imported canonically normalized two- and three-point inputs, direct applicability of Sen's primitive wall-crossing formula to the two-dimensional matrix-string field-theory limit, and primitive isolated gapped charge sectors, the BFSS helicity supertrace agrees exactly with the gravity single-minus prefactor in the ordered decay chamber.

Within those conditions, the explicit algebra is consistent. Independent Sage checks reproduce the charge-lattice/bracket product for a primitive five-point example, the Gaussian zero-mode determinant, the leading helicity-supertrace coefficient, and the plane-wave product. The soft recursion follows from primitive wall crossing in an open neighborhood of a soft charge inside a fixed kinematic chamber. It supports, but does not prove, amplitude--index equality in all chambers.

The key boundary is already visible in the source. The supercharge insertion in the closed channel is described as schematic; only the $n$-dependent normalization is explicitly tracked; the $n$-independent factor is inherited from the two- and three-point analysis; and the paper says it assumes that the string-network wall-crossing method applies directly to the $1+1$-dimensional field-theory problem.

# How to read this paper

1. Read Sec. 2 for the kinematic support and normalization dictionary. The nonzero object lives on half-collinear complex or $(2,2)$-signature kinematics, not on generic real Lorentzian four-dimensional momenta.
2. Read Secs. 3--4 as a conditional channel-duality argument. Equation (4.13) is the central proposed identification, but its zero-mode ledger is not a first-principles derivation of every factor.
3. Read Sec. 5 for the firmest new computation. In the ordered decay chamber, repeated primitive wall crossing gives the same factorized polynomial as gravity.
4. Read Sec. 7 locally in charge space. The all-orders soft formula is exact while the soft deformation stays inside one kinematic chamber; it does not provide a rule for crossing chamber walls.
5. Read Sec. 8 as an independent special-kinematics check with its own regulator caveat: the matrix expectation values require a rotation-invariant prescription or analytic continuation because the ground state has power-law tails.

# Complete source map

## 1. Introduction

- Places the calculation within the BFSS conjecture and protected matrix-theory amplitudes.
- Reviews the nonzero single-minus amplitude on the special support where all holomorphic spinors are parallel and all Mandelstam invariants vanish.
- Defines an ordered decay chamber and its gravity product
  $$
  \mathcal M_n^{\rm grav}\big|_{\mathcal R_{n,n-1}}
  =\prod_{a=1}^{n-2}S_a,
  \qquad
  S_a=\sum_{b=a+1}^{n-1}[ba].
  $$
- Announces the index relation, wall-crossing computation, soft recursion, and plane-wave limit.

## 2. Single-minus graviton amplitudes in supergravity

### 2.1 Conventions and supersymmetry

- Embeds the external momenta in an eleven-dimensional four-plane with metric
  $$
  ds^2=-2dx^+dx^-+2dz\,d\bar z.
  $$
- Chooses $p_+=p_{\bar z}=0$, so every momentum has the same holomorphic spinor $\lambda=(1,0)$.
- Constructs the quarter-supersymmetric $\mathcal N=8$ superamplitude and its eight-fermion support.
- Compactifies $x^-$ and $x^9$ and defines
  $$
  \Gamma_i=(N_i,n_i),
  \qquad
  \langle\Gamma_i,\Gamma_j\rangle=N_in_j-N_jn_i,
  $$
  $$
  [ij]=-\mu\langle\Gamma_i,\Gamma_j\rangle,
  \qquad
  \mu=\frac{\sqrt2}{R_-R_9}.
  $$
- Argues that higher gravitational corrections vanish on this supersymmetric support because every ordinary Mandelstam invariant is zero.

### 2.2 Rewriting the superamplitude in a new vacuum

- Fourier-transforms half of the Grassmann variables to a vacuum adapted to Euclidean M2/D3 sources.
- Splits the supercharges according to the $123$ and $4567$ chiralities.
- Isolates the single-minus component and converts the holomorphic-spinor delta functions to constraints on imaginary $p_8$.
- Gives the canonically normalized amplitude used in the matrix-string channel.

## 3. Scattering problem in matrix string theory

- Reviews BFSS longitudinal momentum $-p_-=N/R_-$ and the T-dual $1+1$-dimensional $\mathsf U(N)$ SYM description.
- Represents the incoming state as $n-1$ blocks with ranks $N_i$ and electric fluxes $n_i$ merging into one outgoing block.
- Assumes coprime charge pairs so each $\mathsf{SU}(N_i)$ sector has an isolated supersymmetric ground state.
- Uses supersymmetry to write the matrix-string amplitude with the same distributional support as gravity, leaving only $\mathcal M_n^{\rm BFSS}$ undetermined.

## 4. The connection between the amplitude and the index

- Euclideanizes $x^+$ and maps the matrix blocks to $(N_i,n_i)$ D1--F1 strings ending on D3-branes.
- Views the finite cylinder in two channels: a Witten-type trace in the open channel and a boundary-state overlap in the closed channel.
- Explains why the naive index vanishes and introduces
  $$
  B_2(\nu)
  =-\operatorname{Tr}\left[(-1)^F\frac{(2J)^2}{2}e^{2\nu I_3}\right].
  $$
- The half-BPS center-of-mass factor is
  $$
  h(\nu)=e^\nu+e^{-\nu}-2=\nu^2+O(\nu^4).
  $$
- Proposes the helicity supertrace
  $$
  \mathcal I_n
  =-\frac1{[2(n-1)]!}
  \operatorname{Tr}\left[(-1)^F\frac{(2J)^2}{2}(2I_3)^{2(n-1)}\right]
  =\mu^{2-n}\mathcal M_n^{\rm BFSS}.
  $$

### 4.1 Zero-mode normalization ledger

- Relates open- and closed-channel fermion zero modes and converts the $J,I_3$ insertions into external supercharges.
- Integrates the center-of-mass bosonic modes and displays the cancellation of $\Delta\tau$ and $N_i$ powers.
- Imports boundary-state normalizations and the remaining overall factor from the established two- and three-point treatment.
- Reduces the $n$-dependent normalization to $\mu^{2-n}$ using the M-theory/T-duality dictionary.

## 5. Computing the index

### 5.1 Three-point function

- Applies primitive wall crossing to a two-constituent decay.
- Obtains $B_2(\nu)=m_2h(\nu)^2$ and hence $\mathcal I_3=m_2=[32]/\mu$.

### 5.2 Faces

- Explains that internal faces and subfaces change the full function $B_2(\nu)$.
- Shows that the associated jumps begin at higher order in $\nu$ and therefore do not alter the particular helicity supertrace $\mathcal I_n$ extracted here.

### 5.3 Four-point function

- Chooses the wall-crossing path compatible with the decay chamber.
- Sequentially obtains
  $$
  \mathcal I_4
  =\langle\Gamma_3,\Gamma_2\rangle
  \langle\Gamma_2+\Gamma_3,\Gamma_1\rangle
  =\frac1{\mu^2}[32]([21]+[31]).
  $$
- Warns that multiplying trivalent vertex indices is wrong for a generic resolution of the web.

### 5.4 General n

- Deforms the web to an ordered comb in the chamber
  $$
  \frac{n_1}{N_1}<\cdots<\frac{n_{n-2}}{N_{n-2}}
  <\frac{n_n}{N_n}<\frac{n_{n-1}}{N_{n-1}}.
  $$
- Defines
  $$
  \Gamma_{>a}=\sum_{b=a+1}^{n-1}\Gamma_b,
  \qquad
  m_a=-\langle\Gamma_{>a},\Gamma_a\rangle>0.
  $$
- Repeated wall crossing gives
  $$
  B_2(\nu)=h(\nu)^{n-1}\prod_{a=1}^{n-2}m_a,
  \qquad
  \mathcal I_n=\prod_{a=1}^{n-2}m_a.
  $$
- The bracket dictionary then reproduces the gravity decay-chamber product.

## 6. Comparing to the gravity amplitude

- States exact finite-charge agreement in the one chamber under the imported channel and normalization assumptions.
- Distinguishes wall crossing in D3-position space, used as a computational device, from walls in external charge/kinematic space where the gravity polynomial changes.
- Leaves nonprimitive sectors, other in/out assignments, all-chamber equality, and a direct interpretation of the full refined index open.
- Suggests connections to Landau diagrams, Melvin backgrounds, and loop-group symmetry without deriving them.

## 7. w1+infinity soft theorems from wall crossing

- Adds a charge $\Gamma_s$ small compared with every hard charge.
- Moves the associated D3 position from a disconnected configuration across each allowed primitive wall.
- Equates the two wall-crossing paths and obtains
  $$
  \mathcal M_n^{\rm BFSS}(1,\ldots,n-1,s)
  =\frac12\sum_{j=1}^{n-1}|[sj]|\,
  \mathcal M_{n-1}^{\rm BFSS}(1,\ldots,j+s,\ldots,n-1).
  $$
- Also derives the signed constraint
  $$
  \sum_{j=1}^{n-1}[sj]\,
  \mathcal M_{n-1}^{\rm BFSS}(1,\ldots,j+s,\ldots,n-1)=0.
  $$
- Proves these exactly for sufficiently small $\Gamma_s$ so every shifted term remains in the same kinematic chamber.

## 8. Scattering off a plane wave

### 8.1 Gravity worldline calculation

- Takes the first $n-2$ legs to have $p_-=0$ and the last two to carry opposite nonzero longitudinal momentum.
- Reaches a boundary of the decay chamber where only $[n-1,a]=-p_{\rm h}q_a$ survive.
- Reproduces
  $$
  \mathcal M_n^{\rm grav}\big|_{\rm pp}
  =(-p_{\rm h})^{n-2}\prod_{a=1}^{n-2}q_a
  $$
  by propagating a particle through a holomorphic Ricci-flat complex plane wave.
- Accounts for the half-collinear delta functions through the worldline time integrals and zero mode.

### 8.2 Matrix-model calculation

- Promotes the holomorphic plane-wave coupling to matrices.
- Separates $Z=z\mathbf1_N+\widehat Z$ and argues that only the center-of-mass mode contributes.
- Matches the gravity computation provided the $\mathsf{SU}(N)$ expectation values are defined with a rotation-invariant regulator or analytic continuation.

## Appendix A. Three-point normalization check

- Converts the standard three-point superamplitude to the paper's half-collinear delta-function convention.
- Tracks the momentum-support Jacobian and Grassmann delta scaling.
- Recovers $\mathcal M_3^{\rm grav}=|[12]|$ with the stated overall normalization.

# Exact chamber arithmetic

The central decay-chamber equality is transparent once the two independent inputs are separated. Wall crossing gives

$$
\mathcal I_n=\prod_{a=1}^{n-2}
\left[-\left\langle\sum_{b=a+1}^{n-1}\Gamma_b,\Gamma_a\right\rangle\right].
$$

The gravity product and charge dictionary give

$$
S_a=\sum_{b=a+1}^{n-1}[ba]
=-\mu\left\langle\sum_{b=a+1}^{n-1}\Gamma_b,\Gamma_a\right\rangle
=\mu m_a.
$$

Therefore

$$
\mathcal M_n^{\rm grav}\big|_{\mathcal R_{n,n-1}}
=\mu^{n-2}\prod_am_a,
$$

or $\mathcal I_n=\mu^{2-n}\mathcal M_n^{\rm grav}$. This algebraic match is exact. What remains conditional is identifying the same $\mathcal I_n$ with the BFSS scattering prefactor before the comparison to gravity.

# Zero-mode determinant

After the momentum-conservation delta function removes $p_n$, one Cartesian component of the bosonic Gaussian has matrix

$$
A=\operatorname{diag}(N_1^{-1},\ldots,N_{n-1}^{-1})
+\frac1N\mathbf1\mathbf1^T,
\qquad N=\sum_{i=1}^{n-1}N_i.
$$

The matrix determinant lemma gives

$$
\det A
=\frac1{\prod_iN_i}
\left(1+\frac{\sum_iN_i}{N}\right)
=\frac2{\prod_iN_i}.
$$

For four transverse momentum components this produces the displayed factor

$$
\frac14\left(\frac{2\pi}{R_-}\right)^{2(n-1)}
\frac{\prod_iN_i^2}{(\Delta\tau)^{2(n-1)}}.
$$

This confirms the Gaussian part of the ledger, not the full channel duality or the omitted $n$-independent normalization.

# Claim boundaries

| claim | evidence | boundary |
|---|---|---|
| nonzero quarter-BPS single-minus support | supersymmetric distributional superamplitude | complex or $(2,2)$ half-collinear kinematics |
| index equals BFSS prefactor | open/closed argument and zero-mode ledger | schematic insertion map and imported normalization |
| index equals gravity amplitude | exact product match | explicitly evaluated only in one decay chamber |
| all-chamber correspondence | same soft recursion | support, not a chamber-by-chamber evaluation |
| soft tower | primitive wall-crossing path equality | exact only before the soft deformation reaches a chamber wall |
| plane-wave match | center-of-mass reduction | requires a regulator/analytic continuation for power-law tails |

# Equation ledger and derivation map

| source equation(s) | input | output | later use |
|---|---|---|---|
| (1.2)--(1.6) | single-minus superamplitude | chamber product | gravity target |
| (1.8)--(1.9), (2.11)--(2.12) | compact momenta | charge/bracket dictionary | index comparison |
| (2.13)--(2.21) | Grassmann Fourier transform | source-adapted component amplitude | matrix-string channel |
| (3.1)--(3.3) | BFSS T-duality and block states | matrix-string amplitude ansatz | unknown $\mathcal M^{\rm BFSS}$ |
| (4.1)--(4.5) | open/closed cylinder and zero modes | helicity supertrace | proposed amplitude--index map |
| (4.6)--(4.13) | fermionic and bosonic zero modes | $\mu^{2-n}$ normalization | central identification |
| (5.3)--(5.9) | primitive wall crossing | three-, four-, and n-point index | decay-chamber product |
| (6.1)--(6.2) | gravity chamber structure | scope comparison | open problems |
| (7.3)--(7.9) | soft D3 displacement | $w_{1+\infty}$ recursion and signed constraint | all-orders local soft theorem |
| (8.2)--(8.12) | plane-wave boundary kinematics | gravity worldline amplitude | special check |
| (8.13)--(8.15) | matrix holomorphic coupling | center-of-mass reduction | matrix check |
| (A.1)--(A.7) | standard three-point amplitude | half-collinear normalization | imported seed |

# Translation into current project language

- The kinematic chamber is part of the observable's definition. A polynomial valid inside one chamber is not a global amplitude formula across its walls.
- The D3-position wall crossing is a computational homotopy at fixed external charges; it must not be conflated with kinematic wall crossing as the charges vary.
- The soft theorem is local in charge space. "All orders" means all powers of a sufficiently small soft charge before a chamber wall is reached, not arbitrary finite soft momentum.
- The amplitude--index equality is analogous to a regulated channel-duality claim: the zero modes, boundary states, normalization, and order of limits are constitutive data, not removable bookkeeping.
- The exact chamber product is strong evidence for BFSS, but its strongest interpretation still depends on the unproved field-theory transfer of the wall-crossing index.

# Verification log

## Checked

- **Sage, exact charge arithmetic:** for the primitive ordered charges $(1,0),(5,1),(4,1),(1,5)$ with outgoing charge $(-11,-7)$, reproduced slopes $0<1/5<1/4<7/11<5$, wall multiplicities $(7,25,19)$, gravity factors $(7,25,19)$, and zero product residual.
- **Sage, symbolic Gaussian determinant:** verified $\det A=2/\prod_iN_i$ with zero residual for one through five incoming blocks.
- **Sage, helicity-supertrace extraction:** verified that the coefficient of $\nu^{2(n-1)}$ in $h(\nu)^{n-1}$ is one for $3\leq n\leq8$.
- **Sage, plane-wave limit:** reproduced $\prod_a[n-1,a]=(-p_{\rm h})^{n-2}\prod_aq_a$ with zero symbolic residual.
- **Direct algebra:** reproduced the bracket sign and scale $[ij]=-\mu\langle\Gamma_i,\Gamma_j\rangle$ from the displayed spinors, and the normalization identity
  $$
  \frac{\kappa_{11}}{(2\pi)^4\ell_p^{3/2}\widetilde R_9}
  =\frac{R_-R_9}{\sqrt2}=\mu^{-1}.
  $$
- **Rendered PDF and TeX comparison:** visually confirmed the amplitude dictionary, channel-identification caveat, zero-mode ledger, four-point wall crossing, local soft condition, plane-wave product, and three-point normalization on PDF pages 5, 10, 14, 17, 21, 26, and 29.

## Source-derived

- The supersymmetric form and no-higher-correction statement for the half-collinear superamplitude.
- The open/closed cylinder interpretation, boundary-state normalization, and mapping of helicity-supertrace insertions to the external supercharges.
- Sen's primitive wall-crossing formula and its protected-spin sign conventions.
- The gravity single-minus chamber polynomial imported from the cited amplitude calculation.
- The worldline and matrix couplings to the complex plane-wave background.

## Blocked

- The paper does not prove that the string-network wall-crossing formula survives unchanged in the $1+1$-dimensional matrix-string field-theory limit; it explicitly adopts this as an assumption.
- The supercharge insertion in the closed channel is schematic, and the full $n$-point open/closed normalization is not derived independently from first principles. Only its $n$-dependent part is displayed, with the remaining factor inherited from lower points.
- No explicit index evaluation is given outside the ordered decay chamber, and nonprimitive charge sectors are deferred.
- The plane-wave matrix expectation value is not regulator-controlled in the source because the ground-state tails and holomorphic exponential pull in opposite convergence directions.

## Failed

- None in the executed arithmetic and normalization checks.

## Not independently verified

- The full all-orders single-minus gravity formula and its chamber walls.
- The BPS spectrum and protected-spin refinements underlying Sen's wall-crossing factors.
- The absence of every possible quantum correction beyond the stated invariant-counting argument.
- The exact soft recursion in a nontrivial chamber other than the displayed wall-crossing derivation.

# Bottom line for current projects

The robust reusable result is the conditional chain

$$
\text{primitive ordered BPS web}
\longrightarrow \mathcal I_n=\prod_am_a
\longrightarrow \mu^{2-n}\mathcal M_n^{\rm grav},
$$

with every chamber, primitive-sector, and normalization assumption kept visible. The paper gives a compelling protected-sector test of BFSS and a geometric wall-crossing origin for the local $w_{1+\infty}$ soft tower. It does not yet furnish a chamber-independent derivation of the BFSS amplitude or a regulator-free proof of the amplitude--index correspondence.
