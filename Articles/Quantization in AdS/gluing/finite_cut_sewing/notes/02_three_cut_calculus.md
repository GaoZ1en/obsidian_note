# 三类接口的具体计算、数据域与混合交换律

本篇补足主 note 定理 F 的 PDE 部分。只使用线性波方程、积分分部、常微分递推、Green functions 和正的区间空间算子。不是一般高维 characteristic IBVP 的替代定理。公式编号在本篇内独立。

## 1. 一条同时适用于三类面的 Green identity

取 $L=\partial_t^2-\partial_x^2+m^2$，令 $a^{\mu\nu}=\operatorname{diag}(1,-1)$。对于两个光滑函数，

$$ b^\mu(v,u)=v a^{\mu\nu}\partial_\nu u-u a^{\mu\nu}\partial_\nu v,
\qquad \partial_\mu b^\mu=vLu-uLv. \tag{2.1}$$

在有限分片区域上积分。面上的 $N_\mu d\lambda$ 表示实际 outward conormal **density**，不是单位法向量；它通过 Stokes 定理确定。这样 null face 不需要除以一个零范数。

对一个已独立构造的区域 Green function，形式上的表示为

$$u(x)=\int_R G_R^R(x,y)f(y)\,d^2y+
\int_{\partial R}\left[u(y)N_\mu a^{\mu\nu}\partial_{y^\nu}G_R^R(x,y)
-G_R^R(x,y)N_\mu a^{\mu\nu}\partial_\nu u(y)\right]d\lambda.
\tag{2.2}$$

先用光滑 sources、内点 $x$ 和正确的一侧边界解解释这条式子，或整体按弱 Green identity 解释。它不是允许对任意 inverse kernel 作任意分布 pullback 的许可证。Retarded/advanced inverse 在对角线上的波前集与 causal bisolution 不同。

(2.2) 说明三类接口可以共享一条积分恒等式，却不说明独立边界数据相同：timelike 面使用可释放的 closing realization；spacelike 面上需要两份 Cauchy 数据；null 面的 conormal derivative 已退化为沿面的 derivative。

## 2. 为什么 cap-graph 区域有独立的 causal problem

### 2.1 几何检验

令 $I=[a,b]$，

$$R=\{(t,x):x\in(a,b),\;\tau_-(x)<t<\tau_+(x)\},\quad
|\tau_\pm'|\le1, \tag{2.3}$$

其中 cap graphs 连续、有限分段 affine。实际存在的两条竖直侧面使用固定 D/N/非负 Robin，caps 不作为反射墙。

沿未来 causal curve，$dt\ge|dx|$。因此 $t-\tau_-(x)$ 和 $t-\tau_+(x)$ 均不减。若起终点在 $R$，曲线不可能穿出任一 cap 后再进入；反射光线是同样的分段 causal curve。$R$ 因而在其 parent strip 中 causally convex。

这里允许 past/future cap 在 $x=a$ 或 $b$ 相遇形成 diamond tip。在这种情况下，该 parent side 仅是辅助延拓，不是 $R$ 的真实 physical boundary。对区域内部两点产生实际影响的反射路径必须完全位于 $R$；所以不存在的 side 上的辅助 $B$ 不影响区域 causal propagator。

### 2.2 无源初值、紧支撑探针与一般数据分开

Parent strip 的闭正 form 为

$$a_B(u,v)=\int_a^b(u'v'+m^2uv)\,dx+
\sum_{e\in\mathrm{Robin}}\sigma_eu(e)v(e),\qquad
u|_{e\in D}=0. \tag{2.4}$$

它给 $K_B\ge m^2>0$，以及

$$G^R_{\bar R}(t,t')=\theta(t-t')\frac{\sin(\sqrt{K_B}(t-t'))}{\sqrt{K_B}}. \tag{2.5}$$

内部紧支撑 smooth source 的零延拓是 smooth，因此 $G_R^Rf=(G_{\bar R}^R\tilde f)|_R$ 直接构造区域响应。实际 timelike 边界的紧支撑 source 同样可延拓到 parent side，结果在 $R$ 内与 cap 外的延拓无关。这些是 Peierls 核比较最直接需要的探针。

**一般 incoming data 并不等于任意独立 face 函数。** 输入必须满足第 3 节的 PDE、wall 和 junction 相容性。尤其一个带非零初始角点 source 的问题，不能总把它拆成“两份分别光滑的零初值 bulk response 与 boundary response”。单项可能只有弱意义，正确的光滑性属于相容的总和。Quartet 的独立 smooth blocks 首先在紧支撑兼容探针上定义；一般数据用完整 sourced relation 或相容 lift 处理。

这个限定不降低所选 polynomial algebra 的核重建：先在上述 smooth probes 上证明 kernel equality，再以其分布连续性作用于已允许的 coefficient kernels。它避免为一个不相容的辅助分解声称不存在的 smooth IBVP theorem。

### 2.3 一般 smooth 相容数据的 lift 构造

这里将“相容数据”明确为：沿 finite cap/wall pieces 给定的 Taylor 数据满足 PDE 递推、wall realization，以及交点处单一 smooth jet 的匹配；而且这些 jets 满足 smooth extension 的通常余项界。后一条件的物理含义是：它们确实是**一份 smooth off-shell field**在这些面的 jets，而不只是每条面各自光滑。

这个定义不预设任何 on-shell global solution。实现步骤是：

1. 由非特征 PDE 递推或 null ODE 递推补全 incoming cap 的 jets；wall 上同时补上 $Bv=b$ 所需的 jets。
2. 选一个 smooth off-shell lift $v$，实现上述兼容 jets。有限个横截面交角可在角点坐标内作 Taylor-extension，再以 smooth partition 组合。只需要存在一个 lift；不声称任意无限 jet 序列都有连续线性 Borel section。
3. 因这些 jets 满足 $Lv=f$ 的形式递推，$r=f-Lv$ 在 incoming cap 上平坦，即所有导数为零。将 $r$ 向其过去零延拓，再在无影响的未来区域光滑延拓。差场的真实 timelike condition 是 homogeneous。
4. 解 $w=G_{\bar R,B}^R r$，令 $u=v+w$。因果性使 $w$ 在 incoming cap 上所有 jets 为零。于是 $u$ 具有指定数据、满足 $Lu=f$ 和实际 $B$。

用任何两个 lift 得到的差满足 homogeneous equation、零完整 incoming data、homogeneous side $B$。对截断未来区域应用局部能量恒等式，零 incoming characteristic trace 给零正能量流，Robin surface term 已计入，故差为零。

这是存在性与唯一性的构造，不是整个旧 $\mathcal H_\beta$ 的 Fréchet topology theorem。对需要求导的有限参数数据族，可以要求 smooth off-shell lift 随参数 smooth，并直接由线性 Green map 得 smooth dependence。本稿没有证明任意抽象 history-family 的统一无穷阶拓扑估计。

## 3. Junction 的实际数据，不是额外“角点动量”

### 3.1 Spacelike 初值

在水平 cap 上给 $q(x)=\phi(t_0,x)$、$p(x)=\partial_t\phi(t_0,x)$。方程给

$$\partial_t^2\phi(t_0,x)=q''(x)-m^2q(x)+f(t_0,x), \tag{3.1}$$

继而对时间微分逐阶递推。若与静态 D wall 相交，要求 $\partial_t^n\phi(t_0,e)=0$；N/Robin 则对 $B\phi=0$ 微分，加入源时右侧为 $\partial_t^nb$。这些条件相互约束 $q,p,f$，不是可以分别忽略的“端点项”。

### 3.2 Null 段

取 $u=t-x,v=t+x$。在 $u=c$ 令 $a_r(v)=\partial_u^r\phi(c,v)$，则

$$\frac{d a_{r+1}}{dv}=\frac14\partial_u^rf(c,v)-\frac{m^2}{4}a_r(v). \tag{3.2}$$

数据 $a_0=q$ 加每级所需的一份 incoming seed，恢复更高 transverse jets。Seeds 可由另一张 null sheet、spacelike cap，或 reflecting wall 的完整 corner data 给出；不是一份可以任意加入的额外 quantum field。

一个 wall-to-wall null sheet 也不能凭“只有一张”就判为不完整。例：massless Dirichlet strip，在左端 $\phi_t=\phi_u+\phi_v=0$，故 $a_1(v_L)=-q'(v_L)$；(3.2) 给 $a_1$ 为常数。到右壁又有 $a_1(v_R)=-q'(v_R)$，从而 $q'(v_L)=q'(v_R)$。高阶条件类似。完整性取决于这套传播和端点条件，而不是简单数面数。

### 3.3 双 null corner

在 $(u_0,v_0)$，设 $c=\phi(u_0,v_0)$。两张 incoming traces 的同一点值只能计一次。其纯 $u$、纯 $v$ 导数各由一张 sheet 给出，mixed jets 满足

$$a_{r+1,s+1}=\frac14 f_{rs}-\frac{m^2}{4}a_{rs}. \tag{3.3}$$

于是不同路径恢复同一个 mixed Taylor coefficient。无源自由场最简单的二阶例子为 $\phi_{uv}=-m^2c/4$。一般 finite junction 对每一条短 null 段使用同一递推，并检查在同一 filled point 的最终 jets 一致。

### 3.4 非零质量的 kink 反例

定义 $\mu=m/2$，

$$A(u,v)=\sum_{n=0}^{\infty}\frac{(-\mu^2)^n u^{n+1}v^n}{n!(n+1)!}. \tag{3.4}$$

该级数及任意有限导数在 compact set 上收敛。相邻项直接相消给 $(\partial_u\partial_v+\mu^2)A=0$。又有 $A(0,v)=0$、$A_u(0,v)=1$、$A_v(0,v)=0$。因此

$$\phi_-=0,\qquad \phi_+=A,
\qquad L\bigl(\theta(u)A\bigr)=0 \tag{3.5}$$

在分布意义成立。Field trace 和退化的 null flux 都匹配，但 $[\phi_u]=1$。这准确否定“null field/flux matching 已证明 smooth assembly”。

修复并非加入一个独立 $\Pi$：规定正确的 incoming transverse seed，再用

$$\partial_v[a_{r+1}]=-(m^2/4)[a_r] \tag{3.6}$$

传播零 jump。所有初始 seeds 为零才给全部 transverse jumps 为零。

## 4. 三种独立的 continuous response 计算

### 4.1 Timelike mixed D/N/R

在长度 $\ell$ 的区间，令 $\kappa=\sqrt{s^2+m^2}$，$\operatorname{Re}s>0$ 并取 $\operatorname{Re}\kappa>0$。左端基础解取

$$ f_L(x)=\begin{cases}\sinh(\kappa x)/\kappa,&D,\\
\cosh(\kappa x)+(\sigma_L/\kappa)\sinh(\kappa x),&N/R,
\end{cases} \tag{4.1}$$

右端取 $f_R(x)$ 为 $x\mapsto\ell-x$、$\sigma_L\mapsto\sigma_R$ 的对应式。$N$ 就是 $\sigma=0$。独立 closed resolvent 为

$$g_B(x,y;s)=\frac{f_L(x_<)f_R(x_>)}{\mathcal W},
\qquad \mathcal W=f'_Lf_R-f_Lf'_R. \tag{4.2}$$

左 endpoint source 的 homogeneous bulk solution 是 $c f_R$；对 D 有 $c=b/f_R(0)$，对 N/R 有

$$c=\frac{b}{f_R'(0)-\sigma_L f_R(0)}. \tag{4.3}$$

右端类似，Robin denominator 为 $-f_L'(\ell)-\sigma_Rf_L(\ell)$。这给各自自然的 $H_B$；取 $q,\Pi$ 就给完整 response。

对两片分别写 $z_i=z_i^0+U_ib_i$，解 $q_1=q_2$、$\Pi_1+\Pi_2=0$，再代回 bulk。每一片的 selected $B$ 可以不同。程序对 D/D、D/N、D/R、N/D、N/N、N/R、R/D、R/N、R/R 分别执行，不把它们先改写成相同的 reflecting theory。

标量、两外端 D 时可化简为

$$g_{ij}^{\#}=\delta_{ij}g_{iD}+
\frac{h_i(x)h_j(y)}{d_1+d_2},\qquad
h_i=\frac{\sinh(\kappa x_i)}{\sinh(\kappa\ell_i)},\quad
 d_i=\kappa\coth(\kappa\ell_i), \tag{4.4}$$

其中 $x_i$ 从各外壁朝 seam 计距。若错误地保留 selected Robin potential，分母会多出 $\sigma_1+\sigma_2$；那是另一种真实 defect theory。

### 4.2 Spacelike：两份初值不可省略

每个谱值 $\omega^2$ 上，

$$U_\omega(t)=\begin{pmatrix}\cos\omega t&\sin\omega t/\omega\\
-\omega\sin\omega t&\cos\omega t\end{pmatrix},
\quad U_\omega(t+s)=U_\omega(t)U_\omega(s). \tag{4.5}$$

通过完整 $K_B$ 的 spectral calculus 得到连续场的演化，而不是截断有限 modes。Cross-cap retarded response由过去侧的 $(u,\dot u)$ 共同决定；删除第二项会给出可直接检查的错误结果。

当 cap 只是一个局部 patch，用相同局部 Cauchy uniqueness，再与其余完整 incoming data 相接。不是将一个有限 patch 当成全局 Cauchy surface。

### 4.3 Null：Riemann function 与 corner subtraction

令 $\mathcal R(U,V)=J_0(m\sqrt{UV})$。给 $\phi(0,v)=f(v)$、$\phi(u,0)=g(u)$、共同 $c$，则

$$\begin{aligned}
\phi(U,V)={}&c\mathcal R(U,V)+\int_0^U\mathcal R(U-s,V)g'(s)ds
+\int_0^V\mathcal R(U,V-s)f'(s)ds\\
&+\frac14\int_0^U da\int_0^Vdb\,\mathcal R(U-a,V-b)F(a,b).
\end{aligned}\tag{4.6}$$

等价的 Volterra equation 为

$$\phi=f+g-c-\frac{m^2}{4}\int\!\int\phi+\frac14\int\!\int F. \tag{4.7}$$

第 $n$ 次积分的范数至多为 $(UV)^n/(n!)^2$，故收敛。漏掉 $-c$ 在 $m=0$ 已经会将共同 corner 数两次；有质量时它污染后续全部传播。

## 5. Timelike feedback 后再 null filling 的独立 benchmark

在全直线上将一条 timelike wall 先关闭为两个 half-lines。距 wall 为 $a$ 的 Dirichlet Poisson response 的 Laplace transform 是 $e^{-a\sqrt{s^2+m^2}}$。时间域为

$$H_a(t)=\delta(t-a)-\theta(t-a)\frac{amJ_1(m\sqrt{t^2-a^2})}{\sqrt{t^2-a^2}}. \tag{5.1}$$

第二项在 $t=a$ 有有限极限 $am^2/2$。D/D interface feedback kernel 给

$$q_a(t)=\frac12\,(H_a*J_0(m\,\cdot))(t)
=\frac12\theta(t-a)J_0(m\sqrt{t^2-a^2}). \tag{5.2}$$

再经距 wall 为 $b$ 的另一半线，

$$H_b*q_a=\frac12\theta(t-a-b)J_0(m\sqrt{t^2-(a+b)^2}). \tag{5.3}$$

代码先按左边的因果卷积计算，独立与右边完整 Minkowski kernel 比较；delta wavefront 的项没有被数值积分遗漏。

取一个后续 null cut $u=c$。在其上用刚才的 timelike reconstruction 产生整条 trace，再将它和第二张完整 incoming sheet 输入 (4.6)。结果与直接传播到最终 $(U,V)$ 的 Riemann kernel 比较。该测试是实际连续核的 T→N 组合；不是将同一个最终公式打印两遍。

相反的 N→T 路径在解析定理中由完整源比较覆盖。代码没有另写一个任意 polygon 的 N→T boundary solver，因此不将本数值例子标作已枚举所有混合程序。T/C 与 C/N 的解析 interchange 同样使用下节的定理；另有独立 Cauchy plane-wave／Goursat 数值对照。

## 6. 完整 sourced relation 给真正的 mixed interchange

为每个 region 写

$$\mathcal S_R(f,b,d_{\rm in})=u, \tag{6.1}$$

其中 $d_{\rm in}$ 是正确类型的全部 compatible cap data。接口响应取此解的 actual traces。此记号是普通解算子，不引入新的抽象对象。

先对两片执行一种 typed matching。分布公式消去人工 surface sources；null recursion 与 corner seeds 消去 transverse jumps。所得光滑场满足输出区域的同一个局域 equation、剩余 $B$ 和 incoming data。反向限制任何输出解，得到两份独立 sourced problems 的允许数据。因此 solution comparison 是双向的。

现在将中间对象真正关闭，只保留其 action、geometry、remaining $B$ 和 field labels。下一步所需 sources 在这时重新加入。对任意兼容 $(f,b,d_{\rm in})$，先前的分片表示与新的完整区域求解满足同一问题，故由唯一性相同。这一比较包括 derivative responses，不仅是 $G$。

归纳有限步后，两个不同程序只要终点数据相同、每步 admissible，就重建同一个 sourced problem。因此 T/C 的四区块交换律、T/N、C/N 的交换，以及合法细分后的再组合同时成立。没有要求 timelike、spacelike、null 使用相同的一套 independent boundary variables。

旧版 finite-successive-sewing 用来识别已匹配的最终 domain 和辅助消元的一致性；**新增加的是数据域、null regularity 和 closed intermediate 的完整重新取源**。只引用旧 Schur 消元引理不能替代本节。

## 7. 有限 arrangement 与 allowed programs

从矩形母区域出发，用有限条水平、竖直和两种 null 斜线切分，产生有限 convex cells。每个 cell 的上下边界是连续的 1-Lipschitz cap graphs。对一般非凸 cap-graph mother，还可先沿有限折点作竖直细分；不能声称任意非凸母区域被任意线一切，所有产生块立即凸。

不是每个 cells 子集的 union 都是允许中间区域。出现洞、多个互不连通的时间截面，或新的不可兼容 physical side realization 时，须再细分、换程序或退出本定理范围。代码的 Shapely 测试只检查具体 line arrangements 的有限性、面积、无重叠和最终 refinement 的次序一致；它不替代所有 union 的 PDE admissibility。

在 ordinary filled junction，field transitions 绕可缩小回路的复合必须为 identity。若产生非平凡 monodromy，则需真的保留 puncture/defect，或限制到不动子空间；两者都不是原先普通光滑 multiplet theory。在 genuinely noncontractible circle 上保留指定 twist 则完全合法。

## 来源

静态 parent 的已验证 D/N/R 输入来自附带 `sources/standalone_binary_observable_sewing.md`。双 null 与质量核对照了仓库 *1+1 massive scalar null gluing*（blob `4b2df270a82553dc1bb062662fc927e34fd2c3cc`），但本稿不继承其 CPS observable definition。

一般静态边界 Green 问题参见 Dappiaggi–Drago–Ferreira, arXiv:1804.03434；一般 Cauchy/Goursat 的精确假设参见 Bär–Tagne Wafo, arXiv:1408.4995。本文有限平直构造的证明使用上面明写的几何与区间输入，不将这些文献概括成任意混合边界的无条件定理。
