# Appendix UN. Exact determining identities for the universal low operator

The all-degree form of the operator in UN-04 is proved by differential order, the exact character and weighted degree. This appendix records a short exact calculation of its coefficient. It also documents two independent ways to compute the determining data, so that the general statement can be reproduced without referring to an old numerical fit. The source theorem is [HP, App. F, §7], with the further audit in [A3, App. D].

## UN-A. Constructing the degree-six defect operator

Subtract the affine pair function through channels zero and two. Through total degree six the remaining pair operator is

\[
w_T=v\Pi_4+w\Pi_6,
\]

with a term absent when its relative degree exceeds $T$. Use the physical pair Gram matrix and the finite spectral projectors described in Appendix ST-C.2. Two equivalent, independently implementable constructions are:

1. Interpolate the Casimir matrix:
$\Pi_k=\prod_{\ell\ne k}(C-C_\ell)/(C_k-C_\ell)$.
2. Raise the primary $(z_1-z_2)^k$ to degree $T$, and form its rank-one projector using the exact Gram form.

Both use the positive pair norm $j!(T-j)!/[(d)_j(d)_{T-j}]$. A check of idempotence alone would not verify the physical normalization; the identity $\Pi_k^*\Gamma_T=\Gamma_T\Pi_k$ is also checked.

Let $F_{ij}$ be the creation polynomial obtained from the input pair $(i,j)$, then set $a_1=0$ to extract centered coordinates. For
$y=c_3=a_3-3a_1a_2+2a_1^3$,
only two source terms of $y^2$ can contribute after this substitution:

\[
\mathscr B(y^2)\big|_{a_1=0}
=F_{33}-6xF_{13}.
\]

Indeed the $a_3^2$ source contributes its $(3,3)$ pair, and
$-6a_1a_2a_3$ contributes the $(1,3)$ pair with spectator $a_2$.
Every other source either keeps an $a_1$ spectator or has total pair degree below four, where the defect operator vanishes. In particular

\[
F_{13}=
-\frac{v(d+1)(d+3)}{2(2d+3)(2d+5)}(c_4+3x^2).
\]

This formula follows from the rank-one degree-four projector onto
$(z_1-z_2)^4$; no high-degree matrix enters.

Put

\[
D_0=4(2d+3)(2d+5)(2d+7)(2d+9).
\]

The complete unretracted polynomial is

\[
\mathscr B(y^2)\big|_{a_1=0}
=b_6c_6+b_{24}xc_4+b_{222}x^3+b_{33}y^2,
\]

where

\[
b_6=
\frac{(d+3)(d+4)(d+5)[(6d+21)v-(2d+3)w]}{D_0},
\]

\[
\begin{aligned}
b_{24}=\frac{3(d+3)}{D_0}\big[
&(14d^3+135d^2+397d+336)v\\
&-(10d^3+105d^2+335d+300)w\big],
\end{aligned}
\]

\[
b_{222}=\frac{9v(d+1)(d+3)}{(2d+3)(2d+5)},
\]

\[
b_{33}=
\frac{2(d+3)(d+4)[(6d^2+33d+42)v+(10d^2+65d+75)w]}{D_0}.
\]

Apply the retraction $q(c_4)=-3x^2$ and the explicit $q(c_6)$ of UN-04. Combining the $x^3$ and $y^2$ coefficients gives the two exact identities

\[
-3b_{24}+b_{222}+b_6[x^3]q(c_6)=4\varepsilon,
\qquad
b_{33}+b_6[y^2]q(c_6)=\varepsilon,
\]

\[
\varepsilon=
\frac{27vw(d+3)(d+4)(2d+9)}
{2(2d+5)[15(2d+7)(d+5)v+(2d+3)(d+2)w]}.
\]

Thus the determining value is $\varepsilon J$. The five values on
$1,x,y,x^2,xy$ vanish for the affine-subtracted operator. They may be checked by the same finite projector construction, or deduced after the proved order and cusp-image conditions, because their weights are less than the weight six of $J$. Restoring the affine part adds $sE(E-1)$.

This is an identity over $\mathbb Q(d,v,w)$ whenever the retraction denominators are nonzero. The nonnegative-defect theorem supplies a positive denominator and an all-degree stable retraction; it is not an extra algebraic assumption hidden in the numerator calculation. When $v,w>0$, it also supplies the positivity needed for simple ordered low gaps.

## UN-B. What was independently verified in this synthesis

The Casimir-interpolation validator constructs each $\Pi_k$ as a polynomial in the direct differential Casimir, checks its physical adjoint and idempotence, counts unordered occupied pairs literally, recursively obtains $q(c_4),q(c_5),q(c_6)$, and verifies all six determining jets over $\mathbb Q(d,v,w)$. It then repeats the computation at the exact masses $3/2,2,7/3,3$. Its signed-defect check simplifies the exact ratio

\[
\alpha_{p,6}/\alpha_{p,4}
=28(p-5)(p-4)/[11(p+8)(p+9)]
\]

symbolically, and its same-support check evaluates the phase-boundary defects and full scalar $(4,0)$ energy.

A new separate validator for this master note uses rank-one primary descendants instead of Casimir interpolation. It recomputes $F_{33},F_{13}$, the unretracted polynomial above and its exact retraction, then checks the Einstein substitution and the large-mass limit $27/34$. It additionally verifies the finite Gegenbauer recurrence for $b=0,\ldots,30$, sixty symbolic diagonal extractions of the general four-coefficient $C_2$ operator through weight 24, the analytic-charge Jacobian, the two rational Jordan-root isolation intervals and the nonnegative-coefficient certificate used in the all-mass pair bound.

The general theorems do not depend on the finite ranges of these latter checks. Their roles are distinct: the rational determining identities, together with the local order proof, establish an all-degree operator; the additional finite recurrences and isolated examples are independent error checks. The execution manifest records actual commands, parameters, elapsed times, interpreter version, hashes and every required output. The wrapper fails if any task is absent, if a symbolic identity is missing, or if physical and auxiliary inertia dimensions or strict endpoint conditions disagree.
