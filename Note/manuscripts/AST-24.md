# Twistors and Matter-Field Bundles: An Explicit Ward Construction

**AST-24 — DRAFT study chapter; bounded review recorded**

A holomorphic bundle can encode a restricted gauge field, but neither a twistor coordinate count nor a line-bundle degree specifies a matter theory. This chapter constructs one rank-two bundle, proves its triviality on the required twistor lines, factors an actual transition matrix, and reconstructs a nonlinear gauge connection. On an explicitly chosen positive Euclidean real slice, the connection is anti-self-dual, has second Chern number one and action $8\pi^2/g_{\rm YM}^2$. Its gauge patches and a smooth doublet section are written down. The construction separates those results from the additional representations, actions and reality conditions needed for physical matter.

## 1. What the Bundle Correspondence Asks for

Use $c=\hbar=1$, physical length coordinates, Lorentzian signature $(-,+,+,+)$ and orientation $\varepsilon_{0123}=+1$ until the explicitly auxiliary Euclidean choice. Keep the [AST-08](<AST-08.md>) convention $D=d+A$ for a unitary gauge connection. Its matrices are anti-Hermitian, and

$$\begin{align}
F=dA+A\wedge A,\qquad A_j=g_{ij}^{-1}A_i g_{ij}+g_{ij}^{-1}dg_{ij}. \tag{1.1}
\end{align}$$

A local matter section in a chosen representation has coefficient columns $\Phi_j=g_{ij}^{-1}\Phi_i$; then $D_j\Phi_j=g_{ij}^{-1}D_i\Phi_i$. The group, representation and connection are distinct choices. An action is another choice.

The [AST-14](<AST-14.md#L28-L107>) incidence dictionary is the dual one:

$$
Z=\begin{pmatrix}\omega^{A'}\\\pi_A\end{pmatrix},\qquad
\omega=iY\pi,\qquad Y=X^T/L_0,
\qquad X=tI+x^i\sigma_i,\quad L_0>0.
\tag{1.2}
$$

The reference length makes Y dimensionless. We do not exchange the primed and unprimed slots with those of the opposite twistor convention. Complexified spacetime is an open matrix chart, and a point Y corresponds to a projective line $L_Y\simeq\mathbb{CP}^1$ in twistor space.

The local analytic Penrose–Ward theorem uses a holomorphic rank-r bundle $\mathcal E$ whose restriction to every line in the chosen spacetime domain is

$$\begin{align}
\mathcal E|_{L_Y}\simeq\mathcal O^{\oplus r}. \tag{1.3}
\end{align}$$

This means holomorphic triviality, not merely zero first Chern class. The theorem also needs a suitable correspondence domain and holomorphic splitting along the lines; appropriate reality data are needed to select a real gauge group. These are hypotheses, not consequences of the dimension of the twistor space. We will verify them constructively for a particular bundle and domain.

### The Actual Chirality Condition

The incidence fibres hold an unprimed spinor direction fixed. On flat complexified spacetime, their gauge-covariant derivatives have the form $\pi^A D_{AA'}$. Using the [AST-13 two-form dictionary](<AST-13.md#L284-L327>), write

$$\begin{align}
F_{AA'BB'}=\varphi_{AB}\epsilon_{A'B'}+ \widetilde\varphi_{A'B'}\epsilon_{AB}. \tag{1.4}
\end{align}$$

The two base directions commute, so their gauge commutator is

$$\begin{align}
[\pi^A D_{AA'},\pi^B D_{BB'}] =\epsilon_{A'B'}\pi^A\pi^B\varphi_{AB}. \tag{1.5}
\end{align}$$

Vanishing for every projective spinor therefore requires $\varphi_{AB}=0$. In our Lorentzian orientation and signature, this is the sector $*_L F=-iF$, because unprimed phi has eigenvalue $+i$ and primed phi-tilde has eigenvalue $-i$.

A compact-real gauge curvature on a real Lorentzian spacetime cannot lie solely in this complex sector unless it is zero. In an anti-Hermitian Lie-algebra basis its coefficients and the Lorentzian Hodge matrix are real; complex conjugation turns $*_L F=-iF$ into $*_L F=+iF$. Subtraction gives $F=0$. Nonzero examples consequently require complex gauge fields or another real slice. Below we choose an auxiliary positive Euclidean slice, not a Lorentzian four-sphere.

On curved backgrounds the distribution itself must exist and be integrable. The complex-analytic, torsion-free conformal-spin and unprimed Weyl-block conditions in [AST-14](<AST-14.md#L337-L345>) remain necessary inputs. An arbitrary independent metric-affine connection is not automatically such a background.

## 2. A Holomorphic Rank-Two Bundle with Actual Charts

Use the numerical skew matrices

$$
J_2=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
J_4=\operatorname{diag}(J_2,J_2).
\tag{2.1}
$$

They do not introduce a new spinor raising convention. Here J4 is chosen skew bundle data, not the neutral Lorentzian Hermitian form or the rank-two flat infinity twistor. First make the constant spin-frame change $\widehat\omega=J_2\omega$, $\widehat\pi=J_2\pi$ and put

$$\begin{align}
q=J_2(iY)J_2^{-1}. \tag{2.2}
\end{align}$$

For a fixed dimensionless parameter $\rho>0$, use homogeneous coordinates $z=(z_1,z_2,z_3,z_4)^T=(\widehat\omega,\rho\widehat\pi)^T$ on a copy of $\mathbb{CP}^3$. This invertible block rescaling is part of the model. Pulled back to the original twistor coordinates, it defines a rho-dependent bundle, rather than silently changing incidence.

Consider the three-term complex

$$\begin{align}
\mathcal O(-1)\ \xrightarrow{\ \mathsf a\ }\ \mathcal O^{\oplus4}
\ \xrightarrow{\ \mathsf b\ }\ \mathcal O(1), \qquad \mathsf a(v)=zv,\quad \mathsf b(w)=z^TJ_4w. \tag{2.3}
\end{align}$$

Both maps have the required homogeneous degree. Skewness gives $\mathsf b\mathsf a=0$. At every projective point z is nonzero and J4 is invertible, so $\mathsf a$ is injective and $\mathsf b$ surjective. The middle cohomology

$$\begin{align}
\mathcal E_\rho=\ker\mathsf b/\operatorname{im}\mathsf a \tag{2.4}
\end{align}$$

is a locally free rank-two bundle. A complex with these end properties is called a monad; it is not an assertion that the middle term is exact. This example is a null-correlation bundle.

On $U_j=\{z_j\ne0\}$, subtract a multiple of z from a representative w to set its j-th entry to zero, then solve the remaining equation $z^TJ_4w=0$. This gives the following representative frame matrices:

$$
\begin{aligned}
F_1&=\begin{pmatrix}0&0\\z_4/z_1&-z_3/z_1\\1&0\\0&1\end{pmatrix},&
F_2&=\begin{pmatrix}-z_4/z_2&z_3/z_2\\0&0\\1&0\\0&1\end{pmatrix},\\
F_3&=\begin{pmatrix}1&0\\0&1\\0&0\\z_2/z_3&-z_1/z_3\end{pmatrix},&
F_4&=\begin{pmatrix}1&0\\0&1\\-z_2/z_4&z_1/z_4\\0&0\end{pmatrix}.
\end{aligned}
\tag{2.5}
$$

Each satisfies $z^TJ_4F_j=0$ and $F_j^TJ_4F_j=J_2$. In particular, its two columns are independent after quotienting by the line spanned by z.

Let $R_1,R_2$ select rows3,4 and let $R_3,R_4$ select rows1,2. The actual transition matrix is

$$\begin{align}
G_{jk}=R_j\left(F_k-z\frac{(F_k)_{j,:}}{z_j}\right), \qquad [F_k]=[F_j]G_{jk}. \tag{2.6}
\end{align}$$

The bracket means a class modulo the image of $\mathsf a$, not equality of the four-component representatives. Uniqueness of the frame coefficients gives $G_{ij}G_{jk}=G_{ik}$. The skew pairings give determinant one. For example,

$$
G_{34}=I+\frac1{z_3z_4}
\begin{pmatrix}z_1z_2&-z_1^2\\z_2^2&-z_1z_2\end{pmatrix}.
\tag{2.7}
$$

These four charts cover the projective space. The displayed maps and transitions, not a rank label alone, construct the bundle.

### Its Characteristic Classes

Let $H=c_1(\mathcal O(1))$ with the standard complex orientation, so $\int_{\mathbb{CP}^2}H^2=1$. Apply the Whitney and Chern-character rules to the two short exact sequences through $K=\ker\mathsf b$. They give

$$\begin{align}
c(\mathcal E_\rho)=\frac1{(1-H)(1+H)}=1+H^2, \qquad \operatorname{ch}(\mathcal E_\rho)=4-e^{-H}-e^H=2-H^2. \tag{2.8}
\end{align}$$

Terms of degree above six are absent on $\mathbb{CP}^3$. Thus $c_1=0$, $c_2=H^2$ and $\operatorname{ch}_2=-H^2$. These computations use the standard cohomology ring and characteristic-class theorems; a finite coefficient calculation is not their proof. We will recover the corresponding charge from the actual connection, with the trace sign fixed independently.

## 3. Triviality on the Chosen Lines, and a Failure Locus

From this point pi denotes the rebased column $\widehat\pi$; no spin-space labels have been exchanged. After the declared block rescaling, a line has columns

$$
\Delta(q)=\begin{pmatrix}q\\\rho I\end{pmatrix},\qquad
z=\Delta(q)\pi,
\qquad q=\begin{pmatrix}a&b\\c&d\end{pmatrix},\qquad
s=\rho^2+\det q.
\tag{3.1}
$$

Here a,b,c,d are complex matrix coordinates, not vector indices. The key restriction is explicit:

$$\begin{align}
\Delta^TJ_4\Delta=sJ_2. \tag{3.2}
\end{align}$$

For s nonzero, the two-plane V spanned by Delta is symplectic and $\mathbb C^4=V\oplus V^{\perp_{J_4}}$. If $z\in V$, its annihilator inside V is precisely the line spanned by z. Consequently

$$\begin{align}
\ker(z^TJ_4)=\langle z\rangle\oplus V^{\perp_{J_4}},\qquad (\mathcal E_\rho)_z\simeq V^{\perp_{J_4}}. \tag{3.3}
\end{align}$$

The second summand is a fixed two-dimensional vector space while z varies along the line. This is an actual holomorphic trivialization of the restriction, proving $\mathcal E_\rho|_{L_q}\simeq\mathcal O^2$ on the domain s nonzero.

It is not true on every complex line. When s=0, V is Lagrangian. Then $V/\langle z\rangle\simeq\mathcal O(1)$ is a subbundle of the restriction. Its quotient has degree minus one. The standard projective-line cohomology fact $H^1(\mathcal O(2))=0$ splits the resulting extension, giving

$$\begin{align}
\mathcal E_\rho|_{L_q}\simeq\mathcal O(1)\oplus\mathcal O(-1) \qquad(s=0). \tag{3.4}
\end{align}$$

This is a jumping line, despite having zero first Chern class. A line bundle $\mathcal O(n)$ itself is nontrivial for n nonzero, so it cannot be used as a Ward bundle trivial on the lines. Likewise, the normal bundle $\mathcal O(1)\oplus\mathcal O(1)$ of an incidence line in AST-14 is not the gauge bundle required in (1.3). Normal deformation data, free-field cohomology weights and gauge-bundle triviality have different roles.

## 4. Factorization and Reconstruction, Not a Pure-Gauge Shortcut

Write

$$
q^\#=\operatorname{adj}q=\begin{pmatrix}d&-b\\-c&a\end{pmatrix},\qquad
E=\begin{pmatrix}\rho I\\-q^\#\end{pmatrix},\qquad
E^\sharp=\frac1s\begin{pmatrix}\rho I&-q\end{pmatrix}.
\tag{4.1}
$$

Then $\Delta^TJ_4E=0$, $E^\sharp E=I$ and $E^\sharp\Delta=0$. The columns of E are the constant-in-pi frame of the line restriction in (3.3).

There is a concrete splitting on the pi patches. Let $\zeta=\pi_1/\pi_0$ and $\xi=1/\zeta$. Expressing E in the quotient frames F3 and F4 gives

$$
B_0(\zeta)=\frac1\rho
\begin{pmatrix}
\rho^2+ad+bd\zeta&-b(a+b\zeta)\\
d(c+d\zeta)&\rho^2-bc-bd\zeta
\end{pmatrix},
\tag{4.2}
$$

$$
B_\infty(\xi)=\frac1\rho
\begin{pmatrix}
\rho^2-bc-ac\xi&a(b+a\xi)\\
-c(d+c\xi)&\rho^2+ad+ac\xi
\end{pmatrix}.
\tag{4.3}
$$

Their determinants are both s. Direct multiplication gives

$$\begin{align}
G_{34}|_{L_q}=B_0(\zeta)B_\infty(1/\zeta)^{-1}. \tag{4.4}
\end{align}$$

Thus the factors are holomorphic and invertible in their respective affine pi charts for s nonzero. This is the desired line splitting for this example, not an assumption that every holomorphic transition matrix can be split on every parameter domain.

For a determinant-one normalized frame, work locally with a holomorphic square root of s; for example, the explicit open domain $\operatorname{Re}s>0$ admits the branch positive on the Euclidean real slice below. Put $\widehat B_j=B_j/\sqrt s$ and $\psi_j=\widehat B_j^{-1}$. The transition remains $G_{34}=\psi_0^{-1}\psi_\infty$.

The directions that leave $q(1,\zeta)^T$ fixed are

$$\begin{align}
L_0=\partial_b-\zeta\partial_a,\qquad L_1=\partial_d-\zeta\partial_c. \tag{4.5}
\end{align}$$

For a transition constant along these directions, differentiation of $G=\psi_0^{-1}\psi_\infty$ shows that $-(L_\alpha\psi_j)\psi_j^{-1}$ is patch independent. In this example it is the corresponding linear-in-zeta component of

$$\begin{align}
\mathcal A=E^\sharp dE-\frac12\frac{ds}{s}I =\frac{q\,dq^\#}{s}-\frac12\frac{ds}{s}I. \tag{4.6}
\end{align}$$

The formula is rational on s nonzero; ds/s does not assert a global logarithm. The normalized-frame interpretation is made only on a domain with the specified square root. For instance,

$$\begin{align}
B_0^{-1}L_0B_0-\frac{L_0s}{2s}I =\mathcal A_b-\zeta\mathcal A_a, \tag{4.7}
\end{align}$$

and similarly for L1. The constant, linear and quadratic powers in the Lax commutator give

$$\begin{align}
F_{bd}=0,\qquad F_{bc}+F_{ad}=0,\qquad F_{ac}=0. \tag{4.8}
\end{align}$$

These are the selected Ward equations in these matrix coordinates. They do not say F=0: at $q=0$ the actual $F_{ad}$ is $\operatorname{diag}(1,-1)/\rho^2$.

Another way to see (4.6) is projection from the trivial four-component bundle. Along an incidence fibre z is fixed; the derivative of a representative in its fixed quotient is defined modulo z. Projecting with E-sharp supplies the connection because its kernel is V. A derivative with z fixed preserves its skew annihilator; the discarded V part therefore lies in $V\cap\ker(z^TJ_4)=\langle z\rangle$, exactly the quotient direction. The rectangular frame is not an invertible two-by-two gauge transformation. Hence this construction is not the false prescription of taking one global square matrix $U(x)$ and setting $A=U^{-1}dU$, which would have zero curvature.

The general Ward theorem and existence of factorizations outside this explicit domain remain analytic/global inputs [1,2]. The rational identities above instantiate one reconstruction; they do not establish the theorem for arbitrary bundles or metric-affine backgrounds.

## 5. A Positive Euclidean Real Slice and Its Nonlinear Field

Now make the real-slice choice explicit. In the complexified incidence data set

$$\begin{align}
t=-iL_0 y^4,\qquad x^i=L_0 y^i,\qquad y^\mu\in\mathbb R, \qquad q=y^4I-iy^i\sigma_i. \tag{5.1}
\end{align}$$

The last identity follows from $J_2(iX^T/L_0)J_2^{-1}$, not from importing the opposite incidence convention. It gives $q^\dagger=q^\#$ and $\det q=r^2=\sum_{\mu=1}^4(y^\mu)^2$. The physical flat metric is $L_0^2\sum_\mu(dy^\mu)^2$; its constant factor does not change the two-form Hodge operator. Component formulas use the positive unit metric, with orientation $dy^1\wedge dy^2\wedge dy^3\wedge dy^4$. Pulling back the physical Lorentzian volume gives $iL_0^4d^4y$, i times the physical Euclidean volume, and the two-form stars obey

$$\begin{align}
\iota^*(*_L F)=i*_E(\iota^*F). \tag{5.2}
\end{align}$$

Therefore the allowed Lorentzian complex sector $*_L F=-iF$ continues to $*_E F=-F$. We will use this latter real equation. It is not a nonzero compact-real Lorentzian solution in only one complex Hodge sector.

On twistor vectors use the auxiliary quaternionic involution $\tau(z)=J_4\bar z$. Its square is minus the identity before projectivization; it has no fixed projective points. The relation $qJ_2=J_2\bar q$ makes the real lines tau-stable. This is a different reality structure from the neutral Hermitian Lorentzian twistor form. The positive Hermitian metric used below is additional data.

Since $s=\rho^2+r^2>0$, the normalized rectangular frame

$$
v=\frac1{\sqrt s}\begin{pmatrix}\rho I\\-q^\dagger\end{pmatrix},
\qquad v^\dagger v=I,
\tag{5.3}
$$

gives a unitary connection on its rank-two range:

$$\begin{align}
A=v^\dagger dv= \frac{q\,dq^\dagger-\tfrac12d(r^2)I}{r^2+\rho^2}. \tag{5.4}
\end{align}$$

It is anti-Hermitian and traceless. In the defining gauge representation put $t_a=-i\sigma_a/2$, so $[t_a,t_b]=\varepsilon_{abc}t_c$ and $\operatorname{tr}(t_at_b)=-\delta_{ab}/2$. The two-column gauge frame is not the Lorentzian spinor space merely because both are written using Pauli matrices.

For a fully componentwise version, define

$$\begin{align}
\bar\eta^a{}_{ij}=\varepsilon_{aij},\qquad \bar\eta^a{}_{i4}=-\delta_{ai},\qquad \bar\eta^a{}_{4i}=\delta_{ai}. \tag{5.5}
\end{align}$$

Then $A=A^a{}_{\mu}t_a\,dy^\mu$ with $A^a{}_{\mu}=2\bar\eta^a{}_{\mu\nu}y^\nu/s$. Put $\mathcal B=q\,dq^\dagger-\tfrac12d(r^2)I$. From $dq^\dagger q+q^\dagger dq=d(r^2)I$ one obtains $\mathcal B\wedge\mathcal B-d(r^2)\wedge\mathcal B=-r^2dq\wedge dq^\dagger$, while $d\mathcal B=dq\wedge dq^\dagger$. Substitution into $d(\mathcal B/s)+(\mathcal B/s)^2$ therefore gives

$$\begin{align}
F=dA+A\wedge A =\frac{\rho^2}{s^2}\,dq\wedge dq^\dagger =-\frac{4\rho^2}{s^2}\,t_a\overline\Sigma_a, \tag{5.6}
\end{align}$$

where

$$\begin{align}
\overline\Sigma_a=\frac12\varepsilon_{aij}dy^i\wedge dy^j-dy^a\wedge dy^4, \qquad *_E\overline\Sigma_a=-\overline\Sigma_a. \tag{5.7}
\end{align}$$

Thus $F^a{}_{\mu\nu}=-4\rho^2\bar\eta^a{}_{\mu\nu}/s^2$ and the connection is genuinely anti-self-dual in the stated orientation. The nonlinear term is essential: at $y=(0,0,0,1)$ and $\rho=1$, the commutator $[A_1,A_2]=t_3$ is nonzero, and dropping it leaves a nonzero anti-self-duality defect.

The gauge Bianchi identity follows from $F=dA+A^2$. Together with anti-self-duality it gives

$$\begin{align}
D_AF=0,\qquad D_A*_E F=-D_AF=0. \tag{5.8}
\end{align}$$

This is the source-free Euclidean Yang–Mills equation, with the positive action specified in Section7. In physical length coordinates the instanton size is $\rho L_0$, $A_\mu$ has inverse-length dimension and $F_{\mu\nu}$ inverse-length-squared dimension. The parameter rho is a continuous size, not a predicted particle mass.

## 6. Compactification and Actual Gauge Patches

The quaternionic two-planes spanned by z and tau(z) form $\mathbb{HP}^1\simeq S^4$. The graph chart above is its auxiliary Euclidean four-space; the missing point has the upper coordinate two-plane. On that line J4 is also nondegenerate. Hence the bundle is holomorphically trivial on every real twistor fibre, including the fibre over infinity. This describes a positive Euclidean compactification, not a Lorentzian metric on $S^4$.

On $r>0$ let $u=q/r\in SU(2)$. Equation (5.4) becomes

$$\begin{align}
A_N=\frac{r^2}{r^2+\rho^2}\,u\,du^{-1}. \tag{6.1}
\end{align}$$

Use the gauge transition $g_{NS}=u$ in the convention (1.1). Then

$$\begin{align}
A_S=u^{-1}A_Nu+u^{-1}du =\frac{\rho^2}{r^2+\rho^2}\,u^{-1}du. \tag{6.2}
\end{align}$$

This is the actual patch law, not a declaration that AN and AS coincide as matrices. Near infinity put $\widetilde y^\mu=y^\mu/r^2$ and $\widetilde q=\widetilde y^4I-i\widetilde y^i\sigma_i$. The pulled-back southern potential is

$$\begin{align}
A_S=\frac{\rho^2}{1+\rho^2|\widetilde y|^2} \left(\widetilde q^\dagger d\widetilde q-\frac12d|\widetilde y|^2I\right). \tag{6.3}
\end{align}$$

It is smooth at the southern origin. Inversion reverses chart orientation: its Jacobian determinant is $-|\widetilde y|^{-8}$. Thus the southern coordinates must not silently redefine the global orientation used in the charge integral.

The chosen round positive metric $4L_0^2(1+r^2)^{-2}\sum_\mu(dy^\mu)^2$ extends across infinity. On two-forms in four dimensions the conformal factors in the Hodge operator cancel. The smooth connection therefore remains anti-self-dual on this round $S^4$.

There is also a direct identification of the two bundle descriptions. Over a real base point with quaternionic plane V, take the rank-two fibre $V^{\perp_{J_4}}$. Evaluation sends a vector in this fibre to its class in $\ker(z^TJ_4)/\langle z\rangle$ for each point z of the twistor line. Equation (3.3) proves that this is an isomorphism. Thus the monad bundle is the smooth pullback of the gauge bundle along the real twistor fibration, with the reconstructed partial connection. The relation is stronger than simply matching two integers.

## 7. Charge, Chern Character and Positive Action

Use the ordinary trace in the defining two-dimensional representation. In the [AST-08 convention](<AST-08.md#L489-L517>), expansion of $\det(1+iF/(2\pi))$ gives

$$\begin{align}
c_1=\frac{i}{2\pi}\operatorname{tr}F=0,\qquad c_2=\frac1{8\pi^2}\operatorname{tr}(F\wedge F),\qquad \operatorname{ch}_2=-\frac1{8\pi^2}\operatorname{tr}(F\wedge F)=-c_2. \tag{7.1}
\end{align}$$

The last equality is specific to a traceless connection. Throughout this chapter k means the second Chern number, not the second Chern-character integral. Their signs must not be exchanged by calling both an instanton number.

The two-form basis satisfies $\overline\Sigma_a\wedge\overline\Sigma_b=-2\delta_{ab}\,d^4y$. Combined with the defining trace, (5.6) gives

$$\begin{align}
\operatorname{tr}(F\wedge F)=\frac{48\rho^4}{(r^2+\rho^2)^4}\,d^4y, \qquad \operatorname{tr}(F\wedge *_E F)=-\frac{48\rho^4}{(r^2+\rho^2)^4}\,d^4y. \tag{7.2}
\end{align}$$

Since the unit three-sphere has volume $2\pi^2$,

$$\begin{align}
k=\int_{S^4}c_2 =12\rho^4\int_0^\infty\frac{r^3\,dr}{(r^2+\rho^2)^4}=1, \qquad\int_{S^4}\operatorname{ch}_2=-1. \tag{7.3}
\end{align}$$

This agrees with the monad's characteristic classes through the evaluation identification, in the declared orientations. The Chern–Weil theorem supplies the general integral-class statement; this explicit integral is not a proof of that theorem for every bundle.

Choose the positive Euclidean Yang–Mills functional

$$\begin{align}
S_E=-\frac1{g_{\rm YM}^2}\int\operatorname{tr}(F\wedge *_E F),\qquad g_{\rm YM}>0. \tag{7.4}
\end{align}$$

This is an explicitly Euclidean choice. The Lorentzian action in AST-08 instead has the Lorentzian star and its stated covariant sign. Here the actual value is

$$\begin{align}
S_E=\frac{8\pi^2}{g_{\rm YM}^2}. \tag{7.5}
\end{align}$$

For any compact-real curvature in this positive metric, completing the square gives

$$\begin{align}
S_E-\frac{8\pi^2k}{g_{\rm YM}^2} =-\frac1{2g_{\rm YM}^2}\int\operatorname{tr}\bigl((F+*_EF)\wedge *_E(F+*_EF)\bigr)\ge0. \tag{7.6}
\end{align}$$

The minus trace norm is positive, so this proves the bound in the positive-k sector, saturated by this anti-self-dual connection. The opposite square gives the bound in the other sector. The size cancels from the action, although the local curvature profile changes with rho.

### The Same Sign from the Clutching Map

Let $\theta=u^{-1}du$. At large r, $A_N\to u\,du^{-1}$. For $\mathrm{CS}(A)=\operatorname{tr}(A\wedge dA+\tfrac23A^3)$, the Maurer–Cartan equation gives

$$\begin{align}
\mathrm{CS}(A_N)\longrightarrow\frac13\operatorname{tr}(\theta^3).
\tag{7.7}
\end{align}$$

The sign can be checked at the group identity y4=1. With the outward boundary orientation from $dy^1dy^2dy^3dy^4$, the sphere volume there is $-dy^1dy^2dy^3$, whereas $\theta=-i\sigma_i dy^i$. The Pauli trace gives $\operatorname{tr}(\theta^3)=-12dy^1dy^2dy^3$. Invariance extends their ratio over the sphere, so

$$\begin{align}
\int_{S^3}\operatorname{tr}(\theta^3)=24\pi^2, \qquad \frac1{8\pi^2}\int_{S^3}\mathrm{CS}(A_N)=1. \tag{7.8}
\end{align}$$

This reproduces (7.3) using the actual transition u and its orientation. It is not a charge sign assigned from the name of a 't Hooft symbol.

## 8. A Matter Section, and the Data Still to Choose

A smooth doublet section of the associated rank-two bundle is already a nontrivial patching problem. For example, with $e_1=(1,0)^T$, take

$$\begin{align}
\Phi_N(y)=\frac{\rho}{\sqrt{r^2+\rho^2}}e_1, \qquad \Phi_S(\widetilde y)=\frac{\rho \widetilde q^\dagger e_1}{\sqrt{1+\rho^2|\widetilde y|^2}}. \tag{8.1}
\end{align}$$

On the overlap these obey $\Phi_S=u^{-1}\Phi_N$ after the coordinate inversion. The southern expression is smooth and vanishes at infinity; the northern norm is $\rho^2/(r^2+\rho^2)$. One can obtain the same section by projecting a fixed vector of the ambient four-dimensional bundle onto the range of v.

This is a smooth section, not a selected vacuum, a matter equation of motion or a nowhere-zero global frame. A physical scalar field would also require its amplitude units and an action, such as chosen covariant kinetic, mass and potential terms. Fermions require the appropriate spacetime spin bundle tensored with an internal representation bundle; the internal doublet does not become a Lorentz spinor merely because its fibre has dimension two.

On its specified open twistor and contour domain, the free-field construction in [AST-14](<AST-14.md#L246-L281>) uses cohomology with weights $\mathcal O(-2h-2)$ and $2h$ unprimed indices in this dual convention. The domain and contour hypotheses remain those of that construction; these are not asserted to be nonzero cohomology groups on all of compact $\mathbb{CP}^3$. Such weights are not Ward-trivial gauge bundles and are not Standard Model hypercharges. Twisting a gauge bundle by $\mathcal O(n)$ changes its restriction to $\mathcal O(n)^{\oplus2}$, which fails (1.3) for n nonzero.

The example has fixed a gauge group, a defining representation, a real slice, a bundle and a connection. It has not fixed additional matter representations, a Higgs potential, Yukawa tensors, masses, anomaly-cancellation data or a quantum prescription. A direct sum or tensor product of bundles likewise does not specify interacting dynamics. The general Ward correspondence concerns a restricted classical curvature sector under analytic and reality hypotheses; it is not a construction of all Yang–Mills fields or all metric-affine matter backgrounds.

## References and Theorem Inputs

[1] R. S. Ward and R. O. Wells, Twistor Geometry and Field Theory, Cambridge University Press,1990. Used for the conditional analytic bundle/field correspondence and projective-line cohomology, not as a replacement for the model's line trivialization and factorization above.

[2] L. J. Mason and N. M. J. Woodhouse, Integrability, Self-Duality, and Twistor Theory, Oxford University Press,1996. General Lax and Ward context; no complete global factorization/classification theorem is re-proved here.

[3] A. A. Belavin, A. M. Polyakov, A. S. Schwartz and Yu. S. Tyupkin, Pseudoparticle solutions of the Yang–Mills equations, Physics Letters B59(1975),85–87. The explicit unit-charge Euclidean example is presented with the inherited dual-incidence and characteristic-class signs rather than importing an orientation from its name.
