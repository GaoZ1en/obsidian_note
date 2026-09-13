# 球对称 Einstein 引力的界面约束、辛约化与关系时间

2026-09-10。接续 [有限量子力学模型](relational-time-model.md)，本稿处理其中尚未建立的引力拼接步骤。

## 1. 结论及模型边界

**在下述四维真空球对称、静态外部区、固定球面半径及带边界参考钟的模型中，界面 moment map 和拼接辛约化可以从 Einstein 作用量建立。** 令共同界面半径为 $R_\Gamma$，则

$$
\boxed{\mu_\Gamma
=H_A^\Gamma+H_{B,i}^\Gamma
=E_\Gamma(m_A)-E_\Gamma(m_B),\qquad
E_R(m)=R\left(1-\sqrt{1-\frac{2m}{R}}\right).}
$$

本文取 $G=c=\hbar=1$；恢复单位后 $E_R(m)=R G^{-1}(1-\sqrt{1-2Gm/R})$。它是有限球面的 Brown–York 能量。内边界的负号由边界作用量的取向给出。

对本文明确构造的 framed regional phase spaces，

$$
\boxed{
\mathcal P^{\mathrm{fr}}_{A\cup_\Gamma B}
\simeq
\mu_\Gamma^{-1}(0)/\mathbb R
\simeq T^*J,
\qquad
\Omega_{A\cup B}=\delta m\wedge\delta(p_A+p_B).
}
$$

这里 $J$ 是公共允许质量区间，$p_A,p_B$ 含有边界钟的参考原点。上式的群是界面的实际非紧时间平移群 $\mathbb R$。

选定能量极化后，量子约束的普通 Hilbert 空间不变子空间为零；正确结果是分布式群平均得到

$$
\boxed{\mathcal H_{\mathrm{phys}}\simeq L^2(I_\Gamma,dE),\qquad
I_\Gamma=E_\Gamma(J),\qquad
(R_t\psi)(E)=e^{-iEt}\psi(E).}
$$

因此实际引力给出了能量匹配和关系薛定谔演化，但没有给出上一稿的有限离散谱或紧周期钟。本稿完成的是这个具体引力模型，不是任意时空、任意界面或完整 diffeomorphism group 的拼接定理。

## 2. 几何、边界条件与约定

选择三个固定的 areal radii

$$
0<R_0<R_\Gamma<R_o,
\qquad J=(m_-,m_+),\qquad 0<m_-<m_+<R_0/2.
$$

区域为

$$
A:[R_0,R_\Gamma]\times S^2,
\qquad B:[R_\Gamma,R_o]\times S^2.
$$

两者都是有限的引力壳层，$R_\Gamma$ 是人工界面；$R_0,R_o$ 是保留的物理边界。没有物质薄壳、宇宙学常数、电荷或角动量。这个选择不包含中心、视界及非球对称扰动。

保留内物理边界是一个明确的模型选择。若坚持 $A$ 是有正则中心的纯真空球体，球对称真空解的常质量及曲率不变量

$$
R_{abcd}R^{abcd}=48m^2/R^6
$$

要求 $m=0$，这个真空模型就没有可用的质量叠加。若要去掉内边界而保留非平凡历史，必须加入物质核心或另行处理黑洞内部/视界，不能在本模型里悄悄省去它。

在每个 timelike wall 上固定球面度量 $R_b^2d\Omega_2^2$、零角向 shift，并使用壁面 proper-time lapse $N_b(u)>0$：

$$
\gamma_b=-N_b(u)^2du^2+R_b^2d\Omega_2^2.
$$

时间端点的切片取为与壁正交，变分保持该条件和端点半径。更一般的 boost corner 在固定面积时也没有 $\delta A\wedge\delta\eta$ 的独立辛项，但本文不扩大到可变面积的 corner 相空间。

采用

$$
\Theta=\sum p\,\delta q,\qquad
\Omega=-\delta\Theta=\sum\delta q\wedge\delta p,
\qquad \iota_{X_H}\Omega=\delta H.
$$

因此 $\dot q=\partial_pH$、$\dot p=-\partial_qH$。使用相反的辛形式约定时，缩并公式也须同时反号。

## 3. 从引力作用量得到有限边界荷

取 Einstein–Hilbert 作用量、各类边界的 Gibbons–Hawking–York 项和相容的 corner 项：

$$
S=\frac1{16\pi}\int_M\sqrt{-g}\,\mathcal R
+\frac1{8\pi}\sum_{\partial M}\epsilon_n
\int_{\partial M}\sqrt{|\gamma|}\,K
-S_{\mathrm{ref}}+S_{\mathrm{corner}}.
$$

这里 $n$ 总是区域 outward normal，$\epsilon_n=n^an_a$。timelike walls 的 $\epsilon_n=+1$；内外 wall 的区别在 $n$ 的径向方向。$S_{\mathrm{ref}}$ 在每个定半径球面采用同取向的平直参考嵌入，两侧人工界面的参考项也采用相反取向。

令 $K_{ab}=\gamma_a{}^c\gamma_b{}^d\nabla_cn_d$。对 timelike wall 的协变度量变分，定义

$$
\delta S\big|_{\mathrm{wall}}
=\frac12\int\sqrt{-\gamma}\,\tau^{ab}\delta\gamma_{ab},
\qquad
\tau^{ab}=\frac1{8\pi}
\left[(K\gamma^{ab}-K^{ab})-(K_0\gamma^{ab}-K_0^{ab})\right].
$$

这是本文的 Brown–York 符号约定。边界能量由作用量对 lapse 的响应定义，而非预先设定为质量；原始定义参见 [Brown–York](https://arxiv.org/abs/gr-qc/9209012)。

在球对称真空解上，取 Schwarzschild 静态外部坐标

$$
ds^2=-F(R;m)dT^2+F(R;m)^{-1}dR^2+R^2d\Omega_2^2,
\qquad F(R;m)=1-\frac{2m}{R}>0.
$$

令 $s_b=+1$ 表示径向向外的 wall，$s_b=-1$ 表示径向向内的 wall，则 $n=s_b\sqrt F\,\partial_R$。在壁上用 proper time 和球面坐标写 mixed extrinsic curvature：

$$
K^a{}_b
=s_b\operatorname{diag}\left(
\frac{m}{R_b^2\sqrt{F_b}},\frac{\sqrt{F_b}}{R_b},\frac{\sqrt{F_b}}{R_b}
\right),
\qquad
K_0^a{}_b=s_b\operatorname{diag}(0,R_b^{-1},R_b^{-1}).
$$

单位壁面观察者 $u$ 测得

$$
\varepsilon_b=\tau^{ab}u_au_b
=\frac{s_b}{4\pi R_b}(1-\sqrt{F_b}),
\qquad
H_b=\int_{S^2}\sqrt\sigma\,\varepsilon_b=s_b E_{R_b}(m).
$$

将 $\delta\gamma_{uu}=-2N_b\delta N_b$ 代入作用量变分，得到

$$
\boxed{\delta S\big|_{\delta N_b}=-\int du\,H_b\delta N_b.}
$$

因此，一个从 $R_i$ 到 $R_o$ 的区域有边界 Hamiltonian

$$
H_X=N_oE_{R_o}(m)-N_iE_{R_i}(m).
$$

同一人工壁上的两侧荷分别为 $+E_\Gamma(m_A)$ 与 $-E_\Gamma(m_B)$，两个平直参考常数在它们的和中抵消。这个符号来自完整边界约定，未使用“两个正能量之和等于零”。

另一个独立的响应，即 outward wall 的角向压力，为

$$
\mathsf p_R=\frac1{8\pi R}
\left[\frac{1-m/R}{\sqrt{1-2m/R}}-1\right].
$$

它将在第 6 节用于检验能量匹配是否已经足以保证完整的球对称无薄壳拼接。

## 4. 解 bulk 约束，并保留完整辛结构

### 4.1 不先假定两个机械质量变量

在球对称 ADM 分解中写

$$
ds^2=-N^2du^2+\Lambda^2(dx+N^xdu)^2+R^2d\Omega_2^2.
$$

角向积分后，bulk action 的正则部分为

$$
S_{\mathrm{bulk,can}}=\int du\,dx\,
\left(P_\Lambda\dot\Lambda+P_R\dot R-N\mathcal H-N^x\mathcal H_x\right),
$$

$$
\mathcal H=-\frac{P_\Lambda P_R}{R}
+\frac{\Lambda P_\Lambda^2}{2R^2}
+\frac{RR''}{\Lambda}-\frac{RR'\Lambda'}{\Lambda^2}
+\frac{R'^2}{2\Lambda}-\frac\Lambda2,
\qquad
\mathcal H_x=P_RR'-\Lambda P_\Lambda'.
$$

工作于 $R'>0,\Lambda>0,F>0$ 的外部 chart。定义

$$
F=\left(\frac{R'}\Lambda\right)^2-\left(\frac{P_\Lambda}R\right)^2,
\qquad M=\frac R2(1-F),\qquad P_M=\frac{\Lambda P_\Lambda}{RF},
$$

$$
\overline P_R=\frac{\mathcal H_x-P_MM'}{R'}.
$$

直接微分可得两个 off-shell 恒等式：

$$
M'=-\frac1\Lambda\left(R'\mathcal H+\frac{P_\Lambda}{R}\mathcal H_x\right),
\qquad
\overline P_R=\frac1F\left(\frac{P_\Lambda}{R}\mathcal H
+\frac{R'}{\Lambda^2}\mathcal H_x\right).
$$

这个线性变换的行列式是 $-1/\Lambda\ne0$，故在声明的 chart 内

$$
\mathcal H=\mathcal H_x=0
\quad\Longleftrightarrow\quad M'=0,\quad\overline P_R=0.
$$

这说明空间中没有剩余的局域质量自由度；$M(x)=m$。上述质量变量变换沿用 [Kuchař 的 canonical chart](https://arxiv.org/abs/gr-qc/9403003)，这里另行检查其局部恒等式及有限壁的端点条件。

### 4.2 辛势中的空间端点项

定义

$$
W=\Lambda P_\Lambda+\frac{RR'}2
\log\frac{RR'-\Lambda P_\Lambda}{RR'+\Lambda P_\Lambda},
\qquad
\beta=-\frac{R\delta R}2
\log\frac{RR'-\Lambda P_\Lambda}{RR'+\Lambda P_\Lambda}.
$$

$F>0,R'>0$ 保证 $RR'>|\Lambda P_\Lambda|$，两个对数分子分母均为正。逐项变分得到

$$
P_\Lambda\delta\Lambda+P_R\delta R
-P_M\delta M-\overline P_R\delta R
=\delta W+\partial_x\beta.
$$

在区域的两个端点，固定 areal radius 意味着 $\delta R_b=0$，所以 $[\beta]_i^o=0$；剩余 $\delta\int Wdx$ 为场空间 exact term，不改变辛形式。施加 bulk 约束后，

$$
\Theta_{X,\mathrm{emb}}=p_{X,\mathrm{emb}}\delta m,
\qquad p_{X,\mathrm{emb}}=\int_XP_Mdx,
\qquad \Omega_{X,\mathrm{emb}}=\delta m\wedge\delta p_{X,\mathrm{emb}}.
$$

在解上 $P_M=-T'$，所以 $p_{X,\mathrm{emb}}=T_i-T_o$。这一系数已从引力辛势得到，未加入一个任意的振子。

反向重建公式为

$$
\Lambda^2=F^{-1}R'^2-FP_M^2>0,\qquad
P_\Lambda=\frac{RFP_M}{\Lambda},\qquad
P_R=\frac{\Lambda P_\Lambda'+P_MM'}{R'}
\quad(\overline P_R=0).
$$

约束上的 $R(x),T(x)$ 是剩余的径向及切片嵌入数据；商去在固定端点框架下的这些 bulk embedding 变换后，留下质量和相对边界数据。有限 timelike wall 下相同的 Hamiltonian reduction 及边界能量结构也见 [Louko–Whiting](https://arxiv.org/abs/gr-qc/9411017)；本稿没有采用该文的 bifurcation-sphere 边界条件。

### 4.3 为什么必须说明边界 frame，而不能直接写全局 $T^*J$

若只保留实际 spacelike cut 的两端位置，则

$$
|p_{X,\mathrm{emb}}|<\int_{R_i}^{R_o}\frac{dR}{F(R;m)}.
$$

因此有限壳层的嵌入时间差有界。任意大的单壁时间平移不保持这个切片域，不能在这个未扩展的空间上直接宣称存在完整的 $\mathbb R$ 群作用。

本稿使用的 $\mathcal P_X^{\mathrm{fr}}$ 保留边界参考钟的原点。它们可由已经存在的边界源参数化得到：将 $N_i=\dot\tau_i,N_o=\dot\tau_o$ 代回边界作用量，$\tau_i,\tau_o$ 是边界 proper-time 坐标的原始函数，原点各自可取任意实数。此时约束后的辛势是

$$
\Theta_X^{\mathrm{par}}
=p_{X,\mathrm{emb}}\delta m
+E_{R_i}(m)\delta\tau_i-E_{R_o}(m)\delta\tau_o.
$$

没有给时钟另加任意动能；其共轭荷恰为作用量给出的边界能量。计算得到

$$
-\delta\Theta_X^{\mathrm{par}}
=\delta m\wedge\delta p_X,
\qquad
\boxed{p_X=p_{X,\mathrm{emb}}
+E_{R_o}'(m)\tau_o-E_{R_i}'(m)\tau_i.}
$$

因此这个参数化空间的核恰为保持 $m,p_X$ 不变的两个独立方向。对这些方向作商，保留刚性边界 frame 变换，得到

$$
\mathcal P_X^{\mathrm{fr}}=\{(m,p_X):m\in J,\ p_X\in\mathbb R\},
\qquad \Omega_X=\delta m\wedge\delta p_X.
$$

这一步的全局性可以直接检查：任取 $(m,p_X)$，选 $T'=0$ 的允许切片使 $p_{X,\mathrm{emb}}=0$，再选择两个参考钟原点即可实现任意 $p_X$；相同 $(m,p_X)$ 的参数化代表构成连通核叶。大幅改变参考原点不要求把切片端点推到彼此类时的位置。

本文的“扩展区域相空间”精确指这个带参考钟的相空间。若不保留这些 frame，结论至多是在允许切片域中的局部关系，不能沿用本稿的全局辛商及非紧群平均。

## 5. 界面 moment map 的直接计算

在 $\mathcal P_A^{\mathrm{fr}}\times\mathcal P_B^{\mathrm{fr}}$ 上，

$$
\Omega_{AB}=\delta m_A\wedge\delta p_A
+\delta m_B\wedge\delta p_B.
$$

共同壁面 proper-time 平移的两侧 Hamiltonian 是 $E_\Gamma(m_A)$ 和 $-E_\Gamma(m_B)$。因此对固定的实参数 $s$，

$$
\delta_s m_A=\delta_s m_B=0,\qquad
\delta_s p_A=-sE_\Gamma'(m_A),\qquad
\delta_s p_B=+sE_\Gamma'(m_B),
$$

$$
E_\Gamma'(m)=\frac1{\sqrt{1-2m/R_\Gamma}}>0.
$$

这是两侧同一个界面 frame 平移：在参数化代表上共同改变时钟原点 $\tau_\Gamma\mapsto\tau_\Gamma-s$，因两侧荷取向相反而对 $p_A,p_B$ 产生相反变化。这里采用 active evolution 对应参考坐标原点后移的约定。

直接缩并：

$$
\boxed{
\iota_{\delta_s}\Omega_{AB}
=s\delta\left[E_\Gamma(m_A)-E_\Gamma(m_B)\right]
=\delta\mu_\Gamma[s].
}
$$

$\mu_\Gamma[s]=s\mu_\Gamma$ 是该 $\mathbb R$ 作用的 moment map。其 equivariance 在这个 Abelian 模型中由 $\{\mu_\Gamma,\mu_\Gamma\}=0$ 直接成立，没有中心扩张。

注意 proper-time 归一化是固定的边界源约定。若把生成向量改写成 Schwarzschild 坐标中的 $F_\Gamma^{-1/2}\partial_T$，系数会随质量变化；不能忘记这个变化后把有限壁面的 Hamiltonian 换成 $m$ 或 $\sqrt{F_\Gamma}E_\Gamma$。

## 6. Release 给出零 level，且确实没有剩余薄壳

识别界面的球面度量与 proper-time lapse：

$$
R_{A,o}=R_{B,i}=R_\Gamma,
\qquad N_{A,o}(u)=N_{B,i}(u)=\lambda(u).
$$

识别后共同源仍可保持固定；要得到拼接的 Euler–Lagrange 条件，须释放 $\lambda$ 的共同变分。总作用量中该源的项为

$$
S_\Gamma=-\int du\,\lambda(u)
\left[E_\Gamma(m_A)-E_\Gamma(m_B)\right].
$$

因此

$$
\frac{\delta(S_A+S_B)}{\delta\lambda(u)}=-\mu_\Gamma=0.
$$

正 lapse 的开集允许任意充分小的局部变分，这不要求把 lapse 取为零。

参数化边界钟时还须保留这个变分域：若写 $\lambda=\dot\tau_\Gamma$，则

$$
\delta_{\tau_\Gamma}S_\Gamma
=\int du\,\dot\mu_\Gamma\delta\tau_\Gamma
-[\mu_\Gamma\delta\tau_\Gamma]_{u_1}^{u_2}.
$$

只变分一个两端读数均固定的钟，只能推出 $\dot\mu_\Gamma=0$。与任意 $\delta\lambda$ 等价的 release 必须允许累计读数的零模变化，例如固定 $\tau_\Gamma(u_1)$ 而释放 $\tau_\Gamma(u_2)$；于是端点项同时给出 $\mu_\Gamma=0$。第 4 节用钟参数化建立辛结构，没有用固定端点的钟变分替代这里的独立 lapse release。

因此由单调性得到

$$
\boxed{\mu_\Gamma=0\quad\Longleftrightarrow\quad m_A=m_B.}
$$

这不仅匹配了一个能量数字。两侧质量相等后，$F_\Gamma$、$F'_\Gamma$ 都相等；结合共同 induced metric，第 3 节的完整 mixed extrinsic curvature 满足

$$
K_A{}^a{}_b+K_{B,i}{}^a{}_b=0.
$$

于是角向压力、能量及其余球对称壁面响应同时抵消，Israel 型薄壳应力为零。选相容的常数 Killing-time 平移后，两侧都是同一个 Schwarzschild 几何在相邻径向区间上的限制，故可光滑重建整体解。

反过来，一个光滑的球对称真空整体解具有同一个常质量，切开后必满足上述条件。**在这个固定半径真空扇区中，能量匹配充分；有物质、额外荷或可变界面几何时，这个充分性证明不再适用。**

还有一个逻辑区别：从 moment-map 缩并和退化方向只能推得 $\delta\mu_\Gamma=0$，即它在连通叶上为常数。这里将 level 确定为零，使用的是共同源的变分方程及两侧相容的参考项，而不只是辛退化性。

## 7. 完整的辛商：核、像和几何重建

零 level 是三维流形

$$
\mathcal C_\Gamma
=\{m_A=m_B=m\in J,\ p_A,p_B\in\mathbb R\}.
$$

限制辛形式得到

$$
\Omega_{AB}\big|_{\mathcal C_\Gamma}
=\delta m\wedge\delta(p_A+p_B).
$$

其秩为 $2$，完整核为

$$
\ker\Omega_{\mathcal C_\Gamma}
=\operatorname{span}\{-\partial_{p_A}+\partial_{p_B}\}
=\operatorname{span}\{X_{\mu_\Gamma}\}.
$$

$E_\Gamma'(m)$ 在 $J$ 上光滑且非零，群作用

$$
(m,p_A,p_B)\longmapsto
(m,p_A-sE_\Gamma'(m),p_B+sE_\Gamma'(m))
$$

自由且 proper。定义拼接映射

$$
q_\Gamma:\mathcal C_\Gamma\longrightarrow T^*J,
\qquad q_\Gamma(m,p_A,p_B)=(m,p_A+p_B).
$$

该映射满射：任取 $(m,p)$，选 $p_A=0,p_B=p$。若两个零 level 点具有相同像，则其 $p_A$ 差总可由唯一的 $s$ 消去，所以纤维恰是一条规范轨道，没有剩余离散识别或稳定子。

整体区域的引力辛势也独立给出同样结果。bulk 项按径向区间相加；在一个共同界面钟代表中，

$$
\begin{aligned}
p_A&=p_{A,\mathrm{emb}}+E_\Gamma'\tau_\Gamma-E_{R_0}'\tau_0,\\
p_B&=p_{B,\mathrm{emb}}+E_{R_o}'\tau_o-E_\Gamma'\tau_\Gamma,
\end{aligned}
$$

故

$$
p_A+p_B=p_{A\cup B,\mathrm{emb}}+E_{R_o}'\tau_o-E_{R_0}'\tau_0
=p_{A\cup B}.
$$

不同的共同界面 frame 代表由上面的规范轨道联系。第 6 节保证每个约束点能重建光滑真空几何；第 4 节保证质量和这个总 $p$ 已穷尽带 frame 的约化数据。因此

$$
\boxed{
\mathcal P^{\mathrm{fr}}_{A\cup_\Gamma B}
\cong(\mathcal P^{\mathrm{fr}}_A\times\mathcal P^{\mathrm{fr}}_B)//_0\mathbb R,
\qquad q_\Gamma^*\Omega_{A\cup B}=\Omega_{\mathcal C_\Gamma}.
}
$$

这里有实际的几何重建、满射、完整核与纤维证明，结论没有仅靠维数相同或“两个荷相加”得出。

## 8. 不同切割位置的顺序一致性

将径向区间分成连续三段，并允许两个界面处于不同半径 $R_1,R_2$。约束为

$$
\mu_1=E_{R_1}(m_1)-E_{R_1}(m_2),\qquad
\mu_2=E_{R_2}(m_2)-E_{R_2}(m_3).
$$

二者只依赖质量变量，因此 $\{\mu_1,\mu_2\}=0$。共同零 level 等价于 $m_1=m_2=m_3=m$，其辛形式为

$$
\delta m\wedge\delta(p_1+p_2+p_3).
$$

两个规范方向独立，分别改变相邻一对 $p$ 而保持总和。无论先约化哪一个界面，都得到 $(m,p_1+p_2+p_3)$，且与整体引力辛势一致。这是实际不同半径球面处的拼接一致性，未把两个不同的有限边界能量误作同一个函数。

## 9. 接缝约束的量子化与物理内积

### 9.1 指定量子化程序

先精确解球对称 bulk 约束，得到上一节的 framed 相空间，再选 Schrödinger 能量极化。本文证明的是：在这个量子化选择下，对接缝做 Dirac 群平均，与先做接缝辛约化再量子化一致。不声称与任意未约化 ADM 算符排序或完整四维量子引力定义等价。

以共同界面能量作为两侧坐标：

$$
E=E_\Gamma(m),\qquad \pi=\frac{p}{E_\Gamma'(m)},\qquad
\delta m\wedge\delta p=\delta E\wedge\delta\pi.
$$

由于

$$
m(E)=E-\frac{E^2}{2R_\Gamma},\qquad
\frac{dm}{dE}=1-\frac E{R_\Gamma}>0,
$$

这是 $J$ 与有限开区间 $I=I_\Gamma\subset(0,R_\Gamma)$ 之间的全局坐标变换。选

$$
\mathcal H_A^{\mathrm{ext}}=L^2(I,dE_A),\qquad
\mathcal H_B^{\mathrm{ext}}=L^2(I,dE_B),
\qquad \mathcal H_{\mathrm{kin}}=L^2(I^2,dE_A dE_B).
$$

各 Hamiltonian 及约束是乘法算符：

$$
H_A^\Gamma=E_A,\qquad H_{B,i}^\Gamma=-E_B,
\qquad (\widehat\mu_\Gamma\Psi)(E_A,E_B)=(E_A-E_B)\Psi(E_A,E_B).
$$

在声明的能量带上它们都是有界自伴算符，定义域为全 Hilbert 空间。不需要先给 $-i\partial_E$ 选择自伴边界条件；也不假定存在与有界能量精确正则共轭的自伴时间算符。

### 9.2 普通不变子空间为什么为零

若 $\widehat\mu_\Gamma\Psi=0$ 且 $\Psi\in L^2(I^2)$，则 $\Psi$ 只能支撑在 $E_A=E_B$ 上。对角线的二维 Lebesgue 测度为零，所以

$$
\boxed{\ker_{\mathcal H_{\mathrm{kin}}}\widehat\mu_\Gamma
=\operatorname{Inv}_{\mathbb R}(\mathcal H_{\mathrm{kin}})=\{0\}.}
$$

因此对话里的普通 $\operatorname{Inv}$ 写法，不能不加修改地用于此连续谱模型。这不是引力拼接失败，而是非紧约束必须使用物理内积和分布态。

### 9.3 Rigging map 的完整计算

取稠密测试空间 $\mathcal D=C_c^\infty(I^2)$，定义 sesquilinear form

$$
\langle\eta\phi,\eta\psi\rangle_{\mathrm{phys}}
=\int_{\mathbb R}\frac{ds}{2\pi}
\langle\phi,e^{-is\widehat\mu_\Gamma}\psi\rangle_{\mathrm{kin}}.
$$

在此测试空间上，被积函数是一个光滑紧支撑能量差函数的 Fourier transform，群平均有定义。用 Fourier delta identity 得到

$$
\boxed{
\langle\eta\phi,\eta\psi\rangle_{\mathrm{phys}}
=\int_I dE\,\overline{\phi(E,E)}\psi(E,E).
}
$$

令 $Q\phi(E)=\phi(E,E)$。这个 form 非负，null space 恰为 $Q\phi=0$。任意紧支撑光滑单变量函数都能通过沿对角线的光滑延拓成为 $Q\phi$，故 $Q\mathcal D$ 在 $L^2(I,dE)$ 中稠密。商去 null space 再完备化，严格得到

$$
\mathcal H_{\mathrm{phys}}=\overline{\mathcal D/\ker Q}^{\|Q\cdot\|}
\simeq L^2(I,dE).
$$

对应的物理分布可形式写作

$$
\Psi_{\mathrm{phys}}(E_A,E_B)=\delta(E_A-E_B)\psi(E_A),
$$

但它的范数用上面的物理内积计算，不能在运动学范数中平方 delta function。离散能量标签的直和相应变成直接积分

$$
\mathcal H_{\mathrm{phys}}
\simeq\int_I^\oplus dE\,
\left(\mathcal H_{A,E}\otimes\mathcal H_{B,-E}\right),
$$

其中各纤维在本模型中为一维；右式是带上述谱测度的物理 Hilbert 空间，不是 $L^2(I^2)$ 中的非零闭子空间。

### 9.4 与经典辛约化一致，且不依赖人为切割

经典能量坐标中的零 level 为 $E_A=E_B=E$，群作用是

$$
\pi_A\mapsto\pi_A-s,\qquad\pi_B\mapsto\pi_B+s.
$$

商空间为 $(E,\pi_A+\pi_B)$，辛形式 $\delta E\wedge\delta(\pi_A+\pi_B)$；选同一能量极化，其量子 Hilbert 空间恰为 $L^2(I,dE)$。这给出了本模型内显式的“接缝约化与量子化相容”，无需援引普适的 quantization-commutes-with-reduction 定理。

若从质量极化 $L^2(J^2,dm_A dm_B)$ 开始，同一个 proper-time 约束的群平均使用

$$
\delta(E_\Gamma(m_A)-E_\Gamma(m_B))
=\frac{\delta(m_A-m_B)}{E_\Gamma'(m_A)}.
$$

物理测度因此为 $dm/E_\Gamma'(m)$；与能量极化之间还须带上运动学换元的平方根 Jacobian。不能先把约束改成 $m_A-m_B$，然后原封不动沿用原来的群参数和内积。

具体地，质量运动学种子 $\chi(m_A,m_B)$ 对应的能量物理波函数是 $\psi(E_\Gamma(m))=\chi(m,m)/E_\Gamma'(m)$，其 $L^2(dE)$ 范数正好等于 $\int_Jdm\,|\chi(m,m)|^2/E_\Gamma'(m)$。

不同切割半径所用的 $E_1(m),E_2(m)$ 坐标之间，有显式幺正映射

$$
\psi_2(E_2(m))
=\sqrt{\frac{E_1'(m)}{E_2'(m)}}\,\psi_1(E_1(m)).
$$

也可统一映到 $L^2(J,dm)$，用 $\psi_m(m)=\sqrt{E_\Gamma'(m)}\psi(E_\Gamma(m))$。所以选择人工切割半径不会改变物理 Hilbert 空间；它改变的是所用钟的能量坐标与时间标定。

## 10. 引力边界钟与关系演化

在 $\mathcal H_B=L^2(I,dE)$ 中，定义协变 phase POVM

$$
\langle E|t\rangle=\frac1{\sqrt{2\pi}}e^{iEt},\qquad
F_B(dt)=|t\rangle\langle t|dt,\qquad t\in\mathbb R.
$$

Fourier 完备性给出 $\int_{\mathbb R}F_B(dt)=1_B$，并且

$$
e^{-isH_{B,i}}|t\rangle=|t+s\rangle.
$$

有限能量带 $I=(E_-,E_+)$ 下钟态范数为 $(E_+-E_-)/(2\pi)$，不规定为 $1$。令 $\Delta=t'-t$，它们的重叠是

$$
\langle t|t'\rangle
=e^{i(E_++E_-)\Delta/2}
\frac{\sin((E_+-E_-)\Delta/2)}{\pi\Delta},
$$

在 $\Delta=0$ 取连续极限。这是非周期的有限带宽钟。

在物理能量表示中，clock reduction 定义为

$$
\boxed{R_t:\psi(E)\mapsto\psi_t(E)=e^{-iEt}\psi(E).}
$$

它等价于对上述物理分布在 $B$ 上用 $\langle t|$ 配对后乘上 $\sqrt{2\pi}$，是 $\mathcal H_{\mathrm{phys}}$ 到条件 Hilbert 空间 $L^2(I,dE)$ 的等距同构。因此

$$
i\partial_t\psi_t(E)=E\psi_t(E),\qquad
R_{t_2}R_{t_1}^{\dagger}=e^{-iE(t_2-t_1)}.
$$

对条件空间上的任意有界可观测量 $O$，$\mathcal O_t=R_t^\dagger O R_t$ 给出物理空间上的关系可观测量，并保持乘法和伴随。

这里不能像有限周期模型那样在整个 $\mathbb R$ 上写一个归一化的均匀 $p(t)$。物理态本来就是分布，不是可在运动学空间做普通偏迹的 trace-class 密度矩阵；条件统计用物理内积与 $R_t$ 定义。这一点也意味着不能直接搬用上一稿的有限 Schmidt 熵或 Bell-state 纠缠数值。已建立的是物理能量关联和关系动力学。

对于允许对角线限制的乘积种子 $c(E_A)\alpha(E_B)$，群平均保留 $c(E)\alpha(E)$；边界钟种子的相干读出承担与上一稿相同的能量过滤作用。引力约束决定匹配条件，不决定质量叠加系数或时钟的实际测量装置。

## 11. 保留下来的真实边界 Hamiltonian 与红移

施加接缝约束后，人工壁源项消失，而两个真实边界项为

$$
H_{A\cup B}(u)
=N_o(u)E_{R_o}(m)-N_0(u)E_{R_0}(m).
$$

特别地，外边界的 surface Hamiltonian 是 $H_o=E_{R_o}(m)$，且 $\{H_o,\mu_\Gamma\}=0$。这里保留了物理内边界，故不能把完整演化 Hamiltonian 无条件写成只有 $H_o$。

令 $\tau_o,\tau_0$ 表示相应 lapse 的积分，给定界面条件读数 $t$，能量表示中的态为

$$
\psi(E;t,\tau_o,\tau_0)
=\exp\left[-iEt-iE_{R_o}(m(E))\tau_o
+iE_{R_0}(m(E))\tau_0\right]\psi(E).
$$

只比较外边界演化时，其相位函数一般不是 $E(t+\tau_o)$。经典局部标定的导数为

$$
\frac{dE_{R_o}}{dE_\Gamma}
=\frac{E_{R_o}'(m)}{E_\Gamma'(m)}
=\sqrt{\frac{F_\Gamma(m)}{F_o(m)}}.
$$

它依赖质量，因此质量叠加中并无统一的、与状态无关的刚性时间平移。这是实际有限引力边界相对于原先 matched Hamiltonian toy model 增加的结构。窄质量波包可以在线性展开下使用近似固定红移，但本稿的精确公式没有作该近似。

界面规范平移对物理态不变，外部边界动力学一般改变物理态；二者在这里仍然严格不同。

## 12. 对原提议的精确回答

在本模型中，链条是

$$
\begin{aligned}
&S_{\mathrm{EH+GHY}}\ \longrightarrow\
\text{有限壁面响应 }H_A^\Gamma+H_{B,i}^\Gamma,\\
&\text{识别并释放共同 lapse}\ \longrightarrow\
\mu_\Gamma=E_\Gamma(m_A)-E_\Gamma(m_B)=0,\\
&\text{无薄壳几何匹配及界面 frame 商}\ \longrightarrow\
\mathcal P^{\mathrm{fr}}_{A\cup B}\simeq T^*J,\\
&\text{接缝的 rigging-map 量子化}\ \longrightarrow\
\mathcal H_{\mathrm{phys}}\simeq L^2(I,dE),\\
&\text{边界钟关系约化}\ \longrightarrow\
i\partial_t\psi_t=E\psi_t.
\end{aligned}
$$

因此，**“在某个真实有限引力模型中，从拼接导出时间匹配约束，并接上关系薛定谔演化”这件事已经在声明的模型内完成。** 完成它需要保留两项原提议未写出的数据：边界 frame 所属的实际相空间，以及非紧群约束的物理内积。

更普遍地，如果两个同群作用都已具有可积、相容的 Hamiltonian moment maps，那么直乘上的 diagonal moment map 确实是二者之和。但这条代数事实本身不证明几何拼接就是辛商，也不解决荷的参考常数、场依赖生成元、通量、稳定子及量子异常。

本稿之所以能继续证明辛商等式，是因为固定半径球对称真空的单调能量匹配穷尽了几何响应，而参数化的边界钟使界面群作用完整。超出这些条件时，原来的普遍等式仍须逐模型证明，不能由本例直接推广。

## 13. 来源与结论层级

- [Brown–York, gr-qc/9209012](https://arxiv.org/abs/gr-qc/9209012)：引力作用量的有限边界能量定义。本文使用自己的 outward-normal 和协变边界度量变分约定，并显式重算能量及压力。
- [Kuchař, gr-qc/9403003](https://arxiv.org/abs/gr-qc/9403003)：球对称 canonical chart。核对到 PDF 第 27 页的 Liouville identity 与端点项、第 31 页的 mass-constraint identity，并用独立 jets 重算。
- [Louko–Whiting, gr-qc/9411017](https://arxiv.org/abs/gr-qc/9411017)：有限 timelike wall 的 Hamiltonian reduction。核对到 PDF 第 12 页的 reduced action；其视界项不属于本稿的两 timelike wall setup。

Verified: 33 项 Mathematica 精确代数检查、6 组 xAct/xCoba 几何残差全部通过。正文另给出完整商空间的核、满射、纤维、几何重建及 rigging-map 内积证明；没有把有限次计算当作这些全局论证的替代。详见 [引力阶段验证记录](gravity-verification.md)。

Assumptions: 四维真空球对称；$R_0<R_\Gamma<R_o$ 固定；公共质量区间 $J\Subset(0,R_0/2)$；无视界、无正则中心、无物质薄壳；固定球面几何与相容参考减除；保留参数化边界钟原点；先解 bulk 约束，再选上述能量极化。

Not verified: 非球对称或辐射引力的完整界面群；可变界面面积及独立 corner 动力学；包含核心物质或穿越视界的版本；与任意未约化 ADM 量子算符排序的等价；边界钟装置的物理实现。这些不影响本稿给出的球对称模型内结论。
