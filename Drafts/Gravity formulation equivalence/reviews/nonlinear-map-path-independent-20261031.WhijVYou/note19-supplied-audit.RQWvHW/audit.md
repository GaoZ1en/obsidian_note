# Supplied-note audit: note19 §§1–2 and 4

## Verdict

**The requested formulas are correct in the stated conventions. No correction is needed in §§1–2 or in the quartic formulas of §4.** The right-action generator is exactly the negative of the independently derived source-pullback left Hamiltonian. The coframe-resolvent sign, all displayed inverse-\(\kappa\) coefficients, and the factor of one half in the quartic logarithm are consistent.

This is a **post-freeze supplied-text audit**, not a relabeling of the initial independent derivation. The reviewed [supplied snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md>) has SHA-256

`c8b23c76b1e7526b4cf4c284f01778ac9a8d5fbdfd9baafbb6fd75903ff034f9`.

The source note was [note19](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md>). No source note or initial frozen artifact was edited. The initial independent [proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/derivation.md>) and its [freeze](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/FREEZE.md>) predate this audit.

## 1. Conventions, alignment, and the full map

The snapshot's [§1:35–68](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L35-L68>) agrees with the independently derived chart:

\[
\eta=\lambda+\iota_\xi\omega_0,\quad \zeta=\iota_\xi e_0,
\quad E=e^*,\ W=\omega^*,\ R=\lambda^*,\quad
T=e_0^{-T}(\xi^*-\omega_0^T\lambda^*).
\]

The connection potential is eliminated from the final covariant tensor formulas; no bounded bare-\(\omega_0\) multiplier is required. The superfield antifield signs and all \(\kappa\) factors match the preceding contraction. For any function \(A\), the odd parity of \(\Gamma\) gives

\[
(A,\Gamma)=-(\Gamma,A)=(-\Gamma,A).
\]

Therefore the note's right convention \(\partial_tU_tA=(U_tA,\Gamma_t)\) is precisely the independent left convention with \(H_t=-\Gamma_t\), with no parity-dependent exception for the action or for coordinates.

The relative type-II polynomial in [§2.1:91–113](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L91-L113>) agrees term by term with the original generator after linear alignment. Removing the fixed physical background terms **before integration** is the correct noncompact interpretation.

The translation-antifield formula and the entire field/ghost dictionary in [§2.1:115–134](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L115-L134>) match the independent exact map. In particular the source \(W\wedge\iota_\mu E\) has a plus sign in \(\Pi_t\), while the old \(wR\) term has a minus sign. The original 96 coordinate checks already verify every second- and third-degree component of these equations. Their exact formulas are established by the type-II substitution, not only by those finite jets.

## 2. Exact source generator and the resolvent

The snapshot's equations (12)–(16), [lines140–185](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L140-L185>), are correct:

\[
\Gamma_t=\partial_t\mathcal F_t(q,P_t)
=\int[Riw+\Pi_tif+\kappa^{-1}E\wedge iW]
=\mathcal A((1+tF)^{-1}\xi),\qquad F=e_0^{-1}f.
\]

The contraction identities are genuinely three-dimensional and coefficient-sensitive. In particular \(E\wedge iW=W\wedge iE\), while moving the odd \(\xi\) through the odd \(W\) in the \(\Pi_tif\) contribution gives an additional minus sign. With these signs the resolvent is \((1+tF)^{-1}\), not \((1-tF)^{-1}\).

Consequently

\[
\Gamma_3=\mathcal A(\xi)=-G_3,
\qquad \Gamma_4=-\mathcal A(F\xi)=-2G_4,
\]

where the independent \(G_4\) is the degree-four left **logarithm** Hamiltonian. Thus the right logarithm is \(\Gamma_3+\Gamma_4/2+O(5)\), not \(\Gamma_3+\Gamma_4+O(5)\).

A new native-Sage audit using the previously frozen algebra, not the parent's source, checks the component-derivative formula

\[
\Gamma_4=2\mathcal F_4-\sum_A
(\partial_{P_A}\mathcal F_3)(\partial_{q^A}\mathcal F_3)
\]

with exactly the note's ordering. It also compares the two **exact** rational generators after multiplying by \(\det(1+tF)\), without expanding in \(f\). Each cleared numerator has 348 nonzero terms; their difference vanishes. This strengthens the initial Hamiltonian jet test to an exact rational test, but remains ultralocal rather than spectral.

## 3. Cubic endpoints and the noncubic interpolation

The distinction in [§2.3:191–216](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L191-L216>) is correct. With \(V_0=S_{c,3}\), \(V_1=S_{g,3}\), the independent left identities convert to

\[
V_1=V_0+(S_2,\Gamma_3),
\]
\[
(S_2,\Gamma_4)+((S_2,\Gamma_3),\Gamma_3)+2(V_0,\Gamma_3)=0.
\]

Integrating the right evolution therefore gives

\[
V_{3,t}=(1-t)V_0+tV_1,\qquad
V_{4,t}=t(1-t)(V_0,\Gamma_3).
\]

The intermediate quartic need not vanish. The supplied scaling identity is also exact, for a different input action:

\[
\begin{aligned}
\Phi_t^*(S_2+tV_0)(z)
&=t^{-2}(S_2+V_0)(\Phi(tz))\\
&=t^{-2}(S_2+V_1)(tz)=S_2(z)+tV_1(z).
\end{aligned}
\]

This proof uses \(\Phi_t=t^{-1}\Phi(tz)\) and endpoint action transport. It cannot be used to delete the quartic of the fixed-coupling action \(\Phi_t^*(S_2+V_0)\).

## 4. Retained quartic normalization

The formulas in [§4:270–319](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/supplied-note19-snapshot.md#L270-L319>) follow correctly from the stationary-transfer equation and its transported generator. This conclusion uses the stated cyclic contraction and stationary transport hypotheses; it is not a separate new proof of the full all-orders theorem or its smooth-domain extension.

Let \(v_{3,t}=(1-t)v_0+tv_1\). The UV stationary equation at second order gives

\[
y_{2,t}=-h_Tv_{3,t}.
\]

The quadratic and linear-in-\(y_2\) cubic terms combine to

\[
S_{\mathrm{tree},t}^{(4)}=V_{4,t}|_P-	frac12\mathcal B(v_{3,t},h_Tv_{3,t}),
\]

with the factor \(1/2\) fixed by stationarity. At the CS endpoint \(v_0=[x,x]/2\), this is exactly the earlier \(-\mathcal B([x,x],h_T[x,x])/8\). No further inverse-\(\kappa\) coefficient belongs in front of the cyclic pairing.

Taylor expansion of \(\Gamma_t(x+y_t)\) gives

\[
\gamma_{3,t}=\Gamma_3|_P,\qquad
\gamma_{4,t}=t\Gamma_4|_P+D\Gamma_3[y_{2,t}].
\]

Integration from zero to one, and the absence of a quartic self-commutator of the time-independent cubic generator, then gives exactly

\[
\mathcal H_4=\frac12\Gamma_4
-\frac12D\Gamma_3[h_T(v_0+v_1)].
\]

Both factors of one half are necessary and have different origins: the first integrates \(t\Gamma_4\), the second averages the two cubic gradients in \(y_{2,t}\). The action formula (29) is the corresponding right-BCH expansion. This is not the logarithm of a raw projected nonlinear dictionary, and the UV-induced term cannot in general be discarded.

## 5. New audit evidence and limits

The [audit source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/check_supplied_note19.py>) loads only definitions from the independently frozen source after verifying its SHA-256. It does not run or overwrite the original result-writing code, and does not import the parent's verification implementation.

The actual [audit results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/audit_results.json>) contain **8/8 passing labels**: five exact zero-residual checks and three expected-nonzero controls. The latter detect omission of \(2\mathcal F_4\) (18 terms), reversal of the resolvent quartic sign (108 terms), and loss of the half-factor (108 terms). Full [actual diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/audit_actual_diagnostics.txt>) and the [raw successful return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/successful_tool_return.json>) are saved.

One initial audit call failed in Sage's generic exterior-element division conversion (`no conversion of this ring to a Singular ring defined`). Replacing division by multiplication with the coefficient-field inverse fixed this API/coercion error. That failed call is not counted as a mathematical check. The final call completed successfully in 9559 ms, with no warnings. The completed source, result, supplied snapshot, and report have their own [audit manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/note19-supplied-audit.RQWvHW/SHA256SUMS.audit>).

No full independent audit of the analytic assertions in §5, the general theorem in §3, or the global introductory claim is being claimed here. The targeted algebraic statements in §§1–2 and the retained quartic normalization in §4 are supported as described. Initial frozen files remain unchanged.
