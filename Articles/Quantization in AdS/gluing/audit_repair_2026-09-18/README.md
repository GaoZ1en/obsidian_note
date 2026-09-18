# 2026-09-18 sewing 修订入口

基线：`6940ab5243b7d8f74bcfc2f2cf0138eeed50b240`。本修订直接修改 FC 三篇与 PB 五篇 active source notes；对应 Git diff 即可替换原文的补丁。保留原 action、符号、边界与规范约定，不将“存在、唯一、满射”当成已给好的物理输入，不以删去目标换取成功。

## 交付文件

| 文件 | 内容 |
|---|---|
| [repair_proofs.md](repair_proofs.md) | R0–R5：完整假设、关系装配与实际 source 构造、未约化预辛比较、global proper 分支、量子层比较，以及新增条件的失败见证与弱化 |
| [input_dependencies.md](input_dependencies.md) | 拟删重复字段的重建方法／条件，全部 32+38 个原 input audit 分组的依赖分类 |
| [regression_and_status.md](regression_and_status.md) | 原反例的准确攻击范围、修订后的新攻击、实际执行／建议执行的区别、未证明事项与影响 |
| [verify_repair.py](verify_repair.py) | 可独立执行的 SymPy 符号回测，失败时退出，不访问网络 |
| [checks_result.json](checks_result.json) | 本次实际执行的 63 项断言及其结果、环境、脚本 SHA-256 |
| [sync_reading_copies.py](sync_reading_copies.py) | 两份历史合稿的精确源码块同步工具；默认 dry run，非预期 snapshot 拒绝更新 |

## 正文与历史快照

当前入口是各包 `notes/` 分篇和本目录证明。FC 的 `COMPLETE_NOTE.md`、PB 的 `COMPLETE_NOTES.md` 在本次 PR 中仍是**修订前的历史合稿**，没有冒称已同步。历史 counterexample/input audits、原 manifest 和旧运行记录也未改写；本目录记录对它们的进一步审查，不将原 audits 视为可信证明。

PB 原 `claims.json` 不在本次固定仓库中，未伪造恢复旧 ledger；FC 原 ledger 在上一轮审查由 Library 取得并匹配原 hash。本次修订后的状态与未证影响以 `regression_and_status.md` 为准，不继承旧 PASS 作为证明。

## 复现

从仓库根目录运行符号回测；只向明确指定的输出文件写入结果：

```bash
python "Articles/Quantization in AdS/gluing/audit_repair_2026-09-18/verify_repair.py" --output /tmp/sewing-repair-checks.json
```

实际执行环境为 Python 3.13.5、SymPy 1.14.0；63/63 通过。counterexample 行的通过表示正确重现了失败机制，**不是被攻击命题成立**。没有执行旧 FC 86 项／PB 56 项 suites，没有执行 Mathematica/xAct/Sage；有限检查不证明无限维存在性或全部 microlocal/ribbon 条件。

在包含基线 commit 的完整 Git checkout 中，可先检查合稿同步计划：

```bash
python "Articles/Quantization in AdS/gluing/audit_repair_2026-09-18/sync_reading_copies.py"
```

该命令是交付后的建议执行步骤，不记为 PB 完整合稿已验收。只有显式追加 `--write` 才写合稿；两包均预检通过后才写入，不重写历史 manifest/ZIP。FC 实际历史合稿的三块替换、幂等与拒绝异常输入已执行验证，PB 完整合稿未执行。

## 保留的开放目标

全部 reflecting-boundary microlocal 输入、一般 smooth/mixed/null IBVP、一般拓扑的 proper 分支算法与奇异空间 Hamiltonian lifts、interacting boundary Ward/UV/removal、完整 charged-channel 分析与 higher ribbon coherence、一般 state/representation/amplitude sewing 仍需各自构造。关系装配不替代它们的存在性；原物理目标保留。
