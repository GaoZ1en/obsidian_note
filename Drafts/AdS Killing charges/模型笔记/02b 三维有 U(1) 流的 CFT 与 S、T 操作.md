# 02b　三维有 $U(1)$ 流的 CFT：把背景联络变成动力学场后，电流二点函数如何改变？

给定三维 CFT 及其和背景联络的耦合，$T$ 只给电流二点函数加接触项；$S$ 则把原源变为积分变量，留下一个**不同的**守恒流。在电流有效作用量为高斯型时，以 $t>0$ 记分离点响应、以 $w$ 记奇宇称接触项，复数 $\tau=w+it$ 的变换是

$$
T:\ \tau\mapsto\tau+1,\qquad S:\ \tau\mapsto-1/\tau .
$$

这两式比较的是不同理论或不同边界条件，而不是同一相空间上的两个 Killing 荷。[41] 的具体可控例是大量带单位电荷的自由无质量费米子，其有效作用量在大 $N_f$ 领先阶近于二次型。下文也给出一份可直接固定 $t$ 归一化的自由 Maxwell 计算。

## 1. 哪个场要积分？

设 $Q$ 是无边界的定向三维流形，选定 spin 结构，$Z[a]$ 已包括使背景 $U(1)$ 规范不变所需的源耦合。约定单位电荷的磁通量子为 $2\pi$。用如下相位定义操作：

$$
 Z_T[a]=Z[a]\exp\!\left(\frac{i}{4\pi}\int_Q a\wedge da\right),\qquad
 Z_S[b]=\int\frac{\mathcal Da}{\mathrm{Gauge}}\, Z[a]\exp\!\left(\frac{i}{2\pi}\int_Q b\wedge da\right).
$$

第二式没有另加 Maxwell 动能；$b$ 是新外源，所耦合的流满足 $*\widetilde J=da/(2\pi)$，守恒由 $d^2=0$ 保证。两次施行 $S$ 时，中间联络 $b$ 的线性耦合变成 $\int b\wedge d(a+c)/(2\pi)$。在平凡拓扑、无零模时，积分给出 $a=-c$ 模规范，因而 $Z_{S^2}[c]=Z[-c]$（忽略源无关归一化）。这解释了为什么从二点函数看 $S^2$ 是恒等，而在电流本身上却有负号。对非平凡线丛，上式的局部形式只是简写，须使用全局 CS／BF 泛函并对丛求和；不选择 spin 结构时，[41] 的普适背景反项是上述系数的两倍，对应 $T^2$。

## 2. 在两个横向极化上求逆

在平直欧氏 $\mathbb R^3$ 上取非零动量 $p$，$q=|p|$，$P_{ij}=\delta_{ij}-p_ip_j/q^2$，$R_{ij}=\epsilon_{ijr}p_r/q$，$\epsilon_{123}=+1$。依 [41, (4.2)] 的动量约定，略去动量守恒的 $\delta$ 函数，

$$
 M_{ij}=\langle J_i(p)J_j(-p)\rangle=\frac{q}{2\pi}(tP_{ij}+wR_{ij}).
$$

奇项 $qR_{ij}$ 是动量多项式，故只支撑于重合点；偶项 $qP_{ij}$ 是非局域的。在 $p$ 的正交平面，$R^2=-P$、$PR=RP=R$；纵向方向是规范冗余，不能对整个 $M$ 直接求逆。对 $a$ 作高斯积分得到横向传播子，再在两条外腿各取一次旋度：

$$
 M^{-1}_{\perp}=\frac{2\pi}{q}\frac{tP-wR}{t^2+w^2},\qquad
 \widetilde M=-\left(\frac{q}{2\pi}\right)^2 R M^{-1}_{\perp}R
 =\frac{q}{2\pi}\frac{tP-wR}{t^2+w^2}.
$$

于是 $(w,t)\mapsto(-w,t)/(t^2+w^2)$。$T$ 的背景 CS 项给 $w\mapsto w+1$，不改 $t$。例如从 $\tau=i$ 出发，先 $T$ 后 $S$ 得 $(-1+i)/2$，先 $S$ 后 $T$ 得 $1+i$：原来的接触项在规范化以后能改变**分离点响应**。

## 3. 用 AdS$_4$ 自由光子标定 $t$

取欧氏 Poincaré AdS$_4$，$ds^2=L^2(dz^2+dx^idx^i)/z^2$，体作用量 $I=\int\sqrt g\,F_{\mu\nu}F^{\mu\nu}/(4e^2)$，无 $F\wedge F$ 和边界 CS，固定 $a_i=A_i(0)$。四维共形因子在动能中相消。在 $A_z=0$ 的横向扇区，正则解为 $A_i(z,p)=a_i^\perp(p)e^{-qz}$；由 $z=0$ 的外法向朝 $-z$，

$$
 I_{\rm os}=\frac{1}{2e^2}\int\frac{d^3p}{(2\pi)^3}\,a_i(-p)qP_{ij}a_j(p).
$$

以 $Z[a]=\langle e^{i\int aJ}\rangle=e^{-I_{\rm os}}$ 读核，得 $t=2\pi/e^2$、$w=0$。故 $S$ 后 $t'=e^2/(2\pi)$；若还用同一标准 Maxwell 归一化描述对偶核，则 $e_D^2=4\pi^2/e^2$。这个例子算的是**平直边界真空的欧氏响应**，不是 global AdS 的实时间能量。对一般非高斯 CFT，$S$ 与 $T$ 仍可定义，但仅知道母理论二点函数不足以算出 $S$ 后的二点函数。

**来源。** E. Witten, [*SL(2,Z) Action On Three-Dimensional Conformal Field Theories With Abelian Symmetry*, hep-th/0307041v1](https://arxiv.org/abs/hep-th/0307041v1)；[§3，PDF 10–11／正文 9–10，(3.5)–(3.8)](https://arxiv.org/pdf/hep-th/0307041v1#page=10) 为 $S^2$、$T$ 和 spin 条件；[§4，PDF 14–15／正文 13–14，(4.1)–(4.6)](https://arxiv.org/pdf/hep-th/0307041v1#page=14) 为近高斯计算，§5 解释其 AdS 对偶。上述 Maxwell 标定明确采用本节的单位电荷和动能。

**Verified:** 对照原文页面核对两种相位与奇项符号；取 $p$ 沿第三轴，用 Mathematica 验 $R^2=-P$、$M M^{-1}_{\perp}=P$ 及双旋度公式，三项矩阵残差均为零。**Assumptions:** 已指定接触项方案，局部求逆只用 $q>0$、$t>0$，$S$ 的二点闭式限高斯或领先高斯近似。**Not verified:** 任意流形上的配分函数相位、有限 $N_f$ 修正或一般强耦合理论的二点变换。