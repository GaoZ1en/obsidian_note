# Two-Component Spinor Geometry

**AST-13 — DRAFT study chapter; bounded review recorded**

## Abstract

Two-component spinors describe Lorentzian vectors, null directions, fields, and curvature through a small complex linear algebra with an essential reality condition. This chapter fixes its alternating forms and soldering normalization before using them. Hermitian matrices represent real vectors; rank-one matrices represent future null vectors; a normalized spin dyad produces a null tetrad with explicitly checked factors. The physical chirality dictionary is then derived from the four-component representation used in [AST-07](<AST-07.md>) and [EC-02](<EC-02.md>): the fundamental SL(2,C) action is the positive-gamma-five block here, not an independently assumed negative-chirality block. A Lorentzian Hodge calculation identifies the two symmetric-spinor sectors of a two-form, leading to an explicit Maxwell equation and a circular plane wave. Finally, the Levi-Civita curvature is reconstructed from a complex symmetric four-spinor, a Hermitian Ricci spinor, and a real scalar. The twenty-real-component construction is kept distinct from torsionful and nonmetric curvature.

## 1. The Two-Dimensional Alternating-Form Calculus

Let S be a two-dimensional complex vector space with a chosen nonzero alternating form. In a basis labelled $A=0,1$, choose

$$
\epsilon_{AB}=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
 \epsilon^{AB}=\begin{pmatrix}0&-1\\1&0\end{pmatrix}.
 \tag{1.1}
$$

The second matrix is the ordinary inverse of the first. Our lowering and raising operations are

$$\begin{align}
\xi_A=\epsilon_{AB}\xi^B,\qquad \xi^A=\epsilon^{AB}\xi_B. \tag{1.2}
\end{align}$$

Thus $(\xi^0,\xi^1)=(a,b)$ lowers to $(b,-a)$ and raises back to $(a,b)$. The contraction order matters:

$$\begin{align}
\epsilon_{AB}\epsilon^{BC}=\delta_A{}^C,\qquad \epsilon_{AB}\epsilon^{CB}=-\delta_A{}^C,\qquad \epsilon_{AB}\epsilon^{AB}=-2. \tag{1.3}
\end{align}$$

The repeated B in the first identity is the second slot of the first matrix and the first slot of the inverse. Interchanging the inverse’s indices is not an innocent rewrite.

For commuting complex components,

$$\begin{align}
\langle\xi,\eta\rangle:=\xi^A\eta_A =\xi^0\eta^1-\xi^1\eta^0, \qquad \xi^A\eta_A=-\xi_A\eta^A, \qquad\xi^A\xi_A=0. \tag{1.4}
\end{align}$$

The last conclusion uses commutativity. If the two components are odd Grassmann variables, the same expression is $2\xi^0\xi^1$, generally nonzero. Geometric spinors and plane-wave polarization amplitudes below have commuting complex entries. A physical fermion field has Grassmann-odd or operator-valued coefficients; its linear wave operator uses the same matrices, but its products and bilinears obey graded rules. Algebraic properties of one must not be transferred to the other without that distinction.

### 1.1 Transformations, Conjugates, and Duals

A matrix A preserves epsilon precisely when $A^T\epsilon A=\epsilon$. For two-by-two matrices, the left side is $(\det A)\epsilon$, so the preserving group is SL(2,C). In particular,

$$\begin{align}
\epsilon\overline A\epsilon^{-1} =(A^\dagger)^{-1}. \tag{1.5}
\end{align}$$

We use unprimed upper indices for S, transformed by A. On a real Lorentzian spacetime the primed upper-index space is the conjugate representation $S'=\overline S$, transformed by $\overline A$. Its dual has lower primed indices and transforms by $(A^\dagger)^{-1}$. Epsilon identifies the conjugate space with its dual according to (1.2), but this does not identify an arbitrary field with the complex conjugate of another field.

For purely complexified Lorentzian algebra one may instead treat S and $S'$ as independent two-dimensional complex spaces, each with its alternating form. The real Lorentzian theory imposes conjugation relating them. The distinction becomes decisive for null factorization and real curvature below.

## 2. Real Vectors as Hermitian Matrices

Work first in an oriented orthonormal frame with $\eta=\operatorname{diag}(-1,1,1,1)$. The Pauli matrices are

$$
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
 \sigma_2=\begin{pmatrix}0&-i\\i&0\end{pmatrix},\quad
 \sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix}.
 \tag{2.1}
$$

Write $s_a=(I,\sigma_1,\sigma_2,\sigma_3)$ for the four basis matrices and define the unnormalized soldering map

$$
X(v)^{AA'}=v^a(s_a)^{AA'}
 =\begin{pmatrix}v^0+v^3&v^1-iv^2\\v^1+iv^2&v^0-v^3\end{pmatrix}.
 \tag{2.2}
$$

Real vectors correspond exactly to Hermitian matrices. Complex vectors correspond to arbitrary complex two-by-two matrices. The inverse map is

$$\begin{align}
v^0=\tfrac12\operatorname{tr}X,\qquad v^i=\tfrac12\operatorname{tr}(\sigma_iX),\qquad \det X(v)=(v^0)^2-\sum_i(v^i)^2=-g(v,v). \tag{2.3}
\end{align}$$

Thus no square-root-of-two normalization is hidden in $s_a$. If a convention uses $s_a/\sqrt2$, its vector components and all ensuing factors must be changed consistently.

Lowering both spinor indices gives the matrix $\epsilon X\epsilon^T$. Its transpose, not the same matrix in general, is the adjugate:

$$\begin{align}
\operatorname{adj}X=(\operatorname{tr}X)I-X =\epsilon X^T\epsilon^T.
\end{align}$$

Consequently the metric pairing is

$$\begin{align}
g(v,w)=-\frac12\epsilon_{AB}\epsilon_{A'B'} v^{AA'}w^{BB'} =-\frac12\operatorname{tr}(X(v)\operatorname{adj}X(w)). \tag{2.4}
\end{align}$$

Substitution of (2.2) gives $-v^0w^0+\mathbf v\cdot\mathbf w$, so this formula fixes both its sign and its factor.

Under a spin transformation,

$$\begin{align}
X(v)\longmapsto A X(v)A^\dagger.
 \tag{2.5}
\end{align}$$

It preserves Hermiticity, determinant, and the future timelike cone, giving the proper orthochronous Lorentz action. A and $-A$ induce the same vector transformation. The double-cover and global spin-structure issues are developed in [AST-07](<AST-07.md>); local matrix algebra alone does not provide a global spin structure on every manifold. A diagonal $A=\operatorname{diag}(e^{r/2},e^{-r/2})$ gives a boost mixing $v^0,v^3$, while $A=\operatorname{diag}(e^{-i\theta/2},e^{i\theta/2})$ gives a spatial rotation about the third axis.

### 2.1 The Inverse Soldering Map and Derivative Factors

In this frame the inverse coefficients are

$$\begin{align}
\tau^a{}_{AA'}=\tfrac12(s_a^T)_{AA'},\qquad v^a=\tau^a{}_{AA'}v^{AA'}. \tag{2.6}
\end{align}$$

These are inverse-map coefficients, not obtained by simply raising a on $s_a$ with eta. For a covector $\alpha_a$, define $\alpha_{AA'}=\tau^a{}_{AA'}\alpha_a$ and raise its two spinor indices with inverse epsilons. A direct multiplication gives

$$\begin{align}
\alpha^{AA'}=-\tfrac12 X(\alpha^\sharp)^{AA'},\qquad \partial^{AA'}=\frac12\left(I\partial_t-\sigma_i\partial_i\right)^{AA'}. \tag{2.7}
\end{align}$$

This is why factors from the soldering map cannot be guessed from index positions. Every spinor projection below uses (2.6), with its explicit factor one half.

## 3. Null Spinors, Phases, and a Null Tetrad

For a nonzero future null vector k, $X(k)$ is positive semidefinite of rank one: its eigenvalues are $2k^0$ and zero. Hence

$$\begin{align}
X(k)=\lambda\lambda^\dagger,\qquad k^0=\tfrac12\lambda^\dagger\lambda>0. \tag{3.1}
\end{align}$$

The factor is unique up to $\lambda\mapsto e^{i\alpha}\lambda$. A general complex rescaling changes the energy by its absolute-value squared, so it does not preserve a fixed momentum. A past null vector instead has $X(k)=-\lambda\lambda^\dagger$. The zero vector is a separate case.

For commuting spinors lambda and mu, the determinant of the sum of their rank-one matrices gives a useful contraction identity:

$$\begin{align}
-2g(k_\lambda,k_\mu) =|\lambda^A\mu_A|^2, \qquad X(k_\lambda)=\lambda\lambda^\dagger. \tag{3.2}
\end{align}$$

Indeed, $X(k_\lambda)+X(k_\mu)$ is the product of the matrix with columns lambda,mu and its adjoint. Its determinant is $|\det[\lambda,\mu]|^2$, while both individual vectors are null. This proof makes the required commutativity and reality assumptions explicit.

In the complexified theory, a nonzero null matrix need only factor as $X=\lambda\widetilde\lambda^T$, with independent factors. Its redundancy is $(\lambda,\widetilde\lambda)\mapsto(z\lambda,z^{-1}\widetilde\lambda)$ for $z\in\mathbb C^*$. The real future condition permits $\widetilde\lambda=\overline\lambda$ and reduces that redundancy to a phase. It is not legitimate to impose this conjugation on every complex null vector.

On the patch $\lambda^0\ne0$, a direction can be parametrized by $z=\lambda^1/\lambda^0$:

$$\begin{align}
\widehat{\mathbf k} =\frac{(2\operatorname{Re}z,2\operatorname{Im}z,1-|z|^2)}{1+|z|^2}, \qquad \lambda=e^{i\alpha}\sqrt{\frac{2E}{1+|z|^2}}(1,z),\quad E>0. \tag{3.3}
\end{align}$$

Here E fixes the energy, z the null direction, and alpha the factorization phase. The second spinor patch covers the missing direction. This is the concrete identification of projective spinors with the sphere of future null directions.

### 3.1 The Fixed-Momentum Little Group

For $k=E(1,0,0,1)$, equation (3.1) has $\lambda=\sqrt{2E}(1,0)$. Solving $AX(k)A^\dagger=X(k)$ and $\det A=1$ gives all matrices

$$
A=\begin{pmatrix}e^{i\alpha}&b\\0&e^{-i\alpha}\end{pmatrix},
 \qquad b\in\mathbb C.
 \tag{3.4}
$$

The first column must be the original unit column times a phase; determinant one fixes the second diagonal entry. This is the spin double cover of the null little group, with one rotational and two real null-rotation parameters. It acts on this lambda by its phase, while b changes the complementary dyad vector. Energy rescaling is not part of this fixed-momentum stabilizer.

### 3.2 From a Dyad to a Tetrad

Choose $o=(1,0)$ and $\iota=(0,1)$, so $o^A\iota_A=1$. Define complexified tangent vectors by

$$\begin{align}
X(l)=\sqrt2\,o\overline o^T,\quad X(n)=\sqrt2\,\iota\overline\iota^T,\quad X(m)=\sqrt2\,o\overline\iota^T,\quad X(\overline m)=\sqrt2\,\iota\overline o^T. \tag{3.5}
\end{align}$$

Using the inverse map (2.3),

$$\begin{align}
l=\frac{(1,0,0,1)}{\sqrt2},\quad n=\frac{(1,0,0,-1)}{\sqrt2},\quad m=\frac{(0,1,i,0)}{\sqrt2}.
\end{align}$$

They obey $g(l,n)=-1$, $g(m,\overline m)=1$, and all other pairings vanish. In particular m is complex; four real independent null vectors with this Gram matrix are not being asserted. The inverse metric is

$$\begin{align}
g^{ab}=-l^an^b-n^al^b+m^a\overline m^b+\overline m^am^b. \tag{3.6}
\end{align}$$

An SL(2,C)-transformed normalized dyad produces the transformed tetrad. The square-root factors in (3.5) follow from our unnormalized soldering map and cannot be discarded while retaining these unit pairings.

## 4. Physical Chirality and Weyl Equations

The four-component convention in this collection is

$$
\gamma^0=\begin{pmatrix}0&I\\I&0\end{pmatrix},\qquad
 \gamma^i=\begin{pmatrix}0&\sigma_i\\-\sigma_i&0\end{pmatrix},\qquad
 \{\gamma^a,\gamma^b\}=-2\eta^{ab}I_4.
 \tag{4.1}
$$

Its spin representation and chirality operator are

$$\begin{align}
\rho(A)=\operatorname{diag}((A^\dagger)^{-1},A),\qquad \gamma_5=i\gamma^0\gamma^1\gamma^2\gamma^3 =\operatorname{diag}(-I,+I). \tag{4.2}
\end{align}$$

Thus a Dirac spinor is written as $\Psi=(\chi_{A'},\psi^A)^T$, with an upper negative-chirality conjugate-dual block and a lower positive-chirality fundamental block. With the common names left for negative gamma-five and right for positive, S is the **right** block in this dictionary. Calling the fundamental A action left-handed without translating the representation would contradict (4.2).

For a vector v, $c_g(v)=v_a\gamma^a$ can be expressed directly in terms of its Hermitian matrix:

$$
c_g(v)=-\begin{pmatrix}0&\operatorname{adj}X(v)\\X(v)&0\end{pmatrix},
 \qquad
 \rho(A)c_g(v)\rho(A)^{-1}=c_g(\Lambda(A)v).
 \tag{4.3}
$$

This verifies covariance of the block assignment. It is also useful to write the two derivative matrix systems as $(I,\sigma_i)$ and $(I,-\sigma_i)$; their mixed anticommutators equal $-2\eta^{ab}I_2$. The bar often used for the second system denotes reversal of its spatial signs, not complex conjugation of each Pauli matrix.

The flat Dirac equation with a chosen real nonnegative mass parameter is

$$\begin{align}
(i\gamma^a\partial_a-m)\Psi=0,
\end{align}$$

or explicitly

$$\begin{align}
i(\partial_t+\sigma_i\partial_i)\psi=m\chi,\qquad i(\partial_t-\sigma_i\partial_i)\chi=m\psi. \tag{4.4}
\end{align}$$

At $m=0$ the two blocks decouple. A positive-frequency wave $e^{-iEt+i\mathbf k\cdot\mathbf x}$ satisfies

$$\begin{align}
(E-\boldsymbol\sigma\cdot\mathbf k)\psi_0=0,\qquad (E+\boldsymbol\sigma\cdot\mathbf k)\chi_0=0. \tag{4.5}
\end{align}$$

For $\mathbf k=E\widehat z$, $E>0$, the solutions are $\psi_0\propto(1,0)$ and $\chi_0\propto(0,1)$. Rotations about that momentum act by $e^{-i\theta/2}$ and $e^{+i\theta/2}$ respectively, giving helicities $+1/2$ and $-1/2$. For nonzero mass the squared symbol gives $E^2=|\mathbf k|^2+m^2$ and the two chiral components couple. This constructs the wave equations and their polarizations; neither the mass value nor the statistics of the field follows from the dimension of S.

## 5. Two-Forms, Hodge Eigenvalues, and a Maxwell Wave

Let $F_{ab}=-F_{ba}$ be a complex two-form in the same frame. Convert each covariant vector slot using the inverse soldering coefficients:

$$\begin{align}
F_{AA'BB'}=\tau^a{}_{AA'}\tau^b{}_{BB'}F_{ab}.
\end{align}$$

The alternating pair decomposes uniquely as

$$\begin{align}
F_{AA'BB'}=\varphi_{AB}\epsilon_{A'B'} +\widetilde\varphi_{A'B'}\epsilon_{AB}, \qquad\varphi_{AB}=\varphi_{(AB)},\quad \widetilde\varphi_{A'B'}=\widetilde\varphi_{(A'B')}. \tag{5.1}
\end{align}$$

Indeed, antisymmetry under exchanging the two vector slots separates the symmetric-unprimed/antisymmetric-primed part from its reverse. Contraction with inverse epsilons gives the actual projections:

$$\begin{align}
\varphi_{AB}=-\frac12\epsilon^{A'B'}F_{AA'BB'},\qquad \widetilde\varphi_{A'B'}=-\frac12\epsilon^{AB}F_{AA'BB'}. \tag{5.2}
\end{align}$$

The minus comes from $\epsilon^{A'B'}\epsilon_{A'B'}=-2$. For a real Lorentzian two-form, $\widetilde\varphi=\overline\varphi$ after the primed/unprimed relabelling. A general complex two-form has two independent symmetric spinors.

Take orientation $\varepsilon_{0123}=+1$ and metric $(-,+,+,+)$. Then $*^2=-1$ on two-forms, with

$$\begin{align}
*(e^0\wedge e^1)=-e^2\wedge e^3,\qquad *(e^2\wedge e^3)=e^0\wedge e^1.
\end{align}$$

Define $E_i=F_{0i}$ and $B=(F_{23},F_{31},F_{12})$, and put $Z=E-iB$. Substitution of the Pauli matrices into (5.2) yields

$$\begin{align}
\varphi=\frac14\epsilon\,(Z_i\sigma_i),\qquad \varphi(*F)=i\varphi(F),\quad \widetilde\varphi(*F)=-i\widetilde\varphi(F). \tag{5.3}
\end{align}$$

This derives which spinor is in which Hodge eigenspace for this normalization and orientation. In particular

$$\begin{align}
F_+=\tfrac12(F-i*F),\qquad F_-=\tfrac12(F+i*F) \tag{5.4}
\end{align}$$

have eigenvalues $+i,-i$ and are encoded by the unprimed and primed spinors respectively. We use the eigenvalues rather than importing a convention-dependent self-dual label. For real F, these two complex parts are conjugates, not independent real fields.

### 5.1 Deriving the Spinor Maxwell Equation

For a real two-form F in flat coordinates, the source-free equations are $dF=0$ and $\partial^aF_{ab}=0$. With the E convention just defined they read

$$\begin{align}
\nabla\cdot E=0,\quad\nabla\cdot B=0,\qquad \partial_tE+\nabla\times B=0,\quad \partial_tB-\nabla\times E=0. \tag{5.5}
\end{align}$$

Here the spatial nabla denotes ordinary Cartesian derivatives, not an independent affine connection. Equivalently $\nabla\cdot Z=0$ and $\partial_tZ+i\nabla\times Z=0$.

Using (2.7) and (5.3), contract the unprimed derivative index with the first index of phi. As a numerical matrix with rows $A'$ and columns B in this fixed Cartesian spin frame,

$$\begin{align}
\partial^{AA'}\varphi_{AB} =\frac18\epsilon\left[(\nabla\cdot Z)I +(\partial_tZ+i\nabla\times Z)_i\sigma_i\right]. \tag{5.6}
\end{align}$$

For example, $\sigma_i^T\epsilon=-\epsilon\sigma_i$ moves epsilon through the spatial derivative matrix, and $\sigma_i\sigma_j=\delta_{ij}I+i\epsilon_{ijk}\sigma_k$ separates divergence and curl. The spatial alternating symbol has component one in the 123 order. Independence of $I,\sigma_i$ then proves equivalence to

$$\begin{align}
\partial^{AA'}\varphi_{AB}=0 \tag{5.7}
\end{align}$$

and its conjugate, with no omitted factor from the soldering map. For a general complex F, the independent primed equation must also be imposed; its primed field is not obtained by conjugating the unprimed field.

For an actual real wave, let $u=k(z-t)$, $k>0$, and choose

$$\begin{align}
E=(\cos u,-\sin u,0),\qquad B=(-\sin u,-\cos u,0). \tag{5.8}
\end{align}$$

Both divergences vanish; differentiating gives the two evolution equations in (5.5). Its complex combination is $Z=(1,i,0)e^{iu}$, and (5.3) gives $\varphi=\operatorname{diag}(0,-1/2)e^{iu}$. If $\kappa=(1,0)$ and $\kappa_A=\epsilon_{AB}\kappa^B=(0,-1)$, this is $-\kappa_A\kappa_Be^{iu}/2$. Here kappa specifies the direction: the momentum-normalized factor in (3.1) would be $\sqrt{2k}\kappa$, with that scale absorbed into the field amplitude above. The null factorization thus supplies the symmetric polarization spinor, and the real field is completed by its primed conjugate. This is a field equation and a wave construction, not only an irreducible-component count. The plane wave is not a finite-energy packet; no boundary or quantum-state normalization is claimed.

## 6. Spin Connections: What Lifts and What Does Not

For global fields now assume an oriented time-oriented Lorentzian spin manifold with a chosen spin structure. Locally choose compatible orthonormal and spin frames. A spin connection on S has matrices $G_\mu\in\mathfrak{sl}(2,\mathbb C)$ and

$$\begin{align}
D_\mu\psi=\partial_\mu\psi+G_\mu\psi,\qquad D_\mu\chi=\partial_\mu\chi-G_\mu^\dagger\chi. \tag{6.1}
\end{align}$$

Tracelessness is equivalent to preservation of epsilon. If the Lorentz-frame connection is defined by $\nabla_\mu e_b=\omega_\mu{}^a{}_b e_a$, the lift is specified by the actual matrix identities

$$\begin{align}
G_\mu s_b+s_bG_\mu^\dagger=s_a\omega_\mu{}^a{}_b. \tag{6.2}
\end{align}$$

For a concrete parametrization write $G=(b_i-ir_i)\sigma_i/2$ with real b,r. Its induced vector-connection matrix is

$$
\omega=\begin{pmatrix}
 0&b_1&b_2&b_3\\
 b_1&0&-r_3&r_2\\
 b_2&r_3&0&-r_1\\
 b_3&-r_2&r_1&0
 \end{pmatrix},\qquad\omega^T\eta+\eta\omega=0.
 \tag{6.3}
$$

This displays the six-real-dimensional Lorentz/spin Lie-algebra isomorphism, not a postulated internal gauge group. On a chosen spin structure a Lorentz connection lifts through this map. The Levi-Civita connection is the torsion-free instance used for the remaining curvature discussion. Metric-compatible connections with torsion also have Lorentz spin lifts, but their curvature identities differ.

The lifted derivative preserves the soldering map, so on a vector represented by X it acts as $DX=dX+GX+XG^\dagger$. Its bundle curvature is $\mathcal F=dG+G\wedge G$. The curved Dirac operator in this LC setting is $i\gamma^a e_a{}^\mu D_\mu-m$, with $D$ acting by the two blocks in (6.1). The tensorial pointwise identity (5.6) likewise becomes the curved vacuum Maxwell equation $\nabla^{AA'}\varphi_{AB}=0$: in an LC normal frame at a point its first-derivative calculation is exactly the flat one, and the preserved epsilon/soldering map makes the statement frame independent.

A general nonmetric affine connection is different. Even allowing a general complex two-by-two G, its induced action $\dot X=GX+XG^\dagger$ obeys

$$\begin{align}
\frac d{ds}\det X=2\operatorname{Re}(\operatorname{tr}G)\det X. \tag{6.4}
\end{align}$$

It changes the quadratic form only by a common conformal scale; traceless G preserves it exactly. Arbitrary anisotropic nonmetricity cannot be represented by an ordinary Lorentz spin connection preserving these epsilon and soldering structures. Additional bundles or modified compatibility data would be extra choices, not an automatic spin lift of every GL(4) connection.

## 7. Levi-Civita Curvature in Spinor Components

Use the curvature convention of [AST-05](<AST-05.md>): $R_{abcd}=g(e_a,R(e_c,e_d)e_b)$, with $R(X,Y)Z=\nabla_X\nabla_YZ-\nabla_Y\nabla_XZ-\nabla_{[X,Y]}Z$. In this section the derivative is Levi-Civita. The tensor is skew in each pair, symmetric under pair exchange, and obeys the algebraic Bianchi identity. Hence it has twenty independent real components.

Set

$$\begin{align}
S_{ab}=R_{ab}-\frac R4g_{ab}.
\end{align}$$

The complete tensor decomposition is

$$
\begin{aligned}
 R_{abcd}=C_{abcd}
 &+\frac12(g_{ac}S_{bd}-g_{ad}S_{bc}-g_{bc}S_{ad}+g_{bd}S_{ac})\\
 &+\frac R{12}(g_{ac}g_{bd}-g_{ad}g_{bc}).
 \end{aligned}
 \tag{7.1}
$$

These coefficients are fixed by contracting a,c: the four-term expression has contraction $2S_{bd}$, while the scalar term has contraction $Rg_{bd}/4$. Thus the three pieces respectively carry Weyl curvature, trace-free Ricci curvature, and scalar curvature.

### 7.1 Explicit Normalized Projections and Reconstruction

Convert S using the inverse map (2.6) and **define our Ricci-spinor normalization** by

$$\begin{align}
\Phi_{ABA'B'}:=\tau^a{}_{AA'}\tau^b{}_{BB'}S_{ab}. \tag{7.2}
\end{align}$$

A vector-pair-symmetric spinor separates into a piece symmetric in both spinor pairs and a piece alternating in both; the latter is a scalar multiple of the product of the two epsilons. The spacetime trace selects that alternating piece. Thus symmetry of S and its zero trace imply symmetry separately in AB and $A'B'$. Reality makes Phi Hermitian under interchanging the unprimed pair with the conjugate primed pair. In the pair basis $(00),(01),(11)$ it is therefore a Hermitian three-by-three matrix with nine real parameters. Trace-free refers here to the spacetime Ricci trace, not to this matrix’s ordinary trace. Conversely,

$$\begin{align}
S_{ab}=s_a^{AA'}s_b^{BB'}\Phi_{ABA'B'}. \tag{7.3}
\end{align}$$

Factors or signs absorbed into a Ricci spinor in another reference must be translated to the explicit definition (7.2).

Convert the four slots of C with tau, calling the result $\mathcal C_{AA'BB'CC'DD'}$. Define

$$\begin{align}
\Psi_{ABCD}=\frac14\epsilon^{A'B'}\epsilon^{C'D'} \mathcal C_{AA'BB'CC'DD'}. \tag{7.4}
\end{align}$$

The Weyl symmetries and zero traces make Psi fully symmetric in its four indices. The factor one quarter is the product of the two projection factors in (5.2). The complete inverse formula is

$$\begin{align}
\mathcal C_{AA'BB'CC'DD'} =\Psi_{ABCD}\epsilon_{A'B'}\epsilon_{C'D'} +\overline\Psi_{A'B'C'D'}\epsilon_{AB}\epsilon_{CD}. \tag{7.5}
\end{align}$$

To return to $C_{abcd}$ contract its four pairs with $s_a,s_b,s_c,s_d$, exactly as in (7.3). Equations (7.2)–(7.5), followed by (7.1), are an actual reconstruction algorithm with no unspecified soldering constants.

A fully symmetric four-index two-spinor has five complex components, classified by the number of indices equal to one. Writing these as $\psi_0,\ldots,\psi_4$, its pair-index matrix is

$$
\begin{pmatrix}\psi_0&\psi_1&\psi_2\\
                 \psi_1&\psi_2&\psi_3\\
                 \psi_2&\psi_3&\psi_4\end{pmatrix}.
 \tag{7.6}
$$

Pair symmetry initially gives six complex entries; the cyclic/trace condition identifies the two entries displayed as $\psi_2$. This matrix represents a bilinear form in an epsilon-based pair basis, not an operator in a Euclidean orthonormal basis. Its ordinary three-by-three trace need not vanish; the relevant spinor traces are epsilon contractions and vanish by total symmetry.

The two Weyl terms in (7.5) occupy the two Hodge sectors derived in Section5, and are conjugate for real curvature. Together with Hermitian Phi and real R, the real count is

$$\begin{align}
20=\underbrace{2\times5}_{\Psi,\overline\Psi} +\underbrace{9}_{\Phi}+\underbrace{1}_{R}. \tag{7.7}
\end{align}$$

This count is backed by the explicit inverse maps: it is not a proposal for twenty independent physical fields. As an operator on complexified two-forms, the Weyl and scalar parts preserve the Hodge eigenspaces; the trace-free Ricci part mixes them.

### 7.2 A Nonflat Example and the Limits of the Decomposition

On the de Sitter flat chart $g=-dt^2+e^{2Ht}\delta_{ij}dx^idx^j$ with constant $H>0$, the LC curvature satisfies

$$\begin{align}
R_{ab}=3H^2g_{ab},\qquad R=12H^2,\qquad C_{abcd}=0. \tag{7.8}
\end{align}$$

Therefore $\Phi=0$ and $\Psi=0$, but (7.1) still gives nonzero full curvature. A spin connection’s curvature is not just its Weyl spinor. This is a local curved example, not a statement that the flat de Sitter chart covers the full manifold or proves completeness; [AST-05](<AST-05.md>) describes that chart’s domain explicitly.

The spin connection can also be constructed in this example rather than left implicit. Choose the coframe $e^0=dt$, $e^i=e^{Ht}dx^i$. Since $de^i=H e^0\wedge e^i$, the only nonzero Lorentz connection forms may be chosen as $\omega^0{}_i=\omega^i{}_0=H e^i$; they solve $de^a+\omega^a{}_b\wedge e^b=0$. Equation (6.2) then gives

$$\begin{align}
G=\frac H2\sigma_i e^i. \tag{7.9}
\end{align}$$

Differentiating and multiplying these actual matrix-valued forms yields

$$
\begin{aligned}
 \mathcal F=\frac{H^2}{2}\big[&\sigma_1(e^0\wedge e^1+i e^2\wedge e^3)\\
 &+\sigma_2(e^0\wedge e^2+i e^3\wedge e^1)\\
 &+\sigma_3(e^0\wedge e^3+i e^1\wedge e^2)\big].
 \end{aligned}
 \tag{7.10}
$$

The coefficients belong to the $+i$ Hodge sector derived above, and the form is nonzero despite $\Psi=\Phi=0$. On vectors the same connection has curvature $\mathcal R^a{}_b=H^2 e^a\wedge e_b$, agreeing with (7.8). Thus the scalar-curvature part has an explicit spin-connection realization.

For a metric-compatible connection with torsion, curvature still has six possible Lorentz-generator components for each of six two-form directions: 36 real algebraic components before the LC identities. Pair exchange and the torsion-free algebraic Bianchi identity cannot be assumed, so the usual 20-component Psi/Phi/R package does not encode all of it. A general affine connection has sixteen endomorphism components for each two-form direction, giving 96 real components before extra conditions, and need not have the ordinary spin lift at all. These are pointwise tensor-space dimensions, not counts of propagating modes or matter generations.

## 8. What the Spinor Constructions Establish

The epsilon form supplies duality in a complex two-space; the soldering map and a Lorentzian reality condition recover real tangent vectors. Null factorization separates a direction, an energy scale, and a phase. The gamma-five representation determines which two-space describes each physical chirality. A symmetric two-spinor encodes a definite complex Hodge sector only after orientation and normalization are fixed. The LC curvature decomposition follows from LC tensor symmetries and has an explicit inverse; it is not a general metric-affine curvature decomposition.

These constructions specify Lorentz representations and their geometric differential operators. Global spin structures, physical field statistics, additional internal symmetries, masses, actions, and quantum states are further data. No internal Standard Model group, generation structure, or Majorana mass is inferred from a spinor-component count.

## References and Further Reading

[1] Roger Penrose and Wolfgang Rindler, *Spinors and Space-Time*, volume1, Cambridge University Press, 1984. Two-spinor methods, null frames, fields, and curvature; compare epsilon contractions, signature, and soldering normalization with the explicit definitions here.

[2] H. Blaine Lawson and Marie-Louise Michelsohn, *Spin Geometry*, Princeton University Press, 1989. Global spin structures and Clifford modules; the global lifting hypotheses are additional to local two-by-two algebra.

[3] Robert M. Wald, *General Relativity*, University of Chicago Press, 1984. Lorentzian geometry and free-field equations. Curvature and chirality conventions are not inferred from a common notation.

[4] Barrett O’Neill, *Semi-Riemannian Geometry with Applications to Relativity*, Academic Press, 1983. Metric connections and the hypotheses behind LC curvature symmetries.
