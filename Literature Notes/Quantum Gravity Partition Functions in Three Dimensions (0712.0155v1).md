---
paper id: 0712.0155v1
title: Quantum Gravity Partition Functions in Three Dimensions
authors: [Alexander Maloney, Edward Witten]
publication date: 2007-12-02T17:24
abstract: "We consider pure three-dimensional quantum gravity with a negative cosmological constant. The sum of known contributions to the partition function from classical geometries can be computed exactly, including quantum corrections. However, the result is not physically sensible, and if the model does exist, there are some additional contributions. One possibility is that the theory may have long strings and a continuous spectrum. Another possibility is that complex geometries need to be included, possibly leading to a holomorphically factorized partition function. We analyze the subleading corrections to the Bekenstein-Hawking entropy and show that these can be correctly reproduced in such a holomorphically factorized theory. We also consider the Hawking-Page phase transition between a thermal gas and a black hole and show that it is a phase transition of Lee-Yang type, associated with a condensation of zeros in the complex temperature plane. Finally, we analyze pure three-dimensional supergravity, with similar results."
comments: "71 pages, 6 figures"
pdf: "[[Attachments/Assets/Quantum Gravity Partition Functions in Three Dimensions (0712.0155v1).pdf]]"
url: https://arxiv.org/abs/0712.0155v1
tags: []
---

# 从几何求和到量子态计数：这篇论文的论证

这篇文章研究的是一个看似简单、却尚未被完全定义的量子引力模型：**只有度规、宇宙学常数为负、满足渐近 AdS₃ 边界条件的三维 Einstein 引力。** 作者希望求出它的精确配分函数，从而确定量子态的能量、角动量及简并度。他们完成了所有已知光滑实经典鞍点及其微扰量子修正的求和，却发现结果不能解释为正常的 Hilbert 空间热迹。

因此，文章的主结果是一个具体的障碍，而不是一个完成的量子引力定义：**“已知经典几何 + 各几何附近的全部微扰涨落”仍不足以构成所期待的纯 AdS₃ 量子理论。** 它没有证明所有可能的纯引力定义都不存在；额外的非微扰贡献、复鞍点或不同的谱结构仍是可能的出路。

以下假定读者了解广义相对论、统计力学中的配分函数与路径积分，以及二维 CFT 的基本概念，但不预先要求熟悉边界引力子、Poincaré 级数或 Rademacher 展开。正文先完成论文主结论所需的构造，再说明黑洞熵与相变部分如何使用这些结果。文献定位均指 [arXiv:0712.0155v1](https://arxiv.org/abs/0712.0155v1)；该版 PDF 页码比正文印刷页码大 1。

## 1. 要求解的量：不是只有黑洞熵，而是整个量子谱

三维 Einstein 方程在负宇宙学常数下为

$$\begin{align}
R_{\mu\nu}=-\frac{2}{\ell^2}g_{\mu\nu}.
\end{align}$$

在三维，Riemann 张量完全由 Ricci 张量决定，因此这些解局部都是 AdS₃。没有局域传播的引力波，并不意味着理论没有量子态：边界条件会留下物理的边界激发，非平凡整体几何还包括 BTZ 黑洞。作者要确定的正是这些自由度能否组成一个完整量子理论。

取空间边界圆的周长为 $2\pi$，并用 AdS 半径作单位，即以下令 $\ell=1$。为避免温度与角势的 $2\pi$ 因子混淆，统一使用

$$\begin{align}
\tau=x+iy,\qquad \beta=2\pi y,\qquad \theta=2\pi x, \qquad q=e^{2\pi i\tau},\quad \bar q=e^{-2\pi i\bar\tau}.
\end{align}$$

令 $h,\bar h$ 是未减去 Casimir 能的左右共形权，定义圆柱上的左右能量

$$\begin{align}
\Delta=h-\frac{c_L}{24},\qquad \bar\Delta=\bar h-\frac{c_R}{24}.
\end{align}$$

对这里的宇称对称理论，写成

$$\begin{align}
c_L=c_R=24k,\qquad H=\Delta+\bar\Delta,\qquad J=\Delta-\bar\Delta.
\end{align}$$

半经典关系是 $k=\ell/(16G)$；精确讨论中按物理中心荷定义 $k$，而不是假定裸参数 $\ell/G$ 与中心荷的关系没有量子重整化。于是我们要构造

$$\begin{align}
Z(\tau,\bar\tau) =\operatorname{Tr}_{\mathcal H}q^{\Delta}\bar q^{\bar\Delta} =\operatorname{Tr}_{\mathcal H}e^{-\beta H+i\theta J}.
\end{align}$$

这里采用角势的正号约定，与原文 §2.2 的 $q$ 展开一致；若使用原文引言式 (1.2) 的 $-i\theta J$，应把角势替换为 $-\theta$。原文 §2.2 的 $L_0,\widetilde L_0$ 已经包含 Casimir 平移，对应这里的 $\Delta,\bar\Delta$，而不是 $h,\bar h$。

为什么要计算整个 $Z$？因为在离散谱情形，展开

$$\begin{align}
Z(\beta,\theta)=\sum_{E,j}d(E,j)e^{-\beta E+i\theta j}
\end{align}$$

中的 $d(E,j)$ 就是态数。面积律只控制高能态数的主导增长，而精确配分函数还必须回答：低能有哪些态？简并度是否非负且为整数？角动量是否有正确量子化？这使它成为检验量子理论是否自洽的更强工具。

来源：§1、§2.2，尤其原文式 (2.19)–(2.22)，正文第 14–15 页／PDF 第 15–16 页。

## 2. 固定边界环面后，究竟要对哪些几何求和？

### 2.1 热迹对应环面边界，但不固定内部填充

热迹中的欧氏时间演化与角向扭转把边界识别成环面

$$\begin{align}
\Sigma_\tau=\mathbb C/(\mathbb Z+\tau\mathbb Z).
\end{align}$$

引力路径积分要固定这个边界的共形结构，再对内部三维几何积分。形式上，可以把它组织成

$$\begin{align}
Z\ \sim\ \sum_{\text{经典鞍点 }M} e^{-I_{\mathrm{ren}}[M]}\,Z_{\text{涨落}}[M].
\end{align}$$

这里 $I_{\mathrm{ren}}$ 是包括边界项和去除渐近体积发散之后的有限作用量。这个公式目前只是计算方案：欧氏引力作用量并不有下界，而作者也没有一个可以直接处理全部非鞍点拓扑的非微扰积分定义。

为了确定可计算的那部分，作者先分类满足以下条件的实欧氏 Einstein 解：度规光滑、完备，指定的环面共形边界是唯一的端，没有额外 cusp，也没有内部锥形或 orbifold 奇点。这些条件是本次求和的范围，不是已经证明的量子引力公理。

### 2.2 为什么得到实心环面？

欧氏 AdS₃ 是双曲三空间 $\mathbb H^3$。上述经典解可写成离散群商 $\mathbb H^3/\Gamma$，边界则来自球面上适当开集 $U$ 的商 $U/\Gamma$。要求 $U/\Gamma$ 为环面，会强烈限制 $\Gamma$。

原文 §2.1 利用环面的基本群 $\mathbb Z\oplus\mathbb Z$ 分类其覆盖，剩下两个相关可能：

- $U\simeq\mathbb C$，由两个独立平移取商。它给出环面边界，但体内还有一个环面尺寸趋于零的 cusp 端，不符合“只有指定的一个端”。
- $U\simeq\mathbb C^*$，由循环伸缩取商。排除产生内部奇点的有限阶因素后，得到光滑的实心环面。

第二种情形可以具体看到。取 $z\in\mathbb C^*$，作识别 $z\sim qz$；写 $z=e^{2\pi i w}$ 后，就得到

$$\begin{align}
w\sim w+1,\qquad w\sim w+\tau.
\end{align}$$

这个识别在双曲空间中延伸，得到拓扑为 $D^2\times S^1$ 的填充。边界是环面，但其中一个边界圆在盘 $D^2$ 中可以收缩。

### 2.3 同样的实心环面，为何代表无穷多个鞍点？

固定边界的两个基本周期为 $1$ 和 $\tau$ 后，不同填充的区别是：**哪一条本原边界闭曲线在内部可收缩。** 本原表示它不是另一条整数曲线的多重覆盖。

用互素整数对 $(c,d)$ 标记可收缩周期 $c\tau+d$，并将 $(c,d)$ 与 $(-c,-d)$ 视为同一条无向曲线。由于 $\gcd(c,d)=1$，可以选整数 $a,b$ 使

$$
ad-bc=1,\qquad
\gamma=\begin{pmatrix}a&b\\c&d\end{pmatrix}\in PSL(2,\mathbb Z).
$$

以 $c\tau+d$ 为新空间周期、$a\tau+b$ 为另一个周期，新的模参数就是

$$\begin{align}
\gamma\tau=\frac{a\tau+b}{c\tau+d}.
\end{align}$$

这里 $a,b$ 的选择不是额外几何数据：变换 $(a,b)\mapsto(a,b)+n(c,d)$ 只使 $\gamma\tau\mapsto\gamma\tau+n$。因此每个鞍点只需标记为 $M_{c,d}$。

两个基本例子是：

| 鞍点 | 可收缩周期 | 物理解释 |
|---|---|---|
| $M_{0,1}$ | 空间周期 $1$ | thermal AdS₃ |
| $M_{1,0}$ | 热周期 $\tau$ | 欧氏 BTZ 黑洞，模变换为 $S:\tau\mapsto-1/\tau$ |

一般的 $M_{c,d}$ 都是合法的欧氏鞍点，但不必都具有简单的实 Lorentzian 黑洞延拓。它们虽然拓扑相同，却不能用一个在固定边界上平凡的微分同胚互相等同。

这一步的输出很重要：不必分别计算无穷多个无关背景。只要算出 $M_{0,1}$ 的贡献，其他项由同一个函数的模变换给出。

来源：§2.1，正文第 6–12 页／PDF 第 7–13 页；模变换关系见式 (2.17)。

## 3. 单个 Thermal AdS 鞍点的量子贡献从哪里来？

### 3.1 不能把所有微分同胚都当作规范冗余

在没有局域引力波的三维理论中，接近 AdS 的解局部都可以通过微分同胚联系起来。但有边界时，只应除掉在边界足够快趋于恒等的变换。保留边界条件、却在边界有非平凡作用的变换，可以带非零守恒荷，并产生不同物理态。

Brown–Henneaux 分析给出两套 Virasoro 代数。这些对称性产生的物理激发称为**边界引力子**。在真空附近，经典相空间可以表示为

$$\begin{align}
\mathcal P_{\mathrm{vac}} \simeq \left(\mathrm{Diff}^+(S^1)/PSL(2,\mathbb R)\right)^2.
\end{align}$$

分母是保持 AdS 真空不变的全局对称性。对这个相空间量子化，得到左右 Virasoro 真空表示。这里使用的是论文所讨论的半经典范围及一般的 $c>1$ 真空表示；不是另行声称所有小中心荷的特殊表示都有相同的 null-state 结构。

### 3.2 把真空后裔逐个计数

设真空为 $|0\rangle$。其后裔由

$$\begin{align}
\prod_{n=2}^{\infty}L_{-n}^{u_n}
\prod_{m=2}^{\infty}\bar L_{-m}^{v_m}|0\rangle, \qquad u_n,v_m\in\mathbb Z_{\ge0}
\end{align}$$

生成。乘积从 2 开始，因为 $L_{-1}|0\rangle=\bar L_{-1}|0\rangle=0$。对有限能态，只有有限多个占据数非零。左右能量为

$$\begin{align}
\Delta=-k+\sum_{n\ge2}nu_n, \qquad \bar\Delta=-k+\sum_{m\ge2}mv_m.
\end{align}$$

对每个占据数求和，利用

$$\begin{align}
\sum_{u_n=0}^{\infty}q^{nu_n}=\frac{1}{1-q^n},
\end{align}$$

就得到单鞍点的精确微扰贡献

$$\begin{align}
\boxed{ Z_{0,1}(\tau,\bar\tau) =\left|\chi_{\mathrm{vac}}(\tau)\right|^2, \qquad \chi_{\mathrm{vac}}(\tau) =q^{-k}\prod_{n=2}^{\infty}(1-q^n)^{-1}.
}
\end{align}$$

其中 $|q|^{-2k}=e^{4\pi ky}$ 是真空贡献。它对应真空能 $H_{\mathrm{vac}}=-2k$，也对应原文给出的重整化经典作用量

$$\begin{align}
I_{\mathrm{ren}}[M_{0,1}]=-4\pi ky.
\end{align}$$

因此乘积部分正是围绕该几何的量子涨落，而不是额外加入的物质场。

### 3.3 “一圈精确”究竟精确到哪里？

取对数有

$$\begin{align}
\log Z_{0,1}=4\pi ky -\sum_{n=2}^{\infty}\log|1-q^n|^2.
\end{align}$$

第一项是阶数为 $k\sim1/G$ 的经典贡献，第二项是阶数为 $k^0$ 的一圈贡献。真空表示固定了这些后裔的能量；用物理中心荷定义 $k$ 后，没有额外的 $k^{-1},k^{-2},\ldots$ 高圈修正。这是论文“一圈精确”的依据，不是只计算一圈然后猜测高圈为零。

但这里得到的是**一个指定鞍点附近的全部微扰贡献**。它不排除其他鞍点、其他拓扑或无法从该真空微扰产生的态。

来源：§2.2，式 (2.19)–(2.26) 及随后的相空间量子化论证，正文第 14–20 页／PDF 第 15–21 页。

## 4. 从真空表示到几何求和：模不变还不够

由几何分类，定义已知鞍点的形式和

$$\begin{align}
Z_{\mathrm{geom}}(\tau,\bar\tau) =\sum_{\gamma\in\Gamma_\infty\backslash PSL(2,\mathbb Z)} Z_{0,1}(\gamma\tau,\overline{\gamma\tau}),
\end{align}$$

其中 $\Gamma_\infty$ 由 $T:\tau\mapsto\tau+1$ 生成。这里把左乘平移视为等价：$\gamma$ 与 $T^n\gamma$ 的下排 $(c,d)$ 相同，且给出同一项。等价地，取 $(c,d)=(0,1)$，再加上所有 $c>0$、$d\in\mathbb Z$、$\gcd(c,d)=1$ 的整数对。

这类由一个周期函数及其模变换生成的和叫 **Poincaré 级数**。对边界再作模变换，只会重排填充，因此它具有模不变性。物理上，这一步把真空附近的已知态补成包含所有已知欧氏黑洞鞍点的候选答案。

但是，模不变性只是必要条件。一个模不变函数的展开系数不一定是非负整数，所以仍需检验它是否真能数出量子态。更直接的问题是：上面的无穷和本身还发散。

### 4.1 把所有项化为同一种可分析的级数

引入 Dedekind eta 函数

$$\begin{align}
\eta(\tau)=q^{1/24}\prod_{n=1}^{\infty}(1-q^n).
\end{align}$$

于是

$$\begin{align}
Z_{0,1} =\frac{|q|^{-2k+1/12}|1-q|^2}{|\eta(\tau)|^2}.
\end{align}$$

由于

$$\begin{align}
\operatorname{Im}(\gamma\tau)=\frac{y}{|c\tau+d|^2}, \qquad |\eta(\gamma\tau)|^2=|c\tau+d|\,|\eta(\tau)|^2,
\end{align}$$

组合 $F(\tau)=\sqrt y\,|\eta(\tau)|^2$ 模不变，可以从整个和中提出。

记 $\kappa_0=2k-1/12$。展开分子时，每一项的指数都是明确的：

$$\begin{aligned}
e^{2\pi\kappa_0y}|1-q|^2 ={}&e^{2\pi\kappa_0y} +e^{2\pi(\kappa_0-2)y}\\
&-e^{2\pi(\kappa_0-1)y+2\pi ix} -e^{2\pi(\kappa_0-1)y-2\pi ix}.
\end{aligned}$$

因此只需研究一族级数

$$\begin{align}
E(s;\kappa,\mu) =\sum_{(c,d)} \frac{y^s}{|c\tau+d|^{2s}} \exp\!\left[2\pi\kappa\operatorname{Im}(\gamma\tau) +2\pi i\mu\operatorname{Re}(\gamma\tau)\right],
\end{align}$$

其中本题只用 $\mu=0,\pm1$。原来的几何和对应 $s=1/2$：

$$\begin{align}
\boxed{ Z_{\mathrm{geom}} =\frac{ E(\tfrac12;\kappa_0,0) +E(\tfrac12;\kappa_0-2,0) -E(\tfrac12;\kappa_0-1,1) -E(\tfrac12;\kappa_0-1,-1)
}{\sqrt y\,|\eta|^2}.
}
\end{align}$$

> **v1 的公式对应。** 原文式 (3.7) 把第二至第四项写成了 $\kappa_0+2$、$\kappa_0+1$，与同页的 $|1-q|^2$ 展开及式 (3.6) 的指数定义不一致。上式直接按种子函数展开，使用减号。这一差别不影响下文独立于 $\kappa$ 的 $-6$，但会影响 $y^{-1}$ 等系数，不能把两套表达混用。

### 4.2 正则化是怎样定义的？

固定 $\tau$，当 $c,d$ 变大时，$\operatorname{Im}(\gamma\tau)$ 趋于零，指数因子不能抑制求和。$s=1/2$ 时的权重只有 $|c\tau+d|^{-1}$，不够让格点和收敛。

作者先在 $\operatorname{Re}s>1$ 定义收敛级数，再解析延拓到 $s=1/2$。下文的 $Z_{\mathrm{geom}}$ 都指这个处方得到的函数，而不是未定义的发散和。

为何这个处方不完全是任意减去无穷大？考虑模不变的双曲 Laplace 算子

$$\begin{align}
\mathscr D=-y^2(\partial_x^2+\partial_y^2), \qquad \mathscr D\sqrt y=\frac14\sqrt y.
\end{align}$$

对原级数逐项作用 $\mathscr D-1/4$，会消掉不带指数导数的发散首项；其余项获得额外衰减，从而形成收敛级数。上述解析延拓与这个收敛表达相容。原文 §3.1 还讨论了：在保持该微分方程及所要求的谱型渐近条件的范围内，添加齐次解不能消除后面遇到的障碍。

这并不等于已经从非微扰引力测度唯一推导出了正则化。它的作用是给“已知几何之和”一个可计算且受约束的定义，随后检验这个定义是否物理。

来源：§3.1，式 (3.4)–(3.15)，正文第 23–26 页／PDF 第 24–27 页。

## 5. 核心计算：如何从几何和中得到那个 $-6$？

这一节只展开决定主结论的部分。完整非零 Fourier 模涉及更多 Bessel 函数与数论级数，但判定失败并不需要把它们全部写出。

### 5.1 Poisson 重求和把几何标签变成 Fourier 模

先分离 $(c,d)=(0,1)$，它在 $E$ 中贡献原种子

$$\begin{align}
y^s e^{2\pi(\kappa y+i\mu x)}.
\end{align}$$

对其余项写 $d=d'+nc$，其中 $d'$ 遍历模 $c$ 的可逆剩余类，$n\in\mathbb Z$。恒等式

$$\begin{align}
\gamma\tau=\frac ac-\frac{1}{c(c\tau+d)}
\end{align}$$

使每一项可以写成关于 $t=n+x+d'/c$ 的函数：

$$\begin{align}
\frac{y^s}{c^{2s}(t^2+y^2)^s}
\exp\!\left[ \frac{2\pi i\mu a}{c} +\frac{2\pi(\kappa y-i\mu t)}{c^2(t^2+y^2)} \right].
\end{align}$$

现在对 $n$ 作 Poisson 求和。采用 $\widehat f(\nu)=\int_{\mathbb R}dt\,e^{2\pi i\nu t}f(t)$ 的 Fourier 约定，平移 $x+d'/c$ 产生因子 $e^{-2\pi i\nu(x+d'/c)}$。再将第二个指数作 Taylor 展开，以 $r\ge0$ 标记展开阶数，并把积分变量缩放为 $T=t/y$，得到

$$\begin{align}
E(s;\kappa,\mu) =y^s e^{2\pi(\kappa y+i\mu x)} +\sum_{\nu\in\mathbb Z}e^{-2\pi i\nu x} \mathcal E_\nu(s;\kappa,\mu),
\end{align}$$

其中

$$\begin{align}
\mathcal E_\nu =\sum_{r=0}^{\infty} y^{1-r-s}I_{r,\nu}(s;\kappa,\mu)
 \sum_{c=1}^{\infty}\frac{S(-\nu,\mu;c)}{c^{2(r+s)}},
\end{align}$$

$$\begin{align}
I_{r,\nu} =\frac{(2\pi)^r}{r!} \int_{-\infty}^{\infty} \frac{e^{2\pi i\nu yT}(\kappa-i\mu T)^r} {(1+T^2)^{r+s}}\,dT,
\end{align}$$

$$\begin{align}
S(A,B;c) =\sum_{d'\in(\mathbb Z/c\mathbb Z)^*} \exp\!\left[\frac{2\pi i}{c}(Ad'+B(d')^{-1})\right].
\end{align}$$

最后一个有限和称为 Kloosterman 和。它出现在这里并不神秘：$ad'\equiv1\pmod c$，所以相位中的 $a$ 就是 $(d')^{-1}$，对 $d'$ 求和自然产生这个对象。

这一步把“对填充几何求和”变成“对 $x$ 的 Fourier 模求和”。恢复 eta 因子后，$Z$ 的 Fourier 系数就是固定角动量的热迹。注意 $\mathcal E_0$ 本身还不是 $Z$ 的完整零角动量部分：外面的 $|\eta|^{-2}$ 也有 Fourier 展开。不过下文最低能的新项来自 eta 因子的首项，因此已经足以检验谱。

来源：式 (3.16)–(3.24)，正文第 27–28 页／PDF 第 28–29 页。

### 5.2 零 Fourier 模的最低阶可以完整算出

取 $\nu=0$、$r=0$。积分不再依赖 $\kappa,\mu$：

$$\begin{align}
I_{0,0}(s) =\int_{-\infty}^{\infty}(1+T^2)^{-s}\,dT =\sqrt\pi\,\frac{\Gamma(s-1/2)}{\Gamma(s)}.
\end{align}$$

数论部分则只有两种：

$$\begin{align}
S(0,0;c)=\varphi(c),\qquad S(0,\pm1;c)=\mu_{\mathrm M}(c),
\end{align}$$

这里 $\varphi$ 是 Euler totient 函数，$\mu_{\mathrm M}$ 是 Möbius 函数，与级数参数 $\mu$ 区分开。所需 Dirichlet 级数为

$$\begin{align}
\sum_{c\ge1}\frac{\varphi(c)}{c^{2s}} =\frac{\zeta(2s-1)}{\zeta(2s)}, \qquad \sum_{c\ge1}\frac{\mu_{\mathrm M}(c)}{c^{2s}} =\frac{1}{\zeta(2s)}.
\end{align}$$

第一式来自 $\sum_{d\mid n}\varphi(d)=n$，第二式来自 $\sum_{d\mid n}\mu_{\mathrm M}(d)=\delta_{n,1}$：分别将 Dirichlet 级数乘上 $\zeta(2s)$，把乘积按 $n$ 的因子重新分组即可。

所以 $r=0$ 对 $\mathcal E_0$ 的贡献是

$$
y^{1-s}\sqrt\pi\frac{\Gamma(s-1/2)}{\Gamma(s)}
\begin{cases}
\zeta(2s-1)/\zeta(2s),&\mu=0,\\[2pt]
1/\zeta(2s),&\mu=\pm1.
\end{cases}
$$

这里不能先把积分和 Dirichlet 级数各自代入 $s=1/2$；要取乘积的解析延拓。令 $s=1/2+\epsilon$，则

$$\begin{align}
\Gamma(\epsilon)\sim\epsilon^{-1},\qquad \zeta(1+2\epsilon)\sim(2\epsilon)^{-1},\qquad \zeta(0)=-\frac12,
\end{align}$$

且 $\sqrt\pi/\Gamma(1/2)=1$。因此

$$\begin{align}
\mathcal E_0(\tfrac12;\kappa,0) =-\sqrt y+O(y^{-1/2}),
\end{align}$$

$$\begin{align}
\mathcal E_0(\tfrac12;\kappa,\pm1) =2\sqrt y+O(y^{-1/2}).
\end{align}$$

这些首项与 $\kappa$ 无关。四个 Poincaré 级数在 $Z$ 中的符号依次为 $+,+,-,-$，所以组合起来正是

$$\begin{align}
(-1)+(-1)-2-2=-6.
\end{align}$$

另一方面，四个未变换的种子项恰好重组为 $Z_{0,1}$。最后除以 $\sqrt y\,|\eta|^2$，便得到

$$\begin{align}
\boxed{ Z_{\mathrm{geom}} =Z_{0,1} +\frac{1}{|\eta(\tau)|^2} \left[-6+O(y^{-1})\right], \qquad y\to\infty.
}
\end{align}$$

非零 $\nu$ 模相对于括号中的幂次项是指数抑制的，不会改变这个首项。负号来自解析延拓后的 $\zeta(0)$ 与四项的组合，并不是在某个单独鞍点中发现了“负数个边界引力子”。

来源：式 (3.26)–(3.39)，尤其式 (3.39)，正文第 31 页／PDF 第 32 页。

### 5.3 幂次修正也确实存在，不只是一个余项记号

再取 $r=1,\nu=0,s=1/2$，积分中奇于 $T$ 的部分消失，得到

$$\begin{align}
I_{1,0}=2\pi\kappa\int_{-\infty}^{\infty}(1+T^2)^{-3/2}\,dT =4\pi\kappa.
\end{align}$$

因而

$$\begin{aligned}
\mathcal E_0(\tfrac12;\kappa,0) &=-y^{1/2}+\frac{2\pi^3\kappa}{3\zeta(3)}y^{-1/2} +O(y^{-3/2}),\\
\mathcal E_0(\tfrac12;\kappa,\pm1) &=2y^{1/2}+\frac{4\pi\kappa}{\zeta(3)}y^{-1/2} +O(y^{-3/2}).
\end{aligned}$$

代入前面由种子展开确定的 $\kappa_0,\kappa_0-2,\kappa_0-1$，得到

$$\begin{align}
Z_{\mathrm{geom}}-Z_{0,1} =\frac1{|\eta|^2} \left[-6+ \frac{(\pi^3-6\pi)(24k-13)}{9\zeta(3)}\,y^{-1} +O(y^{-2})\right].
\end{align}$$

这里的 $24k-13$ 来自本笔记中自洽的种子分解。v1 式 (3.47) 印成 $24k+11$，正好对应前述错误的正向移位；本式不是对 v1 的逐字抄录。对于本文主要关心的半经典 $k\gg1$，这个 $y^{-1}$ 系数非零。主结论所用的 $-6$ 则不依赖这处移位问题。

## 6. 为什么这个答案不是正常的量子配分函数？

### 6.1 热迹比“正函数”有更强的要求

假定 $H$ 自伴、下有界，且 $e^{-\beta H}$ 为 trace-class，使普通热迹有限。那么能谱必须是离散的，每个有限能级的简并度有限；在有限能量处不能有连续谱或无限态数堆积。固定角动量后应有

$$\begin{align}
Z_j(\beta)=\sum_n d_{n,j}e^{-\beta E_{n,j}}, \qquad d_{n,j}\in\mathbb Z_{\ge0}.
\end{align}$$

去掉最低的若干能级后，下一个能级给出的仍是指数项，系数是非负整数。这是统计解释的必要条件，与有没有显式使用 AdS/CFT 无关。

由 eta 函数定义，

$$\begin{align}
|\eta(\tau)|^{-2} =e^{\beta/12}\left[1+O(e^{-\beta})\right].
\end{align}$$

所以在减去已经计入的真空后裔贡献后，几何和的第一个新项为

$$\begin{align}
-6e^{\beta/12}=-6e^{-\beta E_*},\qquad E_*=-\frac1{12}.
\end{align}$$

它位于经典质量为零的 BTZ 阈值 $E=0$ 稍下方，且领先项不依赖角势。它要求新增谱贡献有负的简并度。特别是在后文全纯候选理论采用的整数 $k$ 情形，真空后裔能量为 $-2k+N$，不会在 $E_*=-1/12$ 与这一项重合。

此外，$y^{-1},y^{-2},\ldots$ 对应 $\beta^{-1},\beta^{-2},\ldots$，也不能解释为有限热迹的离散谱在低温下逐级出现的贡献。连续谱的 Laplace 积分可以产生这样的幂次，但这已经改变了原先的有限热迹问题，而且不能自动消除负谱权重。

**因此，矛盾不在于 $Z$ 的数值整体为负；低温时真空项仍可使它很大且为正。矛盾在于它不能分解成所要求的物理态计数。** 同样，不能把普通热迹中的负系数解释成费米子符号：这里算的不是插入 $(-1)^F$ 的超迹。

来源：§2.3 与 §3.3，正文第 21–22、31–33 页／PDF 第 22–23、32–34 页。

### 6.2 被排除的是哪一个构造？

计算否定的是下面这一组材料已经充分的设想：

1. 只取具有单个环面共形边界的已知光滑实 Einstein 鞍点；
2. 每个鞍点使用由真空表示确定的全部微扰贡献；
3. 按上述解析延拓处方完成模求和；
4. 将所得函数视为完整量子理论的有限普通热迹。

它没有排除所有可能的非微扰完成。尤其，“一圈精确”不可能修复这种缺失：一圈精确只告诉我们已知鞍点附近没有更多微扰项，而没有告诉我们未知贡献不存在。

## 7. 作者提出的两类补充：为什么都仍是方案？

### 7.1 长弦可能改变能谱乃至配分函数的定义

已知来自弦论的 AdS₃ 模型通常不只有度规，还可以有弦状对象。特殊张力下，一条弦可以伸到任意大而只花费有限能量，形成所谓 long string。其尺度可以无限增大，于是在阈值以上出现连续谱，普通总热迹可能发散。

这说明前面采用“有限配分函数、离散谱”的期待并非任何 AdS₃ 量子引力都必然满足。但它不是给 $-6$ 添上几个态那么简单：需要指定新自由度、它们的张力与谱，并重新说明计算的配分函数究竟是什么。论文并未完成这一模型构造。

来源：§4.1，正文第 36–37 页／PDF 第 37–38 页。

### 7.2 复鞍点与左右独立求和

单个实鞍点的贡献是

$$\begin{align}
\chi_{\mathrm{vac}}(\gamma\tau)
\overline{\chi_{\mathrm{vac}}(\gamma\tau)}.
\end{align}$$

左右部分使用同一个 $\gamma$，因此总和是“模方之和”，一般不能写成“一个全纯函数的模方”。作者探索的另一种完成是形式上让左右标签独立：

$$\begin{align}
\widehat Z =\sum_{\gamma,\gamma'} \chi_{\mathrm{vac}}(\gamma\tau) \overline{\chi_{\mathrm{vac}}(\gamma'\tau)} =\left|\sum_\gamma\chi_{\mathrm{vac}}(\gamma\tau)\right|^2,
\end{align}$$

其中两边都需要合适的正则化。新增的是 $\gamma\ne\gamma'$ 的非对角项。相应经典权重要求一个形式作用量

$$\begin{align}
I_{\gamma,\gamma'} =2\pi ik\left(\gamma\tau-\gamma'\bar\tau\right),
\end{align}$$

它一般不是实数，因而不能来自已分类的实欧氏几何。这是考虑复几何的动机，不是复解存在性及其积分轮廓的证明。

若进一步取整数 $k$，要求全纯因子模不变、在上半平面无极点，并在每个手征部分要求 $\Delta\le0$（含阈值）没有真空后裔之外的 primary，就得到 extremal 型候选配分函数 $Z_k^{\mathrm{hol}}$：

$$\begin{align}
Z_k^{\mathrm{hol}}(\tau) =\chi_{\mathrm{vac}}(\tau)+O(q),\qquad q\to0.
\end{align}$$

这里相等包括从 $q^{-k}$ 到 $q^0$ 的系数。这些条件可确定候选模函数，但**一个具有合适谱系数的环面配分函数，不等于已经构造了满足全部算符乘积与高亏格一致性条件的 CFT**；更不等于已经证明它就是纯 Einstein 引力。

来源：§4.2，正文第 38–42 页／PDF 第 39–43 页。上述形式作用量按经典权重保留 $k$；v1 式 (4.10) 的印刷表达漏去了这个因子，应与式 (4.2)、(4.5) 对照。

## 8. 既然主构造失败，为何还能够计算黑洞熵？

失败的是把已知鞍点之和当作完整精确谱，并不是单个 BTZ 鞍点的半经典贡献失去意义。由已经求出的真空字符，作 $S$ 变换即可得到

$$\begin{align}
Z_{\mathrm{BTZ}}(\tau,\bar\tau) =\left|\chi_{\mathrm{vac}}(-1/\tau)\right|^2.
\end{align}$$

令 $q_-=e^{-2\pi i/\tau}$，并写

$$\begin{align}
\chi_{\mathrm{vac}}(-1/\tau) =\sum_{\Delta'=-k,-k+1,\ldots}C_{\Delta'}q_-^{\Delta'}, \qquad C_{\Delta'}=p(\Delta'+k)-p(\Delta'+k-1),
\end{align}$$

其中 $p(N)$ 是整数分拆数，约定 $p(N)=0$ 对 $N<0$。这个差来自把 $n=1$ 的振子从通常的分拆生成函数中去掉。

### 8.1 从正则系综转到固定能量的态密度

要计算左能量 $\Delta>0$ 处的半经典态密度，对左配分函数作逆 Laplace 变换。每一个 $\Delta'$ 项带有积分核

$$\begin{align}
\int_{\mathbb R+i\epsilon}d\tau\, \exp\!\left[-2\pi i\left(\Delta\tau+\frac{\Delta'}{\tau}\right)\right], \qquad \epsilon>0.
\end{align}$$

对于 $\Delta'<0$，令 $a=|\Delta'|$，并作变量替换 $b=-2\pi i\tau$。原来从左向右的水平轮廓变成从上向下的竖直轮廓；将方向反转后，$d\tau=i\,db/(2\pi)$ 给出通常的 Bromwich 逆变换

$$\begin{align}
\frac{1}{2\pi i}\int_{2\pi\epsilon-i\infty}^{2\pi\epsilon+i\infty}
 db\,\exp\!\left(b\Delta+\frac{4\pi^2a}{b}\right).
\end{align}$$

它按逆 Laplace 变换理解，而不是绝对收敛的普通积分。为看清归一化，令 $A=4\pi^2a$，展开 $e^{A/b}$。常数项只在 $\Delta=0$ 产生 delta 分布；在这里的 $\Delta>0$ 区域，利用 $\mathcal L^{-1}[b^{-n}](\Delta)=\Delta^{n-1}/(n-1)!$，得到

$$\begin{align}
\sum_{n=1}^{\infty}\frac{A^n\Delta^{n-1}}{n!(n-1)!} =\sqrt{\frac A\Delta}\,I_1(2\sqrt{A\Delta}) =2\pi\sqrt{\frac{|\Delta'|}{\Delta}} I_1\!\left(4\pi\sqrt{\Delta|\Delta'|}\right).
\end{align}$$

这正是原文用 Bessel 围道积分得到的单项贡献。

因此负能量种子所控制的部分为

$$\begin{align}
\rho_{\mathrm{polar}}(\Delta) =2\pi\sum_{-k\le\Delta'<0} C_{\Delta'}\sqrt{\frac{|\Delta'|}{\Delta}} I_1\!\left(4\pi\sqrt{\Delta|\Delta'|}\right).
\end{align}$$

这里只保留了可以与后面的精确模函数直接比较的 polar 项。原文式 (5.13) 还形式上包括 $\Delta'\ge0$ 的项；正 $\Delta'$ 带来不同的 Bessel 分支与解释问题，不能把它们未经说明地当成精确、正的微观态数。单个黑洞鞍点给出的 $\rho$ 本来就是平滑的半经典态密度，不是离散谱的完整重建。

### 8.2 面积律与对数修正从同一个 Bessel 函数出现

当真空项 $\Delta'=-k$ 主导时，$C_{-k}=1$，从而

$$\begin{align}
\rho_{\mathrm{vac}}(\Delta) =2\pi\sqrt{\frac{k}{\Delta}} I_1\!\left(4\pi\sqrt{k\Delta}\right).
\end{align}$$

利用

$$\begin{align}
I_1(z)\sim\frac{e^z}{\sqrt{2\pi z}} \left(1-\frac{3}{8z}+\cdots\right),
\end{align}$$

取对数得到一侧的熵

$$\begin{align}
S_L(\Delta) =4\pi\sqrt{k\Delta} +\frac14\log k-\frac34\log\Delta-\frac12\log2 +O((k\Delta)^{-1/2}).
\end{align}$$

右侧同理，因此主导项为

$$\begin{align}
S_{\mathrm{BH}} =4\pi\sqrt{k\Delta}+4\pi\sqrt{k\bar\Delta}.
\end{align}$$

令 $r_+$ 为外视界半径、$r_-$ 为带旋转方向符号的内视界参数，非极端黑洞满足 $r_+>|r_-|$。用 BTZ 关系 $\Delta=(r_++r_-)^2/(16G\ell)$、$\bar\Delta=(r_+-r_-)^2/(16G\ell)$ 和 $k=\ell/(16G)$，这正好等于 $2\pi r_+/(4G)$，即视界周长除以 $4G$。这里为对照几何量暂时恢复了 $\ell$。

这项展开要求 $k\Delta\gg1$；把它视为总熵的良好近似，还需要其他 polar 项受到抑制，例如在大的 $\Delta/k$ 区域。若黑洞尺度与 AdS 半径相当，其他 $C_{\Delta'}$ 项不能随意忽略。

### 8.3 与全纯候选理论比较：匹配了什么？

对一个权重零、模不变、上半平面无极点的全纯候选函数，正能量 Fourier 系数可由负幂的 polar 系数经 Rademacher 展开重建。这个展开是按模像组织的 Bessel 级数；其第一个模像层的贡献为

$$\begin{align}
d_{\Delta}^{(1)} =2\pi\sum_{-k\le\Delta'<0} F_{\Delta'}\sqrt{\frac{|\Delta'|}{\Delta}} I_1\!\left(4\pi\sqrt{\Delta|\Delta'|}\right),
\end{align}$$

其中 $F_{\Delta'}$ 是候选函数的 polar 系数。更高层含有 Kloosterman 和以及较小的 Bessel 参数，产生额外的指数抑制修正；常数项需另行固定，不由负幂部分唯一决定。

对于 extremal 候选函数，$F_{\Delta'}=C_{\Delta'}$，所以 $d_\Delta^{(1)}$ 与刚才的 $\rho_{\mathrm{polar}}$ **逐项相同**。因此匹配的不只是面积律，还有这些 Bessel 函数内含的一系列修正。但这不是原来非全纯几何和已经变成了物理谱，也不是黑洞鞍点的所有形式项都与精确系数相同。

来源：§5，尤其式 (5.10)–(5.19)，正文第 45–47 页／PDF 第 46–48 页。

## 9. Hawking–Page 相变为何能与全纯性共存？

先看不带角势的 $\tau=iy$。两个主要实鞍点的经典贡献分别是

$$\begin{align}
\log Z_{\mathrm{AdS}}\simeq4\pi ky, \qquad \log Z_{\mathrm{BTZ}}\simeq\frac{4\pi k}{y}.
\end{align}$$

所以 $y>1$ 时 thermal AdS 主导，$y<1$ 时 BTZ 主导；在 $y=1$，也就是本笔记约定的 $\beta=2\pi$，主导几何交换。有限 $k$ 时求和是平滑的，而 $k\to\infty$ 时

$$\begin{align}
\frac1k\log Z\longrightarrow4\pi\max(y,y^{-1}),
\end{align}$$

出现导数不连续。这是 Hawking–Page 相变的半经典图像。

全纯候选配分函数为何也能有这种极限？关键在于相变涉及的是归一化的 $\log Z$：有限 $k$ 的配分函数可以解析，而其零点在 $k\to\infty$ 时不断聚集，使对数的极限变得非解析。

在复 $\tau$ 平面上，thermal AdS 与 BTZ 的竞争边界包含 $|\tau|=1$ 的圆弧。暂时只取全纯部分的两个经典权重，圆弧上有 $1/\tau=\bar\tau$，因而

$$\begin{align}
e^{-2\pi ik\tau}+e^{2\pi ik/\tau} =2e^{2\pi ky}\cos(2\pi kx).
\end{align}$$

近似零点位于

$$\begin{align}
x=\frac{2m+1}{4k},
\end{align}$$

其间距随 $1/k$ 缩小。于是可以直观看到：零点向相边界凝聚，产生 Lee–Yang 型相变，而不必要求有限 $k$ 的全纯函数自己已有热力学奇点。

这个双鞍点估计只是机制说明。要把它变成关于精确候选函数的结论，必须对其余项给出一个不随 $k$ 恶化的界。原文 §6.1–6.3 使用如下模函数基：$Q_0=1$；对 $n\ge1$，$Q_n$ 是上半平面无极点、在尖点展开为 $q^{-n}+O(q)$ 的模不变函数，也可用归一化的 Hecke 变换构造。在半圆弧

$$\begin{align}
C=\{\tau=x+iy:|\tau|=1,\ 0\le x\le1/2\}
\end{align}$$

上，原文建立了统一误差界

$$\begin{align}
e^{-2\pi ny}Q_n(\tau)=2\cos(2\pi nx)+\varepsilon_n(\tau), \qquad |\varepsilon_n|\le1.3.
\end{align}$$

这是这里使用的数论输入；这里将原文数值估计的常数放宽为 $1.3$，避免小数舍入影响严格不等式。给定从 $q^{-k}$ 到 $q^0$ 的系数，候选函数可唯一写成

$$\begin{align}
Z_k^{\mathrm{hol}}=\sum_{n=0}^k F_{-n}Q_n,\qquad F_{-k}=1.
\end{align}$$

将首项提出，便有

$$\begin{align}
\left|e^{-2\pi ky}Z_k^{\mathrm{hol}}-2\cos(2\pi kx)\right| \le1.3+3.3\sum_{m=1}^k F_{-k+m}e^{-2\pi my}.
\end{align}$$

现在可以实际检查 extremal 系数，而不只宣称它们满足条件。由前面的字符展开，$F_{-k+m}=p(m)-p(m-1)\le p(m)$；正整数 $m$ 的无序分拆不多于有序分拆，而后者共有 $2^{m-1}$ 个。因此在 $C$ 上，利用 $y\ge\sqrt3/2$，有

$$\begin{align}
\sum_{m=1}^k F_{-k+m}e^{-2\pi my} \le\sum_{m=1}^{\infty}2^{m-1}e^{-\pi\sqrt3\,m} =\frac{e^{-\pi\sqrt3}}{1-2e^{-\pi\sqrt3}}.
\end{align}$$

把这个界代入，整体误差小于 $1.315<2$，且与 $k$ 无关。该估计是把原文的统一 Hecke 界应用到 extremal 字符系数的一种直接方式。

由于 Fourier 系数为实数且函数模不变，$Z_k^{\mathrm{hol}}$ 在 $C$ 上取实值。在相邻的余弦极值点 $x=m/(2k)$ 处，主项依次为 $+2,-2$，上述误差不足以改变其符号，所以每个相邻区间内至少有一个零点。函数在紧化模曲线上只有尖点处的 $k$ 阶极点，因而总零点数（按模等价与重数计）也是 $k$。这里特意只取半圆弧 $C$：另一半通过 $S$ 变换与之等价，不能重复计数；两个端点也由上述误差界排除了零点。因此这 $k$ 个区间中的零点已经用尽了零点数。区间长度随 $1/k$ 趋于零，零点遂在圆弧及其模像上凝聚。结论依赖对低能系数的一致控制，并不是任意全纯模函数都具有相同相变。

来源：§6，双鞍点解释见式 (6.1)–(6.4)，正文第 50–51 页／PDF 第 51–52 页；严格估计见 §6.2–6.3。

## 10. 超引力推广与整篇文章的边界

原文 §7 将方法推广到纯 $\mathcal N=1$ 超引力。新增的结构是边界环面的自旋结构、费米子的周期性条件，以及超 Virasoro 真空后裔；因此需要分别处理不同边界条件或迹插入，并使用保持相应自旋结构的模变换。其计算路线仍然是：确定允许填充，计算真空附近的谱，再作相应几何和并检验结果。作者得到与玻色理论类似的障碍，而不是通过加入最小超对称自动获得一个完整量子理论。这里不展开独立的超引力字符与模子群计算。

整篇论文的主线可以概括为

$$
\boxed{
\begin{gathered}
\text{固定环面边界与纯引力条件}\\
\Downarrow\\
\text{分类光滑实鞍点 }M_{c,d}\\
\Downarrow\\
\text{量子化边界引力子，得到真空字符 }Z_{0,1}\\
\Downarrow\\
\text{模求和与解析正则化}\\
\Downarrow\\
\text{Poisson 展开显露 }-6\text{ 及逆温度幂次项}\\
\Downarrow\\
\text{不能解释为所要求的 Hilbert 空间上的有限热迹。}
\end{gathered}
}
$$

这里“有限热迹”不意味着 Hilbert 空间有限维，而是每个适当温度下 $\operatorname{Tr}e^{-\beta H}$ 收敛。论文最终区分了三个层次：单鞍点的微扰量子化是可控的；已知实几何的总和不满足精确谱要求；全纯因子化候选函数能通过一些黑洞熵和相变检验，但其完整 CFT 实现、引力路径积分解释及必要的额外贡献仍未在本文建立。

所以，最值得带走的不是“纯引力不存在”这一过强口号，而是：**经典几何分类与微扰精确性，即使再加上模不变性，也不能代替非微扰量子理论所要求的正的态计数。**
