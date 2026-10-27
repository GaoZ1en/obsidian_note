---
paper id: 2610.21058v1
title: Regge Dilaton Gravity from BF Theory
authors:
  - Florian Girelli
  - Christopher Pollack
publication date: 2026-10-15
abstract: |-
  The paper relates discrete gauge and geometric descriptions of two-dimensional dilaton gravity. A ribbon refinement of BF theory is partially gauge fixed and pushed forward to lengths of homogeneously curved triangles. In the Euclidean flat and negative-curvature cases this produces a Regge measure; recovering a real dilaton constraint additionally requires the zero-winding sector.
comments: "45-page PDF; monograph-mode reconstruction including Appendices A and B"
url: https://arxiv.org/abs/2610.21058v1
summary: "从 ribbon BF 的规范约化推出曲三角形长度测度，并隔离周期亏角、定向分支、非幺模 Haar 因子与新增顶点规范体积。"
tags: []
---

# Regge Dilaton Gravity from BF Theory

本文对 regional sewing 最直接的用途，是给出一个可以逐步追踪的测度推前：
群变量的局部平坦性约束 → 三角形闭合 → 共享边长度匹配 → 长度积分。
它不直接给出一般边界条件下的 CPS 或 Hilbert-space sewing 定理。
下面重建 [v1 原文](https://arxiv.org/abs/2610.21058v1) 的完整论证；只有末尾列出的独立计算标为 **Checked**。

返回 [[2026_10_16_overview]]。理由：T1-boundary; T1-symplectic; T2-model。

## How to read this long paper

先读 §2 的曲三角形和 Regge 约束，再读 §4.1–4.3 的长度测度与 Theorem 4.6；
这给出最终对象及其适用域。随后回到 §3.4 和 Appendix B，检查为什么 Haar 测度不能当成普通平移不变测度。
最后用 Appendix A 理解离散 dilaton 方程如何成为相邻三角形法向导数匹配。

| 章节树 | 作用及后续依赖 |
|---|---|
| Introduction | 区分连续 BF/LDG 对应与离散路径积分测度对应；后者是本文任务 |
| §1.1 homogeneous spacetimes and isometries | 签名、曲率、等距代数、对偶配对与齐性空间 |
| §1.2 geometry from BF and dilaton gravity | 可逆 zweibein、torsion 约束及连续作用量 |
| §2.1.1 geometry of triangulation | 曲三角形、角、Gram 行列式；§4 的 Jacobian 输入 |
| §2.1.2 discretized action | 顶点 dilaton 与亏角耦合；Appendix A 的变分起点 |
| §2.2 path integral discretization | 长度域、测度、实值/整数 dilaton、圆盘边界 |
| §3.1 continuum to discrete | ribbon、triangle、vertex 三类面 holonomy |
| §3.2 gauge transformations; §3.2.1 standard BF | corner gauge action、树约化与标准 BF 的联系 |
| §3.3 Pachner invariance | 群 delta 卷积以及 rooted 3↔1 的规范体积 |
| §3.4.1 Iwasawa decomposition | Cartan 平移不闭合的修复；实分解存在域 |
| §3.4.2 partial gauge fixing | 保留 triangle 的 AN 约束与 vertex 的 H 约束 |
| §4.1 triangle closure | 发展到齐性空间、长度与闭合三角形 |
| §4.2 edge-adapted frames | 残余旋转固定、边匹配、亏角模 2π |
| §4.3.1 recovery of Regge | Lemma 4.5、Theorem 4.6；最终测度推前 |
| §4.3.2 Regge Pachner moves | 凸四边形换对角线、固定新增顶点后的 3↔1 |
| Conclusion | 汇总 Euclidean Λ≤0 结果；其他签名与全局扩展仍需处理 |
| Appendix A | 角导数、ambient dilaton 插值、法向导数 sewing |
| Appendix B | 非幺模积分、dressing Jacobian 与 modular factor |

§1 的其他签名模型、§3.3 的完整 ribbon 图是背景与技术参考，但其条件不能从最终定理中省略。
Acknowledgments 与 bibliography 不含额外计算链。

## 记号、作用量与适用域

内部指标 a,b=0,1，时空指标 μ,ν=0,1。原文约定
$$
\eta_{ab}=\operatorname{diag}(\sigma,1),\quad
\epsilon_{01}=1,\quad \epsilon^{01}=\sigma,\quad
\Lambda=\kappa/l^2,\qquad \sigma=\pm1.
$$
曲率半径 l 与各边长度 l_e 不同。最后的测度定理取 σ=1、κ=0,-1。
G 是等距群，H 是固定基点 x_0 的 stabilizer，X=G/H；Euclidean 情形 H=SO(2)。

| 对象 | 定义及注意事项 |
|---|---|
| J,P_a | Cartan 基；P_a 在 Λ≠0 时不构成子代数 |
| A=ωJ+e^aP_a | connection；e 必须可逆才有通常的几何解释 |
| $B=\Phi\tilde J+X_a\tilde P^a$ | g* 值零形式，使用 canonical dual pairing |
| P'_a=P_a-n_aJ | Iwasawa 基，n_an^a=-σΛ，dn=δn=0 |
| Ω=ω+n_ae^a, χ_a=X_a-Φn_a | 同一 A、B 的新分量，并非新增自由度 |
| L_i∈AN, h∈H | 部分规范固定后的长边与短边数据 |
| C_Λ,S_Λ | 曲三角函数，S_0(s)=s |
| V_{τ,Λ} | 长度变换 Jacobian；一般不等于曲三角形面积 |
| δ_v=2π-Σ_{τ∋v}β_v^τ | 内部顶点亏角；δ_{2π} 与 δ_R 必须区分 |

原文的 Lie brackets 与曲率分解是
$$
[J,P_a]=\epsilon_a{}^bP_b,\qquad
[P_a,P_b]=\sigma\Lambda\epsilon_{ab}J,
$$
$$
\mathcal F=FJ+T^aP_a,\qquad
F=d\omega+\frac{\sigma\Lambda}{2}\epsilon_{ab}e^a\wedge e^b,\qquad
T^a=de^a+\omega\wedge e^b\epsilon_b{}^a.
$$
canonical pairing 为 $\langle J,\tilde J\rangle=1$、$\langle P_a,\tilde P^b\rangle=\delta_a^b$，其余为零。
因此
$$
S_{\rm BF}=-\frac1{8\pi G_N}\int(X_aT^a+\Phi F).
$$
在 Euclidean、给定定向、可逆 e 且 T=0 时，原文取
dω=-R vol/2，ε_{ab}e^a∧e^b/2=vol，得到
$$
S_{\rm LDG}=\frac1{16\pi G_N}\int\sqrt g\,\Phi(R-2\Lambda).
$$
这里省略边界项。不能把这个 bulk 等式直接当成选定 ensemble 的变分原理。
原文 §3.4 的结构推导省略共同作用量系数；与本节物理作用量对应时须恢复系数和符号。

变分给出 R=2Λ 及
$$
\nabla_\mu\nabla_\nu\Phi-g_{\mu\nu}\nabla^2\Phi-\Lambda g_{\mu\nu}\Phi=0.
$$
取迹先得 ∇²Φ=-2ΛΦ，再代回得 ∇_μ∇_νΦ=-Λg_{μν}Φ。
这也是 Appendix A 的局部插值方程。

## 曲三角形如何替代平直 Regge 单形

定义
$$
C_\Lambda(s)=
\begin{cases}\cos(\sqrt\Lambda s),&\Lambda>0,\\1,&\Lambda=0,\\
\cosh(\sqrt{-\Lambda}s),&\Lambda<0,\end{cases}
\quad
S_\Lambda(s)=
\begin{cases}\sin(\sqrt\Lambda s)/\sqrt\Lambda,&\Lambda>0,\\s,&\Lambda=0,\\
\sinh(\sqrt{-\Lambda}s)/\sqrt{-\Lambda},&\Lambda<0.\end{cases}
$$
满足 C²+ΛS²=1，C'=-ΛS，S'=C。
令 a,b,c 分别对着 α,β,γ。Λ≠0 时余弦律为
$$
\cos\alpha=\frac{C_\Lambda(a)-C_\Lambda(b)C_\Lambda(c)}
{\Lambda S_\Lambda(b)S_\Lambda(c)}.
$$
Gram 矩阵和 Jacobian 为
$$
\mathsf G=
\begin{pmatrix}
1&C_\Lambda(c)&C_\Lambda(b)\\
C_\Lambda(c)&1&C_\Lambda(a)\\
C_\Lambda(b)&C_\Lambda(a)&1
\end{pmatrix},\qquad
V_{\tau,\Lambda}=\frac{\sqrt{\det\mathsf G}}{|\Lambda|}
=S_\Lambda(b)S_\Lambda(c)\sin\alpha.
$$
平方根取非退化正分支。平直极限 V_{τ,0}=2A_τ；
曲面面积则为 A_τ=(α+β+γ-π)/Λ。把 V 当成面积会改变测度。

每个三角形内部已有 R=2Λ，作用量的平滑曲率项与 cosmological term 抵消；
剩余顶点曲率集中量 2δ_v 给出
$$
S_{\rm Regge}=\frac1{8\pi G_N}\sum_{v\in V^0}\Phi_v\delta_v.
$$
边界顶点的处理需另行给定，圆盘表达式只在内部顶点加平坦性约束。
Φ 变分要求 δ_v=0；边长变分则给出
$$
\sum_{\tau\supset e}\sum_{v\in\tau}\Phi_v
\frac{\partial\beta_v^\tau}{\partial l_e}=0,
$$
整体负号对等于零的方程无影响。

原文先提出的几何测度是
$$
d\mu_\Delta(l)=
\prod_{e\in E}S_\Lambda(l_e)\,dl_e
\prod_{\tau\in T}V_{\tau,\Lambda}^{-1}.
$$
其长度域 D_Δ 必须满足所有三角不等式、非退化性和选定定向。
实值 Φ 的 Fourier 积分产生 δ_R(δ_v)，整数化 multiplier 产生周期 delta。
共同 Fourier 归一化与 G_N 的缩放需保持一致；正式分布等式不保证非紧积分收敛。

## Ribbon BF：保留哪些离散变量和约束

ribbon refinement 在每个 corner (τ,v) 放置群规范变换。
每条原边两侧有 long-edge 数据，两端用 short-edge 数据连接。
选定局部朝向后，ribbon 平坦性可写成
$$
W_e=h_s\ell_Lh_t^{-1}\ell_R^{-1}=1.
$$
另有 triangle holonomy G_τ=L_1L_2L_3 与 vertex holonomy R_v=有序短边乘积。
一般 ribbon 表达式包含三类 group delta：
$$
Z_{\rm rib}[\mathcal O]\sim
\int\prod_{\text{refined edges}}dg\,
\prod_e\delta_G(W_e)
\prod_\tau\delta_G(G_\tau)
\prod_v\delta_G(R_v)\,\mathcal O.
$$
“∼”保留冗余约束、root 及规范体积归一化的依赖，不能作为无条件有限等式。

corner gauge action 对 holonomy 作共轭；unimodular G 的 Haar 测度和群 delta
保证相应局部不变性。通过选树把一部分 short edges 固定为单位元，
ribbon 平坦性可合并两侧 long edges，恢复标准 lattice BF。
这一步将 ribbon 数据消去；后面的 split gauge fixing 则刻意保留它们。

§3.3 的局部 move 使用基本卷积
$$
\int_Gdg\,\delta_G(ag^{-1})\delta_G(gb)=\delta_G(ab).
$$
2↔2 是对同一边界 holonomy 的不同积分顺序；
3↔1 还涉及内部规范冗余与 root。非紧群下形式上的“除规范体积”
必须和具体测度定义一起处理。下文的有限群控制检查只检验代数/归一化结构。

## Iwasawa 分解与不能忽略的 Haar 因子

由于 [P_a,P_b] 含 J，直接把 Cartan torsion 当成独立平移子群约束会失败。
取 P'_a=P_a-n_aJ 后，
$$
[J,P'_a]=\epsilon_a{}^b(P'_b+n_bJ),\qquad
[P'_a,P'_b]=\epsilon_{ab}n^cP'_c.
$$
新 P' 张成 an 子代数。保持 canonical pairing 需同时取
$$
\tilde J'=\tilde J+n_a\tilde P^a,\quad
A=\Omega J+e^aP'_a,\quad B=\Phi\tilde J'+\chi_a\tilde P^a.
$$
若新曲率写成 $\mathcal F=\mathcal RJ+\mathcal G^aP'_a$，
则 $\mathcal G^a=T^a$、$\mathcal R=F+n_aT^a$，
从而 $\Phi\mathcal R+\chi_a\mathcal G^a=\Phi F+X_aT^a$。

Euclidean Λ<0 有实 AN 分解，Λ=0 为平移半直积；
Euclidean Λ>0 的 n 必须复化，不能套用本文实长度测度定理。
曲 Lorentzian 情形的分解只局部可用，且距离/因果类型需要单独处理。

同一群元有两种分解
$$
g=h\ell=\tilde\ell\tilde h,\qquad
dg=dh\,d_R\ell=d_L\tilde\ell\,d\tilde h.
$$
这里 AN 一般非幺模。Appendix B 定义
$$
d_R(\ell_0\ell)=\Delta_R(\ell_0)d_R\ell,\qquad
d_L\ell=d_R(\ell^{-1})=\Delta_R(\ell)^{-1}d_R\ell.
$$
左 H dressing 保持 d_L，右 H dressing 保持 d_R，而混用左右测度会出现
$$
J^R_h(\ell)=\frac{\Delta_R(h\triangleright\ell)}{\Delta_R(\ell)},\qquad
J^L_h(\tilde\ell)=\frac{\Delta_R(\tilde\ell)}
{\Delta_R(\tilde\ell\triangleleft h)},\qquad
K_\ell(h)=\Delta_R(\ell\triangleleft h)^{-1}.
$$
这些 Jacobian 是部分规范固定的必要输入。例：Λ=-1 的上半平面模型，
AN 乘法 (x,y)(x',y')=(x+yx',yy')，y>0，满足
d_L=dxdy/y²，d_R=dxdy/y，Δ_R=y。

§3.4.2 在 triangle 上消去 H 部分，在 vertex 上消去 AN 部分，
保留 triangle 的 δ_AN(G_τ) 与 vertex 的 δ_H(R_v)，以及 ribbon gluing。
非幺模 delta 对切换基点不严格不变，例如
$$
\delta_{AN}(L_1^{-1}G_\tau L_1)=
\Delta_R(L_1)\delta_{AN}(G_\tau).
$$
因此 cilium/root 的移动必须连同测度因子一起计算。
圆盘通过添 exterior face τ_0，并选择 vertex root v_*，去掉相应冗余约束；
边界数据的保留方式参与最终振幅定义。

## 从群闭合到长度匹配与亏角

AN 在 X=R² 或 H² 上单传递作用。定义
$$
l(\ell)=d_X(x_0,\ell x_0).
$$
该量对相关 H dressing 和 inversion 不变。由 ribbon equation 得两侧长度相等。
三角形闭合 L_1L_2L_3=1 允许选发展点
$$
q_1=1,\qquad q_2=L_1,\qquad q_3=L_1L_2,\qquad
x_i=q_ix_0.
$$
各 l_{ij}=d_X(x_i,x_j)，构成选定定向的几何三角形。

§4.2 把每个三角形的一条指定边方向固定，角变量 φ_τ=0；
旋转 gauge 的局部 FP 为 1。非退化性与方向分支避免重复计数。
沿顶点走过所有三角形，短边 H holonomy 给出
$$
R_v=\exp\!\left[-\sum_{\tau\ni v}\beta_v^\tau J\right]
=\exp(\delta_vJ).
$$
等号使用 SO(2) 的 2π 周期性，因此 R_v=1 只能推出 δ_v∈2πZ。
它不是实数 δ_v=0 的同义表达。

每条共享边短边变量积分的关键结果为
$$
\frac{\delta_{\mathbb R}(l_e^L-l_e^R)}{S_\Lambda(l_e^L)}.
$$
分母是径向 Jacobian。若把边 gluing 写成裸 delta，就会错误地留下两份径向权重。

## Lemma 4.5 的测度推前与 Theorem 4.6

先固定一个三角形的方向分支。闭合 delta 消去 L_3 后，改用 q_2,q_3：
$$
\prod_{i=1}^3d_RL_i\,\delta_{AN}(L_1L_2L_3)
\longrightarrow d_R(q_2^{-1}q_3)d_R(q_3^{-1})
=d_Lq_2d_Lq_3.
$$
最后一个等式包含 inversion 与非幺模因子；不是随意把 R 换成 L。
再用 X 的极坐标，
$$
d_Lq_2d_Lq_3=
S_\Lambda(l_{12})dl_{12}S_\Lambda(l_{13})dl_{13}
\,d\varphi_\tau\,d\beta_1.
$$
δ_{2π}(φ_τ) 去掉整体方向，余弦律给出
$$
\frac{\partial\beta_1}{\partial l_{23}}
=\frac{S_\Lambda(l_{23})}{V_{\tau,\Lambda}}.
$$
因此一个 triangle 的输出是
$$
\frac{\prod_{e\subset\tau}S_\Lambda(l_e)dl_e}{V_{\tau,\Lambda}}.
$$
共享边上的两份 S dl 与前节的 δ(l_L-l_R)/S 相乘并积分，
只留下单份 S(l_e)dl_e。对全剖分操作得到
$$
Z_{\rm BF,split,red}^{\Delta,D}[\mathcal O]
=\int_{D_\Delta}d\mu_\Delta(l)
\prod_{v\in V^0}\delta_{2\pi}(\delta_v)\,\mathcal O(l).
$$
这是原文 Theorem 4.6 的实质内容：Euclidean Λ≤0、圆盘、非退化一致定向扇区，
及前述规范固定/归一化下的形式积分。

由
$$
\delta_{2\pi}(\theta)=\sum_{w\in\mathbb Z}\delta_{\mathbb R}(\theta-2\pi w)
$$
可知，在每个内部顶点限制 |δ_v|<π 后，只有 w=0，
于是得到实值 dilaton 的 Regge 积分。实 delta 已支撑于零亏角，
故其积分域可再扩回原几何域。这里的“扩回”不允许把 BF 一侧的非零绕数重新加入。

## Pachner moves：共同几何域与新增顶点位置

2↔2：固定一个凸测地四边形的四条边，两个对角线是同一几何的一组替代坐标。
共同点测度推前给出
$$
\frac{S_\Lambda(l_{13})|dl_{13}|}{V_{123,\Lambda}V_{134,\Lambda}}
=
\frac{S_\Lambda(l_{24})|dl_{24}|}{V_{124,\Lambda}V_{234,\Lambda}}.
$$
绝对值对应测度；不能把两条对角线当成独立积分变量。
边界顶点处两小角相加仍是四边形角，故嵌入更大剖分时周围亏角约束不变。
凹/折叠/退化扇区不由此局部论证覆盖。

3↔1：在三角形 (123) 内插入点 0，τ_i=(0123)\{i}。
零亏角支撑上，固定 l_{01},l_{02} 后有
$$
\left|\frac{\partial\delta_0}{\partial l_{03}}\right|
=\frac{S_\Lambda(l_{03})V_{123,\Lambda}}
{V_{023,\Lambda}V_{013,\Lambda}}.
$$
这是相邻角导数与 sin(α+β) 恒等式的组合。
积分掉 l_{03} 后，
$$
\frac{\prod_{i=1}^3S_\Lambda(l_{0i})dl_{0i}}
{V_{023,\Lambda}V_{013,\Lambda}V_{012,\Lambda}}
\,\delta_{\mathbb R}(\delta_0)
\longrightarrow \frac{d_Lq_0}{V_{123,\Lambda}},
$$
其中 d_Lq_0=S(l_{01})dl_{01}S(l_{02})dl_{02}/V_{012}。
三个内部角均在 (0,π)，所以 -π<δ_0<2π，此局部 move 的周期 delta 只支持零值。

新增点位置还必须规范固定。选 a,b 定位同一定向分支上的唯一点，插入
$$
\frac{V_{012,\Lambda}}{S_\Lambda(l_{01})S_\Lambda(l_{02})}
\delta_{\mathbb R}(l_{01}-a)\delta_{\mathbb R}(l_{02}-b).
$$
其对 d_Lq_0 的积分为 1，于是三三角形振幅等于 1/V_{123}。
未固定时为 V_{123}^{-1}∫d_Lq_0；不能宣称两者已经相等。

## Appendix A：离散 dilaton 方程为何匹配法向导数

对边 a 的角导数为
$$
\frac{\partial\alpha}{\partial a}=\frac{S_\Lambda(a)}V,\quad
\frac{\partial\beta}{\partial a}=-\frac{S_\Lambda(b)\cos\gamma}V,\quad
\frac{\partial\gamma}{\partial a}=-\frac{S_\Lambda(c)\cos\beta}V.
$$
因此一个三角形对该边的 length equation 贡献是
$$
\frac{S_\Lambda(a)\Phi_i-S_\Lambda(b)\cos\gamma\,\Phi_j
-S_\Lambda(c)\cos\beta\,\Phi_k}{V}.
$$
这给出可直接比较的局部边数据，而不只是一条存在性陈述。

对 Λ≠0，把三角形嵌入常曲率 quadric，三个顶点值决定常 ambient vector Φ_τ，
令 Φ(X)=Φ_τ·X。由嵌入 Hessian ∇_μ∇_νX=-Λg_{μν}X，
该插值在三角形内部严格满足 dilaton 方程。平直情形使用 affine 插值。
沿边 ij 的显式表达式为
$$
\Phi_{ij}(s)=C_\Lambda(s)\Phi_i+
\frac{S_\Lambda(s)}{S_\Lambda(l_{ij})}
\big[\Phi_j-C_\Lambda(l_{ij})\Phi_i\big],\qquad 0\le s\le l_{ij}.
$$
它在两个端点取给定值，并满足 Φ''=-ΛΦ；Λ→0 时成为线性插值。

以 a=l_{jk},b=l_{ik},c=l_{ij}，选与 Appendix A 相同的单位法向，
可从顶点 j 出发写出
$$
D_n\Phi\big|_j=
\frac{S_\Lambda(a)\Phi_i-S_\Lambda(b)\cos\gamma\,\Phi_j
-S_\Lambda(c)\cos\beta\,\Phi_k}{V}.
$$
相邻三角形使用相反外法向，length equation 就是两侧法向导数匹配。
公共端点值已经保证切向插值一致；沿边平行移动 n 后，
∇_t(D_nΦ)=∇²Φ(t,n)=-Λg(t,n)Φ=0，
所以一个端点的法向匹配延伸到整条边。
这一解释依赖非退化发展图和零亏角几何；不证明任意带绕数构型的全局光滑场存在。

## 方程账本与 regional sewing 的可用对象

| 论证节点 | 输入 | 输出与限制 |
|---|---|---|
| 连续 BF→LDG | canonical pairing、T=0、可逆 e、定向 | bulk action 与 Hessian equation；边界项未指定 |
| 曲三角形余弦律 | 常曲率、有效长度域 | V=S_bS_c sinα，角导数与面积区别 |
| ribbon→split | Iwasawa、树固定、左右 Haar 与 modular factor | AN triangle / H vertex 约束 |
| Lemma 4.5，原文 (171)–(174) | AN 闭合、一个方向分支 | triangle 长度测度与共享边 S 因子抵消 |
| Theorem 4.6，原文 (175)–(178) | 圆盘、Λ≤0、非退化一致定向 | 周期亏角积分；零绕数限制后为实 LDG |
| §4.3.2 | 共同凸几何域、规范固定 | 2↔2 测度相等及 rooted 3↔1 |
| Appendix A | angle derivatives、ambient 插值 | length equation 作为法向 sewing |
| Appendix B | G unimodular、AN 非幺模 | dressing Jacobian 与规范固定权重 |

可以复用三项明确对象：共享边 kernel δ(l_L-l_R)/S(l_L)；
三角形权重 ∏Sdl/V；由 dilaton 顶点数据重建的边值/法向导数。
它们提供“先约束再推前”是否与“先分区域再 glue”相容的离散试验台。

若要移植到 vault 的 CPS，需要从含边界项的 BF 作用量重新确定 θ、角点变量、
允许的 gauge transformations 及边界 polarization，再确定哪些群变换被商去、哪些保留为边界自由度。
本文的群积分 gauge fixing 本身不等于 presymplectic reduction；
局部 Pachner invariant measure 也不自动给出量子态内积、正性或 Hilbert 空间分解。

## Verification log

**Verified / Checked（独立计算）**

- Sage：对 σ=±1、Λ=0,±1 六组归一化代数，全部 27 个基三元组 Jacobi、
  Iwasawa bracket、对偶基配对与 n 的归一化通过。σ=1,Λ=1 使用复 n，
  只检查复化代数，不证明球面实 AN 分解。
- Mathematica：Gram 行列式恒等式、正负曲率余弦律的 opposite/adjacent 角导数、
  法向插值所需三角恒等式、两种曲率的平直极限 V²→4A² 均为零残差。
  初次 adjacent-angle 检查模板漏掉 S_b/S_c 因子；按源公式修正检查式后两种曲率残差为零。
  这是检查模板错误，未据此宣称原文 Failed。
- Mathematica：在 AN=(x,y),y>0 实模型中，左右 Haar 不变性、Δ_R=y、
  inversion、(171) 的 triangle Haar 推前，以及 H dressing 的左右测度/Jacobian、
  Appendix B 的 K 因子均通过显式坐标求导。
- Sage：有限群 S_3 上逐项求和检验卷积 36 例、2↔2 循环边界 1296 例、
  rooted 3↔1 216 例，全部通过。仅为精确有限群控制，不是非紧 G 收敛证明。
- Mathematica：3↔1 的亏角导数分子化为 sin(α+β) 恒等式，零残差；
  双曲和平直菱形族的 2↔2 Jacobian 通过。一般凸四边形等式保留前文的几何推前论证，
  不标为已穷尽计算所有四边形。
- xCoba：分别取 ds²=dr²+sinh²r dφ² 与 ds²=dr²+sin²r dφ²，
  用三个 ambient coordinate 模式的任意线性组合构造 Φ；
  ∇∇Φ+ΛgΦ 的全部 2×2 分量为零。球面计算仅检查 Appendix A 局部恒等式，
  不扩大 Theorem 4.6 的 Λ≤0 范围。

**Assumptions**

固定曲率、Euclidean Λ≤0 的全局实 split、圆盘、非退化一致定向三角形、
共同非折叠几何域、固定 root/cilium 与 Haar 归一化。实 LDG 对应另加零绕数；
3↔1 另固定新增顶点位置。Hessian 坐标计算在极坐标非奇点区域完成，
曲率半径归一为 1，其余半径由缩放恢复。

**Blocked / recovered computation**

首次把两个 metric 的嵌套 scalar Hessian 放在一个 xAct 调用，返回
“Process execution timed out after 120000 ms.”。
随后分别把梯度定义为 covector CTensor，再逐分量计算，双曲/球面均成功；
没有剩余服务阻塞。PDF 字体提取告警已用 TeX 和渲染页交叉核对；
主定理与 Pachner 公式页（PDF pp.32–33）已视觉检查。

**Failed**

本篇没有保留下来的独立计算反例。源公式在给定范围内通过的局部检查，
不意味着下列未完成事项已被证明。

**Not verified / Not independently verified**

非紧分布积分的收敛与正则化独立性、退化/折叠构型、非平凡拓扑、
Lorentzian 全局分解、正曲率实测度、任意边界条件下的 CPS/荷代数、
量子内积与全局 measure sewing 未独立证明。
全部主要章节及有用附录已重建；这些限制是证据边界，不是省略技术章节的替代物。
