# global AdS₃ Einstein–scalar Fock 谱：更深解析结构的独立续研

**日期：2026-10-19。研究对象：固定处方下、Δ>1、完整 O(G) scalar Fock branch。**

> 本报告的结论是：完整相互作用谱确实受到比一般有限矩阵更强的数学结构约束。此次能够严格建立的结构包括全粒子数的 Grassmannian 谱分布、递归 cluster 谱继承、泛型 leading pencil 的全指标代数线性化，以及整个手征最低斜率簇的 Gegenbauer／尖点商代数及其首个 1/N 修正。但完整有限 (N,P,Q) 的非饱和谱仍未被统一解析对角化；本报告不宣称建立了全理论可积性，也不宣称证明了普遍不可积性。

## 0. 阅读基线、原始文件与本轮的新旧边界

本轮完整读取了用户指定的 `ADS3_Fock_space_research.md`、`ADS3_Fock_quickstart.md`、`ADS3_Fock_verification_summary.json`，解包并检查了 `ADS3_Fock_research_package.zip` 的全部内容清单，对本轮使用的物理证明、核分类、谱程序和稳定粒子数程序逐项读取。独立审查又回到原始 Einstein scalar spectrum 笔记的最终证明链。

检索还找到了此前已经交付的 `ADS3_Analytic_spectrum_research.md` 及其程序包、quickstart 和验证摘要。这一额外基线非常重要：其中的 Dirichlet/Jacobi 表示、固定 Q 的原子经验谱、四粒子 cluster/Fredholm 极限、higher-rank 树形重耦合原则、Hermitian N^{-1/2} pencil、实际 Jordan 共振及若干特殊手征态，均已是既有成果。本轮没有把这些结果重新记为新发现。

原仓库核对到提交 `ff06682448838bcbb02b135bd61bc661b394cbba`。13 份 spectrum 源笔记与上一包中的冻结文本一致，唯一拷贝约定是原包每份文本额外保留一个末尾换行；该约定未被改写。完整输入 SHA-256、ZIP 解包内容的逐文件完整性检查及原仓库版本记录随本次程序包保存。原研究文件没有修改。

研究范围仍为原 Brown–Henneaux 与 scalar boundary conditions、原 quantum prescription、minimal Einstein–real-scalar theory。h=0 指 normal-form 中没有独立自由边界引力子占据的 scalar branch。约束响应、backreaction 和 virtual boundary gravitons 都保留。所有大激发或大 N 极限都是对 G 的一次能量系数作数学分析，不把 O(G) 展开擅自推广为固定非零 G 的统一高能近似。

## 1. 结果总览与证据等级

| 编号 | 本轮新结果 | 适用范围 | 性质与限制 |
|---|---|---|---|
| T1 | 完整 primary 谱的 Grassmannian 极限、正谱极限与 regularized spectral determinant | 固定任意 N≥3、Δ>1；P,Q→∞，Q/P→r>0 | 一般定理；给出整体领先谱，不给逐根全阶公式 |
| T2 | 精确 logarithmic kernel 的全 N 比例样条；零原子与精确核的严格分离 | 固定 N≥3；同上极限 | N=3 对所有 0<r<1，N≥4 对足够小的固定 r，证明宏观软正谱 |
| T3 | 三粒子主符号没有非平凡全局实解析 first integral | 任意固定 r>0；S²×rS² | 精确障碍；不排除非解析守恒量或所有量子可积结构 |
| T4 | singleton cluster 谱继承及有限族 multiplicity 保持 | 任意 N≥3、Δ>1，固定 Q 与固定源簇 | O(P^{-Δ}) 的渐近 intertwiner；只有下方谱包含，没有完整 HVZ 上界 |
| T5 | N≥5 原子对角比较算子的 uniformly compact/Fredholm 延伸失败 | 任意 Δ>1，Q=0，P→∞ | 一般障碍；该类紧扰动比较路线需要容纳增长的簇谱 |
| T6 | 全激发度 one-generator 非共振恒等式；一个可数代数例外集外 A 同时多项式线性化 | 全 (P,Q)，泛型 Δ>1 | 解决此前全指标泛型问题；未分类每个特殊代数质量 |
| T7 | 整个手征最低斜率簇的 Gegenbauer 算子、收敛 1/N 分支及全 P 的首个修正 | 任意固定 P≥2、全部 Δ>1、N→∞ | 完整 O(1) 簇及显式 O(1/N) 能量；非整个有限 N 谱 |
| I1 | 无多变量波函数展开的完整 all-N Racah/Bose 编译器 | 任意有限 N≥3，rational Δ>1，P≥Q≥0 | 新实现和明确算术复杂度；最终特征根仍可能一般代数 |
| A1 | 原 Einstein 约束方程中的独立非圆对称 1→3 检验 | Δ=2,3 的指定共振 | 新 Δ=3 原始积分证书；不能代替全指标 Ward 证明 |

本报告的完整推导作为附录 A–I 直接嵌入，因此主报告可独立阅读；同样的证明原文也在代码旁保留。程序中的有限检验仅证明相应实现或有限命题，未被当作全指标证明。

## 2. 共同物理输入与记号

能量约定为

\[
E=N\Delta+P+Q+Gg+o(G),\qquad g\in\sigma(W_N).
\]

每一条 primary 本征分支的全部左右 global descendants 继承相同的 g；完整 Fock 谱由所有 N 和所有 primary bidegrees 加上这些后裔构成。本报告聚焦真正需要求解的 primary blocks。

取 P≥Q，保留既有正分解

\[
W_N=b_N(Q)I+A_N,\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),\qquad A_N\ge0.
\tag{2.1}
\]

为了避免记号碰撞，下文把 stable pencil 的 leading derivation 记为 \(\mathscr A\)，其常数部分记为 \(\mathscr B\)：

\[
W_N=\binom N2\gamma_{00}I+N\mathscr A+\mathscr B.
\tag{2.2}
\]

因此 \(A_N\) 是整个 Casimir-bound residual，而 \(\mathscr A\) 是固定激发度、N 足够大时的 leading pencil coefficient，二者不能混同。附录为了保持程序和独立推导的原记号，仍用 A、B 表示 (2.2) 的两个系数。

同一对粒子的左右 Casimirs 有本征值

\[
C_k=(\Delta+k)(\Delta+k-1),\qquad C_\ell=(\Delta+\ell)(\Delta+\ell-1).
\]

Einstein pair kernel 的精确关系是

\[
w_{ij}=4\Delta(\Delta-2)I-8\min(C^L_{ij},C^R_{ij})+R_{ij},
\tag{2.3}
\]

R 仅支撑 |k−ℓ|=0,2，且在固定 Δ 下具有 O(1+min(k,ℓ)) 的范数界。完整 rational pair coefficients 在各构造附录中明确列出，包括 Δ=3/2 时应先消去的可去奇点。本轮所有数学映射从这一个实际 kernel 出发，没有用名称相似的模型替换它。

## 3. 两侧同时高激发：整个正谱的 Grassmannian 描述

### 3.1 极限定理

固定 N≥3、Δ>1，让 P,Q→∞ 且 Q/P→r∈(0,1]。在 R^N 中独立选两个 Haar 分布的有向二维平面，用正交标架 (u,v)、(u',v') 表示。定义平方 Plücker 坐标

\[
X_{ij}=(u_iv_j-u_jv_i)^2,\qquad
Y_{ij}=(u'_iv'_j-u'_jv'_i)^2.
\]

它们都非负且总和为 1；各条边之间有 Plücker 相关性，不能替换成独立随机边权。令 d_N(P,Q) 是真实 Bose primary 维数，则

\[
\boxed{
\frac1{d_N(P,Q)}\operatorname{Tr}f(W_N/P^2)
\longrightarrow
\mathbb E f\!\left[-8\sum_{i<j}\min(X_{ij},r^2Y_{ij})\right]
}
\tag{3.1}
\]

对每个连续 f 成立。相应 residual 的极限随机变量是

\[
a_{N,r}=8\sum_{i<j}(r^2Y_{ij}-X_{ij})_+.
\tag{3.2}
\]

特别是在 P=Q 的平衡极限，

\[
\boxed{a_{N,1}=4\|X-Y\|_1.}
\tag{3.3}
\]

这个领先分布对全部 Δ>1 相同，在 [0,8] 上有完整支撑且绝对连续。它描述的是整个正谱的领先经验分布，而非某个低秩子块。由此，任意固定 N≥3 的平衡高激发不再依赖越来越大的 Hamiltonian 矩阵来定义其领先统计谱。

### 3.2 为什么该映射成立

证明的难点不在抽象地引用“半经典极限”，而在于把物理 Hilbert space、质量参数、Bose 投影和非光滑 kernel 同时接起来。关键步骤如下。

1. (2.3) 表明 exceptional-spin corrections 在 P² 缩放后范数消失。
2. 在共同的 translation-primary 多项式空间上，质量 d 的 pair Casimir 为
   \(C_{ij}(d)=-(z_i-z_j)^2\partial_i\partial_j+d(z_i-z_j)(\partial_i-\partial_j)+d(d-1)\)。与 d₀=1/2 的差是 O(P) 的一阶算子。先比较固定多项式 trace，再在每个质量自己的正定 metric 中逼近 min 函数，可避免错误假设不同质量的 Gram 矩阵一致有界等价。
3. d₀=1/2 仅是辅助表示。精确变换 \(z^\alpha\mapsto\prod y_i^{2\alpha_i}/(1/2)_{\alpha_i}\) 将 primary 变为次数 2P 的逐坐标偶球谐函数，并给出 \(C_{ij}=J_{ij}^2/4-1/4\)。它没有改变物理理论的 Δ。
4. null coherent tensors \(((u+iv)/\sqrt2)^{\otimes2P}\) 的分辨恒等式把 trace 变成有向 Grassmannian 积分；固定长度 generator words 的 tensor-slot 展开给出平方 bivectors。
5. 真正 Bose 空间还要投影到 \(((\mathbb Z_2)^N_L\times(\mathbb Z_2)^N_R)\rtimes S_N\) 的 invariants。偶次数上有四个中心元素贡献，其他插入 word 的 twisted traces 都渐近消失。由此独立恢复
   \(d_N\sim P^{N-2}Q^{N-2}/[N!((N-2)!)^2]\)，也固定了谱分布的归一化。

这个球谐／coherent-orbit 接口与 SO(N) simple representation 的标准 coherent-state 理论相接；真正新的部分是对 Einstein 的非线性 pair kernel、质量比较和物理 Bose 投影完成上述精确连接。相关数学出处见参考文献 [R1–R4]，具体证明不依赖把其他引力理论认作当前 Hamiltonian。

### 3.3 无需对角化的 trace 与 determinant

单条 Plücker 振幅满足 \(|u_iv_j-u_jv_i|\sim\mathrm{Beta}(1,N-2)\)。因此

\[
\boxed{
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}
=-8r^2\,{}_2F_1(2,2-N;N+1;r).
}
\tag{3.4}
\]

这是次数 N−2 的终止多项式；平衡时简化为

\[
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}
=-\frac{4N}{2N-3},\qquad
\lim\frac{\operatorname{Tr}A_N}{d_NP^2}
=\frac{12(N-2)}{2N-3}.
\tag{3.5}
\]

对于任意 s>0，regularized spectral determinant 也有统一解析定义：

\[
\lim\frac1{d_N}\log\det(sI+A_N/P^2)
=\mathbb E\log(s+a_{N,r}).
\tag{3.6}
\]

最小与最大 residual 经 P² 缩放分别趋于 0 与 8r²。所有连续 spectral statistics 都可用 O(MN²) 的 M 次 Haar-frame 采样近似，与 P,Q 无关；(3.4) 等精确量无需采样。这里的 Monte Carlo 误差是积分估计误差，不是有限 P 渐近误差。

## 4. 完整零空间之外还有宏观软正谱

### 4.1 全 N 的精确核比例

既有 logarithmic Hilbert series 并未失败。对它独立作 Riemann-sum 渐近，得到

\[
\frac{\dim\ker A_N}{d_N(P,Q)}\longrightarrow k_N(r)
=\mathbb E\left(1-r\sum_{a=1}^{N-1}aV_a\right)_+^{N-2},
\tag{4.1}
\]

其中 V 在 N−2 维标准 simplex 上均匀分布。等价的闭式样条是

\[
\boxed{
k_N(r)=\frac{((N-2)!)^2}{(2N-4)!r^{N-2}}
\sum_{a=1}^{N-1}
\frac{(-1)^{a-1}(1-ar)_+^{2N-4}}
{(a-1)!(N-1-a)!}.
}
\tag{4.2}
\]

这里的 simplex 是核的计数几何；它与 (3.1) 的 Haar Grassmannian 是不同对象。

设 ν_{N,r} 是 (3.2) 的完整 residual 分布，那么删去全部精确零本征值后的归一化极限是

\[
\boxed{
\nu^+_{N,r}=\frac{\nu_{N,r}-k_N(r)\delta_0}{1-k_N(r)}.
}
\tag{4.3}
\]

它也直接给出正谱 restricted determinant：将 (3.6) 的右边减去 k_N(r)log s，再除以 1−k_N(r)。在 r=1，k_N=0；在不平衡时，ν^+ 仍然可能在零点有原子。

### 4.2 三粒子的严格结果

N=3 时 X,Y 是独立 Dirichlet(1/2,1/2,1/2) 向量。完整极限在零点的原子大小为

\[
p_3(r)=1-\frac32r+3p_2(r),
\]

\[
p_2(r)=\frac4{\pi^2}\sum_{s=0}^{\infty}
\frac{H^{\rm odd}_{s+1}r^{2s+2}}
{(s+1)(2s+1)(2s+3)},\qquad
H^{\rm odd}_{s+1}=\sum_{j=0}^{s}\frac1{2j+1}.
\tag{4.4}
\]

所有项为正，尾项有显式几何上界。另一方面

\[
k_3(r)=\frac{(1-r)^2-(1-2r)_+^2}{2r}.
\tag{4.5}
\]

本轮证明 **p₃(r)>k₃(r) 对所有固定 0<r<1 成立**。所以非饱和正谱本身有非零比例在 P² 缩放后堆到零：

\[
z_+(r)=\frac{p_3(r)-k_3(r)}{1-k_3(r)}>0.
\tag{4.6}
\]

例如 r=1/2，精确 kernel 占全 primary 的 25%；完整极限的零原子约为 35.5012640323%；两者之差意味着 **14.0016853765% 的非饱和正谱落在 o(P²) 的尺度上**。这不是新增精确零本征值。严格量词是先取 P,Q 的固定比值极限，再让缩放窗口宽度趋于零；它没有给所有这些本征值同一个次级尺度。

在 r↑1 时还有

\[
p_3(r)\sim\frac3{2\pi^2}(1-r)^2\log^2\frac1{1-r},
\tag{4.7}
\]

而 k₃(r) 只有 (1−r)²/(2r)。恰好平衡时两者同时消失，正谱极限为绝对连续。固定 Q 与 Q∝P 的两个极限因此具有本质不同的谱层次。

### 4.3 每个固定 N≥4 的严格软谱定理

令 p_N(r) 是完整 Grassmann residual 的零原子质量，即所有边同时满足 X_{ij}≥r²Y_{ij} 的概率。本轮进一步证明：**对每个固定 N≥4，都存在 r_N>0，使 p_N(r)>k_N(r) 对 0<r<r_N 成立**。而且

\[
\boxed{
\liminf_{r\downarrow0}
\frac{z_{+,N}(r)}{r\log(1/r)}
\ge\frac{16(N-3)}{\pi^2N^2(N-1)}>0,
\qquad z_{+,N}=\frac{p_N-k_N}{1-k_N}.
}
\tag{4.8}
\]

因此非饱和软谱并非三粒子的偶然现象。证明来自共享一个顶点的两条 Plücker 边之间的精确相关性。用未平方坐标 B_{ij} 定义违反事件 E_{ij}={|B_{ij}|<r|B'_{ij}|}，Haar 几何给出

\[
\Pr(E_{12}\cap E_{13})
=\frac{8(N-2)(N-3)}{\pi^2N(N-1)}r^2\log(1/r)+O_N(r^2).
\tag{4.9}
\]

把这两个事件先合并，再对所有边使用 union bound，便能把这个正的对数项与精确核比例相比较；不需要无根据地截断高阶 inclusion–exclusion。N=4 还得到一个保守但完全显式的范围：

\[
p_4(r)-k_4(r)\ge r^2/90>0,\qquad 0<r\le e^{-23}.
\tag{4.10}
\]

这里先对每个固定 r 取 P,Q→∞，再令 r↓0。尚未证明 N≥4 在所有 0<r<1 都有该软原子，也未确定这些严格正本征值的下一能量尺度。附录 I 给出独立完整证明和显式余项控制。

## 5. 一个真正证明的解析守恒量障碍

对 N=3，把两个有向平面写成单位法向量 x,y，并置 z=ry。自然 Poisson 结构是 S²×rS² 上的两个 so(3) 括号，主 Hamiltonian 为

\[
H_r=-8\sum_{i=1}^{3}\min(x_i^2,z_i^2).
\tag{5.1}
\]

**本轮定理：任意 r>0 下，若 F 在整个 S²×rS² 上实解析，且在每个严格比较区域满足 {F,H_r}=0，则 F 为常数。**

证明只需要四个显式函数。令 d_i=x_i²−z_i²。对每个 i 都存在非空区域使 H_r=−8(r²+d_i)，因此解析延拓迫使 F 与每个 d_i 全局对易。Jacobi identity 又迫使它与

\[
c=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),
\]

\[
e=\{d_1,c\}=8[x_1^2(x_3^2-x_2^2)-z_1^2(z_3^2-z_2^2)]
\]

对易。在 x=(2/3,2/3,1/3)、z=(0,3r/5,4r/5)，六个函数
\((|x|^2,|z|^2,d_1,d_2,c,e)\) 的 Jacobian 行列式为

\[
-\frac{524288}{16875}r^4\ne0.
\tag{5.2}
\]

所以四个 Hamiltonian vector fields 在一个开集张成整个切空间，F 在该开集为常数，再由实解析性推出全局结论。

这个障碍排除了把球面 superintegrable 系统的非平凡全局多项式／解析 charges 直接搬到 Einstein 主符号的路线。它并不排除能量守恒：H_r 本身只有分片解析性。分片或非光滑 first integrals、没有非平凡解析主符号的量子 charges、不同的 Bethe 类构造都不在这个 no-go 的范围内。任何进一步量子结论还需要候选 charge 的有效半经典 commutator-to-Poisson 对应，不能从本定理自动省略该假设。

另外，(3.3) 的绝对连续谱还排除了另一种精确定义的简化：平衡极限不可能是固定有限个原子加 o(d_N) 秩修正，或 normalized trace norm 趋零的修正。这是谱压缩障碍，与动力学守恒量障碍不同，也不是普遍不可积性结论。

## 6. 一般 N 的 cluster 谱递归及 N≥5 的新层次

### 6.1 有误差率的渐近 intertwiner

取一个固定的 (N−1)-粒子物理 primary \(\psi\)，内部 bidegree (p,q)，其**右定向** residual 本征值为 λ>0。固定 Q≥q，将该 irreducible cluster 与一个新的 ground singleton 耦合，左右 relative degrees 分别取 P−p、Q−q，再作全 Bose 投影与 polar normalization。

本轮证明得到 isometry U_P，满足

\[
\boxed{
\|A_N(P,Q)U_P-U_P\Lambda\|=O(P^{-\Delta}).
}
\tag{6.1}
\]

这里可以同时放入任意固定有限族源本征态，Λ 是其 residual 特征值对角阵；同一本征值的 multiplicities 不会在 Bose 投影中丢失。精确含义是目标 λ 邻域内至少有源重数那么多个本征值，并不要求这些根在有限 P 下仍然精确简并。投影前后的 Gram 还有更强估计

\[
(\sqrt N\Pi_NT_P)^*(\sqrt N\Pi_NT_P)
=I+O(P^{-(N-2)\Delta}).
\tag{6.2}
\]

因此

\[
\operatorname{dist}(\lambda,\sigma_+(A_N(P,Q)))=O(P^{-\Delta}).
\tag{6.3}
\]

精确来源是 fixed-endpoint su(1,1) Racah 系数
\(F_{uv}^{(h_1,h_2,h_3;M)}\sim C_{uv}M^{-2h_2}\)。跨 singleton 的 pair 投影中，中间模块只有一片叶子，2h₂=Δ；交换两个 cluster cosets 时，中间是 N−2 个共享粒子，故产生 (6.2)。常数有封闭 gamma-function 表达；整个论证使用实际 Einstein bad-pair channels，而不是凭其他模型的 cluster 直觉类推。

需要保持右定向基准：源值是 W_{N−1}(p,q)−b_{N−1}(q)，即使 p<q 也不能先交换手征后换一个 baseline。量词还要求源簇固定；常数没有被证明对增长的内部激发一致。

### 6.2 两次插入给出的全指标计数递归

对任意固定 m≥2、任意固定源值 λ∈σ₊(A_m^{→}(p,q))，当 N≥m+2 且固定 Q≥q 时，本轮证明

\[
\forall\varepsilon>0:\quad
\#\{\mu\in\sigma_+(A_N(P,Q)):|\mu-\lambda|<\varepsilon\}
\longrightarrow\infty.
\tag{6.4a}
\]

原因是第一次 singleton 插入产生任意多种不同的固定内部 Casimir degrees；第二次插入可同时保留任意有限个此类源态，随后让这有限个数任意增大。这里包含物理重数，沿所有充分大的整数 P 成立，没有给出随 P 增长的统一速率。

### 6.3 高粒子数不能直接复用四粒子的 compact remainder

Q=0 的两个既有原子是

\[
a_{00}=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},\qquad
a_{20}=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
\]

三粒子 ground cluster 的 exact residual 是 λ*=3a₀₀，严格位于这两个原子之上。先把它继承到四粒子，再选任意多个不同的固定四粒子内部 degree，并同时嵌入五粒子，得到

\[
\boxed{
\forall N\ge5,\ \forall\varepsilon>0:\quad
\#\{\lambda\in\sigma_+(A_N(P,0)):
|\lambda-3a_{00}|<\varepsilon\}\longrightarrow\infty.
}
\tag{6.4}
\]

对所有 Δ>1 成立，且沿所有充分大的整数 P。它与固定 Q 的原子经验谱相容，因为无界增长的族仍可只占总秩的趋零比例。

定义 uniformly compact 为：对每个 δ>0，超过 δ 的 singular values 数量在 P 上一致有界。由 min–max 原理，(6.4) 立即排除

\[
A_{N,+}=D_P+K_P+E_P,
\quad\sigma(D_P)\subset\{a_{00},a_{20}\},
\quad K_P\text{ uniformly compact},\quad\|E_P\|\to0.
\tag{6.5}
\]

对应辅助 Gram 与原子对角阵之差的每个有限 Schatten-r 范数都发散。四粒子 Fredholm 构造因而不能只保持原子对角 comparator 就原样外推至 N≥5。若继续采用这种紧扰动比较路线，就必须扩充比较算子以容纳增长的簇谱；其他 regularized determinant 或不同重整化方案没有被排除。

本轮得到的是 one-sided spectral recursion。任意多簇同时分解、全部 outlier 的上界、完整高阶 HVZ theorem 及新的全 N Fredholm determinant 仍然没有建立。

## 7. stable-N pencil：全指标泛型代数线性化

在稳定区间 N≥max(1,P+Q)，中心化 creation moments c_{pq}（p+q≥2）生成 primary polynomial algebra，\(\mathscr A\) 是一个三角 derivation：

\[
\mathscr A c_\alpha=\sigma_\alpha c_\alpha
+\sum_{\beta+\gamma=\alpha}V_{\alpha;\beta\gamma}c_\beta c_\gamma.
\tag{7.1}
\]

此前未完成的关键一般问题是：某个 one-generator slope 能否恒等于一组真正拆分后的 slopes 之和？本轮给出一个全 bidegree 的否定证明。

令 \(f_n=\binom{2n}{n}/4^n\)。将 rational functions 仅作为代数检验延拓到 Δ=1/2，有

\[
\rho_{pq}:=\lim_{\Delta\to1/2}(2\Delta-1)\sigma_{pq}
=\frac32(2f_pf_q-1).
\tag{7.2}
\]

若 s₂(n) 是二进展开中的 1 的个数，定义
E(p,q)=2(p+q)−s₂(p)−s₂(q)，则

\[
v_2(\rho_{pq})=-E(p,q).
\]

对任意真拆分 α=β₁+⋯+β_m、m≥2、|β_i|≥2，二进位进位性质给出

\[
E(\alpha)\ge\sum_iE(\beta_i)>\max_iE(\beta_i).
\]

因此 \(\rho_\alpha-\sum_i\rho_{\beta_i}\) 中最小 2-adic valuation 的项唯一，不能抵消。于是

\[
\boxed{
\sigma_\alpha(\Delta)-\sum_i\sigma_{\beta_i}(\Delta)
\not\equiv0
}
\tag{7.3}
\]

在任意激发度成立。

定义 \(\mathscr E\) 为所有这些非零 rational divisors 在 Δ>1 的实零点的并。它是一个明确的可数代数数集合，在任何有限激发 cutoff 只出现有限个点。对 Δ∉\(\mathscr E\)，存在唯一单位首项的三角多项式变量变换

\[
u_\alpha=c_\alpha+\text{同 bidegree 的可分解项},\qquad
\mathscr A=\sum_\alpha\sigma_\alpha u_\alpha\partial_{u_\alpha}.
\tag{7.4}
\]

所有有限 primary blocks 的 leading coefficient 同时对角化，所有 transcendental Δ>1 都包含在这个定理中。leading 代数也因此具有显式可交换 occupation derivations \(u_\alpha\partial_{u_\alpha}\)。

这里的“泛型”不能偷换为“每个合理的质量”。尚未证明 Δ=2 或任意指定有理质量在无限多个 degree 上都避开 \(\mathscr E\)；也没有断言 \(\mathscr E\) 的每一点真的产生 Jordan block，因为 resonance forcing 可能一同消失。已知的实际特殊质量 Jordan 例子仍然保留。更不能从 (7.4) 推出这些 occupation derivations 与 \(N\mathscr A+\mathscr B\) 对易。

这是 graded Poincaré–Dulac homological construction 在实际 Einstein slopes 上的全指标落实；新的输入是 (7.3) 的极点与 2-adic 证明，而非重新命名已有 normal-form 理论。

## 8. 一个真正可解析的全激发族：手征最低斜率簇

### 8.1 全部 Δ>1 的低簇

设 Q=0，固定 P≥2；P=0 的 ground sector 平凡，P=1 没有 primary。定义

\[
\sigma_2=-\frac{2\Delta^2(2\Delta^2+7\Delta+2)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)},\qquad
\beta_2=\sigma_2/\Delta.
\]

在 N≥P 的稳定区间，既有 exact chiral minimum 为

\[
g_{\min}(N,P)=\gamma_{00}\binom N2
+\frac{P\sigma_2}{2}N+\frac{\beta_2}{2}P(P-1).
\tag{8.1}
\]

本轮先证明 \(\sigma_3=3\sigma_2/2\)，而 \(\sigma_p>p\sigma_2/2\) 对所有 p≥4 成立。由此最低 leading slope 的整个代数恰为

\[
\mathbb C[x,y],\qquad x=c_{20},\quad y=c_{30},\quad\deg x=2,\quad\deg y=3.
\]

令 \(K=\mathscr A-(\sigma_2/2)E\)。它在该低代数上为零，在补空间具有严格正 slopes。极限

\[
q=\lim_{\tau\to\infty}e^{-\tau K}
\tag{8.2}
\]

是一个乘法性的 algebra retraction，而不只是依赖某个 Euclidean 坐标的投影。因此 \(q\mathscr B\) 仍为至多二阶微分算子。六个确定性 jets 就足以证明它在任意 degree 的公式，而不是用六个小矩阵去猜所有 P。

### 8.2 Gegenbauer 方程与整个常数能隙簇

精确结果为

\[
\boxed{
\mathscr B_{\rm low}=
\frac{\beta_2}{2}E(E-1)
+\frac{\epsilon(\Delta)}2(y^2+4x^3)\partial_y^2,
\qquad E=2x\partial_x+3y\partial_y,
}
\tag{8.3}
\]

\[
\boxed{
\epsilon(\Delta)=
\frac{54\Delta(\Delta+3)(\Delta+4)^2(2\Delta^2+9\Delta+3)}
{(2\Delta-1)(2\Delta+3)(34\Delta^3+273\Delta^2+611\Delta+240)}>0.
}
\tag{8.4}
\]

令 F_b(x,y) 在 y 中首一，满足

\[
(y^2+4x^3)\partial_y^2F_b=b(b-1)F_b.
\tag{8.5}
\]

它是参数 −1/2 的 Gegenbauer 多项式作虚参数缩放后得到的真正二变量多项式。例如

\[
F_0=1,\quad F_1=y,\quad F_2=y^2+4x^3,\quad
F_4=y^4+\frac{24}{5}x^3y^2+\frac{16}{5}x^6.
\]

对每个 2a+3b=P，常数阶有效算子的本征多项式为 x^aF_b，它给出相应物理分支的领先向量；有限 N 的态通常还有高簇混合及 1/N 修正。常数阶能隙为

\[
g_{P,b}(N)-g_{\min}(N,P)
=\epsilon(\Delta)\binom b2+O(N^{-1}).
\tag{8.6}
\]

这些分支穷尽固定 P 下所有与 exact minimum 相差 O(1) 的能级；其余手征分支与 minimum 相差正的 O(N)。同一 P 的 b 有相同奇偶性，\(\binom b2\) 不重复，因此低簇的常数阶矩阵具有简单谱。结合半单且隔离的 leading slope，可证明每条分支在 N=∞ 附近都有**收敛的整数 1/N 展开**。这个论证特意先解开了低簇，因而没有误用一般 pencil 中只保证 N^{-1/2} analyticity 的结论。固定 (P,b) 的各阶展开系数也都是 Δ 的 rational functions，并在整个 Δ>1 物理域正则；这保证逐阶解析递推的存在，但并不意味着高阶系数都已求出闭式。

### 8.3 再推进一阶：所有 P 的显式 1/N 能量

定义全 graded reduced inverse

\[
R=K^{-1}(1-q)=\int_0^\infty(e^{-\tau K}-q)d\tau.
\]

在固定 Bloch graph gauge 下，下一有效算子为 \(C_2=-q\mathscr B R\mathscr B\)。本轮证明它至多三阶：因为 R 是低代数上的 module map，两个二阶算子之间表面上的四阶项被 q 的乘法性及 qR=0 消掉。这给出

\[
C_2=(y^2+4x^3)
\left[r_0\partial_y^2+r_1\partial_x^3
+r_2x\partial_x\partial_y^2+r_3y\partial_y^3\right].
\tag{8.7}
\]

四个 r_i(Δ) 都已作为完整 rational functions 求出，物理域没有极点，附录 E §10 和 `chiral_edge.py` 保留其显式系数。这里没有留一个待对角化的辅助矩阵。

因此对任意 2a+3b=P，

\[
\begin{aligned}
\eta(a,b;\Delta)=b(b-1)\bigg[
&r_0+r_2a+r_3(b-2)\\
&+2r_1\left(\frac{(a+1)(a+2)(a+3)}{2b-3}
-\frac{a(a-1)(a-2)}{2b+1}\right)\bigg],
\end{aligned}
\]

\[
\boxed{
g_{P,b}(N)=g_{\min}(N,P)
+\epsilon\binom b2+\frac{\eta(a,b;\Delta)}N+O(N^{-2}).
}
\tag{8.8}
\]

这已经是全 P、全物理质量、完整低簇的闭式首阶展开。b=0 或 1 时 η=0，符合 exact minimum。其余分支一般是真正相互作用的非饱和态。

例如 Δ=2、P=12，整个低簇只有 b=0,2,4 三条分支，领先能隙为

\[
0,\quad\frac{10440}{1099},\quad\frac{62640}{1099}.
\]

b=2 的 1/N 系数为 \(2920079516375808/589705905019\)，b=4 的为 \(-9620027665536/24732486163\)。它们由统一公式给出，而非分别求 21 维特征方程。

### 8.4 尖点商与实际物理模型之间的连接

公因子 y²+4x³ 还有代数意义。exact chiral minimum 的 character 在 creation generators 上是 c_p↦(1−p)t^p；在低代数中即 x↦−t²、y↦−2t³，其核为尖点理想 (y²+4x³)。graph-gauge 有效算子保留这个 exact quotient，所以高于 minimum 的各阶有效修正像都落在该理想中。该论断没有自动给出每一阶的微分阶数界；本轮只完成到 (8.7) 的三阶定理和 (8.8) 的能量。

另一个经过算子层面核对的联系来自 Δ→∞ 的固定 degree contraction：令 x_i=√Δ z_i，Bargmann norm 趋于 oscillator norm，而

\[
\frac{w^{\rm chiral}_{ij}+4\Delta^2I}{\Delta}
\longrightarrow P^{\rm relative}_{0,ij},\qquad
\frac{\epsilon(\Delta)}\Delta\longrightarrow\frac{27}{34}.
\tag{8.9}
\]

因此常数能隙收缩到 rotating-boson contact problem 的 octupole 系数 27b(b−1)/68。[R7–R8] 中的 quadrupole/octupole 机制是已有先例；本轮的新结果是有限 Δ 的 Einstein 实现、完整 rational coefficients、algebra retraction 与逐阶低簇控制。

## 9. Higher-rank Racah：技术瓶颈实际推进到哪里

新 `all_n_recoupling.py` 已把此前的树形原则实现为任意有限 N 的完整编译器。它使用 orthogonal comb basis、局部三项 Racah recurrence、相邻置换和逐级 Bose coset recursion。每个 (M+1)×(M+1) 的 rational Racah table 只需 O(M²) 次有理数算术；square roots 通过精确 CG norm identity 抵消。

它对 spectator 先作 S_{N−2} fractional-parentage projection，再对选出的独立 bad-pair seeds 作完整 Bose projection。两个 Gram 都利用 projector idempotence 直接读取坐标，无须逐项积分多变量波函数。独立的正定 principal Gram minor 明确控制 rank 和 multiplicities。

令 D 为 labelled 两手征 primary 维数、r₀ 为 labelled bad-pair frame 维数、r 为 spectator-Bose frame 维数、R 为正谱秩，给出的 assembly 算术上界为

\[
O\!\left(N^3(P+Q+2)(r_0^2+rD)+r_0r^2+rR^2+r^3\right).
\tag{9.1}
\]

固定 N,Q 时，projection stage 为 O(P^{2N−4})，投影后保留坐标的 storage 为 O(P^{2N−5})，另有 O(P^{3N−9}) 的常规 assembly 线性代数。若计入完整局部 Racah tables 的缓存，N=3 程序总存储另有 O(P²) 项；N≥4 时上述坐标存储已覆盖这一项。这些是 rational-field 操作数，不是把分子分母 bit size 当作常数之后再声称真实 bit complexity 同阶。

相对显式 dense N-variable polynomial storage 和逐项 overlap 模型，这确实节省了维数因子；相对每一种可能的优化 sparse evaluator，并未证明统一 wall-clock 优势。实际小块比较有快有慢：新编译器在某些 N=5 块超过旧 polynomial Gram，在其他块尤其小 occupation/orbit 块明显更慢。报告保留全部计时，不筛选有利例子。

因此瓶颈 B 的“封闭递推取代通用波函数 overlap”已有可用 all-N 实现；“最终增长矩阵的特征根也统一解析求出”仍未完成。这里的 higher-rank Racah algebra 是由实际中间 Casimirs 生成的非交换代数，位于对角 global su(1,1) 作用的 commutant 中；它提供重耦合工具，但不同树上的非线性 Einstein pair functions 不自动属于一个共同 commuting chain。

## 10. Adversarial audit：物理桥梁与最强旧主张

### 10.1 物理闭合没有被反例推翻

审查区分了两个不同 Ward 论证。非 global Brown–Henneaux charges 有 leading-linear、κ^{-1} 的边界 oscillator 项；在完整 cubic normal form 后，能量权重投影迫使 resonant quartic 与全部这些线性坐标对易，从而不依赖独立自由引力振子。global charges 则没有该奇异项，其下一阶恒等式保证剩余 scalar quartic 是两个 global modules 的 intertwiner。仅使用 global symmetry 不足以证明 gravitational closure，旧报告的相应反例继续有效。

scalar 31 部分是从一个 irreducible one-particle module 到三粒子 Fock module 的 intertwiner。源 lowest state 能量 Δ 小于靶最低 3Δ，故它先在 lowest state 为零，再由两个 raising operators 杀掉整个 one-particle module，进而所有 normal-ordered 31 coefficients 都为零。加入 spectators 不能使这些已为零的系数重新出现。整数 Δ 下存在的 kinematic resonances 也被覆盖。

量子处方带来的低 degree 项需要分开处理。parity、正能量与 degree counting 已足以证明 branch 和 scalar number 的结构性闭合；要把最后的谱严格化为纯 pair sum，还必须使用原处方中的 common-regulator 一体 subtraction 与 physical gap 条件。不能用 classical Ward identity 代替尚未计算的 quantum coefficient。本轮未改变该物理输入，也未将形式无穷 Fock dressing 夸大成已证明的强酉算子。

### 10.2 一个新的原始方程检验

新 `raw_nonchiral_resonance.py` 从原始约束的 signed-leg equations 出发，在 y=√(1+r²) 坐标独立求解 scalar 与 momentum response；不导入旧 raw solver、pair kernel 或谱代码。对所有六个 polarizations，直接检查 ODE residual、regularity、falloff、非 global boundary condition 与积分 primitive，再分别计算 contact 和 virtual boundary exchange。

| Δ | incoming (n,j) | outgoing (n,j) | contact/G | virtual boundary/G | 总和 |
|---:|---|---|---:|---:|---:|
| 2 | (4,0) | (0,0),(0,2),(0,−2) | 96/35035 | −96/35035 | 0 |
| 3 | (5,0) | (0,0),(0,2),(0,−2) | 64/153153 | −64/153153 | 0 |

第一行是旧结果的独立方法校验，第二行提供非零 scalar mass²、非圆对称外腿的新增证据。非 global momentum response 的允许 homogeneous mode 被保留并由边界条件固定；若预先置零，会改变物理问题。两行 finite checks 支持从 Einstein action 到 pair operator 的桥梁，但全指标结论仍依赖上述 Ward 证明。

### 10.3 完整核、Bose rank 与 stable theorem

logarithmic-kernel completeness 的关键链仍成立：物理 pair-Casimir 自伴性与严格不同的过滤特征值，将高 pair channels 识别为 collision-ideal powers；Vandermonde⁴ 去因子后，必须使用物理 right Gram 得到保存每个 root-ideal power 的 normal symbol。logarithmic frame 的 height-one lattice 性质与系数环的 UFD 性质排除只藏在多重碰撞交点的额外有理系数。这里讨论的是 normal symbols 的乘积，不是混淆成变系数微分算子的顺序复合。

旧 Gram 压缩的三个 double cosets、Bose spectator completeness、positive image 与 auxiliary zeros 的区分都经新 comb backend 独立验证。11 个完整块的特征多项式与旧 differential-Casimir Hamiltonian 精确一致，包含非平凡 kernel 的块以及 N=5,6 的非手征块。

stable-(N) theorem 的一般性来自唯一 zero-excitation mode、非负双分次与 number-preserving two-body operator；只有 ground–ground 输入能产生 N² 项，其他 occupation factors 至多 affine。global covariance 再保证共同 lowering kernel 不变。独立 occupation-counting 推导也直接给出 \(\mathscr A\) 为 derivation、\(\mathscr B\) 为二阶算子，这是本轮低簇新定理的重要输入。最强旧结论均在其原范围内保留，没有为了寻找新结果而无证据削弱它们。

## 11. 验证、复现与计算证据的限度

本轮不是靠重复上一轮的全套通过状态得出结论。新增验证分成真正独立的构造。

| 验证对象 | 独立方法与已执行范围 |
|---|---|
| Grassmann 归一化 | 105 个 Casimir 单项式恒等式、35 个 Laplacian 恒等式、42 个独立 beta moment identities |
| 有限谱与新 bulk law | 24 个 N=3 块，Δ=5/4,2,3；P=16,32,64,96，r=1/2,1；另与原 exact matrices 比较 4 块 |
| Haar 积分 | 7 组全 N/r law，每组 250000 独立样本，记录种子与 standard errors；精确平均值单独给出 |
| soft atom | N=3 独立密度积分与可控正项级数；N=4–10 的独立 Beta/sphere moment 证书；3 个积分及 N=4 显式有理下界 |
| analytic-charge 障碍 | 两个独立 Poisson/Jacobian 程序给出同一个对全部 r 非零的有理多项式 witness |
| all-N 编译器 | 4 组局部 rational recurrence、N=5 Coxeter identities、11 个完整特征多项式与旧 differential lift 比较 |
| cluster inheritance | 12 个 exact rational quasimodes，含非手征和非零右 relative degree；9 组 endpoint asymptotics 到 P=10⁶ |
| stable 低簇 | generic Δ 的有限 determining jets；第三种 rank-two Bargmann projector 构造独立复算；P=8,12 跨质量完整块检查 |
| 三阶有效算子 | generic rational coefficients 重生成、不同质量的独立 differential-Casimir 检验、P=10,12 的完整 resolvent 比较 |
| 原始 1→3 共振 | 新坐标约束 ODE 与边界交换积分，Δ=2,3 全六个 signed-leg pairings |

浮点 bulk spectra 按精确的 d_N−dim ker A_N 保留物理正谱个数，绝不以浮点阈值决定 rank。很小的正本征值可能低于双精度分辨率；数据已记录这个限制。它们适合检查领先经验谱，不适合证明软层的指数小量或共同次级尺度。精确程序、符号恒等式和一般证明各自承担不同任务。

`ADS3_Deep_structure_quickstart.md` 给出从干净环境复现的命令；`run_verification.py` 可执行独立新验证和与冻结旧代码的比较；`ADS3_Deep_structure_verification.json` 汇总实际状态与完整性检查。ZIP 包含本报告、所有证明原文、独立程序、精确与浮点证书、研究图以及不改动的必要旧输入。

## 12. 哪些问题仍然开放

### 12.1 完整有限谱

没有找到对所有有限 (N,P,Q) 统一有效的 Bethe equations、单一正交多项式家族或足够多的全量子 commuting charges。已有 S₅、S₆ Galois 例子仍只排除普适根式表达，不排除更深的隐式解析方案。本轮的主谱分布、低簇特殊函数和 cluster inclusion 都超出了“再造一个矩阵”，但它们仍不是全指标逐根 exact solution。

### 12.2 高阶 cluster determinant

需要构造含低粒子数完整 spectra 的递归 comparator，并控制多簇重叠、共同 subclusters 和 Bose multiplicity。当前只有 singleton 下界，不能声称所有高 N outliers 已穷尽。N≥5 的 uniformly compact 障碍明确告诉我们应修正什么比较算子，却没有自动造出新的 Fredholm determinant。

### 12.3 软正谱的次级尺度

T2 已证明宏观软正谱真实存在，但没有判断其中多少是 O(P)、O(1)、更小幂次或指数小量。现有双精度小本征值不能可靠区分这些可能性。需要具有物理 Gram 控制的局域化估计或高精度／精确谱隔离，再讨论可检验的次级极限。r→1 与 P→∞ 的联合边界层也未被固定 r 的定理覆盖。

### 12.4 stable pencil 的一般非手征结构

\(\mathscr A\) 的泛型全 degree 线性化已经完成；整个 pencil 的 spectral curve、所有特殊代数质量、所有 Jordan forcing、分支点与分解因子仍未统一分类。低手征簇已经算到完整 1/N 系数。更高阶系数是否总有受控的微分阶数、是否形成更大的可识别算子代数，是新的具体问题。尖点商的保持本身不等价于全阶可积。

### 12.5 固定小 Q、任意 P 的精确解

旧有 Q=0、1 的有限通道结果与特殊态仍有效；本轮给出新的通用 cluster inclusion 和 N 增长时的 entire chiral low cluster。尚未得到固定 Q≥2、任意 N,P 的全部有限谱闭式公式。把这项留白称为已解决会超过现有证据。

## 13. 猜想与失败路线的准确登记

本轮没有将未证明的“普遍可积”或“普遍不可积”列为研究结论。值得进一步检验的只有以下具体方向。

| 状态 | 命题或方向 | 现有支持与缺口 |
|---|---|---|
| 已证明的失败 | 在平衡 bulk 中用固定有限个谱原子加 subextensive rank／vanishing normalized trace norm 逼近整个谱 | 与绝对连续完整支撑的极限冲突 |
| 已证明的失败 | N≥5、Q=0 仅以两个 pair atoms 为 comparator，要求 uniformly compact remainder | 3a₀₀ 附近无界增加的簇继承谱与 min–max 冲突 |
| 已证明的失败 | 对 N=3 Einstein 主符号直接构造非平凡全局实解析／多项式 classical charge | 显式 Poisson bracket-generating witness |
| 仍保留的旧负结果 | 简单 Calogero/Dunkl、commuting-projector 与指定 Kohno/Gaudin residue ansätze | 旧反例／恒等式障碍继续有效；未扩大其 no-go 范围 |
| 未证明的结构猜想 | 更高 N 谱可由带重叠扣除的 recursive cluster comparator 描述 | singleton inclusion 与 compactness 障碍支持研究必要性；完整上界不存在 |
| 未证明的结构猜想 | 低簇第 j 阶有效算子具有随 j 缓慢增长的微分阶数 | 已证首项二阶、下一项三阶；没有全阶证明 |
| 明确保留的不确定性 | 软正谱是否分成若干不同小尺度，是否含宏观指数小层 | 浮点端点有趋小现象但分辨率不足；没有据此宣布任何指数律 |

## 14. 对核心问题的回答

现有证据最支持一个分层的答案。

**有限谱的表示骨架**是 positive-discrete su(1,1) 张量积的 higher-rank Racah 中间 Casimir 代数，加上同时 Bose 投影和特殊的 Einstein pair spectral function。该骨架确定精确 matrix elements，却不自动给出一个完整 commuting Hamiltonian family。

**两侧高激发的完整领先谱**具有 Haar Grassmannian 上的几何分布，Einstein 相互作用的主符号是两个平方 Plücker 向量之间的分片函数。精确 logarithmic kernel 与这个几何零区域之间的体积差产生真实的宏观非饱和软谱。它同时给出一般 trace/determinant 结构和新的解析守恒量障碍。

**固定小右激发的高能细结构**具有逐层继承的 conformal clusters。N≥5 需要容纳无界增加的非原子 cluster multiplicities，超出了仅对 pair atoms 作 compact correction 的四粒子结构。

**固定激发、增长 N 的低能相互作用谱**具有 graded derivation、代数 retraction 和尖点 quotient。整个最低斜率簇由 Gegenbauer 方程解开，下一阶由同一个三阶算子给出全 P 的显式能移；leading derivation 的泛型全指标线性化则来自实际 Einstein slopes 的二进赋值结构。

这些都是与原 Hamiltonian 有明确算子恒等式或极限定理相连的结构。它们已经解决若干上一轮留下的全指标问题，也使其余问题变得更精确。完整有限多体正谱的统一解析求解仍然开放。

## 参考文献与来源定位

以下均为原始论文或原始研究笔记。引用它们说明相关数学结构的既有背景；本报告的具体新定理由附录中的推导承担。

- **[R1]** P. Iliev, *The generic quantum superintegrable system on the sphere and Racah operators*, Letters in Mathematical Physics 107 (2017), 2029–2045. [arXiv:1608.04590](https://arxiv.org/abs/1608.04590)。用于辨认实际中间 Casimir／球面体系，不把其可积 Hamiltonian 与 Einstein 非线性和等同。
- **[R2]** P. Iliev, *Symmetry algebra for the generic superintegrable system on the sphere*, JHEP 02 (2018), 044. [arXiv:1712.06422](https://arxiv.org/abs/1712.06422)。
- **[R3]** G. Long and N. Bodendorfer, *Perelomov type coherent states of SO(D+1) in all dimensional loop quantum gravity*, Physical Review D 102, 126004. [arXiv:2006.13122](https://arxiv.org/abs/2006.13122)。这里只使用 simple-representation harmonic coherent-state 数学，不作 loop-gravity 物理映射。
- **[R4]** H. De Bie, P. Iliev, W. van de Vijver and L. Vinet, *The Racah algebra: An overview and recent results*. [arXiv:2001.11195](https://arxiv.org/abs/2001.11195)；S. Post, *Racah polynomials and recoupling schemes of su(1,1)*, [arXiv:1504.03705](https://arxiv.org/abs/1504.03705)；H. De Bie and W. van de Vijver, *A discrete realization of the higher rank Racah algebra*, [arXiv:1808.10520](https://arxiv.org/abs/1808.10520)。
- **[R5]** S. E. Derkachov and A. N. Manashov, *Generic scaling relation in the scalar φ⁴ model*, Journal of Physics A 29 (1996), 8011–8024. [hep-th/9604173](https://arxiv.org/abs/hep-th/9604173)。高自旋多算子 cluster 构造的相关先例；本报告的 Einstein 继承定理重新检查实际 channels、Bose normalization 与 Δ-dependent Racah rate。
- **[R6]** G. Gaeta, *Algorithmic reduction of Poincaré–Dulac normal forms and Lie algebraic structure*, Letters in Mathematical Physics 57 (2001), 41–60. [math-ph/0102037](https://arxiv.org/abs/math-ph/0102037)。
- **[R7]** G. M. Kavoulakis, B. Mottelson and S. M. Reimann, *Low-lying excitations of a trapped rotating Bose–Einstein condensate*, Physical Review A 63 (2001), 055602. [cond-mat/0011303](https://arxiv.org/abs/cond-mat/0011303)。
- **[R8]** M. Ueda and T. Nakajima, *Operator-algebraic approach to the yrast spectrum of weakly interacting trapped bosons*, Physical Review A 64 (2001), 063609. [cond-mat/0012458](https://arxiv.org/abs/cond-mat/0012458)。比较 contact strength 时必须处理其相对 pair-projector 归一化。
- **[S1]** [原始 obsidian_note 仓库](https://github.com/GaoZ1en/obsidian_note)，提交 `ff06682448838bcbb02b135bd61bc661b394cbba`；`Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/`，特别是 `Unreduced OFPT calculation.md` §§70–77。
- **[S2]** 本轮输入的 Fock 四件套与检索到的 Analytic 四件套；完整只读副本、文件 hashes 与新旧结果对照均随包保留。

---

以下附录保留完整独立证明与审查记录。英文原文中的 A、B 在 stable 章节指主文的 \(\mathscr A,\mathscr B\)；其他章节 A_N 指主文 (2.1) 的正 residual。各附录的定理编号和公式编号分别局部计数。

| 附录 | 完整内容 |
|---|---|
| A | 全粒子数 Grassmann 谱定理 |
| B | 三粒子全局实解析守恒量障碍 |
| C | 全粒子数 cluster 继承与高阶紧性障碍 |
| D | 完整 all-N Racah 与 Bose 编译器 |
| E | Stable pencil 的全指标线性化与 Gegenbauer 低簇 |
| F | 原 Einstein 物理桥梁与完整核独立审查 |
| G | Grassmann 归一化与三粒子软正谱独立审查 |
| H | Stable 低簇与三阶有效算子的独立审查 |
| I | 任意粒子数的宏观软正谱定理 |

## 附录 A　全粒子数 Grassmann 谱定理

独立推导源文件：new_research/balanced/GRASSMANN_SPECTRAL_LAW.md。

### Two large chiral degrees: a Grassmannian spectral law

This is a new result of the present continuation. It is not the fixed-Q atomic law in the earlier analytic report. All statements below concern the coefficient of G in the prescribed order-G Hamiltonian; they do not assert uniform validity of perturbation theory at fixed G and arbitrarily high energy.

#### 1. Definitions and theorem

Fix N≥3 and Δ>1. Let H_N(P,Q) be the simultaneous Bose-invariant global-primary space, of dimension d_N(P,Q). Write the established Einstein operator as W_N=b_N(Q)I+A_N, A_N≥0, with P≥Q and

\[
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).
\]

Take any sequence P,Q→∞ for which Q/P→r∈(0,1]. Choose two independent Haar distributed oriented real two-planes in R^N. If u,v is an oriented orthonormal frame for the first plane, set

\[
X_{ij}=(u_iv_j-u_jv_i)^2,\qquad i<j.
\]

Define Y using the second plane. X and Y are independent, nonnegative, and each sums to one. Their components are correlated by the Plücker relations; they must not be replaced by independent edge variables.

**Theorem 1 (full primary empirical spectrum).** For every continuous function f on a compact interval containing the spectra,

\[
\lim_{P,Q\to\infty}\frac1{d_N(P,Q)}\operatorname{Tr}
 f\!\left(\frac{W_N}{P^2}\right)
=\mathbb E f\!\left(-8\sum_{i<j}\min(X_{ij},r^2Y_{ij})\right).
\tag{1}
\]

Consequently the empirical spectrum of A_N/P² converges to the law ν_{N,r} of

\[
a_{N,r}=8\sum_{i<j}(r^2Y_{ij}-X_{ij})_+.
\tag{2}
\]

The leading law is independent of Δ. At r=1 it takes the particularly simple form

\[
a_{N,1}=4\sum_{i<j}|X_{ij}-Y_{ij}|.
\tag{3}
\]

The measure ν_{N,1} is absolutely continuous and has support [0,8]. For 0<r<1, ν_{N,r} has support [0,8r²], is absolutely continuous away from zero, and has exactly one atom, at zero, of mass

\[
p_N(r)=\Pr[X_{ij}\ge r^2Y_{ij}\text{ for every }i<j]>0.
\tag{4}
\]

For any s>0, there is also a spectral-determinant limit

\[
\lim\frac1{d_N}\log\det\left(sI+\frac{A_N}{P^2}\right)
=\mathbb E\log(s+a_{N,r}).
\tag{5}
\]

All moments converge. The smallest and largest full residual eigenvalues divided by P² tend to 0 and 8r², respectively. These assertions do not determine individual bulk eigenvalues beyond their limiting quantiles, nor the scale or detailed distribution of any eigenvalues which collapse to zero in (2).

#### 2. Reduction of the physical pair kernel

Let C^L_{ij}, C^R_{ij} denote the two commuting pair Casimirs. Their eigenvalues are (Δ+k)(Δ+k−1) and (Δ+ℓ)(Δ+ℓ−1). On a pair-even channel the exact Einstein kernel has the identity

\[
w_{ij}=4\mu I-8\min(C^L_{ij},C^R_{ij})+R_{ij},\qquad
\mu=\Delta(\Delta-2).
\tag{6}
\]

Here R_{ij} is zero outside |k−ℓ|=0,2 and is the known positive exceptional-spin correction. For fixed Δ>1 its eigenvalues are bounded by C_Δ(1+min(k,ℓ)). This follows directly from the rational formula: for h=Δ+n, the spin-zero correction is

\[
-\frac{4\mu-8h(h-1)}{2h-1}
-\frac{2[h(h-1)+\mu]^2}{(2h-3)(2h-1)(2h+1)},
\]

with its removable n=0 value evaluated before substitution; it is O(n+1). The spin-two correction has degree-four numerator and degree-three denominator and is also O(n+1). Thus

\[
\left\|W_N+8\sum_{i<j}\min(C^L_{ij},C^R_{ij})\right\|
=O_{N,\Delta}(P+Q+1).
\tag{7}
\]

No high-spin interpolation is used here: (6) is an exact operator identity from the Einstein pair eigenvalues. The low-spin terms become negligible only after division by P² in this particular limit.

#### 3. Comparing different Bargmann parameters without an ill-conditioned metric change

All positive-discrete-series parameters d>0 use the same polynomial primary vector space

\[
V_P=\{f\text{ homogeneous of degree }P:\ \sum_i\partial_i f=0\}.
\]

The inner product, but not this subspace or the permutation action, depends on d. In the original Bargmann coordinates,

\[
C_{ij}(d)=-(z_i-z_j)^2\partial_i\partial_j
+d(z_i-z_j)(\partial_i-\partial_j)+d(d-1).
\tag{8}
\]

Use d_0=1/2 as an auxiliary mathematical representation. It is not a change of the physical mass or boundary prescription. Then

\[
C_{ij}(d)-C_{ij}(1/2)
=(d-1/2)(z_i-z_j)(\partial_i-\partial_j)+(d-1/2)^2.
\tag{9}
\]

In the d_0 Bargmann norm, multiplication by one z_i has norm at most √2 between homogeneous spaces, while ∂_i on degrees at most P has norm at most P. Equation (9) therefore has norm O_d(P+1). The normalized C_{ij}(d)/P² are uniformly bounded in this common auxiliary norm and differ from their d_0 counterparts by O_d(P⁻¹).

For any fixed noncommutative polynomial word in all normalized left and right pair Casimirs, telescoping gives an O(P⁻¹+Q⁻¹) difference of normalized traces, including the Bose projection. Indeed the projection is independent of d, is orthogonal in the auxiliary norm, and the ratio of labelled to physical dimensions stays bounded (it tends to N!).

This step applies first to polynomial words. To pass to min(x,y), approximate min uniformly on a fixed compact square by ordinary two-variable polynomials. For each d, the two Casimirs of the same pair commute and are self-adjoint in that d's own positive metric. The approximation error is therefore bounded in that metric. Traces are independent of the chosen metric. First taking P,Q→∞ for a fixed approximating polynomial and then its uniform approximation error to zero avoids any assertion that the metrics are uniformly equivalent. Apply the same argument to a continuous test function of the sum. This proves that the limit in (1) can be evaluated at d_0.

#### 4. Spherical harmonics and coherent states

Define the linear map

\[
Tz^\alpha=\prod_{i=1}^N\frac{y_i^{2\alpha_i}}{(1/2)_{\alpha_i}}.
\tag{10}
\]

Then T(∑∂_{z_i})T⁻¹=(1/4)Δ_y and T L_+T⁻¹=∑y_i². Thus T identifies V_P at d_0 with the coordinate-sign-even part of the degree-2P harmonic polynomials on R^N. The Fischer inner product is a degree-dependent scalar multiple of the Bargmann inner product. If

\[
J_{ij}=-i(y_i\partial_{y_j}-y_j\partial_{y_i}),
\]

direct substitution yields the exact identity

\[
TC_{ij}(1/2)T^{-1}=\frac14J_{ij}^2-\frac14I.
\tag{11}
\]

Let H_l be all degree-l spherical harmonics, l=2P. A unit null vector c=(u+iv)/√2, with u,v an orthonormal real frame, defines the harmonic coherent tensor ψ_c=c^{⊗l}. Its label is an oriented two-plane, since changing the frame within that plane changes ψ_c only by a phase. H_l is an irreducible SO(N) module for N≥3. Haar averaging and Schur's lemma give

\[
\int|\psi_c\rangle\langle\psi_c|\,dc
=\frac{I_{H_l}}{\dim H_l}.
\tag{12}
\]

Each J_{ij} on this tensor module is a sum of l identical one-tensor generators. In a product of a fixed number m of normalized generators J/l, terms with all tensor indices different supply the product of the classical components ℓ_{ij}=u_iv_j-u_jv_i. Terms with repeated indices are O_m(l⁻¹), uniformly in c. Consequently

\[
\langle\psi_c,\prod_{a=1}^m(J_{i_aj_a}/l)\psi_c\rangle
=\prod_{a=1}^m\ell_{i_aj_a}+O_m(l^{-1}).
\tag{13}
\]

Combining (11)–(13), normalized traces of words in C_{ij}/P² converge to moments of X_{ij}=ℓ_{ij}². Independent left and right harmonic spaces give independent X,Y.

#### 5. Bose invariants: the projection is not optional

The physical primary space at d_0 is the invariant subspace of H_{2P}⊗H_{2Q} under

\[
\mathcal G=(\{\pm1\}^N_L\times\{\pm1\}^N_R)\rtimes S_N,
\tag{14}
\]

where the same permutation acts on both factors. On even-degree harmonics exactly four elements act as scalar identity on both full factors: (ε_L I,ε_R I,id), ε_L,ε_R=±1. These four, not merely the identity, give the leading projected trace.

For any other group element, at least one of its signed permutation matrices g is noncentral. For Haar almost every c one has |c†gc|<1. With a word of fixed length inserted, the tensor expansion bounds the corresponding coherent matrix coefficient by a finite sum of constants times |c†gc|^{l-m}, m bounded by that word length. Dominated convergence therefore sends every such normalized twisted trace to zero. The same argument without insertion computes the dimension. In particular,

\[
d_N(P,Q)\sim\frac{P^{N-2}Q^{N-2}}{N![(N-2)!]^2},
\tag{15}
\]

in agreement with the independent Molien formula. Dividing the projected trace by this dimension leaves exactly the same Haar product law. Polynomial approximation as in §3 completes the proof of Theorem 1.

#### 6. Support, absence of other atoms, and determinant

The oriented Grassmannian is connected for N≥3 and Haar measure has full support. Taking X=Y gives a=0 when r≤1. Taking the coordinate planes (12) and (13) gives a=8r². Continuity and connectedness imply that the support of the pushforward is the whole interval [0,8r²].

Away from the comparison hypersurfaces X_e=r²Y_e, the function (2) is analytic with a fixed active edge set S. If S is nonempty and proper, its dependence on X is a nonconstant sum of a proper subset of squared Plücker coordinates: coordinate planes show both values zero and one are possible for that subset. A nonconstant real-analytic function has a critical set of measure zero; the coarea theorem then gives an absolutely continuous pushforward from this chamber. Comparison hypersurfaces have measure zero. For r<1 the only constant chamber is S empty, producing (4). It is nonempty and open: choose X=Y with all components nonzero. At r=1 neither an all-positive nor an all-negative strict comparison is possible since both vectors sum to one, so there is no constant chamber.

The operator bound A_N≥0 and (6) give A_N/P²≤8r²I+o(1). Full support supplies eigenvalues arbitrarily close to both endpoints, proving the edge limits. Formula (5) follows from weak convergence applied to log(s+x); s>0 is essential here. We make no unregularized determinant assertion at s=0.

#### 7. A closed expression for the leading mean at every N

A single Haar Plücker amplitude U=|ℓ_{12}| has the Beta(1,N−2) distribution,

\[
\Pr(U>u)=(1-u)^{N-2},\quad0\le u\le1.
\tag{16}
\]

One proof uses the pair-Casimir branching multiplicity binom(P−k+N−3,N−3) on V_P and the coherent limit above. An independent direct proof uses u uniform on S^{N−1} and v uniform in u^⊥: the coordinate-plane radius squared and the conditional projection squared have beta distributions whose moments, combined by the gamma duplication formula, give (16). The independent audit supplies the latter derivation.

For independent U,V and 0<r≤1,

\[
\begin{aligned}
\mathbb E\min(U^2,r^2V^2)
&=2r^2\int_0^1t(1-rt)^{N-2}(1-t)^{N-2}\,dt\\
&=\frac{2r^2}{N(N-1)}\,{}_2F_1(2,2-N;N+1;r).
\end{aligned}
\]

Thus the exact leading trace is

\[
\boxed{\lim\frac{\operatorname{Tr}W_N}{d_NP^2}
=-8r^2\,{}_2F_1(2,2-N;N+1;r).}
\tag{17}
\]

This hypergeometric function terminates at degree N−2. At r=1,

\[
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}=-\frac{4N}{2N-3},
\qquad
\lim\frac{\operatorname{Tr}A_N}{d_NP^2}=\frac{12(N-2)}{2N-3}.
\tag{18}
\]

These are full-primary traces, including exact kernel multiplicities.

#### 8. Removing the exact kernel

Let κ_N(P,Q)=dim ker A_N, given by the established logarithmic-kernel Hilbert series. Put d=N−2, and let (V_1,…,V_{N−1}) be uniform on the (N−2)-simplex. With S=∑_{a=1}^{N−1}aV_a, its Riemann-sum asymptotics give

\[
\lim\frac{\kappa_N(P,Q)}{d_N(P,Q)}
=k_N(r)=\mathbb E(1-rS)_+^{N-2}.
\tag{19}
\]

To see the normalization, hold the Q logarithmic-generator exponents ν_a with ∑ν_a=Q fixed. The remaining invariant-polynomial coefficient, at left degree P−J_N−∑aν_a, has leading term R_+^{N−2}/[N!(N−2)!]. Sum over the lattice simplex; its number of points is asymptotic to Q^{N−2}/(N−2)!. Division by (15) yields (19). The fixed Vandermonde shift J_N does not affect the leading ratio.

Equivalently the elementary simplex divided-difference identity gives the explicit spline

\[
k_N(r)=\frac{[(N-2)!]^2}{(2N-4)!\,r^{N-2}}
\sum_{a=1}^{N-1}
\frac{(-1)^{a-1}(1-ar)_+^{2N-4}}
{(a-1)!(N-1-a)!}.
\tag{20}
\]

The positive-spectrum empirical measure, normalized by d_N−κ_N, therefore obeys the rigorous limit

\[
\boxed{\nu^+_{N,r}
=\frac{\nu_{N,r}-k_N(r)\delta_0}{1-k_N(r)}.}
\tag{21}
\]

This is meaningful because k_N(r)<1 for r>0; weak positivity also implies p_N(r)≥k_N(r). At r=1, k_N=0 and ν^+=ν is absolutely continuous. At r<1 the zero atom of the positive-spectrum limit has weight [p_N(r)−k_N(r)]/[1−k_N(r)]. It records strictly positive eigenvalues on a scale smaller than P², and must not be counted as additional exact kernel vectors.

The positive regularized determinant satisfies

\[
\lim\frac1{d_N-\kappa_N}
\log\det_{\operatorname{im}A_N}\left(sI+\frac{A_N}{P^2}\right)
=\frac{\mathbb E\log(s+a_{N,r})-k_N(r)\log s}{1-k_N(r)}.
\tag{22}
\]

#### 9. A provably nonempty soft part of the positive spectrum

For N=3, the Plücker squares are Dirichlet(1/2,1/2,1/2). Inclusion-exclusion and a quarter-disc integral give, for 0<r<1,

\[
\begin{aligned}
p_3(r)&=1-\frac32r+3p_2(r),\\
p_2(r)&=\frac4{\pi^2}\sum_{s=0}^{\infty}
\frac{H^{\rm odd}_{s+1}r^{2s+2}}{(s+1)(2s+1)(2s+3)},\\
H^{\rm odd}_{s+1}&=\sum_{j=0}^s\frac1{2j+1}.
\end{aligned}
\tag{23}
\]

Here p_2 is the probability of two specified inequalities X_i<r²Y_i; it is not an N=2 spectrum. The series converges also at r=1. The independent audit gives a direct density calculation.

Meanwhile (20) reduces to

\[
k_3(r)=\frac{(1-r)^2-(1-2r)_+^2}{2r}.
\tag{24}
\]

For 0<r≤1/2, k_3=1−3r/2, whereas all terms of p_2 are positive. It follows that

\[
\nu^+_{3,r}(\{0\})=\frac{2p_2(r)}r
\ge\frac{8r}{3\pi^2}>0.
\tag{25}
\]

This proves a macroscopic soft positive component, even after all exact saturated states are removed. It is a precise obstruction to extending a fixed-Q finite-channel asymptotic uniformly to Q proportional to P. The result does not yet specify its correct smaller energy scale, which can contain more than one scale.

#### 10. Computational consequences and scope

Sampling one oriented two-plane requires orthonormalizing an N×2 Gaussian matrix, and evaluating all its minors takes O(N²) arithmetic operations. Thus M samples of the limiting spectral distribution cost O(MN²), independent of P and Q. For each fixed bounded test function, ordinary Monte Carlo bounds control the sampling error. They do not bound the finite-P difference in (1). The closed mean (17), exact kernel fraction (20), and (for N=3) convergent atom series (23) need no physical matrix diagonalization.

The complete finite spectrum is still defined by the exact Bose-projected Einstein operator. The present theorem gives its whole leading empirical law in a previously uncontrolled regime; it is not a claim of exact finite-dimensional integrability, a complete individual-eigenvalue asymptotic expansion, or a uniform description of rare outliers. It establishes that the underlying su(1,1) recoupling geometry has a coadjoint-orbit classical limit, with a nonsmooth Einstein symbol on a product of oriented Grassmannians.

#### Verification files

`balanced_spectrum.py` independently implements the exact pair scalar formula, a numerical Racah evaluator with known Jacobi eigenvalues, the N=3 positive Gram spectrum, the Haar-frame sampler, and formulas (17),(20),(23). It verifies small blocks against the original exact code without altering that code, records finite-degree convergence evidence, and distinguishes the true physical rank from auxiliary Gram zeros.

`../audit/GRASSMANN_AND_SOFT_ATOM_AUDIT.md` and the accompanying audit program are an independent derivation of normalization, Bose projection, and the soft-atom formula. The independent audit strengthens (25) to every fixed 0<r<1 and proves the endpoint asymptotic

\[
p_3(r)\sim\frac3{2\pi^2}(1-r)^2\log^2\frac1{1-r},\qquad r\uparrow1.
\]

The subsequent independent `../audit/ALL_N_SOFT_ATOM_THEOREM.md` also proves
that for every fixed N≥4 the positive-only zero atom is nonempty for all
sufficiently small fixed r>0, with an explicit r log(1/r) lower asymptotic
bound. It includes a fully explicit four-particle interval. Those are
limits of the fixed-r measures; no joint shrinking-r, growing-P estimate
is asserted.

Numerical examples support, but are not the proof of, Theorem 1.

#### 11. A precise obstruction to bounded-atom bulk compression

At fixed N≥3 and r=1, let d_P=d_N(P,P). There is no sequence of Hermitian matrices K_P on these physical spaces, each with at most a fixed number L of distinct eigenvalues, for which either

\[
\operatorname{rank}(A_N/P^2-K_P)=o(d_P),
\]

or

\[
\frac1{d_P}\|A_N/P^2-K_P\|_1\longrightarrow0
\]

holds, with uniformly bounded spectra of K_P. Here the trace norm and Hermitian condition refer to the physical Hilbert metric. The rank inequality for empirical distribution functions, or the trace-norm eigenvalue inequality, would make K_P have the same limiting empirical law. Along a subsequence its at most L atoms and their weights converge, yielding a measure with at most L atoms. This contradicts the absolutely continuous full-support law in Theorem 1.

The same obstruction applies to the positive-only spectrum at r=1. In addition, (19) gives rank A_N/d_N→1−k_N(r), which is one at r=1. Thus a Gram factor representing the entire positive operator cannot have subextensive column rank in the balanced limit.

This rules out a specified kind of uniform finite-channel or finitely atomic approximation in the bulk. It does not rule out a growing-degree orthogonal-polynomial solution, a Bethe description, an efficient implicit determinant, or other analytic structures whose number of spectral values grows with excitation. The separate `ANALYTIC_CHARGE_OBSTRUCTION.md` proves a different, dynamical obstruction for globally analytic first integrals of the N=3 principal symbol.

## 附录 B　三粒子全局实解析守恒量障碍

独立推导源文件：new_research/balanced/ANALYTIC_CHARGE_OBSTRUCTION.md。

### A precise analytic-charge obstruction for the three-particle bulk symbol

This is an obstruction theorem for the classical principal symbol obtained
in `GRASSMANN_SPECTRAL_LAW.md`. It is deliberately not a theorem that the
complete quantum Einstein Hamiltonian is nonintegrable.

#### Statement

For N=3, an oriented two-plane is a unit normal vector. Put x∈S² and
z∈rS², r>0. The two Plücker-square vectors in the bulk symbol are therefore
(x_1²,x_2²,x_3²) and (z_1²,z_2²,z_3²), up to a fixed coordinate ordering.
The natural coadjoint-orbit Poisson bracket is

\[
\{f,g\}=x\cdot(\nabla_x f\times\nabla_x g)
+z\cdot(\nabla_z f\times\nabla_z g).
\tag{1}
\]

Writing z=r y absorbs the factor 1/r in the right Poisson bracket caused
by Q/P=r. Reversing one orbit orientation gives an equivalent statement
after reversing that vector; the squared-component Hamiltonian is unchanged.

The principal Einstein Hamiltonian is

\[
H_r(x,z)=-8\sum_{i=1}^3\min(x_i^2,z_i^2).
\tag{2}
\]

**Theorem.** For every r>0, a globally real-analytic function F on
S²×rS² satisfying {F,H_r}=0 in every open comparison chamber is constant.
In particular there is no nonconstant globally polynomial classical charge
on this phase space which Poisson-commutes with H_r.

The Hamiltonian H_r itself is continuous and piecewise analytic, not
globally real analytic. Thus the theorem does not contradict conservation
of energy. It leaves open integrals which are piecewise analytic,
nonsmooth, or have singularities, and quantum charges without a
nonconstant analytic principal symbol.

#### Proof

It suffices to prove 0<r≤1, since interchange of the two orbits and an
overall rescaling handles r>1. Set

\[
d_i=x_i^2-z_i^2,\qquad d_1+d_2+d_3=1-r^2.
\tag{3}
\]

For each i, the chamber on which d_i<0 and the two other d_j>0 is
nonempty and open. To construct one, make x_i² smaller than z_i² and
distribute the remaining unit x-norm so that each of its other components
exceeds the corresponding z-component squared; their total excess is
1−r²−d_i>0. Strict choices can be made with all components nonzero.
On this chamber,

\[
H_r=-8(r^2+d_i).
\tag{4}
\]

If F is real analytic, {F,d_i} is real analytic on the connected manifold
S²×rS². Its vanishing on this nonempty open chamber implies its vanishing
everywhere. Hence F commutes with d_1 and d_2 globally, and the Jacobi
identity makes it commute with every iterated Poisson bracket of them.

Consider the first two such brackets,

\[
\begin{aligned}
c&=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),\\
e&=\{d_1,c\}
=8[x_1^2(x_3^2-x_2^2)-z_1^2(z_3^2-z_2^2)].
\end{aligned}
\tag{5}
\]

The six gradients of

\[
(|x|^2,|z|^2,d_1,d_2,c,e)
\]

are linearly independent at a point on every such orbit product. Indeed,
in the variable order (x_1,x_2,x_3,z_1,z_2,z_3), their Jacobian determinant
at z_1=0 simplifies exactly to

\[
-2048\,x_1^3x_2x_3z_2^2z_3^2.
\tag{6}
\]

For example x=(2/3,2/3,1/3), z=(0,3r/5,4r/5) lies on the required product
and gives

\[
-\frac{524288}{16875}r^4\ne0.
\tag{7}
\]

Since the Poisson tensor is symplectic on each four-dimensional orbit
product, the Hamiltonian vector fields of d_1,d_2,c,e span its tangent
space at this point and throughout a neighboring open set. F commutes
with all four, so dF vanishes on that open set. Real-analytic continuation
on the connected manifold makes F constant everywhere. This proves the
theorem without a numerical orbit search or an assumed chaotic trajectory.

#### What this rules out, and what it does not

Within each comparison chamber, the N=3 motion consists of two uncoupled
one-axis precessions; the active axis and signs change at the comparison
boundaries. Therefore local solvability of each chamber does not supply a
single analytic conserved charge across them. The theorem proves that
these elementary chamber Hamiltonians have no common nonconstant analytic
first integral on the full phase space.

It excludes a direct inheritance of nonconstant polynomial charges from
the smooth spherical superintegrable system by simply inserting them into
the Einstein principal symbol. More generally, if a proposed quantum
charge has a nonconstant globally analytic principal symbol and a valid
semiclassical commutator-to-Poisson correspondence on every chamber, it
cannot commute with the Einstein Hamiltonian. Both hypotheses of this
conditional quantum consequence are essential; the theorem by itself is
not a classification of all finite-dimensional commutants.

This is compatible with Racah recoupling, exact finite-dimensional
determinants, the existence of energy itself, and possible nonanalytic
forms of integrability. No claim about a Lyapunov exponent, ergodicity,
quantum chaos, or absence of all Bethe constructions follows from it.

`verify_charge_obstruction.py` independently constructs (1), (5), and the
full six-by-six Jacobian and certifies (6),(7) over the rational-function
field. Its certificate is finite because it verifies the explicit
all-r rank witness, not a finite set of guessed masses.

## 附录 C　全粒子数 cluster 继承与高阶紧性障碍

独立推导源文件：new_research/racah/CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md。

### Singleton cluster inheritance and a higher-particle compactness obstruction

#### Status and scope

This note proves two results for the already established Einstein pair operator. First, every **fixed** positive residual eigenvalue of an \((N-1)\)-particle cluster is inherited by the \(N\)-particle high-left-degree spectrum, with error \(O(P^{-\Delta})\). The construction works simultaneously for any finite family of source states and retains their multiplicities. After two singleton insertions, every fixed lower-particle positive level has an unbounded number of nearby descendants. Second, for every \(N\ge5\), at \(Q=0\) this gives an unbounded number of levels near a specific positive value separated from all the leading atoms. Consequently the four-particle description as an atomic diagonal plus a uniformly compact correction cannot extend to higher particle number without additional cluster operators.

The first assertion is a **one-sided spectral inclusion**. This note does not prove a complete higher-particle cluster decomposition, classify every possible limiting outlier, or provide an HVZ theorem. Its rate is uniform only after \(N,\Delta,Q\) and the finite source family have been fixed. In particular the constants are not uniform in the source excitation.

The earlier `ADS3_Analytic_spectrum_research.md`, Appendix D, already established the complete four-particle fixed-\(Q\) limit and its Fredholm determinant. Appendix E already described arbitrary-particle tree recoupling. These are prior results, not discoveries of this note. The new content is the all-particle quantitative singleton construction, its simultaneous multiplicity statement, and the resulting obstruction at \(N\ge5\).

There is a directly relevant precedent: Derkachov and Manashov construct high-spin cluster sums for the one-loop scalar \(\phi^4\) operator in [hep-th/9604173](https://arxiv.org/abs/hep-th/9604173). Their operator and estimate are not identified with the Einstein Hamiltonian here. The argument below uses the actual finite-channel Einstein residual, its two chiral factors, and the mass-dependent normalized \(su(1,1)\) endpoint estimate.

#### 1. The operator and the orientation convention

Write \(d=\Delta>1\), \(h=d/2\), and let each chiral leaf carry the positive-discrete module \(D_h^+\). A labelled \(N\)-particle primary of degrees \((P,Q)\) is an element of the product of the two total-primary multiplicity spaces. Physical Bose symmetry is the **simultaneous** permutation of the left and right leaves. Denote its orthogonal projector by \(\Pi_N\).

The right-oriented residual is

\[
A_N^{\to}(P,Q)=W_N(P,Q)-b_N(Q)I,
\qquad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1).
\tag{1.1}
\]

On the physical Bose space its positive pair decomposition is

\[
A_N^{\to}
=\sum_{i<j}\sum_{(k,l)\in\mathcal B_Q}
a_{kl}\,P^L_{ij,k}P^R_{ij,l},
\quad
\mathcal B_Q=\{(k,l):0\le l\le Q,\ 0\le k\le l+2,\ k+l\equiv0\pmod2\},
\tag{1.2}
\]

where \(a_{kl}>0\). Pair channels absent in a given total-degree block are simply omitted. For the arguments on the temporarily labelled space, extend the residual by precisely the right hand side of (1.2), with zero on odd simultaneous pair parity. This extension is positive, self-adjoint, and permutation invariant, and restricts to the required physical operator. No prescription for a physical odd Bose pair is being introduced.

For a source cluster of internal degrees \((p,q)\), it is essential to use \(W_n-b_n(q)\), even when \(p<q\). Exchanging the chiralities first and subtracting \(b_n(\min(p,q))\) would shift the eigenvalue used in the inheritance formula and would be incorrect. The abstract theorem applies with the oriented convention to all finite \((p,q)\). The convenience command-line spectral backend currently accepts \(P\ge Q\).

For reference, the fixed-\(Q=0\) channels are only \((0,0),(2,0)\), and

\[
a_{00}=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},
\qquad
a_{20}=\frac{4d}{(2d+1)(2d+3)}.
\tag{1.3}
\]

Both are positive, and \(a_{20}<a_{00}\) for all \(d>1\). These two numbers are the atoms of the known leading normalized \(Q=0\) positive spectral measure.

All conclusions below are conditional on the physical reduction to (1.2). They independently analyze that operator. They do not constitute a fresh evaluation of the Einstein constraint integrals, boundary terms, or quantum counterterms.

#### 2. A fixed-endpoint Racah lemma

Let \(F_{uv}^{(h_1,h_2,h_3;M)}\) be the orthonormal overlap between

\[
((D_{h_1}^+D_{h_2}^+)_uD_{h_3}^+)_{M-u}
\quad\hbox{and}\quad
(D_{h_1}^+(D_{h_2}^+D_{h_3}^+)_v)_{M-v}.
\]

The subscripts are relative primary excitations, so the final weight is \(h_1+h_2+h_3+M\). Harmless phases depend on binary child-order conventions; the following formula fixes the usual endpoint-positive Racah convention. Put \(c_i=2h_i-1\). Then

\[
F_{uv}^{(h_1,h_2,h_3;M)}
=\sqrt{\Omega(u;c_3,c_2,c_1;M)\Omega(v;c_1,c_2,c_3;M)}\,
{}_4F_3\!\left(\begin{matrix}-v,v+c_2+c_3+1,-u,u+c_1+c_2+1\\
c_2+1,M+c_1+c_2+c_3+2,-M\end{matrix};1\right),
\tag{2.1}
\]

where

\[
\Omega(n;c_1,c_2,c_3;M)
=\binom Mn
\frac{(2n+c_2+c_3+1)(c_2+1)_n(M+c_1+c_2+c_3+2)_n(c_1+1)_{M-n}}
{(c_3+1)_n(c_2+c_3+n+1)_{M+1}}.
\tag{2.2}
\]

This is a normalized positive-discrete \(su(1,1)\) recoupling coefficient. The role of Racah polynomials as these overlap functions, and of local three-factor recouplings within higher-rank Racah algebras, is reviewed in [De Bie, Iliev, van de Vijver and Vinet, arXiv:2001.11195](https://arxiv.org/abs/2001.11195). The formulas here are used with their actual module weights, not as a name-based analogy.

**Lemma 2.1.** Fix positive \(h_1,h_2,h_3>1/2\) and nonnegative integers \(u,v\). As \(M\to\infty\),

\[
F_{uv}^{(h_1,h_2,h_3;M)}
=C_{uv}(h_1,h_2,h_3)\,M^{-2h_2}\bigl(1+O(M^{-1})\bigr),
\tag{2.3}
\]

in the phase convention of (2.1), where

\[
C_{uv}=\sqrt{c_u(h_3,h_2,h_1)c_v(h_1,h_2,h_3)}>0,
\]

\[
c_n(a,b,c)=
\frac{(2n+2b+2c-1)(2b)_n\Gamma(2b+2c+n-1)}
{n!(2c)_n\Gamma(2a)}.
\tag{2.4}
\]

**Proof.** There are at most \(\min(u,v)+1\) terms in the terminating hypergeometric sum. Every term after the constant one contains the denominator \((-M)_j(M+c_1+c_2+c_3+2)_j\), so the sum is \(1+O(M^{-2})\). At fixed \(n\), the binomial and the second finite Pochhammer in (2.2) together contribute \(M^{2n}/n!\). The ratio of the two long Pochhammer products is

\[
\frac{\Gamma(M+c_1+1-n)}{\Gamma(M+c_2+c_3+n+2)}
\frac{\Gamma(c_2+c_3+n+1)}{\Gamma(c_1+1)}.
\]

The gamma ratio equals \(M^{c_1-c_2-c_3-2n-1}(1+O(M^{-1}))\). Hence

\[
\Omega(n;2a-1,2b-1,2c-1;M)
=c_n(a,b,c)M^{2a-2b-2c}(1+O(M^{-1})).
\]

Multiplying the two weights in (2.1) and taking the positive square root proves (2.3). This also gives bounds uniform over any fixed finite set of indices and module weights. ∎

The **middle** module controls the exponent. This distinction is central: a cross-pair error has a single leaf in the middle and decays as \(P^{-d}\); an exchanged cluster overlap has \(N-2\) leaves in the middle and decays at least as \(P^{-(N-2)d}\).

#### 3. Quantitative singleton inheritance

Fix \(N\ge3\), \(Q\ge0\), and finitely many normalized physical primary source states

\[
\psi_\alpha\in\mathcal H^{\mathrm B}_{N-1,p_\alpha,q_\alpha},
\quad q_\alpha\le Q,
\quad
A_{N-1}^{\to}\psi_\alpha=\lambda_\alpha\psi_\alpha.
\tag{3.1}
\]

Choose an orthonormal family within each source block; different \((p_\alpha,q_\alpha)\) are different orthogonal parent Casimir sectors. For sufficiently large \(P\), couple each source to one extra ground leaf by normalized binary Clebsch–Gordan maps with relative excitations

\[
P-p_\alpha\quad\hbox{on the left},
\qquad Q-q_\alpha\quad\hbox{on the right}.
\]

Let \(T_P\) denote this map from the finite source family to the labelled \(N\)-leaf primary space, and let \(\Lambda=\operatorname{diag}(\lambda_\alpha)\). Its columns are orthonormal because the parent cluster Casimirs and the internal source states are orthogonal.

**Theorem 3.1.** There are physical isometries \(U_P\) from this finite source space into \(\mathcal H^{\mathrm B}_{N,P,Q}\), defined for all sufficiently large integers \(P\), such that

\[
\|A_N^{\to}(P,Q)U_P-U_P\Lambda\|=O(P^{-d}).
\tag{3.2}
\]

More explicitly, with

\[
V_P=\sqrt N\,\Pi_NT_P,
\]

one has

\[
V_P^*V_P=I+O(P^{-(N-2)d}),
\qquad
\|A_N^{\to}V_P-V_P\Lambda\|=O(P^{-d}),
\tag{3.3}
\]

and one may take \(U_P=V_P(V_P^*V_P)^{-1/2}\).

**Proof of the labelled residual estimate.** Split the source cluster into a chosen leaf \(i\) and its remaining \(N-2\) leaves. Since all source degrees are fixed, it has a finite orthonormal expansion in such coupled states. In a left component the remainder has weight

\[
H=(N-2)h+a,\qquad a\ge0,
\]

and the source state is of the form \(((D_H^+D_h^+)_uD_h^+)_{M-u}\), where \(u\) is fixed and \(M=P-a\). Projecting the pair consisting of leaf \(i\) and the newly inserted leaf onto a relevant left channel \(k\le Q+2\) changes to the other coupling scheme. The relevant coefficient is

\[
F_{u k}^{(H,h,h;M)}=O(P^{-d})
\]

by Lemma 2.1. There are finitely many low left channels, fixed right channels, remainder labels, and source components. Right recoupling matrices are orthogonal and have fixed finite sizes. Thus each cross-pair residual applied to \(T_P\) has norm \(O(P^{-d})\).

All within-source pair terms act exactly as \(\Lambda\). Indeed, the source residual commutes with the two source global \(su(1,1)\) actions; the binary coupling map only takes descendants within each fixed source irrep. Its right Casimir subtraction stays \(b_{N-1}(q_\alpha)\), independently of the outer right relative excitation. Summing the \(N-1\) cross pairs gives

\[
\|A_N^{\to}T_P-T_P\Lambda\|=O(P^{-d}).
\tag{3.4}
\]

The extended labelled residual commutes with \(\Pi_N\), proving the second estimate in (3.3).

**Proof of the Bose Gram estimate.** Each column of \(T_P\) is symmetric in its first \(N-1\) leaves. Therefore the full Bose projector reduces on it to the \(N\) cosets

\[
\Pi_NT_P=\frac1N\sum_{i=1}^N U_{(i,N)}T_P,
\quad U_{(N,N)}=I.
\tag{3.5}
\]

For a nontrivial exchange, decompose both source states around the shared remainder cluster of \(N-2\) leaves. Orthogonality leaves only matching remainder irreps and multiplicity labels. After child-order phases, the left overlap is a fixed-endpoint Racah coefficient with weights \((h,H,h)\). Its middle weight satisfies \(H\ge(N-2)h\), and hence its magnitude is \(O(P^{-(N-2)d})\). The right overlap is bounded by one. The finite family therefore obeys

\[
T_P^*\Pi_NT_P=\frac1N\bigl(I+O(P^{-(N-2)d})\bigr).
\tag{3.6}
\]

This proves the first estimate in (3.3), including positivity of the projected Gram for all sufficiently large \(P\). It also proves that there is no asymptotic even/odd selection rule for this nontrivial-cluster-plus-singleton construction at \(N\ge3\).

**Polar normalization.** Set \(G_P=V_P^*V_P\). Its inverse square root is \(I+O(P^{-(N-2)d})\). In

\[
A_N^{\to}U_P-U_P\Lambda
=(A_N^{\to}V_P-V_P\Lambda)G_P^{-1/2}
 +V_P[\Lambda,G_P^{-1/2}],
\]

the first term is \(O(P^{-d})\), and the second is \(O(P^{-(N-2)d})\). Since \(N\ge3\), (3.2) follows. ∎

##### 3.1 Spectral distance and multiplicities

For each fixed source eigenvalue \(\lambda>0\), Theorem 3.1 gives

\[
\operatorname{dist}\bigl(\lambda,\sigma_+(A_N^{\to}(P,Q))\bigr)=O(P^{-d}).
\tag{3.7}
\]

For large \(P\), the nearby eigenvalue is positive because \(\lambda\) is fixed and positive. In terms of physical corrections, a source level \(\gamma\in\sigma(W_{N-1}(p,q))\) produces target levels approaching

\[
b_N(Q)+\gamma-b_{N-1}(q).
\tag{3.8}
\]

If a finite source family consists of \(m\) orthonormal states with the same residual eigenvalue \(\lambda\), at least \(m\) target eigenvalues, counted with multiplicity, lie in any fixed neighborhood of \(\lambda\) once \(P\) is sufficiently large. To see this directly, let \(E\) be the spectral projector onto that neighborhood. If \(\operatorname{rank}E<m\), some nonzero vector in the range of \(U_P\) is orthogonal to \(E\), contradicting (3.2) and the spectral gap from \(\lambda\) outside the neighborhood.

More generally, if all the finitely many source \(\lambda_\alpha\) lie strictly inside an interval, the same argument with the interval center and an interior margin supplies at least as many target eigenvalues in that interval. This is the form needed for iteration below. It does not require algebraic formulas for the source eigenvalues.

##### 3.2 A completely explicit ground-cluster certificate

Take a source ground cluster of size \(n=N-1\), so \(p=q=Q=0\). Its residual eigenvalue is

\[
\lambda=\binom n2a_{00}.
\]

The normalized labelled source has exact Bose projection probability

\[
\|\Pi_NT_P\|^2
=\frac{1+n(-1)^P(d)_P/(nd)_P}{N}.
\tag{3.9}
\]

This follows by evaluating the single fixed-endpoint exchange with the shared \(N-2\) ground cluster. At \(P=1\) it vanishes, as it must because there is no physical degree-one chiral primary. It tends to \(1/N\) as \(P\to\infty\); it is positive at all sufficiently large degrees of either parity.

Whenever the denominator is nonzero, the normalized physical quasimode has the exact upper bound

\[
\frac{\|(A_N-\lambda)\Pi_NT_P\|^2}{\|\Pi_NT_P\|^2}
\le
\frac{n^2\displaystyle\sum_{k\in\{0,2\},\,k\le P}
a_{k0}^2\left|F_{0k}^{((N-2)h,h,h;P)}\right|^2}
{\{1+n(-1)^P(d)_P/(nd)_P\}/N}.
\tag{3.10}
\]

The factor \(n^2\) is the elementary triangle bound on the \(n\) cross pairs; the sum over \(k\) uses orthogonal projectors within a fixed pair. The endpoint \({}_4F_3\) here is exactly one, so (3.10) is a finite-product rational inequality for rational \(d\). Its right hand side is \(O(P^{-2d})\).

#### 4. Spectral proliferation after two singleton insertions

The finite-family theorem has an all-index consequence before any particular source level is chosen.

**Theorem 4.1.** Let \(m\ge2\), let \(\lambda>0\) be any fixed eigenvalue of \(A_m^{\to}(p,q)\), and fix \(N\ge m+2\) and \(Q\ge q\). For every \(\epsilon>0\),

\[
\lim_{P\to\infty}
\#\{\mu\in\sigma_+(A_N^{\to}(P,Q)):
|\mu-\lambda|<\epsilon\}=+\infty.
\tag{4.1}
\]

**Proof.** A first singleton insertion gives eigenvalues approaching \(\lambda\) in every sufficiently large \((m+1)\)-particle left degree, at fixed right degree \(q\). Repeated single insertions imply the same one-eigenvalue inclusion for particle number \(N-1\). Fix any integer \(K\), and select \(K\) distinct finite \((N-1)\)-particle left degrees with source eigenvalues within \(\epsilon/3\) of \(\lambda\). The source states belong to distinct parent Casimir sectors. The simultaneous form of Theorem 3.1, with target right degree \(Q\), gives a \(K\)-dimensional isometric image on which

\[
\|(A_N^{\to}-\lambda)U_P\|<2\epsilon/3
\]

for all sufficiently large \(P\). The interval spectral projector argument in §3.1 then yields at least \(K\) eigenvalues in the \(\epsilon\) interval. The threshold may depend on \(K\), as permitted by (4.1). ∎

This applies to every fixed algebraic source eigenvalue without requiring a radical expression or a new diagonalization formula. It gives multiplicity lower bounds, not a classification of all limiting spectral points.

##### 4.1 A universal non-atomic value for every \(N\ge5\)

Define

\[
\lambda_*(d)=3a_{00}(d).
\tag{4.2}
\]

This is the exact positive residual eigenvalue of the three-particle ground state. It lies strictly above both \(Q=0\) atoms for every \(d>1\).

**Corollary 4.2.** Fix \(d>1\), \(N\ge5\), and \(Q\ge0\). For every \(\epsilon>0\),

\[
\lim_{P\to\infty}
\#\{\lambda\in\sigma_+(A_N^{\to}(P,Q)):
|\lambda-\lambda_*(d)|<\epsilon\}=+\infty,
\tag{4.3}
\]

where eigenvalues are counted with multiplicity and the limit is along all integer \(P\).

**Proof.** Apply Theorem 4.1 with \(m=3\), \(p=q=0\), and the exact ground residual eigenvalue \(\lambda_*=3a_{00}\). ∎

At \(Q=0\), \(\lambda_*\) is strictly separated from the entire two-point atomic set. For larger fixed \(Q\), the multiplicity result remains valid, but no claim that this particular value is disjoint from every additional atom is required.

The result supplies no quantitative lower bound on the growth rate of this count: the source-dependent constants are not controlled when \(K\) grows. It also does not contradict the earlier atomic **empirical** spectral law. That normalized law allows an unbounded subleading family whose fraction tends to zero.

#### 5. The exact obstruction to an atomic Fredholm extension

To state a dimension-independent compactness condition, call a family of finite-dimensional operators \(K_P\) *uniformly compact* if, for each \(\delta>0\), the number of its singular values exceeding \(\delta\) has a bound independent of \(P\). Uniform finite-rank approximation in operator norm implies this property. Uniform trace-norm boundedness also implies it.

**Corollary 5.1.** For \(N\ge5\), there is no representation on the physical positive spectral spaces

\[
A_{N,+}(P,0)=D_P+K_P+E_P
\tag{5.1}
\]

in which \(D_P\) is self-adjoint with spectrum contained in \(\{a_{00},a_{20}\}\), \(K_P\) is self-adjoint and uniformly compact, and \(\|E_P\|\to0\).

**Proof.** Choose \(\epsilon>0\) so small that \(\lambda_*-\epsilon>a_{00}\). By Corollary 4.2 the spectral subspace \(S_P\) of \(A_{N,+}\) in that interval has dimension tending to infinity. For unit vectors in \(S_P\),

\[
\langle v,K_Pv\rangle
\ge \lambda_*-\epsilon-a_{00}-\|E_P\|.
\]

The right hand side has a fixed positive lower bound \(\delta\) for large \(P\). The min-max principle forces at least \(\dim S_P\) eigenvalues, and therefore singular values, of \(K_P\) to exceed \(\delta\). This violates uniform compactness. ∎

The same conclusion applies to the Hermitian auxiliary Gram operator \(B_P\) whose nonzero eigenvalues are the physical positive residual spectrum. At \(Q=0\) its standard atomic comparator is the diagonal channel operator \(D_P\) with entries \(a_{00},a_{20}\). Its additional auxiliary zeros cause no problem because the argument uses a positive subspace above \(a_{00}\). For every finite \(r\ge1\),

\[
\|B_P-D_P\|_{\mathcal S_r}\longrightarrow\infty.
\tag{5.2}
\]

Indeed at least \(\dim S_P\) singular values are bounded below by the same \(\delta\), so the norm is at least \(\delta(\dim S_P)^{1/r}\).

This is a precise failure of one possible extension of the four-particle construction. It does **not** exclude a higher-particle determinant after subtracting suitable growing cluster operators, a regularized determinant with further counterterms, an operator-algebraic recursive essential spectrum, or some different exact integrable description. Any such construction must account for the recursively increasing cluster multiplicities rather than treating all non-atomic structure as a uniformly compact correction to the two atom values.

#### 6. Reproduction and independent checks

`cluster_inheritance.py` evaluates (2.1) using log-gamma ratios and a finite terminating sum, so fixed endpoints can be checked at arbitrarily large outer degree without constructing a large spectrum matrix. The delivered `cluster_endpoint_checks.json` contains nine configurations spanning \(d=3/2,2,7/3\), unequal effective weights, and both leaf-middle and cluster-middle exponents. At each configuration it records degrees \(100,1000,10^6\), the ratio to the proved leading constant, and its first-order error. These numerical checks support the implementation of the formula; the proof of the asymptotic is §2.

The same script checks twelve exact rational quasimodes through the independent all-particle comb backend:

| Source \((n,p,q)\) | Target \((N,Q)\) | Target left degrees |
|---|---|---|
| \((3,0,0)\) | \((4,0)\) | 4, 8, 12 |
| \((4,0,0)\) | \((5,0)\) | 4, 8, 12 |
| \((3,2,0)\) | \((4,0)\) | 6, 10 |
| \((3,2,1)\) | \((4,1)\) | 4, 8 |
| \((4,2,1)\) | \((5,2)\) | 4, 6 |

For every case it computes the exact Bose norm and exact residual norm against the actual sum of pair channels. The six ground-source cases also verify (3.9) identically and compare the exact squared residual to the rational upper bound (3.10). Thus the tests are not merely a recoupling orthogonality check. They include nonchiral embeddings and a target right relative excitation. They remain finite validation, not substitutes for Theorems 3.1 and 4.1.

Run from this directory, with Python dependencies `sympy` and `mpmath` installed:

```bash
PYTHONDONTWRITEBYTECODE=1 python cluster_inheritance.py --exact
```

The independent matrix-backend audit and its scope are documented in `ALL_N_COMPILED_RECOUPLING.md`. No source input or previous research program is modified.

#### 7. What remains open

The main unresolved step is an **upper** cluster estimate for arbitrary particle number, capable of describing all possible simultaneous low-pair channels and their overlapping cluster multiplicities. The singleton construction does not control states in which two or more nontrivial clusters are simultaneously excited. It does not determine the complete limiting support or the subleading counting measure. It supplies no uniform rate as the internal cluster excitation grows with \(P\).

The obstruction in §5 shows why directly reusing the four-particle compact perturbation is insufficient at \(N\ge5\). A plausible next target is a recursive cluster comparator whose diagonal pieces already include the lower-particle spectra, with explicit inclusion–exclusion for common subclusters. Such a comparator has not been constructed or bounded here. Its existence is a research direction, not a conclusion.

## 附录 D　完整 all-N Racah 与 Bose 编译器

独立推导源文件：new_research/racah/ALL_N_COMPILED_RECOUPLING.md。

### A polynomial-free all-particle Racah and Bose fractional-parentage backend

#### 1. What this completes

The earlier analytic report, Appendix E, proved that arbitrary binary-tree recoupling and a recursive Bose fractional-parentage construction can replace generic polynomial overlaps. It explicitly left the **integrated arbitrary-particle compiler** unimplemented. `all_n_recoupling.py` completes that implementation gap. It handles arbitrary finite \(N\ge3\), rational \(\Delta>1\), and \(P\ge Q\ge0\); it constructs the complete positive residual spectrum, its exact physical metric, and the remaining baseline multiplicity. Chiral exchange can be performed before using the command-line interface.

The code does not import any former spectrum or recoupling module. It uses `fractions.Fraction` for local recoupling and `sympy` for small exact linear algebra. No \(N\)-variable wavefunction, monomial coefficient array, or permutation enumeration of size \(N!\) is constructed. The new checks compare its final spectral polynomial against the former differential pair-Casimir Hamiltonian and against the former polynomial-Gram backend, both imported read-only by the verification scripts.

This is a new executable backend and a useful complexity improvement in a precisely specified comparison model. The tree recoupling principle and Racah polynomials are established representation theory. The resulting growing positive matrix is **not** a complete analytic solution of its characteristic roots. The independently new spectral theorems in this directory are stated in `CLUSTER_INHERITANCE_AND_HIGHER_N_OBSTRUCTION.md`.

#### 2. Canonical comb coordinates and their metric

Each leaf carries \(D_h^+\), with \(h=d/2\) and \(d=\Delta>1\). For two normalized lowest-weight vectors \(A,B\) with weights \(a,b\), fix the unnormalized binary primary

\[
\mathcal C_m(A,B)
=\sum_{r=0}^m
\frac{(-1)^r\binom mr}{(2a)_r(2b)_{m-r}}
R_A^rA\,R_B^{m-r}B.
\tag{2.1}
\]

With \(R^*=L\) in the physical positive-discrete metric, \(\|R^rA\|^2=r!(2a)_r\|A\|^2\). Orthogonality of the different descendant levels, followed by the finite Vandermonde identity, gives

\[
\|\mathcal C_m(A,B)\|^2
=\eta(m;a,b)\|A\|^2\|B\|^2,
\quad
\eta(m;a,b)=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{2.2}
\]

A left comb has labels \(\nu=(n_2,\ldots,n_N)\) with \(n_j\ge0\) and \(\sum n_j=P\). Its intermediate weights are

\[
H_j=jh+\sum_{r=2}^j n_r.
\]

Distinct labels are orthogonal because they diagonalize the nested self-adjoint cluster Casimirs. The metric is diagonal:

\[
g_\nu=\prod_{j=2}^N\eta(n_j;H_{j-1},h).
\tag{2.3}
\]

The labelled chiral primary dimension is \(d_N(P)=\binom{P+N-2}{N-2}\). The two-chirality coordinate dimension is

\[
D=d_N(P)d_N(Q).
\tag{2.4}
\]

A full coordinate \(e_{\nu,\rho}\) has squared norm \(g_\nu g_\rho\). Both chirality labels are retained throughout; imposing separate Bose symmetry on them would be incorrect.

#### 3. One rational Racah table implements each adjacent transposition

The first adjacent permutation is especially simple:

\[
U_{(1,2)}e_\nu=(-1)^{n_2}e_\nu.
\]

For \(j\ge2\), the swap \((j,j+1)\) only changes \(n_j,n_{j+1}\). Let

\[
a=(j-1)h+\sum_{r=2}^{j-1}n_r,
\quad b=h,
\quad M=n_j+n_{j+1}.
\]

All other labels are fixed. On this local block the basis is \(((D_a^+D_b^+)_kD_b^+)_{M-k}\), \(0\le k\le M\). Its metric is

\[
g_k=\eta(k;a,b)\eta(M-k;a+b+k,b).
\tag{3.1}
\]

Define the Racah polynomial table

\[
K_{kr}={}_4F_3\!\left(\begin{matrix}-k,k+2a+2b-1,-r,r+2a+2b-1\\
2a,-M,M+2a+4b-1\end{matrix};1\right).
\tag{3.2}
\]

The implementation obtains the whole table by its three-term recurrence, avoiding a separate summation for every entry. Set

\[
\alpha=2a-1,\quad\beta=2b-1,\quad\gamma=-M-1,
\quad\delta_R=2a+2b+M-1,
\quad\lambda_r=r(r+2a+2b-1).
\]

Let

\[
\mathsf A_k=
\frac{(k+\alpha+1)(k+\alpha+\beta+1)(k+\beta+\delta_R+1)(k+\gamma+1)}
{(2k+\alpha+\beta+1)(2k+\alpha+\beta+2)},
\]

\[
\mathsf C_k=
\frac{k(k+\beta)(k+\alpha-\delta_R)(k+\alpha+\beta-\gamma)}
{(2k+\alpha+\beta)(2k+\alpha+\beta+1)},\qquad \mathsf C_0=0.
\]

Starting from \(K_{0r}=1\), use

\[
K_{k+1,r}=
\frac{(\lambda_r+\mathsf A_k+\mathsf C_k)K_{kr}-\mathsf C_kK_{k-1,r}}
{\mathsf A_k},\qquad 0\le k<M.
\tag{3.3}
\]

For the weights used here, \(a,b>1/2\), all displayed denominators are nonsingular and \(\mathsf A_k\ne0\) in the recurrence range. Equation (3.3) follows by substituting the terminating series (3.2) and matching its successive finite products; it is the standard Racah polynomial recurrence with these explicit module parameters.

Now put

\[
\omega_k=
\frac{(2a)_k(M+2a+4b-1)_k(-M)_k(2a+2b-1)_k}
{(2b)_k(1-2b-M)_k(M+2a+2b)_k\,k!}
\frac{2a+2b+2k-1}{2a+2b-1},
\]

\[
t_k=\frac{(2a+2b)_{2k}}{(2b)_k(2a+2b+M)_k},
\qquad
e_M=(-1)^M\frac{(2b)_M}{(2a+2b)_M}.
\tag{3.4}
\]

The exact raw-coordinate swap matrix is

\[
T_{kr}=(-1)^{k+r}e_M\,\omega_k\frac{t_r}{t_k}K_{kr}.
\tag{3.5}
\]

All quantities are rational when \(a,b\) are rational. To check the normalization, direct cancellation of the finite products in (2.2) and (3.4) gives

\[
t_k^2=\frac{\omega_k g_k}{g_0}.
\tag{3.6}
\]

The orthonormal permutation coefficient is \((-1)^{k+r}e_M\sqrt{\omega_k\omega_r}K_{kr}\); changing from normalized states to the raw metric (3.1) gives (3.5). Thus square roots cancel algebraically throughout the compiler. This identity is more useful than numerically choosing square-root signs after each move.

The local \((M+1)\)-square table takes \(O((M+1)^2)\) rational arithmetic operations: the finite-product normalizations and the recurrence both obey that bound. Recoupling tables are cached by \((a,b,M)\).

For the two-chirality action, the program first applies the left local block and then the right local block. This preserves the tensor factorization and costs \(O((P+Q+2)D)\) operations per adjacent permutation in the full labelled domain. Explicitly materializing a Kronecker block and applying it in one step would give a needlessly weaker \(O((P+1)(Q+1)D)\) bound.

These local permutations satisfy the Coxeter relations because (3.5) is the actual change of the coupled physical basis. This establishes the representation algebraically; the checks additionally verify involutions, braid relations and distant commutation exactly in a five-leaf rational example.

#### 4. Bose projection without a factorial sum

Let \(s_j=(j,j+1)\). A transposition has the palindromic adjacent word

\[
(i,m)=s_i s_{i+1}\cdots s_{m-1}s_{m-2}\cdots s_i.
\]

The orthogonal Bose projector is compiled recursively as

\[
\Pi_m=\left(\frac1m\sum_{i=1}^mU_{(i,m)}\right)\Pi_{m-1},
\qquad\Pi_1=I.
\tag{4.1}
\]

This is the left-coset decomposition of \(S_m\) over \(S_{m-1}\). Its total adjacent-word count with the displayed transposition paths is

\[
\sum_{m=2}^N(m-1)^2=\frac{N(N-1)(2N-1)}6=O(N^3).
\tag{4.2}
\]

There is no assertion that this straightforward path is optimal. It is explicit, finite, and avoids \(N!\) permutations.

The same recursion restricted to leaves \(3,\ldots,N\) constructs the spectator projector \(H\). Since these permutations fix pair \((1,2)\), its left and right pair labels remain unchanged. The initial bad-pair frame consists of the raw comb coordinates with

\[
0\le l\le Q,\quad0\le k\le\min(P,l+2),\quad k+l\text{ even}.
\]

Its dimension is

\[
r_0=\sum_{(k,l)\in\mathcal B_Q}
\binom{P-k+N-3}{N-3}
\binom{Q-l+N-3}{N-3},
\tag{4.3}
\]

where inadmissible negative-degree terms are zero. Pair Bose symmetry is already enforced by the even parity. Spectator projection reduces this labelled frame to \(r\) independent columns \(f_i=He_i\). A positive-semidefinite Gram LDL decomposition chooses them without a tall monomial elimination. This is the implemented Bose fractional-parentage step.

No spectator wavefunction is needed. Since \(H^2=H=H^*\), its raw Gram entries are coordinate reads:

\[
G_{ij}=\langle He_i,He_j\rangle
=\langle e_i,He_j\rangle
=g_i(He_j)_i.
\tag{4.4}
\]

Restrict to the selected independent columns. The resulting \(G\) is positive definite. Pair potential coefficients are constant on its orthogonal \((k,l)\) blocks, so their diagonal matrix \(D_{\mathrm pair}\) commutes with \(G\).

The dimension \(r\) equals the former pair-plus-Bose-spectator auxiliary dimension. One can describe it independently as

\[
r=\sum_{(k,l)\in\mathcal B_Q}
\sum_{a=0}^{P-k}\sum_{b=0}^{Q-l}
\dim\mathcal H^{\mathrm B}_{N-2,a,b}.
\tag{4.5}
\]

The sums represent internal spectator primaries and the unique outer binary relative excitations. For a single spectator, only \((a,b)=(0,0)\) contributes. The program obtains the same space by projection and exact rank, which avoids requiring a separate recursively stored spectator polynomial basis.

#### 5. The positive operator from two coordinate-extracted Grams

Let \(c_N=\binom N2\), and form the projected full Bose columns

\[
B_i=\Pi_Ne_i=\Pi_NHe_i.
\]

Only the \(r\) selected spectator-frame seeds require a full \(N\)-leaf projection. Define

\[
T_{ij}=c_N\langle B_i,B_j\rangle
=c_Ng_i(\Pi_Ne_j)_i.
\tag{5.1}
\]

Again the Gram is obtained by a single coordinate read per entry, because \(\Pi_N^2=\Pi_N\). There is no sum over the \(D\) labelled primary coordinates for each overlap.

The positive residual on physical Bose states is

\[
A_N=c_N\Pi_ND_{12}\Pi_N,
\tag{5.2}
\]

where \(D_{12}\) is diagonal with entries \(a_{kl}\) on the bad pair channels and zero elsewhere. Indeed each pair has the same matrix element between symmetric states, so the sum of all pairs is \(c_N\) times the representative one. In the spectator basis, the orthogonal pair-subspace projector is \(F G^{-1}F^*\), where \(F\) has columns \(f_i\). Thus

\[
A_N=c_NB D_{\mathrm pair}G^{-1}B^*.
\tag{5.3}
\]

Choose a maximal positive principal Gram block \(T_{II}\), using exact PSD LDL. Its size is \(R=\operatorname{rank}T\), and \(B_I\) is an independent basis of the positive image. Since

\[
B=B_I C,\qquad C=T_{II}^{-1}T_{I,:},
\]

the represented physical operator is

\[
M_+=C D_{\mathrm pair}G^{-1}T_{:,I}.
\tag{5.4}
\]

Its physical metric is \(T_{II}/c_N\), and it obeys the exact adjointness identity

\[
T_{II}M_+=M_+^{\mathsf T}T_{II}.
\tag{5.5}
\]

Strict positivity of every \(a_{kl}\) implies that the kernel of the quadratic form is precisely the orthogonal complement of the span of all projected bad-pair channels. Consequently \(M_+\) has the complete strictly positive residual spectrum, with exact multiplicities. This is not a rank assumption inferred from a numerical tolerance.

The full Bose primary dimension is computed independently by the cycle index. If \(\lambda\vdash N\) is a partition, \(z_\lambda=\prod_jj^{m_j}m_j!\), and

\[
H_\lambda(t)=\prod_{r\in\lambda}(1-t^r)^{-1},
\]

then

\[
\dim\mathcal H^{\mathrm B}_{N,P,Q}
=\sum_{\lambda\vdash N}\frac{[t^P](1-t)H_\lambda(t)\,[u^Q](1-u)H_\lambda(u)}{z_\lambda}.
\tag{5.6}
\]

The two factors \((1-t),(1-u)\) remove total descendants, using the positive-discrete tensor decomposition. The baseline multiplicity is this dimension minus \(R\). The full physical spectral polynomial follows by adding \(b_N(Q)\) to the roots of \(M_+\) and supplying the baseline root with that multiplicity.

#### 6. Explicit dynamical input

The only dynamics used by the backend is the previously derived Einstein pair energy. It is included in the file so the program does not depend on a former implementation. Let

\[
n=\min(k,l),\quad s=|k-l|,\quad H=d+n,
\quad\mu=d(d-2),\quad C=H(H-1),\quad u=4\mu-8C.
\]

On even simultaneous pair parity,

\[
\gamma_{kl}=
\begin{cases}
-4d^2+\dfrac{2d^2(2d+5)}{(2d-1)(2d+1)},&s=n=0,\\[4pt]
u\dfrac{2H-2}{2H-1}
-\dfrac{2(C+\mu)^2}{(2H-3)(2H-1)(2H+1)},&s=0,n>0,\\[4pt]
u+\dfrac{(n+1)(n+2)(2d+n-1)(2d+n)}{(2H-1)(2H+1)(2H+3)},&s=2,\\[4pt]
u,&s\ge4.
\end{cases}
\tag{6.1}
\]

The oriented pair residual is

\[
a_{kl}=\gamma_{kl}-\{4d(d-2)-8(d+l)(d+l-1)\}.
\tag{6.2}
\]

It vanishes for \(k\ge l+4\), and is strictly positive on the stated bad pair channels. The global subtraction is \(b_N(Q)\) in (1.1) of the companion cluster note. Equations (6.1)–(6.2) are inherited physical input. The present representation-theoretic audit checks their many-particle lift independently of the former differential realization, but does not rederive the gravitational pair kernel from bulk radial integrals.

#### 7. Arithmetic complexity and its limits

The following bounds count operations in the exact rational field. They do **not** treat rational bit lengths as uniformly bounded. Products, intermediate numerators and denominators, gcd reductions, and exact linear algebra have additional bit costs. They also do not supply a polynomial bound uniform in \(N\), since the dimensions themselves grow combinatorially.

For each seed, the full Bose transform costs \(O(N^3(P+Q+2)D)\) arithmetic operations by §§3–4. Spectator transforms preserve the labelled bad-pair subspace of dimension \(r_0\), so projecting all initial spectator seeds costs \(O(N^3(P+Q+2)r_0^2)\). Applying the full Bose projector to only \(r\) independent seeds costs \(O(N^3(P+Q+2)rD)\).

Both Grams use coordinate extraction, costing \(O(r_0^2+r^2)\) additional reads and scalar multiplications once the vectors and their metrics are available. PSD LDL selections cost \(O(r_0r^2+rR^2)\). The remaining dense inverses and contractions in (5.4) have a conventional \(O(r^3)\) arithmetic upper bound. Thus matrix assembly is bounded by

\[
O\!\left(N^3(P+Q+2)(r_0^2+rD)+r_0r^2+rR^2+r^3\right).
\tag{7.1}
\]

Characteristic-polynomial evaluation is a **separate** finite algebraic step. The delivered code calls SymPy's exact `charpoly`; its particular algorithm and bit costs are not included in (7.1). Standard exact Hessenberg determinant algorithms can add an \(O(R^3)\) arithmetic bound, but no new physical spectral recursion follows from such generic algorithms. Eigenvalue root isolation or numerical approximation adds its own requested-precision cost.

At fixed \(N,Q\),

\[
D=O(P^{N-2}),\qquad r_0,r,R=O(P^{N-3}).
\]

Consequently the projection stage is \(O(P^{2N-4})\), and the finite assembly algebra is \(O(P^{3N-9})\). The implementation currently retains projected comb coordinates, with storage

\[
O(rD+r_0^2)=O(P^{2N-5})
\tag{7.2}
\]

in the same fixed-\(N,Q\) regime. For \(N\ge4\), cached local blocks and swap columns fit within this arithmetic-entry bound; at \(N=3\), caching the full outer Racah table can instead use \(O(P^2)\) entries. Exact number bit sizes are additional in either case. Streaming columns could reduce some storage, but is not claimed as implemented.

For comparison, explicitly storing degree-\(P\) wavefunctions in \(N\) variables uses a dense monomial domain of order \(P^{N-1}\). Storing \(r\) such vectors costs \(O(P^{2N-4})\), and evaluating every one of their \(r^2\) overlaps termwise costs \(O(P^{3N-7})\). The comb representation saves one power in stored state coordinates; the coordinate-extracted Gram avoids the termwise overlap factor. This is a proved improvement over that **specified dense polynomial comparison model**. It is not a lower bound on any optimized sparse evaluator, an occupation/orbit algorithm, or every possible future contraction strategy.

The new implementation still has a growing auxiliary and positive rank at \(N\ge4\). Neither (7.1) nor the exact polynomial output solves its roots in a uniform closed form, establishes commuting charges, or proves integrability or nonintegrability.

#### 8. What was verified

`verify_recoupling_backend.py` performs three genuinely different comparisons:

1. Four local rational parameter sets check the recurrence against independently summed terminating \({}_4F_3\) cross-ratios, and check exact involution and physical metric preservation.
2. A five-leaf chiral block at \(d=7/3,P=4\) checks all adjacent involutions, all adjacent braid relations, and all distant commutators.
3. Eleven complete Bose blocks compare the new positive characteristic polynomial, with its baseline factor, against the former differential pair-Casimir Hamiltonian in `fock_exact.py`. This also checks exact Molien dimension, physical Gram adjointness and nonzero determinant on the selected image.

The complete blocks are:

| \(d\) | \(N,P,Q\) | Physical dimension | Positive rank |
|---|---:|---:|---:|
| 2 | 3,2,1 | 1 | 1 |
| 3/2 | 3,4,2 | 3 | 3 |
| 2 | 3,12,0 | 3 | 2 |
| 2 | 4,4,2 | 6 | 6 |
| 7/3 | 4,3,1 | 2 | 2 |
| 2 | 4,24,0 | 19 | 18 |
| 2 | 5,3,2 | 4 | 4 |
| 2 | 5,8,0 | 5 | 5 |
| 2 | 5,12,0 | 10 | 10 |
| 3/2 | 5,4,1 | 3 | 3 |
| 2 | 6,3,1 | 2 | 2 |

The cases with nontrivial kernel are included deliberately: an incorrect auxiliary rank or baseline multiplicity would change the full characteristic polynomial. The three nonintegral-mass cases also test the local unequal-weight normalization. All checks are exact rational identities; this is stronger than agreement of floating-point lists. Their scope is the abstract Einstein pair operator and its Bose lift, not a new bulk integration.

`benchmark_general_recoupling.py` additionally compares the final exact positive characteristic polynomials with the former `pair_gram.py` evaluator. A recorded run gave:

| \(N,P,Q\) | Raw labelled bad frame | Spectator Bose frame | New seconds | Former polynomial Gram seconds |
|---|---:|---:|---:|---:|
| 5,8,0 | 73 | 17 | 0.204 | 0.194 |
| 5,12,0 | 157 | 33 | 1.252 | 1.917 |
| 5,4,2 | 187 | 41 | 0.778 | 0.720 |
| 6,6,0 | 119 | 14 | 0.545 | 0.112 |

These are machine-dependent illustrative timings, not asymptotic certificates. The new compiler is faster in one of these samples and slower in others. The former occupation/orbit backend is substantially faster in many very small blocks. The benefit is an exact arbitrary-particle implementation with explicit recoupling structure, spectator compression, and stated asymptotic bounds; a blanket wall-clock superiority claim would be unsupported.

#### 9. Reproduction

The core backend needs only Python, SymPy, and this file directory:

```bash
PYTHONDONTWRITEBYTECODE=1 python all_n_recoupling.py --delta 2 --n 5 --p 12 --q 0 --verify --output n5_p12_q0.json
PYTHONDONTWRITEBYTECODE=1 python all_n_recoupling.py --delta 7/3 --n 6 --p 3 --q 1 --states --output example_states.json
```

`--states` includes the independent physical image basis in rational comb coordinates. `--verify` checks simultaneous Bose invariance and the physical Gram identity. The output also contains exact characteristic coefficients, matrix, metric, dimensions, baseline and kernel multiplicity.

The independent comparisons require the untouched former research package, with `fock_research/general/fock_exact.py` and `fock_research/main/pair_gram.py`. Set `ADS3_PRIOR_ROOT` to its root if it is not at the default relative path:

```bash
PYTHONDONTWRITEBYTECODE=1 ADS3_PRIOR_ROOT=/absolute/path/to/prior python verify_recoupling_backend.py
PYTHONDONTWRITEBYTECODE=1 ADS3_PRIOR_ROOT=/absolute/path/to/prior python benchmark_general_recoupling.py
```

The verification outputs are `recoupling_verification.json` and `general_recoupling_benchmark.json`. The companion cluster checks require `mpmath`. The entire new directory can be copied without changing any previous file.

#### Primary references

- [De Bie, Iliev, van de Vijver and Vinet, *The Racah algebra: An overview and recent results*, arXiv:2001.11195](https://arxiv.org/abs/2001.11195): higher-rank Racah algebras as intermediate-Casimir algebras and their coupling-basis overlaps.
- [Post, *Racah polynomials and recoupling schemes of \(su(1,1)\)*, arXiv:1504.03705](https://arxiv.org/abs/1504.03705): the relation between multivariable Racah polynomials and different recoupling schemes.
- [De Bie and van de Vijver, *A discrete realization of the higher rank Racah algebra*, arXiv:1808.10520](https://arxiv.org/abs/1808.10520): discrete intermediate-Casimir realizations and their multivariate polynomial structure.

These references describe the representation algebra that actually acts on the pair-Casimir multiplicity space. The Einstein potential is a finite-channel spectral function of these intermediate Casimirs. The recoupling algebra therefore computes its matrix elements exactly, while the Hamiltonian itself generally is not one of the diagonal commuting chains furnished by a single coupling tree.

## 附录 E　Stable pencil 的全指标线性化与 Gegenbauer 低簇

独立推导源文件：new_research/stable/NEW_STABLE_ANALYTIC_STRUCTURES.md。

### New analytic structures of the stable particle-number pencil

Date: 2026-10-19. Research continuation of both `ADS3_Fock_space_research.md`
§9 and the subsequently recovered `ADS3_Analytic_spectrum_research.md`,
Appendices F, H, K, and L. Both earlier deliveries are read-only inputs.

This note proves three results not established in those inputs:

1. The generic polynomial linearization of the leading derivation is valid
   **at every excitation degree**, with one explicitly defined countable
   algebraic exceptional set of physical masses. The earlier finite scans
   are replaced by a residue and binary-valuation proof.
2. The **entire lowest leading-slope chiral cluster**, at every excitation
   degree, has an explicitly diagonalizable second asymptotic operator.
   That operator is a two-variable differential operator with Gegenbauer
   eigenpolynomials. It gives every energy through its constant term, a
   convergent integer-power continuation in `1/N`, and the exact limiting
   gaps within this complete cluster.
3. A further third-order effective differential operator gives an explicit
   closed formula for **every first `1/N` correction** in that cluster, at
   every physical mass. Its apparent fourth-order symbol vanishes by the
   spectral retraction identity.

The second result is a finite-`Delta` gravitational realization of the
quadrupole/octupole structure of rotating-boson problems. An operator
contraction, including its numerical coefficient, establishes the relation.
Neither result diagonalizes the entire finite-`N` nonchiral pencil.

#### 1. Physical and algebraic input

Keep the stated minimal global AdS3 Einstein–real-scalar theory,
Brown–Henneaux and scalar boundary conditions, fixed quantum prescription,
`Delta>1`, and the scalar branch with no independent free boundary-graviton
occupation. Sourced gravity, constraints, and virtual boundary gravitons
remain in the already derived pair operator. The energy convention is

\[
 E=N\Delta+P+Q+Gg+o(G),\qquad
 W_N=\binom N2 a I+NA+B,\qquad a=\gamma_{00}.
\]

For each fixed finite `(P,Q)`, this exact coordinate pencil acts on a fixed
primary space once `N>=max(1,P+Q)`. This is a statement about the coefficient
of `G`; no uniform large-`N`, finite-`G` limit is used.

The stable primary algebra is the polynomial algebra generated by centered
creation moments `c_pq`, `p+q>=2`. Its products are products in the creation
algebra, not pointwise products of `N`-variable wavefunctions. The preceding
analytic report proved directly from two-body occupation counting that

\[
 A c_\alpha=\sigma_\alpha c_\alpha+
 \sum_{\substack{\beta+\gamma=\alpha\\|\beta|,|\gamma|\ge2}}
 V_{\alpha;\beta\gamma}c_\beta c_\gamma,
 \tag{1.1}
\]

and that `A` is a derivation and `B` has differential order at most two.
The derivation property is crucial below. The previously established
Hermitian realization in `t=N^{-1/2}` permits half powers in general, and
the actual `(4,1)` physical Jordan examples remain valid. They are not
reclassified as new discoveries here.

For clarity, the pair values retained as dynamical input are

\[
\begin{gathered}
 m=\min(k,l),\quad j=|k-l|,\quad h=\Delta+m,\quad
 \mu=\Delta(\Delta-2),\quad C=h(h-1),\quad u_m=4\mu-8C,\\
\gamma_{kl}=\begin{cases}
-4\Delta^2+\dfrac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},&m=j=0,\\
u_m\dfrac{2h-2}{2h-1}
-\dfrac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},&j=0,\ m\ge1,\\
u_m+\dfrac{(m+1)(m+2)(2\Delta+m-1)(2\Delta+m)}
 {(2h-1)(2h+1)(2h+3)},&j=2,\\
u_m,&j\ge4.
\end{cases}
\end{gathered}
\tag{1.2}
\]

Only even `k+l` occur on the bosonic pair space. The one-generator slopes are

\[
 \sigma_{pq}=2\sum_{k+l\ {
m even}}
 \alpha_{p,k}\alpha_{q,l}(\gamma_{kl}-a),\qquad
 \alpha_{p,k}=\binom pk\frac{(\Delta)_p}
 {(2\Delta+k-1)_k(2\Delta+2k)_{p-k}}.
 \tag{1.3}
\]

All coefficients in (1.1) and (1.3) are rational functions of `Delta`.

#### 2. All-degree nonresonance over Q(Delta)

##### Theorem 2.1: no one-generator resonance is a rational-function identity

Let `alpha=(P,Q)` and let

\[
 \alpha=\beta_1+\cdots+\beta_m,\qquad
 m\ge2,\quad |\beta_i|\ge2.
\]

Then the rational function

\[
 D_{\alpha;\beta_1\ldots\beta_m}(\Delta)
 =\sigma_{P,Q}(\Delta)-\sum_{i=1}^m\sigma_{\beta_i}(\Delta)
 \tag{2.1}
\]

is nonzero. In fact its coefficient of `(2 Delta-1)^{-1}` is nonzero and
has an exactly known binary valuation.

This theorem distinguishes a one-generator resonance from an equality of
two decomposable slope sums. The latter can be identities, for example
`2 sigma_30 = 3 sigma_20`. Such identities do not invalidate Theorem 2.1.

##### 2.1 The residue of a one-generator slope

The proof evaluates rational functions at an unphysical parameter value,
`Delta=1/2`. No physical continuation to that scalar boundary condition is
being asserted. A nonzero Laurent coefficient at any parameter value is
sufficient to disprove a rational-function identity.

Set

\[
 f_n=\frac{(1/2)_n}{n!}=\frac{\binom{2n}{n}}{4^n}.
\]

For every `p+q>=2`,

\[
 \boxed{
 \rho_{pq}:=\lim_{\Delta\to1/2}(2\Delta-1)\sigma_{pq}
 =\frac32(2f_pf_q-1).
 }
 \tag{2.2}
\]

To verify this directly, first note that `gamma_00` is the only pair value
with a pole at `Delta=1/2`, and

\[
 \lim_{\Delta\to1/2}(2\Delta-1)\gamma_{00}=\frac32.
\]

The apparent denominator `2 Delta-1` in the `(2,0)` value cancels its
numerator. In the `(1,1)` diagonal channel,
`C+mu=Delta(2 Delta-1)`, so its square cancels that denominator. All other
nonzero channels are manifestly regular there. The projector weights
`alpha_p,k` are also regular at `1/2`.

The weights have

\[
 \sum_k\alpha_{p,k}=1,\qquad
 \sum_k(-1)^k\alpha_{p,k}=\delta_{p0}.
 \tag{2.3}
\]

An elementary representation proof is that they are the diagonal matrix
elements of the complete pair-Casimir projectors on `1 tensor z^p`.
The alternating sum is the particle swap. Its diagonal matrix element
vanishes when `p>0`, since distinct single-particle degrees are orthogonal.
The identities are rational-function identities, having been proved for
all positive `Delta`. Consequently the sum over even `k+l` is `1/2` when
`p+q>0`. Finally `alpha_p,0(1/2)=f_p`. These facts prove (2.2).

##### 2.2 A binary denominator that no true partition can match

Write `s_2(n)` for the number of ones in the binary expansion of `n` and

\[
 e(n)=2n-s_2(n),\qquad E(p,q)=e(p)+e(q).
\]

The elementary factorial identity

\[
 v_2(n!)=\sum_{r\ge1}\lfloor n/2^r\rfloor=n-s_2(n)
\]

gives

\[
 v_2\binom{2n}{n}=s_2(n),\qquad v_2(f_n)=-e(n).
\]

For `p+q>=2`, `E(p,q)>=2`, so (2.2) has

\[
 \boxed{v_2(\rho_{pq})=-E(p,q).}
 \tag{2.4}
\]

Indeed `f_pf_q` has an odd numerator over `2^E`; subtracting one after
multiplication by two cannot cancel the resulting odd numerator.

Binary carries only decrease the digit sum. Hence

\[
 E\!\left(\sum_i\beta_i\right)\ge\sum_i E(\beta_i)
 >\max_i E(\beta_i),
 \tag{2.5}
\]

where strictness uses at least two primary factors, each with `E>=2`.
It follows that the valuation of `rho_alpha` is strictly lower than that
of every summand `rho_beta_i`. In a sum of rational numbers, a unique term
of strictly lowest 2-adic valuation cannot cancel. More precisely,

\[
 v_2\!\left(\rho_\alpha-\sum_i\rho_{\beta_i}\right)
 =-E(\alpha).
 \tag{2.6}
\]

Thus the residue of (2.1) is nonzero. This proves Theorem 2.1 for arbitrary
bidegree and every true primary partition. No cutoff appears in the proof.

##### Theorem 2.2: one global graded normal form outside a countable algebraic set

Define the explicit exceptional set

\[
 \mathscr E=\left\{\Delta>1:
 D_{\alpha;\beta_1\ldots\beta_m}(\Delta)=0
 \text{ for at least one true primary partition}\right\}.
 \tag{2.7}
\]

Then:

* `E` is a countable subset of the real algebraic numbers.
* For each finite excitation cutoff it contributes only finitely many
  masses; for all degrees simultaneously it is one fixed countable set.
* Over the field `Q(Delta)`, there is a unique triangular graded polynomial
  change of variables
  `u_alpha=c_alpha+(decomposable monomials of bidegree alpha)` such that

  \[
  Au_\alpha=\sigma_\alpha u_\alpha.
  \tag{2.8}
  \]

* At every fixed `Delta>1` outside `E`, that change of variables specializes
  at every finite degree. In particular this holds for **every
  transcendental physical `Delta`**.
* In these variables

  \[
  A=\sum_{|\alpha|\ge2}\sigma_\alpha u_\alpha\partial_{u_\alpha},
  \tag{2.9}
  \]

  so every finite primary block of `A` is diagonalizable, and its full
  eigenbasis consists of products of these one-generator eigenpolynomials.

For the proof, order decomposable monomials by factor number. At a target
partition, the homological equation for (2.8) divides the already known
forcing by exactly (2.1). Theorem 2.1 makes every such divisor invertible
in `Q(Delta)`. There are finitely many monomials at each bidegree, so this is
a finite polynomial construction, not an infinite series at a fixed degree.
The transformation is triangular with unit leading coefficient and has a
triangular polynomial inverse. Each divisor has finitely many real zeros;
there are countably many divisors. This proves all assertions.

The exceptional set is an upper bound on the actual obstruction set.
Vanishing divisors can have vanishing forcing, as the protected examples
already show. No claim is made that every member of `E` gives a Jordan
block. Conversely, the earlier physical `(4,1)` cubic resonances show that
one cannot simply remove `E` from the statement.

This theorem settles the earlier report's open all-degree *generic
one-generator nonresonance* question. It does not prove that a particular
rational mass such as `Delta=2` avoids all resonances at arbitrarily large
degree. Nor does diagonalizing `A` diagonalize `NA+B` or remove all possible
higher cluster resonances in its asymptotic expansion.

The homological method is the graded Poincare–Dulac construction; the new
input here is the all-index residue obstruction to an identically resonant
Einstein slope. For the established normal-form theory and its resonant
freedoms see G. Gaeta, *Algorithmic reduction of Poincare–Dulac normal forms
and Lie algebraic structure*, [math-ph/0102037](https://arxiv.org/abs/math-ph/0102037).

#### 3. A complete chiral lower cluster at every excitation degree

The rest of the note sets `Q=0` and abbreviates `c_p=c_p0`. Let

\[
 \begin{gathered}
 a=\gamma_{00},\qquad b=\gamma_{20},\qquad
 \sigma_2=-\frac{2\Delta^2(2\Delta^2+7\Delta+2)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)},\\
 \beta_2=\frac{b-a}{2\Delta+1}
 =-\frac{2\Delta(2\Delta^2+7\Delta+2)}
 {(2\Delta-1)(2\Delta+1)(2\Delta+3)}
 =\frac{\sigma_2}{\Delta}.
 \end{gathered}
 \tag{3.1}
\]

The already established universal chiral minimum, for `N>=P>=2`, is

\[
 g_{\min}(N,P)
 =a\binom N2+\frac{P\sigma_2}{2}N
       +\frac{\beta_2}{2}P(P-1).
 \tag{3.2}
\]

We now solve the entire cluster whose leading slope coincides with this
minimum; most members are nonminimum, non-Jastrow eigenbranches.

##### Lemma 3.1: the only minimum-slope generators are c2 and c3

For every physical `Delta>1`,

\[
 \sigma_3=\frac32\sigma_2,\qquad
 \sigma_p>\frac p2\sigma_2\quad(p\ge4).
 \tag{3.3}
\]

Here is a direct all-index proof. In the chiral pair spectrum put
`u=-4 Delta^2`, so `gamma_k0=u` for even `k>=4`. Define the remainder of
the affine Casimir line through channels zero and two:

\[
 r_k=\gamma_{k0}-a
 -\frac{b-a}{2(2\Delta+1)}
 [(\Delta+k)(\Delta+k-1)-\Delta(\Delta-1)].
 \tag{3.4}
\]

Then `r_0=r_2=0`, and

\[
 r_4=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,\qquad
 r_k=r_4+\frac{a-b}{2(2\Delta+1)}(C_k-C_4)>0\quad(k\ge4).
 \tag{3.5}
\]

The sign `a-b>0` follows directly from (3.1). On a degree-`p` endpoint
monomial, the pair Casimir is tridiagonal; for `p>=2` its matrix element
between the two opposite endpoint monomials vanishes. Therefore

\[
 2\sum_{k\ {
m even}}\alpha_{p,k}(C_k-C_0)=\Delta p.
\]

Inserting (3.4) in (1.3) gives

\[
 \boxed{\sigma_p-\frac p2\sigma_2
 =2\sum_{k\ge4,\ k\ {\rm even}}\alpha_{p,k}r_k.}
 \tag{3.6}
\]

The right side is zero for `p=2,3` and strictly positive for `p>=4`, since
`alpha_p,4>0`. This proves (3.3) without a numerical monotonicity guess.

At fixed `P`, every leading primary slope is a sum of generator slopes.
Consequently its minimum `P sigma_2/2` is attained exactly by the labels

\[
 c_2^{n_2}c_3^{n_3},\qquad 2n_2+3n_3=P.
 \tag{3.7}
\]

The entire cluster has generating function
`1/[(1-z^2)(1-z^3)]`. Its multiplicity grows with `P`, even though the
operator solving its constant energy term will have one fixed formula.

#### 4. The spectral projection is an algebra retraction

Let `E=sum_p p c_p partial_cp` be the excitation-degree derivation and set

\[
 K=A-\frac{\sigma_2}{2}E.
\]

Equation (3.3) makes every nonzero diagonal slope of `K` strictly positive.
Its zero-diagonal labels are exactly the monomials in `c_2,c_3`. Moreover
`Kc_2=Kc_3=0`; therefore these monomials are actual zero eigenvectors, not
only diagonal labels. On each finite degree the zero eigenvalue is thus
semisimple and its full eigenspace is exactly `C[c_2,c_3]_P`.

Other eigenvalues of `K` need not be simple or semisimple. Their real parts
are nevertheless strictly positive, so even their possible Jordan
polynomials are killed by `exp(-tau K)` as `tau` tends to positive infinity.
It follows that

\[
 \boxed{q=\lim_{\tau\to+\infty}e^{-\tau K}}
 \tag{4.1}
\]

exists coefficientwise on the graded polynomial algebra and projects onto
`C[x,y]`, where `x=c_2,y=c_3`.

Because `K` is a derivation, its finite-degree exponential obeys the product
rule for an algebra automorphism. Passing to the coefficientwise limit,

\[
 q(fg)=q(f)q(g),\qquad q(x)=x,\quad q(y)=y.
 \tag{4.2}
\]

Thus `q` is a graded **algebra retraction**, in addition to being the
coordinate spectral projection onto the entire minimum-slope space. It is
not asserted to be an orthogonal projection in a fixed `N`-independent
Euclidean metric. That distinction is necessary.

There is an explicit recursive construction. Put
`kappa_p=sigma_p-p sigma_2/2>0` for `p>=4`. From (1.1),

\[
 q(c_p)=-\frac1{\kappa_p}
 \sum_{r+s=p,\ r,s\ge2}V_{p;rs}q(c_r)q(c_s).
 \tag{4.3}
\]

Every denominator is strictly positive at every physical mass, and only
smaller degrees appear on the right. The first cases, independently
computed from differential-Casimir projectors, are

\[
 q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
\]

\[
 q(c_6)=\frac{5\{(18\Delta^3+153\Delta^2+387\Delta+144)x^3
 -(4\Delta^3+30\Delta^2+56\Delta+24)y^2\}}
 {34\Delta^3+273\Delta^2+611\Delta+240}.
 \tag{4.4}
\]

This construction does not rely on the generic-mass theorem of §2 and is
valid even at physical masses with Jordan resonances in other sectors.

#### 5. The complete second asymptotic operator

Define

\[
 B_{\rm low}=qB\big|_{\mathbb C[x,y]}.
 \tag{5.1}
\]

##### Why the projection does not create an arbitrary high-order operator

The restriction of `B` to the primary algebra still has differential order
at most two. This follows either by changing polynomial coordinates in the
full creation operator or by the vanishing of all third nested
commutators with multiplication operators.

For `f` in `C[x,y]`, multiplicativity gives `q M_f=M_f q`. Hence on the
low algebra,

\[
 [[[qB,M_f],M_g],M_h]
 =q[[[B,M_f],M_g],M_h]=0.
 \tag{5.2}
\]

Consequently `B_low` has differential order at most two. A differential
operator of order at most two in two polynomial variables is determined
by its actions on `1,x,y,x^2,xy,y^2`. Therefore six exact local jets prove
the operator at **all** degrees; this is not interpolation in `P` or `N`.

##### Theorem 5.1: an explicit Gegenbauer operator governs the whole low cluster

Let `E=2x partial_x+3y partial_y`. Then

\[
 \boxed{
 B_{\rm low}=\frac{\beta_2}{2}E(E-1)
   +\frac{\epsilon(\Delta)}2 (y^2+4x^3)\partial_y^2,
 }
 \tag{5.3}
\]

where

\[
 \boxed{
 \epsilon(\Delta)=
 \frac{54\Delta(\Delta+3)(\Delta+4)^2(2\Delta^2+9\Delta+3)}
 {(2\Delta-1)(2\Delta+3)(34\Delta^3+273\Delta^2+611\Delta+240)}>0.
 }
 \tag{5.4}
\]

The independent differential-Casimir computation gives precisely

| Input | `B_low` output |
|---|---|
| `1` | `0` |
| `x` | `beta_2 x` |
| `y` | `3 beta_2 y` |
| `x^2` | `6 beta_2 x^2` |
| `xy` | `10 beta_2 xy` |
| `y^2` | `(15 beta_2+epsilon)y^2+4 epsilon x^3` |

These six actions prove (5.3) by (5.2). All coefficients were derived as
rational functions of `Delta`, using the finite differential-Casimir
projectors and the original two-body occupation rule; the old stable
matrix code is used only for the separate larger-block comparison.

##### 5.1 Explicit eigenpolynomials

For every nonnegative integer `b`, let `F_b(x,y)` be monic in `y` with

\[
 F_b(x,y)=\sum_{j=0}^{\lfloor b/2\rfloor}f_{b,j}x^{3j}y^{b-2j},
 \qquad f_{b,0}=1,
\]

\[
 f_{b,j}=
 \frac{4(b-2j+2)(b-2j+1)}{b(b-1)-(b-2j)(b-2j-1)}f_{b,j-1}.
 \tag{5.5}
\]

Every denominator used here is nonzero. Direct substitution gives

\[
 (y^2+4x^3)\partial_y^2F_b=b(b-1)F_b.
 \tag{5.6}
\]

For example,

\[
 \begin{aligned}
 F_0&=1,&F_1&=y,\\
 F_2&=y^2+4x^3,&F_3&=y^3+4x^3y,\\
 F_4&=y^4+\frac{24}{5}x^3y^2+\frac{16}{5}x^6.
 \end{aligned}
\]

For each solution `2a+3b=P`, the polynomial

\[
 \boxed{x^a F_b(x,y)}
 \tag{5.7}
\]

is a full eigenvector of (5.3), with eigenvalue

\[
 \boxed{\beta(P,b)=\frac{\beta_2}{2}P(P-1)+\epsilon\binom b2.}
 \tag{5.8}
\]

These polynomials form a complete triangular eigenbasis of the low algebra
at every degree `P`. They are normalized rescalings of the Gegenbauer
polynomials `C_b^{-1/2}` under the imaginary substitution
`z=y/(2i x^{3/2})`; all apparent fractional powers cancel in (5.5).
Equivalently, their one-variable equation is

\[
 (1-z^2)F''+b(b-1)F=0.
\]

No standard positive Gegenbauer integration measure at parameter `-1/2`
is being substituted for the physical Bargmann norm. The special-function
identification concerns the exact polynomial differential equation. The
physical norm is still the inherited finite-`N` Gram norm.

#### 6. Complete convergent energy branches in this cluster

##### Theorem 6.1: every low-cluster branch has an ordinary 1/N expansion

Fix finite `P>=2` and any physical `Delta>1`. For each integer

\[
 b\equiv P\pmod2,\qquad 0\le b\le\lfloor P/3\rfloor,
\]

there is precisely one branch, counted within the minimum-leading-slope
cluster, with

\[
 \boxed{
 g_{P,b}(N)=g_{\min}(N,P)+\epsilon(\Delta)\binom b2+O(N^{-1}).
 }
 \tag{6.1}
\]

Every branch extends to a **convergent** expansion in integer powers of
`1/N` in a neighborhood of `N=infinity`. Its leading coordinate eigenstate
is (5.7). The `b=0` branch for even `P`, or `b=1` branch for odd `P`, is the
previously known exact minimum (3.2). The other branches are the new
complete analytic low-cluster spectrum to constant order.

For the proof set `u=1/N` and consider `A+uB` on the fixed primary space.
The eigenvalue `lambda_0=P sigma_2/2` of `A` is semisimple by §4 and is
isolated from every other leading slope by a strictly positive gap. The
finite-dimensional analytic Riesz projection therefore gives an analytic
reduced matrix

\[
 \lambda_0 I+u B_{\rm low}+O(u^2).
\]

This construction uses a contour separating this cluster; other Jordan
blocks of `A` outside it cause no singularity on that contour. At fixed
`P`, the admissible `b` have the same parity, and the numbers `binom(b,2)`
are distinct. Positivity of `epsilon` therefore makes `B_low` have simple
spectrum. After subtraction of `lambda_0` and division by `u`, the ordinary
analytic implicit-function theorem gives convergent eigenbranches in `u`.
Multiplying by `N` proves (6.1) and its all-order integer-power extension.

This proof explicitly resolves the cluster before asserting `O(1/N)`.
It does not infer it merely from semisimplicity of the full coordinate `A`
or from the existence of the earlier Hermitian `N^{-1/2}` realization.

All remaining chiral eigenvalues at this fixed `P` differ from (3.2) by a
strictly positive multiple of `N`, plus `o(N)`. Thus (6.1) exhausts the
complete `O(1)` spectrum above the exact minimum, rather than identifying
only selected test states. The constants and convergence radius depend
on `P` and `Delta`; no uniform claim as `P` grows with `N` is made.

For example at `Delta=2`,

\[
 \beta_2=-\frac{32}{35},\qquad
 \epsilon=\frac{10440}{1099}.
\]

At `P=12`, the entire low cluster has three branches `b=0,2,4`, with limiting
gaps above its exact minimum

\[
 0,\qquad \frac{10440}{1099},\qquad\frac{62640}{1099}.
\]

The complete primary block has 21 dimensions; these three branches have
just been obtained without diagonalizing that block. The exact comparison
against the 21-dimensional prior lift is an independent verification, not
the proof of the all-`P` formula.

#### 7. Precise contraction to the rotating-boson octupole spectrum

On every fixed finite chiral polynomial degree, rescale `x_i=sqrt(Delta) z_i`.
Then

\[
 \langle x_i^p,x_i^p\rangle
 =\frac{\Delta^p p!}{(\Delta)_p}\longrightarrow p!,
\]

and the properly rescaled `sl(2)` raising/lowering operators contract to
Bargmann oscillator multiplication/derivation. The pair projectors tend
to the usual relative-angular-momentum projectors of the two-dimensional
lowest-oscillator-level problem. The channel eigenvalues obey

\[
 \frac{\gamma_{k0}+4\Delta^2}{\Delta}
 \longrightarrow\begin{cases}1,&k=0,\\0,&k=2,4,\ldots.\end{cases}
\]

Consequently the fixed-degree pair operator, after removal of the common
pair constant and division by `Delta`, converges exactly to the relative
zero-angular-momentum contact projector. Simultaneously,

\[
 \boxed{\lim_{\Delta\to\infty}\frac{\epsilon(\Delta)}{\Delta}
 =\frac{27}{34}.}
 \tag{7.1}
\]

Thus (6.1) becomes `27 b(b-1)/68` in the normalization with contact pair
projector eigenvalue one. This is the octupole interaction derived by
Kavoulakis, Mottelson, and Reimann,
[*Low-lying excitations of a trapped rotating Bose–Einstein condensate*,
cond-mat/0011303](https://arxiv.org/abs/cond-mat/0011303),
Phys. Rev. A 63, 055602 (2001). Ueda and Nakajima derive the same structure
with their contact-strength convention in
[*Operator-algebraic approach to the yrast spectrum of weakly interacting
trapped bosons*, cond-mat/0012458](https://arxiv.org/abs/cond-mat/0012458),
Phys. Rev. A 64, 063609 (2001).

The quadrupole/octupole mechanism is therefore an established limiting
precedent. The finite-`Delta` coefficient (5.4), its all-mass algebra
retraction, and its application to the gravitational pair kernel are the
new results here. The contraction specifies the actual mapping; the
connection is not based only on similar terminology.

#### 8. Independent programs and verification scope

`independent_core.py` reconstructs the pair-Casimir projectors as polynomials
of the differential Casimir. At total chiral degree `T`, it uses

\[
 C=(\Delta+T)(\Delta+T-1)I-R_{T-1}D_T,\qquad
 P_k=\prod_{j\ne k}\frac{C-C_jI}{C_k-C_j}.
\]

This is independent of the preceding implementation's explicit
Clebsch–Gordan vectors. The audited channel values (1.2) are the retained
physical input; this subproject does not claim another radial integration
of the Einstein constraints at all masses.

The new verifier performs:

1. Exact symbolic residue checks against (2.2), and independent rational
   binary-valuation certificates, including genuinely large bidegrees.
2. Complete projector identities and, at smaller degrees, idempotence and
   mutual orthogonality.
3. The six generic-`Delta` local jet identities proving (5.3).
4. The Gegenbauer differential identities through degree 20.
5. Independent exact comparisons of the all-`P` operator against new
   preceding-backend blocks at `P=8,12`, including two distinct rational
   physical masses.
6. A separate physical-Gram numerical convergence check at `P=12`.

To reproduce:

```bash
python verify_new_stable.py --no-prior
python verify_new_stable.py --numerical
```

The first command needs only SymPy and this directory. The second also
compares with the frozen preceding package at the recorded relative path
and uses NumPy for the optional convergence check. `new_stable_verification.json`
records the actual results and does not treat the finite examples as proofs
of the all-index theorems.

#### 9. Claims, limitations, and remaining research targets

**New general theorems.** The nonzero residue of every one-generator slope
divisor, the one global countable algebraic exceptional set, the generic
all-degree polynomial linearization of `A`, the all-mass chiral spectral
algebra retraction, the exact second asymptotic differential operator,
and the complete convergent low-cluster branches are proved above.

**New explicitly solved structure.** At arbitrary fixed chiral excitation
`P`, the entire constant-gap cluster is diagonalized by one fixed
Gegenbauer equation. Its multiplicities, energies through constant order,
and leading coordinate states have closed expressions. Ordinary `1/N`
branches follow after its simple spectrum has been established.

**Not claimed.** The all-mass or all-rational-mass semisimplicity of `A` is
not proved. The countable exceptional set is not a classification of
actual nonzero resonance forcing. The nonchiral finite-`N` pencil remains
interacting, and its global commuting charges have not been constructed.
The chiral Gegenbauer operator governs the low cluster's second asymptotic
operator, not the complete finite-`N` Hamiltonian. Higher corrections are
convergently computable but are not being renamed a closed exact spectrum.

The genuinely open next step is whether the higher `1/N` corrections to
(5.3) belong to a controlled algebra of operators on these Gegenbauer
polynomials, and whether a related spectral retraction can isolate larger
nonchiral clusters. The residue theorem supplies a firm generic normal
form for the leading derivation while leaving those full interaction
questions intact.

#### 10. A further result: one third-order operator gives every 1/N coefficient

The preceding construction can be advanced by one full order without
building a new matrix for each excitation degree. Define the reduced
inverse, on the entire graded algebra,

\[
 R=K^{-1}(1-q)=\int_0^\infty(e^{-\tau K}-q)\,d\tau.
 \tag{10.1}
\]

The integral is coefficientwise convergent on every finite degree by the
strict positive complementary slopes proved in §3. It obeys

\[
 KR=RK=1-q,\quad qR=Rq=0,\quad [R,M_f]=0\quad(f\in\mathbb C[x,y]).
 \tag{10.2}
\]

The last identity follows because `Kf=0`, so every factor in the integral
commutes with multiplication by `f`.

##### 10.1 Riesz and Bloch gauge, and why the resulting energies are intrinsic

Consider `K+uB`, `u=1/N`. Choose the analytic wave operator from the low
algebra to its exact Riesz spectral subspace in the graph gauge

\[
 q\Omega=I,\qquad \Omega=I+\chi,\quad q\chi=0.
\]

Its intertwining equation gives

\[
 \chi=-uRB+O(u^2),\qquad
 H_{\rm low}(u)=uB_{\rm low}+u^2 C_2+O(u^3),
\]

\[
 \boxed{C_2=-qBRB\big|_{\mathbb C[x,y]}.}
 \tag{10.3}
\]

`K=A-(sigma_2/2)E` is one derivation on the whole graded algebra, so (10.3)
is a single all-degree operator, even though the subtracted scalar slope
is `P sigma_2/2` on degree `P`.

The coordinate operator `C_2` refers to this precise graph gauge. Changing
the analytic low-space frame by `I+uS+...` changes it by a commutator with
`B_low`. Its diagonal matrix elements in the simple eigenbasis (5.7) are
unchanged. Those diagonal elements, rather than an arbitrary coordinate
entry, give the physical `1/N` energy corrections.

##### Theorem 10.1: the apparent fourth-order effective operator is third order

Despite its expression as two second-order operators around a resolvent,
`C_2` has differential order at most **three** on `C[x,y]`.

To prove this, take four commutators of `qBRB` with multiplication by four
low polynomials. Because `q` and `R` commute with those multiplications,
all nonzero terms must distribute exactly two commutators to each copy of
`B`. A double commutator of a second-order differential operator is a
multiplication operator, say `M_b`. Each remaining term therefore has
form

\[
 qM_{b_1}R M_{b_2}=M_{q(b_1)}qR M_{b_2}=0,
\]

using the multiplicativity of `q`. Thus every fourth nested commutator
vanishes. This proves the order bound. Equivalently, write the highest low-variable
part of `RBf` as a sum of `(R a_ij) partial_i partial_j f`. Its apparent
fourth-order image under the outer `B` has coefficient
`q(a_kl R a_ij)=q(a_kl) q(R a_ij)=0`. This direct principal-symbol argument
is the same cancellation as the four-commutator proof. It is not based
on an observed bandwidth in a few matrices.

##### 10.2 The exact all-mass third-order operator

The finite jets through three input factors give

\[
 \boxed{
 C_2=(y^2+4x^3)\left[
 r_0\partial_y^2+r_1\partial_x^3
 +r_2 x\partial_x\partial_y^2+r_3 y\partial_y^3
 \right].
 }
 \tag{10.4}
\]

No derivative of order above three is omitted. The generic-mass
coefficients are the following rational functions. Write `d=Delta` and

\[
 \begin{aligned}
 D_3&=34d^3+273d^2+611d+240,\\
 D_4&=86d^4+1085d^3+4743d^2+7834d+2800,\\
 E_4&=214d^4+2709d^3+11915d^2+19854d+7056.
 \end{aligned}
\]

Then

\[
 r_0=-\frac{162(d+2)(d+3)(d+4)^2(2d^2+9d+3)P_7(d)}
 {(d+1)(2d-1)(2d+3)D_3^3},
\]

\[
 r_1=\frac{24(d+2)^2(d+3)(d+4)^2(2d^2+9d+3)}
 {(d+1)(2d-1)(2d+3)D_3},
\]

\[
 r_2=-\frac{54(d+3)(d+4)P_{14}(d)}
 {5(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^2D_4},
\]

\[
 r_3=-\frac{405(d+2)(d+3)(d+4)(d+5)(2d^2+11d+6)^2P_{11}(d)}
 {(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^3 E_4}.
 \tag{10.5}
\]

For an exact compact specification, the coefficients of the three
polynomials, in descending degree, are:

| Polynomial | Descending coefficient list |
|---|---|
| `P_7` | `(392, 9492, 89350, 421595, 1048276, 1289469, 633490, 102000)` |
| `P_14` | `(67104, 3197136, 66188408, 795919444, 6226850796, 33484727498, 127072393159, 343156515762, 655642305361, 869816630456, 776152186308, 445514734144, 155217203264, 29611287360, 2362752000)` |
| `P_11` | `(16, -1776, -52556, -618940, -4053536, -16362829, -41978760, -67587211, -64664772, -33117132, -8025696, -677376)` |

All denominators in (10.5) are nonzero for every physical `d>1`. The
coefficients, including their possible sign changes, have not been
inferred from sampling masses.

For orientation, at `Delta=2` the whole operator simplifies to

\[
 \begin{split}
 C_2=(y^2+4x^3)\bigg[
 &-\frac{1622417760}{27089251}\partial_y^2
 +\frac{37120}{3297}\partial_x^3\\
 &-\frac{174410861280}{3756088567}x\partial_x\partial_y^2
 +\frac{807408000}{3533212309}y\partial_y^3\bigg].
 \end{split}
 \tag{10.6}
\]

The common factor in (10.4) is forced by the exact minimum quotient,
rather than being an accidental factorization. To see this, the already
proved chiral minimum is the primary projection of the averaged seed with
`P` unit excitations. Pairing a primary with that seed picks the
`a_1^P` coefficient. On a centered monomial that coefficient is
`(-1)^P product_j(1-p_j)`. Removing the overall degree sign gives the
algebra character

\[
 \mathcal L(c_p)=(1-p)t^p,
\]

which intertwines `A` and `B` with their exact minimum eigenvalues at each
degree. Its restriction to the low algebra is the parametrization

\[
 x\longmapsto-t^2,\qquad y\longmapsto-2t^3,
\]

whose kernel is precisely the cusp ideal
`I=(y^2+4x^3)`. Since `Lq=L` and the Bloch gauge is `qOmega=I`, the reduced
family has the exact same one-dimensional quotient in every degree.
Every coefficient beyond the exact minimum therefore maps the low algebra
into `I`. In particular the coefficients of the differential operator
`C_2` must all be divisible by `y^2+4x^3`: this follows inductively by
applying the operator to monomials of factor degree at most its order.

Combining this ideal condition with differential order at most three and
weighted degree zero leaves exactly the four terms displayed in (10.4).
For example `partial_x^2 partial_y` has weight minus seven, but after
factoring a weight-six cusp polynomial there is no polynomial of weight
one available. Its coefficient must vanish. The higher formal effective
coefficients retain the cusp-image property; no corresponding all-order
differential-order bound is inferred here.

##### 10.3 Closed energy correction for every P and every low-cluster branch

Let `2a+3b=P`, `a,b>=0`, and define

\[
 \boxed{
 \begin{split}
 \eta(a,b;\Delta)=b(b-1)\bigg[
 &r_0+r_2a+r_3(b-2)\\
 &+2r_1\left(
 \frac{(a+1)(a+2)(a+3)}{2b-3}
 -\frac{a(a-1)(a-2)}{2b+1}\right)\bigg].
 \end{split}
 }
 \tag{10.7}
\]

The denominators `2b-3` and `2b+1` never vanish for integer `b>=0`. Then

\[
 \boxed{
 g_{P,b}(N)=g_{\min}(N,P)
 +\epsilon\binom b2+\frac{\eta(a,b;\Delta)}{N}+O(N^{-2}).
 }
 \tag{10.8}
\]

This is an explicit all-index coefficient formula, with no remaining
matrix diagonalization or auxiliary eigenvalue problem.

For completeness, the diagonal extraction can be derived without a
large Gegenbauer transformation. In a monomial `x^a y^b`, (10.4) increases
`b` by at most two. The leading and first subleading coefficients of
`F_b` suffice to obtain the diagonal in its triangular eigenbasis:

\[
 f_{b,1}=\frac{2b(b-1)}{2b-3}.
\]

The same-degree monomial term, the raised contribution from
`f_{b,1}x^{a+3}y^{b-2}`, and the subtraction of the first lower term of
`F_{b+2}` give exactly (10.7). All further lower terms cannot reach the
required diagonal because the raising bandwidth is only two. The
expression vanishes identically for `b=0,1`, as required by the exact
minimum at every finite stable `N`.

The leading low-cluster eigenpolynomials (5.7) are independent of `Delta`.
The reduced inverse and every recursively generated coefficient are
rational in `Delta`, regular on `Delta>1`. Since the differences of the
simple second coefficients are nonzero integer multiples of the positive
`epsilon`, all subsequent scalar perturbation coefficients are also
rational functions of `Delta` at fixed `(P,b)`. Their convergent existence
was proved in §6; (10.7) gives the first one explicitly.

##### 10.4 Verification of the additional result

`effective_second.py` derives the generic-mass reduced-resolvent jets and
stores all coefficients in `effective_second_symbolic.json`. It also
checks the operator against complete resolvent calculations at `P=10,12`
for `Delta=2`, outside the jet-determining blocks `P<=9`.

`verify_second_independent.py` separately reconstructs the required
primary matrices from the differential-Casimir projectors and centered
creation products. It does not import the preceding `pair_action`,
`stable_n`, or Clebsch–Gordan implementations. It checks the generic
coefficient formulas at `Delta=2,3/2` in the three determining degrees
`P=6,8,9`. The all-mass formulas themselves come from exact generic-mass
rational operations, not from those specializations.

```bash
python effective_second.py --delta symbolic
python effective_second.py --delta 2 --verify
python verify_second_independent.py
```

The report's unresolved higher-order question now starts beyond the
explicit `1/N` term (10.8). The order-three theorem above does not by itself
prove a proposed order-`r+1` bound at every higher perturbative order.

## 附录 F　原 Einstein 物理桥梁与完整核独立审查

独立推导源文件：new_research/audit/PHYSICAL_AND_KERNEL_REAUDIT.md。

### Physical closure and kernel re-audit, with a fresh noncircular resonance calculation

Date: 2026-10-19. Original files are unchanged. This audit read the four
requested Fock deliverables in full, the original mother note's final
normal-form/Ward/quantization proof chain, and the newly recovered analytic
report's relevant independent audits. Previously proved material is
retained as prior work rather than counted again as a new theorem.

#### 1. Verdict and exact logical dependencies

The strongest previously stated closure, logarithmic-kernel, Gram-image,
and stable-particle-number claims survive this audit in their stated
domain. In particular, no counterexample to the minimal Einstein–real-
scalar theory and its fixed prescription was found. The following
distinctions are essential:

| Claim | Inputs actually needed |
|---|---|
| Tree resonant quartic is independent of free boundary oscillators | Complete cubic normal form and the leading-linear **non-global** Brown–Henneaux Ward equations |
| Resonant scalar quartic has no 31 or 13 coefficients | Global scalar Ward equations, one irreducible positive-energy scalar module, and normal-ordered degree four |
| The zero-graviton scalar Fock branch and each scalar-number sector are invariant | The preceding quartic facts, plus parity, positive energy and the degree-two/constant form of quantum lower terms |
| The remaining scalar quadratic term vanishes in every mode | The separately computed common-regulator one-body subtraction and physical-gap condition |
| The full O(G) scalar spectrum is the unique lift of the given pair kernel | The preceding facts plus the action-derived pair coefficients; no added independent quartic coupling |

The third line is worth isolating. Structural invariance does not require
knowing the finite coefficient of every scalar quadratic counterterm.
A mode-dependent resonant scalar quadratic operator still preserves the
branch and scalar number. The **numerical pure two-body spectrum** does
require the fourth line. Thus a missing calculation of a quadratic
coefficient must not be presented as a failure of the already established
quartic closure, and a classical Ward identity must not be used to assign
an unevaluated quantum coefficient.

#### 2. A precise projected-Ward lemma

Work coefficientwise on the algebraic finite-energy domain. Let
\(H_0\) grade operators by energy difference, and denote its weight-
\(s\) projection by \(\mathcal R_s\). If \([H_0,Q]=sQ\), then

\[
\mathcal R_s[W,Q]=[\mathcal R_0W,Q].
\tag{2.1}
\]

This follows on each pair of full free-energy blocks, or by decomposing
\(W\) into homogeneous energy weights. It does not rely on a finite
cutoff being invariant under the raising charges.

After eliminating the complete cubic,
\(\widetilde H=H_0+\kappa^2W+\cdots\). For a non-global charge with
\(\widetilde L=\kappa^{-1}Q_{-1}+Q_0+\kappa Q_1+\cdots\), its
order-\(\kappa\) classical equation is

\[
([H_0,\cdot]-s)Q_1+[W,Q_{-1}]=0.
\]

Equation (2.1) kills the unknown correction and gives
\([\mathcal R_0W,Q_{-1}]=0\). The original boundary charges have nonzero
coefficients multiplying every \(a_{m,L/R}\) and its adjoint for
\(m\ge2\). In the polynomial Poisson algebra, simultaneous commutation
with all these linear coordinates forces independence of every free
gravitational oscillator. This uses the full resonant quartic before any
scalar compression.

The global charges have **no** order-\(\kappa^{-1}\) term. Their relevant
equation is instead at order \(\kappa^2\), and gives commutation of the
scalar quartic with the free global scalar bilinears. The distinction
between these two orders prevents the following mistakes: omitting the
non-global constraint; mixing the global and non-global charge expansions;
or silently dropping a next-order Hamiltonian term multiplied by a
nonexistent global singular charge.

The mother note §§70–71 derives these identities from the boundary-
completed classical action and fast scalar falloff. The nonzero quantum
trace defects discussed in its §71.4 are lower-degree phenomena and do
not modify this finite four-external-leg argument.

#### 3. Quantum lower-degree terms and scalar-number change

A commutator of homogeneous cubic Weyl symbols has degrees four and zero;
its third-order Moyal term is constant. Weyl quantization/normal ordering
of a quartic can add degree two and zero. In the specified canonical
measure and ordering, no separate higher-degree interaction occurs at
this order. For the resonant quadratic remainder:

* Scalar parity excludes a mixed gravitational–scalar bilinear.
* Strictly positive frequencies exclude pure two-creation and
  two-annihilation terms.
* Number-preserving pure gravitational terms annihilate the gravitational
  vacuum after the constant subtraction.
* A scalar \(b_I^\dagger b_K\) conserving both energy and angular
  momentum has \(I=K\).

This proves structural invariance of the scalar branch independently of
the remaining diagonal coefficients. Their common finite subtraction is
the additional physical input in mother §§73–76; this audit has not
replaced that component calculation by a symmetry assumption.

For the scalar quartic, normal ordering commutes with the action of free
global number-preserving bilinears. Its 31 component is therefore an
intertwiner

\[
D^+_{d/2}\otimes D^+_{d/2}
\longrightarrow
\operatorname{Sym}^3(D^+_{d/2}\otimes D^+_{d/2}).
\]

It kills the source lowest state because its energy is \(d\) whereas
the target has energy at least \(3d\). Commuting through the two raising
operators kills the entire source. Acting on each one-particle mode
exhausts every independent normal-ordered 31 coefficient, so adding
spectators cannot restore a coupling. The adjoint vanishes as well.

Simultaneous energy and angular-momentum conservation would otherwise
allow 31 candidates only at integer \(d>1\):
\(p_{\rm in}-\sum p_{\rm out}=q_{\rm in}-\sum q_{\rm out}=d\).
The intertwiner argument includes those integers. It would not apply
unchanged to multiple inequivalent scalar species or a higher-degree
operator with more than one annihilation leg; neither is in the present
theory. The explicit globally invariant scalar–graviton mixing
countermodel in the recovered analytic report correctly illustrates why
the non-global Ward input cannot be discarded.

#### 4. A fresh original-Hamiltonian calculation

The new script `raw_nonchiral_resonance.py` independently computes two
noncircular 31 candidates. It imports **no** previous raw solver,
Casimir-interpolation routine, spectral matrix, or pair eigenvalue
formula. Its method uses the original signed-leg constraints directly
in \(y=\sqrt{1+r^2}\), unlike the previous rational disk implementation.

For the scalar constraint,

\[
L_m=- (y^2-1)\partial_y^2-2y\partial_y
+2+\frac{m^2}{y^2-1},
\]

the independently derived response identity is

\[
\begin{aligned}
L_m[(y^2-1)^{m/2}y^{-a}]
={}&(y^2-1)^{m/2}\bigl[
(a-m+1)(m+2-a)y^{-a}\\
&\hspace{31mm}+a(a+1)y^{-a-2}\bigr].
\end{aligned}
\tag{4.1}
\]

Each polarized source is solved by exact coefficient equations, and then
substituted into the original differential equation. Fast falloff and
regularity are checked separately. For the momentum constraint,
\(C_\pm=A\pm iB\) have integrating factors
\((y^2-1)z^{\pm m}\), \(z=\sqrt{(y-1)/(y+1)}\). The allowed homogeneous
coefficient is kept and fixed by \(\lim_{y\to\infty}(y^2-1)B_m=0\) for
\(|m|\ge2\). Setting that homogeneous response to zero prematurely would
be a different calculation.

All six signed-leg partitions are integrated in

\[
H_4^{\rm con}=\int\sqrt{\bar\sigma}\,y
\bigl[t:t-u\chi^2+\mu u\phi^2-4u^2\bigr],
\]

and the virtual boundary-density exchange is evaluated separately. All
external outgoing modes are distinct, so no repeated-mode normalization
factor is hidden in the following results:

| \(d\) | Incoming \((n,j)\) | Outgoing modes | Contact / G | Virtual boundary / G | Total / G |
|---:|---|---|---:|---:|---:|
| 2 | \((4,0)\) | \((0,0),(0,2),(0,-2)\) | \(96/35035\) | \(-96/35035\) | 0 |
| 3 | \((5,0)\) | \((0,0),(0,2),(0,-2)\) | \(64/153153\) | \(-64/153153\) | 0 |

The first row is a fresh method check of a known physical cancellation.
The second is new noncircular evidence at nonzero scalar mass squared;
the previous forty integer-mass tests had circular external legs and
zero angular boundary exchange. Every scalar and momentum ODE residual,
the non-global boundary condition, each primitive derivative and the
final sum are verified exactly. These two cases are finite checks of the
physical bridge, not substitutes for the all-index Ward proof.

Run, from the new package root with its Python dependencies installed:

```bash
python3 audit/raw_nonchiral_resonance.py --delta 2 3
```

The adjacent JSON preserves all six contact and boundary pairings for
each case. A fresh default run took about 36 seconds in this research
environment; the assertion is the exact result, not that runtime.

#### 5. Mathematical interfaces retained after re-audit

##### Logarithmic completeness

The pair-Casimir ideal filtration is valid on the labelled primary
subspace because the Casimir commutes with total lowering and is
self-adjoint in the inherited positive Bargmann metric. Its successive
quotient eigenvalues \((d+k)(d+k-1)\) are strictly distinct for \(d>1\).
Thus high pair channels are exactly the corresponding collision-ideal
powers, including at \(N=2\) where some quotient spaces vanish.

After the \(V_N^4\) factor is removed, use of the **physical** right
Gram identifies the pair projectors with a map preserving every power
of each root ideal. A pure-order normal symbol then has normal-degree-
\(r\) coefficient divisible by the \(r\)-th normal power. The invariant
logarithmic frame has determinant a nonzero constant times the reduced
Vandermonde. At each height-one prime it equals the lattice with one
\(\delta\partial_\delta\) direction and all tangential directions free.
Taking its symmetric power removes every possible denominator prime.
Since the coefficient ring is a UFD, no further rational coefficient
can be supported only at intersections. This is a completeness argument,
not merely a family of verified vectors. Products are products of normal
symbols, not sequential variable-coefficient differential operators.

##### Gram projection and rank

The pair–spectator frame spans every bad channel in the
\(S_2\times S_{N-2}\)-invariant subspace. On a fully Bose vector the
pair operator maps into that subspace, so no non-symmetric spectator
representation has been omitted. The three double cosets have
multiplicities \(1,2(N-2),\binom{N-2}{2}\). With positive residuals
and \([D,G]=0\), the physical operator is a positive \(BB^\dagger\)
compression and the auxiliary operator has the same nonzero spectrum.
An independent-column principal Gram minor is positive definite;
removing its null dependencies preserves multiplicities. The old
\(DG^{-1}T\) orientation and its coordinate reduction are correct.

##### Stable particle number

Unique zero-excitation mode, nonnegative bidegrees and a two-body
number-preserving operator imply the full-level affine pencil after
the ground-pair subtraction. Only a ground–ground input can yield
quadratic particle-number dependence, and bidegree conservation forces
its output to remain ground–ground. In averaged creation coordinates,
all other occupation factors are affine and the two lowering
derivations are independent of \(N\). Global covariance is additionally
needed for their common kernel to be invariant. These hypotheses are
satisfied here. The later analytic Hermitian half-power construction
correctly treats the singular large-\(N\) Gram; it does not assume that
the coordinate slope matrix is semisimple.

#### 6. What this re-audit does and does not add

The prior strongest physical and algebraic theorems remain in force.
The new raw noncircular calculation adds a genuinely independent check
of the source-to-pair bridge. The companion
`GRASSMANN_AND_SOFT_ATOM_AUDIT.md` supplies the new extensive-excitation
audit and three-particle non-saturated edge-atom theorem.

This note does not establish a prescription-independent quantum theory,
the purely gravitational quantum spectrum, higher-order closure, or an
infinite-Fock strong unitary dressing. None is necessary for the current
fixed finite-level order-\(G\) scalar spectrum. The near-baseline
non-saturated layer exposed by the new Grassmann analysis remains a
new spectral problem; its presence is not an error in the exact
logarithmic-kernel classification.

## 附录 G　Grassmann 归一化与三粒子软正谱独立审查

独立推导源文件：new_research/audit/GRASSMANN_AND_SOFT_ATOM_AUDIT.md。

### Independent audit of the Grassmann limit and a new non-saturated edge atom

Date: 2026-10-19. All previous reports, source notes and programs are read-only
inputs. The extensive-excitation Grassmann limit was proposed and proved in
the root research branch. This note independently checks its delicate
Hilbert-space and symmetry interfaces, derives its first moment directly
from Haar geometry, audits the all-\(N\) exact-kernel proportion, and proves a
new three-particle consequence: a macroscopic fraction of the **nonzero**
residual eigenvalues converges to zero after division by \(P^2\).

The geometric calculations below are unconditional. Their spectral
interpretation uses the extensive-excitation limit audited in §§1–3, and
the previously established logarithmic-kernel Hilbert series. No finite
Einstein matrix is supplied to the geometric calculation or its program.

#### 1. The statement and the physical normalization

Fix \(N\ge3\), \(d=\Delta>1\), and let \(P,Q\to\infty\) with
\(Q/P\to r>0\). A primary is separately translation invariant and invariant
under simultaneous permutations of the particle labels. For two independent
oriented planes in \(\mathbb R^N\), choose orthonormal frames \((u,v)\) and
\((u',v')\), and put

\[
X_{ij}=(u_iv_j-u_jv_i)^2,\qquad
Y_{ij}=(u'_iv'_j-u'_jv'_i)^2.
\]

These quantities do not depend on the choice of oriented frame in the
planes. They obey \(\sum_{i<j}X_{ij}=\sum_{i<j}Y_{ij}=1\). The proposed
limiting symbol is

\[
\mathfrak h_r(X,Y)=-8\sum_{i<j}\min(X_{ij},r^2Y_{ij}).
\tag{1.1}
\]

The normalized full-primary empirical measure of \(W_N/P^2\) converges to
the pushforward of independent Haar plane measures by (1.1). If \(r\le1\),
the corresponding positive residual has symbol

\[
\mathfrak a_r=8r^2+\mathfrak h_r
=4\bigl(r^2-1+\|X-r^2Y\|_1\bigr)\ge0.
\tag{1.2}
\]

At \(r=1\), this is \(4\|X-Y\|_1\). For \(r>1\), one can exchange the
two chiralities before using the optimal Casimir baseline. All edge-atom
statements below use \(0<r\le1\).

The finite-spin corrections in the Einstein pair kernel do not change
(1.1). With \(C_k=(d+k)(d+k-1)\), its pair eigenvalue is

\[
\gamma_{kl}=4d(d-2)-8\min(C_k,C_l)+\varepsilon_{kl},
\qquad |\varepsilon_{kl}|\le c_d(1+\min(k,l)).
\tag{1.3}
\]

The residual vanishes for \(|k-l|\ge4\), and the spin-zero and spin-two
rational formulas give the displayed uniform linear bound. The removable
\(d=3/2,k=l=0\) factor must be canceled first. Since \(N,d\) are fixed,
(1.3) changes \(W_N/P^2\) by an operator of norm \(O(P^{-1})\) in the
physical metric. The constant term also disappears at this scale.

#### 2. Why mass comparison does not need a condition-number bound

On the same labelled polynomial primary space,

\[
C_{ij}(d)=-\delta_{ij}^{2}\partial_i\partial_j
+d\delta_{ij}(\partial_i-\partial_j)+d(d-1),
\]

so the exact difference from \(d_0=1/2\) is

\[
C_{ij}(d)-C_{ij}(1/2)
=(d-1/2)\delta_{ij}(\partial_i-\partial_j)+(d-1/2)^2.
\tag{2.1}
\]

Use the \(d_0=1/2\) Bargmann metric temporarily. On a one-site degree
\(p\) vector, multiplication by \(z\) has norm ratio
\(\sqrt{(p+1)/(p+1/2)}\le\sqrt2\), and differentiation has norm ratio
\(\sqrt{p(p-1/2)}\le p\). Consequently (2.1) has norm \(O(P)\) on total
left degree \(P\); the right analogue is \(O(Q)\). Restricting to the
translation-invariant subspace does not worsen these estimates.

For any **fixed** polynomial word in the normalized pair Casimirs,
telescoping the product therefore gives an \(O(P^{-1})\) norm difference
in this one reference metric. All normalized Casimirs have a uniform norm
bound there: use their Hermitian \(d_0\) counterparts and (2.1).

The Bose projector is orthogonal in the metric for every mass and is the
same algebraic projector. Thus

\[
\frac{|\operatorname{Tr}_{\rm labelled}(\Pi_B D)|}
 {\dim\mathcal P_{N;P,Q}}
\le
\frac{\dim V_P\dim V_Q}{\dim\mathcal P_{N;P,Q}}\,\|D\|_{d_0}.
\tag{2.2}
\]

The dimension ratio tends to \(N!\), and is bounded in the limit at issue.
Equation (2.2) supplies the trace comparison without identifying norms at
different masses.

For a continuous spectral function such as \(\min\), approximate it on a
common compact spectral rectangle by a polynomial. The approximation
error is controlled by the physical functional calculus **at each mass
separately**, where the two same-pair chiral Casimirs are commuting
self-adjoint operators. First fix the approximation tolerance, hence a
finite polynomial degree; then take \(P\to\infty\); finally send the
tolerance to zero. Increasing the approximation degree with \(P\) inside
the word estimate would require an extra estimate and is not used.

This resolves the apparent problem caused by the degree-dependent
Bargmann metrics. A uniform equivalence of those metrics is unnecessary.
The reference value \(d_0=1/2\) is used only for the positive Bargmann
representation and its Casimirs. The Einstein pair coefficient
\(\gamma_{00}\) has a pole there; no value of the physical Einstein
Hamiltonian at \(d_0\) is assumed or evaluated.

#### 3. Harmonic realization and the finite-group projection

At \(d_0=1/2\), the map

\[
z^p\longmapsto \frac{y^{2p}}{(1/2)_p}
\tag{3.1}
\]

sends total lowering to \(\tfrac14\Delta_y\). Therefore the labelled
degree-\(P\) primaries become the polynomials in the spherical-harmonic
space \(\mathcal H_{2P}(\mathbb R^N)\) that are even in every coordinate.
The Fischer norm differs from the original norm only by \(4^P\) on this
homogeneous space; the sphere harmonic norm has another degree-dependent
scalar factor. Neither affects the operators or normalized traces.

For \(J_{ij}=-i(y_i\partial_j-y_j\partial_i)\),

\[
C_{ij}(1/2)=\frac14J_{ij}^{2}-\frac14.
\tag{3.2}
\]

Let \(z=(u+iv)/\sqrt2\), with \(u,v\) orthonormal. The traceless coherent
tensor \(z^{\otimes l}\), \(l=2P\), belongs to \(\mathcal H_l\). The
normalized rank-one projector only depends on the oriented plane. The
\(SO(N)\) orbit average is the identity divided by \(\dim\mathcal H_l\),
by irreducibility. Expanding a fixed word in \(J/l\) over tensor slots
shows that the distinct-slot terms give the product of the bivector
components, while repeated-slot terms are \(O(l^{-1})\). This error is
uniform on the compact coherent orbit. Equations (3.1)–(3.2) therefore
have precisely the symbol normalization in (1.1).

##### Insertions inside twisted traces

It is insufficient merely to know
\(\operatorname{Tr}U(g)/\dim\mathcal H_l\to0\). The trace proof has a
fixed Casimir word inserted. For a word of length \(s\) in normalized
rotation generators, the coherent tensor expansion gives a finite sum
of terms bounded by a constant times

\[
|\langle z,gz\rangle|^{l-j},\qquad 0\le j\le s.
\tag{3.3}
\]

The constants are independent of \(l\); each normalized generator is a
sum of one-slot operators divided by \(l\). If \(g\ne\pm I\), the
inequality \(|\langle z,gz\rangle|<1\) holds for almost every oriented
plane. The exceptional set is a proper real-analytic subset: if every
complex isotropic line were invariant, every real two-plane would be
invariant, forcing \(g\) to be scalar for \(N\ge3\). The word operators
also have a uniform global norm bound. Dominated convergence applied to
(3.3) proves the required inserted twisted-trace limit.

##### Four identity contributions, not one

The full physical projection in the harmonic realization is the average
over

\[
(\Gamma_L\times\Gamma_R)\rtimes S_N,
\qquad \Gamma=(\mathbb Z/2)^N.
\]

On even harmonic degrees, each of

\[
(I,I,1),\quad(-I,I,1),\quad(I,-I,1),\quad(-I,-I,1)
\tag{3.4}
\]

acts identically. All other group elements have at least one non-scalar
signed-permutation matrix, and their inserted trace vanishes relative to
\(\dim\mathcal H_{2P}\dim\mathcal H_{2Q}\). Both degrees tend to infinity
because \(r>0\). Thus the leading physical dimension is

\[
\frac{\dim\mathcal H_{2P}\dim\mathcal H_{2Q}}
 {2^{2N-2}N!}.
\tag{3.5}
\]

The same factor occurs in the moment numerator and cancels. Retaining
only the literal group identity would give a wrong intermediate
dimension by a factor of four. The normalized limiting law is Haar on
two independent planes, as asserted.

**Audit result.** These arguments close the metric, inserted-word and
finite-group interfaces. No extra hypothesis of asymptotically uniform
metric equivalence or a full quantum Virasoro representation is needed
for this finite-dimensional spectral limit.

#### 4. A direct Haar calculation: the complete first moment for every N

For one Haar plane let \(U=|u_iv_j-u_jv_i|\). There is a short geometric
derivation of its distribution that does not use a spectral formula.
Choose \(u\) uniformly on \(S^{N-1}\), then choose \(v\) uniformly in
\(u^\perp\). Put \(R^2=u_i^2+u_j^2\). The vector with entries
\((-u_j,u_i)\) in slots \((i,j)\) is perpendicular to \(u\) and has
length \(R\). Consequently

\[
U^2=R^2T^2,\quad
R^2\sim\operatorname{Beta}(1,(N-2)/2),\quad
T^2\sim\operatorname{Beta}(1/2,(N-2)/2),
\tag{4.1}
\]

with independent factors; the conditional distribution of \(T\) does not
depend on \(u\). Their moments give

\[
\mathbb E U^{2s}
=\frac{(1)_s(1/2)_s}{(N/2)_s((N-1)/2)_s}
=\frac{(2s)!}{(N-1)_{2s}}.
\]

The compact moment problem determines the distribution, and these are
exactly the even moments of

\[
\boxed{U\sim\operatorname{Beta}(1,N-2).}
\tag{4.2}
\]

For independent \(U,V\) of this law and \(0<r\le1\),

\[
\begin{aligned}
\mathbb E\min(U^2,r^2V^2)
&=2\int_0^r t(1-t)^{N-2}(1-t/r)^{N-2}\,dt\\
&=\frac{r^2}{\binom N2}
{}_2F_1(2-N,2;N+1;r).
\end{aligned}
\tag{4.3}
\]

The hypergeometric function terminates. Hence the full limiting first
moment is a finite polynomial for every \(N\):

\[
\boxed{\mathbb E\mathfrak h_r
=-8r^2\,{}_2F_1(2-N,2;N+1;r).}
\tag{4.4}
\]

In particular,

\[
\mathbb E\mathfrak h_1=-\frac{4N}{2N-3},\qquad
\mathbb E\mathfrak a_1=\frac{12(N-2)}{2N-3}.
\tag{4.5}
\]

For \(N=3\), (4.4) is \(-8r^2+4r^3\). The program checks the integral,
the terminating polynomial and the balanced value by exact arithmetic
for \(N=3,\ldots,8\); the proof (4.1)–(4.4) is the general result.

#### 5. Independent audit of the full-N exact-kernel proportion

Let \(n=N-1\). The old logarithmic-kernel series is

\[
\frac{x^{2N(N-1)}}
 {\prod_{j=2}^{N}(1-x^j)\prod_{a=1}^{n}(1-yx^a)}.
\]

Fixing \(\nu_a\ge0\), \(\sum_a\nu_a=Q\), leaves the ordinary weighted
partition count at \(M=P-2N(N-1)-\sum_a a\nu_a\). Its leading term is
\(M_+^{n-1}/[(n-1)!N!]\). Summing over the \(\nu\)-simplex and dividing
by the leading physical primary dimension yields

\[
\boxed{k_N(r)
=\mathbb E_{T\sim\operatorname{Dirichlet}(1,\ldots,1)}
  \left(1-r\sum_{a=1}^n aT_a\right)_+^{n-1}.}
\tag{5.1}
\]

The finite Vandermonde degree shift does not affect the leading term.
The ordinary partition remainder and the simplex Riemann-sum remainder
are one power smaller, also at the finitely many thresholds \(r=1/a\).

Apply the Hermite–Genocchi divided-difference identity to
\(F(a)=(1-ra)_+^{2n-2}\). Its \((n-1)\)-st derivative is
\((-r)^{n-1}(2n-2)!/(n-1)!\) times the integrand in (5.1). The result is

\[
\boxed{
k_N(r)=\frac{((N-2)!)^2}{(2N-4)!\,r^{N-2}}
\sum_{a=1}^{N-1}
\frac{(-1)^{a-1}(1-ar)_+^{2N-4}}
 {(a-1)!(N-1-a)!}.}
\tag{5.2}
\]

Thus the root's formula, including its sign and factorials, is correct.
For example \(N=4,r<1/3\) gives \(1-4r+25r^2/6\). For \(N=3\),

\[
k_3(r)=
\begin{cases}
1-3r/2,&0<r\le1/2,\\
(1-r)^2/(2r),&1/2\le r\le1.
\end{cases}
\tag{5.3}
\]

The uniform-simplex random variable in (5.1) is a **counting** description
of the exact quantum kernel. It must not be identified with the Haar
Plücker-coordinate inequality region in (1.2). They have different
volumes, as the next section proves explicitly.

#### 6. A new exact three-particle edge atom

For \(N=3\), an oriented plane is specified by its unit normal.
Consequently \(X\) and \(Y\) in (1.1) are independent
\(\operatorname{Dirichlet}(1/2,1/2,1/2)\) vectors. Write
\(X_i=U_i^2,Y_i=V_i^2\), with independent uniform \(U,V\in S^2\).
The atom of the full residual law at zero is

\[
a(r)=\Pr\{X_i\ge r^2Y_i\ \text{for all }i\}.
\tag{6.1}
\]

Let \(E_i=\{|U_i|<r|V_i|\}\). Each absolute coordinate is uniform on
\([0,1]\), so \(\Pr(E_i)=r/2\). Triple intersection is impossible when
\(r<1\), because the sums of the squared coordinates are both one.
Permutation symmetry and inclusion–exclusion give

\[
\boxed{a(r)=1-\frac32r+3p_2(r),\qquad
p_2(r)=\Pr(E_1\cap E_2).}
\tag{6.2}
\]

##### A convergent positive series, with certified tail

The joint density of \((|U_1|,|U_2|)\) on the positive quarter disk is
\(2/[\pi\sqrt{1-x^2-y^2}]\). Conditional on
\((|V_1|,|V_2|)=(a,b)\), the rectangle
\([0,ra]\times[0,rb]\) lies strictly within that disk for \(r<1\).
Expanding the positive binomial series and using

\[
\mathbb E|V_1|^{2m+1}|V_2|^{2n+1}
=\frac{m!n!}{2\sqrt\pi\,\Gamma(m+n+5/2)}
\]

therefore gives, by monotone convergence,

\[
\boxed{
p_2(r)=\frac4{\pi^2}\sum_{s=0}^{\infty}
\frac{H^{\rm odd}_{s+1}\,r^{2s+2}}
 {(s+1)(2s+1)(2s+3)},\quad
H^{\rm odd}_{s+1}=\sum_{j=0}^{s}\frac1{2j+1}.}
\tag{6.3}
\]

The reduction uses
\(\sum_{m=0}^{s}[(2m+1)(2s-2m+1)]^{-1}
=H^{\rm odd}_{s+1}/(s+1)\).
After terms \(s=0,\ldots,K-1\), the positive remainder is bounded by

\[
0\le R_K(r)\le
\frac4{\pi^2}\frac{r^{2K+2}}
 {(2K+1)(2K+3)(1-r^2)}.
\tag{6.4}
\]

Thus this is an exact analytic atom formula and a directly certified
numerical procedure, not a fitted probability.

##### The atom contains a macroscopic non-saturated part

For finite \((P,Q)\), let \(\mu_{P,Q}\) be the full empirical measure
of \(A_3/P^2\), and \(\mu^+_{P,Q}\) the measure after deleting the exact
zero eigenvalues. Exactly,

\[
\mu_{P,Q}=k_{P,Q}\delta_0+(1-k_{P,Q})\mu^+_{P,Q}.
\]

Since \(k_{P,Q}\to k_3(r)\), the extensive-excitation limit implies
\(\mu^+_{P,Q}\) converges and its zero-atom weight is

\[
\boxed{z_+(r)=\frac{a(r)-k_3(r)}{1-k_3(r)}.}
\tag{6.5}
\]

For \(0<r\le1/2\), this simplifies to

\[
\boxed{z_+(r)=\frac{2p_2(r)}r
\ge\frac{8r}{3\pi^2}>0.}
\tag{6.6}
\]

In particular, at \(r=1/2\), the exact-kernel fraction is \(1/4\),
the full zero-atom weight is approximately \(0.355012640323455\), and
the normalized **non-saturated** measure has zero-atom weight
approximately \(0.140016853764606\).

The distinction is exact: these additional eigenvalues are strictly
positive at every finite block. More precisely, along continuity values
of the limiting distribution,

\[
\lim_{\epsilon\downarrow0}\lim_{P\to\infty}
\mu^+_{P,Q}([0,\epsilon])=z_+(r).
\tag{6.6a}
\]

In particular a diagonal choice of shrinking windows captures a
macroscopic fraction with \(\lambda(A_3)=o(P^2)\). The result does not
specify a uniform next scale or the individual energies.

##### Positivity persists for every fixed 0 < r < 1

For completeness, define

\[
C(r)=\int_0^r\frac{t\,\operatorname{artanh}t}{1-t^2}\,dt.
\]

Differentiating the absolutely convergent series gives

\[
p_2''(r)=\frac8{\pi^2r^3}C(r).
\tag{6.7}
\]

At \(r=1\), (6.1) has probability zero, so \(p_2(1)=1/6\).
Also \(p_2'(1)=1/2\): after one integration, the boundary value is
\(4\pi^{-2}\int_0^1\operatorname{artanh}t\,dt/t=1/2\).
Hence \(a(1)=a'(1)=0\).

On \([1/2,1]\), put \(d(r)=a(r)-(1-r)^2/(2r)\). Then

\[
d''(r)=\frac1{r^3}\left(\frac{24}{\pi^2}C(r)-1\right).
\tag{6.8}
\]

The bracket is strictly increasing and crosses zero at most once.
Where it is nonnegative, \(d(1)=d'(1)=0\) imply \(d(r)>0\) by backward
integration. On any remaining interval adjacent to \(1/2\), \(d\) is
concave and has positive endpoint values: at the left endpoint it equals
\(3p_2(1/2)>0\). It is therefore positive there as well. This proves

\[
\boxed{a(r)>k_3(r),\qquad z_+(r)>0
\quad\text{for every fixed }0<r<1.}
\tag{6.9}
\]

At the exactly balanced point \(r=1\), both atoms vanish. Formula
(6.7) also supplies the endpoint asymptotic. Since
\(C(r)=\tfrac18\log^2(1/(1-r))+O(\log(1/(1-r)))\), two integrations
from \(r=1\) give

\[
\boxed{a(r)\sim\frac3{2\pi^2}(1-r)^2
\log^2\frac1{1-r},\qquad r\uparrow1.}
\tag{6.10}
\]

The exact-kernel fraction is only \((1-r)^2/(2r)\). Thus even near the
balanced endpoint the leading atom is dominated by non-saturated levels.
This is an asymptotic in the fixed-ratio limiting law, not a uniform
double limit with \(1-r\) depending on \(P\).

#### 7. Reproduction and limits of the new consequence

Run `grassmann_edge_audit.py`. Its JSON records exact polynomial moment
certificates, an independent two-index-to-one-index check of the first
twelve coefficients of (6.3), and numerical probabilities with the tail
bounds (6.4). It imports no old spectral or raw-Hamiltonian program.

The new structural result is a failure of the identification
“semiclassical lower-edge atom = exact logarithmic kernel.” It is not a
failure of either the old kernel theorem or the new Grassmann law. It
exposes a further spectral layer that survives after the exact kernel has
been removed. Its next scaling law and individual spectral determinant
remain open.

#### 8. Independent audit of the analytic-charge obstruction

The following is an independent check of the root researcher's obstruction
theorem for the new three-particle symbol. It is a theorem about the
precisely specified analytic class, not a proof of general nonintegrability.

##### 8.1 Correct symplectic normalization

For three particles write the two oriented-plane normals as \(x,y\in S^2\),
and put \(z=ry\), where \(0<r\le1\). With common semiclassical parameter
\(\hbar=(2P)^{-1}\), the normalized left angular momentum has the standard
\(\mathfrak{so}(3)\) bracket, whereas the right variable \(y\) has bracket
scaled by \(1/r\). Therefore \(z\) has the standard bracket as well:

\[
\{x_i,x_j\}=\epsilon_{ijk}x_k,\qquad
\{z_i,z_j\}=\epsilon_{ijk}z_k,\qquad
\{x_i,z_j\}=0.
\tag{8.1}
\]

The symplectic leaf is the connected four-dimensional manifold
\(M_r=S^2_1\times S^2_r\). On it

\[
h_r=-8\sum_{i=1}^3\min(x_i^2,z_i^2),\qquad d_i=x_i^2-z_i^2.
\tag{8.2}
\]

Each of the three chambers having exactly \(d_i<0\) is nonempty and open.
For example choose \(x_i=0,z_i=r\), set the other two components of \(z\)
to zero, and take both other components of \(x\) nonzero. All defining
inequalities are strict and persist in a neighborhood on the leaf. On
this chamber the Hamiltonian is exactly

\[
h_r=-8r^2-8d_i.
\tag{8.3}
\]

This remains true at \(r=1\); the absence of a zero-energy atom there has
no bearing on the nonemptiness of these chambers.

##### 8.2 The obstruction and its proof

**Theorem.** Let \(F:M_r\to\mathbb R\) be globally real analytic. If
\(\{F,h_r\}=0\) on every open smooth chamber of \(h_r\), then \(F\) is
constant. In particular, there is no nonconstant polynomial first
integral restricted to \(M_r\).

Indeed, (8.3) implies \(\{F,d_i\}=0\) on a nonempty open set for each
\(i\). Each such bracket is real analytic on the connected leaf, so the
identity theorem gives \(\{F,d_i\}=0\) everywhere. Jacobi's identity then
gives \(\{F,c\}=\{F,e\}=0\), where direct differentiation yields

\[
\begin{aligned}
c&=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),\\
e&=\{d_1,c\}=8\{x_1^2(x_3^2-x_2^2)
                  -z_1^2(z_3^2-z_2^2)\}.
\end{aligned}
\tag{8.4}
\]

Append the two Casimirs to these four functions. In the coordinate order
\((x_1,x_2,x_3,z_1,z_2,z_3)\), the determinant of the Jacobian of
\((|x|^2,|z|^2,d_1,d_2,c,e)\), restricted to \(z_1=0\), is

\[
-2048x_1^3x_2x_3z_2^2z_3^2.
\tag{8.5}
\]

At the point

\[
x=(2/3,2/3,1/3),\qquad z=(0,3r/5,4r/5)
\]

on \(M_r\), its value is
\(-524288r^4/16875\ne0\). Thus the four Hamiltonian vector fields
of \(d_1,d_2,c,e\) span the tangent space on a nonempty open neighborhood.
The differential of \(F\) annihilates all four, so it vanishes on that
neighborhood. The real analytic identity theorem makes \(F\) constant
on the whole connected leaf. This argument requires only a nonempty
open set of full rank; an additional open-dense assertion is unnecessary.

The determinant and all brackets in (8.4) were recomputed independently
from (8.1), rather than copied into an expected-result calculation.
`analytic_charge_audit.py` records that exact certificate.

##### 8.3 Exact scope

The Hamiltonian itself is continuous and piecewise polynomial, and is
not globally real analytic. It is therefore outside the forbidden class.
The theorem leaves open nonsmooth or piecewise analytic integrals,
integrability on an individual chamber, and quantum commuting operators
whose limiting symbols are not globally analytic. It also does not
classify finite-block commutants or prove any statement about generic
Liouville integrability under weaker regularity assumptions. A putative
analytic charge on the physical finite-group quotient lifts to an
analytic charge on this covering space, so it is excluded as well.

## 附录 H　Stable 低簇与三阶有效算子的独立审查

独立推导源文件：new_research/audit/STABLE_PENCIL_INDEPENDENT_AUDIT.md。

### Independent audit of the new stable-pencil theorems

This note independently audits `../stable/NEW_STABLE_ANALYTIC_STRUCTURES.md`.
It tests the all-degree residue theorem, the exceptional-mass statement,
the semisimplicity and algebra-retraction claims for the lowest chiral
cluster, the differential-order interface, and the Gegenbauer effective
operator. These are logical and operator checks, supplemented by a third
symbolic construction of the six determining jets. Passing finite blocks
is not used as a proof of any all-degree assertion.

#### 1. The all-index residue argument is valid

Let \(d=\Delta\), \(f_p=\binom{2p}{p}/4^p\), and retain the note's
one-generator slope \(\sigma_{pq}\). At \(d=1/2\), only the pair value
\(\gamma_{00}\) has an actual pole. There are two apparent exceptions to
check rather than dismiss:

* In \(\gamma_{20}\), the numerator contains \(2d-1\) and cancels the
  corresponding denominator.
* In \(\gamma_{11}\), \(C+\mu=d(2d-1)\); its square cancels the apparent
  pole in the diagonal-channel term.

For all remaining allowed channels the denominators are nonzero there.
All projector weights are regular at \(d=1/2\): in particular the
potentially delicate rising factorial \((2d+k-1)_k\) has positive initial
argument \(k\) when \(k\ge1\), and is the empty product when \(k=0\).

Completeness and the swap eigenvalue of the pair projectors give
\(\sum_k\alpha_{p,k}=1\) and
\(\sum_k(-1)^k\alpha_{p,k}=\delta_{p0}\). Hence the sum of the two-chiral
weights over even total pair degree is \(1/2\) at every positive total
excitation. With
\(\lim_{d\to1/2}(2d-1)\gamma_{00}=3/2\), this independently recovers

\[
\rho_{pq}=\lim_{d\to1/2}(2d-1)\sigma_{pq}
 =\frac32(2f_pf_q-1).
\tag{1.1}
\]

Set \(e(p)=2p-s_2(p)\) and \(E(p,q)=e(p)+e(q)\). The factorial valuation
identity gives \(v_2(f_p)=-e(p)\). For \(p+q\ge2\), \(E\ge2\), and
writing \(f_pf_q=v/2^E\) with odd \(v\) gives

\[
\rho_{pq}=\frac{3(v-2^{E-1})}{2^E},\qquad
v_2(\rho_{pq})=-E.
\tag{1.2}
\]

In a true partition \(\alpha=\sum_{i=1}^m\beta_i\), with \(m\ge2\)
and all \(|\beta_i|\ge2\), binary-carry subadditivity of the digit sum
implies

\[
E(\alpha)\ge\sum_iE(\beta_i)>\max_iE(\beta_i).
\tag{1.3}
\]

Thus \(\rho_\alpha\) is the unique term with smallest 2-adic valuation
in \(\rho_\alpha-\sum_i\rho_{\beta_i}\), and cannot cancel. This proves
the nonzero rational-function divisor at every bidegree, including
partitions into arbitrarily many factors. It does not depend on a cutoff
or on a claim that every pair of decomposable slopes is different.

##### Exceptional masses and uniqueness

All physical pair and projector denominators are nonzero for \(d>1\).
Each nonzero rational-function divisor therefore has only finitely many
physical real roots, all algebraic. The union over all true partitions is
one countable algebraic set. At a fixed finite cutoff, the union is finite.
There is no claim that the all-degree union is locally finite or has no
accumulation points.

At each bidegree, the operator on decomposable monomials is triangular
with diagonal equal to sums of one-generator slopes. None equals the
one-generator slope over \(\mathbb Q(d)\). Consequently the inhomogeneous
equation defining the unit-leading eigenpolynomial has a unique solution.
This establishes a triangular polynomial coordinate change at each finite
degree and its polynomial inverse. It specializes simultaneously at all
degrees outside the stated exceptional set.

No gap was found in this argument. The set is an upper bound on actual
Jordan obstructions: a vanished divisor may have vanished forcing.
Transcendental physical masses are covered, whereas a particular rational
mass is not automatically proved nonresonant in all degrees.

#### 2. Lowest chiral cluster: positivity and semisimplicity

The all-degree slope gap is sound. For chiral pair channels write
\(a=\gamma_{00}\), \(b=\gamma_{20}\), \(u=-4d^2\), and let \(L(C)\)
be the affine Casimir line through channels zero and two. The remainder
is zero there and obeys

\[
r_4=\frac{2d(d+4)}{2d-1}>0,\qquad
r_k=r_4+\frac{a-b}{2(2d+1)}(C_k-C_4)>0\quad(k\ge4).
\tag{2.1}
\]

The endpoint Casimir matrix element is \(dp\) above its lowest-channel
value. Its matrix element between opposite endpoint monomials is zero
for \(p\ge2\), since the pair Casimir is tridiagonal. Thus the sum over
even channels gives exactly the affine contribution \(p\sigma_2/2\).
All even projector weights are positive, so

\[
\sigma_3=\tfrac32\sigma_2,\qquad
\sigma_p-\tfrac p2\sigma_2
 =2\sum_{k\ge4,\ k\ {
m even}}\alpha_{p,k}r_k>0\quad(p\ge4).
\tag{2.2}
\]

Let \(S=\mathbb C[c_2,c_3]\) and
\(K=A-(\sigma_2/2)E\), where \(E\) is excitation degree. The derivation
property and \(Kc_2=Kc_3=0\) make every element of \(S\) an actual kernel
vector. In each degree, triangularity shows that the algebraic
multiplicity of zero is precisely \(\dim S_P\). Its geometric
multiplicity is already at least that large. Equality follows, proving
semisimplicity of zero without assuming anything about Jordan blocks at
other eigenvalues.

Every other eigenvalue of \(K\) is strictly positive. Consequently
\(e^{-\tau K}\) converges in each finite degree, even if a positive
eigenvalue has Jordan blocks. Since \(K\) is a derivation,
\(e^{-\tau K}\) is multiplicative. Passing to the finite-degree limit
proves that \(q\) is an algebra retraction onto \(S\). This construction
is valid at every \(d>1\), including masses in the exceptional set of
section 1. These two theorems have different mass quantifiers, correctly
distinguished in the stable note.

#### 3. An independent order-two interface from occupation counting

Here is a direct derivation that does not assume the order of the
centered primary operator. Let \(a_j\) be uncentered creation moments,
\(a_0=1\), let \(D=\sum_{j\ge1}a_j\partial_{a_j}\) count excited factors,
and define the pair-output polynomial

\[
F_{ij}=\sum_{k=0}^{i+j}w^{k,i+j-k}_{ij}a_ka_{i+j-k}.
\tag{3.1}
\]

There are three types of incoming pairs. Two zero modes contribute
\(a(N-D)(N-D-1)/2\). One zero mode and one excited mode \(j\) contribute
\(F_{0j}(N-D-1)\partial_{a_j}\): after the derivative, \(D\) counts one
fewer excited factor. Two excited modes contribute
\(F_{ij}\partial_{a_i}\partial_{a_j}/(1+\delta_{ij})\). Therefore the
exact stable creation operator is

\[
\begin{aligned}
W_N={}&\frac a2(N-D)(N-D-1)
 +\sum_{j\ge1}F_{0j}(N-D-1)\partial_{a_j}\\
 &+\sum_{1\le i\le j}\frac{F_{ij}}{1+\delta_{ij}}
        \partial_{a_i}\partial_{a_j}.
\end{aligned}
\tag{3.2}
\]

The ordering in the middle term is essential. Expanding the polynomial
in \(N\) gives

\[
\begin{aligned}
A&=-aD+\sum_jF_{0j}\partial_{a_j},\\
B&=\frac a2(D^2+D)-\sum_jF_{0j}(D+1)\partial_{a_j}
 +\sum_{i\le j}\frac{F_{ij}}{1+\delta_{ij}}
       \partial_{a_i}\partial_{a_j}.
\end{aligned}
\tag{3.3}
\]

This proves directly that \(A\) is a derivation and \(B\) has differential
order at most two. The polynomial change from the moment variables to
\(a_1,c_2,c_3,\ldots\) is triangular and invertible. Differential order
is unchanged by such a coordinate change, and global covariance makes
the primary algebra invariant. Restriction to it therefore preserves
the order bound.

For \(f\in S\), multiplicativity gives \(qM_f=M_fq\). All triple nested
commutators of \(qB|_S\) with multiplication by elements of \(S\) thus
vanish. On the polynomial algebra in two independent variables this is
exactly the algebraic definition of differential order at most two.
Its values on \(1,x,y,x^2,xy,y^2\) determine it uniquely. There is no
extrapolation from six excitation levels in this argument.

#### 4. Third symbolic construction of all six jets

`stable_retraction_audit.py` independently reconstructs the needed pair
operator without importing either the prior program or the new stable
implementation. On total chiral pair degree \(T\), use the Bargmann metric

\[
G_{jj}=\frac{j!(T-j)!}{(d)_j(d)_{T-j}}.
\tag{4.1}
\]

Starting from \((z_1-z_2)^k\) for \(k=0,2\), repeatedly apply
\(z_1^2\partial_1+dz_1+z_2^2\partial_2+dz_2\) to obtain the degree-\(T\)
descendant vector \(v_k\). The only two nonconstant chiral projectors are

\[
P_k=\frac{v_kv_k^tG}{v_k^tGv_k},\qquad k=0,2.
\tag{4.2}
\]

The full Bose-extended pair operator is
\(uP_{\mathrm{even}}+(a-u)P_0+(b-u)P_2\), omitting \(P_2\) when
\(T<2\). This rank-two method is distinct from the stable implementation's
spectral-polynomial construction using the differential Casimir.

The program inserts these coefficients into (3.3), applies the operator
to the centered polynomials, takes the slice \(a_1=0\), independently
constructs \(q(c_4),q(c_5),q(c_6)\) from \(qK=0\), and checks all six jets
as rational functions of \(d\). Every residual is identically zero.
The separate result file `stable_retraction_audit.json` records the raw
and retracted outputs.

This independently confirms the all-degree operator

\[
B_{\mathrm{low}}
 =\frac{\beta_2}{2}E(E-1)
  +\frac{\epsilon(d)}2(y^2+4x^3)\partial_y^2,
\tag{4.3}
\]

with exactly the coefficient \(\epsilon(d)\) stated in the stable note.
Its denominator and numerator are positive for all \(d>1\), so no hidden
physical exceptional mass occurs in this low-cluster formula.

#### 5. Gegenbauer structure and convergent branches

At fixed weighted degree \(P\), the allowed powers \(b\) of \(y\) obey
\(2a+3b=P\). The triangular polynomial solutions of

\[
(y^2+4x^3)\partial_y^2 F_b=b(b-1)F_b
\]

are rescaled Gegenbauer polynomials of parameter \(-1/2\), using
\(z=y/(2ix^{3/2})\). The fractional powers cancel term by term in their
polynomial expression. This parameter does not give a standard positive
Gegenbauer weight; the physical Hilbert norm is not replaced.

At fixed \(P\), all allowed \(b\) have the same parity. Hence the numbers
\(b(b-1)\) are distinct, including the otherwise coincident values for
\(b=0\) and \(b=1\), which never occur together. The strictly positive
coefficient \(\epsilon\) makes the effective spectrum simple.

The leading slope is semisimple and separated from all others by a
positive gap at this fixed degree. An analytic Riesz reduction of
\(A+uB\), followed by subtraction of the leading slope and division by
\(u\), has the simple matrix (4.3) at \(u=0\). The finite-dimensional
analytic implicit-function theorem therefore gives convergent integer
powers of \(u=1/N\). Possible Jordan blocks of other leading slopes do
not affect this contour reduction. No uniform radius in \(P\) is claimed.

These are the correct hypotheses for the stated convergent branches.
Semisimplicity alone would not have sufficed without resolving the next
cluster matrix. The stable note does make that necessary extra step.

#### 6. A general retraction lemma for the next coefficient

The following structural lemma also audits the extension currently being
developed for the coefficient \(C_2=-qBRB|_S\).

Let \(\mathcal A\) be a graded polynomial algebra, \(S\subset\mathcal A\)
a polynomial subalgebra, and \(q:\mathcal A\to S\) an algebra retraction.
Suppose a derivation \(K\) vanishes on \(S\), preserves \(I=\ker q\),
and is invertible on \(I\) at each finite degree. Set
\(R=(K|_I)^{-1}(1-q)\). If \(B\) preserves grading, has differential
order at most two, and \(B1=0\), then

\[
-qBRB|_S\quad\hbox{has differential order at most three.}
\tag{6.1}
\]

To prove this, first note that \(K\), and hence \(R\), commutes with
multiplication by any element of \(S\). Thus \(R\) is an \(S\)-module
map. The operator \(RB|_S\) is an \(I\)-valued differential operator of
order at most two and can be written as a finite sum
\(\sum_{|\alpha|\le2}h_\alpha\partial^\alpha\) with \(h_\alpha\in I\)
on each finite-variable subalgebra.

For \(h\in I\), \(g\in S\), the second-order product identity is

\[
B(hg)=(Bh)g+h(Bg)+\Gamma_B(h,g),
\tag{6.2}
\]

where \(\Gamma_B\) is a derivation in each argument. Applying \(q\), the
middle term vanishes since \(q(h)=0\), while multiplicativity yields

\[
qB(hg)=q(Bh)g+q\Gamma_B(h,g).
\tag{6.3}
\]

The last term differentiates \(g\) at most once. Composing with
\(\partial^\alpha\), \(|\alpha|\le2\), proves (6.1). If \(B1\ne0\),
the usual corrected product identity gives the same conclusion because
the additional term still contains \(h\), but the present Einstein
operator already has \(B1=0\).

This is an all-degree consequence of the retraction and derivation
structure; a bound of order three does not rely on a finite matrix fit
or an accidental cancellation at a particular mass. It does not by
itself determine the coefficients or prove that higher effective
orders obey an equally small differential-order bound.

#### 7. Audit conclusion and scope

The strongest general claims in the audited stable note withstand the
independent checks above. The proofs distinguish generic all-degree
linearization from all-mass control of the special chiral low cluster;
they distinguish an exact second asymptotic operator from the full
finite-\(N\) interacting Hamiltonian. The previous physical nonchiral
Jordan examples are therefore compatible with these new results.

The rank-two audit program has been executed successfully with symbolic
\(d\), and its six residuals vanish identically. This provides an
independent coefficient certificate at the finite set of jets that the
operator-order theorem proves sufficient at every excitation degree.

## 附录 I　任意粒子数的宏观软正谱定理

独立推导源文件：new_research/audit/ALL_N_SOFT_ATOM_THEOREM.md。

### A non-saturated zero atom at every fixed particle number

Date: 2026-10-19. This is a new consequence of the extensive-excitation
Grassmann law and the exact logarithmic-kernel Hilbert series. The proof
is independent of finite Einstein matrix diagonalization. The density
normalizations, uniform remainder estimate, and probability bound have
also been checked independently by the recoupling research branch.

#### 1. Statement, notation, and order of limits

Fix \(N\ge4\) and any physical mass \(\Delta>1\). First let
\(P,Q\to\infty\) with \(Q/P\to r\), where \(0<r<1\) is fixed. For
two independent Haar oriented planes in \(\mathbb R^N\), write their
**unsquared** Pluecker coordinates as

\[
B_{ij}=u_iv_j-u_jv_i,\qquad B'_{ij}=u'_iv'_j-u'_jv'_i.
\]

The Grassmann theorem gives the symbol
\(4(r^2-1+\|B^2-r^2(B')^2\|_1)\) for the residual \(A_N/P^2\).
Its zero-atom weight is exactly

\[
\omega_N(r)=\Pr\{|B_{ij}|\ge r|B'_{ij}|\ \text{for all }i<j\}.
\tag{1.1}
\]

The previously established logarithmic kernel has limiting proportion

\[
k_N(r)=\mathbb E\left(1-r\sum_{a=1}^{N-1}aT_a\right)_+^{N-2},
\qquad (T_1,\ldots,T_{N-1})\sim\operatorname{Dirichlet}(1,\ldots,1).
\tag{1.2}
\]

Equivalently this is the finite truncated-power formula audited in
`GRASSMANN_AND_SOFT_ATOM_AUDIT.md`, section 5. Let \(z_{+,N}(r)\) denote
the zero-atom weight in the normalized limiting measure of the
**strictly positive** eigenvalues of \(A_N/P^2\). Then

\[
z_{+,N}(r)=\frac{\omega_N(r)-k_N(r)}{1-k_N(r)}.
\tag{1.3}
\]

To justify the subtraction at an atom, use the exact finite-dimensional
measure identity
\(\mu_{P,Q}=\kappa_{P,Q}\delta_0+(1-\kappa_{P,Q})\nu_{P,Q}\), where
\(\nu_{P,Q}\) contains only strictly positive levels and
\(\kappa_{P,Q}\to k_N(r)<1\). Weak convergence of the full measure then
implies weak convergence of \(\nu_{P,Q}\) by subtraction against every
continuous test function. Equation (1.3) follows from the resulting
limiting measure. No continuity of finite-level atom masses is assumed.

**Theorem.** For every fixed \(N\ge4\) there is \(r_N>0\) such that

\[
\boxed{z_{+,N}(r)>0\qquad(0<r<r_N).}
\tag{1.4}
\]

More quantitatively,

\[
\boxed{
\liminf_{r\downarrow0}\frac{z_{+,N}(r)}{r\log(1/r)}
\ge\frac{16(N-3)}{\pi^2N^2(N-1)}>0.
}
\tag{1.5}
\]

The extensive-excitation spectral limit is taken first at each fixed
\(r>0\). The limit \(r\downarrow0\) in (1.5) is a subsequent limit of
those limiting measures. This theorem does not claim uniform control
when \(r\) tends to zero together with \(P\).

For \(N=3\), the separate exact series in
`GRASSMANN_AND_SOFT_ATOM_AUDIT.md` proves positivity for every
\(0<r<1\). The present proof shows that the additional non-saturated
atom is a phenomenon at every fixed particle number, with an explicitly
specified small-ratio range for \(N\ge4\).

#### 2. One-coordinate violations and the exact kernel match at first order

Let \(M=\binom N2\) and define

\[
E_{ij}=\{|B_{ij}|<r|B'_{ij}|\}.
\]

The marginal \(|B_{ij}|\) has distribution \(\operatorname{Beta}(1,N-2)\),
as derived directly from the Haar frame in the earlier audit. Put
\(n=N-2\). Independence of the two planes gives

\[
\Pr(E_{ij})
 =\sum_{j=1}^{n}(-1)^{j+1}\binom nj
       \frac{j!}{(N-1)_j}r^j
 =\frac{N-2}{N-1}r+O_N(r^2).
\tag{2.1}
\]

Here \(j\) in the sum is a summation index, unrelated to the pair label.
The random variable in (1.2) has mean \(N/2\). Thus

\[
\begin{aligned}
1-M\Pr(E_{12})&=1-\frac{N(N-2)}2r+O_N(r^2),\\
k_N(r)&=1-\frac{N(N-2)}2r+O_N(r^2).
\end{aligned}
\tag{2.2}
\]

For \(r<1/(N-1)\), the second expression is an ordinary finite
polynomial, since the positive-part sign in (1.2) is inactive. Therefore
the difference of these two quantities is genuinely \(O_N(r^2)\).

#### 3. A shared pair of violations has a positive logarithmic enhancement

Set

\[
p_N(r)=\Pr(E_{12}\cap E_{13}).
\]

**Lemma.** For every fixed \(N\ge4\),

\[
\boxed{
p_N(r)=c_Nr^2\log(1/r)+O_N(r^2),\qquad
c_N=\frac{8(N-2)(N-3)}{\pi^2N(N-1)}.
}
\tag{3.1}
\]

##### 3.1 The exact star-coordinate factorization

Contract the unit simple bivector \(B\) with the first coordinate vector.
The resulting vector in \(e_1^\perp\) has components \(B_{1j}\), and its
squared length is \(u_1^2+v_1^2\). Haar invariance therefore gives

\[
(B_{12},\ldots,B_{1N})=RW,
\tag{3.2}
\]

where

\[
R^2\sim\operatorname{Beta}(1,a),\quad a=\frac{N-2}2,
\qquad W\sim\operatorname{Unif}(S^{N-2})
\]

are independent. The radial law follows by projecting a fixed coordinate
vector onto a Haar two-plane. Conditional on that radius, the stabilizer
\(SO(N-1)\) acts transitively on its direction, proving both uniformity
and independence of \(W\).

The joint density of the absolute values of two coordinates of \(W\) is

\[
f_W(s,t)=\frac{2(N-3)}\pi
 (1-s^2-t^2)^{(N-5)/2},
\qquad s,t\ge0,\quad s^2+t^2<1.
\tag{3.3}
\]

It has finite positive value
\(f_W(0,0)=2(N-3)/\pi\). The negative exponent at \(N=4\) causes no
problem in the small rectangle used below.

##### 3.2 Uniform conditional estimate and the logarithm

Condition on the other plane and abbreviate
\(A=|B'_{12}|\), \(D=|B'_{13}|\), both in \([0,1]\). If \(R\ge2r\),
the violation rectangle has side lengths \(rA/R,rD/R\), so its squared
radius is at most \(1/2\). Taylor expansion of (3.3), uniformly over
this compact disk, gives

\[
\Pr(E_{12}\cap E_{13}\mid R,A,D)
 =\frac{2(N-3)}\pi\frac{r^2AD}{R^2}
  +O_N\!\left(\frac{r^4}{R^4}\right).
\tag{3.4}
\]

Write \(s=R^2\). Its density is \(a(1-s)^{a-1}\). Since \(a\ge1\),

\[
\begin{aligned}
\Pr(R<2r)&=O_N(r^2),\\
\int_{4r^2}^1\frac{a(1-s)^{a-1}}s\,ds
 &=(N-2)\log(1/r)+O_N(1),\\
r^4\int_{4r^2}^1\frac{a(1-s)^{a-1}}{s^2}\,ds&=O_N(r^2).
\end{aligned}
\tag{3.5}
\]

The first region therefore contributes only \(O_N(r^2)\), and the
remainder in (3.4) remains \(O_N(r^2)\) after integration. All bounds
are uniform in \(A,D\), so averaging over the second plane is justified.

Finally, its independent factorization (3.2) gives

\[
\mathbb E(AD)=\mathbb E(R^2)\mathbb E|W_2W_3|
 =\frac2N\frac2{\pi(N-1)}
 =\frac4{\pi N(N-1)}.
\tag{3.6}
\]

Combining (3.4)–(3.6) proves (3.1). The logarithm is produced by the
integral of \(1/R^2\) against a radial density proportional to \(R\)
near zero. This mechanism is absent at \(N=3\), where \(W\) is a circle
and its two coordinates cannot both be close to zero.

#### 4. A probability bound proves the all-N theorem

Combine \(E_{12}\) and \(E_{13}\) into a single event before applying
the union bound to all the remaining edges. This exact inequality is

\[
\Pr\left(\bigcup_{i<j}E_{ij}\right)
 \le M\Pr(E_{12})-p_N(r).
\tag{4.1}
\]

Consequently (2.2) and (3.1) imply

\[
\omega_N(r)-k_N(r)
 \ge c_Nr^2\log(1/r)-C_Nr^2
\tag{4.2}
\]

for a finite constant \(C_N\) and all sufficiently small \(r>0\).
This is strictly positive on some interval \((0,r_N)\). No assumption
about triple intersections or a truncation of the full inclusion–exclusion
series is required.

Dividing (4.2) by
\(1-k_N(r)=N(N-2)r/2+O_N(r^2)\) proves (1.4)–(1.5).

#### 5. A fully explicit four-particle range

One can make the interval quantitative at \(N=4\) without estimating
an unknown remainder constant. For the two star coordinates, the squared
radius \(T=B_{12}^2+B_{13}^2\) is the product of independent
\(\operatorname{Beta}(1,1)\) and \(\operatorname{Beta}(1,1/2)\) variables.
Its exact density is

\[
f_T(t)=\operatorname{artanh}\sqrt{1-t},\qquad 0<t<1.
\tag{5.1}
\]

The signed two-dimensional density is \(f_T(s^2+t^2)/\pi\), and the
absolute density is four times that. Use

\[
\operatorname{artanh}\sqrt{1-v}
 =\log(1+\sqrt{1-v})-\tfrac12\log v.
\]

For the conditional violation rectangle, its argument obeys
\(0\le v\le r^2\). Replacing the first logarithm by its upper and lower
values yields the rigorous bounds

\[
\begin{aligned}
\frac{p_4(r)}{r^2}
&\le\frac4{3\pi^2}
 \left[\log\frac1r+\frac{37}{12}-\frac{\pi^2}{8}\right],\\
\frac{p_4(r)}{r^2}
&\ge\frac4{3\pi^2}
 \left[\log\frac1r+\frac{37}{12}-\frac{\pi^2}{8}
 +\log\frac{1+\sqrt{1-r^2}}2\right].
\end{aligned}
\tag{5.2}
\]

Here the constants follow from the elementary radial moments

\[
\mathbb ET=\tfrac13,\qquad
\mathbb E(T\log T)=\tfrac13(2\log2-13/6)
\]

and the angular rectangle integral

\[
J=\int_{[0,1]^3}\log(tu^2+(1-t)v^2)\,dt\,du\,dv
 =\frac{\pi^2}4-4.
\tag{5.3}
\]

For a direct evaluation of \(J\), split the unit square into \(u\ge v\)
and \(v\ge u\), substitute \(v=us\) on the first half, and integrate
over \(u\). The result is
\(-2-2\int_0^1s^2\log s/(1-s^2)\,ds\). Expanding the positive geometric
series gives (5.3) from the sum of reciprocal odd squares.

At \(N=4\), equations (2.1) and (1.2) are exactly

\[
1-6\Pr(E_{12})=1-4r+r^2,
\qquad k_4(r)=1-4r+\tfrac{25}{6}r^2
\quad(0<r<1/3).
\]

Using only \(\pi^2<10\), \(\log2<1\), and \(\log(1/r)\ge23\) in
the lower bound (5.2) gives
\(p_4(r)/r^2\ge143/45\). Since
\(143/45-19/6=1/90\), (4.1) proves the explicit certificate

\[
\boxed{
\omega_4(r)-k_4(r)\ge\frac{r^2}{90}>0,
\qquad 0<r\le e^{-23}.
}
\tag{5.4}
\]

This interval is deliberately conservative. It certifies a fixed-ratio
phenomenon and is not claimed to be the maximal range of four-particle
soft-atom positivity.

#### 6. Reproduction and unresolved scale

`all_n_soft_atom.py` checks the shared-edge coefficient from independent
sphere and Beta moments, checks the matching linear terms and the exact
four-particle polynomials, evaluates the elementary angular and radial
integrals independently, and records the explicit bounds (5.2). Its JSON
keeps the exact symbolic certificates separate from numerical quadrature.

The theorem concerns a macroscopic fraction of strictly positive finite
eigenvalues that falls into an \(o(P^2)\) window in the iterated limiting
sense. It does not identify their next energy scale, individual levels,
or spectral determinant. For \(N\ge4\), positivity of this atom at every
fixed \(0<r<1\) remains open; only the small-ratio interval is proved here.
