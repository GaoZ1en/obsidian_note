# 四维自由 Maxwell：两个一形式对称可以同时守恒，却不能同时无反常地耦合外源

这是 [Gaiotto–Kapustin–Seiberg–Willett [90]，arXiv:1412.5148v2，§4.1，PDF 15–16／正文 14–15，(4.1)–(4.2)](<https://arxiv.org/pdf/1412.5148v2#page=15>) 的四维**场论**检验。下文电通量的 $1/e^2$ 对应该文的 $2/g^2$；磁通量归一相同。其 AdS 对照见 [Hofman–Iqbal [91]，§I](<https://arxiv.org/pdf/1707.08577v4#page=3>)。动力场是紧致联络 $A_1$，并非 AdS₅ 的二形式；两份二形式 $B_e,B_m$ 在这里是非动力外源。假设没有动力学电荷或磁单极，单位电荷 Wilson 线为 $\exp(i\int A)$，磁通量周期 $2\pi$。

## 源关掉时：一个守恒源于运动方程，另一个源于 Bianchi 恒等式

取 Lorentz 度规、四维定向和 $S_0=-\int F\wedge *F/(2e^2)$。若 $C$ 是有向闭二面，电、磁通量分别为

$$Q_e(C)=e^{-2}\int_C *F,\qquad Q_m(C)=\frac1{2\pi}\int_C F.$$

$Q_e$ 的拓扑形变不变性来自 $d*F=0$，$Q_m$ 的来自 $dF=0$。例如取探测用的单位 't Hooft 线，使小链环 $S^2$ 上 $\int F=2\pi$；则 $\exp(i\alpha Q_m)$ 作用一次给 $e^{i\alpha}$。可在不穿过线的区域自由形变曲面，却不能把有一次联结的曲面缩为空。在没有缺陷的可缩曲面上两荷皆零。对称作用在带电线上，而非把平移能量称作高形式荷。

## 源打开时：局域项只能转移反常

在闭四维时空上，选一个保电背景规范不变性的方案，令 $\mathcal F=F-B_e$，取

$$S[B_e,B_m]= -\frac1{2e^2}\int\mathcal F\wedge *\mathcal F+\frac1{2\pi}\int B_m\wedge\mathcal F.$$

$A\to A+\lambda_e,\ B_e\to B_e+d\lambda_e$ 时 $\mathcal F$ 不变。另一边 $B_m\to B_m+d\lambda_m$ 给 $\delta_mS=-(2\pi)^{-1}\int\lambda_m\wedge dB_e$；这里用 $dF=0$，没有把动力学方程拿来抵消源的变分。试加局域反项 $s(2\pi)^{-1}\int B_m\wedge B_e$。磁变分系数由 $-1$ 变成 $s-1$，电变分则出现 $s(2\pi)^{-1}\int\lambda_e\wedge dB_m$。要对一般源把两个系数同时变为零，需 $s=1$ 且 $s=0$。这个矛盾是同一混合反常在两种接触项方案之间移动的显式表现。

独立检查是五维流入：若四维时空为 $\partial X_5$，第一种方案可用 $+(2\pi)^{-1}\int_{X_5} B_m\wedge dB_e$ 的变分抵消磁背景变分。它定义在更高维，并不是一个消除了反常的纯四维反项。该处五维量的用途是反常流入，不必把 $X_5$ 配上 AdS 度规，也不必令两份外源成为体内传播的 Maxwell 场。

**Verified:** 对两种参数分别分部积分，反项与五维流入给同一个混合系数；单位磁线的通量以 Dirac 量子化校准。**Assumptions:** 展示局部微分形式与小背景变换，积分无其他端点，无动力学带荷物体；不取电磁 theta 角。**Not verified:** 含挠同调、非 spin 流形及所有大规范变换的微分上同调精化。