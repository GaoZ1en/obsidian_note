# 最小 AdS₄ 超引力：体约束消失，为什么超荷还在？

**把任意局域超对称都商掉，会把有边界作用的变换也错删。** 在固定边界 Einstein 圆柱、无 gravitino 源的四维最小超引力里，渐近参数可以取 AdS Killing 旋量的边值；它生成一个有限的切口超荷。它不要求每个解都有精确 Killing 旋量。下面用 Schwarzschild–AdS 的一个曲率分量直接区分这两个命题。

## 哪些场要变，哪些数据不能变

体维 $D=4$、边界维 $d=3$，号差 $(-+++)$。动力学变量是 vierbein（模局域 Lorentz 变换，即度规 $g$）与 Grassmann-奇的 Majorana 向量旋量 $\psi_\mu$（自旋 $3/2$）；无独立物质多重态。采用 [Hollands–Marolf，gr-qc/0611044v2，PDF／正文 11，(3.35)–(3.39)](https://arxiv.org/pdf/gr-qc/0611044v2#page=11) 的归一化；以下 $L=1$，Einstein 项系数 $1/2$。原文体拉氏四形式为
$$
 \mathbf L=\Big[\tfrac12R(D)+\epsilon^{\lambda\rho\mu\nu}\bar\psi_\lambda\Gamma\gamma_\mu D_\nu\psi_\rho+3+
 \tfrac i2\bar\psi_\lambda\gamma^{[\lambda}\gamma^{\rho]}\psi_\rho\Big]\boldsymbol\epsilon,
 \qquad \Gamma=\tfrac i{4!}\epsilon^{\mu\nu\rho\sigma}\gamma_\mu\gamma_\nu\gamma_\rho\gamma_\sigma .
$$
$D=\nabla+\text{contorsion}(\psi^2)$ 是 (3.38) 的超引力联络，$R(D)$ 也含该挠率，不能把非线性理论当成 Einstein 加无质量自由 Dirac 旋量。$\psi=0$ 时还原到 $\Lambda=-3$ 的 Einstein 理论。对任意局部 Majorana 参数 $\eta$，
$$ s_\eta g_{\mu\nu}=-2i\bar\eta\gamma_{(\mu}\psi_{\nu)},\qquad s_\eta\psi_\mu=(D_\mu+\tfrac12\gamma_\mu)\eta,\qquad s_\eta\mathbf L=d\mathbf B_\eta . $$
最后一个等号是体作用的离壳对称性，不是断言任意 $\eta$ 都保持边界数据。

取定义函数 $z$、$\tilde g=z^2 g$，边界 $\mathcal I\cong\mathbb R\times S^2$；固定 $\tilde g$ 的圆柱代表（渐近共形等距可配补偿 Weyl），在光滑共形标架中要求**带下方坐标指标**的 $\psi_\mu=O(z^{3/2})$。允许的 $\eta$ 渐近于参考 AdS Killing 旋量，$\eta=z^{-1/2}\eta_++O(z^{1/2})$，其领先系数有 (3.56)–(3.58) 的径向投影，不是任意边界函数。对一切满足约束的切变分也取相同衰减。

**变分的边界去向。** 在 bosonic Dirichlet 扇区，用外向 $K=\nabla\cdot n$，可在同一截断加 $\int\sqrt{-\gamma}\,(K-2-\mathcal R[\gamma]/2)$。重整化在壳变分的度规侧面项是 $\frac12\int\sqrt{-g_{(0)}}\,T^{ij}\delta g_{(0)ij}$，这里固定源而非令 $T^{ij}=0$。费米一阶动能给形如 $\bar\psi\wedge\gamma\Gamma\wedge\delta\psi$ 的侧面势；按上述衰减拉回为零。原文以分次 CPS 直接保留引力、挠率、费米对预辛流的贡献，见 [PDF／正文 13–16，(3.46)–(3.66)](https://arxiv.org/pdf/gr-qc/0611044v2#page=14)；此处不是从纯引力反项猜一般 gravitino 源的反项。$s_\eta g=O(1)$ 不动 $g_{(0)}$；$s_\eta\psi=O(z^{3/2})$ 则须在解空间用渐近场方程检验，不能只从离壳 $s_\eta\mathbf L=d\mathbf B_\eta$ 读出。

| 令 $\psi_\mu=O(z^p)$，切向 $\gamma_i=O(z^{-1})$ | gravitino 的侧面辛流密度 | 候选超荷的切口二形式 |
|---|---|---|
| 一般幂次 | $\delta\bar\psi_{[i}\gamma_j\Gamma\delta\psi_{k]}=O(z^{2p-1})$ | $(*N)_{ij}=O(z^{p-3/2})$ |
| 原文 $p=3/2$ | $O(z^2)$，消失 | $O(1)$，可有限而不为零 |
| 仅要求 $p=1/2$ | $O(1)$，不保证零 | $O(z^{-1})$，不保证有限 |

第二列还需普通引力的固定源条件才有总零通量。第三列用 $N_{\mu\nu}=\bar\eta\gamma_{[\mu}\gamma_\nu\gamma_{\rho]}\psi^\rho$：三枚下指标 gamma 给 $z^{-3}$、$\psi^\rho$ 给 $z^{p+2}$，而四维二形式的 Hodge 星共形不变。它是对**最坏允许幂次**的检验，不能排除特殊投影使领先系数为零。

## 切口变分给出的 Hamilton 生成元

在同一切口 $C=\partial\Sigma$ 固定渐近对称参数。按[分次化的 CPS 生成元约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)，在壳有
$$
 \delta H_\eta=\omega_\Sigma(\delta,s_\eta)=\int_C\delta(*N),\qquad H_\eta=\int_C *N,
$$
其中定向及 $N$ 的归一按[原文 PDF／正文 17，(3.67)–(3.71)](https://arxiv.org/pdf/gr-qc/0611044v2#page=17)，取 AdS 真空常数为零。作者选的局域 Noether 流 $\boldsymbol\theta(s_\eta)-\mathbf B_\eta$ 正比于 gravitino 方程，故在壳为零；**Hamilton 超荷**仍由 $\delta(*N)$ 积出，离壳还要加体内的超对称约束。这两个“荷”不是同一个定义。边界平凡、尤其在 $C$ 邻域为零的参数无表面荷，才是应商掉的规范方向；渐近非平凡参数给物理对称。两个超变换在约束面模规范后的分次括号对应旋量双线性构成的渐近时空向量，其时间分量与能量相联，不是把 $\int_C *N$ 本身称为能量。

**一个没有精确超对称的玻色解。** 暂时恢复 $L$，置 $\psi=0$、$f(r)=1+r^2/L^2-2\mu/r$、$ds^2=-fdt^2+dr^2/f+r^2d\Omega_2^2$，在外区 $f>0$ 考察 SUSY 是否固定这个解。令 $\mathscr D=\nabla+\gamma/(2L)$。取 $R_{\hat\theta\hat\phi\hat\theta\hat\phi}=(1-f)/r^2$ 的曲率号约定；作用在旋量的曲率（非坐标标架中须扣除标架对易子的导数）给
$$
 \mathscr R_{\hat\theta\hat\phi}
 =\tfrac14R_{\hat\theta\hat\phi ab}\gamma^{ab}+\tfrac1{4L^2}[\gamma_{\hat\theta},\gamma_{\hat\phi}]
 =\frac{\mu}{r^3}\gamma_{\hat\theta\hat\phi} .
$$
因为 $\gamma_{\hat\theta\hat\phi}^2=-1$，$\mu\ne0$ 时该矩阵无核，局部都不存在非零 $\mathscr D\eta=0$ 解；$\mu=0$ 才恢复精确 AdS 的抵消。两种解在 $\psi=0$ 处均有 $H_\eta=0$，但一个函数在一点为零不等于其 Hamilton 向量场为零，黑洞的时间平移荷也不必为零。这个算例不需要引入视界超荷：它检验的是局部可积条件和无穷远生成元的区别，而不是黑洞外区带内边界的完整 Hamiltonian。

**Verified:** 用 xAct/xCoba 对上述对角度规求曲率，得到 $R_{\theta\phi\theta\phi}/(r^4\sin^2\theta)=-L^{-2}+2\mu/r^3$、$R=-12/L^2$；另复核表中两组幂次。**Assumptions:** 标准固定圆柱、无物质源、最小 $\mathcal N=1$、严格的坐标 gravitino 衰减、以光滑参考边界旋量标记生成元。**Not verified:** 未独立重建非线性分次 CPS 的所有角项、完整超荷括号归一化与正能定理；也不把该边界条件的选择推广为任意附加物质或自由边界度规下的唯一性结论。
