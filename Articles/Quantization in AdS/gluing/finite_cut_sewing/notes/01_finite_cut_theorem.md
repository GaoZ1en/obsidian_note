# 有限混合切割的 observable-first 重建

## 0. 本文实际建立的结果

本文固定上一版的 polynomial Peierls/Wick observable class，以及局域 off-shell variational/Ward symmetry 定义。不扩大函数类，不讨论 proper gauge，不要求 nonlinear boundary conditions。对象始终是完整的、带 action 和 boundary realization 的 standalone theory；temporary source data 仅在一次实际操作中出现。

得到的核心结果是：在下述 **二维平直、静态条带及其分段 achronal 截取区域**中，有限个 timelike、spacelike、null cuts 可以通过各自正确的数据匹配机制组合。只要每个中间几何仍属于声明的区域类，完整 sourced solutions、自由 Peierls/Wick algebra 和保留的 affine Ward symmetries 均与操作顺序无关。这包括不同类型操作之间的 interchange，而不只是同一种二元运算的 associativity。

量子结论并不包含任意 sharp null composite。它包含原定的 bulk-smoothed polynomial observables，以及已经验证的 timelike physical-boundary traces。Null 数据在需要时是辅助的经典 PDE 数据，不自动成为新的量子算符。

相互作用部分推进到：二维无导数 polynomial vertices 的有限图延拓与有限分区相容；单 stress/单 polynomial vertex 的局域 contact 被显式计算；更高阶单-stress Ward 问题被约化到低阶 boundary contacts。**尚未构造全部 reflecting-boundary stress/displacement contacts，所以完整的 all-order interacting Ward-compatible standalone composition 仍是条件定理。** 不能把这一点与已经建立的自由混合切割定理合并成一个无条件结论。

这是一份研究构造与证明稿；符号和连续核检查是独立诊断，不是这些无限维结论的证明替代。具体审查及修复见 `05_adversarial_audit.md`。

## 1. 固定理论和观测量，不再改变基本对象

取 signature (-,+)（以下仅用通常的括号记号），实标量或有限实 multiplet，正定 fiber metric，同一质量 $m>0$：

$$
S_R=\frac12\int_R (|\partial_t\phi|^2-|\partial_x\phi|^2-m^2|\phi|^2)\,dt\,dx
-\frac12\int_{\Gamma_R^{\rm Robin}}q^T\sigma q\,dt,
\qquad L=\partial_t^2-\partial_x^2+m^2.
\tag{1.1}
$$

$\sigma=\sigma^T\ge0$，每个实际 timelike boundary component 上使用 D、N 或 Robin：

$$q=0,\qquad \Pi=0,\qquad \Pi-\sigma q=0,
\qquad q=\gamma\phi,\quad \Pi=-\partial_n\phi.
\tag{1.2}$$

先证明 scalar 及 componentwise boundary realization。矩阵 Robin 在时间独立、对称非负的有限 multiplet 中可用同一 closed-form construction；其全部混合边界 microlocal 结论仍须采用上一版声明的条件 Q，不能由有限矩阵检查独立代替。

一个 standalone object 只记录

$$\mathfrak T_B(R)=(R,S_R,B,\hbox{field/source labels and admissible data}).
\tag{1.3}$$

由这个独立记录生成相应的 $\mathfrak A_B(R)$ 与完整源关系 $\mathcal R_B$；它们不再是额外独立输入。非特征 on-shell 高阶 jets 由 PDE 递推；只保留未由其余数据决定的 incoming/null seeds、原 regularity 与 off-shell 系数准入。重建方法及条件见[修订证明 R0–R2](../../audit_repair_2026-09-18/repair_proofs.md)；若相应存在性/域估计未完成，生成符号不提供证明。

其 timelike boundary sources 为零。Spacelike/null caps 的 **允许数据空间** 没有固定为零；零过去/未来数据只是 retarded/advanced response 的选取。

观测量仍为

$$F(\phi)=\sum_{k=0}^N\frac1{k!}\langle f_k,\phi^{\otimes k}\rangle,
\qquad \operatorname{WF}(f_k)\cap(\bar V_+^k\cup\bar V_-^k)=\varnothing.
\tag{1.4}$$

$f_k$ 紧支撑，普通 bulk labels 与真实 temporal caps 保持距离；timelike physical-boundary-supported labels 采用上一版已验证的 collar calculus。未来内部 seam 的联合 smooth collar labels 在此次几何重建时产生，不要求它们预先属于 isolated-interior algebras 的有限 tensor product。

定义

$$\{F,G\}=\langle F^{(1)},E_B G^{(1)}\rangle,
\qquad E_B=G_B^A-G_B^R,
\qquad W_B-W_B^T=iE_B,$$
$$F\star_{W_B}G=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W_B^{\otimes r}G^{(r)}\rangle.
\tag{1.5}$$

然后取相应 equation/boundary ideal。所有 polynomial degree 均有限，但频率数没有截断。更大的 equicausal framework 提供背景；本稿不借它推断尚未证明的 boundary/null extension。[1]

## 2. 一类具体而非循环定义的 admissible regions

### 2.1 Cap-graph regions

在独立指定的 static parent strip $\bar R=\mathbb R_t\times[a,b]$ 中取

$$R=\{(t,x):a<x<b,\ \tau_-(x)<t<\tau_+(x)\},
\tag{2.1}$$

连同实际存在的 timelike side segments。要求：

* $a<b$，$\tau_-<\tau_+$ 在 $(a,b)$ 中成立；两者在投影端点允许相遇；
* $\tau_\pm$ 连续、分段 affine，斜率 $|\tau_\pm'|\le1$；只有有限个折点；
* side segments 上的 $B$ 时间独立且为 (1.2)；caps 上使用全部相容 Cauchy/characteristic data；
* field、source、bundle 和面识别按同一个 smooth jet system 匹配；$J$ 保持所声明的时间定向和静态动力学数据，可包含常正交 bundle twist 与相容的坐标识别；不在被填入的普通顶点留下非平凡的局部单值性缺陷。任意带时间 holonomy 的识别不自动属于本类。

曲线的斜率严格小于 1 的段为 spacelike cap，等于 $\pm1$ 的段为 null cap。竖直侧边为 timelike。一个无 timelike sides 的 diamond 也在此类中：parent strip 的两条竖直线仅碰到 diamond 的左右端点，不是实际 physical wall。

这里使用 parent strip 是为了独立构造该 region 的 causal problem，不是预先放入未知的 sewn algebra。Parent strip 长度和端点 $B$ 是局部 standalone construction 的辅助 realization；不存在的 side wall 不应赋予物理意义。其 commutator 在区域内部的独立性由下一引理证明。若 Wick state 因辅助延拓而改变，则按同一 region 的允许 Wick equivalence 比较，而不是声称状态唯一。

### 引理 2.1：causal convexity 与参考条带 Green construction

上述 $R$ 在带反射侧边的 parent strip 中 causally convex。对于 $f\in C_c^\infty(R^\circ)$，将其零延拓到 parent strip，定义

$$G_R^{R/A}f=(G_{\bar R,B}^{R/A}\tilde f)|_R.
\tag{2.2}$$

该算子满足 $LG_R^{R/A}f=f$、实际 side $B$、正确的 causal support 与 retarded/advanced 唯一性。

**证明。** 任意未来 causal curve 满足 $dt\ge|dx|$。所以沿曲线

$$d(t-\tau_-(x))\ge0,\qquad d(t-\tau_+(x))\ge0.$$

若起终点都在 (2.1)，整条曲线不可能先越过过去 cap 再回来，也不可能先越过未来 cap 后再回来。反射光线仍是分段 causal curve，论证不变。零延拓源的未来传播不能离开 $R$ 后又影响其内部。

Parent spatial operator 由正 closed form 构造，其 retarded kernel 为 $\theta(t-t')\sin(\sqrt K(t-t'))/\sqrt K$。限制给存在性。差解的局部能量守恒和 Robin surface energy 给唯一性；null incoming cap 上零 trace 同时使切向导数与正能量流为零。对分段 caps 用有限次 Stokes identity，将相邻端点项正确配对。整个论证针对 retarded 的零 incoming response，不把物理 solution space 缩成零解。[2，N1 §§2、6]

若某条 parent side 只碰到 $\partial R$ 的一个端点，从该“phantom wall”反射后再连接两个内部事件的 causal curve 必须离开 $R$。因此 changing that auxiliary closing realization 不改变 (2.2)。\(\square\)

### 2.2 任意数据与 junction regularity 不是一个未写出的假设

任意 smooth sourced problem 的输入包括 bulk $f$、实际 timelike $b$、past cap 数据及其 joint compatibility。对于 retarded boundary probes，可先用支撑远离 cap endpoints 的 smooth $b$ 定义完整 response，再在已证明的相容 jet domain 上延拓。对一般 smooth incoming data，必须满足以下递推条件。

Spacelike 段给 $(\phi,\partial_n\phi)$；由 $L\phi=f$ 逐阶恢复更高 normal jets。Null 段 $u=c$ 给 $a_0(v)=q(v)$，其更高横向导数满足

$$\partial_v a_{r+1}(v)=\frac14\partial_u^r f(c,v)-\frac{m^2}{4}a_r(v),
\qquad a_r=\partial_u^r\phi|_{u=c}.
\tag{2.3}$$

每个 $a_{r+1}$ 的一个初始值来自该 null segment 的 incoming junction 或其余完整数据。与 wall 相交时，还必须满足 D/N/Robin 的时间微分后得到的端点关系。两张 null sheets 在 corner 的 mixed jets满足

$$a_{r+1,s+1}=\tfrac14f_{rs}-\tfrac{m^2}{4}a_{rs}.
\tag{2.4}$$

不另行自由指定一个与这些式子矛盾的“corner momentum”。对 smooth class，需要所有阶；固定能量/Sobolev class只需其相应有限正则性条件，后者不是本稿用来替换 (1.4) 的新函数类。

这些递推与完整 incoming curve 的数据共同给出允许域。还要求相交面的 Taylor 数据满足通常的 smooth extension 余项界，即它们能由一个 smooth **off-shell** lift 实现；不预设 on-shell global solution。选定这样的 lift $v$ 后，$f-Lv$ 在 incoming cap 上所有 jets 为零，可以向过去零延拓，再用独立 parent Green function 求解差场。这给存在性；能量恒等式给唯一性。详细步骤和不相容源分解的限制见 `02_three_cut_calculus.md` §2。

本稿不声称 arbitrary infinite jet data 有连续线性 extension，也不恢复旧版任意 history-family 的统一 Fréchet smoothness。独立 quartet 的 smooth blocks 首先在 compact compatible probes 上定义；一般 incoming/source data 使用相容的完整关系。不能把仅仅总和相容的问题分成两项后，要求两项各自都具有不可能的光滑初始角点。

需要强调：仅写“Cauchy/Goursat 问题 well posed”不能省去这些条件；一般 curved spacetime 的 Goursat 存在性有独立的 support/domain 要求。[3]

### 2.3 有限切割程序的精确定义

从矩形或 convex cap-graph mother 出发，选择有限条 $x=c$、$t=c$、$t-x=c$、$t+x=c$ 切线。有限 arrangement 产生有限 convex cells，每个 cell 都有 (2.1) 的形式。对一般非凸 cap-graph mother，先沿有限折点作竖直细分；不声称其任意初次切割已产生凸块。也允许经过一次共同 isometry 得到的同一几何类。

一个 sewing 程序是有限次实际操作，每步把已 closed 的区域沿被声明的共有面合并，或作合法 self-identification。每个中间输出须仍是上面的 cap-graph/periodic-strip 类，剩余 $B$ 可良定，source 和 jets 相容，且最终几何/作用量相同。每次都重新计算下次需要的 source relation。

对于上述凸母区域中的有限 line arrangement，每种逐线切割均可反向形成一个允许的 sewing 程序；不同切线次序的逆程序和共同 refinement 可用同一个定理比较。它**不**保证任意挑选两个 nonadjacent/非因果区域也能合并，不涵盖加速 timelike walls、锥点或任意高维 null corners。这个范围由具体几何条件定义，而不是把“满足重建定理的切法”叫作 admissible。

## 3. 三种操作：同一输出要求，三种不同机制

### 3.1 Timelike：closed → opening → response → matching → closed

对本次 selected faces，使用原 closing realization 的 source coordinate

$$ (b,r)=(q,\Pi),\quad (\Pi,-q),\quad(\Pi-\sigma q,-q)
\tag{3.1}$$

分别对应 D、N、Robin。保留

$$u=G_B^\epsilon f+H_B^\epsilon b,\qquad
r=\rho_B^\epsilon f+D_B^\epsilon b,
\qquad\epsilon=R,A.
\tag{3.2}$$

在真实 traces 上实施

$$q_2=Jq_1,\qquad \Pi_1+J^*\Pi_2=0.
\tag{3.3}$$

若 $z=(q,\Pi)=V_Bf+U_Bb$，matching 记作 $\mathcal L_Jz=0$，则

$$G_\#^\epsilon=G_B^\epsilon-H_B^\epsilon
(\mathcal L_JU_B^\epsilon)^{-1}\mathcal L_JV_B^\epsilon.
\tag{3.4}$$

逆仅作用在相容 causal source domain。初始/characteristic 输入产生的 particular solution 同样进入右端，不允许在 finite caps 上漏掉它。D/D 等公式是其特例；closing realization 完整删除后，最终问题只剩 (3.3)，故不依赖辅助的 D/N/R 选择。保留 surface potential 则得到真实 defect，不属于 transparent independence。

输出不保存 $b$ 或 quartet。其内部 seam 已消失，真正剩余 timelike boundaries 仍有自己的 $B$。

### 3.2 Spacelike：完整 Cauchy jet matching

在 $t=t_*$ 匹配 $\phi$ 和同一未来定向的 $\partial_t\phi$。静态 parent 中

$$U(t_2,t_1)=
\begin{pmatrix}C&K^{-1/2}S\\-K^{1/2}S&C\end{pmatrix},
\quad C=\cos(\sqrt K\Delta t),\ S=\sin(\sqrt K\Delta t).
\tag{3.5}$$

跨 cap 的 source response 由过去侧产生的两份 Cauchy data 驱动未来侧。对于局部 cap patch 使用同一个 Cauchy uniqueness，而不是强行使用 whole-strip mode expansion。

所有物理 Cauchy 数据可以变化。两段时间 region 不因此变成独立 Hilbert factors；也不存在需要撤掉的“temporal Robin wall”。

### 3.3 Null：完整 incoming data 加 characteristic filling

令 $u=t-x,v=t+x$，$L=4\partial_u\partial_v+m^2$。在 rectangle 中，给

$$\phi(0,v)=f(v),\quad\phi(u,0)=g(u),\quad f(0)=g(0)=c.$$

解为

$$\begin{aligned}
\phi(U,V)={}&c\,\mathcal R(U,V)
+\int_0^U\mathcal R(U-s,V)g'(s)\,ds
+\int_0^V\mathcal R(U,V-s)f'(s)\,ds\\
&+\frac14\int_0^Uda\int_0^Vdb\,\mathcal R(U-a,V-b)F(a,b),\\
\mathcal R(U,V)&=J_0(m\sqrt{UV}).
\end{aligned}
\tag{3.6}$$

其 Volterra series 的第 $n$ 次 double integration 有 $(UV)^n/(n!)^2$ 界，故在有限 rectangle 上收敛。对角点先取同一个 $c$，而不是把它数两次。以 $dt\,dx$ 为积分测度的 retarded kernel 是 $\frac12\theta(U)\theta(V)\mathcal R$；换成 $du\,dv$ 时是 $\frac14$。

跨 $u=c$ 的 retarded block 是 $H_{\rm char}^R\gamma_cG_1^R$。从未来侧反向影响过去侧的 retarded block 为零，但 advanced 相反，所以 Peierls crossing 可以非零。Null flux balance 在 trace matching 后退化为切向恒等式，不能再反演 $D_1+D_2$。[N1 §14；N3]

## 4. 真正新增的 junction 与 sourced-reopening 引理

### 引理 4.1：typed matching 消去 distributional sources；null jets 还须传播

对两边分片 smooth fields：

$$\begin{array}{ll}
x=0:&L\phi=\sum_i1_{R_i}L\phi_i-[\partial_x\phi]\delta(x)-[\phi]\delta'(x),\\
t=0:&L\phi=\sum_i1_{R_i}L\phi_i+[\partial_t\phi]\delta(t)+[\phi]\delta'(t),\\
u=0:&L\phi=\sum_i1_{R_i}L\phi_i+4\delta(u)\partial_v[\phi].
\end{array}
\tag{4.1}$$

在 null 行，零 trace jump保证没有面源，却不保证 smoothness。若相同源在 face 两侧有相容 jets，(2.3) 给

$$\partial_v[ a_{r+1}]=-\frac{m^2}{4}[a_r].$$

给定 junction 中的初始 jump 为零，归纳得沿整条 null segment 所有横向 jumps 均为零。Spacelike/timelike face 的 higher jets 由非特征 PDE recursion恢复。

在有限多面交点，要求这些 jets是同一个局域场的相容 jets，面过渡的复合按指定 atlas/bundle 一致。此时 first derivative没有面 delta，second derivative只产生 (4.1) 中被取消的面项；不额外产生独立的 vertex distribution。\(\square\)

一个具体反例表明这不是技术赘余。令

$$A(u,v)=\sum_{n\ge0}\frac{(-m^2/4)^n u^{n+1}v^n}{n!(n+1)!},\qquad
\phi=\theta(u)A(u,v).
\tag{4.2}$$

在有限 rectangle 上该级数收敛，$L\phi=0$ 是 distribution identity，$[\phi]=0$，null tangential flux matching成立，但 $[\partial_u\phi]=1$。它是 massive continuous kink，不是允许的 smooth global field。正确的 junction seed 排除它；仅零阶 matching 不排除它。

### 引理 4.2：闭合输出的完整 sourced reopening

设 $C$ 已由任何有限 typed 程序重建为 closed object。现在对它真实存在的下一条 timelike face 加源，或取下一条 spacelike/null cap 的完整输出数据。直接从 $C$ 的 action/domain 求解，与在此前 pieces 中加入相同的 **任意** bulk source、新边界 source 和 incoming data 后装配，所得解相同。

**证明。** 固定一个完整相容元组 $d=(f,b,d_{\rm in})\in\mathcal D_{\rm adm}$。区域源关系由各片 action/domain 独立定义，不预设其匹配解存在。将任一 matched 区域解装配，引理 4.1 给同一 smooth sourced equation、真实 exterior $B$ 与完整 incoming data。反向限制独立未切分问题的任一解，连同实际 sources/traces，给每片自己的合法源元组；两过程互逆。因此先得到完整解关系的比较，允许空 fiber 或多值，不把存在性/唯一性写入定义。

在第 2 节已经独立构造的相容数据域上，未切分问题的 Green/lift 构造给存在解，restriction 提供匹配方程的实际见证；任一其他装配解由相同 causal prescription 下的唯一性与之相同。取解的全部实际 traces 即比较完整 response，不需将 d 拆成纯 bulk、boundary、incoming 块。只有各块分别合法的子域才用独立 quartet。沿保持联合域的可微族 $d(s)$ 取导数还须该模型已证明的 smooth dependence；不存在的坐标方向不定义响应偏导。超出第 2 节存在性构造的域，只保留关系比较，不宣称新 solver。\(\square\)

旧 finite-successive-sewing 负责固定最终 matching 后的消元 coherence；本引理另外证明 **从一个真正 closed intermediate 再开始操作** 不丢信息。它是下面 interchange 的关键。

## 5. 核心定理：有限 typed 程序独立性

### 定理 F：自由 finite-cut reconstruction

固定第1–2节的理论与区域类，有限个 pieces、本次 geometric identifications、完整 compatible jets、被移除/保留的真实 boundary terms。令 $P,Q$ 为两个 admissible finite sewing programs，最终产生相同的 region $M$、metric/bundle、bulk action 和 exterior $B$。

则对于任意允许的 smooth bulk/边界 probes 和 incoming data，

$$\operatorname{SolResponse}_{P}=\operatorname{SolResponse}_{Q}
=\operatorname{SolResponse}_{M}.
\tag{5.1}$$

特别地，

$$G_P^{R/A}=G_Q^{R/A}=G_M^{R/A},\qquad E_P=E_Q=E_M.
\tag{5.2}$$

对 final geometry 独立选定同一 boundary-compatible Wick prescription，并使用 joint collar coefficient space，得到

$$\Theta_P:\mathfrak A_P^{\rm cl/q}\overset\sim\longrightarrow\mathfrak A_{B_{\rm ext}}^{\rm cl/q}(M).
\tag{5.3}$$

它保持已选 polynomial class 的全部点乘/Peierls/Wick products 和 equation ideals。作用不是旧 closed algebras 普通 tensor quotient，也不识别其原来的 vacua。

**证明。** 对程序步数归纳。三种 primitive operations 均由第 3 节独立的 sourced problems 定义。引理 4.1 保证一步后装配为正确的 smooth field；引理 4.2 保证下一步从新的 closed object 重新取源，仍与原 pieces 的计算一致。因此各程序的最终结果满足同一个完整 sourced problem，由唯一性得到 (5.1)。在 smooth compact sources 上比较给 (5.2)，再按连续分布核解释。

量子层必须按最终重建的 dynamics 选择同一 final Wick prescription。独立 parent strip 的 positive-frequency construction 及 causal-convex restriction 提供自由核；真实 boundary labels 使用区间条件 Q，caps 上不作未经验证的 sharp quantum pullback。符合该条件的有限 multiplet 同样适用。

最后，在预先给定的 finite smooth product-collar cover $\{U_\alpha\}$ 上，区域 source coefficients 是合法、紧支撑的局部 coefficients 的有限和，并先除去 overlap 的同一分布重复表示；不是直接把 raw presentations 宣称双射。令 assembly 为 $t=\sum_\alpha t_\alpha$，用 subordinate smooth partition $\chi_\alpha$ 得 preimages $t_\alpha=\chi_\alpha t$。若 $\sum t_\alpha=0$，则
$$u_{\alpha\beta}=\chi_\beta t_\alpha-\chi_\alpha t_\beta,\qquad
u_{\alpha\beta}=-u_{\beta\alpha},\qquad
\sum_\beta u_{\alpha\beta}=t_\alpha.$$
因此 assembly kernel 恰为这些 overlap relations；smooth multiplication 保留原波前准入，不使用 sharp restriction。对每个多点 degree 使用相应 product cover，不能把此步骤误作有限 tensor decomposition。合法边界-supported coefficients 仍使用原区间条件 Q；没有 Q 的新 trace 不纳入已证比较。

Kernel equality 使每个已准入的有限 Wick contraction 相同。沿真实 homogeneous solution directions 的谱 cutoff 极限与其收敛仍采用原 imported Q，以证明 vanishing ideal 的两侧 $\star$-ideal 性。再除实际 equation/boundary vanishing relations 得 (5.3)。这一步没有独立重证全部 microlocal 输入。\(\square\)

### 5.1 Interchange 不是 associativity 的改名

令 $T$ 表示 timelike sewing，$C$ 表示 Cauchy composition。对四块相容矩形或截取区域，

$$C\bigl(T(R_{PL},R_{PR}),T(R_{FL},R_{FR})\bigr)
\simeq
T\bigl(C(R_{PL},R_{FL}),C(R_{PR},R_{FR})\bigr).
\tag{5.4}$$

两侧先形成不同的 closed intermediates，再进行下一种操作。(5.4) 来自全部 sourced data 的比较，不是一个预先全开网络的 Schur 矩阵恒等式。

将一些接口换成 null cuts，保留完整 characteristic incoming data 与 junction seeds，同一证明给 T/N、C/N 和有限混合 interchange。具体 retarded feed-forward 的方向由真实因果几何决定；不能对任意两块都指定一个单向 crossing block。这里没有统一成“null Robin”的某个参数值。

### 5.2 细分、重新切割和 self-sewing

定义 $C_{Q,P}=\Theta_Q^{-1}\Theta_P$，则

$$C_{R,Q}C_{Q,P}=C_{R,P}. \tag{5.5}$$

公式的代数部分很简单，真正的内容是已为每个允许程序独立构造了 $\Theta_P$。缺少前面的 junction、source 和 closed-reopening 证明，只写 (5.5) 不等于完成 finite-cut theorem。

Pure recutting 在最终物理场上为恒等；真正移动 cut 的 spacetime symmetry 还要插入实际场变换。Self-sewing 只复制面标签，不复制 bulk field 或 action。周期输出要求 cap graphs 和 bundle transition 按 circle identification 相容；其 parent 是同一 positive circle operator。

在 ordinary filled junction，面过渡绕可缩小回路的复合必须为 identity。在真实 noncontractible cycle 上可保留已声明的 holonomy，surviving internal symmetry 则受它限制。改变非交换 twists 的排列不是只改变 sewing 括号。

## 6. Symmetry、能量和有限窗口 flux

沿用局域 off-shell Ward lift。局域 affine 变换 $\phi\mapsto T\phi+s$ 必须运输 bulk/boundary sources、完整 incoming data、joint jets 及实际 exterior $B$。Paired faces 满足 $U_2J=J'U_1$，quasi-symmetry improvements 也一起匹配。

完整 sourced reopening 的任意探针比较给 $G_{M'}^{R/A}=TG_M^{R/A}T^*$；随后得到 Peierls/Wick products、equation ideals 和 finite-program comparisons 的 covariance。Shift parameters 本身也须跨 caps/junctions 光滑匹配。相互作用只保留保持实际 potential 和 Ward prescription 的部分；free solution shifts 一般不再是 interacting symmetry。

自由 shift current 为

$$j_s^t=s\dot\phi-\dot s\phi,\qquad
j_s^x=\phi s'-s\phi',\qquad
\partial_\mu j_s^\mu=sL\phi-\phi Ls. \tag{6.1}$$

Timelike wall 的完整 charge balance 含 $-\Pi_\phi s+q\Pi_s$，不能省去第二项。在含完整 compact spatial section 的区域上，总自由能量还包括真实剩余 Robin surface energy $\frac12\int q^T\sigma q$。Selected closing energy 随 opening 删除，retained defect energy 则保留。

为避免假造 quantum null trace，局部 flux 先定义为

$$\mathcal F_j[\chi,h]=\int_R\chi\,j^\mu\partial_\mu h,
\qquad \chi\in C_c^\infty(R),\quad h\text{ 是跨面的 smooth cutoff}.
\tag{6.2}$$

它是一个有限窗口、有限厚度的观测量。On shell，它与 $-\int h j^\mu\partial_\mu\chi$ 及真实 source/boundary terms 联系。不能只取整体紧支撑的 $\int j\cdot d\eta$ 并把一个守恒 current 的零量叫作局部 flux。若 $\sum_i h_i=1$，人工分区 derivatives 正确相消。

(6.2) 没有证明厚度趋零的 quantum limit 存在。某个 diamond 的 total charge 若不在原 compact-support domain，也不能强行称为其代数元素；局部 smeared stress/current 仍可使用。Peierls generator、Robin energy 与中心项的完整计算见 `04_symmetry_energy_and_flux.md`。

## 7. 微扰和重整化推进到了哪一步

Free composite fields 已按 Wick/局部 subtraction 处理；定理 F 运输全部有限 contractions，不只是 CCR。Classical polynomial interactions 可通过 retarded recursion 逐耦合阶装配，并用线性化 Green recursion 比较 Peierls bracket。

二维无导数 polynomial vertices 的 direct/reflected scalar contractions 在有限时间窗内至多对数奇异。固定 self-contraction prescription 后，每个有限图系数局部 $L^1$，其保持最小 scaling degree 的多顶点 extension 唯一。用重建后的 kernels 和 finite smooth collar partitions，可逐区域计算并比较这些 potential graph recipes。这里已给出一项实际构造，不只是假定一个任意 extension theorem。

这仍不等于把原 regional vacuum-normal-ordered Hamiltonians 原样相加。Opening 改变 image contractions；同一物理 composite recipe 的 finite terms 必须重新表达。独立 finite conventions 要带着 insertion contacts 转换，不能只匹配 coupling。

Stress graphs 还有 derivatives。单 stress/单 potential 的局部 contact 被明确计算，含 $\hbar P''/(8\pi)$ 的 companion term；更高阶的 primitive collision 问题可用 power counting 约化到低阶 boundary normalizations。**全部 reflecting-boundary stress/force contacts 的兼容选择及其存在性仍未完成。** 所以 all-order interacting Ward-compatible mixed sewing 仍是条件定理，不能与自由定理 F 合并成一个无条件结论。详见 `03_quantum_and_renormalization.md`。[4–6]

## 8. 本次结果和保留的真正问题

已经建立的自由结果跨越三种 causal cut，并处理有限 junction、closing-realization independence 和真正 closed intermediates；它不是旧 all-open associativity 的改名。

范围仍是二维平直静态条带的 admissible cap-graph programs，及已核验同样边界核条件的有限 multiplet。任意加速 timelike walls、高维 curved/corner boundaries、conic quotients、sharp null quantum composites 和非微扰 state factorization 不在这个无条件定理内。Proca 的约束与 Dirac 的 graded first-order traces 也不能通过“加场指标”自动纳入。[N4、N5]

因此，完整目标的状态是：自由 finite mixed reconstruction 与既定 polynomial/symmetry 结构已落实；classical formal perturbation 和二维势图重整化已有构造；**所有输入和中间区域的 interacting stress/Ward normalization 仍是必须补出的工作**。没有通过扩大函数类、讨论 proper gauge 或引入新抽象对象来回避它。

## 参考文献与先前输入

[1] Hawkins–Rejzner–Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3, §§5–7. <https://arxiv.org/html/2312.15203v3>

[2] Dappiaggi–Drago–Ferreira, *Fundamental solutions for the wave operator on static Lorentzian manifolds with timelike boundary*, arXiv:1804.03434. 本稿实际用的 interval construction 亦在 [N1] 直接实现。<https://arxiv.org/abs/1804.03434>

[3] Bär–Tagne Wafo, *Initial value problems for wave equations on manifolds*, arXiv:1408.4995. 不将其 Goursat 条件误称任意 null 数据的 well-posedness。<https://arxiv.org/abs/1408.4995>

[4] Hollands–Wald, *Existence of local covariant time ordered products of quantum fields in curved spacetime*, arXiv:gr-qc/0111108. <https://arxiv.org/abs/gr-qc/0111108>

[5] Hollands–Wald, *Conservation of the stress tensor in perturbative interacting quantum field theory in curved spacetimes*, arXiv:gr-qc/0404074；特别注意其维数与 normalization 条件。<https://arxiv.org/abs/gr-qc/0404074>

[6] Dappiaggi–Nosari–Pinamonti, *The Casimir effect from the point of view of algebraic quantum field theory*, arXiv:1412.1409. <https://arxiv.org/abs/1412.1409>

[N1] `standalone_binary_observable_sewing.md`，本次附带的输入快照。

[N2] `symmetry_and_closed_sewing.md`，本次附带的输入快照。

[N3] 仓库 `models/null regions/1+1 massive scalar null gluing.md`，blob `4b2df270a82553dc1bb062662fc927e34fd2c3cc`；其已读取的 Riemann-kernel 部分用于比较，不继承其旧 CPS observable 定义。

[N4] 仓库 `models/spacelike regions/non-gauge/2+1 Proca observable algebra gluing.md`；仅作为 constrained non-gauge benchmark，不列入本稿自由标量 theorem。

[N5] 同目录 `1+1 Dirac observable algebra gluing.md`；仅作为 graded first-order benchmark，不列入标量 theorem。
