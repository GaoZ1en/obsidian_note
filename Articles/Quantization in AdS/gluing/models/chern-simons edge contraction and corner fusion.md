# Chern–Simons edge contraction and corner fusion

**结论：无标记辅助树边的收缩，在明确的 gauge 与拓扑条件下是 flat-connection presentation equivalence；带已定义 holonomy sectors 的端口合并可由 quasi-Hamiltonian fusion 描述。两者都不是一般的几何 edge-to-point 极限定理。** Fusion 保留乘积空间上的内部数据，不把两个有电荷角点无损压成一个固定 charge label。Scalar 与有传播模的 YM 则不能以有限 corner data 替代完整 edge trace/response。

本笔记只研究这个收缩问题。时间始终不参与识别；不构造完整 regional gauge operator algebra。下面分别给出直接证明、外部定理输入、符号检查及尚未建立的箭头。

## 1. 先定义收缩的是哪个对象

空间维数为二，时间区间为 $I$，$e=[c_1,c_2]$ 是一条空间边；它在时空中扫出 $I\times e$。把 $e$ 变成空间点后留下的是一条世界线，不能把时间 histories 也自动删除。

| 操作 | 实际定义 | 可以得出的结论 |
|---|---|---|
| 撤去 artificial cut | 释放共同 history 并重构原来的同一个 $\Sigma$ | 是现有 sewing 问题；scalar 也可以成立 |
| 收缩辅助 CW/ribbon-graph 树边 | 改变同一 flat local system 的有限 presentation | §4 的等价定理 |
| 真正缩短几何边 | 指定 $(\Sigma_\varepsilon,h_\varepsilon)$、边界条件、作用量和算子域，再令长度趋零 | 需要独立的几何/PDE 极限；未由 sewing 证明 |
| 合并有标记的缺陷端口 | 保留 charge sectors、相对 transport、顺序及合成通道 | 在 §5 的额外条件下使用 fusion |

移动分割顶点、删除一个无物理意义的 subdivision，或用坐标把同一条边画得更短，都不自动构成 singular PDE degeneration。反过来，把一个真实接口及其传播作用压成点，也不能称为简单的重画分割。

这里的 **tree edge** 指选定森林子复形中的边，端点不同；它不必是 graph-theoretic bridge。一条属于环路的普通边也可以加入 spanning tree。应区别“收缩该环路中的一段区间”和“杀掉整个非平凡闭环”。

## 2. Scalar/YM 的 obstruction

### 2.1 角点 trace 不决定边 history

取普通 scalar、二维 Lipschitz 区域 $R$、无额外 point action。能量 Cauchy 数据为
$$
(u,p)\in H^1(R)\oplus L^2(R),\qquad
\gamma u\in H^{1/2}(\partial R).
$$
联合 trace 不是各条边 trace 的任意直积。相邻边在角点附近还须满足跨边的 $H^{1/2}$ 条件；这与额外 corner oscillator 是不同概念。

**命题。** $H^1$ 能量域上不存在与光滑函数点值一致的连续 corner evaluation；即使改用可取点值的光滑 trace 域，有限端点值或有限端点 jets 也不能确定整条边的 trace。

**证明。** 在二维点的邻域取径向函数
$$
u_\varepsilon(r)=
\begin{cases}
1,&r\leq\varepsilon^2,\\
\dfrac{\log(\varepsilon/r)}{\log(1/\varepsilon)},&
\varepsilon^2<r<\varepsilon,\\
0,&r\geq\varepsilon,
\end{cases}
\qquad 0<\varepsilon<1.
$$
在圆盘上
$$
\int |\nabla u_\varepsilon|^2\,d^2x
=\frac{2\pi}{\log(1/\varepsilon)},\qquad
\|u_\varepsilon\|_{L^2}^2\leq\pi\varepsilon^2.
$$
限制到固定角度的 corner wedge 只改变常数。可以在两个接合半径附近光滑化，保持点附近恒为一及相同趋零估计。因此点值为一而 $H^1$ 范数趋零，排除连续 evaluation。对于光滑 edge traces，任取非零 $b\in C_c^\infty(e^\circ)$：$q$ 与 $q+b$ 在两个端点附近完全相同，却是不同的边 histories。$\square$

一个可直接计算的响应反例是单位矩形上的静态 massless scalar：
$$
u_n(x,y)=\frac{\sinh(n\pi(1-x))}{\sinh(n\pi)}\sin(n\pi y),
\qquad n=1,2,\ldots.
$$
它满足 $\Delta u_n=0$，仅左边有非零 Dirichlet trace $q_n(y)=\sin(n\pi y)$，四个 corner values 全为零。但左边 outward response 是
$$
\Lambda q_n=-\partial_xu_n(0,y)
=n\pi\coth(n\pi)\sin(n\pi y),
\qquad
\langle q_n,\Lambda q_n\rangle
=\frac{n\pi}{2}\coth(n\pi)>0.
$$
故用四个点值不能恢复边响应或能量。紧支撑于开边的 traces 还给出对任意有限 endpoint-jet 截断的同类反例；它们的非零 harmonic lift 具有正 Dirichlet energy。

这里 $\Lambda:H^{1/2}(\partial R)\to H^{-1/2}(\partial R)$ 是所选椭圆问题的弱 Dirichlet-to-Neumann map。**不能把它直接当作 hyperbolic theory 在每个时间的响应。** 后者还依赖初始数据、整个过去 history、时间正则性及相容条件；一般只有指定弱解和测试域之后才有 conormal response。参见 [rectangle 的实际 history 域与时间端点补偿](<rectangle scalar self-gluing.md>) §5.1。

### 2.2 长度趋零不会自动消灭这些信息

在 $e_\varepsilon=(0,\varepsilon)$ 取 $q_\varepsilon(s)=f(s/\varepsilon)$。一维 trace 的临界 seminorm 满足
$$
\int_0^\varepsilon\!\!\int_0^\varepsilon
\frac{|q_\varepsilon(s)-q_\varepsilon(t)|^2}{|s-t|^2}\,ds\,dt
=
\int_0^1\!\!\int_0^1
\frac{|f(a)-f(b)|^2}{|a-b|^2}\,da\,db.
$$
虽然 $L^2$ 范数平方缩小为 $\varepsilon\|f\|_{L^2}^2$，trace seminorm 仍可保持非零。这已经排除“边长小，所以所有 edge histories 都只剩一个值”的推理。

若真正改变 domain/metric 或仅通过缩小的窗口连接两个区域，就必须指定比较不同 Hilbert spaces 的映射，并证明 quadratic forms、resolvents 或 wave propagators 的某种收敛。极限可能是无点耦合的 decoupled/Friedrichs theory，也可能在额外缩放或域选择后出现 point interaction；本笔记不声称任一结果普遍发生。二维点的零 capacity 尤其说明：要求两个独立区域只在一点“取相同值”，通常不能在 $H^1$ form domain 中保留原整边的传输。

因此成立的是 **完整 edge-to-corner 数据替换的 obstruction**。不成立的是“任何带传播模的理论都禁止任何边收缩”这一绝对 no-go。受限零模、低能近似、指定缺陷有效理论以及单纯撤去 artificial cut 都是不同问题。

对真正有局域传播模的 YM，gauge quotient 不消除 gauge-invariant curvature、radiative electric/magnetic data 及它们的边界响应。线性化到 Maxwell 的局部传播 sector 已有无限维 trace 障碍；Gauss matching 不能替代完整 transmission。原 [gauge-covariant formalism](<../gauge-covariant sewing and reduction.md>) 也明确区分这两项。Pure $1+1$ YM 没有局域传播模，不能被纳入这里的传播模论证；它保留的 holonomy/flux 数据须另行处理。

## 3. CS 的 classical model 与约定

### 3.1 从作用量固定符号

取有向 $M=I\times\Sigma$，orientation 为 $dt\wedge\mathrm{or}_\Sigma$。主模型为 compact $G=SU(2)$，平凡 bundle；一般 compact $G$ 的拓扑 sector 必须随 presentation 保留。用 anti-Hermitian connection、
$$
B(X,Y)=-\operatorname{tr}_{\mathbf2}(XY),\qquad
A^h=h^{-1}Ah+h^{-1}dh,\qquad F=dA+A\wedge A.
$$
以 invariant trace 扩张理解三次项，
$$
S_{\rm CS}=\frac{k}{4\pi}\int_M
\left[B(A\wedge dA)+\frac13 B(A\wedge[A,A])\right],
\qquad k\neq0.
$$
其完整 bulk variation 是
$$
\delta S_{\rm CS}
=\frac{k}{2\pi}\int_M B(\delta A\wedge F)
-\frac{k}{4\pi}\int_{\partial M}B(A\wedge\delta A).
$$
写 $A=A_tdt+a$，canonical kinetic term 为
$-k\int_\Sigma B(a\wedge\dot a)/(4\pi)$。于是，在与现有 open-chord 模型相同的 $\Omega=\delta\Theta$ 约定中，
$$
F_a=0,\qquad
\Theta_\Sigma=-\frac{k}{4\pi}\int_\Sigma B(a\wedge\delta a),
\qquad
\Omega_\Sigma(\alpha,\beta)
=-\frac{k}{2\pi}\int_\Sigma B(\alpha\wedge\beta).
$$
这些式子保留时间初末面。若 $\partial\Sigma\neq\varnothing$，还须给 physical boundary action/condition；不能直接丢掉上式的空间边界变分。§4 的最小物理目标可选闭有向曲面；§5 另明确选择 puncture/holonomy port 模型。

令 parallel transport 满足 $\dot U=-a(\dot\gamma)U$，则
$$
U_\gamma\mapsto h(t\gamma)^{-1}U_\gamma h(s\gamma).
$$
若先沿 $p$ 再沿 $q$，transport 为 $U_qU_p$。AMM 使用的 conjugation action 写成 $g\mu g^{-1}$，对应这里的 $g=h^{-1}$；不能把两个 gauge 参数名称相同当成同一 infinitesimal convention。

为避免辛符号混淆，§5 的 $\omega$ 专指 AMM 的 quasi-Hamiltonian form。其有向 Atiyah–Bott form 以同一 $B$ 归一化为 $\int_\Sigma B(\alpha\wedge\beta)$。当它表示同一个有向 reduced moduli leaf 时，本笔记的物理 CPS 是
$$
\boxed{\Omega_{\rm CPS}=-\frac{k}{2\pi}\,\omega_{\rm AMM,red}.}
$$
这不是把未约化 quasi-Hamiltonian form 当作闭辛形式。边界 loop orientation 的取逆还须独立处理；AMM §9 使用与 induced boundary orientation 相反的 traversal，其 holonomy labels 不能不经取逆就搬入另一 convention。

### 3.2 有限维 holonomy 模型与 physical edge currents

闭曲面上，以全部 smooth gauge transformations 约化，有
$$
\mathcal M_{\rm flat}(\Sigma,G)
=\operatorname{Hom}(\pi_1(\Sigma),G)/G.
$$
这里允许 stabilizers，故一般是奇异空间。若固定 bundle sector，应只取对应 representations；不能以一个 trivialization 排除其他允许 sector。对 $SU(2)$ 的二维底空间，bundle 平凡性没有额外障碍。带 punctures 并固定 conjugacy classes 时，在 peripheral loops 上再施加相应限制。

但若 proper gauge 要求在**整个物理边界**为 identity，source-free disk 已有
$$
\mathcal P_D^{U(1)}=C^\infty(S^1,\mathbb R)/\mathbb R,
\qquad
\mathcal P_D^{SU(2)}=C^\infty(S^1,SU(2))/SU(2)_{\rm left}.
$$
第二式来自 $a=g^{-1}dg$、保留 boundary loop、仅除去不改变 $a$ 的 left constant；它包含非平凡的 current structure，尽管所有 contractible closed-loop holonomies 为 identity。第一式可直接代回上面的 CPS：
$$
\Omega_D(u,w)=-\frac{k}{2\pi}\oint u\,dw.
$$
所以“CS 没有 bulk oscillator”并不推出“CS 的每条物理边只携带一个 group element”。

AMM 的有限维 holonomy space 使用明确的 based-loop quotient **和修正后的二形式**：在其 Sobolev Hamiltonian loop-group 设置及 proper moment-map 假设下，$\mathrm{Hol}^*\omega=\sigma+\Phi^*\varpi$，不是未经修改的 $\sigma$ 自动下降。等价定理还保留原 loop-group 数据的重构信息。这是 [AMM, Theorem 8.3 与 §9](https://arxiv.org/pdf/dg-ga/9707021) 的独立模型输入；不是把本项目 charged physical boundary symmetries 宣布成 proper gauge 的授权。

## 4. Tree-edge theorem 与失败条件

### 4.1 精确的 presentation theorem

取有限 connected CW $2$-complex $K$，$V$ 为顶点、$E$ 为有向边代表。Face attaching words 作为关系保留。定义
$$
X_K(G)=\left\{(U_e)\in G^E:
U_{\bar e}=U_e^{-1},\
U_{\partial f}=1\ \text{对每个 face}\right\},
$$
并让 $G^V$ 按 $U_e\mapsto h_{t(e)}^{-1}U_eh_{s(e)}$ 作用。若指定 puncture conjugacy classes，则将 peripheral words 一并加入约束，而非填成 ordinary faces。

**Tree-edge theorem.** 设 $T\subset K^{(1)}$ 是有限树子复形，其边不承载被插入的 Wilson line，顶点没有独立 dynamical endpoint variables；收缩中保留全部 face relations、peripheral loops、sector labels 和其他 transport。$T$ 内顶点的相对 frame changes 均属于允许 quotient 的 gauge。令 $K/T$ 的 attaching words 由相应收缩诱导。则
$$
\boxed{[X_K(G)/G^V]\simeq
[X_{K/T}(G)/G^{V/T}].}
$$
方括号表示 action groupoid，包括 stabilizers，不预设 quotient 光滑。对 compact $G$，它诱导粗 orbit spaces 的同胚。Group multiplication/inversion 给双向光滑 presentation maps，故在对应 smooth quotient strata 上也是 diffeomorphism。

**证明。** 在 $T$ 选根 $r$，按离根距离给树边定向。令 $h_r=1$，递归定义
$$
h_{t(e)}=U_eh_{s(e)}.
$$
则每条树边都满足 $U'_e=1$。同时必须变换所有 incident edges；沿任意路径 $p$，中间 $h$ 消去，得到
$$
U'_p=h_{t(p)}^{-1}U_ph_{s(p)}.
$$
故全部 face equations 保持，peripheral conjugacy classes 也保持。在 slice $U_T=1$ 上，face words 正好是 $K/T$ 的 words；反向把所有树边补成 identity，得到原 presentation 的一个对象。

若两份 slice 数据由某个 $(h_v)$ gauge-related，则每条树边的变换要求 $h_{t(e)}=h_{s(e)}$。树连通，故整个 $T$ 上只剩同一个 $h_r$，正好是合并顶点的 gauge transformation。所有对象可到 slice，slice 之间的 morphisms 又恰由这个 residual group 给出，证明 fully faithful 与 essentially surjective；automorphism groups 亦保留。归一化公式连续光滑，无需 global logarithm，也无需假设原 $G^V$ action free。$\square$

对森林逐连通分量重复即可。如果某些顶点 frame 被固定，条件可放宽为：每个树分量至多有一个固定 frame，以它为根且 $h_r=1$。若两个端点 frame 都固定，$U_e$ 是保留的 framed transport，通常不能设成 identity。

拓扑方面，[Hatcher, Proposition 0.17](https://pi.math.cornell.edu/~hatcher/AT/AT.pdf) 说明：contractible subcomplex 的 collapse 在 CW-pair 的 homotopy extension property 下是 homotopy equivalence。这解释 $\pi_1$ 不变；上面的显式 slice 证明另外追踪了 gauge orbits、稳定子与实际 transport。两项证据不能被替换成单纯的维数计数。

### 4.2 什么时候还是 CS phase-space equivalence

上一命题首先是 **flat local systems 的 presentation theorem**。要称为 CS reduced symplectic equivalence，还要求：

1. 两个 presentation 描述同一个有向 marked surface，或由保持有向 fundamental class、peripheral 数据及所选 boundary reduction 的 surface equivalence 联系；
2. 使用同一个 $B,k$、bundle/defect sectors 和 gauge policy；
3. 保留 ribbon cyclic order，以及 puncture/basepoint/physical-boundary 标记；没有把剩余 active charges 提前 quotient；
4. 在所声称的 smooth leaf 上，reduced symplectic form 确实定义。

例如，辅助 ribbon graph 中一条连接两个无标记 vertex disks 的边，可把“两个 disks 加中间 band”的 regular neighborhood 合并成一个 disk，并继承外侧 half-edges 的 cyclic order。这是保持 thickened surface 的 presentation move。

闭曲面上的辛性可直接检验。平坦 connection 的 tangent cohomology 为 $H^1(\Sigma;\operatorname{ad}\rho)$，其 pairing 为
$$
\omega_{\rm AB}([\alpha],[\beta])
=\left\langle B_*([\alpha]\smile[\beta]),[\Sigma]\right\rangle.
$$
对于上述有向 equivalence $q$，cup product 的自然性与 $q_*[\Sigma]=[\Sigma']$ 给
$$
\omega_{\rm AB,\Sigma}(q^*[\alpha],q^*[\beta])
=\omega_{\rm AB,\Sigma'}([\alpha],[\beta]).
$$
乘以 §3 的 $-k/(2\pi)$ 就得到物理 CPS 的保持。带固定 conjugacy boundaries 的版本使用相应 relative/parabolic pairing 或 AMM reduction，必须保留 orbit/boundary correction，不能直接删去边界后照抄闭曲面积分。所用 gauge-theoretic 与 finite-holonomy identification 可参见 [AMM §9](https://arxiv.org/pdf/dg-ga/9707021)。

### 4.3 三个决定性的反例

**环路中的普通边仍可收缩。** 在有向 triangle 上取 $U_{01}=a,U_{12}=b,U_{20}=c$。令 $h_0=h_2=1,h_1=a$，则
$$
(a,b,c)\longmapsto(1,ba,c),\qquad cba\longmapsto cba.
$$
若 triangle 是未填充的 cycle，cycle holonomy 保留；若它是一个 face，关系 $cba=1$ 保留。两种情况都不能把 $ba$ 偷换为 $b$。

**整个非平凡 loop 的 collapse 不同。** 若把生成元 $\gamma$ 杀掉，则新 representations 仅拉回到旧空间中满足 $\rho(\gamma)=1$ 的部分。一般旧 representation 不能沿 quotient 下降，故不存在“对全部旧连接自然删除该 holonomy”的等价。最小反例是 $U(1)$ annulus 的 core loop，其 unrestricted holonomy 可为任意 $e^{i\theta}$；填成 disk 后必须为一。若 loop 本来已经由 face relation 强制为一，仍须检查 surface、orientation 与其他数据，不能据此推广为任意 loop collapse。

**拓扑 homotopy equivalence 不保证 surface 不变。** 把 disk 的一条完整 proper diameter 连同两个 boundary endpoints 压成点，得到两个 disks 在一点相接。小邻域去掉该点后有两个分支，因此不是 disk/half-disk neighborhood；它不是 ordinary smooth surface。虽然 diameter 是 contractible subcomplex，且两个空间都 contractible，不能据 Hatcher 的命题就声称这里有 ordinary CS phase-space equivalence。撤去该 diameter 作为 artificial cut，则仍是原 disk，是另一操作。

同样，即使一条开放边没有 puncture charge，只要其两个 frames 均为物理固定，$U_e$ 就不能被上述 gauge slice 删除。故“无 charge $\Rightarrow$ 可收缩”及“属于 cycle $\Rightarrow$ 不可收缩”都应拒绝。

## 5. Charged-corner fusion 的准确对象

### 5.1 几何角点、Wilson endpoint 与 puncture 是不同输入

一个几何 corner 只规定分层几何和 joint trace 域。要获得 dynamical corner sector，必须另外指定 point/line action、charged endpoint state、保留的 frame，或经过明确 reduction 得到的 holonomy port。

Wilson worldline 穿过空间切片得到 puncture；Wilson line 在 physical boundary 终止，则需要能吸收其 gauge transformation 的 boundary field/state 或固定 frame。后者可能属于 WZW current/module 数据，未必是一个独立 conjugacy class。把三者都写成 $c_i:\mathcal C_i$ 不是定义。

下面选定一个可控的 **topological holonomy port model**：有向 disk 内两个标记 punctures，绕 punctures 的 holonomy sectors 为给定 conjugacy classes $\mathcal C_1,\mathcal C_2$；外部通过一个保留的 holonomy port 耦合。Flatness 施加在去掉 punctures 的曲面上；不把有 source 的点填成 ordinary flat disk。用 paths 把两个 monodromies 运输到共同 basepoint。基于 ordered loops 选择 incoming/outgoing 约定，使 composite port 为
$$
\mu_{12}=\mu_1\mu_2.
$$
按 §3 的 transport convention，这个乘积右因子先作用。若采用相反的边界 traversal，须取 inverse moment map；若交换两 punctures 的顺序，须同步改变 paths/braiding，不能保持其余结构不变。

这里 finite port object 是 AMM holonomy construction 的对象，**不是**保留整条 chiral physical boundary 后的完整 regional phase space。它可以由 loop-group description 加指定 holonomy correction 得到；真实 boundary action 到该 port object 的解释必须与所选 gauge policy 一致。

在未共用 frame 时，若 $U$ 是从 $c_1$ 到 $c_2$ 的 transport，第二个 holonomy 在 $c_1$ frame 中是 $U^{-1}\mu_2U$，所以相应 ordered composite 为
$$
\mu_{\rm comp}=\mu_1\,U^{-1}\mu_2U.
$$
只有在 §4 的 relative gauge 确实允许并同时运输全部 charge variables 时，才可取 $U=1$。若 $U$ 本身是一条被插入的 Wilson line，设其 connection holonomy 为一也不删除其 representation label 或 endpoint intertwiner。

### 5.2 Quasi-Hamiltonian 公式

固定同一个 compact $G$ 和 invariant positive inner product $B$。定义
$$
\theta^L=g^{-1}dg,\qquad \theta^R=dg\,g^{-1},\qquad
\chi=\frac1{12}B(\theta^L,[\theta^L,\theta^L]).
$$
Lie-algebra-valued forms 的 $B$ pairing 包含 exterior wedge；具体地
$$
B(\alpha\wedge\beta)(v,w)
=B(\alpha(v),\beta(w))-B(\alpha(w),\beta(v)).
$$
采用 conjugation action $g\mu g^{-1}$，$v_\xi$ 是 $\exp(t\xi)$ 的生成向量。一个 quasi-Hamiltonian $G$-space $(M,\omega,\mu)$ 满足
$$
d\omega=-\mu^*\chi,\qquad
\iota_{v_\xi}\omega=\frac12\mu^*B(\theta^L+\theta^R,\xi),
$$
$$
\ker\omega_x=\{v_\xi(x):(\operatorname{Ad}_{\mu(x)}+1)\xi=0\}.
$$
所以 $\omega$ 一般不闭，也可能退化。将其称为 ordinary symplectic form 会遗漏定义中的关键条件。

若 $(M_i,\omega_i,\mu_i)$ 已经分别满足这些公理，fusion 是
$$
\boxed{
M_1\circledast M_2=
\left(M_1\times M_2,\
\omega_1+\omega_2+
\frac12 B(\mu_1^*\theta^L\wedge\mu_2^*\theta^R),\
\mu_1\mu_2\right),
}
$$
群作用由 $G\times G$ 改为 diagonal $G$。这是 [Alekseev–Malkin–Meinrenken, Theorem 6.1, equations (16)–(18)](https://arxiv.org/pdf/dg-ga/9707021)；更一般可对一个已给定的 $G\times G\times H$ quasi-Hamiltonian space 作 internal fusion。该定理不要求 moment maps 是 submersions，也不要求 diagonal action free；这些是进一步作光滑 reduction 时的问题。

这里 $\omega_i$ 和 $\chi$ 都使用未吸收 $k$ 的同一个 $B$。若整体改用 $kB/(2\pi)$，全部 q-Hamiltonian forms 和 $\chi$ 同时缩放，cross-term 系数相应为 $k/(4\pi)$。映射到 §3 的物理 CPS convention 时还须整体取负；不能只改 cross-term 的符号。

**为什么恰有这个 cross-term。** 记 $a=\mu_1^*\theta^L$、$b=\mu_2^*\theta^R$，以及 $c_{12}=\tfrac12 B(a\wedge b)$。Maurer–Cartan 方程与 $B$ 的 invariant 性给
$$
d a=-\frac12[a,a],\qquad d b=\frac12[b,b],
$$
$$
(\mu_1\mu_2)^*\chi=\mu_1^*\chi+\mu_2^*\chi-dc_{12}.
$$
故
$$
d(\omega_1+\omega_2+c_{12})=-(\mu_1\mu_2)^*\chi.
$$
再利用
$$
\iota_{v_\xi}a=\operatorname{Ad}_{\mu_1^{-1}}\xi-\xi,\qquad
\iota_{v_\xi}b=\xi-\operatorname{Ad}_{\mu_2}\xi
$$
和
$$
(\mu_1\mu_2)^*\theta^L
=\operatorname{Ad}_{\mu_2^{-1}}(a+b),\qquad
(\mu_1\mu_2)^*\theta^R=\operatorname{Ad}_{\mu_1}(a+b),
$$
得到 diagonal moment-map contraction identity。最后的 minimal-degeneracy 公理由 AMM Theorem 6.1 的 kernel 论证保证；这里只对前两项给出展开与独立机器核验，不把它们误报成全部公理的机器证明。

### 5.3 Conjugacy classes、fusion 与 reduction

对于一个已选定的 conjugacy class $\mathcal C\subset G$，取 $\mu:\mathcal C\hookrightarrow G$，并定义
$$
\omega_{\mathcal C,g}(v_\xi,v_\eta)
=\frac12\left[
B(\eta,\operatorname{Ad}_g\xi)
-B(\xi,\operatorname{Ad}_g\eta)\right].
$$
这是 AMM Proposition 3.1 的 quasi-Hamiltonian conjugacy-class structure；不能对一般有限 charge space 只指定 $\mu$ 而省去此结构。

两个 punctures 给 $M=\mathcal C_1\circledast\mathcal C_2$。**Fusion 没有作 quotient，也没有把 $M$ 换成 $\mu(M)\subset G$。** 它保留所有 $(m_1,m_2)$，仅改变二形式与 group action。产品 map 可能多对一，像也未必是单个 conjugacy class。

选定输出 class $\mathcal C_\lambda$ 后，才可以研究 channel space
$$
\mathcal R_{12}^{\lambda}
=\{(g_1,g_2)\in\mathcal C_1\times\mathcal C_2:
g_1g_2\in\mathcal C_\lambda\}/G.
$$
它的二形式须按 q-Hamiltonian reduction 构造，例如使用
$$
\left(\mathcal C_1\circledast\mathcal C_2
\circledast\mathcal C_\lambda^{-}\right)//G,
\qquad
M//G=\mu^{-1}(1)/G,
$$
其中 $\mathcal C_\lambda^{-}$ 保留同一 underlying manifold、取 $-\omega_\lambda$ 和 $\mu_\lambda^{-1}$。不能把一般 $\mu^{-1}(\mathcal C_\lambda)$ 上未经修正的 $\omega$ 直接当成 basic form。Regular value 与 free effective action 给 smooth symplectic quotient；locally free action 给 orbifold；存在 stabilizers 时保留相应奇异 reduction，不作全局光滑断言。

该 channel 描述正是 genus-zero pair-of-pants 的固定 boundary conjugacy 模型，方向由 incoming/outgoing 与上述 inverse factor 固定。它保留内部合成信息；把两个 punctures 换成一个 ordinary puncture 并忘掉 channel，相当于另一项有损操作。

### 5.4 SU(2) 给出的明确检验

写
$$
g_i=\cos\alpha_i\,1+i\sin\alpha_i\,\mathbf n_i\cdot\boldsymbol\sigma,
\qquad |\mathbf n_i|=1,\quad 0\leq\alpha_i\leq\pi.
$$
两输入 class 固定 $\alpha_1,\alpha_2$，但
$$
\frac12\operatorname{tr}(g_1g_2)
=\cos\alpha_1\cos\alpha_2
-(\mathbf n_1\cdot\mathbf n_2)\sin\alpha_1\sin\alpha_2.
$$
因而输出 conjugacy angle 的全部可能值为
$$
|\alpha_1-\alpha_2|
\leq\alpha_{12}\leq
\min(\alpha_1+\alpha_2,\ 2\pi-\alpha_1-\alpha_2).
$$
这是从 $\mathbf n_1\cdot\mathbf n_2\in[-1,1]$ 直接得到的 exact classical range，不是量子 fusion rule。例取 $\alpha_1=\alpha_2=\pi/3$：相同轴给输出 angle $2\pi/3$，相反轴给 identity。故输入的两个 class labels 不能确定唯一输出 label。

对两个非中心 classes，$M=\mathcal C_1\times\mathcal C_2$ 有四个实维度，而单个非中心 class 只有两个。Fusion 本身维数不变。进一步除 diagonal conjugation 后，相对轴夹角仍可变化；generic 固定输出 channel 的 pair-of-pants reduction 为零维，而 commuting/central 端点须处理 stabilizers。这些是不同阶段，不能混作一个“角点维数变小”的定理。

$U(1)$ 仍是有用的 control：固定 conjugacy classes 是点，charge holonomies 相乘，所以这个特定模型没有非阿贝尔的相对轴信息。但在具有可变 moment maps 的 $U(1)$ q-Hamiltonian spaces 中，局部 cross-term $\tfrac12 d\alpha_1\wedge d\alpha_2$ 可以非零；“Abelian fusion 总没有 cross-term”也不正确。

### 5.5 收缩何时可称为 fusion

只有同时给出以下数据，才把几何图像解释为 §5.2 的 fusion：

- 两端已经具有同一 $G,B$ 的 q-Hamiltonian sectors；若从 CS boundary/CPS 得到，已指定并核对 holonomy reduction；
- 有共同 frame，或保留了将两者运到共同 frame 的 $U$；
- 保留 oriented/ribbon ordering、puncture/Wilson labels、boundary polarization 和所有 active charges；
- 收缩后的“角点”被定义为整个 fused sector，或一个带已指定 channel 的 reduction；并未只保存乘积 moment map；
- 另行证明该几何操作到有限 port 模型的对应，或明确只是在操作 holonomy presentation。

Wilson 线中间插入再删除一个无标记 bivalent subdivision，通常只是 transport composition 和 identity intertwiner；一个实际 endpoint pair 的收缩可能是 evaluation、选定 intertwiner 或多 channel fusion。仅见两个带电端点，不能唯一确定操作。

## 6. 量子解释与证据边界

固定 compact $SU(2)$、正整数 WZW level $k$，以及有向、带标记/切向数据的 standard CS/WZW modular-functor prescription。这里的 labels 是 integrable sectors
$$
j=0,\frac12,\ldots,\frac{k}{2},
$$
不是任意 ordinary finite-dimensional $SU(2)$ representations。其 fusion 为
$$
j_1\star_k j_2
=\bigoplus_{j=|j_1-j_2|}^{\min(j_1+j_2,\ k-j_1-j_2)}j,
$$
步长为一；只取 $j_1+j_2+j\in\mathbb Z$。允许通道的 multiplicity 为一，其余为零。此公式可由 representation-ring quotient
$$
R_k(SU(2))=R(SU(2))/\langle\chi_{k+1}\rangle
$$
得到，$\chi_m$ 表示 spin $m/2$ 的 character。参见 [Meinrenken, Example 5.4](https://www.math.toronto.edu/mein/research/NotreLectures.pdf)。例如
$$
\frac12\star_1\frac12=0,\qquad
\frac12\star_2\frac12=0\oplus1.
$$
这里 $0$ 是 spin-zero 真空 label，不是零向量空间。
不能用 classical angle range 或 ordinary tensor product 单独推导 level truncation；也不能未经约定把 classical $\alpha_i$ 代成 $2\pi j_i/k$。Prequantization、Weyl shift 和 level shift 各自有适用处，本文不混用。

在标准 marked-surface theory 中，取包围两 punctures 的 circle，factorization 有形式
$$
\mathcal H(\Sigma;j_1,j_2,\ldots)
\cong
\bigoplus_{j\in P_k}
V_{j_1j_2}^{\,j}\otimes
\mathcal H(\Sigma_{\rm outside};j,\ldots),
\qquad
V_{j_1j_2}^{\,j}
=\operatorname{Hom}_{\mathcal C_k}
(j,j_1\otimes_{\mathcal C_k}j_2).
$$
边界方向改变时使用 dual label；$SU(2)$ 的 simple labels 自对偶，但 framing/ordering 并不因此消失。一般 sewing map 依赖选定标记及 normalization；更换分解由 associator/braiding 联系，不是一个对所有几何 collapse 都自然的普通 Hilbert tensor identification。

该 factorization 使用 modular-functor gluing。其与 $SU(N)$ WRT/CS 模型及 WZW vacua 的精确比较有 [Andersen–Ueno, Theorem 1.1 与 §2 的 MF2](https://arxiv.org/pdf/1110.5027) 支持；这里取 $N=2$。因此两 punctures “合并”后应保留所有 $j$ 及 $V_{12}^j$。只选一个 $j$ 是额外的 channel selection；删除 multiplicity space 会丢失态数据。

另一方面，对具备相容 **level-$k$ prequantization** 的 compact q-Hamiltonian spaces，指定的 quantization-to-Verlinde-ring 满足
$$
Q(M_1\circledast M_2)=Q(M_1)\,Q(M_2).
$$
这里引用 [Meinrenken, Theorem 4.5(b)](https://arxiv.org/pdf/1008.1261)，其 multiplication 使用相容的 multiplicative prequantization。它是 index/fusion-ring 结论，不能单独推出任意 regional observable algebra 或 Hilbert representation 的同构。

本项目现有 SU(2) draft 的 universal current/PBW quotient 也不提供上述 integrable quotient、Wilson intertwiners、null-state ideal 或 conformal-block factorization。本文没有证明从那个具体 regional current source 到 $\mathcal C_k$ 的完整映射和 kernel。将 sharp endpoints 在物理边界上真正碰撞，还需其 operator/distribution domain、OPE/renormalization 和 Wilson framing；不能把 finite-dimensional classical fusion 当成 sharp operator 极限的证明。

## 7. 与当前 sewing formalism 的关系

本次读取当前本地 checkout，其 origin 为 GaoZ1en/obsidian_note；工作树中已有的 untracked CS drafts 也按正文检查。以下只采用与本问题直接相关的定义和可展开论证，不接受文件中的完成标签作为证明。

| 当前材料 | 本文采用的输入及审查结果 |
|---|---|
| [classical gluing formalism](<../classical_gluing_formalism.md>)、[observable algebra formalism](<../observable algebra gluing formalism.md>) | joint trace、完整 response、独立 global target、corner 不自动增加变量。本文的标量反例直接检验该区别；不借用其全部 reconstruction theorem |
| [rectangle scalar self-gluing](<rectangle scalar self-gluing.md>) §§4–5 | 点值障碍与 joint domain 相容；本文独立计算 capacity cutoff 和 DtN 反例。静态 Friedrichs sewing 不是 $\varepsilon\to0$ 几何定理 |
| [self-sewing topology and orientation](<../self-sewing topology and orientation.md>) | 保留 links、orientation、metric/domain 与 bundle descent 的分层。Diameter collapse 反例说明仅有 $\pi_1$ 等价不够 |
| [gauge-covariant sewing](<../gauge-covariant sewing and reduction.md>)、[spatial gauge gluing](<../spatial gauge gluing formalism.md>) | proper gauge、active frames、transport 与完整 transmission 的区别。它们的 second-order YM theorem 不覆盖 CS |
| [U(1) disk/open-chord](<U(1) Chern-Simons disk and open-chord sewing.md>) | physical current space 与完整 action 的负 CPS 符号直接重算；endpoint-zero cut group 不能删去 outer currents |
| [SU(2) open-chord draft](<SU(2) Chern-Simons open-chord sewing.md>) | 检查了 flat disk 的 loop presentation、trivial monodromy 与 quantum claim boundary；没有把其 PBW 标签当成 WZW fusion 证明 |
| [U(1) annulus draft](<U(1) Chern-Simons annulus sewing.md>) | cycle holonomy 与 framed radial transport 是不同数据；本文只用这一反例，不继承全部量子域结论 |
| [U(1) junction draft](<U(1) Chern-Simons trivalent junction sewing.md>)、[Wilson/vertex draft](<U(1) Chern-Simons Wilson and vertex extension.md>) | junction gauge jets 与 dynamical sector 分开；sharp collision 需单独 prescription。本文没有审定其全部 extension/renormalization theorem |
| [早期 U(1) CPS](<../../Chern-Simons/U(1) formalism.md>)、[SU(2) CPS](<../../Chern-Simons/SU(2) formalism.md>)、[particle as defect](<../../Chern-Simons/particle as defect.md>) | 保留 boundary polarization 与 source/holonomy 的物理动机；不采用“忽略 boundary terms”或 mode 标记来证明本题 |

因此，与原 formalism 的连接是：先由完整 regional action 确定 interface/charge data；§4 只允许删除已证实属于 gauge presentation 的树坐标；§5 则要求收缩后的对象仍保存相应 composite sector。有限 moduli spaces 上的 symplectic equivalence 可拉回为 smooth classical observable equivalence；这不是完整 continuum regional gauge-algebra sewing theorem。

2026-09-07 尝试读取 [Research Radar problems](https://research-radar.gao-zien.chatgpt.site/problems)：浏览工具未能打开，公开 cards API 返回 HTTP 403。没有取得当前 card/status 数据，也没有修改 Radar。当前研究范围以本地 gluing README/TODO 和本次明确问题为准。

## 8. Adversarial audit 的最终判定

| 待审命题 | 判定与精确替代表述 |
|---|---|
| 有传播模，所以任何 edge contraction 都不可能 | **不成立。** 完整 trace 被有限 corner 数据替代有 obstruction；几何极限必须逐模型研究，撤去 artificial cut 另当别论 |
| CS 没有 bulk dofs，所以 boundary/corner 数据都有限维 | **不成立。** Physical chiral boundary 可保留无限维 currents；有限 holonomy model 需要额外 quotient/correction |
| 边属于非收缩 cycle 就不能作树边收缩 | **不成立。** 普通边的 contraction 保留 cycle word；杀掉整个 nontrivial loop 才强制额外 holonomy constraint |
| 无标记 tree contraction 保持 reduced flat data | **在 §4.1 条件下已证明。** 包含 gauge groupoid 与 stabilizers；symplectic 版本另外需要 §4.2 |
| 只要 endpoints 有 charge，收缩就是 fusion | **未证明且一般表述不成立。** 必须先指定实际 endpoint/port sector、frame、ordering 与操作类别 |
| Fusion 就是把 $(g_1,g_2)$ 换成 $g_1g_2$ | **不成立。** Fusion 保留 $M_1\times M_2$ 及 cross-term；moment map 不是完整状态 |
| 任意几何角点都带 canonical pair | **不成立。** 变量与二形式由 action、允许 gauge 和 defect/boundary 数据决定 |
| Classical fusion/PBW 已证明当前 regional quantum sewing | **没有此证据。** 标准 modular functor 与 quantization-to-Verlinde-ring 的外部定理不自动填补当前 source 的 kernel/domain |

## 9. 精确未决问题

1. **实际角点到有限 port 的箭头。** 给两条 physical boundary arcs 的具体 CS action、boundary fields 与 allowed gauge group，确定其 endpoint sector 是否、以及如何进入 $(M_i,\omega_i,\mu_i)$；证明 corrected CPS 的拉回公式。未做这一步时，本文只给 puncture/holonomy model。
2. **真实 geometric collapse。** 对具体带角空间明确 $\Sigma_\varepsilon$、标记、boundary conditions 和极限对象，验证 links 与保留数据。若发生 pinch，应先定义 singular target theory，不能称为 ordinary surface CS。
3. **带 Wilson edge 的收缩。** 固定 representation、orientation、framing 和 endpoint intertwiners，给出删除 subdivision、evaluation 与 fusion channel selection 的分别定义及相容映射。
4. **当前 SU(2) current source 到 WZW sector。** 在一个 genus-zero、两个 punctures 的例子中，给 integrable quotient 与 intertwiners 的实际 source、kernel、image；先验收一个 $k=1$ 或 $k=2$ 通道，不扩展整个 gauge algebra programme。
5. **有损压缩的准确内容。** 若只保存 $\mu_{12}$ 或单个输出 label，计算丢失的 fiber/channel 数据，并说明是否允许 coarse-graining。不得用“fusion”掩盖这项信息删除。

最小已完成模型是 **无标记辅助树边的 exact presentation equivalence，加上两个指定 conjugacy sectors 的 q-Hamiltonian fusion 与 SU(2) 输出范围**。从真实 charged geometric corners 到这个 finite port model 的识别仍是第 1 项。

## 10. 验证记录

**Verified:** §2 的点值不连续和 trace/response 反例、§4 的完整 gauge-slice/groupoid 证明及反例、§5.4 的 SU(2) classical range 为本文给出的论证。AMM fusion 的全部公理与 standard quantum modular functor 属于明确引用的外部定理，不宣称为本文重新机器证明。

本次执行的检查如下：

| 工具与可复现输入 | 执行结果 | 证据范围 |
|---|---|---|
| [Mathematica 检查](<../numerics/cs_edge_contraction_checks.wl>) | 8 组 residual 为零 | cutoff energy、harmonic solution/boundary/response、response energy、SU(2) trace 与 transport、两输出反例、fusion contraction、CS cubic variation |
| [xAct 检查](<../numerics/cs_edge_contraction_xact.wl>) | 2 组 residual 为零；full pipeline 包含 xTras FullSimplification | CS quadratic variation 的 bulk/boundary 符号；由 Maurer–Cartan 与 invariant alternating tensor 表示的 Cartan 3-form product identity |
| [Sage 检查](<../numerics/cs_edge_contraction_checks.sage>) | 6 组精确 Boolean checks 全通过 | $S_3$ 的 216 份 triangle assignments；free-group transport/loop identities；$k=1,\ldots,6$ 的 139 个 SU(2) character-quotient products；level-1 通道 |

Sage 的有限群检查只检查树归一化的例子；一般定理依靠 §4 的证明。有限 levels 不证明全部 Verlinde theory；一般公式依靠所引 representation-ring theorem。xAct 的 3-form 检查输入了 Maurer–Cartan 方程与 invariant pairing，不证明任意候选 corner sector 满足 q-Hamiltonian 公理。

AMM 的 Definition 2.2、Proposition 3.1、Theorem 6.1 及其公式页经 PDF text 导航和渲染页核对，尤其确认左 $\theta^L$、右 $\theta^R$ 及 cross-term 正号。量子文献的 theorem/gluing/fusion-rule 页面也作相同核对。一次加载额外 xTerior 的初探超时；随后使用已加载 xTensor/xPert/xTras 的直接 residual checks 成功，未以超时调用作为证据。

**Assumptions:** 每项命题使用其所在节的 trace/domain、orientability、marking、gauge、bundle、level 与 prequantization 条件；静态空间操作；相同物理 action/CPS convention。

**Not verified:** Scalar/YM 的一般 shrinking-domain 极限；有物理 currents 的任意 corner collapse；任意 singular CS target；任意 charged-corner 到 holonomy-port identification；当前 regional quantum source 的 integrable/Wilson kernel；sharp operator collision；state restriction、partial trace 或 entropy。未修改这些问题在其他 note 中的完成标签。
