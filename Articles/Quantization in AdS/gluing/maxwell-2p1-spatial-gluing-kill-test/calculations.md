# Maxwell 2+1: spatial gluing calculations

## 0. Categories fixed before the comparison

**Re-derived here.** This is classical compact $U(1)$ Maxwell theory, with no matter, on $I\times[-L,L]\times S^1_R$, $I=[t_-,t_+]$. Set $C=2\pi R$, $s\sim s+C$, signature $(-,+,+)$, and use the real convention $A\mapsto A+d\lambda$, $g=e^{i\lambda}$. The physical walls have $A_t=A_s=0$ and fixed frames. Proper transformations equal $1$ on both walls; they are not required to be $1$ on the initial/final Cauchy surfaces. All based large components are retained. The bundle and relative wall trivialization are those of the original benchmark. We work in $h=1$; a reachable fixed $h=e^{i\varphi}$ is handled with a periodic real lift and an explicitly recorded regional frame change. Nonzero winding of $h$ is outside this relative sector.

Fix any finite symmetric angular set $|\ell|\le N$. Coefficients are $C^\infty$ in $(t,x)$ up to the two regional closures. Radial functions are **not truncated**. Data and histories obey every initial-boundary compatibility identity below. The union over finite $N$ is the finite-Fourier smooth core; no topology is defined by assembly and no energy completion is attempted. Gauge maps preserving this core have finite-Fourier *logarithmic derivatives/lifts*, not necessarily finite-Fourier $e^{i\lambda}$. The full smooth gauge group is also used for the independent extension-image calculation.

Three different objects must remain distinct:

1. $\operatorname{Sol}_{\rm sm}$: independently defined, globally smooth finite-Fourier solutions in the fixed global wall frame, modulo **globally smooth** proper maps $\mathcal G_{\rm sm}^{\rm prop}$.
2. $\operatorname{Sol}_{\rm pw}$: locally bounded piecewise smooth potentials in that same frame, with $F=dA$ locally square-integrable, the original Maxwell equations interpreted as distributions, and no interface action. The same smooth proper group acts here. This is an independent distributional diagnostic class, not the image definition of a target space.
3. Regional Coulomb realizations with varying admissible histories. Their literal common-frame assembly is denoted $\operatorname{Asm}_{\rm raw}$. A separately constructed **Coulomb-restored assembly** $\operatorname{Asm}_{\rm C}$ appears in Section 5. It includes regional based re-fixing and is not identified with $\operatorname{Asm}_{\rm raw}$ modulo smooth global gauge.

This distinction is decisive: a continuous piecewise smooth gauge function with a normal derivative jump is not a smooth global gauge transformation. Section 9 specifies the fourth object, intrinsic geometric assembly on regional based classes with cut arrows, and proves its agreement with restoration at orbit level. The physical target is only $\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$; $\operatorname{Sol}_{\rm pw}$ and its smooth-gauge comparison remain diagnostics. We do not enlarge the gauge group to make either comparison onto.

## 1. B1: action, two traces, and a mixed realization

Use $y_1=x+L$, $y_2=L-x$, both increasing toward the cut. Thus on the right $A_x=-A_{y,2}$, $E_x=-E_{y,2}$, and $F_{xs}=-B_2$. The action and original equations are

$$\begin{align}
S_i&={1\over2e^2}\int_I dt\int_0^Ldy\int_0^Cds\,(E_y^2+E_s^2-B^2),\\
E_y&=\dot A_y-\partial_yA_t,& E_s&=\dot A_s-\partial_sA_t,& B&=\partial_yA_s-\partial_sA_y,\\
\partial_yE_y+\partial_sE_s&=0,& \dot E_y+\partial_sB&=0,& \dot E_s-\partial_yB&=0,\\
\dot B-\partial_yE_s+\partial_sE_y&=0.
\end{align}$$

The last identity is Bianchi. Variation of the **original** action, before gauge fixing, gives

$$\begin{align}
\Theta_i&=e^{-2}\int_{\Sigma_i}(E_y\delta A_y+E_s\delta A_s)\,dy\,ds,\\
\delta S_i|_\Gamma&=-e^{-2}\int_I dt\int_Sds\,(E_y\delta\alpha+B\delta q),
& (\alpha,q)&=(A_t,A_s)|_\Gamma.
\end{align}$$

Hence an original variational trace, with the smooth compatibility restrictions understood, is

$$\begin{align}
\mathcal Z_\Gamma^{\rm inv}\ni z
&=(\alpha,q;\Pi^t,\Pi^s),& (\Pi^t,\Pi^s)&=-e^{-2}(E_y,B).
\end{align}$$

The displayed coefficients use $dt\,ds$; alternatively absorb this measure into the momenta. The superscript means original invariant **action**, not invariant connection coordinates. There is no spatial boundary of $S$.

Choose regional Coulomb gauge $c=\partial_yA_y+\partial_sA_s=0$, while retaining $A_t$. Gauss then gives the elliptic equation $\Delta A_t=0$. Prescribe $A_t(0)=0$, $A_t(L)=\alpha$ and $A_s(0)=0$, $A_s(L)=q$. This is a mixed elliptic/evolution realization, not a claimed local raw-potential hyperbolic IBVP. Temporal/Coulomb is its subfamily $\alpha=0$; nonzero $\alpha$ must not be called temporal gauge.

An explicit enlarged trace is

$$\begin{align}
\widehat z&=(\alpha,q,r;u,v,w;E_y,E_s;\mathcal J),\\
r&=A_y|_\Gamma,&u&=\partial_yA_y|_\Gamma,&v&=\partial_yA_s|_\Gamma,&w&=\partial_yA_t|_\Gamma,\\
\rho^\chi(\widehat z)&=(\alpha,q;-e^{-2}E_y,-e^{-2}(v-\partial_sr)),\\
P_{\rm in}^\chi(\widehat z)&=(\alpha,q).
\end{align}$$

$\mathcal J$ records higher one-sided jets for smooth compatibility, with $u+\partial_sq=0$, $E_y=\dot r-w$, $E_s=\dot q-\partial_s\alpha$, the elliptic equation, and all differentiated original equations imposed. These are outputs/constraints, not independent inputs or extra symplectic pairs. There are no separate gauge drivers in this realization. Here $P_{\rm in}$ does factor through $\rho$; the general formalism allows but does not require that. The adjective “input” denotes mixed boundary input, not a characteristic projection.

### Explicit existence domain

Let $e_\ell(s)=e^{ip_\ell s}/\sqrt C$, $p_\ell=\ell/R$. For $p\ne0$ set $k=|p|$ and

$$\begin{align}
H_k(y)&={\sinh(ky)\over\sinh(kL)},&
A_{t,\ell}&=H_k\alpha_\ell e_\ell,\\
A_{y,\ell}&=ip v_\ell e_\ell,& A_{s,\ell}&=-v_\ell'e_\ell,\\
D_p&=-\partial_y^2+p^2,&
\ddot v_\ell+D_pv_\ell&={H_k'\over ip}\dot\alpha_\ell,\\
v_\ell'(0)&=0,&-v_\ell'(L)&=q_\ell.
\end{align}$$

This parametrizes every divergence-free nonzero angular component: first take $v=A_y/(ip)$, then Coulomb determines $A_s$. The forcing follows from $\ddot{\boldsymbol A}-\Delta\boldsymbol A=\nabla\dot A_t$; it is not optional when $\alpha\ne0$.

For angular averages write $\bar\alpha=C^{-1}\int\alpha ds$ and

$$\begin{align}
A_{t,0}&={y\over L}\bar\alpha,& A_{y,0}&={a(t)\over L},& A_{s,0}&={w_0(t,y)\over\sqrt C},\\
\ddot a&=\dot{\bar\alpha},& E_{y,0}&={\dot a-\bar\alpha\over L},\\
\ddot w_0-w_0''&=0,&w_0(0)&=0,&w_0(L)&=q_0.
\end{align}$$

In particular $\nu=C(\dot a-\bar\alpha)/(e^2L)$ is constant. The normal coordinate is not removed by imposing Coulomb gauge.

The domain consists of smooth $\alpha,q$ and initial $(v_0,v_1,w_0,w_1,a,\dot a)$ with the following **independent** compatibility prescription. Recursively form $V_0=v_0$, $V_1=v_1$ and

$$\begin{align}
V_{m+2}=-D_pV_m+{H_k'\over ip}\alpha_\ell^{(m+1)}(t_-).
\end{align}$$

Require $V_m'(0)=0$, $-V_m'(L)=q_\ell^{(m)}(t_-)$ for every $m\ge0$. For the zero-mode wave use $W_{m+2}=W_m''$, $W_m(0)=0$, $W_m(L)=q_0^{(m)}(t_-)$. Reality couples $\ell$ and $-\ell$. The final jets are read from the solution, not separately prescribed.

**Core existence/uniqueness argument.** Subtract $-y^2q_\ell/(2L)$ from $v_\ell$ and $yq_0/L$ from $w_0$. The remainders solve homogeneous Neumann Klein--Gordon and homogeneous Dirichlet wave equations with explicitly smooth forcing. Their self-adjoint one-dimensional eigenfunction expansions give the usual homogeneous evolution plus Duhamel integral. The lifted energy obeys $|\dot{\mathscr E}|\le\|\dot u\|\|f\|$; for nonzero $p$, $D_p>0$, and the Dirichlet zero-angular wave has its Poincare bound. Commuting time derivatives and using the displayed compatibility identities gives smoothness up to the corners; the equation recovers the spatial derivatives. Equivalently one can subtract finite higher-order boundary-jet lifts before each graph-norm estimate. Zero normal evolution is the displayed ODE. Finite angular support makes this a finite collection of such problems. This proves the declared smooth mixed realization, without a radial cutoff or a general Sobolev trace theorem.

Residual Coulomb transformations are harmonic $\Delta\lambda_i=0$, with $e^{i\lambda_i(0)}=1$. In the identity lift, $\lambda_i=Hf_i$, where $H$ includes $H_0=y/L$. They act by

$$\begin{align}
(\alpha_i,q_i,r_i)&\mapsto(\alpha_i+\dot f_i,q_i+\partial_sf_i,r_i+Tf_i),\\
T_\ell&=|p_\ell|\coth(|p_\ell|L)\quad(\ell\ne0),& T_0&=1/L.
\end{align}$$

All jets transform by differentiation. Thus the solution-induced initial-boundary domain is preserved **between** history fibers. The temporal subfamily permits only time-independent residuals. Based residuals have $\lambda_i=2\pi m_i y_i/L$, $m_i\in\mathbb Z$; the infinitesimal based harmonic residual is zero. These disconnected identifications remain relevant.

## 2. B2: direct distributional patching

Write $[f]=f_2|_{x=0^+}-f_1|_{x=0^-}$ in the common $x$ frame and $A=A_1+H(x)(A_2-A_1)$. Set $J_t=[A_t]$, $J_s=[A_s]$. Direct exterior differentiation gives

$$\begin{align}
F=dA&=F_{\rm pw}+\delta(x)\,dx\wedge(J_tdt+J_sds),\\
E_x&=E_{x,\rm pw}-J_t\delta(x),& B_x:=F_{xs}&=B_{x,\rm pw}+J_s\delta(x).
\end{align}$$

$[A_x]$ does not occur in singular curvature: $dx\wedge dx=0$. The three Euler expressions, without the common factor $e^{-2}$, have singular parts

$$\begin{align}
\partial_\mu F^{\mu t}|_{\rm sing}&=[E_x]\delta-J_t\delta',\\
\partial_\mu F^{\mu x}|_{\rm sing}&=(\partial_tJ_t-\partial_sJ_s)\delta,\\
\partial_\mu F^{\mu s}|_{\rm sing}&=[B_x]\delta+J_s\delta'.
\end{align}$$

Thus vanishing of all interface-supported Maxwell sources, including double layers, first forces $J_t=J_s=0$ and then $[E_x]=[B_x]=0$. Conversely these four equalities remove every singular Euler term. In regional orientations,

$$\begin{align}
\boxed{[A_t]=[A_s]=0,\quad E_{y,1}+E_{y,2}=0,\quad B_1+B_2=0
\quad\Longleftrightarrow\quad\text{no distributional Maxwell interface source}.}
\end{align}$$

This is a proof on the piecewise smooth core, with the original equations holding on each side. The singular-curvature formula also diagnoses off-domain candidates; a delta curvature is never squared inside the Maxwell action. On the admissible $F\in L^2_{\rm loc}$ domain descent is already necessary. The proof is not inferred from a connected mode basis. If one defines “source” to include only a $\delta$ current while permitting singular curvature/double layers, that weaker wording is insufficient.

**Converse test space.** Use arbitrary original test one-forms compactly supported in the interior of $I$, with arbitrary value and normal derivative at $x=0$, e.g. $\chi(x)\psi(t,s)$ with independently chosen $\chi(0),\chi'(0)$. Choose each retained angular Fourier test independently. The $t$ and $s$ components must be independent; testing only temporal-gauge variations would lose one equation. This separates the $\delta$ and $\delta'$ coefficients. At lower regularity the corresponding trace/right-inverse statement would need proof; it is not supplied by this argument.

Bianchi is consistent for the actual distributional connection: $d^2A=0$, with $[E_s]=\partial_tJ_s-\partial_sJ_t$ canceling the singular-curvature contribution. After genuine descent, $[E_s]=0$ and regional Bianchi identities give no magnetic defect. Matching selected curvature components without an underlying descended connection does not give this result. A fixed reachable $h$ gives the same calculation after subtracting $d\widetilde\varphi$ from the region-2 potential in a declared collar; full transmission is Abelian invariant.

Known from literature: the general Heaviside/distributional method for electromagnetic junctions is described by [Itin, *Covariant jump conditions in electromagnetism*](https://arxiv.org/abs/1403.7700). The potential-level double-layer calculation and the present $2+1$ boundary/gauge conclusions are re-derived above; that reference is not evidence for B3--B6.

## 3. B3: physical patching and global Coulomb are different

For two regional Coulomb representatives satisfying physical descent,

$$\begin{align}
\operatorname{div}{\boldsymbol A}_{\rm raw}=J\delta(x),
\qquad J=[A_x]=-A_{y,2}(L)-A_{y,1}(L).
\end{align}$$

Thus direct membership in the global Coulomb slice requires $J=0$ in addition to physical sewing. A smooth global gauge transformation has a smooth Laplacian and cannot cancel a nonzero delta here. A directly patching harmonic residual would have to be globally smooth harmonic and hence cannot change $J$ either.

There is nevertheless an explicit **regional** harmonic correction. Give both regional lifts the same periodic cut value $f$, zero at the outer wall, and transform by $\lambda_i=Hf$. Then

$$\begin{align}
J'&=J-2Tf,&\boxed{f={1\over2}T^{-1}J}.
\end{align}$$

Every eigenvalue of $T$ is positive, including $T_0=1/L$. There is no zero-mode solvability condition. The result is finite-Fourier whenever $J$ is. Connection descent and full transmission remain valid. Since $A_t=H\alpha$ on both sides and electric transmission holds,

$$\begin{align}
\dot J=-2T\alpha,\qquad \dot f=-\alpha,
\end{align}$$

so the corrected representatives also have $A_t'=0$ throughout both regions. For originally temporal representatives $J,f$ are time-independent.

**Explicit counterexample.** Let $\lambda_\beta=\beta(1-|x|/L)$, with constant real $\beta\ne0$, and set $A=d\lambda_\beta$. Regionally $A_{y,1}=A_{y,2}=\beta/L$, $A_t=A_s=0$. Both Coulomb conditions, wall conditions, descent, Gauss and full transmission hold; $E=B=0$. But $J=-2\beta/L$ and $\operatorname{div}A=-2\beta\delta(x)/L$. This is a physical weak solution outside the raw global Coulomb slice. No smooth proper map takes this raw potential to zero. Its correcting lift has a normal derivative jump and belongs to a different regularity category.

The harmonic correction is controlled by interface frame data. Global versus regional Dirichlet Poisson fixing parameters solve the same inhomogeneous equation on each region, so their difference is $H$ applied to their cut-value difference (plus the declared integral lift constants). This proves the harmonic-extension comparison, but does not assert that the two regional corrections themselves are restrictions of a smooth global map.

Angular winding of an active cut map cannot be extended through the fixed wall, as proved next. It is not a zero eigenvalue of $T$. The radial Wilson coordinate $a=\int_{-L}^L A_x dx$ in the angular zero sector survives the common correction, since its two endpoint contributions cancel. Based large maps shift $a$ by $2\pi\mathbb Z$; they do not remove its electric conjugate. A constant angular holonomy compatible with $A_s=0$ on both walls is not a new free flat mode in this sector.

## 4. B4: extension image and two regional arrow constructions

### Smooth proper extension image

Every $g:[-L,L]\times S^1\to U(1)$ with $g|_{x=\pm L}=1$ restricts on each radial circle to a map homotopic to the wall identity. Therefore $g|_S$ has winding zero. Conversely every smooth zero-winding $k=e^{if(s)}$ has a smooth periodic real lift. If $b(x)$ is smooth, equals $1$ near $0$ and $0$ near both walls, then

$$\begin{align}
g(x,s)=e^{ib(x)f(s)}
\end{align}$$

is a smooth proper extension. Consequently

$$\begin{align}
\boxed{\mathcal G_S^{\rm ext}=\operatorname{Map}_0(S^1,U(1)).}
\end{align}$$

The finite-Fourier-preserving subgroup uses finite-Fourier real lifts; it is narrower than all smooth cut maps. A group-valued exponential need not have finite Fourier support. On the slab, with unrestricted Cauchy endpoint actions as declared here, the same construction uses $f(t,s)$. A smooth logarithm exists on $I\times S^1$ precisely when angular winding vanishes. Requiring identity at $t_\pm$ instead would shrink the image and is not imposed here.

### Directly patching arrows for raw assembly

Objects are physically matched regional Coulomb realizations. An arrow is a pair of harmonic regional maps $e^{i\lambda_i}$, wall identity, with equal cut values, all normal/mixed jets matching in common $x$ coordinates, and $A_i'=A_i+d\lambda_i$. These are **actual restrictions** of one smooth proper map. Gluing the maps proves that every arrow gives a global smooth equivalence of raw assemblies.

Conversely, if two raw assemblies are related by a smooth proper map, their regional Coulomb conditions imply $\Delta\lambda=0$ in both interiors, hence globally. Since its angular winding is zero, normalize a global lift by $\lambda(-L)=0$, $\lambda(L)=2\pi n$. Dirichlet harmonic uniqueness gives

$$\begin{align}
\lambda_n(x)={\pi n\over L}(x+L),\qquad n\in\mathbb Z.
\end{align}$$

The integer cannot change in time. These arrows capture **every** smooth proper equivalence between the raw assemblies. There are no proper stabilizers: $d\lambda=0$ and wall identity imply $g=1$. Their cut values are only $(-1)^n$, although the unrestricted extension image is all $\operatorname{Map}_0$. The missing cut actions require leaving the regional slice and re-fixing it.

Based residuals are $\lambda_i=2\pi m_i y_i/L$. They patch smoothly only if $m_1=-m_2$; this is the even-$n$ subgroup of the preceding arrows. Thus direct smooth residual arrows have the sequence $2\mathbb Z\to\mathbb Z\to\mathbb Z_2$. Quotienting by the entire independent based product before raw assembly is **not** justified: incompatible jets need not define any smooth global proper map. The constant cusp example exhibits the analogous infinitesimal mismatch for nonbased residuals. No physical outer transformations are included.

### Arrows including based re-fixing: a distinct positive construction

Retain instead harmonic pairs with equal group-valued cut values, but do not demand that the harmonic pair itself patch smoothly. Choose lifts

$$\begin{align}
\lambda_i=H(f+2\pi m_i),\qquad m_i\in\mathbb Z.
\end{align}$$

Every common cut value has a smooth bulk lift $b(x)f(s)$; the difference between its restrictions and these regional harmonic maps is based on each region. Thus this operation is **smooth bulk action followed by regional based re-fixing**, not direct smooth action on the raw assembly. Composition is addition of lifts modulo the irrelevant integral lift presentations; endpoints remain in the mixed domain of Section 1. With variable histories the same argument holds for smooth $f(t,s)$.

This second arrow construction maps naturally to the orbit groupoid of $\operatorname{Asm}_{\rm C}$ below, not to that of $\operatorname{Asm}_{\rm raw}$. Conflating those two maps would incorrectly erase the raw cusp obstruction. Quotienting by based regional maps here includes their disconnected components; their net residual action on the restored global field is $n=m_1-m_2$, not an outer charge.

## 5. B5: restriction, raw assembly, and restored assembly

### Independent restriction from smooth global solutions

Given a smooth global solution, use $\lambda_T(t)=-\int_{t_-}^t A_t(\tau)d\tau$ to reach temporal gauge. It vanishes at the physical walls. Gauss makes $\operatorname{div}\boldsymbol A$ independent of time. Solve the global Dirichlet problem

$$\begin{align}
\Delta\lambda_C=-\operatorname{div}\boldsymbol A(t_-),\qquad\lambda_C|_{x=\pm L}=0.
\end{align}$$

Each angular coefficient solves an invertible regular Dirichlet ODE, giving a smooth finite-Fourier lift. Its time independence preserves temporal gauge. Restrictions now lie in Section 1's regional domains, with $\alpha=0$, the actual $q$, and automatically compatible initial jets. They satisfy $J=0$ and full physical sewing. This proves restriction coverage of $\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$; no connected-mode completeness was used.

In a fixed reachable transition chart, keep $h=r_1^{-1}h_0r_2$ or record the passive presentation change. In the common chart the construction above uses one global proper fixing and $r_i=1$, so $h=h_0=1$. Arbitrary independent regional fixings are not substituted without this check.

### Raw reconstruction

Every matched regional realization has a literal assembly in $\operatorname{Sol}_{\rm pw}$ by Section 2. It need not lie in $\operatorname{Sol}_{\rm sm}$ or in a smooth proper orbit intersecting it: the cusp is a counterexample. Thus the raw restriction/assembly comparison gives

$$\begin{align}
\operatorname{Asm}_{\rm raw}\circ\operatorname{Res}\sim\operatorname{id}
\quad\text{on smooth global orbits},
\end{align}$$

but not a two-sided onto theorem with smooth global target and arbitrary physically matched regional objects. On the larger piecewise target even restriction to regional Coulomb can fail if equivalence is required to be smooth global equivalence: take a static pure gauge $A=d\psi$ with $\psi=0$ for $x\le0$ and $\psi=x^2(L-x)^2$ for $x\ge0$. Its divergence has a jump, so no smooth $\Delta\lambda$ cancels it in both regional interiors. This is independent of the source-free distributional patching result.

### Constructive restored assembly and its exact, narrower result

Define $f=\frac12T^{-1}J$ from the *regional traces*, transform both sides by $dHf$, and join the resulting potentials. This defines $\operatorname{Asm}_{\rm C}$ independently of a global inverse or topology. It is the re-fixing construction of Section 4, not a claimed smooth gauge transform of the original raw piecewise field.

The result is globally smooth. Indeed descent and transmission give continuity of all $E_x,E_s,B_x$. Their regional first-order equations determine normal derivatives:

$$\begin{align}
\partial_xE_x&=-\partial_sE_s,&\partial_xB_x&=\partial_tE_s,&
\partial_xE_s&=\partial_tB_x+\partial_sE_x.
\end{align}$$

Repeated differentiation proves matching of every normal jet of $F$. The correction gives $A_t'=0$, $[A_x']=0$, $[A_s']=0$ and Coulomb. Now

$$\begin{align}
\partial_xA_x'=-\partial_sA_s',\qquad
\partial_xA_s'=B_x+\partial_sA_x'
\end{align}$$

proves smoothness of every potential jet inductively. This is a transmission regularity argument on the smooth core, not a PDE smoothing claim at energy regularity.

For the re-fixing arrow $\lambda_i=H(f_0+2\pi m_i)$, the correction changes by $-f_0-\pi(m_1+m_2)$. After restoration the net change is precisely the global harmonic proper map $\lambda_n$, $n=m_1-m_2$. Hence every re-fixing arrow gives a proper equivalence of restored assemblies. Conversely, equivalent restored assemblies differ by some $\lambda_n$ by global harmonic uniqueness. Undoing their explicitly known corrections expresses the difference of the original regional fields as harmonic $\lambda_i$ with equal cut phases. Thus every global equivalence is captured, and proper stabilizers remain trivial. This is a substantive regional-arrow proof, not a definition of arrows by orbit equality.

Restriction and restoration are inverse on these equivalence classes: restricting a global Coulomb field has $J=0$ so restoration does nothing; restoring an arbitrary object and restricting it yields the original object shifted by its common $Hf$ arrow. Therefore

$$\begin{align}
\mathcal C_{\rm phys}^{\chi}/\{\text{smooth lift + regional based re-fixing arrows}\}
\simeq\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}
\end{align}$$

as sets of solution orbits on this slab. This proves an **explicit restored realization**, not the false raw smooth-orbit equivalence. It preserves the chosen smooth global gauge group and does not put a final topology on its image. Section 9 independently constructs a specific geometric collar assembly and proves its choice independence and agreement with this construction. An unspecified general-theory assembly still has no such theorem.

## 6. B6: original CPS and its kernel

All forms below are evaluated on differentiable families of admissible solutions with histories allowed to vary. Do not replace them by the fixed-$\alpha,q$ oscillator forms.

For fixed $h=1$ and closed $S$, additivity of the Cauchy integrals gives exactly

$$\begin{align}
\operatorname{Asm}_{\rm raw}^*\Omega_{\rm pw}
&=(\Omega_1+\Omega_2)|_{\mathcal C_{\rm phys}^{\chi}},
&\Omega_i&=e^{-2}\int_{\Sigma_i}\delta E^j\wedge\delta A_j.
\end{align}$$

At the level of original currents this is simply integration over disjoint interiors, with no cut-supported measure in the Cauchy potential. Physical outer flux vanishes because $\delta A_t=\delta A_s=0$ there; full cut transmission and descent cancel the two internal fluxes. The summed form is therefore conserved even though the individual variable-history forms need not be.

For variable $h=e^{i\varphi}$ in a fixed reachable sector, re-express region 2 by $A_2-d\widetilde\varphi$, with zero outer lift. Spatial integration by parts gives the off-Gauss difference

$$\begin{align}
-e^{-2}\int_{\Sigma_2}E_2^j\partial_j\delta\widetilde\varphi
=-e^{-2}\int_S E_{y,2}\delta\varphi
+e^{-2}\int_{\Sigma_2}(\partial_jE_2^j)\delta\widetilde\varphi.
\end{align}$$

On original Gauss solutions the canonical corner completion is therefore

$$\begin{align}
\Theta_{\rm corner}^h&=-e^{-2}\int_SE_{y,2}\delta\varphi,\\
\Omega_{\rm corner}^h&=-e^{-2}\int_S\delta E_{y,2}\wedge\delta\varphi.
\end{align}$$

The full worldtube justification additionally uses the normal Euler equation as in formalism Section 4. Fixed $h$ sets $\delta\varphi=0$, so this corner term is zero; there is no $\partial S$ term here. Passive re-presentation carries no physical charge.

For restoration by the common field-dependent $f$, the difference of Cauchy potentials is

$$\begin{align}
e^{-2}\sum_i\int_{\Sigma_i}E_i^j\partial_j\delta(Hf)
=e^{-2}\int_S(E_{y,1}+E_{y,2})\delta f=0,
\end{align}$$

using regional Gauss, wall identity and transmission. Thus the **restored** map also obeys

$$\begin{align}
\boxed{\operatorname{Asm}_{\rm C}^*\Omega_{\rm sm}
=(\Omega_1+\Omega_2+\Omega_{\rm corner}^h)|_{\mathcal C_{h,\rm phys}^{\chi}}.}
\end{align}$$

There is no added oscillator and no missing history tangent.

### Kernel distinctions

An infinitesimal smooth proper global transformation, when represented by a tangent arrow, is null by the original Gauss identity and the zero wall parameter. Disconnected large maps are equivalences, not kernel vectors.

The raw matched form has **additional null directions relative to directly patching smooth residual arrows**: any common regional $\delta A_i=dHf$ has $\delta E_i=0$ and

$$\begin{align}
\iota_{X_f}(\Omega_1+\Omega_2)
=-e^{-2}\int_Sf\,\delta(E_{y,1}+E_{y,2})=0.
\end{align}$$

For generic $f$ this does not patch into a smooth global parameter. The $f=\beta$ cusp is an explicit extra degeneracy. Therefore kernel equality with **raw smooth proper directions** is false, not merely unchecked.

For the restored construction these same directions are exactly the invisible re-fixing fibers. On the independent smooth global temporal/Coulomb Cauchy core, configurations and velocities belong to the same divergence-free wall-compatible test class. If $(a,e)$ pairs to zero with every tangent, testing with $(0,a)$ and $(e,0)$ gives $\|a\|^2=\|e\|^2=0$ (use its fully compatible smooth subcore). The radial Wilson/electric pair is included in these tests. This proves nondegeneracy on that slice; only discrete proper copies remain. Equivalently the original smooth constrained form has the proper infinitesimal gauge kernel before choosing the slice.

Restoration is linear on local lift coordinates and has a right inverse given by restriction of smooth Coulomb solutions. Consequently its differential is onto this Cauchy core. The displayed pullback equality then implies that its kernel is exactly the infinitesimal common-harmonic re-fixing fiber, with no additional continuous degeneracy in this declared sector. This is a nondegenerate-mod-arrows statement for the explicit restored core, not a smooth Fréchet quotient theorem, a global result in other bundle sectors, or a proof for raw weak solutions modulo smooth gauge.

## 7. B7: connected-mode cross-check after the structural calculation

Every finite linear combination of the original connected modes belongs to $\operatorname{Sol}_{\rm sm}$ and has $J=0$. Restriction and either assembly then agree. The nonzero angular master has $v_1(x+L)=v(x)$, $v_2(L-x)=-v(x)$, preserving the original orientation. The two radial branches remain $\cos(kL)=0$ with $B_1=B_2$, and $\sin(kL)=0$ with $B_1=-B_2$, including $k=0$ only for the latter nonzero-angular sector.

The benchmark gives

$$\begin{align}
k_r&={r\pi\over2L},&\Omega_{\ell r}^2&=p_\ell^2+k_r^2,\\
\boldsymbol U_{\ell r}&={e_\ell(s)\over\sqrt L\,\Omega_{\ell r}}
\left(ip_\ell\cos(k_r(x+L)),\,k_r\sin(k_r(x+L))\right),&&\ell\ne0,\ r\ge1,\\
\boldsymbol U_{\ell0}&={e_\ell(s)\over\sqrt{2L}}(1,0),&&\ell\ne0,\\
\boldsymbol U_{0r}&={1\over\sqrt{CL}}(0,\sin(k_r(x+L))),&&r\ge1.
\end{align}$$

Their spatial norms are one; original CPS gives the coefficient $e/\sqrt{2\Omega}$ in the positive-frequency field expansion. The compact normal mode has $A_x=a/(2L)$, $\Theta=\nu\delta a$, $\nu=C\dot a/(2e^2L)$ and $H=e^2L\nu^2/C$. Classically $\nu$ is real; the benchmark's compact-coordinate quantization gives integer $\nu$. No new quantum theorem is inferred here.

The old regression is a sign/normalization cross-check only. In particular its frequency-domain modes do not see the static common-harmonic cusp family, which explains why mode agreement could not settle the raw slice/kernel question.

## 8. B8: decision and remaining theorem boundary

The physical distributional and core mixed-realization tests pass. The unqualified raw smooth-gauge assembly/quotient claim fails; its missing normal regularity also creates an extra CPS kernel. A concrete restored assembly, including smooth lift plus regional based re-fixing, has been constructed and proved to give a set-level orbit correspondence and CPS/kernel result in the declared smooth finite-Fourier sector.

**Overall status: proved for the bounded smooth-core orbit theorem in Section 9; general/functional extensions remain conditional.** Regional based classes with independently defined common-cut arrows give intrinsic geometric assembly, choice independence, two-sided orbit correspondence and original CPS on horizontal tangent classes. Coulomb restoration is its section modulo the residual discrete proper copies. This closes the geometric-identification gate of commit 22e420be, not a smooth quotient-manifold or completed Maxwell theorem. The raw and restored maps remain noninterchangeable under smooth proper gauge on $\operatorname{Sol}_{\rm pw}$. No weaker topology or enlarged gauge group was adopted.

The orbit-level identification is supplied in Section 9 below, without changing either counterexample or the global smooth gauge group. No Maxwell $3+1$, high-dimensional non-Abelian theory, energy completion, quantum quotient, or null composition is needed for it.

## 9. Intrinsic collar assembly on regional based classes

**Re-derived here; proved in the Section 0 smooth finite-Fourier sector.** The physical target is always
$\mathcal Q_{\rm sm}:=\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}$.
$\operatorname{Sol}_{\rm pw}$ is only a distributional diagnostic category. This section does not identify its smooth-gauge quotient with $\mathcal Q_{\rm sm}$.
The result is a bijection of equivalence classes and an identity of original two-forms on admissible tangents modulo vertical directions, not a smooth quotient-manifold theorem.

### 9.1. Original regional objects and the two distinct quotients

Let $\mathcal M_h$ consist of pairs of original solutions $(A_1,A_2;h)$, not necessarily in any PDE gauge. Each is smooth as a one-form on its closed regional slab in the usual manifold-with-boundary sense, with finite angular Fourier support, all original equations, fixed $A_t=A_s=0$ physical-wall frames, and the same temporal endpoint policy as Section 0. In a fixed reachable chart $h=e^{i\varphi}$, impose

$$\begin{align}
a_2&=a_1+d_\Gamma\varphi,&
E_{y,1}+E_{y,2}&=0,&B_1+B_2&=0.
\end{align}$$

These hold as smooth histories on the whole closed $\Gamma$, not just at one time. One-sided derivatives of every order exist; all original equations and their differentiated boundary identities hold up to the closures. No matching of the potential's normal jets is assumed. This is the sufficient trace/collar regularity. The bundle, wall frames and relative sector are unchanged. Reachability means zero angular winding and a smooth periodic real lift with finite-Fourier derivatives; Section 9.3 transfers the proof from $h=1$. Every physically matched pair of Coulomb realizations in Section 1 is an object; conversely Section 9.6 supplies a regional based Coulomb realization of every such original object.

Write $\mathcal G_i^{\rm w}$ for smooth regional maps equal to $1$ at the physical wall, preserving the core, and

$$\begin{align}
\mathcal G_i^0&=\{g_i\in\mathcal G_i^{\rm w}:g_i|_\Gamma=1\},&
\mathcal B_h&:=\mathcal M_h/(\mathcal G_1^0\times\mathcal G_2^0).
\end{align}$$

Each group is defined on its own closed region. A wall-normalized real logarithm has zero angular winding; for a based map its cut value is $2\pi m_i$, where $m_i\in\mathbb Z$ is constant in $(t,s)$. All these components are retained. There is **no assertion** that independent based maps patch in the original common frame. Section 9.3 proves that their product nevertheless acts as an equivalence on the geometric construction. It is not identified with the restriction kernel of the global smooth group.

The based classes $\mathcal B_h$ still remember the active cut frame. Define the regional group

$$\begin{align}
\mathcal K_h&=\{(g_1,g_2)\in\mathcal G_1^{\rm w}\times\mathcal G_2^{\rm w}:
g_1|_\Gamma=g_2|_\Gamma\},\\
\mathcal H_\Gamma&=\{e^{if(t,s)}:\ f\text{ smooth, periodic, finite-Fourier}\}.
\end{align}$$

For Abelian fixed $h$, equality of cut phases is precisely its stabilizer condition. The group action preserves original descent, full transmission and the history family. Its definition refers only to regional fields/maps and cut values, with no reference to global orbit equality. There is an exact **regional** sequence

$$\begin{align}
1\longrightarrow\mathcal G_1^0\times\mathcal G_2^0
\longrightarrow\mathcal K_h\longrightarrow\mathcal H_\Gamma\longrightarrow1.
\end{align}$$

Surjectivity follows by choosing $g_i=\exp(i b_i(y_i)f)$ with $b_i=0$ near the wall and $1$ near the cut. Two such choices differ by regional based maps, so $\mathcal H_\Gamma$ acts unambiguously on $\mathcal B_h$. Define $\mathcal C_{\rm reg}^{\rm geom}$ to be this action groupoid: its objects are $\mathcal B_h$ and an arrow is a cut map with its induced regional action. The final regional orbit set is

$$\begin{align}
\mathcal Q_{\rm reg}^{\rm geom}
:=\pi_0\mathcal C_{\rm reg}^{\rm geom}
=\mathcal B_h/\mathcal H_\Gamma
=\mathcal M_h/\mathcal K_h.
\end{align}$$

**Necessary correction to the based-only formulation.** Restricting a global proper orbit does not select one element of $\mathcal B_h$: a smooth global $e^{ib(x)f(t,s)}$ can change its cut history, which based maps cannot change. Restriction is well defined into $\mathcal Q_{\rm reg}^{\rm geom}$. Assembly is defined already on $\mathcal B_h$, but is not injective there. These are two actual reductions, not two notations for the same quotient.

The unrestricted smooth extension image remains $\operatorname{Map}_0(S^1,U(1))$ at each time; on the slab it consists of smooth zero-angular-winding histories, since $I$ is an interval and no endpoint-identity condition is imposed. $\mathcal H_\Gamma$ is its core-preserving subgroup. This does not shrink the global equivalence relation: if two finite-Fourier smooth potentials are related by a smooth proper $g$, then $-ig^{-1}dg$ is finite-Fourier. Integrating its $x$ component from the identity left wall gives a finite-Fourier logarithm of $g$. Thus the full smooth group gives the same equivalences between these objects.

### 9.2. A geometric assembly defined without Coulomb or DtN

First set $h=1$ and use common $x$ components. Descent implies $[E_s]=0$; full transmission implies $[E_x]=[B_x]=0$. Section 5's original first-order identities

$$\begin{align}
\partial_xE_x=-\partial_sE_s,\qquad
\partial_xB_x=\partial_tE_s,\qquad
\partial_xE_s=\partial_tB_x+\partial_sE_x
\end{align}$$

then imply matching of all normal jets of $F$. More explicitly, if the order-$r$ normal traces match as smooth $(t,s)$ functions, apply $\partial_x^r$ to these three equations and differentiate the equal traces tangentially to obtain order $r+1$. Induction starts at $r=0$. Piecewise smooth functions with all these matching jets glue to a smooth function; the same holds for all mixed derivatives and at $t_\pm$. Denote the resulting smooth two-form by $F$. It equals the original regional curvature everywhere, not just at the cut.

Choose a product collar and a smooth cutoff $\chi(x)$ equal to $1$ near $0$ and $0$ outside a slightly larger interior collar. On each side set

$$\begin{align}
u_i&=e^{i\lambda_i},&
\lambda_i(t,x,s)&=-\chi(x)\int_0^x A_{i,x}(t,\xi,s)\,d\xi,\\
\bar A_i&=A_i+d\lambda_i.
\end{align}$$

Each $\lambda_i$ is smooth on its own closed region, zero at the cut and near the physical wall, and finite-Fourier. Thus $u_i\in\mathcal G_i^0$. No smoothness of the *piecewise* $\lambda_i$ is asserted. On the smaller collar, for $a=t,s$,

$$\begin{align}
\bar A_x&=0,&
\bar A_a(t,x,s)&=a_a(t,s)+\int_0^x F_{xa}(t,\xi,s)\,d\xi.
\end{align}$$

Indeed $\partial_x\bar A_a=\partial_xA_a-\partial_aA_x=F_{xa}$ and $\bar A_a(0)=a_a$. In particular $F_{xt}=-E_x$; the temporal component is included. The right hand side is one smooth connection on a whole collar. Extend the two corrected charts over this common collar and use this same connection on their overlap. Away from it use $\bar A_i$. These agree, and define a global smooth $A_{\rm gl}$ in the retained global wall frame. The construction preserves finite angular support because all cutoffs depend only on $x$.

On each region $d\bar A_i=dA_i$, so the global curvature is exactly $F$. Original Maxwell equations hold on both interiors and by smoothness also on the interface. Equivalently Section 2 removes every distributional source and the normal-jet argument upgrades the curvature/connection to smoothness. The walls are unchanged, and all statements hold on the original time slab. No extension of dynamical data outside that slab, approximation to $F$, or existence of a global Coulomb representative is used.

For now this produces $A_{\rm gl}$ from choices. After the following independence proof it defines

$$\begin{align}
\operatorname{Asm}_{\rm geom}:\mathcal B_h\longrightarrow\mathcal Q_{\rm sm},
\qquad [(A_1,A_2;h)]_{\rm based}\longmapsto[A_{\rm gl}]_{\rm proper}.
\end{align}$$

It is constant on the arrows of $\mathcal C_{\rm reg}^{\rm geom}$ and hence factors through $\mathcal Q_{\rm reg}^{\rm geom}$.

### 9.3. Comparison lemma and assembly-choice independence

**Smooth comparison lemma.** Suppose $C,D$ are globally smooth one-forms and $v_i$ are smooth regional $U(1)$ maps such that $D|_{M_i}=C|_{M_i}-iv_i^{-1}dv_i$. If $v_1|_\Gamma=v_2|_\Gamma$, their value-wise union is a smooth global map.

**Proof.** Put $B=D-C$. In a collar both maps solve $\partial_xv_i=iB_xv_i$ with the same smooth initial value $k(t,s)$ at $x=0$. The unique solution is

$$\begin{align}
v(t,x,s)=k(t,s)\exp\!\left(i\int_0^x B_x(t,\xi,s)\,d\xi\right).
\end{align}$$

It is smooth in all variables and agrees with both one-sided maps. This proves all normal and mixed jet matching, not just continuity. Away from the collar they were smooth already. If the regional maps equal $1$ on their physical walls, the resulting global map is proper. $\square$

An **admissible assembly choice** means smooth regional gauge changes, identity at the physical walls, which convert the given regional connections into one smooth connection across the cut. In the common chart their cut phases must agree; based choices are sufficient and were explicitly constructed above. More generally for $h=e^{i\varphi}$ their phases $u_i|_\Gamma$ must obey $u_2|_\Gamma=h^{-1}u_1|_\Gamma$. The connection must stay in the declared core. This is a local condition on representatives and frame transitions, not a definition by global orbit equality.

In particular, interpolation is permitted for gauge/trivialization data only: on **each entire original region** the output must be a gauge transform of the input satisfying these conditions. An arbitrary interpolation of potentials or curvatures is not allowed. Merely requiring a smooth Maxwell field with the same cut traces would permit changing bulk data or a framed Wilson line and would not define assembly. The radial construction proves that the admissible-choice class is nonempty for every object; nonemptiness is not assumed in $\mathcal M_h$.

If choices $u_i$ and $u_i'$ give smooth $C$ and $D$, their ratio $v_i=u_i^{-1}u_i'$ has equal cut phases (also for fixed nontrivial $h$) and is identity on the walls. Apply the lemma to obtain
$D=C^v$ with $v\in\mathcal G_{\rm sm}^{\rm prop}$.
This proves independence of collar widths, gauge cutoffs, smooth extensions of frames into the overlap, and every admissible interpolation, not only of the particular radial formula. Allowing a common nonbased cut value gives the same global orbit; it changes the intermediate based object by an intrinsic arrow.

If the input representatives change by $b_i\in\mathcal G_i^0$, and the new outputs use $u_i'$, compare $u_i$ with $b_i u_i'$. Their cut phases still agree. The same lemma proves that assembly descends to the **full** product based quotient. Arbitrary incompatible based jets were never patched directly: smoothness of the two final connections proves smoothness of their comparison gauge. This does not alter the counterexamples or the actual global restriction kernel.

For reachable fixed $h$, choose a smooth regional extension $\widetilde\varphi$ on region 2, zero at its wall and equal to $\varphi$ at the cut. Replace $A_2$ by $A_2-d\widetilde\varphi$ and use the common-frame construction. Such an extension is provided by $b_2(y_2)\varphi(t,s)$. Two extensions of the same lift differ by a based map. If $\varphi$ changes to $\varphi+2\pi m$, the two group-valued extensions still agree at the cut and the wall; their ratio is based, including a possibly nonzero large component. The preceding proof applies.

More generally a reachable passive re-presentation is
$(A_i,h)\mapsto(A_i^{r_i},r_1^{-1}hr_2)$, with specified regional smooth, wall-identity frame maps preserving the core. Composing its flattening/assembly maps with $r_i$ gives admissible choices for the original presentation. The lemma again supplies the same global proper orbit. This is invariance under presentation changes, not a charge assignment to passive frames.

All comparison maps have zero angular winding because each is connected radially to an identity wall. For a common-frame pair choose logarithms zero at their respective walls and write their common cut lifts as $q(t,s)+2\pi m_i$. The integers are constant on the connected slab. A global logarithm is obtained by adding $2\pi(m_1-m_2)$ to the right regional logarithm. Its endpoint difference is $2\pi n$ with $n=m_1-m_2$. Thus the comparison can be a **global smooth proper large transformation**, which is already included in the target group. Time-dependent $q$ is allowed; there is no temporal-period winding or endpoint-identity requirement. Finite-Fourier preservation follows either from these logarithms or from the smooth difference $D-C$ as in Section 9.1.

The framed radial Wilson phase supplies a useful independent sector check:

$$\begin{align}
W(t,s)=\exp i\!\left(\int_0^L A_{y,1}\,dy_1-\int_0^L A_{y,2}\,dy_2+\varphi(t,s)\right).
\end{align}$$

Common cut changes cancel, and based large changes shift the exponent by $2\pi(m_1-m_2)$. Reachable passive frame changes cancel against the change of $\varphi$. Assembly retains this phase. In particular no continuous flat Wilson mode has been discarded.

### 9.4. Intrinsic arrows, their completeness and stabilizers

Fix any based collar assembly choices for each original object, denoted $u_i(A)$ in the common chart. For fixed nontrivial $h$, include the same recorded flattening convention, so the total cut values are $1,h^{-1}$. A regional arrow $(g_1,g_2)\in\mathcal K_h$ with $A_i'=A_i^{g_i}$ compares the assembled fields by

$$\begin{align}
v_i=u_i(A)^{-1}g_i u_i(A').
\end{align}$$

The two $v_i$ agree at the cut. Since both assemblies are smooth, the comparison lemma glues them to one smooth proper global $v$. This proves that every independently defined regional arrow has a global image. Changing assembly choices changes this realization by the smooth comparison maps of Section 9.3; the orbit map is independent. Composition follows from multiplication of the regional maps and cancellation of the intermediate $u_i$.

Conversely, suppose $A_{\rm gl}'=A_{\rm gl}^{v}$ for a smooth global proper $v$. Define solely on the two original regions

$$\begin{align}
g_i=u_i(A)\,v|_{M_i}\,u_i(A')^{-1}.
\end{align}$$

Then $A_i'=A_i^{g_i}$, the maps are wall-identity, and their cut phases agree. Hence $(g_1,g_2)\in\mathcal K_h$. They preserve the core by the logarithmic-derivative argument. This proves every global equivalence is captured, without defining $\mathcal K_h$ by that equivalence. Passing to based classes leaves exactly its cut arrow in $\mathcal H_\Gamma$.

There are no active proper stabilizers here: $A_i^{g_i}=A_i$ implies $dg_i=0$, and its identity wall fixes the constant to $1$. If a cut map fixes a based class, divide its representatives by the based maps witnessing that equality; the same argument forces its cut value to $1$. Thus the action on $\mathcal B_h$ is free. Global proper stabilizers are also trivial. Integer changes of real logarithm are presentation redundancy, not new stabilizers or infinitesimal kernel vectors.

On the regional Coulomb realization, an intrinsic arrow is represented after based re-fixing by
$\lambda_i=H(f_0+2\pi m_i)$ as in Section 4. Indeed a smooth wall-proper lift with cut $e^{if_0}$ and its harmonic representative differ by a based map. These restored arrows are therefore the realization of the regional groupoid just defined. Directly patchable smooth harmonic pairs remain only the slice-preserving subgroup $\lambda_n$ of Section 4, with its restricted cut image. Their smaller image is not the intrinsic extension image.

### 9.5. Restriction without global gauge fixing; two-sided orbit theorem

For a smooth global representative $A$, restrict its original connection to the two closed regions in the fixed global frame and set $h=1$. It automatically lies in $\mathcal M_1$. A global proper change $A\mapsto A^g$ restricts to a pair in $\mathcal K_1$. Therefore

$$\begin{align}
\operatorname{Res}_{\rm geom}:\mathcal Q_{\rm sm}
\longrightarrow\mathcal Q_{\rm reg}^{\rm geom},
\qquad [A]\longmapsto[(A|_{M_1},A|_{M_2};1)]_{\mathcal K_1}
\end{align}$$

is well defined without any Coulomb or temporal fixing. A reachable fixed-$h$ presentation follows by the regional frame change already proved independent.

For a global $A$, the identity maps are themselves admissible assembly choices for its restrictions. Choice independence gives
$\operatorname{Asm}_{\rm geom}\operatorname{Res}_{\rm geom}[A]=[A]$.
For regional data, restriction of the based radial assembly returns $A_i^{u_i}$; these are the **same based classes** as $A_i$. A different admissible common-cut assembly instead returns the same intrinsic arrow class. Consequently

$$\begin{align}
\boxed{\mathcal Q_{\rm reg}^{\rm geom}\simeq
\operatorname{Sol}_{\rm sm}/\mathcal G_{\rm sm}^{\rm prop}},\qquad
\operatorname{Asm}_{\rm geom}\circ\operatorname{Res}_{\rm geom}
&=\operatorname{id},&
\operatorname{Res}_{\rm geom}\circ\operatorname{Asm}_{\rm geom}
&=\operatorname{id}.
\end{align}$$

These are equalities on the stated orbit sets. The proof does not define the global target as an image, change its topology, or use global gauge fixing for surjectivity. It is not a bijection between $\mathcal B_h$ alone and global orbits, and makes no claim about all of $\operatorname{Sol}_{\rm pw}/\mathcal G_{\rm sm}^{\rm prop}$.

### 9.6. Coulomb restoration is a section of geometric assembly

Every original regional field admits a based Coulomb fixing: solve, at each time,
$\Delta\lambda_i=-\operatorname{div}\boldsymbol A_i$ with real Dirichlet value zero at its wall and at the cut. Each finite angular coefficient is an invertible smooth Dirichlet ODE. Thus the fixing is smooth in $(t,y_i)$ and remains in the same based class. Original Gauss then makes the transformed $A_t$ harmonic, with its unchanged cut value $\alpha_i$ and zero wall value, so it is precisely Section 1's mixed realization. All compatibility identities follow from that original smooth solution. Based large Coulomb copies are the displayed $2\pi m_i y_i/L$; no new quotient is introduced.

For a physically matched Coulomb pair, Section 5 proves that adding $dHf$, $f=(2T)^{-1}J$, gives a smooth global temporal/Coulomb connection. Its regional gauge maps are wall-identity with equal cut phases. It is therefore an admissible assembly choice in Section 9.3, giving

$$\begin{align}
[\operatorname{Asm}_{\rm C}(A_1,A_2)]_{\rm proper}
=\operatorname{Asm}_{\rm geom}([(A_1,A_2)]_{\rm based}).
\end{align}$$

This identifies the existing construction with the intrinsic assembly, rather than defining the latter by it. $T$ chooses a temporal/Coulomb representative from the geometric orbit. Strictly, this is a section **modulo the residual discrete global proper copies**, or a local section after choosing a Wilson-angle chart. A global single-valued smooth choice of a real Wilson angle is not asserted. Different smooth bulk lifts or based re-fixings give the same global orbit by Sections 9.3--9.4.

The real solution of $2Tf=J$ is unique; it is not only a phase $e^{if}$. With the input fixed, replacing $f$ alone by $f+2\pi m$ generally destroys normal matching. A phase-lift change is harmless only when its accompanying based re-fixing is included. In the arrow description, $f_0\mapsto f_0+2\pi m$ and $m_i\mapsto m_i-m$ describe exactly the same regional maps. Different based components induce the already allowed global large identification $n=m_1-m_2$. No assertion that a bare lift shift preserves the Coulomb representative is used.

For the cusp, the based radial construction gives $A_{\rm gl}=d\psi_{\rm sm}$ with $\psi_{\rm sm}=\beta$ near the cut and $0$ at both walls (use the interpolating profile supplied by the cutoff). Hence its global orbit is the vacuum orbit, also produced by $\operatorname{Asm}_{\rm C}$. Its regional based object generally differs from the zero based object by the common cut phase $e^{i\beta}$. Thus it has a smooth geometric assembly, while its **raw** representative still cannot be made smooth by a smooth global gauge. For the piecewise-quadratic example the two regional maps $1,e^{-i\psi}$ are already based and remove it exactly. The raw divergence-jump obstruction in Section 5 remains valid.

### 9.7. Unequal-length naturality check, not a new model project

For the same two regions of lengths $L_1,L_2>0$, the collar proof is unchanged. In the harmonic calculation put

$$\begin{align}
T_{i,\ell}&=|p_\ell|\coth(|p_\ell|L_i),&
T_{i,0}&=1/L_i,\\
J'&=J-(T_1+T_2)f,&
f&=(T_1+T_2)^{-1}J,&
\dot J&=-(T_1+T_2)\alpha.
\end{align}$$

All eigenvalues are positive and $\dot f=-\alpha$. A regional harmonic arrow with parameters $H_i(f_0+2\pi m_i)$ changes the restoring value by

$$\begin{align}
f'-f=-f_0-2\pi(T_1+T_2)^{-1}(T_1m_1+T_2m_2).
\end{align}$$

The integer terms have only the angular zero mode. Their net restored parameters are
$2\pi(m_1-m_2)y_1/(L_1+L_2)$ on the left and
$-2\pi(m_1-m_2)y_2/(L_1+L_2)$ on the right. As group-valued maps they are the restrictions of
$\exp[2\pi i n(x+L_1)/(L_1+L_2)]$, $n=m_1-m_2$.
This includes the equal-length result and checks that lift bookkeeping does not rely on reflection symmetry. No unequal-cut spectrum, completion or separate IBVP programme is undertaken.

### 9.8. Original CPS on equivalence classes and horizontal tangents

Use differentiable families of the original smooth solutions, with admissible histories varying, locally in a common finite angular support and in fixed integer components. No field-space quotient manifold is presumed. For a regional gauge change $A_i\mapsto A_i+d\lambda_i$, including field-dependent choices, Gauss gives at each Cauchy time

$$\begin{align}
\Theta_i[A_i+d\lambda_i]-\Theta_i[A_i]
&=e^{-2}\int_S E_{y,i}\,\delta(\lambda_i|_\Gamma).
\end{align}$$

The omitted volume term is $-e^{-2}\int_{\Sigma_i}(\partial_jE_i^j)\delta\lambda_i=0$, and the wall term vanishes because the normalized wall lift is a fixed integral constant. For based maps the cut lift is also an integral constant, so this difference is zero. Infinitesimally, using linearized Gauss,

$$\begin{align}
\iota_{X_{\eta_i}}\Omega_i
=-e^{-2}\int_S\eta_i\,\delta E_{y,i}=0
\quad(\eta_i|_{\partial\Sigma_i}=0).
\end{align}$$

Thus the regional original forms are invariant and horizontal for based equivalence, including invariance under its disconnected components. They descend as bilinear forms on admissible tangents modulo based vertical directions.

For a common cut value $f$, the change of the summed potential is
$e^{-2}\int_S(E_{y,1}+E_{y,2})\delta f=0$.
The infinitesimal contraction is
$-e^{-2}\int_S f\,\delta(E_{y,1}+E_{y,2})=0$.
Hence the sum is also invariant/horizontal for the intrinsic cut arrows on the matched tangent locus. This holds for the full time-dependent history action, not merely time-independent Coulomb residuals.

Apply these identities to the based radial assembly and use additivity over the two Cauchy interiors. No cut-supported measure is added. For variable reachable $h$, first flatten region 2 by $-d\widetilde\varphi$ as above; the same integration by parts gives exactly Section 6's completion. Therefore, as identities on these differentiable families and then on their tangent equivalence classes,

$$\begin{align}
\operatorname{Asm}_{\rm geom}^*\Omega_{\rm sm}
&=\Omega_{\rm reg}^h,\\
\Omega_{\rm reg}^h
&=\Omega_1+\Omega_2-e^{-2}\int_S\delta E_{y,2}\wedge\delta\varphi.
\end{align}$$

For fixed $h$ and closed $S$ the last term is zero. The variable-$h$ formula is on original Gauss and full transmission solutions; the worldtube derivation still uses the normal Euler equation from formalism Section 4. A change of flattening lift is based, so the formula is choice independent. More explicitly, under regional presentation changes with cut lifts $\kappa_i$,
$\varphi'=\varphi+\kappa_2-\kappa_1$.
The regional-potential change is $e^{-2}\int_S(E_{y,1}\delta\kappa_1+E_{y,2}\delta\kappa_2)$ and the corner change is $-e^{-2}\int_SE_{y,2}\delta(\kappa_2-\kappa_1)$; the sum vanishes by electric transmission. This verifies passive covariance without attributing it a charge.

Two admissible differentiable assembly choices differ by a smooth proper gauge family from Section 9.3. The identical global Gauss calculation with zero wall variation makes their pulled-back forms equal. Pulling back further to the regional Coulomb realization reproduces B6, including its common harmonic correction and its calibrated corner sign. No new interface oscillator is present.

For **kernel equality**, work in a fixed-$h$ presentation, or first identify the passive presentation redundancy of variable-$h$ data. Retain Section 6's nondegenerate-mod-gauge Cauchy sector, including the Wilson/electric pair and the fully compatible smooth tangents. A global temporal/Coulomb fixing is a proof device here: configuration and velocity tests in the same divergence-free wall-compatible class give nondegeneracy as in Section 6. The regional construction and restriction are linear on local real-lift coordinates, with explicit smooth-family right inverses. If an assembled tangent is global proper gauge, restrict its infinitesimal parameter and undo the variation of the based collar maps; this gives regional parameters with equal cut values. Hence the kernel before based reduction is exactly the infinitesimal $\mathcal K_h$ action, and after based reduction exactly the infinitesimal $\mathcal H_\Gamma$ action. On the Coulomb realization these are the common harmonic directions. Conversely every such direction is null by the preceding contraction calculation. On the unquotiented variable-$h$ presentation space there are also passive vertical directions with unequal cut parameters and $\delta\varphi=\eta_2-\eta_1$; the preceding corner cancellation makes them null. They must not be mislabeled as fixed-$h$ active arrows.

This is a theorem about solution-orbit sets with original two-forms on admissible horizontal tangent classes. It neither constructs a Fréchet symplectic manifold nor promotes the kernel statement to other topological sectors or completed tangent spaces. Discrete large identifications are imposed separately and are never kernel vectors.

### 9.9. Smooth versus Sobolev diagnosis and exact scope

The cusp parameter $\beta(1-|x|/L)$ is Lipschitz and belongs to $W^{1,\infty}$ on the compact slab, but it is not globally smooth. Its exponential is a proper Lipschitz gauge map and removes the raw cusp in a category permitting that operation. Thus the failed raw statement is specifically about the retained **smooth** global gauge group and representative category; it is not an obstruction to original physical sewing. The piecewise-quadratic parameter similarly has lower global regularity than smoothness while being smooth on both regional closures.

The smooth category is retained because it was independently fixed for the physical target, because all traces and normal-jet comparisons used here are pointwise meaningful, and because the original differentiable CPS core is already specified there. The theorem changes the assembly construction, not that target category or its gauge group. It asserts no identical raw obstruction for an $H^1$ or Sobolev gauge quotient, and proves no Sobolev trace, multiplication, manifold or energy-completion theorem.

**Verified:** the analytic collar, comparison, regional-arrow completeness, two-sided orbit and CPS arguments above; nine exact algebraic diagnostics in $\texttt{verification/collar-checks.wl}$, separate from the earlier thirty witnesses. **Assumptions:** the original smooth finite-Fourier slab, full transmission histories, fixed physical-wall frames, trivial bundle/relative sector, all based large components, and the stated tangent core for kernel equality. **Not verified:** smooth quotient-manifold structure, Sobolev/energy extensions, other bundle sectors or any excluded theory. The raw cusp and quadratic failures remain regression obstructions. Within these assumptions the bounded orbit-level Maxwell $2+1$ kill test is **proved**, replacing its former geometric-identification gate; the general formalism remains conditional.

## 10. Time-slab evolution-relation composition

**Re-derived here; proved on the same Section 0 core.** This section does not promote the orbit theorem to a manifold theorem. It decorates the original regional and global solution histories by their initial/final Cauchy evaluations, keeps the mixed Coulomb realization as one presentation, and proves composition as an equality of equivalence-class relations. The whole-slab orbit bijection of Section 9 is an input only through its already proved collar and arrow lemmas; the evolution relation, its history action, Hamilton--Jacobi identity and balance laws are specified independently below.

### 10.1. Regional mixed evolution relation

Let $\Xi_i^{\chi,\pm}$ consist of the original Cauchy data

$$\begin{align}
\xi_i^\pm=(\boldsymbol A_i^\pm,\boldsymbol E_i^\pm)
\end{align}$$

in regional Coulomb gauge, with the wall conditions, Gauss law, finite angular support and all corner compatibility identities inherited from Section 1. This includes the compact normal coordinate and its electric momentum. It does not include $A_t$ as a Cauchy canonical coordinate. Put

$$\begin{align}
b_i&=(\alpha_i,q_i),&
\widehat z_i&=(\alpha_i,q_i,r_i;u_i,v_i,w_i;E_{y,i},E_{s,i};\mathcal J_i),\\
z_i&=\rho_i^\chi(\widehat z_i)
=(\alpha_i,q_i;-e^{-2}E_{y,i},-e^{-2}B_i),
&B_i&=v_i-\partial_sr_i.
\end{align}$$

The compatibility domain $\mathfrak D_i^\chi\subset\Xi_i^{\chi,-}\times\mathcal B_i^\chi$ is exactly the domain in Section 1: $b_i$ is the prescribed mixed input history, its jets and $\xi_i^-$ obey the displayed $V_m/W_m$ recursions, and reality and wall conditions hold. The variables $(r,u,v,w,E_y,E_s,\mathcal J)$ are realized output, constraint and jet data. They are not additional freely prescribed inputs. The final datum $\xi_i^+$ is also an output.

Define

$$\begin{aligned}
\mathscr U_i^\chi:=\{(\xi_i^-,\xi_i^+;b_i,\widehat z_i):\;&
(\xi_i^-,b_i)\in\mathfrak D_i^\chi,\\
&A_i\text{ is the Section 1 mixed Coulomb solution},\\
&\xi_i^+=\operatorname{ev}_{t_+}(\boldsymbol A_i,\boldsymbol E_i),
\quad \widehat z_i=\widehat{\operatorname{Tr}}_{i,\Gamma}^\chi A_i\}.
\end{aligned}$$

For each fixed finite angular set this is the graph of

$$\begin{align}
(\xi_i^-,b_i)\longmapsto(\xi_i^+,\widehat z_i)
\end{align}$$

on $\mathfrak D_i^\chi$. Existence and uniqueness follow from the finite collection of homogeneous Neumann Klein--Gordon, homogeneous Dirichlet wave and compact ODE problems used in Section 1. Their Duhamel formulas are linear/continuous in every fixed compatible $C^k$ seminorm and differentiate smoothly along admissible finite-parameter families. Gauss holds initially by definition and propagates because its time derivative is the divergence of the spatial Maxwell equations. The reduced master equations were derived from the original equations, so all original constraints and the final compatibility jets hold. This is a smooth-core family statement, not a completed trace or Fréchet-domain theorem.

### 10.2. Active cut histories and endpoint action

Let $\mathcal H_\Gamma^{\rm core}$ be the core-preserving zero-angular-winding cut histories $e^{if(t,s)}$, represented by smooth periodic finite-Fourier real lifts. Put $H_0=y/L$ and use the $H_k$ of Section 1 for nonzero angular modes. The slice-preserving representative of an active cut history is

$$\begin{align}
\lambda_i=H(f+2\pi m_i),\qquad m_i\in\mathbb Z.
\end{align}$$

The integers are constant on the connected slab. They are the based large components; the common group-valued cut phase is $e^{if}$. Write $F_i=f+2\pi m_i$. On the enlarged trace the action is

$$\begin{aligned}
\alpha_i&\mapsto\alpha_i+\dot f,&
q_i&\mapsto q_i+\partial_sf,&
r_i&\mapsto r_i+TF_i,\\
u_i&\mapsto u_i-\partial_s^2f,&
v_i&\mapsto v_i+T\partial_sf,&
w_i&\mapsto w_i+T\dot f,\\
(E_{y,i},E_{s,i},B_i)&\mapsto(E_{y,i},E_{s,i},B_i),&
\mathcal J_i&\mapsto\mathcal J_i+\operatorname{jet}(dHF_i).
\end{aligned}$$

Thus

$$\begin{align}
z_i\mapsto(\alpha_i+\dot f,q_i+\partial_sf;-e^{-2}E_{y,i},-e^{-2}B_i).
\end{align}$$

The formulas preserve $u+\partial_sq=0$, $E_y=\dot r-w$, $E_s=\dot q-\partial_s\alpha$, harmonicity of $A_t$, every differentiated original equation and every initial-boundary compatibility jet. At the temporal endpoints,

$$\begin{align}
(\boldsymbol A_i^\pm,\boldsymbol E_i^\pm)
\mapsto
(\boldsymbol A_i^\pm+\nabla HF_i(t_\pm),\boldsymbol E_i^\pm).
\end{align}$$

No condition $f(t_\pm)=0$ is imposed. For $p\ne0$ this is equivalently $v_\ell\mapsto v_\ell+H_k'f_\ell/(ip_\ell)$; in the angular zero sector $a_i\mapsto a_i+\bar f+2\pi m_i$. Therefore the action preserves the **family** of domains and satisfies the equivariance identity

$$\begin{align}
\mathscr U_i^\chi(\xi_i^{-,f},b_i^f)
=\bigl(\mathscr U_i^\chi(\xi_i^-,b_i)\bigr)^f,
\end{align}$$

including the transformed final endpoint and all realized jets. It generally moves between history fibers. A full regional based transformation need not preserve Coulomb gauge; its action on this realization means original based gauge followed by the Dirichlet Coulomb re-fixing in a chosen based large component. Within the Coulomb slice the displayed discrete based copies remain. Passive frame changes instead re-express $(A_i,b_i,\widehat z_i,h)$ together and carry no active charge.

For $h=1$, the same $e^{if}$ acts on both sides. A reachable fixed $h=e^{i\varphi}$ is reduced to this chart by the Section 9.3 regional extension of $\varphi$; covariance then transports every formula back. No free cut action or Abelian harmonic formula is asserted for a general connection theory.

### 10.3. The matched time-slab relation

Define

$$\begin{aligned}
\mathscr U_{12}^{\chi,\mathrm{match}}
:=\{(U_1,U_2)\in\mathscr U_1^\chi\times\mathscr U_2^\chi:\;&
\alpha_1=\alpha_2=: \alpha,\quad q_1=q_2=:q,\\
&E_{y,1}+E_{y,2}=0,\quad B_1+B_2=0
\text{ on }I\times S^1,\\
&\text{the original Gauss, wall, initial/final corner and}\\
&\text{all compatibility identities hold}\}.
\end{aligned}$$

Equivalently, $(z_1,z_2)$ lies in the original fixed-$h$ full-trace sewing relation. Only $(\alpha,q)$ is identified as the common connection history; the momentum/normal traces and $\mathcal J_i$ are outputs constrained by transmission and smooth compatibility. No global Coulomb condition or equality of $A_y$ normal traces is included in physical matching.

Let $\mathcal G_i^0$ be the full original regional wall-and-cut based group, with all components, and let $\mathcal K_h$ be the intrinsic equal-cut-phase group of Section 9.1. On the mixed realization, the first quotient is understood through based re-fixing as above. The precise regional relation object is

$$\begin{align}
\mathscr Q_{12}^{I,\chi}
&:=\left[\mathscr U_{12}^{\chi,\mathrm{match}}/
(\mathcal G_1^0\times\mathcal G_2^0)\right]/\mathcal H_\Gamma^{\rm core}\\
&\cong\mathscr U_{12}^{\chi,\mathrm{match}}/\mathcal K_h.
\end{align}$$

These are orbit sets/equivalence-class relations. The first line deliberately displays the two reductions; a based-only quotient still remembers the active cut frame.

### 10.4. Relation-level geometric assembly

Let $\mathscr U_M$ be the original globally smooth finite-Fourier solution-history relation, decorated by its evaluations $(\xi^-,\xi^+)$ and with the same wall and temporal policies. The based radial collar construction of Section 9.2 applies to every member of $\mathscr U_{12}^{\chi,\mathrm{match}}$ as a smooth function of $(t,s)$ on the **closed** slab. It preserves the regional curvatures, and hence the original equations, while making one global smooth connection. Evaluation commutes with this construction:

$$\begin{align}
\operatorname{ev}_{t_\pm}A_{\rm gl}
=\operatorname{Asm}_{\Sigma}\bigl(\xi_1^\pm,\xi_2^\pm\bigr),
\end{align}$$

where the right side uses the restrictions of the same collar maps at $t_\pm$. Thus no endpoint datum is replaced by an independently chosen one.

The comparison ODE in Section 9.3 has $t$ as a smooth parameter and proves equality of all normal and mixed time jets. Consequently collar width, cutoff, transition extension, based representative and any other admissible smooth family of assembly choices change the entire history, including its endpoints, by one smooth global proper map. Conversely, a global solution history restricts to a member of the matched relation; its original traces obey descent and full transmission, and Section 9.6 supplies the mixed Coulomb presentation. Restricting a global proper equivalence gives intrinsic regional arrows, and Section 9.4 proves the converse after undoing the two collar repairs.

Therefore restriction and assembly give the two-sided relation theorem

$$\begin{align}
\boxed{
\mathscr Q_{12}^{I,\chi}
\ \simeq\ 
\mathscr U_M/\mathcal G_M^{\rm prop}}
\end{align}$$

with initial and final evaluation maps intertwined. This is a bijection of solution-history equivalence classes, not a diffeomorphism of quotient manifolds. It is stronger than merely reusing a whole-slab solution-orbit notation because the regional inputs, outputs, compatibility domain, endpoint actions and relation maps have now been specified and shown equivariant.

### 10.5. Reduction by stages and evolution intertwining

The regional exact sequence

$$\begin{align}
1\longrightarrow\mathcal G_1^0\times\mathcal G_2^0
\longrightarrow\mathcal K_h
\longrightarrow\mathcal H_\Gamma^{\rm core}\longrightarrow1
\end{align}$$

acts on the family of matched time-slab relations. Section 10.2 proves domain and endpoint equivariance, so ordinary orbit algebra gives

$$\begin{align}
\boxed{
(\mathscr U_{12}^{\chi,\mathrm{match}}/
(\mathcal G_1^0\times\mathcal G_2^0))/\mathcal H_\Gamma^{\rm core}
\simeq
\mathscr U_{12}^{\chi,\mathrm{match}}/\mathcal K_h
\simeq
\mathscr U_M/\mathcal G_M^{\rm prop}.}
\end{align}$$

The first equivalence is reduction by stages for this regional groupoid; the second is the collar/arrow theorem with endpoint evaluations. It does **not** identify the independent regional based product with the kernel of restriction of the global smooth group. Instead the smooth comparison lemma sends every intrinsic arrow to a global proper arrow and captures every global arrow conversely. This is the required model-specific replacement for that generally false kernel identification.

Time-dependent $f(t,s)$ and arbitrary endpoint values are included. The based integers $m_i$ cannot vary in time, and their difference is the allowed global radial large transformation. Reachable fixed-$h$ charts are related by the recorded passive covariance. No physical outer transformation is divided out. These statements prove evolution intertwining in this core and no general Yang--Mills time-slab reduction theorem.

### 10.6. Original on-shell action and Hamilton--Jacobi identity

Use only the original Maxwell action of Section 1. For $U_i\in\mathscr U_i^\chi$, define

$$\begin{align}
S_{i,\mathrm{on}}(\xi_i^-,b_i):=S_i[A_i(\xi_i^-,b_i)].
\end{align}$$

There is no gauge-fixing action. Since the original first variation contains no tangential derivative of $\delta\alpha$ or $\delta q$, no additional $\boldsymbol\beta$ corner is hidden in the following fixed-$h$ formula:

$$\begin{align}
\boxed{
\delta S_{i,\mathrm{on}}
=\Theta_i^+-\Theta_i^-
+\int_I\!dt\int_S\!ds\,
(\Pi_i^t\delta\alpha_i+\Pi_i^s\delta q_i),}
\qquad
(\Pi_i^t,\Pi_i^s)=-e^{-2}(E_{y,i},B_i).
\end{align}$$

This is the regional Hamilton--Jacobi identity on admissible differentiable families. In a variable reachable-$h$ presentation the summed endpoint potential includes, once,
$-e^{-2}\int_SE_{y,2}\delta\varphi$ at each temporal endpoint, exactly as in Sections 6 and 9.8. For fixed reachable $h$, $\delta\varphi=0$ and it vanishes.

On $\mathscr U_{12}^{\chi,\mathrm{match}}$, the common history variation is arbitrary and

$$\begin{align}
\int_{I\times S}
\bigl[(\Pi_1^t+\Pi_2^t)\delta\alpha
+(\Pi_1^s+\Pi_2^s)\delta q\bigr]=0.
\end{align}$$

Hence

$$\begin{align}
\delta(S_{1,\mathrm{on}}+S_{2,\mathrm{on}})
=\Theta_{12}^+-\Theta_{12}^-.
\end{align}$$

The collar maps do not change $F$, and the artificial cut has zero measure and no action. With the fixed original action representative used throughout,

$$\begin{align}
\boxed{S_{M,\mathrm{on}}[A_{\rm gl}]
=S_{1,\mathrm{on}}[A_1]+S_{2,\mathrm{on}}[A_2]}
\end{align}$$

exactly: the additive constant is zero. Proper gauge and all admissible collar choices leave both sides unchanged. A future coherent JKM/polarization change would push forward the endpoint/corner primitives on both sides; it would give a canonical-equivalence statement, not license dropping an unmatched constant. No such ambiguity is used here.

### 10.7. Exact-isotropic claim level

On the ambient endpoint-plus-history data use

$$\begin{align}
-\Omega_i^-+\Omega_i^+
+\int_{I\times S}
(\delta\Pi_i^t\wedge\delta\alpha_i
+\delta\Pi_i^s\wedge\delta q_i).
\end{align}$$

Taking one more field-space derivative of the regional Hamilton--Jacobi identity shows that its pullback to $\mathscr U_i^\chi$ vanishes. Its canonical one-form pulls back to $\delta S_{i,\mathrm{on}}$. Thus each regional relation is **exact isotropic** on admissible families, with primitive $S_{i,\mathrm{on}}$.

After matching, the two interface one-forms cancel and the primitive becomes $S_{M,\mathrm{on}}$. Therefore the composed global relation, before or after the horizontal gauge identifications, is exact isotropic. This does not prove maximal isotropy. Radial directions remain infinite-dimensional even at fixed angular support, no strong ambient symplectic topology or split complement has been supplied, and no half-dimensional count is available. The claim is not upgraded to “Lagrangian.”

### 10.8. Symplectic flux, power and the connected Hamiltonian

The original current gives the regional balance

$$\begin{align}
\boxed{\Omega_i^+-\Omega_i^-+\operatorname{Flux}_{\Gamma,i}=0},\qquad
\operatorname{Flux}_{\Gamma,i}
:=-e^{-2}\int_{I\times S}
(\delta E_{y,i}\wedge\delta\alpha_i
+\delta B_i\wedge\delta q_i).
\end{align}$$

The physical walls contribute no flux. On the matched tangent locus,

$$\begin{align}
\operatorname{Flux}_{\Gamma,1}+\operatorname{Flux}_{\Gamma,2}=0,
\end{align}$$

so the assembled original form is conserved and agrees with the global form of Sections 6 and 9.8.

For power, first keep the stress-energy energy

$$\begin{align}
H_i^{\rm raw}:={1\over2e^2}\int_{\Sigma_i}
(E_{y,i}^2+E_{s,i}^2+B_i^2)\,dy\,ds.
\end{align}$$

Using the original Maxwell equations, the closed $s$-circle and the fixed physical wall,

$$\begin{align}
{dH_i^{\rm raw}\over dt}
&=e^{-2}\int_S B_iE_{s,i}\,ds\\
&=e^{-2}\int_S(B_i\dot q_i-\alpha_i\dot E_{y,i})\,ds.
\end{align}$$

Because $A_t|_\Gamma=\alpha$ is a boundary Lagrange-multiplier history, the Hamiltonian adapted to the displayed connection polarization is

$$\begin{align}
H_i^{\rm pol}
&:=H_i^{\rm raw}+e^{-2}\int_S\alpha_iE_{y,i}\,ds
=H_i^{\rm raw}-\int_S\alpha_i\Pi_i^t\,ds,\\
\boxed{{dH_i^{\rm pol}\over dt}
&=e^{-2}\int_S(E_{y,i}\dot\alpha_i+B_i\dot q_i)\,ds
=-\langle\Pi_i,\dot a_i\rangle_S.}
\end{align}$$

This is not the fixed-history oscillator Hamiltonian naively added across the cut. On the matched locus,

$$\begin{align}
H_1^{\rm pol}+H_2^{\rm pol}
&=H_1^{\rm raw}+H_2^{\rm raw}
=H_M,\\
{dH_M\over dt}&=0,
\end{align}$$

because $\alpha_1=\alpha_2$ and $E_{y,1}+E_{y,2}=0$. Thus the internal work cancels and $H_M$ is the Hamiltonian of the original connected Maxwell theory. In the compact angular zero sector,

$$\begin{align}
H_i^{\rm pol}&={e^2L\over2C}\nu_i^2+\bar\alpha\nu_i,
&\nu_1+\nu_2&=0,\\
H_M&={e^2L\over C}\nu^2,&
(a,\nu)&=(a_1-a_2,\nu_1).
\end{align}$$

This explicitly retains the Wilson/electric pair. The oscillatory sectors are already included in the spatial integrals. No interface oscillator or outer work is present.

### 10.9. Coulomb restoration as a relation section

For a matched mixed history define, as before,

$$\begin{align}
J=-A_{y,1}(L)-A_{y,2}(L),\qquad
f=(2T)^{-1}J.
\end{align}$$

Full history transmission gives $\dot J=-2T\alpha$, hence $\dot f=-\alpha$. The common transformation $dHf$ therefore sends $\alpha$ to zero and $J$ to zero on the whole slab. At the endpoints it sends

$$\begin{align}
\xi_i^\pm\mapsto(\boldsymbol A_i^\pm+\nabla Hf(t_\pm),\boldsymbol E_i^\pm),
\end{align}$$

which is precisely the allowed endpoint action of Section 10.2; no endpoint identity is required. The transformed histories assemble to a global temporal/Coulomb member of the same relation class.

If a global smooth temporal/Coulomb history is first restricted, then $J=0$, so $f=0$ and restoration changes nothing. For an arbitrary matched regional history, restoration gives the same global class as intrinsic collar assembly by Section 9.6, now with the endpoint evaluations intertwined. Consequently Coulomb restoration is a section/retraction presentation of the matched time-slab relation, locally after choosing the Wilson-angle chart and modulo the residual discrete global proper copies. A bare real-lift shift of $f$ without its compensating based re-fixing is still invalid. The Coulomb section is not the definition of relation composition.

### 10.10. Final theorem and exact boundary

**Maxwell $2+1$ smooth finite-Fourier time-slab composition theorem.** Under the Section 0 geometry, wall frames, trivial relative sector, smooth finite angular support, full compatibility jets and original smooth proper gauge group:

1. the mixed regional relations $\mathscr U_i^\chi$ are well defined and unique on $\mathfrak D_i^\chi$;
2. the core-preserving zero-winding cut-history action, including endpoint actions and based large components, preserves the domain family and intertwines evolution;
3. original descent and full transmission define $\mathscr U_{12}^{\chi,\mathrm{match}}$, whose based-plus-cut classes biject with global smooth solution-history orbits;
4. based reduction followed by cut-history reduction agrees with intrinsic $\mathcal K_h$ reduction and with global proper orbit reduction;
5. the original on-shell actions add exactly and generate the regional and composed exact-isotropic relations;
6. interface symplectic flux and physical work cancel, while the summed polarization Hamiltonian is the original connected Hamiltonian, including the Wilson/electric sector;
7. Coulomb restoration is a time-slab section of the intrinsic composition; and
8. the orbit-level CPS theorem of Section 9 is the equal-time/horizontal-tangent restriction of the same original current identities.

**Claim boundary.** “Exact isotropic” is proved as an identity on admissible differentiable families. No Lagrangian maximality, Fréchet manifold, density/completion, Sobolev quotient, energy topology, quantum statement or general Yang--Mills theorem is included. The Abelian harmonic action, free cut action and trivial stabilizers are model-specific. The cusp and piecewise-quadratic examples remain raw-representative diagnostics and do not obstruct the intrinsic relation theorem.

**Verified:** the analytical construction and identities in Sections 10.1--10.9; the exact sign/action diagnostics in `verification/time-slab-checks.wl`. **Assumptions:** precisely the preceding smooth core and fixed/reachable transition policy. **Not verified:** every excluded completion, model and maximality statement just listed. Within this boundary the Maxwell $2+1$ spatial branch is closed and can be frozen.
