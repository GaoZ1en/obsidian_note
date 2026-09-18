# 有限混合切割研究稿：单文件阅读版

汇集本包六篇 notes。公式编号在每篇内独立；来源和证明状态见 SOURCE_MANIFEST.json、CLAIMS.json。



---

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

由这个独立记录生成相应的 $\mathfrak A_B(R)$ 与完整源关系 $\mathcal R_B$；它们不再是额外独立输入。非特征 on-shell 高阶 jets 由 PDE 递推；只保留未由其余数据决定的 incoming/null seeds、原 regularity 与 off-shell 系数准入。重建方法及条件见[修订证明 R0–R2](../audit_repair_2026-09-18/repair_proofs.md)；若相应存在性/域估计未完成，生成符号不提供证明。

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


---

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

继而对时间微分逐阶递推。这些 on-shell 高阶 jets 是派生结构，不作为独立输入保存；共同 smooth source/PDE 与最低阶 Cauchy 或 conormal matching 必须保留。该删减不适用于 off-shell observable 系数核，亦不替代 null integration seeds 或一般 corner-extension 证明。若与静态 D wall 相交，要求 $\partial_t^n\phi(t_0,e)=0$；N/Robin 则对 $B\phi=0$ 微分，加入源时右侧为 $\partial_t^nb$。这些条件相互约束 $q,p,f$，不是可以分别忽略的“端点项”。

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


---

# 微扰、复合场、逐区域重整化与尚未闭合的 Ward 条件

本篇将已经构造的结果与真正仍需证明的命题分开。保持同一个 polynomial observable class，不用“再取一个最大闭包”掩盖问题；也不把“选一套相容 prescription”写成已经证明这套 prescription 对全部边界 stress sources 存在。

## 1. 自由量子代数的精确含义

每个完整 standalone realization $B$ 给出 $E_B$ 和一个允许的 Hermitian positive-frequency bisolution $W_B$。它们满足

$$W_B-W_B^T=iE_B. \tag{1.1}$$

在固定分布系数多项式上，

$$F\star_{W_B}G=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W_B^{\otimes r}G^{(r)}\rangle. \tag{1.2}$$

每个普通多项式对只有有限 contractions；$[[\hbar]]$ 是形式完成。允许的系数排除所有外腿同时未来或同时过去的 causal covectors。Wick edges 的定向保证收缩存在且输出满足同一条件。三重乘积的不同括号化枚举同一组 contractions，因此结合律成立。

Cap-graph region 的 $W_B$ 可以由其独立 parent strip 的 $W$ 限制得到。其内部和实际 timelike side 上的局部定向性质继承区间证明；caps 处没有额外承诺 sharp composite restriction。此处使用的是同一个 region 的一种态／Wick representative，不是宣称不同 parent extensions 给相同态。

有限谱 cutoff 的每条腿都是真实 homogeneous solution；若一个 polynomial 在全部区域解上为零，则沿这些腿的全部导数为零。用原区间证明的 normal-distribution-topology 收敛，将有限 cutoff 的结论传到 $W_B$，得到完整 vanishing ideal 的两侧 $\star$-ideal 性。这里继承既有的区间分析输入，不将数值 mode truncation 当成证明。[N1 §9]

### 1.1 为什么完整 polynomial reconstruction 超过 CCR

令 $Q_f=\frac12\int f\phi^2$。其完整乘积是

$$\begin{aligned}
Q_f\star_WQ_g={}&Q_fQ_g+
\hbar\iint f(x)g(y)\phi(x)W(x,y)\phi(y)\,dxdy\\
&+\frac{\hbar^2}{2}\iint f(x)g(y)W(x,y)^2\,dxdy.
\end{aligned}\tag{1.3}$$

有限 mixed sewing 的 kernel equality 同时比较三项，包括跨区 double contraction。Coefficient labels 在新 smooth collars 上的双射给整个已选 polynomial class，而不是只给线性 field generators。

但是 $(1.3)$ 不能令 $x=y$ 得一个有限 $W(x,x)$。局域 $:\phi^2:$ 是已选择 subtraction 的新复合场标签，ordinary product 与局域 coincidence limit 是两种操作。

### 1.2 哪些观测量不自动被加入

本稿包含允许的 smooth spacetime-smeared jet polynomials、free stress/current、已构造的 charges 和合法 timelike traces。一个内部 null trace $\phi|_{u=0}$ 的泛函导数含 $\delta(u)$，其 null conormal 与相关 wavefront 可能相交。它不由自由 timelike-trace 定理覆盖。

每个有限厚度 smooth detector 都可属于原类，厚度趋零的极限却未必仍属于它。Weyl exponentials、任意 spectral projectors、Hilbert factorization、entropy 和一般 modular operators 也不是本有限 polynomial theorem 的结论。这里不为这些对象另造未验证的 completion。[1，N1 §§9、14]

## 2. Classical polynomial interactions：确实可以逐阶接入

取 smooth、适当紧支撑的 bulk interaction

$$S=S_0-\lambda\int g(x)P(\phi(x))d^2x, \tag{2.1}$$

边界仍为线性 D/N/Robin。选定完整 incoming data 后，retarded perturbative field 满足

$$\phi=\phi_0-\lambda G_B^R\bigl(gP'(\phi)\bigr). \tag{2.2}$$

设 $\phi=\sum_{n\ge0}\lambda^n\phi_n$，则

$$\phi_n=-G_B^R\left(g\,[\lambda^{n-1}]P'\Bigl(\sum_{r<n}\lambda^r\phi_r\Bigr)\right),\quad n\ge1. \tag{2.3}$$

每阶只有有限次先前 fields 的乘积，次数可随阶数增长。若 $P=\phi^4/4!$，

$$\phi_1=-\frac16G_B^R(g\phi_0^3),\qquad
\phi_2=-\frac12G_B^R(g\phi_0^2\phi_1). \tag{2.4}$$

对任意 finite admissible mixed program，零阶响应已相同。假定所有低阶 fields 在 smooth assembly 下相同，则 (2.3) 的 source 也相同；新的 complete-source reconstruction 给该阶相同。由归纳得到全部 classical formal coefficients 的程序独立性。

沿背景的线性化算子为 $L_\phi=L+\lambda gP''(\phi)$。其 Green expansion

$$G_\phi^\rho=G^\rho-G^\rho V_\phi G^\rho+
G^\rho V_\phi G^\rho V_\phi G^\rho-\cdots,\qquad \rho=R,A, \tag{2.5}$$

同样逐阶重建，故相应 Peierls bracket 一致。对平滑 local insertions 的 retarded-tree construction，其每阶系数是有限 field-degree 的分布核；admissibility 使用与 causal perturbation theory 相同的定向收缩条件，不是把整个任意 nonlinear functional 类自动量子化。

这不证明实际 $\lambda$ 下级数收敛。对于给定有界数据和有限时间，局部存在可由 (2.2) 在选定范数球中的 Volterra/contraction estimate 得到；其时间窗依赖 $P'$ 的 Lipschitz bound。全局 nonlinear existence 不是这里有限-cut theorem 的必要前提，也没有被本文宣称。

## 3. 一个能直接构造的 all-order 子问题：二维无导数势顶点

### 3.1 明确的输入范围

以下讨论是有限时间窗内的二维平直 scalar、静态 D/N/有限 Robin sides，以及不含 spacetime derivatives 的 finite polynomial vertices。每个 evaluated insertion 采用允许的 smooth test；在真实 temporal caps 附近不把 sharp characteristic-function action 当成代数元素。对于某个较大的 interaction action，可先在允许的局域测试域上给出这些 time-ordered recipes；完整 algebraic adiabatic/time-slice completion 是另一项说明，不能由下面的图估计自动推出。

每个 standalone problem 先选择其实际 $W_B$-normal-ordering。Vertex self-contractions 因此被固定。改变成共同局部 subtraction 时，需要第 4 节的有限转换，不能忽略 image terms。

### 命题 P：有限 potential graphs 的局部可积延拓

在上述范围，任意固定阶、没有导数顶点的 scalar contraction graph，其系数在所有内部或静态反射边界碰撞处局部可积。固定 self-contraction prescription 后，保持最小 scaling degree 的多顶点 extension 唯一，不需要额外的 primitive divergent multi-vertex delta counterterm。

**证明。** 二维平直 massive propagator 的短距离奇性是对数。静态 D/N reflection 给 direct 与 image 对数；Robin 的高频 reflection coefficient 与 Neumann 相差低一个频率阶，故不增加领先的奇异阶数。有限时间、固定正长度 strip 内只出现有限条可达 reflection branches。等价地，区间高频 spectral expansion 给这些对数与较正则的余项。[N1 §12.4；2]

在光锥坐标中，每条 branch 的领先项可局部写成 $\log|\ell(X_i,X_j)|$ 加有界的 $i0$/step 部分；$\ell$ 是非平凡的线性 null separation。任意有限 $p$ 下，这些 log 函数在 compact 多顶点域属于 $L^p$。有限个 factors 的乘积由 Hölder 不等式属于 $L^1$。Robin remainder 和 finite image subtraction coefficients 不恶化这个结论。

当一组顶点整体趋于同一点或同一 boundary stratum，每个 factor 至多对数增长；其 scaling degree 为零，而任何真正多顶点 collision 的 transverse codimension 为正。因此该局部可积 distribution 已是保持此 scaling degree 的唯一 extension。加入 delta 或其 derivative 会提高 scaling degree，不属于该最小 prescription。对所有 partial collision 同样论证。证毕。

**这条命题没有声称“没有重整化”。** Self-contractions、局部复合场定义和允许的有限 normalization 已在选择 vertex prescription 时处理。它也没有包括 derivative vertices、多个独立 stress sources，或更高维模型。

### 3.2 真正的有限分区相容性

给一个已经存在的完整 graph coefficient $t_G$，用 finite smooth partition $\sum_i\chi_i=1$ 分解每个 vertex test。则

$$\langle t_G,\prod_a g_a\rangle
=\sum_{i_1,\ldots,i_n}\langle t_G,\prod_a\chi_{i_a}g_a\rangle. \tag{3.1}$$

和是有限的，L1 延拓唯一，所以“先延拓再分区”和“在这些 smooth charts 中延拓后求和”相同。不同先后分区的 refinement 也给同一式子。将自由 finite-cut theorem 已重建的 kernels 代入，每条 edge 包括 cross-region edge 都一致，故此子问题的图结果与 mixed sewing 程序相容。

若只是计算已经局部可积的数值图积分，可以用 indicator functions 将积分域作有限分割，Fubini 仍成立。**这只是一条积分 bookkeeping identity，不把 $1_{R_i}g$ 升级成一个合法的 sharp null/spacelike observable insertion。** 真正的代数标签和带 contact 的 Ward 操作使用 smooth collar partitions。

因此，本节建立的是可逐区域计算的潜势图 prescription 及其有限分区／重建相容性；并没有证明“只输入原 closed algebras 的乘法，自动得到全部跨区 renormalized amplitudes”。Cross-region contractions 必须在 opening 后实际计算。

## 4. 独立 finite conventions 的转换，不能省略插入

在同一动力学中，若 $W'=W+s$、$s$ 是允许的 smooth symmetric bisolution，则

$$\alpha_s=\exp\left(\frac\hbar2\langle s,\delta^2/\delta\phi^2\rangle\right),
\quad \alpha_s(F\star_WG)=\alpha_sF\star_{W+s}\alpha_sG. \tag{4.1}$$

对局部常数差 $c$，

$$\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2,
\qquad \alpha_d\alpha_c=\alpha_{c+d}. \tag{4.2}$$

所以两侧都写成“$\lambda\phi^4$”不代表 finite mass/vacuum/composite terms 已一致。它们需要 conversion tables，而不只是相同的耦合字母。

更一般地，同一个传播问题内的 finite-renormalization theorem 给

$$S_{\mathcal R'}(V)=S_{\mathcal R}(Z(V)),\qquad
F\mapsto DZ(V)F. \tag{4.3}$$

多个独立 local insertions 的 source expansion 还包含更高 derivatives $D^kZ$ 的 contacts。Ordinary $\star$-products 与将这些 insertions 再作独立 time ordering 是不同要求。[3]

在完整 opening 中，不能令 $s=W_{\rm out}-W_{B_i}$ 直接套 (4.1)：它们通常连 antisymmetric parts 都不同。正确的顺序是改变选中面的物理 action/domain，重建 $G_{\rm out},W_{\rm out}$，再重写相同物理 composite recipe。Selected closing terms 及其专有 counterterms/contact labels 一起删除；留下的任何项都是真实 defect data。

例如，用某个已声明的局部 subtraction $H$ 定义的 $:\phi^p:_H$，在 $W_B$ symbols 中为

$$\sum_{r=0}^{\lfloor p/2\rfloor}
\frac{p!}{(p-2r)!2^rr!}\hbar^r d_B^r\phi^{p-2r},
\qquad d_B=(W_B-H)|_{\rm diag}. \tag{4.4}$$

该式只在相应 diagonal subtraction 已定义的域内使用；真实边界处需 boundary-compatible prescription。删除 closing wall 后应重算 $d_{\rm out}$，包括 finite image contributions。不能仅把原来 W-normal symbol $\phi^p$ 原样相加。

## 5. 为什么 stress 是另一个问题：单顶点 contact 的完整计算

### 5.1 局部 pole

在二维局部 Euclidean 坐标中，只为计算短距离系数，取

$$C(z,w)=-\frac\hbar{4\pi}\log\!\left(\mu^2(z-w)(\bar z-\bar w)\right),
\qquad \mathscr T(z)=-\frac{2\pi}{\hbar}:(\partial_z\phi)^2:. \tag{5.1}$$

$\mathscr T$ 是一个归一化的局部 chiral label，不是直接把整个 massive Lorentzian stress 换成二维 CFT。对任意有限多项式 $P$，单、双 contractions 给

$$\mathscr T(z)P(\phi(w))\sim
\frac{\partial_wP(\phi(w))}{z-w}
-\frac\hbar{8\pi}\frac{P''(\phi(w))}{(z-w)^2}. \tag{5.2}$$

单 contraction 有两种选择；双 contraction 的组合因子是 $P''$，而不是人为插入一个质量 counterterm。完全收缩的 $\mathscr T\mathscr T$ 还给 $1/[2(z-w)^4]$，保留自由场中心项。[N3 的同一计算在本次重新核验]

用

$$\bar\partial\frac1{z-w}=\pi\delta^{(2)}(z-w),
\qquad \bar\partial\frac1{(z-w)^2}=-\pi\partial_z\delta^{(2)}(z-w), \tag{5.3}$$

并给一 vertex 权重 $-\int gP/\hbar$，其 pole contact 为

$$\bar\partial\mathscr T\big|_{\rm contact}
=-\frac\pi\hbar\left[g\partial P+\frac\hbar{8\pi}\partial(gP'')\right]. \tag{5.4}$$

于是

$$\Theta_{\rm loc}=\frac\pi\hbar g\left(P+\frac\hbar{8\pi}P''\right) \tag{5.5}$$

使 $\bar\partial\mathscr T+\partial\Theta_{\rm loc}$ 的这部分等于 $(\pi/\hbar)(\partial g)P$。常数 coupling 时为零；非恒定 coupling 时保留真实外源做功项。

对 $P=\lambda\phi^4/24$，局部 companion 的额外 polynomial 为 $\lambda\hbar\phi^2/(16\pi)$。**它不是一条可以无条件加进 Hamiltonian density 的公式。** 既有 canonical prescription 的 spatial stress correction 与这个 chiral contact 使用不同表示；必须连同 normalization 与 source contacts 一起转换，不能混用符号或把 trace anomaly 强行设零。

### 5.2 Smooth collar 分区真的消去人工 source

若 $g_1+g_2=g$ 是 smooth partition，则 (5.4)–(5.5) 对 vertex test 线性，故

$$\Theta_{\rm loc}[g_1]+\Theta_{\rm loc}[g_2]=\Theta_{\rm loc}[g],
\quad \partial g_1+\partial g_2=\partial g. \tag{5.6}$$

所有人工 partition derivatives 抵消，包括 $P''$ contact。该式对任意 finite smooth partition 和 refinement 成立，因而可用于不同 causal-type cuts 的共同 collar。若换成 sharp steps，$\delta'\times1_R$ 没有自动定义；本计算不允许略过这一点。

局部 polynomial Ward rule

$$L_\epsilon=\epsilon\partial_z-\frac\hbar{8\pi}\epsilon'\partial_\phi^2 \tag{5.7}$$

还满足 $[L_\epsilon,L_\eta]=L_{\epsilon\eta'-\eta\epsilon'}$，并与常数 Wick change 相容。代码在不同 polynomial degrees 上重算这两个等式。这是局部 single-stress normalization 的一致性，不是完整多重 stress Ward theorem。

## 6. Power counting 把欠账缩到哪里

设一组 collision 含 $s$ 个 kinetic stress insertions、$n$ 个无导数 bulk insertions，另有 $b$ 个分别标记的 linear boundary histories。每个 stress 最多两次 derivatives；每个 linear boundary history 最多一次。

相对于可支持在该 collision 的 delta，剩余的 scaling margin 为

| collision | ordinary coefficient | 再取一个 stress divergence |
|---|---:|---:|
| interior | $2(n-1)$ | $2n-3$ |
| straight physical boundary | $2n-1$ | $2n-2$ |

推导只数 relative coordinates 和 derivatives：interior 有 $2(s+n-1)$ 个相对坐标；boundary 有 $2(s+n)+b-1$ 个；减去 $2s+b$，最后的 divergence 再减 1。

当 $n\ge2$，一个**仅支持在 full collision 的新 primitive Ward defect**被正 margin 排除，前提是所有 proper subcollisions 已按同一 bound 和 Ward prescription 处理。对于 single-stress sector，这将递推的未知局部 normalization 缩到 free/single-potential base families。它不是已经计算了那些 boundary base families。

当 $n=1$，boundary divergence margin 为零。它容许 delta contact；即使 ordinary coefficient 无需新 subtraction，也不能推出其边界 Ward identity 没有新项。

具体例子是

$$G_D^E(\tau;r,s)=-\frac1{4\pi}
\log\frac{\tau^2+(r-s)^2}{\tau^2+(r+s)^2},
\quad \partial_rG_D^E|_{r=0}=\frac{s}{\pi(\tau^2+s^2)}. \tag{6.1}$$

右端对 $(\tau,s)$ 局部可积，但 $\int d\tau\,s/[\pi(\tau^2+s^2)]=1$，且 $s\to0^+$ 时趋于 $\delta(\tau)$。删除它会改变 boundary force/current Ward identity。程序核验了归一化及其对光滑 test 的极限；这不是一个可忽略的小系数。

若把 $J_\partial(t)=:\dot q(t)\Pi(t):$ 当成一个新的独立 time-ordered source，它有两次 derivatives 却只有一个时间变量，不能按两个独立 linear histories 计数。本文不借上述表格声称这一更强 sector 已完成。

## 7. 完整相互作用 mixed theorem 的准确条件

在自由定理 F 上，若每个实际 standalone/intermediate realization 都已有：

- 相应 local insertions 的 renormalized time-ordered products；
- 完整 boundary stress/force/current contact normalizations 和实际需要的 Ward identities；
- 保留／删除 closing terms 的相同 physical rule，以及全体 composite insertions 的有限 scheme conversion；

那么相同 reconstructed kernels 加相同局部 extension rule，逐阶给

$$\Theta_P T_{P,n}^{\rm ren}(F_1,\ldots,F_n)
=T_{M,n}^{\rm ren}(\Theta_PF_1,\ldots,\Theta_PF_n). \tag{7.1}$$

再用于 relative $S$-matrices、formal inverse 和 insertion derivatives，得到 interacting algebra、Ward maps 和不同 finite mixed programs 的相容性。这是可用的**条件性比较定理**。第 3 节实际构造了无导数势图的部分输入；第 5 节实际算出了局部单 stress/单 vertex 的 contact；第 6 节确定了还需解的边界 base problem。

**仍未完成的是：在所有输入及中间 physical boundaries 上，构造满足全部所需 stress/displacement/contact Ward constraints 的统一 normalization，并证明所有 scheme-removal maps 的完整相容性。** 它不能通过在 (7.1) 前写“选择相容 prescription”而消失。

标准光滑无边界背景的 time-ordering 存在性，和 Hollands–Wald 在 spacetime dimension $>2$ 的 stress normalization 定理，都不能直接替代这个二维 reflecting-boundary base problem。[4，5] 本文既不宣称它不可能，也不将仍缺的证明隐藏为已完成。

## 8. 对当前物理目标的结论

自由量子混合切割已包含实际能量/current observables、有限 Wick contractions 和弱 flux。Classical polynomial perturbation 可按 (2.3) 逐阶组合；二维无导数 potential graph 延拓及 finite smooth partition 也已给出构造。完整 interacting stress/current Ward-compatible composition 还没有达到同样无条件的证明等级。

这不是要求改 observable class 或改 symmetry definition，也不是要求转去 nonlinear BC。它是在既定类中，继续完成一个具体的 local boundary contact construction。

## 文献与输入

[1] Hawkins–Rejzner–Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3. <https://arxiv.org/html/2312.15203v3>

[2] Dappiaggi–Nosari–Pinamonti, *The Casimir effect from the point of view of algebraic quantum field theory*, arXiv:1412.1409. <https://arxiv.org/abs/1412.1409>

[3] Brunetti–Dütsch–Fredenhagen, *Perturbative Algebraic Quantum Field Theory and the Renormalization Groups*, arXiv:0901.2038. <https://arxiv.org/abs/0901.2038>

[4] Hollands–Wald, *Existence of Local Covariant Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0111108. <https://arxiv.org/abs/gr-qc/0111108>

[5] Hollands–Wald, *Conservation of the stress tensor in perturbative interacting quantum field theory in curved spacetimes*, arXiv:gr-qc/0404074. <https://arxiv.org/abs/gr-qc/0404074>

[N1] 附带输入 `standalone_binary_observable_sewing.md`，特别 §§9、12。

[N2] 附带输入 `symmetry_and_closed_sewing.md`，特别 §12。

[N3] `GaoZ1en/obsidian_note`, *1+1 phi4 quantum observable algebra gluing.md*，blob `7cd6796e6ed661bbcb6d0dea4d9db200e85cb2ee`，已读取 *Which Collisions Need New Contact Data* 与 *A Stress Contact with One Quartic Vertex*。本文不将该 note 的两 vertex／两 loop benchmark 误称为完整全阶 boundary Ward theorem。


---

# 有限混合切割中的 symmetry、能量与 flux

本篇不重新定义 proper gauge，也不扩大已选择的 symmetry 名单。目标是证明既有的局域变分／Ward symmetry 如何与三种实际接口的数据一起组合，并明确每种 charge 的成员资格和证明范围。

## 1. 运输的是完整 sourced problem

令实际场变换为 $\Phi_g(\phi)=T_g\phi+s_g$，其中 $T_g$ 来自允许的时空/bundle map，$s_g$ smooth。对同一个 theory 的 symmetry，要保持 bulk action（允许已记录的局域 divergence）、真实剩余 boundary action、耦合和允许数据域。Changing $B$、moving a cap、改变 $J$ 则是完整问题之间的 covariance。

有限 mixed sewing 中额外需要运输 cap 数据和 junction jets。Spacelike 上运输完整 Cauchy jet；null 上运输全部 incoming traces、相交 seeds 和其递推。只运输 $q$ 而遗忘 null transverse seed，会将一个 smooth symmetry lift 变成可产生 kink 的错误数据变换。

若 source pairing 满足 $\langle f',T_gu\rangle=\langle f,u\rangle$，则 $f'=T_g^{-*}f$。由完整 sourced problem 的唯一性，

$$G_{R'}^{R/A}T_g^{-*}=T_gG_R^{R/A},
\qquad E_{R'}=T_gE_RT_g^*. \tag{1.1}$$

Affine shift 运输背景；对 variations/quartet 使用其线性部分。它不改变 (1.1) 的类型。

在固定 Robin chart $b=\Pi-\sigma q,r=-q$ 中，内部正交变换给

$$b'=Ub+(U\sigma-\sigma U)q
=Ub+(\sigma U-U\sigma)r,
\qquad r'=Ur. \tag{1.2}$$

因此 opened covariance 允许 source–response mixing。$[U,\sigma]\ne0$ 时它不是原 closed Robin theory 的 stabilizer，但 selected Robin potential 完整删除后可以成为输出的 symmetry。D/N/Robin 混合 parametrization 并不改变几何匹配的条件

$$U_2J=J'U_1. \tag{1.3}$$

## 2. 新的 mixed naturality statement

设 $P$ 是一个有限 admissible mixed program，$gP$ 是将其几何、sources、boundary data 和 Ward labels 全部运输得到的程序。令 $\Theta_P$ 为独立自由重建同构。则

$$\Theta_{gP}\,\widehat\alpha_{g,P}
=\alpha_g\,\Theta_P. \tag{2.1}$$

**证明。** 每一步运输区域 action identity 和正确类型的数据。完整 sourced reopening 引理说明：从已 closed 的中间 theory 再次取源，与原 pieces 的 sourced calculation 一致；故该引理在运输后仍成立。归纳得到最终 kernel identity (1.1)。局域 affine substitution 保持固定 polynomial degree、允许的分布系数和 smooth collar identifications。每条 Wick contraction、equation ideal 也被运输，得到 (2.1)。

因此 T/C、T/N、C/N interchange 对这些 symmetry maps 自然。此证明针对每个实际有限变换和需要的局域无穷小 derivation，不声称无限维 symmetry 群在旧 graph topology 上联合连续；旧 note 对该问题的反例没有被推翻。[N2 §§7–8]

若是纯 recutting，$\alpha_g$ 应换成 identity，比较为 $\Theta_Q^{-1}\Theta_P$。不要把这种 description change 误当成一个必有非零 Noether charge 的新物理运动。

## 3. 离壳 Ward identity 的分片装配

局域规则 $X_\epsilon[\phi]$ 满足

$$\delta_\epsilon\mathcal L
=\mathcal E\cdot X_\epsilon+\partial_\mu\theta_\epsilon^\mu
=\partial_\mu k_\epsilon^\mu,
\qquad j_\epsilon^\mu=\theta_\epsilon^\mu-k_\epsilon^\mu. \tag{3.1}$$

真实 boundary action 和 improvements 同时进入这条 identity。每份 bulk action 只计一次，selected closing action 的变分随 action 一起移除。内部 oriented face terms 在完整 matched jets 上相消，或给声明保留的 defect/improvement contribution；有限 junction 的端点项也必须计入。

于是每个 finite program 最终得到同一个 assembled Ward identity。这个线性变分恒等式本身不要求 CPS，也不自动证明所有 currents 的 sharp flux 都属于量子代数。

## 4. 一个真实非零的弱 flux，而非错误的全梯度零量

对光滑守恒 current，$-\int j^\mu\partial_\mu\eta$ 在 $\eta$ 整体紧支撑且没有 sources 时为零。因此不能把它单独当作一次局部跨面测量。

正确的有限窗口定义取一个跨面的 smooth step $h$ 和独立的 compact window $\chi$：

$$\mathcal F_j[\chi,h]=\int_R\chi\,j^\mu\partial_\mu h. \tag{4.1}$$

在相应 smooth test domain 内，它是原 polynomial algebra 的一个元素。它通常非零，并满足

$$\mathcal F_j[\chi,h]
=-\int_R h j^\mu\partial_\mu\chi
-\int_R\chi h\,\partial_\mu j^\mu, \tag{4.2}$$

其中 actual physical boundary 的项按允许 trace calculus 另计。第一项是观测窗口两端/边缘的 charge transport，第二项是源做功或 Ward defect。若 $\sum_i h_i=1$ 在 $\chi$ 的支持附近，则 $\sum_i\mathcal F_j[\chi,h_i]=0$；这正是人工分区 flux 的抵消。

当 $h=h_\varepsilon(t\pm x-c)$ 时，每个 $\varepsilon>0$ 都是合法的平滑探针。这个公式适用于 null cut 的 finite-thickness balance，却没有证明 $\varepsilon\to0$ 的 quantum limit 存在。Classical smooth currents 可另取普通 surface integral；quantum sharp limit 必须另证。

## 5. 自由解平移的 Peierls generator 与中心项

对于指定 smooth $s$、$Ls=0$，完整 current 为

$$j_s^t=s\dot\phi-\dot s\phi,
\qquad j_s^x=\phi s'-s\phi',
\qquad \partial_\mu j_s^\mu=sL\phi-\phi Ls. \tag{5.1}$$

在 outward spatial wall 上，charge 的流入率为

$$-\Pi_\phi s+q\Pi_s. \tag{5.2}$$

第二项来自 quasi-symmetry improvement，不能丢掉。Matched $s$ 和 $\phi$ 的完整 traces 使各 internal face 的两项同时相消。

若区域包含适合该计算的完整 compact spatial section，取 $\chi\in C_c^\infty(\mathbb R)$、$\int\chi=1$，

$$Q_s[\chi]=\int dt\,\chi(t)\int_\Sigma(s\dot\phi-\dot s\phi).
\tag{5.3}$$

其 off-shell functional derivative 为

$$Q_s^{(1)}=-\chi' s-2\chi\dot s. \tag{5.4}$$

令 $S(t)=K^{-1/2}\sin(\sqrt Kt)$，$E(t,r)=-S(t-r)$。积分分部得到

$$EQ_s^{(1)}(t)=\int dr\,\chi(r)
\left[\cos(\sqrt K(t-r))s(r)+S(t-r)\dot s(r)\right]=s(t). \tag{5.5}$$

因此

$$\{F,Q_s\}=DF[s],
\qquad [F,Q_s]_\star/(i\hbar)=DF[s]. \tag{5.6}$$

量子等式精确，因为 $Q_s$ 线性，无高阶 contractions。对两个 parameters，

$$\{Q_s,Q_r\}=\int_\Sigma(s\dot r-\dot s\,r)=c(s,r),
\qquad [Q_s,Q_r]_\star=i\hbar c(s,r). \tag{5.7}$$

在 finite mixed sewing 中，双方由相同 smooth field 和 current 重建，故 charge 与 cocycle 在实际 matched domain 上相加。这个中心项不是 gauge redundancy，也不是自动的 renormalization anomaly；本稿不进一步讨论 proper gauge。

若某个 diamond 的 total spatial integral 不紧支撑于允许的观测域，则 (5.3) 不被强行认定为该小区域代数元素。局域 current smearings 和 (4.1) 仍可使用。

## 6. 自由能量与真实 Robin surface energy

在静态 complete strip，

$$H_{B,\chi}=\frac12\int dt\,\chi(t)
\left[\int_\Sigma(\dot\phi^2+\phi'^2+m^2\phi^2)
+\sum_{e\in R}\sigma_eq_e^2\right]. \tag{6.1}$$

Bulk energy 的 outward loss 为 $-\Pi\dot q$，由 Robin $\Pi=\sigma q$ 与 surface-energy derivative 抵消。On shell，

$$H_{B,\chi}^{(1)}=-\chi'\dot\phi+2\chi K_B\phi,
\qquad E_BH_{B,\chi}^{(1)}=\dot\phi. \tag{6.2}$$

最后一步与 (5.5) 相同，用 oscillator evolution identity 证明。Static ground-state Wick prescription 中，quadratic total energy 的双正频或双负频 bilinear 为零，故在 on-shell polynomial algebra 中

$$[F,H_B]_{\star}/(i\hbar)=DF[\dot\phi]. \tag{6.3}$$

Selected closing energy 随 opening 删除；真正 remaining boundary 或 retained defect energy 保留。不能将不同 isolated ground states 的 zero-point energies 直接相加。

一个局部 flat-space subtraction 与 $W_B$ ordering 可有有限 c-number 差；它改变真空能零点，但不改变 generator。Absolute vacuum energy 仍需 state 和 finite convention，不能仅凭 $E$ 固定。

## 7. Classical interactions 的源做功，和量子剩余条件

取 $S=S_0-\lambda\int gP(\phi)$，定义

$$e=\frac12(\phi_t^2+\phi_x^2+m^2\phi^2)+\lambda gP,
\quad j=-\phi_t\phi_x,
\quad T^{11}=\frac12(\phi_t^2+\phi_x^2-m^2\phi^2)-\lambda gP. \tag{7.1}$$

精确 off-shell identities 为

$$\partial_te+\partial_xj
=\phi_t(L\phi+\lambda gP')+\lambda g_tP,
$$
$$\partial_tj+\partial_xT^{11}
=-\phi_x(L\phi+\lambda gP')-\lambda g_xP. \tag{7.2}$$

所以 varying coupling 时不能宣称 energy/momentum 都守恒。Smooth partition 的人工 derivatives 必须在全体区域和中抵消；真实 $\partial g$ 留下。代码直接从 Lagrangian 变量检查两式。

量子情况下，ordinary Wick products 的闭合不自动固定 time-ordered stress contacts。本包 `03_quantum_and_renormalization.md` 给已算出的 single-vertex correction 和尚待构造的 boundary base normalizations。只有完成这些 Ward 数据，(7.2) 的 renormalized 版本才可用于无条件的全部 interacting mixed sewing。

## 8. 保留的 symmetry 扩展与未作的推广

常内部 $G$ 的可逆 wall $J$ 在同一 bulk theory 中融合为 $J_2J_1$。在 ordinary filled contractible junction，transition product 必须为 identity；在 noncontractible cycle 上，surviving root group 是相应 holonomy centralizers 的交。重排非交换 $J$ 与改变括号不是同一件事。

本稿不把任意 canonical map、仅保存解集合的变换、或单个 quantum state 不变性混成物理 symmetry。也不声称一般 local Ward generators 已经积分成有限局域作用。Free affine covariance 是本次明确完成的有限层；interaction 保留其中保持实际 $P$、$B$ 和 renormalized Ward prescription 的部分。

参照附带 `sources/symmetry_and_closed_sewing.md`，特别 §§2–5、8、10–12；本篇新增的是 typed cap/junction data 和 finite mixed-program naturality，不再借旧 $\Omega$-gradient 定义 observables。


---

# 反例审查、修复记录与证明状态

审查对象是本包的有限混合切割构造，以及它从先前 standalone/symmetry notes 继承的命题。下面记录实际发现的过强表述、反例、修复和未解决输入。它不是独立同行审稿，也不是“数值通过即定理正确”的声明。

## 1. 审查后保留的核心

保留固定 polynomial Peierls/Wick class、局域 variational/Ward symmetry、真实 physical boundary 的 standalone ontology、selected opening 和每次输出 closed theory。主自由定理限于二维平直静态 strip 的 admissible cap-graph programs，以及满足同一已验证 boundary-kernel 条件的有限 multiplet。

三种 cut 使用三种实际机制。有限 mixed-program independence 通过完整 sourced reconstruction、junction regularity 与重新取源证明，而不是只引用一张已全部打开的网络中的 Schur elimination。

## 2. 实际攻击与修复

### A1. 用最终 global Green kernel 定义每个 region，再“证明”重建

**攻击。** 若区域核本来就是未知最终核的限制，后续相等只是定义。

**修复。** 每个 standalone cell 先由自己的 parent strip、实际 D/N/R 和 cap graphs 独立构造核。Parent operator 使用该区域长度/边界，而不是最终输出的传播子。只有 causal-convex restriction 使用这个独立 parent；timelike sewing 会改变原 boundary realization 和 commutator。之后才与独立最终 operator 比较。

**剩余限定。** 这仍是带 action/field/geometry labels 的 composition，不是裸抽象代数的 universal pushout。

### A2. 全部 face 数据逐面光滑，所以有一个光滑区域解

**攻击。** 相交的面可能指定矛盾 Taylor coefficients；null sheet 的 transverse constants 也可能漏掉。

**修复。** 明确 Cauchy、null ODE 与 wall corner recursions，并要求 off-shell smooth extension 的相容余项界。由这样的 lift 使方程 residual 在 incoming cap 平坦，再用独立 Green map 构造解。不能把不相容 sources 拆成两个分别“应该光滑”的响应。

**没有宣称。** 任意无限 jets 有连续线性 extension，或者整个旧 history-family 的 Fréchet smoothness 已恢复。

### A3. Null field/flux matching 已经保证 smooth assembly

**反例。** 主 note (4.2) 的 massive kink 满足 $L\phi=0$、$[\phi]=0$ 和退化 flux balance，却有 $[\partial_u\phi]=1$。

**修复。** Incoming junction 的 transverse seeds 必须匹配；PDE 递推随后传播全部零 jumps。Code 同时核查有限级数的实际末项 residual，未把有限 truncation 假装成精确解。

### A4. 三种 primitive operations 各自结合，所以彼此自动交换

**攻击。** 独立 associativity 不给 T/C、T/N 或 C/N interchange，更不证明 mixed junction 数据一致。

**修复。** 对所有相容 bulk/boundary/incoming probes 比较完整解；每步 closed 后重新求下次响应。独立源比较才给两种 mixed programs 的同一最终场。旧 finite-successive theorem 只承担固定最终匹配后的消元一致性。

### A5. 重开时只比较无源 $G$ 已经够了

**攻击。** 后续 sewing 需要 $H,\rho,D$，单一 homogeneous $G$ 的数值比较不足。

**修复。** 完整 lemma 对全部 sources 成立。代码后续增加了 actual exterior $(q,\Pi)$ outputs，分别测试 bulk source 和两端 boundary sources，并比较真正 closed AB/BC 的两种三片括号化。不是只在 bulk 内采样 $u$。

### A6. 原 Robin sources 相加为零就给 transparent seam

**反例。** 它留下 $\sigma_1+\sigma_2$ 的 surface potential，连续核的分母与 transparent answer 不同。

**修复。** 统一在几何 $(q,\Pi)$ 上匹配，closing action 完整移除。若保留，明确标作 defect。所有尚存 exterior $B$ 不动。

### A7. 任意 finite line arrangement 的所有中间区域都自动允许

**攻击。** 非凸母区域或任意 cells 子集的 union 可产生不属于 cap-graph 类的形状。无限反射积累在某些运动尖楔中也不因 cuts 有限而消失。

**修复。** 矩形/凸母区域的逐线切割及其反向程序给明确的正面类；一般 cap graphs 可先作有限竖直细分。每个中间 union 必须独立满足类定义。加速墙、pinching wedges、高维 glancing/corner geometry 不在本无条件定理内。

### A8. $\int j\cdot d\eta$ 是一个非零局部跨面 flux

**发现的问题。** 对整体 compact $\eta$ 和无源守恒 current，它在 on-shell quotient 中为零，不能作为一次独立局部测量。

**修复。** 改成带独立窗口的 $\mathcal F_j[\chi,h]=\int\chi j\cdot dh$。它通常非零，与窗口边缘的 charge transport 和真实源项满足完整 Stokes identity。新增数值检验同时确认非零值与该恒等式。

### A9. Free Wick fields 已存在，因此 sharp null composites 也存在

**攻击。** Null conormal 可与 Wightman wavefront 相交。

**修复。** 保留原 bulk-smoothed class 和已验证 timelike traces。Null 数据用于经典 PDE reconstruction；quantum flux 使用 finite smooth windows。没有声称 sharp limit 存在，也没有用一个新函数类把问题藏起来。

### A10. Potential 图局部可积，因此完整 stress Ward identities 成立

**反例。** $s/[\pi(\tau^2+s^2)]$ 局部可积，却在 boundary limit 变成 delta。Power counting 在 single-potential boundary divergence 上恰好允许这种 contact。

**修复。** Potential graph 延拓 theorem 与 stress/contact problem 分开。显式保留单 stress 的 $P''$ contact；更高阶的 primitive-defect 排除只是低阶 normalizations 已固定后的归纳，不是那些 normalizations 的存在性证明。

**仍开放。** 全部 reflecting-boundary stress/force/current base contacts 的兼容选择，及其在每个真正 closed intermediate 上的构造。本包没有将这项标成完成。

### A11. 独立区域 normal ordering 只要 coupling 相同就能粘

**反例。** $\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2$，连一次有限 convention change 都会改变 mass/vacuum/insertion terms。

**修复。** 同一 dynamics 内使用 finite maps 及 $DZ$、必要时 $D^kZ$ 运输 contacts。Opening 改变 dynamics，须重新构造 W 与 image contributions，不能直接用 $W_{\rm out}-W_B$ 作 smooth Wick shift。

### A12. 改变 cuts 的 indicator 可以与任意 contact distribution 相乘

**攻击。** $\delta_\Gamma'\,1_{R_i}$ 没有一个由图示决定的标准乘积；sharp spacelike/null action label 还可能不在既定函数类。

**修复。** Ordinary L1 potential graph 的分区只是可积函数的 bookkeeping；actual observables、复合插入和 Ward contacts 使用 smooth joint collar partitions。独立中间 theory 的完整 action-cutoff/time-slice extension 不从 L1 estimate 自动得到。

### A13. 任意非平凡 $J$ 都是光滑透明 junction

**攻击。** Filled contractible loop 上的非平凡 transition product 不能描述普通单值 multiplet。

**修复。** 检查每个 ordinary junction 的 transition cocycle；非平凡 noncontractible holonomy 可以保留，puncture/defect 则需明确改变问题。Orientation reversal 同时反转 side occurrence 和 $J$，而非任意补一个 sign。

### A14. 数值 checks 覆盖了所有 finite mixed programs

**攻击。** 几个核值、一个 manufactured solution 或 polygon arrangement 不是所有 PDE 数据的证明。

**修复。** Results 分别标记 symbolic、continuous kernel、quadrature、geometry 和 counterexample。数值 T→N 是实际构造的复合核；N→T 的全体程序声明来自解析 complete-source theorem，不假装另有未实现的通用 polygon solver。所有 continuum、distribution-topology 和 renormalization 输入在正文单列。

## 3. 检查记录

初稿执行了 68 项检查。审查后删除/替换了一条无内容的同式相减检查，加入 massive kink、windowed flux、compact-smeared Peierls generators、log-graph 分区，以及真正的 exterior quartet 和所有 bulk/boundary source blocks。最终脚本执行 **86/86 通过**。

非零 counterexample discrepancy 是预期的成功检测，不是 numerical error。普通等式的残差与反例差值不能混为一个“最大误差”。机器记录见 `../results/checks.json`；历史与最终日志均保留。精确脚本和依赖版本一并打包。

## 4. 最终证明等级

| 结果 | 状态 | 限定 |
|---|---|---|
| 二维 cap-graph causal kernels、真实 linear B | 本稿证明，使用既有静态区间输入 | 正质量、静态直墙、相容 incoming/jet domain |
| Null smooth matching 及 massive kink 排除 | 本稿证明和反例 | 完整 transverse seeds 必须保留 |
| 有限 mixed-program reconstruction/interchange | 本稿证明 | 每个 intermediate admissible、同一最终 action/domain |
| 既定 polynomial Peierls/Wick reconstruction | 本稿证明，继承区间 Q | 不含任意 sharp null quantum traces |
| Free affine symmetry naturality、energy/shift charges | 本稿证明/迁移并重推 | 合法 support；不分类 gauge |
| Classical polynomial formal response | 逐阶构造 | 不宣称实际耦合级数收敛 |
| 二维无导数 potential graph 延拓与 finite partitions | 已构造的图级结果 | self-contraction prescription 固定、允许 smooth tests |
| 单 stress/单 potential 局部 contact | 显式计算 | 不等于完整 massive boundary stress |
| 完整 all-order interacting Ward-compatible sewing | 条件性比较定理 | boundary base normalization 存在性尚未构造 |
| 任意 curved/higher-dimensional nongauge finite cuts | 未证明 | 需要相应 PDE、trace、renormalization 输入 |
| Independent states/Hilbert factors 的普遍粘合 | 未声称 | 不是当前 observable-algebra 定理 |

## 5. 未解决项的具体落点

最直接的下一项证明对象不是更大的代数或新的 symmetry，而是线性 physical B 下、**一个 stress/current 插入与一个 potential vertex 在边界碰撞的完整 Lorentzian contact family**，连同 force/source-work normalization。需要将该 base family 与 bulk OPE contact、boundary field equation 和 opening removal 同时匹配。Power-counting reduction 随后可用于更高阶递推，但不能反向替代它。

若进一步扩大几何，须分别处理非静态 timelike walls、更多维数的 characteristic corners 和 one-sided microlocal calculus。本包不将这些要求包装成已经完成的一般 non-gauge 定理。


---

# 阅读本包所需的最少数学背景

## 1. 一个“完整 region”究竟是什么

不是只给一个时空子集。还要说明作用量、真实 physical boundary conditions、允许的 incoming data 和需要比较的场标签。Closed 指这些信息使动力学问题完整，不指几何上没有边界，也不指一切物理解都固定为零。

每次 opening 只改变被选中的 timelike boundary。下一次才重新引入那次所需的 source；不保存一个永久打开的网络。

## 2. 为什么需要 source，而不只是解

知道两个理论都满足同一条无源 equation，不能直接计算 observables 的括号。Peierls bracket 问的是给 action 加一个很小的 observable 后，场如何响应。必须保留 bulk 与 boundary probes；完整 retarded-minus-advanced response 才给 Poisson structure。

比较所有 smooth probes 的响应，就比较了作为 distribution 的 Green kernel。有限几个数值 samples 不能替代“所有 probes”的定理。

## 3. 三种面的数据数量为何不同

对二阶波方程，一个 spacelike cap 的场值和未来法向导数是独立 Cauchy data。Timelike wall 则先选一套封闭边值条件，opening 释放其源后观察相应响应。Null normal 同时 tangent，因此其所谓 normal flux 不给第二份独立控制；缺的 transverse integration constants 必须来自完整 characteristic geometry 和相交处数据。

“Corner jets”只是同一 smooth field 在交点的 Taylor coefficients。它们满足 PDE 递推，不是一套从几何角点凭空增加的物理自由度。

## 4. Closed quadratic form 不是辛形式

区间上的

$$a_B(u,v)=\int(u'v'+m^2uv)+\sum_e\sigma_eu(e)v(e)$$

是正的能量型二次型。Dirichlet 条件放在允许函数的域中，Robin 放在 surface term 中。它确定空间算子 $K_B$ 和边界实现。

这与 CPS 的反对称 $\Omega$ 不同。这里从 action/能量型 operator realization 得 Green functions，再定义 Peierls bracket；没有用 $\Omega^{-1}$ 作为 observable admissibility 的入口。

## 5. Wavefront 条件在防什么

一个 distribution 不只可能在某点奇异，还可能沿特定频率方向奇异。Wavefront set 记录这些位置与方向。如果两个奇异频率在同一点恰好相消，直接乘积可能没有定义。

当前 polynomial coefficients 的限制排除所有外腿同时未来或同时过去的 causal directions。Positive-frequency $W$ 的两端有相反方向，故允许 Wick contractions。Timelike trace 的 conormal 是 spacelike，常可安全使用；null conormal 本身就是 characteristic，不能自动安全 restriction。

不需要先掌握整个 microlocal analysis 才能读主体证明；但“某个 sharp trace 存在”必须由这里的检验或独立模型计算支持，不能只靠画图。

## 6. Renormalization 的三件事

第一，局部 Wick field 并非直接令 $W(x,x)$ 成为有限值，而是给 coincidence prescription。第二，相互作用 time ordering 需要将图 distributions 延拓到 collision sets。第三，不同 finite conventions 如何表示同一个物理 interaction 和同一个 insertion，需要明确 conversion maps。

Ordinary $\star$-product、time-ordered product 和将两个已重整化场再取 sharp coincidence 是不同操作。一个操作已定义，不代表另两个自动定义。

## 7. 什么叫条件定理

“若每个 intermediate problem 已有满足 boundary Ward identity 的 time-ordered products，则 sewing 保持它们”是一条比较定理。“这些 boundary products 确实存在”是另一条存在性定理。前者可以已经证明，后者还没有构造出来。

本包的 claim ledger 刻意保留这个区别。它也区分自由精确定理、形式逐阶结果、独立计算核验和真正的反例；不会用一张通过测试的表替代存在性证明。
