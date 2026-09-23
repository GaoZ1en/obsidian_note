# 有限切口与非阿贝尔递归：2026-09-19 验证

本轮新增 [FC1–FC2](../finite_cut_coherence.md) 与 [NR1–NR4](../nonabelian_relative_descent.md)。范围是明确 cut geometry 和 true-exterior realization 上的 classical/formal 比较；完整目标仍 active。

## 最终执行记录

Sage MCP **32 项 labelled checks 全部通过**，无 setup error、warning、stderr 或 truncation。保存完整 [request](nonlinear_recursion_sage_request.json) 与 [result](nonlinear_recursion_sage_result.json)。

- 21 维 genuine DGLA 来自 Ω(ℚ[x]/x⁴)⊗𝔰𝔲(2)。逐 arity 实现 path section 的 S₂、S₃；441 个 pairs 与 9261 个 triples 的 identities 全通过。另检验二、三阶 defects/corrections 确实非零及 endpoint conditions。这里的维数/枚举数量不是额外的 labelled check 数量。
- 独立矩阵模型取 pi≠1，检验两侧 linear homotopies、H_Pi=iH_G、相对 boundary、mapping-fiber contraction 与 kDk normalization。
- Polynomial auxiliary-interval kernel model 检验 Whitney maps、chain identities、homotopy 与 normalized h_K。
- 用不交换的 smoothers 检验有限合成 telescoping 与 choice homotopy。没有用相同输出的模型替代顺序问题。

Mathematica MCP **24 项 labelled checks 全部通过**，最终输出没有 warning。保存 [源码](nonlinear_corner_mathematica.wl) 与 [原始输出](nonlinear_corner_mathematica_result.json)。内容是三线 joint-extension 反例及 Taylor integral repair、corner smoothing 的 component homotopies、非零 Lie-bracket defect 与相对 primitive、非阿贝尔 chiral wall 的 bracket/curvature 条件、physical cubic normalization，以及 formal factorial series 的零收敛半径见证，以及真正满足 physical wall 域的 Lie-defect witness。

最终本轮合计 56 项 labelled checks；不重复累计尝试中的较小模型或前几轮结果。以上有限计算不是全 Fréchet、全 arity 或全 gauge theory 的证明。

## 实际失败及修复

[诊断记录](nonlinear_diagnostics.json) 保存初始请求、输出及修复说明。

1. 最初的 x³=0 DGA 通过 morphism identities，但专门的 non-vacuity check 发现三阶 residual 和 correction 都恒为零。因此它不足以检验非平凡三阶。最终改用 x⁴=0，并要求三阶 residual/correction 非零后才接受其 identity check。
2. 初次 Mathematica 使用 delayed definition 计算 r(t)/t²，在 t=0 先出现 0/0，令 y-axis extension 检查失败。修复为先求得 regular polynomial 再代入；正文进一步使用 Taylor integral remainder 定义任意 C∞ r 的 extension。未把奇点 warning 忽略成通过。
3. 某次工具 orchestration 的字符串包含未转义 context backtick，JavaScript 在调用计算工具前报 syntax error。修复字符串构造后才实际执行；该次不构成数学测试或失败证据。
4. 更早中断前的临时 Sage 结果没有写入文件，本轮没有从不可恢复的临时状态声称通过，而是重新形成并执行上述可复现请求。

## 解析证明与有限检查的分工

FC1 的连续性和 smoothness 来自实际 common radial vertex homotopy、normal edge homotopy、true-exterior extension 及有限合成。三线反例证明为何内部值匹配不等于 prescribed smooth extension。Sage 矩阵不能证明这些几何事实。

NR1 的 endpoint kernel contraction 逐式使用 two-sided homotopies 和 H_Pi=iH_G，未假设 pi=1。NR2 用 Q²=0 证明每一阶 residual closed，再由 actual contraction 消除。NR3 在 parameter simplex faces 上延拓并修正，保持 exterior 和既定 faces；FC2 具体将 refinement comparisons 放入同一个 endpoint problem。

NR4 的 pairing/action correction 来自构造出的 Q-homotopy 和相对 graded Cartan identity，采用原 B02 整套运输后的 convention。没有声称 56 项有限检查构成完整 graded AKSZ variational machine proof。Continuous polynomial comparison 使用实际 function homotopy，不扩大到所有 Hamiltonian、microcausal 或量子 products。

## 第十至十二轮攻击

第十轮攻击 finite junction geometry：三线导数反例成立；修正 prescribed trace 域，并区分 released internal histories 与 fixed true exterior。先 smoothing vertex、再处理彼此分离的 edge 部分，避免独立 collars 在交点处互相破坏。

第十一轮攻击 nonlinear transfer：linear p 的 Lie defect 非零；pi=1 也不是已有算子的性质。Path section、mapping-fiber/Whitney contraction 和全 arity 递归实际修复这两点。

第十二轮攻击修复本身：最小测试模型在三阶退化，已扩大；higher coherence 必须构造 parameter fillers；formal λ series 不自动收敛；compact gauge components 不由 ghosts 恢复。前两项已有本文范围内的构造，后两项继续是总目标的真实待办，不能因本轮成功而删除。

在 FC/NR 的全部已声明条件下，本轮攻击未产生新的反例；这是本轮审查结果，不是“找到所有可能反例”的穷尽声明。各总目标的范围匹配状态见 [completion](../completion.json)。

最后又核对了反例本身的域：unrestricted scalar witness 不能冒充 proper ghost。新增 physical one-form witness 满足 wall condition 与 closedness，其 Lie defect 和 relative primitive 也通过检查；见 A35。正文保留两类例子的区别。

文档结构、链接、JSON 与已保存执行证据的一致性检查通过；见 [document validation](nonlinear_document_validation.json)。它检查文件和证据是否对应，不证明数学定理。
