# 06 - Rigorous CIVP dictionary and framed data spaces

**Stage 4.3 status override:** the initial $C_{\rm Bianchi}$/$C_{\rm init}$
obligations recorded below are closed by calculation 10.1--4, with loss
five in the free-slot norm and six for all filled slots, including
differentials/remainders. This does not complete MSP's full $Y_\pm$,
the bulk Einstein-identification theorem, gauge reset, or a framed
development bijection. The derivations and older stage-local status
statements in this dictionary are otherwise preserved.

## 0. Direct verdict and provenance

**Proved: the sheetwise core tensor dictionary and its smooth-category
inverse on the fixed framing slice. Not proved: a full project-to-constrained
Einstein first-order-data completion or a framed development bijection.**
The normalization is a smooth prescription, not two constants held fixed
while $m$ varies:

$$
a_+[m]=a_-[m]=\sqrt2 e^{m/2},\qquad
a_+[m]a_-[m]e^{-m}=2,\qquad
\delta a_s=\tfrac12a_s\delta m.
$$

On each original sheet, $q_s=r_s^2\bar q_s$,
$B_s=\tfrac12\mathcal L_{\ell_s}q_s$, and

$$
\chi^+=a_+B^+,\quad \underline\chi^-=a_-B^-,\quad
\zeta=-\omega^{(+)}-D\log a_+
=\omega^{(-)}+D\log a_-=-\widehat\omega.
$$

Section 4.1 now retains the **original marked hypersurfaces** in the
Cabet/Stewart gauge. It resolves the parameter-domain problem without
discarding outer cuts. It does not supply the missing first-order constraint
completion. Sections 6 and 8 separate that completion from the core map.
Stage 4.2 closes the mixed second-form transports and constructs the
free-slot preparation in calculation 09.3--4. The remaining constrained
completion is $C_{\rm init}$, with the precise $C_{\rm Bianchi}$ gate in 09.5.
The prescribed finite rectangle remains conditional; no quantization is used.

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

Fix a positive smooth reference density $\nu_0$ and a smooth reference
metric $h_0$ with volume density $\nu_0$ on the compact closed surface $S$.
Write $D^0$ for its connection, and fix a finite atlas and subordinate
partition only to compute equivalent norms. All tensor Sobolev norms below
use $h_0,D^0,\nu_0$; none requires a global chart or a global orthonormal
dyad (in particular, none exists on $S^2$). Generator labels mean a marked
identification with $S$, represented locally by $x^A$.

$$
\epsilon_q=\Omega\nu_0,\qquad \bar q=\Omega^{-1}q,\qquad
\det_{\nu_0}q:=\left(\frac{\epsilon_q}{\nu_0}\right)^2,
\qquad \det_{\nu_0}\bar q=1.
$$

Here $\Omega$ is a scalar relative to the fixed density and $\bar q$ is an
ordinary tensor; active relabelling has the compensating action in Section
7. Density-valued endpoint momenta are paired and integrated intrinsically.

No optimal regularity is attempted. Fix an integer $s\geq12$.  For a tensor
$F$ on $N=I\times S$, use the high-order characteristic norm

$$
\boxed{
\|F\|_{\mathfrak H^s(N)}
:=\sum_{j=0}^{s}
\|\partial_\lambda^jF\|_{C^0(I;H^{s-j}(S))}.}
\tag{1.1}
$$

This has the anisotropic shape of the free reduced-data topology (3.99) in
arXiv:1406.3009.  It is a project working scale. Its sufficiency for the full curvature/gauge
completion is not established merely by choosing $s=12$.

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

1. $\bar q^s\in\mathfrak H^s(N_s)$ is positive definite with
   $\det_{\nu_0}\bar q^s=1$, and $q_s=\Omega_s\bar q_s$;

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
p_{sA}\nu_0=\pi_{s i}\partial_As_s^i,
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

Choose the smooth prescription $m\mapsto(a_+[m],a_-[m])$, symmetric by
default, and extend each factor constantly along its corresponding affine
generators. In particular $\delta a_s$ must be varied when $m$ is varied:


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

### 4.1 Original-sheet parameter domain and the Cabet gauge

Reparametrizing to $e_4=\partial_{\widetilde u}$ gives
$\widetilde u=u/a_+(x)$, so the original cut $u=U$ becomes
$\widetilde u=U/a_+(x)$. The same holds on the minus sheet.
This is a ragged cut for nonconstant $a_s$; keeping only a common shorter
constant interval would lose part of the marked datum. We do **not** invoke
a ragged-sheet extension of Luk's theorem.

Instead use Cabet's geometric initial hypersurfaces directly. To avoid a
silent reversal of project signs, denote source coordinates by
$\xi=v$, $\eta=u$ on the incoming cross. The source $e_3$ is tangent to
the project **minus** sheet. Choose

$$
e_3^{\rm C}=\partial_\xi,\qquad
e_4^{\rm C}=c\partial_\eta+b^A\partial_A,
\qquad e_a^{\rm C}=E_a{}^A\partial_A.
\tag{4.6}
$$

On $N_-$, $e_3^{\rm C}=\ell_-$; on $N_+$ prescribe
$b^A=0$, $c=2e^{m(x)}$, so $e_4^{\rm C}=2e^m\ell_+$.
These are generator-constant scalings on the initial sheets, with the
original intervals $[0,V]_\xi$ and $[0,U]_\eta$ and the original $s_\pm$.
No normalized common endpoint parameter is imposed. The conversion at the
corner from the symmetric comparison frame is the explicitly retained boost

$$
e_3^{\rm C}=a_-^{-1}e_3^{\rm sym},\qquad
e_4^{\rm C}=a_-e_4^{\rm sym},\qquad
\zeta^{\rm C}=-\widehat\omega-\tfrac12Dm=\omega^{(-)}.
\tag{4.7}
$$

The asymmetric PDE frame is forced by $e_3^{\rm C}=\partial_\xi$ on the
original affine minus interval; it does not replace the default symmetric
core prescription. On an existing metric, Section 07.3.1 constructs this
gauge by optical/geodesic transport. It preserves both incoming markings.
The existence of such a metric **from project data** still needs $C_{\rm init}$.

## 5. Torsion and normal-frame normalization

The two-branch comparison (5.1)--(5.4) is at the shared corner, where both
normal vectors are defined together. The separate Damour histories below
live on their respective sheets; they are not equated pointwise on two
different hypersurfaces.

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

## 6. Core equivalence and full completion boundary

### Theorem 6.1 - equivalence onto a fixed core framing slice

Let $\mathcal F$ require the prescription $a_\pm[m]$, original sheet
parameters and markings, generator-constant initial scale factors, and the
corner normalization above. Then

$$
T_{\rm Luk}:\mathcal D_{\rm char}^{s,\rm fr}
\longrightarrow\mathcal D_{\rm Luk}^{s-1,\rm fr}|_{\mathcal F}
\tag{6.1}
$$

denotes the **core tensor** map, not a map onto all normalized Luk data on
canonical constant intervals. The target label is a mixed regularity scale:
sheet $(q,B)$ have at least $\mathfrak H^{s-1}$ regularity, corner torsion
has $H^{s-3/2}$ regularity, and the retained markings/scales have their
declared source regularity. To be in its image the reconstructed conformal
profiles must also satisfy the original $\mathfrak H^s$ condition.

In the smooth category this is an equivalence onto this constrained core
slice. Integrate $\partial_{\lambda_s}q_s=2a_s^{-1}\chi_s$ from $q_0$,
recover $\Omega=\epsilon_q/\nu_0$, $\bar q=\Omega^{-1}q$, and extract
$\theta_{s0}=a_s^{-1}\operatorname{tr}_{q_0}\chi_{s0}$,
$\widehat\omega=-\zeta$, $m=\log(a_+a_-/2)$. Uniqueness of this ODE and
Raychaudhuri give the two inverse identities. Section 8 proves a conservative
finite-scale forward bound. **No bounded inverse from a lower-order target
norm to the higher-order source norm is claimed**: integration along a
generator does not recover a lost angular derivative. In particular the
former unqualified Banach $C^\infty$-inverse assertion is withdrawn.

### Corollary 6.2 - MSP comparison

Restricting completed MSP data to the shared metric, both normal second
fundamental forms, normal product $\mu=-e^{-m}$, torsion and markings recovers
the corresponding project core, in the gauge (4.6). This does not construct
the missing $Y_\pm$ components or their Ricci compatibility. No equality
between the two independent expansions or shears is imposed.

### Proposed minimal initial completion 6.3 - not a theorem

The required map is directly

$$
C_{\rm init}:\mathcal D_{\rm char}^{s,\rm fr}
\longrightarrow\mathcal I_{\rm Cabet}^{k},
\tag{6.2}
$$

where the target is the constrained $(e,\Gamma,\Psi)$ initial cross in
calculation 08, with both sheet transports, common corner values and
duplicated-Weyl constraints, in the original-sheet gauge (4.6).
The target is now the minimal class in 09.4: free incoming slots plus
existence/compatibility of the source complementary transports, not an
off-shell spacetime completion. The former name $C_{\rm SH}$ is retired.
Its full finite loss and constrained differential have **not** been
established. Section 8 gives $C_{\rm pre}$; 09.3--4 add $C_{\rm mix}$
and $C_{\rm free}$ with losses four and five respectively. Neither number
is a proved loss for the full $C_{\rm init}$.

Cabet et al. p. 55 refer to initial fields obtained by a standard procedure.
They explicitly avoid a direct proof that every solution of their doubled
reduced system propagates all Einstein constraints, using a build-up of
already existing vacuum metrics instead. Neither statement is a substitute
for (6.2), its differential, or a finite-Sobolev constraint-propagation proof.

## 7. Equivariance

A diagonal generator relabelling $f\in\operatorname{Diff}(S)$ pulls back the
ordinary metric $q^\pm$, the area density $\Omega_\pm\nu_0$, the scalar fields
$\theta_{\pm0},m$, and the one-form $\widehat\omega$, and conjugates the
endpoint maps.  The action on $\bar q$ is the induced unimodular
reference-density compensated action

$$
f^*(\Omega\nu_0)=:(f\boldsymbol\cdot\Omega)\nu_0,
\qquad
f\boldsymbol\cdot\bar q
:=\frac{f^*q}{f\boldsymbol\cdot\Omega},
$$

not the weight-zero tensor pullback of $\bar q$.
The core reconstruction is natural under this action. A chosen local dyad
requires its compensating frame rotation; this is not a proved equivariance
theorem for the unfinished $C_{
m SH}$. For the core map,

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

## 8. Constructed partial completion and its finite-scale estimates

### 8.1 Domain and variables actually constructed

Fix $s\ge12$ and $3\le k\le s-3$. Work on a bounded neighborhood in
$\mathcal D_{\rm char}^{s,\rm fr}$ with fixed finite intervals, positive
lower bounds for $r$, $q$ and endpoint Jacobians. This is an open sector
relative to the corner-matching and unimodularity constraints. Constants
below depend on its bound $M$, margin $\mu$, lengths and reference geometry.

The constructed map $C_{\rm pre}$ consists of

$$
(q_s,B_s,\theta_s,\sigma_s,\omega_s;
q_0,m,\chi_0,\underline\chi_0,\zeta_0^{\rm C};
a_\pm,c|_{N_+},s_\pm).
\tag{8.1}
$$

It includes the reconstructed **intrinsic** cut connection $D[q_s]$,
expressed as a tensor difference from $D^0$. It does not contain the full
spacetime connection. Algebraic local dyads can be obtained from the positive
square root of $h_0^{-1}q_s$ acting on fixed reference orthonormal dyads.
Their transition rotations are the fixed reference rotations. They do not
yet satisfy the full spacetime transport gauge on both sheets.

| Variable | Origin | Completion status |
|---|---|---|
| $\bar q_\pm,\Omega_0,\theta_{\pm0},\widehat\omega,m,s_\pm$ | prescribed project data with common $\bar h$ | retained |
| $r,\Omega,\theta,\sigma,B$ | Raychaudhuri and algebra | constructed |
| $\omega_s$ | Damour, with $\omega_{\pm0}=\pm\widehat\omega-Dm/2$ | constructed |
| $D[q_s]-D^0$, local orthonormal dyad | intrinsic metric differentiation, algebra | constructed |
| $c|_{N_+}=2e^m$, $b|_{N_+}=0$, $e_3|_{N_-}=\ell_-$ | PDE gauge at the incoming cross | fixed |
| $\chi_0=2e^m B^+_0$, $\underline\chi_0=B^-_0$, $\zeta_0^{\rm C}=\omega^-_0$ | corner frame conversion | constructed |
| transverse second fundamental form on the opposite sheet | mixed Ricci/null transport | constructed in 09.3 with loss four |
| remaining $e_i{}^\mu,\Gamma_i{}^j{}_k$ | frame and connection transports | free slots prepared in 09.4; complementary compatibility open |
| $\alpha,\underline\alpha,\beta,\underline\beta,\rho,\sigma$ and duplicated copies | curvature constraints/Bianchi transports | free slots prepared in 09.4; full Bianchi/copy compatibility open; source $\sigma$ is Weyl curvature |

### 8.2 Transport estimates without the word "standard"

Use $\|\cdot\|_j=\|\cdot\|_{H^j(S;h_0)}$. For $j\ge2$, the product
estimate $\|fg\|_j\le C_j\|f\|_j\|g\|_j$ follows from the Sobolev
algebra property on a compact two-surface. The tame version is

$$
\|fg\|_j\le C_j(\|f\|_\infty\|g\|_j+\|g\|_\infty\|f\|_j).
\tag{8.2}
$$

Differentiate $Q^{-1}Q=1$ to get
$\delta Q^{-1}=-Q^{-1}(\delta Q)Q^{-1}$. Iteration and (8.2) bound all
derivatives of inversion on $Q\ge\mu h_0$; the same argument applies to
$r^{-1}$ and the scalar square root on $r\ge\mu$. For
$A=\bar q^{-1}\bar q'$ and $V=\operatorname{tr}(A^2)/8$,

$$
\|\Delta V\|_{C H^{k+1}}\le C(M,\mu)\|\Delta\bar q\|_{\mathfrak H^{k+2}}.
\tag{8.3}
$$

Set $y=(r,r')$, $H[V]=\left(\begin{smallmatrix}0&1\\-V&0\end{smallmatrix}\right)$.
The exact Volterra equations are

$$
y(\lambda)=y_0+\int_0^\lambda H[V]y\,dt,\qquad
\Delta y=\Delta y_0+\int_0^\lambda
\{H[V_1]\Delta y+(H[V_1]-H[V_2])y_2\}\,dt.
\tag{8.4}
$$

Taking $H^{k+1}$ norms, (8.2) gives $z(\lambda)\le a+K\int_0^\lambda z$,
where $a=\|\Delta y_0\|_{k+1}+C\int_0^L\|\Delta V\|_{k+1}$ and
$K\le C(1+\|V_1\|_{C H^{k+1}})$. Iterating the integral inequality yields
$z(\lambda)\le ae^{K\lambda}$. Differentiating the ODE in $\lambda$ proves
the corresponding $\mathfrak H^{k+1}$ bounds by induction: each additional
generator derivative consumes one derivative of $V$ and no extra angular
derivative. Thus $(q,B,\theta,\sigma)$ have locally Lipschitz bounds at least
in $\mathfrak H^{k+1}$ from the $\mathcal D^s$ neighborhood above.

For the intrinsic connection write explicitly

$$
K^A{}_{BC}:=(D[q]-D^0)^A{}_{BC}
=\tfrac12q^{AD}(D^0_Bq_{DC}+D^0_Cq_{DB}-D^0_Dq_{BC}).
\tag{8.5}
$$

This loses one angular derivative. In
$J_A=D_A(\theta/2)-D_B\sigma^B{}_A$, substitute $D=D^0+K$.
All terms are first derivatives or products of the already bounded fields,
so $J\in\mathfrak H^k$ and
$\|\Delta J\|_{\mathfrak H^k}\le C\|\Delta d\|_{\mathcal D^s}$.
Damour is exactly the scalar integrating-factor equation for each one-form:

$$
z_A:=\Omega\omega_A,\qquad z_A'=\Omega J_A,\qquad
z_A(0)=\Omega_0(\pm\widehat\omega_A-\tfrac12D_A m).
\tag{8.6}
$$

Integration is bounded on $C^0(I;H^k)$ with norm at most $L$.
The product and inverse estimates applied to
$\omega=\Omega^{-1}(z_0+\int\Omega J)$ prove

$$
\|C_{\rm pre}(d_1)-C_{\rm pre}(d_2)\|_{\rm pre,k}
\le C(M,\mu,L_+,L_-)\|d_1-d_2\|_{\mathcal D^s},\quad k\le s-3.
\tag{8.7}
$$

The output norm uses $\mathfrak H^{k+1}$ for $(q,B,\theta,\sigma)$,
$\mathfrak H^k$ for $(K,\omega)$, and their displayed corner norms.
The conservative three-level gap includes the original half-order corner
regularities; it is not a loss computed for $C_{\rm init}$. The endpoint
markings are retained, not differentiated/composed as dynamical unknowns in
this estimate. Fixed-chart algebraic dyad conversion is smooth at these
levels by the positive-matrix square-root functional calculus.

For higher parameter derivatives of (8.4), the highest derivative solves the
same equation $Y'=H[V]Y+S$, and $S$ is a finite sum of products of lower
parameter derivatives of $V$ and $y$. Equation (8.2) and the same exponential
bound close the induction. Taylor's integral formula bounds the second
remainder by $C\|\Delta d\|^2$ on a smaller bounded neighborhood. The
algebraic maps and (8.6) have the same property. This proves that
$C_{\rm pre}$, into these lower-order spaces, is $C^\infty$ and locally
Lipschitz. It proves no Einstein evolution estimate.

### 8.3 Linearized partial completion and inverse

For a variation tangent to the source constraints,

$$
\delta A=-\bar q^{-1}\delta\bar q A+\bar q^{-1}(\delta\bar q)',\quad
\delta V=\tfrac14\operatorname{tr}(A\delta A),
$$
$$
(\delta r)''+V\delta r=-(\delta V)r,\quad
\delta r_0=\frac{\delta\Omega_0}{2r_0},\quad
(\delta r)'_0=\tfrac12\theta_0\delta r_0+\tfrac12r_0\delta\theta_0.
\tag{8.8}
$$

Next $\delta q=2r\delta r\bar q+r^2\delta\bar q$,
$\delta B=\tfrac12(\delta q)'$, $\delta\Omega=2r\delta r$, and
$\delta\theta=2(\delta r)'/r-2r'\delta r/r^2$.
For $h=\delta q$, the exact connection variation is

$$
\delta K^A{}_{BC}=\tfrac12q^{AD}
(D_Bh_{DC}+D_Ch_{DB}-D_Dh_{BC}).
\tag{8.9}
$$

For $S^B{}_A=\sigma^B{}_A$,

$$
\delta J_A=\tfrac12D_A\delta\theta-D_B\delta S^B{}_A
-\delta K^B{}_{BD}S^D{}_A+\delta K^D{}_{BA}S^B{}_D,
$$
$$
(\delta z_A)'=\delta\Omega J_A+\Omega\delta J_A,\qquad
\delta\omega_A=\Omega^{-1}(\delta z_A-\omega_A\delta\Omega).
\tag{8.10}
$$

These equations define $DC_{\rm pre}$ uniquely and give the linearized
Raychaudhuri and Damour constraints and the derivative of the normal-product
and corner matching identities. The same Volterra estimates prove (8.7)
for the differential. They do **not** define $DC_{\rm init}$.

On the constrained smooth image, recover $\Omega=\epsilon_q/\nu_0$,
$\bar q=q/\Omega$, $\theta_{s0}=\operatorname{tr}_{q_0}B_{s0}$,
$\widehat\omega=(\omega_{+0}-\omega_{-0})/2$, and the retained $m,s_\pm$.
This is the inverse of $C_{\rm pre}$. It obeys estimates at the regularity
of the supplied output; it does not gain angular derivatives or establish
a finite-Sobolev inverse theorem for the missing full map. It is intrinsic
under incoming-framing-preserving diffeomorphisms.

### 8.4 Mixed transport starting equation and Stage-4.2 closure

The common corner metric, normal product, both second fundamental forms and
torsion match under (4.6)--(4.7). Their first variations match by (8.8)--(8.10).
This verifies the displayed **core corner** conditions, not all curvature
constraints. A transport that was missing in Stage 4.1 is the transverse second
fundamental form $\Gamma_A{}^a{}_4$ along $N_-$ (and its mirrored equation).
With $\mathcal R_{pq}{}^i{}_j=d^i{}_{jpq}$ in vacuum, (5.3b) gives exactly

$$
\begin{aligned}
e_3(\Gamma_A{}^a{}_4)={}&e_A(\Gamma_3{}^a{}_4)+d^a{}_{4,3A}
+(\Gamma_3{}^l{}_A-\Gamma_A{}^l{}_3)\Gamma_l{}^a{}_4\\
&-\Gamma_3{}^a{}_l\Gamma_A{}^l{}_4
+\Gamma_A{}^a{}_l\Gamma_3{}^l{}_4.
\end{aligned}
\tag{8.11}
$$

Here $A$ in a connection slot denotes a cut-frame index; $e_A$ is
the corresponding frame vector. Calculation 09.(3.1) now eliminates
$d^a{}_{4,3A}$ with the source Gauss/normal-curvature identities:
$d^a{}_{4,3b}=\rho\delta^a_b+\sigma\epsilon^a{}_b$,
$\rho=-K_q-(\operatorname{tr}\chi\operatorname{tr}\underline\chi
-\chi:\underline\chi)/2$. The normal Ricci identity cancels the
antisymmetric part. Equations 09.(3.3),(3.5) are the resulting closed
linear transports on both sheets. Their differential and quadratic
remainder have the conservative loss-four estimate 09.(3.9)--(3.10).

Thus $C_{\rm mix}$ is closed. The actual free reduced incoming slots,
their Weyl reconstruction and dependency table are in 09.4.
The loss-five $C_{\rm free}$ is not the full constrained $C_{\rm init}$.
The first unclosed lemma is now $C_{\rm Bianchi}$, beginning with
09.(5.4), and includes complementary gauge/copy transports and all
required corner jets. No curvature component is assigned freely to bypass
this condition. No full $\ell_{\rm init}$ or $DC_{\rm init}$ is declared.

## 9. Affine endpoint potential, including zero expansion

Take the same HF representative as calculation 05, with fixed affine cut
parameters and cut-tangential endpoint variations. In the affine boost gauge
$\bar\eta_{sA0}=\omega^{(s)}_{A0}$, set

$$
p_{sA}^{\rm aff}:=-2\Omega_0\bar\eta_{sA0},\qquad
\pi^{\rm aff}_{si}\partial_A s_s^i=p_{sA}^{\rm aff}\nu_0.
\tag{9.1}
$$

The compensator calculation 05.(2.4)--(2.6), before any area reparametrization,
gives $-C_G\int\Omega_0\bar\eta_{sA0}(Ds_s)^{-1}\delta s_s\,\nu_0$.
Adding the single HF area/normal corner in its exact-shifted representative:

$$
\Theta_{S_{00}}^{\rm aff}=C_G\left[-\int_S\Omega_0\delta m\,\nu_0
+\tfrac12\sum_s\int_S\langle\pi_s^{\rm aff},\delta s_s\rangle\right],
\tag{9.2}
$$
$$
\Omega_{S_{00}}^{\rm aff}=C_G\left[\int_S\delta m\wedge\delta\Omega_0\,\nu_0
+\tfrac12\sum_s\int_S\delta\pi^{\rm aff}_{si}\wedge\delta s_s^i\right],
\quad
p_+^{\rm aff}+p_-^{\rm aff}=2\Omega_0Dm.
\tag{9.3}
$$

No denominator contains $\theta_s$. These formulas cover $\theta_s=0$ on
the same positive-area affine sector. They do not allow normal motions of
the fixed cuts without the additional HF cut terms. Only for nonvanishing
$\theta_s$ on a monotonic-area interval use
$\mathcal B_s=2/(v_s\theta_s)$ and

$$
\lambda_R=m-\sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|,\qquad
p_s=p_s^{\rm aff}-2\Omega_0D\log|\mathcal B_{s0}/\mathcal B_{*s}|.
\tag{9.4}
$$

This corner substitution must be accompanied by the bulk, reference and
endpoint shifts in calculations 04--05. It is not a canonical transformation
of an isolated corner with those shifts omitted, nor a singular definition
of the affine chart at $\theta=0$.

## 10. Evidence boundary

**Verified:** V45--V50 check split variation, affine endpoint algebra,
original-sheet corner normalization/torsion, two principal symbols, a matrix
Taylor-remainder example and reference-density determinant. V51 checks the
connection-variation trace and the scalar derivative commutator with xAct.
V52 checks the null-gradient acceleration identity used in 07.3.1; V53
checks the linearized focusing and Damour product/inverse algebra.
The Volterra/Moser estimates above are analytic arguments, not outputs of
those checks.

**Assumptions:** fixed original affine intervals and framing slice, compact
closed $S$ with fixed reference geometry, positive-area bounds, the selected
HF cut representative and tangential endpoint variations.

**Not verified/proved:** full $C_{\rm init}$ or $DC_{\rm init}$, all curvature
corner constraints, finite-Sobolev frame-gauge equivalence, project-data
collar bijectivity, tangent surjectivity, $P_{\rm cell}^k$ or
$P_{\rm rect}^{s,r}$. Source metric existence for complete source data remains
a cited theorem, separate from the missing project completion.
