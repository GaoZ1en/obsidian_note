# Boundary-Polarized Regional Field Theory: Response, Sewing, Classical Reconstruction, and Free-Scalar Quantum Reduction

本文把一般框架推进到 classical gluing、约化辛结构、power balance 与 observable reconstruction；在此基础上，另对 **finite linear port regulator** 完成 duplicate-port coisotropic/second-class reduction、Weyl quantization 与 sewing-kernel composition。对 massive free scalar，continuum Route B 只在下文逐项声明的 continuum algebra + dynamics + regular/bulk-smeared state scope内完成互相衔接但不能混同的层级：duplicate energy parent Weyl algebra的 quotient-character fixed-point reduction及 reduction by stages、同一 parent CCR 上的 finite-$\kappa$ regular dynamics/state、soft-defect large-coupling constraint limit、sharp parent limit state $\omega_{\mathrm{conn}}\circ E$ 的 transverse nonregularity、finite/continuum 二参数 commuting limit，以及 bulk-smeared quasifree observables/states的 regulator/partition-independent limit。逻辑主线是

$$\begin{align}
\text{complete regional actions and boundary polarizations} &\longrightarrow \text{causal input--output/evolution relations}\nonumber\\
&\longrightarrow \text{symplectic and power balance}\nonumber\\
&\longrightarrow \text{canonical sewing relations}\nonumber\\
&\longrightarrow (\mathcal C,\Omega_{\mathrm{glued}}) \overset{\text{reconstruction hypotheses}}{\simeq}(\mathcal P_M,\Omega_M)\nonumber\\
&\longrightarrow \text{partition-independent classical/abstract observable algebra}\nonumber\\
&\longrightarrow \text{finite duplicate-port reduction }Q\circ R\simeq R\circ Q\nonumber\\
&\longrightarrow \text{continuum fixed points, reduction by stages, and large-coupling dynamics}\nonumber\\
&\longrightarrow \text{sharp parent weak-* limit and two-parameter compatibility}\nonumber\\
&\longrightarrow \text{regulator-independent regular-state/smeared-observable limit}.
\end{align}$$

这里不假定 fixed-$q$ 区域 Fock spaces 可以直接 glue，也不把形式上的 operator substitution 当作真正的 quantum reduction。Finite theorem 只属于 declared linear regulator。Continuum parent CCR algebra及其 kinematic fixed-point reduction是 abstract universal $C^*$-algebra statements；dynamics/state theorem则属于 massive free theory的 monotone-form、strong-resolvent、weak-* state 与 regular bulk-smeared topology。特别地，Haar expectation $E$ 是 exact sharp algebraic selector，不与 generic finite-$\kappa$ flow形成 pointwise dynamical commuting square；其 counterexample给出的 structural lesson是 **sharp algebraic reduction is not a continuous dynamical retraction**。这里“continuous”专指 phase-space-label/dynamical limiting problem：conditional expectation $E$ 本身是 contractive、因而作为 $C^*$-algebra linear map norm-continuous；但 $z\mapsto E(W(z))$ 在 energy-label topology 中不连续，且 $E$ 不 intertwine finite-coupling dynamics。Connected dynamics来自 singular large-coupling limit；真正的 compatibility theorem分别发生在 common-parent state weak-* limit及 chosen regular bulk multitime core。这里仍不声称 Weyl generators 的 $C^*$-norm convergence、continuum normal CCR tensor factor、unsmeared interface operator、infinite-dimensional Lorentzian history measure或 sharp regional product-Fock unitary equivalence。

Continuum geometry scope也分层：large-coupling restricted-form与 bulk-$L^2$ covariance theorem覆盖 displayed bounded finite Lipschitz scalar partitions、$m>0$、compatible global bulk coefficients/bundle identifications及 physical outer boundary data；若允许 genuinely piecewise coefficients，target相应改为该 transmission operator。Explicit transverse Weyl-covariance/parent weak-* proof、finite $(N,\kappa)$ matrix square与 B2 image-sum theorem按 displayed centered $1$D regulator/model。Product-cylinder结果仍使用此前声明的 schedule。本文不把这些层级压成 arbitrary curved/noncompact-interface theorem。

这里不再以 field type、非退化二阶 Legendre map 或 ordinary Dirichlet trace 作为 general theorem 的入口。真正的抽象输入是：**complete variational boundary phase space、polarization-independent sewing relation、允许的 variational polarization、其中真正 dynamical-admissible 的 causal input、constraint-compatible data domain、well-posed regional evolution relation，以及 transmission/reconstruction theorem**。只有在选定 admissible dynamical polarization 后才使用 $q$ 表示 boundary input coordinate；它不必是全部 bulk fields 的 Dirichlet trace。

## Scope Tiers and Reading Map

全文分成三个不能混写的 classical tiers：

1. **Abstract variational tier.** Bulk theory 可以是 regular second-order、constraint-reduced，或 first-order；只要求完整作用量在允许变分上给出定义良好的 boundary one-form，并且边界相空间存在适当的 polarization。若 two-form 有 kernel，必须先约化或把 evolution object 保持为 presymplectic relation。Gauge theory 只有在 gauge quotient、edge completion 或相应 BV--BFV 数据已明确后才可能进入；本文没有完成这一层。
2. **Regular second-order bosonic tier.** 这里 $q$ 可取 configuration trace、$\Pi$ 取 conormal flux，linear Klein--Gordon specialization、semilinear scalar validation、boundary triples 与 finite conforming regulator 都属于此层。
3. **Constrained/first-order non-scalar tier.** Massive Proca 没有 gauge redundancy但有 primary/secondary constraints；Dirac 是 Grassmann-odd first-order system。二者都必须先选 half-dimensional/admissible boundary data 并证明相应 IBVP，不能把 scalar Dirichlet formula 原样套用。本文除 general conditional statement 外，还分别给出一个闭环的 $1+1$ ultrastatic Proca model 与 compatible inhomogeneous Lorentzian MIT--Dirac model。Dirac 的量子 observable algebra 是 CAR，而不是 bosonic Weyl CCR。

因此本文的 universal statement 仍是 relation-level 的：boundary variation $\to$ admissible causal evolution relation $\to$ invariant sewing $\to$ reconstruction。KG、semilinear scalar、Proca 与 Dirac 是这一同一 invariant relation 在不同 polarization coordinates 中的 realizations。Part I 给核心 classical formalism、一般 Cauchy-slice covariance 的 conditional theorem 与 constant-time KG hard corollary；Part II 给 linear KG、Weyl-function、Hilbert closed-split relation及 semilinear scalar validation；Part III 给 Proca/Dirac；Part IV 重写 Route B 的层级与边界；Part V 完成 finite linear B1.0--B1.2、continuum kinematic B1.3 与 free-scalar dynamical/state B1.4；最后的 diagnostics 记录 sharp operator、history measure 与 representation-theoretic boundaries。

## Part I — Core Regional Formalism

### Geometry and Boundary Histories

考虑 globally hyperbolic spacetime

$$\begin{align}
M&\simeq\mathbb R\times\Sigma .
\end{align}$$

取有限指标集 $\mathcal I$，令每个 $\Sigma_i\subset\Sigma$ 是带边界的 codimension-zero submanifold，并要求

$$\begin{align}
\Sigma&=\bigcup_{i\in\mathcal I}\Sigma_i, &\operatorname{int}_{\Sigma}(\Sigma_i)\cap \operatorname{int}_{\Sigma}(\Sigma_j)&=\varnothing,\qquad i\neq j.
\end{align}$$

因此这里并没有用“互不相交开集覆盖 connected $\Sigma$”。定义 spatial interface、physical boundary component 以及 timelike worldtube

$$\begin{align}
\Sigma_{ij}&:=\partial\Sigma_i\cap\partial\Sigma_j
\subset\operatorname{int}\Sigma, &\Sigma_{i0}&:=\partial\Sigma_i\cap\partial\Sigma,\\
\Gamma_{ij}&:=\mathbb R\times\Sigma_{ij}, &\Gamma_{i0}&:=\mathbb R\times\Sigma_{i0}.
\end{align}$$

在 time-slab statements 中取 $I=[t_-,t_+]$，并写

$$\begin{align}
M_i^I&:=I\times\Sigma_i, &\Gamma_{ij}^I&:=I\times\Sigma_{ij}.
\end{align}$$

下文在不致混淆时省略上标 $I$。

记

$$\begin{align}
N(i)&:=\left\{j\in\mathcal I\setminus\{i\}:\Sigma_{ij}\neq\varnothing\right\}.
\end{align}$$

基准假设是 interfaces smooth、pairwise，$\Gamma_{ij}$ timelike，并暂时排除 triple junctions 与 corners。若它们存在，则各 face 上的 histories 必须属于相容的 joint trace space；这些 corner compatibility conditions 是 admissibility 条件，不能从 pairwise gluing equation 自动推出。

在选择任何 Darboux coordinate 以前，对每个 oriented incidence $(i,e)$，$e=\{i,j\}$，先取完整的 **variational trace phase space**

$$\begin{align}
(\mathcal Z_{i,e},\omega_{i,e}^{\mathrm{out}}).
\end{align}$$

$\mathcal Z_{i,e}$ 是 bulk fields 在 $\Gamma_e^I$ 上由 Green/variational identity 看见的完整 trace data；它已经实施 algebraic constraints，但尚未选择 polarization。$\omega_{i,e}^{\mathrm{out}}$ 由 region $i$ 的 outward-oriented boundary symplectic current 积分得到。它可以是 ordinary、weak、presymplectic 或 graded；只有在 kernel 已约去且下文要求的 nondegeneracy/split assumptions 成立时才称 symplectic phase space。KG 的 $\mathcal Z$ 是 configuration trace 与 conormal covector 的 cotangent realization，Proca 的 $\mathcal Z$ 是 constraint-compatible tangential one-form trace与其 Green-dual flux，Dirac 的 $\mathcal Z$ 则是带 graded Green form 的 full spinor/cospinor trace，不预先拆成 $q/\Pi$。

为了把 canonical-relation 的 bar convention 与两侧 outward normals 的负号分开，对每条无向 edge 任取一次 fixed coorientation $o_e$，并令

$$\begin{align}
\epsilon_{i,e}&=+1,&\epsilon_{j,e}&=-1,& \omega_{i,e}^{o_e}&:=\epsilon_{i,e}\omega_{i,e}^{\mathrm{out}}.
\end{align}$$

交换 $o_e$ 只同时反转 fixed-oriented momenta，不改变 sewing locus。若两侧的 underlying bundles/traces 由 $J_{ij}$ 认同，它诱导一个 fixed-oriented trace symplectomorphism $\mathbb J_{ij}:\mathcal Z_{i,e}^{o_e}\to\mathcal Z_{j,e}^{o_e}$。**Artificial sewing 的抽象定义**是 closed split graded/ordinary Lagrangian relation

$$\begin{align}
\boxed{\mathsf S_e:=\operatorname{Graph}(\mathbb J_{ij})
\subset\overline{\mathcal Z_{i,e}^{o_e}}\times\mathcal Z_{j,e}^{o_e}.}
\end{align}$$

这个定义只说 full variational traces 是同一个 geometric trace，不依赖选择哪一半叫 input。若 $\mathcal Z_{i,e}=T^*\mathcal B_{i,e}$，取 outward Darboux coordinates $(q_i,\Pi_i^{\mathrm{out}})$，则同一个 invariant relation 等价于 graph $\operatorname{Graph}(J_{ij})\subset\mathcal B_{i,e}\times\mathcal B_{j,e}$ 的 conormal relation

$$\begin{align}
N^*\operatorname{Graph}(J_{ij}) =\left\{q_j=J_{ij}q_i,\quad \Pi_i^{\mathrm{out}}+J_{ij}^*\Pi_j^{\mathrm{out}}=0\right\}.
\end{align}$$

确实，fixed-oriented momenta $p_{i,e}:=\epsilon_{i,e}\Pi_{i,e}^{\mathrm{out}}$ 满足 ordinary cotangent-lift graph equation；换回两侧 outward variables 才出现 summed-flux sign。下文为简洁仍把 $\Pi^{\mathrm{out}}$ 写成 $\Pi$。因此 $q_i=q_j$、$\Pi_i+\Pi_j=0$ 不是 abstract definition，而只是 $J_{ij}=\operatorname{id}$ 的 chosen cotangent-polarization coordinates。

选定 boundary polarization 后，令 $\mathcal Q_{ij}$ 是 spatial interface coordinate $q_{ij}$ 的 trace space，$\mathcal Q_{ij}^{\vee}$ 是其连续对偶。对 canonical scalar 的 spatial energy trace，以及 conormal trace 已由 graph/transposition Green identity 定义的 regularity class，典型选择是

$$\begin{align}
\mathcal Q_{ij}&=H^{1/2}(\Sigma_{ij}), &\mathcal Q_{ij}^{\vee}&=H^{-1/2}(\Sigma_{ij}),
\end{align}$$

而不是让 $q$ 与 conormal flux $\Pi$ 看起来属于同一空间。令 $\mathcal B_{ij}$ 是以 $\mathcal Q_{ij}$ 为值、具有模型所需时间正则性的 admissible boundary-history space，并令 $\mathcal B_{ij}^{\vee}$ 是相对于 spacetime duality pairing 的输出空间。例如若 $\mathcal B_{ij}=L^2(I;H^{1/2})$，则可取 $\mathcal B_{ij}^{\vee}=L^2(I;H^{-1/2})$；用于后文 strong retarded formula 的 histories 还需更强的 $H^2$ time regularity。记

$$\begin{align}
\langle\Pi_{ij},\delta q_{ij}\rangle_{I,ij} &:=\int_I\mathrm dt\,\langle\Pi_{ij}(t),\delta q_{ij}(t)\rangle_{\mathcal Q_{ij}^{\vee},\mathcal Q_{ij}},
\end{align}$$

其中右边在低正则性下是 duality pairing，不是逐点乘积。再令

$$\begin{align}
q_i&=(q_{ij})_{j\in N(i)}\in\mathcal B_i, &\mathcal B_i&\subseteq\bigoplus_{j\in N(i)}\mathcal B_{ij}.
\end{align}$$

$\mathcal B_i$ 编码同一 region 不同 faces 之间及 spatial corners 处的 joint-trace compatibility。它本身不编码与 Cauchy data 的 initial compatibility；后者属于下面的 $\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i$。物理边界 $\Gamma_{i0}$ 上另行选定使作用量与 regional dynamics 良定的边界条件。

### Regional Action, Allowed Variations, and Port Flux

在有限时间 slab 上考虑已经完成必要 constraint/gauge treatment 的 variational theory，并把 bulk、physical-boundary、regional interface 与必要 corner terms 全部视为 regional theory 的定义数据。本节先用 ungraded bosonic 记号；Dirac 的 graded modification 在 Part III 单独给出。示意地写成

$$\begin{align}
S_i^{\mathrm{full}}[\Phi_i] &=\int_{M_i^I}\mathscr L_i\,\mathrm d\operatorname{vol}_g +\int_{\Gamma_{i0}^I}\ell_{i0} +\sum_{j\in N(i)}B_{ij}^{\mathrm{pol}}[\gamma_{\Gamma}\Phi_i] +S_i^{\mathrm{corner}}.
\end{align}$$

这里必须先区分两种操作。一个 **variational polarization** 是 $\mathcal Z_{i,e}$ 上的 closed split Lagrangian fibration（局部可写成 symplectic chart $\varphi_{\mathrm{pol}}:T^*\mathcal B_{i,e}\supset U\to\mathcal Z_{i,e}$），使某个与 complete action 相容的 boundary potential representative 满足

$$\begin{align}
\varphi_{\mathrm{pol}}^*\boldsymbol\theta_{\Gamma,i,e}^{\mathrm{out}} &=\langle\Pi_{i,e},\delta q_{i,e}\rangle+\delta G_{i,e}^{\mathrm{pol}}+d_\Gamma\boldsymbol c_{i,e}.
\end{align}$$

$B_{ij}^{\mathrm{pol}}$ 只在它与 $G_{i,e}^{\mathrm{pol}}$、$\boldsymbol c_{i,e}$、endpoint/corner potential 以及 sewing relation **同步**选择时，才表示同一个 theory 的 canonical-coordinate/polarization representative。Second-order Dirichlet case 可以取 $G^{\mathrm{pol}}=0$；first-order theory 常需一个 nonzero generating functional 才把 full-trace potential 写成 half-dimensional canonical pairing。

相反，真正加入而不由 canonical reparametrization 抵消的 $S_{\Gamma,e}[q,\chi]$ 是 **physical interface action**：它改变 stationary matching relation、interface energy与（若有 kinetic term）真实 interface phase space。Pure polarization change 不得改变 geometric matching；physical defect action 必须改变它。选定 variational polarization map $\gamma_{ij}^{(q)}$ 后，对 prescribed $q_i$ 要求

$$\begin{align}
\gamma_{ij}^{(q)}\Phi_i&=q_{ij}, &\gamma_{ij}^{(q)}\delta\Phi_i&=\delta q_{ij}=0,\qquad j\in N(i),
\end{align}$$

并满足 physical boundary condition 及其线性化条件。为简化记号，后文把 $\gamma_{ij}^{(q)}$ 仍写成 $\gamma_{ij}$；对 scalar Dirichlet polarization 它就是普通 trace。

Port flux 的一般定义来自完整 regional action 的 boundary variational one-form，而不是先验的 normal derivative。把所有 tangential derivatives 从 $\delta q$ 上沿 $\Gamma_{ij}$ 分部积分后，选定 polarization 要求 on-shell boundary term 可以写为

$$\begin{align}
\boxed{\boldsymbol\theta_{\Gamma,ij} =\langle\Pi_{ij},\delta q_{ij}\rangle+d_{\Gamma}\boldsymbol\beta_{ij}.}
\end{align}$$

等价地，在 physical boundary conditions 已施加后，第一变分是

$$\begin{align}
\delta S_i^{\mathrm{full}} &=\int_{M_i^I}\mathcal E_i(\Phi_i)\,\delta\Phi_i\,\mathrm d\operatorname{vol}_g +\sum_{j\in N(i)}\left(\langle\Pi_{ij},\delta q_{ij}\rangle_{I,ij} +\int_{\partial\Gamma_{ij}^I}\boldsymbol\beta_{ij}\right) +\Theta_i(t_+)-\Theta_i(t_-).
\end{align}$$

$\Pi_{ij}\in\mathcal B_{ij}^{\vee}$ 是 polarization-conjugate port variable；它是完整 boundary variation 对 $q_{ij}$ 的 Euler--Lagrange derivative。若 boundary action 含 tangential derivatives，$\Pi_{ij}$ 已经包含 tangential integrations by parts 后的项，$\boldsymbol\beta_{ij}$ 则保留在 temporal/spatial corners。因而 regional open system 的定义数据不只是 bulk EOM 与 fixed-$q$ solution space，还包括 boundary variational structure。

这一定义也固定以下 ambiguity bookkeeping：

- 若只给 complete action **真正增加** $B_{ij}[q]$ 而不变换 sewing relation，则 $\Pi_{ij}\mapsto\Pi_{ij}+\delta B_{ij}/\delta q$，并可能改变 $\boldsymbol\beta_{ij}$；fixed-$q$ bulk equations 虽不变，gluing theory 已改变。若 $B_{ij}$ 只是 canonical/polarization generating functional，则必须同时把 port coordinates、sewing relation 与 corner potential push forward；此时改变的是 representation，不是 matching physics。
- bulk total derivative 与 JKM ambiguity 的完整变换是 $\mathscr L_i\,\mathrm d\operatorname{vol}_g\mapsto\mathscr L_i\,\mathrm d\operatorname{vol}_g+d_M\boldsymbol\mu_i$、$\boldsymbol\theta_i\mapsto\boldsymbol\theta_i+\delta\boldsymbol\mu_i+d_M\boldsymbol Y_i$。$\delta\boldsymbol\mu_i$ 必须吸收到完整 boundary action，$d_M\boldsymbol Y_i$ 则使 $\boldsymbol\beta_{ij}\mapsto\boldsymbol\beta_{ij}+\iota_{\Gamma}^{*}\boldsymbol Y_i$。不能只改 bulk potential 而丢掉 induced boundary/corner terms。
- 若 interfaces closed 且 variations 在 temporal corners 固定，$d_\Gamma\boldsymbol\beta$ 的积分不贡献；一般情况下必须把 induced corner two-form 包含在下面的 completed symplectic form 中。Reconstruction theorem 还要求 regional representatives 与 uncut global action 的 representative 相容。

**Proposition (polarization covariance and invariance).** 对每个 oriented face 令

$$\begin{align}
\varphi_{{\rm pol},i,e}:(\mathcal Z_{i,e},\omega_{i,e})&\longrightarrow
(\mathcal Z'_{i,e},\omega'_{i,e})
\end{align}$$

是 boundary canonical transformation，并假设 potentials 满足

$$\begin{align}
\varphi_{{\rm pol},i,e}^*\boldsymbol\theta'_{i,e} =\boldsymbol\theta_{i,e}+\delta G_{i,e}+d_\Gamma\boldsymbol c_{i,e}.
\end{align}$$

把 regional evolution relation、artificial sewing 与 corner data 同步变换为

$$\begin{align}
\mathscr U_i'&=(\operatorname{id}_{\mathrm{endpoints}}\times\prod_e\varphi_{{\rm pol},i,e})(\mathscr U_i),\qquad \mathsf S_e'=(\varphi_{{\rm pol},i,e}\times\varphi_{{\rm pol},j,e})(\mathsf S_e),\qquad \Theta_{i,\mathrm{comp}}'=\Theta_{i,\mathrm{comp}}+\text{the induced endpoint term from }G,c.
\end{align}$$

则 product canonical transformation 把旧 fiber product/composition diffeomorphically 映到新 fiber product/composition，故

$$\begin{align}
\mathcal C'&\cong\mathcal C,& \Omega'_{\mathrm{glued}}&\cong\Omega_{\mathrm{glued}},& \operatorname{Res}'&=\varphi_{{\rm pol},\partial}\circ\operatorname{Res}.
\end{align}$$

如果原 reconstruction target 是无 defect 的 global theory，它仍是同一个 target；observables 只按这个 symplectomorphism pull back/push forward。证明只是 canonical maps 保持 Lagrangian relations、fiber products 与 symplectic pullbacks，并且 $\delta^2G=0$；$d_\Gamma c$ 的剩余项由同步 transformed corner potential 抵消。这个命题不适用于只改变 action 而不 push forward $\mathsf S_e$ 的操作：后一操作正是 physical boundary/interface deformation。

**Proposition (relation covariance does not imply causal graph covariance).** 上一个命题对任意合法 boundary symplectomorphism成立的是 **variational/canonical relation** statement：$\mathscr U_i'$ 仍是同一个 geometric evolution relation 的 canonical image，$\mathsf S_e'$ 仍是同一个 sewing relation 的 image，composition 与 reconstruction diagram保持不变。它不自动说明 transformed coordinate $Q$ 可以独立 prescribed，或 $\mathscr U_i'$ 可写成单值 causal graph

$$\begin{align}
(\xi_i^-,Q_i)&\longmapsto(\xi_i^+,P_i).
\end{align}$$

精确地说，令

$$\begin{align}
\pi_{\mathrm{in}}':\mathscr U_i'&\longrightarrow\mathcal P_i^-\times\mathcal Q_i',& (\xi_i^-,\xi_i^+;Q_i,P_i)&\longmapsto(\xi_i^-,Q_i).
\end{align}$$

只有当 $(Q_i,P_i)$ 连同 transformed history/domain data重新满足下节 admissible dynamical polarization 的 constraint compatibility、incoming-characteristic admissibility、energy estimate、causality与 corner compatibility，并且 $\pi_{\mathrm{in}}'$ 在该 domain上是所需 regularity class中的 bijection/diffeomorphism时，才存在 transformed response map $\mathcal R_i':(\xi_i^-,Q_i)\mapsto P_i$。一个一般 canonical transformation可以令 $Q$ 依赖旧 output $\Pi$，从而使 $Q$ 隐含 future solution data、使 $\pi_{\mathrm{in}}'$ 多值或不满；此时 relation仍完全 covariant，但 causal input--output graph presentation已经失效。因而

$$\begin{align}
\boxed{\text{arbitrary canonical transformations preserve }\mathscr U_i
\text{ as a relation, but not necessarily as a causal response graph}.}
\end{align}$$

特别地，只有保持 admissible incoming data bundle、time locality与 compatibility domain 的 fiber-preserving canonical changes，或另经独立 IBVP theorem证明 admissible 的更一般 changes，才允许把“response transforms covariantly”作为 map-level statement。全文其他 polarization-covariance statements若未另加这项 dynamical check，均只按 relation-level 理解。

因此 JKM 或 bulk total-derivative ambiguity 只有在 $\boldsymbol\mu$、$\boldsymbol Y$、regional boundary actions、$\boldsymbol\beta$、temporal corners 与 global representative 成套变换时属于 polarization/representative covariance。漏掉其中任何一项时，不能用“JKM ambiguity”掩盖一个实际改变的 defect theory。

下面先在 $J_{ij}=\operatorname{id}$ 的 chosen cotangent polarization中写 physical interface action的 coordinate formula；invariantly，它是 $\mathsf S_e$ 与 interface evolution relation的 composition。对每一个无向界面 $\{i,j\}$，base coordinates首先认同

$$\begin{align}
q_{ij}^A&=q_{ji}^A=:q_{\{ij\}}^A, &\delta q_{ij}^A&=\delta q_{ji}^A=: \delta q_{\{ij\}}^A,
\end{align}$$

然后解除 common history 的固定。为了同时覆盖 artificial cuts 与 genuine defects，允许每条无向界面带有真正生活在 worldvolume 上的 fields $\chi_{\{ij\}}$，并写

$$\begin{align}
S_{\Gamma_{ij}}[q,\chi] &=\int_{\Gamma_{ij}^I}\mathscr L_{\Gamma_{ij}} \bigl(q,\chi,d_{\Gamma}q,d_{\Gamma}\chi\bigr)
\,\mathrm d\operatorname{vol}_{\Gamma_{ij}} +S_{\Gamma_{ij}}^{\mathrm{corner}}.
\end{align}$$

把所有 tangential derivatives 从 variations 上分部积分后，定义

$$\begin{align}
\delta S_{\Gamma_{ij}} &=\int_{\Gamma_{ij}^I} \left(\mathcal E_{\Gamma_{ij},q,A}\,\delta q^A +\mathcal E_{\Gamma_{ij},\chi,r}\,\delta\chi^r\right)
\,\mathrm d\operatorname{vol}_{\Gamma_{ij}} +\Theta_{\Gamma_{ij}}(t_+)-\Theta_{\Gamma_{ij}}(t_-) +\text{spatial-corner terms},\\
\mathcal E_{\Gamma_{ij},q,A} &:=\frac{\delta S_{\Gamma_{ij}}}{\delta q^A}, &\mathcal E_{\Gamma_{ij},\chi,r} &:=\frac{\delta S_{\Gamma_{ij}}}{\delta\chi^r}.
\end{align}$$

Common $\delta q_{\{ij\}}$ 与 independent $\delta\chi_{\{ij\}}$ 的任意性给出完整 coupled matching system

$$\begin{align}
\boxed{ q_{ij}=q_{ji}=:q_{\{ij\}},\qquad \Pi_{ij,A}+\Pi_{ji,A}+\mathcal E_{\Gamma_{ij},q,A}(q,\chi)=0, \qquad \mathcal E_{\Gamma_{ij},\chi,r}(q,\chi)=0.}
\end{align}$$

Artificial cut 是 $S_{\Gamma_{ij}}=0$ 且没有 $\chi$ 的 specialization；原来的 $S_{\Gamma_{ij}}[q]$ 则是没有 independent interface field 的 specialization。若 $\mathscr L_{\Gamma}$ 含 tangential time derivatives，

$$\begin{align}
\Omega_{\Gamma_{ij}}(t)&:=\delta\Theta_{\Gamma_{ij}}(t)
\end{align}$$

是 intrinsic interface two-form，并可同时含 $\delta p_q\wedge\delta q$ 与 $\delta p_\chi\wedge\delta\chi$。其中 $q$ 仍是 bulk traces 的共同值，并不是在 glued theory 中再复制一份 field；$\chi$ 才是新增的 codimension-one dynamical degree of freedom。若 $\chi$ 没有 kinetic term，它可能只是 auxiliary constraint variable，不能仅凭符号 $\chi$ 就声称有新的 interface phase space。Regional terms $B_{ij}+B_{ji}$ 与 shared $S_{\Gamma_{ij}}$ 的划分是一种 bookkeeping choice，但总 boundary variation、corner one-form 与 interface energy 必须固定。下文在没有 $\chi$ 时把 $\mathcal E_{\Gamma,q}$ 简写为 $\mathcal E_{\Gamma}$；有 $\chi$ 时，所有 gluing loci 与 relations 均应同时包含 $\mathcal E_{\Gamma,\chi}=0$。

例如 canonical scalar multiplet

$$\begin{align}
\mathscr L_i &=-\frac12G_{AB}\nabla_{\mu}\Phi_i^A\nabla^{\mu}\Phi_i^B-V(\Phi_i)
\end{align}$$

给出

$$\begin{align}
\Pi_{ij,A}&=-G_{AB}n_i^{\mu}\nabla_{\mu}\Phi_i^B.
\end{align}$$

其中 $n_i$ 是从 $M_i$ 指向外部的 unit normal；在 smooth common interface 的自然认同下 $n_j=-n_i$。只有在这个 specialization 且没有额外 regional/interface boundary functional 时，$\Pi_{ij}+\Pi_{ji}=0$ 才等价于相应的 outward-normal derivative matching。若两个 interval coordinates $y_1,y_2$ 都朝切口增大，则它具体成为 $\phi_1'(L)+\phi_2'(L)=0$。

#### Variational Polarization Versus Admissible Dynamical Polarization

Variational polarization 只回答“boundary one-form 能否写成 conjugate pairing”；它不回答“这个 coordinate 能否被任意当作 causal input”。本文把后一个更强对象定义如下。

**Definition (admissible dynamical boundary polarization).** 一个 variational polarization $(q,\Pi)$ 连同 history space $\mathcal B_i$、initial-data space $\Xi_i^-$ 与 hyperbolic reduction 称为 admissible dynamical，若：

1. **Variational pairing:** complete boundary potential 在该 chart 中为 $\langle\Pi,\delta q\rangle+d_\Gamma\beta$，且 pairing 在所选 Sobolev/dual topology 连续；
2. **Constraint compatibility:** prescribed $q$ 只占 constraint-reduced incoming/free boundary components，constraints 与 boundary equations 决定的 components 不被重复 prescribed，并且 constraint propagation 已证明；
3. **Hyperbolic admissibility:** 对明确的 characteristic input subbundle或 boundary operator，IBVP 在指定 data domain 上有 existence、uniqueness、finite propagation/causality 与 energy estimate，并对 data continuous；需要 nonlinear response differentiation 时还要求相应 $C^k$ smooth dependence；
4. **Corner compatibility:** $t=t_-$ 的 Cauchy data 与 $q$ 的必要 jets 满足由实际 PDE、constraints 与 boundary operator递推的 compatibility conditions；若要求 strong solution，也声明其阶数。

这一定义是依赖 dynamics 与 chosen hyperbolic reduction 的，故同一个 variational phase space 可以有多个 admissible dynamical polarizations，也可能一个都没有。只有对这样的 polarization，本文才把

$$\begin{align}
q\quad\text{称为 causal input},\qquad \Pi\quad\text{称为 its response output}.
\end{align}$$

三种常被混淆的检查彼此独立：

- KG 的 Dirichlet trace/conormal pairing 是 variational statement；standard hyperbolic Dirichlet estimate 才给 dynamical admissibility；homogeneous spatial realization self-adjoint/elliptic 则是 static spectral statement。
- Proca 的 tangential $a$ 与 $-n\mathbin{\lrcorner}F$ 是 variational pair，但 arbitrary tangential history 在一般 timelike wall 上未必 constraint-compatible 或 maximally dissipative。后文只在一个精确 $1+1$ reduction 中证明 driven admissibility；高维 general statement仍条件化。
- Dirac full trace 的 Lagrangian splitting 是 graded variational statement；Lorentzian MIT/admissible projector 的 energy estimate给 hyperbolic well-posedness；fixed-slice Hamiltonian self-adjointness与 spatial ellipticity另需 operator-domain/elliptic boundary analysis，不能由 hyperbolic theorem 自动推出。

### Causal Boundary Response as the Central Object

从这一节开始，$q_i$ 总是指某个已声明的 admissible dynamical polarization，而不是任意 variational coordinate。对固定 $q_i$，定义 regional solution space

$$\begin{align}
\mathcal P_i[q_i] &:=\left\{\Phi_i:\mathcal E_i(\Phi_i)=0, \gamma_i\Phi_i=q_i, \Phi_i\text{ satisfies the physical boundary condition}\right\}.
\end{align}$$

令 $\Xi_i^-$ 是 $t=t_-$ 上满足 constraints 与 physical boundary conditions 的 admissible Cauchy-data space。Boundary history 与 initial data 不是任意独立的；定义 compatibility domain

$$\begin{align}
\boxed{\mathfrak D_i :=\left\{(\xi_i^-,q_i)\in\Xi_i^-\times\mathcal B_i: \operatorname{Comp}_i(\xi_i^-,q_i)=0\right\}.}
\end{align}$$

对 regular second-order Dirichlet problem，最低阶 compatibility 包含

$$\begin{align}
\gamma_i\varphi_i^-&=q_i(t_-), &\gamma_iv_i^-&=\partial_tq_i(t_-), &v_i^-&:=\dot\Phi_i(t_-)=\mathcal V_i(\xi_i^-)
\end{align}$$

其中 $\mathcal V_i$ 是 regular Legendre map 从 canonical data 恢复 configuration velocity 的映射；第二式只在相应 traces 存在时按 strong sense 使用。更高正则性还要求由 EOM 递推得到的 higher compatibility。First-order 或 constrained systems 的 $\operatorname{Comp}_i$ 必须由其实际 boundary polarization 与 constraint equations 定义，不能套用这两条 scalar 公式。

若 regional IBVP 在 $\mathfrak D_i$ 上 existence、uniqueness、causality 良好，就有 solution map

$$\begin{align}
\operatorname{Sol}_i:\mathfrak D_i&\longrightarrow\widehat{\mathcal P}_i, &(\xi_i^-,q_i)&\longmapsto\Phi_i[q_i;\xi_i^-],
\end{align}$$

以及精确定域的 causal boundary response

$$\begin{align}
\boxed{\mathcal R_i:\mathfrak D_i\longrightarrow\mathcal B_i^{\vee},\qquad (\xi_i^-,q_i)\longmapsto\boldsymbol\Pi_i[\Phi_i[q_i;\xi_i^-]],}
\end{align}$$

其中 $\mathcal B_i^{\vee}:=(\mathcal B_i)'$ 使用前述 duality pairing。选定 face/corner representative 后，boundary variation 给出 ambient tuple $(\Pi_{ij})_j\in\bigoplus_j\mathcal B_{ij}^{\vee}$；其 pullback 到 $\mathcal B_i$ 才是 intrinsic covector $\mathcal R_i(\xi_i^-,q_i)\in\mathcal B_i^{\vee}$。在本文的 smooth pairwise-interface baseline 中 $\mathcal B_i=\bigoplus_j\mathcal B_{ij}$，所以各 component 是 intrinsic。若 corners 迫使 $\mathcal B_i$ 成为 proper joint-trace subspace，则 ambient representatives 只定义到 $\mathcal B_i$ 的 annihilator；此时下面的 componentwise equation 必须理解为选定兼容的 face/corner representative 后的写法，完全 intrinsic 的版本是把所有 face covectors pull back 到 shared admissible-history space 后令其和为零。这里“causal”是指在 retarded prescription 下，时刻 $t$ 的输出只依赖 initial data 与此前的 boundary history。对 nonlinear theory，$\mathcal R_i$ 一般是 nonlinear map；若 uniqueness 失效，它只能视为 response relation。

Gluing feedback equation 就是对每条 edge $\{i,j\}$ 求解

$$\begin{align}
\left(\mathcal R_i(\xi_i^-,q_i)\right)_{ij} +\left(\mathcal R_j(\xi_j^-,q_j)\right)_{ji} +\mathcal E_{\Gamma_{ij}}(q_{\{ij\}})&=0,
\end{align}$$

同时满足所有 continuity identifications。若有 dynamical $\chi_{\{ij\}}$，这一行替换为

$$\begin{align}
(\mathcal R_i)_{ij}+(\mathcal R_j)_{ji} +\mathcal E_{\Gamma_{ij},q}(q_{\{ij\}},\chi_{\{ij\}})&=0, &\mathcal E_{\Gamma_{ij},\chi}(q_{\{ij\}},\chi_{\{ij\}})&=0.
\end{align}$$

等式是在 $\mathcal B_{ij}^{\vee}$ 及 interface field 的 variational dual 中成立，不是未说明正则性的 pointwise equation。这个 coupled response problem，而不是某个特定的 extension operator，才是 formalism 的中心。

在线性理论中它是 affine operator matrix：

$$\begin{align}
\Pi_{ij} &=\Pi_{ij}^{\mathrm{hom}}[\xi_i^-] +\sum_{k\in N(i)}\mathsf R_{i;jk}q_{ik},\\
\boldsymbol\Pi_i &=\boldsymbol\Pi_i^{\mathrm{hom}}[\xi_i^-] +\mathbf R_i\boldsymbol q_i.
\end{align}$$

$\mathsf R_{i;jk}$ 是 retarded boundary-to-boundary kernels；off-diagonal entries 描述同一 region 的不同 ports 之间的传输。对 static harmonic ansatz，$\mathbf R_i(\Omega)$ 是按本文 output $\Pi$ 定义的 frequency-domain port DtN/Weyl matrix；它与常用 $+\partial_n$ DtN convention 的负号在 Part II 校准。它在 regional Dirichlet eigenfrequencies 处可能有 poles，因此只求 $\ker(\mathbf R_i+\mathbf R_j)$ 一般不能恢复 $q=0$ 的 pole sector；必须回到未除去任何 factor 的 original amplitude equations，或使用 Part II 的 multivalued Cauchy-data relation。

### Time-Slab Input--Output Evolution Relation

单独的 $\mathcal R_i$ 忘掉了 regional bulk state 在 slab 两端之间的演化。令 $\xi_i^{\pm}$ 是 $t=t_{\pm}$ 上的 Cauchy data，更完整的 open-system object 是 relation

$$\begin{align}
\mathscr U_i:=\Bigl\{(\xi_i^-,\xi_i^+;q_i,\Pi_i): \Phi_i\text{ solves the regional IBVP on }M_i^I\Bigr\}.
\end{align}$$

若 IBVP 唯一，它是 input--output map 的 graph，简写为

$$\begin{align}
\boxed{\mathscr U_i:(\xi_i^-,q_i)\longmapsto(\xi_i^+,\Pi_i).}
\end{align}$$

#### Time-Slab On-Shell Action and Hamilton--Jacobi Generating Data

假设 $\mathfrak D_i$ 具有前述 smooth structure、$\operatorname{Sol}_i$ 至少为 $C^2$，并且 endpoint/corner potentials 已选成与完整 regional action 相容的 representatives。定义

$$\begin{align}
S_{i,\mathrm{on}}(\xi_i^-,q_i) &:=S_i^{\mathrm{full}}\bigl[\operatorname{Sol}_i(\xi_i^-,q_i)\bigr],\\
F_i^+(\xi_i^-,q_i)&:=\xi_i^+.
\end{align}$$

记 $\Theta_{i,\mathrm{comp}}^{\pm}$ 为已经吸收 temporal-corner $\boldsymbol\beta$ contributions 的 endpoint canonical one-forms，并令

$$\begin{align}
\vartheta_{\mathcal B_i}&:=\sum_{j\in N(i)} \langle\Pi_{ij},\delta q_{ij}\rangle_{I,ij}.
\end{align}$$

把 regional first variation 直接限制到 solution family，得到精确的 Hamilton--Jacobi identity

$$\begin{align}
\boxed{ \delta S_{i,\mathrm{on}} =F_i^{+*}\Theta_{i,\mathrm{comp}}^+ -\operatorname{pr}_{-}^{*}\Theta_{i,\mathrm{comp}}^- +\vartheta_{\mathcal B_i}.}
\end{align}$$

这不是额外假设，而是完整 first variation 的 on-shell restriction；若 physical boundary 也允许 work/flux，必须把它作为另一个 port term 加在右边。令 $\iota_i$ 把 data domain 嵌入

$$\begin{align}
\overline{\mathcal P_i^-}\times\mathcal P_i^+\times T^*\mathcal B_i
\end{align}$$

中的 input--output graph，并定义 ambient one-form

$$\begin{align}
\lambda_i^{\mathrm{amb}} :=-\Theta_{i,\mathrm{comp}}^-+\Theta_{i,\mathrm{comp}}^+ +\vartheta_{\mathcal B_i}.
\end{align}$$

于是

$$\begin{align}
\iota_i^*\lambda_i^{\mathrm{amb}}&=\delta S_{i,\mathrm{on}}, &\iota_i^*\delta\lambda_i^{\mathrm{amb}}&=0.
\end{align}$$

所以 $\mathscr U_i$ 在 displayed hypotheses 下不是仅仅 isotropic，而是 **exact isotropic**。Exactness 的 primitive 就是 time-slab on-shell action；它仍不自动给 maximality。

若进一步在两端选择 configuration polarizations $Q_i^\pm$，并且对每组 compatible $(Q_i^-,Q_i^+,q_i)$ 存在唯一 extremal、无 conjugate-point/caustic obstruction，便可定义 Type-I Hamilton--Jacobi functional

$$\begin{align}
W_i(Q_i^-,Q_i^+;q_i)&:=S_i^{\mathrm{full}}[\Phi_{\mathrm{cl}}],\\
\delta W_i&=P_i^+\,\delta Q_i^+-P_i^-\,\delta Q_i^- +\sum_j\langle\Pi_{ij},\delta q_{ij}\rangle_{I,ij}.
\end{align}$$

**Finite-dimensional proposition (exact Lagrangian graph).** 设 endpoint configuration spaces 与一个 finite port discretization $\mathcal B_{i,R}$ 都是 finite-dimensional，$W_i\in C^2$ 且上述 boundary-value problem 局部唯一。则

$$\begin{align}
(Q^-,Q^+,q)&\longmapsto \left(Q^-,-\partial_{Q^-}W_i;
Q^+,\partial_{Q^+}W_i;
q,\partial_qW_i\right)
\end{align}$$

的像在 $\overline{T^*Q^-}\times T^*Q^+\times T^*\mathcal B_{i,R}$ 中是 exact Lagrangian：canonical one-form 的 pullback 是 $\delta W_i$，故 two-form pullback 为零；其维数等于 ambient dimension 的一半。若 projection 到 $(Q^-,Q^+,q)$ 不可逆或 classical solution 多值，则 $S_{\mathrm{on}}$ 只能逐 branch 使用，或把未消去的 bulk variables 当作 internal variables 得到 generating family；此时不能假装存在单值 Hamilton principal function。General infinite-dimensional maximality仍需 closed split/range theorem；Part II 随后在一个 declared strong-Hilbert KG setting中实际完成这一证明。

#### Symplectic Balance

令 $\Omega_i^{\pm}$ 是两端 Cauchy-data spaces 的 symplectic forms。由 on-shell $d_M\boldsymbol\omega_i=0$、前述 boundary polarization 以及 Stokes theorem 得到 completed symplectic balance law

$$\begin{align}
\boxed{\Omega_i^+-\Omega_i^- =-\sum_{j\in N(i)}\int_{\Gamma_{ij}^I}\delta\Pi_{ij}\wedge\delta q_{ij}.}
\end{align}$$

这里 $\Omega_i^{\pm}$ 已包含由 $\boldsymbol\beta_{ij}$ 诱导的 temporal-corner two-forms；若仍有 spatial corners，则还要加入相应 corner completion。符号约定来自 $\partial M_i^I=\Sigma_i^+-\Sigma_i^-+\sum_j\Gamma_{ij}^I+\Gamma_{i0}^I$。若 physical boundary 有 flux，右边还要加入该项。

Corner orientation 取成

$$\begin{align}
\int_{\Gamma_{ij}^I}d_\Gamma\boldsymbol\beta_{ij} &=\int_{\Sigma_{ij}^{t_+}}\boldsymbol\beta_{ij} -\int_{\Sigma_{ij}^{t_-}}\boldsymbol\beta_{ij} +\text{spatial-corner terms},
\end{align}$$

这正给 $\Omega_i^{\pm}$ 中的 $+\delta\boldsymbol\beta_{ij}$ completion。对 1D scalar，$\Pi_i=-\phi_i'(L)$，所以上述 balance law 变成 $\Omega_i^+-\Omega_i^-=+\int_I\delta\phi_i'(L)\wedge\delta q_i$，与既有 interval convention 一致。

**Proposition (antisymmetric retarded response equals produced bulk symplectic form).** 在线性理论，或在一个 nonlinear background 周围线性化。固定 initial Cauchy data，令

$$\begin{align}
\mathcal V_{i;(\xi_i^-,q_i)} &:=\left\{h\in T_{q_i}\mathcal B_i:
(0,h)\in T_{(\xi_i^-,q_i)}\mathfrak D_i\right\},\\
K_i^{\mathrm{ret}} &:\mathcal V_{i;(\xi_i^-,q_i)}\longrightarrow \mathcal V_{i;(\xi_i^-,q_i)}^\vee,\\
K_i^{\mathrm{ret}}h &:=\left. D\mathcal R_i^{\mathrm{ret}}{}_{(\xi_i^-,q_i)}(0,h) \right|_{\mathcal V_{i;(\xi_i^-,q_i)}}.
\end{align}$$

$\mathcal V_{i;(\xi_i^-,q_i)}$ 是 fixed-initial-data 时真正允许的 vertical history tangent space，以下在 base point 固定时简写为 $\mathcal V_i$；例如 regular scalar Dirichlet problem 中，$h$ 在 $t_-$ 的所需 time jets 必须为零。只有当 $\mathfrak D_i$ 在所有 $q$ directions 上局部是 product 时，才可把它替换成整个 $T_{q_i}\mathcal B_i$。上式先把 response derivative 得到的 ambient boundary covector限制到 $\mathcal V_i$；若坚持使用 ambient representative，它只定义到 $\mathcal V_i$ annihilator。

取 realified tangent spaces 中的 $h_1,h_2\in\mathcal V_i$，并假设 physical-boundary symplectic flux 为零或已完整计入。相应 solution variations 满足 $\delta_a\xi_i^-=0$、$\delta_a\Pi_i=K_i^{\mathrm{ret}}h_a$。把它们直接代入 balance law，得到

$$\begin{align}
\boxed{ \Omega_i^+(\delta_1\Phi_i,\delta_2\Phi_i) =-\left[ \langle K_i^{\mathrm{ret}}h_1,h_2\rangle_I -\langle K_i^{\mathrm{ret}}h_2,h_1\rangle_I \right].}
\end{align}$$

若 transpose 在同一个 vertical space $\mathcal V_i$ 上由 $\langle K_i^{\mathrm{ret}\,\top}h_1,h_2\rangle_I:=\langle K_i^{\mathrm{ret}}h_2,h_1\rangle_I$ 定义，则

$$\begin{align}
\Omega_i^+(\delta_1\Phi_i,\delta_2\Phi_i) &=-\left\langle (K_i^{\mathrm{ret}}-K_i^{\mathrm{ret}\,\top})h_1,h_2 \right\rangle_I.
\end{align}$$

这就是所需的 antisymmetric-response identity。它说明 fixed-initial-data retarded response 的非互易部分精确记录 boundary driving 在 final bulk phase space 中生成的 symplectic area；它绝不说明 retarded kernel 应当 symmetric。对 formally self-adjoint hyperbolic problem，transpose 通常对应 advanced prescription，而 retarded Volterra operator 一般与它不同。只有再把 final endpoint contribution 固定或消去，使 produced $\Omega_i^+$ 在所考虑 variations 上为零，port Hessian 才可能 symmetric。

#### Energy and Physical Power Balance

再假设 complete regional theory 对一个 tangent-to-boundary time-translation field $T$ invariant，Legendre/constraint reduction 后存在相应 Hamiltonian，并且 physical boundary 没有未计入的 work。以下把

$$\begin{align}
H_i^{\mathrm{pol}}(t)
\end{align}$$

定义为由 **complete regional action in the chosen boundary polarization** 产生的 canonical Noether Hamiltonian：它包括该 polarization representative 所诱导的 temporal endpoint/corner contribution，而不预设等于 raw stress-energy charge或 positive bulk energy。若 boundary potential 通过非零 $G^{\mathrm{pol}}$（连同相容的 endpoint/corner representative）写成 canonical form，则 $H_i^{\mathrm{pol}}$ 可与 raw bulk/stress-energy charge相差相应的 boundary endpoint functional；该差的符号由前述 potential convention固定。令 $\dot q:=\mathcal L_Tq$。直接对 time-translation variation使用 complete first variation，或等价地积分 completed Noether current，得到

$$\begin{align}
\boxed{ H_i^{\mathrm{pol}}(t_+)-H_i^{\mathrm{pol}}(t_-) =-\sum_{j\in N(i)}\int_{t_-}^{t_+} \langle\Pi_{ij}(t),\dot q_{ij}(t)\rangle\,\mathrm dt.}
\end{align}$$

这个符号与本文 orientation 一致。对 canonical scalar Dirichlet representative，$G^{\mathrm{pol}}=0$，所以 $H_i^{\mathrm{pol}}$ 就是 usual positive bulk energy，$\Pi=-\partial_n\Phi$，且

$$\begin{align}
\frac{\mathrm dH_i^{\mathrm{pol}}}{\mathrm dt} &=\int_{\partial\Sigma_i}\dot\Phi\,\partial_n\Phi =-\int_{\partial\Sigma_i}\Pi\,\dot q.
\end{align}$$

因而不是约定性的类比。Part III 的 explicit Proca representative给出非零 endpoint correction的具体实例，

$$\begin{align}
H_i^{\mathrm{pol}}=H_i^{\mathrm P}-\sum_{\partial\Sigma_i}q_i\Pi_i^t,
\end{align}$$

其中 $H_i^{\mathrm P}$ 是 positive stress-energy/bulk charge；只有 $H_i^{\mathrm{pol}}$ 逐字满足上面的 pure port-power law，而 $H_i^{\mathrm P}$ 的 balance 多一个 total time derivative。若 action、metric 或 boundary functional 显含 time，右边还要加入 explicit-source term；若 physical boundary 开放，也要加入其 port power。

**Proposition (pairwise power cancellation).** 对无 intrinsic interface action 的 artificial cut，$q_{ij}=q_{ji}=q$ 与 $\Pi_{ij}+\Pi_{ji}=0$ 给出

$$\begin{align}
-\langle\Pi_{ij},\dot q\rangle -\langle\Pi_{ji},\dot q\rangle=0
\end{align}$$

逐界面成立，所以 summed regional polarization-adapted Hamiltonian只受 physical exterior ports 驱动。若有 time-translation-invariant $S_\Gamma[q,\chi]$，regional pair 的 power 是 $+\langle\mathcal E_{\Gamma,q},\dot q\rangle$。记 $j_{\Gamma,E}$ 为 intrinsic interface energy current；在 $\mathcal E_{\Gamma,\chi}=0$ 上，interface Noether identity 一般给

$$\begin{align}
\frac{\mathrm dH_\Gamma}{\mathrm dt} &=-\langle\mathcal E_{\Gamma,q},\dot q\rangle -\int_{\partial\Sigma_\Gamma^t}j_{\Gamma,E}^ar_a\, \mathrm d\operatorname{vol}_{\partial\Sigma_\Gamma},
\end{align}$$

其中第二项在 spatially closed interface、vanishing energy current，或已把它吸收到 completed corner/external-port energy 时为零。在这些条件下 $H_i^{\mathrm{pol}}+H_j^{\mathrm{pol}}+H_\Gamma$ 的 internal power 才完全抵消；一般情形剩下的是 interface spatial boundary 的真实 power，而不是 gluing failure。这里 $(\delta q,\delta\Pi)$ 控制 phase-space symplectic flux，$(\dot q,\Pi)$ 控制 physical power；把二者混成同一个“flux”会丢失一个 field-space variation。这个 input/output pairing 与 port-Hamiltonian language 结构相容，但本文没有把两套 formalism 强行认同，也不从该类比引入额外 Dirac structures。

#### Three Response Objects That Must Not Be Identified

本文使用三种相关但不同的 response：

1. $\mathcal R_i^{\mathrm{ret}}$ 是给定 initial data 后的 real-time causal map；其 fixed-initial-data vertical derivative 是定义在 compatibility tangent $\mathcal V_i$ 上的 Volterra-type operator，antisymmetric part 由上一命题控制。
2. $M_i(z)$ 是 linear static spatial problem $(\mathcal K_i-z)u=0$ 的 Weyl/Dirichlet-to-Neumann object，只在 regional Dirichlet realization 的 resolvent set 上是 single-valued operator；在 Dirichlet spectrum 上应升级为 Cauchy-data linear relation。
3. $\operatorname{Hess}W_i$ 是对选定 endpoint polarization、固定 endpoint configuration data 后的 on-shell/Hamilton--Jacobi Hessian。$C^2$ 单值 branch 上完整 Hessian 按 Schwarz lemma symmetric；port--port block 只有在 endpoint terms 已固定或合法消元后才可单独解释。

在 stationary infinite-time problem 中，retarded Fourier transform 的 boundary values 可与 $M_i(z)$ 通过选定的 $i0$ prescription 联系；这需要 spectral/limiting-absorption assumptions，不是有限 slab 上的恒等式。Part II 会证明 quadratic elliptic Hamilton--Jacobi Hessian form 由 $M_i(z)$ 给出的精确 specialization；只有在额外 bounded/regularized hypotheses 下才升级成 everywhere-defined operator identity。这里尤其不声称 $\mathcal R_i^{\mathrm{ret}}$ 一般 symmetric。

在 boundary-history cotangent space 上取

$$\begin{align}
\Omega_{T^*\mathcal B_i}&:=\sum_j\int_{\Gamma_{ij}^I}\delta\Pi_{ij}\wedge\delta q_{ij}.
\end{align}$$

于是 $\mathscr U_i$ 的 graph 在

$$\begin{align}
\overline{\mathcal P_i^-}\times\mathcal P_i^+\times T^*\mathcal B_i, \qquad -\Omega_i^-+\Omega_i^++\Omega_{T^*\mathcal B_i}
\end{align}$$

中是 isotropic。要把它升级为 Lagrangian/canonical relation，还需 graph 是 smooth closed submanifold、各 symplectic forms nondegenerate，并证明 maximal isotropy；有限维时可用 half-dimension，Banach/Fréchet setting 中则需 closed split/maximality theorem。唯一良定本身只给 graph，不自动给 Lagrangian 性。Invariant gluing 是这些 relations 与 $\mathsf S_e\subset\overline{\mathcal Z_{i,e}}\times\mathcal Z_{j,e}$ 的 port composition；只有在 chosen cotangent polarization 中它才写成 $q_{ij}=q_{ji}$ 与 $\Pi_{ij}+\Pi_{ji}+\mathcal E_{\Gamma_{ij}}=0$。若 interface action 有自身 dynamics，它贡献自己的 canonical relation，不能只当作 algebraic momentum shift。

### Polarization-Independent Sewing and Its Cotangent Realization

Abstract artificial sewing 始终是前面定义的 $\mathsf S_e=\operatorname{Graph}(\mathbb J_{ij})$。它在 full trace phase spaces 上定义；KG、constraint-reduced Proca 与 Dirac 的差别只在 $\mathcal Z_{i,e}$、$\omega_{i,e}$ 与可用 polarization charts 不同。若两个 charts 改变，按 polarization-covariance proposition push forward $\mathsf S_e$，geometric relation 本身不变。

现在才选 $J_{ij}=\operatorname{id}$ 的 cotangent/Darboux chart。对一个无向 interface $e=\{i,j\}$，没有 intrinsic interface action 的 coordinate representative 是

$$\begin{align}
\boxed{ L_{\mathrm{sew},e}^0 :=\left\{(q_i,\Pi_i;q_j,\Pi_j):
q_i=q_j, \Pi_i+\Pi_j=0\right\}
\subset T^*\mathcal B_e\times T^*\mathcal B_e.}
\end{align}$$

它就是 diagonal $\Delta_{\mathcal B_e}\subset\mathcal B_e\times\mathcal B_e$ 的 conormal bundle $N^*\Delta_{\mathcal B_e}$；一般 bundle identification 时把 $\Delta$ 换成 $\operatorname{Graph}(J_{ij})$。在 finite dimension 中取参数 $(q,p)\mapsto(q,p;q,-p)$，product canonical one-form 的 pullback 是

$$\begin{align}
(\Pi_i\,\delta q_i+\Pi_j\,\delta q_j)|_{L_{\mathrm{sew}}^0} &=p\,\delta q-p\,\delta q=0.
\end{align}$$

所以它 exact isotropic；又因为维数是 ambient 的一半，故是 Lagrangian。对 reflexive Hilbert/Banach history manifold，同一证明在 cotangent symplectic form strong、diagonal closed split 时成立；在 weak-symplectic Fréchet space 中这里只先得到 isotropic，maximality 与 split complement 必须另证。

若 $S_{\Gamma,e}[q]$ 没有 tangential time derivatives，而且 allowed histories 固定 temporal endpoints 或相应 endpoint/corner potential 为零，则

$$\begin{align}
L_{\mathrm{sew},e}^{S_\Gamma} :=\left\{q_i=q_j=q, \ \Pi_i+\Pi_j+\delta S_{\Gamma,e}/\delta q=0\right\}
\end{align}$$

满足

$$\begin{align}
(\Pi_i\,\delta q_i+\Pi_j\,\delta q_j)|_{L_{\mathrm{sew}}^{S_\Gamma}} &=-\delta S_{\Gamma,e},
\end{align}$$

故在相同 regularity assumptions 下仍是由 $-S_{\Gamma,e}$ 生成的 exact Lagrangian relation。这里 $S_{\Gamma,e}$ 被视为 boundary-history functional，其 variation 没有遗漏 endpoint term。若 $S_\Gamma[q,\chi]$ 的 $q$ 或 $\chi$ 带 intrinsic time derivatives，或有 nonzero temporal/spatial-corner potentials，则 $-\int\mathcal E_{\Gamma,q}\,\delta q$ 不等于 $-\delta S_\Gamma$；必须把所有 carrying dynamics 的 $q,\chi$ endpoint phase spaces 与完整 $\mathscr U_\Gamma$ 一并加入，先取 $\mathscr U_\Gamma$ 与 two-sided trace diagonal 的 fiber product，再消去 internal port，不能只保留一个 momentum shift。

因此 classical time-slab gluing 可写成

$$\begin{align}
\boxed{ \mathscr U_{\mathrm{glued}} =\operatorname{pr}_{\mathrm{ext}} \left[ \left(\prod_i\mathscr U_i\right) \mathbin{\circ_{\mathrm{ports}}} \left(\prod_e\mathsf S_e^{\mathrm{phys}}\right) \right].}
\end{align}$$

这里 $\mathsf S_e^{\mathrm{phys}}=\mathsf S_e$ 对 artificial cut；有 genuine interface action 时它是 $\mathsf S_e$ 与完整 interface evolution relation 的 composition。在 set-theoretic tier，这只是“存在 internal full trace data 使所有 relations 同时成立”；$(q_e,\Pi_e)$ 只是 cotangent chart 中的写法。要把 composition 继续称为 smooth Lagrangian/canonical relation，必须要求相应 fiber products clean 或 transverse、characteristic excess 受控，并且 projection 到 external variables 是 injective immersion 或指定的 embedded/immersed relation；infinite-dimensional weak symplectic setting 还需 split hypotheses。Relation composition 在集合层面严格 associative，但 geometric canonical-relation composition 的 smoothness 不能由这一代数事实替代。

### Extended Regional Solution Space and Classical Gluing Locus

为了允许 histories 变化，定义扩展区域解空间

$$\begin{align}
\widehat{\mathcal P}_i &:=\bigsqcup_{q_i\in\mathcal B_i}\mathcal P_i[q_i], &\widehat{\mathcal P}&:=\prod_{i\in\mathcal I}\widehat{\mathcal P}_i.
\end{align}$$

这里 $\widehat{\mathcal P}_i$ 首先只是由 fixed-history solution spaces 组成的 disjoint union。在没有 well-posedness、regularity 与 smooth-dependence theorem 以前，不在它上面无条件使用 $T\widehat{\mathcal P}_i$、differential form 或 pullback。

在这个 set-theoretic tier，variation 的精确定义是 admissible parameter family：取

$$\begin{align}
(s_1,s_2)&\longmapsto(\xi_i^-(s_1,s_2),q_i(s_1,s_2),\Phi_i(s_1,s_2))
\end{align}$$

使 $(\xi_i^-(s),q_i(s))\in\mathfrak D_i$ 且 $\Phi_i(s)=\operatorname{Sol}_i(\xi_i^-(s),q_i(s))$。$\delta_1,\delta_2$ 只表示该 family 在 $s=0$ 的两个 derivatives。所有 general-level flux 与 two-form statements 先按这种 admissible two-parameter variations 理解。

令 $\boldsymbol\theta_i$ 是由 $S_i^{\mathrm{full}}$ 的 bulk representative 得到的 covariant symplectic potential current，并令

$$\begin{align}
\boldsymbol\omega_i(\Phi_i;\delta_1\Phi_i,\delta_2\Phi_i) &:=\delta_1\boldsymbol\theta_i(\Phi_i;\delta_2\Phi_i) -\delta_2\boldsymbol\theta_i(\Phi_i;\delta_1\Phi_i).
\end{align}$$

在时刻 $t$ 的 regional slice 上允许 $\delta q_i\neq0$。与 boundary polarization 相容的 completed expression 是

$$\begin{align}
\widehat\Omega_i^{\mathrm{comp}}(t) &:=\int_{\Sigma_i^t}\boldsymbol\omega_i +\sum_{j\in N(i)}\int_{\Sigma_{ij}^t}\delta\boldsymbol\beta_{ij} +\Omega_i^{\mathrm{spatial\ corner}}(t).
\end{align}$$

最后一项仅在 genuine spatial corners 存在时需要。它限制到每个 fixed-$q_i$ fiber 时就是带正确 boundary/corner completion 的 regional CPS two-form $\Omega_i[q_i]$；它一般不单独守恒，因为其 non-exact interface symplectic flux 为

$$\begin{align}
\mathfrak f_{ij} &=\delta_1\Pi_{ij,A}\,\delta_2q_{ij}^A -\delta_2\Pi_{ij,A}\,\delta_1q_{ij}^A =\delta\Pi_{ij,A}\wedge\delta q_{ij}^A.
\end{align}$$

为了升级到 ordinary differential-geometric language，明确加入以下 regional 与 global hypotheses：

**Smooth-structure hypothesis.** 对每个 $i$，假设

1. $\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i$ 是 split Banach/Fréchet submanifold；
2. $\operatorname{Sol}_i$ 是 smooth bijection onto $\widehat{\mathcal P}_i$，其 inverse 由 initial trace 与 boundary history 给出且 smooth；
3. boundary response 与 completed symplectic current 对 data smooth；
4. 下述 continuity map 与 matching map 是 smooth，并且它们的 zero loci 是 embedded split submanifolds。在 Banach category 中，一个可检验的充分条件是相应 linearizations split-surjective；在一般 Fréchet category 中这并不自动触发 regular-value theorem，故还须指定适用的 implicit-function framework（例如满足所需 tame/Nash--Moser hypotheses）或把 embedded-zero-locus 性质直接作为假设。

于是可以把 $\mathfrak D_i$ 的 smooth structure 经 $\operatorname{Sol}_i$ 搬到 $\widehat{\mathcal P}_i$，$\widehat\Omega_i^{\mathrm{comp}}$ 才成为真正的 differential two-form。

Invariantly，令 $\operatorname{Tr}_{i,e}:\widehat{\mathcal P}_i\to\mathcal Z_{i,e}$ 是 full variational trace map，并定义

$$\begin{align}
\boxed{\mathcal C^{\mathrm{inv}} :=\left\{(\Phi_i)_i:\bigl(\operatorname{Tr}_{i,e}\Phi_i, \operatorname{Tr}_{j,e}\Phi_j\bigr)\in\mathsf S_e^{\mathrm{phys}}
\ \text{for every }e=\{i,j\}\right\}.}
\end{align}$$

有 dynamical interface fields 时，$\mathsf S_e^{\mathrm{phys}}$ 已包含其 endpoint/history phase space 与 evolution relation，所以这个式子同时包含 interface EOM。Smooth tier 中要求 combined trace map 与 $\prod_e\mathsf S_e^{\mathrm{phys}}$ clean/split intersect；这就是 polarization-independent regularity hypothesis。以下 two-stage $\mathfrak F_q,\mathfrak F_\Pi$ 只是 cotangent polarization中把同一个 fiber product先按 base、再按 covector拆开的 coordinate proof。

在 chosen cotangent chart 的 smooth tier 中先定义 continuity map

$$\begin{align}
\mathfrak F_q:\widehat{\mathcal P}&\longrightarrow \bigoplus_{\{i,j\}}\mathcal B_{ij}, & \mathfrak F_q((\Phi_i,q_i)_i)&:=\left(q_{ij}-q_{ji}\right)_{\{i,j\}},\\
\mathcal H&:=\mathfrak F_q^{-1}(0).
\end{align}$$

其中相邻两侧的 history spaces 已用 common interface orientation 与 bundle identification 认同。只有在 $\mathcal H$ 上，shared history $q_{\{ij\}}:=q_{ij}=q_{ji}$ 才已定义；因此 matching map 必须写成

$$\begin{align}
\mathfrak F_\Pi:\mathcal H&\longrightarrow \bigoplus_{\{i,j\}}\mathcal B_{ij}^{\vee}, & \mathfrak F_\Pi((\Phi_i,q_i)_i) &:=\left(\Pi_{ij}+\Pi_{ji}+\mathcal E_{\Gamma_{ij}}(q_{\{ij\}})\right)_{\{i,j\}}.
\end{align}$$

在 corner-compatible proper history subspaces 上，codomain 相应替换为 shared admissible-history space 的 dual，并使用上一段所述 pullback covector。这样不会在 continuity 尚未成立的点上预设一个不存在的 common $q_{\{ij\}}$。

定义同一个 classical gluing constraint locus 的 cotangent-coordinate representative

$$\begin{align}
\mathcal C=\mathcal C^{\mathrm{inv}}:=\Bigl\{(\Phi_i,q_i)_{i\in\mathcal I}\in\widehat{\mathcal P}:\ & q_{ij}=q_{ji}=q_{\{ij\}},\\
&\Pi_{ij}+\Pi_{ji}+\mathcal E_{\Gamma_{ij}}(q_{\{ij\}})=0 \quad\text{for every }\{i,j\}\Bigr\}.
\end{align}$$

这是没有 independent $\chi$ 时的写法。对 genuine dynamical interfaces，完整 locus 是

$$\begin{aligned}
\mathcal C_{\mathrm{defect}} :=\Bigl\{((\Phi_i,q_i)_i,(\chi_e)_e):\;& q_{ij}=q_{ji}=:q_e,\\
&\Pi_{ij}+\Pi_{ji}+\mathcal E_{\Gamma_e,q}(q_e,\chi_e)=0,\\
&\mathcal E_{\Gamma_e,\chi}(q_e,\chi_e)=0 \quad\text{for every }e=\{i,j\}\Bigr\}.
\end{aligned}$$

这里 $\chi_e$ 还带有它自己的 admissible endpoint data 与 temporal-corner conditions。Smooth tier 中应把 $\mathfrak F_\Pi$ 替换为 combined map $(\mathfrak F_\Pi,\mathfrak F_\chi)$，并要求其 zero locus embedded split；若先在每个 fixed $q_e$ fiber 内解 $\mathcal E_{\Gamma_e,\chi}=0$，则同一结构等价地成为 regional spaces 与 interface evolution relations 的 fiber product。下文无 defect 时写 $\mathcal C$，有 defect 时相同符号应读成 $\mathcal C_{\mathrm{defect}}$，且所有 tangent vectors 同时满足 linearized $\chi$ equation。

为统一 pullback 记号，令 $\widehat{\mathcal Z}_{\Gamma,e}$ 是 interface endpoint/history data 的 ambient space（尚未施加 $\mathcal E_{\Gamma,\chi}=0$），并写

$$\begin{align}
\widehat{\mathcal P}_{\mathrm{tot}} &:=\widehat{\mathcal P}\times \prod_e\widehat{\mathcal Z}_{\Gamma,e}.
\end{align}$$

无 dynamical interface 时相应 factor 取为一点，故 $\widehat{\mathcal P}_{\mathrm{tot}}=\widehat{\mathcal P}$。

在 smooth tier 中这就是 $\mathcal C=\mathfrak F_\Pi^{-1}(0)\subset\mathcal H$。由 hypothesis 4，$\mathcal H$ 与 $\mathcal C$ 依次是 embedded split submanifolds；Banach 情形可用上述 split-surjectivity criterion 验证，Fréchet 情形则使用已声明的 implicit-function framework。

Set-theoretic tier 中，对满足 linearized continuity 与 matching 的 admissible two-parameter families，定义

$$\begin{align}
\Omega_{\mathrm{glued}}(t)(\delta_1,\delta_2) :=\sum_{i\in\mathcal I}\widehat\Omega_i^{\mathrm{comp}}(t)(\delta_1,\delta_2) +\sum_{\{i,j\}}\Omega_{\Gamma_{ij}}(t)(\delta_1,\delta_2),
\end{align}$$

其中无 intrinsic interface dynamics 时令 $\Omega_{\Gamma_{ij}}=0$。在 smooth-structure hypothesis 下，上述 combined embedded-zero-locus assumptions 使 $\mathcal C$ 成为 embedded submanifold；记 inclusion 为 $\iota_{\mathcal C}:\mathcal C\hookrightarrow\widehat{\mathcal P}_{\mathrm{tot}}$，此时上式才可以等价地写成真正的 pullback

$$\begin{align}
\boxed{\Omega_{\mathrm{glued}}(t) =\iota_{\mathcal C}^{*}\left( \sum_i\operatorname{pr}_i^{*}\widehat\Omega_i^{\mathrm{comp}}(t) +\sum_e\operatorname{pr}_e^*\Omega_{\Gamma,e}(t)\right).}
\end{align}$$

若 $S_{\Gamma_{ij}}$ 含 intrinsic time derivatives，$\Omega_{\Gamma_{ij}}$ 由 interface action 自身的 symplectic potential 与 corner completion 得到。

**Proposition (pairwise symplectic-flux cancellation).** 假设 bulk 与 interface equations 成立，physical boundary 没有 symplectic flux，并取满足 linearized continuity 与 matching equations 的 admissible variations；在 smooth tier 它们就是 $T\mathcal C$ 中的 tangent vectors。若 $S_{\Gamma_{ij}}=0$，每一对相邻区域的 non-exact flux 满足

$$\begin{align}
\mathfrak f_{ij}+\mathfrak f_{ji} &=\delta(\Pi_{ij,A}+\Pi_{ji,A})\wedge\delta q_{\{ij\}}^A=0.
\end{align}$$

由 $d_\Gamma\delta\boldsymbol\beta$ 产生的部分已被 $\widehat\Omega_i^{\mathrm{comp}}$ 吸收到 temporal corners。若 $S_{\Gamma_{ij}}[q,\chi]\neq0$，则

$$\begin{align}
\mathfrak f_{ij}+\mathfrak f_{ji} &=-\delta\mathcal E_{\Gamma_{ij},q}(q,\chi)\wedge\delta q.
\end{align}$$

Interface variational identity 还含 $\delta\mathcal E_{\Gamma,\chi}\wedge\delta\chi$；在 interface EOM 与 linearized interface EOM 上该项为零，余下右边写成 intrinsic interface symplectic current 的 time/spatial divergence。其 temporal part 正由 $\Omega_{\Gamma_{ij}}$ 的时间边界项抵消，spatial part 则进入 interface corner completion。因此 $\Omega_{\mathrm{glued}}(t)$ 与 Cauchy slice 无关。

Set-theoretic tier 中，这一步只给 admissible variations 上 slice-independent 的 antisymmetric bilinear expression。Smooth tier 中它给 constraint locus 上的 closed two-form。只有在 $\mathcal C$ regular、regional IBVP 唯一并且 two-form 无 degeneracy 时，才能直接称它为 symplectic form；若仍有 constraint-induced degeneracy，必须再约去 kernel。这里 $\mathcal C$ 是满足条件的 sublocus，不是含糊的“product modulo constraints”。

### Global Reconstruction and Symplectomorphism

令 $\mathcal P_M$ 是未切割 global theory 的 solution space，物理外边界条件与 regional problems 相同。定义 restriction map

$$\begin{align}
\operatorname{Res}:\mathcal P_M&\longrightarrow\mathcal C, & \Phi&\longmapsto(\Phi|_{M_i})_{i\in\mathcal I}.
\end{align}$$

**Theorem (regular reconstruction/symplectomorphism).** 假设：

1. 没有 intrinsic interface action，并且选定的 regional boundary terms、JKM representatives 与 corner completions 满足 exact additivity：对 global fields，$S_M^{\mathrm{full}}[\Phi]=\sum_iS_i^{\mathrm{full}}[\Phi|_{M_i}]$，artificial-interface contributions 两两抵消；
2. regional 与 global IBVP 在同一 regularity class 中 existence、uniqueness、continuous/smooth dependence 良好；
3. invariant full-trace condition $(\operatorname{Tr}_{i,e}\Phi_i,\operatorname{Tr}_{j,e}\Phi_j)\in\mathsf S_e$ 正好是 global field 的 transmission trace condition，并有相应 Sobolev/graph-domain patching lemma；在 cotangent scalar chart 中它的 base part才是 $q_{ij}=J_{ij}^{-1}q_{ji}$；
4. regional Green identity 成立，且 piecewise equations 的唯一 distributional interface defect 正是 invariant boundary pairing偏离 $\mathsf S_e$ 的量；在 cotangent scalar chart 中它是 $\Pi_{ij}+J_{ij}^*\Pi_{ji}$。Sewing 使该 defect消失，并有把所得 global weak solution升级到 $\mathcal P_M$ 所声明 regularity class 的 transmission regularity theorem；
5. smooth-structure hypothesis 与 two-stage embedded-zero-locus assumption 成立，physical boundary 无未计入的 symplectic flux。

则

$$\begin{align}
\boxed{\operatorname{Res}:\mathcal P_M\xrightarrow{\ \sim\ }\mathcal C}
\end{align}$$

是 bijection；在上述 Banach/Fréchet structures 下是 diffeomorphism，并且

$$\begin{align}
\boxed{\operatorname{Res}^{*}\Omega_{\mathrm{glued}}=\Omega_M.}
\end{align}$$

因此在 two-forms nondegenerate 时

$$\begin{align}
(\mathcal P_M,\Omega_M)&\simeq(\mathcal C,\Omega_{\mathrm{glued}})
\end{align}$$

是真正的 symplectomorphism，而不只是谱或 matching-condition 的一致。

**Proof.** Global solution 的 restrictions 显然满足 regional equations；其 two-sided full traces 是同一个 geometric trace，所以属于 $\mathsf S_e$。把 global first variation 分成 regional integrals 后，artificial-interface boundary forms由 exact action additivity互相抵消，故 $\operatorname{Res}$ well-defined。反过来，取 $\mathcal C$ 中的 piecewise solution；invariant trace relation 与 patching lemma 先给 global field $\Phi$。在 cotangent scalar chart 中，对任意 global test variation $\eta$，逐区 Green identity具体写成

$$\begin{align}
\langle\mathcal E_M(\Phi),\eta\rangle &=\sum_i\langle\mathcal E_i(\Phi_i),\eta_i\rangle +\sum_{\{i,j\}}\langle\Pi_{ij}+\Pi_{ji},\gamma_{ij}\eta\rangle=0.
\end{align}$$

这里 displayed line 取 $J_{ij}=\operatorname{id}$；一般 chart 把第二项换成 $\langle\Pi_{ij}+J_{ij}^*\Pi_{ji},\gamma_{ij}\eta\rangle$，Dirac 则直接使用 full-trace Green pairing。故 $\Phi$ 是 global weak solution；assumption 4 把它升级到 $\mathcal P_M$。Restriction 与 assembly 显然互逆，IBVP smooth dependence 给出 diffeomorphism。最后在任意 global Cauchy slice 上，exact action/potential additivity 与 corner cancellation 给出

$$\begin{align}
\operatorname{Res}^{*}\Omega_{\mathrm{glued}} &=\sum_i\int_{\Sigma_i}\boldsymbol\omega_i +\text{the required cancelling corner terms} =\int_{\Sigma}\boldsymbol\omega_M=\Omega_M.
\end{align}$$

这证明结论。

若 $S_{\Gamma_{ij}}\neq0$ 或 $B_{ij}+B_{ji}$ 不抵消，同一证明重构的是含 codimension-one defect action 的 global theory；此时不能把结论写成与无 defect 的 “uncut theory” 等价。若只有 set-theoretic tier 的假设，则仍可得到 restriction/assembly 的 bijection 与 bilinear-form equality，但不能声称 diffeomorphism 或 symplectomorphism。

### Associativity and Refinement/Cut Invariance

这两个结论必须分开：associativity 比较同一个 fixed partition 的不同 pairwise parenthesizations；refinement invariance 比较一个 partition 与把其中某个 region 再人工切开的 finer partition。它们都不同于“连续移动 cut position”的 family theorem，后者还需要关于 cut parameter 的 uniform regularity。

**Proposition (classical gluing associativity under reconstruction hypotheses).** 固定一个 finite partition $\mathfrak P=\{M_i\}_{i\in\mathcal I}$ 与其所有 external/physical ports。本命题始终处于全文声明的 smooth pairwise-interface baseline，不含需要额外 corner data 的 codimension-two junction/corner strata；triple junctions 或 genuine spatial corners 须先给 compatible joint trace spaces、corner/JKM completion 与相应 clean/split composition hypotheses，本文未证明该扩展。这里 $T$ 表示一个 **complete parenthesized sewing schedule**，而不只是 adjacency graph 的 spanning binary tree：从所有 regional endpoint histories 与 oriented interface histories彼此 independent 的 product 开始，按某个 parenthesization compose relations，并要求每条 internal edge 的 $L_{\mathrm{sew},e}$ 恰好施加一次；一次 binary merge 可同时 sew 两个 intermediate components 之间的全部 crossing edges，cycle 中尚未施加的 edge 则作为后续 internal relation composition。每一步都完整保留尚未 sewn 的 ports。假设：

1. 每个 intermediate union 及最终 union 都满足 displayed regional smoothness、transmission 与 reconstruction hypotheses；
2. 没有在 intermediate step 改变 lifting、boundary action、polarization 或 regularity class，也没有 reproject/delete 一个 retained port；
3. 若把 evolution objects 当作 smooth canonical relations，则每一步 fiber product clean/transverse，projection 满足前述 embedded/split conditions。

则任意两个 parenthesizations $T,T'$ 的最终 classical spaces $\mathcal C_T,\mathcal C_{T'}$ 具有 canonical equivalence

$$\begin{align}
\boxed{ \mathfrak A_{T,T'} :=\operatorname{Res}_{T'}\circ\operatorname{Res}_{T}^{-1}:
(\mathcal C_T,\Omega_T)\xrightarrow{\ \sim\ } (\mathcal C_{T'},\Omega_{T'}).}
\end{align}$$

它满足 cocycle identities $\mathfrak A_{T',T''}\circ\mathfrak A_{T,T'}=\mathfrak A_{T,T''}$ 与 $\mathfrak A_{T,T}=\operatorname{id}$。

**Proof.** 初始 product 中每个 oriented face 有 independent full trace data。沿任一 complete schedule 逐次 composition 对每条 internal edge 恰好加入一次 invariant condition

$$\begin{align}
(z_{i,e},z_{j,e})\in\mathsf S_e,
\end{align}$$

并保留其他 ports；因此即使 adjacency graph 有 cycles，final set 仍是全部 edge simultaneous sewing relations 的同一个 solution relation，不依赖加入顺序。在 cotangent $J=\operatorname{id}$ coordinates 中，这一行才展开为 $q_{ij}=q_{ji}$、$\Pi_{ij}+\Pi_{ji}=0$。更重要的是，不把这个 set equality 当作全部证明：由 reconstruction theorem，每个 $\mathcal C_T$ 都经 restriction 与同一个 global $\mathcal P_M$ bijective/diffeomorphic，且 $\operatorname{Res}_T^*\Omega_T=\Omega_M$。故 displayed map canonical，并且

$$\begin{align}
\mathfrak A_{T,T'}^*\Omega_{T'}=\Omega_T.
\end{align}$$

若只满足 set-theoretic hypotheses，结论降级为 canonical bijection 与 bilinear-form equality。若某一步 canonical-relation composition 不 clean，集合 relation 仍可 associative，但 smooth/Lagrangian conclusion 不能保留。

**Proposition (artificial refinement invariance).** 令 $\mathfrak P'$ 由 $\mathfrak P$ 中一个 region $M_r$ 人工分成 $M_{r_1}\cup M_{r_2}$ 得到，并在新 cut 上使用与原 regional action exactly additive 的 invariant full-trace sewing relation；任意 polarization chart 只允许按 covariance proposition 同步改变。这里 $\mathfrak P,\mathfrak P'$ 同样处于该 smooth pairwise-interface baseline，new cut 不产生需要额外 corner data 的 codimension-two junction/corner strata；若 refinement 产生 triple junctions 或 genuine spatial corners，则须另给上述 compatible joint trace spaces、corner/JKM completion 与 clean/split composition hypotheses，本文未证明该扩展。假设 $M_r$ 与 $(M_{r_1},M_{r_2})$ 两种 descriptions 都满足 reconstruction hypotheses。则 restriction/assembly 给出

$$\begin{align}
\boxed{ \mathfrak R_{\mathfrak P\to\mathfrak P'}: (\mathcal C_{\mathfrak P},\Omega_{\mathfrak P}) \xrightarrow{\ \sim\ } (\mathcal C_{\mathfrak P'},\Omega_{\mathfrak P'})}
\end{align}$$

并且 $\mathfrak R_{\mathfrak P\to\mathfrak P'}^*\Omega_{\mathfrak P'}=\Omega_{\mathfrak P}$。证明就是先把 $\Phi_r$ restriction 到两块，再用 new-cut continuity/flux equation 反向 assembly；exact action additivity 使 new artificial-interface corner/flux contributions cancel。连续 refinements 的 maps obey composition law，因为它们都是 global restriction map 的 factorizations。

这个命题不会删掉 genuine defect。若原 theory 在某条 interface 有 $S_\Gamma[q,\chi]$，refinement 只能增加 artificial cuts；穿过该 defect 的 reconstruction target 仍是含同一个 codimension-one action 与 $\chi$ dynamics 的 global defect theory。

### Foliation and Cauchy-Slice Covariance

这一节改变的是同一 worldtube 内用来描述 evolution 的 Cauchy slices；它不移动 spatial artificial cut。令 $C_i^a,C_i^b,C_i^c\subset M_i$ 是依次排列、与 timelike boundary 横截且满足同一 corner regularity 的 spacelike Cauchy hypersurfaces。记相应 completed endpoint phase spaces 为

$$\begin{align}
(\mathcal P_i^a,\Omega_i^a),\qquad (\mathcal P_i^b,\Omega_i^b),\qquad (\mathcal P_i^c,\Omega_i^c).
\end{align}$$

Completion 包括由所选 boundary-potential representative 在 $C_i^r\cap\Gamma_i$ 诱导的 corner two-form。把同一个 admissible physical/interface history $q_i$ restriction 到子 slab $M_i^{ba}$、$M_i^{cb}$，得到 regional relations

$$\begin{align}
\mathscr U_i^{b\leftarrow a}&\subset \overline{\mathcal P_i^a}\times\mathcal P_i^b\times T^*\mathcal B_i^{ba},\\
\mathscr U_i^{c\leftarrow b}&\subset \overline{\mathcal P_i^b}\times\mathcal P_i^c\times T^*\mathcal B_i^{cb}.
\end{align}$$

History concatenation要求 $q_i^{ba}$、$q_i^{cb}$ 在 $C_i^b\cap\Gamma_i$ 的所需 jets相等；endpoint state $\xi_i^b$ 只施加一次，两个 on-shell actions 的 $\Theta_i^b$ 项符号相反。

**Proposition (regional slice composition).** 在 regional IBVP existence/uniqueness 与 corner compatibility hypotheses 下，

$$\begin{align}
\boxed{\mathscr U_i^{c\leftarrow a} =\mathscr U_i^{c\leftarrow b}\circ_{\mathcal P_i^b}\mathscr U_i^{b\leftarrow a}.}
\end{align}$$

若 histories 固定，relation 是 canonical evolution map $E_{i,q}^{b\leftarrow a}$，并满足 cocycle

$$\begin{align}
E_{i,q}^{c\leftarrow b}E_{i,q}^{b\leftarrow a}&=E_{i,q}^{c\leftarrow a},& E_{i,q}^{a\leftarrow a}&=\operatorname{id}.
\end{align}$$

**Proof.** 一个 $M_i^{ca}$ solution restriction 到两个子 slabs 给右边的 composable pair。反过来，两个 solutions 的 $C_i^b$ Cauchy data相等且 boundary jets compatible；hyperbolic uniqueness与 weak patching 把它们组装成唯一的 $M_i^{ca}$ solution。On-shell actions add，intermediate endpoint potentials cancel；把两条 symplectic balance law相加，$C_i^b$ terms也 cancel，得到长 slab 的 balance law。故这个结论不依赖用哪一个 intermediate slice 做计算。

现在对 global uncut worldtube $M^{ba}$ 写 endpoint evaluation

$$\begin{align}
\operatorname{ev}_{C^r}:\mathcal P_M&\longrightarrow\mathcal P_M^r,\qquad \Phi\longmapsto\operatorname{Cauchy}_{C^r}(\Phi),\qquad r=a,b.
\end{align}$$

对一般 smooth tilted Cauchy surfaces，以下是本节的 **displayed hypotheses**，不是由 Part II 自动提供的结论：每个 $\operatorname{ev}_{C^r}$ 必须是 global solution space到相应 admissible finite-energy Cauchy-data space的 bijection/diffeomorphism；相应 trace theorem必须定义这些 data；covariant current必须满足所需 weak Stokes identity；并且 $C^r\cap\Gamma$ 处的 physical-boundary corner regularity与 completed corner form必须相容。在这些 global well-posedness、finite-energy trace、weak Stokes与 corner hypotheses 下，$\operatorname{ev}_{C^r}$ 保持 completed symplectic form。因此

$$\begin{align}
E_M^{b\leftarrow a}:=\operatorname{ev}_{C^b}\operatorname{ev}_{C^a}^{-1}
\end{align}$$

是 canonical evolution map，只依赖两张 geometric Cauchy surfaces，不依赖连接它们的 foliation。

**Theorem (conditional general-slice sewing/evolution covariance).** 固定 spatial partition $\mathfrak P$ 与 physical interface data，并假设每个子 slab、global slab及其 sewing均满足 reconstruction hypotheses；对 tilted slices还明确假设上一段的 evaluation-bijection、finite-energy trace、weak Stokes与 physical-boundary corner conditions。令 $\mathcal C_{\mathfrak P}^r$ 是在 $C^r=\bigcup_iC_i^r$ 上的 glued endpoint phase space，$\operatorname{Res}_{\mathfrak P}^r:\mathcal P_M^r\to\mathcal C_{\mathfrak P}^r$ 是 endpoint restriction/reconstruction symplectomorphism。则

$$\begin{align}
\boxed{E_{\mathrm{glued}}^{b\leftarrow a} =\operatorname{Res}_{\mathfrak P}^b E_M^{b\leftarrow a} (\operatorname{Res}_{\mathfrak P}^a)^{-1},}
\end{align}$$

并且下图 commute：

$$
\begin{array}{ccc}
\mathcal P_M^a &\xrightarrow{\ E_M^{b\leftarrow a}\ }&\mathcal P_M^b\\
\downarrow\scriptstyle{\operatorname{Res}_{\mathfrak P}^a}&&
\downarrow\scriptstyle{\operatorname{Res}_{\mathfrak P}^b}\\
\mathcal C_{\mathfrak P}^a&\xrightarrow{\ E_{\mathrm{glued}}^{b\leftarrow a}\ }&
\mathcal C_{\mathfrak P}^b.
\end{array}
$$

**Proof.** 两条路径都从同一个 global solution 取 regional restrictions，再在另一张 Cauchy surface读取其 data；uniqueness使它们逐点相等。Regional boundary symplectic flux 在每个 artificial interface 上由 invariant $\mathsf S_e$ 两两抵消，所以 summed regional Stokes identity正是 global identity；四条 arrows 都保持相应 completed symplectic forms。Observable algebra 的 map同样 commute，因为全部 maps 都是由同一个 global solution restriction诱导的 pullback。

**Corollary (hard KG constant-time energy-class slice covariance).** 对 Part II 的 ultrastatic linear KG specialization，只取 declared constant-time slices

$$\begin{align}
C^r&=\{t=t_r\},& \mathcal P_M^r&=V\oplus H=H_0^1(\Sigma)\oplus L^2(\Sigma),\qquad r=a,b,
\end{align}$$

其中 physical outer Dirichlet condition已包含在 $V$ 中。Part II 的 energy well-posedness使 $\operatorname{ev}_{C^r}:\mathcal P_M^{\mathrm{en}}\to V\oplus H$ 为连续线性双射并给出 $E_M^{b\leftarrow a}$；conserved current

$$\begin{align}
j^\mu(\phi_1,\phi_2)=\phi_1\nabla^\mu\phi_2-\phi_2\nabla^\mu\phi_1
\end{align}$$

在 distributional sense divergence-free。对两个 constant-time slices之间的 ultrastatic slab应用 energy-class weak identity，outer flux为零、regional internal flux由 equal $H^{1/2}$ traces与 summed $H^{-1/2}$ conormals抵消，所以

$$\begin{align}
\Omega_{C^b}(E_M^{b\leftarrow a}\xi_1,E_M^{b\leftarrow a}\xi_2)=\Omega_{C^a}(\xi_1,\xi_2).
\end{align}$$

Part II 的 Sobolev patching/reconstruction proposition在每张 constant-time $C^r$ 上都适用，故 displayed commuting square与 symplectic equality在这个 declared energy-data realization中由现有 weak PDE theorem直接成立。对一般 smooth tilted Cauchy surfaces，同一物理结论仍由前一 theorem给出，但只在 evaluation-bijection、finite-energy trace、weak Stokes与 corner hypotheses另行成立时适用；Part II 不证明这些 tilted-slice PDE hypotheses。

因此在 displayed hypotheses 下，reconstructed/glued phase space与 Hamiltonian-admissible observable algebra不依赖 slab 内 Cauchy slicing；改变 endpoint slice只通过 canonical evolution重新表示同一个 geometric theory。Hard PDE realization在本文限于 ultrastatic constant-time slices，general tilted-slice realization属于上述 conditional tier。这里没有证明“移动 $x=0$ cut”的 statement：后者改变 spatial partition，由上一节 refinement/cut restriction maps控制；Cauchy-slice covariance与 spatial-cut invariance是两个独立 theorem。

### Observable Reconstruction and a Refinement-Independent Algebraic Target

若 smooth tier 是 **strong symplectic**，$\operatorname{Res}:\mathcal P_M\to\mathcal C_{\mathfrak P}$ 是 symplectomorphism，所以每个 global observable $F\in C^\infty(\mathcal P_M)$ 都有 Hamiltonian vector field。若 two-form 只是 weakly nondegenerate，则 $\Omega^\flat$ 仅 injective，不保证任意 $dF$ 在其 range 中；此时定义

$$\begin{align}
\mathcal A_{\mathrm{Ham}}(\mathcal P_M) :=\left\{F\in C^\infty(\mathcal P_M):
dF\in\operatorname{ran}\Omega_M^\flat, \ X_F:=(\Omega_M^\flat)^{-1}dF\text{ smooth}\right\},
\end{align}$$

并把它作为假设 closed under the Poisson bracket 的 admissible/partial-Poisson algebra。以下 strong case 可取 $\mathcal A_{\mathrm{Ham}}=C^\infty$；weak case 中所有 $F,G$ 均限制在 $\mathcal A_{\mathrm{Ham}}$。每个这样的 global observable 对应

$$\begin{align}
F_{\mathfrak P}&:=F\circ\operatorname{Res}^{-1}\in C^\infty(\mathcal C_{\mathfrak P}),\\
\{F_{\mathfrak P},G_{\mathfrak P}\}_{\mathfrak P} &=\{F,G\}_M\circ\operatorname{Res}^{-1}.
\end{align}$$

反过来，regional functional tuple 只有在限制到 $\mathcal C_{\mathfrak P}$ 后对等价 regional representatives 给出同一值，且其 differential 满足相应 Hamiltonian-solvability condition，才重构为这个 Poisson algebra 的元素。若 two-form 仍 presymplectic，observable 沿 kernel constant 只是必要条件；还须证明 smooth reduced quotient 存在，并在 quotient 上核验 Hamiltonian solvability，之后 Poisson bracket 才定义。

对两个 partitions $\mathfrak P\preceq\mathfrak P'$，定义

$$\begin{align}
\alpha_{\mathfrak P\mathfrak P'}(F_{\mathfrak P}) &:=F_{\mathfrak P}\circ\mathfrak R_{\mathfrak P\to\mathfrak P'}^{-1}.
\end{align}$$

Associativity/refinement propositions 给

$$\begin{align}
\alpha_{\mathfrak P'\mathfrak P''}\circ \alpha_{\mathfrak P\mathfrak P'} &=\alpha_{\mathfrak P\mathfrak P''}.
\end{align}$$

因此 theorem target 不是“每个 cut 产生一个新物理 algebra”，而是由这些 canonical Poisson isomorphisms 识别出的 partition/refinement-independent abstract classical observable algebra。

在线性 bosonic theory 中，令 $(\mathcal S_M,\sigma_M)$ 是 connected real solution symplectic space，$(\mathcal S_{\mathfrak P},\sigma_{\mathfrak P})$ 是 glued locus 的 linearization。Symplectic restriction map 诱导唯一的 Weyl $*$-isomorphism

$$\begin{align}
\boxed{ \mathfrak W(\mathcal S_M,\sigma_M) \xrightarrow{\ \sim\ } \mathfrak W(\mathcal S_{\mathfrak P},\sigma_{\mathfrak P}), \qquad W_M(F)\longmapsto W_{\mathfrak P}(\operatorname{Res}F).}
\end{align}$$

这些 isomorphisms 同样满足 refinement cocycle，所以给出 partition-independent connected Weyl algebra。这个 algebraic statement 不选择 state、complex structure、one-particle completion 或 Fock representation。特别地，它与后文 strict-Dirichlet regional product Fock representation 的 Hilbert--Schmidt obstruction 完全相容：abstract connected algebras 可 canonical isomorphic，而指定 product states/representations 仍可不 quasi-equivalent。Dirac specialization 的对应 functor是 CAR，并在 Part III 单独陈述。

### The Extension Operator Is Only a Computational Choice

为实际求 $\mathcal R_i$，可在每个 spatial slice 上取 energy space $V_i$，并定义 joint trace map

$$\begin{align}
\gamma_i:V_i&\longrightarrow\mathcal Q_i:=\operatorname{Ran}\gamma_i
\subseteq\bigoplus_{j\in N(i)}\mathcal Q_{ij}, &\gamma_if&=(\gamma_{ij}f)_{j\in N(i)}.
\end{align}$$

$\mathcal B_i$ 可取为以 $\mathcal Q_i$ 为值、满足所需时间正则性与 joint face/corner compatibility 的 histories；它与 Cauchy data 的 initial compatibility 仍由 $\mathfrak D_i$ 编码。选择任意 right inverse

$$\begin{align}
E_i:\mathcal Q_i&\longrightarrow V_i, &\gamma_iE_i&=\operatorname{id}_{\mathcal Q_i}.
\end{align}$$

若各 faces disjoint，或 $\mathcal Q_i$ 已编码 corner compatibility，也可写

$$\begin{align}
E_iq_i&=\sum_{j\in N(i)}E_{ij}q_{ij}, &\gamma_{ik}E_{ij}&=\delta_{kj}\operatorname{id},\qquad k,j\in N(i),
\end{align}$$

并要求 $E_{ij}q_{ij}$ 满足 homogeneous physical boundary condition。这里 $k$ 只遍历 region $i$ 的实际 boundary components，而不遍历整个 $\mathcal I$。

分解

$$\begin{align}
\Phi_i&=\Psi_i+E_iq_i, &\gamma_i\Psi_i&=0.
\end{align}$$

**Proposition (exact extension independence).** 若 $\widetilde E_i$ 是另一个 right inverse，令（为避免与 regional energy $H_i$ 混淆）

$$\begin{align}
\Delta E_i&:=\widetilde E_i-E_i, &\gamma_i\Delta E_i&=0, &\widetilde\Psi_i&:=\Psi_i-\Delta E_iq_i.
\end{align}$$

则

$$\begin{align}
\widetilde\Psi_i+\widetilde E_iq_i &=\Psi_i+E_iq_i=\Phi_i.
\end{align}$$

所以 exact regional field、exact response $\mathcal R_i$、constraint locus 以及 $\Omega_{\mathrm{glued}}$ 都不依赖 extension choice。Poisson extension、$\mathcal K_i$-harmonic extension 或其他 lifting 只是求解坐标。这个命题不自动蕴含 finite Galerkin truncations 对 lifting 的独立性；后者需要共同的 conforming spaces 或单独的 convergence theorem。

## Part II — Regular Second-Order Bosonic Specialization: Linear Static Klein--Gordon

从这里开始才增加 static background、quadratic action 与 compact-resolvent 等额外假设。取

$$\begin{align}
\mathrm ds^2&=-\mathrm dt^2+\sigma_{ab}(x)\mathrm dx^a\mathrm dx^b, &a,b&=1,\ldots,d,\\
S_i^{\mathrm{KG}}[\Phi_i] &=\frac12\int\mathrm dt\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma \left(\dot\Phi_i^A\dot\Phi_{i,A} -\nabla_a\Phi_i^A\nabla^a\Phi_{i,A} -m^2\Phi_i^A\Phi_{i,A}\right).
\end{align}$$

这一 specialization 在 artificial interfaces 上取 $B_{ij}=0$、$S_{\Gamma_{ij}}=0$ 与 $\boldsymbol\beta_{ij}=0$；因此 port variable 正是上文给出的 scalar conormal momentum。

令 spatial differential expression 为

$$\begin{align}
\mathcal K_i&=-\Delta_{\Sigma_i}+m^2.
\end{align}$$

再令 $K_i$ 表示 $\mathcal K_i$ 在 artificial interfaces 上取 homogeneous Dirichlet、在 $\Sigma_{i0}$ 上取已选 homogeneous self-adjoint physical boundary condition 的 self-adjoint realization。对 smooth compact $\Sigma_i$，其 domain 可示意写成

$$\begin{align}
D(K_i)&=\left\{f\in H^2(\Sigma_i):
\gamma_{ij}f=0\ (j\in N(i)),\ \mathsf B_{i0}f=0\right\},
\end{align}$$

其中 Robin 或 mixed physical conditions 必须连同使 $K_i$ self-adjoint 的 domain 一起声明。以下假定 $K_i>0$ 且 compact resolvent。

### Boundary Triples, Weyl $M$-Functions, and the Pole-Complete Spectrum

这一 subsection 只处理 linear static spatial operator；它不是 nonlinear real-time response 的替代。令 $S_i$ 是 $L^2(\Sigma_i)$ 中由 $\mathcal K_i$ 与 compactly supported/minimal boundary domain 定义的 closed symmetric operator，$T_i\subset S_i^*$ 是一个 graph core，$\overline T_i=S_i^*$。以下 boundary-triple theorem 先固定一个 boundary Hilbert space $\mathcal G_i$ 及 trace regularization，使

$$\begin{align}
\Gamma_{0,i}u&:=q_i=\gamma_Du, &\Gamma_{1,i}u&:=\Pi_i=-\gamma_Nu
\end{align}$$

落在同一个 $\mathcal G_i$。在 natural Sobolev formulation 中，未 regularize 的 traces 往往分别落在 $\mathcal Q_i$ 与 $\mathcal Q_i^\vee$；它们首先构成 boundary dual-pair Green system，而不是自动构成下面意义的 quasi boundary triple。只有给出 pivot/Riesz maps，把两个 trace ranges 连续地识别到同一个 $\mathcal G_i$ 并核验 range properties 后，才调用 ordinary/quasi-triple extension theorem；若直接留在 $\mathcal Q_i\times\mathcal Q_i^\vee$，下述 identities 只按 duality-pair relation 解读。本文采用 Hilbert inner product 对第一变量线性的 convention。由前述 $\Pi=-\partial_nu$ 得到 Green identity

$$\begin{align}
\boxed{ (T_iu,v)_i-(u,T_iv)_i =\langle\Gamma_{1,i}u,\Gamma_{0,i}v\rangle -\langle\Gamma_{0,i}u,\Gamma_{1,i}v\rangle.}
\end{align}$$

若 $T_i=S_i^*$ 且 $(\Gamma_{0,i},\Gamma_{1,i}):D(S_i^*)\to\mathcal G_i^2$ surjective，它是 ordinary boundary triple。对 elliptic PDE 更自然的情形通常是 **quasi boundary triple**：上述 Green identity 在 $D(T_i)$ 成立，$\operatorname{ran}(\Gamma_{0,i},\Gamma_{1,i})$ 只要求 dense，并且

$$\begin{align}
A_{D,i}:=T_i|_{\ker\Gamma_{0,i}}
\end{align}$$

是 self-adjoint regional Dirichlet realization。若只再有 $\operatorname{ran}\Gamma_{0,i}=\mathcal G_i$，一些文献称之为 generalized boundary triple；本文不把三种 surjectivity assumptions 混用。Lipschitz domain 上 natural traces 需延拓到适当 range-space duals，不能仅凭形式 $H^{1/2}\to H^{-1/2}$ 就宣称 ordinary triple。

对 $z\in\rho(A_{D,i})$ 定义 $\gamma$-field 与 Weyl function

$$\begin{align}
\gamma_i(z) &:=\left(\Gamma_{0,i}|_{\ker(T_i-z)}\right)^{-1},\\
\boxed{M_i(z)q:=\Gamma_{1,i}\gamma_i(z)q.}
\end{align}$$

这里带 spectral argument 的 $\gamma_i(z)$ 是 boundary-triple $\gamma$-field，不是 Part I 中无 argument 的 trace map $\gamma_i$。

在 quasi case，$M_i(z)$ 起初只定义在 $\operatorname{ran}\Gamma_{0,i}$，不无条件是 $\mathcal B(\mathcal G_i)$ 中的 everywhere-defined operator。对 harmonic ansatz $\Phi=e^{-\mathrm i\Omega t}u$，spatial parameter 是

$$\begin{align}
z&=\Omega^2, &\mathbf R_i(\Omega)&=M_i(\Omega^2)
\end{align}$$

只要 $\mathbf R_i$ 按本文 port output $\Pi$ 定义。数学文献常把 $\Lambda_i(z)q:=+\partial_nu$ 称为 DtN map；在本文 convention 下

$$\begin{align}
\boxed{M_i(z)=-\Lambda_i(z).}
\end{align}$$

这也校准 1D 符号：$D(k)=k\cot(kL)$ 是 $+\phi'(L)/q$，所以本文 Weyl response 是 $M(k^2)=-D(k)$。

#### Self-Adjoint Sewing as an Extension Theorem

先写一条 interface 的 two-region 情形。Ordinary triples 的 finite network 可对所有 edges 取 direct-sum sewing relation；quasi triples 的 network 还必须对 joint-face direct-sum triple 与完整 sewing relation核验相应 global range/domain theorem，下面的 two-region range condition不被声称自动覆盖带 off-diagonal regional response 的一般 graph。令

$$\begin{align}
A_D&:=A_{D,i}\oplus A_{D,j},\\
\Theta_{\mathrm{sew}} &:=\left\{\bigl((q,q),(p,-p)\bigr):q,p\in\mathcal G_e\right\}
\subset(\mathcal G_e\oplus\mathcal G_e)^2,
\end{align}$$

并定义

$$\begin{align}
A_\#&:=(T_i\oplus T_j)|_{\Theta_{\mathrm{sew}}}\\
&= (T_i\oplus T_j)|_{\{\Gamma_{0,i}u_i=\Gamma_{0,j}u_j, \ \Gamma_{1,i}u_i+\Gamma_{1,j}u_j=0\}}.
\end{align}$$

**Theorem (boundary-triple realization of static gluing).** 对 ordinary 与 quasi 两种情形都先令

$$\begin{align}
D_e(z)&:=\operatorname{dom}M_i(z)\cap\operatorname{dom}M_j(z),\\
M_e(z)&:=(M_i(z)+M_j(z))|_{D_e(z)},
\end{align}$$

若 regional triples ordinary，则 $\Theta_{\mathrm{sew}}$ 是 self-adjoint linear relation，因而 $A_\#$ self-adjoint。若 triples 仅 quasi，本文使用以下可检验的充分 specialization：假设存在 $z_+\in\mathbb C_+$ 与 $z_-\in\mathbb C_-$，使对 $z=z_+,z_-$ 以及 $k=i,j$ 都有

$$\begin{align}
\boxed{ \operatorname{ran}\!\left( \Gamma_{1,k}|_{\operatorname{dom}A_{D,k}} \right)
\subseteq\operatorname{ran}M_e(z).}
\end{align}$$

这是 quoted quasi-triple coupling theorem 的 range hypothesis；它保证 $A_\#$ self-adjoint，并使下述 $\gamma/M$ compositions 有定义。它不要求 $M_e(z)$ 的 range closed，也不把 $M_e(z)^{-1}$ 冒充为 $\mathcal G_e$ 上 everywhere-defined bounded operator。其他 quasi-triple variants 只有在另行核验其 extension/range theorem 后才纳入。Self-adjointness 不能只由 formal Green identity 或 flux cancellation 推出。在这些 assumptions 下：

1. 对

$$\begin{align}
   z\in\rho(A_{D,i})\cap\rho(A_{D,j}),
\end{align}$$

   有 off-pole spectral condition

$$\begin{align}
   \boxed{ z\in\sigma_p(A_\#) \iff \ker M_e(z)\neq\{0\}.}
\end{align}$$

   对应 eigenfunction 是 $\gamma_i(z)q\oplus\gamma_j(z)q$，其中 $q\in D_e(z)$。Ordinary case 中 $D_e(z)=\mathcal G_e$，于是恢复 $\ker(M_i+M_j)$ 的常见写法。

   对 finite network，假设 ordinary direct-sum theorem 适用，或 quasi network extension 已通过上一段要求的 global range/domain audit。令 $\mathsf I$ 把 shared edge traces $q=(q_e)_e$ 复制到各 oriented regional faces，$\mathsf S$ 把 oriented outputs 按每条 edge 两两相加，并令 $M_{\mathrm{reg}}(z):=\bigoplus_iM_i(z)$。Quasi case 中先定义合法 shared domain

$$\begin{align}
   D_{\mathrm{net}}(z) :=\left\{q:\mathsf Iq\in \bigoplus_i\operatorname{dom}M_i(z)\right\}.
\end{align}$$

   在 $z\in\bigcap_i\rho(A_{D,i})$ 上，完整 off-pole global condition 是

$$\begin{align}
   \boxed{ z\in\sigma_p(A_{\#}) \iff \ker\left( \bigl[\mathsf S M_{\mathrm{reg}}(z)\mathsf I\bigr] \big|_{D_{\mathrm{net}}(z)} \right) \neq\{0\}.}
\end{align}$$

   Pair formula 是它的一条 edge specialization。

2. 若 $z\in\rho(A_\#)\cap\rho(A_D)$，令 $M_e(z)^{-1}$ 表示从 $\operatorname{ran}M_e(z)$ 到 $D_e(z)$ 的 inverse；此处 injectivity 由 $z\in\rho(A_\#)$ 给出，而 theorem range hypothesis 保证 $\gamma_\#(\overline z)^*f\in\operatorname{ran}M_e(z)$。再令

$$\begin{align}
   \gamma_\#(z)q&:=\gamma_i(z)q\oplus\gamma_j(z)q,
\end{align}$$

   有 Kreĭn-type formula

$$\begin{align}
   \boxed{ (A_\#-z)^{-1} =(A_D-z)^{-1} -\gamma_\#(z) M_e(z)^{-1} \gamma_\#(\overline z)^*.}
\end{align}$$

   它不能在 regional Dirichlet pole 或 global eigenvalue 上逐点使用；quasi case 中 displayed inverse 只作用在其 range，不声称延拓成整个 $\mathcal G_e$ 上的 bounded inverse。

**Proof.** Ordinary case 中，$\Theta_{\mathrm{sew}}$ 正是前述 $N^*\Delta$ 的 linear self-adjoint/Lagrangian boundary relation；boundary-triple extension theorem 给 self-adjointness。若 $z$ 避开 both Dirichlet spectra，任意 homogeneous solution 唯一写成 $u_i=\gamma_i(z)q$、$u_j=\gamma_j(z)q$，flux sewing 正好成为 $M_e(z)q=0$，证明第一条。对 inhomogeneous equation 写

$$\begin{align}
u&=(A_D-z)^{-1}f+\gamma_\#(z)q.
\end{align}$$

Green identity 给 Dirichlet part 的 summed boundary flux $\gamma_\#(\overline z)^*f$；sewing 解出 $q=-M_e(z)^{-1}\gamma_\#(\overline z)^*f$，代回即得 resolvent formula。Quasi case 的同一 algebra 只有在 theorem assumptions 保证所有 maps/ranges 合法时成立。

#### Dirichlet Poles and the $q=0$ Sector

为了不漏掉 regional Dirichlet poles，对任意 complex $z$ 定义 Cauchy-data linear relation

$$\begin{align}
\boxed{ \mathcal C_i(z) :=\left\{(\Gamma_{0,i}u,\Gamma_{1,i}u):
u\in\ker(T_i-z)\right\}
\subset\mathcal G_i\times\mathcal G_i.}
\end{align}$$

当 $z\in\rho(A_{D,i})$ 时，$\mathcal C_i(z)=\operatorname{graph}M_i(z)$；当 Dirichlet problem 不唯一时，它一般 multivalued，并且

$$\begin{align}
\operatorname{mul}\mathcal C_i(z) &=\Gamma_{1,i}\ker(A_{D,i}-z).
\end{align}$$

因此完整、不过 pole 的 global spectral condition 是：存在非零 $u_i\oplus u_j$ 与 $(q,p_i),(q,p_j)$，使

$$\begin{align}
(q,p_i)&\in\mathcal C_i(z), &(q,p_j)&\in\mathcal C_j(z), &p_i+p_j&=0.
\end{align}$$

Finite network 中对每个 region 使用 joint-face relation $\mathcal C_i(z)$，再对所有 edges 同时施加 shared $q_e$ 与 summed $p_e=0$；这给不需要除去 regional Dirichlet factors 的真正 global relation。

它保留所有 $q=0$ regional Dirichlet sectors，包括 boundary-visible、nonzero conormal traces $p_i+p_j=0$ 的 pole modes；但在 abstract setting 中并不保证 $p_i,p_j$ 各自非零，一个 Weyl-invisible reducing self-adjoint sector 甚至可能同时满足 $\Gamma_0u=\Gamma_1u=0$。只有在 compact resolvent、simplicity/unique-continuation 与充分 boundary visibility 等额外 assumptions 下，才可排除这种 invisible sector，并把 regional Dirichlet eigenvalues 识别为 operator-valued $M_i(z)$ 的 visible poles。因此“求 $\ker(M_i+M_j)$ 得到全谱”只在 displayed off-pole domain 正确。

#### Stationary Hamilton--Jacobi Hessian

在 real $z\in\rho(A_{D,i})$ 且 real fields 上，令 $\mathfrak a_i^{\mathrm{open}}$ 是与 spatial differential expression 及已选 physical self-adjoint boundary condition 相容、但不在 artificial interfaces 强加 homogeneous Dirichlet trace 的 quadratic form；它必须包括 Robin 等 physical-boundary form term，并满足 $\mathfrak a_i^{\mathrm{open}}|_{\ker\Gamma_{0,i}}$ 是 $A_{D,i}$ 的 closed form。令 $q\in\operatorname{dom}M_i(z)=\operatorname{ran}\Gamma_{0,i}$，并在 quasi case 给这个 range 配备使 $\gamma_i(z)$ 与下述 bilinear form continuous 的 trace-range topology。定义带本文 sign 的 stationary quadratic functional

$$\begin{align}
\mathcal I_{i,z}[u] &:=\frac12\left(z\|u\|_i^2-\mathfrak a_i^{\mathrm{open}}[u,u]\right),\\
\mathcal W_{i,z}(q)&:=\mathcal I_{i,z}[\gamma_i(z)q].
\end{align}$$

把解直接代入定义并分部积分，$(\mathcal K_i-z)u=0$ 给

$$\begin{align}
\delta\mathcal W_{i,z}(q)[h] &=\langle\Pi_i,h\rangle =\langle M_i(z)q,h\rangle,\\
&\boxed{ \operatorname{Hess}\mathcal W_{i,z}(q)[h,k] =\langle M_i(z)h,k\rangle},\qquad h,k\in\operatorname{dom}M_i(z).
\end{align}$$

所以在这个 fixed-endpoint stationary specialization 中，Weyl/DtN object 确实给出 on-shell action 的 port-Hessian **quadratic form**。Green identity 使 displayed form 在 real resolvent set 上 symmetric。只有在选定 boundary Hilbert topology、$\mathcal W_{i,z}$ 为 $C^2$ 且 $M_i(z)$ 具有所需 everywhere-defined/closed realization时，才把它简写成 operator identity $\operatorname{Hess}\mathcal W_{i,z}=M_i(z)$；一般 quasi case 的 $M_i(z)$ 可能只在 $\operatorname{ran}\Gamma_{0,i}$ 上定义、unbounded 且仅 symmetric/closable。它不等于 finite-slab fixed-initial-data retarded operator；后者还有随 $q$ 变化的 final endpoint term，并由前述 antisymmetric-response identity控制。

### Klein--Gordon Reconstruction Theorem in the Energy Class

现在对无 interface action、physical outer Dirichlet condition 的 linear KG 给出上面 reconstruction theorem 的实质证明。令 $\Sigma$ compact，partition finite 且各 $\Sigma_i$ Lipschitz，并取

$$\begin{align}
H&:=L^2(\Sigma), &V&:=H_0^1(\Sigma),\\
\mathfrak a[u,v]&:=\int_{\Sigma}\mathrm d^dx\sqrt\sigma\, \left(\nabla_au\nabla^a\overline v+m^2u\overline v\right).
\end{align}$$

Global finite-energy solution class 是

$$\begin{align}
\mathcal P_M^{\mathrm{en}} :=\left\{\Phi\in C(I;V)\cap C^1(I;H)\cap C^2(I;V'):
\langle\ddot\Phi,v\rangle_{V',V}+\mathfrak a[\Phi,v]=0\ \forall v\in V\right\}.
\end{align}$$

令 $\mathcal C_{\mathrm{KG}}^{\mathrm{en}}$ 由 piecewise finite-energy regional solutions 组成，并要求：

1. 相邻 regions 的 $H^{1/2}$ traces 相等；
2. 对所有由同一个 $v\in V$ restriction 得到的 regional tests $v_i$，有 weak transmission identity

$$\begin{align}
\sum_i\left(\langle\ddot\Phi_i,v_i\rangle +\mathfrak a_i[\Phi_i,v_i]\right)&=0.
\end{align}$$

当 generalized conormal traces 存在时，第二条恰好等价于 $\Pi_{ij}+\Pi_{ji}=0$ in $H^{-1/2}(\Sigma_{ij})$；在 $H^2$ graph core 上它退化为通常的 pointwise outward-flux equation。

**Proposition (linear KG reconstruction).** Restriction 给出 continuous linear bijection

$$\begin{align}
\operatorname{Res}:\mathcal P_M^{\mathrm{en}}&\xrightarrow{\ \sim\ }\mathcal C_{\mathrm{KG}}^{\mathrm{en}},
\end{align}$$

其 inverse 是 piecewise assembly。它是自然 energy-solution topologies 之间的 Banach-space isomorphism，并满足

$$\begin{align}
\operatorname{Res}^{*}\Omega_{\mathrm{glued}}&=\Omega_M,\\
\Omega_M\bigl((\delta_1\Phi,\delta_1\dot\Phi),(\delta_2\Phi,\delta_2\dot\Phi)\bigr) &=(\delta_1\dot\Phi,\delta_2\Phi)_H-(\delta_2\dot\Phi,\delta_1\Phi)_H.
\end{align}$$

**Proof.** 有限 Lipschitz partition 的 Sobolev patching lemma 说明：piecewise $H^1(\Sigma_i)$ functions 在每个 interface 具有相同 $H^{1/2}$ trace，当且仅当它们 assemble 为一个 $H^1(\Sigma)$ function。故 $\mathcal C_{\mathrm{KG}}^{\mathrm{en}}$ 中的 $\Phi_i(t)$ 逐时组装为 $\Phi(t)\in V$；time regularity 按相同 finite direct-sum norm 保留。对任意 $v\in V$，weak transmission identity 直接给

$$\begin{align}
\langle\ddot\Phi,v\rangle_{V',V}+\mathfrak a[\Phi,v]&=0,
\end{align}$$

所以 assembly 是 global weak KG solution。反过来，global weak solution 先用 zero-interface-trace tests 给出每个 regional equation，再用一般 $v\in V$ 给出 weak flux matching，因此 restriction 落在 $\mathcal C_{\mathrm{KG}}^{\mathrm{en}}$。Restriction 与 assembly 显然互逆；有限 partition 下 global 与 patched regional energy norms 等价，所以它们 continuous。最后 $H$ inner product 与 spatial integral 可按 $\Sigma=\bigcup_i\Sigma_i$ 分拆，直接给出

$$\begin{align}
\Omega_M&=\sum_i\Omega_i=\Omega_{\mathrm{glued}}.
\end{align}$$

这完成 energy-level proof。若要把 weak conormal matching 写成逐点 normal derivative，还需要另加 regional graph-domain regularity；它不是上述重构等价成立的前提。

### Self-Adjoint Modes and Exact Driven Solution

取 $K_i$ 的 real orthonormal eigenbasis；mode label $n$ 已包含 field-component polarization：

$$\begin{align}
K_i\phi_{i,n}^A(x)&=\omega_{i,n}^2\phi_{i,n}^A(x),\\
\left\langle\phi_{i,m},\phi_{i,n}\right\rangle_i &:=\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma\, \delta_{AB}\phi_{i,m}^A(x)\phi_{i,n}^B(x)=\delta_{mn},\\
\sum_n\phi_{i,n}^A(x)\phi_{i,n}^B(y) &=\delta^{AB}\delta_{\Sigma_i}(x,y).
\end{align}$$

这里 invariant delta 由

$$\begin{align}
\int_{\Sigma_i}\mathrm d^dy\sqrt{\sigma(y)}\, \delta_{\Sigma_i}(x,y)f(y)&=f(x)
\end{align}$$

定义。不同 regions 的 modes 属于不同的 Hilbert spaces，不需要在同一个积分中人为加入 $\delta_{ij}$。

取 time-independent lifting，并记

$$\begin{align}
u_i[q](t)&:=E_iq_i(t),& \Phi_i^A(t,x)&=\Psi_i^A(t,x)+u_i^A[q](t,x),\\
\Psi_i^A(t,x)&=\sum_n c_{i,n}(t)\phi_{i,n}^A(x),& A_{i,n}[q](t)&:=\left\langle\phi_{i,n},u_i[q](t)\right\rangle_i,\\
B_{i,n}[q](t)&:=\left\langle\phi_{i,n},\mathcal K_iu_i[q](t)\right\rangle_i.
\end{align}$$

把 reconstructed field 直接代入 $(\partial_t^2+\mathcal K_i)\Phi_i=0$，得到

$$\begin{align}
\boxed{ \ddot c_{i,n}+\omega_{i,n}^2c_{i,n} =-\ddot A_{i,n}[q]-B_{i,n}[q].}
\end{align}$$

因此 forcing formula 取决于计算坐标，但 $\Phi_i$ 不取决于它。两种常用选择是

$$
\begin{array}{c|c|c}
\text{lifting choice}&B_{i,n}[q]&\text{mode forcing}\\ \hline
\mathcal K_iE_iq_i=0&0&-\ddot A_{i,n}[q]\\
-\Delta_{\Sigma_i}E_iq_i=0&m^2A_{i,n}[q]&
-A_{i,n}[\ddot q_i+m^2q_i].
\end{array}
$$

$\mathcal K_i$-harmonic choice 需要相应 elliptic Dirichlet problem 唯一可解。现有 1D toy model 使用的是 $h(y)=y/L$ 的 Laplace-harmonic lifting，所以其 forcing 含 $m^2q_i$；不能把这两种公式混写。

在初始时刻 $t_0$，正确的 modal initial data 是

$$\begin{align}
c^{(0)}_{i,n} &=\left\langle\phi_{i,n}, \Phi_i(t_0)-u_i[q](t_0)\right\rangle_i,\\
v^{(0)}_{i,n} &=\left\langle\phi_{i,n}, \dot\Phi_i(t_0)-\dot u_i[q](t_0)\right\rangle_i.
\end{align}$$

这里应当投影到 eigenfunction $\phi_{i,n}$。retarded solution 为

$$\begin{align}
c_{i,n}(t) &=c^{(0)}_{i,n}\cos\omega_{i,n}(t-t_0) +\frac{v^{(0)}_{i,n}}{\omega_{i,n}} \sin\omega_{i,n}(t-t_0)\\
&\quad-\int_{t_0}^{t}\mathrm dt'\, \frac{\sin[\omega_{i,n}(t-t')]}{\omega_{i,n}} \left(\ddot A_{i,n}[q](t')+B_{i,n}[q](t')\right).
\end{align}$$

以上 strong formula 例如可在 $q_i\in H^2_{\mathrm{loc}}(\mathbb R;\mathcal Q_i)$ 且 lifting 足够正则时使用。更低正则性的 finite-energy solution 应按 weak equation 理解。若 $K_i$ 允许 zero mode，则 $\sin(\omega\tau)/\omega$ 取 $\omega\to0$ 的极限；本文为避免这个分支假定 $K_i>0$。

### A Closed Split Lagrangian KG Evolution Graph in a Strong Hilbert Topology

这里证明一个真正 infinite-dimensional theorem，但主动限制在可控的 $1+1$ KG port model；不把它外推到任意 Fréchet history space。取 region $[0,L]$，$\phi(t,0)=0$，port $q(t)=\phi(t,L)$，并令

$$\begin{align}
K&=-\partial_x^2+m^2,&D(K)&=H^2(0,L)\cap H_0^1(0,L),&m&>0.
\end{align}$$

记 $H_s$ 为 $K$ 的 Hilbert scale，$\|f\|_{H_s}=\|K^{s/2}f\|_{L^2}$，负指标取 dual completion。选择 balanced endpoint phase space

$$\begin{align}
\mathcal P_{1/2}&:=H_{1/2}\oplus H_{-1/2},\\
\omega_{1/2}((u,v),(\widetilde u,\widetilde v)) &:=\langle v,\widetilde u\rangle_{H_{-1/2},H_{1/2}} -\langle\widetilde v,u\rangle_{H_{-1/2},H_{1/2}}.
\end{align}$$

映射

$$\begin{align}
(u,v)&\longmapsto(Q,P):=(K^{1/4}u,K^{-1/4}v)\in L^2\oplus L^2
\end{align}$$

把 $\omega_{1/2}$ 变成 standard $\langle P,\widetilde Q\rangle-\langle\widetilde P,Q\rangle$，所以它是 **strong** symplectic，而不是 usual $H_0^1\oplus L^2$ energy topology中的 weak canonical form。Homogeneous KG evolution $U(t)$ 在 $(Q,P)$ coordinates中是 bounded symplectic rotation，因而 $U:=U(t_+-t_-)$ 是 onto symplectic isomorphism。

取 history Hilbert space

$$\begin{align}
\mathcal B:=H_0^2(I)\equiv\overline{C_c^\infty(t_-,t_+)}^{\,H^2},
\end{align}$$

所以 $q,\dot q$ 在两个 temporal endpoints 都为零。这样 initial/final corner compatibility 已吸收到 $\mathcal B$，admissible input domain真的是 full product $\mathcal P_{1/2}\times\mathcal B$。Output 取在 $\mathcal B^*$，并用一个固定 Riesz map $\mathcal B^*\simeq\mathcal B$ 只为讨论 strong cotangent symplectic form；physical formulas仍保留 duality pairing。

这里采用的是不同于 Part I strong trace discussion 的 regularity tier：在 $H_{1/2}=D(K^{1/4})$ topology中，endpoint spatial point trace不是可另行施加的连续 datum；port output则由 Green transposition定义为 $\mathcal B^*$ 中的 functional。因此 full-product domain statement与 Part I 在更强 trace class中要求的 corner compatibility并不矛盾。

**Lemma (bounded control and transposition response).** 令 $h(x)=x/L$、$u_n(x)=\sqrt{2/L}\sin(n\pi x/L)$，并记

$$\begin{align}
A_n&=(u_n,h)_{L^2}=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi},& \omega_n^2&=m^2+(n\pi/L)^2.
\end{align}$$

对 smooth dense data，前述 driven formula定义 bounded operators

$$\begin{align}
C:\mathcal B&\longrightarrow\mathcal P_{1/2},& D:\mathcal P_{1/2}&\longrightarrow\mathcal B^*,& R:\mathcal B&\longrightarrow\mathcal B^*,
\end{align}$$

使

$$\begin{align}
\xi^+&=U\xi^-+Cq,&\Pi&=D\xi^-+Rq.
\end{align}$$

这里 $\Pi=-\partial_x\phi(t,L)$ 对 strong solutions 是 ordinary conormal trace；对 general $\mathcal P_{1/2}$ data，它由 Green transposition唯一连续延拓到 $\mathcal B^*$。

**Proof.** 写

$$\begin{align}
k_n&:=\frac{n\pi}{L},& \nu_n&:=u_n'(L)=(-1)^n\sqrt{\frac2L}\,k_n,& \omega_n&=(m^2+k_n^2)^{1/2}.
\end{align}$$

则 $A_n=O(n^{-1})$、$\nu_n=O(n)$、$\omega_n\asymp n$。此外

$$\begin{align}
H_0^2(I)=\{q\in H^2(I):q(t_\pm)=\dot q(t_\pm)=0\}, \qquad \|q\|_{H^2(I)}\asymp\|q''\|_{L^2(I)},
\end{align}$$

后一等价由两次 Poincaré inequality得到。

先记录实际使用的 nonharmonic Bessel estimate。由于 $x\mapsto(m^2+x^2)^{1/2}$ strictly convex，频率集合 $\{\pm\omega_n:n\ge1\}$ uniformly separated。故存在只依赖 $I,L,m$ 的 $B_I$，使每个 $f\in L^2(I)$ 满足

$$\begin{align}
\sum_{n\ge1}\left( \left|\int_I f(t)\sin[\omega_n(t_+-t)]\,\mathrm dt\right|^2+ \left|\int_I f(t)\cos[\omega_n(t_+-t)]\,\mathrm dt\right|^2 \right) \le B_I\|f\|_{L^2(I)}^2.
\end{align}$$

这是 separated exponentials 的 Bessel inequality。为使这里不依赖一个黑箱：把 $f$ 以零延拓到 $\mathbb R$，在每个 $\pm\omega_n$ 周围取互不相交的 fixed-radius intervals；一维 Sobolev point estimate给 $|\widehat f(\pm\omega_n)|^2$ 由该 interval上的 $|\widehat f|^2+|\partial_\lambda\widehat f|^2$ 控制。求和后用 Plancherel以及 $\partial_\lambda\widehat f=-\mathrm i\widehat{tf}$、$t$ 在 $I$ 上 bounded，即得 displayed estimate。

**Estimate for $C$.** 取 zero initial data。由 driven formula，且在 $t_+$ 使用 $q=\dot q=0$ 两次分部积分，得到

$$\begin{align}
c_n^q(t_+) &=-\frac{A_nk_n^2}{\omega_n^3} \int_Iq''(t)\sin[\omega_n(t_+-t)]\,\mathrm dt,\\
\dot c_n^q(t_+) &=-\frac{A_nk_n^2}{\omega_n^2} \int_Iq''(t)\cos[\omega_n(t_+-t)]\,\mathrm dt.
\end{align}$$

第一式例如来自

$$\begin{align}
\int_I\sin[\omega_n(t_+-t)](q''+m^2q)\,\mathrm dt &=-k_n^2\int_I\sin[\omega_n(t_+-t)]q\,\mathrm dt,\nonumber\\
\int_I\sin[\omega_n(t_+-t)]q\,\mathrm dt &=-\omega_n^{-2}\int_I\sin[\omega_n(t_+-t)]q''\,\mathrm dt;
\end{align}$$

cosine formula相同。Hilbert-scale definition给 endpoint norm的精确权重

$$\begin{align}
\|Cq\|_{\mathcal P_{1/2}}^2 &=\sum_{n\ge1}\left( \omega_n|c_n^q(t_+)|^2+\omega_n^{-1}|\dot c_n^q(t_+)|^2 \right)\nonumber\\
&=\sum_{n\ge1}\frac{A_n^2k_n^4}{\omega_n^5} \left(|\widehat{q''}^{\,s}_n|^2+|\widehat{q''}^{\,c}_n|^2\right).
\end{align}$$

这里两个 hats正是上一 Bessel estimate 中的 sine/cosine integrals，而

$$\begin{align}
\frac{A_n^2k_n^4}{\omega_n^5}=O(n^{-3}).
\end{align}$$

所以

$$\begin{align}
\boxed{\|Cq\|_{\mathcal P_{1/2}} \le C_{I,L,m}\|q''\|_{L^2(I)} \le C_{I,L,m}'\|q\|_{H^2(I)}.}
\end{align}$$

这同时显示 position 的 $H_{1/2}$ weight $\omega_n$ 与 velocity 的 $H_{-1/2}$ weight $\omega_n^{-1}$ 如何精确匹配。

**Estimate for $D$.** 写 $x=(a,b)\in\mathcal P_{1/2}$，即

$$\begin{align}
\|x\|_{\mathcal P_{1/2}}^2 =\sum_{n\ge1}(\omega_n|a_n|^2+\omega_n^{-1}|b_n|^2).
\end{align}$$

Homogeneous solution的 formal conormal series与 $r\in C_c^\infty(I)$ 配对为

$$\begin{align}
\langle Dx,r\rangle =-\sum_{n\ge1}\nu_n\left[ a_n\int_Ir(t)\cos[\omega_n(t-t_-)]\,\mathrm dt +\frac{b_n}{\omega_n}\int_Ir(t)\sin[\omega_n(t-t_-)]\,\mathrm dt \right].
\end{align}$$

由于 $r=\dot r=0$ at $t_\pm$，两次 time integration by parts给

$$\begin{align}
\langle Dx,r\rangle =\sum_{n\ge1}\nu_n\left[ \frac{a_n}{\omega_n^2}\widehat{r''}^{\,c}_n +\frac{b_n}{\omega_n^3}\widehat{r''}^{\,s}_n \right].
\end{align}$$

对两项分别把 $a_n$ 写成 $\omega_n^{-1/2}(\omega_n^{1/2}a_n)$、把 $b_n$ 写成 $\omega_n^{1/2}(\omega_n^{-1/2}b_n)$，Cauchy--Schwarz给

$$\begin{align}
|\langle Dx,r\rangle| &\le\|x\|_{\mathcal P_{1/2}} \left[\sum_{n\ge1}\frac{\nu_n^2}{\omega_n^5} \left(|\widehat{r''}^{\,c}_n|^2+|\widehat{r''}^{\,s}_n|^2\right)\right]^{1/2}\nonumber\\
&\le C_{I,L,m}\|x\|_{\mathcal P_{1/2}}\|r''\|_{L^2(I)} \le C'_{I,L,m}\|x\|_{\mathcal P_{1/2}}\|r\|_{H^2(I)},
\end{align}$$

因为 $\nu_n^2/\omega_n^5=O(n^{-3})$，并再次使用同一个 Bessel inequality。故 $D:\mathcal P_{1/2}\to\mathcal B^*$ bounded；上式也定义了低正则性 initial data 的唯一 transposition conormal trace。

**Estimate for $R$.** 这里不用交换一个条件收敛的 double series。令 $\phi_q$ 是 zero-initial-data driven solution，$\psi_q:=\phi_q-hq$；则

$$\begin{align}
(\partial_t^2-\partial_x^2+m^2)\psi_q &=-h(q''+m^2q),& \psi_q|_{x=0,L}&=0,& (\psi_q,\dot\psi_q)|_{t_-}&=0.
\end{align}$$

Homogeneous Dirichlet wave energy estimate给

$$\begin{align}
\sup_{t\in I}\left( \|\psi_q(t)\|_{H_0^1(0,L)}+ \|\dot\psi_q(t)\|_{L^2(0,L)}\right) &\le C_{I,L,m}\|q''+m^2q\|_{L^1(I)} \le C'_{I,L,m}\|q\|_{H^2(I)}.
\end{align}$$

因此 $\|\phi_q\|_{L^2(I;H^1(0,L))}\le C\|q\|_{H^2(I)}$。对 $r\in C_c^\infty(I)$ 取 $w_r(t,x)=h(x)r(t)$，把 $\phi_q$ 直接代入 weak KG identity；先在 $x$ 分部积分，再因 $r=\dot r=0$ at $t_\pm$ 在 $t$ 分部积分两次，得到

$$\begin{align}
\langle Rq,r\rangle &=-\int_{I\times(0,L)}\left[ \phi_qh(r''+m^2r)+(\partial_x\phi_q)h'r \right]\,\mathrm dx\,\mathrm dt.
\end{align}$$

对 smooth $q$，左边正是 $\int_I[-\partial_x\phi_q(t,L)]r(t)\,\mathrm dt$；右边则在 energy class中定义它的 Green-transposition extension。Cauchy--Schwarz与上一 energy estimate给

$$\begin{align}
\boxed{|\langle Rq,r\rangle| \le C_{I,L,m}\|q\|_{H^2(I)}\|r\|_{H^2(I)}.}
\end{align}$$

故 $R:\mathcal B\to\mathcal B^*$ bounded。以上 estimates先对 finite spectral data与 $C_c^\infty(I)$ histories成立；这些 dense cores上的 bounds分别给 $C,D,R$ 的唯一 continuous extensions。Smooth data上的 transposition output由 Green identity与 ordinary conormal derivative一致，完成 lemma。

令

$$\begin{align}
\mathscr U_{\mathrm{KG}}^{\mathrm H}:= \left\{(x,Ux+Cq;q,Dx+Rq):x\in\mathcal P_{1/2},q\in\mathcal B\right\}
\end{align}$$

位于 strong symplectic Hilbert space

$$\begin{align}
\mathcal E:=\overline{\mathcal P_{1/2}}\oplus\mathcal P_{1/2}\oplus T^*\mathcal B,\qquad \Omega_{\mathcal E}=-\omega_{1/2}\oplus\omega_{1/2}\oplus\delta\Pi\wedge\delta q.
\end{align}$$

Smooth solutions上的 KG Green identity正是 symplectic balance。为避免 adjoint/domain含混，记

$$\begin{align}
\omega_{1/2}^{\flat}:\mathcal P_{1/2}&\longrightarrow\mathcal P_{1/2}^*,& \langle\omega_{1/2}^{\flat}x,y\rangle&:=\omega_{1/2}(x,y),\\
U^*:\mathcal P_{1/2}^*&\longrightarrow\mathcal P_{1/2}^*,& C^*:\mathcal P_{1/2}^*&\longrightarrow\mathcal B^*
\end{align}$$

为 Banach adjoints。Strong symplecticity说明 $\omega_{1/2}^{\flat}$ 是 bounded isomorphism；上一个 lemma给 $C:\mathcal B\to\mathcal P_{1/2}$、$D:\mathcal P_{1/2}\to\mathcal B^*$ 与 $R:\mathcal B\to\mathcal B^*$ 全部 bounded。因此下列三式分别确实属于 $\mathcal B(\mathcal P_{1/2},\mathcal P_{1/2}^*)$、$\mathcal B(\mathcal P_{1/2},\mathcal B^*)$ 与 $\mathcal B(\mathcal B,\mathcal B^*)$；dense smooth core上的 Green identity可由 continuity延拓为

$$\begin{align}
\boxed{U^*\omega_{1/2}^{\flat}U=\omega_{1/2}^{\flat},}\qquad \boxed{D=-C^*\omega_{1/2}^{\flat}U,}\qquad \boxed{C^*\omega_{1/2}^{\flat}C+R-R^\top=0.}
\end{align}$$

这里 $R^\top:\mathcal B\to\mathcal B^*$ 由 $\langle R^\top q,h\rangle_{\mathcal B^*,\mathcal B}=\langle Rh,q\rangle_{\mathcal B^*,\mathcal B}$ 定义，而

$$\begin{align}
\langle C^*\omega_{1/2}^{\flat}Cq,h\rangle =\omega_{1/2}(Cq,Ch).
\end{align}$$

故最后一式就是 retarded response antisymmetric-part identity的 bounded Hilbert version；三式没有隐含地把 $\mathcal B$ 与 $\mathcal B^*$ 认同，Riesz identification只用于把 $T^*\mathcal B$ 的 canonical form视为 strong。

**Theorem (closed split Lagrangian KG graph).** $\mathscr U_{\mathrm{KG}}^{\mathrm H}$ 是 $\mathcal E$ 中的 closed split Lagrangian linear subspace；特别地

$$\begin{align}
\boxed{(\mathscr U_{\mathrm{KG}}^{\mathrm H})^{\Omega_{\mathcal E}} =\mathscr U_{\mathrm{KG}}^{\mathrm H}.}
\end{align}$$

**Proof.** Isotropy由上面三条 identities直接展开得到。取

$$\begin{align}
z=(a,b;r,s)\in(\mathscr U_{\mathrm{KG}}^{\mathrm H})^{\Omega_{\mathcal E}}.
\end{align}$$

与所有 $(x,Ux+Cq;q,Dx+Rq)$ 配对。先令 $q=0$，用 $D=-C^*\omega^\flat U$、$U$ onto symplectic，得到

$$\begin{align}
b=Ua+Cr.
\end{align}$$

再令 $x=0$，代入第三条 identity，得到

$$\begin{align}
s=Da+Rr.
\end{align}$$

故 $z=(a,Ua+Cr;r,Da+Rr)$ 本身属于 graph，证明 maximal isotropy。Graph closedness甚至更直接：参数 $(x,q)$ 正是 ambient 的第一、第三 components，所以 inverse projection bounded；显式 bounded projection是

$$\begin{align}
\mathsf Q(a,b;r,s)&=(a,Ua+Cr;r,Da+Rr).
\end{align}$$

最后，任意 strong symplectic Hilbert form可用一个 compatible complex structure $J_{\mathcal E}$ 表示；closed Lagrangian满足

$$\begin{align}
\mathcal E=\mathscr U_{\mathrm{KG}}^{\mathrm H}\oplus J_{\mathcal E}\mathscr U_{\mathrm{KG}}^{\mathrm H},
\end{align}$$

且第二项 isotropic，故 graph split Lagrangian。这完成 infinite-dimensional maximality与 splitness；没有使用 finite-dimensional half-count。

**Composition corollary.** 对两个这类 Hilbert relations 与 strong-cotangent sewing relation，令 middle-variable mismatch operator把两个 copies of the internal port/state相减。若该 bounded operator有 closed range，则其 kernel 与 range 在 Hilbert category 中 complemented，因而 fiber product本身是 closed split clean intersection。要使 projected composition仍是 closed split Lagrangian，还必须把 characteristic excess kernel显式 quotient，并要求 quotient后的 external projection injective、具有 closed complemented image；这正是这里所称的 Hilbert clean/split projection hypotheses。一个具体的 zero-excess sufficient condition是 summed port operator $R_i+R_j:\mathcal B\to\mathcal B^*$ boundedly invertible：internal history随后由 bounded elimination唯一确定，composition是 closed split Lagrangian graph。Closed range **单独**只控制 fiber product，不控制其 projection image；若 projection不 closed或 mismatch range不 closed，则这里只保留 set-theoretic composition，不能声称 Lagrangian Hilbert relation。

这个 theorem 的范围是 declared balanced endpoint topology与 $H_0^2$ zero-corner histories。它不声称 usual energy topology变成 strong symplectic，也不声称 arbitrary Sobolev/Fréchet history上的 DtN operator bounded；这些限制正是 theorem成立所需的精确条件。

### Fixed-History Regional CPS Quantization

在 $\mathcal P_i[q_i]$ 内，$q_i$ 是 prescribed c-number，所以

$$\begin{align}
\delta q_i&=0,&\delta\Phi_i&=\delta\Psi_i.
\end{align}$$

于是

$$\begin{align}
\Theta_i[q_i] &=\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma\, \dot\Phi_i^A\delta\Phi_{i,A},\\
\Omega_i[q_i] &=\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma\, \delta\dot\Phi_i^A\wedge\delta\Phi_{i,A}\\
&=\sum_n\delta v^{(0)}_{i,n}\wedge\delta c^{(0)}_{i,n}.
\end{align}$$

由于 allowed variations 在 interface 上满足 $\delta q_i=0$，regional symplectic flux 消失，$\Omega_i[q_i]$ 对 slice 守恒。fixed-history quantization 因而给出

$$\begin{align}
[c^{(0)}_{i,n},v^{(0)}_{j,m}] &=\mathrm i\delta_{ij}\delta_{nm},\\
d_{i,n} &=\sqrt{\frac{\omega_{i,n}}2}\,c^{(0)}_{i,n} +\frac{\mathrm i}{\sqrt{2\omega_{i,n}}}\,v^{(0)}_{i,n},\\
[d_{i,n},d_{j,m}^{\dagger}]&=\delta_{ij}\delta_{nm}.
\end{align}$$

这些 CCR 只定义在 fixed-$q$ fibers 上；此时 $q_i$ 不是 operator。若 $q_i(t)$ 非常数，被所有 $d_{i,n}$ annihilate 的 state 只是 reference Gaussian state，不是 time-translation-invariant regional vacuum。

### Nonlinear Validation Within Part II — Semilinear Defocusing Scalar

这一节只取一个最小、可闭环的 nonlinear model，不试图覆盖一般 quasilinear PDE。令 $\Sigma$ 是 smooth compact Riemannian manifold with boundary，$1\le d\le3$，取 finite smooth partition $\Sigma=\bigcup_i\Sigma_i$ 与 homogeneous physical outer Dirichlet condition。考虑

$$\begin{align}
S[\phi]&=\int_I\!\mathrm dt\int_\Sigma\!\mathrm d^dx\sqrt\sigma \left[\frac12\dot\phi^2-\frac12|\nabla\phi|^2-\frac{m^2}{2}\phi^2-\frac{\lambda}{4}\phi^4\right],\\
0&=\ddot\phi-\Delta_\sigma\phi+m^2\phi+\lambda\phi^3,\qquad m^2>0,\quad\lambda\ge0.
\end{align}$$

它等价于本文 signature 下 $(\Box-m^2)\phi-\lambda\phi^3=0$。在每个 artificial interface 仍取 Dirichlet variational port

$$\begin{align}
q_i&=\gamma\phi_i,&\Pi_i&=-\partial_{n_i}\phi_i.
\end{align}$$

#### Concrete Local IBVP and Nonlinear Response

固定一个 region $\Sigma_i$。在 smooth boundary 上固定一个与 Sobolev scale 相容的 bounded right inverse

$$\begin{align}
E_i:H^{s-1/2}(\partial\Sigma_i)&\longrightarrow H^s(\Sigma_i),& \gamma E_i&=\operatorname{id},\qquad s=2,3,
\end{align}$$

并令 $w_i(t)=E_iq_i(t)$；physical outer components of $q_i$ 固定为零。下面给一个方便而非最弱的 strong class：

$$\begin{align}
q_i&\in C^2(I;H^{5/2}(\partial\Sigma_i)),\\
(\phi_i^-,v_i^-)&\in H^2(\Sigma_i)\times H^1(\Sigma_i),\\
\gamma\phi_i^-&=q_i(t_-),&\gamma v_i^-&=\dot q_i(t_-),
\end{align}$$

并要求由 equation 递推的相应 higher compatibility whenever an $H^2\times H^1$ strong trace is invoked。令 $u_i=\phi_i-w_i$；则 $u_i|_{\partial\Sigma_i}=0$ 且

$$\begin{align}
\ddot u_i+K_{D,i}u_i+\lambda(u_i+w_i)^3 =-\ddot w_i-K_i^{\mathrm{diff}}w_i,\qquad K_i^{\mathrm{diff}}&=-\Delta_\sigma+m^2,\\
D(K_{D,i})&=H^2(\Sigma_i)\cap H_0^1(\Sigma_i),& K_{D,i}u&=K_i^{\mathrm{diff}}u.
\end{align}$$

对 $d\le3$，Sobolev embedding $H^1\hookrightarrow L^6$ 给连续 trilinear map

$$\begin{align}
H^1(\Sigma_i)^3&\longrightarrow L^2(\Sigma_i),& (f,g,h)&\longmapsto fgh.
\end{align}$$

故 $u\mapsto(u+w)^3$ 从 $H_0^1$ 到 $L^2$ locally Lipschitz；在 $H^2$ strong tier 中它还是 smooth map并保留所需 $H^1$ regularity。这里 $q_i\in C^2H^{5/2}$ 与 $E_i:H^{5/2}\to H^3$ 还保证 $-\ddot w_i-K_i^{\mathrm{diff}}w_i\in C(I;H^1)$，所以可在 basic energy estimate之后再作一阶 graph-norm estimate。把上式写成 Dirichlet wave group 的 Duhamel equation，在

$$\begin{align}
C(I_*;H_0^1)\cap C^1(I_*;L^2)
\end{align}$$

的 closed ball 上，取 $|I_*|$ 小于由 data/lift norm决定的 standard contraction time，就得到 existence、uniqueness 与 continuous dependence；在上一阶 graph norm中使用同一个 estimate得到 strong persistence。Polynomial Nemytskii map 的 Banach-space implicit/variation equation进一步给 solution map 对 compatible data 为 $C^\infty$，直到该 solution 的 maximal existence time。Strong compatible data 给

$$\begin{align}
\phi_i\in C(I_*;H^2)\cap C^1(I_*;H^1)\cap C^2(I_*;L^2).
\end{align}$$

这是一段自包含的 local theorem：只使用 wave-group energy estimate与上面的 trilinear bound。本文以下固定一个 finite slab $I\subset I_*$；等价地可要求 data 足够小使共同 local time覆盖预先指定的 $I$。Defocusing sign 可用于更强的 global continuation，但本 formalism 不需要把该附加 theorem塞进这里。

在 strong tier，normal trace theorem 给 $\partial_n\phi_i\in C(I;H^{1/2}(\partial\Sigma_i))$；在 energy tier同一个 output只通过 Green identity定义为 history dual。于是得到一个真正 nonlinear causal response

$$\begin{align}
\boxed{\mathcal R_i^{\mathrm{nl}}:\mathfrak D_i^{\mathrm{nl}}\longrightarrow(\mathcal B_i^{\mathrm{nl}})^\vee,\qquad (\phi_i^-,v_i^-;q_i)\longmapsto-\partial_{n_i}\phi_i.}
\end{align}$$

若 $(\eta_i^-,\nu_i^-;h_i)$ 是 compatible tangent datum，则

$$\begin{align}
D\mathcal R_i^{\mathrm{nl}}{}_{(\phi_i^-,v_i^-;q_i)} (\eta_i^-,\nu_i^-;h_i)&=-\partial_{n_i}\psi_i,
\end{align}$$

其中 $\psi_i$ 是唯一的 linearized driven solution

$$\begin{align}
\ddot\psi_i-\Delta\psi_i+m^2\psi_i+3\lambda\phi_i^2\psi_i&=0,& \gamma\psi_i&=h_i,& (\psi_i,\dot\psi_i)|_{t_-}&=(\eta_i^-,\nu_i^-).
\end{align}$$

所以 response differentiability 与 linearized response在这个模型中不是额外假设。

#### Nonlinear Sewing, Reconstruction, Symplectic Form, and Power

**Theorem (semilinear scalar reconstruction on its common existence slab).** 对每个 artificial interface施加

$$\begin{align}
\boxed{q_{ij}=q_{ji},\qquad\Pi_{ij}+\Pi_{ji}=0}
\end{align}$$

in $H^{3/2}$/$H^{1/2}$ strong traces，或相应 $H^{1/2}$/$H^{-1/2}$ weak duality。则 regional solutions restriction/assembly 与唯一 global semilinear solution建立 bijection；在 solution map smooth 的 open data set上它是 diffeomorphism。

**Proof.** Equal $H^{1/2}$ traces使 piecewise $H^1$ fields assemble 为 global $H^1$ field。对 global test $v$，逐区 weak equation的 boundary defects正是

$$\begin{align}
\sum_{\{i,j\}}\langle\Pi_{ij}+\Pi_{ji},\gamma v\rangle,
\end{align}$$

故 flux matching使其消失。Nonlinear term是 local function $\lambda\phi^3\in L^2$，piecewise与 assembled expressions相同；所以 assembly满足 global weak equation。Local uniqueness给 inverse于 restriction；strong regularity由各 region与 transmission hypothesis保持。注意这里没有使用 superposition或 spectral decomposition。

在任意 nonlinear background $\phi$ 上，两个 tangent solutions $\psi_1,\psi_2$ 满足同一个 formally self-adjoint linearized operator $\partial_t^2-\Delta+m^2+3\lambda\phi^2$。因此

$$\begin{align}
\Omega_\phi(\psi_1,\psi_2) =\int_\Sigma(\dot\psi_1\psi_2-\dot\psi_2\psi_1)\,\mathrm d\operatorname{vol}_\sigma
\end{align}$$

的 regional time variation只有 boundary term；linearized continuity与 flux matching逐界面给

$$\begin{align}
\delta(\Pi_{ij}+\Pi_{ji})\wedge\delta q=0.
\end{align}$$

故 summed form slice-independent，并由上面的 restriction/assembly等于 global covariant symplectic form。最后定义

$$\begin{align}
H_i[\phi_i]&=\int_{\Sigma_i}\left[\frac12\dot\phi_i^2+\frac12|\nabla\phi_i|^2+ \frac{m^2}{2}\phi_i^2+\frac\lambda4\phi_i^4\right]\mathrm d\operatorname{vol}_\sigma.
\end{align}$$

把解直接代入 $\mathrm dH_i/\mathrm dt$ 并分部积分，得到

$$\begin{align}
\frac{\mathrm dH_i}{\mathrm dt}&=-\sum_j\langle\Pi_{ij},\dot q_{ij}\rangle.
\end{align}$$

所以 artificial sewing使 internal nonlinear power逐对抵消。这个完整例子同时给 nonlinear well-posed response、its derivative、reconstruction、symplectic balance与 energy balance；它证明本 formalism 不是 linear spectral theory 的改名。

## Part III — Constrained and First-Order Non-Scalar Specializations

下面两个例子检验 abstract tier 是否真的超出 scalar。General curved-boundary statements仍明确依赖各自 constraint-preserving/admissible IBVP theorem；Proca给出一个 $1+1$ ultrastatic interval closed model，Dirac给出 Lorentzian MIT theorem加 compatible inhomogeneous lifting 的 closed model。两者都用前述 invariant full-trace sewing，而不是把 scalar Dirichlet formula原样套用。

### Massive Proca: Non-Gauge but Constrained

取 signature $(-,+,\ldots,+)$、$m_A^2>0$，并定义

$$\begin{align}
F_{\mu\nu}&:=2\nabla_{[\mu}A_{\nu]},\\
S_i^{\mathrm P}[A] &:=\int_{M_i^I}\left( -\frac14F_{\mu\nu}F^{\mu\nu} -\frac{m_A^2}{2}A_\mu A^\mu\right)\mathrm d\operatorname{vol}_g.
\end{align}$$

直接变分并只在最后做一次 integration by parts，得到

$$\begin{align}
\delta S_i^{\mathrm P} &=\int_{M_i^I} \left(\nabla_\mu F^{\mu\nu}-m_A^2A^\nu\right) \delta A_\nu\,\mathrm d\operatorname{vol}_g\\
&\quad-\int_{\partial M_i^I}n_\mu F^{\mu\nu}\delta A_\nu\, \mathrm d\operatorname{vol}_{\partial M_i} +\text{chosen boundary/corner variations}.
\end{align}$$

这里每个 boundary face 使用 outward normal 与 induced measure；若把 spacelike 与 timelike faces 拆开，temporal-face 的相对正负号等价地由 $\partial M_i^I=\Sigma_i^+-\Sigma_i^-+\Gamma_i^I+\Gamma_{i0}^I$ 记账。

在 timelike interface 上令 $s:T\Gamma\hookrightarrow TM$ 是 tangential inclusion，取

$$\begin{align}
a_a&:=(\iota_\Gamma^*A)_a, &\boxed{\Pi^a:=-s^a{}_{\nu}n_\mu F^{\mu\nu}.}
\end{align}$$

由于 $n_\mu n_\nu F^{\mu\nu}=0$，boundary one-form 精确是

$$\begin{align}
\boldsymbol\theta_\Gamma^{\mathrm P} &=\Pi^a\,\delta a_a\,\mathrm d\operatorname{vol}_\Gamma,
\end{align}$$

没有与 $\delta A_n$ 配对的 independent normal momentum。因此一个 variational Dirichlet-type polarization 是

$$\begin{align}
\boxed{q=a=\iota_\Gamma^*A,\qquad \Pi=-n\mathbin{\lrcorner}F|_{T\Gamma},}
\end{align}$$

而不是固定全部 $A_\mu$。在低正则性下，$a$ 是 tangential one-form trace，$\Pi$ 是其 Green-dual conormal functional。

Covariant symplectic current 为

$$\begin{align}
\omega_{\mathrm P}^{\mu}(\delta_1A,\delta_2A) &=-\delta_1F^{\mu\nu}\delta_2A_\nu +\delta_2F^{\mu\nu}\delta_1A_\nu,
\end{align}$$

故

$$\begin{align}
n_\mu\omega_{\mathrm P}^{\mu} &=\delta_1\Pi^a\,\delta_2a_a -\delta_2\Pi^a\,\delta_1a_a =\delta\Pi^a\wedge\delta a_a.
\end{align}$$

这直接把 Proca 放入同一个 symplectic-balance formula。

但其 canonical tier 不是 regular unconstrained vector KG。取 Cauchy slice future normal $u$，定义

$$\begin{align}
\mathsf a&:=\iota_\Sigma^*A, &e^\mu&:=u_\nu F^{\nu\mu}, &u_\mu e^\mu&=0.
\end{align}$$

Temporal component 没有 velocity momentum；field equation 的 divergence 与 normal projection 分别给 Lorenz/Proca constraints

$$\begin{align}
\boxed{\nabla_\mu A^\mu=0,} &\qquad \boxed{D_ae^a+m_A^2\alpha=0,\qquad \alpha:=u^\mu A_\mu,}
\end{align}$$

其中第二式按本文 $e^\mu=u_\nu F^{\nu\mu}$ convention 书写；若改用相反 electric-field convention，两项同时反号。于是

$$\begin{align}
\alpha&=-m_A^{-2}D_ae^a
\end{align}$$

由 reduced data $(\mathsf a,e)$ 决定，而不是 independent canonical coordinate。相应 reduced Cauchy two-form 是

$$\begin{align}
\boxed{ \Omega_\Sigma^{\mathrm P} =\int_\Sigma\delta e^a\wedge\delta\mathsf a_a\, \mathrm d\operatorname{vol}_\Sigma.}
\end{align}$$

在 unreduced Dirac analysis 中，这对应 vanishing temporal momentum 与 Gauss--Proca constraint 构成的 second-class pair；$m_A>0$ 时没有 gauge quotient。

**Proposition (conditional Proca response/sewing).** 假设所选 polarization 已嵌入一个 constraint-preserving symmetric-hyperbolic/Friedrichs reduction，boundary subbundle admissible/maximally dissipative，并且 initial-boundary corner compatibility、existence、uniqueness、causality 与 smooth dependence 已证明。则

$$\begin{align}
\mathcal R_i^{\mathrm P}:\mathfrak D_i^{\mathrm P}&\longrightarrow
(\mathcal B_i^{\mathrm P})^\vee,\\
(\mathsf a_i^-,e_i^-;a_i)&\longmapsto \Pi_i=-n_i\mathbin{\lrcorner}F_i|_{T\Gamma_i}
\end{align}$$

是 Part I 的 causal response map。$\mathfrak D_i^{\mathrm P}$ 至少包含 reduced Gauss constraint 与完整的 lowest-order corner matching。若 Cauchy slice 与 timelike interface 正交、$u$ 在 corner 处切于 interface，则后者分成

$$\begin{align}
\iota_{S_-}^{*}\mathsf a^-&=\iota_{S_-}^{*}a(t_-),\\
a(u)|_{S_-}&=\alpha|_{S_-} =-m_A^{-2}D_ae^a|_{S_-}, \qquad S_-:=\Sigma^-\cap\Gamma.
\end{align}$$

第一行只匹配 tangent-to-corner components，第二行才补上 prescribed timelike-boundary one-form 的 temporal component。非正交 corner 或 nontrivial lapse/shift 时，第二行必须用实际 boundary evolution vector 与相应 normal decomposition 重写。此外还有由 hyperbolic reduction 递推的 higher compatibility conditions；不能套用 scalar 的 arbitrary $(q,\dot q)$ conditions。

在 product/Gaussian interface collar 中，Proca equation 的 normal projection 给

$$\begin{align}
D_a\Pi^a&=m_A^2A_n,
\end{align}$$

所以 $A_n$ 由 output flux 的 tangential divergence 重构，不是另一个可任意 prescribed boundary coordinate。Artificial-interface sewing 是

$$\begin{align}
\boxed{a_i=a_j=:a,\qquad \Pi_i+\Pi_j=0.}
\end{align}$$

它既消去 symplectic flux，也由 $D_a\Pi_i^a=-D_a\Pi_j^a$ 给出 oppositely oriented normal components 的正确 transmission。Subject to weak transmission regularity，这重构 single connected Proca one-form；不再另行把两侧全部 $A_\mu$ traces 都当 Dirichlet data 固定。

若 $\tau$ 是 tangent-to-interface time-translation Killing field、$\mathcal L_\tau n=0$，Proca stress tensor 与 field equation 给

$$\begin{align}
T_{\mu\nu}n^\mu\tau^\nu &=-\Pi^a\mathcal L_\tau a_a+D_a\bigl[(\tau\cdot A)\Pi^a\bigr].
\end{align}$$

因此只有在 worldtube divergence 的完整 boundary integral 已处理时，才恢复

$$\begin{align}
H_i^{\mathrm{pol}}(t_+)-H_i^{\mathrm{pol}}(t_-) &=-\int_{\Gamma_i^I}\Pi^a\mathcal L_\tau a_a\, \mathrm d\operatorname{vol}_{\Gamma_i},
\end{align}$$

这里不能仅因每个 spatial cross-section closed 就丢掉 divergence term：finite time slab 的 $\partial\Gamma_i^I$ 仍有 temporal corners。必须明确把

$$\begin{align}
\int_{\partial\Gamma_i^I}(\tau\!\cdot\!A)\Pi^ar_a\, \mathrm d\operatorname{vol}_{\partial\Gamma_i}
\end{align}$$

纳入 $H_i^{\mathrm{pol}}$ 所含的 completed endpoint/corner energy；只有 $\partial\Gamma_i^I=\varnothing$ 时它才可直接消失。完成这个 bookkeeping 后，glued pair 的 power 由 $\Pi_i+\Pi_j=0$ 抵消。这里已证明的是 variation、constraint、flux 与 conditional sewing structure；**没有证明任意 curved timelike boundary 与任意 tangential history 都给 well-posed Proca IBVP**。若实际 admissible boundary operator只控制 incoming characteristic subspace，就必须把 $q$ 改成该 subspace 的 coordinates。

#### Concrete Closed Proca Model: $1+1$ Ultrastatic Interval

取 $M_i^I=I\times[a_i,b_i]$、$g=-\mathrm dt^2+\mathrm dx^2$，并令

$$\begin{align}
E_i&:=F_{01}[A_i].
\end{align}$$

由 $F^{01}=-E$、$F^{10}=E$ 与 $\partial_\mu F^{\mu\nu}-m_A^2A^\nu=0$ 逐分量得到

$$\begin{align}
\boxed{A_t=A_0=-m_A^{-2}\partial_xE,\qquad A_x=A_1=-m_A^{-2}\partial_tE.}
\end{align}$$

把它直接代回定义 $F_{01}=\partial_tA_x-\partial_xA_t=E$，得到

$$\begin{align}
\boxed{(-\partial_t^2+\partial_x^2-m_A^2)E=0.}
\end{align}$$

反过来，每个 sufficiently regular massive scalar solution $E$ 由 displayed formula 唯一给出 Proca solution；Lorenz constraint

$$\begin{align}
\partial_\mu A^\mu=-\partial_tA_0+\partial_xA_1=0
\end{align}$$

恒等成立。因此 $m_A>0$ 时这是 solution-space bijection，不是 gauge fixing。它只在 on-shell solution spaces 使用；不能把 $A[E]$ 当作 unconstrained off-shell field redefinition直接代回原 action。

在一个 boundary component $x=\mathrm{const}$ 写 outward sign $s:=n^x=\pm1$。Proca variational port精确成为

$$\begin{align}
\boxed{q=A_t=-m_A^{-2}\partial_xE,\qquad \Pi^t=-n_\mu F^{\mu t}=-sE,}
\end{align}$$

也就是 oriented scalar Neumann input 与 Dirichlet output：

$$\begin{align}
\boxed{\partial_nE=-s\,m_A^2q.}
\end{align}$$

Scalar Neumann boundary one-form 与这个 port potential相差 exact generating term：

$$\begin{align}
-m_A^{-2}\partial_nE\,\delta E =s q\,\delta E =\delta(sqE)+\Pi^t\,\delta q.
\end{align}$$

这正是 Part I 的 polarization transformation，而不是 physical defect action。

**Theorem (driven $1+1$ Proca IBVP and response).** 取例如

$$\begin{align}
E^-&\in H^2(a_i,b_i),&\dot E^-&\in H^1(a_i,b_i),&q&\in H^2(I;\mathbb R^{\partial\Sigma_i}),
\end{align}$$

并施加 Neumann corner compatibility

$$\begin{align}
\partial_nE^-&=-s\,m_A^2q(t_-),& \partial_n\dot E^-&=-s\,m_A^2\dot q(t_-)
\end{align}$$

以及所需 higher conditions。Standard inhomogeneous Neumann wave lifting与 homogeneous self-adjoint Neumann evolution给唯一

$$\begin{align}
E\in C(I;H^2)\cap C^1(I;H^1)\cap C^2(I;L^2),
\end{align}$$

continuous/causal地依赖 data。Displayed on-shell bijection于是给唯一 constraint-preserving Proca solution，并定义实际 response

$$\begin{align}
\boxed{\mathcal R_i^{\mathrm P,1+1}(E^-,\dot E^-;q) =-s_iE|_{\Gamma_i}.}
\end{align}$$

在 lower energy regularity，Neumann datum与 response按 transposition/weak trace理解；这里的 strong class只为让每个 trace ordinary。这个 theorem是 specific Proca result，因为上面已经逐式证明 Proca system与该 Neumann KG IBVP等价，而不是把 general Friedrichs theorem直接改名。

现在把 $[-L,L]$ 在 $x=0$ 分成 left/right regions。两侧 outward signs是 $s_L=+1$、$s_R=-1$，所以 invariant cotangent sewing

$$\begin{align}
q_L=q_R,\qquad\Pi_L^t+\Pi_R^t=0
\end{align}$$

等价于

$$\begin{align}
\boxed{\partial_xE_L=\partial_xE_R,\qquad E_L=E_R.}
\end{align}$$

故 $E$ 及其 weak normal derivative patch成一个 global KG solution；time-dependent trace equality还给 $\partial_tE_L=\partial_tE_R$，于是 $A_t=-E_x/m_A^2$、$A_x=-E_t/m_A^2$ 与 $F_{01}=E$ 全部 patch成单个 global Proca field。Restriction/assembly因此给 concrete Proca reconstruction theorem。

Reduced Proca symplectic form与 positive bulk energy在这个 model中分别是

$$\begin{align}
\Omega_\Sigma^{\mathrm P} &=m_A^{-2}\int_\Sigma\delta\dot E\wedge\delta E\,\mathrm dx,\\
H_\Sigma^{\mathrm P} &=\frac1{2m_A^2}\int_\Sigma \left(\dot E^2+E_x^2+m_A^2E^2\right)\mathrm dx.
\end{align}$$

Boundary symplectic flux是 $\delta\Pi^t\wedge\delta q$，故 sewing逐对抵消。Physical stress-energy balance含 polarization endpoint term：

$$\begin{align}
\frac{\mathrm dH_i^{\mathrm P}}{\mathrm dt} &=\sum_{\partial\Sigma_i}\left[-\Pi_i^t\dot q_i+ \frac{\mathrm d}{\mathrm dt}(q_i\Pi_i^t)\right],\\
H_i^{\mathrm{pol}}&:=H_i^{\mathrm P}-\sum_{\partial\Sigma_i}q_i\Pi_i^t,\\
\frac{\mathrm dH_i^{\mathrm{pol}}}{\mathrm dt} &=-\sum_{\partial\Sigma_i}\Pi_i^t\dot q_i.
\end{align}$$

这正是 Part I pure port-power law中的 polarization-adapted canonical Hamiltonian；raw positive bulk charge $H_i^{\mathrm P}$ 自身多一个 total time derivative。Internal cut 上 $q_L=q_R$ 与 $\Pi_L^t+\Pi_R^t=0$ 同时消掉 port power与 endpoint term；等价地，$E,E_t,E_x$ continuity使两侧 stress-energy flux直接抵消。这完成一个真实 constrained model 的 response、symplectic/power balance、sewing与 reconstruction闭环。

### Dirac: First-Order Graded Boundary Polarization

取同一 spacetime signature，并固定 Clifford convention

$$\begin{align}
\{\gamma^\mu,\gamma^\nu\}&=2g^{\mu\nu}.
\end{align}$$

把 $\psi,\bar\psi$ 当作 independent Grassmann-odd fields，采用 left field-space variation 与固定因子次序。Symmetrized action 是

$$\begin{align}
S_i^{\mathrm D}[\psi,\bar\psi] &=\int_{M_i^I}\left[ \frac{\mathrm i}{2}\left( \bar\psi\gamma^\mu\nabla_\mu\psi -(\nabla_\mu\bar\psi)\gamma^\mu\psi\right) -m_D\bar\psi\psi\right]\mathrm d\operatorname{vol}_g.
\end{align}$$

直接变分得到 Dirac equations 与 boundary one-form

$$\begin{align}
\boxed{ \boldsymbol\theta_{\Gamma,n}^{\mathrm D} =\frac{\mathrm i}{2}\left( \bar\psi\gamma^n\delta\psi -\delta\bar\psi\,\gamma^n\psi\right) \mathrm d\operatorname{vol}_\Gamma,\qquad \gamma^n:=n_\mu\gamma^\mu.}
\end{align}$$

它与 unsymmetrized potential $\mathrm i\bar\psi\gamma^n\delta\psi$ 相差一个 exact boundary generating term，必须像 Part I 的 $B_{ij}$ ambiguity 一样成套处理。Graded field-space differential 给

$$\begin{align}
\boxed{ \boldsymbol\omega_{\Gamma,n}^{\mathrm D} =\mathrm i\,\delta\bar\psi\,\gamma^n \wedge_{\mathrm{gr}}\delta\psi\, \mathrm d\operatorname{vol}_\Gamma.}
\end{align}$$

这里 $\wedge_{\mathrm{gr}}$ 不能换成 bosonic wedge：even graded symplectic form 在两个 odd tangent directions 上的 component 是 symmetric。Dirac observables 使用 graded Poisson bracket。

#### Half-Dimensional Port Data

令 $\mathcal Z_\Gamma$ 是 parity-shifted spinor/cospinor trace space，带上面 nondegenerate graded boundary form。一个允许的 variational polarization 是 closed split graded-Lagrangian decomposition

$$\begin{align}
\mathcal Z_\Gamma&=L_q\oplus L_p, &L_q&=L_q^{\perp_{\omega}}, &L_p&=L_p^{\perp_{\omega}}.
\end{align}$$

加入与该 splitting 相配的 boundary generating functional 后，才能写成

$$\begin{align}
\boldsymbol\theta_{\Gamma}^{\mathrm D} &=\langle\Pi,\delta q\rangle_{\mathrm{gr}}+\delta F_\Gamma,
\end{align}$$

其中 $q\in L_q$ 只含 half-dimensional boundary components，$\Pi\in L_p\simeq L_q^\vee$ 是 complementary output。把 $q$ 取成全部 $\psi$ components 虽可作代数 polarization，却通常不是 timelike-boundary hyperbolic IBVP 的 admissible data。

更具体地，令 Dirac Hamiltonian Green form 的 normal-current operator $A_n$ Hermitian，归一化为 $A_n^2=1$，并写 $E_\pm=\ker(A_n\mp1)$。当正负秩相同，所有 graph-form maximal zero-flux subspaces 可写成

$$\begin{align}
\boxed{ L_U=\{x+Ux:x\in E_+\},\qquad U:E_+\to E_-\ \text{unitary}.}
\end{align}$$

因为 Green form 在 $E_+\oplus E_-$ 上是正负号之差，$b_n(x+Ux,y+Uy)=0$，half-rank 给 maximality。这只证明 fiberwise Green form 上 closed maximal neutral/isotropic 的 algebraic boundary subspace；要推出 Dirac Hamiltonian 的 operator self-adjointness，还必须指定 trace domain 并证明 $D(H_U^*)=D(H_U)$。Open causal response 通常固定 incoming projector $P_{\mathrm{in}}\psi=q$ 并输出 complementary component，仍须另用 energy estimate 证明 hyperbolic admissibility。

在本文 Clifford convention 中，spacelike $n$ 满足 $(\gamma^n)^2=1$，所以 $P_\pm(n)=(1\pm\gamma^n)/2$ 是 algebraic projectors；一般 projector是否 Green-Lagrangian/hyperbolically admissible仍须另查。Große--Murro 使用 $c(u)c(v)+c(v)c(u)=-2g(u,v)$ 与 $(c(n)-\mathrm i)\psi=0$。令 $\gamma=\mathrm i c$ 翻译到本文 convention，homogeneous Lorentzian MIT condition精确成为

$$\begin{align}
\boxed{P_+(n)\psi=0.}
\end{align}$$

他们的 theorem证明这个 local half-rank condition 在其明写的 interior-supported smooth data class中给出 well-posed Lorentzian timelike-boundary IBVP；更大 data class需要额外 compatibility theorem。该结论不能推广给任意 $P_\pm$-like formula或 nonlocal projector。

Dirac 是 first-order：admissible Cauchy datum 是 $\psi|_{\Sigma^-}$（连同 reality/adjoint structure），没有与之 independent 的 $\dot\psi|_{\Sigma^-}$。最低 corner compatibility 是

$$\begin{align}
P_{\mathrm{in}}\psi^-|_{\partial\Sigma^-}&=q(t_-),
\end{align}$$

以及 boundary operator 与 Dirac equation 递推的 higher conditions，而不是 KG 的两条 $(q,\dot q)$ trace equations。Hyperbolic well-posedness、Hamiltonian self-adjointness/zero flux 与 spatial ellipticity 是三种不同要求；任何一项都不自动推出另外两项。

#### Concrete Driven Lorentzian MIT Model

现在取 finite slab $M_{i,T}=t^{-1}([t_-,t_+])$，其中 $M_i$ 是 globally hyperbolic spin manifold with smooth timelike boundary，time function与 splitting由 ambient globally hyperbolic spacetime诱导；为避免无关的 support-at-infinity 问题，假设 Cauchy slices compact，或把所有 data限制在一个 fixed compact spatial support family。使用本文 convention 的 homogeneous MIT condition $P_+(n_i)\psi_i=0$。

适用的文献范围如下。Große--Murro Theorem 1.1 的明写 data class 是 $f_i\in\Gamma_{cc}(SM_i)$、$h_i\in\Gamma_{cc}(S\Sigma_-)$，下标 $cc$ 表示 support compact 且离 underlying boundary 有正距离。一个 lifting $L_iq_i$ 必须接触 timelike boundary，故 $\mathcal D_iL_iq_i$ 一般不在这个 subclass；因此不能直接用该 theorem 的字面 statement。这里采用 Ginoux--Murro 对 constant-characteristic symmetric hyperbolic/Friedrichs systems的 theorem：其 smooth theorem允许 $\Gamma_c$ data接触 boundary，但要求实际 compatibility conditions；其 Proposition 3.3给 uniqueness与 finite propagation，Theorem 4.8给 compatible strong solution的 smoothness，Theorem 1.2给 continuous dependence，Section 6.2逐项证明 Lorentzian MIT half-rank subbundle admissible。Große--Murro只用于原始 MIT model、smooth compatibility recursion与本文 Clifford translation，不承担 boundary-touching source 的 existence claim。

还需核对 operator convention。Ginoux--Murro 写 $c(u)c(v)+c(v)c(u)=-2g(u,v)$ 与 $\mathcal D_{\mathrm{GM}}=c\circ\nabla$；本文取 $\gamma=\mathrm ic$，故

$$\begin{align}
-\mathcal D_i=\mathcal D_{\mathrm{GM}}+m_D.
\end{align}$$

把 equation乘以 $-1$ 只翻转 source，smooth mass/zeroth-order term不改变 symmetric-hyperbolic principal symbol、constant-characteristic property或 boundary admissibility。其 Lorentzian MIT admissible space

$$\begin{align}
\operatorname{ran}\frac{1-\mathrm ic(n_i)}2 =\operatorname{ran}P_-(n_i)=\ker P_+(n_i)
\end{align}$$

恰是本文 homogeneous condition；这同时逐项核验了 Clifford convention 与 projector translation。

为把 homogeneous admissible-boundary theorem变成真正 driven port，令 $q_i$ 是取值于 $\operatorname{ran}P_+(n_i)$ 的 smooth compactly supported boundary history。选一个 fixed collar、spatial cutoff与沿 time slices smooth变化的 extension；standard trace-extension theorem给一个 time-local continuous right inverse

$$\begin{align}
L_i:\Gamma_c^\infty(\operatorname{ran}P_+|_{\Gamma_i^T})&\longrightarrow\Gamma_c^\infty(SM_{i,T}),& P_+(n_i)\gamma L_iq_i&=q_i.
\end{align}$$

这里 $\Gamma_c$ 允许 support接触 timelike boundary。对每个 integer $r\ge0$，同一 collar construction有局部 Sobolev bound $H^{r+1/2}(\Gamma_i^T)\to H^{r+1}(M_{i,T})$；time-local表示 $q_i$ 在某个 time interval为零时，$L_iq_i$ 也可在该 interval取零。令 $\mathcal D_i:=\mathrm i\gamma^\mu\nabla_\mu-m_D$，并定义

$$\begin{align}
\chi_i&:=\psi_i-L_iq_i.
\end{align}$$

则 inhomogeneous problem

$$\begin{align}
\mathcal D_i\psi_i&=f_i,&\psi_i|_{\Sigma^-}&=h_i,&P_+(n_i)\gamma\psi_i&=q_i
\end{align}$$

精确等价于

$$\begin{align}
\mathcal D_i\chi_i&=f_i-\mathcal D_iL_iq_i,& \chi_i|_{\Sigma^-}&=h_i-(L_iq_i)|_{\Sigma^-},& P_+(n_i)\gamma\chi_i&=0.
\end{align}$$

Compatibility不能只写最低一阶。在 initial corner附近固定 smooth bundle trivialization（等价地把下面所有 $\partial_t$ 换成相应 covariant time derivative），并把 $\mathcal D_i\psi_i=f_i$ 在 chosen splitting中写成

$$\begin{align}
\partial_t\psi_i&=\mathsf H_i(t)\psi_i+\mathsf F_i(t)f_i,
\end{align}$$

并在 $\Sigma^-:=\Sigma_{t_-}$ 上递归定义 candidate time jets

$$\begin{align}
h_{i,0}&:=h_i,\\
h_{i,r+1}&:=\sum_{j=0}^{r}\binom{r}{j} \bigl(\partial_t^j\mathsf H_i\bigr)_{t_-}h_{i,r-j} +\left.\partial_t^r(\mathsf F_i f_i)\right|_{t_-},\qquad r\ge0.
\end{align}$$

Order-$r$ inhomogeneous MIT compatibility 是直接对 boundary equation取 $r$ 次 time derivative所得的

$$\begin{align}
\boxed{ \sum_{j=0}^{r}\binom{r}{j} \left.(\partial_t^jP_+(n_i))\right|_{t_-} \gamma h_{i,r-j} =\left.\partial_t^rq_i\right|_{t_-}.}
\end{align}$$

$r=0$ 正是 $P_+(n_i)h_i|_{\partial\Sigma^-}=q_i(t_-)$；$P_+$、normal或 metric time-dependent 时，上式保留所有 projector derivatives。Smooth theorem要求它对每个 $r\ge0$ 成立；$C^s$/finite Sobolev theorem只要求文献中对应到所需阶数的有限组条件。等价地，reduced data

$$\begin{align}
g_i&:=f_i-\mathcal D_iL_iq_i,& k_i&:=h_i-(L_iq_i)|_{\Sigma^-}
\end{align}$$

满足 homogeneous MIT compatibility recursion。这个等价性只用 Leibniz rule，因此与 lifting choice无关。

**Proposition (compatible driven MIT--Dirac IBVP).** 令

$$\begin{align}
\mathfrak D_{i,T}^{\mathrm{MIT},\infty}:=\Bigl\{(h_i,f_i,q_i):\;& h_i\in\Gamma_c^\infty(S\Sigma^-),\quad f_i\in\Gamma_c^\infty(SM_{i,T}),\quad q_i\in\Gamma_c^\infty(\operatorname{ran}P_+|_{\Gamma_i^T}),\nonumber\\
&\text{all displayed corner compatibility conditions hold}\Bigr\}.
\end{align}$$

这里 $\Gamma_c$ 的 support可以接触 timelike boundary；以下 $H^r$ norms由一个 fixed auxiliary Riemannian metric及 smooth bundle connection定义，换 choice只改变 fixed-support等价常数。则对每个 $(h_i,f_i,q_i)\in\mathfrak D_{i,T}^{\mathrm{MIT},\infty}$，上述 inhomogeneous problem有唯一 smooth solution $\psi_i$，并且：

1. 对任一 fixed compact support family，有 energy estimate

$$\begin{align}
\|\psi_i\|_{L^2(M_{i,T})} &\le C_{T,K}\left( \|h_i\|_{L^2(\Sigma^-)}+ \|f_i\|_{L^2(M_{i,T})}+ \|L_iq_i\|_{H^1(M_{i,T})} \right).
\end{align}$$

2. 若 $L_i$ 取 time-local collar extension，则

$$\begin{align}
\operatorname{supp}\psi_i \subset J^+\!\left(\operatorname{supp}h_i\cup \operatorname{supp}f_i\cup\operatorname{supp}L_iq_i\right)\cap M_{i,T},
\end{align}$$

故 solution/output在 domain of dependence意义下 causal。
3. Solution map

$$\begin{align}
\operatorname{Sol}_i^{\mathrm{MIT}}:
\mathfrak D_{i,T}^{\mathrm{MIT},\infty}&\longrightarrow
\Gamma_c^\infty(SM_{i,T})
\end{align}$$

在 fixed-support smooth topologies中 continuous linear，因而是 $C^\infty$。更具体地，对每个 integer $r\ge1$ 存在一个 finite $N_r\ge r$ 与 $C_{r,T,K}$，使

$$\begin{align}
\|\psi_i\|_{H^r(M_{i,T})} +\|P_-(n_i)\gamma\psi_i\|_{H^{r-1/2}(\Gamma_i^T)} \le C_{r,T,K}\left( \|h_i\|_{H^{N_r}(\Sigma^-)}+ \|f_i\|_{H^{N_r}(M_{i,T})}+ \|q_i\|_{H^{N_r+1/2}(\Gamma_i^T)} \right).
\end{align}$$

这是 smooth well-posedness continuity与 collar trace bound给出的 finite-seminorm estimate；本文不把它强化成文献没有明写的 optimal no-loss anisotropic estimate。若只需一个完全自动满足 corner conditions 的 nontrivial subclass，可取 $q_i$ 在 $t_-$ 的一个邻域为零，并令 $h_i,f_i$ 在 initial spatial corner附近为零；$q_i$ 在稍后时间仍可任意 smooth compactly supported地驱动系统。

**Proof.** Ginoux--Murro证明 Dirac principal operator是 nowhere-characteristic symmetric hyperbolic system，并证明 MIT trace subbundle是 admissible。对 reduced data $(k_i,g_i)$ 应用其 forward strong-solution theorem及 compatible smooth regularity theorem；关键是 $g_i\in\Gamma_c$ 即使 support接触 boundary也在 theorem domain内。其 energy inequality与 $\|g_i\|_{L^2}\le\|f_i\|_{L^2}+C\|L_iq_i\|_{H^1}$ 给第一式；Proposition 3.3给第二式；Theorem 4.8给 smoothness，Theorem 1.2 的 stability/continuity statement给 fixed-support smooth continuity，boundary trace theorem再给 complementary trace estimate。令 $\psi_i:=\chi_i+L_iq_i$ 即得 driven solution。若 $L_i$ 与 $\widetilde L_i$ 是两个 liftings，两次构造所得 $\psi_i,\widetilde\psi_i$ 的差满足

$$\begin{align}
\mathcal D_i(\psi_i-\widetilde\psi_i)&=0,& (\psi_i-\widetilde\psi_i)|_{\Sigma^-}&=0,& P_+(n_i)\gamma(\psi_i-\widetilde\psi_i)&=0;
\end{align}$$

homogeneous uniqueness故给 $\psi_i=\widetilde\psi_i$。这同时证明 physical solution与 response independence of lifting。

令 $L_{q,i}=\operatorname{ran}P_+(n_i)$，并用 graded Green form诱导的 nondegenerate identification

$$\begin{align}
\mathcal I_{n_i}:L_{p,i}=\operatorname{ran}P_-(n_i)&\longrightarrow L_{q,i}^{\vee}
\end{align}$$

定义 complementary output $\Pi_i^{\mathrm{MIT}}:=\mathcal I_{n_i}P_-(n_i)\gamma\psi_i$；对 doubled independent $(\psi,\bar\psi)$ formulation同时加入 adjoint cospinor component。于是得到实际 affine/linear causal response与 evolution relation

$$\begin{align}
\boxed{\mathcal R_i^{\mathrm{MIT}}(h_i,f_i;q_i)=\Pi_i^{\mathrm{MIT}},}\\
\mathscr U_i^{\mathrm{MIT}} =\left\{(h_i,\psi_i|_{\Sigma^+};q_i,\Pi_i^{\mathrm{MIT}}): \mathcal D_i\psi_i=f_i,\ P_+\gamma\psi_i=q_i\right\}.
\end{align}$$

由上一命题与 trace bound，

$$\begin{align}
\mathcal R_i^{\mathrm{MIT}}:
\mathfrak D_{i,T}^{\mathrm{MIT},\infty}&\longrightarrow
\Gamma_c^\infty(L_{q,i}^{\vee}|_{\Gamma_i^T})
\end{align}$$

在每个 fixed-support Fréchet component上是 continuous linear map，故 $C^\infty$；在 natural compact-support LF topology中按这些 compatible components理解。Displayed finite-seminorm estimate也给每个 fixed Sobolev output seminorm的 boundedness。Boundary graded symplectic flux正是 $\delta\Pi_i^{\mathrm{MIT}}\wedge_{\mathrm{gr}}\delta q_i$，所以在这个明确 compatible smooth subclass中，它是 Part I 的 admissible dynamical polarization，而不只是 variational splitting。

三项 operator性质仍分开记录：

1. 上述 theorem给 Lorentzian hyperbolic admissibility与 causality；
2. homogeneous MIT data使 normal Dirac current/Green boundary form为零；在 stationary/ultrastatic time-independent specialization及其 declared $H^1$ MIT trace domain上，fixed-slice Dirac Hamiltonian的 self-adjointness是单独的 domain theorem；
3. Riemannian spatial Dirac boundary problem的 ellipticity使用相应 MIT elliptic boundary-symbol theorem。一个 general hyperbolically admissible projector不因此自动 elliptic或 self-adjoint。

**Theorem (MIT sewing and reconstruction).** 对 two-sided driven MIT regional solutions，不在 input coordinates中硬写 continuity，而施加 full trace relation

$$\begin{align}
T_{ij}\gamma\psi_i&=\gamma\psi_j,& \gamma\bar\psi_iT_{ij}^{-1}&=\gamma\bar\psi_j.
\end{align}$$

Piecewise $H^1$ spinors with equal full traces由 Sobolev patching成为 global $H^1$ spinor；first-order Green identity的唯一 distributional interface term是 trace jump，故它消失。Regional equations于是 assemble为 global weak Dirac equation，hyperbolic regularity与 uniqueness给 global smooth solution；restriction显然是 inverse。因此 restriction/assembly给实际 Dirac reconstruction bijection/diffeomorphism，并由 $\gamma^{n_j}=-\gamma^{n_i}$ 保持 summed graded symplectic form。

若每侧按自己的 outward normal选 MIT input，则

$$\begin{align}
P_+(-n_i)=P_-(n_i).
\end{align}$$

所以 full-trace equality把 $i$ 侧 input与 $j$ 侧 complementary output、以及 $j$ 侧 input与 $i$ 侧 output cross-identify。这个 cross-identification现在是 abstract $\mathsf S_e$ 在 two different outward polarizations中的 coordinate expression，不再是 Dirac 的例外条款。

#### Graded Sewing and Reconstruction

先用 $T_{ij}$ 认同两侧 spin bundles。Invariant artificial-interface relation 是 full trace diagonal

$$\begin{align}
\boxed{ L_{\mathrm{sew}}^{\mathrm D} =\{T_{ij}\psi_i=\psi_j, \ \bar\psi_iT_{ij}^{-1}=\bar\psi_j\}.}
\end{align}$$

由于 $n_j=-n_i$、$\gamma^{n_j}=-\gamma^{n_i}$，其上

$$\begin{align}
\boldsymbol\theta_{n_i}^{\mathrm D}+\boldsymbol\theta_{n_j}^{\mathrm D}&=0, &\boldsymbol\omega_{n_i}^{\mathrm D}+\boldsymbol\omega_{n_j}^{\mathrm D}&=0.
\end{align}$$

所以 diagonal 是 graded isotropic；在 trace pairing nondegenerate、diagonal closed split 且 half-superdimension 正确时，它是 graded Lagrangian。若两侧先用同一个 fixed interface orientation 与同一个 polarization，可把坐标写成 $q_i=q_j$、$\Pi_i+\Pi_j=0$。若每个 region 都按自己的 outward normal 定义 incoming/outgoing projectors，则 $P_\pm(-n)=P_\mp(n)$，smooth sewing 会 cross-identify one side 的 input 与另一侧 output；不能盲目写“两侧 incoming components 相等”。这正是 first-order Dirac 与 second-order KG sewing 的结构差异。

在上述 graded reconstruction hypotheses 之外，再假设 Cauchy-surface Dirac Hermitian pairing conserved and positive、global 与 glued pre-Hilbert solution spaces 已完成化，并且 restriction 延拓成保持该 pairing 的 unitary；若采用 charge-conjugation/self-dual formulation，还要求它 intertwine 相应 conjugation。此时 ordinary CAR（或 self-dual CAR）的 universal property 才给 abstract $*$-algebra isomorphism

$$\begin{align}
\boxed{ \operatorname{CAR}(\mathcal H_M) \simeq\operatorname{CAR}(\mathcal H_{\mathrm{glued}}).}
\end{align}$$

这不是 Weyl CCR statement，也不选择 quasifree/Hadamard state、positive-frequency splitting 或 Fock representation。Dirac example 因而支持 Part I 的 relation-level formalism，同时再次说明“classical/abstract algebra reconstruction”与“state/Fock gluing”必须分层。

## Part IV — What “Quantize First, Then Glue” Can Mean

从 fixed-$q$ operators 形式求解

$$\begin{align}
q_{\{ij\}}&\stackrel{\mathrm{formal}}{=}q_{\{ij\}}[c^{(0)},v^{(0)}]
\end{align}$$

然后直接代回 regional fields 的步骤，**没有被 fixed-history CCR 证明**。原因是解除 $q$ 的固定以后，tangent space、symplectic form 和 canonical brackets 都改变；$\Omega_i[q_i]$ 上的 CCR 不能被无条件搬到 $\mathcal C$ 上。

### Route A: Classical Reduce, Then Quantize

这是目前定义清楚的 canonical route：

1. 先求 classical response equations，并构造 $(\mathcal C,\Omega_{\mathrm{glued}})$。
2. 从 $\mathcal C$ 重建 connected field

$$\begin{align}
   \left.\Phi_{\mathrm{glued}}\right|_{\Sigma_i} &=\Phi_i[q_i;\xi_i^-].
\end{align}$$

3. 证明 $\Omega_{\mathrm{glued}}$ nondegenerate，或明确约去其 kernel。
4. 在线性 static theory 中选 normalized global modes $F_r^A$，定义

$$\begin{align}
   Q_r(t) &=\int_\Sigma\mathrm d^dx\sqrt\sigma\, F_r^A(x)\Phi_{\mathrm{glued},A}(t,x),\\
   P_r(t) &=\int_\Sigma\mathrm d^dx\sqrt\sigma\, F_r^A(x)\dot\Phi_{\mathrm{glued},A}(t,x).
\end{align}$$

5. 先由 $\Omega_{\mathrm{glued}}$ 验证 classical Poisson brackets，再量子化为

$$\begin{align}
   [Q_r,P_s]&=\mathrm i\delta_{rs}, &[Q_r,Q_s]&=[P_r,P_s]=0.
\end{align}$$

6. 只有这时才能定义

$$\begin{align}
   a_r &=\sqrt{\frac{\Omega_r}{2}}Q_r +\frac{\mathrm i}{\sqrt{2\Omega_r}}P_r,\\
   a_r^\dagger &=\sqrt{\frac{\Omega_r}{2}}Q_r -\frac{\mathrm i}{\sqrt{2\Omega_r}}P_r.
\end{align}$$

这里 $\Omega_r$ 是 global mode frequency，不是 symplectic form。

### Route B: Port-Extended Quantize First, Then Glue

以下四个对象必须分开：covariant history relation、instantaneous Hamiltonian reduction、continuum algebra/dynamics，以及 state/representation comparison。本文在 finite linear regulator 中证明 coisotropic、second-class、Weyl-factor与 sewing-kernel realizations的等价；在 massive free scalar continuum 中另证明 outer fixed-point kinematic reduction、large-coupling dynamics及 bulk-smeared state convergence。Continuum normal tensor factor与 Lorentzian history measure不在这些正结果之内。

#### No-Go Observation: Fixed-History Regional Algebras Are Not Quantum Gluing Data

对 linear symplectic space $(\mathcal S,\sigma)$，abstract Weyl algebra $\mathfrak W(\mathcal S,\sigma)$ 由

$$\begin{align}
W(F)W(G)&=e^{-\frac{\mathrm i}{2}\sigma(F,G)}W(F+G), &W(F)^*&=W(-F)
\end{align}$$

定义。对 prescribed history $q_i$，regional solutions 是 homogeneous-boundary solution space $\mathcal S_i^0$ 的 affine translate；选定 background 后只能得到

$$\begin{align}
\mathfrak W_i[q_i]&\cong\mathfrak W(\mathcal S_i^0,\sigma_i).
\end{align}$$

**Proposition (fixed-history no-go).** 仅给族 $\{\mathfrak W_i[q_i]\}_{q_i}$ 不能在其内部实施 quantum sewing。

**Proof.** $q_i$ 在每个 algebra 中只是选择 affine fibre 的 classical label，不是 Weyl generator；algebra 中既没有 port translation $W_i(0,\delta q_i)$，也没有与 $q_i$ 共轭的 port momentum。故 $q_i-q_j$ 不是 algebra element，continuity不能定义为该 algebra 内的 ideal、spectral projection 或 regular operator constraint；同理也不存在能生成 history variation并产生 flux equation的 conjugate observable。把 $q_i$ 形式地解成 regional operators $q_i[c,v]$ 会改变 tangent space 与 symplectic form，已经离开 fixed-history algebra，而不是在其中完成 reduction。$\square$

所以真正的 Route B 必须先构造 **port-extended duplicate-port kinematics**，使每个 regional incidence 有自己的 canonical port data；等价地，也可先给一个已经量子化的 sewing canonical relation object。本文选择前者建立 algebra theorem，再证明后者在同一 finite quadratic class中给相同结果。

#### Covariant Sewing Is Not a Pair of Equal-Time Primary Constraints

在 covariant history language 中，一条 scalar cotangent-polarized interface 的全部 sewing data 是

$$\begin{align}
L_{\mathrm{sew}}=N^*\Delta =\{q_i=q_j,\ \Pi_i^{\mathrm{out}}+\Pi_j^{\mathrm{out}}=0\}
\subset\overline{\mathcal Z_i}\times\mathcal Z_j.
\end{align}$$

这里 continuity 与 summed conormal flux 共同描述一个 history-space exact Lagrangian relation。换到 finite equal-time Hamiltonian realization 后，正确起点却是 holonomic configuration constraint

$$\begin{align}
\chi=Ax=0.
\end{align}$$

其 Hamiltonian preservation 给 momentum-tangency condition

$$\begin{align}
\psi=A(M^{\mathrm{dup}})^{-1}p=A\dot x=0,
\end{align}$$

它说 velocity留在 $T(\ker A)$，不是把 spatial conormal flux重新命名为第二组 primary operator constraints。真正的 summed-flux statement来自 reduced/shared-port Euler--Lagrange equation：regional port residuals在 common variation下相加为零。特别地，centered regulator 的真实方程是

$$\begin{align}
\rho_N(\ddot q+m^2q)+\mathcal F_N=0,
\end{align}$$

而不是 finite $N$ 的原始约束 $\mathcal F_N=0$。$\rho_N$ 是 retained lift/complement 的正 kinetic Schur complement，不是 anomaly；只有在受控 continuum weak limit 中 $\rho_N\to0$ 后，方程才恢复 pure transmission/flux matching。Part V 给出完整 Dirac consistency 与这一 weak-limit bridge。

#### Route B Hierarchy

本文以后固定如下层级，避免把 finite algebra theorem、continuum kinematics/dynamics/state limit与 Fock comparison互相替代：

1. **B1.0 finite duplicate-port kinematics.** 每个 incidence $(i,e,\alpha)$ 保留独立 $q_{i,e,\alpha}$，定义 incidence map $A$、$Q^{\mathrm{conf}}_{N,R}=\ker A$ 与 inclusion $I$；现有 shared-$q$ regulator恰是 duplicated Lagrangian沿 $I$ 的 pullback。
2. **B1.1 finite coisotropic and intrinsic quantum reduction.** Holonomic locus $\mathsf H=\{Ax=0\}$ 是 coisotropic，$\mathsf H/\mathsf H^\sigma\simeq T^*(\ker A)$；secondary condition $AM^{-1}p=0$ 是 kinetic metric选择的 symplectic slice。量子上先取 characteristic commutant $\mathfrak W(\mathsf H)$，再在其中心实施 $W(\ell)=1$ quotient，得到 $\mathfrak W(\mathsf H/\mathsf H^\sigma)$。它与既有 regular second-class splitting $\mathcal S^{\mathrm{dup}}=\mathsf C\oplus^\sigma\mathcal N$ 及 parent normal relative commutant $\mathfrak W(\mathsf C)$ canonically同靶；finite level在这个 precise sense有 $Q\circ R\cong R\circ Q$。
3. **B1.2 quantized sewing, intrinsic measure, and composition.** 在 declared Schrödinger/half-density polarization中，$N^*\Delta$ 由 delta kernel量子化；Faddeev--Senjanović second-class determinant内禀地产生其 normalization。对 finite positive quadratic dynamics，逐 slice composition严格得到 conforming propagator；fixed-history regional Gaussian amplitudes按同一 measure积分也给相同 kernel。Independent row blocks满足 reduction by stages、Weyl-factor cocycle与 normalized-kernel associativity。Symplectic graph由 metaplectic operator实现；non-graph relation只给 distributional correspondence，不冒充 unitary。其后的 B1.2a--B1.2d 依次记录 exact pullback 的 regulator consequence、higher-dimensional two-scale closure、centered $1$D matrix sanity check，以及 finite reduction与 continuum parent reduction的边界。
4. **B1.3 continuum algebraic reduction, stages, and sharp-state boundary.** Weak symplectic parent $\mathcal S_\infty^{\mathrm{dup}}$ 已经定义，因此 abstract parent CCR algebra $\mathfrak A_\infty^{\mathrm{dup}}$ 存在。把 $\Gamma=\mathcal S_\infty^{\mathrm{dup}}/\mathsf C_\infty$ 视为 discrete Abelian group，compact dual $\widehat\Gamma$ 的 quotient-character action给 point-norm continuous outer action，并且

$$\begin{align}
   (\mathfrak A_\infty^{\mathrm{dup}})^{\widehat\Gamma} =\mathfrak W(\mathsf C_\infty) \cong\mathfrak W(\mathcal S_M).
\end{align}$$

   Nested sewing subspaces的 compact-dual Haar expectations满足 exact reduction by stages，因此 finite partition的 continuum CCR refinement/associativity在这一层闭合。任意 $\widehat\Gamma$-invariant parent state都 annihilate transverse Weyl generators；尤其 $\widetilde\omega_\infty=\omega_{\mathrm{conn}}\circ E$ 在 fixed algebra上正是 connected vacuum、在 transverse directions上 nonregular。这是 sharp sewing的 representation boundary，不是 finite-type normal tensor factor，也不自动给 dynamics。
5. **B1.4 continuum free-scalar dynamics, common-parent state limit, and two-parameter closure.** 对所有 finite $\kappa$，algebraic Cauchy space统一为 $V^{\mathrm{dup}}\oplus H^{\mathrm{dup}}$，故 $U_\kappa(t)$ 给同一 parent Weyl algebra上的 automorphisms；各 energy norms虽依赖 $\kappa$，underlying algebra不变。Soft-defect constraint forms $\mathfrak a_\kappa=\mathfrak a^{\mathrm{dup}}+\kappa|A_\infty\cdot|^2$ monotonically converge到 connected form，故 operators、heat/wave dynamics及 massive bulk-smeared quasifree covariances收敛；finite-$\kappa$ regular ground states（指 regular GNS 中的 strongly continuous positive-energy implementation）在 full parent algebra上 weak-* converge到 $\omega_{\mathrm{conn}}\circ E$。Finite $\mathfrak a_{N,\kappa}$ 同时连接 exact reduction与 continuum penalty，并且仅因 exact conforming recovery $W_N\subset\ker A$ 才沿任意 $N,\kappa\to\infty$ cofinal path收敛；generic asymptotically conforming schemes不在此 arbitrary-cofinal claim内。$E\circ\alpha_t^{(\kappa)}$ 的 generic Weyl-generator square明确为 false；sharp algebraic reduction不是 continuous dynamical retraction。正确 dynamics compatibility是 regular bulk core上的 multitime strong convergence；stationary one-point identity只是 state-limit corollary。Finite bounded Lipschitz scalar partitions另有 trace-form版本；finite-$\kappa$ defect依赖所选 trace norm，hard kernel相同。
6. **B2 state/representation comparison.** 这里才讨论 ground state、local quasi-equivalence、Bogoliubov implementability 与 product Fock comparison；massive $1+1$ interior theorem由 finite-interval mode/image sum与 smooth covariance difference直接证明。Global sharp product-Fock obstruction与 away-from-cut local normality并不矛盾。

#### Layer B2: States and Representation Comparison

在 abstract physical algebra 之后才选择 state $\omega$ 并作 GNS construction。Part V 的 finite theorem给一个正结果：positive quadratic regulator的 physical ground state在 B1.1 isomorphism下 **正好**是 conforming Hamiltonian ground state，其 bulk-smeared correlators沿既定 schedule收敛到 connected vacuum。这个 statement不以 regional strict-Dirichlet product vacuum为 reference。

现有 [sharp product-Fock diagnostic](<Articles/Quantization in AdS/gluing/Fock failure.md>) 给另一个、表示层的问题一个明确 negative answer。每个 finite $N$ 保留 port column 后，完整 Bogoliubov matrix满足 CCR，有限维 squeezed vector正常存在；然而 strict-Dirichlet continuum regional creation block有固定 row

$$\begin{align}
\sum_{n=1}^N|\beta_{pn}^{\mathrm D}|^2 &=\frac{1}{\pi L\Omega_p}\log N+O(1),
\end{align}$$

所以 $\beta\notin\mathfrak S_2$，不存在从该 regional product Fock representation到 connected representation的 sharp-continuum unitary implementer；高维 product model 的 transverse $\ell=0$ channel继承同一 obstruction。它否定的是一个指定 B2 implementer，不否定 B1 finite algebraic reduction、intrinsic connected Weyl algebra、finite physical ground state或 smeared state limit。本文不把 continuum unitary equivalence设为 Route B 成功条件。

## Part V — Finite Port-Extended Route B and Free-Scalar Continuum Completion

### B1.0 — Duplicate-Port Parent Kinematics

固定 finite bulk/interface cutoffs $(N,R)$。对每个 oriented incidence $(i,e,\alpha)$ 保留独立 port coordinate $q_{i,e,\alpha}$，而不预先令同一 edge两侧共享一个 $q$。取 homogeneous regional modes $\phi_{i,n}$ 与 lifts $w_{i,e,\alpha}$，写

$$\begin{align}
\Phi_{i,N,R}^{\mathrm{dup}} &=\sum_{n=1}^{N_i}c_{i,n}\phi_{i,n} +\sum_{(e,\alpha)\in\mathcal A_i(R)}q_{i,e,\alpha}w_{i,e,\alpha}.
\end{align}$$

令

$$\begin{align}
x&=(c,q^{\mathrm{dup}})\in Q_{N,R}^{\mathrm{dup}} =\bigoplus_i Q_{i,N,R},\qquad L^{\mathrm{dup}}_{N,R} =\frac12\dot x^TM^{\mathrm{dup}}\dot x-\frac12x^TK^{\mathrm{dup}}x.
\end{align}$$

这里 $L^{\mathrm{dup}}$ 是 regional quadratic actions 的和，所以在 regional ordering中

$$\begin{align}
M^{\mathrm{dup}}&=\bigoplus_iM_i,&K^{\mathrm{dup}}&=\bigoplus_iK_i.
\end{align}$$

若 $(\cdot,\cdot)_{T,i}$ 是 regional kinetic pairing、$\mathfrak a_i$ 是 stiffness form，并把 $\phi_i=(\phi_{i,n})$、$w_i=(w_{i,e,\alpha})$ 视为 trial-column，则一般 regional blocks逐项是

$$\begin{align}
M_i&=
\begin{pmatrix}
((\phi_{i,n},\phi_{i,m})_{T,i})& ((\phi_{i,n},w_{i,b})_{T,i})\\
((w_{i,a},\phi_{i,m})_{T,i})& ((w_{i,a},w_{i,b})_{T,i})
\end{pmatrix},\\
K_i&=
\begin{pmatrix}
(\mathfrak a_i[\phi_{i,n},\phi_{i,m}])& (\mathfrak a_i[\phi_{i,n},w_{i,b}])\\
(\mathfrak a_i[w_{i,a},\phi_{i,m}])& (\mathfrak a_i[w_{i,a},w_{i,b}])
\end{pmatrix}.
\end{align}$$

这里 $a,b$ 遍历 region $i$ 的 incidence--basis labels；因此同一 region不同 ports间的 cross blocks完整保留，而不同 regions间在 parent action中没有 cross block。这个 formula与下面 $A$ 的 network incidence rows一起给一般 finite-network construction。

对每条 oriented edge $e:i\to j$ 以及 retained basis label $\alpha$，continuity row取

$$\begin{align}
(Ax)_{e,\alpha}=q_{i,e,\alpha}-J_{ij,e,\alpha}q_{j,e,\alpha}.
\end{align}$$

对 scalar identical trace basis，$J_{ij,e,\alpha}=1$；若两侧 finite trace bases不同，则 $J_{ij,e}$ 按相应 finite block matrix理解。一般 finite network中 $A=(0,B_R)$，$B_R$ 是 oriented incidence/difference map tensored with interface basis identity。若 network presentation含 redundant rows，先选独立 row basis；以下 theorem 的声明条件是

$$\begin{align}
\operatorname{rank}A=r=\dim\operatorname{ran}A.
\end{align}$$

定义

$$\begin{align}
Q^{\mathrm{conf}}_{N,R}&:=\ker A,& I:Q^{\mathrm{conf}}_{N,R}&\hookrightarrow Q^{\mathrm{dup}}_{N,R},&AI&=0,
\end{align}$$

并选任意 linear coordinates $y$ on $Q^{\mathrm{conf}}_{N,R}$，使 $x=Iy$。在 standard edge coordinates中，$I$ 保留所有 $c_{i,n}$ 并把 shared $q_{e,\alpha}$ diagonal-copy 到每个 incident regional port。

**Proposition (exact conforming pullback).** 现有 shared-port regulator不是 duplicate-port parent，而是已经 classical-reduced 的 conforming system；其 matrices 精确为

$$\begin{align}
\boxed{M_{\mathrm{conf}}=I^TM^{\mathrm{dup}}I,\qquad K_{\mathrm{conf}}=I^TK^{\mathrm{dup}}I.}
\end{align}$$

**Proof.** 把 $x=Iy$、$\dot x=I\dot y$ 直接代入 $L^{\mathrm{dup}}$：

$$\begin{align}
I^*L^{\mathrm{dup}} &=\frac12\dot y^T(I^TM^{\mathrm{dup}}I)\dot y -\frac12y^T(I^TK^{\mathrm{dup}}I)y.
\end{align}$$

另一方面，regional fields 在 $x=Iy$ 上正是同一个 edge两侧使用 shared $q_{e,\alpha}$ 的 conforming ansatz；summed action 的 coefficient matrices 因而逐项等于 displayed pullback。这个等式不依赖 diagonalization、equations of motion 或 continuum limit。$\square$

### B1.1 — Finite Coisotropic/Dirac Reduction and Weyl Algebra Theorems

以下暂时省略 $(N,R)$。假设 $M:=M^{\mathrm{dup}}>0$、$K:=K^{\mathrm{dup}}=K^T$，并令 $A$ full row rank。Parent phase space $T^*Q^{\mathrm{dup}}$ 取 coordinates $(x,p)$、canonical bracket $\{x^a,p_b\}=\delta^a_b$ 与 Hamiltonian

$$\begin{align}
H^{\mathrm{dup}}(x,p)&=\frac12p^TM^{-1}p+\frac12x^TKx.
\end{align}$$

#### Holonomic Coisotropic Reduction Before Choosing a Kinetic Slice

先暂时不使用 $M$ 与 Hamiltonian，只在

$$\begin{align}
\mathcal S^{\mathrm{dup}}&:=T^*Q^{\mathrm{dup}},& \sigma((x,p),(x',p'))&=p^Tx'-(p')^Tx
\end{align}$$

中施加 configuration continuity。令

$$\begin{align}
\mathsf H:=\{(x,p):Ax=0\},&\qquad \mathsf L:=\{(0,A^T\lambda):\lambda\in\mathbb R^r\}.
\end{align}$$

**Theorem (finite holonomic coisotropic reduction).** $\mathsf H$ 是 coisotropic，并且

$$\begin{align}
\boxed{\mathsf H^\sigma=\mathsf L =\{(0,A^T\lambda):\lambda\in\mathbb R^r\}.}
\end{align}$$

其 characteristic quotient与 conforming cotangent phase space存在 canonical symplectomorphism

$$\begin{align}
\boxed{\mathsf H/\mathsf H^\sigma\ \simeq\ T^*(\ker A).}
\end{align}$$

**Invariant proof.** 若 $(a,b)\in\mathsf H^\sigma$，则对所有 $p\in(Q^{\mathrm{dup}})^*$ 有

$$\begin{align}
0=\sigma((a,b),(0,p))=-p^Ta,
\end{align}$$

故 $a=0$。再对所有 $x\in\ker A$ 有 $0=b^Tx$，所以 $b\in(\ker A)^\circ=\operatorname{ran}A^T$；反向包含显然成立。由于 $A0=0$，$\mathsf H^\sigma\subset\mathsf H$，故 $\mathsf H$ coisotropic。

定义 restriction map

$$\begin{align}
\mathfrak r:\mathsf H&\longrightarrow T^*(\ker A),& \mathfrak r(x,p)&=(x,p|_{\ker A}).
\end{align}$$

有限维 Hahn--Banach/linear extension使 $\mathfrak r$ surjective，而 $\ker\mathfrak r=\mathsf H^\sigma$。Canonical one-form在 $\mathsf H$ 上正是 $p|_{\ker A}\,\mathrm dx$，所以 induced bijection $\bar{\mathfrak r}:\mathsf H/\mathsf H^\sigma\to T^*(\ker A)$ 保持 canonical symplectic form。这里没有选择 kinetic metric。$\square$

在 coordinates 中令 $n:=\dim Q^{\mathrm{dup}}$，并取 $I:\mathbb R^{n-r}\to Q^{\mathrm{dup}}$ 满足 $\operatorname{im}I=\ker A$。每个 class写成 $[(Iy,p)]$，上述 map就是

$$\begin{align}
\boxed{[(Iy,p)]\longmapsto(y,\pi),\qquad \pi=I^Tp.}
\end{align}$$

确实，$p\mapsto p+A^T\lambda$ 不改变 $I^Tp$，而

$$\begin{align}
\sigma((Iy,p),(Iy',p')) =(I^Tp)^Ty'-(I^Tp')^Ty =\pi^Ty'-{\pi'}^Ty.
\end{align}$$

现在才引入 $M$。每个 characteristic class $[(x,p)]$ 有唯一 representative

$$\begin{align}
p_M&:=p-A^TG^{-1}AM^{-1}p,&G&=AM^{-1}A^T,
\end{align}$$

满足

$$\begin{align}
AM^{-1}p_M=0.
\end{align}$$

若 $p\mapsto p+A^T\mu$，则 $p_M$ 不变；反之 $G>0$ 保证这是该 orbit 与 $AM^{-1}p=0$ 的唯一交点。因此下文由 Hamiltonian preservation得到的 secondary constraint

$$\begin{align}
\psi=AM^{-1}p=0
\end{align}$$

不是 coisotropic quotient定义的一部分，而是 kinetic metric $M$ 对每个 characteristic class选择的 symplectic slice。其 image正是

$$\begin{align}
\mathsf C=\{Ax=0,\ AM^{-1}p=0\}.
\end{align}$$

因此有 commuting diagram

$$
\begin{array}{ccc}
\mathsf C & \xrightarrow{\ \iota\ } & \mathsf H\\
\varphi_{\mathrm{red}}\uparrow && \downarrow q\\
T^*(\ker A) & \xleftarrow{\ \bar{\mathfrak r}\ } & \mathsf H/\mathsf H^\sigma,
\end{array}
$$

其中 $q$ 是 quotient map，且 $\bar{\mathfrak r}\circ q\circ\iota=\varphi_{\mathrm{red}}^{-1}$。换言之，

$$\begin{align}
\boxed{\text{holonomic coisotropic reduction}
\ \cong\ \text{the second-class }(\chi,\psi)\text{ realization},}
\end{align}$$

但左边 canonical、右边的 embedded slice依赖 $M$。这也解释为什么改变 kinetic lifting可以改变 parent 中的 normal splitting，却不能改变 reduced cotangent phase space。

#### Complete Dirac Consistency

从 holonomic primary constraint

$$\begin{align}
\chi&:=Ax=0
\end{align}$$

开始。对 total Hamiltonian $H_T=H^{\mathrm{dup}}+\lambda^T\chi$，第一次 preservation给

$$\begin{align}
\dot\chi&=\{\chi,H_T\}=AM^{-1}p=: \psi=0.
\end{align}$$

令

$$\begin{align}
G&:=AM^{-1}A^T.
\end{align}$$

在 ordering $\Phi=(\chi,\psi)$ 下，constraint matrix 是

$$\begin{align}
C_{\alpha\beta}=\{\Phi_\alpha,\Phi_\beta\}
&=\begin{pmatrix}0&G\\
-G&0\end{pmatrix}.
\end{align}$$

对任意 $0\neq u\in\mathbb R^r$，

$$\begin{align}
u^TGu&=(A^Tu)^TM^{-1}(A^Tu)>0,
\end{align}$$

因为 $A^T$ injective 且 $M^{-1}>0$。所以 $G>0$、$C$ invertible，$(\chi,\psi)$ 是 regular linear second-class system。第二次 preservation只固定 reaction multiplier：

$$\begin{align}
\dot\psi&=-AM^{-1}Kx-G\lambda=0,& \lambda&=-G^{-1}AM^{-1}Kx;
\end{align}$$

没有 tertiary constraint。

Dirac bracket定义为

$$\begin{align}
\{F_1,F_2\}_D &=\{F_1,F_2\} -\{F_1,\Phi_\alpha\}(C^{-1})^{\alpha\beta}
\{\Phi_\beta,F_2\}.
\end{align}$$

逐块计算给

$$\begin{align}
\{x,x^T\}_D&=0,&\{p,p^T\}_D&=0,\\
\boxed{\{x,p^T\}_D=P} &,&P&:=1-M^{-1}A^TG^{-1}A.
\end{align}$$

$P^2=P$、$AP=0$、$P^TM=MP$；它是 configuration space 上投影到 $\ker A$ 的 $M$-orthogonal projector。Constraint gradients 对 $\{\cdot,\cdot\}_D$ 都是 Casimirs，这也直接核对了 bracket formula。

#### Identification with $T^*Q^{\mathrm{conf}}$

Constraint surface为

$$\begin{align}
\mathsf C &:=\{(x,p):Ax=0,\ AM^{-1}p=0\}.
\end{align}$$

令 $M_{\mathrm{conf}}=I^TMI$。定义

$$\begin{align}
\boxed{ \varphi_{\mathrm{red}}:T^*Q^{\mathrm{conf}}\longrightarrow\mathsf C,\qquad \varphi_{\mathrm{red}}(y,\pi)=\left(Iy,\ MI M_{\mathrm{conf}}^{-1}\pi\right).}
\end{align}$$

这是 bijection。确实，$Ax=0$ 唯一给 $x=Iy$；$AM^{-1}p=0$ 给 $M^{-1}p\in\ker A=\operatorname{im}I$，故 $p=MIv$，而

$$\begin{align}
\pi=I^Tp=I^TMIv=M_{\mathrm{conf}}v
\end{align}$$

唯一决定 $v=M_{\mathrm{conf}}^{-1}\pi$。更强地，parent canonical one-form 的 pullback 是

$$\begin{align}
\varphi_{\mathrm{red}}^*(p^T\mathrm dx) &=\pi^TM_{\mathrm{conf}}^{-1}I^TMI\,\mathrm dy =\pi^T\mathrm dy.
\end{align}$$

所以

$$\begin{align}
\boxed{\varphi_{\mathrm{red}}^*(\mathrm dp^T\wedge\mathrm dx) =\mathrm d\pi^T\wedge\mathrm dy,}
\end{align}$$

即 $(\mathsf C,\sigma_{\mathsf C})\simeq(T^*Q^{\mathrm{conf}},\sigma_{\mathrm{conf}})$ symplectomorphically。Restriction of $H^{\mathrm{dup}}$ 再给

$$\begin{align}
H_{\mathrm{red}}(y,\pi) &=\frac12\pi^TM_{\mathrm{conf}}^{-1}\pi +\frac12y^TK_{\mathrm{conf}}y,
\end{align}$$

因为

$$\begin{align}
(MI M_{\mathrm{conf}}^{-1})^TM^{-1}(MI M_{\mathrm{conf}}^{-1}) &=M_{\mathrm{conf}}^{-1},&I^TKI&=K_{\mathrm{conf}}.
\end{align}$$

这证明 reduced Hamiltonian正好是原有 conforming regulator Hamiltonian，而不只是相同 dimension 的某个 canonical model。

#### Where Flux Matching Enters the Equal-Time Theory

Parent constrained equation可写成

$$\begin{align}
M\ddot x+Kx&=-A^T\lambda,&Ax&=0.
\end{align}$$

沿 $x=Iy$ 乘 $I^T$ 后 reaction消失：

$$\begin{align}
I^T(MI\ddot y+KIy)&=0 \quad\Longleftrightarrow\quad M_{\mathrm{conf}}\ddot y+K_{\mathrm{conf}}y=0.
\end{align}$$

Shared-port row就是各 regional port Euler--Lagrange residual 的和。对由完整 regional action得到的 lifts，这些 residual 的 continuum boundary part正是两侧 outward conormal flux；finite lift同时保留一个真实 kinetic Schur complement。于是：

- covariant $\Pi_i^{\mathrm{out}}+\Pi_j^{\mathrm{out}}=0$ 是 history-space sewing relation的一半；
- instantaneous $\psi=AM^{-1}p=0$ 是 continuity的 velocity preservation，不是 conormal flux；
- summed flux condition由 reduced shared-port evolution equation产生。

在 centered $1$D model中这条 equation成为 $\rho_N(\ddot q+m^2q)+\mathcal F_N=0$。若 $q_N\to q$ locally uniformly in time且 $\rho_N\to0$，则对任意 $\zeta\in C_c^\infty(I)$，

$$\begin{align}
\left\langle\rho_N(\ddot q_N+m^2q_N),\zeta\right\rangle &=\rho_N\int_I q_N(\ddot\zeta+m^2\zeta)\,\mathrm dt\longrightarrow0.
\end{align}$$

因此 field equations本身给 $\mathcal F_N\to0$ in $\mathcal D'(I)$。这是 pure flux matching 的 weak recovery；不声称 pointwise conormal convergence。Product-cylinder中同一结论由 form-limit weak equation与 regional Green identity得到：对 conforming test sequence，internal boundary functional的 summed weak limit为零；现有 theorem不足以升级为 pointwise flux。

#### Intrinsic Finite Quantum Factor Theorem

令

$$\begin{align}
\mathcal S^{\mathrm{dup}}&:=T^*Q^{\mathrm{dup}},& \mathcal S^{\mathrm{conf}}&:=T^*Q^{\mathrm{conf}},& \mathcal N&:=\mathsf C^{\sigma_{\mathrm{dup}}}.
\end{align}$$

在当前 coordinates 中 normal sector 可显式写成

$$\begin{align}
\boxed{\mathcal N=\left\{\left(M^{-1}A^Tu,A^Tv\right):u,v\in\mathbb R^r\right\}.}
\end{align}$$

它由 $\chi$、$\psi$ 的 Hamiltonian directions张成，维数为 $2r$；$G>0$ 正是 $\sigma_{\mathrm{dup}}|_{\mathcal N}$ nondegenerate 的 coordinate statement。

**Theorem (intrinsic finite second-class quantum factor).** 在 $M>0$、$A$ full row rank 的 finite linear setting中，定义 parent 内部的两个 Weyl subalgebras

$$\begin{align}
\mathfrak C&:=C^*\!\left\{W_{\mathrm{dup}}(c):c\in\mathsf C\right\},& \mathfrak N&:=C^*\!\left\{W_{\mathrm{dup}}(n):n\in\mathcal N\right\}.
\end{align}$$

则：

1. $\mathsf C$ 与 $\mathcal N$ 都是 symplectic，且

$$\begin{align}
\boxed{\mathcal S^{\mathrm{dup}}=\mathsf C\oplus^{\sigma}\mathcal N.}
\end{align}$$

2. Weyl functor给 canonical $C^*$-isomorphism

$$\begin{align}
\Theta:\mathfrak W(\mathsf C)\otimes_{\min}\mathfrak W(\mathcal N)&\xrightarrow{\ \simeq\ } \mathfrak W(\mathcal S^{\mathrm{dup}}),& W(c)\otimes W(n)&\longmapsto W_{\mathrm{dup}}(c+n).
\end{align}$$

这里 minimal tensor product不是额外 representation choice：universal Weyl algebra是 underlying discrete abelian group的 twisted group $C^*$-algebra；该 group amenable，所以 factors nuclear、minimal/maximal completions在这里一致。由于两块 symplectic forms nondegenerate，Slawny simplicity theorem给 $\mathfrak W(\mathsf C)$、$\mathfrak W(\mathcal N)$ simple且 center为 $\mathbb C1$。

3. Physical algebra可完全在 parent quantum algebra内部刻画为

$$\begin{align}
\boxed{\mathfrak A^{\mathrm{phys}}_{N,R} :=\mathfrak N'\cap\mathfrak W(\mathcal S^{\mathrm{dup}}) =\mathfrak C =\left\{a:\operatorname{Ad}W_{\mathrm{dup}}(n)(a)=a\ \forall n\in\mathcal N\right\}.}
\end{align}$$

这里 commutant 明确取在 universal parent Weyl $C^*$-algebra内部。因而这个 relative-commutant/fixed-point statement不需要先选 Schrödinger representation；regular representation只在下面的 density-matrix interpretation才加入。

4. $\varphi_{\mathrm{red}}$ 诱导 canonical $*$-isomorphism

$$\begin{align}
\boxed{ \alpha_{\mathrm{red}}:\mathfrak W(\mathcal S^{\mathrm{conf}},\sigma_{\mathrm{conf}}) \xrightarrow{\ \simeq\ } \mathfrak A^{\mathrm{phys}}_{N,R},\qquad \alpha_{\mathrm{red}}(W_{\mathrm{conf}}(z))=W_{\mathrm{dup}}(\varphi_{\mathrm{red}}z).}
\end{align}$$

若 $S_t^{\mathrm{red}}$ 是 $H_{\mathrm{red}}$ 的 Hamiltonian flow，$S_t^D:=\varphi_{\mathrm{red}}S_t^{\mathrm{red}}\varphi_{\mathrm{red}}^{-1}$ 是 $\mathsf C$ 上的 Dirac-projected flow，则 $\alpha_{\mathrm{red}}$ intertwines 相应 Weyl dynamics。因此

$$\begin{align}
\boxed{Q\circ R\ \cong\ R\circ Q}
\end{align}$$

的右路现在不是“classically reduce后再挑一个 corresponding factor”，而是从 parent pair $(\mathfrak W(\mathcal S^{\mathrm{dup}}),\mathfrak N)$ 取 intrinsic relative commutant。除非 unconstrained parent Hamiltonian本身保持 $\mathsf C$，这里不声称 unconstrained parent automorphism限制到 $\mathfrak A^{\mathrm{phys}}$；intertwined dynamics是 reaction/Dirac-projected dynamics。

**Proof.** 上一节已证明 $\sigma_{\mathrm{dup}}|_{\mathsf C}$ nondegenerate；finite-dimensional symplectic linear algebra于是给 $\mathcal S^{\mathrm{dup}}=\mathsf C\oplus^\sigma\mathcal N$，且 $\mathcal N$ nondegenerate。Orthogonality使 $W(c)$ 与 $W(n)$ commute，Weyl universal property给 $\Theta$；twisted-group factorization与 amenability给 stated minimal completion。

在 tensor realization中 $\mathfrak N=1\otimes\mathfrak W(\mathcal N)$。取 first factor 的 faithful representation与 $\mathfrak W(\mathcal N)$ 的 irreducible representation；simplicity使后者也 faithful，故 product representation faithful。若 $a$ commute with $1\otimes\mathfrak W(\mathcal N)$，irreducibility先给 represented $a=T\otimes1$；对 second factor作任意 state slice给 $b=(\operatorname{id}\otimes\varphi)(a)\in\mathfrak W(\mathsf C)$ 且其 representation等于 $T$。所以 relative commutant正是 $\mathfrak W(\mathsf C)\otimes1$。另一方面

$$\begin{align}
\operatorname{Ad}W(n)W(c+n')&=e^{-\mathrm i\sigma_{\mathcal N}(n,n')}W(c+n'),
\end{align}$$

故 fixed-point algebra等于同一个 commutant。最后 $\varphi_{\mathrm{red}}^*\sigma_{\mathrm{dup}}=\sigma_{\mathrm{conf}}$ 与 Weyl universal property给 $\alpha_{\mathrm{red}}$；$H^{\mathrm{dup}}|_{\mathsf C}=H_{\mathrm{red}}$ 给 Dirac/reduced flow conjugacy。$\square$

这个 theorem没有把 normal algebra当作 gauge。特别地：

- 不要求 $W(n)=1$；若这样 quotient，normal sector内非零 Weyl commutator会立刻产生矛盾。
- $\mathfrak A^{\mathrm{phys}}$ 是 selected commuting factor，不是 parent algebra除以一个 first-class constraint ideal。
- 一般不存在 canonical $*$-homomorphic retraction $\mathfrak W(\mathsf C)\otimes\mathfrak W(\mathcal N)\to\mathfrak W(\mathsf C)$；选 normal state $\tau_{\mathcal N}$ 才得到非乘法的 conditional expectation $\operatorname{id}\otimes\tau_{\mathcal N}$。这个 state choice不是 reduction theorem的一部分。

在 finite regular irreducible Schrödinger representation中，Stone--von Neumann theorem把上述 factorization实现为

$$\begin{align}
\mathcal H_{\mathrm{dup}}&\simeq\mathcal H_{\mathsf C}\otimes\mathcal H_{\mathcal N},\\
\pi(\mathfrak A^{\mathrm{phys}})''&=\mathcal B(\mathcal H_{\mathsf C})\otimes1,& \pi(\mathfrak N)''&=1\otimes\mathcal B(\mathcal H_{\mathcal N}).
\end{align}$$

对 parent density matrix $\rho_{\mathrm{dup}}$，physical expectations只是 restriction

$$\begin{align}
\operatorname{Tr}_{\mathcal H_{\mathrm{dup}}}\!\left[\rho_{\mathrm{dup}}(B\otimes1)\right] =\operatorname{Tr}_{\mathcal H_{\mathsf C}}\!\left[(\operatorname{Tr}_{\mathcal H_{\mathcal N}}\rho_{\mathrm{dup}})B\right].
\end{align}$$

所以 partial trace描述“忽略 normal quantum factor”后的 state，不是同时 impose sharp $\widehat\chi=\widehat\psi=0$。后者不可能：constraint commutator matrix就是 nonzero $C$。Grundling--Hurst 的 second-class analysis正强调这一边界；Grundling--Lledó/T-procedure 与 resolvent-algebra Dirac states的 isotropic/first-class hypotheses不能无条件移植到这里。

若 $K_{\mathrm{conf}}>0$，reduced regular Schrödinger representation中的唯一 normalized Gaussian ground state满足

$$\begin{align}
\boxed{ \omega^{\mathrm{phys}}_{N,R}\circ\alpha_{\mathrm{red}} =\omega^{\mathrm{conf}}_{N,R}.}
\end{align}$$

这个 ground state属于 physical/reduced dynamics；给它任意 normal density matrix只会产生不同 parent extensions而不改变 physical restriction。Finite unitary identification唯一到 overall phase，但不推出 continuum regional product-Fock implementer。

这里的 extension statement不等于 unconstrained parent ground-state factorization。只有当 parent Hamiltonian相对于 $\mathsf C\oplus^\sigma\mathcal N$ 也 block diagonal、等价地其 Hamiltonian flow保持两块时，parent ground state才由 physical 与 normal ground states的 tensor product给出。一般 $\mathcal N$ 只是 kinematic symplectic factor，unconstrained parent ground state可以在这两个 factors间相关；其 partial trace只是一个 physical state，未必是 $H_{\mathrm{red}}$ 的 ground state。

#### Quantum Coisotropic Reduction and Its Relation to the Second-Class Factor

上面的 second-class theorem给 parent 内部的 embedded physical factor。Holonomic coisotropic route则有一个不同但 canonically同靶的 universal $C^*$ construction。令

$$\begin{align}
\mathsf L&:=\mathsf H^\sigma,& \mathfrak B_{\mathsf L}&:=C^*\{W(\ell):\ell\in\mathsf L\}
\subset\mathfrak W(\mathcal S^{\mathrm{dup}},\sigma).
\end{align}$$

**Theorem (finite coisotropic CCR reduction).** 在当前 finite-dimensional real linear setting中，

$$\begin{align}
\boxed{ \mathfrak B_{\mathsf L}'\cap\mathfrak W(\mathcal S^{\mathrm{dup}}) =\mathfrak W(\mathsf H,\sigma|_{\mathsf H}).}
\end{align}$$

由于 $\mathsf L$ 是 $\sigma|_{\mathsf H}$ 的 radical，$W(\ell)$ 在 $\mathfrak W(\mathsf H)$ 中 central。令 $J_{\mathsf L}$ 是 $\mathfrak W(\mathsf H)$ 中由

$$\begin{align}
W(\ell)-1,&\qquad \ell\in\mathsf L
\end{align}$$

生成的 closed two-sided ideal，则 Weyl universal property给

$$\begin{align}
\boxed{ \mathfrak W^{\mathrm{cois}}_{\mathrm{red}} :=\mathfrak W(\mathsf H)/J_{\mathsf L}
\ \cong\ \mathfrak W(\mathsf H/\mathsf L,\bar\sigma)
\ \cong\ \mathfrak W(T^*(\ker A),\sigma_{\mathrm{can}}).}
\end{align}$$

这是 abstract universal CCR $C^*$-algebra statement。第一步也可写成 quotient-character fixed point：把 $\Gamma_{\mathsf H}:=\mathcal S^{\mathrm{dup}}/\mathsf H$ 视为 discrete Abelian group，令其 compact dual按

$$\begin{align}
\beta_\vartheta(W(z))=\vartheta([z])W(z),\qquad \vartheta\in\widehat\Gamma_{\mathsf H},
\end{align}$$

作用，则

$$\begin{align}
\mathfrak W(\mathcal S^{\mathrm{dup}})^{\widehat\Gamma_{\mathsf H}} =\mathfrak W(\mathsf H).
\end{align}$$

等价地，characteristic inner actions $\operatorname{Ad}W(\ell)$ 的 fixed points也是 $\mathfrak W(\mathsf H)$；$\ell\mapsto e^{-\mathrm i\sigma(\ell,\,\cdot\,)}$ 在 $\widehat\Gamma_{\mathsf H}$ 中的 image有 dense closure，因为其 annihilator恰为 $\mathsf H=\mathsf L^\sigma$。

**Proof.** 对 Weyl generator有

$$\begin{align}
\operatorname{Ad}W(\ell)W(z)=e^{-\mathrm i\sigma(\ell,z)}W(z).
\end{align}$$

因此它 commute with every $W(\ell)$ 当且仅当 $z\in\mathsf L^\sigma=\mathsf H$。把 Weyl algebra视为 additive group $\mathcal S^{\mathrm{dup}}$（取 discrete topology）的 twisted group $C^*$-algebra；其 canonical Fourier coefficients分离元素。对 finite Weyl span逐 coefficient应用上一判据，再由 amenability/faithful regular expectation取 closure，得到 relative commutant等式。相同 Fourier calculation或 Haar averaging给 quotient-character fixed points。

在 $\mathfrak W(\mathsf H)$ 内，$\mathsf L$ 与所有 $\mathsf H$ symplectically orthogonal，故 $W(\ell)$ central。Quotient relations只把同一 coset中的 Weyl generators认同；它们满足 $\mathsf H/\mathsf L$ 的 Weyl relations。反向 universal maps互逆，给第二个 boxed isomorphism；classical $\bar{\mathfrak r}$ 再给最后一个。$\square$

顺序不能颠倒。若直接在整个 parent algebra中 quotient by $W(\ell)-1$，取某个 $z$ 使 $\sigma(\ell,z)\neq0$ 并按实数缩放 $\ell$，Weyl commutation relation会同时要求

$$\begin{align}
W(z)=e^{-\mathrm i\sigma(\ell,z)}W(z),
\end{align}$$

从而生成 unit ideal并使 quotient collapse。只有先限制到 $\mathfrak W(\mathsf H)$，$W(\ell)$ 才 central，trivial-character quotient才合法。更一般的 $W(\ell)=\vartheta(\ell)1$ 给 characteristic center的其他 superselection characters；classical zero-level sewing选择的是 $\vartheta=1$。

在 regular Schrödinger representation中，这个 universal quotient通常不是 parent Hilbert space上的 nonzero closed invariant subspace：要求所有 characteristic Weyl unitaries等于 identity对应 distributional support在 $Ax=0$，没有 normalizable sharp constraint vector。因此这里没有把 coisotropic quotient冒充 regular subrepresentation。Second-class slice避免了这个问题：metric-dependent symplectomorphism

$$\begin{align}
s_M:\mathsf H/\mathsf L&\xrightarrow{\ \simeq\ }\mathsf C,& s_M([(x,p)])&=(x,p_M)
\end{align}$$

诱导

$$\begin{align}
\mathfrak W(\mathsf H)/J_{\mathsf L} \xrightarrow{\ \mathfrak W(s_M)\ }\mathfrak W(\mathsf C) =\mathfrak N'\cap\mathfrak W(\mathcal S^{\mathrm{dup}}).
\end{align}$$

故 finite 层的 clean diagram是

$$
\begin{array}{ccccc}
\mathfrak W(\mathcal S^{\mathrm{dup}})
&\supset&\mathfrak W(\mathsf H)
&\twoheadrightarrow&\mathfrak W(\mathsf H/\mathsf L)\\
&&\Big\|&&\downarrow\mathfrak W(s_M)\\
&&\mathfrak W(\mathcal S^{\mathrm{dup}})^{\widehat\Gamma_{\mathsf H}}
&&\mathfrak W(\mathsf C)=\mathfrak N'\cap\mathfrak W(\mathcal S^{\mathrm{dup}}).
\end{array}
$$

上路是 canonical coisotropic fixed-point-plus-central-quotient；右下是 $M$-dependent second-class slice在 parent中的 embedded factor。二者不是同一个 subalgebra operation，却由 $s_M$ canonically等价。这个 distinction将在 continuum 中变成结构突变：characteristic distribution离开 finite-energy phase space，central quotient不再存在，而 external quotient-character fixed points仍可定义。

### B1.2 — Quantization of the Sewing Canonical Relation

#### Delta Kernel and the Exact Conormal Relation

先在 port configuration $\mathcal Q_R\simeq\mathbb R^r$ 上取 Lebesgue half-density，并固定

$$\begin{align}
(\mathcal F\psi)(p)&=(2\pi)^{-r/2}\int_{\mathbb R^r} e^{-\mathrm ip\cdot q}\psi(q)\,\mathrm dq.
\end{align}$$

Diagonal/conormal sewing的 Schwartz kernel取

$$\begin{align}
\boxed{ K_{\mathrm{sew}}(q_j,q_i) =\delta^{(r)}(q_j-q_i)
|\mathrm dq_j|^{1/2}|\mathrm dq_i|^{1/2}}
\end{align}$$

以及 oscillatory representation

$$\begin{align}
\delta^{(r)}(q_j-q_i) &=(2\pi)^{-r}\int_{\mathbb R^r} e^{\mathrm i\lambda\cdot(q_j-q_i)}\,\mathrm d\lambda.
\end{align}$$

它作为 half-density operator是 identity identification；作为 distribution，其 conormal covectors是 $(q_j,\lambda;q_i,-\lambda)$，正给 outward convention中的 $q_i=q_j$、$\Pi_i+\Pi_j=0$。Operator canonical relation中 input covector还要作 kernel convention的 sign flip，所以同一 object也可读作 identity symplectic graph；这里没有 sign contradiction。

若 linear canonical relation是 symplectic map $S=\left(\begin{smallmatrix}A&B\\C&D\end{smallmatrix}\right)$ 的 graph，它由两个 metaplectic lifts $\pm\mu(S)$ 实现。对 free block $\det B\neq0$，取 $\hbar=1$ 时可写

$$\begin{align}
K_S(x,x')&=(2\pi)^{-r/2}|\det B|^{-1/2} e^{-\mathrm i\pi\nu/2}e^{\mathrm i\mathcal G_S(x,x')},\\
\mathcal G_S(x,x')&=\frac12x^TDB^{-1}x-x^TB^{-T}x' +\frac12{x'}^TB^{-1}Ax',
\end{align}$$

其中 $\nu$ 选择 metaplectic lift/Maslov branch；caustic处改用另一 generating chart并以 distributional continuation compose。若 relation不是 graph，则它一般只量子化成 distributional kernel/canonical correspondence；本文不把它称作 unitary map。

#### Second-Class Determinant and the Intrinsic Sewing Measure

先把现有 coarea factor与 short-time prefactor从 second-class measure本身推出，而不把它们当作事后调节。仍令 $n=\dim Q^{\mathrm{dup}}$、$m=n-r$、$M_{\mathrm{conf}}=I^TMI$。

**Lemma (mass/coarea/Dirac determinant identity).** 对 $M>0$、$A$ full row rank、$\operatorname{im}I=\ker A$，相对于 displayed coordinates 的 Euclidean Lebesgue volumes有

$$\begin{align}
\boxed{ \det(AM^{-1}A^T) =\frac{\det(AA^T)}{\det(I^TI)}\frac{\det M_{\mathrm{conf}}}{\det M}.}
\end{align}$$

Invariant content是 induced density equality；若改变 constraint-row basis或 conforming coordinates，三项 Jacobians同步变换，所以最终 constrained measure不变。

**Proof.** 取 Euclidean-orthonormal $U:\mathbb R^m\to\ker A$，并令

$$\begin{align}
V&:=A^T(AA^T)^{-1/2},&[U\ V]&\in O(n),& I&=UL
\end{align}$$

其中 $L\in GL(m)$。在 adapted basis中写

$$\begin{align}
[U\ V]^TM[U\ V]&=\begin{pmatrix}M_0&B\\
B^T&D\end{pmatrix},&
S&:=D-B^TM_0^{-1}B.
\end{align}$$

Block determinant与 block inverse分别给

$$\begin{align}
\det M&=\det M_0\det S,\\
V^TM^{-1}V&=S^{-1}.
\end{align}$$

又 $A=(AA^T)^{1/2}V^T$，故

$$\begin{align}
G=AM^{-1}A^T=(AA^T)^{1/2}S^{-1}(AA^T)^{1/2},
\end{align}$$

从而 $\det G=\det(AA^T)/\det S$。另一方面

$$\begin{align}
\frac{\det M_{\mathrm{conf}}}{\det(I^TI)} =\frac{\det(L^TM_0L)}{\det(L^TL)}=\det M_0.
\end{align}$$

消去 $\det M_0$、$\det S$ 即得结论。$\square$

现在检查 Faddeev--Senjanović measure及所有 $2\pi$。Constraint matrix满足

$$\begin{align}
\det C&=(\det G)^2,&\sqrt{\det C}&=\det G
\end{align}$$

其中最后一步使用 $G>0$。若每个 time slice 的 parent Liouville measure约定为 $\mathrm d^nx\,\mathrm d^np/(2\pi)^n$，并要求 reduction后精确得到 $\mathrm d^my\,\mathrm d^m\pi/(2\pi)^m$，则 normalized second-class insertion是

$$\begin{align}
\boxed{ \mathrm d\mu_{\mathrm{FS}}^{\mathrm{norm}} :=\frac{\mathrm d^nx\,\mathrm d^np}{(2\pi)^n}(2\pi)^r \delta^{(r)}(\chi)\delta^{(r)}(\psi)\sqrt{\det C}.}
\end{align}$$

通常写 Faddeev--Senjanović formula时省略的正是这种 slice-independent overall $2\pi$ convention；这里保留它是为了与 normalized Schrödinger kernel逐片比较。令

$$\begin{align}
R&:=M^{-1}A^TG^{-1},&T&:=[I\ R],&AR&=1_r,
\end{align}$$

并作 canonical adapted change

$$\begin{align}
x&=Iy+R\xi,&p&=T^{-T}\binom{\pi}{\eta}.
\end{align}$$

则 $\chi=\xi$、$\psi=G\eta$，而 canonical Jacobians相消：

$$\begin{align}
\mathrm d^nx\,\mathrm d^np&=\mathrm d^my\,\mathrm d^r\xi\,\mathrm d^m\pi\,\mathrm d^r\eta,\\
\delta(\xi)\delta(G\eta)\det G&=\delta(\xi)\delta(\eta).
\end{align}$$

所以直接积分 $\xi,\eta$ 后恰得 reduced Liouville measure，既没有 gauge volume，也没有把 second-class pair当作 first-class gauge fixing。

积分剩余 $\pi$ 的 one-step Gaussian后，configuration-space insertion可写成一个 intrinsic expression。先定义 coarea-normalized delta

$$\begin{align}
\delta_{A,I}(x)\,\mathrm d^nx &:=\left(\frac{\det(AA^T)}{\det(I^TI)}\right)^{1/2} \delta^{(r)}(Ax)\,\mathrm d^nx,
\end{align}$$

则 coarea formula给

$$\begin{align}
\int_{\mathbb R^n}f(x)\delta_{A,I}(x)\,\mathrm d^nx &=\int_{\mathbb R^m}f(Iy)\,\mathrm d^my.
\end{align}$$

再令

$$\begin{align}
\nu_\varepsilon &:=\left(\frac{\det M_{\mathrm{conf}}}{\det M}\right)^{1/2} (2\pi\mathrm i\varepsilon)^{r/2}.
\end{align}$$

Determinant lemma立即给

$$\begin{align}
\boxed{ \nu_\varepsilon\,\delta_{A,I}(x) =(2\pi\mathrm i\varepsilon)^{r/2}\sqrt{\det G}\,\delta^{(r)}(Ax).}
\end{align}$$

这就是 normalized Faddeev--Senjanović measure积分掉 secondary momentum/normal pair后的 configuration sewing factor；$\delta_{A,I}$ 与 $\nu_\varepsilon$ 由同一个 normalized phase-space measure共同固定，而不是为使 kernel相等而调节的独立 prefactors。Euclidean time统一把 $\mathrm i\varepsilon$ 换成 $\varepsilon>0$ 并取 positive square roots；Lorentzian branch与下述 metaplectic/Maslov branch同步固定。

这里的 $\sqrt{\det C}=\det G$ 正是 B1.1 同一个 symplectic normal sector $\mathcal N$ 在 constraint coordinates $(\chi,\psi)$ 中的 Liouville-density Jacobian：algebra theorem以 relative commutant忽略 $\mathfrak W(\mathcal N)$，path-integral theorem则以 invariant second-class density积分掉这对 normal variables。两条构造因此共享同一个 normal geometry，而不是两个事后配对的 reductions。

#### Gaussian Sewing-Composition Theorem

为了精确定义“把 regional kernels glue”，不能只在 initial/final endpoints插一次 delta；continuity必须沿完整 internal port history施加。取 symmetric short-time quadratic action

$$\begin{align}
S_\varepsilon^{\mathrm{dup}}(x',x) &=\frac1{2\varepsilon}(x'-x)^TM(x'-x) -\frac\varepsilon4\left({x'}^TKx'+x^TKx\right)
\end{align}$$

与 kernel

$$\begin{align}
K_\varepsilon^{\mathrm{dup}}(x',x) &=\left(\frac{\det M}{(2\pi\mathrm i\varepsilon)^n}\right)^{1/2} e^{\mathrm iS_\varepsilon^{\mathrm{dup}}(x',x)}.
\end{align}$$

因为 parent matrices是 regional direct sums，这个 kernel逐 region factorize。上节已经从 second-class measure内禀导出 $\nu_\varepsilon\delta_{A,I}$ 及其 branch convention。

**Theorem (finite quadratic sewing kernels equal the reduced propagator).** 在上述 finite nonsingular quadratic setting中，取 physical endpoints $x_0=Iy_0$、$x_S=Iy_S$，把每个 short-time regional product kernel乘 $\nu_\varepsilon$，并在每个 intermediate slice以 $\delta_{A,I}(x_s)\,\mathrm d^nx_s$ compose，则每个 discretized amplitude精确等于 conforming system的 time-sliced amplitude；Euclidean Trotter limit给 $e^{-t\widehat H_{\mathrm{red}}}$，real-time limit在 noncaustic intervals给其 Mehler kernel、一般时刻给相同 tempered-distribution propagator。

**Proof.** 在每个 constrained slice写 $x_s=Iy_s$。Coarea normalization把 integration measure逐片精确变成 $\mathrm d^my_s$。Pullback identities给

$$\begin{align}
S_\varepsilon^{\mathrm{dup}}(Iy',Iy) &=\frac1{2\varepsilon}(y'-y)^TM_{\mathrm{conf}}(y'-y)\\
&\quad-\frac\varepsilon4\left({y'}^TK_{\mathrm{conf}}y'+y^TK_{\mathrm{conf}}y\right).
\end{align}$$

而 prefactor满足 exact identity

$$\begin{align}
\nu_\varepsilon \left(\frac{\det M}{(2\pi\mathrm i\varepsilon)^n}\right)^{1/2} &=\left(\frac{\det M_{\mathrm{conf}}}{(2\pi\mathrm i\varepsilon)^m}\right)^{1/2}.
\end{align}$$

故每个 sewn short-time factor就是 conforming short-time factor，任意 finite number of slices已逐项相等。Euclidean time中 finite-dimensional Gaussian kernels与 standard Trotter product给 rigorous heat-semigroup limit；finite positive quadratic real-time system在 normal modes中只有相关 $\sin(\omega_jt)=0$（等价于对应 free block失秩）的离散 caustic times。Caustic外是 ordinary Mehler kernel；跨越这些离散时刻时，采用同一个预先固定的 metaplectic/Maslov branch作 tempered-distribution continuation。Linear subspace与 constant $M,K$ 不产生 curvature或ordering correction。$\square$

这个 theorem同时覆盖 centered $1$D matrices与一般 finite network。Centered case有 $n=2N+2$、$r=1$、$m=2N+1$，并且

$$\begin{align}
\det M^{\mathrm{dup}}&=r_N^2=\frac{\rho_N^2}{4},& \det M_{\mathrm{conf}}&=\rho_N,& \det G_N&=\frac4{\rho_N},\\
\delta_{A,I}(x)&=\delta(q_1-q_2),& \nu_{\varepsilon,N}&=2\left(\frac{2\pi\mathrm i\varepsilon}{\rho_N}\right)^{1/2}.
\end{align}$$

因此 intrinsic sharp sewing insertion按 $\rho_N^{-1/2}$ singular scaling；但它乘 parent free prefactor后精确留下 $\det M_{\mathrm{conf}}^{1/2}$，所以每个 finite $N$ amplitude正常且等于 reduced amplitude。$N\to\infty$ 时不能把 divergent factor单独解释成普通 continuum boundary-history Lebesgue measure；singularity属于 parent normal direction与 sharp configuration delta，后文会把它和 finite physical amplitudes的良好极限分开。关键仍是 sewing delta沿 **history/time slices** compose；单一 equal-time endpoint projection不是本 theorem。

#### Fixed-History Gaussian Families as a Genuine Finite Sewing Object

Fixed-$q$ Weyl algebras本身不足，但 fixed-boundary **amplitudes** 比单独的 fibre algebras多了 composition data。把 time interval分成 $S$ 个 slices；对 region $i$，固定整条 discrete port history $q=(q_0,\ldots,q_S)$，并积分所有 regional bulk coordinates，定义保留 endpoint half-densities的 Gaussian functional

$$\begin{align}
Z_{i,S}[q] :=\int\prod_{s=1}^{S-1}\mathrm d c_{i,s}
\prod_{s=0}^{S-1}K_{i,\varepsilon}\bigl(c_{i,s+1},q_{s+1};c_{i,s},q_s\bigr).
\end{align}$$

这里 $K_{i,\varepsilon}$ 包含该 region完整 mass blocks与 $q$ cross terms；不能先把 $q$ 当作一个无 kinetic/cross normalization 的外部符号。

**Theorem (finite fixed-history amplitudes sew to the conforming kernel).** 在前述 finite positive quadratic class中，令 $\mathcal D_{\mathrm{FS},S}q$ 表示由每个 short-time factor的 intrinsic second-class half-density

$$\begin{align}
(2\pi\mathrm i\varepsilon)^{r/2}\sqrt{\det G}\,\delta(Ax)
\end{align}$$

经 coarea disintegration诱导到 shared port histories上的 measure；等价地，每个 regional-product short-time factor带一个 $\nu_\varepsilon$，每个 integrated shared slice使用上述 conforming Lebesgue coordinate。则

$$\begin{align}
\boxed{ \int \mathcal D_{\mathrm{FS},S}q\ \prod_i Z_{i,S}[q] =K_{\mathrm{conf},S}.}
\end{align}$$

等号包括 determinant prefactor、endpoint half-density与 phase，不只是 stationary exponent；对 artificial diagonal sewing及统一 Fourier convention它是 exact equality。

**Proof.** 在未先积分 $c_{i,s}$ 时，$\prod_iK_{i,\varepsilon}$ 正是 block-diagonal duplicate parent kernel。上一个 theorem逐 slice把 intrinsic constrained measure与该 kernel变成 conforming short-time kernel。Finite-dimensional Fubini theorem允许先积分 regional $c_i$ 得 $\prod_iZ_{i,S}[q]$，或先实施 delta/coarea reduction；两种积分次序给同一个 finite Gaussian integral。$\square$

因此 free finite regulator中的 literal “quantize regional dynamics first, then integrate the shared boundary history”已经成立；关键 object是带 canonical half-density/measure的 amplitude correspondence，不是裸族 $\{\mathfrak W_i[q]\}$。

Euclidean free scalar给一个更熟悉但逻辑独立的 benchmark。令 $P_i>0$ 是 regional elliptic operator，$E_iq$ 是 Dirichlet harmonic extension，$\Lambda_i$ 是按 **positive outward derivative** convention定义的 Euclidean DtN form。Orthogonal decomposition $\phi_i=\phi_{i,D}+E_iq$ 给

$$\begin{align}
S_{E,i}[\phi_i]&=\frac12\mathfrak a_{D,i}[\phi_{i,D}] +\frac12\langle q,\Lambda_iq\rangle,\\
Z_i[q]&=Z_{i,D}\exp\!\left[-\frac12\langle q,\Lambda_iq\rangle\right].
\end{align}$$

在 finite boundary regulator中于是严格有

$$\begin{align}
\int_{\mathbb R^r}\frac{\mathrm d^rq}{(2\pi)^{r/2}}Z_1[q]Z_2[q] =Z_{1,D}Z_{2,D}\det(\Lambda_1+\Lambda_2)^{-1/2},
\end{align}$$

有 sources时 Gaussian completion再给 $(\Lambda_1+\Lambda_2)^{-1}$ 的 boundary Schur complement，从而恢复 global Green kernel。BFK determinant gluing formula是这个机制在 elliptic continuum、zeta-regularized determinant层的成熟 analogue：global determinant由 regional Dirichlet determinants、Neumann-jump/DtN-sum determinant及依赖几何/regularization convention的 local factor组成。这里的 $\Lambda_i$ 与本文 Lorentzian stationary port convention $M_i=-\Lambda_i$ 必须分开。

Infinite-dimensional $\mathcal Dq$、$\det_\zeta(\Lambda_1+\Lambda_2)$ 与 local anomaly factor不在本文 canonical Lorentzian rigor范围；所以正文 claim是 finite Gaussian theorem加 continuum Euclidean formal/analytic benchmark，不把 BFK公式冒充 real-time Hilbert-space gluing theorem。

#### Polarization Covariance and Comparison with B1.1

若 input/output polarizations由 finite symplectic maps $S_{\mathrm{in}},S_{\mathrm{out}}$ 改变，选定 metaplectic lifts后 kernel变为

$$\begin{align}
K'_{L}&=\mu(S_{\mathrm{out}})K_L\mu(S_{\mathrm{in}})^{-1}.
\end{align}$$

不同 lifts只改变 overall central sign/Maslov phase；conjugation on Weyl generators不受该 sign影响。若 transformed polarization不再是 causal-admissible input，relation-level covariance仍成立，但不能据此声称 transformed object是单值 causal response graph。

在 declared finite quadratic class中，B1.1 与 B1.2 因而形成 commuting diagram

$$
\begin{array}{ccc}
(T^*Q^{\mathrm{dup}},\chi=\psi=0)
&\xrightarrow{\ \mathrm{Dirac\ reduction}\ }&T^*Q^{\mathrm{conf}}\\[2mm]
\Big\downarrow\scriptstyle{\mathrm{Weyl/regional\ kernels}}
&&\Big\downarrow\scriptstyle{\mathrm{Weyl}/e^{-\mathrm it\widehat H_{\mathrm{red}}}}\\[2mm]
\mathfrak A^{\mathrm{phys}}_{N,R}\,/\,K_{\mathrm{sewn}}
&\xrightarrow{\ \alpha_{\mathrm{red}}^{-1}\ }&
\mathfrak W(T^*Q^{\mathrm{conf}},\sigma_{\mathrm{conf}})\,/\,K_{\mathrm{conf}}.
\end{array}
$$

Top row由 $\varphi_{\mathrm{red}}$ 的 symplectic proof闭合；left-to-right algebra arrow由 Weyl universal property闭合；propagator arrow由逐 slice Gaussian identity闭合。故 direct second-class reduction与 quantized-sewing-kernel composition产生同一个 physical Weyl algebra和 propagator。本文没有把这个 result外推到 arbitrary nonlinear relation、singular composition、gauge/BV或 infinite-dimensional FIO domain。

#### Reduction by Stages, Refinement, and Finite Quantum Associativity

现在把 continuity rows分批加入。令

$$\begin{align}
A=\begin{pmatrix}A_1\\
A_2\end{pmatrix}:Q^{\mathrm{dup}}\longrightarrow
\mathbb R^{r_1}\oplus\mathbb R^{r_2}
\end{align}$$

为 full-row-rank，且 $A_1$ 本身 full-row-rank。取 full-column-rank maps

$$\begin{align}
I_1:Q_1\overset{\sim}{\longrightarrow}\ker A_1, &\qquad M_1=I_1^TMI_1, &K_1=I_1^TKI_1,\\
\widetilde A_2:=A_2I_1:Q_1\longrightarrow\mathbb R^{r_2}, &\qquad I_2:Q_A\overset{\sim}{\longrightarrow}\ker\widetilde A_2.
\end{align}$$

Combined full row rank保证 $\widetilde A_2$ full row rank。最终 conforming injection 与 matrices 是

$$\begin{align}
I=I_1I_2,&\qquad M_A=I_2^TM_1I_2=I^TMI, &K_A=I_2^TK_1I_2=I^TKI.
\end{align}$$

这里 $\widetilde A_2$、$M_1$ 是 staged reduction 的必要更新；把原 $A_2$ 与原 $M$ 不加修改地用于第二步一般 dimension 不合，也不给正确 Dirac bracket。

**Theorem (finite second-class reduction by stages).** 在上述假设下：

1. one-shot constraint surface $\mathsf C_A\subset T^*Q^{\mathrm{dup}}$ 与先按 $A_1$ reduction、再在 $T^*Q_1$ 中按 $\widetilde A_2$ reduction所得 phase space canonical symplectomorphic；两者都是 $T^*Q_A$，且 reduced Hamiltonian同为

$$\begin{align}
H_A(y,\pi)=\frac12\pi^TM_A^{-1}\pi+\frac12y^TK_Ay.
\end{align}$$

2. 若各步使用上文由 kinetic metric决定的 momentum lift，则 embeddings **逐字复合**：

$$\begin{align}
\varphi_{{\rm red},A}(y,\pi) &=\left(Iy,\;MI M_A^{-1}\pi\right)\\
&=\varphi_{{\rm red},A_1}\!\left(I_2y,\;M_1I_2M_A^{-1}\pi\right) =\bigl(\varphi_{{\rm red},A_1}\circ\varphi_{{\rm red},\widetilde A_2}^{(1)}\bigr)(y,\pi).
\end{align}$$

3. 令

$$\begin{align}
G_A=AM^{-1}A^T
=\begin{pmatrix}G_{11}&G_{12}\\
G_{21}&G_{22}\end{pmatrix},
&\qquad G_{11}=A_1M^{-1}A_1^T,\\
\widetilde G_2 &:=\widetilde A_2M_1^{-1}\widetilde A_2^T.
\end{align}$$

则第二步 matrix 正是 Schur complement，故

$$\begin{align}
\boxed{ \widetilde G_2=G_{22}-G_{21}G_{11}^{-1}G_{12}, \qquad \det G_A=\det G_{11}\det\widetilde G_2.}
\end{align}$$

4. 令 $\mathcal N_1=\mathsf C_1^\sigma$，并把第二步 symplectic normal sector由 $\varphi_{{\rm red},A_1}$ lift为 $\mathcal N_2^{(1)}\subset\mathsf C_1$。则

$$\begin{align}
\mathcal S^{\mathrm{dup}} &=\mathsf C_A\oplus^\sigma\mathcal N_2^{(1)}\oplus^\sigma\mathcal N_1,\\
\mathfrak W(\mathcal S^{\mathrm{dup}}) &\simeq \mathfrak W(\mathsf C_A)\otimes_{\min} \mathfrak W(\mathcal N_2^{(1)})\otimes_{\min}\mathfrak W(\mathcal N_1).
\end{align}$$

因此 one-shot physical factor 与 staged relative commutant/fixed-point factor canonical $*$-isomorphic：

$$\begin{align}
\mathfrak A_A^{\mathrm{phys}} &=\mathfrak W(\mathcal N_A)'\cap\mathfrak W(\mathcal S^{\mathrm{dup}})\\
&=\left[ \mathfrak W(\mathcal N_2^{(1)})'\cap \bigl(\mathfrak W(\mathcal N_1)'\cap\mathfrak W(\mathcal S^{\mathrm{dup}})\bigr) \right] =\mathfrak W(\mathsf C_A).
\end{align}$$

在三个或更多 row blocks时重复此构造；兼容 bases 下 $\varphi_{{\rm red},A_1\sqcup A_2\sqcup A_3}$ 的两种 parenthesization 都等于同一个 composite map。若 intermediate bases不同，二者由唯一的 final conforming symplectic coordinate change相连。因此这些 $*$-isomorphisms满足 usual cocycle/associativity identity，而不是只存在一个 unspecified equivalence。

**Proof.** 第一项由 $AI_1I_2=0$ 与 $\ker A=I_1\ker(A_2I_1)$ 得到；pullback canonical one-form或直接代入 displayed $\varphi_{\mathrm{red}}$ 给第二项与 Hamiltonian equality。第一步的 kinetic-orthogonal projector identity

$$\begin{align}
I_1M_1^{-1}I_1^T =M^{-1}-M^{-1}A_1^TG_{11}^{-1}A_1M^{-1}
\end{align}$$

两边都是映到 $\ker A_1$ 的同一个 $M$-orthogonal inverse，左、右乘 $A_2,A_2^T$ 即得 Schur complement；block determinant formula给 determinant product。最后，$\mathsf C_1=\mathsf C_A\oplus^\sigma\mathcal N_2^{(1)}$，而 $\mathcal N_1=\mathsf C_1^\sigma$，所以 symplectic direct sum与 Weyl tensor factorization成立；逐次取 normal fixed points即留下 $\mathfrak W(\mathsf C_A)$。$\square$

**Corollary (normalized sewing kernels are associative).** 在 B1.2 的 finite quadratic/time-sliced setting中，每一步都使用其 **updated** second-class half-density

$$\begin{align}
(2\pi\mathrm i\varepsilon)^{r_j/2} \sqrt{\det G_j^{\mathrm{updated}}}\,\delta(A_j^{\mathrm{updated}}x_j).
\end{align}$$

Canonical phase-space disintegration与上式 determinant product说明 staged measure等于 one-shot measure。故任意合法 parenthesization逐 slice都产生同一个 $M_A,K_A$ conforming Gaussian kernel。对纯 diagonal artificial sewing及固定 Fourier/half-density convention，等号 exact，既无额外 normalization也无额外 phase；在一般 polarization change下，不同 metaplectic lifts至多给已经固定一致的 central/Maslov phase。这个 theorem 是 Part I fixed-partition associativity/refinement theorem 的 finite quantum analogue；它不等于 continuum sharp-boundary associativity。

最小非平凡例子是三 region scalar chain：

$$\begin{align}
M&=\operatorname{diag}(m_1,m_2,m_3), &K&=\operatorname{diag}(k_1,k_2,k_3),\\
A_1&=(1,-1,0), &A_2&=(0,1,-1),\\
I_1&=\begin{pmatrix}1&0\\
1&0\\
0&1\end{pmatrix},
&\widetilde A_2&=(1,-1), &I_2&=\binom11.
\end{align}$$

于是

$$\begin{align}
M_1&=\operatorname{diag}(m_1+m_2,m_3), &M_A&=m_1+m_2+m_3,\\
K_1&=\operatorname{diag}(k_1+k_2,k_3), &K_A&=k_1+k_2+k_3,\\
G_A&=
\begin{pmatrix}
m_1^{-1}+m_2^{-1}&-m_2^{-1}\\
-m_2^{-1}&m_2^{-1}+m_3^{-1}
\end{pmatrix},\\
\det G_A&=\frac{m_1+m_2+m_3}{m_1m_2m_3} =\frac{m_1+m_2}{m_1m_2} \left(\frac1{m_1+m_2}+\frac1{m_3}\right).
\end{align}$$

因此 one-shot 与 staged mass/stiffness pullbacks、momentum lift、Dirac projector及 sewing determinant factor完全一致。这些结论是 finite matrix identities，不替代 continuum theorem。

### B1.2a — Conforming Regulator Recovered as the Reduced System

对每条 interface选择 finite trace basis并 diagonal-copy shared coefficients的 conforming ansatz，正是 B1.0 exact conforming pullback proposition中的 inclusion $I$。因此无需重复 regional block推导：若 $x_{N,R}$ 收集全部 homogeneous-mode与 shared-port coordinates，则

$$\begin{align}
M_{N,R}&=I^TM^{\mathrm{dup}}I,&K_{N,R}&=I^TK^{\mathrm{dup}}I,\\
L_{N,R} &=\frac12\dot x_{N,R}^{T}M_{N,R}\dot x_{N,R} -\frac12x_{N,R}^{T}K_{N,R}x_{N,R},\\
p_{N,R}&=M_{N,R}\dot x_{N,R}, &\Omega_{N,R}&=\delta p_{N,R}^{T}\wedge\delta x_{N,R}.
\end{align}$$

记 $f_{N,R}$ 为 B1.0 regional trial columns沿 $I$ 组合所得的 conforming field-valued trial column，于是 $\Phi_{N,R}=f_{N,R}^Tx_{N,R}$。该处只需记录 normal-mode consequence：若 $M_{N,R},K_{N,R}$ 在指定 finite conforming space 上 positive，解 generalized eigenproblem

$$\begin{align}
K_{N,R}z_{\lambda;N,R} &=\Omega_{\lambda;N,R}^2M_{N,R}z_{\lambda;N,R}, &z_{\lambda;N,R}^{T}M_{N,R}z_{\mu;N,R}&=\delta_{\lambda\mu}
\end{align}$$

后，令 reconstructed mode $F_{\lambda;N,R}=f_{N,R}^{T}z_{\lambda;N,R}$，则

$$\begin{align}
Q_{\lambda;N,R} &=z_{\lambda;N,R}^{T}M_{N,R}x_{N,R},\\
P_{\lambda;N,R} &=z_{\lambda;N,R}^{T}p_{N,R}
\end{align}$$

是同一个 finite Hamiltonian 的 canonical normal coordinates。这是受控的 finite-dimensional quantization；它不是对原始 fixed-$q$ regional product Fock space 直接施加 operator substitution。

### B1.2b — Higher-Dimensional Two-Scale Conforming Limit

在 one-dimensional interval 中 interface 是一个点，trace space 只有一个 scalar coordinate，所以 $R=1$ 足够，continuum limit 只写 $N\to\infty$。当 spatial dimension $d>1$ 时，$\Sigma_{ij}$ 为 positive-dimensional manifold，$q(t,z)$ 是 field-valued port；固定 $R$ 只得到 boundary-band-limited theory。真正的 limit 必须是

$$\begin{align}
\boxed{(N,R)\longrightarrow(\infty,\infty),}
\end{align}$$

或一个明确的 cofinal schedule $R=R(N)$。

令 $V$ 是 connected global energy space，$V_i$ 是 regional energy space，$\gamma_i:V_i\to\mathcal Q_i$ 是 joint trace map。令 $\mathcal Q$ 表示所有无向 interfaces 的 compatible shared trace product space，并假设每个 regional joint trace 都有 bounded right inverse $E_i:\mathcal Q_i\to V_i$。取 zero-trace bulk spaces $V_{i,N}^0\subset\ker\gamma_i$ 与 finite shared interface spaces $\mathcal Q_R\subset\mathcal Q$；这里 $R$ 集体表示各 interfaces 的 cutoffs。定义 conforming glued space

$$\begin{align}
W_{N,R}:=\left\{(v_i+E_iq_{i,R})_i:
v_i\in V_{i,N}^0,\ q_R=(q_{\{ij\},R})_{\{i,j\}}\in\mathcal Q_R, q_{i,R}:=(q_{\{ij\},R})_{j\in N(i)}\right\}.
\end{align}$$

同一个 $q_{\{ij\},R}$ 同时进入 regions $i$ 与 $j$，所以 continuity 是 ansatz 的一部分。

若使用 discrete lift $E_{i;N,R}$，还必须要求 $\gamma_iE_{i;N,R}q_{i,R}=q_{i,R}$、uniform stability $\sup_{N,R}\|E_{i;N,R}\|<\infty$ 以及对 fixed smooth $q_i$ 的 consistency；否则 trace density 本身不足以控制 bulk energy。

一个可检验的充分条件是

$$\begin{align}
\overline{\bigcup_N V_{i,N}^0}^{\,V_i}&=\ker\gamma_i, &\overline{\bigcup_R\mathcal Q_R}^{\,\mathcal Q}&=\mathcal Q,
\end{align}$$

其中第二个 closure 必须取 trace norm，例如 scalar 的 $H^{1/2}(\Sigma_{ij})$ norm，而不只是 $L^2$ norm。事实上，对任意 global energy field $u$，写

$$\begin{align}
u_i&=(u_i-E_iq_i)+E_iq_i, &q_i&=\gamma_i u_i.
\end{align}$$

把 compatible regional traces 记成 $q=(q_{\{ij\}})\in\mathcal Q$。先以 $q_R\to q$ in $\mathcal Q$，再以 $v_{i,N}\to u_i-E_iq_i$ in $V_i$，boundedness of $E_i$ 给出 joint approximation。因而 chosen schedule $(N_k,R_k)$ 必须满足真正的 recovery condition

$$\begin{align}
\boxed{\inf_{w\in W_{N_k,R_k}}\|u-w\|_V\longrightarrow0 \qquad\text{for every }u\in V.}
\end{align}$$

实际 discretization 还需 compatibility/stability：$E_i\mathcal Q_{R(N)}$ 必须被 finite regional ansatz 精确包含或一致逼近，discrete trace map 的 range 必须正好容纳 $\mathcal Q_{R(N)}$，并且 restricted quadratic forms 要 uniformly coercive。若 $W_{N_k,R_k}$ nested and conforming，这个 joint form density 给出 Mosco convergence；若不 nested，则必须分别证明 weak-liminf 与 recovery sequence。随后 strong-resolvent、energy-wave、symplectic 与 spatially smeared quasifree convergence 才可按 1D theorem 的逻辑推出。

因此 $R(N)$ 没有 model-independent universal rate。它必须一方面趋于无穷以使 $\bigcup_R\mathcal Q_R$ 在 trace space 中稠密，另一方面与 bulk resolution 匹配以保持 stable lifting/trace compatibility。一般 geometry 中按共同 spectral window 同时增加 transverse harmonics 与 radial modes仍只是 criterion；下面在一个 product cylinder上把它真正证明。Flux convergence通常只在 dual trace space $\mathcal Q^{\vee}$ 或 weak Green identity 中成立；这些 classical conditions不自动给 pointwise conormal derivative，也不证明 continuum Fock equivalence。

#### Product-Cylinder Theorem on $[-L,L]\times S_{R_s}^{d-1}$

取 $d>1$、sphere radius $R_s>0$，并令

$$\begin{align}
\Sigma&=[-L,L]\times S_{R_s}^{d-1},& \mathrm ds_\Sigma^2&=\mathrm dx^2+R_s^2\mathrm d\Omega_{d-1}^2,
\end{align}$$

在 $x=\pm L$ 取 Dirichlet，在 $x=0$ 分成 two regions。令

$$\begin{align}
H&=L^2(\Sigma),& V&=\{u\in H^1(\Sigma):u(\pm L,\Omega)=0\},\\
\mathfrak a[u,v]&=\int_\Sigma\left( \partial_xu\,\partial_x\overline v+R_s^{-2}\nabla_Su\cdot\nabla_S\overline v+m^2u\overline v\right)\mathrm d\operatorname{vol}_\Sigma,\qquad m>0.
\end{align}$$

取 orthonormal spherical harmonics $Y_{\ell\mu}$，其中 $\mu$ 是 degeneracy label 而不是 mass：

$$\begin{align}
-\Delta_{S^{d-1}}Y_{\ell\mu}&=\ell(\ell+d-2)Y_{\ell\mu},\\
\nu_\ell^2&:=m^2+\frac{\ell(\ell+d-2)}{R_s^2}.
\end{align}$$

所以每个 $(\ell,\mu)$ channel 正是 effective mass $m_{\mathrm{eff},\ell}^2=\nu_\ell^2$ 的 $1$D radial problem。两侧都用 $y\in[0,L]$，$y=0$ 在 outer boundary、$y=L$ 在 cut，并定义

$$\begin{align}
s_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L},& h_\ell(y)&=\frac{\sinh(\nu_\ell y)}{\sinh(\nu_\ell L)}.
\end{align}$$

$h_\ell$ 是该 channel 的 energy-minimizing lift；它依赖 $\ell$ 但不依赖 cutoff。取明确 cofinal schedule

$$\begin{align}
\boxed{K_\perp(N)=N}
\end{align}$$

并定义 nested conforming space

$$\begin{aligned}
W_N:=\Biggl\{u_i(y,\Omega)= \sum_{\ell\le N,\mu}\left[ \sum_{n\le N}c_{i,n\ell\mu}s_n(y)+q_{\ell\mu}h_\ell(y) \right]Y_{\ell\mu}(\Omega),\quad i=\pm;\\
\text{the same }q_{\ell\mu}\text{ is used on both sides}\Biggr\}.
\end{aligned}$$

这里保留每个 $\ell\le N$ 的全部 degeneracies。Continuity at $x=0$ 与 outer Dirichlet 都是 ansatz 的 exact properties；$n\le N$ 是 radial cutoff，$\ell\le K_\perp(N)$ 是 transverse cutoff。

两个直接计算是

$$\begin{align}
\int_0^L\left(|h_\ell'|^2+\nu_\ell^2|h_\ell|^2\right)\mathrm dy &=\nu_\ell\coth(\nu_\ell L),\\
\int_0^L\left(h_\ell's_n'+\nu_\ell^2h_\ell s_n\right)\mathrm dy&=0.
\end{align}$$

因此以

$$\begin{align}
\|q\|_{H_m^{1/2}(S_{R_s}^{d-1})}^2 :=\sum_{\ell,\mu}\nu_\ell|q_{\ell\mu}|^2
\end{align}$$

定义的谱范数与 standard $H^{1/2}$ norm 等价，并且 two-sided lift $Eq$ 满足

$$\begin{align}
2\|q\|_{H_m^{1/2}}^2 \le\mathfrak a[Eq] \le2\coth(mL)\|q\|_{H_m^{1/2}}^2.
\end{align}$$

这给一个 uniform bounded right inverse $E:H^{1/2}(S_{R_s}^{d-1})\to V$；使用 linear radial lift 会只控制 $H^1$ boundary norm，不能得到这个 theorem。

**Theorem (two-scale continuum closure in the product cylinder).** 对上面的 $W_N=W_{N,K_\perp(N)}$：

1. $W_N\subset W_{N+1}\subset V$，且

$$\begin{align}
\boxed{\overline{\bigcup_NW_N}^{\,V}=V.}
\end{align}$$

2. 令 extended quadratic form $\mathfrak a_N=\mathfrak a$ on $W_N$、在 $H\setminus W_N$ 上取 $+\infty$，则 $\mathfrak a_N\to\mathfrak a$ in Mosco sense。若 $\mathbf A_N$ 是 $\mathfrak a|_{W_N}$ 的 Galerkin operator、$P_N:H\to W_N$ 是 $L^2$ projection、$\iota_N:W_N\hookrightarrow H$，则对每个 $\lambda>0$

$$\begin{align}
\boxed{\iota_N(\mathbf A_N+\lambda)^{-1}P_N \xrightarrow[N\to\infty]{\mathrm s}(A+\lambda)^{-1}.}
\end{align}$$

这是 embedded/compressed resolvent convergence；不同 finite Hilbert spaces 之间不省略 $P_N,\iota_N$。

3. 若 $(\phi_{0,N},\pi_{0,N})\in W_N\times W_N$、$\phi_{0,N}\to\phi_0$ in $V$、$\pi_{0,N}\to\pi_0$ in $H$，并令 $\ddot\phi_N+\mathbf A_N\phi_N=0$、$\ddot\phi+A\phi=0$ 取这些 initial data，则对每个 $T<\infty$

$$\begin{align}
\sup_{|t|\le T}\left( \|\phi_N(t)-\phi(t)\|_V+ \|\dot\phi_N(t)-\dot\phi(t)\|_H\right)&\longrightarrow0,\\
\boxed{\sup_{|t|\le T}
\|\gamma_0\phi_N(t)-\gamma_0\phi(t)\|_{H^{1/2}(S_{R_s}^{d-1})}}&\longrightarrow0.
\end{align}$$

对两对这样收敛的 solutions，finite canonical forms

$$\begin{align}
\sigma_N((\phi_N,\pi_N),(\widetilde\phi_N,\widetilde\pi_N)) =(\pi_N,\widetilde\phi_N)_H-(\widetilde\pi_N,\phi_N)_H
\end{align}$$

收敛到 continuum $\sigma$。

4. 因 $\mathbf A_N,A\ge m^2>0$，对任意 **bulk** spatial smearings $f,g\in L^2(\Sigma)$ 与 fixed $\tau$，finite connected-vacuum two-point functions

$$\begin{align}
W_N(\tau;f,g):=\frac12 (P_Nf,\mathbf A_N^{-1/2}e^{-\mathrm i\tau \mathbf A_N^{1/2}}P_Ng)_H
\end{align}$$

满足

$$\begin{align}
\boxed{W_N(\tau;f,g)\longrightarrow
\frac12(f,A^{-1/2}e^{-\mathrm i\tau A^{1/2}}g)_H,}
\end{align}$$

且对 compact $\tau$ intervals locally uniform。固定 bulk smearings 的 Gaussian/Wick $n$-point functions亦随之收敛。

**Proof.** 对任意 $u\in V$，取 interface trace $q=\gamma_0u\in H^{1/2}$，写 $u_i=v_i+E_iq$；$v_i$ 在 $y=0,L$ 都有 zero trace。Spherical partial sums $q_N$ 在 $H^{1/2}$ 收敛，而 tensor Dirichlet expansion $\sum_{n,\ell\le N,\mu}c_{i,n\ell\mu}s_nY_{\ell\mu}$ 在 $H_0^1$ 收敛。Lift bound于是给 $v_{i,N}+E_iq_N\to u_i$ in $V$，证明 density。Nested conforming closed forms 的 weak lower-semicontinuity 给 Mosco liminf，刚构造的 sequence 给 recovery；Mosco theorem 给 displayed embedded resolvent。

下面补出从 form convergence 到 wave **energy** convergence 的 bridge。取共同 continuum energy Hilbert space

$$\begin{align}
\mathcal E&:=V\oplus H,& \langle(u,v),(\widetilde u,\widetilde v)\rangle_{\mathcal E} &:=\mathfrak a[u,\widetilde u]+(v,\widetilde v)_H,
\end{align}$$

以及 finite energy spaces

$$\begin{align}
\mathcal E_N&:=W_N\oplus W_N,& \langle(u_N,v_N),(\widetilde u_N,\widetilde v_N)\rangle_{\mathcal E_N} &:=\mathfrak a[u_N,\widetilde u_N]+(v_N,\widetilde v_N)_H.
\end{align}$$

Inclusion $\jmath_N:\mathcal E_N\hookrightarrow\mathcal E$ 是 isometric。令 $Q_N:V\to W_N$ 为 Ritz projection，$\mathfrak a[Q_Nu,w_N]=\mathfrak a[u,w_N]$；令 $P_N:H\to W_N$ 为 $H$-orthogonal projection。则

$$\begin{align}
\mathsf P_N^{\mathcal E}(u,v)&:=(Q_Nu,P_Nv)
\end{align}$$

正是 $\mathcal E$ 到 $\mathcal E_N$ 的 energy-orthogonal projection。Density给 $Q_Nu\to u$ in $V$、$P_Nv\to v$ in $H$，故 $\jmath_N\mathsf P_N^{\mathcal E}\to\operatorname{id}_{\mathcal E}$ strongly。

定义一阶 wave generators

$$\begin{align}
\mathcal G&:=\begin{pmatrix}0&I\\
-A&0\end{pmatrix},&
D(\mathcal G)&=D(A)\oplus V,\\
\mathcal G_N&:=\begin{pmatrix}0&I\\
-\mathbf A_N&0\end{pmatrix},&
D(\mathcal G_N)&=\mathcal E_N.
\end{align}$$

$\mathcal G$ 在 $\mathcal E$ 上 skew-adjoint，$\mathcal G_N$ 在 $\mathcal E_N$ 上 skew-adjoint：integration by parts in the form pairing先给 skew-symmetry，而下面同一个 coercive resolvent calculation对 $\zeta\mp\mathcal G$ 均给 full range，故 von Neumann range criterion闭合 adjoint statement；finite case也可直接由 $(\mathbf A_Nu_N,w_N)_H=\mathfrak a[u_N,w_N]$ 检查。因此二者生成 unitary wave groups。现在固定 $\zeta>0$ 与 $z=(f,g)\in\mathcal E$，写

$$\begin{align}
(u_N,v_N)&:=(\zeta-\mathcal G_N)^{-1}\mathsf P_N^{\mathcal E}z.
\end{align}$$

消去 $v_N$ 得

$$\begin{align}
\mathfrak a[u_N,w_N]+\zeta^2(u_N,w_N)_H &=(g,w_N)_H+\zeta(Q_Nf,w_N)_H,\qquad w_N\in W_N,\\
v_N&=\zeta u_N-Q_Nf.
\end{align}$$

Continuum resolvent $z_\zeta=(u,v):=(\zeta-\mathcal G)^{-1}z$ 满足同一 weak equation with $w\in V$ and $Q_Nf$ replaced by $f$。Coercivity、Céa lemma与 $Q_Nf\to f$ in $V$（因而也 in $H$）给

$$\begin{align}
u_N&\longrightarrow u\quad\text{in }V,& v_N&\longrightarrow v\quad\text{in }V\subset H.
\end{align}$$

故有明确的 compressed generator resolvent convergence

$$\begin{align}
\boxed{ \jmath_N(\zeta-\mathcal G_N)^{-1}\mathsf P_N^{\mathcal E}z \longrightarrow(\zeta-\mathcal G)^{-1}z \quad\text{in }\mathcal E.}
\end{align}$$

为了把 Trotter--Kato 放在一个共同 Hilbert space上而不隐藏 varying-space step，令

$$\begin{align}
\widetilde{\mathcal G}_N &:=\jmath_N\mathcal G_N\jmath_N^{-1} \oplus0 \quad\text{on }\quad \mathcal E=\jmath_N\mathcal E_N\oplus(\jmath_N\mathcal E_N)^\perp.
\end{align}$$

它是 $\mathcal E$ 上的 skew-adjoint generator，且

$$\begin{align}
(\zeta-\widetilde{\mathcal G}_N)^{-1}z &=\jmath_N(\zeta-\mathcal G_N)^{-1}\mathsf P_N^{\mathcal E}z +\zeta^{-1}\bigl(1-\jmath_N\mathsf P_N^{\mathcal E}\bigr)z.
\end{align}$$

第二项 strongly趋于零，故 boxed convergence正是 $(\zeta-\widetilde{\mathcal G}_N)^{-1}\to(\zeta-\mathcal G)^{-1}$ on the common $\mathcal E$。Standard Trotter--Kato approximation theorem于是给 compact forward-time convergence；对 $-\widetilde{\mathcal G}_N$ 与 $-\mathcal G$ 重复同一 resolvent calculation给 backward-time convergence。又

$$\begin{align}
e^{t\widetilde{\mathcal G}_N}z =\jmath_Ne^{t\mathcal G_N}\mathsf P_N^{\mathcal E}z +\bigl(1-\jmath_N\mathsf P_N^{\mathcal E}\bigr)z,
\end{align}$$

而最后一项与 $t$ 无关并 strongly趋于零，所以

$$\begin{align}
\sup_{|t|\le T}\left\| \jmath_Ne^{t\mathcal G_N}\mathsf P_N^{\mathcal E}z-e^{t\mathcal G}z \right\|_{\mathcal E}&\longrightarrow0.
\end{align}$$

若任意 $z_N=(\phi_{0,N},\pi_{0,N})\in\mathcal E_N$ 满足 $\jmath_Nz_N\to z$ in $\mathcal E$，unitarity再给

$$\begin{align}
\sup_{|t|\le T}\|e^{t\mathcal G_N}(z_N-\mathsf P_N^{\mathcal E}z)\|_{\mathcal E_N} &=\|z_N-\mathsf P_N^{\mathcal E}z\|_{\mathcal E_N}\longrightarrow0,
\end{align}$$

从而得到 theorem中的 compact-time $V\oplus H$ convergence，而不是只有 $H$-norm convergence。这里 $m>0$ 给 uniform coercivity $\mathbf A_N,A\ge m^2$，故 $\mathcal E$ norm 与 displayed $V\oplus H$ norm等价。并且

$$\begin{align}
\sup_{|t|\le T}\mathfrak a[\phi_N(t)-\phi(t)]^{1/2} &=\sup_{|t|\le T}\|A^{1/2}(\phi_N(t)-\phi(t))\|_H\longrightarrow0,\\
\mathfrak a[\phi_N(t)]&=\|\mathbf A_N^{1/2}\phi_N(t)\|_H^2,\qquad \mathfrak a[\phi(t)]=\|A^{1/2}\phi(t)\|_H^2.
\end{align}$$

特别地，

$$\begin{align}
\sup_{|t|\le T}\left|
\|\mathbf A_N^{1/2}\phi_N(t)\|_H-\|A^{1/2}\phi(t)\|_H \right| \le\sup_{|t|\le T}\mathfrak a[\phi_N(t)-\phi(t)]^{1/2} \longrightarrow0.
\end{align}$$

这就是同时控制 finite $\mathbf A_N^{1/2}$ energy与 continuum form norm所需的 invariant statement；不需要也不声称一般有向量恒等 $\iota_N\mathbf A_N^{1/2}\phi_N=A^{1/2}\phi_N$。

Bounded trace theorem现在直接给

$$\begin{align}
\sup_{|t|\le T}\|\gamma_0(\phi_N(t)-\phi(t))\|_{H^{1/2}} \le\|\gamma_0\|_{V\to H^{1/2}}
\sup_{|t|\le T}\|\phi_N(t)-\phi(t)\|_V\longrightarrow0.
\end{align}$$

两个 convergent solution pairs 的 symplectic convergence由 $V\hookrightarrow H$ 与 Cauchy--Schwarz逐项得到。

最后处理 quasifree covariance。对每个 fixed $\tau$，

$$\begin{align}
F_\tau(\lambda)&:=\lambda^{-1/2}e^{-\mathrm i\tau\sqrt\lambda}
\end{align}$$

属于 $C_0([m^2,\infty))$。Embedded resolvent convergence的 bounded continuous functional calculus给

$$\begin{align}
\iota_NF_\tau(\mathbf A_N)P_Ng&\longrightarrow F_\tau(A)g \qquad\text{in }H,
\end{align}$$

所以 displayed bulk-$L^2$-smeared two-point functions收敛。又因

$$\begin{align}
\sup_{\lambda\ge m^2}|\partial_\tau F_\tau(\lambda)|=1,
\end{align}$$

finite 与 continuum matrix elements关于 $\tau$ 是 uniform Lipschitz；pointwise convergence加 compact-interval finite-net argument给 locally uniform convergence。Gaussian Wick rule随后给每个 fixed finite bulk-smearing tuple的 $n$-point convergence。这条 functional-calculus结论与上面的 stronger wave-energy convergence共享同一 form approximation，但逻辑上不使用或暗示 sharp-interface operator convergence。

这个 theorem 不提供 universal convergence rate；球谐 degeneracy 仍影响 computational cost。它也不推出 $\dot q_N$ trace、pointwise conormal flux、sharp-interface covariance 或 unsmeared boundary field。Distribution $\delta(x)g(\Omega)$ 不是 $L^2(\Sigma)$ smearing；即使只在 sphere 上 smear，fixed $(\ell,\mu)$ radial sum仍保留 logarithmic sharp-$x$ divergence。Natural inclusions $W_N\oplus W_N\hookrightarrow W_{N+1}\oplus W_{N+1}$ 保持 kinematic canonical form，但一般不 intertwine $\mathbf A_N,\mathbf A_{N+1}$，所以 finite vacua不构成自动 compatible 的 inductive family。最后，finite connected vacua 的 smeared covariance convergence 不等于 vacuum vectors 或 regional product Fock spaces unitary equivalent；既有 sharp-Fock obstruction 完全保留。

Observable layer 与这个 two-scale limit 的一致表述是：每个 $(N,R)$ 先量子化同一个 finite conforming symplectic system，得到 $\mathfrak W_{N,R}$。在本文 product schedule 中，momenta以共同 $H=L^2(\Sigma)$ pairing认同，故 literal maps $W_N\oplus W_N\hookrightarrow W_{N+1}\oplus W_{N+1}$ 已经是 compatible symplectic injections，B1.3据此构造 physical Weyl algebra的 algebraic inductive system。一般而言，configuration spaces 的 nesting本身仍不够；若没有这个 common-$H$ identification，就必须另行配备

$$\begin{align}
J_{k\ell}:\mathcal S_k&\longrightarrow\mathcal S_\ell, &\sigma_\ell(J_{k\ell}x,J_{k\ell}y)&=\sigma_k(x,y), &J_{\ell m}J_{k\ell}&=J_{km},
\end{align}$$

再由 induced Weyl maps 比较 cylindrical/smeared subalgebras。没有这些 maps（包括 non-nested schedule）时，必须通过共同 continuum smeared observables 或 explicit convergence maps 比较，不能虚构 canonical inclusion。Part I 的 partition-independent connected Weyl algebra 是 continuum reconstruction target；finite cutoffs 可以依赖 partition、basis 与 lifting，只要 recovery/Mosco theorem 证明其指定 observable nets 收敛到同一个 target。这个 algebraic convergence statement仍不选择 state，也不抵消 sharp regional product-Fock obstruction。

### B1.2c — Centered 1D Duplicate-Port Sanity Check

取两侧都用 $y\in[0,L]$，并令

$$\begin{align}
h(y)&=\frac yL, &u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L},\\
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi},& k_n&=\frac{n\pi}{L}.
\end{align}$$

写

$$\begin{align}
a&=(A_1,\ldots,A_N)^T,& D&=\operatorname{diag}(k_1^2+m^2,\ldots,k_N^2+m^2),\\
d&=(a^T,a^T)^T,& r_N&:=\frac L3-a^Ta,&\rho_N&:=2r_N.
\end{align}$$

Fourier identity $\sum_{n\ge1}A_n^2=L/3$ 给

$$\begin{align}
r_N&=\frac{2L}{\pi^2}\sum_{n>N}\frac1{n^2}>0,& \rho_N&=\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}>0.
\end{align}$$

#### Parent Matrices and Exact Pullback

不要先共享 $q$。取

$$\begin{align}
x&=(c_1,c_2,q_1,q_2)^T\in\mathbb R^{2N+2}.
\end{align}$$

每个 region 的 one-port blocks 是

$$\begin{align}
M_0&=\begin{pmatrix}1_N&a\\
a^T&L/3\end{pmatrix},&
K_0&=\begin{pmatrix}
D&m^2a\\
m^2a^T&L^{-1}+m^2L/3
\end{pmatrix}.
\end{align}$$

在 displayed ordering中，summed duplicate parent matrices完全展开为

$$\begin{align}
M^{\mathrm{dup}}&=
\begin{pmatrix}
1_N&0&a&0\\
0&1_N&0&a\\
a^T&0&L/3&0\\
0&a^T&0&L/3
\end{pmatrix},\\
K^{\mathrm{dup}}&=
\begin{pmatrix}
D&0&m^2a&0\\
0&D&0&m^2a\\
m^2a^T&0&L^{-1}+m^2L/3&0\\
0&m^2a^T&0&L^{-1}+m^2L/3
\end{pmatrix}.
\end{align}$$

$M_0>0$ 因其 Schur complement 是 $r_N>0$；$K_0>0$ 也直接来自 regional positive KG energy integral。Continuity row与 inclusion是

$$\begin{align}
A_\Delta&=\begin{pmatrix}0_{1\times N}&0_{1\times N}&1&-1\end{pmatrix},\\
I&=\begin{pmatrix}
1_N&0&0\\
0&1_N&0\\
0&0&1\\
0&0&1
\end{pmatrix},&
y&=(c_1,c_2,q)^T.
\end{align}$$

逐块乘法给

$$\begin{align}
M_{\mathrm{conf}}=I^TM^{\mathrm{dup}}I
&=\begin{pmatrix}
1_N&0&a\\
0&1_N&a\\
a^T&a^T&2L/3
\end{pmatrix}
=\begin{pmatrix}1_{2N}&d\\
d^T&2L/3\end{pmatrix},\\
K_{\mathrm{conf}}=I^TK^{\mathrm{dup}}I
&=\begin{pmatrix}
D&0&m^2a\\
0&D&m^2a\\
m^2a^T&m^2a^T&2/L+2m^2L/3
\end{pmatrix}.
\end{align}$$

这正是原有 common-$q$ action 的 matrices。

#### Constraints, Brackets, and Reduced Coordinates

Parent momenta逐 region为

$$\begin{align}
p_{c_i}&=\dot c_i+a\dot q_i=:V_i,\\
p_{q_i}&=a^T\dot c_i+\frac L3\dot q_i =a^TV_i+r_N\dot q_i.
\end{align}$$

Primary 与 secondary constraints 因而是

$$\begin{align}
\chi&=q_1-q_2=0,\\
\psi&=A_\Delta(M^{\mathrm{dup}})^{-1}p =\dot q_1-\dot q_2 =r_N^{-1}\left[(p_{q_1}-a^Tp_{c_1})-(p_{q_2}-a^Tp_{c_2})\right]=0.
\end{align}$$

Schur inversion给

$$\begin{align}
G&=A_\Delta(M^{\mathrm{dup}})^{-1}A_\Delta^T =\frac2{r_N}=\frac4{\rho_N},\\
C_{\alpha\beta}&=
\begin{pmatrix}0&4/\rho_N\\
-4/\rho_N&0\end{pmatrix}.
\end{align}$$

所以 constraint pair在每个 finite $N$ 都 regular second class；$\rho_N\to0$ 使 constraint matrix变大，不使 finite reduction失效。

这里也可直接看见 holonomic characteristic direction。Finite coisotropic locus $\mathsf H_N=\{q_1-q_2=0\}$ 满足

$$\begin{align}
\boxed{ \mathsf H_N^\sigma =\{(0,A_\Delta^T\lambda):\lambda\in\mathbb R\}.}
\end{align}$$

其 momentum covector作用在 field variation上为

$$\begin{align}
(A_\Delta^T\lambda)(\delta x) =\lambda(\delta q_1-\delta q_2) =\lambda\bigl(\delta\Phi_{1,N}(0^-)-\delta\Phi_{2,N}(0^+)\bigr),
\end{align}$$

其中最后一式已把两个 $y=L$ regional endpoints还原为 centered cut。对每个 finite $N$ 这是普通 cotangent vector；在 continuum distributional pairing中则趋向

$$\begin{align}
\lambda(\delta_{0^-}-\delta_{0^+}).
\end{align}$$

该 distribution不属于 momentum energy space $H^{\mathrm{dup}}=L^2\oplus L^2$。所以 finite characteristic quotient direction在 $N\to\infty$ 时不是变成一个有限能 normal mode，而是离开 energy phase space；下文 $\mathsf C_\infty^\sigma=0$ 正是同一事实的 intrinsic formulation。

On the constraint surface，取 $q_1=q_2=q$。先由 $\pi=I^Tp$ 得 common-coordinate canonical momenta

$$\begin{align}
\pi_{c_1}&=p_{c_1},&\pi_{c_2}&=p_{c_2},& \pi_q^{(c)}&=p_{q_1}+p_{q_2}.
\end{align}$$

再作 canonical shear

$$\begin{align}
C_i&=c_i+aq,&V_i&=p_{c_i},\\
\boxed{\pi_q =(p_{q_1}+p_{q_2})-a^T(p_{c_1}+p_{c_2}) =\rho_N\dot q.}
\end{align}$$

Indeed，canonical one-form直接变成

$$\begin{align}
p_{c_1}^T\mathrm dc_1+p_{c_2}^T\mathrm dc_2 +(p_{q_1}+p_{q_2})\mathrm dq =V_1^T\mathrm dC_1+V_2^T\mathrm dC_2+\pi_q\mathrm dq.
\end{align}$$

故 reduced symplectic form是

$$\begin{align}
\boxed{ \Omega_N=\sum_{i=1}^2\sum_{n=1}^N \delta V_{i,n}\wedge\delta C_{i,n} +\delta\pi_q\wedge\delta q,}
\end{align}$$

恰有 $(2N+1)$ canonical pairs，并给

$$\begin{align}
[C_{i,n},V_{j,m}]&=\mathrm i\delta_{ij}\delta_{nm},& [q,\pi_q]&=\mathrm i.
\end{align}$$

相反，原始 homogeneous coefficients obey

$$\begin{align}
[c_a,\dot c_b]&=\mathrm i\delta_{ab} +\frac{\mathrm i\,d_ad_b}{\rho_N},
\end{align}$$

所以 fixed-$q$ regional CCR不能在解除 $q$ 后原样保留。

#### Recovery of the $\rho_N$ Equation

Conforming bulk rows给

$$\begin{align}
\ddot c+d\ddot q+\operatorname{diag}(D,D)c+m^2dq&=0.
\end{align}$$

把它直接代入 common-port row，得到

$$\begin{align}
\boxed{ \rho_N(\ddot q+m^2q)+\mathcal F_N=0,}
\end{align}$$

其中

$$\begin{align}
\mathcal F_N&=\frac{2q}{L}-g^Tc,& g&=(A_1k_1^2,\ldots,A_Nk_N^2,A_1k_1^2,\ldots,A_Nk_N^2)^T.
\end{align}$$

因此 $\mathcal F_N=0$ 不是 finite primary/secondary constraint；它是 $\rho_N\to0$ 后由完整 port dynamics弱恢复的 transmission equation。Finite regulator必须保留 $(q,\pi_q)$；continuum中 $q$ 成为 connected field trace，而不是额外 point oscillator。

### B1.2d — Finite Reduction Limit Versus a Continuum Parent Reduction

Route B 至此必须拆成两条不同 arrows：

$$\begin{align}
\text{finite regular}\quad &\mathfrak A_N^{\mathrm{dup}} \xrightarrow{\ R_N\ }
\mathfrak A_N^{\mathrm{phys}} \longrightarrow
(\mathfrak A_{\mathrm{conn}},\omega_{\mathrm{conn}}) \quad\text{on cylindrical/smeared observables},\\
\text{continuum kinematic}\quad &\mathfrak A_\infty^{\mathrm{dup}} :=\mathfrak W(\mathcal S_\infty^{\mathrm{dup}},\sigma_\infty) \xrightarrow{\ \widehat\Gamma\text{-fixed points}\ } \mathfrak A_{\mathrm{conn}},\\
\text{absent finite-type structure}\quad &\mathcal S_\infty^{\mathrm{dup}}
\neq\mathsf C_\infty\oplus^\sigma\mathcal N_\infty, \qquad \mathfrak A_\infty^{\mathrm{dup}}
\not\cong\mathfrak W(\mathsf C_\infty)\otimes\mathfrak W(\mathcal N_\infty).
\end{align}$$

第一行先在每个 finite stage 删除 second-class normal factor，再取 physical forms、observables 与 states 的极限。第二行的 abstract parent algebra已经由 displayed weak symplectic space定义；下文证明其 fixed-point algebra正是 connected Weyl algebra。这个正结果不把 $R_N$ 的 normal-relative-commutant map逐点取极限，也不恢复第三行已经消失的 continuum normal tensor factor或 regular split second-class realization。

#### The Centered $1$D Normal Pair Escapes to the Ultraviolet

记单 region residual lift

$$\begin{align}
e_N:=h-\sum_{n=1}^NA_nu_n, &\qquad r_N=\|e_N\|_{L^2(0,L)}^2, &\rho_N=2r_N.
\end{align}$$

由 $A_n^2=2L/(\pi^2n^2)$ 得

$$\begin{align}
r_N=\frac{2L}{\pi^2}\sum_{n>N}\frac1{n^2} \sim\frac{2L}{\pi^2N}, &\qquad \rho_N\sim\frac{4L}{\pi^2N}, &G_N=\frac4{\rho_N}\sim\frac{\pi^2N}{L}.
\end{align}$$

这条 UV statement还可由 stiffness作硬核验，而不只由 $L^2$ mass看出。记 regional KG form

$$\begin{align}
\mathfrak a(f,g)=\int_0^L(f'g'+m^2fg)\,\mathrm dy.
\end{align}$$

因为 $\langle h,u_m\rangle=A_m$、$\mathfrak a(h,u_m)=m^2A_m$ 以及

$$\begin{align}
\mathfrak a(u_n,u_m)=(k_m^2+m^2)\delta_{nm},
\end{align}$$

对每个 $m\le N$ 有

$$\begin{align}
\boxed{ \mathfrak a(e_N,u_m) =m^2A_m-A_m(k_m^2+m^2) =-A_mk_m^2\neq0.}
\end{align}$$

再把 $e_N=h-\sum_{n\le N}A_nu_n$ 直接代入 form，得到

$$\begin{align}
\mathfrak a(e_N,e_N) &=\mathfrak a(h,h)-2m^2\sum_{n\le N}A_n^2 +\sum_{n\le N}A_n^2(k_n^2+m^2)\\
&=\frac1L+\sum_{n\le N}A_n^2k_n^2+m^2r_N\\
&=\boxed{\frac{2N+1}{L}+m^2r_N},
\end{align}$$

因为 $A_n^2k_n^2=2/L$。于是 residual lift的 Rayleigh quotient满足

$$\begin{align}
\frac{\mathfrak a(e_N,e_N)}{\|e_N\|_{L^2}^2} =\frac{2N+1}{Lr_N}+m^2 \sim\frac{\pi^2}{L^2}N^2.
\end{align}$$

典型 squared frequency因而是 $O(N^2)$，frequency是 $O(N)$；这与 normalized lift weakly逃向高 Fourier tail一致。

**Proposition/caveat (kinematic normal is not a normal mode).** 一般只有

$$\begin{align}
\boxed{\text{normal symplectic factorization is kinematic, not an invariant-mode decomposition of }H^{\mathrm{dup}}.}
\end{align}$$

Hamiltonian invariance还要求 quadratic Hamiltonian相对于 $\mathsf C_N\oplus^\sigma\mathcal N_N$ block diagonal，特别是 stiffness cross terms必须消失。Displayed $\mathfrak a(e_N,u_m)\neq0$ 已在 centered model中否定这一点；故 unconstrained parent flow一般不保持 $\mathcal N_N$ 或 $\mathsf C_N$。可以给 reduced physical state任意 normal-state extension，但不能因此把 unconstrained parent ground state写成 physical ground $\otimes$ normal ground；只有额外 $K$-orthogonality/flow invariance成立时才有这种 factorization。

在每个 region先作 $C_i=c_i+aq_i$、$\pi_i=p_{q_i}-a^Tp_{c_i}=r_N\dot q_i$。令

$$\begin{align}
q=\frac{q_1+q_2}{2},\qquad \xi=q_1-q_2,\qquad \pi_q=\pi_1+\pi_2,\qquad p_\xi=\frac{\pi_1-\pi_2}{2}.
\end{align}$$

则 $\pi_1\mathrm dq_1+\pi_2\mathrm dq_2=\pi_q\mathrm dq+p_\xi\mathrm d\xi$，而 relative kinetic mass 是

$$\begin{align}
\mu_N=\frac{r_N}{2}=\frac{\rho_N}{4}, \qquad \chi=\xi, \qquad \psi=\frac{p_\xi}{\mu_N}, \qquad \{\chi,\psi\}=\mu_N^{-1}=G_N.
\end{align}$$

所以 unscaled normal canonical pair被压向 zero-mass direction。Rescaling

$$\begin{align}
Q_N=\sqrt{\mu_N}\,\xi, &\qquad P_N=\frac{p_\xi}{\sqrt{\mu_N}}, &\mathrm dP_N\wedge\mathrm dQ_N&=\mathrm dp_\xi\wedge\mathrm d\xi
\end{align}$$

可在每个 $N$ 保持一对标准 symplectic coordinates，却没有给出一个 canonical continuum normal oscillator：这个 identification 本身依赖 $N$，而 configuration lift的 normalized spatial vector

$$\begin{align}
\widehat e_N:=\frac{(e_N,-e_N)}{\sqrt{\rho_N}}
\end{align}$$

满足 $\|\widehat e_N\|_{H^{\mathrm{dup}}}=1$ 但 $\widehat e_N\rightharpoonup0$。Indeed，若 $\Pi_{>N}^{\mathrm{dup}}$ 是两侧 homogeneous Fourier tail projection，则对任意 fixed $g\in H^{\mathrm{dup}}$，

$$\begin{align}
|\langle\widehat e_N,g\rangle| \le \|\Pi_{>N}^{\mathrm{dup}}g\|_{H^{\mathrm{dup}}} \longrightarrow0.
\end{align}$$

Normal direction因而逃向 ultraviolet，而不是在 energy Hilbert space中收敛到一个 nonzero boundary mode。$\mu_N\to0$、$G_N\to\infty$ 与前述 sewing half-density divergence是同一 singular geometry 的三个坐标表现。

#### A Closed Continuum Constraint Relation Exists, but It Is Not Split Second Class

这个 obstruction可在 $1$D energy spaces中精确定位。令

$$\begin{align}
V_-&=\{u\in H^1(-L,0):u(-L)=0\},& V_+&=\{u\in H^1(0,L):u(L)=0\},\\
V^{\mathrm{dup}}&=V_-\oplus V_+,& H^{\mathrm{dup}}&=L^2(-L,0)\oplus L^2(0,L),\\
\mathcal S_\infty^{\mathrm{dup}}&=V^{\mathrm{dup}}\oplus H^{\mathrm{dup}},& \sigma_\infty((u,v),(u',v'))&=(v,u')_H-(v',u)_H.
\end{align}$$

这是 energy topology上的 weak symplectic space。Trace theorem使

$$\begin{align}
A_\infty u:=u_-(0)-u_+(0)
\end{align}$$

成为 $V^{\mathrm{dup}}\to\mathbb R$ 的 bounded surjection，所以

$$\begin{align}
\mathsf C_\infty:=\ker A_\infty\oplus H^{\mathrm{dup}}
\end{align}$$

是 closed linear relation. Restriction/assembly map把它 topologically symplectomorphically认同为

$$\begin{align}
H_0^1(-L,L)\oplus L^2(-L,L),
\end{align}$$

并且 duplicate quadratic form

$$\begin{align}
\mathfrak a^{\mathrm{dup}}[u] =\sum_{\pm}\int_{I_\pm}\bigl(|u_\pm'|^2+m^2|u_\pm|^2\bigr)
\end{align}$$

限制到 $\ker A_\infty$ 后逐字等于 connected KG form。因此 continuum connected energy phase space确实是一个 closed continuity relation的 restriction；这一点不是 formal path-integral guess。

注意这个 restricted form定义的是新的 connected self-adjoint operator。由 $\mathfrak a^{\mathrm{dup}}$ 在整个 $V^{\mathrm{dup}}$ 上生成的 unconstrained parent operator带各侧 natural interface condition，其 flow一般不保持 $\ker A_\infty$；所以 connected dynamics不是把 unconstrained regional flow简单限制到一个 invariant subspace。Finite reaction multiplier在 continuum 中正变成下面的 boundary distribution。

但是它 **不是** finite theorem所需的 regular split second-class reduction。事实上

$$\begin{align}
\boxed{\mathsf C_\infty^{\sigma_\infty}=\{0\} \quad\text{while}\quad \mathsf C_\infty\subsetneq\mathcal S_\infty^{\mathrm{dup}}.}
\end{align}$$

证明很直接：若 $(a,b)$ symplectically orthogonal to every $(u,v)\in\mathsf C_\infty$，任取 $v\in H^{\mathrm{dup}}$ 得 $a=0$；而 $\ker A_\infty$ 在 $H^{\mathrm{dup}}$ 中 dense，任取 $u\in\ker A_\infty$ 又得 $b=0$。所以不存在

$$\begin{align}
\mathcal S_\infty^{\mathrm{dup}} =\mathsf C_\infty\oplus^\sigma\mathcal N_\infty
\end{align}$$

这种 finite-type normal factorization。

同一事实也可从 Hamiltonian vector看出。若 $X_\chi=(a,b)$ 应满足

$$\begin{align}
\sigma_\infty(X_\chi,(\delta u,\delta v)) =\delta u_-(0)-\delta u_+(0),
\end{align}$$

则必须 $a=0$ 且 $b=\delta_{0^-}-\delta_{0^+}$；这个 boundary distribution不属于 $H^{\mathrm{dup}}$。Velocity/momentum只有 $L^2$ regularity，也没有 point trace可定义 continuum secondary constraint。于是 continuum kinetic inverse上的 $A_\infty M^{-1}A_\infty^T$ 不是一个 bounded finite matrix；$G_N\to\infty$ 正是其 regulator shadow。

若把 phase space扩为 rigged cotangent space $V^{\mathrm{dup}}\oplus(V^{\mathrm{dup}})^*$，boundary delta可以出现；但 kinetic Hamiltonian的 finite-energy domain仍只有 $H^{\mathrm{dup}}$ momentum，normal flow、positive covariance与 regular CCR representation不会自动延拓。Boundary triples或额外 $H^{1/2}\oplus H^{-1/2}$ port phase space可作为另一个 enlarged parent proposal，却必须同时指定 extension dynamics、symplectic topology与 state；本文没有由 finite theorem唯一推出这些 choices。

**Proposition (what the controlled limit actually proves).** 在前述 centered $1$D assumptions下，finite conforming spaces $W_N$ 及 restricted forms $\mathfrak a_N$ Mosco converge to $\mathfrak a^{\mathrm{dup}}|_{\ker A_\infty}$；对应 connected operators strong-resolvent converge，继而得到下节的 smeared/state convergence。这个 statement是

$$\begin{align}
\lim_N\bigl(\text{finite reduction }R_N\bigr) \quad\text{on the physical form side},
\end{align}$$

不是一个由 $R_N$ normal factors取极限得到的 regular split-second-class map $R_\infty$。因此就这条 physical-form path而言应称为 **singular reduction limit**：closed constraint-form restriction已构造并给出 connected KG，finite normal sectors却没有在 energy symplectic category中形成 continuum tensor factor。下一节的 outer fixed-point reduction是另一种合法的 continuum kinematic construction，不恢复这个缺失的 normal structure。

结合 finite fixed-history theorem，精确结论是：裸 fixed-$q$ Weyl fibre family仍不够；finite free theory中，带 canonical second-class half-density/measure的 Gaussian boundary-history amplitude/evolution correspondence才是 literal “quantize regional dynamics first, then glue” 的有效对象。Continuum canonical target由下节 parent Weyl fixed points得到，dynamics由 B1.4 的 large-coupling form limit得到；二者随后由 common-parent weak-* state、regular bulk core及 $(N,\kappa)$ approximation square真正连接。但 infinite-dimensional Lorentzian boundary-history measure、composition domain与 covariance仍未构造。因此本文不引入没有 concrete composition theorem的 continuous field、Hilbert/$C^*$-correspondence或 category。

### B1.3 — Continuum Kinematic Algebraic Reduction and Regular-State Topology

#### Quotient-Character Fixed-Point Theorem

这里使用刚才已经构造的 weak symplectic parent

$$\begin{align}
\mathcal S_\infty^{\mathrm{dup}}=V^{\mathrm{dup}}\oplus H^{\mathrm{dup}}, &\qquad \mathsf C_\infty=\ker A_\infty\oplus H^{\mathrm{dup}}.
\end{align}$$

不要给 quotient附加 energy topology。只把 additive quotient

$$\begin{align}
\Gamma:=\mathcal S_\infty^{\mathrm{dup}}/\mathsf C_\infty
\end{align}$$

视为 discrete Abelian group；其 Pontryagin dual $\widehat\Gamma=\operatorname{Hom}(\Gamma,\mathbb T)$ 取 compact pointwise-convergence topology与 normalized Haar measure $\mathrm d\vartheta$。

**Theorem (continuum outer fixed-point reduction).** 在 abstract parent Weyl algebra

$$\begin{align}
\mathfrak A_\infty^{\mathrm{dup}} :=\mathfrak W(\mathcal S_\infty^{\mathrm{dup}},\sigma_\infty)
\end{align}$$

上，公式

$$\begin{align}
\boxed{\beta_\vartheta(W(z)):=\vartheta([z])W(z)},\qquad \vartheta\in\widehat\Gamma,
\end{align}$$

唯一延拓为 $*$-automorphism，并给出 $\widehat\Gamma$ 的 point-norm continuous compact action。其 Haar conditional expectation

$$\begin{align}
E(a):=\int_{\widehat\Gamma}\beta_\vartheta(a)\,\mathrm d\vartheta
\end{align}$$

满足

$$\begin{align}
E(W(z))&=
\begin{cases}
W(z),&z\in\mathsf C_\infty,\\
0,&z\notin\mathsf C_\infty,
\end{cases}
\end{align}$$

并且

$$\begin{align}
\boxed{ (\mathfrak A_\infty^{\mathrm{dup}})^{\widehat\Gamma} =\mathfrak W(\mathsf C_\infty, \sigma_\infty|_{\mathsf C_\infty}).}
\end{align}$$

除 identity 外每个 $\beta_\vartheta$ 都是 outer；特别地，这个 action不是 continuum normal Weyl unitaries的 inner action。

**Proof.** Character multiplicativity与 Weyl relations给

$$\begin{align}
\beta_\vartheta(W(z))\beta_\vartheta(W(z')) =e^{-\mathrm i\sigma_\infty(z,z')/2} \beta_\vartheta(W(z+z')),
\end{align}$$

而 $\vartheta([-z])=\overline{\vartheta([z])}$ 给 $*$ relation；universal property于是给 automorphism。对 finite Weyl span $p=\sum_{j=1}^ka_jW(z_j)$，$\vartheta\mapsto\beta_\vartheta(p)$ norm-continuous，因为它只是有限个 continuous scalar characters。任意 $a$ 可在 norm中由这种 $p$ 一致逼近，且所有 $\beta_\vartheta$ isometric，所以 $\vartheta\mapsto\beta_\vartheta(a)$ 仍 norm-continuous。故 Haar integral是合法的 Bochner integral与 contractive conditional expectation。

Character orthogonality给 displayed generator formula。Finite Weyl spans dense，所以 $\mathfrak W(\mathsf C_\infty)$ 被 $E$ 逐点固定；反过来，若 $a$ fixed，取 finite Weyl spans $p_n\to a$，则 $E(p_n)\to a$，而每个 $E(p_n)$ 都在 $\mathsf C_\infty$-labelled Weyl span中。这证明 fixed-point equality。

最后，上一节已证明 $\mathsf C_\infty^{\sigma_\infty}=0$。与 finite proof相同的 twisted-group Fourier coefficient argument给

$$\begin{align}
\mathfrak W(\mathsf C_\infty)' \cap\mathfrak W(\mathcal S_\infty^{\mathrm{dup}}) =\mathbb C1.
\end{align}$$

若非平凡 $\beta_\vartheta=\operatorname{Ad}U$，因为它逐点固定 $\mathfrak W(\mathsf C_\infty)$，$U$ 必在这个 relative commutant中，故 $U$ scalar、$\beta_\vartheta=\operatorname{id}$，矛盾。$\square$

Restriction/assembly symplectomorphism

$$\begin{align}
\mathcal U_{\mathrm{ass}}:\mathsf C_\infty&\xrightarrow{\ \simeq\ }\mathcal S_M, &((u_-,u_+),(v_-,v_+))&\longmapsto(u_-\cup u_+,v_-\cup v_+)
\end{align}$$

把 continuous trace matching变成 $H_0^1(-L,L)\oplus L^2(-L,L)$ 的 connected Cauchy data，并保持 $\sigma$。Weyl functor因而给

$$\begin{align}
\boxed{ (\mathfrak A_\infty^{\mathrm{dup}})^{\widehat\Gamma} \xrightarrow{\ \mathfrak W(\mathcal U_{\mathrm{ass}})\ }
\mathfrak W(\mathcal S_M,\sigma_M).}
\end{align}$$

这就是本文的 **continuum algebraic kinematic reduction**。它只使用 algebraic/discrete quotient来构造 compact dual；没有把 discontinuous sharp trace提升成 quantum operator，也没有声称 fixed-point conditional expectation intertwine unconstrained parent dynamics。

#### Invariant Parent States and the Sharp-Sewing Limit State

先把 $E$ 的 state-theoretic含义完全固定。以下结论不要求 quasifree、ground-state 或 regularity。

**Proposition (all quotient-character invariant states are transverse-nonregular).** 设 $\omega$ 是 $\mathfrak A_\infty^{\mathrm{dup}}$ 上满足

$$\begin{align}
\omega\circ\beta_\vartheta=\omega,\qquad \vartheta\in\widehat\Gamma
\end{align}$$

的 state。则

$$\begin{align}
\boxed{\omega(W(z))=0\quad\text{for every }z\notin\mathsf C_\infty.}
\end{align}$$

因 $\mathsf C_\infty$ 是 real linear subspace，对任意 transverse $z$ 有

$$\begin{align}
\omega(W(tz))=
\begin{cases}
1,&t=0,\\
0,&t\neq0,
\end{cases}
\end{align}$$

所以 $\omega$ 沿每个 transverse one-parameter Weyl group都不 regular。特别地，不存在对整个 $\widehat\Gamma$ invariant且在 sewing-transverse directions regular 的 parent state。

**Proof.** 若 $[z]\neq0$，discrete Abelian group的 characters分离 points，故可取 $\vartheta$ 使 $\vartheta([z])\neq1$。Invariance给

$$\begin{align}
\omega(W(z))=\omega(\beta_\vartheta(W(z)))=\vartheta([z])\omega(W(z)),
\end{align}$$

于是 $\omega(W(z))=0$。这里 quotient来自 real vector space quotient；$t\neq0$ 时 $[tz]\neq0$，没有 torsion 或 nontrivial stabilizer例外。第二式与 nonregularity直接得到。$\square$

令 $\omega_{\mathrm{conn}}$ 是 $\mathfrak W(\mathcal S_M)$ 上的 connected massive vacuum，并在下式中默认用 $\mathfrak W(\mathcal U_{\mathrm{ass}})$ 识别 fixed algebra与 connected algebra。定义

$$\begin{align}
\boxed{\widetilde\omega_\infty:=\omega_{\mathrm{conn}}\circ E.}
\end{align}$$

**Corollary (sharp-sewing parent state).** $\widetilde\omega_\infty$ 是 $\widehat\Gamma$-invariant parent state，且

$$\begin{align}
\widetilde\omega_\infty|_{\mathfrak W(\mathsf C_\infty)}&=\omega_{\mathrm{conn}},\\
\widetilde\omega_\infty(W(z))&=
\begin{cases}
\omega_{\mathrm{conn}}(W(\mathcal U_{\mathrm{ass}}z)),&z\in\mathsf C_\infty,\\
0,&z\notin\mathsf C_\infty.
\end{cases}
\end{align}$$

它是 $\omega_{\mathrm{conn}}$ 的唯一 $\widehat\Gamma$-invariant parent extension。Indeed，若 $\widetilde\omega$ invariant，则 Haar averaging给 $\widetilde\omega=\widetilde\omega\circ E$；所以其 fixed-algebra restriction唯一决定全部 parent values。这个 state的 transverse discontinuity与三项既有事实是同一 singularity 的不同语言：$\mathsf C_\infty^{\sigma_\infty}=0$ 排除 energy-category normal symplectic factor，trace Hamiltonian vector $\delta_{0^-}-\delta_{0^+}$ 不在 $L^2$ momentum space，而 finite normalized normal lift weakly逃向 UV。Sharp sewing constraint因此可以作为 invariant parent state存在，却不能由 transverse regular normalizable parent vector实现。

#### Haar Reduction by Stages and Continuum Quantum Associativity

取任意 nested real linear sewing subspaces

$$\begin{align}
\mathsf C_2\subset\mathsf C_1\subset\mathcal S
\end{align}$$

并仍把所有 additive quotients取 discrete topology。写

$$\begin{align}
\Gamma_1&:=\mathcal S/\mathsf C_1,& \Gamma_{21}&:=\mathsf C_1/\mathsf C_2,& \Gamma_2&:=\mathcal S/\mathsf C_2.
\end{align}$$

则有 exact sequence

$$\begin{align}
0\longrightarrow\Gamma_{21}\longrightarrow\Gamma_2\longrightarrow\Gamma_1\longrightarrow0.
\end{align}$$

因为所有 groups discrete，任意 $\Gamma_{21}\to\mathbb T$ character都可延拓到 $\Gamma_2$：algebraically这是 $\mathbb T$ 作为 divisible、因而 injective Abelian group的 extension property，且无需另加 continuity条件。Pontryagin dual sequence于是 exact：

$$\begin{align}
1\longrightarrow\widehat\Gamma_1\longrightarrow\widehat\Gamma_2 \xrightarrow{\operatorname{res}}\widehat\Gamma_{21}\longrightarrow1.
\end{align}$$

Restriction map是 compact Hausdorff groups间的 continuous surjection，故 quotient topology正是 $\widehat\Gamma_{21}$ 的 compact topology。

**Theorem (continuum fixed-point reduction by stages).** 第一阶段 $\widehat\Gamma_1$ 的 quotient-character action先给

$$\begin{align}
\mathfrak W(\mathcal S)^{\widehat\Gamma_1}=\mathfrak W(\mathsf C_1).
\end{align}$$

第二阶段 $\widehat\Gamma_{21}$ 在该 fixed algebra上按

$$\begin{align}
\boxed{\beta^{21}_{\vartheta_{21}}(W(c)):=\vartheta_{21}([c]_{\mathsf C_2})W(c),\qquad c\in\mathsf C_1}
\end{align}$$

作用，其中 $\vartheta_{21}\in\widehat\Gamma_{21}$。等价地，可任选 $\vartheta_{21}$ 到 $\widehat\Gamma_2$ 的 extension再限制其 action 到 $\mathfrak W(\mathsf C_1)$；两个 extensions之差属于 $\widehat\Gamma_1$，在第一阶段 fixed algebra上作用平凡，所以定义无关于 choice。若 $E_1,E_{21},E_2$ 是三套 normalized Haar expectations，则

$$\begin{align}
\boxed{ \mathfrak W(\mathcal S)^{\widehat\Gamma_2} =\left(\mathfrak W(\mathcal S)^{\widehat\Gamma_1}\right)^{\widehat\Gamma_{21}} =\mathfrak W(\mathsf C_2),\qquad E_2=E_{21}\circ E_1.}
\end{align}$$

**Proof.** 对一个 Weyl generator，第一阶段 averaging只在 $z\in\mathsf C_1$ 时保留 $W(z)$；第二阶段再只在 $z\in\mathsf C_2$ 时保留。故 $E_{21}E_1$ 与 $E_2$ 在全部 Weyl generators上相等。Finite Weyl span density与 contractivity把等式延拓到整个 algebra；同一 generator calculation给 fixed-point identity。也可由 compact extension上的 Haar disintegration/Fubini直接得到 expectation composition。$\square$

应用到 three-region energy parent，令 $\mathsf C_1$ 只施加第一条 interface continuity，$\mathsf C_2$ 同时施加两条 continuity。第二条可先后交换：两种 nested chains的最终 expectation都等于 $E_2$，最终 fixed algebra都是组装后的 global connected CCR。于是 continuum quantum kinematic层满足 refinement/reduction by stages；它与 Part I 的 classical relation associativity、B1.2 的 finite second-class/kernel associativity，以及 B1.4 的 bulk-state partition independence并列，形成三层而非互相替代的 associativity statement。Flux transmission仍由 connected restricted form的 variational equation产生，不被 quotient-character action误当成额外 equal-time primary constraint。

Finite 与 continuum可以用同一个 fixed-point language比较，但不能抹掉差异：

$$
\begin{array}{ccccc}
\text{finite coisotropic:}
&\mathfrak W(\mathcal S_N^{\mathrm{dup}})
&\xrightarrow{\operatorname{Fix}\widehat{(\mathcal S_N^{\mathrm{dup}}/\mathsf H_N)}}
&\mathfrak W(\mathsf H_N)
&\twoheadrightarrow\mathfrak W(\mathsf H_N/\mathsf H_N^\sigma),\\
\text{finite second class:}
&\mathfrak W(\mathcal S_N^{\mathrm{dup}})
&\xrightarrow{\operatorname{Fix}\operatorname{Ad}W(\mathcal N_N)}
&\mathfrak W(\mathsf C_N)
&\cong\mathfrak W(T^*\ker A_{\mathrm{sew}}^{(N)}),\\
\text{continuum energy:}
&\mathfrak W(\mathcal S_\infty^{\mathrm{dup}})
&\xrightarrow{\operatorname{Fix}\widehat\Gamma}
&\mathfrak W(\mathsf C_\infty)
&\cong\mathfrak W(\mathcal S_M).
\end{array}
$$

Finite $\mathsf C_N$ 也可形式上用 quotient characters of $\mathcal S_N^{\mathrm{dup}}/\mathsf C_N$ 取 fixed points；因为 $\mathsf C_N^\sigma=\mathcal N_N$ 是 nondegenerate normal space，这些 characters由 inner normal Weyl action densely生成，并伴随 tensor factorization。Continuum 中 characteristic direction已变成 $\delta_{0^-}-\delta_{0^+}\notin H^{\mathrm{dup}}$，$\mathsf C_\infty^\sigma=0$；所以 nontrivial quotient-character action必为 outer，也没有 central characteristic quotient或 normal tensor factor。Fixed-point formula统一了 algebraic selection，UV escape解释了其 implementation为何突变。

#### Why Energy Density Is Not Weyl $C^*$-Norm Convergence

先记录不能越过的 algebraic obstruction。

**Proposition (Weyl norm discontinuity).** 若 $(\mathcal S,\sigma)$ nondegenerate，采用本文 Weyl convention，则对 $f\neq g$，

$$\begin{align}
\boxed{\|W(f)-W(g)\|=2.}
\end{align}$$

**Proof.** 乘左侧的 unitary并保留 Weyl scalar phase，得到

$$\begin{align}
\|W(f)-W(g)\|=\|1-e^{\mathrm i\theta}W(h)\|,\qquad h=f-g\neq0
\end{align}$$

for some $\theta\in\mathbb R$。由 nondegeneracy可取 $k$ 使 $\sigma(k,h)\neq0$；把 $k$ 任意 rescale 后，inner automorphisms $\operatorname{Ad}W(k)$ 把 $W(h)$ 乘以任意 unit-circle phase。Spectrum在 inner automorphism下不变，故 $\operatorname{spec}W(h)=S^1$；scalar rotation不改变这个集合，所以 $\operatorname{spec}(e^{\mathrm i\theta}W(h))=S^1$。因此 $\|1-e^{\mathrm i\theta}W(h)\|=\max_{|z|=1}|1-z|=2$。$\square$

所以即使 $f_N\to f$ in energy或 one-particle norm，也绝不能在 universal Weyl $C^*$-norm 中写 $W(f_N)\to W(f)$。Finite-dimensional phase spaces的 energy density只支持 algebraic embeddings、state characteristic functions或 regular GNS operator topologies；它不自动产生 full continuum Weyl algebra的 norm-dense inductive limit。

#### The Finite Physical Algebras and Their Algebraic Union

在 centered $1$D 与 product-cylinder schedules中，令

$$\begin{align}
\mathcal S_N&:=W_N\oplus W_N,& \sigma_N((u,v),(u',v'))&=(v,u')_H-(v',u)_H.
\end{align}$$

这里 first component是 configuration、second component是 $H$-identified momentum。由于 $W_N\subset W_{N+1}\subset V\subset H$ 且所有 stages使用同一个 $H$ pairing，literal inclusion

$$\begin{align}
j_{N,N+1}:\mathcal S_N&\hookrightarrow\mathcal S_{N+1}
\end{align}$$

在这个 **declared common-$H$ realization** 中是 symplectic。B1.1 的 $\alpha_{{\rm red},N}$ 因而把 physical algebras认同为 exact inductive system

$$\begin{align}
\mathfrak A_N^{\mathrm{phys}} &\simeq\mathfrak W(\mathcal S_N,\sigma_N),& \iota_{N,N+1}(W_N(z))&=W_{N+1}(j_{N,N+1}z).
\end{align}$$

令

$$\begin{align}
\mathcal S_{\mathrm{alg}}&:=\bigcup_N\mathcal S_N,& \mathfrak A_\infty&:=\overline{\bigcup_N\mathfrak A_N^{\mathrm{phys}}}^{\,\|\cdot\|} \simeq\mathfrak W(\mathcal S_{\mathrm{alg}},\sigma).
\end{align}$$

这里的 $\mathfrak W(\mathcal S_{\mathrm{alg}},\sigma)$ 是把 $\mathcal S_{\mathrm{alg}}$ 只视为 **algebraic** symplectic space所得 universal Weyl $C^*$-algebra；definition中没有先完成 energy norm。每个 finite/nondegenerate Weyl algebra simple，故 induced connecting morphisms injective；Weyl universal property先识别 algebraic union，$C^*$-completion再给 displayed isomorphism。这才是本文使用 “inductive limit” 的精确含义。

同一 generators给 injective $*$-homomorphism

$$\begin{align}
\jmath:\mathfrak W(\mathcal S_{\mathrm{alg}},\sigma) \hookrightarrow\mathfrak W(\mathcal S_M,\sigma_M),
\end{align}$$

其 image作为 $C^*$-subalgebra自动 norm closed。若 $\mathcal S_{\mathrm{alg}}\subsetneq\mathcal S_M$ **作为 algebraic vector spaces**，则 image 还是 proper：取 real linear functional $\ell$ 使 $\ell|_{\mathcal S_{\mathrm{alg}}}=0$ 而 $\ell(f)\neq0$ for some $f\notin\mathcal S_{\mathrm{alg}}$；automorphism

$$\begin{align}
\beta_t(W(s))=e^{\mathrm it\ell(s)}W(s)
\end{align}$$

逐点固定 $\jmath(\mathfrak A_\infty)$ 却不固定 $W(f)$，故 $W(f)$ 不在该 image。于是 energy density 与 full Weyl $C^*$-norm density不只是“尚未证明”，而是对 proper algebraic union确实为 false。Full continuum algebra包含所有 $s\in\mathcal S_M$ 的 generators；$\mathfrak A_\infty$ 只包含 finite-stage cylindrical generators的 abstract $C^*$-closure。

对一般 non-nested regulator，或 momenta没有共同 $H$ identification时，configuration nesting本身仍不产生 canonical symplectic injection；必须额外给 maps $J_{k\ell}$，此前的 warning保持有效。

#### Ground-State Convergence Theorem on Fixed Smeared Observables

令 $A\ge m^2>0$ 是 connected spatial operator，$\mathbf A_N$ 是 $\mathfrak a|_{W_N}$ 的 Galerkin operator，并假设 Part V 已证明的 nested form density、embedded strong resolvent与 common-form identities。对 $z=(u,v)\in\mathcal S_N$ 定义 finite ground-state covariance

$$\begin{align}
\mu_N(z,z) &:=\frac12\left[(u,\mathbf A_N^{1/2}u)_H+(v,\mathbf A_N^{-1/2}v)_H\right],\\
\omega_N(W_N(z))&:=\exp\left[-\frac12\mu_N(z,z)\right].
\end{align}$$

Continuum connected covariance $\mu$ 用同一公式把 $\mathbf A_N$ 换成 $A$。

**Theorem (regular quasifree continuum limit).** 对 centered $1$D schedule以及上文 $K_\perp(N)=N$ product-cylinder schedule：

1. 对任意 fixed stage $k$ 与 finite tuple $z_1,\ldots,z_s\in\mathcal S_k$，沿 $N\ge k$ 有

$$\begin{align}
\mu_N(z_a,z_b)&\longrightarrow\mu(z_a,z_b),\\
\omega_N\!\left(W_N(z_1)\cdots W_N(z_s)\right) &\longrightarrow
\omega\!\left(W(z_1)\cdots W(z_s)\right).
\end{align}$$

2. 这些 limits定义 $\mathfrak A_\infty$ 上的 state $\omega_\infty$，且

$$\begin{align}
\boxed{\omega_\infty=\omega_{\mathrm{conn}}|_{\mathfrak A_\infty}.}
\end{align}$$

3. 不先扩张 states时，第一项精确给 directed cylindrical net $\{\mathfrak A_N^{\mathrm{phys}}\}$ 上的 pointwise convergence。若对每个 $N$ 任取一个 state extension

$$\begin{align}
\widetilde\omega_N\in S(\mathfrak A_\infty), \qquad \widetilde\omega_N|_{\mathfrak A_N^{\mathrm{phys}}}=\omega_N,
\end{align}$$

则这些 states在同一个 state space $S(\mathfrak A_\infty)$ 中满足

$$\begin{align}
\boxed{\widetilde\omega_N\xrightarrow{\mathrm{weak-*}}\omega_\infty.}
\end{align}$$

Limit与 extension choices无关。这里 state extension 的存在来自 unital $C^*$-subalgebra的 positive Hahn--Banach extension；没有把 finite GNS Hilbert spaces作 canonical embeddings。

4. 对任意 fixed finite set of **bulk-spatially-smeared** fields，$1$D 与 product-cylinder finite physical ground states 的 characteristic functions、two-point functions以及由 Wick rule定义的 $n$-point functions收敛到 connected vacuum；product case沿明确 schedule $K_\perp(N)=N$。这里不包含 $\delta(x)g(\Omega)$、unsmeared cut field或 sharp conormal flux。

**Proof.** 固定 $z=(u,v)\in\mathcal S_k$。对 $N\ge k$，$u,v$ 是同一 common $H$ vectors。由于 $\lambda^{-1/2}\in C_0([m^2,\infty))$，embedded strong resolvent与 bounded functional calculus给

$$\begin{align}
(v,\mathbf A_N^{-1/2}v)_H&\longrightarrow(v,A^{-1/2}v)_H.
\end{align}$$

Positive square root虽 unbounded，但 fixed vector $u\in W_k\subset V$ 满足 uniform first-moment identity

$$\begin{align}
(u,\mathbf A_Nu)_H=\mathfrak a[u]=(u,Au)_H
\end{align}$$

（最后一式在 $u\in D(A)$ 时逐字成立；一般 $u\in V$ 按 form notation理解）。对 spectral measures $\mathrm d\nu_N^u$，embedded strong resolvent先给每个 bounded continuous truncation $\sqrt\lambda\wedge\sqrt R$ 的 integral convergence：该函数减去常数 $\sqrt R$ 属于 $C_0([m^2,\infty))$，而 $P_N\to1$ strongly处理常数项。另一方面，

$$\begin{align}
0\le\sqrt\lambda-(\sqrt\lambda\wedge\sqrt R) \le\frac{\lambda}{\sqrt R}
\end{align}$$

给 $N$-uniform tail bound $\mathfrak a[u]/\sqrt R$。先 $N\to\infty$、再 $R\to\infty$，得到

$$\begin{align}
(u,\mathbf A_N^{1/2}u)_H&\longrightarrow(u,A^{1/2}u)_H.
\end{align}$$

Real polarization identity

$$\begin{align}
4\mu_N(z,w)=\mu_N(z+w,z+w)-\mu_N(z-w,z-w)
\end{align}$$

给 mixed covariance convergence。Weyl product formula把任意 finite word化为一个 phase $e^{-\frac i2\sum_{a<b}\sigma(z_a,z_b)}$ 乘 $W(\sum_a z_a)$；symplectic inclusions使 phase与 $N$ 无关，而 covariance convergence处理最后一个 factor，证明第一项。

对 algebraic union中任意 $a$，取一个包含 $a$ 与 $a^*a$ 的 eventual stage；则 $\omega_N(a)$ converges，$\lim_N\omega_N(a^*a)\ge0$，且 $|\lim_N\omega_N(a)|\le\|a\|$。所以 pointwise limit是 bounded positive normalized functional，并唯一延拓到 $\mathfrak A_\infty$；generator formula说明它就是 connected state的 restriction。最后，对 fixed $a\in\mathfrak A_k$ 与 $N\ge k$，任意 extension均有 $\widetilde\omega_N(a)=\omega_N(a)$。Dense union上的 convergence与 $\|\widetilde\omega_N\|=1$ 给全体 $a\in\mathfrak A_\infty$ 的 pointwise convergence；这正是同一 $C^*$-algebra state space上的 weak-* convergence，并证明第三项。

对 arbitrary bulk $L^2$ field smearings，不必要求 smearing属于某个 fixed $W_k$：上文 product-cylinder theorem已经证明

$$\begin{align}
\frac12(P_Nf,\mathbf A_N^{-1/2}e^{-\mathrm i\tau \mathbf A_N^{1/2}}P_Ng)_H \longrightarrow
\frac12(f,A^{-1/2}e^{-\mathrm i\tau A^{1/2}}g)_H
\end{align}$$

locally uniformly in $\tau$；$1$D continuum closure theorem给同一 statement。Gaussian characteristic functions与 Wick polynomials于是对每个 fixed finite bulk-smearing tuple收敛。$\square$

这个 theorem在不选 extensions时是 cylindrical net convergence；选取任意 extensions后才是同一个 algebra上严格意义的 weak-* convergence。它不是 finite vacuum vectors在一个预先存在的 common Fock space中收敛。若在 continuum regular GNS $(\pi_\omega,\mathcal H_\omega,\Omega_\omega)$ 中另有 approximants $z_N$ 满足

$$\begin{align}
\mu(z_N-z,z_N-z)&\longrightarrow0,
\end{align}$$

则 quasifree uncertainty bound $|\sigma(h,z)|^2\le4\mu(h,h)\mu(z,z)$ 控制 Weyl phase，characteristic function直接给

$$\begin{align}
\pi_\omega(W(z_N))&\xrightarrow{\mathrm s}\pi_\omega(W(z)).
\end{align}$$

先在 dense Weyl vectors上证明、再用 unitarity延拓即可。这个 strong convergence发生在 **chosen continuum regular representation** 中；finite GNS Hilbert spaces因 $\omega_N$ 不构成 exact compatible family而没有被暗中作 canonical embeddings。

### B1.4 — Continuum Large-Coupling Dynamics and Regulator-Independent Smeared States

#### Monotone-Form Constraint Limit

现在回到 centered massive $1$D duplicate energy space

$$\begin{align}
H&:=H^{\mathrm{dup}},&V&:=V^{\mathrm{dup}},&m&>0.
\end{align}$$

对 $\kappa\ge0$ 定义 domain恒为 $V$ 的 soft-defect constraint-implementation forms

$$\begin{align}
\boxed{ \mathfrak a_\kappa[u,v] :=\mathfrak a^{\mathrm{dup}}[u,v] +\kappa\,A_\infty u\,\overline{A_\infty v}.}
\end{align}$$

这里 $A_\infty:V\to\mathbb C$ 是 bounded trace jump。Finite $\kappa$ 因而不是 sharp boundary operator，而是 form-domain上合法的 rank-one positive interface coupling。

**Theorem (large-coupling/monotone-form constraint limit).** 每个 $\mathfrak a_\kappa$ 都是 densely defined closed positive form，并且

$$\begin{align}
\mathfrak a_{\kappa_1}[u]&\le\mathfrak a_{\kappa_2}[u],& \mathfrak a_\kappa[u]&\ge m^2\|u\|_H^2, \qquad 0\le\kappa_1\le\kappa_2.
\end{align}$$

若 $K_\kappa$ 是其 associated positive self-adjoint operator，则

$$\begin{align}
\boxed{ K_\kappa\xrightarrow[\kappa\to\infty]{\mathrm{strong\ resolvent}} K_\infty, \qquad D(\mathfrak a_\infty)=\ker A_\infty, \qquad \mathfrak a_\infty=\mathfrak a^{\mathrm{dup}}|_{\ker A_\infty}.}
\end{align}$$

在 assembly unitary $H^{\mathrm{dup}}\simeq L^2(-L,L)$ 下，$K_\infty$ 正是 outer-Dirichlet connected KG operator $K_{\mathrm{conn}}=-\partial_x^2+m^2$。

**Proof.** Trace boundedness给

$$\begin{align}
|A_\infty u|^2\le C\|u\|_V^2.
\end{align}$$

因此对 fixed $\kappa$，penalty是 $\mathfrak a^{\mathrm{dup}}$-form bounded的 nonnegative perturbation；$\mathfrak a_\kappa$ closed。Positivity、uniform lower bound与 monotonicity逐式显然。Increasing closed-form theorem的 limit domain是

$$\begin{align}
D(\mathfrak a_\infty) &=\{u\in V:\sup_{\kappa\ge0}\mathfrak a_\kappa[u]<\infty\}\\
&=\{u\in V:A_\infty u=0\}=\ker A_\infty,
\end{align}$$

而 $C_c^\infty((-L,0)\cup(0,L))\subset\ker A_\infty$ 在 $H$ 中 dense，故 limit form仍 densely defined；它在该 domain上正是 $\mathfrak a^{\mathrm{dup}}$。Simon--Kato monotone convergence of closed forms于是给 strong-resolvent convergence。前述 Sobolev patching/assembly identity认同其 limit form与 connected form，故 associated operators unitary equivalent。$\square$

#### Explicit Finite-$\kappa$ Operator Domain and Interface Signs

Form theorem还可在 centered coordinates中逐字升级到 associated operator domain。写

$$\begin{align}
I_-&=(-L,0),&I_+&=(0,L),&j(u)&:=u_-(0)-u_+(0).
\end{align}$$

**Proposition (finite-$\kappa$ transmission defect).** 对 $0\le\kappa<\infty$，

$$\begin{align}
D(K_\kappa)=\bigl\{u_-&\in H^2(I_-),\ u_+\in H^2(I_+):
u_-(-L)=u_+(L)=0,\\
&\boxed{u_-'(0)=u_+'(0)=-\kappa\,[u_-(0)-u_+(0)]}\bigr\},
\end{align}$$

且 $(K_\kappa u)_\pm=-u_\pm''+m^2u_\pm$。若 $n_-=+\partial_x$、$n_+=-\partial_x$ 是两侧 interface outward normals并沿用全文 $\Pi_\pm=-\partial_{n_\pm}u_\pm$，则等价地

$$\begin{align}
\boxed{\Pi_-+\Pi_+=0,\qquad \Pi_-=\kappa j(u),\qquad \Pi_+=-\kappa j(u).}
\end{align}$$

**Proof.** 对 outer-Dirichlet $v\in V$ 作一次 Green integration by parts，interface boundary form恰为

$$\begin{align}
\bigl(u_-'(0)+\kappa j(u)\bigr)\overline{v_-(0)} +\bigl(-u_+'(0)-\kappa j(u)\bigr)\overline{v_+(0)}.
\end{align}$$

$v_-(0),v_+(0)$ 可独立变化，所以两个 coefficients必须分别为零；反向代回即给充分性与 displayed domain。Outward-normal/port formula随后逐式得到。$\square$

因此 finite $\kappa$ 已经 exact 保持 flux balance，却允许 field jump，并有

$$\begin{align}
j(u)=\kappa^{-1}\Pi_-=-\kappa^{-1}\Pi_+\qquad(\kappa>0).
\end{align}$$

$\kappa\to\infty$ 才同时恢复 $j=0$ 与 standard transmission。本文不为这个 family附加 $\delta'$ 或其他 point-interaction标签，因为该术语在不同 operator/quantum-graph conventions中会交换 coupling parameter与 jump/flux normalization；explicit domain已经消除了歧义。最重要的是，这一 defect family只逼近早已由 regional action与 allowed variations定义的 exact classical sewing

$$\begin{align}
q_-=q_+,\qquad \Pi_-+\Pi_+=0,
\end{align}$$

而不重新定义它。

这个 theorem的名称是 **large-coupling constraint limit**，不是把 “Zeno” 当同义词。Repeated projections或 operator-product formulas属于标准 quantum Zeno formulation；它们在额外 hypotheses下可与 form restriction比较，但本文没有证明 product formula，故只把 Zeno作为类比。

#### Finite Lipschitz Scalar Partitions

Large-coupling proof不依赖 centered Fourier basis。下面给出本文实际需要、且不触及 corners/gauge/BV 的 finite scalar extension。设 $\Sigma$ 是 bounded Lipschitz spatial domain，$\{\Sigma_i\}_{i=1}^r$ 是 finite Lipschitz partition；interfaces除 measure-zero junction sets外成对 Lipschitz，并带 fixed orientation及 unitary scalar/bundle identifications $J_e$。为把 hard limit认作原来的 uncut theory，而不只是某个合法的 transmission theory，另固定一个 global uniformly elliptic massive scalar/bundle form：其 principal coefficients、volume density、bundle metric、connection、mass/potential $Q\ge m^2>0$ 及 physical outer boundary form domain均定义在 $\Sigma$ 上。Regional data逐字取这些 global data的 restrictions，$J_e$ 由同一个 global bundle identification诱导，且 closed spaces $V_i\subset H^1(\Sigma_i)$ 的 assembled outer boundary condition正是 global form domain的 restriction。令

$$\begin{align}
H^{\mathrm{dup}}&:=\bigoplus_iL^2(\Sigma_i),& V^{\mathrm{dup}}&:=\bigoplus_iV_i,\\
\mathcal Y&:=\bigoplus_eL^2(\Sigma_e),& (Au)_e&:=\gamma_{i,e}u_i-J_e\gamma_{j,e}u_j.
\end{align}$$

在 compact interfaces上，Lipschitz trace $H^1(\Sigma_i)\to H^{1/2}(\Sigma_e)$ bounded，而 $H^{1/2}(\Sigma_e)\hookrightarrow L^2(\Sigma_e)$ continuous；故 $A:V^{\mathrm{dup}}\to\mathcal Y$ bounded。写 $G_i,h_i,\mu_i,Q_i$ 为上述 global principal coefficients、bundle metric、density与 potential的 restrictions，并令

$$\begin{align}
\mathfrak a^{\mathrm{dup}}[u] =\sum_i\int_{\Sigma_i}\left( \langle G_i^{ab}\nabla_au_i,\nabla_bu_i\rangle_{h_i} +\langle Q_iu_i,u_i\rangle_{h_i} \right)\,\mathrm d\mu_i, \qquad Q_i\ge m^2 1.
\end{align}$$

定义

$$\begin{align}
\boxed{\mathfrak a_\kappa[u]=\mathfrak a^{\mathrm{dup}}[u]+\kappa\|Au\|_{\mathcal Y}^2,\qquad D(\mathfrak a_\kappa)=V^{\mathrm{dup}}.}
\end{align}$$

**Theorem (finite Lipschitz network hard limit with compatible target coefficients).** 在上述 assumptions下，$\mathfrak a_\kappa$ closed、increasing并 uniformly bounded below by $m^2$；其 monotone limit是

$$\begin{align}
D(\mathfrak a_\infty)=\ker A,\qquad \mathfrak a_\infty=\mathfrak a^{\mathrm{dup}}|_{\ker A}.
\end{align}$$

Sobolev assembly与 coefficient compatibility共同给一个 isometric form isomorphism

$$\begin{align}
\ker A\cong V_{\mathrm{global}}\subset H^1(\Sigma),
\end{align}$$

故 associated operators strong-resolvent converge到由该 specified global form定义、带 physical outer BC的 uncut massive KG operator。Heat、common-energy wave matrices及任意 fixed bulk-$L^2$ smeared covariance

$$\begin{align}
\frac12(f,K_\kappa^{-1/2}e^{-\mathrm i\tau\sqrt{K_\kappa}}g)
\end{align}$$

具有与 centered theorem相同的 strong/compact-time limit。

**Proof.** Closedness与 monotone limit domain仍由 bounded trace perturbation及 increasing-form theorem给出。若 $Au=0$，各 one-sided traces在每个 interface按 $J_e$ 一致；piecewise weak gradients在 distributional integration by parts中的 interface terms于是 pairwise cancel，给 assembled $u\in H^1(\Sigma)$。反过来，global $H^1$ restriction的 one-sided traces一致，所以属于 $\ker A$。这只证明 function-space assembly $\ker A\cong V_{\mathrm{global}}$；measure-zero junction sets不增加新的 $H^1$ jump term。这里允许 measure-zero junction sets 只是一条 form/Sobolev assembly statement；它不提供 Part I relation-level theory 所缺的 corner canonical/JKM data。

要把 associated operator进一步认作 **原 uncut KG**，还必须使用 theorem中单列的 coefficient hypothesis：$G_i,h_i,\mu_i,Q_i$ 与 outer boundary data都是同一个 global form的 restrictions，$J_e$ 与其 bundle identification兼容。因此对每个 assembled $u$，区域积分之和逐字等于 target global form，而不仅是 domain相同。Operator与 covariance conclusions再由 $m>0$ 下的 strong-resolvent/$C_0$ functional calculus得到。$\square$

若撤去 global-coefficient compatibility而允许 genuinely piecewise coefficients，上述 monotone hard limit仍成立，但 target只能称为由区域 forms及 $J_e$ 定义的 piecewise-coefficient transmission operator；它不自动等于预先指定的 smooth uncut KG。这里 $L^2(\Sigma_e)$ jump penalty与 $H^{1/2}(\Sigma_e)$ jump penalty是两个不同的 finite-$\kappa$ semitransparent defect families；后者要求把 trace target/domain另行加强。二者只因 kernel同为 exact trace matching而有同一个 hard limit，本文不声称它们在 finite coupling相等。Noncompact interfaces、singular junction dynamics与 sharp boundary operators仍不在这个 theorem内。

#### Heat, Wave, and Bulk-Smeared Vacuum Convergence

**Corollary (dynamics and massive smeared state).** 识别 $K_\infty$ 与 $K_{\mathrm{conn}}$ 后：

1. 对每个 $s\ge0$，

$$\begin{align}
   e^{-sK_\kappa}\xrightarrow{\mathrm s}e^{-sK_{\mathrm{conn}}}.
\end{align}$$

2. 令 $\mathcal E_\kappa=D(K_\kappa^{1/2})\oplus H$，并用 isometry

$$\begin{align}
   J_\kappa:\mathcal E_\kappa&\to H\oplus H,& J_\kappa(u,v)&=(K_\kappa^{1/2}u,v)
\end{align}$$

   作为共同 energy coordinates。若 $U_\kappa(t)$ 是 $\ddot u+K_\kappa u=0$ 的 wave evolution，则

$$\begin{align}
   J_\kappa U_\kappa(t)J_\kappa^{-1}
   =\begin{pmatrix}
   \cos(t\sqrt{K_\kappa})&\sin(t\sqrt{K_\kappa})\\
   -\sin(t\sqrt{K_\kappa})&\cos(t\sqrt{K_\kappa})
   \end{pmatrix}
\end{align}$$

   在 $H\oplus H$ 上 strongly、locally uniformly in $t$ 收敛到 $\kappa=\infty$ 的 connected matrix。等价地，对 fixed $h,g\in H$ 取 $u_\kappa(0)=K_\kappa^{-1/2}h$、$\dot u_\kappa(0)=g$，则

$$\begin{align}
   K_\kappa^{1/2}u_\kappa(t)&\longrightarrow
   K_{\mathrm{conn}}^{1/2}u_{\mathrm{conn}}(t),\\
   \dot u_\kappa(t)&\longrightarrow\dot u_{\mathrm{conn}}(t)
\end{align}$$

   locally uniformly on compact time intervals in $H$。

3. 对任意 $f,g\in H$，

$$\begin{align}
   \boxed{ \frac12(f,K_\kappa^{-1/2}e^{-\mathrm i\tau\sqrt{K_\kappa}}g)_H \longrightarrow
   \frac12(f,K_{\mathrm{conn}}^{-1/2}e^{-\mathrm i\tau\sqrt{K_{\mathrm{conn}}}}g)_H}
\end{align}$$

   locally uniformly for $\tau$ in compact sets。因而 fixed finite collections of bulk-spatial smearings的 ground/quasifree characteristic functions、two-point functions及 Wick $n$-point functions全部收敛。

**Proof.** Strong resolvent先给 heat semigroup convergence。Nonnegative square-root functional calculus与 self-adjoint group convergence给 $e^{\pm\mathrm it\sqrt{K_\kappa}}\to e^{\pm\mathrm it\sqrt{K_{\mathrm{conn}}}}$ strongly、locally uniformly in $t$；取实部/虚部即得 wave matrix。这里比较的是 $J_\kappa$ 后的共同 energy coordinates，不是从 strong resolvent凭空推出任意 fixed raw initial data的 $V$-norm convergence。

由于 $m>0$，

$$\begin{align}
F_\tau(\lambda)=\lambda^{-1/2}e^{-\mathrm i\tau\sqrt\lambda}
\end{align}$$

在共同谱区间 $[m^2,\infty)$ 上 bounded、continuous且趋零；$C_0$ functional calculus给每个 $\tau$ 的 strong convergence。又

$$\begin{align}
\|F_\tau(K)-F_{\tau'}(K)\|\le|\tau-\tau'|
\end{align}$$

uniformly for every $K\ge m^2$，故 finite time-net argument升级为 compact-$\tau$ uniform matrix-element convergence。Gaussian characteristic formula与 Wick rule完成第三项。$\square$

#### One Common Parent CCR, and Why the Naive $E$--Dynamics Square Fails

虽然 energy norm

$$\begin{align}
\|(u,v)\|_{\mathcal E_\kappa}^2=\|K_\kappa^{1/2}u\|_H^2+\|v\|_H^2
\end{align}$$

依赖 $\kappa$，但对每个 finite $\kappa$ 有

$$\begin{align}
D(K_\kappa^{1/2})=V,\qquad \mathfrak a_0[u]\le\mathfrak a_\kappa[u] \le(1+\kappa C_A)\mathfrak a_0[u].
\end{align}$$

所以这些 norms在 fixed $\kappa$ 下等价，underlying algebraic Cauchy symplectic space可统一取

$$\begin{align}
\boxed{\mathcal S^{\mathrm{dup}}=V^{\mathrm{dup}}\oplus H^{\mathrm{dup}},\qquad \sigma((u,v),(u',v'))=(v,u')_H-(v',u)_H.}
\end{align}$$

每个 $U_\kappa(t)$ 都是这个同一 set上的 symplectic bijection，因而在同一个 parent Weyl algebra $\mathfrak A_{\mathrm{parent}}=\mathfrak W(\mathcal S^{\mathrm{dup}},\sigma)$ 上定义

$$\begin{align}
\boxed{\alpha_t^{(\kappa)}(W(z))=W(U_\kappa(t)z).}
\end{align}$$

这是真正的 common parent algebra。它仍不是 point-norm continuous $C^*$-dynamical system：若 $U_\kappa(t)z\neq z$，则 Weyl norm discontinuity给 $\|W(U_\kappa(t)z)-W(z)\|=2$。Strong continuity只在 regular representations中恢复。

另一方面，下面这个看似自然的 square在 generic parent observables上 **不成立**：

$$\begin{align}
E\circ\alpha_t^{(\kappa)}\stackrel{?}{\longrightarrow}
\alpha_t^{\mathrm{conn}}\circ E.
\end{align}$$

**Proposition/counterexample (the Haar selector is dynamically discontinuous).** $E$ 检查的是 Weyl label是否 **精确** 属于 $\mathsf C_\infty$，不是 label到该 subspace的距离。若 $z_\infty\in\mathsf C_\infty$、$h\notin\mathsf C_\infty$ 并令 $z_n=z_\infty+n^{-1}h$，则在 energy topology中 $z_n\to z_\infty$，但

$$\begin{align}
E(W(z_n))=0,\qquad E(W(z_\infty))=W(z_\infty).
\end{align}$$

所以任何仅由 strong-resolvent/label convergence推出的 $E$-intertwining argument都已被这个 explicit net反驳。Dynamics本身也不修复问题：fixed finite $\kappa$ 下取 $z=(0,v)\in\mathsf C_\infty$，其中 $v\in V$ 且 $A_\infty v\neq0$。该 strong initial datum满足

$$\begin{align}
A_\infty\bigl(\operatorname{pr}_1U_\kappa(s)z\bigr) =sA_\infty v+o(s)\qquad(s\to0),
\end{align}$$

故小的非零 $s$ 时 finite-$\kappa$ flow离开 $\mathsf C_\infty$，于是 $E(\alpha_s^{(\kappa)}(W(z)))=0$；connected side却是 nonzero unitary $W(U_{\mathrm{conn}}(s)z)$。因此不存在 exact finite-$\kappa$ commuting square。对 $\kappa\to\infty$，只要 evolved labels沿某 cofinal subnet仍在 $\mathsf C_\infty$ 外，左侧仍被 exact annihilate；若发生 isolated exact crossings，$E$ 又在 $0$ 与 unitary之间跳变。故本文不声称 generic generatorwise limit，更不声称 universal Weyl $C^*$-norm、fixed-GNS strong/weak operator或所有 connected-state matrix elements上的这个 $E$-square。$\square$

$$\begin{align}
\boxed{\text{sharp algebraic reduction is not a continuous dynamical retraction.}}
\end{align}$$

这里“continuous”同样只指 energy/phase-space-label topology 与 dynamical limiting square；$E$ 作为 $C^*$-algebra linear map本身是 contractive、因而 norm-continuous。这是 negative structural theorem，不是一个待补 proof 的 commuting square：Haar/fixed-point map $E$ 的 generator formula 是 label-wise exact，故 $z\mapsto E(W(z))$ 对 transverse perturbations高度不连续；connected flow则由 $\kappa\to\infty$ 的 singular constraint limit产生，而不是把 finite-$\kappa$ parent flow经 $E$ retract所得。下文保留的正 compatibility恰好只有两类：full-parent states的 weak-* limit，以及 regular bulk observables在 chosen common carrier上的 multitime strong limit。

正确的 dynamics compatibility位于 regular bulk core。对每个 $\kappa$，把 **bulk-smearing one-particle labels** 通过 $\kappa$-dependent map放入同一个 chosen carrier $\Gamma_s(H_\mathbb C)$，采用 fixed Weyl normalization，并对 $f\in H$ 定义

$$\begin{align}
g_{\kappa,t}(f)=2^{-1/2}K_\kappa^{-1/4}e^{-\mathrm it\sqrt{K_\kappa}}f.
\end{align}$$

**Theorem (regular bulk dynamical compatibility).** 对任意 fixed finite tuple $(f_j,t_j)_{j=1}^r$，

$$\begin{align}
\boxed{ \prod_{j=1}^rW_{\mathrm F}(g_{\kappa,t_j}(f_j)) \xrightarrow[\kappa\to\infty]{\mathrm s}
\prod_{j=1}^rW_{\mathrm F}(g_{\infty,t_j}(f_j)),}
\end{align}$$

且 convergence对 compact time tuples locally uniform。因此所有 fixed Fock vectors之间的 matrix elements收敛；vacuum matrix elements给前述 bulk-smeared multitime quasifree functions。

**Proof.** $\lambda^{-1/4}\in C_0([m^2,\infty))$ 给 $K_\kappa^{-1/4}f\to K_\infty^{-1/4}f$；再结合 $e^{-\mathrm it\sqrt{K_\kappa}}$ 的 locally-uniform strong group convergence，得到 $g_{\kappa,t}(f)\to g_{\infty,t}(f)$ in $H_\mathbb C$。Fock Weyl strong continuity处理单个 factor，uniform boundedness与 telescoping处理 finite products。$\square$

这只是在 chosen common one-particle/Fock carrier上的 bulk-smeared observable core $\mathfrak A_{\mathrm{bulk}}^{\mathrm{reg}}$；$\kappa$-dependent embeddings并不声称 full parent ground representations彼此 unitary equivalent。它不识别 sharp boundary fields或全部 phase-space labels，也没有在 finite dynamics之后插入 discontinuous $E$。

#### Finite-$\kappa$ Regular Ground States and Their Nonregular Sharp Limit

Common parent algebra还允许构造 B1.3 所需的 sharp limit state。对 $z=(u,v)\in V\oplus H$ 定义

$$\begin{align}
\mu_\kappa(z,z)&:=\frac12\left[(u,K_\kappa^{1/2}u)_H+(v,K_\kappa^{-1/2}v)_H\right],\\
\omega_\kappa(W(z))&:=\exp\left[-\frac12\mu_\kappa(z,z)\right].
\end{align}$$

每个 finite $\kappa$ 的 $\omega_\kappa$ 都是同一 $\mathfrak A_{\mathrm{parent}}$ 上 regular quasifree ground state。

**Terminology (regular positive-energy ground representation).** 这里的 “ground state” 精确指 GNS/positive-energy意义：在 $\omega_\kappa$ 的 regular GNS triple $(\pi_\kappa,\mathcal H_\kappa,\Omega_\kappa)$ 中，存在 strongly continuous unitary group $U_\kappa(t)=e^{\mathrm itH_\kappa}$，其中 $H_\kappa\ge0$，并且

$$\begin{align}
U_\kappa(t)\pi_\kappa(A)U_\kappa(t)^* &=\pi_\kappa(\alpha_t^{(\kappa)}(A)),& H_\kappa\Omega_\kappa&=0.
\end{align}$$

因此 $\Omega_\kappa$ 是 zero-energy ground vector。本文并不声称 universal pair $(\mathfrak A_{\mathrm{parent}},\alpha^{(\kappa)})$ 本身是 standard point-norm-continuous $C^*$-dynamical system；上一节的 Weyl norm calculation已明确否定这一点。下文使用 “regular ground state/representation” 时均按这个 convention。

**Lemma (fractional-power form limit).** 设 $K_\kappa\ge m^2>0$ 是 positive self-adjoint operators，并且当 $\kappa_1\le\kappa_2$ 时

$$\begin{align}
K_{\kappa_1}\le K_{\kappa_2}
\end{align}$$

in quadratic-form order。若 $K_\kappa\to K_\infty$ in strong resolvent sense，则对每个 $0<\alpha<1$，$K_\kappa^\alpha$ 仍按 quadratic-form order increasing，而且其 closed forms满足 extended-value identity

$$\begin{align}
\boxed{ \mathfrak q_{K_\kappa^\alpha}[u] =\|K_\kappa^{\alpha/2}u\|^2 \uparrow \mathfrak q_{K_\infty^\alpha}[u] =\|K_\infty^{\alpha/2}u\|^2,}
\end{align}$$

其中不属于相应 form domain时按 $+\infty$ 理解。因此 limit form的 associated operator正是 $K_\infty^\alpha$，且

$$\begin{align}
D(\mathfrak q_{K_\infty^\alpha})=D(K_\infty^{\alpha/2}).
\end{align}$$

特别地，$\alpha=1/2$ 时 associated operator是 $K_\infty^{1/2}$，并且 spectral calculus逐字给

$$\begin{align}
(K_\infty^{1/2})^{1/2}=K_\infty^{1/4},\qquad D\bigl((K_\infty^{1/2})^{1/2}\bigr)=D(K_\infty^{1/4}).
\end{align}$$

**Proof.** 令 $c_\alpha=\sin(\pi\alpha)/\pi$。对任意 positive self-adjoint $T$，scalar Stieltjes identity与 spectral theorem给

$$\begin{align}
t^\alpha &=c_\alpha\int_0^\infty s^{\alpha-1}\frac{t}{t+s}\,\mathrm ds,\qquad t\ge0,\nonumber\\
\mathfrak q_{T^\alpha}[u] &=c_\alpha\int_0^\infty s^{\alpha-1} \bigl(u,T(T+s)^{-1}u\bigr)\,\mathrm ds,
\end{align}$$

第二式允许值 $+\infty$。Form order $T_1\le T_2$ 等价于 resolvent order $(T_1+s)^{-1}\ge(T_2+s)^{-1}$；又

$$\begin{align}
T(T+s)^{-1}=1-s(T+s)^{-1},
\end{align}$$

所以每个 integrand对 $T$ increasing。这既给 $T_1^\alpha\le T_2^\alpha$ 的 unbounded/form-order Löwner--Heinz specialization，也给 $\mathfrak q_{K_\kappa^\alpha}[u]$ 的 monotonicity。Strong-resolvent convergence使每个 fixed $s>0$ 的 resolvents strongly converge，故 integrands pointwise converge到 $K_\infty(K_\infty+s)^{-1}$ 的对应 matrix element。对上述 nonnegative increasing integrals应用 monotone convergence theorem，得到 displayed extended-value identity。其右端由同一个 spectral identity精确识别为 $K_\infty^\alpha$ 的 closed form，故不会产生另一个 self-adjoint relation。Domain与 iterated square-root statements再由 spectral calculus得到。$\square$

**Theorem (regular-to-nonregular sharp-sewing limit).** 在 centered massive $1$D assumptions下，

$$\begin{align}
\boxed{\omega_\kappa\xrightarrow[\kappa\to\infty]{\mathrm{weak-*}}
\widetilde\omega_\infty=\omega_{\mathrm{conn}}\circ E \quad\text{on the full parent Weyl algebra}.}
\end{align}$$

更具体地，

$$\begin{align}
\lim_{\kappa\to\infty}\omega_\kappa(W(z))=
\begin{cases}
\omega_{\mathrm{conn}}(W(\mathcal U_{\mathrm{ass}}z)),&z\in\mathsf C_\infty,\\
0,&z\notin\mathsf C_\infty.
\end{cases}
\end{align}$$

Longitudinal/fixed-point covariance因此趋于 connected covariance；对每个具有 nonzero jump 的 configuration-component label $u$，$W(u,0)$ 的 Weyl characteristic-function covariance $(u,K_\kappa^{1/2}u)$ 发散，因而出现 transverse translation nonregularity。

**Proof.** 若 $u\in\ker A_\infty$，则 $\mathfrak a_\kappa[u]=\mathfrak a_\infty[u]$。Strong resolvent先处理 bounded truncations $\sqrt\lambda\wedge\sqrt R$，而

$$\begin{align}
0\le\sqrt\lambda-(\sqrt\lambda\wedge\sqrt R)\le\lambda/\sqrt R
\end{align}$$

与共同 first form moment给 uniform tail control。因此

$$\begin{align}
(u,K_\kappa^{1/2}u)&\longrightarrow(u,K_\infty^{1/2}u),& (v,K_\kappa^{-1/2}v)&\longrightarrow(v,K_\infty^{-1/2}v),
\end{align}$$

后一式直接使用 $m>0$ 与 $C_0$ functional calculus。

若 $A_\infty u\neq0$，上一个 lemma以 $\alpha=1/2$ 给

$$\begin{align}
\mathfrak b_\kappa[u]:=(u,K_\kappa^{1/2}u)=\|K_\kappa^{1/4}u\|^2
\end{align}$$

单调趋于 $\mathfrak q_{K_\infty^{1/2}}[u]$，其 form domain精确是 $D(K_\infty^{1/4})$。这里实际只使用 centered Dirichlet interval上的连续嵌入

$$\begin{align}
D(K_\infty^{1/4})\subset H^{1/2}(-L,L),
\end{align}$$

而不承担更强的 Lions--Magenes 等号识别。Assembly把 piecewise $H^1$ label识别为 $L^2(-L,L)$ function；若其 interface jump $j\neq0$，one-sided continuity给某个 $\varepsilon>0$，使 cross-interface Gagliardo seminorm满足

$$\begin{align}
\int_{-\varepsilon}^0\!\int_0^\varepsilon \frac{|u_-(x)-u_+(y)|^2}{|x-y|^2}\,\mathrm dy\,\mathrm dx \ge\frac{|j|^2}{4}\int_0^\varepsilon\!\int_0^\varepsilon\frac{\mathrm ds\,\mathrm dt}{(s+t)^2}=\infty.
\end{align}$$

故 $u\notin H^{1/2}(-L,L)$，从而 $u\notin D(K_\infty^{1/4})$。Fractional-power lemma于是严格给 $\mathfrak b_\kappa[u]\uparrow+\infty$。这证明 generatorwise characteristic-function limit，不是“large penalty suppresses jump”的直觉替代。

Finite Weyl spans在 $\mathfrak A_{\mathrm{parent}}$ 中 norm dense；generatorwise formula与 Weyl relations给这些 spans上 convergence。所有 $\omega_\kappa$ 均为 norm-one states，所以 dense-set convergence延拓为每个 algebra element的 pointwise convergence，即 state-space weak-* convergence。Limit characteristic function恰是 $\omega_{\mathrm{conn}}\circ E$，并由前节 proposition transverse-nonregular。$\square$

**Remark (Weyl-label covariance versus the soft jump coordinate).** $u$ 是 Weyl phase-space label的 configuration component；$W(u,0)$ 是 configuration direction上的 Weyl translation，其 characteristic-function covariance由 $K_\kappa^{1/2}$ 控制。这个 quantity发散等价地反映 conjugate momentum sector的 fluctuation增长及 transverse translation nonregularity，不能称为 physical field jump coordinate本身的 variance发散。作为 interpretation，取 $\hbar=1$ 的单一 soft mode

$$\begin{align}
H_\kappa=\frac{p_\xi^2}{2m_{\mathrm{osc}}}+\frac\kappa2\xi^2,\qquad \varpi_\kappa=\sqrt{\frac\kappa{m_{\mathrm{osc}}}}.
\end{align}$$

其 ground vector满足

$$\begin{align}
\langle\xi^2\rangle_\kappa &=\frac1{2m_{\mathrm{osc}}\varpi_\kappa} =\frac1{2\sqrt{m_{\mathrm{osc}}\kappa}}\sim\kappa^{-1/2},& \langle p_\xi^2\rangle_\kappa &=\frac{m_{\mathrm{osc}}\varpi_\kappa}{2} =\frac{\sqrt{m_{\mathrm{osc}}\kappa}}2\sim\kappa^{1/2}.
\end{align}$$

所以 hard constraint pins the jump coordinate，发散的是其 conjugate fluctuation。这个 oscillator只解释 covariance polarity，不替代上面的 fractional-domain/Gagliardo proof。

**Corollary (stationary state-limit identity; no new dynamical content).** Ground-state stationarity与上述 weak-* theorem给任意 $A\in\mathfrak A_{\mathrm{parent}}$、任意 fixed $t$：

$$\begin{align}
\boxed{ \lim_{\kappa\to\infty}\omega_\kappa\!\left(\alpha_t^{(\kappa)}(A)\right) =\omega_{\mathrm{conn}}\!\left(\alpha_t^{\mathrm{conn}}(E(A))\right).}
\end{align}$$

**Proof.** 左侧对每个 $\kappa$ 已因 stationarity等于 $\omega_\kappa(A)$，右侧因 connected stationarity等于 $\omega_{\mathrm{conn}}(E(A))$；所以 displayed identity只是 weak-* state limit的直接 corollary。它没有额外 dynamical content，更不是 false $E$--dynamics square的 weak-operator version。$\square$

两个 compatibility notions必须用分开的 diagrams记录。第一图只表示 full-parent state limit及其 fixed-algebra restriction：

$$
\begin{array}{ccc}
(\mathfrak A_{\mathrm{parent}},\omega_\kappa)
&\xrightarrow{\ \kappa\to\infty\ \mathrm{weak-*}\ }&
(\mathfrak A_{\mathrm{parent}},\widetilde\omega_\infty)\\
&&\downarrow\scriptstyle{\mathrm{restriction}}\\
&&\bigl(\mathfrak W(\mathsf C_\infty),\omega_{\mathrm{conn}}\bigr),
\end{array}
\qquad
\widetilde\omega_\infty=\omega_{\mathrm{conn}}\circ E,
$$

真正含有 dynamics content的是第二图，即 chosen common Fock carrier/regular bulk core上的 multitime strong convergence：

$$
\begin{array}{ccc}
K_\kappa&\xrightarrow{\mathrm{s.r.}}&K_{\mathrm{conn}}\\
\downarrow&&\downarrow\\
\mathfrak A_{\mathrm{bulk}}^{\mathrm{reg}}(\kappa)
&\xrightarrow{\mathrm{strong\ GNS}}&
\mathfrak A_{\mathrm{bulk}}^{\mathrm{reg}}(\mathrm{conn}).
\end{array}
$$

第一图横线是 weak-* regularity loss、竖线是 fixed-algebra state restriction；它的 stationary one-point corollary不增加 dynamics。第二图才是 dynamical regular limit，并具体由前述 finite products $\prod_jW_{\mathrm F}(g_{\kappa,t_j}(f_j))$ 的 strong convergence实现。Algebraic fixed point由 $E:\mathfrak A_{\mathrm{parent}}\to\mathfrak W(\mathsf C_\infty)$ 实施；这三者不应被压成已经证明为 false 的 $E$--dynamics square。

物理解释是：finite $\kappa$ 确实是一种 genuine soft/semitransparent interface coupling，若把它停在有限值就是不同的 defect theory。Artificial cut 的 target不是某个 large但 finite coupling，而是 $\kappa\to\infty$ 的 constraint limit。因此 penalty在这里是 **constraint implementation regulator**，没有取代前文由作用量与 allowed variations定义的 exact sewing，也不是 classical sewing definition。

#### The Two-Parameter $(N,\kappa)$ Approximation Square

现在把 finite exact reduction与 continuum soft path放进同一个 family。沿用 centered matrices $M_N^{\mathrm{dup}},K_N^{\mathrm{dup}},A_{\mathrm{sew}}^{(N)}=A_\Delta,I_N=I$，在 finite duplicate Hilbert space的 mass pairing

$$\begin{align}
(x,y)_{H_N}:=x^TM_N^{\mathrm{dup}}y
\end{align}$$

上定义

$$\begin{align}
\boxed{ \mathfrak a_{N,\kappa}[x,y] =x^TK_N^{\mathrm{dup}}y+\kappa(A_{\mathrm{sew}}^{(N)}x)^T(A_{\mathrm{sew}}^{(N)}y),\qquad \mathbf K_{N,\kappa} =(M_N^{\mathrm{dup}})^{-1}\!\left(K_N^{\mathrm{dup}}+\kappa (A_{\mathrm{sew}}^{(N)})^TA_{\mathrm{sew}}^{(N)}\right).}
\end{align}$$

若 interface coefficient space使用非 Euclidean metric，只需把 $(A_{\mathrm{sew}}^{(N)})^TA_{\mathrm{sew}}^{(N)}$ 换成 $(A_{\mathrm{sew}}^{(N)})^TG_{\mathcal Y,N}A_{\mathrm{sew}}^{(N)}$；centered one-port normalization正是上式。

**Theorem (finite soft constraint gives exact conforming reduction).** 固定 $N$。对 $\lambda>0$ 写

$$\begin{align}
B_{N,\lambda}:=K_N^{\mathrm{dup}}+\lambda M_N^{\mathrm{dup}}.
\end{align}$$

则 Woodbury/Schur complement给

$$\begin{align}
&(\mathbf K_{N,\kappa}+\lambda)^{-1}\\
&\quad=\left[B_{N,\lambda}^{-1} -B_{N,\lambda}^{-1}(A_{\mathrm{sew}}^{(N)})^T \left(\kappa^{-1}1_{\operatorname{rank}A_{\mathrm{sew}}^{(N)}}+A_{\mathrm{sew}}^{(N)}B_{N,\lambda}^{-1}(A_{\mathrm{sew}}^{(N)})^T\right)^{-1} A_{\mathrm{sew}}^{(N)}B_{N,\lambda}^{-1}\right]M_N^{\mathrm{dup}}.
\end{align}$$

因此 finite-dimensional operator norm中

$$\begin{align}
\boxed{ (\mathbf K_{N,\kappa}+\lambda)^{-1} \longrightarrow
I_N\left[I_N^TB_{N,\lambda}I_N\right]^{-1}I_N^TM_N^{\mathrm{dup}}.}
\end{align}$$

右侧正是 conforming operator

$$\begin{align}
\mathbf K_N^{\mathrm{conf}} =(I_N^TM_N^{\mathrm{dup}}I_N)^{-1}(I_N^TK_N^{\mathrm{dup}}I_N)
\end{align}$$

的 resolvent先按 $H_N$-orthogonal compression到 $\ker A_{\mathrm{sew}}^{(N)}$、再由 $I_N$ embedding回 parent space。换言之，finite $\kappa\to\infty$ 的 physical part **精确** 等于 B1.1/B1.2 的 conforming/reduced operator。

**Proof.** Woodbury identity给第一式。令 $\kappa^{-1}\downarrow0$，full-row-rank $A_{\mathrm{sew}}^{(N)}$ 与 $B_{N,\lambda}>0$ 使 middle matrix invertible。Standard constrained-inverse identity

$$\begin{align}
B^{-1}-B^{-1}A^T(AB^{-1}A^T)^{-1}AB^{-1} =I(I^TBI)^{-1}I^T
\end{align}$$

给 limit；右乘 $M_N^{\mathrm{dup}}$ 后恰是 embedded conforming resolvent。$\square$

这里有一个不能省略的 finite-dimensional technical point：$\ker A_{\mathrm{sew}}^{(N)}$ 在 full finite parent Hilbert space中不是 dense，所以 hard form若延成 $+\infty$ 并不对应 full parent上的 densely-defined self-adjoint operator。Displayed statement应称 **compressed/embedded norm-resolvent limit**，或等价地称 self-adjoint relation limit；在 physical Hilbert space $\ker A_{\mathrm{sew}}^{(N)}$ 上它就是 ordinary $\mathbf K_N^{\mathrm{conf}}$。这避免把 finite sharp state的 transverse nonregularity伪装成 full-parent regular operator。

下面使用已有 nested duplicate trial spaces $V_N^{\mathrm{dup}}$ 的 field embedding，并令

$$\begin{align}
A_{\mathrm{sew}}^{(N)}:=A|_{V_N^{\mathrm{dup}}},\qquad W_N:=V_N^{\mathrm{dup}}\cap\ker A.
\end{align}$$

**Theorem (two-parameter Mosco and commuting limits).** 假设：

1. $V_N^{\mathrm{dup}}$ nested且其 union在 $V^{\mathrm{dup}}$ 的 form norm中 dense；
2. $W_N$ nested且其 union在 $\ker A$ 的 connected form norm中 dense；
3. mass embeddings/projections使用前文 common-$H$ convention，bulk forms uniformly bounded below by $m^2>0$。

则：

$$\begin{align}
\mathbf K_{N,\kappa}&\xrightarrow[N\to\infty]{\mathrm{embedded\ strong\ resolvent}}K_\kappa &&\text{for each fixed finite }\kappa,\\
\mathbf K_N^{\mathrm{conf}}&\xrightarrow[N\to\infty]{\mathrm{embedded\ strong\ resolvent}}K_{\mathrm{conn}},\\
K_\kappa&\xrightarrow[\kappa\to\infty]{\mathrm{strong\ resolvent}}K_{\mathrm{conn}}.
\end{align}$$

所以两条 iterated edges commute：

$$\begin{align}
\boxed{ \lim_{N\to\infty}\lim_{\kappa\to\infty}\mathbf K_{N,\kappa} =K_{\mathrm{conn}} =\lim_{\kappa\to\infty}\lim_{N\to\infty}\mathbf K_{N,\kappa}}
\end{align}$$

in the stated compressed/embedded strong-resolvent sense。更强地，对 **任意** $N_j\to\infty$、$\kappa_j\to\infty$，

$$\begin{align}
\boxed{\mathbf K_{N_j,\kappa_j}\longrightarrow K_{\mathrm{conn}}}
\end{align}$$

in embedded strong-resolvent sense；不需要额外 growth relation between $N_j$ and $\kappa_j$。

**Proof.** Fixed $\kappa$ 时，penalty $\kappa\|Au\|^2$ 是 $V$-continuous；duplicate form-core density给 ordinary Galerkin/Mosco convergence到 $\mathfrak a_\kappa$。Conforming edge由 $W_N$ 的 exact form-core density给 Mosco convergence到 $\mathfrak a_\infty$；continuum hard edge已由 monotone theorem证明。

对 joint path，设 $u_j\in V_{N_j}^{\mathrm{dup}}$ weakly converge in $H$ 且

$$\begin{align}
\sup_j\left(\mathfrak a^{\mathrm{dup}}[u_j]+\kappa_j\|Au_j\|_{\mathcal Y}^2\right)<\infty.
\end{align}$$

Coercivity使 $u_j$ bounded in $V$；取 subsequence weakly in $V$ 到同一个 $u$。同时 $\|Au_j\|\le C\kappa_j^{-1/2}\to0$，而 bounded trace map weakly continuous，所以 $Au=0$。Base form weak lower semicontinuity给 hard-form liminf。反过来，对任意 $u\in\ker A$，第二项 assumption给 exact conforming recovery $w_j\in W_{N_j}$、$w_j\to u$ in form norm；此时 $Aw_j=0$，penalty对任意 $\kappa_j$ 都逐字消失。这给 joint Mosco recovery sequence。Mosco theorem完成 arbitrary cofinal strong-resolvent convergence。$\square$

**Remark (why no growth relation appears).** 这个 arbitrary-cofinal conclusion的关键不是 penalty method的一般性质，而是 exact-conforming recovery hypothesis

$$\begin{align}
W_N=V_N^{\mathrm{dup}}\cap\ker A\subset\ker A.
\end{align}$$

因此 recovery sequence上 $\kappa_N\|Aw_N\|^2$ 对任意 $\kappa_N$ 都严格为零。若 discretization只 asymptotically conforming，即只能取 $w_N$ 使 $\|Aw_N\|\le\varepsilon_N\to0$，则 recovery energy中保留 $\kappa_N\varepsilon_N^2$；在其余 form convergence成立时，一个自然的 sufficient balance是 $\kappa_N\varepsilon_N^2\to0$。本文的 arbitrary-cofinal theorem不声称覆盖 generic asymptotically conforming penalty discretizations。

Mass gap把这个 square推进到 states。若 $P_N$ 表示 declared bulk projection/recovery，并取 fixed $f,g\in H$、finite $\tau$，则沿任意 cofinal path

$$\begin{align}
\boxed{ \frac12(P_{N_j}f,\mathbf K_{N_j,\kappa_j}^{-1/2}
e^{-\mathrm i\tau\sqrt{\mathbf K_{N_j,\kappa_j}}}P_{N_j}g) \longrightarrow
\frac12(f,K_{\mathrm{conn}}^{-1/2}e^{-\mathrm i\tau\sqrt{K_{\mathrm{conn}}}}g).}
\end{align}$$

同一结论适用于 fixed finite bulk-smeared characteristic functions与 Wick $n$-point functions；若包含 positive configuration-energy powers，则仍需前文 uniform first-form-moment core。Fixed $N$ 后取 $\kappa\to\infty$ 给 exact conforming ground state的 physical restriction，再取 $N\to\infty$；fixed $\kappa$ 后先作 continuum soft theory、再取 hard limit；joint theorem说明两者不是“碰巧同靶”，而是同一个 approximation square的两条边。

#### Quantum Regulator and Artificial-Partition Independence

上述 functional-calculus argument给出以下 quantum independence statement。

**Theorem (bulk-cylindrical regulator/partition independence).** 设两套 artificial partitions/regulator schemes

$$\begin{align}
(\mathfrak P,W_\nu,\mathfrak a_\nu,K_\nu),&\qquad (\mathfrak P',W'_\eta,\mathfrak a'_\eta,K'_\eta)
\end{align}$$

都通过 specified isometric embeddings进入同一个 global bulk Hilbert space $H_M$，并满足：

1. forms uniformly lower bounded by $m^2>0$；
2. 两网都 conforming/Mosco converge到同一个 closed positive global form $\mathfrak a_M$；
3. embedded operators因而 strong-resolvent converge到同一个 $K_M$，而 fixed bulk smearings用相应 orthogonal projections/declared recovery maps送入 finite spaces；
4. 所讨论 observables只含 fixed finite collections of bulk smearings与 finite times，或属于此前有 uniform first-form-moment control的 common form core。

则对每个 fixed bulk-cylindrical Weyl word $\mathcal O(F)$，

$$\begin{align}
\boxed{ \lim_\nu\omega_{\mathfrak P,\nu}(\mathcal O_\nu(F)) =\omega_M(\mathcal O(F)) =\lim_\eta\omega_{\mathfrak P',\eta}(\mathcal O'_\eta(F)).}
\end{align}$$

同一结论适用于其 finite bulk-smeared $n$-point functions。这里的 topology精确定义为：对每个 fixed finite smearing/time tuple，所有这些 characteristic/moment matrix elements逐点收敛；称为 **bulk-cylindrical or bulk-smeared topology**。

**Proof.** Mosco convergence与 uniform lower bound给两网各自的 embedded strong-resolvent convergence。对任意 $f,g\in H_M$ 与 fixed $\tau$，bounded $C_0$ function

$$\begin{align}
\lambda\longmapsto\lambda^{-1/2}e^{-\mathrm i\tau\sqrt\lambda}
\end{align}$$

使两边 covariance matrix elements都趋于

$$\begin{align}
\frac12(f,K_M^{-1/2}e^{-\mathrm i\tau\sqrt{K_M}}g).
\end{align}$$

Symplectic commutator phases由同一 global smearings/recovery limit控制；Gaussian Weyl formula与 Wick rule于是给 displayed equality。若使用含 configuration-energy component的 phase-space words，第四项的 uniform first-moment hypothesis正是处理 unbounded positive fractional powers所需的 spectral-tail bound。$\square$

两边 finite algebraic unions不必共享 canonical $C^*$-inductive system。上式通过共同 global bulk-smearing labels与 continuum regular GNS target比较，绝不强行写 $W_\nu(f)=W'_\eta(f)$。因此 corollary是真正的 **continuum quantum artificial-cut/refinement independence**，并与 finite reduction-by-stages互补；它不是 sharp boundary-operator independence，也不是 arbitrary nonconforming regulator theorem。

对 moving cut $a\in(-L,L)$，每个 fixed $a$ 的 left/right conforming spaces只要 Mosco converge到同一个 $H_0^1(-L,L)$ global form，就有 pointwise-in-$a$ corollary

$$\begin{align}
\lim_N\omega_{a,N}(\mathcal O_N(F))=\omega_M(\mathcal O(F)),
\end{align}$$

故 bulk observables的 continuum limit与 fixed artificial cut position无关。这里没有证明 convergence uniform in $a$，也没有处理 cut碰到 physical boundary或 nonconforming moving meshes。

两条 implementation paths现在由真正的二参数 square连接：

$$
\begin{array}{ccc}
\mathbf K_{N,\kappa}
&\xrightarrow{\ \kappa\to\infty\ }&\mathbf K_N^{\mathrm{conf}}\\
\Big\downarrow\scriptstyle{N\to\infty}&&\Big\downarrow\scriptstyle{N\to\infty}\\
K_\kappa&\xrightarrow{\ \kappa\to\infty\ }&K_{\mathrm{conn}}.
\end{array}
$$

上边是 finite soft constraint到 exact conforming/reduced operator，左边是 fixed-coupling Galerkin limit，右边是 finite exact reduction的 conforming continuum limit，下边是 continuum hard constraint。所有边及 arbitrary cofinal interiors在 stated embedded strong-resolvent/bulk-smeared topology中到同一 target。另一个 orthogonal diagram是 B1.3 的 algebraic fixed points与 $\omega_\kappa\to\omega_{\mathrm{conn}}\circ E$；它提供 common-parent state compatibility，但不把 $E$ 变成 dynamics intertwiner。

#### Resolvent-Algebra Alternative: Finite Construction, Not the Continuum Theorem Used Here

Buchholz--Grundling resolvent algebra以

$$\begin{align}
R(\lambda,z)&=(\mathrm i\lambda-\phi(z))^{-1}
\end{align}$$

替代 norm-discontinuous Weyl generators，适合讨论 affiliated fields、某些 dynamics 与 constraint ideals。本文 finite symplectic map $\varphi_{\mathrm{red}}$ 同样诱导

$$\begin{align}
\mathcal R(\mathcal S^{\mathrm{conf}},\sigma_{\mathrm{conf}}) &\longrightarrow\mathcal R(\mathcal S^{\mathrm{dup}},\sigma_{\mathrm{dup}}),& R(\lambda,z)&\longmapsto R(\lambda,\varphi_{\mathrm{red}} z),
\end{align}$$

并在 regular Schrödinger representation中识别同一个 physical second-class factor；linear reduced flow也按 $R(\lambda,z)\mapsto R(\lambda,S_tz)$ intertwine。它确实提供一个 finite norm-resolvent observable version的 B1.1。

但 resolvent algebra的 Dirac-state/T-procedure对 linear constraint directions要求 isotropy；完整 $(\chi,\psi)$ second-class pair不满足该条件。因此不能靠“令全部 constraint resolvents消失”替代本文 Dirac reduction。要为 present $(N,R)\to\infty$ schedules构造 resolvent-algebra inductive morphisms与其 own continuum reduction还需独立工作；本文不以综述性引用冒充这一步。Continuum正结果分别是 B1.3 的 universal Weyl fixed-point algebra，以及 B1.4 的 monotone-form dynamics与 regular bulk-smeared state theorem。

#### B2 positive/negative Comparison

合并 B1.1 与本节可得清楚的对照：

$$\begin{align}
\text{finite physical ground state} &=\text{finite conforming ground state},\\
\text{bulk-smeared correlators} &\longrightarrow\text{connected vacuum correlators},\\
\text{strict-Dirichlet regional product Fock versus connected Fock} &:\quad\nexists\ \text{sharp unitary implementer}.
\end{align}$$

前两行是 port-extended B1/B2 positive result；第三行是不同 reference representation的 Hilbert--Schmidt obstruction。它们逻辑相容，并共同说明 massive free scalar continuum Route B 只在本文声明的 continuum algebra + dynamics + regular/bulk-smeared state scope内完成：intrinsic fixed-point/reduction-by-stages algebra、common-parent sharp weak-* state、large-coupling/two-parameter dynamics与 regular smeared state，而不是 sharp product-Fock equivalence；broad geometry与 explicit centered $1$D assumptions仍按本节及 Claim Boundary分别限制。

#### Local Quasi-Equivalence Away from the Artificial Cut

Global obstruction不自动传到每个 strictly interior local algebra。所需逻辑是先把 finite-interval covariance difference证明为 smooth kernel，再调用 Hadamard/local quasi-equivalence theorem；仅说“reflection hull无 singularity”并不充分。

先固定任意 Dirichlet interval $J=(a,b)$，长度 $\ell=b-a$，并写 $r=x-a$、$r'=x'-a$、$\tau=t-t'$。令

$$\begin{align}
k_n&=\frac{n\pi}{\ell},&\omega_n&=\sqrt{m^2+k_n^2}.
\end{align}$$

其 static Dirichlet vacuum two-point distribution是

$$\begin{align}
\boxed{ W_{\mathrm D}^{J}(\tau;x,x') =\frac1\ell\sum_{n=1}^{\infty} \frac{\sin(k_nr)\sin(k_nr')}{\omega_n} e^{-\mathrm i\omega_n(\tau-\mathrm i0)}.}
\end{align}$$

Massive $1+1$ Minkowski vacuum写成

$$\begin{align}
W_0(\tau,\xi) &=\int_{\mathbb R}\frac{\mathrm dk}{4\pi\sqrt{k^2+m^2}} e^{-\mathrm i\sqrt{k^2+m^2}(\tau-\mathrm i0)+\mathrm ik\xi}\\
&=\frac1{2\pi}K_0\!\left(m\sqrt{\xi^2-(\tau-\mathrm i0)^2}\right),
\end{align}$$

其中 square-root/$K_0$ 取 standard positive-frequency boundary-value branch。

这里的 normalization逐字自洽：Dirichlet mode $\varphi_n=\sqrt{2/\ell}\sin(k_nr)$ 与 positive-frequency factor $(2\omega_n)^{-1}$ 给 $\varphi_n(r)\varphi_n(r')/(2\omega_n)=\sin(k_nr)\sin(k_nr')/(\ell\omega_n)$；Minkowski convention则是 $\mathrm dk/(2\pi)$ 乘 $(2\omega(k))^{-1}$，即 $\mathrm dk/(4\pi\omega(k))$。

对 mode sum先插入 Abel factor $e^{-\varepsilon\omega_n}$。当 $\varepsilon>0$ 时，$e^{-\varepsilon\omega(k)}e^{-\mathrm i\omega(k)\tau}/\omega(k)$ 是 $k$ 的 smooth rapidly decreasing multiplier，故 ordinary Poisson summation合法；所得 identities在 tempered distributions中令 $\varepsilon\downarrow0$，得到同一个 positive-frequency boundary value。结合

$$\begin{align}
2\sin(k_nr)\sin(k_nr') =\cos(k_n(r-r'))-\cos(k_n(r+r'))
\end{align}$$

给 exact image representation：

$$\begin{align}
\boxed{ W_{\mathrm D}^{J}(\tau;x,x') =\sum_{p\in\mathbb Z}\left[ W_0(\tau,r-r'+2p\ell) -W_0(\tau,r+r'+2p\ell) \right].}
\end{align}$$

第一 bracket的 $p=0$ 项是唯一 direct Minkowski term；其余全部是 translated/reflected images。

**Theorem (explicit smooth-difference interior quasi-equivalence).** 考虑前述 massive $1+1$ model，令 $\omega_{\mathrm{conn}}$ 是 $J_{\mathrm{conn}}=(-L,L)$ 的 Dirichlet vacuum，$\omega_{\mathrm D}^{-}\otimes\omega_{\mathrm D}^{+}$ 是 $J_-=(-L,0)$、$J_+=(0,L)$ 上的 strict-Dirichlet product vacuum。取 relatively compact causally convex diamond $O$，其 closure包含于某一个 regional interval $J_{\mathrm{reg}}=(a,b)$。定义

$$\begin{align}
d_O&:=\inf_{(t,x)\in O}\min\{x-a,b-x\}>0,\\
T_O&:=\sup_{(t,x),(t',x')\in O}|t-t'|.
\end{align}$$

若满足明确的 sufficient condition

$$\begin{align}
\boxed{T_O<2d_O,}
\end{align}$$

则：

1. 所有 regional 与 connected non-direct image separations在 $O\times O$ 上 uniformly spacelike；两种 causal propagators限制到 $O$ 后都等于 direct Minkowski propagator，故给同一个 intrinsic boundary-free local CCR algebra $\mathfrak A(O)$；
2. image series连同任意 spacetime derivatives在 $O\times O$ 上 locally uniformly convergent，并且

$$\begin{align}
\boxed{ W_{\mathrm{conn}}-W_{\mathrm D}^{\mathrm{reg}} \in C^\infty(O\times O).}
\end{align}$$

3. Strict inequality允许选择稍大的 boundary-free globally hyperbolic diamond $\widetilde O$，使 $\overline O\subset\widetilde O\Subset\mathbb R_t\times J_{\mathrm{reg}}$ 且仍满足同类 image margin；两个 global states在同一个 intrinsic algebra $\mathfrak A(\widetilde O)$ 上诱导 quasifree Hadamard states。Verch theorem于是给其对 $\mathfrak A(O)$ 的 restrictions

$$\begin{align}
\boxed{ \pi_{\mathrm{conn}}|_{\mathfrak A(O)}
\ \simeq_{\mathrm{q.e.}}\
\pi_{\mathrm D,-\otimes+}|_{\mathfrak A(O)}.}
\end{align}$$

与此同时，前述 Hilbert--Schmidt calculation仍证明 global representations不 unitary equivalent。

**Proof.** 对 $x,x'\in[a+d_O,b-d_O]$，regional image formula中每个 non-direct spatial argument满足

$$\begin{align}
|r-r'+2p\ell|&\ge2d_O &&(p\neq0),\\
|r+r'+2p\ell|&\ge2d_O &&(p\in\mathbb Z).
\end{align}$$

第一行甚至有更强 lower bound，但 $2d_O$ 已足够。Connected interval不能只靠口头的 endpoint comparison；其 image arguments可直接估计。对 $J_{\mathrm{conn}}=(-L,L)$，令 $r_c=x+L$，则 non-direct translated arguments是

$$\begin{align}
r_c-r_c'+4pL=x-x'+4pL,\qquad p\ne0.
\end{align}$$

因为 $x,x'$ 位于同一个长度 $L$ 的 regional interior，$|x-x'|\le L-2d_O$，故其绝对值至少为 $3L+2d_O>2d_O$。Reflected arguments是

$$\begin{align}
r_c+r_c'+4pL=x+x'+2L+4pL.
\end{align}$$

若 $O\subset(-L,0)$，则 $x+x'+2L\in[2d_O,2L-2d_O]$，closest image为 $p=0$；若 $O\subset(0,L)$，则该 interval是 $[2L+2d_O,4L-2d_O]$，closest image为 $p=-1$。两种情形及其余 $p$ 均给 absolute lower bound $2d_O$。令 $\delta=2d_O-T_O>0$；于是所有 regional与 connected non-direct terms满足 $|\xi_{\mathrm{im}}|-|\tau|\ge\delta$。Massive Pauli--Jordan distribution在 spacelike separation为零，故所有 non-direct antisymmetric image terms逐项消失。两套 boundary theories对 $C_c^\infty(O)$ 的 causal propagator都等于 Minkowski one，因而通过 test-function quotient的 canonical identification给同一个 intrinsic local Weyl algebra。

在这个 uniformly spacelike set上，每个 non-direct $W_0$ 是 ordinary smooth $K_0$ function。对大 $|p|$，其 spacelike distance线性增长为 $2|p|\ell+O(1)$；$K_0$ 及其任意阶 derivatives满足 polynomial factor乘 $e^{-m(2|p|\ell+O(1))}$ 的 bound。Weierstrass test于是给 image series在 $O\times O$ 上连同全部 derivatives locally uniformly convergence；有限个小-$|p|$ terms由 margin $\delta$ 保证 smooth。因此

$$\begin{align}
W_{\mathrm D}^{J}-W_0\in C^\infty(O\times O)
\end{align}$$

分别对 $J=J_{\mathrm{reg}}$ 与 $J=J_{\mathrm{conn}}$ 成立，direct $W_0$ 相消即给 displayed covariance difference。它还逐字证明两个 restrictions具有 ordinary Minkowski Hadamard singularity，而不是借用 half-space theorem替代 finite interval；positivity与 quasifree property则由它们作为 global vacuum states的 restrictions继承。Product vacuum在 $O$ 所属 factor上的 two-point function正是 $W_{\mathrm D}^{\mathrm{reg}}$。

最后利用 strict margin把 $O$ 稍微扩大到上述 $\widetilde O$；同一 causal-propagator calculation把两者识别为同一个 intrinsic $\mathfrak A(\widetilde O)$ 上的 quasifree Hadamard states。Verch local quasi-equivalence theorem应用于这两个 states，再 restriction到 $\mathfrak A(O)$，完成结论。$\square$

$T_O<2d_O$ 只是一个透明、可计算的 sufficient condition；本文不称它与“无 reflected null bicharacteristic返回”逻辑等价。条件也不能简化成某一 Cauchy slice上 $\operatorname{dist}(\overline O,\{0\})>0$ 而不限制 time extent：足够长的 region会接收到 reflected causal support。对这类较大 $O$ 以及 general product/curved timelike boundaries，仍需单独证明 covariance difference smooth或相应 boundary-Hadamard/local-normality criterion；本文不从本 theorem外推。

## Part VI — Continuum and Quantum Diagnostics

### Continuum Trace and Operator-Domain Warning

Classical 与 quantum statements 必须分开：

- 对 smooth spatial interface，classical energy field 的 trace 通常属于 boundary Sobolev space，例如 $H^1(\Sigma_i)\to H^{1/2}(\Sigma_{ij})$。这给出的是 trace class，不是逐点光滑函数。
- normal/conormal flux 在 full energy space 上通常只能通过 Green identity 定义为 weak boundary functional；若没有额外 graph-domain regularity，不写逐点 $\partial_n\Phi$。
- 在 continuum QFT 中，$\Phi$ 是 operator-valued distribution。把它限制到 timelike interface 不是自动合法的 operator operation；必须声明 regulator、common invariant domain、smearing，或满足相应 distributional restriction 条件。
- 因而 $q(t,z)$ 与 $\Pi(t,z)$ 在 quantum formulas 中应被理解为 regulated quantities 或 boundary-smeared distributions。未加限定的 “operator-valued boundary history” 只是一种 formal shorthand。

在 1D classical energy space $H_0^1(-L,L)$ 中，point trace $q(t)=\Phi(t,0)$ 连续；但 connected vacuum 的 equal-time variance at the cut logarithmically diverges。因此 classical trace convergence 不等于存在普通的 unsmeared quantum operator $q(t)$。同样，velocity 只在 $L^2$ 中时没有 point trace，所以 $\dot q$ 和 $\pi_{q,N}=\rho_N\dot q_N$ 没有独立的 continuum point-observable interpretation。

### Sanity Checks Against the Existing 1D Construction

下面的既有结果是本 general formalism 的 checks，不是一般 theorem 的替代：

1. [1D scalar construction](<Articles/Quantization in AdS/gluing/formalism.md>) 从 summed action 导出 $\phi_1'(L)+\phi_2'(L)=0$。其中 $D(k)=k\cot(kL)=+\phi_i'(L)/q$ 是 conventional outward-derivative ratio，而本文 $\Pi_i=-\phi_i'(L)$，故 boundary-triple Weyl response 是 $M(k^2)=-D(k)$。$D(k)$ 的 zeros 给出 nonzero-trace common sector；regional Dirichlet poles 必须回到 original amplitude/Cauchy-data relation，恢复 $q=0$ relative sector。两支合并为完整 global Dirichlet spectrum $k_r=r\pi/(2L)$。
2. [Lifting-operator realization](<Articles/Quantization in AdS/gluing/lifting operator formalism.md>) 验证 $h(y)=y/L$、$A_n=(-1)^{n+1}\sqrt{2L}/(n\pi)$ 与 driven equation $\ddot c_{i,n}+\omega_n^2c_{i,n}=-A_n(\ddot q_i+m^2q_i)$。其中 $h=\sum_nA_nu_n$ 只在 $L^2$ 中成立，不能当作 boundary-trace identity。
3. 同一 [1D scalar construction](<Articles/Quantization in AdS/gluing/formalism.md>) 的 finite truncation 验证上面的 $\rho_N$ equation、完整 $(2N+1)$-pair canonical system 与 generalized normal-mode map。
4. [Continuum closure theorem](<Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation.md>) 证明 conforming port spaces 在 $H_0^1\oplus L^2$ energy topology 中的 form density、Mosco/strong-resolvent convergence、wave/symplectic/1D trace convergence，以及 spatially smeared Gaussian correlator convergence。它不证明 $\dot q_N$ 的 pointwise convergence、unsmeared cut covariance、pointwise flux 或 continuum Fock-space unitary equivalence。
5. [Sharp product-Fock diagnostic](<Articles/Quantization in AdS/gluing/Fock failure.md>) 是另一个可选问题：它证明指定的 sharp regional product representation 与 connected representation 在 continuum 中不满足 Hilbert--Schmidt criterion。这个结果不阻碍 intrinsic connected quantization，也不是 classical gluing 的成立条件。
6. [Higher-dimensional sharp-Fock comparison](<Articles/Quantization in AdS/gluing/archived/higher-dimensional-sharp-fock-comparison.md>) 的 $\ell=0$ channel 已证明同一 fixed-row obstruction 在每个 dimension 都存在；其 accumulated cutoff rate 只是 regulator-dependent power counting。该 archived note本身没有证明 field-valued port closure；本文 Part V 的 product-cylinder theorem现在另行证明 $K_\perp(N)=N$ schedule下的 classical/Mosco与 bulk-smeared covariance convergence，并明确不触及这个 Fock obstruction。

### Claim Boundary and Open Problems

**Established at the formal level under the displayed assumptions:**

- polarization-independent variational trace phase spaces、$\mathsf S_e\subset\overline{\mathcal Z_{i,e}}\times\mathcal Z_{j,e}$ full-trace Lagrangian sewing，以及其 cotangent realization $q_j=J_{ij}q_i$、$\Pi_i+J_{ij}^*\Pi_j=0$；
- boundary canonical/polarization transformation 与 physical $S_\Gamma[q,\chi]$ 的区分，以及同步 push forward evolution relation、sewing、JKM/corner representatives 时 glued solution/symplectic/reconstruction target不变的 relation-level polarization covariance；任意 canonical transformation不必保留 causal graph presentation，只有 transformed polarization重新满足 dynamical admissibility且 input projection可逆时才有 map-level response covariance；
- variational polarization与满足 constraint propagation、incoming-characteristic admissibility、hyperbolic energy estimate、causality及 corner compatibility 的 admissible dynamical polarization之区分；causal $\mathcal R_i$ 只在后者及其 actual graph domain上定义；
- complete regional action给出的 dual-space port data、corner completion 与 genuine $S_\Gamma[q,\chi]$ coupled matching equations；
- time-slab on-shell action 对 input--output graph 的 exact-isotropic generating identity；finite-dimensional regular endpoint problem 中的 exact Lagrangian graph proof；
- symplectic balance、fixed-initial-data **compatibility-vertical domain** 上的 retarded response antisymmetric-part identity，以及 time-translation-invariant theory 对 polarization-adapted canonical Hamiltonian $H_i^{\mathrm{pol}}$ 的 completed interface-boundary power balance与 pairwise cancellation；raw stress-energy charge可相差相应 boundary endpoint functional；
- $L_{\mathrm{sew}}=N^*\Delta$ 的 cotangent-coordinate exact Lagrangian proof、derivative-free interface functional 的 generating shift，以及带 kinetic $q$ 或 $\chi$ 时使用 full interface evolution relation 的 composition formulation；
- admissible variation tier 上的 pairwise symplectic-flux cancellation；在 smooth-structure/two-stage embedded-zero-locus hypotheses 下，$\Omega_{\mathrm{glued}}$ 才是 $\mathcal C$ 上的 pullback two-form；
- displayed reconstruction hypotheses 下的 $\mathcal P_M\simeq\mathcal C$ theorem、对所有 internal edges 完整施加的 fixed-partition associativity 与 artificial-refinement symplectomorphisms；这些 propositions 始终限于 declared smooth pairwise-interface baseline，不含需要额外 corner data 的 codimension-two junction/corner strata；triple junctions/genuine spatial corners 所需 compatible joint trace spaces、corner/JKM completion 与 clean/split composition hypotheses 未在本文证明；
- regional Cauchy-slice composition、在 evaluation-bijection/finite-energy trace/weak Stokes/corner hypotheses下的 general global/glued commuting diagram与 observable covariance；linear KG energy class的 hard PDE realization只覆盖 Part II declared ultrastatic constant-time slices；
- strong-symplectic tier 或 declared Hamiltonian-admissible partial-Poisson algebra上的 classical observable reconstruction，以及 linear bosonic connected Weyl algebra 的 partition/refinement-independent abstract isomorphism；
- exact extension independence；
- linear KG energy class 中由 Sobolev patching 与 weak transmission identity 给出的 reconstruction/symplectic proof；
- $1+1$ KG 的 balanced strong-Hilbert topology与 $H_0^2(I)$ history cotangent中，separated-frequency Bessel estimate、两次 endpoint integration by parts及 energy-transposition argument逐项证明 $C:\mathcal B\to\mathcal P_{1/2}$、$D:\mathcal P_{1/2}\to\mathcal B^*$、$R:\mathcal B\to\mathcal B^*$ bounded；typed Green identities随后闭合 $\mathscr U_{\mathrm{KG}}^{\mathrm H}$ 的 closed split Lagrangian proof；closed-range、zero-excess与 closed split projection hypotheses下 composition仍 Lagrangian；
- ordinary boundary-triple，或满足已声明 upper/lower-half-plane quasi-triple range/domain hypotheses 时，self-adjoint static sewing、在合法 trace domain 上的 off-pole Weyl spectral condition、range-valued Kreĭn resolvent formula与 pole-complete Cauchy-data relation；
- linear static KG 的 self-adjoint mode expansion、correct initial-data projection 与 retarded solution；
- $d\le3$ semilinear defocusing scalar在 explicit local/small-data slab上的 IBVP、nonlinear causal response及其 derivative、weak/strong reconstruction、glued symplectic与 power balance；
- general Proca first variation、constraint-reduced Cauchy form与 tangential port identities；此外 $1+1$ ultrastatic interval中通过 exact massive-scalar Neumann reduction闭合 causal response、sewing、reconstruction与 completed power theorem；
- Dirac graded boundary form、half-dimensional polarization与 invariant sewing；Lorentzian MIT model中，Ginoux--Murro admissible-boundary theorem应用于允许 support接触 timelike boundary的 reduced $\Gamma_c^\infty$ data，在全阶 corner compatibility下给唯一 smooth driven solution、finite propagation、lifting-independent continuous response及 full-trace reconstruction；Große--Murro 的较窄 $\Gamma_{cc}$ theorem不承担该 lifting existence claim；
- $[-L,L]\times S_{R_s}^{d-1}$ product model中 $K_\perp(N)=N$ 的 concrete two-scale theorem：$H^{1/2}$ trace-space density、Mosco、embedded strong resolvent，以及通过 common-energy-space skew-adjoint generators与 Trotter--Kato 得到的 compact-time energy-wave/interface-trace convergence；symplectic与 bulk-spatially-smeared quasifree two-point convergence随之闭合；
- fixed-history regional algebras不足以 quantum glue 的 no-go proposition，以及 covariant $L_{\mathrm{sew}}$ 中 continuity/flux relation 与 equal-time holonomic/secondary constraints、shared-port dynamics 的精确区分；
- 对任意 finite linear duplicate-port system，在 $M^{\mathrm{dup}}>0$、$A$ full row rank 下证明 $(\chi,\psi)$ regular second class，给出 $G=AM^{-1}A^T>0$、Dirac bracket、canonical symplectomorphism $\varphi_{\mathrm{red}}:T^*Q^{\mathrm{conf}}\simeq\mathsf C$ 与 exact Hamiltonian pullback；
- finite holonomic locus $\mathsf H=\{Ax=0\}$ 的 coisotropic theorem：$\mathsf H^\sigma=\{(0,A^T\lambda)\}$、canonical quotient $\mathsf H/\mathsf H^\sigma\simeq T^*(\ker A)$，以及 $\psi=AM^{-1}p=0$ 作为每条 characteristic orbit上唯一 $M$-dependent symplectic slice；故 coisotropic reduction与现有 second-class realization canonically等价；
- finite coisotropic CCR theorem：先取 characteristic relative commutant/fixed points得到 $\mathfrak W(\mathsf H)$，再在其 central radical上 quotient by $W(\ell)-1$ 得 $\mathfrak W(\mathsf H/\mathsf H^\sigma)$；直接在 parent quotient会 collapse。该 universal quotient经 $M$-slice与 B1.1 embedded second-class Weyl factor canonically同靶，但一般不是 regular parent representation中的 constraint subspace；
- finite intrinsic quantum-factor theorem：$\mathcal S^{\mathrm{dup}}=\mathsf C\oplus^\sigma\mathcal N$，$\mathfrak W(\mathcal S^{\mathrm{dup}})\simeq\mathfrak W(\mathsf C)\otimes_{\min}\mathfrak W(\mathcal N)$，且 $\mathfrak A^{\mathrm{phys}}=\mathfrak W(\mathcal N)'\cap\mathfrak W(\mathcal S^{\mathrm{dup}})=\mathfrak W(\mathcal S^{\mathrm{dup}})^{\operatorname{Ad}W(\mathcal N)}=\mathfrak W(\mathsf C)\simeq\mathfrak W(T^*Q^{\mathrm{conf}})$；normal factor不是 gauge，partial trace只是 state restriction/coarse-graining；finite physical ground state精确等于 conforming ground state；
- second-class determinant identity $\det(AM^{-1}A^T)=\frac{\det(AA^T)}{\det(I^TI)}\frac{\det M_{\mathrm{conf}}}{\det M}$ 的 adapted-basis proof，以及 normalized Faddeev--Senjanović measure降到 configuration space后内禀给出 $(2\pi\mathrm i\varepsilon)^{r/2}\sqrt{\det G}\,\delta(Ax)=\nu_\varepsilon\delta_{A,I}(x)$；因此 sewing prefactor不是为匹配 kernel而手调；
- $N^*\Delta$ 的 normalized delta/half-density quantization、symplectic graph的 metaplectic realization边界，以及在每个 internal time slice施加 sewing kernel后与 reduced/conforming Gaussian propagator逐 slice相等的 theorem；fixed-history regional Gaussian amplitudes按同一 canonical boundary measure积分也严格给 conforming/global kernel；Euclidean DtN-sum/Schur-complement只作为 finite theorem及 BFK continuum analogue；
- independent row blocks下的 finite reduction-by-stages theorem：每步使用 $\widetilde A_2=A_2I_1$、updated $M_1$ 与 Schur complement $\widetilde G_2$；one-shot/staged symplectic maps、Hamiltonians、Weyl normal fixed points、determinant half-densities与 sewn kernels满足 exact associativity/cocycle；
- centered $1$D duplicate-port $M^{\mathrm{dup}},K^{\mathrm{dup}},A_\Delta,I$、constraint matrix $G=4/\rho_N$、$(2N+1)$ reduced pairs与 $\rho_N$ equation的完整 analytic derivation；并证明 $\mathfrak a(e_N,u_m)=-A_mk_m^2$、$\mathfrak a(e_N,e_N)=(2N+1)/L+m^2r_N$、Rayleigh scale $\sim\pi^2N^2/L^2$、$\rho_N\sim4L/(\pi^2N)$ 与 normalized normal lift weakly趋零。Finite normal factor只是 kinematic、一般不被 parent Hamiltonian保持；
- continuum weak symplectic parent $\mathcal S_\infty^{\mathrm{dup}}$ 与 abstract CCR algebra $\mathfrak A_\infty^{\mathrm{dup}}$ 已构造；对 discrete quotient $\Gamma=\mathcal S_\infty^{\mathrm{dup}}/\mathsf C_\infty$ 的 compact dual证明 point-norm continuous outer action、Haar expectation与

$$\begin{align}
  (\mathfrak A_\infty^{\mathrm{dup}})^{\widehat\Gamma} =\mathfrak W(\mathsf C_\infty) \cong\mathfrak W(\mathcal S_M).
\end{align}$$

  同时 $\mathsf C_\infty^\sigma=0$、boundary characteristic vector是 $L^2$ 外的 delta distribution，故 fixed-point kinematic reduction存在而 finite-type normal factor/regular split second-class realization不存在；nested sewing subspaces的 dual exact sequence、第二阶段 quotient-character action与 Haar expectation composition另给 continuum reduction by stages及 three-region quantum associativity；
- 任意 $\widehat\Gamma$-invariant parent state都满足 $\omega(W(z))=0$ for $z\notin\mathsf C_\infty$，故 transverse-nonregular；$\widetilde\omega_\infty=\omega_{\mathrm{conn}}\circ E$ 是 connected vacuum的唯一 invariant parent extension。所有 finite-$\kappa$ regular ground states作为同一 parent Weyl algebra上的 states generatorwise并 full weak-* converge到 $\widetilde\omega_\infty$；对 nonzero jump configuration-component label，$W(u,0)$ 的 $K_\kappa^{1/2}$-controlled Weyl covariance由 fractional-power/Gagliardo proof发散，物理上对应 conjugate-momentum fluctuation而非 jump coordinate variance；
- Weyl $C^*$-norm discontinuity $\|W(f)-W(g)\|=2$ 的 proof、$\mathfrak A_\infty\cong\mathfrak W(\mathcal S_{\mathrm{alg}},\sigma)$ 的 abstract algebraic-union characterization及其在 full continuum Weyl algebra中的 closed proper embedding，以及 $1$D/product-cylinder finite states在 cylindrical net上的 pointwise convergence；任意 extensions到同一 $\mathfrak A_\infty$ 后 weak-* convergence到 connected-state restriction，bulk-smeared characteristic/$n$-point functions也收敛；
- 对所有 finite $\kappa$，$D(K_\kappa^{1/2})=V^{\mathrm{dup}}$，故 finite dynamics统一作用于同一 algebraic symplectic space与 parent Weyl algebra；同时 explicit label net与 finite-flow example证明 $z\mapsto E(W(z))$ 在 energy-label topology 中不连续，且 $E$ 不与 generic finite-$\kappa$ dynamics intertwine；$E$ 本身作为 $C^*$-algebra linear map仍 contractive/norm-continuous。Negative structural lesson是 sharp algebraic reduction不是 continuous dynamical retraction；真正的 dynamical compatibility是 chosen common Fock bulk core的 strong multitime convergence，stationary one-point identity仅为 weak-* state-limit corollary；
- centered massive $1$D soft-defect constraint forms $\mathfrak a_\kappa=\mathfrak a^{\mathrm{dup}}+\kappa|A_\infty\cdot|^2$ 的 closedness、uniform lower bound与 monotonicity，以及 Simon--Kato form theorem给出的 $K_\kappa\to K_{\mathrm{conn}}$ strong resolvent；Green identity给 exact domain $u_-'(0)=u_+'(0)=-\kappa[u_-(0)-u_+(0)]$，即 finite coupling已满足 flux balance而允许 $\kappa^{-1}$-sized jump。Heat、共同 energy coordinates中的 compact-time wave dynamics、bulk-smeared massive covariance与 chosen common Fock core上的 Weyl unitaries随之收敛；bounded finite Lipschitz scalar partitions在 $L^2$ jump-trace penalty及 compatible global coefficients/bundle/outer-boundary data下有同一 monotone/Sobolev-patching hard-limit theorem；若 coefficients genuinely piecewise，target相应为 transmission operator；
- finite forms $\mathfrak a_{N,\kappa}=\mathfrak a_N^{\mathrm{dup}}+\kappa|A_{\mathrm{sew}}^{(N)}\cdot|^2$ 的 Woodbury/Schur theorem：fixed $N$ hard limit是 exact compressed conforming resolvent，fixed $\kappa$ Galerkin limit是 $K_\kappa$，两条 iterated limits均为 $K_{\mathrm{conn}}$；在 duplicate/conforming exact form-core hypotheses下，任意 $N_j,\kappa_j\to\infty$ cofinal path都 Mosco/embedded-strong-resolvent converge，并推进到 massive bulk-smeared covariances/states。Arbitrary-cofinal strength依赖 $W_N\subset\ker A$ 使 recovery penalty严格为零，不适用于 generic asymptotically conforming schemes；
- 两套 conforming/Mosco regulator/partition schemes在共同 global bulk-smearing labels上都收敛到同一 connected quasifree state的 bulk-cylindrical theorem；包括 fixed moving-cut position的 pointwise-in-cut corollary，但不声称 uniform-in-cut或 nonconforming independence；
- massive $1+1$ model中，对 $T_O<2d_O$ 的 relatively compact diamond，finite-interval mode sum经 Abel--Poisson变成 explicit image sum；所有 non-direct terms uniformly spacelike且 image series连同全部 derivatives locally uniformly convergence，故 $W_{\mathrm{conn}}-W_{\mathrm D}^{\mathrm{reg}}\in C^\infty(O\times O)$，再由 Verch得到 local quasi-equivalence；global sharp product-Fock unitary inequivalence仍成立。

**Still requires separate proof in a general model:**

- 超出 displayed semilinear scalar specialization 的 general nonlinear/quasilinear IBVP、response differentiability与 weak-to-strong transmission theorem；
- corners/triple junctions 的 compatible trace spaces、JKM representative 与 complete corner dynamics；
- general theory中 $\mathcal C$ 的 regularity、$\Omega_{\mathrm{glued}}$ 的 nondegeneracy，以及超出 displayed strong-Hilbert KG theorem 的 weak/Fréchet $\mathscr U_i$ maximality与 clean composition；
- general smooth tilted Cauchy surfaces上的 KG existence/surjectivity、finite-energy trace theorem及其与 physical timelike boundary相交处的 corner regularity；本文 hard slice-covariance corollary不覆盖这一 PDE realization；
- general $S_\Gamma[q,\chi]$ defect IBVP、interface Hamiltonian nondegeneracy 与 defect reconstruction theorem；
- arbitrary higher-dimensional/curved timelike boundary上的 inhomogeneous Proca polarization IBVP；超出 displayed compatible smooth MIT subclass 的 optimal no-loss finite-Sobolev driven estimate，以及一般 Dirac projector simultaneous hyperbolic/self-adjoint/elliptic analysis；
- quasi boundary triples 中超出 displayed coupling hypotheses 的 self-adjoint extension/range theorem，以及 Weyl-invisible reducing sectors 的 model-specific排除；
- 超出 displayed product cylinder 的 general curved-interface two-scale schedule、rates、pointwise flux与 sharp-interface quantum observables；
- boundary operator distributions 的 domains、smearing class 与 renormalization；
- 超出 finite regular linear second-class class的 nonlinear/singular quantum constraints、interacting sewing、gauge/BV/BRST、anomalies与 common operator domains；
- 超出本文 clean Gaussian/linear class的 general canonical-relation FIO composition、infinite-dimensional Maslov/domain theory，以及 causal graph admissibility；
- continuum boundary normal quantum tensor factor与 regular split second-class $R_\infty$ 不是尚待补一个 proof的正 claim，而是当前 energy symplectic category中由 $\mathsf C_\infty^\sigma=0$ 与 UV escape排除的 finite-type structure；若改用 enlarged boundary Sobolev/rigged phase space，仍须重新指定 dynamics、positivity与 state，本文未构造；
- infinite-dimensional Lorentzian boundary-history measure、functional determinant/renormalization与 amplitude-correspondence composition domain；本文只证明 finite Gaussian fixed-history theorem，并把 zeta-regularized BFK/DtN gluing保留为 Euclidean benchmark；
- sharp interface operators、pointwise flux与 finite GNS Hilbert spaces的 canonical embedding；full continuum Weyl algebra不是 proper finite-stage algebraic union的 $C^*$-norm closure，本文只在后者及 regular smeared-state topology中陈述 convergence；
- present schedules的 full resolvent-algebra continuum reduction，以及 curved/non-product/nonconforming regulators中的 state tightness；
- Layer B2 中超出 displayed $T_O<2d_O$ diamond的 away-from-cut local quasi-equivalence、long-time reflected causal support、general timelike-boundary Hadamard/local-normality theorem，以及其他 representation comparisons。

本文的 quantum claim精确是：**fixed-history Weyl fibres本身仍不能 glue；finite regular linear level的 coisotropic quotient、second-class slice、parent normal Weyl factor、Dirac/conforming quantization、second-class-normalized sewing kernel及 fixed-history Gaussian integration给同一个 physical theory，并满足 reduction by stages/refinement associativity。Massive free scalar Route B 仅在 continuum algebra + dynamics + regular/bulk-smeared state这一精确 scope内闭合：outer fixed-point及 continuum reduction by stages给 connected CCR；finite-$\kappa$ dynamics/states位于同一 parent CCR；large-coupling与 finite-$N$ exact reduction组成 commuting two-parameter approximation；$\omega_\kappa\to\omega_{\mathrm{conn}}\circ E$ weak-* 并显出 transverse nonregularity；regular bulk observables/states具有 stated regulator/artificial-partition independence。** Broad scalar hard-limit/covariance theorem限于 bounded finite Lipschitz partitions、$m>0$、compatible global principal coefficients/density/bundle metric/potential、bundle identifications与 physical outer boundary data；若 coefficients genuinely piecewise，target就是相应 transmission operator。Arbitrary-cofinal two-parameter conclusion依赖 exact recovery $W_N\subset\ker A$，不覆盖 generic asymptotically conforming penalty schemes。Explicit transverse weak-* theorem、finite $(N,\kappa)$ matrix theorem与 B2 image-sum theorem仍按 displayed centered $1$D assumptions。Penalty family始终只是 constraint implementation regulator/soft defect approximation，不是 classical sewing definition。Continuum normal CCR tensor factor与 regular split second-class $R_\infty$ 在当前 energy category是已证明 absent 的 finite-type structure，不是 open positive target；真正仍开放的是 infinite-dimensional Lorentzian boundary-history measure、sharp interface operators、general interacting/gauge/BV quantum gluing、general FIO composition、broader B2 representation theory与 global product-Fock equivalence。Sharp product-Fock non-unitarity保留；false $E$--dynamics square已作为 negative theorem，而非欠缺的 compatibility claim。

## Focused Framework References

这些文献只支撑下列成熟接口与术语；正文的 sign conventions、specialization formulas 与 conditional theorem statements 仍由本文逐式给出。

- Boundary triples、coupling 与 Lipschitz traces：[Behrndt--Derkach--Gesztesy--Mitrea, *Coupling of symmetric operators and the third Green identity*](https://arxiv.org/abs/1607.07159)，[Behrndt--Micheler, *Elliptic differential operators on Lipschitz domains and abstract boundary value problems*](https://arxiv.org/abs/1307.7501)，以及 pole 处 multivalued DtN relations 的 [Behrndt--ter Elst](https://arxiv.org/abs/1403.3167)。正文只在 regularized Hilbert trace space 与 displayed range hypotheses 下调用 quasi-triple coupling theorem。
- Boundary action、Hamilton--Jacobi 与 canonical relations：[Vankerschaver--Liao--Leok, *Generating Functionals and Lagrangian PDEs*](https://arxiv.org/abs/1111.0280)，[Cattaneo--Mnev, *Wave relations*](https://arxiv.org/abs/1308.5592)，以及 weak-symplectic composition 的 [Cattaneo--Contreras, *Split Canonical Relations*](https://arxiv.org/abs/1811.10107)。
- Second-class quantum constraints与 $C^*$-constraint scope：[Grundling--Hurst, *The Quantum Theory of Second Class Constraints: Kinematics*](https://doi.org/10.1007/BF01218261) 直接讨论 noncommuting second-class variables为何不能同时 sharp annihilate regular states；[Grundling--Lledó, *Local Quantum Constraints*](https://arxiv.org/abs/math-ph/9812022) 处理 local/global constraint systems与 reduction by stages，但其 gauge/first-class machinery在本文只作范围对照，不承担 non-gauge sewing theorem。正文 finite result由显式 Dirac symplectic factor与 Weyl universal property自行证明。
- Finite second-class path-integral measure：[Senjanović, *Path Integral Quantization of Field Theories with Second-Class Constraints*](https://inspirehep.net/literature/112770) 给出 Hamiltonian measure中的 constraint deltas与 Poisson-matrix determinant。本文重新固定每 slice 的 $(2\pi)^{-n}\mathrm d^nx\mathrm d^np$ convention，并由 adapted canonical coordinates自行导出额外 $(2\pi)^r$、square root与 configuration sewing factor，不从 gauge fixing公式类推。
- Weyl factorization与 regular representation boundary：[Slawny, *On factor representations and the $C^*$-algebra of canonical commutation relations*](https://doi.org/10.1007/BF01878451) 用于 universal CCR algebra的 uniqueness/simplicity背景；finite-dimensional regular Schrödinger/field-algebra structure另参照 [Georgescu--Iftimovici](https://arxiv.org/abs/1902.10026)。正文 relative-commutant theorem另行使用 symplectic direct sum、amenable twisted-group nuclearity、scalar center与 slice maps证明；von Neumann $\mathcal B(\mathcal H_{\mathsf C})\bar\otimes1$ statement明确只在 Stone--von Neumann regular factorization中使用。
- Compact-group $C^*$ dynamics、Haar conditional expectation与 degenerate CCR quotient：[Pedersen, *$C^*$-Algebras and Their Automorphism Groups*](https://www.sciencedirect.com/book/9780128141229/c-algebras-and-their-automorphism-groups) 用于 point-norm compact action/fixed-point的标准背景；[Petz, *An Invitation to the Algebra of Canonical Commutation Relations*](https://math.bme.hu/~petz/CCR.pdf) 记录 presymplectic radical产生 central Weyl elements的 universal CCR结构。正文 finite coisotropic quotient、continuum quotient-character fixed point及 reduction by stages均以 discrete quotient exact sequence、character extension、Weyl spans与 Haar averaging自行证明；特别地没有把 first-class group action theorem套到 second-class pair。
- Reduction by stages的标准 symplectic背景参照 [Marsden--Misiołek--Ortega--Perlmutter--Ratiu, *Hamiltonian Reduction by Stages*](https://doi.org/10.1007/978-3-540-72470-4)。该书主要处理 symmetry/momentum-map reduction；本文 non-gauge linear second-class theorem不由它直接推出，而由 updated $\widetilde A_2,M_1$、Schur complement与 explicit $\varphi_{\mathrm{red}}$ composition自证。
- Gaussian boundary/DtN gluing的 Euclidean benchmark：[Burghelea--Friedlander--Kappeler, *Mayer--Vietoris type formula for determinants of elliptic differential operators*](https://doi.org/10.1016/0022-1236(92)90099-5) 给 zeta determinant、Neumann-type interface operator与 local factor的 analytic gluing；[Reshetikhin--Vertman, *Combinatorial Quantum Field Theory and Gluing Formula for Determinants*](https://arxiv.org/abs/1403.6170) 给 discrete Gaussian/DtN counterpart。正文只把它们用于 Euclidean benchmark，不把 zeta determinant identity当作 Lorentzian canonical sewing theorem。
- Resolvent algebra：[Buchholz--Grundling, *The Resolvent Algebra: A New Approach to Canonical Quantum Systems*](https://arxiv.org/abs/0705.1988) 支撑 resolvent generators、regular representations与 linear constraint discussion；其 linear Dirac-state criterion要求 constraint subspace isotropic，所以不能直接对完整 $(\chi,\psi)$ second-class pair作 T-procedure。正文只构造 finite $\kappa$-induced physical resolvent factor，把 continuum resolvent limit保留为 open problem。
- Linear canonical relations、FIO与 metaplectic normalization：[Hörmander, *Fourier Integral Operators I*](https://doi.org/10.1007/BF02392052) 与 [Weinstein, *Symplectic Categories*](https://arxiv.org/abs/0911.4133) 支撑 canonical-relation/clean-composition language；free symplectic block的 generating function、double metaplectic lift与 determinant/Maslov normalization用 [Dias--de Gosson--Prata](https://arxiv.org/abs/2405.10651) 核对。正文 theorem只完成 finite linear Gaussian sewing，不声称 general FIO functor。
- CCR regularity、ground representation与 quasifree state boundary：[Buchholz--Grundling](https://arxiv.org/abs/0705.1988) 的 Weyl-versus-resolvent discussion用于核对 universal Weyl norm topology；[Rieckers, *The Regular Ground States of the Linear Boson Field in Terms of Soft Modes*](https://doi.org/10.4171/PRIMS/56-1-6) 明确区分 Weyl algebra上非 point-norm-continuous的 quasifree automorphisms与 regular representation中 strongly continuous positive-energy implementation，本文据此固定 “regular ground state/representation” 的 GNS术语；quasifree covariance/representation distinction另参照 [Araki--Yamagami, *On Quasi-equivalence of Quasifree States of the Canonical Commutation Relations*](https://doi.org/10.2977/prims/1195183576)。本文的 $\|W(f)-W(g)\|=2$ 与 fixed-word state convergence均另给 self-contained proof，不从 quasi-equivalence criterion反推 unitary equivalence。
- Finite-interval image sum与 local quasi-equivalence：[Fulling--Ruijsenaars, *Temperature, periodicity and horizons*](https://doi.org/10.1016/0370-1573(87)90136-0) 的 massive image-sum/large-image damping discussion只作一般背景；正文从 normalized Dirichlet mode sum自行作 Abel regularization、Poisson summation并证明 $T_O<2d_O$ 下全部 non-direct terms及其 derivatives局部一致收敛，未用 half-Minkowski Robin theorem替代 finite interval。[Verch, *Local definiteness, primarity and quasiequivalence of quasifree Hadamard quantum states in curved spacetime*](https://doi.org/10.1007/BF02173427) 只在 causal propagators已给同一 intrinsic local Weyl algebra、两项 positivity/quasifree property由 global restrictions继承、smooth-difference已给 Hadamard property之后，用于稍大 boundary-free globally hyperbolic diamond上的 local quasi-equivalence。
- Proca constraints/Cauchy theory 与 admissible hyperbolic boundaries：[Schambach--Sanders](https://arxiv.org/abs/1709.01911)，[Moretti--Murro--Volpe](https://arxiv.org/abs/2210.09278)，[Ginoux--Murro](https://arxiv.org/abs/2007.02544)。最后一篇是 general Friedrichs-system theorem，不被冒充为任意 Proca boundary history 的专门 theorem；本文 concrete $1+1$ result由逐分量 Proca--Neumann-KG equivalence自行证明。
- Dirac graded fields与 Lorentzian timelike MIT IBVP：[Rejzner](https://arxiv.org/abs/1101.5126)，[Große--Murro](https://arxiv.org/abs/1806.06544)，[Ginoux--Murro](https://arxiv.org/abs/2007.02544)；另以 Riemannian/elliptic first-order boundary 与 transmission术语参照 [Bär--Ballmann](https://arxiv.org/abs/1101.1196)。Große--Murro Theorem 1.1 明写 $\Gamma_{cc}$ interior-supported data，故正文只用它核对原始 MIT model、compatibility提醒与 Clifford convention；允许 lifting source接触 boundary的 existence/uniqueness/finite propagation/smooth continuity改由 Ginoux--Murro Theorems 1.1--1.2、Proposition 3.3、Theorem 4.8与 Section 6.2 支撑。Bär--Ballmann不被用作 Lorentzian hyperbolic theorem。
- Nested closed forms、Mosco 与 spectral convergence的抽象接口参照 [Kuwae--Shioya, *Convergence of spectral structures*](https://doi.org/10.4310/CAG.2003.v11.n4.a1)；bounded form-domain trace maps参照 [Post, *Boundary pairs associated with quadratic forms*](https://arxiv.org/abs/1210.4707) 的 framework；increasing positive closed forms及 nondensely-defined hard limits参照 [Simon, *A canonical decomposition for quadratic forms with applications to monotone convergence theorems*](https://doi.org/10.1016/0022-1236(78)90094-0) 与 [Kato, *Perturbation Theory for Linear Operators*](https://doi.org/10.1007/978-3-662-12678-3)；fractional order背景核对 [Heinz, *Beiträge zur Störungstheorie der Spektralzerlegung*](https://doi.org/10.1007/BF02054965)。正文以 spectral Stieltjes representation、resolvent order与 monotone convergence自足证明 $K_\kappa^\alpha$ 的 exact limit form/operator，并只使用 $D(K_\infty^{1/4})\subset H^{1/2}$ 与 Gagliardo jump divergence；文献不替代这些 specialization proofs。
