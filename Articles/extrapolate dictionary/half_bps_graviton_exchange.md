# Neutral IIB four-point function: the full radial-gauge exchange kernel

## Result and scope

The neutral Einstein–scalar channel isolated in [the contact report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point.md>) admits an explicit **ten-component, off-shell radial-gauge graviton inverse**. Its non-TT terms reduce to two elementary radial kernels,

$$
R_0(u,v)=\frac{u_<^4}{4},\qquad
J(u,v)=\frac{u_<^4u_>^2}{16}-\frac{u_<^6}{48}.
\tag{1}
$$

Together with the spin-two Bessel kernel, these give all order-$1/N^2$ neutral four-point tree contractions **in the specified reduced radial Gaussian** as explicit convergent radial quadratures, not an expression containing an unspecified graviton inverse. For arbitrary overlapping Schwartz sources and independently vanishing radii, its exchange part satisfies

$$
\boxed{\mathcal E_{\boldsymbol a}(j_i)
=\mathcal E_{\boldsymbol0}(j_i)
+\frac14\sum_i a_i^2\mathcal E_{\boldsymbol0}(j_1,\ldots,-\Delta j_i,\ldots,j_4)
+O\!\left(R^4(1+|\log R|)^3\right),\quad R=\max_i a_i.}
\tag{2}
$$

The estimate is uniform on bounded Schwartz sets and arbitrary radius ratios. Combining it with the contact theorem gives the complete tree contraction sum in this prescription the same quadratic correction and an $O(R^4(1+|\log R|)^4)$ remainder. No new quartic source subtraction is required; the quadratic BF source subtraction remains part of the reference functional.

The finite-radius object is **gauge fixed**, not a nonlinear diffeomorphism-invariant observable. The inverse is defined by a regulated radial Hessian prescription, with the conformal contour understood. It is not an inverse with every metric component decaying at the Poincaré horizon. The result includes the off-shell trace and longitudinal sectors; it does not assert that arbitrary nonconserved insertion sources solve all ungauge-fixed Einstein equations. Nor has the finite-radius reduced-Gaussian functional been proved equivalent to an independently specified full gravitational path integral: the boundary-anchored gauge projection, its adjoint source completion and IR endpoint sector still require that argument. This qualification is stronger than merely saying that the answer is gauge dependent. Full comparison with the interacting SYM four-point function, OPE anomalous dimensions and nonlinear dressing is not performed here.

## 1. Theory, insertions and endpoint prescription

Retain the conventions of [the reference](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) and [the neutral-sector derivation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point.md>):

$$
g^{(0)}=\frac{\ell^2}{u^2}(du^2+dx^idx^i),\quad
m^2=-\frac4{\ell^2},\quad
\kappa^2=\frac{4\pi^2\ell^3}{N^2},\quad
\mathcal N^2=\frac{2\pi^2}{\ell},\quad U_a=\mathcal N(a/\ell)^{-2}\phi(a,x).
\tag{3}
$$

The neutral scalar potential has $\lambda_4=-32\kappa^2/(3\ell^2)$ in $S_E\supset\int\sqrt g\,\lambda_4\phi^4/4!$. All retained scalar/vector exchange vertices in this polarization vanish. The actual nonlinear IIB truncation, rather than an inference about all KK harmonics, licenses the Einstein–scalar restriction.

Use $\partial_i\leftrightarrow ik_i$ and $\int_k=d^4k/(2\pi)^4$. Sources pair with $d^4x$ and $W=\log(Z[j]/Z[0])$. Their density and the background factor in $U_a$ are held fixed under metric variation. Smooth radial mollifiers precede the thin-layer limit. The scalar Green function has the logfree BF/Friedrichs boundary condition and $EG=-\delta_g$.

Define the **canonical conformally rescaled metric variable** $q$ by

$$
g=\frac{\ell^2}{u^2}\left[du^2+(\delta_{ij}+2\kappa q_{ij})dx^idx^j\right].
\tag{4}
$$

Thus $h_{ij}=\ell^2u^{-2}q_{ij}$ in the previous convention $\delta g=2\kappa h$. The gauge is scalar independent, fixes lapse and shift to their background values, and fixes the boundary coordinate frame. Ghosts introduce no additional scalar tree exchange at this order.

For definiteness first invert the reduced quadratic radial Hessian with zero Dirichlet data at the UV regulator and at a finite IR wall $L$. Take the UV Friedrichs limit, then $L\to\infty$ on source-source quadratic forms. The wall is an inverse-kernel regulator, not an added physical boundary theory or a claim about global gauge equivalence of a finite-wall nonlinear path integral. There is a concrete reason for this distinction: a compact radial perturbation $\delta g_{uu}=2\eta\ell^2u^{-2}f(u)$ can be removed only if $\partial_u(\xi^u/u)=-\eta f/u$. A diffeomorphism vanishing at both finite walls cannot do so when $\int_\epsilon^L f(u)du/u\ne0$. Thus the reduced regulator omits a finite-wall radial-length sector. On the infinite patch an IR pure-gauge tail may be allowed instead, but its quotient and source projection must be established, not inferred from the cutoff limit alone. No independent edge/global sector is added to the Gaussian studied here. The formulas below specify this prescription fully. In particular, one must not take a polynomial radial-gauge tail, insert it into the unregulated gravitational surface action, and discard its surface term.

## 2. Einstein Hessian and its exact inverse

### 2.1 The ten tangent components

The Euclidean action is $-(2\kappa^2)^{-1}\int\sqrt g(R+12/\ell^2)$ with Dirichlet GHY and the UV gravitational counterterms. Write $t=q_{ii}$ and $d_i=\partial_jq_{ij}$. Its bulk quadratic part is

$$
S_{E,2}=\frac{\ell^3}{2}\int du\,d^4x\,u^{-3}
\left[q'_{ij}q'_{ij}-(t')^2+(\partial_kq_{ij})^2
-2d_id_i+2d_i\partial_it-(\partial_it)^2\right].
\tag{5}
$$

Here $S_{E,2}$ is the quadratic coefficient, not the second derivative with respect to a perturbation parameter. Before endpoint conditions, the ADM reduction also produces

$$
B_2=3\ell^3\int d^4x\left[u^{-4}\left(\frac12t^2-q_{ij}q_{ij}\right)\right]_{\epsilon}^{L}
+S_{\rm ct,2}.
\tag{6}
$$

The UV volume counterterm cancels its UV volume term. The curvature counterterm contributes $-\ell^3/(4\epsilon^2)$ times the spatial bracket in (5). Intrinsic logarithmic/finite terms do not change the zero-Dirichlet interior inverse; they vanish on the normalizable fluctuations used in defining it. Boundary-source response requires retaining the usual anomaly and scheme conventions separately.

One derivation uses $\gamma=\delta+2\kappa q$, $A=\gamma^{-1}\gamma'$, and the radial ADM bulk expression

$$
-\frac{\ell^3}{2\kappa^2}\int u^{-3}\sqrt\gamma
\left\{R[\gamma]+\frac14[(\operatorname{tr}A)^2-\operatorname{tr}A^2]\right\}
+\frac{3\ell^3}{\kappa^2}\left[u^{-4}\sqrt\gamma\right]_{\epsilon}^{L}.
\tag{7}
$$

Expansion gives (5)–(6), modulo tangential divergences. It also explains why the trace direction is indefinite.

Let $D=-\partial_u^2+3u^{-1}\partial_u$. With $\mathbb I_{ij,kl}=\delta_{i(k}\delta_{l)j}$ and, for $p\ne0$,

$$
P_{ij}=\delta_{ij}-p_ip_j/p^2,\quad L_{ij}=p_ip_j/p^2,
$$
$$
\Pi_2{}_{ij,kl}=\tfrac12(P_{ik}P_{jl}+P_{il}P_{jk})-\tfrac13P_{ij}P_{kl},
\quad
\Pi_1{}_{ij,kl}=\tfrac12(P_{ik}L_{jl}+P_{il}L_{jk}+P_{jk}L_{il}+P_{jl}L_{ik}),
\tag{8}
$$

the spectral radial functions are $\varphi_\omega=u^2J_2(\omega u)$, with

$$
D\varphi_\omega=\omega^2\varphi_\omega,\qquad
\int_0^\infty du\,u^{-3}\varphi_\omega\varphi_{\omega'}=\delta(\omega-\omega')/\omega.
$$

The scalar block, in the orthonormal basis $(P/\sqrt3,L)$, is

$$
\mathcal O_s=\begin{pmatrix}-2(\omega^2+p^2)&-\sqrt3\omega^2\\-\sqrt3\omega^2&0\end{pmatrix},\qquad
\mathcal O_s^{-1}=\begin{pmatrix}0&-1/(\sqrt3\omega^2)\\-1/(\sqrt3\omega^2)&2(\omega^2+p^2)/(3\omega^4)\end{pmatrix}.
\tag{9}
$$

The TT and vector inverses are respectively $(\omega^2+p^2)^{-1}$ and $\omega^{-2}$. Completing the scalar square defines a negative direction which is rotated for the analytic Euclidean Gaussian. No positive real-metric measure is asserted.

### 2.2 Closed radial covariance

Define $\mathscr G$ by $\langle q_{ij}(u,p)q_{kl}(v,p')\rangle=(2\pi)^4\delta(p+p')\ell^{-3}\mathscr G_{ij,kl}(u,v;p)$. Then

$$
\boxed{\mathscr G
=G_p\Pi_2+R_0\Pi_1-\frac{R_0}{3}(P\otimes L+L\otimes P)
+\frac23(R_0+p^2J)L\otimes L,}
\tag{10}
$$
$$
G_p(u,v)=(uv)^2I_2(pu_<)K_2(pu_>).
$$

Here $p=|p|$ in Bessel functions. The kernels satisfy

$$
[-\partial_u u^{-3}\partial_u+p^2u^{-3}]G_p=\delta(u-v),\quad
[-\partial_u u^{-3}\partial_u]R_0=\delta(u-v),\quad
J=\int_0^\infty dw\,R_0(u,w)w^{-3}R_0(w,v).
\tag{11}
$$

The spectral form is equivalently

$$
\mathscr G_{ij,kl}=\int_0^\infty\omega d\omega\,\varphi_\omega(u)\varphi_\omega(v)
\frac{\tfrac12(Q_{ik}Q_{jl}+Q_{il}Q_{jk})-Q_{ij}Q_{kl}/3}{p^2+\omega^2},
\quad Q_{ij}=\delta_{ij}+p_ip_j/\omega^2.
\tag{12}
$$

This massive-Fierz–Pauli-shaped numerator is an algebraic representation of the radial-gauge inverse, not a new bulk massive field. The four powers of $\omega^{-1}$ do not cause an endpoint divergence: $\varphi_\omega(u)=O(\omega^2)$ at fixed $u$, so the worst integrand is $O(\omega)$. At $p=0$ the inverse is directly $R_0(\mathbb I-\delta\otimes\delta/3)$, the continuous fixed-radius limit of (10).

At the finite IR Dirichlet wall,

$$
R_0^L=R_0-\frac{u^4v^4}{4L^4},\qquad
J^L=J-\frac{u^4v^4}{12L^2}+\frac{u^4v^4(u^2+v^2)}{48L^4},
\tag{13}
$$
$$
G_p^L=(uv)^2I_2(pu_<)\left[K_2(pu_>)-\frac{K_2(pL)}{I_2(pL)}I_2(pu_>)\right].
$$

These vanish at $L$, converge on radial compacts, and obey $0\le R_0^L\le R_0$, $0\le J^L\le J$, $0\le G_p^L\le G_p\le R_0$. Thus (10) is a specified limiting bilinear, even though a generic longitudinal response has a $u^2$ gauge tail and is not radially $L^2$. The polynomial tail is locally a residual FG diffeomorphism; generally it cannot be removed globally while preserving the UV frame. Moreover, being locally pure gauge does not make it a null direction of an unspecified endpoint quadratic form. For a longitudinal tail $q_{ij}\sim u^2a(p)L_{ij}$, the volume endpoint in (6) tends to $-3\ell^3\int_p a(p)a(-p)/2$, whereas it vanishes identically for every auxiliary Dirichlet solution. An infinite-patch gauge-equivalence argument must supply the corresponding domain or surface/embedding compensation. This is why the regulated definition matters.

### 2.3 What is, and is not, a constraint solution

The operator from (5) is the tangent Einstein Hessian. Lapse and shift variations before gauge fixing give additionally

$$
\delta E_{uu}/\kappa=\partial^2t-\partial_id_i-3t'/u,\qquad
\delta E_{ui}/\kappa=d_i'-\partial_it',\quad E_{\mu\nu}=G_{\mu\nu}-6g_{\mu\nu}/\ell^2.
\tag{14}
$$

These are not consequences of the tangent equations for arbitrary sources. For example, $q_{14}=q_{41}=u^4e^{ipx^4}$ solves the homogeneous tangent equation but has $\delta E_{u1}/\kappa=4ipu^3e^{ipx^4}$. It is not an allowed homogeneous solution of the regulated Dirichlet inverse. The counterexample nevertheless prevents confusing gauge-fixed inversion with imposing all ungauge-fixed equations.

For scalar insertions the full stress, including radial components, obeys $\nabla^aB^{ij}_{ab}=-J_i\nabla_b\psi_j-J_j\nabla_b\psi_i$. The interior right side is nonzero at finite radii. Formula (10) is precisely an off-shell gauge-fixed covariance that can contract such sources. Its $R_0,J$ pieces are radially nonlocal; they are not replaceable by disposable delta contacts. Insertion-local terms arise when the scalar equations and Ward identities are actually used.

## 3. Explicit finite-radius four-point coefficient

Set

$$
F_a(u,k)=I_0(k\min(u,a))K_0(k\max(u,a)),\quad
f_i(u,x)=\int_k e^{ikx}F_{a_i}(u,k)\widehat j_i(k),
$$
$$
A=\frac{2\pi^2}{\mathcal N\ell^2},\quad A^2=\frac{2\pi^2}{\ell^3},\quad
\chi_i=u^2f_i,\quad \psi_i=A\chi_i.
\tag{15}
$$

Thus the canonical scalar line is exactly the normalized bulk insertion line, not a boundary-source ansatz. Define its dimensionless cross stress

$$
\mathsf b^{ij}_{ab}=\partial_a\chi_i\partial_b\chi_j+\partial_b\chi_i\partial_a\chi_j
-\delta_{ab}\left[\chi_i'\chi_j'+\partial_c\chi_i\partial_c\chi_j-4\chi_i\chi_j/u^2\right],
\quad a,b,c=1,\ldots,4.
\tag{16}
$$

The cubic action is $-\kappa\ell^3\int u^{-3}q_{ab}B_{ab}$, where $B=A^2\mathsf b$. Gaussian contraction and four distinct source derivatives give

$$
\boxed{\mathcal E_{\boldsymbol a}(j_i)=\frac{16\pi^6}{N^2}
\sum_{(ij|kl)}\int_0^\infty\!\frac{du\,dv}{u^3v^3}
\int_p\widehat{\mathsf b}^{ij}_{ab}(u,p)
\mathscr G_{ab,cd}(u,v;p)\widehat{\mathsf b}^{kl}_{cd}(v,-p).}
\tag{17}
$$

The sum is over the three unordered pairings. Its coefficient follows from $\kappa^2\ell^3A^4=16\pi^6/N^2$; no additional $1/2$ or $4!$ occurs. All functions in (17) are now explicit. No assumption of conserved finite insertion stress entered the contraction.

For fixed external momenta, remove the total delta function and replace the vertex in (17) by

$$
b^{ij}_{ab}(u)=-(k_{ia}k_{jb}+k_{ib}k_{ja})r_i r_j
-\delta_{ab}\left[r_i'r_j'-(k_i\cdot k_j)r_i r_j-4r_i r_j/u^2\right],\qquad r_i=u^2F_{a_i}(u,|k_i|).
\tag{18}
$$

The complete formal neutral tree coefficient in this radial Gaussian is (17) plus

$$
\mathcal C_{\boldsymbol a}(j_i)=\frac{512\pi^6}{3N^2}
\int_0^\infty du\,u^3\int d^4x\,\prod_i f_i(u,x).
\tag{19}
$$

Equations (10), (17)–(19) are one explicit finite-radial construction of the full neutral coordinate coefficient. They do not equate this insertion functional with a one-sided on-shell action or a Wilsonian radial action.

### 3.1 A visible insertion contact

For two fixed momenta let $F=F_{a_1}(u,k_1)F_{a_2}(u,k_2)$, $S_{ab}=k_{1a}k_{2b}+k_{2a}k_{1b}$ and $p=k_1+k_2$. The radial equation has $[F_a']_{a}=-1/a$. If $v[q]=\int du\,u^{-3}q_{ab}B_{ab}$ and $t=\operatorname{tr}q$, integration by parts gives

$$
\begin{aligned}
\frac{v[q]}{A^2}={}&\int du\,F\left[-uS_{ab}q_{ab}+\frac{p^2ut-ut''+3t'}2\right]
-\frac{t(a_1)F_{a_2}(a_1,k_2)+t(a_2)F_{a_1}(a_2,k_1)}2\\
&+\left[-\frac{tuF'}2+\frac{(ut'-4t)F}2\right]_0^\infty.
\end{aligned}
\tag{20}
$$

At fixed $k_i>0$, endpoints vanish for $q=O(u^r)$, $r>0$, with matching derivative bounds and polynomial IR growth. For $q=u^4e+O(u^6)$ the first integrand starts at $u^5F$. The displayed slice terms then give genuine $a^4\log a$ corrections. Dropping them is not justified by a transverse-only argument.

For example, $k_2=-k_1$, $|k_1|=k$, $a_1=a_2=a$, and $q_{ab}=u^4\delta_{ab}$ give

$$
\frac{v_a}{A^2}=2k^2\int_0^\infty du\,u^5F_a(u,k)^2-4a^4I_0(ka)K_0(ka),\qquad
\frac{v_0}{A^2}=\frac{32}{15k^4}.
\tag{21}
$$

This exact example is not a uniform soft-momentum estimate. Nor can a fixed-$q=O(u^4)$ theorem simply be iterated: convolution with the boundary trace stress can produce $q_{\rm eff}\sim u^4\log^2u$. The double-integral proof below addresses that issue directly.

## 4. Joint boundary theorem for arbitrary Schwartz sources

All logarithms in estimates use a fixed reference length; take radii below half that length. The constants below depend on finitely many Schwartz seminorms, uniformly on bounded source sets.

### 4.1 The BF cancellation and source bounds

Hausdorff–Young and the Bessel Wronskian imply, for every required spatial multi-index $\alpha$,

$$
\|\partial_x^\alpha f_i(u)\|_4\lesssim L(u),\qquad
\|u\partial_u\partial_x^\alpha f_i(u)\|_4\lesssim1,\quad 0<u\le1,
\quad L(u)=1+|\log u|.
\tag{22}
$$

Indeed $|u\partial_u F_a(u,k)|\le1$, on either side of the slice, follows from $s[I_1(s)K_0(s)+I_0(s)K_1(s)]=1$ and positivity/monotonicity. Also $F_a(u,k)\le I_0(ku)K_0(ku)\lesssim1+\log_-(ku)$. The radial derivative is understood one-sided or almost everywhere at a thin slice: the first weak derivative has a jump but no Dirac delta. These bounds include arbitrarily small momentum; they are not fixed-nonzero-momentum estimates.

For $u\ge1$, $a_i\le1/2$, exponential Bessel bounds and Fourier scaling give

$$
\|\partial_x^\alpha f_i\|_4\lesssim u^{-3-|\alpha|},\quad
\|\partial_u\partial_x^\alpha f_i\|_4\lesssim u^{-4-|\alpha|}.
\tag{23}
$$

The decisive BF identity is

$$
\mathsf b_{ab}=u^4(\partial_af_i\partial_bf_j+\partial_bf_i\partial_af_j
-\delta_{ab}\partial_cf_i\partial_cf_j)
-\delta_{ab}\{u^4f_i'f_j'+2u^3(f_if_j)'\}.
\tag{24}
$$

The apparent $4u^2f_if_j$ term cancels the mass term exactly. Consequently

$$
\|\partial_x^\alpha\mathsf b^{ij}(u)\|_2\lesssim
\begin{cases}u^2L(u),&u\le1,\\u^{-4-|\alpha|},&u\ge1.\end{cases}
\tag{25}
$$

### 4.2 An integrable bound for every exchange sector

The tensor projectors are uniformly bounded Fourier multipliers on $L^2$; their value on the measure-zero set $p=0$ is immaterial. By Plancherel and $G_p\le R_0$, the absolute bilinear is bounded by

$$
C\int du\,dv\,[R_0(u,v)b(u)b(v)+J(u,v)d(u)d(v)],
\tag{26}
$$

where one may take

$$
b(u)=\begin{cases}u^{-1}L(u),&u\le1,\\u^{-7},&u\ge1,\end{cases}
\qquad
d(u)=\begin{cases}u^{-1}L(u),&u\le1,\\u^{-8},&u\ge1.\end{cases}
$$

Here $p^2J$ is controlled by one spatial gradient on each vertex, not by a singular inverse-momentum estimate. Both double integrals converge. For example, in $u<v$, the core $u<\delta$ obeys

$$
\int_0^\delta du\,u^4b(u)\int_u^\infty b(v)dv=O(\delta^4L(\delta)^3),
$$
$$
\int_0^\delta du\,u^4d(u)\int_u^\infty v^2d(v)dv=O(\delta^4L(\delta)).
\tag{27}
$$

These estimates justify the source-source IR-wall limit, the radial mollifier limit, and the joint boundary limit by dominated convergence. For a scalar Dirichlet wall the kernel is obtained by $K_0(ku_>)\mapsto K_0(ku_>)-K_0(kL)I_0(ku_>)/I_0(kL)$; the same bounds hold, with a harmless factor two for the radial derivative. Thus one can remove the scalar and metric wall regulators consistently.

### 4.3 Leading correction and uniform remainder

For $u>2R$, each external line has the expansion

$$
f_{a_i}(u;j_i)=f_0(u;j_i)+\frac{a_i^2}{4}f_0(u;-\Delta j_i)+e_i(u),
\tag{28}
$$

since only $I_0(k a_i)$ depends on the insertion radius there. The inequality

$$
0\le I_0(s)-1-s^2/4\le s^4I_0(s)/64
$$

follows for every Taylor coefficient: at order $s^{2n}$, $n\ge2$, the ratio of the left remainder coefficient to the right coefficient is $4/[n^2(n-1)^2]\le1$. It gives $\|\partial_x^\alpha e_i\|_4\lesssim a_i^4L(u)$ and $\|u\partial_u\partial_x^\alpha e_i\|_4\lesssim a_i^4$ for $u\le1$. For $u\ge1$ these improve to $a_i^4u^{-7-|\alpha|}$ and $a_i^4u^{-7-|\alpha|}$, respectively. Hence the bilinear stress has the two external quadratic biases and an $O(R^4)$ remainder bounded by the same envelopes as in (25).

Expanding both vertices on $u,v>2R$ and applying (26) bounds the remainder there by $O(R^4)$. The complement has $\min(u,v)<2R$ and is controlled by (27), for the finite-radius terms, boundary terms and bias terms alike. This proves (2). Adding the already established contact expansion proves the corresponding statement for $\mathcal C+\mathcal E$ with logarithmic power four. This is a theorem about the specified Euclidean tree coefficient, not a Lorentzian Wightman or operator-algebra theorem.

## 5. A complete non-TT four-point example

Choose four unit Euclidean momenta forming a regular tetrahedron, embedded in $\mathbb R^4$:

$$
k_1=(1,1,1,0)/\sqrt3,\ k_2=(1,-1,-1,0)/\sqrt3,\
k_3=(-1,1,-1,0)/\sqrt3,\ k_4=(-1,-1,1,0)/\sqrt3.
$$

Then $k_i\cdot k_j=-1/3$ for $i\ne j$ and each exchange transfer has $p^2=4/3$. Take equal radii $a$, write $r=u^2F_a(u,1)$, $A_u=r^2$, $D_u=(r')^2+r^2/3-4r^2/u^2$, and $L_u=-2A_u/3-D_u$. Contraction of a single pair gives the explicit integrand

$$
\begin{aligned}
K(a)=\int\frac{du\,dv}{u^3v^3}\bigg[&-\frac{16}{27}G_p A_uA_v
+R_0\left\{\frac89A_uA_v+\frac29(A_uD_v+D_uA_v)-\frac43D_uD_v\right\}\\
&+\frac89J L_uL_v\bigg].
\end{aligned}
\tag{29}
$$

All three pairings are equal. In units where the common external momentum magnitude is one, define $\mathfrak F(a)=N^2\widetilde{\mathcal G}_{c,\rm tree}/(16\pi^6)$. Restoring a common magnitude $\mu$, the dimensionless quantity is $\mu^4N^2\widetilde{\mathcal G}_{c,\rm tree}/(16\pi^6)$, evaluated at dimensionless radius $a=\mu a_{\rm physical}$. Then

$$
\mathfrak F(a)=\frac{32}{3}\int_0^\infty du\,u^3F_a(u,1)^4+3K(a).
\tag{30}
$$

Numerical quadrature at the boundary gives

| contribution to one exchange pairing | value |
|---|---:|
| TT | $-0.00386034663417$ |
| $R_0$ non-TT sectors | $-0.159658178945$ |
| $p^2J$ scalar sector | $+0.00850831294240$ |
| total pairing | $-0.155010212637$ |

Thus

$$
\boxed{\mathfrak F(0)=0.339768802796\ldots .}
\tag{31}
$$

The non-TT contribution is numerically substantial, not an optional contact adjustment. Explicitly splitting the integration at the source slice yields

| $a$ | $[\mathfrak F(a)-\mathfrak F(0)]/a^2$ |
|---:|---:|
| $1/20$ | $0.392202042270$ |
| $1/100$ | $0.349345942509$ |
| $1/500$ | $0.340801372279$ |

These approach the predicted $\mathfrak F(0)$, since $\sum_i |k_i|^2/4=1$. Increasing working precision and extending the integration interval from $40$ to $50$ changes the boundary result by approximately $6\times10^{-19}$. These are numerical stability checks, not certified interval error bounds; the source theorem is proved in §4, not inferred from these plane-wave samples.

## 6. Boundary interpretation and verification scope

The boundary coefficient is explicitly obtained by replacing every $F_a$ in (17)–(19) by $K_0(ku)$. Interior scalar equations then become homogeneous and the full cross stress is conserved there; boundary Ward flux remains. Unlike the finite-source case, one can now check the missing Einstein constraints directly.

For a single pair at fixed positive external momentum magnitudes, let $S_{\mu\nu}=\delta E_{\mu\nu}-\kappa^2B_{\mu\nu}$ be the residual of the full sourced Einstein equation for the response built from (10). The tangent equation gives $S_{ij}=0$. Conservation and the linearized Bianchi identity then imply

$$
S_{ui}'-3S_{ui}/u=0,\qquad S_{uu}'-2S_{uu}/u+ip_iS_{ui}=0,
$$
$$
S_{ui}=c_i u^3,\qquad S_{uu}=c_0u^2-\tfrac12(ip\cdot c)u^4.
\tag{32}
$$

The response has a regular TT tail and a locally pure-gauge polynomial tail, up to exponentially decaying terms; the matter stress also decays exponentially. Its Einstein residual therefore decays at the IR end, forcing $c_i=c_0=0$. This identifies the **conserved boundary exchange** as a full Einstein exchange representative, without asserting the same for nonconserved finite insertions.

A boundary-preserving change of representative has vanishing source flux provided its UV vector obeys, for some $\delta>0$, $\xi^u=O(u^{1+\delta})$ and $\xi^i=O(u^\delta)$ with the corresponding regularity; normalizable metric gauge maps have stronger falloff. Indeed $B_{uu}=O(u^2\log^2u)$, $B_{ui}=O(u^3\log^2u)$ and the flux is proportional to $u^{-3}B_{u\nu}\xi^\nu$. Polynomial IR vectors are harmless against the exponentially decaying stress. The Schwartz construction in §4 supplies the continuous boundary integral, rather than inferring it from pointwise momenta alone. This boundary argument does not prove equivalence of the finite-radius Gaussian functional to a full gravitational path integral.

The physical spin-two sector of the inverse has the Einstein normalization. For example, its metric boundary solution is $(p^2u^2/2)K_2(pu)$ and its nonlocal double-boundary Green coefficient is $-p^4\log p/64$. With the TT Brown–York conversion $T_{ij}=4\ell^3q_{(4)ij}/\kappa$, this gives the TT Fourier coefficient $-\ell^3p^4\log(p^2)/(8\kappa^2)$, corresponding to $C_T=40\ell^3/(\pi^2\kappa^2)=10N^2/\pi^4$. Combined with the scalar Ward identity this requires the tensor OPE coefficient square $8/(45N^2)$, or $2/(45N^2)$ for blocks normalized to $r^\Delta C_l^{(1)}$. Logarithms contain a fixed reference scale; discarded Fourier polynomials are local scheme contacts. This is a normalization/factorization check, not an extraction of the full block decomposition of (17).

For later finite-source identification, the linear boundary-anchored gauge map is explicit. If $H_{\mu\nu}=u^2\delta g_{\mu\nu}/\ell^2$ is compactly supported away from the UV endpoint, the vector setting its radial components to zero obeys

$$
\frac{\xi^u(u,x)}u=-\frac12\int_0^u\frac{H_{uu}(s,x)}s\,ds,\qquad
\xi^i(u,x)=-\int_0^u[H_{ui}(s,x)+\partial_i\xi^u(s,x)]\,ds.
\tag{33}
$$

The anchoring is $\xi^u/u\to0$ and $\xi^i\to0$, not merely $\xi^u\to0$. This defines a metric projection $\mathcal P$, but a comparison to a covariant propagator must use the **adjoint source** $\mathcal P^\dagger B$, with its radial components and observable contacts. Gauge transforming a response to the bare tangent source alone is not that comparison. Establishing the corresponding quadratic-form identity, including the finite IR surface term noted after (13), is the precise remaining finite-radius gap.

[Scalar and inverse checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_checks.wl>) and their [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_checks_results.txt>) test the full ten-component inverse, Bessel equation and jump, radial convolutions and cutoff endpoints, BF cancellation, coupling factors, tetrahedral tensor contraction and the numerical example. The final scalar/inverse run has all exact residuals zero and no messages. Independent derivations established the inverse and the uniform source estimates separately. The [geometric checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_tensor_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange_tensor_checks_results.txt>) contain an independent arbitrary-ten-component Einstein calculation, 21 Einstein-component and 10 action-variation residuals, the ADM endpoint and intrinsic-curvature tests, and the boundary Bianchi and polynomial-tail surface identities. All residuals vanish with no messages; this does not test the missing gauge/endpoint equivalence. Two additional fresh manuscript reviews checked the coupling, source theorem, Ward normalization and scope. Independent SciPy direct two-dimensional quadrature, rather than the Wolfram cumulative-ODE method, reproduced the boundary value and all three finite-radius samples.

**Verified:** an explicit full tangent radial-gauge covariance under a stated endpoint prescription; all neutral tree contractions of that Gaussian as convergent quadratures; their joint Schwartz boundary expansion; the conserved boundary Einstein-constraint check; non-TT numerical contributions and the inherited stress normalization. The finite-wall radial-length obstruction and the nonvanishing polynomial-tail surface term are also explicit results, not merely cautionary possibilities.

**Assumptions:** classical two-derivative IIB in the large-$N$, strong-coupling window; the established nonlinear consistent truncation; fixed UV frame, source density and scalar-independent radial gauge; the BF scalar domain; the analytic conformal Gaussian contour and specified limiting radial inverse. No finite-$N$ or string correction is inserted.

**Not established:** identification of the finite-source reduced-Gaussian functional with an independently specified full Einstein–scalar path integral or dressed observable; a globally small radial-gauge metric response; a full interacting Lorentzian limit; a complete SYM four-point/OPE comparison; or generic-polarization exchange. The immediate finite-radius calculation is the boundary-anchored projection and adjoint-source/endpoint identity described above. Separately, the boundary quadratures can be reduced to conformal/Mellin data for an independent neutral-SYM comparison.
