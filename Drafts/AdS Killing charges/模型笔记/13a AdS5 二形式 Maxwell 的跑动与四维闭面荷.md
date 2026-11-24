# AdS$_5$ 二形式 Maxwell：跑动的是耦合，不是闭面荷

在四维边界，一形式对称的生成元积在闭**二面**上。它在无缺陷区可以随曲面变形；这不要求流的二点函数尺度不变。Hofman–Iqbal [91] 的例子同时展示了两件事：径向 Gauss 约束给出 $d\star_4 J=0$，而正则径向解给出依赖 $\log(|\Omega|/\bar r_\star)$ 的响应。前者是 Ward 恒等式，后者是双迹边界条件的跑动。

## 固定哪个源？

取单位半径、固定的 Poincaré AdS$_5$。连续 Abelian 二形式 $B$ 是唯一体动力学场，$H=dB$，$B\mapsto B+d\Lambda$，$\Lambda$ 为一形式；无带荷体弦、无 Chern–Simons 项。为算真空响应，采用 [91 §II.A](https://arxiv.org/pdf/1707.08577v4#page=11) 的欧氏截面 $ds^2=dr^2/r^2+r^2(d\tau^2+d\boldsymbol{x}^2)$，在 $r=0$ 选正则解，在边界附近取 $B_{r\mu}=0$。

约定 $B=\tfrac12 B_{\mu\nu}dx^\mu\wedge dx^\nu+\cdots$；二形式内积含 $1/2!$。为直接实现 [91 (2.4)、(2.12)](https://arxiv.org/pdf/1707.08577v4#page=11) 的流和源，可在 $r=R$ 取下列**欧氏**混合作用量与字典：

$$
\begin{aligned}
 I_R&=\frac{1}{2\gamma^2}\int_{r\le R}H\wedge\star_5 H
     +\frac{\gamma^2}{2\kappa(R)}\int_{r=R}J_R\wedge\star_4 J_R,\\
 J_R^{\mu\nu}&=-\gamma^{-2}\sqrt{g}\,H^{r\mu\nu}\big|_R,
 & b&=B|_R-\frac{\gamma^2}{\kappa(R)}J_R .
\end{aligned}
$$

这里 $\star_4$ 及 $J_R$ 的边界指标用固定的平直代表（笛卡尔坐标）处理；$J_R$ 是径向动量的重写，不是新边界场。取 $W=-I_{\rm on\ shell}$，分部积分后 $-\delta I_R|_{\Gamma}=\int_\Gamma\delta b\wedge\star_4 J_R$（在壳、固定 $\kappa(R)$）。因此允许的是 $\delta b=0$，不是分别固定 $B|_R,J_R$。在这些变分上反对称化，径向辛通量为零。本文用独立反对称分量的标准内积；[91 (2.2)](https://arxiv.org/pdf/1707.08577v4#page=10) 印作 $+(6\gamma^2)^{-1}\int\sqrt{-g}\,H_{MNP}H^{MNP}$，此处以作者**流字典和混合源**为归一化对照，不把其印刷系数直接搬进 $I_R$。

## 一个能同时检查符号和跑动的真空响应

选一组空间极化 $B_{ij}=\sigma_{ij}\beta(r)e^{i\Omega\tau}$、$\Omega\ne0$，用 $j$ 表示 $\langle J_{ij}\rangle$ 在此模的系数。$d\star_5 H=0$ 给

$$
 (r\beta')'-\frac{\Omega^2}{r^3}\beta=0,\qquad
 j=-\frac1{\gamma^2}\lim_{r\to\infty}r\beta',\qquad
 \beta=\hat b-\gamma^2j\log(r/r_0)+o(1).
$$

$r_0$ 仅是写展开的参考标尺。用同一个解把截断从 $R$ 移至 $\lambda R$，保持物理源 $b$ 而非保持 $\hat b$ 的某种标尺解释。由 $\beta(\lambda R)-\beta(R)=-\gamma^2 j\log\lambda+o(1)$ 得

$$
 \kappa(\lambda R)^{-1}=\kappa(R)^{-1}-\log\lambda,
 \qquad r_\star=R\exp[1/\kappa(R)] .
$$

也可直接看作用量：在一组归一化的实极化上，体动能的径向积分含 $+(\gamma^2/2)j^2\log(R/r_0)$；双迹项因 $1/\kappa(R)=\log(r_\star/R)$ 正好消去发散。以上针对渐近重整化，非零动量下不是声称一个纯 $J^2$ 项能精确描述任意物理有限壁。对正 $\kappa$，$r_\star$ 在该截断的 UV 一侧。边界 $J$ 的维数为 2，故 $J_{\mu\nu}J^{\mu\nu}$ 在四维经典边际；不为零的跑动说明一般**不**在共形不动点。

再选内端正则解 $\beta=A K_0(|\Omega|/r)$；$I_0$ 支在 $r\to0$ 指数增长。由 $K_0(z)=-\log(z/2)-\gamma_E+O(z^2\log z)$ 得 $j=-A/\gamma^2$，且

$$
 b=A\left[\log\frac{2R}{|\Omega|}-\gamma_E+\kappa(R)^{-1}\right]+o(1),\qquad
 \boxed{\frac{j}{b}=\frac{1}{\gamma^2\log(|\Omega|/\bar r_\star)}},\qquad
 \bar r_\star=2e^{-\gamma_E}r_\star .
$$

改变截断和耦合后，分子、混合源以及整个响应保持不变；若误把 $\beta(R)$ 当成不跑的源，就会在分母留下 $\log R$。[91 (2.11)–(2.17)](https://arxiv.org/pdf/1707.08577v4#page=12) 的 Landau 极点是此 UV 有效描述的限制，不是全局 AdS 振子的能级，也不是一个新的守恒荷。

## 闭面究竟量到什么？

回到四维 Lorentzian 边界，取 $J=\tfrac12J_{\mu\nu}dx^\mu\wedge dx^\nu$。体方程的一个径向指标给 $\partial_\mu J^{\mu\nu}=0$。对闭有向二面 $C_2$，按 [91 (1.1)–(1.2)](https://arxiv.org/pdf/1707.08577v4#page=3)，

$$
 Q[C_2]=\int_{C_2}\star_4 J,\qquad
 Q[C'_2]-Q[C_2]=\int_{V_3}d\star_4 J,
 \qquad \partial V_3=C'_2-C_2 .
$$

无插入时，若 $C_2$ 在光滑区域内是边界，荷为零。作为独立的荷检验，插入一个定向外部带荷线 $\ell$，把其荷 $q$ 定义为 Ward 恒等式中 $d\star_4 J=q\,\delta_3(\ell)$ 的系数；$\int_{V_3}\delta_3(\ell)$ 是有向交数。于是被线正向穿过一次的三维实心球给 $Q[\partial B^3]=q$，未穿线给零。对一根静止直线，绕线小球上一组旋转不变的通量代表就是 $(q/4\pi)\sin\theta\,d\theta\wedge d\varphi$，球半径不进入答案。这是**缺陷插入下**的归一化与联结检验，不是由上面的无缺陷平面波算出一根弦的解。$U_\alpha(C_2)=\exp(i\alpha Q[C_2])$ 对一次联结的线给相位 $e^{i\alpha q}$。它不是对边界三维空间积分的时间平移荷；背景规范变换 $b\to b+d\lambda$ 和守固定源的变换也须区别。

**Verified:** 已对照 [91] *Generalized global symmetries and holography*，arXiv:1707.08577v4：PDF 页与正文相同；3 页为荷，10–11 页为作用、字典与方程，12–13 页为跑动与二点函数。Mathematica 对正实 $|\Omega|,r,\lambda$ 检查 Bessel 方程、对数常数、换截断及逆响应，四项与上式相符。  
**Assumptions:** 固定背景、平直边界、零温、线性横向模，取渐近极限及上述有限项方案；荷的形变不跨缺陷，或明确计入交数。  
**Not verified:** 未求含弦反作用的体解、线算符的全局电荷格或有限温输运；四维边界只有这一个二形式流时，不能自动添上自由 Maxwell 的第二个一形式对称。
