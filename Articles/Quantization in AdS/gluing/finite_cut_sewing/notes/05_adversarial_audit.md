# 反例审查、修复记录与证明状态

审查对象是本包的有限混合切割构造，以及它从先前 standalone/symmetry notes 继承的命题。下面记录实际发现的过强表述、反例、修复和未解决输入。它不是独立同行审稿，也不是“数值通过即定理正确”的声明。

## 1. 审查后保留的核心

保留固定 polynomial Peierls/Wick class、局域 variational/Ward symmetry、真实 physical boundary 的 standalone ontology、selected opening 和每次输出 closed theory。主自由定理限于二维平直静态 strip 的 admissible cap-graph programs，以及满足同一已验证 boundary-kernel 条件的有限 multiplet。

三种 cut 使用三种实际机制。有限 mixed-program independence 通过完整 sourced reconstruction、junction regularity 与重新取源证明，而不是只引用一张已全部打开的网络中的 Schur elimination。

## 2. 实际攻击与修复

### A1. 用最终 global Green kernel 定义每个 region，再“证明”重建

**攻击。** 若区域核本来就是未知最终核的限制，后续相等只是定义。

**修复。** 每个 standalone cell 先由自己的 parent strip、实际 D/N/R 和 cap graphs 独立构造核。Parent operator 使用该区域长度/边界，而不是最终输出的传播子。只有 causal-convex restriction 使用这个独立 parent；timelike sewing 会改变原 boundary realization 和 commutator。之后才与独立最终 operator 比较。

**剩余限定。** 这仍是带 action/field/geometry labels 的 composition，不是裸抽象代数的 universal pushout。

### A2. 全部 face 数据逐面光滑，所以有一个光滑区域解

**攻击。** 相交的面可能指定矛盾 Taylor coefficients；null sheet 的 transverse constants 也可能漏掉。

**修复。** 明确 Cauchy、null ODE 与 wall corner recursions，并要求 off-shell smooth extension 的相容余项界。由这样的 lift 使方程 residual 在 incoming cap 平坦，再用独立 Green map 构造解。不能把不相容 sources 拆成两个分别“应该光滑”的响应。

**没有宣称。** 任意无限 jets 有连续线性 extension，或者整个旧 history-family 的 Fréchet smoothness 已恢复。

### A3. Null field/flux matching 已经保证 smooth assembly

**反例。** 主 note (4.2) 的 massive kink 满足 $L\phi=0$、$[\phi]=0$ 和退化 flux balance，却有 $[\partial_u\phi]=1$。

**修复。** Incoming junction 的 transverse seeds 必须匹配；PDE 递推随后传播全部零 jumps。Code 同时核查有限级数的实际末项 residual，未把有限 truncation 假装成精确解。

### A4. 三种 primitive operations 各自结合，所以彼此自动交换

**攻击。** 独立 associativity 不给 T/C、T/N 或 C/N interchange，更不证明 mixed junction 数据一致。

**修复。** 对所有相容 bulk/boundary/incoming probes 比较完整解；每步 closed 后重新求下次响应。独立源比较才给两种 mixed programs 的同一最终场。旧 finite-successive theorem 只承担固定最终匹配后的消元一致性。

### A5. 重开时只比较无源 $G$ 已经够了

**攻击。** 后续 sewing 需要 $H,\rho,D$，单一 homogeneous $G$ 的数值比较不足。

**修复。** 完整 lemma 对全部 sources 成立。代码后续增加了 actual exterior $(q,\Pi)$ outputs，分别测试 bulk source 和两端 boundary sources，并比较真正 closed AB/BC 的两种三片括号化。不是只在 bulk 内采样 $u$。

### A6. 原 Robin sources 相加为零就给 transparent seam

**反例。** 它留下 $\sigma_1+\sigma_2$ 的 surface potential，连续核的分母与 transparent answer 不同。

**修复。** 统一在几何 $(q,\Pi)$ 上匹配，closing action 完整移除。若保留，明确标作 defect。所有尚存 exterior $B$ 不动。

### A7. 任意 finite line arrangement 的所有中间区域都自动允许

**攻击。** 非凸母区域或任意 cells 子集的 union 可产生不属于 cap-graph 类的形状。无限反射积累在某些运动尖楔中也不因 cuts 有限而消失。

**修复。** 矩形/凸母区域的逐线切割及其反向程序给明确的正面类；一般 cap graphs 可先作有限竖直细分。每个中间 union 必须独立满足类定义。加速墙、pinching wedges、高维 glancing/corner geometry 不在本无条件定理内。

### A8. $\int j\cdot d\eta$ 是一个非零局部跨面 flux

**发现的问题。** 对整体 compact $\eta$ 和无源守恒 current，它在 on-shell quotient 中为零，不能作为一次独立局部测量。

**修复。** 改成带独立窗口的 $\mathcal F_j[\chi,h]=\int\chi j\cdot dh$。它通常非零，与窗口边缘的 charge transport 和真实源项满足完整 Stokes identity。新增数值检验同时确认非零值与该恒等式。

### A9. Free Wick fields 已存在，因此 sharp null composites 也存在

**攻击。** Null conormal 可与 Wightman wavefront 相交。

**修复。** 保留原 bulk-smoothed class 和已验证 timelike traces。Null 数据用于经典 PDE reconstruction；quantum flux 使用 finite smooth windows。没有声称 sharp limit 存在，也没有用一个新函数类把问题藏起来。

### A10. Potential 图局部可积，因此完整 stress Ward identities 成立

**反例。** $s/[\pi(\tau^2+s^2)]$ 局部可积，却在 boundary limit 变成 delta。Power counting 在 single-potential boundary divergence 上恰好允许这种 contact。

**修复。** Potential graph 延拓 theorem 与 stress/contact problem 分开。显式保留单 stress 的 $P''$ contact；更高阶的 primitive-defect 排除只是低阶 normalizations 已固定后的归纳，不是那些 normalizations 的存在性证明。

**仍开放。** 全部 reflecting-boundary stress/force/current base contacts 的兼容选择，及其在每个真正 closed intermediate 上的构造。本包没有将这项标成完成。

### A11. 独立区域 normal ordering 只要 coupling 相同就能粘

**反例。** $\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2$，连一次有限 convention change 都会改变 mass/vacuum/insertion terms。

**修复。** 同一 dynamics 内使用 finite maps 及 $DZ$、必要时 $D^kZ$ 运输 contacts。Opening 改变 dynamics，须重新构造 W 与 image contributions，不能直接用 $W_{\rm out}-W_B$ 作 smooth Wick shift。

### A12. 改变 cuts 的 indicator 可以与任意 contact distribution 相乘

**攻击。** $\delta_\Gamma'\,1_{R_i}$ 没有一个由图示决定的标准乘积；sharp spacelike/null action label 还可能不在既定函数类。

**修复。** Ordinary L1 potential graph 的分区只是可积函数的 bookkeeping；actual observables、复合插入和 Ward contacts 使用 smooth joint collar partitions。独立中间 theory 的完整 action-cutoff/time-slice extension 不从 L1 estimate 自动得到。

### A13. 任意非平凡 $J$ 都是光滑透明 junction

**攻击。** Filled contractible loop 上的非平凡 transition product 不能描述普通单值 multiplet。

**修复。** 检查每个 ordinary junction 的 transition cocycle；非平凡 noncontractible holonomy 可以保留，puncture/defect 则需明确改变问题。Orientation reversal 同时反转 side occurrence 和 $J$，而非任意补一个 sign。

### A14. 数值 checks 覆盖了所有 finite mixed programs

**攻击。** 几个核值、一个 manufactured solution 或 polygon arrangement 不是所有 PDE 数据的证明。

**修复。** Results 分别标记 symbolic、continuous kernel、quadrature、geometry 和 counterexample。数值 T→N 是实际构造的复合核；N→T 的全体程序声明来自解析 complete-source theorem，不假装另有未实现的通用 polygon solver。所有 continuum、distribution-topology 和 renormalization 输入在正文单列。

## 3. 检查记录

初稿执行了 68 项检查。审查后删除/替换了一条无内容的同式相减检查，加入 massive kink、windowed flux、compact-smeared Peierls generators、log-graph 分区，以及真正的 exterior quartet 和所有 bulk/boundary source blocks。最终脚本执行 **86/86 通过**。

非零 counterexample discrepancy 是预期的成功检测，不是 numerical error。普通等式的残差与反例差值不能混为一个“最大误差”。机器记录见 `../results/checks.json`；历史与最终日志均保留。精确脚本和依赖版本一并打包。

## 4. 最终证明等级

| 结果 | 状态 | 限定 |
|---|---|---|
| 二维 cap-graph causal kernels、真实 linear B | 本稿证明，使用既有静态区间输入 | 正质量、静态直墙、相容 incoming/jet domain |
| Null smooth matching 及 massive kink 排除 | 本稿证明和反例 | 完整 transverse seeds 必须保留 |
| 有限 mixed-program reconstruction/interchange | 本稿证明 | 每个 intermediate admissible、同一最终 action/domain |
| 既定 polynomial Peierls/Wick reconstruction | 本稿证明，继承区间 Q | 不含任意 sharp null quantum traces |
| Free affine symmetry naturality、energy/shift charges | 本稿证明/迁移并重推 | 合法 support；不分类 gauge |
| Classical polynomial formal response | 逐阶构造 | 不宣称实际耦合级数收敛 |
| 二维无导数 potential graph 延拓与 finite partitions | 已构造的图级结果 | self-contraction prescription 固定、允许 smooth tests |
| 单 stress/单 potential 局部 contact | 显式计算 | 不等于完整 massive boundary stress |
| 完整 all-order interacting Ward-compatible sewing | 条件性比较定理 | boundary base normalization 存在性尚未构造 |
| 任意 curved/higher-dimensional nongauge finite cuts | 未证明 | 需要相应 PDE、trace、renormalization 输入 |
| Independent states/Hilbert factors 的普遍粘合 | 未声称 | 不是当前 observable-algebra 定理 |

## 5. 未解决项的具体落点

最直接的下一项证明对象不是更大的代数或新的 symmetry，而是线性 physical B 下、**一个 stress/current 插入与一个 potential vertex 在边界碰撞的完整 Lorentzian contact family**，连同 force/source-work normalization。需要将该 base family 与 bulk OPE contact、boundary field equation 和 opening removal 同时匹配。Power-counting reduction 随后可用于更高阶递推，但不能反向替代它。

若进一步扩大几何，须分别处理非静态 timelike walls、更多维数的 characteristic corners 和 one-sided microlocal calculus。本包不将这些要求包装成已经完成的一般 non-gauge 定理。
