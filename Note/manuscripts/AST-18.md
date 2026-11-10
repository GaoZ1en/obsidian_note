# Noncommutative Geometry: Algebra, Differential Calculus and Finite Spectral Distance

**DRAFT — bounded review recorded.**

An algebra can describe observables without assigning all of them simultaneous numerical values at points. A representation makes those observables act on vectors; an operator then supplies a differential calculus and a notion of distance between states. These are separate choices. We will construct them explicitly, compute a two-point distance and its gauge transformation, and exhibit a genuinely noncommutative matrix example in which some distances are infinite.

The finite examples are auxiliary internal geometries, not physical four-dimensional spacetimes. The continuum distance and product constructions below are explicitly auxiliary **Riemannian** ones. Physical spacetime retains signature $(-,+,+,+)$ and the project's Clifford convention $\{\gamma^a,\gamma^b\}=-2\eta^{ab}$. No Lorentzian causal distance, arbitrary metric-affine reconstruction, or particle model follows from the finite calculations.

## 1. From Functions to an Algebra of Observables

A complex unital associative algebra $\mathcal A$ is a complex vector space with a bilinear associative multiplication and identity $1$. A star operation is an antilinear map satisfying $(ab)^*=b^*a^*$, $(a^*)^*=a$, and $1^*=1$. Selfadjoint elements satisfy $a^*=a$ and represent real observables. Commutativity means $ab=ba$ for every pair, not that every chosen representation is diagonal in one preassigned basis. A $C^*$-algebra is a complete complex normed star algebra with $\|ab\|\leq\|a\|\|b\|$ and $\|a^*a\|=\|a\|^2$; the completeness and norm are analytic structure in addition to the multiplication.

For a compact Hausdorff space $X$, continuous functions form the commutative star algebra $C(X)$, with pointwise product and $f^*(x)=\overline{f(x)}$. Its norm is $\|f\|_\infty=\sup_X|f|$. A character is a nonzero multiplicative complex-linear functional to $\mathbb C$. Evaluation $\delta_x(f)=f(x)$ is a character. The commutative Gelfand representation theorem identifies a unital commutative complex $C^*$-algebra with $C(X)$ for its compact character space $X$. This theorem is a structural input: it does not assign a classical point space to a noncommutative algebra.

Two examples will distinguish these possibilities. Functions on two points give

$$\begin{align}
\mathcal A_F=\mathbb C\oplus\mathbb C, \qquad (a_1,a_2)(b_1,b_2)=(a_1b_1,a_2b_2), \qquad (a_1,a_2)^*=(\overline{a_1},\overline{a_2}).
\end{align}$$

The algebra $M_2(\mathbb C)$ instead has matrix multiplication and conjugate transpose. With $E_{ij}$ denoting the matrix with its only nonzero entry equal to $1$ at $(i,j)$,

$$\begin{align}
E_{ij}E_{kl}=\delta_{jk}E_{il}, \qquad E_{12}E_{21}=E_{11}, \qquad E_{21}E_{12}=E_{22}.
\end{align}$$

These last two products differ. Moreover, $M_2(\mathbb C)$ has no character: a unital character would have an ideal as kernel, whereas the matrix algebra is simple and cannot inject into the commutative one-dimensional algebra $\mathbb C$. Its observables must therefore be described by something more general than point evaluations.

A state on a unital $C^*$-algebra is a complex-linear functional $\omega$ with $\omega(1)=1$ and $\omega(a^*a)\geq0$. Positivity implies boundedness. On the two-point algebra every state is

$$\begin{align}
\omega_s(a_1,a_2)=s a_1+(1-s)a_2, \qquad 0\leq s\leq1.
\end{align}$$

The endpoints are pure states, meaning extreme points of the convex state space. On $M_2(\mathbb C)$ every state has the form $\omega_\rho(a)=\operatorname{tr}(\rho a)$, where $\rho=\rho^*\geq0$ and $\operatorname{tr}\rho=1$. Rank-one density matrices give its pure states. This is already a useful difference: a noncommutative two-by-two algebra has continuously many pure states, not merely two classical points.

A representation $\pi:\mathcal A\to\mathcal B(\mathcal H)$ is a unital star-preserving algebra homomorphism into bounded operators on a positive-definite complex Hilbert space. Faithful means injective. We use the faithful diagonal representation of $\mathcal A_F$ on $\mathcal H_F=\mathbb C^2$,

$$
\pi(a)=\begin{pmatrix}a_1&0\\0&a_2\end{pmatrix}.
$$

The same Hilbert space also carries the faithful defining representation of $M_2(\mathbb C)$ by ordinary matrix multiplication, but these are different algebras of operators. Specifying $\dim\mathcal H_F=2$ does not choose between them.

## 2. A Differential Calculus Before a Spectral Triple

The algebraic replacement for the differential of a function starts without a metric. Let $\mu:\mathcal A\otimes\mathcal A\to\mathcal A$ be multiplication, $\mu(a\otimes b)=ab$. The space of universal one-forms is the bimodule

$$\begin{align}
\Omega^1_{\mathrm{univ}}(\mathcal A)=\ker\mu, \qquad \mathrm da=1\otimes a-a\otimes1.
\end{align}$$

Left multiplication acts on the first tensor factor and right multiplication on the second. Consequently,

$$\begin{align}
(\mathrm da)b+a\,\mathrm db =(1\otimes a-a\otimes1)b+a(1\otimes b-b\otimes1) =1\otimes ab-ab\otimes1=\mathrm d(ab).
\end{align}$$

Products of these one-forms generate higher universal forms. The extension defined by $\mathrm d^2=0$ and the graded Leibniz rule is a differential graded algebra. It is universal in the sense that any derivation of $\mathcal A$ into an $\mathcal A$-bimodule factors through $a\mapsto\mathrm da$.

For $\mathcal A_F$, let $p=(1,0)$ and $q=(0,1)=1-p$. The four tensors $p\otimes p,p\otimes q,q\otimes p,q\otimes q$ form a basis; multiplication kills the middle two and maps the other two to $p,q$. Thus the universal one-form space has dimension two, with

$$\begin{align}
\mathrm dp=q\otimes p-p\otimes q, \qquad p\,\mathrm dp=-p\otimes q, \qquad q\,\mathrm dp=q\otimes p.
\end{align}$$

To turn this calculus into operators, choose a selfadjoint matrix

$$
D_F=\begin{pmatrix}0&m\\\overline m&0\end{pmatrix},
\qquad m\in\mathbb C.
$$

Define a represented one-form by $\pi_D(a\,\mathrm db)=\pi(a)[D_F,\pi(b)]$. The commutator identity

$$\begin{align}
[D_F,\pi(ab)]=[D_F,\pi(a)]\pi(b)+\pi(a)[D_F,\pi(b)]
\end{align}$$

makes this a well-defined bimodule map. In the two-point example,

$$\begin{align}
\pi_D(p\,\mathrm dp)=-m E_{12}, \qquad \pi_D(q\,\mathrm dp)=\overline m E_{21}.
\end{align}$$

For $m\neq0$, the represented one-forms are therefore exactly all off-diagonal matrices. In particular every selfadjoint represented one-form is

$$
A=\begin{pmatrix}0&\phi\\\overline\phi&0\end{pmatrix},
\qquad \phi\in\mathbb C.
$$

The differential calculus has produced the available perturbations, rather than naming a scalar field before exhibiting its operator. If $m=0$, this represented one-form space vanishes; an arbitrary off-diagonal perturbation is then not an inner one-form for the original $D_F$.

For higher degrees the operator assignment is

$$\begin{align}
\pi_D(a_0\,\mathrm da_1\cdots\mathrm da_n) =\pi(a_0)[D,\pi(a_1)]\cdots[D,\pi(a_n)].
\end{align}$$

It need not preserve all information in universal forms. To obtain a differential calculus on represented forms one quotients by the differential ideal generated by the degreewise kernel of $\pi_D$, often called the junk ideal. In degree $n$ this amounts to quotienting $\pi_D(\Omega^n_{\mathrm{univ}})$ by $\pi_D(\mathrm d\ker(\pi_D|_{\Omega^{n-1}_{\mathrm{univ}}}))$. A formula using products of commutators alone does not automatically specify a curvature calculus or a Yang–Mills action. The calculations below require only the already constructed one-forms.

## 3. The Even Complex Two-Point Triple and Its Distance

A unital complex spectral triple consists of a represented star algebra $\mathcal A$, a positive Hilbert space $\mathcal H$, and a selfadjoint operator $D$ with compact resolvent, such that $\pi(a)$ preserves $\operatorname{Dom}D$ and $[D,\pi(a)]$ extends to a bounded operator for every $a\in\mathcal A$. Usually $\mathcal A$ is a dense smooth subalgebra of a specified $C^*$-algebra. Compact resolvent means $(D-i)^{-1}$ is compact; it is not the assertion that the commutators are compact. For an even triple one also specifies a selfadjoint grading $\gamma$ satisfying

$$\begin{align}
\gamma^2=1, \qquad [\gamma,\pi(a)]=0, \qquad \gamma D+D\gamma=0.
\end{align}$$

All operators in the two-point construction are finite matrices, with domain the entire Hilbert space. Selfadjointness and compact-resolvent requirements are consequently immediate, and

$$
\gamma_F=\begin{pmatrix}1&0\\0&-1\end{pmatrix}
$$

gives an even complex triple. This finite example has no four-dimensional Weyl asymptotics: its eigenvalue list has only two entries, $\pm|m|$.

The commutator norm defines the seminorm $L_D(a)=\|[D,\pi(a)]\|_{\mathrm{op}}$. Its spectral distance on states is the extended value

$$\begin{align}
d_D(\omega,\eta)=\sup\bigl\{|\omega(a)-\eta(a)|:
 a=a^*,\ L_D(a)\leq1\bigr\}.
\end{align}$$

Restricting to selfadjoint observables makes the optimization real. Constants cannot affect the difference of normalized states. Other elements of the kernel can matter: if $b=b^*$, $L_D(b)=0$ and $\omega(b)\neq\eta(b)$, every real multiple $t b$ remains admissible, so the distance is infinite. Bounded commutators do not by themselves exclude this possibility.

For $a=(a_1,a_2)$ selfadjoint, its entries are real and

$$
[D_F,\pi(a)]=\begin{pmatrix}
0&m(a_2-a_1)\\
\overline m(a_1-a_2)&0
\end{pmatrix},
\qquad
[D_F,\pi(a)]^*[D_F,\pi(a)]
=|m|^2|a_1-a_2|^2 I_2.
$$

The singular values are both $|m||a_1-a_2|$, so the distance constraint is $|a_1-a_2|\leq1/|m|$. Since $\omega_s(a)-\omega_t(a)=(s-t)(a_1-a_2)$, both the upper bound and an optimizing observable are explicit:

$$\begin{align}
d_{D_F}(\omega_s,\omega_t)=\frac{|s-t|}{|m|}, \qquad a=\left(\frac1{|m|},0\right) \quad (m\neq0).
\end{align}$$

In particular the two pure states have distance $1/|m|$. If $m=2$ in inverse-length units, their distance is $1/2$ in length units; the states with weights $3/4$ and $1/4$ are separated by $1/4$. The phase of $m$ changes neither value. For $m=0$, all commutators vanish and distinct states have infinite distance. The coincidence distance remains zero. The metric therefore depends on the operator as well as on the algebra and representation.

## 4. Inner Fluctuations, Gauge Covariance and the Real-Structure Test

Keep $m\neq0$ and the selfadjoint one-form $A$ from Section 2. The fluctuated operator is

$$
D_A=D_F+A=\begin{pmatrix}0&H\\\overline H&0\end{pmatrix},
\qquad H=m+\phi.
$$

The letter $H$ here denotes one complex scalar, not the Hilbert space $\mathcal H_F$. A unitary element of the algebra is represented by $u=\operatorname{diag}(e^{i\alpha},e^{i\beta})$. Requiring the operator to transform by unitary conjugation gives, with $D_F$ held as the reference operator,

$$\begin{align}
D_{A^u}=uD_Au^*, \qquad A^u=uAu^*+u[D_F,u^*].
\end{align}$$

Indeed $D_F+u[D_F,u^*]=uD_Fu^*$, since $uu^*=1$. The extra term is itself a represented one-form, so the transformation stays within the constructed class. Reading the upper-right matrix entry and writing $z=e^{i(\alpha-\beta)}$ yields

$$\begin{align}
H^u=zH, \qquad \phi^u=z\phi+(z-1)m.
\end{align}$$

Thus the total inner scalar transforms homogeneously, whereas the displacement from a fixed nonzero reference coupling transforms affinely. For $m=2$, $\phi=1+i$, and $z=i$,

$$\begin{align}
H=3+i, \qquad H^u=-1+3i, \qquad \phi^u=-3+3i, \qquad D_A^2=10 I_2.
\end{align}$$

The fluctuated pure-state distance is $1/\sqrt{10}$, unchanged by this transformation. More generally it is $1/|H|$ when $H\neq0$ and infinite when $H=0$. The diagonal subgroup $\alpha=\beta$ acts trivially on this finite operator. Because $\mathcal A_F$ is commutative, conjugation by $u$ is trivial on its algebra elements; its nontrivial action here is on the operator and the one-form, not a nontrivial inner automorphism of the function algebra.

Nothing in this calculation supplies a real structure. A real spectral triple additionally has an antiunitary $J$. Its opposite action is

$$\begin{align}
b^\circ=J\pi(b^*)J^{-1}.
\end{align}$$

Order zero requires $[\pi(a),b^\circ]=0$, and the first-order condition requires $[[D,\pi(a)],b^\circ]=0$ for all $a,b$. The signs in $J^2=\varepsilon$, $JD=\varepsilon'DJ$, and, in the even case, $J\gamma=\varepsilon''\gamma J$, must match a declared KO-dimension modulo eight. KO-dimension is such a sign class, not the dimension of the Hilbert space. Orientability is another condition: in a specified metric dimension a suitable Hochschild cycle must represent the grading (or the identity in odd dimension). Such a cycle is a finite sum of tensors $a_0\otimes\cdots\otimes a_n$ annihilated by the Hochschild boundary, whose representation uses $\pi(a_0)[D,\pi(a_1)]\cdots[D,\pi(a_n)]$; real versions allow opposite-algebra coefficients. Neither it nor a nondegenerate duality pairing is implied by the preceding sign relations.

The tempting choice $J=K$, componentwise complex conjugation on $\mathbb C^2$, gives $b^\circ=\pi(b)$ in this diagonal representation. Order zero holds. However,

$$
[[D_F,\pi(a)],\pi(b)]
=(a_1-a_2)(b_1-b_2)
\begin{pmatrix}0&m\\\overline m&0\end{pmatrix}.
$$

Taking $m=1$ and $a=b=p$ gives $\begin{pmatrix}0&1\\1&0\end{pmatrix}$, not zero. Even when $m$ is real so that $K$ commutes with $D_F$, this proposed $J$ fails first order. Our two-point model is an even **complex** triple, not a certified real first-order triple and not a finite Standard Model geometry. In a genuinely real construction the gauge implementer and fluctuation prescription involve the opposite action as well; the complex formula just derived must not be relabeled as that fuller construction.

## 5. A Matrix Geometry with Infinite Distances

Use now $\mathcal A=M_2(\mathbb C)$, its defining representation on $\mathbb C^2$, and

$$
D_k=k\sigma_3=\begin{pmatrix}k&0\\0&-k\end{pmatrix},
\qquad k>0.
$$

Here $\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix}$, $\sigma_2=\begin{pmatrix}0&-i\\i&0\end{pmatrix}$, and $\sigma_3=\operatorname{diag}(1,-1)$ are the Pauli matrices. This is an ungraded complex finite triple. For a selfadjoint observable,

$$
a=\begin{pmatrix}r&z\\\overline z&s\end{pmatrix},
\qquad [D_k,a]=\begin{pmatrix}0&2kz\\-2k\overline z&0\end{pmatrix},
\qquad L_{D_k}(a)=2k|z|.
$$

All diagonal matrices lie in the kernel, not only scalars. In particular, the vector states of $(1,0)$ and $(0,1)$ differ by $2t$ on $a=t\sigma_3$, while $L_{D_k}(a)=0$. Their distance is infinite.

We can compute every pair rather than stopping at this counterexample. Write density matrices and observables in Bloch coordinates,

$$\begin{align}
\rho_{\boldsymbol r}=\frac12(I+\boldsymbol r\cdot\boldsymbol\sigma), \qquad |\boldsymbol r|\leq1, \qquad a=\alpha I+\boldsymbol x\cdot\boldsymbol\sigma, \qquad \alpha,x_j\in\mathbb R.
\end{align}$$

The Pauli trace relation $\operatorname{tr}(\sigma_i\sigma_j)=2\delta_{ij}$ gives

$$\begin{align}
\omega_{\boldsymbol r}(a)-\omega_{\boldsymbol s}(a) =(\boldsymbol r-\boldsymbol s)\cdot\boldsymbol x, \qquad L_{D_k}(a)=2k\sqrt{x_1^2+x_2^2}.
\end{align}$$

If $r_3\neq s_3$, unbounded $x_3$ again gives infinite distance. If $r_3=s_3$, the $x_3$ contribution cancels and the remaining optimization is the support function of a disk of radius $1/(2k)$. Therefore

$$
d_{D_k}(\omega_{\boldsymbol r},\omega_{\boldsymbol s})=
\begin{cases}
\dfrac{\sqrt{(r_1-s_1)^2+(r_2-s_2)^2}}{2k},&r_3=s_3,\\
+\infty,&r_3\neq s_3.
\end{cases}
$$

For the pure states $\boldsymbol r=(1,0,0)$ and $\boldsymbol s=(-1,0,0)$ the distance is $1/k$; $a=\sigma_1/(2k)$ achieves it and has commutator norm one. The finite-distance components are horizontal disks in the Bloch ball, with a scaled Euclidean distance inside each disk. This is an extended metric, not a bounded metric on the entire state space.

The opposite representation can also be constructed rather than guessed. On the Hilbert space $\mathcal H_{\mathrm{HS}}=M_2(\mathbb C)$ with inner product $\langle X,Y\rangle=\operatorname{tr}(X^*Y)$, define $L_aX=aX$, $R_bX=Xb$, and $JX=X^*$. Then

$$\begin{align}
L_aR_b=R_bL_a, \qquad R_bR_c=R_{cb}, \qquad J L_{b^*}J^{-1}=R_b.
\end{align}$$

Right multiplication is a representation of the opposite algebra, whose multiplication order is reversed. For $h=h^*$ choose $\mathcal D X=[h,X]$. It is selfadjoint because

$$\begin{align}
\langle X,[h,Y]\rangle =\operatorname{tr}((X^*h-hX^*)Y) =\langle[h,X],Y\rangle.
\end{align}$$

Moreover $[\mathcal D,L_a]=L_{[h,a]}$, so $[[\mathcal D,L_a],R_b]=0$, and $J\mathcal D=-\mathcal D J$. For $h=\operatorname{diag}(1,-1)$, the ordered basis $(E_{11},E_{12},E_{21},E_{22})$ gives $\mathcal D=\operatorname{diag}(0,2,-2,0)$. These are explicit order-zero, first-order and antiunitary relations on a bimodule. They do not establish orientability or all the axioms of a selected real geometry; changing the representation has solved a particular representation problem, not classified particle physics.

## 6. Moyal Multiplication: Formal Deformation and the Opposite Action

A second route to noncommutativity changes multiplication instead of choosing a matrix algebra. On an auxiliary flat phase plane with coordinates $(q,p)$ use the canonical conventions

$$\begin{align}
\omega=\mathrm dq\wedge\mathrm dp=-\mathrm d\vartheta, \qquad \vartheta=p\,\mathrm dq, \qquad \iota_{X_f}\omega=\mathrm df, \qquad \{f,g\}=f_qg_p-f_pg_q.
\end{align}$$

Thus $\{q,p\}=1$, $X_f=f_p\partial_q-f_q\partial_p$, $X_f(g)=-\{f,g\}$, and $[X_f,X_g]=-X_{\{f,g\}}$. We use the Poisson bracket in the star product; it is not identified with $X_f(g)$ with the opposite sign silently suppressed.

Let $\theta$ be a real formal parameter. On $\mathbb C[q,p][[\theta]]$ the Moyal product is

$$\begin{align}
f\star g=\sum_{n=0}^{\infty}\frac{(i\theta/2)^n}{n!}
\sum_{j=0}^n(-1)^j\binom nj (\partial_q^{n-j}\partial_p^j f) (\partial_q^j\partial_p^{n-j}g).
\end{align}$$

For polynomial $f,g$ this terminates. For general formal power series it is interpreted coefficientwise, not as a convergent series on every smooth function. Analytic Moyal algebras require a specified function space, product and representation; none is obtained simply by writing this formal expression on an arbitrary curved manifold.

Associativity has a short structural proof. On three tensor factors let $P_{12},P_{13},P_{23}$ denote the corresponding constant-coefficient bidifferential Poisson operators. They commute because partial derivatives commute. Both parenthesizations reduce, after multiplication of the three factors, to

$$\begin{align}
\mu_3\exp\!\left(\frac{i\theta}{2}(P_{12}+P_{13}+P_{23})\right)
(f\otimes g\otimes h).
\end{align}$$

The Leibniz rule distributes derivatives of a product into the $13$ and $23$ operators, supplying the equality. Complex conjugation changes $i$ to $-i$ and exchange of factors changes the Poisson operator's sign, so $(f\star g)^*=g^*\star f^*$. Also $1\star f=f\star1=f$ and ordinary partial derivatives remain derivations.

Useful evaluated products are

$$\begin{align}
q\star p=qp+\frac{i\theta}{2}, \qquad [q,p]_\star=i\theta, \qquad q^2\star p^2=q^2p^2+2i\theta qp-\frac{\theta^2}{2},
\end{align}$$

$$\begin{align}
[q^3,p^3]_\star=9i\theta q^2p^2-\frac{3i}{2}\theta^3.
\end{align}$$

The last term shows why a first-order Poisson calculation is not the full star commutator. Truncation must also be handled consistently: if $\star_2$ means the product with only $n\leq2$ retained, direct polynomial multiplication for $f=q^3$, $g=p^3$, $h=q^2+p$ gives

$$\begin{align}
(f\star_2g)\star_2h-f\star_2(g\star_2h) =-\frac{9i}{4}p\theta^3.
\end{align}$$

It is associative modulo $\theta^3$, but not an exactly associative multiplication if higher powers generated by nested products are kept. The full polynomial Moyal product has zero associator for this example.

An integral trace needs boundary assumptions. For Schwartz functions on $\mathbb R^2$ and the translation-invariant measure $\mathrm dq\,\mathrm dp$, integration by parts makes each positive-order term of $\int f\star g$ vanish, coefficientwise. Indeed, moving all derivatives of $f$ onto $g$ makes the contracted antisymmetric Poisson tensor act on a symmetric pair of derivatives. Hence $\int f\star g=\int fg=\int g\star f$ in the formal sense; the corresponding analytic statement needs an analytic Moyal product on that function class. For the concrete Schwartz functions

$$\begin{align}
f=e^{-(q^2+p^2)}, \qquad g=(q^2+2p^2)e^{-(q^2+p^2)},
\end{align}$$

the ordinary integral is $3\pi/8$, and the integrated first- and second-order corrections are separately zero. Polynomials used in the earlier examples are not Schwartz functions and have divergent unrestricted integrals. With a nonconstant measure density or a boundary, the same trace assertion cannot be inherited without a new argument.

Finally distinguish left and right multiplication. Set $L_f\psi=f\star\psi$ and $R_b\psi=\psi\star b$. Associativity gives $[L_f,R_b]=0$. For a constant-coefficient differential operator $D_0=-i\Gamma^j\partial_j$, with constant matrices $\Gamma^j$ commuting with scalar multiplication, the derivation rule gives

$$\begin{align}
[D_0,L_f]=-i\Gamma^j L_{\partial_j f}, \qquad [[D_0,L_f],R_b]=0.
\end{align}$$

A double commutator with a second **left** action is a different expression. For $f=q^2$ and $b=p$, its scalar coefficient contains $[2q,p]_\star=2i\theta\neq0$. This does not refute the real first-order condition, whose second operand is an opposite action. The computation establishes the algebraic bimodule identity. Establishing an analytic nonunital spectral triple would additionally require a positive Hilbert completion, selfadjoint domain, bounded left representations/commutators on the chosen algebra, and local compactness such as $L_f(1+D_0^2)^{-1/2}$ compact. Coordinate polynomials are not automatically bounded algebra elements of that completion.

## 7. Why Continuum Spectral Distance Is Riemannian Here

For comparison, take a compact connected smooth Riemannian spin manifold $(M,h)$ without boundary. Let $S$ be its spinor bundle, $\mathcal H=L^2(M,S)$ with the positive spinor pairing, $\mathcal A=C^\infty(M)$ acting by multiplication, and $D_R$ the selfadjoint closure of its Riemannian spin Dirac operator. These are auxiliary Euclidean data. Clifford multiplication $c_R$ is skew-adjoint and obeys

$$\begin{align}
c_R(\xi)c_R(\eta)+c_R(\eta)c_R(\xi) =-2h^{-1}(\xi,\eta)I.
\end{align}$$

Elliptic selfadjointness and compact-resolvent results on closed manifolds are analytic inputs. The Leibniz property of the spin connection gives $[D_R,f]=c_R(\mathrm df)$. For real $f$, skew-adjointness and the Clifford relation imply

$$\begin{align}
c_R(\mathrm df)^*c_R(\mathrm df)=|\mathrm df|_h^2I, \qquad L_{D_R}(f)=\sup_M|\mathrm df|_h.
\end{align}$$

Thus $L_{D_R}(f)\leq1$ means a unit Lipschitz bound. Along any piecewise smooth path $c$ from $x$ to $y$,

$$\begin{align}
|f(y)-f(x)| \leq\int|\mathrm df|_h\,|\dot c|_h\,\mathrm dt
\leq\operatorname{Length}_h(c).
\end{align}$$

Taking the shortest-path infimum bounds the spectral distance above by the Riemannian distance. For the reverse inequality, the function $z\mapsto d_h(x,z)$ is one-Lipschitz; a standard smooth approximation theorem on compact Riemannian manifolds approximates it uniformly with gradient bounds at most $1+\epsilon$. Rescaling those smooth approximants and taking $\epsilon\to0$ gives

$$\begin{align}
d_{D_R}(\delta_x,\delta_y)=d_h(x,y).
\end{align}$$

The smooth approximation theorem is a genuine analytical input, not a consequence of checking a few Clifford matrices. A bounded selfadjoint multiplication endomorphism $B$ commuting with all scalar functions leaves $[D_R+B,f]=[D_R,f]$ unchanged and preserves selfadjointness on the same domain. Its lower-order spectral effects can change while this distance does not. This is a precise conditional invisibility statement, not a claim that every metric-affine Dirac proposal is selfadjoint or has the required domain.

Reconstruction is a stronger, different theorem. A version of Connes's theorem assumes a commutative unital spectral triple with singular-value decay $\mu_n((1+D^2)^{-1/2})=O(n^{-1/p})$ for a positive integer $p$, scalar first order, an antisymmetric representing Hochschild orientation cycle, and a finite projective smooth-domain module $\mathcal H_\infty=\bigcap_{n\geq1}\operatorname{Dom}D^n$ with the theorem's absolute-continuity condition. Its regularity requirement is substantive: if $\delta(T)=[|D|,T]$, then $a$ and $[D,a]$ must belong to $\bigcap_{n\geq1}\operatorname{Dom}\delta^n$, and the strengthened condition includes all $\mathcal A$-endomorphisms of $\mathcal H_\infty$. Under the full hypotheses of [Connes's Theorem 1.1](<https://arxiv.org/html/0810.2088#S1>), the algebra is $C^\infty(M)$ for a compact oriented smooth manifold; the associated metric is Riemannian. We use this as a theorem input, not an application to either finite example. It is not a reconstruction theorem for arbitrary triples or arbitrary independent affine connections.

In particular, a Lorentzian Dirac operator has a hyperbolic rather than elliptic principal symbol, and its natural indefinite pairings are not the positive Hilbert pairing used above. For a nonzero null covector, Lorentzian Clifford multiplication squares to zero without being the zero matrix; it cannot satisfy the positive norm identity used in the distance argument. Causal spectral constructions require additional structures and different distance prescriptions. We have not supplied them. The developing spectral-geometry chapter AST-17 concerns related estimates; the compactness, positivity, selfadjointness and regularity inputs used here have been stated independently rather than borrowed from an unread or unfinished derivation.

## 8. A Spectral Action Is a Chosen Functional, Not a Selected Particle Theory

For a selfadjoint $D_A$, a specified real cutoff $f$, and a scale $\Lambda>0$, the bosonic spectral action is $\operatorname{Tr}f(D_A/\Lambda)$ whenever that operator is trace class. In finite dimension the trace is simply a finite sum. For the fluctuated two-point operator its eigenvalues are $\pm|H|$, hence

$$\begin{align}
S_f(H)=f(|H|/\Lambda)+f(-|H|/\Lambda).
\end{align}$$

For even $f$ this is $2f(|H|/\Lambda)$. Choose the perfectly legitimate positive cutoff $f(x)=e^{-x^2}$. Then

$$\begin{align}
S_f(H)=2e^{-|H|^2/\Lambda^2}, \qquad S_f(H)=2-\frac{2|H|^2}{\Lambda^2} +\frac{|H|^4}{\Lambda^4} +O\!\left(\frac{|H|^6}{\Lambda^6}\right) \quad (|H|/\Lambda\to0).
\end{align}$$

The exact function is strictly decreasing with the positive radius $|H|$ and approaches zero only at infinity. Its quartic truncation has a spurious nonzero minimizing radius $|H|=\Lambda$, outside a parametrically small-radius expansion. The exact finite spectral action therefore has no Mexican-hat minimum. Gauge covariance ensures dependence on $|H|$, but neither a symmetry-breaking potential nor a vacuum radius follows from that invariance alone.

To see what a continuum product actually adds, take an even canonical Riemannian triple as in Section 7, with chirality $\gamma_R$. On $\mathcal H_R\otimes\mathbb C^2$ let

$$
\mathcal A=C^\infty(M)\otimes\mathcal A_F,
\qquad
D_{\mathrm{prod}}=D_R\otimes I_2+\gamma_R\otimes D_H,
\qquad
D_H=\begin{pmatrix}0&H\\\overline H&0\end{pmatrix},
$$

where $H$ is constant on $M$. The cross term cancels because $D_R\gamma_R=-\gamma_RD_R$, so

$$\begin{align}
D_{\mathrm{prod}}^2=D_R^2\otimes I_2+I\otimes D_H^2, \qquad \operatorname{Tr}e^{-tD_{\mathrm{prod}}^2} =2e^{-t|H|^2}\operatorname{Tr}e^{-tD_R^2}, \qquad t>0.
\end{align}$$

The finite factor is evaluated exactly. Trace factorization uses the positive compact Riemannian heat operator; its asymptotics remain analytic input, not finite-matrix evidence. As a local four-dimensional auxiliary Euclidean symbol check, one may take Hermitian matrices

$$\begin{align}
\Gamma_1=\sigma_1\otimes I_2, \quad\Gamma_2=\sigma_2\otimes I_2, \quad\Gamma_3=\sigma_3\otimes\sigma_1, \quad\Gamma_4=\sigma_3\otimes\sigma_2, \quad\gamma_R=\sigma_3\otimes\sigma_3.
\end{align}$$

They satisfy $\{\Gamma_j,\Gamma_l\}=2\delta_{jl}I_4$; the Riemannian Clifford matrices are $c_R(e^j)=-i\Gamma_j$. For $d_R(\xi)=\sum_j\xi_j\Gamma_j$, the eight-by-eight product symbol squares to $(|\xi|^2+|H|^2)I_8$. This verifies the cancellation in the local model, not a Lorentzian continuation. If $H=H(x)$, differentiating it produces additional terms and the heat trace no longer factorizes in this way.

For a continuum spectral-action expansion one must specify the dimension, elliptic operator and its domain, trace-class or localization prescription, cutoff moments, and heat-kernel hypotheses. The estimates being developed in AST-17 can eventually supply a compatible reference, but no unverified coefficient is imported here. Changing the algebra, its representation, fermionic multiplicities, $D$, cutoff or normalization changes the resulting functional. In particular, neither the Standard Model gauge group, its Yukawa parameters, the number of generations, nor a quantum theory of gravity is selected by the dimensions of the matrices displayed here.

## 9. What the Constructions Establish

The two-point calculus produces an off-diagonal one-form and a total coupling $H$ whose modulus sets a measurable state-space separation. Its unitary transformation distinguishes a homogeneous field from an affine displacement. The matrix example shows that a faithful representation and a selfadjoint finite operator need not give finite distances between all states. The bimodule examples identify why a right action, rather than a second arbitrary left multiplication, belongs in the real first-order condition. Formal Moyal deformation supplies an associative algebraic model with a controlled truncation rule, not an automatic analytic completion on arbitrary spacetime.

For further study, [Connes, Noncommutative Geometry](<https://alainconnes.org/wp-content/uploads/book94bigpdf.pdf>) develops the operator-algebraic setting, while [On the spectral characterization of manifolds](<https://arxiv.org/abs/0810.2088>) states the reconstruction problem and its hypotheses. The definitions and finite calculations here are usable without assuming a reconstruction theorem for Lorentzian metric-affine gravity or a phenomenological identification of the internal algebra.
