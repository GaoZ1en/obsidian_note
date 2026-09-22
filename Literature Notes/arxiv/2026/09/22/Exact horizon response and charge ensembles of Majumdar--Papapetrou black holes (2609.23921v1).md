---
paper id: 2609.23921v1
title: "Exact horizon response and charge ensembles of Majumdar--Papapetrou black holes"
authors:
  - "Baek, Jongheon"
publication date: 2026-09-20
abstract: |-
  We determine the electrostatic Dirichlet-to-Neumann map of an arbitrary four-dimensional Majumdar--Papapetrou spacetime. For a minimally coupled spectator Maxwell field, the potentials of the disconnected extremal horizons may be prescribed independently, and the resulting flux charges are related by an exact capacitance matrix. If the centers have masses $M_A$ and coordinate separations $R_{AB}$, its entries are $C_{AA}=M_A+\sum_{B\ne A}M_AM_B/R_{AB}$ and $C_{AB}=-M_AM_B/R_{AB}$. The matrix is a positive diagonal term plus the weighted Laplacian of the complete graph of horizons, giving an exact common-mode and differential-mode decomposition of the field energy. The grounded Dirichlet Green function shows that a point charge partitions its flux among infinity and the horizons according to elementary harmonic measures. A direct translation of the multicenter Green function of Frolov and Zelnikov gives the diagonal completion used in their published Eq.~(68), whose component-resolved Gauss flux preserves the total horizon charge but generally transfers charge between horizons. The symmetric Green function that preserves every horizon charge instead contains the inverse of the full capacitance matrix. For a binary, the difference gives a finite, negative-semidefinite shift of the electrostatic self-energy and a corresponding exact self-force difference without an additional ultraviolet subtraction. We finally extend the response matrix, flux partition, and fixed-charge Green function to $D=n+3$ dimensions, where the graph weights acquire the universal factor $\pi^{n/2}/\Gamma(n/2)$.
comments: "10 pages, 3 figures"
url: https://arxiv.org/abs/2609.23921v1
summary: "精确多视界 DtN 矩阵区分总电荷与逐分支电荷条件，并给出有限自能及自力差。"
tags: []
---

# 不连通视界的电荷条件需要一个矩阵

本文给出固定 Majumdar–Papapetrou (MP) 背景上 spectator Maxwell 场的精确静电 Dirichlet-to-Neumann 矩阵。主要用途是把边界条件的选择变成可计算对象：固定各视界势、保持视界总电荷、逐个保持各视界电荷是不同的条件；这一区别通过 Green 函数的有限秩修正改变自能和自力。

优先理由：`T1-charge; T1-boundary; T2-dS-BH-holography; T2-model`。10 页 v1，初次提交 2026-09-20；这里重构全部正文和四个附录。核心代数及明确例子已独立复算，但不是 Einstein–Maxwell 耦合扰动或引力自力的验证。

## Source map

| 原文 | 所解决的问题与依赖 |
|---|---|
| I Introduction | 多个断开的视界为何需要逐分支电荷条件；spectator 与背景支撑场的区别。 |
| II Electrostatic data | 静态 Maxwell 椭圆算子、Killing 能量、从内边界流向外部的通量号差。 |
| III MP reduction | $\Psi=U\Phi$ 的 Doob 恒等式和各渐近端的 harmonic measures。 |
| IV Exact capacitance | 近 puncture 展开 → 各分支通量 → $C=D_M+L_w$ → 能量与行和。 |
| V Grounded Green function | 接地 Green 核、感应电荷、无穷远通量、多个源的线性响应。 |
| VI Ensembles | FZ 对角 completion 与 $C^{-1}$ completion 的差别。 |
| VII Binary | 共模/差模、矩阵逆、秩一核差、具体反例和合并极限。 |
| VIII Self-energy | 光滑核差的对角极限、局部自力、轴上公式；说明物理系综的适用域。 |
| IX One-center relation | 单中心时两个电荷 prescription 重合；既有 RN/Schwarzschild 解是背景。 |
| X Conclusion | 多视界边界响应的用途及尚需耦合扰动的部分。 |
| Appendix A | 视界正则分支、近端势展开和通量极限。 |
| Appendix B | 能量分部恒等式、唯一性及系综转换。 |
| Appendix C | $D=n+3$ 的归一化、响应矩阵及外部定义域限制。 |
| Appendix D | Frolov–Zelnikov 的源与势约定转换、耦合系数条件及分支通量。 |

下文的一般物理解释、全局唯一性条件及文献归属为 `Source-derived`，具体独立检查列于末尾。

## II–III：约定、静电算子与调和测度

采用 Gaussian 单位、$G=c=1$、$(-,+,+,+)$，固定静态度规

$$
ds^2=-N^2dt^2+h_{ij}dx^idx^j,\qquad A=-\Phi\,dt.
$$

$N$ 在此为 lapse，视界个数也在原文记作 $N$，使用时须由语境区分。$\rho$ 是坐标电荷密度，方程和无源 Killing 能量为

$$
-\partial_i\left(\frac{\sqrt h}{N}h^{ij}\partial_j\Phi\right)=4\pi\rho,
\qquad E=\frac1{8\pi}\int d^3x\,\frac{\sqrt h}{N}h^{ij}\partial_i\Phi\partial_j\Phi.
$$

MP 几何取

$$
N=U^{-1},\quad h_{ij}=U^2\delta_{ij},\quad
U=1+\sum_A\frac{M_A}{r_A},\quad r_A=|\mathbf x-\mathbf x_A|,
\quad R_{AB}=|\mathbf x_A-\mathbf x_B|.
$$

$M_A>0$，中心不同。$R_{AB}$ 是坐标模量，不是两个无限长极端 throat 之间的有限固有距离。$\sqrt h\,h^{ij}/N=U^2\delta^{ij}$，故

$$
\mathcal L_U=-\nabla\cdot U^2\nabla,\qquad
\mathcal L_U(\Psi/U)=-U\nabla^2\Psi+\Psi\nabla^2U. \tag{6}
$$

在排除中心的外部 $\nabla^2U=0$，于是无源问题化为平直调和分子。这个乘法变换不是 Maxwell gauge，也不是重力的 harmonic-coordinate gauge。

定义

$$
h_A=\frac{M_A}{r_AU},\qquad h_\infty=U^{-1},\qquad
h_\infty+\sum_Ah_A=1.
$$

$h_A$ 在 $H_B$ 上为 $\delta_{AB}$，在无穷远为零；$h_\infty$ 在视界为零、无穷远为一。它们是边界常数数据的基。Appendix A 中分子的调和径向分支 $s^\ell$ 和 $s^{-\ell-1}$ 对应势 $s^{\ell+1}$ 和 $s^{-\ell}$；后者在 $\ell\ge1$ 使场强不变量发散，仅保留 monopole 的常数势。因此每个正则视界等势，而不同连通分支不必具有相同常数。要求势一形式跨多个视界正则时可能要用多个 gauge patch；本文使用的场强和通量不受此影响。

## IV 与 Appendix A–B：从近端展开推导电容矩阵

给定 $V_A$ 及 $V_\infty$，定义相对势 $v_A=V_A-V_\infty$。有限能量无源解为

$$
\Phi_0=V_\infty+\sum_Av_Ah_A
=\frac{V_\infty+\sum_AM_AV_A/r_A}{U}.
$$

边界值全为零的两个解之差由能量分部恒等式具有零梯度，结合无穷远值得到唯一性。此结论用的是规定的正则/有限能量类，不能允许额外奇异多极分支后仍说唯一。

视界电荷定义为流出视界进入外部的 Maxwell 通量：

$$
Q_A=-\frac1{4\pi}\lim_{s\to0}\int_{r_A=s}U^2s^2\partial_s\Phi\,d\Omega. \tag{10}
$$

在 $H_A$ 附近

$$
U=M_A/s+u_A+O(s),\quad U\Phi_0=M_AV_A/s+w_A+O(s),
$$

其中 $u_A=1+\sum_{B\ne A}M_B/R_{AB}$、$w_A=V_\infty+\sum_{B\ne A}M_BV_B/R_{AB}$。商展开给

$$
\partial_s\Phi_0\to\frac{w_A-V_Au_A}{M_A},\qquad
Q_A=M_AV_Au_A-M_Aw_A
=M_Av_A+\sum_{B\ne A}\frac{M_AM_B}{R_{AB}}(v_A-v_B).
$$

因此

$$
\mathbf Q=C\mathbf v,\quad
C_{AA}=M_A+\sum_{B\ne A}w_{AB},\quad C_{AB}=-w_{AB},
\quad w_{AB}=\frac{M_AM_B}{R_{AB}}. \tag{13}
$$

$C$ 是静电响应，不是自引力黑洞热力学电容。它的图形式 $C=D_M+L_w$ 直接给出

$$
\mathbf v^TC\mathbf v=\sum_AM_Av_A^2+
\sum_{A<B}w_{AB}(v_A-v_B)^2>0\quad(\mathbf v\ne0),
\qquad E=\frac12\mathbf v^TC\mathbf v. \tag{14–15}
$$

任意有向关联矩阵 $B$ 满足 $L_w=BWB^T$；每条边的二次型恰为 $w_{AB}(v_A-v_B)^2$。这既解释正定性，也给出任意中心数的代数证明；不是稀疏远距离近似。行和 $C\mathbf1=\mathbf M$ 导致总视界电荷 $\sum_AQ_A=\sum_AM_Av_A$。加入无穷远顶点，$C_{A\infty}=-M_A$、$C_{\infty\infty}=\sum_AM_A$，扩展矩阵行和为零，表示同时平移所有电势的冗余。

一般不等质量时 $\mathbf1$ 未必是普通 Euclidean 矩阵的本征向量；“共模无 pair-energy”不能误写为任意质量的共同本征值。等质量二元系统才有后面的简单本征模。

## V–VI：点源通量及三种 Green 核

点源在 $\mathbf a$，记 $U_a=U(\mathbf a)$、$a_A=|\mathbf a-\mathbf x_A|$。各视界与无穷远均接地的核为

$$
G_D(\mathbf x,\mathbf a)=\frac1{U(\mathbf x)U_a|\mathbf x-\mathbf a|},
\quad\mathcal L_UG_D=4\pi\delta^3(\mathbf x-\mathbf a). \tag{17}
$$

把 $UG_D$ 代入 (6)，源项的 $U(\mathbf x)/U_a$ 在 delta 支撑上等于一。其局部奇异系数是 $U_a^{-2}$，不是简单欧氏 Coulomb 系数。对电荷 $q$，近视界展开给

$$
Q_A^D=-q h_A(\mathbf a),\qquad q_\infty=q/U_a,
\qquad p_A=h_A(\mathbf a),\quad p_\infty=h_\infty(\mathbf a),\quad\sum p=1.
$$

这里负的视界感应电荷对应正的吸收份额。多源及非零电势的总响应是

$$
\Phi=V_\infty+\mathbf v^T\mathbf h(\mathbf x)+\sum_sq_sG_D(\mathbf x,\mathbf a_s),
\qquad\mathbf Q=C\mathbf v-\sum_sq_s\mathbf h(\mathbf a_s). \tag{20}
$$

添加 $\mathbf h(\mathbf x)^T\boldsymbol\alpha$ 是改变边界常数势的齐次解，电荷改变 $C\boldsymbol\alpha$。逐分支消去感应通量必须解 $C\boldsymbol\alpha=\mathbf h(\mathbf a)$，故

$$
G_Q=G_D+\mathbf h(\mathbf x)^TC^{-1}\mathbf h(\mathbf a). \tag{24}
$$

$C$ 对称保证 reciprocity；$C\mathbf1=\mathbf M$ 则保证全部单位源通量到无穷远。

原文 Appendix D 将 Frolov–Zelnikov 的 kernel 转为本约定后得到

$$
G_{\rm FZ}=G_D+\mathbf h(\mathbf x)^TD_M^{-1}\mathbf h(\mathbf a). \tag{21}
$$

它产生

$$
\delta Q_A^{\rm FZ}/q
=\bigl[-I+CD_M^{-1}\bigr]_{AB}h_B(\mathbf a)
=\frac{M_A}{U_a}\sum_{B\ne A}\frac{M_B}{R_{AB}}
\left(\frac1{a_A}-\frac1{a_B}\right). \tag{22}
$$

每对 $A,B$ 在求和后相消，故总视界电荷变化为零，但分量一般非零。本次独立复算确认这一通量性质；关于旧论文的原文意图和 Eq.(65)/(68) 归属仍是本文 Appendix D 的 source-derived 转述，未另行审计旧全文。

需要比原文概括更精确地说：$G_{\rm FZ}$ 是**一个**保持总视界电荷的对称 completion。仅给 $\sum_A\delta Q_A=0$ 这一个条件，并不足以唯一固定多个分支的势；不能把该 kernel 说成单凭总电荷约束所唯一确定。相比之下 $C$ 可逆使逐分支条件唯一决定这里的有限维齐次系数。

## VII：双中心中的差模

等质量 $M$、分离 $R$ 时

$$
C=M\begin{pmatrix}1+M/R&-M/R\\-M/R&1+M/R\end{pmatrix},
\quad\lambda_{\rm com}=M,\quad\lambda_{\rm dif}=M(1+2M/R).
$$

$v_1=\Delta V/2=-v_2$ 时 $Q_1=C_{\rm diff}\Delta V$，$C_{\rm diff}=M/2+M^2/R$，故其与差模本征值差一个二。$R\to0$ 时差模响应发散，但等势总响应为 $2M$；拓扑变化的差模不能从单中心模型反推。

对不等质量，令 $w=M_1M_2/R$：

$$
C^{-1}=\frac1{M_1M_2+w(M_1+M_2)}
\begin{pmatrix}M_2+w&w\\w&M_1+w\end{pmatrix}.
$$

定义

$$
K=\frac{M_1M_2}{R+M_1+M_2},\qquad
\chi=\frac{h_1}{M_1}-\frac{h_2}{M_2},
$$

则

$$
C^{-1}-D_M^{-1}=-K
\begin{pmatrix}1/M_1\\-1/M_2\end{pmatrix}
\begin{pmatrix}1/M_1&-1/M_2\end{pmatrix},
\quad G_Q-G_{\rm FZ}=-K\chi(\mathbf x)\chi(\mathbf a). \tag{29}
$$

这显示仅差模改变。固定外部位置下 $\chi=O(R)$，核差 $O(R^2)$，虽电容差模本征值发散，外部核仍可趋于单中心值。

文中给出的反例完全可复算：$M_1=M_2=M$，$R=4M$，$(a_1,a_2)=(M,3M)$。此时 $U_a=7/3$、$(p_1,p_2,p_\infty)=(3/7,1/7,3/7)$；FZ completion 的分支变化为 $(q/14,-q/14)$。因此总电荷检查会漏掉非零的跨视界转移。

## VIII：有限自能差、自力与物理适用域

两核的局部奇异场相同，它们的差在源点光滑。静态 reciprocal Green 函数的重整化 Killing 自能为 $q^2G_{\rm reg}(\mathbf a,\mathbf a)/2$，因而不需要额外 UV subtraction 就能算出**差**：

$$
\Delta E_{\rm self}=-\frac{q^2K}{2}\chi(\mathbf a)^2\le0. \tag{33}
$$

这没有给出任一 prescription 的绝对自能。用静态观察者的 $P_\mu{}^\nu=\delta_\mu{}^\nu+u_\mu u^\nu$，局部自力 covector 差为

$$
\Delta f_\mu=-N^{-1}P_\mu{}^\nu\nabla_\nu\Delta E_{\rm self}
=\frac{q^2K}{N}\chi P_\mu{}^\nu\nabla_\nu\chi. \tag{34}
$$

MP 的正交空间基再给一个 $U^{-1}$，与 $N^{-1}=U$ 相消，所以 $\Delta f_{\hat i}=q^2K\chi\partial_i\chi$。沿 coincident kernel 求导时两自变量贡献相等，不能保留自能的 $1/2$ 因子而漏掉另一导数。维持粒子静止的外力差号相反。

等质量中心置于 $z=\pm R/2$，$\zeta=z/M$、$\mathcal R=R/M$、$\widehat\chi=M\chi$。取视界1在负轴一侧，

$$
\widehat\chi=
\begin{cases}
-2\zeta/(\mathcal R^2/4+\mathcal R-\zeta^2),&|\zeta|<\mathcal R/2,\\
-\operatorname{sgn}(\zeta)\mathcal R/(\zeta^2+2|\zeta|-\mathcal R^2/4),&|\zeta|>\mathcal R/2.
\end{cases}
$$

$M\Delta E/q^2=-\widehat\chi^2/[2(\mathcal R+2)]$、$M^2\Delta f_{\hat z}/q^2=\widehat\chi\widehat\chi'/(\mathcal R+2)$。$\mathcal R=4$ 时视界极限为 $-q^2/(12M)$；远区能量与力分别按 $|z|^{-4}$、$|z|^{-5}$ 衰减。交换视界标签改变 $\chi$ 的号，不改变这些 observables。

spectator 场的电荷不支撑背景，extremality 本身不选择其系综。若是背景同一 Einstein–Maxwell 场，线性 Maxwell 扰动会通过背景场产生线性应力张量变化，须联立度规扰动。固定背景质量下逐分支 $\delta Q_A=0$ 可作为该 Maxwell sector 的边界条件，但本文没有解耦合问题；沿 MP 家族的变化满足 $\delta M_A=\operatorname{sgn}(Q_A)\delta Q_A$，不能把所有非零 $\delta Q_A$ 都叫“变成超极端”。

## IX 与 Appendices C–D：单中心、高维和归一化

单中心时 $L_w=0$，$C=M$，两个电荷 completion 重合；这正是只检查 RN 特例发现不了多中心差别的原因。正文 IX 提及的 Copson–Linet、非极端 RN 和 de Sitter mode sum 是已有背景方法，不是本文的新推导。

$D=n+3$ 维的 MP metric 为 $ds^2=-U^{-2}dt^2+U^{2/n}d\mathbf x^2$，$U=1+\sum_AM_A/r_A^n$，空间维数 $n+2$。$M_A$ 在这里是极点强度，换成 ADM mass 要另补重力归一化。由于指数相消，$\sqrt h\,h^{ij}/N=U^2\delta^{ij}$ 仍成立。令

$$
\alpha_n=\frac{n\Omega_{n+1}}{4\pi}=\frac{\pi^{n/2}}{\Gamma(n/2)},\quad
\beta_n=\alpha_n^{-1},\quad h_A=\frac{M_A}{r_A^nU}.
$$

电容矩阵是把 $1/R_{AB}$ 换成 $1/R_{AB}^n$ 并整体乘 $\alpha_n$；$G_D^{(D)}=\beta_n/[UU_a|\mathbf x-\mathbf a|^n]$，$G_Q^{(D)}=G_D^{(D)}+\mathbf h^T[C^{(D)}]^{-1}\mathbf h$。接地通量份额保持同一形式。$D\ge5$ 一般多中心视界延拓正则性有限，因此这是 exterior puncture-limit 结果，不能直接宣称光滑高维视界上的所有结构成立。

Appendix D 的旧文约定是 $A_0=-U^{-1}\psi=4\pi q\mathcal G_{00}$，本文 $A_0=-qG$，所以 $G=-4\pi\mathcal G_{00}$。转换后 FZ 对角项乘 $\beta_n$。近中心分子为 $S=\gamma_A/s^n+s_A+\cdots$，逐分支零通量要求

$$
\gamma_Au_A-M_A\sum_{B\ne A}\frac{\gamma_B}{R_{AB}^n}
=M_A(a_A^{-n}+b).
$$

令 $x_A=\gamma_A/M_A$、$b=0$，即

$$
x_A+\sum_{B\ne A}\frac{M_B}{R_{AB}^n}(x_A-x_B)=a_A^{-n}.
$$

它是完整响应矩阵方程；只取 $x_A=a_A^{-n}$ 会遗漏 cross terms。这个推导使用外部通量极限，避免了在 puncture 上直接乘奇异分布。

## 可复用的推导链与 CPS 翻译

Equation ledger：静态算子 (2) → MP/Doob (5)–(6) → 边界调和基 (7)–(9) → 通量 (10)–(13) → 能量/图 (14)–(16) → 接地响应 (17)–(20) → 两种 completion (21)–(24) → 双中心秩一差 (28)–(29) → 自能/力 (33)–(35) → 高维归一化 (C2)–(C6)。每一步的边界条件都参与下一步，局部源奇异性无法替代它们。

对本库而言，可直接复用的是边界响应矩阵作为有限维 DtN 数据、逐分支 Gauss 约束、有限秩 Green 修正和同一局部奇异场下的 observable 差。静态能量变分给 $\delta E=\mathbf Q^T\delta\mathbf v$，显示势和电荷是边界共轭响应变量；这不是完整 Lorentzian CPS 二形式的推导，也没有证明 dynamical edge-mode algebra。应把它作为检验“只匹配总 charge 会否丢失相对边界数据”的精确模型。

## Verification log

- `Checked`（Mathematica）：任意三变量函数 $U,\Psi$ 的 Doob 恒等式残差 0；近端通量极限为 $M_AV_Au_A-M_Aw_A$；高维度规指数为 2，球面积/Gamma 归一化残差 0。
- `Checked`（Sage）：三顶点带独立符号边权的关联矩阵构造，$v^TCv$ 与逐边平方和残差 0，行和残差为零。一般有限顶点数的同一恒等式由每条边贡献逐项相加得到；正质量严格正定性的论证在正文明确列出。
- `Checked`（Mathematica）：不等质量二元矩阵逆及秩一差残差均为零矩阵；$-h+CC^{-1}h=0$；FZ 分支通量之和为 0，$R=4M$ 例子的分支值为 $(1/14,-1/14)$。
- `Checked`（Mathematica）：轴内/轴外 harmonic measure 与 $\widehat\chi$ 公式差为零；$\mathcal R=4$ 近视界无量纲自能差为 $-1/12$。正轴远区的首项为 $-\mathcal R^2/[2(\mathcal R+2)\zeta^4]$ 和 $-2\mathcal R^2/[(\mathcal R+2)\zeta^5]$。
- `Checked`（xAct）：将 $\Delta E=-q^2K\chi^2/2$ 代入投影梯度，式 (34) 的张量表达残差 0；这只检查力与能量差的微分关系，不是独立正则化自力计算。
- `Checked`（PDF 视觉）：pp.3、5、7、8，确认电容/通量、双中心/自能/力、近端展开、球面积系数与 FZ 转换公式。正文其余部分以完整 TeX 核读。
- `Source-derived`：正则性排除奇异多极、全局有限能量唯一性及高维视界延拓限制；FZ 原论文的具体文献归属。本文 source/PDF 均成功取得。
- `Not independently verified`：完整 coupled Einstein–Maxwell 自力、任一系综的绝对重整化自能、所有高维视界正则性定理、图中全部曲线和旧文原始排版。附带 source 未发现正文所称的 plotting script；解析核查不依赖它。
- `Blocked`：无核心复算阻塞；重绘原图的原脚本不在本次官方源包中，故不声称逐图复现。
- `Failed`：本次核心算式没有失败残差。注意总电荷条件单独不能唯一指定 FZ completion，是边界数据充分性限制。

Verified: 所列精确代数、有限图检查、微分残差和 PDF 视觉定位。Assumptions: 正质量、不同中心、固定外部几何、源不在视界、Gaussian 源归一化。Not verified: 背景支撑场的耦合引力效应与绝对自力。
