# 12i　紧化小弦理论：从左右平移荷读 Hagedorn 斜率

**结果。** $T^4$ 紧化的 $k$ 张 NS5、$p$ 条 F1 的退耦黑弦，在零动量时，经典熵从低能的 $\sqrt E$ 增长过渡到高能的 $S/E\to 2\pi\sqrt{k\alpha'}$。高能斜率记得 NS5 数，却不含 F1 数。这是**渐近线性 dilaton** 系统的热力学检验；不能把 UV 换成有限 Dirichlet AdS 壁。

**场、作用量与边界。** 在 $S^3$ 上作一致截断，以 NS 通量固定 $k,p$，在三维弦框架保留 $g_{\mu\nu},\phi$。用 [86] 吸收 $T^4$ 体积后的记号，$\ell=\sqrt{k\alpha'}$、$a=2/\ell$、$b=2p/(k\ell)$，体作用量为
$$
S_3=\frac{1}{16\pi G_3}\int d^3x\sqrt{-g}\,e^{-2\phi}\left[R+4(\nabla\phi)^2+a^2-\frac{b^2}{2}e^{4\phi}\right].
$$
红外近 AdS$_3$，径向无穷远是线性 dilaton 区。保留圈 $x\sim x+2\pi R$；在无穷远选使辛通量消失、辛范数有限的微扰，而非把全部场系数逐个固定。[86] §3.2 的线性分析一般固定传播模的慢支，允许快支，常数模另有混合关系，个别条件不能只由辛形式决定。保此边界条件的场依赖大微分同胚有两族，其零模给左右平移荷 $E_{L,R}=(E\pm P)/2$，$P=n/R$；$E$ 以变形后无质量 BTZ 为零点。

**由零模得到可核结果。** 在黑洞族上 [86] 写出
$$
S=2\pi\sqrt{k pR E_L+k\alpha' E_L E_R}+2\pi\sqrt{k pR E_R+k\alpha' E_L E_R}.
$$
故 $P=0$ 时 $S=2\pi\sqrt{2kpRE+k\alpha' E^2}$。当 $\alpha' E\ll2pR$ 时首项占优；当 $\alpha' E\gg2pR$ 时 $S/E\to2\pi\sqrt{k\alpha'}$。同一机制也见于左右零模关系 $E_{L,R}^{(0)}=E_{L,R}+\alpha' E_L E_R/(pR)$：动量不变，纯手征态不产生交叉修正。$1/p$ 对应把能量均分于变形后再取对称积的种子，而非对总应力直接作同耦合的普通双迹变形。

**来源。** [86，Georgescu–Guica，arXiv:2212.09768v2，PDF／正文 6–7，式 (2.16–28)](https://arxiv.org/pdf/2212.09768v2#page=6)；[PDF／正文 14–20，式 (3.19)、表 2 与 §3.3](https://arxiv.org/pdf/2212.09768v2#page=14)。附录 A 的混合 AdS 边界只作双迹对照。

**Verified:** 原页核对截断作用量、熵及左右能量；独立代 $P=0$，Wolfram 取大能量极限得到上述斜率。**Assumptions:** 经典超引力黑洞、$k,p>0$、固定紧化和通量，低能一侧仍指黑洞描述适用的区间。**Not verified:** 未重算非零模荷代数或弦圈修正；热力学和渐近荷匹配不是完整 LST 与对称积的等价证明。