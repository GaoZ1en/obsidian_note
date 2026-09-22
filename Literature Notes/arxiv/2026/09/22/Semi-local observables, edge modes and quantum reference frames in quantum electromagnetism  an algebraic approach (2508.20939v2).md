---
paper id: 2508.20939v2
title: "Semi-local observables, edge modes and quantum reference frames in quantum electromagnetism: an algebraic approach"
authors:
  - "Fewster, Christopher J."
  - "Janssen, Daan W."
  - "Rejzner, Kasia"
publication date: 2025-08-28
abstract: |-
  Boundaries and corners of spacetime play a vital role in understanding physical concepts including entanglement entropy, the infrared problem in QFT and quantum gravity. Standard local quantum field theory struggles to accommodate such boundary-sensitive observables. In this paper we develop an algebraic framework for semi-local quantum electromagnetism on finite Cauchy lenses: a class of compact spacetimes with boundaries and corner. At the classical level, we establish a decomposition of the reduced covariant phase space into bulk closed-loop and surface sectors and demonstrate how the covariant phase space approach relates to the Peierls bracket construction commonly used in perturbative algebraic quantum field theory. Upon quantisation, we obtain a Weyl $C^{*}$-algebra of semi-local observables transforming non-trivially under large gauge transformations (those with non-trivial boundary contribution). To recover gauge invariance, we invoke the notion of quantum reference frames (QRFs) and construct a relativisation map, where we treat auxiliary surface degrees of freedom as QRFs for the large gauge transformations. The relativisation map is constructed directly on the level of $C^{*}$-algebras, making our construction state-independent. The QRF viewpoint on semi-local observables provides new tools for understanding gauge theories on manifolds with boundary, including the problem of gluing theories on Cauchy lenses with common boundaries.
comments: "78 pages inc. appendices, 6 figures, author accepted manuscript to appear in Communications in Mathematical Physics. V2 major changes: Added/updated references, extended introduction, example added in Sec. 4.2, overspecified definition (v1 5.10) removed, changes in notation and presentation of results (particularly Thm 6.3) to highlight (in)dependencies on choices of Cauchy surface"
url: https://arxiv.org/abs/2508.20939v2
summary: "区域 Maxwell 的半局域代数、参考系约化与拼接单射；区分光滑全局子代数和 Hadamard 限制。"
tags: []
---

# 从区域 Maxwell 相空间到可拼接的半局域代数

这篇文章最可复用的结果是：保留角上大规范变换及其共轭电通量，得到非退化的区域 Maxwell 相空间；其 Weyl 量子化经参考系扩展与对角约化，可以拼接出包含全局代数的代数。必须保留三个区别：局域代数与半局域代数不同；联合不变量代数与选定通量扇区后的商不同；拼接代数与光滑全局场代数不同。Theorem 6.3 只给出后者到前者的**单射**，没有证明二者相等，也没有保证拼接态是 Hadamard 态。

阅读定位：`T1-Wald-CPS; T1-boundary; T1-symmetry; T1-symplectic; T2-model; T3-math`。这是本日首次详细处理的旧稿更新，不是对已有本地详细笔记的改写。官方 v2 于 2026-09-21 更新；78 页，采用 monograph mode。

## Source map 与完整章节树

以下重构均以官方 v2 TeX 和 PDF 为依据，未标 `Checked` 的一般结论均为 `Source-derived`。

| 章节 | 子结构、任务与后续依赖 |
|---|---|
| §1 Introduction | 区域局域代数遗漏边界敏感对象；引入半局域观测量、参考系和拼接问题。 |
| §2 Set-up | §2.1 主约定；§2.2 带角流形、Lorentz 几何、Cauchy lens；§2.3 微分形式、积分及 Hodge 分解。规定所有后续迹和法向量的定义域。 |
| §3.1 Classical CPS | §3.1.1 作用量与规范；3.1.2 势与预辛形式；3.1.3 约化与大规范；3.1.4 初值问题；3.1.5 closed-loop/surface 分解。 |
| §3.2 Local observables | 局域辛涂抹场、背景平移、局域大规范不变性及 Poisson 退化。 |
| §3.3 Semi-local observables | 放宽涂抹解的支撑限制；边缘观测量及开 Wilson 线的涂抹类比。 |
| §4.1 Quantum algebra | Weyl 代数定义、局域子代数的恢复、大规范作用、localisability。 |
| §4.2 States | 准自由表示、背景协变性及壳层通量超选择例子；不提供 Hadamard 构造。 |
| §5.1 Surface extension | 辅助角场、联合约束、经典约化与原相空间同构。 |
| §5.2 Quantised extension | relativisation 单射、联合不变量、中心与通量扇区商。 |
| §5.3 Superselection | 用外部通量区分扩展不变量代数的表示；相对观测量本身不区分这些标签。 |
| §5.4 QRF interpretation | PVM、有限维大规范子群、crossed products 与强算子极限。 |
| §6.1 General setting | 无源、公共角、拼成紧致无边界 Cauchy 面的两个连通 lens。 |
| §6.2 Gluing algebras | Theorem 6.1 的两个分解同构；Theorem 6.3 的全局代数单射。 |
| §6.3 Gluing states | 表面边缘态相容性、两个非唯一拼接方案、准自由性及界面奇异性。 |
| §7 Outlook | Hadamard 态、测量、非 Abelian/引力与更一般边界为后续问题。 |
| Appendix A | 符号与空间总表，区分 affine 解空间和 homogeneous 切空间。 |
| Appendix B | 带角 Lorentz 几何与 lens 的技术定义；不是任意 timelike-boundary IBVP。 |
| Appendix C | C.1 初值问题与规范核；C.2 Dirichlet/Neumann 可解性；C.3 CHH 分解证明。 |
| Appendix D | Weyl 不变量引理、Poincaré 对偶、边界延拓、余闭形式变形、传播支撑。 |
| Appendix E | 角 Laplacian 谱截断、有限维 PVM、积分型 relativisation、连续性及极限。 |

## 全局符号、几何与固定的物理问题

度规号差为 $(+,-,\ldots,-)$，$\hbar=c=\epsilon_0=1$。令 $\bar N$ 为有限 Cauchy lens，$\bar\Sigma$ 为正则空间类 Cauchy 面，$\partial\bar\Sigma=\angle\bar N$。其几何允许嵌入无边界的 globally hyperbolic 时空，Cauchy 面共享固定的角；这不是给任意 timelike wall 自行指定 Robin/Dirichlet 数据的构造。

基本场是全局一形式 $A$，$F=dA$；本文主构造固定可用全局势描述的扇区。固定外源 $J$ 满足 $d^*J=0$，$\Delta=dd^*+d^*d$。外源不作为动态物质参与相空间变分。$G^{\mathrm{PJ}}=G^- -G^+$，这里 $G^+$ 为 retarded、$G^-$ 为 advanced。改用 retarded-minus-advanced 时须同时翻转 Peierls 公式。

| 本文符号 | 含义及不能省略的限制 |
|---|---|
| $\mathrm{Sol}^J$、$\mathrm{Sol}$ | 前者为 affine 有源解空间，后者为齐次 Maxwell 解向量空间，也是固定源切方向。 |
| $\mathscr G$ | 角上消失的规范参数所生 $d\Lambda$；是预辛核。 |
| $\mathscr{LG}_\angle$ | 角函数模去**体连通分支上常数的限制**，以正交补选代表；不能逐个角连通分支任意去掉常数。 |
| $\mathbf E$、$\rho$ | $\mathbf E=-n_\Sigma dA$，$\rho=n_\Sigma J$，Gauss 条件 $-d^*_\Sigma\mathbf E=\rho$。 |
| $V^C$、$V^S$ | closed-loop 数据及表面共轭数据；分解依赖 $\Sigma$ 和椭圆问题。 |
| $\mathfrak K^J_\Sigma$ | Coulomb–Hodge–Helmholtz (CHH) affine 分解；切映射为辛同构。 |
| $O_A(a)$、$W_A(a)$ | 以背景解 $A$ 标记的辛线性函数及其 Weyl 指数。 |
| $\widetilde{\mathscr G}$、$\Upsilon$、$\Gamma$ | 联合规范方向、relativisation 单射、选定外部通量的商映射。 |

## §3.1：作用量、预辛核与角电通量

采用与原文 EOM 一致的作用量：

$$
S^J[A]=-\frac12\langle dA,dA\rangle_{\bar N}-\langle J,A\rangle_{\bar N},
\qquad -d^*dA=J.
$$

原文式 (3.1) 最右内积表达漏掉第一项的 $1/2$；PDF 第 11 页及 TeX 一致显示该笔误。这里明确恢复它，而不把错误的双倍动能继续用于电荷归一化。

原文以 $\delta S=E-d\Theta$ 组织边界变分，$\Theta_A(a)=(*dA)\wedge a$。在固定源切空间上，其反对称变分给出

$$
\sigma(a_1,a_2)
 =\langle a_2,n_\Sigma da_1\rangle_\Sigma
 -\langle a_1,n_\Sigma da_2\rangle_\Sigma
 =\langle\mathbf A_1,\mathbf E_2\rangle_\Sigma
 -\langle\mathbf A_2,\mathbf E_1\rangle_\Sigma.
$$

守恒来自线性化方程、Stokes 定理及 lens 的公共角几何。不能直接把它搬到有开放 timelike 通量的世界管。对纯规范切向量积分分部，Gauss 条件消去体项，留下

$$
\sigma(d\Lambda,a)=\int_{\partial\Sigma}\Lambda\,n_{\partial\Sigma}\mathbf E(a).
$$

所以“规范变换”是否为退化方向取决于允许的参数迹，而不是只看 $F$ 是否不变。Appendix C 用任意满足 Gauss 条件的初值的可实现性反向证明核恰为

$$
\mathscr G=\{d\Lambda:\Lambda|_{\angle\bar N}=0\}.
$$

等价代表可以给 $\Lambda$ 加体上的局部常数。若一个连通区域的角有两个分支，其相对常数仍能携带物理信息；这是壳层电通量例子的要点。

### 初值定理如何进入辛分解

先在无边界全局时空解 Lorenz-gauge 正常双曲方程，选择标量规范数据使 $d^*A$ 及其初始法向导数消失；齐次传播保持 Lorenz 条件。区域初值延拓若使扩展源不再余闭，Appendix C 用一个标量波动解修正扩展源，而在原 lens 内保持原数据。这一步提供初值满射，不能只假定任意边界数据都有全局延拓。

在 $\Sigma$ 上写

$$
\mathbf A=\mathbf A^t+d\alpha,\qquad
\mathbf E=\mathbf E^t+d\varepsilon,
\qquad \mathbf A^t,\mathbf E^t\in\Omega^1_{t,d^*}(\Sigma).
$$

右侧空间要求余闭并且法向迹为零。proper-gauge 约化后选 $\Delta\alpha=0$，边界迹与体常数限制正交。$-\Delta\varepsilon=\rho$ 的 Neumann 相容性固定总通量；令 $f^\rho$ 在每个体连通分支的全边界上等于总电荷除以面积，则

$$
\mathfrak K^J_\Sigma[A]
 =(\mathbf A^t,\mathbf E^t;
 f=\alpha|_{\partial\Sigma},\ h=n\mathbf E-f^\rho),
\quad
V^C=\big(\Omega^1_{t,d^*}(\Sigma)\big)^{\oplus2},\quad
V^S=\mathscr{LG}_\angle^{\oplus2}.
$$

体与梯度项的交叉配对由 Hodge 正交性消失；两梯度的配对再分部，齐次电场满足 $\Delta\varepsilon=0$，仅余边界项。因此

$$
\sigma=\sigma^C\oplus\sigma^S,
\qquad \sigma^S((f,h),(f',h'))=\langle f,h'\rangle-\langle f',h\rangle.
$$

这不是把界面独立自由度直接局域截出来：$f$ 及闭环部分通过整个 $\Sigma$ 的椭圆边值问题定义。总表面相空间可以内禀给出，其在区域相空间中的嵌入仍依赖 Cauchy 面。

## §§3.2–4：从局域涂抹到 Weyl 代数

局域场 $A(f)=\langle f,A\rangle$ 使用内部紧支撑、余闭一形式 $f$。Peierls 括号与源的约定为

$$
\{A(f),A(h)\}=-\langle f,G^{\mathrm{PJ}}h\rangle.
$$

引入齐次解 $a$ 的辛涂抹

$$
O_A(a)(\widetilde A)=\sigma(a,\widetilde A-A),\qquad
\{O_A(a),O_B(b)\}=\sigma(a,b),\qquad
A(f)=-O_A(G^{\mathrm{PJ}}f)+\langle f,A\rangle.
$$

Green 恒等式把后两种描述相连。局域观测量只用空间紧支撑的 $a$；允许所有光滑区域齐次解，则获得半局域代数，并能探测大规范方向。CHH 坐标中的生成元为

$$
o^C(F,H)=\langle F,\mathbf E\rangle-\langle H,\mathbf A\rangle,
\quad
o^S(f,h)=\langle f,n\mathbf E\rangle-\langle d\varphi,\mathbf A\rangle,
$$

其中 $\Delta\varphi=0$、$n d\varphi=h$。第二项在边界规范平移下变化为 $-\langle h,\lambda\rangle$。它类似谐和涂抹的开 Wilson 线；真正分布型细线一般过于奇异，不属于此光滑生成空间。

壳层 $\Sigma\simeq S^2\times[0,1]$ 上，取规范参数在两端分别为 0、1，梯度可选在内部支撑；对应外端电通量在局域代数中为中心。半局域代数增加共轭方向后可以平移通量，原局域超选择分解不再是全半局域理论的超选择分解。

量子化使用

$$
W_A(a)W_A(b)=e^{-i\sigma(a,b)/2}W_A(a+b),\quad
W_A(a)^*=W_A(-a),\quad
W_{A-b}(a)=e^{i\sigma(a,b)}W_A(a).
$$

局域 Weyl 场为 $W^J_{\rm loc}(f)=e^{i\langle f,A\rangle}W_A(-G^{\mathrm{PJ}}f)$，背景依赖相消。非退化区域空间的 Weyl $C^*$ 代数简单；CHH 给出 $\mathcal A(\bar N)\cong\mathcal A^C_\Sigma\otimes\mathcal A^S_\angle$，但这不是独立于切片的局域协变张量分解。

§4.1 的 localisability 用支撑远离给定集合的背景平移不变量定义。在所需因果/几何条件下，它与内部局域网一致；Appendix D 的固定点引理把相位作用不变量化为被所有相位泛函消灭的 Weyl 生成元。其证明通过有限 Weyl 和的范数逼近及对称平均排除非零相位，依赖代数的范数结构。

准自由态写作 $\omega_\mu(W(v))=e^{-\mu(v,v)/2}$，要求 $|\sigma(v,w)|\le2\sqrt{\mu(v,v)\mu(w,w)}$，一粒子配对为 $\mu+i\sigma/2$。CHH 的 $L^2$ 范数能构造 Fock 表示，但没有自动控制波前集。不同切片得到的表示未必幺正等价；局域表示要在同一 Hilbert 空间扩展，需要背景平移的幺正实现，单一固定通量表示一般不满足这一要求。

## §§5.1–5.3：参考系扩展的约束、商与外部通量

添加 $(\varphi,\tau)\in V^S$，使用 $\widetilde V=V\oplus V^S$ 和直和辛形式。联合大规范作用

$$
(a,\varphi,\tau)\longmapsto(a+\mathfrak G\lambda,\varphi+\lambda,\tau),\qquad
D=\{(\mathfrak G\lambda,\lambda,0)\}.
$$

先限制 $D^\perp$，再商去 $D$。正交约束给出 $\tau=n^{(2)}_\angle da=-h$；不能漏掉两个区域外法向相反导致的负号。选 $\varphi=0$ 作为轨道代表，得到

$$
\widehat E(a)=(a,0,-h(a)),\qquad D^\perp/D\simeq V.
$$

其逆映射从 $(a,\varphi,-h)$ 扣去联合方向，留下 $a-\mathfrak G\varphi$。辅助自由度在这个固定外部通量叶上没有增加最终相空间维数。

**原文脚注错误。** PDF p.38 footnote 14 称 $D$ 为 $\widetilde V$ 的 Lagrangian 子空间。正文需要且使用的是 $D$ 各向同性，以及 $\mathrm{rad}(\widetilde\sigma|_{D^\perp})=D$。$D^\perp/D$ 是非零辛空间，已排除 $D=D^\perp$。本笔记不依赖该脚注的错误断言。

量子 relativisation 为

$$
\Upsilon(W_A(a))=W_A(a)\otimes W^S(0,-h(a)).
$$

两因子的联合规范相位相消，额外表面因子之间的辛配对为零，所以保持原 Weyl 乘法。像 $\mathcal A_{\rm rel}$ 与 $\mathcal A$ 同构。然而整个联合不变量代数还有中心生成元 $U_{\mathscr{LG}}\otimes U^S_{\mathscr{LG}}$；需要再取理想

$$
I=\langle U_{\mathscr{LG}}(\lambda)\otimes U^S_{\mathscr{LG}}(\lambda)-1\rangle
$$

才得到 $\mathcal A_{\rm ext}=\widetilde{\mathcal A}^{\mathscr{LG}}/I\cong\mathcal A_{\rm rel}$。商映射 $\Gamma$ 在 $\Upsilon$ 的像上为逆；不能把所有不变量直接等同于已约化观测量。

§5.3 将上述中心取值推广为 $e^{i\langle\Phi,\lambda\rangle}$，$\Phi$ 表示外部电通量扇区；零值才是前述特定商。物理匹配式为 $n\mathbf E+\tau=\Phi$。相对观测量代数自身看不到这个外部标签；在扩展不变量代数的表示论层面才需记录它。源于所规定正则表示类别的扇区结论不可直接推广到所有表示。

## §5.4 与 Appendix E：代数 dressing 的操作解释

取角 Laplacian 的低谱投影 $\Pi_\mu$，有限维子群 $G_\mu=\Pi_\mu\mathscr{LG}_\angle\cong\mathbb R^{n_\mu}$。在可分、忠实、正则参考系表示中，Stone–von Neumann 理论给出协变 PVM，满足

$$
U^{\mathcal R}(f)P_\mu(X)U^{\mathcal R}(f)^{-1}=P_\mu(X+f),
\quad
\Upsilon_\mu(a)=\int_{G_\mu}U^{\mathcal S}(f)aU^{\mathcal S}(f)^*\otimes dP_\mu(f).
$$

在生成元上积分就是傅里叶变换，输出参考系 Weyl 因子 $W^S(0,\Pi_\mu n^{(2)}da)$。利用谱投影的 Sobolev 收敛以及参考系表示相应强连续性，取强算子极限，恢复代数定义的 $\Upsilon$。这一步既不是无条件极限，也不是在无穷维非局部紧大规范群上直接使用 Haar 积分。crossed-product 识别先对有限维子群成立；范数闭包、弱闭包和固定点操作不能随意交换。

## §6：拼接后究竟恢复了什么

本节取 $J=0$。两个连通 lens 的正则 Cauchy 面拼成紧致无边界 $\Sigma$，只在公共角相交，环境时空由其 domain of dependence 给定。定义

$$
\mathcal A_{\rm glue}=
(\mathcal A_1\otimes\mathcal A_2)^{\text{diagonal }\mathscr{LG}}/I.
$$

CHH 表面变量满足 $h_2=-h_1$。对角平移消去共同的 $f$，留下 $q=f_1-f_2$ 及 $p=h_1$。明确计算

$$
\sigma^S_1+\sigma^S_2
=(f_1-f_2)k_1-(g_1-g_2)h_1
$$

说明公共表面共轭对不会在匹配通量后整个消失。Theorem 6.1 给出两个参数化：$\mathcal A_1\otimes\mathcal A^C_2\simeq\mathcal A_{\rm glue}\simeq\mathcal A^C_1\otimes\mathcal A_2$。切换参考区域在表面标签上作用为 $(f,h)\mapsto(-f,-h)$，保持辛形式；对应闭合开 Wilson 线的方式依赖补区 Cauchy 面。

Theorem 6.3 的自然映射为

$$
\iota:\mathcal A(M)\hookrightarrow\mathcal A_{\rm glue},\qquad
W^M([a])\mapsto\big[W_1([a|_{N_1}])\otimes W_2([a|_{N_2}])\big].
$$

证明链：选全局 Coulomb 初值代表，使区域限制形成辛映射；不同全局规范代表的差是对角大规范，在商中被消去；非零含幺同态作用在简单 Weyl 代数上给出单射。映射不依赖为证明而选的切片，但前述 CHH 参数化和 dressing 依赖。

区域匹配条件并不自动保证数据跨界面光滑。拼接代数容纳对全局理论过于奇异的表面通量指数；要恢复光滑全局子代数，还需选择可光滑延拓的区域数据。只拼局域子代数又会遗漏跨区 holonomy/Aharonov–Bohm 信息。因此它是十分具体的代数 sewing 模型，却不是“界面电荷匹配即全局理论等价”的证明。

### §6.3 态的相容性与不唯一性

给定切片的表面边缘态需满足

$$
\omega_1^S(W(f,h))=\omega_2^S(W(-f,-h)).
$$

可选的两个拼接态是 $\omega_{1(2)}=(\omega_1\otimes\omega_2^C)\circ\psi_{\bullet\circ}^{-1}$ 及 $\omega_{(1)2}=(\omega_1^C\otimes\omega_2)\circ\psi_{\circ\bullet}^{-1}$。它们保持所指定的 closed-loop 和 surface 边缘态，并非同时保持两侧所有原 bulk–surface 相关性。二者相等当且仅当两侧原态各自因子化为 $C\otimes S$。

对准自由态，第一种拼接再限制到全局代数后，其 covariance 为

$$
\mu_{1(2)}=(\mu_1\oplus\mu_2^C)\circ\mathfrak i_{1(2)}^{\otimes2},\qquad
\mathfrak i_{1(2)}[a]=(v_1^C,f_1-f_2,h_1,v_2^C).
$$

线性拉回保持准自由特征函数，但不决定 Hadamard 波前集。论文明确承认界面奇异性及可能的 Hadamard 失败；平滑拼接与 Wick 多项式是后续工作。

## Equation ledger 与推导依赖

| 原文定位 | 可复用对象 | 所需前置条件 |
|---|---|---|
| (3.1)–(3.5) | 固定源 Maxwell EOM | 恢复动能 $1/2$，$d^*J=0$。 |
| §3.1.2–3.1.4、Appendix C.1 | 预辛核与初值识别 | lens 几何、正则迹、Gauss 约束。 |
| §3.1.5、C.2–C.3 | CHH 辛直和 | 紧致空间面、Dirichlet/Neumann 可解性。 |
| §§3.2–3.3 | Peierls–CPS 字典 | advanced-minus-retarded，内部紧支撑起步。 |
| §4.1 | 半局域 Weyl 代数 | proper-gauge 后非退化实辛空间。 |
| (5.3)–(5.9) | $D^\perp/D$ 与 $\widehat E$ | 保留表面通量约束及相反法向。 |
| §§5.2–5.3 | $\Upsilon$、$\Gamma$、外部通量扇区 | 区分嵌入、固定点和商；指定表示类别。 |
| §5.4、Appendix E | PVM 强极限 | 谱截断、参考系正则性及 Sobolev 强连续性。 |
| Thm.6.1 | 拼接代数的两个同构 | 无源、连通区域、完整公共角。 |
| (6.21)–(6.25), Thm.6.3 | 全局代数单射 | 全局光滑场、规范差在商中消去。 |
| §6.3 | 态及 covariance 拼接 | 表面边缘态相容；无 Hadamard 保证。 |

整体链条是：作用量 → 固定源解空间 → proper-gauge 核 → 初值定理 → CHH 分解 → 半局域 Weyl 代数 → 联合扩展/约化 → 界面代数 → 全局光滑子代数。每个箭头改变的是对象或定义域，不能只根据最后电荷相消跳过中间步骤。

## 与本库 CPS / sewing 的对接

首要可复用对象是明确的商 $D^\perp/D$ 及其 gauge-fixed 截面；它展示“加入辅助边缘变量再消去”如何在一个固定通量叶上返回原相空间。第二个对象是全局代数单射：它把界面匹配、区域相空间约化、光滑延拓和态的正则性分成不同问题。对本库行动量优先的 sewing，应逐项建立这些箭头，不能把本文 Abelian 线性 Weyl 结果直接称为引力或非 Abelian 的量子定理。

记号迁移时必须同时保留 $\delta S=E-d\Theta$、$\mathbf E=-n_\Sigma F$、$G^{\rm PJ}=G^- -G^+$。若本库采用 $\delta L=E+d\theta$，应先以 $\theta=-\Theta$ 对齐，再重算 $\omega$ 与 Hamiltonian-vector-field 约定；不能单独复制表面电荷的正负号。固定外源、全局势扇区、紧致 lens 与光滑场定义域也都是不可省略的输入。

## How to read this long paper

第一遍按 §3.1 → §3.3 → §5.1–5.2 → §6.2 阅读，抓住每次约化保留了什么。第二遍补 §3.2 和 §4，将 Peierls 及表示论边界接上。若目标是拼接态，必须读 §6.3 的相关性和 Hadamard 限制，不能仅引用 Thm.6.1。

技术参考按需回到 Appendix C 的边值可解性与 kernel 证明、Appendix D 的局域性、Appendix E 的 PVM 极限。§2 与 Appendix B 是所有几何推广前必须核对的定义；§1、§7 为背景与尚未完成的推广，不能作为已证明结果引用。Appendix A 用于跨章节符号核对。

## Verification log

- `Source-derived`：完整主要章节与附录结构、Green/初值论证、Weyl $C^*$ 简单性与连续性、定理6.1/6.3及态拼接定理。独立计算没有重新证明这些无穷维分析结论。
- `Checked`（2026-09-22，Mathematica）：一个表面模态的 $\Omega=J_2\oplus J_2$，$D=\mathrm{span}(1,0,1,0)$。约束基 $(1,0,0,0),(0,1,0,-1),(0,0,1,0)$ 的拉回矩阵为 $\bigl(\begin{smallmatrix}0&1&0\\-1&0&1\\0&-1&0\end{smallmatrix}\bigr)$，核为 $(1,0,1)$；截面 $(f,h,0,-h)$ 的拉回与 $J_2$ 差为零。这检查约束、符号和商的单模态代数，不证明函数空间完备性。
- `Checked`（Mathematica）：上述界面辛形式化为 $(f_1-f_2)k_1-(g_1-g_2)h_1$，残差 0；Weyl 二余循环结合律残差 0；dressing 联合规范相位残差 0。
- `Checked`（Mathematica）：三维球壳 $a<r<b$，$\alpha=(r^{-1}-a^{-1})/(b^{-1}-a^{-1})$，$E_r=q/r^2$。径向 Laplace 残差 0，$\int_a^b4\pi r^2\alpha'E_rdr=4\pi q$，与两端边界通量配对一致；这只是显式壳层检验。
- `Checked`（xAct，任意固定光滑度规）：反对称 $F^{ab}$ 给 $-\tfrac12F^{ab}(\nabla_av_b-\nabla_bv_a)=-F^{ab}\nabla_av_b$，及 $\nabla_a(-F^{ab}v_b)+(\nabla_aF^{ab})v_b+F^{ab}\nabla_av_b=0$，两残差均为 0。检查局部 Maxwell 变分/分部，不覆盖边界正则性定理。
- `Failed`：原文 (3.1) 内积形式缺 $1/2$；普通二次型导数分别为 $-x-j$ 与 $-2x-j$，不一致。使用积分形式及 (3.4) 的归一化修复该局部笔误。
- `Failed`：p.38 footnote 14 的 Lagrangian 断言。上述单模态 $\dim D=1$、$\dim D^\perp=3$；更直接地，正文非平凡约化已与 $D=D^\perp$ 矛盾。正确的是 isotropic $D$ 与 coisotropic $D^\perp$；正文商构造不依赖错误脚注。
- `Checked`（视觉）：渲染并查看 PDF pp.11、38、53，确认 (3.1)、footnote 14、(5.6)–(5.9) 和 Theorem 6.3 的单射及公式标签。其余章节为 TeX/提取文本核读，不冒称逐页视觉校验。
- `Not independently verified`：无限维 Hodge/初值延拓定理、所有表示分类、PVM 极限、C* 范数论证和一般拓扑的 gluing 单射；没有检查 Hadamard 波前集，也没有证明其保持。本文本身不提供普遍保持结论。
- `Blocked`：无源文件或计算工具阻塞。Hadamard 平滑拼接和非 Abelian/引力推广缺少本文中的构造，属于明确研究边界，不应填写成已验证。

Verified: 上述有限代数、球壳、局部 Maxwell 变分残差及三页 PDF 视觉证据。Assumptions: 固定源/度规、光滑全局势、有限 Cauchy lens；数值无关的单模态代数不是一般场论证明。Not verified: 分析定理、完整表示论和微局域正则性。
