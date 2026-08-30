# 01 — Endpoint-complete spin-0 finite cell and outer ports

## 1. Decisive verdict

**Correct under the declared area/boost outer-port policy:** the affine,
shear-free, twist-free spin-0 finite cell has an endpoint-complete
presymplectic form.  With both outer ports retained it is pointwise rank six
and has no kernel in this truncated fixed-gauge sector.  With fixed outer
areas and the associated port momenta quotiented, it reduces to the single
initial pair $(\Omega_0,-m_0)$.

The finite-length terms proportional to
$L_\pm\delta\Omega_0\wedge\delta\theta_{\pm0}$ are outer-port structure, not
an obstruction to generic characteristic data.  The result remains tied to
the selected null-potential representative until the port variables are
transformed together with any $dY$ shift.

## 2. Shear-free affine constraint

On each branch impose

$$
\sigma^\pm_{AB}=0,\qquad \omega_A=0,\qquad \kappa_\pm=0,
$$

but do not linearize the vacuum Raychaudhuri equation.  With the definitions
of calculation 00,

$$
\partial_{\lambda_\pm}\theta_\pm
=-\frac12\theta_\pm^2,
\qquad
\partial_{\lambda_\pm}\Omega_\pm
=\theta_\pm\Omega_\pm.
\tag{2.1}
$$

For

$$
F_\pm(\lambda_\pm):=1+\frac12\lambda_\pm\theta_{\pm0},
\qquad F_\pm>0,
\tag{2.2}
$$

the exact solution is

$$
\boxed{
\theta_\pm(\lambda_\pm)=\frac{\theta_{\pm0}}{F_\pm},
\qquad
\Omega_\pm(\lambda_\pm)=\Omega_0F_\pm^2.}
\tag{2.3}
$$

The $F_\pm>0$ condition is the finite caustic-free domain.  Direct
differentiation verifies both equations and the initial values.  No
small-$\theta$ or small-length expansion is used.

## 3. Pullback of the sheet bulk potential

The spin-0 part of (5.1) in affine gauge is

$$
\Theta_{N_\pm}^{(0),\rm bulk}
=-\frac{C_G}{2}\int_0^{L_\pm}
\theta_\pm\,\delta\Omega_\pm\,d\lambda_\pm d^2x.
\tag{3.1}
$$

Pointwise in $x$, (2.3) gives

$$
\delta\Omega_\pm
=F_\pm^2\delta\Omega_0
+\Omega_0F_\pm\lambda_\pm\delta\theta_{\pm0},
$$

and hence

$$
\int_0^{L_\pm}\theta_\pm\delta\Omega_\pm d\lambda_\pm
=\left(\theta_{\pm0}L_\pm
+\frac14\theta_{\pm0}^2L_\pm^2\right)\delta\Omega_0
+\frac12\Omega_0\theta_{\pm0}L_\pm^2
\delta\theta_{\pm0}.
\tag{3.2}
$$

Taking the field-space exterior derivative gives the simple exact result

$$
\boxed{
\Omega_{N_\pm}^{(0),\rm bulk}
=\delta\Theta_{N_\pm}^{(0),\rm bulk}
=\frac{C_G L_\pm}{2}
\delta\Omega_0\wedge\delta\theta_{\pm0}.}
\tag{3.3}
$$

The cancellation of every nonlinear $\theta_{\pm0}L_\pm^2$ coefficient in
(3.3) is checked exactly by the script.  A symbolic check of (3.3) is not a
proof that no cut ambiguity exists.

Summing the two branches and imposing the common corner area once gives

$$
\Omega_{X,\rm bulk}^{(0)}
=\frac{C_G}{2}\delta\Omega_0\wedge
\left(L_+\delta\theta_{+0}+L_-\delta\theta_{-0}\right).
\tag{3.4}
$$

There are not two copies $\Omega_{0+},\Omega_{0-}$.  Equation (3.4) is two
sheet fluxes evaluated on one matched corner coordinate, not double counting
of the corner area.

The outer area is

$$
\Omega_{\pm L}=\Omega_0F_{\pm L}^2,
\qquad
F_{\pm L}:=1+\frac12L_\pm\theta_{\pm0}>0.
\tag{3.5}
$$

Its differential obeys

$$
\delta\Omega_0\wedge\delta\Omega_{\pm L}
=\Omega_0F_{\pm L}L_\pm
\delta\Omega_0\wedge\delta\theta_{\pm0}.
\tag{3.6}
$$

Therefore the same sheet two-form can be written without an expansion
coordinate as

$$
\boxed{
\Omega_{N_\pm}^{(0),\rm bulk}
=\frac{C_G}{2\sqrt{\Omega_0\Omega_{\pm L}}}
\delta\Omega_0\wedge\delta\Omega_{\pm L}
=2C_G\,\delta\sqrt{\Omega_0}\wedge
\delta\sqrt{\Omega_{\pm L}}.}
\tag{3.7}
$$

This is valid pointwise wherever $\Omega_0>0$ and $F_{\pm L}>0$.  It displays
the finite sheet as a relation between its two area ports.

## 4. Initial null--null joint

The single initial joint has

$$
a_0=-m_0-\log2.
$$

Calculation 00, equations (6.1)--(6.4), starts from the two null endpoint
normalization variations and the variation of the joint action.  In the fixed
outward-convex orientation it finds

$$
\left.\Theta_{\partial N_+}\right|_{S_0}
+\left.\Theta_{\partial N_-}\right|_{S_0}
=-C_G\int_{S_0}\Omega_0\delta a_0\,d^2x,
$$

whereas

$$
\delta I_{S_0}=C_G\int_{S_0}
(\Omega_0\delta a_0+a_0\delta\Omega_0)\,d^2x.
$$

The relative-normal-normalization terms cancel in the sum, leaving

$$
\Theta_{S_0}^{\rm residual}
=C_G\int_{S_0}a_0\delta\Omega_0\,d^2x,
$$

so

$$
\boxed{
\Omega_{S_0}=-C_G\int_{S_0}
\delta m_0\wedge\delta\Omega_0\,d^2x.}
\tag{4.1}
$$

The sign in (4.1) follows from the positive characteristic orientation and
$a_0=-m_0-\log2$.  Reversing the total hypersurface orientation reverses the
whole symplectic form, not the identification of the pair.  The constant
$-\log2$ changes the potential representative but not (4.1).

This proves one corner pair for the selected representative.  It is not an
assumption about $\delta I_{S_0}$ by itself.  Adding one copy per sheet would
double count $S_0$.
Reisenberger gr-qc/0703134 and its expanded derivation arXiv:1211.3880 are used
only as regression checks.  In the latter, eqs. (182), (187), and (194)--(195)
contain a single area/relative-normal sector and pair twist with endpoint maps.
They are not used to delete (3.4), to choose an outer polarization, or to
import a completeness claim.

## 5. Selected outer-port policy and complete potential

The finite cell retains $S_+$ and $S_-$ as ports.  Use the area polarization
of calculation 00: $\Omega_{\pm L}$ are port coordinates and $b_\pm$ are the
signed logarithmic normal/boost momenta obtained after combining each null
endpoint variation with the action of the boundary piece that closes the
port.  No value of $b_\pm$ is fixed in the extended phase space.

On the constraint surface, the selected HF/LMPS representative gives

$$
\begin{aligned}
\Theta_{\rm cell}^{(0)}={}&
\sum_{s=\pm}\Theta_{N_s}^{(0),\rm bulk}
+C_G\int_{S_0}a_0\delta\Omega_0\,d^2x\\
&+C_G\int_{S_+}b_+\delta\Omega_{+L}\,d^2x
+C_G\int_{S_-}b_-\delta\Omega_{-L}\,d^2x,
\end{aligned}
\tag{5.1}
$$

where, pointwise on the matched generator labels,

$$
\Theta_{N_s}^{(0),\rm bulk}
=-\frac{C_G}{2}\int d^2x\left[
\left(\theta_{s0}L_s+\frac14\theta_{s0}^2L_s^2\right)
\delta\Omega_0
+\frac12\Omega_0\theta_{s0}L_s^2\delta\theta_{s0}
\right].
\tag{5.2}
$$

Taking the field-space exterior derivative and using (3.7) yields the complete
spin-0 two-form

$$
\boxed{
\begin{aligned}
\Omega_{\rm cell}^{(0)}=C_G\int d^2x\Bigg[&
-\delta m_0\wedge\delta\Omega_0\\
&+\sum_{s=\pm}\left(
\frac{\delta\Omega_0\wedge\delta\Omega_{sL}}
{2\sqrt{\Omega_0\Omega_{sL}}}
+\delta b_s\wedge\delta\Omega_{sL}
\right)\Bigg].
\end{aligned}}
\tag{5.3}
$$

This is endpoint/corner complete under the declared policy.  The terms in the
first fraction are not deleted: they are the sheet contribution between the
initial and outer area ports.

## 6. Extended phase-space rank and partners of the expansions

Rank is local in the generator label $x$, so suppress the integral and $C_G$.
In coordinates

$$
z=(\Omega_0,m_0,\Omega_{+L},b_+,\Omega_{-L},b_-),
$$

write $c_\pm=(2\sqrt{\Omega_0\Omega_{\pm L}})^{-1}$.  The antisymmetric matrix
of (5.3) is

$$
M_{\rm ext}=
\begin{pmatrix}
0&1&c_+&0&c_-&0\\
-1&0&0&0&0&0\\
-c_+&0&0&-1&0&0\\
0&0&1&0&0&0\\
-c_-&0&0&0&0&-1\\
0&0&0&0&1&0
\end{pmatrix}.
\tag{6.1}
$$

Exact symbolic algebra gives

$$
\det M_{\rm ext}=1,
\qquad
\operatorname{rank}M_{\rm ext}=6,
\qquad
\ker M_{\rm ext}=0.
\tag{6.2}
$$

This is nondegeneracy only inside the six-variable, fixed-label, fixed-affine,
spin-0 truncation; it is not a statement about the full gravitational gauge
quotient.  Since

$$
\theta_{\pm0}=\frac{2}{L_\pm}
\left(\sqrt{\frac{\Omega_{\pm L}}{\Omega_0}}-1\right),
\tag{6.3}
$$

each expansion acquires a partner through its own outer port.  The partner is
a shifted version of $b_\pm$ because the sheet cross-term in (5.3) also mixes
$\Omega_{\pm L}$ with $\Omega_0$.  Neither expansion is a kernel direction on
the extended phase space.

## 7. Fixed outer ports

For the fixed-area outer policy impose

$$
\delta\Omega_{+L}=0=\delta\Omega_{-L}.
\tag{7.1}
$$

The pullback of (5.3) is

$$
\left.\Omega_{\rm cell}^{(0)}\right|_{\rm fixed\ area}
=-C_G\int_{S_0}\delta m_0\wedge\delta\Omega_0\,d^2x.
\tag{7.2}
$$

If $b_\pm$ are left as unused source momenta, the pointwise pulled-back matrix
on $(\Omega_0,m_0,b_+,b_-)$ has rank two and kernel
$\operatorname{span}\{\partial_{b_+},\partial_{b_-}\}$.  Quotienting these
fixed-source directions, or fixing both members of each outer port, leaves the
rank-two corner phase space $(\Omega_0,m_0)$ with no kernel.

The expansions have not become degeneracies.  They cease to be independent
coordinates because (6.3) with fixed $\Omega_{\pm L}$ gives

$$
\delta\theta_{\pm0}
=-\frac{F_{\pm L}}{L_\pm\Omega_0}\delta\Omega_0.
\tag{7.3}
$$

Freezing $b_\pm$ while still varying $\Omega_{\pm L}$ would be a different
boundary condition and would not justify (7.2).

## 8. Sheetwise gluing to a subsequent affine cell

A clean composition statement is available for this spin-0 sheet sector.  Put
$r_i:=\sqrt{\Omega_i}$ on three consecutive cuts.  For segments of affine
lengths $L_1,L_2$, (3.7) gives

$$
\Omega_{01}^{(0)}+\Omega_{12}^{(0)}
=2C_G(\delta r_0\wedge\delta r_1
+\delta r_1\wedge\delta r_2).
\tag{8.1}
$$

The common affine Raychaudhuri solution makes $r$ linear, hence

$$
r_1=\frac{L_2r_0+L_1r_2}{L_1+L_2}.
\tag{8.2}
$$

Pulling (8.1) to (8.2) gives

$$
\Omega_{01}^{(0)}+\Omega_{12}^{(0)}
=2C_G\delta r_0\wedge\delta r_2
=\Omega_{02}^{(0)}.
\tag{8.3}
$$

The outgoing port potential of the first segment and the incoming port
potential of the second carry opposite incidence signs; they cancel after
matching $(\Omega_1,b_1)$ once.  This proves sheetwise affine composition for
the present truncation.  It is not a full nonlinear double-null spacetime-cell
composition theorem.

## 9. Representative and corner ambiguity checks

Under $\boldsymbol\theta_N\to\boldsymbol\theta_N+d\boldsymbol Y$, calculation
00 gives

$$
\Delta\Omega_N=C_G\left[
\delta y_L\wedge\delta\Omega_L
-\delta y_0\wedge\delta\Omega_0\right]
\tag{9.1}
$$

for $\boldsymbol Y=C_Gy\delta\Omega\,d^2x$.  Equation (5.3) is therefore a
statement about the selected representative plus the declared area/boost port
policy.  On the extended phase space, shifting
$b_L\mapsto b_L+y_L$ and the common initial boost by the two initial $y$'s is
a canonical relabeling.  Deleting a cut without this shift would change the
answer.

For the specific $\kappa$ versus $\kappa+\theta$ representatives,

$$
\Delta\Theta_N=C_G\delta(\Omega_L-\Omega_0),
\qquad
\Delta\Theta_{\rm endpoints}
=-C_G\delta\Omega_L+C_G\delta\Omega_0.
\tag{9.2}
$$

Their sum vanishes on each sheet before or after the Raychaudhuri pullback.
Consequently both representatives give exactly the same (5.3), (7.2), and
(8.3) when all endpoint and joint shifts are made consistently.

## 10. Verification and claim boundary

**Verified:** exact Raychaudhuri and area solutions; isolated sheet pullback;
conversion to initial/outer areas; initial endpoint plus joint cancellation;
the rank-six extended matrix and rank-two fixed-area pullback; sheetwise
composition; and complete $\kappa$ versus $\kappa+\theta$ representative
equivalence.

**Assumptions:** four-dimensional vacuum sheet equations; fixed generator
labels, embeddings, affine parameters, and lengths; $\sigma^\pm_{AB}=0$,
$\omega_A=0$; $F_\pm>0$; area/boost outer-port polarization.

**Not verified:** that the shear-free/twist-free truncation is preserved by
transverse vacuum evolution; the Damour sector; a specified geometric closing
boundary at $S_\pm$; or the full gravitational gauge quotient.  In the generic
CK/Sachs characteristic initial-value problem, cross-focusing is not an extra
algebraic compatibility condition on otherwise free initial data.  Here it is
only a future check of whether this special spin-0 truncation closes under
transverse evolution.
