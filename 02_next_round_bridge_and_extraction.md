# 下一轮：有限范围的定理提炼，加一个 charged-CS 桥接模型

基准：`GaoZ1en/obsidian_note@3fd226316894b423923939d7248b4fa97b9c786a`。

本文是工作范围与验收条件，不把尚未完成的桥梁写成 theorem。

## 1. 核心建议

**现在可以开始提炼，但提炼对象应是“带类型、带作用量和域输入的 gauge sewing 定理包”，不是一条包办所有 YM/CS 的 universal observable-algebra fusion theorem。研究工作应集中到同一个 charged SU(2) CS 模型，接通 current、holonomy、Connes fusion 与 Wilson operators，而不是继续并排增加更多不相连的例子。**

本轮已经填上不少真实缺口：trivalent joint trace 与 residual gauge jets；annulus 的 compact zero modes；charged vertex modes 与 thin-line 阈值；SU(2) vacuum-net Connes sewing；一般紧群 YM finite networks 的实际 kernel/image。尚未接通的是这些对象之间的转换，尤其是 edge note 的 finite holonomy ports 与保留 physical boundary currents 的 charged theory。

## 2. 已有结果分属不同数学类型

| 当前层 | 实际对象／映射 | 不能替代的另一层 |
|---|---|---|
| Classical continuum descent | 实际解／规范轨道、joint trace、CPS／singular observable quotient | 不自动给量子函数类或 operator domain |
| Regular/current algebra | smooth Hamiltonian functions、finite polynomial currents、PBW quotient | 不自动包含 sharp charged insertions |
| Holonomy presentation | flat-local-system groupoid、ribbon/CW data、tree normalization | 不是缩短物理边的极限定理 |
| Quasi-Hamiltonian ports | 非闭二形式、群值 moment map、fusion 与再 reduction | 不是原完整 physical boundary phase space，也不是只保留 μ 的压缩 |
| Charged fields | mode core、arg-valued tests、ordered distributions、braid phases | 不自动成为某个统一 time-zero operator algebra |
| Integrable vacuum quantum theory | cyclic module、local von Neumann net、Connes relative tensor product | 不等于 universal current algebra 的普通 quotient，也不证明全部 non-vacuum intertwiners |
| Topological quantum index | prequantized q-Hamiltonian space 的 Verlinde-ring element | 不给 Hilbert-space map、observable-algebra kernel 或 operator-domain theorem |

这张表应进入总结稿的开头。保留 target 类型比增加 category 术语更重要。

## 3. 工作包 0：短修补，不重写模型

交付 C note 的测试域补充与一页 claim ledger：

- charged angular smearings 取 `C_c^∞` 的 arg-valued intervals，或精确定义共同 cover/twisted test bundle；加入 k=2,q=3,n=1 的 ordinary-periodic test 反例；
- 明确 elliptic DtN 与 scalar action-response 的相反符号；
- 同步 edge note 的 quantum scope：vacuum module/net 已完成，non-vacuum charged-port bridge 尚未完成；
- 不将 annulus 全 charged sector 改成 thin equal-time operators：固定 k 时已有严格阈值，所有整数电荷不可能全部满足它。

验收：角向 Fourier 衰减证明、adjoint 测试域相容、修补后与原 mode/OPE sewing 一致。无需另做一个更大的 quantum completion。

## 4. 工作包 1：总结现有定理的最小公共输入

建议标题：`Gauge observable sewing: proved theorem interfaces`。

只提炼已经在实例中验证的结构，不要求先证明一切 gauge theory 都满足。

### 4.1 必须记录的数据

每个 region 保留完整 action/CPS、field/connection class、joint history trace、实际可延拓 gauge group、proper/active policy、boundary frames、responses、operator domain、observable labels、reconstruction map。Quantum 层另列 level、lattice/sector、ordering、representation、common invariant core 或 local net，以及使用的 completion。

特别地，compact group 和“YM/CS type”本身不是 hyperbolic trace theorem、symplectic quotient regularity 或 quantum existence 的充分条件。

### 4.2 仅提炼三种现成命题

1. **Classical descent/reduction implication。** 实际 matching + gauge descent + 相同 operator/solution class + CPS comparison，推出所声明 observable 类的比较；singular quotient 单独声明 differential structure。
2. **Algebraic current/core quotient implication。** 指定 admissible label/Lie/PBW map、完整 kernel 与实际 section 时，得到 exact algebra quotient；这不包含任意完成。
3. **Representation/net sewing implication。** 在声明的 conformal-net/correspondence 输入下，Connes product 的 Gram radical、unitary map 与各 local algebra 的实际 intertwining 给所选完成的比较。

为每个命题列出实例：YM interval/circle，U(1) disk/junction/annulus，SU(2) universal/vacuum，YM networks。不能把 Connes fusion 直接记成所有 quantum algebras 的二元乘法。

### 4.3 验收条件

每个箭头都给 source、target、topology/domain、kernel/image、量子化选择与独立 global target。每条泛化都指出哪些输入是模型已证、哪些仍需假设。不声称一个“all YM/CS” theorem，不声称整个 C∞/H(P) 都有同一量子化。

这部分可以与后面的研究并行完成，不等待 charged bridge 全部结束。

## 5. 工作包 2：一个明确的 classical current-to-holonomy port bridge

### 模型

有向 SU(2) disk，带两个明确 Wilson punctures；固定线性时间演化／boundary polarization、level convention、世界线/orbit action、basepoint paths 和外边界 physical-frame policy。外部比较的有限目标为固定 input conjugacy sectors 的 pair-of-pants holonomy model。

先说明比较使用 punctures，而不是宣称任意 geometric corners 已等于 punctures。边界 Wilson endpoints 的模型只能在 action 与 absorbing sector 定义后另行识别。

### 核心问题

当前 full boundary-loop/current object 经哪个明确操作得到 AMM finite port？丢掉的 based-loop variables 属于什么 quotient，哪些 active physical symmetries仍被保留，怎样从 finite data 与 loop-group moment map 重构原层？

### 需证明

- 从完整带源 action 推出 Gauss law、CPS 与 puncture terms；给出 source strength 与 holonomy convention 的准确字典，不预先插入 quantum Weyl/level shifts；
- 定义 loop-group Hamiltonian space、holonomy map、允许 quotient，并逐项核查使用 AMM correspondence 的条件；
- 明确 corrected two-form，而不是声称原 closed CPS 直接下降成 quasi-Hamiltonian form；
- 在共同 basepoint 与固定顺序下证明 μ12=μ1μ2 及 cross-term；
- 构造反向字典／说明实际保留的 fibers，证明 finite port 不是仅由 μ12 的值决定；
- 独立构造对应 punctured global moduli space，给实际 comparison。

验收是一个当前 physical-model 到有限 port 的实际映射及二形式定理，而不是再次引用 AMM fusion 公式。主要主文献：AMM, arXiv:dg-ga/9707021，Theorems 6.1、8.3 与 §9。

## 6. 工作包 3：非真空 SU(2) quantum sewing 与一个真实 channel test

### 最小量子模型

正整数 level 的同一指定 integrable net prescription。优先取 k=2 与两个 spin-1/2 sectors；k=1 可作只剩 vacuum channel 的对照。必须先声明 marks、orientations、charge labels、framing 与 actual intertwiner normalization。

### 与已有 vacuum theorem 的区别

vacuum 是 Connes tensor unit。已经证明 H0 ⊠ H0 ≅ H0，不等于已证明 H_j1 ⊠ H_j2 的 decomposition、实际 intertwiners、operator domains、braid／associator maps。

### 需证明

1. 以两份独立非真空 region representations 定义 source，不用目标 conformal blocks 的 restriction image 定义它；
2. 使用 Connes Gram construction 或已核对的正能量 primary-field 方法，构造 actual channel maps；
3. 在 k=2 验收 H_{1/2} ⊠ H_{1/2} 的 0 与 1 channels。仅复述 fusion coefficients 不算完成；必须给 maps、inner products、完整 kernel/image 和 boundary-net actions；
4. 对 charged insertions 选择 arg-valued test/domain，并证明局域 current Ward identities 与 sewn field comparison；
5. 定义一个检测 fusion channel 的实际 Wilson observable，比较 current-side 与独立 global channel action；
6. 使用四个 spin-1/2 punctures 得到最小的多通道 basis-change example，固定 trivalent normalization 后计算 F-move。需要证明它 intertwine 实际 observables；维数或 character identity 不够。

可以引用 Wassermann 的 LSU(N) positive-energy Connes fusion theorem（arXiv:math/9806031），但必须逐项说明它与本项目 boundary/action/gauge conventions 的适用关系。不要把外部 modular-functor decomposition 当成当前 regional source 的未证明 kernel。

## 7. 工作包 4：把 edge presentation contraction 接到上述桥梁

限定操作为：不删除 physical current interval、不改变 bundle/charge labels 的 auxiliary rooted-forest contraction。不要同时研究真实 metric ε→0 degeneration。

给一个保留两个 punctures 与所有 external ports 的 ribbon presentation。分别进行：

- 先缩辅助树，再做 classical/quantum sewing；
- 先做 sewing，再改变辅助 presentation。

需明确并核查 source maps、incident-edge transport、ribbon order、各 puncture frame 与 output channel spaces。Classical 边证明 groupoid equivalence 及 corrected two-form comparison；quantum 边证明所选 unitary／intertwiner maps 的交换，或者给出需要保留的 projective phase/framing correction。

重要区分：

- tree presentation move 应保留完整物理对象；
- two-puncture fusion 保留所有 channels；
- 选一个 channel 是额外操作；
- 只保留 μ12 或一个 charge label 通常是有损忘却；
- F-move 是同一多通道对象的 basis/association comparison，不自动等于“删除一个几何端点”。

验收目标不是笼统的“contraction=fusion”，而是一个类型正确的 commuting diagram，或一个明确的失败条件。

## 8. 依赖关系与停止条件

工作包 0 与 1 现在即可完成。工作包 2 与 3 可在共同 conventions 下并行，但二者必须保留不同参数：classical conjugacy/orbit parameters 与 quantum integrable labels 不得未经证明互代。工作包 4 在它们提供实际 maps 后再做。

本轮不应再次要求证明“所有 thin smeared vertex products 构成完整 charged algebra”；已有阈值说明这个目标在固定 k、无界整数电荷下方向不对。也不应把非定向 doubled CS、任意 gauge group、general punctured surface、真实 geometric collapse 和高维 YM 同时纳入这一个 bridge theorem。

## 9. 如何决定是否可以宣布一般 formalism

可以宣布的是：已有一个 response/constraint/sector/domain-enriched sewing 定理体系，并且多种模型提供了真正实例。

在下列桥梁尚未给出之前，不应宣布统一的 YM/CS quantization-commutes-with-sewing theorem：

\[
\text{current/CPS data}
\longleftrightarrow
\text{holonomy/q-Hamiltonian port data}
\longleftrightarrow
\text{non-vacuum quantum sectors and intertwiners}.
\]

特别是 YM 的现有完整动态证明只在 1+1 维、无 bulk radiative modes 的体系中成立。高维 YM 的完整 transmission、非线性 constraint-compatible IBVP 和 quantum local class 是不同的输入，不能由 compact-group Casimir reduction 推出。

**建议下一轮的研究中心是：两个 charged SU(2) punctures 的同一个模型，怎样在保留 corner/gauge/representation 数据的情况下，同时实现 current sewing、finite-port fusion 和 non-vacuum quantum sewing。总结工作围绕这个中心进行，而不是再增加一层无模型证明的统一 notation。**
