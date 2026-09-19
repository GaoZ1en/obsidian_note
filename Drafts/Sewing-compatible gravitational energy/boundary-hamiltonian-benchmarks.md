# 边界荷—做功对的具体标尺

2026-09-19。使用 [主文](boundary-hamiltonian.md) 的符号和取向。
本文件为简洁记 $c=(16\pi G_N)^{-1}$；它不是原 formalism 的 corner 一形式。
所有计算脚本均独立保留输入、残差与版本。这里不复用旧模式的 CPS 单位归一化。

## 1. 精确四维 Rosen 波：非线性有限边界能量

取单位横向面积的 $T^2$，$v=z-t$，

$$
ds^2=-dt^2+dz^2+\gamma_{AB}(v)dx^A dx^B,
\quad \gamma_{AB}>0,\quad \mathcal A(v)=\sqrt{\det\gamma_{AB}}.
\tag{B1}
$$

区域是 $T^2\times[a,b]$，壁 lapse 为 1，$\xi=\partial_t$，无参考项，
切片与壁正交。直接从完整四维度量计算 Ricci，只有 null-null 分量可能非零：

$$
R_{vv}=-\tfrac12\operatorname{tr}(\gamma^{-1}\gamma'')
+\tfrac14\operatorname{tr}(\gamma^{-1}\gamma'\gamma^{-1}\gamma').
\tag{B2}
$$

在 $+z$ 壁，$K_{AB}=\gamma'_{AB}/2$。完整 Brown–York 能量和源项是

$$
H_+(v)=-2c\mathcal A'(v),\qquad
\mathcal F_+[\delta\gamma]
=\frac{\mathcal A}{2}T^{AB}\delta\gamma_{AB},
\quad T^{AB}=2c\bigl(K\gamma^{AB}-\tfrac12(\gamma^{-1}\gamma'\gamma^{-1})^{AB}\bigr).
\tag{B3}
$$

左壁取反号，故 $H_{[a,b]}=-2c[\mathcal A']_a^b$。
完整 Ricci 与壁响应的独立计算给出 off-shell 恒等式

$$
\partial_tH_++\mathcal F_+[\partial_t\gamma]
=-2c\mathcal A R_{vv}.
\tag{B4}
$$

真空时右侧为零；空间 sewing 是同一 $\gamma,\gamma'$ 在接缝的相消。
这不是只检查一个二次密度的可加性。

一个精确非平直真空实例为
$\gamma=\cos^2(kv)\operatorname{diag}(e^{2kv},e^{-2kv})$，
取 $|kv|<\pi/2$。它给 $H_+=2ck\sin(2kv)$，满足 (B2)–(B4)。
不把这个区域能量的符号当作一般正能量定理。

### 1.1 两个独立极化的二阶关系，并非只放入一个 scalar toy

令

$$
\gamma=I+\epsilon Q+\epsilon^2 s I+O(\epsilon^3),\quad
Q=\begin{pmatrix}p&q\\q&-p\end{pmatrix},\qquad
\mathcal A=1+\epsilon^2a_2+\cdots,
\quad a_2=s-\tfrac12(p^2+q^2).
$$

这里 $p(v),q(v)$ 是四维引力的 plus/cross 极化。真空约束为

$$
s''=pp''+qq''+\tfrac12(p'^2+q'^2),\qquad
 a_2''=-\tfrac12(p'^2+q'^2).
\tag{B5}
$$

它不仅有形式上的二阶解。在有限 $v$ 区间上取
$M_\epsilon=e^{\epsilon Q}$、$\det M_\epsilon=1$，
再令 $\gamma_\epsilon=a_\epsilon^2M_\epsilon$。精确 Ricci 恒等式为

$$
R_{vv}=-2a_\epsilon''/a_\epsilon
-\tfrac14\operatorname{tr}(M_\epsilon^{-1}M_\epsilon')^2.
$$

解线性 ODE
$a_\epsilon''+\tfrac18\operatorname{tr}(M_\epsilon^{-1}M_\epsilon')^2a_\epsilon=0$，
取 $a_\epsilon(v_0)=1,a_\epsilon'(v_0)=0$，便构造了精确真空解族。
系数光滑且在 $\epsilon=0$ 消失，有限区间上小 $\epsilon$ 时 $a_\epsilon>0$；
其二次展开正给 (B5)。这里没有周期化 $z$，不绕过原稿的 $T^3$ Taub 障碍。

因此

$$
H^{\partial[2]}_{[a,b]}=c\int_a^b(p'^2+q'^2)\,dz,
\qquad
\mathcal F'=-c[pp'+qq']_a^b,
$$

$$
\boxed{(H^\partial)''=
\mathcal E+c[pp'+qq']_a^b,\quad
\mathcal E=c\int_a^b(p'^2+q'^2-pp''-qq'')\,dz.}
\tag{B6}
$$

这是主文 (N18) 的具体实现。$p=e^v,q=0$ 时
$\mathcal E=0$ 而 $(H^\partial)''=c[e^{2v}]_a^b>0$；
它有真实曲率和上述真空延拓。紧支撑波包在壁附近为零时，边界源差额消失。
给 $s$ 增加 $A+Bv$ 会改变单壁荷，但在两壁和中消去。

旧审查中的 $K_\lambda=\mathcal E/2+\lambda c[pp'+qq']/2$
都可配一个改进后的通量。这里**固定实际 EH+GHY 源响应**后，
Brown–York 二次读出选中 $\lambda=1$，不是 $\lambda=0$。
这不是从 sewing 单独推导出的普遍选择。

## 2. 静态 Schwarzschild–AdS：不丢失质量，并区分两种时钟

令 $f(r)=1+r^2/L^2-2G_NM/r$，$f_0(r)=1+r^2/L^2$，
在有限 $R$ 且 $f(R)>0$ 取圆柱壁。采用与该壁诱导 metric 匹配的纯 AdS 圆柱参考减除。
它是本 benchmark 选定的参考处方，不等于所有有限半径 counterterm 方案。
在这个圆柱子族上，可用下面一个明确的内禀协变作用量实现相同读数：

$$
S_{\mathrm{ref}}=-4c\int_{\mathcal B}\sqrt{-\gamma}
\sqrt{L^{-2}+\mathcal R[\gamma]/2}\,d^3y.
$$

这里限定根号内为正的源邻域。在静态圆柱上 $\mathcal R=2/R^2$，
其能量响应是 $E_{\mathrm{ref}}=R\sqrt{f_0}/G_N$。
这明确给出参考项的作用量来源，而非只给能量加一个源依赖的数。
离开圆柱子族时它是一个选定的 counterterm 延拓，不能等同于任意
纯 AdS 等距嵌入减除；其导数端点项亦须随完整作用量保留。

由外曲率直接算得裸 proper-time 能量为 $-R\sqrt f/G_N$，参考项补成

$$
E_R=\frac R{G_N}(\sqrt{f_0}-\sqrt f),\qquad
H_{R,\partial_t}=\sqrt f\,E_R.
\tag{B7}
$$

第二个量才对应固定的背景坐标时间；第一个对应壁上的单位 proper-time 读出。
固定 $R$ 改变 $M$，$N=\sqrt f$，作用量源项为
$\mathcal F_{R,\partial_t}=-E_R\delta N$。直接求导给

$$
\partial_ME_R=1/N,\qquad
\delta H_{R,\partial_t}+\mathcal F_{R,\partial_t}
=N\delta E_R=\delta M.
\tag{B8}
$$

壳层的两面用相反外向取向，故两面的 (B8) 抵消；这与平稳族上
$\Omega(\delta g,\mathcal L_{\partial_t}g)=0$ 一致。
**不能只保留外壁再断言平稳族的质量变分必须为零。**

由于 $E_R=2M/(\sqrt{f_0}+\sqrt f)$，
$H_{R,\partial_t}\to M$ 当 $R\to\infty$；AdS 的局部 proper-time 能量 $E_R$ 本身趋零。
平坦极限 $f_0=1$ 时 $E_R\to M$。
这三个极限和 (B8) 已实际符号核对，不能混用时间归一化。

## 3. AdS4：两个真实极化的有限壁 source-work 矩阵

本节先做到**两个明确模式的全线性 Einstein 与完整有限壁响应**，
没有声称得到全模式的二阶 backreaction 或 Brown–York 能量谱。
采用 $L=1$、$f=1+r^2$、$\mu=\cos\theta$：

$$
G=-fdt^2+dr^2/f+r^2\left(d\mu^2/(1-\mu^2)+(1-\mu^2)d\phi^2\right).
$$

### 3.1 不依赖旧 TT normalization 的显式输入

记 $Y=(3\mu^2-1)/2$，$h^S=\operatorname{Re}(e^{-3it}S)$。
$S$ 是原 [Killing algebra](../../Articles/Quantization%20in%20AdS/ads4%20linearized%20gravity/Killing%20algebra.md)
中 $\Delta=3,j=2,m=0$ primary 的一次常数重标度；非零分量为

$$
\begin{aligned}
S_{tt}&=r^2Y/f^{3/2},& S_{tr}&=irY/f^{5/2},&S_{t\mu}&=3ir^2\mu/(2f^{3/2}),\\
S_{rr}&=-Y/f^{7/2},&S_{r\mu}&=-3r\mu/(2f^{5/2}),\\
S_{\mu\mu}&=r^2(3\mu^2/2-1)/(f^{3/2}(1-\mu^2)),&
S_{\phi\phi}&=r^2(1-\mu^2)/(2f^{3/2}).
\end{aligned}\tag{B9}
$$

奇宇称模式取 $h^V=\operatorname{Re}(e^{-4it}V)$，Regge–Wheeler representative 为

$$
V_{t\phi}=4r^3\mu(1-\mu^2)/f^2,\qquad
V_{r\phi}=-4ir^4\mu(1-\mu^2)/f^3,
\tag{B10}
$$

以及对称分量。它可由 radial seed $\Phi=r^3/f^2$，
$h_{tA}=f(r\Phi)'X_A$、$h_{rA}=-i\omega r\Phi X_A/f$ 得到，
其中本节未归一化的 $X_\phi=\mu(1-\mu^2)$。
$S$ 是 TT；$V$ 不是 TT，不能在它上面使用 TT 化简后的 current。

脚本从这些分量和背景 Christoffel 直接检查全部
$\delta R_{\mu\nu}+3h_{\mu\nu}=0$。
并计算了非零线性 Weyl 分量（这是复杂振幅，不附时间因子）：

$$
\delta C^S_{trtr}=-3(3\mu^2-1)/(4f^{3/2}),\qquad
\delta C^V_{trt\phi}=8i\mu r^2(\mu^2-1)/f^2.
\tag{B11}
$$

背景 Weyl 为零，故这些模式不是 pure diffeomorphism。
这里仅使用指定低模，不据此宣称 scalar/even 全塔已解或 CPS 单位归一化已验收。

### 3.2 在有限 $r=R$ 直接计算完整响应

壁指标 $i,j=(t,\mu,\phi)$，$D_i$ 是背景诱导 metric 的联络。
对任意扰动，先用 radial ADM 分解得到

$$
\delta\gamma_{ij}=h_{ij},\qquad
\delta K_{ij}=\frac{\sqrt f}{2}
(\partial_rh_{ij}-D_ih_{rj}-D_jh_{ri})
-\frac f2h_{rr}K^0_{ij}.
\tag{B12}
$$

此式已与独立的 $K_{ij}=-n_r\Gamma^r_{ij}$ 变分逐分量核对；
不能丢掉 $h_{ri},h_{rr}$。再对

$$
\Pi^{ij}=c\sqrt{-\gamma}(K\gamma^{ij}-K^{ij})
\tag{B13}
$$

取完整变分，包括逆 metric 和密度。脚本同时从精确矩阵的逆/行列式
在两个不同壁点重算该导数，并检查边界 Ward 约束
$\delta(D_i\Pi^{ij})=0$。没有用能量恒等式反向定义 $\delta\Pi$。

在 $\mu$ 坐标中，裸背景响应为

$$
\Pi_0=c\operatorname{diag}\left(-2R,
(2R+R^{-1})(1-\mu^2),\frac{2R+R^{-1}}{1-\mu^2}\right).
\tag{B14}
$$

令 $\mathcal B_X(R,t)=\int d\mu d\phi\,\delta\Pi^{ij}[h^X]h^X_{ij}$，
得到精确闭式

$$
\boxed{\mathcal B_S=
\frac{\pi cR}{5(1+R^2)^4}
\left[-(9R^4+R^2+4)\cos^2(3t)
+6R^2(R^2-1)\sin^2(3t)\right],}
\tag{B15}
$$

$$
\boxed{\mathcal B_V=
\frac{128\pi c R^5}{3(1+R^2)^4}\cos^2(4t).}
\tag{B16}
$$

S/V 交叉响应收缩为零；各单一模式的自辛通量也为零。
后一事实不说明允许叠加其它径向频率/源历史的整个区域问题闭合。

$\mathcal B_X$ 是**源功的二阶接触项，不是能量**。其符号不构成正能量结论。
这两个模式均满足 $\int\Pi_0h=0$ 和积分一阶荷为零，
但二阶 backreaction 的 monopole 仍可给出

$$
\boxed{\mathcal E_R=(H_R^\partial)''
+\mathcal B_X(R,t)+2\int_S\Pi_0^{ij}k_{ij}.}
\tag{B17}
$$

这里 $k$ 是同一实际二阶解族，或其完整 pulled-back 版本。
没有计算它时，就没有得到单独的 $(H^\partial)''$。
另须注意 $S_{tr}\ne0$：原坐标的 $t$ 切片一般不是正交切片。
本节实际计算的是壁响应与 BY 读出，不是一个删除 boost/corner 的
bulk 辛积分。将 (B17) 用于该模式时，$\mathcal E$ 必须取完整角项的
CPS，或把 $h,k$ 和 frame 同步拉回正交参考描述；本次未数值验证该
非正交角项下的 $\mathcal E$。
若明确选 affine 边界源 $k_{ij}|_S=0$，差额由 (B15)–(B16) 给出；
相应二阶解的可解性仍须另证。

这些数值使用裸 EH+GHY，适用于人工径向 seam；外边界若加入参考项，
(B14)–(B17) 同时加入其完整响应。将同一光滑模式分到 $r<R$ 和 $r>R$，
完整 $\Pi$ 及其变分在两侧反号，故源项、二阶源项和内部荷都相消。
这给出有限壁相容性实例，不替代一个独立区域 response 逆算子的构造。

## 4. 回测和下一步的精确边界

原紧支撑脉冲、开放区 canonical energy 为零/为负、不同 clock normalization、
能量相等但剪切不匹配、以及静态质量族的攻击均未被藏起来。
本母对象保留可观测的边界荷及其源功，不要求原二次型等于完整能量。

下一步保留为物理任务：给定 AdS4 的实际二阶边界源协议求解 $k$，
将 (B17) 的全部项独立求出；再扩展到所有 $p,\ell,m$ 的 S/V 矩阵。
本 PR 不通过令未知的 $k$ 消失或直接定义 $H''$ 为右边差值来完成这个目标。

Verified: (B2)–(B8) 的代数/曲率检查；(B9)–(B16) 的完整线性方程、有限壁响应、Ward 和精确积分。

Assumptions: 非退化正定横向 metric；有限 slab；球对称参考处方；AdS4 低模的上述原始振幅、$R>0$ 与裸壁作用量。

Not verified: AdS4 全模式的 CPS normalization、二阶受控初边值求解、无限模/渐近联合极限和量子 sewing。
