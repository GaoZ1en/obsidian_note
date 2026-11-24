# Independent local second-order stress-flow calculation

## Result and status

This calculation uses the local stress algebra, not a supplied second-order Hamiltonian or spectral fitting. No existing second-order candidate note was consulted. The circle has circumference \(L\), \(\hbar=v=1\), and \(c_L=c_R=c=1/2\). Write
\[
\kappa=\frac{c}{24\pi}=\frac1{48\pi},\qquad
h_0=r+l,\quad p_0=r-l,\quad q_0=r+l,
\]
where \(h=T^{00}\), \(p=T^{01}=T^{10}\), \(q=T^{11}\), and the Heisenberg derivative is \(D_H=i[H,\cdot]\). Thus conservation means
\[
D_Hh+\partial_xp=0,\qquad D_Hp+\partial_xq=0.
\]
All spatial integrations below are periodic circle integrations. The expansion is
\[
H_\lambda=H_0+\lambda V_1+\lambda^2V_2+O(\lambda^3),\qquad
V_1=-4\int rl,
\]
with no factorial.

The following conclusions have different strengths:

1. **Exact first-order equal-time current result.** In the identity-Virasoro local sector, requiring the momentum density to remain \(p=r-l\) and the energy flux to equal that same momentum density fixes
   \[
   \boxed{h_1=-4rl+4\kappa(r+l)'',\qquad q_1=-12rl+4\kappa(r+l)''.}
   \]
   These equations follow directly from the centrally extended stress algebra. They are not the result of expanding a classical square root.
2. **Conditional integrated second-order result.** If, in addition, the integrated Hamiltonian flow is defined by the symmetric cylinder finite part
   \[
   \partial_\lambda H_\lambda
   =-\int\operatorname{FP}_{\rm cyl}(h_\lambda q_\lambda-p_\lambda^2),
   \]
   in the canonical current frame just specified, then
   \[
   \boxed{V_2^{\rm FP}=8\int\bigl(:r^2:_{\rm cyl}\,l+r\,:l^2:_{\rm cyl}\bigr)
   +4\kappa\int\bigl(:(r')^2:_{\rm cyl}+:(l')^2:_{\rm cyl}+2r'l'\bigr).}
   \tag{1}
   \]
   At \(c=1/2\), \(4\kappa=1/(12\pi)\). The derivative term is a quantum central-term contribution and is absent from a literal pointwise classical square root.
3. **What is not proved.** Equation (1), including the displayed local finite-part representative used below, has not been shown here to satisfy the complete order-\(\lambda^2\) local stress Ward identity. In particular, a consistent renormalized extension of \(i[V_1,h_1(x)]\), including its overlapping equal-time contact singularities, has not been constructed. Nor has a background-metric/source completion been supplied. It is therefore not justified to identify (1) with a unique, fully constructed quantum Hilbert-stress Hamiltonian solely from the present calculation.
4. **Explicit nonuniqueness without a frame prescription.** There is a one-parameter, local perturbative canonical-frame transformation, accompanied by a stress improvement, which leaves \(V_1,h_1,q_1\) unchanged and restores \(p=r-l\) through second order, but shifts
   \[
   \boxed{V_2\longmapsto V_2+2\alpha\int r'l'.}
   \tag{2}
   \]
   It is a commutator with \(H_0\), hence has no diagonal unperturbed energy matrix elements. Spectrum checks cannot fix \(\alpha\).

The first two conclusions are proved below under the stated operator-product conventions. The third and fourth are substantive limitations, not a claim that a genuine contact anomaly has been found.

## 1. Local Virasoro algebra and first-order stress

Use the shifted cylinder modes
\[
A_n=L_n-\frac c{24}\delta_{n0},\qquad
B_n=\bar L_n-\frac c{24}\delta_{n0},
\]
with
\[
[A_m,A_n]=(m-n)A_{m+n}+\frac c{12}m^3\delta_{m+n,0},
\]
and the identical algebra for \(B\); the two algebras commute. The densities are
\[
r(x)=\frac{2\pi}{L^2}\sum_n A_n e^{2\pi inx/L},\qquad
l(x)=\frac{2\pi}{L^2}\sum_n B_n e^{-2\pi inx/L}.
\]
For an ordinary periodic test function \(f\), this gives
\[
\begin{aligned}
i\left[\int fr,r\right]&=-fr'-2f'r+\kappa f''',\\
i\left[\int fl,l\right]&=+fl'+2f'l-\kappa f'''.
\end{aligned}
\tag{3}
\]
In particular \(D_0r=-r'\), \(D_0l=+l'\). Since the opposite chiral algebra commutes, (3) also applies with an opposite-chiral operator as coefficient. Therefore
\[
\begin{aligned}
D_1r&=i[V_1,r]=4lr'+8l'r-4\kappa l''',\\
D_1l&=i[V_1,l]=-4rl'-8r'l+4\kappa r'''.
\end{aligned}
\tag{4}
\]
Unlike a commutator with a same-point composite product, these formulas require no coincident product of two fields from the same chirality.

For \(p=r-l\), (4) yields
\[
D_1p=12(rl)'-4\kappa(r+l)'''.
\]
Thus \(D_Hp+q'=0\) fixes
\[
q_1=-12rl+4\kappa(r+l)'',
\tag{5}
\]
up to a spatially constant identity term. Such an explicit circumference-dependent pressure counterterm is excluded here by the flat local scheme assumption.

The most general dimension-four density in the identity-Virasoro sector that integrates to the fixed \(V_1\) is
\[
h_1=-4rl+a r''+b l''.
\]
Using (4),
\[
D_1h_0+D_0h_1=(4\kappa-a)r'''+(b-4\kappa)l'''.
\]
The energy-flow equation with \(p_1=0\) therefore fixes \(a=b=4\kappa\), proving the boxed first-order result.

### The complete two-parameter first-order improvement family

If the momentum density is allowed to change by an improvement, both conservation equations hold for
\[
\begin{aligned}
h_1&=-4rl+a r''+b l'',\\
p_1&=(a-4\kappa)r''+(4\kappa-b)l'',\\
q_1&=-12rl+a r''+b l''.
\end{aligned}
\tag{6}
\]
Relative to the canonical solution, these are generated by the scalar-current improvement
\[
F_1=(a-4\kappa)r+(b-4\kappa)l,
\]
with
\[
\delta h=\partial_x^2F_1,\qquad
\delta p=-\partial_t\partial_xF_1,\qquad
\delta q=\partial_t^2F_1,
\tag{7}
\]
using the free equations in this first-order expression. Requiring \(p_1=0\) removes both parameters. Equation (7) is a statement about conserved flat currents; a covariant Hilbert-stress improvement requires, additionally, an appropriate scalar/source completion.

For explicitly defined null-current combinations
\[
\mathcal T_R=\frac{h+q+2p}{4},\qquad
\mathcal T_L=\frac{h+q-2p}{4},\qquad
\Theta=\frac{h-q}{4},
\]
the canonical first-order correction is
\[
\mathcal T_R=r+\lambda[-4rl+2\kappa(r+l)''],\qquad
\mathcal T_L=l+\lambda[-4rl+2\kappa(r+l)''],\qquad
\Theta=2\lambda rl.
\]
They need not remain chiral for nonzero coupling. The trace in these conventions is \(q-h=-8\lambda rl+O(\lambda^2)\).

## 2. The point-split products needed for the integrated flow

A local point-split convention must be stated before multiplying the first-order currents. It does not follow from writing a classical square root.

Set \(R=2\pi r\), \(S=2\pi l\) for this calculation; these fields retain their physical dimensions. In a flat local cylinder coordinate, the singular right-moving OPE at a spatial separation is
\[
R(x+\epsilon)R(x)
\sim\frac{c}{2\epsilon^4}-\frac{2R(x)}{\epsilon^2}-\frac{R'(x)}{\epsilon}.
\tag{8}
\]
The left-moving product has the same spatial pole coefficients. The sign of the double pole follows from continuing the usual holomorphic cylinder coordinate to a spatial separation. Define right-anchored conformal normal products
\[
Q_R=:R^2:_{\rm cyl},\qquad J_R=:(R')^2:_{\rm cyl},
\]
and analogously for \(S\). The finite terms inherent in cylinder normal ordering are retained; one must not replace \(Q_R\) by a bare normal-ordered sum of shifted modes without its finite linear and constant terms.

For the midpoint split, locality away from coincidence and the descendant normal-product identities give
\[
\begin{aligned}
R_+R_-={}&\frac{c}{2\epsilon^4}-\frac{2R}{\epsilon^2}
+Q_R+\frac14R''\\
&+\epsilon^2\left(\frac18Q_R''-\frac12J_R+\frac1{64}R''''\right)+O(\epsilon^4),
\end{aligned}
\tag{9}
\]
where \(R_\pm=R(x\pm\epsilon/2)\). For example, the first descendant identity is
\[
:R'R:-:RR':=\frac16R''',
\]
which is needed when passing from an anchored to a midpoint split. Omitting such finite descendant terms changes the local representative.

For two fields \(X,Y\), let \(X\circ Y\) denote the finite part of the symmetrized midpoint split \((X_+Y_-+Y_+X_-)/2\). Applying (9), including the Taylor expansion of the opposite-chiral spectator field, gives
\[
\begin{aligned}
(R+S)\circ(RS)
={}&Q_RS+RQ_S+\frac{c}{768}(R+S)'''',\\
(R+S)\circ(R+S)''
={}&\frac12(Q_R+Q_S)''-J_R-J_S\\
&+\frac3{32}(R+S)''''+RS''+SR''.
\end{aligned}
\tag{10}
\]
These identities have no simultaneous same-chiral double collision: each term involves one ordinary stress OPE and an opposite-chiral spectator. Thus they are considerably simpler than the composite-composite commutator needed for the second-order Ward identity.

### Association order: full-composite FP is not pairwise symmetric FP

Here \(Q_R\) is the right-anchored standard product, not the midpoint pair product. Define the latter separately by
\[
Q_R^{\rm sym}=Q_R+\frac14R'',\qquad
Q_S^{\rm sym}=Q_S+\frac14S''.
\tag{10a}
\]
The first line of (10) uses the full split composite \((R+S)_+(RS)_-\), together with its exchanged partner. Its opposite-chiral spectator is evaluated at a displaced point. The finite contribution from its Taylor expansion cancels the \(R''/4,S''/4\) terms in (10a). Therefore one may not replace the right side of that line by \(Q_R^{\rm sym}S+RQ_S^{\rm sym}\) at the same point. Taking a pairwise finite part first and then multiplying by the spectator is a different finite local prescription.

For example, at \(L=2\pi\), with \(\mathcal D_{\rm mix}=\int dx\,R'S'/(2\pi)\), the two cubic Hamiltonian terms differ by
\[
\frac12\int\frac{dx}{2\pi}
\left[(Q_R^{\rm sym}-Q_R)S+R(Q_S^{\rm sym}-Q_S)\right]
=-\frac14\mathcal D_{\rm mix}.
\tag{10b}
\]
This is an additional finite canonical-frame change, not an alternative notation for the same determinant finite part. The coefficient \(\kappa\) in the central derivative contribution is unchanged in this comparison. A calculation using the pairwise prescription must track this extra shift when comparing off-diagonal vertices.

Returning to the physical densities, periodic integration removes the displayed total derivatives:
\[
\begin{aligned}
\int h_0\circ(rl)
&=\int\bigl(:r^2:_{\rm cyl}l+r:l^2:_{\rm cyl}\bigr),\\
\int h_0\circ h_0''
&=-\int\bigl(:(r')^2:_{\rm cyl}+:(l')^2:_{\rm cyl}+2r'l'\bigr).
\end{aligned}
\tag{11}
\]

## 3. Derivation of the specified-FP integrated Hamiltonian

Assume the integrated determinant flow written at the beginning of this note and the fixed canonical frame \(p_\lambda=p_0\). The first-order conserving stress gives
\[
h_1+q_1=-16rl+8\kappa h_0''.
\]
At order \(\lambda\) in \(\partial_\lambda H\),
\[
\begin{aligned}
2V_2^{\rm FP}
&=-\int\bigl(h_1\circ h_0+h_0\circ q_1\bigr)\\
&=16\int h_0\circ(rl)-8\kappa\int h_0\circ h_0''.
\end{aligned}
\tag{12}
\]
Equations (11) and (12) prove (1) under the stated finite-part integrated-flow assumption.

### The distinction between integrated and pointwise flow is essential

The canonical conserving density does **not** obey the literal pointwise equation \(\partial_\lambda h=-\det T\) already at \(\lambda=0\), because
\[
h_1=-4rl+4\kappa h_0''.
\]
A local density flow must instead include an improvement,
\[
\partial_\lambda h=-\operatorname{FP}(hq-p^2)+\partial_xK_\lambda,\qquad
K_0=4\kappa h_0'.
\tag{13}
\]
The first-order conservation calculation determines \(K_0\). It does not determine \(K_1\). The integrated equation is insensitive to \(K_\lambda\).

For reference, the particular local representative obtained by taking \(-\frac12\) times the first determinant correction, before adding \(K_1'/2\), is
\[
\begin{aligned}
h_2^{\rm FP,rep}={}&8\bigl(:r^2:l+r:l^2:\bigr)
+4\kappa\bigl(:(r')^2:+:(l')^2:-rl''-lr''\bigr)\\
&-2\kappa\bigl(:r^2:+:l^2:\bigr)''
-\frac{c}{192\pi^2}h_0''''.
\end{aligned}
\tag{14}
\]
All normal products in (14) use the same cylinder convention. Its integral is (1). Equation (14) is **not** asserted to be the second-order conserving energy density. The undetermined total derivative in (13), and the composite contact prescription in the Ward calculation, must be fixed before that assertion is made.

## 4. An explicit second-order canonical-frame freedom

There is a useful algebraic nonuniqueness test that does not use energy eigenvalues. Let
\[
G=\int r l',\qquad U_\lambda=\exp(i\alpha\lambda^2G),\quad\alpha\in\mathbb R.
\tag{15}
\]
The generator is Hermitian as a formal point-split local operator, translation invariant, and parity even after spatial integration. Only single-stress commutators are needed at this order. Equations (3) give
\[
\begin{aligned}
i[G,r]&=-l'r'-2l''r+\kappa l'''',\\
i[G,l]&=-r'l'-2r''l+\kappa r''''.
\end{aligned}
\tag{16}
\]
Consequently
\[
i[G,H_0]=2\int r'l',
\tag{17}
\]
and
\[
i[G,p]=2(r''l-rl'')-\kappa p''''.
\tag{18}
\]
Set
\[
F=-2rl+\kappa h_0''.
\]
A direct free-evolution calculation shows
\[
\partial_xD_0F=2(r''l-rl'')-\kappa p''''=i[G,p].
\tag{19}
\]
First conjugate the stress by \(U_\lambda\), then add the order-\(\lambda^2\) version of the conserved improvement (7), with scalar-current parameter \(\alpha F\). Equation (19) cancels the momentum-density change. The resulting stress still has \(p=r-l\) through the order in question, while (17) shifts the Hamiltonian exactly as in (2). Its local energy-density shift is
\[
\Delta h_2=\alpha\left[-4rl''-6r'l'-4r''l+2\kappa h_0''''\right],
\tag{20}
\]
whose integral is \(2\alpha\int r'l'\).

This argument is an order-by-order local-operator statement. It does not claim a nonperturbative self-adjoint realization of the unsmeared irrelevant generator (15).

The shift is a time derivative modulo a spatial derivative:
\[
D_0(rl')=-2r'l'+\partial_x(rl').
\]
Accordingly, the integrated ambiguity is \(H_0\)-commutator exact, and has zero matrix elements within an equal-energy block. A definition of the composite flow that fixes time-derivative finite terms, or an explicit fixed canonical frame, is needed to remove this freedom. Merely imposing the finite-size energy spectrum cannot do so.

## 5. Independent highest-weight check, performed after the local derivation

This is a check of (1), not its definition. Work temporarily at \(L=2\pi\), and put
\[
d=\frac c{12},\qquad \eta=\frac{2\lambda}{\pi},\qquad
A_0|a,b\rangle=a|a,b\rangle,\quad B_0|a,b\rangle=b|a,b\rangle.
\]
The state is a product of chiral highest-weight states, so positive Virasoro modes annihilate it. Then
\[
H=H_0-\eta\sum_nA_nB_n+\eta^2\mathcal V_2+\cdots.
\]
In these variables (1) is
\[
\mathcal V_2=\int\frac{dx}{2\pi}\left[
\frac12(Q_RS+RQ_S)+\frac d4(J_R+J_S+2R'S')\right].
\]
Cylinder point splitting gives
\[
\langle Q_R\rangle=a^2-\frac a6+\frac d{120},\qquad
\langle J_R\rangle=\frac a{60}-\frac d{252},
\tag{21}
\]
with \(a\to b\) for \(S\). These follow, for example, by expanding
\[
\langle R_+R_-\rangle
=a^2+\sum_{n\ge1}(2na+dn^3)e^{in\epsilon}
=\frac{c}{2\epsilon^4}-\frac{2a}{\epsilon^2}
+a^2-\frac a6+\frac d{120}
+\epsilon^2\left(-\frac a{120}+\frac d{504}\right)+\cdots
\]
and comparing with (9). Therefore the direct vertex contribution is
\[
\langle\mathcal V_2\rangle
=\frac12ab(a+b)-\frac{ab}{6}+\frac{d(a+b)}{120}-\frac{d^2}{504}.
\tag{22}
\]
Using the same analytic/zeta finite-part convention for the regulated intermediate-state sum, the iterated first-order contribution is
\[
\begin{aligned}
E_{\rm iter}^{(2)}
&=-\sum_{n\ge1}\frac{(2na+dn^3)(2nb+dn^3)}{2n}\\
&=-2ab\zeta(-1)-d(a+b)\zeta(-3)-\frac{d^2}{2}\zeta(-5)\\
&=\frac{ab}{6}-\frac{d(a+b)}{120}+\frac{d^2}{504}.
\end{aligned}
\tag{23}
\]
The sum of (22) and (23) is
\[
E_{\eta^2}=\frac12ab(a+b).
\]
Converting back to \(\lambda\), \(E_0=a+b\), \(P=a-b\), this agrees with the independent spectral check
\[
E_{\lambda^2}=\frac{2E_0(E_0^2-P^2)}{L^2}.
\]
The cancellation includes the quantum linear and central finite terms in (21). Keeping only the cubic classical density does not pass this check. This calculation covers general product highest-weight states, including the Ising vacuum and primary sectors; it is not a check on all descendants or a proof of the full operator Ward identity. The analytic regularization of (23) is part of the check's scheme assumptions, not a regulator-independent summation theorem.

## 5a. Full-Wick basis and an off-diagonal vertex: association-order check

This subsection was added to resolve a comparison with a pairwise-symmetric prescription. The conversion below was independently computed from free-fermion Wick contractions; it is not an energy-spectrum fit.

At \(c=1/2\), use canonical Majorana fields \(\chi_R,\chi_L\), with equal-time anticommutators \(\{\chi_R(x),\chi_R(y)\}=\{\chi_L(x),\chi_L(y)\}=\delta(x-y)\). Write
\[
r=-\frac i2:\chi_R\chi_R':_F,\qquad
l=+\frac i2:\chi_L\chi_L':_F.
\]
The symbol \(:\cdot:_F\) means full infinite-line local Wick subtraction, with short-distance contractions \(+i/(2\pi\epsilon)\) for the right mover and \(-i/(2\pi\epsilon)\) for the left mover. Cylinder finite terms are retained in cylinder-state expectation values, not additionally discarded. Define the Hermitian integrated operators
\[
\begin{aligned}
K_{42}&=\int:\bigl(\chi_R\chi_R'''\chi_L\chi_L'
+\chi_R\chi_R'\chi_L\chi_L'''\bigr):_F,\\
K_{33}&=\int:\chi_R\chi_R''\chi_L\chi_L'':_F,\\
Q_5&=i\int:\bigl(\chi_R\chi_R^{(5)}-\chi_L\chi_L^{(5)}\bigr):_F.
\end{aligned}
\tag{23a}
\]
Direct Wick expansion at the anchored point gives
\[
\begin{aligned}
:r^2:_{\rm cyl}
&=\frac{i}{48\pi}:\bigl(5\chi_R\chi_R'''-9\chi_R'\chi_R''\bigr):_F,\\
:(r')^2:_{\rm cyl}
&=\frac{i}{60\pi}:\chi_R\chi_R^{(5)}:_F
-\frac{i}{12\pi}:\chi_R''\chi_R''':_F.
\end{aligned}
\tag{23b}
\]
The left-moving identities have the opposite overall sign with \(R\to L\). In particular
\[
\int :(r')^2:_{\rm cyl}
=-\frac{i}{15\pi}\int:\chi_R\chi_R^{(5)}:_F.
\]
The full four-fermion Wick remainder in either same-chiral product has no constant term, since its coincident antisymmetrized derivatives repeat; it does not contribute to (23b).

The integration-by-parts relations needed to reduce the mixed cubic term are
\[
\begin{aligned}
\int:\bigl(\chi_R'\chi_R''\chi_L\chi_L'
+\chi_R\chi_R'\chi_L'\chi_L''\bigr):_F
&=-K_{42}-2K_{33},\\
D_x:=\int r'l'&=\frac14K_{33}.
\end{aligned}
\tag{23c}
\]
Substituting (23b),(23c) into the full-composite determinant finite part (1) yields
\[
\boxed{V_2^{\rm FP}
=-\frac7{6\pi}K_{42}-\frac{35}{24\pi}K_{33}
-\frac1{180\pi^2}Q_5.}
\tag{23d}
\]
By contrast, making the pairwise substitution (10a) in the cubic term, without adding the spectator Taylor corrections of (10), gives
\[
\boxed{V_2^{\rm pair}
=V_2^{\rm FP}-\frac2\pi D_x
=-\frac7{6\pi}K_{42}-\frac{47}{24\pi}K_{33}
-\frac1{180\pi^2}Q_5.}
\tag{23e}
\]
Equations (23d) and (23e) are different frame representatives. They must not be described as the same finite-part prescription. Their difference is of the explicitly constructed type (2), with \(\alpha=-1/\pi\) when passing from FP to pairwise. It has zero diagonal unperturbed energy matrix elements.

A sensitive off-diagonal check distinguishes them. At \(L=2\pi\), the standard cylinder product modes satisfy
\[
Q_n=\sum_{m<0}A_mA_{n-m}+\sum_{m\ge0}A_{n-m}A_m
-\left(\frac n2+\frac16\right)A_n
+\frac{c}{1440}\delta_{n0}.
\tag{23f}
\]
For example, this follows by taking the finite part of
\(\sum_{m\ge0}(2m-n)e^{im\epsilon}
=-2/\epsilon^2-in/\epsilon-n/2-1/6+\cdots\).
On the vacuum,
\[
Q_{-2}|0\rangle=\left(\frac56-\frac c{12}\right)L_{-2}|0\rangle.
\]
The coefficient creating \(L_{-2}\bar L_{-2}|0\rangle\) from (1) is therefore \(5/6+c/12=7/8\). The pairwise prescription subtracts one from this coefficient.

Define the unit-normalized state \(|TT\rangle=4L_{-2}\bar L_{-2}|0\rangle\) and the dimensionless vertex \(\mathcal V_2=L^5V_2/(128\pi^3)\). Since \(\|L_{-2}|0\rangle\|^2=c/2=1/4\), one obtains
\[
\begin{array}{c|c|c}
&\langle TT|\mathcal V_2|0\rangle&\langle TT|V_2|0\rangle\\ \hline
\text{full-composite determinant FP}&7/32&+28\pi^3/L^5\\
\text{pairwise symmetric representative}&-1/32&-4\pi^3/L^5
\end{array}
\tag{23g}
\]
Both the Wick conversion and these rational mode coefficients were checked independently in Mathematica, with no kernel messages; see [association-order computation](</Users/koishi/.codex/mcp-results/evaluate_mathematica-pY4c5z/result.txt>). Agreement of their perturbative energy shifts through this order does not identify their off-diagonal vertices unless the operator/frame map is included. This comparison does not close the second-order local Ward problem below.

## 6. The unresolved order-two Ward and metric/source problem

The energy Ward residual that must still be defined and checked is
\[
\mathcal R_2(x)=i[H_0,h_2(x)]+i[V_1,h_1(x)]+i[V_2,h_0(x)].
\tag{24}
\]
In the fixed canonical-momentum frame, it must vanish after the permissible density improvements have been fixed. If it is only a spatial derivative, that establishes an energy flux, but not necessarily the required flux \(p=r-l\). A nonzero flux cannot simply be renamed away while retaining all the fixed-frame assumptions.

The weak link is not ordinary polynomial algebra. The term \(i[V_1,rl(x)]\) requires expressions of the form
\[
\int dy\,[r(y),r(x)]\,l(y)l(x)
\quad\hbox{and}\quad
\int dy\,r(x)r(y)\,[l(y),l(x)].
\tag{25}
\]
The commutators contain \(\delta'(y-x)\) and \(\delta'''(y-x)\), while the remaining same-chiral products have \((y-x)^{-4}\), \((y-x)^{-2}\), and \((y-x)^{-1}\) singularities. Products of these distributions require a coincident-contact extension. Fixing the one-pair normal products \(Q\) and \(J\) in (8)-(10) does not by itself specify that multi-local equal-time extension or its compatibility with Jacobi identities and the action principle.

In particular, naively applying a derivation to an asymmetrically split \(rl\), while leaving the integrated \(V_1\) unsplit, is not a safe prescription: regulator-dependent contact terms can even spoil the manifest identity \([V_1,V_1]=0\) after integration. A consistent regulator has to be applied to both entries of the commutator before its finite part is taken. This warning is not used as evidence that a genuine anomaly exists.

### A useful restriction from the Euclidean OPE

A limited but nontrivial statement about possible bulk counterterms can be made without solving (24). Use standard Euclidean CFT stress normalization and set \(\mathcal O(z,\bar z)=T(z)\bar T(\bar z)\). In a rotationally symmetric short-distance regulator, the logarithmic scalar singularity in \(\mathcal O(z,\bar z)\mathcal O(0)\) comes from
\[
\frac{\partial T\,\bar\partial\bar T}{z\bar z}
=\frac{\partial\bar\partial(T\bar T)}{|z|^2}.
\tag{26}
\]
The other angularly invariant singular terms are power divergences: the identity term \(c^2/(4|z|^8)\) and the \(4\mathcal O/|z|^4\) term. In the identity-Virasoro sector the dimension-six spin-zero space has weights \((3,3)\); its only field is the descendant in (26). Thus the two-insertion flat bulk logarithmic counterterm at this order is redundant, a spacetime total derivative modulo the free chiral equations. This excludes a new nonredundant scalar flat bulk coupling of this dimension under these assumptions. It does not compute stress-insertion contact terms or their Ward cohomology.

The relation to the explicit canonical-frame freedom is direct:
\[
D_0\int rl=2G,\qquad D_0^2\int rl=-4\int r'l'.
\tag{27}
\]
Time-boundary terms from a redundant spacetime operator can therefore be visible as Hamiltonian-frame changes. Neither the absence of a new scalar bulk coupling nor (27) proves that the proposed fixed-frame stress satisfies (24).

### Background sources remain additional data

The background-metric issue is logically additional. Symmetry and conservation of flat currents do not establish that they are obtained by varying a covariant action with respect to a metric. In particular, \(h_0=r+l\) is not an undeformed Lorentz scalar, so the appearance of the first-order flat-current improvement \(h_0''\) cannot by itself be described as a covariant scalar-curvature improvement. Metric-dependent canonical coordinates and contact terms may participate in its completion.

There are also allowed curved-background counterterms not detected by the flat Hamiltonian alone. Write \(\mathscr R[g]\) for the scalar curvature, to distinguish it from the rescaled chiral field \(R=2\pi r\). Schematically,
\[
\lambda^2\int d^2x\,\sqrt{-g}\,\mathscr R[g]\,(T\bar T)_0
\]
vanishes as a flat action term but changes the flat stress by an order-two scalar improvement. Similarly \(\lambda\int\sqrt{-g}\,\mathscr R[g]^2\) leaves the flat one-stress operator unchanged while modifying stress contact terms under further metric variations. Their coefficients require a source renormalization prescription. Flat spectral data cannot determine them.

**Current decisive boundary:** the given local Virasoro algebra proves the first-order current correction, and the specified integrated determinant finite part proves the conditional formula (1). It does not yet prove a unique second-order covariant quantum deformation, nor does it establish the absence or presence of a genuine order-two contact anomaly. An explicit compatible multi-local contact prescription or a background-metric quantum construction is the missing input.

## Verification record

- **Verified analytically:** shifted-mode normalization and central coefficient; equations (3)-(7); the point-split identities (9)-(12), including the association-order distinction (10a),(10b); the frame/improvement construction (15)-(20); the general highest-weight cancellation (21)-(23); the full-Wick conversion and off-diagonal comparison (23a)-(23g); the dimension-six scalar OPE restriction and redundant-frame relation (26)-(27).
- **Verified by Mathematica:** both first-order conservation residuals are exactly zero; the momentum-canceling identity (19) is exactly zero; the local frame-density shift is (20); the highest-weight correlator series and the sum of (22),(23) minus \(ab(a+b)/2\) are exact, with no kernel messages. The compact computational evidence is [Mathematica result](</Users/koishi/.codex/mcp-results/evaluate_mathematica-dmGOro/result.txt>).
- **Additional Mathematica verification:** the Grassmann-reordered Wick finite terms in (23b), the integration-by-parts reduction giving coefficients \(-7/(6\pi),-35/(24\pi),-1/(180\pi^2)\), the pairwise change to \(-47/(24\pi)\), and the TT coefficients \(7/32,-1/32\) were computed exactly, with no kernel messages. Evidence: [association-order computation](</Users/koishi/.codex/mcp-results/evaluate_mathematica-pY4c5z/result.txt>).
- **Assumptions:** periodic circle; identity-Virasoro operator sector; no explicit nonlocal circumference-dependent local counterterms; symmetric spatial cylinder finite part for the displayed composite products; analytic/zeta finite part for the independent highest-weight check; formal perturbative treatment of local irrelevant generators.
- **Not verified:** the full order-two residual (24) with a contact prescription satisfying all Ward/Jacobi identities; a covariant metric/source completion; general descendant matrix elements; nonperturbative operator domains.
- **Scope of changes:** this new review only. No existing note or candidate was edited or used as a second-order input.
