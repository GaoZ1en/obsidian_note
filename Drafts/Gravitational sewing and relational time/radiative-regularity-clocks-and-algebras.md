# 辐射引力中的正则性、关系时钟与区域代数

2026-09-10。接续 [一般引力界面的拼接](general-gravitational-sewing.md)，讨论真实 Einstein 解中的正则约化、边界时钟和区域动力学闭合。这是一份独立推导；各项结论的范围在正文及末尾分别标明。

**结论：三项条件并非一般 Einstein 拼接自动满足的同一件事。** 在一个允许非线性辐射的 CMC 扇区，约束解的局部正则性、lapse 的可解性以及其界面响应的可逆性可以实际证明；纯引力也给出一个明确的 York 关系时钟。与此同时，穿过人工界面的引力波排除了“区域自身初始数据普遍决定其后续演化”的强结论。因此，不能把所有未闭合环节都当成尚待补齐的技术引理。

本文的正面结果适用于紧致、无物理空间边界的整体切片，随后把它分成两个有限区域。它覆盖具有局域传播自由度的非线性真空解族，但不宣称已经构造任意开放区域的独立 extended phase space 或完整量子引力。

## 1. Setup 与四种不同的对象

取四维 Einstein 真空，$\Lambda=0$，signature $(-+++)$，$G>0$，$c=\hbar=1$。整体时空为一个有限时间 slab，Cauchy 切片 $\Sigma$ 紧致、连通、可定向、无边界，且存在负截面曲率参考度量。选一张分离曲面 $S$，

$$
\Sigma=\Sigma_A\cup_S\Sigma_B.
$$

由 $S$ 延伸出的短 timelike worldtube 为人工界面 $\Gamma$；它不是反射壁，也没有额外薄壳物质。两侧使用同一 Einstein–Hilbert、GHY 和相容 joint 极化。采用 fixed collar，或显式随几何携带界面 embedding。人工 joint 的变化在两侧相消，时间端点固定。

必须区分：

1. **区域历史空间**：在各自闭半 collar 上光滑的 Einstein 解，界面 trace 可以变化。
2. **指定切片的区域预辛形式**：$\Omega_X=-\delta\Theta_X$，允许存在穿过 $\Gamma$ 的辛通量。
3. **整体物理相空间**：整体约束和规范已处理后的局部空间。
4. **关系时间描述**：在最后一个时间规范尚未消去时选择时钟，或者用一族 gauge sections 描述同一个物理轨道空间。

其中 1、2 不自动组成一个可独立演化的封闭 Hamiltonian 系统。一个时刻的二形式有定义，也不等于它在所有开放历史之间守恒。

Cauchy 切片的第二基本形式采用

$$
K_{ij}=-\frac12\mathcal L_n q_{ij}
=-\frac1{2N}(\dot q_{ij}-\mathcal L_\beta q_{ij}),
\qquad \tau=q^{ij}K_{ij}.
\tag{1.1}
$$

这里的 $K$ 是 spacelike Cauchy 切片的几何量；人工 timelike 壁的 outward $K^\Gamma$ 按前稿的 GHY 约定定义，不混用二者的符号。相应 ADM 动量为

$$
\pi^{ij}=\frac{\sqrt q}{16\pi G}
(\tau q^{ij}-K^{ij}),
\qquad
\Omega_\Sigma=\int_\Sigma\delta q_{ij}\wedge\delta\pi^{ij}.
\tag{1.2}
$$

以下 elliptic 论证可以在 $C^{k,\alpha}$、$k\geq4$、$0<\alpha<1$ 中进行，最后限制到光滑数据；演化使用实际 CMCSH Cauchy 理论，例如取 $H^s\times H^{s-1}$、$s>7/2$ 的光滑数据邻域。不把低正则度演化映射未经证明地称为同一 Banach 空间上的光滑流。

## 2. 一个允许非线性辐射的实际正则扇区

### 2.1 解掉约束，而不删去辐射自由度

令 $\tau<0$ 在每张切片上为常数，写

$$
K^{ij}=A^{ij}+\frac{\tau}{3}q^{ij},
\qquad
q_{ij}=\phi^4\bar q_{ij},
\qquad
A^{ij}=\phi^{-10}\bar\sigma^{ij}.
\tag{2.1}
$$

$\bar\sigma$ 对 $\bar q$ transverse-traceless：

$$
\bar q_{ij}\bar\sigma^{ij}=0,
\qquad
\bar D_j\bar\sigma^{ij}=0.
\tag{2.2}
$$

于是动量约束已满足，而 Hamiltonian 约束

$$
R[q]-A_{ij}A^{ij}+\frac23\tau^2=0
$$

成为

$$
F(\phi;\bar q,\bar\sigma,\tau)
=-8\bar\Delta\phi+\bar R\phi
-|\bar\sigma|_{\bar q}^2\phi^{-7}
+\frac23\tau^2\phi^5=0.
\tag{2.3}
$$

所用 conformal 变换可直接由两个 Levi-Civita connection 的差得到：

$$
R[q]=\phi^{-5}(-8\bar\Delta\phi+\bar R\phi),
\qquad
|A|_q^2=\phi^{-12}|\bar\sigma|_{\bar q}^2.
\tag{2.4}
$$

$\bar q$ 的 conformal geometry 及其 TT 共轭数据是场，而不是一个质量参数。它们允许任意小但空间依赖的辐射扰动，(2.3) 保留完整的非线性幂次。因此这不是 minisuperspace，也不是把辐射仅保留到有限阶的模型。

取一个紧致 hyperbolic 三流形，参考度量归一化为 $\bar R=-6$。在

$$
\bar\sigma=0,\qquad
\phi_0=\sqrt{\frac{3}{|\tau|}}
\tag{2.5}
$$

处，(2.3) 精确成立；这是扩张 Lorentz cone 的初始数据。这里只选它作为一个易于验证的正则基点，之后允许 $\bar q$、$\bar\sigma$ 在其邻域变化。

### 2.2 同一个算符控制约束正则性与 lapse

对 (2.3) 关于 $\phi$ 线性化：

$$
\mathscr L_\phi v
=-8\bar\Delta v+
\left(
\bar R+7|\bar\sigma|^2\phi^{-8}
+\frac{10}{3}\tau^2\phi^4
\right)v.
\tag{2.6}
$$

在真实约束解上令 $v=\phi u$。利用 (2.3)、(2.4) 及

$$
\Delta_q u
=\phi^{-4}\left(
\bar\Delta u+2\phi^{-1}\bar D\phi\cdot\bar D u
\right),
$$

得到

$$
\boxed{
\mathscr L_\phi(\phi u)=8\phi^5 L_q u,
\qquad
L_q=-\Delta_q+|K|_q^2
=-\Delta_q+|A|_q^2+\frac{\tau^2}{3}.
}
\tag{2.7}
$$

这不是只在 hyperbolic 基点成立的线性近似；它在本 CMC 扇区的每个光滑非线性约束解上成立。

对任意实 $u$，闭切片上积分分部给出

$$
\int_\Sigma uL_qu\,dV_q
=\int_\Sigma
\left(|Du|_q^2+|K|_q^2u^2\right)dV_q
\geq\frac{\tau^2}{3}\|u\|_{L^2(q)}^2.
\tag{2.8}
$$

因此 $L_q$ 无核；标准椭圆理论使它在相应 Sobolev/Hölder 阶数之间可逆。正函数 $\phi$ 的乘法在紧切片上也是同构，所以 $\mathscr L_\phi$ 可逆。

特别地，在 (2.5) 处，

$$
\mathscr L_{\phi_0}=-8\bar\Delta+24.
\tag{2.9}
$$

由隐函数定理，附近每组允许的 conformal/TT 数据和 $\tau$ 都有唯一的邻近正解 $\phi$，且椭圆求解映射光滑。正性由基点正性和邻域足够小保证。这证明的是一条实际非线性局部分支；不需要假设任意 conformal 数据都存在全局解。

TT 的定义随 $\bar q$ 变化。采用局部 conformal/diffeomorphism slice，并用无 conformal Killing 核的 York 分解构造 TT 纤维；在紧致负曲率基点附近可如此选择。保留离散稳定子时应使用相应局部商，而非把它省略成全局一一坐标。

### 2.3 演化与规范条件的实际范围

由真空演化方程和 (1.1)，

$$
(\partial_\lambda-\mathcal L_\beta)\tau
=-\Delta_qN+|K|_q^2N.
\tag{2.10}
$$

若取 $\lambda=\tau$，则

$$
L_qN_\tau=1.
\tag{2.11}
$$

(2.8) 保证唯一解；最大值原理给出 $N_\tau>0$。平均曲率因此在这个短时间域中是单调的时间标签。

空间规范可取相对于固定负截面曲率参考度量的 spatial harmonic gauge。其 shift 算符的可逆性与 CMCSH 演化的局部适定性采用 [Andersson–Moncrief，Theorem 5.1、Lemma 5.2](https://arxiv.org/html/gr-qc/0110111)。该论文所用 $K=-\mathcal L_nq/2$ 与 (1.1) 相同。这里引用其 PDE 定理，并未用有限个符号残差重新证明它。

在这个局部规范域内，固定一张 $\tau=\tau_0$ 的 Cauchy 切片及空间 slice 后，conformal/TT 数据给出真正的整体局部物理坐标。其正则性不再仅是“假设存在某个相空间”。

对于连续稳定子也有直接检验：若一个 Killing initial datum 保持 CMC 数据，则其法向分量 $f$ 满足 $L_qf=0$，故 $f=0$；余下切向分量必须是 $q$ 的 Killing 场。在足够小的负曲率邻域中没有这样的连续空间稳定子。这个检验只适用于所述闭切片与局部域，不能用来排除任意物理边界条件下的零模。

## 3. 实际边界响应定理：两侧 lapse 可以唯一拼接

这里固定 §2 中的一个非线性背景，把同一个 $L_q$ 限制到 $\Sigma_A,\Sigma_B$。这给出真实 CMC lapse 及 conformal 线性响应的边界问题。

对每侧取

$$
L_Xu_X=f_X,\qquad
u_X|_S=\varphi.
\tag{3.1}
$$

例如 lapse 问题有 $f_A=f_B=1$；对 conformal seed 的变化，$u=\delta\phi/\phi$ 的 $f$ 由 (2.7) 确定。后者的物理来源必须服从 seed 的 TT/gauge 条件，不能把任意 $f$ 都称为允许的 Einstein 扰动。

设 $u_X^0=L_{X,D}^{-1}f_X$ 为零 Dirichlet 解，$E_X\varphi$ 为齐次延拓。则

$$
u_X=u_X^0+E_X\varphi,\qquad
D_X\varphi=\partial_{n_X}E_X\varphi.
\tag{3.2}
$$

这里 $n_X$ 为 $\Sigma_X$ 的 outward 空间法向，$D_X$ 是 Dirichlet-to-Neumann 响应。在有限能量域内，

$$
E_X:H^{1/2}(S)\longrightarrow H^1(\Sigma_X),
\qquad
D_X:H^{1/2}(S)\longrightarrow H^{-1/2}(S).
$$

**边界响应定理。** 若背景及 $S$ 光滑、$\tau\ne0$，则

$$
\boxed{
D_A+D_B:H^{1/2}(S)\longrightarrow H^{-1/2}(S)
\ \text{是正的同构}.
}
\tag{3.3}
$$

从而共同 trace 唯一：

$$
\boxed{
\varphi
=-(D_A+D_B)^{-1}
\left(
\partial_{n_A}u_A^0+\partial_{n_B}u_B^0
\right).
}
\tag{3.4}
$$

**证明。** 对齐次延拓积分分部，

$$
\langle\varphi,(D_A+D_B)\varphi\rangle_S
=\sum_{X=A,B}
\int_{\Sigma_X}
\left(
|D E_X\varphi|^2+|K|^2|E_X\varphi|^2
\right)dV_q.
\tag{3.5}
$$

$|K|^2\geq\tau^2/3>0$，右侧控制两个延拓的 $H^1$ 范数。trace 定理进一步给出对 $\|\varphi\|_{H^{1/2}}^2$ 的正下界。连续延拓及能量最小性给出相应上界。因此该有界对称形式 coercive，Lax–Milgram 定理给出 (3.3)，包括满射性，而非仅无核。

方程 (3.4) 正是

$$
u_A|_S=u_B|_S,\qquad
\partial_{n_A}u_A+\partial_{n_B}u_B=0
\tag{3.6}
$$

的解。两侧弱解因 (3.6) 拼为整体 $L_qu=f$ 的弱解；对于整体光滑的系数和来源，椭圆正则性恢复光滑整体解。唯一性由 (2.8) 保证。证毕。

这里真正完成了一个实际的 trace 域、响应算符、核、像和逆算符分析。它允许背景含非线性辐射。算符是空间切片上的 elliptic clock/conformal response；它不是 timelike 壁全部引力响应 $\Pi^{ab}$，也不是某个未经构造的 $G_\Gamma$ 的 moment map。

一个可复算的符号检查是 $L=-\partial_x^2+m^2$ 在 $[-\ell,0]$ 上的零外端 Dirichlet 问题：

$$
E\varphi(x)=\frac{\sinh(m(x+\ell))}{\sinh(m\ell)}\varphi,
\qquad
D=m\coth(m\ell).
\tag{3.7}
$$

它检验取向及正号；(3.3) 的场论证明是 (3.5) 的能量论证，不是由一维例子推断。

## 4. 完整几何匹配、预辛核与商的范围

非 null 人工壁仍需完整条件

$$
h_A=h_B,\qquad
\Pi_A^{ab}+\Pi_B^{ab}=0.
\tag{4.1}
$$

对于已经存在的两侧光滑 Einstein 解，前稿的法向 jet 递推证明 (4.1) 足以光滑重建整体解。§3 只是在该背景上求解某一椭圆响应，并没有用 lapse 匹配替代 (4.1)。

令 $\mathcal C$ 为实际匹配解对，$\mathfrak g$ 为几何重建。采用相消的人工 corner 极化，

$$
\Omega_{\mathcal C}
=\jmath^*(\Omega_A+\Omega_B)
=\mathfrak g^*\Omega_{\mathrm{global}}.
\tag{4.2}
$$

可以进一步消去一个重复的证明义务。

**核引理。** 若 $Q:\mathcal C\to\mathcal P$ 是到非退化物理相空间的满 submersion，且 $\Omega_{\mathcal C}=Q^*\Omega_{\mathcal P}$，则

$$
\boxed{\ker\Omega_{\mathcal C}=\ker dQ.}
\tag{4.3}
$$

证明：$dQv=0$ 显然蕴含 $v$ 在核中；反过来，核条件给出
$\Omega_{\mathcal P}(dQv,dQw)=0$ 对所有 $w$ 成立。由 $dQ$ 满射和目标非退化性，$dQv=0$。证毕。

在 §2 的局部 CMC/空间规范扇区，目标可以实际取为固定 $\tau_0$ 的 conformal/TT 数据。对光滑解族，限制整体规范代表到 A、B 给出 $Q$ 的局部截面；线性化的 lapse、shift 规范方程给出局部横截方向。因而在这个局部光滑 slice 描述中，(4.3) 把全部零方向识别为不改变整体物理数据的表示变化。不同表示之间的规范识别仍须包括移动人工 cut 时的 embedding 信息。

不过，这并未证明

$$
\mathcal P\stackrel{?}{\simeq}
(\mathcal P_A^{\mathrm{ext}}\times
\mathcal P_B^{\mathrm{ext}})//G_\Gamma.
\tag{4.4}
$$

两者的差别是可检验的：一个移动 cut 的整体 diffeomorphism，可以先重建整体解，再把变换后的解限制到两侧；它因此作用于匹配域，却未必作用于任意独立区域解对。本文建立的是实际匹配域上的局部下降，而非将上述变换虚构为整个区域直乘上的共同 Hamiltonian 群作用。

同样，(4.3) 不排除离散纤维差异或全局 Gribov 问题；单凭切向核不能证明每个全局纤维恰好是一条指定群轨道。一般带边界场论中，函数空间的 quotient smoothness 也不能由有限维维数相减取代。

## 5. 纯引力的明确关系时钟，以及它与边界钟的区别

### 5.1 从 ADM 辛势导出 York Hamiltonian

由 (1.2)，

$$
\pi=q_{ij}\pi^{ij}=\frac{\tau\sqrt q}{8\pi G}.
$$

在 CMC 域内，trace 部分的辛势为

$$
\Theta_{\mathrm{trace}}
=\int_\Sigma\frac13\pi q^{ij}\delta q_{ij}
=\frac{\tau}{12\pi G}\delta V,
\qquad
V=\int_\Sigma dV_q.
\tag{5.1}
$$

无迹部分中 conformal 因子消去：

$$
\int_\Sigma\pi_{\mathrm{TF}}^{ij}\delta q_{ij}
=-\frac1{16\pi G}
\int_\Sigma\sqrt{\bar q}\,\bar\sigma^{ij}\delta\bar q_{ij}
=:\Theta_{\mathrm{shape}}.
\tag{5.2}
$$

取

$$
T=\frac{\tau}{12\pi G}.
$$

则

$$
\Theta_\Sigma
=\Theta_{\mathrm{shape}}+T\,\delta V
=\Theta_{\mathrm{shape}}-V\,\delta T+\delta(TV).
\tag{5.3}
$$

在最后的时间规范消去前，$(T,P_T)$ 的选择为

$$
P_T=-V,\qquad \{T,P_T\}=1.
$$

求解 (2.3) 后，

$$
\boxed{
H_T(T,\bar q,\bar\sigma)
=V(T,\bar q,\bar\sigma)
=\int_\Sigma
\phi(T,\bar q,\bar\sigma)^6\,dV_{\bar q}.
}
\tag{5.4}
$$

在这一局部 deparametrized 描述中，剩余约束可写为

$$
C_T=P_T+H_T=0.
\tag{5.5}
$$

去掉 (5.3) 的端点全变分，取 $T$ 为参数，作用量为

$$
S_{\mathrm{red}}
=\int dT\,
\left[
\Theta_{\mathrm{shape}}(\partial_T)-H_T(T)
\right].
\tag{5.6}
$$

由此得到实际的 shape Hamiltonian 演化。这里 $\Theta_{\mathrm{shape}}$ 应理解为局部 conformal/diffeomorphism quotient 上的 cotangent 配对；不把带 TT 限制的每个张量分量都称为独立 canonical 坐标。

(5.5) 表达的是这套 ADM/CMC 约化的最后时间约束。若先把全部规范都 quotient 掉，就应把 $T$ 看成求取关系可观测量的标签，而不能再给物理相空间额外添加一条独立约束。

这一路径属于已有 York/Fischer–Moncrief Hamiltonian reduction 的内容；本文具体核对了符号、归一化及其与拼接响应的联系，不声称发现了新的纯引力时钟。相关原始研究为 [Fischer–Moncrief，Hamiltonian reduction of Einstein’s equations](https://doi.org/10.1016/S0920-5632(97)00363-0)。其 CMC volume Hamiltonian 与某些文献中经时间/尺度变换后的 dimensionless reduced Hamiltonian 不应混为一个公式。

### 5.2 局部边界 proper clock 确实可定义，但不是同一个变量

由 $T=\tau/(12\pi G)$，

$$
L_qN_T=12\pi G,\qquad N_T>0.
\tag{5.7}
$$

从 $S$ 出发沿未来单位法向的积分曲线生成短 worldtube，并给每条线一个标签 $y$。在无交叉的短时间域内，沿它定义累计 proper reading

$$
t_\Gamma(T,y)
=\int_{T_0}^{T}N_T(T',x(T',y))\,dT'.
\tag{5.8}
$$

于是

$$
\frac{dt_\Gamma}{dT}=N_T>0.
\tag{5.9}
$$

对每条已选世界线及每个解，$T\leftrightarrow t_\Gamma$ 局部可逆。这里需要初始零点及边界观察者的选择；理想 reading 不是新加入的含应力物质钟。

辐射背景下 $N_T$ 通常随位置和状态变化，所以 (5.8) 不给出一个对所有解、所有边界点都相同的 $t_\Gamma=f(T)$。不能简单用一个预先固定的数值红移把 (5.4) 政名为边界 Hamiltonian。若真正改用某个 $t_\Gamma$ 作 canonical clock，必须处理这种场依赖的 gauge-section 变换。

因此这里的正面结论是：**非线性辐射引力可以拥有明确的局部关系时钟，并允许局部单调的边界读数。** 它没有证明 sewing 唯一选出该时钟，也没有把剩余全部 B 自由度变成一个理想量子钟。

## 6. 为什么整体 Hamiltonian 存在，A 仍不能普遍独立演化

### 6.1 约束解与时钟同步已经包含跨区响应

在固定 conformal metric 的变化中，线性响应满足

$$
\mathscr L_\phi\delta\phi
=\phi^{-7}\delta|\bar\sigma|^2
-\frac43\tau\phi^5\delta\tau,
\tag{6.1}
$$

若改变 $\bar q$ 则另加其引起的算符和曲率来源。由 (2.7)，求解使用整个 $\Sigma$ 上的 $L_q^{-1}$；拆区后正是 §3 的 $(D_A+D_B)^{-1}$。

对连通闭切片，$L_q=-\Delta_q+v$、$v>0$ 的 Green operator 不是按 A、B 分块的：一个非零、非负的 B 内标量来源，其解在 A 中也严格为正。这由最大值原理给出。但一般标量来源不都来自允许的 TT seed 变化，因此这句话首先是椭圆响应结论。

虽然几何体积有 $V=V_A+V_B$，仍不能因此推出

$$
H_T=H_A(z_A)+H_B(z_B).
\tag{6.2}
$$

因为每个 $V_X$ 使用的是共同约束解 $\phi$，不是仅由 X 数据独立得到的函数。CMC 的同步条件本身具有空间非局域性；它不表示可控信号超光速传播。

### 6.2 引力波反例：从线性检查到精确真空解

为直接检验物理传播，取平直背景的有限 slab，横向方向可取有限面积 $\mathcal A_\perp$ 的 $T^2$，纵向只考察有限区域以及尚未受到外端影响的时间。在线性化真空 Einstein 理论中取 TT 极化

$$
h_{xx}=q(t,z),\qquad
h_{yy}=-q(t,z),\qquad
h_{0\mu}=h_{z\mu}=0.
$$

这里不要求平直背景属于 §2 的 CMC 分支；它独立检验一个声称覆盖所有辐射区域的普遍命题。

Einstein–Hilbert 二次作用量在声明的 canonical 边界极化下为

$$
S^{(2)}
=\frac{\beta}{2}\int dt\,dz\,
\left[(\partial_tq)^2-(\partial_zq)^2\right],
\qquad
\beta=\frac{\mathcal A_\perp}{16\pi G}.
\tag{6.3}
$$

因此

$$
q_{tt}-q_{zz}=0,\quad
p=\beta q_t,\quad
\Pi_\Gamma=-\beta q_z,
$$

且

$$
R^{(1)}_{txtx}=-\frac12q_{tt}.
\tag{6.4}
$$

平直背景的 Riemann 为零，所以 (6.4) 对线性化 diffeomorphism 不变。

令 $A$ 为 $z<0$ 的有限区间部分，$B$ 包含 $(a,b)\subset(0,\infty)$。比较两个光滑整体波：

$$
q^{(0)}=0,\qquad q^{(1)}(t,z)=f(z+t),
\qquad f\in C^\infty_c((a,b)),\quad f''\not\equiv0.
\tag{6.5}
$$

在 $t=0$，A 内全部 $q,p$ 数据相同；界面附近的全部初始 jets 也相同。第二个解却是一束从 B 向 A 传播的引力波。在后续尚未接触外端的适当时刻，A 中存在

$$
R^{(1)}_{txtx}=-\frac12f''(z+t)\ne0.
$$

两个解在人工界面处始终是光滑整体解的限制，满足完整匹配，并未插入薄壳或违反 sewing。

这已经排除了在线性 TT 数据上普遍成立的自治演化。下面给出独立的非线性加强，不由线性残差推断它。

令 $u=t+z$，考虑 Rosen 形式的精确度量

$$
ds^2=-dt^2+dz^2+a(u)^2dx^2+b(u)^2dy^2.
\tag{6.5a}
$$

选 $0<u_1<u_2$、非零 $f\in C^\infty_c((u_1,u_2))$，并令

$$
a(u)=1+\varepsilon f(u),\qquad
b''(u)=-\frac{a''(u)}{a(u)}b(u),\qquad
b(u)=1,\ b'(u)=0\quad(u\leq u_1).
\tag{6.5b}
$$

先固定包含所需观测事件的有限 $u$ 区间。对足够小的非零 $\varepsilon$，$a>0$；线性 ODE 的唯一性、光滑性及对参数的连续依赖保证 $b$ 存在且保持正。因此 (6.5a) 是该有限 slab 上的光滑 Lorentz 度量，没有 Rosen 坐标焦点。

其全部 Ricci 分量由

$$
R_{\mu\nu}
=-\left(\frac{a''}{a}+\frac{b''}{b}\right)
(\partial_\mu u)(\partial_\nu u)
=0
$$

给出，而

$$
R_{txtx}=-aa'',\qquad R_{tyty}=-bb''.
$$

这是真空 Einstein 方程的精确解，$\varepsilon$ 无需按微扰阶数截断。与 $\varepsilon=0$ 的平直解比较：

- 在 $t=0$ 的整个 A 区域 $z<0$，两者都精确具有相同的 $q_{ij}=\delta_{ij}$、$K_{ij}=0$；界面邻域的全部初始 jets 也相同。
- 到达 $t+z\in(u_1,u_2)$ 后，A 内可出现非零潮汐曲率；它不可能由把平直解作 diffeomorphism 得到。
- 每个解在 $\Gamma:z=0$ 两侧都光滑，完整几何匹配始终成立。
- $(x,y,z)$ 固定的观察者是 timelike geodesic，且其 proper time 正是 $t$。因此即使为两个比较都提供同样明确的 proper-clock 标定，结果仍不同。

**精确 no-go。** 对允许外部辐射进入的有限区域，不存在一个仅以 A 的局部 Cauchy 几何 $(q,K)|_A$ 为输入、对所有允许外部解都给出 A 后续几何的演化映射。这里已经有一对完整非线性真空解作为反例。

这不是对任意非局域 gravitational dressing 的相等性断言。若某个所谓“A 的数据”实际包含 B 的场或全局约束解，两种输入可以已被该 dressing 区分；这样的构造已经超出“仅 A 的局部数据”。也不要求比较中的外部几何或外边界响应相同，因为被检验的正是与外部状态无关的自治主张。

### 6.3 同一阻碍在辛形式中出现

在 A 上，

$$
\Omega_A(t)=\int_A\delta q\wedge\delta p\,dz.
$$

当外端通量为零或尚未到达时，

$$
\frac{d}{dt}\Omega_A
=\beta\,\delta q\wedge\delta q_z\big|_{z=0}
=-\omega_\Gamma,
\qquad
\omega_\Gamma=\delta q\wedge\delta\Pi_\Gamma.
\tag{6.6}
$$

例如 $q_1=\cos k(t-z)$、$q_2=\sin k(t-z)$ 给出

$$
\omega_\Gamma(q_1,q_2)=\beta k\ne0.
\tag{6.7}
$$

A 流出的辛通量在 B 中抵消，整体 $\Omega_A+\Omega_B$ 守恒。这个机制同时支持完整拼接，并阻止把每侧当成具有任意自由历史的封闭系统。

普通局部 corner 修正或 frame 名称本身不足以消除该结论。要使开放区域重新 Hamiltonian 化，必须明确加入能接收其输入输出的边界/环境自由度，或限制允许的边界历史。反射边界会改变原本的透明人工拼接问题。此处与 [Harlow–Wu 的边界变分条件](https://arxiv.org/abs/1906.08616) 及 [Speranza 对 surface translations 的条件](https://arxiv.org/abs/1706.05061) 一致。

## 7. 区域代数的闭合条件与可保留的较弱结论

先假设已经定义好某个物理区域代数的嵌入
$\mathfrak A_A\hookrightarrow\mathfrak A_{\mathrm{global}}$，并声明如何随参考架识别区域。引力中这个嵌入本身需要 dressing 或关系定位；本文不假设 exact Hilbert tensor factorization 普遍成立。

若整体关系演化为 $\alpha_{t,t_0}$，A 在所有状态下可逆、与外部状态无关的自治演化条件是

$$
\boxed{
\alpha_{t,t_0}(\mathfrak A_A)=\mathfrak A_A.
}
\tag{7.1}
$$

这里的闭合是对有限时间演化而言。形式上的局部 Poisson 微分表达式，或反复计算若干阶时间导数，不能代替 (7.1)。紧支撑波在进入之前可使所有早期局部时间 jets 为零，稍后仍然到达。

§6.2 在自由 TT 的 canonical/线性曲率代数上直接违反 (7.1)，精确 Rosen 解进一步排除了仅由区域 Cauchy 几何决定未来的非线性版本。在有限维完整因子代数中还可给出一个精确等价命题。

**有限因子命题。** 设
$\mathcal K=\mathcal H_A\otimes\mathcal H_R$，
$\mathfrak A_A=B(\mathcal H_A)\otimes1$，两因子有限维，$H=H^\dagger$ 与时间无关。则

$$
e^{itH}\mathfrak A_Ae^{-itH}=\mathfrak A_A
\quad\text{对所有 }t
$$

等价于

$$
\boxed{H=H_A\otimes1+1\otimes H_R.}
\tag{7.2}
$$

证明：若闭合，对所有 $O_A$ 有
$[H,O_A\otimes1]\in\mathfrak A_A$。令
$H_A=(\dim\mathcal H_R)^{-1}\operatorname{Tr}_R H$，
对该对易子取归一化偏迹，得到它等于
$[H_A,O_A]\otimes1$。故
$H-H_A\otimes1$ 与全部 $\mathfrak A_A$ 对易，属于
$1\otimes B(\mathcal H_R)$。反向由指数因子化立即成立。证毕。

例如 $H=g\sigma_z\otimes\sigma_z$，初态 $|+\rangle|+\rangle$，有

$$
\operatorname{Tr}\rho_A(t)^2
=\frac{1+\cos^2(2gt)}2.
\tag{7.3}
$$

整体幺正没有保证 A 的约化态幺正。这一有限因子定理不直接套用到引力的非因子代数或 type III 代数，也不排除特殊不变子代数、特殊态或有效近似。

仍可保留三种明确的动力学：

- **整体关系动力学**：用一个钟描述 A 与 B 剩余辐射的联合系统；§5 给出经典实现。
- **开放区域动力学**：给定外部输入或环境态，描述 A 的条件/约化演化；它通常需要记忆或额外状态变量。
- **有缓冲距离的局部预测**：在 TT 模型中，距离界面为 $d>0$ 的紧集 $K$，对 $|t|<d$ 可由 A 初值决定相应局域观测量。因为整个 A 的代数包含任意靠近界面的支撑，这不产生对整个代数统一有效的非零自治时间区间。

## 8. 量子时钟与多重边界时间：哪些推导仍是条件性的

### 8.1 单钟：明确缺的是算符构造

经典结果 (5.4) 没有自动定义一个量子体积算符。必须另外给出实际非时钟 Hilbert 空间 $\mathcal K$、$\widehat H_T(T)$ 的自伴实现及保证唯一幺正传播的定义域条件。若这些已成立，约束

$$
(-i\partial_T+\widehat H_T(T))\Psi(T)=0
$$

的解是

$$
\Psi(T)=U(T,T_0)\psi_0,\qquad
\langle\Psi_1,\Psi_2\rangle_{\mathrm{phys}}
=\langle\Psi_1(T_0),\Psi_2(T_0)\rangle_{\mathcal K}.
\tag{8.1}
$$

这是条件定理，不是本文已经完成的非微扰 Einstein 量子化。自伴性“逐时成立”本身也不足以保证任意时间依赖问题的传播子条件。

即使 (8.1) 成立，$\mathcal K$ 包含全部非时钟自由度；它一般不等于 A 的 Hilbert 空间。若存在一个允许的
$\mathcal K_A\otimes\mathcal K_R$ 表示，A 的态还需对 R 做偏迹，其动力学须重新检验 (7.1)，不能把 Page–Wootters conditioning 和去掉所有外部辐射合为一步。

### 8.2 多钟并不要求预先选一个唯一的 Abelian 时间子群

设某个实际局部 canonical reference chart 已给出

$$
C_I=P_I+H_I(T,z),\qquad \{T^I,P_J\}=\delta^I_J.
$$

定义

$$
F^{\mathrm{cl}}_{IJ}
=\partial_IH_J-\partial_JH_I-\{H_I,H_J\}_z.
$$

直接计算得到

$$
\{C_I,C_J\}=-F^{\mathrm{cl}}_{IJ}.
\tag{8.2}
$$

在已处理剩余规范的物理方向上，需要相应曲率为零；若它只是剩余约束的组合，则应先按该约束取商。沿指定边界参考路径 $T^I=T^I(t)$，

$$
\frac{dz}{dt}
=\left\{z,\dot T^I H_I\right\}.
\tag{8.3}
$$

量子版本在共同不变算符域上为

$$
\widehat C_I=-i\partial_I+\widehat H_I,\qquad
F^{\mathrm q}_{IJ}
=\partial_I\widehat H_J-\partial_J\widehat H_I
+i[\widehat H_I,\widehat H_J],
$$

$$
[\widehat C_I,\widehat C_J]=-iF^{\mathrm q}_{IJ}.
\tag{8.4}
$$

局部积分条件是 $F^{\mathrm q}_{IJ}\Psi=0$；全局还须处理 holonomy 和实际路径域。结构函数不直接排除这样的局部参考描述，但一般 ADM 约束也不自动交付这个 canonical chart。

作为来源核查，[Kabel–Brukner–Wieland](https://arxiv.org/html/2302.11629v2) 确实将 perturbative boundary frames 与多指 Schrödinger 方程联系起来。不过其 §3.3 将一阶辐射支撑限制在区域内部；Discussion 又明确保留有限距离的荷代数问题并转向渐近极限。因此它不能充当“任意有限界面、任意穿界辐射的量子约束已无异常闭合”的现成证明。

## 9. 完成了什么，以及普遍主张必须如何改写

| 问题 | 本文实际结果 | 范围 |
|---|---|---|
| 有辐射时能否解约束并取得正则局部数据？ | (2.7)–(2.9) 给出可逆线性化和实际非线性分支；CMCSH 演化调用已核对的定理 | 紧致负曲率参考几何附近，CMC，$\tau\ne0$ |
| 实际界面 clock/conformal response 是否有合法 trace 域和逆？ | (3.3)–(3.6) 证明两侧 DtN 之和正且满射，给出唯一共同 trace | 所述非线性背景上的线性椭圆响应 |
| 完整匹配后的全部零方向是什么？ | (4.3) 给出核与遗忘规范表示的微分核之等价；在上述局部规范 slice 中应用 | 不等同于任意独立区域直乘上的 $G_\Gamma$ 辛商 |
| 是否存在纯引力关系钟？ | (5.3)–(5.6) 导出 York 钟及 volume Hamiltonian | 局部 CMC；钟由所选规范提供 |
| 是否有可用的边界 proper reading？ | (5.8)–(5.9) 局部单调，可沿选定世界线反解 | 场依赖，不自动形成理想量子钟 |
| A 是否因此按独立 Hamiltonian 演化？ | §6.2 给出线性及精确非线性真空波反例，(7.2) 给出有限因子的闭合判据 | 仅靠 A 局部数据的普遍自治被排除 |
| 是否已完成一般量子约化？ | 否；§8 给出定义域、传播子、剩余约束及多时间曲率的具体要求 | 非微扰 $\mathcal K$ 与 $\widehat V(T)$ 尚未构造 |

因此可以保留的普遍组织方式是

$$
\boxed{
\text{完整几何匹配与通量抵消}
\ \longrightarrow\
\text{在实际正则域内下降}
\ \longrightarrow\
\text{选择可用参考钟}
\ \longrightarrow\
\text{检验所选区域代数是否对演化闭合}.
}
$$

最后一步可能失败，而不意味着第一步失败。Wu 的机制在合适扇区能解释关系时间；把 B 全部解释为理想时钟、并让 A 对任意穿界辐射仍自治，则是额外且过强的要求。

对原来更强的目标，仍有两项不能写成已完成：任意有限界面的独立区域 extended phase spaces 与完整 Hamiltonian 接口作用；以及这些空间的无异常量子约化和物理内积。本文没有用 CMC 的整体约化替代前者，也没有用形式 Schrödinger 方程替代后者。

## 10. 验证记录

Verified:

- 30 项 Mathematica 精确检查全部通过：Lichnerowicz 线性化及与 lapse 算符的关系、York 辛势的符号和归一化、hyperbolic 基点、TT 边界通量与能量平衡、入射波曲率、DtN 延拓、经典/量子多时间曲率符号、有限因子闭合的两 qubit 检验。
- 10 组 xAct 残差全部为零：三维 conformal 标量曲率、标量 Laplacian、TT divergence 的 trace 项；四维 TT 全部线性 Ricci 分量、线性 Riemann 分量及 EH 二次密度的显式全导数；精确 Rosen 解的全部 Ricci 分量、代入 ODE 后的真空条件、两组潮汐曲率及观察者 geodesic 条件。
- (2.8)、(3.3)、(4.3)、§6.2 和 (7.2) 的证明分别写在正文；符号检查不替代最大值原理、椭圆存在性、PDE 演化或无限维商的论证。
- 来源核查直接阅读 Andersson–Moncrief 的在线正文 §1、§5 以及 Kabel–Brukner–Wieland 的支撑假设和有限距离限制。没有把文献摘要当作边界量子代数闭合的证明。

Assumptions:

- 四维 $\Lambda=0$ 真空、已声明的 ADM/GHY 符号；正面非线性构造使用闭切片、负曲率参考几何、短 CMC 演化域与实际空间规范 slice。
- §3 的背景和 seam 光滑，使用全部界面分量，$|\tau|>0$；其来源必须与所声称的物理变化一致。
- TT 代数计算在线性化引力中成立；Rosen no-go 是有限 slab 上的精确真空构造，要求 $a,b>0$。有限因子定理单独使用有限维 tensor factorization。
- 局部商使用光滑数据及光滑解族，不声称所有 Sobolev 层次的商映射均无导数损失。

Not verified:

- 任意 timelike/null/mixed-causal 人工界面的完整独立 boundary-frame 相空间、所有 corner 模式和全局 quotient。
- 任意解的 CMC foliation、全局边界钟或与所有参考选择的全局等价。
- CMC 非线性体积泛函的自伴量子实现、全量子引力的物理 Hilbert 空间与边界异常消除。

复算资料：

- [Mathematica 输入](verification/radiative-mathematica-checks.wl)
- [Mathematica 实际输出](verification/radiative-mathematica-output.txt)
- [xAct 完整请求与 setup](verification/radiative-xact-requests.txt)
- [xAct 结构化实际输出](verification/radiative-xact-output.txt)
- [精确 Rosen 解的 xAct 请求](verification/radiative-rosen-xact-request.txt)
- [精确 Rosen 解的实际输出](verification/radiative-rosen-xact-output.txt)

计算时曾修正一个 hyperbolic 基点测试式中的体积变化系数：$dV/d\tau=-3V/\tau$，故 $(\tau^2/3)dV/d\tau=-\tau V$；最终保存的 30 项检查使用修正后的式子。这个单点检查只核对归一化，不检验一般流的长期存在性。
