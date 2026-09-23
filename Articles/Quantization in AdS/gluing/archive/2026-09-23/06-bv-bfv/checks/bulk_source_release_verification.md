# Bulk/source release：执行检查与比较类型修订

2026-09-21。对应 [BS1–BS3](../bulk_boundary_source_release.md)。

| 工具 | 最终结果 | 范围 |
|---|---:|---|
| Mathematica MCP | 13/13 passed | actual half-disk flat solutions、real-wall condition、nonzero response、weighted Stokes cancellation、central cocycles、relative trace primitive、projected antifield 的完整 divergence 与 physical canonical covector normalization |
| Sage MCP | 17/17 passed | release 前后的有限复形、Noether extension 的 Q²、三个 projected antifields、必要的 N term、完整 ghost boundary/cap identity、left odd variational derivatives 和非零 cap witness |
| xAct MCP + xTras | 3/3 zero | weighted curvature identity、torsion-free scalar commutator、antisymmetric/symmetric Hessian contraction；full normalization pipeline |

共33项有标签最终检查。此前 SC 的40项保留为独立历史，不累加成一般定理。

## 复现

- [Mathematica 输入](bulk_source_release_math.wl)、[原始输出](bulk_source_release_math_result.json)。
- [Sage 请求](bulk_source_release_sage_request.json)、[原始 structured 输出](bulk_source_release_sage_result.json)。
- [xAct 请求](bulk_source_release_xact_request.json)、[原始 structured 输出](bulk_source_release_xact_result.json)。
- [xAct 初次未归零结果与诊断](bulk_source_release_diagnostics.json)。

Sage uses exact Grassmann coefficients and left odd derivatives. The finite Koszul diagnostic tests polynomial powers of x,p from0 through3 and every exterior monomial in c,b. It does not infer an infinite-dimensional quasi-isomorphism. Projected Q identities retain independent curvature F, mismatch p, mismatch antifield N and their time derivatives; neither F=0 nor dot p=0 is substituted to force a passing result. The full ghost transgression identity uses independently generated odd component values and first derivatives.

xAct 原始 ε^{ab}∇a∇bφ 在默认 full pipeline 下留下 nonzero_normal_form；尝试 SymmetrizeCovDs 也未直接归零。诊断表明工具可生成交换次序后的等价表达式，但单次 canonical normalization 没有同时用其对称性。最终把证明分成两个独立残差：SortCovDs 核对 scalar commutator 为零；ε 与显式 symmetrized Hessian 的 contraction 为零。它们共同推出 d²φ=0，没有将初始未归零结果改报为零。最终所有 load/setup/check messages 均为空，三项最终 residuals 为0。

## 三轮回攻

1. **Unreleased → source model 的类型。** 区域 EOM 和共同 q 不强制 p=0。Actual half-disk witness 在 Q_pre=0 时有 p≠0，反驳保持 response 的直接 Q-map。Weighted bulk antifield 的 Q 还含一个不能删除的 interior term。
2. **Release resolution 的闭合。** 加 Qβ=−p 后，必须取 Qζ=dot β+N；少 N 时 Q²ζ=−dot p。实际原 boundary restriction 正好给 QN=dot p。
3. **Cochain map 与 BV integral。** 新 Φ 逐项保持 Q，但 canonical source momentum 是 β+𝓑，且 ghost action 带 [𝓑χ]cap。它们阻止把 cochain 成功直接写成 full symplectic/Gaussian factorization。

## 连续证明和未完范围

所有 spatial extensions 用 neat collars 的 ρ(n)h(s) 构造，积分 adjoints 与 trace primitives 在指定 C∞ spaces 连续。正文的 all-fields Q-map 使用 actual d、trace、Stokes 和 endpoint interpolation identities；数值数量不替代该证明。初始 actual counterexample也没有使用模式截止。

CMR [quantum BV–BFV structure and gluing](https://arxiv.org/html/1507.01221v2) 以 HTML 核对 boundary-operator/state/pushforward 的类型。这里不声称其一般框架已证明本模型的 full quantum bridge。

**Verified:** 33项最终检查、actual counterexample 和连续 Q-map。文档及保存证据一致性见 [格式检查](bulk_source_release_document_validation.json)。

**Assumptions:** 原 U(1) disk/chord 的 smooth joint source domain；共同 q/ghost；明确 source-release extension 和 canonical ghost frame 的全部 boundary corrections。

**Not verified:** Φ 的 BV fiber/pairing 与 quantum pushforward、一般 joint-domain equivalence、local mixed insertions、determinants/anomaly、G1–G6 的剩余要求。
