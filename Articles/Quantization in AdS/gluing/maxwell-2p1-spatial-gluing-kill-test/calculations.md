# Maxwell 2+1: spatial gluing calculations

## 0. Categories fixed before the comparison

**Re-derived here.** This is classical compact $U(1)$ Maxwell theory, with no matter, on $I\times[-L,L]\times S^1_R$, $I=[t_-,t_+]$. Set $C=2\pi R$, $s\sim s+C$, signature $(-,+,+)$, and use the real convention $A\mapsto A+d\lambda$, $g=e^{i\lambda}$. The physical walls have $A_t=A_s=0$ and fixed frames. Proper transformations equal $1$ on both walls; they are not required to be $1$ on the initial/final Cauchy surfaces. All based large components are retained. The bundle and relative wall trivialization are those of the original benchmark. We work in $h=1$; a reachable fixed $h=e^{i\varphi}$ is handled with a periodic real lift and an explicitly recorded regional frame change. Nonzero winding of $h$ is outside this relative sector.

Fix any finite symmetric angular set $|\ell|\le N$. Coefficients are $C^\infty$ in $(t,x)$ up to the two regional closures. Radial functions are **not truncated**. Data and histories obey every initial-boundary compatibility identity below. The union over finite $N$ is the finite-Fourier smooth core; no topology is defined by assembly and no energy completion is attempted. Gauge maps preserving this core have finite-Fourier *logarithmic derivatives/lifts*, not necessarily finite-Fourier $e^{i\lambda}$. The full smooth gauge group is also used for the independent extension-image calculation.

Three different objects must remain distinct:

1. $\operatorname{Sol}_{\rm sm}$: independently defined, globally smooth finite-Fourier solutions in the fixed global wall frame, modulo **globally smooth** proper maps $\mathcal G_{\rm sm}^{\rm prop}$.
2. $\operatorname{Sol}_{\rm pw}$: locally bounded piecewise smooth potentials in that same frame, with $F=dA$ locally square-integrable, the original Maxwell equations interpreted as distributions, and no interface action. The same smooth proper group acts here. This is an independent distributional diagnostic class, not the image definition of a target space.
3. Regional Coulomb realizations with varying admissible histories. Their literal common-frame assembly is denoted $\operatorname{Asm}_{\rm raw}$. A separately constructed **Coulomb-restored assembly** $\operatorname{Asm}_{\rm C}$ appears in Section 5. It includes regional based re-fixing and is not identified with $\operatorname{Asm}_{\rm raw}$ modulo smooth global gauge.

This distinction is decisive: a continuous piecewise smooth gauge function with a normal derivative jump is not a smooth global gauge transformation. A collar/trivialization construction might represent the same physics differently, but must be specified. We do not silently enlarge the gauge group to make either comparison onto.

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

as sets of solution orbits on this slab. This proves an **explicit restored realization**, not the false raw smooth-orbit equivalence. It preserves the chosen smooth global gauge group and does not put a final topology on its image. It also does not prove that an unspecified collar assembly in the general formalism is choice-independent or agrees with this construction. That identification must be stated before importing this result into the master theorem.

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

**Overall status: conditional; do not mark the general Maxwell spatial-gluing theorem complete.** To use the positive result as the general formalism's $\operatorname{Asm}_h$ and $\mathcal R_h^\chi$, explicitly identify this restored construction with a collar/geometric assembly on regional based classes, including assembly-choice independence and the chosen functional category. The raw and restored maps are not interchangeable under smooth proper gauge on $\operatorname{Sol}_{\rm pw}$. No weaker topology or enlarged gauge group was adopted to hide this difference.

The next bounded step is that identification, with the two counterexamples kept as regression obstructions. No Maxwell $3+1$, high-dimensional non-Abelian theory, energy completion, quantum quotient, or null composition is needed for it.
