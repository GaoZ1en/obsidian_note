# Supplied-text audit of note 17, after the independent freeze

## Verdict and scope

**The audited claims are correct under the stated full-BV, paired-projector hypotheses.** In particular the real ghost witness has the displayed positive sign and factor \(1/2\); the quadratic trace-log cancellation coexists with a canonical defect; the added cubic coefficient is correct; and the sharp-cube symbol excludes a universal local cancellation of fixed finite derivative order.

This is a **supplied-text audit**, not an independent discovery claim. It was undertaken only after [the independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/report.frozen-independent.md>) and its kernel evidence were frozen. The supplied text inspected was [note 17](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md>), §§1–4 and §§7–8, including the subsequently added cubic subsection after Proposition 2. Sections 5–6 were not audited. No existing source was changed and no settled kernel suite was rerun.

Two precision additions are useful:

1. When identifying the derivative as \(D\Psi_{P_N}\) at \(e=(1+\varepsilon b)\delta\), explicitly require \(b\in\operatorname{ran}P_N\), or specify an affine background carrying discarded physical modes. The actual cosine examples with \(N\ge1\) already satisfy the former condition.
2. When displaying a parity-sorted Darboux adjoint, include the fixed sign normalization of ghost pairs described below. Merely swapping an odd position and its even antifield does not preserve the displayed unit pairing.

The fixed-order/universal-in-profile restriction in the locality claim must be retained. The combined density coefficient multiplying the leakage trace in §§5–6 is outside this audit's scope.

## 1. Explicit adjoint convention and ghost-pair sign

The coordinate convention in note 16 is \((q^A,p_B)=\delta^A{}_B\), \((p_B,q^A)=-\delta^A{}_B\). To pass to all-even coordinates \(x\) followed by all-odd dual coordinates \(\theta\), use

\[
\begin{array}{c|cc}
&x&\theta\\\hline
|q|=0&q&p\\
|q|=1&p&-q
\end{array}
\]

so that \((x,\theta)=+1\) for both kinds of pair. Equivalently one may put the minus sign on \(x\). This is a fixed background-independent change, applied consistently on source and target. It is included implicitly in the phrase “dual Darboux basis” in the frozen report, but should be explicit if the block formula is quoted.

In this normalized coefficient-left convention,

\[
T=\begin{pmatrix}a&b\\c&d\end{pmatrix}
\quad\Longrightarrow\quad
T^\ddagger=\begin{pmatrix}d^t&b^t\\-c^t&a^t\end{pmatrix},
\qquad |b|=|c|=1.
\]

This is an array transpose with the coefficient anticommutation rules retained, not a Hermitian transpose. In particular \((bc)^t=-c^tb^t\). It gives
\((TU)^\ddagger=U^\ddagger T^\ddagger\),
\(\operatorname{Str}T^\ddagger=-\operatorname{Str}T\),
and infinitesimally \(d=-a^t,b^t=-b,c^t=c\).

No change to the scalar body blocks \(f\) and \(f^{-1}\) results from the fixed ghost-pair sign normalization. The sign occurs in both source and target coordinate identifications.

## 2. Propositions 1–2 and the added cubic formula

The exact leakage identity and its sign follow from

\[
PM^\ddagger(P+R)MP=P,
\quad
M_P^\ddagger M_P-P=-(RMP)^\ddagger(RMP).
\]

Using \(X^\ddagger=-X\) gives the stated \(+\varepsilon^2PXRXP\). There is no positivity assertion for an odd pairing. The finite matrix logarithm expansion gives

\[
\log\operatorname{Ber}M_P-\operatorname{Str}_P(P(\log M)P)
=\tfrac12\varepsilon^2\operatorname{Str}_P(PXRXP)+O(\varepsilon^3),
\]

and the coefficient vanishes because the leakage endomorphism is self-adjoint while the adjoint reverses supertrace. The proof genuinely retains the odd-coefficient blocks.

For the added cubic result, let \(K=\log M=\varepsilon X+\varepsilon^2Z+\cdots\). Both \(X\) and \(Z\) are anti-adjoint. The order-three contribution from the quadratic part of the compression functional is proportional to

\[
\operatorname{Str}_P(PXRZP+PZ RXP)=0,
\]

since the two terms are exchanged by \(\ddagger\). The cubic part involving \(X\) alone is

\[
\tfrac16\operatorname{Str}_P((X^3)_{PP})
-\tfrac12\operatorname{Str}_P(X_{PP}(X^2)_{PP})
+\tfrac13\operatorname{Str}_P(X_{PP}^3).
\]

Writing \(\mathsf A=X_{PP},\mathsf B=X_{PR},\mathsf C=X_{RP},\mathsf D=X_{RR}\) and using cyclicity only within the finite retained supertrace reduces this expression to

\[
\frac16\operatorname{Str}_P(\mathsf B\mathsf D\mathsf C-\mathsf A\mathsf B\mathsf C).
\]

Thus equation (5a) does not omit an unspecified \(Y\) or \(Z\) contribution. The exact body example \(A(t)=\bigl(\begin{smallmatrix}1+t&t\\t&1\end{smallmatrix}\bigr)\) has \(\mathsf A=\operatorname{diag}(1,-1)\), \(\mathsf B\mathsf C=1_{1|1}\), and \(\mathsf D=0\), giving \(-t^3/3\). This agrees with the already archived exterior-algebra run upon setting \(\eta=\zeta=0\). No new kernel run is needed for this audit.

## 3. Full gravitational body and the retained-basepoint condition

The complete body derivative has the odd translation-ghost block \(A=PfP\), and its even ghost-antifield block is \(B^t=(Pf^{-1}P)^t\). Every other block is an identity at ghost/antifield zero. Thus

\[
\operatorname{Ber}D\Psi_P=(\det B/\det A)^3
\]

and

\[
AB-1=\varepsilon^2\bigl(Pb^2P-(PbP)^2\bigr)+O(\varepsilon^3)
\]

have the stated powers and signs. The scalar leakage for \(b=\cos x^1\) is \(1/4\) on each one-dimensional endpoint mode. The two endpoint contributions, multiplied by the \(n^2\) transverse degeneracy, give \(\mathcal T_N=n^2/2\).

The finite generator-first map uses \(A^{-t}\), not \((Pf^{-1}P)^t\), on the even dual. Its full Berezinian is therefore \((\det A)^{-6}\). This is a distinct map, not an alternate evaluation of the raw compression.

**Basepoint precision:** calling this Jacobian \(D\Psi_P\), with \(\Psi_P=P\Phi\iota_P\) on a fixed retained affine chart, presupposes that its physical basepoint lies in that chart. Add \(b\in\operatorname{ran}P_N\) near the general ansatz. The cosine model satisfies this, and a fixed finite Fourier profile satisfies it for all sufficiently large cutoffs.

This also records a limitation of the independent report's optional exact zero-mode example: there the nonconstant \(f=1+\varepsilon\cos x^1\) is an **externally chosen coframe**, and the computed object is the tangent compression \(P D\Phi(z_\varepsilon)P\). It is not the derivative of a raw nonlinear constant-mode map evaluated at a retained nonconstant coframe. The exact operator-compression formulas remain valid, but this distinction is necessary if that example is reused. The note 17 examples with \(N\ge1\) avoid this issue.

## 4. Supplied real ghost witness: sign, factor, and full-space meaning

Let \(f=\cos(Nx^1)\), \(g=\sin(Nx^1)\), and

\[
\rho=\vartheta_1J_1f+\vartheta_2J_2f+\vartheta_3J_1g,
\qquad\tau=0.
\]

The component-first Lie bracket and \([J_a,J_b]=\epsilon_{ab}{}^cJ_c\) give

\[
[\rho,\rho]
=2\vartheta_1\vartheta_2J_3f^2
-2\vartheta_2\vartheta_3J_3fg.
\]

Hence

\[
Q\rho=-\vartheta_1\vartheta_2J_3f^2
+\vartheta_2\vartheta_3J_3fg,
\quad
Q_N\rho=-\tfrac12\vartheta_1\vartheta_2J_3.
\]

For the full projected vector field, before evaluation on this sparse configuration,

\[
Q_N^2c=-P[Q_Nc,c]
=\tfrac12P[P[c,c],c]
=-\tfrac12P[(1-P)[c,c],c],
\]

where the last step uses \([[c,c],c]=0\). This confirms equation (13), including its sign. At the displayed configuration,

\[
[Q_N\rho,\rho]
=-\tfrac12\vartheta_1\vartheta_2\vartheta_3[J_3,J_1]g
=-\tfrac12\vartheta_1\vartheta_2\vartheta_3J_2g,
\]

so

\[
\boxed{Q_N^2\rho=+\tfrac12\vartheta_1\vartheta_2\vartheta_3J_2\sin(Nx^1).}
\]

In the unprojected calculation, the two cubic contributions to \([Q\rho,\rho]\) are respectively
\(-\vartheta_{123}J_2f^2g\) and
\(+\vartheta_{123}J_2f^2g\), and cancel. The sparse coordinate substitution must come **after** applying the full vector field: treating only three Grassmann variables as dynamical with invented variations would not be this calculation.

At \(\tau=0\), the term quadratic in translation ghosts in \(Q\rho\) and its first derivative vanish; \(Q\tau\) vanishes as well. Thus the full \([P,P]=-J\) algebra cannot cancel the witness. The minimal ghost transformation is independent of physical fields and antifields, so those directions cannot supply a missing derivative term. The statement is genuinely about the full retained gravitational ghost sector.

Consequently \(Q_N^2\ne0\) implies \((S_N,S_N)_N\ne0\). In

\[
\frac12(S_N+\hbar S_1, S_N+\hbar S_1)
-i\hbar\Delta(S_N+\hbar S_1)=0,
\]

the order-\(\hbar^0\) term is \((S_N,S_N)/2\). An \(O(\hbar)\) density or action correction cannot remove it. A density chosen with a singular \(1/\hbar\) exponent would instead amount to changing the classical action, not to the asserted perturbative quantum counterterm.

## 5. Exact cube counting and the locality qualification

For real \(b\), using the normalized Fourier basis,

\[
\operatorname{Tr}(Pb(1-P)bP)
=\sum_{k\in K_N}\sum_{\ell\notin K_N}|b_{\ell-k}|^2.
\]

At fixed shift \(q\), the number of retained \(k\) for which \(k+q\) is still retained is

\[
|K_N\cap(K_N-q)|=\prod_{i=1}^3(n-|q_i|)_+.
\]

This proves equation (23) exactly. If the Fourier support of \(b\) is fixed and \(N\) is large enough, expansion of the product gives

\[
n^3-\prod_i(n-|q_i|)
=n^2\sum_i|q_i|-n\sum_{i<j}|q_iq_j|+|q_1q_2q_3|.
\]

Therefore equation (24) and its normalization are correct.

A local functional smooth near the homogeneous background, with a uniformly bounded number of derivatives, has a quadratic Fourier symbol polynomial in \(q\). Translation invariance can be imposed by averaging any proposed local functional over the torus without changing its derivative order. Along the axis \(q=(m,0,0)\), the exact leakage symbol is \(n^2|m|\) for \(|m|<n\). The real self-adjoint quadratic local symbol along this axis is even in \(m\). A polynomial of fixed bounded degree cannot equal \(|m|\) on arbitrarily many positive and negative integers. This remains true if its coefficients depend on \(N\): for sufficiently many positive retained integers it would have to equal the odd polynomial \(m\), contradicting evenness.

This establishes the stated exclusion of a **universal, fixed-finite-derivative-order** cancellation. It does not exclude:

- fitting a coefficient to one chosen profile;
- interpolation on one fixed finite mode set using derivative order that grows with \(N\);
- a nonlocal pseudodifferential term with symbol \(\sum_i|q_i|\);
- new auxiliary fields whose elimination generates a nonlocal quadratic functional;
- a different regulator or a different density prescription.

The hypothesis that \(N\) contains the Fourier support of \(f^2\), used in the supplied inverse-chart discussion, does not save a universal bounded-order local cancellation: one may still consider all fixed finitely supported profiles and then send \(N\) large enough. The actual inverse-chart coefficient from §§5–6 has not been independently checked here; this section audits the trace formula and the locality inference conditional on that coefficient.

## 6. Transfer statement

Section 8 states a required conditional structure, not a completed transfer, and is correct in that role. A precise sufficient framework is a compatible cyclic BV contraction with free differential \(Q_0\), projection \(P\), and UV homotopy \(h\) satisfying \(Q_0h+hQ_0=1-P\), together with the gauge-fixing/domain assumptions needed for BV pushforward. For a cubic source action, the first additional tree vertex is quartic and obeys

\[
(S_2,S_{4,\mathrm{eff}})
+\tfrac12(S_{3,P},S_{3,P})=0
\]

at the first missing-channel order. This is how transferred higher vertices repair the raw restriction, not how a canonical coordinate change repairs it. A noncyclic homotopy may transfer an algebraic differential without automatically giving a cyclic action; the BV-compatible qualification matters. Neither this contraction nor its AdS domains is supplied by the torus witness.

## 7. Evidence integrity and safe replay

The independent evidence remains at:

- [Frozen independent proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/report.frozen-independent.md>).
- [Exact executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/checks.py>).
- [Actual successful output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/actual-output.txt>).
- [Actual result metadata](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/actual-results.json>).
- [Frozen SHA256 values](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/frozen-sha256.txt>).
- [Harness-preserved raw Sage return](</Users/koishi/.dsh/research-results/session-8b689b102fbe/a2e07ee2fa5c-research-result.json>).

**Do not replay the frozen script in place.** Its literal `OUT` directory points at the evidence directory, and it writes output and metadata there. For safe replay, first create another unique review directory, copy the source into that directory under the same basename, and change `OUT` only in that copy. The basename matters because the script records the hash of `OUT / 'checks.py'`. Execute the copied source, retaining the new output, metadata, and MCP raw-return path separately. Alternatively use a separately archived driver with an explicitly redirected output destination and provenance; do not silently edit the frozen source or overwrite its outputs.

The two explanatory precisions above—ghost-pair sign normalization and the externally chosen basepoint in the zero-mode tangent example—are recorded in this addendum rather than retroactively modifying the frozen independent proof.

## 8. Read-back of the supplied repairs

The subsequently revised passages were read back directly from the current source. **All requested repairs below are present and correct:**

- [Parity normalization and adjoint:28–36](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L28-L36>) now explicitly maps an original odd ghost pair to \(x=p,\vartheta=-q\), displays \(T^\ddagger=\bigl(\begin{smallmatrix}d^t&b^t\\-c^t&a^t\end{smallmatrix}\bigr)\), and retains \((bc)^t=-c^tb^t\). The ordinary array transpose is distinguished from Hermitian conjugation and from an ungraded transpose of the full matrix.
- [Operator scope:47](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L47>) now requires the displayed compositions and logarithmic branch to exist, gives bounded families near the identity as a sufficient setting, and excludes treating an unbounded derivative-dependent shear as justified merely by a formal matrix.
- [Retained basepoint:129–145](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L129-L145>) now explicitly requires smooth real \(b\in\operatorname{ran}P_N\). Thus \(e=(1+\varepsilon b)\delta\) is an admissible retained evaluation point of the raw nonlinear map, resolving the qualification identified in §3 of this audit.
- [Cubic subsection:99–117](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L99-L117>) correctly preserves the full grading of the cutoff blocks, the coefficient \(\operatorname{Str}(\mathsf B\mathsf D\mathsf C-\mathsf A\mathsf B\mathsf C)/6\), the anti-adjoint \(Z\) argument, and the body-family gap \(-t^3/3+O(t^4)\). The reference points to the frozen independent derivation. No new kernel computation was necessary.
- [Locality scope:370](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/17 Spectral BV compression and master-equation obstruction.md#L370>) now explicitly says fixed derivative order, uniform in the cutoff and valid for all profiles, and excludes cutoff-dependent growing-order interpolation from the claimed no-go statement. This is precisely the qualified locality conclusion established in §5 of this audit.

The zero-mode external-background example remains a tangent-compression example as explained in §3 above; it is not being used to justify a nonlinear retained-basepoint claim in the supplied text. The lower-density sections remain outside this audit. Section 8 of the supplied note was read only for scope and continues to describe a required transfer rather than a constructed one; the cyclic BV-compatible contraction qualification in §6 above remains the precise sufficient interpretation.

Only this separate audit was appended. The frozen report, executed source, actual output, metadata, and raw-return paths were not changed or replayed.
