---
paper id: 2611.30759v1
title: 'On the Fourier Analysis of the Einstein-Klein-Gordon System: Limiting Behaviour of the Fourier Coefficients'
authors:
  - Athanasios Chatzikaleas
  - Jacques Smulevici
publication date: 2026-11-23T14:34
abstract: |-
  作者对四维球对称、无质量的 Einstein–Klein–Gordon 系统，将 AdS 本征模的 Fourier 耦合积分化为显式有限和，利用 Zeilberger 和 Gosper 算法降低求和复杂度，并得到若干高模极限。
comments: "50 pages"
url: https://arxiv.org/abs/2611.30759v1
summary: "球对称 AdS4 的模投影为约束回代提供独立检验；带导数耦合的增强来自中心高频区，不能当成已归约的共振 Hamiltonian。"
tags: []
---

# 从球对称 Einstein–scalar 方程到径向耦合矩阵

[Chatzikaleas–Smulevici v1](https://arxiv.org/pdf/2611.30759v1) 给的是**经典方程的模投影系数**，不是已求解引力约束后的 Fock 矩阵元。两两约束系数是三对角的；含一个导数的三个模的耦合则会对指标排列非常敏感。对 AdS 量子化最有用的是两组基准：可以逐项核对球对称的 constraint projection，也可以用同模高频先检验顶角是否错误抹掉了中心贡献。以下 PDF 与印刷页码一致。

## 径向线性问题与非线性投影（§§1, 4；pp. 4–7, 13–14）

$\Lambda=-3$、AdS 半径 1，$0\le x<\pi/2$，$r=\tan x$。areal gauge 为

$$
 ds^2=\sec^2 x[-A e^{-2\delta}dt^2+A^{-1}dx^2+\sin^2 x\,d\Omega_2^2].
$$

取 $\Phi=\partial_x\phi,\ \Pi=A^{-1}e^\delta\partial_t\phi$；(1.5)–(1.6) 采用已吸收球对称引力耦合的 scalar，见末节。正则中心的 $A(0)=1$ 和时间归一化（与固定边界时间比较时取 $\delta(\pi/2)=0$）解决约束的积分常数；模重叠本身不选时间。线性 $L=-\tan^{-2} x\,\partial_x(\tan^2x\,\partial_x)$；物理取中心正则、边界快落支。原文 §4 写的 form 含额外的 $L^2$ 项，是 $L+1$ 的 coercive form；裸算符与下述本征值应去掉那一项。$D(L)$ 的简写也不能当作允许中心 $1/x$ 支的边界条件。

对 $y=\cos2x,\ e=\cos^3x\,P(y)$，方程化成 $(1-y^2)P''+(1-4y)P'+(\omega^2-9)P/4=0$。以正相位 $e_n(0)>0$ 取

$$
 \omega_n=2n+3,\quad e_n=N_n\cos^3x\,P_n^{(1/2,3/2)}(\cos2x),\quad N_n=2\frac{\sqrt{\Gamma(n+1)\Gamma(n+3)}}{\Gamma(n+3/2)}.
$$

$(e_i|e_j)=\int_0^{\pi/2} e_i e_j\tan^2x\,dx=\delta_{ij}$。换到 $y=\cos2x$，含 $\cos^6x$ 的测度是 $(1-y)^{1/2}(1+y)^{3/2}dy/16$（反转积分限）；由 Jacobi 范数得 $N_n$。这里 n=0 的频率为 3，不是零频。用 endpoint 条件分部积分得到 $(e'_i|e'_j)=\omega_j^2\delta_{ij}$，没有角积分因子。

置 $\xi=e^{-\delta}(1-A)$、$\zeta=e^{-\delta}-1$。从 Einstein 径向约束消去 $A'-A\delta'$ 后，scalar 方程是 $\dot\Phi=[(1+\zeta-\xi)\Pi]'$、$\dot\Pi=-L\phi+(\zeta-\xi)\Phi'+4\zeta\Phi/\sin2x-2\xi\Phi/\tan2x$。写 $\phi=\sum_j\phi^{(j)}e_j$、$\Pi=\sum_j\sigma^{(j)}e_j$，对前式用 $e'_m$ 测试，后式用 $e_m$ 测试。定义

$$
 C_{ijm}=(e_i e_j|e_m),\quad D_{ijm}=(e_i e'_j|e_m/\sin2x),\quad E_{ijm}=(e_i e'_j|e_m/\tan2x).
$$

$((e_ie_j)'|e'_m)=\omega_m^2 C_{ijm}$，$(e_ie''_j|e_m)=-4D_{ijm}-\omega_j^2 C_{ijm}$，故

$$
 \begin{split}
 \dot\phi^{(m)}&=\sigma^{(m)}+\sum_{ij}C_{ijm}(\zeta^{(i)}-\xi^{(i)})\sigma^{(j)},\\
 \dot\sigma^{(m)}&=-\omega_m^2\phi^{(m)}+\sum_{ij}[(4D_{ijm}+\omega_j^2C_{ijm}-2E_{ijm})\xi^{(i)}-\omega_j^2C_{ijm}\zeta^{(i)}]\phi^{(j)}.
 \end{split}
$$

因此即便 $C$ 不增长，顶角仍含 $\omega_j^2 C$；反过来也不能只用 $D$ 的增长判断整个投影。$C$ 全对称，$D,E$ 只在两个无导数槽 $i,m$ 间对称。另两组系数 $A_{ij}=(e_i e_j|\cos2x)$、$B_{ij}=(e'_ie_j|\sin2x)$ 用于约束投影；记号 $A_{ij}$ 不是背景度规的 $A(t,x)$。

## 有限和如何缩短（§§2, 5、App. A；pp. 8–10, 14–32, 44–48）

换变量为 $y=\sin x$（不同于上一节），令 $F_n(y)=K_n C_{2n+1}^{(2)}(y)/y$，$K_n=(-1)^n2/[\sqrt\pi\sqrt{(n+1)(n+2)}]$。$F_n$ 是偶多项式，$e_n=(1-y^2)^{3/2}F_n$，$e'_n=(1-y^2)R_n$，$R_n=(1-y^2)F'_n-3yF_n$。$K_n$ 中的 $(-1)^n$ 来自反射 Jacobi 参数，不是可漏去的符号。测度是 $y^2(1-y^2)^{-3/2}dy$。因此 $A,B$ 在 $[0,1]$ 上分别是 $y^2(1-2y^2)F_iF_j$、$2y^3R_iF_j$ 乘 $(1-y^2)^{3/2}$ 的积分。用 Gegenbauer 邻接递推及正交性，Propositions 5.5–5.6 得到 $|i-j|>1$ 全零。例如 $A_{00}=1/4$、$B_{00}=-9/4$；更一般地分部积分直接给 $B_{ij}+B_{ji}=-2A_{ij}-4\delta_{ij}$（边界项 $[\tan^2x\sin2x\,e_i e_j]_0^{\pi/2}=0$）。三对角是每行三项，不是总共有限多行。

三模耦合的独立直接积分路线是

$$
 C_{ijk}=\int_0^1 y^2(1-y^2)^3F_iF_jF_k\,dy,\qquad
 D_{ijk}=\frac12\int_0^1 y(1-y^2)^2 F_iR_jF_k\,dy,
$$

$E$ 则为给 $D$ 的被积式多乘一个 $(1-2y^2)$。可逐项用 $\int_0^1 y^a(1-y^2)^bdy=\tfrac12 B((a+1)/2,b+1)$ 做低阶精确检查。大阶时这么展开会有大量消项，文章不是沿 monomial basis 硬算。以 $C$ 为例，展开 $G_i=(1-y^2)^{3/2}C_{2i+1}^{(2)}(y)/y=\sum_l\mathfrak L_i(l)C_{2l}^{(2)}(y)$。偶性延伸到整区间后，$C$ 等于 $K_iK_jK_k/2$ 乘

$$
 \sum_{l=|j-k|}^{j+k+1}\mathfrak L_i(l)\,\mathcal D(2l,2j+1,2k+1),\qquad
 \mathcal D(a,b,c)=\int_{-1}^1(1-y^2)^{3/2} C_a^{(2)}C_b^{(2)}C_c^{(2)}dy.
$$

Dougall 三积公式（A.16）在给定 parity/triangle 窗内是显式阶乘比；窗口限制的是展开中的 $l$，**不是**最终的 $i,j,k$ 支撑。$G_i$ 含非多项式权重，$\mathfrak L_i(l)$ 无有限带一般性。Lemmas 5.2–5.4 把这类带权投影写成超几何和（$D$ 还需对 $C_{2j+1}^{(2)}$ 的组合求导，$E-D-C$ 则改用 $C_{2j+2}^{(1)}$ 的连接系数）。令 $F(n,l)$ 是这类展开的 summand，Zeilberger 找 $P(n)F(n+1,l)-Q(n)F(n,l)=J(n,l+1)-J(n,l)$，使对 $l$ 求和后只剩端点与一阶递推；在可直接离散求原函数处，Gosper 找 $J$ 使 $F(l)=J(l+1)-J(l)$。这两个步骤分别减少展开代价与外层有限和，并非假定每个超几何和都有闭式。

Prop. 5.7 取 $i\le j\le k$，拆 $\mathfrak L_i(l)\mathcal D$ 成不带附加指标的一项与 $p=1,\dots,i$ 诸项，对 $l$ 作 telescoping 后只余 $i+1$ 项。特别 $i=j=0$ 只剩第一项：

$$
 C_{00\nu}=\frac{18432(-1)^\nu\sqrt{(\nu+1)(\nu+2)}}{\pi^{3/2}\prod_{a=-3,-1,1,3,5,7,9}(2\nu+a)}.
$$

Prop. 5.8 在 $i\le k$ 下把导数项变成常项加 $l=0,\ldots,2i$ 的有理和及额外 $p=1,\ldots,j$ 的双和；不要把 $j$ 移出导数槽来缩短和。Prop. 5.9 把 $E-C-D$ 化为长度 $2i+2$ 的有理和。精确 Beta 检查 $0\le i,j\le5$ 的正交与 $A,B$ 带外系数；对 $1\le\nu\le7$，$C_{00\nu},D_{00\nu},E_{00\nu}$ 与 §§6.1 的闭式全部相同；另有四组不对称或低模指标核对 Prop. 5.9。未逐项重建 Lemmas 5.2–5.4 的通用 certificates 和 Prop. 5.8 的整个双和。

## 高模增长来自哪里（§6；pp. 32–44）

令 $\omega=2\nu+3$。Theorem 3.2 只覆盖其表中的指标形状：固定的槽选 $n=0$，两个或三个大的指标**相同**；没有对不同比例或不同差值联合取极限的估计。

| 指标 | $C$ 的领先项 | $D$ 的领先项 | $E$ 的领先项 |
|---|---:|---:|---:|
| $00\nu$ | $9216(-1)^\nu/(\pi^{3/2}\omega^6)$ | $768(-1)^\nu/(\pi^{3/2}\omega^4)$ | $-768(-1)^\nu/(\pi^{3/2}\omega^4)$ |
| $0\nu0$ | 与上一行相同 | $-16/\sqrt\pi$ | $-16/\sqrt\pi$ |
| $0\nu\nu$ | $16\sqrt{2/\pi}/(3\pi)$ | $-2\sqrt{2/\pi}\,\omega$ | $-2\sqrt{2/\pi}\,\omega$ |
| $\nu0\nu$ | 与上一行相同 | $-12\sqrt{2/\pi}/\pi$ | $-4\sqrt{2/\pi}/\pi$ |
| $\nu\nu\nu$ | $2/\sqrt\pi$ | $-\omega^2/(2\sqrt\pi)$ | $-\omega^2/(2\sqrt\pi)$ |

§6.1 用固定外腿的有理函数与可消的交错尾部；§6.2–6.3 在多个腿同步升高时先按有限和中的奇偶和有理分母拆开，再求其极限。下面的独立路线解释为什么 $D,E$ 在相同大导数槽有一致领先项。置 $u=e_n\tan x$，则 $(-\partial_x^2+2\sec^2x)u=\omega^2u$；由 Darboux 变换作用在 $\cos(\omega x)$ 后取正确相位与范数，得

$$
 e_n(x)=\frac{2[\omega\sin(\omega x)\cot x-\cos(\omega x)]}{\sqrt\pi\sqrt{\omega^2-1}}.
$$

在中心 $x=s/\omega$，$e_n\sim a\omega\operatorname{sinc}s,\ e'_n\sim a\omega^2(\operatorname{sinc}s)'$，其中 $a=2/\sqrt\pi$。中心测度对 $C$ 是 $s^2ds/\omega^3$，对 $D$ 是 $s\,ds/(2\omega^2)$；对 $E$ 后者还乘 $\cos 2x\to1$。于是中心缩放给 $C$ 的领先候选 $a^3\int_0^\infty \sin^3 s\,ds/s=2/\sqrt\pi$，以及 $D/\omega^2$ 的候选 $(a^3/2)\int_0^\infty s\operatorname{sinc}^2s(\operatorname{sinc}s)'ds=-1/(2\sqrt\pi)$。后一个积分分部后是 $-\tfrac13\int\operatorname{sinc}^3s=-\pi/8$，绝不是三个 bulk 平均值的乘积。在 $0\nu\nu$ 用 $e_0(0)=4\sqrt{2/\pi}$ 替代一条中心大模，只余一个频率幂；$\int s\operatorname{sinc}s(\operatorname{sinc}s)'ds=-\pi/4$ 正好给表中系数。$C_{0\nu\nu}$ 则可用 bulk 弱平均 $e_\nu^2\tan^2x\rightharpoonup2/\pi$ 解释其常数：$(2/\pi)\int e_0dx=16\sqrt{2/\pi}/(3\pi)$。中心缩放给机制而非全文误差界；尤其 $C_{\nu\nu\nu}$ 的缩放积分仅条件收敛，不能直接用 dominated convergence 推余项。

Mathematica 核对 Darboux 与前五个 Jacobi 模完全相同；用精确三角式高精度积分至 $\nu=120$，$C_{\nu\nu\nu}=1.12845109$、$D/\omega^2=-0.28210935$、$E/\omega^2=-0.28207545$、$D_{0\nu\nu}/\omega=-1.59158844$，分别接近 $1.12837917,-0.28209479,-0.28209479,-1.59576912$。没有由这些检查推出所有未列的高频路径，也不使用 Remark 3.3 中只写 $L^2$ 系数范数的乘积估计作收敛依据；还需证明约束所给乘子的正则度或额外映射界。

## 对 CPS 与共振计算的转换

在 $S_{\rm sc}=-\tfrac12\int\sqrt{-g}(\nabla\varphi)^2$、$G$ 显式、中心正则、标量源为零时，(1.5)–(1.6) 的单位吸收为 $\phi=\sqrt{4\pi G}\,\varphi$，用真实相对边界时间的频率 $\omega_n$。自由 CPS/KG 内积积分权重正是 $\tan^2x\,dx\,d\Omega$；取 $Y_{00}=1/\sqrt{4\pi}$，归一化复模

$$
 u_n=\frac{Y_{00}}{\sqrt{2\omega_n}}e_n(x)e^{-i\omega_nt},\qquad (u_n,u_m)_{KG}=\delta_{nm}.
$$

固定这个约定后，$\phi=\sqrt{4\pi G}\sum_n(a_nu_n+\overline a_n\overline u_n)$，若只看球面对称的径向展开，单条 scalar 模的系数为 $\sqrt{G/(2\omega_n)}$，$\Pi$ 的线性时间导数另带 $\mp i\omega_n$。可用上面的 $C,D,E$ 投影回复方程，再与从 CPS Hamiltonian 得的方程比较；度规辅助腿 $\xi,\zeta$ **不除以** $\sqrt{2\omega_i}$。应先解约束及匹配边界 lapse、把解代回能量或辛形式，再做自由 mode 的外线转换和对易量子化。文章的 $C_{ijk}$ 并非 $\int_\Sigma N\sqrt h\,u_i u_j u_k$，也未包含引力角点或正常序。

无质量谱的 $2\leftrightarrow2$ 共振满足 $n_i+n_j=n_k+n_l$；若做 $1\leftrightarrow3$，频率等式给单侧 $n_i=n_j+n_k+n_l+3$，但系数是否因约束、边界项或选择定则消去须另算。合适的首个 cross-check 是固定同一个边界时钟，把最低模对产生的 $O(\phi^2)$ metric 回代并核对两个一阶模方程；再用同模大阶测是否重现中心项。不要把本文的 AdS$_4$ 球对称、fast-falloff 系数移作 vault 的 AdS$_3$ 谱公式，或把三模对角增长当作一般 UV 谱或湍流结论。
