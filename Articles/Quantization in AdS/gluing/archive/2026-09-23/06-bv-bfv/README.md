# BV–BFV systems 的粘合

2026-09-19。起点是 classical shadow 的比较；现已按用户请求进入[完整目标](programme.md)：可再开放系统、一般经典粘合、observable reconstruction、重复组合、量子比较和传播模型验收。完整目标仍 active，状态逐项记在 [completion.json](completion.json)。

**当前答案：无条件等价不成立。** 对固定的 U(1) CS disk/open-chord，已有 full classical fields/arrows、action/response/charge 比较和 current core 的 kernel/image；后续实际构造了含 physical wall/caps 的 corner homotopy limit，并计算连续有限次数多项式 cohomology。点值和能量反驳了将这份 cohomology 等同于旧 finite-current core 的说法；新的 Hamiltonian 多项式比较包含能量并保持泊松括号。现已进一步构造有限 conical cuts 的相对 smoothing、refinement coherence，以及保持真实 exterior 的全 arity formal non-Abelian CS inverse。ND1–ND3 又给有限 SU(2) disk 的 holonomy 域、全场/actual arrows 比较及 smooth Hamiltonian 重构；QD 构造包含局域复合场和能量的 continuum Wick algebra 与声明路线的 sewing。QB 又给 closed product collar 的 normalized axial BV kernel、cylindrical/formal mQME 与 interface/residual pushforward，并显式计算 open-face corner defects。一般 topology/reopening、完整 quantum BV bridge 和传播模型仍未完成。

本目录遵循 gluing 当前的未约化原则：bulk fields、proper action、stabilizers与全部预辛退化方向保留。旧模型的 reduced/current coordinates仅用于派生验收，不替代区域对象。

## 阅读路径

完整目标先读 [programme](programme.md) 和 [系统定义](systems.md)。CD1/O1–O3 见 [corner descent](corner_descent.md)、[连续 observables](continuous_observables.md) 及其 [检查记录](checks/corner_observable_verification.md)。FC1–FC2、NR1–NR4 见 [有限切口与 coherence](finite_cut_coherence.md)、[非阿贝尔相对构造](nonabelian_relative_descent.md) 和 [56 项检查](checks/nonlinear_finite_cut_verification.md)。最新 ND/QD 见 [有限 SU(2) 与 Hamiltonian observables](nonabelian_disk_observables.md)、[continuum quantum domain 与 sewing](quantum_observable_domain.md) 和 [37 项检查及回攻](checks/global_quantum_verification.md)。

Quantum integration 的当前构造见 [axial collar 与 corners](quantum_collar_and_corners.md) 和 [35 项检查](checks/quantum_collar_verification.md)。Closed collar 的 mQME/pushforward 与原 open-chord 的完整量子比较有明确边界。

[真实 wall/caps](physical_wall_and_caps.md) 与 [43 项检查](checks/physical_wall_caps_verification.md) 进一步给出原 disk/chord 的 physical history phase、cap Ward compensation、normalized source/quartet release，以及与 QD products/energy 一致的 continuum coherent cap operator。Sharp regional energy 和 sharp time window 的反例要求保留 history/cap pairing；完整 regional quantum BV state、determinants、local BV insertions 与 mQME 比较仍未完成。

2026-09-21 的 [proper cut quartet](quantum_cut_quartet.md) 构造该实际 proper fiber 的完整 canonical BV 补全、保持自由 caps 的连续基底、包含局域插入的正规序相容族、Gaussian/Berezin pushforward 和 cochain contraction；[49项检查](checks/quantum_cut_quartet_verification.md) 单独记录。原 bulk/source/corner complex 如何在全 cochain 层分解出此块仍须实际导出，不能用它替换一般 residual fields。

[Source/cap 相对分解](source_cap_bv_decomposition.md) 进一步从 WH 的 source core 定义 minimal BV model，保留任意 polarized cap arguments，构造真实 relative doublet 与保留 source mean/ghost momentum 的 kernel、mQME 和时间 pushforward。[40项检查](checks/source_cap_bv_verification.md) 核对 cap cotangent defect、horizontal connection、residual integration 和 joint-source 反例。原独立区域完整 BV states 到此源模型的识别仍未完成，G1–G6 状态不变。

[Bulk 与 source release](bulk_boundary_source_release.md) 已补上 actual off-shell cochain 层的来源：原区域 fields 先识别共同 q/ghost，再由真实 response 和 antifield mismatch 建立 release resolution，给 SC 全部 coordinates 的连续 Q-map。Unreleased bulk 直接变成 SC 的版本被一个实际 on-shell half-disk pair 反驳；ghost action 的 cap correction 和 source momentum 的 curvature contribution 保留。[33项检查](checks/bulk_source_release_verification.md) 支持这些新结果；相对 BV pairing/fiber、完整 quantum state 和 G1–G6 仍未完成。

1. [Formalism 与比较图](formalism.md)：定义、ghost/form degrees、符号转换、strict/clean/homotopy区别、opening/release的地位和未证箭头。
2. [U(1) CS disk/open chord](u1_cs_open_chord.md)：从action到最小BV fields、boundary BFV/corner、实际gauge/history域、完整场装配、current polynomial theorem及三片结合性。
3. [相对corner homotopy](relative_homotopy.md)：法向积分、exterior extension修正、连续chain maps与pairing homotopy，补上审查中发现的一个具体缺口。
4. [反例迭代](counterexample_audit.md)：三十轮审查/修补，63 个攻击点与相应回测，逐项记录失败命题、见证和修订。
5. [YM2 对照](ym2_control.md)：Abelian first-order action、canonical BFV、flux/history release与不同coupling的反例；另保留SU(2) circle stabilizer跳变。
6. [验证与来源](Articles/Quantization%20in%20AdS/gluing/archive/2026-09-23/06-bv-bfv/verification.md)、[claim ledger](claims.json)、[下一步](TODO.md)。

## 已落实的四个交付项

| 对话要求 | 本目录结果 |
|---|---|
| 原始BV–BFV定义与typing | formalism §§2–4；CS §§2–3，含题述plus-sign convention与原文符号的完整转换 |
| 同一CS chord显式重建 | CS §§1–8；ghost/antifield、charge、polarization、corner、release、full fields及派生reduction关系 |
| 两种gluing比较图及sector判定 | formalism §§4–5；已证classical图、条件性的dg图、单独证明的observable图 |
| 不等价处及opening的地位 | formalism §§3、6；audit A01–A22；YM2 control |

Starter 额外完成第二模型的 classical/canonical BFV 对照。量子 BV–BFV 是完整目标 G5。QD 已有声明的 continuum observable/product/domain 构造；它和已有 current quantum 模型均不作为 quantum BV pushforward/mQME 定理的证据。

## 保留的核心命题

- **C1：** 同一smooth atlas、匹配collar jets和physical boundary realization下，full classical disk fields及proper arrows与regional装配互逆，CPS分区相加。
- **C2：** 预先声明的smooth-current polynomial source具有显式label lift，完整kernel为共同cut moments，image为独立global current algebra。
- **C3：** 两条不相交、端点互异chords的三片装配与这份observable比较结合；保留尚未释放的histories和charges。
- **L1：** degreewise surjective的linear cochain matching，其strict kernel模型与mapping-cone homotopy product quasi-isomorphic；证明给出显式contracting homotopy。
- **H1/H2：** 在neat product collars和exterior-smooth joint trace域，实际构造relative continuous cochain homotopy和pairing correction，保留chiral外墙及caps的数据。
- **N3：** bare BFV boundary kinematics不固定physical closure或源演化；CS的$v$与YM2的$e^2$给具体见证。

这些结果不靠有限mode cutoff定义。计算检查只校验分量恒等式、反例和有限代数模型；无限维陈述依赖正文的构造/证明及所列域。

## 尚未跨过的边界

后续 CD1 已实现指定的 linear corner homotopy-limit 识别，CD2 在实际 strict field model 上保留 action 与 BV pairing；O1–O3 已处理明确的 continuous polynomial 与 Hamiltonian 类。FC1–FC2 已给合法有限 conical refinements 的比较及高阶 fillers，NR1–NR4 给 true-exterior-relative formal non-Abelian CS 与 polynomial cdga/BV pairing/action 比较。ND 已推进有限 SU(2) disk 的 classical actual source/current 与 Hamiltonian 类，QD 已构造一个包含能量的量子乘积类。仍缺一般 topology/actual source、nonformal off-shell BV、任意 intermediate reopening，以及 quantum BV pushforward/mQME 和传播模型。

旧 finite-current core 不是完整 continuous polynomial BV cohomology，已由 OCE1/OCE2 明确反驳。Compact large-gauge sectors、annulus/self-sewing、non-Abelian singular strata 及量子 pushforward 继续属于待实现目标；没有用“未发现更多反例”替代完成审计。

## 与现有项目的接口

- [现行source/opening原则](../principal_bundle_sewing_v2/notes/02_boundaries_sources_and_reopening.md)
- [完整场装配与独立observable验收](../principal_bundle_sewing_v2/notes/04_sewing_comparison_principle.md)
- [2026-09-18未约化修订](../audit_repair_2026-09-18/repair_proofs.md)
- [原U(1) disk/open-chord模型](<../04-observable-algebra/models/gauge/U(1) Chern-Simons disk and open-chord sewing.md>)

本目录之外的模型 note 和 claim ledgers 未改写。本目录 claims.json 保留被更新条目的历史状态。
