# Gluing 思路演变

本页是 2026-09-23 的历史导航，不是新 formalism，也不是对全部旧证明的重新认证。时间依据现存笔记的日期、旧归档说明和本地 Git 提交记录；区间表示可见的整理／推进时间，不主张精确的思想起源。几个分支曾并行，后来的文件也可能继续修补早期模型。

实体文件已按下列七个阶段整理，见[归档总目录](archive/2026-09-23/README.md)；阶段内保留主题子目录，跨阶段共用检查集中在 verification。

## 1. 界面耦合、区域振子与截断：2026-07 至 08 月中旬

本阶段文件：[目录与笔记](archive/2026-09-23/01-interface-interaction/INDEX.md)。

**当时的问题：如何从分开的区域理论，通过 cut 上的耦合恢复连接后的理论？** 组织对象主要是区域模态、有限耦合 action、格点／截断 Hamiltonian 和谱。连续理论系列把这套思路扩展到 AdS、Maxwell 和 CS，旧文章则试图把区域量子化与 gluing 写成一条叙事。

- [连续理论 I](<archive/2026-09-23/01-interface-interaction/continuous theory I.md>) → [II：AdS3](<archive/2026-09-23/01-interface-interaction/continuous theory II.md>) → [III：Maxwell](<archive/2026-09-23/01-interface-interaction/continuous theory III.md>) → [IV：CS](<archive/2026-09-23/01-interface-interaction/continuous theory IV.md>) → [V：AdS2／four quadrants](<archive/2026-09-23/01-interface-interaction/continuous theory V.md>)。
- [格点理论](<archive/2026-09-23/01-interface-interaction/lattice theory.md>)、[非均匀格点](<archive/2026-09-23/01-interface-interaction/nonuniform periodic scalar lattice.md>)、[有限截断](<archive/2026-09-23/01-interface-interaction/finite truncation.md>)与[旧文章审查](archive/2026-09-23/01-interface-interaction/article/AUTHOR_REVIEW.md)。

**转向的含义：** 后续路线不再用某个有限耦合、regulator 或选定的区域乘积态定义 gluing。这里的有限矩阵、谱和极限计算仍可作历史 benchmark；不能仅从这一步推出连续理论的 Fock 等价。原 [deprecated 说明](archive/2026-09-23/07-retirement-and-project-records/previous-layout/deprecated/README.md)记录 08-19／08-20 的退役决定，文件此后仍有修订。

## 2. 从界面相互作用转向边界历史与响应：08-19 至 08 月下旬

本阶段文件：[目录与笔记](archive/2026-09-23/02-boundary-history-response/INDEX.md)。

**对象变成 prescribed-history 的区域解空间。** 先固定各区域允许的边界资料，在共同 history 上释放变分，利用 action/CPS 的响应和有向 flux 做组合。Lifting、port 和 feedback 是实现与检查工具；gluing 的定义不再由它们的有限表示承担。

- [boundary-polarized formalism](<archive/2026-09-23/02-boundary-history-response/formalism/gluing formalism.md>)、[lifting operator](<archive/2026-09-23/02-boundary-history-response/states-and-representations/lifting operator formalism.md>)、[feedback–port bridge](archive/2026-09-23/02-boundary-history-response/formalism/feedback-port-canonical-bridge.md)。
- [finite port normal form](archive/2026-09-23/02-boundary-history-response/regulators-and-fock/port-canonical-normal-form.md)、[continuum closure](<archive/2026-09-23/02-boundary-history-response/states-and-representations/functional analysis proof of well-definedness of finite truncation.md>)、[cut-position](<archive/2026-09-23/02-boundary-history-response/states-and-representations/non-central cut.md>)与[associativity](<archive/2026-09-23/02-boundary-history-response/states-and-representations/associativity.md>)。
- [当时的审查](archive/2026-09-23/02-boundary-history-response/formalism/formalism_audit.md)和[修订记录](archive/2026-09-23/02-boundary-history-response/formalism/gluing-formalism-change-log.md)保存 regulator 诊断与修补的语境。

**并行的表象支线：** [Fock failure](<archive/2026-09-23/02-boundary-history-response/states-and-representations/Fock failure.md>)、[高维 sharp-Fock 比较](archive/2026-09-23/02-boundary-history-response/regulators-and-fock/higher-dimensional-sharp-fock-comparison.md)、[open-system 分析](archive/2026-09-23/02-boundary-history-response/states-and-representations/reduced-state-open-system-scalar.md)以及 smearing／collar regulator 尝试。这些材料应按各自的 reference representation、regulator 和连续极限阅读。特定 sharp regional product-Fock 的障碍，不是所有 gluing 的否定。

## 3. 两个并行问题：几何切口与规范资料，08 月下旬至 09 月初

本阶段文件：[目录与笔记](archive/2026-09-23/03-geometric-cuts-and-gauge-data/INDEX.md)。

**切口类型不能只换名字。** 空间分区产生的 timelike boundary-history 问题、真正的 spacelike Cauchy 接口和 null characteristic 问题，需要不同的数据与重构。旧 `models/spacelike regions/` 名称沿用的是空间分区习惯，不能据此断言其中每个接口都是 spacelike。

- [spacelike subregion trace formalism](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/formalism/spacelike subregion trace formalism.md>)、[massive scalar 的 spacelike 接口](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/spacelike/1+1 massive scalar spacelike gluing.md>)。
- [Rindler causal complement](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/null-and-rindler/rindler scalar.md>) → [AdS2 characteristic reconstruction](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/null-and-rindler/ads2-rindler global reconstruction.md>) → [massive scalar 单／双 null 模型](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/null-and-rindler/1+1 massive scalar null gluing.md>)。这些是后续继续发展的支线，不能把两个外部 wedges 自动当成整个 Lorentzian spacetime。

**规范场又增加了独立问题：** 保留哪些 traces、transition、gauge maps 和响应，才能做实际装配？[gauge-covariant sewing](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/formalism/gauge-covariant sewing and reduction.md>)、[spatial gauge formalism](<archive/2026-09-23/03-geometric-cuts-and-gauge-data/formalism/spatial gauge gluing formalism.md>)、[Maxwell kill test](archive/2026-09-23/03-geometric-cuts-and-gauge-data/gauge/maxwell-2p1-spatial-gluing-kill-test/README.md)和[YM radial collar](archive/2026-09-23/03-geometric-cuts-and-gauge-data/gauge/ym-radial-collar-assembly/README.md)保留了这一轮的对象选择和审查。Orbit／reduced 描述与后来完整未约化场的原则属于不同阶段，不把旧术语悄悄改成一致。

## 4. 从 Phase-Space／Weyl 重构转向区域 Observable Families：09-03 至 09 月中旬

本阶段文件：[目录与笔记](archive/2026-09-23/04-observable-algebra/INDEX.md)。

**问题进一步变成：区域对象自身携带什么，才能重构独立定义的 global observable algebra？** 仅有 bare algebra 或某个重构后的 global presentation 不能代替区域输入；history transport、response、函数类和实际 kernel/image 成为主要工作。

- [Weyl algebra factorization](<archive/2026-09-23/04-observable-algebra/formalism/Weyl algebra factorization.md>) → [history-indexed affine CCR](<archive/2026-09-23/04-observable-algebra/formalism/history-indexed observable algebra gluing.md>) → [classical regional families](<archive/2026-09-23/04-observable-algebra/formalism/classical regional observable algebra gluing.md>)。
- [classical action formalism](archive/2026-09-23/04-observable-algebra/formalism/classical_gluing_formalism.md)与[observable algebra formalism](<archive/2026-09-23/04-observable-algebra/formalism/observable algebra gluing formalism.md>)承担不同层次；[Untitled 草稿](archive/2026-09-23/04-observable-algebra/formalism/Untitled.md)继续尝试把 prescribed-history families、共同 source 和释放后的代数写清楚，未因归档获得定稿身份。
- [scalar local-structure 路线](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/scalar local structure research route.md>) → [有限插入 time-slice 反例](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/scalar insertion time-slice obstruction.md>) → [另行扩大的 relative-S 目标](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/scalar completed relative-S local structure.md>)。这是目标对象改变的实例，不能把扩大后的构造倒写成旧有限字代数已成功。
- [scalar sewing closure](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/scalar observable sewing closure.md>)、[free renormalized sewing](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/free scalar renormalized quantum observable algebra gluing.md>)和[interacting phi-n](<archive/2026-09-23/04-observable-algebra/scalar-local-structure/phin renormalized quantum observable algebra gluing.md>)要按各自的 test/history class、completion 和 renormalization 输入分别阅读。

标量的 Wick、constant-coupling phi4、Proca、Dirac、斜切口、AdS2 和 rectangle self-sewing 是这一阶段的具体检验面。规范场的 YM／CS 则逐步区分 classical、operator core、representation/net 三种目标，见 [typed theorem interfaces](<archive/2026-09-23/04-observable-algebra/formalism/gauge observable sewing theorem interfaces.md>)；它们不是自动相互替代的“量子粘合”。

## 5. 完整场、共同 Source 与 Reopening：09 月中旬至 09-19

本阶段文件：[目录与笔记](archive/2026-09-23/05-full-fields-and-reopening/INDEX.md)。

**这一轮改变的是区域对象及中间组合的保留资料。** 从仅看 quotient／current 验收转向保留完整 fields、实际 gauge arrows、stabilizers、预辛退化方向和相容 source tuples，再问装配、observable reconstruction 与 reopening 分别需要什么。

本地 Git 记录可见 `finite_cut_sewing/`、`principal_bundle_sewing_v2/` 和 `audit_repair_2026-09-18/` 三个包；**本次开始时它们已经从工作树删除**，所以没有恢复或制造空目录。历史节点包括：

- `2e0b98dc`（09-18）：区分 full field space、observable quotients 与 quantum states。
- `445622eb`（09-18）：joint tuples 上的 reopening 与 coefficient overlap kernel。
- `6e91f717`（09-18）：joint-source 与 full-presymplectic repairs。
- `a534756d`（09-19）：非线性 SU(2) sewing 与 auxiliary-choice checks。

这些提交名用于定位历史，不是本次重新验证的数学结论。BV–BFV 笔记仍引用这些已缺失路径，缺失情况随归档记录保存。

## 6. BV–BFV 比较、Corners 与 Source Release：09-19 至 09-21

本阶段文件：[目录与笔记](archive/2026-09-23/06-bv-bfv/INDEX.md)。

**问题不是把旧 sewing 直接改名为 homotopy pullback，而是逐层比较实际对象。** [programme](archive/2026-09-23/06-bv-bfv/programme.md)、[formalism](archive/2026-09-23/06-bv-bfv/formalism.md)和[反例审查](archive/2026-09-23/06-bv-bfv/counterexample_audit.md)保存目标、失败候选和各轮修订。

1. [U(1) disk/open chord](archive/2026-09-23/06-bv-bfv/u1_cs_open_chord.md)与[YM2 control](archive/2026-09-23/06-bv-bfv/ym2_control.md)：完整经典 fields/arrows、action/CPS 和指定 observable 验收。
2. [relative homotopy](archive/2026-09-23/06-bv-bfv/relative_homotopy.md)、[corner descent](archive/2026-09-23/06-bv-bfv/corner_descent.md)、[finite cuts](archive/2026-09-23/06-bv-bfv/finite_cut_coherence.md)、[formal non-Abelian descent](archive/2026-09-23/06-bv-bfv/nonabelian_relative_descent.md)：限定几何与光滑域内的 cochain／homotopy 比较。
3. [continuous observables](archive/2026-09-23/06-bv-bfv/continuous_observables.md)、[finite SU(2)](archive/2026-09-23/06-bv-bfv/nonabelian_disk_observables.md)与[quantum domain](archive/2026-09-23/06-bv-bfv/quantum_observable_domain.md)：cohomology、Hamiltonian functions 和量子乘积定义域分别验收。
4. [quantum collar](archive/2026-09-23/06-bv-bfv/quantum_collar_and_corners.md) → [physical walls/caps](archive/2026-09-23/06-bv-bfv/physical_wall_and_caps.md) → [proper quartet](archive/2026-09-23/06-bv-bfv/quantum_cut_quartet.md) → [source/cap decomposition](archive/2026-09-23/06-bv-bfv/source_cap_bv_decomposition.md) → [bulk/source release](archive/2026-09-23/06-bv-bfv/bulk_boundary_source_release.md)。此处的顺序尤其重要：辅助 source 模型的计算不能直接代替原 bulk 的量子等价。

归档时 [completion.json](archive/2026-09-23/06-bv-bfv/completion.json)仍把 G1–G5 记为 partial、G6 记为 open。最新笔记明确区分 action-derived cochain map、relative BV pairing/fiber 与完整 quantum pushforward；后两者等缺口没有因本次整理而关闭。

## 7. 2026-09-23：整条旧路线退役

本阶段文件：[目录与笔记](archive/2026-09-23/07-retirement-and-project-records/INDEX.md)。

本次决定是将以上全部现存路线作为历史材料保存，不再维护其中任何一支为 active programme。保留反例、限定结果、旧任务与未完成边界，使以后能回查“为什么换对象／换问题”，而不是只留下后来成功的叙述。

横向找模型请用 [主题索引](TOPICS.md)；查具体迁移路径、文件保存和已有缺失请用 [归档核对](archive/README.md)。本次未重新运行公式或符号证明检查。
