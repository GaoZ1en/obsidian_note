# 02 — Coupled spin-0 + spin-2 affine reduction

## 0. Direct verdict and provenance

**Derived for the selected representative and fixed-generator affine gauge:**
the full null potential, not only its shear term, has been pulled back through
the vacuum Raychaudhuri constraint.  The result is an exact coupled
spin-0+spin-2 presymplectic form in which the area radius is the nonlocal
functional

$$
r_\pm=r_\pm[\bar q^\pm;\Omega_0,\theta_{\pm0}].
$$

This closes the analytic Stage-2 pullback at the level of the two null sheets,
their shared initial corner, and the declared abstract area/boost outer ports.
It does **not** prove a representative-independent full gravitational CPS, a
concrete closing-boundary action, or the spin-1/embedding reduction.  Agreement
with Reisenberger is established only for the conformal bulk coefficient.
The affine/area normal dictionary is field dependent, and the isolated corner
blocks have an unresolved relative sign; equivalence of the complete forms
remains open.

**Known from literature.**  The vacuum null constraints and the identification
of $\bar q_{AB}$ as shear data are taken from the classical part of
Ciambelli--Klinger, arXiv:2607.07785v1, eqs. (18)--(21).  The unreduced null
potential is the HF/LMPS representative fixed in calculation 00.  Reisenberger
gr-qc/0703134 and arXiv:1211.3880 are used only after the derivation as
regression targets.

**Re-derived here.**  The shear norm, focusing potential, Green map, complete
reduced one-form, its field-space curl, and the double-null diagonal corner
pullback are derived below in the project's notation.

**Project-specific/conditional.**  Outer cuts retain the Stage-1 area/boost
ports.  A different $dY$ representative or a specified closing wall can add
canonically related cut terms, including traceless shape terms; no uniqueness
of the abstract port completion is claimed.

## 1. Scope and independent data

Work in four-dimensional vacuum GR on a finite caustic-free double-null cross

$$
X=N_+\cup_{S_0}N_-.
$$

Generator labels and embeddings are fixed, the shifts vanish, and the first
pass is affine:

$$
\ell_\pm=\partial_{\lambda_\pm},
\qquad \kappa_\pm=0,
\qquad \delta\ell_\pm^A=0.
\tag{1.1}
$$

The primary sheet profiles are

$$
\bar q^\pm_{AB}(\lambda_\pm,x),
\qquad \det\bar q^\pm=1,
\tag{1.2}
$$

with one shared corner value

$$
\boxed{
\bar q^+_{AB}(0,x)=\bar q^-_{AB}(0,x)=\bar h_{AB}(x).}
\tag{1.3}
$$

The remaining corner integration data are specified once as

$$
(\Omega_0,\theta_{+0},\theta_{-0},m_0,\omega_{A0}).
\tag{1.4}
$$

$\theta_{+0}$ and $\theta_{-0}$ are independent normal derivatives; they are
not matched.  Likewise the two conformal velocities at $S_0$ are independent.
$\omega_{A0}$ is shared normal-bundle data.  It is transported by Damour but
does not enter the present potential because of (1.1).

## 2. Coupled Raychaudhuri reconstruction

Suppress the branch label temporarily and write

$$
q_{AB}=\Omega\bar q_{AB},
\qquad r:=\sqrt\Omega>0,
\qquad \det\bar q=1.
\tag{2.1}
$$

Define the matrix

$$
A:=\bar q^{-1}\bar q',
\qquad {}'\equiv\partial_\lambda.
\tag{2.2}
$$

Unimodularity gives $\operatorname{tr}A=0$.  From
$B_{AB}=q'_{AB}/2$ and
$\sigma_{AB}=B_{AB}-\theta q_{AB}/2$ one obtains

$$
\theta=\frac{\Omega'}{\Omega}=2\frac{r'}r,
\qquad
\boxed{\sigma_{AB}=\frac{\Omega}{2}\bar q'_{AB}.}
\tag{2.3}
$$

Raising both indices with $q^{AB}=\Omega^{-1}\bar q^{AB}$ gives

$$
\sigma^{AB}
=\frac1{2\Omega}\bar q^{AC}\bar q^{BD}\bar q'_{CD},
\tag{2.4}
$$

and therefore

$$
\boxed{
\sigma_{AB}\sigma^{AB}
=\frac14\bar q^{AC}\bar q^{BD}
\bar q'_{AB}\bar q'_{CD}
=\frac14\operatorname{tr}(A^2).}
\tag{2.5}
$$

The affine vacuum Raychaudhuri equation is

$$
\theta'+\frac12\theta^2+\sigma_{AB}\sigma^{AB}=0.
\tag{2.6}
$$

Since $\theta'+\theta^2/2=2r''/r$, (2.5) gives the exact linear focusing
equation

$$
\boxed{
r''+V[\bar q]r=0,
\qquad
V[\bar q]:=\frac18\operatorname{tr}
\left[(\bar q^{-1}\bar q')^2\right].}
\tag{2.7}
$$

The initial conditions are

$$
\boxed{
r(0)=r_0:=\sqrt{\Omega_0},
\qquad
r'(0)=p_0:=\frac12\theta_0r_0.}
\tag{2.8}
$$

For a smooth positive-definite $\bar q$ on a finite interval, (2.7)--(2.8)
have a unique solution.  Stage 2 restricts to the open domain on which that
solution stays positive; this is the declared caustic-free cell.  Unless
$V$ has a special profile, $r$ is a nonlocal functional of the complete
conformal history before $\lambda$.

## 3. Linearized reconstruction and retarded Green map

Let $\boldsymbol\delta$ be the field-space exterior derivative and set

$$
B:=\bar q^{-1}\boldsymbol\delta\bar q,
\qquad \operatorname{tr}B=0.
\tag{3.1}
$$

The matrix identities

$$
\boldsymbol\delta A=B'+[A,B],
\qquad
\boldsymbol\delta B=-B\wedge B
\tag{3.2}
$$

imply

$$
\boxed{
\boldsymbol\delta V
=\frac14\operatorname{tr}(A\,B').}
\tag{3.3}
$$

The commutator in $\boldsymbol\delta A$ drops out because
$\operatorname{tr}(A[A,B])=0$.  Writing
$\chi:=\boldsymbol\delta r$, the linearized focusing equation is

$$
\chi''+V\chi=-r\,\boldsymbol\delta V.
\tag{3.4}
$$

Its initial data are

$$
\chi(0)=\frac{\boldsymbol\delta\Omega_0}{2r_0},
\qquad
\chi'(0)=\frac{r_0}{2}\boldsymbol\delta\theta_0
+\frac{\theta_0}{4r_0}\boldsymbol\delta\Omega_0.
\tag{3.5}
$$

Let $c,s$ solve the homogeneous equation $y''+Vy=0$ with

$$
c(0)=1,\ c'(0)=0,
\qquad
s(0)=0,\ s'(0)=1.
\tag{3.6}
$$

Their Wronskian is one.  The retarded kernel

$$
G(\lambda,\tau)
=s(\lambda)c(\tau)-c(\lambda)s(\tau),
\qquad 0\leq\tau\leq\lambda,
\tag{3.7}
$$

satisfies $G(\tau,\tau)=0$ and
$\partial_\lambda G(\lambda,\tau)|_{\lambda=\tau}=1$.  Thus

$$
\boxed{
\begin{aligned}
\boldsymbol\delta r(\lambda)={}&
c(\lambda)\frac{\boldsymbol\delta\Omega_0}{2r_0}
+s(\lambda)\left(
\frac{r_0}{2}\boldsymbol\delta\theta_0
+\frac{\theta_0}{4r_0}\boldsymbol\delta\Omega_0
\right)\\
&-\int_0^\lambda
G(\lambda,\tau)r(\tau)\,
\boldsymbol\delta V(\tau)\,d\tau .
\end{aligned}}
\tag{3.8}
$$

Equation (3.8) is the explicit nonlocal spin-2-to-area response.  It separates
the two corner integration constants from the retarded response to the
conformal profile.

## 4. Pullback of the full null potential

The affine, fixed-generator bulk potential selected in calculation 00 is

$$
\Theta_N^{\rm bulk}
=C_G\int_N\left[
\frac12\Omega\widetilde\sigma^{AB}
\boldsymbol\delta\bar q_{AB}
-\frac12\theta\boldsymbol\delta\Omega
\right]d\lambda d^2x,
\tag{4.1}
$$

where $\widetilde\sigma^{AB}:=\Omega\sigma^{AB}$.  Equation (2.4) gives

$$
\frac12\Omega\widetilde\sigma^{AB}
\boldsymbol\delta\bar q_{AB}
=\frac{r^2}{4}\operatorname{tr}(A B),
\tag{4.2}
$$

while

$$
-\frac12\theta\boldsymbol\delta\Omega
=-2r'\boldsymbol\delta r.
\tag{4.3}
$$

Therefore the **complete** Raychaudhuri-reduced one-form on one sheet is

$$
\boxed{
\Theta_{N,\mathrm{red}}^{(0+2)}
=C_G\int d^2x\int_0^L d\lambda
\left[
\frac{r^2}{4}\operatorname{tr}(A B)
-2r'\boldsymbol\delta r
\right],}
\tag{4.4}
$$

with $r$ and $\boldsymbol\delta r$ given by (2.7)--(2.8) and (3.8).
The second term in (4.4) cannot be replaced by the shear-free Stage-1 answer
before solving (2.7); it carries both corner variations and the nonlocal
response to $\boldsymbol\delta\bar q$.

## 5. The coupled reduced two-form

Taking the field-space curl of (4.4), without integrating by parts in
$\lambda$, gives

$$
\boxed{
\begin{aligned}
\Omega_{N,\mathrm{red}}^{(0+2)}
=C_G\int d^2x\int_0^L d\lambda\Bigg[&
2\,\boldsymbol\delta r\wedge
\partial_\lambda\boldsymbol\delta r\\
&+\frac r2\boldsymbol\delta r\wedge
\operatorname{tr}(A B)\\
&+\frac{r^2}{4}\operatorname{tr}\left(
B'\wedge B+A\,B\wedge B\right)
\Bigg].
\end{aligned}}
\tag{5.1}
$$

The first line is the reconstructed spin-0 contribution, the last line is the
non-abelian conformal-metric curl, and the middle line is an explicit
spin-0/spin-2 cross term.  Nonlocality is contained in
$\boldsymbol\delta r$ through (3.8); it has not been hidden by treating the
spin-2 term as a spectator.

For two commuting variations, write

$$
\chi_i:=\delta_i r,
\qquad B_i:=\bar q^{-1}\delta_i\bar q.
$$

Then (5.1) reads

$$
\begin{aligned}
\Omega_{N,\mathrm{red}}^{(0+2)}[\delta_1,\delta_2]
=C_G\int d^2x\int_0^L d\lambda\Bigg\{&
2(\chi_1\chi_2'-\chi_2\chi_1')\\
&+\frac r2\left[
\chi_1\operatorname{tr}(AB_2)
-\chi_2\operatorname{tr}(AB_1)\right]\\
&+\frac{r^2}{4}\operatorname{tr}\left(
B_1'B_2-B_2'B_1+A[B_1,B_2]
\right)\Bigg\}.
\end{aligned}
\tag{5.2}
$$

Equations (3.8) and (5.2) are a Green-kernel symplectic form: after inserting
(3.8), every conformal/area cross term is an explicit Volterra integral in the
generator direction.  No locality claim is made in the affine data.

The matrix Maurer--Cartan term has also been left visible in (5.1)--(5.2),
because it is required before restricting the matrix-valued field-space
algebra.  On the physical positive-definite symmetric-metric submanifold,
$A$ and each $B_i$ are self-adjoint with respect to $\bar q$, while
$[B_1,B_2]$ is $\bar q$-skew-adjoint.  Consequently

$$
\operatorname{tr}\!\left(A[B_1,B_2]\right)=0
\tag{5.3}
$$

pointwise for physical metric variations.  V12b checks the unreduced matrix
curl and this cancellation in a non-diagonal unimodular chart; it is not a
claim of an additional independent physical coupling.

## 6. Double-null pullback, shared corner, and outer ports

Restore the branch label $s=\pm$.  Each sheet has

$$
r_s=r_s[\bar q^s;\Omega_0,\theta_{s0}],
\qquad
\Omega_{sL}=r_s(L_s)^2.
\tag{6.1}
$$

The complete selected cell one-form is

$$
\boxed{
\begin{aligned}
\Theta_{X,\mathrm{red}}^{(0+2)}={}&
\Theta_{N_+,\mathrm{red}}^{(0+2)}
+\Theta_{N_-,\mathrm{red}}^{(0+2)}\\
&+C_G\int_{S_0}a_0\boldsymbol\delta\Omega_0\,d^2x
+C_G\sum_{s=\pm}\int_{S_s}
b_s\boldsymbol\delta\Omega_{sL}\,d^2x,
\end{aligned}}
\tag{6.2}
$$

where $a_0=-m_0-\log2$.  Its curl is

$$
\boxed{
\begin{aligned}
\Omega_{X,\mathrm{red}}^{(0+2)}={}&
\Omega_{N_+,\mathrm{red}}^{(0+2)}
+\Omega_{N_-,\mathrm{red}}^{(0+2)}
-C_G\int_{S_0}
\boldsymbol\delta m_0\wedge\boldsymbol\delta\Omega_0\,d^2x\\
&+C_G\sum_{s=\pm}\int_{S_s}
\boldsymbol\delta b_s\wedge
\boldsymbol\delta\Omega_{sL}\,d^2x.
\end{aligned}}
\tag{6.3}
$$

The Stage-1 endpoint normalization cancellation is algebraic in
$(a_0,\Omega_0)$ and is not changed by shear.  There is still one initial
area/relative-boost pair.  No extra explicit conformal corner potential is
generated in this representative with fixed embeddings.  Nevertheless the
sheet terms depend on the single shared conformal variation

$$
B_+(0)=B_-(0)=\bar h^{-1}\boldsymbol\delta\bar h,
\tag{6.4}
$$

so both normal directions couple to one corner metric rather than to two
copies.  Similarly, (3.5) uses one $\boldsymbol\delta\Omega_0$ but two
independent $\boldsymbol\delta\theta_{\pm0}$.

Spin-2 backreaction reaches the existing outer ports through

$$
\boldsymbol\delta\Omega_{sL}
=2r_s(L_s)\boldsymbol\delta r_s(L_s),
\tag{6.5}
$$

and $\boldsymbol\delta r_s(L_s)$ contains the Green integral (3.8).  Thus the
area/boost port term in (6.3) already contains induced spin-2/port cross
couplings.  In the selected HF representative there is no separate traceless
shape port while $\delta\ell_s^A=0$.  A $dY$ shift with conformal support, or
the action of a concrete closing boundary whose traceless metric is allowed to
vary, can add such a cut term.  This is retained as an explicit port-policy
boundary rather than set to zero as a theorem.

Geometric and dynamical matching remain distinct:

$$
b_s=\hbox{relative normal/closing-boundary boost data},
$$

whereas

$$
p_{\Omega,s}=-(\kappa_s+\theta_s/2)=-r_s'/r_s
\tag{6.6}
$$

is the canonical area momentum controlling smooth characteristic evolution.

## 7. Shear-free and diagonal-chart regressions

If $\bar q$ is fixed along the generator, then $A=B=V=0$ and

$$
r=r_0+p_0\lambda.
$$

Equation (5.1) reduces to

$$
2C_G\int_0^L
\boldsymbol\delta r\wedge\boldsymbol\delta r'\,d\lambda
=\frac{C_GL}{2}
\boldsymbol\delta\Omega_0\wedge
\boldsymbol\delta\theta_0,
\tag{7.1}
$$

which is exactly the Stage-1 sheet form.

For the diagonal unimodular chart

$$
\bar q=\operatorname{diag}(e^{2\phi},e^{-2\phi}),
\tag{7.2}
$$

one has

$$
V=(\phi')^2,
\qquad
r''+(\phi')^2r=0,
\tag{7.3}
$$

and

$$
\Theta_{N,\mathrm{red}}^{(0+2)}
=C_G\int d^2x\int_0^L
\left(2r^2\phi'\boldsymbol\delta\phi
-2r'\boldsymbol\delta r\right)d\lambda.
\tag{7.4}
$$

Its curl is

$$
C_G\int d^2x\int_0^L\left[
2\boldsymbol\delta r\wedge\boldsymbol\delta r'
+4r\phi'\boldsymbol\delta r\wedge\boldsymbol\delta\phi
+2r^2\boldsymbol\delta\phi'\wedge\boldsymbol\delta\phi
\right]d\lambda,
\tag{7.5}
$$

which is the commuting-matrix specialization of (5.1).  The script checks
(2.5), (2.7), (3.4), and the pointwise curl (7.5) in finite-dimensional
profiles.  These regressions do not replace the analytic functional statement.

## 8. Reisenberger dictionary and regression

The comparison is made only after deriving (6.3).  Reisenberger's tangents

$$
n_A=\partial_{v_A}
$$

are area-parameter tangents, not the project's affine generators.  Write

$$
\boxed{
n_s=B_s\ell_s,
\qquad
B_s:=\frac{d\lambda_s}{dv_s}.}
\tag{8.1}
$$

Since $v_s=r_s/r_0$, at the initial cut

$$
\frac{dv_s}{d\lambda_s}\bigg|_{S_0}=\frac12\theta_{s0},
\qquad
B_{s0}=\frac{2}{\theta_{s0}},
\tag{8.2}
$$

whenever the area parameter is nonstationary.  For the assignment
$n_R=B_+\ell_+$ and $n_L=B_-\ell_-$, the corrected dictionary is

| Project | Reisenberger | Qualification |
|---|---|---|
| $\Omega$ | $\rho$ | area density in common generator labels |
| $v_s=r_s/r_0=\sqrt{\Omega_s/\Omega_0}$ | $v_A$ | valid where the area parameter is nonstationary |
| $\bar q^s_{AB}$ | $e_{pq}$ | unimodular conformal two-metric |
| $\theta_s=2r_s'/r_s$ | $2\partial_{\eta_s}\log v_s$ | after identifying affine parameters up to a fixed affine transformation |
| $\sigma^s_{AB}=\Omega_s\partial_{\eta_s}\bar q^s_{AB}/2$ | $\rho\partial_{\eta_A}e_{pq}/2$ | same shear convention |
| $m=-\log(-\ell_+\!\cdot\ell_-)$ | $\lambda_R=-\log|n_L\!\cdot n_R|$ | $\lambda_R=m-\log|B_+B_-|$ |
| $\omega_A$ | area-normal twist $\tau_v$ | $\omega_A=[\tau_v-D\lambda_R]/2-D\log|B_+|$ for the stated assignment |
| $\sqrt{\Omega_{sL}/\Omega_0}$ | $\bar v_A$ | endpoint value of the area parameter |
| fixed generator/endpoint embeddings | $\delta s_A^i=0$ | removes the endpoint-map/twist potential |

Strictly, $\bar q_{AB}$ and $e_{pq}$ are the corresponding unimodular
tensor densities in their declared transverse charts; the table suppresses
that common density weight.

The normal and twist entries follow from

$$
\boxed{
\lambda_R=-\log|n_L\!\cdot n_R|
=m-\log|B_+B_-|,}
\tag{8.3}
$$

and

$$
\tau_\ell
:=\frac{\ell_-\cdot\nabla_A\ell_+
-\ell_+\cdot\nabla_A\ell_-}
{\ell_-\cdot\ell_+}
=2\omega_A+D_A m,
\tag{8.4}
$$

$$
\boxed{
\tau_v=\tau_\ell+D\log|B_+/B_-|.}
\tag{8.5}
$$

Combining (8.3)--(8.5) yields the table entry for $\omega_A$.  At $S_0$,

$$
\lambda_R
=m+\log\left|\frac{\theta_{+0}\theta_{-0}}4\right|.
\tag{8.6}
$$

The simpler relation $\omega=(\tau_v-D\lambda_R)/2$ holds only after an
additional normalization such as fixed $B_+=1$; it is not the generic affine
dictionary.  Reversing the branch assignment changes the corresponding twist
signs.

### 8.1 Conformal bulk coefficient

Reisenberger arXiv:1211.3880, eq. (100), writes the branch bulk potential in
an outer-normalized area coordinate $\varrho$ as

$$
-\frac1{32\pi G}\int
\bar\rho\,\varrho^2
\partial_\varrho e^{ij}\,\delta e_{ij}\,d\varrho d^2y.
\tag{8.7}
$$

Since
$\partial_\varrho e^{ij}=-e^{ik}e^{jl}\partial_\varrho e_{kl}$ and
$\Omega=\bar\rho\varrho^2$, (8.7) becomes

$$
\frac1{32\pi G}\int
\Omega e^{ik}e^{jl}\partial_\varrho e_{kl}\,\delta e_{ij}
\,d\varrho d^2y.
\tag{8.8}
$$

The project coefficient in (4.2) is
$C_G/4=1/(32\pi G)$.  The conformal bulk density therefore agrees exactly
after the variable dictionary and inverse-metric sign are applied.  This
coefficient check holds the area-coordinate domain fixed; it does not include
the surface terms generated when the field-dependent map
$\lambda_s\mapsto v_s$ is varied.

### 8.2 Corner and endpoint sectors

The project internally has one $(\Omega_0,m_0)$ pair, proved in calculation
00.  Reisenberger also uses one shared $\rho_0/\lambda_R$ sector, but the
isolated two-form blocks do **not** yet agree.  With the conformal bulk signs
aligned as in section 8.1, the displayed corner pieces are

$$
\Omega_{S_0}^{\rm project}
=-C_G\,\delta m\wedge\delta\Omega_0,
\tag{8.9}
$$

whereas the sum of Reisenberger's two branch surface terms contains

$$
\Omega_{S_0}^{\rm Reis}
=+C_G\,\delta\lambda_R\wedge\delta\rho_0.
\tag{8.10}
$$

Equations (8.3) and (8.6) show that this is not a comparison at fixed normal
scaling: $\delta\lambda_R$ also contains expansion variations.  Moreover the
field-dependent affine-to-area transformation generates a shared-corner
conformal endpoint term, represented in Reisenberger's eqs. (106), (116), and
(118).  Fixing endpoint maps does not remove that term.  Therefore the sign
difference between (8.9) and (8.10) cannot consistently be called a single
overall hypersurface-orientation reversal while the bulk signs are kept
aligned.

The corner comparison is left **open** until an explicit transformation of
the bulk, moving endpoint, $dY$/joint representative, and port variables
reproduces all surface terms.  The additive $-\log2$ in the LMPS joint is an
exact-potential shift, but by itself it does not resolve (8.9)--(8.10).

Reisenberger's endpoint maps $s_A^i$ pair with twist combinations
$\widetilde\tau_{Ai}$.  They are absent from (6.3) because the project fixes
generator and endpoint embeddings.  This is a gauge/polarization restriction,
not evidence that $\omega_{A0}=0$.  Conversely the abstract closing-normal
boost $b_s$ in (6.3) has no unique counterpart in Reisenberger until a concrete
closing geometry and endpoint polarization are selected.

### 8.3 What is and is not yet equivalent

Reisenberger uses the field-dependent area parameter as a coordinate.  In that
gauge the radial area variable is removed from the bulk, while moving lower
limits and endpoint maps generate surface terms, including his eqs.
(105)--(118).  The project instead fixes affine $\lambda_s$ and solves
Raychaudhuri, which leaves the Green-nonlocal area and cross terms in (5.1).

Therefore:

- the conformal bulk normalization agrees;
- the affine/area normal dictionary contains the nontrivial scale factors
  $B_s=d\lambda_s/dv_s$;
- the project has one internally proved area/relative-normal pair, but its
  equivalence to Reisenberger's corner and conformal endpoint terms is open,
  with an unresolved relative sign in the isolated blocks;
- the missing twist/endpoint-map sector is explained by
  $\delta\ell_s^A=\delta s_A^i=0$, but the shared-corner conformal endpoint
  term is not removed by that restriction;
- full equality of (6.3) with Reisenberger's area-gauge form still requires an
  explicit field-dependent change $\lambda_s\mapsto v_s$ together with its
  moving-endpoint and outer-port transformation.

The remaining difference is presently an unresolved combination of
field-dependent gauge change, $dY$/joint representative, moving endpoints,
and port policy.  It is neither a proved genuine mismatch nor a proof of full
equivalence.

## 9. Verification boundary

**Verified:** the shear norm and $1/8$ focusing coefficient; the diagonal and
non-diagonal unimodular chart regressions; the linearized focusing residual and
retarded Green identity in a constant-potential finite mode; the full
one-form/two-form curl in a finite-dimensional diagonal profile; the
non-abelian matrix curl in a non-diagonal four-parameter profile; the
shear-free reduction to Stage 1; one shared corner metric under the diagonal
pullback; and representative equivalence for a generic $r(\lambda)$ endpoint
identity.

**Assumptions:** smooth positive-definite unimodular profiles; a finite interval
on which $r_s>0$; fixed generator labels, embeddings, affine lengths, and
normal frame; selected HF/LMPS representative; the Stage-1 area/boost outer
ports.

**Not verified:** a functional-analytic theorem for the completed profile
space; nondegeneracy after gravitational gauge reduction; a concrete closing
wall and any traceless wall momentum; full equality with Reisenberger under
field-dependent reparametrization; or a reduced spin-1 symplectic pair.

## 10. Stage-3 gate

**Ready for a controlled Stage-3 transport calculation, but not for a claim of
a closed full spin-1 CPS.**  The affine Damour source is now a functional of
the Stage-2 data:

$$
J_A[\bar q,r]
=D_A\!\left(\frac12\theta\right)-D_B\sigma^B{}_A,
\qquad
\theta=2r'/r,
\qquad
\sigma_{AB}=\frac{r^2}{2}\bar q'_{AB}.
\tag{10.1}
$$

Thus $(\bar q^\pm,\Omega_0,\theta_{\pm0},\omega_{A0})$ determine the
transported $\omega_A^\pm$.  What remains is mainly the policy for its
symplectic partner: generator/corner displacement can be treated as proper
gauge, physical embedding data, or an extended port.

A short Stage-3 program is therefore:

1. solve $(\partial_{\lambda_s}+\theta_s)\omega^s_A=J^s_A$ with the shared
   $\omega_{A0}$ and the already reconstructed $r_s,\bar q^s$;
2. choose and state the embedding/endpoint-map polarization before allowing
   $\delta\ell_s^A\neq0$;
3. pull back $-\bar\eta_{sA}\delta\ell_s^A$ and compare the resulting
   endpoint-map/twist block with Reisenberger's
   $(s_A^i,\widetilde\tau_{Ai})$ sector.

No quantum or operator-algebraic construction enters this gate.
