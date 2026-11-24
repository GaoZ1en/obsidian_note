# AdS₄ Maxwell：边界 CS 项没有应力，为什么仍不能删？

**在无源、无缺陷、平凡线丛的全局问题上，两条路线给同一个时间平移荷：恰是正的 Maxwell 体能量。** 直接 Noether 计算中，体作用量和边界 Chern–Simons（CS）作用量各给一个依赖 $A_t$ 的表面项，靠混合边界条件才相消，不需要选 $A_t=0$。这是对[原总览提出的检验](<../§7.2 推广方向与可计算模型.md#L29-L35>)的一次实现。

## 场、定向与自由数据

固定无视界的 global AdS$_4$，$(-+++)$，时间平移 $\xi=\partial_t$ 保持调节面。只有一形式 $A$ 动力学；$F=dA$，$G=*F/e^2$，$c=k/(2\pi)$。定向为 $dt\wedge\mathrm{vol}_\Sigma$；$S=\partial\Sigma$ 取空间外诱导定向，$\Gamma$ 取时空外诱导定向，所以 $\partial\Gamma=-S_f+S_i$。拉回记 $a=A|_\Gamma, f=da$。作用量为

$$S=-\tfrac12\int_M F\wedge G+\tfrac c2\int_\Gamma a\wedge f.$$

让边界联络变分，在同一调节面先合并两项：侧面为 $\delta a\wedge(-G+cf)-\tfrac c2d(a\wedge\delta a)$（所有场取拉回）。自由的 $\delta a$ 给出 $G|_\Gamma=cf$；$k=0$ 给零电位移，不是固定联络。AdS₄ Maxwell 的两支可容许此极化；实际解在原点正则，撤去调节面时保有限能量。按[端点约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md#L13-L27>)，

$$\theta_\Sigma=-\int_\Sigma\delta A\wedge G+\tfrac c2\oint_S a\wedge\delta a,\qquad \omega=\delta\theta.$$

## 同一个 Hamiltonian 的两次计算

**外源度规。** 固定一形式 $A$ 变分度规。CS 密度不含 Hodge 星，故没有 CS 应力张量。Maxwell 张量为 $T_{\mu\nu}=(F_{\mu\rho}F_\nu{}^\rho-g_{\mu\nu}F^2/4)/e^2$；$H_T=\int_\Sigma\sqrt h\,n^\mu T_{\mu\nu}\xi^\nu$，$n$ 未来指向。其能流三形式为 $J_T=(F\wedge\iota_\xi G-\iota_\xi F\wedge G)/2$。对切于 $\Gamma$ 的 $\xi$，代入 $G|_\Gamma=cf$ 即得 $J_T|_\Gamma=0$：这里是能流点态为零，不只是它在球面上的积分为零。

**直接 Noether 法。** 用 $X_\xi A=\mathcal L_\xi A=\iota_\xi F+d\Phi$，$\Phi=\iota_\xi A$，不另附规范变换。因 $\xi$ 切于侧面，端点作用量变分为 $\alpha_\xi=\int_\Sigma\iota_\xi L-\oint_S\iota_\xi\ell$。把 $X_\xi$ 代入 $\theta_\Sigma$，在闭 $S$ 上分部积分：

$$\begin{aligned}
H_{\rm bulk}&=H_T+\int_\Sigma\Phi\,dG-\oint_S\Phi G,\\
H_{\rm CS}&=\tfrac c2\oint_S(a\wedge d\Phi+\Phi f)=c\oint_S\Phi f,\\
H_{\rm dir}-H_T&=\int_\Sigma\Phi\,dG-\oint_S\Phi(G-cf).
\end{aligned}$$

前一项是 Gauss 约束，后一项是边界方程。在解空间上两者为零，对每个切变分的一阶变化也为零。取 $A=0$ 的零点，比较的是 $H$ 本身而不只是 $\delta H$。

**规范核的另一项检查。** 对场无关、光滑、全局定义的参数 $\lambda$，$X_\lambda A=d\lambda$；由 $\omega(\delta,X_\lambda)$ 得 $\delta Q_\lambda=\int_\Sigma\lambda d\delta G-\oint_S\lambda(\delta G-c\delta f)=0$。这解释了本扇区为何没有额外边界电荷；不是“所有 AdS 边界规范变换都必须商掉”。若省略角势，体辛流在侧面一般是切向全导数而非点态为零，以上生成方程就丢了一项。

**来源与核查。** [Marolf–Ross [43]，§§3–5](<https://arxiv.org/pdf/hep-th/0606113v3#page=13>)给无质量规范场的边界极化；[Witten [41]](<https://arxiv.org/abs/hep-th/0307041v1>)给三维背景 CS 与极化变换的语境。上面的抵消是本笔记在所选混合问题的推导。**Verified:** 独立的端点 Noether 分解、度规法及纯规范方向的辛收缩给同一符号；$c=0$ 是 Neumann 检查。**Assumptions:** 空间切口闭合、无其他内边界、无外源、平凡束。**Not verified:** 非平凡线丛及量子 level、大规范变换、缺陷或视界上的边缘自由度。