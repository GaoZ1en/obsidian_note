# Supplied-text audit of the finite one-loop sections

## Verdict and provenance

**The central formulas (7), (13), and both exact examples are correct under the stated quantum-lift and BV-Stokes assumptions. All concrete issues found in this supplied-text audit have now been corrected by the parent and verified by rereading the current source.** The initially displayed chain rule (12) had an ordinary-transpose ambiguity, which is sign-sensitive in supercoordinates. The parent replaced it by an explicitly ordered exact derivative identity. A corrupted LaTeX control sequence and a quadratic-form/Hessian symbol mismatch were also corrected. Sections 1–7 below preserve the initial findings; Section 8 records the observed corrections. No outstanding mathematical or rendering correction remains from this audit.

This is a **supplied-text follow-up audit**, performed after the [independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/proof.md>) was frozen. It is not an additional independent derivation of the supplied conclusions. That original proof, verification engine, and evidence files were not modified or rerun. The parent source was not edited.

Audited source: [note 20, §§1–2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L15-L206>), as read for this audit. Line references identify that observed version; later parent corrections can move them.

## 1. Compact Gaussian formula (7): correct

The expectation in [equations (6)–(7)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L89-L127>) is explicitly the unit-width Gaussian expectation. Its operator is

\[
\mathscr W=\tfrac12 C^{ij}\partial^L_j\partial^L_i,
\]

with covariance coefficients on the left and the rightmost derivative acting first. Consequently

\[
\langle\Gamma^{[2]}\rangle_K=[\mathscr W\Gamma^{[2]}]_0,
\quad
\langle\Gamma^{[1]}\ell^{[1]}\rangle_K
=[\mathscr W(\Gamma^{[1]}\ell^{[1]})]_0,
\]

\[
\langle\Gamma^{[1]}S^{[3]}\rangle_K
=\tfrac12[\mathscr W^2(\Gamma^{[1]}S^{[3]})]_0.
\]

Thus the compact expectation in (7) contains the required factor one half in the degree-four contraction. No extra explicit factor is missing. Rescaling the UV fluctuation by \(\sqrt\hbar\) makes the linear insertion times cubic action order \(\hbar\): the cubic interaction supplies \(-\hbar^{-1}\), while four Gaussian fluctuations supply \(\hbar^2\). The minus sign is therefore correct for the Euclidean weight.

The \(W_1\) formula agrees with the relative Gaussian normalization and the log amplitude. Both the quartic vacuum term and the two-cubic-vertex vacuum term cancel from the *normalized insertion* through their factors multiplying \(\Gamma(j)\). They are not being incorrectly omitted from the partition function.

One small symbol-type inconsistency is at [line 100](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L100>): `K^{[2]}=m eta chi` names a quadratic action by the symbol already assigned to its Hessian matrix. The contraction stated there is correct. For literal consistency this should be \(S^{[2]}=m\eta\chi\), or the quadratic form \(\eta^iK_{ij}\eta^j/2=m\eta\chi\).

## 2. Integrated identity (13): correct

Write \(R_tF=(F,\gamma_{0,t})_P\), \(Q_tF=(W_{0,t},F)_P\), and use the identity-initialized tree pullback \(\dot U_t=R_tU_t\), \(U_0=1\). Since a Hamiltonian vector field preserves the bracket and \(\dot W_0=R_tW_0\),

\[
\dot Q_t=[R_t,Q_t].
\]

For the supplied initial-value problem \(\dot B_t=R_tB_t+\gamma_{1,t}\), \(B_0=0\),

\[
\partial_t(Q_tB_t)=R_t(Q_tB_t)+Q_t\gamma_{1,t}.
\]

Combining this with \(\dot\ell_{P,t}=R_t\ell_{P,t}+\Delta_P\gamma_{0,t}\) and the one-loop transport equation gives

\[
\partial_t(W_{1,t}+\ell_{P,t}-Q_tB_t)
=R_t(W_{1,t}+\ell_{P,t}-Q_tB_t).
\]

The initial value is \(W_{1,0}\), hence

\[
W_{1,t}=U_tW_{1,0}-\ell_{P,t}+Q_tB_t,
\]

exactly [equation (13)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L170-L188>). In particular the sign of the BV-exact correction is plus. The half-Berezinian assertion is consistent with the stated right-trivialized pullback equation; it includes the convection term \(R_t\ell_{P,t}\). The usual initialization \(U_0=1\) is implicit in “tree pullback”; it is the initialization used in this derivation.

## 3. Odd-UV exact example: normalization and degrees correct

In [§2.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L137-L158>), the conjugates of \(\eta,\chi\) have ghost degrees \(-2,0\) respectively. The coordinate measures together have ghost degree \(-1+1=0\). The action has degree zero, \(p\eta\chi\) has degree minus one, and the normalization \(-\hbar/m\) has degree zero.

With \(M=m+tV'(x)\), the stated orientation gives

\[
\int d\chi\,d\eta\,e^{-M\eta\chi/\hbar}=-M/\hbar,
\]

so the normalization gives \(\rho_P=(M/m)e^{-V/\hbar}\) and fixes \(\rho_{P,0}=e^{-V/\hbar}\). The insertion is

\[
I(p\eta\chi e^{-S/\hbar})=-\hbar p\,e^{-V/\hbar}/m,
\quad \gamma=-\hbar p/M.
\]

The source coefficient \(\nu=1\) is consistent because \(\Delta\Gamma=0\). The condition \(V'(0)=0\) makes the formal free odd Hessian equal to the fixed nonzero \(m\). The nonzero order-\(\hbar^2\) terms cancel exactly as asserted; no normalization, degree, or Euclidean-sign correction is needed.

## 4. Even-UV example: direct independent audit of the supplied expression

Use the degrees and parity assignment stated in the linked [tree example](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L385-L405>): \(q,r,u,b,e\) even; \(p,s,c,d,v\) odd; \(\operatorname{gh}b=\operatorname{gh}e=-2\), \(\operatorname{gh}p=\operatorname{gh}s=\operatorname{gh}v=-1\), \(\operatorname{gh}c=\operatorname{gh}d=1\). Thus \(pc,sd,bcrd\) have degree zero, \(bcu\) and \(tbc\) have degree minus one, and \(\nu=e^{-tu}\) has degree zero. No nilpotence of the even variable \(b\) is used.

For the normalized real/formal Gaussian

\[
I_0(F)=(2\pi\hbar)^{-1/2}\int du\,
 e^{-(u+r^2)^2/(2\hbar)}F(u),
\]

completion of the square gives

\[
I_0(e^{au})=e^{-ar^2+\hbar a^2/2},\qquad
I_0(ue^{-tu})=(-r^2-\hbar t)e^{tr^2+\hbar t^2/2}.
\]

Put \(E_0=sd+2tbcrd\). Since \((pc)^2=0\), and the log-amplitude cancels the exponential inside the \(pc\) insertion,

\[
I(\nu e^{-S/\hbar})
=e^{-E_0/\hbar}\left[e^{tr^2+\hbar t^2/2}-\frac{pc}{\hbar}\right].
\]

Taking its exact logarithm gives the supplied \(W\) in [equation (14)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L190-L206>). For the generator, \(bc\,pc=0\) by the repeated odd variable \(c\); therefore the normalized insertion is exactly \(-bc(r^2+\hbar t)\). This cancellation is valid without treating \(b\) as nilpotent.

The full source checks are also consistent:

\[
\Delta\Gamma=-u,\quad \dot{\log\nu}=-u,
\quad (\log\nu,\Gamma)=0,
\]

\[
\Delta S=-2trd,\qquad (S,\log\nu)=2trd.
\]

Indeed \(\widehat S=S+\hbar tu\) solves the full Euclidean QME exactly. Finally, direct graded differentiation of the one-loop insertion gives

\[
(W_0,-tbc)_P=-t e^{-tr^2}pc,
\]

so the quoted omission residual has the correct sign. No mathematical correction to this example was found.

## 5. Actual chain-rule issue: ordinary transpose is false

[Equation (12)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L160-L168>) uses \((D\Phi)^T\) in a supercoordinate discussion. If \(T\) is ordinary transpose, it is false already for a linear map, when the second-derivative term vanishes.

Take even \(z\), odd \(\eta,\chi\), an external odd \(\alpha\), and even constants \(A,B\). Let

\[
\Phi:\quad z'=z+\alpha\eta,\quad \eta'=\eta,\quad\chi'=\chi,
\qquad S_0=Az'^2/2+B\eta'\chi'.
\]

Then

\[
S_0\circ\Phi=Az^2/2+Az\alpha\eta+B\eta\chi,
\qquad H_{\eta z}=-A\alpha
\]

in the Hessian convention of note 20. But ordinary matrix transpose yields \([(D\Phi)^TH_0D\Phi]_{\eta z}=+A\alpha\). The residual is \(-2A\alpha\ne0\). The graded transpose yields the correct full Hessian.

**Minimal mathematical resolution:** explicitly call (12) a schematic graded chain rule, or specify the graded transpose and the Koszul/derivative ordering for its second term. Its conceptual conclusion about retained-gradient contributions is correct; the objection is to reading the displayed ordinary-transpose matrix identity literally. This is not a counterexample to the one-loop transport theorem.

A new [narrow verification program](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note20-audit-20261031-88393300bd/check_super_chain_rule.py>) checked this counterexample and both examples' ghost degrees with 18 exact checks. It does not import or rerun the original 1,271-check engine. The [exact results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note20-audit-20261031-88393300bd/narrow-check-results.json>) report the ordinary-transpose residual \(-2A\alpha\) and zero graded-transpose residual.

## 6. Actual rendering defect, incidentally observed outside scope

At the observed [line 225](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L223-L227>), equation (16) contains the control character U+0008 (backspace) immediately before `igl`, where `\bigl` is intended. This is not a font or style issue: the LaTeX control sequence is corrupted. A targeted control-character search returned exactly one match in the file, at that line. No mathematical audit of the continuum sections is claimed here.

## 7. Actual tool diagnostics

The narrow Sage call returned:

```text
Sage run; ok=true
result: None
resultType: builtins.NoneType
stdout: PASS: 18 narrow exact checks; ordinary-transpose residual = -2*A*alpha; graded residual = 0.
  Supplied-text audit only; frozen independent engine was not imported or rerun.
elapsedMs: 3994
```

There was no exception, failed check, or truncation. Actual returned responses are preserved as the [raw payload](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note20-audit-20261031-88393300bd/tool-response.raw.json>) and the [readable payload](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note20-audit-20261031-88393300bd/tool-response.returned.txt>). The audit-directory creation shell command explicitly returned exit code zero.

## 8. Parent corrections reread and verified

After the initial findings were communicated, the parent revised the source. The current [lines 160–168](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L160-L168>) now explicitly warn that ordinary transpose is not the supercoordinate rule, and equation (12) reads

\[
\left.\partial^L_\chi\partial^L_\eta V(x+t\eta\chi)\right|_{\eta=\chi=0}=tV'(x).
\]

This is correct: \(V(x+t\eta\chi)=V(x)+tV'(x)\eta\chi\), and the written derivative order returns \(tV'(x)\). It fixes the sign-sensitive issue without introducing an implicit transpose convention. The counterexample in Section 5 remains useful evidence against the *former ordinary-transpose reading*, not an objection to this corrected equation.

The current [line 100](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L100>) now correctly writes \(S^{[2]}=m\eta\chi\). The current [line 225](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L225>) contains the proper `\bigl` sequence. A repeated targeted search for non-newline control characters returned **no matches**.

These checks were a current-source reread and the same exact nilpotent algebra, not a rerun of the frozen engine. No further kernel call was needed. The independent derivation and its evidence remain unchanged.
