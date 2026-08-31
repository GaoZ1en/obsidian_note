# 07 - Framed development map and solution-space pullback

**Stage 4.3 status override:** calculation 10 closes constrained initial
completion and its differential/remainder, and proves a local reduced
restart theorem. The corresponding earlier prerequisite statements below
are now discharged in that precise scope. Bulk Einstein identification,
the full affine reset, linearized Einstein existence and the evolution
remainder are not discharged. All framed metric-bijection, full-tangent
and $P_{\rm cell}^k$/$P_{\rm rect}^{s,r}$ conclusions remain conditional;
the intrinsic/extended-port distinction is unchanged.

## 0. Direct verdict

**Not proved by the current completion: a project-data framed germ/collar
bijection, or a finite-Sobolev $C^1$ development map.** The earlier
unconditional declarations are withdrawn. Cited metric existence for
complete source data remains valid; it does not construct our missing
$C_{\rm init}$ or $DC_{\rm init}$.

Calculation 06 proves the core tensor dictionary on its fixed splitting
slice, preserves original outer cuts using the Cabet gauge, and constructs
the finite-scale partial completion $C_{\rm pre}$. Calculation 09
closes $C_{\rm mix}$ and prepares the free reduced slots; compatibility
with the complete Bianchi/gauge/copy transports remains open. Section 3.1 below proves a
fixed-metric framing uniqueness lemma, not the missing Einstein existence
or finite-Sobolev gauge comparison theorem.

The proved solution-space formula is a restriction identity for existing
compatible linearized solutions. For any constructed lift $L_{\rm loc}$ on
an admissible variation subspace $V_d$, it gives

$$
L_{\rm loc}^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}^{\rm intr}|_{V_d}.
\tag{0.1}
$$

It neither asserts that $V_d=T_d\mathcal D_{\rm char}$ nor that the lift is
onto all framed linearized solutions. Abstract auxiliary outer ports do
not occur in this formula. Their identification requires $P_{\rm red}$.

Calculation 08 proves an angular-flux difference estimate for already
existing reduced solutions. Calculation 09 proves
$R_\perp^k$ with loss three under bounded existing-background hypotheses;
full restart and $\mathbf P_{\rm cell}^k$ remain conditional. The prescribed
rectangle $\mathbf P_{\rm rect}^{s,r}$ also remains conditional. No
quantization or finite-grid proof is undertaken.

## 1. Framed geometric spaces

### 1.1 Rectangle and incoming cross

Keep the project convention

$$
\mathcal R_{U,V}=[0,U]_u\times[0,V]_v\times S,
\tag{1.1}
$$

$$
N_+=\{v=0\},\qquad
N_-=\{u=0\},\qquad
S_{00}=\{u=v=0\},
\tag{1.2}
$$

$$
X_{\rm in}=N_+\cup_{S_{00}}N_-,
\qquad
\ell_+=\partial_u\ \hbox{on }N_+,\qquad
\ell_-=\partial_v\ \hbox{on }N_-.
\tag{1.3}
$$

The framed characteristic data space
$\mathcal D_{\rm char}^{s,{\rm fr}}$ is the positive-area/no-caustic open
set defined in calculation 06.  Its affine chart is

$$
(\bar q^+_{AB},\bar q^-_{AB};
\Omega_0,\theta_{+0},\theta_{-0},
\widehat\omega_A,m;
x^A,s_+,s_-),
\tag{1.4}
$$

with

$$
\bar q^+_{AB}(0,x)=\bar q^-_{AB}(0,x)=\bar h_{AB}(x),
\qquad
q_{AB}|_{S_{00}}=\Omega_0\bar h_{AB}.
\tag{1.5}
$$

The equivalent endpoint polarization
$(s_\pm,\pi_\pm;\Omega_0,\lambda_R,\bar h)$ is used only on its declared
chart and obeys the generator constraint of calculation 05.

### 1.2 Framed solutions

On a domain $\mathcal U\subseteq\mathcal R_{U,V}$ containing the incoming
cross, a framed solution is

$$
\mathfrak g^{\rm fr}
=(g;u,v;\ell_+,\ell_-;x^A;
\iota_{00},s_+,s_-),
\tag{1.6}
$$

where:

1. $g$ is a Lorentzian metric of the declared Sobolev class and
   $\operatorname{Ric}(g)=0$;
2. $u,v$ are optical functions whose level sets form a regular double-null
   foliation on $\mathcal U$;
3. $\ell_\pm$ are marked future null generators, affinely parametrized on
   the incoming sheets, with

   $$
   \ell_+\!\cdot\ell_-\big|_{S_{00}}=-e^{-m};
   \tag{1.7}
   $$

4. $x^A$ represent a marked copy of $S$ in a fixed finite atlas, with labels
   transported along the rulings; no global chart is assumed;
5. $\iota_{00}:S\hookrightarrow\mathcal U$ marks the corner;
6. $s_\pm$ mark the maps from $S_{00}$ to the outer cuts
   $S_{U0}$ and $S_{0V}$.

Thus the null-normal normalization, labels, and endpoint markings retained by
the characteristic form are not silently erased from the solution space.

### 1.3 Proper bulk diffeomorphisms

Let $\operatorname{Diff}_0^{r+1}(\mathcal U)$ be the diffeomorphisms
$\varphi$ whose action is trivial on the chosen incoming framing:

$$
\varphi^*u=u,\qquad
\varphi^*v=v,\qquad
\varphi\circ\iota_{00}=\iota_{00}
\quad\hbox{on }X_{\rm in},
\tag{1.8}
$$

$$
\varphi^*x^A=x^A,\qquad
\varphi_*\ell_\pm=\ell_\pm,\qquad
\varphi\cdot s_\pm=s_\pm
\quad\hbox{on }X_{\rm in}.
\tag{1.9}
$$

These transformations may act in the bulk, but preserve the displayed
incoming scalar values, tangential labels and normal-frame first jet. This
is a boundary condition; they are not required to be the identity on an
unspecified open collar. It does not assert that arbitrary transverse metric
jets are fixed by the definition alone.  Define

$$
\boxed{
\operatorname{Sol}_{\rm vac}^{r,{\rm fr}}(\mathcal U)
:=
\{\mathfrak g^{\rm fr}:\operatorname{Ric}(g)=0\}
/\operatorname{Diff}_0^{r+1}(\mathcal U).}
\tag{1.10}
$$

Diagonal generator relabellings and opposite normal-frame boosts are not in
$\operatorname{Diff}_0$.  They remain boundary symmetries until Section 8.

### 1.4 Restriction

Restriction to the marked incoming sheets defines

$$
\boxed{
R_{\rm in}:
\operatorname{Sol}_{\rm vac}^{r,{\rm fr}}(\mathcal U)
\longrightarrow
\mathcal D_{\rm char}^{s,{\rm fr}}
(X_{\rm in}\cap\mathcal U),}
\tag{1.11}
$$

on the solution neighborhood whose incoming trace has the stronger
$\mathcal D^s$ regularity.  It extracts (1.4), or the equivalent constrained
endpoint polarization, on the portion of the incoming cross contained in
$\mathcal U$.  For a germ, its endpoint maps refer to the new truncated germ
cuts; for a full-sheet collar they are the original $s_\pm$.  It is
representative-independent because $\operatorname{Diff}_0$ acts trivially on
those fields.

For the conditional Banach theorem, do **not** topologize the target by
transporting the data norm through $E$.  On a fixed double-null gauge slice,
declare independently the trace-regular solution class

$$
\mathfrak S^{s,r}
:=\left\{[g]\in\operatorname{Sol}_{\rm vac}^{r,{\rm fr}}:
R_{\rm in}[g]\in\mathcal D_{\rm char}^{s,{\rm fr}}\right\}
\tag{1.12}
$$

with the graph topology of the bulk $\mathcal X^r$ norm and the incoming
$\mathcal D^s$ trace norm.  This definition applies to all trace-regular
solutions in the gauge neighborhood, not only to the image of $E$.  Proving
that it is a local Banach manifold, that $R_{\rm in}$ is $C^1$, and that the
development image is open in it is included explicitly in
$\mathbf P_{\rm rect}^{s,r}$ below; none of those facts holds merely by
definition.

The proof order is therefore:

1. framed development and inverse restriction;
2. equivariant presymplectic pullback;
3. boundary Hamiltonian reduction.

There is no initial quotient
$\mathcal D_{\rm char}/\mathcal G\to\operatorname{Sol}/\operatorname{Diff}$.

## 2. Exact scope of the source theorems

| Source | Domain actually supplied | What it does not by itself supply |
|---|---|---|
| Rendall 1990, Theorem 1 | a neighborhood of the transverse intersection after reduction to a Cauchy problem | a collar of the full truncated sheets or a prescribed $U\times V$ |
| Luk arXiv:1107.0898, Theorem 2 | for smooth regular spherical data, $0\leq u\leq U$, $0\leq v\leq\epsilon$, and the mirrored strip; $\epsilon$ depends on displayed finite-order initial norms | both directions independently long, or a Banach theorem for merely $H^s$ data |
| Mars--S\'anchez-P\'erez arXiv:2205.15267, Theorem 7.15 | a development after restricting the abstract double-null data if needed | an unreduced full-sheet theorem in their variables |
| Mars--S\'anchez-P\'erez arXiv:2301.02722, Theorems 4.17 and 5.5 | geometric existence/uniqueness near the intersection | Remark 5.6 explicitly says the full-sheet translation is not immediate |
| Cabet--Chru\'sciel--Tagne Wafo arXiv:1406.3009, Theorems 3.9 and 5.3 | a neighborhood of the complete smooth initial hypersurfaces for four-dimensional vacuum Einstein; Theorem 3.9 gives finite-Sobolev estimates for the reduced system | a stated finite-Sobolev Einstein theorem with all gauge-completion losses, or a $C^1$ Banach statement |
| ibid., Theorem 3.13 | continuous dependence on a common domain once the compared solutions exist there and have the stated bound | existence of every perturbation on a preassigned full rectangle |
| ibid., Theorem 3.15 | continuation of a smooth solution whose fields stay bounded in $C^1$ | a finite-differentiability continuation theorem; the authors explicitly leave that issue open |
| Chru\'sciel--Tagne Wafo--Gray arXiv:2305.07306, Theorem 1.1 | the smooth neighborhood theorem in all dimensions and topologies | tracked Sobolev losses; the paper only states that suitable Sobolev versions follow |
| Hilditch--Valiente Kroon--Zhao arXiv:1911.00047, Theorem 4 | a long-by-thin neighborhood in Stewart gauge with a null-structure bootstrap | background-relative persistence on a prescribed two-long-direction rectangle |
| Reisenberger arXiv:1211.3880, Section 2.2 | Sachs/area free data and the data-space symplectic form | development of all of the double-null sheet; the paper labels that extension conjectural |

The completed data required by each theorem must first be constructed.
Calculation 06 supplies a core dictionary and $C_{\rm pre}$, not the full
$C_{\rm init}$. No source-scope upgrade follows from the shared notation.

## 3. Metric existence, completion and framing are separate

For complete smooth data in the source's hypotheses, the cited theorems
supply a metric near the corner, or a neighborhood of the full initial
hypersurfaces. These are **literature results**. A uniform project-data map
requires the following additional steps, not yet all proved:

1. complete $C_{\rm init}$, including corner curvature and copy constraints;
2. use a source Einstein development theorem at its actual domain;
3. attach the uniquely prescribed framing in the lemma below;
4. estimate this construction in the declared topology;
5. for tangent surjectivity, construct $DC_{\rm init}$ and prove linearized
   gauge/constraint propagation and exhaustion of the target tangent space.

Only after steps 1--3 are closed may one assert the smooth set-level maps
$E_{\rm germ}^{\rm fr}$ and $E_{\rm col}^{\rm fr}$ from project data.
A germ uses restricted incoming data and cannot recover omitted original
outer cuts. The original-sheet collar route 06.(4.6) preserves them, but
does not remove step 1. A uniform positive collar width over a data
neighborhood additionally needs quantitative completion bounds.

### 3.1 Framing-completion uniqueness for an existing metric

**Lemma (smooth, kinematic).** Let a smooth Lorentzian metric and the two
embedded transverse incoming null sheets with their affine parameters,
labels, corner and outer-cut markings be given. Fix the source gauge
06.(4.6), the future branch of the optical construction, and a reference
dyad prescription on $N_+$. On a common regular optical neighborhood reached
by that construction, these choices have a unique extension. Two isometric
metrics with the same incoming framing have extensions related by the
isometry, which is in $\operatorname{Diff}_0$ in the displayed framed sense.

**Proof.** Solve the eikonal equation for $\xi$ with its affine boundary
values $v$ on $N_-$ and for $\eta$ with values $u$ on $N_+$. These are
noncharacteristic eikonal initial problems: the prescribed differential is
nonzero on the corresponding incoming generator, so its null metric dual
is transverse to that initial sheet. The null equation fixes the remaining
covector component and the chosen future branch fixes the sign. The
Hamilton characteristic ODE has a unique smooth flow until its projection
ceases to be invertible. This proves uniqueness on the stated regular
neighborhood, not arbitrary-distance optical existence.

Set $e_4=-2\operatorname{grad}\xi$ and
$e_3=\operatorname{grad}\eta/g(\operatorname{grad}\eta,\operatorname{grad}\xi)$.
Then $e_3\xi=1$, $e_3\eta=e_4\xi=0$, $g(e_3,e_4)=-2$ and $e_4$ is affine.
Transport the labels from $N_+$ along $e_3$; this gives $e_3=\partial_\xi$.
The initial normal product fixes $e_4=2e^m\ell_+$ on $N_+$ and
$e_3=\ell_-$ on $N_-$. They remain affine on the original incoming sheets.
The general $e_3$ extension need not be affine away from $N_-$; (1.2) only
required incoming affine normalization.

If the retained project vectors are required to be affine also in the bulk,
fix this further scalar prescription. Let
$\nabla_{e_3}e_3=\kappa_3e_3$ and solve
$e_3 f_-=-\kappa_3 f_-$ with $f_-|_{N_+}=1$, and
$e_4 f_+=0$ with $f_+|_{N_-}=(2e^{m_0(x)})^{-1}$, where the corner scalar
is transported along the marked incoming minus generators. Then
$\ell_-=f_-e_3$, $\ell_+=f_+e_4$ are the unique affine extensions for this
prescription: $\nabla_{f e}(f e)=(f e[f]+f^2\kappa_e)e$ vanishes.
They agree with both prescribed incoming affine vectors. Their bulk
normal-product scalar is $m=-\log(2f_+f_-)$; it agrees with $m_0$ at the
corner. The PDE frame remains $e_3,e_4$, so this additional marking does
not alter the Cabet principal system. Without a scalar prescription of this
kind, arbitrary bulk rescalings would remain in the tuple (1.6).

Choose the algebraic $q$-orthonormal dyad on $N_+$ using the fixed reference
metric. Projected parallel transport $\not\nabla_3e_a=0$ uniquely fixes its
rotation in the bulk and gives $\Gamma_3{}^a{}_b=0$. Local transition
rotations are transported as well. The remaining gauge identities follow
from torsion freedom and $e_a\xi=e_a\eta=0$. All these are covariant ODE
or eikonal constructions, so an isometry preserving their initial values
preserves their extensions. The original endpoint maps remain the given
maps on the original sheets, without an independent bulk extension field.
This proves the stated uniqueness modulo $\operatorname{Diff}_0$.

The lemma does not construct the metric, prove full first-jet compatibility
of arbitrary project data, or give finite-Sobolev dependence of this gauge.
Thus it does not prove framed development bijectivity by itself.

## 4. One-cell PDE attack and exact stop line

The authoritative unknown vector, matrices, norms and estimates are now in
`08-uniform-one-cell-characteristic-stability.md`. Its $X^k$ is the actual
two-face angular flux norm, not the formerly asserted equivalent
all-cut supremum/mixed-derivative norm.

- Proved under explicit bounds for two existing reduced solutions:
  $\|F_1-F_2\|_{X^k}\le C\|d_1-d_2\|_{I^k}$, with one extra angular
  derivative on the bounded backgrounds and no incoming loss at that flux
  level. This is not a project-data estimate before $C_{\rm init}$.
- Proved under 09.7's explicit existing-background and incoming bounds:
  $R_\perp^k$, 08.(6.4), at output level $k-3$. First outgoing $C^0$
  traces are controlled. Full source generator jets, complementary
  constraints and the gauge reset remain open.
- The linearized equation and the exact quadratic remainder 08.(5.2) are
  derived. Linearized Einstein existence/surjectivity and the required
  quadratic estimate are not proved.
- Consequently $\mathbf P_{\rm cell}^k$ and the claimed Banach $C^1$
  consequence remain conditional. The previous numerical losses $k+2$,
  $k+4$ were not derived and are withdrawn.

For the fixed-rectangle target below, $\mathcal X^r$ remains a placeholder
for an independently declared **restart-controlling** solution norm. It
must not be replaced by the weaker flux $X^r$ without a trace theorem.

## 5. Buffered background and quantitative margins

Fix a smooth framed background $g_*$ on

$$
\mathcal R_{U+\delta,V+\delta}
\tag{5.1}
$$

for some $\delta>0$.  Assume:

1. for a fixed cut metric $h_0$,

   $$
   c_qh_0\leq q_*\leq C_qh_0;
   \tag{5.2}
   $$

2. the normal product and optical lapse satisfy

   $$
   0<c_m\leq e^{-m_*}\leq C_m;
   \tag{5.3}
   $$

3. the area density, double-null coordinate Jacobian, null exponential-map
   injectivity radius, and least singular values of $s_{\pm*}$ have a common
   positive lower bound;
4. the frame, connection, curvature, and their required derivatives obey

   $$
   \|F_*\|_{\mathcal X^{s_*}
   (\mathcal R_{U+\delta,V+\delta})}\leq M_*.
   \tag{5.4}
   $$

For a past subrectangle set

$$
\begin{aligned}
\mathfrak m[g;\mathcal R_{u,v}]
:=\min\{&
\inf\Omega,\inf e^{-m},
\inf\lambda_{\min}(q;h_0),
\inf|\det D(u,v,x)|,\\
&\operatorname{inj}_{\rm null},
\inf\sigma_{\min}(Ds_+),
\inf\sigma_{\min}(Ds_-)\}.
\end{aligned}
\tag{5.5}
$$

The continuation control is

$$
\boxed{
\mathcal E_k[g;\mathcal R_{u,v}]
:=
\|F\|_{\mathcal X^k(\mathcal R_{u,v})}
+\mathfrak m[g;\mathcal R_{u,v}]^{-1}.}
\tag{5.6}
$$

Equations (5.2)--(5.4) imply

$$
\mathcal E_{s_*}[g_*;
\mathcal R_{U+\delta,V+\delta}]
\leq M_*',
\qquad
\mathfrak m[g_*]\geq\mu_*>0.
\tag{5.7}
$$

These hypotheses exclude caustics and coordinate breakdown only in the
declared background neighborhood.

## 6. Exact reduction of the fixed-rectangle theorem

### 6.1 Conditional full-rectangle target

Fix $r\geq6$.  The required statement is the following.

$$
\boxed{\mathbf P_{\rm rect}^{s,r}(g_*,U,V,\delta).}
\tag{6.1}
$$

There exist a finite integer $s>r$, constants $\epsilon_*,C_*>0$, and a
neighborhood

$$
\mathcal U_{\rm data}^s
=\{d:\|d-d_*\|_{\mathcal D^s(X_{\rm in})}<\epsilon_*\}
\tag{6.2}
$$

such that all of the following hold simultaneously:

1. every $d\in\mathcal U_{\rm data}^s$ has a framed vacuum development on
   the **same** full rectangle $\mathcal R_{U,V}$;
2. in one fixed double-null gauge,

   $$
   \|g[d]-g_*\|_{\mathcal X^r(\mathcal R_{U,V})}
   \leq C_*\|d-d_*\|_{\mathcal D^s(X_{\rm in})};
   \tag{6.3}
   $$

3. all output traces and gauge-completion fields obey the finite-Sobolev
   bounds required to restart the characteristic theorem, and

   $$
   \mathfrak m[g[d];\mathcal R_{U,V}]\geq\mu_*/2;
   \tag{6.4}
   $$

4. the solution map is $C^1:\mathcal D^s\to\mathcal X^r$, with

   $$
   DE_d(\delta d)=\delta g,
   \qquad
   \|\delta g\|_{\mathcal X^r}
   \leq C_*\|\delta d\|_{\mathcal D^s},
   \tag{6.5}
   $$

   where $\delta g$ is the unique framed linearized vacuum development.

5. the fixed-gauge trace-regular class $\mathfrak S^{s,r}$ of (1.12) is a
   local Banach manifold near $[g_*]$, incoming restriction is $C^1$ there,
   and, after shrinking (6.2),

   $$
   \mathcal U_{\rm sol}^{s,r}
   :=E_{U,V}^{\rm fr}(\mathcal U_{\rm data}^s)
   $$

   is open in $\mathfrak S^{s,r}$ with
   $R_{\rm in}|_{\mathcal U_{\rm sol}}$ as the $C^1$ inverse.  Openness and
   inverse regularity are estimates to be proved, not a topology transported
   from the data space.

**Status: conditional.**  Proposition 3.6 and Theorem 3.9 of
arXiv:1406.3009 provide a norm-controlled long-by-thin local width.
Theorem 3.13 provides continuous dependence only after all compared
solutions are assumed to exist on the common domain.  Theorem 3.15 provides
smooth continuation and explicitly leaves finite-differentiability
continuation untreated.  None of them states items 1--5 on a prescribed
two-long-direction rectangle.  The project has not completed the commuted
Einstein-frame estimates in $\mathbf P_{\rm cell}^{k}$ needed to bridge that
gap.

For ledger purposes $\mathbf P_{\rm rect}^{s,r}$ includes the necessary
finite-Sobolev gauge completion and the local $C^1$ lemma
$\mathbf P_{\rm cell}^{k}$; the latter is a proposed route to the former, not
a second independent final obstacle.

### 6.2 Finite-grid stage is gated

No finite-grid continuation is begun while $C_{\rm init}$ and
$\mathbf P_{\rm cell}^k$ are open. After the one-cell theorem, one must
still track output-to-input gauge resets, corner compatibility, derivative
loss along every grid path, and the geometric/injectivity margins.
Local a priori bounds do not establish image openness or a $C^1$ inverse.
The formerly suggested $s\ge r+4IJ+12$ had no derived loss ledger and is
withdrawn; $s(r,I,J)$ is unassigned.

### Theorem 6.1 - conditional framed fixed-rectangle theorem

Assume $\mathbf P_{\rm rect}^{s,r}$.  Then

$$
E_{U,V}^{\rm fr}:\mathcal U_{\rm data}^s
\longrightarrow
\mathcal U_{\rm sol}^{s,r}
\tag{6.7}
$$

is a $C^1$ local diffeomorphism in the independently declared trace-regular
solution topology.  Incoming restriction is its $C^1$ inverse:

$$
R_{\rm in}\circ E_{U,V}^{\rm fr}=\operatorname{id},
\qquad
E_{U,V}^{\rm fr}\circ R_{\rm in}=\operatorname{id}
\tag{6.8}
$$

modulo $\operatorname{Diff}_0$.  Its derivative is (6.5), and

$$
DR_{\rm in}\circ DE=\operatorname{id},
\qquad
DE\circ DR_{\rm in}=\operatorname{id}
\tag{6.9}
$$

modulo infinitesimal $\operatorname{Diff}_0$ directions.

**Proof of the implication.**  Existence, common-domain stability, forward
$C^1$ dependence, target openness, and inverse regularity are the clauses of
$\mathbf P_{\rm rect}^{s,r}$.  The first identity in (6.8) is construction.
The second and injectivity follow from geometric uniqueness with the complete
framing restored.  Differentiating these identities gives (6.9).  No claim
beyond the assumed proposition is used.

## 7. Intrinsic solution-space identity and extended ports

On the same incoming cross $X$ define

$$
\Omega_{\rm char}^{\rm intr}
=\Omega_{\rm bulk}^{(0+2)}+\Omega_{S_{00}}^{\rm aff}
+\Omega_{\rm actual\ HF\ outer\ cuts},
\tag{7.1}
$$

where the shared corner/endpoint block is 06.(9.3) and all terms are
restrictions of the metric, its marked framing and the fixed HF potential.
The shared corner is counted once. The older superscript `ext` on the
endpoint corner in calculation 05 means extension by endpoint labels; that
action-derived block is included in the present intrinsic form. The
separate auxiliary **outer-port** extension here is

$$
\Omega_{\rm char}^{\rm ext}=\Omega_{\rm char}^{\rm intr}
+C_G\sum_s\int_S\delta b_s\wedge\delta\Omega_{sL}\,\nu_0
+\Omega_{\rm other\ auxiliary\ ports}.
\tag{7.2}
$$

Here $b_s$ denotes only the additional abstract port coordinate, not a
second copy of a geometric HF cut field. No map from framed metric solutions
to these auxiliary variables has been supplied. If a later closing action
identifies/replaces them, double counting of the actual cut term must be
removed in that action-derived comparison.

### Theorem 7.1 - restriction identity and identity on a constructed image

Let $g$ be an existing smooth framed vacuum solution on a domain containing
$X$, and let $\mathcal V_g$ consist of existing framed linearized vacuum
solutions whose restrictions satisfy the affine data/endpoint conditions
of 06.(9.1)--(9.3). In the fixed representative,

$$
\Omega_{\rm EH}^{\rm fr}(\delta_1g,\delta_2g)
=\Omega_{\rm char}^{\rm intr}(R_{\rm lin}\delta_1g,
R_{\rm lin}\delta_2g),\qquad \delta_i g\in\mathcal V_g.
\tag{7.3}
$$

**Proof.** Linearizing the vacuum null constraints gives the Raychaudhuri
and Damour variation equations of 06.(8.8)--(8.10). Substitute them into
the full HF bulk-plus-cut potential pulled back in calculations 02 and 05.
The tangential compensator terms cancel by the linearized Damour equation;
their remaining endpoint term is 06.(9.2). The original cuts and their HF
terms are retained with the established incidences. Taking the field-space
curl gives (7.3). This uses no area denominator and no auxiliary $b_s$.
It is a local variational identity for existing solutions, not an existence
or tangent-surjectivity argument.

If a linear development lift has actually been constructed on a subspace
$V_d\subset T_d\mathcal D_{\rm char}$, with
$R_{\rm lin}L_{\rm loc}=\mathrm{id}_{V_d}$ and image in $\mathcal V_g$, then

$$
\boxed{L_{\rm loc}^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}^{\rm intr}|_{V_d}.}
\tag{7.4}
$$

This implication is proved; a lift for every project tangent and
surjectivity onto all framed linearized solutions are **conditional** on
$DC_{\rm init}$, linearized constraint propagation and gauge completeness.
The present work constructs $DC_{\rm pre},DC_{\rm mix},DC_{\rm free}$, not a full such lift.
For an independently differentiable family of actual developments,
$L=DE$ and (7.4) is its nonlinear pullback. This does not assert
differentiability on an entire data neighborhood.

### Corollary 7.2 - rectangle and extended-sector gates

If the full framed $C^1$ proposition $\mathbf P_{\rm rect}^{s,r}$ is proved,
then

$$
(E_{U,V}^{\rm fr})^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}^{\rm intr}.
\tag{7.5}
$$

Any analogous equality with $\Omega_{\rm char}^{\rm ext}$ additionally
requires the action-derived port identification in $\mathbf P_{\rm red}$.
No nondegenerate reduced symplectomorphism follows from either identity.

## 8. Boundary Hamiltonian reduction

### 8.1 Diagonal relabelling

Let

$$
\mathcal G_{\rm rel}=\operatorname{Diff}(S)_{\rm diag}
\tag{8.1}
$$

act by simultaneous relabelling of the common generator chart.  It is
separate from $\operatorname{Diff}_0$.  The moment map derived in calculation
05 is

$$
\boxed{
\mathcal C_A
=p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R.}
\tag{8.2}
$$

Equation (8.2) is restricted to the monotonic-area sector. In the affine
sector replace $(p_s,\lambda_R)$ by $(p_s^{\rm aff},m)$ as in 06.(9.3).
The core dictionary and restriction are equivariant. If the completed
linearized lift exists and is equivariant, then on a regular slice the
correspondence

$$
\boxed{
\mathcal D_{\rm char}^{\infty,{\rm fr}}//_0\mathcal G_{\rm rel}
\ \longleftrightarrow\
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm loc})
//_0\mathcal G_{\rm rel}}
\tag{8.3}
$$

preserves the intrinsic forms on its constructed image. Full tangent-space
identification is conditional, even in the smooth germ/collar category.
A Banach-manifold reduced presymplectomorphism, locally or on
$\mathcal R_{U,V}$, requires the corresponding $C^1$ proposition.  The
fixed-rectangle version is conditional on
$\mathbf P_{\rm rect}^{s,r}$.

### 8.2 Opposite boosts

Keep

$$
\ell_+\mapsto e^b\ell_+,\qquad
\ell_-\mapsto e^{-b}\ell_-,
\qquad
\ell_\pm[b]=0,
\tag{8.4}
$$

separate.  One may choose the same smooth boost slice in the data and
solution charts; the core equivariance is compatible with (7.4). A full PDE gauge comparison
requires its own estimates. Boosts generally change the affine parameter
domain of a marked cut; they are not internal actions on a fixed numerical
interval unless that domain/marking change is retained.
However, the abstract outer normal ports have not been derived from a
complete four-face action, so the project has no full Hamiltonian/kernel
theorem for (8.4).

Consequently (8.3) is not promoted to a nondegenerate reduced
symplectomorphism.  The missing statement is the single boundary-reduction
proposition:

$$
\mathbf P_{\rm red}:
\quad
\text{the action-derived four-face port sector is complete and its
functional kernel is exactly the declared boundary gauge algebra.}
\tag{8.5}
$$

## 9. Output cross and finite-cell evolution

This section applies to any particular framed solution that is already known
to exist on all of $\mathcal R_{U,V}$.  Uniformly for every datum in the
background neighborhood, it is conditional on
$\mathbf P_{\rm rect}^{s,r}$.

### 9.1 Outgoing data

Define

$$
\boxed{
X_{\rm out}
=
\{v=V,\ 0\leq u\leq U\}
\cup_{S_{UV}}
\{u=U,\ 0\leq v\leq V\}.}
\tag{9.1}
$$

Its induced metric, two null second fundamental forms, torsion, normal
normalization, generator labels, and endpoint markings are smooth geometric
output restrictions. To express them in an affine project chart based at
$S_{UV}$, reverse the affine extensions from Section 3.1 and solve for their
parameters and labels:

$$
\ell_+^{\rm out}=-\ell_+,\qquad
\ell_-^{\rm out}=-\ell_-,\qquad
\ell_s^{\rm out}[\lambda_s^{\rm out}]=1,\qquad
\lambda_s^{\rm out}|_{S_{UV}}=0.
\tag{9.1a}
$$

In a general Cabet gauge these parameters are **not** $U-u$ and $V-v$:
the optical coordinate speeds and angular shift need not be constant on the
outgoing faces. The values at the original outer cuts are generally
angle-dependent affine lengths $L_s^{\rm out}(x)$. Either retain these
marked variable domains, or retain the optical parameters and the induced
nonaffinity as source gauge data. A return to the fixed affine project
interval class with uniform Sobolev control is part of the still-unproved
restart/gauge theorem, not a consequence of smooth restriction.

The reversed normal product satisfies
$\ell_+^{\rm out}\!\cdot\ell_-^{\rm out}=-e^{-m}$, while the output
expansions and shears are the negatives of the corresponding future-directed
ones.  Its endpoint maps run from $S_{UV}$ to $S_{0V}$ and $S_{U0}$.  One may
instead keep future-directed generators, but then the same reversal must be
inserted explicitly in the incidence map; the two conventions must not be
mixed.

Restriction defines

$$
R_{\rm out}^Q:
\operatorname{Sol}_{\rm vac}^{\rm fr}(Q)
\longrightarrow
\mathcal D_{\rm out}^{\rm fr}(X_{\rm out}).
\tag{9.1b}
$$

Here $\mathcal D_{\rm out}^{\rm fr}$ is the marked geometric output class,
including its parameter domain/nonaffinity information. It has not been
identified with the fixed-interval incoming Banach class by a bounded
restart map.

Use the branch orientations

$$
\operatorname{or}(v=0)=+du\wedge\epsilon_q,\qquad
\operatorname{or}(u=0)=-dv\wedge\epsilon_q,
\tag{9.2}
$$

and define the output form with

$$
\operatorname{or}_{X_{\rm out}}(v=V)=+du\wedge\epsilon_q,\qquad
\operatorname{or}_{X_{\rm out}}(u=U)=-dv\wedge\epsilon_q.
\tag{9.3}
$$

The outward spacetime-boundary orientations on the two future faces are the
negatives of (9.3).  Equation (9.3), rather than
$d\lambda_s^{\rm out}$ alone, fixes the output phase-space incidence used
below.

Stage 4.2 gives the explicit reset equations and normal/torsion
transformations in 09.(9.1)--(9.4). Source $e_4$ is already affine.
A generator-constant normalization can return variable affine lengths to
fixed intervals only with the corresponding changed corner framing.
The scalar reset estimate does not close the full flow/composition and
incoming-constraint restart theorem.

### 9.2 Conservation

For existing framed linearized solutions,

$$
d\boldsymbol\omega_{\rm EH}
(g;\delta_1g,\delta_2g)=0.
\tag{9.4}
$$

If $S$ is closed and the same HF cut representative is used on all four
faces, Stokes' theorem for the intrinsic action-derived forms gives

$$
0=\Omega_{X_{\rm in}}-\Omega_{X_{\rm out}},
\qquad
\boxed{\Omega_{X_{\rm in}}=\Omega_{X_{\rm out}}.}
\tag{9.5}
$$

The cut contributions at $S_{U0}$ and $S_{0V}$ occur with opposite
incidences from the adjacent initial/output faces; $S_{00}$ and $S_{UV}$ each
carry one shared corner block.  If $S$ has a boundary, (9.5) acquires the
side-boundary symplectic flux and requires an explicit no-flux condition.

The solution set defines

$$
\Gamma_{\rm evol}
\subset
\overline{\mathcal P}_{\rm in}\times\mathcal P_{\rm out}.
\tag{9.6}
$$

For a framed deterministic fixed-rectangle neighborhood it is the graph of a
local presymplectic evolution map; existence of that neighborhood is
conditional on $\mathbf P_{\rm rect}^{s,r}$.  After (8.3) it descends to the
corresponding reduced canonical relation on every domain where both sides
exist.

### 9.3 Which abstract ports become geometric

The abstract outer areas and endpoint maps on the incoming sheets become the
actual data at $S_{U0}$ and $S_{0V}$.  The outgoing profiles are now genuine
solution restrictions.  What remains open is the action-derived
identification of the logarithmic normal partners $b_\pm$ and any additional
four-face spin-1/shape terms.  Current conservation does not by itself prove
that the earlier abstract $b_\pm$ are the complete physical output ports.

## 10. Composition of developments

Let two background-local finite rectangles have existing framed
developments and an identified output/input characteristic cross.  The
correct geometric matching is equality, after the chosen incidence map, of
the full MSP hypersurface first jet:

$$
[\gamma]=0,\qquad
[\boldsymbol\ell]=0,\qquad
[\ell^{(2)}]=0,\qquad
[Y]=0,\qquad
[\mu]=0.
\tag{10.1}
$$

In project variables this includes the cut metric, both relevant null second
fundamental forms, $m$, torsion, generator labels, and normal frame.  The
previous condition

$$
[q_{AB}]=0=[B_{AB}]
\tag{10.2}
$$

is the spin-$0+2$ tangential bulk sub-block of (10.1), not the whole spacetime
first jet.

For fixed smooth incidence maps $f,g$, also impose

$$
s_2\circ g=f\circ s_1,\qquad
\pi_1=(Df)^*g^*\pi_2.
\tag{10.3}
$$

Geometric uniqueness implies

$$
\boxed{
E_{Q_2\circ Q_1}^{\rm fr}(d)
=\operatorname{Glue}\!\left(
E_{Q_1}^{\rm fr}(d),
E_{Q_2}^{\rm fr}(F_{Q_1}^{\rm fr}(d))
\right),}
\tag{10.4}
$$

where

$$
F_Q^{\rm fr}:=R_{\rm out}^Q\circ E_Q^{\rm fr}.
\tag{10.5}
$$

Thus the correctly typed evolution statement is

$$
\boxed{
F_{Q_2\circ Q_1}^{\rm fr}
=F_{Q_2}^{\rm fr}\circ F_{Q_1}^{\rm fr}.}
\tag{10.6}
$$

These identities hold on the matched domain, modulo
$\operatorname{Diff}_0$.  Equations (10.1)--(10.3) cancel the oriented
first-jet and endpoint cotangent interface terms.  The diagonal reduction
(8.3) therefore commutes with composition.

For three cells, uniqueness on triple overlaps and the functorial cotangent
law give

$$
(F_3\circ F_2)\circ F_1
=F_3\circ(F_2\circ F_1),
\tag{10.7}
$$

and the two iterated solution gluing operations yield the same framed
solution modulo $\operatorname{Diff}_0$.  This is a solution-space
associativity theorem for developments that exist on the common glued domain.
A uniform background-neighborhood version on the prescribed rectangles is
conditional on $\mathbf P_{\rm rect}^{s,r}$, and a complete physical-port
version remains conditional on $\mathbf P_{\rm red}$.

## 11. Stage-4.2 required verdict

1. **Copy system:** a slot-only swap with unchanged RHS is false.
   Calculation 08 now uses the printed allocation with the full conjugation
   09.(1.4), exactly equivalent to the literal Appendix equations.
2. **Fixed reference energy:** proved with the explicit metric, density,
   connection and coefficient margins in 09.2.
3. **$C_{\rm init}$:** not proved. $C_{\rm free}$, its differential and
   quadratic remainder have conservative loss five, 09.(4.3); no full
   initial-completion loss is assigned.
4. **$C_{\rm mix}$:** proved by 09.(3.3),(3.5), with conservative loss four
   and the same loss for its differential and quadratic remainder.
5. **$R_\perp^k$:** proved for existing reduced solutions under 09.7,
   with loss three. This is not a project-data Einstein existence theorem.
6. **Outgoing traces:** first $C^0$ traces are controlled; full generator
   jets, complementary constraints and bounded reset are not.
7. **$P_{\rm cell}^k$:** not proved. The first remaining initial lemma is
   $C_{\rm Bianchi}$, beginning with 09.(5.4); full restart, linearized
   Einstein existence and the quadratic evolution remainder also remain.
8. **$P_{\rm rect}^{s,r}$:** conditional; no finite-grid continuation,
   guessed global threshold, or quantization.
