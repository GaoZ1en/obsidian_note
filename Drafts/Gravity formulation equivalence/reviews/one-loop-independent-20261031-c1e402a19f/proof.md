# Independent finite-dimensional one-loop stationary BV transport

## Result

**The finite-dimensional quantum extension holds under a compatible quantum semidensity lift; the classical isotopy by itself does not determine that lift. A Hessian-ratio/tree-retained-Jacobian identity is false off shell.**

With the Euclidean convention fixed below, the exact closed-semidensity pushforward is

\[
\rho_P=I(\nu e^{-S/\hbar}),\qquad
\gamma=\frac{I(K\nu e^{-S/\hbar})}{I(\nu e^{-S/\hbar})},\qquad
\dot W=(W,\gamma)_P-\hbar\Delta_P\gamma,
\quad W=-\hbar\log\rho_P.
\tag{1}
\]

Writing \(K=\Gamma+\hbar\kappa+O(\hbar^2)\), \(W=W_0+\hbar W_1+O(\hbar^2)\), and \(\gamma=\gamma_0+\hbar\gamma_1+O(\hbar^2)\), the stationary formulas are

\[
\boxed{W_0=S\circ j,\qquad
W_1=\tfrac12\log\operatorname{Ber}(HH_*^{-1})-(\log\nu_0)\circ j,}
\tag{2}
\]

\[
\boxed{\gamma_0=\Gamma\circ j,\qquad
\gamma_1=\kappa\circ j+
\left[\mathcal P\Gamma^{[2]}+
\mathcal P(\Gamma^{[1]}\ell^{[1]})-
\tfrac12\mathcal P^2(\Gamma^{[1]}S^{[3]})\right]_{\xi=0},}
\tag{3}
\]

where \(\ell=\log\nu_0\), the superscripts denote UV Taylor degree about the stationary graph, and the ordered super-Wick operator \(\mathcal P\) is defined in (20). In particular,

\[
\boxed{\dot W_1=(W_1,\gamma_0)_P+(W_0,\gamma_1)_P-\Delta_P\gamma_0.}
\tag{4}
\]

The term \((W_0,\gamma_1)_P\) cannot in general be discarded. An exact model with two odd UV coordinates has \(\gamma_0=0\), identity tree retained map, full canonical Berezinian one, but

\[
W=V(x)-\hbar\log\frac{m+tV'(x)}m,
\qquad
\gamma=-\frac{\hbar p}{m+tV'(x)}.
\tag{5}
\]

The nonzero insertion in (5) supplies the entire one-loop variation off shell.

This is a finite-dimensional formal result, not a new finite-mode regulator and not a continuum or AdS statement.

## 1. Objects, assumptions, and signs

The full space is a finite-dimensional odd symplectic supervector space with homogeneous Darboux pairs \((q^A,p_A)\), parities

\[
\epsilon(q^A)=\epsilon_A,\qquad \epsilon(p_A)=\epsilon_A+1\pmod2,
\]

and ghost degrees \(\operatorname{gh}p_A=-1-\operatorname{gh}q^A\). The action is even of ghost degree zero; generators are odd of ghost degree minus one. Planck's constant is even of ghost degree zero.

All derivatives displayed without an arrow are **left** derivatives. For homogeneous \(F\),

\[
F\overleftarrow\partial_z
=(-1)^{\epsilon_z(\epsilon_F+1)}\partial^L_zF.
\tag{6}
\]

The prescribed bracket and our flat Darboux BV Laplacian are

\[
(F,G)=\sum_A\left[
(F\overleftarrow\partial_{q^A})(\partial^L_{p_A}G)
-(F\overleftarrow\partial_{p_A})(\partial^L_{q^A}G)
\right],
\]

\[
\boxed{\Delta=\sum_A(-1)^{\epsilon_A}
\partial^L_{q^A}\partial^L_{p_A}.}
\tag{7}
\]

The rightmost derivative acts first. Thus \((q^A,p_B)=\delta^A_B\), \(QF=(S,F)\), and

\[
\Delta(FG)=(\Delta F)G+(-1)^{\epsilon_F}F\Delta G
+(-1)^{\epsilon_F}(F,G),\qquad \Delta^2=0.
\tag{8}
\]

The fixed paired splitting into retained coordinates \(x\) and UV pairs \((u^i,v_i)\) gives \(\Delta=\Delta_P+\Delta_{UV}\). The UV Lagrangian is the fixed plane \(v=0\). Its coordinates \(u\) may contain both parities. An invertible even UV Hessian has an even-dimensional odd block. Fix a Berezin orientation and a Gaussian contour, or work entirely with formal Gaussian integration. Bosonic convergence, if wanted, requires an appropriate convergent contour; it is not supplied by a merely algebraically invertible Hessian.

The coefficient of the full semidensity is

\[
\rho_t=\nu_t e^{-S_t/\hbar},\qquad
\sigma_t=\rho_t\,|Dz|^{1/2},
\qquad \nu_t=\nu_{0,t}+O(\hbar),
\tag{9}
\]

with \(\nu_{0,t}\) even, ghost degree zero, and formally invertible. A fixed measure/normalization convention makes the pushforward coefficient even of ghost degree zero. Constants from the Gaussian measure, including powers of \(\hbar\), are normalized against a fixed reference Hessian \(H_*\); they are independent of \(x,t\). Logarithms and square roots mean their formal branch near that reference.

The given classical isotopy is

\[
\dot S=(S,\Gamma).
\tag{10}
\]

For standard quantum-master-equation statements one additionally needs the CME \((S,S)=0\). The exact anomalous identity below also states what happens when the semidensity is not closed; no quantum hypothesis is silently inferred from the classical stationary relation.

Assume a unique formal solution of the UV stationary equations on the chosen Lagrangian,

\[
j_t(x)=(x,y_t(x),0),\qquad
\left.\partial^L_{u^i}S_t\right|_{j_t}=0,
\tag{11}
\]

with invertible free Hessian. This is not the equation obtained by differentiating with respect to every UV antifield. The tree relation \(\gamma_0=\Gamma\circ j\), \(\dot W_0=(W_0,\gamma_0)_P\) is recovered below, consistently with the stipulated tree conventions.

## 2. Deriving the quantum semidensity lift

For an odd generator \(K\), the even right Hamiltonian vector field is

\[
R_KF=(F,K).
\]

Its divergence in the flat full Darboux volume is \(\operatorname{div}R_K=2\Delta K\). This follows directly from \(R_Kq=\partial_p^LK\), \(R_Kp=-\partial_q^LK\), including the odd-coordinate divergence sign. Its Lie action on a semidensity coefficient is therefore

\[
\mathcal L_K\rho=(\rho,K)+(\Delta K)\rho.
\]

Using (8) with the first factor \(K\) odd gives the sign-sensitive identity

\[
\boxed{\mathcal L_K\rho=\Delta(K\rho)+K\Delta\rho.}
\tag{12}
\]

In particular the plus sign in the last term is fixed, not chosen by analogy with a Lorentzian convention.

Let

\[
A=S-\hbar\log\nu,\qquad \rho=e^{-A/\hbar},
\qquad K=\Gamma+\hbar\kappa+O(\hbar^2).
\]

Canonical semidensity transport \(\dot\rho=\mathcal L_K\rho\) is exactly

\[
\boxed{\dot A=(A,K)-\hbar\Delta K.}
\tag{13}
\]

This equation itself does not require the QME. It preserves closedness because \(\Delta\mathcal L_K=\mathcal L_K\Delta\).

The Euclidean exponential gives

\[
\Delta e^{-A/\hbar}
=\left[\frac{(A,A)}{2\hbar^2}-\frac{\Delta A}{\hbar}\right]e^{-A/\hbar}.
\]

Consequently the closed-semidensity or QME condition is

\[
\boxed{\tfrac12(A,A)-\hbar\Delta A=0.}
\tag{14}
\]

There is no factor of \(i\). Write \(\ell_0=\log\nu_0\), so \(A=S-\hbar\ell_0+O(\hbar^2)\). The first two orders of (13) and (14) give

\[
(S,S)=0,\qquad
\boxed{(S,\ell_0)=-\Delta S,}
\tag{15}
\]

\[
\dot S=(S,\Gamma),\qquad
\boxed{\dot\ell_0=(\ell_0,\Gamma)+\Delta\Gamma-(S,\kappa).}
\tag{16}
\]

Equivalently, if \(A=S+\hbar A_1+\cdots\), then \(A_1=-\ell_0\), \(QA_1=\Delta S\), and \(\dot A_1=(A_1,\Gamma)+(S,\kappa)-\Delta\Gamma\).

These equations identify the extra data absent from the classical problem. In particular, the one-loop quantum lift requires the modular cocycle \(\Delta S\) to be \(Q\)-exact in the chosen algebra of functions. If a closed initial semidensity is supplied, it can be transported with \(K=\Gamma\), i.e. \(\kappa=0\); its coefficient \(\nu\) will generally not stay equal to one. If instead a specified \(\nu_t\) is to be held fixed, solving (16) for \(\kappa\) is an additional condition. A full formal solution has the usual possible higher-order obstructions; finite-dimensionality alone does not remove them.

For reference, before truncation the compatibility between a prescribed classical \(S\), its generator \(\Gamma\), and a quantum generator \(K\) is

\[
\dot\nu=(\nu,K)+\nu\Delta K
-\frac{\nu}{\hbar}(S,K-\Gamma).
\tag{17}
\]

The apparent division by \(\hbar\) is regular since \(K-\Gamma=O(\hbar)\).

## 3. Exact finite BV pushforward, including its defect

Let

\[
I(F)(x)=\mathcal N_\hbar\int_{v=0}Du\,F(x,u,0),
\]

where the normalization and orientation are fixed. Gaussian integration by parts, or ordinary integration by parts with vanishing boundary terms, gives

\[
I\Delta=\Delta_PI.
\tag{18}
\]

There is no moving-Lagrangian term: the Lagrangian in this problem is fixed. The stationary translation \(u=y(x)+\xi\), performed at fixed retained \(x\), has unit UV Berezinian.

Apply (18) to (12). The exact identity, **without a QME assumption**, is

\[
\boxed{\dot\rho_P=\Delta_PI(K\rho)+I(K\Delta\rho),\qquad
\Delta_P\rho_P=I(\Delta\rho).}
\tag{19}
\]

Thus classical canonical transport alone does not warrant dropping the second term. If \(\Delta\rho=0\), put \(\gamma=I(K\rho)/\rho_P\). Equation (19) becomes \(\dot\rho_P=\Delta_P(\gamma\rho_P)\), and \(\Delta_P\rho_P=0\). The same product rule now proves (1) and the retained QME \((W,W)_P/2-\hbar\Delta_PW=0\).

One can display the anomaly explicitly. Let \(E=(\Delta\rho)/\rho\) and \(\langle F\rangle=I(F\rho)/I\rho\), keeping the written order of odd factors. Then

\[
\dot W=(W,\gamma)_P-\hbar\Delta_P\gamma
-\hbar\bigl[\langle KE\rangle-\gamma\langle E\rangle\bigr].
\]

This is a covariance defect, not an assumed cancellation. When only a one-loop lift is available, the corresponding claims below are statements through that order; the exact closed formulas require a full closed formal semidensity.

## 4. Super-Gaussian and ordered Wick convention

Restrict to \(v=0\) first and write \(u=y(x)+\xi\). Expand by homogeneous degree in the UV fluctuation coordinates, keeping retained coefficients in their superalgebra:

\[
S|_L=W_0+S^{[2]}(\xi)+S^{[3]}(\xi)+\cdots.
\]

A precise Hessian convention, useful when off-diagonal entries are odd, is

\[
H_{ij}=\left.(\partial^L_{u^i}S)
\overleftarrow\partial_{u^j}\right|_j,
\qquad
\partial^L_{\xi^i}S^{[2]}=H_{ij}\xi^j,
\qquad
S^{[2]}=\tfrac12\xi^iH_{ij}\xi^j.
\]

The entries multiply in the displayed order. This convention is not an instruction to replace a supermatrix by an ordinary numerical symmetric matrix. For example,

\[
H_{ji}=(-1)^{\epsilon_i\epsilon_j+\epsilon_i+\epsilon_j}H_{ij}.
\]

Thus the odd-odd block is antisymmetric. Its inverse, with ordered superalgebra multiplication, is \(C=H^{-1}\). Integration by parts gives

\[
\langle\xi^i\xi^j\rangle_0=\hbar C^{ij},\qquad
C^{ij}=(-1)^{\epsilon_i\epsilon_j}C^{ji}.
\]

For instance, applying \(\partial^L_i\) to \(\xi^j e^{-S^{[2]}/\hbar}\), moving \(H_{ik}\) past \(\xi^j\), and then using the graded symmetry of \(C\), gives \(H_{ik}C^{kj}=\delta_i{}^j\). This fixes the inverse and its order.

Define

\[
\boxed{\mathcal P=\tfrac12\sum_{i,j}C^{ij}
\partial^L_{\xi^j}\partial^L_{\xi^i},\qquad
\langle F\rangle_0=[e^{\hbar\mathcal P}F]_{\xi=0}.}
\tag{20}
\]

**Every \(C^{ij}\) is on the left; the rightmost derivative acts first.** Derivatives pass through odd external coefficients with their usual left-derivative signs. Reordering the derivatives or using commuting covariance entries silently would change odd contractions.

The normalized Gaussian factor is

\[
I(e^{-S^{[2]}/\hbar})=
\operatorname{Ber}(HH_*^{-1})^{-1/2}.
\tag{21}
\]

To derive (21), order the even UV coordinates before the odd ones and block-decompose \(H=\left(\begin{smallmatrix}A&B\\E&D\end{smallmatrix}\right)\). The bodies of \(A\) and \(D\) are respectively invertible symmetric and antisymmetric matrices. Completing the square by triangular supercoordinate changes of Berezinian one gives the even Schur complement \(A-BD^{-1}E\) and the odd block \(D\). The ordinary Gaussian supplies \(\det(A-BD^{-1}E)^{-1/2}\), while finite Berezin integration supplies \(\operatorname{Pf}(D)\), up to fixed orientation signs and powers of \(\hbar\). The square of their product is \(\det D/\det(A-BD^{-1}E)=\operatorname{Ber}(H)^{-1}\). Normalization at \(H_*\) fixes the branch. The argument extends over nilpotent retained coefficients by formal expansion.

The chosen normalization absorbs the reference Gaussian and fixed powers of \(2\pi\hbar\), signs, and orientation. This is a formal branch statement. In particular, for two odd coordinates with \(S^{[2]}=M\eta\chi\) and \(\int d\chi\,d\eta\,\eta\chi=1\),

\[
\int d\chi\,d\eta\,e^{-M\eta\chi/\hbar}=-M/\hbar,
\quad C^{\eta\chi}=-1/M,
\quad \mathcal P=-M^{-1}\partial^L_\chi\partial^L_\eta.
\tag{22}
\]

The minus sign in the fermionic contraction is essential for the example below.

## 5. Deriving both one-loop formulas

At leading stationary order,

\[
\rho_P=e^{-W_0/\hbar}\nu_0(j)
\operatorname{Ber}(HH_*^{-1})^{-1/2}[1+O(\hbar)],
\]

which proves (2). The \(O(\hbar)\) bracket contributes to \(W\) first at order \(\hbar^2\), not at one loop. In particular the UV dependence of \(\nu_0\) does not change the Hessian term in \(W_1\); only \(\nu_0(j)\) appears there.

For the insertion, expand

\[
\Gamma=\Gamma^{[0]}+\Gamma^{[1]}+\Gamma^{[2]}+\cdots,
\quad
\ell_0=\ell^{[0]}+\ell^{[1]}+\ell^{[2]}+\cdots.
\]

The ratio defining \(\gamma\) is

\[
\frac{\left\langle
(\Gamma+\hbar\kappa+\cdots)
\exp(\ell_0-\ell^{[0]})
\exp[-(S^{[3]}+S^{[4]}+\cdots)/\hbar]
[1+O(\hbar)]\right\rangle_0}
{\left\langle
\exp(\ell_0-\ell^{[0]})
\exp[-(S^{[3]}+S^{[4]}+\cdots)/\hbar]
[1+O(\hbar)]\right\rangle_0}.
\tag{23}
\]

All terms proportional to \(\Gamma^{[0]}\) times the first denominator correction cancel. This includes quartic-action bubbles, two-cubic-vertex bubbles, the quadratic amplitude terms, and the value of \(\nu_1/\nu_0\). The surviving terms at order \(\hbar\) are exactly

\[
\hbar\kappa(j),\qquad
\langle\Gamma^{[2]}\rangle_0,
\qquad
\langle\Gamma^{[1]}\ell^{[1]}\rangle_0,
\qquad
-\hbar^{-1}\langle\Gamma^{[1]}S^{[3]}\rangle_0.
\]

For a homogeneous degree-two polynomial, its expectation is \(\hbar\mathcal P\) evaluated at zero. For degree four it is \(\hbar^2\mathcal P^2/2\). These facts prove (3), including the minus sign and factor one half in its cubic tadpole term. No equation of motion for the retained variables was used.

For commuting UV coordinates only, (3) reduces to the familiar but convention-dependent index formula

\[
\gamma_1=\kappa(j)
+\tfrac12C^{ij}\Gamma_{,ij}
+C^{ij}\Gamma_{,i}\ell_{,j}
-\tfrac12\Gamma_{,i}C^{ij}S_{,jkl}C^{kl},
\]

with all entries evaluated at the graph. The ordered formula (3), not this unsigned index shorthand, is the statement for general super UV coordinates.

Expanding (1) now gives (4), the stated tree equation, and the first retained QME equations

\[
(W_0,W_0)_P=0,\qquad
(W_0,W_1)_P=\Delta_PW_0.
\tag{24}
\]

If \(a_1=e^{-W_1}\) is the one-loop prefactor, (4) is equivalently

\[
\dot a_1=(a_1,\gamma_0)_P+(\Delta_P\gamma_0)a_1
-(W_0,\gamma_1)_P a_1.
\tag{25}
\]

The first two terms are the tree-retained semidensity Lie derivative. The last is the extra off-shell term that a simple retained-Jacobian rule misses.

## 6. Independent algebra checks of the super-Wick ordering

These finite checks support the signs and combinatorics in (20) and (3); the general statements follow from the derivation, not from extrapolating the examples.

### 6.1 A Hessian with odd off-diagonal entries

Let \(z\) be even, \(\eta,\chi\) odd, and let \(\alpha,\beta\) be external odd parameters. With all coefficients written in the displayed order, take

\[
S^{[2]}=Az^2/2+B\eta\chi+z(\alpha\eta+\beta\chi),
\quad
H=\begin{pmatrix}
A&\alpha&\beta\\
-\alpha&0&B\\
-\beta&-B&0
\end{pmatrix}.
\]

The covariance inverse is

\[
C=\begin{pmatrix}
A^{-1}+2\alpha\beta/(BA^2)&-\beta/(AB)&\alpha/(AB)\\
-\beta/(AB)&0&-B^{-1}+\alpha\beta/(AB^2)\\
\alpha/(AB)&B^{-1}-\alpha\beta/(AB^2)&0
\end{pmatrix}.
\]

Both \(HC=CH=1\) hold with ordered exterior multiplication. Relative to the block-diagonal Gaussian, the exact prefactor is

\[
1+\frac{\alpha\beta}{AB}.
\]

The relative Berezinian is \(1-2\alpha\beta/(AB)\); multiplying it by the square of that prefactor gives one. Direct finite Berezin integration followed by ordinary Gaussian moments agrees with (20) for all tested UV monomials of total degree at most four, including odd external prefactors. This tests the coefficients-left derivative convention where treating the supermatrix entries as commuting would be unsafe.

### 6.2 Cubic tadpole and denominator cancellation

A separate mixed even/odd test uses

\[
S^{[2]}=Az^2/2+B\eta\chi,\quad
S^{[3]}=cz^3/6+dz\eta\chi,\quad
S^{[4]}=ez^4/24+fz^2\eta\chi/2,
\]

\[
\ell^{[1]}=rz,\quad
\ell^{[2]}=sz^2/2+k\eta\chi,\quad
\Gamma=p(g_0+g_1z+g_2z^2/2+g_F\eta\chi).
\]

Direct Gaussian moment expansion of numerator and denominator gives the normalized one-loop insertion

\[
\boxed{p\left[
\frac{g_2}{2A}-\frac{g_F}{B}
+\frac{g_1r}{A}-\frac{g_1c}{2A^2}
+\frac{g_1d}{AB}
\right].}
\tag{26}
\]

It agrees exactly with (3). In particular the odd tadpole has the positive \(g_1d/(AB)\) sign, because the minus sign from the cubic interaction multiplies the negative fermionic covariance. The parameters \(s,k,e,f\) and all \(g_0\)-times-bubble terms cancel in the normalized insertion, rather than being dropped before normalization.

## 7. Exact graded canonical example with a nonzero one-loop insertion

### 7.1 Full BV data

Use the following Darboux pairs:

| Pair | Parities | Ghost degrees |
|---|---|---|
| retained \((x,p)\) | \((0,1)\) | \((0,-1)\) |
| UV \((\eta,a)\) | \((1,0)\) | \((1,-2)\) |
| UV \((\chi,b)\) | \((1,0)\) | \((-1,0)\) |

The UV Lagrangian is \(a=b=0\), and

\[
\Delta=\partial_x^L\partial_p^L
-\partial_\eta^L\partial_a^L
-\partial_\chi^L\partial_b^L.
\]

Let \(m\ne0\) be an even ghost-zero constant and \(V(x)\) any formal even potential. Set

\[
S_0=V(x)+m\eta\chi,\qquad
\Gamma=p\eta\chi,\qquad \nu=1.
\tag{27}
\]

Both \((S_0,S_0)=0\) and \(\Delta S_0=0\). Also \(\Delta\Gamma=0\), so no coefficient transport and no quantum generator correction are needed.

The finite right canonical flow is

\[
x\mapsto x+t\eta\chi,\quad p\mapsto p,\quad
\eta\mapsto\eta,\quad\chi\mapsto\chi,
\]

\[
a\mapsto a+tp\chi,\qquad b\mapsto b-tp\eta.
\tag{28}
\]

The signs in the last line follow from the left derivatives of \(p\eta\chi\). The finite map preserves every Darboux bracket. In the coordinate order with the unchanged variables \((p,\eta,\chi)\) first, its Jacobian is triangular with diagonal one, hence its full Berezinian is exactly one. It generally tilts the fixed UV Lagrangian away from itself.

Since \((\eta\chi)^2=0\), the pulled-back action is exactly

\[
S_t=V(x)+(m+tV'(x))\eta\chi,
\qquad M_t(x):=m+tV'(x).
\tag{29}
\]

It obeys \(\dot S_t=(S_t,\Gamma)\), \((S_t,S_t)=0\), and \(\Delta S_t=0\). Formally near an invertible \(m\), the unique stationary graph is \(\eta=\chi=0\). Its odd Hessian is

\[
H_t=\begin{pmatrix}0&M_t\\-M_t&0\end{pmatrix},
\qquad
W_0=V(x),\quad\gamma_0=0.
\]

The stationary retained map induced by (28) is the identity, including its retained antifield coordinate.

### 7.2 Exact integration and exact insertion

Choose \(\int d\chi\,d\eta\,\eta\chi=1\), and the fixed normalization \(\mathcal N_\hbar=-\hbar/m\). Then

\[
\rho_P=\left(-\frac\hbar m\right)
\int d\chi\,d\eta\,
 e^{-[V+M_t\eta\chi]/\hbar}
=\frac{M_t}m e^{-V/\hbar}.
\]

The normalized generator is obtained from the actual insertion, not a guessed stationary value:

\[
I(\Gamma e^{-S_t/\hbar})=-\frac\hbar m\,p\,e^{-V/\hbar},
\qquad
\boxed{\gamma=-\frac{\hbar p}{M_t}.}
\tag{30}
\]

Hence (5) holds **exactly**, not merely to one loop. Formula (3) gives the same result: \(\Gamma^{[2]}=p\eta\chi\), so \(\gamma_1=\mathcal P(p\eta\chi)=-p/M_t\), with no amplitude or cubic vertex.

The quantum transport equation checks term by term:

\[
\dot W=-\hbar\frac{V'}{M_t},
\]

\[
(W,\gamma)_P=-\hbar\frac{V'}{M_t}
+\hbar^2\frac{tV''}{M_t^2},
\qquad
\hbar\Delta_P\gamma=\hbar^2\frac{tV''}{M_t^2}.
\tag{31}
\]

The last two terms cancel. Thus the sign \(-\hbar\Delta_P\gamma\) is tested by an actual nonzero order-\(\hbar^2\) contribution whenever \(tV''\ne0\).

At one loop,

\[
\dot W_1=-\frac{V'}{M_t}
=(W_0,\gamma_1)_P,
\]

while both terms involving \(\gamma_0\) vanish. Taking \(V=x^2/2\) gives the rational exact test \(-x/(m+tx)\). It is nonzero off shell, the Gaussian ratio becomes one on the retained critical locus \(x=0\), and the insertion remains nonzero even at \(t=0\). These special limits independently distinguish the transport contribution from a mere endpoint normalization.

## 8. Why the simple Hessian/Jacobian rule fails

For the exact model,

\[
\operatorname{Ber}(H_tH_0^{-1})=(m/M_t)^2,
\quad
\operatorname{Ber}(H_tH_0^{-1})^{-1/2}=M_t/m.
\]

Both the full canonical Berezinian and the tree retained Berezinian equal one, but \(M_t/m\ne1\) off shell. Therefore neither of those Jacobians alone reproduces the Gaussian Hessian factor.

The geometric reason is the second-derivative chain rule. Restricting \(S_0\circ\Phi_t\) to the fixed UV Lagrangian produces not just a congruence transform of a UV Hessian but terms containing the first derivatives of \(S_0\) times second UV derivatives of \(\Phi_t\). The UV stationary equations do not set the retained derivatives of \(S_0\) to zero. Here the retained-coordinate change \(x\mapsto x+t\eta\chi\) supplies exactly the term \(tV'(x)\eta\chi\).

Equation (25), rather than a pure Jacobian equation, is the general one-loop transport law. A simple tree-retained semidensity law can hold when the extra source \((W_0,\gamma_1)_P\) vanishes, or under stronger factor-preserving/special geometric hypotheses. Evaluating on a full retained critical locus is one way to kill this source pointwise; it is not an off-shell identity. The example does not preclude a quantum-corrected retained canonical transformation or a separately specified compensating density. It shows why the stationary tree map and Hessian ratios alone do not suffice.

## 9. Verification record and limitations

The self-contained [verification code](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/verify.py>) uses Sage 10.9, exact rational functions, and an explicitly implemented exterior algebra. The final run passed **1,271 exact Boolean checks**, with no numerical tolerance. Most of that count tests the algebra implementation's product-rule infrastructure, not 1,271 independent research claims. The substantive checks are:

- both parity types of Darboux pair and the BV product rule;
- the full CME, Laplacian, finite canonical map, and isotopy in the exact model;
- exact Berezin pushforward, normalized generator insertion, and the nontrivial order-\(\hbar^2\) Laplacian cancellation;
- both-sided inversion of a mixed super-Hessian with odd external entries;
- direct Gaussian/Berezin moments against the ordered Wick operator;
- the non-Gaussian numerator/denominator expansion and disconnected-term cancellation.

The [exact result file](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/exact-results.json>) contains every check; the [short verification output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/verification-summary.txt>) contains the primary exact results. Actual returned tool diagnostics, including the initial output truncation and its resolution, are preserved in the [diagnostic record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/one-loop-independent-20261031-c1e402a19f/tool-diagnostics.md>). The initial truncation was caused by returning the whole execution namespace; it was not a failed algebra check. Later calls suppressed that namespace and returned complete output.

This derivation used the given bracket/right-action conventions and read the [existing tree note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L31-L42>) only for those conventions; no existing one-loop derivation was used as an input. No original source or research note was edited. This was an independent delegated derivation; the session's delegation-depth limit did not permit an additional fresh child reviewer. Its separate exact algebra implementation is a computational check, not a substitute for further independent proof review.

**Proved:** the finite formal identities with the stated quantum-lift, Hessian, orientation, and Stokes assumptions; the exact graded counterexample to an unrestricted off-shell tree-Jacobian rule.

**Not proved or claimed:** existence of a quantum lift for every classical BV theory, convergence of general formal perturbation series, any choice of physical regulator, continuum determinant/trace existence, AdS spectral compatibility, renormalized QME, or gravitational quantum equivalence. Existing pointwise semidensity calculations do not supply those missing structures.
