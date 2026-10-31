# Projective vacuum curvature, analytic polarizations, and global lifts

## Results and their logical strength

This report advances the determinant question left open in the [vacuum quantum benchmark](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md>). It does **not** infer gravitational quantum equivalence from a central coefficient.

1. **Proved — an analytic construction and a counterexample.** Smooth circle pushforward defines a smooth restricted-Grassmannian map after quotienting by PSL. Its relative tautological determinant line and orthogonal projection connection exist. That connection is not homogeneous: its curvature fails the PSL isotropy test. Replacing the orthogonal projector by a conjugated nonorthogonal idempotent gives a different answer and does not repair the quotient problem.
2. **Proved — an invariant tangent connection with ordinary trace.** The smooth vacuum orbit admits the explicitly constructed nonreductive weak-metric Levi-Civita connection below. On its positive $H^{3/2}$ fiber, the curvature is trace class, including arbitrary smooth smearings, and
   \[
   \boxed{\operatorname{Tr}R(e_m,e_{-m})=\frac{13}{6}m(m^2-1),\qquad
   \operatorname{Tr}R=\frac{26i}{C}\Omega_C.}
   \]
   This is an absolutely convergent Hilbert trace, not a zeta prescription. The connection generators themselves are unbounded.
3. **Proved — global curvature-matching model lines and their relative roots.** An explicit smooth cocycle on the actual diffeomorphism group, vanishing on the actual PSL subgroup, constructs a homogeneous projective line for every real central parameter. The dual half of the $c=-26$ model is the $c=13$ model. The required global phase is fixed by the PSL rotation loop; the other square root fails that loop test.
4. **Conditional — a canonical half-form interpretation.** If an analytic canonical determinant construction realizes the traced tangent connection and the specified relative lift, its dual half has curvature $-\tfrac12\operatorname{Tr}R$, and tensoring it with the prequantum line gives $-i\Omega_{C+13}$. This report alone proves existence of a curvature-matching model line, not its determinant identification. The subsequent relative Fredholm construction closes that identification for its stated prescription, as recorded in §8. Neither stage constructs a gravitational measure pushforward, a polarized Hilbert space, or the full quantum stress tensor.

The following constructions are therefore not interchangeable:

| Construction | Quotient descent | Homogeneous connection | What is established |
|---|---|---|---|
| Unweighted $L^2$ Grassmannian, orthogonal $Qd$ | Yes | No | Actual relative determinant, different curvature |
| Nonorthogonal $V_gPV_g^{-1}$ | No, for this family | Not a quotient connection | Diagnostic trace only |
| Intrinsic vacuum tangent connection | Yes, on smooth Fréchet vectors | Yes | Ordinary trace-class curvature; no determinant functor inferred |
| Relative central-extension model | Yes | Yes, projectively | Actual line and global dual-half model; determinant identification requires the subsequent construction in §8 |

## 1. Conventions and the smooth quotient

Use $x\sim x+2\pi$, smooth degree-one lifts with $f'>0$, and projective **postcomposition**. For the homogeneous construction take application-order multiplication
\[
g\star h=h\circ g,\qquad U_gv=\frac{v\circ g}{g'},\qquad dU_X=\operatorname{ad}_X.
\]
Then the right quotient $M=G/H$, with $G=\operatorname{Diff}^{\infty}_+(S^1)$ and $H=\operatorname{PSL}(2,\mathbb R)$, is the required projective quotient. Its complexified Lie algebra has rapidly decreasing Fourier coefficients and
\[
e_m=i e^{imx}\partial_x,\quad [e_m,e_n]=(m-n)e_{m+n},\quad
\overline{e_m}=-e_{-m},\quad
\mathfrak h_{\mathbb C}=\operatorname{span}\{e_{-1},e_0,e_1\}.
\]
The alternative ordinary-composition pushforward convention in §2 has derivative $-\operatorname{ad}$; inversion identifies the groups. Both tangent arguments change sign under inversion, so the displayed bilinear curvature values at the identity are unchanged. The quotients are related by $[g]\mapsto[g^{-1}]$, not by silently identifying left and right composition.

Fix three cyclically ordered circle points. A unique projective postcomposition sends their images back to those points. The resulting global slice consists of normalized lifts fixing the three points; the constraints are affine and $f'>0$ is convex. It is a smooth contractible Fréchet model of $M$. This proves ordinary line-bundle triviality on this base, not equivariant triviality of an anomalous lift.

Set $E_+^\infty=\operatorname{span}_{\mathrm{rapid}}\{e_j:j\ge2\}$ and $E_-^\infty=\overline{E_+^\infty}$. Define
\[
w_j=j(j^2-1)\quad(j\ge2),\qquad
h_w(e_j,e_k)=w_j\delta_{jk},\qquad
g(e_j,e_{-k})=-w_j\delta_{jk},\qquad Je_j=ie_j.
\]
Here $g$ is extended complex-bilinearly, $h_w(u,v)=g(u,\overline v)$ is linear in its first argument, and $J=-i$ on $E_-^\infty$. The weight identity
\[
(j-1)w_{j+1}=(j+2)w_j
\]
makes the actual quotient isotropy action unitary. Its infinitesimal invariance integrates on connected PSL on smooth vectors. The compatible two-form is $\omega=g(J\cdot,\cdot)$, with $\omega(e_m,e_{-m})=-iw_m$.

The [CPS conventions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) are $\Omega=\delta\Theta$, $\iota_{X_H}\Omega=-\delta H$, and $\hbar=1$. With $C=6k_{\rm CS}=3\ell/(2G)>0$ the already-derived orbit form is
\[
\Omega_C=-\frac{C}{48\pi}\int_0^{2\pi}
\left(\frac{\delta f'\wedge\delta f''}{f'^2}-\delta f\wedge\delta f'\right)dx,
\qquad \Omega_C=\frac C{12}\omega.
\]
Direct evaluation at $f=x$ gives $\Omega_C(e_m,e_{-m})=-iCw_m/12$. The constant scale $C/12$ does not change the Levi-Civita connection. $C$ is the classical/reference coefficient, not a preassigned quantum charge.

## 2. The analytic Grassmannian exists, but its orthogonal connection is wrong for homogeneity

For this section only, use ordinary composition and pushforward
\[
(V_gv)(y)=g'(x)v(x),\qquad x=g^{-1}(y),\qquad A_X=dV_X=-\operatorname{ad}_X.
\]
Use normalized unweighted coefficient-$L^2$, $\langle u,v\rangle=(2\pi)^{-1}\int\overline u v$, antilinear in its first argument. Let $P$ project onto $W=\overline{\operatorname{span}}\{e_j:j\ge-1\}$. This is not the intrinsic weighted tangent metric of §1. In particular,
\[
\|V_g\|=(\max g')^{3/2},\quad
V_g^*u=(g')^2(u\circ g),\quad V_g^*V_g=M_{(g')^3},\quad
A_me_j=(j-m)e_{j+m}.
\]
Only rotations are unitary. For real $X=\xi\partial_x$, $A_X+A_X^*=3M_{\xi'}$, so a skew-adjointness assumption would change the curvature calculation.

### 2.1 Smoothness in the required ideal, not in the restricted-group norm

The exact Fourier kernel is
\[
(V_g)_{kj}=\frac1{2\pi}\int_0^{2\pi}g'(x)^2e^{i[jx-kg(x)]}\,dx.
\]
On either crossing block, $|j-kg'|\ge c(1+|j|+|k|)$ outside finitely many shifted-cutoff indices. Repeated periodic integration by parts gives rapid two-index decay. Parameter derivatives introduce finite frequency powers that extra integrations by parts absorb. Thus the crossing blocks and $[V_g,P]$ are smoothly smoothing, in particular trace class and Hilbert–Schmidt.

Nevertheless $V_g$ is nowhere norm continuous: rotations at $t=\pi/n$ obey $\|V_{R_t}-1\|=2$. It is strongly continuous but not differentiable on every $L^2$ vector. One cannot simply invoke a norm-Lie restricted-group action theorem.

Put $R_g=V_gPV_g^{-1}$. The smoothing-kernel identity $R_g-P=[V_g,P]V_g^{-1}$ proves smooth dependence of this difference even though $V_g$ itself is not norm continuous. Its range's orthogonal projector is
\[
Q_g=R_gR_g^*\bigl[1-(R_g-R_g^*)^2\bigr]^{-1}.
\]
The inverse is bounded because the bracketed positive operator is at least $1$; inversion preserves smoothing perturbations. Hence $Q_g-P$ is smoothly smoothing and $g\mapsto V_gW$ is a smooth restricted-Grassmannian map.

Writing $e_j=-z^{j+1}\partial_z$ identifies $W$ with Hardy holomorphic disk vector fields. Disk automorphisms preserve it, so $Q_{gh}=Q_g$. This proves quotient descent. In contrast, for the real Möbius direction $a=e_1-e_{-1}$,
\[
dR_o(a)=3|e_{-1}\rangle\langle e_{-2}|\ne0,\qquad dQ_o(a)=0.
\]
The nonorthogonal idempotent family does not descend. Preserving $W$ is not the same as preserving $W^\perp$.

### 2.2 Actual relative determinant curvature and its counterexample

The relative tautological determinant convention is $\det E\otimes(\det W)^*$, with induced connection from $Qd$ and curvature
\[
F_{L^2}=\operatorname{Tr}(Q\,dQ\wedge dQ).
\]
For a Hilbert–Schmidt graph $T:W\to W^\perp$, the local trace connection is $\operatorname{Tr}[(1+T^*T)^{-1}T^*dT]$; its graph metric uses the Fredholm determinant of $1+T^*T$. These are actual determinant charts, not an ordinary determinant of an infinite frame matrix.

Let $C_m=(1-P)A_mP$. It vanishes for $m\ge-1$; for $p\ge2$,
\[
C_{-p}e_j=(j+p)e_{j-p}\quad(-1\le j\le p-2).
\]
Correct complexification uses $\overline e_m=-e_{-m}$:
\[
dQ_o(e_m)=\begin{pmatrix}0&-C_{-m}^*\\ C_m&0\end{pmatrix}.
\]
Consequently
\[
\boxed{F_{L^2}(e_p,e_{-p})=-\sum_{j=-1}^{p-2}(j+p)^2
=-\frac{p(p-1)(14p-13)}6.}
\]
The values at $p=2,3,4$ are $-5,-29,-86$. The dual determinant reverses their signs; neither dualization nor a scalar normalization fixes the following failure:
\[
F_{L^2}([e_1,e_2],e_{-3})+F_{L^2}(e_2,[e_1,e_{-3}])=29-20=9\ne0.
\]
Thus no lift can make this connection left-$H$-invariant, hence not $G$-invariant. Its pullback to $G$ remains right-$H$-basic: that is the different statement ensured by descent.

For comparison only,
\[
\operatorname{Tr}\bigl(P[dR_o(e_p),dR_o(e_{-p})]P\bigr)
=-\sum_{j=-1}^{p-2}(j-2p)(j+p)=\frac{13}{6}(p^3-p).
\]
The equality of this polynomial with §4 does not make $R_g$ a quotient connection. The complete analytic estimates and an entirely real noninvariance test are in the [fresh Grassmannian derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/report.md>).

## 3. A genuine nonreductive homogeneous tangent connection

Return to the application-order convention and the weighted tangent spaces of §1. The Fourier representatives $|m|\ge2$ are not an invariant complement: $[e_{-1},e_2]=-3e_1$. No reductive-space formula can be assumed.

Define $\Lambda$ on the whole Lie algebra, including isotropy, by
\[
\boxed{\begin{aligned}
\Lambda(e_r)e_j&=-\frac{(j+2r)w_j}{w_{j+r}}e_{j+r}&& (r\ge1),\\
\Lambda(e_0)e_j&=-je_j,\\
\Lambda(e_{-r})e_j&=\begin{cases}-(j+r)e_{j-r},&j\ge r+2,\\0,&2\le j<r+2,\end{cases}&&(r\ge1).
\end{aligned}}
\]
The negative polarization is fixed by reality. If $\lambda(m,j)$ is the displayed coefficient on $E_+$, then $\Lambda(e_m)e_{-j}=-\lambda(-m,j)e_{m-j}$. A target in $\mathfrak h$ is zero in the tangent quotient.

Mixed-sign torsion freedom forces the lowering coefficients. Metric compatibility then gives the raising coefficients. Equivalently, the parent Koszul computation, with $\widetilde w_k=|k|(k^2-1)$ for $|k|\ge2$ and zero on isotropy, gives for a nonzero tangent target
\[
\lambda(m,j)=\frac{(m-j)\widetilde w_{m+j}-(m+2j)\widetilde w_m-(2m+j)\widetilde w_j}{2\widetilde w_{m+j}}.
\]
This is a connection map on $\mathfrak g$, not a representation of all of $\mathfrak g$ on the discarded-mode complement.

### 3.1 All-boundary equivariance and actual descent

Let $\mathfrak b_-=\operatorname{span}_{\mathrm{rapid}}\{e_k:k\le1\}$. It is a subalgebra containing $\mathfrak h_{\mathbb C}$, and $E_+^\infty\simeq\mathfrak g_{\mathbb C}/\mathfrak b_-$. For every $k\le1$, $\Lambda(e_k)$ is exactly its quotient action. Therefore
\[
[\rho(e_a),\Lambda(e_k)]=(a-k)\Lambda(e_{a+k}),\qquad a=-1,0,1,
\]
including all cutoff boundary cases. The weighted adjoint identities $\Lambda(e_k)^\dagger=\Lambda(e_{-k})$ and $\rho(e_a)^\dagger=\rho(e_{-a})$ prove every remaining $k\ge2$ identity by taking adjoints. Integrating on connected PSL gives actual $H$-equivariance, on the smooth Fréchet domain.

The coefficients have at most linear growth in $j+|m|$, so convolution gives a continuous bilinear map on rapidly decreasing sequences; for suitable weighted $\ell^1$ seminorms, $p_N(\Lambda(X)v)\le c_Np_{N+1}(X)p_{N+1}(v)$. On $H$-equivariant smooth functions $s(gh)=\rho(h)^{-1}s(g)$ define
\[
Ds=ds+\Lambda(\theta)s,\qquad \theta=g^{-1}dg.
\]
Vertical differentiation contributes $-\rho(A)s$, canceled by $\Lambda(A)s$ because $\Lambda|_{\mathfrak h}=\rho$. Equivariance handles change of representative. Thus $D$ is an actual smooth tangent connection without an invariant splitting.

Its torsion vanishes: the same-sign case is the polynomial identity
\[
(2m+j)w_j-(m+2j)w_m=(j-m)w_{m+j},
\]
while mixed signs and isotropy follow from the construction. Reality and the adjoint identity imply metric compatibility. It preserves $J$, hence $N_J=0$ and $d\omega=0$. Nondegeneracy of the weak metric gives uniqueness of the torsion-free metric connection.

**Analytic scope.** These are statements about the smooth real Fréchet connection and its parallel polarization. An actual complex atlas would identify it as Chern, but infinite-dimensional Newlander–Nirenberg is not inferred from $N_J=0$. On the positive completion
\[
\mathcal H_+=\{v:\sum_{j\ge2}w_j|v_j|^2<\infty\},
\]
the normalized connection coefficients grow as $j$. The connection is not a bounded-operator-valued Hilbert connection in these frames. The independent all-boundary proof is in the [fresh homogeneous derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/derivation.md>).

## 4. An ordinary trace, with an exact finite-cutoff identity

Use
\[
R(X,Y)=[\Lambda(X),\Lambda(Y)]-\Lambda([X,Y]).
\]
First form this on the common smooth domain. The last term uses the full bracket, not its tangent projection. For $m\ge1$,
\[
R(e_m,e_{-m})e_j=r_m(j)e_j,
\quad
r_m(j)=2mj-\frac{(j+2m)^2w_j}{w_{j+m}}
+\mathbf1_{j\ge m+2}\frac{(j+m)^2w_{j-m}}{w_j}.
\]
The essential $2mj$ comes from the isotropy bracket $[e_m,e_{-m}]=2me_0$. Dropping it would destroy convergence.

Write
\[
B_j(m)=\frac{(j+2m)^2w_j}{w_{j+m}}
=j^2+mj-2m^2+q_m(j),\qquad
q_m(j)=\frac{m(m^2-1)(2j+m)(j+2m)}{w_{j+m}}.
\]
For $j\ge m+2$, $r_m(j)=q_m(j-m)-q_m(j)=2m^2(m^2-1)j^{-2}+O_m(j^{-3})$. Hence $\sum_{j\ge2}|r_m(j)|<\infty$, also in the normalized Hilbert basis $e_j/\sqrt{w_j}$.

For $N\ge m+1$, finite telescoping gives
\[
\begin{aligned}
\sum_{j=2}^{N}r_m(j)
&=m[N(N+1)-2]-\sum_{j=N-m+1}^{N}B_j(m)\\
&=\boxed{\frac{13}{6}m(m^2-1)-\sum_{j=N-m+1}^{N}q_m(j)}.
\end{aligned}
\]
The last $m$ terms tend to zero, with error $2m^2(m^2-1)/N+O_m(N^{-2})$. This proves the ordinary trace theorem. No divergent trace has been split into separately regularized pieces, and no cyclicity of unbounded products has been used.

For an explicit all-index check,
\[
r_2(j)=\frac{24(j^2+6j+6)}{j(j+1)(j+2)(j+3)},\qquad
\sum_{j=2}^{N}r_2(j)=13-\frac{12(N+3)}{(N+1)(N+2)}-\frac{12(N+4)}{(N+2)(N+3)}.
\]
This includes $j=2,3$ and visibly tends to $13$. The $m=1$ curvature is identically zero. The actual conjugate is $\overline e_m=-e_{-m}$, so tracing $R(e_m,\overline e_m)$ reverses the displayed sign.

## 5. Smooth smearings: closing the trace-norm gap

Fixed-mode asymptotics alone would not justify arbitrary smooth inputs. The following uniform bound does:
\[
\boxed{\|R(e_m,e_{-r})\|_1\le K(1+m+r)^3,\qquad m,r\ge2.}
\]
Here the norm is the trace norm on $\mathcal H_+$, and $K$ is universal.

Assume first $m\ge r$ and put $M=m+r$. In the normalized basis a connection shift is bounded by $j+2|k|$. The $j\le2M$ curvature columns are therefore $O(M^2)$ each and give $O(M^3)$ altogether.

For high columns there is a short direct cancellation argument. If $A_m=P_+\operatorname{ad}(e_m)|_{E_+}$, then for $m\ge0$
\[
\Lambda(e_m)=A_m+D_m,\qquad
D_me_j=d_m(j)e_{j+m},\qquad
d_m(j)=-\frac{m(m^2-1)(2j+m)}{w_{j+m}}.
\]
Negative modes agree with $A_m$ wherever their targets are retained. For $j>2M$, no intermediate target meets the cutoff, and the curvature coefficient is exactly
\[
\begin{aligned}
&(j+m+r)d_m(j)-(j+r)d_m(j-r)-(m+r)d_{m-r}(j)\\
&\hspace{8mm}=m d_m(j)+(j+r)[d_m(j)-d_m(j-r)]-(m+r)d_{m-r}(j).
\end{aligned}
\]
For arguments at least $j-r>j/2$, direct differentiation of the rational expression gives $|d_m|\le K m^3/j^2$ and $|d'_m|\le K m^3/j^3$. The mean-value estimate bounds this curvature coefficient by $KM^4/j^2$. Its Hilbert normalization factor $\sqrt{w_{j+m-r}/w_j}$ is uniformly bounded. Summing $j>2M$ gives $O(M^3)$.

For $m<r$, use $R(e_m,e_{-r})^\dagger=R(e_r,e_{-m})$. A single weighted shift has trace norm equal to the sum of absolute normalized coefficients. This completes the bound. An independent proof expands the high-column common numerator as a degree-four polynomial in $j$, of total degree at most eight; it gives the same estimate.

Same-sign curvature vanishes, and curvature with an isotropy argument vanishes. Rapidly decreasing Fourier coefficients consequently make the double curvature series absolutely convergent in trace norm. Its value agrees on the smooth core with the connection curvature. Off-diagonal shifts have zero trace, giving for arbitrary smooth $X=\sum x_me_m$, $Y=\sum y_me_m$
\[
\operatorname{Tr}R(X,Y)=\frac{13}{6}\sum_{m\ge2}w_m(x_my_{-m}-x_{-m}y_m)
=\frac{13i}{6}\omega(X,Y)=\frac{26i}{C}\Omega_C(X,Y).
\]
This closes the smooth-smearing gap without asserting a norm-smooth Hilbert connection or separately tracing its unbounded summands.

## 6. A global relative cocycle, not just a Lie algebra anomaly

Use the application-order convention throughout this section. Let the real central generator $T$ satisfy $\exp(2\pi T)=1$. Define
\[
\sigma_c(e_m,e_n)=\frac c{12}m(m^2-1)\delta_{m+n,0},\qquad
\omega_c=i\sigma_c.
\]
The factor $i$ is necessary for the complexification of a real scalar cocycle. In real coefficient notation,
\[
\omega_c(X_f,X_g)=\frac c{24\pi}\int_0^{2\pi}(f'''+f')g\,dx.
\]
For degree-one lifts $F,G$ define
\[
\begin{aligned}
B_c(F,G)&=-\frac c{48\pi}\int_0^{2\pi}\log(G'\circ F)\,d\log F',\\
A_c(F)&=\frac c{24}\operatorname{mean}(F-x),\\
b_c(F,G)&=B_c(F,G)+A_c(F)+A_c(G)-A_c(G\circ F).
\end{aligned}
\]
Here $\operatorname{mean}(F-x)=(2\pi)^{-1}\int_0^{2\pi}(F(x)-x)\,dx$. The cochain satisfies $A_c(F+2\pi n)=A_c(F)+2\pi nc/24$ and is generally multivalued on $G$, but the changes cancel in $\delta A_c$. Thus $b_c$ is an actual smooth real cocycle on $G$. The chain rule for $\log(G\circ F)'$ proves the Bott identity; $\delta^2A_c=0$ on lifts proves the remaining identity before descending. Differentiation gives precisely $\omega_c$, including the linear subtraction.

### 6.1 Exact splitting over actual PSL

Represent a disk automorphism by $(\alpha z+\beta)/(\overline\beta z+\overline\alpha)$ with $|\alpha|^2-|\beta|^2=1$, identifying matrices of opposite sign. Put $r_F=\overline\beta_F/\overline\alpha_F$. On continuously chosen lifts,
\[
F(x)-x=2\arg\alpha_F-2\operatorname{Im}\log(1+r_Fe^{ix}),\quad
\log F'=-2\log|\alpha_F|-2\operatorname{Re}\log(1+r_Fe^{ix}).
\]
Thus $A_c(F)=c\arg\alpha_F/12$. For $P=G\circ F$, the absolutely convergent Fourier series gives
\[
\int\log P'\,d\log F'=4\pi\operatorname{Arg}(1-r_F\overline r_P),\qquad
1-r_F\overline r_P=\frac{\alpha_G}{\overline\alpha_F\alpha_P}.
\]
The argument on the left is single-valued in the open right half-plane and agrees continuously with $\arg\alpha_F+\arg\alpha_G-\arg\alpha_P$. Hence
\[
\boxed{b_c(h,k)=0\quad(h,k\in H).}
\]
Consequently
\[
E_c^{\rm rel}=G\times U(1),\qquad
(g,z)(h,w)=(g\star h,zw e^{ib_c(g,h)})
\]
is a smooth extension of the **actual** group, and $s(h)=(h,1)$ is a splitting over the **actual** PSL, for every real $c$. This is stronger than Lie algebra splitting or integration on universal covers.

### 6.2 Flat datum and the rotation obstruction

In cubic/Bott coordinates write the global datum as
\[
[F+2\pi,z]=[F,qz].
\]
The cubic rotation lift ends at $q$. The relative isotropy rotation adds $(c/24)T$, so its $2\pi$ endpoint is
\[
\boxed{\chi=q e^{2\pi ic/24}.}
\]
PSL splitting holds if and only if $\chi=1$. Sufficiency is explicit: $s(h)=[F,e^{iA_c(F)}]$ is then lift-independent and multiplicative. The isomorphism from relative coordinates is $(g,z)\mapsto[F,z e^{iA_c(F)}]$, with $q=e^{-2\pi ic/24}$.

The allowed relative classes are therefore $(c,e^{-2\pi ic/24})$, $c\in\mathbb R$. Within smooth locally trivial extensions with this infinitesimal class, the only additional global datum is a character of $\pi_1(G)=\mathbb Z$: subtract two extensions, use the resulting flat connection, and lift paths to the contractible lift group. The vector-field Lie algebra is perfect, so connected-group characters introduce no further ambiguity. The PSL splitting is unique for the same reason.

Holding the **Bott reference** $q=1$ fixed instead requires $c\in24\mathbb Z$. Keeping the **relative** holonomy $\chi=1$ fixed allows every real $c$; these are different restrictions. Contractibility of $M$ does not remove the group-loop obstruction. Nor may the physical $2\pi$ PSL loop, represented by $-I$ in $SL(2,\mathbb R)$, be replaced silently by the $4\pi$ loop of the double cover.

## 7. Actual model lines, curvature signs, and the dual half

Form the principal circle bundle $P_c=E_c^{\rm rel}/s(H)$. The central component of the left Maurer–Cartan form on the group $E_c^{\rm rel}$ descends to a connection $a$ on $P_c$, satisfies $a(T)=1$, and has curvature $da=-\omega_c$ at the base point; the connection is homogeneous. Horizontality and right-$H$ invariance follow from the relative cocycle and the connected actual PSL splitting.

Use the associated-line convention
\[
(pz,v)\sim(p,z^{\varepsilon}v),\qquad
\nabla=d+i\varepsilon a,\qquad F=-i\varepsilon\omega_c.
\]
A representation of central weight $\varepsilon$ has $d\pi(T)=i\varepsilon I$, so $L_m=d\pi(e_m,0)$ has quantum central term $-\varepsilon\sigma_c$. We choose **weight $-1$** throughout the comparison below. Then
\[
F_{L_c}=+i\omega_c=-\sigma_c=-i\Omega_c,
\]
and the numerical extension label $c$ equals the quantum central parameter if such a representation is constructed. Weight $+1$ reverses that parameter mapping. The line construction itself does not establish a positive-energy representation.

It follows that the actual model $L_{-26}$ has curvature $\operatorname{Tr}R$, while $L_{13}$ has curvature $-\tfrac12\operatorname{Tr}R$. If a canonical determinant of the positive tangent connection exists with its traced curvature, the expected canonical line and half-form satisfy
\[
F_K=-\operatorname{Tr}R=-\frac{26i}{C}\Omega_C,\qquad
F_{K^{1/2}}=-\frac12\operatorname{Tr}R=-\frac{13i}{C}\Omega_C.
\]
Therefore
\[
\boxed{F_{L_C\otimes L_{13}}=-i\Omega_{C+13}.}
\]
The tensor product carries the Baer-sum projective action, represented by $E_{C+13}^{\rm rel}$ because $b_C+b_{13}=b_{C+13}$, not the unchanged original extension. This is proved for the constructed model lines, and conditional for their identification as the canonical metaplectic correction. It is not, by itself, a proof that gravitational quantum generators have charge $C+13$.

### 7.1 Global relative root and its alternative

Baer sum adds $(c,q)$ by $(c,q)+(d,r)=(c+d,qr)$. A dual half requires
\[
2d=-c,\qquad r^2=q^{-1}.
\]
Requiring its actual PSL splitting selects uniquely
\[
\boxed{d=-c/2,\qquad r=e^{\pi ic/24}.}
\]
In the explicit model, $2b_{-c/2}=-b_c$ gives the identity globally. The map $(g,z)\mapsto(g,z^2)$ from $E_{-c/2}^{\rm rel}$ to the dual extension is a central double cover preserving the PSL splitting.

For $c=-26$,
\[
q=e^{i\pi/6},\qquad r_{\rm good}=e^{11\pi i/12},\qquad r_{\rm other}=e^{-i\pi/12}.
\]
Both $r$ values square to $q^{-1}$, but the other root has relative PSL holonomy $r_{\rm other}e^{2\pi i(13)/24}=-1$. Choosing the principal square root of a phase would select the wrong root here. If both original and root are required to retain the usual Bott datum $q=r=1$, the condition is $c\in48\mathbb Z$, not merely $24\mathbb Z$.

This extension-level statement is not a root under the same acting extension. An odd central-weight line cannot have an equivariant dual half under that unchanged central $U(1)$: it would require an integer $n$ with $2n=\pm1$. The replacement double cover is part of the construction.

### 7.2 What an honest action cannot do

An honest $G$-equivariant line over $G/H$ is classified by a character of $H$. Connected PSL has no nontrivial smooth character. Its invariant connection would differ from the trivial connection by an $H$-invariant covector on $\mathfrak g/\mathfrak h$, but $e_0$ has only nonzero weights there. Thus an honest homogeneous line with invariant connection is necessarily flat. A nonzero curvature of the type above requires a specified projective/central action, not merely the existence of an ordinary line over a contractible base.

The full global proof and independent checks are in the [fresh relative-extension derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/report.md>).

## 8. What this stage proves, and the subsequent determinant identification

The algebraic polarized-Witt calculation in the [quantum benchmark](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md>) produces occupied-determinant cocycle $\sigma_{-26}$. The present result supplies an actual homogeneous tangent connection whose ordinary trace is $-\sigma_{-26}$, and an actual relative global line with that curvature and a globally admissible dual half. The coefficient is no longer supported only by a formal crossing sum or an oscillator vacuum energy.

The question left by this report was to construct an actual Fredholm/polarized tangent determinant and compare its transitions, connection, Hermitian metric and lifted PSL rotation with the model. Curvature alone cannot supply that identification; the natural unweighted $L^2$ projection connection explicitly fails it. A radial primitive on the convex slice could manufacture a curvature-matching connection, but that would be an additional choice, not a determinant functor.

**Subsequent constructive closure:** the [relative Fredholm report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>) now supplies an actual compatible smooth complex atlas, holomorphic tangent quotient by modes j≤1, global smoothing graph, trace-class Levi-Civita/Chern connection in admissible Hilbert frames, and critical H^{3/2} determinant metric. The induced relative determinant and actual projective PSL lift identify with L₋₂₆; its dual half is L₁₃. Unbounded homogeneous generators remain non-norm-smooth, and the unweighted projection connection is not being reidentified with the intrinsic one. This closes the specified geometric determinant prescription, not a universal claim about all regularizations.

Quantum equivalence still requires a continuum Hilbert pairing, operator domains and vacuum normalization, and the gravitational proper-ghost/Jacobian and source-dependent measure/counterterm correspondence. The representation theorem and stress diagnostic in the [quantum benchmark](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md>) specify what a genuine intertwiner must preserve. Matching a geometric determinant or the uninserted character is insufficient.

## 9. Verification and provenance

**Parent checks.** The [homogeneous-connection source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_homogeneous_connection.py>) and its [complete result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_homogeneous_connection.results.json>) contain 20 successful exact groups: generic rational identities, 4,350 finite signed equivariance cases, 961 torsion cases, 872 metric cases, 575 finite cutoff comparisons, curvature tails, and the orthogonal-connection counterexample. The [actual Sage return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_homogeneous_connection.actual-tool-return.json>) records Sage 10.9, 3,698 ms, no errors/warnings/stderr or truncation. Its exports were copied without rerunning or overwriting.

The supplementary [trace-norm/CPS bridge source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_trace_norm_bridge.py>) has [five exact zero residuals](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_trace_norm_bridge.results.json>): the $D_m$ correction, the mixed high-column formula, direct Fourier evaluation of the CPS form, the trace normalization, and the dual-half/prequantum sign. The [actual Sage return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_trace_norm_bridge.actual-tool-return.json>) records 3,941 ms, with no error/warning/stderr or truncation. These are algebraic checks, not a computational substitute for the uniform analytic inequalities in §5.

**Fresh investigations.** Three reviewers began from the mathematical data, without reading parent candidates or prior project reports. Their full derivations and actual outputs have been read for this integration:

- The [Grassmannian review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/report.md>) proves analytic smoothing and smooth quotient descent, and computes the complete finite-rank curvature and counterexample. Its [15-group output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/diagnostics.txt>) includes 2,057 generator identities and 289 curvature pairs. The initial 120-second dense-matrix timeout is retained; cached sparse exact checks completed in 3,504 ms. Three version-API deprecation warnings remain in the actual return.
- The [homogeneous review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/derivation.md>) independently derives the connection, ordinary trace, all-boundary quotient/adjoint proof, and a uniform trace-norm bound. Its three successful exact kernels include symbolic tail identities, 13,328 metric comparisons, other finite tests, and rational cutoff values. The initial `factor(0)` diagnostic is retained. Subsequent group-sign/domain clarifications and the parent's shorter $D_m$ tail proof are collaborative supplements, not additional independent discoveries.
- The [global-extension review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/report.md>) supplies the exact Möbius proof, global phases, root classification, and fixed-acting-group obstruction. Its Wolfram checks combine exact identities with three 45-digit numerical group tests at irrational $c=\sqrt2$, tolerance $10^{-25}$. A separate exact sign check fixes the central-weight convention. The [actual return records](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/tool-provenance.t0_b8ao0/README.md>) distinguish script-reported empty message lists from wrapper diagnostics that were not exposed.

Two later supplied-text audits are separate from those independent derivations. The [homogeneous/CPS audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/supplied_text_audit_20261031.md>) accepts the new uniform $D_m$ proof and directly rechecks the factor 26 and dualization signs. The [global-model audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/supplied-text-audit.md>) accepts §§6–8; its mean-normalization, Maurer–Cartan descent and Baer-sum-action clarifications are incorporated. Neither reran settled kernels or edited parent files.

**Verified here:** the claims explicitly labeled proved, with the stated group, metric, polarization, smooth-domain, trace and central-character conventions. **Assumptions:** the previously established classical vacuum-orbit form and $C=6k_{\rm CS}$ normalization; smooth degree-one diffeomorphisms and actual PSL quotient. **Subsequent work:** an actual complex atlas, an admissible-frame critical-Hilbert-fiber connection and the specified relative determinant identification are proved in the [Fredholm report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>), not inferred here from involutivity or trace alone. A gravitational measure pushforward and full quantum equivalence remain unproved. No new literature theorem or PDF was used as an unexamined input in the present curvature/global-model stage.
