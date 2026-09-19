# 具体引力例子、标尺与失败方向

2026-09-19。所有能量采用 [formalism](formalism.md) 的 $\Omega=\delta\theta$ 约定。本文中的传播波是四维 Einstein 引力的真实 TT 极化；AdS$_3$ 例子是边界引力子，两者不混同。

## 1. 从 Einstein 作用量得到一个可透明拼接的辐射区域

取平直背景

$$
ds^2=-dt^2+dx^2+dy^2+dz^2,
\qquad h_{xx}=q(t,z),\quad h_{yy}=-q(t,z),
$$

其余 $h_{\mu\nu}=0$。可以让 $(x,y)$ 在单位面积平坦环面上周期化，令空间区域为 $T^2\times[a,b]$；这样没有被隐去的横向侧面，也不需要无限 transverse volume。正常世界管为 $z=a,b$，$\xi=\partial_t$，参考 embedding 固定，$u=0$。

线性化 Einstein 方程为

$$
q_{tt}-q_{zz}=0.
\tag{B1}
$$

xAct 对全部 Ricci 分量的检查给出 $R_{xx}^{(1)}=(q_{tt}-q_{zz})/2$、$R_{yy}^{(1)}=-R_{xx}^{(1)}$，其余为零。一般 $q$ 有非零线性化 Riemann 曲率，故不只是平直背景的 proper gauge 扰动。

独立 tidal 分量为 $R_{txtx}^{(1)}=-q_{tt}/2$；它也经 xAct 直接验证。

令 $g_{xx}=1+\epsilon q$、$g_{yy}=1-\epsilon q$。直接从 Einstein–Hilbert 密度提取二次系数：

$$
[\epsilon^2]\sqrt{-g}R
=\frac12(q_t^2-q_z^2)
+2\partial_z(qq_z)-2\partial_t(qq_t).
\tag{B2}
$$

保留这些边界全导数与相应 GHY/端点处方，得到 canonical representative

$$
S^{(2)}=\frac{c}{2}\int dt\,dz\,(q_t^2-q_z^2),
\qquad c:=\frac1{16\pi G_N}.
\tag{B3}
$$

在 $+z$ timelike 壁，源一形式为 $\beta=-c q_z\delta q$。它也可独立由完整 Brown–York 矩阵线性化得到：使用旧稿 $\Pi_{\rm BY}$ 的归一化，有 $\delta\Pi_{\rm BY}^{xx}=q_z/(16\pi G_N)$、$\delta\Pi_{\rm BY}^{yy}=-q_z/(16\pi G_N)$。与 $-\delta\gamma/2$ 收缩正好给出上述 $\beta$。径向 gauge 使本例 Harlow–Wu 混合法向 corner 为零；常 $t$ 切片与壁保持正交。它并没有使 $\delta\beta$ 消失。

因此

$$
\begin{aligned}
\Omega_{[a,b]}(q_1,q_2)
&=c\int_a^b(q_{1,t}q_2-q_{2,t}q_1)dz,\\
\mathcal E_{[a,b]}[q]
&=c\int_a^b(q_t^2-q q_{tt})dz,\\
\mathscr F(q_1,q_2)
&=c(q_1q_{2,z}-q_2q_{1,z}),\\
\mathscr F_\xi[q]
&=c(q q_{tz}-q_tq_z).
\end{aligned} \tag{B4}
$$

$\mathscr F$ 是朝 $+z$ 的 flux；左壁的 outward flux 要取负号。利用 (B1)，

$$
\frac d{dt}\mathcal E_{[a,b]}
=-\mathscr F_\xi(b)+\mathscr F_\xi(a).
\tag{B5}
$$

这是有源/透明边界的有限区域问题。没有把波在壁上的历史固定为齐次 Dirichlet；若固定了那种历史，下面进入和离开的波包就不再是该问题的允许扰动。

### 1.1 一个全部可积分的波包

取 $q=e^{-(z-t)^2}$。它精确满足 (B1)，且

$$
e_\xi=2c e^{-2(z-t)^2},\qquad
\mathscr F_\xi=2c e^{-2(z-t)^2},
$$

$$
\boxed{\mathcal E_{[a,b]}(t)
=c\sqrt{\frac\pi2}\left[
\operatorname{erf}(\sqrt2(b-t))-
\operatorname{erf}(\sqrt2(a-t))\right].}
\tag{B6}
$$

对任意 $a<s<b$，

$$
\mathcal E_{[a,b]}=\mathcal E_{[a,s]}+\mathcal E_{[s,b]},
\qquad \mathscr F^{L,\rm out}_\xi(s)
+\mathscr F^{R,\rm out}_\xi(s)=0.
\tag{B7}
$$

每侧能量随波包穿过而改变，人工 seam 的 flux 精确抵消。全实线积分为 $c\sqrt{2\pi}$，但 (B5)–(B7) 的验证只需有限的 $a,b,s$，不要求去无穷远。这里 $C=0$ 是因为本来就在声明的固定 TT representative；一般 frame 的补偿由主文 (13) 给出。

### 1.2 为什么边界项影响正定性

on shell 积分分部得

$$
\mathcal E_{[a,b]}
=c\int_a^b(q_t^2+q_z^2)dz-c[qq_z]_a^b.
\tag{B8}
$$

齐次 Dirichlet 或 Neumann 闭合边界可令最后一项为零；开放区域不能删除它。实际反例为 $q=e^z\cosh t$，在 $[0,L]$ 上

$$
\mathcal E(0)=-\frac c2(e^{2L}-1)<0.
\tag{B9}
$$

它光滑、满足真空线性化方程、使用未来时间平移；负号来自开放边界项。故不能把 gauge 不变和 sewing 可加直接提升为任意开放区域的正定性。

### 1.3 非闭合的时间生成元

取两个允许切向量 $q_1=1$、$q_2=(t-z)^2$。它们均解 (B1)，但

$$
\frac d{dt}\Omega_{[0,L]}(q_1,q_2)=-2cL,\qquad
\mathscr F(q_1,q_2)|_L-\mathscr F(q_1,q_2)|_0=2cL.
\tag{B10}
$$

所以时间流不保持单一区域的 $\Omega$。这从实际 Einstein 辐射扇区实现主文 (20) 的非可积性诊断，并非只用一个抽象二维反例。

## 2. 一阶边界读数不能一般重建能量

令非零 $F\in C_c^\infty((-1,1))$，$q(t,z)=F(z-t)$。取 $t=0$ 和包含其支撑的有限区域。波包与它的所有导数在两个外壁附近都为零，故边界上的**全部局部一阶 jets**与 $h=0$ 相同。然而

$$
\mathcal E=2c\int(F')^2 dz>0.
\tag{B11}
$$

任何仅依赖此时这些一阶 boundary jets 的函数，对真空与此波包必须取同值，因此不可能普遍等于 (B11)。这个反例仍然成立于 fixed frame，不是 gauge ambiguity。

计算脚本另外用 $F=(1-z^2)^4$（$|z|<1$，外部为零）的 $C^3$ 可解替身作精确积分，得到 $262144c/45045$；其到三阶的端点 jets 为零。该有限正则替身是精确回归检查；上面的一般证明使用光滑 bump，不依赖这个替身的正则性。

要把 (B11) 从边界读出，必须使用满足二阶约束的 $k$、完整准局域荷处方，或者足够的动态历史与重建信息。主文 (28) 说明了二阶反作用进入的位置，但不供应一种只测一阶边界值的实验方案。

## 3. 能量匹配不等于几何匹配

在 seam $z=0$ 的两侧分别取

$$
q_L=\sin(kz)\cos(kt),\qquad q_R=-\sin(kz)\cos(kt).
$$

诱导扰动在 seam 都为零，镜像等长区域的 canonical energy 相等；但

$$
[q_z]_{0}=-2k\cos(kt).
\tag{B12}
$$

拼起的场二阶正常导数含 delta 函数，产生一个非真空的剪切响应/薄壳。将能量相等当作 transparent sewing 的充分条件是错误的。主文要求完整响应匹配，包括 shear、momentum 和 pressure，而不是只匹配 lapse 的积分能量。

## 4. AdS$_3$ 的非零 cocycle 标尺

重用并复跑 [modular wedge corner benchmark](../../Articles/Quantization%20in%20AdS/gravitational%20energy/modular%20wedge%20corner%20benchmark/README.md) 的单个实 Brown–Henneaux primary quadrature。对 $a=\pi/4$ 的区间，使用那里声明的模式归一化、modular 向量和 physical metric variation；令 $x=\tan\phi$，$x_c(R)=\sqrt{(R^2-1)/(R^2+1)}$。

原 surface density 和原始完整二阶 cut density 分别为

$$
f(x)=\frac{-5+13x^2-11x^4+3x^6}{16},\qquad
r(x)=-\frac{(1-x^2)^2(1+x^2)}8.
$$

实测回归结果为

$$
\int_{-1}^{1}f(x)dx=-\frac{32}{105},\qquad
\int_{-1}^{1}r(x)dx=-\frac{16}{105}.
\tag{B13}
$$

同一 physical variation 下本库与该外部论文的 current 约定相反。因此在本文的 project convention 中

$$
\Delta E_0=\int\Upsilon_{\rm p}=\frac{32}{105},
\qquad H_{\rm raw}^{[2]}=-\frac{16}{105}.
\tag{B14}
$$

这明确排除了把 raw full second-order Noether cut 改名成 gauge-completion cocycle。前者含反作用/面积等数据，后者是固定 first-order representative 的改变。

此次复跑包括模式与 Lie derivative 的相等、正确的实模式 radial sign、固定 anchors、非 Killing 向量的 surface descent、三个 bulk 点上的 current/divergence 和二阶 Einstein 残差、以及两个密度的精确表达，共 15 项。它没有复跑后续无穷多模式/联合 regulator 定理，也没有用该单模检查宣称全空间的 HW section 存在。

## 5. BTZ：从两个独立表示核对 Hessian 的因子

取

$$
ds^2=d\rho^2-r_+^2\sinh^2\rho\,dt^2
+r_+^2\cosh^2\rho\,d\phi^2,
\qquad \phi\sim\phi+2\pi,
$$

并使用旧脚本的 $\xi=(2\pi/r_+)\partial_t$，其中 $r_+$ 是**当前背景的固定参数**，求扰动变分时不跟着改变。$m=1$ Brown–Henneaux 向量乘一个在 horizon collar 恒为零的光滑 cutoff。扰动在内壁邻域为零，所用内壁源与 corner 不留贡献。这个向量在外边界带荷，不能 quotient 为 proper gauge。

Brown–York 的二次 Taylor 系数与直接 Lee–Wald 积分分别给出

$$
H_{\xi,T}^{[2]}=\frac{\pi^2(r_+^2+1)}{2r_+},\qquad
\boxed{\mathcal E=\frac{\pi^2(r_+^2+1)}{r_+}=2H_{\xi,T}^{[2]}.}
\tag{B15}
$$

这些公式采用旧稿实际输入 $\kappa_{\rm p}h_{\rm p}$；本节不重新归一化模式。直接 current 路线在两种 $r_+$、两种 collar 厚度上积分，并得到对任意同端点 jets 的 smooth collar 都成立的径向全导数恒等式。独立的 outer-charge 路线保留 $k$-linear 与 $h^2$ 部分再比较。

此例证明“同一个二阶能量的 bulk 与 surface 表示”和正确的因子二，不能支持把两种表示再次相加。它也不能把半经典二次量提升为完整 Brown–York 质量。

## 6. 面积标尺为何还需要 normal gauge

使用既有固定 bifurcation cut 的局部 normal-frame 计算，$g=G+\epsilon h+\epsilon^2k$、$k_{\rm null}\cdot l_{\rm null}=+1$，固定 $s_\xi$ 与 binormal 取向。结果为

$$
[\epsilon^2](\kappa_{\rm p}^2H_\xi^\gamma-s_\xi A)
=\frac{s_\xi}{2}\int_\gamma\sqrt q\,
h_{k_{\rm null}k_{\rm null}}h_{l_{\rm null}l_{\rm null}}.
\tag{B16}
$$

$k$ 从这个差值中消去；一般光滑扰动的右边不为零。HW normal-plane 条件令两个 normal-null 分量为零，才得到该阶的面积标尺。若 surface 也移动，还须补回 displacement 的面积变分和真实 endpoints。这里复核的是固定 cut 的代数展开，不是所有移动表面的存在定理。

## 7. 一个真实的二阶可延拓性障碍

把横向和 $z$ 都周期化，背景成为平直 $\mathbb R\times T^3$，取 $q(t,z)=\cos t\cos z$。它满足线性化方程。在 $t=0$，一阶 extrinsic curvature 为零，空间 metric perturbation 是 $\operatorname{diag}(\cos z,-\cos z,0)$。

xAct 直接计算空间标量曲率密度的二次系数：

$$
[\epsilon^2]\sqrt{g^{(3)}}R^{(3)}
=\frac32\sin^2z-2\cos^2z,
\qquad \int_0^{2\pi}\!dz\, [\epsilon^2]\sqrt{g^{(3)}}R^{(3)}=-\frac\pi2.
\tag{B17}
$$

任意平滑周期二阶 $k$ 对背景平直 scalar constraint 的贡献是线性全导数，积分为零；因为背景和一阶 $K_{ij}$ 都为零，$K^2-K_{ij}K^{ij}$ 此阶也没有可用项补偿 (B17)。所以该指定线性扰动不能延拓成具有相同一阶 tangent 的周期真空解曲线。这是一个具体的 Taub/linearization-stability obstruction。

它不破坏有限开放区域的定义 (1)，但排除了从“线性方程已解”直接跳到“必然有可用于读出二阶边界荷的 $k$”。

## 8. 验证范围

Verified: 新的 Einstein/TT/GHY 路线、Gaussian 有限区域通量与 sewing、负能量与非可积例子、紧支撑脉冲逻辑、剪切薄壳反例、紧空间二阶约束障碍，以及此次复跑的 AdS$_3$ 标尺。细节、计数和原始结果见 [verification](verification.md)。

Assumptions: 每个例子中明列的作用量、时间归一化、周期化、边界源空间与正则性；旧 AdS 模式使用旧脚本的耦合和 real-phase 选择。

Not verified: 新的四维非线性 Einstein 初边值问题；任意四维边界 frame 的显式 HW 解；非紧无限模联合极限；量子能量算符。紧支撑例子也没有宣称只由一阶边界数据可观测。
