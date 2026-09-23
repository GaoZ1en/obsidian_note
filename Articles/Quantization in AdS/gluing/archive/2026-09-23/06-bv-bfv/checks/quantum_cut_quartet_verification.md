# Proper cut quartet：验证与反例记录

2026-09-21。对应 [QT1–QT4](../quantum_cut_quartet.md)。这是 WH2 留下的 proper fiber 的 canonical BV 补全与自由 Gaussian 构造；尚未从原完整 regional BV complex 导出该分解。

| 工具 | 结果 | 范围 |
|---|---:|---|
| Mathematica MCP | **20/20 passed** | integrated Legendre 双基底、实际场/antifield pairing、自由 cap/endpoint jets、finite kernel trace、Fourier moments 与 determinant orientation |
| Sage MCP | **29/29 passed** | 全部八种 quartet coordinates、完整 BV action/QME、quantum contraction、Gaussian/Berezin pushforward、局域正规序、Wick products 和 cutoff composition |

本轮为 **49项有标签检查**。此前 WH 的43项和各阶段执行记录保持独立。

## 复现与输入

- [Mathematica 源码](quantum_cut_quartet_math.wl) 和 [原始输出](quantum_cut_quartet_math_result.json)。保存输出包含执行源码；全部20项最终结果为 true。
- [Sage 请求](quantum_cut_quartet_sage_request.json) 和 [原始 structured result](quantum_cut_quartet_sage_result.json)。使用 SageMath 10.9，全部 checks 返回 exact Python bool；setup error、warnings、stderr 和 truncation 均为空或 false。
- [初次失败与诊断](quantum_cut_quartet_diagnostics.json)。全部标签保留；另加非零 scalar/vacuum anchor 后完整重跑。

Sage 初次试跑有六项失败。原因是 constant-term evaluation 用空 tuple 查询 ExteriorAlgebra 的 basis key；该工具的 scalar key 实际显示为0，错误 helper 连1也返回0。诊断显示 contraction 的失败残差正是被错误删除的 constants。修正为逐项识别空 generator index 后，增加 ε₀(1)=1 和物理 coefficient 不消失的独立检查，重新运行全部29项。不能把第一次“ΠD=0”的成功当作证据，因为当时 Π 被错误实现为零映射。

## 非退化计算

Mathematica 核对 spatial biorthogonality n,m=1,…,6、temporal orthogonality n,m=0,…,5，并对非平凡 polynomial field/antifield 重构及 pairing 作独立积分。一般 C∞ 完备性来自正文的 Legendre generator、反复分部积分和 polynomial derivative bounds，不是这些有限矩阵本身。

Sage 使用两个 quartet modes，共八个 even 和八个 odd coordinates，并保留 formal τ、两个不同 cutoff weights 和非零物理 coefficients。测试包括全部单坐标、mixed antifield monomials、四次插入与完整 action。Q 由 action 的 BV bracket 独立形成并与显式向量场比较；Gaussian conjugation、完整 Stokes 和 cochain contraction 在同一批输入上核对。

Fourier/Berezin integral 另由独立 moment rule 实现，与 exp(τR) 的结果比较；没有手工把积分设成1。纯 bosonic moments 的两个次数各取0,…,4，总次数达到8；ghost moment 和 double-block insertions 均非零。两块积分顺序相反、三份 cutoff 连续运输及包含 ghost 的 Wick associativity 均作检查。

## 三轮回攻

1. **原 source/corner 域。** Ordinary Dirichlet/Neumann heat smoothing 会排除合法的 endpoint/cap jets。Integrated Legendre 双基底保留完整 smooth 域，finite projections 不要求固定 cap 数值。
2. **局域 trace 与乘积。** Mixed trace 仍为 cutoff rank，不能赋零；normal families 的 derivative 带实际 counterterms。Ordinary multiplication 不保持 Gaussian cutoff transport，需要明确区分辅助 Wick product 与用于 BV bracket 的普通乘积。
3. **determinant orientation。** 固定 positive density/Berezin ordering 下 K=−1 留下−1；不同 ghost/boson 维数也不抵消。已声明的 cutoff coherence 不推论任意 gauge-fixing family 或 global determinant line 的独立性。

## 证明与剩余范围

连续 Oaux 的 normal families 有显式 NΛ、T、Π、hΛ；arbitrary polynomial degree 与 finite repeated composition 来自正文有限终止的 operator identities。没有从 finite-dimensional checks 推断未构造的 infinite Berezin measure。

[Gwilliam–Rabinovich–Williams](https://arxiv.org/html/2001.07888v3) 只用于区分 perturbative free boundary observables 与完整 BV–BFV boundary-state 任务；正文独立给出 QT 推导。此次为 HTML 阅读，没有新增 PDF 视觉或 xAct 验证。Quartet action 无 spacetime derivative，其 graded algebra 由 Sage 承担。

**Verified:** 上述49项及正文范围内的连续构造。格式与保存证据一致性另见 [文档检查](quantum_cut_quartet_document_validation.json)。

文档检查解析25份 Markdown、732个 math nodes，并核对48项 claims、54项 audit、24轮记录和完整 G1–G6 状态。两项显式 Obsidian vault-root links 按 vault 根目录正确解析。当前工作树已移除外部 audit_repair_2026-09-18 目录，README 的一项历史修订引用因此失效；报告单独保留此项，没有恢复该目录，也没有声称所有历史来源仍可读取。Vault-policy audit 和 git diff whitespace 检查通过。

**Assumptions:** 实际 endpoint-zero proper domain、canonical free quartet、同步 cutoff 与声明取向；quantum complex 按 formal τ 解读，物理 coefficients 使用 QD 域。

**Not verified:** 原完整 bulk/source/corner BV complex 的分解、full regional state/pushforward、所有 mixed local insertions、非contractible residuals 的 renormalization、global determinant holonomy、一般 topology/reopening 与传播模型。
