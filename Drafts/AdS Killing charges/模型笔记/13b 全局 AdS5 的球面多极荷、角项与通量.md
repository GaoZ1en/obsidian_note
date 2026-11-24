# 全局 AdS$_5$ 的球面多极荷：同一电场，两种角项处方

在全局 AdS$_5$ 上，取二形式规范场的一支振荡电模和一个不随时间变的球面一形式 $Y$。Esmaeili–Hosseinzadeh [93] 的完全保守处方给 $\delta Q_Y=0$；其 $\Delta$ 处方却给 $Q_Y(t)=4A\cos 2t$。两者的体作用量、场强和规范变换 $X_YB=dY$ 都相同。差别在于是否把侧面变分的规范部分当作**端点角势**：留为通量时，单个切口上的荷可积，不意味着它随时间守恒。

## 圆柱边界上的变分问题

令 $L=g=1$，$f=1+r^2$，取固定度规 $ds^2=-fdt^2+dr^2/f+r^2d\Omega_3^2$。$B$ 是 Abelian 二形式，$H=dB$；中心要求场强光滑，边界附近取径向规范 $B_{r\mu}=0$。用 [93 (2.1)–(2.5)](https://arxiv.org/pdf/2107.10282v1#page=5) 的记号，是 $d=4,p=1$（$p$ 是**参数**的次数），$n_p=d-2p-1=1$。共形边界度规 $h=-dt^2+q_{ij}dz^i dz^j$，$q$ 为单位圆球度规。选择固定参考标尺，取 $r$ 无量纲，写

$$
 B_{\mu\nu}=a_{\mu\nu}+b_{\mu\nu}\log r+o(1),\qquad D_\mu b^{\mu\nu}=0,
 \qquad a=\hat a+d\varphi .
$$

这里 $a,b$ 分别是 [93] 的 $A^{[\alpha]},A^{[\beta]}$；第二式是径向 Gauss 约束。$\varphi$ 是一形式，不是电场主变量 $\phi$。按附录 B，先把 $a_{ij}$ 分成球面余恰当部分 $\hat a_{ij}$ 与 $(d\varphi)_{ij}$，取 $\varphi_t=0$，则 $\hat a_{ti}=a_{ti}-\dot\varphi_i$。剩余规范变换使 $\varphi\to\varphi+\lambda$ 而不改变 $b,\hat a$（参数的恰当部分另有冗余）。

在 $r=R$ 截断，作用取

$$
 S_{\rm reg}=-\frac12\int_{r\le R}H\wedge\star_5H,
 \qquad S_{\rm ct}=\frac{\log R}{4}\int_{\Gamma} d^4x\sqrt{|h|}\,b_{\mu\nu}b^{\mu\nu} .
$$

反项写为渐近系数形式，只保留发散项；见 [93 (3.6)、(4.1)](https://arxiv.org/pdf/2107.10282v1#page=10) 及 [附录 A，(A.7)–(A.8)](https://arxiv.org/pdf/2107.10282v1#page=22)。此例径向规范下体辛密度 $O(r^{-3}\log^2r)$ 已可积，但**作用变分**仍有 $-\tfrac12\sqrt{|h|}\log R\,b^{\mu\nu}\delta b_{\mu\nu}$，不能丢掉反项。其抵消后的有限侧面变分密度为 $-\tfrac12\sqrt{|h|} b^{\mu\nu}\delta a_{\mu\nu}$，因为这里 $c_p=n_p-1-\delta_{n_p,1}=-1$。

为让下文同一电模的幅度在两种处方中都可变，须先消去**规范不变部分**的侧面变分。本文取一个固定的混合条件（不是 [93] 替我们选的）：$e_i=b_{ti}$，令 $\hat a_{ij}=0,\ \hat a_{ti}=e_i/2$。加 $S_{\rm fin}=-\tfrac14\int_\Gamma d^4x\sqrt q\,e_i e^i$（用 $q$ 升空间指标）。此时规范不变部分为 $\sqrt q\,e^i\delta\hat a_{ti}=\tfrac12\sqrt q\,e^i\delta e_i$，恰被 $\delta S_{\rm fin}$ 消去。这个选择用了圆柱时间，不声称保持所有 AdS 等距变换。它是 [93 附录 C，(C.1)–(C.2)](https://arxiv.org/pdf/2107.10282v1#page=25) 可积关系的一例；两种处方共用 $S_{\rm ren}=\lim(S_{\rm reg}+S_{\rm ct})+S_{\rm fin}$。

## 同一侧面项可以怎样分配？

余下的是 $\Theta_\varphi=-\sqrt{|h|}\,b^{\mu\nu}D_\mu\delta\varphi_\nu$。按 [93 (3.3)–(3.5)](https://arxiv.org/pdf/2107.10282v1#page=10) 的密度和切口定向写成 $\Theta_\varphi=\partial_\mu C^\mu+\mathbb F$，相应的切口预辛形式是 $\Omega=\Omega_{\rm ren}+\int_{S^3}\delta C^t$。$\mathbb F$ 是场空间一形式，$\delta\mathbb F$ 才是辛通量密度；两者都不是能流。

- **完全保守 $\circ$。** 利用 $D_\mu b^{\mu\nu}=0$，取 $C_\circ^\mu=-\sqrt{|h|}\,b^{\mu\nu}\delta\varphi_\nu$，$\mathbb F_\circ=0$。约束面上 $\Omega_{\rm ren}$ 中含 $\delta\varphi$ 的表面项正好被 $\int\delta C_\circ^t$ 抵消。因此 $\Omega_\circ(\delta,X_Y)=0$ 对**每个**允许变分成立；以真空为零点，$Q_Y^\circ=0$。[93 (4.7)–(4.12)，PDF 12–13／正文 11–12](https://arxiv.org/pdf/2107.10282v1#page=12)。
- **有通量 $\Delta$。** 取 $C_\Delta^\mu=0$，$\mathbb F_\Delta=\Theta_\varphi$；要求 $\dot\varphi_i=0$，而不固定 $\varphi_i$ 的值，故仍容许不随时间变的 $Y_i$。用 [93 (4.13)–(4.18)，PDF 13／正文 12](https://arxiv.org/pdf/2107.10282v1#page=13) 的切口荷号，定义径向电场系数 $E_i=\lim_{r\to\infty}r H_{tri}=-e_i$，则
  $$Q_Y^\Delta=\int_{S^3}\sqrt q\,Y^i E_i,\qquad \Omega_\Delta(\delta,X_Y)=\delta Q_Y^\Delta .$$
  在 $Y$ 场无关时这个变分可积。除非进一步消去余通量，侧面仍有 $\int\mathbb F_\Delta$；它不是一个对所有允许变分都驻定的封闭系统。以下通量读数取 [93] 的**荷增加**号 $\mathbb F_Y:=dQ_Y^\Delta/dt$；若取向外流失为正，号相反。

## 在一支正则振荡解上读数

取 $S^3$ 上单位归一化的最低余恰当一形式 $Y$，$d^\dagger Y=0$，$\Delta_{S^3}Y=4Y$。例如在 $d\Omega_3^2=d\chi^2+\cos^2\chi\,d\alpha^2+\sin^2\chi\,d\beta^2$ 中，$Y=(\cos^2\chi\,d\alpha+\sin^2\chi\,d\beta)/(\sqrt2\,\pi)$，$\int\sqrt q\,Y_iY^i=1$。这是 Killing 一形式作为**内部规范参数**，并非让时空度规作 Lie 变分。

令 $c(t)=A\cos(2t)$，$A$ 为任意实幅度。给出满足上述混合条件的实际势（外部径向规范代表）：

$$
 B=u\,dt\wedge Y+v\,dY,\quad
 u=-2c(\log f+1),\qquad v=\tfrac12\dot c\,(\log f+f^{-1}).
$$

取外微分即得 $H_{tri}=4crY_i/f$，$H_{rij}=\dot c\,r^3(dY)_{ij}/f^2$，$H_{tij}=2c\,r^2(dY)_{ij}/f$。中心的势可换片：减去 $d(\dot c\,Y/2)$ 后，$dt\wedge Y$、$dY$ 系数分别从 $O(r^2),O(r^4)$ 起，故此场强并无中心缺陷。外端则有 $b_{ti}=-4cY_i$、$a_{ti}=-2cY_i$，$a_{ij}=0$；取此代表 $\varphi=0$ 即满足 $\Delta$ 的时间条件，加入任一静态 $dY$ 仍切于边界条件。

可不用猜势来复核。在 [93 (2.23)–(2.24)，PDF 7／正文 6](https://arxiv.org/pdf/2107.10282v1#page=7) 取该球谐，$H_{tri}=4\phi(t,r)Y_i/r$。其主变量便是 $\phi=cr^2/f=c\cos^2 x$，$r=\cot x$，满足

$$
 \partial_t^2\phi=\frac1r\partial_x(r\partial_x\phi)-\frac{4}{\cos^2x}\phi .
$$

因此 $\phi^{(1,0)}=\lim_{r\to\infty}\phi=c$，$\Delta$ 处方具体给出

$$
 \boxed{Q_Y^\Delta(t)=4A\cos 2t,\qquad \mathbb F_Y(t)=-8A\sin 2t .}
$$

例如 $A\ne0$ 时 $t=0$ 的通量恰为零却有非零荷；从 $0$ 到 $\pi/4$，荷由 $4A$ 降到零，正好等于该段通量积分给出的改变量 $-4A$。完全保守处方在同一解族上始终 $\delta Q_Y^\circ=0$。这就把三个说法区分开：某刻荷为零、某刻通量为零、以及整个变换是预辛核。$H^1(S^3)=0$，这个 $\Delta Y=4Y$ 多极不是谐和零模；它积在三维切口，不是边界一形式对称在闭二面上的拓扑荷，也不是 $H_{\partial_t}$。

**Verified:** [93] *p-Form Surface Charges on AdS: Renormalization and Conservation*，arXiv:2107.10282v1（此版 PDF 页比正文大 1）；球谐方程、反项、角势和两种处方已对到上引原页。本文的混合条件与振荡解为具体化，不归于原作者。Mathematica 一路从 $u,v,Y$ 得 $H$ 并将全部 $\partial_M(\sqrt{-g}H^{MNP})$ 化零，另一路将 $c\cos^2x$ 代入主方程亦得零；球谐范数为 1，电场系数为 $4c$。xAct 核对反对称张量动能分部积分与角势乘积恒等式。  
**Assumptions:** 单位半径与耦合、球面光滑、无源、固定上述有限项及对数标尺，用场无关参数，先算含角项的预辛形式再商掉核。  
**Not verified:** 未证明该混合条件下全部模式的稳定性或完备性，未量子化有通量的系统；[93 §4.3] 的 $\Box$ 处方另有时间依赖的参数和另一组荷，不在这里用 $4\phi^{(1,0)}$ 代替它。
