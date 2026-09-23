# Corner 与连续 observables：2026-09-19 验证

本轮推进完整目标 G1–G3 的 Abelian 部分，不构成 G1–G6 的完成证明。

## 执行证据

Sage MCP 的 27 项检查通过，无 warning/error/truncation。原始 [request](corner_observable_sage_request.json) 与 [result](corner_observable_sage_result.json) 保存 setup、精确 Boolean 条件和工具版本。

- 12 项检查：corner incidence、遗漏 C 的虚假 H¹、真正不与内部 d 交换的 splitting、有限 perturbation correction、chain maps、retraction 和 side conditions。
- 15 项检查：一、二、三次 tensor homotopy、Koszul symmetrization、d 的 equivariance 与相应 cohomology 的有限模型。

Mathematica MCP 的 **34 项检查通过**。实际 [源码](corner_observable_mathematica.wl) 与 [原始输出](corner_observable_mathematica_result.json) 检查 transport、wall extension、de Rham complex、physical contraction、point/energy Fourier witnesses、Hamiltonian gradient/Jacobi/product identities 和 dual grading signs。连同 Sage，本轮共 61 项；最终数目由原始结果核对。

显式三维分量检查使用复化坐标 z=x+iy、w=x-iy，wall 为 zw=1，边界参数 u=e^{is}≠0，测试 v=1。复化仅便于 Fourier extension，正文对实场与任意固定 v>0 的证明来自 characteristic integral 与 real smooth operators。有限低次输入不证明所有 C∞ fields；正文逐步构造与恒等式承担该部分。

首次 Mathematica 执行曾出现 ClearAll 字符串未求值的 warning；已修正为字面 context pattern 并重新完整执行。此 warning 没有改变公式，不计为通过的最终执行。保存的是无该 warning 的最终请求/结果。

## 解析证明承担的部分

- Fréchet continuity：实际 finite collars、trace extensions、finite-time integration、finite completed tensor products；不是由矩阵 rank 外推。
- Full corner diagram：mapping-cone 的 test-complex mapping property，以及 split matching resolution 的有限修正。
- Disk cohomology：physical h₁、h₂、h₃ 的全部 identities；不固定 temporal caps，且不把 contraction 当成 field-space quotient。
- Observable counterexamples：distribution 与 smooth density 的不相等、有限 smearing kernel 中正能量的非零向量；Fourier checks 只是可复现见证。
- Poisson reconstruction：源侧从 action 的 Ω_C 定义 Hamiltonian classes，证明其与独立目标的条件相同，保留完整 proper directions。

## 第七至第九轮攻击

**第七轮：corner 与 continuous splitting。** 只用两个体复形的 seam cone 会漏掉 exterior compatibility；把三条匹配关系全部写出又会出现一个重复关系。C 项精确消除此 ghost class。Naive degreewise section 不与 d 交换；有限 correction (4.1) 修复它。

**第八轮：observable 过强等价。** 点值是非零 continuous BV cohomology class，却不属于 finite smooth-current core；进一步删去非 Hamiltonian observables 仍无法修复，因为 H_v 是合法 Hamiltonian continuous polynomial，也不在该 core。保留原 C2 的正确域，并另建 P_H 与 O3，不把旧结论扩大。

**第九轮：反攻修补。** Cohomology contraction 到 J 会改变 caps；因此不用于固定 caps 的 relative comparison。Corner strictification 则因 b 的 L 分量为零而真正 over-L。把 pairing 沿 total projection 拉回会在新增方向退化；实际修复是在原 strict field model P_L 上相加区域 action/pairing，CD2 给其相对 BV–BFV identity，而不是把辅助 resolution 强行当作新物理场。O1 只给 commutative dg algebra；O3 的 Poisson 结构来自单独的 CPS 证明。量子 contact products 仍未构造。

本轮保留的 CD1/O1/O2/O3 范围内暂未发现新的反例；这不是穷尽所有反例的声明，完整目标继续开放。

文档检查读取全部 13 篇 Markdown、22 个 claims 和 28 个 audit cases。Pandoc 解析、公式括号/环境、全部 local links、JSON 和 working-tree whitespace 均通过；仓库 policy audit 通过。结果在 [programme document validation](programme_document_validation.json)。这些检查不证明数学命题。
