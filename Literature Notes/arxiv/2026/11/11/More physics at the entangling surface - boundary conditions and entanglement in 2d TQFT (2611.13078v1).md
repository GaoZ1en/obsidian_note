---
paper id: 2611.13078v1
title: "More physics at the entangling surface: boundary conditions and entanglement in 2d TQFT"
authors:
  - Jackson R. Fliss
  - Alan Rios Fukelman
  - Stathis Vitouladitis
publication date: 2026-11-09T19:00:01
abstract: |-
  The paper constructs norm-preserving factorization maps in compact semisimple two-dimensional TQFTs by dressing path-integral cuts with edge operators. It derives state- and boundary-dependent entanglement, relates suitable multi-interval Rényi entropies to closed-surface partition functions, and studies symmetry asymmetry in finite gauge, Ising, Fibonacci, Haagerup and topological-coset examples.
comments: "54pp. + appendix; downloaded v1 PDF has 66 pages"
url: https://arxiv.org/abs/2611.13078v1
summary: "区域 sewing 的有限维模型：先修复切割映射的 Gram 算符，再区分保范性、边缘态谱和对称性；闭曲面熵重建另需固定 Euler 归一化与足够边缘秩。"
tags: []
---

# 切割路径积分不是自动保范的

**最值得取走的是一个明确的 sewing 条件：切割映射必须满足 $\iota^\dagger\iota=1$，而不是只要求切开的两个路径积分能形式上重新粘回。** 本文在紧致、半单、具有正量子维数的二维 TQFT 中，把这一区别变成了可逐项计算的有限维线性代数。标量 dressing 可以修复内积，却不唯一决定区域密度矩阵；进一步选择非幺正的矩阵 dressing，还能连续改变边缘纠缠谱。

与当前研究的直接接口是：把区域扩展 Hilbert 空间中的“规范约束匹配”“切割后内积”“边界态选择”分开。本文没有构造引力 CPS 的辛形式，也没有证明这些有限维 dressing 已经对应 JT／AdS 引力的物理边界条件。

来源为 [arXiv v1](https://arxiv.org/abs/2611.13078v1)。以下页码均为 **PDF 页码，也等于正文印刷页码**。阅读覆盖 §§2–5 与附录 A；核心切割、矩阵 dressing、多区间归一化与重建条件已结合实际 PDF 页 14、17–18、20、43、56 核对。公式以下按可操作的正交归一基重写，必要处保留原式编号。

# 1. 从模块范畴到闭／开 Hilbert 空间

## 对称线与边界不是同一套数据

§2 的输入是融合范畴 $\mathcal C$ 与不可分解 $\mathcal C$-模块范畴 $\mathcal M$。简单拓扑线 $a$ 的融合为

$$L_aL_b=\sum_cN_{ab}^{\ c}L_c,\qquad
\sum_cN_{ab}^{\ c}d_c=d_ad_b,\qquad D^2=\sum_ad_a^2.$$

简单边界条件为 $m\in\operatorname{Irr}(\mathcal M)$。线作用于边界的重数 $\widetilde N_{am}^{\ n}$ 构成非负整数矩阵表示（NIM-rep），满足

$$\widetilde N_a\widetilde N_b=\sum_cN_{ab}^{\ c}\widetilde N_c,
\qquad \sum_n\widetilde N_{am}^{\ n}\widetilde d_n=d_a\widetilde d_m.$$

作者的矩阵约定是 $[\widetilde N_a]^n{}_m=\widetilde N_{am}^{\ n}$，因此最后一式写成 $\widetilde N_a^T\widetilde d=d_a\widetilde d$。$\widetilde d_m$ 是带边界 $m$ 的圆盘路径积分，只有相对比例由 NIM-rep 决定，整体比例对应 Euler 反项，不能悄悄固定。

闭圆上的正交归一真空 $|m\rangle$ 与局域幂等元 $\Pi_m$ 对应：

$$\Pi_m\Pi_n=\delta_{mn}\Pi_m,
\qquad\sum_m\Pi_m=1,
\qquad \langle\Pi_m\rangle_{S^2}=\widetilde d_m^2.$$

因此 $\dim\mathcal H_{S^1}=|\operatorname{Irr}(\mathcal M)|$。半球态与闭曲面配分函数为（2.20–2.23）

$$|HH\rangle=\sum_m\widetilde d_m|m\rangle,
\quad Z_0:=Z[S^2]=\sum_m\widetilde d_m^2,
\quad Z[\Sigma_g]=\sum_m\widetilde d_m^{2-2g}.$$

最后一式可直接由 Frobenius 代数推出：一次 handle 插入乘以 $\widetilde d_m^{-2}\Pi_m$；球面权重 $\widetilde d_m^2$ 因而变成 $\widetilde d_m^{2-2g}$。§2.3 还说明，在固定幂等元 $m$ 后，高 genus 制备没有给出新的归一化闭态，只改变其未归一化幅度。

## 开区间必须指定两个端点条件

若端点为简单对象，则

$$\mathcal H_{m,n}=\operatorname{Hom}_{\mathcal M}(m,n)=\delta_{mn}\mathbb C.$$

一般边界是有限整数叠加

$$B_L=\bigoplus_mg_m^{(L)}m,\qquad B_R=\bigoplus_mg_m^{(R)}m.$$

开 Hilbert 空间按 $m$ 分块，块维数 $r_m=g_m^{(L)}g_m^{(R)}$。作者使用的原始基满足

$$\langle m;i_L,i_R|n;j_L,j_R\rangle
=\widetilde d_m\delta_{mn}\delta_{i_Lj_L}\delta_{i_Rj_R}.$$

为避免漏掉这个度量，以下设

$$e_{m;i_Li_R}:=\widetilde d_m^{-1/2}|m;i_L,i_R\rangle.$$

此后所有矩阵转置和普通 trace 都在 $e$ 基中。反向区间交换左右指标；上横线在论文中表示另一个区间，**不是复共轭**。

两个常用边界要区分：$B_1=\bigoplus_mm$ 总可用且开、闭维数相同；$B_S=\bigoplus_m\widetilde d_mm$ 只有在选定归一化下所有 $\widetilde d_m$ 为正整数时才是合法对象。后者的开空间维数等于 $Z_0$。但这种整数对象的存在仍不自动保证后文需要的强／弱对称边界 junction。

# 2. Gram 算符怎样暴露裸切割的失败

§3.1 先取相同的 $B=\bigoplus_mg_mm$。裸路径积分切割为

$$\iota_B|m\rangle
=\frac1{\widetilde d_m^2}\sum_{i_L,i_R}
|m;i_L,i_R\rangle\otimes|\overline{m;i_L,i_R}\rangle
=\frac1{\widetilde d_m}\sum_{\alpha=1}^{g_m^2}e_{m\alpha}\otimes\bar e_{m\alpha}.$$

每项在后一个表达式中正交，故

$$\|\iota_B|m\rangle\|^2=\frac{g_m^2}{\widetilde d_m^2},
\qquad
G_B:=\iota_B^\dagger\iota_B
=\sum_m\frac{g_m^2}{\widetilde d_m^2}|m\rangle\langle m|.$$

这就是（3.6–3.7）的 sewing 障碍：没有把所有 $m$ 的范数同时保留下来。对每个态各自重新归一化不够，因为那通常是非线性操作，会改变叠加态的相对权重。

作者的最小修复是在两个开区间上各作用

$$\sqrt{\mathbb D}=\bigoplus_m\sqrt{\frac{\widetilde d_m}{g_m}}\,1_m.$$

总乘子 $\widetilde d_m/g_m$ 消去裸切割系数，得到

$$V_B|m\rangle=\frac1{g_m}\sum_{\alpha=1}^{g_m^2}e_{m\alpha}\otimes\bar e_{m\alpha},
\qquad V_B^\dagger V_B=1.$$

若 $g_m=\widetilde d_m$，裸切割本来就保范，dressing 为单位。这是 entanglement-brane／shrinkability 的情形。**不是所有 TQFT 都有这种整数边界，但所有具有非零开块的上述模型都能作标量保范修复。**

从纯态 $|\Psi\rangle=\sum_m\Psi_m|m\rangle$ 出发，置 $\lambda_m=|\Psi_m|^2/\sum_n|\Psi_n|^2$。部分迹消掉不同 $m$ 的相干，留下

$$\rho_A=\bigoplus_m\lambda_m\frac{1_m}{g_m^2}.$$

本征值为 $\lambda_m/g_m^2$，重数 $g_m^2$，因此

$$\operatorname{tr}\rho_A^n=\sum_m\lambda_m^ng_m^{2(1-n)},
\qquad
S(\rho_A)=H(\lambda)+2\sum_m\lambda_m\log g_m.$$

这条推导比直接报“边缘熵”更重要：Shannon 项来自闭扇区的去相干，第二项来自切割所选开块的谱，二者有不同来源。异边界时只需把 $g_m^2$ 换为 $r_m=g_m^{(L)}g_m^{(R)}$，标量 dressing 的乘积需为 $\widetilde d_m/\sqrt{r_m}$（3.21–3.26）。这些写法选择正实 dressing；若允许复数，保范只固定其乘积的绝对值。

# 3. 保范并不固定边缘纠缠谱

§3.4 允许每块上的一般线性算符 $O_A,O_{\bar A}$。在正交基中，纯态的系数矩阵是

$$C_m=\frac1{\widetilde d_m}O_A^{(m)}(O_{\bar A}^{(m)})^T.$$

因此

$$\sigma_m=C_mC_m^\dagger
=\frac1{\widetilde d_m^2}O_A^{(m)}
\big((O_{\bar A}^{(m)})^\dagger O_{\bar A}^{(m)}\big)^T
(O_A^{(m)})^\dagger,$$

$$\operatorname{tr}\sigma_m
=\frac1{\widetilde d_m^2}\operatorname{tr}
\left[\big((O_{\bar A}^{(m)})^\dagger O_{\bar A}^{(m)}\big)^T
(O_A^{(m)})^\dagger O_A^{(m)}\right]=1.$$

这复现（3.33–3.34）。转置源于 maximally-entangled 向量的向量化恒等式，不应改成厄米共轭。Mathematica 对两个具体复、非正规 $2\times2$ 矩阵直接构造双体向量并部分迹，所得密度矩阵与该式逐项相等，范数的 trace 残差也为零。

一般态仍满足

$$\rho_A=\bigoplus_m\lambda_m\sigma_m,
\qquad S=H(\lambda)+\sum_m\lambda_mS(\sigma_m).$$

局域幺正只旋转 Schmidt 基而不改变谱；要改变原本平坦的块谱，实质上需要非幺正滤波，而不只是“旋转”。在固定维数 $r_m$ 中有 $0\leq S(\sigma_m)\leq\log r_m$。所谓非整数 Affleck–Ludwig 有效简并权重，是 $\exp S(\sigma_m)$（或均摊到两个端点后的平方根）这种有效数目，**不是 Hilbert 空间维数突然变成非整数**。

一个可算例是 Ising $\widetilde d=(1,1,\sqrt2)$。取 $g=(1,2,1)$，HH 权重为 $(1/4,1/4,1/2)$，所得谱

$$\{1/4,\underbrace{1/16,1/16,1/16,1/16}_{\psi\text{ 块}},1/2\}$$

的熵恰为 $\log4=\log Z_0$，但它显然不是最大混态。Mathematica 精确化简确认此熵等式。故 **$S=\log Z[S^2]$ 本身既不证明最大混合，也不唯一决定切割条件**（§4.3，4.108–4.110）。

# 4. 多区间 Rényi 重建：成立的条件与两种不能省掉的界

把圆切成 $2N$ 个交替保留／丢弃的区间，端点 $j$ 的重数为 $g_m^{(j)}$。原始路径积分系数为 $\widetilde d_m^{-2N}$；转换到每个开态的归一基后是 $\widetilde d_m^{-N}$。若标量 dressing 为 $\delta_j$，则

$$\prod_{j=1}^{2N}\delta_j
=\frac{\widetilde d_m^N}{\sqrt{\prod_jg_m^{(j)}}}.$$

约化块维数 $R_{m,N}=\prod_jg_m^{(j)}$，因而

$$\operatorname{tr}\rho_A^n=\sum_m\lambda_m^nR_{m,N}^{1-n},
\qquad S=H(\lambda)+\sum_m\lambda_m\log R_{m,N}.$$

Mathematica 显式生成 $N=2$、四个端点重数均为 2 的闭环张量：修复后范数为 1，约化态逐项等于 $1_{16}/16$，熵为 $\log16$。再对其中两个区间施加非标量矩阵并归一化，约化态 trace 为 1、purity 为 $33/200$，最小本征值 $(3-\sqrt5)/240>0$。这是对多区间索引收缩的非平坦例证，不是对任意张量的数值证明。

## 整数维数的几何 replica

HH 态有 $\lambda_m=\widetilde d_m^2/Z_0$。若每个端点都用 $g_m^{(j)}=\widetilde d_m\in\mathbb N$，则

$$\operatorname{tr}\rho_A^n
=\frac{\sum_m\widetilde d_m^{2n+2N(1-n)}}{Z_0^n}
=\frac{Z[\Sigma_{(n-1)(N-1)}]}{Z_0^n}.$$

中间的指数等式 $2n+2N(1-n)=2-2(n-1)(N-1)$ 也已符号核验。genus 正是 $n$ 层球面在 $2N$ 点分支覆盖的 Riemann–Hurwitz 结果。取 $n=2$，用 $N=g+1$ 得到所有 genus；$N=1$ 则给 $S_2=\log Z_0$。

## 非整数维数：purity 工程不是无条件可行

作者在（3.53–3.54）改用一般 dressing，要求每块

$$\operatorname{tr}\sigma_{m;N}^2=\widetilde d_m^{-2N}.$$

这样同样有

$$e^{-S_2}=\frac{Z[\Sigma_{N-1}]}{Z_0^2}.$$

这里必须补出两条条件：

1. **固定 Euler 归一化后必须有 $\widetilde d_m\geq1$。** §2 允许整体缩放，而该界不由正性和 NIM-rep 自动推出。一个真空、$\widetilde d=1/2$ 的 Euler-rescaled 平凡 TQFT 已给反例：目标 purity 为 4，根本不是归一化密度矩阵的 purity。甚至 $Z_0=1/4$ 会要求 $S_2=\log(1/4)<0$。因此本文重建措辞不能无条件覆盖所有 Euler 归一化。
2. **固定边界时还要有足够秩：** $1/R_{m,N}\leq\operatorname{tr}\sigma^2\leq1$，故 $R_{m,N}\geq\widetilde d_m^{2N}$ 是必要条件。$g=1$ 的 Ising $\sigma$ 块只有 rank 1，purity 永远为 1，不能实现 $N=1$ 的目标 $1/2$。不能仅凭目标 purity 不超过 1 就认定给定边界一定能做。

在允许增大边界重数时，可以给出本文省略的显式存在路径。取每个端点的 Schmidt 概率分布 $p^{(m)}$，使

$$\sum_ip_i^{(m)}=1,\qquad\sum_i(p_i^{(m)})^2=1/\widetilde d_m.$$

选端点维数 $g_m\geq\lceil\widetilde d_m\rceil$，由从纯态到均匀分布的连续插值可实现这个 purity；在每条 bond 上放相应 Schmidt 对，每个区间的 $O_j$ 取两个端点滤波的张量积，再选整体归一化。交替部分迹后的 $2N$ 条 bond purity 相乘，正好是 $\widetilde d_m^{-2N}$。Fibonacci 的 $\widetilde d_\tau=\varphi$ 可用二元分布

$$p=\frac{1+\sqrt{2/\varphi-1}}2\simeq0.74293414,\qquad 1-p,$$

满足 $p^2+(1-p)^2=1/\varphi$。Mathematica 对此式及 $N=1,2,3$ 的 HH purity 重建残差均给零。这说明限制可以通过扩大边缘空间解除，而不是否定核心构造。

还要分开 **von Neumann 熵匹配** $S(\sigma_m)=\log\widetilde d_m^2$ 和上述 **二阶 purity 匹配**；它们不相同，也不应默认同一 dressing 同时满足所有 Rényi 阶数。譬如 $\log\varphi^2\simeq0.9624>\log2$，单一 rank-2 块无法实现这个 von Neumann 熵；两端各重数 2 的 rank-4 块才有足够空间。

最后，所有无缺陷闭曲面 $Z[\Sigma_g]$ 确定的是闭、半单 Frobenius 数据的权重信息，**不自动恢复所指定的对称范畴、模块 associator 或全部 defect/junction 数据**。“entire TQFT”在 symmetry-enriched 语境下不能作无限加强的理解。

# 5. 熵不对称：闭圆、开区间各自要有合法对称作用

§3.6 先回顾有限群平均 $\mathcal S(\rho)=|G|^{-1}\sum_gL_g\rho L_g^\dagger$。推广到半单融合代数，令

$$K_{ab}=\operatorname{tr}_{\mathrm{reg}}(L_aL_b)
=\sum_{c,d}N_{ac}^{\ d}N_{bd}^{\ c},
\qquad \mathcal S(\rho)=\sum_{a,b}(K^{-1})_{ab}L_a\rho L_b.$$

这是代数的正交条件期望；不能把 $K$ 当作无复共轭的正定 Hermitian Gram 矩阵。对于保 trace 的条件期望，$\mathcal S(\rho)$ 与 $\log\mathcal S(\rho)$ 在对称子代数中，有

$$S(\rho\Vert\mathcal S\rho)=S(\mathcal S\rho)-S(\rho)\geq0.$$

对一般群不可把不可约投影之间的单纯去相干代替完整平均；作者（3.56）明确限于 Abelian 群。非交换块内部还需 depolarization。

开区间上的对象则是 strip algebra。其生成元包含拓扑线 $a$ 与两端 junction $\rho,\mu$；乘法系数 $Q_{IJ}^{\ K}$ 由融合与模块 $F$-symbols 缩并给出（3.65–3.67）。再用 regular trace pairing

$$K_{IJ}=\operatorname{tr}_{\mathrm{Strip}}(H_IH_J),\qquad
\mathcal S_{\rm strip}(\rho)=\sum_{I,J}(K^{-1})_{IJ}H_I\rho H_J$$

作平均。这里必须先有与所选边界兼容的作用；$V^\dagger V=1$ 不会凭空创造 line-end junction。没有对称边界时本文并没有给出普遍 strip asymmetry。§5 反而把 dressed 边界能否支持某种修改 strip algebra 留为开放问题。

HH 态在闭圆上满足 $L_a|HH\rangle=d_a|HH\rangle$，asymmetry 为零。若合法 $B_S$ 同时支持相应开对称作用，$\rho_{HH,B_S}=1/Z_0$，开区间 asymmetry 也为零。不要反向把此结论当作所有整数边界都强对称的证明。

# 6. 六组应用分别说明什么

## 有限 Abelian 与 Dijkgraaf–Witten：最干净的精确模型

§4.1 的 $\mathbb Z_N$ 正则模块有 $\widetilde d_q=1$，$Z_0=N$。$B_S=B_1$ 时 HH 熵为 $\log N$。闭真空 $|q\rangle$ 的群平均是 $1_N/N$，故闭 asymmetry 为 $\log N$；一般切割纯态的区间 asymmetry 是 $\log N-H(\lambda)$。

§4.2 的二维 DW 使用 $[\omega]\in H^2(G,U(1))$，不是三维 DW 的三余圈。真空标号是 $\omega$-projective irreps $R$，

$$\widetilde d_R=\dim R,\quad\sum_R(\dim R)^2=|G|,\quad
\mathcal H_{B_S}\simeq\mathbb C_\omega[G].$$

作者归一化使 $Z_0=|G|$；相对通常有限规范理论归一化有 $|G|^{\chi(\Sigma)}$ 的 Euler 因子（PDF 30，脚注19）。HH 熵为 $\log|G|$，和 twist 无关，但真空熵、真空 asymmetry 可以改变。

闭圆在 $\omega$-regular 共轭类基中对角化，真空平均谱为

$$p_R(c)=\frac{|c|}{|G|}|\chi_R^\omega(c)|^2,
\qquad\Delta S_{\rm fus}(|R\rangle)=H(p_R).$$

开区间用 group-element 基作去相干，由 projective Peter–Weyl 和酉性得到对任意闭初态

$$\mathcal S_{\rm strip}(\rho_{\Psi,B_S})=1_{|G|}/|G|,
\qquad\Delta S_{\rm strip}=\log|G|-S(\rho_{\Psi,B_S}).$$

untwisted $D_4$（这里阶数8）的 irreps 维数为 $(1,1,1,1,2)$，twisted 情形为 $(2,2)$。Sage 用给定特征标表重建正交性，得到 untwisted 一维真空闭 asymmetry $\frac94\log2$、二维真空 $\log2$；开 asymmetry 分别 $3\log2$、$\log2$。twisted 两个真空闭、开均为 $\log2$。twist 不改变 HH 熵，并不表示它没有物理影响。

## Ising 与 Fibonacci：整数 brane 不存在，不妨碍保范

§§4.3–4.4 的正则模块分别给

$$\widetilde d_{\rm Ising}=(1,1,\sqrt2),\qquad
\widetilde d_{\rm Fib}=(1,\varphi),\qquad\varphi^2=1+\varphi.$$

不能用非整数重数建立 $B_S$，但标量修复始终可做；一般矩阵 dressing 还能调节块谱。Ising 中同一个 $\log4$ 可以来自非最大混态，Fibonacci 中 $\log(1+\varphi^2)$ 也可以通过足够大块的谱工程达到。它们是“量子维数不是整数边界态空间维数”的最小模型。

## Haagerup：同一融合对称，三个模块相

§4.5 取 $\alpha^3=1$、$\rho\alpha=\alpha^{-1}\rho$ 与

$$\rho^2=1+\rho+\alpha\rho+\alpha^2\rho,
\qquad\xi=\frac{3+\sqrt{13}}2,\quad\xi^2=1+3\xi.$$

DD、OD、OO 相的真空维数分别为

$$ (1,\xi),\qquad(1,1,1,\xi-2),\qquad(1,1,1,\xi,\xi,\xi).$$

所有端点重数取 1，并采用同一个标量保范规定，HH 熵分别为 **0.28837159、1.35583297、1.38698388**。这才是三相区分的前提；不能拿任意微观 cut 的原始常数项直接比较，忽略 UV 边界 dressing。作者也在脚注30说明该诊断不是所有 gapped phases 的 faithful invariant，例如只差 SPT 数据时可能失效。

Sage 从上述融合关系独立构造六个 regular matrices、trace pairing 及其逆，再作用到 DD／OD／OO 的 NIM-rep；检验全部生成关系、Perron–Frobenius 向量、平均的 trace、幂等性和对称交换性。得到：

- DD 两个真空平均谱的特征多项式 $x^2-x+1/13$，闭 asymmetry 均为 0.28837159。
- OD 前三个真空：$(x-1/3)^2(x^2-x/3+1/39)$，asymmetry 1.31667119；第四个：$x^2(x^2-x+3/13)$，asymmetry 0.65417672。
- OO 六个真空：$(x-1/6)^4(x^2-x/3+1/117)$，asymmetry 1.65683427。

这复现（4.148–4.159）的矩阵／谱数据，不是从摘要抄写数值。模块 $F$-symbols 的分类与微观 Potts deformation 的识别仍作为来源输入；尤其 OD 的 RG 识别在原文就是 suggestive 而非已证。

## Topological coset 与 adjoint QCD：把边界权重接到可计算表示数据

§4.6 从 conformal embedding $\widehat{\mathfrak h}_{k'}\subset\widehat{\mathfrak g}_k$ 出发，branching 系数 $b_{\Lambda\mu}$ 定义凝聚代数 $A=\bigoplus_\mu b_{0\mu}\mu$。$G_k\times H_{-k'}$ CS slab 上的 Lagrangian 边界为 $\bigoplus_{\Lambda\mu}b_{\Lambda\mu}(\Lambda,\bar\mu)$；unfolding 后是 $A$-interface。真空数和维数为

$$n_{\rm vac}=\sum_{\Lambda\mu}b_{\Lambda\mu}^2,
\quad d_A=D_H/D_G,
\quad \widetilde d_m=\frac{D_G}{D_H}\sum_\mu\widetilde N_{\mu1}^{\ m}d_\mu,
\quad Z_0=D_GD_H.$$

最后一式也可由 $\dim(\mathcal C_A)=\dim\mathcal C/d_A$ 直接得到；再用 PF 关系重求 $\sum_m\widetilde d_m^2$ 给相同结果。

$G_k/G_k$ 是 Verlinde 正则模块，$\widetilde d_R=\mathsf S_{0R}/\mathsf S_{00}$，$Z_0=\mathsf S_{00}^{-2}$。Verlinde 对角化把真空平均谱变成 $|\mathsf S_{aR}|^2$，闭 asymmetry 就是这个分布的 Shannon 熵。SU(2) 的

$$\mathsf S_{jj'}=\sqrt{\frac2{k+2}}\sin\frac{\pi(2j+1)(2j'+1)}{k+2}$$

在 $k=1,\ldots,5$ 的100-bit数值检验中满足酉性和维数平方和，误差小于 $3\times10^{-29}$。$k=1,2$ 的融合环分别像 $\mathbb Z_2$ 和 Ising，但 associator 不必相同；这也是单凭闭熵不能恢复全对称数据的提醒。

bosonized adjoint QCD$_2$ 对应 $\operatorname{Spin}(N^2-1)_1/SU(N)_N$。来源给真空数 $3\cdot2^{N-2}$、$Z_0=2/\mathsf S_{00}^{SU(N)_N}$。$N=3$ 有四个维数1、两个维数2的真空，故 $Z_0=12$。由（4.200）的融合环独立构造 regular matrices 后，Sage 重现两类真空平均谱：

$$\{1/4,1/4,1/4,1/12,1/12,1/12\},\qquad
\{1/3,1/3,1/3,0,0,0\},$$

asymmetry 分别 1.66094743 和 $\log3$。尽管此例可以写整数 $B_S$，作者明确指出它仍非强／弱对称边界，不能借此给出 strip asymmetry。一般 $N$ 的完整融合规则与相应平均没有在本文求出。

# 7. 附录、当前 CPS 翻译与可以继续算的一个对象

附录 A.1 的混态 $\rho=\sum_{mn}\rho_{mn}|m\rangle\langle n|$ 经任一上述扇区保持切割后，有

$$\rho_A=\bigoplus_m\rho_{mm}\sigma_m.$$

因此区域态对闭扇区非对角项不敏感。A.2 把它推广到多区间的 cyclic index tensor，核心仍是同一个归一化条件与分块谱公式。实际 PDF 附录（A.10）第一行出现 $|\Psi_m|^{-2}$、循环条件出现 $i_{N+1}=i_1$；在一般态与 $2N$ 端点语境中应分别按正文的 $\|\Psi\|^{-2}$ 和 $i_{2N+1}=i_1$ 理解。这是可定位的排版／指标问题，不影响上面的张量定义。

与 [本地 CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) 的衔接是：本地用 $\omega=\delta\theta$，其中 $\theta$ 含 corner 项，并在规范退化方向商掉后才用 $iX_J^*\!\cdot X_I\!\cdot\omega=\delta_{IJ}$ 固定模式范数。本文 $G_B$ 对应的是**量子态切割后的内积缺陷**，不能直接认作该 $\omega$ 或某个 corner 势；若要用于区域量子化，仍须证明由经典边界／corner 数据诱导的量子 $V$ 是等距映射。

一个具体可继续研究的有限目标是：给两个待拼区域的物理匹配子空间定义裸映射 $\iota$，先求 $G=\iota^\dagger\iota$。当 $G>0$ 时，极分解式 $V=\iota G^{-1/2}$ 给全局保范修复；然后再问 **$G^{-1/2}$ 能否分解为允许的局域边界算符、是否保持荷代数、是否与进一步细分的 sewing 相容**。本文的块对角 TQFT 是这些问题全部可算的起点；它没有证明一般 gauge/gravity 的局域因子分解存在。

## 已复现的范围

**Verified:** 裸 Gram 算符、标量归一化、复矩阵向量化／部分迹、分块熵、多区间有限张量例、整数 replica genus 指数、Fibonacci purity 工程、D4 特征标正交性与熵、Haagerup NIM-rep／平均谱、SU(2)有限 level 检验、QCD$_2$三色融合平均。普通线性代数使用 Mathematica，融合／表示计算使用 Sage；一次 Sage 批处理中 QCD 的 XOR 被预解析误读而中止，之前已输出的 Haagerup／D4 结果有效，QCD 部分改用显式 `operator.xor` 后单独成功重跑。

**Assumptions:** 紧致半单、有限维开块、正量子维数；标量修复要求每个闭扇区都出现在开空间；谱重建需要选定 Euler 归一化、足够 Schmidt rank 和指定 dressing。

**Not verified:** 模块范畴与全部 $F$-symbols 分类、微观 RG 流、一般 $N$ QCD 融合数据、非紧致 JT／三维引力推广、任意局域 sewing 的一致细化。闭配分函数熵重建不构成唯一 UV 因子化或引力熵计数的证明。
