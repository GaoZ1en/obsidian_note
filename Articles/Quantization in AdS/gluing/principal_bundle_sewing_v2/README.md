# Principal-bundle gauge theory：区域 observable algebra 与可再开放粘合

**独立重写稿 · 2026-09-14**

核心对象是有真实边界条件、可独立运行的区域理论，附带由自身 action/domain 重新生成完整边界源关系的规则。先闭合每片，sewing 时只撤去指定人工面的 closure，输出再次具有全部外边界条件。它不是裸区域代数的无条件 tensor-product gluing，也不是一个宣称涵盖任意 YM/CS quantum theory 的普适存在定理。

## 直接阅读

[完整合稿](COMPLETE_NOTES.md) 包含全部 12 篇正文及引文；[模型与缺口矩阵](notes/10_adversarial_review_and_model_matrix.md) 最快说明哪些结果已构造、哪些是条件、哪些仍是目标。[claims.json](claims.json) 逐条固定 31 项主张的范围和排除项。

[2026-09-18 逐条反例审查](counterexample_audit_2026-09-18.md) 覆盖全部 31 项 claim 与正文，给出辛势反例、proper 分支装配的必要条件及各模型的攻击记录。

[2026-09-18 输入删减审查](input_necessity_audit_2026-09-18.md) 审查 38 组输入，以具体删除失败及可替代例子区分必留的 gauge/transition/observable 信息、可重算结构和条件性的量子扩张。

| 文件 | 内容 |
|---|---|
| [00](notes/00_problem_and_contract.md) | 研究问题，独立 target，理论/代数/最小性三层，结果等级 |
| [01](notes/01_bundles_gauge_and_anchors.md) | principal bundles、proper/large gauge、anchors、transition maps、topological sectors |
| [02](notes/02_boundaries_sources_and_reopening.md) | CPS boundary terms、每面 BC、joint source domain、真正重新 opening |
| [03](notes/03_classical_and_quantum_observable_algebras.md) | classical Hamiltonian algebra、quantum prescriptions、reduction、rotor、准入边界 |
| [04](notes/04_sewing_comparison_principle.md) | 几何装配、Poisson comparison、独立 lifts、完整 kernel 与量子比较条件 |
| [05](notes/05_YM2_and_finite_graphs.md) | compact YM2 的 T*G/PBW/Haar/source sewing，有限 graph regulator |
| [06](notes/06_Maxwell_full_smooth_algebra.md) | relative Maxwell 全 modes、Q/P、transition corrections、完整 smooth CCR/Weyl sewing |
| [07](notes/07_CS_currents_Wilson_and_channels.md) | U1 disk current sewing、torus Wilson、SU2_2 channels、fixed-cup conventions |
| [08](notes/08_multiple_sewing_topology_and_homotopies.md) | repeated/self sewing、cocycles、stabilizers、F/R、phases 与必要 homotopies |
| [09](notes/09_interactions_null_quantization_and_states.md) | formal classical YM 扩张，thin Wilson/UV、BRST、null、matter、states |
| [10](notes/10_adversarial_review_and_model_matrix.md) | 模型反查、实际修订记录、必要性 witnesses、未完成范围 |
| [11](notes/11_reader_guide_and_notation.md) | 阅读路径、最少数学解释、全局符号/取向约定 |

## 本版最实质的结果

YM2 在实际适配坐标中算出 classical/quantum vertical kernel，给出 onto Haar map 并比较任意 endpoint histories。Maxwell 不再使用 curvature-only target：明确包含 Q/P，构造带 seam transition 的区域 probes，计算全部指定 smooth linear/polynomial/CCR null relations，并给 all-mode 源问题与重新 opening。U1 disk 同时保留 bulk extendibility 与 transported corner potential；SU2_2 保留 actual off-diagonal Wilson operators 与 cup-sensitive FS sign。

一般 theorem 只负责把明确假设连接成 comparison；它不提供所假定的任意 PDE 或 quantum existence。任意四维 thin Wilson/disorder、所有 Wick stress/corner contacts、一般 null networks 与 state sewing 都保留在目标中，但不列为已构造结果。formal YM 的递归结果仅为 coefficientwise classical response，不冒充完整 interacting quantum observable algebra。

## 复现与证据

```bash
python -m pip install -r checks/requirements.txt
python checks/run_checks.py
```

本轮 **56/56** checks 通过。类型及环境见 [results/checks.json](results/checks.json)，完整日志见 [results/run.log](results/run.log)。其中 counterexample 的 PASS 意味着正确复现了应排除的错误主张；finite diagnostics 不证明无限维 PDE 或全部 ribbon coherence。测试不是外部同行评审。

[REFERENCES.md](REFERENCES.md) 固定外部文献、Research Radar 和当前仓库的使用范围。输入 ZIP/审查报告的实际 hashes 见 [provenance/input_manifest.json](provenance/input_manifest.json)，本包逐文件 hashes 见 [provenance/file_manifest.json](provenance/file_manifest.json)。没有伪造在线 main 的 commit pin。公式与运行代码在本包内自包含；采用的 CS analytic/ribbon realization 被明确标记为输入。

修改分篇后可运行 `python checks/build_bundle.py` 更新合稿、格式检查、manifest 与 ZIP。该 build 检查不判断数学证明是否正确。
