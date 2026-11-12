# Geodesic Observables, Hamiltonian Flows, and Poisson Algebra in AdS₃ Gravity

A boundary-anchored geodesic defines more than a number measuring distance. Its length is a function on the gravitational phase space and therefore generates a canonical transformation of the geometry. A framed geodesic also defines a twist, while a network defines branch lengths whose bulk endpoints depend on the rest of the network. We construct these functions, calculate their Hamiltonian vector fields, and use those fields and their boundary representations to evaluate representative Poisson brackets.

The setting is classical pure Einstein gravity with a planar asymptotic boundary. The calculations reconstruct and relate the area-flow analysis of Kaplan–Marolf [1], the geodesic twist of Wang–Wu [2], the network algebra of Held–Kaplan–Marolf–Wu [3], and the supplied equal-tension Y-network manuscript [4]. The endpoint is a classical observable algebra, not its quantization or a claim about the center of a complete subregion algebra.

## 1. The Geometry and the Phase Space

### 1.1 Fixed boundary data and the planar solution sector

Set the AdS radius to one. The bulk equation is

$$
R_{\mu\nu}=-2g_{\mu\nu}.
$$

A reference solution is Lorentzian Poincaré AdS,

$$
ds^2=\frac{dz^2-du\,dv}{z^2},\qquad
u=t-x,\quad v=t+x,\quad z>0.
$$

Its conformal boundary is two-dimensional Minkowski space. We keep the physical boundary metric and boundary coordinates fixed, denoting them by

$$
g_{(0)}=-dU\,dV.
$$

Bulk diffeomorphisms that vanish appropriately at this boundary are gauge transformations. Transformations with a nontrivial asymptotic action need not be gauge: they can change the boundary stress tensor and the state.

The locally uniformizable planar solutions needed below have the Fefferman–Graham representation

$$
ds^2=\frac{dZ^2}{Z^2}
-\frac1{Z^2}
\left(dU+\frac6cZ^2T_{VV}(V)dV\right)
\left(dV+\frac6cZ^2T_{UU}(U)dU\right),
\qquad c=\frac3{2G}.
$$

The two chiral functions specify the solution in this coordinate patch. We use the normalization of [2, (4.1)–(4.4)] and [4, (2.17)–(2.21)]. Their stress functions are related to the Brown–York normalization used in [1,3] by

$$
T_{UU}=-2\pi t_{UU}^{\mathrm{BY}},\qquad
T_{VV}=-2\pi t_{VV}^{\mathrm{BY}}.
$$

This factor is retained when comparing brackets. We do not identify this planar sector with all global topological sectors of AdS₃ gravity. All observables below are studied on smooth branches where the specified geodesic or stationary network exists and varies differentiably; a change of HRT saddle is not assumed to carry one smooth Hamiltonian vector field through the transition.

### 1.2 Canonical data and the flow convention

Let $\Sigma$ be a smooth spacelike Cauchy surface, with future-directed unit normal $\tau^\mu$, induced metric $h_{ab}$, and

$$
K_{ab}=h_a{}^\mu h_b{}^\nu\nabla_\mu\tau_\nu,
\qquad
\pi^{ab}=\frac{\sqrt h}{16\pi G}(K^{ab}-Kh^{ab}).
$$

The canonical bracket is

$$
\{h_{ab}(x),\pi^{cd}(y)\}
=\delta^c_{(a}\delta^d_{b)}\delta^{(2)}(x-y).
$$

Physical initial data satisfy

$$
\mathcal R[h]+K^2-K_{ab}K^{ab}=-2,
\qquad
D_a(K^{ab}-Kh^{ab})=0,
$$

and are identified under the proper gauge transformations. A gauge-invariant observable has a physical Hamiltonian vector field even when an unreduced canonical calculation represents it only up to such a gauge transformation.

Our convention puts the generator on the right:

$$
X_OF=\{F,O\},\qquad
\Delta_OF=\lambda\{F,O\}+o(\lambda),
\qquad \kappa=8\pi G\lambda=\frac{12\pi\lambda}{c}.
$$

Here $\lambda$ is a flow parameter, not necessarily physical time. We use unscaled proper lengths as generators. For $O=A/(4G)$, replace the coefficient $8\pi G\lambda$ of an $A$-generated variation by $2\pi\lambda$. The left-generator convention used in parts of [1] additionally reverses the sign.

The same vector field has a covariant interpretation. With the canonical symplectic form written as

$$
\Omega_\Sigma(\delta_1,\delta_2)
=\int_\Sigma d^2x\,
(\delta_1\pi^{ab}\delta_2h_{ab}-\delta_2\pi^{ab}\delta_1h_{ab}),
$$

it obeys $\Omega_\Sigma(\delta,X_O)=\delta O$ on the reduced phase space, with fixed boundary sources and the prescribed boundary terms. Propagating the changed initial data with the field equations gives the corresponding linearized solution. This identifies canonical and covariant descriptions of one transformation; it does not replace an actual computation of that transformation.

For repeated use, it is convenient to convert a differential expressed in $(h,K)$ into a flow. Write

$$
\delta O=\int_\Sigma d^2x\sqrt h\,
\left(\frac12H_{h,O}^{ab}\delta h_{ab}
+H_{K,O}^{ab}\delta K_{ab}\right),
$$

and let $H_{h,O}=h_{ab}H_{h,O}^{ab}$ and $H_{K,O}=h_{ab}H_{K,O}^{ab}$. In two spatial dimensions,

$$
K_{ab}=\frac{16\pi G}{\sqrt h}(\pi_{ab}-h_{ab}\pi),
\qquad \pi=h_{ab}\pi^{ab}.
$$

Differentiating this relation gives

$$
\begin{aligned}
\{h_{ab}(x),K_{cd}(y)\}
&=\frac{16\pi G}{\sqrt{h(y)}}
\bigl(h_{a(c}h_{d)b}-h_{ab}h_{cd}\bigr)\delta^{(2)}(x-y),\\
\{K_{ab}(x),K_{cd}(y)\}
&=\frac{8\pi G}{\sqrt{h(y)}}
\bigl(h_{ab}K_{cd}-K_{ab}h_{cd}\bigr)\delta^{(2)}(x-y).
\end{aligned}
$$

Consequently,

$$
\boxed{\begin{aligned}
\Delta_Oh_{ab}
&=2\kappa(H_{K,O\,ab}-h_{ab}H_{K,O}),\\
\Delta_OK_{ab}
&=-\kappa(H_{h,O\,ab}-h_{ab}H_{h,O})
+\kappa\bigl(h_{ab}K_{cd}H_{K,O}^{cd}-K_{ab}H_{K,O}\bigr).
\end{aligned}}
$$

These equations are accurate to first order in $\lambda$. They are the canonical conversion used below, corresponding to [4, (3.8)–(3.9)]. In particular, a dependence on $K$ can change the intrinsic metric; a geometric observable need not generate only an extrinsic-curvature kink.

### 1.3 Boundary coordinates on the same phase space

The Brown–Henneaux boundary algebra supplies a second description of the Poisson structure in this pure-gravity sector. With derivatives of delta functions taken in their first argument, our normalization is

$$
\begin{aligned}
\{T_{UU}(U),T_{UU}(W)\}
&=-2\pi\left[\frac c{12}\partial_U^3\delta(U-W)
+2T_{UU}(U)\partial_U\delta(U-W)
+T'_{UU}(U)\delta(U-W)\right],\\
\{T_{VV}(V),T_{VV}(W)\}
&=-2\pi\left[\frac c{12}\partial_V^3\delta(V-W)
+2T_{VV}(V)\partial_V\delta(V-W)
+T'_{VV}(V)\delta(V-W)\right],\\
\{T_{UU},T_{VV}\}&=0.
\end{aligned}
$$

We use this reduced boundary algebra as an input, not a rederivation of the asymptotic-charge theorem. Its convention can be checked by smearing: $Q_\epsilon=-(2\pi)^{-1}\int\epsilon(U)T_{UU}(U)dU$ generates

$$
\{T_{UU},Q_\epsilon\}
=\epsilon T'_{UU}+2\epsilon'T_{UU}+\frac c{12}\epsilon'''.
$$

For two invariant functions of the solution, the boundary computation is thus

$$
\{F,O\}
=\int dU\,dW\,
\frac{\delta F}{\delta T_{UU}(U)}
\frac{\delta O}{\delta T_{UU}(W)}
\{T_{UU}(U),T_{UU}(W)\}
+(U\rightarrow V).
$$

This is the same physical bracket as the canonical one, expressed in coordinates on the solution space. To apply it, the geometric observables must first be evaluated on the metric above, including their cutoff and endpoint data.

## 2. Anchored Length and Framed Twist as Functions of the Geometry

### 2.1 The uniformizing map and the physical cutoff

Introduce increasing functions $f(U)$ and $g(V)$ satisfying

$$
T_{UU}=\frac c{12}\{f,U\}_{\mathrm{Sch}},\qquad
T_{VV}=\frac c{12}\{g,V\}_{\mathrm{Sch}},
\qquad
\{f,U\}_{\mathrm{Sch}}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
$$

We restrict to configurations for which these uniformizing maps exist on the patch of interest. They are determined only up to independent projective transformations. The explicit bulk coordinate map is

$$
\begin{aligned}
D&=4f'(U)g'(V)-Z^2f''(U)g''(V),\\
z&=\frac{4Z[f'(U)g'(V)]^{3/2}}D,\\
u&=f(U)+\frac{2Z^2 f'(U)^2g''(V)}D,\\
v&=g(V)+\frac{2Z^2 f''(U)g'(V)^2}D.
\end{aligned}
$$

It pulls the Poincaré metric back to the Fefferman–Graham metric in Section 1.1. This is a change of description of the established geometry, not a new background. Near its boundary,

$$
u=f(U)+O(Z^2),\qquad v=g(V)+O(Z^2),\qquad
z=Z\sqrt{f'(U)g'(V)}+O(Z^3).
$$

We regulate observables at the fixed **physical** cutoff $Z=\epsilon$. It follows that the Poincaré cutoff near anchor $i$ is

$$
z_i=\epsilon\sqrt{f'_ig'_i}+O(\epsilon^3),
\qquad
u_i=f(U_i),\quad v_i=g(V_i),\quad
f'_i=f'(U_i),\quad g'_i=g'(V_i).
$$

Thus changing the state at fixed physical cutoff does not keep $z_i$ fixed. The finite endpoint terms produced by this relation are part of the observables [2, (4.7)–(4.9), (4.45); 4, (2.18)–(2.26)].

### 2.2 Evaluating the geodesic length

Take fixed spacelike-separated physical anchors $b_i=(U_i,V_i)$, ordered as $U_1>U_2$, $V_1<V_2$. Put

$$
a=u_1-u_2>0,\qquad b=v_2-v_1>0.
$$

When the homologous extremal geodesic is the entropy saddle for a boundary interval, it is that interval's Hubeny–Rangamani–Takayanagi (HRT) surface; the corresponding leading entropy is $A/(4G)$. We keep the specified smooth saddle fixed when using this terminology.

In the uniformizing coordinates, the geodesic oriented from anchor 1 to anchor 2 is

$$
\begin{aligned}
z(s)&=\frac{\sqrt{ab}}{2\cosh s},\\
u(s)&=\frac{u_1+u_2}{2}-\frac a2\tanh s,\\
v(s)&=\frac{v_1+v_2}{2}+\frac b2\tanh s.
\end{aligned}
$$

Substitution gives $g(\partial_sX,\partial_sX)=1$; hence $s$ is proper length. At the two cutoff intersections,

$$
\begin{aligned}
s_1&=\log\epsilon-\frac12\log(ab)
+\frac12\log(f'_1g'_1)+o(1),\\
s_2&=-\log\epsilon+\frac12\log(ab)
-\frac12\log(f'_2g'_2)+o(1).
\end{aligned}
$$

Subtracting the universal divergence gives the renormalized proper length

$$
A_{12}=\lim_{\epsilon\to0}\bigl[s_2-s_1+2\log\epsilon\bigr]
=a_{12}+\bar a_{12},
$$

where the two chiral functions are

$$
a_{12}=\log\frac{u_1-u_2}{\sqrt{f'_1f'_2}},
\qquad
\bar a_{12}=\log\frac{v_2-v_1}{\sqrt{g'_1g'_2}}.
$$

For other endpoint orderings use absolute values of the chiral separations. This subtraction convention differs from conventions with an added fixed $\log4$ only by a state-independent constant, which has zero Hamiltonian vector field. It does **not** permit dropping the state-dependent derivatives $f'_i,g'_i$.

A projective change $f\mapsto(\alpha f+\beta)/(\gamma f+\delta)$, $\alpha\delta-\beta\gamma=1$, leaves $(u_1-u_2)^2/(f'_1f'_2)$ invariant; the same is true in the other chirality. Thus the dressed length is independent of the projective ambiguity of the uniformizing maps.

### 2.3 Endpoint frames and an explicit evaluation of the twist

Fix the spacetime orientation by $\varepsilon_{zuv}=+1/(2z^3)$. A spacelike curve has a Lorentzian normal plane. Choose a future-directed timelike normal and a spacelike normal with $\varepsilon(\tau^{(i)},e,n^{(i)})=-1$. At each endpoint prescribe this frame from the fixed boundary frame and parallel transport it along the geodesic. Denote the transported frames by $(\tau^{(i)},n^{(i)})$, and form the null normals

$$
l^{(i)}=\tau^{(i)}-n^{(i)},\qquad
r^{(i)}=\tau^{(i)}+n^{(i)}.
$$

They obey $l^{(i)}\cdot r^{(i)}=-2$ and $\nabla_el^{(i)}=\nabla_er^{(i)}=0$. The twist is the constant relative rapidity

$$
l^{(2)}=e^\zeta l^{(1)},\qquad
r^{(2)}=e^{-\zeta}r^{(1)}.
$$

Its invariance under proper bulk diffeomorphisms does not eliminate its dependence on the chosen endpoint frames. An independent boost of an endpoint reference frame changes the observable.

Use the endpoint prescription of [2, (4.42)]: at $Z=\epsilon$, $l^{(1)}\sim2\epsilon\partial_U$, $r^{(1)}\sim2\epsilon\partial_V$, while $l^{(2)}\sim2\epsilon\partial_V$, $r^{(2)}\sim2\epsilon\partial_U$. Radial components are $O(\epsilon^2)$ and the omitted opposite-chiral components are $O(\epsilon^3)$. To evaluate the resulting rapidity, an explicit parallel reference pair on the geodesic is

$$
\begin{aligned}
l^{(0)}&=\frac1{2\cosh^2s}
\left(\sqrt{ab}\,\partial_z+a e^{-s}\partial_u+b e^s\partial_v\right),\\
r^{(0)}&=\frac1{2\cosh^2s}
\left(-\sqrt{ab}\,\partial_z+a e^s\partial_u+b e^{-s}\partial_v\right).
\end{aligned}
$$

Their scalar products and parallel derivatives give $l^{(0)2}=r^{(0)2}=0$, $l^{(0)}\cdot r^{(0)}=-2$, $e\cdot l^{(0)}=e\cdot r^{(0)}=0$, and $\nabla_el^{(0)}=\nabla_er^{(0)}=0$.

Write $l^{(i)}=e^{\beta_i}l^{(0)}$, with the inverse factor for $r^{(i)}$. At the first intersection the reference $u$ component is $2\epsilon\sqrt{a/b}\sqrt{f'_1g'_1}$, whereas the prescribed component is $2\epsilon f'_1$. At the second intersection the reference $v$ component is $2\epsilon\sqrt{b/a}\sqrt{f'_2g'_2}$, whereas the prescribed one is $2\epsilon g'_2$. Their ratios fix

$$
e^{\beta_1}=\sqrt{\frac{bf'_1}{ag'_1}},\qquad
e^{\beta_2}=\sqrt{\frac{ag'_2}{bf'_2}}.
$$

Therefore

$$
\boxed{\zeta_{12}=\beta_2-\beta_1
=\log\frac ab-\frac12\log(f'_1f'_2)+\frac12\log(g'_1g'_2)
=a_{12}-\bar a_{12}.}
$$

The opposite chiral signs have been obtained by comparing transported and prescribed frames; they were not guessed by analogy with the length. This follows [2, (4.53)–(4.61), PDF pp. 33–34]. The coefficient comparison also fixes the logarithm of $v_2-v_1$ omitted in the first printed line of (4.60).

We now have both observables as functions of the same physical metric, with the same fixed anchors and cutoff. Their differentials can be used to compute their flows.

## 3. From Differentials to Length and Twist Flows

### 3.1 Extremality removes the length's interior embedding variation

For a regulated curve with unit tangent $e$, vary both its metric and embedding. The first variation of proper length is

$$
\delta\ell
=\frac12\int_\gamma ds\,e^\mu e^\nu\delta g_{\mu\nu}
-\int_\gamma ds\,(\nabla_e e)_\mu\delta X^\mu
+\left[e_\mu\delta X^\mu\right]_{s_1}^{s_2}.
$$

The geodesic equation removes the interior embedding term. For a complete anchored geodesic, the fixed physical endpoints and the fixed subtraction prescription remove the endpoint displacement term in the renormalized first derivative. This is a statement about the differential of $A[g]=\ell[\gamma[g],g]$, not about the geodesic remaining fixed when the metric changes. It is the chain-rule argument of [1, (2.1)–(2.4)].

Choose the background Cauchy surface to contain $\gamma$. The varied curve need not stay in it. Let $n$ be its unit normal within $\Sigma$, oriented so that $\varepsilon(\tau,e,n)=-1$, and normalize its line delta by

$$
\int_\Sigma d^2x\sqrt h\,F\delta_\gamma=\int_\gamma F\,ds.
$$

In local signed proper distance $\rho$, $\delta_\gamma=\delta(\rho)$ and $n_a=\partial_a\rho$ on the line. The differential is

$$
\delta A=\frac12\int_\Sigma d^2x\sqrt h\,e^ae^b\delta h_{ab}\delta_\gamma.
$$

Thus $H_{h,A}^{ab}=e^ae^b\delta_\gamma$ and $H_{K,A}^{ab}=0$. The conversion in Section 1.2 gives

$$
\boxed{\Delta_Ah_{ab}=0,\qquad
\Delta_AK_{ab}=\kappa n_an_b\delta_\gamma.}
$$

The numerical coefficient follows from $h_{ab}=e_ae_b+n_an_b$; it is not fixed by the word “boost.” For $A/(4G)$ the coefficient is $2\pi\lambda$. This is the AdS₃ specialization, in our right-generator convention, of [1, (2.13)]. The canonical argument there also applies to Einstein–Hilbert gravity with minimally coupled matter; our explicit solution-space calculations remain in pure AdS₃.

There is a useful local constraint check. A spacetime geodesic lying in $\Sigma$ obeys

$$
D_ee=0,\qquad K_{ee}=0.
$$

The Hamiltonian-constraint variation from the displayed kink is $2\kappa(K-K_{nn})\delta_\gamma=2\kappa K_{ee}\delta_\gamma=0$. Its momentum variation is proportional to $D_a(e^ae^b\delta_\gamma)$, which vanishes in the interior of a complete geodesic. Boundary charges are not removed by this interior check.

### 3.2 Varying the transported frames without discarding the endpoints

The twist requires a different calculation. Put $k_{\mu\nu}=\delta g_{\mu\nu}$ and let $V^\mu=\delta X^\mu$ be the displacement of the geodesic. The covariant variation of a vector is

$$
\delta^{(c)}W^\mu=\delta W^\mu+\Gamma^\mu{}_{\nu\rho}V^\nu W^\rho,
\qquad
\delta_g\Gamma^\mu{}_{\alpha\beta}
=\frac12g^{\mu\nu}(\nabla_\alpha k_{\beta\nu}
+\nabla_\beta k_{\alpha\nu}-\nabla_\nu k_{\alpha\beta}).
$$

Varying the geodesic and parallel-transport equations gives

$$
\begin{aligned}
\nabla_e\nabla_eV+R(V,e)e+\delta_g\Gamma(e,e)&=0,\\
\nabla_e\delta^{(c)}W+R(V,e)W+\delta_g\Gamma(e,W)&=0
\qquad (W=\tau^{(i)},n^{(i)}).
\end{aligned}
$$

Only the boost component is needed. Define $H_i=k(\tau^{(i)},n^{(i)})$ and $b_i^{\rm fr}=n^{(i)}\cdot\delta^{(c)}\tau^{(i)}$. In constant curvature $-1$, the normal projection $n^{(i)}\cdot R(V,e)\tau^{(i)}$ vanishes. The remaining connection variation gives

$$
\frac d{ds}\left(b_i^{\rm fr}+\frac12H_i\right)=I(s),
\qquad
I=\frac12n^\alpha\tau^\beta e^\gamma
(\nabla_\alpha k_{\beta\gamma}-\nabla_\beta k_{\alpha\gamma}).
$$

The antisymmetric normal contraction makes $I$ independent of an oriented boost of the normal frame. Integrating from the independently prescribed endpoint of each frame, and then varying $l^{(2)}=e^\zeta l^{(1)}$, yields

$$
\delta\zeta
=\int_{s_1}^{s_2}I\,ds
+\left[\frac12H_1+b_1^{\rm fr}\right]_{s_1}
-\left[\frac12H_2+b_2^{\rm fr}\right]_{s_2}.
$$

The moving curve is already included in $\delta^{(c)}$. In particular, this formula has not treated its endpoint frames as arbitrary fixed coordinate vectors [2, (3.13)–(3.24)].

To convert the bulk term to initial data, use the Cauchy-adapted frame $(\tau,e,n)$ along $\gamma$. The Gauss relations give $D_ee=D_en=0$, $K_{ee}=0$, $\nabla_e\tau=K_{en}n$, and $\nabla_en=K_{en}\tau$. Substitution into the variation of $K_{en}$ gives

$$
I=\frac12K_{en}\,\delta h_{nn}-\delta K_{en}
-\frac12\frac d{ds}k(\tau,n).
$$

For example, in a Gaussian-normal representative with $k_{\tau\mu}=0$ on $\Sigma$, the connection terms reduce to

$$
\frac12\bigl[(\nabla_nk)(e,\tau)-(\nabla_\tau k)(e,n)\bigr]
=-\delta K_{en}+\frac12K_{en}\delta h_{nn}.
$$

The full regulated differential is consequently

$$
\begin{aligned}
\delta\zeta
&=\int_{s_1}^{s_2}ds\,
\left(\frac12K_{en}n^an^b\delta h_{ab}
-e^an^b\delta K_{ab}\right)+E_1-E_2,\\
E_i&=\frac12H_i(s_i)+b_i^{\rm fr}(s_i)
+\frac12k(\tau,n)|_{s_i}.
\end{aligned}
$$

These endpoint terms matter. The passage from this equation to an unrestricted global canonical differential with $E_1-E_2=0$ is assumed, not proved, in [2, (3.35)–(3.36), footnote 14]. Even compact support of $k$ away from the endpoints does not by itself prove that the covariant endpoint-frame response vanishes. We therefore first read off the **interior** differential, or equivalently restrict to test variations with the complete $E_1-E_2=0$; the global anchored field will be obtained independently from the dressed functions in Section 3.3.

The interior kernels are

$$
H_{h,\zeta}^{ab}=K_{en}n^an^b\delta_\gamma,
\qquad
H_{K,\zeta}^{ab}=-e^{(a}n^{b)}\delta_\gamma.
$$

Their traces are $H_{h,\zeta}=K_{en}\delta_\gamma$, $H_{K,\zeta}=0$, and $K_{ab}H_{K,\zeta}^{ab}=-K_{en}\delta_\gamma$. The two trace contributions to $\Delta K$ cancel. The local representative is

$$
\boxed{\begin{aligned}
\Delta_\zeta h_{ab}
&=-\kappa(e_an_b+n_ae_b)\delta_\gamma,\\
\Delta_\zeta K_{ab}
&=-\kappa K_{en}n_an_b\delta_\gamma.
\end{aligned}}
$$

This is [2, (3.37)]. Keeping a general containing slice exposes the second equation; it disappears if $K_{ab}=0$ is imposed from the start. The calculation has not established the discarded endpoint assumption, nor is that assumption needed to define the covariant observable already evaluated in Section 2.3.

### 3.3 The dressed functions determine the global boundary action

There is a direct way to obtain the boundary flow that keeps the endpoint dressing. Suppose an invariant observable has the form

$$
O=O_0(\{u_i,v_i\})
-\frac12\sum_iw_i^u\log f'_i
-\frac12\sum_iw_i^v\log g'_i,
\qquad D_i^u=\frac{\partial O_0}{\partial u_i},\quad
D_i^v=\frac{\partial O_0}{\partial v_i}.
$$

The weights are constant for the observables considered here. Properly anchored functions are invariant under $f\mapsto f+P(f)$ for quadratic $P$, so

$$
\sum_iD_i^uP(u_i)=\frac12\sum_iw_i^uP'(u_i),
$$

and similarly in $v$. This is the condition that removes the arbitrary projective modes; it will be checked for the network functions as well.

To obtain the stress action on the uniformizing map, vary its Schwarzian. If $\mathcal S_f=\{f,U\}_{\rm Sch}$, direct differentiation gives

$$
\delta\mathcal S_f[f'\epsilon]
=\epsilon\mathcal S_f'+2\epsilon'\mathcal S_f+\epsilon'''.
$$

Comparison with $\{T,Q_\epsilon\}$ in Section 1.3 therefore gives $\{f,Q_\epsilon\}=\epsilon f'+P_\epsilon(f)$, where the quadratic is the homogeneous solution of the linearized Schwarzian equation. Unsmeared, this is

$$
\{T_{UU}(U),f(W)\}
=2\pi f'(W)\delta(U-W)+P_U(f(W)),
$$

where $P_U$ is the compensating quadratic required by the chosen uniformization gauge. Differentiate this equation with respect to $W$ before differentiating $O$. The resulting polynomial terms cancel by the displayed identity, leaving

$$
\boxed{\begin{aligned}
\{T_{UU}(U),O\}
={}&2\pi\sum_i\left(D_i^uf'_i
-\frac{w_i^u}{2}\frac{f''_i}{f'_i}\right)\delta(U-U_i)
+\pi\sum_iw_i^u\delta'(U-U_i),\\
\{T_{VV}(V),O\}
={}&2\pi\sum_i\left(D_i^vg'_i
-\frac{w_i^v}{2}\frac{g''_i}{g'_i}\right)\delta(V-V_i)
+\pi\sum_iw_i^v\delta'(V-V_i).
\end{aligned}}
$$

The delta-prime terms come from the endpoint normalization, not from moving the physical anchors. For $A_{12}$, both chiral weights at each endpoint are $1$ and $D_1^u=-D_2^u=1/a$, $D_1^v=-D_2^v=-1/b$. The projective identities reduce to $\sum D_i^u=0$, $\sum D_i^uu_i=1$, $\sum D_i^uu_i^2=u_1+u_2$. For $\zeta_{12}$ the $v$ coefficients and weights are reversed. This gives [2, (4.62)] and the length counterpart, including their endpoint terms.

To obtain the bulk interpretation, integrate these boundary sources. Write $\Delta f(U)=\eta^u(f(U))$. Linearizing the Schwarzian by composition gives

$$
\Delta T_{UU}=\frac c{12}(f')^2\partial_u^3\eta^u.
$$

After changing variables from $U$ to $u$, the delta term from transforming $\delta'(U-U_i)/(f')^2$ cancels the $f''_i/f'_i$ term in the boxed source. What remains is

$$
\partial_u^3\eta^u
=2\kappa\sum_iD_i^u\delta(u-u_i)
+\kappa\sum_iw_i^u\delta'(u-u_i).
$$

A normalized integral is

$$
\begin{aligned}
\eta^u(u)&=-\kappa\sum_i
\left[D_i^u(u-u_i)^2+w_i^u(u-u_i)\right]\Theta(u_i-u)+P^u(u),\\
\eta^v(v)&=+\kappa\sum_i
\left[D_i^v(v-v_i)^2+w_i^v(v-v_i)\right]\Theta(v-v_i)+P^v(v).
\end{aligned}
$$

Here $P^u,P^v$ are global quadratics. For instance $\partial_u^3[(u-u_i)^2\Theta(u_i-u)]=-2\delta(u-u_i)$; this fixes the coefficient of the integrated source.

For the complete geodesic, define

$$
P_{12}(u)=\frac{(u-u_1)(u-u_2)}{u_1-u_2},\qquad
Q_{12}(v)=\frac{(v-v_1)(v-v_2)}{v_1-v_2},
$$

and let $I_u$ and $I_v$ be the indicators of $(u_2,u_1)$ and $(v_1,v_2)$. Combining the endpoint terms gives

$$
\begin{array}{c|cc}
&\eta^u-P^u&\eta^v-P^v\\ \hline
A_{12}&-\kappa P_{12}I_u&+\kappa Q_{12}I_v\\
\zeta_{12}&-\kappa P_{12}I_u&-\kappa Q_{12}I_v
\end{array}
$$

Thus the only difference between the two flows is the sign in one chirality. These are infinitesimal fields at a given solution, not an assumption of a smooth finite-$\lambda$ flow.

### 3.4 Relative Killing fields produce the local boost and shift

Each regional boundary field above is quadratic and therefore has an exact AdS Killing lift. For quadratic $p(u),q(v)$ define

$$
\mathcal L[p,q]
=\frac z2(p'+q')\partial_z
+\left(p+\frac{z^2}{2}q''\right)\partial_u
+\left(q+\frac{z^2}{2}p''\right)\partial_v.
$$

Its Lie derivative of the Poincaré metric is zero. To relate these fields to the original metric variation, let $\Phi_T$ denote the explicit uniformizing map in Section 2.1. Since $g_{\rm phys}=\Phi_T^*g_{\rm AdS}$, differentiation at fixed physical coordinates gives

$$
\Delta g_{\rm phys}=\Phi_T^*(\mathcal L_{\xi_{\rm FG}}g_{\rm AdS}),
\qquad \xi_{\rm FG}=(\Delta\Phi_T)\circ\Phi_T^{-1}.
$$

This specifies the fixed-source FG variation; distributional sources are understood through the chosen regulation. To expose its interior gluing action, use the localized representative of [2, (4.69), footnote 21] on the uniformizing image of $\Sigma$. Let $\Sigma_+$ be the side attached to the finite boundary segment between anchors 1 and 2, and $\Sigma_-$ its complement. Set $\rho>0$ in $\Sigma_+$ and $n=D\rho$ on $\gamma$. This agrees with the orientation in Section 2.3; on an equal-time semicircle, $n$ points toward decreasing $z$ at the apex. Both boundary indicators $I_u,I_v$ equal $1$ on the finite segment and $0$ on the complement. Hence the regional Killing fields are

$$
\begin{aligned}
\xi_-&=\mathcal L[P^u,P^v],\\
\xi_+^A&=\mathcal L[P^u-\kappa P_{12},P^v+\kappa Q_{12}],\\
\xi_+^\zeta&=\mathcal L[P^u-\kappa P_{12},P^v-\kappa Q_{12}],\\
\xi_{\rm loc}|_\Sigma&=\Theta(-\rho)\xi_-+\Theta(\rho)\xi_+.
\end{aligned}
$$

The local metric representative is $\Phi_T^*(\mathcal L_{\xi_{\rm loc}}g_{\rm AdS})$ near $\Sigma$. The gauge adjustment exposing this line-local form need not preserve the strict asymptotic gauge; the qualification in Section 3.5 applies to this representative, not just to a later interpretation. The common quadratic fields cancel from $\chi=\xi_+-\xi_-$. Put

$$
S_\gamma=\mathcal L[P_{12},Q_{12}],
\qquad B_\gamma=\mathcal L[-P_{12},Q_{12}].
$$

Substitution of the parametrized geodesic gives

$$
S_\gamma|_\gamma=e,\quad \nabla S_\gamma|_\gamma=0,
\qquad
B_\gamma|_\gamma=0,\quad
\nabla_\mu B_{\gamma\nu}|_\gamma=n_\mu\tau_\nu-\tau_\mu n_\nu.
$$

The relative field $\chi=\xi_+-\xi_-$ is therefore

$$
\chi_A=\kappa B_\gamma,\qquad
\chi_\zeta=-\kappa S_\gamma.
$$

The first fixes the geodesic pointwise and boosts its normal plane. The second translates along the geodesic. This identifies the transformations from the actual boundary kernels [2, §4.4 and Appendix H], rather than assigning a picture to their names.

For an explicit comparison with the canonical data, decompose a relative field along the line as $\chi=N\tau+Y$, with $Y$ tangent to $\Sigma$. A smooth deformation of a surface in AdS₃ obeys

$$
\begin{aligned}
\Delta h_{ab}&=2D_{(a}Y_{b)}+2NK_{ab},\\
\Delta K_{ab}&=\mathcal L_YK_{ab}+D_aD_bN
+N(K_a{}^cK_{cb}-h_{ab}).
\end{aligned}
$$

For regional Killing fields the smooth regional terms vanish. Set $N_0=N|_\gamma$, $N_1=D_nN|_\gamma$, $Y_0=Y|_\gamma$. Differentiating the jump across $\rho=0$ gives the line-supported terms

$$
\begin{aligned}
\Delta h_{ab}&=2n_{(a}Y_{0b)}\delta_\gamma,\\
\Delta K_{ab}&=\mathcal D_n[N_0n_an_b\delta_\gamma]
+N_1n_an_b\delta_\gamma
+2\partial_sN_0\,e_{(a}n_{b)}\delta_\gamma
+2K_{c(a}n_{b)}Y_0^c\delta_\gamma.
\end{aligned}
$$

The weighted derivative is defined by $\int\sqrt h\,\Phi^{ab}\mathcal D_n[W_{ab}\delta_\gamma]=-\int_\gamma W_{ab}D_n\Phi^{ab}ds$ for smooth test tensors of compact bulk support. These are the distributional projection formulas of [4, (4.41)–(4.44)], here without an internal endpoint.

For the boost, $N_0=Y_0=0$ and $N_1=\kappa$, immediately reproducing $\Delta_AK_{ab}=\kappa n_an_b\delta_\gamma$. For the shift, $N_0=0$, $Y_0=-\kappa e$, and

$$
N_1=-D_n(\tau\cdot\chi_\zeta)=\kappa K_{en}.
$$

The derivative of $\tau$ must be kept even though $\nabla\chi_\zeta|_\gamma=0$. The two surviving curvature terms are

$$
\kappa K_{en}n_an_b\delta_\gamma
-2\kappa K_{e(a}n_{b)}\delta_\gamma
=-\kappa K_{en}n_an_b\delta_\gamma,
$$

because $K_{ee}=0$. Together with $\Delta h_{ab}=-2\kappa e_{(a}n_{b)}\delta_\gamma$, this reproduces the canonical interior result on a general slice. The boundary derivation used the globally dressed observable and did not assume the unproved vanishing of its canonical endpoint terms.

### 3.5 Boundary attachment and the limit of the localized picture

The distributional formulas specify initial data and a useful bulk representative. They do not license changing the prescribed boundary metric or the boundary Cauchy cut. In [1, §§2.2–2.3], the older kink and the HRT-area flow share the same interior initial-data kink but differ in how a wedge is attached to the fixed boundary; the boundary-condition-preserving flow includes the compensating asymptotic action. One cannot discard that action as a proper gauge transformation when it changes stress-tensor observables.

Likewise, [2, §6.2] observes that a representative displaying only the geodesic-supported kink or shift can have $\Delta g_{ZA}=O(Z^{-1})$ rather than the strict Brown–Henneaux $g_{ZA}=O(Z)$. This is a restriction on that gauge representation, not a statement that the anchored observable has no Hamiltonian action. The boundary-source computation above supplies its phase-space action; an admissible bulk gauge or a specified enlargement of the gauge representation is needed to compare localized metrics.

There is also a UV qualification. The finite flow of a sharply anchored area need not remain a smooth finite-energy solution: [1, (3.7)–(3.8)] exhibits singular endpoint stress and divergent energy. Our calculations concern infinitesimal brackets of regulated observables and their specified limits, not a theorem that exponentiating every distributional vector field yields a smooth physical geometry.

## 4. A Dynamical Junction Changes a Branch-Length Flow

### 4.1 Constructing the equal-tension Y observable

Keep the same geometry and physical boundary cutoff. Choose three pairwise spacelike-separated anchors, with images $p_i=(u_i,v_i)$ in the uniformizing frame. A Y-network consists of spacelike geodesics from these anchors to a common bulk point $X=(u,v,z)$. Define

$$
F_i(X)=z^2-(u-u_i)(v-v_i),\qquad
s_{ij}=-(u_i-u_j)(v_i-v_j)>0.
$$

At Poincaré cutoff $z=\epsilon$, the distance formula is

$$
\cosh\ell_i^{(\epsilon)}(X)
=\frac{F_i(X)+\epsilon^2}{2z\epsilon}.
$$

It gives $\ell_i^{(\epsilon)}=\log(1/\epsilon)+\log(F_i/z)+o(1)$. Thus the off-shell finite branch length is $A_{i,0}(X)=\log(F_i/z)$, and equal tensions mean that the junction extremizes their unweighted sum:

$$
\partial_{X^\mu}\sum_iA_{i,0}(X_\star)=0.
$$

Solving the three equations gives, with $S=s_{12}+s_{23}+s_{31}$,

$$
\begin{aligned}
u_\star&=\frac{s_{23}u_1+s_{31}u_2+s_{12}u_3}{S},\\
v_\star&=\frac{s_{23}v_1+s_{31}v_2+s_{12}v_3}{S},\\
z_\star&=\frac{\sqrt{3s_{12}s_{23}s_{31}}}{S}.
\end{aligned}
$$

If $e_i$ points from anchor $i$ toward the junction, the endpoint derivative of a geodesic length is $\partial_XA_{i,0}=e_{i\mu}$. The stationarity condition is therefore the force balance

$$
\sum_i e_i(X_\star)=0.
$$

Since $e_i^2=1$, it implies $e_i\cdot e_k=-1/2$ for $i\ne k$: the tangents span a spacelike plane and meet at $120^\circ$. We choose a smooth Cauchy surface containing this network. The three distinct tangent directions, together with $K_{e_ie_i}=0$, force $K_{ab}(X_\star)=0$; they do not force the whole surface to have $K=0$.

Substitution of $X_\star$ and conversion from the uniformizing cutoff to the physical cutoff give the observables

$$
\begin{aligned}
A_j^\star
&=\frac12\log\frac{s_{ji}s_{jk}}{s_{ik}}
+\log\frac2{\sqrt3}
-\frac12\log f'_j-\frac12\log g'_j,
\qquad \{i,j,k\}=\{1,2,3\},\\
A_Y^\star&=\sum_jA_j^\star.
\end{aligned}
$$

The dressing is one endpoint contribution per branch. It has no junction-position dependence, so it does not change the force-balance equation. In terms of the complete lengths already constructed,

$$
A_j^\star=\frac12(A_{ji}+A_{jk}-A_{ik})+\log\frac2{\sqrt3}.
$$

This identity fixes which branch observable is meant; it does not by itself define brackets of complete lengths sharing endpoints. The geometric construction and physical cutoff are those of [4, §2, especially (2.6), (2.10), (2.24)–(2.30)].

### 4.2 Solving the junction response at finite cutoff

The distinction from a complete geodesic is already in its first variation. At fixed regulated outer anchors,

$$
\delta\ell_j=\frac12\int_{\gamma_j}k(e_j,e_j)ds_j
+e_j(0)\cdot\delta X_\star.
$$

The junction extremizes the **sum**, not each branch separately. It cannot be held fixed when differentiating $A_j^\star$.

To find $\delta X_\star$, first work at finite physical cutoff, where the stationary regulated junction and all branch lengths $\ell_i$ are finite. Use $-\ell_i\le s_i\le0$, with $s_i=0$ at the junction. Initialize a parallel frame $(e_i,\widehat\tau_i,\widehat n_i)$ there, taking $\widehat\tau_i(0)=\tau_\star$ and $\widehat n_i(0)=n_i(0)$.

The metric-perturbed geodesic equation is the Jacobi equation in Section 3.2. A transverse component $C$ satisfies $C''-C=\mathcal S$, with $C(-\ell_i)=0$ and its prescribed junction value $C(0)$. The homogeneous profile and its derivative are

$$
f_i(s)=\frac{\sinh(s+\ell_i)}{\sinh\ell_i},\qquad
g_i(s)=f_i'(s)=\frac{\cosh(s+\ell_i)}{\sinh\ell_i}.
$$

Multiplication by $f_i$ and integration yields

$$
\int_{-\ell_i}^0f_i\mathcal S\,ds
=[f_iC'-f_i'C]_{-\ell_i}^0
=C'(0)-\coth\ell_i\,C(0).
$$

This gives the endpoint tangent response without an unevaluated Green-function problem. For a parallel normal $a=\widehat\tau_i$ or $\widehat n_i$, define the explicit source integral

$$
I_{i,a}=\int_{-\ell_i}^0ds_i\,
\left[g_i k(e_i,a)
+\frac12 f_i a^\rho(\nabla_\rho k_{\mu\nu})e_i^\mu e_i^\nu\right].
$$

The derivative acts on $k$ before contraction. In the spacelike-normal equation the derivative source $-\partial_sk(e_i,\widehat n_i)$ contributes $-k(e_i,\widehat n_i)|_\star+\int g_i k(e_i,\widehat n_i)ds_i$. The outer endpoint vanishes because $f_i(-\ell_i)=0$. Together with the tangent normalization $2e_i\cdot\delta^{(c)}e_i+k(e_i,e_i)=0$, the response is

$$
\begin{aligned}
\delta^{(c)}e_i^\mu(0)
&=\coth\ell_i\,\Pi_i{}^\mu{}_{\nu}\delta X_\star^\nu+J_i^\mu,
\qquad \Pi_i{}^\mu{}_{\nu}=\delta^\mu{}_{\nu}-e_i^\mu e_{i\nu},\\
J_i={}&-\frac12 k(e_i,e_i)|_\star\,e_i
+\bigl[k(e_i,\widehat\tau_i)|_\star-I_{i,\widehat\tau_i}\bigr]\widehat\tau_i\\
&+\bigl[-k(e_i,\widehat n_i)|_\star+I_{i,\widehat n_i}\bigr]\widehat n_i.
\end{aligned}
$$

Varying force balance now gives a finite linear system,

$$
M=\sum_i\coth\ell_i\,\Pi_i,\qquad
\delta X_\star=-M^{-1}\sum_iJ_i,
\qquad q_j=e_j(0)\cdot M^{-1}.
$$

The inverse is nonsingular for the nondegenerate junction. To evaluate it explicitly, choose plane components $e_1=(1,0)$, $e_2=(-1/2,\sqrt3/2)$, $e_3=(-1/2,-\sqrt3/2)$, and put $\omega_i=\coth\ell_i$. Then

$$
\begin{aligned}
M_\parallel&=
\begin{pmatrix}
3(\omega_2+\omega_3)/4&\sqrt3(\omega_2-\omega_3)/4\\
\sqrt3(\omega_2-\omega_3)/4&\omega_1+(\omega_2+\omega_3)/4
\end{pmatrix},\\
\det M_\parallel&=\frac34(\omega_1\omega_2+\omega_1\omega_3+\omega_2\omega_3)>0,\\
M_\parallel^{-1}&=\frac1{\det M_\parallel}
\begin{pmatrix}
\omega_1+(\omega_2+\omega_3)/4&-\sqrt3(\omega_2-\omega_3)/4\\
-\sqrt3(\omega_2-\omega_3)/4&3(\omega_2+\omega_3)/4
\end{pmatrix},\\
M^{-1}\tau_\star&=(\omega_1+\omega_2+\omega_3)^{-1}\tau_\star.
\end{aligned}
$$

Thus the junction response is fully specified by metric source integrals, rather than a new freely chosen endpoint displacement. Define $d_{ji}=q_j\cdot e_i(0)$ and $c_{ji}=q_j\cdot n_i(0)$. Since $q_j$ lies in the junction plane, its contraction with the timelike part of $J_i$ vanishes. The measured differential becomes

$$
\delta\ell_j=\frac12\int_{\gamma_j}k(e_j,e_j)ds_j
+\sum_i\left[\frac12d_{ji}k(e_i,e_i)+c_{ji}k(e_i,\widehat n_i)\right]_\star
-\sum_i c_{ji}I_{i,\widehat n_i}.
$$

This is the evaluated junction dependence needed for the Hamiltonian calculation [4, (3.16)–(3.33), Appendix A].

### 4.3 Converting the response to canonical fields

The parallel normal frame is not generally the Cauchy-adapted frame. Along each branch write

$$
\widehat\tau_i=\cosh\psi_i\,\tau+\sinh\psi_i\,n_i,
\qquad
\widehat n_i=\sinh\psi_i\,\tau+\cosh\psi_i\,n_i.
$$

Parallel transport, together with $\nabla_{e_i}\tau=K_{e_in_i}n_i$, fixes

$$
\psi_i'(s_i)=-K_{e_in_i}(s_i),\qquad
\psi_i(0)=0.
$$

In a Gaussian-normal variation representative, $k_{\tau\mu}=0$ and $k_{ab}=\delta h_{ab}$ on $\Sigma$. The actual source conversion is

$$
\begin{aligned}
k(e_i,\widehat n_i)&=\cosh\psi_i\,\delta h_{e_in_i},\\
\frac12\widehat n_i^\rho(\nabla_\rho k_{\mu\nu})e_i^\mu e_i^\nu
&=\sinh\psi_i\bigl(\delta K_{e_ie_i}-K_{e_in_i}\delta h_{e_in_i}\bigr)
+\frac12\cosh\psi_i e_i^ae_i^bD_{n_i}\delta h_{ab}.
\end{aligned}
$$

Substitution into the previous differential gives

$$
\begin{aligned}
\delta\ell_j={}&\frac12\int_{\gamma_j}\delta h_{e_je_j}ds_j
+\sum_i\left[\frac12d_{ji}\delta h_{e_ie_i}+c_{ji}\delta h_{e_in_i}\right]_\star\\
&-\sum_i c_{ji}\int_{\gamma_i}ds_i\,
\left[(g_i\cosh\psi_i-f_i\sinh\psi_iK_{e_in_i})\delta h_{e_in_i}
+f_i\sinh\psi_i\delta K_{e_ie_i}
+\frac12f_i\cosh\psi_i e_i^ae_i^bD_{n_i}\delta h_{ab}\right].
\end{aligned}
$$

Normalize branch and point distributions by $\int\sqrt h\,F\delta_i=\int_{\gamma_i}Fds_i$ and $\int\sqrt h\,F\delta_\star=F(X_\star)$. Use the weighted transverse derivative $\mathcal D_{n_i}$ defined in Section 3.4; all tensor weights remain inside it. Integration by parts in the last term gives the finite-cutoff kernels

$$
\begin{aligned}
H_{K,j}^{ab}&=-\sum_i c_{ji}f_i\sinh\psi_i e_i^ae_i^b\delta_i,\\
(H_{h,j}^{ab})_{\rm line}
&=e_j^ae_j^b\delta_j
+\sum_i c_{ji}\mathcal D_{n_i}[f_i\cosh\psi_i e_i^ae_i^b\delta_i]\\
&\quad-2\sum_i c_{ji}(g_i\cosh\psi_i-f_i\sinh\psi_iK_{e_in_i})e_i^{(a}n_i^{b)}\delta_i,\\
(H_{h,j}^{ab})_\star
&=\sum_i[d_{ji}e_i^ae_i^b+2c_{ji}e_i^{(a}n_i^{b)}]\delta_\star,
\qquad (H_{K,j}^{ab})_\star=0.
\end{aligned}
$$

The point terms were already present in the tangent response. They are not optional replacements for the derivative line distribution.

For an interior observable limit at fixed $s_i$, $f_i,g_i\to e^{s_i}$ and $M_\parallel\to(3/2)\mathbf1$. Hence $q_j=(2/3)e_j$, $d_{jj}=2/3$, $d_{ji}=-1/3$ for $i\ne j$, $c_{jj}=0$, and $c_{ji}^2=1/3$ for $i\ne j$. The sign of each $c_{ji}$ remains fixed by the common orientation of $n_i$.

Applying the canonical conversion of Section 1.2, rather than assigning a kink independently to each branch, gives

$$
\boxed{\Delta_jh_{ab}
=2\kappa\sum_{i\ne j}c_{ji}e^{s_i}\sinh\psi_i\,n_{i,a}n_{i,b}\delta_i,}
$$

$$
\boxed{\begin{aligned}
\Delta_jK_{ab}={}&\kappa n_{j,a}n_{j,b}\delta_j
+\kappa\sum_i[d_{ji}n_{i,a}n_{i,b}-2c_{ji}e_{i,(a}n_{i,b)}]\delta_\star\\
&+\kappa\sum_{i\ne j}c_{ji}\Bigl\{
\mathcal D_{n_i}[e^{s_i}\cosh\psi_i\,n_{i,a}n_{i,b}\delta_i]
+K_{n_in_i}e^{s_i}\sinh\psi_i\,n_{i,a}n_{i,b}\delta_i\\
&\hspace{38mm}+2e^{s_i}\cosh\psi_i\,e_{i,(a}n_{i,b)}\delta_i\Bigr\}.
\end{aligned}}
$$

These are [4, (3.42)–(3.46)] in our $h$ notation. When $\psi_i=0$, the intrinsic-metric response vanishes, but the other-branch extrinsic response remains. This special frame coincidence is not a reason to delete those terms from the general result.

Summing over the measured label $j$ is an immediate consistency check. Since $\sum_je_j=0$, one has $\sum_jq_j=\sum_jc_{ji}=\sum_jd_{ji}=0$. All response and junction terms cancel, leaving

$$
\Delta_Yh_{ab}=0,\qquad
\Delta_YK_{ab}=\kappa\sum_i n_{i,a}n_{i,b}\delta_i.
$$

This also follows directly from the total first variation: the coefficient of $\delta X_\star$ is $\sum_i e_i=0$. The individual branch has no such cancellation.

### 4.4 The same response from boundary sources and relative isometries

Differentiate the explicit branch function of Section 4.1. For $i\ne j$, with $k$ the third label,

$$
D_{jj}^u=\frac12\sum_{k\ne j}\frac1{u_j-u_k},\qquad
D_{ji}^u=\frac{u_j-u_k}{2(u_i-u_j)(u_i-u_k)},
$$

and analogously for $v$. Its only derivative dressing is at the measured anchor, so the weights in Section 3.3 are $w_i^u=w_i^v=\delta_{ij}$. Direct substitution verifies

$$
\sum_iD_{ji}^u=0,\qquad
\sum_iD_{ji}^uu_i=\frac12,\qquad
\sum_iD_{ji}^uu_i^2=u_j.
$$

Thus the projective ambiguity cancels for this actual network observable. The boundary observable algebra already contains the explicit result

$$
\boxed{\begin{aligned}
\{T_{UU}(U),A_j^\star\}
&=2\pi\sum_iD_{ji}^uf'_i\delta(U-U_i)
-\pi\frac{f''_j}{f'_j}\delta(U-U_j)+\pi\delta'(U-U_j),\\
\{T_{VV}(V),A_j^\star\}
&=2\pi\sum_iD_{ji}^vg'_i\delta(V-V_i)
-\pi\frac{g''_j}{g'_j}\delta(V-V_j)+\pi\delta'(V-V_j).
\end{aligned}}
$$

The ordinary delta terms at unmeasured anchors are generally nonzero. They encode the junction dependence in boundary data [4, (4.10), (5.20)].

The integrated regional fields are the ones already obtained in Section 3.3, now with $D_i=D_{ji}$ and $w_i=\delta_{ij}$. Across branch $i$, their difference is the Killing lift of

$$
\eta_{j|i}^{\rm rel}
=-\kappa[D_{ji}^u(u-u_i)^2+\delta_{ij}(u-u_i)]\partial_u
+\kappa[D_{ji}^v(v-v_i)^2+\delta_{ij}(v-v_i)]\partial_v.
$$

This equation specifies the full relative bulk field through $\mathcal L[p,q]$ of Section 3.4. On the measured branch it is the unit-normalized boost, $\chi_{j|j}=\kappa B_j$, where $B_j$ is the boost of Section 3.4 for the complete geodesic extending $\gamma_j$. For an unmeasured branch, define the explicit quadratic lifts

$$
P_i^{(u)}=(u-u_i)^2\partial_u+z(u-u_i)\partial_z+z^2\partial_v,
\quad
P_i^{(v)}=z^2\partial_u+z(v-v_i)\partial_z+(v-v_i)^2\partial_v.
$$

Then $\chi_{j|i}=-\kappa D_{ji}^uP_i^{(u)}+\kappa D_{ji}^vP_i^{(v)}$. Its restriction can be evaluated using $X_\star$ and

$$
e_i^\mu=g^{\mu\nu}\partial_\nu\log(F_i/z).
$$

At the junction the value and tangent derivative are both $\kappa c_{ji}\tau_\star$. A Killing field restricted to a geodesic obeys the homogeneous Jacobi equation; these initial data give

$$
\chi_{j|i}|_{\gamma_i}=\kappa c_{ji}e^{s_i}\widehat\tau_i,
\qquad
-\widehat\tau_i^\nu\widehat n_i^\mu\nabla_\mu\chi_{j|i,\nu}=0.
$$

The last datum follows by differentiating the displayed quadratic lift; it is needed to determine the transverse lapse derivative [4, (4.28)–(4.39)]. These relative values describe mismatches of neighboring regions, not three separately chosen motions of one junction.

Projection onto the chosen surface gives

$$
\begin{aligned}
N_0&=\kappa c_{ji}e^{s_i}\cosh\psi_i,
&Y_0&=\kappa c_{ji}e^{s_i}\sinh\psi_i\,n_i,\\
\partial_{s_i}N_0
&=\kappa c_{ji}e^{s_i}(\cosh\psi_i-K_{e_in_i}\sinh\psi_i),
&N_1&=-\kappa c_{ji}e^{s_i}\sinh\psi_i K_{n_in_i}.
\end{aligned}
$$

Use the line formulas of Section 3.4. The $K_{e_in_i}\sinh\psi_i$ terms from $2\partial_sN_0$ and $2K_{c(a}n_{b)}Y_0^c$ cancel. Their remaining normal term is $+\kappa c_{ji}e^{s_i}\sinh\psi_iK_{n_in_i}n_an_b\delta_i$, reproducing the canonical line response above.

A branch now ends at an internal point. Use a smooth bulk test tensor $\Phi^{ab}$ with compact support away from the regulated outer endpoints, but allow its support to reach the junction. The tangential integration by parts then produces

$$
-\int_{\gamma_i}N_0e_{i,(a}n_{i,b)}D_{e_i}\Phi^{ab}ds_i
=\int_{\gamma_i}(\partial_{s_i}N_0)e_{i,(a}n_{i,b)}\Phi^{ab}ds_i
-N_0(0)e_{i,(a}n_{i,b)}\Phi^{ab}(X_\star).
$$

Thus the covariant point contribution is $-\kappa\sum_i c_{ji}e_{i,(a}n_{i,b)}\delta_\star$. To compare it to the canonical point coefficient, use $q_j=d_{ji}e_i+c_{ji}n_i$ and $\sum_i e_i=0$:

$$
\sum_i[d_{ji}e_{i,a}e_{i,b}+c_{ji}e_{i,(a}n_{i,b)}]=0,
\qquad \sum_i d_{ji}=0.
$$

Since $n_in_i=h-e_ie_i$, these give

$$
-\sum_i c_{ji}e_{i,(a}n_{i,b)}
=\sum_i[d_{ji}n_{i,a}n_{i,b}-2c_{ji}e_{i,(a}n_{i,b)}].
$$

The agreement holds after summing the junction contributions, not separately branch by branch. The canonical and regional-Killing constructions have therefore produced the same bulk flow, including the point term [4, (4.41)–(4.53)].

### 4.5 The boundary limit is a separate operation

The replacement $f_i,g_i\to e^{s_i}$ was an interior limit at fixed proper distance from the junction. It cannot be used first at the regulated outer endpoint: there $f_i(-\ell_i)=0$ while $g_i(-\ell_i)=1/\sinh\ell_i$. Even the measured-branch coefficient $c_{jj}^{(\epsilon)}$, which tends to zero, can contribute before endpoint scaling.

The direct canonical Brown–York extraction in [4, §5 and Appendix F] keeps the stationary finite-cutoff network, linearizes at fixed cutoff, takes the interior boundary trace, pairs with a smooth boundary test function, and only then removes the cutoff. Its comparison with the boxed boundary brackets also assumes a controlled differentiated asymptotic collar, finite endpoint rapidities, and convergence of $\ell_j^{(\epsilon)}-\log(1/\epsilon)$ with its ordinary smooth metric and physical-anchor first variations, uniformly on a compact nondegenerate parameter neighborhood (Appendix F.1). In particular it uses $\partial_{(t_i,x_i)}A_j^\star=\lim_{\epsilon\to0}\partial_{(t_i,x_i)}\ell_j^{(\epsilon)}$, not just smoothness at each fixed cutoff. Weak vanishing of the omitted remainders is a separate additional assumption in Appendix F.3. We do not promote this to an unconditional endpoint-control theorem. The boundary brackets displayed here were obtained directly from the dressed functions and the fixed boundary symplectic algebra; the canonical Brown–York calculation is a conditional additional comparison. Nor does that boundary comparison separately test the bulk point coefficient, which was matched above.

## 5. Computing the Observable Poisson Algebra

### 5.1 A usable kernel, with its gauge terms accounted for

The previous sections expressed the observables in terms of $f,g$ and their endpoint derivatives. For several simultaneous lengths it is simpler to differentiate with respect to

$$
\phi(U)=-\frac12\log f'(U),\qquad
\bar\phi(V)=-\frac12\log g'(V),
\qquad k_0=\frac{6\pi}{c}=4\pi G.
$$

These conformal factors are not the Cauchy metric $h$. Their relation to the established stress coordinate is

$$
T_{UU}=-\frac c6(\phi''+\phi'^2),\qquad
\delta T_{UU}=-\frac c6(\partial_U^2+2\phi'\partial_U)\delta\phi,
$$

and similarly for $\bar\phi$. Fix one common projective integration gauge for all functions entering a bracket. The effective kernels of [3, (2.14)–(2.23)] are

$$
\{\phi(U),\phi(W)\}_{\rm eff}=k_0\Theta(W-U),\qquad
\{\bar\phi(V),\bar\phi(W)\}_{\rm eff}=-k_0\Theta(V-W),
\qquad \{\phi,\bar\phi\}=0.
$$

They are not literal brackets of arbitrary gauge-fixed conformal factors. At common basepoint, the difference between the full and effective $U$ kernels has the factorized form

$$
\Delta K(U,W)=A(U)f(W)+B(U)+f(U)C(W)+D(W).
$$

Consequently it drops out of a bracket of $F,G$ if their actual derivatives $R_F=\delta F/\delta\phi$ satisfy

$$
\int R_F(U)dU=0,\qquad \int f(U)R_F(U)dU=0,
$$

and the analogous conditions hold for $G$ and for $\bar\phi$. These are the dilation and special-projective Ward identities: $\delta f=P(f)$ gives $\delta\phi=-P'(f)/2$, a linear combination of $1$ and $f$. Translation of the integration constant has already dropped out of endpoint differences.

There is also a direct normalization check. Acting on the effective kernel with the displayed stress derivative gives

$$
\{\phi(U),T_{UU}(W)\}_{\rm eff}
=-\pi\delta'(W-U)-2\pi\phi'(W)\delta(W-U).
$$

Acting once more with the stress derivative reproduces the $T$ bracket of Section 1.3. Thus this is a computational representation of that same Poisson structure on the invariant functions, not an independently postulated algebra.

For the complete chiral length of Section 2.2, with $U_2<U_1$,

$$
R_{12}(U)=\delta(U-U_1)+\delta(U-U_2)
-\frac{2f'(U)}{u_1-u_2}\mathbf1_{(U_2,U_1)}(U).
$$

The two Ward checks are explicit:

$$
\int R_{12}=2-\frac2{u_1-u_2}\int_{u_2}^{u_1}du=0,
\qquad
\int fR_{12}=u_1+u_2-\frac2{u_1-u_2}\int_{u_2}^{u_1}u\,du=0.
$$

The Y branch functions inherit both identities from their length combination in Section 4.1. We will check them for the other network kernels below.

For admissible regulated functionals, the full contraction is

$$
\{F,G\}=k_0\iint dU\,dW\,R_F^u(U)R_G^u(W)\Theta(W-U)
-k_0\iint dV\,dW\,R_F^v(V)R_G^v(W)\Theta(V-W).
$$

Zero total mass permits replacing each kernel by the skew representative $k_0\operatorname{sgn}(W-U)/2$, or its $V$ counterpart. In particular both chiral sectors have the same skew kernel when written in their own increasing coordinates. A minus sign arises when one coordinate order is **reflected**, not from assigning an extra intrinsic minus sign to the second chirality.

Change integration variables to $u=f(U)$ and $v=g(V)$. A derivative measure of the form $[\sum_i\alpha_i\delta(U-U_i)+f'(U)q(u)]dU$ becomes $\sum_i\alpha_i\delta(u-u_i)du+q(u)du$. This removes the state-dependent Jacobians while retaining the endpoint atoms. Define the dimensionless bilinear

$$
\mathcal B(\mu,\nu)=\iint\mu(du)\nu(dw)\Theta(w-u),
\qquad \Theta(0)=\frac12.
$$

The $U$ contribution to a bracket is $k_0\mathcal B$. The following calculations use this change of variables on arbitrary solutions in our uniformizable sector, not only at the vacuum point.

### 5.2 Two complete lengths with distinct anchors

Consider one chirality, with endpoint values $a>b$ for the first length and $p>q$ for the second, all distinct. Their derivative measures are

$$
\mu_{ab}=\delta_a+\delta_b-\frac2{a-b}\mathbf1_{(b,a)}du,
\qquad
\mu_{pq}=\delta_p+\delta_q-\frac2{p-q}\mathbf1_{(q,p)}du.
$$

The right primitive of the second measure, away from its atoms, is

$$
W_{pq}(u)=\int_u^\infty\mu_{pq}(dw)
=\frac{2u-p-q}{p-q}\mathbf1_{(q,p)}(u).
$$

Therefore the complete operand is

$$
\mathcal B(\mu_{ab},\mu_{pq})
=W_{pq}(a)+W_{pq}(b)-\frac2{a-b}\int_b^aW_{pq}(u)du.
$$

For $q<b<p<a$, only $b$ and the interval $(b,p)$ contribute, giving

$$
\begin{aligned}
\mathcal B
&=\frac{2b-p-q}{p-q}
-\frac{2(p-b)(b-q)}{(a-b)(p-q)}\\
&=-\left[1-2\frac{(a-p)(b-q)}{(a-b)(p-q)}\right].
\end{aligned}
$$

With $\mathcal R=(a-p)(b-q)/[(a-b)(p-q)]$, the result is

$$
\{a_{ab},a_{pq}\}_U=
\begin{cases}
0,&\text{disjoint or nested intervals},\\
-k_0(1-2\mathcal R),&q<b<p<a,\\
+k_0(1-2\mathcal R),&b<q<a<p.
\end{cases}
$$

This reconstructs [1, (4.35)–(4.36)] with all endpoint normalization included. Compute the other chiral contribution in its own ordering and add it to obtain $\{A_{ab},A_{pq}\}$. On a time-reflection-symmetric vacuum slice the reflected order makes the two contributions cancel. They need not cancel for general boundary times and states. Coincident physical anchors are excluded from this formula; taking them to coincide requires a prescription, not substitution into the cross-ratio expression.

### 5.3 Length and twist on the same geodesic: a specified network limit

The local kink and shift suggest a zero bracket, but multiplying their canonical distributions would produce undefined products such as $\delta_\gamma^2$. Nor is antisymmetry alone sufficient to justify a self-bracket of an endpoint-singular chiral length: its derivative with respect to $f$ contains delta-primes at a point where the generated $f$ has a discontinuous first derivative [2, §5].

Use instead the auxiliary network prescribed there. For $\delta>0$, replace each endpoint by a small spacelike pair

$$
(U_i,V_i),\qquad
(\widetilde U_i,\widetilde V_i)=(U_i-2\delta,V_i+2\delta).
$$

Let $\gamma_i$ be the geodesic joining the pair. The common orthogonal geodesic $\gamma^{(r)}$ joins $\gamma_1$ to $\gamma_2$ at finite bulk points. Orient the short geodesics and $\gamma^{(r)}$ left to right. At the two joining points use $n^{(r,1)}=e_1$, $n^{(r,2)}=-e_2$, and complete each to the future-directed oriented normal frame. These geometrically fixed frames define a finite twist $\zeta^{(r)}$; the proper length is $A^{(r)}$.

Their evaluated expressions [2, (5.13)–(5.15)] are particularly useful. For $x_i=u_i$ or $v_i$, with $\widetilde u_i=f(\widetilde U_i)$ and $\widetilde v_i=g(\widetilde V_i)$, put

$$
\mathcal R_x=
\frac{(x_1-x_2)(\widetilde x_1-\widetilde x_2)}
{(x_1-\widetilde x_1)(x_2-\widetilde x_2)},
\qquad
B_x=\log\bigl(\sqrt{\mathcal R_x}+\sqrt{\mathcal R_x-1}\bigr).
$$

For sufficiently small $\delta$ the roots are real and positive. Then

$$
A^{(r)}=B_u+B_v,\qquad \zeta^{(r)}=B_u-B_v.
$$

At nonzero regulator these are cross-ratio functions of four endpoint **values**, with no derivative dressing. Their finite self-brackets are well-defined and vanish; the mixed brackets vanish because the two chiral stress sectors commute. Hence

$$
\{A^{(r)},\zeta^{(r)}\}
=\{B_u,B_u\}-\{B_u,B_v\}+\{B_v,B_u\}-\{B_v,B_v\}=0.
$$

The matching of observables follows from $\widetilde u_i-u_i=-2\delta f'_i+O(\delta^2)$ and $\widetilde v_i-v_i=2\delta g'_i+O(\delta^2)$:

$$
B_u=a_{12}-\log\delta+o(1),\quad
B_v=\bar a_{12}-\log\delta+o(1),\quad
A^{(r)}+2\log\delta\to A_{12},\quad \zeta^{(r)}\to\zeta_{12}.
$$

The resulting algebraic statement is

$$
\boxed{\{A_{12},\zeta_{12}\}_{\text{auxiliary-network limit}}=0.}
$$

This is [2, (5.18)] with its limiting prescription stated. It is not a proof that all possible shared-endpoint regularizations agree, or that the twist commutes with every observable in a wedge.

### 5.4 Four links meeting a constrained vertex

A different network tests brackets between relational branch lengths without introducing a free Y junction. Fix an HRT geodesic $\gamma_{12}$. Extremize the broken curve $a\to P\to b$ subject to $P\in\gamma_{12}$. Its two pieces have lengths $A_a,A_b$, and $P$ divides the original HRT geodesic into lengths $A_1,A_2$. The vertex is varied with the geometry, but its allowed displacement is constrained to the HRT curve.

Take

$$
U_a<U_1<U_b<U_2,\qquad V_a>V_1>V_b>V_2.
$$

The vertex can be solved before differentiating the lengths. In an isometric frame where $\gamma_{12}$ is the vertical geodesic over $(u_1,v_1)$, with its other anchor at infinity, write $D_a=(u_1-u_a)(v_a-v_1)>0$ and $D_b=(u_b-u_1)(v_1-v_b)>0$. The two length functions have $z$ dependence $\log(z+D_i/z)$. Thus

$$
0=\partial_z\log[(z+D_a/z)(z+D_b/z)]
\quad\Longleftrightarrow\quad z_\star^4=D_aD_b.
$$

Returning to finite endpoints by an isometry gives the following evaluated functions [3, (3.8)–(3.11)]. Define

$$
D_{ij}=|(u_i-u_j)(v_i-v_j)|,\quad
r_a=\frac{D_{1a}}{D_{2a}},\quad r_b=\frac{D_{1b}}{D_{2b}},\quad
S=\sqrt{r_a}+\sqrt{r_b},\quad C=\frac{\sqrt{r_a}}S,
\quad E_i=\phi(U_i)+\bar\phi(V_i).
$$

Here $0<C<1$. Up to state-independent endpoint-subtraction constants for each link, the functions are

$$
\begin{aligned}
A_a&=\log S+\frac14\log\frac{D_{1a}D_{2b}D_{2a}^{3}}{D_{12}^{2}D_{1b}}+E_a,\\
A_b&=\log S+\frac14\log\frac{D_{1b}D_{2b}^{3}D_{2a}}{D_{12}^{2}D_{1a}}+E_b,\\
A_1&=\frac14\log\frac{D_{1a}D_{1b}D_{12}^{2}}{D_{2a}D_{2b}}+E_1,\\
A_2&=\frac14\log\frac{D_{2a}D_{2b}D_{12}^{2}}{D_{1a}D_{1b}}+E_2.
\end{aligned}
$$

Their sums give $A_1+A_2=\log D_{12}+E_1+E_2$ and

$$
A_a+A_b=2\log\bigl(\sqrt{D_{1a}D_{2b}}+\sqrt{D_{1b}D_{2a}}\bigr)
-\log D_{12}+E_a+E_b,
$$

with the same understood finite constants. The vertex has therefore already been eliminated from the observables whose derivatives we take.

For the actual derivative calculation set $a=u_a$, $p=u_1$, $b=u_b$, $q=u_2$, so $a<p<b<q$. Let $I_{xy}$ be the indicator of $(x,y)$ in the increasing $u$ coordinate. Each derivative measure is $\mu_i=\delta_{u_i}+\sum_{xy}Q_{i,xy}I_{xy}du$. Differentiating the displayed areas, including

$$
\delta\log S=\frac C2\delta\log r_a+\frac{1-C}2\delta\log r_b,
$$

gives the complete table:

| Link | $(a,p)$ | $(a,q)$ | $(p,b)$ | $(b,q)$ | $(p,q)$ |
|---|---|---|---|---|---|
| $a$ | $-\frac{1+2C}{2(p-a)}$ | $-\frac{3-2C}{2(q-a)}$ | $-\frac{1-2C}{2(b-p)}$ | $+\frac{1-2C}{2(q-b)}$ | $+\frac1{q-p}$ |
| $b$ | $+\frac{1-2C}{2(p-a)}$ | $-\frac{1-2C}{2(q-a)}$ | $-\frac{3-2C}{2(b-p)}$ | $-\frac{1+2C}{2(q-b)}$ | $+\frac1{q-p}$ |
| $1$ | $-\frac1{2(p-a)}$ | $+\frac1{2(q-a)}$ | $-\frac1{2(b-p)}$ | $+\frac1{2(q-b)}$ | $-\frac1{q-p}$ |
| $2$ | $+\frac1{2(p-a)}$ | $-\frac1{2(q-a)}$ | $+\frac1{2(b-p)}$ | $-\frac1{2(q-b)}$ | $-\frac1{q-p}$ |

For every row the two Ward moments are zero:

$$
1+\sum_{xy}Q_{i,xy}(y-x)=0,
\qquad
u_i+\frac12\sum_{xy}Q_{i,xy}(y^2-x^2)=0,
$$

where $u_i=(a,b,p,q)$ in row order. Thus both kinds of discarded gauge terms in Section 5.1 vanish on these particular functions.

The remaining contraction is a finite atom-and-interval calculation. Let $x=(a,p,b,q)$, $\ell_k=x_{k+1}-x_k$, $\alpha_{ik}$ be the atom weight of row $i$ at $x_k$, and $d_{ik}$ its constant density on gap $k$, obtained by adding the supported table entries. Direct integration gives

$$
\begin{aligned}
\mathcal B_{ij}={}&\sum_{k=1}^4\alpha_{ik}
\left(\sum_{l>k}\alpha_{jl}+\frac12\alpha_{jk}+\sum_{m\ge k}d_{jm}\ell_m\right)\\
&+\sum_{k=1}^3d_{ik}\ell_k
\left(\sum_{l>k}\alpha_{jl}+\sum_{m>k}d_{jm}\ell_m\right)
+\frac12\sum_{k=1}^3d_{ik}d_{jk}\ell_k^2.
\end{aligned}
$$

Gap sums run only from $1$ to $3$. For example the first row has gap densities $(Q_{a,ap}+Q_{a,aq},\,Q_{a,aq}+Q_{a,pb}+Q_{a,pq},\,Q_{a,aq}+Q_{a,bq}+Q_{a,pq})$ and atom vector $(1,0,0,0)$; the other rows are assembled by the same support rule. Substitution of the full table yields

$$
\frac1{k_0}\{A_i,A_j\}_U=
\begin{pmatrix}
0&0&-C/2&(1-C)/2\\
0&0&(1-C)/2&-C/2\\
C/2&(C-1)/2&0&0\\
(C-1)/2&C/2&0&0
\end{pmatrix}_{(a,b,1,2)}.
$$

The second chirality has reversed endpoint order. Reflect to $\bar v=-v$; the same table applies in this increasing coordinate, and its finite matrix depends only on the same $C$, not on the individual gaps. The skew kernel changes sign under reflection. Hence the $V$ matrix is precisely minus the displayed $U$ matrix, and all six pairs cancel:

$$
\boxed{\{A_i,A_j\}=0\qquad(i,j\in\{a,b,1,2\}).}
$$

This reconstructs [3, §3.2] from the defining areas. It does not require $\chi_u=\chi_v$ or a time-symmetric state. The constrained stationary vertex and its associated branch functions are essential to the result; a freely moving equal-tension Y junction is a different construction.

### 5.5 A spacelike cross-section gives a nonzero link bracket

Now take two nested HRT geodesics, with anchors ordered as

$$
U_{b1}<U_{a1}<U_{a2}<U_{b2},\qquad
V_{b1}>V_{a1}>V_{a2}>V_{b2}.
$$

Extremize the proper length of a connecting geodesic with both endpoints free to move along the two HRT curves. Its endpoint variation requires orthogonality to each curve. In the entanglement-wedge application this is the entanglement-wedge cross-section (EWCS); we use the real spacelike branch. It splits the original curves into four anchored links $a1,a2,b1,b2$.

Define

$$
\chi_u=\frac{(u_{a2}-u_{a1})(u_{b2}-u_{b1})}
{(u_{a1}-u_{b2})(u_{b1}-u_{a2})},\qquad
\chi_v=\frac{(v_{a2}-v_{a1})(v_{b2}-v_{b1})}
{(v_{a1}-v_{b2})(v_{b1}-v_{a2})}.
$$

Both lie in $(0,1)$. The cross-section length can be obtained by an explicit isometry. In one increasing chiral coordinate put $p<q<r<s$ for the four anchors and set

$$
\Lambda=\sqrt{\frac{(s-q)(s-r)}{(q-p)(r-p)}},\qquad
m(x)=\frac{\Lambda(x-p)/(s-x)-1}{\Lambda(x-p)/(s-x)+1}.
$$

Then $m(p)=-1$, $m(s)=1$, $m(q)=-\rho$, $m(r)=\rho$, where

$$
\rho=\frac{1-\sqrt{1-\chi}}{1+\sqrt{1-\chi}},\qquad
\chi=\frac{4\rho}{(1+\rho)^2}.
$$

Apply this in $u$ and in $-v$, that is, $u_{\rm new}=m_u(u)$ and $v_{\rm new}=-m_{-v}(-v)$, using the bulk isometry extension of Section 2.1. In the resulting frame the outer geodesic has endpoints $(-1,1),(1,-1)$ and the inner one $(-\rho_u,\rho_v),(\rho_u,-\rho_v)$. Their apexes are $(u,v,z)=(0,0,1)$ and $(0,0,\sqrt{\rho_u\rho_v})$. The radial segment between them is a geodesic orthogonal to both. Thus its proper length is

$$
L_{\rm CS}=-\frac12\log(\rho_u\rho_v)
=\mathcal F(\chi_u)+\mathcal F(\chi_v),
\qquad
\mathcal F(\chi)=\log\frac{1+\sqrt{1-\chi}}{\sqrt\chi}.
$$

There is a normalization discrepancy in the specified version of [3]: its (4.2) defines $A_{\rm CS}$ as half this expression. We denote that source-normalized function by

$$
C_{\rm src}=\frac12[\mathcal F(\chi_u)+\mathcal F(\chi_v)],\qquad
\boxed{L_{\rm CS}=2C_{\rm src}.}
$$

For concentric equal-time semicircles of radii $x_a$ and $1$, $\chi=4x_a/(1+x_a)^2$. The actual metric integral is $\int_{x_a}^1dz/z=-\log x_a$, while $\mathcal F(\chi)=-\tfrac12\log x_a$. This factor is multiplicative, not a finite endpoint subtraction: the cross-section has no asymptotic endpoints.

For the other links use $D_{ij}$ and $E_i$ as in Section 5.4, and define

$$
R_a=\frac{D_{a1,b1}D_{a1,b2}}{D_{a2,b1}D_{a2,b2}},\qquad
R_b=\frac{D_{a1,b1}D_{a2,b1}}{D_{a1,b2}D_{a2,b2}}.
$$

Their lengths, up to state-independent finite constants, are [3, (4.13)–(4.16)]

$$
\begin{aligned}
A_{a1}&=\tfrac14\log R_a+\tfrac12\log D_{a1,a2}+E_{a1},&
A_{a2}&=-\tfrac14\log R_a+\tfrac12\log D_{a1,a2}+E_{a2},\\
A_{b1}&=\tfrac14\log R_b+\tfrac12\log D_{b1,b2}+E_{b1},&
A_{b2}&=-\tfrac14\log R_b+\tfrac12\log D_{b1,b2}+E_{b2}.
\end{aligned}
$$

We compute one pair, which already distinguishes this algebra from the preceding four-link algebra. In the $u$ sector set $p=u_{b1}<q=u_{a1}<r=u_{a2}<s=u_{b2}$. Differentiating the cross-ratio gives the density

$$
H(u)=\frac{2I_{qs}}{s-q}+\frac{2I_{pr}}{r-p}
-\frac{2I_{qr}}{r-q}-\frac{2I_{ps}}{s-p},
\qquad
\delta\log\chi_u=\int H(u)\delta\phi(U(u))du.
$$

Since $\partial C_{\rm src}/\partial\chi_u=-1/[4\chi_u\sqrt{1-\chi_u}]$, its derivative measure is $-H(u)du/[4\sqrt{1-\chi_u}]$.

For the second operand, the displayed $A_{b1}$ can be rearranged as

$$
\begin{aligned}
A_{b1}&=\frac12\log\frac{D_{a1,b1}D_{a2,b1}}{D_{a1,a2}}+E_{b1}
+\mathfrak g(\chi_u,\chi_v),\\
\mathfrak g&=\frac14\log\frac{\chi_u^2\chi_v^2}{(1-\chi_u)(1-\chi_v)},
\end{aligned}
$$

again modulo a constant. The last term commutes with $C_{\rm src}$: both are functions of the two mutually commuting chiral cross-ratios. The remaining derivative measure is

$$
j_{b1}(u)=\delta(u-p)+\frac{I_{qr}}{r-q}
-\frac{I_{pq}}{q-p}-\frac{I_{pr}}{r-p}.
$$

Both $H$ and $j_{b1}$ have zero zeroth and first moments; for example $\int H=2+2-2-2=0$ and $\int uH=(s+q)+(r+p)-(r+q)-(s+p)=0$. The full derivative of $A_{b1}$ adds only cross-ratio derivatives, which have the same properties. Thus the effective kernel is valid for these operands as well.

The right primitive $W(u)=\int_u^\infty j_{b1}(w)dw$ vanishes outside $(p,r)$ and is

$$
W(u)=
\begin{cases}
-1+(u-p)[(q-p)^{-1}+(r-p)^{-1}],&p<u<q,\\
\dfrac{(r-u)(q-p)}{(r-q)(r-p)},&q<u<r.
\end{cases}
$$

Its two integrals are $\int_p^qWdu=-(q-p)(r-q)/[2(r-p)]$ and $\int_q^rWdu=+(q-p)(r-q)/[2(r-p)]$. The difference between the middle and first constant densities of $H$ is $2/(s-q)-2/(r-q)$. Therefore

$$
\begin{aligned}
\mathcal B(H,j_{b1})
&=\int H(u)W(u)du
=\frac{(q-p)(r-s)}{(r-p)(s-q)}=-(1-\chi_u),\\
\{C_{\rm src},A_{b1}\}_U
&=-\frac{k_0}{4\sqrt{1-\chi_u}}\mathcal B(H,j_{b1})
=\frac{k_0}4\sqrt{1-\chi_u}.
\end{aligned}
$$

The reflected $v$ ordering gives the opposite sign with its own cross-ratio. Consequently

$$
\boxed{\{C_{\rm src},A_{b1}\}
=\frac{k_0}4\bigl[\sqrt{1-\chi_u}-\sqrt{1-\chi_v}\bigr],}
$$

which reproduces [3, (4.19)]. For the proper length constructed above, the result is instead

$$
\boxed{\{L_{\rm CS},A_{b1}\}
=\frac{k_0}2\bigl[\sqrt{1-\chi_u}-\sqrt{1-\chi_v}\bigr].}
$$

A concrete nonzero example is the Poincaré configuration

$$
b1=(0,0),\quad a1=(1,-1),\quad a2=(3,-2),\quad b2=(5,-3)
$$

in $(U,V)$ coordinates. It satisfies the required spacelike ordering, with $\chi_u=5/6$, $\chi_v=3/4$, so the source-normalized bracket is $k_0(1/\sqrt6-1/2)/4\ne0$. Its zero value on the locus $\chi_u=\chi_v$ is not a vanishing identity on phase space.

Finally compare with the complete outer HRT length. Its derivative measure is

$$
j_{\gamma_b}=\delta_p+\delta_s-\frac2{s-p}I_{ps}du,
$$

whose right primitive on $(p,s)$ is $2(u-p)/(s-p)-1$. Since this is affine and $H$ has both moments zero, $\mathcal B(H,j_{\gamma_b})=0$ in each chirality. Hence

$$
\{L_{\rm CS},A_{b1}+A_{b2}\}=0,\qquad
\{L_{\rm CS},A_{b2}\}=-\{L_{\rm CS},A_{b1}\}.
$$

For the inner HRT sum, the right primitive is $2(u-q)/(r-q)-1$ on $(q,r)$ and zero elsewhere. Here $H$ is constant on $(q,r)$, and $\int_q^r[2(u-q)/(r-q)-1]du=0$, so this bracket vanishes too. This explains why preserving a full HRT length does not force preservation of its relational pieces. The result uses the nested ordering and real spacelike cross-section; no timelike continuation is assumed.

## 6. What the Calculated Algebra Distinguishes

For a complete anchored geodesic, the length generates a relative normal boost and the framed twist generates a relative tangential translation. Their canonical data agree with the interior projections of the globally determined boundary flows. The same-line length–twist bracket vanishes under the stated auxiliary-network prescription.

For a relational branch, the location of its bulk endpoint is part of the observable. The Y construction makes that dependence explicit through the finite-cutoff inverse $M^{-1}$ and metric sources $J_i$. Its branch flow includes other-branch and junction distributions, while force balance removes them from the total-length flow. The boundary stress brackets retain the same dependence through delta sources at unmeasured anchors.

The two last networks show why a general conclusion cannot be inferred from one commutative example. All four constrained-vertex link lengths commute, because their calculated chiral matrices cancel. A spacelike cross-section and a half-link in the second network do not generally commute, even though that cross-section commutes with the corresponding complete HRT length. These are brackets of the specified observables and prescriptions, not a closed presentation of every geodesic observable or a construction of a full quantum algebra.

## References

[1] Molly Kaplan and Donald Marolf, *The action of HRT-areas as operators in semiclassical gravity*, [arXiv:2203.04270v3](https://arxiv.org/abs/2203.04270v3).

[2] Xiao-Shuai Wang and Jie-qiang Wu, *An Observable in Classical Pure AdS3 Gravity: the Twist along a Geodesic*, [arXiv:2312.10751v2](https://arxiv.org/abs/2312.10751v2).

[3] Jesse Held, Molly Kaplan, Donald Marolf, and Jie-qiang Wu, *Link-area commutators in AdS3 area-networks*, [arXiv:2401.02487v1](https://arxiv.org/abs/2401.02487v1).

[4] *Hamiltonian Flows Generated by Geodesic Network Lengths in Classical AdS3 Gravity*, supplied 69-page manuscript. Equation and section references refer to that supplied version.
