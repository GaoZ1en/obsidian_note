# 怎样用边界条件选择一个 Einstein–标量孤子？

**只需先算一条与边界势无关的曲线。** 在 AdS$_4$ 的中心给定标量值，要求静态球对称解正则，把每个解在无穷远的两个系数记成 $(\alpha,\beta_s)$。指定 $\beta=W'(\alpha)$ 后，交点才是这个理论的孤子。原点附近可解析求出 $\beta_s'(0)=-2/\pi$，因而知道哪一个二次边界势恰好容许静态零模，不必先数值扫描整个非线性解族。

## 动力学和变分问题

跟随 [59] 置 $\ell=8\pi G=1$。度规与实标量**都**动力学，体作用为 $\int\sqrt{-g}\,[R/2-(\nabla\phi)^2/2-V(\phi)]$，取 $V=-2-\cosh(\sqrt2\phi)$。$V(0)=-3,\ V''(0)=-2$，无三次体势；$\phi=0$ 与 global AdS 是背景解。固定单位边界圆柱 $g_{(0)}=-dt^2+d\Omega_2^2$，$r$ 为面积半径，$\phi=\alpha/r+\beta/r^2+\cdots$。一个与此记号相容的重整化作用为

$$
S_{\rm ren}=\lim_{R\to\infty}\left[S_{\rm bulk}+\int_{r=R}\sqrt{-\gamma}\left(K-2-\tfrac12\mathcal R[\gamma]-\tfrac12\phi^2\right)\right]-\int\sqrt{-g_{(0)}}\,W(\alpha),
$$

$K$ 用外法向，固定端点，$W(0)=0$。在壳有限标量侧面变分是 $(\beta-W')\delta\alpha$ 乘边界体积元，故允许 $\delta\alpha$ 自由，$\beta=W'(\alpha)$。它使 $\delta\alpha\wedge\delta\beta=0$，固定度规源也无引力辛泄漏。固定的 $W$ 无显含时空坐标，保 $\partial_t$ 与旋转；完整 AdS 对称还要求权重匹配，如 $W\propto\alpha^3$，不适用于一般二次势。

## 先合并表面变分，再读质量

$X_\xi(g,\phi)=(\mathcal L_\xi g,\mathcal L_\xi\phi)$。$H_{\partial_t}$ 在壳为**引力加标量**的表面积分。球对称时写

$$
g_{rr}=r^{-2}-(1+\alpha^2/2)r^{-4}+M_0r^{-5}+O(r^{-6}).
$$

标量项 $\delta Q_\phi=-\oint\xi^\perp\delta\phi\,D_i\phi\,dS^i$ 在同一切口含 $4\pi[R\alpha\delta\alpha+\alpha\delta\beta+2\beta\delta\alpha]$；引力项含 $4\pi[-R\alpha\delta\alpha+\delta M_0]$。发散逐项抵消，在 $\beta=W'$ 上才得到有限、可积的总质量

$$
H_{\partial_t}=4\pi\left[M_0+\alpha\beta+W(\alpha)\right]\quad (M_{\rm AdS}=0).
$$

有限性来自约束给出的度规反作用，可积性来自边界关系；两者都不推出能量有下界。

## 从中心解到交点和 Hessian

置 $ds^2=-h e^{-2\chi}dt^2+dr^2/h+r^2d\Omega_2^2$。可复算的射击方程为

$$
(r^2h e^{-\chi}\phi')'=r^2e^{-\chi}V'(\phi),\qquad (rh)'=1-r^2V-\tfrac12r^2h(\phi')^2,\qquad \chi'=-\tfrac r2(\phi')^2.
$$

中心 $h(0)=1$，$\phi(0)=a$，$\phi'(0)=0$，最后平移 $\chi$ 使 $\chi(\infty)=0$。在与 $a=0$ 连通的正则支上，$h=1+r^2+O(a^2)$。线性方程 $[r^2(1+r^2)\phi']'+2r^2\phi=0$ 的中心正则解为

$$
\phi=a\frac{\arctan r}{r}+O(a^3),\qquad \alpha=\tfrac\pi2 a+O(a^3),\quad \beta_s=-a+O(a^3).
$$

这是**孤子曲线的切线**，不是一个非零振幅的精确 probe 孤子。偶势保证曲线在原点为奇函数。记 $\mathcal V(\alpha)=W(\alpha)-\int_0^\alpha\beta_s(s)ds$，则 $\mathcal V'=W'-\beta_s$。在局部单值的正则支，[59] 由静态孤子的变分关系得驻点处 $M=4\pi\mathcal V$；这不是任意非静态数据的能量公式。若 $W=q\alpha^2/2$，有

$$
\mathcal V=\tfrac12(q+2/\pi)\alpha^2+O(\alpha^4),\qquad q_{\rm zero}=-2/\pi .
$$

在此 $q$，同一中心正则模恰满足线性化边界方程。若要判断有限振幅分支的走向，需要曲线的三次项或直接非线性射击；若要证明全相空间的能量下界，还须不同的论证。

**来源与核查。** [Hertog–Horowitz [59]，hep-th/0412169v1，PDF／正文 1–3，(2)–(20)](https://arxiv.org/pdf/hep-th/0412169v1#page=2) 是体势、表面项、孤子方程和驻点质量的来源，其全局最低能陈述是猜想。适用范围另见 [60](https://arxiv.org/abs/hep-th/0508181v2)、[63](https://arxiv.org/abs/hep-th/0607171v2)、[64](https://arxiv.org/abs/hep-th/0701038v3)：旋量证明还涉及合适分支的全局超势等条件，不是由 $W$ 有极小值就够。**Verified:** Wolfram 验证中心正则解在径向方程中的残差为零、中心极限为 1（除去振幅）及两个渐近系数；质量一形式在 $\beta=W'$ 上等于所给 $\delta M$。**Assumptions:** $W'(0)=0$ 时原点才属于所选相空间；阈值在无视界、球对称、线性化的背景上。**Not verified:** 未作完整非线性孤子曲线或所有模的稳定谱。
