---
paper id: 2610.33266v1
title: Hyperboloidal Initial Data with Prescribed Asymptotic Charges
authors:
  - Károly Csukás
  - János Östör
  - István Rácz
publication date: 2026-10-23T20:25:38
abstract: |-
  The authors construct vacuum hyperboloidal initial data by prescribing the asymptotic coefficients that enter Bondi energy and angular momentum, and solving the parabolic-hyperbolic constraints with a Fuchsian-inspired spectral method. Their numerical example starts from Schwarzschild free data of mass one and targets energy two and angular momentum one half.
comments: "10 pages, 4 figures"
url: https://arxiv.org/abs/2610.33266v1
summary: "A boundary-coefficient prescription for constraint-satisfying hyperboloidal data, with explicit charge maps, spectral regularity conditions and reproducibility limits."
tags: []
---

[[2026_10_27_overview|2026-10-27 overview]]

Reason codes: `T1-charge; T1-boundary; T2-model`.

结果是一个可用的“渐近系数 → 荷 → 约束解”的构造：在指定的光滑 hyperboloidal 类中，以 \((\mathbf K_1,\mathbf k_2,\widehat N_4)\) 作为无穷远数据，先代数地确定目标 \(E_B,J_B\)，再求余项。它提供约束面的具体坐标候选；论文没有构造这些数据的 CPS 二形式，也没有证明全部高阶球谐矩都是 BMS Hamiltonian charges。下面重建正文和全部 End Matter，再区分公式检查与数值证据。

## Source map and reading guide

官方 v1 的 PDF 共 10 页。正文与 End Matter 组成一条较密集的推导链，按短篇的 monograph 模式整理；所有实质章节均已覆盖。

| 源位置 | 内容及本笔记中的依赖 |
|---|---|
| Introduction，pp.1–2 | 光滑与 polyhomogeneous 初值的区别；有限阶正则性依赖先前的 Fuchsian 结果 |
| The analytic setting，pp.2–3，(1)–(12) | 真空约束、\(2+1\) 分解、自由/受限数据、有限荷和渐近系数 |
| Model and methodology，pp.3–4，(13) | 余项的奇异系统及为何采用全区间 collocation |
| Spinning up a black hole，pp.4–6，(14)–(16)，Figs.1–4 | Schwarzschild 自由数据、能量与角动量的指定、数值解与 residual |
| Conclusion，pp.5–6 | 与椭圆约束法的参数搜索比较；不包含新的演化定理 |
| End Matter: height function，p.8，EM.1–3 | 穿越视界的 seed slice 与数值放大率的选择 |
| End Matter: spin-weighted variables，pp.8–9 | dyad、投影、spin weight 的完整定义 |
| End Matter: harmonic representation，p.9，EM.4–12 | Schwarzschild 自由数据下的完整约束、eth 及 Gaunt 乘法 |
| End Matter: residual norm，p.9，EM.13–14 | 求解模与监测模的不同 cutoff |
| End Matter: linearized parabolic equation，p.10，EM.15–17 | 向内求解的高角动量误差放大 |
| End Matter: Bondi charges，p.10，EM.18–19 | 一般自由数据下的能量泛函和角动量 |

必读 analytic setting、(13)、(15)–(16)、EM.5–7；复用数值方法再读 EM.1–3、EM.11–17；一般自由数据的技术参考是 EM.18–19。Introduction 的背景文献不是本文重新证明的内容。

## 初值、法向及 spin-weighted 数据

取 \(G=1\)、四维真空、Lorentz signature \((-+++)\)，未来单位法向 \(n\)，作者使用

\[
K_{ij}=\frac12\mathcal L_n h_{ij},\qquad
{}^{(3)}R-K_{ij}K^{ij}+K^2=0,\qquad
D_jK^j{}_i-D_iK=0 .
\]

这里 \(K=h^{ij}K_{ij}\) 是三维迹，与下面二维迹 \(\mathbf K\) 不同。以 \(\rho\) 的 level sets \(\mathcal S_\rho\simeq S^2\) 分解

\[
h=\widehat N^2d\rho^2+
\widehat\gamma_{AB}(dx^A+\widehat N^A d\rho)
(dx^B+\widehat N^B d\rho),
\quad
\widehat n_i=\widehat N(d\rho)_i .
\]

\[
K_{ij}=\boldsymbol\kappa\,\widehat n_i\widehat n_j
+2\widehat n_{(i}\mathbf k_{j)}
+\frac12\mathbf K\,\widehat\gamma_{ij}
+\mathring{\mathbf K}_{ij}.
\]

\(\mathbf k\) 和 \(\mathring{\mathbf K}\) 均为切向，后者二维无迹。于是 \(K=\boldsymbol\kappa+\mathbf K\)，Hamiltonian 约束等价于

\[
{}^{(3)}R+2\boldsymbol\kappa\mathbf K+
\frac12\mathbf K^2-2\mathbf k_i\mathbf k^i
-\mathring{\mathbf K}_{ij}\mathring{\mathbf K}^{ij}=0 .
\]

End Matter 的 dyad 是

\[
q_A dx^A=d\vartheta+i\sin\vartheta d\varphi,\quad
q^A\partial_A=\partial_\vartheta+
i\csc\vartheta\partial_\varphi,\quad
q_A\bar q^A=2,
\quad q_{AB}=q_{(A}\bar q_{B)} .
\]

正文 p.3 的 unit-sphere metric 少写了一个共轭横线；这里采用 End Matter p.8 的明确实度规。定义

\[
\mathbf N=\widehat N_Aq^A,\quad
\mathbf a=\tfrac12\widehat\gamma_{AB}q^A\bar q^B,\quad
\mathbf b=\tfrac12\widehat\gamma_{AB}q^Aq^B,\quad
\mathbf k=\mathbf k_Aq^A,\quad
\mathring{\mathbf K}_{qq}=\mathring{\mathbf K}_{AB}q^Aq^B .
\]

全局符号字典为：

| 变量 | spin / reality | 在约束构造中的角色 |
|---|---|---|
| \(\widehat N,\boldsymbol\kappa,\mathbf K,\mathbf a\) | 0，实 | 径向 lapse、法法曲率、切向迹、角度规的实部 |
| \(\mathbf N,\mathbf k\) | 1，复 | 径向 shift、法切曲率 |
| \(\mathbf b,\mathring{\mathbf K}_{qq}\) | 2，复 | 角度规与曲率的无迹部分 |
| \(\omega=\rho^{-1}\) | 非负 | \(\omega=0\) 是 \(\mathscr I^+\) 的切面；不是时间演化变量 |
| \(\mathbf K_1,\widehat N_4,\mathbf k_2\) | 0、0、1 | 指定的渐近自由度 |

自由场是 \((\mathbf N,\mathbf a,\mathbf b;\boldsymbol\kappa,\mathring{\mathbf K}_{qq})\)；受限场是 \((\widehat N,\mathbf k,\mathbf K)\)。常规径向初值问题给一张有限 \(\rho\) 球上的受限场；本文改用无穷远数据挑选正则解。局部 well-posedness 仍要求 parabolic/hyperbolic 符号条件。本文不把任意自由场都纳入可全局求解的范围。

## 光滑类与三个渐近自由度

在作者引用的正则性假设下，自由数据满足 (5)–(9)：

\[
\begin{aligned}
\mathbf N&=\mathbf N_1\omega+\mathbf N_2\omega^2+O(\omega^3),\\
\mathbf a&=\omega^{-2}+\mathbf a_{(-1)}\omega^{-1}+\mathbf a_0+O(\omega),\\
\mathbf b&=\mathbf b_0+\mathbf b_1\omega+O(\omega^2),\\
\boldsymbol\kappa&=\boldsymbol\kappa_0+\boldsymbol\kappa_2\omega^2+O(\omega^3),\\
\mathring{\mathbf K}_{qq}&=\mathring{\mathbf K}_{qq,0}
+\mathring{\mathbf K}_{qq,1}\omega+O(\omega^2),
\end{aligned}
\]

其中 \(\mathbf a_{(-1)}\) 为常数，
\(\mathring{\mathbf K}_{qq,0}
=\frac12\boldsymbol\kappa_0\,\eth\eth(\boldsymbol\kappa_0^{-2})\)。
“光滑延拓”须理解为相应 conformally rescaled 变量的光滑性，例如 \(\omega^2\mathbf a\)；物理 \(\mathbf a\) 自身发散。

受限场写为

\[
\widehat N=\sum_{j=0}^4\widehat N_j\omega^j+
\omega^4w_{\widehat N},\quad
\mathbf K=\sum_{j=0}^4\mathbf K_j\omega^j+\omega^4w_{\mathbf K},
\quad
\mathbf k=\sum_{j=0}^3\mathbf k_j\omega^j+\omega^3w_{\mathbf k},
\]

各余项在 \(\omega=0\) 消失。递推不固定
\(\mathbf K_1,\mathbf k_2,\widehat N_4\)；其他系数由它们及自由数据确定。两个实 scalar 加一个复 spin-one field 给四个实的角函数。它们不是只含三个实数的黑洞参数集。

**Source-derived:** “有限 Bondi 能量/角动量 → 所需有限阶正则性 → 所有阶光滑延拓”的完整论证来自文中 refs.23、25 的假设和定理；本文主要展示该结构如何用于构造数据。本次没有独立审计这些引用定理，也不将有限的两个积分单独当成任意角向病态都可排除的充分条件。

## Fuchsian 余项与谱求解为何必需

把已确定的渐近系数代回约束，得到 (13)

\[
\partial_\omega W=
\operatorname{diag}(-3,-1,0)\frac{W}{\omega}
+H(\omega,p;\mathbf K_1,\mathbf k_2,\widehat N_4,
W,\eth W,\bar\eth W,\eth\bar\eth W),
\quad
W=(w_{\mathbf K},w_{\mathbf k},w_{\widehat N}).
\]

先看线性奇异部分：非正则齐次支为
\(w_{\mathbf K}\sim\omega^{-3}\)、\(w_{\mathbf k}\sim\omega^{-1}\)，
而 \(w_{\widehat N}\) 有常数齐次支；\(W(0)=0\) 排除它们。
这解释了普通 outward 初值加任意目标渐近系数会过定，以及 inward 积分会放大高角动量误差。它本身不证明非线性全区间解的存在或唯一性。

作者用 spin harmonics 截断到 \(L=\ell_{\max}\)，在 \([0,\omega_0]\) 上用 \(N_\omega+1\) 个 Chebyshev–Lobatto 节点，对余项 collocation residual 求小值。端点光滑条件选解；不能再独立指定有限半径的全部受限数据。文中没有给出完整 \(H\) 或可运行求解器，因此一般 Fuchsian 系数逐阶复算有明确输入缺口。

## Schwarzschild 自由数据下的完整约束

对 \(\widehat\gamma_{AB}=\rho^2q_{AB}\)、shift \(=0\)、
\(\mathring{\mathbf K}_{AB}=0\)、\(\boldsymbol\kappa=\boldsymbol\kappa(\omega)\)，EM.5–7 为

\[
\begin{aligned}
0={}&\omega\partial_\omega\widehat N
+\frac12\widehat N^2\eth\bar\eth\widehat N
+\frac12\widehat N\\
&-\frac12\left[
\omega^{-2}\left(\boldsymbol\kappa\mathbf K+\frac14\mathbf K^2\right)
+1-\mathbf k\bar{\mathbf k}\right]\widehat N^3,\\
0={}&\omega\partial_\omega\mathbf K
+2\left(\boldsymbol\kappa-\frac12\mathbf K\right)
-\frac12\omega\widehat N(\bar\eth\mathbf k+\eth\bar{\mathbf k})
-\omega(\mathbf k\bar\eth\widehat N+\bar{\mathbf k}\eth\widehat N),\\
0={}&\omega\partial_\omega\mathbf k-2\mathbf k
-\omega^{-1}\left[
\frac12\widehat N\eth\mathbf K+
\left(\boldsymbol\kappa-\frac12\mathbf K\right)\eth\widehat N
\right].
\end{aligned}
\]

\(\widehat N\sim\omega/\boldsymbol\kappa_0\) 使表面奇异项有限。
\(\eth_s=-(\partial_\vartheta+i\csc\vartheta\partial_\varphi-s\cot\vartheta)\)，
\(\bar\eth_s=-(\partial_\vartheta-i\csc\vartheta\partial_\varphi+s\cot\vartheta)\)，故

\[
\eth\,{}_sY_\ell^m=\sqrt{(\ell-s)(\ell+s+1)}\,{}_{s+1}Y_\ell^m,\qquad
\bar\eth\,{}_sY_\ell^m=-\sqrt{(\ell+s)(\ell-s+1)}\,{}_{s-1}Y_\ell^m .
\]

**Checked:** xAct/xCoba 对任意
\(\widehat N(\rho,\vartheta,\varphi)\)、\(\mathbf K(\rho,\vartheta,\varphi)\)、
\(\mathbf k=u+iv\)、径向 \(\boldsymbol\kappa(\rho)\) 直接计算三维曲率和 \(D_jK^j{}_i-D_iK\)。令
\(K_{\rho A}=\widehat N(u,\sin\vartheta\,v)\)，得到上述 Hamiltonian 与三个实动量方程，四个归一化差式均为 \(\{0,0,0,0\}\)。这不是只检验球对称解。

球对称时第三式平凡，第二式给

\[
\mathbf K=2c_0+k_1\omega-2c_2\omega^2-c_3\omega^3+\cdots,
\quad
\boldsymbol\kappa=c_0+c_2\omega^2+c_3\omega^3+\cdots.
\]

余项的主阶分别为
\(\omega w_{\mathbf K}'+3w_{\mathbf K}\)、
\(\omega w_{\mathbf k}'+w_{\mathbf k}\)、\(\omega w_{\widehat N}'\)；
\(w_{\widehat N}\) 方程还受 \(w_{\mathbf K}/c_0^2\) 的正则源驱动，不能丢掉耦合而称全系统对角化。

## 从 Hawking 积分到可指定的荷

保留有限球面，作者的 null normals normalization 对应

\[
\theta^{(\pm)}=\mathbf K\pm\overset{\star}{K}/\widehat N,\quad
\overset{\star}{K}=\frac12\widehat\gamma^{AB}
\mathcal L_{\rho-\widehat N}\widehat\gamma_{AB},
\]

\[
E_H(\rho)=\sqrt{\frac{\mathcal A_\rho}{16\pi}}
\left(1+\frac1{16\pi}\int_{\mathcal S_\rho}
\theta^{(+)}\theta^{(-)}\widehat\epsilon\right),\quad
E_B=\lim_{\rho\to\infty}E_H(\rho),
\]

\[
J_B[\phi]=-\frac1{8\pi}\lim_{\rho\to\infty}
\int_{\mathcal S_\rho}\phi^i\mathbf k_i\,\widehat\epsilon .
\]

\(\phi\) 是 center-of-mass reference sphere 上选取并最大化该泛函的 axial field；这个选择与 sign/axis convention 都属于定义。对 Schwarzschild 自由数据，(15)–(16) 简化为

\[
E_B=\frac1{32\pi}\int_{S^2}
\left[
\frac{\mathbf K_1(\mathbf K_1^2-6)}{c_0}
+8(\mathbf K_1c_2+\widehat N_4c_0^3)
-4c_0c_3-c_0^{-1}\eth\bar\eth\mathbf K_1
\right]d\Omega ,
\]

\[
J_B[\phi]=-\frac1{16\pi}\int_{S^2}
\left[(\phi^A\bar q_A)\mathbf k_2+
(\phi^Aq_A)\bar{\mathbf k}_2\right]d\Omega .
\]

常数 \(c_0>0\) 下 Laplacian 项的积分为零；\(\widehat N_4\) 的 monopole 线性控制总能量，\(\mathbf K_1\) 的 cubic 项会混合角模，不能逐模独立指定任意全部荷。

**Checked:** 球对称有限半径公式是

\[
E_H=\frac1{2\omega}
\left(1-\widehat N^{-2}+\frac{\mathbf K^2}{4\omega^2}\right).
\]

令它为常数 \(E\)，则
\(\widehat N=[1-2E\omega+\mathbf K^2/(4\omega^2)]^{-1/2}\)。
取 \(\omega>0,c_0>0\) 展开到 \(\omega^4\)，得到

\[
\widehat N_4=
\frac{4c_0^2c_3+8c_0E+6k_1-8c_0c_2k_1-k_1^3}{8c_0^4},
\quad
E=\frac{k_1(k_1^2-6)}{8c_0}+k_1c_2+
c_0^3\widehat N_4-\frac12c_0c_3 .
\]

Mathematica 将此式代回 (15) 的球对称积分，差式为零。这给出具体的由边界系数读出质量的推导。

一般自由数据的 EM.18 还包含 shift 与角导数。记
\(K_1=\mathbf K_1,\ N_4=\widehat N_4,\ \kappa_j=\boldsymbol\kappa_j\)，其能量密度可组织为

\[
\begin{aligned}
32\pi E_B={}&\int_{S^2}
\bigg[
\kappa_0^{-1}K_1^3+8\kappa_0^3N_4
-4\kappa_0\kappa_3+12\mathbf a_1\kappa_0^2\\
&-2K_1(3\kappa_0^{-1}+3\mathbf a_0\kappa_0-4\kappa_2)
-\{\mathcal B+\mathrm{c.c.}\}
\bigg]d\Omega ,\\
\mathcal B={}&
\frac32\kappa_0K_1\bar\eth\mathbf N_1+
\kappa_0\mathbf N_1\bar\eth K_1
-4\mathbf N_1K_1\bar\eth\kappa_0\\
&+2\kappa_0(\mathbf N_2\bar\eth\kappa_0-\kappa_0\bar\eth\mathbf N_2)
+\frac14\kappa_0^5\eth\bar\eth(\kappa_0^{-6}K_1)\\
&-\frac32\kappa_0^{-2}K_1\eth\bar\eth\kappa_0
+\frac14\kappa_0^{-1}\eth\bar\eth K_1 .
\end{aligned}
\]

这里把源式
\(\kappa_0^5\mathbf N_1^{-1/2}\bar\eth(\mathbf N_1^{3/2}\kappa_0^{-4}K_1)\)
与 \(2\kappa_0\mathbf N_2^2\bar\eth(\mathbf N_2^{-1}\kappa_0)\)
先按乘法法则展开，消去表面的 shift 除零。**Checked:** 两项的局部乘法法则 residual 为零；展开式给出 \(\mathbf N_1=\mathbf N_2=0\) 的代数延拓。它不需要全局选择复数 fractional powers。整个 EM.18 的一般几何推导仍为 **Source-derived**；检查这两个乘法法则不等于复现一般 Bondi 公式。

## Schwarzschild height function 与参数精度

EM.1–3 使用

\[
ds^2=-f\,dT^2-2b\,dT\,d\rho+a\,d\rho^2+\rho^2d\Omega^2,
\quad f=1-\frac{2M}{\rho},\quad
b=f h'(\rho),\quad a=\frac{1-b^2}{f}.
\]

设 \(x=2M/\rho\)，

\[
U(x)=e^{g(x)}(1-x)-e^{-g(x)}x^2+\lambda x,\quad
b=\frac{U}{\sqrt{U^2+4x^2(1-x)}},\quad
a=\frac{4x^2}{U^2+4x^2(1-x)},
\]

\[
g=(1-x)b_0+xb_1+x(1-x)b_2+x(1-x)(2x-1)b_3+
x^2(1-x)^2b_4+\frac A2[1-\tanh((x-x_d)/w)] .
\]

源给
\((b_0,b_1,b_2,b_3,b_4,x_d,A,w,\lambda)
=(0.9439,0.0378,-2.0573,1.8144,-0.1497,0.29,1.8395,0.06,0.1629)\)。
\(b(0)=1,b(1)=-1\) 对应未来 null infinity 与未来 seed horizon；\(a\) 的上式使 \(f=0\) 处的可去奇异性显式化。

**Checked:** 对任意足够光滑 \(b(\rho)\)，\(a=(1-b^2)/f>0\) 时，

\[
\widehat N=\sqrt a,\qquad
\mathbf K=\frac{2b}{\rho\sqrt a},\qquad
\boldsymbol\kappa=\partial_\rho(b/\sqrt a)
\]

满足球对称真空约束，且 \(E_H=M\)。xCoba 的
\({}^{(3)}R=2\rho^{-2}(1-a^{-1})+2a'/(\rho a^2)\)
加 Mathematica 代入检验了该链。

给定 seed \(E=1\)，固定
\(\mathbf K_1=k_1+\alpha/\sqrt{4\pi}\)、
\(\widehat N_4=n_4+\beta/\sqrt{4\pi}\)，则

\[
\beta=\frac{\sqrt{4\pi}}{c_0^3}
\left[
2-\frac{k_1'(k_1'^2-6)}{8c_0}-k_1'c_2
+\frac12c_0c_3-c_0^3n_4
\right],
\qquad k_1'=k_1+\alpha/\sqrt{4\pi}.
\]

这是真正不需参数迭代的线性方程，但数值输入必须一致。

**Failed — literal-input reproduction, not the analytic prescription:** 把上述印出的所有 shape 参数按精确小数处理，独立展开得到
\(k_1=-93.3386996358,\ n_4=-6.40868712815\)，与正文的
\(-93.3500,-6.4058\) 不同。再取印出的 \(\alpha=-36.8911\)，解能量条件得到
\(\beta=291.083071513\)，而不是正文的 \(291.041\)。
在这一明确输入解释下，直接使用 \(\beta=291.041\) 给
\(E_B=1.21567299570\)，不满足 \(E_B=2\)。
**Blocked:** 源没有提供未舍入的 shape 参数、完整精度 seed/companion 系数；因此不能判断差异来自展示舍入还是内部数值不一致。代数上用同一组输入重新求 \(\beta\) 可恢复目标能量。本文图示使用的实际输入和高精度数值解没有被本次认证。

## 角动量、球谐矩与归一化

采用源的 eth 相位，
\({}_1Y_1^0=\sqrt{3/(8\pi)}\sin\vartheta\)，
\(\phi=\partial_\varphi\)，指定

\[
\mathbf k_2=-i\sqrt{6\pi}\,{}_1Y_1^0
=-\frac{3i}{2}\sin\vartheta .
\]

荷密度为 \(3\sin^2\vartheta/(16\pi)\)，直接积分得 \(J_B=1/2\)。
改变轴的朝向会改变符号；源的 \(|\gamma|/\sqrt{24\pi}\) 是选取最大化轴后的正值。

**Checked:** Mathematica 的角积分给 \(J=1/2\)。
但若“高阶矩”严格按 p.3 所说只乘标准正交归一的 \(\bar Y_\ell^m\)，则
\(J_{00}^{\rm raw}=J/\sqrt{4\pi}=1/(4\sqrt\pi)\)。
源 p.5 的 \(J_{00}=J\) 与 \(J_{20}=-1/(2\sqrt5)\) 对应的是

\[
\mathcal J_{\ell m}=\sqrt{4\pi}
\int_{S^2}\frac{3\sin^2\vartheta}{16\pi}\bar Y_\ell^m\,d\Omega ,
\]

而非 raw harmonic coefficients。这里显式补足约定；
两种归一化不能混用。\(J_{20}\) 的上述数值已独立复算。

在 axisymmetric 解中 EM.7 的虚部给
\(\omega\partial_\omega\operatorname{Im}\mathbf k-2\operatorname{Im}\mathbf k=0\)，
因为其他角源为实。因此 imaginary axial mode 精确按 \(\omega^2\) 缩放，乘球面积 \(\rho^2\) 后相应的 \(J\) 及此例各角矩可不随半径变化。一般非轴对称数据没有这一结论。高阶矩的物理解释及其与 supermomentum/superspin 的关系，作者明确留作问题。

## 谱乘法、残差与误差放大的边界

保留两个截断 \(L=\ell_{\max}\)、\(N_\omega\)，以及计算精度 \(P\)，再谈任何 continuum 极限。轴对称试算只用 \(m=0\)，但非线性不能只在求解的 \(\ell\leq L\) 范围内验 residual。

EM.11–12 用

\[
{}_{s_1s_2s_3}G_{\ell_1\ell_2\ell_3}^{m_1m_2m_3}
=\sqrt{\frac{(2\ell_1+1)(2\ell_2+1)(2\ell_3+1)}{4\pi}}
\begin{pmatrix}\ell_1&\ell_2&\ell_3\\-s_1&-s_2&-s_3\end{pmatrix}
\begin{pmatrix}\ell_1&\ell_2&\ell_3\\m_1&m_2&m_3\end{pmatrix}
\]

实现乘法及 spin addition。**Checked:** 对
\(Y_1^0Y_1^0\) 和 \({}_1Y_1^0{}_{-1}Y_1^0\)，
\(\ell=0,1,2\) 的六个直接积分系数与该 Wigner-\(3j\) 公式完全相符。
这是有限样例检查，不是完整谱实现的审计。

作者监测

\[
\mathcal E_{\rm full}(\omega)=
\left[\sum_{q\in\{\mathbf K,\mathbf k,\widehat N\}}
\sum_{\ell\in S_q}|(\mathcal R_q)_\ell^0(\omega)|^2\right]^{1/2},
\]

其中 \(S_{\widehat N}\) 到 \(5L\)，
\(S_{\mathbf K},S_{\mathbf k}\) 到 \(2L\)；它们分别覆盖多项式次数生成的模。图示使用 \(L=20,N_\omega=192\)，
\(\omega\in[0,0.3]\)，并报告 \(\mathcal E_{\rm full}<10^{-24}\)。
径向和角向分辨率扫描分别在 Figs.4、3 中。

EM.15–17 对 principal angular part 给

\[
\partial_\omega\delta\widehat N_\ell
=\frac{\ell(\ell+1)}{2\omega}\widehat N_{\rm mod}^2
\delta\widehat N_\ell,\qquad
\mathfrak G_\ell(\omega)=\frac{\ell(\ell+1)}2
\int_0^\omega\widetilde\omega^{-1}\widehat N_{\rm mod}^2\,d\widetilde\omega .
\]

\(\widehat N_{\rm mod}=O(\omega)\) 使积分下端有限。
源选积分约 \(0.18\)，则 \(\ell=20\) 的 principal amplification
\(e^{37.8}\simeq2.60814\times10^{16}\)，说明为何采用约 80 位精度。
这是主部的误差估计；不包含全部耦合的稳定性常数，也不把有限 residual 自动转成误差界。

**Source-derived:** MOTS 赤道/极点坐标半径 \(3.9905,3.9953\)、Hawking 能量内向下降、order-50 Taylor 比较和 \(10^{-24}\) residual。
**Blocked:** 源码包只有 TeX、参考文献、style 与四张图，没有谱系数、求解器、Taylor 系数或 MOTS 数据；不能独立运行这些数值声明。
\(\omega\approx0.2506\) 位于计算区间内仅是源数值结果的几何解释，并非由总 \(E,J\) 唯一决定的视界半径。

## Equation ledger and local CPS use

依赖链为：

\[
\text{真空约束及自由几何}
\longrightarrow
\text{渐近递推与 }(\mathbf K_1,\mathbf k_2,\widehat N_4)
\longrightarrow
\text{荷泛函 (15),(16),EM.18–19}
\longrightarrow
\text{目标荷参数}
\longrightarrow
\text{Fuchsian 正则解}
\longrightarrow
\text{有限截断 residual 检查}.
\]

| 可复用对象 | 已完成的边界 |
|---|---|
| \(2+1\) 曲率数据与 EM.5–7 | xCoba 对任意角依赖场复现四个实约束 |
| \(E_H\) 与边界 \(E_B\) | 任意 spherical height 及 \(\omega^4\) 的质量系数独立检查 |
| \(\mathbf k_2\) 到 \(J_B\) | 轴、eth 相位、harmonic normalization 明确后精确积分 |
| 自由系数对目标质量的调节 | 代数公式通过；公开显示精度不足以复现作者数值例 |
| 一般 EM.18 | 重建公式，shift 除零按乘法法则消去；一般几何推导未复算 |
| 全区间谱解 | Source-derived，缺少运行输入，未得到误差认证 |

对 vault 的直接用途，是在研究边界 Hamiltonian 时先明确允许的约束解族及边界变分：
\(\delta\mathbf K_1,\delta\mathbf k_2,\delta\widehat N_4\) 必须来自该正则解空间。
接下来若要求它们是 canonical pairs 或可积生成元，还需要从 Einstein action 求 \(\Theta\)、包含角点/边界条件的 \(\Omega_\Sigma\)，再比较
\(\delta H_\xi\) 与这些荷泛函的变分。本文并未完成这一步；Fuchsian 边界数据控制也不能直接等同于区域态或算符代数的 sewing。

## Verification record

- **Verified / Checked:** xAct/xCoba 径向曲率与任意角依赖的 EM.5–7；Mathematica spherical constraint/Hawking mass、\(\omega^4\) 能量系数、轴向 \(J=1/2\)、归一化后的 quadrupole、六个低阶 Gaunt 系数、shift 项的乘法法则及 principal amplification 数值。
- **Assumptions:** 真空四维、上述 extrinsic-curvature 正号；\(\omega>0,c_0>0\) 的实 lapse 分支；spherical free data 用于 EM.5–7；标准 unit-sphere harmonics 与明确的 \(\sqrt{4\pi}\) 角矩归一化；所有截断与精度保留。
- **Failed:** 将印出的所有 seed shape 小数视为精确输入，再使用印出的 \(\alpha,\beta\)，不能重现 \(E_B=2\)。此失败不否定解析指定荷的方法。
- **Blocked:** 未给完整 \(H\)、未舍入数值输入、谱求解器/coefficients、MOTS 与 residual 数据；一般 Fuchsian 定理的假设和证明依赖所引文献。
- **Not independently verified:** \(10^{-24}\) residual、MOTS、全部高阶正则性/全局演化、一般 EM.18 的几何推导及高阶矩的 BMS/CPS 解释。

源 TeX 已全读；PDF pp.2–4、8–10 的公式已渲染核对。PDF 提取有 font-type warning，公式依据 TeX 和渲染互校。独立计算日志与检索材料保存在 vault 外的本次临时目录；初次 xCoba 动量检查错误地在求导前固定了自由指标，修正为先求完整张量协变导数后取分量，四残差归零。该实现错误没有记作源失败。
