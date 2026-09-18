# 有限混合切割与 standalone observable-algebra sewing

本包继续使用既定的 polynomial Peierls/Wick observable class 和局域 off-shell Ward symmetry，不讨论 proper gauge，不要求 nonlinear BC。对象仍按 closed → selected opening/data extraction → typed matching → reconstructed closed theory 组合。

**已实现的主结果：** 在二维平直静态条带及其分段 spacelike/null caps 所限定的区域类中，有限 admissible timelike、spacelike、null sewing programs 重建同一完整 sourced problem。由此得到自由经典/量子代数、允许的 free composites 和 affine Ward symmetries 对 mixed interchange、重新切分和实际 closed intermediates 的相容性。

**尚未全部完成的目标：** 所有 standalone/intermediate reflecting-boundary theories 的 all-order interacting stress/force/current Ward normalization。二维无导数 potential graph 的延拓与有限分区已有构造，单 stress contact 已计算；它们不能代替这个边界存在性问题。一般高维或运动边界的版本也未列入无条件定理。

## 阅读

[主 note：有限混合切割定理](notes/01_finite_cut_theorem.md) 是入口。

[具体三类接口、incoming domain 和 mixed benchmark](notes/02_three_cut_calculus.md) 给 Green identity、D/N/R kernels、Cauchy 演化、Goursat filling、massive null kink 和完整重新取源的证明。

[微扰与重整化](notes/03_quantum_and_renormalization.md) 区分 free Wick、classical formal response、二维 potential graph extension、finite schemes 和尚缺的 boundary Ward contacts。

[Symmetry、energy 与 flux](notes/04_symmetry_energy_and_flux.md) 给有限 mixed naturality、Peierls generators、Robin surface energy 和无需 sharp null quantum trace 的窗口 flux。

[反例审查与修复记录](notes/05_adversarial_audit.md) 与 [最少背景](notes/06_minimal_background.md) 分别用于核查 claim 和补必要定义。

[单文件阅读版](COMPLETE_NOTE.md) 汇集以上六篇，适合搜索与归档。

## 可重复检查

在本目录执行：

```bash
python checks/verify.py
```

依赖见 `checks/requirements.txt`；实际测试环境版本见 `results/environment.json`。脚本不访问网络。最终执行 **86 项检查全部通过**；包括九种 D/N/R combinations、完整 exterior source-response blocks、真正 closed intermediates、连续 T→N 核、Cauchy/Goursat 对照、junction/反例、Wick contractions、stress contacts 和 finite partitions。

[机器结果](results/checks.json) 保留各项类型、残差、容差和反例解释。[最终执行日志](results/final_run.log) 与早期日志一并保存。该脚本不是通用任意 polygon PDE solver；数值检查不替代正文的解析证明。

## 证明状态与来源

[机器可读 claim ledger](CLAIMS.json) 明确区别本稿证明、继承输入、条件定理、图级构造与未完成项。`sources/` 保存三份前序输入快照；`SOURCE_MANIFEST.json` 记录哈希、GitHub 已读取版本和公开文献。

Research Radar 页面本轮仍返回读取失败；没有用其内容推断最新项目状态。没有修改用户仓库。此包是新增研究稿，不是已经经过独立同行审查的最终论文。
