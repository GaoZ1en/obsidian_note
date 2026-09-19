# A sewing-compatible quasi-local canonical energy for linearized gravity

2026-09-19。本文讨论 Einstein 引力在**固定平稳背景上的二次扰动能量**。结果是一个带有区域、时间流、边界参考框架和作用量处方的量，连同它的通量。它不是任意时空上唯一的准局域质量，也不是只由边界一阶度量值决定的函数。

**结论。** 对下面明确给出的容许数据，完整有限作用量给出

$$
\boxed{\mathcal E_R[h,u;\xi]
=\Omega_R(\widehat h,\mathcal L_\xi\widehat h),
\qquad \widehat h=h+\mathcal L_uG.} \tag{1}
$$

它在保持外部参考框架的联合重标记下不变，满足包含边界源与 corner 的通量平衡，并在透明、完整匹配的空间拼接下相加。相对于固定参考截面，它等于 canonical energy 加一个由 Noether descent 导出的边界 cocycle。只有在进一步满足无通量、可积性和二阶可延拓条件时，它才等于相应 Hamiltonian 的 Hessian。实际例子和反例见 [benchmarks](benchmarks.md) 与 [audit](counterexample-audit.md)。

## 1. 先固定对象、阶数与符号

取 $D\geq3$、号差 $(-,+,\ldots,+)$，背景 $G$ 满足真空 Einstein 方程（可含 $\Lambda$）。先处理光滑 timelike 世界管、紧空间 cut 及其光滑 joints；非紧 cut 只能在另外证明收敛后取极限。场和参考框架光滑，所有积分在所用区域有限。有限非 null Einstein 作用量包括

$$
S_R=\frac1{16\pi G_N}\int_R\sqrt{-g}(R[g]-2\Lambda)
+\frac1{8\pi G_N}\int_{\mathcal B_R}\sqrt{-\gamma}K^{\rm out}
+S_{\rm ref}+S_J. \tag{2}
$$

这里 $S_J$ 只包含所选变分问题实际需要的 joint 项；不能把 fully Dirichlet 的端面作用量重复加到 CPS 的时间端点。人工 seam 不带独立物质或未匹配的参考项。$G_N$ 是 Newton 常数，$G$ 是背景度量。

约定物理度量扰动为

$$
g(\epsilon)=G+\epsilon h+\epsilon^2 k+O(\epsilon^3).
\tag{3}
$$

因此 $g'(0)=h$、$g''(0)=2k$。这里的 $h$ 已包含耦合：与旧稿比较时 $h=\kappa_{\rm p}h_{\rm p}$，$\kappa_{\rm p}^2=8\pi G_N$。本文不把 $k$ 加进 (1) 的一阶输入。

用小写 $c$ 表示 Harlow–Wu 的 corner **一形式**，$C_{\partial R}$ 表示能量补偿**二次函数**，避免把两者混同。完整变分写成

$$
\delta L=E\cdot\delta g+d\Theta,\qquad
(\Theta+\delta\ell)|_{\mathcal B}=dc+\beta,
\qquad \omega=\delta\Theta, \tag{4}
$$

$$
\theta_\Sigma=\int_\Sigma\Theta-\int_{\partial\Sigma}c,
\qquad
\Omega_\Sigma=\delta\theta_\Sigma
=\int_\Sigma\omega-\int_{\partial\Sigma}\delta c. \tag{5}
$$

所有真正需要的 embedding/joint 项都并入相应的 $\theta,c,\beta$。若世界管有中间 joints，逐段应用 (4)，保留接缝端点项。

例如 area–boost 辛对须从完整 bulk/boundary 的端点势与极化推导；它不是一个标量 Hayward 项的 $\delta^2S_J$，后者恒为零。

对于 Einstein–GHY timelike 壁，以协变诱导度量为源，

$$
\beta=\Pi^{ij}\delta\gamma_{ij},\qquad
\Pi^{ij}=\frac{\sqrt{-\gamma}}{16\pi G_N}
(K\gamma^{ij}-K^{ij})+\Pi^{ij}_{\rm ref},
\qquad
\delta\beta=\delta\Pi^{ij}\wedge\delta\gamma_{ij}. \tag{6}
$$

此处 $\Pi$ 是作用量对 $\gamma_{ij}$ 的响应，等于 gravitational-energy 稿的 $-\Pi_{\rm BY}/2$。这不是另一个 Brown–York 张量约定。

**符号桥。** 本文遵循 [perturbation/formalism](../../Articles/Quantization%20in%20AdS/perturbation/formalism.md) 的 $\Omega=\delta\theta$、$\delta H_\xi=\Omega(\delta g,\mathcal L_\xi g)$。旧 [general gravitational sewing](../Gravitational%20sewing%20and%20relational%20time/general-gravitational-sewing.md) §7 在相同 $\delta L=E\delta g+d\Theta$ 记法下写了 $\Omega_{\rm old}=-\delta\Theta_{\rm old}$；复用它的可加性证明时同时翻转辛形式与通量，不能直接复用有号能量。正号标尺是 $\theta=p\,\delta q$，$\Omega=\delta p\wedge\delta q$，谐振子 $\Omega(h,\dot h)=p_h^2+\omega_0^2q_h^2$。

## 2. 哪些输入是容许的

固定场无关的背景 Killing 向量 $\xi$，$\mathcal L_\xi G=0$。它的流把所用切片送到所用切片，并保持世界管、边界处方和允许源历史的空间。源可以变化和传输，但线性化时间作用必须仍是允许切向变分。记

$$
Dv:=\mathcal L_vG,\qquad A h:=\mathcal L_\xi h.
\qquad A(Dv)=D[\xi,v]. \tag{7}
$$

$h$ 和 $Ah$ 都满足线性化方程。仅声称“选择一套观察者”不保证这一点；非 Killing 反例见 audit A07。这里不把任意正常形变的壁运动自动当作 Hamiltonian 对称性。

区域由参考嵌入 $X_0$ 给出。对一阶 embedding 变分，令 $u=\delta X\circ X_0^{-1}$。如果只指定边界参考框架 $\chi$，它必须包含计算作用量和荷所需的边界 germ/导数数据，$u$ 是一个容许的光滑延拓。**$u|_{\partial\Sigma}$ 的数值一般不够。** 正常 boost 的值在 cut 上可以为零，而它的导数仍与面积配对。

这个定义有两种使用方式：

1. 把 $(h,u)$ 作为独立的线性化“度量＋区域参考框架”数据，二次齐次性指 $(h,u)\mapsto a(h,u)$；
2. 在已证明存在的局部 gauge section 上取 $u=V[h]$，其中 $V$ 线性，$V[0]=0$。HW/extremal gauge 是一个可能的 section，不是任意几何上自动存在的输入。

若还要在这个 section 的 $h$ 坐标中直接用 $A h$ 表示时间演化，必须另检验
$D\{V[Ah]-[\xi,V[h]]\}$ 是容许的 proper 零方向。否则时间流离开该 section，须显式加入返回 section 的补偿变换。定义 (1) 对独立配对 $(h,u)$ 不需要假设一个全局 equivariant section 存在。

参考数据相同的两个延拓 $u,u+s$ 给出同一个 (1) 的一个可检验充分条件是

$$
Ds\in\ker\Omega_R,\qquad D[\xi,s]\in\ker\Omega_R \tag{8}
$$

例如 $s$ 在区域的所有边界（包括人工 seam）及 joints 的邻域恒为零，且 $\xi$ 保持它们，则 Noether descent 保证 (8)。这里只主张充分性，不把它误称为能量不变的必要条件；某个二次型还可能有偶然零方向。只保留法向位移但允许带荷的剩余 boost，不能保证 (8)。

所有断言首先在一个已给出的容许线性解空间上成立；不借此证明任意 Einstein 初边值问题适定，也不声称每个线性解都有二阶真空延拓。

## 3. 补偿来自完整作用量

先对完整作用量作 pullback，而不是先删掉 corner：

$$
S_X[g,X]=S_R[X^*g],\qquad
P:(g,X)\mapsto X^*g,
\qquad \theta_X=P^*\theta_R,
\qquad \Omega_X=P^*\Omega_R. \tag{9}
$$

法向量、GHY、参考项、joints 和所有源同时被拉回。背景处

$$
dP(h,u)=h+Du=\widehat h. \tag{10}
$$

参考时间流在线性化配对上作用为 $(h,u)\mapsto(Ah,[\xi,u])$，因此 $dP(Ah,[\xi,u])=A\widehat h$。(1) 正是从 (9) 得到的扩展二次量。若改变参考时间的物理定义，必须一同改变这个作用；不能固定 $u$ 后遗漏 $[\xi,u]$。

这一步证明作用量中的边界几何确实供应所用辛形式；它本身不证明 normal translations 可积，也不证明任意源的通量消失。

对一个一般的、场无关的向量 $v$，on shell 的 Einstein Noether 恒等式在同一参考截面给出

$$
\Omega_R(a,Dv)=\int_{\partial\Sigma_R}\mathbb k_v[a]. \tag{11}
$$

这里 $a$ 满足线性化方程，所有 cut 取诱导取向。固定 embedding 时，其内容为 bulk surface form $\delta Q_v[a]-\iota_v\Theta[a]$ 加 (5) 的 corner 曲率贡献；具体地，corner 部分为 $-\delta c(a,Dv)$。其余 action-required joint/pullback 项照同一规则加入。该式来自 bulk Noether 恒等式与 (5)，而不是把右边命名为 $\delta H_v$。有源或不保边界的 $v$ 一般没有可积的 $H_v$。

不得在 (11) 中用为 Killing 向量化简的 $\mathbb k_\xi$ 直接替换 $\xi\to v$。式 (11) 保留区域的所有边界分量，包括人工 cut；只剩 inner cut 需要另证 outer 部分为零。若参数依赖场，需固定参数取变分或使用含 $Q_{\delta v}$ 的调整；本文只对背景线性空间的固定参数使用 (11)。

利用反对称性和 (7)，直接展开得到

$$
\begin{aligned}
E_0[h+Du]-E_0[h]
&=\Omega_R(h+Du,D[\xi,u])-\Omega_R(Ah,Du),\\
E_0[h]&:=\Omega_R(h,Ah).
\end{aligned} \tag{12}
$$

所以补偿是可计算的 surface descent，

$$
\boxed{C_{\partial R}[h,u]
=\int_{\partial\Sigma_R}
\bigl\{\mathbb k_{[\xi,u]}[h+Du]-\mathbb k_u[Ah]\bigr\},
\qquad \mathcal E_R=E_0[h]+C_{\partial R}[h,u].} \tag{13}
$$

特别地，$\Omega(Du,A Du)$ 这一纯 $u$ 二次项不能删。它是 cocycle 的组成部分。一个只有 $h$ 与 $u$ 交叉项的处方在 $h=0$ 时就会失败。

**证明的层级。** (12) 是任意反对称双线性形式上的代数恒等式；(11) 才提供它在引力中是边界补偿的物理内容；(9) 固定该补偿与原作用量的关系。这三步不能用一次“定义差值”的代数测试互相替代。

## 4. Gauge 与 frame：究竟什么不变

联合重标记作用为

$$
(h,u)\longmapsto(h+Dw,u-w). \tag{14}
$$

其拉回扰动逐点不变，故

$$
\mathcal E_R[h+Dw,u-w;\xi]=\mathcal E_R[h,u;\xi]. \tag{15}
$$

允许的 $w$ 必须保持指定外部源与外部参考框架；在完整扩展作用量中，(14) 的切向量是 $\Omega_X$ 的核。固定 $u$ 的 metric-only 变换与 (14) 是不同的变换：前者可以带内部 surface charge，不能仅因其形式是 diffeomorphism 就 quotient 掉。固定 frame 后能 quotient 的残余向量必须满足 (8) 等真正的零荷条件。

Brown–Henneaux 大变换改变固定外部 frame 下的应力/荷，留在物理空间。把外部 frame 也放开再作对角重标记，是另外一个扩大了数据的描述，不能据此消去原问题中的边界引力子。

补偿本身满足

$$
\begin{aligned}
C(h,u)+C(h+Du,v)&=C(h,u+v),\\
C(h+Dw,u-w)-C(h,u)&=E_0[h]-E_0[h+Dw].
\end{aligned} \tag{16}
$$

这是**线性化加法 gauge 参数**的 cocycle；不是已证明的有限非线性 Diff 群 cocycle。$C(h,0)=0$。因此“preferred gauge 下 $C=0$”准确地指度量已经选成 preferred representative、而剩余补偿向量取零；不是任意写一个标为 preferred 的 $\chi$ 就有 $C=0$。

保持 $h$ 不变而换成一个物理不同的边界 observer/frame，一般改变能量。若连同背景、区域、时间向量和所有边界数据一起作坐标拉回，则由作用量协变性得到相同数值。另有 $\mathcal E[\lambda\xi]=\lambda\mathcal E[\xi]$，这里 $\lambda$ 是固定常数；所以 seam 两侧必须使用同一时间归一化。

## 5. 平衡律与 Hamiltonian 判据

取 $\partial U=\Sigma_2-\Sigma_1+\mathcal B$。对两个线性化解，$d\omega=0$。场空间变分 (4) 给出 $\omega|_{\mathcal B}=d\delta c+\delta\beta$。将 Stokes 的两种端点项与 (5) 一同计算，得到

$$
\boxed{\mathcal E_R(\Sigma_2)-\mathcal E_R(\Sigma_1)
=-\int_{\mathcal B}\delta\beta(\widehat h,A\widehat h).} \tag{17}
$$

这里同一个光滑的 frame 历史 $u$ 用于整个 slab；中间 joint 的局部剩余项也计入右边。由 (6)，壁的积分核为

$$
\delta\Pi^{ij}[\widehat h]\,\delta\gamma_{ij}[A\widehat h]
-\delta\Pi^{ij}[A\widehat h]\,\delta\gamma_{ij}[\widehat h]. \tag{18}
$$

式 (17) 对开放系统有效，不要求每侧 flux 为零。源响应的功已经包含在这项中；若改写为“辐射 flux ＋ source work”，必须先给出非重叠的分解。不能把同一 Brown–York 源曲率再加一次 $W_{\rm source}$。

若坚持用未补偿的 $h$ 表示，等价的形式是

$$
\mathcal E_2-\mathcal E_1
=-\int_{\mathcal B}\delta\beta(h,Ah)
+C_2-C_1. \tag{19}
$$

因此原对话直接使用 raw $\omega(h,Ah)$ 的式子少了 frame/corner 补偿的时间变化，除非该变化已明确定义进 $W_{\rm source}$。若连 (5) 的 corner 也未放入 $E_0$，还须保留它的端点差。

仅知道 $\beta|_G=0$ 不够，需检查 $\delta\beta$。仅说它“在场空间 exact”也不够：它本来就是 $\delta\beta$。可以是零 flux 的 Lagrangian 极化，也可以是实际加入边界动力学后由其辛形式接收 flux；任意增加一个标量 endpoint functional 的 $\delta^2$ 恒为零，不能消除 flux。

为什么开放区域的 (1) 不自动是 Hamiltonian？在固定线性解空间上令

$$
\alpha_h(a)=\Omega_R(a,Ah),\qquad
F_A(a,b)=\Omega_R(Aa,b)+\Omega_R(a,Ab).
$$

直接微分有

$$
\delta\!\left(\frac12\mathcal E_R\right)_h(a)
=\alpha_h(a)-\frac12F_A(a,h). \tag{20}
$$

这里为简明把 $h$ 写作 dressed tangent。故 $A$ 保持 $\Omega_R$ 时，$H_R^{(2)}=\mathcal E_R/2$ 生成线性时间流；开放系统一般 $F_A\ne0$，且 $d\alpha=-F_A$。即使某一个扰动恰巧能量守恒，也不能据此推出整个解空间上的可积性。

## 6. Transparent sewing 的准确命题

现在是**空间分区** $\Sigma=\Sigma_L\cup_S\Sigma_R$，不是把两个相邻时间段的同一份 Cauchy 数据相加。两侧选同一个 Einstein 拉格朗日、相容参考项和 corner 处方。实际匹配域上满足

$$
\gamma_L=\gamma_R,\qquad \Pi_L+\Pi_R=0, \tag{21}
$$

以及这些方程的所有允许切向变分；外向法向量相反。对非 null 真空 smooth collars，完整 $(\gamma,K)$ 匹配是一组充分条件：在共同 Gaussian collar 中 Einstein 方程递推匹配正常高阶导数，因此给定的光滑区域解粘成光滑解。本文也可直接在这种实际光滑匹配族上工作，不把“数目相同的约束”当作重建。

两个 frame 延拓、时间流及其所需 jets 来自同一个平滑参考 collar，或者通过明确的过渡重标记成为同一个。于是 $\widehat h_L,\widehat h_R$ 粘成 $\widehat h$，且 $A$ 保持匹配条件。人工 seam 不承载独立物质、动力学、剩余 joint 或未匹配参考项。

记 $\jmath$ 为匹配域到区域直积的包含，$\mathfrak g$ 为粘贴。由局部积分及相反取向，

$$
\mathfrak g^*\Omega_{L\cup R}
=\jmath^*(\Omega_L+\Omega_R). \tag{22}
$$

将同一对 $(\widehat h,A\widehat h)$ 代入，得到

$$
\boxed{\mathcal E_{L\cup R}=\mathcal E_L+\mathcal E_R.} \tag{23}
$$

与此同时，(6)、(21) 及其线性化给出

$$
\jmath^*(\delta\beta_L+\delta\beta_R)
=\delta(\Pi_L+\Pi_R)\wedge\delta\gamma=0. \tag{24}
$$

所以一侧流出的能量辛通量由另一侧接收；它们各自可以非零。若 raw $h$ 与补偿 $u$ 本身也取自同一 smooth collar，则 (13) 的 seam 密度逐点按取向抵消，确有 $C_S^L+C_S^R=0$。若两个 raw representatives 不同，必须先用 (16) 计入过渡项；不能要求任意两个 independently chosen HW gauges 的裸 $C_S$ 自动相消。

这也给出没有多重 joint 的有限重复切割可加性：在共同匹配域上每个内部 cut 以相反取向出现两次。该论证不证明任意角点网络的 associator 不存在，不构造普通全局辛商，也不构造量子 Hilbert 空间张量分解。

## 7. 已知极限：二阶荷，不是完整质量

若背景处的完整时间生成元满足

$$
\delta H_\xi^{\rm tot}=\Omega(\delta g,\mathcal L_\xi g),
\qquad \mathcal L_\xi G=0, \tag{25}
$$

且 $g(\epsilon),X(\epsilon)$ 是二阶可延拓的同一 source/frame 问题中的解曲线，那么对 (25) 沿曲线微分得到

$$
\boxed{\frac{d^2H_\xi^{\rm tot}}{d\epsilon^2}(0)
=\mathcal E_R[h,u;\xi].} \tag{26}
$$

$\mathcal L_\xi G=0$ 使所有含 $g''(0)$ 和 $\delta\Omega$ 的乘积消失。等价地，$dH^{\rm tot}|_G=0$，故 Hessian 不依赖这条允许曲线的二阶加速度。这不意味着单个外边界荷不依赖 $k$。

在二阶 surface 表示中，frame 变化还必须作用于 $k$。例如
$X_\epsilon^*=\exp(\epsilon\mathcal L_u+\epsilon^2\mathcal L_v+O(\epsilon^3))$ 给出

$$
\widehat k=k+\mathcal L_u h+\frac12\mathcal L_u^2G+\mathcal L_vG.
\tag{26a}
$$

所以保持 $k$ 不变而只作 $h\to h+Du$，不是同一二阶几何的 gauge change。式 (1) 的确不需要 $k$；与实际二阶荷比较时却不能漏掉 (26a)。

用 outer-minus-inner 写法，定义实际剩余源一形式 $\mathcal F_\xi$ 的号数为

$$
\Omega(\delta g,\mathcal L_\xi g)
=\delta H_\xi^{\rm out}-\delta H_\xi^{\rm in}
+\mathcal F_\xi[\delta g]. \tag{27}
$$

on shell 二阶恒等式是

$$
\mathcal E_R=(H_\xi^{\rm out}-H_\xi^{\rm in})''(0)
+\left.\frac d{d\epsilon}\mathcal F_{\xi,g(\epsilon)}[g'(\epsilon)]\right|_0.
\tag{28}
$$

frame/joint 变化也在 (27) 的完整输入中。若 $\mathcal F=0$，就得到三个可检验的标尺：

| 极限/选择 | 准确的结论 |
|---|---|
| 没有剩余内边界、源固定、可积的全 AdS 问题 | $\mathcal E=(H_\xi^{\rm BY/BH})''(0)=2H_\xi^{[2]}$；不是 $\mathcal E=H_\xi^{\rm BY/BH}$ |
| background bifurcation cut、固定 $s_\xi$、适当 HW normal gauge、面积含正确 surface displacement、无剩余 flux | $\mathcal E=(H_\xi^{\rm out})''-s_\xi A''/(8\pi G_N)$ |
| 已处于选定 representative 且 $u=0$ | $C=0$，$\mathcal E=E_0$ |

在一般 gauge 固定坐标的 Noether cut 与面积之差仍需保留；光滑性本身不能删去 normal-plane obstruction。推至无穷远还需要控制所有 surface、source、corner 与 regulator 项的联合极限。有限个频率的通过不证明无限模和的极限。

方程 $E^{(1)}[k]+E^{(2)}[h,h]=0$ 把 $h^2$ 的 bulk 表示与 $k$ 的 surface 表示联系起来。它们是同一二阶恒等式的不同项/表示，不是两份可另加的能量。反过来，若给 $k$ 加一个容许的齐次线性解，外边界荷可能改变；只有连同内边界和源项的 (28) 保持正确。

## 8. 定理及其证明范围

**定理（有限平稳区域的 completed canonical energy）。** 给定 (2)–(6) 的有限作用量处方，一个满足 §2 的光滑线性解与 frame 空间，以及保持该问题的场无关背景 Killing 流。则 (1) 是一个二次函数；它具有 (13) 的 boundary descent 表示，满足 (15) 的容许联合 gauge 不变性和 (17) 的完整通量平衡。对满足 §6 全部条件的透明空间拼接，它满足 (23)；若 raw 数据共用一个 smooth collar，内部补偿和通量分别消去。满足 (25) 的可积闭合扇区中，其一半生成线性时间流；若还有二阶解曲线，则其值为 (26) 的 Hessian。§7 的已知极限只在各行条件下成立。

**证明。** 作用量 pullback 给出 (9)–(10)；Noether identity 给出 (11)；反对称性给出 (12)–(16)。对 (4) 取场空间外微分并在 slab 上使用 Stokes 得到 (17)。局部积分和相反取向给出 (22)–(24)。线性空间的直接微分给出 (20)，对 (25) 再微分给出 (26)。这些步骤分别证明列出的结论，不从能量匹配反推几何匹配，也不从 algebraic gauge cancellation 推断边界变分问题存在。证毕。

本定理没有证明下列更强主张：一般非平稳背景上的同一构造；仅凭边界一阶场值的即时测量重建；任意 perturbation 的二阶延拓；任意区域的全局 HW gauge；观察者无关或正定的能量；任意 null 界面或角点网络；无限模、量子或非微扰引力 sewing。审计中其中若干主张已被明确反例否定，其余是独立存在性问题。

## 9. 来源与验证

有限作用量的 corner 保留方式可对照 [Harlow–Wu, §§2.2–2.4](https://arxiv.org/html/1906.08616v3)。二次能量与质量/面积二阶变分的关系可对照 [Hollands–Wald](https://arxiv.org/abs/1201.0463)。本文的论证使用上面固定的本地约定，而不是从文献名称推定号数。

Verified: (12)、(16)、(20) 及明确的反例有独立精确代数检查；四维 TT Einstein/二次作用量/空间约束和 GHY 壁响应经 xAct 检查。实际复跑结果与适用范围见 [verification](verification.md)。§8 给出纸面的一般条件证明；有限矩阵检查不替代该证明。

Assumptions: 同一 finite-action 处方；光滑、有限的容许解/frame 历史；背景 Killing 且保域的时间流；延拓残差是真正零荷方向；sewing 使用完整 trace、响应、frame 与 corner 匹配。Hamiltonian/Hessian 结论有 §7 的额外前提。

Not verified: 任意 Einstein 初边值问题的适定性、全局约化与全局 section、无限模 regulator 极限以及二阶可延拓性的一般存在定理。本文不将它们列为已完成证明。
