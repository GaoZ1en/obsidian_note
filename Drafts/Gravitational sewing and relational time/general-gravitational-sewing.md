# 一般引力界面的拼接：完整几何数据、辛结构与关系时间的边界

2026-09-10。接续 [球对称引力模型](schwarzschild-sewing.md)。本文固定理论为四维 Einstein 引力，讨论一般界面和辐射自由度；“一般”不表示同时包含任意高阶引力作用量。

## 1. 结论：可成立的普遍命题是什么

**无条件的“两个区域荷匹配，所以任意界面的光滑引力拼接就是直乘相空间的普通辛商”不成立。** 对话提出的是一个需要补全定义与假设的研究纲领；球对称例子没有证明该纲领的普遍版本。本文给出可证明的替代，并指出不能保留的箭头。

| 命题 | 本文结论 |
| --- | --- |
| 一般因果类型的光滑界面，完整一阶横向几何匹配等价于无分布式 Riemann 曲率脉冲 | 成立，定理 A；允许界面因果类型改变 |
| 已给定的两侧光滑 Einstein 真空解，在非 null 界面匹配全部度量与动量响应后可光滑拼接 | 成立，定理 B；不要求球对称或无辐射 |
| 一个积分时间平移荷匹配就足够拼接 | 错误；§5 给出精确非线性真空反例 |
| null 界面无物质薄壳就没有引力脉冲；或无脉冲就自动光滑 | 两者均错误；§6 分别给出精确反例 |
| 在实际匹配的解与线性化解上，空间分区的引力辛形式相加 | 成立，定理 C；须有相容的外边界与 corner 处理 |
| 任意区域相空间的直乘，除以某个未指定界面群，就自动等于整体物理相空间 | 尚不是一个已定义且已证明的普遍定理；§9 给出充分条件及每项条件的作用 |
| 拼接自动产生一个全局时钟和幺正量子关系演化 | 不成立为无条件推论；§11 给出独立的条件定理 |

最有内容的正面结果是：

$$
\boxed{
\text{非 null Einstein 真空界面：}\quad
h_A=h_B,\quad \Pi_A+\Pi_B=0
\quad\Longleftrightarrow\quad
\text{给定区域解可以光滑拼接。}
}
$$

它包含真正的非球对称和辐射解。这里的 $\Pi^{ab}(y)$ 是整个界面的局域张量密度，绝非仅一个能量数值。

对于任意因果类型，普遍的一阶命题是

$$
\boxed{
\text{共同零阶几何}+[Y_{ab}]=0
\quad\Longleftrightarrow\quad
\text{无 Riemann }\delta_\Gamma\text{ 项}
\quad\Longleftrightarrow\quad
\text{存在相容的 }C^1\text{ 度量拼接坐标。}
}
$$

后一式的正则性不能擅自升级为 $C^\infty$，也不能直接改写成量子 Hilbert 空间等式。这一几何层并非新的文献定理；它与 [Mars–Senovilla 的一般 hypersurface junction theorem](https://arxiv.org/abs/gr-qc/0201054) 一致。以下按本项目的作用量、响应和约化语言给出推导，并补上对 Wu 构想所需的逻辑区分。

## 2. Setup、约定与实际匹配域

设 $A,B$ 是两个带边界的时空区域，$\Gamma_A,\Gamma_B$ 通过指定映射识别为共同的嵌入、双侧 hypersurface $\Gamma$。局部使用共同 collar 坐标 $(r,y^a)$：

$$
A:\ r\leq0,\qquad B:\ r\geq0,\qquad \Gamma:\ r=0.
$$

两侧度量 $g_-,g_+$ 在各自闭半 collar 上光滑，整体 Lorentz 度量始终非退化。讨论局部于 $\Gamma$ 的内部；界面自交、多个接缝的交点及其 corner 数据不包含在这个局部 setup 中。它们的额外要求见 §10。

采用 signature $(-+++)$、$c=\hbar=1$，保留 $G>0$。同一理论的区域真空方程为

$$
R_{\mu\nu}=\Lambda g_{\mu\nu}.
$$

曲率号数满足平面波的 $R_{uxux}=-a\,a''$。辛形式沿用前稿：

$$
\Omega=-\delta\Theta,\qquad \iota_{X_H}\Omega=\delta H.
$$

在非 null 段取 Gaussian normal 坐标：

$$
g=\epsilon\,dr^2+h_{ab}(r,y)dy^ady^b,\qquad \epsilon=\pm1.
$$

$\epsilon=+1$ 对应 timelike 界面，$\epsilon=-1$ 对应 spacelike 界面。以共同方向 $n=\partial_r$ 定义

$$
K_{ab}=\frac12\partial_r h_{ab}.
$$

各区域 outward normal 则为 $n_A=+\partial_r$、$n_B=-\partial_r$，所以

$$
K_A^{\mathrm{out}}=K_-,\qquad K_B^{\mathrm{out}}=-K_+.
$$

以下先固定共同 collar 和识别映射，最后再处理坐标冗余。不能先把区域除以所有边界变换，再假装仍保留完整的界面识别资料。

“实际匹配域”指真实区域解的 trace 所形成的集合，及其真实线性化解：

$$
\mathcal Z_\Gamma=
\{(g_A,g_B)\in\operatorname{Sol}_A\times\operatorname{Sol}_B:
h_A=h_B,\ \Pi_A+\Pi_B=0\}.
$$

$\operatorname{Sol}_X$ 包括声明的外边界条件。并不假设任意函数对 $(h,\Pi)$ 都可以由区域真空解实现。尤其，timelike 界面的任意 Dirichlet–Neumann histories 不构成一个已经证明适定的 Einstein 初边值问题。

## 3. 作用量先于 moment map：必须释放什么

### 3.1 非 null 界面的完整响应

取 Einstein–Hilbert 加 GHY 作用量，区域之间采用同一边界极化：

$$
S_X=
\frac1{16\pi G}\int_X\sqrt{-g}(R-2\Lambda)
+\frac1{8\pi G}\int_{\partial X}\epsilon\sqrt{|h|}K^{\mathrm{out}}
+S_{\mathrm{corner},X}.
$$

人工界面上不添加独立物质作用量。若使用参考减除，其两侧贡献必须按取向相消。暂取变分紧支撑于 $\Gamma$ 内部，避免把端点项误认为零。

对协变诱导度量变分，on-shell 响应为

$$
\delta S_X\big|_\Gamma=\int_\Gamma d^3y\,\Pi_X^{ab}\delta h_{X,ab},
\qquad
\Pi_X^{ab}=
\frac{\epsilon\sqrt{|h_X|}}{16\pi G}
\left(K_X^{\mathrm{out}}h_X^{ab}-K_X^{\mathrm{out},ab}\right).
$$

该约定与前稿 Brown–York 张量满足
$\tau_X^{ab}=2\Pi_X^{ab}/\sqrt{|h_X|}$。

先识别两侧的诱导度量 $h_A=h_B=h$，再允许共同 $h$ 的全部紧支撑变分。于是

$$
\delta(S_A+S_B)\big|_\Gamma
=\int_\Gamma d^3y\,(\Pi_A^{ab}+\Pi_B^{ab})\delta h_{ab},
$$

从而

$$
\boxed{\Pi_A^{ab}+\Pi_B^{ab}=0.}
$$

这里的变分原理在分片光滑的 off-shell 度量空间上执行，再同时施加 bulk 方程；没有假设受限 on-shell 解空间的 trace 变分满射。若先把每侧解空间压得很小，只允许少数 $\delta h$，就只能得到相应的投影方程。

若人工壁实际带有 $S_\Gamma[h]$，方程改为
$\Pi_A+\Pi_B+\delta S_\Gamma/\delta h=0$。零 level 来自“没有独立界面物质、没有未抵消界面项”的作用量选择，而不是仅由 moment-map 恒等式决定。

### 3.2 只释放 lapse 会丢掉哪些方程

对 timelike $\Gamma$ 写

$$
h=-N^2dt^2+\sigma_{AB}(dy^A+V^Adt)(dy^B+V^Bdt).
$$

其六个独立分量分成 lapse、两个 shift 和三个二维度量分量。只释放一个共同 lapse，或只释放它的空间常数模，至多得到能量密度匹配或一个积分能量匹配。释放 shift 才加入动量响应；释放 $\sigma_{AB}$ 才加入压力与剪切响应。

因此一般关系为

$$
\text{全部 }\Pi\text{ 匹配}
\Longrightarrow
\text{能量与动量响应匹配},
$$

逆向不成立。球对称固定半径真空把未独立变分的响应锁定为同一个质量参数的函数，正好掩盖了这个差别。

同样，若将全部允许变分缩小到 $\delta h_{ab}=\mathcal L_\xi h_{ab}$，紧支撑的 $\xi$ 只给出

$$
\int_\Gamma(\Pi_A^{ab}+\Pi_B^{ab})\mathcal L_\xi h_{ab}
=-2\int_\Gamma \xi_bD_a(\Pi_A^{ab}+\Pi_B^{ab}).
$$

$\Pi$ 为密度，$D$ 在此按相应权重作用。这只测试响应的散度；真空 Codazzi 方程已使每侧响应守恒。故“对所有切向重参数化作变分”不能替代“释放全部边界度量”。这条变分恒等式也不等于瞬时切片上的全部 surface-charge moment maps；两种结构必须各自定义。

## 4. 定理 A 与 B：先证明几何拼接

### 4.1 定理 A：任意因果类型的一阶拼接

选择共同横向向量 $\ell=\partial_r$，$n=dr$，$n(\ell)=1$。不要求 $\ell$ 是单位法向，也不要求 $\Gamma$ 非 null。两侧共同零阶数据为

$$
h_{ab}=g(e_a,e_b),\qquad
\ell_a=g(\ell,e_a),\qquad \ell^{(2)}=g(\ell,\ell).
$$

要求它们在指定识别下相同，且完整矩阵

$$
\begin{pmatrix}
\ell^{(2)}&\ell_b\\
\ell_a&h_{ab}
\end{pmatrix}
$$

非退化。即使 $h_{ab}$ 退化，该条件仍有意义。$\ell_a,\ell^{(2)}$ 指明两侧怎样识别横向参考架，不是把 null 诱导度量当作可逆矩阵。

令 $[f]=f_+-f_-$，定义横向一阶数据

$$
Y_{ab}=\frac12(\mathcal L_\ell g)(e_a,e_b),\qquad
[Y_{ab}]=\frac12[\partial_r g_{ab}].
$$

**定理 A。** 在上述共同零阶几何、分片光滑性及局部 collar 条件下，

$$
[Y_{ab}]=0
\quad\Longleftrightarrow\quad
R_{\alpha\beta\gamma\delta}^{\mathrm{sing}}=0
\quad\Longleftrightarrow\quad
\text{可选相容坐标使拼接度量为 }C^1.
$$

第二个条件指完整 Riemann 张量的 $\delta(r)$ 系数为零，强于只要求 Einstein 张量无 $\delta(r)$ 项。结论在界面因果类型改变的点也成立。

**证明。** 因为两侧 $g_{\mu\nu}|_\Gamma$ 相同，所有切向一阶导数已经相同，故

$$
[\partial_\lambda g_{\mu\nu}]=n_\lambda c_{\mu\nu},
\qquad c_{\mu\nu}=[\partial_r g_{\mu\nu}].
$$

Christoffel 符号有阶跃，曲率中唯一的 delta 项来自其一阶导数：

$$
R^{\mathrm{sing}}_{\alpha\beta\gamma\delta}
=\mathscr R_{\alpha\beta\gamma\delta}\delta(r),
$$

$$
\mathscr R_{\alpha\beta\gamma\delta}
=\frac12\left(
n_\beta n_\gamma c_{\alpha\delta}
+n_\alpha n_\delta c_{\beta\gamma}
-n_\alpha n_\gamma c_{\beta\delta}
-n_\beta n_\delta c_{\alpha\gamma}\right).
$$

在 adapted 坐标中，
$\mathscr R_{rarb}=-c_{ab}/2=-[Y_{ab}]$，所以无完整曲率脉冲必然要求 $[Y]=0$。反之，若 $c_{ab}=0$，则存在协向量 $a_\mu$ 使

$$
c_{\mu\nu}=n_\mu a_\nu+n_\nu a_\mu.
$$

代回上式即得 $\mathscr R=0$。余下的 $c_{r\mu}$ 只描述横向坐标的一阶导数如何跨界面连接：取保持界面及其一阶坐标 Jacobian 的分片光滑坐标变换，其逆变换二阶导数跳跃选择为

$$
[\partial_r^2x^\mu]=-g^{\mu\nu}a_\nu.
$$

局部可用 $r_+^2/2$ 乘此向量实现。它对 $c_{\mu\nu}$ 的改变量为
$-n_\mu a_\nu-n_\nu a_\mu$，因此全部一阶跳跃消失。新坐标变换整体为 $C^1$、两侧光滑；这构造了相容的 $C^1$ 度量拼接 atlas。反向由 $C^1$ 度量无一阶跳跃立即成立。证毕。

这个证明未除以 $n^2$，因此同时覆盖 spacelike、timelike、null 和变号界面。$[Y]=0$ 的零条件在相容 rigging 改变下不变；单个 $Y_{ab}$ 的分量当然依赖所选 rigging。

收缩上式得到

$$
\mathscr R_{\mu\nu}=
\frac12\left(
n^\alpha c_{\alpha\mu}n_\nu+
n^\alpha c_{\alpha\nu}n_\mu-
n^2c_{\mu\nu}-
c^\alpha{}_\alpha n_\mu n_\nu\right).
$$

这里 $n^2=0$ 时丢失的约束正是 §6 反例的来源。一般 junction 的这一层与 [Mars–Senovilla，§5、定理 6–8](https://arxiv.org/abs/gr-qc/0201054) 相符；本文将其与光滑性、响应和相空间结论分开使用。

### 4.2 定理 B：非 null 真空界面的光滑拼接

**定理 B。** 给定 §2 的两个在闭半 collar 上 $C^\infty$ 的 Einstein 真空解，具有同一 $\Lambda$。若 $\Gamma$ 非 null，则以下条件等价：

1. 在共同诱导度量和法向方向下，$h_A=h_B$、$\Pi_A+\Pi_B=0$。
2. $h_-=h_+$、$K_-=K_+$。
3. 两个给定解在共同 Gaussian collar 中拼成一个 $C^\infty$ Einstein 解。

这是“给定区域解的 transmission theorem”，没有把任意界面 histories 的存在性或稳定性藏进结论。

**证明第一步：响应的可逆性。** 令
$L_{ab}=K^{\mathrm{out}}_{A,ab}+K^{\mathrm{out}}_{B,ab}$。
在共同 $h$ 上，响应匹配等价于

$$
Lh^{ab}-L^{ab}=0.
$$

用 $h_{ab}$ 收缩得到 $2L=0$，再代回得到 $L_{ab}=0$。非退化三维度量上的 trace reversal 是可逆的，所以这一步没有抹掉辐射剪切。

**第二步：高阶法向 jets 由真空方程逐阶匹配。** 在 Gaussian 坐标中，

$$
\Gamma^r{}_{ab}=-\epsilon K_{ab},\quad
\Gamma^a{}_{rb}=K^a{}_b,\quad
\Gamma^a{}_{bc}=\Gamma[h]^a{}_{bc}.
$$

直接代入 Ricci 张量得

$$
R_{ab}[g]=R_{ab}[h]
-\epsilon\left(\partial_rK_{ab}+KK_{ab}-2K_{ac}K^c{}_b\right),
$$

故 Einstein 方程给出

$$
\partial_rh_{ab}=2K_{ab},\qquad
\partial_rK_{ab}
=\epsilon(R_{ab}[h]-\Lambda h_{ab})
-KK_{ab}+2K_{ac}K^c{}_b.
$$

共同的 $h,K$ 及其全部切向导数相同，因此右侧在两边相同，$\partial_rK$ 也相同。对上式连续作法向微分：第 $j+1$ 阶法向 jet 仅由已匹配的较低法向 jets、它们的切向导数及 $h^{-1}$ 决定。归纳得到所有法向 jets 相同。分片光滑函数的各阶 jets 一致，因而粘贴函数光滑；Einstein 方程随后在 seam 上由连续性成立。

第三个条件显然反推前两个。证毕。

这个推导没有用 Birkhoff 定理、静态性、小扰动或无局域自由度假设。它没有证明从任意给定 $h,K$ 解出 timelike Einstein 边值问题；已存在的区域解是定理的输入。它也不声称整个区域的全局拓扑、全局双曲性或远处边界条件由局部匹配自动决定。

## 5. 反例一：相同积分能量不能拼接辐射几何

取 $\Lambda=0$，在共同坐标 $(u,v,x,y)$ 中令

$$
g_A=-2du\,dv+dx^2+dy^2,\qquad x\leq0,
$$

$$
g_B=-2du\,dv+dx^2+dy^2+2xyf(u)du^2,\qquad x\geq0.
$$

$f$ 是任意光滑非零函数。两者都是精确真空解；对第二个度量，

$$
R_{\mu\nu}=0,\qquad R_{uxuy}=-f(u).
$$

$x=0$ 是 timelike 界面，共同诱导度量恰为

$$
h=-2du\,dv+dy^2.
$$

用共同法向 $+\partial_x$，

$$
K_{A,ab}=0,\qquad K_{B,uu}=yf(u),\qquad K_B=0.
$$

这里第二式中的 $K_B$ 使用共同方向；实际 $B$ 的 outward $K^{\mathrm{out}}_{B,uu}=-yf(u)$。所以响应之和非零，不能光滑拼接。

再取 $t=(u+v)/\sqrt2$、$z=(v-u)/\sqrt2$，则 $h=-dt^2+dz^2+dy^2$。界面 Brown–York 能量密度之和为

$$
\tau_{tt,A}+\tau_{tt,B}=\frac{y f((t-z)/\sqrt2)}{16\pi G}.
$$

在每个固定 $t$ 的对称窗口 $y\in[-L,L]$、$z\in[z_1,z_2]$ 上，

$$
Q_A[\partial_t]+Q_B[\partial_t]
=\int_{z_1}^{z_2}dz\int_{-L}^{L}dy\,
\frac{yf((t-z)/\sqrt2)}{16\pi G}=0.
$$

这是精确的“共同诱导度量、相同总能量、不同局域响应”例子。两側使用相同零参考；一般相容参考项仍在和中抵消。窗口端点不参与局部拼接判据；该反例没有声称有限窗口上所有 corner 荷也已经匹配。

若仅增加所有局域 lapse/shift 测试，仍可能漏掉剪切。在线性化 Minkowski 真空中取 TT 扰动

$$
\delta g_{xx}=-\delta g_{yy}=q(t,z),\qquad
q_B=\sin(kz)\cos(kt),\quad q_A=0,
$$

在 $z=0$ 有 $q_A=q_B=0$，但

$$
[K_{xx}]=-[K_{yy}]=\frac{k}{2}\cos(kt).
$$

一阶 $\tau_{tt},\tau_{tx},\tau_{ty}$ 全为零，空间 trace-free 应力不为零。这是局域 lapse/shift 匹配不穷尽线性化接缝数据的明确计算；此段只作一阶结论，不把它宣称为有限振幅精确解。

## 6. 反例二与三：null 界面的两个正则性层级

对 Rosen 平面波

$$
ds^2=-2du\,dv+a(u)^2dx^2+b(u)^2dy^2
$$

有精确恒等式

$$
R_{uu}=-\frac{a''}{a}-\frac{b''}{b},\qquad
R_{uxux}=-aa'',\qquad R_{uyuy}=-bb'',
$$

其余独立曲率分量由对称性决定。以下都局限在 $a,b>0$ 的小 collar，$\Gamma=\{u=0\}$ 为 null。

### 6.1 无物质薄壳仍可有纯 Weyl 脉冲

令 $u_+=\max(u,0)$，取

$$
a=1+\kappa u_+,\qquad b=1-\kappa u_+,\qquad \kappa\ne0.
$$

两侧各自平直，度量连续且局部 Lipschitz。一阶导数跳跃给出

$$
a''=\kappa\delta(u),\qquad b''=-\kappa\delta(u).
$$

由于 $a(0)=b(0)=1$，连续系数与 delta 的乘积没有歧义，得到

$$
R_{uu}^{\mathrm{sing}}=0,\qquad
R_{uxux}^{\mathrm{sing}}=-\kappa\delta(u),\quad
R_{uyuy}^{\mathrm{sing}}=+\kappa\delta(u).
$$

因此拼接满足分布式真空 Einstein 方程，却包含引力脉冲。零表面物质应力没有强制 $[Y_{xx}]=\kappa$、
$[Y_{yy}]=-\kappa$ 消失。

### 6.2 连完整一阶数据匹配，也只保证一阶正则

取 $\lambda>0$，定义

$$
a(u)=
\begin{cases}1,&u\leq0,\\\cosh(\lambda u),&u\geq0,\end{cases}
\qquad
b(u)=
\begin{cases}1,&u\leq0,\\\cos(\lambda u),&u\geq0.\end{cases}
$$

在 $|u|$ 足够小时 $b>0$。两侧精确真空；共同零阶几何及全部一阶横向 jets 都匹配：

$$
a(0)=b(0)=1,\qquad a'(0)=b'(0)=0.
$$

故 $[Y]=0$，没有任何 Riemann delta 项。但曲率阶跃为

$$
[R_{uxux}]=-\lambda^2,\qquad
[R_{uyuy}]=+\lambda^2.
$$

拼接度量为 $C^1$、分片光滑，无法成为光滑曲率的 Einstein 几何。它说明：即使补全一阶数据，null 真空方程也不提供定理 B 的非特征法向递推。

若在固定相容 collar 中要求两侧全部横向 jets
$[\partial_r^j g_{\mu\nu}]=0$ 对每个 $j\geq0$ 成立，则一般因果类型的 $C^\infty$ 粘贴当然充分，也在该共同光滑 gauge 中必要。但这是完整光滑 trace 条件；不能声称 Einstein 方程、一个能量约束或一阶 null 数据已经自动提供它。

## 7. 定理 C：空间分区的辛形式拼接与通量抵消

这一节先取 timelike 人工壁 $\Gamma$，它将同一空间切片分成两部分：

$$
\Sigma=\Sigma_A\cup_S\Sigma_B,\qquad S=\Sigma\cap\Gamma.
$$

选择一个局部整体双曲 slab，或其他已定义良好的解空间；外物理边界采用使整体变分原理和辛结构成立的边界条件。先让变分在 $S$ 的邻域以外的外部 joints 处消失，或保留一个相容的 corner 极化。不能把带任意输入的单个开放区域先称作一个封闭 Hamiltonian 系统。

写引力拉格朗日的变分

$$
\delta L=E^{\mu\nu}\delta g_{\mu\nu}+d\theta(g;\delta g),
\qquad \omega=-\delta\theta.
$$

区域辛势包含所选边界极化的 corner 修正；其号数固定为
$\Omega_X=-\delta\Theta_X$。对于 fixed collar、fixed cut 的光滑匹配解，令

$$
\mathfrak g:\mathcal Z_\Gamma\longrightarrow\operatorname{Sol}_{A\cup B}
$$

为把两个给定度量逐点粘贴的映射。

**定理 C。** 在定理 B 的匹配域上，对真实光滑解族的切向变分，采用同一局部辛势以及相消的人工 corner 数据，有

$$
\boxed{
\mathfrak g^*\Omega_{A\cup B}
=\jmath^*(\Omega_A+\Omega_B).
}
$$

$\jmath$ 是实际匹配域到区域解空间直乘的嵌入。此处的 $\Omega_A,\Omega_B$ 首先是指定切片上的预辛形式，尚不要求它们在任意开放区域历史间各自守恒。

**证明。** 定理 B 保证每个匹配点重建一个光滑整体解；其逆为限制到两侧，因此在指定 collar 和 cut 的度量代表上有互逆的粘贴与限制。对解族微分后，区域变分也粘为整体线性化解。局部的 $\theta,\omega$ 由同一度量和变分构造，故

$$
\int_\Sigma\omega
=\int_{\Sigma_A}\omega+\int_{\Sigma_B}\omega.
$$

共同 cut 的两个边界取向相反，相容 corner 修正相消；这得到所述等式。没有用维数计数代替重建。

再看时间切片之间的通量。在界面上用 GHY 极化表示时，除显式的切向全导数/corner 项外，

$$
\omega_X\big|_\Gamma
=\delta h_{X,ab}\wedge\delta\Pi_X^{ab}.
$$

在实际匹配域及其切向变分上，

$$
\begin{aligned}
\jmath^*(\omega_A+\omega_B)\big|_\Gamma
&=\delta h_{ab}\wedge
\delta(\Pi_A^{ab}+\Pi_B^{ab})\\
&=0.
\end{aligned}
$$

因此一侧流出的辛通量由另一侧接收。利用 $d\omega=0$ 和 Stokes 定理，整体 $\Omega$ 在满足外边界条件的切片间守恒。这证明了通量抵消的物理机制。证毕。

这里的抵消使用了两层条件：共同 trace，以及响应的完整线性化匹配。不能只在某个背景上把两个总荷设为相等，然后推断任意区域扰动的通量也相消。

### 7.1 辐射区域确实存在未抵消的通量

在平直背景的一种 TT 极化中，
$\delta g_{xx}=q,\delta g_{yy}=-q$。采用去掉显式全导数后的 canonical 边界极化，二次作用量为

$$
S^{(2)}=\frac1{32\pi G}
\int dtdzdxdy\,\left[(\partial_tq)^2-(\partial_zq)^2\right].
$$

对 outward $+\partial_z$ 的壁，
$\Pi_q=-\partial_zq/(16\pi G)$。取 $k\ne0$ 和两个允许的线性化真空变分

$$
q_1=\cos(k(t-z)),\qquad q_2=\sin(k(t-z)),
$$

则壁面辛通量密度为

$$
\omega_\Gamma(q_1,q_2)
=q_1\Pi_{q_2}-q_2\Pi_{q_1}
=\frac{k}{16\pi G}\ne0.
$$

因此释放全部 radiative histories 后，单一区域的辛形式一般随切片改变。固定 Dirichlet history 可使这部分通量为零，但那是某个固定源问题；不能把所有固定源纤维的并集仍当作同一个无通量 Hamiltonian 系统。

这个计算检验的是线性化 radiative flux，不能替代非线性 Einstein 初边值适定性证明。边界变分与守恒辛形式的关系可对照 [Harlow–Wu，§2.2](https://arxiv.org/abs/1906.08616)；带辐射通量的荷为何未必是普通 Hamiltonian，也正是 [Wald–Zoupas](https://arxiv.org/abs/gr-qc/9911095) 所处理的问题。

## 8. Spacelike 拼接是演化关系，不能数两次同一份 Cauchy 数据

若 $\Gamma$ 本身是一张完整的 spacelike Cauchy 切片，它连接过去区域和未来区域，而非将同一 $\Sigma$ 分为并排的两个空间区域。

在整体初值问题已成立的域内，令 $\mathcal E$ 为两张 Cauchy 切片之间的演化映射，则辛结构的正确表达为

$$
\boxed{\mathcal E^*\Omega_+=\Omega_-.}
$$

其图像满足

$$
(-\Omega_-+\Omega_+)\big|_{\operatorname{Graph}\mathcal E}=0.
$$

当 $\mathcal E$ 是辛同构且相空间正则时，该图像是
$\mathcal P_-^{-}\times\mathcal P_+$ 的 Lagrangian 关系。完整引力的这个说法仍需先处理 gauge 和外边界。

即使只看一个 canonical pair，这个区别也不可省去。识别两侧同一数据 $(q,p)$ 后，

$$
(\delta q_-\wedge\delta p_-+
\delta q_+\wedge\delta p_+)\big|_{\mathrm{diag}}
=2\delta q\wedge\delta p,
$$

而带过去/未来取向的差在演化图上为零。整体 Cauchy 辛形式只应计一次。因此“任意界面”必须同时区分空间并合和时间复合；前稿球对称径向拼接属于前者。

Null 面通常不是单独完整的非特征 Cauchy 数据面。其 characteristic evolution 还需要相应的另一支初始 null 数据、corner 条件和约束处理；本文没有把它替换成一个不存在的普遍非退化 $\Omega_\Gamma$。

## 9. 什么时候才能把结果写成 moment map 和辛商

### 9.1 荷相加：一个准确但有前提的代数命题

设已构造两个具有闭辛形式的 extended regional phase spaces，具有同一群 $G_\Gamma$ 的 Hamiltonian 作用，且对同一个场无关生成元 $\xi$，

$$
\iota_{X_\xi^A}\Omega_A=\delta Q_A[\xi],
\qquad
\iota_{X_\xi^B}\Omega_B=\delta Q_B[\xi].
$$

则直乘上的 diagonal 作用满足

$$
\boxed{
\iota_{(X_\xi^A,X_\xi^B)}(\Omega_A+\Omega_B)
=\delta\mu_\Gamma[\xi],\qquad
\mu_\Gamma[\xi]=Q_A[\xi]+Q_B[\xi].
}
$$

证明只是直乘辛形式的缩并相加。但要称 $\mu$ 为 equivariant moment map，还要两侧荷代数相容，中心项相消或由同一个已声明的中心扩张处理。加常数自由度及约束 level 仍由作用量和参考项固定。

可积性不能略去。令
$\alpha_\xi=\iota_{X_\xi}\Omega$，则

$$
\delta\alpha_\xi=\mathcal L_{X_\xi}\Omega.
$$

存在 $Q_\xi$ 首先要求 $\alpha_\xi$ 闭；全局存在还要求其 periods 消失。生成元必须保持实际边界条件并在所选相空间上有定义。若有场依赖 $\xi[g]$，还需处理其变分及 adjusted bracket，不能照抄场无关公式。

对于一般开放区域，§7 的通量说明这些前提不会由“它是引力区域”自动成立。引入边界 frame 可以改变问题的相空间，但不能只写一个新变量名字，就算证明了新的辛形式、群作用和可积性。[Donnelly–Freidel](https://arxiv.org/abs/1601.04744) 构造的是带 codimension-two 边界参考数据的子区域相空间；它与任意 codimension-one 历史的无条件拼接等式不是同一句话。[Speranza，§6.1](https://arxiv.org/abs/1706.05061) 也明确要求额外边界条件才能让 surface translations 成为 Hamiltonian 对称性。

### 9.2 从 moment map 到几何辛商所需的全部条件

令 $\mathcal P_A^{\mathrm{ext}},\mathcal P_B^{\mathrm{ext}}$ 为某个具体构造，已经解掉选定的 bulk gauge 冗余，并保留所需 boundary frames。以下是一个**条件辛约化命题**。

假设：

1. 上述 Hamiltonian 群作用和零 level 存在；在处理的正则域内，其约化具有合法的光滑结构。无限维场论还须给出相应函数空间和商的适定性，不能仅引用有限维维数公式。
2. 在已有的 trace 识别条件下，$\mu^{-1}(0)$ **确实等于**全部几何匹配域，而非仅它的一个弱投影。
3. 粘贴映射到目标整体物理空间是光滑满射，具有局部光滑截面，且其纤维恰好为该群的轨道。若整体 gauge 可以移动人工 cut，区域描述还须包括 cut 的 embedding/frame，或采用一个有效固定 cut gauge；不能漏掉这一冗余。
4. 定理 C 的辛形式恒等式适用，限制辛形式的完整核恰为这些规范轨道方向，且没有遗漏的 outer-boundary 或 corner 物理自由度。

则

$$
\boxed{
\mathcal P_{A\cup B}
\simeq
(\mathcal P_A^{\mathrm{ext}}\times\mathcal P_B^{\mathrm{ext}})//_0G_\Gamma.
}
$$

**证明。** 满射与纤维条件使粘贴映射降为轨道商到整体空间的双射。正则商结构使下降映射光滑；局部截面复合轨道投影给出光滑逆映射，并在重叠处由纤维条件相同。辛形式恒等式与完整核条件保证二形式下降且非退化，下降后的形式等于整体辛形式。证毕。

这不是将假设 2–4 宣称为一般引力定理。它精确标记：前稿 Schwarzschild 模型已经逐项完成它们；本稿对一般非 null 真空完成了几何匹配及预辛拼接层，却没有对任意 extended phase-space 构造证明 2–4。

例如只选 $\mathbb R$ 时间平移群时，§5 直接破坏假设 2。若只列出若干已知零方向却没有证明完整核，则假设 4 仍未完成。遇到 Killing 稳定子或秩改变，不能把全体解写成同一普通辛流形；可以保留轨道、稳定子和分层结构，但那是另一种明确的商对象。

### 9.3 一个不夸大的统一表达

先使用真实几何匹配关系，再处理兼容的 gauge，是普遍可保留的顺序：

$$
\boxed{
\text{区域解及参考架}
\ \longrightarrow\
\text{完整 trace 匹配域}
\ \longrightarrow\
\text{整体解}
\ \longrightarrow\
\text{物理 gauge 商}.
}
$$

对 fixed-cut 度量代表，定理 B 的中间粘贴与限制是互逆的；对包含 cut 位置的完整 gauge 问题，必须再定义相容变换及其稳定子。仅把
$\operatorname{Sol}_A\times\operatorname{Sol}_B$ 换一个名字叫“可拼接解”，不构成证明；本稿实际匹配域的充分性来自 §4 的法向 jet 递推。

## 10. Corners、多个界面和来源常数

局部定理适用于平滑 seam 的内部。若 $\Gamma$ 有端点、与其他面相交、或允许 corner 几何变化，边界变分还包括

$$
\delta S\big|_{\mathrm{corner}}
=\int_S p_I\,\delta q^I
$$

这一类项。应从指定作用量求出实际 $(q^I,p_I)$，再识别共同 corner 数据并匹配其取向响应；不能在中间积分分部时丢掉它。引力中面积密度与法向 boost/角度是常见候选变量，但其哪些是固定源、规范 frame 或物理变量，取决于极化。

若从一个给定光滑整体 slab 切开，选取可加的 GHY/joint 极化，并限制变分保持外部 joint 数据，则人工 joints 的贡献在重建后相消；这是定理 C 使用的情形。相容性须包括 joint 参考常数。本文没有证明对任意独立 corner 边界条件都存在同一辛商。

对于多个互不相交的非 null 人工 seam，如果每条 seam 都满足定理 B，局部度量逐点粘贴与求和的结合律使几何重建与辛形式相加与次序无关。对于相交 seams，还需参考架在交点的识别满足 cocycle 条件，并处理角点方程；不能由两两能量匹配推出多重拼接。

界面移动到 null 或发生因果类型改变时，$\epsilon$-单位法向及普通 GHY 表示不再适用。定理 A 的 rigging 表达仍适用，但作用量、边界极化、corner 及退化的 canonical 数据需要重新指定。这里不把非 null 的 $\Pi^{ab}$ 公式延拓成一条未经定义的 null 动量公式。

## 11. 从拼接到 Page–Wootters：一个独立的条件定理

几何拼接保证边界响应相容，没有选择一个物理时钟。要继续得到 Wu 所需的关系演化，至少需要一个具体的去参数化结构。

### 11.1 经典条件

在处理剩余约束的某个相空间域内，存在 canonical 变量 $(T,P_T;z)$，使选中的约束等价于

$$
C=P_T+H(T,z)=0.
$$

还须有 $\{T,C\}=1$，以及剩余约束 $D_\alpha(z)$ 与此分解相容：

$$
\{T,D_\alpha\}=\{P_T,D_\alpha\}=0,\qquad
\{H(T),D_\alpha\}=f_\alpha{}^\beta D_\beta.
$$

在 $T=t$ gauge 中，

$$
\frac{dz}{dt}=\{z,H(t)\}.
$$

这是通过解出 $P_T=-H$ 得到的关系动力学，不是单靠荷相加得到的结果。单个正则约束附近可以作局部 canonical 适配，但这既没有选出自然的边界钟，也没有保证非平凡的 $H$ 或一个全局时钟。

例如若约束流存在周期 $P>0$ 的闭轨道，而全局单值 $T$ 满足 $\{T,C\}=1$，沿轨道积分会得到

$$
0=T(P)-T(0)=\int_0^P ds=P,
$$

矛盾。因此拼接规范流未必能由一个全局实值时钟参数化。有限周期模型正是通过周期 POVM 而非全局实值 canonical time 处理这一问题。

一般 ADM 的局部法向变形还满足带空间度量结构函数的关系

$$
\{H[N],H[M]\}
=D\!\left[q^{ij}(N\partial_jM-M\partial_jN)\right].
$$

这里 $D$ 采用生成正向空间 Lie 导数的约定，并取紧支撑 smearing 以避开外边界项。结构函数随空间度量变化这一点可对照 [Bonzom–Dittrich 的 hypersurface-deformation 讨论](https://arxiv.org/abs/1304.5983)。它不禁止在特定模型中选一个一参数作用，却说明从全体约束中自然抽出一个与其余约束独立的 Abelian 时间扇区，需要额外构造；本文将该标准 ADM 结构作为背景输入，没有重新计算完整的泛函约束代数。

### 11.2 量子条件及其实际结论

进一步假设剩余约束已给出物理空间 $\mathcal K$，$\widehat H(t)$ 在其上有指定共同稠密定义域，满足保证唯一 unitary propagator $U(t,t_0)$ 的算符条件，并保持剩余约束。若量子约束实现为

$$
\widehat C=-i\partial_T+\widehat H(T),
$$

则其分布式解为

$$
\Psi(T)=U(T,t_0)\psi_0,\qquad \psi_0\in\mathcal K.
$$

用任意时刻的守恒内积

$$
\langle\Psi_1,\Psi_2\rangle_{\mathrm{phys}}
=\langle\Psi_1(t),\Psi_2(t)\rangle_{\mathcal K}
$$

定义物理 Hilbert 空间，评价映射 $R_t\Psi=\Psi(t)$ 是 unitary，且

$$
i\partial_tR_t\Psi=\widehat H(t)R_t\Psi,\qquad
R_{t_2}R_{t_1}^\dagger=U(t_2,t_1).
$$

这给出一个严格的关系演化条件命题；$\widehat H$ 与 $t$ 无关时退化为前稿的指数演化。若时钟采用 POVM 而非 canonical $T$，还需另外证明其 conditioning 与这些 $R_t$ 一致。

本文没有构造完整四维量子引力的 $\mathcal K$，没有证明无异常量子约束代数，也没有证明量子化与一般辛约化交换。故

$$
\mathcal H_{A\cup B}
\sim \operatorname{Inv}_{G_\Gamma}
(\mathcal H_A^{\mathrm{ext}}\otimes\mathcal H_B^{\mathrm{ext}})
$$

仍只能是给定量子化方案后的待证表达。甚至对已完成的连续质量模型，普通运动学不变子空间就为零，必须使用 rigging map。离散直和、连续直积分、分布式约束解和物理内积不能互相替换。

## 12. 对 Wu 构想的最终定位与已完成范围

可以普遍保留的物理机制是：将一个真实引力系统切成两块时，人工边界上的几何响应被分开记录；重新识别并释放共同几何，使这些响应相消；在实际匹配解上，一侧的辐射辛通量流向另一侧。这个机制无需球对称，也无需没有局域自由度。

球对称模型额外实现了两个强简化：一个单调质量能量函数穷尽全部接缝响应；边界钟的参数化使剩余约束可以按一维 Abelian 扇区求解。一般引力不自动具有这两项性质。

因此本稿完成的替代表述为：

$$
\boxed{
\begin{gathered}
\text{任意光滑界面：完整一阶横向匹配}
\Longleftrightarrow \text{无完整曲率脉冲};\\
\text{非 null 真空：完整响应匹配}
\Longleftrightarrow \text{给定区域解光滑拼接};\\
\text{空间分区：实际匹配域上的预辛形式相加、内部通量相消};\\
\text{Hamiltonian 群作用、完整核与纤维条件成立时，才提升为辛商};\\
\text{另有相容时钟与量子化时，才得到关系幺正演化}.
\end{gathered}
}
$$

这已经回答“有辐射以后什么 survive”：**完整几何响应和预辛拼接 survive；单一能量的充分性与自动时钟分离不 survive 为普遍结论。** 它不是把尚未证明的无限维商、任意 corner 或完整量子引力问题标为完成。

若要继续建立一个包含辐射且真的能量子化的 Wu 模型，具体剩余任务是：在一个指定 Einstein 初边值域中构造带参考架的区域相空间，显式求出包含辐射的完整界面匹配及核，然后检验其中一个 clock gauge 是否在该域内可用。已有几何定理为这一任务提供了明确的匹配条件，不能代替这项构造。

## 13. 验证与来源层级

Verified: 24 项 Mathematica 精确检查通过；16 组 xAct 残差全部为零，包括一般曲率跳跃张量的代数结构、两个精确平面波族、两种法向 signature 的 Gaussian normal 曲率检查，以及 TT 线性化 Ricci 与二次 Einstein 作用量。定理 A 的局部坐标构造、定理 B 的一般 jet 归纳和定理 C 的粘贴/限制证明写在正文中；它们不由有限次计算替代。详见 [一般拼接验证记录](general-sewing-verification.md)。

Assumptions: 四维 Einstein 理论；指定识别及相容 collar；区域解在各自闭半 collar 上光滑；非 null 光滑定理使用同一 $\Lambda$；外边界和 joints 按各节声明处理；预辛结论使用真实匹配解族；普通辛商及量子时钟结论使用 §9、§11 的附加条件。

Not verified: 任意 timelike/null 边界数据的适定性；任意角点网络的完整变分与约化；一般辐射引力的全局 boundary-frame 相空间、完整 gauge 核和商结构；完整量子约束的无异常实现；全局时钟存在性。本文的反例已排除若干无条件版本，余项并未被有限检查证明。

本文直接使用的主文献：

- [Mars–Senovilla，Geometry of General Hypersurfaces in Spacetime: Junction Conditions](https://arxiv.org/abs/gr-qc/0201054)：1993 年论文，2002 年 arXiv 上传；一般界面 junction 与 null/non-null 区别。实际核对 PDF 第 25–26 页的定理 6–8。
- [Harlow–Wu，Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616)：边界变分原理、corner 修正和预辛结构；本文使用相反的 $\Omega=-\delta\Theta$ 号数并保持相应 Hamilton 缩并约定。
- [Donnelly–Freidel，Local subsystems in gauge theory and gravity](https://arxiv.org/abs/1601.04744)：带界面参考数据的子区域相空间；仅作为构造方向，不将其摘要视为本稿全部拼接结论的证明。
- [Speranza，Local phase space and edge modes for diffeomorphism-invariant theories](https://arxiv.org/abs/1706.05061)：surface symmetry 及 translation 的可积性条件。
- [Wald–Zoupas，A General Definition of Conserved Quantities in General Relativity](https://arxiv.org/abs/gr-qc/9911095)：有辐射通量时普通 Hamiltonian 荷的限制。
