---
paper id: 2611.12698v1
title: On Thermodynamic Role of the Gauss-Bonnet Topological Term
authors:
  - Marek Liška
  - David Kubizňák
publication date: 2026-11-09T16:57:04+00:00
abstract: |-
  讨论四维常耦合 Gauss–Bonnet 拓扑项的边界完成，特别是视界作用量如何决定拓扑熵常数是否保留。作者比较 Lorentzian 协变相空间与 Euclidean 系综，主张适当视界边界项给出动力学 Jacobson–Myers 熵，光滑外边界不产生额外守恒量，并在 Schwarzschild–AdS 热力学中得到 Hawking–Page 温度移动及正耦合下的零阶转变。本文笔记复现后两类热力学计算，同时指出原文的曲率导数／熵积分归一化错误及其辛流消失论证遗漏的 corner 改善。
comments: "36 pages, 3 figures. Comments welcome"
url: https://arxiv.org/abs/2611.12698v1
summary: "可取走的是拓扑扇区的作用量权重与可计算的 Hawking–Page 移动；不能照搬其拓扑辛流逐点为零或光滑性自动消除 corner 数据的论证。"
tags: []
---

# 拓扑项的热力学权重，与局部辛结构是两个问题

**在明确选择边界完成及拓扑扇区后，四维 Gauss–Bonnet 项给出 \(S=A/4+2\pi\alpha\chi_B\) 和自由能偏移 \(-2\pi\alpha\chi_B T\) 的计算可以成立；原文将拓扑辛流直接判为零的 CPS 论证不成立。** 二者应分开使用。

这里 \(B\) 是闭合视界截面，\(\chi_B\) 是其 Euler characteristic，不是任意 Lorentzian 四维区域的 Euler characteristic。对标准 Euclidean 黑洞，填入 bolt 后的拓扑为 \(D^2\times B\)，才有 \(\chi_M=\chi_B\)。与热 AdS 的比较由整个完成后的作用量权重决定，而不是由局域场方程决定。

[原文 v1](https://arxiv.org/abs/2611.12698v1) 共 36 页。PDF p.2–33 对应印刷 p.1–32；§§2–5 是主要技术内容，后面没有技术附录。作用量变分、视界选择、CPS 势、熵积分、Euclidean 势与相变公式分别对照了 PDF p.6、11、16、19、23、26、29、31 的实际页面。以下既重建原文的研究问题，也给出在当前 CPS／区域拼接工作中安全使用它的条件；并不把有问题的中间公式当作已验证的定理。

# 四维作用量与必须先修正的归一化

原文取 \(G_N=c=\hbar=k_B=1\)，Lorentzian signature \((-+++)\)，\([\alpha]=L^2\)，常数耦合：
\[
I_{\rm bulk}=\frac1{16\pi}\int_M
\left(R-2\Lambda+\alpha\mathcal G-F_{ab}F^{ab}\right)\varepsilon,
\qquad
\mathcal G=R^2-4R_{ab}R^{ab}+R_{abcd}R^{abcd}.
\]
非最小耦合 \(\alpha(\varphi)\mathcal G\) 不在本文讨论范围，不能用“拓扑项”消掉其体方程。

为避免原文 (2.5) 的二倍因子混淆，本笔记将其显示出来的曲率组合记为 \(\mathsf P\)：
\[
\mathsf P^{abcd}=R^{abcd}-2R^{a[c}g^{d]b}
-2R^{b[d}g^{c]a}+R g^{a[c}g^{d]b}.
\]
反对称括号带 \(1/2\)。正确关系为
\[
\frac{\partial\mathcal G}{\partial R_{abcd}}=2\mathsf P^{abcd},
\qquad
\mathsf P^{abcd}R_{abcd}=\mathcal G,
\]
\[
E^{\rm GB}_{ab}=2\mathsf P_{(a}{}^{cde}R_{b)cde}
-\frac12\mathcal G g_{ab}=0\qquad(D=4).
\]
最后一个恒等式可由含五个反对称指标的 Lovelock 广义 delta 在四维恒为零推出。**原文 (2.5–2.6) 漏掉了这个因子 2**：按其字面表达式，在 \(R_{abcd}=q(g_{ac}g_{bd}-g_{ad}g_{bc})\) 上得到 \(E^{\rm src}_{ab}=-6q^2g_{ab}\)，不为零。xAct 重算得到这一结果，同时给出 \(\mathcal G=24q^2\)，补回系数后的 \(E^{\rm GB}_{ab}\) 为 0。因此后续不能把原文的 \(P\)、体势与电荷系数原样一起移植。

相应地，对协变度规变分 \(h_{ab}=\delta g_{ab}\)，采用标准曲率约定的一份协变体势为
\[
\Theta^{a}_{\rm GB}[h]=\frac{\alpha}{4\pi}\mathsf P^{abcd}\nabla_d h_{bc},
\qquad \boldsymbol\Theta_{\rm GB}=\Theta^a_{\rm GB}\varepsilon_a.
\]
这份势允许 \(dY\) 改善，后文将说明为什么这个自由度在区域边界上不能省略。

# 非零变分完全落在边界，不意味着可以不指定边界理论

## 光滑非零范数外边界

§2.2 的可靠结构是：四维 Gauss–Bonnet 的标准边界完成是 Euler transgression／Myers 项。采用 \(n^2=\epsilon=\pm1\) 时，本笔记用
\[
h_{ab}=g_{ab}-\epsilon n_an_b,
\qquad K_{ab}=h_a{}^ch_b{}^d\nabla_c n_d.
\]
这是一个投影；原文 (2.10) 的加号与随后给出的 \(\epsilon\) 取值不能同时照用。对 timelike 外边界 \(\epsilon=+1\)，原文 (2.8)、(2.14) 的边界项可写成
\[
I_{\rm bd,GB}=-\frac\alpha{12\pi}\int_{\partial M}
\left[K^3-3K\operatorname{tr}K^2+2\operatorname{tr}K^3
+6\widehat G_{ij}K^{ij}\right]\sqrt{|h|}\,d^3x.
\]
这里的符号跟随所选外法向；换内边界 orientation 必须连同法向一起处理。

补上这个项后，剩余的 Gauss–Bonnet 边界动量在三维边界上含四个切向完全反对称指标，因而恒为零。因此，在同一个光滑边界完成中，Dirichlet 改成 Neumann 或 conformal 数据所需的额外 Legendre 项 \(\int\pi^{ij}_{\rm GB}h_{ij}\) 都是零。这解释了**不增加新的局域 Brown–York 应力响应**这一结论；并不推出所有绝对作用量常数都为零。

完整 Gauss–Bonnet–Chern 定理反而说明：Euclidean 情况下，bulk 加上正确的外边界与必要 joint 项可以等于 \(32\pi^2\chi_M\)，其变分为零但值未必为零。把黑洞视界挖掉得到 annulus，与把 bolt 填回的 \(D^2\) 是不同区域，不能用同一个“边界抵消”结论替代拓扑权重。

## Null 边界为什么多出 cut 数据

§2.3 取 null 生成元 \(l^a\)、rigging \(k^a\)，满足 \(l\cdot k=-1\)，截面度规
\(\gamma_{ab}=g_{ab}+l_ak_b+k_al_b\)。定义
\[
\Theta_{ij}=\gamma_i{}^a\gamma_j{}^b\nabla_a l_b,
\quad \Psi_{ij}=\gamma_i{}^a\gamma_j{}^b\nabla_a k_b,
\quad w_i=\gamma_i{}^a k^b\nabla_a l_b,
\quad \nabla_l l=\kappa l.
\]
原文推导还采用 \(k_a=\nabla_a f\)；其他 rigging 需要重新调整分解，不能在未知条件下照抄。

为看清两种视界作用量的差异，把 (2.23)、(2.33) 压缩成
\[
I_{\rm null,GB}=-\frac\alpha{4\pi}\int_N
\left(\kappa\,{}^{(2)}R+\mathcal B\right)\varepsilon_N,
\qquad
I_{H,\rm GB}=-\frac\alpha{4\pi}\int_H\mathcal B\,\varepsilon_H,
\]
其中设 \(\Theta=\operatorname{tr}\Theta_{ij}\)、\(\Psi=\operatorname{tr}\Psi_{ij}\)，
\[
\begin{aligned}
\mathcal B={}&-2\kappa\operatorname{tr}(\Theta\Psi)
+2\operatorname{tr}(\Psi\pounds_l\Theta)-2\Psi\pounds_l\Theta
+2\Psi\operatorname{tr}\Theta^2+2\operatorname{tr}(\Psi\Theta^2)\\
&-4w^i(D_i\Theta-D_j\Theta_i{}^j)
+2w_iw_j(\Theta^{ij}-\Theta\gamma^{ij}).
\end{aligned}
\]
这里矩阵 Lie 导数和标量展开的导数要按原文的投影理解，不能把它们混为一项。被删去的只有 \(\kappa\,{}^{(2)}R\)。其余项组织动态边界变分。

将局域 transgression 向量 \(\mathcal G^a[V]\) 用 \(V=(l+k)/\sqrt2\) 表示后，原文 (2.27–2.29) 的差项包含 null 方向全导数，留下初末 cut 上的
\[
I_{\rm corner,GB}=\frac\alpha{8\pi}\int_{\partial N}
\left[\Theta^2-\operatorname{tr}\Theta^2-2\Theta\Psi
+2\operatorname{tr}(\Theta\Psi)-\Psi^2+\operatorname{tr}\Psi^2\right]dA,
\]
积分带初末面相反 orientation。原文随后假定已包含这项，才不再讨论 corner。对区域 sewing，这个假定不能默默继承成“无边缘数据”：要说明它在两侧怎样匹配，以及允许怎样改变 \(Y\) 代表元。本笔记没有独立复现 (2.24–2.29) 的全部一般 null 投影展开，因此保留为来源构造，不将这个具体 corner 泛函的全一般性标为已核验。

# 保留还是删去 Euler 熵：视界作用量的一个有限选择

对 stationary 非膨胀视界，\(\Theta_{ij}=0\)、\(\pounds_l\Theta_{ij}=0\)，便足以使 \(\mathcal B=0\)，留下 \(l_a\mathcal G^a[V]=-4\kappa\,{}^{(2)}R\)。无需假设 \(\Psi_{ij}=w_i=0\)。原文在 (2.30)、(3.41) 附近作了后一个过强陈述；例如 Schwarzschild 的 regular ingoing 坐标中，取 \(l=\partial_v\)、\(k=-\partial_r\)，就有 \(\Psi_{AB}=-r\,s_{AB}\neq0\)。旋转视界的 normal-bundle connection 也一般不为零。

若加入全部 \(I_{\rm null,GB}\)，视界 Euler 贡献被抵消；若采用删去 \(\kappa R^{(2)}\) 的 \(I_{H,\rm GB}\)，它保留。原文用 \(\delta\chi_B=0\)、\(\delta\kappa=0\) 论证后一选择不破坏一阶变分。更精确地说：这是**在固定拓扑和指定 null 归一化数据后允许的有限作用量选择**。归一化在外边界已固定的 Killing 时间，其物理表面引力不能一概称为纯 gauge；若改用场依赖的 \(l\) 来固定 \(\kappa_l\)，还需跟踪 \(l\) 与物理生成元 \(\zeta\) 的映射与参数变分。

采用保留 Euler 熵的选择，正确的 Jacobson–Myers 公式是
\[
S_{\rm JM}=\frac14\int_B(1+2\alpha\,{}^{(2)}R)dA
=\frac A4+2\pi\alpha\chi_B,
\quad \int_B{}^{(2)}R\,dA=4\pi\chi_B.
\]
**原文 (3.41)、(3.43) 的 \(\alpha/4\int R^{(2)}dA\) 少了一倍**；其 (3.42) 与 (3.44) 则分别采用标准 Euler 定义及正确的最终熵。对球面，\(\int R^{(2)}dA=8\pi\)，左边错误系数给 \(2\pi\alpha\)，而其声称的 \(2\pi\alpha\chi_B\) 为 \(4\pi\alpha\)。本笔记明确使用 \(\alpha/2\) 的曲率积分系数，不把相互抵消的归一化错误当作一条有效推导。

“动态 Wald 熵等于 JM 熵”因而仍需要重新核对原文的完整改善与参数选择；标准 JM 泛函及其静态值本身是可复用对象。它不是由本文有误的 (2.5) 与 (3.41) 原样计算出来的。

# CPS 的关键缺口：exact current 不是 zero current

## 与本地 formalism 的对应

原文的场空间二形式结构 (3.4) 与 [formalism](</Users/koishi/Documents/Note/Articles/Quantization%20in%20AdS/perturbation/formalism.md>) 相容：
\[
\theta=\int_\Sigma\Theta_{\rm bulk}-\int_{\partial\Sigma}\Theta_{\rm bd},
\qquad \omega=\delta\theta,
\qquad \delta H_\xi=\omega(\delta,\pounds_\xi).
\]
在指定边界变分问题后，\(\delta L_{\rm bd}+\Theta_{\rm bulk}|_{\rm bd}=B+d\Theta_{\rm bd}\)，允许的变分使 \(B=0\)。若 \(\Theta_{\rm bulk}\to\Theta_{\rm bulk}+dY\)，就必须同时 \(\Theta_{\rm bd}\to\Theta_{\rm bd}+Y\)；只有完成这个配对，积分辛形式才不变。

原文 (3.21–3.22)，PDF p.16／印刷 p.15，从局域 \(L_{\rm GB}=dC[V]\) 直接写出其协变体势等于 \(\delta C[V]\)，进而称体辛流为零。这一步缺少一项：由
\[
d\Theta_{\rm GB}=\delta L_{\rm GB}=d\delta C[V]
\]
只能局域推出
\[
\Theta_{\rm GB}=\delta C[V]+dY[V;\delta g],
\qquad
\omega_{\rm GB}=d\left(\delta_1Y[\delta_2g]-\delta_2Y[\delta_1g]\right).
\]
选 \(\Theta'=\Theta-dY\) 可以让局域体流消失，但会把信息转移到边界势。这是**代表元改善**，不是仅靠微分同胚 gauge 就令原协变辛流消失。全局上不同 transgression 的差首先是 closed，并不自动是 globally exact；光滑截面也不足以解决其上同调和 patch matching。

## 一个满足线性真空方程的局部反例

在 Minkowski 坐标 \((t,x,y,z)\) 上取两条可交换的度规变分
\[
h^{(1)}_{ab}=(x^2-z^2)\,\mathrm{diag}(1,1,1,1),
\qquad h^{(2)}_{ab}=\mathrm{diag}(0,0,0,t).
\]
直接用线性 Riemann 公式计算，二者都满足 \(\delta R_{ab}=0\)；第二条更是局部 pure diffeomorphism，例如 covector \(\xi_t=-z^2/4,\ \xi_z=tz/2\)。在本文上面明确的势与 \(\omega(1,2)=\delta_1\Theta[h^{(2)}]-\delta_2\Theta[h^{(1)}]\) 约定下，Mathematica 分量计算得到
\[
\omega^a_{\rm GB}=\frac\alpha{16\pi}(-4,0,0,0).
\]
因此协变体辛流**不逐点为零**，即使两个扰动都满足线性真空方程。有限区域上的积分也不能在不处理边界的情况下称为零。这里的 pure diffeomorphism 在区域边界不消失，正好展示为什么它不自动是区域辛形式的退化方向。

这并不反驳采用特定边界完成后某些总电荷的 GB 修正抵消；它反驳的是原文从“局域全导数”直接得到“原势的辛流与任意光滑区域的辛贡献均为 gauge artifact”的论证。**当前 sewing 计算不能用 (3.22) 删除 Euler corner 数据。**

## 电荷和第一定律可以保留到哪一步

原文 §3 报告：选定外边界 transgression 与 horizon completion 后，外边界 \(M,J,Q\) 不变，熵有拓扑常数。安全的表述是在固定拓扑分支、匹配的外边界完成下，局域电荷的**变化量**可与 GR 一致；绝对零点和不同拓扑分支的相对作用量还需指定。本笔记没有给出任意全局背景的 transgression patching，因此不把原文 (3.31) 的全部全局普遍性视为已证明。

固定 \(\alpha,\chi_B\) 时，\(\delta S=\delta A/4\)，故标准第一定律不看见 Euler 熵常数。若扩展到变化的 \(\alpha\)，定义
\[
\Psi_\alpha=-\kappa\chi_B=-2\pi T\chi_B,
\quad dM=T\,dS+\Omega\,dJ+\Phi\,dQ+V\,dP+\Psi_\alpha d\alpha.
\]
\(T\,dS\) 的拓扑项与 \(\Psi_\alpha d\alpha\) 抵消；Smarr 关系中也有同样抵消。这一检查独立于原文有问题的局域辛流推论。

还有一个不应混入本地记号的符号：原文 (3.8) 写 \(\mathbb L_\xi A=\iota_\xi F+dP_\xi\)，则要使 Killing 情况 \(\mathbb L_\zeta A=0\)，应取 \(dP_\zeta=-\iota_\zeta F\)，不是其 (3.9) 的正号。下文使用熟悉的 \(\Phi=e/r_+\) 来重建静态热力学，不依赖这一电荷公式的字面符号。

# Euclidean 重建：绝对拓扑权重是怎样留下来的

## RN–AdS grand potential

§4.1 取
\[
ds_E^2=f(r)d\tau^2+\frac{dr^2}{f(r)}+r^2d\Omega_2^2,
\quad f=1-\frac{2M}{r}+\frac{e^2}{r^2}+\frac{r^2}{\ell^2},
\quad A_\tau=i\left(\frac er-\frac e{r_+}\right).
\]
采用实的 Lorentzian 电荷 \(e\)，因而 Euclidean 电势是虚的；\(A_\tau(r_+)=0\) 避免 bolt 上的规范奇点。光滑性确定 \(\beta=4\pi/f'(r_+)\)。外边界采用 EH counterterms 加 GB transgression。

本笔记采用标准统计符号 \(Z\simeq e^{-I_E}\)、\(F=I_E/\beta=-T\ln Z\)。原文 (4.5–4.6) 将 \(\ln Z=I_E\) 与 \(F=+T\ln Z\) 并写，符号不符合这一约定；但其显示出来的 \(I_E\) 和 \(F\) 数值是标准的 \(\beta F\) 与 grand potential，因此保留数值表达式、修正 \(\ln Z\) 的解释：
\[
I_E=\beta\left(\frac M2-\frac{e^2}{2r_+}-\frac{r_+^3}{2\ell^2}\right)-2\pi\alpha\chi_B,
\]
\[
F=M-T\left(\pi r_+^2+2\pi\alpha\chi_B\right)-e\Phi,
\quad \Phi=\frac e{r_+},\quad P=\frac3{8\pi\ell^2}.
\]
这里
\[
M=\frac{r_+}{2}+\frac{e^2}{2r_+}+\frac{4\pi P r_+^3}{3},
\quad T=\frac{1-e^2/r_+^2+8\pi P r_+^2}{4\pi r_+},
\quad V=\frac{4\pi r_+^3}{3}.
\]
Mathematica 直接验证了上述扩展第一定律的全部 \(dr_+,de,dP,d\alpha\) 系数。

更快的独立推导是：GB–Chern 完成后的 Euclidean Euler 作用量，在本节选择下给出 \(\Delta I_E=-2\pi\alpha\chi_M\)。黑洞的 \(\chi_M=\chi_B\)，故 \(\Delta F=-2\pi\alpha\chi_BT\)，再求 \(-\partial_TF\) 就得到 \(\Delta S=2\pi\alpha\chi_B\)。它说明为什么同拓扑局域变化不可见、不同拓扑鞍点比较却可见；也不要求错误的 \(\omega_{\rm bulk}=0\) 论证。

原文 (4.7) 显示的 \(r_+(T,\Phi,P)\) 只选了一支。解二次方程实际有
\[
r_+=\frac{T\pm\sqrt{T^2-2P(1-\Phi^2)/\pi}}{4P},
\]
只保留满足正半径、实判别式和所需局域稳定性的分支。下一节 Hawking–Page 必须使用大黑洞支，不能沿用前面单列的小根。

## 有限 cavity 的 off-shell 约化

§4.2 用 \(\tau\sim\tau+2\pi\)、径向参数 \(y\in[0,1]\)，度规
\(ds^2=b(y)^2d\tau^2+a(y)^2dy^2+r(y)^2d\Omega^2\)。bolt 正则性为 \(b(0)=0\)、\((b'/a)_0=1\)，边界逆温是 \(\beta=2\pi b(1)\)。先施加 Maxwell Gauss 约束与引力 Hamiltonian 约束，留下 \(r_+,e\) 两个变量；这不是已经满足所有场方程的解。

令
\[
f_b=\left(1-\frac{r_+}{r_b}\right)
\left(1-\frac{e^2}{r_+r_b}\right),
\quad E_b=r_b(1-\sqrt{f_b}),
\]
则原文 (4.15) 的约化作用量为
\[
I_E(r_+,e;\beta,\Phi,r_b)
=\beta E_b-\beta\Phi e-\pi r_+^2-4\pi\alpha.
\]
驻点条件给
\[
\beta=\frac{4\pi r_+\sqrt{f_b}}{1-e^2/r_+^2},
\quad \Phi=\frac e{r_+}
\sqrt{\frac{1-r_+/r_b}{1-e^2/(r_+r_b)}}.
\]
在 \(0<e<r_+<r_b\) 的实正平方根分支，Mathematica 对两个驻点方程给出零残差。GB 常数并不改变驻点，却改变其绝对作用量。

\(r_b\to\infty\) 时，直接展开得到
\[
E_b\longrightarrow\frac{r_+}{2}+\frac{e^2}{2r_+}=M.
\]
原文 (4.24)，PDF p.26／印刷 p.25，写成减号；这是一个已用极限独立确认的错误。有限 cavity 的核心构造仍可使用，不能把这个错误的能量极限当作电荷公式。这一 Euclidean grand-canonical 设置固定 \(\Phi\)，也不应与 §3 固定总电荷的 Lorentzian 边界数据混同。

# 合并、拓扑改变与可观测量

§5.1 的简化合并模型取 \(M_f=M_1+M_2\)，初始两个球面、末态一个球面，每个 \(\chi_B=2\)。于是
\[
\Delta S=8\pi M_1M_2-4\pi\alpha.
\]
代数上可为负，但这不是由任意小扰动的物理过程第一定律推出的结果；跨越 horizon crease 的拓扑改变不是固定拓扑光滑变分。若将 GB 项视为 EFT 的一部分，在 \(\alpha\) 大到可压过面积增量时，还需控制未纳入的其他高曲率项。

可测的经典 \(M,J,Q\) 及同拓扑一阶热变化不因常数拓扑熵而改变，故这一模型本身没有给出一个直接测量拓扑熵的经典实验。作者转而比较不同 Euclidean 拓扑的鞍点，这正是下一节比“合并时熵减少”更可计算的物理内容。

# Hawking–Page：从一个二次方程读出整个相图

设 \(e=J=0\)、\(\chi_B=2\)，热 AdS 参考自由能在领先阶取 0。原文 (5.4) 的量为
\[
T(r)=\frac1{4\pi r}+2Pr,
\quad S=\pi r^2+4\pi\alpha,
\]
\[
F(r)=\frac r4-\frac{2\pi P r^3}{3}-\frac\alpha r-8\pi\alpha Pr.
\]
它已由 \(M-TS\) 重新计算，而不是从有误的 CPS 电荷链条借来。

## 普通的一阶交叉与小耦合极限

以 \(P=3/(8\pi\ell^2)\) 代入，\(F=0\) 化成
\[
y^2-(\ell^2-12\alpha)y+4\alpha\ell^2=0,
\qquad y=r^2.
\]
大黑洞交叉根为
\[
y_{\rm HP}=\frac{\ell^2-12\alpha+
\sqrt{(\ell^2-4\alpha)(\ell^2-36\alpha)}}{2},
\quad T_{\rm HP}=\frac{1+3y_{\rm HP}/\ell^2}{4\pi\sqrt{y_{\rm HP}}}.
\]
这比原文 (5.6) 的长根式更容易跟踪分支。只取实际存在、位于稳定支的根；正 \(\alpha\) 的普通一阶交叉区为 \(\alpha\leq\ell^2/36\)。展开为
\[
T_{\rm HP}=\frac1{\pi\ell}-\frac{4\alpha}{\pi\ell^3}+O(\alpha^2).
\]
在 \(\ell=1\)、\(\alpha=(-0.01,0,0.01)\) 时，独立数值为
\((0.330585289995,0.318309886184,0.304993636921)\)，重现 Fig.1 的三个温度。这里 \(\alpha\to0\) 恢复标准 Hawking–Page 温度。

固定 \(T\) 时，亦可由
\[
\pi T r^2-r+12\pi\alpha T=0,
\quad r_{\rm coexist}=\frac{1+\sqrt{1-48\pi^2\alpha T^2}}{2\pi T},
\quad P=\frac{T}{2r}-\frac1{8\pi r^2}
\]
得到原文 (5.7) 的共存曲线，避免额外引入根式的伪分支。

## 正耦合的 cusp 和“零阶”鞍点转变

\(T'(r)=0\) 给
\[
r_c=\frac1{\sqrt{8\pi P}},\qquad T_{\min}=\sqrt{\frac{2P}{\pi}}.
\]
在 \(\alpha>0\) 时 \(S>0\)，又因 \(F'=-S T'\)，自由能的最高点恰是 cusp。将 \(r_c\) 代入：
\[
F_c=\frac{1-96\pi\alpha P}{12\sqrt{2\pi P}},
\quad P_{\max}=\frac1{96\pi\alpha},
\quad T_{\max}=\frac{\sqrt3}{12\pi\sqrt\alpha}.
\]
这些关系均已机算验证。若 \(P>P_{\max}\)，黑洞支只要存在，其自由能就低于领先阶热 AdS；但它只在 \(T\geq T_{\min}\) 存在。只比较这两类光滑鞍点时，主导自由能在 cusp 处出现有限跳变，作者称为 zeroth-order Hawking–Page：
\[
T^{(0)}_{\rm HP}=\sqrt{\frac{2P}{\pi}},\qquad P=\frac\pi2T^2.
\]
Fig.2 的分支解释和 Fig.3 的端点因此有明确代数来源，而不是凭图猜测。

应保留它的**鞍点近似范围**：本文没有分析完整引力积分的 contour、消失鞍点附近的统一近似、conical/off-shell 端点贡献与所有其他拓扑。因此这里复现的是“热 AdS 加 Schwarzschild–AdS 光滑鞍点的领先阶比较”，不是对完整量子引力自由能存在不连续的证明。\(\alpha/\ell^2\) 不小的区域若作为 EFT 解释，还需检查其余高曲率修正。

# 对当前研究的使用顺序

第一步应先固定问题：只问同拓扑的局域 Hamiltonian 变化，还是比较不同填充的绝对路径积分权重？前者需要 \(\Theta\)、corner 改善与边界条件；后者需要明确 Euler 完成及拓扑扇区。两者不能互相替代。

第二步，可以直接复用经本笔记独立重建的 RN–AdS 势、cavity 约化作用量、\(\alpha\) 的共轭势和 Hawking–Page 二次方程。它们支持“局部动力学不变仍可能改变跨拓扑鞍点权重”的判断。

第三步，若要把 Euler 项放入区域 sewing，保留 \(\omega_{\rm GB}=d(\delta Y)\) 及两侧 cut 数据；不能借原文 (3.22) 将它们删掉。可计算的后续问题是：给定两区域共同的 null／timelike cut，构造匹配的 transgression 势和 \(Y\)，判断它们是否在 glue 后抵消，并单独跟踪 Euler 常数。这比进一步核对无关排版错误更接近当前的实质问题。

本笔记独立复现了曲率导数的常曲率反检验、满足线性真空方程的辛流非零例、球面熵积分归一化、cavity 驻点与正确能量极限、扩展第一定律、相变根与 cusp 条件、Fig.1 的数值。未独立完成的是一般 null 边界／joint 的全变分推导、全局 transgression patching 和任意动力学截面的改善电荷。因此原文的动态 Wald–JM 等价与任意光滑外边界的全局普遍性，在这里保留为需要修复的来源主张；它们不被后面的成功热力学代数检验自动证明。
