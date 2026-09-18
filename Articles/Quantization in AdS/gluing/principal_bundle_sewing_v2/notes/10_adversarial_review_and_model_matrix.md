# 10｜模型反查、实际修订与剩余边界

本篇不是声称已经获得外部同行评审，而是记录本轮构造中对自己的反例检查。精确结果的前提、adopted input 与未完成项共同构成可审核的结论；任何数值 PASS 都不能把后两者自动升级为 E。

## 10.1 固定 target 后的模型矩阵

| 模型/区域类 | 未切分 target 与必需 probes | 本包实际结果 | 不随之获得的结论 |
|---|---|---|---|
| compact connected YM2 interval，trivial large character | representative holonomy functions、polynomial flux、Casimir dynamics | §5.1–5.5：完整 invariant-PBW kernel、Haar onto map、driven reopening、三块比较，E | 任意 circle singular differential ideal、其它 large sectors |
| 有限 non-Abelian graph regulator | link Wilson/flux、跨 cut plaquette words | §5.7：逐 link subdivision 的 operators 与 dynamics，E | 任意四维 continuum limit、自动恢复缺失二维 bundle cocycles |
| relative Maxwell flat slabs，线性 cover | 全部声明的 smooth Hamiltonian linear probes、radiation、Q/P | §6.1–6.8：all-mode source、transition lifts、完整 linear/polynomial/CCR kernel、CPS–Peierls、fresh opening，E | 任意 sharp line/surface products、局域 Wick stress/corner contacts |
| 同几何 compact U(1)，relative trivial sector | rotor U/P 加 radiation，全部 based components | §6.9：integer characters、Haar harmonic sewing，E | 任意磁通/relative winding sector、未经声明的 theta representation |
| source-free U(1) disk，extendible boundary framing | zero-mean smooth current 及其 CCR/Weyl | §7.1–7.4：源演化、corrected seam potential、current lifts、完整 null kernel，E | 带 punctures 的 arbitrary current mean、任意 charged vertex operators |
| compact U(1) CS torus | X,Y crossing Wilson，固定中心 character | §7.5：relations 完整生成 kernel，image M_k，E；topological realization I | 从任意 Lorentzian disk-current representation 推出的 handle contraction |
| SU(2)₂ 四 punctures，总 charge 0 | 两种切法的 actual channel maps，W12/W23 | §7.6：fixed-cup F/R 与 M2 Wilson presentation，E；unitary realization I | 用 2×2 tests 认证所有 labels 的 pentagon，或全部 field algebra |
| positive-energy charged CS edge | 真实 localized charged operators、Gram pairing、maps C_a | §7.7：在明确 transport/irreducibility 输入下 kernel=Gram radical、onto criterion，C/I | 从 multiplicity numbers 单独构造这份分析实现 |
| formal small-amplitude YM on flat slab | formal source solutions、Gauss、boundary histories | §9.2：coefficientwise sourced existence/uniqueness与组装，E in stated formal domain | series convergence、完整 nonlinear observable-presentation kernel、quantum loops |
| 一般 principal bundles / nontrivial topology | h、cocycles、allowed sectors、anchors、global Wilson | 第 01/04/08 篇：几何装配与条件性 symplectic comparison，E/C | 每个拓扑上每套 physical IBVP 都存在、任意 disorder algebra |
| null/mixed causal networks | 足够 characteristic sheets、corner flux seeds、constraints | §4.6/9.6：输入要求及反例，D 对一般构造 | 单 sheet 当 Cauchy、从 timelike proof 自动推广 |
| 任意 interacting quantum YM、matter/defects | local/Wilson/disorder/junction/stress operators | 第 03/09 篇：明确 ontology 与准入义务，C/D | 已构造全部 boundary renormalization 或 global anomalies 已取消 |
| states/amplitudes | cross correlations、preparation、phase lines | 第 08/09 篇：独立结构与必要性反例 | 由两份 regional marginal states 唯一恢复 global state |

“E in stated domain”包括该域真正的所有 modes/labels，不把任意 distribution completion 或新的 topological sector 偷塞进“所有”一词。

## 10.2 反向修改记录

**第一轮：先尝试删掉不必要数据，再看什么坏掉。** curvature-only 无法检测 flat Q，因此把 Maxwell target 改为全部 admissible connection/electric linear labels；compact case 同时改成 integer-character/rotor，而非在实线 Gaussian 上口头识别 Q 的周期。相应地增添了实际 seam lift，不能仅修改生成元清单。

**第二轮：检查 source 与 boundary ontology。** 保留 joint tuple，删除 componentwise decomposition；disk current 必须来自 flat bulk，零平均不是可选 gauge-fixing。相同原则也用于 null constraints 和 matter boundary components，防止发明不存在的数据。

**第三轮：检查 symplectic/quantum comparison。** Maxwell 增加 \(\int E_n\delta\lambda\) 与 \(\int\lambda f_n\)；CS 增加 §7.3 的 explicit \(\Theta_\Gamma\)，而不是直接 quotient 两份旧 forms。YM2 使用 invariant/PBW normal form，避免全量子代数的两侧 constraint ideal。SU(2)₂ 检查 cup-sensitive FS sign，不仅检查 braid matrices。

**第四轮：检查“严格”“全部”“最小”的范围。** all-mode Maxwell 用实际 frequency bounds 与 finite-jet lifts，未把 Borel extension 当任意 jet topology 上的连续 linear right inverse；formal YM 不沿用错误的 Abelian reflection parity；跨 seam smooth tests 明列为 enriched source，未说它们属于旧 algebraic tensor product；generic theorem 保留为 C，不冒充存在性；所有 state 与 UV extensions 另列。

**第五轮：检查 global conventions 与再粘合。** fixed-source symmetry 与改变 source fibre 的 time-dependent frame changes 分开；compact sector 中仅在 equivalent liftable-seam presentation 使用实 λ；self-sewing 只复制 boundary occurrences；pentagon 比较四个对象的五种括号化；CS 的 fixed cups、ribbon phases 与 Weyl quasi-periodicity 都固定在文件和代码中。

这些修订落实在正文，不只是此处列一张“注意事项”。

## 10.3 删除数据后的必要性 witnesses

| 删除什么 | 剩余数据无法区分 / 无法实现什么 | 结果 |
|---|---|---|
| connection/relative holonomy，只留 curvature | Q 与 Q+c，P 相同 | 丢失 \(\{e^{iQ},P\}=ie^{iQ}\) |
| based large components | Q∈R 与 Q∈S1 的不同 global theory | 错误 observable/representation |
| seam transition λ/h | 各片 independent gauge 后的同一 global transport | lift 不再 gauge invariant |
| joint corner source domain | 完整相容 tuple 与两个不相容分量 | 不存在声明的 smooth source solution |
| bulk extendibility | disk boundary PDE 的非零 current mean | 增加虚假的 physical mode |
| actual channel maps，只留 sectors | W23/Y 的 sector-changing 作用 | 只得到过小的 diagonal algebra |
| cup/evaluation normalization | 相同 braid conjugation 下不同 vacuum overlap | ribbon realization 不一致 |
| reopening rule/action/domain | 相同 abstract CCR、不同 masses/walls/responses | 无法恢复新边界问题 |
| boundary phase/anomaly data | 相同 Ad action、不同 state/amplitude phases | algebra 检验漏掉 quantum obstruction |
| cross-state data | 同 marginals、不同 C_± | state sewing 不唯一 |

这证明了多类数据的必要性，但并不证明本包携带的每一条 action/source 信息都是不可压缩的。求真正最小 response package 应另给“允许遗忘哪些数据”的偏序，再逐项研究。

## 10.4 仍最值得继续攻击的证明接口

Maxwell 的精确域采用 static flat slabs 与 compatible smooth labels；因此下一次审查应先攻击边界变形下的参数一致 estimates、一般 source trace completion 及目标 stress/line extensions，而不是反复检查已闭合的 oscillator algebra。当前有限阶 estimates 没有声称最优 regularity 或无 derivative loss。

CS disk 的 exact proof 使用可延拓 outer framing、零 relative winding 与 compatible chord corners。改变这些 topology choices，可能必须增加 monodromy 与新的 endpoint terms；不能只把“disk”换成“annulus”沿用证明。

SU(2) channel contraction 的 analytic transport data 是采用的输入，不是本包重证。任何 independent realization 应实际构造 bounded operators、验证 Gram positivity/radical 和 onto，不可以引用一个 2D Hilbert dimension。

formal YM 的递归给 fields/responses，不自动给全部非线性 gauge-invariant Hamiltonian labels 的 presentation。要扩大 algebra result，须构造有 domain control 的 nonlinear dressing/Peierls labels，并重新检查 Wilson junction 的 UV extensions。

## 10.5 测试怎样解释

`checks/run_checks.py` 的每项有三个类型之一：`exact_identity`（SymPy 或有限代数恒等式）；`counterexample`（成功重现应排除的错误主张）；`finite_diagnostic`（非交换矩阵/频率/响应/积分采样）。输出记录实际环境、容差、scope 与 proof section。

程序不能证明 infinite-dimensional functional analysis，不认证 arbitrary ribbon coherence，不是一个 hidden full Yang–Mills solver。其价值是把容易再次出错的符号、零模、source 与非对角 observables 转成可复现的回归测试。完整证明强度仍由正文假设和推导决定。
