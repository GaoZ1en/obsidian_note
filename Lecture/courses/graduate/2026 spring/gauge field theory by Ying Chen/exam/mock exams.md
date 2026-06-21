---
title: Gauge Field Theory Mock Exams
date: 2026-06-22
summary: "Ten mock exam sets for the gauge field theory course, with concise answer keys and expanded worked solutions for exam review."
---

# Gauge Field Theory Mock Exams

说明：以下先列模拟题目，文末附 `答案速查`。每套试题按 100 分设计，题型参考 `past exams.md` 中的证明、推导、费曼规则、路径积分量子化、Ward 恒等式、重正化和物理解释题，但具体模型和题设尽量避开原题。

## mock exam 1

一、（25 分）考虑四维标量 QED

$$\begin{align}
\mathcal{L} &=-\dfrac{1}{4}F_{\mu\nu}F^{\mu\nu} +(D_{\mu}\phi)^{\dagger}D^{\mu}\phi -m_0^2\phi^{\dagger}\phi -\dfrac{\lambda_0}{4}(\phi^{\dagger}\phi)^2, & D_{\mu}&=\partial_{\mu}+ie_0A_{\mu}.
\end{align}$$

1. （5 分）根据四维中各场和耦合常数的质量量纲，判断该理论是否按幂计数可重正。
1. （5 分）展开协变导数项，写出标量传播子、光子传播子以及 $A\phi^{\dagger}\phi$、$AA\phi^{\dagger}\phi$、$\phi^4$ 相互作用顶点的动量空间费曼规则。
1. （10 分）列出单圈水平上所有表观发散的 1PI 图，并说明它们分别对应哪些局域抵消项。
1. （5 分）从定域 $\mathrm{U}(1)$ 规范不变性出发，说明为什么光子质量项 $m_A^2A_{\mu}A^{\mu}/2$ 不能作为允许的抵消项，并写出标量-光子顶角满足的 Ward-Takahashi 恒等式。

二、（25 分）考虑 Stueckelberg 形式的有质量 Abelian 规范场

$$\begin{align}
\mathcal{L}_{\mathrm{St}} &=-\dfrac{1}{4}F_{\mu\nu}F^{\mu\nu} +\dfrac{1}{2}m^2\left(A_{\mu}-\dfrac{1}{m}\partial_{\mu}\sigma\right)^2.
\end{align}$$

1. （5 分）证明该拉氏量在

$$\begin{align}
A_{\mu}\to A_{\mu}+\partial_{\mu}\alpha,\qquad \sigma\to \sigma+m\alpha
\end{align}$$

下不变。
1. （5 分）取

$$\begin{align}
\mathcal{L}_{\mathrm{gf}}=-\dfrac{1}{2\xi}(\partial_{\mu}A^{\mu}+\xi m\sigma)^2,
\end{align}$$

证明二次型中 $A_{\mu}$ 与 $\sigma$ 的混合项被抵消。
1. （10 分）求 $A_{\mu}$ 与 $\sigma$ 的自由传播子，并说明 $\xi=1$ 与 $\xi\to\infty$ 的物理含义。
1. （5 分）写出该 Abelian 理论的 Faddeev-Popov 行列式，并解释为什么鬼场在该模型中不与物理场相互作用。

三、（25 分）考虑 $\mathrm{SU}(N)$ Yang-Mills 理论在 Lorenz 规范下的路径积分量子化，

$$\begin{align}
\mathcal{L}_{\mathrm{YM}}=-\dfrac{1}{4}F_{\mu\nu}^aF^{a,\mu\nu},\qquad G^a[A]=\partial_{\mu}A^{a,\mu}.
\end{align}$$

1. （5 分）从无穷小规范变换 $\delta A_{\mu}^a=(D_{\mu}\alpha)^a$ 推导 Faddeev-Popov 算符 $M^{ab}(x,y)$。
1. （5 分）将 $\det M$ 写成鬼场路径积分，并给出鬼场拉氏量。
1. （5 分）写出规范固定项、鬼场项和 Yang-Mills 项共同构成的有效拉氏量。
1. （10 分）写出 BRST 变换 $sA_{\mu}^a,sc^a,s\bar c^a,sB^a$，并证明 $s^2=0$ 至少在 $A_{\mu}^a$ 与 $c^a$ 上成立。

四、（25 分）考虑实标量场和 Dirac 费米子的 Yukawa 理论

$$\begin{align}
\mathcal{L}&=\dfrac{1}{2}(\partial_{\mu}\phi)^2-\dfrac{1}{2}m^2\phi^2 +\bar\psi(i\gamma^{\mu}\partial_{\mu}-M)\psi -y\phi\bar\psi\psi-\dfrac{\lambda}{4!}\phi^4.
\end{align}$$

1. （5 分）给出 $[\phi]$、$[\psi]$、$[y]$、$[\lambda]$，并判断理论是否可重正。
1. （10 分）推导表观发散度 $D=4-E_{\phi}-\frac{3}{2}E_{\psi}$，并列出所有可能表观发散的非真空 1PI 振幅。
1. （5 分）画出单圈水平上会修正 $\phi^4$ 顶点的图，并说明即使树级令 $\lambda=0$，为什么通常仍需要该抵消项。
1. （5 分）若额外要求 $\phi\to-\phi$ 且 $\psi\to\gamma_5\psi$ 的离散对称性，请说明哪些局域抵消项被禁止，哪些仍然允许。

## mock exam 2

一、（30 分）考虑 $\mathrm{SU}(3)$ 规范理论中一个复标量三重态 $\phi$ 的自发对称性破缺，

$$\begin{align}
\mathcal{L}&=-\dfrac{1}{4}F_{\mu\nu}^aF^{a,\mu\nu} +(D_{\mu}\phi)^{\dagger}D^{\mu}\phi -V(\phi),\\
D_{\mu}&=\partial_{\mu}-igA_{\mu}^at^a,\qquad V(\phi)=-\mu^2\phi^{\dagger}\phi+\lambda(\phi^{\dagger}\phi)^2,
\end{align}$$

其中 $t^a=\lambda^a/2$ 为 Gell-Mann 矩阵，$\mu^2,\lambda>0$。

1. （5 分）求真空流形，并说明可以通过规范变换取

$$\begin{align}
\langle\phi\rangle=\dfrac{1}{\sqrt{2}}\begin{pmatrix}0\\
0\\
v\end{pmatrix}.
\end{align}$$

1. （10 分）判断破缺前后的规范群，即说明 $\mathrm{SU}(3)$ 破缺为哪个子群，并指出破缺生成元的个数。
1. （10 分）从 $(D_{\mu}\phi)^{\dagger}D^{\mu}\phi$ 推导规范玻色子的质量矩阵，并求出质量非零与质量为零的规范玻色子。
1. （5 分）讨论标量自由度如何分解为 Goldstone 模式和径向 Higgs 模式。

二、（20 分）接上题，在破缺相中取线性 $R_{\xi}$ 规范。

1. （5 分）写出能够抵消规范场-Goldstone 二次混合项的规范固定函数 $G^a$ 的一般形式。
1. （5 分）写出规范固定项 $\mathcal{L}_{\mathrm{gf}}$ 和 Faddeev-Popov 行列式的定义。
1. （5 分）说明破缺方向与未破缺方向的鬼场质量有什么不同。
1. （5 分）写出破缺方向上 massive gauge boson 的 $R_{\xi}$ 传播子结构。

三、（20 分）考虑普通 QED

$$\begin{align}
\mathcal{L}_{\mathrm{QED}}=-\dfrac{1}{4}F_{\mu\nu}F^{\mu\nu} -\dfrac{1}{2\xi}(\partial_{\mu}A^{\mu})^2 +\bar\psi(i\gamma^{\mu}D_{\mu}-m)\psi .
\end{align}$$

1. （5 分）写出费米子自能、光子真空极化和电子-光子顶角的 1PI 定义。
1. （5 分）由矢量规范对称性写出 Ward-Takahashi 恒等式

$$\begin{align}
q_{\mu}\Gamma^{\mu}(p+q,p)=S^{-1}(p+q)-S^{-1}(p).
\end{align}$$

1. （5 分）令 $q\to0$，说明该恒等式如何推出 $Z_1=Z_2$。
1. （5 分）说明光子真空极化张量为什么必须满足 $q_{\mu}\Pi^{\mu\nu}(q)=0$。

四、（30 分）考虑含 $n_f$ 个 Dirac 费米子的 $\mathrm{SU}(N)$ 规范理论，费米子属于表示 $r$。已知一圈 beta 函数可写为

$$\begin{align}
\beta(g)=-\dfrac{g^3}{16\pi^2}\left(\dfrac{11}{3}C_2(G)-\dfrac{4}{3}T(r)n_f\right)+O(g^5).
\end{align}$$

1. （5 分）解释 $C_2(G)$ 与 $T(r)$ 的定义，并给出基本表示下 $\mathrm{SU}(N)$ 的取值。
1. （10 分）由 $\mu\,dg/d\mu=\beta(g)$ 求一圈跑动耦合 $g(\mu)$。
1. （5 分）给出该理论渐近自由的条件。
1. （5 分）以 $\mathrm{SU}(2)$ 且费米子在伴随表示为例，求渐近自由允许的 $n_f$ 范围。
1. （5 分）说明 BRST 或 Slavnov-Taylor 恒等式为什么保证从不同三点顶角抽取出的规范耦合重正化常数一致。

## mock exam 3

一、（30 分）考虑电弱型规范群 $\mathrm{SU}(2)_L\times \mathrm{U}(1)_Y$ 与一个 Higgs 二重态

$$\begin{align}
H=\begin{pmatrix}H^+\\
H^0\end{pmatrix},\qquad
D_{\mu}H=\left(\partial_{\mu}-igW_{\mu}^a\dfrac{\tau^a}{2}-ig'YB_{\mu}\right)H, \qquad Y=\dfrac{1}{2}.
\end{align}$$

势能为 $V(H)=-\mu^2H^{\dagger}H+\lambda(H^{\dagger}H)^2$。

1. （5 分）求 Higgs 真空期望值，并说明规范可取为

$$\begin{align}
H=\dfrac{1}{\sqrt{2}}\begin{pmatrix}0\\
v+h\end{pmatrix}.
\end{align}$$

1. （10 分）从 $(D_{\mu}H)^{\dagger}D^{\mu}H$ 推导 $W^{\pm}$、$Z$、$\gamma$ 的质量和混合角定义。
1. （5 分）写出电荷算符 $Q=T^3+Y$，并说明未破缺的规范群是什么。
1. （10 分）在 $R_{\xi}$ 规范下写出 charged Goldstone、neutral Goldstone 与相应鬼场的质量。

二、（25 分）考虑一个 $\mathrm{U}(1)_X$ 手征规范理论，左手 Weyl 费米子 $\chi_i$ 的 $X$ 荷为 $q_i$。

1. （5 分）写出 $\mathrm{U}(1)_X^3$ 规范反常正比于哪个荷的组合。
1. （5 分）写出引力-$\mathrm{U}(1)_X$ 混合反常正比于哪个荷的组合。
1. （5 分）判断电荷集合 $\{1,1,1,-3\}$ 是否反常自由。
1. （5 分）解释为什么一个 Dirac 费米子若左右手分量在 $\mathrm{U}(1)_X$ 下有相同电荷，则作为左手 Weyl 费米子集合计数时反常相消。
1. （5 分）说明若规范反常不相消，Ward 恒等式、幺正性和可重正性会出现什么问题。

三、（20 分）考虑 BPHZ 重正化对一个四维局域理论的作用。设一个 1PI 图 $\Gamma$ 的表观发散度为 $D(\Gamma)$。

1. （5 分）说明为什么 BPHZ 减除是对外动量做 Taylor 展开。
1. （5 分）若某个两点函数 $D=2$，写出可能出现的局域抵消项形式。
1. （5 分）若某个四点函数 $D=0$，说明对应抵消项为何是局域四场算符。
1. （5 分）解释为什么“表观收敛”并不排除图中存在发散子图。

四、（25 分）考虑非 Abelian 规范理论中的 $\theta$ 项

$$\begin{align}
\mathcal{L}_{\theta}=\theta\dfrac{g^2}{32\pi^2}F_{\mu\nu}^a\widetilde F^{a,\mu\nu}.
\end{align}$$

1. （5 分）证明 $F_{\mu\nu}^a\widetilde F^{a,\mu\nu}$ 可以写成 Chern-Simons 流的散度形式。
1. （5 分）说明为什么该项不改变微扰真空附近的经典运动方程。
1. （5 分）解释大规范变换与拓扑数如何使 $\theta$ 成为物理参数。
1. （5 分）讨论 $\theta$ 项在 $P$ 和 $CP$ 下的变换性质。
1. （5 分）说明手征费米子质量相位与 $\theta$ 角之间的关系。

## mock exam 4

一、（25 分）考虑背景场规范下的 Yang-Mills 理论。将规范场分解为

$$\begin{align}
A_{\mu}^a=\bar A_{\mu}^a+Q_{\mu}^a,
\end{align}$$

并取背景协变规范固定函数

$$\begin{align}
G^a[\bar A,Q]=(\bar D^{\mu}Q_{\mu})^a.
\end{align}$$

1. （5 分）写出背景规范变换下 $\bar A_{\mu}$、$Q_{\mu}$ 的变换规律。
1. （5 分）推导对应的 Faddeev-Popov 算符。
1. （5 分）写出二次量子场作用量的结构，并说明它为什么保持背景规范协变。
1. （5 分）说明背景场方法中 $Z_gZ_{\bar A}^{1/2}=1$ 的含义。
1. （5 分）解释为什么该方法适合计算规范耦合的 beta 函数。

二、（25 分）考虑 Wilson loop

$$\begin{align}
W(C)=\dfrac{1}{N}\mathrm{Tr}\,P\exp\left(ig\oint_C dx^{\mu}A_{\mu}^a t^a\right).
\end{align}$$

1. （5 分）证明闭合 Wilson loop 是规范不变的。
1. （5 分）对一个矩形回路 $C=R\times T$，说明大 $T$ 极限下如何从 $\langle W(C)\rangle$ 提取静态夸克势 $V(R)$。
1. （5 分）解释面积律与线性禁闭势之间的关系。
1. （5 分）解释周长律在弱耦合或 Higgs 相中的物理含义。
1. （5 分）说明开 Wilson 线如何用于构造带端点物质场的规范不变算符。

三、（25 分）考虑含一个维数五 Pauli 项的 QED 有效理论

$$\begin{align}
\mathcal{L}_{\mathrm{EFT}}=\mathcal{L}_{\mathrm{QED}} +\dfrac{c_{\sigma}}{\Lambda}\bar\psi\sigma^{\mu\nu}\psi F_{\mu\nu}.
\end{align}$$

1. （5 分）判断 Pauli 算符的质量量纲，并说明该理论作为基本理论是否按幂计数可重正。
1. （5 分）给出该算符在 $C$、$P$、$T$ 下需要检查的量。
1. （5 分）说明插入一次 Pauli 顶点会如何改变表观发散度。
1. （5 分）列出到 $1/\Lambda$ 阶可能需要的同量纲抵消项类型。
1. （5 分）解释 EFT 中“不可重正”与“不可预测”并不等价的原因。

四、（25 分）考虑 Callan-Symanzik 方程。设重正化 $n$ 点函数为 $G_R^{(n)}(p_i;g,m,\mu)$。

1. （5 分）由裸格林函数不依赖 $\mu$ 推导 Callan-Symanzik 方程的一般形式。
1. （5 分）解释 beta 函数、质量反常维数和场反常维数分别来自哪些重正化常数。
1. （5 分）在临界质量附近，说明为什么标量质量项是 relevant deformation。
1. （5 分）说明 fixed point 附近 anomalous dimension 如何改变标度律。
1. （5 分）讨论 QCD 中 running coupling 与 dimensional transmutation 的关系。

## mock exam 5

一、（30 分）考虑一个具有两个 Abelian 规范场的理论

$$\begin{align}
\mathcal{L}&=-\dfrac{1}{4}F_{\mu\nu}F^{\mu\nu} -\dfrac{1}{4}X_{\mu\nu}X^{\mu\nu} -\dfrac{\epsilon}{2}F_{\mu\nu}X^{\mu\nu} +\bar\psi(i\gamma^{\mu}\partial_{\mu}-m)\psi -e\bar\psi\gamma^{\mu}A_{\mu}\psi .
\end{align}$$

1. （5 分）证明 kinetic mixing 项在 $\mathrm{U}(1)\times\mathrm{U}(1)$ 规范变换下不变。
1. （10 分）通过场重定义对规范场动能项做对角化，并说明普通带电粒子如何获得对暗光子 $X_{\mu}$ 的有效耦合。
1. （5 分）若 $X_{\mu}$ 通过 Stueckelberg 机制获得质量，写出规范不变的质量项。
1. （5 分）讨论 kinetic mixing 参数 $\epsilon$ 的重正化是否被对称性禁止。
1. （5 分）说明这种模型和单个 Abelian Higgs 模型在自由度计数上的区别。

二、（20 分）考虑非 Abelian 规范理论中的 Noether 流和协变守恒。

1. （5 分）对物质场拉氏量 $\bar\psi i\gamma^{\mu}D_{\mu}\psi$，写出颜色流 $J^{a,\mu}$。
1. （5 分）由规范场方程 $(D_{\mu}F^{\mu\nu})^a=J^{a,\nu}$ 推导协变守恒律 $(D_{\nu}J^{\nu})^a=0$。
1. （5 分）解释普通散度 $\partial_{\mu}J^{a,\mu}$ 一般不为零并不表示颜色荷不守恒。
1. （5 分）讨论在未破缺规范理论中，为什么单独的带色局域算符不是规范不变的物理观测量。

三、（25 分）考虑一个具有全局 $\mathrm{SU}(N)_L\times\mathrm{SU}(N)_R$ 手征对称性的 Dirac 费米子理论

$$\begin{align}
\mathcal{L}=\bar\psi i\gamma^{\mu}D_{\mu}\psi-m\bar\psi\psi.
\end{align}$$

1. （5 分）在 $m=0$ 时写出左、右手分量的全局变换。
1. （5 分）推导非 singlet 轴矢流的经典 Ward 恒等式。
1. （5 分）说明 singlet 轴矢流为什么可能有规范反常，而非 singlet 流的反常结构有什么不同。
1. （5 分）写出显式质量项对 PCAC 关系的贡献。
1. （5 分）说明手征对称性如何约束费米子质量的加性重正化。

四、（25 分）考虑规范场的规范固定独立性问题。

1. （5 分）说明协变规范参数 $\xi$ 出现在传播子中的方式。
1. （5 分）解释为什么单个 off-shell Green 函数可以依赖 $\xi$。
1. （5 分）说明 S-matrix 物理振幅为什么不应依赖 $\xi$。
1. （5 分）用 BRST 精确项的语言解释规范固定项变化为何不改变物理矩阵元。
1. （5 分）举例说明在检查计算时如何用 $\xi$ 消去作为一致性检验。

## mock exam 6

一、（25 分）考虑 Proca 形式的非 Abelian massive vector 理论

$$\begin{align}
\mathcal{L}=-\dfrac{1}{4}F_{\mu\nu}^aF^{a,\mu\nu} +\dfrac{1}{2}M^2A_{\mu}^aA^{a,\mu}.
\end{align}$$

1. （5 分）说明质量项如何破坏局域规范不变性。
1. （5 分）计算 massive vector 的自由传播子，并指出纵向部分在高能极限的行为。
1. （5 分）用幂计数解释为什么任意非 Abelian Proca 自相互作用不能仅凭 $[A_{\mu}]=1$ 判定为良好可重正。
1. （5 分）说明 Higgs 机制如何修复纵向自由度的高能行为。
1. （5 分）比较 Proca、Stueckelberg 和 Higgs 三种质量来源的自由度计数。

二、（25 分）考虑 Georgi-Glashow 型 $\mathrm{SO}(3)$ 规范理论，但标量取五维对称无迹表示 $\Phi^{ij}$，势能使其真空为

$$\begin{align}
\langle\Phi\rangle=v\,\mathrm{diag}(1,1,-2).
\end{align}$$

1. （5 分）判断未破缺子群。
1. （10 分）根据生成元对真空的作用，判断哪些规范玻色子获得质量。
1. （5 分）数出 Goldstone 模式个数与剩余物理标量个数。
1. （5 分）说明该题与伴随标量破缺情形在表示论上的差别。

三、（20 分）考虑规范理论中的 composite operator $F_{\mu\nu}^aF^{a,\mu\nu}$。

1. （5 分）说明复合算符为什么需要独立重正化。
1. （5 分）列出与 $F^2$ 具有相同量纲和量子数、可能发生混合的算符类型。
1. （5 分）解释方程运动为零的算符和 BRST exact 算符在物理矩阵元中的作用。
1. （5 分）说明 trace anomaly 中 $\beta(g)F^2/(2g)$ 的来源。

四、（30 分）考虑非 Abelian 规范理论中的 Slavnov-Taylor 恒等式。

1. （5 分）写出生成泛函在 BRST 变换下的不变性条件。
1. （5 分）说明为什么需要为非线性 BRST 变换引入外源。
1. （5 分）从 Slavnov-Taylor 恒等式说明 ghost-gluon、三胶子和四胶子顶角的重正化常数不是独立的。
1. （10 分）在一圈水平，若已知 $Z_3$、$Z_3^c$、$Z_1^c$，写出 $Z_g$ 与这些常数的关系，并说明如何从中得到 beta 函数。
1. （5 分）解释若 regulator 破坏 BRST 对称性，需要怎样的恢复项。

## mock exam 7

一、（25 分）考虑欧氏路径积分中的规范场两点函数。取 $\mathrm{SU}(N)$ 纯规范理论并加入源 $J_{\mu}^a$。

1. （5 分）写出规范固定后的欧氏生成泛函。
1. （5 分）说明 connected generating functional $W[J]$ 与 effective action $\Gamma[A_c]$ 的 Legendre 变换关系。
1. （5 分）解释 1PI 两点函数与全传播子的反函数关系。
1. （5 分）由规范对称性说明横向投影算符在规范玻色子自能中的作用。
1. （5 分）讨论质量缺口与微扰传播子极点之间的区别。

二、（25 分）考虑重夸克有效理论的最简单极限。令重费米子动量分解为 $p^{\mu}=Mv^{\mu}+k^{\mu}$，并定义

$$\begin{align}
Q(x)=e^{-iMv\cdot x}\left(h_v(x)+H_v(x)\right).
\end{align}$$

1. （5 分）写出投影算符 $P_{\pm}=(1\pm \slashed v)/2$ 并定义 $h_v,H_v$。
1. （5 分）从 $\bar Q(i\slashed D-M)Q$ 推导 leading-order HQET 拉氏量 $\bar h_v iv\cdot Dh_v$。
1. （5 分）说明 leading-order 拉氏量中的重夸克自旋-味对称性。
1. （5 分）列出 $1/M$ 阶会出现的 kinetic operator 和 chromomagnetic operator。
1. （5 分）说明 Wilson coefficient 为什么需要匹配计算。

三、（20 分）考虑 Schwinger-Dyson 方程的形式推导。

1. （5 分）从路径积分变量平移不变性推导标量场的一般 Schwinger-Dyson 方程。
1. （5 分）将推导推广到规范固定后的规范场，并指出鬼场项的来源。
1. （5 分）说明 Schwinger-Dyson 方程和 Ward/Slavnov-Taylor 恒等式的区别。
1. （5 分）解释为什么截断 Schwinger-Dyson 方程时需要保持规范恒等式。

四、（30 分）考虑四费米相互作用

$$\begin{align}
\mathcal{L}_{4F}=\dfrac{G}{\Lambda^2}(\bar\psi\gamma_{\mu}\psi)(\bar\psi\gamma^{\mu}\psi).
\end{align}$$

1. （5 分）判断算符量纲和耦合常数维度。
1. （5 分）说明该相互作用在四维中为何按幂计数不可重正。
1. （5 分）画出一圈修正可能生成的四费米局域结构，并说明 Fierz 变换的作用。
1. （5 分）若该算符来自重矢量玻色子交换，写出树级匹配中 $G/\Lambda^2$ 与重粒子质量和耦合的关系。
1. （10 分）讨论 EFT 截断到 $1/\Lambda^2$ 阶时，哪些图和抵消项应当保留。

## mock exam 8

一、（30 分）考虑规范群 $\mathrm{SU}(N)$ 下的复标量 $\phi$ 属于基本表示，并引入一般规范不变势能

$$\begin{align}
V(\phi)=m^2\phi^{\dagger}\phi+\lambda(\phi^{\dagger}\phi)^2.
\end{align}$$

1. （5 分）分别讨论 $m^2>0$ 与 $m^2<0$ 时的真空。
1. （10 分）当 $m^2<0$ 时，证明破缺模式为 $\mathrm{SU}(N)\to\mathrm{SU}(N-1)$。
1. （5 分）数出 massive gauge boson、massless gauge boson、Goldstone 模式和径向模式的个数。
1. （5 分）写出规范玻色子质量矩阵的一般表达式。
1. （5 分）讨论 $N=2$ 与 $N=3$ 两个特例的差别。

二、（20 分）考虑 ghosts 在非 Abelian 规范理论中的物理作用。

1. （5 分）从 Faddeev-Popov 行列式说明 ghost 为什么是 Grassmann 标量。
1. （5 分）解释 ghost 不出现在外态但必须出现在 loop 中的原因。
1. （5 分）说明 ghost loop 如何参与保证真空极化的横向性。
1. （5 分）讨论 Abelian 理论中 ghost 退耦和非 Abelian 理论中 ghost 不退耦的区别。

三、（25 分）考虑规范不变的非局域算符

$$\begin{align}
\mathcal{O}_{\Gamma}(x,y)=\bar\psi(x)\Gamma\,P\exp\left(ig\int_y^x dz^{\mu}A_{\mu}(z)\right)\psi(y).
\end{align}$$

1. （5 分）证明该算符在局域规范变换下不变。
1. （5 分）说明路径选择如何影响该非局域算符。
1. （5 分）在 $y\to x$ 的短距离极限，说明它如何展开为局域复合算符。
1. （5 分）讨论 Wilson line 的端点发散或 cusp 发散为何需要额外重正化。
1. （5 分）说明这种算符在 parton distribution function 定义中的作用。

四、（25 分）考虑规范理论中的质量重正化。

1. （5 分）写出 Dirac 质量 $m_0=Z_mm$ 的重正化群方程。
1. （5 分）定义质量反常维数 $\gamma_m$，并说明符号约定可能的差别。
1. （5 分）在 QED 或 QCD 中说明质量项如何破坏手征对称性。
1. （5 分）解释为什么手征对称性可保护费米子不产生加性质量。
1. （5 分）比较费米子质量保护与标量质量项的自然性问题。

## mock exam 9

一、（25 分）考虑规范场的 canonical quantization 与约束结构。以 Abelian Maxwell 理论为例，

$$\begin{align}
\mathcal{L}=-\dfrac{1}{4}F_{\mu\nu}F^{\mu\nu}.
\end{align}$$

1. （5 分）求 $A_0$ 与 $A_i$ 的共轭动量，并指出 primary constraint。
1. （5 分）由 Hamiltonian 推导 Gauss law constraint。
1. （5 分）说明两个 first-class constraints 对应的规范自由度。
1. （5 分）在 Coulomb gauge 下数出光子的物理自由度。
1. （5 分）比较 canonical 约束量子化和 Faddeev-Popov 路径积分量子化的关系。

二、（25 分）考虑非 Abelian 理论中的有限温 Euclidean 路径积分。时间方向紧化为 $\tau\sim\tau+\beta$。

1. （5 分）写出玻色场、费米场和 ghost 场在 Euclidean 时间方向的边界条件。
1. （5 分）定义 Polyakov loop

$$\begin{align}
P(\vec x)=\dfrac{1}{N}\mathrm{Tr}\,P\exp\left(ig\int_0^{\beta}d\tau\,A_0(\tau,\vec x)\right).
\end{align}$$

1. （5 分）说明 Polyakov loop 在中心对称变换下如何变换。
1. （5 分）解释 $\langle P\rangle$ 与静态单夸克自由能的关系。
1. （5 分）讨论纯 Yang-Mills 理论中中心对称性与退禁闭相变的关系。

三、（20 分）考虑 Abelian 规范理论中的 Ward 恒等式对散射振幅的约束。

1. （5 分）说明外线光子的极化矢量替换为动量 $k_{\mu}$ 时，物理振幅为何应为零。
1. （5 分）用 LSZ 约化说明该 statement 与 current conservation 的关系。
1. （5 分）以 Compton scattering 的树图为例，说明两个图的规范不变性如何相互抵消非横向项。
1. （5 分）讨论若正则化方案破坏 Ward 恒等式，如何通过抵消项恢复。

四、（30 分）考虑有两个实标量的模型

$$\begin{align}
\mathcal{L}&=\dfrac{1}{2}(\partial\phi)^2+\dfrac{1}{2}(\partial\chi)^2 -\dfrac{1}{2}m_{\phi}^2\phi^2-\dfrac{1}{2}m_{\chi}^2\chi^2 -\dfrac{g}{2}\phi^2\chi-\dfrac{\lambda}{4!}\phi^4-\dfrac{\kappa}{4!}\chi^4-\dfrac{h}{4}\phi^2\chi^2.
\end{align}$$

1. （5 分）判断每个耦合常数的质量量纲。
1. （5 分）写出该理论的表观发散度，并说明 cubic coupling 如何改变发散性。
1. （10 分）列出所有二次、三次、四次局域抵消项，并说明若未加某些项，它们是否会被 loop 生成。
1. （5 分）画出修正 $\phi^2\chi^2$ 顶点的单圈图。
1. （5 分）讨论若加入 $\phi\to-\phi$ 对称性，会禁止哪些项。

## mock exam 10

一、（30 分）考虑 $\mathrm{SU}(N)$ 规范理论中的规范反常与表示。

1. （5 分）定义对称张量 $d^{abc}_r=\mathrm{Tr}_r(t^a\{t^b,t^c\})$，并说明它与三角图规范反常的关系。
1. （5 分）说明实表示或赝实表示中的 Weyl 费米子为什么没有局域 $\mathrm{SU}(N)^3$ 规范反常。
1. （5 分）解释 $\mathrm{SU}(2)$ 基本表示局域反常消失但仍可能有 Witten 全局反常。
1. （5 分）给出一组 $\mathrm{SU}(N)$ 基本表示和反基本表示 Weyl 费米子反常相消的条件。
1. （10 分）讨论 Standard Model 一代费米子中 gauge anomaly cancellation 的基本结构，不要求逐项计算所有系数。

二、（20 分）考虑 Higgs 有效势与 Coleman-Weinberg 机制。

1. （5 分）写出一圈有效势的一般形式

$$\begin{align}
V_{\mathrm{eff}}(\varphi)=V_{\mathrm{tree}}(\varphi)+\dfrac{1}{64\pi^2}\sum_i(-1)^{F_i}n_iM_i^4(\varphi)\left(\log\dfrac{M_i^2(\varphi)}{\mu^2}-c_i\right).
\end{align}$$

1. （5 分）说明有效势依赖规范参数而真空处的物理质量应如何理解。
1. （5 分）解释 dimensional transmutation 如何产生非零真空期望值。
1. （5 分）讨论 Coleman-Weinberg 机制对标量自耦合和规范耦合大小的要求。

三、（25 分）考虑 operator product expansion。设两个流的短距离乘积为

$$\begin{align}
J(x)J(0)\sim\sum_i C_i(x,\mu)\mathcal{O}_i(0,\mu).
\end{align}$$

1. （5 分）解释 Wilson coefficient 与局域算符矩阵元的物理分工。
1. （5 分）说明 OPE 中 $\mu$ 依赖如何在 $C_i$ 与 $\mathcal{O}_i$ 之间相消。
1. （5 分）写出含算符混合时的重正化群方程结构。
1. （5 分）说明单位算符、质量算符和 $F_{\mu\nu}^2$ 在 QCD OPE 中的典型角色。
1. （5 分）解释 OPE 与普通 S-matrix 微扰展开的区别。

四、（25 分）考虑规范理论中的红外问题。

1. （5 分）说明 massless gauge boson 导致 soft divergence 的原因。
1. （5 分）说明 massless charged particle 导致 collinear divergence 的原因。
1. （5 分）解释 Bloch-Nordsieck 机制如何消除 inclusive observable 中的 soft divergence。
1. （5 分）说明 KLN 定理的陈述和适用条件。
1. （5 分）讨论 UV 重正化和 IR divergence subtraction 在概念上的区别。

# 答案速查

## mock exam 1 sol.

一、标量 QED：

1. $[\phi]=[A_{\mu}]=1$，$[e_0]=[\lambda_0]=0$，$[m_0]=1$。所有相互作用维数不超过 $4$，按幂计数可重正。
1. 协变规范中

$$\begin{align}
D_{\phi}(p)&=\dfrac{i}{p^2-m^2+i\epsilon},& D_{\mu\nu}(p)&=\dfrac{-i}{p^2+i\epsilon}\left(g_{\mu\nu}-(1-\xi)\dfrac{p_{\mu}p_{\nu}}{p^2+i\epsilon}\right).
\end{align}$$

标量-光子顶点正比于 $e(p+p')_{\mu}$，等价地在全入射动量约定下正比于 $e(p_{\phi}-p_{\phi^\dagger})_{\mu}$；双光子顶点正比于 $2ie^2g_{\mu\nu}$；四标量顶点由 $-\lambda(\phi^\dagger\phi)^2/4$ 给出，组合因子按外线约定固定。
1. 表观发散的 1PI 振幅是 $\phi^\dagger\phi$、$AA$、$A\phi^\dagger\phi$、$AA\phi^\dagger\phi$、$(\phi^\dagger\phi)^2$。抵消项对应 $(D\phi)^\dagger D\phi$、$\phi^\dagger\phi$、$F_{\mu\nu}F^{\mu\nu}$、$(\phi^\dagger\phi)^2$ 及规范固定项。
1. $A_{\mu}A^{\mu}$ 不是规范不变项。标量 QED 的 Ward 恒等式可写为

$$\begin{align}
q_{\mu}\Gamma^{\mu}(p+q,p)=e\left[\Delta^{-1}(p+q)-\Delta^{-1}(p)\right],
\end{align}$$

符号中的 $e$ 可随顶角定义吸收。

二、Stueckelberg：

1. 组合 $A_{\mu}-m^{-1}\partial_{\mu}\sigma$ 在 $A_{\mu}\to A_{\mu}+\partial_{\mu}\alpha$、$\sigma\to\sigma+m\alpha$ 下不变。
1. 质量项给出混合 $m(\partial_{\mu}A^{\mu})\sigma$，规范固定项给出 $-m\sigma\partial_{\mu}A^{\mu}$，二者相消。
1. 自由传播子为

$$\begin{align}
D_{\mu\nu}(p)&=\dfrac{-i}{p^2-m^2+i\epsilon}\left[g_{\mu\nu}-\dfrac{(1-\xi)p_{\mu}p_{\nu}}{p^2-\xi m^2+i\epsilon}\right],& D_{\sigma}(p)&=\dfrac{i}{p^2-\xi m^2+i\epsilon}.
\end{align}$$

$\xi=1$ 是 Feynman-'t Hooft 型规范；$\xi\to\infty$ 给出 unitary gauge，$\sigma$ 从谱中退耦。
1. $G=\partial A+\xi m\sigma$ 的变分给出场无关的 $M\propto -\partial^2+\xi m^2$，所以 Abelian ghost 完全退耦。

三、Lorenz 规范 Yang-Mills：

1. $M^{ab}(x,y)=\partial_x^{\mu}D_{\mu}^{ab}[A](x)\delta^4(x-y)$。
1. $\det M=\int D\bar cDc\,\exp\{i\int \bar c^a\partial^{\mu}D_{\mu}^{ab}c^b\}$，故 $\mathcal L_{\mathrm{gh}}=\partial_{\mu}\bar c^a(D^{\mu}c)^a$，差一个总导数或整体号只改变约定。
1. $\mathcal L_{\mathrm{eff}}=-\frac14F^2-\frac{1}{2\xi}(\partial A^a)^2+\partial_{\mu}\bar c^a(D^{\mu}c)^a$。
1. BRST：

$$\begin{align}
sA_{\mu}^a&=(D_{\mu}c)^a,& sc^a&=-\dfrac{g}{2}f^{abc}c^bc^c,& s\bar c^a&=B^a,& sB^a&=0.
\end{align}$$

$s^2c=0$ 来自 Jacobi 恒等式和 ghost 反对易；$s^2A_{\mu}=D_{\mu}sc+g[sA_{\mu},c]=0$。

四、Yukawa：

1. $[\phi]=1$，$[\psi]=3/2$，$[y]=[\lambda]=0$，理论按幂计数可重正。
1. $D=4-E_{\phi}-\frac32E_{\psi}$。发散振幅：$E_{\phi}=1,2,3,4$ 的纯标量振幅，$E_{\psi}=2$ 的费米子二点函数，以及 $E_{\phi}=1,E_{\psi}=2$ 的 Yukawa 顶角；具体保留哪些由对称性决定。
1. 修正 $\phi^4$ 的单圈图包括费米子 box、两个 $\phi^4$ 顶角的 scalar bubble，以及含 Yukawa 与标量顶角的相应图。若对称性允许，$\phi^4$ 会被 loop 生成。
1. 对称性 $\phi\to-\phi,\ \psi\to\gamma_5\psi$ 下，$\bar\psi\psi$ 与奇数个纯 $\phi$ 项被禁止；$\phi\bar\psi\psi$、$\phi^2$、$(\partial\phi)^2$、$\phi^4$、$\bar\psi i\slashed\partial\psi$ 仍允许。

## mock exam 2 sol.

一、$\mathrm{SU}(3)$ 基本表示 Higgs：

1. 最小值满足 $\phi^\dagger\phi=v^2/2$，其中 $v^2=\mu^2/\lambda$。任意非零基本表示真空可由 $\mathrm{SU}(3)$ 旋到 $(0,0,v/\sqrt2)^T$。
1. 保持第三个基向量不变的子群是作用在前两分量上的 $\mathrm{SU}(2)$，故 $\mathrm{SU}(3)\to\mathrm{SU}(2)$，破缺生成元数 $8-3=5$。
1. 质量矩阵

$$\begin{align}
(M_A^2)_{ab}=g^2\langle\phi\rangle^\dagger\{t^a,t^b\}\langle\phi\rangle .
\end{align}$$

在 Gell-Mann 基下，

$$\begin{align}
M_{1,2,3}^2&=0,& M_{4,5,6,7}^2&=\dfrac{g^2v^2}{4},& M_8^2&=\dfrac{g^2v^2}{3}.
\end{align}$$

1. 复三重态有 $6$ 个实自由度；$5$ 个 Goldstone 被破缺方向规范玻色子吃掉，剩下 $1$ 个径向 Higgs。

二、$R_{\xi}$ 规范：

1. 令 $\phi=v+\eta$，一般取

$$\begin{align}
G^a=\partial_{\mu}A^{a,\mu}-\xi g\,(t^a\langle\phi\rangle)^\dagger\eta+\text{h.c.}
\end{align}$$

等价形式只要抵消 $A_{\mu}$-Goldstone 混合即可。
1. $\mathcal L_{\mathrm{gf}}=-\frac{1}{2\xi}G^aG^a$，$\Delta_{\mathrm{FP}}=\det(\delta G^a/\delta\alpha^b)$。
1. 破缺方向 ghost 的 $m_c^2=\xi M_A^2$；未破缺 $\mathrm{SU}(2)$ 方向 ghost 无质量。
1. 破缺方向规范玻色子传播子：

$$\begin{align}
D_{\mu\nu}(p)=\dfrac{-i}{p^2-M_A^2+i\epsilon} \left[g_{\mu\nu}-\dfrac{(1-\xi)p_{\mu}p_{\nu}}{p^2-\xi M_A^2+i\epsilon}\right].
\end{align}$$

三、QED Ward 恒等式：

1. $S^{-1}(p)=\slashed p-m-\Sigma(p)$；光子二点 1PI 为 $i\Pi^{\mu\nu}(q)$；三点 1PI 为 $ie\Gamma^{\mu}(p',p)$。
1. 矢量规范对称性给出 $q_{\mu}\Gamma^{\mu}(p+q,p)=S^{-1}(p+q)-S^{-1}(p)$。
1. $q\to0$ 时 $\Gamma^{\mu}(p,p)=\partial S^{-1}(p)/\partial p_{\mu}$，顶角发散等于费米子波函数发散，故 $Z_1=Z_2$。
1. 规范不变性禁止纵向真空极化；因此 $\Pi^{\mu\nu}(q)=(q^2g^{\mu\nu}-q^{\mu}q^{\nu})\Pi(q^2)$。

四、非 Abelian beta 函数：

1. $\mathrm{Tr}_r(t^at^b)=T(r)\delta^{ab}$，$f^{acd}f^{bcd}=C_2(G)\delta^{ab}$。$\mathrm{SU}(N)$ 基本表示中 $T(F)=1/2$，$C_2(G)=N$。
1. 令 $\beta_0=\frac{11}{3}C_2(G)-\frac43T(r)n_f$，

$$\begin{align}
\dfrac{1}{g^2(\mu)}=\dfrac{1}{g^2(\mu_0)}+\dfrac{\beta_0}{8\pi^2}\ln\dfrac{\mu}{\mu_0}.
\end{align}$$

1. 渐近自由条件是 $\beta_0>0$。
1. $\mathrm{SU}(2)$ 伴随表示 $T(\mathrm{adj})=C_2(G)=2$，故 $\beta_0=\frac{22}{3}-\frac{8}{3}n_f>0$，即 $n_f<11/4$。
1. Slavnov-Taylor 恒等式给出同一个 $Z_g$，例如

$$\begin{align}
Z_g=Z_1Z_2^{-1}Z_3^{-1/2}=Z_1^c(Z_3^c)^{-1}Z_3^{-1/2}=Z_1^{3g}Z_3^{-3/2}.
\end{align}$$

## mock exam 3 sol.

一、电弱 Higgs：

1. $v^2=\mu^2/\lambda$，unitary gauge 中 $H=(0,(v+h)/\sqrt2)^T$。
1. 质量项来自 $|D_{\mu}\langle H\rangle|^2$：

$$\begin{align}
m_W^2&=\dfrac{g^2v^2}{4},& m_Z^2&=\dfrac{(g^2+g'^2)v^2}{4},& m_{\gamma}^2&=0.
\end{align}$$

$$\begin{align}
W_{\mu}^{\pm}&=\dfrac{W_{\mu}^1\mp iW_{\mu}^2}{\sqrt2},& Z_{\mu}&=\cos\theta_W W_{\mu}^3-\sin\theta_W B_{\mu},& A_{\mu}&=\sin\theta_W W_{\mu}^3+\cos\theta_W B_{\mu},
\end{align}$$

其中 $\tan\theta_W=g'/g$。
1. $Q=T^3+Y$ 保持真空不变，未破缺群是 $\mathrm{U}(1)_{\mathrm{em}}$。
1. $R_{\xi}$ 规范下 $m_{G^\pm}^2=m_{c^\pm}^2=\xi m_W^2$，$m_{G^0}^2=m_{c_Z}^2=\xi m_Z^2$，电磁 ghost 无质量并在 Abelian 部分退耦。

二、$\mathrm{U}(1)_X$ 反常：

1. 三规范反常 $\propto\sum_i q_i^3$。
1. 引力混合反常 $\propto\sum_i q_i$。
1. $\{1,1,1,-3\}$ 有 $\sum q_i=0$，但 $\sum q_i^3=-24$，所以不是反常自由。
1. 一个 vector-like Dirac 费米子等价于左手荷 $q$ 和左手反粒子荷 $-q$，线性和三次反常都相消。
1. 规范反常不相消时，规范 Ward 恒等式失效，纵向非物理自由度不再退耦，幺正性和可重正性都失去保障。

三、BPHZ：

1. UV 发散部分在外动量下是局域多项式，故减除 Taylor 多项式。
1. 两点函数 $D=2$ 可有 $a+b p^2+c p_{\mu}p_{\nu}$ 型局域结构，对应质量项、波函数项和规范允许的张量结构。
1. 四点函数 $D=0$ 只需常数局域项，对应无导数四场算符。
1. 表观收敛只说明整体图无 UV 发散；子图仍可有 $D_{\gamma}\ge0$，需要 forest formula 同时减除。

四、$\theta$ 项：

1. $\mathrm{Tr}F\widetilde F=\partial_{\mu}K^{\mu}$，其中

$$\begin{align}
K^{\mu}\propto\epsilon^{\mu\nu\rho\sigma}\mathrm{Tr}\left(A_{\nu}\partial_{\rho}A_{\sigma}-\dfrac{2ig}{3}A_{\nu}A_{\rho}A_{\sigma}\right).
\end{align}$$

1. 它是全导数，微扰真空附近不改变局域经典运动方程。
1. 非平庸拓扑扇区中 $\int F\widetilde F$ 是拓扑数，路径积分权重含 $e^{i\theta Q}$，所以 $\theta$ 物理且 $2\pi$ 周期。
1. $F\widetilde F\propto \vec E^a\cdot\vec B^a$，在 $P$ 与 $CP$ 下为奇。
1. 手征旋转可把夸克质量矩阵相位移入 $\theta$，物理参数是 $\bar\theta=\theta+\arg\det M_q$，符号随手征旋转约定而变。

## mock exam 4 sol.

一、背景场规范：

1. 背景规范变换下 $\bar A_{\mu}\to U\bar A_{\mu}U^\dagger+\frac{i}{g}U\partial_{\mu}U^\dagger$，$Q_{\mu}\to UQ_{\mu}U^\dagger$。
1. 对 quantum gauge transformation，FP 算符为 $M^{ab}=(\bar D^{\mu}D_{\mu}[\bar A+Q])^{ab}$。
1. 二次作用量含 $Q_{\mu}[-\bar D^2g^{\mu\nu}-2gf^{abc}\bar F^{c,\mu\nu}+\cdots]Q_{\nu}$，由 $\bar D$ 和 $\bar F$ 组成，因此背景规范协变。
1. 背景 Ward 恒等式给出 $Z_gZ_{\bar A}^{1/2}=1$，所以背景场二点函数的重正化直接决定 $Z_g$。
1. 计算 beta 函数时只需背景二点函数的 $F_{\mu\nu}F^{\mu\nu}$ 发散项。

二、Wilson loop：

1. 开 Wilson 线 $U_{\Gamma}(x,y)\to \Omega(x)U_{\Gamma}(x,y)\Omega^\dagger(y)$；闭合后 trace 消去端点矩阵。
1. $\langle W(R,T)\rangle\sim e^{-T V(R)}$，故 $V(R)=-\lim_{T\to\infty}T^{-1}\log\langle W(R,T)\rangle$。
1. 面积律 $e^{-\sigma RT}$ 给出 $V(R)=\sigma R$。
1. 周长律表示没有线性势，常见于弱耦合 Coulomb 相或 Higgs 屏蔽相。
1. $\bar\psi(x)U_{\Gamma}(x,y)\psi(y)$ 是规范不变双局域算符。

三、Pauli EFT：

1. $\bar\psi\sigma^{\mu\nu}\psi F_{\mu\nu}$ 维数为 $3+2=5$，系数维数 $-1$，作为基本理论不可重正。
1. 分解为磁偶极 $\bar\psi\sigma^{ij}\psi F_{ij}$ 和电偶极 $\bar\psi\sigma^{0i}\psi F_{0i}$ 检查 $C,P,T$；带 $\gamma_5$ 的 Pauli 项对应 EDM。
1. 一次 Pauli 顶点等价于加入一个维数五插入，使表观发散度增加 $1$。
1. 到 $1/\Lambda$ 阶需包括所有同维、同量子数、规范不变的维数五算符；EOM 等价的算符可用场重定义消去。
1. EFT 有有限阶截断：每个 $1/\Lambda^n$ 阶只需有限个 Wilson 系数，所以仍有可预测性。

四、Callan-Symanzik：

1. 常用形式为

$$\begin{align}
\left(\mu\dfrac{\partial}{\partial\mu}+\beta(g)\dfrac{\partial}{\partial g}-\gamma_m m\dfrac{\partial}{\partial m}+n\gamma_{\Phi}\right)G_R^{(n)}=0,
\end{align}$$

符号取决于 $\gamma_m$ 定义。
1. $\beta$ 来自耦合重正化，$\gamma_m$ 来自质量重正化，$\gamma_{\Phi}$ 来自场波函数重正化。
1. 标量质量项维数 $2<4$，在 IR 下增长，是 relevant deformation。
1. fixed point 附近总标度维数是 canonical dimension 加 anomalous dimension。
1. QCD 中无量纲耦合跑动引入 $\Lambda_{\mathrm{QCD}}$，即 dimensional transmutation。

## mock exam 5 sol.

一、kinetic mixing：

1. $F_{\mu\nu}$ 和 $X_{\mu\nu}$ 本身规范不变，故 $F_{\mu\nu}X^{\mu\nu}$ 规范不变。
1. 取 $A_{\mu}=A'_{\mu}-\epsilon X'_{\mu}$，动能交叉项消失，$X'$ 动能变为 $-\frac14(1-\epsilon^2)X'^2$，再重标定 $X'$。物质耦合变成 $-e\bar\psi\gamma A'\psi+\epsilon e\bar\psi\gamma X'\psi$，重标定后有相应 $\sqrt{1-\epsilon^2}$ 因子。
1. Stueckelberg 质量项：

$$\begin{align}
\dfrac12m_X^2\left(X_{\mu}-\dfrac{1}{m_X}\partial_{\mu}\sigma\right)^2,\qquad X_{\mu}\to X_{\mu}+\partial_{\mu}\alpha,\quad \sigma\to\sigma+m_X\alpha.
\end{align}$$

1. 该项被规范对称性允许；若存在同时带两种 $\mathrm{U}(1)$ 电荷的重场，loop 通常生成 $\epsilon$。
1. kinetic mixing 无需 Higgs 径向模式；Abelian Higgs 有额外径向 Higgs，Stueckelberg 只提供被吃掉的标量。

二、颜色流：

1. 若 $D_{\mu}=\partial_{\mu}-igA_{\mu}^at^a$，则 $J^{a,\mu}=g\bar\psi\gamma^{\mu}t^a\psi$。
1. 对方程 $(D_{\mu}F^{\mu\nu})^a=J^{a,\nu}$ 再作用 $D_{\nu}$，利用 $[D_{\mu},D_{\nu}]$ 与 $F^{\mu\nu}$ 的反对称性得 $(D_{\nu}J^{\nu})^a=0$。
1. $J^{a,\mu}$ 在伴随表示中转动，守恒律必须写成协变形式。
1. 带色局域算符在局域规范变换下不变性不足，物理观测量需为规范 singlet 或带 Wilson 线补全。

三、手征流：

1. $m=0$ 时 $\psi_L\to L\psi_L$，$\psi_R\to R\psi_R$，$L,R\in\mathrm{SU}(N)$。
1. 非 singlet PCAC：

$$\begin{align}
\partial_{\mu}A^{a,\mu}=2im\,\bar\psi\gamma_5T^a\psi
\end{align}$$

按 $T^a$ 归一化可有因子差异。
1. singlet 轴流有 $\mathrm{Tr}\,T_{\mathrm{singlet}}\{t^A,t^B\}\ne0$ 的规范反常；非 singlet flavor generator 无迹，普通 QCD 中相应规范反常相消。
1. 质量项显式破坏轴对称性，贡献 $2imP^a$。
1. $m=0$ 时手征对称性禁止 $\bar\psi\psi$，故费米子质量没有加性辐射修正。

四、规范参数：

1. 协变规范传播子含 $(1-\xi)p_{\mu}p_{\nu}/p^2$；破缺相中为 $(p^2-\xi M^2)^{-1}$。
1. off-shell Green 函数不是物理量，可依赖规范选择。
1. S-matrix 外态属于 BRST cohomology，规范参数变化为 BRST exact 插入，物理矩阵元为零。
1. $\partial_{\xi}\mathcal L_{\mathrm{gf+gh}}=s(\cdots)$，BRST 闭物理态夹住后不贡献。
1. 计算散射振幅时所有 $\xi$ 项和 Goldstone/ghost 贡献相消，是常用检验。

## mock exam 6 sol.

一、非 Abelian Proca：

1. $A_{\mu}^aA^{a,\mu}$ 在非 Abelian 局域规范变换下不协变，显式破坏规范不变性。
1. Proca 传播子：

$$\begin{align}
D_{\mu\nu}^{ab}(p)=\dfrac{-i\delta^{ab}}{p^2-M^2+i\epsilon}\left(g_{\mu\nu}-\dfrac{p_{\mu}p_{\nu}}{M^2}\right).
\end{align}$$

纵向部分高能下不按 $1/p^2$ 衰减。
1. 纵向极化 $\epsilon_L^{\mu}\sim p^{\mu}/M$ 使振幅随能量增长，单纯 $[A]=1$ 的幂计数不足以保证可重正和幺正。
1. Higgs 机制用 Goldstone 与规范对称性组织抵消高能增长。
1. Proca 每个 massive vector 有 $3$ 个自由度；Stueckelberg 用一个标量补成规范不变但无径向 Higgs；Higgs 机制还有物理径向标量。

二、$\mathrm{SO}(3)$ 五维表示：

1. $\mathrm{diag}(1,1,-2)$ 保持 $1$-$2$ 平面旋转，未破缺为 $\mathrm{SO}(2)\simeq\mathrm{U}(1)$。
1. $J_{12}$ 不破缺，$J_{13},J_{23}$ 破缺；对应两个规范玻色子获得质量。
1. 五维实标量中 $2$ 个 Goldstone 被吃掉，剩 $3$ 个物理标量。
1. 伴随表示是三维向量；这里是 rank-2 对称无迹张量，真空稳定子由矩阵本征值简并决定。

三、$F^2$ 复合算符：

1. 复合算符插入会产生新的短距离发散，需要独立的 $Z_{ij}$。
1. 可混合对象包括同量纲、同量子数的 $m\bar\psi\psi$、EOM 算符、BRST exact 算符、全导数；若 CP 守恒，$F\widetilde F$ 不与 $F^2$ 混合。
1. EOM 和 BRST exact 算符影响 off-shell Green 函数，但在物理 on-shell 矩阵元中可消去或不贡献。
1. 量子破缺尺度不变性给出

$$\begin{align}
T^{\mu}_{\ \mu}=\dfrac{\beta(g)}{2g}F_{\mu\nu}^aF^{a,\mu\nu}+(1+\gamma_m)m\bar\psi\psi+\cdots .
\end{align}$$

四、Slavnov-Taylor：

1. BRST 不变性给出 $\mathcal S(\Gamma)=0$。
1. 因 $sA$、$sc$ 非线性，需要外源耦合到 BRST 变换以控制复合算符重正化。
1. 恒等式关联 $Z_1^c,Z_1^{3g},Z_1^{4g},Z_3,Z_3^c$，只有一个独立规范耦合重正化。
1. 一圈：

$$\begin{align}
Z_g=Z_1^c(Z_3^c)^{-1}Z_3^{-1/2},\qquad g_0=\mu^{\epsilon}Z_gg.
\end{align}$$

由 $\mu dg_0/d\mu=0$ 得 beta 函数。
1. 若 regulator 破坏 BRST，需要加入局域恢复抵消项，使重正化后的有效作用重新满足 Slavnov-Taylor 恒等式。

## mock exam 7 sol.

一、欧氏 1PI：

1. $Z[J]=\int DA\,D\bar cDc\,e^{-S_E-S_{\mathrm{gf}}-S_{\mathrm{gh}}+\int J\cdot A}$。
1. $W[J]=\log Z[J]$，$A_c=\delta W/\delta J$，$\Gamma[A_c]=\int J\cdot A_c-W[J]$。
1. $\Gamma^{(2)}$ 是全传播子 $G^{(2)}$ 的反核：$\int \Gamma^{(2)}G^{(2)}=1$。
1. 规范 Ward/ST 恒等式限制自能为横向结构，加上规范固定纵向项。
1. 质量缺口是规范不变谱性质；微扰胶子传播子的极点不是禁闭理论中的物理胶子外态。

二、HQET：

1. $P_{\pm}=(1\pm\slashed v)/2$，$h_v=P_+e^{iMv\cdot x}Q$，$H_v=P_-e^{iMv\cdot x}Q$。
1. 积分掉 $H_v$ 后 leading term 为 $\mathcal L_{\mathrm{HQET}}^{(0)}=\bar h_v\,iv\cdot D\,h_v$。
1. leading order 不含 $M$ 和 $\gamma$ 矩阵自旋耦合，有 heavy flavor 与 heavy spin symmetry。
1. $1/M$ 阶：

$$\begin{align}
\mathcal L_{1/M}=\dfrac{1}{2M}\bar h_v(iD_{\perp})^2h_v+\dfrac{C_{\mathrm{mag}}g}{4M}\bar h_v\sigma_{\mu\nu}G^{\mu\nu}h_v.
\end{align}$$

1. Wilson 系数由 full QCD 与 HQET 在匹配尺度给出相同振幅来确定。

三、Schwinger-Dyson：

1. 路径积分中 $\int D\phi\,\delta/\delta\phi(x)[F[\phi]e^{iS}]=0$，得 $\langle\delta F/\delta\phi+iF\,\delta S/\delta\phi\rangle=0$。
1. 对规范场同理，但 $S$ 包括规范固定和 ghost，故方程中有 ghost current。
1. Schwinger-Dyson 是运动方程的量子版本；Ward/ST 是对称性恒等式。
1. 截断若破坏 ST 恒等式，会引入虚假的纵向模式或错误的规范参数依赖。

四、四费米 EFT：

1. $(\bar\psi\gamma_{\mu}\psi)^2$ 维数 $6$，$G/\Lambda^2$ 维数 $-2$。
1. 高阶 loop 会生成越来越高维算符，按幂计数不可重正。
1. 一圈可生成不同 Dirac/color/flavor 收缩的四费米结构；Fierz 变换用于选择独立算符基。
1. 若来自重矢量 $V_{\mu}$，树级低能匹配通常 $G/\Lambda^2\sim g_V^2/M_V^2$，整体号由原始耦合和传播子约定决定。
1. 到 $1/\Lambda^2$ 阶保留一次维六插入的树图和必要的一圈混合；$1/\Lambda^4$ 的双插入通常属于下一阶。

## mock exam 8 sol.

一、$\mathrm{SU}(N)$ 基本 Higgs：

1. $m^2>0$ 时 $\langle\phi\rangle=0$；$m^2<0$ 时 $|\langle\phi\rangle|^2=-m^2/(2\lambda)$。
1. 取 $\langle\phi\rangle=(0,\ldots,0,v/\sqrt2)^T$，保持它不变的 $\mathrm{SU}(N)$ 子群是 $\mathrm{SU}(N-1)$。
1. massive gauge boson 数 $2N-1$，massless 数 $(N-1)^2-1$，Goldstone 数 $2N-1$，径向模式 $1$ 个。
1. $M_{ab}^2=g^2v^\dagger\{t^a,t^b\}v$。
1. $N=2$ 时完全破缺，$3$ 个规范玻色子全 massive；$N=3$ 时破缺到 $\mathrm{SU}(2)$，$5$ 个 massive、$3$ 个 massless。

二、ghost：

1. FP 行列式是普通 determinant，用 Grassmann 标量积分表示。
1. ghost 是规范固定引入的非物理场，不属于 BRST cohomology 外态，但 loop 中必须计入以抵消非物理自由度。
1. 非 Abelian 真空极化的横向性需要 gauge、ghost 和 matter loop 合起来满足 ST 恒等式。
1. Abelian Lorenz 规范下 FP 算符场无关，ghost 退耦；非 Abelian 中 $M=\partial D[A]$ 含 $A$，ghost 与胶子相互作用。

三、非局域算符：

1. Wilson 线 $W(x,y)\to U(x)W(x,y)U^\dagger(y)$，与 $\bar\psi(x)\to\bar\psi(x)U^\dagger(x)$、$\psi(y)\to U(y)\psi(y)$ 相消。
1. 不同路径定义不同算符，物理上对应不同 gauge string。
1. $y\to x$ 时可按 $x-y$ 展开为 $\bar\psi\Gamma(D_{\mu_1}\cdots D_{\mu_n}\psi)$ 等局域算符。
1. Wilson 线自能、端点和 cusp 会产生额外 UV 发散，需要 Wilson-line renormalization。
1. PDF 的规范不变定义正是双局域夸克/胶子算符加沿光锥方向的 Wilson 线。

四、质量重正化：

1. $m_0=Z_m m$，所以 $0=\mu d\ln m/d\mu+\mu d\ln Z_m/d\mu$。
1. 可定义 $\gamma_m=-\mu d\ln m/d\mu=\mu d\ln Z_m/d\mu$；有些书取相反号。
1. $m\bar\psi\psi=m(\bar\psi_L\psi_R+\bar\psi_R\psi_L)$ 混合左右手，破坏轴手征对称性。
1. $m=0$ 时手征对称性禁止 $\bar\psi\psi$，所以没有加性质量。
1. 标量质量 $\phi^2$ 通常不受手征对称性保护，相关算符可对 UV 尺度敏感。

## mock exam 9 sol.

一、Maxwell 约束：

1. $\pi^0=0$ 是 primary constraint；$\pi^i=F^{i0}$，等价于电场差一个号的约定。
1. 保持 $\pi^0=0$ 的时间演化给出 Gauss law：$\partial_i\pi^i=0$。
1. 两个 first-class constraints 去掉两个 canonical pairs 中的规范冗余，四维规范场剩两个横向物理自由度。
1. Coulomb gauge $\nabla\cdot\vec A=0$ 后只剩两个横向光子极化。
1. FP 路径积分是对同一约束系统的协变 gauge-fixing 实现。

二、有限温：

1. 玻色场周期，费米场反周期，ghost 虽是 Grassmann 但因对应规范参数而取周期边界条件。
1. Polyakov loop 如题所示，是时间方向 Wilson line 的 trace。
1. 中心变换下 $P\to zP$，$z\in Z_N$。
1. $\langle P\rangle\sim e^{-\beta F_q}$；$\langle P\rangle=0$ 表示单夸克自由能无穷大。
1. 纯 Yang-Mills 中中心对称未破缺为禁闭，相变后中心对称破缺为退禁闭。

三、Ward 振幅：

1. 物理振幅满足 $k_{\mu}\mathcal M^{\mu}=0$，所以 $\epsilon_{\mu}\to k_{\mu}$ 时为零。
1. LSZ 把外光子接到守恒流；$\partial_{\mu}J^{\mu}=0$ 给出横向性。
1. Compton scattering 中 $s$ 道和 $u$ 道的非横向项用 Dirac 方程相互抵消。
1. 若 regulator 破坏 Ward 恒等式，加入有限或发散的局域抵消项恢复 $Z_1=Z_2$ 和横向真空极化。

四、两个实标量：

1. $[g]=1$，$[\lambda]=[\kappa]=[h]=0$。
1. 若只把 $\phi^2\chi$ 作为 relevant cubic，$D=4-E_{\phi}-E_{\chi}-V_g$；cubic 顶角越多，整体发散越弱。
1. 若无对称性，应包括所有维数 $\le4$ 的局域多项式：线性项、二次混合、所有三次项和所有四次项。未被对称性禁止的项一般会由 loop 生成。
1. 修正 $\phi^2\chi^2$ 的单圈图包括两个 quartic 顶点构成的 bubble，以及由两个 cubic 顶点和适当外腿组成的 bubble。
1. $\phi\to-\phi$ 禁止奇数个 $\phi$ 的项；$\phi^2\chi$、$\chi$、$\chi^2$、$\chi^3$、$\phi^2$、$\phi^4$、$\phi^2\chi^2$、$\chi^4$ 仍允许。

## mock exam 10 sol.

一、规范反常：

1. 三角图规范反常群论因子正比于 $d_r^{abc}=\mathrm{Tr}_r(t^a\{t^b,t^c\})$。
1. 实/赝实表示中生成元与其共轭等价，$d^{abc}$ 变号又应相等，故为零。
1. $\mathrm{SU}(2)$ 无局域 $d^{abc}$，但奇数个基本 Weyl 双重态有 Witten 全局反常。
1. 左手基本与反基本的净 anomaly index 必须相消，例如基本数等于反基本数。
1. Standard Model 一代中：$\mathrm{SU}(3)^3$ vector-like 相消；$\mathrm{SU}(2)^3$ 无局域反常且双重态数 $3+1=4$ 为偶数；$\mathrm{SU}(3)^2\mathrm{U}(1)$、$\mathrm{SU}(2)^2\mathrm{U}(1)$、$\mathrm{U}(1)^3$、gravity-$\mathrm{U}(1)$ 都由超荷分配相消。

二、Coleman-Weinberg：

1. 题中公式就是一圈有效势，$(-1)^{F_i}$ 区分玻色/费米，$n_i$ 是自由度。
1. $V_{\mathrm{eff}}$ 离壳依赖规范；Nielsen identity 保证在极值处的物理量规范无关。
1. 量子对数项把无量纲耦合和 $\mu$ 转化为非零标度 $\langle\varphi\rangle$。
1. Coleman-Weinberg 要求树级质量小或为零，标量自耦合与 loop 诱导项同阶，规范耦合常主导生成极小值。

三、OPE：

1. $C_i$ 含短距离可微扰信息，$\langle\mathcal O_i\rangle$ 含长距离非微扰矩阵元。
1. 物理乘积 $\mu$ 无关，所以 $C_i$ 的 running 与 $\mathcal O_i$ 的 anomalous dimension 相消。
1. 若 $\mathcal O_{0,i}=Z_{ij}\mathcal O_j$，则 $\gamma=Z^{-1}\mu dZ/d\mu$，Wilson coefficient 按转置反向矩阵 running。
1. 单位算符给纯微扰项；$m\bar\psi\psi$ 给手征凝聚/质量修正；$F^2$ 给胶子凝聚和 trace anomaly 相关贡献。
1. OPE 是短距离算符恒等式，不等同于固定外态的 S-matrix 展开。

四、红外：

1. soft divergence 来自 $k\to0$ 的无质量规范玻色子相空间和传播子/发射因子奇性。
1. collinear divergence 来自无质量带电粒子沿同方向辐射时中间线接近 on-shell。
1. Bloch-Nordsieck：对不可分辨软辐射求 inclusive 和，实发射与虚修正的 soft 发散相消。
1. KLN 定理：对所有简并初末态求和后，红外安全可观测量中 soft/collinear 发散相消。
1. UV 发散由短距离高动量造成，用局域抵消项重正化；IR 发散来自长距离低能或共线区域，需要 inclusive observable、质量调节或 factorization。

# 完整解答（扩写版）

本节保留前面的速查答案作为闭卷前的提纲；下面把每套题的关键推导、计数和物理解释写成可以直接复习的完整解答。符号约定与题面和 `convention.md` 一致；若整体号依赖于所有动量取入射或取出射的约定，答案只固定不依赖约定的结构。

## mock exam 1 expanded sol.

### 一、标量 QED

1. 在四维中作用量无量纲，所以拉氏量密度的质量量纲为 $4$。由动能项得到

$$\begin{align}
[\partial_\mu]&=1,& [A_\mu]&=1,& [\phi]&=1.
\end{align}$$

协变导数 $D_\mu=\partial_\mu+ie_0A_\mu$ 要求 $[e_0]=0$；势能项 $(\phi^\dagger\phi)^2$ 的量纲为 $4$，所以 $[\lambda_0]=0$，而 $[m_0]=1$。因此所有题面中出现的相互作用维数不超过 $4$。按幂计数，这个理论是可重正理论；真正允许的抵消项还必须服从 $\mathrm{U}(1)$ 规范不变性。

1. 展开标量动能项：

$$\begin{align}
(D_\mu\phi)^\dagger D^\mu\phi &=\partial_\mu\phi^\dagger\partial^\mu\phi +ie_0A_\mu(\partial^\mu\phi^\dagger\phi-\phi^\dagger\partial^\mu\phi) +e_0^2A_\mu A^\mu\phi^\dagger\phi.
\end{align}$$

在协变规范中自由传播子可写成

$$\begin{align}
D_\phi(p)&=\frac{i}{p^2-m^2+i\epsilon},\\
D_{\mu\nu}(p)&=\frac{-i}{p^2+i\epsilon} \left(g_{\mu\nu}-(1-\xi)\frac{p_\mu p_\nu}{p^2+i\epsilon}\right).
\end{align}$$

三点顶角由上式中含一个 $A_\mu$ 的项给出。若约定所有动量流入顶点，并令 $p$、$p'$ 分别为 $\phi$ 和 $\phi^\dagger$ 线的动量，则顶角与

$$\begin{align}
ie_0(p-p')_\mu
\end{align}$$

成正比；换成一入一出的散射约定时常写成 $ie_0(p+p')_\mu$。双光子-双标量顶角由 $e_0^2A^2\phi^\dagger\phi$ 给出，张量结构为 $2ie_0^2g_{\mu\nu}$，若带有外部光子指标 $\mu,\nu$。四标量顶角来自 $-\lambda_0(\phi^\dagger\phi)^2/4$，具体数值因子由外线中 $\phi$、$\phi^\dagger$ 的排列约定决定；重要的是它对应局域算符 $(\phi^\dagger\phi)^2$。

1. 四维标量 QED 的表观发散振幅可以从外线维数判断。非负表观发散度并且满足电荷守恒和 Lorentz 结构的 1PI 振幅包括：

- 标量二点函数 $\phi^\dagger\phi$，对应质量项和波函数项；
- 光子二点函数 $AA$，对应 $F_{\mu\nu}F^{\mu\nu}$ 与规范固定纵向结构；
- 标量-光子三点函数 $A\phi^\dagger\phi$，对应协变导数中的三点相互作用；
- 双光子-双标量函数 $AA\phi^\dagger\phi$，对应协变导数中的 seagull 项；
- 四标量函数 $(\phi^\dagger\phi)^2$，对应标量自耦合。

这些局域抵消项正好可重新组合成

$$\begin{align}
Z_\phi(D_\mu\phi)^\dagger D^\mu\phi -Z_m m^2\phi^\dagger\phi -\frac{Z_A}{4}F_{\mu\nu}F^{\mu\nu} -\frac{Z_\lambda\lambda}{4}(\phi^\dagger\phi)^2
\end{align}$$

加上规范固定项。因此没有必要引入破坏规范不变性的新相互作用。

1. 光子质量项 $m_A^2A_\mu A^\mu/2$ 在

$$\begin{align}
A_\mu\to A_\mu-\frac{1}{e}\partial_\mu\alpha
\end{align}$$

下不是不变量，且不能由 $F_{\mu\nu}$ 写成局域规范不变项，所以不能作为尊重规范对称性的抵消项。标量 QED 的 Ward-Takahashi 恒等式把三点顶角和标量反传播子联系起来：

$$\begin{align}
q_\mu\Gamma^\mu(p+q,p)=e\left[\Delta^{-1}(p+q)-\Delta^{-1}(p)\right],
\end{align}$$

其中 $\Delta$ 是全标量传播子。这个等式表达的是纵向光子插入等价于外线相位变换；它也保证电荷重正化和顶角、波函数重正化不是任意独立的。

### 二、Stueckelberg 有质量 Abelian 场

1. 定义规范不变组合

$$\begin{align}
B_\mu=A_\mu-\frac{1}{m}\partial_\mu\sigma.
\end{align}$$

在变换 $A_\mu\to A_\mu+\partial_\mu\alpha$、$\sigma\to\sigma+m\alpha$ 下，

$$\begin{align}
B_\mu\to A_\mu+\partial_\mu\alpha-\frac{1}{m}\partial_\mu(\sigma+m\alpha)=B_\mu.
\end{align}$$

因此 $F_{\mu\nu}$ 不变，$B_\mu B^\mu$ 也不变，整个 Stueckelberg 拉氏量保持规范不变。

1. 展开质量项并对混合项分部积分：

$$\begin{align}
\frac12m^2\left(A_\mu-\frac1m\partial_\mu\sigma\right)^2 &=\frac12m^2A_\mu A^\mu-mA^\mu\partial_\mu\sigma+\frac12\partial_\mu\sigma\partial^\mu\sigma\\
&=\frac12m^2A_\mu A^\mu+m(\partial_\mu A^\mu)\sigma+\frac12(\partial\sigma)^2
\end{align}$$

忽略边界项。规范固定项

$$\begin{align}
\mathcal L_{\rm gf} &=-\frac{1}{2\xi}(\partial_\mu A^\mu+\xi m\sigma)^2\\
&=-\frac{1}{2\xi}(\partial A)^2-m\sigma\partial_\mu A^\mu-\frac12\xi m^2\sigma^2
\end{align}$$

正好抵消 $m(\partial A)\sigma$。二次作用量于是分解为 $A_\mu$ 与 $\sigma$ 两个独立的 Gaussian 部分。

1. 二次算符反演后得到

$$\begin{align}
D_{\mu\nu}(p) &=\frac{-i}{p^2-m^2+i\epsilon} \left[g_{\mu\nu}-\frac{(1-\xi)p_\mu p_\nu}{p^2-\xi m^2+i\epsilon}\right],\\
D_\sigma(p)&=\frac{i}{p^2-\xi m^2+i\epsilon}.
\end{align}$$

$\xi=1$ 时传播子最简单，称为 Feynman-'t Hooft 型规范：

$$\begin{align}
D_{\mu\nu}(p)=\frac{-ig_{\mu\nu}}{p^2-m^2+i\epsilon},\qquad D_\sigma(p)=\frac{i}{p^2-m^2+i\epsilon}.
\end{align}$$

$\xi\to\infty$ 极限把 Stueckelberg 标量推到无限大规范质量，对应 unitary gauge；此时只显式保留 massive vector 的三个物理极化，但传播子的高能行为较差。

1. 规范固定函数为 $G=\partial_\mu A^\mu+\xi m\sigma$。无穷小规范变换给出

$$\begin{align}
\delta G=\partial^2\alpha+\xi m^2\alpha.
\end{align}$$

所以 Faddeev-Popov 行列式为

$$\begin{align}
\Delta_{\rm FP}=\det(\partial^2+\xi m^2),
\end{align}$$

它不依赖于 $A_\mu$ 或 $\sigma$。若用 ghost 写出，只得到自由 Grassmann 标量

$$\begin{align}
\mathcal L_{\rm gh}=\bar c(\partial^2+\xi m^2)c
\end{align}$$

的高斯积分，因此 Abelian ghost 完全退耦，不出现在相互作用 loop 中。

### 三、Lorenz 规范 Yang-Mills

1. 采用

$$\begin{align}
\delta A_\mu^a=(D_\mu\alpha)^a=\partial_\mu\alpha^a+gf^{acb}A_\mu^c\alpha^b.
\end{align}$$

规范条件 $G^a[A]=\partial_\mu A^{a,\mu}$ 的变分为

$$\begin{align}
\delta G^a(x)=\partial_x^\mu D_\mu^{ab}[A](x)\alpha^b(x).
\end{align}$$

因此 FP 算符的核为

$$\begin{align}
M^{ab}(x,y)=\partial_x^\mu D_\mu^{ab}[A](x)\delta^4(x-y).
\end{align}$$

1. Grassmann 积分表示普通行列式：

$$\begin{align}
\det M=\int D\bar cDc\, \exp\left(i\int d^4x\,\bar c^a\partial^\mu D_\mu^{ab}c^b\right).
\end{align}$$

分部积分后也可写成

$$\begin{align}
\mathcal L_{\rm gh}=\partial_\mu\bar c^a(D^\mu c)^a,
\end{align}$$

两种写法只差总导数和 ghost 排序约定。

1. 加入协变规范固定项后有效拉氏量为

$$\begin{align}
\mathcal L_{\rm eff} =-\frac14F_{\mu\nu}^aF^{a,\mu\nu} -\frac{1}{2\xi}(\partial_\mu A^{a,\mu})^2 +\partial_\mu\bar c^a(D^\mu c)^a.
\end{align}$$

第一项给三胶子和四胶子顶角；第二项使规范场二次型可逆；第三项给 ghost 传播子和 ghost-gluon 顶角。

1. 引入辅助场 $B^a$ 时，BRST 变换可取

$$\begin{align}
sA_\mu^a&=(D_\mu c)^a,& sc^a&=-\frac{g}{2}f^{abc}c^bc^c,& s\bar c^a&=B^a,& sB^a&=0.
\end{align}$$

对 ghost，

$$\begin{align}
s^2c^a =-\frac{g}{2}f^{abc}\left[(sc^b)c^c-c^b(sc^c)\right],
\end{align}$$

代入 $sc$ 后得到三个 ghost 的反对称组合，系数正比于 Jacobi 恒等式

$$\begin{align}
f^{abe}f^{ecd}+f^{bce}f^{ead}+f^{cae}f^{ebd}=0,
\end{align}$$

所以 $s^2c=0$。对规范场，

$$\begin{align}
s^2A_\mu=D_\mu(sc)+g[sA_\mu,c],
\end{align}$$

代入 $sc=-\frac g2[c,c]$ 并使用协变导数的 Leibniz 规则，同样由 Jacobi 恒等式得到 $s^2A_\mu=0$。这个 nilpotency 是 Slavnov-Taylor 恒等式的代数来源。

### 四、Yukawa 理论

1. 四维中

$$\begin{align}
[\phi]&=1,& [\psi]&=\frac32.
\end{align}$$

因此

$$\begin{align}
[\phi\bar\psi\psi]&=1+3=4,& [\phi^4]&=4,
\end{align}$$

所以 $[y]=[\lambda]=0$。质量项是 relevant，Yukawa 和四标量项是 marginal；按幂计数理论可重正。

1. 令 $I_\phi,I_\psi$ 为内标量线和内费米子线数，$V_y,V_\lambda$ 为 Yukawa 和四标量顶点数。表观发散度为

$$\begin{align}
D=4L-2I_\phi-I_\psi.
\end{align}$$

拓扑关系为

$$\begin{align}
L&=I_\phi+I_\psi-V_y-V_\lambda+1,\\
4V_\lambda+V_y&=2I_\phi+E_\phi,\\
2V_y&=2I_\psi+E_\psi.
\end{align}$$

消去内部线和顶点后得到

$$\begin{align}
D=4-E_\phi-\frac32E_\psi.
\end{align}$$

所以非真空表观发散振幅包括纯标量 $E_\phi=1,2,3,4$，费米子二点 $E_\psi=2$，以及 Yukawa 顶角 $E_\phi=1,E_\psi=2$。实际是否出现还要受离散对称性限制。

1. 单圈修正 $\phi^4$ 的图至少包括：两个 $\phi^4$ 顶点构成的 scalar bubble；四个 Yukawa 顶点构成的费米子 box；以及若存在三标量或其他允许顶点时由它们组合出的 bubble/triangle。即使树级令 $\lambda=0$，只要 Yukawa 相互作用存在并且 $\phi^4$ 不被对称性禁止，费米子 box 的 UV 发散就会生成局域四标量结构。因此重正化封闭性要求把 $\phi^4$ 抵消项纳入拉氏量。

1. 在变换

$$\begin{align}
\phi\to-\phi,\qquad \psi\to\gamma_5\psi
\end{align}$$

下，由 $\bar\psi\to-\bar\psi\gamma_5$ 可得

$$\begin{align}
\bar\psi\psi\to-\bar\psi\psi,\qquad \phi\bar\psi\psi\to \phi\bar\psi\psi.
\end{align}$$

所以 Yukawa 项允许，而 Dirac 质量项 $M\bar\psi\psi$ 被禁止。纯标量中奇数个 $\phi$ 的局域项如 $\phi$、$\phi^3$ 被禁止；偶数项如 $\phi^2$、$(\partial\phi)^2$、$\phi^4$ 允许。费米子动能项保持不变。

## mock exam 2 expanded sol.

### 一、$\mathrm{SU}(3)$ 基本表示 Higgs

1. 势能只依赖 $\phi^\dagger\phi$：

$$\begin{align}
V(r)=-\mu^2r+\lambda r^2,\qquad r=\phi^\dagger\phi.
\end{align}$$

极小值满足

$$\begin{align}
\frac{dV}{dr}=-\mu^2+2\lambda r=0 \quad\Rightarrow\quad r=\frac{\mu^2}{2\lambda}.
\end{align}$$

若写 $\langle\phi\rangle=(0,0,v/\sqrt2)^T$，则

$$\begin{align}
v^2=\frac{\mu^2}{\lambda}.
\end{align}$$

任意非零复三向量都可由 $\mathrm{SU}(3)$ 变换旋到第三个基向量方向；剩余相位也可用对角生成元调整，因此可取题面中的真空形式。

1. 未破缺子群由

$$\begin{align}
U\begin{pmatrix}0\\
0\\
v/\sqrt2\end{pmatrix}
=\begin{pmatrix}0\\
0\\
v/\sqrt2\end{pmatrix}
\end{align}$$

定义。满足这个条件的 $U$ 只在前两个分量上作 $\mathrm{SU}(2)$ 旋转，并保持第三分量不变。因此

$$\begin{align}
\mathrm{SU}(3)\longrightarrow\mathrm{SU}(2).
\end{align}$$

破缺生成元数为

$$\begin{align}
\dim\mathrm{SU}(3)-\dim\mathrm{SU}(2)=8-3=5.
\end{align}$$

在 Gell-Mann 基中，$t^{1,2,3}$ 未破缺，$t^{4,5,6,7,8}$ 破缺。

1. 质量项来自

$$\begin{align}
(D_\mu\langle\phi\rangle)^\dagger(D^\mu\langle\phi\rangle) =g^2A_\mu^aA^{b,\mu}
\langle\phi\rangle^\dagger t^at^b\langle\phi\rangle.
\end{align}$$

把规范场质量项写成 $\frac12A_\mu^a(M_A^2)_{ab}A^{b,\mu}$，得到

$$\begin{align}
(M_A^2)_{ab}=g^2\langle\phi\rangle^\dagger\{t^a,t^b\}\langle\phi\rangle.
\end{align}$$

代入 $\langle\phi\rangle=(0,0,v/\sqrt2)^T$ 和 $t^a=\lambda^a/2$，质量本征值为

$$\begin{align}
M_{1,2,3}^2&=0,& M_{4,5,6,7}^2&=\frac{g^2v^2}{4},& M_8^2&=\frac{g^2v^2}{3}.
\end{align}$$

前三个无质量规范玻色子生成未破缺的 $\mathrm{SU}(2)$；其余五个规范玻色子获得质量。

1. 复三重态共有 $6$ 个实自由度。真空破缺 $5$ 个生成元，因此有 $5$ 个 Goldstone 方向，分别沿 $t^a\langle\phi\rangle$ 的破缺方向。这 $5$ 个 Goldstone 在 Higgs 机制中被 $5$ 个 massive gauge boson 吃掉，使它们每个从两个横向极化变成三个 massive 极化。剩下的 $1$ 个实自由度是径向 Higgs 模式。

### 二、破缺相中的 $R_\xi$ 规范

1. 写 $\phi=\langle\phi\rangle+\eta$。标量动能项中含有

$$\begin{align}
\mathcal L_{\rm mix}\sim
gA_\mu^a\left[(t^a\langle\phi\rangle)^\dagger\partial^\mu\eta +(\partial^\mu\eta)^\dagger t^a\langle\phi\rangle\right],
\end{align}$$

分部积分后是 $(\partial_\mu A^{a,\mu})$ 与 Goldstone 坐标的混合。$R_\xi$ 规范选择

$$\begin{align}
G^a=\partial_\mu A^{a,\mu}-\xi\,\mathcal M^a_i\chi^i,
\end{align}$$

其中 $\chi^i$ 是沿破缺方向的 Goldstone 坐标，$\mathcal M^a_i$ 由 $g\,t^a\langle\phi\rangle$ 给出。等价地，可写成题目速查中的复标量形式

$$\begin{align}
G^a=\partial_\mu A^{a,\mu} -\xi g\left[(t^a\langle\phi\rangle)^\dagger\eta+\eta^\dagger t^a\langle\phi\rangle\right]_{\rm Goldstone},
\end{align}$$

其目的就是抵消 $A_\mu$-Goldstone 的二次混合。

1. 规范固定项为

$$\begin{align}
\mathcal L_{\rm gf}=-\frac{1}{2\xi}G^aG^a.
\end{align}$$

对应的 Faddeev-Popov 行列式由规范固定函数对无穷小规范参数的变分定义：

$$\begin{align}
\Delta_{\rm FP}=\det M,\qquad M^{ab}(x,y)=\frac{\delta G^a(x)}{\delta\alpha^b(y)}\bigg|_{\alpha=0}.
\end{align}$$

把 $\det M$ 写成 ghost 积分即可得到 ghost 拉氏量。与未破缺相不同，$G^a$ 中含有真空期望值，所以破缺方向的 ghost 二次项会含质量。

1. 在对角化规范玻色子质量矩阵的基中，破缺方向满足

$$\begin{align}
m_{c^a}^2=\xi M_{A^a}^2,
\end{align}$$

也就是 ghost 的规范质量与对应 Goldstone 相同。未破缺 $\mathrm{SU}(2)$ 方向的 $M_{A^a}=0$，因此对应 ghost 无质量；它们仍与未破缺非 Abelian 规范场相互作用。

1. 对任一破缺方向的 massive gauge boson，$R_\xi$ 传播子为

$$\begin{align}
D_{\mu\nu}(p)= \frac{-i}{p^2-M_A^2+i\epsilon} \left[g_{\mu\nu} -\frac{(1-\xi)p_\mu p_\nu}{p^2-\xi M_A^2+i\epsilon}\right].
\end{align}$$

横向物理极点在 $p^2=M_A^2$；纵向规范依赖极点在 $p^2=\xi M_A^2$，它与 Goldstone 和 ghost 的贡献一起在物理量中相消。

### 三、QED Ward 恒等式

1. 全费米子传播子写为

$$\begin{align}
S(p)=\frac{i}{\slashed p-m-\Sigma(p)+i\epsilon}, \qquad S^{-1}(p)=\slashed p-m-\Sigma(p).
\end{align}$$

光子二点 1PI 振幅定义为 $i\Pi^{\mu\nu}(q)$，它修正光子反传播子。电子-光子三点 1PI 顶角可写为 $ie\Gamma^\mu(p',p)$，树级时 $\Gamma^\mu=\gamma^\mu$。

1. 矢量规范不变性给出 Ward-Takahashi 恒等式

$$\begin{align}
q_\mu\Gamma^\mu(p+q,p)=S^{-1}(p+q)-S^{-1}(p).
\end{align}$$

直观上，纵向光子插入等价于对带电外线做相位变换，因此只留下两端反传播子的差。

1. 令 $q\to0$，右边展开为

$$\begin{align}
S^{-1}(p+q)-S^{-1}(p) =q_\mu\frac{\partial S^{-1}(p)}{\partial p_\mu}+O(q^2),
\end{align}$$

所以

$$\begin{align}
\Gamma^\mu(p,p)=\frac{\partial S^{-1}(p)}{\partial p_\mu}.
\end{align}$$

这个关系说明顶角修正的 UV 发散等于费米子波函数修正的 UV 发散。若写 $e_0=Z_1Z_2^{-1}Z_3^{-1/2}e$，则 Ward 恒等式给出

$$\begin{align}
Z_1=Z_2.
\end{align}$$

1. 规范不变性还要求光子二点函数横向：

$$\begin{align}
q_\mu\Pi^{\mu\nu}(q)=0.
\end{align}$$

Lorentz 协变性于是给出

$$\begin{align}
\Pi^{\mu\nu}(q)=\left(q^2g^{\mu\nu}-q^\mu q^\nu\right)\Pi(q^2).
\end{align}$$

如果出现 $g^{\mu\nu}$ 但没有相应的 $q^2g^{\mu\nu}-q^\mu q^\nu$ 组合，就等价于生成光子质量项，违反 Ward 恒等式。

### 四、非 Abelian beta 函数

1. 表示 $r$ 中生成元归一化定义为

$$\begin{align}
\mathrm{Tr}_r(t^at^b)=T(r)\delta^{ab}.
\end{align}$$

伴随表示二次 Casimir 定义为

$$\begin{align}
f^{acd}f^{bcd}=C_2(G)\delta^{ab}.
\end{align}$$

对 $\mathrm{SU}(N)$ 基本表示，常用归一化给出

$$\begin{align}
T(F)=\frac12,\qquad C_2(G)=N.
\end{align}$$

1. 记

$$\begin{align}
\beta_0=\frac{11}{3}C_2(G)-\frac43T(r)n_f.
\end{align}$$

一圈重正化群方程为

$$\begin{align}
\mu\frac{dg}{d\mu}=-\frac{\beta_0}{16\pi^2}g^3.
\end{align}$$

分离变量：

$$\begin{align}
\int_{g(\mu_0)}^{g(\mu)}\frac{dg}{g^3} =-\frac{\beta_0}{16\pi^2}\int_{\mu_0}^{\mu}\frac{d\mu'}{\mu'}.
\end{align}$$

得到

$$\begin{align}
\frac{1}{g^2(\mu)} =\frac{1}{g^2(\mu_0)} +\frac{\beta_0}{8\pi^2}\log\frac{\mu}{\mu_0}.
\end{align}$$

若 $\beta_0>0$，能标升高时 $g(\mu)$ 变小。

1. 渐近自由的条件正是

$$\begin{align}
\beta_0>0 \quad\Longleftrightarrow\quad \frac{11}{3}C_2(G)>\frac43T(r)n_f.
\end{align}$$

这表示规范玻色子反屏蔽贡献超过费米子屏蔽贡献。

1. 对 $\mathrm{SU}(2)$ 伴随费米子，$T(\mathrm{adj})=C_2(G)=2$。于是

$$\begin{align}
\beta_0=\frac{11}{3}\cdot2-\frac43\cdot2\,n_f =\frac{22-8n_f}{3}.
\end{align}$$

渐近自由要求 $22-8n_f>0$，即

$$\begin{align}
n_f<\frac{11}{4}.
\end{align}$$

若 $n_f$ 是 Dirac 味数的非负整数，则允许 $n_f=0,1,2$。

1. 非 Abelian 理论中同一个裸耦合 $g_0$ 可从不同顶角定义。若

$$\begin{align}
A_0=Z_3^{1/2}A,\qquad c_0=(Z_3^c)^{1/2}c,\qquad \psi_0=Z_2^{1/2}\psi,
\end{align}$$

则顶角重正化常数给出

$$\begin{align}
Z_g=Z_1Z_2^{-1}Z_3^{-1/2} =Z_1^c(Z_3^c)^{-1}Z_3^{-1/2} =Z_1^{3g}Z_3^{-3/2}.
\end{align}$$

这些关系不是普通全局对称性给出的，而是 BRST/Slavnov-Taylor 恒等式保证的。它们确保从 ghost-gluon、三胶子或 matter-gauge 顶角抽出的耦合常数 running 相同。

## mock exam 3 expanded sol.

### 一、电弱型 Higgs 机制

1. 势能

$$\begin{align}
V(H)=-\mu^2H^\dagger H+\lambda(H^\dagger H)^2
\end{align}$$

的极小值满足

$$\begin{align}
H^\dagger H=\frac{\mu^2}{2\lambda}.
\end{align}$$

写

$$\begin{align}
\langle H\rangle=\frac{1}{\sqrt2}\begin{pmatrix}0\\
v\end{pmatrix},
\end{align}$$

则 $v^2=\mu^2/\lambda$。规范群 $\mathrm{SU}(2)_L\times\mathrm{U}(1)_Y$ 可把一般非零真空旋到下分量方向，并吸收 Goldstone 模式；unitary gauge 中

$$\begin{align}
H=\frac{1}{\sqrt2}\begin{pmatrix}0\\
v+h\end{pmatrix}.
\end{align}$$

1. 质量项来自

$$\begin{align}
(D_\mu\langle H\rangle)^\dagger D^\mu\langle H\rangle.
\end{align}$$

带电组合定义为

$$\begin{align}
W_\mu^\pm=\frac{W_\mu^1\mp iW_\mu^2}{\sqrt2},
\end{align}$$

对应质量为

$$\begin{align}
m_W^2=\frac{g^2v^2}{4}.
\end{align}$$

中性规范场 $(W_\mu^3,B_\mu)$ 的质量矩阵为

$$\begin{align}
\frac{v^2}{4}
\begin{pmatrix}
g^2&-gg'\\
-gg'&g'^2
\end{pmatrix}.
\end{align}$$

其本征值是 $0$ 和 $(g^2+g'^2)v^2/4$。定义

$$\begin{align}
\tan\theta_W=\frac{g'}{g},
\end{align}$$

则

$$\begin{align}
Z_\mu&=\cos\theta_W W_\mu^3-\sin\theta_W B_\mu,\\
A_\mu&=\sin\theta_W W_\mu^3+\cos\theta_W B_\mu,
\end{align}$$

并且

$$\begin{align}
m_Z^2=\frac{(g^2+g'^2)v^2}{4},\qquad m_\gamma^2=0.
\end{align}$$

1. 对 Higgs 下分量，$T^3=-1/2$，而 $Y=1/2$，所以

$$\begin{align}
Q\langle H\rangle=(T^3+Y)\langle H\rangle=0.
\end{align}$$

因此未破缺生成元是电荷

$$\begin{align}
Q=T^3+Y,
\end{align}$$

未破缺规范群为 $\mathrm{U}(1)_{\rm em}$，对应无质量规范玻色子是光子。

1. $R_\xi$ 规范把 Goldstone 与相应规范玻色子的混合抵消。带电 Goldstone $G^\pm$ 与 $W^\pm$ 配对，中性 Goldstone $G^0$ 与 $Z$ 配对。因此

$$\begin{align}
m_{G^\pm}^2&=\xi m_W^2,& m_{c^\pm}^2&=\xi m_W^2,\\
m_{G^0}^2&=\xi m_Z^2,& m_{c_Z}^2&=\xi m_Z^2.
\end{align}$$

电磁方向未破缺，光子 ghost 无质量；在纯 Abelian 电磁部分它退耦。

### 二、$\mathrm{U}(1)_X$ 手征反常

1. 对左手 Weyl 费米子集合，$\mathrm{U}(1)_X^3$ 三角图反常系数正比于

$$\begin{align}
\mathcal A_{XXX}\propto \sum_i q_i^3.
\end{align}$$

规范一致性要求这个和为零。

1. 引力-$\mathrm{U}(1)_X$ 混合反常中两个外线是引力场，一个外线是 $X$ 规范场，其系数正比于

$$\begin{align}
\mathcal A_{\rm grav^2-X}\propto \sum_i q_i.
\end{align}$$

因此也要求所有左手 Weyl 荷的线性和为零。

1. 对 $\{1,1,1,-3\}$，

$$\begin{align}
\sum_iq_i=1+1+1-3=0,
\end{align}$$

但

$$\begin{align}
\sum_iq_i^3=1+1+1-27=-24\ne0.
\end{align}$$

所以它消掉了引力混合反常，却没有消掉三规范反常；该电荷集合不是反常自由的规范理论。

1. 一个 vector-like Dirac 费米子若左右手分量都带同样电荷 $q$，用左手 Weyl 语言计数时，右手场等价于左手反粒子场，荷为 $-q$。于是同一 Dirac 费米子贡献

$$\begin{align}
q+(-q)=0,\qquad q^3+(-q)^3=0.
\end{align}$$

这就是 vector-like 理论规范反常相消的原因。

1. 若规范反常不相消，量子有效作用不再满足规范 Ward 恒等式。后果包括：纵向规范自由度不能从物理振幅中一致退耦；BRST 对称性失效，物理 Hilbert 空间的定义受破坏；需要的反常项不是可由规范不变局域抵消项消去的普通 UV 发散。因此反常的手征规范理论通常失去幺正性和可重正性。

### 三、BPHZ 重正化

1. UV 发散来自 loop 动量远大于外动量的区域。在这个区域，发散部分作为外动量函数是多项式，也就是位置空间中的局域分布。因此 BPHZ 减除对 1PI 图的 integrand 按外动量在某个减除点做 Taylor 展开，并减去次数不超过表观发散度 $D(\Gamma)$ 的 Taylor 多项式。

1. 两点函数若 $D=2$，局域多项式最多二次依赖外动量。对标量两点函数可出现

$$\begin{align}
a+b\,p^2,
\end{align}$$

分别对应质量抵消项和波函数抵消项。对规范场两点函数，局域张量还要满足 Ward/ST 约束，最后应组织成 $F_{\mu\nu}F^{\mu\nu}$、规范固定项和允许的质量结构；未破缺规范对称性会禁止真正的规范玻色子质量项。

1. 四点函数若 $D=0$，只需减去外动量零次 Taylor 项，即常数局域项。位置空间中它对应无导数四场算符，例如 $\phi^4$、$(\phi^\dagger\phi)^2$ 或四费米算符，具体形式由场内容和对称性决定。

1. 表观收敛只说明整个图的总 loop 动量同时变大时没有整体 UV 发散。图中某个真子图的内部 loop 动量可以先变大并产生发散子图。BPHZ 的 forest formula 正是同时减去所有发散子图及其嵌套结构，避免只看整体表观发散度而漏掉 subdivergence。

### 四、$\theta$ 项

1. 用矩阵记号 $F_{\mu\nu}=F_{\mu\nu}^at^a$，拓扑密度满足

$$\begin{align}
\mathrm{Tr}\,F_{\mu\nu}\widetilde F^{\mu\nu} =\partial_\mu K^\mu,
\end{align}$$

其中 Chern-Simons 流可写为

$$\begin{align}
K^\mu=\epsilon^{\mu\nu\rho\sigma} \mathrm{Tr}\left(A_\nu\partial_\rho A_\sigma-\frac{2ig}{3}A_\nu A_\rho A_\sigma\right)
\end{align}$$

在相应的 $D_\mu=\partial_\mu-igA_\mu$ 约定下成立；整体归一化随 $F$ 和 $t^a$ 的定义而变。关键点是 $F\widetilde F$ 是全导数。

1. 变分 $\int F\widetilde F$ 得到边界项，微扰真空附近若场在无穷远衰减足够快，它不改变局域 Euler-Lagrange 方程。因此 $\theta$ 项不改变微扰传播子和普通顶角的经典运动方程。

1. 非 Abelian 规范场存在不同拓扑数的场构型：

$$\begin{align}
Q=\frac{g^2}{32\pi^2}\int d^4x\,F_{\mu\nu}^a\widetilde F^{a,\mu\nu}\in\mathbb Z
\end{align}$$

对于适当边界条件成立。路径积分中每个拓扑扇区带权重 $e^{i\theta Q}$。大规范变换可改变 Chern-Simons 数，因而 $\theta$ 不能简单丢弃；同时 $Q$ 为整数使 $\theta$ 具有 $2\pi$ 周期。

1. 在 Minkowski 语言中

$$\begin{align}
F_{\mu\nu}^a\widetilde F^{a,\mu\nu}\propto \vec E^a\cdot\vec B^a.
\end{align}$$

宇称 $P$ 下 $\vec E$ 变号而 $\vec B$ 不变，所以 $\vec E\cdot\vec B$ 为 $P$ 奇。电荷共轭使非 Abelian 场强整体变到共轭表示，色指标收缩后 $F\widetilde F$ 的 $C$ 性质为偶；因此它在 $CP$ 下为奇。非零 $\theta$ 一般破坏 $P$ 和 $CP$。

1. 对带复质量矩阵的手征费米子，轴向手征旋转可以把质量项相位移入费米子测度的反常 Jacobian，从而平移 $\theta$。不变量不是裸的 $\theta$，而是

$$\begin{align}
\bar\theta=\theta+\arg\det M_q
\end{align}$$

或相差一个约定相关的符号。这个组合控制强 CP 破坏。

## mock exam 4 expanded sol.

### 一、背景场规范

1. 背景场方法把完整规范场分解为

$$\begin{align}
A_\mu=\bar A_\mu+Q_\mu.
\end{align}$$

在背景规范变换下，完整场仍按规范场变换，而量子涨落按伴随张量变换：

$$\begin{align}
\bar A_\mu&\to U\bar A_\mu U^\dagger+\frac{i}{g}U\partial_\mu U^\dagger,\\
Q_\mu&\to UQ_\mu U^\dagger.
\end{align}$$

无穷小地说，$\delta\bar A_\mu=(\bar D_\mu\alpha)$，而 $\delta Q_\mu=i[\alpha,Q_\mu]$。这样 $\bar D^\mu Q_\mu$ 也按伴随表示协变变换。

1. 规范固定函数为

$$\begin{align}
G^a[\bar A,Q]=(\bar D^\mu Q_\mu)^a.
\end{align}$$

FP 算符要对 quantum gauge transformation 求变分，即保持 $\bar A$ 固定，让 $Q$ 以使 $\bar A+Q$ 作完整规范变换的方式变化：

$$\begin{align}
\delta Q_\mu^a=(D_\mu[\bar A+Q]\alpha)^a.
\end{align}$$

因此

$$\begin{align}
M^{ab}=\bar D_\mu^{ac}D^{\mu,cb}[\bar A+Q].
\end{align}$$

ghost 作用量就是 $\bar c^aM^{ab}c^b$。

1. 展开 Yang-Mills 作用到 $Q$ 的二次阶，结构为

$$\begin{align}
S^{(2)}\sim \frac12\int Q_\mu^a \left[-\bar D^2g^{\mu\nu}-2gf^{acb}\bar F^{c,\mu\nu} +\left(1-\frac1\xi\right)\bar D^\mu\bar D^\nu \right]^{ab}Q_\nu^b.
\end{align}$$

它只由 $\bar D$、$\bar F$ 和群结构常数组成，所以在背景规范变换下协变。由此得到的背景有效作用 $\Gamma[\bar A]$ 可以保持显式背景规范不变。

1. 背景 Ward 恒等式给出

$$\begin{align}
Z_gZ_{\bar A}^{1/2}=1.
\end{align}$$

这表示背景场-规范耦合组合 $g\bar A_\mu$ 不被独立重正化。于是只要计算背景场二点函数中 $F_{\mu\nu}F^{\mu\nu}$ 的发散项，就能直接抽取 $Z_{\bar A}$，进而得到 $Z_g$。

1. 普通规范下 beta 函数可能需要比较三胶子、ghost-gluon 或 quark-gluon 顶角。背景场方法把这个任务化简为背景二点函数计算，同时维持显式背景规范不变性，使反常维数和耦合重正化的关系更直接。因此它特别适合一圈和高圈 beta 函数计算。

### 二、Wilson loop

1. 开 Wilson 线

$$\begin{align}
U_\Gamma(x,y)=P\exp\left(ig\int_y^xdz^\mu A_\mu(z)\right)
\end{align}$$

在局域规范变换下满足

$$\begin{align}
U_\Gamma(x,y)\to \Omega(x)U_\Gamma(x,y)\Omega^\dagger(y).
\end{align}$$

若路径闭合，$x=y$，则

$$\begin{align}
\mathrm{Tr}\,U_\Gamma(x,x)\to \mathrm{Tr}\left[\Omega(x)U_\Gamma(x,x)\Omega^\dagger(x)\right] =\mathrm{Tr}\,U_\Gamma(x,x).
\end{align}$$

所以闭合 Wilson loop 是规范不变的。

1. 对空间长度 $R$、时间长度 $T$ 的矩形回路，在大 $T$ 极限中，路径积分投影到含一对静态重源的最低能态：

$$\begin{align}
\langle W(R,T)\rangle\sim e^{-T V(R)}
\end{align}$$

在欧氏时间中成立。因此静态势为

$$\begin{align}
V(R)=-\lim_{T\to\infty}\frac{1}{T}\log\langle W(R,T)\rangle.
\end{align}$$

1. 若 Wilson loop 满足面积律

$$\begin{align}
\langle W(R,T)\rangle\sim e^{-\sigma RT},
\end{align}$$

代入上式得到

$$\begin{align}
V(R)=\sigma R.
\end{align}$$

这就是线性禁闭势，$\sigma$ 称为 string tension。

1. 周长律形如

$$\begin{align}
\langle W(C)\rangle\sim e^{-\mu\,{\rm Perimeter}(C)}.
\end{align}$$

对矩形回路，它不会给出随 $R$ 线性增长的势能。物理上这通常表示电荷被屏蔽，或处于弱耦合 Coulomb 相/Higgs 相，而不是具有稳定色通量管的禁闭相。

1. 开 Wilson 线本身在端点带规范变换矩阵，不能单独取 trace 成为局域规范不变量。但可以用物质场补偿端点变换：

$$\begin{align}
\bar\psi(x)U_\Gamma(x,y)\psi(y).
\end{align}$$

其中 $\bar\psi(x)\to\bar\psi(x)\Omega^\dagger(x)$、$\psi(y)\to\Omega(y)\psi(y)$，正好与 Wilson 线端点因子相消。

### 三、Pauli 项 QED EFT

1. 四维中 $[\psi]=3/2$，$[F_{\mu\nu}]=2$。因此

$$\begin{align}
[\bar\psi\sigma^{\mu\nu}\psi F_{\mu\nu}] =3+2=5.
\end{align}$$

系数 $c_\sigma/\Lambda$ 的质量量纲为 $-1$。若把它作为基本理论中的任意高能相互作用，按幂计数不可重正；但作为 EFT，它是在固定阶数 $1/\Lambda$ 展开中的合法算符。

1. 需要检查的不是单独的 $\sigma^{\mu\nu}$，而是整个双线性与场强的组合。可分解为磁偶极型

$$\begin{align}
\bar\psi\sigma^{ij}\psi F_{ij}\sim \bar\psi\vec\Sigma\psi\cdot\vec B
\end{align}$$

和电偶极型

$$\begin{align}
\bar\psi\sigma^{0i}\psi F_{0i}\sim \bar\psi\vec\alpha\psi\cdot\vec E.
\end{align}$$

若加入 $\gamma_5$，则对应电偶极矩结构，具有不同的 $P,T,CP$ 性质。考试中应说明要同时变换费米子双线性和 $\vec E,\vec B$。

1. 插入一次 Pauli 顶点相当于在图中加入一个维数五算符。相对于维数四相互作用，它使表观发散度提高 $1$：

$$\begin{align}
D_{\rm with\ Pauli}=D_{\rm QED}+1
\end{align}$$

对一次插入的振幅而言。这意味着到 $1/\Lambda$ 阶，需要准备所有同量纲、同量子数的局域抵消项，而不是只重正化原来的 Pauli 系数。

1. 到 $1/\Lambda$ 阶，抵消项必须是规范不变、Lorentz 不变、维数五且与所考虑离散对称性一致的算符。例如 Pauli 型磁矩/电矩算符、含协变导数的费米子双线性算符、以及可用运动方程化简的冗余算符。EOM 等价算符可以通过场重定义移除，但在建立完整算符基时要先识别它们。

1. EFT 的“不可重正”是指若要求所有能标上精确有效，需要无限多高维算符；它不等于“不可预测”。在给定精度 $E^n/\Lambda^n$ 下，只需有限多个 Wilson 系数。把这些系数由实验或匹配确定后，EFT 对低能过程仍给出系统、可改进的预测。

### 四、Callan-Symanzik 方程

1. 裸格林函数不依赖重正化尺度：

$$\begin{align}
\mu\frac{d}{d\mu}G_0^{(n)}=0.
\end{align}$$

若 $G_0^{(n)}=Z_\Phi^{n/2}G_R^{(n)}$，且参数为 $g,m,\mu$，则可写成

$$\begin{align}
\left(\mu\frac{\partial}{\partial\mu} +\beta(g)\frac{\partial}{\partial g} -\gamma_m m\frac{\partial}{\partial m} +n\gamma_\Phi\right)G_R^{(n)}=0.
\end{align}$$

这里 $\gamma_m$ 的符号取决于定义；若定义 $\gamma_m=-\mu d\log m/d\mu$，则上式中出现 $-\gamma_m m\partial_m$。

1. $\beta(g)$ 来自耦合重正化，例如 $g_0=\mu^\epsilon Z_g g$。质量反常维数来自 $m_0=Z_mm$ 或质量矩阵的重正化。场反常维数来自 $\Phi_0=Z_\Phi^{1/2}\Phi$，常用定义为

$$\begin{align}
\gamma_\Phi=\frac12\mu\frac{d}{d\mu}\log Z_\Phi.
\end{align}$$

1. 标量质量项 $\frac12m^2\phi^2$ 中算符 $\phi^2$ 的经典维数为 $2$，小于时空维数 $4$。因此它的系数 $m^2$ 具有正质量量纲，在 RG 向红外流动时相对无量纲耦合更重要，是 relevant deformation。临界点附近若要保持长程关联，必须精细调节这个 relevant 参数。

1. fixed point 附近 $\beta(g_\ast)=0$，算符标度维数不只是经典维数，而是

$$\begin{align}
\Delta=\Delta_{\rm canonical}+\gamma_\ast.
\end{align}$$

两点函数和临界指数由总标度维数决定，因此 anomalous dimension 会改变幂律衰减和临界行为。

1. QCD 的无量纲耦合满足

$$\begin{align}
\frac{1}{g^2(\mu)} =\frac{\beta_0}{8\pi^2}\log\frac{\mu}{\Lambda_{\rm QCD}}
\end{align}$$

在一圈近似下成立。原来没有质量尺度的经典 Yang-Mills 理论，通过 running coupling 引入了 RG 不变量 $\Lambda_{\rm QCD}$。这就是 dimensional transmutation。

## mock exam 5 expanded sol.

### 一、两个 Abelian 规范场的 kinetic mixing

1. 两个 Abelian 场强分别为

$$\begin{align}
F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu,\qquad X_{\mu\nu}=\partial_\mu X_\nu-\partial_\nu X_\mu.
\end{align}$$

在 $A_\mu\to A_\mu+\partial_\mu\alpha$、$X_\mu\to X_\mu+\partial_\mu\beta$ 下，$F_{\mu\nu}$ 和 $X_{\mu\nu}$ 都不变。因此

$$\begin{align}
F_{\mu\nu}X^{\mu\nu}
\end{align}$$

是 $\mathrm{U}(1)\times\mathrm{U}(1)$ 规范不变量。

1. 取场重定义

$$\begin{align}
A_\mu=A'_\mu-\epsilon X'_\mu,\qquad X_\mu=X'_\mu.
\end{align}$$

代入动能项，交叉项相消：

$$\begin{align}
-\frac14F^2-\frac14X^2-\frac{\epsilon}{2}FX =-\frac14F'^2-\frac14(1-\epsilon^2)X'^2.
\end{align}$$

再令 $X'_\mu=X''_\mu/\sqrt{1-\epsilon^2}$ 使暗光子动能正则归一。物质耦合变为

$$\begin{align}
-e\bar\psi\gamma^\mu A_\mu\psi =-e\bar\psi\gamma^\mu A'_\mu\psi +\epsilon e\bar\psi\gamma^\mu X'_\mu\psi.
\end{align}$$

重标定后，普通带电粒子对正则归一暗光子的有效耦合为 $\epsilon e/\sqrt{1-\epsilon^2}$，小 $\epsilon$ 时约为 $\epsilon e$。

1. 若 $X_\mu$ 通过 Stueckelberg 机制获得质量，规范不变质量项是

$$\begin{align}
\frac12m_X^2\left(X_\mu-\frac1{m_X}\partial_\mu\sigma\right)^2,
\end{align}$$

并配合

$$\begin{align}
X_\mu\to X_\mu+\partial_\mu\beta,\qquad \sigma\to\sigma+m_X\beta.
\end{align}$$

组合 $X_\mu-m_X^{-1}\partial_\mu\sigma$ 是规范不变的。

1. kinetic mixing 被所有规范对称性允许，因此对称性不禁止 $\epsilon$ 的重正化。若存在同时带普通 $\mathrm{U}(1)$ 与暗 $\mathrm{U}(1)$ 电荷的重粒子，积分掉它们通常会在 loop 中生成 $F_{\mu\nu}X^{\mu\nu}$。若没有双带电场，$\epsilon$ 可以在某些方案中只作平凡 running，但它仍是允许的 EFT 参数。

1. 单个 Abelian Higgs 模型中，一个复标量提供一个 Goldstone 和一个径向 Higgs；Goldstone 被 massive vector 吃掉，径向 Higgs 留在谱中。Stueckelberg 质量只引入一个被吃掉的标量，没有额外径向物理标量。kinetic mixing 本身不改变自由度数，只改变规范场基和物质耦合。

### 二、非 Abelian 颜色流与协变守恒

1. 对

$$\begin{align}
\mathcal L_\psi=\bar\psi i\gamma^\mu D_\mu\psi,\qquad D_\mu=\partial_\mu-igA_\mu^at^a,
\end{align}$$

相互作用项为

$$\begin{align}
g\bar\psi\gamma^\mu A_\mu^at^a\psi.
\end{align}$$

对 $A_\mu^a$ 变分得到颜色流

$$\begin{align}
J^{a,\mu}=g\bar\psi\gamma^\mu t^a\psi
\end{align}$$

在这个规范耦合归一化下成立。若把 $g$ 吸收到 $J$ 的定义中，则公式相应少一个 $g$。

1. 规范场方程为

$$\begin{align}
(D_\mu F^{\mu\nu})^a=J^{a,\nu}.
\end{align}$$

再作用 $D_\nu$：

$$\begin{align}
(D_\nu J^\nu)^a=(D_\nu D_\mu F^{\mu\nu})^a.
\end{align}$$

右边中对称部分因 $F^{\mu\nu}$ 反对称而为零；交换子部分为 $[D_\nu,D_\mu]\sim F_{\nu\mu}$，与另一个 $F^{\mu\nu}$ 的群指标收缩后由结构常数反对称性消失。因此

$$\begin{align}
(D_\nu J^\nu)^a=0.
\end{align}$$

1. $J^{a,\mu}$ 自身带伴随指标，在局域规范变换下会在颜色空间旋转。普通散度 $\partial_\mu J^{a,\mu}$ 不是协变对象；它可以被规范场项

$$\begin{align}
gf^{abc}A_\mu^bJ^{c,\mu}
\end{align}$$

补偿。真正有意义的守恒律是协变守恒 $D_\mu J^\mu=0$。

1. 未破缺规范理论中，带色局域算符会在局域规范变换下转动，不是规范不变观测量。物理局域观测量必须是 singlet，例如 $\bar\psi\psi$ 或 $\mathrm{Tr}F^2$；若要描述分离的带色源，需要用 Wilson 线构造非局域规范不变算符。

### 三、全局手征对称性

1. 令

$$\begin{align}
\psi_L=P_L\psi,\qquad \psi_R=P_R\psi.
\end{align}$$

在 $m=0$ 时，拉氏量分解为左右手两部分，并具有

$$\begin{align}
\psi_L\to L\psi_L,\qquad \psi_R\to R\psi_R,\qquad L,R\in\mathrm{SU}(N).
\end{align}$$

这就是 $\mathrm{SU}(N)_L\times\mathrm{SU}(N)_R$ 全局对称性。

1. 对非 singlet 轴变换

$$\begin{align}
\psi\to e^{i\alpha^aT^a\gamma_5}\psi
\end{align}$$

的 Noether 流为

$$\begin{align}
A^{a,\mu}=\bar\psi\gamma^\mu\gamma_5T^a\psi.
\end{align}$$

质量项显式破坏轴对称性，经典 Ward 恒等式为

$$\begin{align}
\partial_\mu A^{a,\mu}=2im\,\bar\psi\gamma_5T^a\psi,
\end{align}$$

其中因子随 $T^a$ 的归一化可能变化。

1. singlet 轴流的生成元与 flavor 单位矩阵成正比，三角图中会出现

$$\begin{align}
\mathrm{Tr}_{\rm flavor}\mathbf 1\;\mathrm{Tr}_{\rm gauge}(t^At^B)
\end{align}$$

的反常系数，因而有 Adler-Bell-Jackiw 反常。非 singlet flavor 生成元无迹，在普通 QCD 的规范背景中相应 flavor trace 为零，所以非 singlet 轴流没有同样的规范 singlet 反常项。

1. PCAC 关系中的显式质量贡献可写为

$$\begin{align}
\partial_\mu A^{a,\mu}=2mP^a,\qquad P^a=i\bar\psi\gamma_5T^a\psi
\end{align}$$

或等价地写成 $2im\bar\psi\gamma_5T^a\psi$，取决于 pseudoscalar 密度是否包含 $i$。

1. 当 $m=0$ 时，手征对称性禁止把左手和右手混合的算符 $\bar\psi\psi=\bar\psi_L\psi_R+\bar\psi_R\psi_L$。因此辐射修正不能产生与原质量无关的加性质量项；费米子质量只允许乘性重正化。这与标量质量项的自然性问题形成对比。

### 四、规范参数独立性

1. 未破缺协变规范中的规范场传播子为

$$\begin{align}
D_{\mu\nu}(p)=\frac{-i}{p^2+i\epsilon} \left(g_{\mu\nu}-(1-\xi)\frac{p_\mu p_\nu}{p^2+i\epsilon}\right).
\end{align}$$

在破缺相中，massive vector 的纵向部分含

$$\begin{align}
\frac{1}{p^2-\xi M^2+i\epsilon}
\end{align}$$

的规范依赖极点。$\xi$ 因此显式出现在非物理纵向传播中。

1. off-shell Green 函数依赖于场变量和规范固定方式，不是直接可观测量。改变 $\xi$ 相当于改变路径积分中对规范轨道切片的选择；离壳相关函数会随这种选择改变。

1. S-matrix 的外态属于 BRST cohomology，即 BRST 闭但非 BRST exact 的物理态。规范参数变化只改变规范固定和 ghost 部分，相当于插入 BRST exact 算符。BRST exact 算符夹在物理态之间矩阵元为零，因此物理 S-matrix 不依赖 $\xi$。

1. 规范固定与 ghost 项可写成

$$\begin{align}
\mathcal L_{\rm gf+gh}=s\Psi
\end{align}$$

其中 $\Psi$ 是 gauge-fixing fermion。改变 $\xi$ 等价于改变 $\Psi$，于是

$$\begin{align}
\partial_\xi\mathcal L_{\rm gf+gh}=s(\partial_\xi\Psi).
\end{align}$$

对 BRST 闭的物理态，$s$-exact 插入不贡献物理矩阵元。

1. 实际计算中可把 $\xi$ 保留为任意参数。若计算一个散射振幅，来自规范场纵向传播子、Goldstone 和 ghost loop 的 $\xi$ 依赖必须相消。若最终的 on-shell 振幅仍含 $\xi$，通常说明漏掉了图、符号、Goldstone/ghost 贡献或重正化项。

## mock exam 6 expanded sol.

### 一、非 Abelian Proca 理论

1. 非 Abelian 规范变换中

$$\begin{align}
A_\mu\to UA_\mu U^\dagger+\frac{i}{g}U\partial_\mu U^\dagger.
\end{align}$$

由于存在非齐次项 $U\partial_\mu U^\dagger$，$A_\mu^aA^{a,\mu}$ 不会变成自身；它不是规范不变量。因此显式 Proca 质量项破坏局域规范对称性。

1. 自由 massive vector 二次算符反演给出

$$\begin{align}
D_{\mu\nu}^{ab}(p)= \frac{-i\delta^{ab}}{p^2-M^2+i\epsilon} \left(g_{\mu\nu}-\frac{p_\mu p_\nu}{M^2}\right).
\end{align}$$

第二项在 $p^2\gg M^2$ 时含 $p_\mu p_\nu/M^2$，没有像普通规范传播子那样按 $1/p^2$ 衰减。这反映纵向极化

$$\begin{align}
\epsilon_L^\mu(p)\sim \frac{p^\mu}{M}
\end{align}$$

在高能下增长。

1. 若只看 $[A_\mu]=1$，非 Abelian 三点和四点自相互作用似乎维数不超过 $4$。但 Proca 质量破坏了约束和 Ward/ST 恒等式，纵向极化的 $E/M$ 增长会使振幅高能行为恶化。缺少规范对称性组织的抵消时，幺正性和可重正性不能由朴素维数计数保证。

1. Higgs 机制把 massive vector 的纵向自由度来自 Goldstone 模式，并保留底层规范对称性和 BRST 恒等式。高能散射中规范场、Goldstone、Higgs 径向模之间的关系保证危险的 $E/M$ 增长相消，使理论在规范意义下可重正。

1. 每个 Proca massive vector 有三个物理自由度，没有规范冗余。Stueckelberg 机制为每个 Abelian massive vector 引入一个标量，把质量项写成规范不变形式；该标量被吃掉后仍是三个物理自由度，且没有径向 Higgs。Higgs 机制中复/实标量的一部分 Goldstone 被吃掉，另外可能留下径向物理标量。

### 二、$\mathrm{SO}(3)$ 五维对称无迹表示

1. 真空

$$\begin{align}
\langle\Phi\rangle=v\,\mathrm{diag}(1,1,-2)
\end{align}$$

在 $1$-$2$ 平面有简并本征值。因此保持它不变的旋转是绕第三轴的 $\mathrm{SO}(2)$：

$$\begin{align}
\mathrm{SO}(3)\longrightarrow \mathrm{SO}(2)\simeq \mathrm{U}(1).
\end{align}$$

1. 生成元 $J_{12}$ 只在前两个简并方向旋转，满足 $[J_{12},\langle\Phi\rangle]=0$，所以未破缺。$J_{13}$ 和 $J_{23}$ 混合本征值 $1$ 与 $-2$ 的方向，交换子非零，所以破缺。对应两个规范玻色子获得质量，$J_{12}$ 对应的规范玻色子保持无质量。

1. $\mathrm{SO}(3)$ 破到 $\mathrm{SO}(2)$，破缺生成元数为 $3-1=2$，因此有两个 Goldstone 模式被两个 massive gauge boson 吃掉。五维实标量表示共有 $5$ 个实自由度，剩余物理标量数为

$$\begin{align}
5-2=3.
\end{align}$$

1. 伴随标量是三维向量，真空方向的稳定子也是绕该向量的 $\mathrm{SO}(2)$。本题的标量不是向量，而是 rank-2 对称无迹张量；判断稳定子要看矩阵本征值的简并结构。虽然破缺群同样是 $\mathrm{SO}(2)$，但物理标量的表示分解和质量谱由五维张量表示决定，而不是伴随三维表示决定。

### 三、复合算符 $F_{\mu\nu}^aF^{a,\mu\nu}$

1. 复合算符插入把多个场放在同一点，会产生新的短距离奇性。即使原拉氏量已经重正化，含 $\mathcal O(x)$ 插入的 Green 函数仍可能有额外 UV 发散。因此需要定义

$$\begin{align}
\mathcal O_{0,i}=Z_{ij}\mathcal O_j
\end{align}$$

的算符重正化矩阵。

1. 与 $F^2$ 同量纲、同 Lorentz 和内部量子数的算符都可能混合。典型包括

$$\begin{align}
F_{\mu\nu}^aF^{a,\mu\nu},\qquad m\bar\psi\psi,\qquad \text{EOM 算符},\qquad \text{BRST exact 算符},\qquad \partial_\mu(\text{规范不变流}).
\end{align}$$

若不要求 $CP$ 守恒，还要单独考虑 $F\widetilde F$；在 $CP$ 守恒分类下，$F^2$ 与 $F\widetilde F$ 不混合。

1. EOM 算符在离壳 Green 函数中可以出现，因为插入点会产生接触项；但在物理 on-shell 矩阵元中通常可用场重定义消去。BRST exact 算符在物理态之间矩阵元为零，因为物理态属于 BRST cohomology。因此它们对 off-shell 重正化必要，却不改变规范不变物理矩阵元。

1. 经典 Yang-Mills 在无质量极限中尺度不变，但量子理论的耦合常数 running 破坏尺度不变性。能动张量迹包含

$$\begin{align}
T^\mu_{\ \mu} =\frac{\beta(g)}{2g}F_{\mu\nu}^aF^{a,\mu\nu} +(1+\gamma_m)m\bar\psi\psi+\cdots.
\end{align}$$

系数 $\beta(g)/(2g)$ 来自把裸作用写成重正化耦合和重正化算符时对 $\mu$ 的依赖。

### 四、Slavnov-Taylor 恒等式

1. 生成泛函在 BRST 变换下不变。对有效作用 $\Gamma$，这种不变性写成 Slavnov functional equation：

$$\begin{align}
\mathcal S(\Gamma)=0.
\end{align}$$

具体表达式包含 $\Gamma$ 对场以及 BRST 外源的函数导数。它是 Ward 恒等式在非 Abelian 规范固定量子理论中的推广。

1. 非 Abelian BRST 变换含非线性项：

$$\begin{align}
sA_\mu^a=(D_\mu c)^a,\qquad sc^a=-\frac g2f^{abc}c^bc^c.
\end{align}$$

这些是复合算符，会在重正化中混合。因此需要引入外源 $K_\mu^a,L^a$ 分别耦合到 $sA_\mu^a,sc^a$，以控制这些复合算符的重正化并写出封闭的 ST 恒等式。

1. ST 恒等式关联所有由同一规范耦合产生的顶角重正化。若记

$$\begin{align}
Z_3,\quad Z_3^c,\quad Z_1^c,\quad Z_1^{3g},\quad Z_1^{4g}
\end{align}$$

分别为胶子、ghost、ghost-gluon、三胶子、四胶子相关重正化常数，则它们不能任意独立。所有顶角抽出的 $Z_g$ 必须一致。

1. 从 ghost-gluon 顶角定义裸耦合：

$$\begin{align}
g_0=\mu^\epsilon Z_g g,\qquad Z_g=Z_1^c(Z_3^c)^{-1}Z_3^{-1/2}.
\end{align}$$

若一圈写作 $Z_i=1+\delta_i$，则

$$\begin{align}
\delta_g=\delta_1^c-\delta_3^c-\frac12\delta_3.
\end{align}$$

在 MS 类方案中若

$$\begin{align}
Z_g=1-\frac{\beta_0g^2}{32\pi^2\epsilon}+O(g^4),
\end{align}$$

由 $\mu dg_0/d\mu=0$ 得

$$\begin{align}
\beta(g)=-\frac{\beta_0}{16\pi^2}g^3+O(g^5)
\end{align}$$

在四维成立。

1. 若 regulator 破坏 BRST，例如硬 cutoff 可能不保持规范恒等式，则中间计算会违反 $\mathcal S(\Gamma)=0$。需要加入所有由幂计数和非破缺全局对称性允许的局域恢复项，并调节有限部分，使重正化后的有效作用重新满足 ST 恒等式。若存在真正规范反常，则无法通过局域恢复项消除。

## mock exam 7 expanded sol.

### 一、欧氏路径积分与 1PI 两点函数

1. 纯 $\mathrm{SU}(N)$ 规范理论在欧氏协变规范中的生成泛函可写为

$$\begin{align}
Z[J]=\int DA\,D\bar c\,Dc\, \exp\left[-S_E[A]-S_{\rm gf}[A]-S_{\rm gh}[A,\bar c,c] +\int d^4x\,J_\mu^aA_\mu^a\right].
\end{align}$$

例如

$$\begin{align}
S_{\rm gf}=\int d^4x\,\frac{1}{2\xi}(\partial_\mu A_\mu^a)^2,\qquad S_{\rm gh}=\int d^4x\,\bar c^a(-\partial_\mu D_\mu^{ab})c^b
\end{align}$$

在常见欧氏号约定下成立。

1. connected generating functional 定义为

$$\begin{align}
W[J]=\log Z[J].
\end{align}$$

经典场为

$$\begin{align}
A_{c,\mu}^a(x)=\frac{\delta W}{\delta J_\mu^a(x)}.
\end{align}$$

有效作用是 Legendre 变换：

$$\begin{align}
\Gamma[A_c]=\int d^4x\,J_\mu^aA_{c,\mu}^a-W[J],
\end{align}$$

其中 $J$ 要看成由 $A_c$ 反解得到的泛函。因此

$$\begin{align}
\frac{\delta\Gamma}{\delta A_{c,\mu}^a}=J_\mu^a.
\end{align}$$

1. 二阶变分给出

$$\begin{align}
\frac{\delta^2 W}{\delta J\,\delta J}=G^{(2)}_{\rm conn},\qquad \frac{\delta^2\Gamma}{\delta A_c\,\delta A_c}=\Gamma^{(2)}.
\end{align}$$

Legendre 变换意味着二者是反核：

$$\begin{align}
\int d^4z\,\Gamma^{(2)}_{ik}(x,z)G^{(2)}_{kj}(z,y)=\delta_{ij}\delta^4(x-y).
\end{align}$$

动量空间中，全传播子是 1PI 二点函数的矩阵逆。

1. 规范对称性和 ST 恒等式限制规范玻色子自能的物理部分为横向：

$$\begin{align}
\Pi_{\mu\nu}^{ab}(p)=\delta^{ab}(p^2\delta_{\mu\nu}-p_\mu p_\nu)\Pi(p^2)
\end{align}$$

在欧氏记号下成立。纵向部分由规范固定项控制，不代表独立物理自能。

1. 微扰胶子传播子有类似 $p^2=0$ 的极点，但在禁闭理论中胶子不是规范不变外态。质量缺口是规范不变谱中最低激发与真空之间的能量差，例如 glueball 谱的最低质量。它不能简单等同于某个规范依赖胶子传播子的微扰极点。

### 二、HQET 最简单极限

1. 取 $v^2=1$，定义投影算符

$$\begin{align}
P_\pm=\frac{1\pm\slashed v}{2},\qquad P_\pm^2=P_\pm,\qquad P_+P_-=0.
\end{align}$$

题面分解

$$\begin{align}
Q(x)=e^{-iMv\cdot x}(h_v+H_v)
\end{align}$$

中

$$\begin{align}
h_v=P_+e^{iMv\cdot x}Q,\qquad H_v=P_-e^{iMv\cdot x}Q.
\end{align}$$

$h_v$ 是大分量，$H_v$ 是可被积分掉的小分量。

1. 把分解代入 full QCD 动能项：

$$\begin{align}
\bar Q(i\slashed D-M)Q =\bar h_v\,iv\cdot D\,h_v -\bar H_v(2M+iv\cdot D)H_v +\bar h_v i\slashed D_\perp H_v +\bar H_v i\slashed D_\perp h_v.
\end{align}$$

其中

$$\begin{align}
D_\perp^\mu=D^\mu-v^\mu(v\cdot D).
\end{align}$$

低能下 $H_v$ 的质量间隙约为 $2M$，积分掉它后 leading-order 拉氏量为

$$\begin{align}
\mathcal L_{\rm HQET}^{(0)}=\bar h_v\,iv\cdot D\,h_v.
\end{align}$$

1. leading-order 项不含重夸克质量 $M$，也不含显式 $\sigma_{\mu\nu}G^{\mu\nu}$ 自旋耦合。因此不同重夸克味在同一速度下具有 flavor symmetry；重夸克自旋也不影响相互作用，给出 heavy spin symmetry。

1. $1/M$ 阶的两个标准算符是 kinetic operator 和 chromomagnetic operator：

$$\begin{align}
\mathcal L_{1/M} =\frac{1}{2M}\bar h_v(iD_\perp)^2h_v +\frac{C_{\rm mag}g}{4M}\bar h_v\sigma_{\mu\nu}G^{\mu\nu}h_v.
\end{align}$$

前者保持自旋对称性，后者破坏 heavy spin symmetry。

1. HQET 与 full QCD 在低能有相同红外行为，但高能短距离模式不同。Wilson coefficient 必须通过匹配确定：在尺度 $\mu\sim M$ 计算同一外态振幅或矩阵元，要求 full QCD 与 HQET 给出相同结果，从而吸收重质量尺度的短距离效应。

### 三、Schwinger-Dyson 方程

1. 对标量场，利用路径积分变量平移不变性：

$$\begin{align}
0=\int D\phi\,\frac{\delta}{\delta\phi(x)} \left[F[\phi]e^{iS[\phi]}\right].
\end{align}$$

展开得到

$$\begin{align}
\left\langle\frac{\delta F}{\delta\phi(x)} +iF\frac{\delta S}{\delta\phi(x)}\right\rangle=0.
\end{align}$$

取不同的 $F$ 就得到两点、三点等 Green 函数满足的一整套 Schwinger-Dyson 方程。

1. 对规范场也可做同样变量平移，但必须先规范固定。作用量包括

$$\begin{align}
S_{\rm YM}+S_{\rm gf}+S_{\rm gh}.
\end{align}$$

因此规范场 Schwinger-Dyson 方程中的电流项不仅来自 Yang-Mills 自相互作用和 matter，也来自 ghost 作用量对 $A_\mu$ 的变分。这正是 ghost loop 在规范场自能方程中出现的来源。

1. Schwinger-Dyson 方程是量子运动方程，是由路径积分变量平移得到的动力学恒等式；Ward 或 Slavnov-Taylor 恒等式来自对称性变换，约束纵向结构和不同顶角之间的关系。前者给无限层级的积分方程，后者保证规范冗余的一致消除。

1. 实际求解 Schwinger-Dyson 方程必须截断无限层级。若截断破坏 Ward/ST 恒等式，会产生错误的纵向自能、虚假的规范参数依赖或不守恒的电流。因此常用保持横向投影、Ball-Chiu 顶角或 background-field truncation 等方式尽量维护规范恒等式。

### 四、四费米 EFT

1. 四维中 $[\psi]=3/2$，所以

$$\begin{align}
\left[(\bar\psi\gamma_\mu\psi)(\bar\psi\gamma^\mu\psi)\right]=6.
\end{align}$$

因此

$$\begin{align}
\left[\frac{G}{\Lambda^2}\right]=-2.
\end{align}$$

若 $G$ 取无量纲，则 $\Lambda$ 是抑制该维六算符的重尺度。

1. 负质量量纲耦合意味着 loop 展开会生成越来越高维的局域算符，例如带更多导数或更多费米子场的项。若要求所有能标上闭合，需要无限多抵消项，所以四维四费米相互作用作为基本理论按幂计数不可重正。

1. 一圈中两个四费米顶角可以生成新的四费米局域结构，其 Dirac、flavor、color 收缩可能不同，例如 vector-vector、scalar-scalar、tensor-tensor 等基底之间会混合。Fierz 变换用于把不同收缩关系化到一组选定的独立算符基中，避免重复计数。

1. 若四费米算符来自重矢量 $V_\mu$ 的树级交换，设相互作用为

$$\begin{align}
g_VV_\mu\bar\psi\gamma^\mu\psi+\frac12M_V^2V_\mu V^\mu.
\end{align}$$

低能 $p^2\ll M_V^2$ 下，重矢量传播子近似为 $1/M_V^2$，得到

$$\begin{align}
\frac{G}{\Lambda^2}\sim \frac{g_V^2}{M_V^2}
\end{align}$$

乘以由拉氏量号约定和生成元归一化决定的整体符号。

1. 截断到 $1/\Lambda^2$ 阶时，应保留一次维六算符插入的树图，以及在同一精度下需要的 loop 混合和抵消项。两个维六插入通常给出 $1/\Lambda^4$，属于下一阶；但一次维六插入的一圈发散可能要求重正化维六算符基。还要同时保留维四拉氏量的普通重正化。

## mock exam 8 expanded sol.

### 一、$\mathrm{SU}(N)$ 基本 Higgs

1. 势能为

$$\begin{align}
V(\phi)=m^2\phi^\dagger\phi+\lambda(\phi^\dagger\phi)^2.
\end{align}$$

若 $m^2>0$ 且 $\lambda>0$，极小值在 $\phi=0$，规范群不破缺。若 $m^2<0$，令 $r=\phi^\dagger\phi$，极小值满足

$$\begin{align}
m^2+2\lambda r=0 \quad\Rightarrow\quad r=-\frac{m^2}{2\lambda}.
\end{align}$$

写 $\langle\phi\rangle=(0,\ldots,0,v/\sqrt2)^T$ 时，

$$\begin{align}
v^2=-\frac{m^2}{\lambda}.
\end{align}$$

1. $\mathrm{SU}(N)$ 在基本表示中可把任意非零复向量旋到第 $N$ 个方向。保持该方向不变的矩阵在前 $N-1$ 个分量上作 $\mathrm{SU}(N-1)$ 变换，并保持最后一维不动。因此

$$\begin{align}
\mathrm{SU}(N)\longrightarrow \mathrm{SU}(N-1).
\end{align}$$

这个结论也可从未破缺 Lie 代数条件 $X\langle\phi\rangle=0$ 得出。

1. 破缺生成元数为

$$\begin{align}
\dim\mathrm{SU}(N)-\dim\mathrm{SU}(N-1) =(N^2-1)-((N-1)^2-1)=2N-1.
\end{align}$$

所以 massive gauge boson 数为 $2N-1$，massless gauge boson 数为

$$\begin{align}
\dim\mathrm{SU}(N-1)=(N-1)^2-1.
\end{align}$$

复基本标量有 $2N$ 个实自由度；其中 $2N-1$ 个 Goldstone 被吃掉，剩下 $1$ 个径向 Higgs 模式。

1. 质量矩阵来自

$$\begin{align}
(D_\mu\langle\phi\rangle)^\dagger D^\mu\langle\phi\rangle.
\end{align}$$

若 $D_\mu=\partial_\mu-igA_\mu^at^a$，并把规范场质量项写为 $\frac12A_\mu^a(M_A^2)_{ab}A^{b,\mu}$，则

$$\begin{align}
(M_A^2)_{ab}=g^2\langle\phi\rangle^\dagger\{t^a,t^b\}\langle\phi\rangle.
\end{align}$$

未破缺生成元满足 $t^a\langle\phi\rangle=0$，对应零本征值；破缺生成元对应非零质量。

1. $N=2$ 时，$\mathrm{SU}(1)$ 是平凡群，所以 $\mathrm{SU}(2)$ 完全破缺，三个规范玻色子全部 massive，复二重态四个实自由度中三个 Goldstone 被吃掉，剩一个径向模式。$N=3$ 时，破缺为 $\mathrm{SU}(2)$，五个规范玻色子 massive，三个保持 massless。

### 二、ghost 的物理作用

1. FP 行列式是规范条件对规范参数变分得到的普通 determinant：

$$\begin{align}
\Delta_{\rm FP}=\det M.
\end{align}$$

普通复标量高斯积分给 $1/\det M$，而 Grassmann 标量积分给 $\det M$：

$$\begin{align}
\det M=\int D\bar cDc\,e^{i\int\bar cMc}.
\end{align}$$

因此 ghost 是 Grassmann 奇的 Lorentz 标量，但带有规范群表示指标。

1. ghost 不是物理粒子，不属于 BRST cohomology 的外态；所以 S-matrix 外线不能取 ghost。可是它们来自 FP determinant，参与内部 loop，补偿规范场非物理极化的贡献，保证规范固定路径积分等价于原规范理论。

1. 非 Abelian 真空极化中，规范场 loop 单独通常不横向。ghost loop 的贡献与规范场、matter loop 合起来满足 ST 恒等式，使

$$\begin{align}
p_\mu\Pi^{\mu\nu}(p)=0
\end{align}$$

对物理自能成立。若漏掉 ghost loop，会破坏横向性和 beta 函数系数。

1. Abelian Lorenz 规范中

$$\begin{align}
M=\partial^2
\end{align}$$

与 $A_\mu$ 无关，因此 ghost 是自由场，完全退耦。非 Abelian 中

$$\begin{align}
M^{ab}=\partial_\mu D^{\mu,ab}[A]
\end{align}$$

含有 $A_\mu$，所以 ghost 与胶子有相互作用，不能从 loop 中去掉。

### 三、规范不变非局域算符

1. Wilson 线

$$\begin{align}
W(x,y)=P\exp\left(ig\int_y^xdz^\mu A_\mu(z)\right)
\end{align}$$

变换为

$$\begin{align}
W(x,y)\to U(x)W(x,y)U^\dagger(y).
\end{align}$$

同时

$$\begin{align}
\bar\psi(x)\to\bar\psi(x)U^\dagger(x),\qquad \psi(y)\to U(y)\psi(y).
\end{align}$$

所以

$$\begin{align}
\bar\psi(x)\Gamma W(x,y)\psi(y)
\end{align}$$

的所有端点规范矩阵相消，是规范不变量。

1. 路径 $\Gamma$ 是算符定义的一部分。不同路径对应不同的 gauge string，具有不同的非局域形状和重正化性质。只有在某些极限或利用方程运动/OPE 时，不同路径的差别才可组织成局域高维算符修正。

1. 当 $y\to x$ 时，可沿路径作 gauge-covariant Taylor 展开：

$$\begin{align}
W(x,y)\psi(y) =\psi(x)+(y-x)^\mu D_\mu\psi(x) +\frac12(y-x)^\mu(y-x)^\nu D_\mu D_\nu\psi(x)+\cdots.
\end{align}$$

因此非局域算符展开为

$$\begin{align}
\bar\psi\Gamma\psi,\quad \bar\psi\Gamma D_\mu\psi,\quad \bar\psi\Gamma D_\mu D_\nu\psi,\ldots
\end{align}$$

等局域复合算符。

1. Wilson 线自身有短距离发散，包括沿线的 self-energy 发散、端点发散，以及路径出现 cusp 时的 cusp anomalous dimension。这些发散不是普通局域场波函数重正化能完全吸收的，需要对 Wilson-line 算符定义额外重正化因子。

1. Parton distribution function 的规范不变定义正是双局域场算符加 Wilson 线。对夸克 PDF，典型结构为沿光锥方向分离的

$$\begin{align}
\bar\psi(\lambda n)\Gamma W(\lambda n,0)\psi(0),
\end{align}$$

Wilson 线保证在任意规范下定义一致，并编码 collinear gluon 的规范相互作用。

### 四、质量重正化

1. 设

$$\begin{align}
m_0=Z_m(g,\mu)m(\mu).
\end{align}$$

裸质量不依赖 $\mu$，所以

$$\begin{align}
0=\mu\frac{d}{d\mu}\log m_0 =\mu\frac{d}{d\mu}\log Z_m+\mu\frac{d}{d\mu}\log m.
\end{align}$$

于是

$$\begin{align}
\mu\frac{dm}{d\mu}=-m\,\mu\frac{d}{d\mu}\log Z_m.
\end{align}$$

1. 常用定义之一是

$$\begin{align}
\gamma_m=-\mu\frac{d}{d\mu}\log m =\mu\frac{d}{d\mu}\log Z_m.
\end{align}$$

也有书把 $\gamma_m$ 定义成 $\mu d\log m/d\mu$，导致整体号相反。比较公式时必须先看定义。

1. Dirac 质量项

$$\begin{align}
m\bar\psi\psi =m(\bar\psi_L\psi_R+\bar\psi_R\psi_L)
\end{align}$$

混合左右手分量，破坏轴向手征对称性。QED/QCD 的规范相互作用本身保持 vector-like 手征结构，但质量项显式破坏轴对称性。

1. 当 $m=0$ 时，手征对称性禁止 $\bar\psi_L\psi_R+\bar\psi_R\psi_L$。因此量子修正不能产生一个与 $m$ 无关的加性质量；质量 beta 函数必须正比于 $m$ 本身，即质量乘性 running。

1. 费米子质量受手征对称性保护，小质量在对称性意义下自然。标量质量项 $\phi^2$ 通常没有类似保护；它是 relevant 算符，可能对 UV 尺度敏感，需要额外对称性如 supersymmetry、shift symmetry 或 Goldstone 结构来保护。

## mock exam 9 expanded sol.

### 一、Maxwell 理论的 canonical 约束

1. 取

$$\begin{align}
\mathcal L=-\frac14F_{\mu\nu}F^{\mu\nu} =\frac12(\vec E^2-\vec B^2)
\end{align}$$

在常见 Minkowski 约定下成立。$A_0$ 没有时间导数，所以

$$\begin{align}
\pi^0=\frac{\partial\mathcal L}{\partial\dot A_0}=0
\end{align}$$

是 primary constraint。空间分量的共轭动量为

$$\begin{align}
\pi^i=\frac{\partial\mathcal L}{\partial\dot A_i}=F^{i0},
\end{align}$$

与电场只差号约定。

1. canonical Hamiltonian 包含

$$\begin{align}
H=\int d^3x\left[\frac12\vec\pi^{\,2}+\frac12\vec B^2-A_0\,\partial_i\pi^i\right]
\end{align}$$

加上 primary constraint 的 Lagrange multiplier。要求 primary constraint 在时间演化下保持：

$$\begin{align}
\dot\pi^0=\{\pi^0,H\}=\partial_i\pi^i\approx0.
\end{align}$$

这就是 Gauss law constraint。

1. $\pi^0\approx0$ 和 $\partial_i\pi^i\approx0$ 都是 first-class constraints。每个 first-class constraint 连同一个规范条件去掉一个 canonical pair 的冗余。四维规范场原有 $4$ 个场分量，即 $8$ 个相空间变量；两个 first-class constraints 去掉 $4$ 个相空间自由度，剩下 $4$ 个相空间自由度，即两个物理极化。

1. Coulomb gauge 取

$$\begin{align}
\nabla\cdot\vec A=0.
\end{align}$$

Gauss law 决定纵向电场，规范条件去掉纵向矢势，只剩两个横向分量。因此光子有两个物理自由度。

1. canonical 约束量子化先识别 first-class constraints，再选择规范或在物理态上施加约束。Faddeev-Popov 路径积分则在协变路径积分中插入规范条件和 determinant。二者描述同一个约束系统；FP ghost 和规范固定项是协变实现约束和规范体积除法的工具。

### 二、有限温 Euclidean 路径积分与 Polyakov loop

1. 有限温路径积分中欧氏时间紧化为 $\tau\sim\tau+\beta$。玻色场满足周期边界条件：

$$\begin{align}
A_\mu(\beta,\vec x)=A_\mu(0,\vec x).
\end{align}$$

费米场满足反周期边界条件：

$$\begin{align}
\psi(\beta,\vec x)=-\psi(0,\vec x).
\end{align}$$

ghost 虽是 Grassmann 场，但它对应规范参数和 FP determinant，为保持规范变换周期性，取周期边界条件。

1. Polyakov loop 定义为时间方向闭合 Wilson 线：

$$\begin{align}
P(\vec x)=\frac1N\mathrm{Tr}\,P\exp\left(ig\int_0^\beta d\tau\,A_0(\tau,\vec x)\right).
\end{align}$$

它描述在空间点 $\vec x$ 放置一个无限重基本表示颜色源沿热时间传播一圈的相位因子。

1. 允许到中心元的周期规范变换满足

$$\begin{align}
U(\beta,\vec x)=z\,U(0,\vec x),\qquad z\in Z_N.
\end{align}$$

在这种中心变换下，基本表示 Polyakov loop 变为

$$\begin{align}
P(\vec x)\to z\,P(\vec x).
\end{align}$$

因此 $\langle P\rangle$ 是中心对称性的 order parameter。

1. 插入一个 Polyakov loop 等价于插入一个静态基本色源。其热期望值满足

$$\begin{align}
\langle P\rangle\sim e^{-\beta F_q},
\end{align}$$

其中 $F_q$ 是单个静态夸克的自由能。若 $\langle P\rangle=0$，则 $F_q=\infty$，表示孤立夸克不能作为有限能激发。

1. 纯 Yang-Mills 没有基本表示动力学物质场，中心对称性是精确全局对称性。低温禁闭相中中心对称未破缺，$\langle P\rangle=0$；高温退禁闭相中中心对称自发破缺，$\langle P\rangle\ne0$。有动力学基本夸克时中心对称被显式破坏，Polyakov loop 不再是严格 order parameter。

### 三、Ward 恒等式对振幅的约束

1. 外线光子的物理极化满足 $k\cdot\epsilon=0$，且极化矢量的规范冗余为 $\epsilon_\mu\sim\epsilon_\mu+\alpha k_\mu$。规范不变性要求振幅

$$\begin{align}
\mathcal M=\epsilon_\mu(k)\mathcal M^\mu
\end{align}$$

不依赖于这个替换，因此

$$\begin{align}
k_\mu\mathcal M^\mu=0.
\end{align}$$

1. LSZ 约化把外光子关联函数约化到守恒流插入。若 $\partial_\mu J^\mu=0$，动量空间给出 $k_\mu J^\mu(k)=0$。接上外线后就得到把外光子极化替换为动量时物理振幅为零。

1. Compton scattering 的树图有 $s$ 道和 $u$ 道电子传播。把外光子极化替换为 $k_\mu$ 时，顶角 $\slashed k$ 可写成相邻电子反传播子的差：

$$\begin{align}
\slashed k=(\slashed p+\slashed k-m)-(\slashed p-m).
\end{align}$$

在外线 Dirac 方程作用下，$s$ 道的非横向项与 $u$ 道的非横向项相互抵消。这是树级 Ward identity 的具体体现。

1. 若 regulator 破坏 Ward 恒等式，例如产生非横向光子自能或 $Z_1\ne Z_2$，需要加入局域抵消项并调节其有限部分，使重正化后的 Green 函数满足 Ward 恒等式。若是 QED，典型要求包括恢复

$$\begin{align}
q_\mu\Pi^{\mu\nu}=0,\qquad Z_1=Z_2.
\end{align}$$

### 四、两个实标量模型

1. 四维中 $[\phi]=[\chi]=1$。因此

$$\begin{align}
\left[\frac g2\phi^2\chi\right]=4 \quad\Rightarrow\quad [g]=1,
\end{align}$$

而四次耦合满足

$$\begin{align}
[\lambda]=[\kappa]=[h]=0.
\end{align}$$

质量参数 $m_\phi,m_\chi$ 的量纲为 $1$。

1. 若只把 $\phi^2\chi$ 视为维数三的 cubic coupling，四次耦合为 marginal，则表观发散度可写为

$$\begin{align}
D=4-E_\phi-E_\chi-V_g,
\end{align}$$

其中 $V_g$ 是 cubic 顶点数。每插入一个维数三顶点，其耦合 $g$ 带一个正质量量纲，因而降低动量积分的表观发散度。若还允许其他 cubic 项，公式中的 $V_g$ 应替换为所有维数三顶点的总数。

1. 若没有任何离散对称性，重正化会生成所有维数不超过 $4$、Lorentz 不变的局域多项式。势能抵消项应包括线性项

$$\begin{align}
a_\phi\phi+a_\chi\chi,
\end{align}$$

二次项

$$\begin{align}
\phi^2,\quad \chi^2,\quad \phi\chi,
\end{align}$$

三次项

$$\begin{align}
\phi^3,\quad \phi^2\chi,\quad \phi\chi^2,\quad \chi^3,
\end{align}$$

以及四次项

$$\begin{align}
\phi^4,\quad \phi^3\chi,\quad \phi^2\chi^2,\quad \phi\chi^3,\quad \chi^4.
\end{align}$$

若题面没有加入其中某些项，但它们不被对称性禁止，loop 通常会生成相应局域结构；为了重正化封闭，应把它们加入抵消项。

1. 修正 $\phi^2\chi^2$ 顶点的单圈图包括两个 quartic 顶点组成的 bubble，例如两个 $h\phi^2\chi^2$ 顶点或 $h$ 与 $\lambda,\kappa$ 的组合；也包括由两个 cubic 顶点构成、外腿选择为两条 $\phi$ 和两条 $\chi$ 的 bubble/triangle 型拓扑。考试作图时应标明外腿种类和顶点类型。

1. 若加入 $\phi\to-\phi$，则所有含奇数个 $\phi$ 的项被禁止：

$$\begin{align}
\phi,\quad \phi\chi,\quad \phi^3,\quad \phi\chi^2,\quad \phi^3\chi,\ldots
\end{align}$$

题面已有的 $\phi^2\chi$、$\phi^4$、$\chi^4$、$\phi^2\chi^2$ 仍允许；纯 $\chi$ 的线性、二次、三次项也不被这个对称性禁止，除非再额外规定 $\chi\to-\chi$ 或平移真空条件。

## mock exam 10 expanded sol.

### 一、规范反常与表示

1. 手征 Weyl 费米子的三角图规范反常中，群论因子是生成元的完全对称迹：

$$\begin{align}
d_r^{abc}=\mathrm{Tr}_r\left(t^a\{t^b,t^c\}\right).
\end{align}$$

若所有左手 Weyl 费米子的 $d_r^{abc}$ 求和为零，则局域 $\mathrm{SU}(N)^3$ 规范反常相消。

1. 对实或赝实表示，表示与其共轭等价。共轭表示的反常系数相对原表示变号，而等价性又要求二者相同，因此只能为零：

$$\begin{align}
d_r^{abc}=-d_{\bar r}^{abc}= -d_r^{abc}\quad\Rightarrow\quad d_r^{abc}=0.
\end{align}$$

所以实/赝实表示中的 Weyl 费米子没有局域三规范反常。

1. $\mathrm{SU}(2)$ 没有非零的局域对称张量 $d^{abc}$，所以基本双重态没有局域 $\mathrm{SU}(2)^3$ 反常。但由于

$$\begin{align}
\pi_4(\mathrm{SU}(2))=\mathbb Z_2,
\end{align}$$

奇数个左手基本双重态会有 Witten 全局反常，路径积分 Pfaffian 在大规范变换下变号。因此双重态数必须为偶数。

1. 对 $\mathrm{SU}(N)$ 基本和反基本 Weyl 费米子，反基本的局域反常系数与基本相反。若有 $n_F$ 个基本和 $n_{\bar F}$ 个反基本，则反常相消条件为

$$\begin{align}
n_F-n_{\bar F}=0
\end{align}$$

在没有其他表示参与时成立。若有其他表示，则要求所有表示的 anomaly index 加权和为零。

1. Standard Model 一代费米子用左手 Weyl 场计数为

$$\begin{align}
Q_L:(\mathbf3,\mathbf2)_{1/6},\quad u_R^c:(\bar{\mathbf3},\mathbf1)_{-2/3},\quad d_R^c:(\bar{\mathbf3},\mathbf1)_{1/3},\quad L_L:(\mathbf1,\mathbf2)_{-1/2},\quad e_R^c:(\mathbf1,\mathbf1)_{1}.
\end{align}$$

其结构性相消为：

$$\begin{align}
\mathrm{SU}(3)^3 &: \text{left quark doublet 与 }u_R^c,d_R^c\text{ 组成 vector-like 颜色结构},\\
\mathrm{SU}(2)^3 &: d^{abc}=0,\text{ 且双重态总数 }3+1=4\text{ 为偶数},\\
\mathrm{SU}(3)^2\mathrm{U}(1)&:2\cdot\frac16-\frac23+\frac13=0,\\
\mathrm{SU}(2)^2\mathrm{U}(1)&:3\cdot\frac16-\frac12=0.
\end{align}$$

此外

$$\begin{align}
\sum_{\rm one\ generation}Y=0,\qquad \sum_{\rm one\ generation}Y^3=0,
\end{align}$$

所以 gravity-$\mathrm{U}(1)$ 和 $\mathrm{U}(1)^3$ 反常也相消。

### 二、Higgs 有效势与 Coleman-Weinberg

1. 一圈有效势形式为

$$\begin{align}
V_{\rm eff}(\varphi) =V_{\rm tree}(\varphi) +\frac{1}{64\pi^2}\sum_i(-1)^{F_i}n_iM_i^4(\varphi) \left(\log\frac{M_i^2(\varphi)}{\mu^2}-c_i\right).
\end{align}$$

$F_i=0,1$ 区分玻色和费米，$n_i$ 计入自旋、颜色、粒子/反粒子等自由度，$c_i$ 依赖于重正化方案和粒子类型。

1. 有效势是离壳量，一般依赖规范参数 $\xi$。Nielsen identity 表明

$$\begin{align}
\frac{\partial V_{\rm eff}}{\partial\xi} +C(\varphi,\xi)\frac{\partial V_{\rm eff}}{\partial\varphi}=0.
\end{align}$$

因此在极值处 $\partial V_{\rm eff}/\partial\varphi=0$，真空能等物理量不依赖规范；物理质量应由适当的 pole mass 或规范不变定义提取，而不是简单把离壳有效势二阶导数在任意规范中当作最终答案。

1. 若经典势没有质量尺度，例如树级只有 $\lambda\varphi^4$，量子修正引入

$$\begin{align}
\log\frac{\varphi^2}{\mu^2}
\end{align}$$

项。极小化条件会把无量纲耦合与非零标度 $\langle\varphi\rangle$ 关联起来，从而用 running coupling 和 $\mu$ 生成一个物理尺度。这就是 dimensional transmutation。

1. Coleman-Weinberg 机制要求树级质量项为零或足够小，且标量自耦合与 loop 诱导项同阶。若规范玻色子 loop 主导，通常需要规范耦合贡献能稳定地产生非零极小值，而标量自耦合不能太大，否则树级势已经决定真空结构；费米子 loop 过强则可能使势不稳定。

### 三、Operator Product Expansion

1. OPE 把短距离乘积拆成

$$\begin{align}
J(x)J(0)\sim\sum_i C_i(x,\mu)\mathcal O_i(0,\mu).
\end{align}$$

Wilson coefficient $C_i$ 描述 $x\to0$ 的短距离物理，通常可用微扰计算；局域算符矩阵元 $\langle\mathcal O_i\rangle$ 描述长距离、态依赖、非微扰信息。

1. 左边的物理算符乘积不依赖任意尺度 $\mu$。因此 $C_i$ 的 $\mu$ 依赖必须与 $\mathcal O_i$ 的重正化 running 相消。若

$$\begin{align}
\mu\frac{d}{d\mu}\mathcal O_i=-\gamma_{ij}\mathcal O_j,
\end{align}$$

则 Wilson coefficient 满足相反的矩阵方程，使 $\sum_i C_i\mathcal O_i$ 总体 $\mu$ 无关。

1. 若存在算符混合

$$\begin{align}
\mathcal O_{0,i}=Z_{ij}\mathcal O_j,
\end{align}$$

定义

$$\begin{align}
\gamma=Z^{-1}\mu\frac{dZ}{d\mu}.
\end{align}$$

算符列向量按 $\gamma$ running，而 Wilson coefficient 作为对偶行向量按转置的反向矩阵 running：

$$\begin{align}
\mu\frac{d}{d\mu}C_i=C_j\gamma_{ji}
\end{align}$$

在上述符号约定下成立。

1. QCD OPE 中，单位算符给出纯微扰 leading term；质量算符 $m\bar\psi\psi$ 编码显式手征破缺和夸克凝聚相关修正；$F_{\mu\nu}^2$ 对应胶子凝聚，并与 trace anomaly 和标度破缺有关。这些算符按维数和量子数依次给出短距离展开的幂修正。

1. OPE 是算符层面的短距离展开，适用于局域算符乘积在 $x\to0$ 时的渐近结构；S-matrix 微扰展开是固定外态散射振幅按耦合常数展开。OPE 的系数可由微扰匹配得到，但其矩阵元可以是非微扰的，因此它是分离短程与长程物理的工具。

### 四、规范理论中的红外问题

1. massless gauge boson 的 soft divergence 来自辐射能量 $k^0\to0$ 时，发射振幅含 eikonal 因子

$$\begin{align}
\frac{p\cdot\epsilon}{p\cdot k},
\end{align}$$

相空间积分在低能区产生对数或更强奇性。虚 soft gauge boson loop 也有同样的低动量奇性。

1. 若带电粒子也无质量，当辐射的无质量规范玻色子与外带电粒子共线时，中间传播子接近 on-shell：

$$\begin{align}
(p+k)^2\approx 2p\cdot k\to0.
\end{align}$$

这导致 collinear divergence。若外粒子有质量，质量可作为 collinear regulator。

1. Bloch-Nordsieck 机制指出，实验不能分辨任意低能 soft 光子/胶子。对固定硬过程，把虚 soft 修正和所有不可分辨 soft 实发射一起求 inclusive 和，soft divergence 在可观测截面中相消。

1. KLN 定理更一般：对所有能量简并的初态和末态求和/平均后，红外安全可观测量中的 soft 和 collinear 发散相消。适用前提是观测量足够 inclusive，且求和覆盖所有退相干不可区分态；对非 inclusive 量，剩余 collinear 发散通常需因子化进 PDF、fragmentation function 或 jet function。

1. UV 发散来自短距离或大 loop 动量，用局域抵消项和重正化常数吸收，改变 Wilson 系数或 running coupling。IR 发散来自长距离、低能或共线区域，不能用局域 UV 抵消项消去；需要定义红外安全 observable、加入实辐射、保留小质量调节，或进行 factorization。两类发散在维数正则化中都可能表现为 $1/\epsilon$，但物理来源和处理方式不同。
