# 验证、来源与复现

日期：2026-09-19。这里区分解析证明、source核对、符号残差与有限反例检查。Claim分级见 [claims.json](claims.json)。

## Starter 实际执行

| 工具 | 最终结果 | 检查范围 |
|---|---:|---|
| Mathematica MCP | **41/41 passed** | 任意component functions的CS/YM变分、seam/wall signs、corner/charge/winding见证、YM canonical矩阵、relative collar例子与pairing tensor sign |
| Sage MCP | **13/13 passed** | interval strict/cone模型、circle Čech遗漏、三片tree/cycle ranks、clean非横截Koszul反例 |
| xAct MCP + xTras | **1/1 zero** | 任意one-form的CS first variation及完整divergence项；full normalization pipeline |

共 **55项有标签检查通过**。不是55个独立的一般性定理；rank、特定polynomial和具体cocycle积分只验证其声明的有限见证。

### 文件与复现

- [Mathematica脚本](checks/component_checks.wl) 与 [41项输出](checks/mathematica_result.json)。执行环境使用Mathematica MCP `Get`读取此脚本；也可在本机运行 `rtk proxy wolframscript -file 'Articles/Quantization in AdS/gluing/bv_bfv/checks/component_checks.wl'`。
- [Sage请求](checks/sage_request.json) 与 [原始structured结果](checks/sage_result.json)。将请求作为 `sage_verify_checks` 参数执行；本次Sage版本为10.9，checks均返回精确Python bool，非coercion结果。
- [xAct请求](checks/xact_request.json) 与 [原始structured结果](checks/xact_result.json)。使用 `xact_verify_residuals`，profile为core，另载入xTras；pipeline是 `ToCanonical → ContractMetric → ToCanonical → FullSimplification[]`。Load/setup/check messages为空，残差为0。

xAct的辅助三维metric用于covariantly constant epsilon及index bookkeeping。它不是给物理CS更换signature；被检查的identity是metric-independent differential-form变分的分量表示。

第一次临时Mathematica试跑有两项失败：一项检查语句的运算优先级错误，一项把开face积分分部的wedge负号写成普通正号。修正检查输入并核对相应分部积分后，31项通过；补入独立YM变分后为32项；新增relative homotopy的9项检查后为41项。最终文件和保存输出来自最后版本，不将第一次试跑描述为通过。

## 证明与计算的边界

- C1的raw smooth assembly和gauge-arrow descent来自同一collar atlas的局部拼合及action分区；机器残差核对variation/sign，不替代smoothness证明。
- C2的无限维label exact sequence有任意smooth label的interpolation/extension构造；algebra结论限定有限polynomials。没有用几个Fourier modes代替onto证明。
- L1的cone quotient有显式contracting homotopy。Sage只作有限cochain模型回测。
- H1/H2在 [relative homotopy](relative_homotopy.md) 给出了实际 $E,K,H,p$、连续性理由和pairing correction。9项新增检查仅核对二维product-corner原型和一个graded tensor例子；一般结论依赖正文的恒等式与Stokes证明。
- Ghost/antifield typing和compact graded transgression公式使用明确的原文convention，并经component展开与source核对。**没有执行完整graded-superfield Cartan calculus的自动验证。**
- Compact winding、不能有global logarithm、coarse orbit与stabilizer的区别，各有正文的拓扑/结构论证。有限matrix检查不证明这些全局结论。

## Primary sources：读取范围与用途

1. Cattaneo–Mnev, [A note on gluing via fiber products in the (classical) BV-BFV formalism](https://arxiv.org/pdf/2208.11211), arXiv:2208.11211v1。使用§2.1、footnote 8、Conjecture 2.2、Theorem 2.4、§3–4定位定义、严格dg模型与free-theory smoothing范围。PDF pp.8–11、15的公式与声明已render后视觉核对。外boundary与cut不交的限制在p.11；它不是本目录physical corner construction的现成定理。
2. Cattaneo–Mnev–Reshetikhin, [Classical BV theories on manifolds with boundary](https://arxiv.org/pdf/1201.0290), arXiv:1201.0290v3。使用§3.5–3.8定位classical/reduced/extended层次，§7.1核对Abelian CS fields与boundary资料。PDF pp.45–46已render后视觉核对。该版本§7.1.2的compact charge公式印有把 $d\mathbb a$ 写成 $\delta\mathbb a$ 的明显degree/type不符；本目录用CM §4与charge的component degree核对，未照抄该字形。各版BV pairing与structure-relation的符号也不同，故采用formalism §2的完整convention转换。

PDF text extraction用于导航；rendered pages用于公式/符号证据；两者均不等于机器数学证明。临时PDF与页面图位于 `/tmp/bvbfv-20260919/`，不作为需要提交的项目输出，也不要求读者依赖该临时路径；上述primary links及版本/页码足以重新获取来源。

来源没有被用于替代本目录的C1/C2/H1/H2证明。新的relative construction、CS physical realization比较与具体失败见证在各自正文完整写出。

## 文档与工作树检查

最终检查全部通过：8份Markdown的Pandoc解析、518个math nodes的括号/environment检查、38个链接、JSON与17项claim/22项audit数量核对、`git diff --check` 和 vault-policy audit。它们验证文件结构与格式，不验证上述数学。

本次不提交或推送；原有ads4 gravity、EGA与其他Drafts的工作树改动保留。新增目录之外只为gluing README/TODO增加入口和状态。

**Verified:** 上表55项最终结果、各正文的局部解析证明、指定source页核对。

**Assumptions:** 见各claim/domain；新H1/H2特别要求neat product collars与actual smooth exterior joint traces。

**Starter 的后续更新：** 指定的 corner diagram 和 continuous polynomial cohomology 已在 CD1/O1–O3 中构造；旧 finite-current core 与完整 continuous polynomial H⁰ 的等同被反驳。新的 [61 项检查与解析证明边界](checks/corner_observable_verification.md) 单独保存，不改写上面 55 项的执行历史。

**进一步更新：** CD2 已在实际 strict field model 上实现 action/pairing；无需把所有 auxiliary resolution 坐标赋予非退化 form。FC/NR 的 [56 项检查](checks/nonlinear_finite_cut_verification.md) 与解析证明分别支持有限 conical refinement coherence、formal non-Abelian relative comparison，单独保存执行历史。

**最新更新：** ND 的 finite SU(2) classical comparison 与 QD 的 continuum quantum observable domain/product/sewing 有 [37 项新检查及解析证明](checks/global_quantum_verification.md)。ND 保留 full fields/arrows，QD 保留与 quantum BV pushforward 的未证箭头。

**Not verified:** 一般 bundle/self-sewing/source 域、nonformal off-shell BV、任意 intermediate reopening、quantum BV integration/mQME/artificial corners、non-Abelian quantum 及传播模型验收。当前总目标见 programme.md。


**Quantum collar 后续：** [35 项新检查](checks/quantum_collar_verification.md)支持声明的polarized action、closed product-collar state/mQME、实际interface/residual pushforward和open-face corner缺陷。Normalized cylindrical/formal规则不提供全部local quantum BV函数域；完整disk/chord corner state、QD bridge、一般拓扑与传播模型继续未完成。

**真实 wall/caps 后续：** [43项新检查](checks/physical_wall_caps_verification.md)分别核对原 regional action 的 physical history/cap terms、共同 cut Ward identity、normalized source/quartet release、coherent cap operator 与 sharp arc/time-window 反例。WH 已给 physical-sector 的 QD product/energy 比较；完整 regional quantum BV states、determinant/pairing domain、local BV renormalization 与 full mQME pushforward 仍未完成。

**2026-09-21 proper quartet 后续：** [49项新检查](checks/quantum_cut_quartet_verification.md)核对实际端点域的双基底、完整 canonical BV quartet、量子 Gaussian contraction、normal-family 局域插入、cutoff/Wick composition 与 determinant orientation。QT 只完成这个独立辅助块；原 bulk/source/corner action 的实际分解及全部 residual/mixed insertion 量子构造仍待完成。

**Source/cap 相对分解后续：** [40项新检查](checks/source_cap_bv_verification.md) 核对 WH 最小源模型中的相对 cotangent inverse、实际 doublet、任意 polarized cap arguments、source/ghost residual kernel 与 mQME，以及 middle-cap 加 residual 两步积分。全 cotangent product、删除 residual、忽略联合源约束和只运输 bosonic cap frame 的版本均有具体反例。原 full regional BV 到此模型的识别仍待完成；本批17项 Mathematica、19项 Sage、4项 xAct 最终结果独立保存。

**Bulk/source release 后续：** [33项新检查](checks/bulk_source_release_verification.md) 验收 actual regional solution counterexample、weighted Stokes、release/antifield-mismatch resolution、SC 全部 coordinates 的 projected Q identities、canonical component variational normalization 和完整 ghost cap/side corrections。13项 Mathematica、17项 Sage、3项 xAct 最终结果通过；原始 xAct nonzero normal form 与后续分步残差都保存。BS 已推进实际 cochain 来源，未证明完整 BV fiber/pairing 或 quantum pushforward。
