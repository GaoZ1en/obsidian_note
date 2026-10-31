# One-loop BV transport and complete AdS trace obstructions

## Result and scope

**The tree canonical map has a precise finite-dimensional quantum extension, but it does not by itself define a one-loop quantum map on the complete-AdS retained space.** Three new interfaces can be settled without assuming the desired equivalence:

1. In a compatible finite BV pushforward, the effective generator is a **normalized insertion**, not just its stationary value. Its one-loop term is generally nonzero. An exact graded model has identity tree retained map and unit full canonical Berezinian, but a nonconstant one-loop Hessian factor.
2. The actual gravitational generator has a nonzero finite-cell BV divergence. Its ghost–antifield term cancels against convection of the source semidensity. The corresponding naive fixed-heat prescription fails already in the first curvature-dependent heat coefficient.
3. There is an explicit small, smooth, genuinely **retained-band** coframe on \(\mathbb H^3\) for which the first retained BV-divergence coefficient is infinite. This is a spatial integrability obstruction, not a missing ultraviolet spectral gap.

There are also constructive limited results: the CS restricted Hessian has a well-defined fourth-modified Fredholm determinant on the actual small physical stationary graph; a specified order-zero normalization gives a corresponding geometric ghost remainder; and a second-modified retained density determinant exists after a declared linear subtraction. These objects do **not** establish their mutual equality, a continuum BV measure, or a renormalized QME.

The classical inputs are [the complete-AdS contraction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) and [the retained canonical theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md>). The distinction between a pointwise Jacobian and a functional density remains essential.

## 1. Finite BV pushforward with the Euclidean sign fixed

Use homogeneous Darboux pairs \((q^A,p_A)\), \((q^A,p_B)=\delta^A_B\), \(QF=(S,F)\), and coefficient-first Grassmann conventions. Define

\[
\Delta_{\rm BV}=\sum_A(-1)^{\epsilon(q^A)}
 \partial^L_{q^A}\partial^L_{p_A},
\qquad
\Delta_{\rm BV}(FG)=(\Delta_{\rm BV}F)G+(-1)^{\epsilon(F)}F\Delta_{\rm BV}G
 +(-1)^{\epsilon(F)}(F,G).
\tag{1}
\]

The rightmost derivative acts first. This \(\Delta_{\rm BV}\) is not the positive Hodge Laplacian \(\Delta_{\rm H}\) used below. Actions have even parity and ghost number zero; generators have odd parity and ghost number minus one.

Take a constant paired split, a fixed UV Lagrangian \(\mathcal L=\{v=0\}\), and a fixed Berezin orientation and Gaussian contour, or formal Gaussian integration. Suppose the UV free Hessian is invertible and fixes a unique formal stationary graph \(j_t(x)=(x,y_t(x),0)\). Normalize Gaussian constants against a fixed reference Hessian \(K_*\), including its contour phase. No assertion of convergence on an arbitrary real contour is needed.

Let the source semidensity coefficient and its quantum generator be

\[
\rho_t=\nu_t e^{-S_t/\hbar},\quad
\widehat S_t=S_t-\hbar\log\nu_t,
\quad G_t=\Gamma_t+\hbar\Gamma_{1,t}+O(\hbar^2),
\quad \dot S_t=(S_t,\Gamma_t).
\]

The even right Hamiltonian vector field \(X_G F=(F,G)\) has divergence \(2\Delta_{\rm BV}G\). Consequently canonical semidensity transport is

\[
\dot\rho=(\rho,G)+\rho\Delta_{\rm BV}G
 =\Delta_{\rm BV}(G\rho)+G\Delta_{\rm BV}\rho,
\qquad
\dot{\widehat S}=(\widehat S,G)-\hbar\Delta_{\rm BV}G.
\tag{2}
\]

For the Euclidean weight the QME is

\[
\Delta_{\rm BV}\rho=0
\quad\Longleftrightarrow\quad
\tfrac12(\widehat S,\widehat S)-\hbar\Delta_{\rm BV}\widehat S=0.
\tag{3}
\]

There is no factor of \(i\). Write \(\ell_t=\log\nu_{0,t}\), where \(\nu_{0,t}\) is the leading \(\hbar^0\) coefficient of \(\nu_t\), not its initial value at \(t=0\). Suppressing the time index, its one-loop conditions include
\((S,\ell)=-\Delta_{\rm BV}S\) and
\(\dot\ell=(\ell,\Gamma)+\Delta_{\rm BV}\Gamma-(S,\Gamma_1)\).
Thus a classical canonical map is not itself a choice of a quantum lift.

Let \(I\) be integration over this fixed UV Lagrangian, with vanishing integration-by-parts boundary terms, or its formal Gaussian version. BV-Stokes gives \(I\Delta_{\rm BV}=\Delta_{{\rm BV},P}I\). Before any QME assumption,

\[
\partial_t I\rho=\Delta_{{\rm BV},P}I(G\rho)+I(G\Delta_{\rm BV}\rho),
\qquad
\Delta_{{\rm BV},P}I\rho=I(\Delta_{\rm BV}\rho).
\tag{4}
\]

**Finite pushforward theorem.** If the source semidensity is closed and evolves by (2), then

\[
\boxed{
 W=-\hbar\log I\rho,\qquad
 \gamma=\frac{I(G\rho)}{I\rho},\qquad
 \dot W=(W,\gamma)_P-\hbar\Delta_{{\rm BV},P}\gamma.}
\tag{5}
\]

The retained QME follows as well. This is an immediate consequence of (1) and (4), not a change-of-variables guess for a Hessian determinant. If \(\mathcal E=(\Delta_{\rm BV}\rho)/\rho\ne0\), (5) instead has the extra term
\(-\hbar[\langle G\mathcal E\rangle-\gamma\langle\mathcal E\rangle]\), with the written order of the odd factors. A regulator-dependent failure of BV-Stokes is an additional defect, not included in a claim that (4) holds automatically.

## 2. Both one-loop coefficients, and why the insertion matters

Restrict to \(v=0\), translate \(u=y_t(x)+\eta\), and expand functions by homogeneous UV Taylor degree, indicated by \([n]\). Let \(K_t\) be the quadratic super-Hessian at \(j_t\). One precise convention is
\(K_{ij}=(\partial^L_{u^i}S)\overleftarrow\partial_{u^j}|_{j_t}\), so the quadratic action is \(\eta^i K_{ij}\eta^j/2\), with that coefficient order.

Define the unit-width normalized super-Gaussian expectation \(\langle\cdot\rangle_{K_t}\) by this quadratic form and the fixed orientation. Equivalently, with \(C=K_t^{-1}\), its Wick operator is

\[
\mathscr W=\tfrac12 C^{ij}\partial^L_{\eta^j}\partial^L_{\eta^i},
\qquad \langle F\rangle_{K_t}=[e^{\mathscr W}F]_{\eta=0}.
\tag{6}
\]

Every covariance coefficient is on the left. This ordering matters for odd external coefficients. In particular, for \(S^{[2]}=m\eta\chi\) with \(\int d\chi\,d\eta\,\eta\chi=1\), one has \(\langle\eta\chi\rangle=-1/m\), not \(+1/m\).

Expansion of (5) gives

\[
\boxed{\begin{aligned}
 W_0&=S\circ j,\qquad
 W_1=\tfrac12\operatorname{STr}\log(KK_*^{-1})-\ell\circ j,\\
 \gamma_0&=\Gamma\circ j,\\
 \gamma_1&=\Gamma_1\circ j+
 \left\langle\Gamma^{[2]}+
 \Gamma^{[1]}\ell^{[1]}-\Gamma^{[1]}S^{[3]}\right\rangle_K.
\end{aligned}}
\tag{7}
\]

The last expectation contains a degree-four Wick contraction in its last term; the Taylor factorials are already in \(\Gamma^{[n]},S^{[n]}\). In commuting UV coordinates it is

\[
\gamma_1=\Gamma_1(j)+\tfrac12 C^{ij}\Gamma_{,ij}
 +C^{ij}\Gamma_{,i}\ell_{,j}
 -\tfrac12\Gamma_{,i}C^{ia}C^{bc}S_{,abc},
\tag{8}
\]

all evaluated at \(j\). Equation (6), not an unsigned index rule, defines the super version.

To prove (7), rescale \(\eta\mapsto\sqrt\hbar\,\eta\). In the normalized insertion, every term proportional to \(\Gamma(j)\) times a denominator correction cancels. The survivors are the quadratic insertion, the linear insertion times the linear log amplitude, and the linear insertion times the cubic action. Quartic-action bubbles and two-cubic-vertex vacuum bubbles do not contribute to \(\gamma_1\) through such disconnected factors. The Gaussian prefactor alone gives \(W_1\); subsequent stationary-phase corrections first enter \(W_2\).

The transport equation at order \(\hbar\) is therefore

\[
\boxed{\dot W_1=(W_1,\gamma_0)_P+(W_0,\gamma_1)_P
 -\Delta_{{\rm BV},P}\gamma_0.}
\tag{9}
\]

### 2.1 An exact odd-UV counterexample

Take retained \((x,p)\) of parities \((0,1)\), ghost numbers \((0,-1)\), and UV positions \(\eta,\chi\) of parities \((1,1)\), ghost numbers \((1,-1)\), with their even conjugates. The UV Lagrangian sets those conjugates to zero. Let \(m\ne0\), \(V'(0)=0\), and

\[
 S_0=V(x)+m\eta\chi,\quad \Gamma=p\eta\chi,
\quad S_t=V(x)+(m+tV'(x))\eta\chi,\quad \nu=1.
\tag{10}
\]

This is the exact canonical pullback \(x\mapsto x+t\eta\chi\); its full Berezinian is one. Both \(\Delta_{\rm BV}S_t\) and the CME vanish. On the formal branch \(m+tV'(x)\ne0\), the stationary graph is \(\eta=\chi=0\), so the tree retained map is the identity and \(\gamma_0=0\).

Normalize the odd Gaussian by \(-\hbar/m\). Direct Berezin integration gives

\[
\boxed{
 W=V(x)-\hbar\log\frac{m+tV'(x)}m,
 \qquad \gamma=-\frac{\hbar p}{m+tV'(x)}.}
\tag{11}
\]

Thus the nonzero \(\gamma_1\) supplies the whole one-loop variation. The \(\hbar^2\) term in \((W,\gamma)\) cancels against \(-\hbar\Delta_{{\rm BV},P}\gamma\); it is not an approximation that discards that term. Already \(V=x^2/2\) is a sensitive example with cubic \(\Gamma\) and a common free Hessian.

The second-derivative chain rule contains the first derivative of the action contracted with the second derivative of the map, in addition to the **graded** pullback of its Hessian. An ordinary matrix transpose is not the super-coordinate rule. In (10), the omitted contribution is unambiguously

\[
 \left.\partial_\chi^L\partial_\eta^L V(x+t\eta\chi)\right|_{\eta=\chi=0}
 =tV'(x).
\tag{12}
\]

UV stationarity does not set this retained gradient to zero. Hence a Hessian-ratio identity based only on the tree retained Jacobian is false in general, even for a unit full Jacobian.

### 2.2 What replaces the naive Jacobian identity

Let \(U_t\) be the tree pullback, \(\dot U_t=\mathcal A_{\gamma_{0,t}}U_t\), \(U_0=1\), \(\mathcal A_\gamma F=(F,\gamma)_P\). Set

\[
\dot\ell_{P,t}=\mathcal A_{\gamma_0}\ell_{P,t}+\Delta_{{\rm BV},P}\gamma_0,
\quad
\dot B_t=\mathcal A_{\gamma_0}B_t+\gamma_1,
\quad \ell_{P,0}=B_0=0.
\]

In finite dimensions \(\ell_{P,t}\) is the logarithm of the tree-map half-Berezinian. Since \(Q_t=(W_{0,t},\cdot)_P\) obeys \(\dot Q_t=[\mathcal A_{\gamma_0},Q_t]\), (9) integrates to

\[
\boxed{W_{1,t}=U_tW_{1,0}-\ell_{P,t}+(W_{0,t},B_t)_P.}
\tag{13}
\]

The additional term is classically BV-exact, not identically zero off shell. Its vanishing on a full critical locus is weaker than equality as functions on the retained BV space.

### 2.3 A separate even-UV check with an even ghost antifield

The [previous tree counterexample](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L385-L428>) has
\(S_t=(u+r^2)^2/2+e^{tu}pc+sd-2(v-tbc)rd\), \(\Gamma=bcu\), and UV plane \(v=0\). Here \(b\) is an even ghost antifield. Its exact source semidensity is \(\nu_t=e^{-tu}\), since \(\Delta_{\rm BV}\Gamma=-u\). A normalized ordinary Gaussian integral gives

\[
\begin{aligned}
 W_t&=e^{-tr^2-\hbar t^2/2}pc+sd+2tbcrd
       -\hbar tr^2-\tfrac12\hbar^2t^2,\\
 \gamma_t&=-bc(r^2+\hbar t),\\
 W_{1,t}&=-tr^2-\tfrac12t^2e^{-tr^2}pc,
 \qquad \gamma_{1,t}=-tbc.
\end{aligned}
\tag{14}
\]

The exact retained QME and (5) hold. Omitting \(\gamma_1\) leaves the nonzero one-loop residual \(-t e^{-tr^2}pc\). This test also detects the log-amplitude contribution in (7), not only a fermionic Hessian factor. It is a finite algebraic model, not an AdS regulator.

## 3. The actual gravitational divergence and local semidensity

Retain \(\ell_{\rm AdS}=1\), \(\kappa=2a>0\), the background alignment and complete ghost/antifield coordinates of [the exact isotopy](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L31-L187>). Thus \(q=(f,w,\eta,\zeta)\), \(p=(E,W,R,T)\), \(\xi=e_0^{-1}\zeta\). The letter \(W\) in this section is the connection antifield, not the effective action of §§1–2. Set

\[
 F=e_0^{-1}f,\quad B_t=(1+tF)^{-1},\quad \chi_t=B_t\xi,
\quad
\Gamma_t=\int\left[R\iota_{\chi_t}w+T\iota_{\chi_t}f
 +\kappa^{-1}W\wedge\iota_{\chi_t}E\right].
\tag{15}
\]

At an oriented unit-weight canonical cell, direct differentiation of all pairs gives

\[
\boxed{\Delta_{{\rm BV},0}\Gamma_t
 =-\operatorname{tr}(B_tF)
 +\frac{t}{\kappa}\operatorname{tr}\!\bigl[B_te_0^{-1}(\iota_{\chi_t}W)\bigr].}
\tag{16}
\]

The \((\zeta,T)\) pair gives the first term. For the physical term use
\(\partial\chi^\nu/\partial f^a{}_{\mu}=-t(B_te_0^{-1})^\nu{}_a\chi^\mu\) and \((f,\Gamma)=\kappa^{-1}\iota_\chi W\). Antisymmetry of the two-form changes the contraction into the **plus** sign in (16). The other two conjugate sectors give zero. In particular, \(\Delta_{{\rm BV},0}\Gamma_0=-\operatorname{tr}F\), while the nilpotent term at \(F=0,t\ne0\) can be nonzero.

The exact type-II mixed Jacobian independently gives the background-normalized local half-density

\[
\nu_t=\det(1+tF)^{-1}.
\tag{17}
\]

There is no additional antifield factor. Rather,

\[
\partial_t\log\nu_t=-\operatorname{tr}(B_tF),\qquad
(\log\nu_t,\Gamma_t)
 =-\frac{t}{\kappa}\operatorname{tr}[B_te_0^{-1}(\iota_{\chi_t}W)],
\tag{18}
\]

so (2) holds exactly. Integrating only \(\Delta\Gamma\) at fixed source coordinates and omitting convection would give the wrong Jacobian.

Equations (16)–(18) are finite-cell statements. With cell weight \(v\), the canonical antifields are integrated momenta and the two-antifield coefficient is \(1/(\kappa v)\). A sum of cell divergences cannot be replaced by an ordinary spacetime integral without specifying the coincident trace.

## 4. Fixed heat transport is already nontrivial on compact support

Write \(\mathsf T(Y)=1\operatorname{tr}Y-Y^T\). The actual Hodge blocks are

\[
R_1=\nabla^*\nabla+2,\qquad R_K=\nabla^*\nabla+2\mathsf T,
\qquad \Delta_{{\rm H},0}=R_1\oplus R_1,
\quad\Delta_{{\rm H},1}=R_K\oplus R_K.
\tag{19}
\]

The paired antifield blocks are their \(\mathcal H=S_{\rm int}*\) conjugates. The physical and ghost kernels in (19) are not the same heat kernel. On smooth compactly supported coefficients the fixed-heat contraction of (15) is

\[
\Delta_{{\rm BV},\varepsilon}\Gamma_t
 =\operatorname{Tr}_{9}(e^{-\varepsilon R_K}M_{\mathcal A_t})
 -\operatorname{Tr}_{3}(e^{-\varepsilon R_1}M_{\mathcal C_t}),
\quad
\begin{cases}
\mathcal A_t(u)=-\dfrac{t}{\kappa}\iota_{B_te_0^{-1}(u)\chi_t}W,\\
\mathcal C_t=fB_te_0^{-1}.
\end{cases}
\tag{20}
\]

These are localized or heat-sandwiched traces. The unused diagonal copy has zero insertion; no BV sector has been discarded. Contracting the fiber indices first and applying a single scalar heat weight to (16) would change (20).

Consider the proposed local logarithmic prescription

\[
J_\varepsilon(f)=-\operatorname{Tr}_{3}
 \left(e^{-\varepsilon R_1}M_{\log(1+tfe_0^{-1})}\right).
\]

At \(F=0\), put \(A=\mathcal A_t\). Direct fiber algebra gives \(\operatorname{tr}(\mathsf T A)=-\operatorname{tr}A\). Since \(\mathrm{Scal}=-6\), the first heat coefficients are
\(a_{1,\rm phys}=-1-2\mathsf T\) and \(a_{1,\rm ghost}=-3\). It follows that

\[
\boxed{X_{\Gamma_t}J_\varepsilon+
 \Delta_{{\rm BV},\varepsilon}\Gamma_t-\partial_tJ_\varepsilon
 =(4\pi\varepsilon)^{-3/2}
 \left[4\varepsilon\int\operatorname{tr}A\,dV+O(\varepsilon^2)\right].}
\tag{21}
\]

For compactly supported \(\zeta^1=\theta u\), \(W_2{}^3=\vartheta v\) with independent odd \(\theta,\vartheta\) and \(\int uv\ne0\), the leading coefficient is nonzero. This disproves that **this fixed-heat insertion** automatically transports the local semidensity. It does not exclude counterterms, a transported regulator, or a renormalized construction. The defect has a divergent half-integer heat power; it is not by itself a finite quantum anomaly.

For an \(\varepsilon\)-independent compactly supported multiplication insertion \(A\), no finite spectral wall, and fixed paired band \(P\), the valid heat statement is instead

\[
\operatorname{FP}_{\varepsilon\downarrow0}
 \operatorname{Tr}(M_Ae^{-\varepsilon\Delta_{\rm H}})=0,
\qquad
\boxed{\operatorname{FP}_{\varepsilon\downarrow0}
 \operatorname{Tr}(M_A(1-P)e^{-\varepsilon\Delta_{\rm H}})
 =-\operatorname{Tr}(PM_AP).}
\tag{22}
\]

The first assertion follows from the three-dimensional interior expansion \(\varepsilon^{-3/2}\sum_{j\ge0}a_j\varepsilon^j\). The compressed term is trace class and analytic at zero because \(\Delta_{\rm H}P\) is bounded. For the BV sum the corresponding parity signs must be retained. Neither equality supplies the QME/BV-Stokes hypotheses of §1.

## 5. An infrared obstruction inside the actual retained band

Here take \(M=\mathbb H^3\), geodesic radius \(r\), \(\Lambda^2>5\), and choose \(0<b^2<\Lambda^2-5\). Define

\[
\phi_b(r)=\frac{1-\cos(br)}{r\sinh r},\qquad
\phi_b(0)=\frac{b^2}{2},\qquad
x=(w,f)=(0,\sigma\phi_b e_0),\quad 0<\sigma\ll1.
\tag{23}
\]

All retained ghosts and antifields are set to zero **after** taking the BV derivatives. This is a small uniformly nondegenerate physical coframe.

**The field (23) is genuinely retained and belongs to every Sobolev space.** To see this, put

\[
u(r)=\sinh r\,\phi_b(r)=\frac{1-\cos(br)}r
 =\int_0^b\sin(\lambda r)\,d\lambda.
\tag{24}
\]

The radial \(L^2\) transform conjugates the nonnegative scalar Laplacian to \(-\partial_r^2+1\) on the half-line, with the regular Dirichlet condition at zero. Thus \(\phi_b\) has scalar spectral support in \([1,1+b^2]\). The soldering form is parallel, and the trace block of (19) acts by

\[
R_K(\phi_b e_0)=\bigl(-\nabla^2_{\rm scalar}+4\bigr)\phi_b\,e_0.
\]

Its support is therefore in \([5,5+b^2]\), strictly inside the declared band. Bounded spectral support gives all Sobolev norms. More explicitly,

\[
\|\phi_b\|_{L^2(\mathbb H^3)}^2
 =4\pi\int_0^\infty\frac{(1-\cos br)^2}{r^2}\,dr
 =2\pi^2b.
\tag{25}
\]

The origin is smooth. But \(\phi_b\ge0\) and
\(\int\phi_b\,dV=4\pi\int_0^\infty\sinh r(1-\cos br)\,dr/r=+\infty\); restricting to periodic intervals on which \(1-\cos br\ge1\) proves divergence without oscillatory cancellation.

The cubic retained generator is exactly \(\gamma_3=\Gamma_3|_P\). Only its \((\zeta,T)\) contraction contributes at (23). With \(P_0=1_{[0,\Lambda^2]}(R_1)\) on the rank-three translation-ghost bundle,

\[
\Delta_{{\rm BV},P}\gamma_3(x)
 =-\operatorname{Tr}(P_0M_{\sigma\phi_b}P_0).
\tag{26}
\]

Homogeneity makes \(q_\Lambda=\operatorname{tr}P_0(z,z)\) a finite constant. Its positivity does not require replacing the vector regulator by a scalar one: the actual identity \(R_1\nabla u=\nabla(-\nabla^2_{\rm scalar}+4)u\) supplies a nonzero vector spectral band just above five, so \(P_0\ne0\) for the chosen cutoff. A nonzero invariant positive projection has strictly positive constant diagonal trace. Positivity and the diagonal trace formula give

\[
\boxed{\operatorname{Tr}(P_0M_{\sigma\phi_b}P_0)
 =\sigma q_\Lambda\int\phi_b\,dV=+\infty.}
\tag{27}
\]

Thus (26) has no finite ordinary trace. The same positive diagonal argument applies to the full and UV heat multipliers at every positive heat time. There is no heat finite part of a spatial trace that was never finite.

This is stronger than exhibiting an arbitrary nonintegrable smooth tail: (23) is already in the actual retained band. The formal degree-one divergence cannot be cancelled by higher total-field-degree terms in the tree generator. The classical generator remains integrable because it has several decaying factors; BV contraction removes two of them. A renormalized linear subtraction is extra data, not a consequence of the tree theorem. The example is off shell and does not assert an anomaly in a Brown–Henneaux observable or failure of every quantum equivalence prescription.

## 6. A limited retained density regularization that does exist

On a fixed band with uniformly bounded diagonal, let \(F\) be an endomorphism of the bundle on which \(P\) acts, with \(F\in L^2\cap L^\infty\), \(\|F\|_\infty\le\delta<1\), and define \(A=P M_F P|_{PE}\). For the translation-ghost bundle use \(fe_0^{-1}\), conjugate to the spacetime endomorphism in §3. Then

\[
\|M_FP\|_{\mathfrak S_2}^2
 =\int\operatorname{tr}\bigl(F^*F P(z,z)\bigr)dV
 \le C_\Lambda\|F\|_2^2.
\tag{28}
\]

Hence \(A\) is Hilbert–Schmidt. Although \(\operatorname{Tr}A\) may not exist, the second-modified determinant does:

\[
\log\det_2(1+A)=\operatorname{Tr}[\log(1+A)-A]
 =\sum_{n\ge2}\frac{(-1)^{n+1}}n\operatorname{Tr}A^n.
\tag{29}
\]

Also \(G_F=\log(1+F)-F\) is \(L^1\), with \(\|G_F\|_1\le C_\delta\|F\|_2^2\), so the sandwiched local insertion
\(L_P(F)=\operatorname{Tr}(P M_{G_F}P)\) is finite. These are two **different** well-defined linear-subtracted candidates:

\[
\boxed{\log\det_2(1+\sigma PM_FP)-L_P(\sigma F)
 =\frac{\sigma^2}{2}\operatorname{Tr}(PM_F(1-P)M_FP)+O(\sigma^3).}
\tag{30}
\]

For self-adjoint \(F\), its coefficient is \(\|(1-P)M_FP\|_{\mathfrak S_2}^2/2\). Nonzero actual-band mixing occurs, for example, for compactly supported high-frequency multipliers: localized band projection is compact, while multiplying a nonzero band section by \(\chi\cos Nx^1\) leaves a nonvanishing high-frequency norm. Neither term in (30) was obtained by subtracting two separately divergent linear traces; both are defined directly by their quadratic-starting series.

There is also an exact restricted inequality, not only a quadratic expansion. For self-adjoint \(F\), real \(\sigma\ne0\), and \(|\sigma|\|F\|_\infty<1\),

\[
\log\det_2(1+\sigma PM_FP)-L_P(\sigma F)\ge0,
\quad\text{with equality iff }(1-P)M_FP=0.
\tag{30a}
\]

Indeed, put \(H=1+\sigma M_F>0\), \(R=1-P\), and \(B=PHR\). The Schur formula gives
\(P(H+u)^{-1}P=[H_{PP}+u-B(H_{RR}+u)^{-1}B^*]^{-1}\ge(H_{PP}+u)^{-1}\).
Integrating this positive resolvent difference over \(u\ge0\) gives
\(\log H_{PP}-P(\log H)P\). It is trace class: equivalently it is the difference of the two separately trace-class, linear-subtracted operators in (29)–(30). For \(B\ne0\) the positive resolvent difference is nonzero, so its trace is strictly positive. This is a theorem about two chosen density prescriptions, not an inequality between gravitational partition functions.

This supplies a controlled option for the linear integrability problem, not the canonical semidensity of §3. The subtraction changes its variation. Moreover \(\det_2\) is not multiplicative: for suitable Hilbert–Schmidt \(A,B\),
\(\det_2((1+A)(1+B))=\det_2(1+A)\det_2(1+B)e^{-\operatorname{Tr}(AB)}\).
A quantum transport theorem would have to account for these terms and for the stationary insertion, rather than choose one determinant silently.

## 7. What part of the actual UV Hessian can be defined

Let \(j=x+y(x)\) be the CS small physical stationary solution, \(\mathcal L_0=R_\Lambda\ker\delta\), and retain the actual homotopy \(h=\delta\Delta_{\rm H}^{-1}R_\Lambda\). Here choose \(K_*=K_0\), the free restricted Hessian. Its regular domain is \(\mathcal L_0\cap H^1\); the relative expressions below extend to bounded operators on \(\mathcal L_0\). The **left-relative** operator is

\[
K_*^{-1}K_j=1+A_j,
\qquad A_j=h_T\operatorname{ad}_j|_{\mathcal L_0}.
\tag{31}
\]

Indeed the free inverse maps the restricted interacting gradient \([j,\cdot]\) through \(h_T\). An unspecified inverse of the full \(D\), which has exact directions, is not the relevant inverse.

### 7.1 A fourth-modified CS determinant on the actual stationary domain

The fixed complete backgrounds have bounded geometry, uniformly bounded short-time heat diagonals, and \(\Delta_{\rm H}\ge1\). Hilbert–Schmidt and operator-norm heat estimates, interpolated for \(p\ge2\), give

\[
\|M_f e^{-s\Delta_{\rm H}}\|_{\mathfrak S_p}
 \le C_p\|f\|_p\,s^{-3/(2p)}\quad(0<s\le1),
\]

with an exponentially decaying large-\(s\) bound. Integrating the heat representation of \(\Delta_{\rm H}^{-1/2}\) yields

\[
\|M_f\Delta_{\rm H}^{-1/2}\|_{\mathfrak S_p}
 \le C_p\|f\|_p,\qquad p>3.
\tag{32}
\]

The actual smooth stationary field is \(L^2\cap L^\infty\), hence \(L^p\) for every \(p\ge2\). Factoring \(h\) through the bounded \(\delta\Delta_{\rm H}^{-1/2}\) and using the adjoint version of (32) proves \(A_j\in\mathfrak S_4\). This is global on each fixed \(\mathbb H^3\)/cyclic background, not merely a double-localization statement.

For small \(\|A_j\|<1\), the following trace-class tail is therefore defined:

\[
\log\det_4(1+A_j)
 =\operatorname{Tr}\left[\log(1+A_j)-A_j+\tfrac12A_j^2-\tfrac13A_j^3\right]
 =\sum_{n\ge4}\frac{(-1)^{n+1}}n\operatorname{Tr}A_j^n.
\tag{33}
\]

The analogous one-loop tail is one half of the supertrace, with the actual UV parities. This extends coefficientwise to finite graded coefficient realizations; it does not assert convergence of the full infinite graded expansion. The normalization removes the first three wheels by definition. Their required renormalized values, phases, and Ward identities have not been calculated by (33).

This limitation is substantive. On the UV ghost block the local principal symbol of \(A_j\) is
\(-i\operatorname{ad}_{j(k^\sharp)}/|k|^2\). For nonzero smooth physical \(j\) it is a nonzero order-minus-one symbol, since the gravitational Lie algebra has zero center. Local singular-value asymptotics exclude \(\mathfrak S_3\). For generic semisimple insertions, the first three powers are not trace class either. Vanishing of a symbolic supertrace coefficient is not absolute trace-classness of the operator.

### 7.2 Geometric ghost principal symbol and an explicit normalization

At a physical body the full map is identity on the physical fields, but not on the transverse ghost Hessian. Write the ghost-only matrix in the background-aligned internal coordinates as

\[
C_j=\begin{pmatrix}1&we_0^{-1}\\0&1+fe_0^{-1}\end{pmatrix}.
\tag{34}
\]

Let \(G\) be the background gauge generator, \(M=G^\dagger G\), and \(G_{g,j}\) the actual geometric gauge generator at this body. The off-shell torsion/curvature identity gives

\[
G_{g,j}=G_{{\rm CS},j}C_j+N_{\rm eq}
       =G C_j+B_j,
\qquad
N_{\rm eq}\xi=(\iota_\xi\mathcal R,\iota_\xi T_{\rm torsion}).
\tag{35}
\]

Here \(B_j\) is multiplication with coefficients controlled by \(j,\nabla j,j^2\), hence \(L^2\cap L^\infty\) on the stated smooth physical graph. In the fixed coexact polarization, the left-relative ghost block has principal symbol \(C_j\), not one. If \(f\ne0\) on an open set, the excess has a nonzero order-zero symbol. Local oscillatory packets show it is not compact, even for compactly supported coefficients. No ordinary or finite-order modified Fredholm determinant of that **raw** relative operator follows. The retained example (23), with \(y=O(\sigma^2)\), supplies an actual small stationary graph with this local obstruction.

There is a useful normalization, but it must respect the UV projection. Put

\[
C_R=R_\Lambda C_jR_\Lambda|_{R_\Lambda E^0},\qquad
\|C_j-1\|_\infty<1.
\]

Then \(C_R\) is bounded invertible, and exactly

\[
\left[M^{-1}R_\Lambda G^\dagger G_{g,j}R_\Lambda\right]C_R^{-1}
 =1+M^{-1}R_\Lambda G^\dagger B_jR_\Lambda C_R^{-1}.
\tag{36}
\]

The remainder is \(\mathfrak S_4\) by (32). Equivalently normalize the **ghost argument** of the ghost–antighost bilinear by \(C_R^{-1}\), with the corresponding transpose block in its quadratic Hessian. The second block has the same Schatten bound, using \(C_R^{-\dagger}=1-(C_j-1)_R^\dagger C_R^{-\dagger}\) and (32). This is not an unspecified simultaneous Hilbert-dual change of both independent variables. Raw multiplication by \(C_j\) need not preserve the UV subspace.

Equation (36) defines a possible relative determinant after a specified field-dependent order-zero factor is removed. It does not define a determinant of \(C_R\), prove multiplicativity, or identify the resulting measure with \(\det(1+F)^{-1}\). The latter is still only the finite pointwise factor. The missing determinant/trace prescription is exactly where §§4–6 become relevant.

## 8. What has and has not been established

**Proved:** the conditional finite BV pushforward and both one-loop coefficients; explicit nonzero generator insertions and failure of the off-shell Hessian/tree-Jacobian shortcut; the actual gravitational cell divergence and its convective cancellation; a compact-support fixed-heat transport defect; the full-versus-UV local heat relation; a genuine retained-band infrared counterexample; the stated \(\det_2\) density candidates and \(\det_4\) CS/normalized-ghost remainders.

**Assumptions:** the previously established fixed complete-hyperbolic free operators and paired cutoff; nondegenerate small coframes; the declared Gaussian contours and branches for finite integrals; BV-Stokes and a closed source semidensity for the finite quantum theorem; the exact localization/integrability hypotheses wherever an ordinary trace is used. The UV operator statements concern the actual physical stationary body and the indicated coefficientwise extensions, not a new full graded smooth inverse theorem.

**Not proved:** a common renormalized continuum QME/BV-Stokes construction; the missing low wheels and generator contractions; equality of the normalized geometric and CS determinants; a regulator-compatible metric auxiliary/Lorentz pushforward; nonlinear Brown–Henneaux/proper/BFV domains; other global cycles or Hilbert-space equivalence. No finite-dimensional example, heat finite part, or modified determinant is promoted to any of these conclusions.

The next concrete interface is to choose a spatial/tadpole normalization and a quantum regulator together, calculate the first three normalized Hessian wheels and the matching generator insertion, and test (9) with its actual regulator defect. Only after this test can a prescribed subtraction be called a compatible one-loop transport rather than a convenient determinant convention.

## 9. Evidence

The parent [verification source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one_loop_bv_transport_checks.py>) gives 27 passing groups: the exact even-UV Gaussian pushforward, quantum master/transport identities and nonzero omission control, together with the radial spectral and norm identities in §5. Native Sage exterior multiplication is used for the finite BV algebra; SymPy is used for the ordinary radial identities. The [frozen result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/result.json>) and [actual successful server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-bv-parent.5wC0a3/actual-server-return.json>) are retained. An excluded generic oscillatory-limit API failure is separately disclosed; its replacement is the explicit bounded-tail squeeze in the proof, not a numerical assumption.

Three fresh investigations began with the questions and conventions, not the parent candidate conclusions:

- The [finite-dimensional derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/proof.md>) supplies the odd-UV example, ordered super-Wick formula and separate exact super-Gaussian tests. Its final 1,271 exact checks include extensive algebra-implementation consistency checks; they are not 1,271 independent mathematical results. The first response was upstream-truncated by an unintended namespace return; the later successful returns are complete, as recorded in the [diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/tool-diagnostics.md>).
- The [actual gravitational divergence and heat analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/report.md>) differentiates all canonical sectors, recomputes the type-II mixed Jacobian, and tests the actual curvature-dependent heat contraction. Its 16 exact exterior checks use custom bitmask algebra over Sage rational functions, not native Sage ExteriorAlgebra; 10 separate Wolfram checks concern ordinary matrices, heat coefficients and compression.
- The [stationary-Hessian analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/independent-derivation.md>) derives the projected inverse, global Schatten bound and actual geometric ghost principal obstruction. Fourteen exact Wolfram symbol checks supplement, but do not prove, the analytic operator statements.

Later supplied proposals and text audits are separate evidence. The [radial/ghost-normalization follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md>) has seven scalar Wolfram checks, with the actual vector-projector trace argument proved analytically. The [supplied determinant assessment](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA/supplied-followup-det2-assessment.md>) supplies the exact positivity refinement (30a). The three scoped audits cover [the finite formulas and examples](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-note20-audit-20261031-88393300bd/audit.md>), [the divergence, heat and retained density sections](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-note20-supplied-audit-20261031.SnCnWtBT/audit.md>), and [the retained counterexample and Hessian domains](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/supplied-note20-sections5-and7-audit.md>). The first adds 18 narrow super-chain-rule/ghost-degree checks without rerunning its frozen engine. Their sign, reference-domain and small-ball qualifications are incorporated; frozen earlier snapshots retain their historical findings. Actual server returns, replay instructions and rendering errata are indexed in the [verification guide](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/README.md>). Analytic trace and domain proofs, not finite kernels, establish the continuum assertions above.
