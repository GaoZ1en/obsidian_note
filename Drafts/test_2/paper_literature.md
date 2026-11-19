# Primary-source and novelty audit: warped AdS3 × S3 × S3 × R2

Checked 19 November 2026. Scope: public academic sources and the authorized project directory only. The bibliography is [references.bib](</Users/koishi/Documents/Note/Drafts/test_2/references.bib>). This audit does not alter the source abstract or mathematical notes.

## 1. Decisive result: the supplied abstract already has a public source

The abstract in [goal.md](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) is substantively word-for-word the abstract of **Ruggero Noris, “Supersymmetric warped AdS3 solutions in eleven-dimensional supergravity,” arXiv:2611.21727v1, submitted 16 November 2026**. The differences are capitalization, mathematical typography, and “equation” versus “equations,” not scientific content. The first distinctive sentence was searched before pursuing the general literature.

Evidence: [original arXiv abstract](https://arxiv.org/abs/2611.21727v1), PDF cover/abstract on PDF page 1 in the [downloaded primary PDF](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026.pdf>). The abstract page lists no journal publication. Its arXiv DOI is 10.48550/arXiv.2611.21727 (the page labels registration pending); this is **not** a journal DOI. The downloaded v1 has 14 PDF pages although the abstract-page comments say 11 pages. All locators below refer to the downloaded v1, not an inferred pagination.

**Editorial consequence:** the supplied abstract cannot be presented as the original abstract of an independent new paper. The subsequently selected format—an explicitly attributed, self-contained reconstruction—is appropriate. Preserving the abstract requires displaying it as source material attributed to Noris, rather than putting an unattributed first-person claim of discovery in the new author's voice. This audit makes no allegation about how the local abstract was obtained.

The principal non-null family is also present in Noris, not merely suggested by a similar title. Its relation to the local solution is given next. Additional chirality branches and the unequal-sphere example remain additions to the reconstruction, not established claims of literature priority.

## 2. Exact non-null family correspondence

Compare [solution.md, equations (5)–(6)](</Users/koishi/Documents/Note/Drafts/test_2/solution.md>) with Noris:

| Source result | Exact locator in arXiv v1 | Evidence |
|---|---|---|
| Spacelike metric and four-form | Eq. (3.13), PDF p. 7 / printed p. 6 | [Rendered page](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p7.png>) |
| Exceptional superalgebra | Eq. (3.20), PDF p. 8 / printed p. 7 | [Primary PDF](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026.pdf#page=8>) |
| Equal AdS/sphere deformation boundary and eight supercharges | Table 2, PDF p. 9 / printed p. 8 | [Rendered page](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p9.png>) |
| Timelike metric and four-form | Eq. (3.21), PDF p. 9 / printed p. 8 | [Rendered page](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p9.png>) |
| Fiber and volume conventions | Appendix B, PDF pp. 11–12 / printed pp. 10–11 | [Rendered first page](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p11.png>) |

Use the locally rescaled pair `(g_tilde,F_tilde)` of equation (6), not the unrescaled pair in equation (5). Write the local common fiber/base ratio as q. The identification is

\[
\lambda_{\rm N}=\omega_{\rm N}=q,\qquad R_{0,\rm N}=L,\quad R_{\pm,\rm N}=R_\pm,
\qquad A_0=2\theta^f,\quad A_+=2\theta^5,\quad A_-=2\theta^8.
\]

Thus `A0∧A+∧A− = 8 Θ`. At this boundary every term proportional to `sqrt(λ_N²−ω_N²)` vanishes. Noris's surviving flux becomes, in the local ordering and orientation,

\[
F_{\rm N}=qF_0+q^2\sqrt{1-q^2}\,d\Theta\quad\hbox{(spacelike)},
\]
\[
F_{\rm N}=qF_0+q^2\sqrt{q^2-1}\,d\Theta\quad\hbox{(timelike)}.
\]

These are equation (6) with `t=+sqrt(1−q²)` and `t=−sqrt(q²−1)`, respectively, since the local coefficient is `δ q² t`. The sign of t is an allowed choice within the local family.

**Orientation bookkeeping.** Noris writes the electric leg `dz1` before the three-volume. For the displayed identification take `x=z1` and choose each local seed three-volume to be minus `R_i³` times Noris's unit undeformed three-volume. This is compatible with the local negative Maurer–Cartan convention: reverse one base-frame direction in each three-dimensional factor while retaining the distinguished fiber. For spacelike AdS one may reverse the 0 base leg; for timelike AdS reverse the 1 base leg; on each sphere reverse the first base leg. The exterior derivative of the fiber then has the local sign. A further `y=−z2` reverses the fourth frame direction, preserving the total eleven-dimensional orientation. Base-frame rotations to Maurer–Cartan frames do not alter these volume/fiber statements. This is a bosonic field correspondence; it is not a derivation of a particular spin-frame transformation between the two printed Killing-spinor formulae.

Noris uses `R+²/R−²` as the exceptional-algebra parameter; the local convention is `α=R−²/R+²`. These differ by exchange of the two sphere factors, not by a new algebra.

**Result:** the local equal-three-fiber spacelike and timelike metrics and fluxes are a boundary subfamily of the already public two-parameter construction. Rechecking their field equations and exact supersymmetry is reconstruction/verification, not evidence for a new family. Conversely, the reconstruction does not reproduce Noris's entire two-parameter domain.

## 3. Null correspondence and the relative Hopf-side choice

Noris's lightlike solution is Eq. (3.1), PDF p. 5 / printed p. 4; its round-sphere boundary is `ω_N=1`. Table 1 (PDF p. 7 / printed p. 6) assigns four supercharges to this boundary. Eqs. (3.9)–(3.12), on the same page, give a nondegenerate odd bracket closing on one null generator and the two sphere rotation actions. This is the direct antecedent of the four-supercharge null construction, not of a generic exceptional eight-supercharge null algebra.

**The printed powers are consistent.** In Eq. (3.1), the coefficient of `d(A0∧A+∧A−)` is **sqrt(α_N) ω_N²/4**, with ω_N² outside the radical. This was independently confirmed on the [high-resolution source crop](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-null-coefficient.png>). The square-root glyph can be missed when viewing the entire page at reduced size; no source erratum is indicated. Appendix B has null coframe coefficients `1±4α_N`: see [PDF p. 11](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p11.png>).

Consequently the AdS metric is

\[
L^2\left[{du_N^2+dx_+dx_-\over u_N^2}-\alpha_N{dx_-^2\over u_N^4}\right].
\]

At `ω_N=1`, take

\[
u_N=z,\qquad x_-=u,\qquad x_+=-2v,\qquad
\alpha_N=B^2,\quad B=-\sqrt{\alpha_N},\qquad A_0=n,\quad A_\pm=2e^{5,8}.
\]

Here `n=L z^(−2)du`. The source then has the local null metric coefficient `B²` and exact flux deformation

\[
{\sqrt{\alpha_N}\over4}d(A_0\wedge A_+\wedge A_-)
=-B\,d(n\wedge e^5\wedge e^8).
\]

The sphere coframe in Appendix B has positive Hopf derivatives. With the local convention `de5=−s+ f+ e34`, `de8=−s− f− e67`, it corresponds to `(s+,s−)=(−,−)`. Align the local three-volumes with Noris's physical volumes and take `x=−z1` to fix the electric-leg ordering; `y=−z2` preserves the total orientation. Thus this whole round-sphere null branch, not merely its normalized representative, matches the four-supercharge chirality branch. The `(+, +)` eight-supercharge branch is a different relative Hopf-side choice; it should not be described as supersymmetry enhancement at a parameter endpoint of that same fixed-chirality branch. The sign of B displayed here matches the source convention; the local opposite-sign family can be treated by a corresponding coordinate/orientation convention.

## 4. What the older solution-generating literature establishes

### Three commuting isometries: LM and its eleven-dimensional implementation

`LM2005`, §5, Eqs. (5.1)–(5.4), printed pp. 18–19 (PDF pp. 19–20), explicitly introduces the eleven-dimensional three-U(1) construction. `GauntlettLeeMateosWaldram2005`, §3.2, Eqs. (3.5)–(3.16), printed pp. 7–8 (PDF pp. 8–9), gives the KK/SL(2,R) transformation and the characteristic weights `G^(−1/3)` and `G^(2/3)`. Eq. (3.12) is `G=(1+γ²Δ)^(−1)`, while Eq. (3.13) includes both a dual-flux term and the derivative of the fiber triple. Its §3.3, printed p. 9 onward, explicitly requires invariance of Killing spinors under the selected torus action. The decisive [transformation page was visually checked](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Gauntlett2005-p9.png>).

`CatalOzerDeger2009`, Eqs. (25), (29), (30), printed/PDF p. 8, extends the rules to nontrivial seed four-form fields; Eqs. (31)–(32), printed/PDF p. 9, discuss fewer commuting isometries. In particular the flux transformation contains `−γ ι1 ι2 ι3 (*F4)` as well as the exact deformation term. See the visually checked [p. 8](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/CatalOzer2009-p8.png>) and [p. 9](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/CatalOzer2009-p9.png>).

For the local spacelike three-Hopf choice, each seed flux term has a leg on one selected fiber, so the contraction of its dual with all three selected Killing vectors vanishes. The fiber Gram determinant is constant. These observations explain the local constant G and exact `dΘ` term: the structure is the established LM structure, not a newly invented deformation mechanism. **Caution:** Eq. (32) is explicitly written for decoupled coordinate isometries; Hopf forms have nontrivial KK connections and must not be substituted for coordinate differentials without reinstating the covariant KK rule. Nor do these spacelike torus references automatically prove a timelike duality preserves real eleven-dimensional supersymmetry. The local direct field-equation/KSE checks remain necessary for that branch.

The unequal-sphere example also needs comparison with a three-isometry deformation using one AdS fiber, one sphere fiber, and a flat direction. The dual-flux contraction need not then vanish, naturally supplying the additional magnetic four-form absent from the restricted six-term ansatz. This is a **specific priority-check route**, not a completed proof that the exact unequal-sphere family was explicitly published before.

### Null Melvin/TsT

`BobevVanRees2011`, §3.2, Eqs. (3.24)–(3.32), printed pp. 7–9, constructs the n=2 null-Melvin subclass of type-IIB AdS3 × S3 × T4 deformations; §4, Eqs. (4.54)–(4.60), discusses four-supercharge sectors. The authors also state that their imposed spinor projections do not constitute an exhaustive supersymmetry classification. This is a method and close physical antecedent, **not** an identified eleven-dimensional two-sphere solution.

`OrlandoUruchurtu2010`, Eqs. (2.25)–(2.26), printed pp. 7–8, gives warped/squashed type-II backgrounds with one sphere and T4. `MaurelliEtAl2026`, §3 and Eq. (3.1), makes the double-TsT construction explicit for a two-parameter type-IIB WAdS3 × WS3 × M4 family. Neither source, as checked here, is the same 11d two-sphere family. Matching dimensions, flux degree, two sphere radii, relative Hopf actions, and all duality directions is necessary before claiming equivalence.

### Warped product versus warped AdS factor

`BachasEtAl2014` studies **round** AdS3 × S3 × S3 factors with scale functions over a Riemann surface and sixteen supercharges. This differs from squashing the AdS3 metric itself. Its full `D(2,1;γ)⊕D(2,1;γ)` classification cannot be quoted as a no-go theorem for the eight- or four-supercharge squashed backgrounds. It is, however, the cleanest checked source for the seed radius relation and exceptional-algebra parameter.

**Search outcome:** the directly matching public 11d family located here is Noris2026; earlier published papers supply the seed, algebra and generating methods. This finite search does not prove that no earlier paper or duality-equivalent presentation exists. “No earlier exact example found” is not a novelty theorem.

## 5. Exact source for the seed odd-bracket coefficients

In `BachasEtAl2014`, Eq. (2.2), printed p. 5 / PDF p. 7, gives the odd bracket with coefficients `(c1,c2,c3)` for the AdS and two sphere simple factors; the following text imposes

\[
c_1+c_2+c_3=0,\qquad \gamma=c_2/c_3.
\]

Eq. (5.6), printed p. 25 / PDF p. 27, gives

\[
f_1^2={f_2^2f_3^2\over f_2^2+f_3^2},\qquad \gamma=f_3^2/f_2^2.
\]

Set `f1=L`, `f2=R+`, `f3=R−` and use the local odd-pairing sign/normalization `c1=−1`. Then

\[
(c_1,c_2,c_3)=\left(-1,{\gamma\over1+\gamma},{1\over1+\gamma}\right)
=\left(-1,{L^2\over R_+^2},{L^2\over R_-^2}\right).
\]

Both original equation pages were visually checked: [odd bracket](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Bachas2014-p7.png>) and [radius/parameter relation](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Bachas2014-p27.png>). The common sign is a convention of the odd pairing/generator presentation, not something that follows by multiplying a real odd generator by an imaginary number. Relative coefficients and the parameter ratio are the invariant content needed here.

`GauntlettMyersTownsend1999`, Eqs. (73), (76), (81)–(82), printed pp. 15–17, independently derives the seed supergroup from spinor bilinears, but its Eq. (82) writes a radius ratio `R′/R`. Do not import that symbol α directly as the modern squared-radius bracket ratio without a convention conversion. The explicitly normalized Bachas formula above avoids this ambiguity.

## 6. Verified, limited bibliography and precise citation roles

The 14 entries below are sufficient for this reconstruction. Journal metadata was checked against original arXiv records, publisher records and, where noted, DOI-supplied metadata. A preprint year and a journal issue year are deliberately distinguished.

1. **`Noris2026`** — Ruggero Noris, *Supersymmetric warped AdS3 solutions in eleven-dimensional supergravity* (2026), arXiv:2611.21727v1. No journal confirmed. [Primary record](https://arxiv.org/abs/2611.21727v1). Role: abstract provenance and exact closest family. Equation/page locators in §§2–3 above.

2. **`LM2005`** — Oleg Lunin and Juan Maldacena, *Deforming field theories with U(1) × U(1) global symmetry and their gravity duals*, JHEP **05** (2005) 033; hep-th/0502086v4; DOI [10.1088/1126-6708/2005/05/033](https://doi.org/10.1088/1126-6708/2005/05/033). [Primary record](https://arxiv.org/abs/hep-th/0502086). Role: original mechanism; §5, Eqs. (5.1)–(5.4), not an explicit claim to the present AdS3 example.

3. **`GauntlettLeeMateosWaldram2005`** — Jerome P. Gauntlett, Sangmin Lee, Toni Mateos and Daniel Waldram, *Marginal Deformations of Field Theories with AdS4 Duals*, JHEP **08** (2005) 030; hep-th/0505207v2; DOI [10.1088/1126-6708/2005/08/030](https://doi.org/10.1088/1126-6708/2005/08/030). [Primary record](https://arxiv.org/abs/hep-th/0505207). Role: eleven-dimensional KK transformation and spinorial Lie-derivative criterion, §3.2–3.3; not a timelike-duality theorem.

4. **`CatalOzerDeger2009`** — Aybike Çatal-Özer and Nihat Sadik Deger, *Beta, Dipole and Noncommutative Deformations of M-theory Backgrounds with One or More Parameters*, Class. Quantum Grav. **26** (2009) 245015; arXiv:0904.0629v4; DOI [10.1088/0264-9381/26/24/245015](https://doi.org/10.1088/0264-9381/26/24/245015). [Primary record](https://arxiv.org/abs/0904.0629). Role: seed-flux-dependent transformation, Eqs. (25), (29)–(32), PDF/printed pp. 8–9.

5. **`BobevVanRees2011`** — Nikolay Bobev and Balt C. van Rees, *Schrödinger Deformations of AdS3 × S3*, JHEP **08** (2011) 062; arXiv:1102.2877v1; DOI [10.1007/JHEP08(2011)062](https://doi.org/10.1007/JHEP08(2011)062). [Primary record](https://arxiv.org/abs/1102.2877). Role: null-Melvin method, Eq. (3.29), printed p. 8 / PDF p. 9; projection-based supersymmetry discussion §4, including its stated limitations.

6. **`OrlandoUruchurtu2010`** — Domenico Orlando and Linda I. Uruchurtu, *Warped anti-de Sitter spaces from brane intersections in type II string theory*, JHEP **06** (2010) 049; arXiv:1003.0712v2; DOI [10.1007/JHEP06(2010)049](https://doi.org/10.1007/JHEP06(2010)049). [Primary record](https://arxiv.org/abs/1003.0712). Role: Hopf/T-duality warped and squashed one-sphere antecedents, Eqs. (2.25)–(2.26), printed pp. 7–8; supersymmetry §3.

7. **`BachasEtAl2014`** — Constantin Bachas, Eric D'Hoker, John Estes and Darya Krym, *M-theory solutions invariant under D(2,1;γ) ⊕ D(2,1;γ)*, Fortsch. Phys. **62** (2014) 207–254; arXiv:1312.5477v2; DOI [10.1002/prop.201300039](https://doi.org/10.1002/prop.201300039). [Primary record](https://arxiv.org/abs/1312.5477), [publisher](https://onlinelibrary.wiley.com/doi/10.1002/prop.201300039). Role: exact bracket/radius conventions, Eqs. (2.2), (5.6), and charge-ratio quantization Eq. (5.7), printed pp. 5, 25, 26. Not a classification of squashed AdS factors.

8. **`BoonstraPeetersSkenderis1998`** — Harm Jan Boonstra, Bas Peeters and Kostas Skenderis, *Brane intersections, anti-de Sitter spacetimes and dual superconformal theories*, Nucl. Phys. B **533** (1998) 127–162; hep-th/9803231v2; DOI [10.1016/S0550-3213(98)00512-4](https://doi.org/10.1016/S0550-3213(98)00512-4). [Primary record](https://arxiv.org/abs/hep-th/9803231). Role: intersecting-brane seed and large-N=4 interpretation, printed pp. 18–19. The text already discusses sphere squashing as breaking an SU(2) to U(1), but that qualitative observation is not the explicit local three-fiber solution. DOI metadata spells “space-times”; the arXiv title spells “spacetimes.”

9. **`GauntlettMyersTownsend1999`** — Jerome P. Gauntlett, Robert C. Myers and Paul K. Townsend, *Supersymmetry of rotating branes*, Phys. Rev. D **59**, 025001, issue dated 15 January 1999; first published **25 November 1998**; hep-th/9809065v1; DOI [10.1103/PhysRevD.59.025001](https://doi.org/10.1103/PhysRevD.59.025001). [Publisher confirmation](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.59.025001). Role: seed Killing spinors and bilinear supergroup; Eqs. (29)–(32), (39)–(49), (73), (76), (81)–(82). Keep its flux and α conventions separate from the reconstruction.

10. **`Marolf2000`** — Donald Marolf, *Chern-Simons terms and the Three Notions of Charge* (2000), hep-th/0006117v1, contribution to the E. S. Fradkin Memorial Conference. [Primary record](https://arxiv.org/abs/hep-th/0006117). No journal DOI confirmed; the bibliography therefore uses a preprint entry rather than inventing one. Role: Page/Maxwell/brane-source distinctions; §4, Eqs. (4.1)–(4.4), printed pp. 7–9. The explicit example is type-IIA D4 charge, so the reconstruction must derive its own 11d `*F+1/2 C∧F` from its stated Maxwell–CS equation, not label Marolf's Eq. (4.2) as that eleven-dimensional formula.

11. **`Witten1996flux`** — Edward Witten, *On Flux Quantization in M-Theory and the Effective Action*, J. Geom. Phys. **22** (1997) 1–13; hep-th/9609122v2 (1996); DOI [10.1016/S0393-0440(96)00042-3](https://doi.org/10.1016/S0393-0440(96)00042-3). [Primary record](https://arxiv.org/abs/hep-th/9609122v2). Role: shifted integral class, Eqs. (1.1)–(1.2), printed p. 1 / PDF p. 2, [visually checked](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Witten1997-p2.png>). Its normalized `G/(2π)` corresponds to the dimensionful `F/(2π l_p)^3`; the shift is `p1/4`. It does not make a noncompact flux density into an integer charge.

12. **`CremmerJuliaScherk1978`** — E. Cremmer, B. Julia and J. Scherk, *Supergravity theory in 11 dimensions*, Phys. Lett. B **76** (1978) 409–412; DOI [10.1016/0370-2693(78)90894-8](https://doi.org/10.1016/0370-2693(78)90894-8). No arXiv identifier. Role: historical theory-defining citation. DOI-supplied metadata was obtained, but repeated publisher full-text fetches failed; **no specific original equation numbering is claimed verified**. The metadata contains the apparent title typo “Supergravity in theory in 11 dimensions”; the bibliography uses the standard printed title. For the actual conventions used in this reconstruction, cite Noris Appendix A, Eqs. (A.1)–(A.4), PDF p. 11, which were visually checked, rather than pretending the 1978 coefficient conventions were rederived here.

13. **`BrownHenneaux1986`** — J. D. Brown and Marc Henneaux, *Central charges in the canonical realization of asymptotic symmetries: An example from three dimensional gravity*, Commun. Math. Phys. **104** (1986) 207–226; DOI [10.1007/BF01211590](https://doi.org/10.1007/BF01211590). No arXiv identifier. [Publisher](https://link.springer.com/article/10.1007/BF01211590), [primary published PDF](https://www.fis.uc.cl/~mbanados/Cursos/TopicosRelatividadAvanzada/BrownHenneaux.pdf). Role: seed AdS3 Brown–Henneaux central charge after compactification and a specified Einstein normalization. Boundary conditions are Eqs. (4.3)–(4.4); the central algebra is Eq. (5.6), printed p. 222 / PDF p. 16, and the unnumbered two-Virasoro algebra on printed p. 223 / PDF p. 17. Both final algebra pages were visually checked. Restoring `1/(16πG3)` gives the usual `c=3L/(2G3)`. Do not apply it to warped boundaries without a new asymptotic analysis.

14. **`MaurelliEtAl2026`** — S. Maurelli, R. Noris, M. Oyarzo and M. Trigiante, *Warped-AdS3 near-horizon geometries from TsT transformations*, JHEP **03** (2026) 186; arXiv:2512.01770v1; DOI [10.1007/JHEP03(2026)186](https://doi.org/10.1007/JHEP03(2026)186). [Primary preprint](https://arxiv.org/abs/2512.01770), [publisher, published 19 March 2026](https://link.springer.com/article/10.1007/JHEP03(2026)186). Role: directly related published double-TsT construction in IIB, not an 11d two-sphere identity. §3, Eq. (3.1) defines TsT; the abstract and §3 identify the four-supercharge type-IIB family. Author initials are retained rather than guessing full names from initials.

## 7. Checked conclusions and outstanding comparisons

**Checked:** abstract provenance; the non-null equal-fiber boundary of Noris; its round-sphere four-supercharge null boundary and parameter mapping; older three-isometry solution-generating formulae; the distinction between the round warped-product classification and squashed AdS; seed exceptional bracket ratios; precise publication metadata for the bibliography. The null coefficient was independently visually rechecked at high resolution; there is no parameter-power discrepancy in that source formula.

**Not proved by this audit:** a complete duality-orbit classification; first discovery of either the eight-supercharge null chirality choice or the unequal-sphere counterexample; equivalence of the entire two-parameter Noris family to a particular multi-parameter LM chain; a full independent recalculation of Noris's KSE or charges. The local computational certificates establish local mathematical claims, not priority. Any new-contribution wording should therefore be confined to what the reconstruction actually derives and explicitly compares.

For an attributed reconstruction, a defensible opening is: “We give a self-contained reconstruction of the equal-three-fiber sector of the warped eleven-dimensional backgrounds described by Noris, together with a chirality-resolved null analysis and an unequal-sphere example outside the restricted flux ansatz.” Do not describe the last two additions as new to the literature without a completed comparison. Noris's equal-sphere deduction should be treated as ansatz-dependent; an unequal-sphere solution with extra flux components is not by itself a contradiction of the printed restricted-ansatz calculation.
