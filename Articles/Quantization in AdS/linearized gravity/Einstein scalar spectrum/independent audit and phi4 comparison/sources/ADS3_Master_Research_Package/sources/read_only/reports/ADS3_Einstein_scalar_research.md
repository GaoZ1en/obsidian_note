# global AdS₃ Einstein–scalar：计算的结构、可解子空间与两种微扰路线的等价性

研究日期：2026-10-18  
原始仓库固定版本：ff06682448838bcbb02b135bd61bc661b394cbba  
理论：单位 AdS 半径、minimal Einstein–real-scalar、Brown–Henneaux 边界条件、fast scalar branch。  
本文及附件另行生成，没有修改原始研究材料。

## 阅读导航与结论的地位

这份报告的中心判断是：原计算的篇幅不能代表其 tree 动力学的内在复杂度。四外腿、order-G 的问题可以压缩成一个空间约束泛函、一组成对边界响应，以及一个 Casimir 算子问题。一体量子修正、完整简并空间和边界处方则承担另外的任务，不能随这种压缩一并删除。

本轮最有用的推进有三项。

1. **显式辛响应图。** 原来的边界引力响应落在一个由反辛 involution 固定的 Lagrangian 平面上。它使 scalar 的辛形式保持不变，直接拉回 Hamiltonian 就得到 K₄。这个构造把 classical response、canonical transformation 和 OFPT 接成了同一条证明。
2. **Racah 的两种表示。** 原离散 Einstein–Casimir 递推与 crossed stress-block 的微分恒等式，是同一对 Racah 算子在两个基底中的表示。本文给出全次数的显式 intertwiner，不只识别 gravity 所用的最低次恒等式。
3. **新的多体可解空间与完整三粒子谱。** 在最大手征扇区，二体 Hamiltonian 是一个常数加两个正的低相对自旋投影。由此可完整刻画任意固定粒子数的 Jastrow 共同本征空间。进一步，全部三粒子最大手征 primary 的非饱和能移被压缩成一个显式 2×2 矩阵；本文实际求出了任意 Δ>1、全部自旋的解析谱及重数，不需要构造增长的多体矩阵。

一般的 stationary tree transfer、Gaussian elimination、Feshbach 和 Schrieffer–Wolff 原理已有文献，也已有 9 月 30 日的 Space 笔记。九月旧稿甚至已经有 stress-block 高自旋短路线。本报告将这些内容作为既有基础；本轮的新增是具体接口、全次数代数组织及其进一步推论，**不宣称发现了新的普适 tree-transfer 定理或新的 Racah 多项式**。

全文使用以下证据标签：

| 标签 | 含义 |
|---|---|
| 原工作已证明、此次核查 | 冻结原文有闭合推导，本轮检查依赖链并独立复算部分或全部必要恒等式 |
| 本轮证明 | 下文给出不依赖数值拟合的推导，代码提供额外独立检查 |
| 条件性结论 | 结论只在列出的变分域、正则性、状态识别等条件下成立 |
| 未完成 | 不以有限验证、文献类比或旧稿的完成声明替代证明 |

这里的“全阶”若未另作说明，始终是有限调节或有定义的形式级数意义；不表示收敛，不表示存在作用于整个连续自由 Fock 空间的强极限酉算符。

---

# 第一部分　原计算到底算了什么

## 1. 材料版本与证明状态

主要证据是仓库中 Unreduced OFPT calculation 的最后 §§70–77，以及 10 月 9 日完成、10 月 12 日仅作格式改动的 Direct K4 笔记。[S1–S3] 当前仓库有十三份相关 Markdown 文件，均已固定版本阅读；同时恢复了九月的两份 OFPT 证明稿、若干 Wolfram/Python 文件，并阅读五份相关 Space 材料。[S4]

审查没有发现会改变**指定处方下**最终一、二标量谱的错误。这个判断不是对正文全部历史计算的无条件背书，尤其需要区分：

- 旧稿关于 bare Hartree、外腿 finite conversion、两座调节塔的非均匀极限、全简并空间的障碍，确实曾经存在；后来的 §§39、71、73–76 已经针对它们补上所需结果。
- §§46–69 的某些 symmetry-free 一体直接证明仍未全部闭合，但最终证明使用已经完成的两温生成函数与 adjoint-Casimir transfer，不再依赖那条未完成路线。
- Direct K4 给出了任意固定外标签的有限有理算法；它没有另行完成“直接把这些有限和全指标求成三段闭式”的纯求和证明。母笔记 §72 则通过有动力学来源的 Einstein–Casimir 方程完成了全指标谱。
- Untitled 的一处文字仍说 K₄–response 的详细推导待补。母笔记 §72.1 已有一个短的 Gaussian/Hessian、两种时间排序和 Legendre contact 证明；不能据旧文字断言目前没有任何等价机制。本轮补强的是它的辛几何与状态、端点接口。
- 当前 Git tree 中部分后期验证脚本已从版本跟踪移除，README 的若干路径因而失效。本轮没有把历史 xAct/Sage/Mathematica 的全部残差数量冒充为自己重新运行的结果。

独立审计附件列出每项旧结论的后继证明、实际复算范围和来源。用户资料中提到的 research-radar 页面本次未能成功读取；没有将其未见内容纳入结论。

## 2. 不可隐藏的物理输入

### 2.1 作用量、边界与观测量

取签名 (-,+,+)、κ²=16πG，

$$
S_R=\frac1{\kappa^2}\int_{M_R}\sqrt{-g}(R+2)
+\frac2{\kappa^2}\int_{\Gamma_R}\sqrt{-\gamma}(K-1)
-\frac12\int_{M_R}\sqrt{-g}
\left[(\nabla\phi)^2+\mu_0\phi^2\right].
\tag{2.1}
$$

背景为

$$
ds_0^2=-f\,dt^2+\frac{dr^2}{f}+r^2d\theta^2,\qquad
f=1+r^2,\qquad \theta\sim\theta+2\pi.
\tag{2.2}
$$

中心光滑；固定 conformal boundary cylinder 和边界时间；metric obeys Brown–Henneaux falloff；scalar 取 source-free fast branch，

$$
\mu_0=\Delta_0(\Delta_0-2),\qquad \Delta_0>1.
\tag{2.3}
$$

只商去 proper diffeomorphisms。两支 m≥2 的边界引力振子是物理自由度，仍属于完整态空间。m=0,1 的物质 charge 通道必须保留，但不能将这些 stabilizers 当作归一化相同的额外 graviton oscillators。

所求能量是同一个边界 Hamiltonian H∂t 的真空扣除谱。固定边界时钟是物理定义的一部分。计算不是改变时间坐标后的瞬时频率，也不使用 global AdS 的 in/out scattering states。

### 2.2 自由模与量子处方

令 a=|j|、X=f⁻¹。KG 归一化的自由模是

$$
u_{nj}=\frac1{\sqrt{2\pi}}
\sqrt{\frac{(\Delta_0+n)_a}{(n+1)_a}}\,
e^{-i\omega_{nj}t+ij\theta}
X^{\Delta_0/2}(1-X)^{a/2}
P_n^{(\Delta_0-1,a)}(1-2X),
\quad
\omega_{nj}=\Delta_0+2n+a.
\tag{2.4}
$$

Untitled 的一个径向公式将 a 写成了带符号 j；母笔记及本轮计算采用正确的 |j|。这是整理中的修正，没有改原文件。

原工作最终采用正则局部 proper-constraint reduction、配对的 constraint/FP Jacobian、物理 Darboux chart 上的 Liouville measure、midpoint time slicing 和 Weyl ordering。标量每条腿乘 $e^{-\tau\omega/2}$，边界振子采用相容的成对 Abel 调节。真空 tadpole、局部 kinetic subtraction 和有限质量条件也属于理论的量子定义，见第 7 节。

用物理一粒子 gap Δ 参数化最终结果后，记 $\mu=\Delta(\Delta-2)$。可以在 order-G 的 connected vertex 内将 Δ₀ 换成 Δ，因为差异只在 G² 出现。没有额外独立的 order-G φ⁴ coupling。

## 3. 原始 Einstein 约束如何给出 quartic Hamiltonian

设 y=√f，背景空间 metric 为 σ̄。在 maximal/conformal proper section，

$$
\sigma_{ij}=e^{2\Psi}\bar\sigma_{ij},\qquad
\sigma_{ij}\pi^{ij}=0,\qquad
\chi=\frac{\pi_\phi}{\sqrt{\bar\sigma}},\qquad
\Psi=\kappa^2u+\kappa^4v+\cdots.
$$

Einstein constraints 的展开给出

$$
Lu=\frac{\rho}{2},\qquad L=-\bar\Delta+2,\qquad
\bar D_jt^j{}_i=\frac12\chi\partial_i\phi,\qquad t^i{}_i=0,
\tag{3.1}
$$

$$
\rho=\frac12(\chi^2+|\bar D\phi|^2+\mu\phi^2),
\qquad
2Lv=t:t-u\chi^2+\mu u\phi^2-4u^2.
\tag{3.2}
$$

标量逆中心正则、边界衰减。对非 global momentum harmonic，还必须固定

$$
\lim_{r\to\infty}r^2 B_m(r)=0,\qquad |m|\ge2.
\tag{3.3}
$$

这是独立 boundary momentum 为零的 section。只给出微分方程而省略 (3.3)，尚未定义同一个 H₄；统一将中心积分常数置零一般会改变 section。[S1, §16]

利用 Ly=0，将 v 的方程与 y 配对，径向 Green identity 将其化为边界能量：

$$
\boxed{
H_4^{\rm con}
=\int_\Sigma\sqrt{\bar\sigma}\,y
\left(t:t-u\chi^2+\mu u\phi^2-4u^2\right).
}
\tag{3.4}
$$

这一步同时包含引力约束能和 matter response。只把 matter action 的线性 kT 耦合代回，会漏掉引力二次作用量的 1/2 因子。

## 4. 真实 cubic 顶点与 OFPT 的代数压缩

定义 z=r/(1+y) 和

$$
D_m=
\frac1{\sqrt{8\pi m(m^2-1)}}
\int_\Sigma\sqrt{\bar\sigma}\,
z^m(y+m)e^{-im\theta}:\rho:,\qquad m\ge2.
\tag{4.1}
$$

两支 helicity 分别使用 Dm 和 Dm†。真实的 cubic Hamiltonian 是

$$
V_{g\phi^2}=\sum_{m,\sigma}
\left(a_{m\sigma}^\dagger F_{m\sigma}
+F_{m\sigma}^\dagger a_{m\sigma}\right),
\qquad
F_{m\sigma}=mD_{m\sigma}+[H_\phi,D_{m\sigma}].
\tag{4.2}
$$

这个关键等式有直接动力学来源：边界 conformal coefficient 在空间 embedding 下具有 weight two，其变化给出 mD；自由引力 momentum 与 matter-sourced momentum 的 cross term 经两次分部积分给出时间导数。其局部依据是自由 stress conservation，

$$
\partial_t\rho=\frac2{y}\bar D_i(y^2 j^i).
\tag{4.3}
$$

其中 $j^i=\chi\bar D^i\phi/2$。中心、fast falloff 和 (3.3) 消去相应空间流。对两个带符号外腿，scalar source frequency 为 Ω，creation-mode kernel 因而正比于

$$
\delta_{k,\sigma m}\,(m-\Omega)
\int_1^\infty p_m(y)\rho_{IJ}^{\varepsilon\eta}(y)\,dy,
\quad
p_m=z^m(y+m).
\tag{4.4}
$$

共振的分子在除以分母之前就为零。这不是 principal-value 规则，更不是从能谱反推顶点。

令

$$
S_{\rm mix}=\sum_{m,\sigma}(a^\dagger_{m\sigma}D_{m\sigma}
-D^\dagger_{m\sigma}a_{m\sigma}),\qquad
V_{1,\rm mix}=[H_0,S_{\rm mix}].
$$

完整 cubic 还包括 pure-gravity 部分。下面的整块等式使用原工作 §70.1 的完整生成元 $S=S_{\rm mix}+S_{g^3}$ 和完整 $V_1=[H_0,S]$，而不把 $S_{\rm mix}$ 当作已经消去了整个 cubic Hamiltonian。于是

$$
e^{\kappa S}He^{-\kappa S}
=H_0+\kappa^2\left(V_2+\frac12[S,V_1]\right)+\cdots.
\tag{4.5}
$$

在完整自由能量块 PE 上，

$$
P_E\left(V_2+\frac12[S,V_1]\right)P_E
=P_EV_2P_E+
P_EV_1Q(E-QH_0Q)^{-1}QV_1P_E.
\tag{4.6}
$$

这是 OFPT 的整块等式，而不是单个非简并态的近似。旋转选择使 $S_{g^3}$ 没有 linear Wick trace：它在 gravity vacuum 上激发三个 gravitons，mixed cubic 激发一个，故其 cross term 的 vacuum compression 为零；pure-gravity 自项在 scalar branch 只给被扣除的真空常数。这是原 §76.3 的独立输入。mixed exchange 的 boundary vacuum compression 给出

$$
\begin{aligned}
W_{\rm ex}={}&-\sum_m m\{D_m^\dagger,D_m\}\\
&-\frac12\sum_m\left(
[D_m^\dagger,[H_\phi,D_m]]
+[D_m,[H_\phi,D_m^\dagger]]
\right).
\end{aligned}
\tag{4.7}
$$

第二行至多二次。故 connected 四外腿 Hamiltonian 为

$$
\boxed{\mathcal K_4=H_4^{\rm con}-\sum_{m\ge2}m\{D_m^\dagger,D_m\},}
\qquad
\delta H_{22}^{\rm tree}=16\pi G[\mathcal K_4]_{22,\rm res}.
\tag{4.8}
$$

原工作已经完成了这一中间态求和的真正代数消去。本轮第 8 节进一步解释，为什么这个量子恒等式正好对应一个无需能量分母的经典辛图。

## 5. 为什么这里得到的是完整物理谱支

仅知道两标量张量积 multiplicity one 不够：完整简并空间还可能含 boundary gravitons 或别的 scalar particle number。

原最后证明使用非 global Virasoro charge 的首项

$$
L_{\pm m}=\kappa^{-1}\sqrt{2\pi m(m^2-1)}
(a_m\ \text{或}\ a_m^\dagger)+O(1).
\tag{5.1}
$$

同步变换 Hamiltonian 与 charges 后，按相应能量差投影 classical Ward identity，未知高阶 charge 的自由 homological term 被投影消掉。于是完整四次 resonant symbol 与全部 boundary oscillator variables 的 Poisson brackets 为零。线性振子的 Weyl commutator 没有高阶修正，这个四次结论也适用于其量子最高次数部分。

余下次数与选择定则继续排除混合：scalar parity 禁止 gφ bilinear；正能使纯产生/湮灭 quadratic 非共振；graviton number-preserving quadratic 在 gravity vacuum 上为零。scalar 31 quartic 是两支自由 sl(2) 的 intertwiner，但它必须在一粒子最低态上为零，因为输出最低能 3Δ>Δ；与 raising 对易后，它在整个一粒子 module 上为零。因此所有 b†b†b†b coefficients 都为零，也排除了有 spectators 的 N↔N±2 混合。

这是原 §§71、76 的已完成论证。它不要求先证明整个 pure-gravity quantum Ward algebra；也不能由本轮的 scalar response graph 单独替代。第 10 节的多体推广使用的正是这个任意固定 N 的次数结论。

## 6. 全指标二体谱：保留动力学的短证明

### 6.1 一整条初始数据来自 canonical 积分

暂将两个相同质量标量区分，令一粒子为 ground，另一粒子为最小径向的角动量 J≥0 模：

$$
R_J=c_Jr^J f^{-(\Delta+J)/2},\qquad
c_J^2=\frac{(\Delta)_J}{2\pi J!}.
$$

定义

$$
K_J=(R_J')^2+\frac{(\Delta+J)^2}{f^2}R_J^2,\qquad
e_J=fK_J+\left(\frac{J^2}{r^2}+\mu\right)R_J^2.
$$

静态源约束为 M′J=reJ、D′J=−rKJ，配 M(0)=0、D(∞)=0。ground 解为

$$
M_0=\frac{\Delta}{2\pi}(1-f^{1-\Delta}),
\qquad D_0=\frac{\Delta}{4\pi}f^{-\Delta}.
\tag{6.1}
$$

在固定 canonical πφ 下改变第二粒子的 Hamiltonian 得

$$
\mathscr D_J=-32\pi^2\int_0^\infty r\,dr\,
(D_0e_J+M_0K_J)
=-4\Delta^2+\frac{4\Delta^2}{2\Delta-1}
\frac{(\Delta)_J}{(2\Delta)_J}.
\tag{6.2}
$$

等式由 x=f⁻¹ 化为三个 beta integrals 得到；J=0 时先省去 J²B(Δ+1,J)，不能把它当作 0×∞。这是无限整行 J 的实际积分，不是有限种子或假定高自旋尾部。

定义 $x_{kl}$ 为两标量 primary $(h_L,h_R)=(\Delta+k,\Delta+l)$ 的 crossed 修正除以 G；$n=\min(k,l)$、$\ell=k-l$。自由 primary-descendant 的 endpoint CG 权重将该 product-state expectation 写成

$$
\mathscr D_J=\sum_{k=0}^Jw_{Jk}x_{k0},\quad \sum_kw_{Jk}=1,\quad
w_{J0}=\frac{(\Delta)_J}{(2\Delta)_J},\quad
w_{JJ}=\frac{(\Delta)_J}{(2\Delta+J-1)_J}>0.
$$

三角归纳唯一给出 crossed 初始行

$$
x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},
\qquad x_{k0}=-4\Delta^2\quad(k\ge1).
\tag{6.3}
$$

### 6.2 Einstein 方程转成离散 Casimir 方程

约定 $\mathcal E^{(1)}$ 是 $G_{\mu\nu}-g_{\mu\nu}$ 在背景上的线性化，
$q[T]$ 满足 $\mathcal E^{(1)}q=T/2$。polarized stress 为
$$
T_{\mu\nu}[a,b]
=\nabla_{(\mu}a\nabla_{\nu)}b
-\tfrac12g_{\mu\nu}(\nabla a\cdot\nabla b+\mu ab).
$$
记

$$
\mathcal Pq=q-\tfrac12g\,\mathrm{tr}q,\quad
C_\nu[q]=\nabla^\mu q_{\mu\nu}-\tfrac12\nabla_\nu\mathrm{tr}q,\quad
\mathcal Cq=\tfrac12(\Box+6)q-g\,\mathrm{tr}q .
$$

off-shell tensor identity 为

$$
\mathcal E^{(1)}q
=-\mathcal P(\mathcal C-2)q+
\mathcal P\nabla_{(\mu}C_{\nu)}[q].
\tag{6.4}
$$

这里不需要 de Donder gauge。将它作用在 reciprocal stress-response pairing 上，stress conservation 消去 proper-gauge 项，得到局部 polarized-stress source。令 F=ab、J=a\,db-b\,da，并用 tildes 表示 outgoing pair，则

$$
\mathcal K=
\tfrac12(\nabla a\!\cdot\!\nabla b)
(\nabla\widetilde a\!\cdot\!\nabla\widetilde b)
-\tfrac1{16}dJ:d\widetilde J
-\tfrac\mu4(dF\!\cdot\!d\widetilde F+J\!\cdot\!\widetilde J)
-\tfrac{3\mu^2}{2}F\widetilde F.
\tag{6.5}
$$

局部 analytic scalar/vector primary 的中心 fiber 只支持 spin 0/1，因此该 source 只在对角和相邻带非零。归一化可直接由自由 modes 和 lowest-weight 方程求出：

$$
F_n=\frac{(-1)^n}{2\pi}e^{-2iht}f^{-h},\quad
\int r\,dr\,d\theta\,|F_n|^2=\frac1{4\pi(2h-1)},
\quad h=\Delta+n,\ C=h(h-1).
\tag{6.6}
$$

向量 primary 的系数平方为
h(n+1)(2Δ+n−1)/[2π²(2h−1)]。
这些归一化和 (6.5) 给出

$$
(\mathcal L_k+\mathcal L_l-2)x_{kl}=S_{kl},
\tag{6.7}
$$

$$
\begin{aligned}
(\mathcal Lf)_n&=a_n(f_{n+1}-f_n)+c_n(f_{n-1}-f_n),\\
a_n&=\frac{(n+1)(\Delta+n)(2\Delta+n-1)}{2(2\Delta+2n-1)},\\
c_n&=\frac{n(\Delta+n-1)(2\Delta+n-2)}{2(2\Delta+2n-1)},\\
S_{nn}&=\frac{4(C-\mu)(2C+\mu)}{2h-1},\\
S_{n+1,n}=S_{n,n+1}
&=\frac{4h(n+1)(2\Delta+n-1)(2h^2-\mu)}
{(2h-1)(2h+1)},\\
S_{kl}&=0\quad(|k-l|\ge2).
\end{aligned}
\tag{6.8}
$$

从 tensor equation 到 (6.7) 用到的是自由 preparation blocks 及其 hypergeometric Casimir action。归一化系数
pₙ=(Δ)ₙ²/[n!(2Δ+n−1)ₙ] 给 aₙ=(n+1)²pₙ₊₁/pₙ；这保证这里没有偷偷输入 interacting CFT spectrum。[S1, §72.3]

### 6.3 解与唯一性

由 (6.3)，row zero 在对角以上为常数。若 row n 已有 xkn=uₙ，k≥n+1，则在 k≥n+2 的零 source 区，ℒk 杀掉常数，(6.7) 给

$$
a_nu_{n+1}+(b_n-2)u_n+c_nu_{n-1}=0,
\qquad b_n=-a_n-c_n.
\tag{6.9}
$$

利用

$$
\mathcal L1=0,\qquad \mathcal LC=2C-\mu
$$

即得

$$
u_n=4\mu-8C=-4[\Delta^2+2n(2\Delta+n-1)].
\tag{6.10}
$$

对角方程给 xnn=uₙ(2h−2)/(2h−1)，相邻带方程是独立的恒等式检查。由于 aₙ>0，任意两个具有同样初始行的解之差可逐行推进为零；无须另加无穷远自旋增长假设。

### 6.4 两个 annihilation sectors

对于相同实标量，$F_n^{\rm id}=\sqrt2F_n$。归一化 annihilation pairing 是
$$
\gamma^s/G=-8\pi\int r\,dr\,d\theta\,q[\tau]:\tau^*,
\qquad \tau=\langle0|:T:|P\rangle.
$$
spin-zero stress trace 为 $-(C+\mu)F_n^{\rm id}$。定义

$$
\mathcal D_{\mu\nu}S=\nabla_\mu\nabla_\nu S
-g_{\mu\nu}(\Box-2)S,
\quad
S_n=\frac{C+\mu}{2(4C-3)}F_n^{\rm id}.
$$

则 τn0=𝒟Sn、q[τn0]=−gSn 直接解线性 Einstein equation。其 pairing 给

$$
\gamma^s_{n,0}/G
=-\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)}.
\tag{6.11}
$$

spin-two primary τ=A₂W(2h+2,2)，其

$$
|A_2|^2=
\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{8\pi^2(2h-1)(2h+1)},\qquad
q[\tau]=-\frac{\tau}{4h(h+1)}.
$$

由 ∫W:W*=4π/(2h+3) 得

$$
\gamma^s_{n,\pm2}/G
=\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h-1)(2h+1)(2h+3)}.
\tag{6.12}
$$

rank-two local primary 没有更高的中心旋转权，故其他 annihilation source 为零。这一步说明了低自旋例外的真实动力学来源。

### 6.5 最终谱

$$
\boxed{
g_{n,\ell}=
\begin{cases}
\displaystyle
u_n\frac{2h-2}{2h-1}
-\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},&\ell=0,\\[2mm]
\displaystyle
u_n+\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h-1)(2h+1)(2h+3)},&|\ell|=2,\\[2mm]
u_n,&|\ell|\ge4 .
\end{cases}}
\tag{6.13}
$$

$$
E^{2p}_{n,\ell;r_L,r_R}
=2\Delta+2n+|\ell|+r_L+r_R+Gg_{n,\ell}+O(G^2).
\tag{6.14}
$$

同种实标量只取偶数 ℓ。Δ=3/2,n=0 的表面极点先在原 source 中约去，得 g00=−9/2；并无物理奇点。在 Δ=2，

$$
g_{00}=-56/5,\quad g_{10}=-1368/35,\quad
g_{02}=-552/35,\quad g_{04}=-16.
$$

这些是当前定义下的精确 order-G 系数。没有声称余项对 n、ℓ 或粒子数随 1/G 增长的极限一致有界。

## 7. 一体量子修正为什么不能由 tree 定理略去

两个 cubic vertices 对四外腿有一条内线，L=I−V+1=0；对两外腿有两条内线，L=1。两者都可能是 κ²=O(G)。因此耦合常数次数不能代替 loop grading。

原工作中，gravitational seagull 与 energy-weighted cubic contraction 先用自由 radial virial identity 相消；两座 oscillator towers 的 joint regulator limit 被单独控制。余下 scalar Weyl contraction 的 Hartree 部分必须在正 τ 下，以完整的真空 stress source 抵消：

$$
S_{\rm ct,tad}=-\frac12\int\sqrt{-g_0}\,
T_\tau^{\mu\nu}(g-g_0)_{\mu\nu}.
\tag{7.1}
$$

不能先作固定半径展开再反演，因为靠近 AdS 边界的非均匀区域会留下有限项。

exchange 的一体 pole 则由同一个局部 kinetic insertion 匹配：

$$
S_{\rm ct,X}=-\frac12\int\sqrt{-g}\,
Z_\tau g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi,
\qquad Z_\tau=-\frac{4G}{\tau y}.
\tag{7.2}
$$

它使用固定 regulator clock 的 norm，有限 τ 时不单独具有背景 isometry invariance。这里的 locality 是所指定调节方案中的 locality，并非任意 covariant scheme 已被证明等价。

本节概述原 §§73–75 已完成的一体证明，不将其全模 trace 重构称为本轮新推导。为避免与第 6 节含角向归一化的 $R_J$ 混淆，在此定义去掉角向因子的径向函数
$$
\widehat R_I(y)=\sqrt{2\pi}\,e^{i\omega_It-ij_I\theta}u_I(t,y,\theta).
$$
对任意外模 I，原计算给出

$$
X_I(\tau)=-C_I/\tau+o(1),\qquad
C_I=(4\mu+2)\int_1^\infty \widehat R_I^2dy
+2\int_1^\infty \widehat R_I^2/y^2\,dy .
$$

bare 与 counterterm 保留相同外腿权重，故

$$
\delta E_I/G
=e^{-\tau\omega_I}[X_I(\tau)+C_I/\tau]\longrightarrow0
\tag{7.3}
$$

在剩余共同 finite mass 用物理 ground gap 固定之后成立。最终

$$
\boxed{E^{1p}_{nj}=\Delta+2n+|j|+O(G^2).}
\tag{7.4}
$$

这个结果包含已经完成的 loop、ordering 和 renormalization 信息。它不表示 gravity 没有 scalar self-energy，也不表示只减去任意 bare ground value 就能消除所有模式差。

理论还没有在这里得到任意阶 tadpole counterterm 的 nonlinear metric completion，或连续 Fock 空间上全局有效的强酉 dressing。当前 O(G) 结论不需要冒充这些更强命题。


---

# 第二部分　计算方法的重新探索

## 8. 本轮的具体等价构造：成对响应图与平方完成

### 8.1 一个可直接使用的辛图引理

考虑保留系统 (X,ΩX,HX)，以及每个频率 m>0 的两个正范数振子：

$$
\Omega_g=i\sum_{m,\sigma}da_{m\sigma}^*\wedge da_{m\sigma},
\qquad H_g=\sum_{m,\sigma}m|a_{m\sigma}|^2.
$$

令 Dm:X→ℂ，D₊=D、D₋=D*，并以自由保留系统定义

$$
\dot D=\{D,H_X\},\qquad F_\sigma=mD_\sigma-i\dot D_\sigma.
\tag{8.1}
$$

若

$$
H=H_X+H_g+
g\sum(a_\sigma^*F_\sigma+F_\sigma^*a_\sigma)
+g^2U(X)+O(g^3),
\tag{8.2}
$$

这里的展开是系数正则的 formal 幂级数；余项及其场变量一阶导数均按所写的 g 次数计数。单有函数值的 O(g³) 而无导数控制，不足以推出动力学精度。则映射

$$
\iota_g:X\longmapsto
\bigl(X,a_{m,+}=-gD_m,\ a_{m,-}=-gD_m^*\bigr)
\tag{8.3}
$$

满足

$$
\boxed{\iota_g^*(\Omega_X+\Omega_g)=\Omega_X,}
\qquad
\boxed{\iota_g^*H
=H_X+g^2\left(U-2\sum_m m|D_m|^2\right)+O(g^3).}
\tag{8.4}
$$

它正确给出到 g² 的保留变量动力学。这个引理无需 D 为二次式；场论应用则还需要各泛函及调节极限有定义。

**证明。** 引力辛形式拉回为

$$
ig^2(dD^*\wedge dD+dD\wedge dD^*)=0.
\tag{8.5}
$$

对称辛势也完全抵消。自由引力能给 +2g²m|D|²；mixed coupling 给 −4g²m|D|²，因为两支中含 $\dot D$ 的项相消，得到 (8.4)。

引力方程
(i∂t−m)aσ=gFσ+O(g³) 的 leading equation 在自由 HX 流上由 aσ=−gDσ 精确满足。保留变量反馈从 g² 开始；在图像方程再乘 g，法向不相容才从 g³ 开始。因此不能漏掉的辛拉回已经计算，而 graph invariance 也达到所需精度。证毕。

几何上，

$$
(a_+,a_-)\longmapsto(a_-^*,a_+^*)
$$

是反辛 involution，其 fixed locus a₋=a₊* 是一个 Lagrangian 实平面。响应图落在这个平面上。这解释了抵消的结构来源：它来自两支共轭响应，而不是两个负范数模式或 gauge quotient。

### 8.2 实变量中几乎可以直接读出答案

写 D=u+iv，并令

$$
c=(a_++a_-)/\sqrt2=(Q_c+iP_c)/\sqrt2,\quad
s=(a_+-a_-)/(i\sqrt2)=(Q_s+iP_s)/\sqrt2.
$$

则

$$
V_3=2m(uQ_c+vQ_s)-2(P_c\dot u+P_s\dot v),
$$

$$
\begin{aligned}
H={}&H_X+\sum_m\frac m2
\left[(Q_c+2gu)^2+(Q_s+2gv)^2+P_c^2+P_s^2\right]\\
&-2g\sum_m(P_c\dot u+P_s\dot v)
+g^2\left[U-2\sum_m m(u^2+v^2)\right]+\cdots .
\end{aligned}
\tag{8.6}
$$

响应图就是 Qc=−2gu、Qs=−2gv、Pc=Ps=0。引力 canonical one-form P·dQ 拉回为零。生成元

$$
\mathscr G=2\sum_m(P_cu+P_sv),\qquad
\{\mathscr G,H_X+H_g\}=-V_3
\tag{8.7}
$$

给出一个显式 canonical extension；在 P=0 上，其流保持 scalar 坐标不变。

量子真空并非字面约束 P=0。它有动量涨落，因此这个图像不能消除量子真空收缩。单 helicity 的响应图一般有非零 i g²dD*∧dD；上述取消也不能任意推广到缺少共轭支的理论。

### 8.3 应用于本 Einstein–scalar 理论

取 g=κ、HX=Hφ、U=H₄con，(4.2) 正好等于 (8.1)。于是

$$
K_4^{\rm cl}=H_4^{\rm con}-2\sum_{m\ge2}m|D_m|^2
\tag{8.8}
$$

是同一个 scalar 辛空间上的 reduced tree Hamiltonian。它正是 (4.8) 的四次 classical symbol。

metric 中的自由引力变量以 κa 出现；这里 a=O(κφ²)，故得到的是

$$
g_{\mu\nu}=g^{(0)}_{\mu\nu}+\kappa^2k_{\mu\nu}[\phi,\phi]+\cdots.
\tag{8.9}
$$

因此消去的是 matter 激发的特定阶数 response。所有独立 homogeneous boundary modes 仍在完整理论中，图像仅选择 particular scalar branch。

在该图上，κVg³ 和 κ²Vg²φ² 都从 κ⁴φ⁶ 开始；它们不进入本次 κ²φ⁴ 计算。这是耦合次数和外腿次数共同给出的结论，不是把这些顶点从 full quantum theory 删除。

经典 symbol 中定义 energy derivation $\mathscr L=i\{H_\phi,\cdot\}$，对应量子 $[H_\phi,\cdot]$（此处取 ℏ=1）。若某分量满足 $\mathscr LD_\nu=\nu D_\nu$，则 Fν=(m+ν)Dν。m+ν=0 时 (8.3) 没有除零；该分量是被 scalar 数据指定的 homogeneous coefficient。完整简并 block 与状态 dressing 仍必须如第 5 节处理。

### 8.4 与 covariant stress-response 的系数、辛形式和端点匹配

对同一个带边界作用量 (2.1)，设

$$
\mathcal E^{(1)}k=T/2.
$$

在同一 reciprocal、边界完成的 Hessian variational domain 上，引力二次式与 source coupling 为

$$
S^{(4)}_{k,\phi}
=\kappa^2\left[
-\frac12\langle k,\mathcal E^{(1)}k\rangle
+\frac12\langle T,k\rangle\right].
\tag{8.10}
$$

这是由 δSg=−κ⁻²⟨𝓔,δg⟩、δSφ=⟨T,δg⟩/2 直接得到的规范化。stationary substitution 给

$$
S^{(4)}_{\rm cov,red}=\frac{\kappa^2}{4}\langle T,k[T]\rangle.
\tag{8.11}
$$

另一方面，同一 action 的 canonical form 是

$$
S_{\rm can}
=\int dt(\Theta_\phi+\Theta_g-H)+[B]_{t_i}^{t_f}.
$$

在响应图上 Θg 拉回为零，因此

$$
S_{\rm can,red}
=S_{\phi,0}-\kappa^2\int dt\,K_4^{\rm cl}
+[B']_{t_i}^{t_f}+\cdots .
\tag{8.12}
$$

这里 $B'$ 是该 canonical chart 诱导的 renormalized endpoint，本命题要求它在所用代表上 bounded；没有声称已将每一个旧 gauge 代表的 endpoint 显式逐项算出。这避免了将 time-nonlocal reduced Lagrangian 简单取负当作 Hamiltonian 的错误。covariant scalar 与 canonical scalar 的 order-κ² 坐标差只改变自由 action 为 free-EOM 项加 endpoints。

在有限自由外模、bounded quasiperiodic 代表上定义

$$
\mathcal R A=\lim_{T\to\infty}\frac1T
\int_{-T/2}^{T/2}A(t)\,dt .
\tag{8.13}
$$

free EOM 项为零、bounded endpoints 除以 T 消失，得到本轮明确证明的接口：

$$
\boxed{
[K_4^{\rm cl}]_{\phi^4,\rm res}
=-\frac14
\left[\int_\Sigma r\,dr\,d\theta\,
T^{\mu\nu}k_{\mu\nu}[T]\right]_{\rm res}.
}
\tag{8.14}
$$

这是同一 resonant 四线性形式的等价，不是两个未经场与辛结构识别的任意 off-shell Hamiltonian 函数逐点相等。

smooth global vacuum orbit 内的 bounded homogeneous difference 可写作 𝓛ζg₀，即使 ζ 是 large diffeomorphism。自由 stress conservation 给

$$
T^{\mu\nu}\mathcal L_\zeta g_{\mu\nu}^{(0)}
=2\nabla_\mu(T^{\mu\nu}\zeta_\nu).
\tag{8.15}
$$

radial flux 为 O(r²⁻²Δ)，Δ>1 时消失；时间边界是 bounded derivative 的平均。因此这种 homogeneous choice 不改变 (8.14)，但它仍是物理边界变换，不是 proper gauge。

**限制必须保留。** 原 response-prescription 文件还允许某些 secular proper-gauge representatives。若 ζ=tζ₀，则 ∂t(tC₀)=C₀，端点不再自动消失。本轮提供了 bounded canonical 代表，证明了上述允许的 bounded differences；没有逐一证明每条旧 secular 显示公式都可裸取 frequency-zero pairing。它们必须连同 observable 和 endpoint functional 一起变换。

同样，旧 no-radial-log de Donder 构造在 Δ*=(1+√5)/2 有辅助 gauge obstruction；最终 reciprocal Einstein pairing 不使用这一 restrictive representative，故 Δ* 不是谱的异常质量。

### 8.5 实际减少了哪些步骤

从本节直接得到 tree K₄，只需 (3.1)–(3.4) 的空间约束、(4.2) 的真实边界 cubic，再做一次辛图拉回。不需要枚举 1g、2φ+1g、4φ+1g 中间态，不需要逐个检查 tree denominator，也不需要另猜一个 scalar kinetic correction。

相比原 §17 的量子 commutator 压缩，计算结果相同；本轮新增的是它为何就是 classical reduction 的具体构造。约束输入、边界 section、四标量动力学和谱支识别仍要保留。

## 9. 从离散递推到 Racah 双谱代数

### 9.1 全次数 Newton 基引理

令

$$
C_n=(\Delta+n)(\Delta+n-1),\qquad
N_r(C)=\frac{\prod_{j=0}^{r-1}(C-C_j)}{(\Delta)_r^2},\quad N_0=1.
\tag{9.1}
$$

把第 6 节的 ℒ 作用在 f(n)=Nᵣ(Cn) 上，有

$$
\boxed{\mathcal L N_r=r(r+1)N_r+r^2N_{r-1}.}
\tag{9.2}
$$

证明可直接使用

$$
N_r(C_n)=
\frac{n(n-1)\cdots(n-r+1)(n+2\Delta-1)_r}{(\Delta)_r^2}.
$$

代入 n±1 的比值，通分后得到 (9.2)。这是任意 r 的有理恒等式；先在比值不为零的稠密参数集证明，再恢复多项式恒等式，因此 n=0 或 n<r 的零点不是遗漏端点。

因此

$$
R_m(C)=\sum_{r=0}^m
\binom mr\binom{m+r}{r}N_r(C)
\tag{9.3}
$$

满足

$$
\mathcal LR_m=m(m+1)R_m,\qquad R_m(C_0)=1,
$$

$$
R_m(C_n)={}_4F_3
\left(\begin{matrix}-m,m+1,-n,n+2\Delta-1\\1,\Delta,\Delta\end{matrix};1\right).
\tag{9.4}
$$

因为相邻 Newton coefficients 满足
cᵣ₊₁/cᵣ=(m−r)(m+r+1)/(r+1)²，(9.2) 逐系数即证明 eigenvalue equation。

这属于标准 Racah family 的参数特化。[R6] 物理 Δ>1 不满足通常有限正交系统的截断条件；这里使用的是形式多项式和 terminating series，不声称它们在 n≥0 上构成某个已建立的正交完备基。

### 9.2 与微分 Casimir 的精确 intertwiner

令 $t=z/(1-z)$、$A=t^\Delta$，并取

$$
D_s=z^2[(1-z)\partial_z^2-\partial_z].
$$

则

$$
(D_s-C_r)t^{\Delta+r}
=(\Delta+r)^2t^{\Delta+r+1}.
\tag{9.5}
$$

所以映射

$$
\mathfrak T_\Delta[P](t)=A^{-1}P(D_s)A
\tag{9.6}
$$

将 Nᵣ 映成 tʳ，是两个多项式空间之间的可逆线性映射。令 X 为乘 C，Y=ℒ，便有

$$
\begin{aligned}
\mathfrak T_\Delta Y\mathfrak T_\Delta^{-1}
&=t(t+1)\partial_t^2+(2t+1)\partial_t,\\
\mathfrak T_\Delta X\mathfrak T_\Delta^{-1}
&=t^2(1+t)\partial_t^2
+[2\Delta t(1+t)+t^2]\partial_t
+\Delta(\Delta-1)+\Delta^2t .
\end{aligned}
\tag{9.7}
$$

第一行是 Legendre operator。由此立即得到

$$
\boxed{R_m(D_s)A
=A\,P_m\!\left(\frac{1+z}{1-z}\right).}
\tag{9.8}
$$

乘 C 在 Rm 基底又是三对角：

$$
\begin{aligned}
CR_m={}&
\frac{(m+1)(m+\Delta)^2}{2(2m+1)}R_{m+1}
+\frac{\mu-m(m+1)}2R_m\\
&+\frac{m(m-\Delta+1)^2}{2(2m+1)}R_{m-1}.
\end{aligned}
\tag{9.9}
$$

在 m=0 时省略 $R_{-1}$ 项。这就是双谱结构：一个 Casimir 在另一 Casimir 的本征基中三对角。其闭合关系为

$$
[X,[X,Y]]=2\{X,Y\}+2X^2-2\mu X,
$$
$$
[Y,[Y,X]]=2\{X,Y\}+2Y^2-2\mu Y.
\tag{9.10}
$$

本轮两份独立代码分别在 Newton 基和任意光滑测试函数上验证这些关系。代数仅含 μ，而 fast/alternate branch、实际 Hilbert representation 和初始行还依赖 Δ 及边界条件。因此代数不是替代边界物理的理由。

### 9.3 原来的 stress shortcut 是 m=1

特别地，

$$
R_1(C)=\frac{2C-\mu}{\Delta^2},\qquad
(2D_s-\mu)A
=\Delta^2 A\,\frac{1+z}{1-z}.
\tag{9.11}
$$

crossed stress block 的 logarithmic part 为

$$
\mathsf k_2(1-z)
=-6\frac{1+z}{1-z}\log z-12 .
\tag{9.12}
$$

用应力 Ward normalization λT=Δ²/(2c)、c=3/(2G)，自由 block decomposition 直接给

$$
\gamma_{n,|\ell|>2}
=-12\lambda_T R_1(C_n)
=G(4\mu-8C_n).
\tag{9.13}
$$

这条 gravity identity 已在九月旧稿中出现；相关高自旋 Casimir binding 也见 Kraus–Sivaramakrishnan–Snively。[S4；R4] 本轮没有将它改名当作新发现，而是证明它与原 bulk recurrence 共享一个全次数结构。

作为独立 boundary 计算，有限 spin |ℓ|>2 的适用域需要 tree spin-two Regge bound/arc analysis；仅凭“大自旋常数加 spin analyticity”不够。整数 Δ 下，pointwise double discontinuity 可能为零，但解析延拓后的 inversion 有非零 endpoint distribution；必须先在一般 Δ 定义再取极限。第 6 节的 bulk 初始行加递推证明避开了这些附加 inversion 假设。[R3]

一般整数 chiral exchange weight s 的 log kernel 是 degree s−1 的 Legendre polynomial，(9.8) 随即将它转成 Rs−1(C)。这是一个更广泛的计算工具，但没有据此宣称任意 higher-spin coupling 都定义同一个 consistent Einstein–scalar theory。

### 9.4 已有 direct K₄ 方法在这个组织中的位置

圆对称四条外腿使 connected boundary density exchange 的角向 Fourier coefficient 为零。因此可以先算

$$
M^{(N)}_{rs}
=16\pi\langle r;N|[H_4^{\rm con}]_4|s;N\rangle,
\quad
|r;N\rangle=
\frac{b^\dagger_{r,0}b^\dagger_{N-r,0}|0\rangle}
{\sqrt{1+\delta_{2r,N}}}.
\tag{9.14}
$$

它是一个 compression，并非 invariant subspace。不能直接将 M 的 eigenvalues 当 primary energies；必须用自由 CG 重建。

所有圆对称 radial modes 是 xΔ 乘 x² 的有限多项式。空间约束逆可由一个函数

$$
U_\Delta(x)=\frac{\Delta}{4x}
\int_0^x\frac{t^2-t^{2\Delta}}{1-t^2}\,dt
\tag{9.15}
$$

加有限幂函数生成；其 coefficient 由能量内积固定为

$$
\alpha_{(n,\varepsilon)(m,\eta)}
=\frac{\omega_n}{\Delta}
\delta_{nm}\delta_{\varepsilon,-\eta}.
$$

在完整 resonant circular element 中，唯一剩余非有理 moment 的系数由自由 radial virial identity 精确取消。最终是有限有理和，不是选择一个 finite part 将 U 设零。

这已经是原 Direct K4 的有效简化。[S2] 本轮重新实现该算法，得到独立 benchmarks。尚未完成的纯求和任务，是在完全不使用 (8.14) 与 Einstein–Casimir identity 的前提下，把所有这些有限和直接求成 (6.13)。当前本轮 bridge 加第 6 节则证明了两种表达式为何表示同一算子；它不冒充那种额外的独立求和证明。

## 10. 新的实际谱计算：任意固定粒子数的手征 Jastrow 族

本节把已核查的二体 kernel 当作已知动力学输入，继续计算此前材料中未见的一类多体谱。这里使用 benchmark 是为了推出新谱支，不能反过来替代第 3–6 节的动力学推导。

### 10.1 最大手征扇区闭合

一粒子 chiral levels 写成 (p,q)，自由能量与角动量为 Δ+p+q、p−q。对 N 个 scalar，

$$
E_0-J=N\Delta+2\sum_i q_i.
$$

因此固定 N 的饱和扇区 E₀−J=NΔ 恰是所有 qi=0。resonant 22 Hamiltonian 保持它；第 5 节又排除了同阶改变 scalar number 或加独立 boundary oscillators 的混合。

该扇区是

$$
\mathrm{Sym}^N D^+_{\Delta/2}
$$

的 holomorphic polynomial realization。取 unit disk 变量 zi，单粒子算符为

$$
L_1=\partial_z,\quad
L_0=z\partial_z+\Delta/2,\quad
L_{-1}=z^2\partial_z+\Delta z.
\tag{10.1}
$$

内积满足

$$
\langle z^n,z^m\rangle
=\delta_{nm}\frac{n!}{(\Delta)_n}.
\tag{10.2}
$$

Δ>1 时这也由正的 disk measure
(Δ−1)π⁻¹(1−|z|²)Δ⁻²d²z 实现。zi 是态空间的 Bargmann 坐标，不应字面当成原 bulk 的粒子位置。

### 10.2 Einstein 相互作用恰成为两个投影

同一手征的一对 scalar，其右 primary level 为零，左相对 level k 为偶数。由 (6.13)，pair operator 恰为

$$
w_{ij}
=-4\Delta^2\,1+v_0P_{ij}^{(0)}+v_2P_{ij}^{(2)},
\tag{10.3}
$$

$$
\boxed{
v_0=\frac{2\Delta^2(2\Delta+5)}
{(2\Delta-1)(2\Delta+1)}>0,\qquad
v_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}>0.
}
\tag{10.4}
$$

Pij(k) 是该 pair 的 unitary sl(2) irreducible projector。order-G 没有 irreducible 六标量 vertex，normal-ordered quartic 在 N 粒子上必然提升为

$$
\delta H_N/G=\sum_{i<j}w_{ij}.
\tag{10.5}
$$

不同 pair projectors 一般不对易，但正性已经足够给出

$$
\delta H_N/G\ \ge -4\Delta^2\binom N2,
\tag{10.6}
$$

等号当且仅当每个 Pij(0)、Pij(2) 都 annihilate 态。

### 10.3 对共同零空间的完整代数刻画

**引理。** 在 pair-symmetric polynomial space 中，

$$
\ker P_{ij}^{(0)}\cap\ker P_{ij}^{(2)}
=(z_i-z_j)^4\,\mathbb C[z_i,z_j]^{S_2}
$$

并可任取 spectator polynomial coefficients。

**证明。** pair lowest-weight vector 是 (zi−zj)k。它被 ∂i+∂j 杀掉，而 total raising 保留 (zi−zj)k 的整除性。固定 pair degree d，所有偶 k≥4 的 descendants 数量，恰等于 degree d−4 的 pair-symmetric polynomials 数量。它们线性独立，所以构成整个四次消失的 ideal。unitarity 使它们正交于 k=0,2 的 irreducible modules。证毕。

令

$$
\mathcal V_N(z)=\prod_{i<j}(z_i-z_j).
$$

不同 pair linear factors 是不同的不可约因子，而多项式环是唯一分解整环。因而同时满足每一对的四次整除，等价于整除整个 𝒱N⁴。这里不需要各因子生成 comaximal ideals。由于四次幂已经对称，得到：

$$
\boxed{
\text{(10.6) 的全部饱和态}
=\mathcal V_N(z)^4
\,\mathbb C[z_1,\ldots,z_N]^{S_N}.
}
\tag{10.7}
$$

这不只是给一个 ansatz；它刻画了这个相互作用下界的全部有限多项式 eigenspace。

### 10.4 能量、primary 与计数

最小总手征 level 为

$$
J_{\min}=4\binom N2=2N(N-1).
$$

𝒱N⁴ translation invariant，因此满足 total L1=0，并已处于右支最低态，是 global primary。任取 homogeneous symmetric Q，若
Σi∂iQ=0，则 𝒱N⁴Q 也是 global primary。其谱为

$$
\boxed{
E=N\Delta+J-4G\Delta^2\binom N2+O(G^2),
\qquad J\ge 2N(N-1)
}
\tag{10.8}
$$

其中只有相应 symmetric/translation-invariant polynomial 存在的 J 才有 primary；并非所有整数 J 都产生新 primary。

固定 q=J−Jmin 的全部饱和态和 primary 饱和态的计数分别为

$$
\sum_{q\ge0}d_N(q)t^q
=\prod_{r=1}^N(1-t^r)^{-1},
$$
$$
\boxed{
\sum_{q\ge0}d_N^{\rm primary}(q)t^q
=\prod_{r=2}^N(1-t^r)^{-1}.}
\tag{10.9}
$$

第二式来自 symmetric polynomial ring 的 translation-invariant 生成元，次数为 2,…,N。最小 J 的饱和态唯一。

例如 N=3、Δ=2：

$$
\Psi=(z_1-z_2)^4(z_1-z_3)^4(z_2-z_3)^4,
\qquad
\boxed{E=18-48G+O(G^2).}
\tag{10.10}
$$

它在正内积 (10.2) 下的未归一化范数平方为 15158/49。本轮以两套独立构造验证 pair projectors，再以完整的 19 维三粒子 J=12 Fock block 验证：移去常数后的矩阵 exact rank 为 18，Ψ 正好张成一维最小 eigenspace。

一个有用的反例控制是 𝒱₃²：它虽被 P0 杀掉，却有非零 P2 成分。本轮所得一对的投影范数平方为 182/99。因此仅靠二次消失不足以得到上述能移。

这与 Haldane pseudopotential/Laughlin 零模机制有清楚的数学联系，后者及 hyperbolic/SU(1,1) 变体已有文献。[R8–R9] Maxfield 的 Virasoro multi-twist 大自旋规律也已经预期了 $-4G\Delta^2\binom N2$ 这一系数；它本身不是本轮首次发现。[R10] 本轮实际新增的是具体 minimal Einstein operator 下的有限 spin 显式共同 eigenspace、成立阈值和完整计数。检索未见该应用的现成证明，但不能据此断言文献无先例。

本节省去了整个族的多体重数对角化。它没有解决所有多体谱，没有证明完整 Einstein–scalar 理论可积，也没有将 (10.6) 宣称为整个量子引力理论的 ground-energy bound。粒子数和量子数均固定后再取形式 G 展开。


### 10.5 饱和空间的全局模块映射与非饱和计数

乘以 $\mathcal V_N^4$ 还给出一个精确的代数 intertwiner：

$$
\left(\sum_iL_a^{(\Delta)}\right)(\mathcal V_N^4Q)
=\mathcal V_N^4\left(\sum_iL_a^{(\Delta_{\rm alg})}\right)Q,
\quad a=1,0,-1,\qquad \Delta_{\rm alg}=\Delta+4(N-1).
\tag{10.11}
$$

对 lowering 这是整体平移不变性，对 $L_0$ 是齐次次数；对 raising 则使用

$$
\sum_i z_i^2\partial_i\log\mathcal V_N^4
=4\sum_{i<j}\frac{z_i^2-z_j^2}{z_i-z_j}
=4(N-1)\sum_i z_i.
$$

这个参数平移只描述 global module 的代数结构。它没有改变真实标量的质量；乘以 $\mathcal V_N^4$ 也不是两个标准乘积 Bargmann 内积之间的等距映射。物理 norm 始终是 (10.2)。

全部最大手征 primary 的生成函数为 $D_N(t)=\prod_{r=2}^N(1-t^r)^{-1}$。因此非饱和 primary 的精确计数为

$$
D_N^{\rm exc}(t)=(1-t^{2N(N-1)})D_N(t).
\tag{10.12}
$$

特别是 $N=3$ 时，$(1-t^{12})/[(1-t^2)(1-t^3)]$ 在每个 $J\ge12$ 的系数恰为二。这不仅给出一个可解子空间，也说明完整三粒子问题只剩两条非饱和 primary 谱支。下面实际求出它们。


### 10.6 已经完成的计算

接着第 10.3–10.5 节的 exact Jastrow ideal，现在实际求出其余两条三粒子最大手征谱支。结果不是仅有一个新的 ansatz 或大-spin 预测：在同一个固定 Einstein–scalar 理论、同一个 $O(G)$ scalar branch 上，**全部三粒子最大手性 global-primary energy corrections 都已化为以下显式公式**。descendants 随后具有相同 correction。

令 $d=\Delta>1$，总左手性激发次数为 $J$。固定 physical gap 后，自由 primary energy 是 $3d+J$。定义

$$
 v_0=\frac{2d^2(2d+5)}{(2d-1)(2d+1)},\qquad
 v_2=\frac{4d}{(2d+1)(2d+3)}.
\tag{10.13}
$$

它们是已独立求得的引力两体系数 $g_{0,0}+4d^2$、$g_{0,2}+4d^2$，不是待定参数。

对 $J\geq2$，置

$$
 \Lambda_J=J(J+3d-1),\qquad
 \mathcal D_J=[\Lambda_J+(d-2)(2d+1)]
              [\Lambda_J+2d(d-1)],
$$

$$
 a_J=(-1)^J\frac{(d)_J}{(2d)_J},
$$

$$
 \beta_J=\frac{d(2d+3)\Lambda_J(\Lambda_J-3d)}{\mathcal D_J},
$$

$$
 \chi_J=\beta_J-
 \frac{4(2d+1)^2(2d+3)(\Lambda_J-5d-2)}{\mathcal D_J}.
\tag{10.14}
$$

这里 $\mathcal D_J=(J+d-2)(J+d-1)(J+2d)(J+2d+1)>0$，$\beta_J>0$，不存在该参数范围内的隐藏极点。整个非饱和谱由

$$
 \boxed{M_J=
 \begin{pmatrix}
 v_0(1+2a_J)&2a_J\sqrt{v_0v_2\beta_J}\\
 2a_J\sqrt{v_0v_2\beta_J}&v_2(1+2a_J\chi_J)
 \end{pmatrix}}
\tag{10.15}
$$

给出。令

$$
 A_J=v_0(1+2a_J),\qquad B_J=v_2(1+2a_J\chi_J),
$$

则

$$
 \boxed{\lambda_\pm(J)=\frac12\left[
 A_J+B_J\pm\sqrt{(A_J-B_J)^2+16a_J^2v_0v_2\beta_J}
 \right].}\tag{10.16}
$$

相应 primary energy 为

$$
 E_\pm(J)=3d+J+G[-12d^2+\lambda_\pm(J)]+O(G^2).
\tag{10.17}
$$

令

$$
 m_3(J)=[t^J]\frac1{(1-t^2)(1-t^3)},\quad m_3(J)=0\quad(J<0).
$$

完整规则是：

- 对所有 $J\geq2$，保留 (10.16) 中严格正的本征值；每个给出一条非饱和 primary。小 $J$ 时若 $\lambda_-=0$，那是两个生成向量线性相关，不应额外计一个物理零模。
- 另有 $m_3(J-12)$ 个 Jastrow primary，能量 $3d+J-12Gd^2+O(G^2)$。
- 在 $J=0$ 只有 ground primary，其 correction 是 $3Gg_{0,0}$；$J=1$ 没有 global primary。

特别地，所有 $J\geq12$ 的 $\lambda_\pm$ 都严格为正；这是两条例外轨迹。其余 $m_3(J-12)$ 条轨迹完全由四次 Jastrow ideal 给出。这个“其余”数在 $J=13$ 为零，因而不能误说每个 $J\geq12$ 都出现一个新的饱和 primary。

### 10.7 为什么只剩两个向量

固定 total global primary degree $J$，先在有标签的三重张量积中工作。对于 pair $(12)$ 的最低权 $d+k$，其与第三粒子最低权 $d/2$ 结合到总最低权 $3d/2+J$ 的重数为一。记这条归一向量为 $f_k$，$k=0,\ldots,J$。在 physical symmetric space 中只需偶数 pair $k$。

设 $\Pi_{\rm B}$ 是三粒子 Bose 正交投影，并令

$$
 u_k=\Pi_{\rm B}f_k,\qquad k=0,2.
$$

第 10.2 节已经从原两体动力学证明

$$
 \mathbb W_3+12d^2 I
 =\sum_{i<j}(v_0P^{(ij)}_0+v_2P^{(ij)}_2).
$$

在固定 total-primary 空间，每个 $P_k^{(12)}=|f_k\rangle\langle f_k|$ 为 rank one。因此限制到 symmetric space 后

$$
 \boxed{\mathbb W_3+12d^2 I
 =3v_0|u_0\rangle\langle u_0|
  +3v_2|u_2\rangle\langle u_2|.}\tag{10.18}
$$

这已经把任意 $J$ 的增长矩阵化为两个向量的 Gram problem。它不要求三个 pair 的 Casimir 对易。

令 $P_{23}$ 交换第二、第三粒子，并定义

$$
 R_{kl}=\langle f_k,P_{23}f_l\rangle,\qquad k,l\in\{0,2\}.
$$

因为两个 $f_k$ 在 $P_{12}$ 下为偶，六个 permutations 按三组整理给出

$$
 \langle u_k,u_l\rangle=\frac{\delta_{kl}+2R_{kl}}3.
\tag{10.19}
$$

$R$ 是实对称矩阵。由有限维 $AA^\dagger$ 与 $A^\dagger A$ 的非零谱相同，(10.18) 的非零谱就是

$$
 \sqrt{\operatorname{diag}(v_0,v_2)}
 (I+2R)
 \sqrt{\operatorname{diag}(v_0,v_2)}.
\tag{10.20}
$$

所以真正剩下的计算只是三个 recoupling numbers，而不是大矩阵的对角化。

### 10.8 直接构造归一 global-primary 波函数

采用物理 Bargmann norm

$$
 \|z^n\|^2=\frac{n!}{(d)_n},\qquad
 L_{-1}=z^2\partial_z+dz.
$$

令 $q=J-k$、$\delta=z_1-z_2$、$R_{12}=L_{-1}^{(1)}+L_{-1}^{(2)}$。取未归一波函数

$$
 F_{Jk}(z)=\sum_{r=0}^{q}(-1)^r\binom qr
 \frac{R_{12}^r\delta^k}{(2d+2k)_r}\,z_3^{q-r}.
\tag{10.21}
$$

它是齐次次数 $J$、pair Casimir 值 $(d+k)(d+k-1)$ 的向量。利用

$$
 (L_1^{(1)}+L_1^{(2)})R_{12}^r\delta^k
 =r(2d+2k+r-1)R_{12}^{r-1}\delta^k,
$$

相邻 $r$ 项正好抵消，故 $\sum_iL_1^{(i)}F_{Jk}=0$。没有使用未知 interacting eigenvector。

两个初等 terminating Vandermonde sums 给出精确范数

$$
 \boxed{N_{Jk}:=\|F_{Jk}\|^2
 =\frac{k!(2d+k-1)_k}{(d)_k^2}
 \frac{(J-k)!(3d+J+k-1)_{J-k}}
 {(2d+2k)_{J-k}(d)_{J-k}}.}\tag{10.22}
$$

证明可分成 pair primary norm 与 pair–spectator coupling norm。先有

$$
 \|\delta^k\|^2=\sum_{a=0}^k\binom ka^2
 \frac{a!(k-a)!}{(d)_a(d)_{k-a}}
 =\frac{k!(2d+k-1)_k}{(d)_k^2}.
$$

其次，(10.21) 中不同 $r$ 的 spectator degree 不同而正交，且 $\|R_{12}^r\delta^k\|^2=r!(2d+2k)_r\|\delta^k\|^2$。剩余和是

$$
 q!\sum_{r=0}^q\frac{\binom qr}{(2d+2k)_r(d)_{q-r}}
 =\frac{q!(3d+2k+q-1)_q}{(2d+2k)_q(d)_q}.
$$

这证明了 (10.22)。最后 $f_k=F_{Jk}/\sqrt{N_{Jk}}$。

### 10.9 三个 6j 系数可从 pair-coincidence 数据读出

#### 10.9.1 第一行只需一次评价

在 $z_1=z_2$ 时，所有 pair $k>0$ 的 module 都消失，而 $F_{J0}(0,0,z_3)=z_3^J$。因此 $P_{23}F_{Jk}$ 在 pair-zero module 的系数就是 $F_{Jk}(0,z,0)/z^J$。由 (10.21) 只有 $r=q$ 存活，得到

$$
 A_k=(-1)^J\frac{(d+k)_{J-k}}{(2d+2k)_{J-k}}.
$$

于是

$$
 R_{0k}=A_k\sqrt{\frac{N_{J0}}{N_{Jk}}}.
\tag{10.23}
$$

取 $k=0,2$，整理 Pochhammer 比值，便得

$$
 R_{00}=a_J,\qquad R_{02}=a_J\sqrt{\beta_J}.
\tag{10.24}
$$

这里的符号 $(-1)^J$ 来自实际 permutation；不能只保留 squared overlap，因为它还决定对角 Gram entries。

#### 10.9.2 第二个对角元只需二阶 Taylor coefficient

在 pair-centered 坐标中有

$$
 F_{J0}(x/2,-x/2,1)
 =1+\frac{J(J-1)}{8(2d+1)}x^2+O(x^4),
$$

$$
 F_{J2}(x/2,-x/2,1)=x^2+O(x^4).
\tag{10.25}
$$

所以任意 pair-symmetric global primary 在 $F_{J2}$ 方向的系数，是其 $x^2$ 系数减去 $F_{J0}$ 的已知贡献。对于非 pair-symmetric 函数，先取其偶部分；这不改变两个 even Taylor coefficients。

为评价 $P_{23}F_{J2}$，只需把 (10.21) 代入 $(z_1,z_2,z_3)=(x/2,1,-x/2)$，保留到 $x^2$。高次项自动消失，因此仅有 $r=q,q-1,q-2$ 三项需要计算。方便的 generating identity 为

$$
 e^{tR_{12}}\delta^k
 =\delta^k(1-tz_1)^{-d-k}(1-tz_2)^{-d-k}.
\tag{10.26}
$$

设

$$
 T_1=\frac{(J-2)(3d+J+3)}{d+J-1},
$$

$$
 T_2=\frac{(J-2)(J-3)[(3d+J+3)^2-d-J+1]}
 {2(d+J-2)(d+J-1)}.
$$

应用 (10.25) 后得到

$$
 R_{22}=A_2\left[\frac{1-2T_1+T_2}{4}
                  -\frac{J(J-1)}{8(2d+1)}\right]
        =a_J\chi_J.
\tag{10.27}
$$

在 $J=2,3$ 处，$J-2$、$J-3$ 因子恰好省略不存在的 Taylor 项；分母在 $d>1,J\geq2$ 有定义。它们不是需要另选 principal value 的 resonance。

由此

$$
 \boxed{R=a_J\begin{pmatrix}1&\sqrt{\beta_J}\\
                              \sqrt{\beta_J}&\chi_J\end{pmatrix}.}
\tag{10.28}
$$

代入 (10.20) 就完成了 (10.15)–(10.17) 的推导。

#### 10.9.3 与标准有限 Racah 6j 的独立核对

另一条独立路线使用通常有限 $SU(1,1)$ recoupling 的 Racah polynomial

$$
 \mathcal R_{kl}={}_4F_3\!\left(
 \begin{matrix}-k,k+2d-1,-l,l+2d-1\\d,-J,J+3d-1\end{matrix};1\right).
$$

对 $k=l=2$，其仅有三项：

$$
 \mathcal R_{22}
 =1-\frac{4(2d+1)^2}{d\Lambda_J}
    +\frac{8(d+1)(2d+1)^2}{d\Lambda_J(\Lambda_J-3d)}.
$$

相应权重为

$$
 w_2=\frac{(J+3d-1)_2(-J)_2(2d-1)_2}
 {(1-d-J)_2(2d+J)_2\,2!}\frac{2d+3}{2d-1}.
$$

直接有理化证明

$$
 w_2=\beta_J,\qquad w_2\mathcal R_{22}=\chi_J.
$$

这次是有实际 $-J$ 截断的有限 recoupling 系统，和另一份笔记中没有 finite orthogonality 条件的无限格点形式 Racah 多项式应严格区分。标准特殊函数本身不是新结果；这里通过 pair-coincidence 数据独立得到的低-channel 系数与它完全吻合。

### 10.10 为什么这些 eigenvalues 是完整的

由 Jastrow 定理，shifted interaction 的 kernel 在 degree $J$ 的 primary 空间维数是 $m_3(J-12)$。全部 primary 维数为 $m_3(J)$，故 image 维数为

$$
 m_3(J)-m_3(J-12).
$$

另一方面，(10.18) 精确识别了 image 为 $u_0,u_2$ 的张成空间，非零谱全部来自 (10.15)。二者结合，不存在遗漏的第三条非饱和支。

在小次数处，$J=2,3,4,5,7$ 只有一个非饱和 primary，$M_J$ 为 rank one；$J=6,8,9,10,11$ 为 rank two。对于全部 $J\geq12$，rank 为二，其余空间恰为 Jastrow kernel。矩阵的零本征值只有在 $u_k$ 张成的参数空间没有满秩时出现，不能未经 image map 就计为额外态。

如果还需要显式的非饱和波函数，令 $e_\pm\in\mathbb R^2$ 是 (10.15) 的归一 eigenvector，$\lambda_\pm>0$，则

$$
 \Psi_\pm=\frac{\sqrt{3v_0}(e_\pm)_0u_0
                    +\sqrt{3v_2}(e_\pm)_2u_2}
                   {\sqrt{\lambda_\pm}}
$$

就是 physical Bargmann norm 下的归一 global primary。这仍只需要两个已给出的有限 polynomial generators，无需构造全部 multiplicity basis。

当 $J\to\infty$ 时，$a_J=O(J^{-d})$、$\beta_J,\chi_J\to d(2d+3)$，所以两条例外 correction 相对 Jastrow 常数分别趋于 $v_0$、$v_2$。它们保留一个低 relative-spin pair 的影响，尽管总 spin 很大。这个 asymptotic 指的是已求出的 $O(G)$ 系数，不声称在固定非零 $G$ 上获得了全阶大-spin 定理。

### 10.11 独立 exact checks 与示例

`three_body_chiral_checks.py` 从 (10.21) 直接生成多项式，使用物理 monomial 权重计算 norm、permutation overlaps 和 lowering residual。对于

$$
 d=5/4,3/2,2,7/3,3,\qquad J=2,\ldots,18,
$$

共 85 个 cases、765 个 exact rational residuals 全部为零。计算没有导入任何 growing matrix 的 eigenvalues；实际检验的是 (10.24)、(10.27)、范数 (10.22) 和 global-primary 条件。

`three_body_racah_symbolic.py` 另外给出六个一般 $d,J$ 的零残差，证明总 Casimir 化简、weighted-norm 路线、二阶 Taylor 路线与标准有限 Racah 路线的公式一致。finite examples 与 all-index algebraic certificate 在报告中分开保存。

为使证书不隐藏在代码中，范数路线使用 (10.22) 的精确比值

$$
 \frac{A_2}{A_0}
 =\frac{4(2d+1)(2d+3)}{(J+2d)(J+2d+1)},
$$

$$
 \frac{N_{J0}}{N_{J2}}
 =\frac{dJ(J-1)(J+3d-1)(J+3d)(J+2d)(J+2d+1)}
 {16(2d+1)^2(2d+3)(J+d-2)(J+d-1)}.
$$

六项证书逐项是：

1. $\mathcal D_J=(J+d-2)(J+d-1)(J+2d)(J+2d+1)$；
2. $\Lambda_J(\Lambda_J-3d)=J(J-1)(J+3d-1)(J+3d)$；
3. $w_2=\beta_J$；
4. $w_2\mathcal R_{22}=\chi_J$；
5. $(A_2/A_0)^2N_{J0}/N_{J2}=\beta_J$；
6. $(A_2/A_0)[(1-2T_1+T_2)/4-J(J-1)/(8(2d+1))]=\chi_J$。

第 5、6 项分别是全指标的范数与 Taylor 公式比较；(10.22) 的 terminating-sum 推导和 (10.26) 的有限 Taylor 取项则是这些公式的解析来源。有限次数的多项式核查提供独立检验，不能取代这两步推导。

例如 $d=2,J=12$，矩阵 (10.15) 的 trace 与 determinant 为

$$
 \operatorname{tr}M=\frac{42044}{7735},\qquad
 \det M=\frac{96672}{54145}.
$$

正本征值约为

$$
 \lambda_-=0.3511584541088157,\qquad
 \lambda_+=5.084394228502690.
$$

因此该次数的三个 primary 有

$$
 \frac{\gamma}{G}\approx
 -48,\quad -47.64884154589119,\quad -42.91560577149731.
$$

第一条有精确 Jastrow polynomial；另两条由 (10.16) 的根式精确给出。独立的完整三粒子 $J=12$ Fock 检查还已确认 19 维 block 的 shifted interaction rank 为 18，Jastrow 向量确为唯一饱和态；那一整个 block 同时包含来自更低 primary degrees 的 descendants，不能把它的其余 18 个 eigenvalues 全误认作 $J=12$ 的新 primary。

### 10.12 新意和理论边界

本计算使用了已成立的两体 Einstein 核及旧 pairwise 提升。它的新产物是当前理论的完整三粒子最大手性 primary corrections，以及显式说明为什么其复杂度始终只有两个有效向量。原先需要随 $J$ 增长的 primary multiplicity matrices，现在只需三个有限 recoupling numbers；这些数又由一个 coincidence value 和一个二阶 Taylor coefficient 给出。

Racah/6j 特殊函数、Bose symmetrization、positive-pseudopotential 方法和 multi-twist 的大-spin 思想都有既有文献；并不以它们本身申请新意。尤其 Harris 等人的三重 twist 研究已经明确写出 Bose 投影的 Racah 表达式，即本文 Gram 恒等式的全通道版本，并在另一标量理论中讨论重合点消失与低通道补空间。[R18, §5.2、§7.2.3] 本节的具体产物是 minimal Einstein 核的两个低通道压缩、有限自旋闭式及完整物理重数；没有从 $O(G)$ 推出全阶 integrability、loop protection 或其他手征扇区的完整能谱。

复现命令：

```bash
python3 three_body_chiral_checks.py
python3 three_body_racah_symbolic.py
```

附件 research_simplification 目录中的第一个脚本仅用标准库，第二个使用 SymPy 1.14.0。对应 JSON 保留全部 exact fractions 和全指标证书名称。


---

# 第三部分　从第一性原理说明 reduction 与 OFPT 的等价

## 11. 一般的 formal tree-transfer 命题

### 11.1 可以证明的命题及其自然条件

在一个已固定变分域的场论中，将变量分为保留变量 x 与待消去补空间 y。空间边界 action、时间 prescription、允许的 homogeneous data 和 observable definitions 都包含在该选择中。写

$$
S[x,y;g]=S_x[x]+\frac12\langle y,Ky\rangle+I[x,y;g].
\tag{11.1}
$$

假设：

1. 在所选补空间上 K 有已指定的 inverse G，其与 pairing 的 reciprocity 相容。
2. Iy 在耦合次数或场次数的 filtration 中提高次数，使形式递归有定义。
3. 真 kernel、proper-gauge cohomology、需要作为独立外态保留的物理边界变量，已经留在 x 中；或者已明确限定 source-solvable complement 和 homogeneous choice。后一种表述要求每一步递归源都在 G 的定义域内，并且余下 kernel equation 确实满足或仍被保留，不能通过投影擅自丢掉。固定的非零 homogeneous data 先作为保留参数或共同背景平移纳入定义。
4. 图的每个积分、求和和调节极限在所声称层次存在。连续场论可以先把命题限制在有限调节，随后对需要的固定外腿证明极限。

则 stationary equation

$$
y_*=-G I_y[x,y_*;g]
\tag{11.2}
$$

有唯一形式解，并且

$$
S_{\rm red}[x]=S[x,y_*[x]]
\tag{11.3}
$$

的 vertices 恰为 full theory 中内部线全为 y 的 connected trees，带正确对称因子。用这些 effective vertices 和 retained propagators 拼出的全部 x-external tree kernels，与原理论逐图相等。

这不要求 y 比 x 重，不要求 derivative expansion，也不要求 reduced action 在时间上局域。stationarity 是研究谱时的附加输入；action 的 tree-transfer 本身可以更一般。

### 11.2 证明

迭代 (11.2) 时，每次 −G 添一条 rooted internal line，Iy 的一个 Taylor coefficient 添一个 vertex。因此形式解生成全部 rooted y-trees，并且只生成树。

完整的 stationary boundary condition 使链式法则化为

$$
\frac{\delta S_{\rm red}}{\delta x}
=\left.\frac{\delta S}{\delta x}\right|_{y_*}.
\tag{11.4}
$$

右边枚举一个 x-leg 被标记的全部树。对 x 积分恢复 action vertex，恰好除去选择 marked leg 的重数，给出标准对称因子；x-independent 常数由共同 vacuum normalization 固定。

最后取任意 full x-external tree，把其只由 y-internal edges 连通的每个最大子图缩成一个 effective vertex。原图无环，所有这些分量也无环。反过来展开各 effective vertices，唯一恢复原图。这是剩余图的双射，不是“图看起来类似”的论证。证毕。

若 y=(u,v)，且逐步与联合 stationary equations 在同一域都唯一可解，先消 u 再消 v 与联合消去相同：由 (11.4)，第二步 stationary equation 正是原 v equation 在第一步解上的限制；唯一性完成证明。线性情形是 Schur complement 的结合性，非线性是 rooted-tree 的延伸。

这个原理已有 homotopy-transfer 文献，并在原 9 月 30 日笔记中已有相当内容。[R2；S4] 本轮所做的是自足证明及其边界、observable 和谱接口。

### 11.3 可观测量必须一起转移

对原 observable O[x,y]，向 action 加 ηO，再做同一个 stationary transfer，并对 η 求导。单个插入得到 O[x,y*]；多个插入的 induced contacts 也由同一递归给出。

所以相等 action vertices 不意味着可以随意保留原坐标表达式的 observable。边界能量、scalar external state、endpoint wavefunctional 都可能需要 transport。第 8 节实际完成的是 free scalar 四外腿与 H∂t 在所需阶数的这种识别。

### 11.4 homotopy equivalence 的适用范围

若要将 stationary transfer 叫作完整 field complex 的 homotopy quasi-isomorphism，消去补空间必须没有被遗漏的 on-shell cohomology。AHHL 明确强调不能忘掉物理 on-shell states。[R2, §6]

selected scalar external sector 的 mediator elimination 可以给等价 tree kernels，却不等于 full boundary-graviton theory 被一个 scalar-only Hilbert space 完全替换。本文始终保留物理 boundary gravitons 作为完整态空间的一部分；响应图只选择 particular branch。

## 12. 从 action 到 Hamiltonian，再到 spectrum

### 12.1 中间必须经过辛结构

stationary action 一般 time-nonlocal。若在某一支上能写成 local first-order action，则它自带 induced Θred 和 Ωred。只有在 Ωred 正则后，才能作 Darboux identification 并比较 Hamiltonian。

对于 invariant symplectic embedding ι，正确的 reduced Hamiltonian 是 ι*H，正确的 bracket 来自 ι*Ω。第 8 节特别证明 ι*Ω=Ωφ 到本问题所需精度，所以这里不再缺一项 kinetic/symplectic 修正。

### 12.2 完整量子计算的共同对象是 projected resolvent

在一个已经指定的量子理论中，取自伴 Hamiltonian H、用于识别目标谱簇的正交模型投影 P 和 Q=1−P，并假设所用算子乘积具有共同定义域。在 $E-QHQ$ 与 $E-H$ 都可逆的 resolvent 区域内，

$$
\boxed{
P(E-H)^{-1}P
=\left[E-PHP-PHQ(E-QHQ)^{-1}QHP\right]^{-1}.}
\tag{12.1}
$$

这是 Feshbach–Schur 的精确恒等式。[R12] 在谱点不能将不存在的 $(E-H)^{-1}$ 当作普通逆；相应的精确命题是下面的 Schur kernel 与状态重建等价，它只要求 $E-QHQ$ 可逆。定义

$$
K_P(E)=PHP+PHQ(E-QHQ)^{-1}QHP.
$$

若 KP(E)ψP=EψP，则

$$
\psi=\psi_P+(E-QHQ)^{-1}QHP\psi_P
\tag{12.2}
$$

恢复对应 full state。在上述可逆区域内，谱与 multiplicity 匹配；与 P 没有重叠且不在该区域假设内的纯 Q 态，不是这个 reduced equation 所描述的外态。

对实 E，full norm 是

$$
\|\psi\|^2=
\langle\psi_P,[1-\partial_EK_P(E)]\psi_P\rangle .
\tag{12.3}
$$

能量依赖和 pole residue 因此携带 state normalization，不能只看一个 energy-dependent potential 而忘掉态空间识别。

取 H=H₀+gV₁+g²V₂，P 为完整自由简并块，PV₁P=0。展开 (12.1) 即得到 (4.6)。Schrieffer–Wolff 用能量无关的、有限调节下的酉变换把同一谱簇拉回 P，是相同谱问题的另一表示。[R11]

对一个频率 Ω 的被消去振子，两个 OFPT time orderings 满足

$$
\frac1{2\Omega}
\left(\frac1{\nu-\Omega}+\frac1{-\nu-\Omega}\right)
=\frac1{\nu^2-\Omega^2}.
\tag{12.4}
$$

右边正是波动 Hessian 的 harmonic inverse。来自同一 Legendre transform 的 contact terms 也必须一起保留。这把 canonical tree expansion 与 stationary tree transfer 接在同一个 propagator 上。AdS₃ 的 (4.2) 更强：其 numerator 已含 homological denominator，因此在形成 (12.4) 之前就能消去分母。

### 12.3 全阶 formal normal-form 对应

在有限 oscillator Weyl algebra 中，H₀ 为二次式。假定输入量子 Hamiltonian 的 $\hbar^0$ symbol 就是所比较的 classical Hamiltonian，所有符号及生成元具有非负 $\hbar$ 次的形式展开。两边固定相同的 resonant projection ℛ、非共振 homological inverse 以及 resonant-generator convention；真零 divisor 留在 resonant block。

$$
\frac1{i\hbar}[H_0,A]_\star=\{H_0,A\}
\tag{12.5}
$$

精确成立，且

$$
\frac1{i\hbar}[A,B]_\star=\{A,B\}+O(\hbar^2).
$$

按每一耦合阶归纳：quantum 与 classical 使用同一 free homological inverse，前阶量子 normal form 的 leading symbol 已等于 classical，故本阶也相等。这证明 leading Weyl symbol 的全阶 formal correspondence。

它不是 fixed occupation-number energies 的全量子定理。将某些振子投影到 quantum vacuum 时会再产生 contractions；classical quartic 的量子 matrix element 和这些低次项可以同属 g²。

### 12.4 各层等价之间的关系

| 比较对象 | 可证明的共同结构 | 还需要什么 |
|---|---|---|
| stationary reduced action | 同一变分域的树转移 | inverse、reciprocity、homogeneous choice、boundary functional |
| on-shell tree kernels | 最大消去子树的图双射 | 外部 sources/observables 的相同识别 |
| classical effective Hamiltonian | induced symplectic branch 上的 H 拉回 | 正确的 Ωred、Darboux/endpoint matching |
| resonant tree energy coefficient | 同一 transition/resolvent kernel 的 secular coefficient 或 pole | 完整简并块、相同 boundary clock、合法的 normal form |
| full quantum spectrum | 同一量子理论的 Feshbach/SW 或完整 path integral | measure、ordering、state covariance、loops、counterterms |

因此此前两条 Einstein–scalar 路线的 tree 一致性不是偶然数字一致：它们是同一边界完成 stationary Hessian 的两种分解，并由本轮辛图构造接到同一个 scalar resonant Hamiltonian。完整 O(G) 谱的一体部分则还使用第 7 节单独完成的量子计算。

## 13. 哪些条件充分，哪些不能误称必要

这里没有把一组方便的假设包装成最一般的必要充分分类。

- **大质量或谱隙不是 tree elimination 的必要条件。** 可以保留非局域响应；共振源若像本例一样先为零，也可构造无分母的 particular graph。
- **真正非零 resonant source 是实质障碍。** 它必须留在更大的 effective block，或者以带记忆、初态的响应处理；不能任意 finite-part 掉。
- **reciprocity 是单副本 variational action 的自然条件。** 若只比较 retarded equations，可以改用 doubled in-in/Schwinger–Keldysh 构造；那是另一类正确命题，不是否定 tree transfer。
- **本例的零边界流不是一切理论的必要条件。** 非零 boundary flux 也可处理，但两条路线必须保留同样的边界自由度与 boundary action。
- **正则 proper-gauge chart 是这里局部证明的充分条件。** singular constraint strata、global Gribov 问题或 anomalous quantum constraints 没有在此被解决；BV/homotopy formulation 能扩展部分范围，但不能只写一个名字便自动获得全局定理。
- **同一量子处方对 full spectrum 是必要的数据；对 tree 最高 symbol，则很多 ordering 差只从更低次数或更高 ℏ 开始。** 必须先说明比较的 grading。

## 14. 反例与主动失败检查

### 14.1 动态响应不能换成静态代数消元

考虑

$$
H=\frac{p^2+\omega^2q^2}{2}
+\frac{P^2+\Omega^2Q^2}{2}+gQq^2.
\tag{14.1}
$$

严格动态 tree response 给 connected pair coefficient

$$
\lambda_{\rm tree}
=-\frac1{4\omega^2}
\left(\frac2{\Omega^2}+\frac1{\Omega^2-4\omega^2}\right),
\qquad
\delta E_n^{\rm pair}=g^2\lambda_{\rm tree}n(n-1).
\tag{14.2}
$$

静态 Q=−gq²/Ω² 却给 −3/(4Ω²ω²)，只在额外的大 Ω 展开中才相符。错误来自改变时间动力学。

完整 OFPT 还给一般非零的 vacuum 与 one-body terms，
eₙ=e₀+n(e₁−e₀)+λtree n(n−1)。它们与正确 tree pair equality 同时存在。本轮用解析 OFPT 与有限 Fock 求和独立验证。

在 Ω=2ω 时，

$$
\langle n-2,1|gQq^2|n,0\rangle
=\frac{g\sqrt{n(n-1)}}{2\omega\sqrt{2\Omega}}\ne0
$$

一般成立，产生 order-g 简并 splitting。这是必须扩大 retained block 的明确例子。若要求全局下有界，可给两种描述同时加 g²q⁴/Ω²；完成平方后势能下有界，以上差异和共振仍在。

### 14.2 辛结构错误会直接改频率

两个线性耦合振子的某 normal-mode 支可写 Q=cq、P=cp。其
Ωred=(1+c²)dp∧dq，Hred=(1+c²)(p²+ν²q²)/2。
正确频率是 ν；若保留 Hred 却误用原 dp∧dq，得到 (1+c²)ν。即使完全 classical、完全线性，忽略 symplectic pullback 也会算错谱。

### 14.3 nonlinear canonical change 不保留 naïve Weyl prescription

取 q=Q+εQ³，J=1+3εQ²，p=P/J。精确 unitary coordinate transformation 与直接对 classical transformed Hamiltonian 作 naïve Weyl quantization 的差为

$$
\Delta H=
\frac{\hbar^2(J')^2}{8J^4}
=\frac{9\hbar^2\epsilon^2Q^2}{2(1+3\epsilon Q^2)^4}.
\tag{14.3}
$$

本轮从 differential operators 直接验证了这项。ε>0 时坐标变换单调，配 confining potential 可作为常规量子力学反例。精确 unitary transformation 当然保持谱；失效的是“换坐标后重新采用同名 Weyl 规则就等于原量子理论”的假设。[R13]

### 14.4 纯经典 branch 可以遗漏 loop determinant

若 y 的 quadratic Hessian K[x] 依赖保留场，classical branch 可以是 y*=0，而量子 effective action 仍有

$$
\frac{i\hbar}{2}\operatorname{Tr}\log K[x].
\tag{14.4}
$$

例如 oscillator frequency √(Ω²+gx²) 的零点能具有 x-dependent correction。相反，若 K 与 x 无关、y 仅线性耦合 J[x]，且 measure、初末态泛函或 density matrix 在 y 上均为匹配的 Gaussian，具有相同 covariance、均值和时间 prescription，则在零均值或已经平移掉共同均值后，Gaussian integration 除 x-independent determinant 外精确等于

$$
S_{\rm eff}=S_x-\tfrac12\langle J,K^{-1}J\rangle .
\tag{14.5}
$$

对这个完整、通常 time-nonlocal action 作量子计算可以重现 full projected amplitudes，包括 retained/mixed loops。若初态非 Gaussian，即使 bulk Hessian 是二次的，边界态的高阶 connected cumulants 也可能额外产生 J⁴ 等项；只匹配二点 covariance 不够。这个特例不等于“只保留 classical local potential 再量子化总是精确”。

### 14.5 retarded inverse 与单副本 action 不可混用

$$
\frac{\delta}{\delta J}\left(\tfrac12\langle J,G_RJ\rangle\right)
=\tfrac12(G_R+G_A)J
\tag{14.6}
$$

一般不是 GRJ。右逆性质本身不保证 variational reciprocal pairing，也不固定 spectral observable。第 8.4 节关于旧 response files 的区分正是这一原则在当前计算中的具体应用。

### 14.6 本轮进一步发现：响应图在三阶可有新共振障碍

为了检验第 8 节是否隐藏全阶定理，继续求
a₊=−κD+κ³A+⋯ 的 stationary graph。取一个最小 paired toy：

$$
H_\phi=\omega b^*b,\qquad
m=4\omega,\qquad
D=b^2+\beta b^*b,\quad \beta\ne0.
\tag{14.7}
$$

该 D 的二次分量没有 cubic resonance。然而三阶 graph 的 homological source 含

$$
16\omega\beta\,b^4,
\qquad
(m+\mathscr L)b^4=0,\qquad \mathscr L=i\{H_\phi,\cdot\}.
\tag{14.8}
$$

因此保持这条 leading graph 不变时，不存在所要求的 bounded stationary 三阶修正。

独立 Lie normal form 给同一个障碍：

$$
H^{(3)}_{\rm res}\supset
-16\omega\beta\,\kappa^3 a_+^*b^4+\mathrm{c.c.}
\tag{14.9}
$$

取 ω=β=1，完整 E₀=4 简并块中的三阶 OFPT，两重中间态求和及 cubic/quartic placements 都包括后，得到

$$
\langle0,1,0|H_{\rm eff}^{(3)}/\kappa^3|4,0,0\rangle
=-16\sqrt{24}.
$$

它与 (14.9) 相同。加正的 35κ²(b*b)² 可使这个 toy 的 classical Hamiltonian 下有界，又不改变 b⁴ 共振系数。

这个反例**没有否定 tree transfer，也不是 AdS₃ 反例**。它否定的是从当前 paired lemma 自动推出“同一 leading graph 可无条件全阶延伸”。可以扩大 retained resonant block；也可以研究其他 leading homogeneous choices。真正 AdS 的下一步应计算

$$
\mathcal R\left[
V_5+[S,V_4]+\frac13[S,[S,V_3]]
\right]_{g\phi^4}
\tag{14.10}
$$

及同时转移的 charge identity。下一阶还有 [K₄,ℓ₀] 等项，不能机械重复四次 Ward 的一句话。

## 15. 复杂性到底剩在哪里

本轮没有证明任何算法复杂度的不可约下界。能够明确证明的是：若只给自由表示、Δ 和 Brown–Henneaux central charge，谱尚未唯一确定。

例如给理论另加 covariant local interaction
−Gλφ⁴/4!，保持同样自由谱和对称性，normal ordering 后其 ground two-particle shift 为

$$
\delta\gamma_{00}
=\frac{G\lambda}{8\pi(2\Delta-1)}.
\tag{15.1}
$$

它来自归一化 ground mode 的直接 ∫rdrdθ |u₀₀|⁴，已独立符号积分核验。原问题 λ=0；此处只作区分物理输入的反例。由此不能期待仅从 kinematics 无条件读出所有低自旋能移。

| 原先显得繁重的部分 | 数学重组之后 | 还保留的实质 |
|---|---|---|
| 大量 tree intermediate states | 精确 cubic 加 paired graph/SW，一次代数消去 | 顶点必须来自同一 boundary chart |
| response 的 scalar kinetic ambiguity | 显式计算 Ω pullback，成对抵消 | 单 helicity 或一般 mediator 不能照抄 |
| 全指标高自旋递推 | Racah/Legendre 的一次多项式 calculus | 初始行、source、Regge/边界支 |
| 所有 radial Green functions | 圆对称 sector 的单一 UΔ 加有限幂；全 Einstein Casimir pairing | 原始约束与 nonpolynomial cancellation 的证明 |
| 多体表示重数矩阵 | Jastrow eigenspace 直接给出；三粒子全部最大手征谱压成显式 2×2 | N≥4 非饱和谱、非最大手征谱仍含实质的 recoupling 问题 |
| 一体 trace 与 counterterms | 独立归入 loop/ordering 问题 | 固定 scheme、joint limits、背景与质量条件 |
| 任意阶 field elimination | formal tree transfer 可统一 | 新的 resonant source、measure、quantum fluctuation、连续极限 |

所以最合适的研究对象不再是“一张非常大的 OFPT 求和表”，而是边界完成的 resonant scalar operator 及其表示。复杂性的一部分来自物理量定义和量子处方；另一部分在旧组织中被重复计算，可以移除。

## 16. 本次实际验证与附件

所有原始代码、输出 JSON 与复现说明一并提供。没有将历史证书的检查数量计入本次执行。

| 验证 | 独立输入与范围 | 结果 |
|---|---|---|
| 原始 scalar modes、约束与 circular integral | Δ=3/2,2,7/3；总 chiral level ≤5 | 36 个 primary 精确匹配；48 个 off-diagonal 重构差为零 |
| 非零 boundary exchange 的角向 block | Δ=2，E₀=6，J=0 | 逐个验证 16 个 polarized response；完整矩阵与谱吻合 |
| 原 UΔ 及 UΔ² 的直接积分 | 三组 labels，含 Δ=5/4、3/2、7/3；45 位工作精度 | 与有限有理算法一致；最大所见差约 2.11×10⁻⁴⁴ |
| 另一份独立 Fraction K₄ 算法 | 五个质量、total level ≤8 | 45 个高自旋 primary residual 精确为零 |
| paired graph 的精确符号检查 | 两种不同 scalar toy | Ω pullback、H pullback、所需阶 invariance 全部成立 |
| 完整简并 OFPT 对照 | 七块、44 个 matrix elements；含 38 个零分母通道 | 最大差约 1.71×10⁻¹³，所有共振 vertices 为零 |
| root 的另一份 finite Fock OFPT | 21 个输入，含精确共振 | 直接分母求和与 SW、connected pair coefficient 一致 |
| Racah 全指标证书 | 任意 r 的比值恒等式；任意 test function 的双对易关系 | 符号残差全部为零，辅以多个 degree 检查 |
| 新 Jastrow 族 | N=3,Δ=2,J=12；两种 pair projector + 19 维 Fock matrix | exact zero、范数 15158/49、rank 18；E=18−48G+O(G²) |
| 三粒子 Racah 闭式 | 五个质量、J=2,…,18；直接 primary 波函数及 norm | 85 cases、765 个 exact residual 为零；另有六个全指标符号证书 |
| 独立三粒子全 primary 矩阵 | Δ=2，J=0,…,8 及 12；直接 differential Casimir 构造 | 所有 overlaps、Bose Gram、非零特征多项式均匹配 2×2 压缩 |
| root 的完整 Fock→primary 检查 | Δ=2，J=12；19 维 Fock 块中直接解 lowering kernel | primary 维数 3；χ=λ(54145λ²−294308λ+96672)/54145，与 Racah 公式精确相同 |
| 三阶图像障碍 | m=4ω paired toy；符号图像、Lie transform、三阶 OFPT | 共振系数一致；Fock 差约 1.42×10⁻¹⁴ |
| 反例控制 | 动态/静态消元、非线性 Weyl、局部 φ⁴、Vandermonde² | 给出报告所列非零差或非零投影 |

角向 block 的两个动力学部分具体为

$$
H^{\rm con}_{4}/G=
\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},
\quad
H^{\rm boundary}_{4}/G=
\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
$$

两者相加的 eigenvalues 为 −56/5、−1368/35。这一检查特别排除了“只算圆对称 sector，因而没有实际验证 boundary contribution”的问题。

精确代数验证与高精度数值验证分开记录。45 位 quadrature 的所见残差不是区间算术认证的误差界；有限矩阵检查也不替代任意标签证明。

## 17. 未完成的问题与现在更明确的下一步

### 17.1 值得优先推进的两个问题

**AdS 三阶 resonant obstruction 是否由更高 Ward identity 完全消去？** 第 14.6 节将一个泛泛的“是否全阶等价”问题变成了明确待算的 gφ⁴ resonant coefficient。若它消失，需给出同阶 symplectic graph 与 transported charges；若不消失，则 scalar branch 的状态识别必须改变。tree transfer 本身仍然成立，改变的是 local graph 的简单程度。

**Jastrow 可解空间在 O(G²) 如何分裂？** 原九月 perturbiner 已算过 ground 六标量信息，但不能据此读出本节高角动量族的 G² matrix。这里的投影空间、basis 与 exact norms 已知，可以直接投影 genuine 六外腿 tree 和迭代四体作用，区分真正的三体 interaction、二体迭代与 loops。这比重新对全 Fock space 做微扰更具体。

### 17.2 仍开放但已经严格分界的事项

- Direct K₄ finite sums 的独立全指标闭式求和，仍可作为 Racah/CG 的纯恒等式问题研究；当前 operator bridge 不冒充该额外证明。
- 对每个旧 secular response representative，逐项构造 endpoint、scalar observable 与 bounded representative 的映射；本轮只证明了所需的 bounded 类。
- 从形式 fixed-external matrix elements 提升为连续 Hilbert-space operator statement，需要 domain、可实现性与收敛估计；没有证明全局 unitary dressing。
- 一体 counterterms 的任意阶 nonlinear metric completion、scheme changes 的全量子比较，以及完整 quantum Virasoro Ward algebra，仍超出当前证明。
- Racah calculus 对一般 exchanged representation 的谱分解和正交测度，需要另建 functional setting；不能把 terminating polynomial identities 直接当作完备谱定理。
- N≥4 最大手征扇区的非饱和谱、两支都有 excitations 的多体谱，尚未变成可直接读出的公式。三粒子最大手征谱已由第 10.6 节完整求出，但这不足以证明全理论 integrability。

本轮因此给出了三种不同性质的推进：同一 tree operator 的辛构造、原 Casimir 方法的统一代数，以及无需增长矩阵对角化的有限自旋多体谱族和完整三粒子最大手征谱。同时也用明确三阶反例划定了当前最简单图像方法的边界。

## 18. 来源与文献分工

### 原始研究来源

- **[S1]** [Unreduced OFPT calculation，固定版本](https://github.com/GaoZ1en/obsidian_note/blob/ff06682448838bcbb02b135bd61bc661b394cbba/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Unreduced%20OFPT%20calculation.md)。主要使用 §§16–18、39、70–77；历史未闭合段落作为依赖审查，不替代最终证明。
- **[S2]** [Direct K4 two-particle energy shifts，固定版本](https://github.com/GaoZ1en/obsidian_note/blob/ff06682448838bcbb02b135bd61bc661b394cbba/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Direct%20K4%20two-particle%20energy%20shifts.md)。全标签有限有理算法与 free CG reconstruction。
- **[S3]** [整个 spectrum 目录，固定版本](https://github.com/GaoZ1en/obsidian_note/tree/ff06682448838bcbb02b135bd61bc661b394cbba/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum)。包括 response prescription、de Donder accessibility、vacuum-orbit solutions/spectra、Untitled、两粒子谱等。
- **[S4]** 本次 source manifest 记录的历史与 Space 材料：9 月 18 日 OFPT two particle energy shifts、OFPT direct all-index spectrum 及恢复脚本；CLASSICAL_REDUCTION_AND_OFPT；OFPT and symmetry for the scalar spectrum；global_ads3_einstein_scalar_perturbiner；10 月 8/9 日独立审计。九月 stress shortcut、全阶 Gaussian/Feshbach 原理和旧 ground 六标量结果均有在先来源，不列为本轮发现。

### 数学与物理文献

- **[R1]** D. Harlow, J.-q. Wu, [Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616)。边界 action、canonical potential 与 boundary Hamiltonian 的共同变分接口。
- **[R2]** A. S. Arvanitakis, O. Hohm, C. Hull, V. Lekeu, [Homotopy Transfer and Effective Field Theory I: Tree-level](https://arxiv.org/html/2007.07942v2)。tree-level elimination 的 homotopy formulation；§6 明确保留 on-shell cohomology 的要求。
- **[R3]** S. Caron-Huot, [Analyticity in Spin in Conformal Theories](https://arxiv.org/html/1703.00278v2)。Lorentzian inversion 的 analyticity 与 Regge 条件；用于判断 stress shortcut 的适用边界。
- **[R4]** P. Kraus, A. Sivaramakrishnan, R. Snively, [Late time Wilson lines](https://arxiv.org/html/1810.01439v3)。§4.2 有应力交换的 Casimir binding 先例；不能据其大自旋表达式忽略本模型的低 spin completion。
- **[R5]** S. Collier, Y. Gobeil, H. Maxfield, E. Perlmutter, [Quantum Regge trajectories and the Virasoro analytic bootstrap](https://arxiv.org/abs/1811.05710)。Virasoro fusion 的结构；§5.1 footnote 25 特别区分 vacuum block 与完整 bulk gravitational dressing。
- **[R6]** NIST, [DLMF §18.26，Wilson/Racah class](https://dlmf.nist.gov/18.26)。本文 ₄F₃ 的标准函数族定位；本文没有援引不满足的有限正交假设。
- **[R7]** C. Sleight, M. Taronna, [Anomalous Dimensions from Crossing Kernels](https://arxiv.org/abs/1807.05941)。crossing kernels 与 Wilson polynomial calculus 的已有系统背景。
- **[R8]** R. Seiringer, J. Yngvason, [Emergence of Haldane pseudo-potentials in systems with short-range interactions](https://arxiv.org/html/2001.07144v2)。pair projectors、Jastrow vanishing ideals 和共同零空间的严格先例；不是本文 Einstein 模型的动力学证明。
- **[R9]** K. Hasebe, [Hyperbolic Supersymmetric Quantum Hall Effect](https://arxiv.org/abs/0809.4885)。其 SU(1,1) pseudopotential 是概念先例，finite nonunitary representation 不能代替本报告 D⁺ 的正内积证明。
- **[R10]** H. Maxfield, [Quantum corrections to the BTZ black hole extremality bound from the conformal bootstrap](https://arxiv.org/abs/1906.04416)。§3 的 multi-twist 大自旋合成已预示本文 N(N−1) binding 系数，Appendix B 给自由 primary 计数；本轮新增的是 minimal Einstein operator 下有限 spin 的显式饱和 eigenspace。
- **[R11]** S. Bravyi, D. P. DiVincenzo, D. Loss, [Schrieffer–Wolff transformation for quantum many-body systems](https://arxiv.org/abs/1105.0675)。能量无关有效 Hamiltonian 与谱簇映射。
- **[R12]** G. Dusson, I. M. Sigal, B. Stamm, [The Feshbach–Schur map and perturbation theory](https://arxiv.org/abs/2105.02058)。resolvent/isospectral 接口。
- **[R13]** J. C. Criado, M. Pérez-Victoria, [Field redefinitions in effective theories at higher orders](https://arxiv.org/abs/1811.09413)。高阶场重定义时同时匹配 observables 与量子输入的背景；(14.3) 是本轮直接推导的反例。
- **[R14]** O. Evnin, W. Piensuk, [Quantum resonant systems, integrable and chaotic](https://arxiv.org/abs/1808.09173)。量子 resonant many-body Hamiltonians 的有限块结构。
- **[R15]** B. Craps, O. Evnin, V. Luyten, [Maximally rotating waves in AdS and on spheres](https://arxiv.org/abs/1707.08501)。最大旋转 sector 的先例，但其 cubic wave interaction 不是本 minimal Einstein response。
- **[R16]** O. Evnin, [Spectroscopy instead of scattering: particle experimentation in AdS spacetime](https://arxiv.org/abs/1812.07132)。AdS 有限谱与 resonant quantum system 的联系。
- **[R17]** B. Craps, M. De Clerck, O. Evnin, [Time-periodicities in holographic CFTs](https://arxiv.org/abs/2103.12798)。probe φ⁴ 的量子谱/最大旋转结构；文中将 AdS₃ 引力列为值得继续计算的方向，不能当作已完成本文 Einstein kernel。
- **[R18]** S. Harris, A. Kaviraj, J. A. Mann, L. Quintavalle, V. Schomerus, [Comb Channel Lightcone Bootstrap II: Triple-Twist Anomalous Dimensions](https://arxiv.org/abs/2401.10986)。§5.2、式 (5.20) 已有三粒子 Bose/Racah 投影；§7.2.3 讨论另一标量理论的重合点消失与低通道补空间。本文不把该表示论基础或 Gram 公式视为新发现。

以上检索用于定位先例与限定新颖性，不构成“所有相关文献已经穷尽”的声明。每项新数学结论的依据是本文展示的推导与附件中的独立验证。
