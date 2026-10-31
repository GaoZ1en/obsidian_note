# Supplied-text audit after the independent real-Barbero derivation

## Verdict and separation of evidence

**No substantive correction to the displayed Barbero, corner, tilt, or ADM formulas in the supplied sections 1–5 is needed.** Two proof interfaces should be made explicit if the finite statements are intended in the full regional/global category, rather than just in the stated benchmark chart.

This audit was requested only after completing and preserving the [independent report before supplied-text inspection](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/independent-report-pre-supplied-audit.md>) and the clean 21-check evidence. The audited text is [the parent report, sections 1–5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L13-L242>). The earlier [wall comparison:175–274](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L175-L274>) was then consulted as a **supplied input/check**, not as input to the fresh derivation. No passed calculation was rerun, and no parent file was edited. Complex reality and the refoliation example are outside this audit.

## 1. Finite regional objects must carry their common corner-normal data

**Location:** [finite arrows/stabilizers and ADM quotient:208–242](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L208-L242>), read together with [the correct tilt qualification:144–158](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L144-L158>).

The finite SO(3) statements for the canonical sector are correct: an oriented nondegenerate triad has trivial pure SO(3) stabilizer, two triads for the same spatial metric differ by a unique smooth rotation, all mapping-group components are included, and the inverse matches symmetric extrinsic data. The issue is the interface to **full regional objects**. The report correctly says that the tilt \(\chi\) is not determined by \((A,E)\). Therefore preservation of \((h,K)\) alone does not classify stabilizers of an object that additionally carries \(\chi\) or other common corner-normal data.

A precise version is one of the following:

- the finite correspondence is between \((E,K;\chi,\ldots)/SO(3)\) and \((h,\pi;\chi,\ldots)\), with the same normal/corner data carried along and all finite arrows preserving or intertwining them;
- the statement concerns only the \((E,K)\leftrightarrow(h,\pi)\) sector, with the common normal/corner data fixed externally;
- an additional reduction of those data is explicitly specified.

“Admitted diffeomorphisms” can already include this requirement, but it should be stated at the stabilizer sentence. Fixed wall metric makes \(\epsilon_S\delta\chi/\kappa\) exact and its two-form zero; that does not by itself identify all different \(\chi\)-labeled objects by the declared finite frame relation. This is a qualification of the finite quotient statement, not an error in the completed potential or in the caution about the Einstein IBVP.

## 2. The closed-cut type-II generator is chart/trivialization dependent

**Location:** [closed-cut generator:184–195](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L184-L195>), compared with the broader [compatible-bundle domain:57](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L57>).

The formula

\[
F_2[K,P]=\int_\Sigma P_i^a[\gamma K_a^i+\Gamma_a^i(\kappa\gamma P)]
\]

has the stated variation on a closed cut, and its regional differentiability term is exactly \(+\mathcal B_\gamma\). But \(\Gamma\) transforms affinely, so this component expression is a type-II generating functional in a **chosen global trivialization/canonical coordinate chart**, not a gauge-invariant scalar automatically descending to the full frame quotient or an arbitrary nontrivial compatible bundle category.

Add that chart qualification. It is already valid in the declared global-trivialization benchmark. No change is needed to the invertible bundlewise affine connection map, the completed symplectic equality, or the demonstration that \(\mathcal B_\gamma\) is nonclosed on a free-frame regional domain.

## 3. A post-audit clarification to my own independent report

This is **not a correction to the parent report**. The independent off-shell derivation initially called the symmetric wall tensor in its equation (16) “the wall second fundamental form.” With only \(T|_{\mathcal W}=0\), the tensor actually appearing there is

\[
\mathcal K^{(\omega)}_{ab}=e_{bI}D_a^\omega N^I,
\]

which is symmetric but may differ from the metric Levi-Civita wall extrinsic curvature by symmetric extrinsic contorsion. The supplied [earlier comparison:247–249](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L247-L249>) correctly makes this distinction.

The [current independent report:219–227](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/independent-report.md#L219-L227>) now labels this clarification explicitly and retains the untouched pre-audit version as evidence of the original independent derivation. The off-shell Dirichlet remainder is still zero because it multiplies \(\delta q_{ab}=0\). The clean CAS wall check already allowed an arbitrary symmetric connection-defined tensor, so its mathematics and all corner/relative-potential conclusions are unchanged. On the full torsionless branch used for the EC/metric comparison, the distinction disappears.

## Scope left unchanged

The supplied distinction between the genuinely exact ADM cap functional and the generally nonexact spatial frame one-form is correct. The Dirichlet tilt qualification is correct. The full SO(3) mapping-group relation is not inferred merely from infinitesimal degeneracy. The last paragraph of section 5 correctly avoids inferring timelike Dirichlet existence/uniqueness or arbitrary-data-to-solution surjectivity. No additional substantive correction was found within the requested scope.
