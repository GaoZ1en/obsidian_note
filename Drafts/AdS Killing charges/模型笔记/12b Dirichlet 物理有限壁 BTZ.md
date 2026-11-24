# 12b　旋转 BTZ：Dirichlet 真墙上是哪一只钟的能量？

圆墙的能量并非渐近质量 $M$。对壁上正交于等时圆的观察者，固定墙半径、改变黑洞态时有 $\delta E_c=(\delta M-\omega_c\delta J)/N_c$。拖曳项和 lapse 都不能省掉。这个可积的一形式给出 $T\bar T$ 圆谱中熟悉的根号；不需要假设墙外还有一个 CFT 才能在引力里算它。

## 壁数据与作用量

三维 Einstein 引力、$\Lambda=-1/\ell^2$，无体物质。保留到 $r=r_c$ 为止的区域，$r_c>r_+$；轴角 $\varphi\sim\varphi+2\pi$。外法向指向大 $r$，$K_{ij}=\tfrac12\mathcal L_n\gamma_{ij}$。取

$$
S=\frac{1}{16\pi G}\int_M\!\sqrt{-g}\,(\mathcal R+2/\ell^2)
 +\frac{1}{8\pi G}\int_{r_c}\!\sqrt{-\gamma}\,(K-1/\ell).
$$

端点固定，取端片与壁正交（非正交时须加接角项）。壁位置与诱导圆柱度规都固定，经典允许变分有 $\delta\gamma_{ij}=0$，不是允许壁引力自由变化。变分壁源以定义响应时，侧面在壳项为 $\tfrac12\int\sqrt{-\gamma}\,T_c^{ij}\delta\gamma_{ij}$，其中

$$
8\pi G\,T^c_{ij}=K\gamma_{ij}-K_{ij}-\gamma_{ij}/\ell .
$$

在允许的两切变分上，壁辛流是 $\tfrac12\delta(\sqrt{-\gamma}T_c^{ij})\wedge\delta\gamma_{ij}=0$。壳上保壁 Killing 变换的 Hamiltonian 由表面荷 $H_\xi=\oint\sqrt\sigma\,u^i T^c_{ij}\xi^j$ 给出；整体零点随壁宇宙项，这里已固定。引力约束已经用掉，不另外把引力写成物质应力的体积分。若把外区从视界截开单独建 CPS，内边界仍须规定数据；下文只计算平稳解的**外壁荷**。

## 直接投影，而不是把 $T_{tt}$ 当能量密度

$$
ds^2=-N^2dt^2+N^{-2}dr^2+r^2(d\varphi-\omega dt)^2,\qquad
N^2=r^2/\ell^2-8GM+16G^2J^2/r^2,\qquad \omega=4GJ/r^2 .
$$

在每个解的壁上用 $\tau=N_c t,\ \vartheta=\varphi-\omega_c t$，于是固定的线元是 $-d\tau^2+r_c^2 d\vartheta^2$。族中不变的是 $(\tau,\vartheta)$ 定义的源和 $\xi=\partial_\tau$；旧坐标表达式 $u=(\partial_t+\omega_c\partial_\varphi)/N_c$ 随解变化，不能变分这个系数再多计一次。由 $n=N\partial_r$，$K_{\varphi\varphi}=N r$；正交单位切向 $s^i=(0,1/r_c)$ 给 $K_{ss}=N_c/r_c$。因 $K=-K_{uu}+K_{ss}$，

$$
8\pi G\,T^c_{uu}=\ell^{-1}-N_c/r_c,\qquad
E_c=H_{\partial_\tau}=2\pi r_c T^c_{uu}
=\frac{r_c}{4G\ell}\!\left[1-\sqrt{1-\frac{8GM\ell^2}{r_c^2}+\frac{16G^2J^2\ell^2}{r_c^4}}\right].
$$

在上述主动向量与应力收缩约定，$H_{\partial_\vartheta}=-J$，通常的正角动量记为 $J$。检验包括：$M=J=0$（无质量 BTZ）给零，而 global AdS 的 $M=-1/(8G),J=0$ 给负的真空荷；固定 $M,J$ 时 $r_cE_c/\ell\to M$。对根号微分即得开头的一形式，故局域能量与缩放后的渐近能量并非同一个荷。

## 一个固定单位的场论对照

不用重定义壁坐标，直接取场论**周长** $R=2\pi r_c$、能量单位为壁固有时间的倒数。未变形相对同一参考的 CFT 圆柱能量为 $E_0=M\ell/r_c$（质量 $M$ 原对应周长 $2\pi\ell$）；线动量取 $P=J/r_c$，符号方向不影响平方。用谱流 $\partial_s E=E\partial_R E+P^2/R$ 的约定，令 $s=-4\pi G\ell$ 后，

$$
\frac R{2s}\left[\sqrt{1+4sE_0/R+4s^2P^2/R^2}-1\right]=E_c .
$$

改变 $r_c$ 时这里改变的是场论的物理周长；若改在**固定周长**上描述，同一次 Weyl/单位变换还会缩放能量与有长度平方量纲的耦合。负号是此谱流归一化的结果，不是所有论文的变形参数都为负。只取 $N_c>0$、连到未变形谱的外部一支；落在内视界以内，即便判别式为正也不是这堵墙。

**来源。** McGough–Mezei–Verlinde，[arXiv:1611.03470v2](https://arxiv.org/pdf/1611.03470v2#page=16)，PDF 16／正文 15，(3.1)–(3.6)；原文取 $\ell=1$，GH 项的 $K$ 取向相反。Cavaglià 等的[圆谱，arXiv:1608.05534v1](https://arxiv.org/pdf/1608.05534v1#page=6)，PDF 6／正文 5，(2.12)–(2.13)。

**Verified:** 在 xAct/Wolfram 核按 $K_{ij}=N\partial_r\gamma_{ij}/2$ 作具体矩阵投影，能量密度、角荷、$M,J$ 两个偏导及上述单位匹配均为零残差。**Assumptions:** 经典三维纯引力、平直圆柱、指定壁宇宙项与时钟。**Not verified:** 仅有平稳 BTZ 的准局域荷；未由此推导全相空间的非线性荷代数、量子等价或一般带物质关联函数。
