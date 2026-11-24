---
paper id: 2611.21739v1
title: Modular Hamiltonian and modular flow of a massive scalar in an interval
authors:
  - Raúl E. Arias
  - Daniel Fondevila
publication date: 2026-11-16T19:00:07+00:00
abstract: |-
  作者以两端点发出的 massive plane waves 和一个线性积分方程构造有限区间自由实标量的真空 modular eigenvectors，适用于任意正 mL。端点 transfer matrix 由 Painlevé V 数据控制并固定归一化；所得 modular kernels 非局域，波包的模流具有色散与展宽。
comments: "8 pages, 4 figures"
url: https://arxiv.org/abs/2611.21739v1
summary: "把端点反射、辛谱归一化和非几何模流连成一个可实际求解的有限区域量子化模型。"
tags: []
---

# 有限区域的 modular 数据不只是本征值

[原文 v1](https://arxiv.org/abs/2611.21739v1)，hep-th 主类，math-ph、quant-ph 交叉。PDF 页码与可见印刷页码相同；PDF 1 没有印出页码。正文在 PDF 1–5，End Matter 在 PDF 6–8。虽然篇幅短，End Matter 的归一化、完备性说明、小质量极限和传播公式都是主结果的组成部分。

对 regional sewing／AdS 量子化最直接的价值是一个准确反例模型：区域真空的 modular evolution 一般不能用一个时空向量场替代。即使 entanglement spectrum 已知，构造区域 quadratic form、相干态 relative entropy 或局部 observable 的演化仍需要带正确归一化的 eigenvectors。本文是在 $1+1$ 维 Minkowski 自由 massive scalar 中完成的，不是 AdS 答案，但它提供可移植的谱构造方法和测试目标。

## 1. 从 covariance 算子到 modular kernels

区间 $A=(0,1)$，长度以物理区间长度 $L$ 为单位，$t=mL>0$。这里 $t$ 是无量纲质量，不是 Lorentzian 时间；后者记 $x^0$。$[\phi(x),\Pi(y)]=i\delta(x-y)$。真空 covariance 限制在 $A$ 上为

$$X(x,y)=\frac1{2\pi}K_0(t|x-y|),\qquad
P(x,y)=-\frac{t}{2\pi}\frac{K_1(t|x-y|)}{|x-y|}.$$

$P$ 是分布核，上式的非对角表达式不应当作普通可积函数直接穿过 $x=y$。其正性来自全线 Fourier covariance $\omega_k/2$，而非非对角核的逐点符号。

Gaussian modular Hamiltonian（常数项略去）为

$$\mathcal H=\frac12\int_A dx\,dy\,[\Pi(x)N_t(x,y)\Pi(y)+\phi(x)M_t(x,y)\phi(y)].\tag{1}$$

要构造 $N,M$，先求两个通道 $k=1,2$ 的广义 eigenvectors：

$$X\psi_s^k=\nu(s)\chi_s^k,\qquad
P\chi_s^k=\nu(s)\psi_s^k,\qquad
\nu(s)=\tfrac12\coth\pi s,\quad s>0,$$
$$\int_A\chi_s^{k*}(x)\psi_{s'}^{k'}(x)dx=\delta_{kk'}\delta(s-s').\tag{2}$$

$\nu>1/2$ 是单个 Gaussian 模的 symplectic eigenvalue，$2\pi s$ 是 modular energy。带这个 **交叉归一化** 的谱和给出

$$N_t(x,y)=\sum_k\int_0^\infty ds\,2\pi s\chi_s^k(x)\chi_s^{k*}(y),$$
$$M_t(x,y)=\sum_k\int_0^\infty ds\,2\pi s\psi_s^k(x)\psi_s^{k*}(y).\tag{3}$$

例如 $N_t\psi_s=2\pi s\chi_s$、$M_t\chi_s=2\pi s\psi_s$，所以两组函数提供 canonical oscillator 的坐标／动量配对。这个配对比只求 $XP$ 的本征值多出不可省略的信息。

形式写 $\rho_A\propto e^{-\mathcal H}$ 便于 Gaussian 计算；连续局部代数的 modular operator 不应未经 UV regulator 就理解为 Hilbert 空间张量因子上的 trace-class reduced density matrix。

## 2. 以欧氏切口问题寻找 eigenvectors

在 $z=x_1+ix_2$ 平面去掉区间切口，求

$$(-\Delta+t^2)S=0,\qquad S\to0\text{ at infinity},$$

端点有界，切口两侧满足

$$S^+=\lambda S^-,\qquad(\partial_2S)^+=\lambda(\partial_2S)^-,\qquad\lambda=e^{-2\pi s}.\tag{5}$$

$+$ 为切口上侧。由欧氏 Green identity，$\chi=S^+$、$\psi=(\partial_2S)^+$ 满足 covariance 谱方程。端点行为是 $x^{\pm is}$：在 $\log x$ 坐标中是平面波，所以谱连续，并且每个端点提供一个开放通道。

质量破坏 holomorphy，但保留一族精确 Euclidean KG 解

$$e_\kappa(z)=\exp[-\tfrac t2(\kappa z+\bar z/\kappa)],\qquad\kappa\ne0.\tag{6}$$

因为 $\Delta=4\partial_z\partial_{\bar z}$，有 $4\partial_z\partial_{\bar z}e_\kappa=t^2e_\kappa$；这个恒等式已用 Mathematica 独立检验。对 $\kappa=e^u>0$，实轴上的指数是 $-tx\cosh u$，$u$ 因而是 rapidity。

定义

$$I_x[f]=\int_0^\infty\frac{d\kappa}{\kappa}
 e^{-tx(\kappa+\kappa^{-1})/2}f(\kappa),\qquad
\kappa_-=\kappa-\kappa^{-1}.$$

两个通道组成的列向量解为

$$\boldsymbol S_s^+(x)=e^{-\pi s}
\{I_x[\kappa^{is}\boldsymbol p_s]-I_{1-x}[\kappa^{-is}\boldsymbol h_s]\},$$
$$ (\partial_2\boldsymbol S_s)^+(x)
=-\frac{it}{2}e^{-\pi s}\{I_x[\kappa_-\kappa^{is}\boldsymbol p_s]
+I_{1-x}[\kappa_-\kappa^{-is}\boldsymbol h_s]\}.\tag{7}$$

关键是 amplitude 不是任意的。令 $d_t(\kappa)=e^{-t(\kappa+\kappa^{-1})/2}$、$c_s=\sinh(\pi s)/\pi$，它们满足

$$\boldsymbol p_s(\kappa)=e_1+ic_s\int_0^\infty d\kappa'
\frac{\kappa'^{-2is}d_t(\kappa')\boldsymbol h_s(\kappa')}{\kappa+\kappa'},$$
$$\boldsymbol h_s(\kappa)=e_2-ic_s\int_0^\infty d\kappa'
\frac{\kappa'^{2is}d_t(\kappa')\boldsymbol p_s(\kappa')}{\kappa+\kappa'}.\tag{9}$$

这给出了实际可执行的构造：先解线性积分方程，再做 $I_x$，不是用“isomonodromy”一词代替未知函数。

### 2.1 每次迭代到底代表什么

从 $\boldsymbol p=e_1,\boldsymbol h=e_2$ 开始，利用

$$I_x[\kappa^{is}]=2K_{is}(tx)$$

得到各自端点的 half-line Rindler modes。一次迭代多一个 $d_t(\kappa')=e^{-t\cosh u'}$，代表在两端间传播一次；两次迭代是 round trip。原文以 Mellin-diagonalized Carleman operator 说明每个固定 $s\ne0,t>0$ 的几何收敛率受 $\tanh^2\pi s$ 控制。这个界在 $s\to\infty$ 趋近 1，所以不能不加估计地声称对整个谱积分一致快速收敛。

End Matter 把这一构造写成 rapidity plane 的 $2\times2$ Riemann–Hilbert problem。正、负半轴朝远离原点方向定向；跳跃矩阵分别为

$$1+2\sinh\pi s\,\kappa^{2is}d_t(\kappa)E_{12},\qquad
1-2\sinh\pi s\,\kappa^{-2is}d_t(\kappa)E_{21}.$$

其 Cauchy representation 正是 (9)，unimodular jumps 和无穷远归一化给 $\det Y=1$。这解释为何端点 transfer matrix 不是额外猜测的 scattering ansatz。

## 3. 端点 transfer matrix、Painlevé 方程与归一化

端点 amplitude 组成

$$\mathsf T_s=(\boldsymbol p_s(0),\boldsymbol h_s(0))
=\begin{pmatrix}a_se^{i\delta_s}&-iq_s\\iq_s&a_se^{-i\delta_s}\end{pmatrix},
\qquad a_s=\sqrt{1+q_s^2},\quad q_s,\delta_s\in\mathbb R.\tag{10}$$

$\mathsf T_s\in SU(1,1)$。实际“反射／透射”概率是 $1/a_s^2$ 和 $q_s^2/a_s^2$，相加为 1；$q_s$ 本身不是概率。Mathematica 对任意实 $q,\delta$ 验证了 $\mathsf T^\dagger\operatorname{diag}(1,-1)\mathsf T=\operatorname{diag}(1,-1)$ 及行列式 1。

端点渐近式为

$$\boldsymbol S_s^+(x)\sim A_se_1x^{-is}+B_s(\mathsf T_s)_1x^{is},$$
$$\boldsymbol S_s^+(1-\rho)\sim-B_se_2\rho^{is}-A_s(\mathsf T_s)_2\rho^{-is},$$

其中 $A_s=e^{-\pi s}\Gamma(is)(t/2)^{-is}$、$B_s=A_s^*$，下标表示矩阵列。积分恒等式 $\int_0^1x^{iu-1}dx=\pi\delta(u)-i\operatorname{PV}(1/u)$ 给出两个通道的 Gram matrix

$$G_s=\frac{\pi^2e^{-2\pi s}}{\sinh\pi s}
[1+(\mathsf T_s\mathsf T_s^\dagger)^T].$$

这一步固定了 (3) 中的绝对 normalization。令 $\widehat{\boldsymbol S}_s=e^{\pi s}\boldsymbol S_s^+$，则

$$N_t=\int_0^\infty n_sds,$$
$$n_s(x,y)=\frac{s\sinh\pi s}{\pi a_s}
\widehat{\boldsymbol S}_s(x)^T
\begin{pmatrix}a_s&-iq_se^{-i\delta_s}\\iq_se^{i\delta_s}&a_s\end{pmatrix}
\widehat{\boldsymbol S}_s(y)^*.\tag{13}$$

$M_t$ 用 $e^{\pi s}(\partial_2\boldsymbol S_s)^+$ 替代 $\widehat{\boldsymbol S}$。把 $G_s$ 反演后乘 $2\pi s$ 即得到上式；Mathematica 精确检验了逆矩阵和系数。因此不能只用 $a_s$ 或未经正交化的两个 $S$ 直接求平方和。

$t$ 的 isomonodromic 变化满足（此处 prime 是 $\partial_t$）

$$q_s''+\frac{q_s'}t
=\frac{q_s(q_s')^2}{1+q_s^2}+q_s(1+q_s^2)
-\frac{4s^2q_s}{t^2(1+q_s^2)},\qquad
 t\delta_s'=-\frac{2sq_s^2}{1+q_s^2}.\tag{12}$$

原文边界条件是

$$q_s\sim2s[\log(2/t)-2\gamma_E-\operatorname{Re}\psi(is)]\quad(t\to0),$$
$$q_s\sim\frac{2\sinh\pi s}{\pi}K_{2is}(t)\quad(t\to\infty).$$

这里 $\psi$ 为 digamma 函数，不是谱向量 $\psi_s$。大质量两端解耦，小质量透射趋近 1。

### 3.1 一次独立数值实现

本次在 Mathematica 中直接离散 (9)，而不是把 Painlevé ODE 的解反代来“验证”它。设 $u_j=\log\kappa_j\in[-7,7]$，等距梯形权 $\Delta u$，定义

$$A_{ij}=c_s\Delta u\,\frac{\kappa_j}{\kappa_i+\kappa_j}
\kappa_j^{-2is}d_t(\kappa_j),\qquad B=\overline A.$$

把 $p,h$ 视为网格点乘通道的矩阵，消去 $h$ 后解

$$ (1-AB)p=\boldsymbol1e_1^T+iA\boldsymbol1e_2^T,
\qquad h=\boldsymbol1e_2^T-iBp.$$

再以 $\kappa=0$ 的积分式取 $p(0),h(0)$。在 $s=0.4,t=1$，96 与 192 点网格分别给

$$q_s=0.3522645813930676,\qquad0.3522645813930651,$$

192 点的 $\delta_s=0.02804490688564449$，$\det\mathsf T-1$ 与 $SU(1,1)$ 最大残差均约 $2.3\times10^{-16}$。在 $t=1\pm0.001,1\pm0.002$ 重解积分方程，五点差分检验两条 (12)，残差分别约 $3.4\times10^{-10}$、$6.3\times10^{-13}$。

这是一个有限参数点及相邻质量点的数值一致性检验，不是全质量、全频率的误差定理。最初采用更宽 rapidity 区间时指数尾出现浮点下溢；上述报告使用 $[-7,7]$ 重算，没有该消息。$s\gtrsim1$ 的 $e^{\pi s}$ 抵消需要更高精度，不能把本次机器精度设置照搬到高频完整谱积分。

## 4. 局部温度仍然普适，但非局域核出现 mirror cusp

质量为零的导数／电流 sector 有 $\omega(x)=\log[x/(1-x)]$ 的平面波和

$$N_0=\beta(x)\delta(x-y),\qquad
M_0=-\partial_x[\beta(x)\partial_x\delta(x-y)],\quad
\beta(x)=2\pi x(1-x).$$

严格 massless scalar 的零模有红外问题；这里的 $t\to0$ 不是未经说明的完整 scalar 真空平滑极限。

固定 $t$ 的高 $s$ 展开首先给出 $2\cos(s[\omega(x)-\omega(y)]-t(x-y))$。由于 $d\omega/dx=1/[x(1-x)]$，积分的 delta 项仍为 $\beta(x)\delta(x-y)$。因此普适 local derivative part 是

$$\mathcal H_{\rm loc}=\frac12\int_A\beta(x)[\Pi^2+(\partial_x\phi)^2]dx.$$

这不排除其他质量依赖局部项，也不意味着整个 modular flow 几何化。

混合两端的高频项沿 mirror line $y=1-x$ 相干。令 $c=x(1-x)$、$x\ne1/2$、$y=1-x+\varsigma$。原文 (17) 的两项为

$$n_s\supset\sqrt{\frac{2t}s}\left[
\varsigma\sin\frac{s\varsigma}c+\frac{3c}{2s}\cos\frac{s\varsigma}c\right].$$

不能只积分第一项。利用

$$\int_0^\infty u^{-1/2}\sin u\,du=\sqrt{\pi/2},\qquad
\int_0^\infty u^{-3/2}(\cos u-1)du=-\sqrt{2\pi},$$

第一项贡献 $+\sqrt{\pi tc}|\varsigma|^{1/2}$，第二项贡献 $-3\sqrt{\pi tc}|\varsigma|^{1/2}$，总和为

$$N_t(x,1-x+\varsigma)-N_t(x,1-x)
\simeq-2\sqrt{\pi t x(1-x)}|\varsigma|^{1/2}.\tag{18}$$

Mathematica 复算了两次振荡积分及最终系数。对应 $M_t$ 的来源结果为

$$M_t\simeq-\tfrac12\sqrt{\pi t x(1-x)}\operatorname{FP}|\varsigma|^{-3/2},$$

其中 Hadamard finite part 定义为去掉 $|\varsigma|<\varepsilon$ 并减 $4\varepsilon^{-1/2}f(0)$。**这组 singularity 的推断使用 formal WKB。** 原文 PDF 7 明说没有 remainder 的 uniform bounds，cusp 系数数值复现到约 2%；本次积分检查不补出缺失的统一误差估计，故不将其升级为已严格证明的 kernel asymptotic theorem。

### 4.1 两个极限

大质量且靠近一个端点，另一端解耦，恢复 half-line Bisognano–Wichmann 核

$$N_t\to2\pi x\delta(x-y),\qquad
M_t\to2\pi[-\partial_x(x\partial_x\delta)+t^2x\delta].$$

小质量时 $X=X_0+[\log(2/t)-\gamma_E]/(2\pi)+O(t^2\log t)$，新增常数是 rank-one kernel。以 Sherman–Morrison 处理它，而非对 $X$ 的奇异 massless limit 逐项普通求逆。令 $\Lambda=2[\log(8/t)-\gamma_E]$，来源的一阶 $1/\Lambda$ 结果是

$$N_t=\beta\delta+\frac\pi\Lambda[1-\max(|2x-1|,|2y-1|)],$$
$$M_t=-\partial_x(\beta\partial_x\delta)+\frac{2\pi}\Lambda[\delta(x-y)+\delta(x+y-1)].\tag{20}$$

End Matter 的 equilibrium density $\varrho=1/[\pi\sqrt{x(1-x)}]$ 给 $X^{-1}=\mathcal Y+(4\pi/\Lambda)\varrho\varrho^T+\cdots$，$\mathcal Y$ 消灭常函数。对趋近常数的测试函数，(20) 的 $M$ correction 二次型为 $4\pi/\Lambda$，与 rank-one inverse 的归一化相容。作者据此质疑另一篇文献四倍较小的系数；本次没有重读那篇原文，故记录为来源间的系数争议，不作独立裁决。

## 5. 把非局域模流变成可观察的 commutator profile

对线性算符 $O=\int_A(\gamma_1\phi+\gamma_2\Pi)$，

$$O(\tau)=e^{i\tau\mathcal H}Oe^{-i\tau\mathcal H},\qquad
\partial_\tau\gamma_1=-M_t\gamma_2,\quad
\partial_\tau\gamma_2=N_t\gamma_1.$$

谱向量使这个系统成为频率 $2\pi s$ 的旋转。例如初始 $\gamma_2=0$，

$$\gamma_{1,\tau}=\sum_k\int ds\cos(2\pi s\tau)\psi_s^k\langle\chi_s^k,\gamma_{1,0}\rangle,$$
$$\gamma_{2,\tau}=\sum_k\int ds\sin(2\pi s\tau)\chi_s^k\langle\chi_s^k,\gamma_{1,0}\rangle.$$

定义

$$\Phi_\tau(y)=i[\phi(y),O(\tau)].$$

它是经典 Lorentzian KG 解，初值为 $\Phi_\tau|_{x^0=0}=-\gamma_{2,\tau}$、$\partial_0\Phi_\tau|_0=\gamma_{1,\tau}$，并能通过 conserved KG pairing 重建 $O(\tau)$。这给出了量子算符与 classical solution 的明确映射，而不是把模流图像当成一个粒子轨道。

End Matter PDF 8 提供可执行的 Riemann formula。设 $T=|x^0|$、$r_y=\sqrt{T^2-(x-y)^2}$，对初值 $f,g$，

$$\begin{aligned}
\Phi_\tau(x^0,x)&=\tfrac12[f(x-T)+f(x+T)]
+\tfrac12\operatorname{sgn}(x^0)\int_{x-T}^{x+T}g(y)J_0(tr_y)dy\\
&\quad-\tfrac12tT\int_{x-T}^{x+T}f(y)\frac{J_1(tr_y)}{r_y}dy.
\end{aligned}$$

第一项给 null beams，Bessel 积分给 massive wake。这个通常的 KG wake 与 **modular kernel 本身造成的展宽** 要区分。

在 $u=x-x^0,v=x+x^0$ 的 diamond $0<u,v<1$ 中，作者画出正的 profile

$$\varepsilon=(\partial_{\omega(u)}\Phi_\tau)^2+(\partial_{\omega(v)}\Phi_\tau)^2
+\tfrac12u(1-u)v(1-v)t^2\Phi_\tau^2.$$

图 1（PDF 2）实际显示 $mL=1$ 的 profile 不随 conformal orbit 刚性搬运：中心波包在 $\tau=0.2$ 的交点约 $x^0=0.32$，而共形值 $\frac12\tanh(\pi\tau)\simeq0.28$。图 3（PDF 5）的来源结果是 $mL=3$ 时 beam splitting。这里“跑在共形轨道前面”不是 Minkowski 超光速传播，也不与 microcausality 矛盾：modular automorphism 是非局域区域操作，$\tau$ 不是外部物理时间。

## 6. 熵谱、完备性和本次重构的边界

End Matter PDF 7 的 cutoff mode density 为

$$\rho(s)=\frac2{\pi^2}[\log\frac2{m\epsilon}+\operatorname{Re}\psi(is)]
-\frac1\pi\partial_s\delta_s(t),$$

忽略对 $s$ 振荡的 cutoff 项。$L$ 的非平凡依赖在 $\delta_s$，故 Rényi entropy 和 entropic c-function 只需要 transfer phase，不需要完整 eigenvectors。例如令 $\mathcal T_s=q_s^2/(1+q_s^2)$，则来源给

$$c_n=L\partial_LS_n=\frac{2n}{n-1}\int_0^\infty ds\,s[\coth\pi s-\coth\pi ns]\mathcal T_s.$$

capacity $C=\langle\mathcal H^2\rangle-\langle\mathcal H\rangle^2$ 则由 $\int ds\,\rho(s)\pi^2s^2/\sinh^2\pi s$ 给出。这说明同一 Painlevé 数据为何控制已知熵结果，而本文新增的连接问题解为何仍然必要。

完备性的来源论证在 PDF 6：把 covariance resolvent 转成带 additive jumps 的切口问题，用端点 open channels 与 Fredholm remainder 分离，再由 Stone formula 得连续谱 measure，并讨论谱端点无 atoms。作者明确说 detailed proof 留给长文；这篇 Letter 提供 proof outline 和高精度数值支持。本次没有补出完整 Fredholm/domain 证明，也未独立重画模流、重算全谱 entropy/capacity 或重现作者所有 lattice extrapolations。

已经独立复现的部分包括 KG plane wave、$SU(1,1)$ 与 Gram-matrix normalization、一个质量／频率附近的积分方程和 Painlevé 数值残差，以及给定 WKB 项后的 cusp 系数。它们足以把这篇作为一个可实际实现的 spectral/quantization 工具来读，但不支持把 formal asymptotic 或完备性 outline 冒充全文已提供的严格定理。

对当前项目，可先移植“covariance pair → 两端通道 → normalization matrix → quadratic form”的顺序，在现有 AdS mode basis 或 sewing map 上保留真实 symplectic pairing；不要仅以相同频谱就认定区域映射相同。作者提出多区间、Dirac 场、purification partners 和 modular conjugation 的推广方向，但并未在本文完成这些构造。
