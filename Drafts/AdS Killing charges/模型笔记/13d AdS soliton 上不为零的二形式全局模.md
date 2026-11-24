# 一个有非零拓扑表面荷的填充：AdS₆ soliton 上的二形式零模

在球面问题中，余恰当谐波的多极荷不等于上同调零模。下面给一个**辅助对照模型**：同为自由二形式，这次规范参数在边界闭合，却不能作为闭形式延拓入体。于是无源、光滑、无视界的解也可以有非零的守恒规范荷 $Q=q$，且它不是时间平移能量。

## 背景、极化及一个解析解

取固定的 AdS$_6$ soliton（$L=1$），

$$ds^2=-r^2dt^2+\frac{dr^2}{r^2 f}+r^2 f\,d\vartheta^2+r^2\sum_{i=1}^3(dx^i)^2,\quad f=1-(r_0/r)^5,\quad L_\vartheta=4\pi/(5r_0).$$

$r\ge r_0>0$，$\vartheta$ 周期 $L_\vartheta$ 使尖端光滑；三个 $x^i$ 各有单位周期。$\Sigma=D^2_{r\vartheta}\times T^3$，$\partial\Sigma=S^1\times T^3$。定向取 $dt\wedge dr\wedge d\vartheta\wedge d^3x>0$。动力场 $B$、$H=dB$，$S=-\int H\wedge *H/(2g^2)$，无带电物体。侧面固定切向 $B$ 的拉回为零，在这个有限零模扇区无需边界动能或减除。并不先用径向规范删掉径向分量。

取 $B=(g^2qt+b_0)r^{-2}dr\wedge d\vartheta$。因 $r-r_0\propto R^2$，尖端的 $dr\wedge d\vartheta$ 正比于光滑面元 $R\,dR\wedge d\vartheta$。$H_{tr\vartheta}=g^2q/r^2$，$\sqrt{-g}=r^4$，$(*H)|_\Sigma=-g^2q\,d^3x$，故 $d*H=0$。令 $a=\int_{D^2}B$（固定 $x^i$），则 $a=(g^2qt+b_0)L_\vartheta/r_0$。这段径向通量不是固定的边界切向源。

## 用辛形式决定它是不是规范冗余

$X_\Lambda B=d\Lambda$，选 $\Lambda=(1-r_0/r)d\vartheta/L_\vartheta$；该一形式在尖端光滑，边界值闭合且环积分为 1。$X_\Lambda a=\int_{D^2}d\Lambda=1$，$X_\Lambda q=0$。端点势 $-g^{-2}\int_\Sigma\delta B\wedge *H=q\,\delta a$ 给

$$\omega=\delta q\wedge\delta a,\qquad Q_\Lambda=q=\oint_{\partial\Sigma}\Lambda\wedge(-*H/g^2),\qquad H_t=\frac{g^2 L_\vartheta}{2r_0}\,q^2.$$

能量也可从 $H_{tr\vartheta}^2$ 的 Maxwell 能量密度独立积分：径向被积函数为 $g^2q^2/(2r^2)$。因此 $\partial H_t/\partial q=\dot a$，而 $\partial Q_\Lambda/\partial q=1$。这分清了两个守恒量各自在生成什么。

**什么使它不与 Gauss 约束矛盾？** 若同一边界参数能闭延拓为 $\Lambda_{\rm cl}$，则 $d(\Lambda_{\rm cl}\wedge *H)=0$，单端无源空间的总表面积分必为零。但本例的 $S^1$ 在体内收缩：若延拓闭，Stokes 将给 $\oint_{S^1}\Lambda=\int_{D^2}d\Lambda=0$，与其周期 1 冲突。因而 $X_\Lambda$ 不能与对所有物理扰动退化的小规范变换等同。

**归属与核查。** 这是改用另一维数和填充后的对照，**不是** [Hofman–Iqbal [91]](<https://arxiv.org/abs/1707.08577v4>) 的 AdS₅ 对数跑动，也不是 [Esmaeili–Hosseinzadeh [93]](<https://arxiv.org/abs/2107.10282v1>) 的球面多极谱。**Verified:** 分量 Hodge 星、能量积分和 $\partial_q H_t$ 用 Wolfram 核过；Stokes 给出与辛收缩一致的周期归一。**Assumptions:** 经典连续零模、定向如上，Dirichlet 极化，允许 $\delta q$，没有内切口。**Not verified:** 紧致 gerbe 的大规范识别、$q$ 的量子化、其他传播模的完备性。