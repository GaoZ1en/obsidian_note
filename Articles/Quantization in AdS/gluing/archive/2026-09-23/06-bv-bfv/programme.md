# BV–BFV regional sewing：完整目标与完成审计

本目标来自 2026-09-19 的继续请求：完全实现可再开放系统、一般经典粘合、observable reconstruction、反复组合的一致性，以及量子比较和障碍分析。Starter 的完成不是本目标的完成。

**最终验收。** 对明确的理论类和边界域，从独立区域 action、实际规范作用及接口资料构造 sewing；与独立未切分理论比较完整 fields/arrows、经典 observables、量子 observables 与动力学；中间结果仍可 reopening；不同合法分解之间有满足相容关系的比较。构造失败时给实际障碍，而不是把待证结论列成成功假设。

| 层次 | 必须交付的内容 | 现在的证据 | 当前状态 |
|---|---|---|---|
| G1 系统 | 物理/临时 realization、实际 proper 群、source regeneration、态以外的 observable 输入与 morphisms | [系统定义](systems.md)、CD2、NR 的 formal CS realization | 部分；一般 realization、实际 source regeneration 与 reopening 尚未完成 |
| G2 经典 | 含 corners、非线性 gauge 与拓扑的构造；全场/箭头、action/CPS 比较及实际适用域 | CD1/H1/H2；NR 的 formal CS；[ND](nonabelian_disk_observables.md) 的 finite SU(2) disk fields/arrows/action/CPS | 部分；一般 topology、source、nonformal off-shell BV 与传播模型尚未完成 |
| G3 observables | 独立 source/target、核/像/括号/动力学；明确连续与乘积域 | O1–O3、NR4；ND3 的 finite SU(2) regular Hamiltonian 类；QD 的 continuum quantum products | 部分；nonformal BV representatives、一般 presentation 与 quantum BV bridge 仍未完成 |
| G4 重复组合 | reopening 闭包；有限 refinement、self-sewing、junction、关联子的高阶相容；辅助选择运输 | [FC1–FC2](finite_cut_coherence.md) 的有限 conical refinements；NR3 的 parameter fillers | 部分；任意 intermediate reopening、compact self-sewing 与量子层仍未完成 |
| G5 量子 | 合法量子 observable 乘积、边界/corner 修正、主方程、anomaly、粘合与量子化比较 | [QD](quantum_observable_domain.md) 的 continuum Wick/domain/sewing；[QB](quantum_collar_and_corners.md) 的 normalized closed-collar integration/mQME；[WH](physical_wall_and_caps.md) 的 physical history/cap 比较 | 部分；完整 regional quantum BV states/pushforward、determinant transport、local BV insertion 域、full mQME 和 anomaly 比较未完成 |
| G6 传播模型验收 | 上述构造在具有局域传播和非线性规范约束的模型中实际落地 | [四维 SU(2) 首阶](../principal_bundle_sewing_v2/nonabelian_propagating_sewing_2026-09-18.md) 可作为输入 | 未完成；不能由 CS/YM2 替代 |

G1–G6 都必须审计；不会在自由 CS 检查通过时把其余项删除。量子层要分别标明形式级数、有限阶与实际算子域；不把一种层级写成另一种。

## 2026-09-19 本轮的实际推进

1. 将 real chiral wall 和未固定 temporal caps 写成真正的 dg boundary complex，加入 seam 的全部边界及其 vertices。
2. 构造三项连续匹配复形、非 chain 的 trace sections 与有限修正，给 strict matching 到完整 corner homotopy-limit model 的连续 chain homotopy equivalence。
3. 在完整 disk BV complex 上给显式连续收缩，计算连续有限次数多项式 cohomology。原 fields 和 gauge arrows 不被收缩后的计算模型替换。
4. 反驳“完整连续多项式 cohomology 等于有限 smooth-current polynomial algebra”：点值与能量给两种不同见证。
5. 定义由自身 CPS 验收的 Hamiltonian 多项式子代数，证明它包含能量、保持泊松括号，并在该 CS cut 上重构。
6. 在实际匹配场空间 P_L 上相加区域 action/pairing，得到相对 surviving caps 的线性 BV–BFV identity。无需把辅助 resolution 的每个方向升级成新物理场。

本轮 [检查记录](checks/corner_observable_verification.md) 区分解析证明与有限符号检查。一般理论的完成状态见 [completion.json](completion.json)。

## 有限 cuts 与非阿贝尔形式层的后续推进

FC1 已在共同 conical charts 中先处理 vertex 再处理 edges，保留真实 exterior 并构造连续比较。三线导数反例排除了固定任意内部 traces 的错误版本。NR1–NR3 给相对 path object 的显式 kernel contraction、全 arity L∞ 递归及 parameter simplex fillers；FC2 据此构造同一 M 的有限合法 refinement coherence。NR4 进一步比较 formal polynomial cdga、BV pairing 与 action。

[56 项新检查及审查](checks/nonlinear_finite_cut_verification.md) 特别排除了三阶修正恒零的退化测试模型；这些有限检查支持符号与见证，正文构造承担连续性、全阶和高阶相容证明。

## 下一条实际推导链

ND1–ND3 已对 source-free SU(2) disk 构造 actual holonomy、finite relative field/arrows comparison 与独立 regular Hamiltonian 类。QD 的反例进一步证明 P_H 不能全都在同一 vacuum domain 实现，并给出包含 local composites/energy 的实际 quantum 子代数及 source/target sewing。

接下来需要从独立 regional quantum BV–BFV complexes/states 构造真正的 interface/residual pushforward，比较其产物与 QD 的 Wick products，实际验收 artificial corners、mQME 和 anomaly。Classical 路线还须扩展 compact self-sewing/bundle sectors、nonformal off-shell BV representatives 与一般 source/reopening；传播模型要求继续保留。

量子工作已有 QD 的 continuum observable/product/domain 路线；接下来必须把独立 regional quantum BV–BFV 的 integration 路线接到同一比较中。Cattaneo–Mnev 的 [经典论文](https://arxiv.org/html/2208.11211v1) 区分线性例子与非线性 transfer 路线；CMR 的 [量子框架](https://arxiv.org/html/1507.01221v2) 还需要处理 regularization、boundary operator 和 residual integration。文献提供方法与应检验的条件，不替代本项目的构造。

停止研究搜索或本轮结束，不等于总目标已经完成。只有上述每项有范围匹配的权威证据，才可以标记整个目标完成。


## Quantum collar 的实际 integration 增量

[QB1–QB5](quantum_collar_and_corners.md) 从独立Abelian collar action导出polarized boundary operator，执行轴向fluctuation与residual Fourier/Berezin积分，并对closed torus接口证明声明的normalized cylindrical/formal mQME和有限重复组合。Open face有实际corner curvature、Ward defect、projective cocycle与residual-choice phase；proper wall为零仍不能删掉cap贡献。局域mixed BV functional的Δ发散另要求真正的renormalization/domain构造。

下一步应在原disk/chord的真实lateral/corner action与极化上构造corner states/pairings，抵消已计算的defects，再将包含local insertions的pushforward与QD products/energy比较。[35项检查](checks/quantum_collar_verification.md)不替代这一桥梁，也不改变G1–G6的验收范围。

## 真实 wall/caps 的后续增量

[WH1–WH4](physical_wall_and_caps.md) 已从原 regional action 得到 spatial-flat physical history phase，保留 cap/endpoint terms，构造共同 cut 的 cap Ward compensation，并执行明确归一化的 cylindrical source/quartet release。从独立 disk wall action 与 QD quantum prescription 得到的 continuum coherent cap operator，实际产生同一 current contractions、Wick products 和 energy。Sharp arc energy 及 sharp 时间窗的 vacuum-domain 反例进一步排除把每个区域普遍定义为一个孤立的 Fock Hamiltonian。

这一步补上 physical-history-to-cap 比较；尚未补齐独立区域完整 BV states、bulk/ghost/corner determinant lines、各自 polarization 和 distributional pairing domain。下一条 quantum 推导应在包含 local BV insertions 的 complex 上实际构造这些资料和 full mQME/pushforward，证明其结果与 WH/QD 相同。[43项检查](checks/physical_wall_caps_verification.md) 不能替代这一剩余箭头。

最终仍按 G1–G6 验收：可再开放的系统及 source regeneration；含拓扑与实际 gauge arrows 的一般经典比较；独立 observables 的核/像、乘积与动力学；重复/self/junction/refinement composition；完整量子比较；同一套结构在传播非阿贝尔模型中的实际实现。未在新一轮反例中失败，不能将任何尚缺构造或证明的条目改成完成。

## 2026-09-21：proper cut 的局域量子插入

[QT1–QT4](quantum_cut_quartet.md) 在 WH 的实际 proper-history fiber 上构造完整 canonical BV quartet。它有保持原 C∞ corner 域的双基底、包含全部 antifields 的 QME/quantum differential、实际 Gaussian/Berezin pushforward 和显式 cochain contraction。局域 polynomials 作为 Gaussian 指定的 normal families 进入同一 complex；cutoff transport、辅助 Wick product 与有限独立块积分相容。Determinant orientation 的负号反例禁止无条件宣称 normalization 和所有 gauge-fixing choices 无关。[49项检查](checks/quantum_cut_quartet_verification.md) 与连续证明分别保存。

这一步实现了 canonical proper auxiliary block 的局域量子构造。接下来须从原 regional source/corner BV action 导出它：尤其带时间导数的 source-coordinate change 的 cotangent lift 有 cap terms，必须实际保留并比较。QT 不能把 QB 的一般 residual pair 强制变成 contractible fields；完整 regional state、bulk determinant、mixed insertion domain 和 full mQME bridge 继续未完成。G1–G6 的总体状态不变。

## Source/cap 分解及其对最终验收的作用

[SC1–SC3](source_cap_bv_decomposition.md) 已对 WH physical source core 的 minimal BV completion 构造连续可逆的 relative cotangent/chain map；caps 保留为任意 polarized arguments，horizontal connection 显式留下。只有相对 fluctuations 形成 QT 型 doublet，source 的时间积分与 ghost momentum 仍作为 residual pair。其 normalized kernel 满足 mQME，并在实际 temporal interface 与 residual 两步积分下闭合。[40项检查](checks/source_cap_bv_verification.md) 分开记录有限证据。

从这个模型返回原理论时，联合源约束不能被独立 Gaussian 因子替掉；固定 response 的 source integral 是 δ(a)，无依据地另积分 response 会把它误变为1。原 full bulk/corner BV fields 到 SC variables 的识别、reference-dependent 配对、完整 determinant 和 mixed insertion 域继续待证。SC 修复了一个明确的 source/cap 子问题，没有关闭 G5。

最终验收仍需要一条在同一声明理论类上完整成立的比较链：区域 action 与完整源关系 → 可再开放的系统 → 经典全场/箭头与独立 observable 比较 → 重复、自粘合及辅助选择的相容 → 完整 quantum BV pushforward 与量子产品/动力学比较。G6 要求在具有局域传播的非线性规范模型上实际走完这条链，不能用不同简化模型各自的一小段拼成验收。

现有结果给出多个受控模型及比较中的若干箭头。剩余工作是补齐上述构造和范围匹配的证明，并将失败条件记录为实际障碍；符号检查的数量和一轮中是否出现新反例，都不是整套目标的完成比例。

## 原区域数据到源模型：先实施 release

[BS1–BS3](bulk_boundary_source_release.md) 构造 actual on-shell half-disk counterexample，排除将 unreleased bulk 直接当作 SC source model 的 Q-equivalent presentation。原 action variation 给 release constraint，seam antifield mismatch 给其 Noether relation；保留这两层后，已经得到 SC 全部 coordinates 的 continuous off-shell Q-map。原 ghost action 的 source terms 和 cap correction 也被显式导出。[33项检查](checks/bulk_source_release_verification.md) 独立保存。

这一进展修订了待证箭头的类型。下一步是该 release correspondence 的 relative BV pairing/fiber、retained bulk sectors 与真实 quantum pushforward；canonical source momentum 中的 curvature term 和 ghost cap phase仍在。不能把 actual cochain comparison 写成已完成的 symplectic factorization，也不再把被反例排除的 unreleased quasi-isomorphism 当作后续目标。其余 G1–G6 验收内容保持。
