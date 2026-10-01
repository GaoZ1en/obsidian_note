# Gluing — 研究路线归档

2026-09-23：按项目选择，将本目录现存研究材料整体归档。本目录不再维护 active formalism 或待办队列；归档不表示每个旧计算都被否定，也不表示旧目标已经完成。新的研究选择不在这里编写。

## 归档后补充的独立笔记

- 2026-09-26：[Regional Field Theories and Sewing](REGIONAL_THEORY_AND_SEWING.md)：一般 formalism，按英文定义、构造、定理与证明组织区域变分理论、闭合／opening、传输、光滑装配、CPS、响应、观测代数、量子重建及有限次组合；适用条件列在相应陈述中。
- 2026-09-26：[Regional BV–BFV Theories and Sewing](REGIONAL_BV_BFV_FORMALISM.md)：一般 BV–BFV formalism，按区域定义与经典拼接、同伦匹配与 residual transfer、CPS／响应／观测、量子态／多重插入／corners、量子 sewing 与重建、有限组合与选择比较展开；态构造明确区域 Gaussian lift、联合 polarized BV fibre、界面 kernel 与 residual pushforward，保留新增界面零模，并列出全阶 symplectic chart 和共享 corner 的混合相容条件；区分态代表严格相等与态类相等，解析存在性仍作为输入，不含具体模型例子。
- [配套例子与计算记录](REGIONAL_THEORY_AND_SEWING_EXAMPLES.md)：从正文移出的标量、Maxwell／Yang–Mills、YM2、Chern–Simons 与 Einstein／AdS3 材料，以及原展开稿的符号检查和来源记录。下面的历史归档及其 claim 状态保留原样。

## 从哪里读

- [思路演变](HISTORY.md)：从界面耦合、边界历史／响应、可观测代数，到完整规范场和 BV–BFV 比较；说明每次转向改变了什么对象、留下什么问题。
- [按主题检索](TOPICS.md)：全部历史 Markdown 按主题列出，模型、审查、证明边界和计算记录可以交叉查找。
- [归档说明与迁移核对](archive/README.md)：保存范围、旧路径映射、链接处理和已有缺失。
- [归档前的项目入口](archive/2026-09-23/07-retirement-and-project-records/previous-layout/README.md)与[任务清单](archive/2026-09-23/07-retirement-and-project-records/previous-layout/TODO.md)：保留当时状态，不能再作为当前工作安排。

## 保存布局

[2026-09-23 归档总目录](archive/2026-09-23/README.md)现已按 HISTORY 的七个阶段实际分目录；每个目录的 INDEX 列出该阶段的原笔记。跨主题阅读仍可使用 TOPICS。

| 阶段 | 目录 |
|---|---|
| 1. 界面耦合、区域振子与截断 | [01-interface-interaction](archive/2026-09-23/01-interface-interaction/INDEX.md) |
| 2. 边界历史与响应 | [02-boundary-history-response](archive/2026-09-23/02-boundary-history-response/INDEX.md) |
| 3. 几何切口与规范资料 | [03-geometric-cuts-and-gauge-data](archive/2026-09-23/03-geometric-cuts-and-gauge-data/INDEX.md) |
| 4. 区域可观测代数 | [04-observable-algebra](archive/2026-09-23/04-observable-algebra/INDEX.md) |
| 5. 完整场、共同 source 与 reopening | [05-full-fields-and-reopening](archive/2026-09-23/05-full-fields-and-reopening/INDEX.md) |
| 6. BV–BFV、corners 与 source release | [06-bv-bfv](archive/2026-09-23/06-bv-bfv/INDEX.md) |
| 7. 退役与项目状态记录 | [07-retirement-and-project-records](archive/2026-09-23/07-retirement-and-project-records/INDEX.md) |
| 跨阶段检查 | [verification](archive/2026-09-23/verification/INDEX.md) |

第 5 阶段只记录此前已删除研究包的历史位置；不恢复缺失文件。原模型／验证项目和旧文章保持完整，跨阶段共用的 numerics 单独保存。旧 archived／deprecated 的出处可由迁移清单追溯。

旧正文中的 “active”“current”“next actions” 和未勾选任务均属于归档前语境。旧 `claims.json`、`completion.json` 保持原样，不能将归档理解成把 partial/open 改成 complete。目录规则仍在 [AGENTS.md](AGENTS.md)。
