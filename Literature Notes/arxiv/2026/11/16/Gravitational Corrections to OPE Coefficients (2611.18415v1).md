---
paper id: 2611.18415v1
title: Gravitational Corrections to OPE Coefficients
authors:
  - Ameya Chavda
  - Alessandro Podo
  - John Staunton
publication date: 2026-11-13T16:56:56Z
abstract: |-
  以平空间 stress-tensor insertion 计算相互作用 QFT 的短距离曲率修正，得到 cubic／quartic scalar 与一般 scalar CFT primaries 的 OPE 系数。工作至线性曲率及低阶导数，保留 descendant 对 primary 系数的混合，并讨论这些幂律／对数奇异性在世界线时间涂抹后的分布意义。
comments: "29 pages"
url: https://arxiv.org/abs/2611.18415v1
summary: "可复用的内容是 curvature-corrected OPE 与 descendant mixing；时间涂抹的局部有限性有支持，但并非完整 observer algebra 的构造。"
tags: []
---

# 用短距离 OPE 决定哪些曲率项会进入局部量子算符

对当前区域代数、AdS 量子化及相互作用修正工作，本文提供两类具体输入：一是可以带系数使用的 $R_{\mu\nu}x^\mu x^\nu$、$Rx^2\log x^2$ 修正；二是一个清楚的例子，说明**改变曲率背景或算符 basis 时，descendant 会回流到 primary 的 OPE 系数**。只把平空间距离换成 geodesic distance 会漏掉后一项。

依据 [arXiv:2611.18415v1](https://arxiv.org/abs/2611.18415v1) §2–6、附录 A–B。PDF29页，正文印刷页码比 PDF 页码少1。已读全文技术链；关键(4.18)–(4.30)、(5.5)–(5.7)、附录距离与 Weyl 公式对照实际 PDF 页面。以下不给这篇文章贴“完整 observer algebra 已建立”的标签：来源的时间涂抹论述比它实际检查的 norm／短距离分布更强。

## 1. 近似、状态与 normalization

背景 $g=\eta+h$ 是外部、非动态 metric，不含量子 graviton loops 或 backreaction。尺度满足 $\ell_{\rm UV}\ll s\ll\ell_{\rm IR}$。本文在线性曲率和 leading derivative order 工作，舍弃 $R^2$、更高曲率导数等；并非任意分离距离的精确 correlator。

scalar 部分号差 $(-,+,\ldots,+)$，传播子 $-i/(k^2-i\epsilon)$，Fourier convention

$$
f(k)=\int d^dx\,e^{-ikx}f(x),\qquad
f(x)=\int\frac{d^dk}{(2\pi)^d}e^{ikx}f(k).
$$

采用作者的 Wald 型曲率约定；其定义为

$$
R_{\mu\nu\rho}{}^\sigma
=\partial_\nu\Gamma^\sigma{}_{\mu\rho}-\partial_\mu\Gamma^\sigma{}_{\nu\rho}
+\Gamma^\lambda{}_{\mu\rho}\Gamma^\sigma{}_{\lambda\nu}
-\Gamma^\lambda{}_{\nu\rho}\Gamma^\sigma{}_{\lambda\mu},
\quad R_{\mu\nu}=R_{\mu\rho\nu}{}^\rho.
$$

转成别的四指标顺序时须同时映射，不能只看一个 $R_{abcd}$ 名称。一般 CFT 计算改用 Euclidean signature，Lorentzian 结果还需要规定边界值和时序。

Hadamard 是短距离态条件，不表示所有光滑部分都相同。§4 另外选取所讨论的一点函数为零的情形，且从 flat-space operators 通过 stress tensor 耦合背景。有限 curvature-dependent operator redefinitions 与 analytic terms 并未由 nonanalytic OPE 唯一确定。

记 $\Delta_0=(d-2)/2$ 为 free scalar dimension，$\mathcal D_{12}$ 为 van Vleck determinant（不是 $\mathcal D^{1/2}$），$s^2$ 为 squared geodesic interval。只保留当前阶数时

$$
\mathcal D_{12}=1+\frac16R_{\mu\nu}(x_0)x_{12}^\mu x_{12}^\nu+\cdots,
$$

$$
s^2=x_{12}^2+h_{\mu\nu}(x_0)x_{12}^\mu x_{12}^\nu
+\frac1{24}x_{12}^\mu x_{12}^\nu x_{12}^\rho x_{12}^\sigma
\partial_\rho\partial_\sigma h_{\mu\nu}(x_0)+\cdots.
$$

$\mathcal D$ 的任意次幂在本文都是截断到线性曲率的紧凑记法，不是包含所有高阶 curvature 的 resummation 定理。

## 2. 弱 metric insertion：怎样从 correlator 抽出 OPE

按 $T_{\mu\nu}=-2(\sqrt{-g})^{-1}\delta S/\delta g^{\mu\nu}$，有

$$
S[g]=S[\eta]+\frac12\int h_{\mu\nu}T^{\mu\nu}+O(h^2),
$$

$$
\delta_g\langle T\{O_1\cdots O_n\}\rangle
=\frac i2\int d^dy\,h_{\mu\nu}(y)
\langle T\{O_1\cdots O_nT^{\mu\nu}(y)\}\rangle_0.
$$

这样 curved-space 的 $n$ 点问题变成 flat-space 的 $n+1$ 点问题。以 cubic theory 为例，先令 $x_1,x_2\to x_0$，再令第三点靠近，有

$$
\langle\phi_1\phi_2\phi_3\rangle_g
\sim\hat C_{\phi\phi}^{\phi}(x_{12},x_0)
\hat C_{\phi\phi}^{\mathbf1}(x_3-x_0,x_0).
$$

必须把 $\hat C^{\phi}$ 与右侧 two-point／identity coefficient 各自的 metric correction 分开，否则同一 stress insertion 会被重复计入。

选择 $x_{12}=x_1-x_2$、$x_0=(x_1+x_2)/2$、$y=x_3-x_0$；与之对偶的 $(p,q,k)$ 满足

$$
-k_1x_1-k_2x_2+k_3x_3=px_{12}+qx_0+ky.
$$

两个变换的 Jacobian 均为1，本次已做矩阵重算。$q$ 是背景 soft momentum，$p$ 对应最短 separation，且 $p\gg k$。metric correction 取 $q/p$ 或 $q/k$ 的二阶，再按 $k/p$ 最低阶展开，factorize 出所需 OPE。此 momentum-to-position OPE 操作有来源明确的 perturbative／soft-operator 限制，不应直接推广到任意高维 composite soft insertion。

## 3. Cubic 与 quartic：可复用的曲率 logarithm

附录 A 的主积分为

$$
I_\alpha(x)=\int\frac{d^dk}{(2\pi)^d}\frac{-i e^{ikx}}{(k^2-i0)^\alpha}
=\frac{\Gamma(d/2-\alpha)}{4^\alpha\pi^{d/2}\Gamma(\alpha)}
(x^2+i0)^{\alpha-d/2}.
$$

本次从径向形式 $\Box F(z)=4zF''+2dF'$ 检验 $\Box I_\alpha=-I_{\alpha-1}$。原积分在某些 $d,\alpha$ 有 IR poles；公式按 dimensional continuation 使用，不把 gamma pole 当作有限函数值。

cubic action 的 interaction 符号为 $+\lambda_3\phi^3/3!$，因此 flat contribution 是 $\lambda_3I_2$。用 $\bar h_{\mu\nu}=h_{\mu\nu}-\frac12h\eta_{\mu\nu}$，五项 derivative expression 为

$$
\begin{aligned}
\frac{\hat C^{\phi(1)}}{\lambda_3}={}&
\frac12I_3\partial^\mu\partial^\nu\bar h_{\mu\nu}
-\frac32\partial^\mu\partial^\nu I_4\,\Box\bar h_{\mu\nu}
-4\partial^\rho\partial^\sigma\partial^\mu\partial^\nu I_5\,
\partial_\rho\partial_\sigma\bar h_{\mu\nu}\\
&-\frac{I_3}{2(d-2)}\Box\bar h
-\frac{\partial^\rho\partial^\sigma I_4}{d-2}\partial_\rho\partial_\sigma\bar h.
\end{aligned} \tag{3.22}
$$

这里 $I$ 的导数在 separation 上，$h$ 的导数在 midpoint 上。为独立检查，令 $z=x_{12}^2$，定义 Hessian contractions

$$
A=\partial_\mu\partial_\nu h^{\mu\nu},\ B=\Box h,\quad
U=x^\mu x^\nu\Box h_{\mu\nu},\ V=x^\mu x^\nu\partial_\mu\partial_\nu h,
$$

$$
W=x^\mu x^\rho\partial_\rho\partial_\nu h_\mu{}^\nu,\quad
H_4=x^\mu x^\nu x^\rho x^\sigma\partial_\rho\partial_\sigma h_{\mu\nu}.
$$

则 $R=A-B$、$R_{\mu\nu}x^\mu x^\nu=W-(U+V)/2$。展开二阶与四阶径向导数，五项相加实际得到

$$
\frac{\hat C^{\phi(1)}}{\lambda_3I_2}
=\frac1{12}R_{\mu\nu}x^\mu x^\nu
+\frac{zR}{12(d-6)}-\frac{d-4}{48z}H_4.
$$

本次 Mathematica 先在积分／gamma functions 均无极点的域 $z>0,d>10$ 化简残差为零，再按解析延拓解释一般 $d$；并非数值抽样。最后一项恰由把 $x^2$ 改成 $s^2$ 吸收，Ricci tensor 项由 $\mathcal D^{1/2}$ 吸收，故

$$
\hat C_{\phi\phi}^{\phi}
=\frac{\lambda_3\Gamma(d/2-2)}{16\pi^{d/2}}
(s^2+i0)^{3-d/2}
\left[\frac{\mathcal D_{12}^{1/2}}{s^2+i0}+\frac{R}{12(d-6)}\right]. \tag{3.24}
$$

在 $d=4-2\epsilon$，$\Gamma(-\epsilon)(s^2)^\epsilon=-1/\epsilon-\log s^2+\cdots$。舍去这里未固定的 analytic pieces 后

$$
\hat C_{\phi\phi}^{\phi}\big|_{\rm nonanalytic}
=-\frac{\lambda_3}{16\pi^2}
\left(\mathcal D_{12}^{1/2}-\frac{s^2R}{24}\right)\log(s^2+i0).
$$

已独立重算 log 系数。它不是在 pole 处直接代入 $d=4$，也不是完整的 finite renormalized coefficient。

### Quartic 的组合因子和 free contribution

quartic interaction 是 $-\lambda\phi^4/4!$。connected four-point hierarchical limit 含 $2\hat C^{\phi^2}\hat C^{\mathbf1}\hat C^{\mathbf1}$，因 $\langle\phi^2\phi\phi\rangle$ 有两个 Wick contractions。故 connected interaction correction 恰是 cubic 答案乘 $-\lambda/(2\lambda_3)$：

$$
\delta_\lambda\hat C_{\phi\phi}^{\phi^2}
=-\frac{\lambda\Gamma(d/2-2)}{32\pi^{d/2}}(s^2+i0)^{3-d/2}
\left[\frac{\mathcal D_{12}^{1/2}}{s^2+i0}
+\frac{1-6\xi}{12(d-6)}R\right]. \tag{3.45}
$$

这里最后一项已加入 nonminimal coupling $-\xi R\phi^2/2$。$d=4$、minimal coupling 时 nonanalytic correction 为

$$
\frac\lambda{32\pi^2}\left(\mathcal D_{12}^{1/2}-\frac{s^2R}{24}\right)\log(s^2+i0).
$$

**这不是整个 free-plus-interacting $C_{\phi\phi}^{\phi^2}$ 都与 $\lambda$ 成正比。** 论文这里抽的是 connected interaction part。按未归一化 $\phi^2$ 的约定，tree coefficient 是1，所以完整 coefficient 为 $1+\delta_\lambda\hat C+O(\lambda^2)$；用 $\mathcal O_2=\phi^2/\sqrt2$ 时 coefficient 相应乘 $\sqrt2$。comparison 时还需统一 elementary two-point normalization，不能只改 composite 名称。

### Wilson–Fisher 的准确阶数

$d=4-2\epsilon$ 时 $\lambda_*=32\pi^2\epsilon/3$，$\gamma_{\phi^2}=\lambda_*/(16\pi^2)=2\epsilon/3$，而

$$
\Delta_\phi=1-\epsilon+O(\epsilon^2),\quad
\Delta_{\phi^2}=2-\frac43\epsilon+O(\epsilon^2).
$$

$\xi_c=(d-2)/[4(d-1)]$ 给 $1-6\xi_c=\epsilon/(3-2\epsilon)$。故 leading **nonanalytic** $O(\lambda)$ 的 scalar-curvature log 消失，flat logarithm 对应 $s^{\gamma_{\phi^2}}=1+\frac12\gamma_{\phi^2}\log s^2+\cdots$。这正是作者将结果写成 $\mathcal D^{1/2}s^\gamma$ 的意义；不能据该式推出所有 analytic curvature terms、所有阶 $\epsilon$ 都被确定或消失。

## 4. 一般 CFT：Ward identities 取代未知四点函数

外部 scalar primary dimension 为 $\Delta$，输出 scalar primary dimension 为 $\Delta'$，flat coefficient 写成 $\lambda_{\mathcal O\mathcal O\mathcal O'}/s^{2\Delta-\Delta'}$。此处的 $\lambda_{\mathcal O\mathcal O\mathcal O'}$ 是 three-point normalization，**不是上一节 Lagrangian quartic coupling**。

在局部 Riemann normal 坐标中，把 metric perturbation 写成

$$
h_{\mu\nu}=2\omega\delta_{\mu\nu}+\partial_\mu\xi_\nu+\partial_\nu\xi_\mu+h^{\rm TT}_{\mu\nu},
\qquad h^{\rm TT}_{\mu\nu}=-\frac13C_{\mu\rho\nu\sigma}\hat y^\rho\hat y^\sigma.
$$

在当前 derivative order，$\omega$ 和 $\xi$ 是常曲率系数的二次／三次多项式。所需两个 midpoint 组合为

$$
\omega_1+\omega_2=-\frac{\mathcal R_x}{8\Delta_0},\quad
\frac{x_{12}\cdot\xi_{12}}{x_{12}^2}=\frac{\mathcal R_x}{48\Delta_0},
\quad
\mathcal R_x=R_{\mu\nu}x_{12}^\mu x_{12}^\nu-\frac{Rx_{12}^2}{2(d-1)}.
$$

TT contribution 不能产生这里的 scalar two-point correction：只有一个 separation vector，metric contractions 被 Weyl 的 tracelessness 消掉，四个同向 separation 的 contraction 被 Weyl 反对称性消掉。本次 xAct 分别确认了这两类 contraction 为零。它不表示 Weyl curvature 在所有 spinning OPE 或更高阶修正中都不存在。

flat Ward identities 给 trace insertion 在 $x_1,x_2$ 的 delta 项，以及 divergence insertion 的 translation action。积分后 two-point correction 是

$$
-\Delta\left[\omega_1+\omega_2+2\frac{x_{12}\cdot\xi_{12}}{x_{12}^2}\right]
\frac{C_d}{x_{12}^{2\Delta}}.
$$

代入并 covariantize，得到

$$
\hat C_{\mathcal O\mathcal O}^{\mathbf1}
=\frac{C_d}{s^{2\Delta}}
\left[\mathcal D_{12}^{\Delta/(2\Delta_0)}
-\frac{\Delta/\Delta_0}{24(d-1)}s^2R\right]. \tag{4.15}
$$

设 $\Delta=\Delta_0$ 恢复 conformally coupled free scalar；不是 generic minimal scalar。

## 5. Primary coefficient 为什么需要二阶 descendant

取 $x_{1,2}=x_0\pm x/2$，$y=x_3-x_0$。flat three-point function 的展开给

$$
\frac{|y|^{2\Delta'}}{|y-x/2|^{\Delta'}|y+x/2|^{\Delta'}}
=1-\frac{\Delta'x^2}{4y^2}
+\frac{\Delta'(x\cdot y)^2}{2y^4}+\cdots.
$$

若 midpoint OPE 的二阶 descendant coefficient 为

$$
\frac{C^{\partial\partial\mathcal O'}}{C^{\mathcal O'}}
=A\,x^\mu x^\nu+B\,x^2\delta^{\mu\nu},
$$

把它作用于 $|y|^{-2\Delta'}$，比较 anisotropic／isotropic 两个张量结构，就得到

$$
A=\frac1{8(\Delta'+1)},\qquad
B=\frac{\Delta'}{16(\Delta'+1)(\Delta_0-\Delta')}. \tag{4.18b}
$$

本次 CAS 重算了两条匹配方程，均为零残差。公式要求 $\Delta'\ne\Delta_0$；在 scalar unitarity bound 的 shortening／null descendant 情况须另行处理，不能直接保留 pole。$d>2$ 也一直是必要条件。

### 两个积分区域各做什么

对未知的 $\langle\mathcal O_1\mathcal O_2T(y)\mathcal O_3'\rangle$，source 按

- $|y-x_0|\sim|x_3-x_0|\gg|x|$：先 fuse $\mathcal O_1\mathcal O_2$，产生平空间 primary 和 descendant coefficients，再乘已知的 $\langle\mathcal O'T\mathcal O'\rangle$；
- $|y-x_0|\sim|x|\ll|x_3-x_0|$：把 $T$ 与两个近点一起 fuse，给真正的 local OPE correction，

作 region expansion，延伸积分域后减去 overlaps。primary overlap 在所用 dimensional prescription 中 scaleless；**descendant overlap 不能一起丢掉**。经过 Ward identities，剩下可以直接执行的等式是

$$
\frac{\delta\hat C^{\mathcal O'}}{C^{\mathcal O'}}
=-\Delta(\omega_1+\omega_2)
-(2\Delta-\Delta')\frac{x\cdot\xi_{12}}{x^2}
+\Delta'(Ax^\rho x^\sigma+Bx^2\delta^{\rho\sigma})\partial_\rho\partial_\sigma\omega_0. \tag{4.27}
$$

这里 $\partial_\rho\partial_\sigma\omega_0$ 用 curvature 表示；第三项就是 subtraction／descendant mixing 的实际输出。代入

$$
x^\rho x^\sigma\partial_\rho\partial_\sigma\omega_0
=-\frac{\mathcal R_x}{2\Delta_0},\qquad
\Box\omega_0=-\frac R{2(d-1)},
$$

可以逐项得到

$$
\hat C_{\mathcal O\mathcal O}^{\mathcal O'}
=\frac{\lambda_{\mathcal O\mathcal O\mathcal O'}}{s^{2\Delta-\Delta'}}
\left[\mathcal D_{12}^{a/(2\Delta_0)}-\frac{b\,s^2R}{2(d-1)}\right], \tag{4.29}
$$

$$
a=\Delta+\frac{\Delta'(\Delta'-2)}{4(\Delta'+1)},\qquad
b=\frac a{12\Delta_0}
+\frac{(\Delta')^2}{16(\Delta'+1)(\Delta_0-\Delta')}.
$$

本次从(4.27)及上述 $A,B$ 独立重算 $a,b$。又走了附录 B 的另一条路线：$\mathcal O_g=e^{-\Delta\omega}\mathcal O_\delta$，而

$$
\partial_\mu\partial_\nu\mathcal O_\delta'(x_0)
=\partial_\mu\partial_\nu\mathcal O_g'(x_0)
+\Delta'\partial_\mu\partial_\nu\omega_0\,\mathcal O_g'(x_0).
$$

在 $\omega_0=\partial\omega_0=0$，以任意 Hessian $H_{\mu\nu}$、$R_{\mu\nu}=-(d-2)H_{\mu\nu}-\delta_{\mu\nu}\operatorname{tr}H$、$R=-2(d-1)\operatorname{tr}H$，并用 $s^2=x^2[1+xHx/12]$ 展开，所得与(4.29)残差为零。此检查包括 descendant term，而不只是 external Weyl factors。

**两处来源归一化需注意。** 附录(B.12)漏了正文(4.29)的 $1/[2(d-1)]$，按相同 $b$ 不能同时成立；上述独立 Weyl 展开支持正文。正文(4.30)后声称 WF 代入得 $a=1/2$，实际 $a=1$ 于 $\epsilon=0$，$1/2$ 是 exponent $a/(2\Delta_0)$。保留给出的 dimensions 至一阶，CAS 得

$$
a=1-\frac{11}{9}\epsilon+O(\epsilon^2),\quad
b=\frac\epsilon{36}+O(\epsilon^2),\quad
\frac a{2\Delta_0}=\frac12-\frac\epsilon9+O(\epsilon^2).
$$

所以“$b=0$”只能作 leading-zero-order／特定非解析阶数的检查，不能称为代入后精确消失。本文 scalar perturbative matching 并没有固定所有 higher-order analytic curvature terms。

## 6. 时间涂抹：可成立的有限性结论与原文过强的说法

沿一条光滑 timelike worldline，取 $f\in C_0^\infty$，研究 $\phi_f=\int dt\,f(t)\phi(t,x_0)$。原文用 $1/(t-t'+i0)^2$ 及 $\log(t-t'+i0)$ 的短距离结构论证 norm 有限。这里“积分收敛”是 **distributional boundary value** 的配对，不是 $|t-t'|^{-2}$ 的绝对可积性。

令 $z=t-t'+i0$，最简单的实际 identity 为

$$
z^{-2}=-\partial_t^2\log z
=-\frac1{(n-2)!}\partial_t^n[z^{n-2}\log z],\qquad n\ge2.
$$

把导数移到 compact smooth test functions 上，剩下 locally integrable 的对数。Mathematica 对 $n=2,\ldots,6$ 验证了这里的系数。曲率在当前阶只给 smooth coefficients 与有限阶幂／对数，不导致比这类 distributions 更坏的新奇异类型。

### 一般非整数 scaling power 需要修正(5.7)的 primitive

原文(5.7)只写 $z^{n-2b}\log^{k+1}z$ 的线性组合。这个 ansatz 对一般非整数 exponent 不够，例如 $a=0,2b=3/2,n=2$：

$$
\partial_z^2[\sqrt z\log z]=-\frac{\log z}{4z^{3/2}},
$$

无法乘一个常数变成 $z^{-3/2}$。本次直接检查确认失败。所需的 primitive 一般还包括 **零次 logarithm**。一个明确可用的表达式是，令 $a\in\mathbb N_0$、$\beta=2b\in\mathbb R\setminus\{1,\ldots,n\}$，取 $n>\beta-1$，

$$
z^{-\beta}\log^az
=\partial_z^n\left[(-\partial_\beta)^a
\frac{z^{n-\beta}}{\prod_{j=1}^n(j-\beta)}\right].
$$

$\beta$ 为整数的 resonant 情况用含额外 log 的 primitive／有限部分处理；$\beta=2$ 即上式的 $-\log z$ 例子。本次对 $n=3$、$a=0,1,2$ 在非共振域检验残差为零。因此原文的一般 primitive 公式需改，但“这些有限幂／log distributions 能与 smooth time test functions 配对”的局部结论仍有支持。

独立地，在四维 free scalar 真空，正确 norm 用 Wightman 而不是 Feynman function：

$$
W(t-t',0)=\int_0^\infty\frac{d\omega}{4\pi^2}\,\omega e^{-i\omega(t-t')},
\qquad
\|\phi_f|0\rangle\|^2=\frac1{4\pi^2}\int_0^\infty d\omega\,\omega|\hat f(\omega)|^2<\infty.
$$

$C_0^\infty$ 的 Fourier transform 快速衰减，明确控制 UV。Hadamard two-point 的 timelike pullback 还可由 wavefront 条件解释：timelike curve 的 conormal 是 spacelike，不能碰到 null wavefront covector。此处不能把 Euclidean OPE 不加时序选择就直接当作正 norm。

### Spatial smearing 的适用范围

来源称 spatial smearing 不足，这不能读成“每一个 elementary field 的 spatial smearing 都发散”。四维 free scalar 事实上有

$$
\left\|\int d^3x\,g(x)\phi(0,x)|0\rangle\right\|^2
=\int\frac{d^3k}{(2\pi)^3\,2|k|}\,|\hat g(k)|^2<\infty
$$

对 smooth compact $g$ 成立。问题会在 composite fields 等更一般算符上出现：$:\phi^2:$ 的等时 norm 含 $\int d^3k\,d^3p\,|\hat g(k+p)|^2/(|k||p|)$；固定小的 $k+p$ 时两条大而反向的动量没有被压低，径向积分 $\sim\int^\infty dk$ 发散。时间 smearing 控制总能量 $|k|+|p|$，才能处理这类情况。

最后，某个 $\phi_f|\Omega\rangle$ norm 有限，**不自动证明**任意乘积、共同稠密不变域、闭包、self-adjointness 或特定 von Neumann algebra 的 type。本文没有构造这些 operator-domain 数据，也没有计算 observer gravitational dressing 的约束／电荷。因此当前可复用的是局部分布与 OPE 检验，不是完整引力区域代数的存在定理。

## 与当前研究的接点

- 对 perturbative spectrum／矩阵元，$\delta C$ 可作为短距离 matching 数据；须保留 operator normalization、connected/free split 和 scheme-dependent analytic pieces，不能单凭 log coefficient 读出所有能量修正。
- 对区域 sewing，descendant basis 的改变会产生 curvature-dependent primary mixing。先给实际 normalization map，再比“同一个 operator”；这比只检查 scaling powers 更严格。
- 对 CPS／边界源工作，本文的 metric insertion 是外部 stress response，不是 bulk gravitational symplectic form；不能把它直接识别为 charge algebra 的中心项。

**核验范围。** 已独立重算 Fourier 核递推、两个变量变换、cubic 五项 derivative chain 至 curvature invariants、四维 logs、flat descendant 两个系数、一般 CFT 的 $a,b$、含 descendant mixing 的 conformally-flat comparison，以及时间 primitive 的有效域／反例。Weyl contraction 以 xAct 核验。未重跑全部原始 Feynman diagrams 或 generic non-conformally-flat CFT four-point integral，也未证明全量子算符 algebra／域定理；附录 normalization、WF 措辞和一般 smearing primitive 的问题按上述位置保留，不掩盖为“全部通过”。
