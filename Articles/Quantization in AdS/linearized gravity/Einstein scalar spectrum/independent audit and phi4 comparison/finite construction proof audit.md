# FIN-01–05：有限构造、物理度量与完整后裔的证明审查

**五项有限构造定理在所给自伴 pair input 与正离散系列表示下成立；不依赖后面的核分类、聚簇渐近或可积性。** 本轮补读了 [有限谱主章全文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/finite_chapter.md>) 与 [有限谱附录全文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/finite_appendices.md>)；[原 PDF](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>) 的 PDF／印刷页27–28已实际查看，核对 Casimir、primary 投影及物理谱投影公式。不是把原验证套件通过视为全指标证明。

## 1. FIN-01：真正的 Bose primary 与完备性

约定 Δ>1，单侧单粒子 \(\|z^p\|^2=p!/(\Delta)_p\)。同时置换左右粒子标签，不能分别把两个手征空间对称化。全 lowering 的共同核正是
\[
[\operatorname{Sym}^P V\otimes\operatorname{Sym}^Q V]^{S_N},
\quad V=\{\textstyle\sum_i Z_i=0\}.
\]
其 Molien 字符来自群平均投影的迹；每个 occupation orbit 都计入真实 orbit-size 权重。

pair Casimir 的特征值 \(C_k=(\Delta+k)(\Delta+k-1)\) 在物理范围彼此不同，因此有限谱插值给出真正的正交投影。给定实 pair 系数后，求和与对角 Bose 作用及两个 global algebra 对易，保留 primary 空间。正 Gram 将坐标矩阵相似变换为 Hermitian 矩阵，故实谱、代数／几何重数相等和本征空间完备都成立。

(5.8) 的显式 projector 也正确：相邻 lowering 项相消，\(U^jD^j\) 自伴，且在 lowering 核上为恒等；非空乘积分母在 Δ>1 域严格为正。N=0 的真空须单独处理，不能把该式的 N≥1 条件删去。

**新增机器检查：** 用本次独立有限 occupation 表示，在 N=1,2,3,4，次数 (1,1),(2,0),(2,2),(3,1)，Δ=7/3，直接构造 (5.8)，验证幂等、物理度量自伴、与共同 lowering 核完全相同，共48项 exact checks。它们包含在 [最终166项证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_stable_certification_02.json>) 中；这是自由表示论检查，不依赖 φ⁴ 或 Einstein 系数。

## 2. FIN-02：谱投影和特殊质量

先固定参数并取 square-free polynomial m，才可定义
\[
p_a(M)=\frac{[m(t)/(t-a)]_{t=M}}{m'(a)},\qquad
\mathbb P_a=\Phi p_a(M)\Gamma^{-1}\Phi^\dagger.
\]
\(\Phi^\dagger\Phi=\Gamma\) 保证幂等，\(p_a^\dagger\Gamma=\Gamma p_a\) 保证物理自伴；省略 Γ^-1 一般错误。

特殊质量应在选 pivots、rank、square-free 因子之前代入。泛型 eigenvector chart 的极点不表示物理奇性。有理／代数参数给严格根隔离和代数本征空间；一般实参数的有限数学定义不承诺不可计算实数的终止 oracle。原文已正确区分这些意义。

## 3. FIN-03：正像压缩没有丢失物理正谱

F 是单 pair、spectator 对称的完备 frame，Γ=F†F>0，D 在每个 pair channel 上为正标量，故与 Γ 对易。令 S=Π_BF，\(T=\binom N2S^\dagger S\)，则
\[
A_N=\binom N2 S D\Gamma^{-1}S^\dagger,
\quad M_{\rm aux}=D\Gamma^{-1}T.
\]
\(D\Gamma^{-1}>0\)，故辅助矩阵相似于正半定 Hermitian 矩阵。取 \(L=\sqrt{\binom N2}S(D\Gamma^{-1})^{1/2}\)，物理算符与辅助 Hermitian 算符分别为 LL†、L†L；SVD 给出所有非零本征值及重数相同。辅助零向量不等于物理零态。独立 Gram 列选择保留正像，所减去的物理零模数是 d_N−rankT。

同 pair／相交 pair／不交 pair 的双陪集计数分别为 1、2(N−2)、binom(N−2,2)，得到 (5.13)，并不假设相交 pair 算符对易。

## 4. FIN-04：全 N 编译器的全指标理由

附录 F.1 的二元 CG 公式逐项 lowering 消去，范数由有限 Chu–Vandermonde 求和得到；没有无穷级数收敛假设。F.3 的 local Racah 表是实际交换两个等权叶子的多项式重展开，其 phase 与 Gram 转换均保留。

因此相邻交换满足真正的置换群关系，而
\[
\Pi_m=\frac1m\left(I+\sum_{i<m}U_{(im)}\right)\Pi_{m-1}
\]
是精确的左陪集平均。任意耦合树／交换词的等价来自同一个物理 intertwiner，不来自有限次谱匹配。正 Gram 消元只换坐标，故所得正像与 FIN-01 相同。

本轮没有冒称又重写了一套完整全 N Racah 编译器。新增独立 CG／物理换位检查见 [cluster 全证明审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/cluster full proof audit.md>)；新 φ⁴ 多体实现则是另一条直接 occupation 路线。原复杂度是指定 dense-arithmetic 表示的 assembly 计数，排除系数 bit growth、根隔离成本，也不声称 N,P,Q 同时变化时多项式复杂度。

## 5. FIN-05：完整后裔与能量 shell

每个 primary 的双手征 raising 模均无 null state，其范数为两侧 \(n!(2h)_n\) 的乘积。global covariance 保证其一阶系数不变；按全部 primary 次数求和恰好恢复 full-shell 字符。重复代数根通过多项式 gcd／square-free 分解合并，不靠小数比较。

不同粒子数能共享同一自由 E,J，尤其整数 Δ；把它们直和而不是任意混合，需要 PHY-02 的正常形保粒子数结论。这个物理前提已由 [完整块 Ward 审查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/full block closure audit.md>) 单独处理；不能反向拿有限谱装配证明封闭。

[新任意 N 构造](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md>) 实际检查了602个块的完整后裔嵌入、Gram 与 shell 特征多项式乘积。它验证了这套普适有限构造在不同 pair multiplier 下的实现，不替代 Einstein 动力学输入，也不证明大标签余项一致性。
