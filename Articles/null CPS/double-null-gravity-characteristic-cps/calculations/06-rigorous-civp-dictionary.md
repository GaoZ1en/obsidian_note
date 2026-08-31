# 06 - Rigorous CIVP dictionary and framed data spaces

## 0. Direct verdict and provenance

**Correct under the explicit frame convention below:** on the positive-area,
caustic-free sector, the project's affine free data are smoothly and locally
invertibly equivalent to the regular double-null data used by Luk.  The
metric, null second fundamental forms, and corner torsion are

$$
q^s_{AB}=r_s^2\bar q^s_{AB},\qquad
B^s_{AB}=\frac12\mathcal L_{\ell_s}q^s_{AB},
$$

$$
\chi^+_{AB}=a_+B^+_{AB},\qquad
\underline\chi^-_{AB}=a_-B^-_{AB},\qquad
\zeta_A=-\omega_A^{(+)}-D_A\log a_+
=\omega_A^{(-)}+D_A\log a_-.
$$

Here the Luk-normalized frame is

$$
e_4=a_+\ell_+,\qquad e_3=a_-\ell_-,\qquad
g(e_3,e_4)=-2,
\qquad a_+a_-e^{-m}=2.
$$

In the symmetric split

$$
a_+=a_-=\sqrt2e^{m/2},
$$

the torsion dictionary reduces to the particularly simple formula

$$
\boxed{\zeta_A=-\widehat\omega_A.}
$$

This note proves the free-data dictionary.  It compares the resulting core
with Mars--S\'anchez-P\'erez abstract double null data, but does not claim
that their existence theorem constructs every $Y_\pm$ component from the
four Luk core fields.  It also does **not** prove existence on an arbitrary
fixed finite rectangle.

**Known from literature.**

- Rendall, *Proc. Roy. Soc. A* **427** (1990), Theorem 1 and Section 7,
  [doi:10.1098/rspa.1990.0009](https://doi.org/10.1098/rspa.1990.0009),
  proves local well-posedness near the transverse intersection for the
  characteristic problem after reduction to a Cauchy problem.
- Luk, [arXiv:1107.0898](https://arxiv.org/abs/1107.0898), Definitions 1--2
  and Theorems 2--5, uses smooth regular data
  $(\gamma,\chi,\underline\chi,\zeta)$ and proves a thin future collar along a
  complete truncated initial sheet for spherical cuts.
- Cabet--Chru\'sciel--Tagne Wafo,
  [arXiv:1406.3009](https://arxiv.org/abs/1406.3009), Theorems 3.9, 3.13,
  3.15, and 5.3, proves a neighborhood theorem, continuous dependence, and a
  smooth continuation criterion for the relevant doubly-null symmetric
  hyperbolic system, and applies it to four-dimensional vacuum Einstein.
  Theorem 3.13 assumes the compared solutions already exist on the common
  domain, and Theorem 3.15 is stated for smooth solutions; neither theorem by
  itself is the buffered-background Sobolev fixed-rectangle statement.
- Mars--S\'anchez-P\'erez,
  [arXiv:2205.15267](https://arxiv.org/abs/2205.15267), Definition 7.5 and
  Theorem 7.15, defines completed abstract double null data and gives their
  local development after restriction, assuming the abstract constraints.
- Mars--S\'anchez-P\'erez,
  [arXiv:2301.02722](https://arxiv.org/abs/2301.02722), Definition 4.6,
  Theorem 4.17, and Theorem 5.5, gives the gauge-covariant compatibility
  conditions and geometric uniqueness.  Remark 5.6 explicitly limits the
  proved geometric result to a neighborhood of the intersection surface.
- Reisenberger, [arXiv:1211.3880](https://arxiv.org/abs/1211.3880), Section
  2.2, gives the equivalent Sachs/area free data and explicitly warns that a
  development of all of the double null sheet was not established there.
- Chru\'sciel--Tagne Wafo--Gray,
  [arXiv:2305.07306](https://arxiv.org/abs/2305.07306), Theorem 1.1, proves
  the smooth neighborhood theorem for vacuum Einstein in all dimensions and
  topologies.  It states only that suitable Sobolev versions follow after
  tracking losses, so the project keeps an intentionally high regularity.
- Hilditch--Valiente Kroon--Zhao,
  [arXiv:1911.00047](https://arxiv.org/abs/1911.00047), Theorem 4, proves a
  smooth long-by-thin region in Stewart gauge with width controlled by its
  initial norms; it does not provide two independently long directions near
  an arbitrary buffered background.

**Re-derived here.**  The exact normalization factors, torsion sign, boost
law, Sobolev chart, Raychaudhuri map, inverse map, and endpoint-polarization
translation are written in the conventions of calculations 00--05.

## 1. Rectangle, sheets, and working regularity

Keep the project's convention

$$
\mathcal R_{U,V}=[0,U]_u\times[0,V]_v\times S,
$$

$$
N_+=\{v=0\},\qquad N_-=\{u=0\},\qquad
S_{00}=\{u=v=0\},
$$

with future generators

$$
\ell_+=\partial_u\quad\hbox{on }N_+,
\qquad
\ell_-=\partial_v\quad\hbox{on }N_-.
$$

Thus

$$
X_{\rm in}=N_+\cup_{S_{00}}N_-.
$$

The local-germ route below allows any compact orientable $S$ covered by the
Rendall/Cabet hypotheses.  The cited Luk collar theorem uses $S\simeq S^2$;
that topology restriction is retained whenever Luk is invoked.

No optimal regularity is attempted.  Fix an integer $s\geq12$.  For a tensor
$F$ on $N=I\times S$, use the high-order characteristic norm

$$
\boxed{
\|F\|_{\mathfrak H^s(N)}
:=\sum_{j=0}^{s}
\|\partial_\lambda^jF\|_{C^0(I;H^{s-j}(S))}.}
\tag{1.1}
$$

This is the finite-sheet version of the data topology (3.99) in
arXiv:1406.3009.  It deliberately over-resolves the Sobolev products, traces,
curvature, gauge completion, and ODE reconstruction.  It is a project working
scale, not a claim that $s=12$ is sharp.

## 2. The framed characteristic-data space

### 2.1 Affine chart

The affine framed chart is

$$
\boxed{
d_{\rm aff}=
(\bar q^+_{AB},\bar q^-_{AB};
\Omega_0,\theta_{+0},\theta_{-0},
\widehat\omega_A,m;
x^A,s_+,s_-).}
\tag{2.1}
$$

Its conditions are:

1. $\bar q^s\in\mathfrak H^s(N_s)$ is positive definite and
   $\det\bar q^s=1$ in the fixed source-density chart; intrinsically,
   $\Omega_s\,d^2x$ is the cut area density and $\bar q^s$ is the
   compensating unimodular tensor density, so that
   $q^s_{AB}=\Omega_s\bar q^s_{AB}$ is an ordinary metric;
2. the common conformal corner metric is imposed once,

   $$
   \boxed{\bar q^+_{AB}(0,x)=\bar q^-_{AB}(0,x)=\bar h_{AB}(x)};
   \tag{2.2}
   $$

3. $\Omega_0>0$ and
   $\Omega_0,\theta_{+0},\theta_{-0},m\in H^{s-1/2}(S)$, while
   $\widehat\omega\in H^{s-3/2}(T^*S)$;
4. the affine ruling, generator labels $x^A$, and normal frame are part of
   the datum, not already quotiented;
5. $m=m_0$ is the normal-product field on $S_{00}$, and
   $s_s:S_{00}\to S_{sL}$ are $H^{s+1/2}$ orientation-compatible
   diffeomorphisms obtained by following the marked generators to the outer
   cuts.

The full shared corner metric is

$$
\boxed{q_{AB}|_{S_{00}}=\Omega_0\bar h_{AB}.}
\tag{2.3}
$$

The two expansions $\theta_{+0}$ and $\theta_{-0}$ and the two conformal
velocities are independent normal data.  They are not matched to one another.

Let $\mathcal D_{\rm char}^{s,{\rm fr}}$ be the open subset for which the
Raychaudhuri solutions below obey

$$
\inf_{N_s}r_s\geq c_r>0,
\tag{2.4}
$$

the cut metrics remain uniformly positive, and the endpoint maps remain
invertible with a positive lower singular-value bound.  These are the
positive-area/no-caustic/framing-chart conditions.

### 2.2 Endpoint-map polarization

On the monotonic-area chart $\theta_s\neq0$, the equivalent nonredundant
corner variables are

$$
(s_+,s_-,\pi_+,\pi_-;\Omega_0,\lambda_R,\bar h_{AB}),
$$

$$
\pi_s\in\Gamma\!\left(
s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_{00})
\right),\qquad
p_{sA}=\pi_{s i}\partial_As_s^i,
\tag{2.5}
$$

subject to

$$
p_{+A}+p_{-A}=2\Omega_0D_A\lambda_R.
\tag{2.6}
$$

With $n_s=\mathcal B_s\ell_s$ and fixed nonzero references
$\mathcal B_{*s}$,

$$
\lambda_R=m-\log|\mathcal B_{+0}/\mathcal B_{*+}|
-\log|\mathcal B_{-0}/\mathcal B_{*-}|,
\tag{2.7}
$$

$$
\tau_{vA}=\frac{p_{-A}-p_{+A}}{2\Omega_0},\qquad
\widehat\omega_A=\frac12\left[
\tau_{vA}-D_A\log|\mathcal B_{+0}/\mathcal B_{-0}|
\right].
\tag{2.8}
$$

Thus $(\pi_+,\pi_-)$ replace, rather than supplement,
$\widehat\omega_A$.  The affine $m$ chart remains the primary CIVP chart
because it need not exclude $\theta_s=0$.

## 3. Standard rigorous CIVP data

### 3.1 Luk core data

Use a normalized null frame

$$
g(e_3,e_4)=-2
$$

and write

$$
\chi_{AB}:=g(\nabla_Ae_4,e_B),\qquad
\underline\chi_{AB}:=g(\nabla_Ae_3,e_B),
$$

$$
\zeta_A:=\frac12g(\nabla_Ae_4,e_3).
\tag{3.1}
$$

Luk's Definition 1 may be represented schematically as

$$
\boxed{
d_{\rm Luk}=(\gamma_0,\chi^+(u),
\underline\chi^-(v),\zeta_0),}
\tag{3.2}
$$

where $\gamma_0$ is the metric on $S_{00}$, $\chi^+$ lives on $N_+$,
$\underline\chi^-$ lives on $N_-$, and $\zeta_0$ is a one-form at the
corner.  Equivalently one retains the reconstructed histories
$\gamma^\pm$ satisfying

$$
\mathcal L_{e_4}\gamma^+=2\chi^+,
\qquad
\mathcal L_{e_3}\gamma^-=2\underline\chi^-.
\tag{3.3}
$$

The traces satisfy the affine Raychaudhuri constraints

$$
e_4(\operatorname{tr}\chi)
+\frac12(\operatorname{tr}\chi)^2+|\widehat\chi|^2=0,
$$

$$
e_3(\operatorname{tr}\underline\chi)
+\frac12(\operatorname{tr}\underline\chi)^2
+|\widehat{\underline\chi}|^2=0.
\tag{3.4}
$$

The framed version appends the scale factors $a_\pm$, the affine parameters,
generator labels, normal frame, and endpoint markings.  These extra variables
are essential because Luk's convenient normalization otherwise forgets the
project's retained $m$ and boundary charts.

### 3.2 MSP covariant completion

For each branch MSP use null hypersurface data

$$
\mathscr D_s=(N_s,\gamma_s,\boldsymbol\ell_s,
\ell_s^{(2)},Y_s),
\tag{3.5}
$$

where $\gamma_s$ is the degenerate pullback metric,
$\boldsymbol\ell_s=g(\xi_s,\cdot)|_{N_s}$ and
$\ell_s^{(2)}=g(\xi_s,\xi_s)$ encode a rigging $\xi_s$, and

$$
Y_s=\frac12\Phi_s^*(\mathcal L_{\xi_s}g)
\tag{3.6}
$$

encodes the transverse first jet.  Their double null data also contain the
negative cross-normal scalar $\mu$ and the gauge-covariant corner
compatibility conditions of Definition 4.6 in arXiv:2301.02722.

In the cross-null rigging gauge, the project data provide the shared metric,
both normal second fundamental forms, the normal product, and the torsion at
$S_{00}$.  The remaining components of $Y_s$ are not additional free project
data: on an embedded vacuum development they are obtained from the remaining
null constraint transports.  Theorem 7.15 of arXiv:2205.15267 does **not**
itself prove that free-data completion; it assumes full double null data
$(D_+,D_-,\mu)$ satisfying its abstract constraints.  Accordingly the exact
project-to-CIVP theorem below chooses Luk's regular core data as its target.
MSP are used to identify the covariant full first jet and the scope of
geometric uniqueness, not to conceal an unproved completion map.

## 4. Metric and second-fundamental-form dictionary

For each branch set

$$
A_s=(\bar q^s)^{-1}\partial_{\lambda_s}\bar q^s,
\qquad
V_s=\frac18\operatorname{tr}(A_s^2).
$$

The project reconstruction is

$$
\boxed{
r_s''+V_sr_s=0,\qquad
r_s(0)=\sqrt{\Omega_0},\qquad
r_s'(0)=\frac12\sqrt{\Omega_0}\theta_{s0}.}
\tag{4.1}
$$

Then

$$
q^s_{AB}=r_s^2\bar q^s_{AB},\qquad
\theta_s=2\frac{r_s'}{r_s},\qquad
\sigma^s_{AB}=\frac{r_s^2}{2}\partial_{\lambda_s}\bar q^s_{AB},
\tag{4.2}
$$

and

$$
\boxed{
B^s_{AB}=\frac12\partial_{\lambda_s}q^s_{AB}
=\sigma^s_{AB}+\frac12\theta_sq^s_{AB}.}
\tag{4.3}
$$

Choose positive frame factors on $S_{00}$, extended constantly along the
corresponding affine generators, such that

$$
\boxed{a_+a_-e^{-m}=2.}
\tag{4.4}
$$

The normalized rigorous-CIVP fields are

$$
e_4=a_+\ell_+,
\qquad e_3=a_-\ell_-,
$$

$$
\boxed{
\gamma_0=\Omega_0\bar h,\qquad
\chi^+_{AB}=a_+B^+_{AB},\qquad
\underline\chi^-_{AB}=a_-B^-_{AB}.}
\tag{4.5}
$$

Thus the affine project forms themselves obey the requested decomposition

$$
B^+_{AB}=\sigma^+_{AB}+\frac{\theta_+}{2}q^+_{AB},
\qquad
B^-_{AB}=\sigma^-_{AB}+\frac{\theta_-}{2}q^-_{AB}.
\tag{4.5a}
$$

The $a_\pm$ factors in (4.5) only convert these forms to the
$g(e_3,e_4)=-2$ frame.

If the same optical coordinates are retained, Luk's optical lapse satisfies

$$
2\Omega_{\rm Luk}^2=e^{-m}.
\tag{4.6}
$$

Equivalently, reparametrize the initial generators so that
$e_4=\partial_{\widetilde u}$ and
$e_3=\partial_{\widetilde v}$; then the initial Luk gauge has
$\Omega_{\rm Luk}=1$.  The factors $a_\pm$ and the reparametrization are kept
in the framed data, so this gauge choice does not erase $m$.

## 5. Torsion and normal-frame normalization

Starting from (3.1),

$$
\begin{aligned}
\zeta_A
&=\frac12g(\nabla_A(a_+\ell_+),a_-\ell_-)\\
&=-\omega_A^{(+)}-D_A\log a_+.
\end{aligned}
\tag{5.1}
$$

Using metric compatibility and the other branch gives

$$
\boxed{
\zeta_A=-\omega_A^{(+)}-D_A\log a_+
=\omega_A^{(-)}+D_A\log a_-.}
\tag{5.2}
$$

The equality of the two expressions is exactly

$$
\omega_A^{(+)}+\omega_A^{(-)}=-D_Am
$$

together with $D_A\log(a_+a_-)=D_Am$.  In the symmetric frame split,

$$
\omega_A^{(+)}=\widehat\omega_A-\frac12D_Am,
\qquad D_A\log a_+=\frac12D_Am,
$$

and hence

$$
\boxed{\zeta_A=-\widehat\omega_A.}
\tag{5.3}
$$

Under the same residual opposite boost, represented on the project null
frame and on the normalized frame by

$$
e_4\mapsto e^be_4,\qquad e_3\mapsto e^{-b}e_3,
$$

one has

$$
\zeta_A\mapsto\zeta_A-D_Ab,
\qquad
\widehat\omega_A\mapsto\widehat\omega_A+D_Ab,
\tag{5.4}
$$

so (5.3) is equivariant.

The branch normal connections along the initial sheets are then fixed by the
project's Damour transport,

$$
(\partial_{\lambda_s}+\theta_s)\omega_A^{(s)}
=D_A\frac{\theta_s}{2}-D_B\sigma_s{}^B{}_A,
\tag{5.5}
$$

$$
\omega_A^{(s)}(\lambda_s)
=\frac{\Omega_0\omega_{A0}^{(s)}
+\int_0^{\lambda_s}\Omega_s
\left(D_A\frac{\theta_s}{2}-D_B\sigma_s{}^B{}_A\right)d\tau}
{\Omega_s(\lambda_s)}.
\tag{5.6}
$$

This is the same constraint information that appears in the rigorous
null-connection completion; it is not an independent bulk free function.

## 6. Local smooth invertibility

### Theorem 6.1 - project data to Luk data

Let $s\geq12$ and fix the frame split $a_\pm$ and boundary markings.  On the
sector (2.4), the map

$$
\boxed{
T_{\rm Luk}:\mathcal D_{\rm char}^{s,{\rm fr}}
\longrightarrow\mathcal D_{\rm Luk}^{s-1,{\rm fr}}}
\tag{6.1}
$$

defined by (4.1)--(5.3) is $C^\infty$ onto the regular framed Luk data that
satisfy (3.3)--(3.4).  It has a $C^\infty$ inverse on its image.

**Proof.**

1. The map $\bar q\mapsto V[\bar q]$ is smooth from the open positive
   unimodular chart in $\mathfrak H^s$ to the corresponding
   $\mathfrak H^{s-1}$ coefficient space.
2. Parameter-dependent linear ODE theory applied generator by generator to
   (4.1), together with the Sobolev multiplication theorem for $s\geq12$,
   makes $(\bar q,\Omega_0,\theta_0)\mapsto r$ smooth.  The lower bound
   (2.4) makes division by $r$ smooth.
3. Equations (4.2)--(4.5) and (5.2) are smooth algebraic/differential maps.
4. Conversely, integrate (3.3) from the common $\gamma_0$ to recover the two
   metrics $q^s$.  Then

   $$
   \Omega_s=\sqrt{\det q^s},\qquad
   \bar q^s=\Omega_s^{-1}q^s,
   $$

   $$
   \theta_{+0}=a_+^{-1}\operatorname{tr}_{q_0}\chi^+_0,
   \qquad
   \theta_{-0}=a_-^{-1}
   \operatorname{tr}_{q_0}\underline\chi^-_0,
   $$

   and, in the symmetric frame, $\widehat\omega=-\zeta$.  The retained
   frame scales recover $m$ from (4.4).  Positivity makes determinant,
   inversion, and logarithm smooth.
5. These constructions are inverse because (3.3) is exactly
   $\mathcal L_{\ell_s}q^s=2B^s$ after the frame rescaling.  The
   Raychaudhuri equations are equivalent by (4.2)--(4.5).

This proves the claim.  The one derivative loss records the displayed
generator and angular derivatives; it is not asserted to be optimal.

### Corollary 6.2 - MSP core dictionary and completion boundary

Restricting any completed MSP double null datum to its regular Luk core gives

$$
R_{\rm core}(D_+,D_-,\mu)
=(\gamma_0,\chi^+,\underline\chi^-,\zeta;a_\pm,x^A,s_\pm),
\tag{6.2}
$$

and $T_{\rm Luk}^{-1}\circ R_{\rm core}$ recovers the project datum.  At the
corner, the MSP normal product is the project value

$$
\mu=g(\ell_+,\ell_-)=-e^{-m},
\tag{6.3}
$$

while its first-order compatibility conditions are precisely equality of the
shared cut metric, the two normal second fundamental forms, and the torsion
under the chosen normal-pair identification.  The second-order condition is
the equality of the pulled-back abstract Ricci tensors; in vacuum it is part
of the abstract constraint equations.

What is **not** asserted is that Theorem 7.15 constructs a smooth map
$C_{\rm MSP}$ from the four Luk core fields to every component of
$(D_+,D_-,\mu)$.  To use MSP data as the primary Banach chart one would still
have to write and estimate all remaining null constraint transports for
$Y_\pm$.  This extra completion is unnecessary for the local development map,
because Luk and Cabet--Chru\'sciel--Tagne Wafo take the regular characteristic
metric/core data directly.

No extra algebraic equality between $\theta_{+0}$ and $\theta_{-0}$, or
between the two corner shears, is introduced.

### Corollary 6.3 - symmetric-hyperbolic characteristic data

The vacuum data used in Section 5.1 of arXiv:1406.3009 consist on each null
sheet of its degenerate metric $\widetilde g_s$, the generator connection
$\nabla_{\partial_{\lambda_s}}\partial_{\lambda_s}
=\kappa_s\partial_{\lambda_s}$, and the compatible corner data needed to
initialize the frame/connection/curvature transport system.  In the project
chart,

$$
\boxed{
\widetilde g_s=q^s_{AB}dx^A dx^B,
\qquad \kappa_s=0,}
\tag{6.4}
$$

and the shared metric, normal product $-e^{-m}$, two null second fundamental
forms, and torsion in (4.5)--(5.3) are exactly the required corner first jet.
The remaining tetrad, connection, and curvature fields of equations
(5.12)--(5.14) in that source are obtained by its null transport equations.

Let $C_{\rm SH}$ denote this fixed Stewart/CKN gauge completion.  On the
regular sector,

$$
T_{\rm SH}:=C_{\rm SH}\circ T_{\rm Luk}
\tag{6.5}
$$

is the smooth-data gauge completion used in the proof of Theorem 5.3 of that
source.  Its inverse on the constrained image restricts to
$(q^s,\kappa_s=0)$ and the corner first jet, then applies
$T_{\rm Luk}^{-1}$.  The source states that finite-Sobolev versions can be
obtained by tracking losses, but does not state a smooth Banach-space map with
a fixed loss.  This note therefore does not promote $T_{\rm SH}$ to such a
theorem.  The auxiliary tetrad coefficients are gauge/constraint completions,
not new project degrees of freedom.

## 7. Equivariance

A diagonal generator relabelling $f\in\operatorname{Diff}(S)$ pulls back the
ordinary metric $q^\pm$, the area density $\Omega_\pm d^2x$, the scalar fields
$\theta_{\pm0},m$, and the one-form $\widehat\omega$, and conjugates the
endpoint maps.  The action on $\bar q$ is the induced unimodular
tensor-density pullback

$$
f^*(\Omega\,d^2x)=:(f\boldsymbol\cdot\Omega)\,d^2x,
\qquad
f\boldsymbol\cdot\bar q
:=\frac{f^*q}{f\boldsymbol\cdot\Omega},
$$

not the weight-zero tensor pullback of $\bar q$.
Every operation in (4.1)--(5.6) is natural under this action, hence

$$
T_{\rm Luk}(f\cdot d)=f\cdot T_{\rm Luk}(d).
\tag{7.1}
$$

Equation (5.4) proves equivariance under the residual opposite boost.  The
endpoint-polarization formulas (2.5)--(2.8) are likewise equivariant because
$\tau_v$, $\lambda_R$, $p_s$, and $\pi_s$ are invariant in the declared
area-normalized frame.

These transformations are boundary symmetries of the framed data.  They are
not included in the proper bulk diffeomorphism group defined in calculation
07.

## 8. Evidence boundary

**Proved in-project:** the affine/Luk dictionary, including the
Raychaudhuri reconstruction, null second fundamental forms, torsion sign,
frame factors, inverse, local smoothness, and equivariance.

**Proved by cited theorem after the dictionary:** local existence after
restriction, geometric uniqueness for completed MSP data, and a smooth
neighborhood of the complete initial sheets in the
Cabet--Chru\'sciel--Tagne Wafo/Chru\'sciel--Tagne Wafo--Gray gauges.

**Checked symbolically:** the two branch expressions in (5.2), the symmetric
formula (5.3), and the opposite-boost law (5.4).  The check is a sign/factor
regression only.

**Open in this dictionary note:** a finite-Sobolev MSP $Y_\pm$ completion map,
a common Sobolev solution map on the full $\mathcal R_{U,V}$, a
background-relative continuation estimate, a physical four-face closing
action, and functional nondegeneracy after boundary reduction.  Calculation
07 reduces the fixed-rectangle questions to one explicit PDE proposition.
