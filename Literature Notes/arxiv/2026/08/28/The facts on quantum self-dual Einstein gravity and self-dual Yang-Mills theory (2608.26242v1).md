---
paper id: 2608.26242v1
title: The facts on quantum self-dual Einstein gravity and self-dual Yang-Mills theory
authors:
  - Noah Miller
publication date: 2026-08-26T18:00
abstract: |-
  A pedagogical review of classical and quantum self-dual Yang--Mills theory and self-dual Einstein gravity in four dimensions. It derives lightcone actions and Feynman rules, studies Berends--Giele currents and one-loop-all-plus amplitudes, and connects self-dual perturbiners to celestial Ls/Lw symmetries and chiral-algebra approaches.
comments: "77 pages + 8 appendices; generated PDF has 128 pages"
url: https://arxiv.org/abs/2608.26242v1
summary: "A valuable convention-rich map from lightcone self-dual actions to all-plus amplitudes and celestial symmetry. Its broad structural claims are well qualified, but several all-multiplicity equalities remain numerical or conjectural and the submitted source contains formula-level transcription defects that must be corrected before reuse."
tags: []
---

# Verdict

**Correct under the following precise conditions:** treat this paper as a pedagogical synthesis of flat-space perturbative SDYM/SDG in the stated lightcone and dimensional-regularization conventions, not as a new proof of every all-multiplicity amplitude formula. The action/diagrammatic dictionary, loop-counting argument, dimension-shifted triangle, and classical $Lw/Ls$ symmetry mechanism are internally coherent. The author also explicitly states the important limitations: Lorentzian self-dual fields are generally complex, the theories are non-unitary, the BDPR all-$n$ gravity formula remains conjectural, and some high-multiplicity identities were checked numerically rather than proved.

Four boundaries matter before importing formulas:

1. the boxed gravity tree-current formula uses a **sum** over edge weights where the matrix-tree theorem and the worked examples require a **product**;
2. the appendix identity for $p_N^2$ double-counts unordered pairs under the paper's own $p_i\cdot p_j=\langle ij\rangle[ij]/2$ convention;
3. the Feynman-parameter expression for $\Delta$ inserts $p^2$ inside a vector sum and is dimensionally malformed, although the ensuing dimension-shift limit is correct;
4. the covariant SDG gauge-fixing appendix prints an incorrect finite Lorentz action and repeats $\theta^{1\dot1}$ where the second component must be $\theta^{1\dot2}$.

These are source-level transcription defects rather than evidence against the review's central physical picture. They do, however, make literal copy-and-use unsafe.

# Source map

- **Sections 1--3:** define self-duality, derive the scalar lightcone actions, and use the propagator/vertex helicity structure to isolate tree one-minus and one-loop all-plus sectors.
- **Sections 4--5:** derive the SDYM action from full Yang--Mills and the SDG action from Einstein--Hilbert in lightcone gauge, including ghost-decoupling arguments.
- **Sections 6--8:** fix spinor conventions, list Feynman rules, and construct Yang--Mills and gravity Berends--Giele all-plus currents.
- **Sections 9--12:** explain rationality, finiteness, holomorphic collinear limits, bubble/triangle integrals, double-off-shell currents, and $D$-dimensional unitarity cuts.
- **Section 13:** reviews the conjectural Bern--Dixon--Perelstein--Rozowsky all-$n$ gravity formula and half-soft functions.
- **Section 14:** builds classical self-dual perturbiners and identifies $Lw_{1+\infty}$ for gravity and $Ls$ for Yang--Mills; it then distinguishes the self-dual Ward identities from extensions beyond that sector.
- **Sections 15--16:** separate several anomaly interpretations and survey MHV, double-copy, conformal, $N=2$ string, supersymmetric, and Burns-space connections.
- **Appendices A--H:** cover the first heavenly equation, covariant actions and gauge fixing, color factors, current recursions, the double-off-shell proof, one-loop formula properties, and the perturbiner/current/amplitude dictionary.

# Conventions and classical actions

The paper uses signature $(+---)$ and lightcone variables

$$
u=\frac{x^0-x^3}{2},\qquad \bar u=\frac{x^0+x^3}{2},\qquad
w=\frac{x^1+i x^2}{2},\qquad \bar w=\frac{x^1-i x^2}{2},
$$

with

$$
\Box=\partial_u\partial_{\bar u}-\partial_w\partial_{\bar w},
\qquad
\{f,g\}=\partial_u f\,\partial_w g-\partial_w f\,\partial_u g.
$$

In Lorentzian signature $u,\bar u$ and $w,\bar w$ are not related as real/complex conjugate coordinate pairs in the naive Euclidean sense. Non-flat self-dual solutions are generally complex; this is part of the paper's nonunitarity boundary.

The scalar lightcone actions are

$$
S_{\rm SDYM}=-\int d^4x\,\operatorname{tr}\,
\bar\Phi\left(\Box\Phi+i\sqrt2g[\partial_u\Phi,\partial_w\Phi]\right),
$$

$$
S_{\rm SDG}=-\int d^4x\,\bar\phi\left(
\Box\phi-\frac\kappa2\{\partial_u\phi,\partial_w\phi\}
\right).
$$

$\Phi,\phi$ encode positive-helicity fields and $\bar\Phi,\bar\phi$ negative-helicity fields. Setting the barred field to zero gives the classical self-dual equation; retaining it supplies a linear negative-helicity fluctuation on the self-dual background. The gravitational cubic vertex is the kinematic square of the Yang--Mills vertex, making the self-dual color--kinematics relation manifest.

# Why the sector is one-loop exact

Both actions have only a mixed propagator and a cubic $++-$ vertex. Let $V$ be the number of vertices, $I$ internal lines, and $E_-$ external negative-helicity legs. Counting barred-field ends gives $V=I+E_-$. For a connected graph $L=I-V+1$, hence

$$
L=1-E_-.
$$

Consequently, all-plus graphs can occur only at one loop, one-minus graphs only at tree level, and no graph exists with two external minus legs. The generic tree one-minus sum vanishes, apart from the three-point amplitude. The paper carefully records a newer caveat: in split signature there can be distributional support on a lower-dimensional collinear locus, so “vanishes” means away from that exceptional distributional support.

Equality with the corresponding pure-YM/pure-Einstein amplitudes follows from the full lightcone actions: the extra vertices require helicity configurations unavailable in the tree-one-minus and one-loop-all-plus sectors. This is a perturbative flat-background statement, not a claim about equality of nonperturbative theories or curved-background determinants.

# Lightcone reductions and ghost boundaries

For SDYM the paper fixes $A_u=0$, solves the nondynamical constraint, and integrates out the remaining constrained component. Keeping the action only to first order in the negative-helicity scalar gives the Chalmers--Siegel self-dual action above.

For gravity it imposes lightcone gauge on the metric, solves the constraint equations for nondynamical components, and expands Einstein--Hilbert only to first order in the barred helicity variable. The Faddeev--Popov matrix is argued to be triangular in the chosen variables, so its determinant is field independent and the ghosts decouple.

**Boundary:** the scalar lightcone derivation is useful for amplitudes but is not a covariant phase-space reduction. Inverse $\partial_u$ operators, boundary conditions, zero modes, reality conditions, and the path-integral measure are not developed as a global phase-space construction. The later covariant appendix sketches how the covariant actions reduce to lightcone form, but its gravitational ghost discussion is not an explicit determinant calculation and its finiteness argument is expressly described as “slightly hand-wavy.”

# Berends--Giele currents

With a reference spinor $|\alpha\rangle$, the Yang--Mills current takes the Parke--Taylor form

$$
J_{\rm YM}(1,\ldots,n)
=\frac{(i\sqrt2g)^{n-1}}
{\langle\alpha1\rangle\langle12\rangle\cdots
\langle n\alpha\rangle}.
$$

The gravity current obeys

$$
p_N^2\mathcal J_{\rm G}(N)
=-\frac\kappa2\sum_{A\sqcup B=N}
\langle\alpha|p_Ap_B|\alpha\rangle^2
\mathcal J_{\rm G}(A)\mathcal J_{\rm G}(B),
$$

where $(A,B)$ is an unordered bipartition. Its tree solution is intended to be

$$
\mathcal J_{\rm G}(1,\ldots,n)=
\left(-\frac\kappa2\right)^{n-1}
\left(\prod_{a=1}^n\frac1{\langle\alpha a\rangle^4}\right)
\sum_{T\text{ tree}}\prod_{(ij)\in E(T)}
\frac{[ij]}{\langle ij\rangle}
\langle\alpha i\rangle^2\langle\alpha j\rangle^2.
$$

**Source correction:** Eqs. (8.14), (8.15), and their appendix repetition print $\sum_{(ij)\in E(T)}$ in place of $\prod_{(ij)\in E(T)}$. The adjacent sentence assigns a factor to every edge, the degree formula needs multiplication, the two- and three-node examples have the product structure, and Eq. (8.18) invokes a Laplacian cofactor. This is not a choice of convention.

The current also has a collinear recursion that turns directly into the classical perturbiner Ward recursion. This is the cleanest reusable bridge in the paper between Feynman recursion, weighted trees, and infinite-dimensional symmetry.

# One-loop all-plus amplitudes

The review gives three complementary routes:

1. four-dimensional cuts vanish because the relevant tree amplitudes vanish, explaining why the result is rational but not determining the rational remainder;
2. $D=4-2\epsilon$ unitarity retains the $(-2\epsilon)$-dimensional momentum $\mu^2$ and reconstructs the missing rational term;
3. double-off-shell currents reduce the loop calculation to bubble and triangle structures.

Scaleless bubbles vanish in dimensional regularization. A $\mu^2$ insertion shifts the triangle to $6-2\epsilon$ dimensions:

$$
\int\frac{d^{4-2\epsilon}L}{(2\pi)^{4-2\epsilon}}
\frac{\mu^2}{(L^2-\Delta)^3}
=-\epsilon(4\pi)
\int\frac{d^{6-2\epsilon}L}{(2\pi)^{6-2\epsilon}}
\frac1{(L^2-\Delta)^3}
=\frac{i}{2(4\pi)^2}+O(\epsilon).
$$

The resulting SDYM formula is rational, finite, and has only holomorphic collinear singularities. For gravity the paper derives a double-off-shell representation and compares it to BDPR.

**Evidence boundary:** the SDYM intermediate expression is said to agree with the canonical all-plus expression by high-multiplicity numerical checks, but no notebook or test data are supplied. The gravitational double-off-shell formula is tested on random kinematics, and agreement with BDPR is reported through $n\le9$. BDPR itself remains an all-$n$ conjecture; the note explicitly does not provide a proof.

# Classical perturbiners and celestial symmetry

The perturbiner expands a classical solution in nilpotent plane-wave labels. Its coefficients are Fourier transforms of off-shell Berends--Giele currents. For SDG, plane-wave generators close under the $(u,w)$ Poisson bracket and organize into the loop algebra $Lw_{1+\infty}$; for SDYM, the color commutator combined with loop modes gives $Ls$.

The holomorphic collinear pole of two positive-helicity legs supplies the same structure constants that appear in the perturbiner recursion and celestial operator product. This identifies a precise common algebraic kernel, but it does not by itself construct a Hilbert space, boundary symplectic form, or Hamiltonian charge algebra.

Beyond the classical self-dual sector, stripped MHV representatives obey related Ward recursions. The paper is careful that stripping the momentum-conserving delta function introduces representative dependence: canonical one-loop formulas generally use momentum conservation and do not directly obey the same off-shell-looking identities.

The anomaly discussion is usefully non-monolithic. It separates MHV/CSW interpretations, electromagnetic-duality anomaly language, and the twistor-space Celestial Chiral Algebra anomaly cancelled by a fourth-order axion or special matter. These are related viewpoints, not a single theorem equating all mechanisms.

# Equation and claim ledger

| Source item | Role | Status |
|---|---|---|
| Eqs. (1.2)--(1.3), scalar lightcone actions | define perturbative SDYM/SDG | **Source-derived**; convention-consistent |
| helicity/end counting | one-loop exactness | **Re-derived here** |
| lightcone reductions from YM/EH | justify truncations | **Source-derived**; global zero-mode/boundary analysis not supplied |
| gravity ghost decoupling | remove FP ghosts | **Source-derived** in lightcone variables; covariant appendix version **Blocked** |
| Eqs. (8.14)--(8.15), gravity tree current | closed weighted-tree current | **Failed** as printed; edge sum must be edge product |
| Eq. (8.18), matrix cofactor | equivalent tree representation | **Checked at three nodes** |
| Eq. (11.27), dimension-shift triangle | finite rational seed | **Checked** |
| Eq. (11.30), canonical SDYM all-plus formula | all-multiplicity result | **Source-derived**; author numerical comparison not reproduced |
| Eq. (13.1), BDPR gravity formula | compact all-$n$ gravity expression | **Conjectural**, as the source states |
| perturbiner $Lw/Ls$ Ward recursions | classical/celestial symmetry bridge | **Source-derived; algebraic interpretation supported** |
| covariant SDG gauge fixing | recover lightcone action | **Blocked** as printed by component and finite-transformation typos |
| covariant rescaling finiteness sketch | alternate finiteness argument | **Not a proof**; source labels it hand-wavy |

# Verification log

- **Checked — dimension shift:** Mathematica evaluated the $D=6-2\epsilon$, $a=3$ scalar-integral formula with the prefactor $-\epsilon(4\pi)$ and returned $i/(32\pi^2)=i/[2(4\pi)^2]$, with zero residual against Eq. (11.27). **Assumptions:** the scalar-integral branch and $i0$ prescription are those of Eq. (11.26), with fixed nonzero $\Delta$ before taking $\epsilon\to0$.
- **Checked — matrix-tree theorem:** Sage and Mathematica computed a $3\times3$ weighted Laplacian cofactor and obtained
  $$
  w_{12}w_{13}+w_{12}w_{23}+w_{13}w_{23},
  $$
  exactly the sum of products over the three spanning trees. The printed sum of individual edge weights is not equal to this cofactor.
- **Failed — Eq. (D.5) normalization:** with the paper's $p_i\cdot p_j=\langle ij\rangle[ij]/2$,
  $$
  p_N^2=\sum_{a<b}\langle ab\rangle[ab]
  =\frac12\sum_{a\ne b}\langle ab\rangle[ab].
  $$
  The printed ordered-pair sum omits the factor $1/2$. Mathematica returned a nonzero residual equal to the unordered sum.
- **Failed as printed — Feynman parameter:** the displayed
  $(u_1p_1+u_2p_2^2+u_3p_3)^2$ adds a scalar to vectors. The completed square requires $(u_1p_1+u_2p_2+u_3p_3)^2$. The preceding denominator and shift show the intended expression.
- **Failed as printed — finite Lorentz action:** infinitesimally the two spinor factors act additively, but a finite vector/tetrad transformation acts by the product
  $\Lambda^A{}_B\widetilde\Lambda^{\dot A}{}_{\dot B}\theta^{B\dot B}$, not the sum printed in Eq. (B.56).
- **Failed as printed — tetrad gauge:** Eq. (B.66) repeats $\theta^{1\dot1}$ for both $2d\bar u$ and $2d\bar w$. The flat tetrad in Eq. (B.57), the preceding $f_{ij}$ matrix, and the final tetrads require the second line to be $\theta^{1\dot2}=2d\bar w$.
- **Visually confirmed:** generated PDF pages 30, 49, 87, 89, and 99 reproduce the source defects in the tree-current edge operation, $\Delta$, finite Lorentz transformation, repeated tetrad component, and ordered-pair $p_N^2$ identity. PDF page 31 confirms the adjacent matrix-cofactor form.
- **Blocked:** no author notebook accompanies the high-multiplicity numerical comparisons. I did not independently rederive the full SDG lightcone constraint solution, all $n$ double-off-shell identities, BDPR checks through nine points, twistor anomaly calculation, or every appendix proof.

# Translation to current vault projects

The most reusable part for the vault is a four-level separation:

1. **local lightcone action:** a gauge-fixed perturbative device with inverse derivatives and a chosen reference spinor;
2. **Berends--Giele/perturbiner recursion:** an off-shell current or classical formal series, not yet a phase-space observable;
3. **celestial collinear algebra:** structure constants visible in collinear limits, not automatically a Hamiltonian boundary-charge algebra;
4. **quantum amplitude statement:** regulator- and momentum-conservation-sensitive, with rational remainders invisible to strictly four-dimensional cuts.

This prevents an attractive but invalid shortcut in null-boundary work: the appearance of $Lw_{1+\infty}$ in perturbiner/OPE recursions does not by itself establish a nondegenerate boundary symplectic form, integrable charges, or a unitary representation. Those require an action-level CPS analysis with boundary conditions, zero modes, corner terms, and reality conditions supplied separately.

The weighted-tree current is potentially useful for finite-mode gluing and reconstruction comparisons, but only after correcting products, pair-counting, and reference-spinor conventions. The dimension-shift example is also a clean warning that a four-dimensional on-shell test can certify vanishing cuts while entirely missing the finite rational quantum answer.

# Bottom line for current projects

Keep this as a high-priority reference for the self-dual action/current/symmetry dictionary. Its strongest contribution is organizational: it makes the chain from lightcone reductions to currents, loop amplitudes, perturbiners, and celestial algebras unusually explicit, while openly recording where unitarity and all-$n$ proofs stop. For formula reuse, patch the five printed defects above and preserve the distinction between author-proved, author-numerically-checked, conjectural, and independently checked statements.

Back to [[2026_08_28_overview]].
