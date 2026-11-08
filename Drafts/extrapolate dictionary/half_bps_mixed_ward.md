# Finite-radius stress Ward response and the BF contact anomaly

## 1. Result: a complete Euclidean source-response coefficient

The first mixed stress response of the boundary-anchored BF scalar can be completed beyond its TT projection. Two ingredients absent from a TT-only calculation are essential:

1. A finite-radius insertion has a radial and gradient response to a boundary Weyl transformation. It is not a local dimension-two primary at nonzero radius.
2. The retained BF boundary action has a nonzero pure-trace metric vertex when the boundary metric is varied. It cancels a bulk UV endpoint term. The subsequent scalar source subtraction produces a different, genuine boundary contact anomaly.

With the explicitly specified covariant density-source subtraction below, the complete renormalized coefficient has a joint boundary limit in the strong topology of $\mathcal S'(\mathbb R^8)$, uniformly on bounded Schwartz test sets, for arbitrary ratios of the two insertion radii. The theorem includes soft scalar and stress momenta. It is a Euclidean source-response theorem, not an identification of the full interacting Lorentzian operator algebra.

Define

$$
\mathcal K_{ij}(w;x,y;a,b)
=2\left.\frac{\delta C_{ab}[g_{(0)}](x,y)}{\delta g_{(0)ij}(w)}\right|_{g_{(0)}=\delta},
\qquad
C_{ab}(k)=2\pi^2 I_0(ka_<)K_0(ka_>).
\tag{1}
$$

Here $a_<=\min(a,b)$, $a_>=\max(a,b)$ and $C_{ab}$ is the free covariance of the unit-normalized bulk insertions. Fourier transforms use $e^{-ik\cdot x}$ and all incoming momenta satisfy $\mathbf p+\mathbf k_1+\mathbf k_2=0$; write $p=|\mathbf p|$, $q=|\mathbf k_1|$, $r=|\mathbf k_2|$. The momentum-conserving delta function is suppressed. The response uses physical $T$; divide by $\sqrt{C_T}=\sqrt{10}N/\pi^2$ to obtain the unit-stress response at order $N^{-1}$.

For $p>0$, let

$$
\pi_{ij}=\delta_{ij}-\frac{p_ip_j}{p^2},\qquad
\Pi_{ij,kl}=\tfrac12(\pi_{ik}\pi_{jl}+\pi_{il}\pi_{jk})-\tfrac13\pi_{ij}\pi_{kl},
$$
$$
\mathscr L_{ij}[d,\tau]
=\frac{p_id_j+p_jd_i}{p^2}-\frac{p_ip_j(p\cdot d)}{p^4}
+\frac{\pi_{ij}}3\left(\tau-\frac{p\cdot d}{p^2}\right).
\tag{2}
$$

The full answer is

$$
\boxed{\mathcal K^{\rm ren}_{ij}
=4\pi^2\Pi_{ij,kl}k_{1k}k_{1l}\,\mathcal J_{ab}(p,q,r)
+\mathscr L_{ij}[d^{\rm ren},\tau^{\rm ren}].}
\tag{3}
$$

The radial integral is the previously derived insertion diagram,

$$
\mathcal J_{ab}=\int_0^\infty du\,uH_p(u)F_a(q,u)F_b(r,u),
\quad H_p(u)=\frac{p^2u^2}{2}K_2(pu),
$$
$$
F_a(q,u)=I_0(q\min(a,u))K_0(q\max(a,u)).
\tag{4}
$$

Put $R=\max(a,b)$ and

$$
c_{ab}=2\pi^2\log(R/\ell),\qquad C^{\rm ren}_{ab}(k)=C_{ab}(k)+c_{ab}.
$$
$$
\boxed{\begin{aligned}
d_j^{\rm ren}&=k_{1j}C^{\rm ren}_{ab}(q)+k_{2j}C^{\rm ren}_{ab}(r),\\
\tau^{\rm ren}&=-\left(a\partial_a+2+\frac{a^2}2p\cdot k_2\right)C^{\rm ren}_{ab}(r)
-\left(b\partial_b+2+\frac{b^2}2p\cdot k_1\right)C^{\rm ren}_{ab}(q)\\
&\hspace{1em}+2\pi^2+\frac{c_{ab}}2(a^2p\cdot k_2+b^2p\cdot k_1).
\end{aligned}}
\tag{5}
$$

The boundary coefficient follows by replacing $\mathcal J_{ab}$ by $\mathcal J_{00}$ and using

$$
\boxed{\begin{aligned}
C_\partial(k)&=-2\pi^2[\log(k\ell/2)+\gamma_E],\\
d_{\partial j}&=k_{1j}C_\partial(q)+k_{2j}C_\partial(r),\\
\tau_\partial&=-2[C_\partial(q)+C_\partial(r)]+2\pi^2.
\end{aligned}}
\tag{6}
$$

The $+2\pi^2$ is a triple-coincidence trace contact, not a separated-point violation of tracelessness. Neither the boundary-action vertex nor this source anomaly is to be appended to the positive-energy Wightman cut of the preceding calculation.

## 2. Theory, source extension and residual boundary transformations

Use Euclidean AdS$_5$, $m^2=-4/\ell^2$, $\kappa^2=4\pi^2\ell^3/N^2$, and the boundary-normal insertion

$$
\mathcal U_a=\mathcal N(a/\ell)^{-2}\Phi(a,x),\qquad \mathcal N^2=2\pi^2/\ell.
$$

The Einstein action has the Euclidean negative EH sign, Dirichlet GHY and UV counterterms. The minimally coupled scalar has its canonical quadratic action and the completed logfree BF domain. In particular retain

$$
S_{\rm BF}=\frac1{2\ell}\int_{u=\epsilon}\sqrt\gamma
\left(2+\frac1{\log(\epsilon/\ell)}\right)\phi^2.
\tag{7}
$$

The regular Poincaré inverse and the fixed UV anchor/Weyl frame are those of [the dressing construction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_gravitational_dressing.md#L31-L99>). The [reference insertion prescription](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) uses $E\phi=-J$ and $W=\log[Z[j]/Z[0]]$. Sources pair with $d^4x$, not the induced slice volume. Smooth radial mollifiers precede the thin-layer limit. The scalar insertion functional is normalized by its zero-source value. No one-sided wall action replaces this functional; the boundary metric is an additional external source for its response.

For a varying boundary metric, specify the extension: $\Phi$ is evaluated in boundary-normal FG coordinates associated with that metric; the relational label $a$ and prefactor are held fixed when taking the source derivative. This is extra source data, not a claim that an independently defined flat CFT composite has a unique curved-source extension.

In the active convention $\delta_\zeta g=\mathcal L_\zeta g$, $\delta_\zeta\phi=\zeta\cdot\partial\phi$, a boundary perturbation

$$
\delta g_{(0)ij}=\partial_i v_j+\partial_j v_i+2\sigma\delta_{ij}
$$

has the linear FG-preserving extension

$$
\zeta^u=-u\sigma,\qquad \zeta^i=v^i+\frac{u^2}2\partial^i\sigma,
\qquad
H_{ij}=\partial_i v_j+\partial_j v_i+2\sigma\delta_{ij}+u^2\partial_i\partial_j\sigma.
\tag{8}
$$

Thus

$$
\boxed{\delta\mathcal U_a
=v\cdot\partial\mathcal U_a-\sigma(a\partial_a+2)\mathcal U_a
+\frac{a^2}2\partial_i\sigma\,\partial_i\mathcal U_a.}
\tag{9}
$$

Boundary $v,\sigma$ are not gauge redundancies fixing the anchors. The $-2\sigma$ term comes from the scalar field's radial variation at fixed relational prefactor. The $a^2\partial\sigma$ term cannot be dropped even in exact AdS. To avoid declaring an IR-growing PBH vector globally null, first cut its extension off beyond the insertions and use the anchored gauge map. In the region relevant to the insertions it gives (8)–(9), while the underlying representative is a regular pullback of AdS.

The same Green-function covariance law gives $\delta C_{ab}=(\delta_a^x+\delta_b^y)C_{ab}$. For continuous radial sources paired with $da\,d^4x$, the adjoint transformations are

$$
\delta_v j=\partial_i(v^ij),\qquad
\delta_\sigma j=\sigma(j-a\partial_a j)+\frac{a^2}2\partial_i(j\partial_i\sigma).
\tag{10}
$$

A set of fixed delta layers is not closed under these transformations: radial derivative sources or moving labels are generated. The local-primary source rule is therefore not the finite-radius rule.

## 3. Ward data from covariance, and the independent bulk endpoint check

Write $\delta_x=\delta^4(w-x)$ and $\delta_y=\delta^4(w-y)$. Equation (9) fixes the bare response:

$$
\partial_w^i\mathcal K_{ij}=-\delta_x\partial_{xj}C_{ab}-\delta_y\partial_{yj}C_{ab},
$$
$$
\begin{aligned}
\mathcal K_{ii}={}&-\delta_x(a\partial_a+2)C_{ab}-\delta_y(b\partial_b+2)C_{ab}\\
&-\frac{a^2}2\partial_w^i[\delta_x\partial_{xi}C_{ab}]
-\frac{b^2}2\partial_w^i[\delta_y\partial_{yi}C_{ab}].
\end{aligned}
\tag{11}
$$

Their Fourier form is (5) with $C^{\rm ren}$ replaced by $C$ and with its last line omitted. Contact locations are the UV anchors, not the finite-radius bulk positions. Raw radial derivatives at $a=b$ must initially use the common mollifier prescription. The renormalized derivatives will be ordinary, unambiguous derivatives.

### 3.1 The invisible BF metric vertex

A canonical external insertion line is

$$
\psi_a(u,k)=A u^2F_a(k,u),\qquad A^2=2\pi^2/\ell^3,
\qquad \psi_a\sim A u^2K_0(ka)\quad(u\to0).
$$

For a boundary relative metric $h_{(0)}$, the cross-source variation of (7) is

$$
\delta S_{\rm BF}\big|_{j_a j_b}
\longrightarrow2\pi^2\operatorname{tr}(h_{(0)})K_0(qa)K_0(rb).
$$

Since $W=+\log Z$ and the Euclidean weight is $e^{-S}$, the response vertex is

$$
\boxed{\mathcal K^{\rm BF}_{ij}
=-4\pi^2\delta_{ij}K_0(qa)K_0(rb).}
\tag{12}
$$

The $1/\log\epsilon$ piece vanishes here, but the leading completion does not. It vanishes under a TT projection and for a normalizable relative metric $H=O(u^4)$; neither argument applies to an arbitrary boundary metric source.

### 3.2 Explicit integration-by-parts cancellation

Strip $A$ from the two lines and set $v=u^2F_a(q,u)$, $w=u^2F_b(r,u)$, $c=k_1\cdot k_2$, $d_1=p\cdot k_1$, $d_2=p\cdot k_2$. The unhalved tangent cross stress is

$$
b_{ij}=-(k_{1i}k_{2j}+k_{2i}k_{1j})vw
-\delta_{ij}(v'w'-cvw-4vw/u^2).
\tag{13}
$$

The cross variation is $\delta C=\pi^2\int du\,u^{-3}b_{ij}H_{ij}$; hence $2\delta C/\delta h_{(0)}$ has normalization $2\pi^2$ multiplying the relative-metric response pairing. For distinct radii, a diffeomorphism contraction gives

$$
\int_0^\infty du\,u^{-3}p_i b_{ij}
=k_{1j}F_a(q,b)+k_{2j}F_b(r,a)
+2p_jK_0(qa)K_0(rb).
\tag{14}
$$

The first two terms, multiplied by $2\pi^2$, give the divergence in (11); (12) removes the last term.

For the Weyl response, including the $u^2\partial_i\partial_j\sigma$ metric term, the decisive primitive away from the two slices is

$$
u^{-3}\left[\operatorname{tr}b-\frac{u^2}2p_ip_jb_{ij}\right]=\partial_u\mathcal Q,
$$
$$
\mathcal Q=-u^{-2}(v'w'+cvw+4vw/u^2)
-\frac{d_2v'w+d_1vw'}{2u}.
\tag{15}
$$

Its endpoints and jumps are

$$
\mathcal Q(0)=-8K_0(qa)K_0(rb),\quad \mathcal Q(\infty)=0,
\quad [\mathcal Q]_a=\frac{w'(a)}a+\frac{d_2w(a)}2,
\quad [\mathcal Q]_b=\frac{v'(b)}b+\frac{d_1v(b)}2.
$$

Therefore the bulk trace has a spurious $+16\pi^2K_0(qa)K_0(rb)$ UV term as well as the desired insertion contacts. The trace of (12) cancels it exactly. This is an independent action/Green-function check of (11), not a Ward identity imposed after discarding the boundary variation.

For example, at $k_1=(1,0,0,0)$, $k_2=(-1/5,4/5,0,0)$, $a=2/5,b=7/10$, the bulk trace is $99.8079153981\ldots$, the BF vertex is $-142.2014224502\ldots$, and the completed trace is $-42.3935070521\ldots$, agreeing with (11). The wrong omission is large and finite, not a numerical endpoint error.

### 3.3 Completing the tensor

The [established TT diagram](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction.md#L361-L435>) gives the first term of (3), before source subtraction. Direct contraction verifies

$$
p_i\mathscr L_{ij}=d_j,\qquad \mathscr L_{ii}=\tau,\qquad \Pi\mathscr L=0.
\tag{16}
$$

Thus TT, divergence and trace determine the tensor for $p\ne0$. This algebraic statement does not by itself rule out distributions supported at $p=0$; the regular source construction and locally integrable extension used in §5 exclude independently added sectors.

## 4. Covariant source subtraction and the genuine boundary anomaly

The flat BF covariance needs $c_{ab}=2\pi^2\log(R/\ell)$. Its extension to curved sources is not specified by the flat formula alone. For the fixed coordinate source density $j$, choose the minimal diffeomorphism-covariant prescription

$$
W_{\rm ct}[g_{(0)},j]
=\frac12\int d^4x\sum_{a,b}c_{ab}
\frac{j_a(x)j_b(x)}{\sqrt{g_{(0)}(x)}}.
\tag{17}
$$

The sum denotes the bilinear pairing over layers, or its mollified integral. If one instead uses a scalar source $J=j/\sqrt{g_{(0)}}$, (17) becomes $\frac12\int\sqrt{g_{(0)}}\,c_{ab}J_aJ_b$. The two expressions must not be confused while differentiating at fixed source.

Equation (17) adds

$$
\mathcal K^{\rm ct}_{ij}=-c_{ab}\delta_{ij}\delta_x\delta^4(x-y).
\tag{18}
$$

It has no TT part, divergence $-c_{ab}p_j$, and trace $-4c_{ab}$. Using

$$
(a\partial_a+b\partial_b)c_{ab}=2\pi^2
$$

in the bare trace gives exactly (5). In particular, one cannot obtain the renormalized Ward identity simply by replacing $C$ by $C^{\rm ren}$ and discarding the residual $2\pi^2$.

The boundary anomalous contact is

$$
\boxed{\mathcal K^{\rm ren}_{ii}(w;x,y)
=-2[\delta_x+\delta_y]C_\partial(x-y)
+2\pi^2\delta_x\delta^4(x-y).}
\tag{19}
$$

Equivalently, with the boundary density-source Weyl rule $\delta j=2\sigma j$, the quadratic generating-functional anomaly is $+\pi^2\int d^4x\,\sigma j^2$. The source-independent gravitational anomaly cancels in the normalized functional and contributes no two-scalar derivative here.

A direct constant-Weyl check is

$$
C^{\rm ren}_{\partial,e^{2\sigma}\delta}(k)
=e^{-4\sigma}[C_\partial(k)+2\pi^2\sigma]+O(\sigma^2),
$$

which gives the integrated trace $-4C_\partial+2\pi^2$. A finite change $C_\partial\mapsto C_\partial+c_0$ shifts the response by $-c_0\delta_{ij}$ but does not change the anomaly coefficient. The tensor lift satisfies this scheme relation exactly.

Holding the flat contact subtraction independent of the metric would instead give no term (18). That is a different, noncovariant source extension and leaves different logarithmic response contacts. Thus a full contact statement necessarily specifies more than the flat TT amplitude.

Here **minimal** also excludes additional finite curvature-source counterterms and source redefinitions. For example,

$$
\Delta W=\frac12\int d^4x\,\lambda_{ab}\,\mathcal R[g_{(0)}]\frac{j_a j_b}{\sqrt{g_{(0)}}}
\quad\Longrightarrow\quad
\Delta\mathcal K_{ij}=2\lambda_{ab}(p^2\delta_{ij}-p_ip_j).
$$

Here $\mathcal R$ is boundary scalar curvature, not the radial inverse. The coefficient $\lambda_{ab}$ has dimensions length squared. This term leaves the flat covariance and TT response unchanged but shifts the trace by $6\lambda_{ab}p^2$. A choice proportional to $a^2+b^2$ changes only the finite-radius coefficient and disappears at the boundary; a fixed coefficient changes boundary derivative contacts. Neither changes the nonderivative $+2\pi^2$ anomaly. Thus (3) is unique after its source scheme and trace prescription are fixed, not from flat covariance and TT data alone.

## 5. Joint Schwartz boundary theorem, including soft momenta

For the prescription (17), with no independent momentum-edge atoms,

$$
\boxed{\mathcal K^{\rm ren}_{ab}\longrightarrow\mathcal K^{\rm ren}_{\partial}
\quad\text{strongly in }\mathcal S'(\mathbb R^8),\quad a,b\to0,}
\tag{20}
$$

where (3) and (6) define the endpoint. This is joint convergence with no restriction on $a/b$. It holds componentwise for the full tensor and hence for arbitrary Schwartz tensor/scalar source tests. The proof does not differentiate a fixed-momentum asymptotic inside an unbounded Fourier integral.

### 5.1 A global TT majorant

Let $h(t)=I_0(t)K_0(t)$. Monotonicity of $I_0,K_0$ implies

$$
0<F_a(q,u)\le h(qu),\qquad
M=\sup_{t>0}\sqrt t\,h(t)<\infty.
$$

Finiteness of $M$ follows from $h(t)\sim-\log t$ at zero and $h(t)\sim1/(2t)$ at infinity. Therefore, uniformly in both radii,

$$
\mathcal J_{ab}\le\frac{M^2}{\sqrt{qr}}\int_0^\infty H_p(u)du
=\frac{3\pi M^2}{4p\sqrt{qr}}.
\tag{21}
$$

The Euclidean projector is bounded and $|\Pi k_1k_1|\le Cq^2$, so the TT tensor is bounded by $Cq^{3/2}/(p\sqrt r)$. This is homogeneous of degree zero on the independent eight-dimensional momentum space and locally integrable. On its unit sphere the sets $p=0,q=0,r=0$ are disjoint; their nontrivial singular powers are $1$ and $1/2$, below codimension four. At the common origin the radial degree is zero. For $p,q,r>0$, radial dominated convergence gives $\mathcal J_{ab}\to\mathcal J_{00}$. A Schwartz weight then supplies global dominated convergence, even through all soft loci.

### 5.2 Scalar contacts and the apparent equal-radius ambiguity

The [BF scalar estimate](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md#L138-L163>) gives, for every $0<\beta<2$,

$$
|C^{\rm ren}_{ab}(k)-C_\partial(k)|\le C_\beta(kR)^\beta.
\tag{22}
$$

For $a<b$, put $x=ka$, $y=kb$. The two renormalized radial derivatives are

$$
\frac{a\partial_a C^{\rm ren}}{2\pi^2}=xI_1(x)K_0(y),\qquad
\frac{b\partial_b C^{\rm ren}}{2\pi^2}=1-yI_0(x)K_1(y).
\tag{23}
$$

Both lie in $[0,1]$. The Wronskian $y[I_1(y)K_0(y)+I_0(y)K_1(y)]=1$ proves the bounds and, at $a=b$, equality of the two one-sided derivatives of each variable. Thus $C^{\rm ren}$ is genuinely $C^1$ in its positive radial labels: the raw covariance kink and the counterterm kink cancel exactly. No arbitrary one-sided convention remains in (5).

Uniformly for $0<x\le y\to0$, the first expression is bounded by $yI_1(y)K_0(y)\to0$, and the second by $1-yK_1(y)\to0$. Thus both radial derivatives vanish jointly in the boundary limit at fixed $k>0$.

An equivalent useful form of the trace is

$$
\begin{aligned}
\tau^{\rm ren}={}&-a\partial_a C^{\rm ren}(r)-b\partial_b C^{\rm ren}(q)
-2[C^{\rm ren}(r)+C^{\rm ren}(q)]+2\pi^2\\
&-\frac{a^2}2(p\cdot k_2)C_{ab}(r)-\frac{b^2}2(p\cdot k_1)C_{ab}(q).
\end{aligned}
\tag{24}
$$

Equations (22)–(24), $R^2|\log R|\to0$ and $a,b\le R$ give a radius-independent polynomial/logarithmic majorant for $0<R\le R_0$, and pointwise convergence to (6).

Finally $|\mathscr L|\le C(|d|/p+|\tau|)$. The divergence divided by $p$ is bounded by a polynomial times $(1+\log^-q+\log^-r)/p$, where $\log^-t=\max(0,-\log t)$ in fixed units. This majorant is locally integrable: the individual soft sets are codimension four, and at the simultaneous origin the worst radial factor is $1/p$ times logarithms, still integrable in eight dimensions. Multiplying by a sufficiently strong Schwartz weight makes the full majorant integrable at infinity.

Consequently, for some fixed sufficiently large $m$,

$$
\int d^4k_1d^4k_2\,(1+|(k_1,k_2)|)^{-m}
|\mathcal K^{\rm ren}_{ab}-\mathcal K^{\rm ren}_{\partial}|\longrightarrow0.
$$

This weighted-$L^1$ convergence proves (20), including uniformity on bounded Schwartz subsets. It establishes a distributional extension, not a smooth pointwise value on every soft locus. It also excludes neither additional sectors by algebra alone nor arbitrary changes of curved-source scheme; those were fixed in the construction.

## 6. A complete finite-radius example

Choose $\ell=1$, $p=(0,0,0,1)$, $k_1=(\sqrt3/2,0,0,-1/2)$ and $k_2=(-\sqrt3/2,0,0,-1/2)$, so $p=q=r=1$. At $a=0.2,b=0.3$,

$$
C^{\rm ren}_{ab}=3.59739592297642\ldots,\qquad
\tau^{\rm ren}=4.23345128152476\ldots.
$$

The complete physical-stress response is diagonal:

$$
\boxed{\mathcal K^{\rm ren}_{ij}
=\operatorname{diag}(10.42157731319165,
-1.29536505434524,-1.29536505434524,-3.59739592297642)_{ij}.}
\tag{25}
$$

For unit stress, $N\widehat{\mathcal K}_{11}=32.52619041399817\ldots$, whereas the TT contribution alone is $24.37938692408495\ldots$. The non-TT completion is essential even for this symmetric momentum triangle.

| $(a,b)$ | $C^{\rm ren}_{ab}(1)$ | $\tau^{\rm ren}$ | $N\widehat{\mathcal K}_{11}$ |
|---|---:|---:|---:|
| $(0.2,0.3)$ | $3.59739592298$ | $4.23345128152$ | $32.5261904140$ |
| $(0.02,0.03)$ | $2.31608037736$ | $10.4491764357$ | $40.8008598035$ |
| $(0.002,0.003)$ | $2.28882091600$ | $10.5835203556$ | $40.9884693123$ |

The exact boundary covariance and trace at this momentum are $2.28839639433445\ldots$ and $10.58562322484090\ldots$. These numerical checks supplement (20); finite samples do not establish its all-momentum claim.

## 7. Source response is not automatically a Lorentzian operator product

For a source-dependent relational observable, differentiation gives schematically

$$
\mathcal K^{\rm ren}_{ij}=\langle T_{ij}\mathcal U_a\mathcal U_b\rangle_c
+2\left\langle\frac{\delta\mathcal U_a}{\delta g_{(0)ij}}\mathcal U_b
+\mathcal U_a\frac{\delta\mathcal U_b}{\delta g_{(0)ij}}\right\rangle_c
+\mathcal K^{\rm ct}_{ij}.
\tag{26}
$$

Explicit insertion derivatives keep the underlying integration variables fixed. In the specified bulk FG source extension the elementary $\mathcal U_a$ has no explicit variation along the displayed FG family: the linear dressing vector is already zero there. The source-defined Brown–York mixed insertion then includes the BF action vertex (12); adding the dressing again is incorrect.

This does not prove that an independently constructed CFT composite has zero explicit metric-source derivative. Different curved-source extensions can agree as flat operators while reallocating terms in (26). In particular, the finite-radius PBH trace contacts and boundary anomaly are Euclidean source statements. They cannot be inserted into an ordered Wightman distribution, where stress conservation and tracelessness are operator-distribution statements. An all-transfer vacuum-contour identification of the gravitational reconstruction remains a separate calculation.

## 8. Verification and remaining scope

**Verified:** the residual FG/PBH transformation and scalar-equation check; the finite-radius Ward data; the BF metric vertex and explicit UV/jump cancellation; the tensor completion; density-source counterterm and anomaly; the equal-radius $C^1$ cancellation; and the full arbitrary-Schwartz joint boundary theorem in the stated source scheme.

Three independent derivations and read-only manuscript audits checked the action/PBH identities, the source-extension/anomaly distinction, and the full distributional theorem separately. The finite-radius matrix was also reproduced by an independent fresh radial quadrature.

Reproducible evidence:

- [Tensor/contact and full examples](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_checks_results.txt>): exact residuals vanish, eight three-inequality Bessel samples pass, three finite-radius tensors satisfy divergence and trace, no messages.
- [Independent bulk endpoint checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_independent_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward_independent_checks_results.txt>): both radial primitives and jumps, full bulk-plus-BF numerical divergence/trace, no final messages.
- [Independent PBH derivation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_pbh_ward_checks.md>) and [checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_pbh_ward_checks.wl>): source extension, scalar equation, anomaly and response/product distinction.
- [Independent convergence proof](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_ward_limit_checks.md>), [checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_ward_limit_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_ward_limit_checks_results.txt>): TT majorant, equal-radius Wronskian cancellation and the weighted-$L^1$ proof including the simultaneous origin.

**Assumptions:** leading scalar Gaussian order and first boundary metric order, or order $N^{-1}$ for unit stress; the regular logfree Poincaré vacuum; boundary-normal anchor extension; minimal covariant density-source subtraction (17); and no independent zero/edge sectors. The BF boundary action is retained rather than discarded during variation, consistently with [the workspace formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L25>).

**Not verified:** a unique curved-source extension of the exact interacting CFT relational composite, all-transfer Lorentzian vacuum matching, full interacting Hilbert domains/positivity, nonlinear global dressings, or graviton-loop/composite renormalization. The result supplies the complete mixed Euclidean source coefficient and its boundary limit, not these additional claims.
