---
paper id: 2607.17124v1
title: "The de Sitter Scalar Discrete Series: Gupta-Bleuler Structure and Holography"
authors:
  - Maryam Bajalan
  - Jean-Pierre Gazeau
  - Hamed Pejhan
publication date: 2026-07-19T08:21
abstract: |-
  The paper constructs scalar de Sitter discrete-series representations Pi_{p,0} in a covariant Krein space. A null gauge sector appears after restriction to an invariant subspace, the physical representation is obtained as a Gupta-Bleuler quotient, and rescaled limits at I^+ and I^- produce a boundary realization on S^3. A Fourier-type mode kernel is proposed to identify the positive physical bulk quotient with the boundary Hilbert carrier. This note reconstructs the mode, Klein-Gordon, quotient, boundary, and intertwiner chains and records two structural representation-theory failures and a factor-two boundary-normalization error.
comments: "32 pages, 4 figures, 1 table"
url: https://arxiv.org/abs/2607.17124v1
summary: "A technically valuable dS Gupta-Bleuler and boundary-mode construction whose physical quotient survives audit, but whose second claimed UIR quotient and low-L boundary normalization require correction."
tags: []
---

Back to [[2026_07_21_overview]].

This is a high-priority monograph-mode note. The transferable object is not merely the phrase “dS holography”: it is the complete chain

$$\begin{align}
\text{Casimir equation} \longrightarrow \text{global modes} \longrightarrow \text{KG Gram form} \longrightarrow V_g\subset V\subset V_{\mathrm{tot}} \longrightarrow V/V_g \longrightarrow H_{p-1}
\end{align}$$

together with an explicit boundary mode transform. The chain is useful for the vault's quotient-first treatment of gauge directions, boundary data, and indefinite one-particle structures. It must, however, be separated from three claims that do not follow from the displayed formulas: the second quotient is not an irreducible UIR, its inherited KG form is not negative definite, and reflection positivity is asserted without an Osterwalder-Schrader construction.

# How to read this long paper

- **Essential chain:** Secs. II C, III A--C, IV A--B, and V. These give the scalar Casimir equation, the two radial branches, the KG matrix, the Gupta-Bleuler quotient, the boundary kernel, and the physical intertwiner.
- **Technical reference:** Appendix B for the hypergeometric branches and their asymptotics, Appendix C for every KG normalization, and Appendix D for the noncompact-generator leakage between sectors.
- **Background:** Sec. II A--B reviews ambient dS representation theory. Appendix A collects special-function and hyperspherical-harmonic identities.
- **Read with corrections:** Sec. III C's claim about (V_{\mathrm{tot}}/V), Sec. IV B's low-(L) boundary coefficient, and Appendix D's top supplementary-level generator formula cannot be used as printed. The verified physical quotient (V/V_g) and the (L\ge p) Fourier kernel do not depend on those errors.

# Source structure and dependency map

The TeX contains four numbered appendix sections, although the introduction says “five appendices.” The actual dependency tree is:

1. **Introduction.** States the Wigner/representation-theoretic motivation, the intended Krein--Gupta-Bleuler hierarchy, and the dS/CFT interpretation.
2. **dS Geometry, Representations, and Casimir Structure.** Ambient hyperboloid and (mathrm{SO}_0(1,4)) generators; Dixmier labels and Casimir eigenvalues; scalar ambient equation; conversion to intrinsic coordinates.
3. **Scalar Discrete-Series Modes and Indecomposable Krein-Gupta-Bleuler Realization.** Global conformal separation; two hypergeometric radial solutions; KG products and normalized mode families; successive invariant/nondegenerate extensions; Gupta-Bleuler quotient; proposed indecomposable diagram; antipodal map.
4. **Boundary Realization.** Decomposition (L^2(S^3)=H_{p-1}\oplus V_{p-1}); invariant nonlocal kernel form; rescaled limits at (mathcal I^pm); collapse of the bulk negative copy; boundary indecomposable action and antipodal compatibility.
5. **Fourier-Type Bulk-Boundary Intertwiner and Unitary Equivalence.** Mode-sum kernel (K(X,v_\infty)), maps (mathcal F,mathcal G), and the restricted isometry between the positive bulk representatives and (H_{p-1}).
6. **Conclusion and Outlook.** Repeats the quotient and boundary claims and proposes higher spin and interacting extensions. Its statement that (V') and (overline{V'}) are invariant contradicts the paper's own generator action.
7. **Appendix A: Some Useful Relations.** Gamma reflection/duplication formulas, hypergeometric transformations and branch prescriptions, Gegenbauer/Legendre identities, and normalized (S^3) harmonics.
8. **Appendix B: Analysis of the Radial Equation.** Hypergeometric reduction, two independent branches, redundancy of an alternative exponent, linear independence, conjugation relations, and boundary asymptotics.
9. **Appendix C: KG Products and Mode Normalization.** Abel/Wronskian reduction, positive/negative high-(L) norms, low-(L) cross-pairing, and normalization constants.
10. **Appendix D: dS Action and Fourier Covariance.** Noncompact generators, harmonic recurrences, radial recurrences, leakage at (L=p), actions on (V'), (V_g), (V_s), (H_{p-1}), and (V_{p-1}), followed by a basis-level intertwining calculation.

# Conventions and objects

| Paper object                  | Definition and convention                                                           | Local reading                                                                                                        |        |                                           |
| ----------------------------- | ----------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ------ | ----------------------------------------- |
| (mathrm{dS}_4)                | (x\cdot x=-R^2subset\mathbb R^{1,4}), (eta_{ab}=\operatorname{diag}(1,-1,-1,-1,-1)) | Lorentzian bulk; (R) is the dS radius                                                                                |        |                                           |
| (L_{ab})                      | (-i(x_a\partial_b-x_b\partial_a)) for a scalar                                      | Lie-algebra action, not a gauge transformation                                                                       |        |                                           |
| (Q_0)                         | (-\tfrac12M_{ab}M^{ab}=-R^2(\partial^{\mathrm T})^2)                                | Scalar quadratic dS Casimir                                                                                          |        |                                           |
| (p)                           | Positive integer labeling (Pi_{p,0})                                                | Also fixes the finite low-harmonic sector (0\le L<p)                                                                 |        |                                           |
| ((\rho,u))                    | (x=(R\tan\rho,R\sec\rho,u)), (u\in S^3), (-\pi/2<\rho<\pi/2)                        | (mathcal I^pm) occur at (ho\to\pm\pi/2)                                                                              |        |                                           |
| (Y_{Llm})                     | (Delta_3Y_{Llm}=-L(L+2)Y_{Llm}), (0\le l\le L), (                                   | m                                                                                                                    | \le l) | Each (L) level has multiplicity ((L+1)^2) |
| (lambda_L^{(1,2)})            | Two hypergeometric time branches                                                    | (lambda^{(1)}) gives physical/gauge boundary data; (lambda^{(2)}) is supplementary and boundary-normalizable to zero |        |                                           |
| (langle\ ,\ \rangle_{\rm KG}) | (iR^2\int_{\rho=0}\bar\phi_1\overleftrightarrow\partial_\rho\phi_2,du)              | Conserved indefinite one-particle form; no CPS ambiguity term is analyzed                                            |        |                                           |
| (V'), (overline{V'})          | (L\ge p) true modes and their conjugates                                            | Positive and negative representatives; neither is invariant by itself                                                |        |                                           |
| (V_g,V_s)                     | Low-(L) first and second branches                                                   | Null gauge and null supplementary spaces; their cross-pairing is nonzero                                             |        |                                           |
| (V=V'\oplus V_g)              | Minimal invariant extension of (V')                                                 | Presymplectic analogue: radical (V_g), physical quotient (V/V_g)                                                     |        |                                           |
| (V_{\rm tot}=H_+\oplus H_-)   | Nondegenerate invariant Krein completion                                            | An auxiliary carrier, not itself a physical Hilbert space                                                            |        |                                           |
| (V_{p-1})                     | Span of (Y_{Llm}) for (L<p)                                                         | Boundary radical/gauge image                                                                                         |        |                                           |
| (H_{p-1})                     | High-harmonic complement with a nonlocal invariant kernel norm                      | Boundary physical representative space                                                                               |        |                                           |
| (mathcal L_\pm)               | Rescaled limit to (mathcal I^pm)                                                    | A modewise source-like boundary map; not a full source/response variational map                                      |        |                                           |
| (mathcal F,mathcal G)         | Mode-kernel maps between bulk and boundary                                          | Only their restrictions (V'\leftrightarrow H_{p-1}) are inverse                                                      |        |                                           |

The paper calls the (L<p) sector “gauge,” but no local gauge transformation of a scalar action is supplied. Operationally, “gauge” means the radical of the KG form after restriction to (V), together with invariance under the dS algebra. That quotient meaning is the one compatible with the vault's CPS vocabulary.

# From the dS Casimir to the two radial branches

For Dixmier labels ((p,q)), the scalar quadratic Casimir eigenvalue is

$$\begin{align}
\langle Q_0\rangle=-p(p+1)-(q+1)(q-2).
\end{align}$$

At (q=0), this is (2-p(p+1)=-(p-1)(p+2)), so the field equation is

$$\begin{align}
\boxed{\left(Q_0+(p-1)(p+2)\right)\phi=0.} \tag{source: wave.eq.111}
\end{align}$$

In global conformal coordinates, separation

$$\begin{align}
\phi(\rho,u)=N\lambda_L(\rho)Y_{Llm}(u)
\end{align}$$

reduces it to

$$\begin{align}
\left[ \cos^4\rho\,\frac d{d\rho}\left(\cos^{-2}\rho\frac d{d\rho}\right) +L(L+2)\cos^2\rho-(p-1)(p+2) \right]\lambda_L=0. \tag{source: eqrad}
\end{align}$$

Writing (z=-e^{-2i\rho}) and extracting (z^{L/2}(1-z)^{1-p}) gives a Gauss equation. The two source branches are

$$\begin{align}
\lambda_L^{(1)}= 2^{1-p}e^{-i(L-p+1)\rho}(\cos\rho)^{1-p} {}_2F_1\!\left(-p,L+1-p;L+2;-e^{-2i\rho}\right), \tag{source: chi\_p-1}
\end{align}$$

and

$$\begin{align}
\lambda_L^{(2)}= 2^{p+2}e^{-i(L+p+2)\rho}(\cos\rho)^{p+2} {}_2F_1\!\left(p+1,L+p+2;2p+2;2e^{-i\rho}\cos\rho\right). \tag{source: chi\_p-2}
\end{align}$$

The first hypergeometric series truncates because its first parameter is (-p). Near either conformal boundary,

$$\begin{align}
\lambda_L^{(1)}\sim C_L^{(1;\pm)}(\cos\rho)^{1-p}, \qquad \lambda_L^{(2)}=O((\cos\rho)^{p+2}).
\end{align}$$

This asymptotic split drives the whole construction: the first branch survives after multiplying by ((\cos\rho)^{p-1}), while the second disappears. A global subtlety is already visible here. The paper states that the displayed representation of (lambda^{(2)}) is valid only for (cos\rho<1/2), yet later evaluates KG data at (
ho=0). The local ODE and near-boundary continuation can be checked, but the distributional analytic-continuation sheet across the hypergeometric cut is not specified well enough to reconstruct the global branch independently.

# The KG matrix and the Krein completion

Set

$$\begin{align}
\phi_{Llm}^{(a)}=N_L^{(a)}\lambda_L^{(a)}Y_{Llm},\qquad a=1,2.
\end{align}$$

The source normalizations are

$$\begin{align}
N^{(1)}_{L\ge p} =\frac1{2\sqrt2R} \frac{\sqrt{\Gamma(L-p+1)\Gamma(L+p+2)}}{\Gamma(L+2)},
\end{align}$$

$$\begin{align}
N^{(1)}_{L<p}=\frac1{\sqrt2R}, \qquad N^{(2)}_{L<p}=\frac{(-1)^{p+1}}{4\sqrt2R} \frac{\Gamma(p+1)\Gamma(L+p+2)}{\Gamma(2p+2)\Gamma(L+2)}. \tag{source: normalization constants 1--3}
\end{align}$$

For (L\ge p), the first branch and its conjugate give orthogonal positive/negative modes,

$$\begin{align}
\langle\phi^{(1)}_{Llm},\phi^{(1)}_{L'l'm'}\rangle_{\rm KG} =\delta_{LL'}\delta_{ll'}\delta_{mm'},
\end{align}$$

$$\begin{align}
\langle\overline{\phi^{(1)}_{Llm}},\overline{\phi^{(1)}_{L'l'm'}}\rangle_{\rm KG} =-\delta_{LL'}\delta_{ll'}\delta_{mm'}, \qquad \langle\phi^{(1)},\overline{\phi^{(1)}}\rangle_{\rm KG}=0.
\end{align}$$

For (L<p), each branch is null but they pair crosswise:

$$
\left(
\begin{array}{cc}
\langle\phi^{(1)},\phi^{(1)}\rangle & \langle\phi^{(1)},\phi^{(2)}\rangle\\
\langle\phi^{(2)},\phi^{(1)}\rangle & \langle\phi^{(2)},\phi^{(2)}\rangle
\end{array}
\right)
=
\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\tag{source: kha27--thelastone'}
$$

Thus

$$\begin{align}
\phi_{L<p}=\phi^{(g)}_{L<p}+\frac12\phi^{(s)}_{L<p}, \qquad \overline\phi_{L<p}\sim\phi^{(g)}_{L<p}-\frac12\phi^{(s)}_{L<p}
\end{align}$$

diagonalize the pair to norms (+1) and (-1). The full nondegenerate carrier is the Krein sum

$$\begin{align}
V_{\rm tot}=H_+\oplus H_-,
\end{align}$$

where (H_+) contains (V') and the positive low-(L) combinations, while (H_-) contains their conjugates. This is a one-particle indefinite completion. It is not the covariant phase space of a specified action, and the paper does not discuss reality conditions, a complex structure, or a Fock completion.

# The invariant filtration and the physical quotient

The noncompact dS generators lower an (L=p) true mode into the low-(L) first branch. Therefore

$$\begin{align}
V'\longrightarrow V'\oplus V_g, \qquad V_g\longrightarrow V_g.
\tag{source: mix.action, gau-ds}
\end{align}$$

The minimal invariant extension is

$$\begin{align}
V=V'\oplus V_g.
\end{align}$$

The restriction of the KG form to (V) is positive semidefinite and has

$$\begin{align}
\operatorname{rad}\left(\langle\ ,\ \rangle_{\rm KG}|_V\right)=V_g.
\end{align}$$

Consequently the clean Gupta-Bleuler statement is

$$\begin{align}
\boxed{V_{\rm phys}=V/V_g\simeq V'}
\end{align}$$

with the important qualification that (V') is only a choice of positive representatives. It is not invariant as a subspace, while the quotient action is well defined because (V_g\subset V) is invariant. The quotient inherits a positive nondegenerate inner product, and the displayed (L\ge p) ladder is compatible with the carrier of (Pi_{p,0}). Identifying it with the classified UIR still uses the external representation-classification theorem and completion/domain assumptions.

The finite radical has dimension

$$\begin{align}
\dim V_g=\sum_{L=0}^{p-1}(L+1)^2 =\frac{p(p+1)(2p+1)}6.
\end{align}$$

The source labels this finite nonunitary representation by ((0,p-1)). In Sage's standard (B_2) Dynkin order the same dimensions occur for ((p-1,0)); this convention reversal should be made explicit before comparing highest weights.

## Why the second claimed quotient is not another UIR

The paper also writes

$$\begin{align}
V_{\rm tot}/V\simeq\overline{V'}\oplus V_s
\end{align}$$

and calls this quotient a negative-definite copy of (Pi_{p,0}). The displayed generator action contradicts that conclusion. Modulo (V=V'\oplus V_g), the image of (overline{V'}) remains inside (overline{V'}), while (V_s) can feed (overline{V'}). Hence (overline{V'}) is a nonzero proper invariant subspace of (V_{\rm tot}/V): the quotient is reducible.

The compatible filtration is instead

$$\begin{align}
V_g\subset V\subset W:=V\oplus\overline{V'}\subset V_{\rm tot},
\end{align}$$

with

$$\begin{align}
W/V\simeq\overline{V'}, \qquad V_{\rm tot}/W\simeq V_s.
\end{align}$$

Moreover, the original KG form cannot descend to (V_{\rm tot}/V): a form descends through a quotient only if the quotienting subspace lies in its radical, but (V) contains positive-norm vectors. The natural displayed representatives (overline{V'}\oplus V_s) also include null supplementary modes. Thus neither “irreducible” nor “negative-definite inherited KG quotient” is valid as printed. None of this alters (V/V_g).

# Boundary kernel, radical, and mode limits

On either conformal boundary the underlying vector space is decomposed as

$$\begin{align}
L^2_\mathbb C(S^3)=H_{p-1}\oplus V_{p-1},
\end{align}$$

where (V_{p-1}) is the span of (Y_{Llm}) with (L<p), and (H_{p-1}) is its (L^2)-orthogonal high-harmonic complement. The full dS-invariant sesquilinear form is not the ordinary (L^2) product but

$$\begin{align}
\langle f_1,f_2\rangle_{p-1} =\frac{(-1)^{p+1}}{4\pi^2(2p-1)!} \iint_{S^3\times S^3} \overline{f_1(u_1)}f_2(u_2)
|u_1-u_2|^{2(p-1)}\log|u_1-u_2|^{-2},du_1du_2.
\tag{source: Hp-1-inner}
\end{align}$$

Its radical is (V_{p-1}), and the high modes

$$\begin{align}
\psi_{Llm} =\sqrt{\frac{\Gamma(L-p+1)}{\Gamma(L+p+2)}}Y_{Llm}, \qquad L\ge p, \tag{source: 5.78}
\end{align}$$

are orthonormal in the induced quotient norm. Positivity and the spectral coefficient are imported from Takahashi rather than derived from the kernel integral. The source also does not specify convergence and domain conditions for this logarithmic kernel.

For the bulk limit define

$$\begin{align}
\mathcal L_\pm\phi =\lim_{\rho\to\pm\pi/2} \left(\mathfrak S_s\mathfrak S_p^\pm\phi\right),
\end{align}$$

$$\begin{align}
\mathfrak S_s =R\frac{2^{p+1/2}\Gamma(p+1)}{\Gamma(2p+1)}(\cos\rho)^{p-1}, \qquad \mathfrak S_p^\pm=e^{\pm i(L-p+1)\pi/2}.
\end{align}$$

Modewise, the verified high-(L) map is

$$\begin{align}
\boxed{\mathcal L_\pm\phi_{L\ge p,lm}=\psi_{Llm}.}
\end{align}$$

The supplementary branch maps to zero, and the conjugate high-(L) mode maps to the same boundary carrier with (m\mapsto-m) and an (L,p,m)-dependent phase. Thus the bulk negative copy has no independent boundary image.

## Corrected low-harmonic boundary coefficient

Holding the paper's displayed bulk normalizations fixed, direct multiplication of the normalization, asymptotic coefficient, and rescaling factors gives

$$\begin{align}
\boxed{ \mathcal L_\pm\phi_{L<p,lm} =2\frac{\Gamma(L+2)}{\Gamma(L+p+2)}Y_{Llm}, }
\end{align}$$

not the paper's (Gamma(L+2)/\Gamma(L+p+2)). The conjugate formula carries the same missing factor (2). The case (p=1,L=0) makes the discrepancy elementary:

$$\begin{align}
\lambda^{(1)}_0=1,qquad
N^{(1)}_0=\frac1{\sqrt2R},qquad
\mathfrak S_s=\sqrt2R,qquad
\mathfrak S_p^\pm=1,
\end{align}$$

so (mathcal L_\pm\phi_{000}=Y_{000}), whereas the printed coefficient gives (Y_{000}/2). The figure caption repeats the error. It affects only the exact normalization of the low-(L) radical image: the (L\ge p) isometry, the vanishing supplementary image, and the boundary subspace structure are unchanged.

The boundary action itself has the analogous indecomposable form

$$\begin{align}
H_{p-1}\longrightarrow H_{p-1}\oplus V_{p-1}, \qquad V_{p-1}\longrightarrow V_{p-1}.
\end{align}$$

Accordingly the representation should again be assigned to the quotient, not to the non-invariant complement (H_{p-1}) without qualification.

# The Fourier-type physical intertwiner

The bulk-boundary kernel retains only physical harmonics:

$$\begin{align}
K(X,v_\infty) =\sum_{L=p}^{\infty}\sum_{l,m} \phi_{Llm}(X)\overline{\psi_{Llm}(v_\infty)}. \tag{source: K-ds-corrected}
\end{align}$$

The two coefficient-extraction maps are

$$\begin{align}
\mathcal F(\phi)=\langle K,\phi\rangle_{\rm KG}, \qquad \mathcal G(\psi)=\langle\overline K,\psi\rangle_{p-1}.
\end{align}$$

On basis modes,

$$\begin{align}
\mathcal F:\phi_{L\ge p,lm}\mapsto\psi_{Llm}, \qquad \mathcal G:\psi_{L\ge p,lm}\mapsto\phi_{Llm},
\end{align}$$

while gauge, supplementary, negative bulk, and low boundary modes lie in the appropriate kernels. Therefore

$$\begin{align}
\mathcal G\mathcal F|_{V'}=1, \qquad \mathcal F\mathcal G|_{H_{p-1}}=1,
\end{align}$$

and orthonormality gives the modewise isometry

$$\begin{align}
\langle\mathcal F\phi,\mathcal F\chi\rangle_{p-1} =\langle\phi,\chi\rangle_{\rm KG}.
\end{align}$$

The safest invariant statement is

$$\begin{align}
\boxed{V/V_g\simeq H_{p-1}/0}
\end{align}$$

after choosing (V') and (H_{p-1}) as representatives and supplying a topology in which the mode sums converge. Appendix D checks generator covariance on basis modes, but the paper does not prove that (K) is a pointwise function, that the maps extend continuously to stated completions, or that all unbounded generators share a common invariant domain.

The abstract's phrase “preserving reflection positivity” is stronger than the construction. A positive invariant boundary norm is displayed, but there is no reflection (Theta), no positive-time/hemisphere subspace, and no inequality (langle\Theta f,f\rangle\ge0). What is actually established at source level is a positive quotient kernel norm and a modewise isometry, not Osterwalder-Schrader reflection positivity.

# Antipodal relation

The bulk modes obey a relation of the form

$$\begin{align}
\phi_{Llm}(-\rho,-u) =(-1)^{L+m}\overline{\phi_{Ll,-m}(\rho,u)},
\end{align}$$

while (Y_{Llm}(-u)=(-1)^LY_{Llm}(u)). This pairs the (mathcal I^+) and (mathcal I^-) mode realizations and explains why the two boundary copies carry the same data. The phase bookkeeping is mode dependent. It is harmless on a fixed harmonic basis but should be regarded as a spectral multiplier, with its domain stated, before treating (mathcal L_\pm) as a single operator on a completed space.

# Translation into the vault's boundary and CPS language

| Paper statement | Vault translation | Qualification |
|---|---|---|
| KG form on solutions | Covariant symplectic/KG pairing after complexification | No action-level presymplectic potential or boundary ambiguity is derived |
| (V_g=\operatorname{rad}(V)) | Degenerate/gauge direction of the restricted solution pairing | This is the decisive gauge criterion in the paper |
| (V/V_g) | Reduced physical phase-space analogue | At one-particle linear level, not a nonlinear reduced phase space |
| (V_{\rm tot}) | Krein auxiliary completion | Similar in role to an indefinite Gupta-Bleuler carrier, not a physical Hilbert space |
| (L<p) versus (L\ge p) | Finite boundary radical versus physical response tower | Not an AdS alternate-quantization source/vev split |
| (mathcal L_\pm) | Renormalized conformal boundary trace | The counter-scaling is fixed modewise; no variational principle selects it |
| (V_{p-1}) | Boundary gauge/radical modes | Exact low-mode coefficient needs the factor-two correction |
| (H_{p-1}) with kernel norm | Physical boundary quotient representatives | Positivity is source-derived from an external theorem |
| (mathcal F) | Harmonic coefficient transform between reduced carriers | Convergence/continuity and OS positivity remain unproved |

For the current AdS/CPS work, the most reusable lesson is the order of operations: first identify the invariant subspace on which the pairing becomes degenerate, then quotient its radical, and only afterwards select positive representatives and a boundary transform. Attempting to identify a non-invariant complement directly with the representation is precisely what creates several of the paper's misleading sentences.

# Global derivation map

1. Insert (q=0) in the scalar Casimir eigenvalue to obtain the wave operator (Q_0+(p-1)(p+2)).
2. Use global (S^3) harmonics to reduce the field equation to the radial ODE.
3. Transform the radial ODE to a Gauss equation and choose a singular ((\cos\rho)^{1-p}) branch and a decaying ((\cos\rho)^{p+2}) branch.
4. Evaluate the conserved KG Wronskians. High-(L) first-branch modes have nonzero self-pairing; both low-(L) branches are individually null but pair with each other.
5. Normalize the Gram blocks and diagonalize the low-(L) (\begin{psmallmatrix}0&1\\1&0\end{psmallmatrix}) blocks to build the Krein carrier.
6. Follow the noncompact generator at the threshold (L=p): (V') leaks into (V_g), while (V_g) is invariant. Hence (V=V'\oplus V_g) is invariant and (V_g) is its radical.
7. Form (V/V_g); this is the valid positive physical representation carrier.
8. At (mathcal I^pm), multiply by ((\cos\rho)^{p-1}). The first branch survives, the supplementary branch dies, and conjugate positive/negative modes collapse to the same (S^3) tower.
9. Equip the high-harmonic boundary quotient with the invariant logarithmic kernel norm.
10. Sum matched orthonormal modes to form (K). KG and boundary coefficient extraction give inverse isometries on the chosen physical representatives.
11. Do **not** infer that (V_{\rm tot}/V) is another irreducible negative UIR, or that a positive kernel automatically supplies OS reflection positivity.

# Concrete project extensions

1. **Quotient-first benchmark for linearized gravity.** Recast a familiar dS or AdS gauge sector as (V_g\subset V) using the actual CPS form and compare its radical quotient to the scalar construction. The scalar note supplies the finite-dimensional leakage pattern; the gravity calculation must supply the action-level gauge symmetry and boundary symplectic flux.
2. **Boundary-kernel spectral audit.** Diagonalize the logarithmic kernel on (S^3) directly and recover the coefficient (Gamma(L-p+1)/\Gamma(L+p+2)), including the (L<p) radical. This would turn an imported Takahashi theorem into a locally reusable spectral calculation.
3. **Corrected low-mode transform.** Use the factor-two coefficient when testing antipodal maps or finite radical modules. Do not renormalize it away unless the paired bulk normalization and ladder coefficients are changed consistently.
4. **Topology before holography.** Specify Sobolev/weighted sequence completions on which (K), (mathcal F), (mathcal G), and the dS generators are continuous. This is the missing step between a mode ledger and a genuine unitary equivalence.
5. **Separate kernel positivity from OS positivity.** If reflection positivity matters, choose an involution and hemisphere subspace and test the OS quadratic form explicitly; the present paper does not provide that argument.

# Verification log

## Checked

- **Mathematica, exact:** substituting (q=0) into the quadratic Casimir gives (-(p-1)(p+2)), exactly reproducing the scalar wave equation.
- **Mathematica, exact local reduction:** with (z=-e^{-2i\rho}), the radial ansatz reduces the source ODE to the printed Gauss equation with zero residual away from (z=0,1) on a fixed power branch.
- **Mathematica, source-ordered mode checks:** (lambda^{(1)}) satisfies the radial ODE exactly for (p=1,\ldots,4) and (0\le L\le p+2). Both (lambda^{(1)}) and (lambda^{(2)}) give residual below (10^{-41}) on the numerical grid (p=1,2,3), (0\le L\le p+2), (
ho=1.2), where the source's stated domain for (lambda^{(2)}) holds.
- **Mathematica, exact/numerical Wronskians:** the high-(L) first-branch Wronskian and normalization were reproduced exactly for (p=1,\ldots,4), (L=p,\ldots,p+3). The low-(L) cross-Wronskian and its normalization agreed to 38--40 digits for (p=1,2,3), (0\le L\le p+2), (
ho=1.2). Both low-branch self-Wronskians vanished to at least 41 digits for every (L<p), (p=1,\ldots,4).
- **Mathematica, boundary asymptotics:** the source coefficients (C_L^{(1;\pm)}) were recovered near (
ho=\pi/2) for (p=1,2,3), (0\le L\le p+2); the resulting high-(L) map is exactly (phi_{Llm}\mapsto\psi_{Llm}).
- **Mathematica, low-(L) coefficient:** multiplying the printed (N^{(1)}_{L<p}), boundary scaling, phase, and asymptotic coefficient gives (2\Gamma(L+2)/\Gamma(L+p+2)). The (p=1,L=0) test gives (Y_{000}), not (Y_{000}/2).
- **Sage, exact:** the low-mode Gram change of basis diagonalizes (\begin{psmallmatrix}0&1\\1&0\end{psmallmatrix}) to (operatorname{diag}(1,-1)); (sum_{L=0}^{p-1}(L+1)^2=p(p+1)(2p+1)/6); standard (B_2) weights ((p-1,0)) give dimensions (1,5,14,30,55,91) for (p=1,\ldots,6).
- **xAct/xCoba:** for (ds^2=R^2\sec^2\rho(d\rho^2-d\Omega_3^2)), the scalar curvature is (-12/R^2) in xAct's Riemann-sign convention. This checks the constant-curvature geometry and records the sign translation; it is not evidence for the representation claims.
- **Algebraic module audit:** the printed actions imply that (V_g\subset V) is invariant and that the KG form descends positively to (V/V_g). They also imply the refined filtration (V_g\subset V\subset V\oplus\overline{V'}\subset V_{\rm tot}).

## Blocked

- The global analytic continuation of (lambda^{(2)}) from its stated region (cos\rho<1/2) to the (
ho=0) KG slice is underspecified. The near-boundary Wronskian and local ODE are checked; the exact distributional sheet is not.
- The identification of (V/V_g) with the classified UIR (Pi_{p,0}) relies on the external dS classification theorem and on unstated Hilbert/Krein completions and common domains for the unbounded generators.
- The logarithmic boundary kernel's spectrum, positivity, and radical are imported from Takahashi. They were not independently rederived from the double integral in this run.
- The mode sum (K) is checked coefficientwise, but the source gives no convergence class or continuity proof for (K,mathcal F,mathcal G).
- Reflection positivity cannot be checked because no reflection involution, positive-region test space, or OS inequality is defined.
- The paper's finite-representation label ordering differs from Sage's standard (B_2) convention; the dimension translation is checked, but the full Casimir/weight dictionary is not supplied.

## Failed

1. **Second quotient:** (V_{\rm tot}/V) contains the proper invariant subspace (overline{V'}), so it is reducible and is not the irreducible (Pi_{p,0}) claimed in Sec. III C. The KG form also cannot descend through quotienting by (V), which contains positive-norm vectors; the claimed inherited negative-definite quotient form is not defined.
2. **Invariance sentence:** the conclusion calls (V') and (overline{V'}) invariant, contradicting the printed leakage (V'\to V'\oplus V_g) and its conjugate. Only the quotient representation is invariant.
3. **Top supplementary action:** Appendix D's (L=p-1) generator formula omits the required (l+\tau) indices on the generated (L=p) modes. The sector-level leakage survives, but that component formula cannot be used as printed.
4. **Low-(L) boundary normalization:** source formulas `bdry-true2`, `bdry-true2'`, the definition of (mathcal N_{L<p}), and the antipodal figure caption miss a factor (2) with the paper's own displayed bulk normalizations. The corrected coefficient is (2\Gamma(L+2)/\Gamma(L+p+2)).
