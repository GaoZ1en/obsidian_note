# BV–BFV：反例、修订与持续审查

日期：2026-09-19。对象是本目录自己的候选 formalism；旧笔记作为 convention/model输入，不在本次改写范围。下面的轮次记录实际采用的审查顺序及被替换的命题，不把后来收窄的结论反写成最初就已正确。

**Starter 判定。** 无条件的 ghost-zero equivalence 是假的。前六轮保留 smooth disk/chord 的完整经典装配、指定 current polynomial algebra 比较、线性 homotopy-product lemma、relative cochain/pairing homotopy 和 YM2 control。其后第七至二十四轮继续扩展与攻击，续写至2026-09-21；完整目标未完成。

## 第一轮：对象和 gauge policy

### A01. 直接删除 ghosts 不会留下 EOM

候选：把所有非零 ghost-number fields设零就得到 classical solution space。

取 $A=x\,dy$。Ghosts、antifields全为零，但 $dA=dx\wedge dy\ne0$。只有先读取 $QA^+=dA$ 的零点条件，才得到 flatness。

**修订：** 区分 ordinary off-shell restriction、classical equations/arrows和 observable $H^0$。状态：反例成立；由 formalism §3修复。

### A02. Unrestricted BFV reduction 删掉物理 current

候选：用 $H^1(D)=0$ 识别 disk current theory。

取 boundary primitive $\phi=\sin s$，$\alpha=\cos s$。$a=d\phi$ 是 exact，然而 $Q[\alpha]=\kappa\pi$。把所有 boundary-valued gauge当 redundancy会使它消失。

**修订：** proper ghost相对真实外墙；charged boundary transformations另行保留。保留 full field space而非用 cohomology替代。此处没有通过缩小 current algebra来逃避反例。

### A03. 同样的 orbit set，不同 stabilizer

Unbased flat disk的常数 $U(1)$ maps固定每个 connection。Based-at-outer-boundary 模型无此 stabilizer。两者可以有相同某种 coarse invariant描述，却不是同一 gauge object。

**修订：** 箭头、automorphisms与 actual proper policy进入比较；不把「ghost是冗余变量」当删除它们的理由。

### A04. 固定 closure 不包含 release

候选：从两个固定 $q=0$ 的 closed source fibers，直接得到 response matching。

固定 fiber内 $\delta q=0$，变分根本不检测 $a_1-a_2$。同一个 $q=0$ 也允许不同 time-independent seam primitive，比如 $\phi|_\gamma=0$ 与 $s(1-s)$，外弧 primitive均零；后者的 response是 $1-2s$。

**修订：** 保留完整 sourced relation和 boundary action，opening改变边界实现；不假定存在单值 DtN inverse。

**本轮后的版本 V1：** 比较带相对 gauge policy的实际 solution/history relations，而非已经遗忘 history或 charges的 closed algebra。

## 第二轮：corner 与光滑性

### A05. 两侧 flat，raw fields 仍不能光滑拼合

在 seam $x=0$ 取 $a_-=x\,dx,a_+=2x\,dx$。两侧 $da=0$、切向 trace相同，甚至 full value为零，但 first transverse derivative不同。输出不为 $C^1$。

**修订：** raw assembly使用共同 collar jets；较宽 trace-matched源与 smooth representatives之间的转换显式保留 proper arrows。CM smoothing theorem不是 raw equality。

### A06. Outer endpoint values 不够恢复 smooth current labels

在接点坐标 $s=0$ 用 $s^2$ 与 $s$：值相等，一阶导数不等。拼合不在 $C^\infty(S^1)$。有限任意 jet阶也不够：用零函数与 $s^{N+1}$。

**修订：** 物理整圆的所有 smooth tangential jets匹配。不要把 transverse corner两条独立方向的 derivatives也强行设相同；那会排除合法 joint traces。

### A07. 开弧 central term 不反对称

在 $[0,1]$ 取 $\alpha=s,\beta=1$，有 $c(\alpha,\beta)+c(\beta,\alpha)=\kappa$。

**修订：** 整条 regional boundary使用 joint endpoint values与 incidence signs；单独 cut-only参数使用实际 endpoint-zero lifts。不能把任意开弧 smearing作为独立 current algebra。

### A08. Endpoint-zero 仍不允许单片 charged cut 先作约束

$f=s(1-s),g=s^2(1-s)$ 两端为零，但 $\int_0^1 f g'\,ds=1/60$。单片 currents仍有 central extension。若把它们全部设为 gauge constraints，其 BRST charge的平方会检测这个 central term。

**修订：** released diagonal action必须同时带两份相反 orientation；其 central terms相消后才有该共同 constraint。Full regional edge charges此前保留。

### A09. 任意 history 与 incoming data 不相容

取 outer primitive为零，却令 seam端点 $q=1$。角点条件 $q=v\phi'_O$失败，$H_i[q]$ 的 variation有未消失 endpoint covector，其向量不属于声明的 joint smooth trace space。

**修订：** source域是完整 compatibility relation，不是 arbitrary product。Temporal cap terms及这些条件的时间导数也保留。

### A10. History族上的 CPS 不自动守恒

由 $\Lambda=-\kappa\int a\,\delta q$ 得 $\delta\Lambda=-\kappa\int\delta a\wedge\delta q$，一般非零。只固定零源检查无法排除它。

**修订：** 固定 history fiber守恒的是相应 CPS；总 relation满足带 flux的 (4.3)。共同 release/matching后内部 flux才相消。

**本轮后的版本 V2：** smooth raw assembly、trace-level representative comparison与 graded matching分开；corners、caps及完整源域成为同一 action/domain的条件。

## 第三轮：derived、拓扑与 observable产品

### A11. Clean 不等于没有 derived excess

在平面中把直线 $y=0$ 与自身相交。这是 clean intersection。其重复 constraint的 Koszul模型为
$$
R=\mathbb R[x,y],\quad d\eta_1=d\eta_2=y.
$$
$\eta_1-\eta_2$ 闭合，而边界只能含 $y$ 因子，因此其 class在 $y=0$ 仍非零。

**修订：** clean、transverse、degreewise surjective dg restriction和 derived equivalence分别陈述。不能把「regular sector」当抹去整个 complex的许可证。Sage检验了 differential square和该 non-exactness见证。

### A12. 先只保留局部 coarse solutions 会丢 circle holonomy

用两条 contractible arcs覆盖圆，overlap有两个连通分支。局部 flat connections可各自变成零，但 transition constants的差给 global holonomy。线性 Čech模型的 differential是
$$
\mathbb R^2\xrightarrow{\left(\begin{smallmatrix}1&-1\\1&-1\end{smallmatrix}\right)}\mathbb R^2.
$$
Kernel与cokernel各一维。后者恢复 $H^1(S^1)$；只取两份局部 coarse point再忽略 overlap arrows会漏掉它。

**修订：** 先保留全 complex/transition maps再 descent。这里不宣称所有形式的 $H^0$ 都不能交换：带 automorphisms的 truncation与 coarse quotient不是同一操作。

### A13. Lie algebra ghost 不识别 finite winding policy

$g(s)=e^{2\pi is}$ 两端皆 $1$，但把它与 outer constant arc闭合得到 winding one，不能延拓到 disk。Infinitesimal endpoint-zero函数并不自动指定所有有限 group components。

**修订：** disk cut只取真实 endpoint-zero实 lifts；换 annulus或更改 proper components policy时另记 compact periods、bundles和有限群。不能靠添加更多局部 ghosts纠正错误的拓扑输入。

### A14. Pairwise seam data 不代替 cocycle

在三片真正有 triple overlap的共同 frame图中，选择 lift transitions $\lambda_{12}=1,\lambda_{23}=2,\lambda_{31}=-2$。每一对都是合法局部 transition，但总和为 $1$，不是同一 trivial cocycle。三片 tree没有这条 cycle条件，不能外推到任意 junction。

**修订：** 本目录 associativity定理限定两条不相交 chords；一般几何保留实际 joint atlas和 cocycle，不能从两片测试外推。

### A15. Constraint理想不一定是全 algebra 的 Poisson理想

Canonical $(q,p)$ 中约束 $p=0$，但 $\{q,p\}=1$。因此 $(p)$ 在全部 polynomial algebra中不是 Poisson ideal。

**修订：** 先指定 tangent/admissible Hamiltonian source；CS中的 $\mu[K]$ 只在 §7 声明的 matched-current source中 central。没有声称全 regional tensor algebra可直接 quotient。

### A16. 预辛 pullback 相等不证明 onto

映射 $i:\mathbb R\to\mathbb R^2,(q\mapsto(q,0))$ 有 $i^*(dp\wedge dq)=0$，但 image只是直线。一个无损的形式 pullback式不包含 field/algebra满射性。

**修订：** C1另证 restriction/assembly；C2另给每个 label的 interpolation lift与 polynomial kernel。上层 dg weak equivalence也不能自动提供任意 functional completion的连续对偶、Hamiltonian域和产品处方。

**本轮后的版本 V3：** 只保留已实际证明的 fields/arrows、current polynomials与线性complex结论；完整 corner-relative dg与 continuum observable cohomology列为明确未证项。

## 第四轮：用不同模型和边界实现回攻

### A17. 同一裸 boundary BFV，不同 closure/dynamics

CS取 $v_1\ne v_2$，相同 initial smooth boundary current沿不同速度传播。YM2取 $e_1^2\ne e_2^2$，相同 $p\ne0$ 给不同 holonomy evolution。两者的相应 bare constraint structure保持不变。

**修订：** 保留完整 bulk action和 physical boundary realization。不能宣称 opening是从一个未附这些资料的 abstract BFV space自然恢复的唯一运算。这不是对包含 action的完整 BV–BFV数据的反例。

### A18. Framed regular模型不能排除 self-sewing singular strata

SU(2) circle在 $p=0$ 的 moment differential秩，从一般 $U$ 的 $2$ 降为中央 $U$ 的 $0$。

**修订：** starter不从 framed interval推广到全 circle regular quotient；singular points/stabilizers保留，必要时使用完整 deformation complex。没有把删掉这些点当修复。

### A19. 文献光滑化定理的几何前提不覆盖 chord endpoints

CM Theorem 2.4 的cut是闭合 hypersurface；允许额外外边界时，原文说明与cut不相交。这里 $I\times\gamma$ 与真实外墙及caps相交。

**修订：** C1/C2给独立 classical证明；不把它们标为该 dg theorem的直接 corollary。要升级，需构造保持joint traces、chiral condition与pairing的relative homotopy，或证明一个恰适用的corner版本。

### A20. 区域 ghost history也必须运输

任取 time-dependent cut parameter $\chi(t,s)$，有 $q\mapsto q+\dot\chi$。若一边固定 $q$，另一边却仍把所有 $\chi$ 视为该fiber内symmetry，得到错误的 gauge domain。

**修订：** $Qq=\partial_tc$ 作用在完整 source relation；在 fixed source fiber另外检查其保持条件。历史covariance不等于同一系统内的对称性。

### A21. 只匹配 current，不移除临时 closing action

若两个 artificial walls各保留一个 $-\kappa v\int a_s^2/2$，取相反有向分量 $a_2=-a_1$ 时，线性 $qa$ 项可以抵消，两个 quadratic wall terms却相加，留下真实 seam Hamiltonian。

**修订：** opening必须按 action标签移除选中的临时项；真正外墙的同形项则保留。Current matching不能替代这一步。Mathematica检查了该非零defect。

## 第五轮：回测与relative homotopy的实际修补

这轮不再改目标为任意 gauge theory，而是在同一个 disk/chord范围检查修订是否互相冲突。

| 回攻 | 实际判据 | 结果 |
|---|---|---|
| 相反orientation是否误删真实wall | covariant/canonical variation、seam抵消、外墙 $v$ 项保留 | 通过解析与分量检查 |
| proper directions是否被current coordinates偷偷删掉 | C1 domain是 full $A$；(6.2)显示bulk kernel仍在 | 保留 |
| 取 arbitrary smooth global current能否lift | endpoint interpolation + joint extension + smooth disk extension | 给出了任意label构造 |
| algebra kernel是否只靠density猜测 | exact label splitting + 有限线性functionals独立性 | finite polynomial命题成立 |
| clean/transverse修订是否过强 | degreewise onto时strict dg模型的acyclic cone quotient | explicit contracting homotopy |
| circle/compact数据是否被disk结论误收 | separate winding/Čech反例与排除条件 | 未外推 |
| 三片顺序是否只用global target定义 | source逐边interpolation、独立moment关系、逐点assembly | 在两条不交chords成立 |
| history flux是否仍被遗漏 | 全relation的 $\delta\Lambda$ 与共同release | 保留 |
| 对照是否只是CS动力学巧合 | YM2 action、response、BFV constraint与coupling-dependent evolution | 同样需要额外realization资料 |

没有发现这组回攻中的新反例。收窄后的 C1/C2 另有正文证明；有限符号/线性代数检查是对符号和见证的独立校验，不能冒充穷尽证明。**尚未证明的 dg/corner箭头没有因为回测通过而升级。**

### A22. 任意piecewise外资料不能原样保存到smooth输出

继续攻击A19的缺口时，先考虑要求smoothing map保持完整external BFV data。若source允许physical wall的分量在cut端点拼成 $s^2$ 与 $2s^2$，任何保持这个trace的输出都不可能smooth。令 $A_t=va_s$ 仍不解决off-shell的二阶jet跳跃。

**修订：** 明确源域 $P_{\rm ext}$，在所有surviving外faces要求smooth joint traces；这与当前classical reconstruction本来要求的smooth physical target一致。然后真正构造，而非只加存在假设：
$$
H_0=\chi\int_0^x\iota_{\partial_x}(\cdot)\,du,\qquad
H=(1-Er)H_0,\qquad p=1-dH-Hd,
$$
其中 $rE=1$，$E$由product-collar extension给出。$rH=0$保证外trace不变；$p$在seam附近的粗项是constant-normal trace，余项全smooth。链等价、连续性及pairing correction的证明在 [relative homotopy](relative_homotopy.md)。这一步补上了指定linear层的corner比较，没有声称整个observable dg algebra已经等价。

## 第六轮：攻击新增homotopy

| 新攻击 | 判据与结果 |
|---|---|
| Boundary extension $E$ 一般不与 $d$ 交换 | 构造从 $p=1-dH-Hd$出发；无需 $Ed=dE$。显式展开(3.5)仍smooth |
| Smoothing改变外墙速度/物理charge | $rp=r$保存完整superfield外trace，故保持原chiral条件与current |
| Temporal caps被暗中遗忘 | $r$同时含caps，$H$在这些pullbacks上也为零 |
| Relative correction破坏seam匹配 | $H_0$的seam pullback为零，$ErH_0$是global smooth form；两侧仍匹配 |
| 同伦只对on-shell fields成立 | (3.1)逐形式计算，不使用EOM；off-shell polynomial checks通过 |
| Chain equivalence不保持pairing | 给出(4.2)–(4.3)的具体tensor homotopy；不要求严格symplectic $p$ |
| 原先proper fields被删除 | 对flat $A$的变化是显式 $-d(HA)$，保留原field与这条arrow；不是quotient |
| 任意extension/cutoff是否引入新物理输入 | $p-p'=dR+Rd$，$R=pH'-H_Gp'$且 $rR=0$；currents由相同外trace直接保持 |
| Artificial $q$被错误宣称固定 | 明写 $q\mapsto q-\partial_t(HA)|_\gamma$；只保留真实外boundary资料 |
| 一般拓扑/非线性被偷偷纳入 | 构造只用本模型neat collars和Abelian $d$；非线性、compact新sectors另列未证 |

九项新增Mathematica检查通过；解析证明已按这些攻击重读。此轮未发现满足H1/H2全部域条件的新反例。扩展到函数代数、full corner homotopy-limit identification及higher coherence仍未由此证明。

## 停止规则与继续方式

原 starter 的停止条件只适用于前六轮。2026-09-19 用户已激活完整目标；以下新增反例与修复不把总目标改写为 CS 的完成。

### A23. 三条 matching relations 的重复关系

三个 scalar 顶点到三条边的差分矩阵秩为 2；若漏掉共同 corner 项，H¹ 有一维虚假类。CD1 的 C 项及 f₁ 消除它。修复同时给实际 continuous sections，不止做 rank 计数。

### A24. Graded section 不是 cochain section

当 trace extension 不与内部 d 交换，直接使用 degreewise projection 不给 chain map。Sage 的非-chain splitting 例子检出这一点；CD1 (4.1) 的有限 correction 给真正的 projection/homotopy。所有 operators 连续且系列因 horizontal degree 有界而终止。

### A25. Boundary point cohomology 不属于 finite-current core

j(s₀) 是 continuous polynomial BV 的非零 class；delta density 不能是有限 smooth smearing 的线性组合。OCE1 给一般证明。修复是承认旧等同为假，并区分 continuous cohomology 与其 Hamiltonian 子类。

### A26. 只排除非 Hamiltonian 点值仍不够

H_v=κv∮j²/2 有 smooth gradient 与真正 dynamics，却不是有限 current polynomials。任意有限个 smearing 的 kernel 中选非零 j，即得严格正能量而全部 currents 为零的反例。O3 给包含 H_v 的独立 Hamiltonian continuous polynomial 比较；原 C2 保留其正确较小域。

### A27. Cohomology contraction 不能冒充固定 caps 的同伦

取 c=1-x²-y²、A=dc。c 在物理 wall 为零，A flat 且初始边界 current 为零，但在 time caps 上的 one-form pullback 非零。到 J 的 projection 把此 A 送为零，因此改变 cap data。修复：CD1 的 relative maps 与 O2 的 cohomology contraction 分开；未固定 caps 是 O2 的实质条件。

### A28. 拉回退化 pairing，不等于新 resolution 有非退化 BV form

沿 𝒯→P_L 拉回 pairing 会漏掉其 contractible kernel 上的方向。修复不必增加新物理场：CD2 在实际 P_L 上使用区域积分 pairing 与 action 之和，内部 defects 相消且其 BV pairing 弱非退化；𝒯 仅作 auxiliary homotopy-limit resolution。此修复避免把额外的展示选择升级为总目标的必需公理。

第七至九轮的执行证据和保留边界见 [新验证记录](checks/corner_observable_verification.md)。一般非线性、拓扑、反复组合与量子目标继续在 programme.md 中保留。

前六轮当时停止，是因为所列攻击已被保留的资料、可检查的证明或明确的未证边界处理。它不是「已经找到所有反例」。现在已按完整目标继续至第二十四轮；新的例子若满足某项命题的全部输入仍使结论失败，就继续修正对应 claim。

前一阶段列出的完整 linear corner diagram 与 continuous observable complex 已由 CD1/O1–O3 实际构造；它们还产生了 A25/A26 的新反例。下列第十至十二轮继续处理有限 cuts 和 non-Abelian formal comparison。下一步具体任务见 [TODO](TODO.md)。

## 第十轮：多切口与交点的真正域

### A29. 三条相交接口的值相容，不等于 smooth extension

在 x 轴、y 轴、对角线上给 traces t、t、0。原点值相同，却要求同一个 F 同时有 F_x=F_y=1 和沿对角线导数为零。链式法则给后者为 2，矛盾。

**修订：** [FC §2](finite_cut_coherence.md) 给实际导数相容条件及 Taylor integral extension；FC 的 smoothing 保持 true exterior，允许运输已 released internal histories。不能声称同时固定任意内部 traces。

### A30. Linear smoothing 不是 Lie algebra map

H1 的 unrestricted corner toy 有 p(xy)=0，却有 p(x)p(y)=xy。乘上满足 [T₁,T₂]=T₃ 的 Lie generators 就得到非零 bracket defect。此 scalar 例子检测 unrestricted complex；它本身不保证满足 physical proper-ghost wall 条件。

在实际 chiral wall 域中，另取 [NR §2](nonabelian_relative_descent.md) 的 closed one-forms A=(dx+vdt)T₁、B=y dy T₂。它们满足 wall condition，但 bracket defect 为 −y dx∧dy T₃，仍非零。NR 的 path-object arity recursion 给全 degree、全阶的修正，不将 p 直接视为 nonlinear morphism。

## 第十一轮：反攻逆映射与次序选择

### A31. Pi 等于 identity 不是现有 smoothing 的性质

即使输入 f=xy 已在 corner chart 中光滑，局部 p 也把它送成零；因此不能在推导中暗中增加 pi=1。独立矩阵模型亦有 pi≠1。

**修订：** NR1 使用实际 two-sided homotopies 和 H_Pi=iH_G，构造 mapping fiber 与 endpoint kernel 的 contraction；section 是辅助 path 的 ev₁ section，并不宣称 p 是 strict retraction。

### A32. 两个合法 smoothing 次序未必给同一 raw map

有限矩阵模型选出的两个 chain smoothers 满足 F₁F₂≠F₂F₁；所以“最后都 smooth”不推出选择相同。

**修订：** FC1 的 telescoping 给每种合法顺序的实际 homotopy，FC2/NR3 在共同 endpoint problem 内逐 parameter simplex 填充。两两 homotopy 不直接冒充 higher coherence；本页没有由此推出 quantum associators 相同。

## 第十二轮：反攻检查与形式结论

### A33. 全部三阶 identities 通过，可能只是三阶项恒零

初次 Ω(ℚ[x]/x³)⊗𝔰𝔲(2) 模型的 arity-three residual/correction 都恒零。虽然 identities 通过，它没有检验非平凡第三阶递归。

**修订：** 最终使用 x⁴=0 的 21 维 DGLA，并将 residual/correction 非零作为独立检查；再对全部 9261 个 triples 检验 identity。执行证据保存原诊断和修复，不将较小模型当成充分验证。

### A34. 全形式阶数成立不提供有限耦合收敛

形式级数 ∑_{n≥0} n!λⁿ 在 formal power-series ring 中存在，在任意非零 λ 却不收敛，因相邻项绝对值之比为 (n+1)|λ|。把它放入 Q=0 的 complex 还会逐阶满足 Q-closed condition。

**修订：** NR 全阶结果严格位于声明的 λ-adic 类；另保留有限耦合收敛/全局延拓任务。这不是断言所构造 p_∞ 的级数必定发散，而是反驳由形式恒等式自动推得收敛的论证。

### A35. 反例也必须满足正在攻击的 physical domain

若把 unrestricted scalar witness xT₁ 当成 y=0 wall 上的 proper ghost，它的 wall trace 非零，便不属于 NR 的 physical degree-zero domain。这不能作为该更小域的反例。

**修订：** A30/NR §2 明确区分 unrestricted witness 和满足 chiral wall 的 degree-one witness。后者的 closedness、wall condition、非零 bracket defect 和 exterior-zero primitive 均另行计算验证。没有通过错误域内的攻击宣布物理定理失败。

本轮新增证据见 [有限 cuts 与非线性验证](checks/nonlinear_finite_cut_verification.md)。FC1–FC2、NR1–NR4 在它们全部已声明条件下暂未被这些攻击推翻；compact topology、一般实际源域、quantum products 及传播模型仍是 [完整目标](programme.md) 的待办。


## 第十三轮：finite SU(2) 的全局资料

### A36. Non-Abelian zero average 不等于 trivial holonomy

取 j(s)=√3(cos s T₁+sin s T₂)。它光滑且积分为零，但 exact transporter 在一周后为 −1，因此不能来自 source-free disk。二阶展开也有 πa²T₃ 的非零 defect。

**修订：** [ND1](nonabelian_disk_observables.md) 使用 actual holonomy=1 的 source 域及其 covariant tangent condition，不从 Abelian mean-zero 条件外推。

### A37. 每条 loop 可填充，不等于所有 fillings 可连续选择

Based disk-map space 可缩，而 based ΩSU(2) 的 π₂ 为 ℤ。若 boundary restriction 有 global continuous section，identity on ΩSU(2) 会经可缩空间分解，矛盾。

**修订：** ND 的 finite smoothing 从已存在的 full bulk primitive 出发；observable descent 只使用 local sections，Hamiltonian lifts 用 Lie-algebra extension。实际 full-field functor 因而不需要不存在的 global filling section。

## 第十四轮：quantum vacuum domain

### A38. Classical Hamiltonian reflection quadratic 的真空范数发散

F_R=κ∮j(s)j(−s)/2 有 smooth polynomial gradient，所以属于 O3 的 P_H。其 pair-creation 部分作用 vacuum 的 norm squared 为 ħ²∑_{n≤M}n²/2，随 M 发散。

**修订：** [QD](quantum_observable_domain.md) 以双向 weighted kernel 条件定义可量子实现的子类；保留原 P_H 的 classical 结论。Scalar ordering constant 不能消去正交 two-particle divergence。

### A39. 补充完整 classical flow 仍无法排除量子障碍

F_S=i∑(J_{−n}²−J_n²)/(2kn) 在每个 mode 上产生相同的 hyperbolic matrix，故对所有实时间保持 C∞ currents。其 quantized vacuum norm squared 仍为 ħ²M/2，发散。

**修订：** 量子域不能由 classical Hamiltonian condition 或 classical flow completeness 单独决定。QD 的条件实际检验 infinite pair-creation kernel，且不把其他 representations 一并否定。

## 第十五轮：反攻量子修补

### A40. 单向 energy bound 不足以构造 *-algebra

纯 annihilation operator ∑a_n² 在 energy-Schwartz domain 上有单向 weighted bound，但其 adjoint 的 vacuum image 不在 Fock space。单向定义不能在 adjoint 下封闭。

**修订：** QD 同时要求 K 与 K* 的 weighted Hilbert–Schmidt 条件；证明不止核对单个 matrix entry，而用 finite-particle block reconstruction 保证所有 contracted kernels 仍在同一类。产品、faithfulness 和局域能量均有实际构造。

Quantum source/target 的相同 product 只验收了 QD 所声明的路线；没有把它当成尚未构造的 regional quantum BV pushforward、mQME 或 artificial-corner anomaly 的证据。ND/QD 的 [执行记录](checks/global_quantum_verification.md) 与 [完整目标](programme.md) 保留这个边界。


## 第十六轮：open-face quantum operator

### A41. Proper wall ghosts 不保证单个 face 的 Ω²为零

[QB §2](quantum_collar_and_corners.md) 的矩形上取 c=η₁s(1−s)+η₂ts²(1−s)。它在两侧物理墙上为零，但 bulk BFV square为 iħκη₁η₂/60；非零项来自未固定的时间cap。

**修订：** 保留真实lateral/corner action、operator curvature与Ward defect。不能通过额外令cap ghosts为零，把原问题换成更小域后宣称修复。QB §6已进一步构造相反faces在common ghost matching后的nilpotent diagonal operator和实际Schwartz pairing；若ghost不匹配，curvature仍非零。

### A42. Projective phase不能总靠state重新归一化消掉

QB的C(σ,τ)=exp[−iκ∮σdτ/(2ħ)]有非平凡group commutator。Additive group上的scalar coboundary对σ,τ对称，故无法改变C(σ,τ)/C(τ,σ)。

**修订：** quantum realization记录corner composition factor及其反向orientation配对。这个cocycle自身满足associativity；不能把“非零相位”误称为“复合不结合”。

## 第十七轮：实际积分与辅助选择

### A43. 边界pairing完成，不等于BV pushforward完成

两个collar的中间ghost积分实际留下δodd(b₁−b₂)，仍含多余residual pair；它不是独立未切分collar的state。

**修订：** QB给canonical坐标σ,ξ,b,bξ，实际执行ξ=0、bξ free上的Berezin积分，得到surviving σ,b state。Fields/arrows不被这项quantum auxiliary integration替换。Sage检验完整非零ghost exponential。

### A44. Bulk-only open-face state会依赖residual Lagrangian

按固定片序复合，ξ=χ与ξ=0的fiber Lagrangians产生exp[−iκW(σ,χ)/(2ħ)]的差，其中χ可取固定smooth field。选择(2.3)的boundary traces便非零。

**修订：** 使用QB准确的非齐次Ward identity，保留尚未配对的corner资料；不能引用closed mQME的gauge-fixing independence，也不能只改scalar normalization来宣布无依赖。实际disk/chord corner state仍需构造。

## 第十八轮：再攻击量子函数域

### A45. Selected state的mQME不提供全部local BV observables

对continuous local functional F=∫σb，N个真实orthonormal modes上的BV Laplacian是ΔNFN=N。Torus的N=(2L+1)²发散；scalar subtraction的Laplacian为零，不能补救。

**修订：** QB只声明其明确的normalized cylindrical/formal state与pushforward；局域quantum BV insertion域和renormalization必须独立构造。这一目标保留在G5，并须与QD已构造的local composite/energy产品比较。不能以通过finite checks替代该桥梁。

本轮[35项执行证据](checks/quantum_collar_verification.md)与QB证明保存了closed collar的实际进展及open-face的具体缺陷。全目标仍active；没有把保留一个缺陷本身称为完成了其完整修复。

## 第十九轮：原 action 的时间端面与 source 域

### A46. Spatial proper ghosts 不消除 temporal cap phase

[WH §2–3](physical_wall_and_caps.md) 的 unreleased history 取 r=s、χ=ts(1−s)。χ 在 spatial endpoints 为零，但 action shift 为 −κ/12。把 seam phase 只写成 interior canonical term 会漏掉真实 cap 和 endpoint pairing。

**修订：** 保留完整 cap potential，加入共同 cut Ward operator 的 cap compensation。其 nilpotency 和 physical history Ward identity 已实际验证；仍不将这个 first-order identity 称为完整 quantum BV mQME。

### A47. Endpoint-zero probes 不能替换成 mean-zero probes

若 source variations 被误限为 mean zero，constant response r_s=C 通过全部错误检测；实际 endpoint-zero probe s(1−s) 给 C/6，已经能辨别它。

**修订：** 使用原 joint boundary problem 的全部允许 variations，再执行 normalized source integral。对 smooth responses，它们检测 π=0；primitive basepoint 条件再给 r=0。WH2 明确保留这一步的 cylindrical integration 范围。

## 第二十轮：真实 cap pairing 与量子处方

### A48. Classical cap phase 不独自确定量子 measure 和 vacuum scalar

Coherent composition 若省略 Gaussian cap weight，即使外部标签全零也得到无限平面体积。另在 N modes 上，Weyl ordering 相比 normal ordering 多出 ħvN(N+1)/4 的 vacuum energy；classical action 本身不能区分它们。

**修订：** WH3 从原 wall action 推导 coherent polarization term，显式保留 QD 的 positive-frequency/normal-ordering/identity prescription，并执行实际 Bargmann pairing。Continuum operator 由 second quantization 定义，未声称构造无限维平坦 measure。

## 第二十一轮：反攻独立 regional Fock generator

### A49. Sharp arc energy 的 vacuum norm 二次发散

将全局 stress 以半圆 indicator 硬切，在 energy modes m≤2R+1 的 vacuum norm squared 为 ħ²v²[(R+1)²−H_{2R+1}+H_R/2]/(12π²)。正交 two-particle tails 使其发散，scalar counterterm 不能消除。互补 arcs 在有限 cutoff 下相消，不赋予各自一个已存在的 vacuum vector。

**修订：** 不要求每个区域预先拥有这种 autonomous Fock Hamiltonian；保留从独立 action 得到的 history/response 和 cap pairing。这个反例限定同一 exterior Fock prescription，未排除其他独立 regional boundary problems 或 representations。

### A50. 普通 sharp 时间窗不保证修复 spatial sharpness

对同一个半圆 energy 取时间窗 T=π/v，vacuum norm squared 留下 ħ²/(3π²) 乘 odd m≥3 的正项和 ∑(1/m−1/m³)，仍然 logarithmically divergent。

**修订：** Smooth compactly supported time smearing 可将该例变成 QD 合法的 smooth observable，但不能用它替换原模型的 temporal caps。WH 保留真实 caps，同时区分允许的插入域和未完成的 full BV integration。

[WH 的43项检查](checks/physical_wall_caps_verification.md) 支持以上符号与见证；physical history sewing、continuum cap operator 和完整 regional BV state 的不同证据范围在正文分开。G1–G6 继续 active。

## 第二十二轮：regularization 也须尊重实际 corner 域

### A51. Heat boundary conditions 可排除合法的原始 histories

在 temporal caps 未固定的原域中，t 是合法 smooth history；正 Neumann heat time 的输出在两端 derivative 为0，不能在 C¹ 中收敛到它。Spatial endpoint-zero 的 s(1−s) 同样不能在 C² 中由额外满足二阶 endpoint derivative 为0的正 Dirichlet heat-time输出逼近。

**修订：** [QT1](quantum_cut_quartet.md) 采用 integrated Legendre primal/dual bases，在原 C∞ history/antifield 域连续完备，不附加 cap jet 条件。此处没有否定 heat regularization 在正确弱拓扑或不同 boundary domain 中的用途。

## 第二十三轮：反攻局域 trace 修补与乘积

### A52. 把 divergent mixed trace 赋零破坏原 BV 生成关系

在 canonical mode 上，D(χχ⁺) 比 QΨ(χχ⁺) 多 τ；同步 N modes 后多 τN。直接赋零不再是原 regulated BV Laplacian。原 ordinary polynomial 中的 ultraviolet 极限也不存在。

**修订：** QT3 给实际 Gaussian 指定的 normal families；quantum derivative 的 scalar 项保留为相应 normal-family counterterm，其 pushforward 由完整 Stokes 保证。该构造只用于已识别的 proper quartet，不给 QB 的一般 residual pair 任意增加 partners。

### A53. Normal-ordering transport 不保持普通乘积

一个 mode 已有 N(χB)=χB+τ，但 Nχ NB=χB。只运输单个 observables 而原样保留其 ordinary product，不给相容量子代数；Gaussian expectation 对普通乘积也不乘法。

**修订：** QT 明确构造辅助 Wick product，并将它与用于 BV bracket 的普通乘积区分；物理 current 的非交换 QD product 保持原定义。Cutoff maps 与 normalized pushforward 在所声明的 Wick/product 域上有实际相容恒等式。

## 第二十四轮：determinant orientation

### A54. 自由 quartet 的 determinants 也不是无条件相消成1

固定 positive Lebesgue density 和 Berezin ordering，gauge-fixing matrix K 的 finite integral 为 det K/|det K|；K=−1 已给−1。若 ghost/boson mode counts 不同，正 scalar K 还留下未抵消的 normalization power。

**修订：** QT 的 scalar normalization 限于同步 pairs 和声明的取向；跨取向分支保留 determinant-line transport。Cutoff coherence 不证明任意 gauge-fixing family 或 global determinant line 没有 holonomy，更不把这个符号直接称为新的 bulk gauge anomaly。

本轮[49项执行证据](checks/quantum_cut_quartet_verification.md)还记录并修复了验证器自身的 constant-term evaluation 错误：零映射也会形式上满足 ΠD=0，故最终检查显式要求 Π1=1及非零物理 coefficient 被保留。原区域到 QT canonical block 的完整 BV 分解仍待导出。

## 第二十五轮：cap-relative 不是无条件 cotangent product

### A55. 含时间导数的 source change 留下真正的 cap 配对

a=u−dot x 导致 ∫(x⁺δx+bδu)=∫[(x⁺−dot b)δx+bδa]+[bδx]。b=1、δx=t 给非零端面项；相应 two-form 在 δ₁b=1、δ₂x=t 上也非零。乘上合法 spatial test 即保持 proper endpoint 条件。

**修订：** [SC1](source_cap_bv_decomposition.md) 保留任意 polarized cap arguments，只对 relative fluctuations 使用零端点条件。新的 smooth cotangent map 有实际连续逆映射；原 cap 值没有设零。

### A56. 忘掉 cap-base differential 会给错误的 Q

相对坐标 z=x−x_lin−ξ 实际满足 Qz=0。直接将 pulled-back action 的 z⁺c_lin 项当作纯 vertical Hamiltonian，却会得到 Qz=c_lin，任取非零 cap ghost 即反例。

**修订：** 保留 ∫(z⁺δx_lin+η⁺δc_lin) 的 horizontal connection；相对 Hamiltonian 加 Q_base 才给完整 differential。不能将 vertical pairing 的恒等式升级为全空间 product 的恒等式。

## 第二十六轮：source residuals 不能用 quartet 全部消去

### A57. 时间平均 source 与 ghost momentum 决定 cap kernel

常数 u 的 relative primitive ξ 为0，但 σ=∫u 不为0，实际 kernel 为 δ(x_f−x_i−σ)。删 σ 会改变 cap transmission；删 exp[i b₀(c_f−c_i)/ħ] 则 mQME 的 boundary derivative 不再抵消。b₀=0 也不在 p₀≠0 时 Q-invariant，因为 Qb₀=−p₀。

**修订：** SC2 只收缩 ξ/η 及其 partners，保留 (σ,b₀)。Middle ghost integration 先给 d=b₁−b₂，再沿 residual Lagrangian 积分 d 才恢复状态。单位输出为1的检查排除把 bare zero ghost integral 误当归一化的做法。

## 第二十七轮：源核必须带着原 joint domain 返回

### A58. 将受约束 response 改成独立变量会丢失真实限制

固定 outer data 使 p=a 时，∫du exp(−iua/ħ)/(2πħ)=δ(a)。无依据地再独立积分 p 得1，丢失对 a 的条件；Gaussian-regularized kernel 在非恒定 test 上明确区分二者。原 chord 中 ∫p=κr(Q) 与 outer primitive mismatch 相连，正须保留这种 joint relation。

**修订：** SC kernel 与真实 constraints、S_ref 和 corners 一起使用。SC 的成功不是原 full regional path integral 已经因子化的证明。

### A59. Bosonic cap frame 单独不是完整 BFV frame transport

本源模型 Q_cap(px)=pc，而 Q_cap(bc)=−pc。只有 F_cap=−(px+bc)/2 的总和 Q_cap-closed；只保留 −px/2 给非零 −pc/2。依赖 momentum 的 generator 也不能无条件当作同一 polarized wavefunction space 上的乘法。

**修订：** SC3 同时保留 ghost cap term、polarization 及 dual pairing 的运输；原 full CS ghost/antifield pushforward 如何产生此模型仍须导出。

以上三轮有[40项最终执行检查](checks/source_cap_bv_verification.md)支持。当前 repaired statement 限定在已定义的 minimal source model；不把这一限制改写成原区域到该模型的成功假设，也不由本轮通过推论 G1–G6 完成。

## 第二十八轮：unreleased bulk 不包含 release equation

### A60. 真正的 regional solutions 也能有非零 response mismatch

在单位 disk 的两个半圆上取 φ₁=1−x²−y²、φ₂=0、At=q=0。每片 dA=0，真实外墙的 At=va_s 成立，端点相容；但 seam response 为 p=−2κy，合法 χ=y(1−y²) 检测到 −8κ/15。Ghosts/antifields 为零时原 regional Q-vector 为零，而 SC 的 Qb=−p 非零。

**修订：** 保持 p 的 unreleased bulk → SC Q-map 被反驳。用原 action 的 release constraint 及其 Noether resolution 作为中间对象；[BS2](bulk_boundary_source_release.md) 已在该扩展对象上构造实际 Q-map，而不是继续寻找被反例排除的直接等价。

### A61. Smooth bulk density 不能代替 pure boundary covector

若 smooth bulk density 表示 −∫γpδq，对任意 compact interior variation 测试使它处处为零，和 A60 的非零 boundary test 矛盾。加权 A⁺ 的 Q 也有真实 interior term：κ∑∫Eχ da=μχ−κ∑∫d(Eχ)∧a；在该 flat counterexample 中两项恰相消。

**修订：** 明确引入 source/ghost boundary covectors，并保留 full joint domain。Field splitting At=At⁰+Eq 不自动给仅由 smooth densities 构成的 cotangent product；BS 的 source canonical momentum 仍是 β+𝓑。

## 第二十九轮：release 的 Noether relation 仍含原 seam antifield

### A62. 只加一个 source constraint 不能闭合完整 extension

原 fields 给 QN=dot p。加入 Qβ=−p 后，若写 Qζ=dot β，则 Q²ζ=−dot p，在一般 off-shell configuration 上不为零。不能用 on-shell dot p=0 来证明 off-shell nilpotency。

**修订：** 原共同 ghost 的 boundary variation 给出必要的 N，故取 Qζ=dot β+N。BS 的 projected coordinates 随后逐项满足 SC 的全部 Q-equations，且计算保留独立 curvature F 和 dot p，没有预设它们为零。

## 第三十轮：实际 ghost action 仍有 cap transport

### A63. Q-map 不意味着 source ghost action 已无边界差值

原 canonical ghost terms 的 source 部分为 ∫[𝓧χ+(𝓑+β)dot χ]。改用 x_SC⁺=𝓧−dot 𝓑、b_SC=β 后，仍有 [∫𝓑χ]cap。取 𝓑=t bar θ、χ=θ 给非零 bar θθ，删掉它会改变 action。完整 symmetric-to-canonical frame 还有原来的 side/cap terms。

**修订：** BS3 显示这些差值，保留 b_can=β+𝓑 及 Qb_can=𝓕−p。已有 Φ 是 actual cochain map；相对 odd pairing、retained fiber 和完整 quantum pushforward 不由此自动成立。

[33项最终执行检查](checks/bulk_source_release_verification.md) 与正文的 continuous/off-shell 证明分开记录。三轮修订改变了下一步应证明的比较类型，仍保留完整 G1–G6。
