# Spin Structures, Clifford Modules, and Dirac Operators

**AST-07 — DRAFT study chapter**

## Abstract

Spin geometry combines a global lifting problem with a local matrix calculus. The lifting problem asks whether orthonormal frame changes can be lifted consistently to their double cover; its obstruction is the second Stiefel–Whitney class, and its choices form a torsor for mod-two first cohomology. The matrix calculus then turns a metric connection into a spinor connection and a Dirac operator. This chapter constructs both parts, fixes a Lorentzian Clifford dictionary compatible with signature $(-,+,+,+)$, and derives the torsion-free Dirac-square formula with its operator and curvature signs explicit. Circle and torus modes show how different spin structures change actual boundary conditions. A polar frame on the Riemannian two-sphere provides a complete curved operator example. Riemannian ellipticity and index theory are kept separate from Lorentzian propagation, while the final sections explain the restricted role of axial torsion and the exactness of the Nieh–Yan form.

## 1. Orthonormal Frames and the Lifting Question

Throughout, $M$ is a smooth Hausdorff second-countable manifold. A spin structure is additional global information; orientability alone does not guarantee it. Two settings will be distinguished. In the Riemannian setting, $h$ is positive definite and an orientation is fixed. In the four-dimensional Lorentzian setting, a metric $g$ of signature $(-,+,+,+)$, an orientation, and a time orientation are fixed. A metric must actually exist before its orthonormal frames can be discussed.

At a point, an oriented Riemannian orthonormal frame is an ordered basis $E_1,\ldots,E_n$ with $h(E_i,E_j)=\delta_{ij}$ and positive orientation. All such frames at all points form a principal $SO(n)$-bundle $F_{SO}(M)$. A principal bundle is locally a product with its structure group, with a free transitive group action on each fibre. In the Lorentzian case use oriented, future-directed orthonormal frames and the proper orthochronous group $SO^+(\eta)$, where $\eta=\operatorname{diag}(-1,1,1,1)$. A local frame is not a global trivialization of this bundle.

The spin group comes with a double covering homomorphism

$$\begin{align}
\lambda:\operatorname{Spin}(n)\longrightarrow SO(n) \quad\text{or}\quad \lambda:\operatorname{Spin}^+(\eta)\longrightarrow SO^+(\eta), \qquad \ker\lambda=\{1,-1\}. \tag{1.1}
\end{align}$$

The Lorentzian notation here refers to the connected spin group; no lift of reflections or time reversal is presumed. A spin structure is a principal spin bundle $P_{\mathrm{Spin}}\to M$ with an equivariant two-fold covering

$$\begin{align}
\Lambda:P_{\mathrm{Spin}}\longrightarrow F_{SO}(M), \qquad \Lambda(pg)=\Lambda(p)\lambda(g). \tag{1.2}
\end{align}$$

The bundle map covers the identity on $M$. Its fibrewise group cover is not the assertion that spacetime itself has been replaced by a double cover.

Why is a second bundle necessary? A vector returns to itself after a $2\pi$ rotation, whereas a spinor can acquire a minus sign. This is not an inconsistent vector transformation: the two fields transform under different groups. The lift specifies which signs are compatible on overlapping frame charts and around noncontractible loops.

A closed manifold (compact and without boundary) with nonzero Euler characteristic cannot carry a Lorentzian metric. Thus the spheres and projective surfaces used below as compact examples are Riemannian examples unless explicitly stated otherwise. Their spin property does not override the metric-existence condition. For example $S^4$ is spin but has $\chi=2$ and no Lorentzian metric.

## 2. Two Explicit Double Covers

### 2.1 Lorentz Transformations from Two-by-Two Matrices

Let $\sigma_1,\sigma_2,\sigma_3$ be the Pauli matrices:

$$
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
 \sigma_2=\begin{pmatrix}0&-i\\i&0\end{pmatrix},\quad
 \sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
 \qquad \sigma_i\sigma_j=\delta_{ij}I+i\epsilon_{ijk}\sigma_k.
 \tag{2.1}
$$

Identify $v=(v^0,\mathbf v)$ with the Hermitian matrix

$$
X(v)=v^0 I+v^i\sigma_i
 =\begin{pmatrix}v^0+v^3&v^1-iv^2\\v^1+iv^2&v^0-v^3\end{pmatrix}.
$$

Its determinant is $(v^0)^2-|\mathbf v|^2=-\eta(v,v)$. Hence

$$\begin{align}
X\longmapsto AXA^\dagger,\qquad A\in SL(2,\mathbb C), \tag{2.2}
\end{align}$$

preserves the Lorentzian quadratic form. It is real-linear on Hermitian matrices, giving a Lorentz transformation $L(A)$ with $L(AB)=L(A)L(B)$. Positive-definite $X$, corresponding to the future timelike cone, stays positive definite. Connectedness of $SL(2,\mathbb C)$ gives determinant $+1$, so the image lies in $SO^+(\eta)$.

If $L(A)$ is the identity, applying it to $I$ gives $AA^\dagger=I$. Applying it to all Pauli matrices then says $A$ commutes with them. The only such two-by-two complex matrices are scalars; determinant one leaves $A=\pm I$. Conversely both signs act trivially. Surjectivity can be seen from rotations and boosts. For example

$$\begin{align}
A_R(\theta)=e^{-i\theta\sigma_3/2},\qquad A_B(\chi)=e^{\chi\sigma_1/2} \tag{2.3}
\end{align}$$

produce a positive rotation in the $(v^1,v^2)$ plane and the boost

$$\begin{align}
(v^0,v^1)\longmapsto
 (v^0\cosh\chi+v^1\sinh\chi, v^0\sinh\chi+v^1\cosh\chi).
\end{align}$$

A proper orthochronous Lorentz transformation is a boost taking the time axis to its new future unit vector, followed by a rotation fixing that axis. Rotations and boosts therefore exhaust the image. This realizes

$$\begin{align}
\operatorname{Spin}^+(\eta)\cong SL(2,\mathbb C), \qquad SO^+(\eta)\cong SL(2,\mathbb C)/\{\pm I\}.
 \tag{2.4}
\end{align}$$

In particular $A_R(2\pi)=-I$ while $L(A_R(2\pi))=I$.

### 2.2 The Euclidean Four-Dimensional Cover

Identify oriented Euclidean $\mathbb R^4$ with the quaternions $\mathbb H$. Unit quaternions form $SU(2)$. A pair of unit quaternions acts by

$$\begin{align}
q\longmapsto a q b^{-1},\qquad (a,b)\in SU(2)\times SU(2). \tag{2.5}
\end{align}$$

Quaternionic norm multiplicativity proves orthogonality. The action is a homomorphism because successive pairs multiply as $(a,b)(a',b')=(aa',bb')$. If a pair acts trivially, evaluating at $q=1$ gives $a=b$, and then $a$ must commute with every quaternion. A unit quaternion with that property is $\pm1$. The kernel is therefore the diagonal pair $\{(1,1),(-1,-1)\}$.

At the identity, the infinitesimal action is $q\mapsto u q-qv$ for imaginary quaternions $u,v$. If this is zero for every $q$, the same argument gives $u=v=0$. Its differential is thus an isomorphism between two six-dimensional Lie algebras. The image is an open subgroup of the connected group $SO(4)$, hence all of $SO(4)$. Consequently

$$\begin{align}
\operatorname{Spin}(4)=SU(2)\times SU(2),\qquad SO(4)=\frac{SU(2)\times SU(2)}{\{(1,1),(-1,-1)\}}. \tag{2.6}
\end{align}$$

The covering group and its quotient are different groups. The two factors will act on the two half-spin modules; quotienting first would remove the sign information needed for spinors.

## 3. The Obstruction and the Choices of Lift

### 3.1 Transition Functions and the Second Stiefel–Whitney Class

Take a good cover $\{U_i\}$, so finite nonempty overlaps are contractible, and choose local oriented orthonormal frames. Their transitions $g_{ij}$ obey $g_{ij}g_{jk}g_{ki}=1$. On each double overlap, lift $g_{ij}$ to a spin-valued function $s_{ij}$ and choose $s_{ji}=s_{ij}^{-1}$. The lifts need not obey the cocycle equation: on a triple overlap,

$$\begin{align}
s_{ij}s_{jk}s_{ki}=z_{ijk},\qquad z_{ijk}\in\{1,-1\}. \tag{3.1}
\end{align}$$

The signs are locally constant because they lie in the discrete kernel of the cover. Associativity on fourfold overlaps implies their two-cocycle condition. Changing the initial lifts by signs on double overlaps changes $z$ by a coboundary. Thus their class in $H^2(M;\mathbb Z/2)$ is intrinsic. The standard obstruction theorem identifies it with $w_2(TM)$ [1,2]. Therefore

$$\begin{align}
M\text{ has a spin structure}\quad\Longleftrightarrow\quad w_2(TM)=0 \tag{3.2}
\end{align}$$

under the orientation and, for the Lorentzian reduction, time-orientation assumptions already made. If this class is zero, one can change the signs so that $z_{ijk}=1$, and the lifted transitions actually assemble a principal spin bundle. This explains the obstruction constructively rather than treating $w_2$ as a numerical decoration.

### 3.2 Why the Choices Form a Torsor

Suppose one consistent lift $s_{ij}$ has been chosen. Another differs by signs $\epsilon_{ij}$:

$$\begin{align}
s'_{ij}=\epsilon_{ij}s_{ij},\qquad \epsilon_{ij}\epsilon_{jk}\epsilon_{ki}=1. \tag{3.3}
\end{align}$$

Changing trivializations by signs on $U_i$ changes $\epsilon$ by a coboundary. The inequivalent choices are therefore acted on freely and transitively by $H^1(M;\mathbb Z/2)$. Such a set is a **torsor**: choosing a reference lift identifies its other elements with a group, but no preferred reference is supplied by the geometry.

For a connected finite-type manifold,

$$\begin{align}
H^1(M;\mathbb Z/2)\cong \operatorname{Hom}(H_1(M;\mathbb Z),\mathbb Z/2).
 \tag{3.4}
\end{align}$$

If $H_1\cong\mathbb Z^{b_1}\oplus T$, the finite group $T$ may contribute additional mod-two classes. The correct count is

$$\begin{align}
\#\{\text{spin structures}\}=2^{\dim_{\mathbb F_2}H^1(M;\mathbb Z/2)}, \tag{3.5}
\end{align}$$

provided at least one exists. It reduces to $2^{b_1}$ only if $T$ has no two-primary cyclic factors. For example $\mathbb{RP}^3\cong SO(3)$ is an oriented parallelizable Lie group and hence spin, but $H_1=\mathbb Z/2$. It has two spin structures even though its rational first Betti number is zero. A simply connected spin manifold has one spin structure; a nonspin manifold has none, not one.

### 3.3 Useful Four-Dimensional Examples

The class $w_2$ is independent of a chosen Riemannian metric. Standard tangent-bundle calculations give the following examples:

| Smooth manifold | Spin? | Number if spin | Interpretation here |
|---|---|---:|---|
| $S^4$ | yes, $H^2(-;\mathbb Z/2)=0$ | 1 | Riemannian; $\chi=2$ excludes Lorentzian metrics |
| $S^2\times S^2$ | yes, each sphere's Euler class is even | 1 | Riemannian; $\chi=4$ |
| $T^4$ | yes, tangent bundle trivial | 16 | Flat Riemannian modes below |
| $\mathbb{CP}^2$ | no, $w_2=h\bmod2\ne0$ | none | $h$ is the positive degree-two generator |
| $\mathbb{CP}^2\#\mathbb{CP}^2$ | no, odd simply connected form | none | No ordinary spin bundle |
| K3 surface, complex orientation | yes, $c_1=0$ | 1 | Riemannian; $\chi=24$ |

For a closed oriented four-manifold, the Wu identity is

$$\begin{align}
\langle a^2,[M]_2\rangle =\langle w_2(TM)a,[M]_2\rangle, \qquad a\in H^2(M;\mathbb Z/2). \tag{3.6}
\end{align}$$

The full mod-two pairing is nondegenerate and determines $w_2$ by this equation. It should not be replaced without qualification by the free integral intersection lattice. Spin implies that free lattice is even; the converse holds when $H_1(M;\mathbb Z)$ has no two-torsion, including the simply connected examples in the table. Torsion can carry an obstruction invisible to the free lattice; this distinction is developed in [AST-01](<AST-01.md#L703-L753>).

### 3.4 Spin$^c$ Is a Different Lifting Problem

A spin$^c$ structure uses $\operatorname{Spin}^c(n)=(\operatorname{Spin}(n)\times U(1))/\{(1,1),(-1,-1)\}$. Its determinant line bundle $L$ satisfies

$$\begin{align}
c_1(L)\bmod2=w_2(TM). \tag{3.7}
\end{align}$$

Existence is equivalent to $w_2$ having an integral lift, or to vanishing of its integral Bockstein $W_3$. Thus $\mathbb{CP}^2$ is not spin but does admit spin$^c$ structures; the canonical complex one has determinant line $K^{-1}$ with $c_1=3h$. Its spinors also depend on a line-bundle connection. This does not say that ordinary uncharged spinors exist on every oriented manifold, nor does the $U(1)$ in this construction derive a particle model.

## 4. Clifford Modules with the Lorentzian Dictionary Fixed

### 4.1 Matrices and the Spinor Bundle

The Clifford relation used for physical four-component spinors is

$$\begin{align}
\{\gamma^a,\gamma^b\}=-2\eta^{ab}I_4, \qquad \eta=\operatorname{diag}(-1,1,1,1). \tag{4.1}
\end{align}$$

Thus $(\gamma^0)^2=+I$ and $(\gamma^i)^2=-I$. The Clifford quadratic form is the negative of the spacetime metric; this is intentional. We use

$$
\gamma^0=\begin{pmatrix}0&I_2\\I_2&0\end{pmatrix},\qquad
 \gamma^i=\begin{pmatrix}0&\sigma_i\\-\sigma_i&0\end{pmatrix},
 \tag{4.2}
$$

$$\begin{align}
\bar\psi=\psi^\dagger\gamma^0,\qquad \gamma^{ab}=\frac12[\gamma^a,\gamma^b],\qquad \gamma_5=i\gamma^0\gamma^1\gamma^2\gamma^3 =\operatorname{diag}(-I_2,I_2). \tag{4.3}
\end{align}$$

In particular $(\gamma^a)^\dagger\gamma^0=\gamma^0\gamma^a$. Anticommuting distinct generators and replacing repeated squares reduces every word to a linear combination of increasing monomials. Their grades have dimensions $1,4,6,4,1$. In this representation the sixteen monomials are independent complex matrices, so the complex Clifford algebra is $\operatorname{Mat}(4,\mathbb C)$. The even part acts block diagonally in the chirality decomposition. A module is a vector space with this algebra action, not another copy of the tangent representation.

Given the spin representation $\rho$, form the associated bundle

$$\begin{align}
S=P_{\mathrm{Spin}}\times_\rho\mathbb C^4. \tag{4.4}
\end{align}$$

A local section is represented by a column $\psi_i$ whose overlap rule is $\psi_i=\rho(s_{ij})\psi_j$. The Clifford action patches consistently because spin transformations conjugate the matrices by the corresponding Lorentz transformation. Hence a spinor is not an ordinary four-component coordinate vector.

For the Hermitian-matrix cover (2.2), one compatible representation in the basis (4.2) is

$$\begin{align}
\rho(A)=\operatorname{diag}\big((A^\dagger)^{-1},A\big). \tag{4.5}
\end{align}$$

Indeed for a tangent vector $v$, Clifford multiplication is $c_g(v)=v_a\gamma^a$, with $v_a=\eta_{ab}v^b$. Its off-diagonal blocks are $-\overline X(v)$ and $-X(v)$, where $\overline X=v^0I-v^i\sigma_i$. Since $\overline X(L(A)v)=(A^\dagger)^{-1}\overline X(v)A^{-1}$, conjugation by (4.5) gives $c_g(L(A)v)$. A plane rotation also has the explicit form

$$\begin{align}
\rho_R(\theta)=\cos(\theta/2)I+ \sin(\theta/2)\gamma^1\gamma^2, \qquad \rho_R(2\pi)=-I. \tag{4.6}
\end{align}$$

This is the local algebra behind the global sign-lifting problem.

### 4.2 Chirality and a Real Condition Are Different Structures

The matrices satisfy $\gamma_5^2=I$ and $\{\gamma_5,\gamma^a\}=0$. The projectors $P_\pm=(I\pm\gamma_5)/2$ define two complex rank-two bundles $S^\pm$. Chirality exists in every even dimension, although its four-dimensional representation is especially useful.

Reality must be checked against the chosen operator, not inferred from whether all four gamma matrices can be made real. In (4.2), let $B=i\gamma^2$ and define the antilinear map $J\psi=B\psi^*$. Then

$$\begin{align}
B B^*=I,\qquad B(\gamma^a)^*B^{-1}=-\gamma^a. \tag{4.7}
\end{align}$$

Thus $J^2=1$, it commutes with the even spin action but anticommutes with odd Clifford multiplication. The additional conjugation of $i$ makes it commute with the physical free operator $i\gamma^\mu D_\mu$ for a real metric connection. A Majorana reality condition can therefore be imposed on appropriate solutions; the real type of the full Clifford algebra alone is not a prohibition. Here $J$ exchanges $S^+$ and $S^-$, so a nonzero four-dimensional Lorentzian spinor cannot simultaneously obey this Majorana condition and have only one chirality. None of these algebraic statements determines Grassmann statistics or a nondegenerate matter action.

## 5. From a Metric Connection to a Spin Connection

### 5.1 Tetrads and the Lift

Write a local orthonormal coframe as $e^a=e^a{}_{\mu}dx^\mu$, with dual $E_a=e_a{}^\mu\partial_\mu$. Then

$$\begin{align}
g_{\mu\nu}=\eta_{ab}e^a{}_{\mu}e^b{}_{\nu},\qquad e_a{}^\mu e^a{}_{\nu}=\delta^\mu_\nu. \tag{5.1}
\end{align}$$

Use derivative-first coordinate connection coefficients. A metric-compatible connection determines frame one-forms by

$$\begin{align}
\partial_\mu e^a{}_{\nu}-\Gamma^\rho{}_{\mu\nu}e^a{}_{\rho} +\omega^a{}_{b\mu}e^b{}_{\nu}=0, \qquad \omega_{ab\mu}=-\omega_{ba\mu}. \tag{5.2}
\end{align}$$

Its spin lift in (4.1) is

$$\begin{align}
\Omega_\mu=-\frac14\omega_{ab\mu}\gamma^{ab},\qquad D_\mu\psi=\partial_\mu\psi+\Omega_\mu\psi, \qquad D_\mu\bar\psi=\partial_\mu\bar\psi-\bar\psi\Omega_\mu. \tag{5.3}
\end{align}$$

Both frame indices are summed. For one pair $a<b$, this contributes $-\omega_{ab\mu}\gamma^{ab}/2$. The factor and sign follow from the matrix commutator:

$$\begin{align}
[\Omega_\mu,\gamma^a]=-\omega^a{}_{b\mu}\gamma^b, \qquad \Omega_\mu^\dagger\gamma^0+\gamma^0\Omega_\mu=0. \tag{5.4}
\end{align}$$

Together with the inverse tetrad postulate, this gives

$$\begin{align}
\partial_\mu\gamma^\nu+[\Omega_\mu,\gamma^\nu] +\Gamma^\nu{}_{\mu\rho}\gamma^\rho=0, \qquad \gamma^\nu=e_a{}^\nu\gamma^a. \tag{5.5}
\end{align}$$

The second identity in (5.4) makes the two definitions of the adjoint derivative consistent. Under a change of spin frame with $\psi_i=S_{ij}\psi_j$,

$$\begin{align}
(\Omega_j)_\mu=S_{ij}^{-1}(\Omega_i)_\mu S_{ij} +S_{ij}^{-1}\partial_\mu S_{ij}. \tag{5.6}
\end{align}$$

Thus these local operators define a global connection on the associated spinor bundle.

### 5.2 Curvature and the Distinction Between Two Commutators

Let

$$\begin{align}
\mathcal R^a{}_b=d\omega^a{}_b+\omega^a{}_c\wedge\omega^c{}_b, \qquad \mathcal R^a{}_{b\mu\nu}=e^a{}_{\rho}e_b{}^\sigma R^\rho{}_{\sigma\mu\nu}. \tag{5.7}
\end{align}$$

The coordinate curvature sign is $R^\rho{}_{\sigma\mu\nu}=\partial_\mu\Gamma^\rho{}_{\nu\sigma}-\partial_\nu\Gamma^\rho{}_{\mu\sigma}+\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma}-\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}$. The map $\omega\mapsto-\omega_{ab}\gamma^{ab}/4$ is a Lie algebra representation. Expanding its derivative and commutator therefore gives

$$\begin{align}
F^S_{\mu\nu}:=\partial_\mu\Omega_\nu-\partial_\nu\Omega_\mu +[\Omega_\mu,\Omega_\nu] =-\frac14\mathcal R_{ab\mu\nu}\gamma^{ab}. \tag{5.8}
\end{align}$$

As operators in a coordinate spinor trivialization, $[\partial_\mu+\Omega_\mu,\partial_\nu+\Omega_\nu]\psi=F^S_{\mu\nu}\psi$. If the derivative label of $D_\nu\psi$ is also differentiated as a covector index, the tensor-Hessian commutator is instead

$$\begin{align}
(D^2_{\mu\nu}-D^2_{\nu\mu})\psi =F^S_{\mu\nu}\psi-T^\rho{}_{\mu\nu}D_\rho\psi, \quad D^2_{\mu\nu}\psi=D_\mu D_\nu\psi-\Gamma^\rho{}_{\mu\nu}D_\rho\psi. \tag{5.9}
\end{align}$$

This is the same operator-versus-tensor distinction that appears for vector fields. Torsion is not absent just because the coordinate operator commutator has only curvature on its right-hand side.

### 5.3 Why an Arbitrary Nonmetric Connection Is Not Covered by This Lift

A connection with $\nabla g\ne0$ does not preserve the orthonormal frame bundle. It therefore does not automatically induce the spin connection (5.3) on its Spin reduction. If a spinor connection covering that tangent connection were Clifford compatible, differentiating $\{c_g(v),c_g(w)\}=-2g(v,w)I$ would force $\nabla g=0$. This is a compatibility condition, not a removable coordinate inconvenience.

One may choose the antisymmetric part of a general frame connection to define a metric connection, but this discards data and is an additional prescription. In fact a symmetric coefficient $A_{(ab)}$ contracted with $\gamma^a\gamma^b$ retains only its metric trace; its trace-free symmetric part vanishes. Such a contraction cannot faithfully encode general nonmetricity. Extra line-bundle or other connections can also be supplied, but their couplings are not selected by an ordinary spin structure alone. The Dirac-square derivation below consequently uses the torsion-free metric spin connection, not an unspecified full metric-affine lift.

## 6. Dirac Operators and the Torsion-Free Square

### 6.1 Which Operator Is Meant?

From now through Section 9, use the Levi-Civita connection and its spin lift, denoted $\bar D$. All curvature symbols in these sections are Levi-Civita curvature. In the Lorentzian dictionary define

$$\begin{align}
\not D=\gamma^\mu\bar D_\mu,\qquad P=i\not D,\qquad (P-m)\psi=0. \tag{6.1}
\end{align}$$

The factor $i$ belongs to the physical equation with (4.1). In flat coordinates a mode $u\exp(-i\omega t+i\mathbf k\cdot\mathbf x)$ gives the matrix

$$\begin{align}
P(k)=\omega\gamma^0-k_i\gamma^i,\qquad P(k)^2=(\omega^2-|\mathbf k|^2)I. \tag{6.2}
\end{align}$$

Thus $\omega^2=|\mathbf k|^2+m^2$, or $g^{\mu\nu}p_\mu p_\nu=-m^2$. Copying an equation with the same $i$ while reversing only its Clifford sign would not preserve this mass shell.

For a Riemannian metric $h$, use skew-Hermitian Clifford matrices $c(E_i)$ with

$$\begin{align}
c(E_i)c(E_j)+c(E_j)c(E_i)=-2\delta_{ij}I, \qquad \mathcal D_h=\sum_i c(E_i)\nabla^S_{E_i}. \tag{6.3}
\end{align}$$

This is the geometric formally self-adjoint Dirac operator, with no extra $i$ in its definition. In a flat Fourier mode its matrix is $i k_i c(E_i)$ and has real eigenvalues. It is used below for spectra, vanishing, and index theory, not as an unstated analytic continuation of the Lorentzian matter action. In four dimensions one explicit choice is

$$\begin{align}
(c_1,c_2,c_3,c_4)=(\gamma^1,\gamma^2,\gamma^3,i\gamma^0), \qquad \Gamma_h=-c_1c_2c_3c_4=\gamma_5. \tag{6.4}
\end{align}$$

The last equation fixes the standard even-dimensional chirality for the ordered oriented Riemannian frame used here. The Riemannian spinor metric is positive Hermitian; it is not the Lorentzian scalar $\bar\psi\psi$.

### 6.2 Deriving the Quarter-Curvature Term

Define the Lorentzian spinor wave operator by the full Hessian trace

$$\begin{align}
\Box_S\psi=g^{\mu\nu} (\bar D_\mu\bar D_\nu-\bar\Gamma^\rho{}_{\mu\nu}\bar D_\rho)\psi. \tag{6.5}
\end{align}$$

Here the first product is composition on spinors. Clifford compatibility (5.5) makes the square a contraction of this full Hessian, not merely of coordinate second derivatives. Its symmetric part gives $-\Box_S$ by (4.1). Its antisymmetric part gives half the spin curvature, since the Levi-Civita lower slots are symmetric. Therefore

$$\begin{align}
\not D^{\,2} =-\Box_S+\frac12\gamma^\mu\gamma^\nu F^S_{\mu\nu} =-\Box_S-\frac18\mathcal R_{ab\mu\nu} \gamma^\mu\gamma^\nu\gamma^{ab}. \tag{6.6}
\end{align}$$

This can be computed at one point in an orthonormal normal frame, since every term is an invariant operator. The Levi-Civita curvature there has antisymmetry in each pair, pair-exchange symmetry, and the cyclic Bianchi identity. Clifford reduction then yields

$$\begin{align}
R_{abcd}\gamma^c\gamma^d\gamma^a\gamma^b =2\operatorname{Ric}_{bd}\gamma^d\gamma^b=-2R I. \tag{6.7}
\end{align}$$

For the first equality, expand the product of the first three matrices into its fully antisymmetric triple and its metric contractions. The triple term contracts to zero by Bianchi; the contraction of $c,d$ vanishes by their antisymmetry; the other two contractions each give $\operatorname{Ric}_{bd}\gamma^d\gamma^b$. For the second equality, symmetric Ricci kills $\gamma^{db}$ and the symmetric Clifford product is $-g^{db}I$. The metric term inside $\gamma^{ab}$ in (6.6) likewise contracts to zero. Substitution fixes both signs:

$$\begin{align}
\boxed{\quad \not D^{\,2}=-\Box_S+\frac R4, \qquad P^2=\Box_S-\frac R4.\quad} \tag{6.8}
\end{align}$$

Consequently the massive equation implies

$$\begin{align}
(P+m)(P-m)\psi=(\Box_S-R/4-m^2)\psi=0. \tag{6.9}
\end{align}$$

This derivation assumes no twisting gauge bundle and no torsion. Twisted connections add their own curvature endomorphism; a torsionful metric connection does not generally have the algebraic Bianchi symmetries used in (6.7). The rough wave operator already contains the whole spin connection, so the displayed scalar term does not mean that every physical curvature effect has reduced to a scalar mass shift.

For a Riemannian metric, let

$$\begin{align}
\nabla^{S*}\nabla^S =-\sum_i\big(\nabla^S_{E_i}\nabla^S_{E_i} -\nabla^S_{\nabla^h_{E_i}E_i}\big).
\end{align}$$

The same local calculation gives the Riemannian Lichnerowicz formula

$$\begin{align}
\boxed{\quad \mathcal D_h^2=\nabla^{S*}\nabla^S+\frac{\operatorname{Scal}_h}{4}.\quad} \tag{6.10}
\end{align}$$

The notation $\nabla^{S*}$ here genuinely refers to the adjoint for the Riemannian positive inner product and volume measure. On a closed Riemannian manifold, integration by parts gives

$$\begin{align}
\|\mathcal D_h\psi\|_{L^2}^2 =\|\nabla^S\psi\|_{L^2}^2 +\int_M\frac{\operatorname{Scal}_h}{4}|\psi|^2\,dV_h. \tag{6.11}
\end{align}$$

Strictly positive scalar curvature therefore excludes nonzero harmonic spinors. Boundary terms must instead be supplied on a manifold with boundary. There is no corresponding positive-norm conclusion obtained by substituting a Lorentzian metric into this integral argument.

### 6.3 Ellipticity Versus Hyperbolic Propagation

The Riemannian principal Clifford map squares to $-|\xi|_h^2I$, so it is invertible for every nonzero covector. This is ellipticity. On a closed manifold it leads to finite-dimensional kernels and an elliptic Fredholm index after appropriate Sobolev completion; a compact manifold with boundary additionally requires suitable boundary conditions.

In Lorentzian signature the same Clifford relation squares to $-g^{-1}(\xi,\xi)I$. It fails to be invertible on null covectors. The square in (6.8) is a normally hyperbolic spinor wave operator up to a zeroth-order term, not an elliptic operator. On a globally hyperbolic spacetime, the Dirac Cauchy problem has the usual existence and uniqueness properties with appropriate initial data; this is a hyperbolic PDE theorem, not an application of the compact elliptic index theorem [4]. Mass and the displayed curvature endomorphism are lower-order terms and do not change the principal characteristic cone.

The spin connection preserves $S^+$ and $S^-$ because $\Omega$ is even, but Clifford multiplication is odd. Thus $\not D$ and $\mathcal D_h$ exchange the two chiral bundles. Massless Weyl equations can be imposed separately, whereas a Dirac mass couples the two chiral components. Preserving a chiral connection and exchanging chirality with a Dirac operator are different statements.

## 7. A Curved Worked Example: the Riemannian Two-Sphere

Take the round sphere of radius $r>0$. On the polar-coordinate patch $0<\theta<\pi$, set

$$\begin{align}
h=r^2(d\theta^2+\sin^2\theta\,d\phi^2),\qquad e^1=r\,d\theta,\quad e^2=r\sin\theta\,d\phi. \tag{7.1}
\end{align}$$

This is an auxiliary Riemannian surface, not a Lorentzian spacetime. The coframe is singular at the coordinate poles; no global tangent frame is being asserted.

The torsion-free structure equations $de^a+\omega^a{}_b\wedge e^b=0$ give

$$\begin{align}
\omega_{12}=-\cos\theta\,d\phi,\qquad \mathcal R_{12}=\sin\theta\,d\theta\wedge d\phi =r^{-2}e^1\wedge e^2, \qquad \operatorname{Scal}_h=2/r^2. \tag{7.2}
\end{align}$$

For example $de^2=r\cos\theta\,d\theta\wedge d\phi$ is canceled by $\omega^2{}_1\wedge e^1$. Choose $c_1=i\sigma_1$ and $c_2=i\sigma_2$. Both square to $-I$, and $c_1c_2=-i\sigma_3$. The lifted connection is

$$\begin{align}
\Omega_\theta=0,\qquad \Omega_\phi=\frac12\cos\theta\,c_1c_2. \tag{7.3}
\end{align}$$

It has curvature $\partial_\theta\Omega_\phi=-\tfrac12\sin\theta\,c_1c_2$, agreeing with $-\mathcal R_{ab}\,c^{ab}/4$. The local Dirac operator is therefore

$$\begin{align}
\mathcal D_{S^2}=\frac1r\left[ c_1\left(\partial_\theta+\frac12\cot\theta\right) +c_2\csc\theta\,\partial_\phi\right]. \tag{7.4}
\end{align}$$

The half-cotangent is determined by the spin lift, not by a scalar Laplacian prescription.

To check the square directly, let $A=\partial_\theta+\tfrac12\cot\theta$ and $B=\csc\theta\,\partial_\phi$. Then $\mathcal D^2=r^{-2}(-A^2-B^2+c_1c_2[A,B])$, with $[A,B]=-\cot\theta\csc\theta\,\partial_\phi$. Expanding gives

$$\begin{align}
\mathcal D_{S^2}^2=\frac1{r^2}\left[ -\partial_\theta^2-\cot\theta\partial_\theta -\csc^2\theta\partial_\phi^2 -c_1c_2\cot\theta\csc\theta\partial_\phi +\frac12\csc^2\theta-\frac14\cot^2\theta\right]. \tag{7.5}
\end{align}$$

The rough Laplacian in the same spin frame is

$$\begin{align}
\nabla^{S*}\nabla^S =-\frac1{r^2}\left[ \partial_\theta^2+\cot\theta\partial_\theta +\csc^2\theta(\partial_\phi+\Omega_\phi)^2\right]. \tag{7.6}
\end{align}$$

Since $\Omega_\phi^2=-\cos^2\theta I/4$, subtracting (7.6) from (7.5) leaves $I/(2r^2)=\operatorname{Scal}_h I/4$. This supplies an operator-level check on an arbitrary local two-component spinor, including every first-derivative coefficient.

The sphere has $w_2=e(TS^2)\bmod2=0$ and $H^1(S^2;\mathbb Z/2)=0$, so this local operator patches using the unique spin structure.

In this polar spin frame, $\psi(\theta,\phi+2\pi)=-\psi(\theta,\phi)$; the components must also extend smoothly through regular spin frames at the poles. Thus (7.4) first gives a formula on an angular cut and then a local expression of the global Dirac operator, not a periodic two-component operator on a cylinder.

Its round positive scalar curvature and (6.11) imply zero kernel. The same vanishing applies to the round Riemannian $S^4$, where $\operatorname{Scal}=12/r^2$; neither statement assigns either sphere a Lorentzian metric.

## 8. Spin Structures as Observable Boundary Conditions

### 8.1 The Two Choices on a Circle

Let the Riemannian circle have arclength coordinate $s$ modulo $L$. Pull a spinor and its connection back to its universal cover $\mathbb R$. Relative to the parallel unit tangent frame, the two possible spin structures become

$$\begin{align}
\psi(s+L)=\epsilon\psi(s),\qquad \epsilon=+1\text{ or }-1. \tag{8.1}
\end{align}$$

These are transition signs of the spin bundle, not periodicity conditions on coordinate vectors. Choose the one-dimensional complex Clifford action $c(E)=-i$, so the geometric circle Dirac operator is $\mathcal D=-i\partial_s$. With $\delta=0$ for $\epsilon=+1$ and $\delta=1/2$ for $\epsilon=-1$, the normalized modes are

$$\begin{align}
\psi_k(s)=L^{-1/2}\exp\left(\frac{2\pi i(k+\delta)s}{L}\right), \qquad \lambda_k=\frac{2\pi(k+\delta)}L, \qquad k\in\mathbb Z. \tag{8.2}
\end{align}$$

The periodic structure has a constant zero mode; the antiperiodic structure does not. Both have the same local zero connection coefficients in this lifted frame. Global sign information has changed the spectrum.

The structure induced on the boundary of a disk is antiperiodic in this intrinsic circle frame. The outward-normal/tangent frame rotates by $2\pi$ around the disk boundary; its spin lift returns with the minus sign in (4.6). Hence the periodic and disk-bounding spin structures must not be identified simply because the circle is parallelizable.

### 8.2 A Flat Riemannian Four-Torus

Write $T^4=\mathbb R^4/(L_1\mathbb Z\oplus\cdots\oplus L_4\mathbb Z)$ with the flat positive metric. A spin structure assigns independent signs to the four basic loops, so there are sixteen choices. In the lifted global parallel frame they are

$$\begin{align}
\psi(x+L_i e_i)=e^{2\pi i\delta_i}\psi(x),\qquad \delta_i\in\{0,1/2\}. \tag{8.3}
\end{align}$$

A Fourier spinor has momentum $k_i=2\pi(m_i+\delta_i)/L_i$ and constant amplitude $u\in\mathbb C^4$. Using (6.4),

$$\begin{align}
\mathcal D_h(u e^{ik\cdot x}) =i k_i c_i u e^{ik\cdot x},\qquad (i k_i c_i)^2=|k|^2I. \tag{8.4}
\end{align}$$

For $k\ne0$ the eigenvalues are $\pm|k|$, each twice: the symbol is Hermitian, squares to $|k|^2$, and has zero trace. A zero mode exists only if all $\delta_i=0$ and all $m_i=0$. In that case the full kernel has complex dimension four, with two in each chirality; otherwise it is zero. The chiral index is zero in every case, although the kernel can change with spin structure.

For a physical Lorentzian example instead use $M=\mathbb R\times T^3$ with $g=-dt^2+\sum_i(dx^i)^2$. It has eight spin structures, given by the three spatial signs. Plane waves have the same shifted spatial momenta and the physical energies

$$\begin{align}
\omega^2=m^2+\sum_{i=1}^3 \left(\frac{2\pi(m_i+\delta_i)}{L_i}\right)^2. \tag{8.5}
\end{align}$$

Here $m$ denotes the mass and $m_i$ are integer mode labels. The distinction between them matters. This example has an actual global time coordinate and metric; a Riemannian spectral parameter has not merely been renamed an energy.

## 9. What an Index Theorem Says

Let $M$ be a closed oriented Riemannian spin four-manifold, and use the standard chirality fixed in (6.4). The odd Dirac operator restricts to $\mathcal D_h^+:\Gamma(S^+)\to\Gamma(S^-)$, with adjoint $\mathcal D_h^-$. Ellipticity on a closed manifold makes these kernels finite and the Sobolev-completed operator Fredholm. Its index is

$$\begin{align}
\operatorname{ind}\mathcal D_h^+ =\dim_{\mathbb C}\ker\mathcal D_h^+ -\dim_{\mathbb C}\ker\mathcal D_h^-. \tag{9.1}
\end{align}$$

The spin case of the Atiyah–Singer index theorem is a general theorem used here as input [1,3]:

$$\begin{align}
\operatorname{ind}\mathcal D_h^+=\langle\widehat A(TM),[M]\rangle =-\frac1{24}\langle p_1(TM),[M]\rangle =-\frac{\sigma(M)}8. \tag{9.2}
\end{align}$$

The final equality also uses the four-dimensional signature theorem $\langle p_1,[M]\rangle=3\sigma(M)$. In a real orthonormal connection convention, $p_1$ is represented by $-\operatorname{tr}(\mathcal R\wedge\mathcal R)/(8\pi^2)$. This fixes the characteristic-class normalization. These equalities are not finite matrix-rank assertions, and a manifold with boundary requires boundary conditions and additional index terms.

For the complex-oriented K3 surface, the standard topological input is $\sigma=-16$, hence the index is $2$. Therefore every Riemannian metric on that spin manifold has nontrivial Dirac kernel. Combining the index theorem with (6.11) proves that K3 admits no metric of everywhere strictly positive scalar curvature. This does not prevent a scalar-flat Ricci-flat metric. Its nonzero index has not produced a Lorentzian metric on the compact manifold: $\chi(K3)=24$ still excludes one.

For a spin$^c$ four-manifold with determinant line $L$ and a specified unitary connection on it, the corresponding elliptic index is instead

$$\begin{align}
\operatorname{ind}\mathcal D_L^+ =\left\langle e^{c_1(L)/2}\widehat A(TM),[M]\right\rangle =\frac{\langle c_1(L)^2,[M]\rangle-\sigma(M)}8. \tag{9.3}
\end{align}$$

The extra line curvature also appears in the spin$^c$ Weitzenböck formula; the untwisted vanishing statement cannot simply be copied. On complex-oriented $\mathbb{CP}^2$ with canonical determinant $c_1(L)=3h$, the arithmetic gives $(9-1)/8=1$. It is an index of a spin$^c$ operator, not evidence that $\mathbb{CP}^2$ has an ordinary spin structure.

A Lorentzian Dirac operator is not elliptic, so the compact Riemannian Fredholm argument does not apply merely because the same letters $S^\pm$ occur. An index also counts a difference of kernels, not a number of particle generations or an internal gauge group. Such interpretations need extra bundles, dynamics, and a specified physical construction.

## 10. Torsion and an Exact Four-Form

### 10.1 A Metric Spin Lift Does Allow Torsion

Metric compatibility, not torsion freeness, is what permits the lift (5.3). For two metric connections define the antisymmetric frame difference $\mathcal C_{ab\mu}=\omega_{ab\mu}-\bar\omega_{ab\mu}$ and its frame components $\mathcal C_{abc}=\mathcal C_{ab\mu}e_c{}^\mu$. Then the unsymmetrized first-order operator differs by

$$\begin{align}
\not D_\omega-\not D_{\bar\omega} =-\frac14\mathcal C_{abc}\gamma^c\gamma^{ab}. \tag{10.1}
\end{align}$$

This is not by itself the equation obtained from a Hermitian matter action with torsionful integration by parts.

For the physical action with the declared Clifford and adjoint conventions,

$$\begin{align}
I_D=\int dV_g\left[ \frac i2\big(\bar\psi\gamma^\mu D_\mu\psi -(D_\mu\bar\psi)\gamma^\mu\psi\big)-m\bar\psi\psi\right], \tag{10.2}
\end{align}$$

the connection-dependent part of its Lagrangian is

$$\begin{align}
\mathscr L_{\mathcal C} =-\frac i8\mathcal C_{abc}\bar\psi
            \{\gamma^c,\gamma^{ab}\}\psi =-\frac i4\mathcal C_{abc}\bar\psi\gamma^{[c}\gamma^a\gamma^{b]}\psi. \tag{10.3}
\end{align}$$

Here the bracketed product is one sixth of the signed sum over its permutations. The anticommutator removes all metric trace terms, leaving only the fully antisymmetric part of $\mathcal C$. In four dimensions it is dual to an axial one-form. This explains why the **minimal Hermitian action** couples only to axial torsion, even though the raw operator (10.1) can contain a trace term too. The trace bookkeeping and algebraic elimination of torsion in a specified Einstein–Cartan action are treated in [the classical matter chapter](<EC-02.md#L408-L508>). A spin structure by itself supplies neither that gravitational action nor a propagating torsion field equation. Nonminimal interactions need separate analysis.

### 10.2 The Nieh–Yan Identity Is Exact

For a metric connection, define the torsion and curvature forms by $T^a=de^a+\omega^a{}_b\wedge e^b$ and $\mathcal R^a{}_b=d\omega^a{}_b+\omega^a{}_c\wedge\omega^c{}_b$. The first Bianchi identity is $D_\omega T^a=\mathcal R^a{}_b\wedge e^b$. Since metric contraction commutes with $D_\omega$ and $e^a\wedge T_a$ is invariant under local orthonormal frame changes,

$$
\begin{aligned}
 N:=d(e^a\wedge T_a)
 &=D_\omega(e^a\wedge T_a)\\
 &=T^a\wedge T_a-e^a\wedge\mathcal R_{ab}\wedge e^b\\
 &=T^a\wedge T_a-e^a\wedge e^b\wedge\mathcal R_{ab}.
 \end{aligned}
 \tag{10.4}
$$

This is the Nieh–Yan identity [5]. The contracted three-form is globally defined even if no global coframe exists, because its local expressions agree on overlaps. Thus $N$ is globally exact for smooth fields of this type. On a compact oriented four-manifold, Stokes' theorem gives the following boundary formula and its closed-manifold specialization:

$$\begin{align}
\int_MN=0\quad(\partial M=\varnothing); \qquad\text{with boundary,}\quad \int_MN=\int_{\partial M}e^a\wedge T_a. \tag{10.5}
\end{align}$$

It is not automatically a nonzero quantized topological charge. Singularities, boundary conditions, or quantum regularization introduce additional questions not settled by this identity. In the torsion-free case, $N=0$ and $e^a\wedge e^b\wedge\mathcal R_{ab}=0$ by Bianchi. This expression is not the Euler form, which involves a different curvature contraction.

## 11. Chirality and Duality Do Not Replace Geometric Assumptions

On an oriented Riemannian four-manifold, the Hodge star on two-forms satisfies $*^2=1$, so $\Lambda^2=\Lambda^+\oplus\Lambda^-$ with real rank three in each part. The two factors of $\operatorname{Spin}(4)=SU(2)\times SU(2)$ act separately on the half-spin modules, while the associated two-form representations are the corresponding adjoint representations. The opposite factor acts trivially on each one. The two-form splitting itself requires orientation and a Riemannian metric, not a spin lift; it exists even on nonspin oriented four-manifolds.

For a Lorentzian four-metric, $*^2=-1$ on real two-forms. The analogous eigenspaces have eigenvalues $\pm i$ only after complexification, with projectors

$$\begin{align}
F_\pm=\frac12(F\mp i*F),\qquad *F_\pm=\pm iF_\pm. \tag{11.1}
\end{align}$$

A real nonzero two-form is therefore not Lorentzian self-dual in the real Riemannian sense. Conjugation by a Clifford volume element is not the Hodge operation: the volume element commutes with even Clifford elements, so its conjugation is the identity there. Expressing Hodge duality through multiplication by that element instead requires the identification of differential forms with Clifford grades and its signature-dependent normalization.

The constructions established here specify when a chosen metric geometry supports ordinary spinors, how its connection acts on them, and which analytic statements follow under Riemannian or Lorentzian hypotheses. They do not select a matter gauge group, particle spectrum, statistics, or number of generations. Those are additional mathematical and physical choices.

## References

[1] H. B. Lawson and M.-L. Michelsohn, *Spin Geometry*, Princeton Mathematical Series **38**, Princeton University Press, 1989. Standard reference for spin structures, Clifford modules, spin connections, Dirac operators, and their index theorem.

[2] J. Milnor, “Spin structures on manifolds,” *L'Enseignement Mathématique* **9** (1963), 198–203. The obstruction and classification of spin lifts. A concise secondary statement of the $w_2$ obstruction and $H^1$ torsor is available in [“Spin structure”](https://en.wikipedia.org/wiki/Spin_structure).

[3] M. F. Atiyah and I. M. Singer, “The index of elliptic operators: I,” *Annals of Mathematics* **87** (1968), 484–530. The general elliptic index theorem; (9.2) and (9.3) state its untwisted spin and spin$^c$ specializations with their closed Riemannian hypotheses.

[4] C. Bär, N. Ginoux, and F. Pfäffle, *Wave Equations on Lorentzian Manifolds and Quantization*, European Mathematical Society, 2007. Normally hyperbolic operators and the globally hyperbolic Cauchy problem.

[5] H. T. Nieh and M. L. Yan, “An identity in Riemann–Cartan geometry,” *Journal of Mathematical Physics* **23** (1982), 373–374.

[6] A. Lichnerowicz, “Harmonic spinors” [English rendering of the title], *Comptes Rendus de l'Académie des Sciences Paris* **257** (1963), 7–9. See also the [secondary formula statement](https://en.wikipedia.org/wiki/Lichnerowicz_formula); the operator signs here are derived using the explicitly declared Clifford dictionary rather than imported without translation.
