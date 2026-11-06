# Strongly correlated quantum sewing

**有限系统的 exact quantum sewing 可以构造；无条件的静态 Markov sewing 不成立。连续极限必须另证。** 本研究以现存 regional gluing／BV–BFV descent 的边界为基线，独立建立有限自旋的全界面历史构造，并用临界 Ising、三态 Potts、CFT 谱与 replica entropy 主动检验其适用范围。

日期：2026-11-07。旧研究正文与归档保持不变；本目录不是旧 programme 的恢复，也不预设旧量子框架成立。若结果采用标准 Duhamel、Jordan–Wigner、character 或 Hölder 方法，正文给出具体推导，不将这些标准机制宣称为新发现。

## 核心结果

1. **有限维严格构造。** 给定独立区域 Hamiltonians 和所有 crossing interactions，完整 time-ordered boundary histories 的 sewing 对任意有限耦合、有限 Euclidean time 绝对收敛，等于独立定义的 global matrix exponential；保留 joint mixed histories 时可证明多界面结合性。不要求小耦合，但也不承诺计算高效。
2. **严格反例。** 三 qubit 的 \(H=Z_AX_B+Z_BZ_C\) 没有 \(A-C\) coupling，但 Gibbs state 对每个 \(\beta>0\) 有 \(I(A:C\mid B)>0\)。其真实 \(AB,BC\) marginals 甚至不存在任何 Markov extension。已知 local-Gibbs prior 下的全局 maximum-entropy 唯一性不受此反例否定。
3. **Ising 连续极限的可证部分。** 固定物理圆周与速度、减去 bulk vacuum energy 后，利用 uniform occupation-tail bound，严格证明正温度热 trace 趋于 full Ising character sum。NS/R parity、Ramond 零模和 \(k=\pi\) 单模全部保留；全系统 thermal replicas 也收敛。它不是空间子区间 entropy 的极限定理。
4. **Potts 的必要区别。** 正确 \(c=4/5\) Potts invariant 非 diagonal；与相同 \(c\) 的 A-series 模型具有不同 torus trace。单区间的 universal logarithm 无法检验这份区别，两区间 replica 已能看见。Potts lattice-to-continuum spatial sewing 仍未证明。
5. **Replica 与 cutoff 障碍。** 有限 cutoff 下 permutation identity 严格成立；但所有固定整数 replicas 收敛也不能保证 \(n\to1\) 与 cutoff limit 可交换。若 sewing 真正限制 Schmidt rank 为 \(\chi\)，则
   \[
   |\langle\phi|\psi\rangle|^2\ge1-\varepsilon
   \quad\Longrightarrow\quad
   \chi\ge(1-\varepsilon)^{n/(n-1)}e^{S_n(\rho_A)},\qquad n>1.
   \]
   在额外成立的 critical \(S_2\) asymptotic 下，fixed-rank high-fidelity sewing 因而失败；有限 RCFT sector labels 不等于 finite Schmidt rank。

## 阅读

- [有限 quantum sewing：定义、定理与反例](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)：区域与 global 对象、Duhamel history sewing、有限组合、Ising/Potts transfer kernels、Markov 反例、replica identity。
- [连续极限与 replica entropy](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)：positive/zero collar、Ising 热谱极限、Potts sectors、单／双区间 replicas、非均匀极限及 Schmidt-rank 障碍。
- [本地基线与约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/local-baseline.md>)：实际读到的归档、后期 descent 的明确假设、与新构造的对应及不能继承的结论。
- [证据与复现入口](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/evidence-index.md>)：解析主张、CAS、数值、来源、独立复核分别定位。

## 已完成的实质检验

- 临界 PBC Ising \(N=8,10,12,14\)，Potts \(N=6,8,10\)，34 组区间 \(S_1/S_2\)。最大 ground-state residual \(<5\times10^{-12}\)；另有小尺寸独立矩阵、partial trace、Ising exact energy 对照。
- 半链跨尺寸 \(c_{\rm eff}(S_1)=0.49727,0.79270\)，与理论值相容；\(c_{\rm eff}(S_2)=0.53046,0.87198\)，偏差仍明显。**有限拟合不证明连续极限。**
- Mathematica：8 项 transfer/replica exact identities；5 项 minimal-model modular-algebra exact checks；finite Ising full spin trace 对照及正温度谱趋近。
- Sage：7 项 exact three-qubit matrix checks；三条独立分析分别复核 finite history/no-Markov、continuum collar/Schmidt bound、Ising 热谱极限。复核者先得到题设与约定，未先得到主文候选答案。

## 适用范围与关键未决问题

Ising 的 free-fermion solvability 是严格控制例，不能代替一般强关联体系；Potts 的有限链是非 Gaussian 对照，但其 continuum identification 不由有限数值推出。正长度 collar 的 operator theorem 不是任意曲面、任意点场或全部 CFT crossing 的定理；sharp identity trace 失败也不否定 normalizable 态的 strong-limit 配对。

最有价值的剩余论证是：**Ising spin spatial replicas 与 fermionic parity／spin-structure sum 的 uniform bridge；Potts 的谱与 replica endpoint renormalization 的 cutoff-uniform 控制。** 正文把它们列为具体缺口，而不是用“已完成 quantum sewing”一语覆盖。没有提交 Git commit，没有修改仓库其他既有研究内容。
