# Finite SU(2) 与 continuum quantum domain：2026-09-19 检查

本轮形成 [ND1–ND3](../nonabelian_disk_observables.md) 与 [QD1–QD3](../quantum_observable_domain.md)，继续推进完整目标。Quantum stress central term 在 QD §5 另有实际推导；它不是 bulk mQME 的验收。

## 实际执行

Mathematica MCP **24 项 labelled checks 全通过**；最终输出没有 warning。保存完整 [源码](global_quantum_mathematica.wl) 与 [结果](global_quantum_mathematica_result.json)。

- SU(2) structure constants、零平均 rotating current 的 exact transporter、a=√3 时 −1 holonomy、二阶 holonomy defect。
- Covariant primitive、trivial-holonomy tangent condition、parallel kernel、current Lie sign 与 energy bracket。
- Unit-quaternion projection 的 unitarity/determinant。
- Reflection quadratic vacuum norm、具有完整 classical flow 的均匀 squeeze 及其 vacuum divergence。
- Stress cocycle 的有限求和、energy normalization 和最低 vacuum mode。

Sage MCP **13 项 labelled checks 全通过**，无 setup error、warning、stderr 或 truncation。保存 [request](global_quantum_sage_request.json) 与 [result](global_quantum_sage_result.json)。

- 两个模式的非平凡 Wick product、associativity、* 与非零 double contraction。
- 所有总 energy≤6 的 partition-basis vectors 上，m,n∈[−4,4] 的 Virasoro relations 和 stress/current action；另检验 L₀ 与 m=2,…,14 的 vacuum cocycle norm。
- 实际 smoothing-arrow formula 的 composition、naturality、identity，在 free group 中核对。

Sage 的 Fock representation 使用未归一化 oscillator monomials，α_n 的 annihilation coefficient 为 n times occupation。Occupation numbers 没有截断；每个 stress operator 的 mode sum 按该 input 的 energy 给 exact finite support bound。仍然只验收所列 inputs/ranges，一般 identities 与无限域来自正文证明。

本轮共 **37 项新 labelled checks**，不重复累计前轮 55、61、56 项，也不把 37 项说成完整目标的证明。

## 诊断与修正

[诊断记录](global_quantum_diagnostics.json) 保存初始 Mathematica 结果和 Taylor residual。对 exact matrix holonomy 作 Series/Normal 时，off-diagonal 表达式保留了 a³ 项，导致与二阶 polynomial 作严格 equality 的检查失败。最终改为在 a=0 显式取零、一、二阶 derivatives；二阶公式正确，exact ODE 与 −1 holonomy 的检查此前已经通过。

一次探索性输出的末括号有语法错误，未实际执行，不计作数学结果。

更实质的回攻是：第一个 vacuum-divergence witness 不保证 C∞ flow 完整。为了排除这不是量子障碍的解释，又给出了对每个 mode 施加同一 hyperbolic matrix 的完整 smooth flow；它的 quantized vacuum norm 仍线性发散。两个反例都保留，范围不混用。

## 哪些结论依赖解析证明

- ND1 的 holonomy source 域由 exact ODE 给出；不存在 global filling section 由 based-loop π₂ 与可缩 filling space 的矛盾证明，不由有限矩阵代替。
- ND2 的 finite group-valued smoothing 用 scalar p_ε 的 C⁰ approximation、保持 exterior 的 normalization、smooth Sobolev choice ε(g) 和 actual gauge arrows。Action 沿 exterior-fixed flat path 不变，CPS 由共同 boundary primitive 比较。
- ND3 用 local sections 和 Lie-algebra tangent lifts，避免调用不存在的 global filling section；源/目标从自己的 full CPS 独立定义。
- QD2 的 infinite operator domain、mode-tail convergence、product-kernel closure 和 faithfulness，由双向 weighted Hilbert–Schmidt estimates、有限 particle blocks 的递归重构以及 coherent vectors 证明。
- QD3 是 classical observable classes 上的量子乘积比较；尚未构造的 quantum BV pushforward/mQME 箭头没有被这份 operator theorem 替代。

## 第十三至十五轮攻击

第十三轮：反驳 non-Abelian zero-mean source，以及 global continuous disk filling 的假设；修复为 holonomy 域、actual full-field primitive、local sections 和 finite relative smoothing。

第十四轮：反驳全部 P_H 都有相同 vacuum domain；进一步用完整 classical flow 反驳“只是 flow 不完整”的解释。Scalar ordering counterterm 不能消除正交 two-particle divergence。

第十五轮：检查 repaired quantum class 是否只保证每个 matrix entry、是否只有单向 energy bound，以及 source product 是否被误认成 quantum BV pushforward。双向 kernel criterion、finite-block reconstruction 和 source/target 的独立 quantum prescription 处理前两类；完整 quantum BV bridge 继续列为尚未完成。

在 ND/QD 的已声明条件下，本轮这些攻击未产生新的失败见证。Self-sewing topology、nonformal off-shell BV、一般 reopening、quantum BV integration、non-Abelian quantum 和 propagating models 继续在 [completion](../completion.json) 中保留。
