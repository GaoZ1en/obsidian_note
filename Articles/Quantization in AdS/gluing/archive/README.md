# 归档说明与核对

2026-09-23：先将当时现存 gluing 材料归档，再按用户要求将归档内部实际改排为 [HISTORY](../HISTORY.md) 的七个阶段。当前入口是 [2026-09-23/README.md](2026-09-23/README.md)，横向主题检索见 [TOPICS](../TOPICS.md)。未提交 Git。

## 当前布局

1. `01-interface-interaction/`：界面耦合、区域振子、格点／截断、旧文章。
2. `02-boundary-history-response/`：边界历史、响应、lifting／port、Fock／regulator 支线。
3. `03-geometric-cuts-and-gauge-data/`：spacelike／null、Rindler、早期规范装配与 gravity 模型。
4. `04-observable-algebra/`：observable families、scalar／gauge 模型、局域代数、拓扑与下游态。
5. `05-full-fields-and-reopening/`：此前已删除研究包的历史定位；没有恢复缺失材料。
6. `06-bv-bfv/`：原 BV–BFV 包与 checks、claims、completion 完整保留。
7. `07-retirement-and-project-records/`：旧 README／TODO、以前的归档入口与原系统元数据。

`verification/numerics/` 保存跨阶段共用检查库。独立验证项目、BV–BFV checks、旧文章和早期 numerics 保持内部结构。阶段分类按主要研究问题，不以最后修改日期为唯一依据。

## 两轮迁移记录

第一轮保存了 345 个原文件，其中 157 份 Markdown。50 份 Markdown 改了 211 处链接目标，295 个文件逐字节不变；当时核对了 557 个可解析链接目标。原来的 archived／deprecated 身份可通过原路径追溯。

第二轮以上一轮归档的实际工作树为输入，完整保存其间已有修改：

- 345 个原文件全部在当前阶段目录中找到，无覆盖、无合并、无丢失。
- 284 个文件逐字节不变；61 份原 Markdown 只调整链接目标，正文、公式、文件名和历史 claim 状态不变。
- 另外更新总导航、HISTORY 和 TOPICS；新建七个阶段 INDEX、共用验证 INDEX 和归档总 README。
- 783 个迁移前可解析链接目标在新位置仍存在；453 个当前导航文件链接检查通过。全部 157 份原 Markdown 同时被主题索引和所属阶段 INDEX 覆盖。
- 目录政策检查与 `git diff --check` 通过。扫描普通 vault Markdown 后，无须改动 gluing 目录之外的文件。

链接检查覆盖 inline Markdown 和显式路径 wiki-links，不声称验证所有标题锚点、basename 搜索、插件语法或代码中的历史路径。没有重新运行数学计算或构建文章；旧脚本内的绝对路径、固定工作目录和旧 Makefile 仍是历史原件，复算前须按清单检查输入／输出位置。

## 迁移清单怎么读

[manifest.json](manifest.json)的每个原文件条目保留：

- `old`、`sha256`：第一次归档之前的路径和内容校验值。
- `initial_archive_path`、`initial_archive_sha256`：第一次归档的路径与当时校验值。
- `before_stage_reorganization_sha256`：本次按阶段整理前实际读到的内容校验值。
- `new`、`archived_sha256`、`stage`：当前路径、内容校验值和所属阶段。

所有路径均以各字段说明为准：old 相对最初 gluing 根目录，initial_archive_path／new 相对当前 gluing 根目录。`stage_reorganization.path_map` 的两侧相对日期归档目录。两轮链接修改分别记录；历史日志中的旧路径不跟着改写。

## 历史状态与已有缺失

旧 README／TODO、programme、claims 和 completion 是当时记录。其中 active／current／next actions 不继续驱动研究，也没有改成 complete。特别是 BV–BFV G1–G5 为 partial、G6 为 open。

首次归档前，`finite_cut_sewing/`、`principal_bundle_sewing_v2/`、`audit_repair_2026-09-18/` 已从工作树删除。本次仍未从 Git 或桌面 bundle 恢复，具体定位见[第 5 阶段](2026-09-23/05-full-fields-and-reopening/INDEX.md)。

首次扫描的 191 条未解析引用以及本次整理前的未解析记录保留在 manifest 中；它们包括缺失文件和简写，并非本次新产生的断链。常见来源是旧 formalism／roadmap、上述三个包以及旧 audit。没有凭标题把它们替换成另一份数学对象不同的稿件。

本次核验的是文件保存、链接迁移和分类覆盖；没有重新认证旧笔记的数学结论。
