# 有限切割粘合：输入的逐项删减审查

日期：2026-09-18。对象是本目录当前正文、三份来源快照与 [claim ledger](CLAIMS.json)。本表接续 [反例审查](counterexample_audit_2026-09-18.md)，不修改原定理。

## 结论：必须保留信息，但若干重复字段可以删

不能丢的是：实际动力学和物理边界、切割与识别的几何含义、完整相容源域、正确类型的传播数据，以及所声称重建的观测量及其乘法处方。明确的删除失败包括丢失初速度、产生 null kink、留下人工 Robin defect、漏掉跨区观测量和 boundary contact。

**没有证据要求把每个计算结果都作为独立输入保存。** 完整 action/domain 和求解规则已保留时，$G,H,\rho,D$、许多高阶 jets、代数的具体 presentation 可以重新生成。Parent strip、辅助 closing chart、选定 lift、模基和二元操作历史也没有被证明具有独立不可删性。严格 $m>0$、逐端 $\sigma\ge0$ 是本稿采用的充分条件，不是所有可粘合模型的必要条件。

本审查始终区分三种测试：

1. **丢信息见证：** 忘掉某项后两份合法输入变得一样，但指定的场、响应、括号或算符结果不同。这证明相对于这个遗忘操作，信息不能删除。
2. **准入失败见证：** 撤掉一项约束，会放进无解、不唯一、非光滑或乘法未定义的数据。这证明需要某种准入限制；不自动证明原文那一套限制是唯一或最弱的。
3. **可替换/可导出：** 保留其余数据便能恢复该项，或者存在明确的等价实现。这里应给出成功删减或替代的例子，不能为了填表制造“删了就坏”的反例。

如果还保留足以计算某项的其他输入，仅从文件结构上删除那个字段，不算丢掉该项信息。反之，证明义务也不能被一句“输入已满足”替代。本表不声称已求得跨所有场论的唯一最小对象。

来源简记：**01**＝[主定理](notes/01_finite_cut_theorem.md)，**02**＝[三类接口](notes/02_three_cut_calculus.md)，**03**＝[量子与重整化](notes/03_quantum_and_renormalization.md)，**04**＝[symmetry/energy/flux](notes/04_symmetry_energy_and_flux.md)；**N1**＝[standalone 来源](sources/standalone_binary_observable_sewing.md)，**N2**＝[observable-first 来源](sources/observable_first_sewing.md)，**N3**＝[symmetry 来源](sources/symmetry_and_closed_sewing.md)。下文 F1–F16 是算例编号，不是 ledger 的 claim ID。

## 逐项总表

| 输入 | 来源和用途 | 删除测试：一至两个例子 | 保留后如何避免失败 | 严审结论 |
|---|---|---|---|---|
| F-01 独立目标：场/响应/带标签代数/动力学，要求比较到哪一层 | 01 §§1、5；N2 §7 | F1：同一等时 CCR 配不同频率；F10：只取 map 的像会把漏掉生成元说成成功。 | 先固定要重建的生成元、关系、时间作用和 source labels，再检验实际 map。 | **目标必须明确**；独立验收是逻辑义务，不是新增物理自由度。 |
| F-02 实际几何、metric、时间定向、face 类型及 occurrence | 01 §§2–3 | F5：只保留 $q$ 不能跨 spacelike cap；F7：把前后 cap 当两个 Dirichlet walls 得到共振 BVP。 | 几何决定正常的 Cauchy、characteristic 或 timelike source problem。 | **必留信息**；已知 metric/embedding 时 causal 类型可算，不必重复输入。 |
| F-03 完整 action、field/source pairing、质量及耦合归一化 | 01 §1；03 §2 | F1：频率 1、2 的响应不同；$S\mapsto cS$ 保留齐次 EOM 却使固定场标签的 Peierls 核缩放 $1/c$。 | Action 连同源耦合固定 Hessian、响应与括号。 | **必留信息**，可用等价的完整动力学数据编码；裸解集合或裸代数不够。 |
| F-04 真正剩余边界的 $B$ 与边界 action | 01 §1；04 §6 | F2：同区间 D/N 中点 resolvent 不同；F3：漏 Robin surface energy 破坏能量平衡。 | 保留实际 wall domain 和对应表面能量，求解的是同一外边界问题。 | **必留信息**；boundary action 与边界方程不能随意互相代替。 |
| F-05 哪些项是本次人工 closing，哪些是 retained defect/matter | 01 §3.1；03 §4 | F3：同一个 Robin 项保留或移除，feedback 分母相差 $\sigma_1+\sigma_2$。 | 只移除被指定的人工项及其专有量子 contacts。 | **必留物理选择**；由操作指令给出亦可，不一定是 action 内额外字段。 |
| F-06 面识别 $J$、方向、collar 与场/源运输 | 01 §§2–4；04 §1 | F4：$J=2$ 给反射振幅 $-3/5$，不是同一 kinetic metric 的透明接口；漏 oriented flux 留 surface delta。 | $J$ 保持所声明动力学并按 action 的对偶规则运输 flux/source。 | **必留识别信息**；正交性是“同一理论透明接口”的条件，非所有 defect 的条件。 |
| F-07 Junction cocycle、全局 twist，以及 self-sewing 只识别面而不复制 bulk | 01 §5.2；N3 §11 | F8：可缩小圈 transition product $=-I$ 强迫非普通单值场；周期/反周期圆谱不同。 | 可缩处检查 cocycle，非可缩处保留 holonomy；bulk action 每份只计一次。 | **必留一致性/拓扑信息**；给定完整 atlas 时 cocycle 是检查结果，不是额外可调参数。 |
| F-08 完整 Cauchy 输入 $q,p$ 及所覆盖的空间范围 | 01 §3.2；02 §3.1 | F5：$q(0)=0$ 的零解与 $\sin(\omega t)/\omega$ 有不同初速度和未来。 | $q,p$ 加其余 incoming data 给正确唯一性问题。 | **必留信息**；不能把局部 cap patch 冒充完整 Cauchy surface。 |
| F-09 完整 characteristic traces、共同 corner 值与横向 seeds 的来源 | 01 §3.3；02 §3 | F5：massive kink 的零 trace 看不见 transverse jump；双 null corner 漏减 $c$ 会把值计两次。 | 第二张 sheet/其余 incoming data/正确 wall relations 提供 seeds，PDE 递推传播它们。 | **完备信息必留**；若 seeds 已由另一张 sheet 决定，就不能再当独立变量添加。 |
| F-10 Bulk source、wall source、初值的联合允许域 | 01 §2.2；02 §2.2 | F6：$q=x(1-x)$ 与 $f=2+m^2q$ 合法，拆开后角点加速度为 $\pm2$。 | 直接对完整相容 tuple 求解及比较，不要求不合法的独立分量响应。 | **准入约束必留**；不能把联合域替换成直积。 |
| F-11 目标 regularity、matching jets、off-shell extendibility | 01 §§2.2、4.1；02 §2.3 | F5：弱 massive kink 不是 smooth field；F6：相交面给不同点值不可能来自一个连续场。 | 只装配同一 smooth jet；非特征高阶 jets 由 PDE 恢复，null jets 由 seeds 传播。 | **某种正则性约束必要**；未证明 Whitney 余项界是本有限多边形类中独立、不可由其余 smooth 数据推出的额外输入。 |
| F-12 源的极化、归一化及合法 support/trace domain | 01 §3.1；02 §4；N1 §3 | F2：$b=q$ 与 $\tilde b=2q$ 的零源 $G$ 一样，但对同一数值标签的 $H$ 不同；把 Robin $b$ 当 $q$ 匹配留下 defect。 | 记录 source pairing/chart，并转回真实 $q,\Pi$ 比较。 | **标签含义必须在**；D/N/R chart 可更换，不是唯一不可删坐标。 |
| F-13 Retarded/advanced prescription 与 incoming 条件 | 01 §2.1；02 §§2、4 | F7：同一个 $L$ 的 retarded 与 advanced 解不同；初值不指定可任加 homogeneous mode。 | 规定因果方向、源域和完整 incoming data。 | **必留选择或可恢复规则**；不是再给一份任意 Green kernel。 |
| F-14 完整 sourced reopening 规则 | 01 引理 4.2；02 §6 | F2：旧 Dirichlet trace 恒零，而未切分光滑模在 cut 上可非零；F1：裸 CCR 无法选择响应。 | 从当前 closed action/domain 重新允许正确源，而不在旧零 trace class 上强行求商。 | **能力/信息必留**；不要求缓存每个 response block，见 F-29。 |
| F-15 每个实际 intermediate 的存在、唯一性、连续性及所用 inverse 的域 | 01 §§2、5；02 §7 | F7：two-time Dirichlet 共振不唯一且可能无解；零频 $\sin\omega t/\omega\to t$ 不能被删为零。 | 分别证明相应 source problem；inverse 仅在真正可逆域用，零模另保留。 | **证明义务和准入条件**；不是任意理论可付费提供的一条“well posed”标签。 |
| F-16 比较程序确有同一最终 geometry/action/$B$，且每一步可再次 opening | 01 §§2.3、5 | F8：改变 circle twist 会改谱，不能当重括号；F3：一条路径留下 Robin 势，已换了输出理论。 | 比较相同物理终点，在每步保留重新取源所需信息。 | **比较前提必留**；满足后不需要独立输入每条路径的 associator。 |
| F-17 观测量 labels、Hamiltonian/分布准入与保留的 completion | 01 §1；03 §1 | F9：点场自乘出现发散 $W(x,x)$；准许 classical null trace 不自动准许其 quantum product。 | 使用已证明 contractions 存在且闭合的系数域，新增 sharp 对象另验收。 | **域必须明确**；当前 microcausal 条件是一个可用选择，不声称唯一最大必要类。 |
| F-18 Joint collar/multipoint coefficients 的装配规则 | 01 §5；N1 §9.4；N2 §7 | F9：$\sum2^{-n^2}e_n(x)e_n(y)$ 是无限 rank 的 smooth cross kernel，有限 algebraic tensor words 不能表示。 | 准入联合测试核，或提供等价且已说明的拓扑完成。 | **指定目标所需信息必留**；不等于强制唯一 tensor topology。 |
| F-19 实际 lifts、EOM/BC null relations、kernel 与 image 的验收 | 01 §5；N2 §7 | F10：$\mathbb R[x,y]\to\mathbb R[x],y\mapsto0$ 有非零 kernel；$x\mapsto x^2$ 不满。 | 从独立 target 给 preimages，并证明完整零关系；不能只比较少数 brackets。 | **验收必需**；null ideal 若已由 action/target 定义，可计算而非独立猜定。 |
| F-20 自由量子层合法 $W$ 或等价的 Wick construction | 01 §5；03 §1 | F11：仅知 $W-W^T=iE$ 未给完整 Wick products；相同 CCR 的对称二点部分可不同。 | 给出满足所需方程、wavefront、star 条件的实际构造，并运输 products。 | **对 Wick 目标需要**；纯线性 CCR 可直接从 $E$ 构造，不需要先选 vacuum。 |
| F-21 复合场 subtraction、有限 scheme maps 与 insertions 的同步转换 | 03 §§4–5；N1 §§10、12 | F11：$\phi^4\mapsto\phi^4+6\hbar c\phi^2+3\hbar^2c^2$；漏转换使相同 coupling 字母指不同插入。 | 指定相同物理复合场并同步转换全部相关插入/contacts。 | **该层的规范信息必留**；具体 symbols/ordering 可等价更换。 |
| F-22 实际离壳 Ward lift、source covariance、improvement 和 junction 运输 | 04 §§1–5；N3 §§2–9 | F12：取 $s=\phi$ 时完整 shift flux 为零，删 $q\Pi_s$ 却制造假流；massive constant shift 非对称。 | 从完整 action identity 计算 charge/flux，保持参数与全部 sources/jets。 | **若要求 symmetry/charge 比较则必需**；不要求每个 infinitesimal lift 已有有限群作用。 |
| F-23 Charge 的完整空间范围、smearing 和独立 flux window | 04 §§4–6 | F12：compact $\int j\cdot d\eta=0$，独立窗口可给正值；小 diamond 的非法 total-charge 标签不因书写而合法。 | 固定 smooth support/厚度及空间积分域，再使用 Ward balance。 | **指定观测量的准入数据**；不需要未证明的 sharp null limit。 |
| F-24 相互作用 $P,g$、source-work 及形式阶数的含义 | 03 §2；04 §7 | F13：$g_t\ne0$ 时有 $\lambda g_tP$ 做功；toy $y'=\lambda y^2$ 的形式解不保证过 blow-up 的实际解。 | 在已给 action 和相容源域逐阶递推；明确 formal/实际耦合的不同目标。 | **由 action 导出的该层输入**；convergence 不是当前形式结论的额外前提。 |
| F-25 Time-ordered products、boundary Ward base contacts 与 removal compatibility | 03 §§5–7 | F13：Poisson kernel 边界极限给单位 delta；sharp step 乘 contact 没有自动定义。 | 构造实际边界处方，使用 smooth partitions 并检查 Ward/removal。 | **扩大到完整相互作用 Ward 目标时需要，且尚未全部构造**；不能假定此条件已满足。 |
| F-26 严格 $m>0$、每端 $\sigma\ge0$ | 01 §1；02 §2 | F14：$m=0$ 的 D 区间仍有正谱隙；一端负 Robin 也可保持 $K>0$。 | 当前条件保证正 form；更弱的 spectral/coercivity 条件可在具体模型取代。 | **不是普遍必要条件**。负谱会破坏本稿 stationary positive-frequency 步骤，却不自动破坏有限时间 classical evolution。 |
| F-27 二维平直、静态墙、有限 affine caps/cuts | 01 §§2、8；03 §3 | F15：光滑非 affine 的 spacelike cap 也可满足 causal-convex 几何检验；任意坏 BVP 又确会失败。 | 此类提供可用的 PDE、reflection 与图估计；换类需重证相应接口。 | **当前证明范围**，没有证明这些字面条件是所有 gluing 的必要条件。 |
| F-28 特定 parent strip、closing chart、off-shell lift、partition | 01 §2；02 §2.3 | F15：两份合法 lift 的差由唯一性消失；diamond 的无因果返回 phantom wall 不改变内部 $E$。 | 保留物理域与允许比较条件，辅助选择的变化由 uniqueness/等价 map 消除。 | **可以替换/遗忘具体选择**；它们导致的 state 选择不自动相同。 |
| F-29 分开缓存 $G,H,\rho,D$、高阶 jets、$\mathfrak A_B$ 的全份 presentation | 01 §§1、3；02 §§3、6 | F16：给完整 Dirichlet kernel 及 trace/source convention 可求 Poisson/response blocks；Cauchy 高阶 jets 由方程递推。 | 保存足以重算的 action/domain/labels/recipe 即可。 | **可删重复字段**。没有给出在全部剩余定义不变时 $H,\rho,D$ 还能任意不同的合法例子。 |
| F-30 特定 vacuum、regional marginals、Hilbert factors | 03 §4；04 §6；N1 §9 | F16：两份 Gaussian 全局态具有同一 marginals、不同 cross covariance；同一 dynamics 的 Wick representatives 可等价转换。 | Algebra sewing 不从 marginals 猜态；只有要求 state sewing 时另外给 correlations/preparation。 | **不是核心代数粘合输入**；对 state/绝对真空能目标才需额外数据。 |
| F-31 整个 binary 历史、永久 ports、特定模基与每步 associator | 01 §§3、5；02 §6 | F16：相同 closed action/domain 重新求源给同一结果；模基正交变换不改变 kernel。 | 保留当前完整对象及实际 comparison maps，历史可遗忘。 | **表示/计算记录可删**；不可一并删掉重开规则或尚存物理边界。 |
| F-32 有限 tests、截断模式及“输入已验证”的标签 | 05 审查；原 checks | F9：任意有限 cutoff 漏掉其上方一个光滑本征模；对有限样本通过不证明全域存在。 | 使用解析准入/比较证明，tests 只查具体失误。 | **不是定义理论的输入**，也不是可替换证明的证书。 |

## 算例及其修复机制

### F1：裸代数不能恢复动力学；EOM 也不能恢复归一化

两个 oscillator 都有 $\{q,p\}=1$，但 $H_\omega=(p^2+\omega^2q^2)/2$ 的单位冲量响应为

$$G^R_\omega(t)=\theta(t)\frac{\sin\omega t}{\omega}.$$

在 $t=\pi/2$，$\omega=1,2$ 的响应分别为 $1,0$。遗忘 $H$ 或其等价动力学数据后，等时 CCR 不能选出答案。另取 $S_c=cS$，并固定源项及物理场标签，则 Hessian 为原来的 $c$ 倍，inverse/Peierls kernel 为 $1/c$ 倍；齐次 EOM 却相同。保存完整 action/source pairing 排除这种歧义。若一个等价 description 已给 Hamiltonian、bracket 和完整源规则，原 action 的全部书写细节则未被证明不可压缩。

### F2：真实边界、源 chart 与旧零 trace class

对区间 $[0,\ell]$ 的 $-\partial_x^2+\kappa^2$，$\kappa>0$，两端 D/N 的中点 resolvents 分别为

$$g_D(\ell/2,\ell/2)=\frac{\tanh(\kappa\ell/2)}{2\kappa},\qquad
g_N(\ell/2,\ell/2)=\frac{\coth(\kappa\ell/2)}{2\kappa}.$$

差为 $1/[\kappa\sinh(\kappa\ell)]\ne0$，所以实际外壁 realization 不能丢。另一个更直接的 opening 见证是：全局 D 区间上的 $\sin(\pi x/\ell)$ 在中点不为零，旧半区间的 artificial Dirichlet wall 却把该 trace 恒设为零。旧零类上没有一个普通商操作能把这个非零 trace 重新变出来；必须重新开放源域。

但不要据此断言四个 response blocks 必须独立存储。把 source coordinate 从 $b=q$ 改为 $\tilde b=2q$，零源 $G$ 不变，$H$ 的数值表达缩半；这个例子证明 source convention 不能遗忘，**不证明在相同 action、source convention、domain 下，$H$ 是一项独立自由数据**。

### F3：人工 closing 与真实 defect 的区别有可测后果

两段的透明 D/D feedback 含分母 $d_1+d_2$。保留两内壁 Robin potentials 则为 $d_1+d_2+\sigma_1+\sigma_2$。取 $d_1=d_2=\coth1$、$\sigma_1+\sigma_2=1$，两个 reciprocal 明确不同。外形相同的 action 项究竟要删还是保留，必须由物理问题或操作指令指定。

在真正外壁，$\Pi=\sigma q$ 的表面能为 $\sigma q^2/2$，导数为 $\Pi\dot q$。漏掉该能量使本来相消的 bulk/wall 交换看起来不守恒。正确规则同时处理 action、response 和 energy；它不把所有边界项一律删掉。

### F4：场值相等仍可留下界面源；非等距识别可以产生反射

取人工面 $x=0$，两侧 $\phi_-=0$、$\phi_+=\sinh(mx)$。两侧分别满足静态 massive equation，且 cut 上场值同为零，但导数跳跃为 $m$。因此

$$L\phi=-m\delta(x).$$

外面的源/边界 traces 可按这些光滑分片值给定；问题完全发生在内部面。完整 oriented flux matching 才排除这个额外面源。

再取两侧相同 kinetic metric，令 $q_2=Jq_1$、$\Pi_1+J\Pi_2=0$。对同波数的入射/反射/透射振幅有 $t=J(1+r)$、$1-r=Jt$；取 $J=2$，得 $r=-3/5,t=4/5$。这是可描述的物理接口，却不是本稿同一 bulk theory 的透明识别。给出并检查 $J$ 所保持的 action 数据，才能区分这两种任务。

### F5：三类面的独立数据不同，高阶数据也不全是独立输入

**Spacelike。** 单模 $q(t)=0$ 与 $q(t)=\sin(\omega t)/\omega$ 在 $t=0$ 场值相同，初速度分别 $0,1$。保存 $p$ 才能确定未来。

**Null。** 用本稿 massive 级数

$$A(u,v)=\sum_{n\ge0}\frac{(-m^2/4)^nu^{n+1}v^n}{n!(n+1)!}.$$

$\phi=\theta(u)A$ 是分布弱解，trace/tangential jump 均为零，但 $[\partial_u\phi]=1$。保留 incoming transverse seed 并用 PDE 传播，排除它。双 null 输入还须有 $f(0)=g(0)=c$；在 Volterra 式中使用 $f+g-c$，否则 corner 值变为 $2c$。

**可删的重复项。** 给全 Cauchy $q,p,f$ 后，$\phi_{tt}=q''-m^2q+f$ 已决定下一 jet；双 null 时 $a_{r+1,s+1}=f_{rs}/4-m^2a_{rs}/4$。所以不能再增加任意独立 mixed “corner momentum”。Seeds 可来自另一张 sheet 或 wall relations；只有尚未被这些资料决定的部分才是必要输入。

### F6：共同角点相容性必须保留，但不能凭此证明所有 extension 假设独立

在 $[0,T]\times[0,1]$ 取 D walls、$q=x(1-x)$、$p=0$、$f=2+m^2q$。联合 tuple 有光滑静态解 $\phi=q$。拆成 force-only 与 initial-only，角点 $\phi_{tt}$ 分别为 $2,-2$，各自违背 D wall 要求的零值。因此保存联合允许域可以避开非法分解。

更低阶的例子：两张相交面在同一 corner 分别给场值 $0,1$，即使各面上的函数单独都光滑，也不存在连续装配。要求它们来自同一 off-shell smooth lift 排除此例。

这两个例子只证明联合相容性和 regularity 不能遗忘；**它们没有证明**在本稿有限、规则交角和完整 smooth jet 条件已经给定之后，还必须额外独立输入一整份 Whitney remainder 数据。该项目前是一种充分的域定义/存在性接口，独立最小性未证。

### F7：因果 prescription、真实良定性和零模

相同 $L$ 的 retarded、advanced solutions 具有不同支持；若不给 incoming data，还可加任何 homogeneous solution。固定 prescription 与完整初值后才得到本稿所需唯一比较。

对 $\ddot q+q=f$ 改用 $q(0)=q(\pi)=0$：$f=0$ 时 $A\sin t$ 任意；$f=\sin t$ 时，将方程乘 $\sin t$ 积分，左侧在两端数据下为零，右侧为 $\pi/2$，故无解。这证明变分边界条件不等于所需 causal IBVP。

零频也不能靠删模式解决：$\sin(\omega t)/\omega\to t$。它代表正常的自由粒子传播；把 inverse 的零空间简单设零会丢初值。需要声明逆的实际作用域，或使用保留零模的源关系。

### F8：局部 cocycle、全局 twist 与 self-sewing

取 $J=\left(\begin{smallmatrix}0&-1\\1&0\end{smallmatrix}\right)$、$K=\operatorname{diag}(1,-1)$，则 $JKJ^{-1}K^{-1}=-I$。如果这个回路围着要填入的普通顶点，非零一般场不能同时满足单值性；保留 puncture/defect 或限制 field space 已经改变问题。普通 junction 的 cocycle 排除这一输入。

相反，圆上的 $J=+1$ 与 $J=-1$ 是合法的不同 global twists，动量分别为 $2\pi n/\ell$、$2\pi(n+1/2)/\ell$。两者不是“同一粘合的不同括号”。Self-sewing 还必须只识别同一 bulk 的两个 boundary occurrences；错误地复制 bulk 并最终把两份场设为同一份，会得到 $2S$ 而非 $S$，F1 的归一化问题随即出现。

### F9：观测量域、跨区无限 rank 与全 modes

**乘法准入。** 在长度 1 的 D 区间，中点等时二点函数的形式谱和包含

$$\sum_{n\ge1}\frac{\sin^2(n\pi/2)}{\sqrt{n^2\pi^2+m^2}}.$$

奇数项给 harmonic divergence。因此把点值 $\phi(x)$ 当任意可自乘的 quantum generator，会遇到 $W(x,x)$；指定 smear/subtraction 是实质条件。Null pullback 也不能仅由 classical trace 的存在推出。这里不主张某一套充分 wavefront 条件是所有可构造扩张的必要条件。

**联合 labels。** 取 $e_n(x)=\sqrt2\sin(n\pi x)$，以及支持在 $(0,1)$ 内、在某个开区间正的 smooth bump $\chi$。两个区域的坐标 patch 上有合法 smooth compact kernel

$$f(x,y)=\chi(x)\chi(y)\sum_{n\ge1}2^{-n^2}e_n(x)e_n(y).$$

任意阶导数都收敛。把两片 patch 识别为同一个积分区间来计算其 rank，对任何支持在 $\chi>0$ 区间内的非零 $g$，有

$$\langle g,T_fg\rangle=\sum_{n\ge1}2^{-n^2}|\langle e_n,\chi g\rangle|^2>0,$$

因为 $\{e_n\}$ 完备。所以 $T_f$ 有无限 rank，不能写成有限个 $f_a(x)g_a(y)$ 的和。两边只保留有限 algebraic tensor words 会漏掉这类 cross coefficient。可附加 smooth 时间 tests；以 Cauchy 数据表达时，也可使用 N1 §13.3 的 time-strip 代表，而不宣称 sharp quantum cap trace 已准入。必要的是足够的联合系数/完成规则，不是某个特定函数基。

**有限测试。** 对任意只看前 $N$ 个 modes 的检测，选一份第 $N+1$ 个光滑本征模，全部被测系数都为零，场却非零。全模态信息不能用一次有限 cutoff 的 PASS 取代。前述无限 rank 的证明来自正性与完备性，不来自有限 rank 采样。

### F10：lifts、kernel、image 是不同验收，不能相互冒充

零 Poisson bracket 的多项式代数已经给出两个最小逻辑例子：

- $\mathbb R[x,y]\to\mathbb R[x]$，$x\mapsto x,y\mapsto0$，满射但 kernel 为 $(y)$；忽略关系会多算观测量。
- $\mathbb R[x]\to\mathbb R[x]$，$x\mapsto x^2$，保持乘法且单射，但漏掉目标的 $x$；把 image 重新命名为 target 会掩盖失败。

场论中的 EOM 见证是 $F_{Lh}(\phi)=\int(Lh)\phi=0$，其中 $h$ 为 interior compact test、$L\phi=0$，积分分部没有边界项。若不处理这类 null relation，source presentation 有多余元素。反之不能任意增加关系。独立目标、实际 preimages 与完整 kernel 分别检查这三种问题。这些有限代数例子证明验收逻辑不可省，不是另一个标量 PDE 定理。

### F11：Wick 数据要相容，特定代表可以更换

对同一个传播问题，$W'=W+s$、$s$ 为允许的 smooth symmetric bisolution 时，

$$\alpha_s=\exp\!\left(\frac\hbar2\langle s,\delta^2\rangle\right)$$

运输 Wick products。局部对角差记为 $c$ 时，

$$\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2.$$

这里的 $c$ 可理解为点处 $s(x,x)$ 的局部值，不要求非零常数函数是 massive equation 的全球 bisolution。改变 representative 却把 interaction/insertion symbols 原样保留，会改动 finite mass/vacuum terms；同步运输则是合法替代。

因此“完整 Wick prescription 的信息要一致”成立，“必须使用同一个指定 vacuum 才能粘合”不成立。若 opening 改了动力学，旧/新 $W$ 连 antisymmetric part 都可不同，更不能当同一 theory 内的 smooth shift。先重建新 dynamics，再比较同一物理复合场。

### F12：Ward improvement 与观测窗口分别解决什么

完整 shift flux 是 $-\Pi_\phi s+q\Pi_s$。取同一允许解作为 $s=\phi$，两项严格抵消；删去第二项会在 $q\Pi_\phi\ne0$ 处得到假通量。保留 action 的 quasi-symmetry improvement 就排除这个错误。$m>0$ 时常数 $s\ne0$ 不满足 $Ls=0$，所以也不能把所有常数平移列成该 massive theory 的 symmetry。

另取 Neumann strip 的两份空间常数解 $\phi=\sin(mt)/m$、$s=\cos(mt)$，有 $j_s^t=1,j_s^x=0$。整体 compact $\eta$ 给 $\int j\cdot d\eta=0$。取非负非零 smooth compact bump $b(t)$，$h'(t)=b(t)/\int b$，并取空间 compact $\rho$、$\int\rho=1$ 和 $\chi(t,x)=b(t)\rho(x)$，则

$$\int\chi j\cdot dh=\frac{\int b(t)^2dt}{\int b(t)dt}>0.$$

这是真正满足 compact-window 要求的例子。保留窗口可以测一个局部通量；它不需要厚度趋零的 quantum limit。Mathematica 另算的 Gaussian/Erf 积分值 $\sqrt2$ 只是同机制的快速衰减诊断，不冒充 compact test。

### F13：形式展开、源做功和 boundary contacts 是不同输入层

给 $S=S_0-\lambda\int gP$，能量 identity 含 $\lambda g_tP$。忘掉真实 coupling history，会把外源做功误叫作不守恒异常；记录并运输 $g$ 就保留该项。

形式性也不能省略说明：toy $y'=\lambda y^2,y(0)=1$ 有 $y=\sum_{n\ge0}(\lambda t)^n$，逐阶 coefficients 都存在，但实际解 $1/(1-\lambda t)$ 会 blow up。这是“逐阶存在不蕴含任意实际耦合/时间存在”的逻辑例子，**不是**声称已找到本稿 formal scalar/YM 递推的反例。

对边界接触，

$$P_s(\tau)=\frac{s}{\pi(\tau^2+s^2)},\qquad \int P_s(\tau)d\tau=1,$$

虽然普通系数局部可积，$s\downarrow0$ 仍给 $\delta(\tau)$。删去它会改 Ward balance。带 contact 的 distribution 也不能任意乘 sharp step：例如 $\delta(t)\Theta(t)$ 的通常分布乘法没有由这些符号唯一指定的值；不同相对平滑处方可以改变接触系数。

保留并构造 boundary extension、Ward normalization 和 smooth partition 规则才控制这些操作。本稿无导数二维势图在所声明最小 scaling prescription 内已有唯一 $L^1$ extension，**不需要为每个多顶点碰撞再输入任意新参数**。但这不解决仍缺的全部 stress/force/current boundary base contacts。一般 finite scheme 转换的背景见 [Brunetti–Dütsch–Fredenhagen](https://arxiv.org/abs/0901.2038)；本文对具体反例的判断来自上述计算，而非把该文当作任意边界存在定理。

### F14：严格正质量与逐端非负 Robin 都不是普遍必要条件

第一例：$m=0$、长度 1 的 D 区间有 $K$ eigenvalues $n^2\pi^2$，最低为 $\pi^2>0$。因此正质量不是获得正空间算子的唯一方式。

第二例：在 $[0,\ell]$ 取外法向 convention 下的 Robin 系数

$$\sigma_0=\alpha,\qquad\sigma_\ell=-\alpha,\qquad0<\alpha<m.$$

尽管一端系数为负，闭 form 满足

$$\int_0^\ell(|u'|^2+m^2|u|^2)dx+\alpha|u(0)|^2-\alpha|u(\ell)|^2
=\int_0^\ell|u'-\alpha u|^2dx+(m^2-\alpha^2)\int_0^\ell|u|^2dx.$$

所以仍有严格正下界。$u=e^{\alpha x}$ 满足两端条件，并给 eigenvalue $m^2-\alpha^2$。若改取 $\alpha>m$，该 mode 变成负谱：它破坏当前 stationary positive-frequency construction 所需的正性，却仍有有限时间的 $\cosh$ 型 classical evolution，不能直接宣称 IBVP 不存在。

这只证明逐端非负条件强于具体模型的正谱要求；没有在此把原有限-cut 量子定理自动扩展到所有负 Robin 参数。[静态有边界波算子的文献](https://arxiv.org/abs/1804.03434) 也把空间算子 extension/谱条件作为需要明确处理的输入；更大模型仍须逐项验证。

### F15：几何证明范围和辅助 construction 不能混作物理必需品

取 $\tau_-(x)=\varepsilon\sin\pi x$、$\tau_+(x)=2+\varepsilon\sin\pi x$，$0<\varepsilon<1/\pi$。这不是分段 affine cap，但沿未来 causal curve 的 $t-\tau_\pm(x)$ 仍单调，同一个 causal-convexity 检验有效。它说明 affine 的字面形式不是该几何机制的必要条件；本例没有独立重证所有新切割的 quantum/contact theorem。

两份允许 off-shell lifts 产生的最终解若满足同一 complete sourced problem，差由唯一性为零。Diamond 的辅助 parent wall 只触到 tip、不能经反射连接内部两事件时，改变该 phantom wall 不改变内部 causal kernel。因此可以更换辅助 parent、lift 或 partition。它们可能选出不同的 state representative；“同 causal algebra”不推“同 vacuum”。

### F16：真正可以压缩的字段，以及 state 层仍缺的信息

**响应缓存。** 在完整 Dirichlet problem 上，Green identity 从 $G_D$ 对边界的合法法向导数构造 Poisson map $H$；再取实际 response trace 得 $\rho,D$。更一般地，action、domain、source coupling 和 causal solver 已足以重算整份源关系。由于必须控制一侧 traces 和允许域，这不是从若干 bulk 核采样值凭空恢复边界响应；也不支持“只比较零源数值 $G$ 就已经证明完整 reopening”。

**重复 jets 与 presentation。** F5 的递推已经说明很多 jets 不独立。固定 labels、$E/W$、EOM/BC relations 后，$\mathfrak A_B$ 也可由指定 recipe 生成。基变换、完整 closed intermediate 的二元历史、已消失 seam 的 ports 都不需要永远作为额外物理变量保存。充分工作对象可以包含这些便于计算的缓存，但没有独立最小性。

**态信息。** 对两个 oscillator 的零均值联合 Gaussian 态，按顺序 $(q_1,p_1,q_2,p_2)$、$\hbar=1$，取 covariance

$$C_\pm=\frac1{16}\begin{pmatrix}
17&0&\pm15&0\\0&17&0&\mp15\\
\pm15&0&17&0\\0&\mp15&0&17
\end{pmatrix}.$$

两者的两个 local blocks 都是 $17I_2/16$；cross correlations 不同。它们均正定，eigenvalues 为 $2,2,1/8,1/8$，并满足 $C_\pm J C_\pm=J/4$，所以都是合法 pure Gaussian covariances。区域 marginals 因而不能决定 global state。此例证明 state sewing 需要额外相关信息，**不证明代数粘合需要先输入一份态**。

## 哪些可以先从工作对象中抽掉

在保留其生成规则及所需解析证明的前提下，可不把以下各项作为独立字段：四块 response 的缓存；PDE 已决定的高阶 jets；某份 off-shell lift、partition、模基；特定 parent/closing chart；重复保存的一整份 algebra presentation；已经闭合且不留真实 defect 的历史 ports；由实际 comparison maps 导出的 associators。

下列也不应被新加成全体模型的强制输入：一个首选 vacuum、区域 Hilbert tensor factorization、sharp null composites、任意 nonlinear boundary condition、BRST 或一座普遍 higher-coherence 塔。要求这些新目标时，应另外声明其输入和验收；本表没有通过删掉难目标来声称它们已经解决。

这一删减方案是**充分信息的压缩建议**。尚未证明“action/domain/source-rule 是任何可能编码中最小的充分对象”，也未证明当前每一条 regularity 条件独立不可删。

## 覆盖与核验

| 原文位置 | 本表对应输入 |
|---|---|
| 01 的对象式 (1.3)、区域/源/定理 F | F-01–F-20、F-26–F-31 |
| 02 的 Green identity、三种 cuts、jets、reopening、arrangement | F-02、F-06–F-16、F-26–F-29 |
| 03 的自由 Wick、formal interactions、势图、scheme、contacts | F-17–F-21、F-24–F-25、F-30 |
| 04 的 Ward、source transport、energy、window、symmetry interfaces | F-03–F-07、F-12、F-21–F-24 |
| N1 的 boundary polarization、source regularity、time-slice、nonlinear 扩展；N2 的 joint labels；N3 的 twists/Ward/quantum naturality | 对应上述条目；其中 nonlinear 与更大 quantum 目标只作条件性扩展，不混入已证 scalar core |
| 原 audit、ledger、checks 与来源中的历史验证陈述 | F-32；有限诊断不作为全域证明输入 |

Verified: 本次用 Mathematica 精确检查了两频率响应、D/N resolvent 差、Cauchy 例、联合 tuple、timelike derivative jump、massive kink 有限截断的正确末项、Robin 分母/边界/平方配方、零频极限、Wick 四次转换、Poisson kernel 单位质量、time-Dirichlet 共振积分和 shift current。Sage 精确检查了 junction 矩阵、前 1/2/4/8 阶 cross-kernel 截断系数矩阵的 rank，以及 $C_\pm$ 的正性、相同 marginals 和 pure uncertainty identity。无限 rank、级数收敛、弱 delta 极限分别由正文的解析论证承担，未由这些有限样本代替。

Assumptions: Signature、$\Pi=-\partial_n\phi$、$E=G^A-G^R$ 与原稿一致；坏例始终说明是丢信息、准入失败，还是超出原 theorem 的替代模型。量子/state 例声明了所用层级；有限几何结论不推广到任意运动墙。

Not verified: 没有证明 universal minimality、所有条件的逻辑独立性、一般 Whitney 最小条件、全部边界 microlocal estimates 或尚缺的 all-order Ward base contacts。表中明确可删/可替换的项没有被伪造失败见证。没有重跑未改变的原 86 项脚本，也没有把上一轮检查记为本次新执行。

本次仅新增本文件并增加 README 入口；不重写原正文、合稿、ledger、历史 manifest 或 results。
