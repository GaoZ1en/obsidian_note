# 07 - Framed development map and solution-space pullback

## 0. Direct verdict

**The framed development-map gap is closed for a local germ and for the
long-by-thin/full-sheet neighborhood supplied by the cited characteristic
theorems.  It is not closed on a prescribed full finite rectangle in the
declared finite-Sobolev category.**

More precisely, after the dictionary in calculation 06 there are rigorously
defined framed maps

$$
E_{\rm germ}^{\rm fr}:\mathcal U_{\rm germ,data}^{\infty}
\longrightarrow
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm germ}),
\qquad
E_{\rm col}^{\rm fr}:\mathcal U_{\rm col,data}^{\infty}
\longrightarrow
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm col}),
\tag{0.1}
$$

with inverse incoming restriction modulo the proper bulk diffeomorphisms
defined below.  Here the germ datum is the restriction to
$X_{\rm in}\cap\mathcal U_{\rm germ}$; only the collar datum contains the two
complete truncated incoming sheets.

These unconditional maps are stated in the smooth category used by the
Einstein theorems cited below.  Their finite-order estimates control the
collar width but do not, without additional loss bookkeeping, turn (0.1)
into a finite-Sobolev Banach chart.

The unconditional solution-space statement is the linearized one

$$
\boxed{
L_{\rm loc}^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char},
\qquad L_{\rm loc}\in
\{L_{\rm germ},L_{\rm col}\}.}
\tag{0.2}
$$

In the germ case both forms in (0.2) are evaluated on
$X_{\rm in}\cap\mathcal U_{\rm germ}$; in the collar case they are evaluated
on the two complete truncated incoming sheets.

It becomes the literal nonlinear pullback
$(E_{\rm loc}^{\rm fr})^*\Omega_{\rm EH}^{\rm fr}$ along any smooth family
for which differentiability of the development has been established.  A
Banach-neighborhood $C^1$ statement for all nearby data is part of the
missing estimate below; it is not inferred from (0.2).

The desired fixed-rectangle Banach theorem

$$
E_{U,V}^{\rm fr}:\mathcal U_{\rm data}^s
\longrightarrow
\operatorname{Sol}_{\rm vac}^{r,{\rm fr}}(\mathcal R_{U,V})
\tag{0.3}
$$

is reduced in Section 6 to one explicit proposition
$\mathbf P_{\rm rect}^{s,r}$.  That proposition includes existence on the
common rectangle, a background-relative stability estimate, persistence of
the double-null chart, trace/restart control, forward and inverse $C^1$
regularity in the independently declared trace-regular solution topology,
and openness of the image.
It is **conditional**, not proved by the present source theorems or by the
finite-dimensional regressions.

This distinction is forced by the sources.  In arXiv:1406.3009 Theorem 3.13
assumes that the compared solutions already exist on a common domain, while
Theorem 3.15 proves a continuation criterion only for smooth solutions and
explicitly says that finite-differentiability continuation was not
established there.  A finite-cell sketch cannot silently fill that gap.

On the local/collar domain, (0.2) is an actual linearized-solution
presymplectic identification.  It is not promoted to a map-level
presymplectomorphism without the $C^1$ estimate in Section 4, and in no case
is it called a nondegenerate symplectomorphism: the complete physical
four-face port/boost kernel remains open.  No quantization is used.

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

4. $x^A$ are marked generator labels transported along the rulings;
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
\quad\hbox{near }X_{\rm in},
\tag{1.8}
$$

$$
\varphi^*x^A=x^A,\qquad
\varphi_*\ell_\pm=\ell_\pm,\qquad
\varphi\cdot s_\pm=s_\pm
\quad\hbox{on }X_{\rm in}.
\tag{1.9}
$$

These transformations may act in the bulk, but they preserve the complete
boundary first jet and all retained markings.  Define

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

The dictionary in calculation 06 is what permits these theorems to act on the
project data.  No source-scope upgrade is inferred from notation alone.

## 3. Germ and full-sheet neighborhood maps

Let $d_*$ be regular data in the sector of calculation 06 and let
$\rho_{\rm germ}d_*$ denote its restriction to the portions of the two
incoming sheets in a corner neighborhood.  Applying $T_{\rm Luk}$ to the
restricted data and then the local Rendall/Luk theorem gives

$$
E_{\rm germ}^{\rm fr}:
\mathcal U_{\rm germ,data}^{\infty}
\longrightarrow
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm germ}).
\tag{3.1}
$$

This is a map of germ data.  It does not, and cannot, recover values of a
full-sheet datum outside $X_{\rm in}\cap\mathcal U_{\rm germ}$.
The smooth data neighborhoods below are shrunk so that the finite list of
norms controlling the local-existence width is uniformly bounded; this fixes
one common germ or collar domain for every datum in the displayed map.

For $S\simeq S^2$, Luk's theorem gives the smooth local/collar statement with
its width controlled by the displayed finite-order norms; his definition of
regular data is nevertheless $C^\infty$.  For a general compact cut,
Cabet--Chru\'sciel--Tagne Wafo and
Chru\'sciel--Tagne Wafo--Gray state the Einstein neighborhood theorem in the
smooth category; their reduced system has finite-Sobolev estimates, but the
authors leave the full Einstein loss bookkeeping to be tracked.  Therefore
the arbitrary-topology construction in this section is authoritative as a
development map between smooth-data solution sets, not as the still-unproved
Banach $C^1$ chart or as a theorem of smooth dependence.

Applying the Cabet--Chru\'sciel--Tagne Wafo neighborhood theorem after
$T_{\rm SH}$ gives, for compact truncated sheets, an L-shaped neighborhood

$$
\mathcal C_{\epsilon_+,\epsilon_-}
=
\big([0,U]\times[0,\epsilon_-]
\ \cup\
[0,\epsilon_+]\times[0,V]\big)\times S,
\tag{3.2}
$$

where the positive widths depend on the data norms and may be unequal.  For
$S\simeq S^2$, Luk supplies the same type of statement in his canonical
double-null gauge.

On a common such neighborhood this defines

$$
E_{\rm col}^{\rm fr}:
\mathcal U_{\rm col,data}^{\infty}
\longrightarrow
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}
(\mathcal C_{\epsilon_+,\epsilon_-}).
\tag{3.2a}
$$

The construction is:

1. apply the smooth dictionary $T_{\rm Luk}$ and the required gauge
   completion;
2. solve the reduced Einstein/symmetric-hyperbolic characteristic problem;
3. propagate the constraints to obtain $\operatorname{Ric}(g)=0$;
4. restore the marked affine factors, labels, and endpoint maps;
5. quotient only by $\operatorname{Diff}_0$.

Restriction and uniqueness give

$$
R_{\rm in}^{\rm germ}\circ E_{\rm germ}^{\rm fr}
=\operatorname{id}_{\mathcal U_{\rm germ,data}^{\infty}},
\qquad
R_{\rm in}^{\rm col}\circ E_{\rm col}^{\rm fr}
=\operatorname{id}_{\mathcal U_{\rm col,data}^{\infty}},
\tag{3.3}
$$

and

$$
E_{\rm germ}^{\rm fr}\circ R_{\rm in}^{\rm germ}
=\operatorname{id},
\qquad
E_{\rm col}^{\rm fr}\circ R_{\rm in}^{\rm col}
=\operatorname{id}
\tag{3.4}
$$

on their framed solution images modulo $\operatorname{Diff}_0$.

## 4. The finite-regularity estimate that is still needed

### 4.1 Working evolution norm

In the Cabet--Chru\'sciel--Tagne Wafo double-null frame, let

$$
F=(e_i{}^\mu,\Gamma_{ijk},\Psi)
\tag{4.1}
$$

denote the tetrad, connection, and null curvature variables in their
equations (5.12)--(5.14).  For a small cell $Q$ define

$$
\begin{aligned}
\|F\|_{\mathcal X^k(Q)}
:={}&
\sup_{(u,v)\in Q}\sum_{j\leq k}
\|\nabla^jF\|_{L^2(S_{u,v})}\\
&+\sum_{j\leq k-1}\left(
\|\nabla^jF\|_{L^2(H_u\cap Q)}
+\|\nabla^jF\|_{L^2(\underline H_v\cap Q)}
\right)\\
&+\sum_{a+b\leq k-2}
\|\partial_u^a\partial_v^bF\|_{L^\infty(Q;H^{k-2-a-b}(S))}.
\end{aligned}
\tag{4.2}
$$

Any equivalent high-order norm in equations (3.77), (3.88)--(3.95) of
arXiv:1406.3009 may be used.  The norm (4.2) is not claimed sharp.

### Proposition 4.1 - uniform cell estimate $\mathbf P_{\rm cell}^{k}$

The missing finite-regularity input is the following uniform statement.  Let
$F_1,F_2$ be two exact framed vacuum solutions on the same small cell,
written in the same double-null frame gauge, and assume

$$
\|F_i\|_{\mathcal X^{k+2}(Q)}\leq M,\qquad
\mathfrak m[F_i;Q]\geq\mu>0,
\tag{4.3}
$$

where $\mathfrak m$ is the minimum hyperbolicity/geometric margin defined in
Section 5.  Then

$$
\boxed{
\|F_1-F_2\|_{\mathcal X^k(Q)}
\leq C(M,\mu,Q)
\|d_1-d_2\|_{\mathcal I^{k+2}(\partial_{\rm in}Q)}.}
\tag{4.4}
$$

In addition, the constants and admissible cell widths must be uniform on the
set (4.3), outgoing characteristic traces must lie in the next incoming data
space without an uncontrolled loss, and the same estimate must hold for the
linearized system and its quadratic remainder.

**Status: conditional.**  Subtracting the symmetric-hyperbolic systems gives

$$
A^\alpha(F_i)\partial_\alpha F_i=G(F_i).
\tag{4.5}
$$

For $W=F_1-F_2$, the coefficient and source differences are written by the
fundamental theorem of calculus along
$F_2+t(F_1-F_2)$.  Thus $W$ solves a linear symmetric-hyperbolic system with
principal coefficients $A^\alpha(F_1)$ and lower-order coefficients bounded
by (4.3).  Commute up to $k$ cut derivatives and the transport derivatives
admitted by (4.2).  The commutators contain at most one top derivative and
are controlled by the Sobolev algebra property and the two spare derivatives
in (4.3).  Applying the characteristic energy identity (2.12), its
high-order form (2.31), and Gronwall is the expected route to (4.4).
Equations (3.78)--(3.82) implement the corresponding contraction estimate for
the source paper's iterative sequence.  They do not, as stated, prove the
full uniform exact-solution, trace/restart, and quadratic-remainder package
above.  Writing those commuted estimates in the Einstein frame variables and
closing their derivative bookkeeping is the missing work; this paragraph is
a reduction, not a proof.

### Proposition 4.2 - $C^1$ consequence of $\mathbf P_{\rm cell}^{k}$

Assume $\mathbf P_{\rm cell}^{k+1}$, including its uniform quadratic
remainder estimate.  Then on a common small cell the framed development map
is $C^1$ from incoming data of order $k+4$ to $\mathcal X^k$, and its
derivative is the unique framed linearized vacuum solution.

**Conditional proof.**  For data $d+th$, set

$$
W_t=\frac{F[d+th]-F[d]}{t}.
\tag{4.6}
$$

The averaged-coefficient equation in $\mathbf P_{\rm cell}^{k+1}$ gives a uniform
$\mathcal X^{k+1}$ bound.  Its limit $W$ solves the differentiated
symmetric-hyperbolic system with characteristic datum $h$.  Constraint
propagation identifies $W$ with a linearized vacuum Einstein solution.

For

$$
\rho_t=F[d+th]-F[d]-tW,
\tag{4.7}
$$

Taylor's formula makes the source quadratic:

$$
\|\operatorname{Src}(\rho_t)\|_{\mathcal X^{k-1}}
\leq C t^2\|h\|_{\mathcal I^{k+4}}^2.
\tag{4.8}
$$

The same energy estimate gives

$$
\|\rho_t\|_{\mathcal X^k}
\leq C t^2\|h\|_{\mathcal I^{k+4}}^2.
\tag{4.9}
$$

Repeating (4.4) for the linearized coefficients proves continuity of
$d\mapsto DE_d$.  Linear symmetric-hyperbolic uniqueness proves uniqueness
of $W$ modulo infinitesimal $\operatorname{Diff}_0$.  The implication is
complete once $\mathbf P_{\rm cell}^{k+1}$ is supplied; the cited
continuous-dependence theorem does not itself supply this Banach $C^1$
package.

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

### 6.1 The one missing PDE proposition

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

### 6.2 Finite-cell reduction

Choose a finite rectangular grid

$$
\mathfrak C_*=\{Q_{ij}\}_{1\leq i\leq I,\,1\leq j\leq J}
\tag{6.6}
$$

whose slightly enlarged cells lie in the buffered background domain.  The
cells are partially ordered by $(i',j')\prec(i,j)$ when
$i'\leq i$, $j'\leq j$, and $(i',j')\neq(i,j)$.  Hence the two past null
faces of $Q_{ij}$ are either part of $X_{\rm in}$ or outgoing faces of
already constructed cells.

If $\mathbf P_{\rm cell}^{k}$ holds uniformly on the set
$(2M_*',\mu_*/2)$, the following finite induction proves
$\mathbf P_{\rm rect}^{s,r}$:

1. solve $Q_{11}$ from the translated characteristic theorem;
2. use the unique restrictions from cells below and to the left as the two
   compatible incoming faces of $Q_{ij}$;
3. apply the uniform cell estimate to keep those faces in the next admissible
   ball and multiply the finitely many Lipschitz constants;
4. use Sobolev embedding and (5.5) to preserve half the background
   nondegeneracy margin;
5. use local and geometric uniqueness on overlaps;
6. iterate the linearized and quadratic-remainder estimates through the same
   finite grid.

A possible deliberately nonsharp bookkeeping choice is
$s\geq r+4IJ+12$, but this inequality is **not a theorem** until the trace,
gauge-completion, and commutator losses in
$\mathbf P_{\rm cell}^{k}$ have been written down.  Thus the finite grid
reduces the problem to one uniform estimate; it does not prove that estimate.

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

## 7. Actual solution-space presymplectic theorem

For a development domain $\mathcal U$, let
$X(\mathcal U):=X_{\rm in}\cap\mathcal U$.  Let
$\Omega_{\rm EH}^{\rm fr}[X(\mathcal U)]$ be the Einstein--Hilbert covariant
presymplectic form evaluated there with exactly the HF bulk-plus-cut
representative and corner incidences fixed in calculations 00--05.  Let
$\Omega_{\rm char}[X(\mathcal U)]$ be the corresponding retained
characteristic form: the coupled Raychaudhuri spin-$0+2$ block, the shared
area/normal block, the endpoint-map/twist block, and the declared matched
ports, all restricted to the same cross.  Below the argument is suppressed
when the cross is clear.

### Theorem 7.1 - local/collar linearized solution-space identity

Let $\mathcal U_{\rm loc}$ be either a common germ or a common collar supplied
by Section 3, and put
$X_{\rm loc}:=X_{\rm in}\cap\mathcal U_{\rm loc}$.  The linearized
characteristic problem defines a bijection

$$
L_{\rm loc}:T_d\mathcal D_{\rm char}^{\infty,{\rm fr}}(X_{\rm loc})
\longrightarrow
T^{\rm lin}_{E_{\rm loc}(d)}
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm loc}),
\tag{7.1}
$$

where both sides are quotiented only by infinitesimal
$\operatorname{Diff}_0$ and $T^{\rm lin}$ denotes the framed linearized
vacuum solution space.  On all such pairs,

$$
\boxed{
L_{\rm loc}^{*}\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}.}
\tag{7.2}
$$

If a smooth parameter family of nonlinear developments shares that
local/collar domain **and is differentiable in the chosen solution
topology**, then $L_{\rm loc}=DE_{\rm loc}^{\rm fr}$ along that family and

$$
\boxed{
(E_{\rm loc}^{\rm fr})^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}.}
\tag{7.3}
$$

**Proof.**  The linearized Cabet/Rendall system is a linear characteristic
symmetric-hyperbolic problem.  Its energy identity gives existence and
uniqueness from the incoming variation on a possibly smaller common
germ/collar.  Constraint propagation makes its solution a linearized vacuum
metric, and geometric uniqueness removes precisely the infinitesimal
$\operatorname{Diff}_0$ ambiguity.  Restriction is the inverse of
$L_{\rm loc}$.

Calculations 02 and 05 pull the selected EH potential and its field-space
curl through the Raychaudhuri and Damour reconstructions for every admissible
characteristic variation.  The preceding paragraph identifies those
variations with framed linearized vacuum solutions, and every such solution
restricts uniquely back to one of them.  Substitution proves (7.2).  The HF
cut terms, endpoint-map terms, and representative choice are unchanged.

Thus (7.2) is an actual identity on the framed linearized solution space on
the domains proved by the source CIVP results.  Equation (7.3) is a genuine
map pullback only under its displayed differentiability hypothesis.  The
source theorems audited here do not supply a finite-Sobolev $C^1$ theorem,
and no nondegeneracy follows.

### Corollary 7.2 - fixed rectangle, conditional

If $\mathbf P_{\rm rect}^{s,r}$ holds, then $L_{U,V}=DE_{U,V}^{\rm fr}$
on $\mathcal R_{U,V}$ and

$$
\boxed{
(E_{U,V}^{\rm fr})^*\Omega_{\rm EH}^{\rm fr}
=\Omega_{\rm char}.}
\tag{7.4}
$$

Thus the fixed-rectangle map is conditionally a local
presymplectomorphism, still not a nondegenerate symplectomorphism.

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

The dictionary, restriction, and local/collar development maps are
equivariant.  Therefore, on a local slice where the action is regular, the
linearized correspondence

$$
\boxed{
\mathcal D_{\rm char}^{\infty,{\rm fr}}//_0\mathcal G_{\rm rel}
\ \longleftrightarrow\
\operatorname{Sol}_{\rm vac}^{\infty,{\rm fr}}(\mathcal U_{\rm loc})
//_0\mathcal G_{\rm rel}}
\tag{8.3}
$$

preserves the reduced linearized presymplectic forms on the proved
germ/collar domain.
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
solution charts; equivariance of the dictionary then preserves (7.2), or
(7.4) conditionally on the fixed rectangle.
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
normalization, generator labels, and endpoint markings define framed output
data by the same dictionary after fixing the output incidence.  An intrinsic
chart based at the common output corner $S_{UV}$ is

$$
\lambda_+^{\rm out}=U-u,\qquad
\lambda_-^{\rm out}=V-v,\qquad
\ell_+^{\rm out}=-\ell_+,\qquad
\ell_-^{\rm out}=-\ell_-.
\tag{9.1a}
$$

Thus $\ell_+^{\rm out}\!\cdot\ell_-^{\rm out}=-e^{-m}$, while the output
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

### 9.2 Conservation

For framed linearized solutions,

$$
d\boldsymbol\omega_{\rm EH}
(g;\delta_1g,\delta_2g)=0.
\tag{9.4}
$$

If $S$ is closed and the same HF cut representative is used on all four
faces, Stokes' theorem gives

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

## 11. Final seven-part verdict

1. **Yes, locally in the smooth category.**  $E_{\rm germ}^{\rm fr}$ and
   $E_{\rm col}^{\rm fr}$ are rigorously defined after fixing the double-null
   frame, labels, endpoint markings, and proper bulk quotient.  The notation
   $E_{U,V}^{\rm fr}$ on the prescribed full rectangle is conditional.
2. The framed map is bijective onto its image for restricted smooth germ data
   and for the smooth full-sheet neighborhood/long-by-thin collars supplied
   by the cited theorems.  A corner germ does not recover the omitted part of
   a full-sheet datum.  Entire-rectangle bijectivity is conditional on
   $\mathbf P_{\rm rect}^{s,r}$.
3. Entire-rectangle existence is **not proved** here.  The exact missing
   background-stability/continuation statement is (6.1)--(6.5); arbitrary
   smooth data on an arbitrary rectangle are not claimed.
4. The linearized characteristic map on the proved local/collar domain gives
   the unique framed linearized Einstein solution.  Identifying it with
   $DE$ on an entire Banach neighborhood requires the still-conditional
   $C^1:\mathcal D^s\to\mathcal X^r$ estimate, locally from
   $\mathbf P_{\rm cell}^{k}$ and on the rectangle from
   $\mathbf P_{\rm rect}^{s,r}$.
5. Equation (7.2) is proved on the actual framed linearized local/collar
   solution space with the selected HF representative.  A literal nonlinear
   pullback (7.3) is proved only for families satisfying its differentiability
   hypothesis; a Banach-neighborhood pullback, and in particular the
   full-rectangle identity (7.4), is conditional on the corresponding
   $C^1$ proposition.
6. Diagonal generator relabelling gives a reduced presymplectic
   identification at the linearized level on the proved domain.  A
   Banach local reduced presymplectomorphism still needs the $C^1$ estimate,
   and no nondegenerate reduced symplectomorphism is proved; the complete
   boost/wall kernel remains conditional on $\mathbf P_{\rm red}$.
7. The single remaining PDE obstacle to the strongest framed
   fixed-rectangle development theorem is
   $\mathbf P_{\rm rect}^{s,r}$: a finite-regularity, background-uniform
   continuation/stability estimate together with the trace-regular $C^1$
   chart and inverse.  After that PDE proposition is proved,
   $\mathbf P_{\rm red}$ is the separate action/functional-kernel obstacle to
   upgrading the result to a nondegenerate physical reduced
   symplectomorphism.
