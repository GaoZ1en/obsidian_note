# Retained BV canonical transport on complete AdS

## Result and scope

**Proved, as an all-orders formal classical tree statement:** the exact nonlinear geometric–CS BV map induces an invertible canonical map between the two retained interacting tree theories on the fixed complete-hyperbolic background. The construction uses the actual paired spectral cutoff and cyclic propagator, not raw spectral compression of the nonlinear dictionary. Its coefficients are continuous on the generally infinite-rank retained band.

The central formula is

\[
\boxed{\gamma_t(x)=\Gamma_t(x+y_t(x)),\qquad
\partial_t S_{\mathrm{tree},t}=(S_{\mathrm{tree},t},\gamma_t)_P.}
\tag{1}
\]

Here \(\Gamma_t\) is the full canonical generator and \(y_t\) is the **actual UV stationary solution in the chosen Lagrangian**, not a solution of every UV equation. The UV part of the antibracket in (1) does not vanish separately. The CME makes the stationary graph invariant under the full BV vector field and converts that term into the graph-chain-rule contribution. An exact graded counterexample below shows what naive projection misses.

For gravity the full generator has the particularly simple exact form

\[
\boxed{\Gamma_t=\int_M\left[
 R\,\iota_{\chi_t}w+T\,\iota_{\chi_t}f
 +\kappa^{-1}W\wedge\iota_{\chi_t}E\right],\qquad
 \chi_t=(1+t e_0^{-1}f)^{-1}\xi.}
\tag{2}
\]

All symbols and the direction of the canonical map are fixed below. The retained generator through fourth order is computed explicitly in terms of (2), the two cubic master actions, and the complete-AdS propagator.

The separate smooth-domain result extends the exact integrated BV identity beyond compact support: its primitive and map-induced wall changes have at least two decaying factors, so their fluxes vanish. The original linear physical flux still has to cancel at the same radial cutoff. The formal tree theorem does **not** assert convergence of the full graded series in a common all-Sobolev neighborhood, quantum measure transport, renormalized QME, or nonlinear Brown–Henneaux/BFV equivalence. It compares geometric Palatini and CS variables; a separately regulated **metric** stationary pushforward is not identified by this theorem.

## 1. Background, brackets and the common free splitting

Use the conventions and complete operators of [the preceding tree construction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>). In particular \(\ell=1\), \(\kappa=2a>0\), \(a=(16\pi G_N)^{-1}\), \(\epsilon_{123}=1\), and the internal metric is \(\delta_{ab}\). The manifold is \(\mathbb H^3\) or a fixed marked loxodromic cyclic quotient with translation length \(\beta>0\); the fixed coframe \(e_0\) is nondegenerate and the background is torsion-free and hyperbolic. No hard spectral wall is introduced.

Coefficients are written first and commute with ordinary differentials. The canonical antibracket satisfies \((q^A,p_B)=\delta^A_B\), and \(QF=(S,F)\). The full action has ghost number zero and even parity. A canonical generator has ghost number \(-1\) and odd parity. We use the **right-action convention**

\[
\partial_t S_t=(S_t,\Gamma_t).
\tag{3}
\]

Thus a left-Hamiltonian generator for the same action evolution is \(-\Gamma_t\). This sign matters when comparing a type-II generator with the isolated cubic bridge in [the exact-map calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L240-L266>).

Write \(e=e_0+f\), \(\omega=\omega_0+w\). Before applying any spectral operator, make the fixed background ghost/cotangent identification

\[
\begin{gathered}
\eta=\lambda+\iota_\xi\omega_0,\qquad
\zeta=\iota_\xi e_0,\qquad \xi=e_0^{-1}\zeta,\\
E=e^*,\quad W=\omega^*,\quad R=\lambda^*,\quad
T_a=(e_0)_a{}^\mu(\xi^*_\mu-\omega_{0\mu}{}^b\lambda_b^*).
\end{gathered}
\tag{4}
\]

The inverse coframe is denoted by \((e_0)_a{}^\mu\). Here \(E,W\) are odd two-forms; \(R,T\) are even three-forms. The ghost numbers are \(1\) for \(\eta,\zeta\), \(-1\) for \(E,W\), and \(-2\) for \(R,T\). The letter \(R\) in (4) is a ghost antifield, not curvature or the UV projection \(R_\Lambda\). This is a fixed linear anticanonical identification. It avoids imposing a gauge-dependent bounded-multiplier assumption on the bare connection potential \(\omega_0\).

At the background, the exact nonlinear map becomes the identity in these coordinates. In the common totalized superfield use

\[
\Psi=c+\alpha-\kappa^{-1}S_{\rm int}p
 +\kappa^{-1}S_{\rm int}c^*,\quad
 c=(\eta,\zeta),\quad \alpha=(w,f),\quad
 p=(W,E),\quad c^*=(R,T).
\tag{5}
\]

The coefficient-first to totalized product is \((\eta u)(\zeta v)=(-1)^{\deg u\,\mathrm{gh}\zeta}\eta\zeta\,u\wedge v\), and \(D_T,h_T\) carry the coefficient ghost-parity signs specified there. The bilinear cyclic form is \(\mathcal B\), with its existing factor \(\kappa\), not a positive Hermitian norm.

The two free master actions are the same \(S_2=\mathcal B(\Psi,D_T\Psi)/2\). Fix

\[
P=1_{[0,\Lambda^2]}(\Delta),\quad R_\Lambda=1-P,
\quad h=\delta\Delta^{-1}R_\Lambda,\quad \Lambda>1.
\tag{6}
\]

Then \(Dh+hD=R_\Lambda\), \(h^2=Ph=hP=0\), and \(h\) is cyclic. On the smooth core the UV Lagrangian is \(\mathcal L_\infty=R_\Lambda\ker\delta\cap H^\infty\). The free stationary Hessian is invertible there, with inverse represented by \(h_T\) under the cyclic pairing. These are the actual complete-manifold operators, not finite matrices. The retained band has a strong odd pairing and equivalent Sobolev/L2 norms, even though its rank need not be finite.

## 2. An explicit canonical isotopy of the gravitational dictionary

### 2.1 The relative type-II generator

Let \(i=\iota_\xi\). In (4), the exact generating function from [the local map](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L113-L161>) becomes

\[
\mathcal F=\mathcal F_2+\mathcal F_3+\mathcal F_4+\mathcal F_5,
\tag{7}
\]

where \(\mathcal F_2=\int(P_E f+P_W w+P_R\eta+P_T\zeta)\) and

\[
\begin{aligned}
\mathcal F_3&=\int[P_R i w+P_T i f+\kappa^{-1}P_E\wedge iP_W],\\
\mathcal F_4&=(2\kappa)^{-1}\int[P_E\wedge i^2P_R+P_W\wedge i^2P_T],\\
\mathcal F_5&=(3\kappa)^{-1}\int P_T i^3P_R.
\end{aligned}
\tag{8}
\]

The terms \(P_Ee_0+P_W\omega_0\) have been subtracted **at the density level**, before integration. Their separate integrals need not exist on the noncompact manifold. The relative generator starts with an integrable quadratic pairing.

Define \(\Phi_t\) by

\[
\mathcal F_t=\mathcal F_2+t\mathcal F_3+t^2\mathcal F_4+t^3\mathcal F_5,
\quad p=\partial_l\mathcal F_t/\partial q,
\quad Q=\partial_l\mathcal F_t/\partial P.
\tag{9}
\]

Equivalently \(\Phi_t=d_{1/t}\Phi d_t\), where \(d_t\) multiplies every **fluctuation** coordinate, ghost and antifield by \(t\). The conformal symplectic factors cancel, so (9) is canonical; its limit at \(t=0\) is the identity. A uniformly small coframe perturbation keeps \(e_0+tf\) invertible for every \(0\le t\le1\).

For completeness the new translation antifield is

\[
\Pi_a(t)=(e_0+tf)_a{}^\mu
 \left[(e_0)_\mu{}^b T_b-tw_\mu{}^bR_b
       +t\kappa^{-1}W_b\wedge\iota_{\partial_\mu}E^b\right],
\tag{10}
\]

and \(P_E=E-ti\Pi\), \(P_W=W-tiR\), \(P_R=R\), \(P_T=\Pi\). The physical and ghost coordinates are

\[
\begin{aligned}
f_t&=f+t\kappa^{-1}iW-t^2(2\kappa)^{-1}i^2R,\\
w_t&=w+t\kappa^{-1}iE-t^2(2\kappa)^{-1}i^2\Pi,\\
\tau_t&=\zeta+tif+t^2(2\kappa)^{-1}i^2W-t^3(6\kappa)^{-1}i^3R,\\
\rho_t&=\eta+tiw+t^2(2\kappa)^{-1}i^2E-t^3(6\kappa)^{-1}i^3\Pi.
\end{aligned}
\tag{11}
\]

Thus the map is explicit and retains its genuinely antifield-dependent physical coordinates.

### 2.2 Exact source generator and its first two jets

Put \(S_t=\Phi_t^*S_{\rm CS}\). Differentiating the type-II graph gives the source-side generator

\[
\Gamma_t=(\partial_t\mathcal F_t)(q,P_t(q,p)).
\tag{12}
\]

It satisfies (3). Substitution of (10) into (12) first gives

\[
\Gamma_t=\int[Riw+\Pi(t)if+\kappa^{-1}E\wedge iW].
\tag{13}
\]

The apparent extra terms cancel by the three-dimensional top-form identities

\[
 W\wedge i^2\Pi=(i\Pi)\wedge iW,\qquad
 \Pi i^3R=(iR)\wedge i^2\Pi.
\tag{14}
\]

Also \(E\wedge iW=W\wedge iE\); the coefficients, not just the form degrees, are essential to this sign. Resolving (10), and accounting for the odd coefficient when moving \(\xi\) past \(W\), turns (13) into (2). This is an exact pointwise identity, not a truncation.

Let \(F=e_0^{-1}f\) act on vector fields and define the cubic functional, linear in its vector argument,

\[
\mathcal A(v)=\int[R\iota_v w+T\iota_v f
                   +\kappa^{-1}W\wedge\iota_v E].
\]

With every fluctuation assigned degree one,

\[
\Gamma_t=\Gamma_3+t\Gamma_4+O_{\deg\ge5},\qquad
\Gamma_3=\mathcal A(\xi),\qquad \Gamma_4=-\mathcal A(F\xi).
\tag{15}
\]

The notation \(\Gamma_4\) denotes the coefficient of \(t\), not the quartic logarithm of the time-one map; the latter is \(\Gamma_4/2\). In canonical component derivatives an independent expression is

\[
\Gamma_4=2\mathcal F_4(q,p)
 -\sum_A(\partial_{P_A}\mathcal F_3)(\partial_{q^A}\mathcal F_3)(q,p).
\tag{16}
\]

All products use the displayed coefficient-first ordering. Retaining only the old two-antifield cubic bridge would omit the first two terms of \(\Gamma_3\), and retaining only \(\mathcal F_3\) in (9) would give the wrong cubic coordinate jets.

### 2.3 Cubic endpoints, but not a cubic interpolation

In the fixed background chart, both endpoint master actions are cubic:

\[
S_{\rm CS}=S_2+V_0,\qquad S_g=S_2+V_1,
\qquad V_1=V_0+(S_2,\Gamma_3).
\tag{17}
\]

These vertices can be written without a bare background connection potential. Put \(D_0=D_{\omega_0}\), \(\mathcal L^0_\xi=iD_0+D_0i\) on the bosonic adjoint-valued forms, and \(I_3=\kappa\int(f[w,w]/2-f[f,f]/6)\). Then

\[
\begin{aligned}
V_0=I_3+\int\{&E([w,\zeta]+[f,\eta])+W([w,\eta]-[f,\zeta])\\
 &+\tfrac12R([\eta,\eta]-[\zeta,\zeta])+T[\eta,\zeta]\},\\
V_1=I_3+\int\{&E(\mathcal L^0_\xi f+[f,\eta])+W(\mathcal L^0_\xi w+[w,\eta])\\
 &-R(iD_0\eta-\tfrac12[\eta,\eta]-\tfrac12[\zeta,\zeta])-T iD_0\zeta\}.
\end{aligned}
\tag{17a}
\]

The curvature contribution to the geometric ghost variation was retained: \(Q\eta=iD_0\eta-[\eta,\eta]/2+i^2R_0/2\), with \(R_0=[e_0,e_0]/2\) and \(i^2R_0=-[\zeta,\zeta]\). Thus the cubic difference is entirely antifield-dependent, but the canonical generator still requires its two-physical-antifield term.

The original geometric BRST variations are at most quadratic and (4) is linear in the BV coordinates. The exact local master-action identity proves (17), with the boundary extension in §5. It also gives the quartic identity

\[
(S_2,\Gamma_4)+((S_2,\Gamma_3),\Gamma_3)
       +2(V_0,\Gamma_3)=0.
\tag{18}
\]

For \(S_t=\Phi_t^*(S_2+V_0)\), the homogeneous interactions are therefore

\[
V_{3,t}=(1-t)V_0+tV_1,\qquad
V_{4,t}=t(1-t)(V_0,\Gamma_3).
\tag{19}
\]

The intermediate quartic is generally nonzero. The different identity
\(\Phi_t^*(S_2+tV_0)=S_2+tV_1\) follows by scaling; it does not make the fixed-coupling interpolation cubic.

## 3. Stationary canonical transport: a general tree theorem

**Theorem.** Let a constant odd symplectic space have a paired free splitting \(E=PE\oplus R_\Lambda E\) and a fixed UV Lagrangian \(\mathcal L\). Let \(S_t=S_2+O(z^3)\) satisfy the CME, and suppose \(\partial_tS_t=(S_t,\Gamma_t)\), \(\Gamma_t=O(z^3)\). Suppose the free stationary Hessian on \(\mathcal L\) is invertible and that the Hamiltonian operations and stationary recursion are defined. Then, formally near zero, there is a unique stationary graph

\[
j_t(x)=x+y_t(x),\quad y_t(x)\in\mathcal L,\qquad
 dS_t(j_t(x))[\ell]=0\quad(\ell\in\mathcal L).
\tag{20}
\]

It is symplectic and \(Q_t\)-invariant. Its action and generator satisfy (1), inducing an invertible formal retained canonical map. The same conclusion holds on an actual regular stationary neighborhood when the required Hamiltonian flow exists.

**Proof.** The graph derivative has UV component in the fixed isotropic \(\mathcal L\), while the paired splitting has no retained–UV cross pairing. Consequently

\[
j_t^*\omega=\omega_P.
\tag{21}
\]

Choose UV Darboux coordinates \((u,v)\) with \(\mathcal L=\{v=0\}\). The graph is the common zero locus of \(v\) and \(F_u=\partial_uS_t\). Up to the fixed coordinate parity signs, \(Q_tv=F_u\). The CME gives \(Q_tF_u=\pm Q_t^2v=0\). Thus \(Q_t\) preserves the ideal of the graph. Invertibility of the stationary Hessian makes this locus a regular graph (or a unique formal graph), so \(Q_t\) is tangent to it.

Stationarity and the chain rule identify its retained projection with the Hamiltonian vector field of \(S_{\mathrm{tree},t}=j_t^*S_t\). Hence, for admissible functions \(A\),

\[
Q_t\circ j_t=dj_t\,Q_{\mathrm{tree},t},\qquad
j_t^*(S_t,A)=(S_{\mathrm{tree},t},j_t^*A)_P.
\tag{22}
\]

In differentiating \(j_t^*S_t\), the term \(dS_t[\partial_t y_t]\) vanishes because \(\partial_ty_t\in\mathcal L\). Substituting \(A=\Gamma_t\) into (22) proves (1). This is precisely where the surviving UV bracket becomes part of the derivative of \(\Gamma_t\circ j_t\); discarding it separately would be incorrect. ∎

The theorem does not set the conjugate UV derivatives \(\partial_vS_t\) to zero off shell. It gives
\(\operatorname{Crit}(S_t)\cap(PE\oplus\mathcal L)=j_t\operatorname{Crit}(S_{\mathrm{tree},t})\) locally, not an assertion that the entire full critical locus is this graph.

To fix map direction, let the pullback \(U_t\) solve

\[
\dot U_tF=(U_tF,\gamma_t)_P,\qquad U_0=1.
\tag{23}
\]

Then \(S_{\mathrm{tree},t}=U_tS_{\mathrm{tree},0}\). Since the generator starts at cubic order, the degree filtration defines (23) recursively and its inverse by reversed ordered evolution. Its coefficients preserve the retained antibracket; therefore \(U_1=\mathcal K^*\) is the desired map with

\[
\boxed{\mathcal K^*S_{\rm CS,tree}=S_{g,\rm tree}.}
\tag{24}
\]

Equivalently a left-Hamiltonian time-dependent flow transports \(S_{\mathrm{tree},t}\) back to \(S_{\mathrm{tree},0}\). Its inverse is not obtained by ignoring time ordering and simply reversing the sign at the same time. The map (24) is not asserted to equal \(P\Phi j_0\).

## 4. The gravitational retained map through quartic order

Let \(v_i\) be the cyclic gradient of \(V_i\), defined by
\(\delta V_i=\mathcal B(\delta\Psi,v_i)\). In particular \(v_0(x)=[x,x]/2\). All operators below are the actual (6), in the totalization (5). At second order,

\[
y_{2,t}(x)=-h_T[(1-t)v_0(x)+t v_1(x)].
\tag{25}
\]

Set \(v_{3,t}=(1-t)v_0+t v_1\). The tree action through fourth order is

\[
\begin{aligned}
S_{\mathrm{tree},t}^{(3)}&=V_{3,t}|_P,\\
S_{\mathrm{tree},t}^{(4)}&=V_{4,t}|_P
 -\tfrac12\mathcal B(v_{3,t},h_Tv_{3,t}).
\end{aligned}
\tag{26}
\]

At either cubic endpoint, only the second term remains. The CS endpoint reproduces \(-\mathcal B([x,x],h_T[x,x])/8\), including all ghosts and antifields.

Expanding the exact generator (1) gives

\[
\gamma_{3,t}=\Gamma_3|_P,\qquad
\gamma_{4,t}=t\Gamma_4|_P+D\Gamma_3(x)[y_{2,t}(x)].
\tag{27}
\]

This explicitly includes the UV-induced correction. Because the cubic generator is independent of \(t\), its self-commutator contributes no quartic Magnus term. Thus the right-Hamiltonian logarithm of \(\mathcal K^*\), through fourth order, is

\[
\boxed{\begin{aligned}
\mathcal H_3(x)&=\Gamma_3(x),\\
\mathcal H_4(x)&=\tfrac12\Gamma_4(x)
 -\tfrac12D\Gamma_3(x)\left[h_T(v_0(x)+v_1(x))\right],\qquad x=Px.
\end{aligned}}
\tag{28}
\]

Together, (2), (6), (15), (17), and (28) are an explicit functional/kernel specification of the retained map. No unspecified inverse physical Hessian or ghost-only substitution remains. In particular, putting \(\mathcal A_{\mathcal H}F=(F,\mathcal H)_P\),

\[
\begin{aligned}
S_{g,\rm tree}^{(3)}&=S_{\rm CS,tree}^{(3)}+(S_{2,P},\mathcal H_3)_P,\\
S_{g,\rm tree}^{(4)}&=S_{\rm CS,tree}^{(4)}
 +(S_{\rm CS,tree}^{(3)},\mathcal H_3)_P+(S_{2,P},\mathcal H_4)_P\\
&\qquad+\tfrac12((S_{2,P},\mathcal H_3)_P,\mathcal H_3)_P.
\end{aligned}
\tag{29}
\]

The proof of (29) is (1) order by order, not a claim that the raw projected nonlinear dictionary preserves the pairing. The formal map also intertwines the two retained classical BV differentials. On the physical body, the full isotopy is the identity, both physical actions and the chosen physical UV Lagrangian coincide, and so do their convergent small physical tree actions. The new transport is substantive in the complete ghost/antifield theory.

## 5. Why the complete-manifold domain is admissible

Let \(\mathscr E_\infty=\bigoplus_{p=0}^3\bigcap_m H^m(E^p)\), with the background spectral Sobolev norms. The fixed bounded-geometry background tensors and (4) define the bundle identifications. On a uniformly nondegenerate relative-coframe patch, the exact map and its inverse are continuous, local, order-zero maps on this smooth Sobolev scale. The inverse coframe **minus its background value** belongs to the decaying scale; an unshifted inverse is a bounded multiplier in the corresponding affine class, not an L2 field.

The relative generator in §2 is integrable: every monomial has at least two L2 factors and the other factors can be bounded. Its variations are well-defined. Its pointwise canonical identity integrates to a weak odd symplectic identity; this does not assert that every continuous full-space functional has a Hamiltonian vector field.

The exact action primitive from [the local BV identity](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L165-L238>) is, in totalized notation,

\[
B=I(e_a e^{*a})-\Phi^*(\tau_a e_c^{*a}).
\tag{30}
\]

It has no constant or linear fluctuation term: each monomial contains at least one ghost and one antifield. Coefficientwise, it and its derivative are L1. On the standard closed spheres/cyclic tubes, bounded geometry gives uniform unit-collar estimates

\[
\|\nabla^j u\|_{L^2(\Sigma_R)}
 \le C_j\|u\|_{H^{j+1}(\operatorname{collar}_R)}\longrightarrow0.
\tag{31}
\]

Every boundary monomial in (30) is bounded by the product of two such trace tails, with its remaining factors uniformly bounded. Therefore \(\int_{\Sigma_R}B\to0\) at every large radius, not merely along a subsequence.

There is an additional wall issue: outside compact support, \(\Phi\) is no longer literally the identity at the wall. But \(e_c-e\) and \(\omega_c-\omega\) begin at degree two, as do their derivatives. The changes of the matched physical wall and of the separate transgression representative therefore have the same two-factor estimates. Combined with the **same-radius bulk-plus-wall cancellation** in [the relative physical limit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L397-L454>), this proves the integrated completed identity \(\Phi^*S_{\rm CS}=S_g\) on the declared smooth sector, coefficientwise in formal BV directions. One cannot instead discard each original linear contorsion flux; a smooth all-Sobolev tail already makes such a flux diverge. A bare ghost times a background Noether density is also not covered by a two-decaying-factor argument.

For a transformed action, write its Hamiltonian cyclic gradient as \(D_Tz+N_t(z)\), \(N_t=O(z^2)\). The stationary recursion is

\[
y_t=-h_TN_t(x+y_t).
\tag{32}
\]

At each total-field order only finitely many products, derivatives and homotopies occur. They are continuous on \(\mathscr E_\infty\), so the unique formal coefficient \(y_{n,t}\) is smooth and continuous. More explicitly, each output seminorm obeys an estimate

\[
\|Y_{n,t}(x_1,\ldots,x_n)\|_s
 \le C_{n,s}\prod_i\|x_i\|_{m_{n,s}}
 \le C_{n,s,\Lambda}\prod_i\|x_i\|_2,\qquad x_i=Px_i.
\tag{33}
\]

The constants depend on the fixed background, cutoff and order; no uniform estimate in \(n\) is asserted. The same holds for action and generator coefficients and their retained gradients. The strong pairing on the retained band consequently makes (23) a well-defined formal canonical evolution. This supplies the actual hypotheses of §3 rather than a conditional analogy with finite-dimensional BV.

Precisely, the retained formal category is the degreewise product \(\prod_{n\ge0}\mathcal P^n_{\rm cont}(PE)\) of continuous homogeneous graded polynomials; a formal map has continuous graded multilinear vector-valued coefficients. Odd slots are antisymmetric and **even ghost-antifield slots symmetric**. This is a coefficientwise formal completion, not an assertion of Hilbert-tensor or Hilbert–Schmidt summability. Continuous multilinear estimates, the strong retained pairing, and finite compositions at each degree are sufficient for the antibracket and (23). Even ghost antifields are not assumed nilpotent. Full graded convergence in a single \(H^\infty\) neighborhood is not inferred from (33).

There is a further, weaker Banach-space statement: for the actual order-zero map, the transformed gradient has order one, and for integer \(s\ge3\), \(N_t:H^s\to H^{s-1}\) is locally analytic. Since \(h:H^{s-1}\to H^s\), (32) is a small equal-Hs contraction in a specified finite coefficient realization. This does not make \(Q_t\) an Hs endomorphism. Also \(hN_t\) has order zero, not a derivative gain, so this argument alone does **not** bootstrap the full graded solution to \(H^\infty\). The actual smooth convergent physical body is inherited from the original CS construction; a transverse smooth inverse theorem around every nonzero physical body remains unproved here. The product-Sobolev no-go is therefore respected, not evaded by relabeling the same completion.

## 6. A sensitive exact graded counterexample to projection

Take retained Darboux pairs \((q,p),(r,s),(c,b),(d,e)\), with \(q,r,b,e\) even and \(p,s,c,d\) odd. Give \(q,r\) ghost number zero, \(p,s\) number \(-1\), \(c,d\) number \(1\), and \(b,e\) number \(-2\). The UV pair is \((u,v)\), of ghost numbers \(0,-1\), with \(u\) even and \(v\) odd, and \(\mathcal L=\{v=0\}\).

Set

\[
S_t=\tfrac12(u+r^2)^2+e^{tu}pc+sd-2(v-tbc)rd,
\qquad \Gamma=bcu.
\tag{34}
\]

Then \(S_2=u^2/2+pc+sd\), \((S_t,S_t)=0\), and \(\partial_tS_t=(S_t,\Gamma)\). The unique stationary graph is

\[
u=y_t=-r^2-te^{-tr^2}pc,\quad v=0;
\qquad (\partial_u^2S_t)|_{j_t}=1+t^2e^{-tr^2}pc,
\tag{35}
\]

whose inverse is \(1-t^2e^{-tr^2}pc\). Direct substitution yields

\[
S_{\rm eff,t}=e^{-tr^2}pc+sd+2tbcrd,
\qquad \gamma_t=-bcr^2.
\tag{36}
\]

The UV bracket on this graph is \(+2bcrd\ne0\). The right-action retained map is

\[
c\mapsto e^{-tr^2}c,\quad b\mapsto e^{tr^2}b,\quad
s\mapsto s+2tbcr,
\tag{37}
\]

with all other retained coordinates fixed. It sends \(S_{\rm eff,0}\) to \(S_{\rm eff,t}\) and is canonical. In contrast, the full right-action map sends \(c\mapsto e^{tu}c\), \(b\mapsto e^{-tu}b\), \(v\mapsto v-tbc\). Its retained projection after \(j_0\) misses the shift of \(s\), and

\[
(s,e^{-tr^2}c)=2tr e^{-tr^2}c\ne0.
\tag{38}
\]

Moreover the bare restriction \(\Gamma|_{PE}\) is zero, although the true retained generator (36) is not. Thus both naive prescriptions fail in an exact model with an even ghost-antifield endpoint. This is a finite algebraic example, not an AdS spectral computation.

## 7. Evidence and precise remaining questions

The parent [native-Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/retained_bv_canonical_jet_checks.py>) retains all 48 gravitational BV components, symbolic \(\kappa^{-1}\), and native exterior multiplication. Its 18 exact groups check the type-II cancellations, the full quadratic/cubic coordinate jets, the compact quartic generator, and the **exact rational resolvent generator after clearing its determinant**. Negative controls show that dropping the quartic source term or using only the bare cubic flow fails. These are ultralocal checks, not a substitute for the complete-manifold estimates or the analytic kinetic-action identity. Earlier API failures and the initial 15-group successful run are retained separately in [the evidence directory](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/retained-bv-canonical-parent.imkct9s5/>).

Three fresh investigations independently addressed the key interfaces before receiving parent candidate formulas: [stationary canonical transport](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/proof.md>), [the actual gravitational isotopy](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-map-path-independent-20261031.WhijVYou/>), and [smooth domains/primitive decay](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/REPORT.md>). Subsequent supplied-formula/text audits are distinct from those independent derivations. Exact toy computations verify the nonzero UV term and both map directions, not merely a vanishing CME in a decoupled example. The detailed counts, warnings, frozen sources and actual tool envelopes are recorded in the [verification index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/README.md>) and [review record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>).

**Verified:** the formal retained canonical theorem; the actual gravitational generator and its quartic retained correction; the full ghost/antifield map, rather than the ghost body alone; continuous fixed-band finite jets; the completed smooth-sector action identity with explicit decay estimates.

**Assumptions:** the previously proved complete-H3/fixed-cyclic-quotient free contraction; nondegenerate small coframes; background-covariant ghost alignment; the paired cutoff and fixed coexact polarization; formal completion in all nonphysical directions. The independent derivations establish the new interfaces, not a new global spectrum theorem.

**Not verified:** a common convergent all-Sobolev full-BV neighborhood, an independent metric-side stationary contraction and regulator-compatible auxiliary/Lorentz pushforward, one-loop effective BV density/vertices, BV-Stokes/QME after renormalization, full nonlinear asymptotic proper/BFV data, other global cycles, or Hilbert-space equivalence.

The next substantive calculation is to transport the one-loop stationary Hessian/semidensity and its generator insertion with a regulator that respects this tree map, or first construct the metric-side auxiliary/stationary comparison in the same smooth category. The equality of classical tree theories does not decide either question.
