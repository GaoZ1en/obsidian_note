# Gauge observable sewing: proved theorem interfaces

**现有结果支持三类带明确输入的 sewing implication：classical descent、algebraic core quotient、representation／net sewing。** 本文提炼各模型已经使用的证明接口；“compact group”或“YM/CS type”不替代这些输入，也不使三种 target 自动成为同一种 quantum algebra。

## 1. 首先固定对象类型

| 层 | Source／target 的实际类型 | 不能由此推出 |
|---|---|---|
| Classical continuum | solutions、joint trace、proper-gauge quotient、CPS 与指定 regular functions | quantum existence、任意 operator domain |
| Current／finite operator core | finite polynomial labels、universal enveloping/Rees algebra 或实际 finite words | 任意 Hilbert／$C^*$／von Neumann completion |
| Flat holonomy presentation | 带 peripheral words、frames、ribbon order 的 gauge groupoid | 物理边长趋零的 PDE／几何极限 |
| Quasi-Hamiltonian port | $(X,\omega,\mu)$，$\delta\omega=-\mu^*\chi$ | 原 closed physical CPS 的普通 Poisson quotient |
| Charged field | 模式域、argument tests、实际 primary intertwiners、ordered distributions | 任意 point operators 或统一 time-zero algebra |
| Integrable representation／net | modules、local bounded algebras、Connes Gram completion | universal current two-sided ideal 的同一 quotient |
| Topological index | prequantized compact port 的 Verlinde-ring element | actual Hilbert maps、operator kernel、场算符域 |

## 2. 每个 regional object 必须携带的最小输入

不另造一个大 tuple；在每项应用中逐项记录以下数据即可。

| 输入 | 必须明确的内容 |
|---|---|
| Geometry/action | orientation、interface type、physical/artificial distinction、完整 bulk/boundary/corner/defect action、CPS convention |
| Field/solution class | bundle/connection sector、regularity、初值与 histories 的相容域、所用 PDE／ODE／flatness theorem |
| Joint interface data | 实际 trace image 及 topology，所有 face/corner compatibility，完整 response 与 temporal endpoint separation |
| Gauge policy | regional proper group、实际可延拓 cut group、active physical group、frames、transport、disconnected components/stabilizers |
| Observable class | field/Wilson/current labels、Hamiltonian tangency 或 common operator domain、ordering、closure 与允许的 completion |
| Comparison | 独立 global action/class、实际 reconstruction、kernel/image、逐函数 extension 或 normal form、symmetry/dynamics maps |
| Quantum additions | level、charge lattice／integrable sectors、representation、normalization、argument/framing、common core 或 local net、完成中的 null space |

Response 的系数可依赖初值和 history。$\Lambda$ 是完整 solution/control domain 上的 semibasic form，$\delta\Lambda$ 包含 mixed derivatives。Proper gauge 与 active cut/physical symmetries 的区别在 release 前后分别处理。Boundary center choices、admissible gauge traces 或 quantum completions 变化后，须重新确定对象和映射。

## 3. 命题 C：classical descent／reduction

从 independent regional actions 与实际 release relations 构造 matching space $C$ 和 cut gauge group $K$；从 independent uncut action 构造 $P_M$。假定已经证明：

1. **Actual assembly:** $r:C\to P_M$ onto，fibers 恰为 $K$-orbits；restriction/assembly 保持相同 solution、bundle、boundary/corner 和 operator class，并有相应 smooth local charts。
2. **CPS comparison:** $\iota_C^*\sum_i\Omega_i=r^*\Omega_M$，其 kernel 为完整 gauge vertical directions。
3. **Functions:** 明确 source $\mathcal A_C$ 是 intrinsic basic Hamiltonian functions，还是 ambient admissible regional algebra。Ambient 版本另有每个 $F\in\mathcal H(P_M)$ 的实际 extension $E(F)\in\mathcal A_C$，且所需 gradients、transposes、supports、Hamiltonian lifts 保持声明的域。

那么
$$
\mathcal Q:\mathcal A_C\to\mathcal H(P_M),\qquad
(\mathcal Q f)\circ r=f|_C,
$$
是 onto Poisson $*$-homomorphism，且
$$
\boxed{\ker\mathcal Q=\{f\in\mathcal A_C:f|_C=0\},\qquad
\mathcal A_C/\ker\mathcal Q\cong\mathcal H(P_M).}
$$
证明：orbit-basic 性给函数唯一下降；tangent Hamiltonian lifts 与 CPS identity 给 bracket 和 involution；extension 给逐函数 onto，vanishing locus 给完整 kernel。若 extension 连续且 $\mathcal QE=1$，得到 underlying locally convex split quotient。Dense approximations 不证明该 section。

这里 intrinsic 版本只要求 Hamiltonian fields 能在 $C$ 上 lift；它不推断 ambient product extension。若 quotient singular，替换为实际 invariant restrictions 的 differential structure，并另证其与独立 global singular target 的 smooth-function structure一致。只在 regular stratum 的 symplectic comparison 不足以给此结论。

相容的 symmetry/dynamics 还须 preserve actions、histories、cut action、observable class；$r\circ T_C=T_M\circ r$ 才给 quotient equivariance。多个 cuts 的 associativity 要由同一个完整 matching/gauge relation 的 reduction by stages 证明，不以 global target 唯一性替代区域步骤。

## 4. 命题 A：algebraic current／operator-core quotient

### 4.1 Lie/current source

给定实际 admissible labels 的 exact sequence
$$
0\to\mathfrak k\to\mathfrak c\xrightarrow{r}\mathfrak l\to0,
\qquad c_{\mathfrak c}=r^*c_{\mathfrak l},
$$
其中 $\mathfrak k$ 为 Lie ideal，$c$ 是同一 fixed-level central cocycle。独立 global target 为 $U_\hbar(\widehat{\mathfrak l})/(z-k)$；source 使用 $\mathfrak c$ 的相同 prescription。则
$$
\boxed{U_{\hbar,k}(\mathfrak c)/
\langle\mathfrak k\rangle_{\mathrm{two\text{-}sided}}
\cong U_{\hbar,k}(\mathfrak l).}
$$
Proof: 取 vector-space section 和适配有序 basis，PBW 中含 kernel label 的 monomials 恰张成 ideal；其余 monomials 与 independent target 的 PBW basis 一一对应。Ordered lift 给线性 section，不要求它是 Lie/algebra homomorphism。Rees filtration 与 $*$ 若被这些 maps 保持，则同构亦保持它们。这里仅有 algebraic finite sums，没有悄悄采用 completed tensor product。

将其称为 **实际 classical polynomial current algebra** 还须证明 target label polynomials 在真实 solution space 上忠实。非线性 monodromy 可能不是 finite polynomial relation，但必须单独证明这一点；universal PBW 不提供该 faithfulness。

### 4.2 实际 operator core

若使用 differential／network operators，则先固定 regional domain $\mathcal D_C$、independent global $\mathcal D_M$ 和 restriction map $\rho$。Source 是保留 physical subspace/domain 的 **joint** invariant algebra；$\rho$ 必须实际保持 products、adjoints 和 domain。另证明 independent global generators 都有允许 lifts，以及每个源元素的 normal form
$$
D=s(\rho D)+D_{\mathrm{vert}},\qquad
D_{\mathrm{vert}}\in J,\quad J\subseteq\ker\rho,\quad \rho s=1.
$$
于是 $\ker\rho=J$，且 image 为已声明的全 global core。若 $s$ 只在 vector spaces 上定义，也足以证明 kernel/image，不据此断言 algebra splitting。

YM 的 vertical PBW、circle radial-part proof 和 finite-network charged-block elimination 是三种不同 normal-form input。后者加入演化后可能出现新 kernel；静态 moment ideal 不能未经证明沿用。先作 arbitrary Haar compression 则不保证 multiplicativity。

## 5. 命题 R：representation／net sewing

令 independently chosen regional modules 对同一 seam von Neumann algebra $M$ 有相反 left/right actions。Source dense space $\mathcal V_0$ 由 right-bounded intertwiners 构造，Gram form 为 Connes form $G$；独立 target 为已指定 modules $H_a$ 的 direct sum。假定存在由 regional fields／transport 构造的 **actual maps**
$$
F_a^0:\mathcal V_0\to H_a,\qquad
G(z,z')=\sum_a\langle F_a^0z,F_a^0z'\rangle,
$$
其联合 image 稠密，并已证明 source 的 local algebra action（包括 crossing-corner intervals）由这些 maps intertwine。则
$$
\boxed{\ker F^0=\operatorname{Rad}G,\quad
\overline{\mathcal V_0/\operatorname{Rad}G}\xrightarrow{\simeq}\bigoplus_a H_a.}
$$
Proof: norm identity 给 well-defined isometry、完整 kernel；dense image 与 closed isometric range 给 unitary onto。Local intertwining延到 normal closures，得到实际 represented local algebras 的 faithful onto map。Stone generators 及谱域由 one-parameter groups 运输。只有 simultaneous matching norms 时，逐模式 identity 才能传到该完成。

Vacuum 的 $T\otimes\eta\mapsto T\eta$ 是单位通道实例；非真空例的 $F_a^0$ 来自 primary transport coefficients。Balancing vectors 是 radical 的一部分，不能在没有证明时称为完整 Hilbert kernel。Connes product 作用于 modules/correspondences，不是把所有 quantum algebras 定义为一个二元 fusion product。

Cyclic-vector maps 的 left ideal、universal current 的 two-sided ideal、Hilbert Gram radical 与 realized local algebra 的零 kernel，必须分别陈述。Unitary sewing 也不意味着 ordinary product vacuum 变为 canonical global state。

## 6. 实例逐项归类

所有箭头的 independent target 与证明位置如下；“classical／core／net”各列不可互代。

| 模型 | Source → independent target；完整 kernel/image | Topology/domain 与已用模型输入 |
|---|---|---|
| [YM framed interval](<models/1+1 Yang-Mills classical observable algebra gluing.md>) §§5–6 | $C^\infty((T^*G)^2)^G\to C^\infty(T^*G)$；kernel 为 zero cut-moment locus 上消失的 invariants，onto | finite-dimensional smooth compact-open topology；explicit holonomy/flux assembly 和 actual extension |
| [YM circle](<models/1+1 Yang-Mills classical observable algebra gluing.md>) §12 | conjugation-invariant smooth restrictions → $(T\times\mathfrak t)/W$ differential algebra；完整 vanishing kernel | $SU(2)$；两个 singular points；实际 Schwarz smooth extension，未以 density 代替 |
| [YM quantum interval／circle](<models/1+1 Yang-Mills quantum observable algebra gluing.md>) | representative/Rees core 的 joint invariant restriction；interval 为 vertical moment ideal，circle 为 principal $(Z)$；onto 独立 differential/radial targets | 有限 differential order、Peter–Weyl core、PBW／rank-one invariant symbols；Hamiltonian closures 另按谱域比较 |
| [U(1) disk](<models/U(1) Chern-Simons disk and open-chord sewing.md>) | corner-admissible current labels → smooth uncut current labels；kernel 为 full cut labels；polynomial/Weyl onto | smooth trace quotient、实际连续 section、seam cocycle cancellation；Weyl construction 使用同一 symplectic label quotient |
| [U(1) junction](<models/U(1) Chern-Simons trivalent junction sewing.md>) | joint three-ray source → disk；kernel 为 $K_Y$，含逐 seam reduction 未去掉的三维 gauge jets | 实际 closed Fréchet trace image及其连续 extension；不是有限 jet-rank test 证明 |
| [U(1) annulus](<models/U(1) Chern-Simons annulus sewing.md>) | matched current/period/compact-zero-mode presentation → 独立 annulus realization；连续 $K_0$ 与离散 winding 分开 | $\Delta$ periodic、$\lambda$ real；指定 charge character/current modes；thin paired line 仅 $q^2/k<1/2$ |
| [SU(2) universal／vacuum](<models/SU(2) Chern-Simons open-chord sewing.md>) §§6–9 | Lie/PBW cut ideal；vacuum cyclic left ideal；independent vacuum Connes source 的 Gram radical → full vacuum net | trivial-monodromy classical class；positive integer integrable prescription、$H^1$ cut loops、bounded local algebras、strong additivity |
| [YM finite networks](<models/1+1 Yang-Mills covariant multitime networks.md>) §6 | joint-invariant finite words → independent global contour algebra＝既有 dynamical envelope；$w-s\rho w$ 的完整生成族 | compact $G$、正长度、全部 real times、finite marked networks、common Peter–Weyl domain；kernel 不声称有限或可终止 zero-test |
| [SU(2) charged pair](<models/SU(2) Chern-Simons charged sewing and channel maps.md>) §§2–6 | independent $H_\sigma\boxtimes_M H_\sigma\to H_0\oplus H_1$；full transport radical，onto；channel maps 分别杀掉另一个 sector | $k=2$ fundamental primaries、argument tests、normalized transport form、marked ribbon；Wilson 与四点 $F$ 有实际 operator comparison |

## 7. 当前已建立的跨类型桥梁

[两个 punctures 的 classical bridge](<models/SU(2) Chern-Simons two-puncture classical bridge.md>) 给
$$
N\cong X\times_{\operatorname{Hol}}\mathcal A_{S^1},\quad
X=\mathcal C_1\circledast\mathcal C_2,\quad
p^*\omega=-\frac{2\pi}{k}\Omega+\Phi^*\varpi.
$$
它列出 physical based-loop quotient 忘掉的 fibers，并用完整 $\Phi$ 重构。此处 $p$ 不是把 closed CPS 直接推成 ordinary Poisson structure 的 map；要在 fixed output reduction 后才使用命题 C 的 symplectic/Poisson 结论。

Charged quantum note 则在同一 marked puncture geometry 上选择 integrable modules，用命题 R 构造 actual two-channel comparison。Classical $\lambda_i$ 与 quantum $j_i$ 之间仍须选择 quantization/prequantization data；这两份正结果不组成无条件的“quantization commutes with sewing”定理。

[Edge note §9.1](<models/chern-simons edge contraction and corner fusion.md>) 对不删除 physical intervals 的 rooted auxiliary tree 给 commuting maps。只取 $\mu_{12}$ 是忘却 fiber，只选一个 quantum channel 是 projection；两者都不是完整 presentation equivalence。

**Verified:** 本文三个 implications 的短证明与上述已明确的模型实例；新增 bridge 的实际 maps 见相应正文及 [claim ledger](<numerics/charged CS bridge claim ledger.md>)。**Assumptions:** 每个箭头保留表内的 source、target、regularity、gauge、quantization 和 completion inputs。**Not verified:** all-YM/CS quantization theorem、高维 nonlinear YM transmission／quantum existence、完整 $C^\infty$ 的统一量子化。Pure $1+1$ YM 的 Casimir reduction不包含 bulk radiative modes，不能充当这些输入。
