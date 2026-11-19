# Argument review for a self-contained English paper

## Verdict

The verified local results can support a substantive paper, but a publication-ready argument is not obtained by translating the research record. The decisive dependencies are: a genuinely independent-squashing necessity proof; a full Killing-spinor transport identity plus an exclusion of extra spinors; normalized seed odd brackets; and an explicit distinction between flux densities and compact-cycle Page charges.

The mandatory verbatim abstract is a substantive editorial obstruction. Its unqualified “necessarily equal” is false beyond the six-component flux ansatz, including among eight-supercharge solutions. Its “generic lightlike solutions preserve four” does not describe the full displayed null ansatz, whose discrete chirality sectors have 8, 4, 0, 0 supercharges. Restricting the body defines a legitimate result, but does not eliminate these natural misleading readings of the abstract. Do not certify the unchanged abstract as fully accurate. “Conserved charges” can consistently mean the specified brane-flux charges, provided that meaning is explicit; it does not establish warped energy or angular momentum. Novelty remains for the separate literature review.

Evidence: [abstract](</Users/koishi/Documents/Note/Drafts/test_2/goal.md#L2>), [restricted theorem and counterexample](</Users/koishi/Documents/Note/Drafts/test_2/solution.md#L352-L426>), [complete null counts](</Users/koishi/Documents/Note/Drafts/test_2/verification.md#L78-L105>).

## Recommended English structure

1. **Introduction.** State the actual contribution, the specified deformation class, and the distinction between a construction and a classification. Identify the four-supercharge null branch immediately. Do not narrate how checks were discovered.
2. **Homogeneous deformations and the flux constraint.** Give conventions, the seed, the non-null fields and allowed parameters; then prove necessity within an initially independent-squashing six-component ansatz. End with the explicit unequal-sphere counterexample, or a short proposition referring to its proof appendix. The counterexample is not optional if retaining an apparently general necessity claim.
3. **Exact supersymmetry and the exceptional algebra.** Construct the seed solution space; transport its eight-dimensional sector to the deformation; establish the matching upper bound; compute the physical vector bilinears and identify the normalized brackets.
4. **Null deformations and chirality.** Give a regular null coframe, the flux, the field equations, and a branch table. Prove the four- and eight-spinor lower bounds and the complete upper bounds. Distinguish their different superalgebras.
5. **Flux charges and compact quotients.** Begin on the stated noncompact space, then explicitly add the rectangular torus quotient. Derive cycle orientations, Page reduction, quantization constraints, and deformation invariance. The seed central charge is a brief check, not a purported warped observable.
6. **Global restrictions and conclusions.** Address spinor descent and the timelike closed timelike curves. State the unresolved asymptotic-charge problem once. Do not append a long “verified/not verified” research ledger to the manuscript.

Appendices should contain mathematical dependencies, not logs: reduced field equations; explicit Clifford connection and null rank certificates; and the exact unequal-sphere supersymmetric example. Code is supplementary reproducibility evidence, not a substitute for the displayed operators and proof.

## 1. Six-component necessity: the missing middle must be printed

The current prose states the result of the Einstein reduction. A self-contained proof should expose that reduction. The following compact organization does so without listing eleven repetitive equations.

For this bosonic lemma only, choose base area forms \(\beta_i\) and orthonormal fiber forms \(h_i=q_i\theta_i\), with \(i=A,+,-\), \(q_i>0\), and absorb the Hopf signs into the coefficients so that
\[
 d\beta_i=0,\qquad dh_i=c_i\beta_i,\qquad c_i=q_if_i>0.
\]
Here the AdS fiber has norm \(\delta=\pm1\), the AdS base area has norm \(-\delta\), and the spherical forms have positive norm. This is a convenient bosonic convention, not an unannounced change of the relative Maurer–Cartan chiralities used in the KSE proof.

Write the actual six forms:
\[
\begin{aligned}
F={}&\sum_i E_i\,\beta_i\wedge h_i\wedge dx\\
&+T_A\beta_A\wedge h_+\wedge h_-
 +T_+h_A\wedge\beta_+\wedge h_-
 +T_-h_A\wedge h_+\wedge\beta_- .
\end{aligned}
\]
Define
\[
S_E=-E_A^2+E_+^2+E_-^2,\qquad
S_T=-T_A^2+T_+^2+T_-^2,\qquad
F^2=24(S_E+\delta S_T).
\]
The two flat equations are the consequential intermediate step:
\[
0=R_{yy}=-F^2/144,\qquad
0=R_{xx}=\tfrac12S_E-F^2/144,
\]
so \(F^2=S_E=S_T=0\). With \(\chi_A=-1\), \(\chi_\pm=1\), the remaining stress eigenvalues reduce to
\[
\frac{R^{(i)}_{\rm base}}{g^{(i)}_{\rm base}}
=\frac{\chi_i}{2}(E_i^2+\delta T_i^2),\qquad
\frac{R^{(i)}_{\rm fiber}}{g^{(i)}_{\rm fiber}}
=\frac{\chi_i}{2}(E_i^2-\delta T_i^2).
\]
Comparison with the Berger curvature gives
\[
E_i^2=f_i^2,\qquad T_i^2=\delta f_i^2(1-q_i^2).
\]
Print the three Bianchi coefficients, not merely “Bianchi implies”:
\[
T_Ac_++T_+c_A=0,\quad -T_Ac_-+T_-c_A=0,\quad
-T_+c_--T_-c_+=0.
\]
Thus
\[
\frac{T_A}{q_Af_A}=-\frac{T_+}{q_+f_+}
=\frac{T_-}{q_-f_-}=\zeta,
\qquad q_i^2=(1+\delta\zeta^2)^{-1}.
\]
This proves necessity, including the undeformed branch. The remaining Maxwell equation is required separately for existence; it must not be silently presumed from this argument. The flat equations also yield the radius relation after \(E_i^2=f_i^2\). The theorem assumes a strict product, flat unwarped \(x,y\), constant coefficients, positive finite radii, and precisely these six forms. It is not a theorem about all invariant fluxes.

Source reduction: [bosonic review:91–110](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md#L91-L110>). The stress-eigenvalue display above is an analytic unpacking of that reduction, not a new computational certificate.

## 2. Full non-null KSE: show the operator and the transport

Keep the convention \(\Gamma^{0\cdots10}=-1\), mostly-plus signature, and the fully antisymmetric five-gamma in the KSE. In the scale-removed coframe \(e^i=r_i\theta^i\), set \(r_i=\lambda\) on the three fibers and 1 otherwise. Define the actual operator
\[
\mathscr D_i=E_i+\Omega_i,\quad
C^k{}_{ij}=C^{(0)k}{}_{ij}\frac{r_k}{r_ir_j},\quad
\Omega_i=\tfrac14\omega_{i ab}\Gamma^{ab}
+\tfrac1{12}\Gamma_i\mathcal F-\tfrac14\slashed{\iota_i\widetilde F},
\qquad \mathcal F=2H(X-\delta tP).
\]
Here \(E_i\) is the dual vector, not the electric flux coefficient of the preceding lemma; use different letters in the final manuscript. Give the Koszul definition of \(\omega\), or the resulting independent connection coefficients. The structure constants, flux contraction and connection formula make every later matrix identity reconstructible.

The shortest complete sufficiency proof uses the seed equations and
\[
\Pi_0=\tfrac14(1-Q)(1+X),\quad
S=\frac{1+\lambda+\delta tP}{\sqrt{2(1+\lambda)}},\quad
r_i\Omega_iS\Pi_0=S\Omega_i^{(0)}\Pi_0.
\]
Explain that the dual differential operators also scale by \(r_i^{-1}\). Then \(\epsilon=S\epsilon_0\) solves all eleven differential equations, not just algebraic projectors. The seed must already have an established rank-eight solution sector: exhibit its reduced KSE and flatness, or an explicit local solution map. A path-independent parallel-transport construction is sufficient; coordinate exponentials are optional unless explicit coordinate spinors are promised.

For completeness, retain exactly the two decisive upper-bound identities
\[
\mathcal R_{5y}=-\frac{b\lambda^2}{18}Y\Gamma_5BH,
\qquad
\mathcal R_{34}\Pi_H=
\delta b^2t\,\Gamma^{34}P(\lambda-\delta tP)(1-J)\Pi_H,
\]
with
\[
\mathcal R_{ij}=[\Omega_i,\Omega_j]-C^k{}_{ij}\Omega_k,
\quad \Pi_H=(1-Q)/2,\quad
(\lambda-\delta tP)(\lambda+\delta tP)=1.
\]
These exclude all extra spinors for \(t\ne0\), \(b>0\), \(\lambda>0\). Neither finite-field sample ranks nor invariant seed-spinor counting can replace them. The sufficient transport proof makes a printed list of 55 zero curvature matrices unnecessary. State why the Clifford representation carries the preserved Majorana real structure, so complex matrix dimensions are not doubled.

Evidence: [full connection implementation](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py#L57-L131>), [transport and upper-bound derivations](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md#L212-L311>).

## 3. Bilinears: a genuine remaining exposition dependency

The deformation transport is supported, but it transports the *seed* algebra. The source states the seed bracket coefficient ratio without displaying its normalized evaluation. For a self-contained paper, supply either that calculation or a precise established input whose conventions are fully mapped.

Define the even generators, their normalization and the spinorial Lie derivative. With odd indices \((a,\alpha,\dot\alpha)\) in \((\mathbf2,\mathbf2,\mathbf2)\), display the three invariant tensors in \(\{Q,Q\}\), and evaluate their coefficients in the chosen generator basis to obtain
\[
(c_A,c_+,c_-)=c_0(-1,L^2/R_+^2,L^2/R_-^2).
\]
The Jacobi relation \(c_A+c_++c_-=0\) alone does not determine the radius ratio. Nor does eight-dimensionality identify the algebra.

The deformation step should retain
\[
S^T\mathcal C=\mathcal C S,\qquad
\overline{S\epsilon_1}\Gamma^i S\epsilon_2
=\bar\epsilon_1\Gamma^i\epsilon_2\quad(i\text{ base}),
\]
\[
\overline{S\epsilon_1}\Gamma^f S\epsilon_2
=\lambda\bar\epsilon_1\Gamma^f\epsilon_2
+\delta t\bar\epsilon_1\Gamma^fP\epsilon_2,
\qquad \bar\epsilon_1\Gamma^fP\epsilon_2=0.
\]
After including the inverse frame, \(K'=s^{-1}K_0\). Rescale odd generators by \(\sqrt s\). State the equivariance of the map under the three surviving simple factors; otherwise only the odd-odd bracket, not the full isomorphism, has been shown. Define \(\alpha=R_-^2/R_+^2\), and distinguish the odd-generated algebra from the algebra including spectator isometries.

Evidence: [seed bracket assertion](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md#L89-L118>), [bilinear derivation](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md#L266-L313>).

## 4. Null completeness: do not hide the decisive certificate

Present the four chiralities as discrete choices, not as exceptional parameter loci of a single “generic” four-supercharge family. Keep the regular coframe and explicit flux; do not obtain the null formulas by substituting zero into a singular normalized fiber form.

If completeness rests on the nonvanishing minors, an appendix must define the stacked curvature matrix, gamma basis, and selected rows/columns (or a deterministic exact elimination prescription producing them). A determinant polynomial without an identifiable matrix is not a reproducible proof in the article. The polynomials already recorded suffice to exclude special positive-radius enhancement once their operands are specified. Do not reproduce exploratory numerical counts.

For the four-spinor branch, print the nondegenerate pairing and the actual bracket \(\{Q_{a\dot a},Q_{b\dot b}\}=\varepsilon_{ab}\varepsilon_{\dot a\dot b}N\), as well as \([N,Q]=0\). This algebra is not \(\mathfrak d(2,1;\alpha)\). Explain that the two \(\mathfrak{su}(2)\) factors act on the odd space but are not produced by its odd-odd bracket.

Evidence: [null certificates](</Users/koishi/Documents/Note/Drafts/test_2/verification.md#L93-L126>).

## 5. Page charges, orientation, and compactification

Use the main text's orientation throughout; do not import the opposite eleven-dimensional orientation from an earlier charge note without conversion. The key sign is
\[
\star e^{0129}=-e^{345678\,10}.
\]
Choose magnetic cycles with orientation \(v_\pm\wedge dx\), and the positive electric cycle with orientation \(-v_+\wedge v_-\wedge dy\). Write
\[
N_{5,\pm}=\frac{1}{(2\pi\ell_p)^3}\int_{\Sigma_{4,\pm}}F,
\quad
N_2=\frac{1}{(2\pi\ell_p)^6}\int_{\Sigma_{7,y}}
(\star F+\tfrac12C_3\wedge F).
\]
The actual Page-to-Maxwell reduction is
\[
\iota^*F=0\quad\Longrightarrow\quad
\iota^*(C_3\wedge F)=0,
\]
in each potential patch; the same pullback also removes the large-gauge shift on this specified cycle. It does not establish gauge independence of every Page charge.

Before adding the torus, state
\[
H_4(S^3\times S^3\times\mathbb R^2)=H_7(S^3\times S^3\times\mathbb R^2)=0.
\]
Thus the original background has the listed flux densities, not these compact-cycle integer charges. Then add \(x\sim x+\ell_x\), \(y\sim y+\ell_y\), clarify that these are fixed seed proper periods, and derive
\[
N_{5,\pm}=\frac{R_\pm^2\ell_x}{2\pi\ell_p^3},\qquad
N_2=\frac{R_+^3R_-^3\ell_y}{8\pi^2L\ell_p^6}.
\]
Classical integrals become integer data only after imposing quantization; in particular \(R_+^2/R_-^2=N_{5,+}/N_{5,-}\in\mathbb Q\). State the vanishing gravitational shift and the chosen potential patching. For a claim that the compactified backgrounds preserve the same supersymmetry, explicitly establish zero flat-direction spinor holonomy and periodic spin structure; conditional “provided the spinors descend” is not a proof that the proposed quotient satisfies it. Seed flat-direction independence and the non-null transport already provide a short route for that family.

For deformation invariance, print the Hodge weights:
\[
\mathrm{vol}(g')/\mathrm{vol}(g_0)=G^{-1/3},\qquad
(g'^{-1})^{\otimes4}|_{v_A\wedge dx}=G^{1/3},
\]
so they cancel, while \(\iota^*(\star' d\Theta)=0\). Exactness of the added four-form alone proves neither electric-charge invariance nor Page uniqueness. In the null case, use the unchanged AdS determinant and the pullback of the added dual flux. Do not transfer the fixed-period invariance to arbitrary overall scaling: \((g,F)\mapsto(s^2g,s^3F)\) sends \(N_5\mapsto s^3N_5\), \(N_2\mapsto s^6N_2\).

Evidence: [orientation and Page reduction](</Users/koishi/Documents/Note/Drafts/test_2/global_review.md#L41-L77>), [Hodge and scaling](</Users/koishi/Documents/Note/Drafts/test_2/global_review.md#L79-L113>), [quantization obstruction](</Users/koishi/Documents/Note/Drafts/test_2/global_review.md#L142-L160>).

## Review scope

This is an independent argument/exposition audit of the current primary solution and evidence index, followed by targeted reading of the relevant proof sources. No existing document or manuscript source was changed; no network access or external project material was used. I did not rerun the established CAS certificates: the substantive need is to expose their mathematical operands and analytic implications, not to accumulate another identical run. The six-flux stress decomposition was reconstructed analytically above. The seed bracket normalization and explicit descent of any compactified family remain items the manuscript must establish rather than merely announce.
