# 主丛粘合：输入的逐项删减审查

日期：2026-09-18。覆盖本目录 12 篇正文、[claims.json](claims.json) 的全部模型/层级，以及 [上一轮反例报告](counterexample_audit_2026-09-18.md) 暴露的输入问题。

## 结论与规则

**有明确不可丢失见证的是信息：** 真实 action/边界/源关系、global group 与 sector、seam identifications、外部 anchors、规范作用及分支选择、Gauss/flux 和 corner 结构，以及目标实际需要的 Wilson/current/channel observables。Flat holonomy、全局大规范分支和跨 channel 算符尤其不能由 curvature、局部 orbit 名称或 fusion dimensions 替代。

**这不证明每个原始字段或坐标都不可压缩。** 给定完整 action/domain/规范作用时，响应算子、presymplectic form、stabilizers、某些 constraints 和 observable relations 可以重算。选择某个 gauge、模基、reference connection、channel basis 或特定 potential representative，也不自动成为物理必需品。BRST、高阶 homotopies、state/Hilbert/amplitude 数据只在对应目标中需要，不能无条件加进每个 classical sewing。

本审查遵守当前工作约定：**区域构造与粘合保留完整预辛场空间及其退化方向，不先 quotient proper gauge。** 下文直接用 fields、gauge actions、transitions 和可观测量失效检查必要性。旧正文的 quotient/PBW/Haar expressions 用作既定目标的对照，不作为本次另行执行区域 gauge reduction 的步骤。可以研究等价编码，但不能以只保存粗 orbit sets 的方式丢掉规范作用和可重开信息。

“删去后会坏”分三种强度：

- **丢信息：** 两份合法数据在遗忘后相同，指定输出不同。
- **准入/一致性：** 删除条件后放进非法场、错误箭头、未定义乘法或不相容 maps；证明需要某种限制，但不证明当前写法最弱。
- **可导出/可替换/下游：** 给出能成功删除或替换的实例，并明确没有该项独立必要性的反例。

若同一信息已被完整 action、source rule 或 quantum realization 编码，就不把删掉其缓存字段算作删掉信息。本表的“必留”不是说所有行相互逻辑独立。对于尚未构造的量子/characteristic 理论，仅能指出需要解决的输入义务，不能称已保证所有例子成功。

来源简记 **00–11** 对应 [README 的分篇目录](README.md)；表中 G1–G20 是下文算例编号，与原 claim ID 不同。

## 逐项总表

| 输入 | 来源和用途 | 删除测试：一至两个例子 | 保留后如何避免失败 | 严审结论 |
|---|---|---|---|---|
| G-01 独立目标、global group $G$、被保留的物理层级与生成元 | 00 §§0.1–0.6；03 | G1：$\mathbb R$ 与 $U(1)$ 的局部 Abelian Lie algebra 相同而 global coordinate 不同；G13：diagonal channels 漏掉 crossing Wilson。 | 先固定 global theory、labels、observables、响应/量子/态等验收层。 | **目标及全局群信息必留**；不能把实际 image 改名为全部 target。 |
| G-02 完整 bulk/boundary/corner action、couplings、matter/defect 与 source pairing | 00 §0.3；02 | G4：漏 corner term 改变预辛退化；G12：CS level 不匹配留下 central term；保留带电界面改变 Gauss balance。 | 完整 action 决定响应、约束、charges；真实 matter/defect 有自己的贡献。 | **必留信息**；$\Omega$、部分 constraints 等可由它导出，不必重复作为自由参数。 |
| G-03 几何、orientation、时空 face 类型、实际边界 law/source fiber | 02；04 §4.6；06–07 | G6：wave component solutions 不自动满足 Maxwell/Gauss；CS 的 first-order current 不能套 Maxwell wall 输入；改变 endpoint $a_t$ 会改 driven transport。 | 为每类面给与 action/constraints 相容的 Cauchy、characteristic 或 timelike problem。 | **必留规格/准入信息**；不能统一成任意一种 D/N/Robin。 |
| G-04 临时 closing 与真实 boundary/edge/defect 的区分 | 02 §2.6；05–07 | G11：人工 CS chord 的 $vj^2$ 若保留会留下真实 edge dynamics；同项在真实外壁则不能删。 | 根据操作标签只撤去指定人工 action 和对应 contacts。 | **必留物理选择**；可由本次任务指令而非额外动力学变量编码。 |
| G-05 联合 bulk/boundary/initial 域、正确 Cauchy/characteristic seeds、matching jets | 02 §2.3；04 §4.6；06 §6.7；09 §9.6 | G6：相容 tuple 不能独立拆开；单 null sheet 的辐射数据看不见初始电通量 seed。 | 保留同一解/约束的 joint domain，使用真实 characteristic 递推。 | **某种完整相容域必要**；已由其他 sheet/PDE 决定的高阶 jets 不另增自由度。 |
| G-06 实际 source solver、causal prescription、constraint propagation、连续性及全部 modes | 04；06 §§6.2、6.7–6.8；09 §9.2 | G6：$C(0)=0$ 却 $\dot C(0)\ne0$ 给错误 source-free Maxwell 场；G8：有限模截断漏任意更高光滑模。 | 证明物理方程/约束同时成立，控制所声明拓扑下的求和与 response。 | **证明义务必留**；不是把四个 scalar Green maps 或有限测试称作完整物理解。 |
| G-07 实际 bundle/sector、seam maps $h$、collars 与 cocycle | 01 §§1.4–1.6；04；08 | G2：相同局部 flat connections 配不同 self-seam $h$ 得不同 circle Wilson；坏可缩 cocycle 不能填普通点。 | 用实际 maps 装配，检查可缩 cocycle，保留真正 global holonomy/sector。 | **拓扑/识别信息必留**；完整曲率在某些简单模型已能决定部分 sector，不能重复宣称独立必要。 |
| G-08 外部 anchors、参考边界 bundle $Q_\partial$ 及其与 $P$ 的关系 | 01 §§1.1–1.3；03 §3.3 | G1：开放 transport 在独立 endpoint frame changes 下改变；非平凡边界 bundle 不存在 global trivialization。 | 用实际参考 bundle/anchors 定义比较；非阿贝尔 electric colours 也须有参照。 | **对 framed 目标必留**；unframed closed-Wilson 目标未必需要这些 anchors。 |
| G-09 完整规范作用、proper 子群、允许分支及全局 compatibility | 01 §1.3；04 §4.1；08 | G3：每片可缩的 maps 装配成 winding 1；只留 Lie algebra/BRST 看不见该整数。 | 保留 maps 及 global branch policy，装配后验证它确属声明的 proper group。 | **必留信息**；normality 仅在要形成 residual group quotient 时另需，不是普通场装配的普遍前提。 |
| G-10 完整预辛空间、退化方向及其规范作用，外边界 charged directions 的区分 | 本地工作约定；01–03；06 §6.5 | G4：独立 seam frame changes 要靠 transition/corner term 才成为 null；抹掉相对端点变换会抹掉 $Q$。 | 保留 fields、退化和 active cut action，按完整 action 检查 null/charge，不提前压成 orbit 名称。 | **当前构造必须保留这些信息**；未证明保存每个 gauge coordinate 的原始副本是所有等价编码中的最小实现。 |
| G-11 Large-gauge character、compactness/integrality 与所选 quantum sector | 01 §1.3；03 §3.6；06 §6.9 | G7：$Q$ 和 $Q+2\pi$ 的处理不同；$P$ 谱 $n+\vartheta/(2\pi)$ 随 sector 变化。 | 明确 real cover/compact theory、integer probes、中心 character；不临时改换全局理论。 | **对应目标中必留**；$\vartheta$ 可以是同一较小抽象代数的表示数据，不自动是纯经典必需输入。 |
| G-12 Gauge arrows/stabilizers，奇异 strata 的实际作用信息 | 01 §1.6；08 §§8.1、8.3 | G2：粗 interval orbits 不决定 circle seam holonomy；G19：$SU(2)$ 中中心与一般 holonomy 的 stabilizer 不同。 | 保留 group action 与 maps，允许非自由作用；不能给所有点硬套同一个 regular dimension。 | **作用信息必留**；stabilizer 列表本身可从 fields/action 计算。 |
| G-13 Gauss、oriented electric/conormal balance、真实 matter charge 与 source conservation | 02 §§2.2、2.5；06；09 §9.2 | G5：$E_2-E_1=1$ 产生 seam charge；constant non-Abelian $A,J$ 可有 $\partial J=0$ 却 $D_AJ\ne0$。 | 在完整 action 的约束面上匹配，真实 charge 则明确保留。 | **约束/电荷信息必要**；它们由 action 导出，不授权把全部边界 charge quotient 掉。 |
| G-14 Transported corner potential 与 transition 对 probes 的修正 | 06 §§6.5–6.6；07 §7.3 | G4：删 $p\,\delta\lambda$ 使应有 null direction 不再 null；删 $\lambda f_n$ 使 observable 变为 frame-dependent。 | 同时运输辛势与观测量；以 $Q_1+Q_2+\lambda$ 等真实组合装配。 | **完整贡献不能漏**；其值/形式可从 action 和 maps 推出，不是任意新增 oscillator。 |
| G-15 实际 ordered transports、crossing Wilson lifts、invariant junction tensors 和 colour dressing variation | 01 §1.4；03 §§3.2–3.3；05；09 §9.3 | G1：各段 trace 均为零，但整体 Wilson trace 可为 $-2$ 或 $0$；漏 $\delta u[A]$ 丢 dressing 的括号项。 | 保留开放腿、seam $h$ 和实际 contraction；依赖场的 dressing 必须一起变分。 | **指定 network/flux 目标需要**；不用把所有未来路径预先缓存。 |
| G-16 Hamiltonian labels、support/wavefront、公共域及 completion | 03；06 §6.3；09 §§9.3–9.4 | G8：thin line derivative 是 delta，未必给 smooth Hamiltonian vector；G14：$\ell^2$ 中密像不等于满射。 | 明确准入测试空间/算符域/完成方式，为新增 sharp 插入另建理论。 | **域和完成必须明确**；几何存在不等于量子乘法存在。 |
| G-17 所需全部辐射、relative harmonic holonomy 与共轭 flux | 00 §0.6；06 §§6.1–6.4 | G7：$F=0$ 下仍有不同 $Q$；G8：cutoff 看不见第 $N+1$ 模。 | 使用分离实际数据的 smooth labels，保留零模，绝不以 pseudoinverse 默删。 | **对本稿完整 Maxwell 目标必留**；一般模型没有的模式不应凭空添加。 |
| G-18 Joint test 装配、全局 null primitive 与完整线性/多项式零关系 | 06 §6.6；07 §7.3 | G7：每片 $dx$ 都 exact，但不来自两端同时为零的同一 primitive；G8：有限 tensor words 漏 infinite-rank cross tests。 | 匹配 tests/jets，检查全局 primitive 及真实 outer data，再求实际 null space。 | **相容性/目标 labels 必留**；null ideal 可计算，不宜独立猜定。 |
| G-19 Affine sourced 背景、源标签含义与真正 fresh reopening | 00 §0.4；02 §§2.3–2.6；05 §5.5；06 §6.6 | G6：相同 fluctuation CCR 配不同 particular solution，场的 one-point response 不同；旧 Dirichlet wall 的零 trace 无法承接全局非零 trace。 | 保存完整源规则，重算 particular response 与 fluctuation；不同 particular choices 同步平移 labels。 | **响应信息必要**；某份 particular solution/四块算子的缓存可删。 |
| G-20 每个 intermediate 的同类可重开性，固定最终物理 gluing/move | 04 §4.5；08 §8.2 | G2：改变 circle seam holonomy 已换操作；G13/G19：braid 或 cycle change 会改变 Wilson action。 | 比较同一 geometry/sector/source/实际 move，而非仅比较括号符号。 | **比较前提必要**；不需要给纯 regrouping 发明新的物理自由度。 |
| G-21 CCR/Weyl 的实际配对和 EOM/gauge null labels，中心与冗余的区分 | 03 §§3.4–3.6；06 §6.6 | G9：在旧全 CCR 两侧理想中设一个 canonical generator 为零会消掉 $1$；两个 superselection sectors 的中心 projector 不是零 observable。 | 从完整 matched presymplectic/label 结构求配对与真实 null；保留物理中心。 | **代数结构及真实零关系必需**；不能把“radical”无条件解释为 gauge。 |
| G-22 Star、公共算符域、dynamical extension | 03 §3.5；05 §§5.3–5.5 | G14：$e^{itP^2/2}Ue^{-itP^2/2}=Ue^{it(P+1/2)}$ 通常超出有限阶 differential algebra；密像 map 的 inverse 可不在域内。 | 声明实际 products/domain 与演化所在的扩张，再证明 intertwining。 | **在所选量子目标中必要**；不能把任意 operator completions 当同一个对象。 |
| G-23 Actual lifts、完整 kernel、normal-form 独立性，Gram/onto 的验收 | 04 §§4.3–4.4；05–07 | G14：$C=\operatorname{diag}(1,0)$ 有正 Gram 但非满；G13：只验 diagonal operators 会漏掉 $M_2$ 的一半结构。 | 分别证 preimages、全部 relations、faithfulness、闭像及所需 channels 非零。 | **验收义务**；若 $C$ 已给，$G=C^*C$ 不是独立自由输入。 |
| G-24 Compact/Haar/PBW 这一具体实现及 normalized measure | 05 | G14：$\psi(q_1+q_2)$ 对 $\mathbb R^2$ Haar 的范数无限；compact 群 normalized Haar 避免该问题。 | 在声明模型中使用真实 measure/domain；换非紧群要另给实现。 | **该 Hilbert benchmark 的条件**，不是所有 classical gluing 必须 compact 的证明。 |
| G-25 Disk bulk extendibility、zero relative sector、合法 chord winding 与 corners | 01 §1.5；07 §§7.1–7.3 | G10：$j=1$ 满足 boundary PDE 却有非零总通量；endpoint 都为 1 的 chord map 仍可绕一圈、不能延拓入 disk。 | 检查整个 bulk/参考 framing 的 sector 与平滑 extension，排除虚假的 zero mode。 | **该 disk 模型的物理域必要**；改成 annulus/punctures 后须更换结论。 |
| G-26 CS level、取向、seam anomaly balance 和真实 inflow/interface data | 07 §§7.1、7.4 | G12：$k_1\ne k_2$ 时 cos/sin tests 留 $(k_1-k_2)/2$；不能仍把 diagonal seam action 当无异常 proper。 | 同 level opposite orientation 才在本透明模型抵消；否则另构造真实补偿机制。 | **一致性必要**；level 已在 action 中，不是独立重复参数；“加 edge mode”不是自动修复。 |
| G-27 Torus topological quantization、中心 character、Weyl 相位及所需 spin 数据 | 07 §§7.1、7.5 | G13：只存每个 $r$ 的 scalar blocks 漏 $Y$；$X\mapsto e^{i\alpha/k}X$ 保持交换关系却改变 $X^k$。 | 固定实际 generators/中心关系/realization，保留完整 Weyl multiplication；若扩到 spin theory，另明列 spin 数据。 | **此 quantum target 的输入**；不能从任意 disk current contraction 自动得到，也不从正偶 level 模型自动推出 spin 版本。 |
| G-28 Charge/channel spaces、实际 intertwiners、inner products 与非对角 maps | 07 §§7.6–7.7 | G13：相同两条 channel 名称给不出 $B=-\sqrt2\sigma_x$；只留 dimensions 不能确定 contraction kernel。 | 给具体 normalized maps 和 pairing，运输 crossing generators。 | **多 channel 目标必需**；这些 maps 若由已指定 realization 构造，可不另作为独立公理存储。 |
| G-29 Cups/caps、ribbon/framing、$F/R$ 的一致选择 | 07 §7.6；08 §8.4 | G13：$F\to-F$ 不改 conjugation，却把 fixed-cup vacuum overlap 从 $-1/\sqrt2$ 变为 $+1/\sqrt2$。 | 基变换同时运输所有 maps；保持指定的 evaluation/duality 关系。 | **相容性必要**；具体 basis phase 是可替换 convention，不应冻结成物理参数。 |
| G-30 所用 regroupings 的 coherence，braid/twist 与同几何 regrouping 的区别 | 08 §§8.2–8.4 | G19：任意常 phase 的孤立 reassociation rules 可给两条路径不同相位；cycle shear 会改变 Wilson。 | 使用实际共同 realization 的 maps 或验证真正需要的 pentagon/hexagon；明确物理 move。 | **按实际目标验收**；不能由几个 2×2 tests 推出全部 coherence，也不要求每个模型输入无限塔。 |
| G-31 Interacting/line/junction/stress 的 renormalized products 与 Ward/removal | 09 §§9.3–9.5 | G15：不同 cusp angles 给不同 $\varphi\cot\varphi-1$；普通可积核仍可给边界 delta。 | 构造实际 line/contact 处方，区分真实 cusp 与人工 seam，并同步运输。 | **扩大目标时需要且一般尚未构造**；不是现有 smooth/finite algebras 的已完成输入。 |
| G-32 实际需要的 prequantum/determinant/phase-line lift、global anomaly 信息 | 01 §1.3；08 §8.5 | G18：一维 $U(1)$ characters 有相同 Ad action 却不同 charge/amplitude；严格 Ad group law 不足以认证 state 实现无 obstruction。 | 要比较/识别 states 或 amplitudes 时保留实际 lift 和配对，检查允许 gauging。 | **层级相关**；有些 lift 由完整 global action/realization 推出，不能假称每个 phase 都独立物理。 |
| G-33 State、representation、cross correlations 与 preparation | 03 §3.7；09 §9.7 | G17：$C_\pm$ marginals 相同而 cross covariance 不同；一个 algebra isomorphism 不选 vacuum。 | 把 state sewing 当另一任务，明确额外 correlations/preparation。 | **核心代数粘合可不输入态**；state 目标则不能只给 marginals。 |
| G-34 Formal YM 的 nonlinear Gauss/源约束、逐阶域和目标强度 | 09 §9.2 | G5：ordinary conserved $J$ 未必 covariantly conserved；G16：形式级数存在不蕴含实际耦合下全局存在。 | 逐阶使用 nonlinear joint data 和 constraint propagation；不默认每阶有自由奇偶 parity。 | **formal field 构造的条件**；不供应完整 nonlinear observable kernel 或量子 loops。 |
| G-35 BRST complex、chain maps/homotopies（若该实现确实使用） | 08 §8.6；09 §9.5 | G19：相同 $H^0$ 可以有不同 $H^1$；只为 degree-zero 比较并不需要 chain-homotopy equivalence。 | 在选定层级证明实际 maps 保域/保乘法；需要 BRST 时再验证 nilpotency/intertwining。 | **非普遍必需输入**；局部 BRST 无论如何不能替代 G-09 的离散分支。 |
| G-36 特定 gauge fixing、模基、reference connection、局部 trivialization | 01 §1.1；06；09 | G20：$A-A_0$ 改参考点只是 affine relabelling；换正交模基不删谐和方向。 | 保留完整作用/域及比较 map，计算选择可替换。 | **实现选择可删/可换**；这不授权在区域阶段丢 proper directions 或 global branch 信息。 |
| G-37 Static flat slab、特定维数、$v>0$、有限 graph/指定 level 等范围条件 | 05–07；10 | G20：$v<0$ 的 chiral transport 仍有 smooth PDE evolution，但不满足当前正能量要求；finite graph 不是 continuum existence theorem。 | 对每个声明层级分开控制 PDE、能量、quantum realization。 | **当前模型/证明范围**，没有证明每个字面条件是所有 gluing 的普遍必要条件。 |
| G-38 可重算的 $\Theta,\Omega$、response blocks、stabilizer/Gram/代数缓存；“切片独立的 $\Theta$” | 00 §0.3；02；04；07 | G4/G20：$\Theta$ 可随时间变 exact term；缓存由生成规则重算；$C$ 已给则 Gram 可算。 | 保留完整 rule 和必要 global choices；检验的是 $\Omega$ 及 maps，允许合法 potential ambiguity。 | **重复字段可删**；$\Theta$ 切片独立本来就不是合法必需条件。 |

## 算例及其修复机制

### G1：全局群、anchors 和开放 Wilson 腿都能留下可测差异

同一 Abelian Lie algebra 可对应 $\mathbb R$ 或 compact $U(1)$。配合实际规范分支，区间 holonomy coordinate 可以是 $Q\in\mathbb R$，也可以只保留 $e^{iQ}$。只存 infinitesimal brackets 无法决定这个全局问题。

开放 transport 满足 $U_\gamma\mapsto g(y)U_\gamma g(x)^{-1}$。如果目标保留固定外 anchors，端点相对变换可有真实 charge；不能把它和原 proper action 混同。使用 $u_y^{-1}U_\gamma u_x$，并明确哪些变换保持 anchors，才定义相同的 framed observable。

只留各段 conjugacy class 也不够。取 $SU(2)$ 两段，第一段 $U_1=i\sigma_z$，第二段分别取 $i\sigma_z$ 或 $i\sigma_x$。各段 trace 都为零，属于相同 trace/conjugacy 数据；但

$$\operatorname{tr}(U_2U_1)=-2\quad\text{或}\quad0.$$

实际 open matrices、相对 frame/seam $h$ 和按序 contraction 区分它们。这里证明的是 relative transport 信息必要，不要求预先列出每一条未来 Wilson path。

### G2：局部平坦数据不决定 circle 的 seam holonomy

把一份 interval 的两端 self-sew 成 circle，令局部 $a=0$，identification 为常数 $h=e^{i\theta}$。所有 local curvature 都为零，但 global Wilson 为 $e^{i\theta}$。取 $\theta=0,\pi$，遗忘 $h$ 后输入相同，Wilson 分别为 $1,-1$。这是真正的“剩余局部数据相同、输出不同”见证。

若还把每片先压成无外 frame 的粗 orbit 名称，便同时丢掉可以接合的不同 arrows。保留实际 gauge actions、transitions 和 allowed identifications 排除这个信息损失。Self-sewing 只复制端点 occurrences，不能复制成两份 bulk action。

在可缩 filled junction，$h_{13}h_{32}h_{21}\ne1$ 则是另一种问题：它违反普通 bundle 的一致性。这个准入条件不要求非可缩 Wilson 等于 1。

不能使用 $S^2$ monopole 假充上述见证：完整曲率已给 $n=(2\pi)^{-1}\int_{S^2}F$；在普通 $S^2$ 上也没有额外 flat $U(1)$ ambiguity。它只能说明“局部平凡 bundle 的名称”不足，不能说明“完整曲率相同但 Chern 数不同”。

### G3：局部可缩的 seam 变换可装配成全局 large 分支

在 $I=[0,L]$ 只声明 based identity component 为 proper。两份场 $a=0$ 与 $a'=(2\pi/L)dx$ 的 $Q$ 相差 $2\pi$，在这个理论中仍不同。切在 $c=L/2$，取

$$g_1(x)=e^{2\pi ix/L},\qquad g_2(x)=e^{2\pi i(x/L-1)}.$$

每片分别固定其真正外端，均可通过把指数乘 $s\in[0,1]$ 缩回恒等；在 seam 的终点 maps 都为 $-1$，故 $h'=g_2hg_1^{-1}=1$。但装配后 $g=e^{2\pi ix/L}$ winding 为 1，不能被声明为 global proper。

两条局部 homotopies 的 seam 比值为 $e^{-2\pi is}$，中途不相同。保留 global branch policy，并在装配后检查总 winding，就不会误删物理 $Q$。用 real lift 时，seam lift 变为 $-2\pi$，使 $Q_1'+Q_2'+\lambda'=0$；把它仅记作 $h'=1$ 后又无条件把 lift 置零，则丢整数信息。

本例不反驳从一开始就把全部 based components 当 proper 的 compact benchmark；那是另一份明确选择的 theory。完整 arrows 必须遵守所选全局政策，不能在证明途中更换。

### G4：保留 proper directions 不等于给它们新增物理振子

用两个 Abelian 段的完整 matched 数据 $(Q_1,Q_2,\lambda,p)$，不做 quotient。独立 seam frame changes 为

$$\delta_g(Q_1,Q_2,\lambda,p)=(\alpha,-\beta,\beta-\alpha,0).$$

正确的 transport 和 potential 是

$$Q_{\rm out}=Q_1+Q_2+\lambda,\qquad
\Theta_{\rm sew}=p\,\delta(Q_1+Q_2+\lambda).$$

因此 $\delta_g Q_{\rm out}=0$，且 $\iota_{\delta_g}\Omega_{\rm sew}=0$。如果删去 transition 修正，$Q_1+Q_2$ 的变分是 $\alpha-\beta$；对 $\Theta_{\rm bare}=p\delta(Q_1+Q_2)$，有

$$\iota_{\delta_g}\Omega_{\rm bare}=(-\alpha+\beta)\delta p\ne0.$$

这在完整预辛空间上直接证明 corner/probe correction 不能漏：它恢复原本应为冗余的方向，而没有添加独立 oscillator。外部相对 endpoint 变换则可改变全局 $Q$，其 contraction/charge 一般不为零，不能一并删除。

由此得到的必要性是“保留退化与实际作用、transition 信息”。本例没有证明任何等价且保留这些信息的压缩描述都不可能；也不允许把仅保留 coarse orbit 名称称作等价。

### G5：Gauss balance 与 non-Abelian source conservation

取两片 $E_1=p,E_2=p+1$，各片内部的 Abelian Gauss 都成立；装配后 $\partial_xE=\delta(x-c)$。若目标没有 seam charge，这不是透明解。Flux balance 排除它；若确有物理带电 matter，则必须给出其 action/charge，使等式右侧正确保留该项。

非阿贝尔还有独立陷阱。取常数 $A_x=T_1,J^x=T_2$，$[T_1,T_2]=T_3\ne0$；其他分量零。虽然 $\partial_\mu J^\mu=0$，却有

$$D_{A,\mu}J^\mu=[T_1,T_2]=T_3.$$

所以源不是相对于该 $A$ 独立任取的普通 conserved current。联合约束 $D_AJ=0$、matter equations 和 source covariance 才避免这种错误。Gauss/源约束可由 action 导出，不能因为可以导出就不实施。

### G6：四份 wave 解不等于一份 Maxwell 解，且源域不能拆

取 $k=\pi/L$，relative walls，

$$a_t=\sin(kx)\cos(kt),\qquad a_x=a_y=a_z=0.$$

每个分量满足 homogeneous scalar wave，tangential wall conditions 与 $\partial_xa_x=0$ 都成立。但 Lorenz function 为

$$C=-\partial_ta_t=k\sin(kx)\sin(kt),\qquad
C(0)=0,\quad \dot C(0)=k^2\sin(kx).$$

对 $E_x=\dot a_x-\partial_xa_t$，Gauss 是 $\partial_xE_x=k^2\sin(kx)\cos(kt)\ne0$。保留初始 Gauss/$\dot C=0$ 并传播 constraint，才能从 scalar source construction 得到物理 Maxwell 解。Lorenz 是可替换计算选择；相应物理约束不能因此遗忘。

Joint-domain 的另一例沿用原 §2.3：D strip 的 $q=x(1-x)$、$f=2+m^2q$ 联合合法，force-only/initial-only 分量却给角点加速度 $2,-2$。保存完整 tuple 避免非法分解。Null 情形也必须给足 radiation 之外的初始 electric/constraint seeds；这些 seeds 若已由另一张 characteristic surface 决定，不应再重复当独立自由度。

具体的 null seed 检测族是在平直 patch 中取 $F=c\,du\wedge dv$。这些常数场都满足 source-free Maxwell equations；在 $u=0$ sheet 上的 pullback/radiative components 相同，全部为零，transverse electric component $F_{uv}=c$ 却不同。指定相应初始 flux/constraint seed 才能消除歧义。这是局部 characteristic 数据的缺失见证，不声称在任何已固定的外壁问题中该 $c$ 都仍自由。

若只保留 fluctuation CCR，还会遗漏 affine sourced mean：同一 homogeneous bracket 可以加不同 particular solution。给 action/source rule 后可重新计算它；任意 chosen particular solution 的变化只是要同步实施的 affine relabelling，不是新物理输入。

### G7：曲率、局部 exactness 与 infinitesimal CCR 都看不全 harmonic sector

令 $\Sigma=[0,L]\times\mathbb T^2$，横截面积为 $V$，取单位 Maxwell coupling。沿用正文的 harmonic normalization，

$$a=\frac QL\,dx,\qquad E_x=\frac PV,\qquad
\Theta_{\rm harm}=P\,\delta Q,\qquad
\Omega_{\rm harm}=\delta P\wedge\delta Q.$$

在 $P=0$ 的静态族，所有 spacetime curvature 都为零，固定 anchors 下的 $Q$ 却可以不同。只测 curvature 会漏掉这族；保留开放 holonomy 和 electric flux 的配对就能看见它。这里没有在区域阶段删去其他 proper directions，只是取完整场空间中的一个检测族。

虽然 $dx=d x$，不存在满足 $d\chi=dx$ 且 $\chi(0)=\chi(L)=0$ 的 primitive：积分给 $\chi(L)-\chi(0)=L$。因此“每片都是 gradient”不等于“来自同一个允许的 global null primitive”。完整外边界条件和 test 装配阻止把 harmonic mode 当作零。

真正的 endpoint source 也不能由 fluctuation CCR 决定。取 $\Delta b=b_L-b_0$，

$$a_x(t,x)=\frac{t\Delta b}{L},\qquad
a_t(t,x)=b_0+\frac{\Delta b}{L}x.$$

此时 $E_x=\dot a_x-\partial_xa_t=0$，但 $Q(t)=t\Delta b$。改变 endpoint $a_t$ 会改变相对于固定外 frames 的 driven transport。保留真实 boundary-source law 才能重现它。

若全部 based $U(1)$ components 都为 proper，则 $Q$ 和 $Q+2\pi$ 由 proper map 连接；若只取 identity component，则不成立。这是在记录实际规范作用，区域场坐标仍完整保留。对前一种政策对应的后续 compact quantum target，$P=-i\partial_Q$ 的公共域还可满足

$$\psi(Q+2\pi)=e^{i\vartheta}\psi(Q),\qquad
P\psi_n=\left(n+\frac{\vartheta}{2\pi}\right)\psi_n.$$

因而局部关系 $[P,e^{iQ}]=e^{iQ}$ 不决定 $\vartheta$。它可以是 representation/中心 character 的选择；不应因此强迫纯 classical 或较小抽象代数输入一个态。

### G8：全 modes、joint tests 与 Hamiltonian 域不能被有限清单替代

对 Maxwell 的相容光滑 radiation modes $v_n$，只保存 $n\le N$ 的系数，则 $0$ 和任意非零 $v_{N+1}$ 的截断数据相同。这是相对于完整 smooth target 的实际信息损失。用全部模式及正文要求的快速衰减控制重构；有限数值检查不证明全模 onto。

同样，取两块区域内的光滑 bump $\chi$ 与正弦基 $e_n$，

$$K(x,y)=\chi(x)\chi(y)\sum_{n\ge1}2^{-n^2}e_n(x)e_n(y).$$

在 $\chi\ne0$ 的开集，各阶导数级数都收敛；对应正算子没有有限秩，因为任意有限个不同 $\chi e_n$ 线性独立，且所有系数为正。因此允许这种 joint bilocal label 的目标不能只靠有限和 $\sum_{r=1}^N f_r(x)g_r(y)$ 覆盖。若目标仅声明 algebraic tensor words，这一例就在其范围之外，不能用它攻击一个较小但说清楚的代数。

另一个方向是准入过宽。Thin Wilson 的 $\delta W_\gamma/\delta A(x)$ 支持在曲线 $\gamma$ 上，一般是 delta 型分布；在只准许 smooth Hamiltonian vectors 的相空间上，它不会自动给合法 vector。正文的 smooth/适当加厚 probes 排除这个域错误。要纳入 sharp lines，须另证其分布域、乘积和 contact 处方；本例不声称 sharp Wilson 在所有量子实现中都不存在。

Color dressing 也不能在变分时当常数。在最小 canonical 检测模型 $\{Q,P\}=1$ 中，令 $O=P e^{iQ}$，则

$$\{O,P\}=iP e^{iQ}.$$

若把 $e^{iQ}$ 当固定参照，便错误得到零。非阿贝尔 $u[A]^{-1}E u[A]$ 同样要保留 $\delta u[A]$；具体公式由给定 dressing 导出，不必另增一个自由输入。

### G9：真实 null relations 与物理中心不同，不能在旧全 CCR 中硬设约束

考虑 $[\partial_q,q]=1$。如果在这份尚未匹配的全算符代数中，把 $q$ 放进双侧理想，那么 $[\partial_q,q]=1$ 也在该理想中，结果是零代数。这个诊断例说明，不能把 constraint equations 原封不动当成旧全 CCR 的双侧零关系。

本次构造仍保留完整 matched presymplectic fields 和 gauge directions；从实际 Hamiltonian labels 求配对及那些对所有允许场都为零的函数，才确定 observables 的真正 relations。这里没有执行区域 gauge quotient，也没有把上面的错误操作作为修复。

反方向，设目标有两个允许 sectors，observable algebra 为 $\mathcal A\oplus\mathcal A$。中心元素 $z=(1,-1)$ 与所有元素对易，却能区分两种 sector；它不是零 observable。退化配对、物理 superselection center 和真正恒零函数是三个不同概念。保留实际 sector/label evaluation 才能判断哪一个可消去。

### G10：disk 的 boundary PDE 看不见 bulk extendibility

在无 puncture、零相对 sector 的 flat $U(1)$ disk，使用能延拓入 bulk 的边界 frame，$j=\partial_s\phi$ 必须满足 $\int_{S^1}j\,ds=0$。取圆周长 $2\pi$，$j=1$ 满足 chiral transport equation，却有积分 $2\pi$。若它真由该 frame 中的 smooth flat bulk connection 限制而来，Stokes 应给积分零，矛盾。

因此仅输入 current PDE 和局部 brackets 太弱；正文的 zero-mode condition 来自 bulk extension/sector，而非人为删除一个 oscillator。允许非零 flux、puncture 或不延拓的 boundary frame 则换了物理域，不能沿用这条零积分结论。

更隐蔽的是 chord map。令 $r:[0,1]\to[0,1]$ 在两端邻域分别恒为 0、1，且光滑，取 $g(s)=e^{2\pi i r(s)}$。两端值都为 1，所有端点导数也与恒等 map 相容。把外弧取为 1，得到连续光滑的闭边界 map，但其 winding 为 1，不能延拓为 disk 上的 $U(1)$ map。

合法 winding/extendibility 检查排除它；只查 endpoint values 甚至全部 endpoint jets 都不够。若使用 real lift，要求它按所声明 sector 在两端相容，就保存了这项整数信息。

### G11：人工 CS wall、corner 变分和开放区间的 current cocycle

对于正文的 chiral boundary convention，wall Hamiltonian 含

$$H_\partial=\frac{kv}{4\pi}\int j^2\,ds.$$

同一项放在真正外边界是物理 dynamics；把它当人工 chord closing 后又不撤去，会给最终理论多留一条有能量的 edge。完整 closing/removal 指令区分两种操作。单纯要求“两侧 currents 相等”不自动撤去这个 action 项。

Transition 也必须进入 potential。局部 relation $\phi_2=\phi_1+\lambda$ 给

$$\phi_2'\delta\phi_2-\phi_1'\delta\phi_1
=\phi_1'\delta\lambda+\lambda'\delta\phi_1+\lambda'\delta\lambda.$$

若省掉右侧，再对允许独立 seam frame changes 的数据变分，就改变了实际 corner form。G4 已展示其最小有限维后果。通过 action 和 transition transport 算出完整项可避免失败；不应把每项各自当作任意新自由度。

Current cocycle 的域也有内容。在闭圆上 $\int f g'$ 因分部积分而反对称；直接搬到开放弧且不处理端点，取 $f(s)=g(s)=s$，$s\in[0,1]$，得到 $\int f f'=1/2$，这不可能是 $\{J_f,J_f\}$。要求合法闭圈/joint tests、适当端点条件或由 action 确定的 corner correction，才能得到真正的 bracket。不能只复制局部积分公式。

### G12：level 不平衡留下可计算的 seam central term

对取向相反的两条 CS seam，diagonal current action 的 central term 系数是 $k_1-k_2$。在长 $2\pi$ 的圆上取 $f=\cos s,g=\sin s$，按正文 normalization，

$$\frac{k_1-k_2}{2\pi}\int_0^{2\pi} f g'\,ds
=\frac{k_1-k_2}{2}.$$

$k_1\ne k_2$ 时不能仍声称同一个 diagonal action 为无异常 proper direction。同 level、opposite orientation 在这个透明模型中抵消该项。若设计真实 interface/inflow，则必须写出能抵消它的实际 action 和 maps；只命名“edge mode”不构成修复证明。

Level 已编码在 action；删掉独立 level 字段但仍能读 action 不是信息损失。删除其实际数值或取向才改变这个检测结果。

### G13：channel labels、交换关系和 Ad action 各自都可能少一层

取 Abelian torus 的 $k$ 维 clock/shift realization，$r\in\mathbb Z/k\mathbb Z$，

$$q=e^{2\pi i/k},\qquad X|r\rangle=q^r|r\rangle,
\qquad Y|r\rangle=|r-1\rangle,\qquad YX=qXY.$$

只留 $r$ 的 scalar blocks 给 diagonal algebra，遗漏 crossing Wilson $Y$。完整 $X^aY^b$ 张成 $M_k$；当前精确核对 $k=2,4$ 的 ranks 分别为 4、16，任意 $k$ 的结论另由不同 cyclic diagonals 上的 Fourier 独立性给出。保留实际 crossing maps 才能覆盖声明 target。

只给 $YX=qXY$ 仍不足以固定中心 character：$X\mapsto e^{i\alpha/k}X$ 保持交换关系，却使 $X^k=e^{i\alpha}1$。若还采用对称 Weyl 代表

$$W_{m,n}=e^{\pi i mn/k}X^mY^n,$$

则在 $X^k=1$ 的 realization 中 $W_{m+k,n}=(-1)^nW_{m,n}$；不能把 $(m,n)$ 简单逐项取模并丢掉相位。中心关系和 Weyl rule 可以由完整 quantum realization 推出，但不能从被截去这些关系的数据中猜回。

非阿贝尔小模型也一样。用正文 fixed-cup convention 的两 channel realization，

$$F=\frac1{\sqrt2}\begin{pmatrix}-1&1\\1&1\end{pmatrix},\qquad
A=\sqrt2\begin{pmatrix}1&0\\0&-1\end{pmatrix},\qquad
B=FAF^{-1}=-\sqrt2\begin{pmatrix}0&1\\1&0\end{pmatrix}.$$

只保存 channel 名称/维数和 diagonal $A$，没有给出 $B$；$1,A,B,AB$ 的 span rank 为 4，完整 algebra 是 $M_2$。这里维数说明缺了算符，实际 $F$ 才提供它的作用。

还可令 $F\to-F$：所有 conjugations 不变，但 vacuum matrix element $F_{00}$ 从 $-1/\sqrt2$ 变为 $+1/\sqrt2$；固定 cup normalization 下的 $\sqrt2 F_{00}$ 也从 $-1$ 变为 $+1$。这说明 Ad 信息不足以比较固定 cups/caps 的 amplitudes。若所有 basis phases、cups 和 intertwiners 一起一致变换，则是等价 convention，并非新物理参数。必要的是相容的实际 maps，不是某一任意基相位。

### G14：positive Gram、密像和一个形式 Hilbert map 都不保证所需同构

有限维取 $C=\operatorname{diag}(1,0):\mathbb C^2\to\mathbb C^2$。其 Gram $C^*C$ 正半定，kernel 为第二坐标轴，但 image 只有一维。正性和已知 kernel 都不证明 onto 独立指定的二维 target。明确 target、求实际 image，才排除把漏掉的 channel 改名为零。若 $C$ 已知，Gram 可以重算，不是独立信息。

无限维还需区分 dense 与 onto。令 $D:\ell^2\to\ell^2$，$(Dc)_n=c_n/n$。它 injective，image 包含所有有限序列，因而 dense；但 $y_n=1/n\in\ell^2$ 的唯一形式 preimage 是 $c_n=1\notin\ell^2$，故不 onto。改变源端为按 $\|Dc\|$ 完成的空间可以修复，但那是须明确声明的另一 completion，不是原 $\ell^2$ 命题已获证明。

Compactness 在正文 Haar 实现中的用途也可直接见到。若把 $V\psi(q_1,q_2)=\psi(q_1+q_2)$ 用于 $L^2(\mathbb R)$，非零 $\psi$ 满足

$$\int_{\mathbb R^2}|\psi(q_1+q_2)|^2\,dq_1dq_2
=\left(\int_{\mathbb R}|\psi(Q)|^2dQ\right)\int_{\mathbb R}dr=\infty.$$

在 compact group 的 normalized Haar 下，多出的群方向体积为 1，才得到这个具体 map 的等距性。非紧模型可以另建实现；此例不证明非紧 classical sewing 不存在。

最后，time evolution 可能离开有限 differential algebra。单位惯量 rotor 取 $P=-i\partial_Q,U=e^{iQ},H=P^2/2$，则

$$e^{itH}Ue^{-itH}=Ue^{it(P+1/2)}.$$

对 $P|n\rangle=n|n\rangle$，系数 $e^{it(n+1/2)}$ 有界且在 $t\notin2\pi\mathbb Z$ 时不恒定，不可能是有限次多项式 $p(n)$。故只含有限阶 differential operators 的代数不在这项演化下封闭。声明合适的 dynamical extension 并检查共同域，才有“同时 intertwine dynamics”的目标。

Star 也不是乘法验证的自动结果。在 $\mathbb C[x]$、$x^*=x$ 中，$R(x)=ix$ 是复代数 automorphism，却有 $R(x^*)=ix\ne R(x)^*=-ix$。如果目标要求 real observables/self-adjointness，就必须检查 star；若具体 Hilbert realization 已决定 adjoints，可以从它导出而不另给任意 star 参数。

### G15：普通线段乘法和 bulk 可积性不供应 junction/Ward 处方

采用正文 §9.4 的 Euclidean one-loop angular witness，$0<\varphi<\pi$ 时扣除 smooth continuation 后的因子是

$$f(\varphi)=\varphi\cot\varphi-1.$$

$f(\pi/2)=-1$，$f(\pi/3)=\pi/(3\sqrt3)-1$，不同角度的值不同。给每个 endpoint 同一个与角度无关的常数，不能修复两种真正 cusps。保留实际几何并构造相容的 junction renormalization 才可能复现指定 Wilson product。这里的角度若已由 path geometry 给出，不是额外自由输入；缺失的是使用它的合法 product/normalization 规则。

另一例是边界 Poisson kernel，$s>0$，

$$P_s(t)=\frac{s}{\pi(t^2+s^2)},\qquad
\int_{\mathbb R}P_s(t)dt=1,\qquad P_s\longrightarrow\delta(t).$$

每个普通核可积，不妨碍边界极限留下 contact。只检查 bulk integrability 后删掉该项，会改边界 Ward relation；$\delta(t)\Theta(t)$ 这类 sharp multiplication 也没有仅靠符号就唯一指定的值。

完整构造须区分真实 cusp/contact 与人工 seam 所专有的项，并给出 regulator、extension、Ward normalization 及改变处方的 maps。当前一般 interacting boundary/line theory 尚未完成这些义务；把它们列为输入不等于已经保证成功。有限 graph Wilson、regular smooth CCR 和已有 finite matrices 无需因此被迫加入所有这类 UV 数据。

### G16：formal YM 的阶数和约束不能从自由模型省略

G5 已给 ordinary conserved $J$ 不满足 $D_AJ=0$ 的实例。Nonlinear Gauss、source covariance 和 corner compatibility 必须在每一阶联合实施；formal parameter 不使这些约束消失。

反过来，保存自由 odd/even reflection parity 可能约束过多。标量检测方程为 $L\phi=f$，在 D wall 上 $\phi=0$，故所有 tangential time derivatives 为零，方程给

$$\partial_x^2\phi|_B=-f|_B.$$

若 $f|_B\ne0$，二阶 normal jet 不为零，不能仍把场当作可光滑奇反射的齐次解。YM 的高阶 forcing 来自低阶场乘积，应由真实 inhomogeneous recursion 决定相应 jets；不能独立强加自由 parity。这个标量例解释递推机制，不冒充完整 non-Abelian boundary existence 证明。

最后，toy $y'=\varepsilon y^2,y(0)=1$ 的 formal 解 $\sum_{n\ge0}\varepsilon^nt^n$ 每阶都存在；实际解 $1/(1-\varepsilon t)$ 却有有限时极点。它只反驳“coefficientwise existence 自动证明 actual-coupling 全局存在”的逻辑推论，不是本稿 formal YM 的反例。

保留 order-by-order 源域、constraint propagation 和 formal 结论的准确层级，就不会作上述错误外推。它仍不提供完整 nonlinear observable kernel、全部 quantum loops 或级数收敛。

### G17：相同 regional states 不能唯一决定 cross correlations

对两个 oscillator 的零均值联合 Gaussian 态，按顺序 $(q_1,p_1,q_2,p_2)$、$\hbar=1$，取 covariance

$$C_\pm=\frac1{16}\begin{pmatrix}
17&0&\pm15&0\\0&17&0&\mp15\\
\pm15&0&17&0\\0&\mp15&0&17
\end{pmatrix}.$$

它们的两个 local blocks 都是 $17I_2/16$，cross covariance 符号相反；eigenvalues 均为 $2,2,1/8,1/8$。令 $J=\operatorname{diag}(J_2,J_2)$、$J_2=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)$，有 $C_\pm J C_\pm=J/4$。两者都是合法 pure Gaussian covariance，local marginals 相同但 global states 不同。

保留 joint correlations/preparation 或足够的 amplitude pairing 才能确定所求 state。核心 algebra comparison 不需要先输入一份态；有一个 algebra isomorphism 也不自动选 vacuum 或 regional Hilbert tensor factors。

### G18：Ad 看不见的 lift 信息只在相应层级成为必需

在一维 Hilbert space 上，$U_n(\alpha)=e^{in\alpha}$ 是 $U(1)$ 的 characters。$n=0$ 与 $n=1$ 对 observable algebra $\mathbb C$ 的 Ad action 完全相同，但 symmetry charge 和带指定 group insertion 的 amplitude 不同。若目标只比较这个代数及 Ad action，删除 $n$ 无妨；若目标还比较该 symmetry realization/amplitude，就必须保留它或足以推导它的 global action 数据。

对一般 implementers，$U(g)U(h)=\alpha(g,h)U(gh)$ 的 scalar multiplier 在 Ad group law 中消失。因而仅检查 Ad 的严格群律不足以证明能够无 obstruction 地选择所需 state lift 或实施 gauging。应实际检查 multiplier、允许的重相位和其不可去除部分。

这不意味着给定完整 Hilbert space 与实际 projective action 时，所有 obstruction classes 都与 Ad 数据独立；它们有时可由 lifting problem 算出。也不意味着任意 basis phase 都是 anomaly。需要的是对指定下游问题足够的 lift/pairing 信息，不能为每个 classical interval 凭空添加独立 phase line。

### G19：stabilizers、coherence 与真正 physical moves 的删减边界

在 $SU(2)$ circle holonomy 的 conjugation action 中，$U=1$ 的 stabilizer 是全部 $SU(2)$；$U=\operatorname{diag}(e^{i\theta},e^{-i\theta})$、$\theta\notin\pi\mathbb Z$ 的 stabilizer 是 $U(1)$。若忽略作用秩变化、给所有数据套同一个 regular stratum，就错数约束或 states。保存实际 group action 就能重算 stabilizer，不必把 stabilizer 表本身当独立物理输入。

Proper subgroup 的 normality 也是层级条件。有限例 $H=\langle(12)\rangle\subset S_3$ 不正规，故 $S_3/H$ 不能继承所期望的 quotient group law。若 formalism 声称存在这种 residual group，就必须给 normality 或合适的替代结构；仅陈述带指定 maps 的 fields/gluing，不需要凭空要求所有指定子群都正规。

对 coherence，给每次 reassociation 孤立指定同一 scalar $\eta=-1$，pentagon 两条路径分别有两步和三步，得到 $\eta^2=1$ 与 $\eta^3=-1$。这是随意 maps 不相容的准入见证，**不是**正文所采用 unitary category 的反例。由同一个 realization 的实际 bases 产生的 comparison maps 沿路径自动相消；否则要逐项验证实际使用的 pentagon/hexagon。不能从若干小矩阵的 braid test 推出未检查的全部高阶 coherence。

真正 physical move 则本来应有作用。Classical torus 的 cycle shear $Q_y\mapsto Q_y+Q_x$ 将 $e^{iQ_y}$ 变成 $e^{i(Q_y+Q_x)}$，已经改变 Wilson label。正文 $SU(2)_2$ realization 的 $R=\operatorname{diag}(-e^{-3\pi i/8},e^{\pi i/8})$ 也有 $RBR^{-1}\ne B$；其 $\sigma$ ribbon 一次 twist 的相位 $\theta_\sigma=e^{3\pi i/8}\ne1$。保留实际 braid/framing 操作就不会把这些物理差异叫作不结合误差。相位属于这里已采用的 realization，不是由新 PDE 计算推导的普遍数值。

若目标只要 degree-zero algebra，额外要求整个 BRST complex 等价则可能过强。例如零微分复形 $C^0=D^0=\mathbb R,C^1=\mathbb R,D^1=0$ 的 projection 在 $H^0$ 上是同构，却在 $H^1$ 上不是。它证明 whole-complex equivalence 不由 degree-zero 目标强迫；若任务本来要求完整 BRST/cohomology，就必须提高验收层级。离散 winding 无论如何不由局部 infinitesimal BRST 自动记录。

### G20：可替换的实现、能量条件与错误的 potential 要求

在同一 bundle 上选择 reference connection $A_0$ 后用 $a=A-A_0$ 描述场，改成 $A_0'$ 只是 $a'=a+(A_0-A_0')$。只要同步运输 action、source labels 和允许域，就没有丢场。换 orthonormal mode basis 也不改变完整 spectral kernel。选择 gauge fixing 可以辅助求解；用它代替完整规范作用和分支资料，则是另一回事，G3–G4 已给失败见证。

对 $\partial_tj-v\partial_sj=0$，任意实 $v$ 都有光滑解 $j(t,s)=j_0(s+vt)$，在有限时间无该 transport 方程的障碍；但在 $k>0$ 时，$v<0$ 使 $H=(kv/4\pi)\int j^2$ 不再下有界。于是 $v>0$ 是本稿正能量 wall realization 的条件，不能被宣传成所有 classical source sewing 的普遍必要条件。本文采用的正偶 level 还避免隐含 spin choice；扩大到 odd-level quantum spin theory 需另给对应数据，并非把本例的 PDE 公式照搬便已完成。

最后，$\Theta$ 不必切片独立。单个 oscillator 写

$$q(t)=a\cos t+b\sin t,\qquad
p(t)=-a\sin t+b\cos t,\qquad \Theta_t=p(t)\,\delta q(t).$$

在 $(a,b)=(1,0)$、$V=\partial_a$ 上，$\Theta_0(V)=0$，$\Theta_{\pi/4}(V)=-1/2$；$\Omega_t=\delta p(t)\wedge\delta q(t)=\delta b\wedge\delta a$ 却不随 $t$ 变。把“$\Theta$ 切片独立”加入输入不是提高稳健性，而是排除本来合法的模型。保留 action/corners 后按允许的 field-space exact ambiguity 比较 potential；不得由此删掉 G4/G11 的实际 corner contribution。一般边界 CPS 的 action-first 背景见 [Harlow–Wu](https://arxiv.org/abs/1906.08616)，本例本身已直接算出。

## 能压缩成什么，尚不能宣称什么

对本文已经构造的各具体模型，一份足够的工作记录应至少能恢复：

1. 实际几何、global group/bundle/允许 sectors、完整 action 与真实 boundary/source/constraint domain。
2. 可重新运行的 source solver，以及完整规范作用、proper 分支和外部 charged transformations 的区分；保留完整预辛场空间。
3. 本次切割的 face occurrences、transitions、anchors、orientation 和哪些 closing 被移除；所需 extendibility/cocycle 检查。
4. 独立的 observable target、允许 labels/域、完整 bracket 和真实零关系，以及实际 sewing maps 的 preimages、kernel、image。
5. 仅在指定 quantum/state/amplitude 层需要的 product、representation、channel/phase/renormalization/preparation 规则。

这不是五份相互独立的最小自由数据：约束和预辛形式可从 action 推出；stabilizers 可从规范作用推出；response blocks 可从 solver 推出；Gram 可从实际 contraction 推出；$F/R$/cups 若由完整 realization 构造，也不必再作为无关公理输入。具体 reference connection、模基、合法 gauge fixing、特定 lift、已撤去的 ports 和纯 regrouping 的历史通常可以遗忘，前提是剩余规则仍能重建同一个物理问题。

还不能声称：所有 smooth/Whitney regularity 条件相互独立；必须永久保存每一个原始 gauge coordinate；同一模型的每个缓存字段都不可删；一般 nonlinear/null/quantum boundary 构造已完成；从现有例子推出所有 gauge theories 的唯一最小对象。尤其是一般 Ward/UV 义务，本表提供的是具体失败机制和修复所需检查，不是一份尚不存在的普适存在证明。

## 覆盖与验证记录

| 原稿输入块 | 本表位置 |
|---|---|
| 00 的对象 package、独立 target、theory/algebra/minimality 层级 | G-01–G-06、G-16、G-19–G-23、G-31–G-38 |
| 01 的 $P,G,Q_\partial,u,h$、proper/large、sectors、arrows | G-07–G-15、G-25、G-32、G-36 |
| 02 的 action/BC/joint source/reopening | G-02–G-06、G-13–G-14、G-19–G-20、G-38 |
| 03–04 的 Hamiltonian admission、quantum prescriptions、lift/kernel/onto comparison | G-01、G-06、G-15–G-23、G-27–G-33 |
| 05 的 YM2/PBW/Haar/endpoint histories 与 finite graph | G-01、G-08–G-11、G-15、G-19–G-24、G-37 |
| 06 的 relative Maxwell 全 modes、harmonic Q/P、joint jets、probes/null primitives | G-03、G-05–G-06、G-10–G-19、G-21–G-23 |
| 07 的 disk/chord currents、torus Wilson、SU(2) channels、cups、Gram | G-02、G-04、G-07、G-14–G-16、G-23–G-30、G-37 |
| 08 的 repeated/self sewing、stabilizers、coherence、phase lifts、BRST | G-07–G-12、G-20、G-28–G-32、G-35 |
| 09 的 formal YM、null seeds、UV/Ward/matter、state | G-02–G-06、G-13、G-15–G-17、G-31–G-35 |
| 10–11 的模型范围、必要性/验证等级与 notation；claim ledger 的相应 exclusions | 上述各行的严审结论；不把 conditional/adopted realization 提升为无条件已证 |

Verified: 本次用 Mathematica 精确核对了 seam 修正的规范变分和预辛 contraction、assembled winding、harmonic/source 和 rotor 例、Lorenz/Gauss 反例、corner 差、开放弧及 level 积分、cusp 两角值、Poisson kernel 单位质量、rotor evolution 的谱差、formal toy 与 oscillator potential。Sage 精确核对了 $SU(2)$ transports、非阿贝尔 commutator、clock/shift 在 $k=2,4$ 的全矩阵 rank、$1,A,B,AB$ 的独立性、fixed-cup sign、指定 $R$ 与 ribbon balance、Gram kernel/image、非正规子群和 Gaussian covariances；$S^2$ 的 $H^1$ 亦为零。无限 rank、$\ell^2$ 非满射、Haar 发散及 winding obstruction 由文中的解析论证说明，不由有限矩阵样本替代。

Assumptions: 每例明确其 group/sector/外 frames、场或量子层级；CS 数值属于正文采用的 realizations。区域阶段保留 full presymplectic spaces，未实施新的 proper-gauge reduction。很多例子只证明信息必要或准入条件有作用，不证明原条件最弱。

Not verified: 未证明 universal minimality、所有输入逻辑独立、一般 nonlinear/characteristic well-posedness、全部 quantum boundary Ward/UV existence、完整高阶 ribbon coherence 或任意 state sewing。没有重跑未改变的原 56 项脚本；本文新检查不能冒充这些更广命题的证明。

本次仅新增本文件并增加 README 入口；不重写原正文、合稿、ledger、历史 manifest 或 results。
