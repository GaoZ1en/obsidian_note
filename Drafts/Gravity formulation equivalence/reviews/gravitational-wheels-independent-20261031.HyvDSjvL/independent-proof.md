# Actual gravitational-CS quadratic and cubic wheels: independent trace-domain derivation

## Result

Fix the radius-one complete background \(M=\mathbb H^3\), or its fixed loxodromic cyclic quotient with \(\beta>0\), and fix \(\Lambda>1\). Let \(j=(w,f)\) be a real physical one-form in \(C_c^\infty\), or more generally in \(H^\infty=\bigcap_sH^s\). With the actual operators and BV signs specified below:

1. **For every \(\epsilon>0\), both \(e^{-\epsilon\Delta}A_j^2\) and \(e^{-\epsilon\Delta}A_j^3\) are globally trace class.** This is not merely a statement after spatial double localization. In fact \(j\in H^2\) is a sufficient positive-heat-time domain; no minimal-regularity claim is made.
2. **Both unrenormalized heat-supertrace limits exist and are finite:**
   \[
   W_n(j)=\lim_{\epsilon\downarrow0}\operatorname{STr}_{\mathcal L}
   (e^{-\epsilon\Delta}A_j^n),\qquad n=2,3.
   \]
   Thus on the stated domain a finite-part prescription is not needed to remove a divergence of the *signed sum*. This does not turn \(A_j^n\) into a trace-class operator.
3. For \(r_p=(1,2,1,0)\), the individual form-degree traces satisfy
   \[
   \operatorname{Tr}_{\mathcal L^p}(e^{-\epsilon\Delta}A_j^2)
   =\frac{r_p}{3\pi^{3/2}\sqrt\epsilon}
     \int_M(|w|^2-|f|^2)\,dV+F_{2,p}(j)+o(1),
   \tag{R1}
   \]
   \[
   \operatorname{Tr}_{\mathcal L^p}(e^{-\epsilon\Delta}A_j^3)
   =F_{3,p}(j)+o(1).
   \tag{R2}
   \]
   There is no logarithmic divergence in either formula. The quadratic power term cancels because \(-1+2-1=0\), with the actual BV signs \((- ,+,-,+)\).
4. **Ordinary trace-class classification on this smooth decaying domain:**
   - \(A_j^2\in\mathfrak S_1\) iff \(j=0\).
   - Write \(z_a=w_a+i f_a\in\mathbb C^3\) in an orthonormal frame. Then
     \[
     A_j^3\in\mathfrak S_1
     \quad\Longleftrightarrow\quad
     z_a\mathbin{\cdot}z_b=0\quad\text{for all }a,b\text{ at every point}.
     \tag{R3}
     \]
     Otherwise the cubic has a local order-minus-three trace-class obstruction. The exceptional condition says that the complex span of the insertion's internal values is a totally isotropic line (or zero), not that the insertion vanishes.
5. The constants \(F_{n,p}\) can be described by an **integrable odd-class canonical trace plus an ordinary trace-class nonproper remainder**. The sharp spectral projector changes these constants, but creates no additional divergence for these two-insertion-or-higher wheels.

These are trace-domain and heat-limit statements, not a QME, measure-transport, or determinant-phase conclusion. No closed-form numerical value of the finite nonlocal functionals \(F_{n,p}\) is asserted.

## 1. Inputs, conventions, and independence

Only the root [AGENTS](</Users/koishi/Documents/Note/AGENTS.md>), the authoritative background/contraction in [note 18 §§1–3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L27-L253>), and the actual Hessian setup in [note 20 §7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L419-L502>) were used as research inputs. No other new review or proposed main note 21 was read. No existing research note was modified.

The real Lie algebra is
\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\]
The positive Hilbert bundle is the full real rank-six internal bundle, not one chiral copy. On forms,
\[
D=d_\omega+e\wedge\operatorname{ad}_P,\qquad
\delta=D^\dagger,\qquad
\Delta=D\delta+\delta D\ge1.
\]
This connection is not positive-Hilbert-unitary. The proof uses its actual positive Laplacian, not unitary-flat de Rham formulas. Its degree blocks are
\[
\Delta_0=M=(\nabla^*\nabla+2)^{\oplus2},\qquad
\Delta_1=\bigoplus_{s=0}^2(\nabla^*\nabla+4-s(s+1))^{\oplus2},
\]
with spin multiplicities understood; degrees 2 and 3 are conjugate by \(H=S_{\rm int}*\). Thus the full ranks are \((6,18,18,6)\). The complete closures and fixed-geometry heat estimates are the ones supplied by the authoritative setup.

Put
\[
P=1_{[0,\Lambda^2]}(\Delta),\quad R=1-P,\quad
h=\delta\Delta^{-1}R,\quad
q=\delta D\Delta^{-1},\quad Q=Rq.
\]
Then \(Q\) is the orthogonal projection onto the closed \(\mathcal L=R\ker\delta\); \(Qh=h\). For the physical even one-form the two totalization signs cancel, so
\[
B=\operatorname{ad}_j=\sum_a\varepsilon(\theta^a)\operatorname{ad}_{j_a},\qquad
A=hB|_{\mathcal L},\qquad \widetilde A=hBQ,
\]
where \(j=\sum_a\theta^a j_a\) in an orthonormal coframe.

The useful extension identity is
\[
\widetilde A^n=(hB)^nQ,
\tag{1.1}
\]
since \(Qh=h\). It acts by zero on \(\mathcal L^\perp\), so its nonzero singular values and its regularized traces are exactly those on \(\mathcal L\). The supertrace signs by form degree are \(\sigma_p=(-1)^{p+1}\), not ordinary de Rham signs.

## 2. A global two-insertion smoothing lemma

This is the step which prevents local parity from being mistaken for a global trace theorem.

### 2.1 Uniform smoothing versus proper support

Call an operator \(S\) strongly smoothing if
\[
\Delta^aS\Delta^b:L^2\longrightarrow L^2
\quad\text{is bounded for every }a,b\ge0.
\tag{2.1}
\]
The same property for all integer powers suffices. This does **not** assert proper support or trace class. By bounded-geometry Sobolev embedding, for any differential operator \(V\) with bounded coefficients, the kernel row of \(VS\) has a uniform \(L^2\) bound. Consequently
\[
\|M_fVS\|_{\mathfrak S_2}\le C_{S,V}\|f\|_2.
\tag{2.2}
\]
For \(N>3/4\), the short-time heat diagonal bound and the spectral gap similarly give
\[
\|M_f\Delta^{-N}\|_{\mathfrak S_2}
+\|\Delta^{-N}M_f\|_{\mathfrak S_2}
\le C_N\|f\|_2.
\tag{2.3}
\]
For example, integrate \(\Delta^{-2N}=\Gamma(2N)^{-1}\int_0^\infty t^{2N-1}e^{-t\Delta}\,dt\); the diagonal is integrable at zero precisely when \(2N>3/2\). Matrix-valued coefficients only change a finite-rank constant.

Spectral calculus implies that
\[
P,\quad h_0P,\quad qP,\quad e^{-\epsilon\Delta}\ (\epsilon>0),
\qquad h_0=\delta\Delta^{-1},
\tag{2.4}
\]
are strongly smoothing. Their kernels need not be properly supported. In particular, \(P\) remains generally infinite-rank and is not a trace-class operator on this infinite-volume space.

### 2.2 The factorization

The exact word hypotheses used here are as follows. A finite word consists of multiplication operators \(M_{f_i}\), fixed operators \(T_i\), and at least one fixed strongly smoothing operator \(S\). The unmarked multiplication operators are bounded on \(L^2\); two marked ones have coefficients in \(H^2\cap L^\infty\). The fixed factors obey
\[
\|\Delta^aT_i\Delta^{-a}\|+\|\Delta^aT_i^*\Delta^{-a}\|<\infty
\tag{2.4a}
\]
for the nonnegative integer powers needed in the factorization (all powers in the applications here). Requiring the adjoint bounds is important: bare boundedness of an arbitrary \(T_i\) on \(L^2\), or an unspecified one-sided Sobolev statement, is not enough. Equivalently one may require preservation of all positive and negative Sobolev spaces. The actual fixed factors \(h_0,h,q,Q\), their smoothing differences, and the fixed uniform proper parametrices satisfy (2.4a). To choose the two marked insertions, use the nearest one on each side of \(S\) when both sides contain insertions; otherwise use the nearest two on the same side. All other insertions lie in bounded external prefixes or suffixes. Fixed factors between \(S\) and these nearest insertions can be absorbed into \(S\), using (2.4a) and strong smoothing. The remaining proof reduces to the following two cases.

If smoothing lies between the two insertions,
\[
M_fSM_g=(M_f\Delta^{-N})
 (\Delta^NS\Delta^N)(\Delta^{-N}M_g),
\tag{2.5}
\]
and the outside factors are Hilbert–Schmidt.

If it lies at an edge, take integer \(N=1\) and write
\[
SM_fTM_g=(SM_fT\Delta^N)(\Delta^{-N}M_g).
\tag{2.6}
\]
The second factor is Hilbert–Schmidt. The adjoint of the first is
\[
\Delta^NT^*M_f^*S^*
=(\Delta^NT^*\Delta^{-N})(\Delta^NM_f^*S^*).
\]
The first factor on the right is bounded. Leibniz expansion of the differential operator \(\Delta^N\) makes the second a finite sum of
\(M_{\nabla^k f}\,V_kS^*\), which is Hilbert–Schmidt by (2.2). Thus its norm is bounded by a finite Sobolev norm of \(f\). The opposite edge follows by adjoint. For example, choose the uniform Sobolev evaluation exponent to be 2. Up to a fixed bounded-geometry constant, the precise estimates are
\[
\|M_fSM_g\|_1\le C\|\Delta S\Delta\|\,\|f\|_2\|g\|_2,
\]
\[
\|SM_fTM_g\|_1
\le C\|\Delta T^*\Delta^{-1}\|\,
       \|\Delta^2S^*\|\,\|f\|_{H^2}\|g\|_2.
\tag{2.6a}
\]
The second estimate is exactly the Leibniz argument above: \(\Delta M_f^*S^*\) has a Hilbert–Schmidt norm bounded by \(C\|f\|_{H^2}\|S^*\|_{L^2\to H^4}\). Bounded prefixes/suffixes multiply these estimates by their operator norms. Fixed Sobolev-bounded factors absorbed next to \(S\) modify the displayed smoothing norms by their (2.4a) norms. Extra insertions outside the two chosen nearest insertions contribute only their \(L^\infty\) multiplication norms. This is the full scope of the smoothing-placement assertion; no arbitrary nonlocal bounded-factor variant is needed.

In particular, for fixed \(\epsilon>0\),
\[
\|e^{-\epsilon\Delta}A^2\|_1
\le C_{\epsilon,\Lambda}\|j\|_{H^2}\|j\|_2,
\qquad
\|e^{-\epsilon\Delta}A^3\|_1
\le C_{\epsilon,\Lambda}\|j\|_{H^2}\|j\|_2\|j\|_\infty.
\tag{2.7}
\]
For the first estimate use (1.1) and \(S=e^{-\epsilon\Delta}h\). For the second multiply the quadratic operator by bounded \(A\), using \(\|A\|\le C\Lambda^{-1}\|j\|_\infty\). These are sufficient, not claimed optimal, trace domains.

### 2.3 Sharp-cutoff tails are trace-class corrections for these wheels

Let
\[
T_n^0=(h_0B)^nq,\qquad T_n^R=(hB)^nQ.
\]
Expand \(h=h_0-h_0P\), \(Q=q-qP\). Every term in
\[
T_n^R-T_n^0,\qquad n=2,3,
\tag{2.8}
\]
contains a strongly smoothing factor from (2.4) and at least two coefficient insertions. The lemma therefore proves
\[
T_n^R-T_n^0\in\mathfrak S_1.
\tag{2.9}
\]
This deals with the actual nonproper tails, including the terms with a projector at an *external* end. Merely observing \(PM_j\in\mathfrak S_2\) would not by itself prove those end terms trace class; (2.6) is what supplies the missing estimate.

For any trace-class \(C\), strong convergence and uniform boundedness of the heat semigroup give
\[
\lim_{\epsilon\downarrow0}\operatorname{Tr}(e^{-\epsilon\Delta}C)
=\operatorname{Tr}C.
\tag{2.10}
\]
Thus (2.9) can change the finite constants but cannot produce a new small-time divergence.

## 3. Proper pseudodifferential reduction and global summability

### 3.1 Reduction of the actual gapped inverse

Choose a uniformly properly supported classical parametrix \(G\) of \(\Delta^{-1}\) on this bounded-geometry manifold. It may be chosen with kernel support in an arbitrarily small fixed neighborhood of the diagonal and with odd-class parity. Its two-sided error is uniformly smoothing. The spectral gap and elliptic Sobolev estimates imply
\[
\Delta^{-1}-G\quad\text{is strongly smoothing}.
\tag{3.1}
\]
For example, if \(\Delta G=I-S\), then \(\Delta^{-1}-G=\Delta^{-1}S\), and the uniform smoothing property of \(S\) together with the global inverse gives (2.1).

Replace each \(h_0\) by \(\delta G\), and \(q\) by \(\delta DG\), in \(T_n^0\). This yields a uniformly properly supported classical operator \(U_n\) of order \(-n\), with
\[
T_n^R=U_n+C_n,\qquad C_n\in\mathfrak S_1,
\quad n=2,3.
\tag{3.2}
\]
Every difference term is covered by the two-insertion smoothing lemma with fixed background factors satisfying (2.4a). In particular,
\[
\|C_n\|_1\le C_{\Lambda,M}\,
\|j\|_{H^2}\|j\|_2\|j\|_\infty^{n-2},\qquad n=2,3,
\tag{3.2a}
\]
where the constant includes the fixed parametrix norms. Hence \(|\operatorname{Tr}(e^{-\epsilon\Delta}C_n)|\) is bounded by the same right-hand side uniformly for \(\epsilon\ge0\). Its convergence at zero is (2.10); no uniform convergence rate over arbitrary bounded sets of rough fields is claimed. Thus neither inverse-resolvent tails nor sharp-projector tails have been discarded.

### 3.2 Why \(H^\infty\), although not \(L^1\), is enough globally

Use a uniformly locally finite bounded-geometry partition by small coordinate balls, with slightly enlarged balls \(B_\nu^+\). For any sufficiently large fixed integer \(m\), put
\[
b_\nu=\|j\|_{H^m(B_\nu^+)}.
\]
Finite overlap gives
\[
\sum_\nu b_\nu^2\le C\|j\|_{H^m}^2,
\qquad
\sum_\nu b_\nu^n
\le(\sup_\nu b_\nu)^{n-2}\sum_\nu b_\nu^2<\infty
\quad(n=2,3).
\tag{3.3}
\]
All symbols of localized \(U_n\), and the finite number of symbol seminorms needed for a fixed heat remainder estimate, are bounded by \(Cb_\nu^n\). This follows because there are exactly \(n\) insertions, composition is uniformly properly supported, and all remaining coefficients are fixed uniform background coefficients. The same estimate can be written as products of two \(L^2\) derivatives of \(j\), with any remaining derivatives in \(L^\infty\).

A local heat parametrix may also be chosen uniformly properly supported. Its off-diagonal remainder has strongly smoothing norms \(O(\epsilon^N)\) for arbitrary fixed \(N\), by the bounded-geometry off-diagonal heat estimate. Applying §2 to that remainder gives a globally negligible trace-class contribution. The ordinary compact-chart heat-symbol expansion of the properly supported part has coefficients and remainder bounded by \(Cb_\nu^n\), uniformly in \(\nu\). Equation (3.3) therefore permits summing its coefficients and taking its small-time limit. In particular, the locally defined canonical finite-part density is absolutely integrable in the base variable.

This is the globalization argument. Local symbol parity alone would not supply (2.9), (3.2), or (3.3).

The same localization proves an additional fact used below: if \(U_n\) drops to order less than \(-3\), it is globally trace class. Local trace-norm bounds for such operators are controlled by the same finite symbol seminorms; only finitely many neighboring balls interact, and (3.3) sums those trace norms.

## 4. Principal symbols, actual internal trace, and heat divergences

Use the Fourier convention \(\nabla\mapsto i\xi\). The actual nonunitary lower-order terms do not alter
\[
\sigma_1(D)=i\varepsilon(\xi),\quad
\sigma_1(\delta)=-i\iota_\xi,\quad
\sigma_2(\Delta)=|\xi|^2,
\quad
q_0(\xi)=\frac{\iota_\xi\varepsilon(\xi)}{|\xi|^2}.
\tag{4.1}
\]
Its range is \(\ker\iota_\xi\). On that range,
\[
\iota_\xi B=\operatorname{ad}_{j(\xi^\sharp)},
\]
so
\[
a_{-1}|_{\ker\iota_\xi}
=-\frac{i}{|\xi|^2}\operatorname{ad}_{j(\xi^\sharp)}.
\tag{4.2}
\]
For \(\xi=\rho n\), the form multiplicities of this identical internal matrix are
\[
r_p=\binom2p=(1,2,1,0).
\tag{4.3}
\]
Thus the actual full internal rank remains six in each copy; the numbers in (4.3) are *form* multiplicities, not a removal of an internal sector.

If \(E(v)x=v\times x\), the real adjoint matrix is
\[
\operatorname{ad}_{(w,f)}=
\begin{pmatrix}E(w)&-E(f)\\E(f)&E(w)\end{pmatrix},
\]
whence
\[
\operatorname{tr}_{\mathfrak g}(\operatorname{ad}_{(w,f)}^2)
=4(|f|^2-|w|^2),\qquad
\operatorname{tr}_{\mathfrak g}(\operatorname{ad}_{(w,f)}^3)=0.
\tag{4.4}
\]
No CS coupling \(\kappa\) occurs in these wheel traces, because the given relative operator is \(h\operatorname{ad}_j\), with that normalization already fixed.

For the quadratic leading heat term,
\[
\begin{aligned}
&(2\pi)^{-3}\int_0^\infty e^{-\epsilon\rho^2}d\rho
\int_{S^2}-r_p\operatorname{tr}_{\mathfrak g}
 (\operatorname{ad}_{j(n)}^2)\,d\Omega\\
&\hspace{8mm}=-\frac{r_p}{12\pi^{3/2}\sqrt\epsilon}
 \sum_a\operatorname{tr}_{\mathfrak g}
 (\operatorname{ad}_{j_a}^2).
\end{aligned}
\tag{4.5}
\]
Here \(\int_0^\infty e^{-\epsilon\rho^2}d\rho=\sqrt\pi/(2\sqrt\epsilon)\) and \(\int_{S^2}n_an_b\,d\Omega=(4\pi/3)\delta_{ab}\). Integration in \(x\), (4.4), and §3 give precisely (R1).

All differential operators are odd-class, their elliptic parametrices retain that parity, and multiplication is order zero and even in \(\xi\). Hence \(U_n\) has
\[
u_{-n-k}(x,-\xi)=(-1)^{n+k}u_{-n-k}(x,\xi).
\tag{4.6}
\]
For the quadratic, the degree-minus-three term is odd in \(\xi\), so its sphere integral, and therefore the possible logarithmic divergence, vanish. For the cubic the leading degree-minus-three symbol is odd, so there is no logarithmic divergence either; (4.4) in fact makes its fiber trace vanish pointwise even before angular integration. There are no negative-power heat terms for an operator of order minus three in dimension three.

Finally,
\[
\sum_p\sigma_pr_p=-1+2-1=0,
\tag{4.7}
\]
which cancels the only quadratic power divergence. This proves (R1), (R2), and the finite unrenormalized heat-supertrace limits. The actual spin potentials and curvature affect finite and vanishing-order terms, not the divergent coefficients just calculated.

## 5. Ordinary trace class and explicit counterexamples

A localized classical matrix operator of order \(-m\), with a nonzero principal symbol on an open microlocal set, cannot be trace class when \(m\le3\). One way to see the obstruction is to restrict to a component where the symbol is microlocally elliptic and use the local singular-value asymptotic \(s_k\asymp k^{-m/3}\). Equivalently, frequency shells contain order \(N^3\) independent packets with singular size order \(N^{-m}\): their absolute trace contributions do not sum. This is a local obstruction, unaffected by the global trace-class corrections in (3.2).

Under the real-to-complex identification \(z=w+if\), the adjoint is complex cross product \(E(z)\), viewed as a real matrix. It obeys
\[
E(z)^2=zz^t-(z\cdot z)I,\qquad
E(z)^3=-(z\cdot z)E(z).
\tag{5.1}
\]
Consequently \(E(z)^2\ne0\) for every nonzero \(z\). At any point with \(j\ne0\), some real covector \(\xi\) has \(j(\xi)\ne0\); by continuity this yields a nonzero order-minus-two symbol on an open set. Thus every nonzero \(j\) has \(A_j^2\notin\mathfrak S_1\).

For the cubic, the principal symbol vanishes identically iff
\[
E(z(\xi))^3=0\quad\text{for every real }\xi.
\]
If \(j\) is not zero at the point, (5.1) and polynomial identity imply \(z(\xi)\cdot z(\xi)=0\) identically in \(\xi\); polarization gives \(z_a\cdot z_b=0\) for all \(a,b\). A nondegenerate complex quadratic form on \(\mathbb C^3\) has totally isotropic subspaces of dimension at most one. This proves the pointwise characterization in (R3). When it holds everywhere, \(U_3\) drops to order at most minus four, and §3.2 plus (3.2) makes the actual global cubic trace class. If it fails anywhere, the local order-minus-three obstruction proves the converse.

Concrete compactly supported examples, in a local orthonormal frame with a smooth nonzero bump \(\chi\), are:

- \(j=\chi\theta^1J_1\): \(A^2\) and \(A^3\) are both non-trace-class. The individual quadratic heat traces have the nonzero coefficient \(r_p\|\chi\|_2^2/(3\pi^{3/2}\sqrt\epsilon)\); their supertrace nevertheless has a finite limit. The cubic heat traces have finite limits despite non-trace-classness.
- \(j=\chi\theta^1(J_1+P_2)\): \(z=(1,i,0)\chi\theta^1\) is null. The cubic is trace class, but the square is not. Moreover \(|w|^2=|f|^2\), so even each individual quadratic heat trace has a finite limit. This explicitly separates finite heat limits from absolute trace class.

For context, heat interpolation also gives
\[
A_j\in\mathfrak S_p\quad(p>3),\qquad
A_j^2\in\mathfrak S_q\quad(q>3/2),\qquad
A_j^3\in\mathfrak S_q\quad(q>1),
\]
using \(j\in L^2\cap L^\infty\). These upper bounds alone do not resolve either endpoint; the principal-symbol argument above does.

## 6. What canonical trace means here, and what it does not mean

For the properly supported odd-class representative \(U_n\), let \(\operatorname{TR}(U_n)\) be the integral of its coordinate-invariant finite-part symbol density. On an odd-dimensional manifold, odd-class parity removes the degree-minus-dimension residue. Here this density is integrable by (3.3). Define the trace of the actual wheel in this class by
\[
\operatorname{TR}_{\rm glob}(T_n^R)
=\operatorname{TR}(U_n)+\operatorname{Tr}(C_n),
\qquad T_n^R=U_n+C_n.
\tag{6.1}
\]
Changing the properly supported parametrix changes the two terms by opposite ordinary traces, so the definition does not depend on that choice. For this Laplace-type heat weight the possible finite-part weight anomaly also vanishes: the degree-minus-three component of \(U_n\log\Delta\) has odd angular parity. Thus (6.1), degree by degree, is the heat finite part \(F_{n,p}\).

The required noncompact conditions are therefore substantive:

1. uniformly controlled bounded geometry and a positive invertible Laplace-type weight;
2. a proper classical odd-class representative;
3. integrable canonical density and summable uniform local remainder estimates;
4. an **actual globally trace-class** remainder, including sharp spectral tails.

Uniform symbols alone, or a formally zero residue, are insufficient. Cyclicity on a larger noncompact algebra would additionally require that all products involved stay in an integrable class and that any integrations by parts have no uncontrolled boundary-at-infinity terms. No blanket noncompact cyclic-trace theorem is being asserted.

For generic \(j\), (6.1) and the finite heat-supertrace limit are not ordinary \(\operatorname{STr}(A_j^n)\) at zero heat time. Multiplication by the bounded grading involution cannot make a non-trace-class operator trace class. The cancellation is of regulated scalar traces, not of absolute singular values.

## 7. Spatial infinity: a useful boundary of the theorem

The assumption is not secretly \(j\in L^1\). On \(\mathbb H^3\), a smooth field with magnitude comparable to \(e^{-3r/2}\) outside a ball, with bounded-frame derivatives of the same order, lies in every \(H^s\) but not in \(L^1\): the volume element grows as \(e^{2r}\). Its quadratic and cubic wheels are covered because two \(L^2\) insertions suffice.

In contrast, bounded smooth coefficients without spatial integrability do not suffice. In upper-half-space coordinates take the standard orthonormal coframe \(\theta^1=dx/z\), \(\theta^2=dy/z\), \(\theta^3=dz/z\), the corresponding background internal frame, and the nondecaying insertion \(j=c\theta^1J_1\), \(c\ne0\). The actual background, insertion, sharp spectral cutoff, and heat operator are equivariant under horizontal translations. The quadratic and cubic operators have nonzero principal symbols. Translate one compactly supported test vector to a sequence escaping to infinity: it converges weakly to zero while the norm of its image under \(e^{-\epsilon\Delta}A^n\) stays fixed and nonzero. Thus these regularized operators are not even compact, hence not globally trace class, at any \(\epsilon>0\). Spatially localized heat traces still exist. Local parity cannot repair this global failure.

All constants in this proof are for fixed \(\Lambda\) and fixed geometry. No uniform \(\beta\downarrow0\), large-\(\Lambda\), arbitrary-quotient, or boundary-at-infinity limit is proved.

## 8. Verification and remaining scope

The exact Sage computation checked the real rank-six Killing form, vanishing internal cubic trace, exterior coexact multiplicities, BV cancellation, a semisimple cubic obstruction, and the nonzero-square/zero-cube nilpotent example. All six conditions passed in the successful run. The actual results are in [CAS results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/cas-success-results.json>); the untouched tool payload, including exact input, is in [server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/cas-success-server-return.json>); exact matrices are in [Sage objects](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/cas-success-matrices.sobj>). The first run completed the algebra but failed to JSON-serialize a Sage Integer; that failure is preserved in [failed-run record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/cas-failure-01.json>). The repair only cast JSON scalar fields and used the nondeprecated version string.

The global functional analysis is the proof in §§2–3, not a numerical or CAS claim. This delegated session had no remaining delegation depth, so it did not launch another reviewer. No exact finite nonlocal wheel value, phase, QME identity, or rough-field sharp regularity endpoint was calculated.
