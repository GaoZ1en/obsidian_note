# 哪些谱结构不需要引力：φ⁴ 对照、稳定大 N 与局域形变

## 结论

**有限谱构造、primary/descendant 组织、稳定大 N 的仿射矩阵，乃至两生成元低能代数及首个 Gegenbauer 算符形式，都不是引力独有。** 固定 AdS₃ 上的实 φ⁴ 已提供局域、可算的反例。另一方面，碰撞核的具体次数、通道权重、高激发尺度和极小正谱对相互作用十分敏感。

本轮更强的结果是：φ⁴ 在平衡双次数处有宏观的**精确一阶零模**。三粒子得到全指标秩公式；任意固定 N≥3 得到非零比例 Θ(1/P)。证明及独立复核见 [结构比较](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>)、[fresh 结构复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md>)。

这些结论都只谈首阶系数。没有证明完整多体可积性、非微扰零能移保护或统一大 N 微扰展开。

## 1. 对照必须保持什么，不能混同比较什么

两模型共享 L=1、Δ>1、m²=Δ(Δ−2)、中心正则、source-free fast falloff、固定边界圆柱和时钟，以及物理单粒子 gap。共同自由空间为

\[
\operatorname{Sym}^N(D^+_{\Delta/2}\otimes D^+_{\Delta/2}).
\]

φ⁴ 冻结度规；Einstein 保留 Brown–Henneaux 边界自由度，再讨论 normal form 中无独立自由边界引力子占据的 dressed scalar branch。这是比较的物理差别，不应暗中把 φ⁴ 的 Hilbert 空间加大或删去引力边界荷。

约定

\[
E_{\rm grav}=E_0+Gg+o(G),\qquad
E_{\phi^4}=E_0+\lambda\kappa+o(\lambda),
\qquad S_{\rm int}=-\lambda\int\sqrt{-g}\,\phi^4/4!.
\]

κ 在本笔记仅表示 φ⁴ 能移系数，不是引力的 κ²=16πG。为避免混淆，下文把该系数算符记作 K。恢复半径时，应比较无量纲能量 LE，其展开参数分别是 G/L 和 λL；不是令有量纲的 G 与 λ 数值相等。

- φ⁴：比较 K 的核，即**总首阶能移为零**。
- 引力：比较 A=W−b_N(Q)I 的核，即**首阶系数达到 Casimir 基线**，不是总引力能移为零。
- “精确零模”“缩放后的零原子”“小但严格正的特征值”是不同对象。

## 2. 输入—结论分层

| 输入 | 可以推出 | 不能单独推出 |
|---|---|---|
| 同一自由最低权表示 | 两体通道、Casimir、primary/descendant、多重态 | 相互作用系数 |
| 同时 S_N Bose 对称性 | 物理态计数、左右奇/偶通道的组合 | 左右分别 Bose 投影；任何正性 |
| 协变、保粒子数的二体算符 | 通道乘子、有限谱装配、稳定 N 仿射矩阵 | 从引力作用量到这个算符的封闭性 |
| 非负权与准确通道支撑 | 共同核、秩、某些碰撞理想 | 正特征值大小、软谱速度 |
| 特定高通道增长 | 半经典能量尺度与主符号 | 精确零模或全部低通道代数 |
| 非负仿射缺陷及首个非零缺陷 | 稳定低代数；在额外假设下的首个低算符 | 所有阶可积性 |
| Einstein 约束、边界荷、给定量子减除 | 其实际 γ_{kℓ}、负基线、交换项相消 | 其它局域作用量不可能产生同类结构 |

所以“在 φ⁴ 中没有出现”至多排除这个局域接触对照，**不能证明某结构只能来自引力**。一般非引力交换、非局域有效二体作用，也可能改变无限多个通道。原稿第10章已经区分抽象协变 pair sequences 与局域 bulk 实现；本轮不是纠正它遗漏这一点，而是补一个真正从作用量出发的对照。

## 3. 稳定大 N 仿射矩阵确实来自二体组合学

把唯一零激发的 creation moment 置为 a_00=1，R 计数激发粒子。分别计数零—零、零—激发、激发—激发无序对，可得

\[
W_N=\frac{\gamma_{00}}2(N-R)(N-R-1)
 +\left(\sum_{\alpha\ne0}F_\alpha\partial_\alpha\right)(N-R)
 +\frac12\sum_{\alpha,\beta\ne0}F_{\alpha\beta}\partial_\alpha\partial_\beta.
\]

N−R 必须作用在输入一侧。展开便是

\[
W_N=\gamma_{00}\binom N2 I+N\mathscr A+\mathscr B,
\]

其中 A 是 derivation、B 的微分阶≤2。N≥max(1,P+Q) 后 primary 坐标稳定；这是保非负双次数的二体作用的一般结论，不需要 Einstein 系数或正性。

然而该坐标不是固定 N 波函数逐点乘积，物理 Gram 仍有 (N)_{\downarrow r}^{−1}。先在 t=N^{−1/2} 下正交化再用 Rellich 才得到收敛分支。简单 leading eigenvalue 给整数 1/N 展开；退化簇可有半整数，不能只看坐标 leading Jordan 块下结论。此处应用的是原稿 ST-01/02；没有把 N→∞ 与 G→0 或 λ→0 的余项交换。

## 4. 纯 φ⁴ 也有两生成元低代数

完整动力学推导见 [φ⁴ 谱](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md>)。在 Q=0 的手征扇区，令

\[
a=c_{00}=\frac1{8\pi(2\Delta-1)},\qquad
\gamma_0=a,\quad\gamma_k=0\quad(k\ge2,\ k\text{ even}),
\quad C_k=(\Delta+k)(\Delta+k-1).
\]

这些都是单位 λ 系数。通过 k=0,2 的仿射插值为

\[
s=-\frac{a}{2(2\Delta+1)},\qquad L(C)=a+s(C-C_0).
\]

其缺陷满足全指标恒等式

\[
r_0=r_2=0,\qquad
r_k=\frac{a(k-2)(k+2\Delta+1)}{2(2\Delta+1)}>0
\quad(k\ge4,\ k\text{ even}).
\]

因此**在原稿 UN-03/04 的数学定理下**，φ⁴ 确实属于 first-positive-defect k*=4 的同一类，而非仅在几个矩阵上看起来相似：

\[
\ker(\mathscr A-s\Delta\mathcal E)=\mathbb C[c_2,c_3].
\]

这里 c_j 为稳定 creation algebra 的 centered generators，E 为加权次数。稳定范围 N≥P≥2 的精确最低 primary 系数是

\[
\boxed{\kappa_*(N,P)=a\left[\binom N2-
\frac{P(N\Delta+P-1)}{2(2\Delta+1)}\right].}
\]

**不能把这个饱和值公式用于 P>N。** 例如 N=3,Δ=2,P=4 时错误外推得到负值，而接触算符为正；真正特征值是 9a/7。

进一步，v=r4、w=r6 为

\[
v=a\frac{2\Delta+5}{2\Delta+1},\qquad
w=2a\frac{2\Delta+7}{2\Delta+1}.
\]

代入 UN-04 得到

\[
\boxed{\varepsilon_{\phi^4}
=\frac{27a(\Delta+3)(\Delta+4)}{(2\Delta+1)(17\Delta+43)}>0.}
\]

因而在其标准低坐标 x=c2,y=c3 中，首个低算符同样具有

\[
B_{\rm low}=s\mathcal E(\mathcal E-1)
 +\frac{\varepsilon_{\phi^4}}2(y^2+4x^3)\partial_y^2
\]

的形式。**形式相同，系数不同**；这是足以否定“两生成元／首层 Gegenbauer 结构引力独有”的局域反例。它不是完整多体可积性定理。

此应用经两条独立符号推导相符，并保存在 [稳定接触比较脚本](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/stable_contact_comparison.py>)、[结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/stable_contact_comparison.json>) 和 [fresh φ⁴ 复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh phi4 physics review.md>)。复核了 UN 定理的适用假设；不把有限代入称为重新证明该定理。

## 5. 高激发：同一 P² 尺度不可能给相同定律

单位 λ 接触算符满足精确算符界

\[
0\le K_N\le \binom N2 a I.
\]

因此固定 N、Δ 时，K_N/P²→0 是算符范数收敛；原稿 Einstein W/P² 的非平凡 Grassmannian law 不可能原样迁移到纯 φ⁴。

更强的是 balanced (P,P) 的零模计数：N=3 时

\[
d_3(P,P)=\frac{(P+1)^2+3\mathbf1_{2\mid P}
+2\mathbf1_{P\not\equiv2\ (3)}}6,
\qquad \operatorname{rank}K_3(P,P)=P\quad(P\ge1).
\]

故精确一阶零模比例为 1−P/d3，而不是“正能移很小所以数值上被判成零”。在 N≥3 固定时，非零比例为 Θ_N(1/P)。这与引力 residual 在 balanced 区没有精确核、却存在软正谱的机制不同；详见 [全指标结构证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>)。

接触算符也可有真正的正软特征值；不能把“零模占多数”说成“其余均有统一正 gap”。高阶 λ² 会引入新结构，一阶的 particle number conservation 和这些核都没有被本研究提升为非微扰保护。

## 6. 局域形变可保持引力的核与主符号，却改变低代数

用不同符号避免把 φ⁴ 对照耦合混入 Newton 常数：令实际 quartic coupling 为 λ_c=Gη，在 Einstein–scalar 中加入

\[
\delta S=-\frac{G\eta}{4!}\int\sqrt{-g}:\phi^4:.
\]

首阶 g 的通道变化为

\[
\delta\gamma_{k\ell}=
\frac{\eta\,\delta_{k\ell}}{8\pi(2\Delta+2k-1)}.
\]

在 Δ=2、η/(8π)=−40/3 时，新 spin-zero residual 对每个 n≥0 仍严格正；spin-two residual 不变，spin≥4 的尾不变。于是同一正支撑给出同一碰撞核，额外项次二次增长给出同一主符号，但 chiral affine defects 变为

\[
r_4=0,\qquad r_6=104/315>0,
\]

满足相应非负缺陷条件，稳定 leading low algebra 变成 C[c2,c3,c4,c5]。对 N=4,5,6 的完整 P=4,Q=0 块已作独立微分-Casimir 检验：两个 primary 方向都成为同一标量，而非只检查一个期望值。详情和逐源证明见 [引力物理接口审计](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/gravitational interface audit.md>)。

这是**条件于 Einstein 首阶核与指定 fixed-gap 处方的局域微扰实现**。η<0 的四次势单独不稳定；附加正六次势能是否带来合适的全局真空／引力稳定性是另一问题，不能将这里称为稳定的非微扰反例。

## 7. 文献定位与新增内容的界限

1. Carmi–Ciccone–Sukholuski，[arXiv:2606.06589v2](https://arxiv.org/abs/2606.06589v2)，PDF/印刷第4页 (2.1)、第8页 (2.32)，使用相同 λΦ⁴/4!、固定物理 Δφ>1，给出
   γ^(1)_{n,s}=δ_{s0}/[8π(2Δφ+2n−1)]。
   两页均已实际看图核对，见 [作用量页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/literature_pages.vjDiFg/carmi-4.png>)、[两体系数页](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/literature_pages.vjDiFg/carmi-8.png>)。映射是 Δφ=Δ,n=min(k,ℓ),s=|k−ℓ|，耦合无需再改归一化。**因此本轮两体系数是独立重推与交叉验证，不是新发现或优先权主张。** 该文的主工作是一圈结果；本研究并未独立复核其一圈推导。
2. Craps–De Clerck–Evnin，[arXiv:2103.12798v2](https://arxiv.org/abs/2103.12798v2)，§3.2 的量子共振有限块／升降组织与 §5 的 ladder states，是本研究的先例。其 (5.1) 的无量纲 ladder 能量，在 δ=Δ、M=P 且除以我们的 a 后，与上面的 κ*/a 相同。这里仅作结构与无量纲谱比较；原文先用复标量，因此不把原文 λ 直接等同本实标量 λ。已定位并阅读这些章节的提取文本；两体系数的正式归一化交叉引用采用上面已视觉核对的2026论文。

本轮实质推进集中在：从相同物理边界数据独立建立可复算的完整有限构造；非手征碰撞核的反例与精确三粒子秩；任意固定 N 的正秩比例；局域形变与低代数的关系。尚未进行穷尽文献优先权检索，不把“本轮得到”写成“首次”。
