# 11d　SU(2) 黑膜：p 波是电流分量凝聚，不是标量换质量

**零源时出现的期望值是带 $U(1)_3$ 电荷的空间电流分量，不是标量算符。** 在下述探针归一化中，齐次 $p_x$ 通道出现静态零模的首个比值为 $|\mu|/r_h\simeq3.6496454$。方向 11 的 [69] 是 [Cai–Li–Li–Yang 的综述](https://arxiv.org/abs/1502.00437)；这里具体采用 [Gubser–Pufu，arXiv:0805.2960v2，PDF 10–11／正文 9–10，(15)–(24)](https://arxiv.org/pdf/0805.2960v2#page=10) 的 $p_x$ 态，而非 $p_x+ip_y$ 态。

## 化学势选颜色，凝聚选空间方向

令 $\tau_a=-i\sigma_a/2$，$[\tau_a,\tau_b]=\epsilon_{abc}\tau_c$，$\epsilon_{123}=1$。把耦合吸收到联络内，使 $F=dA+A\wedge A$；$L=1$ 时本文的 $(\phi,w)$ 对应原文 (17) 的 $(\widetilde\Phi,\widetilde w)$。忽略规范场对几何的反作用，保留其非线性自耦合：
$$
 S_{\rm YM}=-\frac1{4g_{\rm YM}^2}\int\sqrt{-g}\, F^a_{\mu\nu}F^{a\mu\nu},\qquad
 ds^2=-fdt^2+\frac{dr^2}{f}+r^2(dx^2+dy^2),\quad f=r^2-\frac{r_h^3}{r}.
$$
动力学场只有 $SU(2)$ 联络。取径向规范 $A_r=0$，在均匀静态扇区取 $A=\phi(r)\tau_3dt+w(r)\tau_1dx$。边界固定背景联络 $\mu\tau_3dt$；热态固定 $T=3r_h/(4\pi)$ 和第三色化学势 $\mu$，权重 $\propto e^{-(E-\mu Q_3)/T}$，不固定色电荷密度。$\phi(r_h)=0$，$w$ 取正则支。在无穷远 $w=w_s+w_v/r+\cdots$；固定 $w_s=0$ 才可能是自发凝聚，$\langle J_x^1\rangle=w_v/g_{\rm YM}^2$（上述作用量、单位边界度规）。非零 $w_s$ 是外加矢量源，不是序参量。

$X_{\xi,\Lambda}A=\mathcal L_\xi A+d\Lambda+[A,\Lambda]$。正规范变换须满足非阿贝尔 Gauss 约束并在切口上无荷；时间平移与保源的**常数**内部变换不据此剔除。常数 $\Lambda$ 要和 $\mu\tau_3$ 对易，故外源已把 $SU(2)$ 显式降为 $U(1)_3$。$Q_3$ 旋转 $J_x^1,J_x^2$；$SO(2)_{xy}$ 旋转 $J_x^1,J_y^1$。$w_v\ne0$ 选出 $\tau_1$ 和 $x$，自发破坏这两个连续转动。与 $s$ 波不同，纵横电导不再受对称性强迫相等；而 $w(\tau_1 dx+\tau_2dy)$ 保留对角连续旋转，是另一个试探态。

## 判别式从哪个非阿贝尔项而来？

$F_{tx}^2=\phi w$（上标 $2$ 是颜色指标），和 $F_{rt}^3=\phi'$、$F_{rx}^1=w'$ 一起给出如下径向拉氏量，已略公共因子 $1/g_{\rm YM}^2$：
$$
 \mathcal L_r=\tfrac12 r^2(\phi')^2-\tfrac12 f(w')^2+\frac{\phi^2w^2}{2f}.
$$
于是 $(r^2\phi')'=w^2\phi/f$，$(fw')'=-\phi^2 w/f$。线性化取正常相 $w=0$、$\phi=\mu(1-r_h/r)$；若把三个颜色误当成三份 Maxwell，第二式会丢掉驱动零模的项。

用 $z=r_h/r$、$h=1-z^3$、$\lambda=|\mu|/r_h$，空间矢量本身满足
$$
 -(h w')'=\lambda^2\frac{1-z}{1+z+z^2}w,\qquad w(0)=0,\qquad w'(1)=0 .
$$
方程取 $z$ 导数；边界丢弃常数源，视界丢弃对数支，最后可置 $w(1)=1$。导数项外没有 $s$ 波标量约化后出现的 $+zu$ 势。用基 $z^i$，分子矩阵 $K_{ij}=ij[(i+j-1)^{-1}-(i+j+2)^{-1}]$，权矩阵 $B_{ij}=\int_0^1z^{i+j}(1-z)/(1+z+z^2)\,dz$；$\lambda^2$ 取矩阵对的最低广义本征值。$N=6,10$ 得 $\lambda=3.64964567,3.64964541$，即 $T_{\rm onset}/|\mu|\simeq0.06541250$。这是矢量的无源条件与 Yang–Mills 方程共同选出的温度。

**Verified:** Wolfram 核实径向变分、坐标变换并用两次基底截断求最低模。**Assumptions:** 固定中性黑膜、$\mu$ 是重标度后的边界联络、单一 $p_x$ 线性通道。**Not verified:** 没有比较诸凝聚态的自由能，也未由此计算各向异性电导；后者须对独立扰动解规范约束、施加入射视界条件并读边界迟滞响应。
