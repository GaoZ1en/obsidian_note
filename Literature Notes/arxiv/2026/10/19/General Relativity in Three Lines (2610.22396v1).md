---
paper id: 2610.22396v1
title: "General Relativity in Three Lines"
authors:
  - "Paweł Nurowski"
publication date: 2026-10-14T07:00
abstract: |-
  We show that complex general relativity can be formulated directly in terms of three affine lines assigned to each spacetime point. The lines are represented by Pl\"ucker bivectors, and Urbantke's construction applied to the associated two-forms reconstructs the conformal spacetime metric. Starting from the chiral Pleba\'nski action, the simplicity constraints turn the three two-forms into a null internal basis of simple bivectors and thereby into three projective lines. A $3+1$ decomposition then yields a first-order canonical theory whose configuration variable is the weighted triple of lines and whose conjugate variable is a line momentum. The resulting constraint system consists of three internal Gauss constraints, three vector constraints, and one Hamiltonian constraint. A notable feature of the line formulation is that the equation obtained by varying the line momentum is pointwise algebraic after the spatial integrations by parts. Consequently the momentum can be eliminated explicitly wherever the corresponding Legendre map is invertible, giving a second-order action whose only dynamical configuration variable is the weighted triple of lines. The line curvature separates naturally into a cosmological trace and the Weyl matrix of the selected chiral sector. The Legendre map becomes singular on a distinguished null-evolution locus where the spacetime metric remains nondegenerate. There its rank drops from nine to six, giving three algebraic compatibility conditions. We construct a finite invariant partial Legendre transform and a smooth constrained second-order continuation through this locus. This analysis provides a regular framework for regimes in which the evolution direction becomes null and may be useful in the study of near-horizon geometries and related gravitational phenomena.
comments: "Not supplied on arXiv abstract page; retrieved PDF has 12 pages."
url: https://arxiv.org/abs/2610.22396v1
summary: "Weighted-line canonical gravity and a finite rank-six partial Legendre transform across a nondegenerate null-evolution locus."
tags: []
---

# General Relativity in Three Lines

结论：最有用的是一个**可显式核验的 constrained partial Legendre transform**。当 evolution vector 变成 null 时，完整 $9\times9$ Legendre map 从秩 9 降为 6，而 spacetime metric 仍非退化。保留三维 kernel momentum 为辅助变量，可以得到有限的局部二阶 chart。这个结果不等于证明 null initial-value problem 的适定性，也不等于给出了边界 charge 或量子面积谱。

## Complete source tree and reading guide

Official [2610.22396v1](https://arxiv.org/abs/2610.22396v1), PDF and complete TeX read 2026-10-19. PDF 共 12 页、双栏；因 132 式左右的长链与多个约束层，采用 monograph mode。没有独立附录。

| Source cluster | 内容 | 后续用途 |
| --- | --- | --- |
| Introduction | three skew lines → ruled quadric → split conformal structure | real lines 自然给 $(2,2)$，Lorentzian 需 complexification/reality |
| I | Plücker bivectors、Urbantke metric、reality、projective/spin action；known-family example | pointwise geometry 与明确基底顺序 |
| II | chiral Plebański action、simplicity、weighted directions、canonical swap、line curvature；second-heavenly example | first-order action、七个约束、chosen Weyl chirality |
| III | canonical brackets、Gauss/improved diffeomorphism/Hamiltonian algebra；two-surface area | bulk symplectic structure、boundary restriction |
| IV | integration by parts、adjugate Hessian、inverse、fully reduced action | regular sector $\omega\chi\ne0$ |
| V | null-evolution locus；finite local completion；invariant group inverse；smooth neighbourhood completion | rank six、compatibility、Schur partial elimination |

Essential: II 的 $\Theta_{\rm line}$、IV、V；technical reference: I 的矩阵构造和 III 的权重/constraint algebra；examples: II heavenly witness 比 known-family 例子更直接暴露“单个 chiral curvature 为零不意味着 flat”。下面包含所有 cluster，不把 source map 当作完成深读的替代品。

## Three lines, Plücker forms and the metric

Work over $\mathbb C$，spacetime indices $0,1,2,3$，spatial/internal indices 各为 $1,2,3$。Dot/cross products 是 complex bilinear，不取 Hermitian conjugation。Numerical $\epsilon_{123}=\epsilon^{123}=1$，上下位置不是用后面的 $h$ 升降。

For each $i$ (no sum), $\ell_i=p_i+\mathbb C v_i$ gives

$$
\mathcal P_i=(e_0+p_i)\wedge v_i,\qquad m_i=p_i\times v_i,\quad m_i\cdot v_i=0.
$$

$p_i\mapsto p_i+c_iv_i$ leaves the line unchanged; scaling $(m_i,v_i)$ rescales its Plücker representative. Fix nonzero $\Omega\in\Lambda^4V^*$, define $B_i=\iota_{\mathcal P_i}\Omega$ with $\iota_{u\wedge v}=\iota_v\iota_u$. Urbantke's four-form-valued metric is

$$
\mathcal G(X,Y)=\frac16\epsilon_{ijk}(\iota_XB_i)\wedge(\iota_YB_j)\wedge B_k
=g(X,Y)\Omega.
$$

For $\Omega=dt\wedge dx^1\wedge dx^2\wedge dx^3$, $B_{i,0a}=m_{ia}$ and $B_{i,ab}=\epsilon_{cab}v_i^c$. The resulting matrix is

$$
G=\begin{pmatrix}A&q^T\\q&H\end{pmatrix},\quad
A=m_1\cdot(m_2\times m_3),
$$
$$
q=\tfrac12\sum_{\rm cyc}(m_j\times m_k)\times v_i,\qquad
H_{ab}=\tfrac12\sum_{\rm cyc}[(v_j\times v_k)_am_{ib}+m_{ia}(v_j\times v_k)_b].
$$

Independent contraction of the exterior-form expression reproduces all 16 entries. Rescaling the three representatives by $c_i$ multiplies $G$ by $c_1c_2c_3$; the geometric lines determine a conformal class, not its preferred physical scale.

On the chart $A\ne0$, set $\beta=q/A$, $K_{\rm sp}=(AH-qq^T)/A^2$. Then $A^{-1}ds^2=(dt+\beta_adx^a)^2+K_{{\rm sp},ab}dx^adx^b$. A real representative exists iff $q/A,H/A$ are real. For nondegenerate real $K_{\rm sp}$: positive definite gives Euclidean signature; $\det K_{\rm sp}<0$ gives Lorentzian signature up to sign convention; $\det K_{\rm sp}>0$ and not positive definite gives split signature. This pivot chart fails at $A=0$ even if the full metric is invertible; do not use its reality test blindly at the null-evolution locus.

The projective transformation $T=\begin{pmatrix}a_0&b^T\\c&\mathsf D\end{pmatrix}$ acts by

$$
p'_i=\frac{c+\mathsf Dp_i}{a_0+b\cdot p_i},\qquad
v'_i=(a_0+b\cdot p_i)\mathsf Dv_i-(b\cdot v_i)(c+\mathsf Dp_i),
$$

on the affine patch where the denominator is nonzero. Stabilizing the conformal metric means $T^TGT=\varpi G$. Identifying $V$ with $2\times2$ matrices, the quadratic form $\det X$ is preserved by $X\mapsto S_+XS_-^T$; its rank-one cone is $\mathbb P^1\times\mathbb P^1$. The two spin factors act on the two rulings. This is pointwise geometry, not a construction of asymptotic symmetries or conserved charges.

### Known-family coordinate caveat

The source uses $F=1+p^2q^2$, $\Delta=\sqrt{PQ}$ and lines

$$
\begin{array}{ll}
p_1=(-Q,0,-q^2),&v_1=(Qp^2,-iP,F),\\
p_2=(Q,0,-q^2),&v_2=(-Qp^2,iP,F),\\
p_3=(0,\Delta,-q^2),&v_3=(-i,-p^2,F/\Delta).
\end{array}
$$

Eq. (29) is reproduced by the explicit affine coframe **$(dt,dx^1,dx^2,dx^3)=(d\tau,dq,dp,d\sigma)$**:

$$
\frac{ds^2}{-2iPQF}=\frac F Pdp^2+\frac P F(d\sigma+q^2d\tau)^2
+\frac F Qdq^2-\frac Q F(d\tau-p^2d\sigma)^2.
$$

The introductory coordinate list on PDF p. 4 is $(p,q,\sigma,\tau)$, but the affine splitting for its component triples is not stated. Reading those triples in that same order gives a different matrix; reordering as above gives zero residual under $\Delta^2=PQ$, $PQF\Delta\ne0$. This is a missing convention resolved by an explicit check. The source's broader identification with the general Plebański–Demiański Einstein–Maxwell family is not verified here: no explicit quartic coefficients, matter field or full conformal-scale convention are supplied in the example.

## Simplicity turns two-forms into weighted lines

The source's cosmological normalization is

$$
S_P=\frac1\kappa\int\left[B^I\wedge\mathcal F^I
-\frac12(\Psi^{IJ}+\Lambda\delta^{IJ})B^I\wedge B^J\right],
$$

with $\Psi$ symmetric tracefree. Keep this $\Lambda$ convention; do not silently replace it by the usual $\Lambda_{\rm phys}/3$ coefficient. The five simplicity constraints imply $B^I\wedge B^J=\mathcal V_4\delta^{IJ}$, $\mathcal V_4=\tfrac13B^K\wedge B^K$.

Choose an oriented internal null basis with

$$
h=\begin{pmatrix}0&1&1\\1&0&1\\1&1&0\end{pmatrix},\qquad
h^{-1}=\frac12\begin{pmatrix}-1&1&1\\1&-1&1\\1&1&-1\end{pmatrix},\quad
f_{ij}{}^k=\sqrt2\epsilon_{ijm}h^{mk}.
$$

The $\sqrt2$ assumes the selected internal orientation. Then $B=B_i n^i$ and $B_i\wedge B_j=\mathcal V_4h_{ij}$. Diagonal entries vanish, so each nonzero $B_i$ is decomposable; off-diagonal entries fix relative line geometry. Nondegeneracy means $\mathcal V_4\ne0$.

Write $\Omega=dt\wedge\epsilon$, $\epsilon=\rho d^3x$, and

$$
B_i=dt\wedge\mu_i+\iota_{v_i}\epsilon,\quad
\mu_i=\rho m_{ia}dx^a,\quad L_i{}^a=\rho v_i^a,\quad D=\det L\ne0.
$$

Here $L$ has spatial density weight $+1$, $D$ weight $+2$, $R=L^{-1}$ weight $-1$. The off-diagonal simplicity equations admit a common translation $N^a=s^iL_i{}^a$ and opening $\omega$, both $s^i,\omega$ of weight $-1$:

$$
\ell_1=-N+\omega(L_3-L_2)+\mathbb C L_1,
\quad\ell_2=-N+\omega(L_1-L_3)+\mathbb C L_2,
\quad\ell_3=-N+\omega(L_2-L_1)+\mathbb C L_3.
$$

The variables carry weights and normalization beyond bare projective lines; it is this weighted triple that becomes canonical configuration data.

## Canonical swap, line curvature and seven constraints

The BF kinetic term is $\kappa^{-1}\int L_i{}^a\dot a_a{}^i$. Subtracting $\delta[\kappa^{-1}\int L_i{}^aa_a{}^i]$ from the field-space potential gives

$$
\pi_a{}^i=-a_a{}^i,\quad\Pi_j{}^i=L_j{}^a\pi_a{}^i,\quad
\Theta_{\rm line}=\frac1\kappa\int\operatorname{Tr}(\Pi\,\delta L L^{-1}).
$$

$\pi$ is Darboux momentum; $\Pi$ is right-trivialized. In matrix products the first (lower) index of $\Pi_j{}^i$ is its row. This makes $\operatorname{Tr}(\Pi\delta LL^{-1})=\pi_a{}^i\delta L_i{}^a$ explicit. The field-space symplectic form is unchanged by this exact shift; a finite-region action/variational principle still needs its boundary prescription.

Let $U=\dot LL^{-1}$, $\vartheta_i=L_i{}^a\partial_a\log D$, and

$$
\Gamma_{ij}{}^k=R_a{}^k(L_i{}^b\partial_bL_j{}^a-L_j{}^b\partial_bL_i{}^a)
-\tfrac12\vartheta_i\delta_j{}^k+\tfrac12\vartheta_j\delta_i{}^k,
\quad\gamma_i=\Gamma_{ji}{}^j=\partial_aL_i{}^a,
$$
$$
\nabla_i^{(w)}X=L_i{}^a\left(\partial_aX-\frac w2\partial_a\log D\,X\right).
$$

The weight terms are essential in the line curvature:

$$
\mathcal F_{ij}{}^k=-\nabla_i^{(1)}\Pi_j{}^k+\nabla_j^{(1)}\Pi_i{}^k
+\Gamma_{ij}{}^m\Pi_m{}^k+f_{mn}{}^k\Pi_i{}^m\Pi_j{}^n,
\quad\mathcal R^{ij}=\tfrac12\epsilon^{ikl}\mathcal F_{kl}{}^j.
$$

Substituting $\Pi_i{}^k=-L_i{}^aa_a{}^k$ cancels the $\vartheta$ and anholonomy terms, giving $\mathcal F_{ij}{}^k=L_i{}^aL_j{}^b\mathcal F_{ab}{}^k$. Thus this is ordinary connection curvature in a weighted frame, not a new tensor unrelated to the chiral theory.

The first-order action is

$$
S_{\rm line}=\frac1\kappa\int dt\,d^3x\,[\operatorname{Tr}(\Pi U)+\zeta^i\mathcal G_i-s^i\mathcal V_i+\omega\mathcal H],
$$
$$
\mathcal G_i=\gamma_i-f_{ij}{}^k\Pi_k{}^j,\quad
\mathcal V_i=\mathcal F_{ij}{}^j,\quad
\mathcal H=h_{ij}\mathcal R^{ij}-3\Lambda D.
$$

Equivalently define $\widehat\Pi^{ij}=h^{ik}\Pi_k{}^j+(2\sqrt2)^{-1}\epsilon^{kij}\gamma_k$. The constraints are $\widehat\Pi^{[ij]}=0$, $\mathcal R^{[ij]}=0$, $h_{ij}\mathcal R^{ij}=3\Lambda D$. With bulk functional gradients $\delta\mathcal C=\int\operatorname{Tr}(\mathcal E_\Pi\delta\Pi+\mathcal E_L\delta LL^{-1})$, evolution is $U=-\mathcal E_\Pi$, $\dot\Pi=[U,\Pi]+\mathcal E_L$.

On shell,

$$
\mathcal R^{ij}=D(\psi^{ij}+\Lambda h^{ij}),\qquad
\mathcal W^{ij}=D^{-1}\mathcal R^{ij}-\Lambda h^{ij}=\psi^{ij}.
$$

$\mathcal W$ is the chosen symmetric tracefree **chiral Weyl block**. It is neither the Ricci tensor nor the complete Weyl tensor. Equivalence to complex Einstein equations uses the nondegenerate simplicity sector and the connection compatibility equation; Lorentzian reality is a further restriction.

### Constraint algebra and finite-region boundary

Suppressing the common $\delta^3(x-y)$, the Darboux brackets imply

$$
\{L_i{}^a,\Pi_j{}^k\}=\kappa\delta_i{}^kL_j{}^a,\quad
\{\Pi_i{}^j,\Pi_k{}^\ell\}=\kappa(\delta_i{}^\ell\Pi_k{}^j-\delta_k{}^j\Pi_i{}^\ell).
$$

Use smeared $\mathsf G[\phi]=\kappa^{-1}\int\phi^i\mathcal G_i$, raw $\mathsf C[N]=\kappa^{-1}\int N^aR_a{}^i\mathcal V_i$, and $\mathsf H[u]=\kappa^{-1}\int u\mathcal H$, with $u$ weight $-1$. The ordinary spatial diffeomorphism generator is

$$
\mathsf D[N]=\mathsf C[N]-\mathsf G[N^aa_a].
$$

For closed $\Sigma$ or compactly supported smearings, the source gives the usual Gauss, diffeomorphism and scalar transformation brackets:

$$
\{\mathsf G[\phi],\mathsf G[\varphi]\}=\mathsf G[[\phi,\varphi]],\quad
\{\mathsf D[N],\mathsf G[\phi]\}=\mathsf G[\mathcal L_N\phi],\quad
\{\mathsf D[N],\mathsf D[N']\}=\mathsf D[[N,N']],
$$
$$
\{\mathsf G[\phi],\mathsf H[u]\}=0,\qquad
\{\mathsf D[N],\mathsf H[u]\}=\mathsf H[\mathcal L_Nu],\quad
\mathcal L_Nu=N^a\partial_au-u\partial_aN^a.
$$

With $\mathsf Q^{ab}=h^{ij}L_i{}^aL_j{}^b$,

$$
W^a=2\mathsf Q^{ab}(u\partial_bv-v\partial_bu),\qquad
\{\mathsf H[u],\mathsf H[v]\}=-\mathsf C[W]
=-\mathsf D[W]-\mathsf G[W^aa_a].
$$

The sign and factor 2 were independently checked through the coefficient of derivatives of the lapse smearings in the canonical bracket. The $\Lambda D$ term cancels from that coefficient. This verifies the bulk structure-function identity, not a boundary-completed algebra. On a region with boundary, the integrations by parts generate additional surface terms; this paper does not specify their charges or integrability conditions.

For a surface conormal density $\mathfrak n_a$, set $\mathfrak F_i=L_i{}^a\mathfrak n_a$. On the chosen real spacelike sector and physical metric normalization,

$$
A[S]=\int_S\sqrt{h^{ij}\mathfrak F_i\mathfrak F_j}\,d^2\sigma,
$$

with $h^{ij}\mathfrak F_i\mathfrak F_j=\tfrac12[-\sum_i\mathfrak F_i^2+2\sum_{i<j}\mathfrak F_i\mathfrak F_j]$. The square-root branch is fixed by reality/spacelikeness. Multiplication by this function in a formal $L$ representation does not establish a discrete spectrum, inner product, or physical Hilbert space.

## Heavenly example: zero selected curvature, nonflat spacetime

Let $E_\Theta=\Theta_{xx}\Theta_{yy}-\Theta_{xy}^2+\Theta_{xp}+\Theta_{yq}=0$. Then

$$
ds_\Theta^2=2dp(dx-\Theta_{yy}dp+\Theta_{xy}dq)
+2dq(dy+\Theta_{xy}dp-\Theta_{xx}dq).
$$

Define $X_h=\partial_x$, $Y_h=\partial_y$, $U_h=\partial_p+\Theta_{yy}\partial_x-\Theta_{xy}\partial_y$, $V_h=\partial_q-\Theta_{xy}\partial_x+\Theta_{xx}\partial_y$. With $e_0=X_h$, $E_h=\operatorname{span}\{Y_h,V_h,U_h-X_h\}$, the three line representatives are

$$
\mathcal P_1=2X_h\wedge Y_h,\quad
\mathcal P_2=2U_h\wedge V_h,\quad
\mathcal P_3=2(U_h-Y_h)\wedge(V_h+X_h).
$$

For $\Omega=dp\wedge dq\wedge dx\wedge dy$, explicit exterior algebra gives $B_i\wedge B_j=4h_{ij}\Omega$, $\mathcal G=4g_\Theta\Omega$, and $*B_i=B_i$. These three algebraic identities do not need $E_\Theta=0$. The exterior derivatives are $dB_1=0$ and, in the ordered triple components $(pqx,pqy,pxy,qxy)$, $dB_2=dB_3=(2\partial_xE_\Theta,2\partial_yE_\Theta,0,0)$; the heavenly equation therefore closes them. The compatible selected chiral connection can then be zero, so $\mathcal W=0$ in that sector.

For the explicit witness $\Theta=x^4/24$, xAct gives $R_{\mu\nu}=0$ but $R_{qxqx}=1$ in its reported curvature convention. Thus the opposite Weyl chirality remains nonzero. This is a useful concrete check against identifying the line-curvature matrix with full spacetime curvature.

## Why momentum elimination is algebraic

Set

$$
\mathsf M_{ij}=\epsilon_{kij}s^k+\omega h_{ij},\quad
\mathsf M_i{}^j=\mathsf M_{ik}h^{kj},\quad
\chi=\omega^2+\tfrac12h_{ij}s^is^j,\quad\det\mathsf M=\omega\chi.
$$

All products below use the mixed matrix. Define

$$
\mathsf S_r{}^{ij}=\mathsf M_{kr}\epsilon^{kij},\qquad
\mathsf B_r{}^j=-\zeta^mf_{mr}{}^j+\nabla_i^{(-1)}\mathsf S_r{}^{ij}
+\gamma_i\mathsf S_r{}^{ij}+\tfrac12\mathsf S_r{}^{ik}\Gamma_{ik}{}^j,
\qquad\mathsf Y=U+\mathsf B.
$$

The curvature derivative term is $-\mathsf S_r{}^{ij}\nabla_i^{(1)}\Pi_j{}^r$. Integrating it by parts yields $\nabla_i^{(-1)}\mathsf S+\gamma_i\mathsf S$ as its coefficient; it leaves no derivative on $\Pi$. The remaining curvature is quadratic in $\Pi$. Independent expansion verifies that the first-order momentum sector is

$$
\operatorname{Tr}(\Pi\mathsf Y)+\tfrac12\operatorname{Tr}[\Pi\mathbb L(\Pi)],\qquad
\mathsf Y=-\mathbb L(\Pi),
$$
$$
\mathbb L(X)=\sqrt2\left[X\mathsf M+\mathsf MX-\operatorname{Tr}(\mathsf M)X
-\operatorname{Tr}(X)\mathsf M+
(\operatorname{Tr}\mathsf M\operatorname{Tr}X-\operatorname{Tr}(\mathsf MX))I\right]
=\sqrt2\,D(\operatorname{adj})_{\mathsf M}(X).
$$

The quadratic form is self-adjoint under the bilinear trace pairing $\operatorname{Tr}(XY)$, not a Hermitian positive norm. For $\det\mathsf M\ne0$,

$$
\mathbb L^{-1}(Z)=\frac{\tfrac12\operatorname{Tr}(Z\mathsf M)\mathsf M-\mathsf MZ\mathsf M}{\sqrt2\det\mathsf M},\quad
\Pi=\frac{\mathsf M\mathsf Y\mathsf M-\tfrac12\operatorname{Tr}(\mathsf Y\mathsf M)\mathsf M}{\sqrt2\det\mathsf M}.
$$

The determinant is $\det\mathbb L=32\sqrt2(\det\mathsf M)^3=32\sqrt2\omega^3\chi^3$. Substitution gives

$$
\mathcal L_{(2)}=\frac1\kappa\left[\zeta^i\gamma_i-3\Lambda\omega D+
\frac{\operatorname{Tr}(\mathsf Y\mathsf M\mathsf Y\mathsf M)-\tfrac12[\operatorname{Tr}(\mathsf Y\mathsf M)]^2}{2\sqrt2\det\mathsf M}\right].
$$

Thus $L$ is the only dynamical configuration, but $s,\omega,\zeta$ remain multipliers; a fully unconstrained metric action has not been obtained.

## Null evolution is not a null slice

In the same conformal class,

$$
G_{00}=2D^2\omega\chi,\quad
G_{0a}=D^2\omega R_a{}^ih_{ij}s^j,\quad
G_{ab}=D^2\omega R_a{}^iR_b{}^jh_{ij},\quad
\det G=4D^6\omega^6.
$$

For $D\omega\ne0$, $\chi=0$ says $G(\partial_t,\partial_t)=0$ while the metric remains invertible. In fact block inversion gives

$$
G^{00}=\frac1{2D^2\omega^3}\ne0.
$$

So the normal $dt$ does not become null in this chart. Calling this a null **evolution vector** locus is precise; interpreting it as a null foliation would change the problem. At $\omega=0$ the metric itself degenerates and the three lines concur at $-N$; the continuation below does not cover that case or $D=0$.

The characteristic polynomial is $(z-\omega)(z^2-2\omega z+\chi)$. On $\chi=0$, use the distinct eigenvalues $(2\omega,\omega,0)$. For $\mathfrak D=D(\operatorname{adj})_{\mathsf M}$, the kernel is

$$
\operatorname{span}\{E_{12},E_{21},\operatorname{diag}(-2,1,0)\},\qquad\operatorname{rank}\mathfrak D=6.
$$

Hence $\mathsf Y=-\sqrt2\mathfrak D(\Pi)$ is soluble iff

$$
y_{12}=y_{21}=0,\qquad y_{22}-2y_{11}=0.
$$

These are algebraic velocity compatibility conditions, not three additional propagating fields or an automatic new gauge quotient.

## Finite local and invariant partial Legendre transforms

Use $\xi_2=2\omega-u$, $\xi_1=\omega$, $\xi_0=u$ and $\chi=u(2\omega-u)$. Since $\partial_u\chi|_0=2\omega\ne0$, this is a local transverse coordinate. Define $\widehat{\mathcal L}=\sqrt2\ell_{\rm Leg}$, omitting the momentum-independent terms in $\mathcal L_{(2)}$. The local partial transform is

$$
\begin{aligned}
\widehat{\mathcal L}_{\rm reg}={}&\frac{y_{13}y_{31}}{\xi_1}+\frac{y_{23}y_{32}}{\xi_2}
-\frac{y_{11}y_{33}}{\xi_1}
+\upsilon_1y_{21}+\upsilon_2y_{12}-u\upsilon_1\upsilon_2\\
&+\upsilon_3(\xi_1y_{22}-\xi_2y_{11}-uy_{33})
-\xi_2\xi_1u\upsilon_3^2.
\end{aligned}
$$

For nonzero $u$, auxiliary equations give $\upsilon_1=y_{12}/u$, $\upsilon_2=y_{21}/u$ and $\upsilon_3=(\xi_1y_{22}-\xi_2y_{11}-uy_{33})/(2\xi_2\xi_1u)$. Substitution exactly reproduces the fully reduced density. At $u=0$ their quadratic terms vanish and their equations are precisely the three compatibility conditions. The density is smooth even though generic solutions obtained by eliminating all auxiliaries need not have a finite $u\to0$ limit.

For an eigenframe-free expression on the null locus, let $P_0,P_\omega,P_{2\omega}$ be the polynomial projectors; e.g.

$$
P_0=\frac{(\mathsf M-\omega I)(\mathsf M-2\omega I)}{2\omega^2},\quad
P_\omega=\frac{\mathsf M(2\omega I-\mathsf M)}{\omega^2},\quad
P_{2\omega}=\frac{\mathsf M(\mathsf M-\omega I)}{2\omega^2}.
$$

Set $Z=P_\omega-2P_{2\omega}$, $\operatorname{Tr}Z^2=5$ and

$$
K_{\mathsf M}(X)=P_{2\omega}XP_\omega+P_\omega XP_{2\omega}
+\frac{\operatorname{Tr}(ZX)}5Z.
$$

This is the trace-pairing projector onto $\ker\mathfrak D$, with $K^2=K$, $\mathfrak DK=K\mathfrak D=0$. The compatibility equation is $K(\mathsf Y)=0$. The polynomial group inverse is

$$
\mathbb G_{\mathsf M}=\frac1\omega\left[
\frac{39}{20}\frac{\mathfrak D}{\omega}
+\frac34\left(\frac{\mathfrak D}{\omega}\right)^2
-\frac7{20}\left(\frac{\mathfrak D}{\omega}\right)^3
-\frac3{20}\left(\frac{\mathfrak D}{\omega}\right)^4\right].
$$

It satisfies $\mathfrak D\mathbb G=\mathbb G\mathfrak D=I-K$, $K\mathbb G=\mathbb GK=0$. One way to understand its coefficients is to interpolate $1/x$ on the nonzero spectrum of $\mathfrak D/\omega$: $\{\sqrt5,-\sqrt5,-1,-2\}$, while setting the polynomial to zero at zero. The multiplicities are $1,1,2,2$ plus a threefold zero.

For $K(\Upsilon)=\Upsilon$ and $\Pi_{\rm sc}=\sqrt2\Pi$,

$$
\Pi_{\rm sc}=-\mathbb G_{\mathsf M}(\mathsf Y)+\Upsilon,\qquad
\widehat{\mathcal L}_{\rm inv}=-\tfrac12\operatorname{Tr}[\mathsf Y\mathbb G_{\mathsf M}(\mathsf Y)]
+\operatorname{Tr}(\Upsilon\mathsf Y).
$$

Differentiating with respect to the three kernel components enforces compatibility. The six reconstructed components and three retained components together recover the original momentum information.

For a neighbourhood of $u=0$, define distinct-eigenvalue projectors $P_{\xi_i}=\prod_{j\ne i}(\mathsf M-\xi_jI)/(\xi_i-\xi_j)$ and

$$
Z_u=-\xi_2P_{\xi_2}+\xi_1P_{\xi_1}-\xi_0P_{\xi_0},\quad
K_u(X)=P_{\xi_2}XP_{\xi_1}+P_{\xi_1}XP_{\xi_2}
+\frac{\operatorname{Tr}(Z_uX)}{\operatorname{Tr}Z_u^2}Z_u.
$$

For $u\ne0$ this is a selected auxiliary subbundle, not a kernel. Let $P_u^\perp=I-K_u$, $A_u=P_u^\perp\mathfrak DP_u^\perp+K_u$, $\mathbb G_u=P_u^\perp A_u^{-1}P_u^\perp$, and $J_u=P_u^\perp[\mathsf Y+\mathfrak D(\Upsilon)]$, $K_u\Upsilon=\Upsilon$. Then

$$
\widehat{\mathcal L}_{\rm reg}^{\rm inv}
=\operatorname{Tr}(\Upsilon\mathsf Y)
+\tfrac12\operatorname{Tr}[\Upsilon\mathfrak D(\Upsilon)]
-\tfrac12\operatorname{Tr}[J_u\mathbb G_u(J_u)].
$$

This is the Schur elimination of the regular complement in the quadratic first-order action. An exact calculation gives $\det A_0=-20\omega^6\ne0$ and $\mathbb G_u\to\mathbb G_{\mathsf M}$. Eliminating auxiliaries away from zero reproduces $\widehat{\mathcal L}$; keeping them gives the finite limit. The formula is similarity covariant and avoids choosing eigenvectors, but its variation must still include field dependence of $\mathsf M,K_u$ and the kernel-bundle constraint. Local smoothness does not establish a global chart across eigenvalue collisions or $\operatorname{Tr}Z_u^2=0$ away from the chosen neighbourhood.

## Local translation and derivation ledger

| Stage | Assumptions / intermediate object | Reusable conclusion |
| --- | --- | --- |
| three lines → metric | independent nondegenerate Plücker data, fixed orientation | conformal geometry; weighted data fixes subsequent normalization |
| simplicity → $L$ | $\mathcal V_4\ne0$, $D\ne0$ | simple null-basis two-forms |
| connection → line configuration | exact shift of field-space potential | $T^*GL(3,\mathbb C)$ canonical chart |
| constraint action → momentum quadratic form | spatial boundary terms controlled | local adjugate Hessian |
| $\omega\chi\ne0$ | invertible Hessian | ordinary full Legendre elimination |
| $\chi=0$, $D\omega\ne0$ | rank six plus three compatibility conditions | finite partial transform with retained momenta |
| smooth transverse $u$ | distinct eigenvalues and invertible complement | local constrained continuation, not global PDE well-posedness |

For constrained scalar/Proca mode expansions, the useful method is to separate the kernel compatibility equation from inversion of the regular block, rather than divide by a vanishing determinant or discard the kernel. This paper supplies an explicit geometric test case and a polynomial inverse. For CPS/regional sewing, the useful objects are the exact canonical potential shift and the bulk constraint generator; a regional action, surface symplectic terms and sewing conditions would still need to be supplied.

## Verification log and limitations

**Checked — component/exterior algebra through xAct runtime:** general Urbantke block formula; the known-family metric after explicitly identifying the affine coframe; heavenly simplicity, factor-four metric normalization, self-duality and exterior derivatives. xAct curvature for $\Theta=x^4/24$ gives a zero Ricci matrix and $R_{qxqx}=1$.

**Checked — Mathematica:** adjugate derivative formula; $\mathsf M$ characteristic polynomial; inverse and $9\times9$ determinant of the Legendre operator; rank-six kernel; projector/group-inverse identities; local auxiliary elimination; invariant Schur elimination and its null group-inverse limit; metric determinant and $G^{00}$; quadratic momentum Hessian from the source constraints; Hamiltonian–Hamiltonian derivative-smearing coefficient, including cancellation of the cosmological term. Residuals for these identities were zero. The diagonal-eigenframe calculations extend by similarity on the distinct-eigenvalue neighbourhood specified by the source; the adjugate derivative identity itself was checked in the general source matrix.

**Checked — Sage:** exact Jacobi identities and $h$ invariance for all components of $f_{ij}{}^k=\sqrt2\epsilon_{ijm}h^{mk}$, with $\det h=2$.

**Verified:** the central finite partial-Legendre mechanism and its precise nondegenerate null-evolution scope, along with the listed algebraic/geometric checks. The direct canonical swap also reproduces the displayed pointwise brackets by the Darboux product rule.

**Assumptions:** complex chiral theory; nondegenerate simplicity and $D\ne0$; $\omega\ne0$ at the null locus; numerical epsilon conventions and the stated orientation; density weights; closed spatial surface or vanishing boundary smearings for the bulk algebra; local spectral neighbourhood for the smooth completion. Real Lorentzian physics requires additional preserved reality conditions.

**Not independently verified:** full boundary-completed first-class algebra and charges; global equivalence including all reality conditions and topological sectors; a general proof of hyperbolicity/well-posed evolution through $\chi=0$; full Einstein–Maxwell identification in the known-family example; quantum measure, physical Hilbert space or area spectrum. The first-order/partial-second-order algebraic equivalence does not prove these.

**Failed:** no irreparable contradiction found in the central partial-Legendre formulas. The known-family example needs the coframe convention supplied above; treating the printed coordinate list as its affine component order fails the direct matrix check.

**Blocked / recovered attempts:** initial verification scripts had a malformed scalar/matrix dot and an array-head/dummy-symbol collision, producing unevaluated expressions; corrected independent scripts returned zero and only those corrected checks count. A combined Boolean kernel-report expression generated indeterminates; all seven kernel/group identities were rerun separately and passed. PDF text extraction reported a font warning; TeX plus rendered PDF pp. 4 and 11 resolved conventions and polynomial coefficients. No unresolved source-access or computation blocker.

All source/PDF/render/check artifacts stayed outside the vault. Same-day overview: [[2026_10_19_overview]].
