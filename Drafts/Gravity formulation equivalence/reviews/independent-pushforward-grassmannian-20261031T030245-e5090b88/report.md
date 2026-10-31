# Independent investigation: pushforward, the restricted Grassmannian, and orthogonal determinant curvature

## Result

For the precise unweighted coefficient-$L^2$ structure in the question:

1. Every smooth orientation-preserving circle diffeomorphism gives a bounded invertible pushforward. Both off-diagonal blocks relative to $W=\overline{\operatorname{span}}\{e_j:j\geq-1\}$ are smoothing, hence trace class and Hilbert–Schmidt. This follows from an analytic, parameter-uniform nonstationary-phase estimate.
2. The operator-valued map is strongly continuous, but not operator-norm continuous anywhere, and is not strongly differentiable on all of $L^2$. Nevertheless the subspace map $g\mapsto U_gW$ is a smooth restricted-Grassmannian map; indeed its orthogonal projector differs smoothly from $P$ by a smoothing operator.
3. $U_hW=W$ for every $h\in H=\mathrm{PSL}(2,\mathbb R)$. Thus the subspace and orthogonal-projector maps descend to $G/H$. In contrast, $R_g=U_gPU_g^{-1}$ is generally not orthogonal and is not right-$H$-invariant.
4. For the tautological projection connection $\nabla=Qd$, with determinant convention $\Omega=\operatorname{Tr}F_\nabla$, the actual identity-coset curvature is
   
   \[
   \boxed{\quad
   \Omega_o(e_m,e_n)
   =-\frac{m(|m|-1)(14|m|-13)}6\,\delta_{m+n,0}.
   \quad} \tag{1}
   \]
   
   This includes zero for $m=0,\pm1$. In particular, $\Omega_o(e_2,e_{-2})=-5$ and $\Omega_o(e_3,e_{-3})=-29$. The dual determinant reverses every sign.
5. This curvature is **not invariant under the left action of $H$**, hence not under $G$; consequently this connection is not invariant either. The infinitesimal isotropy test with $a=e_1,X=e_2,Y=e_{-3}$ has nonzero residual $9$. This does not contradict descent: the pullback to $G$ is automatically **right-$H$-basic**, a different statement.

The conclusions are analytic statements for $\mathrm{Diff}^\infty_+(S^1)$, not extrapolations from truncation. Exact matrix checks below verify the finite-rank curvature calculations, not the analytic smoothing theorem. No gravitational canonical or half-form identification is made.

## 1. Conventions, norms, and the infinitesimal sign

Take $x\in\mathbb R/2\pi\mathbb Z$ and

\[
\langle u,v\rangle=\frac1{2\pi}\int_0^{2\pi}\overline{u(x)}v(x)\,dx,
\qquad e_j=i e^{ijx}\partial_x.
\]

The inner product is antilinear in its first argument; the $e_j$ are orthonormal. The bracket and real conjugation are

\[
[e_m,e_n]=(m-n)e_{m+n},\qquad \overline{e_j}=-e_{-j}.
\]

Thus $e_p-e_{-p}$ and $i(e_p+e_{-p})$ are real vector fields; $e_0$ itself is not real. Let $P_-=1-P$, where $P$ projects onto indices $j\geq-1$. All adjoints below use this unweighted $L^2$ metric.

For a lift $g(x+2\pi)=g(x)+2\pi$, put $p(x)=g'(x)>0$. Then

\[
(U_gv)(y)=p(x)v(x),\quad x=g^{-1}(y),\qquad
U_gU_f=U_{g\circ f}.
\]

A change of variable gives the exact identities

\[
\|U_gv\|^2=\frac1{2\pi}\int p(x)^3|v(x)|^2\,dx,
\quad
\|U_g\|=(\max p)^{3/2},
\quad
\|U_g^{-1}\|=(\min p)^{-3/2}. \tag{2}
\]

In particular, $U_g^{-1}=U_{g^{-1}}$. Also

\[
(U_g^*u)(x)=p(x)^2u(g(x)),\qquad U_g^*U_g=M_{p^3}. \tag{3}
\]

Only rotations have $U_g$ unitary.

If $g_t$ is the flow of the real vector field $\xi(x)\partial_x$, differentiation on smooth vectors gives

\[
A_\xi v:=\left.\frac d{dt}\right|_0 U_{g_t}v
=\xi'v-\xi v'=-[\xi,v]. \tag{4}
\]

After complexification,

\[
A_m e_j=(j-m)e_{j+m},\qquad
[A_m,A_n]=-A_{[e_m,e_n]}. \tag{5}
\]

Consequently the flow-vector-field identification of the composition group's Lie algebra uses the **negative** of the displayed Witt bracket if the derived representation is to be called a Lie algebra homomorphism. All bracket computations in this report explicitly use the displayed Witt bracket; a common overall minus does not change an invariance test whose required value is zero.

The generators are unbounded on $L^2$. Their adjoints must not be guessed from the Witt conjugation:

\[
A_m^*e_k=(k-2m)e_{k-m}. \tag{6}
\]

For a real $\xi$, integration by parts gives $A_\xi+A_\xi^*=3M_{\xi'}$. This is another direct indication that the representation is not unitary.

## 2. Analytic off-diagonal Fourier estimate

The exact Fourier matrix is

\[
(U_g)_{kj}
=\frac1{2\pi}\int_0^{2\pi}g'(x)^2
       \exp\bigl(i[jx-kg(x)]\bigr)\,dx. \tag{7}
\]

Consider either off-diagonal region

\[
(j\geq-1,\ k\leq-2)\quad\text{or}\quad(j\leq-2,\ k\geq-1).
\]

Let $\lambda=1+|j|+|k|$ and $\phi=jx-kg(x)$. Away from finitely many low indices, depending only on a positive lower bound for $g'$ and an upper bound for $g'$,

\[
|\phi'(x)|=|j-kg'(x)|\geq c\lambda. \tag{8}
\]

For example, $j\geq0,k<0$ gives $\phi'=j+|k|g'$ immediately. For the exceptional shifted-cutoff column $j=-1$, the same bound holds once $|k|\geq2/\min g'$. In the opposite block, the row $k=-1$ is handled once $|j|\geq2\max g'$. The remaining indices form a finite set and are absorbed into constants.

Write $\phi=\lambda\psi$. On the indicated region, $|\psi'|\geq c$ and every fixed number of derivatives of $\psi$ are uniformly bounded on sets of diffeomorphisms with corresponding derivative bounds. Integrate by parts with

\[
L=\frac1{i\lambda\psi'}\partial_x,
\qquad Le^{i\lambda\psi}=e^{i\lambda\psi}.
\]

There are no endpoint terms: the amplitude and exponential are periodic. Each application of the transpose of $L$ contributes one inverse power of $\lambda$. Hence for every $N\geq0$,

\[
\boxed{|(U_g)_{kj}|\leq C_N(g)(1+|j|+|k|)^{-N}}
\quad\text{on both off-diagonal blocks}. \tag{9}
\]

This is a two-index rapid-decay estimate, not merely a one-index estimate.

### Parameter derivatives

Use a local lift chart $g\mapsto g+f$. Taking $r$ derivatives in smooth directions $f_1,\ldots,f_r$ differentiates the amplitude and introduces at most $r$ factors of $k$ from the phase. Integrating by parts $N+r$ times then gives

\[
|D_g^r(U_g)_{kj}[f_1,\ldots,f_r]|
\leq C_{N,r}\lambda^{-N}
\prod_{a=1}^r\|f_a\|_{C^{N+r+2}}, \tag{10}
\]

locally uniformly when $g'$ is bounded away from zero and the required $C^{N+r+2}$ seminorms of $g$ are bounded. The displayed derivative count is a sufficient bound, not an optimal one. Low-index exceptions again contribute only finitely many smooth functions.

It follows that

\[
P_-U_gP,\quad PU_gP_-,\quad [U_g,P]
\]

have smooth kernels and depend smoothly, in the Bastiani/Fréchet sense, on $g$ in the Fréchet space of smoothing kernels. They map every Sobolev space continuously to every other Sobolev space. Their matrix entries are absolutely summable for sufficiently large $N$, so they are trace class, in particular Hilbert–Schmidt. Thus $U_g\in\mathrm{GL}_{\mathrm{res}}(P)$ as a set-theoretic statement.

## 3. Operator topology versus subspace smoothness

### 3.1 Strong continuity, and failure of norm continuity or strong differentiability

If $g_n\to g$ in $C^\infty$ (in fact $C^1$ suffices here), smooth test vectors satisfy $U_{g_n}v\to U_gv$ in $L^2$. Equation (2) gives a uniform operator bound. Density then proves strong continuity on all of $L^2$.

For rotations $r_t(x)=x+t$,

\[
U_{r_t}e_j=e^{-ijt}e_j.
\]

At $t=\pi/n$ the mode $j=n$ gives

\[
\|U_{r_{\pi/n}}-I\|=2. \tag{11}
\]

Thus the representation is not norm continuous at the identity. Multiplication by any fixed invertible $U_g$ proves failure at every point. In particular it is not continuous into the usual restricted-group topology, which contains the operator-norm topology.

Strong differentiability on every vector also fails. For

\[
v=\sum_{j\geq1}\frac1j e_j\in L^2,
\]

the rotation difference quotients would have Fourier coefficients tending to $-i$ for every $j\geq1$, which is not an $\ell^2$ sequence. The action on smooth vectors, or on Sobolev scales with the appropriate derivative loss, is smooth; that is not strong differentiability as a map into bounded operators on a fixed $L^2$ space.

### 3.2 A smooth nonorthogonal idempotent

Define

\[
R_g=U_gPU_g^{-1},\qquad
R_g-P=[U_g,P]U_g^{-1}. \tag{12}
\]

The right side is smoothing and depends smoothly on $g$ in the smoothing topology, despite the failure of norm continuity for $U_g$ itself. One can see this without differentiating an unbounded generator: if $K_g(y,x)$ is the smooth kernel of $[U_g,P]$, the kernel of its product with $U_g^{-1}$ is

\[
\frac{K_g(y,g^{-1}(z))}{g'(g^{-1}(z))^2}. \tag{13}
\]

Smooth composition and inversion of smooth diffeomorphisms establish the assertion directly.

### 3.3 The orthogonal projector

The range of $R_g$ is $E_g=U_gW$. Its orthogonal projector is

\[
Q_g=U_gP\bigl(PU_g^*U_gP|_W\bigr)^{-1}PU_g^*
=U_gP\bigl(PM_{g'^3}P|_W\bigr)^{-1}PU_g^*. \tag{14}
\]

The compressed positive operator is bounded below by $(\min g')^3$. Equivalently, for any bounded idempotent $R$,

\[
Q=RR^*\bigl[I-(R-R^*)^2\bigr]^{-1}. \tag{15}
\]

To verify (15), split the Hilbert space orthogonally as $\operatorname{ran}R\oplus(\operatorname{ran}R)^\perp$ and write

\[
R=\begin{pmatrix}I&B\\0&0\end{pmatrix},\qquad
I-(R-R^*)^2=
\begin{pmatrix}I+BB^*&0\\0&I+B^*B\end{pmatrix}.
\]

The latter operator is positive and bounded below by $I$. Since $R_g-P$ is smoothing, (15) proves that $Q_g-P$ is smoothing and depends smoothly on $g$ in that topology. Inverting $I+K$ with smoothing $K$ preserves this conclusion: elliptic regularity here is the elementary identity $u=f-Ku$, first on positive Sobolev orders and then by duality, and inversion is smooth on each corresponding operator space.

In local Grassmannian graph charts, $Q\mapsto P_-QP(PQP|_W)^{-1}$ is smooth near $P$. Thus $g\mapsto E_g$ is smooth into the restricted Grassmannian, in fact into its smoothing sub-Grassmannian. The component is the index-zero component: interpolate a lift by $g_t=(1-t)x+tg(x)$, whose derivative stays positive, to obtain a path from the identity.

## 4. Möbius invariance of the subspace, but not of the splitting

Set $z=e^{ix}$. Then

\[
e_j=-z^{j+1}\partial_z.
\]

Therefore $W$ is the boundary Hardy space of holomorphic disk vector fields $f(z)\partial_z$ with $H^2$ coefficients. A disk automorphism $h$ acts by

\[
f(z)\partial_z\longmapsto
\bigl(h'(z)f(z)\bigr)\circ h^{-1}(w)\,\partial_w.
\]

This is again holomorphic in the disk, and its boundary coefficient is in $L^2$ by (2). Apply the same argument to $h^{-1}$ to obtain

\[
U_hW=W. \tag{16}
\]

Consequently

\[
E_{gh}=E_g,\qquad Q_{gh}=Q_g,
\]

and both maps descend to $G/H$.

This does **not** imply $U_hPU_h^{-1}=P$: preserving a subspace is not the same as preserving its orthogonal complement. For the real infinitesimal Möbius field $a=e_1-e_{-1}$,

\[
\left.\frac d{dt}\right|_0R_{\exp(ta)}
=[A_a,P]=3\,|e_{-1}\rangle\langle e_{-2}|\ne0,
\qquad
\left.\frac d{dt}\right|_0Q_{\exp(ta)}=0. \tag{17}
\]

Thus generic sufficiently small nonrotational $h\in H$ already give $R_h\ne P$. The family $R_g$ itself does not descend.

### Optional: the stabilizer is exactly $H$

This is not needed for curvature, but it also settles injectivity of the descended subspace map. Since $U_g$ commutes with real conjugation and

\[
W\cap\overline W=\operatorname{span}_{\mathbb C}\{e_{-1},e_0,e_1\}=\mathfrak h,
\]

stabilizing $W$ implies stabilizing $\mathfrak h$. In real coefficient notation this is the solution space of $v'''+v'=0$. Put $y=g(x),p=g'>0,u(y)=p(x)v(x)$. For such $v$, direct differentiation gives

\[
u_{yyy}+u_y
=\left(\frac{p'''}{p^3}-\frac{4p'p''}{p^4}
       +\frac{3p'^3}{p^5}+\frac{p'}p\right)v
 +\frac{2S(g)+p^2-1}{p^2}\,v', \tag{18}
\]

where $S(g)=p''/p-\tfrac32(p'/p)^2$. Applying this to $v=1,\sin x,\cos x$ forces

\[
S(g)+\tfrac12g'^2=\tfrac12.
\]

Equivalently, $S(\tan(g/2))=S(\tan(x/2))$. Equality of Schwarzians implies a local fractional-linear relation; these relations agree on overlapping projective charts, and orientation preservation gives a global element of $\mathrm{PSL}(2,\mathbb R)$. Thus the stabilizer is $H$ and $G/H\to\mathrm{Gr}_{\mathrm{res}}$ is injective. No stronger global embedding claim is needed here.

## 5. Actual trace curvature of the orthogonal projection connection

### 5.1 Which determinant and connection are being computed

Let $\mathcal E$ be the tautological Hilbert bundle over the restricted Grassmannian, restricted to this orbit. Use

\[
\nabla^{\mathcal E}s=Q\,ds,
\qquad
F^{\mathcal E}=Q\,dQ\wedge dQ\,Q,
\qquad
\Omega=\operatorname{Tr}F^{\mathcal E}. \tag{19}
\]

Products of the off-diagonal tangent operators are trace class, so this trace is well-defined. The determinant convention is the relative tautological determinant, formally $\det E\otimes(\det W)^*$, with curvature $\Omega$. The dual determinant has curvature $-\Omega$. No $2\pi i$ factor or half-form factor is included.

For a local graph $E=\{w+Tw:w\in W\}$, with $T:W\to W^\perp$ Hilbert–Schmidt, the graph-frame connection has trace

\[
\alpha=\operatorname{Tr}\bigl[(I+T^*T)^{-1}T^*dT\bigr],
\]

and

\[
\Omega
=\operatorname{Tr}\bigl[(I+T^*T)^{-1}dT^*
                  \wedge(I+TT^*)^{-1}dT\bigr]. \tag{20}
\]

In particular, at $T=0$ the curvature is $\operatorname{Tr}(dT^*\wedge dT)$. This gives a local determinant interpretation without taking an ordinary determinant of an infinite-dimensional frame transformation.

### 5.2 Real differentiation and its correct complexification

Define the lower tangent block

\[
C_X=P_-A_XP.
\]

For a real direction $X$,

\[
dQ_o(X)=\begin{pmatrix}0&C_X^*\\C_X&0\end{pmatrix}.
\]

For a complex direction, the complex-linear extension is instead

\[
\boxed{dQ_o(X)=
\begin{pmatrix}0&C_{\overline X}^*\\C_X&0\end{pmatrix}.} \tag{21}
\]

The conjugation in the top-right block is essential: the adjoint itself is conjugate-linear. In the Witt basis,

\[
dQ_o(e_m)=
\begin{pmatrix}0&-C_{-m}^*\\C_m&0\end{pmatrix},
\quad C_m=P_-A_mP. \tag{22}
\]

Therefore

\[
\Omega_o(X,Y)
=\operatorname{Tr}\bigl(C_{\overline X}^*C_Y
                     -C_{\overline Y}^*C_X\bigr). \tag{23}
\]

### 5.3 Complete finite-rank calculation

For $m\geq-1$, $C_m=0$. For $m=-p,p\geq2$,

\[
C_{-p}e_j=
\begin{cases}
(j+p)e_{j-p},&-1\leq j\leq p-2,\\
0,&\text{otherwise in }W.
\end{cases} \tag{24}
\]

These are the complete operators, not truncated approximations. Two such shifts contribute a nonzero trace only when their shift magnitudes agree. Thus

\[
\Omega_o(e_p,e_{-p})
=-\operatorname{Tr}(C_{-p}^*C_{-p})
=-\sum_{j=-1}^{p-2}(j+p)^2. \tag{25}
\]

Writing $r=j+p$,

\[
S_p:=\sum_{r=p-1}^{2p-2}r^2
=\frac{p(p-1)(14p-13)}6
=\frac73p^3-\frac92p^2+\frac{13}6p. \tag{26}
\]

Equations (25), (26), antisymmetry, and vanishing for nonopposite modes prove (1) for all integer modes. For arbitrary smooth complex vector fields $X=\sum x_me_m,Y=\sum y_me_m$ the rapidly convergent extension is

\[
\Omega_o(X,Y)
=\sum_{p\geq2}S_p\bigl(x_{-p}y_p-x_py_{-p}\bigr). \tag{27}
\]

The reality condition $x_{-p}=-\overline{x_p}$ ensures that this is imaginary on pairs of real tangent vectors, as required for the curvature of a Hermitian line connection. For example,

\[
\Omega_o(e_2-e_{-2},\ i(e_2+e_{-2}))=-10i. \tag{28}
\]

### 5.4 A useful diagnostic: the nonorthogonal calculation is different

This subsection is not a replacement for (19). If one instead differentiates $R_g=U_gPU_g^{-1}$, then

\[
dR_o(e_m)=\begin{pmatrix}0&-B_m\\C_m&0\end{pmatrix},
\qquad B_m=PA_mP_-.
\]

Its formal trace expression at the identity gives

\[
\operatorname{Tr}\bigl(P[dR_o(e_p),dR_o(e_{-p})]P\bigr)
=-\sum_{j=-1}^{p-2}(j-2p)(j+p)
=\frac{13}{6}(p^3-p). \tag{29}
\]

This polynomial was derived here solely to locate the distinction between the two constructions. It is not an assumed target coefficient and is not the answer to the orthogonal-projection question: already at $p=2$ it is $13$ instead of $-5$. The top block $-B_p$ of $dR$ is not the top block $-C_{-p}^*$ of $dQ$. The nonorthogonal idempotent family also does not itself descend to the quotient. No claim about other determinant connections or their possible descent is inferred just from (29).

## 6. Invariance test and explicit counterexamples

Let $o=H\in G/H$. If the curvature were invariant under the left action of $H$, then its value at this fixed point would satisfy

\[
\Omega_o([a,X],Y)+\Omega_o(X,[a,Y])=0
\quad(a\in\mathfrak h_{\mathbb C}). \tag{30}
\]

The composition-group sign reverses both brackets together and does not affect the vanishing requirement. Choose

\[
a=e_1,\quad X=e_p,\quad Y=e_{-(p+1)},\quad p\geq2.
\]

Using the displayed Witt bracket, the left side becomes

\[
(p-1)S_{p+1}-(p+2)S_p
=\frac92p(p-1)\ne0. \tag{31}
\]

At $p=2$ this is $29-4\cdot5=9$. For an entirely real test, set

\[
a=e_1-e_{-1},\quad X=e_2-e_{-2},\quad
Y=i(e_3+e_{-3}).
\]

The same residual is $18i\ne0$. Hence the failure is not an artifact of complexifying the test.

Consequences:

- The curvature is not left-$H$-invariant, and therefore not left-$G$-invariant.
- An invariant connection would have invariant curvature. Thus the projection determinant connection cannot be preserved by the left $H$ or $G$ action, regardless of a proposed lift to the line bundle.
- The connection is rotation-invariant, since rotations act by constant ambient unitaries. The opposite-mode selection rule in (1) is consistent with this surviving symmetry.
- Since $Q_{gh}=Q_g$, the pullback of this connection and curvature to $G$ is right-$H$-basic. This parameter-space descent is not the homogeneous invariance ruled out by (31).
- Curvature is closed, as usual. Its value at one point need not be a Lie algebra cocycle when the curvature is not left-invariant. Freezing (1) into a purported invariant two-form is therefore not justified.

## 7. Verification, reproducibility, and scope

**Analytically proved:** exact operator norms and adjoints; the infinitesimal sign; parameter-uniform rapid off-diagonal Fourier decay; smoothing and smoothness of $R_g-P$ and $Q_g-P$; strong continuity and failure of norm continuity; Möbius preservation and quotient descent; the orthogonal curvature formula for every mode; failure of left-$H$ invariance. The optional stabilizer argument uses the standard elementary uniqueness property of the Schwarzian equation, with its transformation identity explicitly calculated.

**Exact checks performed:** SageMath 10.9 over $\mathbb Q$ and $\mathbb Q(i)$, 15 labeled checks, all passed. They include 2,057 Witt-generator composition identities, all 289 curvature mode pairs $-8\leq m,n\leq8$ using complete finite-rank blocks in a 21-dimensional containing space, the symbolic sum polynomial, nonorthogonal comparison polynomial, Hermiticity of real tangent derivatives, the complex and real invariance failures, and the exact third-derivative identity used in the stabilizer argument. These are exact checks of the indicated identities, not a numerical proof of the Fourier estimate.

**Actual diagnostics retained:** an initial uncached dense-matrix script timed out after 120 seconds. No mathematical inference is made from that run. Its source and the actual returned timeout error are preserved. Caching the matrices and using rational sparse entries completed the same mathematical checks in 3.504 seconds. The successful raw tool response retains three harmless Sage version-API deprecation warnings; no warning is silently erased.

Artifacts in this private review directory:

- [Reproducible exact checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/checks.py>).
- [Readable actual check diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/diagnostics.txt>) and [structured diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/diagnostics.json>).
- [Successful raw tool response, including warnings](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/successful_tool_response.json>).
- [Preserved timed-out source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/checks_v1_timed_out.py>) and [actual timeout diagnostic](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/tool_diagnostic_v1.json>).
- [Successful source SHA-256](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/source.sha256>).

Run, without modifying notes:

```sh
sage --nodotsage "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-pushforward-grassmannian-20261031T030245-e5090b88/checks.py"
```

Each execution creates a fresh private kernel-export directory and preserves its own diagnostics. No original project note, parent candidate, or prior project report/review was read. Only the root applicable [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>), the requested computation skill, and this investigation's own artifacts were read. No original or parent file was edited.

**Not claimed:** extension to finitely differentiable or quasisymmetric diffeomorphisms; a global equivariant lift or central-extension construction for another determinant connection; identification with any gravitational canonical bundle, canonical half-form, or physical central charge. A different ambient Hermitian metric, polarization, connection, or determinant dual can change the answer and must be specified independently. No second research agent was available at this delegation depth; the present report itself is a fresh independent investigation, with analytic arguments and exact CAS cross-checks rather than a claimed additional independent review.
