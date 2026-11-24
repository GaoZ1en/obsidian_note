# global AdS₄ 的双迹 Robin 条件：零通量不等于正能

**最简单的判别数是 $\kappa_c=-2/\pi$。** 在 $L=1$、$b=\kappa a$ 的约定下，整个 Robin 族都没有边界辛通量，也都保时间平移；但当 $\kappa<\kappa_c$ 时已经有球对称指数增长解。不需要求非线性基态便可区别这三个命题。

## 从标量变分到一维模型

在固定 global AdS$_4$ 上取实标量 $m^2=-2$，体拉氏量 $-[(\nabla\phi)^2-2\phi^2]/2$。径向反项 $-\phi^2/2$，有限边界作用量 $-\int\sqrt{-g_{(0)}}\,\kappa a^2/2$，$\phi=a/r+b/r^2+\cdots$。有限侧面变分为 $(b-\kappa a)\delta a$；让 $\delta a$ 自由，在壳施加混合条件。参数 $\kappa$ 固定、不显含时。$X_t\phi=\partial_t\phi$，转动也保留；一般有限非零 $\kappa$ 不保共形缩放。这里的快系数是此无共振方案下的重整化动量，不是对所有标量的通则。

取 $\int Y_{00}^2d\Omega=1$，令 $\phi=Y_{00}\,u(t,x)/r$、$x=\arctan r\in[0,B]$、$B=\pi/2$。正则原点给 $u(0)=0$，边界系数给 $u(B)=a_0,\ u_x(B)=-b_0$（下标为球谐系数）。径向方程恰是 $u_{tt}=u_{xx}$，即

$$u_x(B)+\kappa u(B)=0,\qquad H_t=\tfrac12\int_0^B(u_t^2+u_x^2)dx+\tfrac\kappa2 u(B)^2.$$

用边界方程得到 $dH_t/dt=0$；相同方程使端点 Wronskian 为零。这给出[手稿附录 D](</Users/koishi/Library/Containers/com.tencent.xinWeChat/Data/Documents/xwechat_files/wxid_sezf6lc871x122_ee84/msg/file/2026-11/AdSScalar5(4).pdf#page=77>)的一个可精确求谱的扇区，与 [16 的 BF 双根](<03 BF 双根与边界耦合生成的尺度.md>)不是同一质量窗。

## 阈值的两个独立判据

1. **从谱看。** 中心正则的谐振模正比于 $\sin(\omega x)$；于是 $\kappa=-\omega\cot(\pi\omega/2)$。$\kappa=0$ 给替代谱 $\omega=1,3,\ldots$；固定 $a_0=0$ 的 Dirichlet 端点给 $2,4,\ldots$。连续取 $\omega\to0$，静态解是 $u\propto x$ 而非零函数，$\kappa_c=-1/B$。负本征值写成 $\omega=i\eta$，$\kappa=-\eta\coth(B\eta)$；$\eta>0$ 时该函数从 $-1/B$ 严格降到 $-\infty$。
2. **从能量看。** $u(B)^2=(\int_0^B u_x dx)^2\le B\int_0^B u_x^2dx$，等号只在 $u\propto x$。二次型在 $\kappa\ge-1/B$ 时非负，低于此值时试探剖面 $u\propto x$ 已在二次型域给出负方向。更高球谐有额外正的角向势 $\ell(\ell+1)/\sin^2x$，故球对称阈值就是常数 Robin 耦合下的首个失稳点。加引力反作用后，线性起点可沿用，终态与能量下界不可沿用。

**来源与核查。** 背景为[多迹的径向解释 [47,48]](<../§7.2 推广方向与可计算模型.md#L61-L65>)；以上是本算例的直接谱判据。**Verified:** Wolfram 在原 $r$ 坐标检验 $R_\omega=\sin(\omega\arctan r)/r$ 的 KG 残差、快慢系数和零频极限；二次型独立给同一阈值。**Assumptions:** 无源自由标量、常数 Robin、单位半径。**Not verified:** 非线性双迹真空或引力孤子的稳定性。