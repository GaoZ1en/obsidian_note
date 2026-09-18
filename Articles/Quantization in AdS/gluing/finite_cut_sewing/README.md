# 有限混合切割与 standalone observable-algebra sewing

本包继续使用既定的 polynomial Peierls/Wick observable class 和局域 off-shell Ward symmetry，不讨论 proper gauge，不要求 nonlinear BC。对象仍按 closed → selected opening/data extraction → typed matching → reconstructed closed theory 组合。

**2026-09-18 修订：** 当前正文为下面的 `notes/` 分篇。已修正 Lemma 4.2 的非法源块分解，补 coefficient overlap kernel，删除 constructor 中可由其余规则生成的独立代数／响应缓存，并恢复损坏的 Green 展开符号。[修订证明、输入依赖与回测入口](../audit_repair_2026-09-18/README.md) 给出完整假设、证明、新攻击和未证事项。原反例/input audits 保留为历史审查材料，不作为可信结论。

**已实现的主结果：** 在二维平直静态条带及其分段 spacelike/null caps 所限定的区域类中，有限 admissible timelike、spacelike、null sewing programs 在原独立 source 构造的相容域内重建同一完整 sourced problem。由此得到自由经典/量子代数、允许的 free composites 和 affine Ward symmetries 对 mixed interchange、重新切分和实际 closed intermediates 的相容性。量子部分仍依赖原区间 boundary microlocal 输入，不由本次有限回测重新证明。

**尚未全部完成的目标：** 所有 standalone/intermediate reflecting-boundary theories 的 all-order interacting stress/force/current Ward normalization。二维无导数 potential graph 的延拓与有限分区已有构造，单 stress contact 已计算；它们不能代替这个边界存在性问题。一般高维或运动边界的版本也未列入无条件定理。

## 阅读

[主 note：有限混合切割定理](notes/01_finite_cut_theorem.md) 是入口。

[具体三类接口、incoming domain 和 mixed benchmark](notes/02_three_cut_calculus.md) 给 Green identity、D/N/R kernels、Cauchy 演化、Goursat filling、massive null kink 和完整重新取源的证明。

[微扰与重整化](notes/03_quantum_and_renormalization.md) 区分 free Wick、classical formal response、二维 potential graph extension、finite schemes 和尚缺的 boundary Ward contacts。

[Symmetry、energy 与 flux](notes/04_symmetry_energy_and_flux.md) 给有限 mixed naturality、Peierls generators、Robin surface energy 和无需 sharp null quantum trace 的窗口 flux。

[反例审查与修复记录](notes/05_adversarial_audit.md) 与 [最少背景](notes/06_minimal_background.md) 分别用于核查 claim 和补必要定义。

[2026-09-18 逐条反例审查](counterexample_audit_2026-09-18.md) 记录原 25 项 claim、正文及来源快照的攻击结果，区分证明问题、已有反例与尚未验证的输入；其后续判定见本次修订入口。

[2026-09-18 输入删减审查](input_necessity_audit_2026-09-18.md) 将 32 组输入逐项列出；本次修订进一步给出[依赖分类与重建条件](../audit_repair_2026-09-18/input_dependencies.md)，不将原审计中的“必留”都视为独立最小输入。

[历史单文件阅读版](COMPLETE_NOTE.md) 汇集修订前的六篇。**此文件本次未同步，不能替代当前分篇正文。** 精确同步工具及已执行／未执行范围见修订入口。

## 可重复检查

旧包检查命令在本目录执行：

```bash
python checks/verify.py
```

原包依赖见 `checks/requirements.txt`；原环境记录为 `results/environment.json`。历史包记载 **86 项检查全部通过**，包括九种 D/N/R combinations、完整 exterior source-response blocks、真正 closed intermediates、连续 T→N 核、Cauchy/Goursat 对照、junction/反例、Wick contractions、stress contacts 和 finite partitions。**这不是本次修订重跑的结果；这些未跟踪的原包附件不能由链接本身认证存在。**

原包的 `results/checks.json`、`results/final_run.log` 是历史记录。本次实际执行的 **63 项独立符号回测**、环境与脚本校验值见[新结果](../audit_repair_2026-09-18/checks_result.json)及[执行范围](../audit_repair_2026-09-18/regression_and_status.md)。两套检查都不替代连续分析证明。

## 证明状态与来源

原包 `CLAIMS.json` 区别证明、继承输入、条件定理、图级构造与未完成项；该文件不在本次基线 GitHub 目录中，上一轮独立审查从 Library 取得了与原 audit hash 相符的版本。本次没有虚构新的原 ledger。`sources/` 保存三份前序输入快照；原 `SOURCE_MANIFEST.json` 属历史包记录。

Research Radar 读取失败，没有用其内容推断最新项目状态。当前修订只改所列正文及修订材料；未改写历史 audits/运行日志，也未将开放的物理目标删除或升级为已证。
