# Follow-up: what odd-class parity removes in the heat limit

## Result and precise scope

**Under the odd-class/Kontsevich–Vishik hypotheses, the finite part of the noncyclic defect vanishes. For the actual scalar-principal Laplace-type weight in dimension three, the defect itself tends to zero, provided the global remainders satisfy the stated trace-class assumptions.** Thus the finite weighted examples in the [main review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/report.md>) must **not** be promoted to a nonzero AdS regulator-removal defect.

More precisely, with \(H=\delta A\), \(A,H\) odd-class of order at most \(-1\), and \(\Delta\) an admissible positive even-order odd-class weight,

\[
\boxed{\operatorname{FP}_{\varepsilon\downarrow0}\mathcal C_\varepsilon(A;H)=0.}
\tag{K1}
\]

In dimension three, for order-two \(\Delta\) with **scalar principal symbol**,

\[
\boxed{\mathcal C_\varepsilon(A;H)\longrightarrow0.}
\tag{K2}
\]

On a closed classical calculus, the rate is \(O(\sqrt\varepsilon)\). With only arbitrary trace-class global remainders it is \(O(\sqrt\varepsilon)+o(1)\); a quantitative rate for those remainders needs stronger estimates.

For a differentiable family of admissible odd-class weights of fixed even order, with uniform differentiable heat asymptotics,

\[
\boxed{\operatorname{FP}_{\varepsilon\downarrow0}
 \operatorname{STr}\bigl((\delta e^{-\varepsilon\Delta})P_3(A)\bigr)=0,}
\tag{K3}
\]

but its **ordinary limit need not exist**. A scalar-principal example below diverges as \(\varepsilon^{-1/2}\). These conclusions remove a specific determinant trace defect; they do not supply a gravitational source/generator Ward identity or BV-Stokes map.

## 1. Analytic hypotheses, including the noncompact qualification

Use the convention

\[
a_{m-j}(x,-\xi)=(-1)^{m-j}a_{m-j}(x,\xi)
\tag{K4}
\]

for an odd-class classical pseudodifferential operator of integer order \(m\). This is often called **even-even parity**; “odd-class” here is a covariable-symbol property, not BV Grassmann parity. All operators \(A,H,\Delta\) remain even as UV superoperators for the real-parameter Ward variation. The graded extension is coefficientwise with the usual supertrace.

A sufficient setting is a closed three-manifold without boundary, a finite-rank graded bundle, and

\[
A,H\in\Psi^{-1}_{\rm odd},\qquad
\Delta\in\Psi^q_{\rm odd},\quad q\in2\mathbb N,
\]

with \(\Delta\) positive and invertible (or a compatible admissible sectorial weight supporting the same heat calculus). Smooth variations preserve the class, order, domains and spectral cut.

For a complete noncompact manifold, the statements are **conditional** on a calculus obtained from compact/properly supported odd-class pieces with no spatial boundary term, plus global remainders for which:

1. all heat traces at positive time exist;
2. the local heat expansion integrates globally and its constant term is the canonical trace plus the ordinary traces of the trace-class remainders;
3. products involving a trace-class remainder remain trace class, cyclicity is valid, and heat multipliers converge strongly and are uniformly bounded;
4. for (K3), differentiation of the heat expansion is uniform and permissible, and the differentiated heat multiplier has the corresponding strong-zero/uniform-bound property on trace-class remainders.

These hypotheses allow the canonical trace to remain a trace on the relevant algebra of bounded negative-order operators plus the trace-class ideal. Merely saying that the **principal symbol** has the right parity, or that one multiplication coefficient is compactly supported, does not establish these global conditions on complete AdS.

A fixed spatial weight \(M_\chi e^{-\varepsilon\Delta}M_\chi\) is a different functional. Its finite part is generally \(\operatorname{TR}(\chi P\chi)\), not \(\operatorname{TR}P\). In particular, \(\operatorname{TR}(\chi^2[U,V])\) need not vanish. The localization must preserve the global commutator argument; one must not insert a fixed \(\chi\) into (K1)–(K3) silently.

### The canonical-trace input

For an odd-class integer-order operator \(P\) in odd dimension and an even-order odd-class weight,

\[
\operatorname{FP}_{\varepsilon\downarrow0}
  \operatorname{STr}(Pe^{-\varepsilon\Delta})
 =\operatorname{STR}_{\rm KV}P,
\qquad
\operatorname{STR}_{\rm KV}[U,V]=0
\tag{K5}
\]

for the relevant odd-class operators. The finite part is independent of the admissible weight. This is an analytic theorem, not a finite-matrix inference. See [Grubb, Definition 1.1, Theorem 1.3, Theorem 1.7, and heat expansion (1.6)](https://ar5iv.labs.arxiv.org/html/math/0311081). The terminology and trace property are also stated in [Braverman, §§1.1 and 2.1](https://ar5iv.labs.arxiv.org/html/math-ph/0702060). The statements cited there concern closed manifolds; the preceding noncompact extension is an explicit additional hypothesis, not a claim that those references prove the whole AdS case.

Only HTML evidence was used, not a visually checked PDF. The [saved Grubb HTML fetch](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/Grubb-HTML-fetch-evidence.txt>) records the consulted text; its extracted formula layout is not a new authoritative typesetting.

## 2. Why the noncyclic defect has zero canonical finite part

The exact finite-\(\varepsilon\) expression in the main review can be rewritten by ordinary cyclicity of the positive-time trace-class products as

\[
\boxed{\begin{aligned}
\mathcal C_\varepsilon(A;H)
={}&-\frac12\operatorname{STr}
  \bigl(e^{-\varepsilon\Delta}[H,A]\bigr)\\
&+\frac13\operatorname{STr}\bigl(e^{-\varepsilon\Delta}
       ([AH,A]+[H,A^2])\bigr).
\end{aligned}}
\tag{K6}
\]

Each bracket is an actual commutator in the odd-class algebra:

- \([H,A]\) has order at most \(-2\);
- \([AH,A]\) and \([H,A^2]\) have order at most \(-3\).

Equation (K5) annihilates the canonical finite part of **each** term in (K6), proving (K1). The algebraic rewrite was independently checked with generic non-symmetric matrices; no weighted cyclicity was assumed.

This proof needs the whole odd-class operator, including subprincipal terms and global trace-class corrections. A cancellation of the Wodzicki residue alone would establish absence of one logarithmic divergence, not by itself the vanishing canonical constant or a Ward identity.

## 3. Why the actual scalar-principal order-two weight gives an ordinary zero limit

In dimension three with \(q=2\), the odd-class heat expansion has no logarithmic terms and has local powers

\[
\varepsilon^{(j-3-m)/2},\qquad j-3-m\text{ odd},
\tag{K7}
\]

for an insertion of integer order \(m\), together with the regular nonlocal integer-power series. Its constant term is (K5).

For \([H,A]\), take \(m=-2\). The only potentially divergent local term is \(\varepsilon^{-1/2}\). Its coefficient depends only on the principal symbols:

\[
(2\pi)^{-3}\int dx\int d\xi\,
 \operatorname{str}\bigl(e^{-d_2(x,\xi)}
       [h_{-1}(x,\xi),a_{-1}(x,\xi)]\bigr).
\tag{K8}
\]

If \(d_2(x,\xi)=|\xi|_g^2\,1\), the weight in (K8) is scalar and the fiber supertrace of the commutator vanishes pointwise. The canonical constant is zero by (K5). The next possible local term is \(\varepsilon^{1/2}\); the nonlocal regular series starts at order \(\varepsilon\) after its zero constant.

For the two order-\(-3\) commutators, parity excludes a local zero-power/log term; their canonical constant is zero, and their local series starts at \(\varepsilon^{1/2}\). Hence (K2) holds, with \(O(\sqrt\varepsilon)\) in the classical closed/compact calculus. A trace-class remainder contributes \(o(1)\): its commutator has ordinary trace zero, and bounded strong convergence of the heat multiplier gives convergence of its trace to that value. Such a remainder need not have a uniform \(\sqrt\varepsilon\) rate.

### Scalar principal symbol is genuinely an extra hypothesis for the ordinary limit

On a flat three-torus of volume \(V\), let \(L=1-\nabla^2\),

\[
D_1=(-i\partial_1)L^{-1},\quad
X=\begin{pmatrix}0&1\\0&0\end{pmatrix},\quad
Y=X^T,\quad A=D_1X,\quad H=D_1Y,
\]

\[
\Delta=\operatorname{diag}(d_1,d_2)L,\qquad d_1,d_2>0.
\]

These are odd-class operators; \(A,H\in\mathfrak S_4\), and \(\|A\|\le1/2\). The heat weight is positive, even-order, and odd-class, but its principal symbol is not scalar when \(d_1\ne d_2\). Here \(A^2=0\), and the cubic weighted commutator has zero fiber trace. Since \([Y,X]=\operatorname{diag}(-1,1)\), the leading term of (K6) is

\[
\mathcal C_\varepsilon
 \sim-\frac{V}{24\pi^{3/2}}
   (d_2^{-1/2}-d_1^{-1/2})\varepsilon^{-1/2}.
\tag{K9}
\]

At \(d_1=1,d_2=4\), it is \(V\varepsilon^{-1/2}/(48\pi^{3/2})\ne0\). The canonical finite part is still zero. The coefficient follows from

\[
\int_{S^2}\omega_1^2d\omega=\frac{4\pi}{3},\qquad
\int_0^\infty e^{-\varepsilon d r^2}dr
 =\frac{\sqrt\pi}{2\sqrt{\varepsilon d}},
\]

both checked exactly. This is an operator counterexample to dropping the scalar-principal qualification, not a gravitational BV model.

## 4. Varying the even-order weight: zero finite part, possibly divergent value

Let \(P=P_3(A)\). For a differentiable admissible family of weights of fixed even order, (K5) and weight independence give

\[
\begin{aligned}
\operatorname{FP}\operatorname{STr}((\delta R_\varepsilon)P)
 &=\delta\operatorname{STR}_{\rm KV}P
   -\operatorname{STR}_{\rm KV}(\delta P)\\
 &=0.
\end{aligned}
\tag{K10}
\]

The interchange of variation and finite part is precisely why uniform differentiable heat asymptotics were assumed. This argument does not replace the Duhamel derivative by \(-\varepsilon R_\varepsilon\delta\Delta\); it is valid when the weight and its variation do not commute.

The ordinary limit can fail even for scalar weights. On the same three-torus take

\[
A=bL^{-1},\quad \Delta_c=cL,\quad b>0,\ c>0,
\]

and vary \(c\) with \(A\) fixed. The leading contribution comes from the linear term of \(P_3\):

\[
\begin{aligned}
\operatorname{Tr}((\partial_c e^{-\varepsilon cL})P_3(A))
 &=-\varepsilon\operatorname{Tr}
       (Le^{-\varepsilon cL}P_3(A))\\
 &=-\frac{bV}{(4\pi)^{3/2}c^{3/2}}\varepsilon^{-1/2}
   +O(\varepsilon^{1/2}).
\end{aligned}
\tag{K11}
\]

The constant finite part is zero, but the divergent coefficient is real and nonzero. This also follows by differentiating the leading low-wheel divergence
\(2bV(4\pi)^{-3/2}(c\varepsilon)^{-1/2}\). Exact CAS confirms the coefficient and its zero constant part.

Therefore a weight-varying finite-cutoff Ward equation can still need divergent local counterterms even when its determinant trace **finite-part** defect disappears by parity. Fixed-background heat weights have \(\delta R_\varepsilon=0\), of course.

## 5. Consequence for a canonical determinant, not for the full BV Ward identity

Under these hypotheses, define the renormalized determinant functional by

\[
\mathcal D_{\rm KV}(A)
 =\mathcal F_4(A)+\operatorname{STR}_{\rm KV}P_3(A).
\tag{K12}
\]

Its variation is

\[
\boxed{\delta\mathcal D_{\rm KV}(A)
 =\operatorname{STR}_{\rm KV}\bigl((1+A)^{-1}H\bigr).}
\tag{K13}
\]

Indeed, (K1) removes the noncyclic finite part, (K3) removes the weight-variation finite part, and the trace-class tail combines with the canonically traced low polynomial using
\(1-A+A^2-A^3(1+A)^{-1}=(1+A)^{-1}\). No interchange of an infinite series under the canonical trace is required.

Importantly,

\[
\operatorname{STR}_{\rm KV}P_3(A)\quad\text{is not generally zero.}
\]

Parity removes residues/local zero-power anomalies, not arbitrary global canonical traces. Thus \(\mathcal D_{\rm KV}\) is generally different from the tail-only \(\mathcal F_4\). The finite counterexample to **tail-only subtraction with the original source and insertion** remains relevant; it does not assert that a properly restored canonical determinant has a noncyclic finite-part anomaly.

For the actual physical CS ratio, \(h=\delta\Delta_{\rm H}^{-1}R_\Lambda\) is locally odd-class of order \(-1\), multiplication by \(\operatorname{ad}_j\) has order zero, and the coexact projection is locally odd-class of order zero. The fixed Hodge weight has scalar principal symbol on every actual bundle block, even though the blocks have different curvature endomorphisms. If the UV spectral projection/localization and off-diagonal global pieces satisfy the hypotheses of §1, (K2) applies to compact physical variations \(H\) in the same class. No cancellation between physical and ghost blocks is needed for that principal-symbol argument.

What this **does not** provide:

1. the required global trace/remainder estimates on every complete-AdS retained field, including the nonintegrable retained example already present in [note20 §5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L313-L370>);
2. a full graded extension of the physical Hessian family, or control after ghost/antifield differentiation;
3. the matching regularized normalized insertion \(\gamma_1\), including its source and cubic-action contacts;
4. a measure/Jacobian for the field-dependent order-zero ghost normalization, or a regulated BV Laplacian satisfying the required product/Stokes identities;
5. the combined vanishing of the Ward and QME residuals in equations (11)–(13) of the [main review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/report.md#L195-L229>).

Thus the correct statement is constructive but limited: **odd-class canonical renormalization removes this particular determinant ordering defect under its exact hypotheses. It does not establish the quantum BV map.**

## 6. New evidence and remaining checks

The original finite outputs were not rerun or overwritten. This follow-up has its own [source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv_followup_checks.wl>), [actual readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-actual-output.txt>), [native output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-actual-output.wxf>), and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-actual-server-return.json>). Thirteen checks passed with no messages, including the complete commutator rewrite, exact angular/radial heat coefficient, nonscalar-weight divergence, scalar-principal cancellation, the varying-weight coefficient, and the allowed local heat powers.

The canonical-trace theorem and uniform/global pseudodifferential hypotheses are **analytic inputs**, explicitly marked as such in the actual output. CAS checks do not prove them. The complete-AdS global extension and the marked/source Ward layer listed above remain unverified. One overlong initial web-search query was rejected before results; the shorter search and direct HTML fetches succeeded. This had no bearing on any CAS run or frozen result.
