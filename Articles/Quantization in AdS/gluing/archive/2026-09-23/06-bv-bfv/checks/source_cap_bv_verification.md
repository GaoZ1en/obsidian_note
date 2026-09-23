# Source/cap BV 分解：检查和三轮回攻

2026-09-21。对应 [SC1–SC3](../source_cap_bv_decomposition.md)。
本轮从 WH 的 proper source-history action 定义 minimal BV source model，解决其相对 cap splitting；仍未识别原 full regional BV pushforward。

| 工具 | 最终结果 | 实际检查 |
|---|---:|---|
| Mathematica MCP | 17/17 passed | relative/absolute primitives、双端点与 mean、antifield inverse、vertical 与 horizontal cotangent 项、physical action、Legendre dual/kinetic pairing、translation 和受约束 Fourier 反例 |
| Sage MCP | 19/19 passed | source BV jets/Q²/边界项、cap BFV 及 ghost compensation、相对 doublet、base differential、kernel mQME、middle ghost 与 residual pushforward |
| xAct MCP + xTras | 4/4 zero | action 对 x,p,u 的独立变分与 off-shell Noether identity；full normalization pipeline |

共40项有标签检查，和此前 QT 的49项分开保存。

## 原始执行资料

- [Mathematica 输入](source_cap_bv_math.wl) 与 [输出](source_cap_bv_math_result.json)。
- [Sage 请求](source_cap_bv_sage_request.json) 与 [原始 structured 输出](source_cap_bv_sage_result.json)。
- [xAct 请求](source_cap_bv_xact_request.json) 与 [原始 structured 输出](source_cap_bv_xact_result.json)。
- [初次执行与修订记录](source_cap_bv_diagnostics.json)。

Sage 使用 degree≤2 的 source jets、完整 ghost/antifield parity、实际 cap ghosts 和任意形式参数 α=i/ħ。mQME 对 translation tests 的次数0到6检查；直接 Berezin integration 独立产生 d=b₁−b₂，之后 ∂d 才恢复状态。最后显式核对单位的输出为1，避免把零映射误认为合法 Stokes pushforward。最终结果均为 exact Python bool；无 setup error、warnings 或输出截断。

Mathematica 对六次一般 polynomial primitive、四次 antifield、实际非零 cap witness 和4×4双基底/kinetic矩阵作核对。Translation check 修订为实际连续 substitution operators 的两次及三次作用；不用同一展开式的自比较作证据。Fourier 计算保留 ε>0、ħ>0 和实 response 的条件，并在非恒定 test 上检验分布极限。

xAct 首次在 dimension 1 的 setup/check 阶段返回 MakeRule::error，不能计为零残差，也不能据此判定数学恒等式失败。最终改用 dimension 2 的辅助 metric/index bookkeeping 与平行向量 n，直接检查 L=p(n·∇x−u) 的变分；沿 n 的一维源模型是其特例。未假定 transverse dynamics，也未更改原 action。最终 xAct/xTras load、setup 与 check messages 全空，四项经过 ToCanonical、ContractMetric、ToCanonical、FullSimplification[] 后为0。

## 三轮攻击及修订

1. **全 cotangent product。** a=u−dot x 留下 [b δx]；把 cap arguments 外置后仍有 horizontal connection。修补给连续可逆的 relative map，并保留 Q_base，防止误得 Qz=c_lin。
2. **过度收缩 residuals。** source 的时间积分决定 cap translation；ghost momentum 的变分是 −p₀。删 ghost exponential 直接破坏 mQME。修补保留 (σ,b₀)，实际执行 middle-cap 与 residual 两步积分。
3. **返回原模型。** 固定 response 的 source integral 是 δ(a)，不是独立积分后的1；bosonic cap generator 单独也不 Q_cap-closed。修补要求保留 joint constraints，并在源模型中同时运输 ghost cap term。原 full CS 对此源模型的识别仍待完成。

这些见证缩小了原先诱人的无条件命题；没有将“这轮未再找到反例”写成 G1–G6 完成。

## 证据范围

CMR [Appendix C.2](https://arxiv.org/html/1507.01221v2#A3) 以 HTML 核对两端相同 polarization 的 interval residuals 和 propagator Θ(t−τ)−t。本文的 source/cotangent、ghost signs 及 joint-domain 反例独立计算；没有新增 PDF 视觉核对。

SC1 的任意 smooth-field 连续性来自积分、微分、trace/插值和显式逆映射；一般 polynomial contraction 来自 Qh+hQ 的 degree identity。SC2 的 kernel/mQME 由 δ 的 distributional identities 证明，finite tests 不提供无限维平坦 measure。SC3 仅为本源模型的 prequantum frame calculation，不是 full CS polarization theorem。

**Verified:** 上述40项最终执行结果与正文限定范围的构造；保存输出和文档一致性见 [格式检查](source_cap_bv_document_validation.json)。

**Assumptions:** spatial-flat physical source core、任意 polarized cap base、relative smooth fluctuations、明确 Fourier/Berezin normalization 和取向。

**Not verified:** 原独立 regional BV states 到此模型的 bulk/corner pushforward、实际 joint source 因子化、所有 mixed/local quantum insertions、full determinant/anomaly 比较及 G1–G6 的剩余要求。
