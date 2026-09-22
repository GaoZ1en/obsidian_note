---
paper id: 2609.21691v1
title: BMS3 modules from path integrals on the coadjoint orbits
authors:
  - Pujian Mao
  - Xin-Cheng Mao
publication date: 2026-09-18T12:26
abstract: |-
  The paper constructs one-loop quantum modules for every constant Virasoro and BMS3 coadjoint orbit from Euclidean half-line path integrals of the geometric action. Complex contours render the quadratic integrals convergent even when the classical Hamiltonian is unbounded below; stabilizer directions are quotiented, regularity and polarization determine a reference state, and the remaining asymptotic-symmetry generators generate its descendants. State-counting characters agree with periodic orbit path integrals.
comments: "1+30 pages"
url: https://arxiv.org/abs/2609.21691v1
summary: "A systematic orbit-to-module construction that preserves stabilizers and exposes the contour and polarization assumptions behind BMS3 quantization."
tags: []
---

# Verdict

Correct as a one-loop construction under the stated contour, polarization, normal-ordering, and stabilizer-quotient assumptions, with two local source errors on PDF page 19:

1. the bounded generic BMS$_3$ sector requires $\mathcal B_1>0$, not the printed $\mathcal B_1>1$;
2. the contour compatible with a real supertranslation field is $x_n^*=x_{-n}$, not the printed $x_n^*=x_n$ in Eq. (5.28).

The paper's main contribution is a deterministic map
$$
\text{constant coadjoint orbit}
\longrightarrow
\text{quadratic orbit path integral}
\longrightarrow
\text{reference-state conditions}
\longrightarrow
\text{coadjoint module and character}.
$$
It reproduces the known Virasoro highest-weight modules and the standard massive and vacuum BMS$_3$ induced modules. It also supplies modules for the remaining constant BMS$_3$ orbits, including unbounded sectors and a bounded exceptional sector induced from a nontrivial $SL(2,\mathbb R)$ little-group representation.

Reason codes: `T1-symmetry`, `T1-symplectic`, `T2-celestial-carrollian`, `T3-math`.

# How to read this long paper

## Essential route

1. Read Sections 2 and 3 for the orbit-to-half-line-path-integral mechanism.
2. In Section 4, focus on the stabilizer quotient, the contour reversal for negative modes, and the derivation of the Virasoro reference state.
3. In Section 5, read Eqs. defining $\mathcal A_n,\mathcal B_n$, the three stabilizer classes, and the three module/character formulas.
4. Read the final comparison between induced and highest-weight BMS$_3$ representations. Equal characters do not imply equal modules.

## Technical reference route

- Appendix A fixes the central-extension signs and Souriau cocycles.
- Section 5.1 gives the gravitational identification of $(j_0,p_0;c_1,c_2)$.
- The ultra-relativistic contractions provide a useful cross-check of the BMS$_3$ modules.

## Optional background

The introduction's survey of gravitational saddles and older induced-representation results can be skimmed if coadjoint orbits and BMS$_3$ are already familiar.

# Complete section tree

## 1. Introduction

Relates three-dimensional boundary gravitons to asymptotic-symmetry coadjoint orbits. It identifies the reference state with the gravitational saddle and descendants with boundary excitations. It also explains why a direct orbit-based construction is preferable to enumerating all Wigner-induced representations: not every induced representation comes from a coadjoint orbit, and characters do not uniquely identify infinite-dimensional representations.

## 2. Generic discussion on coadjoint orbits

Defines adjoint and coadjoint actions, stabilizers, the Kirillov--Kostant form, moment-map charges, Darboux coordinates, and the geometric action.

## 3. Path-integral quantization on a coadjoint orbit

Defines the Euclidean transition amplitude and half-line state preparation. It separates three mechanisms:

- the convergent contour controls the real part of the quadratic action;
- half-line regularity selects annihilation modes when exponential suppression is present;
- polarization must be supplied for modes entering only through a phase.

Stabilizer directions are removed from the measure and must not reappear as independent descendants.

## 4. Virasoro constant orbits

### 4.1 Generic $U(1)$ stabilizer

Every positive Fourier mode gives a harmonic oscillator. The half-line path integral produces a highest-weight reference state, and all $\mathcal L_{-n}$ generate descendants.

### 4.2 Exceptional $SL^{(k)}(2,\mathbb R)$ stabilizer

The $k$th oscillator is absent. $\mathcal L_{-k}$ is not an independent excitation, and the character lacks the factor associated with mode $k$. For $k=1$ this is the Virasoro vacuum module.

## 5. BMS$_3$ constant orbits

### 5.1 Algebra, coadjoint action, and charges

Introduces superrotations $f$, supertranslations $x$, super-angular momentum $j$, supermomentum $p$, central charges $(c_1,c_2)$, and generators $(L_n,M_n)$.

### 5.2 Flat boundary gravitons

Identifies
$$
(j_0,p_0)=\frac{1}{16\pi G}(\Xi,\Theta),
\qquad c_1=0,
\qquad c_2=\frac{3}{G},
$$
and organizes flat cosmologies, conical defects/excesses, and Minkowski space by constant-orbit stabilizers.

### 5.3 Modules for constant orbits

#### 5.3.1 Generic $\mathcal B_n\ne0$

The stabilizer is generated by $L_0,M_0$. Each positive mode becomes a two-dimensional Poincare-particle block. The reference state is a rest-frame state annihilated by every $M_{n\ne0}$, and all nonzero $L_n$ generate the induced module.

#### 5.3.2 Exceptional $\mathcal B_k=\mathcal A_k=0$

The entire $k$th block is removed. The reference state is annihilated by all $M_{n\ne0}$ and by $L_{\pm k}$. The little-group representation of $SL^{(k)}(2,\mathbb R)$ is trivial.

#### 5.3.3 Exceptional $\mathcal B_k=0$, $\mathcal A_k\ne0$

Only the supertranslation directions of the $k$th block are removed. A one-dimensional harmonic oscillator survives. Choosing $F_{-k}$ as annihilator removes $L_k$ but keeps $L_{-k}$ as a physical excitation. This is a nontrivial $SL^{(k)}(2,\mathbb R)$ little-group representation.

## 6. Conclusions

Summarizes the modules and characters, emphasizes the possible Picard--Lefschetz interpretation of unbounded sectors, separates established one-loop exactness for bounded sectors from the unproved unbounded case, compares induced and highest-weight BMS$_3$ modules, and proposes a BMS$_4$ extension.

## Appendix A. Central extension

Derives the extended group law, adjoint and coadjoint actions, Souriau cocycles, centrally extended KK form, charge algebra, Maurer--Cartan form, and geometric action.

# Cluster I: orbit geometry and quantization

Let $G$ have Lie algebra $\mathscr G$ and let $b\in\mathscr G^*$. The coadjoint action is fixed by
$$
\langle\operatorname{Ad}_g^*b,v\rangle
=\langle b,\operatorname{Ad}_{g^{-1}}v\rangle,
\qquad
\langle\operatorname{ad}_u^*b,v\rangle
=-\langle b,[u,v]\rangle.
$$
The orbit through $b_0$ is
$$
W_{b_0}=\{\operatorname{Ad}_g^*b_0\}\simeq G/\operatorname{Stab}(b_0).
$$
Its KK form is
$$
\Omega_b(\operatorname{ad}_v^*b,\operatorname{ad}_{v'}^*b)
=\langle b,[v,v']\rangle,
$$
and the moment-map charges
$$
\Phi_v(b)=\langle b,v\rangle
$$
satisfy
$$
\{\Phi_v,\Phi_{v'}\}=\Phi_{[v,v']}.
$$

In Darboux variables,
$$
\Omega=\sum_s\delta q_s\wedge\delta p_s,
\qquad
A=-\int p_s\dot q_s\,\mathrm dt.
$$
The orbit is therefore the classical phase space, not merely a label set. Its stabilizer is the kernel of the symplectic form and must be quotiented before quantization.

The Euclidean transition amplitude is
$$
\langle q_f|e^{-\beta\hat{\tilde H}}|q_i\rangle
=\int DqDp\,e^{-\tilde S_E},
\qquad
\tilde S_E=iA+\int\tilde H\,\mathrm dt.
$$
For a bounded real part, $\beta\to\infty$ prepares the lowest state. When the original Hamiltonian has wrong-sign quadratic modes, the paper rotates those modes to a complex contour. This makes the Gaussian convergent at one loop, but it changes the real structure of the integration cycle; it does not turn the original real Hamiltonian into a globally bounded function.

# Cluster II: Virasoro calibration

For a constant representative $b_0$, define
$$
\beta_n=b_0+\frac{cn^2}{48\pi}.
$$
The stabilizer is
$$
\mathfrak{stab}(b_0)=
\begin{cases}
u(1),&\beta_n\ne0\text{ for all }n>0,\\
sl^{(k)}(2,\mathbb R),&\beta_k=0.
\end{cases}
$$
The quadratic symplectic form and charges are
$$
\Omega_{nm}\simeq-4\pi in\beta_n\delta_{n+m,0},
$$
$$
\mathcal L_0\simeq2\pi b_0
+4\pi\sum_{n>0}F_nF_{-n}n^2\beta_n,
\qquad
\mathcal L_k\simeq4\pi ikF_{-k}\beta_k.
$$

For $\beta_n\ne0$, the Darboux variables give
$$
\mathcal L_0=2\pi b_0+\frac12\sum_{n>0}(p_n^2+n^2q_n^2).
$$
Half-line regularity selects
$$
F_{-n}|b_0\rangle=0
\quad\Longleftrightarrow\quad
\mathcal L_n|b_0\rangle=0
\quad(n>0).
$$
Hence
$$
\mathcal H_{b_0}
=\operatorname{span}\{\mathcal L_{-n_1}\cdots\mathcal L_{-n_s}|b_0\rangle\},
$$
and
$$
\chi_{U(1)}(q)
=\frac{q^{2\pi b_0}}{\prod_{n\ge1}(1-q^n)}.
$$

If $\beta_k=0$, the $k$th block is stabilizer data and is removed:
$$
\chi_{SL^{(k)}}(q)
=\frac{q^{2\pi b_0}}
{\prod_{n\ge1,\,n\ne k}(1-q^n)}.
$$
For $k=1$, this is the vacuum module. The important structural point is that stabilizer generators are not discarded after quantization as an ad hoc null relation; their directions were absent from the orbit phase space from the beginning.

# Cluster III: BMS$_3$ orbit data

The centrally extended algebra is
$$
\begin{aligned}
[L_n,L_m]&=(n-m)L_{n+m}+\frac{c_1}{12}n^3\delta_{n+m,0},\\
[L_n,M_m]&=(n-m)M_{n+m}+\frac{c_2}{12}n^3\delta_{n+m,0},\\
[M_n,M_m]&=0.
\end{aligned}
$$
For constant $(j_0,p_0)$, define
$$
\mathcal A_n=j_0+\frac{c_1n^2}{48\pi},
\qquad
\mathcal B_n=p_0+\frac{c_2n^2}{48\pi}.
$$
At a fixed nonzero mode, the stabilizer equations reduce to a linear system with matrix
$$
\begin{pmatrix}
\mathcal B_n&0\\
\mathcal A_n&\mathcal B_n
\end{pmatrix}
$$
acting on the superrotation/supertranslation parameters. This immediately gives the three cases:

| mode condition | nonzero-mode stabilizer directions | physical $k$-block |
|---|---:|---|
| $\mathcal B_n\ne0$ | none | full two-pair block |
| $\mathcal B_k=\mathcal A_k=0$ | two | block removed |
| $\mathcal B_k=0$, $\mathcal A_k\ne0$ | one | one oscillator remains |

For generic modes the symplectic block is
$$
\omega_n=4\pi in
\begin{pmatrix}
\mathcal A_n&\mathcal B_n\\
-\mathcal B_n&0
\end{pmatrix}.
$$
Its inverse gives
$$
\{x_{-n},x_n\}=\frac{i\mathcal A_n}{4\pi n\mathcal B_n^2},
\qquad
\{F_{-n},x_n\}=-\frac{i}{4\pi n\mathcal B_n}.
$$
Two Darboux pairs turn the charges into
$$
\begin{aligned}
M_0&=2\pi p_0+\sum_{n>0}\frac{n^2}{2}
\left[(q_n^{(1)})^2+(q_n^{(2)})^2\right],\\
L_0&=2\pi j_0+\sum_{n>0}nJ_n,\\
J_n&=q_n^{(1)}p_n^{(2)}-q_n^{(2)}p_n^{(1)}.
\end{aligned}
$$
Thus each mode is a two-dimensional zero-mass oscillator/Poincare-particle block with angular potential $\xi$.

# Cluster IV: the three BMS$_3$ modules

## Generic supermomentum

For $\mathcal B_n\ne0$ for every $n>0$,
$$
M_n|j_0,p_0\rangle=0\quad(n\ne0),
$$
$$
L_0|j_0,p_0\rangle=2\pi j_0|j_0,p_0\rangle,
\qquad
M_0|j_0,p_0\rangle=2\pi p_0|j_0,p_0\rangle.
$$
The module is
$$
\operatorname{span}\{L_{n_s}\cdots L_{n_1}|j_0,p_0\rangle:n_i\ne0\},
$$
and the character is
$$
\chi_{\mathrm{gen}}(\beta,\xi)
=\frac{e^{2\pi(i\xi j_0-\beta p_0)}}
{\prod_{n\ge1}|1-e^{in\xi}|^2}.
$$
This is induced from the $U(1)$ little-group representation of weight $2\pi j_0$.

## Exceptional orbit with trivial little-group representation

For $\mathcal B_k=\mathcal A_k=0$,
$$
M_{n\ne0}|j_0,p_0\rangle=0,
\qquad
L_{\pm k}|j_0,p_0\rangle=0.
$$
The module excludes both $L_k$ and $L_{-k}$, and
$$
\chi_{\mathrm{triv},k}
=\frac{e^{2\pi(i\xi j_0-\beta p_0)}}
{\prod_{n\ge1,\,n\ne k}|1-e^{in\xi}|^2}.
$$
For $k=1$ and gravitational $c_1=0$, this is the Minkowski vacuum induced module.

## Exceptional orbit with nontrivial little-group representation

For $\mathcal B_k=0$ but $\mathcal A_k\ne0$, the $k$th two-pair block reduces to one oscillator:
$$
L_0=2\pi j_0+\frac12(p_k^2+k^2q_k^2)+\sum_{n\ne k}nJ_n.
$$
This oscillator enters through the phase rather than the positive real part of the Euclidean action. Half-line regularity alone does not choose its vacuum. The paper chooses the polarization $F_{-k}$ as annihilator, giving
$$
L_k|j_0,p_0\rangle=0,
\qquad
M_{n\ne0}|j_0,p_0\rangle=0,
$$
while $L_{-k}|j_0,p_0\rangle$ survives. The module therefore excludes $L_k$ but includes $L_{-k}$, and
$$
\chi_{\mathrm{nontriv},k}
=\frac{e^{2\pi i\xi j_0+\beta c_2k^2/24}}
{(1-e^{ik\xi})
\prod_{n\ge1,\,n\ne k}|1-e^{in\xi}|^2}.
$$
Choosing the opposite polarization exchanges $k\leftrightarrow-k$.

# Notation dictionary

| symbol | meaning |
|---|---|
| $G$, $\mathscr G$, $\mathscr G^*$ | Lie group, Lie algebra, and dual |
| $b_0$, $W_{b_0}$ | reference coadjoint vector and its orbit |
| $u=\delta g g^{-1}$ | right-invariant Maurer--Cartan form |
| $\Omega_b$, $\alpha_b$ | KK symplectic form and potential |
| $\Phi_v$ | moment-map charge for algebra element $v$ |
| $F_n$ | Fourier modes of the inverse circle diffeomorphism $F=f^{-1}$ |
| $x_n$ | Fourier modes of the supertranslation coordinate |
| $b_0,c$ | Virasoro orbit parameter and central charge |
| $j_0,p_0$ | BMS$_3$ angular supermomentum and supermomentum |
| $c_1,c_2$ | BMS$_3$ central charges |
| $L_n,M_n$ | superrotation and supertranslation charges |
| $\beta_n$ | $b_0+cn^2/(48\pi)$ in the Virasoro sector |
| $\mathcal A_n$ | $j_0+c_1n^2/(48\pi)$ |
| $\mathcal B_n$ | $p_0+c_2n^2/(48\pi)$ |
| $k$ | exceptional positive mode with $\beta_k=0$ or $\mathcal B_k=0$ |
| $\beta$ | Euclidean time length, not the Virasoro coefficient $\beta_n$ |
| $\xi$ | angular chemical potential |

# Equation ledger

| role | equation or construction | later dependency |
|---|---|---|
| orbit phase space | $W_{b_0}=G/\operatorname{Stab}(b_0)$ | removes stabilizer modes |
| symplectic form | $\Omega_b(v,v')=\langle b,[v,v']\rangle$ | Poisson brackets and Darboux variables |
| geometric action | $A=-\int\langle\operatorname{Ad}_g^*b_0,\dot gg^{-1}\rangle dt$ | all path integrals |
| half-line preparation | $\langle q|b_0\rangle=\int_{-\infty}^0DqDp\,e^{-\tilde S_E}$ | annihilation conditions |
| Virasoro degeneracy | $\beta_k=0$ | $SL^{(k)}$ stabilizer and missing oscillator |
| BMS degeneracy | $\mathcal B_k=0$, optionally $\mathcal A_k=0$ | three module classes |
| generic BMS Darboux form | $M_0=2\pi p_0+\sum n^2|q_n|^2/2$ | contour and rest-frame condition |
| regularity | $M_{n\ne0}|j_0,p_0\rangle=0$ | induced modules |
| polarization | choose $F_{-k}$ or $F_k$ as annihilator | nontrivial exceptional module |
| periodic path integral | $t\sim t+\beta$ | character cross-check |

# Derivation map

1. **Fix an orbit.** Choose a constant coadjoint representative and central charges.
2. **Compute the stabilizer.** Solve the infinitesimal coadjoint equations mode by mode.
3. **Build the KK form.** Its kernel agrees with the stabilizer directions.
4. **Delete the kernel.** The orbit measure is the quotient by the stabilizer; missing directions are not quantum oscillators.
5. **Choose Darboux variables.** Each surviving block becomes either a harmonic oscillator or a two-dimensional Poincare-particle block.
6. **Choose a convergent contour.** Wrong-sign Gaussian directions are rotated in the complexified phase space.
7. **Prepare the reference state.** Send the Euclidean interval to a half-line; use regularity for exponentially weighted modes and a separate polarization for pure-phase modes.
8. **Translate to symmetry generators.** The annihilation conditions on $F_n,x_n$ become conditions on $\mathcal L_n$ or $(L_n,M_n)$.
9. **Generate descendants.** Act only with generators not removed by the stabilizer or annihilation conditions.
10. **Compute the character twice.** Count descendants and compare with the periodic path integral.

# Translation to the vault's AdS3 and sewing work

The most reusable lesson is that stabilizer data must survive until the orbit and its symplectic form are identified. Quotienting it prematurely would create spurious descendants; retaining it as a physical oscillator would overcount the module. This is the same structural issue that appears when sewing regional gauge systems: degeneracy directions, proper gauge, and boundary symmetries must be typed before reduction.

For the global-AdS$_3$ vacuum orbit, the $k=1$ Virasoro result is the familiar removal of the $L_{0,\pm1}$ stabilizer directions. The paper's path-integral language makes the same result concrete: the frequency-one oscillator is absent from the orbit phase space, so the vacuum character begins with modes $n\ge2$.

The BMS$_3$ exceptional sectors add a useful refinement. The little group and the full stabilizer need not coincide. When $\mathcal B_k=0$ but $\mathcal A_k\ne0$, the $SL^{(k)}$ little group exists, yet only the supertranslation part lies in the orbit stabilizer. One oscillator remains and its polarization becomes genuine quantization data.

The contour prescription should be recorded as part of the quantization, not as evidence that the original real saddle is stable. The finite one-loop Gaussian is defined on a complex cycle. Whether that cycle belongs in a gravitational integration contour and whether the result is one-loop exact are separate questions.

# Verification log

## Checked

- **Modewise stabilizers:** Sage computed the kernel dimensions of
  $$
  \begin{pmatrix}\mathcal B_n&0\\\mathcal A_n&\mathcal B_n\end{pmatrix}
  $$
  as $0$, $2$, and $1$ for the three cases above.
- **Generic BMS Darboux brackets:** Mathematica independently transformed the source Poisson matrix and obtained
  $$
  \{q_n^{(a)},p_n^{(b)}\}=\delta^{ab},
  \qquad
  \{q_n^{(a)},q_n^{(b)}\}=\{p_n^{(a)},p_n^{(b)}\}=0.
  $$
- **Virasoro character:** Sage reproduced the Euler-product coefficients $p(N)$ through level $10$.
- **Missing-mode character:** for $k=3$, Sage verified through level $10$ that deleting the $k$th oscillator multiplies the generic character by $1-q^3$.
- **Bounded-sector threshold:** from the displayed Darboux variables and $c_2>0$, reality of every generic block requires $\mathcal B_n>0$; since $\mathcal B_n$ increases with $n^2$, this is equivalent to $\mathcal B_1>0$. No algebraic threshold at $1$ occurs.
- **Reality contour:** the paper itself defines a real supertranslation by $x_{-n}=x_n^*$. The printed Eq. (5.28), $x_n^*=x_n$, does not reproduce that condition.

## Failed source details

- PDF page 19, immediately before Eq. (5.28): $\mathcal B_1>1$ should read $\mathcal B_1>0$.
- PDF page 19, Eq. (5.28): $x_n^*=x_n$ should read $x_n^*=x_{-n}$.

Neither typo propagates into the module or character formulas if the intended real contour is used.

## Source-derived

- The perturbative orbit expansions and quadratic geometric actions.
- The normal-ordering arguments that convert coordinate annihilation conditions into generator constraints.
- The second-order relations showing that exceptional stabilizer generators do not create independent states.
- The ultra-relativistic contraction from two Virasoro modules.
- The periodic path-integral character evaluations.

## Assumptions

- Perturbation theory is truncated to the quadratic/one-loop orbit action.
- $c>0$ in the Virasoro contour discussion and $c_2>0$ in the gravitational BMS$_3$ sector.
- The chosen complex contours are admissible integration cycles for the quadratic theory.
- Stabilizer directions are treated as gauge redundancies of the orbit measure.
- Normal-ordering constants are absorbed into renormalized orbit parameters.
- In the $\mathcal B_k=0$, $\mathcal A_k\ne0$ sector, the displayed module uses the polarization with $F_{-k}$ annihilating the reference state.

## Not independently verified

- Global existence and uniqueness of the proposed complex integration cycles beyond the quadratic neighborhood.
- One-loop exactness for the unbounded sectors; the paper explicitly leaves this open.
- Unitarity or a gravitational interpretation of the unbounded-orbit modules.
- Nonconstant BMS$_3$ orbit classification; the paper also restricts its final construction to constant orbits.
- The BMS$_4$ extension suggested in the conclusion.

# Reading verdict

This is worth retaining as a reference for the logic of quantizing asymptotic-symmetry orbits. Its strongest result is not that every unbounded gravitational saddle is acceptable, but that every constant Virasoro or BMS$_3$ orbit has a well-defined **quadratic** module construction after specifying a complex contour and, where necessary, a polarization. For the vault's AdS$_3$ work, the stabilizer-first organization and the separation between orbit geometry, contour choice, and representation type are the most reusable parts.
