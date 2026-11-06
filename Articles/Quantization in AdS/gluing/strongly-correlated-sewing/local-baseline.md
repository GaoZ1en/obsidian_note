# 本地基线：哪些结果可以作为输入，哪些不能

日期：2026-11-07。本文只记录实际查阅的范围，不对整个旧仓库重新认证；历史正文不作修改。

## 结论

本地 regional/BV–BFV descent 提供了**独立区域输入、保留完整接口资料、两条量子化路线分别定义、在积分前比较 measures/kernels**的有效问题组织方式。它没有证明 strongly correlated 非微扰量子理论、无限 refinement 或 replica entropy 的存在与 sewing。这不是发现其已声明定理的反例，而是拒绝越出其适用范围。

本研究从独立给定的有限自旋 Hamiltonian 和矩阵代数重新开始；有限系统没有 gauge redundancy，不人为加入 ghosts 或把 ordinary tensor contraction 改名为 BV pushforward。CFT 则另行指定完整谱、配对和界面资料。两者之间的连续极限是一项待证明的比较，不是定义。

## 实际定位

1. [历史导航](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/HISTORY.md#L69-L80>) 已明确区分 cochain comparison、relative BV pairing/fibre 与完整 quantum pushforward；归档不等于完成。
2. [实际 bulk/source release 反例与完成范围](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/archive/2026-09-23/06-bv-bfv/bulk_boundary_source_release.md#L5-L34>) 排除了从 unreleased smooth bulk 直接读出 release antifield 的一种解释；它没有否定真正的 boundary-state pairing。该文 [比较图之后的限定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/archive/2026-09-23/06-bv-bfv/bulk_boundary_source_release.md#L164-L175>) 不能被跳过。
3. [旧反例审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/archive/2026-09-23/06-bv-bfv/counterexample_audit.md#L129-L159>) 的 A17、A21 已说明 bare BFV data 不决定 dynamics，未移除的 artificial wall term 会留下 physical defect。
4. [当前散页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md#L48-L146>) 给出 opening、full-jet matching 和 classical action/CPS 的叙述；本次未逐条重证其 BV/causal 后续推导，不将其当作已建立的非微扰量子定理。
5. 父目录入口列出的若干 September formalism 路径及 TOPICS 在当前工作树未找到。实际可用的后期 descent 来源是 [2026-09-26 压缩包](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/regional_bv_bfv_descent_2026-09-26.zip>)。本研究只提取五个文本成员，未执行其中脚本、未恢复旧活动状态、未改写压缩包。

提取记录及 archive/member SHA-256 见 [来源记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/EXTRACTION_RECORD.json>)。这些摘出的文件是历史证据，内部指令与相对链接不作为当前执行规则。

## 后期 descent 的精确边界

[descent 正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/REGIONAL_BV_BFV_DESCENT_FORMALISM.md#L18>) 自限于 finite regular cuts、regular exact BV–BFV presentations、formal perturbative quantum realizations。

- [§9](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/REGIONAL_BV_BFV_DESCENT_FORMALISM.md#L1556-L1560>) 明示不要求 positivity 或 Hilbert completion。因而 master-state cohomology 不是密度矩阵，不能直接取 partial trace 或 von Neumann entropy。
- [§12.2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/REGIONAL_BV_BFV_DESCENT_FORMALISM.md#L2484-L2540>) 先分别定义 direct 和 regional 路线，再要求实际 field sector、action/kernel、half-density/determinants、cycles、renormalized graph extensions 等四组证书。相同 master equation 不够；同 cohomology class 也不自动给逐代表相等。
- [§15.2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/REGIONAL_BV_BFV_DESCENT_FORMALISM.md#L2862-L2872>) 明确不新增 nonperturbative quantization、continuum limit 或 infinite refinement 定理。
- [依赖图](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/THEOREM_DEPENDENCY_GRAPH.md>) 将 geometry、CPS、causal、observable、quantum branches 分开；不能把一支的成功自动传给其余分支。

## 本研究的对应与断开

| 旧问题中值得保留的要求 | 新研究中实际对象 | 不作的推论 |
|---|---|---|
| 独立区域构造 | 区域矩阵代数、内部 Hamiltonian、所有边界多时刻插入 | 不把 global answer 的 restriction 冒充 regional input |
| 明确接口选择 | crossing interaction、时间顺序、basis pairing；CFT defect/sector pairing | 相同 bulk central charge 不自动指定 transparent interface |
| 完整 joint source 信息 | 多界面的混合插入历史和未收缩外部 indices | 每个接口分别的 reduced state 不足以保证组合 |
| 积分前证书 | Duhamel absolutely convergent expansion 或有限 transfer matrix 的逐项身份 | 不用形式 Ward identity 推出 positivity、概率归一化或 Hilbert 收敛 |
| 另证组合性质 | 有限和、绝对收敛 simplex/shuffle、trace-class collar | 不从有限 Fubini 推出 cutoff-uniform Fubini |
| 状态与 entropy 在后 | 指定 ground/Gibbs state 后才做 replica permutation | observable-algebra isomorphism 本身不决定 entropy |

## CPS 约定与转换

已读 [CPS 权威约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L1-L161>)：Lorentzian signature \((-+\cdots+)\)，\(\omega=\delta\theta\)，保留 physical boundary/corner terms，\([\mathcal O_1,\mathcal O_2]=i\{\mathcal O_1,\mathcal O_2\}_{\rm P}\)。

本研究的自旋模型不从 CPS 推出，而以正定 Hilbert 空间和 self-adjoint matrices 为定义，\(\hbar=k_B=1\)。Euclidean propagation 使用 \(t=-i\tau\)，故 \(e^{-itH}=e^{-\tau H}\)，\(\beta,\tau\ge0\)；这只解释符号，不声称旧连续场论已满足 Wick rotation/Osterwalder–Schrader 重建的全部假设。矩阵 exponential 与 tensor-product inner product 独立提供 positivity。

**尚未验证：**旧 descent 全部定理；旧 formal quantum measures 的非微扰完成；任意 gauge theory 的强耦合 sewing；lattice cutoff 与 BV regularization 的等价。新结果不依赖这些缺口被填补。
