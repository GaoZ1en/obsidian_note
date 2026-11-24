# TMG：边界是平的，为什么全局 AdS 仍有真空角动量？

**局域引力异常和左右零点不抵消，是同一 Chern–Simons 系数的两个读数。** 平直圆柱上的联络异常密度可为零，但左右中心荷仍不等。先在平直圆柱算真正的时间／旋转生成元，再弯曲边界、变换源，用另一个计算探测局域异常；两步不是在同一固定源相空间里作任意微分同胚。

## 动力学、极化与符号

三维度规动力学，取标准正号 Einstein 项和引力 Chern–Simons 项。$\Gamma^a{}_b$ 是 Levi-Civita 联络一形式的矩阵，不是边界的名字。以 $K$ 为外法向外曲率，平直圆柱上的截断作用取

$$
S_R=\frac1{16\pi G}\int_{M_R}\sqrt{-g}\,(R+2/\ell^2)+\frac1{8\pi G}\int_{\partial_r M_R}\sqrt{-\gamma}\,(K-1/\ell)
+b\int_{M_R}{\rm Tr}\!\left(\Gamma\wedge d\Gamma+\tfrac23\Gamma\wedge\Gamma\wedge\Gamma\right),\qquad b=\frac1{32\pi G\mu}.
$$

定向和左右命名采用 Kraus–Larsen 的 Lorentz 圆柱 $\varepsilon_{t\varphi}=-\ell$，$J=-H_{\partial_\varphi}$；反转 CS 符号等于 $b\to-b$，因此不能混用不同定向下的质量与中心荷公式。CS 体变分给 Cotton 张量；局部 Einstein 解的 Schouten 张量协变常数，Cotton 为零，所以 BTZ 度规仍解方程，**荷却要由新作用量计算**。以下保留 Brown–Henneaux 衰减的 Einstein 解扇区，固定 $g_{(0)}$，不打开额外 massive-graviton 源；可取 $\mu\ell>1$ 避开手征简并点。不把上式当作一般第三阶理论所有边值数据的反项清单。曲边界测试使用重整化作用量、保局域 Lorentz 而允许坐标异常的方案；曲率的 Weyl 对数减除与下述奇宇称系数是两回事。

## 算一：BTZ 上的两个生成元

令 $m,j$ 为度规参数，$m=(r_+^2+r_-^2)/(8G\ell^2),\ j=r_+r_-/(4G\ell)$，$g_{t\varphi}=-4Gj$。$X_\xi g=\mathcal L_\xi g$，在同一圆上从总作用的应力响应读取 $H_{\partial_t}=2\pi\ell\,T_{tt}$ 和 $J=-2\pi\ell\,T_{t\varphi}$。CS 项使二者线性混合：

$$
M=m-\frac{j}{\mu\ell^2},\qquad J=j-\frac{m}{\mu},\qquad
\ell M\mp J=(\ell m\mp j)\left(1\pm\frac1{\mu\ell}\right).
$$

最后一式把混合对角化：分别用 $(\ell M-J)/2,(\ell M+J)/2$ 作左、右圆柱零模。两份 Virasoro 中心荷因此与该方案的异常匹配为

$$
c_L=\frac{3\ell}{2G}\left(1+\frac{1}{\mu\ell}\right),\quad c_R=\frac{3\ell}{2G}\left(1-\frac{1}{\mu\ell}\right),\quad c_L-c_R=96\pi b.
$$

对全局 AdS 代入 $m=-1/(8G),j=0$ 得 $J_{\rm vac}=1/(8G\mu)=(c_L-c_R)/24$；对几何上不旋转、$m>0$ 的 BTZ，反而有 $J=-m/\mu$。二者可区分 CS 引起的斜率与任意参考常数；$\mu\to\infty$ 恢复 Einstein 荷。

## 算二：局域异常不是一条平直边界的能量衰减律

在同一坐标异常方案，舍去端点支撑的项，CS 下降给出**一致异常**

$$
\delta_\xi S_{\rm ren}= b\int_{\partial M}{\rm Tr}(v\,d\Gamma_{(0)}),\qquad v^a{}_b=\partial_b\xi^a .
$$

此处仅写切向微分同胚的奇宇称部分，$\Gamma_{(0)}$ 由给定边界度规构造。取无量纲圆柱 $(\tau,\varphi)$、$ds^2_{(0)}=e^{2s(\tau)}(-d\tau^2+d\varphi^2)$，$s$ 光滑且时间紧支；测试 $\xi=f(\tau)\partial_\varphi$。定向取上式积分为 $d\tau\wedge d\varphi$。仅 $v^\varphi{}_\tau=f'$ 非零，$\Gamma^\tau{}_{\varphi}=s'\,d\varphi$，故

$$
\delta_\xi S_{\rm ren}=2\pi b\int f's''\,d\tau .
$$

取给定源上的测试函数 $f=s'$（选定后不再变分），得 $2\pi b\int(s'')^2d\tau$。对 $f$ 常数或 $s=0$ 则为零。这个非零数测的是**改变源时**作用量的响应，不是用任意 $f$ 生成固定源的守恒荷。对于保持 BC 的变换，才可用含 CS 边界改进的端点势构造 $H_\xi=\iota_{X_\xi}\theta-\alpha_\xi$；反常若仅依赖已固定的源，可能给出构型无关的切口荷差。用 Bardeen–Zumino 改进写成协变异常时，不能再把协变应力当作上述泛函的原始变分。偶宇称迹异常另由 $c_L+c_R$ 控制。

**来源与核查。** [手稿所列 Feng–Jia–Wu [10] 的 APS 记录](https://doi.org/10.1103/3gxp-cwv2)是推广的 Noether 问题；本文计算用可核的独立基准 [Kraus–Larsen，hep-th/0508218v2，PDF 12／正文 11，(4.5)–(4.8)](https://arxiv.org/pdf/hep-th/0508218v2#page=12) 和 [PDF 16／正文 15，(5.13)–(5.16)](https://arxiv.org/pdf/hep-th/0508218v2#page=16)。**Verified:** Wolfram 对两个手征组合及 $c_L-c_R$ 验零，并从二维 Christoffel 符号独立得到 $\mathrm{Tr}(v\,d\Gamma)/(d\tau\wedge d\varphi)=f's''$。**Assumptions:** 固定方案、单位圆的角周期 $2\pi$、无额外边界源。**Not verified:** 未逐式重算 [10] 的一般切口荷；未证明手征点的全部 log 模应保留或剔除。
