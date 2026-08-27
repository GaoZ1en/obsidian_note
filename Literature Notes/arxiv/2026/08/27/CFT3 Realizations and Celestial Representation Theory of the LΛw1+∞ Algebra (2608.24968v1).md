---
paper id: 2608.24968v1
title: "CFT3 Realizations and Celestial Representation Theory of the LΛw1+∞ Algebra"
authors:
  - Bin Zhu
publication date: 2026-08-25T08:33
abstract: |-
  The paper constructs free-scalar and Dirac one-particle realizations of a three-family light-ray sector of the LΛw1+∞ algebra, studies the corresponding leading and pairwise finite-N statements in the critical O(N) model, and develops a nonzero-curvature celestial hard-graviton module with a Delta=3 raising polarization, quadratic Casimir, and conditional null-decoupling equations.
comments: ""
url: https://arxiv.org/abs/2608.24968v1
summary: "The free-field and low-spin algebraic constructions pass independent checks, while the finite-N result is explicitly only a regulated pairwise correlator statement and the projected Delta=3 conditions do not define a full-algebra quotient."
tags: []
---

See the daily placement and audit in [[2026_08_27_overview]].

# Verdict

**Correct under the following precise conditions:** the free-field generators act on the stated normal-ordered wave-packet domain with the longitudinal zero mode excluded until the regulator is removed; the critical $O(N)$ conclusion at large but finite $N$ is restricted to the regulated pairwise correlators and frequency moments actually computed; the projected celestial conditions are treated as mode-by-mode statements rather than a quotient of the full algebra; and the Ward equations are conditional on the existence of dimension-completed correlators with an invariant vacuum and the assumed low-spin Ward identities.

Independent algebra checks reproduce all six one-particle light-ray commutators, all Jacobi identities of the ten-generator low-spin algebra, the stated Killing form, the four-dimensional nilpotent raising algebra, and the cancellation giving the quadratic Casimir eigenvalue three. The paper is unusually careful about its main limitation: its finite-$N$ analysis does not establish a regulator-independent nested operator algebra or an oscillator action on the collective $sigma$ sector.

# How to read this paper

1. Read Secs. 2--3 as the microscopic benchmark. The scalar and fermion theories have different local fields and statistics but reduce to the same half-density one-particle kernels.
2. In Sec. 4, separate three claims: exact closure of the leading fundamental-field Fock representation, universal coefficients in selected regulated pairwise correlators at large but finite $N$, and the unproved stronger claim of a full interacting operator representation. Only the first two are established.
3. In Sec. 5.1, keep the word "projected" attached to the uniqueness of $Delta=3$. The discarded global-null subspace is not invariant under the deformed translations, so these conditions do not define a full-algebra quotient.
4. In Secs. 5.2--5.3, the exact object is instead the unrestricted raising polarization
   $$
   \mathfrak n_R=\operatorname{span}\{L_1,\bar L_1,P_{-,+},P_{+,+}\}.
   $$
   Its closure, Casimir, and conditional Ward equations are the reusable representation-theoretic content.

# Complete source map

## 1. Introduction

- States the three layers of the paper: free CFT realizations, the critical $O(N)$ comparison, and a celestial representation of the same ambient algebra.
- Announces the finite-$N$ pairwise scope and the curved $Delta=3$ polarization.

## 2. Universal light-ray algebra

- Defines complete-null-line moments of $T_{++}$ and $T_{+y}$ on a transverse line.
- Smears the local Cordova--Shao commutators with compactly supported test functions.
- Pushes the transverse line to an algebraic circle without identifying that coordinate compactification with the full conformal map to the Einstein cylinder.
- Obtains the six mode brackets
  $$
  [E_k,E_l]=[K_k,K_l]=0,
  \qquad [K_k,E_l]=-iE_{k+l},
  $$
  $$
  [N_k,E_l]=-lE_{k+l},
  \qquad [N_k,K_l]=-lK_{k+l},
  \qquad [N_k,N_l]=(k-l)N_{k+l}.
  $$
- Embeds these three families in $\mathcal L_{\Lambda}w_{1+\infty}$ at the physical value $\Lambda=-1$.

## 3. Free-field realizations

### 3.1 Conformal scalar

- Reduces the improved scalar stress tensor on the null sheet.
- Shows that improvement terms are complete null derivatives on the chosen wave-packet domain.
- Derives the one-particle kernels
  $$
  \widehat E_k=z^kp,
  \qquad
  \widehat K_k=-iz^k\left(p\partial_p+\frac12\right),
  \qquad
  \widehat N_k=-z^{k+1}\partial_z-\frac{k}{2}z^k.
  $$
- Lifts their commutators to normal-ordered bosonic bilinears without a central term on that domain.

### 3.2 Dirac fermion

- Solves the light-front constraint for a complex two-component Dirac field.
- Retains both terms of $T_{+y}$ and obtains the same one-particle half-density kernels for particles and antiparticles.
- Uses the even-CAR bilinear identity to lift the kernel algebra to Fock space.
- Explains why the local density contact term vanishes as an operator-valued distribution after the arguments are identified.

## 4. Critical $O(N)$ model

### 4.1 Leading representation

- Sums the free-scalar kernels over $N$ flavors.
- Establishes exact leading closure on the fundamental-field Fock space and its singlet subspace.
- Explicitly does not identify this space with the full critical singlet Hilbert space containing the collective primary $\sigma$.

### 4.2 Finite-$N$ correlator algebra

- Regulates the two null sheets, takes frequency moments, removes the sheet regulator, and only then expands in $1/N$.
- Finds the universal pairwise $EE$, $KE$, and $KK$ coefficients in the correlators studied.
- Retains anomalous dimensions and collective-field data in matrix elements rather than promoting the pairwise result to a corrected oscillator algebra.
- Warns that a term vanishing in the first detector limit can survive inside a nested commutator, so pairwise closure does not prove Jacobi for an interacting operator algebra.

## 5. Celestial hard-graviton module

### 5.1 Projected adjacent-mode conditions

- Uses the $\mathcal L_{\Lambda}w_{1+\infty}$ action on positive-helicity hard primaries $G^+_\Delta$.
- Classifies exceptional dimensions after quotienting only by global conformal nulls.
- The $p=3/2$ family leaves $\Delta=-1,3$ after projection; a $p=2$ mode removes $\Delta=-1$, leaving $\Delta=3$.
- Demonstrates that the discarded null space is not translation-invariant. The projected result is therefore not a shortening quotient of the full noncommuting translation algebra.

### 5.2 Closed raising polarization

- Identifies the exact translation annihilator of $G^+_3$ and closes it with the global raising modes:
  $$
  [L_1,P_{-,+}]=P_{+,+},
  \qquad
  [P_{-,+},P_{+,+}]=-\frac{\Lambda}{2}\bar L_1.
  $$
- Shows that this four-dimensional algebra is nilpotent and annihilates $G^+_3$ without projection.
- Proves that an alternative state annihilated by three positive translations cannot be nonzero at fixed $\Lambda\neq0$, or in a $\Lambda$-torsion-free formal module.
- Gives recursive translation actions on global descendants and reports a level-two symbolic covariance check.

### 5.3 Quadratic Casimir and null-decoupling equations

- Computes the nondegenerate Killing form of the ten-generator algebra for $\Lambda\neq0$.
- Constructs
  $$
  \begin{aligned}
  \mathcal C_2={}&L_0^2-\frac12\{L_{-1},L_1\}
  +\bar L_0^2-\frac12\{\bar L_{-1},\bar L_1\}\\
  &+\frac1\Lambda\left(\{P_{-,+},P_{+,-}\}
  -\{P_{-,-},P_{+,+}\}\right).
  \end{aligned}
  $$
- Shows that the translation and Lorentz pieces add to three on every $G^+_\Delta$ in the dimension-completed hard module.
- Transports the two exact origin annihilators to a generic insertion and derives two compatible differential-difference Ward equations.
- Makes their logical status conditional on the existence and global invariance of the correlators to which they are applied.

## 6. Conclusions

- Separates the exact free realization, leading critical representation, finite-$N$ pairwise result, and celestial module.
- Proposes ABJM as a concrete interacting setting but derives no bulk realization.
- Marks the possible relation to finite flat compactification regions as speculative.

## Appendix A. Canonical reductions and normalization

- Records scalar and fermion null-mode reductions, delta-function contact terms, endpoint identities, CAR/CCR bilinear lifts, and the critical-$O(N)$ bubble normalization.
- Gives representative one-particle commutator and Jacobi checks.

## Appendix B. Regulator and smearing prescriptions

- Fixes compact-support transverse smearings, wave-packet null endpoints, and the line-to-circle domain.
- States the ordered finite-$N$ limit
  $$
  \text{regulated correlator}
  \longrightarrow \text{frequency moments}
  \longrightarrow \epsilon\to0^+
  \longrightarrow N^{-1}\text{ expansion}.
  $$
- Explains why pairwise detector limits cannot be exchanged with nested commutators.

# Algebraic reconstruction

The one-particle kernels act on a test function $\psi(p,z)$. The half-density terms are essential. For example,

$$
[\widehat K_k,\widehat E_l]\psi=-i\widehat E_{k+l}\psi
$$

because $p\partial_p$ differentiates the extra factor of $p$, while

$$
[\widehat N_k,\widehat E_l]\psi=-l\widehat E_{k+l}\psi
$$

because the $-k/2$ connection cancels between the two orderings. The same cancellation is required for

$$
[\widehat N_k,\widehat N_l]=(k-l)\widehat N_{k+l}.
$$

Second quantization then yields the charge algebra only after fixing the operator domain. In particular, the no-central-term statement is not a purely formal property of all bilinears; it uses normal ordering, sufficient decay, and the exclusion of $p=0$ until the regulator is removed.

# Low-spin algebra and exact polarization

With $a,b,c,d\in\{-\tfrac12,\tfrac12\}$, the translation brackets are

$$
[P_{a,b},P_{c,d}]
=\Lambda b\,\delta_{b,-d}L_{a+c}
+\Lambda a\,\delta_{a,-c}\bar L_{b+d}.
$$

Together with the two commuting global $\mathfrak{sl}_2$ algebras and their spinor action on $P_{a,b}$, this is a ten-dimensional constant-curvature algebra. Its Killing determinant is proportional to $\Lambda^4$, so the inverse-Killing Casimir exists only for $\Lambda\neq0$.

At $\Delta=3$, the exact raising algebra has lower-central series

$$
\mathfrak n_R
\supset [\mathfrak n_R,\mathfrak n_R]
=\operatorname{span}\{P_{+,+},\bar L_1\}
\supset [\mathfrak n_R,[\mathfrak n_R,\mathfrak n_R]]
=\operatorname{span}\{\bar L_1\}
\supset0.
$$

This exact statement is stronger and cleaner than the projected adjacent-mode classification. Conversely, it is weaker than annihilation by every positive translation; the latter is obstructed by the noncommuting translation pair.

# Casimir check

On $G^+_\Delta$, the Lorentz part contributes

$$
\frac{\Delta^2-2\Delta+4}{2},
$$

while the translation anticommutators contribute

$$
\frac{-\Delta^2+2\Delta+2}{2}.
$$

The dimension-dependent terms cancel:

$$
\mathcal C_2G^+_\Delta=3G^+_\Delta.
$$

This does not say that every Lorentz primary is a separate ten-generator highest-weight module with energy $E_0=\Delta$. The deformed translations shift $\Delta$ and link these primaries inside one dimension-completed module. The common Casimir is the central character inherited from the $G^+_3$ highest-weight point.

# Finite-N boundary

The paper's finite-$N$ result has the following exact scope:

| layer | established object | status |
|---|---|---|
| $N=\infty$ leading fundamental sector | flavor-summed oscillator representation | exact on the stated Fock domain |
| large but finite $N$ | selected regulated pairwise correlators after ordered moments | coefficients reproduced |
| collective $\sigma$ sector | state dimensions and correlator data | retained as matrix-element information |
| nested operator algebra | regulator-independent commutators and Jacobi | not established |

The last line is not a minor technicality. Terms suppressed as $\epsilon^{(\tau-1)/2}$ in one commutator can meet an inverse power in a second commutator and contribute finitely to regulated Jacobi relations. A pairwise limit therefore cannot be substituted into a nested commutator.

# Equation ledger and derivation map

| source equation(s) | input | output | later use |
|---|---|---|---|
| (2.1)--(2.5) | null moments and local commutators | smeared algebra | line-domain definition |
| (2.6)--(2.11) | algebraic circle push-forward | mode algebra and $\Lambda=-1$ embedding | free realizations |
| (3.4)--(3.9) | scalar null reduction | half-density kernels and bilinear lift | microscopic benchmark |
| (3.12)--(3.18) | fermion light-front constraint and CAR | identical one-particle kernels | statistics comparison |
| (4.4)--(4.5) | leading critical stress tensor | flavor-summed representation | $N=\infty$ closure |
| (4.6)--(4.16) | separated sheets and frequency moments | pairwise large-finite-$N$ coefficients | bounded interacting claim |
| (5.17)--(5.30) | deformed hard-primary actions | projected $\Delta=3$ selection and quotient failure | representation boundary |
| (5.31)--(5.36) | exact translation annihilators | nilpotent raising polarization and recursion | unrestricted module |
| (5.37)--(5.44) | Killing form and origin actions | Casimir eigenvalue three | central character |
| (5.45)--(5.51) | transported annihilators | conditional differential-difference equations | celestial bootstrap proposal |
| (B.1)--(B.7) | compact supports and ordered limits | regulator prescription | claim boundary |

# Translation into current project language

- The wave-packet and sheet-separation prescriptions are part of the definition of the finite observables. Removing them before forming the relevant matrix elements changes the mathematical object.
- A pairwise correlator identity is not an operator-algebra theorem. In particular, it does not fix a continuum modular algebra, a Hilbert-space factorization, or a nested reconstruction map.
- The projected celestial null conditions resemble a quotient only mode by mode. The explicit translation that maps a discarded global null back to $G^+_3$ is the decisive obstruction.
- The exact nilpotent polarization is an intrinsic algebraic statement at nonzero $\Lambda$ and is therefore the safest item to reuse.
- The Ward equations inherit an existence assumption for dimension-completed correlators; they are constraints on such correlators, not a proof that the correlators exist.

# Verification log

## Checked

- **Mathematica, exact differential-operator algebra:** all six residuals for the kernels $\widehat E_k$, $\widehat K_k$, and $\widehat N_k$ vanish on a generic monomial $p^az^b$.
- **Sage, exact structure constants:** all Jacobi residuals vanish for every unordered triple of the ten low-spin generators.
- **Sage, adjoint Killing form:** reproduced the six independent nonzero entries in Eq. (5.38) and obtained determinant $944784\Lambda^4$, confirming nondegeneracy precisely for $\Lambda\neq0$.
- **Sage, raising polarization:** reproduced the only nonzero brackets $[L_1,P_{-,+}]=P_{+,+}$ and $[P_{-,+},P_{+,+}]=-\Lambda\bar L_1/2$, including nilpotent closure.
- **Mathematica, Casimir algebra:** the Lorentz and translation eigenvalue pieces sum to three with zero symbolic residual for generic $\Delta$.
- **Mathematica, projected norm normalization:** reproduced $\|w^{3/2}_{1/2,-1/2}G^+_4\|^2=5\Lambda^2\|G^+_3\|^2/4$ from the $SL(2)$ descendant norm.
- **Rendered PDF and TeX comparison:** visually confirmed the circle-mode algebra, critical-$O(N)$ scope, projected exceptional-dimension argument, Killing form/Casimir, canonical half-density terms, and regulator order on PDF pages 5, 10, 15, 18, 23, and 26.

## Source-derived

- The null-stress-tensor reduction from the local scalar and fermion actions, beyond the independently checked reduced kernels.
- The finite-$N$ frequency-flow correlators, hypergeometric kernel, and detector-limit scaling imported from the cited light-ray framework.
- The residue identities giving the full adjacent-mode projected classification and the detailed hard-primary translation actions.
- The existence and covariance of the proposed dimension-completed celestial hard module beyond the tested structure constants and displayed Casimir pieces.

## Blocked

- A regulator-independent finite-$N$ operator algebra is not present in the source and cannot be inferred from its pairwise correlators; nested detector limits require additional $TTT$, $TT\sigma$, and higher-singlet data.
- The official source contains no executable notebook for the reported 270 level-two representation identities. The underlying ten-generator Lie algebra was checked independently, but the full descendant recursion was not reimplemented.
- No dimension-completed celestial correlator is constructed, so the differential-difference equations could not be tested on a nontrivial solution.

## Failed

- None in the executed algebraic checks.

## Not independently verified

- The critical-$O(N)$ normalization and all subleading correlator coefficients.
- The complete mode-by-mode residue proof for all $p\geq3/2$.
- The proposed ABJM realization and any string- or M-theory interpretation.

# Bottom line for current projects

The paper supplies two reusable exact objects: the half-density one-particle realization of the three-family light-ray algebra and the nonzero-curvature nilpotent polarization annihilating $G^+_3$. Its strongest methodological value is the boundary it draws around the interacting claim. The regulated finite-$N$ calculation supports universal pairwise coefficients, but it does not establish a full operator algebra; likewise, projected global nulls select $\Delta=3$ without defining a translation-invariant quotient.
