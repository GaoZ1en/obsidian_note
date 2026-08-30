# 04 — Stage 2.2 hardening: canonical map, independent reduction, and normal data

## 0. Direct verdict

**Correct under the following precise conditions:** the affine reduced
spin-$0+2$ form and Reisenberger's fixed-endpoint-map area form are related by
an explicit field-space canonical transformation on the common monotonic-area
sector.  The common sector fixes the affine endpoint $L_s$ and uses the same
outer cut as the area chart.  If the outer area $Omega_{sL}$ is allowed to
vary, the transformation also shifts the retained area-port momentum by the
explicit functional in (3.17).  Reisenberger's original admissible fixed-outer-
area pullback sets $deltaOmega_{sL}=0$ and therefore needs no outer port.
The outer conformal metric is allowed to vary in this statement.

The independent-data result is more limited.  Two independently declared
characteristic segments reduce to the long-segment **bulk** two-form after the
full first jet is matched.  The theorem is formulated below with an inclusion
$\iota$ and reconstruction map $\rho$, and V24 uses independent left/right
parameters before constructing the matching-locus Jacobian.  A complete
finite-cell theorem including a geometrically derived closing-wall port remains
conditional, because the project still uses the abstract $b_s$ port rather
than a selected closing action.

The outer-shape claim is withdrawn.  A free outer conformal metric is already
contained in Reisenberger's conformal bulk integral.  The affine-to-area map
does not force an independent traceless endpoint momentum.  Such a momentum
can arise from a chosen closing wall or a different $dY$ polarization, but it
is not implied by the null branch reduction alone.

Finally, CK's single symbol $\pi_A$ is not canonically equal to
$\widehat\omega_A$ without a rigging convention.  With the natural cross
riggings supplied by the other null normal, the two branch values are
$\pi_A^{(+)}=\omega_A^{(+)}$ and
$\pi_A^{(-)}=\omega_A^{(-)}$.  One may use either branch value, or
$\widehat\omega_A$, as the single torsion coordinate once $m$ is retained;
the transition maps are displayed in section 6.

## 1. Common field space for the affine and area charts

Suppress the branch label and write

$$
v=\frac{r}{r_0},
\qquad
\lambda=\lambda(v;\text{fields}),
\qquad
B:=\frac{d\lambda}{dv},
\qquad
e_{AB}(v):=\bar q_{AB}(\lambda(v)).
\tag{1.1}
$$

The map is used only where $dv/d\lambda\neq0$, equivalently
$\theta\neq0$.  Define

$$
K:=e^{-1}\partial_v e,
\qquad
C:=e^{-1}\boldsymbol\Delta e,
\qquad
\chi:=(\boldsymbol\delta\lambda)_v,
\tag{1.2}
$$

where $\boldsymbol\delta$ means variation at fixed affine $\lambda$ and
$\boldsymbol\Delta$ means variation at fixed $v$.  If
$\alpha:=(\boldsymbol\delta v)_\lambda$, then variation of
$\lambda(v)$ at fixed affine coordinate gives

$$
0=\chi+B\alpha,
\qquad
\boxed{\alpha=-\frac\chi B.}
\tag{1.3}
$$

Consequently, for every scalar $F$ and every transverse tensor expressed in
the common generator chart,

$$
\boxed{
\boldsymbol\delta_\lambda F
=\boldsymbol\Delta F-\frac\chi B\partial_vF.}
\tag{1.4}
$$

The fields entering the affine potential transform as

$$
\begin{aligned}
\boldsymbol\Delta r&=v\,\boldsymbol\delta r_0,
&\boldsymbol\delta_\lambda r
&=v\,\boldsymbol\delta r_0-r_0\frac\chi B,\\
e^{-1}\boldsymbol\delta_\lambda e
&=C-\frac\chi B K,
&\boldsymbol\Delta B&=\partial_v\chi,\\
\boldsymbol\delta_\lambda B
&=\partial_v\chi-\frac\chi B\partial_vB,
&\boldsymbol\delta_\lambda\log|B|
&=\frac{\partial_v\chi}{B}
-\frac{\chi\partial_vB}{B^2}.
\end{aligned}
\tag{1.5}
$$

At the initial cut $v=1$ and $\chi(1)=0$.  Thus no transport correction is
needed for $m_0$, and

$$
\boxed{
\boldsymbol\delta m_0
=\boldsymbol\delta\lambda_R
+\boldsymbol\delta\log|B_{+0}|
+\boldsymbol\delta\log|B_{-0}|,}
\qquad
\lambda_R=m_0-\log|B_{+0}B_{-0}|.
\tag{1.6}
$$

If $m$ is extended away from the corner, it obeys the same scalar rule
(1.4).  No such extension is needed in the retained spin-$0+2$ sector.

Let

$$
V:=\bar v=\frac{r(L)}{r_0},
\qquad
\Omega_L=\Omega_0V^2.
\tag{1.7}
$$

For a fixed affine endpoint $L$,

$$
\boxed{
0=\boldsymbol\delta L
=\chi(V)+B(V)\boldsymbol\delta V
=\int_1^V\boldsymbol\Delta B\,dv+B(V)\boldsymbol\delta V.}
\tag{1.8}
$$

This is the common-domain constraint omitted in calculation 03.  Fixed
$L$, fixed endpoint maps, and arbitrary independent variations of
$(B_0,e,\Omega_0,V)$ cannot all be imposed simultaneously.  If the outer
area is fixed as in Reisenberger's admissible variations, then additionally

$$
\boxed{
\boldsymbol\delta\log V
=-\frac12\boldsymbol\delta\log\Omega_0.}
\tag{1.9}
$$

For any endpoint field,

$$
\boldsymbol\delta F_L
=\boldsymbol\Delta F(V)+\partial_vF(V)\boldsymbol\delta V.
\tag{1.10}
$$

Equations (1.8)--(1.10) retain every moving-upper-limit contribution.

## 2. Focusing equation and the two comoving area charts

The focusing equation is

$$
\boxed{
\partial_v\log|B|
=\frac v8\operatorname{tr}(K^2).}
\tag{2.1}
$$

It follows either from the affine focusing equation or directly from
$r=r_0v$.  Its fixed-$v$ variation is

$$
\partial_v\boldsymbol\Delta\log|B|
=\frac v4\operatorname{tr}(K\partial_vC).
\tag{2.2}
$$

Reisenberger uses an outer-normalized area coordinate.  Denote it by

$$
x:=\frac vV,
\qquad
x_0=\frac1V,
\qquad
x_L=1.
\tag{2.3}
$$

Let $\boldsymbol\Delta_x$ be variation at fixed $x$.  Since
$v=xV$,

$$
\boxed{
C_x:=e^{-1}\boldsymbol\Delta_x e
=C+v\boldsymbol\delta\log V\,K.}
\tag{2.4}
$$

The distinction between $C$ and $C_x$ is essential.  Calculation 03
previously inserted the fixed-$v$ variation directly into the
outer-normalized formula.  The missing second term in (2.4) is precisely one
source of the moving-lower-limit surface contribution.

## 3. Complete one-form transformation

### 3.1 Affine reduced one-form in the $v$ chart

Start from calculation 02 equation (4.4).  Equations (1.3)--(1.5) give

$$
\boxed{
\begin{aligned}
\frac1{C_G}\Theta^{\lambda}_{s,\mathrm{bulk}}
=\int_1^Vdv\Bigg[&
\frac{\Omega_0v^2}{4}\operatorname{tr}(KC)
-v\boldsymbol\delta\Omega_0\\
&+2\Omega_0\chi\,
\partial_v\!\left(\frac vB\right)
\Bigg].
\end{aligned}}
\tag{3.1}
$$

The last term contains both the varying Jacobian and the field-dependent
coordinate shift.  It follows by using (2.1) in the sum of the conformal
$\chi$ term and $-2r'\boldsymbol\delta r$; it is not an inserted surface
ansatz.

### 3.2 Reisenberger one-form in the outer-normalized chart

With endpoint maps fixed, Reisenberger's branch potential is

$$
\boxed{
\frac1{C_G}\Theta^A_s
=-\frac12\Omega_0\boldsymbol\delta\lambda_R
+\frac{\Omega_L}{4}
\int_{1/V}^{1}x^2\operatorname{tr}(K_xC_x)\,dx.}
\tag{3.2}
$$

Here $K_x=e^{-1}\partial_xe$.  Rewriting the conformal term in the $v$
chart, while retaining (2.4), gives

$$
\boxed{
\frac1{C_G}\Theta^A_{s,\mathrm{conf}}
=\frac{\Omega_0}{4}\int_1^Vv^2
\operatorname{tr}\!\left[K
\left(C+v\boldsymbol\delta\log V K\right)\right]dv.}
\tag{3.3}
$$

Taking the curl of (3.2), the moving lower limit $x_0=1/V$ contributes

$$
\boxed{
-\frac{C_G}{8}\int_{S_0}
\boldsymbol\delta\Omega_0\wedge
\operatorname{tr}(KC)\big|_{v=1}\,d^2x}
\tag{3.4}
$$

per branch when $\delta\Omega_L=0$.  The term proportional to
$\boldsymbol\delta\log V K$ drops from (3.4) because it is proportional to
$\boldsymbol\delta\Omega_0\wedge\boldsymbol\delta\Omega_0$.  This derives,
rather than assumes, Reisenberger's shared conformal endpoint term.

### 3.3 Difference and explicit generator

Set

$$
H(v):=\log|B(v)|,
\qquad
I:=\int_1^VvH(v)\,dv,
\qquad
H_0:=H(1).
\tag{3.5}
$$

Use (1.8) and (2.1) in the difference of (3.1) and (3.3).  Keeping
$\delta\Omega_L$ arbitrary gives the exact branch identity

$$
\boxed{
\begin{aligned}
\frac1{C_G}
\left(\Theta^\lambda_{s,\mathrm{bulk}}
-\Theta^A_{s,\mathrm{conf}}\right)
={}&\boldsymbol\delta Y_s-H_0\boldsymbol\delta\Omega_0
+\gamma_s\boldsymbol\delta\Omega_L,\\
Y_s:={}&-2\Omega_0I+\frac{\Omega_0}{2}
+\frac{\Omega_L}{2}\log\Omega_0,\\
\gamma_s:={}&-1+\frac{H_0+2I}{V^2}
-\frac12\log\Omega_0.
\end{aligned}}
\tag{3.6}
$$

For transparency, the only integration by parts used in (3.6) is

$$
2\Omega_0\int_1^V
\chi\partial_v(v/B)dv
=-2\Omega_0V\boldsymbol\delta V
-2\Omega_0\int_1^Vv\boldsymbol\Delta H\,dv,
\tag{3.7}
$$

where $\chi(1)=0$ and (1.8) were used at the upper endpoint.  The total
variation of $-2\Omega_0I$ supplies the second integral in (3.7) and all
moving-upper-limit terms.  Separating
$\delta\log V=(\delta\log\Omega_L-delta\log\Omega_0)/2$ then gives
(3.6).

The affine HF initial potential and the two area-normal surface potentials
obey

$$
\begin{aligned}
\frac1{C_G}\left[
(m_0-1)\boldsymbol\delta\Omega_0
-\left(-\Omega_0\boldsymbol\delta\lambda_R\right)
\right]
={}&\boldsymbol\delta[\Omega_0(\lambda_R-1)]\\
&+(H_{+0}+H_{-0})\boldsymbol\delta\Omega_0.
\end{aligned}
\tag{3.8}
$$

The last line cancels the two $-H_{s0}\delta\Omega_0$ terms in (3.6).
Therefore the complete double-null identity is

$$
\boxed{
\Theta^\lambda_X-Theta^A_X
=C_G\boldsymbol\delta Y
+C_G\sum_{s=\pm}\gamma_s
\boldsymbol\delta\Omega_{sL},}
\tag{3.9}
$$

with

$$
\boxed{
Y=\int_{S_0}d^2x\left[
\Omega_0\lambda_R
-2\Omega_0\sum_{s=\pm}
\int_1^{V_s}v\log|B_s(v)|dv
+\frac{\Omega_{+L}+\Omega_{-L}}2\log\Omega_0
\right].}
\tag{3.10}
$$

If the affine cell retains
$C_Gb_s^\lambda\boldsymbol\delta\Omega_{sL}$, define the area-chart port by

$$
\boxed{b_s^A=b_s^\lambda+\gamma_s.}
\tag{3.11}
$$

Then

$$
\boxed{
\Theta^\lambda_X
+C_G\sum_sb_s^\lambda\boldsymbol\delta\Omega_{sL}
-\left(
\Theta^A_X
+C_G\sum_sb_s^A\boldsymbol\delta\Omega_{sL}
\right)
=C_G\boldsymbol\delta Y,}
\tag{3.12}
$$

and hence

$$
\boxed{
\Phi^*\Omega^A_X=\Omega^\lambda_X}
\tag{3.13}
$$

on the common monotonic-area, fixed-endpoint-map sector.  For
Reisenberger's fixed outer area density,
$\boldsymbol\delta\Omega_{sL}=0$, so (3.9) already reduces to an exact
canonical transformation and no outer port is active.

Equations (3.10)--(3.11), rather than the former statement
$b_s^A=b_s^\lambda+\log|B_s(V_s)|$, are the complete transformation.  The
latter omitted the bulk Jacobian functional and the moving-limit pieces.

## 4. Outer conformal shape

No condition $\boldsymbol\delta e_{AB}|_{S_L}=0$ was used in section 3.
In the outer-normalized chart the conformal potential is the second term of
(3.2), whose upper limit is the fixed value $x=1$.  Arbitrary traceless
$\boldsymbol\Delta_x e_{AB}(1)$ is already one of the allowed endpoint
values of the bulk conformal profile.  No integration by parts in $x$ is
needed, and no independent term

$$
\Pi_s^{AB}\boldsymbol\delta e_{AB}|_{S_L}
\tag{4.1}
$$

is generated by the affine-to-area transformation.

Thus the alternatives in the Stage-2.2 question are resolved as follows.

1. For the null branch and Reisenberger polarization, the outer conformal
   variation is already contained in the bulk integral.
2. Coordinate changes can move contributions between the bulk and an exact
   endpoint $dY$, but (3.10) is sufficient and contains no independent
   traceless momentum.
3. A traceless endpoint pair is not forced by the null reduction.
4. A selected closing-wall action or another boundary polarization may add
   such a pair.  Its existence and value are then properties of that closing
   geometry, not of the characteristic branch alone.

Accordingly `C2-outer-shape` is conditional/open as a closing-wall claim and
false if read as a universal necessity.

## 5. Independent-data composition and reduction

### 5.1 Product data and matching surface

Let $\mathcal P_1$ and $\mathcal P_2$ be independently declared affine
spin-$0+2$ characteristic data spaces on intervals $I_1=[0,L_1]$ and
$I_2=[0,L_2]$.  Their profiles and corner variables are independent before
matching:

$$
(r_1,\bar q_1;Q_{10},P_{10},Q_{1L},P_{1L}),
\qquad
(r_2,\bar q_2;Q_{20},P_{20},Q_{2L},P_{2L}).
\tag{5.1}
$$

Here $(Q,P)$ schematically denotes the retained oriented cut/normal port; it
is not identified with the dynamical first jet.  The matching surface
$\mathcal C_{12}\subset\mathcal P_1\times\mathcal P_2$ is defined by

$$
\boxed{
q^1_{AB}(L_1)=q^2_{AB}(0),
\qquad
B^1_{AB}(L_1)=B^2_{AB}(0),}
\tag{5.2}
$$

or equivalently

$$
\Omega_1=\Omega_2,
\quad
\bar q^1_{AB}=\bar q^2_{AB},
\quad
\theta_1=\theta_2,
\quad
\sigma^1_{AB}=\sigma^2_{AB}.
\tag{5.3}
$$

The geometric port matching is imposed separately:

$$
Q_{1L}=Q_{20},
\qquad
P_{1L}=P_{20},
\tag{5.4}
$$

with opposite incidence in the sum of regional potentials.  If the normal
frame is retained, this includes $b_{1L}=b_{20}$; for a double-null interface
which retains the corner normal data, also impose the diagonal conditions on
$m$ and $\widehat\omega_A$ (or their chosen convention-equivalent branch
variables) before quotienting the normal-frame gauge.  Equations
(5.2)--(5.3) do not follow from these geometric port conditions.

### 5.2 Inclusion and reconstruction maps

Define

$$
\iota:\mathcal C_{12}\hookrightarrow
\mathcal P_1\times\mathcal P_2
\tag{5.5}
$$

as the inclusion.  The full first-jet conditions make the concatenated
$q_{AB}$ a $C^1$ profile.  Uniqueness of the focusing equation then defines

$$
\rho:\mathcal C_{12}\longrightarrow\mathcal P_{12},
\tag{5.6}
$$

where $\rho$ concatenates the two conformal profiles and identifies the two
regional focusing solutions with the restrictions of the unique long
solution.

Let $\Omega_i^{\rm bulk}$ be calculation 02 equation (5.1) on $I_i$.
Because its density was not integrated by parts in the generator direction,

$$
\boxed{
\iota^*(\Omega_1^{\rm bulk}+\Omega_2^{\rm bulk})
=\rho^*\Omega_{12}^{\rm bulk}.}
\tag{5.7}
$$

This is now an independent-data pullback statement, not the assertion that a
single profile was subdivided from the start.  At the interface the abstract
oriented port residual is

$$
\Omega_{S_1}^{\rm res}
=C_G\left(
\boldsymbol\delta P_{1L}\wedge\boldsymbol\delta Q_{1L}
-\boldsymbol\delta P_{20}\wedge\boldsymbol\delta Q_{20}
\right),
\tag{5.8}
$$

which vanishes after (5.4).  Therefore

$$
\boxed{
\iota^*(\Omega_1+\Omega_2)
=\rho^*\Omega_{12}}
\tag{5.9}
$$

holds for the declared abstract diagonal port reduction.  Calling (5.9) a
geometric finite-cell gluing theorem remains conditional until a closing
action derives $P_{1L}$ and $P_{20}$ and their orientation map.

Equivalently, if $\Omega_1$ and $\Omega_2$ are kept on the duplicated product
space before diagonal reduction, define

$$
\Omega_{\rm interface}:=-\Omega_{S_1}^{\rm res}.
\tag{5.9a}
$$

Then the requested reduction identity is

$$
\boxed{
\iota^*(\Omega_1+\Omega_2+\Omega_{\rm interface})
=\rho^*\Omega_{12}.}
\tag{5.9b}
$$

On the diagonal matching locus (5.4), (5.9a) pulls back to zero; it is a
bookkeeping form for the two duplicated interface incidences, not an extra
dynamical first-jet term.

Before first-jet matching, the long reconstruction map $\rho$ is not
defined.  On the metric-matched locus the obstruction is

$$
\boxed{
\mathcal J_{AB}
=B^2_{AB}(0)-B^1_{AB}(L_1)
=\Delta\sigma_{AB}+rac12\Delta\theta\,q_{AB}.}
\tag{5.10}
$$

This is a domain obstruction, while (5.8) is the port two-form residual.  They
must not be conflated.  In particular, there is no meaningful
$\rho^*\Omega_{12}$ off the $C^1$ locus to subtract from the product form.

### 5.3 Independent finite-mode Jacobian and associativity

V24 takes

$$
\phi_L(x)=\phi_0+a_Lx,
\qquad
\phi_R(y)=\phi_{R0}+a_Ry,
\tag{5.11}
$$

and independent initial data

$$
z=(r_0,p_0,\phi_0,a_L;
r_{R0},p_{R0},\phi_{R0},a_R).
\tag{5.12}
$$

The two product two-forms are constructed before imposing the four
constraints

$$
\begin{aligned}
r_{R0}&=r_L(L_1),&
p_{R0}&=r'_L(L_1),\\
\phi_{R0}&=\phi_L(L_1),&
a_R&=a_L.
\end{aligned}
\tag{5.13}
$$

The script constructs the $8\times4$ Jacobian of the embedding of (5.13),
checks that the constraint Jacobian has rank four, and verifies the matrix
identity corresponding to (5.7).  It also evaluates (5.13) on a generic
off-locus point and obtains a nonzero residual.

V25 starts from three independent four-parameter segment data sets and two
independent matching cuts.  Pullback to the two matching loci gives the long
interval two-form.  Hence the bulk reduction is associative analytically by
(5.7), with V25 as finite-mode evidence.  Associativity of a geometrically
realized finite-cell port quotient inherits the same closing-action
qualification as (5.9).

## 6. CK, H\'aj\'i\v{c}ek, and Reisenberger dictionaries

CK define their horizontal one-form through the rigging connection

$$
D_A\ell^b=\theta_A{}^b+\pi_A\ell^b.
\tag{6.1}
$$

If the rigging covector $k_b$ is normalized by $k\cdot\ell=1$, contraction of
(6.1) gives

$$
\pi_A=k_b\nabla_A\ell^b.
\tag{6.2}
$$

For the natural double-null cross riggings

$$
k_b^{(+)}=-e^m\ell_{-b},
\qquad
k_b^{(-)}=-e^m\ell_{+b},
\tag{6.3}
$$

one obtains

$$
\boxed{
\pi_A^{(+)}=\omega_A^{(+)},
\qquad
\pi_A^{(-)}=\omega_A^{(-)}.}
\tag{6.4}
$$

Direct differentiation of
$\ell_+\cdot\ell_-=-e^{-m}$ still gives

$$
\boxed{
\omega_A^{(+)}+\omega_A^{(-)}=-D_Am.}
\tag{6.5}
$$

CK list one corner $\pi_A$, but their displayed classical definitions do not
specify the cross-rigging/orientation map that turns (6.4) into one literal
equal branch value.  Therefore the statement
$\pi_A^{\rm CK}=\widehat\omega_A$ is not proved by CK.  Once $m$ is retained,
one torsion coordinate can be chosen in any of the equivalent conventions

$$
\begin{array}{c|c}
\text{chosen single datum}&\text{project variable}\\ \hline
\pi_A=\omega_A^{(+)}
&\widehat\omega_A=\pi_A+\frac12D_Am,\\
\pi_A=\omega_A^{(-)}
&\widehat\omega_A=-\pi_A-\frac12D_Am,\\
\pi_A=\widehat\omega_A
&\omega_A^{(\pm)}=\pm\pi_A-\frac12D_Am.
\end{array}
\tag{6.6}
$$

The project keeps the symmetric third convention because

$$
\boxed{\tau_{\ell A}=2\widehat\omega_A.}
\tag{6.7}
$$

After $n_s=B_s\ell_s$,

$$
\boxed{
\lambda_R=m-\log|B_+B_-|,
\qquad
\tau_{vA}=2\widehat\omega_A
+D_A\log|B_+/B_-|.}
\tag{6.8}
$$

With the project assignment $+=R$ and $-=L$, Reisenberger's endpoint-map
momenta are

$$
\boxed{
\widetilde\tau_{+A}
=\Omega_0(D_A\lambda_R-\tau_{vA}),
\qquad
\widetilde\tau_{-A}
=\Omega_0(D_A\lambda_R+\tau_{vA}),}
\tag{6.9}
$$

with the transverse indices pulled through the corresponding endpoint maps.
They obey

$$
\widetilde\tau_{+A}ds_+^A
+\widetilde\tau_{-A}ds_-^A
=2\Omega_0D_A\lambda_R,dx^A,
\tag{6.10}
$$

which is the generator-chart constraint in Reisenberger's extended phase
space.  Reversing the branch assignment reverses the corresponding twist
signs.

**Known from literature:** Reisenberger's outer-normalized potential,
endpoint-map momenta, and generator-chart constraint; CK's rigging-connection
definition of $\pi_A$ and its Damour transport equation.

**Re-derived here:** the ordinary/comoving variation dictionary; the full
affine-to-area one-form identity and generator; the moving-upper-limit
area-port shift; the absence of a forced null outer-shape pair; the
independent-data reduction maps; and the cross-rigging translation
$\pi_A^{(\pm)}=\omega_A^{(\pm)}$.

**Project-specific/conditional:** the abstract $b_s$ port and its diagonal
interface reduction.  Its geometric realization still depends on a selected
closing action.

## 7. Stage-3 gate

**Stage 3 is ready only in the following controlled classical lane.**  Use
$\widehat\omega_A=\tau_{\ell A}/2$ as the project's shared normal variable,
retain the endpoint maps $s_\pm^A$ rather than fixing them, and use
$\widetilde\tau_{\pm A}$ in (6.9) as their conjugate momenta, subject to
(6.10) and a declared generator-chart quotient.  This choice removes the CK
rigging ambiguity from the calculation.

This gate does not claim a closed spin-1 CPS, and no Stage-3 pullback is
performed here.  A claim about a complete finite cell with a physical closing
wall must still wait for that wall's action and port polarization, but that is
not an obstacle to beginning the restricted endpoint-map/Damour calculation.

## 8. Verification boundary

**Verified:** V23 derives the affine and area curls from the affine one-form
for the nontrivial profiles
$\phi_s(v)=\phi_0+a_s\log v$, with moving $V_s$, nonzero conformal
variation, fixed affine lengths, and fixed outer areas; the residual vanishes.
V24 constructs independent left/right product data and the explicit
matching-locus Jacobian before verifying the reduced two-form identity.  V25
does the same for three cells.

**Assumptions:** four-dimensional vacuum; smooth positive unimodular metrics;
caustic-free monotonic-area branches; fixed generator labels and endpoint
maps; selected HF representative; common fixed affine endpoints; either
fixed outer areas or the transformed abstract area ports (3.11).

**Not verified:** a chart through $\theta_s=0$; a selected closing-wall action;
a unique geometric outer area or shape momentum; a full quotient by normal
and generator-label gauge; functional completion; or any Stage-3 spin-1
pullback.
