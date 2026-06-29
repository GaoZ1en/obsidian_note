---
title: 超对称速查表
date: 2026-06-28
summary: "Jun Nian 超对称课程开卷考试速查表，按作业主线整理：二分量旋量、N=1 超空间、Wess-Zumino 模型、SUSY 破缺、SQCD 一环抵消、holomorphy、非重整化定理和 Seiberg 对偶。"
---

# 超对称速查表

## 0. 开卷优先级

1. 先固定约定：度规、$\sigma^\mu,\bar\sigma^\mu$、旋量缩并，以及 SUSY 变换是 on-shell 还是 off-shell。
2. 做分量展开题时，从超空间作用量出发，直接读出 $F W_i-\frac12 W_{ij}\psi_i\psi_j+\mathrm{h.c.}$。
3. 做 SUSY 破缺题时，先写出所有 $F$-flatness 和 $D$-flatness 方程，再讨论真空。
4. 做 SQCD loop 题时，只保留二次发散部分，并追踪相对系数 $1-4-1+4$。
5. 做 holomorphy 题时，把耦合常数提升为 chiral spurion，施加全局荷和维数限制，再用弱耦合匹配固定系数。
6. 做 Seiberg 对偶异常匹配时，用 Weyl fermion 的荷，不要用 superfield 的荷。

## 1. 旋量和 sigma 矩阵约定

作业使用的约定是

$$\begin{align}
\eta_{\mu\nu}=(1,-1,-1,-1),\qquad \sigma^\mu=(\mathbb I,\sigma^i),\qquad \bar\sigma^\mu=(\mathbb I,-\sigma^i).
\end{align}$$

基本 Clifford 恒等式是

$$\begin{align}
\sigma^\mu\bar\sigma^\nu+\sigma^\nu\bar\sigma^\mu&=2\eta^{\mu\nu}\mathbb I,\\
\bar\sigma^\mu\sigma^\nu+\bar\sigma^\nu\sigma^\mu&=2\eta^{\mu\nu}\mathbb I.
\end{align}$$

常用缩并：

$$\begin{align}
\operatorname{tr}(\sigma^\mu\bar\sigma^\nu)&=2\eta^{\mu\nu},\\
(\sigma^\mu)_{\alpha\dot\alpha}(\bar\sigma_\mu)^{\dot\beta\beta} &=2\delta_\alpha{}^\beta\delta_{\dot\alpha}{}^{\dot\beta},\\
(\sigma^\mu)_{\alpha\dot\alpha}(\sigma_\mu)_{\beta\dot\beta} &=2\epsilon_{\alpha\beta}\epsilon_{\dot\alpha\dot\beta}.
\end{align}$$

对 Grassmann 旋量，作业中要用的恒等式是

$$\begin{align}
\psi^\dagger\bar\sigma^\mu\chi&=-\chi\sigma^\mu\psi^\dagger,\\
\psi^\dagger\bar\sigma^\mu\sigma^\nu\chi^\dagger &=\chi^\dagger\bar\sigma^\nu\sigma^\mu\psi^\dagger.
\end{align}$$

证明 sigma 矩阵恒等式时，把情况分成 $(0,0)$、$(0,i)$、$(i,0)$ 和 $(i,j)$。空间分量用

$$\begin{align}
\{\sigma^i,\sigma^j\}=2\delta^{ij}\mathbb I.
\end{align}$$

## 2. 四维 $\mathcal N=1$ SUSY 代数

超 Poincare 代数是

$$\begin{align}
\{Q_\alpha,\bar Q_{\dot\beta}\} &=2(\sigma^\mu)_{\alpha\dot\beta}P_\mu,\\
\{Q_\alpha,Q_\beta\}&=0,\qquad \{\bar Q_{\dot\alpha},\bar Q_{\dot\beta}\}=0,\\
[Q_\alpha,P_\mu]&=[\bar Q_{\dot\alpha},P_\mu]=0.
\end{align}$$

在静止系中，这个代数推出 $H\geq0$。超对称真空满足

$$\begin{align}
Q_\alpha\ket 0=\bar Q_{\dot\alpha}\ket 0=0,
\end{align}$$

因此真空能为零。

对 off-shell chiral multiplet $(\phi,\psi_\alpha,F)$，课堂笔记中的约定是

$$\begin{align}
\delta_\epsilon\phi&=\sqrt2\,\epsilon^\alpha\psi_\alpha,\\
\delta_\epsilon\psi_\alpha&=i\sqrt2(\sigma^\mu\bar\epsilon)_\alpha\partial_\mu\phi +\sqrt2\,\epsilon_\alpha F,\\
\delta_\epsilon F&=i\sqrt2\,\bar\epsilon_{\dot\alpha} (\bar\sigma^\mu)^{\dot\alpha\beta}\partial_\mu\psi_\beta.
\end{align}$$

对易子 off-shell 闭合：

$$\begin{align}
[\delta_\epsilon,\delta_\eta] =2i(\epsilon\sigma^\mu\bar\eta-\eta\sigma^\mu\bar\epsilon)\partial_\mu.
\end{align}$$

如果消去 $F$，并使用 free Wess-Zumino 的 on-shell 变换，那么在 $\psi_\alpha$ 上闭合需要 Weyl 方程

$$\begin{align}
\bar\sigma^\mu\partial_\mu\psi=0.
\end{align}$$

在作业的归一化中，

$$\begin{align}
\delta\phi=\epsilon^\alpha\psi_\alpha,\qquad \delta\psi_\alpha=-i(\sigma^\mu\epsilon^\dagger)_\alpha\partial_\mu\phi,
\end{align}$$

并且

$$\begin{align}
[\delta_{\epsilon_2},\delta_{\epsilon_1}]\psi_\alpha \approx \epsilon^\mu P_\mu\psi_\alpha,\qquad \epsilon^\mu=-\epsilon_2\sigma^\mu\epsilon_1^\dagger +\epsilon_1\sigma^\mu\epsilon_2^\dagger.
\end{align}$$

符号 $\approx$ 表示已经使用运动方程之后相等。

## 3. 超空间

超空间坐标是

$$\begin{align}
z^M=(x^\mu,\theta^\alpha,\bar\theta_{\dot\alpha}).
\end{align}$$

一种常用的微分算符表示是

$$\begin{align}
Q_\alpha&=\frac{\partial}{\partial\theta^\alpha} -i(\sigma^\mu\bar\theta)_\alpha\partial_\mu,\\
\bar Q_{\dot\alpha}&=-\frac{\partial}{\partial\bar\theta^{\dot\alpha}} +i(\theta\sigma^\mu)_{\dot\alpha}\partial_\mu,
\end{align}$$

所以

$$\begin{align}
\{Q_\alpha,\bar Q_{\dot\beta}\} =2i(\sigma^\mu)_{\alpha\dot\beta}\partial_\mu.
\end{align}$$

协变导数是

$$\begin{align}
D_\alpha&=\frac{\partial}{\partial\theta^\alpha} +i(\sigma^\mu\bar\theta)_\alpha\partial_\mu,\\
\bar D_{\dot\alpha}&=-\frac{\partial}{\partial\bar\theta^{\dot\alpha}} -i(\theta\sigma^\mu)_{\dot\alpha}\partial_\mu,
\end{align}$$

满足

$$\begin{align}
\{D_\alpha,\bar D_{\dot\beta}\} =-2i(\sigma^\mu)_{\alpha\dot\beta}\partial_\mu,\qquad \{D,Q\}=\{D,\bar Q\}=\{\bar D,Q\}=\{\bar D,\bar Q\}=0.
\end{align}$$

作业中的积分约定是

$$\begin{align}
d^2\theta=-\frac14 d\theta^\alpha d\theta^\beta\epsilon_{\alpha\beta},
\end{align}$$

关键积分为

$$\begin{align}
\int d^2\theta\,\theta^2&=1,\\
\int d^2\theta\,(\chi\theta)(\psi\theta)&=-\frac12(\chi\psi).
\end{align}$$

chiral superfield 满足

$$\begin{align}
\bar D_{\dot\alpha}\Phi=0,
\end{align}$$

用 $y^\mu=x^\mu+i\theta\sigma^\mu\bar\theta$ 可以写成

$$\begin{align}
\Phi(y,\theta)=\phi(y)+\sqrt2\,\theta\psi(y)+\theta^2F(y).
\end{align}$$

## 4. Wess-Zumino 模型和超势

标准 chiral multiplet 作用量是

$$\begin{align}
S=\int d^4x\,d^4\theta\,\Phi^\dagger\Phi +\left(\int d^4x\,d^2\theta\,W(\Phi)+\mathrm{h.c.}\right).
\end{align}$$

对多个 chiral multiplet，

$$\begin{align}
\mathcal L_W=F_iW_i(\phi)-\frac12W_{ij}(\phi)\psi_i\psi_j+\mathrm{h.c.},
\end{align}$$

其中

$$\begin{align}
W_i=\frac{\partial W}{\partial\phi_i},\qquad W_{ij}=\frac{\partial^2W}{\partial\phi_i\partial\phi_j}.
\end{align}$$

辅助场方程和标量势为

$$\begin{align}
F_i^*=-W_i(\phi),\qquad V_F=\sum_i|W_i(\phi)|^2.
\end{align}$$

对

$$\begin{align}
W(\Phi)=\frac12m\Phi^2+\frac13g\Phi^3,
\end{align}$$

有

$$\begin{align}
W'(\phi)&=m\phi+g\phi^2,\\
W''(\phi)&=m+2g\phi.
\end{align}$$

消去 $F$ 之前，superpotential 部分是

$$\begin{align}
\mathcal L_W =F(m\phi+g\phi^2)-\frac12(m+2g\phi)\psi\psi+\mathrm{h.c.}
\end{align}$$

消去 $F$ 后，

$$\begin{align}
V(\phi)=|m\phi+g\phi^2|^2.
\end{align}$$

如果 $m,g$ 为实数，相互作用项是

$$\begin{align}
\mathcal L_{\mathrm{int}} =-g(\phi\psi\psi+\phi^*\bar\psi\bar\psi) -g^2|\phi|^4-mg(\phi\phi^{*2}+\phi^*\phi^2).
\end{align}$$

若 $m,g$ 为复数，则替换为

$$\begin{align}
\mathcal L_{\mathrm{int}} =-g\phi\psi\psi-g^*\phi^*\bar\psi\bar\psi
-|g|^2|\phi|^4-mg^*\phi\phi^{*2}-m^*g\phi^*\phi^2.
\end{align}$$

## 5. SUSY 破缺和 ISS 秩条件

对普通 chiral 和 vector multiplet 构成的整体超对称理论，

$$\begin{align}
V=\sum_i|F_i|^2+\frac12\sum_aD^aD^a.
\end{align}$$

超对称真空要求

$$\begin{align}
\langle F_i\rangle=0,\qquad \langle D^a\rangle=0.
\end{align}$$

如果这些方程没有共同解，则真空能为正，SUSY 自发破缺。破缺的 supercharge 给出无质量 goldstino。

对 ISS superpotential

$$\begin{align}
W=h\bar q^i_a\Phi^j{}_iq^a_j-h\mu^2\Phi^i{}_i,
\end{align}$$

$F$-term 方程是

$$\begin{align}
(F_\Phi^\dagger)^i{}_j &=-h(\bar q^i_aq^a_j-\mu^2\delta^i{}_j),\\
(F_q^\dagger)^a{}_j &=-h\bar q^i_a\Phi^j{}_i,\\
(F_{\bar q}^\dagger)^i{}_a &=-h\Phi^j{}_iq^a_j.
\end{align}$$

标量势是

$$\begin{align}
V_F=|h|^2\left[ \sum_{i,j}\left|\bar q^i_aq^a_j-\mu^2\delta^i{}_j\right|^2 +\sum_{a,j}\left|\bar q^i_a\Phi^j{}_i\right|^2 +\sum_{i,a}\left|\Phi^j{}_iq^a_j\right|^2 \right].
\end{align}$$

关键障碍是

$$\begin{align}
\operatorname{rank}(\bar q q)\leq N_c<N_f =\operatorname{rank}(\mu^2\mathbb I_{N_f})
\end{align}$$

当 $\mu^2\neq0$ 时，$F_\Phi=0$ 无法求解，因此 SUSY 通过 rank condition 自发破缺。

Witten index 为

$$\begin{align}
\Delta=\operatorname{Tr}_{\mathcal H}(-1)^F e^{-\beta H}.
\end{align}$$

如果 $\Delta\neq0$，则至少保留一个超对称基态。如果 $\Delta=0$，不能推出 SUSY 必然破缺，只能说明 index 不提供阻碍。

## 6. 矢量多重态、SYM 和 SQCD

实 vector superfield 满足

$$\begin{align}
V=V^\dagger.
\end{align}$$

在 Wess-Zumino gauge 中，

$$\begin{align}
V_{\mathrm{WZ}} =-\theta\sigma^\mu\bar\theta A_\mu +i\theta^2\bar\theta\bar\lambda -i\bar\theta^2\theta\lambda +\frac12\theta^2\bar\theta^2D.
\end{align}$$

物理 vector multiplet 是

$$\begin{align}
(A_\mu,\lambda_\alpha,D).
\end{align}$$

规范协变的 chiral field strength 是

$$\begin{align}
W_\alpha=-\frac14\bar D^2(e^{-V}D_\alpha e^V).
\end{align}$$

纯 super Yang-Mills 作用量为

$$\begin{align}
S_{\mathrm{SYM}} =\frac{1}{4g^2}\int d^4x\,d^2\theta\,\operatorname{Tr}(W^\alpha W_\alpha) +\mathrm{h.c.}
\end{align}$$

SQCD 的规范群是

$$\begin{align}
G=SU(N_c),
\end{align}$$

其中

$$\begin{align}
Q_i\in\mathbf{N_c},\qquad \widetilde Q^i\in\overline{\mathbf{N_c}},\qquad i=1,\dots,N_f.
\end{align}$$

不要把 $Q_i$ 和 $\widetilde Q^i$ 当成互为共轭的 superfield。它们是处在共轭规范表示中的独立 chiral superfield。

无质量理论有

$$\begin{align}
W_{\mathrm{SQCD}}=0,
\end{align}$$

夸克质量形变为

$$\begin{align}
W_{\mathrm{SQCD}}=m_i{}^j\widetilde Q^iQ_j.
\end{align}$$

规范不变的 chiral 算符包括

$$\begin{align}
M^i{}_j=\widetilde Q^iQ_j,\qquad B\sim Q^{N_c},\qquad \widetilde B\sim \widetilde Q^{N_c}.
\end{align}$$

$D$-term 标量势为

$$\begin{align}
V_D=\frac{g^2}{2}\sum_a \left(q_i^\dagger T^aq_i-\widetilde q_iT^a\widetilde q^{\dagger i}\right)^2.
\end{align}$$

## 7. SQCD 一环标量夸克质量抵消

定义

$$\begin{align}
T^aT^a=C_2(R)\mathbb I,\qquad I_\Lambda=\int^\Lambda\frac{d^4p_E}{(2\pi)^4}\frac{1}{p_E^2} =\frac{\Lambda^2}{16\pi^2}.
\end{align}$$

对 $SU(N_c)$ 的基本表示，若

$$\begin{align}
\operatorname{tr}(T^aT^b)=\frac12\delta^{ab},
\end{align}$$

则

$$\begin{align}
C_F=\frac{N_c^2-1}{2N_c}.
\end{align}$$

外部 squark 动量取零并令所有质量为零时，只追踪二次发散部分：

$$\begin{align}
\int^\Lambda\frac{d^4p}{(2\pi)^4}\frac{i}{p^2} \longrightarrow I_\Lambda.
\end{align}$$

四个作业中的图给出

$$
\begin{array}{c|c|c}
\text{图} & \text{相对系数} & \text{贡献} \\
\hline
\text{squark loop} & +1 & +g^2C_2(R)I_\Lambda \\
\text{quark-gluino loop} & -4 & -4g^2C_2(R)I_\Lambda \\
\text{squark-gluon loop} & -1 & -g^2C_2(R)I_\Lambda \\
\text{gluon seagull loop} & +4 & +4g^2C_2(R)I_\Lambda
\end{array}
$$

fermion loop 中使用的旋量迹为

$$\begin{align}
\operatorname{tr}(p_\mu\sigma^\mu p_\nu\bar\sigma^\nu)=2p^2.
\end{align}$$

seagull 图使用对称因子 $\frac12$，以及

$$\begin{align}
\delta^{ab}\{T^a,T^b\}=2T^aT^a=2C_2(R)\mathbb I,\qquad \eta_{\mu\nu}\eta^{\mu\nu}=4.
\end{align}$$

四个图相加得到

$$\begin{align}
\mathcal M_{\mathrm{1-loop}} =g^2C_2(R)I_\Lambda(1-4-1+4)=0.
\end{align}$$

因此未破缺的 $\mathcal N=1$ SQCD 没有二次发散的一环 squark 质量修正：

$$\begin{align}
\delta m_q^2\big|_{\Lambda^2,\mathrm{1-loop}}=0.
\end{align}$$

## 8. 全纯性（holomorphy）和非重整化定理

对

$$\begin{align}
W=\frac12M\Phi_H^2+\frac{\lambda}{2}\Phi_H\Phi^2,
\end{align}$$

tree-level 积掉重场给出

$$\begin{align}
0=\frac{\partial W}{\partial\Phi_H} =M\Phi_H+\frac{\lambda}{2}\Phi^2, \qquad \Phi_H=-\frac{\lambda}{2M}\Phi^2.
\end{align}$$

因此

$$\begin{align}
W_{\mathrm{eff}}=-\frac{\lambda^2}{8M}\Phi^4.
\end{align}$$

作业中的 spurion 荷为

$$
\begin{array}{c|ccc}
&U(1)_A&U(1)_B&U(1)_R\\
\hline
\Phi_H&1&0&1\\
\Phi&0&1&\frac12\\
M&-2&0&0\\
\lambda&-1&-2&0
\end{array}
$$

一个全纯单项式

$$\begin{align}
M^a\lambda^b\Phi^c
\end{align}$$

必须满足

$$\begin{align}
-2a-b&=0,\\
-2b+c&=0,\\
\frac{c}{2}&=2.
\end{align}$$

于是

$$\begin{align}
a=-1,\qquad b=2,\qquad c=4,
\end{align}$$

因此 holomorphy 和对称性固定

$$\begin{align}
W_{\mathrm{eff}}=C\frac{\lambda^2}{M}\Phi^4.
\end{align}$$

tree-level 匹配固定 $C=-\frac18$。

对一般的微扰非重整化定理，

$$\begin{align}
W=\sum_n\mu_n\Phi^n.
\end{align}$$

把每个 $\mu_n$ 提升为背景 chiral spurion，并令它在

$$\begin{align}
\Phi\mapsto e^{i\alpha}\Phi
\end{align}$$

下带荷 $-n$，维数为

$$\begin{align}
[\Phi]=1,\qquad [\mu_n]=3-n.
\end{align}$$

对全纯单项式

$$\begin{align}
\prod_n\mu_n^{a_n}\Phi^p,
\end{align}$$

对称性给出

$$\begin{align}
p=\sum_n n a_n,
\end{align}$$

维数为 $3$ 给出

$$\begin{align}
3=\sum_n a_n(3-n)+p=3\sum_n a_n.
\end{align}$$

在 $\mu_n\to0$ 时的微扰正则性要求指数为非负整数。因此 $\sum_n a_n=1$ 表示恰好有一个 $a_n$ 等于 $1$，所以 Wilsonian superpotential 保持同样的全纯形式：

$$\begin{align}
W_{\mathrm{eff}}=W.
\end{align}$$

这个结论说的是微扰 Wilsonian superpotential。Kähler potential 可以被重整化；如果对称性允许，非微扰效应也可以生成 superpotential 项。

## 9. Seiberg 对偶和异常匹配

沿用作业记号：electric color 是 $N$，flavor 数是 $F$。electric 理论的规范群是 $SU(N)$，magnetic 理论的规范群是 $SU(F-N)$。

全局对称性是

$$\begin{align}
SU(F)_1\times SU(F)_2\times U(1)_B\times U(1)_R.
\end{align}$$

electric matter 的荷为

$$
\begin{array}{c|c|cccc}
&SU(N)&SU(F)_1&SU(F)_2&U(1)_B&U(1)_R\\
\hline
Q&\square&\square&1&1&\frac{F-N}{F}\\
\bar Q&\bar\square&1&\bar\square&-1&\frac{F-N}{F}
\end{array}
$$

magnetic matter 的荷为

$$
\begin{array}{c|c|cccc}
&SU(F-N)&SU(F)_1&SU(F)_2&U(1)_B&U(1)_R\\
\hline
q&\square&\bar\square&1&\frac{N}{F-N}&\frac{N}{F}\\
\bar q&\bar\square&1&\square&-\frac{N}{F-N}&\frac{N}{F}\\
M&1&\square&\bar\square&0&2\frac{F-N}{F}
\end{array}
$$

### 异常匹配规则表

只有左手 Weyl fermion 贡献 't Hooft 异常。标量不贡献。对 chiral superfield $\Phi$，要使用 Weyl fermion 的 $R$-charge：

$$\begin{align}
R_{\psi_\Phi}=R_\Phi-1.
\end{align}$$

gaugino 的 $R=1$。它贡献 pure $R$ anomaly 和 mixed $R$-gravity anomaly，但在 $SU(F)_1$ 和 $SU(F)_2$ flavor 群下中性。

对形如 $U(1)_X[G]^2$ 的 anomaly，

$$\begin{align}
\mathcal A_{XG^2} =\sum_{\text{Weyl fermions}} q_X\,T(r_G)\,(\text{其他指标带来的重数}).
\end{align}$$

对 $G=SU(F)$，

$$\begin{align}
T(\square)=T(\bar\square)=\frac12.
\end{align}$$

反基本表示和基本表示有相同的二次指标，所以在 $U(1)[SU(F)]^2$ anomaly 中不会多一个负号。

对三次非阿贝尔 anomaly $[SU(F)]^3$，

$$\begin{align}
\mathcal A_{G^3} =\sum_{\text{Weyl fermions}} A(r_G)\,(\text{其他指标带来的重数}),
\end{align}$$

其中

$$\begin{align}
A(\square)=+1,\qquad A(\bar\square)=-1.
\end{align}$$

对阿贝尔三次 anomaly 或 mixed Abelian anomaly，

$$\begin{align}
\mathcal A_{XYZ} =\sum_{\text{Weyl fermions}} q_Xq_Yq_Z\,(\text{重数}).
\end{align}$$

对 $U(1)_X[\mathrm{gravity}]^2$，

$$\begin{align}
\mathcal A_{X\mathrm{grav}^2} =\sum_{\text{Weyl fermions}} q_X\,(\text{重数}).
\end{align}$$

### $U(1)_R[SU(F)_1]^2$

Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{R[SU(F)_1]^2} =N\left(-\frac{N}{F}\right)\frac12 =-\frac{N^2}{2F}.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{R[SU(F)_1]^2} &=(F-N)\left(-\frac{F-N}{F}\right)\frac12 +F\left(\frac{F-2N}{F}\right)\frac12\\
&=-\frac{N^2}{2F}.
\end{align}$$

### $U(1)_R^3$

Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{R^3} =(N^2-1)+2NF\left(-\frac{N}{F}\right)^3 =N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{R^3} &=((F-N)^2-1) +2(F-N)F\left(-\frac{F-N}{F}\right)^3 +F^2\left(\frac{F-2N}{F}\right)^3\\
&=N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

因此两边的 anomaly coefficient 匹配。

### 额外匹配例子

对 $[SU(F)_1]^3$，使用 $A(\square)=+1$ 和 $A(\bar\square)=-1$。Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{[SU(F)_1]^3}=N.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{[SU(F)_1]^3}=-(F-N)+F=N.
\end{align}$$

magnetic 的第一项来自 $q$，第二项来自 meson $M$ 的 $SU(F)_2$ 指标给出的 $F$ 份拷贝。

对 $U(1)_B[SU(F)_1]^2$，使用二次指标，所以 $\square$ 和 $\bar\square$ 符号相同。Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{B[SU(F)_1]^2}=N(1)\frac12=\frac{N}{2}.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{B[SU(F)_1]^2} =(F-N)\left(\frac{N}{F-N}\right)\frac12 =\frac{N}{2}.
\end{align}$$

meson 的重子数为零，所以不贡献。

对 $U(1)_RU(1)_B^2$，重子数平方，但 $R$-charge 使用 fermion 的 $R$-charge。Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{RB^2} =2NF\left(-\frac{N}{F}\right)(1)^2 =-2N^2.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{RB^2} =2(F-N)F\left(-\frac{F-N}{F}\right) \left(\frac{N}{F-N}\right)^2 =-2N^2.
\end{align}$$

同样，$B(M)=0$，所以 $M$ 不贡献。

对 $U(1)_R[\mathrm{gravity}]^2$，把所有 Weyl fermion 的 $R$-charge 相加，包括 gaugino。Electric 侧：

$$\begin{align}
\mathcal A^{(I)}_{R\mathrm{grav}^2} =(N^2-1)+2NF\left(-\frac{N}{F}\right) =-N^2-1.
\end{align}$$

Magnetic 侧：

$$\begin{align}
\mathcal A^{(II)}_{R\mathrm{grav}^2} &=((F-N)^2-1) +2(F-N)F\left(-\frac{F-N}{F}\right) +F^2\left(\frac{F-2N}{F}\right)\\
&=-N^2-1.
\end{align}$$

electric $SU(N_c)$ SQCD 的常用相图总结为

$$
\begin{array}{c|c}
\text{$N_f$ 的范围}&\text{红外行为}\\
\hline
\frac32N_c<N_f<3N_c&\text{非阿贝尔 Coulomb 相}\\
N_c+1<N_f\leq\frac32N_c&\text{自由 magnetic 相}\\
N_f=N_c+1&\text{由 meson 和 baryon 描述的禁闭相}\\
N_f\leq N_c&\text{量子修正的模空间或 ADS superpotential}
\end{array}
$$

## 10. 解题模板

### 旋量恒等式证明

1. 写明 $\sigma^\mu=(\mathbb I,\sigma^i)$ 和 $\bar\sigma^\mu=(\mathbb I,-\sigma^i)$。
2. 分成 $(0,0)$、$(0,i)$、$(i,0)$ 和 $(i,j)$。
3. 空间分量使用 $\{\sigma^i,\sigma^j\}=2\delta^{ij}\mathbb I$。
4. 把 $\delta^{ij}$ 翻译成 $\eta^{ij}=-\delta^{ij}$。

### 从 $W$ 做分量展开

1. 计算 $W_i$ 和 $W_{ij}$。
2. 写出 $F_iW_i-\frac12W_{ij}\psi_i\psi_j+\mathrm{h.c.}$。
3. 从 Kähler 项加上 $F_i^*F_i$。
4. 使用 $F_i^*=-W_i$。
5. on-shell 标量势为 $V_F=\sum_i|W_i|^2$，Lagrangian 中包含 $-V_F$。

### SUSY 破缺

1. 写出所有 $F_i=0$ 和 $D^a=0$ 方程。
2. 检查代数一致性，尤其是 rank constraint。
3. 如果没有解，说明 $V_{\min}>0$，SUSY 自发破缺。
4. 如果有解，则该真空中 SUSY 未破缺。

### 全纯性（holomorphy）

1. 把耦合提升为 chiral spurion。
2. 分配荷，使 microscopic $W$ 不变且 $R(W)=2$。
3. 写出最一般的全纯单项式。
4. 解荷和维数约束。
5. 用弱耦合极限或 tree-level 匹配固定整体系数。

### 异常匹配

1. 只列 Weyl fermion。
2. 把每个 superfield 的荷替换为 $R_\psi=R_\Phi-1$。
3. pure $R$ anomaly 中要包括 gaugino。
4. 乘上 color/flavor 重数。
5. 使用 $T(\square)=T(\bar\square)=\frac12$；反基本表示不会给这个二次指标多一个负号。

## 11. 常见坑

1. 不要混用作业中的 on-shell WZ 归一化和课堂中的 off-shell $\sqrt2$ 归一化。
2. off-shell 闭合使用 $F$；on-shell 在 $\psi$ 上闭合需要 $\bar\sigma^\mu\partial_\mu\psi=0$。
3. anomaly 公式里的 $R$-charge 是 fermion charge $R_\Phi-1$，不是 scalar 或 superfield 的 charge。
4. SQCD 中的 $Q$ 和 $\widetilde Q$ 是独立 chiral superfield，不是互为共轭。
5. superpotential 在微扰下不重整化，但 Kähler potential 可以重整化。
6. 非零 Witten index 禁止 SUSY 破缺；零 Witten index 不证明 SUSY 破缺。
7. SQCD loop 计算中，fermion loop 的负号和 seagull 图的对称因子最容易丢掉，从而破坏抵消。
