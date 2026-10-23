# 验证范围与复算说明

## 当前证据

本目录的 [首阶正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md>)、[φ³ 二阶正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Cubic second-order spectrum.md>)、[非手征与大 N](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Clusters and large particle number.md>)、[奇次扩展](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Odd interactions beyond cubic.md>) 分别保存定义、证明、谱例和适用范围。下面按构造与独立验证路线记录真实检查，不把有限算例当作全指标证明，也不把不同证书的检查数相加为一个“总证明数”。

- 模式、作用量、正规序、边界条件及相位在正文 §1 定义。
- 仓库起点：`670abb1bb4b644a162278415ef94dde09cdeb016`。工作树全局原有修改没有回滚或提交。
- 所用 φ⁴ 核心文件对该 HEAD 无 tracked 改动；实际哈希与旧认证元数据的比对保存在 [独立源文审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/phi4-source-evidence-map.md>) 和 [19 项复用核验](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/reusable_formula_check.json>)。
- 既存 φ⁴、引力笔记和原研究包未改；上级索引只追加新入口。新代码不导入原 φ⁴ 引擎、缓存或参考矩阵。

## 1. 主构造的精确证书

[verify_foundations.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_foundations.py>) 通过 **550 项精确检查**，最终机器报告为 [foundations_exact_02.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/foundations_exact_02.json>)。

其范围是：

1. Δ=3/2、2、7/3；k=2、3、4；0≤Q≤P≤3。共 90 个完整固定-N 块，直接 Beta/Fock 矩阵与最小 k 粒子谱定理比较：primary 秩与 trace、完整 shell 的秩与特征多项式、Gram self-adjointness。
2. 在显式有理函数域 ℚ(Δ) 中，k=2、3，scalar-primary 指标 a=0、1、2 的矩阵恒等式。不把 symbolic relation 强制转换为 bool。
3. n=3,…,8 的 48 个带角向/径向标签的 one-to-many 共振零，以及一个非共振非零控制。全指标结论依靠正文的 Jacobi 证明，而非这 48 项。
4. 七个完整 (E,J) 块，包括 φ³、φ⁴、φ⁵、φ⁶、φ⁷、φ⁸ 与整数/非整数有理 Δ；检查 Gram 及通向完整低能块的左右 lowering Ward 恒等式。φ⁷ 使用 Δ=4/3；φ⁸ 使用 Δ=3/2，不能只查整数质量。
5. φ⁶、Δ=2、E=8、J=0 的完整 9 维特征多项式，以及不可约因子数域上的全部 eigenspaces。完整例子的 [独立 CLI 输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/phi6_D2_E8_J0.json>) 同时保存本征向量恢复信息。
6. k=2、3、4、N=k+1、Δ=2、0≤P≤6 的 21 个手征块：用原始 KG/Beta/Fock 算法交叉验证独立 projector 路线所得全部非零本征值。

矩阵在非归一化 B 基中有理，且 G 为正对角矩阵。没有用浮点阈值判定秩、零模或重数。

最终源码哈希：

| 源码 | SHA-256 |
|---|---|
| [contact_blocks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>) | `c1977f4c10d70c357c6053c1eac5d8e98ec4175d7b7a463ed8e3ab2b1998462b` |
| [verify_foundations.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_foundations.py>) | `14da3b88324c0346d634b6aecf50a7af52656a8d38d97056c159204e728ee425` |

早期开发中曾由 Gram 检验定位到普通 Python 整数 factorial 分派导致的浮点除法；现将 factorial 强制为 Sage ZZ，所有最终证书重新运行。较早的 [foundations_exact_01.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/foundations_exact_01.json>) 已是修复后的 549 项报告，但尚未包含最终 algebraic eigenspace API；不要将两次运行相加为独立证据。

### 跨 N 共振下零模存活

[verify_resonant_zero_modes.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_resonant_zero_modes.py>) 将 fixed-N chiral kernel 直接嵌入完整 (E,J) 空间，验证完整矩阵确实将其湮灭。

[保存的六例](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/resonant_zero_modes_01.json>) 的完整维数为 16、7、29、168、2、70，包含 φ⁴、φ⁶、φ⁸ 和 Δ=3/2、2。这是正文 §8.4 解析证明的有限交叉核验，不是高阶保护证书。

## 2. Fresh 独立推导与后续协作的区别

三个结构问题最初交给 fresh 子代理，只提供题设、作用量、模标签和研究问题，没有先给候选答案。第四个子代理负责实际阅读 φ⁴ 来源，因此其后计算是独立实现，而不称为 blinded 验证。不同工作的检查数不相加成一个“总证明数”。

### 共振选择定则

[独立共振证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/theorem_and_examples.md>) 自行得到能量/角动量算术、全 one-to-many 零和正积分非零族。

- [Sage 输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/sage_results.txt>)：273 个单腿共振零；φ⁵ 的 1069 个允许 tuples 中 66 个零、1003 个非零；检查归一化 primary 与 signed lowering。
- [Wolfram 输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/resonances/wolfram_results.txt>)：直接积分、完整 φ⁵ 小块、φ⁶ 两个 primary 的耦合、Killing action 相位；全部 checks 为 True，Messages 为空。
- φ⁶ 的 2×2 block 是在主研究给出目标幅度后的独立重算，报告已明确标记，不冒称这一段仍为盲审。
- 其初始模采用 y-Jacobi 无 (−1)ᵛ 的相位；报告明确给出到仓库相位的映射。谱和耦合幅度不受影响，态向量的两个符号则必须转换。

### 恰好 k 粒子的全部非零谱

[独立最小粒子数推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/minimal-sector/README.md>) 独立由 WΔᵏ 的正 kernel 分解得到正文 (0.1)，再由 Wronskian 和 Hellmann–Feynman 恒等式证明 descendants 与不同 scalar modules 的处理。

[验证报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/minimal-sector/verification_report.txt>) 包含 ℚ(Δ) 特征多项式、primary lowering-kernel 构造、最大维数 30 的 rational blocks 和 k=5 比较。另有 r→s=2→3、2→4、3→5、2→6 的 exact cross-vertex 核验。Wolfram 独立实现检查了 16 组 generic-δ KG/slice norm、invariant-kernel ODE 和一个含 spectator 的 φ⁶ N=3↔5 反例。

这一路线没有把 pair 系数猜测推广成 k-body 系数。跨粒子数公式是在独立最小谱推导后继续提出的问题。

### 手征聚簇核与非零谱族

[独立手征推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/independent_derivation.md>) 从 Bergman 内积和 k-cluster projector 得到接触核，进而求解 N=k+1 的全部非零谱，以及全 N 的 degree-two/degree-three families。

[精确输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/exact_check_output.txt>) 的范围：

- restriction-matrix nullity 对 admissible partitions：k=2,…,4，k≤N≤8，degree≤12；
- fermionic character 对 admissible partitions：k=2,…,4，N≤8，degree≤24；
- 第一个零模次数与唯一性：k=2,…,4，k≤N≤8；
- N=k rank-one：degree≤8；全 N 低次族在 ℚ(Δ) 中检查 N=3,…,7、2≤k≤N；
- N=k+1 的完整谱：Δ=3/2、2、3，k=2,…,4，degree≤8；
- φ⁶ 的 balanced-group 显式零多项式 N=3,…,6；
- φ⁴ 特殊 descendant flag 在 φ⁶ 下不再不变的精确反例。

聚簇核的全次数 Jack 基是**应用已发表定理**。实际阅读的 HTML 版本、定理编号、参数换算和 character 的 −N degree shift 均记录在 [文献证据](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/source_evidence.md>)，没有声称阅读了 PDF 图像。

跨 N 共振下手征零模存活是主研究随后提出的证明，手征复核者作了批判性复核；正文 §8.3–8.5 的最后核对是协作一致性检查，不计作第二次 fresh 推导。

## 3. 运行环境与命令

实际计算环境是 SageMath 10.9 / Sage Python 3.14.3，Wolfram Engine 14.3。主脚本只需要 Sage 自带组件；没有新增依赖安装。MCP 使用 fresh kernels，实际运行是向 Sage Python 注入该代码目录后执行脚本，与下面普通 CLI 入口使用同一源码。

以下命令从本目录运行。输出名必须是**尚不存在的新文件**；主脚本会拒绝覆盖旧证书。

```bash
sage --nodotsage -python code/contact_blocks.py \
  --delta 2 --degree 6 --energy 8 --angular 0 \
  --output results/phi6_D2_E8_J0_fresh.json

sage --nodotsage -python code/verify_foundations.py \
  --output results/foundations_fresh.json

sage --nodotsage -python code/verify_resonant_zero_modes.py \
  --output results/resonant_zero_modes_fresh.json

sage --nodotsage -python independent/phi4-audit/reusable_formula_check.py \
  --output independent/phi4-audit/reusable_formula_fresh.json

sage --nodotsage -python independent/minimal-sector/verify_minimal_sector.py
sage --nodotsage -python independent/chiral/check_chiral_contact.py
sage --nodotsage -python independent/resonances/independent_resonance_checks.sage.py
wolframscript -file independent/resonances/independent_resonance_checks.wls
```

### API 单位与输出解读

[contact_blocks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>) 的 `contact_matrix(delta,n,basis)` 返回

\[
A=\frac{K_n}{(2\pi)^{1-n/2}/2},\qquad
\delta E=\lambda_n\frac{(2\pi)^{1-n/2}}2\,z,
\]

其中 z 为输出特征根。`basis` 的每项是一个重复模标签的排序 tuple；每个标签出现的次数就是 occupation。`gram_diagonal` 是正文 (3.3) 的 G，不是 identity。数域中的每个实嵌入给出相应 eigenvalue/eigenvectors；把向量乘 √G 后才是 normalized-Fock coefficients。

- `energy_basis(delta,E,J)`：所有 N 的完整块；delta,E 取 QQ。
- `fock_basis(N,P,Q)`：指定 fixed-N shell。
- `compress_primary(delta,n,N,P,Q)`：fixed-N 的 primary 压缩。**在跨 N 共振时，它不是完整物理压缩。**
- `contact_matrix(...,resonant=False)`：未做能量投影的有限矩阵；可作为二阶有限-cutoff 中间态计算的原始输入，但它本身没有完成 UV 重整化。

## 4. 尚未验证或尚未完成

- 一般 Δ 的全部 cubic pair-primary 简式与任意 N 的闭式交换谱。φ³ 的二阶矩阵构造、真空/一体重整化已完成，见 §5。
- N>k+1 的一般非手征 kernel/rank 与 cluster hierarchy。N=k+1、k≥3 的全质量秩和有限 Racah Gram 已闭合，见 §6。
- φ⁵ 在全部有理 Δ 的完整二阶矩阵与跨 N 对角化；更高奇次的完整 EFT matching。φ⁵ 必须指定的有限 quartic datum 和一般奇次最高连接量已明确，不再列为未识别缺口。
- 共同增长 N、P、Q 的正向一致极限定理。任意固定层、迭代极限下的 defect gap/稠密点谱、完整共振的 Gaussian ground measure 已有证明；它们不能互换极限顺序。
- 完整共振下的变形 stationary/periodic 背景、高阶零模保护、完整 QFT 谱分支及其一致余项。

这些是明确保留的研究边界，不是有限构造或机器检查失败。

## 5. φ³ 二阶：已执行的验证与复算

### 5.1 主引擎与两个互补证书

[有理交换引擎](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/cubic_effective.py>) 从单收缩 Schrieffer–Wolff 交换子构造四腿系数，不输入候选本征谱。

[103 项精确证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_effective_exact_01.json>) 由 [verify_cubic_effective.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_cubic_effective.py>) 生成，全部通过：

- 共同 one-particle level cutoff 0,…,4 下，从原始 cubic 顶角枚举全部中间 Fock 态，分别计算 E₀、E₁、E₂。连通第二差分每次精确为 −5/24，单位 λ₃²/(8π)。真空减除的一体 gap 在 cutoff L 为 −(L+1)/[4(L+3)]，趋于 −1/4；它并不在有限 cutoff 就等于不变质量答案。
- 七个完整 (E,J) 块：Δ=2 的 (4,0),(5,1),(6,0),(6,2),(8,0),(10,0)，以及 Δ=4 的 (12,0)。验证 Gram、自由左右 lowering 的 Ward、N 保持及特征多项式。
- 25 个 Δ=2 pair primary，0≤Q≤P≤8、P+Q 偶：原始有限顶角矩阵确实保持 primary 方向，并与全指标公式一致。
- Δ=2,4 各 20 个 1↔3 共振系数严格为零。一般 Δ 的零依靠解析证明，不由这些偶整数例子外推。

[一般质量引擎](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/cubic_hypergeometric.py>) 使用有限个 5F4(1)，或者在半整数质量下用有理级数的 polygamma 表示，没有径向 cutoff。

[170 项精确与 3 项数值证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/cubic_hypergeometric_01.json>) 由 [verify_cubic_hypergeometric.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_cubic_hypergeometric.py>) 生成：

- 144 个实际外模 source 的 Jacobi/Beta 积分对 monomial Pochhammer 公式：Δ=3/2,7/3,3,5/2,2,4，四种 source、n=0,…,5，含非零角动量与有限支撑零。
- 两个独立推导得到的无限级数精确闭式；Δ=3/2 ground binding 的精确 π 表达式。
- Δ=3/2,3,5/2 的七个完整块，精确 Gram、左右 Ward、矩阵和特征多项式。
- **不预先施加 1↔3 选择定则**，用 Δ=3 的完整无限 polygamma 和得到严格零。另比较两个引擎在 Δ=2 完整四维块的矩阵。
- 两个完整二体块的 5F4 与 polygamma 表示作 35-digit 数值比较，指定容差 10⁻³⁰；报告中的 `0.e-153` 是数值求值结果，不算精确零证明。
- Δ=7/3,E=20/3,J=0 的精确 5F4 矩阵与径向 cutoff40 部分和比较，最大差约 1.14×10⁻¹³，小于预设 10⁻¹⁰。该项不是严格截断误差界；收敛依据解析 resolvent/Pochhammer 推导。

这些证书分别保存源码 SHA-256，不把重复复用同一径向 primitive 的检查相加为“独立证明数”。

### 5.2 五个独立分支及其边界

各分支初始只收到题设/约定，没有候选谱，也没有读取主二阶引擎。后续有答案交流的部分另行标记。

1. [Ground binding](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-ground/report.md>)：独立 Fock-sector 减除、全 Δ 4F3、严格吸引性、Δ=3/2 的精确和；五个真实 KG 模的直接 Fock 验证包括 1→4/2→5 stimulated ordering。
2. [重整化](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/README.md>)：不变 propagator 平方、有限质量 shift、vacuum logarithm、固定 gap 反项、完整 dressed two-point function；四个外模的原始 pair-mode 和独立求到同一一体 shift。有限 global cutoff 的不等能移被保留为 regulator 反例，而非强制修成相等。
3. [有效四腿](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective/README.md>)：全 s/t/u kernel、off-shell SW 对称化、CCR/occupation 因子、六次项抵消、全 Δ 收敛与 1↔3 径向证明；三种共同 cutoff 下直接完整 Fock 减除重现 Δ=2 二体矩阵。其正原点 Jacobi 相位与 repo 相差 (−1)^ν，因此非对角项 +8 映到 −8，报告已明确映射。
4. [Δ=2 全指标 pair](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/derivation.md>)：先独立得到有限谱，再用 □(K₁K₁) 的 exchange-collapse 和 Legendre 正交闭合全指标证明。检查 23 个 primary、20 个完整 descendant blocks、36 KG norms、512 support tests、169 Legendre pairs；另有 >35-digit crossing 检查。主研究随后复核了边界通量、OPE 的 factor2 与能移 log 因子，未把该后续核对称为第二次盲推导。
5. [一般径向超几何和](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-hypergeometric/README.md>)：独立 Rodrigues/Pfaff–Saalschütz 推导，实际积分、精确无限有理级数、Q 投影，以及带显式 tail bound 的 real-ball 部分和。半整数质量的配对算术结构是主研究随后提出、该分支批判性复核的扩展。它检验了非平凡 Δ=5/2 角动量例，并指出若丢掉“source 与物理同号频率兼容”条件，会出现额外 triple-pole periods；没有假定未证明的 π、ζ(3) 代数独立性。

第五分支不负责外腿/Bose 因子；这由主 B 基推导和第三分支的原始 Fock 比较补齐。第二分支不负责全部 pair 谱；第四分支也不把 Δ=2 的 Legendre 解推广到一般质量。

### 5.3 命令、单位与诊断

以下从本目录运行，输出名使用新文件：

```bash
sage --nodotsage -python code/cubic_effective.py \
  --delta 2 --energy 6 --angular 0 \
  --output results/cubic_D2_E6_J0_fresh.json

sage --nodotsage -python code/verify_cubic_effective.py \
  --output results/cubic_effective_fresh.json

sage --nodotsage -python code/cubic_hypergeometric.py \
  --delta 3/2 --energy 5 --angular 0 --half-integer-closed \
  --output results/cubic_D3half_E5_J0_fresh.json

sage --nodotsage -python code/cubic_hypergeometric.py \
  --delta 7/3 --energy 20/3 --angular 0 --digits 40 \
  --output results/cubic_D7third_E20third_J0_fresh.json

sage --nodotsage -python code/verify_cubic_hypergeometric.py \
  --output results/cubic_hypergeometric_fresh.json
```

两引擎都返回 B 基矩阵 A，物理能移为 λ₃² A/(8π)，不是 λ₃ A。`exact_cubic_matrix(delta,basis,half_integer_closed=True)` 接受 2Δ 为整数的质量并使用 partial fractions；默认 False 返回 5F4，偶整数仍自动用有理终止和。一般特殊函数矩阵并不自动附带任意维数的已化简本征态或严格数值区间；有限块可按正文 Gram 恢复、primary 压缩和对角化。

初次探索中，SymPy `hyperexpand` 直接对 argument=1 的某些有限答案返回 `nan`，是中间奇异改写而非原收敛级数为奇异；没有将其算作通过。最终引擎保留收敛 hyper，半整数分支改用严格 partial fractions，并显式实现 polygamma 参数平移恒等式。最终证书唯一诊断是与数学无关的 `bitcount function is deprecated`，已原样记录。独立 Wolfram 分支也记录了各自初始 wrapper/精度问题和修复后的最终运行，不将早期失败隐藏为证据。

## 6. 非手征、大 N 与一般奇次：验证范围

### 6.1 父流程的跨实现证书

[verify_extended_structures.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/verify_extended_structures.py>) 生成了 [155 项精确证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/extended_structures_exact_01.json>)，全部通过。它连接独立构造与原 Beta/Fock 引擎，而不是把独立证书复制一遍：

- 全 N radial-primary (1,1) 公式：Δ=3/2、2、7/3 和形式变量 Δ；k=2,3,4；N=k,k+1,k+3。
- 六个非手征 primary 块：独立 Racah Gram 的全部非零特征多项式与 bulk/Fock 压缩相同，并检查明确的 k! 单位转换。
- 显式 Z₃ 的 fixed-N kernel、29/36 范数，以及跨 N 原始矩阵元 1/(28π²)。这是真正的零模保护反例，不只是“尚未证明保护”。
- φ⁶、Δ=2 的完整 E=2N,J=0 ground-column 方差，在 N=4,5 用完整矩阵核验，N=6,20 用独立 occupation action 核验；六组一般 k 的线性 source Rodrigues 积分。
- 两个固定层精确矩阵、无理 Δ* 的精确频率相碰及 N⁻¹ᐟ² splitting 系数，使用 AA 而非浮点阈值。
- n=3,5,7,9,11,13、Δ=(n−1)/(n−2) 的全部非零 source 积分、终止零、原始 Fock (n−1) 阶有限差分、N≤n−1 的完整 ground blocks 和顶端 parity；φ⁵ 活跃 pole 必须抛出错误，不能静默删掉。

这些仍是有限交叉证书；全质量秩、Gaussian limit、全奇数严格负性依靠正文的解析证明。

### 6.2 非手征：两个不同的独立证明层次

[cluster 分支](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/README.md>) 从实际 bulk-origin evaluation 得到 identity channel，建立有限 Racah Gram、三角 spectator-operator 变换和全 Δ>1 秩证明。它起初没有收到候选秩公式。

- [2754 项精确结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/exact-checks.json>) 包括 1260 个 rank blocks：k=3,…,6，七个有理质量，0≤Q≤P≤8；另有 30 个独立 bulk/Fock 谱比较、形式 Δ 的低阶 Sturm 检查、30 个 Casimir/spin-one 冗余恒等式、Racah 范数与 involution。
- [138 项直接微分算符检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/operator-checks.json>) 不导入 channel/Fock 引擎，核验 coherent-primary matrix element。
- [非手征零模检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/nonchiral-zero-checks.json>) 含 k=3,…,6 的 12 个形式 Δ primary/kernel 恒等式，以及完整共振反例。

随后另起 fresh reviewer，仅给约束 x,y、多项式 H 和求 span 维数的问题，**没有给候选答案或前一份报告**。[独立代数复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/review.md>) 重新证明全 Δ 秩，并找到四坐标 boundary specialization，完全避免一般 hypersurface 不可约性假设。[实际证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/exact_checks.json>) 直接展开原约束多项式：163 个有理参数 rank、16 个形式 Δ generic rank、完整 scalar 关系及 N=3 反例。

这个 fresh review 独立证明的是多项式引理；物理 channel identification 与三角 intertwiner 由第一分支和父流程另行核验。正文的简化 scalar coefficient-additivity 证明是之后的协作整理，不冒称出现在最初盲推导中。

### 6.3 固定层与完整共振分别验证

[固定层分支](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/large-N-fixed-shell.md>) 独立推导全部固定 (P,Q) 的极限，而不是只拟合数个低谱。

- [checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/checks.json>) 保存四个 9/16 维完整 fixed-N 矩阵的精确比较、稳定 primary 维数、无理质量频率碰撞的 AA 系数及有限 N 收敛数值。数值表不是误差定理的证明。
- 父流程随后提出的全 N (1,1) 谱族，分支另做 36 个 normalized-Fock 精确矩阵等式；标为 collaborative extension。
- gap/dense-defect 对比也是父流程随后提出的扩展。[独立 representation 检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/gap-density-checks.json>) 由 total raising 构造核验 120 个最低 module projection probabilities，另查 390 个 quartic-mode bounds、四个 rational constructions 和 irrational zero 的不可约多项式。全指标 gap/density 由解析推导证明。
- [Wolfram 检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/symbolic_checks.wl>) 的六个 Boolean 条件全部 True，无 messages，包括 ε₂₂ 的 irrational-zero factorization。

[完整共振分支](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/README.md>) 独立发现 φ⁶、Δ=2 的 O(g√N) 源，并证明 Gaussian ground spectral measure：

- [occupation-action 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/verification.json>) 重现完整 E=8 的 9×9 矩阵，并在 N=4,10,30,100,1000 核验精确方差。
- [符号矩](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/symbolic_moments.json>) 与 [大 N 数值](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/moments_extended.json>) 展示三、四阶矩及收敛很慢的有限 N 例子。Gaussian 结论来自 finite-path moment/core 论证，不来自这些数值。
- 全 φ²ᵏ 的线性源公式是父流程随后提出、该分支批判性复核的推广；七个独立 Wolfram Jacobi 积分通过。不是第二次 fresh discovery。

两种大 N 空间和极限次序不同。fixed-N 正子算符的极限，不能替代整数 Δ 下完整 φ⁶ 块；Gaussian 也不是整个增长矩阵的范数收敛。

### 6.4 φ⁵ 与一般奇次的证据

[quintic 独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/report.md>) 在未收到候选值时自行得到 quartic log、必要 matching 和 Δ=4/3 的最高四体精确值。

- [Wolfram 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/wolfram-results.wl>)：9 个精确 checks 全 True，messages 为空，覆盖 UV series、组合系数、直接 Jacobi 积分和有限交换和。
- [Sage 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/sage-results.json>)：8 个精确 checks，包括独立的 Fock occupation 四阶差分；两个实现均不导入父流程引擎。
- 一般奇数 n 的有限族与全 k midpoint negativity 是父流程提出后的 [批判复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-audit.md>)。φ⁷ 的 sixth difference 由两套 CAS 重算，另有 k≤30 的 exact sign samples；全 k 证明是 pairing，而不是这些 samples。

[运行诊断](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/check-results.md>) 保留了一次 supplemental midpoint 脚本误用 Python 整数除法的浮点问题；显式 QQ 修复后重新运行，未算成通过。

### 6.5 复算命令与集成审读

以下命令从研究目录运行；带 output 的路径必须尚不存在：

```bash
sage --nodotsage -python code/verify_extended_structures.py \
  --output results/extended_structures_fresh.json

sage --nodotsage -python independent/nonchiral-clusters/channel_gram.py \
  --delta 2 --k 3 --P 2 --Q 2

sage --nodotsage -python code/odd_highest_binding.py --degree 5 \
  --output results/quintic_highest_fresh.json

sage --nodotsage -python code/odd_highest_binding.py --degree 7 \
  --output results/septic_highest_fresh.json
```

Racah CLI 的单位为 λ₂ₖ/[2k!(2π)ᵏ⁻¹]；odd CLI 的单位为 λₙ²/[4(2π)ⁿ⁻²]。后者只计算最高连接量，不是一个完整 EFT 谱引擎；nonterminating 输入明确标为 cutoff partial sum，active source pole 会报错。各独立分支的全部重跑命令见其本地 reproduction guide，避免覆盖已保存证书。

最终集成文本另经原分支协作审读，不计作 fresh 推导。审读纠正了一个含时模乘积的共轭标记，并明确 Gaussian 正方差/缩窗结论要求 source set 非空；补明了 fixed-J reduced-resolvent domain、排除额外同外腿数导数形变，以及一般奇次 meromorphic continuation 的范围。所有数值系数、阶乘和矩阵单位均通过对照，没有把尚未实现的完整 φ⁵ 二阶谱或全阶 mean-field 极限列为已完成。

### 6.6 完整正性分类与首个负谱块

父流程从非零线性 source 与低粒子数零对角推出正性 iff 分类，再用 spectator-free r↔s 活跃 channel 求得第一个负谱块的完整谱。随后 fresh 子代理只收到三条已建立的首阶段输入及“寻找首次负谱和完整阈值谱”的题目，没有收到候选阈值、谱公式或新代码。

[独立证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/theorem.md>) 得到同样的 E*=(k+b)Δ、唯一负根及 a 为偶数时额外的 κₖ,c 族。[独立代码](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/check_first_threshold.py>) 自行枚举 Bose basis，在 y 坐标作 Jacobi/Beta 积分，并使用另一有理 oscillator basis；完成矩阵后才与原引擎用显式相位/对角相似变换比较。

[精确结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/exact_checks.json>) 的完整阈值块与惯性 (+,−,0) 为：

| k, Δ | 完整维数 | 惯性 |
|---|---:|---|
| 3, 2 | 9 | (3,1,5) |
| 3, 3 | 9 | (1,1,7) |
| 4, 3/2 | 9 | (1,1,7) |
| 5, 4/3 | 23 | (4,1,18) |
| 4, 2 | 20 | (3,1,16) |
| 5, 5/3 | 19 | (1,1,17) |

另外穷尽 k=3,Δ=2 阈值以下 21 个、k=4,Δ=3/2 阈值以下 78 个非空完整 (E,J) 块，全部 exact PSD。惯性由精确 Gram congruence 确定，不用数值 eigenvalue 阈值。

父流程的 [270 项证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/even_positivity_exact_01.json>) 是不同用途：42 组 k=3,…,8 的最小 two-state compression 验证 source、范数、零对角、负 determinant，另有 Zₖ 的六组一般 k 检查。它不把不变性赋予任意 two-state compression；推负谱只需 min–max。完整阈值解析谱则另由活跃 primary 的真正不变二维空间得到。

实际公共 CLI 输出已保存为 [φ⁶ 阈值](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/threshold_phi6_D2_01.json>)、[φ⁸ 非整数阈值](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/threshold_phi8_D3half_01.json>)、[φ¹⁰ 阈值](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/threshold_phi10_D4third_01.json>)，三次 `--check-full` 的完整特征多项式、rank 和 Gram 均通过。

```bash
sage --nodotsage -python code/even_threshold_spectrum.py \
  --delta 3/2 --k 4 --check-full --output results/threshold_fresh.json
sage --nodotsage -python code/verify_even_positivity.py \
  --output results/even_positivity_fresh.json
```

单位为 λ₂ₖ(2π)¹⁻ᵏ/2，别与 channel Gram 的额外 1/k! 单位混淆。这一闭合结果属于完整首阶 secular family，不是未投影等时相互作用的正性定理。

## 7. 交付完整性

另外检查正文和独立报告的本地链接、行号范围、数学环境成对计数，全部本轮 Python 源码的语法，以及已执行证书与当前源码 SHA-256 的一致性。这是交付核验，不替代数学证明或 LaTeX 渲染。

核验定位到旧手征报告指向首阶正文的过期行号，已只修改链接目标到当前 §§8.3–8.5；没有改动该报告的数学内容。另有两个自动解析误报：resolvent 乘积被误认成 Markdown 链接，以及 TeX 行间距被误认成 display-math delimiter；读取原文确认后改进核验规则，正确数学正文保持不动。


