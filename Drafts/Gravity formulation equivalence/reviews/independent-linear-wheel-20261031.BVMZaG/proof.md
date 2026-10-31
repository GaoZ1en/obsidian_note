# Independent derivation of the heat-regulated linear UV wheel

## Result

For the actual operators and the actual sharp projection specified below, on complete radius-one \(\mathbb H^3\), and for a real smooth compactly supported physical insertion \(j=(w,f)\),

\[
\boxed{\mathcal W_{\epsilon,\Lambda}(j)
:=\frac12\operatorname{STr}_{\mathcal L_0}
(e^{-\epsilon\Delta_{\rm H}}h_T\operatorname{ad}_j)
=C_\Lambda(\epsilon)\int_{\mathbb H^3}\operatorname{tr}(e_0^{-1}f)\,dV.}
\tag{1}
\]

There is no \(w\) coefficient. Both real internal copies and the coordinate BV parities are included. The displayed normalization includes the requested factor \(1/2\); no further \(\kappa\), level, or real/complex doubling factor belongs in (1).

Put

\[
c_m=5-m^2,\qquad d_m=2m^2-5,\qquad
b_m=\sqrt{\max(\Lambda^2-c_m,0)},\quad m=0,1,2,
\]

\[
I_m(\epsilon,\Lambda)=\frac1{2\pi^2}
\int_{b_m}^{\infty}
\frac{\lambda^2+m^2}{\lambda^2+c_m}
 e^{-\epsilon(\lambda^2+c_m)}d\lambda.
\]

Then the explicit coefficient, with the sharp UV exclusion still present, is

\[
\boxed{C_\Lambda(\epsilon)=\frac23\bigl(I_0-2I_1+I_2\bigr).}
\tag{2}
\]

For every fixed finite \(\Lambda>1\), its ultraviolet limit is finite:

\[
\boxed{\begin{aligned}
C_\Lambda(0)
={}&\frac{6-\sqrt5}{6\pi}\\
&-\frac1{3\pi^2}\left[
b_0-2b_1+b_2-\sqrt5\arctan\frac{b_0}{\sqrt5}
+3\arctan\frac{b_1}{2}+3\arctan b_2\right].
\end{aligned}}
\tag{3}
\]

In particular,

\[
C_\Lambda(\epsilon)=C_\Lambda(0)-\frac{\sqrt\epsilon}{\pi^{3/2}}+O(\epsilon).
\tag{4}
\]

The separate degree traces have \(\epsilon^{-1/2}\) divergences; their actual BV-weighted sum cancels them. This is a finite value of the specified heat-regulated linear wheel, not a proof that the unheated operator is trace class, not a determinant prescription for the other wheels, and not a continuum quantum-equivalence theorem.

For \(\Lambda^2\ge5\), \(C_\Lambda(\epsilon)>0\) for every \(\epsilon>0\), and \(C_\Lambda(0)>0\). Thus a genuine retained field need not have a finite spatial linear wheel: the retained positive, non-L1 field discussed in §7 below has a divergent spatial coefficient at every heat time.

The literal homogeneous formula (1) does **not** extend to a fixed cyclic quotient. Its identity/local part does, while additional finite, generally nonconstant quotient kernel terms survive. The compact-support \(\epsilon\to0\) limit still exists, under the fixed quotient gaps already assumed in the question. Section 8 gives a projection-correct exact formulation; it does not pretend to have evaluated those nonhomogeneous coefficients.

## 1. Inputs, scope and conventions

This derivation was performed without a proposed coefficient and without opening other new reviewer files. The read-only mathematical inputs were:

- [note18 §§1–3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L27-L253>): real complex, pairing, totalization, complete Hodge blocks, sharp chain projector and closed UV polarization;
- [note15 §§1–3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L24-L179>) and [its vector heat normalization](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L233-L243>);
- [note20 §7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L419-L462>) for the left-relative operator, and [§5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/20 One-loop BV transport and complete AdS trace obstructions.md#L313-L370>) for the retained infrared test field;
- [note14:318–333](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L318-L333>) only to align the signed-helicity/Casimir convention. The spectral normalization below was reconstructed and checked independently.

The setting is

\[
E^p=\Omega^p(\mathbb H^3,\mathbb R^3_J\oplus\mathbb R^3_P),\quad
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\]

The inner product defining \(\delta=D^\dagger\) is the **positive real Hilbert** product, not the indefinite cyclic pairing. Radius is one, \(\operatorname{Ric}=-2g\), and \(\epsilon_{123}=1\). The Lie-algebra connection is nonunitary for this Hilbert product. Its full Hodge operator is the one stated in the question:

\[
\Delta_0=R_1\oplus R_1,\quad
\Delta_1=R_K\oplus R_K,\quad
R_1=\nabla^*\nabla+2,
\]
\[
R_K=\nabla^*\nabla+2T=\bigoplus_{s=0}^2R_s,
\quad T(Y)=1\operatorname{tr}Y-Y^t,
\quad R_s=\nabla^*\nabla+4-s(s+1).
\]

Upper degrees are conjugated by \(H=S_{\rm int}*\). All closures are the complete L2 closures, with the stated gap. Set

\[
P=1_{[0,\Lambda^2]}(\Delta),\quad R=1-P,\quad
h=\delta\Delta^{-1}R,\quad
\mathcal L_0=R\ker\delta.
\]

The parity of the coordinate multiplying a p-form is \(1-p\bmod2\). The scalar in (1) is \(\operatorname{tr}(e_0^{-1}f)=e_0^{\mu a}f_{\mu a}\); for \(f=\phi e_0\), it is \(3\phi\).

No parent note or file under Articles was edited. All outputs of this derivation are new files in this unique review directory.

## 2. Totalization and removing only the coexact projection

Let \(\eta u_p\) be a BV coordinate times an ordinary p-form; \(\operatorname{gh}\eta=1-p\). Since the physical insertion has coefficient ghost number zero and form degree one,

\[
\operatorname{ad}_{j,T}(\eta u_p)=(-1)^{1-p}\eta\operatorname{ad}_j u_p.
\]

Applying \(h_T\) gives a second factor \((-1)^{1-p}\). Consequently the body operator in every form degree is the **unsigned** operator \(h\operatorname{ad}_j\), whereas its supertrace weights are

\[
(-1)^{1-p}=(-,+,-)\quad(p=0,1,2).
\tag{5}
\]

There is no degree-three block on \(\mathcal L_0\).

Define the actual spectral multiplier

\[
F_{\epsilon,\Lambda}(r)=\frac{e^{-\epsilon r}}r\,1_{(\Lambda^2,\infty)}(r).
\]

Intertwining of \(\delta\) and \(\Delta\) gives the extended p-block

\[
B_p=\delta_{p+1}F_{\epsilon,\Lambda}(\Delta_{p+1})\operatorname{ad}_{j,p}.
\tag{6}
\]

For compactly supported smooth j, this is trace class. One direct argument is to take its adjoint: the spectral multiplier, including its sharp jump, maps into arbitrarily high Sobolev spaces because all high-energy powers times its exponential are bounded. Multiplication by \(\operatorname{ad}_j^\dagger\) then gives an arbitrarily smooth output supported in a fixed compact set. Factoring through a compact-domain Sobolev inclusion of order greater than three proves trace class. A sharp low-band projector is locally smoothing by elliptic regularity; no Harish–Chandra Schwartz claim for the discontinuous multiplier is needed here.

Let \(Q_p\) be the orthogonal projection onto \(\mathcal L_0^p\). Since \(\delta^2=0\) and F includes R, \(Q_pB_p=B_p\). Hence trace-class cyclicity gives

\[
\operatorname{Tr}_{\mathcal L_0^p}(B_p|_{\mathcal L_0^p})
=\operatorname{Tr}_{E^p}(B_pQ_p)=\operatorname{Tr}_{E^p}B_p.
\tag{7}
\]

Only Q has been removed from the trace. The sharp UV factor R remains in F throughout. It is neither replaced by the heat multiplier nor set equal to one.

## 3. Why the coincident covariant derivative kernels vanish on H3

Write \(\varepsilon^i=e_0^i\wedge\), \(\iota_i=\iota_{e_i}\), and let

\[
(L_a)_{bc}=\epsilon_{acb},\quad
A_a=\begin{pmatrix}L_a&0\\0&L_a\end{pmatrix},\quad
B_a=\begin{pmatrix}0&-L_a\\L_a&0\end{pmatrix}.
\]

Thus \(A_a^t=-A_a\), \(B_a^t=B_a\). The actual positive-Hilbert codifferential is

\[
D=\varepsilon^i(\nabla_i+B_i),\qquad
\delta=-\iota_i\nabla_i+\iota_iB_i.
\tag{8}
\]

The kernel relevant to (6) is

\[
(\delta_xF(\Delta_{p+1})(x,y))\operatorname{ad}_{j,p}(y),
\]

so the derivative acts on the spectral kernel, not on j. This choice of ordering is important.

For each x, the hyperbolic geodesic symmetry \(s_x\) fixes x and has differential \(-1\). Every specified \(\Delta_p\) is a natural Levi-Civita Laplace operator plus parallel metric-built spin potentials. It therefore commutes with \(s_x\), including the upper blocks: the two Hodge stars in their conjugation cancel the orientation-reversal sign. The action of \(s_x\) on the fiber of \(\Lambda^pT^*\otimes T^*\) at x is the scalar \((-1)^{p+1}\), independently on the two internal copies.

Choose parallel normal frames about x. Covariance of the kernel under \(s_x\), differentiated once in its first argument and evaluated at \(x=y\), changes the derivative sign and conjugates by a scalar. Therefore

\[
\boxed{\nabla_xF(\Delta_p)(x,y)|_{y=x}=0.}
\tag{9}
\]

This works for the full smoothing multiplier with the actual sharp projection, and uses a full isometry of \(\Delta_p\), not a principal symbol or a truncated heat expansion. The symmetry of D itself under orientation reversal is not required.

Isotropy further gives, on a single spin-s bundle,

\[
F(R_s)(x,x)=a_s(\epsilon,\Lambda)1_{2s+1}.
\tag{10}
\]

Thus the degree-one diagonal is \(\sum_s a_s\Pi_s\) on each internal copy, the degree-two diagonal is its star conjugate, and degrees zero and three have coefficient \(a_1\).

## 4. Actual form-degree and internal contractions

Because the spectral blocks are diagonal and identical in the J/P copies, the algebraic \(B_i\) in (8) has zero internal trace against \(A_a\). Together with (9), this eliminates every w insertion.

Only \(\iota_iB_i\,F\,\varepsilon^kf_k^aB_a\) survives. It is isotropic and linear in f, so it is a multiple of \(\operatorname{tr}f\). The multiple can be determined by \(f=e_0\). This does not replace a general tensor calculation by an arbitrary special example: isotropy shows there is exactly one invariant linear functional on the rank-two tensor f, and the finite-fiber code also checks all nine components individually.

For \(p=0\), the algebraic map \(D_{\rm alg,0}=\varepsilon^iB_i\) has image in the antisymmetric/spin-one sector, and

\[
D_{\rm alg,0}^\dagger D_{\rm alg,0}=2\,1_6.
\]

Its trace at \(f=e_0\) is \(12a_1\), so the general coefficient is \(4a_1\operatorname{tr}f\).

For \(p=1\), star-identification gives

\[
*D_{\rm alg,1}=\begin{pmatrix}0&-T\\T&0\end{pmatrix}.
\]

The T eigenvalues on spins \((0,1,2)\) are \((2,1,-1)\), and their dimensions are \((1,3,5)\). The trace at \(f=e_0\) is therefore

\[
2\sum_{s=0}^2(2s+1)t_s^2a_s=8a_0+6a_1+10a_2.
\]

For \(p=2\), the top-form spectral block is \(a_1 1_6\) and the analogous norm contraction again has trace \(12a_1\) at \(f=e_0\).

Consequently, with \(T_p=\operatorname{Tr}_{\mathcal L_0^p}(e^{-\epsilon\Delta}h\operatorname{ad}_j)\),

\[
\begin{array}{c|c|c}
p&\text{BV sign}&T_p/\int\operatorname{tr}f\\\hline
0&-&4a_1\\
1&+&\frac83a_0+2a_1+\frac{10}3a_2\\
2&-&4a_1
\end{array}
\tag{11}
\]

It follows that

\[
\mathcal W_{\epsilon,\Lambda}
=\left(\frac43a_0-3a_1+\frac53a_2\right)\int\operatorname{tr}f.
\tag{12}
\]

The factor two from the two real internal copies has already entered (11). Changing to complex notation does not add another doubling: the trace of the complexification of a real operator equals its real trace.

The actual epsilon algebra, all Lie brackets, positive adjoints, wedge/interior maps, Hodge signs, spin-projector ranks and all 18 insertion components were checked exactly in [the Sage program](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/fiber_checks.py>). [The actual JSON output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/fiber_actual_output.json>) has no failed mathematical check.

## 5. Full-spin Harish–Chandra density and independent normalization checks

Use \(G/K=\operatorname{PSL}(2,\mathbb C)/\operatorname{SO}(3)\). A principal-series representation labelled by \((\lambda,m)\), \(\lambda\ge0\), signed integer m, contains each K-spin \(s\ge|m|\) once. This follows from the compact-picture induced representation: restricting spin s to the stabilizer \(\operatorname{SO}(2)\) gives the weights \(-s,-s+1,\ldots,s\), each once. Frobenius reciprocity then gives the stated bundle multiplicities. The Weyl equivalence \((\lambda,m)\sim(-\lambda,-m)\) is counted once by using nonnegative \(\lambda\) and all signed m.

The connection Casimir identity is

\[
\nabla^*\nabla|_{s,\lambda,m}=\lambda^2+1+s(s+1)-m^2,
\]

and hence the given full operator has eigenvalue

\[
R_s|_{\lambda,m}=\lambda^2+5-m^2.
\tag{13}
\]

Harish–Chandra Plancherel for the rank-one complex group gives the polynomial root factor \(\lambda^2+m^2\). In the curvature-radius and physical-volume normalization here, each signed-helicity contribution is

\[
\frac{\lambda^2+m^2}{2\pi^2}\,d\lambda.
\tag{14}
\]

This normalization is fixed independently by the scalar spherical function \(\sin(\lambda r)/(\lambda\sinh r)\): its inversion gives the scalar heat kernel

\[
\frac{e^{-t}}{(4\pi t)^{3/2}}\frac r{\sinh r}e^{-r^2/(4t)}.
\]

Thus the scalar \(R_0\) heat density is \((4\pi t)^{-3/2}e^{-5t}\), fixing the factor in (14). The principal-series Casimirs and transverse-helicity normalization also agree with the independently consulted HTML formulas in [David–Gaberdiel–Gopakumar, arXiv:0911.5085v2, §5, equations (5.107), (5.110), (5.130)](https://arxiv.org/html/0911.5085v2). Their transverse spin-m density is the sum of the two helicities when \(m>0\), not the full spin-s density used here. The required full bundle is obtained by the branching above, not by using a TT density for the whole bundle. No PDF visual inspection is claimed.

Write \(K_s^F=(2s+1)a_s\) for a single full spin-s fiber trace. Equations (13)–(14) give

\[
K_s^F=\sum_{m=-s}^s I_{|m|}.
\tag{15}
\]

Substituting (15) in (12) yields (2).

As a normalization and curvature check, the reconstructed full heat densities are

\[
\begin{aligned}
K_0(t)&=(4\pi t)^{-3/2}e^{-5t},\\
K_1(t)&=(4\pi t)^{-3/2}\bigl[e^{-5t}+2(1+2t)e^{-4t}\bigr],\\
K_2(t)&=(4\pi t)^{-3/2}\bigl[e^{-5t}+2(1+2t)e^{-4t}
+2(1+8t)e^{-t}\bigr].
\end{aligned}
\tag{16}
\]

The first three coefficients of \((4\pi t)^{3/2}K_s(t)\) agree with the full Laplace-type invariants:

\[
a_0=2s+1,\quad
a_2=(2s+1)[s(s+1)-5],
\]
\[
a_4=(2s+1)\left[\frac{(5-s(s+1))^2}{2}-\frac{s(s+1)}6\right].
\tag{17}
\]

Here the curvature contribution uses \(\operatorname{tr}\Omega_{ij}\Omega^{ij}=-2s(s+1)(2s+1)\), \(R=-6\), \(|\operatorname{Ric}|^2=|\operatorname{Riem}|^2=12\), and potential \(4-s(s+1)\). Exact Gaussian integrals reproduce (16), and exact expansions reproduce all of (17). These are independent checks of normalization and full spin content, not a claim that finitely many heat coefficients prove a global spectral theorem. The global input is the specified HC Plancherel decomposition.

## 6. Heat limit, finite sharp subtraction and special cases

Without a retained subtraction,

\[
I_m(\epsilon,0)
=\frac{e^{-c_m\epsilon}}{4\pi^{3/2}\sqrt\epsilon}
+\frac{d_m}{4\pi\sqrt{c_m}}\operatorname{erfc}(\sqrt{c_m\epsilon}).
\tag{18}
\]

Here the second argument 0 denotes no excluded band, not a change of the declared \(\Lambda>1\) setup. The actual coefficient is this uncut expression minus the finite integrals from 0 to \(b_m\). Explicitly, the uncut combination is

\[
\begin{aligned}
C_{\rm all}(\epsilon)
={}&\frac{e^{-5\epsilon}-2e^{-4\epsilon}+e^{-\epsilon}}
 {6\pi^{3/2}\sqrt\epsilon}\\
&+\frac{-\sqrt5\,\operatorname{erfc}(\sqrt{5\epsilon})
+3\operatorname{erfc}(2\sqrt\epsilon)
+3\operatorname{erfc}(\sqrt\epsilon)}{6\pi}.
\end{aligned}
\tag{19}
\]

All three I terms have the same \(1/(4\pi^{3/2}\sqrt\epsilon)\) divergence; the weights \((1,-2,1)\) cancel it. The finite subtraction follows from

\[
\int_0^b\frac{\lambda^2+m^2}{\lambda^2+c_m}d\lambda
=b+\frac{d_m}{\sqrt{c_m}}\arctan\frac b{\sqrt{c_m}}.
\]

This proves (3). A more precise version of (4) is

\[
\begin{aligned}
C_\Lambda(\epsilon)=C_\Lambda(0)-\pi^{-3/2}\sqrt\epsilon
+\frac\epsilon{3\pi^2}\left[
\frac{b_0^3}3-2\left(\frac{b_1^3}3+b_1\right)
+\frac{b_2^3}3+4b_2\right]+O(\epsilon^{3/2}).
\end{aligned}
\tag{20}
\]

For example,

\[
C_{\sqrt5}(0)=\frac{3-\sqrt5}{6\pi}
=0.040527852522365826\ldots,
\]

and for large fixed cutoff,

\[
C_\Lambda(0)=\frac1{\pi^2\Lambda}
-\frac5{36\pi^2\Lambda^3}+O(\Lambda^{-5}).
\]

The limit \(\epsilon\to0\) is taken at fixed \(\Lambda\); no simultaneous limit has been substituted for the requested problem.

For \(\Lambda^2\ge5\), change variables to the common energy r in (2):

\[
C_\Lambda(\epsilon)=\frac1{6\pi^2}\int_{\Lambda^2}^{\infty}
\frac{e^{-\epsilon r}}r\left[
\sqrt{r-5}-\frac{2(r-3)}{\sqrt{r-4}}+
\frac{r+3}{\sqrt{r-1}}\right]dr.
\tag{21}
\]

The bracket is strictly positive for \(r>5\). To prove it, set \(a=r-5>0\) and compare

\[
L=\sqrt a+\frac{a+8}{\sqrt{a+4}},\qquad
R=\frac{2(a+2)}{\sqrt{a+1}}.
\]

Both are positive, and

\[
L^2-R^2=2\sqrt a\left(\frac{a+8}{\sqrt{a+4}}-\sqrt a\right)
+\frac{12a}{(a+4)(a+1)}>0.
\]

This proves the positivity claim without numerical inference.

## 7. Genuine retained fields and the infrared obstruction

For \(\Lambda^2>5\), choose \(0<b^2<\Lambda^2-5\) and

\[
\phi_b(r)=\frac{1-\cos br}{r\sinh r},\quad
j=(0,\sigma\phi_b e_0),\quad \sigma>0.
\tag{22}
\]

It is smooth at the origin, belongs to every Sobolev space, and is genuinely retained: multiplying by \(\sinh r\) conjugates the radial scalar Laplacian to \(-\partial_r^2+1\), and

\[
\sinh r\,\phi_b(r)=\int_0^b\sin(\lambda r)d\lambda.
\]

The trace spin block therefore has spectral support \([5,5+b^2]\). Its squared L2 norm is \(2\pi^2b\), while \(\phi_b\ge0\) and \(\int\phi_b\,dV=\infty\).

For any increasing compact insertion exhaustion \(\chi_R\), (1) gives

\[
\mathcal W_{\epsilon,\Lambda}(\chi_Rj)
=3\sigma C_\Lambda(\epsilon)\int\chi_R\phi_b\,dV
\longrightarrow+\infty.
\tag{23}
\]

Thus even the BV cancellation of the heat divergences does not provide a finite spatial trace on the stated retained Sobolev sector.

There is also a direct ordinary-trace obstruction before any supertrace cancellation. On the UV ghost space, let

\[
F_0=e^{-\epsilon R_1}R_1^{-1}R_0,\qquad R_0=1-P_{\Lambda,0}.
\]

In each diagonal J/P internal block, the regulated relative ghost operator for (22) is exactly

\[
2\sigma F_0(R_0M_{\phi_b}R_0).
\tag{24}
\]

All derivative terms sit in the off-diagonal J/P blocks. Both factors in (24) are bounded positive operators on the UV space. The positive-product trace criterion says that if their product were trace class, the positive sandwich would be trace class with the same trace. But

\[
\operatorname{Tr}\bigl(F_0^{1/2}R_0M_{\phi_b}R_0F_0^{1/2}\bigr)
=\int\phi_b(x)\operatorname{tr}F_0(x,x)\,dV=+\infty,
\]

since the actual homogeneous UV vector diagonal is a strictly positive constant. Hence that ghost block is not trace class. A finite ordinary supertrace of the graded direct-sum operator is not available. A spatially subtracted trace would be additional data.

For a stationary field \(j=x+y(x)\), with \(y=O(x^2)\), this already obstructs the homogeneous degree-one coefficient at the retained x in (22). Higher field-degree terms do not repair the undefined linear coefficient. This is not a claim that every possible renormalized spatial prescription fails.

## 8. Fixed cyclic quotient: what extends and what does not

Let \(M=\mathbb H^3/\langle\gamma\rangle\), with fixed loxodromic translation \(\beta>0\), and assume the complete operator domains/gaps specified in the question. Compact-support trace class and the coexact projection reduction (7) continue to hold.

For a family of upper-degree kernels Q, define the linear kernel functional

\[
\mathfrak t_M(Q;j)=\frac12\sum_{p=0}^2(-1)^{1-p}
\int_M\operatorname{tr}_{E^p}
\left[(\delta_xQ_{p+1})(x,y)\operatorname{ad}_{j,p}(y)\right]_{y=x}dV.
\]

Let \(K_t^M\) be the full heat kernel and set

\[
U_\epsilon^M=\int_\epsilon^\infty K_t^Mdt,
\qquad
V_{\epsilon,\Lambda}^M=e^{-\epsilon\Delta_M}\Delta_M^{-1}P_{\Lambda,M}.
\]

Then, exactly,

\[
\mathcal W^M_{\epsilon,\Lambda}(j)
=\mathfrak t_M(U_\epsilon^M-V_{\epsilon,\Lambda}^M;j).
\tag{25}
\]

In local lifted frames, split off the H3 identity kernel. This yields

\[
\begin{aligned}
\mathcal W^M_{\epsilon,\Lambda}(j)
={}&C_\Lambda(\epsilon)\int_M\operatorname{tr}f\,dV\\
&+\mathfrak t_M\left[
(U_\epsilon^M-U_\epsilon^{\mathbb H^3})
-(V_{\epsilon,\Lambda}^M-V_{\epsilon,\Lambda}^{\mathbb H^3});j\right].
\end{aligned}
\tag{26}
\]

Equation (26) retains the **actual quotient sharp projector**. It does not assume that a discontinuous spectral projector has an absolutely convergent Harish–Chandra image expansion.

The second line has a finite \(\epsilon\to0\) limit for compact j. At small t, the nonidentity heat kernels and their required first derivatives are exponentially suppressed because \(d(x,\gamma^nx)\ge|n|\beta\). At large t, the positive gaps and local smoothing estimates make the integrated kernels convergent. Finally \(\Delta_M^{-1}P_{\Lambda,M}\) is locally smooth with all derivatives; its finite-band heat factor has a smooth limit. These are estimates for the full heat kernel and the bounded spectral projection separately.

The quotient does not retain point-centered geodesic symmetries. Coincident first derivatives of its full kernels therefore cannot be set to zero by (9), and isotropy cannot force every remaining coefficient to be a constant or to eliminate every w contraction. The nonidentity/full-projector correction in (26) is generally a nonhomogeneous linear functional. This report proves existence and isolates that correction; it does **not** evaluate it explicitly. Any claim that the single number (3) is the entire cyclic-quotient answer would exceed the calculation.

No statement here is uniform as \(\beta\to0\), and no noncompact-insertion quotient trace is inferred from the compact-support result.

## 9. Reproducible checks, failures and limits

Actual finite-fiber evidence:

- [Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/fiber_checks.py>).
- [Actual JSON output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/fiber_actual_output.json>), with every boolean check true and no failed check.
- The Sage tool emitted one **nonmathematical DeprecationWarning**: the call to `version()` should become `sage.version.version`. It did not affect the exact matrices or contractions.

Actual spectral-integral evidence:

- [First Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/spectral_checks.wl>) and [its actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/spectral_actual_output.txt>).
- The first run had **one disclosed failure**: `Series[..., {r, Infinity, 5/2}]` used a noninteger truncation-order argument. Mathematica emitted `Series::serlim` and left only that requested asymptotic unevaluated. All displayed integral, low-band primitive, heat-coefficient and positivity-identity residuals in that run were zero. The failed run was retained, not overwritten or described as wholly successful.
- [Corrected Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/spectral_checks_v2.wl>) uses an integer Series order. [Its actual text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/spectral_actual_output_v2.txt>) and [native WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/spectral_actual_output_v2.wxf>) contain zero residuals, the evaluated large-r asymptotic, positive numerical samples, and `Messages -> {}`.

The exact checks test the actual finite gravitational algebra and the actual spectral integrals. They do not replace the analytic trace-class, isometry, Plancherel, or quotient arguments. No extra independent subagent was started because this delegated session had no remaining delegation depth.

**Verified:** the H3 coefficient (2), fixed-sharp-cutoff limit (3), BV/form/internal normalization, exact coincident-derivative vanishing on H3, positive-cutoff retained infrared obstruction, and finite compact-support quotient limit with correction (26).

**Assumptions:** complete radius-one H3 or the stated fixed cyclic quotient; positive-Hilbert adjoint and the supplied full Hodge operators/gaps; smooth compact support for the ordinary wheel theorem; standard HC Plancherel for PSL2C with the explicitly checked conventions.

**Not established:** an explicit nonidentity cyclic-quotient coefficient, a trace for arbitrary non-L1 retained insertions, the other two low wheels, quantum Ward matching, regulator-independent renormalization, or continuum metric–CS quantum equivalence.
