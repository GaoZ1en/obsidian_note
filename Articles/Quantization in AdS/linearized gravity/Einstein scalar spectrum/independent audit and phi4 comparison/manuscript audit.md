# Einstein–scalar 研究稿审查：判定、证据与精确边界

## 1. 判定先行

**给定稿件明确的首阶物理输入及 canonical/Weyl 减除处方，核心有限谱构造在精确条件下成立，并经受住了本轮新增的敏感检验。现有核查尚不足以把整份190页、74项命题称为全部获得独立证明。** 没有发现推翻核心两体系数或有限 Bose lift 的反例；主要限制在完整引力简并块的独立顶角重建、共同响应域／端点条件，以及量子处方的适用范围。

原稿自身已声明不少条件，不能把“没有证明处方无关性”“没有统一有限 G 的大激发余项”“抽象 pair deformation 不一定局域”当作它声称了相反命题之后的错误。审查的任务是核实这些条件如何进入证明，而不是删去条件后再反驳。

本轮的结论分三层：

1. **执行复现成立。** 原完整验证套件在全部指定依赖版本下通过，源码与保护文件未改；这是执行证据，不等于74个定理的独立证明。
2. **物理输入有实质独立支持。** 新的非圆对称约束／虚边界交换计算、激发态热迹和全指标端点恒等式均通过，且有另一个 fresh 复核者重新计算敏感归一化和边界项。
3. **完整物理终点仍有明确未独立完成之处。** 最小双标量—双边界引力子块的全部 quartic contacts 未重建；不能由已压缩的 scalar pair Hamiltonian 反证封闭。响应桥梁仍按指定共同域理解；所有极限都保持其次序。

逐项证据范围见 [74项命题覆盖](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/claim coverage.md>)。它明确保留未独立审完的解析／渐近命题，不作默认通过。

## 2. 对象、版本与约定

审查对象是 [研究稿](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>)，题名页日期2026-10-19，190页，印刷页码与 PDF 页码一致。补充 [研究包](</Users/koishi/Downloads/ADS3_Master_Research_Package.zip>)的 PDF 与外部 PDF 字节哈希不同，但全部190页的 `pdftotext -layout` 输出完全相同；本轮未声称两者像素逐页相同。原始标识见 [版本记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/input_versions.json>)。

已实际看图核对的关键内容包括自由模、约束方程、angular 2×2、主要两体系数、EX-01、稳定 N 坐标与低缺陷结构。正文精读与计算聚焦物理接口、有限构造及结构比较；不是190页所有公式逐个重新推导。

共同约定：L=1、signature(−++)、κ²=16πG、Δ>1、m²=Δ(Δ−2)、source-free fast falloff、中心光滑、固定边界 cylinder／clock、Brown–Henneaux；仅 quotient proper diffeomorphisms，不能删去有渐近荷的边界引力子。CPS 对齐 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) 的边界／角点和自由振子约定。

目标为每个固定有限自由简并块的

\[
E=E_0+Gg+o(G),\qquad
W=16\pi[\mathcal K_4]_{22,\mathrm{res}},
\quad \mathcal K_4=H_4^{\rm con}-\sum_{m\ge2}m\{D_m^\dagger,D_m\}.
\]

g 不含 G；本文所有给出的引力矩阵均采用这项能移系数归一化。完整波函数还含 inverse dressing；不得将 normal-form scalar branch 等同未约化空间的裸 scalar vacuum compression。

## 3. 最有说服力的新增引力检验

### 3.1 非零边界交换的 angular 2×2

在 Δ=2、两粒子 level (P,Q)=(1,1) 的归一化 Fock 基

\[
\{|u_{0,0},u_{1,0}\rangle,\ |u_{0,1},u_{0,-1}\rangle\}
\]

（此处模标签为 n,j），新写的 y=√(1+r²) 源方程实现得到

\[
\mathsf C=
\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},\qquad
\mathsf X=\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
\]

总矩阵的特征值是 −56/5、−1368/35，分别对应原稿的 ground descendant 和 radial primary。**删掉 X 会破坏正确结果。** 不是以目标 γ 反推积分。

新实现独立求解20个 signed sources，核查 scalar elliptic equation、两条 momentum equation、所选非全局齐次数据和边界条件。另一条实际 metric/Christoffel 计算重查协变散度与 Laplacian；fresh 复核又独立检查全部源的 Cartesian spin±2 正则性及边界积分。高精度原径向积分仅作为数值诊断，不宣称区间误差认证。

### 3.2 非圆对称 1→3：两个非零数精确相消

\[
 u_{n=2,j=2}\longrightarrow
 \frac{(a^\dagger_{0,0})^2a^\dagger_{0,2}}{\sqrt{2!}}|0\rangle,
\qquad E_0=8,\ J=2.
\]

采用相同能移系数 g 归一化，约束与边界部分分别是

\[
\mathsf C=\frac{2\sqrt{10}}{3675},\qquad
\mathsf X=-\frac{2\sqrt{10}}{3675},\qquad \mathsf C+\mathsf X=0.
\]

所有六个 complementary signed-leg 配对保留。fresh 复核从 labelled 四次变分重新得到重复模除以 √2，而非2；重新积分得到同一非零边界贡献。这是对 Ward 封闭结论的一项有效反例搜索，不是只测试本来没有边界交换的圆对称情况。

原主要 physics wrapper 的64个 direct-K4 通道和12个 ground-angular quadratures并没有覆盖这种非零交换重算；这说明新增检验有价值，**不说明原程序使用目标系数拟合**。原 direct-K4 evaluator 的有限 source integral 与 free-CG 重建是独立于目标 γ 的。

详细推导、源数据与逐项边界检查见 [引力物理接口审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/gravitational interface audit.md>)、[源方程结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/gravity_source_audit_02.json>)、[fresh 归一化复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh gravity normalization review.md>)。

### 3.3 哪一块没有完成

Δ=2、E0=4、J=0 的偶标量宇称简并块还含双边界引力子态。其与两基态标量间的完整 order-G offdiagonal，需要未压缩的 quartic mixed contacts、约束和 cubic exchange 的同一处方装配。

本轮只独立取得已知 mixed-cubic 中间态贡献，未从完整未约化作用量重新构造全部接触项。因此**完整混合矩阵未验证**。不能把所需的抵消接触项设为负的 exchange 后再“验证”总和为零。原稿的全标签封闭仍由其 transported Brown–Henneaux Ward charge 论证承担，而不是由本轮有限 pair 矩阵替代。

## 4. 一体量子减除：有证明，但处方不可省略

Appendix B / PHY-08 不是“只用对称性宣称自能为零”。它包含全指标 ground/internal 约束归约、热迹 Ward transfer、Newton reconstruction、端点展开、完整 finite-regulator tadpole subtraction 与局域 kinetic counterterm 的匹配。

本轮独立审计在其明确处方内支持结论：物理 gap 固定后所有固定单粒子标签的一阶能移为零。新增证据包括：

- 170项精确检查：泛型六系数系统／ODE／Green endpoint、20个外模局域矩与 Casimir 检查、20条等时完整热迹的独立解析求和及 pole/finite-part 比较、stress／Legendre／边界项检查。
- Δ=3/2,2,5/2,3，外模 (n,j)=(0,0),(0,1),(1,0),(1,1),(2,0)，两条 strict-cone 时间路径与四个尺度，共160次有限热迹。最高壳5600，解析截断尾界最大2.89×10⁻¹²；浮点舍入没有区间认证。
- 80个等时点与独立闭式相符；不等时外推只是有限尺度支持，不称为精确零或另一个重整化方案。

这里也获得了真正有用的反例，约束结论的可用方式：

1. 漏掉共同 counterterm 的外腿权重，即使固定 ground gap，激发态仍可错误地留下有限余项。
2. 额外加入有限 clock-dependent kinetic term 可改变激发态 gap；此项违反原处方所恢复的 Ward 条件，不能被“只固定一个质量”自动排除。
3. 原稿 radial cutoff 先移除的次序不可任意交换；存在径向—时间联合路径使 counterterm 的标量边界变分留下非零常数。

这些不是原处方内部反例，而是对更强表述的明确反例。没有证明任意协变调节器／有限反项选择与该处方等价。完整量子受约束 Hamiltonian 的识别与 graviton-external 块仍须分别处理。详见 [一体减除审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/one-body subtraction audit.md>)。

## 5. 闭式 pair kernel 与响应桥梁

应保留三种不同证据：

- canonical constraint source 的有限求解，直接定义每个指定模矩阵元；
- 在 action-derived global intertwiner 和匹配 source/Hessian 域上的 Einstein–Casimir 递推及局域 annihilation source；
- 与某一连续 covariant response inverse 的比较，需要 lapse/shift reconstruction、规范可达与时间端点条件。

有限时间 de Donder 可达性不自动推出长期端点 B(T)/T→0。Δ=(1+√5)/2 的特定 log-free gauge 障碍也不等于物理 canonical coefficient 发散。Δ=3/2 的 ground 表达式是可去奇点，消去后 γ00=−9/2。

原稿 PDF24页已经明确不提供一个完全不使用对称性的、将全部 canonical 有限和直接求成三分支闭式的全指标证明。不能把这条未完成替代路线包装为本轮完成；也不能因缺少这条路线，就否定它在明确匹配域中的另一条证明。

**依赖记录可改进之处：** Appendix B.2 的 thermal trace 控制使用闭式 pair kernel 的多项式增长，而 PHY-08 的登记依赖未显式列 PHY-05。需补记该依赖，或直接从 canonical constraints 导出足够增长界。这是依赖遗漏，不是已经证明的循环论证。

## 6. 数学下游：哪些已实质审查

### 6.1 有限构造

Bargmann monomial norm 为 p!/(Δ)_p，左右相乘。必须取同时 S_N 不变，primary 是两总 lowering 的共同核。pair Casimir 的有限谱投影、正物理 Gram 和 W=Σpairs v_ij 足以给出有限特征多项式、物理重数与 descendant 复制。

非正交矩阵满足 M†Γ=ΓM，不要求 M 是 Euclidean Hermitian。正像压缩 TT† 与 T†T 只有非零谱及重数一致，辅助核不等于物理核。特殊质量必须先代入再求 rank、minimal polynomial 和 eigenspace。

本轮 [独立 pair-support 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/pair_support_audit.py>)只从 Casimir 特征多项式和字面 simultaneous S3 平均构造，不导入原 Fock engine／Racah 表：

- Δ=3/2,2,7/3，共156个三粒子块，覆盖首核阈值与 mixed saturated examples，Hilbert 核计数全部相符。
- 12个谱例明确构造物理 Gram 并核查 self-adjointness。
- 5个质量（含1001/1000的 BF 邻近值），k,ℓ≤14 的偶通道支撑检查通过。

[结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/pair_support_audit.json>)明确标注：这里验证**给定 Einstein multiplier 的数学后果**，不是又一次从引力作用量计算该 multiplier。

### 6.2 EX-01 的非平凡证明步骤

对 Appendix K.1–K.4 作了逐结构审查：

1. 正有限 Gram 使 invariant collision filtration reducing，得到 pair-k≥r 与 δ^r 整除等价。
2. 共同 kL≥kR+4 给 Vandermonde⁴ 因子；其余 flags 不能删掉。不同 collision primes 不必 comaximal，只需 UFD 的 prime valuation。
3. Tensor–Hom 应用复杂双线性配对 A=CΓ，不是反线性 Riesz，也不能把 Γ 换为单位矩阵。
4. 有限 homogeneous map 的唯一 pure-order-Q normally ordered symbol 把所有理想幂条件转成 normal derivative 系数的整除条件；不能把 symbols 的乘积误写成可变系数向量场的顺序复合。
5. 显式 logarithmic frame 的行列式只含 Vandermonde；在每个高度一 collision prime 局部化后去除全部可能极点，再用 UFD 得全局 polynomial coefficients。这一步真正处理了多重交叉，未偷换 symmetric power 与 intersection。

这些步骤给出所宣称的 Hilbert series；有限独立扫描不是其替代证明。此结论依赖准确正支撑，不依赖每个正权的具体数值。

### 6.3 不把执行成功升级为高级渐近证明

固定 Q 的 cluster/Fredholm、双大次数 coherent/soft theorem、所有较高稳定 N 层次，本轮没有逐个独立重建全证明。已复现原相关检查，并审查了关键量词与明显误用路径：

- compact 不自动推出某个有限 Schatten 类；
- weak law 不自动给极端特征值、逆矩或无调节 determinant；
- same support 不自动给 same logarithmic rates，后者需要双侧多项式权界；
- simple leading eigenvalue 与退化 leading cluster 的 1/N 展开不同；
- 任何大标签极限都是首阶系数极限，不能推出固定非零 G 下的准确谱。

没有独立审完的项在 [完整覆盖表](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/claim coverage.md>)明确留下。

## 7. 原包复现与可复算边界

[完整成功运行](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/package_reproduction_02/reproduce_all_summary.json>)：Python3.14.8，SymPy1.14.0、mpmath1.3.0、python-flint0.9.0、NumPy2.3.5、SciPy1.17.0；原 validator 允许 Python≥3.11，依赖 pins 全部严格匹配。总用时80.83秒：

| 原套件 | 本次结果 |
|---|---|
| hierarchy，11 jobs | passed |
| finite，7 tasks | passed |
| physics，111 checks及10 ancillary | passed |
| cluster，7 programs | passed |
| semiclassical，6 programs | passed |

缺失／伪 payload 与优化运行拒绝检查保留；未绕过 gate。历史 Galois certificates 未另重算，不能把上述运行宣称为包括所有历史记录。

[第一次失败记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/package_reproduction_01/reproduce_all_summary.json>)保留：app-bundled Python3.12.14 的 hardened-runtime Team-ID 策略拒载新装 NumPy/flint native wheels。没有关闭系统安全、重签二进制或改 validator；另建普通 Homebrew Python 的隔离环境后通过。失败是环境失败，不是谱反例。两次原始记录均未覆盖。

运行原包时请选尚不存在的 output directory；不能复用本次目录来抹掉证据。独立 φ⁴、源方程、热迹和结构脚本的环境及命令见各笔记。重复执行同一脚本不计为新的独立证明。

## 8. 原有短笔记的定位建议（未修改）

[general N-scalar spectrum:19](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/general N-scalar spectrum.md#L16-L22>) 写 E=E0+Gg+O(G²)。仅据本轮一阶结果，这比主稿的 o(G) 强；应补充控制下一阶与谱分支的假设，或改为与主稿一致的 o(G)。本轮只报告，不修改该原文。

本轮对主稿的有效增益不是“它所有定理都错了”或“套件通过所以它全对了”，而是：补上真正有区分力的引力例，确认既定量子处方的实质推导，定位尚未独立闭合的全块问题，并由局域 φ⁴ 对照得到新的、可证明的多粒子结构。其来源分层见 [普适性与适用范围](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/universality and limits.md>)。
