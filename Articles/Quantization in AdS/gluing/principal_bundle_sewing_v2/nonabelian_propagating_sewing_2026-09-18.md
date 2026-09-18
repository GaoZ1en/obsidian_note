# 传播 SU(2)：首个非线性阶的未约化代数粘合

本文完成一个有限阶验收：四维平直 Yang–Mills、有限时间窗、有限条平行 timelike cuts，计算首个非线性阶的源装配、Hamiltonian probes、跨缝有序输运、电通量括号和声明代数的 kernel/image。量子结果止于半经典乘法模 $\hbar^2$；不称为完整 interacting quantum YM 定理。

**完整场、实际 gauge maps、stabilizers 和预辛退化方向始终保留。** 下文 Coulomb frame 是一套派生计算坐标：恢复原场所需的 $u$ 一直保存，不将它设为物理恒等，也不形成解空间的 gauge quotient。一般未约化解集合仍可奇异；本例的 formal chart 不认证其他拓扑或背景的光滑性。

辅助切分、临时 closure 和 collar choices 的比较在[第二篇](auxiliary_choice_independence_2026-09-18.md)。实际检查见[验证记录](checks/nonabelian_sewing_verification_2026-09-18.md)。

## 1. 独立目标、阶数与空间域

取 $M=[-T,T]\times\mathbb R^3$、$\eta=(-,+,+,+)$、平凡 SU(2) 丛、固定无穷远 frame，无 matter/defect。有限个平面 $x=c_i$ 将它分成半空间与 slabs；保留全部 $y,z$ 依赖。没有把四维理论截成有限 Fourier modes 或 YM2。此无真实外墙的模型把外墙效应与人工切分分开；有 reflecting 外墙的原 §9.2 不是本篇自动证明的扩大。

用 $T_a=-i\sigma_a/2$、$\langle X,Y\rangle=-2\operatorname{tr}(XY)$，则 $[T_a,T_b]=\epsilon_{abc}T_c$。引入独立的 formal 参数 $\kappa$：

$$F_{\kappa,\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu+\kappa[A_\mu,A_\nu],\qquad
S_\kappa=-\frac1{4e^2}\int\langle F_{\kappa,\mu\nu},F_\kappa^{\mu\nu}\rangle.$$

$e>0$ 的原归一化保留。$\kappa=1$ 是原非阿贝尔方程；展开的意义是 $S[\kappa A]/\kappa^2$ 的 coefficient bookkeeping，不宣称截断在 $\kappa=1$ 收敛。**以下所有有限阶等式均模 $\kappa^2$，transport 本身需多算到 $\kappa^2$，因为使用了 $(U-1)/\kappa$。** 不能按场多项式次数截断后仍声称 Poisson 封闭。

实际变换为

$$A^g=gAg^{-1}-\kappa^{-1}dg\,g^{-1},\qquad E^g=gEg^{-1},\qquad
g=\exp(\kappa\epsilon_0+\kappa^2\epsilon_1+\cdots).$$

本篇是恒等附近的 formal sector；未纳入的大规范分支不被判为零或冗余。其实际分类继续服从原 global proper policy。这里的 proper maps 在无穷远趋于恒等，参数及其导数至少按 $r^{-1}$ 及相应导数阶衰减。

为使所有积分、Hamiltonian 向量和 Newton 势明确，固定 $0<\delta<1$，采用光滑横向坐标 $B,p$：

$$\partial_iB_i=\partial_ip_i=0,\qquad
\partial^\alpha(B,p)=O((1+r)^{-2-\delta-|\alpha|}).$$

每一 formal coefficient 取此类，允许本文 Hamiltonian flows 所生成的 $r^{-3}$ 尾。实际 electric field 另含 $r^{-2}$ Coulomb 尾，不能将它删掉。Newton inverse 约定

$$\Delta^{-1}\rho(x)=-\frac1{4\pi}\int\frac{\rho(y)}{|x-y|}\,d^3y,\qquad
P_T=1-\nabla\Delta^{-1}\operatorname{div}.$$

所用 sources 是下文衰减场的乘积及导数，或 compact smooth probes；该积分及其分布导数按 Newton 势定义。涉及 $P_T$ 的一阶 nonlinear gradients 在投影前至少为 $r^{-4-\delta}$ 或更快，投影后至多产生 $r^{-3}$ 尾，仍在声明域中。有限时间平直 wave flow 保持这些导数衰减界。本文不另声称最优 Sobolev completion 或一般权重域的 Fredholm 定理。

## 2. 原场全部留下的计算坐标

在一份 raw representative 上求 formal $u[A]$，使

$$B=A^u,\qquad \partial_iB_i=0,\qquad u\to1\quad(r\to\infty).$$

写 $u=\exp(\kappa\chi_0+\kappa^2\chi_1+\cdots)$，则

$$\begin{aligned}
\chi_0&=\Delta^{-1}\partial_iA_i,\\
B_i&=A_i-\partial_i\chi_0+\kappa\bigl([\chi_0,A_i]-\tfrac12[\chi_0,\partial_i\chi_0]-\partial_i\chi_1\bigr),\\
\chi_1&=\Delta^{-1}\partial_i\bigl([\chi_0,A_i]-\tfrac12[\chi_0,\partial_i\chi_0]\bigr).
\end{aligned}$$

原场的系数本身也可含 $\kappa$；这些公式按阶展开使用。衰减 harmonic 标量为零，给这一 formal 求解的唯一性；不推出有限场强时不存在 Gribov copies。

令 $\mathcal E=uEu^{-1}$、$p=P_T\mathcal E$。由完整 Gauss 方程

$$\partial_i\mathcal E_i+\kappa[B_i,\mathcal E_i]=0$$

得到

$$\sigma_1=-\Delta^{-1}[B_i,p_i],\qquad
\mathcal E_i=p_i+\kappa\partial_i\sigma_1.
\tag{N1}$$

反向取任意允许的 $(B,p,u)$，用 (N1) 构造 $\mathcal E$，再令 $A=B^{u^{-1}}$、$E=u^{-1}\mathcal E u$。这给模 $\kappa^2$ 的全部本 chart 原始 Gauss 数据；任意 proper $u$ 及其 action 均保留。不同 $u$ 给不同 raw fields，不把这些点识别。

canonical electric variable 是 $E^i=e^{-2}F_{\kappa,0i}$。在完整 Gauss locus 上，变 frame 的 $\Theta$ 差是 Gauss 项加无穷远面项，后者由 $r^2 E\,\delta u=O(r^{-1})$ 消失。因此

$$\Theta=\int\langle E_i,\delta A_i\rangle
=\int\langle\mathcal E_i,\delta B_i\rangle
=\int\langle p_i,\delta B_i\rangle,
\qquad \Omega=\int\langle\delta p_i\wedge\delta B_i\rangle.
\tag{N2}$$

最后一步用 $\operatorname{div}\delta B=0$ 和 $\sigma_1=O(r^{-1})$。$\delta u$ 仍是完整 tangent data，只是在 (N2) 中是退化方向。没有逆转一份退化二形式，也没有删掉 gauge fiber。

对任一准入 $F(B,p)$，选择

$$X_FB=P_T\frac{\delta F}{\delta p},\qquad
X_Fp=-P_T\frac{\delta F}{\delta B},\qquad X_Fu=0.$$

其原场 lift 由 (N1) 微分给出：

$$X_F\mathcal E_i=X_Fp_i-\kappa\partial_i\Delta^{-1}
\bigl([X_FB_j,p_j]+[B_j,X_Fp_j]\bigr).\tag{N3}$$

故 lift 满足线性化 Gauss，且 $\iota_{X_F}\Omega=-\delta F$。可再加任意允许的 proper tangent；本式只选一份 lift。这里的 $dJ$ 声明仅在这些已构造 formal families 中，不用于奇异背景的任意线性化解。

## 3. 非阿贝尔传播实际进入何处

由于 $p$ 与 $\nabla\sigma_1$ 正交，Hamiltonian 至首阶是

$$\begin{aligned}
H&=H_0+\kappa H_1,\\
H_0&=\frac{e^2}{2}\int p_i^2+\frac1{4e^2}\int f_{ij}^2,\qquad f_{ij}=\partial_iB_j-\partial_jB_i,\\
H_1&=\frac1{2e^2}\int\langle f_{ij},[B_i,B_j]\rangle.
\end{aligned}$$

四次 magnetic 项与 Coulomb energy 从 $\kappa^2$ 开始，本篇不提前将它们宣称为已验收。对任意 first jets，直接变分给

$$\frac{\delta H_1}{\delta B_j}=-e^{-2}C_j(B),\qquad
C_j=\partial_i[B_i,B_j]+[B_i,f_{ij}].\tag{N4}$$

因此 $\dot B=e^2p$、$\dot p=e^{-2}\Delta B+\kappa e^{-2}P_TC(B)$。令 $K=-\Delta$、$S_t=\sin(t\sqrt K)/\sqrt K$，保持初值的明确源解为

$$B^{(1)}(t)=\int_0^t S_{t-s}P_TC(B^{(0)}(s))\,ds,
\qquad p^{(1)}=e^{-2}\partial_tB^{(1)}.\tag{N5}$$

任意独立的一阶初值加相应 free homogeneous solution。$C$ 是光滑衰减场的局域双线性微分式；Newton 投影及有限时间 Kirchhoff/Duhamel 算子给声明域中的光滑结果。原 $A_t$ 由保持所选 Coulomb representative 求出，再按任意实际 gauge history 运输；该计算 frame 不固定原场历史。

**不是逐色自由 Maxwell 的见证。** 取 $e=1$，用颜色三向量表示

$$B_i^a=e^{-r^2}
\begin{pmatrix}0&-z&y\\z&0&-x\\-y&x&0\end{pmatrix}_{ia},\qquad p=0.$$

它是三维 Schwartz 场，$\partial_iB_i=0$，且

$$H_1=-\frac{\pi^{3/2}}{3\sqrt3}\ne0,
\qquad C(B)=3e^{-r^2}B,\qquad\operatorname{div}C=0.$$

所以 (N5) 的 nonlinear acceleration 实际非零。此例是精确见证；一般传播与域的论证是前面的算子构造，不由一个样本代替。

## 4. 电通量与跨缝 transport 的 Hamiltonian 准入

### 4.1 电通量必须带上 frame 的 variation

取固定 $g_i\in C_c^\infty(\mathbb R^3,\mathfrak{su}(2))$，定义体积涂抹的 dressed electric probe

$$\mathsf E_g=\int\langle g_i,\mathcal E_i\rangle,
\qquad\phi_g=\Delta^{-1}\partial_ig_i,\qquad g_T=P_Tg.$$

由 (N1) 及分部积分，

$$\mathsf E_g=\int\langle g_{T,i}+\kappa[\phi_g,B_i],p_i\rangle.\tag{N6}$$

它的 Hamiltonian 向量为

$$X_{\mathsf E_g}B=P_T\bigl(g_T+\kappa[\phi_g,B]\bigr),\qquad
X_{\mathsf E_g}p=\kappa P_T[\phi_g,p].\tag{N7}$$

所有 displayed gradients 满足 §1 衰减域。令 $\mathsf B_f=\int\langle f,B\rangle$、$f$ 横向，则

$$\begin{aligned}
\{\mathsf B_f,\mathsf E_g\}
&=\int\langle f,g_T\rangle+\kappa\int\langle f_i,[\phi_g,B_i]\rangle,\\
\{\mathsf E_g,\mathsf E_h\}
&=\kappa\int\langle p_i,[\phi_g,h_{T,i}]-[\phi_h,g_{T,i}]\rangle.
\end{aligned}\tag{N8}$$

删除 field-dependent frame 的 variation 会漏掉这些项。$g,h$ 都横向时本阶通量括号为零，不能把这一特殊子类冒充全部通量的非阿贝尔验收。这里的 $g$ 是平滑体积涂抹，不是尚未准入的 sharp surface delta。

### 4.2 横向与端点都涂抹的有序输运

设 $\mathbf y=(y,z)$，取 $w(a,b,\mathbf y)\in C_c^\infty$，其支撑在 $a<b$，并离 $a=b$ 有正距离。可把支撑放在某人工切口两侧。定义

$$U_B(b,a;\mathbf y)=\mathcal P\exp\left(-\kappa\int_a^b B_x(s,\mathbf y)ds\right),\qquad
\mathsf W_{M,w}=\int w\,\operatorname{tr}\left(M\frac{U_B-1}{\kappa}\right).\tag{N9}$$

$M$ 为固定颜色测试矩阵，实/虚部及共轭均保留。$U_B=u(b)U_Au(a)^{-1}$，所以它是带实际 Coulomb dressing 的 anchored transport，不是将内部 endpoint 无条件当物理边界。涂抹所有横向坐标与两端点后，其一阶泛函导数是光滑紧支撑函数；sharp 单线没有被偷渡入域。

首阶 normal form 是

$$\frac{U_B-1}{\kappa}=-\int_a^b B_x(s)ds
+\kappa\int_{a<s<t<b}B_x(t)B_x(s)\,ds\,dt.\tag{N10}$$

取 $K_g=P_T(g_T+\kappa[\phi_g,B])$，则实际混合括号为

$$\{\mathsf W_{M,w},\mathsf E_g\}
=-\int w\,\operatorname{tr}\left(M\int_a^b U_B(b,s)K_g^x(s)U_B(s,a)ds\right)
\pmod{\kappa^2}.\tag{N11}$$

这同时包含 path ordering 和 dressing variation。$X_{\mathsf W}B=0$、$X_{\mathsf W}p=-P_T\delta\mathsf W/\delta B$，再由 (N3) lift 到全部 fields。它保持声明的衰减域。多条这样的 probes 的有限积也合法；更高量子收缩中的 coincident lines 不由此获得准入。

## 5. 独立区域源问题与局域重建算法

每片从同一 $S_\kappa$ 和自己平面上的临时 tangential Dirichlet closure 定义。计算可用 Lorenz frame $\partial^\mu A_\mu=0$：零阶为 tangential D / normal N 的四分量 wave；首阶 forcing 是零阶 fields 的局域 quadratic 式，联合初值满足首阶 Gauss 与全部 cap–wall compatibility。source tuple 从各片 action/domain 定义，不能拆成不相容的单独块。

具体地，令 $C=\partial^\mu A_\mu$，使用 $D^\mu F_{\mu\nu}+D_\nu C=0$，则 $[C,A_\nu]+[A_\nu,C]$ 在 off shell 先抵消，给

$$ (\partial_t^2-\Delta)A_\nu^{(1)}
=2[A^{(0)\mu},\partial_\mu A_\nu^{(0)}]-[A^{(0)\mu},\partial_\nu A_\mu^{(0)}]. $$

右侧升指标使用 $(-,+,+,+)$，各片独立用自己的 retarded source operator 和完整初值/壁 histories 求解；这与 (N5) 是不同 frame 中的同一首阶动力学。

这里的 free regional Green functions 可以独立构造：半空间用直接项与反射项的 D/N 差/和；宽度 $\ell$ 的 slab 用平移 $2n\ell$ 的 image series，横向保留连续 Fourier 参数。在有限传播时间内，给定 compact source/observation sets 只有有限个 images 到达。一般声明的衰减数据用局域能量估计及极限；smooth 非齐次 histories 用 joint jet lift，沿用 §6.7 的有限正则阶构造，不把任意 Borel extension 称为连续 section。

在每个固定阶，标准 wave 能量与 Duhamel 给解及连续依赖；Noether 恒等式给 gauge constraint 的 homogeneous wave，零相容初值/壁数据使其保持为零。这证明本 formal 阶的源构造，未证明级数收敛。切口撤去后匹配 tangential connection、完整 oriented conormal 和共同 collar jets；只匹配初值 Gauss 不足以替代 worldtube transmission。

各片保留实际 $h$，使用 $A_2=A_1^h$、$E_2=hE_1h^{-1}$ 和路径顺序 $U_\gamma=U_2hU_1$。在共同 frame 中，sewn potential 是

$$\Theta_{\rm sew}=\sum_i\int_{\Sigma_i}\langle E_i,\delta A_i\rangle
-\kappa^{-1}\sum_\Gamma\int_\Gamma\langle E_2^x,\delta h\,h^{-1}\rangle.\tag{N12}$$

$x$ 从左向右；右区在 seam 的外法向为 $-\partial_x$。该负号沿用修订证明 R4.2；$h=1+\kappa\lambda+\cdots$ 使形式中的 $\kappa^{-1}$ 有有限 formal 展开。此项来自 frame transport 的 Gauss 分部积分，不新增一个独立 oscillator。

**全局 Coulomb 坐标不能通过直接相加区域 Coulomb 坐标得到。** 为从区域数据计算 (N6)–(N11)，对每个所需的标量 Poisson 问题 $\Delta v=\rho$，各区独立保存 Dirichlet Green operator $G_i$、harmonic extension $H_i$ 和 outward DtN $\Lambda_i$。令未知共同 seam value 为 $r$，写

$$v_i=G_i\rho_i+H_i r,\qquad
(\Lambda_1+\Lambda_2)r=-\partial_{n_1}G_1\rho_1-\partial_{n_2}G_2\rho_2.\tag{N13}$$

多面时使用相应 block matrix。衰减的齐次组装解满足 $\int|\nabla v|^2=0$，故唯一；半空间横向 Fourier 下 $\Lambda=|k_\perp|$，(N13) 是明确的 boundary solve。$k_\perp\to0$ 取衰减 Newton 解的分布极限，不人为丢掉低频分量。

存在性也不由“唯一”替代：在 $\dot H^1$ 能量域中，$\operatorname{div}A$ 是由 $A\in L^2$ 给出的连续对偶源，$[B,p]$ 等乘积属于 $L^{6/5}\subset\dot H^{-1}$。各区 Dirichlet 问题用 $\dot H^1_0$ 解；共同 trace 域取 harmonic extensions 总 Dirichlet energy 的完成，(N13) 的 bilinear form 就是该能量范数。源泛函由 Cauchy–Schwarz 控制，故 Riesz/Lax–Milgram 给边界解。声明的平面几何、光滑源与 Fourier/椭圆局部正则性再给 smooth representative。这个说明固定实际 trace 域，不对任意无限 jets 宣称连续延拓。

先用 (N13) 重建 $\chi_0$，再用已知局部 quadratic forcing 重建 $\chi_1,\sigma_1,\phi_g$；每次都只调用 regional operators 和共同 seam unknown。微分该同一方程给其 field variation，因此 (N7) 的 dressing variation 也被重建。target 则独立使用 §1 的 Newton inverse。两者相同由上述能量唯一性推出，source 不以 target image 定义。

## 6. 声明的代数、完整 coefficient kernel 与 image

为使“完整”可检查，固定以下有限阶 target，不称其为任意 YM observable 的最大代数。

- 零阶取有限 polynomial functionals，系数是 smooth rapidly decreasing multipoint tests，变量为横向 $B,p$；包括所有线性 probes。
- 首阶允许一个 nonlinear vertex： (N6)、(N10) 的 kernels，以及一次 (N4)–(N5) 的 response/dynamical insertion；允许乘任意零阶 polynomial，并对零阶 kernels 作有限次测试函数收缩与泛函微分。
- 所有 kernels 都要使一阶泛函导数在 §1 的域内；上述 generators 已逐项验过。一个 Poisson bracket 至首阶最多含一个这样的 vertex：两个首阶项的 bracket 为 $O(\kappa^2)$。因此该 module 对有限积、共轭和本阶括号封闭。时间演化至本阶也只插入一次 $H_1$。

这一定义给出一个实际含传播、跨缝 transport 与电通量的 Poisson algebra $\mathcal A_{\rm out}^{[1]}$。其 kernels 可以是声明的 distribution kernels；并未把它们都冒称为有限 tensor products，也未从 classical admission 推出多次 quantum contractions 合法。

区域 source 使用各片同类 labels、(N13) 所需的 boundary response labels、actual transitions，以及跨片 multipoint labels。其自由 labels 和操作先由 regional domains 指定，再施加完整匹配关系。一般并非旧自主区域代数的裸 algebraic tensor product。

这里的 source algebra 只取**可投射表达**：在完整 matched relation 上，对按原政策装配为 global proper 的实际 cut action 不变，并具有上述域内的 Hamiltonian lift。这个条件由已声明的作用和 (N12) 检查，不由“恰好属于 target image”定义。孤立的 cut-charged expression 仍作为区域带荷资料保留，但不能未经端点/transition 接合就送入 invariant target。

算法：先运输至共同 frame，用 (N13) 消去仅用于求解的 boundary unknown，再按 (N1)、(N6)、(N10) 展开，得到

$$N(F)=\sum_{r=0}^{1}\kappa^r\sum_{n=0}^{N_r}
\langle K_{r,n},z^{\otimes n}\rangle,\qquad z=(B,p).\tag{N14}$$

颜色用 $T_a$ 展开，矩阵 identities 因此实际进入 coefficients。定义 $\Pi=P_T\oplus P_T$。**完整 kernel criterion** 为

$$F\in\ker R\quad\Longleftrightarrow\quad
K_{r,0}=0\ \text{且}\ (\Pi^*)^{\otimes n}\operatorname{Sym}K_{r,n}=0
\quad(r=0,1;\ n\ge1).\tag{N15}$$

右式按连续多线性形式理解：在独立横向测试 directions 上为零。它不是只写“在 global 解上为零”；给定 source expression，(N13)–(N14) 实际产生要验的系数，(N15) 用逐槽横向投影、同种变量对称化和颜色展开判定。证明用独立改变 $B,p$ 和 polarization，逐次取 homogeneous degree、再逐次取 formal coefficient。任意 admissible $B,p$ 都有 (N1) 的原场 lift，故没有额外隐藏的 nonlinear Gauss relation 在这些坐标上。

**Image。** 独立 target 的每个零阶 test 按各 spatial slots 限制到有限 regions，保留跨片 slots；每个首阶 vertex 用相同局域项、(N13) 的 responses 或有序 crossing rule 得到 source preimage。这些允许的 joint boundary labels 不要求各自属于旧固定壁 Hamiltonian 域。有限和积给全 $\mathcal A_{\rm out}^{[1]}$，故 image 是全部声明 target。

**Bracket。** (N12) 的 action-derived transport 给 $J^*\Omega_{\rm out}=\Omega_{\rm sew}$。对本篇 generators，(N3) 的实际原场 lift 限制到各片，并微分 transitions/source histories，给 matched Hamiltonian lift；故这次并非从 pullback 式单独推断 onto。得到

$$R\{F,G\}_{\rm sew}=\{RF,RG\}_{\rm out},\qquad
\mathcal A_{\rm source}^{[1]}/\ker R\cong\mathcal A_{\rm out}^{[1]}.\tag{N16}$$

(N16) 的商是 observable expressions 的评价零关系；完整 fields、$u$、$h$、arrows 和退化方向没有作商。kernel 完整性限于 (N14) 的声明类，不包含任意 nonperturbative Wilson/disorder presentation。

## 7. 再开放、结合律和量子层的边界

有限个平行 cuts 的任一中间输出仍是半空间/slab 的有限并，保留其所有原场和真实外面条件。下一次 opening 从该中间 action 重建同类 wave/Poisson response。首阶 nonlinear forcing 在共同零阶场上相同；线性 wave 与 (N13) 的唯一性给同一首阶场和 observable map。有序乘法的 cross-segment 二重积分必须保留，不能只相加各段的二阶项。三个区域的两种次序据此相同；具体 DtN 消元见第二篇。

对本篇已准入的 classical algebra，可直接定义明确的半经典层

$$F\star G=FG+\frac{i\hbar}{2}\{F,G\}\pmod{(\kappa^2,\hbar^2)}.\tag{N17}$$

Leibniz 使乘法在该商环上结合；共轭满足 star 规则。(N16) 因而保持 (N17)，包括 (N8)、(N11) 的 $\kappa\hbar$ 项。独立的 $\hbar^0,\hbar^1$ coefficients 都用 (N15) 判断 kernel，image 仍全部。此层没有 multiple contractions 或 loop extension，**不认证 $\hbar^2$ 的 Moyal/Wick transport、UV counterterms、正 Hilbert 表示或 BRST anomaly cancellation**。

## 8. 结论强度与来源

| 项目 | 本篇完成的强度 |
|---|---|
| 原始场与 gauge | 全部保留；formal chart 可复原，不形成解空间商 |
| 非阿贝尔传播 | 真正三维 Cauchy data，首个 nonlinear coefficient 的明确 Duhamel 构造 |
| probes | 平滑电通量、横向/端点涂抹 transport、它们的 finite polynomial/单 vertex 闭包 |
| lifts/kernel/image | (N3)、(N13)–(N16) 给声明类的实际 lift、逐系数 kernel 与 onto |
| fresh opening/有限结合 | 本几何与 joint smooth source 域、模 $\kappa^2$ |
| 量子 | 仅模 $(\kappa^2,\hbar^2)$ 的半经典乘法；无完整重整化定理 |

区域 Coulomb/radiative 分解与 DtN 比较可对照 Gomes–Riello 的 [quasilocal Yang–Mills](https://arxiv.org/abs/1910.04222)；本文仍保存全部原场与规范方向，不采用该文的约化结果替代构造。Hollands 的[局域微扰量子 YM](https://arxiv.org/abs/0705.3340)说明更高量子层需要独立重整化工作，不能认证本篇 timelike source/line prescription。这里的有限阶计算及 claims 由上文直接给出，不声称新颖性已审定。

**Verified:** 数学检查脚本核对 frame 展开、任意 first jets 的 $H_1$ 变分、三维非零相互作用、通量括号、有序输运与 DtN；xAct 核对 Noether 所用的两个反对称收缩恒等式。执行结果及准确范围见验证记录。Newton/wave 域、polarization 与装配证明是上文解析论证，有限 CAS 不替代它们。

**Assumptions:** 固定平直背景、衰减 trivial formal sector、有限平行 cuts、完整 joint source/jet 域、声明的单 vertex observable class、原 proper policy 与完整 action/corner transport。

**Not verified:** 非微扰收敛、任意拓扑/大规范分支、奇异场集合的全局光滑性、真实 reflecting 外墙的统一 nonlinear estimates、任意 sharp Wilson/surface products、全部 interacting observable 的 presentation、完整量子 boundary/Ward/UV 存在性。
