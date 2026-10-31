# Independent diagnostic: noncyclic low wheels and one-loop BV transport

## Result

**A specified heat-weighted low-wheel determinant has an exact, useful one-loop Ward diagnostic, but low-wheel subtraction alone does not imply a Ward identity.** There are two distinct regulator effects:

1. Differentiating a weighted wheel requires **all ordered placements** of the differentiated Hessian. Replacing these placements by one cyclic placement misses explicit commutators with the weight.
2. A fixed weight need not be transported by a canonical change of the UV frame. This produces a further defect even for a pure conjugation of the relative Hessian, when the exact Gaussian determinant and every retained generator insertion are constant.

Both effects occur in exact finite graded BV models. A Gaussian model with nonzero source divergence and nonzero normalized generator insertion gives the exact residuals

\[
\boxed{\mathfrak R_{\rm original\ insertion}=\frac{29}{840},\qquad
\mathfrak R_{\rm naive\ marked\ insertion}=-\frac1{840},\qquad
\mathfrak R_{\det_4\ only}=\frac{229}{245}.}
\]

A separate canonical UV rotation gives \(119/6000\) with a fixed weight and zero with the appropriately transported weight. These are finite regulator diagnostics, **not continuum anomalies or a continuum QME**.

The inputs read were the project rules and orientation, and [note20](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md>), especially its finite Euclidean conventions, insertion formula, and §§6–7. No existing note was edited; no Articles file or other newly generated agent analysis was inspected. This is an independent derivation from the question, not a re-proof of finite BV pushforward.

## 1. Objects, domains, and the trace prescription

Let \(\mathcal H=\mathcal H_{\bar0}\oplus\mathcal H_{\bar1}\) be the **fixed restricted UV space**, including all its actual parities. Fix the reference Hessian and polarization. Define the left-relative operator by

\[
K=K_0(1+A),\qquad A=K_0^{-1}K-1\in\mathfrak S_4.
\]

All operators below act on this same space. In particular, replacing this left-relative operator by a right-relative operator in a weighted trace is not innocuous. Assume \(1+A\) invertible and choose a local logarithm of its fourth-modified superdeterminant. In the small ball \(\|A\|<1\), this logarithm is

\[
\mathcal F_4(A)=\operatorname{STr}g_4(A),\qquad
 g_4(A)=\log(1+A)-P_3(A),\qquad
 P_3(A)=A-\frac12A^2+\frac13A^3,
\]

\[
\mathcal F_4(A)=\sum_{n\ge4}\frac{(-1)^{n+1}}n\operatorname{STr}A^n.
\tag{1}
\]

Outside this ball, use the locally continued logarithm of \(\operatorname{sdet}_4\), with its phase/branch fixed along the family; invertibility alone does not choose a global logarithm. The derivative below is local and remains valid on this invertible family. For finite Grassmann coefficient algebras, all assertions are coefficientwise, with the body invertible. No convergence of an infinite graded expansion is assumed.

Let

\[
R_\varepsilon=e^{-\varepsilon\Delta},\quad \varepsilon>0,
\qquad
\tau_\varepsilon(A^n)=\operatorname{STr}(R_\varepsilon A^n),
\]

where \(\Delta\) is the specified even nonnegative heat operator, **not** the odd BV Laplacian. Define the hybrid determinant prescription

\[
\boxed{\mathcal D_\varepsilon(A)
 =\mathcal F_4(A)+\operatorname{STr}\bigl(R_\varepsilon P_3(A)\bigr).}
\tag{2}
\]

Thus only the first three wheels are heat-weighted; the \(n\ge4\) tail is the ordinary trace-class tail. A prescription weighting the entire logarithm is a different functional.

### Honest-trace assumptions

For an even parameter variation \(\delta\), write \(H=\delta A\). Assume \(A\) is differentiable in \(\mathfrak S_4\), \(H\in\mathfrak S_4\), and all low-wheel products and their variations are ordinary trace class with trace-norm differentiation justified. A transparent sufficient version is:

- \(R_\varepsilon A\) and \(R_\varepsilon H\) are trace class;
- \((\delta R_\varepsilon)A^n\), \(n=1,2,3\), are trace class;
- the relevant functions of the parameter are differentiable in these trace norms.

This ensures the cyclic moves of **ordinary trace-class products** used below; it does not make \(\tau_\varepsilon\) a cyclic trace. For a fixed weight this is automatic in finite dimensions and when \(R_\varepsilon\) itself is trace class; a variable weight still requires the stated differentiability hypotheses. On a noncompact complete manifold, \(A\in\mathfrak S_4\) alone does **not** imply these hypotheses at any positive heat time. Global spatial integrability remains separate from UV smoothing.

If spatial localization is needed, one may instead explicitly declare

\[
R_{\varepsilon,\chi}=M_\chi e^{-\varepsilon\Delta}M_\chi,
\]

with fixed bounded \(\chi\in L^2\) and bounded heat diagonal. This is trace class, by the Hilbert–Schmidt factorization through \(e^{-\varepsilon\Delta/2}M_\chi\). The same formulas apply with this **different stated weight**. It must not be silently identified with the unlocalized trace. Field-dependent or transported \(\chi\) contributes to \(\delta R\), too.

A merely formal diagonal integral or renormalized trace need not obey the ordinary cyclic identities used here. Its own trace-defect functional must then be added explicitly.

## 2. Exact variation: the missing ordered terms

For every low wheel,

\[
\delta\tau_\varepsilon(A^n)
 =\operatorname{STr}((\delta R_\varepsilon)A^n)
 +\sum_{k=0}^{n-1}\operatorname{STr}
   (R_\varepsilon A^k H A^{n-1-k}).
\tag{3}
\]

All placements in this formula are meaningful. Moving the final power of \(A\) using the ordinary trace-class trace gives

\[
\delta\tau_\varepsilon(A^n)
 =\operatorname{STr}((\delta R_\varepsilon)A^n)
 +n\operatorname{STr}(R_\varepsilon A^{n-1}H)
 +\mathcal C_n(R_\varepsilon,A;H),
\]

\[
\mathcal C_n(R,A;H)
 =\sum_{j=1}^{n-1}\operatorname{STr}
   ([A^j,R]A^{n-1-j}H).
\tag{4}
\]

There is no super sign in these moves: \(A,R\) are even. The same formal expression applies coefficientwise to an odd derivation, because only even powers of \(A\) are moved across the insertion. An implementation must still retain the actual parity signs in \(\operatorname{STr}\).

The tail has the usual unweighted derivative,

\[
\delta\mathcal F_4(A)
 =-\operatorname{STr}\bigl(A^3(1+A)^{-1}H\bigr).
\tag{5}
\]

Here \(A^3H\in\mathfrak S_1\) by Hölder, with norm bounded by \(\|A\|_4^3\|H\|_4\); the resolvent is bounded. The series proof in the small ball extends locally to the chosen invertible branch.

Combining (3)–(5),

\[
\boxed{\begin{aligned}
\delta\mathcal D_\varepsilon(A)
={}&-\operatorname{STr}\bigl(A^3(1+A)^{-1}H\bigr)
 +\operatorname{STr}\bigl(R_\varepsilon(1-A+A^2)H\bigr)\\
&+\mathcal C_\varepsilon(A;H)
 +\operatorname{STr}\bigl((\delta R_\varepsilon)P_3(A)\bigr),
\end{aligned}}
\tag{6}
\]

where

\[
\boxed{\mathcal C_\varepsilon(A;H)
 =-\frac12\operatorname{STr}([A,R_\varepsilon]H)
 +\frac13\operatorname{STr}
   \bigl(([A,R_\varepsilon]A+[A^2,R_\varepsilon])H\bigr).}
\tag{7}
\]

Equivalently, avoid any cyclic shorthand and retain the low-wheel Fréchet derivative

\[
\operatorname{STr}R_\varepsilon
 \left[H-\frac12(AH+HA)
 +\frac13(A^2H+AHA+HA^2)\right].
\tag{8}
\]

Neither \(\mathcal C_\varepsilon\) nor the regulator-variation term belongs to the trace-class \(n\ge4\) tail. They arise precisely at the regulated low wheels.

When the heat operator varies, under the common-domain and trace-norm assumptions that justify Duhamel differentiation,

\[
\delta R_\varepsilon
 =-\int_0^\varepsilon e^{-(\varepsilon-s)\Delta}
       (\delta\Delta)e^{-s\Delta}\,ds.
\tag{9}
\]

Replacing this by \(-\varepsilon R_\varepsilon\delta\Delta\) requires an additional commutation hypothesis. For a field-dependent reference, the insertion is instead

\[
H=K_0^{-1}\delta K-K_0^{-1}(\delta K_0)(1+A),
\]

and moving domains/polarizations require an explicit identification before applying (6).

## 3. A one-loop Ward diagnostic, retaining source and generator data

Use the Euclidean conventions of [note20:17–85](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L17-L85>): \(X_\gamma F=(F,\gamma)_P\), \(Q_tF=(W_{0,t},F)_P\), and no factor of \(i\). Let

\[
\mathfrak D_t=\partial_t-X_{\gamma_0},\qquad
\ell_j=\ell\circ j,\qquad
W_{1,\varepsilon}=\frac12\mathcal D_\varepsilon(A)-\ell_j+C_\varepsilon.
\]

Here \(C_\varepsilon\) is a declared additional even counterterm. The one-loop generator is **not** determined by the determinant alone. Before regularization it is

\[
\gamma_1=\Gamma_1(j)+
\left\langle\Gamma^{[2]}+\Gamma^{[1]}\ell^{[1]}
                 -\Gamma^{[1]}S^{[3]}\right\rangle_K,
\tag{10}
\]

with the coefficient-first super-Wick ordering fixed in [note20:89–125](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L89-L125>). A trace prescription for closed low wheels alone does not prescribe these marked contractions, their source contacts, or the retained BV Laplacian.

Once \(\gamma_{1,\varepsilon}\) and \(\Delta_{{\rm BV},P,\varepsilon}\) have also been specified, the exact diagnostic is

\[
\boxed{\mathfrak R_\varepsilon
 =\mathfrak D_tW_{1,\varepsilon}
   -Q_t\gamma_{1,\varepsilon}
   +\Delta_{{\rm BV},P,\varepsilon}\gamma_0.}
\tag{11}
\]

For the declared prescription, one-loop transport holds iff \(\mathfrak R_\varepsilon=0\). In particular, with \(H=\mathfrak D_tA\),

\[
\begin{aligned}
\mathfrak R_\varepsilon={}&\frac12\left[
 -\operatorname{STr}(A^3(1+A)^{-1}H)
 +\operatorname{STr}(R_\varepsilon(1-A+A^2)H)
 +\mathcal C_\varepsilon(A;H)
 +\operatorname{STr}((\mathfrak D_tR_\varepsilon)P_3(A))\right]\\
&-\mathfrak D_t\ell_j+\mathfrak D_tC_\varepsilon
 -Q_t\gamma_{1,\varepsilon}
 +\Delta_{{\rm BV},P,\varepsilon}\gamma_0.
\end{aligned}
\tag{12}
\]

This does not invoke an unproved continuum BV-Stokes identity. It says exactly what would have to vanish, and prevents determinant-only terms from being mistaken for the full Ward residual.

The companion one-loop QME diagnostic is

\[
\mathfrak M_\varepsilon
 =Q_tW_{1,\varepsilon}-\Delta_{{\rm BV},P,\varepsilon}W_0.
\tag{13}
\]

Its vanishing is a separate requirement. If the proposed BV regulator fails the BV product identity or its compatibility with the bracket, those failures are further data; a heat trace does not define a BV Laplacian by itself.

## 4. Exact graded Gaussian model: source, insertion, and noncyclicity

### 4.1 Complete finite BV setup

Retained Darboux pairs are \((x,p),(z,q)\), with even positions of ghost number zero and odd antifields of ghost number \(-1\). UV positions are

- \(y_1,y_2\): even, ghost number zero, with odd conjugates \(v_1,v_2\);
- \(\eta,\chi\): odd, ghost numbers \(+1,-1\), with even conjugates of ghost numbers \(-2,0\).

Set every UV conjugate to zero on the fixed UV Lagrangian. Use \(\int d\chi\,d\eta\,\eta\chi=1\), a positive even Gaussian, and the normalized odd Gaussian from [note20:100](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L100>). The reference has even Hessian \(1_2\) and odd mass one.

Put

\[
D=\begin{pmatrix}1&0\\0&2\end{pmatrix},\quad
B=\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
K_b=1_2+zD+tB,\quad \mu=1+t,
\]

\[
\boxed{\begin{aligned}
S_t&=\mu x+\frac12y^TK_by+\mu\eta\chi,\\
\Gamma_t&=\frac{p}{\mu}(x+y_1y_2+\eta\chi),\\
\nu_t&=\mu,\qquad \Gamma_{1,t}=0.
\end{aligned}}
\tag{14}
\]

All actions/generators have the required parity and ghost number. On \(\mu>0\), \(K_b>0\), the bosonic integral is convergent; the odd integral is Berezin integration. Direct finite BV differentiation gives

\[
(S_t,S_t)=0,\quad\Delta_{\rm BV}S_t=0,\quad
\dot S_t=(S_t,\Gamma_t),\quad
\Delta_{\rm BV}\Gamma_t=\mu^{-1},\quad
\dot\nu_t=(\nu_t,\Gamma_t)+\nu_t\Delta_{\rm BV}\Gamma_t=1.
\tag{15}
\]

Thus the source is closed and correctly transported. This is not a unit-source shortcut. The canonical flow on the relevant position is \(x\mapsto(1+t)x+t(y_1y_2+\eta\chi)\); the remaining coordinate and conjugate transformations are its canonical lift. The stationary graph is zero in all UV positions.

The relative super-Hessian and weight are

\[
A=\begin{pmatrix}zD+tB&0\\0&t1_2\end{pmatrix},\quad
R_\varepsilon=\operatorname{diag}(e^{-\varepsilon},e^{-2\varepsilon}\mid1,1).
\tag{16}
\]

The odd relative block is \(t1_2\) because the odd Hessian is \(\mu\begin{psmallmatrix}0&1\\-1&0\end{psmallmatrix}\). Equation (16) is precisely the heat regulator with \(\Delta=\operatorname{diag}(1,2\mid0,0)\). The zero odd heat eigenvalues are harmless in this finite model; this is not being identified with the gravitational Hodge operator.

### 4.2 The exact source integral and normalized insertion

Define

\[
d=(1+z)(1+2z)-t^2,\qquad
 g=\frac12\operatorname{Tr}(K_b^{-1}B)-\frac1\mu
   =-\frac{t}{d}-\frac1\mu.
\]

The normalized pushforward and insertion are exactly

\[
I\rho=\mu^2 d^{-1/2}e^{-\mu x/\hbar},\qquad
W=\mu x+\hbar\left(\frac12\log d-2\log\mu\right),
\]

\[
\boxed{\gamma=\frac p\mu(x+\hbar g),\qquad
\gamma_0=\frac{px}{\mu},\qquad \gamma_1=\frac{pg}{\mu}.}
\tag{17}
\]

One factor of \(\mu\) in \(I\rho\) is the source semidensity, the other is the odd Gaussian. The sign in \(g\) uses \(\langle\eta\chi\rangle=-\hbar/\mu\). There are no higher-loop corrections in this model: the action is Gaussian, the source constant on the UV fiber, and the insertion quadratic.

In particular,

\[
W_0=\mu x,\quad \ell_j=\log\mu,\quad
\Delta_{{\rm BV},P}\gamma_0=\mu^{-1},\quad
Q_t\gamma_1=g,\quad
\dot W_1=g-\mu^{-1}.
\]

The exact finite transport identity holds at all orders in \(\hbar\). Omitting the source term \(-\log\mu\) creates the residual \(+\mu^{-1}\); omitting \(\gamma_1\) creates the residual \(g\). Both are machine-checked nonzero controls.

### 4.3 The prescribed regulated determinant fails, even after a naive marked insertion

Write \(r_1=e^{-\varepsilon},r_2=e^{-2\varepsilon}\), and retain the exact source term \(-\log\mu\). Keep first the **actual** normalized insertion (17), while replacing the Hessian logarithm by (2). Since \(W_{1,\varepsilon}\) is independent of \(x\), the convective term vanishes, and the source term cancels the retained divergence exactly. The entire residual is

\[
\boxed{\mathfrak R_{\rm original\ insertion}
 =\frac t2(2-r_1-r_2)
  +\frac{zt}{3}(4r_1+5r_2-9).}
\tag{18}
\]

Next explicitly prescribe the often-assumed single-marked-vertex contraction

\[
g_\varepsilon^{\rm mark}
 =\frac12\left[
 -\operatorname{STr}(A^3(1+A)^{-1}\partial_tA)
 +\operatorname{STr}(R_\varepsilon(1-A+A^2)\partial_tA)\right],
\qquad
\gamma_{1,\varepsilon}^{\rm mark}=\frac p\mu g_\varepsilon^{\rm mark}.
\tag{19}
\]

This is a specified alternative contraction prescription, **not** the normalized expectation in the original finite integral. The exact ordered variation gives

\[
\operatorname{STr}([A,R_\varepsilon]\partial_tA)=0,\qquad
\operatorname{STr}\bigl(([A,R_\varepsilon]A+[A^2,R_\varepsilon])\partial_tA\bigr)
 =zt(r_2-r_1),
\]

\[
\boxed{\mathfrak R_{\rm marked}=\frac{zt(r_2-r_1)}6.}
\tag{20}
\]

The cubic wheel detects the missing orderings. Vanishing of the quadratic commutator in this particular symmetric model is not a general cyclicity identity.

At the exact point

\[
z=\frac15,\quad t=\frac17,\quad \varepsilon=\log2,
\quad r_1=\frac12,\quad r_2=\frac14,
\]

we have \(\|A\|<1\), \(d=2033/1225>0\), \([A,R_\varepsilon]\ne0\), and \([A,\partial_tA]\ne0\). Equations (18) and (20) give \(29/840\) and \(-1/840\), respectively. Thus the latter is a noncyclic defect even after the obvious weighted one-marked-vertex matching has been attempted.

Finally, keep only \(\mathcal F_4\), leaving the source and original normalized insertion unchanged. Then

\[
\boxed{\mathfrak R_{\det_4\ only}
 =-\frac12\partial_t\operatorname{STr}P_3(A)
 =1+t^2-3zt=\frac{229}{245}\ne0.}
\tag{21}
\]

This is an explicit counterexample to the assertion that low-wheel subtraction by itself preserves the quantum transport equation.

## 5. A pure canonical-frame example and a sufficient transported weight

Take the same two even UV positions and an inert odd UV pair. Let

\[
T=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\quad
O_\theta=e^{\theta T},\quad
A_\theta=O_\theta^T\operatorname{diag}(\alpha,\beta)O_\theta,
\]

and use the BV generator \(\Gamma=v^TTy\). This is an odd generator with \(\Delta_{\rm BV}\Gamma=\operatorname{Tr}T=0\). It preserves the UV Lagrangian. Its restriction to that Lagrangian is identically zero, so the normalized retained insertion is **exactly zero**, not merely neglected. Choose unit source. The even Hessian \(1+A_\theta\) undergoes the exact canonical congruence

\[
\dot A_\theta=[A_\theta,T],
\]

which here is also a similarity because \(O_\theta\) is orthogonal and \(K_0=1\). The exact determinant, source, retained action and all retained insertion coefficients are independent of \(\theta\).

For fixed \(R=\operatorname{diag}(r_1,r_2)\), however,

\[
\partial_\theta W_{1,\varepsilon}
 =\frac12\operatorname{Tr}\bigl([T,R]P_3(A_\theta)\bigr)
 =\frac12(r_1-r_2)\bigl(P_3(\beta)-P_3(\alpha)\bigr)\sin(2\theta).
\tag{22}
\]

At \(\alpha=1/5,\beta=2/5,\theta=\pi/4,r_1=1/2,r_2=1/4\), this is \(119/6000\), exactly. It is a full Ward residual for this specified prescription because the insertion and source transport terms genuinely vanish.

Instead transport the weight by

\[
R_\theta=O_\theta^TR_0O_\theta,
\qquad \dot R_\theta=[R_\theta,T].
\]

Every weighted wheel is now constant. This can be implemented with the transported heat operator \(\Delta_\theta=O_\theta^T\Delta_0O_\theta\), so the repair is an actual positive heat regulator, not an algebraic relabeling.

More generally, suppose a bounded even UV-frame generator \(\mathcal T\) preserving the relevant domains is identified (or stronger hypotheses justify every cyclic trace move for an unbounded generator), and write

\[
\mathfrak D_tA=[\mathcal T,A]+H_{\rm phys}.
\]

The exact low-wheel variation separates as

\[
\mathfrak D_t\mathcal D_\varepsilon
 =\bigl[\delta\mathcal D_\varepsilon\bigr]_{\delta A=H_{\rm phys},\,\delta R=0}
 +\operatorname{STr}\left[
  (\mathfrak D_tR_\varepsilon-[\mathcal T,R_\varepsilon])P_3(A)\right].
\tag{23}
\]

Thus a sufficient condition to remove **pure-frame regulator defects** is

\[
\boxed{\mathfrak D_tR_\varepsilon=[\mathcal T,R_\varepsilon].}
\tag{24}
\]

It follows from \(\mathfrak D_t\Delta=[\mathcal T,\Delta]\) when heat functional calculus is transported on a compatible common domain. No assumption \([R_\varepsilon,A]=0\) is needed. For nonunitary frame maps, similarity need not preserve self-adjointness in the original Hilbert metric; one must either transport that metric too or declare the resulting non-self-adjoint/sectorial regulator.

Condition (24) does **not** cancel physical Hessian variations \(H_{\rm phys}\), supply the generator insertion, or correct a failed BV-Stokes theorem. A general off-shell canonical Hessian also has inhomogeneous chain-rule terms; it must not be assumed to transform by similarity.

## 6. What counterterms suffice, and what subtraction alone does not do

### Finite-dimensional or already trace-class repair

If the unweighted first three wheels exist, the explicit finite counterterm

\[
\boxed{C_\varepsilon^{\rm restore}
 =\frac12\operatorname{STr}\bigl((1-R_\varepsilon)P_3(A)\bigr)}
\tag{25}
\]

restores the original full relative determinant exactly. With the original source, normalized insertion, and BV Laplacian, it therefore restores the finite Ward identity. Its derivative includes both the noncyclic and regulator-transport terms automatically.

For an \(\mathfrak S_4\)-only continuum operator, (25) is generally **undefined**. It is not an available continuum counterterm until a renormalized meaning, spatial integrability, and locality/normalization conditions have been supplied. One cannot cancel two undefined low-wheel traces by writing their difference.

### The actual counterterm equations

For a specified continuum regulator, let \(C\) shift the one-loop action and let \(\eta\) shift the one-loop generator. Keeping the tree bracket and chosen BV Laplacian fixed, sufficient and necessary algebraic conditions are

\[
\boxed{\mathfrak D_t C-Q_t\eta=-\mathfrak R_\varepsilon,\qquad
Q_tC=-\mathfrak M_\varepsilon.}
\tag{26}
\]

The first restores transport; the second restores the one-loop QME. Their solvability with **local, admissible, symmetry-compatible** counterterms is a substantive cohomological/analytic question. If the BV regulator itself changes, its variations add further terms to (26). A source counterterm and a generator counterterm cannot be chosen independently if they are supposed to arise from one transported source semidensity.

Along a single finite parameter interval, an arbitrary smooth transport residual can be integrated into a generally nonlocal \(C\). This weak observation proves neither locality, multi-parameter path independence, nor the QME. An insertion correction can also remove a \(Q_t\)-exact residual; that is a different quantum lift unless derived from the same regulated source integral.

For example, in (19) the ordered repair is

\[
\gamma_{1,\varepsilon}^{\rm ord}
 =\gamma_{1,\varepsilon}^{\rm mark}
  +\frac p\mu\frac{zt(r_2-r_1)}6.
\]

At the test point the extra term is \(-p/960\). This repairs the finite one-loop transport equation by construction, but is not the normalized insertion of the unmodified integral (17).

**Low-wheel subtraction alone is therefore not generically Ward-compatible.** In a finite comparison with fixed source and insertion, removing \(\tfrac12\operatorname{STr}P_3(A)\) preserves transport only if that removed functional is \(\mathfrak D_t\)-invariant, and preserves the one-loop QME only if it is also \(Q_t\)-closed. Special flows can satisfy these conditions; the exact model (21) does not. Matched source/insertion counterterms or a compatible regulator may repair the failure, but their existence is extra input.

For the \(\det_2\) retained-density prescriptions in [note20 §6](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L372-L417>), replace \(P_3\) by \(P_1=A\). There is then no internal multi-placement commutator at the sole linear wheel, but a fixed-frame defect \(\operatorname{STr}([R,\mathcal T]A)\), field-dependent regulator terms, and the familiar modified-determinant multiplicative defect still remain. The two density candidates in that section are not silently interchangeable.

## 7. Conditional application to the actual gravitational operators

The analysis applies to the operators actually identified in [note20 §7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L419-L502>), not to an unspecified inverse of the full gauge-degenerate Hessian.

### CS restricted ratio

On the declared fixed coexact UV space and with the fixed homotopy,

\[
A_j=h_T\operatorname{ad}_j|_{\mathcal L_0}.
\]

If the variation \(\mathfrak D_tj\) is controlled in the same \(L^4\)-type multiplier class, then

\[
H=\mathfrak D_tA_j=h_T\operatorname{ad}_{\mathfrak D_tj}|_{\mathcal L_0}\in\mathfrak S_4.
\]

This supplies the trace-class tail derivative. If the homotopy, reference, or UV domain is transported, their derivatives must be added. The established \(\mathfrak S_4\) property does not supply the low-wheel trace hypotheses in §1. The retained-band positive nonintegrable example in [note20:313–370](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L313-L370>) is exactly why positive heat time cannot be treated as an IR cure.

Even when the background homotopy commutes/intertwines the background heat operator, multiplication by a varying \(j\) generally does not. Thus \([R_\varepsilon,A_j]\) need not vanish. The correct heat weight has the actual separate physical/ghost/antifield blocks, not a scalar weight after prematurely taking fiber traces. The finite noncommuting examples prove that the missing terms can matter; they do not calculate their gravitational value.

### Normalized geometric ghost ratio

Use the precise order-zero normalization from that note. To avoid confusing its coefficient \(B_j\) with a variation, set

\[
N_j=M^{-1}R_\Lambda G^\dagger B_jR_\Lambda,\qquad
A_g=N_jC_R^{-1},\qquad C_R=R_\Lambda C_jR_\Lambda.
\]

For fixed background operators,

\[
\boxed{\mathfrak D_tA_g
 =(\mathfrak D_tN_j)C_R^{-1}
   -A_g(\mathfrak D_tC_R)C_R^{-1}.}
\tag{27}
\]

The second term is essential. One must include the corresponding transpose Hessian block and its actual UV parity. The normalization \(C_R^{-1}\) is field dependent; it does not establish a determinant of \(C_R\), multiplicativity, or a cancellation against the pointwise coframe half-density. Its source/Jacobian contribution and marked generator insertions must be defined in the same regulator.

The \(\mathfrak S_4\) statements used here hold on the established small physical stationary body and its stated coefficientwise extensions. A full Ward/QME variation differentiates in ghost/antifield directions **before** restricting to the physical body. The existence of the physical-body determinant alone does not supply that full graded extension. No value of an actual gravitational low wheel, no matching of the normalized geometric/CS determinants, and no continuum QME is claimed here.

## 8. Verification, provenance, and remaining work

**Verified analytically:** trace-class tail variation; every ordered low-wheel term; the regulator-variation and pure-frame transport formulas under the stated trace/domain assumptions; the complete finite Gaussian model, its source, its normalized insertion, and the rotation repair. The finite cases have positive even Gaussian Hessian and invertible odd Hessian at the test points. Their \(R_\varepsilon\to1\) limit removes the fixed finite regulator defect. This finite limit cannot be interchanged with undefined/divergent continuum low wheels.

**Exact CAS:**

- [Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/checks.wl>) and [actual readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/wolfram-actual-output.txt>): 26 passing checks, including a generic non-symmetric 2×2 Fréchet identity, exact residuals, all-order Gaussian transport, and the rotation/transported-weight checks. [Native output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/wolfram-actual-output.wxf>) and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/wolfram-actual-server-return.json>) are preserved. No kernel messages or failed labels.
- [Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/graded_checks.py>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/sage-actual-output.json>): 25 passing checks using native `ExteriorAlgebra` over a rational function field, explicit left derivatives, and the BV product identity. These verify parities, Darboux signs, CME/source closure, nonzero source divergence, the odd Wick sign, coefficient-first insertion, and complete Gaussian transport. [Native output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/sage-actual-output.sobj>) and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/sage-actual-server-return.json>) are preserved. No errors, warnings, or truncation. These are scoped algebraic checks, not 51 independent research theorems.

The math-computation skill was loaded. Wolfram handled ordinary matrix/rational/heat algebra; Sage provided a separately implemented native exterior-algebra sign check. There were no failed CAS runs and no suppressed diagnostics. The native serialized files are outputs from these exact sources, not independent input evidence.

**Not verified / not claimed:** existence of the unlocalized gravitational low-wheel traces on the full retained domain; heat finite parts or their locality; the gravitational marked insertions with the same regulator; a compatible regulated BV-Stokes map; a continuum QME, anomaly classification, or quantum equivalence. A further independent child review was unavailable at the delegated depth; this report is itself the fresh independent review requested by the parent.

The concrete next gravitational test is now precise: declare an IR-admissible class or explicit spatial regulator, evaluate the three ordered low-wheel variations and the matching marked contractions with the actual Hodge blocks, and insert them into (12). Any renormalized subtraction should be tested against (26), rather than called quantum transport on the strength of \(\det_4\) existence alone.
