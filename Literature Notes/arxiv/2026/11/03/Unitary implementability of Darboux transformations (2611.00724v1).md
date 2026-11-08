---
paper id: 2611.00724v1
title: Unitary implementability of Darboux transformations
authors:
  - Guillermo A. Mena Marugán
  - Alvaro Torres-Caballeros
  - José Velhinho
publication date: 2026-10-31T07:59:22
abstract: |-
  The source investigates whether canonical Darboux maps of nonrotating black-hole perturbations are unitarily implementable after summing Fourier and angular modes. It uses oscillator-adapted gauge invariants, derives a Bogoliubov criterion, compares their preferred Fock representation with naive CPM massless representations, and exhibits implementable canonical transformations outside the Darboux family.
comments: "16 PDF pages including references"
url: https://arxiv.org/abs/2611.00724v1
summary: "A mode-by-mode canonical equivalence needs a degeneracy-weighted Hilbert-Schmidt bound before it becomes a quantum equivalence; the source's main sufficient bound survives several literal sign defects."
tags: []
---

# Darboux equivalence after the full mode sum

**Correct under precise conditions:** the real canonical Darboux map is implementable in the chosen interior oscillator-adapted Fock representation when the background and its needed derivatives remain regular, the mode-dependent rescalings are uniformly positive and bounded, the Riccati branch admits the stated uniform asymptotic expansion, and the sufficient growth condition is a positive power law \(c_l\asymp l^p\) with \(p>5\). This is not a theorem that arbitrary classical master-field changes, AdS boundary problems, or exterior quasinormal-mode isospectralities produce equivalent quantum theories.

Immediate use: in scalar/Dirac/Proca or metric spectrum recovery, carry the canonical map and complex structure along with the mode equation. A formally invertible transformation on each finite truncation need not admit an implementer after the regulator is removed.

The exposition is **Source-derived** except where **Checked** is stated. The entire main text was read in pinned TeX and PDF text; PDF pages 8, 11 and 12 were rendered and visually checked for the decisive signs and growth condition. There are no appendices.

## Section tree and reading guide

| Source | Purpose and dependency |
|---|---|
| I | Distinguishes classical Darboux isospectrality from quantum equivalence after all angular momenta are included. |
| II.A | Kantowski-Sachs interior, background symplectic normalization and compactification regulator. |
| II.B | Gauge-invariant gravitational perturbations and axial GS Hamiltonian, excluding nonradiative low harmonics. |
| II.C | Mode-dependent canonical rescaling to variables admitting the preferred unitary dynamics. |
| II.D | GS-to-CPM map, Riccati equation and canonical Darboux matrix. |
| III | Complex structure, massless annihilation variables and Shale's Hilbert-Schmidt criterion. |
| IV.A | Degeneracy-weighted double-series bounds. This is the essential quantum step. |
| IV.B | Why selecting a massless representation after changing canonical variables is a different operation. |
| V | A small diagonal squeeze is implementable but is not a single Darboux map. |
| VI | Scope for effective interior backgrounds and the unproved exterior continuation. |

Read II.C–IV.A first for the reusable map and ultraviolet criterion. II.A–B fixes normalizations; IV.B and V delimit the conclusion. VI's proposed exterior extension is not an additional proved theorem.

## Interior action, mode regulators and canonical normalization

The background metric and brackets are

$$
ds^2=-\mathcal N^2\frac{p_b^2}{L_0^2}|p_c|\,d\chi^2
 +\frac{p_b^2}{L_0^2|p_c|}\,d\zeta^2+|p_c|d\Omega_2^2,
\qquad \{b,p_b\}=1,\quad\{c,p_c\}=2.
$$

Here \(\zeta\sim\zeta+L_0\) is a spatial infrared regulator, \(\chi\) is interior time, and \(\mathcal N\) is the densitized lapse used by the source. With \(\Omega_a=ap_a/L_0\),

$$
\mathscr H[\mathcal N]=-\frac{\mathcal NL_0}{2}
 \left(\Omega_b^2+2\Omega_b\Omega_c+p_b^2/L_0^2\right).
$$

The unit-lapse Hamiltonian time is \(\tau\); primes below mean \(d/d\tau\), while dots in the Riccati discussion mean \(d/d\tau_*\), with \(d\tau_*=|p_c|d\tau\). Do not interchange these clocks.

At quadratic perturbative order the radiative modes have \(\mathfrak n=(n,l,m)\), \(l\ge2\), \(-l\le m\le l\), and Fourier frequency \(\omega_n=2\pi|n|/L_0\). The source separates the zero and nonradiative sectors. Retain a finite \(|n|\le N\), \(2\le l\le L\) before discussing \(N,L\to\infty\); \(L_0\) remains finite throughout the theorem. No decompactification limit is proved.

The gauge-invariant axial Gerlach-Sengupta pairs obey
\(\{\phi^{GS}_{\mathfrak n},\Pi^{GS}_{\breve{\mathfrak n}}\}=\kappa\delta_{\mathfrak n\breve{\mathfrak n}}\), \(\kappa=16\pi\), and

$$
H_{GS}=\frac1{2\kappa}\sum_{\mathfrak n}
 \left[(\Pi^{GS}_{\mathfrak n})^2+
 \left(\omega_n^2p_c^2+l(l+1)\frac{p_b^2}{L_0^2}+\mathscr s^{ax}\right)
 (\phi^{GS}_{\mathfrak n})^2\right],
$$

$$
\mathscr s^{ax}=6\Omega_b\Omega_c+
 \frac{|p_c|''}{2|p_c|}-\frac{3(|p_c|')^2}{4|p_c|^2}.
$$

The construction of these reduced pairs from the full metric constraints is inherited from cited prior work; it is not rederived by this paper or independently tensor-verified here. Background-dependent transformations require quadratic corrections to background zero modes at the same truncation order; freezing the background is a subsequent approximation.

## Oscillator-adapted GS variables

Write

$$
k^2=\omega_n^2+l(l+1),\qquad
\hat l=\frac{\sqrt{l(l+1)}}k,\qquad
b_{\hat l}^2=(1-\hat l^2)p_c^2+\hat l^2p_b^2/L_0^2.
$$

For brevity set \(b_*=b_{\hat l}/|p_c|\). This star is the paper's decoration, not complex conjugation. Positivity and uniform bounds in \(\hat l\) hold on a regular interior time slice with both metric coefficients nonzero; they cannot simply be extended to a horizon or singularity.

The first canonical map is

$$
R_{\hat l}=\begin{pmatrix}
 \sqrt{b_{\hat l}}&0\\
 b_{\hat l}'/(2b_{\hat l}^{3/2})&1/\sqrt{b_{\hat l}}
\end{pmatrix},\qquad
\binom{\tilde\phi^{GS}}{\tilde\Pi^{GS}}=R_{\hat l}\binom{\phi^{GS}}{\Pi^{GS}}.
$$

Accounting for its time dependence gives

$$
\tilde H_{GS}=\frac1{2\kappa}\sum_{\mathfrak n}b_{\hat l}
 \left[(\tilde\Pi^{GS})^2+(k^2+s^{ax}_{\hat l})(\tilde\phi^{GS})^2\right],
$$

$$
s^{ax}_{\hat l}=\frac{3(b_{\hat l}')^2}{4b_{\hat l}^4}
 -\frac{b_{\hat l}''}{2b_{\hat l}^3}
 +\frac{\mathscr s^{ax}}{b_{\hat l}^2}.
$$

**Checked:** Mathematica reproduces this equation using the transformed evolution matrix \(R'R^{-1}+RAR^{-1}\), not merely by substituting into the old Hamiltonian. The \(b'\) and \(b''\) terms are essential.

The preferred representation is selected by invariance under the background symmetries and unitary Heisenberg dynamics in these variables. Its uniqueness up to unitary equivalence is a prior theorem cited by the source; the complete analytic hypotheses of that theorem have not been reconstructed here.

## CPM variables, Darboux normalization and the sign conflict

Let \(P=|p_c|>0\). The GS-to-CPM matrix is

$$
S=\begin{pmatrix}\sqrt P&0\\P'/(2P^{3/2})&1/\sqrt P\end{pmatrix}.
$$

The CPM Hamiltonian in tortoise time is proportional to
\((\Pi^{CPM})^2+(\omega_n^2-V_l)(\phi^{CPM})^2\), with

$$
V_l=-\frac{l(l+1)p_b^2/L_0^2+6\Omega_b\Omega_c}{p_c^2}.
$$

On Schwarzschild this is the usual exterior Regge-Wheeler expression, but the Hamiltonian discussion here is in the interior. Set

$$
\dot g_l-g_l^2+V_l+c_l=0,\qquad v_l=V_l+2\dot g_l,
$$

$$
D_{nl}=-\frac1{\sqrt{\omega_n^2+c_l}}
 \begin{pmatrix}g_l&1\\g_l^2-\omega_n^2-c_l&g_l\end{pmatrix}.
$$

Real canonical variables require \(\omega_n^2+c_l>0\), with exceptional/factorization modes treated separately. They cannot be removed by dividing by a zero normalization.

**Checked:** \(D J_2D^T=J_2\), \(J_2=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)\), and
\(\dot D+DA_V-A_vD=0\) for \(A_V=\left(\begin{smallmatrix}0&1\\V_l-\omega_n^2&0\end{smallmatrix}\right)\), after imposing the Riccati equation.

**Failed, literal source statement:** page 8 instead introduces \(L=\partial_*^2+\omega_n^2+V_l\), \(\tilde L=\partial_*^2+\omega_n^2+v_l\), while keeping the displayed Riccati equation and \(v_l=V_l+2\dot g_l\). Expanding \(\tilde L(\partial_*+g_l)-(\partial_*+g_l)L\) gives

$$
4\dot g_l\partial_*+\ddot g_l+2g_l\dot g_l-\dot V_l,
$$

which is not zero in general. With the **minus-potential** operators dictated by the Hamiltonian, the residual is multiplication by \(\ddot g_l-2g_l\dot g_l+\dot V_l\), the derivative of the Riccati equation, and vanishes. This fixes the convention for the reconstructed argument; the conflicting source wording is not silently adopted.

## Conjugated map and Bogoliubov coefficient

The Darboux map in oscillator-adapted coordinates is
\(B_{nl}=(RS^{-1})D_{nl}(RS^{-1})^{-1}\). Define

$$
\mathcal G_{\hat l}=\frac{b_*'}{2P b_*^{3/2}},\qquad
\mathcal D_{nl}=\frac{g_l^2-\omega_n^2-c_l}{b_*}-\mathcal G_{\hat l}^2.
$$

Then

$$
B_{nl}=-\frac1{\sqrt{\omega_n^2+c_l}}
 \begin{pmatrix}
 g_l-\mathcal G_{\hat l}\sqrt{b_*}&b_*\\
 \mathcal D_{nl}&g_l+\mathcal G_{\hat l}\sqrt{b_*}
 \end{pmatrix}.
$$

Choose \(a=\sqrt{k/2}\,\tilde\phi+i\tilde\Pi/\sqrt{2k}\). With the paper's \(\kappa\)-normalized brackets, rescale the quantum oscillators by \(\sqrt\kappa\) if using \([\hat a,\hat a^\dagger]=1\); this common rescaling does not change \(\alpha,\beta\). The antilinear coefficient is

$$
\beta_{nl}=\frac1{\sqrt{\omega_n^2+c_l}}
 \left[\mathcal G_{\hat l}\sqrt{b_*}
 -\frac i2\left(kb_*+\frac{\mathcal D_{nl}}k\right)\right].
$$

**Checked:** direct matrix multiplication reproduces both \(B\) and this coefficient exactly. Its denominator and degeneracy must remain in the full test

$$
\lim_{N,L\to\infty}\sum_{|n|\le N}\sum_{l=2}^{L}(2l+1)|\beta_{nl}|^2<\infty.
$$

The theorem is a field-theoretic Hilbert-Schmidt condition, not positivity of a finite oscillator matrix or equality of frequencies.

## Uniform large-mode estimates and the actual sufficient exponent

The source chooses a regular Riccati branch with
\(g_l=\sqrt{c_l}+V_l/(2\sqrt{c_l})+\cdots\), \(V_l=O(l^2)\), and permits differentiating its asymptotic expansion in \(\tau_*\). This is an assumption on the selected branch and remainder, not a property of every Riccati solution merely because \(c_l\) is large. Assume \(c_l\asymp C l^p\), \(C>0\), \(p>5\), and uniform background/derivative bounds on the chosen time interval.

The source controls the squared coefficient by two positive model sums, after bounded factors and fixed \(L_0\) constants:

$$
S_1=\sum_{n,l}\frac l{n^2+l^p},\qquad
S_2=\sum_{n,l}\frac{l^5}{(n^2+l^p)(n^2+l^2)}.
$$

An independent comparison makes their conditions explicit. For \(a>0\),

$$
\sum_{n\in\mathbb Z}\frac1{n^2+a^2}=\frac\pi a\coth(\pi a),\qquad
\int_{-\infty}^{\infty}\frac{dx}{(x^2+a^2)(x^2+b^2)}
 =\frac\pi{ab(a+b)}.
$$

**Checked:** Mathematica reproduces both identities. Since these integrands decrease with \(|x|\), the sum is bounded by its zero mode plus the integral. Thus \(S_1\) has large-\(l\) integral contribution \(O(l^{1-p/2})\) and converges for \(p>4\). For \(S_2\), the integral contribution is

$$
\frac{\pi l^5}{l^{2+p/2}+l^{1+p}}=O(l^{4-p})\quad(p>2),
$$

and the zero-mode term is \(l^{3-p}\). Hence the source's sufficient proof works for **\(p>5\)**. This derives the degeneracy-weighted result without its informal reindexing by radial lattice spacings.

The paragraph after source Eq. (4.4) calls the first denominator factor smaller than its value at \(n=0\); the inequality is reversed. The upper bound it subsequently uses is nevertheless the correct one. Section VI also loosely says order five or higher; the proved estimate does not include \(p=5\). Its coarse \(S_2\) bound is logarithmically divergent there, so this argument is insufficient at the endpoint; that does not prove the exact \(\beta\) sequence diverges.

For the Chandrasekhar example the stated \(c_l=O(l^8)\) satisfies the safe sufficient bound. No claim about an arbitrary effective trajectory or singularity crossing follows without uniform assumptions. No bound uniform in \(L_0\to\infty\) was obtained.

## Changing variables versus selecting a fresh massless vacuum

Now compare the CPM mass-\(M\) representation, with \(w=\sqrt{k^2+M^2}\), to the oscillator-adapted massless one. The inverse transport matrix is

$$
SR^{-1}=\begin{pmatrix}b_*^{-1/2}&0\\-\mathcal G_{\hat l}&b_*^{1/2}\end{pmatrix}.
$$

**Checked:** the \((1,2)\) entry of \(F_wSR^{-1}F_k^{-1}\) is

$$
\beta^{M}_{nl}=-\frac{\sqrt{b_*}}2\sqrt{\frac kw}
 +\frac1{2\sqrt{b_*}}\sqrt{\frac wk}
 -\frac{i\mathcal G_{\hat l}}{2\sqrt{kw}}.
$$

**Failed, literal Eq. (4.7):** its real part has the opposite sign under the matrices and annihilation convention explicitly fixed in Eqs. (4.5)–(4.6). The squared real part in Eq. (4.8) is unchanged; Mathematica reproduces that squared expression. Therefore this local sign defect does not invalidate the generic Hilbert-Schmidt obstruction.

The obstruction needs a nontrivial rescaling or shear. For example, along \(n=0,l\to\infty\), if \(b_*\ne1\), the real part tends to a nonzero constant and the degeneracy-weighted series diverges. If \(b_*=1\) on the slice but \(\mathcal G\ne0\) there, its imaginary part can yield the harmonic divergence \(\sum_l(2l+1)/k^2\). In the exceptional static isotropic case \(b_*\equiv1\), \(\mathcal G\equiv0\), \(M=0\), the map is the identity and \(\beta^0=0\) exactly. **Checked:** this is an explicit algebraic exception to an unqualified inequivalence claim over all continuous effective backgrounds. Constant mass shifts in this exceptional case have \(\beta=O(k^{-2})\), rather than a constant ultraviolet tail.

This qualification does not establish that the exceptional background solves the vacuum Schwarzschild equations; it identifies the extra nontrivial-background condition needed when extending the assertion beyond that classical setting. For the intended nontrivial interior background, transport the selected complex structure; do not independently declare the CPM coordinates to have a new naive massless vacuum.

## Implementable maps outside a single Darboux transformation

Section V chooses

$$
T_{nl}=\operatorname{diag}(\sigma_{nl},\sigma_{nl}^{-1}),\qquad
\sigma_{nl}=1+\Upsilon_{nl}k^{-\varepsilon},\quad
|\Upsilon_{nl}|\le1,\quad\varepsilon>3/2.
$$

For \(l\ge2\), \(k\ge\sqrt6\), so these assumptions also prevent \(\sigma=0\). Its Bogoliubov coefficient is exactly
\(\mathring\beta=(\sigma-\sigma^{-1})/2\), independently reproduced by Mathematica. Therefore \(|\mathring\beta|^2=O(k^{-2\varepsilon})\). Dyadic shells \(K\le k<2K\) carry \(O(K^3)\) modes including \(m\); their total is bounded by a geometric series in \(K^{3-2\varepsilon}\). This proves convergence for \(\varepsilon>3/2\) without assuming a bounded spacing/density for the distinct square-root radial labels.

A nontrivial diagonal \(T\) is not a single finite normalized Darboux map: the latter has nonzero upper-right entry \(-b_*/\sqrt{\omega_n^2+c_l}\). This does not prove that compositions or limits of Darboux transformations cannot approximate it; that stronger group-generation question is not addressed.

## Dependency ledger and transfer to AdS/CPS work

| Dependency | Reusable object | Boundary of transfer |
|---|---|---|
| Gauge reduction → GS pairs | Radiative canonical coordinates with explicit bracket | Full constraint reduction is cited prior work. |
| Time-dependent \(R\) → oscillator Hamiltonian | Normalization and derivative-induced mass | Must be recomputed for a different background or boundary domain. |
| \(S,D\) → \(B\) | Canonical master-field map | Retain the normalization and exceptional kernels. |
| \(F_kBF_k^{-1}\) → \(\beta\) | Complex-structure transport | A classical symplectic map is not yet a unitary map. |
| Uniform Riccati branch + \(p>5\) → Hilbert-Schmidt bound | Full degeneracy-weighted ultraviolet criterion | No horizon, decompactification, AdS wall or interacting limit is proved. |
| Small diagonal squeeze → equivalent Fock description | Implementable freedom outside single DTs | Not a classification of all canonical transformations. |

For the vault's AdS programme, the analogue is to derive the reduced symplectic form first, normalize constrained modes, specify admissible boundary conditions, and only then test the infinite-mode canonical map in the selected one-particle norm. Equality of response poles or separated ODEs cannot replace this step.

## Verification boundary

**Verified:** finite-mode symplectic identity; full \(RS^{-1}\) conjugation; time-dependent oscillator Hamiltonian; Darboux evolution-matrix identity with the Riccati equation; antilinear coefficient; corrected mass-representation coefficient; Eq. (4.8) modulus; reciprocal-quadratic sum and integral; diagonal-squeeze coefficient; independent lattice comparison proofs with full angular degeneracy.

**Assumptions:** finite \(L_0>0\); \(l\ge2\); real positive normalizations; regular compact interior time intervals; bounded needed background derivatives; a uniform differentiable Riccati branch; \(c_l\asymp C l^p\), \(C>0\), \(p>5\) for the source's sufficient DT proof; \(\varepsilon>3/2\) for the explicit squeeze. Cutoffs \(N,L\) are removed only after these bounds.

**Failed:** literal plus-potential intertwining statement on PDF page 8; real-part sign in Eq. (4.7) under its stated matrices. The reversed inequality wording near Eq. (4.4) is recorded separately; its intended bound is recoverable. Endpoint exponent five and arbitrary-background inequivalence need the stated restrictions.

**Blocked:** no retrieval or computation-service obstruction. An initial tool-call string contained a JavaScript backtick and failed before any CAS ran; the corrected call executed successfully. The exterior Fock continuation is explicitly deferred by the paper; neither it nor a uniform horizon/decompactification argument is supplied here.

**Not verified:** full metric-to-GS constraint reduction, general Fock-uniqueness theorem of the cited earlier papers, arbitrary Riccati-branch existence, a complete effective-background classification, exterior QNM boundary-condition preservation, and an interacting/AdS quantum equivalence theorem.
