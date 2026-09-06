# 1+1 Yang–Mills Classical Observable Algebra Gluing

本文是 [observable algebra gluing formalism](<../observable algebra gluing formalism.md>) 的完整 classical gauge 实现。区域对象由 continuum action、proper gauge quotient、active cut action 和实际 history transport 定义；global theory 独立从 uncut action 构造。

## 0. 精确模型与主定理

取非平凡、紧、连通、单连通 Lie group $G$，Lie algebra $\mathfrak g$ 带正定 Ad-invariant pairing $\langle\ ,\ \rangle$。考虑 pure $1+1$ dimensional Yang–Mills，无 matter、无真实 interface charge/action，空间为

$$
[-L,L]=[-L,0]\cup[0,L],\qquad L>0.
$$

真实外端保留 frames，并固定 $A_t(t,-L)=A_t(t,L)=0$。Proper gauge transformations 在真实外端为恒等。独立区域在 artificial cut 也保留 frame；在 gluing 时才把两份 cut-frame action 的共同对角群变成 redundancy。

这项边界选择是模型输入，不由“规范群单连通紧”自动决定。它保留 endpoint electric charges 和 open Wilson lines。下述主定理是

$$
\boxed{
\frac{C^\infty(T^*G\times T^*G)^{G_\Gamma}}
{I(\mu_\Gamma^{-1}(0))\cap C^\infty(T^*G\times T^*G)^{G_\Gamma}}
\ \cong\ C^\infty(T^*G)
\ =\mathcal A^{\mathrm{cl}}_{[-L,L]}.
}
$$

这是全部 smooth functions 的 exact Poisson isomorphism。它包含所有有限维表示中的 framed Wilson matrices、electric observables、各自的 smooth functions，以及对指定 fixed sources 的时间演化后观测量。不是 finite mode approximation，也不靠 polynomial density。

本文不是一般 CS 边界理论的定理；CS 的 level、boundary action 和可能的 current algebra 必须另行指定。

## 1. 从连续 Yang–Mills action 出发

统一使用物理坐标 $x$ 向右增加。令

$$
F_{tx}=\partial_tA_x-\partial_xA_t+[A_t,A_x],
\qquad D_x=\partial_x+[A_x,\cdot].
$$

取 coupling $e^2>0$。一阶作用量为

$$
S[A,E]=\int dt\,dx\left[
\langle E,\dot A_x-D_xA_t\rangle
-\frac{e^2}{2}\langle E,E\rangle\right].
$$

消去 $E$ 得 $E=F_{tx}/e^2$ 和通常的正 electric-energy 二阶 action。

变分给

$$
D_xE=0,\qquad D_tE=0,\qquad
\dot A_x-D_xA_t=e^2E.
$$

Cauchy symplectic potential 与形式是

$$
\Theta_I=\int_I\langle E,\delta A_x\rangle dx,
\qquad \Omega_I=\delta\Theta_I.
$$

约定

$$
\iota_{X_F}\Omega=-dF,\qquad \{F,G\}=dF(X_G).
$$

对一个空间区间 $[a,b]$，$\delta A_t$ 的 boundary term 是

$$
-\langle E(b),\delta A_t(b)\rangle
+\langle E(a),\delta A_t(a)\rangle.
$$

因此 cut 的 prescribed history 是 time-component connection $q=A_t|_\Gamma$，其 oriented response 为 $\Pi=-n_xE$。先识别两侧 $q$，再自由变分共同 $q$，给

$$
-E_1(0^-)+E_2(0^+)=0.
$$

它正是 electric-flux matching；没有在 action 中加入 penalty。

Gauge convention 为

$$
A_\mu^k=kA_\mu k^{-1}-(\partial_\mu k)k^{-1},
\qquad E^k=kEk^{-1}.
$$

若两 cut frames 以 $k(t)$ 比较，coordinate-covariant matching 写为

$$
q_2=kq_1k^{-1}-\dot k k^{-1},\qquad
E_2=kE_1k^{-1}.
$$

选择共同 frame 只是取 $k=1$ 的表达；最后仍须除去共同 cut-frame redundancy。

在未选共同 frame 时，全区间 transporter 与约束分别是
$$
U=U_2kU_1,\qquad p_2=\operatorname{Ad}_{kU_1}p_1.
$$
Wilson sewing 因而在中间插入 $D_\rho(k)$。这是同一连接的 transition/framing 表达；本模型没有为 $k$ 另添独立 oscillator 或带任意动量的 cotangent factor。选共同 frame 后得到第 5 节的公式。

## 2. 单个 framed interval 的完整约化

令 $I=[a,b]$、$\ell=b-a$。在每个时间 slice，proper regional gauge group 为

$$
\mathcal G_{00}(I)
=\{k\in C^\infty(I,G):k(a)=k(b)=1\}.
$$

先只除去这个群。Endpoint transformations 不是该阶段的 proper gauge；它们是保留下来的 physical frame symmetries。

定义 parallel transporter

$$
u'(x)=-A_x(x)u(x),\qquad u(a)=1,
\qquad U=u(b)\in G.
$$

为与上面的 CPS 符号保持一致，定义

$$
\boxed{p=-E(a).}
$$

Gauss law 的一般解是

$$
E(x)=-u(x)p\,u(x)^{-1}.
$$

### 定理 Y1：连续 Gauss 约化为 $T^*G$

$$
\boxed{
\{(A_x,E):D_xE=0\}/\mathcal G_{00}(I)
\cong G\times\mathfrak g\cong T^*G.
}
$$

**满射。** 对任意 $U\in G$，选一条 smooth path $u$ 从 $1$ 到 $U$，置 $A_x=-u'u^{-1}$、$E=-upu^{-1}$。它满足 Gauss law 并实现 $(U,p)$。这里只用 path connectedness，不需要全局 logarithm。

**单射。** 两组同 $(U,p)$ 的数据具有 paths $u,\widetilde u$。令 $k=\widetilde u u^{-1}$，则 $k(a)=k(b)=1$，直接代入得两组数据 gauge equivalent。

**Smooth structure。** Holonomy 对 smooth connections 光滑，且其一阶变分为任意内支撑 $\delta A$ 的 transporter integral，给到 $T_UG$ 的 surjective map。固定一个 $U_0$ 的 path，使用 $U_0$ 附近的局部 Lie-group chart 给 smooth local sections；不同局部 sections 由 based gauge transformations 联系，因此 quotient atlas 与 $G\times\mathfrak g$ 的 atlas 一致。没有声称 $G$ 有全局光滑 $\log U$，也没有使用可能不存在的全局 connection gauge slice。∎

单连通性排除了 based gauge paths 的 $\pi_1(G)$ component 问题；本定理的基本 holonomy reconstruction 事实上对连通 $G$ 也适用，只要明确 quotient 的群及可能保留的 disconnected transformations。这里固定用户要求的单连通 $G$。

### 定理 Y2：约化形式是标准 cotangent 形式

令 $\xi(x)=\delta u(x)u(x)^{-1}$，则

$$
\delta A_x=-D_x\xi.
$$

在 Gauss locus 上，

$$
\Theta_I
=-[\langle E,\xi\rangle]_a^b
=\boxed{\langle p,U^{-1}\delta U\rangle}.
$$

所以

$$
\Omega_I=\delta\langle p,U^{-1}\delta U\rangle.
$$

写切向量为 $(\xi,\eta)$，其中 $\delta U=U\xi$、$\delta p=\eta$，则

$$
\boxed{
\Omega((\xi,\eta),(\zeta,\nu))
=\langle\eta,\zeta\rangle-\langle\nu,\xi\rangle
-\langle p,[\xi,\zeta]\rangle.
}
$$

它非退化，是普通有限维辛形式。因此该模型没有无限维 weak-symplectic covector-range 的遗留问题。

## 3. Classical regional/global observable algebra

定义

$$
\boxed{\mathcal A_I=C^\infty(T^*G,\mathbb C)}
$$

及复共轭 involution。每个 smooth function 都有 smooth Hamiltonian field，所以这里无需再将 $C^\infty$ 缩成较小的 $\mathcal H$。

用 pairing 识别 $\mathfrak g^*$ 与 $\mathfrak g$。定义 $\nabla_UF,\partial_pF$ 满足

$$
dF(U\xi,\eta)=\langle\nabla_UF,\xi\rangle
+\langle\partial_pF,\eta\rangle.
$$

Poisson bracket 为

$$
\boxed{
\{F,G\}
=\langle\nabla_UF,\partial_pG\rangle
-\langle\nabla_UG,\partial_pF\rangle
-\langle p,[\partial_pF,\partial_pG]\rangle.
}
$$

特别地，对 $p_\xi=\langle p,\xi\rangle$，

$$
\{p_\xi,p_\eta\}=-p_{[\xi,\eta]},
\qquad
\{U,p_\xi\}=U\xi.
$$

末式在每个 matrix representation 中解释。这个负号来自左 Maurer trivialization 与 $\Omega=d\Theta$，不是错误地把 electric Lie–Poisson convention 混入。

独立 global algebra：先在完整 $[-L,L]$ 上用相同 action、真实外端 frames 和 proper gauge group 定义解空间及 CPS，再应用 Y1–Y2，得到

$$
\mathcal A_M=C^\infty(T^*G).
$$

这一定义先于下面的两区域 quotient；它不是把 quotient 重新命名为 global algebra。

### 所包含的具体观测量

对每个有限维 unitary representation $D_\rho:G\to U(V_\rho)$，

$$
W^\rho_{ab}(U)=D_\rho(U)_{ab}
$$

是 framed open Wilson line。还包含 $\operatorname{tr}D_\rho(U)$、所有 $p_\xi$、endpoint electric fields

$$
E_a=-p,\qquad E_b=-\operatorname{Ad}_Up,
$$

任意 finite electric insertions 的 transported matrices、它们的任意 smooth post-processing 及 Hamiltonian。

所有 representations 的 matrix coefficients 与 electric linear functions 分离 $T^*G$ 的点。它们的有限 polynomial algebra 是有用的 Poisson core；本定理直接使用全部 $C^\infty$，不借此分离性或 density 宣称有限 operations 生成全部 smooth functions。

## 4. Endpoint frame action 与 moment maps

Endpoint frame group $G_a\times G_b$ 的作用为

$$
(U,p)\longmapsto(k_bUk_a^{-1},\operatorname{Ad}_{k_a}p).
$$

它保持 $\Theta$。其 moment maps 为

$$
\boxed{J_a=-p,\qquad J_b=\operatorname{Ad}_Up.}
$$

即

$$
J_a(\xi)=-\langle p,\xi\rangle,
\qquad J_b(\xi)=\langle\operatorname{Ad}_Up,\xi\rangle,
\quad \iota_{\xi^\#}\Omega=-dJ(\xi).
$$

**证明。** 对端点作用的 infinitesimal vector 计算 $\Theta(\xi^\#)$，得到上述两式；由 $\mathcal L_{\xi^\#}\Theta=0$ 和 Cartan formula 得 moment identity。∎

其 brackets 是

$$
\{J_a(\xi),J_a(\eta)\}=J_a([\xi,\eta]),
\quad
\{J_b(\xi),J_b(\eta)\}=J_b([\xi,\eta]),
\quad
\{J_a(\xi),J_b(\eta)\}=0.
$$

这个有限端点 YM 模型没有这里未计入的 central extension。CS current algebras 不应据此类推。

这里首先是 Cauchy phase space 上的作用。在完整 histories 上同时变换 $q_a,q_b$ 才是 covariance；保留本模型固定的 $q_a=q_b=0$ 时，允许的外端 frame symmetries 为 time-independent $k_a,k_b$。任意 time-dependent 外端变换通常改变 prescribed-source problem。

## 5. 两区间的 genuine classical sewing

第一区间数据为 $(U_1,p_1)$，第二区间为 $(U_2,p_2)$。两个 $U_i$ 都按物理 $x$ 方向从左到右运输。共同 cut-frame 群的作用为

$$
\boxed{
k:(U_1,p_1;U_2,p_2)
\mapsto(kU_1,p_1;U_2k^{-1},\operatorname{Ad}_kp_2).
}
$$

其 moment map 是

$$
\boxed{\mu_\Gamma=\operatorname{Ad}_{U_1}p_1-p_2.}
$$

由 $p=-E_{\mathrm{left}}$，$\mu_\Gamma=0$ 恰好等价于 physical electric field continuity。这个约束是 action 的 history release 的 Cauchy 表达，而不是另加的 kinematic matching。

保留下来的 regional object 是 $\mathcal A_I=C^\infty(T^*G)$ 连同 endpoint group、两个 moment maps，以及第 8 节由 prescribed histories 驱动的实际 transport/response maps。仅保存一份抽象 Poisson algebra 会丢失 coupling、长度、外端与 cut 的物理含义。

令

$$
P_{12}=T^*G\times T^*G,
\quad C_\Gamma=\mu_\Gamma^{-1}(0).
$$

$0$ 是 regular value，因为对 $p_2$ 的导数是 $-1$。Cut group 作用自由：$kU_1=U_1\Rightarrow k=1$；紧群作用 proper。即使 $p=0$ 或 $p$ 有大 stabilizer，约化仍 smooth，因为 freeness 来自 $U_1$ 而不是 $p$。

### 定理 Y3：相空间的 exact symplectic sewing

$$
\boxed{
C_\Gamma/G_\Gamma\xrightarrow{\cong}T^*G,
\quad[(U_1,p_1;U_2,p_2)]\mapsto(U_2U_1,p_1).
}
$$

**满射与 inverse。** 对任意 $(U,p)$，代表

$$
(U_1,p_1;U_2,p_2)=(1,p;U,p)
$$

满足约束。对任何 $C_\Gamma$ 点，用 $k=U_1^{-1}$ 将它唯一送到这个 representative。这给实际 inverse，不是局部或稠密参数化。

**辛性。** 在 $p_2=\operatorname{Ad}_{U_1}p_1$ 上，

$$
\begin{split}
\Theta_1+\Theta_2
&=\langle p_1,U_1^{-1}\delta U_1\rangle
+\langle\operatorname{Ad}_{U_1}p_1,U_2^{-1}\delta U_2\rangle\\
&=\langle p_1,(U_2U_1)^{-1}\delta(U_2U_1)\rangle.
\end{split}
$$

它是 quotient 上的 canonical potential 的 pullback。取 $\delta$ 得约化辛形式，完成证明。∎

这也是 $T^*G$ cotangent symplectic groupoid 的显式可组合关系；此名称不代替上面的计算。

**连续连接的光滑拼接。** 给定约束上的 $(U_1,p_1;U_2,p_2)$，可以选一条全区间 smooth path $u(x)$，使 $u(-L)=1$、$u(0)=U_1$、$u(L)=U_2U_1$，并在三个指定点附近取平坦 collars。它定义一个全局 smooth $A_x=-u'u^{-1}$、$E=-up_1u^{-1}$。第二段以自己的左端归一化 transporter $u(x)U_1^{-1}$ 描述时，其 electric coordinate 正好是 $p_2=\operatorname{Ad}_{U_1}p_1$。Y1 的单射性说明每份原区域数据与这一 restriction 由自己的 based gauge transformation 相连。故约化并未只重构一条抽象 group element：每个约化类确有光滑 continuum representative。反向的两 global representatives 若有同一 $(U,p)$，由全区间 Y1 给一个 global proper gauge transformation。对于 spacetime solutions，下面的显式 reduced evolution 与原方程的唯一性将该结论推广到整段时间。


## 6. 全 smooth algebra 的 quotient 与逐函数 surjectivity

先用真正的 joint smooth algebra

$$
\mathcal A_{12}=C^\infty(P_{12}),
$$

而不是假定每个 joint function 是有限个 factor functions 的乘积之和。令

$$
\mathcal I_\Gamma
=\{F\in\mathcal A_{12}^{G_\Gamma}:F|_{C_\Gamma}=0\}.
$$

定义

$$
\boxed{
\mathcal A_{\mathrm{sew}}
=\mathcal A_{12}^{G_\Gamma}/\mathcal I_\Gamma.
}
$$

### 定理 Y4

$$
\boxed{\mathcal A_{\mathrm{sew}}\cong\mathcal A_M=C^\infty(T^*G)}
$$

为全部 smooth functions 的 Poisson star-isomorphism。

**Ideal。** 对 invariant $G$，$\{\mu_\Gamma(\xi),G\}=0$，所以 $X_G$ tangent to $C_\Gamma$。若 $F|_{C_\Gamma}=0$，则 $dF(X_G)=0$ 于该 locus；故 $\mathcal I_\Gamma$ 是 invariant algebra 内的 Poisson ideal。

**显式 quotient。**

$$
\mathcal Q(F)(U,p)=F(1,p;U,p).
$$

它只依赖 $F|_C$ 的 gauge class，kernel 恰为 $\mathcal I_\Gamma$。Y3 的辛性给其 Poisson 性。

**显式全局 extension。** 对任意 $f\in C^\infty(T^*G)$，定义

$$
\boxed{\mathcal S(f)(U_1,p_1;U_2,p_2)=f(U_2U_1,p_1).}
$$

它对 cut group invariant，且 $\mathcal Q\mathcal S=1$。因此满射直接覆盖全部 smooth functions，没有 Hahn–Banach/density 或未知 extension theorem。

实际上 $\mathcal S$ 本身也 Poisson：对固定 $U_2$，$(U_1,p_1)\mapsto(U_2U_1,p_1)$ 是 left-translation 的 cotangent lift；$\mathcal S(f)$ 对 $p_2$ 无依赖，第二个 factor 不产生额外 bracket。由第 3 节的显式公式也可逐项核对。∎

在 compact-open smooth topology 中这些 pullbacks 连续，$\mathcal Q$ 有连续 section，故亦为 underlying locally convex spaces 的 split quotient。此处是普通有限维 manifold 的 $C^\infty$ algebra，不继承无限维 scalar graph topology 的非联合连续性障碍。

## 7. Wilson-line sewing 与电场插入

对任意 representation，

$$
\boxed{
D_\rho(U_2U_1)_{ab}
=\sum_cD_\rho(U_2)_{ac}D_\rho(U_1)_{cb}.
}
$$

Cut transformation 将两因子分别乘 $D_\rho(k)^{-1}$ 与 $D_\rho(k)$，中间 index 的 contraction 消去它们。故这确实是 joint invariant observable，并通过 Y4 成为 global Wilson line。

这里个别 $D(U_1)$、$D(U_2)$ 是各区域 proper-gauge-invariant、cut-frame-covariant 的 observables。它们不应先各自取 cut invariant，失去 endpoint indices 后再尝试恢复这条式子。

Electric insertions 可同样 sewing。比如

$$
D_\rho(U_2)\,dD_\rho(p_2)\,D_\rho(U_1)
\big|_{C_\Gamma}
=D_\rho(U_2U_1)\,dD_\rho(p_1).
$$

因为 $p_2=\operatorname{Ad}_{U_1}p_1$。多次 electric insertions、表示的 tensor products 和 intertwiner contractions 由相同恒等式处理。

固定一个额外 marked interior point 时，应把它也视为带 frame 的 endpoint 并细分区间；open subpath Wilson matrix 在未释放该 frame 的 algebra 内。释放后只有相应 invariant contractions 留下。**任意内部 open subpath 不能不加 frame/dressing 就成为 proper-gauge-invariant scalar observable。**

这给出了一个 finite-marked-interval observable system，而不仅是一条孤立的 full-interval Wilson line。

## 8. Dynamics 与 timelike history sewing

Gauss law 给

$$
H_I=\frac{e^2}{2}\int_a^b\langle E,E\rangle dx
=\boxed{\frac{e^2\ell}{2}\langle p,p\rangle}.
$$

真实外端 $A_t=0$ 时，Hamilton equations 为

$$
\dot p=0,\qquad\dot U=e^2\ell Up,
$$

因此对所有数据和全部有限时间

$$
\boxed{U(t)=U(0)e^{e^2\ell tp},\qquad p(t)=p(0).}
$$

所有 finite-time evolved observables 仍是 $C^\infty(T^*G)$，不存在经典有限时间 blow-up。

在一般 prescribed endpoint histories $q_a=A_t(a),q_b=A_t(b)$ 下，约化 action 中的边界耦合为 $\langle J_a,q_a\rangle+\langle J_b,q_b\rangle$。等效 Hamiltonian 为

$$
H_q=H_I+\langle p,q_a\rangle-\langle\operatorname{Ad}_Up,q_b\rangle.
$$

所以

$$
\dot U=-q_bU+Uq_a+e^2\ell Up,
\qquad\dot p=[p,q_a].
$$

若 $\dot V_a=-q_aV_a$、$\dot V_b=-q_bV_b$、$V_{a,b}(t_0)=1$，实际解为

$$
p(t)=V_a(t)p_0V_a(t)^{-1},
\quad
U(t)=V_b(t)U_0e^{e^2\ell(t-t_0)p_0}V_a(t)^{-1}.
$$

这给完整的区域 source/history evolution。每个固定 source 下的 observable algebra 仍为 $C^\infty(T^*G)$；这些公式并不宣称所有 sharp temporal-source evaluations 满足 scalar 笔记中的 compact-smooth-history-density 判据。

### 定理 Y5：演化与 sewing 交换

在两个区域，外端 histories 为零，共同 cut history 为任意 $q(t)$。如果初始时 $p_2=\operatorname{Ad}_{U_1}p_1$，则两侧演化保持此约束；对 $U=U_2U_1$，cut 的两个 $q$ 项相消，得到

$$
\dot U=e^2(\ell_1+\ell_2)Up_1,
\qquad\dot p_1=0.
$$

又有

$$
(H_1+H_2)|_{C_\Gamma}
=\frac{e^2(\ell_1+\ell_2)}2\langle p_1,p_1\rangle.
$$

因此 Y3/Y4 恢复 independently defined global dynamics，而不是只给任意抽象辛同构。共同 cut history 是已释放 gauge frame 的时演化选择，不成为额外 physical oscillator。∎

## 9. Wilson loops 在这里具体意味着什么

固定时间的空间 interval 没有非平凡闭合空间回路；一条仅由来回路径组成的 closed spatial Wilson loop 为 $\dim\rho$。这不意味着 spacetime Wilson loops 平凡。

在 temporal gauge，可从任意初始 representative $u_0$ 写

$$
E(t,x)=-u_0(x)p\,u_0(x)^{-1},
\quad
A_x(t,x)=A_{x,0}(x)+e^2tE_0(x),\quad A_t=0.
$$

直接代入三个 YM equations 验证这是完整解。为计算 closed Wilson traces，可用 time-independent change of trivialization $u_0^{-1}$：它可能不在 proper based group 中，但不改变 closed trace。在这张 trivialization 中

$$
A_x(t,x)=-e^2tp,\qquad A_t=0.
$$

所有 path-ordered matrices 对同一个 $p$ 取值，故对任意 piecewise smooth closed spacetime path $\gamma$，

$$
\boxed{
W_\rho(\gamma)
=\operatorname{tr}_\rho
\exp\left(e^2p\oint_\gamma t\,dx\right).
}
$$

这是 $p$ 的 smooth class function。对先沿 $t_0$ 从左到右、再沿 $t_1$ 返回的矩形，指数为 $-e^2\ell(t_1-t_0)p$。所有这些 closed spacetime Wilson loops 都在 $\mathcal A_M$ 内。

Open spacetime paths 的 endpoints 若在保留 frames 的真实端点，holonomy matrices 也是 $(U_0,p)$ 的 smooth functions，例如左端到右端为

$$
U_0\exp\left(e^2p\int_\gamma t\,dx\right)
$$

在上面的固定 framing/temporal-gauge convention 下。若 endpoints 位于额外 marked interior points，就保留那些 frames 或添加 dressing 后再构造 invariant contractions。Holonomy 对 connection 的 smooth dependence 与局部 field representatives 保证一般 piecewise smooth paths 的函数在 quotient atlas 上一致。

## 10. 有限多 cuts、refinement 与 endpoint covariance

对连续 $N$ 段，约束为

$$
p_{i+1}=\operatorname{Ad}_{U_i}p_i.
$$

约化映射是

$$
[(U_1,p_1),\ldots,(U_N,p_N)]
\mapsto(U_N\cdots U_1,p_1).
$$

重复第 5 节的 potential identity，得到 exact symplectic reduction。任何括号顺序都给同一个有序 group product、相同 transported electric momentum 与 Hamiltonian $e^2(\sum_i\ell_i)\|p_1\|^2/2$。所以 finite associativity 和 refinement invariance 都严格成立。

剩余真实端点 frame group $G_{-L}\times G_L$ 在各 maps 下 equivariant。若区间 lengths/coupling data 也随几何变换相应运输，前述动力学比较同样 covariance。此处没有移除真实端点 frames 的额外 reduction。

## 11. No-go theorems

### N1：先分别取 cut invariant 会丢失跨区间 Wilson line

将两区域先各自仅保留对其 cut endpoint group invariant 的 functions。在 $p_1=p_2=0$ 上，cut group 对每个 $U_i$ 的左／右作用 transitive，因此所有这些 separately invariant functions 的 restriction 都不依赖 $U_i$。任何仅由这两份代数取值构成的 observable 也不能区分不同 $U_2U_1$。

但 global framed algebra 的 $D_\rho(U_2U_1)$ 可以区分它们；对 $SU(2)$ 可取 product holonomy 为 $1$ 与 $-1$，fundamental trace 分别为 $2$ 与 $-2$。

因此存在严格障碍：

$$
\boxed{\text{separately cut-invariant algebras 的 field-preserving sewing 不能恢复全部 global framed Wilson observables。}}
$$

Joint invariant contractions 必须在丢掉 endpoint indices 之前构造。

### N2：不能直接对整个 product Poisson algebra 除 constraint ideal

$I(C_\Gamma)\subset C^\infty(P_{12})$ 一般不是 Poisson ideal。例如 $\mu_\Gamma(\xi)|_C=0$，但

$$
\{U_1,\mu_\Gamma(\xi)\}=\xi U_1
$$

在 $C$ 上不为零。故 $C^\infty(P_{12})/I(C)$ 没有由旧 product bracket 直接下降的 Poisson structure。

正确公式是先取 joint invariant algebra（或相应 Poisson normalizer），再 quotient。

### N3：裸的内部 open Wilson line 不是 proper-gauge-invariant function

若路径 endpoints $x,y$ 在内部，based gauge transformations 仍可独立改变 $k(x),k(y)$，使

$$
U_{y\leftarrow x}\mapsto k(y)U_{y\leftarrow x}k(x)^{-1}.
$$

因此其 matrix entries 不能是 quotient 上的 scalar observables。加入 marked frames、外端 dressing 或 invariant network contractions 才得到合法对象。

### N4：有限 algebraic tensor product 不含所有 joint smooth functions

在两个局部坐标 $x,y$ 上，$e^{xy}$ 不是有限和 $\sum_{j=1}^Nf_j(x)g_j(y)$：在 $y=0$ 的各阶导数产生全部 $x^k$，若该分解成立，它们都落在同一个有限维 span，矛盾。因此必须使用 joint smooth class 或适当 smooth tensor completion；有限 tensor identities 不能用作 Y4 的 full-class onto 证明。

### N5：若改变真实端点 gauge policy，会得到另一个代数

若把两个真实端点 group 也在零 moment level 一并约化，则 $J_a=J_b=0$ 强制 $p=0$，而 $G_a\times G_b$ 对 $U$ transitive，最终 phase space 为一点。它不可能同构于这里保留 open Wilson lines 的 $C^\infty(T^*G)$。

因此 endpoint framing／fixed-source policy 是可观测对象的定义输入，不是证明末尾可以任意补选的 convention。

## 12. 核验范围

**Verified:** continuum Gauss quotient 的双向 maps、约化 potential 与 symplectic form、全部 smooth observables 的 kernel/image/section、Wilson/electric insertion sewing、真实 global dynamics 和有限 reduction by stages 均在正文给出证明。[Mathematica 检查](<../numerics/observable_sewing_ym_audit_checks.wl>) 的 [23 组结果](<../numerics/observable_sewing_ym_audit_results.json>) 同时包含本模型与一般 split bracket 的有限恒等式。

**Assumptions:** 正文的 pure 1+1 YM、紧连通单连通群、正定 Ad-invariant pairing、smooth connections、保留真实端点 frames、外端 A_t=0、无 matter/interface charge。

**Not verified:** 本文只证明 classical algebra sewing；没有把全部 smooth observables 量子化，也不将这个有限维约化推广为高维 YM 或 CS 的定理。一般群的结论来自正文 Ad-invariance、Gauss ODE 和实际 inverse maps，不由 SU(2) 的有限检查外推。
