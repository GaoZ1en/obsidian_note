---
paper id: 2606.01486v2
title: "Approximate higher-form symmetries and dualities of massive p-forms in the holographic bulk"
authors:
  - "Pinheiro, André Oliveira"
publication date: 2026-05-31
abstract: |-
  We develop a holographic framework for continuous higher-form symmetries and their low-energy effective descriptions, based on bulk path integrals, holographic renormalisation and boundary-condition-changing deformations. We show how approximate higher-form symmetries associated with a defect current can be realised holographically through massive antisymmetric tensor fields, either via parametrically small bulk masses or strong deformations associated with Robin boundary conditions. We further study the consequences of massless and massive Hodge dualities in the bulk, deriving the corresponding dualities between boundary theories related by different quantisation choices. Our results provide a unified perspective on approximate symmetries, dualities and strong/weak-coupling relations in holographic theories based on massive $p$-forms. In the self-dual case of an exact symmetry of degree $(d-3)/2$, we derive generalised constraints on holographic current-current correlators in the presence of double-trace deformations.
comments: "50 pages; typos corrected; version prepared for submission to JHEP"
url: https://arxiv.org/abs/2606.01486v2
summary: "通过边界变分、重整化极化与 Stückelberg 缺陷重建近似 higher-form 对称；保留受控本构和对偶域条件。"
tags: []
---

# Approximate higher-form symmetries and dualities of massive p-forms in the holographic bulk

这篇论文最值得迁移的是“选定作用量和边界变分 → 选择重整化共轭变量 → 确定量子化与双迹形变 → 导出 Ward 恒等式”的链条。小质量本身还不足以证明存在长寿命对称性：缺陷响应的本构关系必须在该极限受控。论文给出的是 bottom-up、主要为二次阶和大 $N$ 的全息构造；没有给出所有边界条件下的 Hilbert 空间量子化或非微扰对偶定理。

日总览：[[2026_09_03_overview]]。

## Source-derived：范围、版本与完整结构

依据 [官方 v2](https://arxiv.org/abs/2606.01486v2) 的 PDF 与完整 TeX。v1 发表于 2026-05-31，v2 更新于 2026-09-01，9 月 3 日官方列表收录 replacement；本地无该论文详读笔记，因此这是今日新增详读，不能算作已有笔记的版本差异核验。50 页采用 monograph mode；没有读取 v1 全文，不能独立确认“仅改错字”的全部差异。

| 源结构 | 本节的输入、工作与后续依赖 |
|---|---|
| §1、§1.1 | 区分电流、Goldstone 形式、缺陷电流；定义精确／破缺对称的源变换 |
| §2.1 | AdS 径向指数、裸边界变分、何时需要重整化 |
| §2.2 | 抽象 bulk 路径积分、场重定义、边界动量和规范恒等式 |
| §2.3、§2.3.1 | 电量子化；高阶形式的重整化边界场；混合条件和双迹项 |
| §2.4 | Legendre 变换与磁量子化；约束源与算符的规范等价类 |
| §2.5.1–2.5.2 | Maxwell 展开、counterterm-plus、显式源／响应字典 |
| §3.1.1–3.1.3 | 带缺陷的两个场、Jacobian 修正、Stückelberg 商及 Robin 强弱关系 |
| §3.2.1–3.2.2 | massive 径向展开和近似守恒系数 |
| §3.3、§3.3.1 | 两种重整化极化、质量与双迹形变的不同极限 |
| §4.1 | 有／无质量 Hodge 对偶、度数反射、边界系数映射 |
| §4.2 | 作用量变分和对偶路径积分；内部正则条件的协变假设；极端度数例外 |
| §4.3 | 无质量自对偶点、横纵响应乘积约束 |
| §5 | 未处理拓扑项、反常、高群、有质量自对偶；热态谱计算在另文 |
| Appendix A | 非通常阶乘规范、bulk 与 boundary 的 Hodge star |
| Appendix B、B.1 | 场强的闭／余闭约束、径向递推、共振对数支 |

## 全局记号与必须保留的约定

边界维数为 $d$，bulk 为 $d+1$，取 $L=1$：

$$
ds^2=\frac{dr^2}{r^2}+r^2\eta_{\mu\nu}dx^\mu dx^\nu,\qquad r\to\infty.
$$

$\mathrm A$ 是全部 bulk 指标，$\Xi$ 不含径向指标，$\mathrm R$ 至少含一个 $r$；一撇表示删去一个指标。横向积分假定紧支撑或足够快衰减，才能丢弃该方向的分部积分端项。重整化只处理物质场，背景取固定 AdS，未联立引力反作用。

| 记号 | 含义／不可混淆之处 |
|---|---|
| $\bar\phi,\bar{\mathcal F}=d\bar\phi$ | 无质量 $p$-form 势及场强 |
| $\bar\lambda=d-2p+1$ | 无质量参数，特殊值为 $1,2,3$ |
| $\phi,\tilde\phi,\hat\phi$ | 有质量体系的 $p$-form、$(p-1)$-form 和规范不变量 |
| $n=p-1,\lambda=d-2n+1$ | 有质量参数；不是同一 $p$ 下的 $\bar\lambda$ |
| $\mathcal H=d\phi,\ \mathcal F=p!\hat\phi$ | 论文自己的阶乘规范 |
| $\Phi,Y$ 或 $\hat\Phi,\Upsilon$ | 重整化场／径向共轭动量 |
| $\alpha,\beta,J$ | Maxwell 的边界势、闭场强和余闭响应 |
| $K^\pm,X^\pm$ | massive 切向／径向展开系数 |
| $\star,\ast$ | 分别为 bulk 和 boundary Hodge star |
| $\kappa^{-2}=\mathcal C(N)$ | 全息大 $N$ 归一化，不能和反项中的 $\kappa_{1,2}(r)$ 混淆 |

Appendix A 把反对称括号取为**无归一化求和**，并规定 $(d\omega)_{a_0\ldots a_p}=\partial_{[a_0}\omega_{a_1\ldots a_p]}$。因此直接搬用常见的 $1/p!$ 形式分量约定会改变中间式。下文沿用其分量公式；如果迁移到 vault 的标准形式记号，应先逐阶定义转换，不把 $\mathcal F$ 和标准 Proca 势直接认作相同归一化。

## §1：什么才叫近似 higher-form 对称

精确电对称由 $p$-form 电流 $\mathcal O_j$ 的 $d\ast\mathcal O_j=0$ 给出，其对称度数是 $p-1$。精确磁对称使用等价类 $\mathcal O^a\sim\mathcal O^a+d\zeta$，闭的场强 $f=d\mathcal O^a$ 给出对偶拓扑电流；源须余闭，才能使源耦合不依赖代表元。

显式破缺时引入 $(p-1)$-form 缺陷电流：

$$
d\ast\mathcal O_j=\ast\tilde{\mathcal O}_j.
$$

再作用 $d$ 得到缺陷守恒，但最低度数时不能凭空创造负阶对称。磁描述则以一对算符的联合等价关系组织，归一化后的示意形式为

$$
(\mathcal O^a,\tilde{\mathcal O}^a)
\sim(\mathcal O^a+d\zeta,\tilde{\mathcal O}^a-\zeta),
\qquad \tilde f=d\tilde{\mathcal O}^a+\mathcal O^a,\quad d\tilde f=f.
$$

若只把一个非守恒算符的散度重新命名为缺陷，这个形式操作还没有额外动力学内容。论文强调需要能够控制破缺尺度，且缺陷自身有可解释的动力学／本构关系。这一条件在后面的 $X^\mp$ 中重新出现。

## §2.1–2.4：从边界变分确定电／磁量子化

### 径向指数与重整化的必要性

切向势的主阶方程为

$$
r^{1-d+2p}\partial_r(r^{d+1-2p}\partial_r\phi_\Xi)=m^2\phi_\Xi+\cdots,
\quad
\Delta_\pm=\frac{d-2p\pm\sqrt{(d-2p)^2+4m^2}}2.
$$

代入 $r^{-\Delta}$ 得到 $\Delta(\Delta-d+2p)=m^2$，因而 $\Delta_++\Delta_-=d-2p$、$\Delta_+\Delta_-=-m^2$。这些是场的径向幂，不应不加 $p$ 的转换就称作边界算符维数。平方根为实的条件还不是完整的单位性与允许 alternate quantization 的判据。

无质量、径向规范下裸变分含

$$
\delta S_\Lambda=\int_{r=\Lambda}r^{d+1-2p}\partial_r\phi_\Xi\,\delta\phi^\Xi.
$$

当 $d>2p$，leading 势是常数，可能的发散来自导数下降项；$d=2p$ 出现对数；高阶形式的势本身发散。$d-2p=1$ 是这里唯一无需该物质重整化的整数维情形。高阶与低阶形式需重整化的分别是场与动量，不能坚持用裸 Dirichlet 数据定义所有量子化。

### 抽象电字典

源的抽象定义来自

$$
\delta\bar{\mathcal S}=\int_{\mathbb B}E^\mathrm A\delta\phi_\mathrm A+
\int_{\partial\mathbb B}Y^\Xi\delta\Phi_\Xi.
$$

规范变换与分部积分给出 bulk Noether 恒等式和边界约束。对 Maxwell 后者为 $E^{r\Xi'}=\partial_\mu Y^{\mu\Xi'}$。在路径积分插入的边界方程与场重定义成立时，

$$
\frac{\delta\ln Z_F}{\delta\psi_\Xi}=\frac{i}{\kappa^2}\langle Y^\Xi\rangle_F,
\qquad \partial_\mu\langle Y^{\mu\Xi'}\rangle_F=0.
$$

这里的路径积分域要求边界上满足所用渐近方程；一般 Robin 源可任意微扰还依赖 §2.3.1 的 assumption 1：每个小 $\delta\psi$ 都能由允许的小 bulk 场位移实现。作者没有证明这一提升性质对所有函数空间、零模及边界条件成立。

电量子化选响应 $Y$，不等同于永远选 standard quantization：$d>2p$ 对应 standard，$d\le2p$ 对应 alternative（临界对数支需单独读）。允许的二次边界项 $D_F(Y)$ 把源改成

$$
F_\Xi=\Phi_\Xi+\frac{\delta D_F}{\delta Y^\Xi},\qquad
\delta(\bar{\mathcal S}+\int D_F)=\int E\,\delta\phi+\int Y\,\delta F.
$$

例如 $D_F=\mathcal M Y^2/2$ 给出 $F=\Phi+\mathcal M Y$；双迹项和 Robin 条件是一套变分原理的两个表现。任意 $\alpha\Phi+\beta Y$ 不能不做变量归一化就套入这一特定 $Y\,\delta F$ 形式。

### 磁字典与 Legendre 符号

加入 $-\Phi Y-D(\Phi)$ 后，边界变分成为

$$
\Phi_\Xi\,\delta F^\Xi,\qquad
F^\Xi=-Y^\Xi-\frac{\delta D}{\delta\Phi_\Xi}.
$$

于是边界算符改成 $\Phi$，源受规范约束，算符按规范等价类解释。论文稍后的显式 Maxwell 路径积分采用源 $j$，同时翻转 Legendre 后作用量的整体号，使变分变成 $a\,\delta j$；这是另一套一致配对，不能只抄掉其中一个负号。

无质量 Maxwell 的磁字典排除破坏边界规范不变性的零导数 $\Phi^2$ Robin 形变；允许的最低非拓扑形变是导数平方。这个结论不是“所有混合条件都非法”，也不是对有质量 Stückelberg 体系的禁令。

## §2.5 与 Appendix B：Maxwell 渐近解、反项与可复用的边界对

径向场强满足

$$
(\bar\lambda+r\partial_r)(3+r\partial_r)\bar{\mathcal F}_{r\Xi}
+r^{-2}\Box\bar{\mathcal F}_{r\Xi}=0.
$$

两支根为 $\bar\lambda,3$。Bianchi 再确定切向场强；自由数据为 $d\beta=0$、$d\ast J=0$。非自由的 $J^3$ 由 $\partial\cdot\beta/(3-\bar\lambda)$ 决定。偶数 $\bar\lambda$ 时支差不共振；奇数差为非零偶数时递推分母消失，必须补对数；$\bar\lambda=3$ 为重根，出现 $r^{-3}(J^3+\hat J^3\ln r)$，且 $\hat J^3=-\partial\cdot\beta$。

这说明 Appendix B 不是附带材料：它决定反项的幂次、对数 running 和哪些边界数据真正独立。仅知道两个 indicial roots 不能获得完整重整化。

on-shell 变分的主阶结构是

$$
\delta\bar S_\Lambda\simeq\frac1{p!}\int
\left[\frac{\Lambda^{1-\bar\lambda}}{1-\bar\lambda}J\delta J
+\frac{\Lambda^{\bar\lambda-3}}{(\bar\lambda-3)(p+1)}
\beta\delta\beta+J\delta\alpha+\cdots\right].
$$

分母为零处的 $\Lambda^0/0$ 是作者规定的对数替代记号，不是一个实数等式。counterterm-plus 把消发散项再加有限二次项，系数分别为 $\mathcal M_j,\mathcal M_a$。精确的导数反项在一般高维仍有省略号；只有作者给出的参数窗内才可忽略这些更高项。

最终边界对为

$$
j=J-\mathcal M_a\partial\cdot\beta,\qquad
a=\alpha+\mathcal M_jJ,\qquad
\delta\bar S_{\rm final}=\int j\cdot\delta a.
$$

这套简单表达要求 $\mathcal M_j\mathcal M_a=0$。电字典取 $\mathcal M_a=0$，固定 $a$、读取 $j$；磁字典取 $\mathcal M_j=0$，以 Legendre 后泛函固定 $j$、读取 $a$。并不是两种有限形变任意同时打开仍有相同表达。

$[\mathcal M_j]=1-\bar\lambda$，$[\mathcal M_a]=\bar\lambda-3$。前者在 $\bar\lambda<1$ relevant、$=1$ marginal；后者在 $\bar\lambda>3$ relevant、$=3$ marginal。对数点的有限项可以理解为 running scale 的选择。topological、theta、Chern–Simons 项系统性排除，因此这不是所有允许边界理论的分类。

## §3.1：缺陷、Jacobian 与 Stückelberg 变量

两个场的变分包含 $\Upsilon\,\delta\Phi+\tilde\Upsilon\,\delta\tilde\Phi$。联合变换 $(\delta\phi,\delta\tilde\phi)=(d\xi,-\theta\xi)$ 导致

$$
\partial_\mu\langle\Upsilon^{\mu\Xi'}\rangle
+\langle\theta\tilde\Upsilon^{\Xi'}\rangle=O(\kappa^2),\qquad
\partial_\mu\langle\theta\tilde\Upsilon^{\mu\Xi''}\rangle=O(\kappa^2).
$$

右侧的阶数来自场依赖重定义的 Jacobian；不能把 $\langle\theta\tilde\Upsilon\rangle$ 无条件替成两个期望的乘积。$\theta$ 为常数时可吸收到缺陷归一化；若其由源决定或在场空间退化，则不能径直归入 §1 的固定破缺模型。

Stückelberg 专化要求可逆且非零的 $\theta$，规范不变量

$$
\hat\phi=\phi+d(\tilde\phi/\theta).
$$

即使 $\theta$ 随位置变化也要保留 $d(1/\theta)$；把它写作 $\phi+d\tilde\phi/\theta$ 只在 $\theta$ 常数时成立。通过规范变换令 $\tilde\phi=0$ 后得到 Proca 变量；这项局部操作还没有处理非平凡拓扑、规范群体积与全局零模。

### 同一 Robin 条件下的接触项关系

令 $x=\hat\Phi,y=\Upsilon$，固定 $F=x-\mathcal M y=\psi$、$\mathcal M\ne0$。两套边界项为

$$
D_1=-\frac{\mathcal M}2y^2,\qquad
D_2=\frac{x^2}{2\mathcal M}-xy,\qquad
D_2-D_1=\frac{F^2}{2\mathcal M}.
$$

所以两者路径积分在正确缩放的同一源上差一个局部源泛函的相位，归一化 bulk 插入不变，源导数产生的相关函数差接触项。强弱关系比较 $-\mathcal M$ 与 $\mathcal M^{-1}$。它不覆盖 $\mathcal M=0$，也不证明换了域或内部边界条件后仍等价。

## §3.2–3.3：质量如何进入近似守恒，反项如何选择极化

在论文的分量规范下，

$$
S_\Lambda=-\frac12\int\sqrt{|G|}
\left[\frac{\mathcal H^2}{n+2}+m^2\mathcal F^2\right],
\qquad
d^\dagger\mathcal H=m^2\mathcal F,\quad
d\mathcal F=(n+1)!\mathcal H.
$$

对第一式再取散度得到 $d^\dagger\mathcal F=0$（需要 $m^2\ne0$）。不能在 $m^2=0$ 后再除以质量，所得 gauge 结构发生变化。

这里

$$
\Delta_\pm=\frac{\lambda-3\pm\sqrt{(\lambda-3)^2+4m^2}}2,\quad
\mathcal F_\Xi=r^{-\Delta_-}K^-_\Xi+\cdots+r^{-\Delta_+}K^+_\Xi+\cdots,
$$

$$
\mathcal F_{r\Xi'}=r^{-\Delta_--3}X^-_{\Xi'}+\cdots+
r^{-\Delta_+-3}X^+_{\Xi'}+\cdots.
$$

切向方程的下一阶系数含 $[2(\Delta_+-\Delta_--2)]^{-1}(\Box K^-+2\,dX^-/n!)$，另一支交换 $+\leftrightarrow-$。这些式子要求非共振，不能跨过偶整数差而保留相同公式。

作者的“$\pm$”随后按 $\lambda$ 分支重新约定。为避免歧义，本笔记称接近零的指数为 $\Delta_{\rm small}$，另一个为 $\Delta_{\rm other}$：

$$
\Delta_{\rm small}=\frac{m^2}{3-\lambda}+O(m^4),\qquad \lambda\ne3.
$$

相应源式约束为

$$
\partial\cdot K^{\rm other}+\Delta_{\rm small}X^{\rm other}=0,
\qquad
\partial\cdot K^{\rm small}+\Delta_{\rm other}X^{\rm small}=0.
$$

只有第一条系数小。还须 $X^{\rm other}$ 有受控本构关系，才可称近似电流；若它随 $m^{-2}$ 发散，散度并不小。$\lambda=3$ 的质量展开非解析，论文明确留出，不可按此式讨论有质量自对偶点。

massive 裸边界变分为

$$
\delta S_\Lambda=-\int r^{1+\Delta_++\Delta_-}
\mathcal H_{r}{}^\Xi\delta\mathcal F_\Xi.
$$

两种缩放分别使场或动量有限。去发散后，有限交叉项不是同时保留：

$$
\delta S_{{\rm final},-}
=\int K^-\cdot\delta(K^+-\mathcal M_-K^-),\quad
\delta S_{{\rm final},+}
=\int K^+\cdot\delta(K^--\mathcal M_+K^+).
$$

每个式子只开一种 $\mathcal M$。以 $a=\Delta_-,b=\Delta_+$ 表示，裸有限一形式为 $aK^-\delta K^++bK^+\delta K^-$。动量反项去掉 $b\,\delta(K^-K^+)$，除以 $a-b$ 后得到第一极化；场反项去掉 $a\,\delta(K^-K^+)$，除以 $b-a$ 后得到第二极化。这个简短计算解释了为什么“换重整化方案”在这里也承担 Legendre 极化变化。

必须区分“有限局部反项的 scheme”与改变边界极化／源定义；不能从这段话推得固定物理问题的 scheme 任意改变可观测量。$[\mathcal M_-]=\Delta_+-\Delta_->0$，$[\mathcal M_+]<0$。大形变在合适字典下也能产生近似电对称，但必须跟踪源与算符互换、系数比和本构极限；小质量、强双迹、无质量磁字典是不同条件。

## §4：Hodge 对偶及其边界信息

无质量势的度数 $p\mapsto d-p-1$，即 $\bar\lambda\mapsto4-\bar\lambda$；有质量场的度数 $n+1\mapsto d-n-1$，即 $\lambda\mapsto6-\lambda$。后者需要同时映射

$$
\mathcal F'=v\star\mathcal H'',\qquad
\mathcal H'=(-1)^{n+1}m^2v\star\mathcal F''.
$$

这不是简单地令 massive 势变成自身的 Hodge star。要形成 involution，还需选定 $U,V$ 的乘积符号：

$$
U(\bar\lambda)U(4-\bar\lambda)=(-1)^{(d-p)(p+1)+1},
\quad
V(\lambda)V(6-\lambda)=\frac{(-1)^{(n+2)(d-n)}}{m^2}.
$$

质量趋零时 $V$ 的规范化奇异，不能把 massive 对偶直接连续认作 massless 势对偶。边界指数满足 $\Delta_+(6-\lambda)=-\Delta_-(\lambda)$；场强展开把电响应与磁数据相配，双迹耦合随指数比变换。对偶作用量变分还带阶乘和 $\operatorname{sgn}(m^2)$，并非未经重标度的相等作用量。

§4.2 从这一对应推至全息相关函数时，**明确要求 bulk 内部正则条件在对偶下协变**。方程和渐近系数的局部对应尚未证明完整积分测度、全局 flux sector、零模或量子反常匹配。标量和最高阶形式缺少某些对称，正文专门说明：保留“电／磁量子化”名称也不保证相应端点真的有该对称。

### 无质量自对偶响应约束

在 $\bar\lambda=2$、$d=2p+1$，自对偶解给出 $J=U(2)\ast\beta$。奇数 $p$ 要允许复化才有作者使用的自对偶解。使用平移与旋转对称背景、固定波矢方向以及电极化，可以把标量／矢量扇区响应关联。$p=1$ 的响应形式为

$$
\frac{\delta j^A}{\delta a_A}
\frac{\delta j^{\vec\mu}}{\delta a_{\vec\nu}}
=\left(1-\mathcal M_j\frac{\delta j_A}{\delta a_A}\right)
k^2\Pi^{\vec\mu\vec\sigma}
\left(\delta_{\vec\sigma}^{\vec\nu}
-\mathcal M_j\frac{\delta j_{\vec\sigma}}{\delta a_{\vec\nu}}\right).
$$

$\Pi$ 是横向投影，$k^2\Pi^{\mu\nu}=\eta^{\mu\nu}k^2-k^\mu k^\nu$。它是带上述对称、状态与边界条件的全息模型约束；不能只凭“有连续 higher-form symmetry”就对任意 QFT 套用。由一阶响应译成两点函数还要统一连接／非连接泛函与 $i\kappa^2$；下述记号失败使本笔记不直接使用原文最终相关函数的全部整体号。

## 推导依赖、方程账本与本地迁移

完整链条是：§1 源对称定义 → §2.1 径向根 → §2.2–2.4 变分与极化 → Appendix B 约束数据 → §2.5 反项和 $(a,j)$ → §3.1 缺陷与规范商 → §3.2 $K,X$ 及小指数 → §3.3 重整化极化 → §4 Hodge 映射／内部条件 → 特定自对偶响应关系。

| 可复用对象 | 来源及用途 | 使用前的条件 |
|---|---|---|
| $Y\,\delta F$ 与 $\Phi\,\delta F$ | §2.3–2.4，选择边界极化 | 先冻结作用量、整体号与可变源的函数空间 |
| $(a,j)$ | §2.5，Maxwell 边界响应 | 反项阶数完整；只开一类形变 |
| $F^2/(2\mathcal M)$ | §3.1.3，比较同一 Robin 问题的局部源项 | $\mathcal M\ne0$，相同内部域及源缩放 |
| $\partial\cdot K+\Delta_{\rm small}X=0$ | §3.2，受控破缺而非只看质量 | $\lambda\ne3$、非共振、$X$ 有限 |
| $K^\mp\delta(K^\pm-\mathcal M K^\mp)$ | §3.3，显式 renormalized CPS 数据 | 区分极化变化与固定极化的 scheme |
| 度数反射与指数映射 | §4.1–4.2，对偶测试 | 归一化、拓扑 sector、内部条件对应 |

迁移到 AdS quantization 时，先由这些边界一形式求 $\omega_{\partial}=\delta\Theta_{\partial}$，再讨论哪些变分满足边界条件并使 symplectic flux 消失。本文的全息“量子化”是源／响应选择；没有构造 Hadamard 态、Fock 空间，也没有给出 Peierls 与 CPS 逆关系。用于 gluing 时，$(a,j)$ 可作接口变量候选，双迹 Robin 项却不能自动当作 sewing relation：必须另外由双方作用量和方向符号导出匹配条件，保留全局 flux 与 holonomy。

## Checked、Failed 与明确的核验边界

Verified: Mathematica 独立检查了 indicial 根的和／积、两种边界变分的 Legendre/Robin 恒等式、接触项平方差、两种度数反射、反射后的指数、分支小质量系数；修正核验脚本后，径向下一阶递推、重根对数解和两种反项的有限交叉项也分别返回 0。xAct 对反对称 $J^{ab}$ 在平直可交换偏导下的 $\partial_a\partial_bJ^{ab}$ 返回 0，核验了缺陷守恒所用的局部反对称机制。

核验执行日志：第一版脚本误把 $(a+r\partial_r)f$ 写成 $a+r f'$，且动量反项的有限交叉项抄录错误；这些非零输出是检查器错误，未判为原文失败。修正后的较强简化调用曾在 30000 ms 超时；改用同一恒等式的直接 Simplify/Together 后四个残差全为 0。保留这些执行边界，避免把一次非零／超时当作论文结论。

Failed（限定为生成泛函的字面等式）：§2.2 的 source label eq:4.3，以及后续同类表达，把指数期望直接等同于 $\ln Z$；源旁文字用“一阶导数”解释简化，但这不能使完整泛函相等。在通常零源归一化 $Z[0]=1$ 下，$\ln Z[0]=0$，指数期望为 1。规范的处理是区分 $Z_{\partial}$ 与连接泛函 $\ln Z_{\partial}$；同一背景的一阶导数可一致，二阶导数一般还须去 disconnected 项。本笔记使用独立的边界变分推导，不依赖该字面等式或其未经修订的高阶相关函数归一化。

Assumptions: 固定 AdS、平边界、足够快横向衰减；二次非拓扑模型；可提升的源扰动；无所讨论阶的测度反常；$\theta$ 非零且可逆；质量根实、非共振、$\lambda\ne3$；近似守恒的本构系数受控；对偶下内部正则域一致。对负 $m^2$ 的代数式不等于已检查单位性。

Not verified: 一般维数的全部导数反项系数、任意秩 Hodge 映射的所有阶乘／符号、完整自对偶两点函数式、非平凡拓扑 sector、非微扰路径积分测度、Hilbert 空间正性、alternate quantization 的允许窗及一般 Robin 问题的 PDE 适定性。它们仍为 Source-derived 或额外条件。

Not independently verified: 大 $N$ holographic dictionary 的存在，论文引用的热态本构计算与双重缩放谱，以及将一般 Young 图记号扩展到混合对称张量的充分性。这里仅使用反对称形式的专化，没有把这种扩展当成一般表示论定理。

PDF evidence: 渲染并逐页查看 PDF 第 7、11、33、38、40 页，确认缺陷解释、作用量变分、两种 massive 缩放、对偶符号与端点／自对偶限制。其余公式按完整 TeX 导航重建，未声称逐页视觉确认全部 50 页。

## How to read this long paper

先读 §2.2–2.4 与 §3.1.3，掌握边界一形式与源字典，再读 §3.2 的两条散度约束；这会明确“近似”的实质条件。§2.5、§3.3 和 Appendix B 是做具体 AdS 边界条件时必须回查的技术部分，特别注意对数点和反项省略项。§4 的对偶应在上述变量字典稳定后阅读；§4.3 的高阶张量相关函数是特定模型的进一步结果。§1 的缺陷物理解释与 §5 的反常／自对偶开放问题提供背景，但已经在本笔记结构中保留。
