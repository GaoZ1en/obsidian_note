# Low-wheel heat traces and an AdS gravitational tadpole

## Result and proof level

**The actual gravitational CS low wheels have better ultraviolet behavior than their individual degree blocks, but this does not remove the spatial tadpole obstruction or establish quantum transport.** With the complete Hodge operator, actual sharp UV projector and coexact polarization fixed below:

1. **Proved, physical-body trace theorem:** for smooth compactly supported insertions, the first three heat supertraces have finite small-time limits. Odd-class symbol parity eliminates heat logarithms; the actual coexact BV multiplicities cancel the remaining power divergences. The quadratic and cubic limits extend continuously to the smooth all-Sobolev domain. The unheated operators need not be trace class.
2. **Proved, actual H3 calculation:** the linear contribution to the one-loop action is
   \[
   \boxed{\mathcal W^{[1]}_{1,\Lambda}(j;\varepsilon)
   =C_\Lambda(\varepsilon)\int_{\mathbb H^3}\operatorname{tr}(e_0^{-1}f)\,dV,\qquad
   C_\Lambda=\frac23(I_0-2I_1+I_2).}
   \tag{1}
   \]
   Its ultraviolet limit is finite and strictly positive for \(\Lambda^2\ge5\). There is no connection-fluctuation term. The full spin bundles, not merely transverse-traceless modes, determine the coefficient.
3. **Proved, infrared obstruction on H3:** for \(\Lambda^2>5\), an actual retained smooth positive trace-coframe field has infinite spatial linear wheel at every positive heat time. For \(\Lambda^2\ge5\), the compact-support tadpole has no continuous extension to the whole all-Sobolev space. A linear subtraction changes the normalization; it is not forced by \(\det_4\).
4. **Proved, normalized free insertion:** at isotopy time zero, the cubic gravitational generator contributes
   \[
   \boxed{\gamma_{1,\Gamma_3}^{[1]}
   =-\frac{2a_1(\varepsilon,\Lambda)}\kappa\int e_0^a\wedge E_a,
   \qquad a_1=(I_0+2I_1)/3.}
   \tag{2}
   \]
   This coefficient has an uncancelled \(\varepsilon^{-1/2}\) divergence. The formula is defined on compact external test antifields, not automatically on retained antifields.
5. **Proved conditional diagnostic, not a continuum Ward theorem:** differentiating heat-weighted low wheels requires all ordered insertion positions and any variation of the regulator. Exact graded models detect both omissions. On a spatially admissible odd-class algebra, the canonical heat finite part removes the ordering defect; the actual scalar-principal order-two Hodge weight also gives an ordinary zero limit. Neither fact supplies the missing source, generator and retained BV-Laplacian prescription.

The first two assertions combine analytic estimates with independent finite-fiber checks. The full-spin spectral theorem is an explicitly identified harmonic-analysis input. No continuous interacting BV pushforward, renormalized QME, metric-side auxiliary quantum transport or quantum formulation equivalence is proved here.

## 1. Fixed operators, domain and normalization

Use the complete Euclidean setup of the [actual contraction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L27-L253>): radius one, \(\operatorname{Ric}=-2g\), \(\epsilon_{123}=1\), \(\kappa=2(16\pi G_N)^{-1}>0\), and

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\]

The manifold is \(\mathbb H^3\), or a fixed marked loxodromic cyclic quotient with primitive translation \(\beta>0\). Bounds need not be uniform as \(\beta\to0\). Radial exhaustion is not a hard spectral wall.

On \(E^p=L^2\Omega^p(M,\mathbb R^3_J\oplus\mathbb R^3_P)\), use the positive Hilbert metric, separately from the cyclic form \(\mathcal B(u,v)=\kappa\langle u,Hv\rangle_+\), \(H=S_{\rm int}*\). The nonunitary flat differential and its positive adjoint are

\[
D(w,f)=(d_{\omega_0}w-[e_0,f],d_{\omega_0}f+[e_0,w]),
\quad\delta=D^\dagger,\quad\Delta=D\delta+\delta D\ge1.
\]

Here \(H^2=1\), \([H,\Delta]=0\), \(\operatorname{Dom}(D+\delta)=H^1\), \(\operatorname{Dom}\Delta=H^2\). The relevant blocks are

\[
\begin{gathered}
G=D_0,\quad M=G^\dagger G=R_1\oplus R_1,\quad R_1=\nabla^*\nabla+2,\\
K=\begin{pmatrix}T&C\\C&-T\end{pmatrix},\quad
C=*d_{\omega_0},\quad T(Y)=1\operatorname{tr}Y-Y^T,\\
\mathbf R=K^2+GG^\dagger=R_K\oplus R_K,\quad
R_K=\sum_{s=0}^2R_s\Pi_s,\quad R_s=\nabla^*\nabla+4-s(s+1),\\
\Delta_0=M,\quad\Delta_1=\mathbf R,\quad
\Delta_2=H_1\mathbf RH_2,\quad\Delta_3=H_0MH_3.
\end{gathered}
\tag{3}
\]

The spin dimensions are \((1,3,5)\); the full form ranks are \((6,18,18,6)\). For fixed \(\Lambda>1\), put

\[
P=1_{[0,\Lambda^2]}(\Delta),\quad R=1-P,\quad
h=\delta\Delta^{-1}R,\quad
Q=R\delta D\Delta^{-1},\quad\mathcal L_0=QE=R\ker\delta.
\tag{4}
\]

This is the closed UV polarization. Its regular domain is \(\mathcal L_0\cap H^1\), not the closed image of \(h\). The retained band is infinite rank.

For a physical insertion \(j=(w,f)\), write \(J_j=\operatorname{ad}_j\). The left-relative restricted Hessian is

\[
K_0^{-1}K_j=1+A_j,\qquad A_j=h_T\operatorname{ad}_j|_{\mathcal L_0}.
\tag{5}
\]

The coefficient-first totalization gives two signs \((-1)^{1-p}\), one from the bracket and one from \(h_T\); they cancel. Thus its physical-body form blocks are \(hJ_j\), while the coordinate supertrace signs are \((-1)^{1-p}=(-,+,-,+)\). Both internal copies are retained. For \(j\in H^\infty:=\bigcap_sH^s\), \(A_j\in\mathfrak S_p\) for \(p>3\), generally not \(\mathfrak S_3\).

Define

\[
T_n(j;\varepsilon)=\operatorname{STr}_{\mathcal L_0}
(A_j^ne^{-\varepsilon\Delta}),\qquad
\mathcal W^{[n]}_{1,\Lambda}=\frac{(-1)^{n+1}}{2n}T_n.
\tag{6}
\]

Here \([n]\) is homogeneous degree in the insertion \(j\), not necessarily degree in retained coordinates after \(j=x+y(x)\). A compactly supported insertion is a test potential, not a claimed compactly supported retained field. The right-weighted ordering in (6) is intentional. On the domain of §3.1 it agrees with the heat-sandwiched trace; an unsandwiched left-weighted ordering is used below only when its trace-classness is separately justified.

## 2. Why the low ultraviolet powers cancel

### 2.1 Actual coexact symbols

In normal coordinates and a Levi-Civita-parallel frame, let \(\epsilon_a\) be exterior multiplication, \(\iota_a\) contraction, and \(B_a=\operatorname{ad}_{P_a}\). Then

\[
D=\epsilon_a(\nabla_a+B_a),\qquad
\delta=-\iota_a\nabla_a+\iota_aB_a,\qquad B_a^\dagger=B_a.
\]

The order-one symbol of \(\Delta\) vanishes in this frame. With \(q_0=\iota(\xi)\epsilon(\xi)/|\xi|^2\),

\[
h_{-1}=-i\iota(\xi)/|\xi|^2,\quad
h_{-2}=\iota_aB_a/|\xi|^2,\quad
a_{-1}=-\frac{i}{|\xi|^2}\operatorname{ad}_{j(\xi^\sharp)}q_0.
\tag{7}
\]

The coexact form multiplicities are \(m_p=\binom2p=(1,2,1,0)\). At the next order one must keep the coexact projection's subprincipal symbol: if \(q_{-1}\) denotes it, then
\(q_0h_{-2}+q_{-1}h_{-1}=h_{-2}\). Keeping only \(q_0\) would miss part of the first-wheel coefficient.

An integer-order symbol is *odd-class* when

\[
a_{m-r}(x,-\xi)=(-1)^{m-r}a_{m-r}(x,\xi).
\tag{8}
\]

Differential operators, their elliptic inverses and compositions have this parity. Hence the actual \(h,J_j,Q,A_j\) do locally, including lower-order connection terms. The sharp low projector is locally smoothing: \(P:H^{-s}\to H^r\) is bounded for all finite \(r,s\). It is not a phase-space step symbol, a finite-rank operator, or necessarily a properly supported global operator. It changes finite terms, not the homogeneous ultraviolet symbols.

In dimension three, the degree-minus-three symbol of any odd-class operator is odd. Therefore

\[
\operatorname{res}(A_j^n\Delta^k)=0\quad(k=0,1,\ldots),
\tag{9}
\]

so there are no heat logarithms. This is an all-symbol parity argument, not an inference from a few computed heat coefficients.

### 2.2 Ordinary degree traces and their graded sum

The needed internal identities are

\[
\operatorname{tr}_{\mathfrak g}(B_a\operatorname{ad}_{j_b})=4f_b{}^a,
\qquad
\sum_a\operatorname{tr}_{\mathfrak g}(\operatorname{ad}_{j_a}^2)
=4(f\cdot f-w\cdot w).
\tag{10}
\]

For real fields these contractions use the positive background component norms; their complex continuation is bilinear, not a Hermitian absolute square. The derivative-of-\(j\) part of the first subprincipal trace vanishes by \(\operatorname{tr}\operatorname{ad}_X=0\). Angular integration of (7), using
\((2\pi)^{-3}\int e^{-\varepsilon|\xi|^2}|\xi|^{-2}d^3\xi=(4\pi^{3/2}\sqrt\varepsilon)^{-1}\), gives, on compact support,

\[
\begin{aligned}
\operatorname{Tr}_{\mathcal L_0^p}(e^{-\varepsilon\Delta}A_j)
&=\frac{m_p}{\pi^{3/2}\sqrt\varepsilon}\int\operatorname{tr}F
  +\mathcal T_{1,p}(j)+O(\sqrt\varepsilon),\\
\operatorname{Tr}_{\mathcal L_0^p}(e^{-\varepsilon\Delta}A_j^2)
&=\frac{m_p}{3\pi^{3/2}\sqrt\varepsilon}\int(w\cdot w-f\cdot f)
  +\mathcal T_{2,p}(j)+O(\sqrt\varepsilon),\\
\operatorname{Tr}_{\mathcal L_0^p}(e^{-\varepsilon\Delta}A_j^3)
&=\mathcal T_{3,p}(j)+O(\sqrt\varepsilon),\qquad F=e_0^{-1}f.
\end{aligned}
\tag{11}
\]

All integrals include \(dV\). The first possible \(\varepsilon^{-1}\) term is absent by oddness. The cubic principal fiber trace also vanishes, since \(\operatorname{ad}_X\) is skew-transpose for the invariant nondegenerate cyclic form and \(\operatorname{tr}\operatorname{ad}_X^3=0\).

Now

\[
\sum_p(-1)^{1-p}m_p=-1+2-1=0.
\tag{12}
\]

Thus \(T_n(j;\varepsilon)\) has a finite ordinary limit for \(n=1,2,3\) on the compact test domain. This is cancellation of trace coefficients, not cancellation of matrix symbols: generic \(A_j^2,A_j^3\) still fail ordinary trace-classness. The finite quadratic/cubic functionals are generally nonlocal and are not evaluated by the local coefficients in (11).

## 3. Global trace conditions and the smooth-domain extension

The [independent trace analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/proof.md>) supplies the symbol calculation and initial global argument. Its separately saved [global follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-followup-20261031.Re9NnFZn/followup.md>) supplies all smoothing placements, uniform subtracted-heat bounds and the density argument. Here the distinctions needed for their use are explicit.

### 3.1 Positive heat time is enough for two insertions, not for one

Let \(B=hJ_j\). Since \(QB=B\), its extension from the UV space obeys \((hJ_jQ)^n=B^nQ\). Whenever the indicated heat products are trace class, ordinary cyclicity gives

\[
\operatorname{Tr}_{\mathcal L_0}(A_j^ne^{-\varepsilon\Delta})
=\operatorname{Tr}_E(B^ne^{-\varepsilon\Delta}).
\tag{13}
\]

Only the coexact projection has been removed; the sharp \(R\) inside every \(h\) remains.

For compact smooth \(j\), \(J_je^{-\varepsilon\Delta}\) maps into arbitrarily high Sobolev regularity with output in a fixed compact set, so it factors through a trace-class compact-domain Sobolev inclusion. Multiplying by bounded \(h\) proves the right-weighted first product trace class. The adjoint of the left-weighted product \(\delta e^{-\varepsilon\Delta}\Delta^{-1}RJ_j\) has the same compact-output property. Ordinary cyclicity is therefore justified for both orderings in the compact linear calculation and (13).

For \(j\in L^2\cap L^\infty\), set \(B_0=\delta\Delta^{-1/2}R\). It is bounded and intertwines \(\Delta\), while \(h=B_0\Delta^{-1/2}\). The multiplier polar decomposition gives

\[
\Delta^{-1/2}J_j\Delta^{-1/2}
=(\Delta^{-1/2}U|J_j|^{1/2})(|J_j|^{1/2}\Delta^{-1/2})\in\mathfrak S_2.
\]

Each factor is \(\mathfrak S_4\), since \(|J_j|^{1/2}\in L^4\) and the gapped order-minus-one multiplier estimate applies. Consequently \(hJ_jh\in\mathfrak S_2\). The bounded heat diagonal also gives \(J_je^{-\varepsilon\Delta}\in\mathfrak S_2\). Therefore

\[
B^ne^{-\varepsilon\Delta}
=B^{n-2}(hJ_jh)(J_je^{-\varepsilon\Delta})\in\mathfrak S_1,
\quad
\|B^ne^{-\varepsilon\Delta}\|_1
\le C_\varepsilon\|B\|^{n-2}\|j\|_2^2,
\quad n\ge2.
\tag{14}
\]

This is a global estimate retaining the actual sharp projection. Its constant diverges at small heat time; (14) alone does not prove a finite heat limit. It also justifies the heat sandwich without an illicit cyclic-order inference: put \(X=B^{n-2}(hJ_jh)\in\mathfrak S_2\). Both \(e^{-\varepsilon\Delta/2}X\) and \(J_je^{-\varepsilon\Delta/2}\) are Hilbert–Schmidt. Their ordinary trace cyclicity gives
\[
\operatorname{Tr}(e^{-\varepsilon\Delta/2}B^ne^{-\varepsilon\Delta/2})
=\operatorname{Tr}(XJ_je^{-\varepsilon\Delta}).
\]
This is first an ordinary trace identity in each degree, with the degree weights inserted afterwards; cycling two odd maps directly under a supertrace would require the graded sign. No assertion that \(AB\in\mathfrak S_1\) alone implies \(BA\in\mathfrak S_1\) is used.

### 3.2 Quadratic and cubic finite limits on \(H^\infty\)

A uniform bounded-geometry parametrix splits \(h\) into a uniformly properly supported order-minus-one operator and a globally Sobolev-smoothing remainder. The latter includes the sharp low-band correction and has a factorization

\[
S=\Delta^{-N}T_N\Delta^{-N},\qquad T_N\text{ bounded},
\tag{15}
\]

for every sufficiently large finite \(N\). No rapid off-diagonal decay of the sharp projector is assumed.

For a wheel with at least two insertions, its smoothing terms have finite heat-trace limits by cyclic Hilbert–Schmidt factorization. For example,

\[
\begin{aligned}
\operatorname{Tr}\bigl(SJ_j(hJ_j)^{n-1}e^{-\varepsilon\Delta}\bigr)
=\operatorname{Tr}\bigl[
(J_je^{-\varepsilon\Delta}\Delta^{-N})T_N
(\Delta^{-N}J_j(hJ_j)^{n-2}h)\bigr].
\end{aligned}
\tag{16}
\]

The two displayed outer factors are Hilbert–Schmidt, and the first converges in that norm as \(\varepsilon\downarrow0\). Cyclicity is used at positive time where the original products are trace class, as in (14). Formula (16) establishes the trace-value limit; it does not rely on the false general inference that \(AB\in\mathfrak S_1\) implies \(BA\in\mathfrak S_1\). All smoothing placements are covered: writing \(h=H_{\rm loc}+S\), telescope
\[
(hJ_j)^n-(H_{\rm loc}J_j)^n
=\sum_{k=0}^{n-1}(hJ_j)^kSJ_j(H_{\rm loc}J_j)^{n-1-k}.
\]
The \(k=0\) term has (16)'s factorization. For \(k\ge1\), the two adjacent insertions sandwich \(S\), and
\(J_jSJ_j=(J_j\Delta^{-N})T_N(\Delta^{-N}J_j)\in\mathfrak S_1\), with norm at most \(C_N\|j\|_2^2\). These unheated terms are genuinely trace class; strong heat convergence suffices. The two cases together need no off-diagonal decay assumption for the sharp projector.

For the properly supported part, subtract the homogeneous symbols through order minus three. Every quadratic/cubic coefficient contains at least two factors of the form \(\nabla^a j\), allowing \(a=0\). For \(j\in H^\infty\), these products are integrable by Cauchy–Schwarz, with the remaining factors bounded. The remainder has order below minus three. The chartwise trace-class bound uses finitely many integrable symbol derivatives; on a uniformly locally finite cover its constants sum as

\[
\sum_i a_i^2\le C\|j\|_{H^s}^2,
\qquad
\sum_i a_i^3\le (\sup_i a_i)\sum_i a_i^2,
\tag{17}
\]

where \(a_i\) is a sufficiently high local Sobolev norm. More explicitly, use a uniform partition \(\sum_i\chi_i^2=1\) and enlarged cutoffs \(\psi_i\) containing the finite proper-support radius of each word. On a fixed-size compact chart model, \(\chi_i^2(H_{\rm loc}J_j)^n\psi_i\) splits into its finite symbol part through order minus three and an order-minus-four remainder. The latter has trace norm at most \(Ca_i^n\). For the finite symbol part, radial parameter integrals give only the quadratic \(\varepsilon^{-1/2}\) term of (11); odd-class parity eliminates the degree-minus-three logarithm. Their subtracted traces converge and are bounded by \(Ca_i^n\), uniformly for \(0<\varepsilon\le1\). The actual and compact-model heat kernels agree on this neighborhood up to arbitrarily high small-time order with the same summable bounds. No spatial cutoff is commuted through the heat operator.

Consequently, with \(W_{n,p}(j;\varepsilon)\) denoting the ordinary degree trace and \(c_{2,p}(j)\) its coefficient in (11),
\[
\left|W_{n,p}(j;\varepsilon)-\mathbf1_{n=2}c_{2,p}(j)\varepsilon^{-1/2}\right|
\le C\|j\|_{H^s}^{\,n},\qquad n=2,3,
\tag{17a}
\]
for a sufficiently large finite \(s\), independently of spatial support and heat time in \((0,1]\). This is a bound on the subtracted trace, not the trace norm of the leading symbol. Polarization bounds differences by
\(C\|j-j_k\|_{H^s}(\|j\|_{H^s}+\|j_k\|_{H^s})^{n-1}\), uniformly in heat time. Approximate \(j\) by compact smooth \(j_k\) in \(H^s\), first choose \(k\) and then send \(\varepsilon\) to zero. This proves the actual limit and identifies it with the unique continuous extension of the compact-support finite part; integrability of local coefficients alone would not suffice.

It follows that

\[
\mathcal T_n(j):=\lim_{\varepsilon\downarrow0}T_n(j;\varepsilon),
\qquad n=2,3,
\tag{18}
\]

are continuous homogeneous functionals on \(H^\infty\). The ordinary quadratic degree traces require the subtraction in (11); their BV sum does not. A [second fresh derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/independent-proof.md>) confirms this global theorem without reading the present synthesis or the other new reviews. Its stronger two-insertion smoothing lemma assumes Sobolev bounds for each fixed factor and its adjoint; it is not a theorem for arbitrary bounded nonlocal factors. The conservative proof above needs only the displayed cyclic factorizations. No minimal Sobolev threshold, generic unheated trace-classness, or such finite-part theorem for merely measurable \(L^2\cap L^\infty\) coefficients is asserted.

For the linear wheel, a separate spatial pairing remains necessary. Insertions in \(H^\infty\cap L^1\) suffice for the heat-sandwiched prescription and its canonical finite part on the fixed backgrounds. Smooth all-Sobolev regularity alone does not suffice, as §5 proves.

## 4. Exact linear wheel on H3

### 4.1 The coincident derivative vanishes exactly

Let

\[
\mathfrak F_\varepsilon(r)=r^{-1}e^{-\varepsilon r}1_{r>\Lambda^2}.
\]

The trace kernel in degree \(p\) is
\((\delta_x\mathfrak F_\varepsilon(\Delta_{p+1})(x,y))J_{j,p}(y)\).
The derivative acts on the kernel, not on \(j\).

Each actual block in (3) is a natural Levi-Civita Laplacian plus parallel metric-built potentials. Point-centered hyperbolic geodesic symmetry has tangent action \(-1\); on each tensor fiber it acts by a scalar parity. Its kernel covariance therefore gives

\[
\nabla_x\mathfrak F_\varepsilon(\Delta_p)(x,y)|_{y=x}=0.
\tag{19}
\]

For upper degrees the two Hodge stars cancel orientation-reversal signs. This applies to the full sharp-cutoff smoothing multiplier, not just its leading symbol. It need not hold on a cyclic quotient.

Isotropy gives \(\mathfrak F_\varepsilon(R_s)(x,x)=a_s1_{2s+1}\). Finite form/internal contraction then gives

\[
\begin{array}{c|c|c}
p&\text{BV sign}&\operatorname{Tr}_p(e^{-\varepsilon\Delta}A_j)/\int\operatorname{tr}F\\\hline
0&-&4a_1\\
1&+&\frac83a_0+2a_1+\frac{10}3a_2\\
2&-&4a_1\\
3&+&0
\end{array}
\tag{20}
\]

All \(w\) terms vanish. Thus \(C_\Lambda=\frac43a_0-3a_1+\frac53a_2\), including the action factor \(1/2\). There is no further \(\kappa\), level or real/complex doubling factor.

### 4.2 Full spin multiplicities, not a TT replacement

The signed-helicity principal-series components in a full spin-\(s\) bundle are \(m=-s,\ldots,s\), each once. Restriction to the stabilizer \(SO(2)\) and Frobenius reciprocity give these multiplicities. With \(\lambda\ge0\), their eigenvalue and physical-volume density are

\[
R_s|_{\lambda,m}=\lambda^2+5-m^2,
\qquad d\mu_m=\frac{\lambda^2+m^2}{2\pi^2}\,d\lambda.
\tag{21}
\]

The scalar spherical kernel fixes the normalization. The principal-series labels and the two-helicity TT density agree with [David–Gaberdiel–Gopakumar, v2, §5, (5.107), (5.110), (5.130)](<https://arxiv.org/html/0911.5085v2>); their TT density must first be decomposed into signed helicities and assembled into the full bundle. This selected HTML formula check is not a PDF visual audit.

Set

\[
c_m=5-m^2,\quad b_m=\sqrt{\max(\Lambda^2-c_m,0)},\qquad
I_m=\frac1{2\pi^2}\int_{b_m}^\infty
\frac{\lambda^2+m^2}{\lambda^2+c_m}e^{-\varepsilon(\lambda^2+c_m)}d\lambda.
\tag{22}
\]

Then \((2s+1)a_s=\sum_{m=-s}^sI_{|m|}\), proving (1). As a normalization/curvature check, the full heat fiber traces are

\[
\begin{aligned}
K_0(t)&=(4\pi t)^{-3/2}e^{-5t},\\
K_1(t)&=(4\pi t)^{-3/2}[e^{-5t}+2(1+2t)e^{-4t}],\\
K_2(t)&=(4\pi t)^{-3/2}[e^{-5t}+2(1+2t)e^{-4t}+2(1+8t)e^{-t}].
\end{aligned}
\tag{23}
\]

Their first three local coefficients match the full Laplace-type invariants. Those finite checks support the normalization; they do not prove Plancherel completeness.

### 4.3 The finite answer and its sign

Define

\[
J_m(b)=b+\frac{2m^2-5}{\sqrt{5-m^2}}
\arctan\frac b{\sqrt{5-m^2}}.
\]

Direct integration gives

\[
\boxed{C_\Lambda(0)=\frac{6-\sqrt5}{6\pi}
-\frac{J_0(b_0)-2J_1(b_1)+J_2(b_2)}{3\pi^2},}
\tag{24}
\]

\[
C_\Lambda(\varepsilon)=C_\Lambda(0)-\frac{\sqrt\varepsilon}{\pi^{3/2}}+O(\varepsilon).
\tag{25}
\]

Indeed, without the low-band deletion,

\[
I_m^{\rm all}=
\frac{e^{-c_m\varepsilon}}{4\pi^{3/2}\sqrt\varepsilon}
+\frac{2m^2-5}{4\pi\sqrt{c_m}}\operatorname{erfc}(\sqrt{c_m\varepsilon}).
\tag{26}
\]

The common divergent term cancels with weights \((1,-2,1)\); the finite low-band primitives must still be subtracted. The full-homotopy coefficient is \((6-\sqrt5)/(6\pi)\), not the answer at arbitrary \(\Lambda\).

For \(\Lambda^2\ge5\), change to common energy \(u\):

\[
C_\Lambda(\varepsilon)=\frac1{6\pi^2}\int_{\Lambda^2}^\infty
\frac{e^{-\varepsilon u}}u\left[
\sqrt{u-5}-\frac{2(u-3)}{\sqrt{u-4}}+\frac{u+3}{\sqrt{u-1}}
\right]du.
\tag{27}
\]

The bracket is strictly positive for \(u>5\). To see this, put \(z=u-5>0\), \(L=\sqrt z+(z+8)/\sqrt{z+4}\), \(N=2(z+2)/\sqrt{z+1}\). Both are positive and

\[
L^2-N^2=2\sqrt z\left(\frac{z+8}{\sqrt{z+4}}-\sqrt z\right)
+\frac{12z}{(z+4)(z+1)}>0.
\]

Consequently \(C_\Lambda(\varepsilon)>0\) for every \(\varepsilon>0\), and

\[
C_{\sqrt5}(0)=\frac{3-\sqrt5}{6\pi},\qquad
C_\Lambda(0)=\frac1{\pi^2\Lambda}-\frac5{36\pi^2\Lambda^3}+O(\Lambda^{-5})>0.
\tag{28}
\]

The heat limit is taken at fixed cutoff; no joint limiting procedure is implicit.

### 4.4 What changes on the cyclic quotient

For compact \(j\), define

\[
\mathfrak t_M(V;j)=\frac12\sum_{p=0}^2(-1)^{1-p}
\int_M\operatorname{tr}\bigl[(\delta_xV_{p+1})(x,y)J_{j,p}(y)\bigr]_{y=x}dV.
\]

With \(U^M_\varepsilon=\int_\varepsilon^\infty e^{-t\Delta_M}dt\) and
\(V^M_{\varepsilon,\Lambda}=e^{-\varepsilon\Delta_M}\Delta_M^{-1}P_{\Lambda,M}\),

\[
\mathcal W^M_{1,\Lambda}=\mathfrak t_M(U^M_\varepsilon-V^M_{\varepsilon,\Lambda};j).
\tag{29}
\]

Subtracting the locally lifted H3 kernels yields (1) plus the exact correction

\[
\mathfrak t_M\bigl[(U^M_\varepsilon-U^{\mathbb H^3}_\varepsilon)
-(V^M_{\varepsilon,\Lambda}-V^{\mathbb H^3}_{\varepsilon,\Lambda});j\bigr].
\tag{30}
\]

It has a finite compact-support heat limit: nonidentity small-time kernels are exponentially suppressed by \(d(x,\gamma^nx)\ge|n|\beta\), large-time convergence follows from the gap, and the actual finite-band term is locally smoothing. No image sum for the discontinuous sharp projector is assumed. The correction can depend on position and contain connection insertions; H3 point isotropy and (19) cannot simply be imposed on it. Its explicit value and noncompact-insertion extension are not calculated here.

## 5. The residual spatial obstruction and a possible normalization

### 5.1 A genuine retained direction

For \(\Lambda^2>5\), choose \(0<b^2<\Lambda^2-5\) and

\[
\phi_b(r)=\frac{1-\cos br}{r\sinh r},\qquad x=(0,\sigma\phi_be_0),\quad\sigma>0.
\tag{31}
\]

The [retained-band construction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L313-L370>) gives \(Px=x\), \(x\in H^\infty\), and a uniformly nondegenerate small coframe. In fact
\(\sinh r\,\phi_b=\int_0^b\sin(\lambda r)d\lambda\), so its trace-spin support lies in \([5,5+b^2]\); \(\|\phi_b\|_2^2=2\pi^2b\), but \(\phi_b\ge0\) and \(\int\phi_b=\infty\).

For compact insertion cutoffs \(0\le\chi_R\uparrow1\),

\[
\mathcal W^{[1]}_{1,\Lambda}(\chi_Rx;\varepsilon)
=3\sigma C_\Lambda(\varepsilon)\int\chi_R\phi_b\,dV\longrightarrow+\infty.
\tag{32}
\]

Thus even the summed BV diagonal has a spatial divergence at positive heat time. An ordinary trace-class obstruction also follows from the positive UV ghost sandwich of \(M_{\phi_b}\) with \(\mathfrak F_\varepsilon(R_1)^{1/2}\): its trace is a positive constant times \(\int\phi_b\). The unheated degree symbols and the infrared divergence are distinct obstructions.

For \(j=x+y(x)\), \(y=O(x^2)\), this is already an undefined homogeneous degree-one coefficient. Higher orders cannot repair it as a formal power series.

### 5.2 No continuous extension of the original compact-support tadpole

Take a nonnegative compact scalar bump \(\varphi\) with positive integral and mutually disjoint isometric translates \(\varphi_i\). Set

\[
f_N=N^{-3/4}\sum_{i=1}^N\varphi_i e_0.
\]

Every integer covariant Sobolev norm is \(O(N^{-1/4})\), hence \(f_N\to0\) in \(H^\infty\), while
\(\int\operatorname{tr}(e_0^{-1}f_N)=3N^{1/4}\int\varphi\to\infty\).
For \(\Lambda^2\ge5\), the nonzero functional (24) therefore has no continuous extension agreeing with all compact tests on \(H^\infty\). This uses ambient compact potentials, not compact retained-band fields.

There is also no nonzero radial bounded-band scalar in \(L^1(\mathbb H^3)\). If \(u=\sinh r\,\phi\) is oddly extended to the line, bounded spectral support makes its Fourier transform compactly supported. The hyperbolic \(L^1\) condition implies \(\int|u|e^{|r|}dr<\infty\), so that transform is holomorphic in \(|\operatorname{Im}\lambda|<1\). It vanishes on a real interval outside the band, hence identically. This applies to the retained radial trace block. It does not exclude all nonlinear stationary graph points from \(L^1\), because neither \(P\) nor \(h\) has been shown to preserve it.

### 5.3 A quadratic-starting physical determinant is additional data

For \(\|A_j\|<1\), let \(g_4(A)=\log(1+A)-A+A^2/2-A^3/3\). Equations (18) and the trace-class tail define the continuous physical-body functional

\[
\boxed{\mathcal W^{\ge2}_{1,\Lambda}(j)
=\frac12\left[\operatorname{STr}g_4(A_j)
-\frac12\mathcal T_2(j)+\frac13\mathcal T_3(j)\right].}
\tag{33}
\]

On compact H3 tests, the canonical full answer differs from (33) by precisely
\(C_\Lambda(0)\int\operatorname{tr}F\). Equation (33) chooses zero linear term; it is not an extension of that nonzero functional. Its finite quadratic/cubic terms are retained, unlike keeping only \(\det_4\). This supplies a concrete physical-body normalization to test, not a BV action on the full graded retained space or a Ward-compatible subtraction theorem.

## 6. The actual normalized generator insertion

Use the right-action and coefficient-first conventions of the [retained isotopy](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L31-L78>): \((q,p)=1\), \(QF=(S,F)\), \(\dot S=(S,\Gamma)\). At isotopy time zero,

\[
\Gamma_3=\int\left[R\iota_\xi w+T\iota_\xi f+
\kappa^{-1}W\wedge\iota_\xi E\right],\quad\xi=e_0^{-1}\zeta.
\tag{34}
\]

Here \(E,W\) are odd coframe/connection two-form antifields, \(R,T\) even ghost three-form antifields. In this section \(R\) in (34) is an antifield, not the spectral projector in (4).

We calculate the bare contribution with no extra source quantum generator \(\Gamma_{1,0}\). The local source amplitude at time zero is one. At external degree one only \(\langle\Gamma_3^{[2]}\rangle\) contributes; the term \(-\langle\Gamma^{[1]}S^{[3]}\rangle\) and stationary corrections start at higher external degree.

On the actual UV Lagrangian,

\[
c=(\eta,\zeta),\qquad p=(W,E)=-\kappa *G\bar c,\qquad
S_{{\rm gh},2}=-\kappa\langle\bar c,Mc\rangle_+.
\tag{35}
\]

The unit-width normalized odd Gaussian has
\(\langle\bar c c\rangle=+\kappa^{-1}M^{-1}R\),
\(\langle c\bar c\rangle=-\kappa^{-1}M^{-1}R\).
Use one factor \(e^{-\varepsilon\Delta}\) per covariance, equivalently half the heat time on each leg. A full heat factor on each leg would double \(\varepsilon\).

Using (19) and the algebraic part of \(G\),

\[
\langle(*W)_i^a\zeta^k\rangle_\varepsilon=a_1\epsilon_{ika},
\qquad\langle\zeta^k(*E)_i^a\rangle_\varepsilon=0.
\tag{36}
\]

The form contraction is
\((*e^i)\wedge\iota_k(*e^j)=\epsilon_{jki}dV\).
In the term \(W_i^a\zeta^kE_j^a\), the external odd \(E\) crosses two odd variables, introducing no sign. Since
\(\sum_{i,k}\epsilon_{jki}\epsilon_{ika}=-2\delta_{ja}\), this proves (2). The \(R,T\) terms require absent ghost–physical covariances; there is no UV top-form coordinate. The external \(W\) term contracts \(\zeta\) with \(E\) and vanishes.

Writing \(g_\Lambda=-2a_1/\kappa\),

\[
g_\Lambda(\varepsilon)=-\frac1{2\kappa\pi^{3/2}\sqrt\varepsilon}
+g_{\Lambda,\mathrm{FP}}-\frac{3\sqrt\varepsilon}{2\kappa\pi^{3/2}}+O(\varepsilon),
\tag{37}
\]

\[
\boxed{g_{\Lambda,\mathrm{FP}}=
\frac{\sqrt5+3}{6\kappa\pi}
+\frac{b_0+2b_1-\sqrt5\arctan(b_0/\sqrt5)-3\arctan(b_1/2)}{3\kappa\pi^2}.}
\tag{38}
\]

The exact positive-time coefficient is negative, while this specified heat finite part is positive. Unlike (25), (37) has no finite unrenormalized limit.

### The free-BV identity is distributional, not a retained Ward proof

Direct variation of \(I_2=\kappa\langle(w,f),K(w,f)\rangle/2\) gives

\[
Q_0E=\kappa(d_{\omega_0}w-[e_0,f]),\quad
Q_0(e_0^a\wedge E_a)=-\kappa d(e_0^a\wedge w_a)-2\kappa\operatorname{tr}F\,dV.
\tag{39}
\]

For compact scalar smearing \(\chi\),

\[
Q_0\int\chi e_0^a\wedge E_a
=\kappa\int d\chi\wedge e_0^a\wedge w_a-2\kappa\int\chi\operatorname{tr}F\,dV.
\tag{40}
\]

Thus on compact *unprojected test fields*,
\(Q_0\int e_0\wedge E=-2\kappa\int\operatorname{tr}F\), and the linear tadpole is distributionally \(Q_0\)-exact with primitive
\(-C_\Lambda(0)\int e_0\wedge E/(2\kappa)\).
This does not make that primitive an admissible retained Hamiltonian.

Indeed \(e_0\notin L^2\). The local equation \(R_Ke_0=4e_0\) is not an L2 spectral eigenvector statement and does not define \(P_\Lambda e_0\). For \(\Lambda^2>5\), the genuine retained antifield \(E=\vartheta\phi_b*e_0\) has infinite coefficient \(\int e_0\wedge E\). For \(\Lambda^2\le5\), the retained trace-spin channel is absent by its L2 spectrum, not by applying a projector to a constant. Equations (39)–(40) diagnose signs and possible local subtraction; they do not prove a retained Ward identity.

The [independent insertion derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/proof.md>) and [free-action addendum](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/free_Q0_addendum.md>) retain the complete odd ordering and the compact-smearing boundary term.

## 7. Regulated variations and what a Ward test actually requires

### 7.1 Ordered low-wheel variation

On one fixed UV space, let \(A\in\mathfrak S_4\), \(H=\delta A\in\mathfrak S_4\), \(\|A\|<1\), and \(R_\varepsilon=e^{-\varepsilon\Delta}\). In this section \(R_\varepsilon\) is the heat weight, not the sharp UV projection. Set

\[
P_3(A)=A-A^2/2+A^3/3,\quad
\mathcal D_\varepsilon(A)=\operatorname{STr}g_4(A)
+\operatorname{STr}(R_\varepsilon P_3(A)).
\tag{41}
\]

Assume every low-wheel ordering used below and its variations are trace class and differentiable in trace norm. Compact test insertions for the fixed physical operators satisfy the needed trace conditions; abstract membership in \(\mathfrak S_4\) alone does not. These are stronger ordering hypotheses than the right-weighted definition (6) requires on its larger domain. Then

\[
\begin{aligned}
\delta\mathcal D_\varepsilon={}&
-\operatorname{STr}(A^3(1+A)^{-1}H)
+\operatorname{STr}(R_\varepsilon(1-A+A^2)H)\\
&+\mathcal C_\varepsilon(A;H)
+\operatorname{STr}((\delta R_\varepsilon)P_3(A)),
\end{aligned}
\tag{42}
\]

\[
\boxed{\mathcal C_\varepsilon=
-\frac12\operatorname{STr}([A,R_\varepsilon]H)
+\frac13\operatorname{STr}\bigl(([A,R_\varepsilon]A+[A^2,R_\varepsilon])H\bigr).}
\tag{43}
\]

This follows by differentiating every position in \(A^n\), not by treating a weighted trace as cyclic. For a varying heat operator the correct term is Duhamel's
\(\delta R_\varepsilon=-\int_0^\varepsilon e^{-(\varepsilon-s)\Delta}(\delta\Delta)e^{-s\Delta}ds\), on compatible domains. The Hessian contribution to the action has the extra overall factor \(1/2\).

### 7.2 Finite heat noncyclicity need not survive the canonical limit

For spatially admissible odd-class products in odd dimension, the canonical trace is cyclic and equals the heat finite part with an admissible even-order odd-class weight. The [canonical-trace follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md#L33-L103>) states the analytic hypotheses and the closed-manifold input of [Grubb, Theorems 1.3 and 1.7](<https://ar5iv.labs.arxiv.org/html/math/0311081>). A noncompact application additionally requires globally integrable local expansions, no spatial boundary term, and valid cyclicity for the smoothing remainders. The two-insertion estimates of §3 supply heat limits for the physical wheels; they are not by themselves a theorem for every graded or weight-varying operator algebra. A fixed extra spatial weight \(\chi\) changes the functional and cannot silently be inserted into the canonical-trace assertion.

For the fixed actual order-two Hodge weight, whose principal symbol is scalar, and compact physical variations in such a globally admissible odd-class calculus, \(A,H\) have order minus one. Rewriting (43) as a heat trace of commutators shows that its only possible quadratic \(\varepsilon^{-1/2}\) coefficient is the fiber supertrace of \([\sigma_{-1}(H),\sigma_{-1}(A)]\), hence zero. The remaining possible degree-minus-three logarithm vanishes by parity. Its finite part is a sum of canonical traces of commutators, hence zero. Cubic terms have no power divergence and the same canonical cancellation. Under these spatial and weight hypotheses,

\[
\lim_{\varepsilon\downarrow0}\mathcal C_\varepsilon(A;H)=0.
\tag{44}
\]

The compact/local classical contribution is \(O(\sqrt\varepsilon)\); arbitrary trace-class global remainders give only an additional \(o(1)\) without stronger estimates. Odd class and even order alone guarantee a zero finite part, not (44). For example, on a flat three-torus of volume \(V\), set \(L=1-\nabla^2\), \(D_1=(-i\partial_1)L^{-1}\), \(X_{12}=1\) with other entries zero, \(A=D_1X\), \(H=D_1X^T\), and \(\Delta=\operatorname{diag}(1,4)L\). These are odd-class operators with a positive but nonscalar-principal weight, and
\(\mathcal C_\varepsilon\sim V/(48\pi^{3/2}\sqrt\varepsilon)\), while its canonical finite part remains zero.

For a smoothly varying admissible weight preserving odd class and fixed even order, with compatible common domains/spectral cuts and uniform differentiable heat asymptotics, weight independence gives a zero *finite part* of the separate regulator-variation contribution at fixed \(A\). It does not generally give a zero ordinary limit before power subtraction. Even the scalar example \(A=bL^{-1}\), \(\Delta_c=cL\) on that torus gives
\[
\operatorname{Tr}((\partial_c e^{-\varepsilon cL})P_3(A))
=-\frac{bV}{(4\pi)^{3/2}c^{3/2}\sqrt\varepsilon}+O(\sqrt\varepsilon),
\qquad b,c>0.
\]
The [separate follow-up calculations](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md#L129-L200>) derive both coefficients. They are operator counterexamples to dropping weight hypotheses, not gravitational anomalies. Arbitrary weights, moving domains, non-L1 linear insertions or full ghost/antifield variations do not automatically meet these hypotheses.

Thus finite-dimensional nonzero heat defects are not evidence of an unavoidable continuum gravitational anomaly. Conversely, (44) does not prove the gravitational BV identity: that identity contains more than determinant variations.

### 7.3 Exact graded counterexamples and the full diagnostic

The [independent Ward analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/report.md>) uses an exact graded Gaussian with retained pairs \((x,p),(z,q)\), UV even \(y_1,y_2\), UV odd \(\eta,\chi\),

\[
\begin{gathered}
K_b=1+z\operatorname{diag}(1,2)+t\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad\mu=1+t,\\
S_t=\mu x+\tfrac12y^TK_by+\mu\eta\chi,\quad
\Gamma_t=p(x+y_1y_2+\eta\chi)/\mu,\quad\nu_t=\mu.
\end{gathered}
\tag{45}
\]

It satisfies CME, closed-source transport and the exact finite BV Ward identity. The normalized insertion is

\[
\gamma_0=px/\mu,\quad
\gamma_1=\frac p\mu\left[-\frac t{\det K_b}-\frac1\mu\right],\quad
W_1=\tfrac12\log\det K_b-2\log\mu.
\]

For \(A=\operatorname{diag}(K_b-1,t1_2)\), heat weight \(\operatorname{diag}(r_1,r_2\mid1,1)\), and \((z,t,r_1,r_2)=(1/5,1/7,1/2,1/4)\), replacing only the determinant by (41) gives residual \(29/840\). A naive single-marked weighted insertion leaves \(-1/840\). Keeping only \(\det_4\), with source and insertion unchanged, leaves \(229/245\). Omitting the source instead adds \(1/\mu\).

A separate pure canonical UV rotation has zero normalized retained insertion and zero generator divergence, but fixed heat weight gives \(119/6000\). Transporting the weight by the same orthogonal conjugation cancels this defect exactly. These are exact finite tests, not an AdS discretization. The fixed-heat ordering defects vanish as the weight tends to one; the distinct tail-only \(\det_4\) subtraction residual does not.

For an actual continuum prescription, define \(\mathfrak D_t=\partial_t-(\,\cdot\,,\gamma_0)_P\), \(Q_t=(W_0,\,\cdot\,)_P\), and

\[
W_{1,\varepsilon}=\tfrac12\mathcal D_\varepsilon(A)-\ell(j)+C_\varepsilon.
\]

Only after specifying the generator and BV Laplacian in the same prescription can one test

\[
\boxed{\mathfrak R_\varepsilon=
\mathfrak D_tW_{1,\varepsilon}-Q_t\gamma_{1,\varepsilon}
+\Delta_{{\rm BV},P,\varepsilon}\gamma_0,\qquad
\mathfrak M_\varepsilon=Q_tW_{1,\varepsilon}
-\Delta_{{\rm BV},P,\varepsilon}W_0.}
\tag{46}
\]

Action/generator counterterms \((C,\eta)\), with bracket and BV operator fixed, must solve
\(\mathfrak D_tC-Q_t\eta=-\mathfrak R_\varepsilon\) and
\(Q_tC=-\mathfrak M_\varepsilon\).
Locality, spatial admissibility and derivability from one transported source are substantive extra conditions. Equation (33), a finite heat part of (37), and a pointwise density cannot be selected independently and then declared to solve (46).

## 8. Verification and the remaining mathematical interface

The evidence consists of independent derivations and scoped machine checks, not a finite-dimensional substitute for a global theorem:

- [Parent 48-component calculation and evidence guide](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-cs-tadpole-parent.ApcXP3/README.md>): 18 exact Wolfram checks, including the graded derivative trace, spectral normalization, cutoff derivative and limits. Its initial syntax failure is separately preserved and excluded.
- [Independent low-wheel proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V/proof.md>): 15 exact Wolfram checks of the coexact principal/subprincipal algebra and actual spin contractions; analytic parity, global estimates and radial bounded-band/L1 argument. Its scalar-coframe coefficient is six times (24), because it omits the action factor \(1/2\) and uses \(f=\phi e_0\), with \(\operatorname{tr}F=3\phi\).
- [Independent full H3 tadpole proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/proof.md>): independent form algebra, geodesic symmetry, full-spin branching, elementary spectral integrals, positivity and projection-correct quotient separation. Its initial noninteger Series-order failure is disclosed; the corrected spectral run is clean. The initial Sage version query emitted a nonmathematical deprecation warning.
- [Independent insertion evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/evidence_envelope.json>): 75 exact exterior-algebra checks, 12 physical-action first-jet residuals and the actual spectral-integral/finite-part calculation. All three follow-up returns are clean and untruncated.
- [Independent weighted-Ward proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/report.md>): 26 Wolfram checks and 25 separately implemented native Sage exterior-algebra checks. They retain source transport, normalized insertion, odd covariance and nonzero omission controls.

- [Expanded global proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-followup-20261031.Re9NnFZn/followup.md>) and [fresh independent global derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/gravitational-wheels-independent-20261031.HyvDSjvL/independent-proof.md>): uniform smoothing/local-subtraction arguments, with six additional exact Sage checks in the fresh derivation. Its first JSON-export failure is retained; the successful return is clean. The stronger optional endpoint classification is not required here.
- [Canonical-trace follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md>): thirteen additional exact checks of the commutator rewrite and two weight counterexamples, not a machine proof of the KV/global hypotheses.
- Separate supplied-synthesis audits of [trace domains](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-main21-audit-20261031.NySd6MWK/audit.md>), [tadpole/insertion](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/audit.md>) and [Ward diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/supplied-main21-section7-audit.md>) prompted the explicit heat-ordering, cutoff-range and weight qualifications. They refer to a preserved earlier snapshot, not the subsequently amended synthesis, and are not additional blind derivations.

**Verified:** the stated compact physical trace theorem; quadratic/cubic smooth-domain limits; actual cutoff-dependent H3 tadpole; its retained and continuity obstructions; the bare linear-antifield insertion and distributional free-BV sign; ordered regulator diagnostics and exact finite counterexamples.

**Assumptions:** fixed complete gapped gravitational operators, fixed sharp projection, the stated Euclidean cycle and coefficient conventions; standard bounded-geometry local pseudodifferential/heat calculus and explicitly normalized full-spin HC decomposition; spatial trace conditions wherever cyclicity is used. No change to the previously established classical boundary/CPS results is made.

**Still open:** explicit nonlocal quadratic/cubic kernels; the cyclic-quotient insertion; a common spatial subtraction and source quantum generator; the full graded extension before restricting to the physical body; the determinant of the removed geometric order-zero ghost factor; metric-side auxiliary transport; a regulator-compatible retained BV-Stokes map and the two equations (46). These calculations identify precisely why ultraviolet wheel cancellation alone is insufficient. They do not establish an unavoidable anomaly or rule out a matched quantum lift.
