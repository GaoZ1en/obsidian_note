---
paper id: 2608.14451v1
title: "Four-point functions, Twistors and Supersymmetry in the Symplectic Bi-Grassmannian for CFT4 and AdS5"
authors:
  - Dhruva K. S.
publication date: 2026-08-14T16:37
abstract: |-
  Four-point discontinuities of CFT4/AdS5 boundary correlators are organized by a symplectic bi-Grassmannian. Factorization fixes exchange residues; half-Fourier and Penrose transforms give twistor and supertwistor representations, with N=1 SYM and proposed supergravity applications.
comments: "56 pages"
url: https://arxiv.org/abs/2608.14451v1
summary: "A useful rational representation of four-point exchange residues and their twistor/supersymmetric packaging, with contact terms and integration contours still undetermined."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: the objects called correlators are the selected momentum-space discontinuities obeying homogeneous Ward identities; the four-point integrand has only the assumed simple poles in \(S\) and \(\widetilde S\); and equality is understood up to terms with vanishing double residue, including AdS contact diagrams and possible single-pole terms. Under those conditions the double-residue factorization formula is substantive:

\[
\operatorname*{Res}_{\widetilde S=0}
\operatorname*{Res}_{S=0}A_4
=\sum_s a_s A_{3L}^{I_1\cdots I_{2s}}A_{3R,I_1\cdots I_{2s}}.
\]

The source does not reconstruct full Euclidean or Lorentzian four-point functions. The four remaining Grassmannian integrations, their cycles and their relation to discontinuity prescriptions are left open. Contact terms are not classified. The supergravity four-point formula is an ansatz with correct exchange factorization, not a derived complete graviton correlator or an AdS double-copy theorem.

# Symplectic bi-Grassmannian data

Off-shell four-momenta in Klein signature are written

\[
p_{\alpha\dot\alpha}
=\epsilon^{IJ}\lambda_{I\alpha}\widetilde\lambda_{J\dot\alpha}.
\]

The \(2n\times2\) matrices \(\Lambda,\widetilde\Lambda\) obey momentum conservation through

\[
\Lambda^T\Omega\widetilde\Lambda=0,
\]

while two \(n\times2n\) Grassmannian matrices \(C,\widetilde C\) are constrained by symplectic orthogonality. At four points, paired minors define

\[
\mathcal S=S\widetilde S,
\qquad
\mathcal T=T\widetilde T,
\qquad
\mathcal U=U\widetilde U.
\]

The rational integrands make internal \(GL(4)\times GL(4)\) covariance and external little-group weights explicit. They are representations of discontinuities, not ordinary on-shell five-dimensional scattering amplitudes.

# Factorization and exchange terms

Taking a discontinuity in the exchanged momentum localizes

\[
S=\widetilde S=0.
\]

The most singular exchange term is therefore fixed by three-point data. For a \(\Delta=2\) scalar exchange,

\[
A_4^{(\varphi\varphi|\varphi|\varphi\varphi)}
=\frac1{\mathcal S(\mathcal S+\mathcal T-\mathcal U)}.
\]

For spin \(J\), the proposed minimal uplift is

\[
A_4^{(J)}=
\frac1{2^J}
\frac{\mathcal S^{J-1}}
{(\mathcal S+\mathcal T-\mathcal U)^{J+1}}
C_J^{(1)}\!\left(\frac{\mathcal T+\mathcal U}{\mathcal S}\right).
\]

It has the required residue

\[
\operatorname*{Res}_{\mathcal S=0}A_4^{(J)}
=\frac{(\mathcal T+\mathcal U)^J}
{(\mathcal T-\mathcal U)^{J+1}}.
\]

For color-ordered Yang--Mills exchange,

\[
A_4^{gggg}(1234)=
\frac{(\mathbf1\mathbf2\mathbf3\mathbf4)
(\widetilde{\mathbf1}\widetilde{\mathbf2}\widetilde{\mathbf3}\widetilde{\mathbf4})}
{(\mathcal S+\mathcal T-\mathcal U)^2}
\left(\frac1{\mathcal S}+\frac1{\mathcal T}\right).
\]

Each expression fixes exchange residues. A different uplift with identical residues differs by the unresolved ambiguity sector.

# Twistor and supertwistor representations

A half-Fourier transform replaces \(\widetilde\lambda\) by \(\mu\), forming the double twistor

\[
Z^{IA}=(\lambda^{I\alpha},\mu^{I\dot\alpha}).
\]

The conformal generators become linear \(SL(4,\mathbb R)\) vector fields. The Penrose transform uses the incidence relation

\[
\mu^{I\dot\alpha}=x^{\alpha\dot\alpha}\lambda^I_{\alpha}
\]

and integrates over the \(GL(2)\) redundancy. After integrating out \(C\), the twistor Grassmannian is

\[
\psi_n(Z)=
\int\frac{d^{n\times2n}\widetilde C}{\operatorname{Vol}(GL(n))}
\delta^{n\times4}(\widetilde C\Omega Z)\,
\widetilde A_n(\widetilde C).
\]

For \(\mathcal N=1\), adjoining \(\eta^I\) produces a supertwistor \(\mathcal Z=(Z,\eta)\); the same delta-function construction yields the supertwistor and spinor-helicity super-Grassmannians. These are kinematic solutions of superconformal Ward identities subject to the same contour and ambiguity boundaries.

# N=1 SYM and supergravity scope

For rigid AdS5 \(\mathcal N=1\) SYM, the multiplet contains a massless vector, a \(\Delta=2\) scalar and two \(\Delta=5/2\) fermions. Matching scalar and gluon residues fixes the relative exchange weights

\[
a_g=\frac12,
\qquad
a_\varphi=\frac14.
\]

The super-correlator then reproduces the same exchange residues as the component bootstrap, but retains an arbitrary term \(\mathbf B\) with vanishing channel double residues.

The supergravity section repeats this logic for the stress-tensor multiplet. Correct factorization is a nontrivial check. It does not fix contact terms, establish color--kinematics duality or compute the full Witten diagram.

# Independent verification

## Checked

- Mathematica evaluated the spin-\(J\) Gegenbauer expression for \(J=0,\ldots,5\); every residue agrees exactly with \((\mathcal T+\mathcal U)^J/(\mathcal T-\mathcal U)^{J+1}\).
- Mathematica independently solved the two residue-matching equations and obtained \(a_g=1/2\), \(a_\varphi=1/4\).
- The official TeX source and 56-page PDF were structurally read; rendered pages 1, 14, 27, 38, 47 and 52 show legible equations, tables and appendices.

## Failed

Rendered equation (3.14) writes

\[
\frac1{32}(\mathcal T+\mathcal U)
=\frac1{32}\mathcal T+\mathcal U.
\]

This is false; the right-hand side needs parentheses. Mathematica gives residual \(-31\mathcal U/32\). The subsequent residue formulas use the symmetric combination \(\mathcal T+\mathcal U\), so this is a localized normalization/parenthesis typo rather than the intended bootstrap rule.

## Assumptions

- Klein signature and the stated \(GL(2,\mathbb R)\) reality/projective conventions.
- Simple poles in \(S,\widetilde S\) for the factorized sector.
- Homogeneous Ward identities after taking the specified discontinuities.
- The chosen Grassmannian charts introduce no untracked Jacobian factors.

## Not independently verified

- The full appendix derivation of every Grassmannian Jacobian and half-Fourier transform sign.
- Explicit evaluation of the four nontrivial contour integrals.
- Classification and fixing of contact and single-pole ambiguities.
- The proposed geometric meaning of the Klein quadric singularity locus, extended supersymmetry and a supergravity double copy.

# Relevance to the vault

The paper is a useful compact technology note for AdS5 boundary correlators, twistor transforms and representation-aware factorization. Its symplectic geometry is kinematic; it is not a covariant phase space on the bulk solution space. For quantization notes, the rational integrands may simplify spectral or correlator manipulations, but they should be cited as discontinuity/exchange data until contours and contact terms are fixed.

# Bottom line

The factorization formula and twistor/supertwistor packaging are the reliable contributions. The complete correlator, integration cycle, contact sector and supergravity double-copy interpretation remain open. Preserve that distinction whenever importing the formulas into AdS/CFT notes.
