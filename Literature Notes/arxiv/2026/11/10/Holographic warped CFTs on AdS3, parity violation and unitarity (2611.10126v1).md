---
paper id: 2611.10126v1
title: "Holographic warped CFTs on AdS3, parity violation and unitarity"
authors:
  - Kristiansen Lara
  - Ricardo Troncoso
publication date: 2026-11-06T19:00:09+00:00
abstract: |-
  在三维 AdS 引力的一组 warped conformal 边界条件下，加入不改变非退化真空方程的奇宇称 exotic 作用量，得到含非线性项的边界生成元及移动后的 Virasoro 中心荷、U(1) Kac–Moody level。要求整个容许 BTZ 扇区熵非负，与 level 非负共同选择零 level 的退化端点；加入无挠约束后连接到手征点 TMG，放宽边界条件容纳 logarithmic 模仍是后续方向。
comments: "14 pages"
url: https://arxiv.org/abs/2611.10126v1
summary: "同一 AdS3 解空间可以有不同辛结构；源依赖边界框架下的可积电荷、中心扩张与全黑洞扇区熵正性共同暴露手征端点的退化。"
tags: []
---

# 相同的 Einstein 解，不同的边界量子化

**最值得取走的是一个具体反例：真空场方程相同，不意味着相空间辛结构、电荷或量子代数相同。** 奇宇称耦合不只是加在边界上的全导数，它改变了体作用量的辛结构。在本文这组边界条件下，边界生成元出现 \(\mathcal P^2\) 项，中心荷与 level 为

\[
c=6(k-\gamma),\qquad K\equiv k_{\rm KM}=-(k+\gamma),\qquad k=\frac\ell{4G}>0.
\]

使 \(K\geq0\) 并不自动给出一个幺正的全息理论：还要处理完整表示、Euclidean 真空的解释与黑洞扇区。尤其是，若保留本文**所有**容许 BTZ 黑洞并要求其熵都非负，那么 \(-k\leq\gamma\leq k\)；与 \(K\geq0\) 交于 \(\gamma=-k\)。但恰在这里原先的无挠 Einstein 方程推导失效，必须重做约束与边界分析，不能把一般耦合公式的极限当成已经构造好的手征量子理论。

来源为 [arXiv v1](https://arxiv.org/abs/2611.10126v1)。PDF 共 14 页；PDF p.3–11 对应正文印刷 p.2–10，后面为参考文献，没有实质附录。以下按 §§1–5 重建论证。重要作用量、电荷与熵公式已对照 PDF p.3、6、8、9、10 的实际页面；TeX 用于辨认符号，不以提取文本代替公式证据。

# Einstein–exotic 作用量与退化端点

取三维 Lorentzian 理论，局域指标 \(a=0,1,2\)，\(\eta_{ab}=\mathrm{diag}(-,+,+)\)，形式乘积均指 wedge。场为 dreibein \(e^a\) 与独立的对偶自旋联络 \(\omega_a=\frac12\epsilon_{abc}\omega^{bc}\)，\(R_a=\frac12\epsilon_{abc}R^{bc}\)，\(T^a=De^a\)。\(\ell>0\) 是 AdS 半径，\(k,\gamma\) 无量纲。原文 (1.1)，PDF p.3／印刷 p.2：

\[
I=\frac{k}{2\pi\ell}\int e^a\left(R_a+\frac1{6\ell^2}\epsilon_{abc}e^be^c\right)
+\frac\gamma{4\pi}\int\left(\omega^ad\omega_a+\frac13\epsilon_{abc}\omega^a\omega^b\omega^c+\frac1{\ell^2}e^aT_a\right).
\]

记 \(F_a=R_a+\epsilon_{abc}e^be^c/(2\ell^2)\)。变分后，体方程是

\[
kF_a+\frac\gamma\ell T_a=0,\qquad
\gamma F_a+\frac k\ell T_a=0.\tag{1.2}
\]

把未知量排列为 \((F_a,T_a/\ell)\)，系数矩阵为
\[
\begin{pmatrix}k&\gamma\\\gamma&k\end{pmatrix},\qquad \det=k^2-\gamma^2.
\]
只有 \(\gamma\neq\pm k\) 时，才可推出 \(F_a=T_a=0\)。因此“一般耦合下等价于 GR”有一个不可省略的可逆性假设。

为对接 vault 的 CPS，本笔记另外重做了一次作用量变分。固定 orientation，\(\epsilon_{012}=+1\)，一份未加边界改善的体 presymplectic potential 为

\[
\Theta_{\rm bulk}=-\frac{k}{2\pi\ell}e^a\wedge\delta\omega_a
-\frac\gamma{4\pi}\left(\omega^a\wedge\delta\omega_a+\ell^{-2}e^a\wedge\delta e_a\right).
\]

例如 \(e^a\wedge D\delta\omega_a=T^a\wedge\delta\omega_a-d(e^a\wedge\delta\omega_a)\)，解释第一项的符号；\(\delta(\omega d\omega+\omega^3/3)=2\delta\omega R-d(\omega\delta\omega)\) 给第二项。xAct 用三个独立 Lorentz 分量和完全反对称体积张量计算了 \(\delta L-E\delta\Psi-d\Theta_{\rm bulk}\)，残差为 **0**，没有使用物理无挠约束。由此可见 \(\gamma\) 在 \(\delta\Theta_{\rm bulk}\) 中确实留下贡献；它不是改变作用量常数而保持辛形式不变的操作。

这还不是完整的边界／corner 改善势：本文并未给出适用于任意区域切割的 Harlow–Wu 边界泛函。下面的规范生成元变分 (3.1) 是原文 canonical 分析的输入；本笔记从这个输入复现其积分及代数，而不声称已经从上述体势独立构造全部 corner 项。

# 非局域边界框架：先定义逆算符的定义域

## 周期逆与固定的真正源

角坐标 \(\phi\sim\phi+2\pi\)，\(\mathcal L(t,\phi),\mathcal P(t,\phi)\) 为实的光滑周期函数。§2 定义

\[
(\partial_\phi-\mathcal P)\mathcal I_{\mathcal P,\mathcal K}=\frac12\mathcal K,
\qquad
\delta\mathcal I_{\mathcal P,\mathcal K}
=\mathcal I_{\mathcal P,\delta\mathcal K+2\mathcal I_{\mathcal P,\mathcal K}\delta\mathcal P}.
\tag{2.2–2.3}
\]

第二式不是普通函数的形式替换：对第一式变分，得到
\[
(\partial_\phi-\mathcal P)\delta\mathcal I
=\frac12\delta\mathcal K+\delta\mathcal P\,\mathcal I,
\]
再在同一个周期定义域上求逆。原文写出的积分因子表达式 (2.1) 需要把积分常数选为周期解。

其“generic \(\mathcal P\)”可以说得更明确。设 \(F'=\mathcal P\)，\(H=\int_0^{2\pi}\mathcal P\,d\phi\)，则唯一性要求 \(e^H\neq1\)。对实 \(\mathcal P\) 就是平均值非零。对 \(\mathcal K=1\)，有显式表达式

\[
\mathcal I_{\mathcal P,1}(\phi)
=\frac{\displaystyle\frac12\int_\phi^{\phi+2\pi}
 e^{F(\phi)-F(s)}ds}{e^{-H}-1}.
\]

分子严格为正，所以该解不为零，且符号与 \(H\) 相反。这也解释为什么 \(H=0\) 不能直接纳入同一个坐标图：若 \(\mathcal P=0\)，方程变成 \(\mathcal I'=1/2\)，根本没有周期解。对复的 Euclidean 延拓，相应条件应写成 \(e^H\neq1\)，不能沿用实函数的正性证明。

真正保持固定的化学势是常数 \(\mu_{\mathcal L},\mu_{\mathcal P}\)，而不是
\[
\mu=-\mu_{\mathcal L}-\mu_{\mathcal P}\mathcal I_{\mathcal P,1}.
\]
因此允许的变分满足 \(\delta\mu=-\mu_{\mathcal P}\delta\mathcal I_{\mathcal P,1}\)，一般不为零。把 \(\mu\) 误认成独立固定源，会换掉整个变分问题。

## 边界度规、手征传播与剩余变换

原文 (2.5–2.6) 给出径向展开，包含 \(g_{t\rho}=-\ell^2\mu'/(2\rho)\)、\(g_{\rho\rho}=\ell^2/\rho^2\)，以及
\[
g_{\phi\phi}=\rho^2\left[1+\frac{\ell^2}{4\rho^2}(\mathcal P^2+2\mathcal P')\right]
\left[1+\frac{\ell^2}{4\rho^2}(\mathcal L+\mathcal P^2)\right].
\]
其 \(g_{tt},g_{t\phi}\) 也含上述场依赖 \(\mu\)。关键的边界结果为
\[
(\partial_t+\mu_{\mathcal L}\partial_\phi)\mathcal L
=(\partial_t+\mu_{\mathcal L}\partial_\phi)\mathcal P=0,
\]
\[
d\widetilde s^2=(d\phi+\mu dt)(d\phi-\mu_{\mathcal L}dt),\qquad
\det\widetilde g=-\frac{(\mu+\mu_{\mathcal L})^2}{4}
=-\frac{\mu_{\mathcal P}^2\mathcal I_{\mathcal P,1}^2}{4}.
\]
需同时取 \(\mu_{\mathcal P}\neq0\) 和上述逆算符的非退化扇区，边界度规才是 timelike、非退化的。行列式已用 Mathematica 重算；局域平直性可令 \(y=\phi-\mu_{\mathcal L}t\)，利用 \(\mu=\mu(y)\) 把度规化为 \(dy^2+[\mu(y)+\mu_{\mathcal L}]dt\,dy\)，再作局域 null 坐标变换。

剩余微分同胚的向量依赖场。原文采用 \(\delta_\xi g=-\pounds_\xi g\)，用两个手征参数 \(\epsilon,\eta\) 描述 (2.10–2.12)。其中
\[
\zeta=\epsilon-\mathcal I_{\mathcal P,\eta+2\epsilon'},\qquad
(\partial_\phi-\mathcal P)\zeta=-\mathcal P\epsilon-\frac12\eta,
\]
\[
\delta\mathcal L=\epsilon\mathcal L'+2\epsilon'\mathcal L-2\epsilon'''-\eta'\mathcal P,
\qquad
\delta\mathcal P=\frac12\eta'+(\epsilon\mathcal P)'.\tag{2.11}
\]
完整向量的首项为 \(\xi^t=(\epsilon-\zeta)/(\mu+\mu_{\mathcal L})+O(\rho^{-2})\)、\(\xi^\phi=-(\mu\epsilon+\mu_{\mathcal L}\zeta)/(\mu+\mu_{\mathcal L})+O(\rho^{-2})\)。因此不能对它使用不含参数变分的朴素 Lie bracket。这些从完整径向度规得到的渐近对称向量在本笔记中保留为来源结果；未独立逐分量重算全部径向匹配。

# 场依赖参数怎样消掉不可积项

原文 (3.1)，PDF p.6／印刷 p.5：
\[
\delta Q=\frac1{8\pi}\int d\phi\left[
(k-\gamma)\epsilon(\delta\mathcal L+2\mathcal P\delta\mathcal P)
+2(k+\gamma)(\partial_\phi-\mathcal P)\zeta\,\delta\mathcal P\right].
\]

这里先使用 \(\zeta\) 的差分方程，再对固定的 \(\epsilon,\eta\) 积分：\(\delta\mathcal P\) 的系数变成
\[
2(k-\gamma)\epsilon\mathcal P
+2(k+\gamma)(-\epsilon\mathcal P-\eta/2)
=-4\gamma\epsilon\mathcal P-(k+\gamma)\eta.
\]
于是
\[
Q[\epsilon,\eta]=\frac1{8\pi}\int d\phi\,
\left\{\epsilon[(k-\gamma)\mathcal L-2\gamma\mathcal P^2]
-(k+\gamma)\eta\mathcal P\right\}.\tag{3.2}
\]
不是先“固定整个 Killing 向量”，再期待答案可积。场依赖关系本身正是抵消非线性项所需的数据。

定义 \(\mathcal T=(k-\gamma)\mathcal L-2\gamma\mathcal P^2\)、\(\mathcal J=(k+\gamma)\mathcal P\)。代入 (2.11)，逐项得到
\[
\delta\mathcal T=\epsilon\mathcal T'+2\epsilon'\mathcal T
-2(k-\gamma)\epsilon'''-\eta'\mathcal J,
\]
\[
\delta\mathcal J=\epsilon\mathcal J'+\epsilon'\mathcal J
+\frac{k+\gamma}{2}\eta'.
\]
这两式和可积系数的残差均经 Mathematica 检查为 0。它们足以通过周期分部积分恢复 Fourier 代数，无需假设一个独立的 \(\mathcal L,\mathcal P\) 量子括号。取
\[
L_m=\frac1{8\pi}\int e^{im\phi}\mathcal T\,d\phi,
\qquad P_m=\frac1{4\pi}\int e^{im\phi}\mathcal J\,d\phi
=Q[0,-2e^{im\phi}],
\]
得到原文 (3.4)：
\[
[L_m,L_n]=(m-n)L_{m+n}+\frac c{12}m^3\delta_{m+n,0},
\quad [L_m,P_n]=-nP_{m+n},
\quad [P_m,P_n]=\frac K2m\delta_{m+n,0}.
\]

注意是 cylinder 的 \(m^3\) 中心项，不能未经 \(L_0\) 平移改成 \(m(m^2-1)\)。\(P_m\) 与 \(Q\) 的 \(\eta\) 参数之间还有上述 \(-2\) 因子。

## 与本地 CPS 的符号映射

[formalism](</Users/koishi/Documents/Note/Articles/Quantization%20in%20AdS/perturbation/formalism.md>) 用 \(\omega=\delta\theta\) 及 \([A,B]=i\{A,B\}_{\rm local}\)。原文在 (3.4) 下写 \(\{,\}_{\rm src}\to i[,]\)，即同一组显示出来的量子模式需要
\[
\{A,B\}_{\rm local}=-\{A,B\}_{\rm src}.
\]
这与作用方向也相容：上述模式变分可写作 \(\delta_QF=\{Q,F\}_{\rm src}=\{F,Q\}_{\rm local}\)。不要把 source 的 bracket 规则和本地量子化规则同时原样照抄。另有独立的变换符号：source 定义 \(\delta_\xi g=-\pounds_\xi g\)，而本地若选 \(X_\xi g=+\pounds_\xi g\)，同一几何 \(\xi\) 的 Hamiltonian 要相应取负。应先指定生成的向量与参数映射，再比较模式，而不是从中心荷符号猜物理 ghost。

# 同一个熵的三种重建

## 正则化学势与第一定律

对常数 \(\mathcal L,\mathcal P\)，选择 \(\mathcal P\geq0\)，令
\[
x=\sqrt{\mathcal L+\mathcal P^2}\geq0,\qquad
r_+=\frac\ell2(\mathcal P+x),\quad
r_-=\frac\ell2|\mathcal P-x|.
\]
一般非退化 Euclidean 黑洞的正则性给 (4.5)
\[
\mu_{\mathcal L}=\frac{2\pi}{x},\qquad
\mu_{\mathcal P}=4\pi\left(1+\frac{\mathcal P}{x}\right).
\]
这是 \(x>0\) 的公式；极端端点需取极限，不能直接代入发散的化学势。原文第一定律为
\[
\delta S=\frac k4(\mu_{\mathcal L}\delta\mathcal L+\mu_{\mathcal P}\delta\mathcal P)
+\frac\gamma4[\mu_{\mathcal P}\delta\mathcal P-
\mu_{\mathcal L}\delta(\mathcal L+2\mathcal P^2)].
\]
展开 \(\delta(\mathcal L+2\mathcal P^2)=\delta\mathcal L+4\mathcal P\delta\mathcal P\)，再代入化学势：
\[
\delta S=\pi\left[\frac{k-\gamma}{2x}\delta\mathcal L+
\left(\frac{(k-\gamma)\mathcal P}{x}+k+\gamma\right)\delta\mathcal P\right].
\]
恰好是
\[
S=\pi[(k-\gamma)x+(k+\gamma)\mathcal P]
=\pi\left(\frac c6x-K\mathcal P\right).\tag{4.7}
\]
Mathematica 对这条第一定律一形式与 \(dS\) 的残差给出 0。加法常数由原文的热力学／真空约定固定；仅凭微分不能独立固定它。

## 内视界项必须保留旋转符号

以 \(A_\pm=2\pi r_\pm\) 记一维“面积”，原文 (4.8–4.9) 写
\[
S=\frac{A_+}{4G}-\frac\gamma\ell\operatorname{sgn}(\Omega_h)A_-,
\qquad \Omega_h=\frac{x-\mathcal P}{\ell(x+\mathcal P)}.
\]
关键是 \(r_-\) 本身取非负值，丢掉了旋转方向；\(\operatorname{sgn}\Omega_h\) 恰好补回这个方向。由于
\(\operatorname{sgn}(x-\mathcal P)|x-\mathcal P|=x-\mathcal P\)，上式立刻变成 (4.7)。在 \(x>\mathcal P\) 与 \(x<\mathcal P\) 两支、及连续的 \(x=\mathcal P\) 极限，Mathematica 都得到零残差。奇宇称部分是 pseudoscalar，不能机械写成总是减去一个正的内视界长度。

## Warped Cardy 的代数匹配不等于推导统计系综

原文以 \((\mathcal L_{\rm AdS},\mathcal P_{\rm AdS})=(0,i)\) 标记 Euclidean AdS。黑洞与真空零模为
\[
L_0=\frac c{24}x^2+\frac K4\mathcal P^2,
\quad P_0=-\frac K2\mathcal P,
\]
\[
L_0^{\rm AdS}=-\left(\frac c{24}+\frac K4\right),
\quad P_0^{\rm AdS}=-\frac{iK}{2}.
\]
在 \(K\neq0\) 时，先形成 spectral-flow 不变量：
\[
L_0-\frac{P_0^2}{K}=\frac c{24}x^2,
\qquad
L_0^{\rm AdS}-\frac{(P_0^{\rm AdS})^2}{K}=-\frac c{24}.
\]
因此 (4.10)
\[
S_{\rm WCFT}=\frac{4i\pi}{K}P_0P_0^{\rm AdS}
+4\pi\sqrt{-\left(L_0-\frac{P_0^2}{K}\right)
\left[L_0^{\rm AdS}-\frac{(P_0^{\rm AdS})^2}{K}\right]}
\]
在 \(c\geq0\)、\(x\geq0\) 的平方根分支上等于 \(-\pi K\mathcal P+\pi cx/6\)。若不假设 \(c\geq0\)，主平方根给 \(|c|\)，不能悄悄替成 \(c\)。该匹配已机算复现。

但 modular 变换律、选择 Euclidean AdS 为支配真空以及相应的高能态计数假设，是原文从 WCFT 文献引入的物理输入，本笔记没有独立证明。\(P_0^{\rm AdS}\) 在 \(K\neq0\) 时是纯虚值，也提醒我们：它不是直接展示了具有 Hermitian \(P_0\) 的普通正定 Hilbert 空间真空。更不能把含 \(1/K\) 的 Cardy 公式直接用于严格的 \(K=0\) 理论；可化简表达式的连续极限与该端点的统计推导是两件事。

# 全黑洞扇区的正熵条件为什么比单态界更强

原文 (5.1) 的模式界化成
\[
L_0-\frac{P_0^2}{K}+\frac c{24}
=\frac c{24}(x^2+1)\geq0,
\]
所以在 \(c\geq0\) 时黑洞确实满足它；这里对 \(K\) 的符号没有新限制。这个不等式本身不排除负范 descendant。

另一方面，\(S/\pi=(k-\gamma)x+(k+\gamma)\mathcal P\)，而本文容许扇区可独立取任意 \(x,\mathcal P\geq0\)。因此
\[
S\geq0\ \text{对全部容许黑洞成立}
\quad\Longleftrightarrow\quad
k-\gamma\geq0,\quad k+\gamma\geq0.
\]
必要性也可不依赖端点：若某个系数为负，取对应变量远大于另一变量即可得到严格负熵的非极端黑洞。Mathematica 的量词消去给出 \(k>0\) 且 \(-k\leq\gamma\leq k\)。

一个具体检查是 \(k=1,\gamma=-2,\mathcal P=4,x=1\)，即 \(\mathcal L=-15\)：
\[
c=18,\quad K=1,\quad r_+=5\ell/2,\quad r_-=3\ell/2,
\quad S=-\pi.
\]
几何完全在本文的非极端 BTZ 扇区中，level 也为正，仍有负熵。相反，同一耦合换成足够大的 \(x/\mathcal P\) 可以有正熵。因此准确结论是“**保留整个黑洞扇区并要求全扇区正熵**与正 level 冲突”，而不是“每一个正熵黑洞都必须有负 level”。

\(K\geq0\) 给 \(\gamma\leq-k\)，交集选出 \(\gamma=-k\)，此时 \(c=12k\)。原文把它称为允许幺正表示的必要方向；若要真的建立幺正理论，还要满足 Virasoro 表示条件、真空谱与内积条件，不能只看 level。特别在非半经典的小 \(c\) 区间，正 \(c\) 也不是任意最高权表示幺正的充分条件。

# 零 level 是约束问题，不是一个自动保留下来的自由流

当 \(\gamma=\pm k\) 时，(1.2) 只剩
\[
F_a\pm\ell^{-1}T_a=0.
\]
此时不能从该方程单独推出 \(T_a=0\)。原文 §5 的做法是在作用量中以额外约束实施无挠条件，得到手征点的 TMG；这会改变变分与约束系统，不等价于在一般耦合解上最后顺手设 \(\gamma=-k\)。该条件下原文报告 Virasoro 电荷保持 \(c=12k\)，而原来 \(U(1)\) 电荷恒为零。

放宽渐近展开加入 logarithmic 分支，或许可使零 level 的 commuting \(U(1)\) 流非平凡；这是 PDF p.11／印刷 p.10 结尾提出的**后续方向**，本文并未构造这些 log 解、给出其完整电荷或证明范数正性。不能把这个建议记成已经解决 entropy–unitarity 冲突的模型。

# 可复用的对象与验证边界

对当前工作，最实用的是四个对象：周期算符 \((\partial_\phi-\mathcal P)^{-1}\) 的定义域；固定 \(\mu_{\mathcal L},\mu_{\mathcal P}\) 而非固定场依赖 \(\mu\) 的变分问题；\(\mathcal T,\mathcal J\) 两个可积电荷密度；以及在退化耦合点先重做约束约化、再讨论量子模式的顺序。它们可以作为区域 CPS 计算的测试，而不是直接提供了一个区域 sewing map。

本笔记解析重建并机算复现了一阶作用量变分及体势、场方程矩阵退化、可积电荷系数、流变换、边界行列式、第一定律、带旋转符号的面积公式、Cardy 零模化简及全扇区正性条件。还以周期核对 \(\mathcal P=1/3+h\cos2\phi\)、\(\mathcal K=1\) 作非局域变分检验：线性响应
\[
\delta\mathcal I=\frac{\cos2\phi}{2(p^2+4)}-\frac{\sin2\phi}{p(p^2+4)},\qquad p=1/3,
\]
满足变分 ODE；\(h=10^{-6}\)、35 位工作精度的对称差分在三个抽样点的最大误差约 \(6.4\times10^{-14}\)。这是局部数值检验，不替代上面的定义域与唯一性证明。

未独立重算的是完整径向 Killing 匹配、canonical 表面电荷种子 (3.1) 的全部约束推导、一般域的边界／corner 改善、WCFT modular／真空假设及放宽后的 log 分支。所有这些都在使用它们的位置保留了来源或条件，而没有把代数一致性提升成完整的幺正性证明。
