# Principal-bundle gauge theory：区域 observable algebra 与可再开放粘合

**独立重写稿 · 2026-09-14；预辛与源关系修订 · 2026-09-18**

核心对象是有真实边界条件、可独立运行的区域理论，附带由自身 action/domain 重新生成完整边界源关系的规则。先闭合每片，sewing 时只撤去指定人工面的 closure，输出再次具有全部外边界条件。它不是裸区域代数的无条件 tensor-product gluing，也不是一个宣称涵盖任意 YM/CS quantum theory 的普适存在定理。

**本次修订的主线：区域与 sewing 保留完整 fields、proper gauge 的实际作用和全部预辛退化方向，不先 quotient。** 已改正辛势守恒表述、global proper 箭头定义与部分必要性见证；可由其余规则恢复的代数／响应缓存不再独立输入。YM2、Maxwell、U(1) disk 的未约化构造及旧 PBW/Haar 等派生验收之间的关系见[修订证明](../audit_repair_2026-09-18/repair_proofs.md)。

## 直接阅读

当前入口为下列 `notes/` 分篇以及[修订材料总览](../audit_repair_2026-09-18/README.md)。[完整合稿](COMPLETE_NOTES.md) 已在 PR 复核时同步当前 12 篇正文，修订前版本保留于 Git 基线。原[模型与缺口矩阵](notes/10_adversarial_review_and_model_matrix.md) 可用于定位原模型，修订后的证明状态和未证影响以[回测与状态表](../audit_repair_2026-09-18/regression_and_status.md)及 [PR 复核记录](../audit_repair_2026-09-18/pr_review_2026-09-18.md)为准。原包 `claims.json` 不在本次固定 GitHub 目录中；没有用编号不同的旧 ledger 替代，也没有伪造恢复其状态字段。

[2026-09-18 逐条反例审查](counterexample_audit_2026-09-18.md) 记录原 31 项 claim 索引与正文攻击；[输入删减审查](input_necessity_audit_2026-09-18.md) 涉及 38 组输入。两份 audit 本身也接受本次复核，其历史执行记录未改写。每项删减的重建方法、条件和层级见[输入依赖表](../audit_repair_2026-09-18/input_dependencies.md)。

| 文件 | 内容 |
|---|---|
| [00](notes/00_problem_and_contract.md) | 研究问题，独立 target，理论/代数/最小性三层，派生缓存与完整场对象 |
| [01](notes/01_bundles_gauge_and_anchors.md) | principal bundles、proper/large gauge、anchors、transition maps、topological sectors |
| [02](notes/02_boundaries_sources_and_reopening.md) | CPS boundary terms、固定源 Ω 守恒、joint source relation、未约化 closed intermediate |
| [03](notes/03_classical_and_quantum_observable_algebras.md) | 完整预辛空间上的 Hamiltonian algebra、派生约束理想、rotor 与层级区分 |
| [04](notes/04_sewing_comparison_principle.md) | 关系装配、实际 global proper 箭头、预辛比较、独立 lifts/kernel/量子准则 |
| [05](notes/05_YM2_and_finite_graphs.md) | compact YM2 的 T*G/PBW/Haar/source 派生验收，有限 graph regulator |
| [06](notes/06_Maxwell_full_smooth_algebra.md) | relative Maxwell 全 modes、Q/P、transition corrections、smooth CCR/Weyl 验收 |
| [07](notes/07_CS_currents_Wilson_and_channels.md) | U1 disk current sewing、torus Wilson、SU2_2 channels、fixed-cup conventions |
| [08](notes/08_multiple_sewing_topology_and_homotopies.md) | repeated/self sewing、topology、F/R、phase/lift、可重建输入与必要 homotopies |
| [09](notes/09_interactions_null_quantization_and_states.md) | formal classical YM 扩张，thin Wilson/UV、BRST、null、matter、states |
| [10](notes/10_adversarial_review_and_model_matrix.md) | 原模型反查与范围矩阵；后续修订状态见本次回测表 |
| [11](notes/11_reader_guide_and_notation.md) | 阅读路径、最少数学解释、全局符号/取向约定 |

## 模型结果与保留目标

YM2 在实际适配坐标中算出 classical/quantum vertical kernel，给出 onto Haar map 并比较任意 endpoint histories。Maxwell 不再使用 curvature-only target：明确包含 Q/P，构造带 seam transition 的区域 probes，计算全部指定 smooth linear/polynomial/CCR null relations，并给 all-mode 源问题与重新 opening。U1 disk 同时保留 bulk extendibility 与 transported corner potential；SU2_2 保留 actual off-diagonal Wilson operators 与 cup-sensitive FS sign。

这些 reduced/invariant/representation 表达不再充当区域完整场空间。修订证明 R4 给出保留 gauge fibers 的实际构造；一般关系装配不需要将 source 存在或唯一性写成定义。要得到响应算子、Hamiltonian lifts 或 onto 量子比较，仍分别完成具体模型的证明，不能从 Ω pullback 或正 Gram 自动推出。

任意四维 thin Wilson/disorder、全部 interacting Wick stress/corner contacts、一般 mixed/null networks 与 state/representation/amplitude sewing 保留为目标，但不列为已构造结果。formal YM 递归仅为 coefficientwise classical response，不冒充完整 interacting quantum algebra。adopted charged-channel 分析和所有 higher ribbon coherence 也未由有限矩阵重证。

## 复现与证据

本次实际运行的 SymPy 回测见[脚本](../audit_repair_2026-09-18/verify_repair.py)与[63 项结果](../audit_repair_2026-09-18/checks_result.json)。新攻击包括 source 跳跃、corner 全 jets 仍不能替代完整 characteristic trace、等价通道对角嵌入非满、projective lift 和 coefficient overlap kernel。有限检查不证明无限维 PDE 或全部 ribbon coherence。

原包的运行方法是 `python checks/run_checks.py`，依赖及环境曾记录于 `checks/requirements.txt` 和 `results/`。PR 本地复核已独立重跑并通过 **56/56**，具体环境见复核记录；原 manifest 和历史日志没有改写，未跟踪的附件不能因 README 中命名就视为已取得。

[REFERENCES.md](REFERENCES.md) 固定原外部文献、Research Radar 和仓库使用范围。历史 audits、原 manifest/ZIP 未重写。默认 dry-run 的[精确合稿同步工具](../audit_repair_2026-09-18/sync_reading_copies.py)已修复链接重定位与追加式更新的重复写入问题，两包实际同步后的第二次运行均为零块变更；详细范围见 PR 复核记录。
