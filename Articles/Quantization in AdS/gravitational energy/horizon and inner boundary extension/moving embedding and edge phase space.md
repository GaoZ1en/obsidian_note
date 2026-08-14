# Moving Embedding and the Horizon Edge Phase Space

## Status and claim tier

This note gives the moving-embedding extension of the regulated horizon
project through first variation. It derives the wall-interior embedding
momentum and the non-orthogonal joint canonical pair using the same
finite-action Harlow--Wu conventions as `../article/`.

The achieved claim is a **complete abstract first-variation formula plus a
compact BTZ finite-wall component benchmark**. The wall-interior total
embedding momentum is derived off shell, including its constraint completion,
and checked against a direct derivative of the complete BTZ bulk, GHY, and
outer-counterterm action. A generic integrable moving-wall polarization has
not been constructed universally; H55 does construct one exact stationary
nonuniform smooth family, while the time-dependent generic classification
remains open.
The finite-rank edge one-form used later in H51 has a canonical cotangent-
bundle realization, but it is a selected boundary polarization rather than a
unique consequence of the embedding field.  The distinction and the radial-
homotopy construction are proved in
`intrinsic moving boundary and edge realization.md`.
It also does not construct the quantum edge Hilbert space, the crossed
product, or a quantum JLMS map. Surface translations still require a declared
boundary polarization before they are Hamiltonian.

## 1. Project-safe definition of the extension

Let $X$ map a fixed reference region into the physical spacetime and define
the field-space one-form

$$
\chi^\mu:=\delta X^\mu\circ X^{-1}.
\tag{1.1}
$$

For every covariant spacetime field,

$$
\delta(X^*g)=X^*\Delta_Xg,
\qquad
\Delta_Xg:=\delta g+\mathcal L_\chi g.
\tag{1.2}
$$

Nilpotence of the pulled-back variation gives the Maurer--Cartan identity

$$
\delta\chi^\mu=-\frac12[\chi,\chi]^\mu.
\tag{1.3}
$$

Under a spacetime diffeomorphism $w$,

$$
I_{\widehat w}\delta g=\mathcal L_wg,
\qquad
I_{\widehat w}\chi=-w,
\qquad
I_{\widehat w}\Delta_Xg=0.
\tag{1.4}
$$

Let $M_0$ be a fixed reference region and define the moving theory by pulling
back the complete finite action,

$$
S_{{\rm p},X}[g,X]:=S_{\rm p}[X^*g;M_0].
\tag{1.5}
$$

Its potential is, by definition,

$$
\boxed{
\Theta_{{\rm p},X}[g,X;\delta]
:=\Theta_{\rm p}[X^*g;\delta(X^*g)].
}
\tag{1.6}
$$

Here $\Theta_{\rm p}$ must be obtained from the complete pulled-back action,
including its Einstein--Hilbert term, GHY and counterterm improvements,
endpoint $-C_\Gamma$, and every included joint contribution. At the level of
local pulled-back fields one uses

$$
\delta g\longmapsto\Delta_Xg
\tag{1.7}
$$

but equation (1.6) is not a license to substitute $\Delta_Xg$ into an already
integrated fixed-domain formula while omitting the shape variation of its
domains, normals, counterterms, and endpoints. Appending a bare Iyer--Wald
$Q_\chi$ after a complete pullback would double count the bulk descent;
omitting the shape variation is the opposite error.

In standard Iyer--Wald form conventions, the on-shell bulk part of (1.6)
reproduces

$$
\Theta_X^{\rm IW}
=\int_\Sigma(\boldsymbol\theta+i_\chi\boldsymbol L)
+\int_{\partial\Sigma}\boldsymbol Q_\chi.
\tag{1.8}
$$

Equation (1.8) is the on-shell bare-bulk dictionary check supplied by
Speranza. It does not derive the moving version of every project-specific
GHY, counterterm, Harlow--Wu, and Hayward improvement. Equation (1.6),
together with a direct variation of the full pulled-back action, is the
definition required for that construction.

## 2. Gauge degeneracies and surface transformations

The combined transformation

$$
\widehat w_{\rm gauge}
=(\delta_wg,\delta_wX)
=(\mathcal L_wg,-w\circ X)
\tag{2.1}
$$

obeys, for the exactly pulled-back action,

$$
I_{\widehat w_{\rm gauge}}\Theta_{{\rm p},X}=0,
\qquad
I_{\widehat w_{\rm gauge}}\Omega_{{\rm p},X}=0.
\tag{2.2}
$$

Thus a spacetime diffeomorphism that is nonzero at the inner cut becomes a
degeneracy when its compensating embedding displacement and every pulled-back
boundary object are retained. This
does **not** remove the physical surface symmetry.  A transformation of the
reference embedding with $g$ held fixed acts on $X^*g$ and is an edge
transformation.  Surface-preserving transformations have the finite-action
Noether charge as moment map; normal surface translations are Hamiltonian
only after boundary conditions make the remaining work integrable.

The distinction is

$$
\begin{array}{c|c|c}
\text{transformation}&(\delta g,\delta X)&\text{status}\\ \hline
\text{spacetime gauge}&(\mathcal L_wg,-w\circ X)&\text{degeneracy}\\
\text{metric only}&(\mathcal L_wg,0)&\text{fixed-section surface charge}\\
\text{embedding only}&(0,w\circ X)&\text{edge/surface transformation}.
\end{array}
\tag{2.3}
$$

## 3. Moving-wall Brown--York work and embedding momentum

On a timelike wall $\Gamma$ let $n^2=+1$ and use the project convention

$$
K_{ij}=\gamma_i{}^\mu\gamma_j{}^\nu\nabla_\mu n_\nu,
\qquad
\Pi^{ij}=\sqrt{-\gamma}\,\mathcal T^{ij}.
\tag{3.1}
$$

Decompose the displacement into tangential and normal parts,
$\chi^\mu=\chi^i e_i{}^\mu+\chi_\perp n^\mu$.  Then

$$
\Delta_X\gamma_{ij}
=\delta\gamma_{ij}
+2D_{(i}\chi_{j)}
+2\chi_\perp K_{ij}.
\tag{3.2}
$$

The Brown--York source contribution to the moving-wall work is the old source
evaluated on (3.2):

$$
\boxed{
\mathcal B_X
=-\frac12\Pi^{ij}\Delta_X\gamma_{ij}.
}
\tag{3.3}
$$

After an integration by parts along the wall,

$$
\begin{aligned}
\mathcal B_X
={}&-\frac12\Pi^{ij}\delta\gamma_{ij}
-D_i(\Pi^{ij}\chi_j)
+(D_i\Pi^{ij})\chi_j
-\Pi^{ij}K_{ij}\chi_\perp.
\end{aligned}
\tag{3.4}
$$

Hence the **Brown--York wall contribution** to the embedding momentum is

$$
P_j^{\rm wall}=D_i\Pi^i{}_j,
\qquad
P_\perp^{\rm wall}=-\Pi^{ij}K_{ij},
\tag{3.5}
$$

with the total derivative in (3.4) assigned to the endpoint joint. These are
not by themselves the off-shell total embedding momenta. The missing
wall-interior term comes from the Einstein equation multiplying
$\mathcal L_\chi g$ in the bulk first variation. With

$$
\mathcal E^{\mu\nu}
=R^{\mu\nu}-\frac12Rg^{\mu\nu}-g^{\mu\nu},
\tag{3.6}
$$

the contracted Bianchi identity gives

$$
-\frac1{2\kappa_{\rm p}^2}
\int_M\sqrt{-g}\,\mathcal E^{\mu\nu}
\mathcal L_\chi g_{\mu\nu}
=-\frac1{\kappa_{\rm p}^2}
\int_{\partial M}\sqrt{|\gamma|}\,
n_\mu\mathcal E^{\mu\nu}\chi_\nu.
\tag{3.7}
$$

Consequently the complete wall-interior coefficients are

$$
\boxed{
\begin{aligned}
P_j^{\rm tot}
&=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},\\
P_\perp^{\rm tot}
&=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu}.
\end{aligned}}
\tag{3.8}
$$

Here $\Pi^{ij}$ is obtained from the complete local wall Lagrangian. Thus the
outer AdS counterterm is included in it, whereas no such term is inserted at
the inner wall. Codazzi and the tangential projection of (3.6) imply
$P_j^{\rm tot}=0$ identically for a covariant intrinsic counterterm. The
timelike Gauss relation reduces the normal coefficient to

$$
P_\perp^{\rm tot}
=\frac{\sqrt{-\gamma}}{2\kappa_{\rm p}^2}
\left(R[\gamma]+K^2-K_{ij}K^{ij}+2\right)
+P_\perp^{\rm ct},
\tag{3.9}
$$

where the project outer counterterm contributes

$$
P_\perp^{\rm ct}
=-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}K.
\tag{3.10}
$$

On a vacuum solution the constraint term in (3.8) vanishes, and (3.5) equals
the total wall-interior coefficient. It need not vanish: an embedding-only
normal motion changes the physical region. Only the combined tangent
$(\mathcal L_wg,-w)$ has $\Delta_Xg=0$ and is a gauge degeneracy.

The endpoint total derivative in (3.4) is retained. On a Cauchy cut $\Sigma$
the complete one-form is

$$
\boxed{
\Theta_{\Sigma,X}
=\int_\Sigma\sqrt\sigma\,\tau_\mu
\vartheta^\mu[\Delta_Xg]
-\sum_{J\subset\partial\Sigma}C_{\Gamma,J}[\Delta_Xg]
+\sum_{J\subset\partial\Sigma}
\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q.
}
\tag{3.11}
$$

The endpoint integral of $-D_i(\Pi^{ij}\chi_j)$ must be combined with the
second and third terms in (3.11) before assigning a surface charge. For a
normal surface vector $w$, the exact integrability criterion is

$$
I_{(0,w)}\Omega_{{\rm p},X}
=\delta H_w^{\rm edge}
\tag{3.12}
$$

on the selected moving polarization. It is not automatic from (3.9).

For a moving polarization, H1 must be replaced by

$$
\left.
(\mathcal B_X+\delta_Xw_\epsilon)
\right|_{\mathscr L_{\epsilon,X}}
=\mathrm dc_{\epsilon,X},
\qquad
\left.
\delta_X\Pi^{ij}\wedge\delta_X\gamma_{ij}
\right|_{\mathscr L_{\epsilon,X}}=0.
\tag{3.13}
$$

The allowed tangent space now contains $(\delta g,\chi)$ rather than a metric
variation at a fixed coordinate wall.

### 3.1 Direct finite-wall BTZ check

For $\epsilon\leq\rho\leq\rho_R$, direct variation of the complete vacuum
BTZ Einstein--Hilbert, inner and outer GHY, and outer-counterterm action gives

$$
\frac{\partial S_{\epsilon,R}}{\partial\epsilon}
=-\frac{2r_+^2}{\kappa_{\rm p}^2}
\sinh\epsilon\cosh\epsilon,
\qquad
\frac{\partial S_{\epsilon,R}}{\partial\rho_R}
=-\frac{r_+^2}{\kappa_{\rm p}^2}e^{-2\rho_R}.
\tag{3.14}
$$

At the inner wall $\partial_\epsilon=-n_\epsilon$, while at the outer wall
$\partial_{\rho_R}=n_R$. Equations (3.8)--(3.10) give

$$
P_{\perp,\epsilon}^{\rm tot}
=\frac{2r_+^2}{\kappa_{\rm p}^2}
\sinh\epsilon\cosh\epsilon,
\qquad
P_{\perp,R}^{\rm tot}
=-\frac{r_+^2}{\kappa_{\rm p}^2}e^{-2\rho_R},
\tag{3.15}
$$

so (3.14) is exactly $P_\perp^{\rm tot}\chi_\perp$ at both walls. Both
coefficients vanish in their regulator limits. The background joints are
orthogonal, and a constant Gaussian-normal translation preserves their
orthogonality and gives $C_\Gamma[\mathcal L_\chi g]=0$. Hence no nonzero
endpoint term is hidden in this benchmark.

## 4. Moving non-orthogonal joint

For a joint $J$ with induced metric $q_{AB}$ and Lorentzian boost angle
$\eta$, write

$$
I_J=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\eta.
\tag{4.1}
$$

Every induced quantity is varied by pullback:

$$
\Delta_Xq_{AB}
=X^*(\delta g+\mathcal L_\chi g)_{AB},
\qquad
\Delta_X\eta=\delta\eta+\mathcal L_\chi\eta,
\tag{4.2}
$$

where the second expression is shorthand for varying the angle constructed
from the moving normalized normals.  After the $\sqrt q\,\Delta_X\eta$ term
from the adjoining GHY variations is cancelled by (4.1), the joint
canonical one-form is

$$
\boxed{
\Theta_J^{(A)}
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q.
}
\tag{4.3}
$$

The angle polarization is

$$
\Theta_J^{(\eta)}
=-\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\Delta_X\eta,
\tag{4.4}
$$

and the two differ by the exact field-space variation

$$
\Theta_J^{(A)}-\Theta_J^{(\eta)}
=\delta_X\left(
\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\eta
\right).
\tag{4.5}
$$

They therefore give the same edge two-form,

$$
\boxed{
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q
=-\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\sqrt q\wedge\Delta_X\eta.
}
\tag{4.6}
$$

This fixes the qualification left in equation (6.2) of `horizon polarization
and edge obstruction.md`: the canonical partner of area is the **finite
relative boost angle** $\eta$, not surface gravity by itself.  In the compact
BTZ unit-flow fusion used below, $\eta=s$.

## 5. Compact BTZ wall-plus-edge comparison

### 5.1 Smooth finite-wall polarization

On the nonzero smooth family of `smooth BTZ moving polarization family.md`,
write $R(\phi)=r_+F'(\phi)$. At $\rho=\epsilon$,

$$
\Pi^{ij}
=\frac1{\kappa_{\rm p}^2}
\operatorname{diag}\left(-\frac Rs,\frac sR\right),
\tag{5.1}
$$

and

$$
\mathcal B_X
=-\delta_X\left(\frac{sR\cosh^2\epsilon}{\kappa_{\rm p}^2}\right),
\qquad
\delta_X\Pi^{ij}\wedge\delta_X\gamma_{ij}=0.
\tag{5.2}
$$

Thus

$$
w_{{\rm sm},\epsilon}
=\frac12\Pi^{ij}\gamma_{ij}
+\frac{sR}{2\kappa_{\rm p}^2}
\tag{5.3}
$$

defines a Lagrangian mixed polarization. Uniform normal translation is
Hamiltonian with $H_\perp^{\rm edge}=0$. The matched comparison corner
$sR(\cosh\epsilon-\cosh^2\epsilon)/\kappa_{\rm p}^2$ vanishes as
$O(\epsilon^2)$. This is the finite-$\epsilon$ construction missing from the
trace-only comparison below. The matched corner is a regulator-removal
comparison representative, not a second finite-wall joint action; the actual
orthogonal Hayward joint is zero.

### 5.2 Trace-family comparison

For the fixed-boost family,

$$
A_\gamma=2\pi r_+,
\qquad
\eta=s,
\qquad
I_{\rm fuse}=\frac{sA_\gamma}{\kappa_{\rm p}^2}.
\tag{5.4}
$$

The integrated trace wall Legendre transform has the fused limit

$$
W_\zeta
=\frac{\zeta}{2}I_{\rm fuse}.
\tag{5.5}
$$

This one-half is the source of the residual found previously.  If the wall is
transformed but the corner is left at $I_{\rm fuse}$, then

$$
\mathcal B[\partial_{r_+}]
+\partial_{r_+}W_\zeta
+\partial_{r_+}I_{\rm fuse}
=\frac{\pi s\zeta}{\kappa_{\rm p}^2}.
\tag{5.6}
$$

The matched wall-plus-corner transformation is instead

$$
I_{{\rm corner},\zeta}
=\left(1-\frac\zeta2\right)I_{\rm fuse},
\tag{5.7}
$$

for which

$$
\boxed{
\mathcal B[\partial_{r_+}]
+\partial_{r_+}W_\zeta
+\partial_{r_+}I_{{\rm corner},\zeta}=0.
}
\tag{5.8}
$$

Equation (5.8) is an exact algebraic identity at the fused compact horizon. It
shows that a trace Legendre term can be redistributed against the comparison
corner while keeping their sum equal to $I_{\rm fuse}$. It is not an
independent finite-$\epsilon$ Neumann construction and does not prove
differentiability for a nonzero Kruskal-smooth Brown--Henneaux mode.

The shifted $I_{{\rm corner},\zeta}$ is a boundary-action polarization
representative. It does not replace the bulk Noether cut, whose limiting
coefficient remains $sA_\gamma/\kappa_{\rm p}^2$. Conversely, if the boundary
comparison functional is required to stay literally equal to
$I_{\rm fuse}$, equation (5.6) proves that no nonzero trace Legendre transform
can satisfy the transgression.

## 6. Relation to the canonical-energy completion

Let $s_0$ denote the fixed-embedding section of the extended phase space.  A
metric gauge transformation $h\mapsto h+\mathcal L_vG$ with the embedding
held fixed moves to a different section.  The genuinely gauge-related
extended tangent is

$$
(h,0)
\sim
(h+\mathcal L_vG,-v).
\tag{6.1}
$$

Because the difference in (6.1) is a degeneracy of $\Omega_{{\rm p},X}$, the
metric-sector change computed on $s_0$ is cancelled by the edge-sector
change.  Therefore

$$
\int_\gamma\Upsilon_{\rm p}[h,v]
=E_{\rm can,p}[h+\mathcal L_vG]-E_{\rm can,p}[h]
\tag{6.2}
$$

is naturally the **section-change cocycle** induced by the edge canonical
transformation.  Its already verified composition law is precisely the
cocycle law for two successive section changes.

This motivates the cocycle interpretation on a fixed section. The algebraic
regression establishes the section-change law for field-independent
linearized vectors; it does not derive the gravitational surface descent or
prove that $\Upsilon_{\rm p}$ is a globally defined generating functional on
the full nonlinear edge phase space. H40 supplies the abstract moving first
variation and H52 supplies the finite-block linear HW section algebra; H53 is
first proved on the projected diagonal sector, while H59--H61 subsequently
close its linked-regulator limit and extend it to the complete linear metric
quotient. Nonlinear edge charts and their field-dependent bracket remain
open.

There is also a separate polarization issue.  Pulling back the complete action
fixes the ambient extended two-form, but it does not force a chosen tangent
block to be Lagrangian.  If the pullback of the artificial-boundary form to a
finite coefficient chart is $F$, the radial-homotopy construction gives a
cotangent edge graph with pullback curvature $-F$.  For constant $F_{IJ}$ this
is exactly $-F_{IJ}a^I\delta a^J/2$. This proves existence of an auxiliary
H51 cotangent realization, not its derivation, uniqueness, or identification
with gravitational embedding variables.

## 7. Sources

- W. Donnelly and L. Freidel, extended phase space and edge modes,
  [arXiv:1601.04744](https://arxiv.org/abs/1601.04744).
- A. J. Speranza, local phase space and the covariant formula (1.7),
  [arXiv:1706.05061](https://arxiv.org/abs/1706.05061).
- T. Takayanagi and K. Tamaoka, Hayward corner potential and the
  area--boost pair, [arXiv:1912.01636](https://arxiv.org/abs/1912.01636).

## Verification status

**Verified:** equations (1.2)--(1.4), (3.2)--(3.12), (4.3)--(4.6), and
(5.1)--(5.8) follow from the complete first variation, the contracted Bianchi
identity, Gauss--Codazzi, or the displayed algebra. The standalone script
`moving_btz_total_embedding_momentum_check.wl` directly varies the complete
finite BTZ action and checks (3.14)--(3.15) exactly.
`moving_embedding_edge_algebra_check.wl` remains an algebraic regression.
`btz_smooth_moving_polarization_check.wl` verifies the exact smooth family,
finite-wall Lagrangian polarization, normal-translation integrability, and
transgression in $20/20$ exact tests.
Equation (1.8) and the area--boost pair were checked in the cited primary
PDFs.

**Assumptions:** three-dimensional Einstein gravity; the project convention
$\kappa_{\rm p}^2=8\pi G$; $K_{ij}=\gamma_i{}^\mu\gamma_j{}^\nu\nabla_\mu n_\nu$;
compatible wall, slice, and joint embeddings; and a fully Dirichlet
piecewise-smooth action when equations (4.1)--(4.6) are used.  The sign
$\sigma_J$ is the induced joint orientation; the compact fused comparison
uses $\sigma_J=+1$.

**Not verified:** extension of the smooth polarization to the full
Brown--Henneaux mode space; Hamiltonian integrability of nonuniform or generic
normal surface translations; a component check of non-orthogonal moving
joints beyond the exact area--boost variation; a global generating functional
for $\Upsilon_{\rm p}$; and quantization of the edge pair.  H61 later covers
the full **linear metric quotient** by a global-Killing representative and
does not require such a universal moving polarization; it should not be read
as proving the stronger nonlinear extensions listed here.
