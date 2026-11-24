---
paper id: 2611.15173v1
title: Canonical Commutation Relations and Poisson Brackets with Non-locality in Time
authors:
  - Yasu Gen
  - Hiroaki Matsunaga
  - Jojiro Totsuka
publication date: 2026-11-11T08:14:48Z
abstract: |-
  A quadratic finite-time-shift model admits a conserved symplectic form supported on a time interval. Its inverse on finite characteristic-mode subspaces defines a prescribed symmetric positive-time bracket. With explicit evolution, boundedness and continuity conditions on quantum correlators, the Schwinger-Dyson relation gives a commutator expectation value equal to i hbar times this bracket. The zero-coupling limit is singular on a fixed interval, whereas removing the delay recovers the local result at fixed positive separation, nonuniformly near equal time.
comments: "24 pages, 2 figures; PDF has 25 pages including an unnumbered title page"
url: https://arxiv.org/abs/2611.15173v1
summary: "先保留完整解空间再求逆：无限多延迟模在弱耦合极限仍可集体贡献一个有限的对易核。"
tags: []
---

# 弱耦合并不自动恢复自由正则结构

**在论文明确指定的求和及相关函数条件下，正时间差的经典—量子对应成立。** 最值得保留的不是一句泛泛的“非局域理论很特殊”，而是一个完全可算的机制：在 $0<s<\sigma$，主 Lambert 模趋向自由理论的对易子，但其余无限多模的总贡献趋向相反的有限值，使完整结果始终为零。先把耦合设为零，会在求逆辛形式之前删掉这些方向。

两个范围不能省略：这里 $a^\dagger$ 是独立复场的记号，不是预先规定的普通 Hermitian adjoint；量子结果首先是 **对易子的期望值**，且额外使用了反序相关函数的演化及连续性。论文没有构造一个具有正内积、通常弱连续时间演化的完整 Hilbert 空间理论。

读完 [v1](https://arxiv.org/abs/2611.15173v1) 的 §1–5、附录 A、B 及所用 [源文件](https://arxiv.org/src/2611.15173v1)。[PDF](https://arxiv.org/pdf/2611.15173v1) 共25页，含无页码题名页，故 **PDF页码 = 正文印刷页码 + 1**。PDF第7、9、12、22页（正文6、8、11、21页）已渲染核对式(2.12)、(2.21)–(2.23)、(3.13)–(3.19)及附录留数求和。文本提取有字体警告，精确公式以 TeX／页面为准。

## 1. 有限平移的作用量，以及不应误认的 dagger

取 $\sigma=2\ell>0$，固定背景 $b(t)$，$\delta b=0$，作用量为式(1.1)：

$$
S[a,a^\dagger]=\int_{\mathbb R}dt\,
\left[i a^\dagger(t-\ell)\dot a(t+\ell)
+\lambda b(t)a(t)a^\dagger(t)\right].
$$

$\lambda,\sigma,b$ 和截断端点也不参与场空间变分。$b$ 无量纲时 $\lambda$ 为逆时间量纲，$\lambda\sigma$ 无量纲。两场独立；不能在后面的求模过程中暗加 $a^\dagger(t)=a(t)^*$。

沿两个相反方向平移，

$$A(u)=a(u+\ell),\qquad\bar A(u)=a^\dagger(u-\ell),$$

则动能局域化为 $i\bar A\dot A$，相互作用成为
$\lambda b(u)A(u-\ell)\bar A(u+\ell)$。因此 $\lambda=0$ 时原理论可改写为局域自由一阶系统；$\sigma=0$ 时相互作用也局域。两种“局域化”取法不等于对解空间作同一个极限。

先对整条时间轴上的场求泛函导数，得到式(2.3)、(2.4)：

$$
E_{a^\dagger}(t)=i\dot a(t+\sigma)+\lambda b(t)a(t),\qquad
E_a(t)=-i\dot a^\dagger(t-\sigma)+\lambda b(t)a^\dagger(t).
$$

重新标记时间，

$$
\dot a(t)=i\lambda b(t-\sigma)a(t-\sigma),\qquad
\dot a^\dagger(t)=-i\lambda b(t+\sigma)a^\dagger(t+\sigma).
$$

前者是 delay，后者是 advance；即使 $b,\lambda$ 实，两式也不是普通复共轭关系。这是后面不能把所有 mode pairs 当作普通正范数振子的直接原因。

## 2. 辛势必须包含跨越截断面的两个小区间

§2.2 不是截断场的定义域，而是只把作用量积分截成 $[\tau_0,\tau]$，随后限制到满足全时间轴 EOM 的解及线性化解。

变分动能并分部积分后，对 $\delta a$ 与 $\delta a^\dagger$ 分别重命名积分变量，会出现区间
$[\tau_0+\ell,\tau+\ell]$、$[\tau_0-\ell,\tau-\ell]$；背景项仍积在 $[\tau_0,\tau]$。不能先用 EOM 把它们一并消掉。把三个区间统一后，

$$
\delta S_{[\tau_0,\tau]}=
\int_{\tau_0}^{\tau}du\,[E_a\delta a+E_{a^\dagger}\delta a^\dagger]
+\vartheta_\tau-\vartheta_{\tau_0},
$$

而式(2.10)为

$$
\begin{aligned}
\vartheta_\tau={}&i a^\dagger(\tau-\ell)\delta a(\tau+\ell)\\
&-i\int_\tau^{\tau+\ell}du\,\dot a^\dagger(u-\sigma)\delta a(u)
-i\int_{\tau-\ell}^{\tau}du\,\dot a(u+\sigma)\delta a^\dagger(u).
\end{aligned}
$$

这两个区间项并非任意添加的改进，而是有限积分域平移后留下的差。

再取场空间外微分，并用

$$\delta\dot a(u+\sigma)=i\lambda b(u)\delta a(u),\qquad
\delta\dot a^\dagger(u-\sigma)=-i\lambda b(u)\delta a^\dagger(u),$$

两个积分的系数和 wedge 次序共同给出负号：

$$
\boxed{\Omega_\tau=
 i\delta a^\dagger(\tau-\ell)\wedge\delta a(\tau+\ell)
-\lambda\int_{\tau-\ell}^{\tau+\ell}du\,b(u)\delta a^\dagger(u)\wedge\delta a(u).}
\tag{2.12}
$$

这已经是从作用量读出的、具有时间厚度 $\sigma$ 的辛形式，而非单时间 slice 的形式类比。

### 为什么守恒？

第一项对 $\tau$ 的导数为

$$
\lambda b(\tau+\ell)\delta a^\dagger(\tau+\ell)\wedge\delta a(\tau+\ell)
-\lambda b(\tau-\ell)\delta a^\dagger(\tau-\ell)\wedge\delta a(\tau-\ell).
$$

它恰被积分项的两个端点抵消。闭性则来自 $\Omega=\delta\vartheta$ 的 pullback。本次把二形式评价在两组独立切向量上，以 Mathematica 检验任意固定 $b$ 的端点代数，残差为零；没有以 $b=1$ 的特例代替这个守恒检查。

若只保留 $i\delta a^\dagger(\tau-\ell)\wedge\delta a(\tau+\ell)$，一般不守恒。$\sigma\to0$ 时对光滑有界变分确实恢复 $i\delta a^\dagger\wedge\delta a$，但这还不能推出逆形式的极限，因为允许的 mode 空间也在变化。

## 3. Lambert 根、模归一化，以及“先截断再求逆”的定义

此后固定 $b=1$、$\lambda>0$。对 $a\propto e^{ikt}$，

$$
D(k)=k-\lambda e^{-ik\sigma}=0,\qquad
k_n=\frac{W_n(i\lambda\sigma)}{i\sigma},\quad n\in\mathbb Z.
$$

取形式展开

$$a(t)=\sum_n\alpha_ne^{ik_nt},\qquad
a^\dagger(t)=\sum_n\beta_ne^{-ik_nt},$$

$\alpha_n,\beta_n$ 独立。代入 $\Omega$ 时，$m\ne n$ 项的系数含

$$1-\lambda\frac{e^{-ik_n\sigma}-e^{-ik_m\sigma}}{k_n-k_m}=0,$$

这是根方程直接给出的正交性。对角项是

$$
\Omega=\sum_n C_n\delta\beta_n\wedge\delta\alpha_n,\qquad
C_n=i e^{ik_n\sigma}-\lambda\sigma
=i e^{ik_n\sigma}(1+ik_n\sigma)
=i e^{ik_n\sigma}D'(k_n).
$$

其中 $-\lambda\sigma$ 正是区间贡献，不能只拿 endpoint 系数当作模范数。Mathematica 复现上述非对角抵消和对角恒等式。若 $C_n=0$，须有 $k_n=i/\sigma$、$\lambda=i/(e\sigma)$，不在正实参数域内。

严格说，论文先把 mode pairs 限制为 $-N\leq n\leq N$，在每个有限维子空间逆掉非退化的 $\Omega_N$：

$$\{\alpha_n,\beta_m\}_N=\frac{\delta_{nm}}{C_n}.$$

然后 **定义** 正时间差的场括号为这一串有限维逆形式的对称极限：

$$
P_{\sigma,\lambda}(s)=\lim_{N\to\infty}\sum_{n=-N}^N
\frac{e^{ik_n(s-\sigma)}}{i(1+ik_n\sigma)},\qquad s=t-t'>0.
\tag{2.21}
$$

这并未同时证明任意历史函数空间上的完备分解、所有观测泛函的连续性和全局弱辛逆的唯一性。论文对 mode expansions 使用 formal 一词，也把这个求和处方明确列为结果的输入。

## 4. 附录 A 是关键：无限模之和如何变成有限的逐区间多项式

不能对单个 Lambert 模先取 $\lambda\to0$ 后直接求和。论文给的是一个控制截断的 contour 推导。

令

$$F_s(k)=\frac{e^{ik(s-\sigma)}}{D(k)},\qquad
\lambda e^{-\sigma\gamma}<\gamma,\quad\gamma>0.$$

$\operatorname{Im}k\leq-\gamma$ 无根。利用 Lambert 分支渐近式，对正 $n\to\infty$，

$$
\begin{aligned}
k_n&=\frac{2\pi n}{\sigma}+\frac i\sigma\log\frac{2\pi n}{\lambda\sigma}
 +O(\log n/n),\\
k_{-n}&=\frac{-2\pi n+\pi}{\sigma}+\frac i\sigma\log\frac{2\pi n}{\lambda\sigma}
 +O(\log n/n).
\end{aligned}
$$

负分支实部的 $+\pi$ 对截断边界很重要。取矩形横边
$L_N=(2\pi N+\pi/2)/\sigma$、上边高度
$H_N=(M/\sigma)\log(2\pi N+\pi/2)$，其中 $M>\max(1,\sigma/s)$。充分大 $N$ 时正好包住 $k_{-N},\ldots,k_N$。

上边积分为 $O(N^{1-Ms/\sigma})$；侧边在 $0<s<\sigma$、$s=\sigma$、$s>\sigma$ 分别有界为
$O(N^{-s/\sigma})$、$O(N^{-1}\log N)$、$O(N^{-1})$。它们均趋零，所以

$$
P(s)=-\frac1{2\pi}\lim_{L\to\infty}
\int_{-L-i\gamma}^{L-i\gamma}dk\,
\frac{e^{ik(s-\sigma)}}{k-\lambda e^{-ik\sigma}}.
$$

在下方直线上几何展开分母，

$$\frac1{D(k)}=\frac1k+\sum_{m\geq1}\frac{\lambda^m e^{-im\sigma k}}{k^{m+1}}.$$

$m\geq1$ 的绝对值和可被常数乘 $|k|^{-2}$ 控制，故可交换求和与积分；$m=0$ 须单独取对称极限。所需留数为

$$
\frac1{2\pi i}\int_{\mathbb R-i\gamma}dk\,\frac{e^{ikx}}{k^{m+1}}
=\frac{(ix)^m}{m!}\Theta(x).
$$

$x>0$ 上闭合，$x<0$ 下闭合。$x=0$ 时，$m=0$ 的对称积分给 $1/2$，其余为零。由此得到式(2.22)：

$$
\boxed{P(s)=-iK(s),\qquad
K(s)=\sum_{m\geq0}\frac{(i\lambda)^m}{m!}
[s-(m+1)\sigma]^m\Theta(s-(m+1)\sigma),\quad s>0.}
$$

$\Theta(0)=1/2$，且必须把 $m=0$ 项直接理解为 $\Theta(s-\sigma)$，不在机器实现中依赖 $0^0$。固定 $s,\sigma>0$ 时这个和实际上只有有限项。

### 对慢收敛区间的数值检验

Mathematica 以40位精度计算 $\sigma=1,\lambda=0.4$ 的5001个根，并检查根方程；最大残差约在 $10^{-31}$ 以下。用完全相同的 $[-N,N]$ 处方，$s=1/2$ 时 $iP_N-K$ 为

| $N$ | 误差 |
|---:|---:|
|100|$0.0314047-0.0313253i$|
|500|$0.0140891-0.0140820i$|
|2500|$0.00630611-0.00630548i$|

所以这个最重要的“完整括号为零”区间恰恰不能用十几个模来判断。在 $s=3/2$，$N=2500$ 的误差约为 $-1.608\times10^{-7}(1+i)$；在跳点 $s=1$，相对 $K(1)=1/2$ 的误差约 $2.1434\times10^{-4}-3.1828\times10^{-5}i$。这些有限结果支持指定求和的收敛；无限极限依据上面的 contour 估计，而不是这张表。

本次还精确检查了 $m=0,\ldots,6$ 的留数系数、前九个区间的递推方程与匹配：只有首个端点有单位跳跃，其余端点连续。

## 5. SD／BV：不能把 EOM 插入与接触项拆开丢弃

§3.1 在无规范对称的这个模型中，引入度数 $-1$ 的奇 antifields，形式地写

$$Q_\hbar=Q_{\rm cl}-i\hbar\Delta.$$

对不含 antifields 的 $F$，

$$
Q_\hbar(\phi_I^*(u)F)=E_I(u)F-i\hbar\frac{\delta F}{\delta\phi^I(u)}.
$$

右侧整体 exact，因此对期望值提出 SD 条件

$$\langle E_I(u)F\rangle=i\hbar\left\langle\frac{\delta F}{\delta\phi^I(u)}\right\rangle.$$

其 nilpotency 在这里来自作用量 Hessian 的对称性：$E_I-i\hbar\delta_I$ 两两交换，而 antifield 导数反交换。这是形式泛函／BV 论证；不同时构成无限维测度存在或量子 Hilbert 空间正性的证明。

特别地，$E_I$ exact 不意味着任意乘积 $E_IF$ 都可以无条件置零，第二项正是被这样做丢掉的量子接触项。在局域系统，这会恢复普通 equal-time CCR；在延迟系统，两个项的时间排序不同，问题更明显。

### 接触源为什么落在 $s=\sigma$？

用 $\delta/\delta a^\dagger(t-\sigma)$ 变分插入 $a^\dagger(t')$，得到

$$
i\partial_tG(t,t')+\lambda G(t-\sigma,t')
=i\hbar\delta(t-t'-\sigma).
\tag{3.9}
$$

取 $t'=0$、$s=t$，要求用原时间标签的普通 $T$ 排序实现

$$G(s)=\Theta(s)\langle\hat a(s)\hat a^\dagger(0)\rangle
+\Theta(-s)\langle\hat a^\dagger(0)\hat a(s)\rangle.$$

导数项的排序由 $s$ 决定，delay 项由 $s-\sigma$ 决定。在 $0<s<\sigma$，它们恰好相反。这不是把一个普通局域传播子中的 $s$ 简单替换掉即可处理的事。

令 $W_-(s)=\langle\hat a^\dagger(0)\hat a(s)\rangle$、
$B(s)=\langle[\hat a(s),\hat a^\dagger(0)]\rangle$。作者额外要求：

1. $W_-$ 在正时间开区间满足齐次 delay EOM；
2. 两种排序在匹配点附近有界，使积分 delay 项在缩小区间时消失；
3. $W_-$ 在所有 $n\sigma$（包括原点）连续。

这些不是从 SD 单独推出的。相减后得到

$$B'(s)=0\ (0<s<\sigma),\qquad iB'(s)+\lambda B(s-\sigma)=0\ (s>\sigma)$$

（后一式暂不包括匹配点）。SD 在 $s=\sigma$ 强制 $G$ 跳跃 $\hbar$，其他点不跳跃；结合反序连续性，才得到 $B(\sigma^+)-B(\sigma^-)=\hbar$。

在首区间原本只有 $B=C$；原点反序连续性和无原点接触源进一步选定 $C=0$。若删掉这一条件，不能声称 SD 唯一决定了论文给出的零首区间结果。正文提到的真空处方使 $W_-=0$，因而逐阶实现这些条件；本次未另行重建那篇前作的量子表示。

## 6. 逐区间求解，以及对应成立的精确含义

先有 $B=0$，然后每经过一个宽度 $\sigma$ 的区间，递推多增加一个耦合次数：

$$
\frac{B(s)}\hbar=
\begin{cases}
0,&0<s<\sigma,\\
1,&\sigma<s<2\sigma,\\
1+i\lambda(s-2\sigma),&2\sigma<s<3\sigma,\\
1+i\lambda(s-2\sigma)-\frac{\lambda^2}{2}(s-3\sigma)^2,
&3\sigma<s<4\sigma.
\end{cases}
$$

这些多项式拼成 $B=\hbar K$，从而

$$\boxed{B(s)=i\hbar P(s),\qquad s>0.}$$

归一化在 $s=\sigma$ 的跳跃中出现；$A(u),\bar A(v)$ 的原分离为 $s=u-v+\sigma$，故这个跳点是局域动能变量的 $u=v$。SD 不固定单点上的取值，和 classical symmetric sum 比较时才选 $B(\sigma)=\hbar/2$。

但“发生在 shifted equal time”不自动补上正内积实现。相关矩阵元确实有跳跃，意味着不能同时假设 $\hat a(s)$ 在包含这些态的共同定义域上具有通常弱时间连续性。论文也明确把 adjoint／positive Hilbert-space realization 留为开放问题。

## 7. 零耦合和零延迟：必须说清是哪个极限

### 固定 $\sigma$，令 $\lambda\to0^+$

严格 $\lambda=0$ 的作用量只有一对常数解，

$$a=\alpha,\qquad a^\dagger=\beta,\qquad
\Omega=i\delta\beta\wedge\delta\alpha,\qquad
P_{\rm free}=-i,\quad B_{\rm free}=\hbar.$$

而正耦合理论的 $K(s)$ 在固定 $s,\sigma$ 只有有限项，极限为

$$\lim_{\lambda\to0^+}B(s)=\hbar\Theta(s-\sigma).$$

因此在一个宽度不缩小的区间 $0<s<\sigma$，仍与自由理论差 $\hbar$。

若把 principal branch 分出，

$$P^{(0)}(s)=\frac{e^{ik_0(s-\sigma)}}{i(1+ik_0\sigma)},\qquad R=P-P^{(0)},$$

则首区间内 $R=-P^{(0)}$。因为 $k_0\to0$，

$$i\hbar P^{(0)}\to\hbar,\qquad i\hbar R\to-\hbar.$$

其他根单独消失或飞向高频，并不意味着它们的和消失。本次数值在 $\sigma=1,s=1/2$，$\lambda=10^{-1},10^{-2},10^{-3}$ 时，principal $iP^{(0)}$ 分别约为
$0.97036-0.14325i$、$0.999688-0.014993i$、$0.9999969-0.0015000i$；完整 $iP$ 则严格为零。

### 固定 $s>0,\lambda$，令 $\sigma\to0^+$

每项绝对值有与 $\sigma$ 无关的上界 $(\lambda s)^m/m!$，故可用 dominated convergence：

$$\lim_{\sigma\to0^+}B(s)=\hbar e^{i\lambda s}.$$

在 $s=1,\lambda=0.7$，本次有限和与 $e^{0.7i}$ 的差从 $\sigma=0.05$ 的
$0.06130-0.04325i$ 减到 $\sigma=0.002$ 的 $0.002550-0.001519i$，符合解析极限。

但局部时间一致性没有恢复：任何 $\sigma>0$ 都有 $0<s<\sigma$ 的零区间，故

$$
\lim_{s\to0^+}\lim_{\sigma\to0^+}B(s)=\hbar,\qquad
\lim_{\sigma\to0^+}\lim_{s\to0^+}B(s)=0.
$$

这不是说任意两种参数极限都不交换：固定 $s>0$ 时，$\lambda\to0^+$ 与 $\sigma\to0^+$ 的两种次序最后都给 $\hbar$。

## 8. 附录 B：负时间延拓是另一个问题，不是把正时间公式照抄

若 **额外** 要求全实轴上的齐次分布方程

$$i\partial_sB_{\rm ext}(s)+\lambda B_{\rm ext}(s-\sigma)=0,$$

则可以向后递推 $B_{\rm ext}(s)=-(i/\lambda)\partial_sB_{\rm ext}(s+\sigma)$。正时间在 $s=\sigma$ 的跳跃会在 $s=0$ 强迫出 $-i\hbar\delta(s)/\lambda$，再向负方向生成更高导数：

$$
B_{\rm ext}(s)=B_R(s)+\hbar\sum_{n\geq0}
\left(-\frac i\lambda\right)^{n+1}\delta^{(n)}(s+n\sigma),
$$

其中 $B_R$ 是将正时间函数在非正时间置零的版本。各项支撑为 $0,-\sigma,-2\sigma,\ldots$；固定 $\sigma>0$ 时对任意紧区间只有有限项，故在 $\mathcal D'$ 中有意义，不需要宣称它是 tempered distribution。

把系数 $c_n=(-i/\lambda)^{n+1}$ 代入，可见 $ic_n+\lambda c_{n+1}=0$；首项的 delay 恰抵消 $B_R$ 在 $s=\sigma$ 的 delta 源。本次对前七组系数精确检验为零，局部有限性则给出整个构造的分布论理由。

这个延拓已经超出前面有界相关函数的假设；作者 **没有证明** 它等于 classical symmetric mode sum 在非正时间的某种分布极限。因此不能把正时间的对应自动升级成全时间 Peierls／commutator 定理。

## 9. 与当前 CPS 模式量子化的接口

当前 [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L83>) 的 $\omega=i\sum\delta a_I^\dagger\wedge\delta a_I$ 给
$\{a_I,a_J^\dagger\}=-i\delta_{IJ}$，与本文严格自由极限一致；取 $\hbar=1$ 就恢复常用对易归一化。这里不需要额外翻转 $\Omega$ 的整体符号。

真正可移用的三点是：

- **从有限域变分读辛势时，平移积分域产生的区间差也属于势。** 漏掉它不仅是记号问题，会破坏守恒并改变模归一化。
- **“把高频／非主分支模删掉”必须连同观测量与括号一起检验。** 本例 principal-mode reduction 的解可以有良好弱耦合极限，却不保留原观测 $a(t),a^\dagger(t')$ 的完整括号。
- **模式和、作用量极限、求逆和等时极限是四种操作。** 不能只检查作用量或 $\Omega$ 的形式极限，就宣布量子化连续；定义域、收敛处方及允许观测量也必须固定。

不能移用的是把复 Lambert 根直接解释为 AdS 中的正频 Fock 模。当前局域 AdS 工作的反射边界、自伴 Hamiltonian、实结构和正范数条件并未在这里满足。它是一个检验约化／极限是否保括号的模型，不是一个可直接替代现有 AdS Hilbert 空间的量子理论。

**Verified:** 有限域变分到区间辛形式的解析重建；任意固定背景的守恒端点代数；特征模非对角抵消及 $C_n$ 归一化；附录 A 的 contour／留数来源链；前九个区间递推及跳跃、5001根的方程残差与有限对称求和、两种局域极限、附录 B 相邻分布系数抵消。机器实现对 $m=0$ 明确单列并设置 $\Theta(0)=1/2$，避免把 $0^0$ 的实现问题误当成源式错误。

**Assumptions:** 独立复场、固定背景；求根和求和部分 $b=1,\lambda,\sigma>0$；classical bracket 采用对称有限模求逆极限；量子部分采用正文列出的 homogeneous reverse correlator、boundedness 和 continuity 条件。Mathematica 只验证有限代数和数值支持，一般收敛依据解析估计。

**Not verified:** 正内积及 adjoint 的量子实现、完整历史空间上辛逆的唯一性、非正时间 mode-sum 对应、非线性 SFT 推广，均未由本文或本次计算建立。按日读要求全程没有子代理复核。
