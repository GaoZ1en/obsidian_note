# 第二轮全稿审查与 φ⁴ 新结果

## 总判断

**原稿主要谱定理在各自明确的物理输入、响应域和极限条件下成立；但并非原文每一句都无需修正，也没有证明无条件的全阶量子引力谱。** 本轮将全部74项注册命题逐项推进到证明审查，补齐了之前仅复现套件或只审少数例子的 CL、SC、EX/ST/UN 及形式物理部分。找到六处局部文字／短证明修正、两处应显式保留的范围限定，没有找到在这些精确条件下推翻核心谱定理的反例。

同时，固定 AdS₃ 实标量 φ⁴ 已实现 **任意有限 N 的完整精确谱构造**，并得到了新的全 N 谱族、三粒子秩定理、谱上缘定理、真实 √N 分裂，以及一个物理 S₇ 谱块。这些结果均有实际执行的证书；数值例与全指标证明分开标记。

本轮仍只新增研究文件；不修改原稿、原 PDF、ZIP、旧计算或旧审计结论。研究入口仅追加本轮链接。

## 1. 原稿：这次实际完成了哪些证明审查

| 部分 | 本轮新增的实质覆盖 | 证明报告 |
|---|---|---|
| 物理接口 | 完整齐次 quartic 的非 global Ward 投影；完整最低混合块的独立直接计算；stationary-tree、projected resolvent、leading Weyl symbol、conditional next-order repair、gauge obstruction；声明域内的全指标 pair 推导 | [物理全块与形式命题](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/full block closure audit.md>) |
| FIN-01–05 | 真实 Bose primary、物理谱投影、正像 Gram 压缩、全 N CG/Racah 证明、descendant 与 full shell 完备性 | [有限构造](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/finite construction proof audit.md>) |
| EX/ST/UN，27项 | 全指标 logarithmic-symbol 分类；完整 gap／equality；稳定 N 奇异 Gram 与真实 Jordan 分裂；全次数 low algebra；物理五次谱 S₅ | [精确结构、stable N 与普适性](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/exact stable full proof audit.md>) |
| CL，11项 | compactness、Möbius 分解、Bose parity 的谱集极限、eventual rank、四体 nullity、复 Fredholm 与 Gamma、最小正谱极限 | [聚簇完整审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/cluster full proof audit.md>) |
| SC，17项 | common restricted Riesz map、all-vector Rayleigh bound、移动边界层及 uniform trace error、相关 Grassmannian 概率、全部六个 strict inertia 证书 | [半经典完整审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/semiclassical full proof audit.md>) |

[74项逐项覆盖表](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/claim coverage second review.md>) 记录每个 ID 的判断和条件。“全部已审查”不等于74套完全重新构造的计算；上一轮 one-body 结果沿用，没有重跑后重复计数。

CL／SC 用到的 EX-01 全 N 核分类，本次由另一位独立审查者完整检查了物理 tensor–Hom、所有理想幂、局部 logarithmic frame 和逐素因子去极点步骤，不能再把它仅描述为有限扫描支持。另一方面，CL-09 的正常 Fredholm 收敛本身只需 trace-norm 论证；精确零点幂的解释才另外用 EX-01。

### 1.1 需要明确修正的六处

| 位置 | 问题与最小修复 |
|---|---|
| CL-07 附属 (CL.22) 的短证明 | 仅给 comparator 的谱不足以直接用 min–max；明确它是自伴／diagonal。若确要允许 nonnormal comparator，新审查另给了 Riesz-projector 修复。 |
| [SC 附录:59](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L59>) | 4^P 是 **平方范数** 倍数；范数倍数为 2^P。 |
| [SC 附录:31](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L31>) | 单个 pair Casimir word 一般不保 Bose 子空间；改用 compressed trace inequality，所需谱律估计不变。 |
| [SC 附录:464](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/appendix_sc.md#L464>) | 多项式 prefactor 应被 exp(+Pδ²/32) 吸收，而不是 exp(−Pδ²/32)；乘上原有 exp(−Pδ²/16) 后才得到衰减。 |
| [ST-06 的唯一性:411–425](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter9.md#L411-L425>) | b=1 时 y+f(x) 也是 monic 解；需加 weighted-homogeneous weight3b，或直接用有限展开定义。后续实际采用的基不变。 |
| [ST-11 的收缩:529–533](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter9.md#L529-L533>) | 显式写成先 N→∞ 的 first low layer，再取大质量；不能按固定有限 N 的全能量 gap 理解。N=P=6 的精确多项式排除了后者。 |

另两项范围应保持清晰：UN-02 的 compactness 在 **内部 relative-channel multiplicity** 空间，而非每个通道附带无限后裔的完整 pair Hilbert 空间；ST-10 的字符恒等式可对任意实系数成立，但 effective low pencil 仍需要指定孤立 semisimple cluster 和 graph gauge。

### 1.2 没有升级成无条件结论的部分

- PHY-04／05 的协变响应匹配要求共同 Hessian 域、相同 homogeneous data／时钟、lapse/shift 重建和时间端点条件。完整 all-index 递推证明在这个声明域内成立；额外的 Casimir-free 原始和式求和不是它逻辑上缺少的一环。
- PHY-14 的有限时间 gauge construction 不推出无限时间的 B(T)/T→0。
- PHY-12 仍缺实际重整化 AdS 的更强完整量子 commutant、next-order charge 与兼容 regulator removal。原有 o(G) 不能因此无条件改成 O(G²)。
- PHY-09–11 是精确限定的 formal／operator 定理，不等于 loop 等价、完整固定 occupation 量子谱等价或全阶收敛。

## 2. 最低完整混合块：已闭合，同时纠正上一轮记录

在 Δ=2、E0=4、J=0 的偶 scalar-parity 块中，取
\[
|ss\rangle=(b_{00}^\dagger)^2|0\rangle/\sqrt2,
\qquad |gg\rangle=a_{2,+}^\dagger a_{2,-}^\dagger|0\rangle.
\]
两位互不读取候选答案的审查者从原 canonical chart 分别得到：原始 \(\kappa^2a_+^\dagger a_-^\dagger b_{00}^2\) 系数为
\[
\begin{array}{c|c}
p^2\phi^2 &(3067/180-(74/3)\log2)/\pi\\
\eta p\phi^2 &((56/3)\log2-116/9)/\pi\\
\eta^2\phi^2 &0\\
\text{完整 cubic exchange}&(6\log2-83/20)/\pi
\end{array}
\]
四项精确相加为零。归一化矩阵元的 G 系数再乘 16π√2。

关键是非零的 ηp 接触必须保留。cotangent pullback 为
\[
P_{\rm body}=P-\kappa(\eta P)'+\cdots,
\]
该导数修正在当前零 harmonic 上消失，但边界能量中的 \(6\int\eta'C_3\) 不消失；“vacuum symmetric contraction 为零”不能删除这个算符。

**明确纠正我上一轮的记录：** [旧引力接口审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/gravitational interface audit.md>) 中的 \(+24\sqrt2/175\) 只是 n=0、Eint=8 的两条路径，不是完整 cubic sum。完整所有径向态的解析证书为
\[
C_{\rm ex}=\frac1\pi\sum_{n=0}^{\infty}
\frac{27}{(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}
=\frac{6\log2-83/20}{\pi}.
\]
各项均正，尾部为 O(n^-7)。新的 [独立完整块复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/full block independent review.md>) 同时给出每个 n 的矩公式、精确求和和端点 primitive；不是截断数值恰好接近零。

这个例子验证一个完整混合矩阵元。全扇区 scalar-branch closure 则来自独立审过的完整 quartic Ward 投影，不能用此单例代替。该证明不需要先假设更强的 renormalized one-body Ward 恒等式。

## 3. φ⁴：任意有限 N 已能算完整谱和态

采用 \(-\lambda\phi^4/4!\)、Δ>1、固定 gap 的 vacuum Wick 减除：
\[
\mathcal K_N=\frac1{8\pi}\sum_{i<j,n\ge0}
\frac{\Pi_{ij}^{(n,n)}}{2\Delta+2n-1},
\qquad \delta E^{(1)}=\lambda\operatorname{spec}\mathcal K_N.
\]
[任意 N 谱笔记与 CLI](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md>) 给出显式 Beta 顶角、occupation 作用、primary 投影、物理 Gram、精确代数根／本征空间及全部 descendants。实际完成602块、8579项精确检查，覆盖 N=2…8、三种质量，最大 full-shell 105维；不是把“写了算法”当成“已算过任意规模”。

例如 N=4、(P,Q)=(2,2)、Δ=2，以 \(c_0=1/(24\pi)\) 为单位，三个 primary 谱值是
\[
z^3-\frac{76}{7}z^2+\frac{6708}{175}z-\frac{7704}{175}=0
\]
的实根。含物理本征空间、严格根区间的 [认证实例](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_N4_P2_Q2_D2_certified.json>) 已保存。更高的七次例也有完整精确输出。

## 4. 新得到的结构，不再列为猜想

### 4.1 相邻次数的三粒子秩
\[
\boxed{\operatorname{rank}\mathcal K_{3;Q+1,Q}=Q,
\qquad\Delta>1,\ Q\ge0.}
\]
两条独立的 rectangular-intertwiner／band 证明得到相同结果。物理维数为 \([(Q+1)(Q+2)-2\mathbf1_{3\mid Q}]/6\)，因此核维数就是它减 Q。剩余一般非平衡猜想只涉及 |P−Q|≥2。

### 4.2 正谱多数变软，但顶部不消失

所有 N≥3、所有 balanced P：
\[
\boxed{\binom{N-1}{2}c_0\le\lambda_{\max}(\mathcal K_{N;P,P})
\le\binom N2c_0.}
\]
故归一化最高谱趋于1，对任意 P=P(N) 一致成立。三粒子更强：若正本征值降序为 e_j(P)，则
\[
\boxed{e_j(P)\longrightarrow c_{j-1}
=\frac1{8\pi(2\Delta+2j-3)},\qquad j\text{固定}.}
\]
这来自 compact-weight Racah 压缩的 **operator-norm 收敛**，并非从正谱经验测度趋于 δ0 推出来。完整证明及独立复核见 [进一步结构](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md>)、[独立秩与谱边审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/adjacent contact independent review.md>)。

### 4.3 纯接触作用也有真实 √N 分裂和 S₇

在 (2,2)、\(\Delta_c=(\sqrt{13}-1)/2\)：
\[
\frac{\varepsilon_\pm}{c_0}
=\binom N2-\frac{2N}{\sqrt{13}}
\pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N+O(1).
\]
已有对一般 N、Δ 的完整三阶矩阵、物理 Gram、非零 splitting coefficient 和临界失谐尺度 Δ−Δc=O(N^-1/2) 的解析 crossover。不同 pair-Casimir 路线独立复算相符。

N=8、Δ=2、(3,3) 的物理七维偶块还有 S₇ Galois 证书，排除统一根式，不排除所有可积概念。一般 N 的低谱族、奇 (3,3) 显式谱与图见 [稳定谱与共振](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md>)。

## 5. 真正仍开放的问题

- φ⁴ 的三粒子 |P−Q|≥2 一般秩，以及 N≥4 的精确全核分类。
- 正谱的非平凡重标度分布、最小正本征值尺度、N≥4 的逐个顶部谱极限。
- 更一般混合次数的显式谱族与可积结构；S₇ 仅否定根式全解，不替这些问题作答。
- 引力的完整 renormalized quantum Ward 修复及高阶余项；连续响应域、长期端点与大标签的统一控制。

所有 large-N／large-degree 结果都先作用于明确的一阶系数；不把系数的渐近自动升级为固定耦合完整 QFT 的受控双极限。
