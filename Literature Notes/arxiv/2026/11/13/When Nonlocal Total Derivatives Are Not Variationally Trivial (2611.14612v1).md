---
paper id: 2611.14612v1
title: When Nonlocal Total Derivatives Are Not Variationally Trivial
authors:
  - Carlos Heredia
publication date: 2026-11-10T19:00:01Z
abstract: |-
  The paper distinguishes formal infinite-order Lagrangians from nonlocal functionals on trajectory space. In the completed formal jet algebra, variational triviality is equivalent to being a constant plus a total derivative, with an explicit symbolic divisibility criterion. For nonlocal functionals, the existence of a primitive is insufficient: endpoint functional variations must cancel. A shifted Gaussian convolution gives an explicit nontrivial Euler-Lagrange expression, while a separate Schwartz-kernel example shows that the full moment expansion need not determine the convolution operator.
comments: "21 pages"
url: https://arxiv.org/abs/2611.14612v1
summary: "丢弃非局域边界项之前，要检验端点泛函对内部紧支变分的响应；形式导数展开不能替代这个检验。"
tags: []
---

# 全导数的原函数，究竟属于哪个空间？

**论文的核心结论成立，但必须区分两种不同的 exactness。** 在论文定义的形式 jet 代数中，$E(DW)=0$ 没有失效；在整条轨道的泛函空间中，$L=DW$ 本身几乎不提供动力学信息，因为原函数在端点仍可依赖轨道内部。真正的判据是端点的一阶泛函变分之差是否消失。

这对当前 CPS／边界项工作的直接用途，是明确“丢一个全导数”暗含的局域性和允许变分条件。它也提供一个很干净的反例：所有导数展开系数都为零的 Schwartz 核，仍能定义非零积分算符。这里不是一篇引力荷计算，也没有建立非局域引力的完整 CPS；可复用的是变分原则的输入检查。

阅读固定为 [arXiv v1](https://arxiv.org/abs/2611.14612v1) 及其 [PDF](https://arxiv.org/pdf/2611.14612v1)、[TeX](https://arxiv.org/src/2611.14612v1)。读完 §1–4 和附录 A–C。下面的页码均为 PDF 页码，也与正文印刷页码相同；第13、14、18页已渲染核对主要泛函公式、Gaussian 例子与零矩反例。PDF 提取有字体警告，公式依 TeX 与实际页面交叉确认，不靠提取文本补符号。

## 1. 形式无限阶理论：这里确实可以逐项分部积分

令 $q_k=D^kq$，$Dq_k=q_{k+1}$。$\mathcal A_{r,N}$ 是所有含 $r$ 个 jet 因子、总导数次数为 $N$ 的单项式所张成的有限维空间。论文不是先把级数求和成函数，而是定义完成代数

$$
\widehat{\mathcal A}=\prod_{r,N\geq0}\mathcal A_{r,N},\qquad
\widehat{\mathcal A}_r=\prod_{N\geq0}\mathcal A_{r,N}.
$$

例如 $\frac12\sum_{n\geq0}q_n^2$ 在此空间中有意义，但不要求它在某条真实轨道上收敛。两个关键映射是

$$
D:\mathcal A_{r,N}\longrightarrow\mathcal A_{r,N+1},\qquad
E=\sum_{k\geq0}(-D)^k\frac{\partial}{\partial q_k}:\mathcal A_{r,N}\longrightarrow\mathcal A_{r-1,N}.
$$

固定 $(r,N)$ 时只需 $k\leq N$，故每个输出分量都由有限次运算决定。这正是无限和在这里合法的原因，而不是对实际轨道做了某种收敛证明。

### 对称 symbol 把分部积分变成除法

对齐论文的 factorial 归一化，写

$$
L_r=\frac1{r!}\sum_{i_1,\ldots,i_r\geq0}
 C^{(r)}_{i_1\cdots i_r}q_{i_1}\cdots q_{i_r},\qquad
C_r(x_1,\ldots,x_r)=\sum C^{(r)}_{i_1\cdots i_r}x_1^{i_1}\cdots x_r^{i_r},
$$

其中系数完全对称。$D$ 对每个 jet 因子各作用一次，故在 symbol 空间中

$$D\ \leftrightarrow\ x_1+\cdots+x_r.$$

另一方面，先对 $q_k$ 求导，再对余下 $r-1$ 个因子作用 $(-D)^k$，得到

$$
\operatorname{symb}E(L_r)=C_r(-S,x_2,\ldots,x_r),\qquad
S=x_2+\cdots+x_r.
$$

左边使用次数 $r-1$ 的 $1/(r-1)!$ 归一化。于是 Theorem 2.3 给出四个等价条件：

$$
\boxed{
E(L_r)=0
\ \Longleftrightarrow\ C_r(-S,x_2,\ldots,x_r)=0
\ \Longleftrightarrow\ C_r\in(x_1+\cdots+x_r)
\ \Longleftrightarrow\ L_r=DW_r.}
$$

中间的代数步骤值得保留：令 $u=x_1+\cdots+x_r$，把 $C_r$ 写成 $\sum_{j\geq0}u^jA_j(x_2,\ldots,x_r)$。限制到 $u=0$ 为零，当且仅当 $A_0=0$，也就是可被 $u$ 整除。由于变量替换保总次数，这对形式幂级数仍是逐系数的有限操作。商仍对称，因此确实对应 $W_r$。

二次情形退化为 Theorem 2.1：

$$
C(x,-x)=0
\ \Longleftrightarrow\ C(x,y)=(x+y)B(x,y),\qquad
\sum_{m+n=N}(-1)^nC_{mn}=0\quad\forall N.
$$

例如 $q\dot q$ 的 symbol 为 $x+y$，原函数为 $q^2/2$；$\dot q^2/2$ 的 symbol 为 $xy$，在 $y=-x$ 上为 $-x^2$，不是全导数。

### 混合多项式次数与常数例外

不同 $r$ 的 Euler 像处于不同次数 $r-1$，不能互相抵消。Theorem 2.4 因而得到

$$E(L)=0\quad\Longleftrightarrow\quad L=c+DW,\qquad c\in\mathbb R.$$

这里的常数必须单列，因为代数是 **autonomous、无显式时间** 的；如果允许 $ct$，当然可以把 $c$ 写成 $D(ct)$，但那是换了代数。上述证明给出一般形式结论；本次 Mathematica 另外对含不同多项式次数和高阶 jet 的五组有限原函数验证了 $E(DW)=0$，结果均为零。有限检验只是检查归一化与实现，并不是一般定理的证明。

## 2. 真实轨道空间：端点并不等于只依赖端点的数据

§3 改变了问题的对象。取平移不变的允许轨道空间 $\mathcal K$，

$$T_tq(\tau)=q(t+\tau),\qquad S_R[q]=\int_{-R}^Rdt\,\mathcal L(T_tq,t).$$

允许变分是 $\delta q\in C_c^\infty(\mathbb R)$。动力学由

$$
\delta S[q;\delta q]=\lim_{R\to\infty}\delta S_R[q;\delta q]
 =\int d\sigma\,\Psi(q,\sigma)\delta q(\sigma),
\qquad
\Psi(q,\sigma)=\lim_{R\to\infty}\int_{-R}^Rdt\,
\frac{\delta\mathcal L(T_tq,t)}{\delta q(\sigma)}
$$

定义。这里要求的是 **截断作用量的一阶变分有极限**；不要求任意允许轨道上的未变分 $S_R$ 都收敛到有限总作用量。交换极限、变分和积分的条件是题设的一部分。

若沿平移流定义

$$DW(T_tq,t)=\frac d{dt}W(T_tq,t),$$

那么任意连续的 $\mathcal L(T_tq,t)$ 都有一个允许显式依赖 $t$ 的非局域原函数

$$W(T_tq,t)=\int_0^t ds\,\mathcal L(T_sq,s).$$

这是 Theorem 3.1。它没有说任意动力学都是平凡的；它说明“存在这种广义原函数”的判据太弱。用轨道 $Q=T_tq$ 表示时，积分里实际出现 $Q(s-t)$，所以 $W$ 保存了整段历史，不是有限 jet 的函数。

从有限 $R$ 的恒等式

$$S_R=W(T_Rq,R)-W(T_{-R}q,-R)$$

直接得到 Theorem 3.2 的真正判据：

$$
\boxed{
\Psi(q,\sigma)=\lim_{R\to\infty}
\left[\frac{\delta W(T_Rq,R)}{\delta q(\sigma)}
-\frac{\delta W(T_{-R}q,-R)}{\delta q(\sigma)}\right].}
$$

局域有限阶 $W$ 在 $\pm R$ 只读取端点 jet，紧支变分最终碰不到它；非局域 $W$ 即使在 $\pm R$，仍可读取有限的 $\sigma$。要使 Euler 表达式为零，必须证明上式的 **差** 消失；两个端点分别为零是更强的充分条件，不是必要条件。

## 3. 卷积模型：Euler 算符只看核的反对称部分

论文的可算模型为式(14)，PDF第12–13页：

$$
\mathcal L_G(T_tq)=\dot q(t)(G*q)(t),\qquad
(G*q)(t)=\int d\tau\,G(t-\tau)q(\tau).
$$

明确取实 Schwartz 核 $G\in\mathcal S(\mathbb R)$、轨道 $q\in C_b^1(\mathbb R)$，即 $q,\dot q$ 有界。因为

$$
|\delta S|\leq\|G\|_1
\left(\|q\|_\infty\|\delta\dot q\|_1+
\|\dot q\|_\infty\|\delta q\|_1\right),
$$

一阶变分绝对可积，所用 Fubini／极限操作在此模型里得到控制。

### 原函数存在，但不能就此删去

式(15)可更直观地写成

$$
W_G(t)=q(t)(G*q)(t)-\int_0^t d\rho\,q(\rho)(G'*q)(\rho).
$$

这里缩写 $W_G(t)=W_G(T_tq,t)$，$G'$ 是核变量的导数。导数为

$$
\frac d{dt}\big[q(G*q)\big]=\dot q(G*q)+q(G'*q),
$$

恰好被第二项抵消，故 $DW_G=\mathcal L_G$。原文 Heaviside 写法是把有向积分 $\int_0^t$ 写成整个实轴上的
$H_t(\rho)=\theta(\rho)-\theta(\rho-t)$；对负 $t$ 也保留正确符号。

直接变分则给出

$$
\begin{aligned}
\delta S&=\int dt\,[\delta\dot q(t)(G*q)(t)+\dot q(t)(G*\delta q)(t)]\\
&=\int d\sigma\,\delta q(\sigma)
\left[-(G'*q)(\sigma)+\int dt\,\dot q(t)G(t-\sigma)\right].
\end{aligned}
$$

用 $G$ 的衰减和 $q$ 的有界性把第一项分部积分，得到式(16)：

$$
\boxed{\Psi_G(q,\sigma)=\int dt\,\dot q(t)
\big[G(t-\sigma)-G(\sigma-t)\big].}
$$

因此 $G$ 偶是充分条件。必要性也很强：若 $H(t)=G(t)-G(-t)\ne0$，选择仍在允许空间内的 $q=H'$，便有

$$\Psi_G(H',0)=\int H''H=-\int|H'|^2<0.$$

故 Proposition 3.4 是整个允许轨道空间上的等价命题：

$$\Psi_G\equiv0\quad\Longleftrightarrow\quad G(t)=G(-t).$$

这不等于每条轨道在非偶核下都给非零值；例如常数轨道的 $\dot q$ 为零。也不是对任意核分布或任意增长轨道的结论。

### 附录 A：不是偷偷漏了另一个边界项

把上述 $W_G$ 泛函微分：

$$
\begin{aligned}
\frac{\delta W_G(t)}{\delta q(\sigma)}={}&
\delta(t-\sigma)(G*q)(t)+q(t)G(t-\sigma)\\
&-H_t(\sigma)(G'*q)(\sigma)
-\int d\rho\,H_t(\rho)G'(\rho-\sigma)q(\rho).
\end{aligned}
$$

在两个端点相减时，$H_R-H_{-R}=\mathbf1_{(-R,R)}\to1$。端点 delta 对紧支变分为零，$q(\pm R)G(\pm R-\sigma)$ 衰减；剩余恰为

$$-(G'*q)(\sigma)-\int d\rho\,G'(\rho-\sigma)q(\rho)=\Psi_G(q,\sigma).$$

所以这个反例的动力学全部来自“端点原函数仍依赖内部轨道”，而不是形式计算忘记了某个局域端点项。

## 4. Gaussian 反例与两个可复算的数值端点

式(17)–(22)，PDF第14–15页，取

$$G_{\mu,a}(s)=e^{-(s-\mu)^2/(2a^2)},\qquad a>0,\quad\mu\ne0,$$

以及光滑轨道

$$
q_\ell(t)=\frac{\operatorname{erf}(t/(2\ell))}{t},\quad
q_\ell(0)=\frac1{\sqrt\pi\ell},\qquad\ell>0.
$$

这里的 Gaussian **没有概率核归一化**，不能擅自除去 $\sqrt{2\pi}a$。$a,\mu,\ell$ 与 $t$ 同量纲，后面 symbol 的变量 $z$ 具有逆时间量纲。

由

$$
q_\ell(t)=\frac1{\sqrt\pi\ell}\int_0^1du\,e^{-u^2t^2/(4\ell^2)},\qquad
\dot q_\ell(t)=-\frac{t}{2\sqrt\pi\ell^3}
\int_0^1du\,u^2e^{-u^2t^2/(4\ell^2)},
$$

可见它在 $t=0$ 光滑、导数有界，且 $t>0$ 时 $\dot q_\ell<0$。另一方面

$$G_{\mu,a}(t)-G_{\mu,a}(-t)=2e^{-(t^2+\mu^2)/(2a^2)}\sinh(\mu t/a^2).$$

积分中两个因子均为奇函数，故乘积为偶；在正半轴其符号为 $-\operatorname{sgn}\mu$，从而严格得到

$$\operatorname{sgn}\Psi_{\mu,a}(q_\ell,0)=-\operatorname{sgn}\mu.$$

这是解析证明，不是依靠有限参数扫描。Mathematica 高精度积分在 $a=\ell=1$ 给出

$$
\Psi_{-1,1}=+0.2925436408557858221,\qquad
\Psi_{0,1}=0,\qquad
\Psi_{1,1}=-0.2925436408557858221.
$$

作为本次独立补算，换用更简单的允许轨道 $q(t)=e^{-t^2/(2b^2)}$，$b>0$，可以解析积分：

$$
\Psi_{\mu,a}(q,0)=
-\frac{2\sqrt{2\pi}\,ab\mu}{(a^2+b^2)^{3/2}}
 e^{-\mu^2/[2(a^2+b^2)]}.
$$

这也再次检验了符号和未归一化核的系数。在 $a=b=\mu=1$，由附录 A 的有限 $R$ 端点公式直接计算，$R=2,4,8$ 分别给出

$$-1.3282602133,\quad-1.3803863278,\quad-1.3803884470,$$

趋向上述闭式的 $-1.3803884470431429748$。这验证的是变分边界差的极限，不是另作一个与原理论不同的定态假设。

## 5. 附录 B、C：形式展开与积分算符，差别比“级数收敛慢”更大

形式 Taylor 展开给出

$$
(G*q)(t)\sim A(D)q(t),\quad
A(z)=\sum_{n\geq0}a_nz^n,\quad
a_n=\frac{(-1)^n}{n!}\int ds\,s^nG(s).
$$

于是 $L_G^{\rm form}=q_1A(D)q$ 的对称 symbol 为

$$C(x,y)=xA(y)+yA(x),\qquad C(x,-x)=x[A(-x)-A(x)].$$

直接应用 §2：

$$
L_G^{\rm form}=DW_{\rm form}\ \Longleftrightarrow\ A(-z)=A(z),\qquad
E(L_G^{\rm form})=D[A(-D)-A(D)]q.
$$

Gaussian 的 moment generating function 在本例确可积分，Mathematica 复现

$$
A_{\mu,a}(z)=\sqrt{2\pi}\,a\,e^{-\mu z+a^2z^2/2},\qquad
A(-z)-A(z)=2\sqrt{2\pi}\,a\,e^{a^2z^2/2}\sinh(\mu z).
$$

所以 **移位 Gaussian 并不是“一个形式平凡项求和后不平凡”的例子**：它在形式代数中本来就不 exact。其非局域 $W_G$ 不属于上述 autonomous formal primitive 的那种对象。

附录 C 则进一步证明，连全部 moments 都不足以确定实际算符。固定 Fourier 约定

$$\widehat G(\omega)=\int dt\,e^{-i\omega t}G(t),\qquad
G(t)=\frac1{2\pi}\int d\omega\,e^{i\omega t}\widehat G(\omega),$$

取非零实函数 $\chi\in C_c^\infty((1,2))$，令

$$\widehat G(\omega)=i[\chi(\omega)-\chi(-\omega)].$$

于是 $G\in\mathcal S$ 实、奇、非零，且

$$G(t)=-\frac1\pi\int_1^2d\omega\,\chi(\omega)\sin(\omega t).$$

由于 $\widehat G$ 在原点的整个邻域为零，所有导数 $\widehat G^{(n)}(0)$ 均为零，所以

$$\int ds\,s^nG(s)=i^n\widehat G^{(n)}(0)=0\quad\forall n.$$

形式上 $A(z)=0$、$L_G^{\rm form}=0$；真实积分算符却非零。选 $q=G'$，再次得到

$$\Psi_G(G',0)=-2\int|G'|^2<0.$$

由 Parseval，本次补算为

$$\Psi_G(G',0)=-\frac2\pi\int_1^2d\omega\,\omega^2\chi(\omega)^2.$$

例如区间内 $\chi(\omega)=\exp[4-1/((\omega-1)(2-\omega))]$、区间外为零，数值为 $-0.4162748046748475729$。严格非零性来自正的平方积分；数值只用于固定 Fourier 系数。这是 **moment 展开映射不单射**，不是对恒等式 $E(DW)=0$ 的反驳。也没有证明满足额外解析性和定义域条件的导数展开必然失效。

## 6. 放回当前 CPS 约定，应该改变哪一步？

当前 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L27>) 使用作用量变分读出 $\theta$，并取 $\omega=\delta\theta$。在局域、允许边界变分已固定的情形，加入局域端点函数 $F$ 只使 $\theta\mapsto\theta+\delta F$，因此 $\delta^2F=0$ 不改变辛形式。这条熟悉的推理没有被论文推翻。

但若 $F$ 读取整条历史，则所谓“端点项”在配置空间上未必是只支撑于端点的泛函；它可以对内部紧支变分产生非零响应。此时不能在读出 Euler 项之前，就把它当成局域 $\theta$ 的无害改进。应先固定真实轨道空间、截断和允许变分，再检查

$$\lim_{R\to\infty}\delta[W(T_Rq,R)-W(T_{-R}q,-R)]$$

对所有允许紧支变分是否为零。若目标是边界有效作用量或积分掉体场后的非局域核，kernel 的 adjoint／反对称部分是一个可立即计算的诊断；不能仅凭每阶导数展开都能分部积分，就宣布原泛函等价。

同样，附录 C 提醒 AdS 模式／有效算符工作：低频 symbol 的全部 Taylor 数据不自动确定完整频谱算符。把形式表达式用于 Green 函数或模式完备性之前，仍需独立指定算符定义域和边界条件。

**Verified:** 本文各一般判据的解析推导、卷积模型变分与边界极限、核偶性的必要充分性和零矩构造已在上述论证中重建；Mathematica 检验了有限 jet 样本、Gaussian 积分与 moment generating function、原文 erf 轨道的非零值、有限端点极限及 Fourier 归一化，未产生计算消息。

**Assumptions:** 一实变量 autonomous formal algebra；功能性部分采用作者的截断变分原则；卷积核实 Schwartz、轨道及一阶导数有界、允许变分光滑紧支。没有将反对称核的非零 Euler 表达式解释为一个已证明健康的量子模型。

**Not verified:** 非局域引力的协变／规范推广、该模型的完整辛约化与量子化，以及任意解析函数空间上的算符等价不在本文建立的结果内。本次按日读要求没有子代理；复现不包含独立模型审稿。
