# 真实 wall/caps：执行证据与证明边界

2026-09-19。[WH1–WH4](../physical_wall_and_caps.md) 从原 disk/open-chord action 推导 physical boundary history phase、cap Ward identity、normalized source/quartet release 和 coherent cap operator。以下计算分别核对符号、有限代数见证与一个变分残差；不将它们合计成完整 quantum BV–BFV 定理。

| 工具 | 最终结果 | 核对范围 |
|---|---:|---|
| Mathematica MCP | **28/28 passed** | seam/cap/endpoint 分部积分、finite cut transformation、source probes、Fourier/Darboux normalization、coherent cap variation与Gaussian composition、sharp arc/time-window tails |
| Sage MCP | **14/14 passed** | Grassmann Ward operator、实际 source Gram matrices、Gaussian/Wick products、stress vacuum norms、proper-cut quartet |
| xAct MCP + xTras | **1/1 zero** | physical chiral wall Euler–Lagrange equation；full normalization pipeline |

共 **43项有标签检查通过**。Starter 的55项、CD/O的61项、FC/NR的56项、ND/QD的37项和QB的35项仍各自保存执行历史，不修改或合并其原始计数。

## 输入、结果与诊断

- [Mathematica 输入](physical_wall_caps_mathematica.wl) 与 [原始结果](physical_wall_caps_mathematica_result.json)：保存结果同时包含执行源码和最终28个标签。
- [Sage 请求](physical_wall_caps_sage_request.json) 与 [structured result](physical_wall_caps_sage_result.json)：SageMath 10.9；全部返回精确 Python bool，无 setup error、warnings、stderr 或 truncation。
- [xAct 请求](physical_wall_caps_xact_request.json) 与 [structured result](physical_wall_caps_xact_result.json)：profile 为 core，另载入 xTras；pipeline 为 `ToCanonical → ContractMetric → ToCanonical → FullSimplification[]`。Load/setup/check messages、unknown heads 和 truncation 均为空或 false，最终 residual 为0。
- [初次试跑及修正诊断](physical_wall_caps_diagnostics.json)：保留失败输入与定位依据，不将初次试跑描述为全部通过。

第一次 Mathematica 试跑有四个 false。三个 Fourier checks 在最终简化时未携带正整数 mode assumption；补齐假设后原 residual 为0。另一个 helper 的 delayed global expression 没有代入 cap 时间，导致两个端点被算成同一表达式；修复为积分后显式代入。最终 cap witness 选时间不变的 response mismatch，action shift 为 −κ/12。全部原标签保留，并补入 normalized source Fourier integral 和 reference-phase support 两项。

## 非退化的检查与解析论证

Mathematica 直接检验任意 component functions 的 seam 分部积分，包括 temporal cap 和 spatial endpoint 两类项；endpoint pairing 在 release 前确实非零。Coherent boundary variation 同时核对两端的指定 polarization，不额外固定共轭变量。Bargmann composition 是实际收敛 Gaussian integral；省略 Gaussian weight 的反例在零外部标签上已经发散。

Sage 的 cut 模型实际积分两个 history 变量和一个 source 的 polynomial action，使用三个独立 odd generators，在27个混合输入上检查 Q 与 cap-corrected Ward operator 的平方。删除 cap correction 后 residual 非零，cap ghosts 没有设零。Endpoint-zero source Gram matrix 的 determinant 为1/720；错误的 mean-zero probe matrix 漏掉 constant response。

Gaussian insertion checks 使用两个不同 covariance 的 current modes，并包含非零 double contraction。Stress-vacuum checks 在未加 occupation cutoff 的精确 creation monomials 上计算 m=2,…,17；sharp arc 与 sharp time-window 系数另验 R=1,…,6。Proper quartet 另外检查 gauge-fixing term 的 Q-exactness、Q-closure 和非零 normalized Berezin integral。

xAct 使用二维辅助 metric、parallel time/space vectors 和 scalar field，由 `VarD` 形成 wall action 的 Euler–Lagrange expression。Canonical residual 是 scalar second derivatives 的交换子，full pipeline 得到0。此项仅核对 bulk wall equation；实际 cap/endpoint variation 的证据是前述 component calculation。

有限检查不承担下列连续结论：全部 smooth endpoint-zero probes 检测 response 的论证来自 distribution duality；continuum cap operator 来自 ℓ² 上的 unitary group 与其 second quantization；P_Q 的乘积和共同域延拓使用 QD 的双向 weighted estimates。Sharp arc 的 quadratic divergence 和 sharp time window 的 logarithmic divergence来自正文的一般系数与正交求和，有限数值范围仅用于回测。

## 三轮回攻与修订

1. 丢弃 cap phase 会破坏 unreleased history 的 Ward identity；endpoint-zero source variation 又不能替换成 mean-zero probes。保留完整 cap potential、共同 source 与其实际 joint domain。
2. Classical action 不独自决定 cap measure 和 vacuum scalar。保持 QD 已声明的 positive-frequency、normal-ordering 和 identity normalization，实际执行 coherent pairing。
3. Sharp regional energy 在同一 exterior vacuum 上没有所要求的 vacuum vector，普通 sharp 时间积分也未必修复。区域量子输入保留 history/response/cap pairing，不能以该孤立 Fock generator 作为普遍前提。

## 来源与未完成工作

[Cattaneo–Mnev–Wernli Appendix A](https://arxiv.org/html/2012.13983v3) 提供 polarized cylinder、Segal–Bargmann transform 和 composition measure 的结构对照。本轮读取为 HTML；没有新增 PDF render evidence。WH 的 physical wall normalization、cap term 和反例在正文独立推导。

**Verified:** 上述43项检查与各自范围内的解析构造。文档结构检查另存 [报告](physical_wall_caps_document_validation.json)，不充当数学证明。

**Assumptions:** source-free trivial-bundle Abelian disk、原 smooth joint history/corner 域、κ,v>0；physical-sector source/quartet integration 采用 normalized cylindrical pairs；continuum cap operator 使用声明的 QD Fock prescription。

**Not verified:** 独立区域完整 quantum BV cochain states、bulk/ghost/corner determinant transport、distributional pairing domain、含全部 local BV insertions 的 mQME/pushforward 与 renormalization。一般 topology/reopening、non-Abelian quantum 和传播模型仍由 G1–G6 验收。
