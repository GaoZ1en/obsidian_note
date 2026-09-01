# Non-Abelian Yang--Mills radial-collar geometric assembly

## 0. Verdict, scope and category

**Verdict: passed in the declared smooth local/trivial collar sector.** At the level of smooth original Yang--Mills solutions, non-Abelianity introduces path ordering and commutator terms in the normal-jet recursion, but no extra physical sewing datum. Tangential connection descent together with the full action-derived conormal transmission determines matching radial-gauge Cauchy data for the normal system. The Yang--Mills equation and Bianchi identity then force every normal jet to match. Radial collar repair therefore gives a smooth global Yang--Mills connection, independently of the repair choices up to one smooth global proper gauge transformation.

This result is deliberately narrower than a Yang--Mills time-slab theorem. Fix:

- a globally hyperbolic background and a finite time slab;
- a timelike artificial interface $\Gamma$ with a product collar
  $$
  U=(-\varepsilon,\varepsilon)_x\times\Gamma,
  \qquad g=dx^2+\gamma_{ab}(z)dz^a dz^b,
  $$
  where $\gamma$ is Lorentzian, smooth and independent of $x$ on $U$;
- a compact matrix Lie group $G$ in a faithful unitary representation, with anti-Hermitian Lie algebra $\mathfrak g$ and positive invariant pairing $\langle\ ,\ \rangle$;
- the ordinary second-order Yang--Mills action, no matter and no additional interface action;
- two connected spatial regions, each meeting a physical wall whose gauge frame is fixed;
- smooth original regional Yang--Mills solutions up to the closures;
- one declared trivializable bundle/collar sector and one fixed transition $h$ which is reachable in the declared regional frame policy;
- all allowed proper topological components compatible with that sector.

The exact product metric is a convenient first version. For a non-product Gaussian collar the same recursion acquires known smooth metric and second-fundamental-form coefficients; that extension is not claimed here.

No Lorenz or Coulomb gauge is used. No regional hyperbolic IBVP, gauge-fixing completeness, Gribov theorem, Sobolev completion, quotient-manifold theorem, quantum statement or higher-dimensional spectrum is proved.

## 1. Original action, descent and full transmission

Use

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}dg,&
F&=dA+A\wedge A,&
F^g&=g^{-1}Fg.
\end{align}$$

The action is

$$\begin{align}
S[A]=-{1\over4g_{\rm YM}^2}
\int_M\sqrt{-g}\,\langle F_{\mu\nu},F^{\mu\nu}\rangle.
\end{align}$$

Its first variation is

$$\begin{align}
\delta S
={1\over g_{\rm YM}^2}\int_M\sqrt{-g}\,
\langle D_\mu F^{\mu\nu},\delta A_\nu\rangle
-{1\over g_{\rm YM}^2}\int_{\partial M}\sqrt{|\gamma|}\,
\langle n_\mu F^{\mu a},\delta a_a\rangle.
\end{align}$$

Thus in the connection polarization the outward conormal momentum is

$$\begin{align}
\Pi_i^a=-g_{\rm YM}^{-2}\sqrt{|\gamma|}\,
n_{i,\mu}F_i^{\mu a}.
\end{align}$$

Let the two interface frames be related by $h:\Gamma\to G$. The original action gives the sewing data

$$\begin{align}
\boxed{a_2=a_1^h},
\qquad
\boxed{\Pi_1+\operatorname{Ad}_h^*\Pi_2=0},
\end{align}$$

where

$$\begin{align}
\langle\operatorname{Ad}_h^*\Pi_2,X\rangle
:=\langle\Pi_2,\operatorname{Ad}_{h^{-1}}X\rangle.
\end{align}$$

The second equation is the **full** timelike transmission equation for every tangential index $a$. On a Cauchy cut its temporal/electric component gives the Gauss moment map; the remaining tangential components are physical transmission equations. Therefore

$$\begin{align}
\text{Cauchy Gauss moment map}
\subsetneq
\text{full worldtube transmission}
\end{align}$$

whenever $\Gamma$ has nontrivial spatial tangent directions.

Nothing in the collar proof replaces the full equation by Gauss law alone.

## 2. Reachable fixed-$h$ chart and common orientation

First flatten the fixed transition in a collar. Choose a smooth extension $\widetilde h$ on the region-2 collar with $\widetilde h|_\Gamma=h$ and put

$$\begin{align}
A_2^{\rm c}:=A_2^{\widetilde h^{-1}},
\qquad
F_2^{\rm c}=\widetilde hF_2\widetilde h^{-1}.
\end{align}$$

Then

$$\begin{align}
a_2^{\rm c}=a_1.
\end{align}$$

Locally, $\widetilde h$ is a passive change of collar trivialization. If one insists on one regional chart extending to the physical wall, reachability means that $\widetilde h$ can be chosen compatible with the fixed wall frame. Different admissible extensions are compared in Section 6 and give the same global proper orbit.

Use one global collar coordinate $x$, increasing from region 1 to region 2. The outward normals are

$$\begin{align}
n_1=+\partial_x,
\qquad
n_2=-\partial_x.
\end{align}$$

After identifying $\mathfrak g\simeq\mathfrak g^*$ by the invariant pairing and expressing region 2 in the common frame, transmission becomes

$$\begin{align}
-g_{\rm YM}^{-2}\sqrt{|\gamma|}\,F_{1,x}{}^a
+g_{\rm YM}^{-2}\sqrt{|\gamma|}\,F_{2,x}^{\rm c}{}^a=0.
\end{align}$$

Since $\gamma$ is nondegenerate,

$$\begin{align}
\boxed{F_{1,xa}|_\Gamma=F_{2,xa}^{\rm c}|_\Gamma.}
\end{align}$$

Tangential connection descent already gives

$$\begin{align}
F_{2,ab}^{\rm c}|_\Gamma=F_{1,ab}|_\Gamma.
\end{align}$$

These are consequences of the original sewing relation, not extra collar conditions.

## 3. Based radial gauge and covariant reconstruction

Work in the common collar chart. For each side solve

$$\begin{align}
\boxed{\partial_x g_i=-A_{i,x}g_i},
\qquad
g_i(0,z)=1.
\end{align}$$

The sign follows directly from

$$\begin{align}
(A_i^{g_i})_x
=g_i^{-1}A_{i,x}g_i+g_i^{-1}\partial_xg_i.
\end{align}$$

The solution is the path-ordered exponential

$$\begin{align}
g_i(x,z)=\mathcal P\exp\left(-\int_0^xA_{i,x}(\xi,z)d\xi\right).
\end{align}$$

Path ordering is essential unless the radial values of $A_x$ commute. Standard parameter-dependent ODE theory gives smooth dependence on every tangential coordinate $z=(t,s^A)$.

The ODE need hold only on a smaller collar. Choose that collar thin enough that $g_i$ remains in a normal neighborhood of the identity. On a slightly larger collar interpolate the group-valued map to the identity using a local logarithm and a radial cutoff. The resulting regional transformation:

- equals the ODE solution near the cut;
- equals $1$ at the cut because of the initial condition;
- equals $1$ near the physical wall;
- is smooth in all variables.

Thus it is a regional based proper transformation. It need not remain in radial gauge outside the inner collar, which is irrelevant for assembly.

Write

$$\begin{align}
\bar A_i:=A_i^{g_i},
\qquad
\bar F_i=g_i^{-1}F_ig_i.
\end{align}$$

On the inner collar,

$$\begin{align}
(\bar A_i)_x=0.
\end{align}$$

For a tangential index $a$,

$$\begin{align}
F_{xa}
&=\partial_xA_a-\partial_aA_x+[A_x,A_a]
=\partial_xA_a-D_aA_x.
\end{align}$$

Therefore in radial gauge

$$\begin{align}
\boxed{\partial_x\bar A_a=\bar F_{xa}.}
\end{align}$$

Equivalently, the covariant reconstruction formula is

$$\begin{align}
\boxed{
\bar A_a(x,z)
=a_a(z)+\int_0^x
g(\xi,z)^{-1}F_{xa}(\xi,z)g(\xi,z)\,d\xi.}
\end{align}$$

This is not the Abelian formula applied to the original field: the curvature is first parallel-transported by the path-ordered radial solution. Once $A_x=0$, the remaining integral is an ordinary Lie-algebra-valued integral because the radial parallel transport has already been performed.

At the cut $g_i=1$. Hence tangential descent and full transmission give the same radial-gauge initial data

$$\begin{align}
\bar A_{1,a}|_\Gamma&=\bar A_{2,a}|_\Gamma,&
\bar F_{1,xa}|_\Gamma&=\bar F_{2,xa}|_\Gamma.
\end{align}$$

Continuity alone is not yet the smooth patching theorem. The next section proves equality of every normal jet.

## 4. Covariant normal-jet recursion

Let

$$\begin{align}
P_a:=F_{xa},
\qquad
Q_{ab}:=F_{ab},
\end{align}$$

in radial gauge, and let $D_a=\nabla_a+[A_a,\,\cdot\,]$ use the Levi--Civita connection of $\gamma$ and the tangential gauge connection. Because the collar is an exact product, $\partial_x\gamma=0$ and there are no extrinsic-curvature terms.

### Yang--Mills equation

For a tangential lower index $a$,

$$\begin{align}
0=D^\mu F_{\mu a}
=D_xF_{xa}+D^bF_{ba}.
\end{align}$$

Since $A_x=0$,

$$\begin{align}
\boxed{\partial_xP_a=-D^bQ_{ba}.}
\end{align}$$

The normal component is

$$\begin{align}
0=D^\mu F_{\mu x}=-D^aP_a,
\qquad
\boxed{D^aP_a=0}.
\end{align}$$

This is the radial constraint. It is part of the original regional equations, not an additional transmission datum.

### Bianchi identity

The $(x,a,b)$ component of $D_{[\mu}F_{\nu\rho]}=0$ is

$$\begin{align}
0=D_xF_{ab}+D_aF_{bx}+D_bF_{xa}.
\end{align}$$

Hence

$$\begin{align}
\boxed{\partial_xQ_{ab}=D_aP_b-D_bP_a.}
\end{align}$$

Together with radial reconstruction,

$$\begin{align}
\boxed{
\partial_xA_a=P_a,
\qquad
\partial_xP_a=-D^bQ_{ba},
\qquad
\partial_xQ_{ab}=D_aP_b-D_bP_a.}
\end{align}$$

For the $2+1$ product collar with $\gamma=-dt^2+ds^2$ and $q=Q_{ts}$, the signs are

$$\begin{align}
\partial_xP_t&=D_sq,&
\partial_xP_s&=D_tq,&
\partial_xq&=D_tP_s-D_sP_t,\\
-D_tP_t+D_sP_s&=0.
\end{align}$$

These component signs were checked separately with the declared metric; the proof uses the covariant formulas above.

### The commutator term and jet induction

Non-Abelianity enters when a normal derivative passes through $D_a$:

$$\begin{align}
\boxed{[\partial_x,D_a]X=[P_a,X].}
\end{align}$$

More generally,

$$\begin{align}
\partial_x^r(D_aX)
=D_a\partial_x^rX
+\sum_{j=0}^{r-1}{r\choose j}
[\partial_x^{r-j}A_a,\partial_x^jX].
\end{align}$$

Every commutator in the sum contains only already determined jets. Thus for $r\ge0$,

$$\begin{align}
\partial_x^{r+1}A_a&=\partial_x^rP_a,\\
\partial_x^{r+1}P_a&=-\partial_x^r(D^bQ_{ba}),\\
\partial_x^{r+1}Q_{ab}
&=\partial_x^r(D_aP_b-D_bP_a)
\end{align}$$

is a closed recursion in the tangential derivatives of the order-$\le r$ jets.

At order zero the two sides have equal $A_a$ and $P_a$. Their tangential curvatures $Q_{ab}$ are therefore equal as well. Suppose all normal jets through order $r$ agree as smooth tangential functions. The displayed formulas and the commutator identity imply equality at order $r+1$. By induction,

$$\begin{align}
\partial_x^r\bar A_{1,a}|_\Gamma
=\partial_x^r\bar A_{2,a}|_\Gamma,
\qquad r=0,1,2,\ldots,
\end{align}$$

and the same is true for $F$ and all mixed tangential/normal derivatives.

The radial constraint does not create a new compatibility datum. It holds on both regional solutions. Its differentiated consequences follow from the Yang--Mills Noether identity and the differentiated equations above. Equivalently, the antisymmetry of $F$ makes the covariant divergence of the Yang--Mills equation vanish after the curvature commutators and Ricci contractions are paired. No ad hoc cut equation has been added.

Two smooth functions on the closed half-collars with all one-sided normal jets equal define one smooth function on the doubled collar. Therefore the radial-gauge connections patch to a smooth connection across $\Gamma$.

**Result of the recursion test:** there is no missing tangential-curvature datum, commutator compatibility condition or stabilizer datum in the local smooth patching problem. $Q_{ab}|_\Gamma$ is fixed by tangential connection descent, and every higher jet is fixed recursively.

## 5. Raw concatenation, collar repair and geometric assembly

Let $\mathcal M_h^{\rm YM}$ be the set of pairs $(A_1,A_2;h)$ of smooth original regional Yang--Mills solutions satisfying:

- the fixed physical wall/frame policy;
- connection descent $a_2=a_1^h$;
- full conormal transmission $\Pi_1+\operatorname{Ad}_h^*\Pi_2=0$;
- the original constraints and all smooth corner compatibility identities.

Let

$$\begin{align}
\mathcal G_i^0
=\{u_i:M_i\to G:
u_i|_{\partial_{\rm phys}M_i}=1, u_i|_\Gamma=1\}
\end{align}$$

include every allowed component in the declared sector, and set

$$\begin{align}
\mathcal B_h^{\rm YM}
:=\mathcal M_h^{\rm YM}/(\mathcal G_1^0\times\mathcal G_2^0).
\end{align}$$

Three operations must remain distinct.

1. **Raw representative concatenation.** Descent removes a delta curvature, but a normal component or higher normal jet can still jump. The piecewise representative need not be a smooth connection.
2. **Radial-gauge collar repair.** The based ODE transformations of Sections 3--4 produce a representative which is one smooth connection in a common collar.
3. **Orbit-level assembly.** Forget the collar choices and retain the resulting global proper orbit.

Let $\mathcal Q_M^{\rm YM}$ be the set of globally smooth original Yang--Mills connections in the declared sector modulo globally smooth proper gauge. Sections 3--4 define

$$\begin{align}
\boxed{
\operatorname{Asm}_{\rm geom}^{\rm YM}:
\mathcal B_h^{\rm YM}\longrightarrow\mathcal Q_M^{\rm YM}.}
\end{align}$$

The map is well defined by the comparison theorem below. It is generally not injective on based classes alone because a common/twisted active cut frame still acts.

Define the regional allowed group

$$\begin{align}
\mathcal K_h^{\rm YM}
:=\{(u_1,u_2):u_i|_{\partial_{\rm phys}}=1,
\ u_2|_\Gamma=h^{-1}(u_1|_\Gamma)h\}.
\end{align}$$

Its quotient by $\mathcal G_1^0\times\mathcal G_2^0$ is the actual reachable twisted cut action. It is an extension image, not automatically all $\operatorname{Map}(\Gamma,G)$. The assembly map is constant on this action and factors through

$$\begin{align}
\mathcal Q_{\rm reg}^{\rm YM}
:=\mathcal M_h^{\rm YM}/\mathcal K_h^{\rm YM}.
\end{align}$$

Restriction of a smooth global representative gives an object with $h=1$. A global proper transformation restricts to an element of $\mathcal K_1^{\rm YM}$. The identity collar choice shows assembly after restriction is the original orbit. Conversely, restricting a radial-collar assembly returns the original regional based classes, up to the same twisted cut arrow. Hence

$$\begin{align}
\boxed{
\mathcal Q_{\rm reg}^{\rm YM}
\simeq
\mathcal Q_M^{\rm YM}}
\end{align}$$

as orbit sets in this local/trivial smooth sector.

This theorem starts from already existing original regional solutions. It proves no theorem that arbitrary gauge-fixed boundary data produce them.

## 6. Choice independence and the comparison ODE

Suppose two admissible collar constructions give global smooth connections $C$ and $D$. On each region let $v_i$ be the regional comparison map, so

$$\begin{align}
D=C^{v_i}.
\end{align}$$

From

$$\begin{align}
D_x=v_i^{-1}C_xv_i+v_i^{-1}\partial_xv_i
\end{align}$$

one obtains the non-Abelian comparison equation

$$\begin{align}
\boxed{\partial_xv_i=v_iD_x-C_xv_i.}
\end{align}$$

If $U_C$ and $U_D$ solve

$$\begin{align}
\partial_xU_C&=-C_xU_C,&
\partial_xU_D&=-D_xU_D,&
U_C(0)&=U_D(0)=1,
\end{align}$$

then the solution with cut value $k(z)$ is

$$\begin{align}
\boxed{v(x,z)=U_C(x,z)k(z)U_D(x,z)^{-1}.}
\end{align}$$

Both $U_C$ and $U_D$ are path ordered. Smooth coefficients and smooth $k$ give a unique solution smooth in $(x,z)$. In a common radial gauge $C_x=D_x=0$, so $v$ is independent of $x$ near the cut.

In the common chart, admissible comparison maps have the same cut value. In the original fixed-$h$ charts they obey the equivalent twisted condition

$$\begin{align}
v_2|_\Gamma=h^{-1}(v_1|_\Gamma)h.
\end{align}$$

Flattening converts this to one initial value $k$. Uniqueness of the comparison ODE proves equality of every one-sided jet, so the two regional maps glue to one global smooth map. If the regional comparisons equal $1$ at their physical walls, the global map is proper.

This controls:

- the widths of the radial and taper collars;
- the path-ordered radial solutions;
- the extension used to flatten a reachable fixed $h$;
- based representatives;
- any other admissible gauge/trivialization interpolation which remains a gauge transform of the original field on each entire region.

No interpolation of physical curvature is allowed.

The same cut value is sufficient for the **local** smooth comparison. Global properness also uses the already declared wall identity and allowed topological component. Two regional paths from the wall identity to the same cut value can glue to a nontrivial global large transformation; that component is retained in the global proper group. An arbitrary nonextendable cut map is not promoted to an arrow.

## 7. Regional arrows and stabilizers

The regional arrows are defined before referring to global orbit equality:

$$\begin{align}
(u_1,u_2):(A_1,A_2;h)\longrightarrow(A_1^{u_1},A_2^{u_2};h),
\end{align}$$

with wall identity and

$$\begin{align}
u_2|_\Gamma=h^{-1}(u_1|_\Gamma)h.
\end{align}$$

The based subgroup has $u_i|_\Gamma=1$. The quotient gives the common cut action in the flattened chart and the twisted cut action in the fixed-$h$ chart.

Given such an arrow, conjugate it by the two collar repairs. The resulting comparison maps have one common cut value and compare two smooth global outputs. Section 6 glues them to a global smooth proper transformation. Thus every regional arrow has a global image.

Conversely, restrict a global smooth proper comparison between two assembled outputs and undo the two collar repairs. The resulting regional maps have the required twisted cut values. Thus every global proper equivalence is captured.

### Stabilizers

Infinitesimally, a stabilizer satisfies

$$\begin{align}
D_A\epsilon=0.
\end{align}$$

If $\epsilon=0$ at a nonempty fixed physical wall and the region is connected, parallel-transport uniqueness gives $\epsilon=0$ everywhere. At finite level, $A^u=A$ means that $u$ is covariantly constant; $u=1$ at the wall implies $u=1$ throughout. Therefore the based and proper actions are free in the declared anchored sector. The radial collar lemma itself does not require irreducibility.

If a connected component has no fixed frame anchor, the covariantly constant centralizer of the holonomy can survive. In that different policy one must retain stabilizers or restrict to a regular/irreducible stratum. The present theorem does not assume they disappear without the wall argument.

## 8. Crossing Wilson line / holonomy check

Let a path $\gamma$ run from the left physical wall to the right physical wall and cross $\Gamma$ once. Write $\gamma=\gamma_2\circ\gamma_1$, where $\gamma_1$ ends at the cut in chart 1 and $\gamma_2$ begins there in chart 2. With parallel transport defined by

$$\begin{align}
{dU_A\over d\tau}=-A(\dot\gamma)U_A,
\end{align}$$

the crossing transporter is

$$\begin{align}
\boxed{
U_\gamma=U_2(\gamma_2)h^{-1}U_1(\gamma_1).}
\end{align}$$

This agrees with $U_2^{-1}h^{-1}U_1$ in `Yang-Mills 1+1.md`, where $U_2$ there is oriented from the right wall toward the cut.

Under a gauge transformation,

$$\begin{align}
U_{A^u}(\gamma)
=u(\gamma(1))^{-1}U_A(\gamma)u(\gamma(0)).
\end{align}$$

The transition transforms as

$$\begin{align}
h\longmapsto u_1^{-1}hu_2.
\end{align}$$

Substitution shows that all cut values cancel in $U_2h^{-1}U_1$. With fixed physical wall frames it is invariant; if the endpoints are unframed, only the corresponding endpoint conjugacy class is invariant. Based regional transformations, common/twisted cut actions and reachable passive transition changes all give the same result.

The radial repairs equal $1$ at the cut and at the physical walls, so they do not change the crossing transporter. Consequently collar assembly preserves the non-Abelian path-ordered crossing observable; it does not collapse it to an Abelian integral or discard its conjugacy content.

## 9. Original CPS compatibility at geometry level

On a Cauchy slice write the original potential in canonical form

$$\begin{align}
\Theta_{\Sigma_i}
=\int_{\Sigma_i}\langle E_i^j,\delta A_{i,j}\rangle,
\qquad
\Omega_i=\delta\Theta_{\Sigma_i},
\end{align}$$

where $E_i^j$ includes the coupling, density and orientation fixed by the original action. For a field-independent infinitesimal gauge parameter, integration by parts gives on the linearized Gauss locus

$$\begin{align}
\boxed{
\iota_{X_{\epsilon_i}}\Omega_i
=-\delta\int_{S}\langle E_i^\perp,\epsilon_i\rangle.}
\end{align}$$

For a regional based parameter the cut and physical-wall values vanish, so the contraction is zero. For a common/twisted cut parameter the sum is

$$\begin{align}
-\delta\left\langle
E_1^\perp+\operatorname{Ad}_h^*E_2^\perp,
\epsilon_1
\right\rangle_S,
\end{align}$$

which vanishes on the Gauss component of full transmission and on its tangent locus. Hence regional based directions and identified common/twisted cut directions are null in the assembled original form.

For variable $h$, the completed original Cauchy potential retains the convention of `gauge-covariant sewing and reduction.md` and `spatial gauge gluing formalism.md`:

$$\begin{align}
\boxed{
\Theta_{S,\rm ext}
=\Theta_{S,1}+\Theta_{S,2}
-\langle E_2^\perp,h^{-1}\delta h\rangle_S.}
\end{align}$$

This term follows only after the full worldtube integration by parts and the original normal Yang--Mills equation; Gauss alone is insufficient. It is a transition/presentation corner term, not an added edge oscillator.

The radial repairs are based at the cut, so their change of $\Theta_i$ has no cut charge. Two nonbased admissible choices differ by a common/twisted cut action, whose summed charge cancels by transmission. The comparison map of Section 6 is global proper. Therefore

$$\begin{align}
\operatorname{Asm}_{\rm geom}^{\rm YM\,*}\Omega_M
=\left.(\Omega_1+\Omega_2+\Omega_{\rm corner}^h)
\right|_{\mathcal M_h^{\rm YM}}
\end{align}$$

as an identity on admissible smooth differentiable families modulo the displayed vertical directions.

This is geometry-level CPS compatibility. No smooth symplectic quotient, kernel equality on a completed tangent space, or Yang--Mills time-slab exact-isotropic theorem is claimed.

## 10. Final theorem and exact claim boundary

**Non-Abelian radial-collar geometric assembly lemma.** In the Section 0 smooth exact-product, trivializable/reachable collar sector:

1. the original action gives tangential connection descent and full coadjoint conormal transmission;
2. a based path-ordered radial ODE puts each side in radial gauge near the cut;
3. radial reconstruction has $\partial_xA_a=F_{xa}$ after the path-ordered transport;
4. the Yang--Mills/Bianchi normal system closes, and its commutator terms depend only on lower jets;
5. all one-sided normal jets match, so the repaired connection is globally smooth;
6. every two admissible repairs differ by one smooth global proper gauge found from $\partial_xv=vD_x-C_xv$;
7. independently defined regional twisted arrows map to, and capture, all global proper equivalences;
8. fixed physical wall frames kill covariantly constant stabilizers in the connected regions;
9. crossing path-ordered holonomy is retained; and
10. the original CPS is compatible with assembly on admissible smooth families, with the variable-$h$ corner term kept once.

Therefore

$$\begin{align}
\boxed{
\texttt{passed}:\quad
\text{non-Abelian radial-collar geometric assembly closes locally}.}
\end{align}$$

The genuine remaining blocker for a higher-dimensional Yang--Mills time-slab theorem is not this local original-solution assembly. It is the separate construction of regional constraint-preserving IBVPs and their gauge realizations, including admissible boundary data, Gauss propagation, existence/uniqueness and restriction coverage.

**Not upgraded:** general Yang--Mills IBVP; Lorenz/Coulomb realization; Gribov/global slice; nontrivial bundle sector; non-product collar formula; low-regularity trace theorem; Sobolev/energy completion; smooth quotient manifold; full CPS kernel theorem; time-slab HJ/exact-isotropic relation; quantum reduction.

**Analytical proof:** Sections 1--9. **Exact diagnostics:** `verification/radial-collar-checks.wl` checks the radial ODE sign, reconstruction, commutator recursion, product-metric YM/Bianchi signs, comparison ODE, Wilson transformation and CPS cancellation with exact matrices. These checks do not prove the smooth parameter theorem, jet induction, topology, arrow completeness or orbit result.
