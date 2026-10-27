---
paper id: 2610.18959v1
title: Arithmetic of Duality Defects in 4d Maxwell Theory
authors:
  - Damian van de Heisteeg
  - Ling Lin
  - Giacomo Maggiorotti
publication date: 2026-10-13T18:00
abstract: |-
  The paper relates rational Maxwell duality defects to complex multiplication, constructs integer Chern-Simons wall theories using Smith decompositions and continued fractions, and analyzes condensation and decoupled sectors through lattice quotients and explicit examples.
comments: "63 pages, 7 figures"
url: https://arxiv.org/abs/2610.18959v1
summary: "Maxwell 界面的整数 CS completion 与融合格商；独立复现主要算例，并隔离 v1 的矩阵、子格及量子等价范围问题。"
tags: []
---

# Arithmetic of Duality Defects in 4d Maxwell Theory

这篇可直接用于构造 Maxwell 区域界面的整数 Chern–Simons 模型，并计算融合时保留下来的凝聚群与解耦扇区。**不能无修改地照抄 v1：** Eq. (2.18)、§6.1 的 $D^2=1$ 与 Eq. (6.7)、Eq. (6.42) 的子格及其最小磁荷均有明确算术错误；下文使用独立重算后的公式。主干的响应矩阵、CM 二次型、Schur complement、多个融合格商和显式解耦 $U(1)_{-2}$ 扇区通过检查。唯一性须保留“模掉解耦可逆 TQFT”的条件。

[Official v1](https://arxiv.org/abs/2610.18959v1)；当日入口：[[2026_10_15_overview]]。理由：`T1-boundary; T1-symmetry; T2-model; T3-math`。这是完整长文重建与有限/符号检查，不是一般缺陷范畴或全部量子等价性的证明。

## 全文树与 How to read this long paper

1. Introduction：由 Maxwell 的电磁荷格导入辅助二环面及 CM。
2. 1-form symmetries and topological defects：2.1 Maxwell、线/面算符、电磁对偶；2.2 离散 gauging；2.3 half-space gauging、duality/triality 与 Smith 歧义。
3. Arithmetic characterization：3.1 stress tensor continuity；3.2 CM 二次型与丢番图参数；3.3 generalized duality defects、算符作用与唯一性问题。
4. Worldvolume Chern–Simons theory：4.1 一般壁作用量；4.2 invertible $SL(2,\mathbb Z)$ 壁、continued fractions、word relations；4.3 non-invertible 壁；4.4 Smith decomposition 的唯一性。
5. Fusion rules：5.1 condensation 与 decoupled TQFT；5.2 格交/格商；5.3 worldvolume 理论。
6. Examples：6.1 duality/triality；6.2 $\tau=i$ 的 Pythagorean 缺陷；6.3 $\tau=i\sqrt{11}$ 的混合凝聚与解耦；6.4 $\tau=3i/2$ 超越固定 frame 的电 gauging with torsion。
7. Conclusions：完整 fusion algebra、一般 TQFT 类型与其他理论的推广仍开放。
A. Orders of condensation defects and decoupled TQFTs：格指数推导。
B. Equivalence under Smith decompositions：四步消元、primitive null vector、unimodular complement、contact term。

核心阅读顺序 2.1–2.3 → 4.1 → 3.1–3.3 → 4.2–4.4 → 5 → 6.2–6.3。A/B 是公式迁移时必要的技术参考；6.1 是检查符号的基准但有错误；6.4 展示双侧 duality wall 的必要性，需用本笔记修正的子格。1/7 为背景与开放问题，不能代替中间构造。

## §2：固定 Maxwell 与荷格约定

论文采用 Euclidean 作用量与 spin 四流形，后者使完整 $SL(2,\mathbb Z)$ 对偶群可用：

$$\mathcal L=\frac1{4\pi g^2}F\wedge *F+\frac{i\theta}{8\pi^2}F\wedge F,
\quad\tau=\frac\theta{2\pi}+\frac i{g^2},
\quad\widetilde F=-\frac i{g^2}*F+\frac\theta{2\pi}F.$$

无带电物质，$dF=d\widetilde F=0$。电磁 field-strength 列向量为 $(\widetilde F,F)^T$，genuine Wilson–'t Hooft 荷格 $\Gamma=\mathbb Z^2$。$q=(q_1,q_2)$ 中 't Hooft 线指数采用 $-iq_2\int\widetilde A$，不是正号。面算符

$$\eta_r(\Sigma)=\exp i\int_\Sigma(r_1F-r_2\widetilde F),\quad r\in\mathbb R^2/\mathbb Z^2$$

与线的 linking phase 由

$$J(r,s)=r^T\begin{pmatrix}0&-1\\1&0\end{pmatrix}s$$

给出。$M\in SL(2,\mathbb Z)$ 同时令 $\tau\to M\cdot\tau$、$(\widetilde F,F)^T\to M(\widetilde F,F)^T$、$q,r\to Mq,Mr$。这里荷并非 $M^{-T}q$，原因是采用反对称配对。

### 离散 gauging 是先改 genuine 子格，再作归一化

gauging 电 $\mathbb Z_N$ 保留 $\Delta=\langle(N,0),(0,1)\rangle$；其 Dirac-dual 格为 $\Delta^\vee=\langle(1,0),(0,1/N)\rangle$。加入 twisted generator $(p,1/N)$ 后，

$$\Gamma'=\left\langle(N,0),(p,1/N)\right\rangle,\quad p\in\mathbb Z_N,
\qquad R=\begin{pmatrix}1/N&-p\\0&N\end{pmatrix},$$

$$R\Gamma'=\mathbb Z^2,\qquad\tau'=\tau/N^2-p/N.$$

$R$ 是新基矩阵的逆。离散 torsion 依赖荷格基的选择。按此负号，$R=\operatorname{diag}(1/N,N)T^{-pN}$；源文部分段落写成正指数，不能同时保持 Eq. (2.14)/(6.38) 的负号。

half-space gauging 后再加 duality wall，若 $D\cdot\tau=\tau$，得到同理论内部的 topological defect。荷 $q$ 穿过后变成 $Dq$；$Dq$ 非整数时，平移线需带面附件，piercing 则可在线壁上终止。这个机制是 quantum line/surface 数据，不能从 classical stress matching 独自恢复。

## §3：stress continuity → CM → Smith

### 3.1 界面两侧的 coupling 必须匹配

在量子化场强基中定义正定配对

$$E(\tau)=\frac1{\operatorname{Im}\tau}
\begin{pmatrix}1&-\operatorname{Re}\tau\\-\operatorname{Re}\tau&|\tau|^2\end{pmatrix},
\quad q^TEq=\frac{|q_1-q_2\tau|^2}{\operatorname{Im}\tau}.$$

$F_L^{\rm doublet}=DF_R^{\rm doublet}$ 下应力连续要求

$$D^TE(\tau_L)D=E(\tau_R),\qquad\tau_L=D\cdot\tau_R.$$

同理论缺陷满足 $D\cdot\tau=\tau$。排除 $D=\pm I$ 后，特征值为 $c_D\tau+d_D$ 及共轭，模长为 1，故 $(\operatorname{tr}D)^2<4$。这里必须用绝对 trace 条件；源文随后省略平方的分类文字不够准确。$\pm I$ 在任意 coupling 均存在，不能被严格不等式删掉。

### 3.2 有理保二次型变换的参数化

为避免与矩阵元素混淆，二次型整数仍用原文 $a,b,c$，矩阵元素加下标 $a_D,b_D,c_D,d_D$。若非平凡有理 $D$ 固定上半平面的 $\tau$，fixed-point equation 是有理二次方程。取 primitive 整数三元组

$$a\tau^2+b\tau+c=0,\quad d=4ac-b^2>0,\quad
\tau=\frac{-b+i\sqrt d}{2a},\quad E=\frac1{\sqrt d}\begin{pmatrix}2a&b\\b&2c\end{pmatrix}.$$

辅助格 $\Lambda=\mathbb Z+\tau\mathbb Z$ 的 CM algebra 为 $\mathbb Q(a\tau)$，整数 endomorphism ring 是 $\mathbb Z+a\tau\mathbb Z$。取 norm-one 元素 $\alpha=(m+na\tau)/k$，则

$$m^2-bmn+acn^2=k^2,\qquad
D_{m,n,k}=\frac1k\begin{pmatrix}m-bn&-cn\\an&m\end{pmatrix}.$$

这同时保证 $\det D=1$ 和 $D^TED=E$。$m,n$ 取互素、$k>0$；$a,b,c$ primitive，除去公共因子后 $k$ 为最小公分母。此分类针对论文的最小 rational duality-defect construction；不排除任意 coupling 下已有的 condensation defects，也不覆盖 $SL(2,\mathbb R)$ 扩展。

**必须修正的几何措辞。** 非整数有理 $D$ 一般不把 $\Lambda$ 映回自身，因此不是固定环面 $\mathbb R^2/\mathbb Z^2$ 的普通单值自映射。它是 rational isometry/commensurability correspondence；$kD$ 才是整数 isogeny，degree 为 $k^2$。例如 $D_{3,4,5}(1,0)=(3/5,4/5)$，而 $(1,0)$ 和 $(0,0)$ 在原环面是同一点。以下格商是良定义的；不要将其不加限定地称为这个不存在的普通环面映射的 kernel。

### 3.3 单次循环 gauging 的构造及算符格

$kD$ 是 primitive 整数矩阵且行列式 $k^2$，Smith invariants 为 $(1,k^2)$，故

$$D=UG_kV,\quad G_k=\operatorname{diag}(1/k,k),\quad U,V\in SL(2,\mathbb Z).$$

这把缺陷表示成左右 duality walls 包围一次电 $\mathbb Z_k$ gauging。令 $V^{-1}=(v_1,v_2)$，

$$\Gamma(D)=\mathbb Z^2\cap D^{-1}\mathbb Z^2=\langle kv_1,v_2\rangle,
\quad\mathbb Z^2/\Gamma(D)\cong\mathbb Z_k,$$

$$\mathcal Z(D)=\frac{\mathbb Z^2+D^{-1}\mathbb Z^2}{\mathbb Z^2}
=\langle v_2/k\rangle\cong\mathbb Z_k.$$

前者描述可穿过的 genuine lines；后者描述能从右侧终止于壁的 symmetry surfaces。两者由 Dirac pairing 作 Pontryagin dual。**非退化 pairing 的含义是每个非零元素可被某个 character 检出，不是任意两个非零元素都配成非平凡相位。** $\mathbb Z_4$ 中 $2\cdot2/4=1$ 即反例，修正 §3.3 的过强脚注。

Smith 分解不唯一；只比较 $D$ 和荷作用还不能排除解耦 TQFT。下一节才控制这个歧义。

## §4：整数壁作用量与有理响应

### 4.1 边界变分确定响应矩阵

两侧 Maxwell 加壁作用量。内部 $U(1)$ 场为 $a^I$，外部为 $A_L,A_R$：

$$S_W=\frac i{4\pi}\int_W(K_{IJ}a^I da^J+2Q_I{}^r a^I dA_r+P^{rl}A_r dA_l),$$

其中 $K,P$ 对称、$K,Q,P$ 整数。若内部 $K$ 可逆，解方程得到

$$P-Q^TK^{-1}Q=\begin{pmatrix}\alpha&\gamma\\\gamma&\beta\end{pmatrix}.$$

结合左右 bulk boundary variations，

$$\widetilde F_L=-\alpha F_L-\gamma F_R,
\quad\widetilde F_R=\gamma F_L+\beta F_R,$$

$$D=\frac1\gamma\begin{pmatrix}-\alpha&\alpha\beta-\gamma^2\\1&-\beta\end{pmatrix},
\quad(\alpha,\beta,\gamma)=(-a_D/c_D,-d_D/c_D,1/c_D).$$

这些是局部 on-shell response。分数 CS level 不能单独作为大规范变换下的完整作用量；必须保留整数 completion。$c_D=0$ 或内部 $K$ 奇异时不能用逆矩阵，必须保留 Lagrange multiplier 与 global flat sectors。

### 4.2 $S,T$ 与 continued-fraction chain

基本壁为

$$S_{\mathcal S}=\frac i{2\pi}\int A_LdA_R,
\qquad S_{\mathcal T^p}=\frac i{4\pi}\int[-pA_RdA_R+2a\,d(A_R-A_L)].$$

后一式给 $F_L=F_R$ 和 $\widetilde F_L=\widetilde F_R+pF_R$。$S\bar S,T^p\bar T^p$ 的 unit-level BF 消元恢复 identity。一般 word

$$M=T^{p_1}ST^{p_2}\cdots ST^{p_r}$$

由负 continued fraction $a_D/c_D=p_1-1/(p_2-\cdots)$ 求前缀，再匹配剩余 $\pm T^p$；不能只凭比值确定整个矩阵。相邻区域场缩到壁上后，得到对角 $-p_j$、近邻 1 的 tridiagonal $\mathcal K$，最外两项是 $A_L,A_R$。

Schur complement 是

$$K_{\rm eff}=\frac1{c_D}\begin{pmatrix}-a_D&1\\1&-d_D\end{pmatrix}.$$

内部 continuant 满足 $d_j=-p_jd_{j-1}-d_{j-2}$。按此 word 约定，内部块行列式为 $(-1)^{r-2}c_D$，不是源文无符号的 $c_D$；绝对值不变。已对 $r=3,4,5,6$ 的一般符号 $p_j$ 重算。

$S^2$ 的 BF 场强制 $A_L+A_R=0$，得到 charge conjugation $\mathcal C$。$(ST)^3$ 的整数重定义 $b\mapsto b+a+A_R$ 则给

$$\mathcal L_{(\mathcal S\mathcal T)^3}
=\frac i{2\pi}a\,d(A_L+A_R)-\frac i{4\pi}b\,db.$$

最后的 $U(1)_{-1}$ 是解耦可逆 spin TQFT。**由这里能证明的是模掉这一类解耦可逆扇区后的 word equivalence。** 没有 anyon 不等于完整 partition function/framing response 恒等；若保留引力 counterterms 与 framing 数据，需要额外约定。

### 4.3 非可逆壁的整数 completion

$G_k$ 的作用量是 $\frac i{2\pi}c\,d(A_L-kA_R)$，实现 $F_L=kF_R,\widetilde F_L=\widetilde F_R/k$。拼入 $U,V$ 的 continuant 链，中心三点 levels 为 $(-p_r,0,-q_1)$、links 为 $(1,-k)$；外部链其他 links 都为 1。

对 CM 矩阵得到

$$\mathcal L_{D,\rm eff}=\frac i{4\pi an}
[2kA_LdA_R-(m-bn)A_LdA_L-mA_RdA_R],\quad an\ne0.$$

非奇异情形内部块 $|\det K|=|an|$，完整含外部场的矩阵 $|\det\mathcal K|=|cn|$。两者用途不同：$A_L,A_R$ 是 bulk fields，不能自动把完整矩阵的 cokernel 当成独立三维 TQFT 的物理 anyon 群。

### 4.4 与 Appendix B：Smith 唯一性的四步证明

两个分解之间 $U_{21}G_kV_{12}=G_k$，故

$$V_{12}=G_k^{-1}U_{21}^{-1}G_k,
\quad U_{21}\in\Gamma_0(k^2),\ V_{12}\in\Gamma^0(k^2).$$

B 改用 $U_{21}=ST^{-p_1}S\cdots T^{-p_n}S$，$V_{12}$ 同理。不能把正文 $p$ 的符号不变地带进附录。

1. 中央三零 level 的 unit BF 消元先令 $\phi=k\psi$，再令 $c_1=-ka_n$。剩余链有一个 link $-k$，$a_n$ level 变为 $p_n+k^2q_1$。
2. 内部 $\widehat K$ 至多 corank one：去首行末列的 minor 为 $-k$。递推 $s_{j-1}v_{j-1}+l_jv_j+s_jv_{j+1}=0$，以 $v_1=1$ 得 primitive integral null vector，末项 $v_N=-k$。$k^2\mid(U_{21})_{21}$ 保证跨越 $-k$ link 后仍整数。用该向量作 unimodular 换基，把唯一零模抽成 $c\,d(A_L-kA_R)$。
3. 剩余 complement $H$ 的 determinant 由左右 continuants 算得 $\det H=(-1)^{n+m}(ad-bc)=\pm1$，故 $H^{-1}$ 整数。
4. 用整数 shift $x\mapsto x-H^{-1}eA_R$ 解耦；新 contact term 是 $-e^TH^{-1}e\,A_RdA_R$，相应 cofactor 为零，故无外部 CS contact term。

结论是 gauging wall 加解耦 unimodular sector。一般递推论证为 Source-derived；独立检查覆盖 $U_{21}=\left(\begin{smallmatrix}1&0\\k^2&1\end{smallmatrix}\right)$、$V_{12}=\left(\begin{smallmatrix}1&0\\-1&1\end{smallmatrix}\right)$、$k=2,\ldots,10$，其 reduced chain levels $(k^2,0,-k^2,0,0)$、links $(1,1,-k,1)$，零向量 $(1,-k^2,-1,0,-k)$。rank、整数性、unimodular complement、零 contact term 均通过。未把有限族升级为任意 word 的独立证明。

## §5 与 Appendix A：融合需要格交而非只乘矩阵

记 $Z=\mathbb Z^2$，$A=D_1^{-1}Z$，$B=D_2Z$，$D_3=D_1D_2$。中间区域可同时终止于两壁的面算符为

$$\mathcal Z_{12}=\frac{(Z+A)\cap(Z+B)}Z.$$

沿壁二循环上的部分给凝聚群，跨两壁的 tube 部分给解耦线扇区：

$$\mathcal Z_{12,\rm cond}=\frac{Z+(A\cap B)}Z,
\quad\mathcal Z_{12,\rm dec}=\frac{(Z+A)\cap(Z+B)}{Z+(A\cap B)}.$$

后一项是 quotient，不应无选择地视为原群中的指定子群。交不对和分配，正是 decoupled quotient 可以非平凡的原因。论文的 topological-chain 图像为 Source-derived；一般相对同调 exact sequence 还需补齐边界到 $H_1(W\times I)$ 的映射，不能无条件删去长正合列中的项。

A 的指数证明可压缩为：令 $L=Z\cap A\cap B$，

$$|\mathcal Z_{12}|=\frac{k_1k_2}{[Z:L]},
\quad|\mathcal Z_{12,\rm cond}|=\frac{[Z:L]}{k_3},$$

$$N_{\rm extra}=\frac{k_1k_2}{k_3}
=|\mathcal Z_{12,\rm cond}|^2|\mathcal Z_{12,\rm dec}|.$$

这利用二次型同维格的指数乘法和 $\det D_i=1$；$k_3$ 是约掉公共因子后的最小分母。它给出群阶，不能确定 TQFT 的 braiding/quadratic refinement。

左右外部观察者看到的凝聚群分别为

$$\mathcal Z^L_{12,\rm cond}=\frac{Z+D_3Z+D_1Z}{Z+D_3Z},
\qquad\mathcal Z^R_{12,\rm cond}=\frac{Z+D_3^{-1}Z+D_2^{-1}Z}{Z+D_3^{-1}Z}.$$

因此融合形式是 $\mathcal D_1\mathcal D_2=\mathcal T_{\rm dec}\mathcal C_L\mathcal D_3=\mathcal T_{\rm dec}\mathcal D_3\mathcal C_R$，condensation 与 duality wall 的顺序不能随意交换。

worldvolume 路径把中间 bulk 场降为壁上场，再对整数 CS 链作消元。只取有理 Schur complement 会看到 $D_3$，却可能删掉整数量子信息。$\mathcal D\bar{\mathcal D}$ 的 electric frame 剩 $-ik a\,d(A_L-A_R)/(2\pi)$，给 $\mathbb Z_k$ condensation。源文 Eq. (5.25) 漏了 $i$。

特别注意 Eq. (5.24) 的五阶完整矩阵是奇异的；Smith diagonal 为 $(1,1,k,k,0)$，故 cokernel 为 $\mathbb Z\oplus\mathbb Z_k^2$。Eq. (5.27) 的 $k^2$ 只能解释为 torsion 部分的阶，不能说整个商群有限。Eq. (5.22) 也混淆内部块与完整块的 $a,c$：$\tau=i\sqrt{11}$ 例子的内部 determinant 为 $18$，完整 determinant 为 $-198$，不能混用后再取 ratio。

## §6：四组例子与错误隔离

### 6.1 duality 与 triality

在 $\tau=iN$，正确矩阵为

$$D_2=SG_N=\begin{pmatrix}0&-N\\1/N&0\end{pmatrix},\qquad D_2^2=-I.$$

作用量 $iN A_LdA_R/(2\pi)$ 正确。与 orientation reversal 融合产生 condensation；自融合则还带 charge conjugation：$\mathcal D_2^2=\mathcal C\mathcal C_{N,\rm el}$（在同一可逆扇区约定下）。源码 Eq. (2.18) 的最后矩阵不是其左侧乘积；§6.1 文字 $D^2=1$ 与 Eq. (6.7) 缺少 $\mathcal C$。本笔记不依赖这两个错误。

在 $\tau=Ne^{2\pi i/3}$，

$$D_3=SG_NT^N=\begin{pmatrix}0&-N\\1/N&1\end{pmatrix},\qquad D_3^3=-I.$$

其有效作用量为 $iN(2A_LdA_R-A_RdA_R)/(4\pi)$。两份融合后 shift 中间场可拆出 $U(1)_{-N}$，其余对应 $D_3^2=-D_3^{-1}$。格商为 total $\mathbb Z_N$、condensation trivial、decoupled $\mathbb Z_N$。注意 general family Eq. (6.8) 右端应为 $k^2$，而非固定 $N^2$。

### 6.2 Pythagorean family

$\tau=i$ 时 $m^2+n^2=k^2$，$D=(\begin{smallmatrix}m&-n\\n&m\end{smallmatrix})/k$。$D_{3,4,5}$ 的 Smith construction 可取 $U=TST^4S,V=T^7$，完整链 levels $(-1,-4,0,0,-7)$、links $(1,1,1,-5)$。其 Schur complement

$$K_{\rm eff}=\frac14\begin{pmatrix}-3&5\\5&-3\end{pmatrix}$$

与响应匹配，内部/完整 determinants 为 $4,-4$。genuine 子格是 rank two、index five；源文“rank-five”是措辞错误。

$$D_{3,4,5}D_{5,12,13}=D_{-33,56,65},\quad N_{\rm extra}=1,$$

$$D_{3,4,5}D_{7,24,25}=D_{-3,4,5},\quad N_{\rm extra}=25=5^2.$$

第一例无额外群，第二例 $\mathcal Z_{12}=\mathcal Z_{\rm cond}=\mathbb Z_5$、decoupled trivial，均独立重算。特征值 $(3+4i)/5$ 不是 root of unity；例如有限阶矩阵的 trace 应为代数整数，而这里 trace 为有理非整数 $6/5$，所以矩阵阶无限。这不自动给完整 fusion category 的分类。

### 6.3 同时出现凝聚与解耦

$\tau=i\sqrt{11}$，

$$D_1=\frac16\begin{pmatrix}-5&-11\\1&-5\end{pmatrix},
\quad D_2=\frac1{18}\begin{pmatrix}-7&55\\-5&-7\end{pmatrix},
\quad D_1D_2=\frac16\begin{pmatrix}5&-11\\1&5\end{pmatrix}.$$

Sage 格交与 Smith quotient 给 total $\mathbb Z_6$、condensation $\mathbb Z_3$、decoupled $\mathbb Z_2$，符合 $18=3^2\cdot2$。完整九阶 CS 链的 levels 为 $(5,1,0,-31,47,0,0,7,8)$，links 为 $(1,1,-6,1,1,-1,-18,1)$。

原文 Eq. (6.36) 的 $v=(0,-2,-2,-1,-1,2,1,0,0)$ 满足 $v^T\mathcal Kv=-2$、$\mathcal Kv\in2\mathbb Z^9$。Eq. (6.37) 的完整整数矩阵 $B$ 经检查 $\det B=1$，$B^T\mathcal KB$ 的第八行/列（零基索引 7）除 $-2$ 外全零，确实拆出 $U(1)_{-2}$。剩余凝聚与 $D_3$ 的完整 CS 分块未在原文完成；这里也未把群阶检查声称为完整分块证明。

### 6.4 固定 frame 下确需双侧壁

$\tau=3i/2$、$(a,b,c)=(4,0,9)$，

$$D=\frac1{78}\begin{pmatrix}72&-45\\20&72\end{pmatrix}.$$

源文 Eq. (6.41) 的 $U,V$ 与 determinant 均通过。**Eq. (6.42) 不正确**：$D(3,6)=(-9/13,82/13)$ 非整数。直接求 $Z\cap D^{-1}Z$ 得

$$\Gamma(D)=\langle(3,10),(0,26)\rangle,\qquad[Z:\Gamma(D)]=78.$$

最小正磁荷是 $\gcd(10,26)=2$，例如 $(24,2)\mapsto(21,8)$；不是源码第 50 页的 6。$(0,1)$ 仍不在子格中，因此“在固定 frame 下不能写成 electric torsion gauging 后接单个 integral wall”的结论仍成立：任何 $U(\begin{smallmatrix}1/N&-p\\0&N\end{smallmatrix})$ 都把 $(0,1)$ 映为整数。

## 全局符号与可复用推导链

| 符号 | 定义与用途 |
|---|---|
| $\Gamma,Z$ | genuine line 荷格 $\mathbb Z^2$ |
| $J,E(\tau)$ | Dirac 反对称 pairing 与 stress/scaling 正定 pairing |
| $a,b,c;d$ | CM primitive 二次型；$d=4ac-b^2$ |
| $m,n,k;D$ | norm-one 丢番图数据；$k$ 最小分母 |
| $U,G_k,V$ | 左 integral wall、单次 gauging、右 integral wall |
| $K,Q,P;\mathcal K$ | 内部 CS、外部 coupling、完整整数矩阵 |
| $\Gamma(D),\mathcal Z(D)$ | 可透射 genuine 子格、可终止 surface 群 |
| $\mathcal Z_{12},\mathcal Z_{\rm cond},\mathcal Z_{\rm dec}$ | 融合中 total/intersection/quotient 数据 |
| $\mathcal C$ 与 $\mathcal C_Z$ | charge conjugation 与 condensation，必须区分 |

公式账本：Eqs. (2.1)–(2.17) 固定作用量、pairing、gauging；(3.5)–(3.9) 固定应力匹配；(3.23)–(3.27) 固定 CM/Smith；(4.2)–(4.8) 固定 response/Schur；(4.16)–(4.18) 是 continuant 链；(4.23) 保留可逆 sector；(5.4) 起的格交和 Appendix A 负责融合群阶；(6.37) 给具体解耦证据。错误位置另见上一节，不能以编号权威覆盖独立残差。

推导图：Maxwell charge pairing → stress continuity → rational stabilizer → CM norm equation → Smith single gauging → integer CS completion。融合另走两路：格交/格商 → 群阶；整数 CS congruence → 具体 TQFT。两路在已算例子相合，但群阶不取代 quadratic data。

对当前区域拼接的具体用途：用 $(K,Q,P)$ 写出两侧边界 response 和壁场约束，同时保留 $\Gamma(D)$。这能区分“经典场强匹配成立”“量子 genuine line 可穿过”“融合后无额外扇区”三个不同命题。若转 Lorentzian CPS，需重新处理 Euclidean $i$、Hodge star、边界定向，并从 bulk+wall variation 提取 presymplectic current；本文未给出任意有角点区域的 CPS/Peierls 等价或 Hilbert-space sewing 定理。

## 验证账本与使用限制

**Source-derived:** 全文及 A/B 的构造链来自 official TeX/PDF；第 10、29、42、48、49 页另经渲染核对。章节和作用量已重建；general Smith uniqueness 的完整拓扑证明、一般 TQFT 识别仍为来源结论/开放问题。

**Verified / Checked:** Mathematica 符号验证 stress covariance、CM determinant/二次型、CS response，及 $r=3$–$6$ 一般 continuant Schur complements；Sage 精确计算 inverse/coprime/Pythagorean/$i\sqrt{11}$ 四组融合格商，另验 $N=2,3,4,6,10$ triality，两个显式 Smith 分解、$345$ CS Schur、九阶整数解耦矩阵、Appendix B 的 $k=2$–$10$ 族。均使用精确有理数/整数，非浮点拟合。

**Failed:** Eq. (2.18) 最后矩阵乘积；§6.1 $D^2=1$ 与 Eq. (6.7) 缺少 charge conjugation；Eq. (6.42) 及最小磁荷 6；无符号 continuant determinant；Eq. (5.22) 对内部/完整块的混用；Eq. (5.27) 将奇异矩阵的整个 cokernel 当有限群。修正式和反例已在正文给出，后续不依赖这些失败表达式。另有 torsion 指数符号、Eq. (6.8) 的 $N^2/k^2$、非零元素 pairing 脚注等局部问题。

**Assumptions:** spin 流形、紧 $U(1)$ 荷量子化、固定 Euclidean/方向约定、没有 dynamical charged matter；只处理所定义的 minimal rational defects；Schur complement 仅对非奇异内部块；global field redefinitions 必须整数 unimodular。

**Blocked:** 无未解决的检索或服务阻塞。最初 Sage 模块无 `index` 方法，已改用精确 covolume 比并成功重跑。严格的完整量子唯一性还缺 framing/gravitational counterterm 与解耦可逆 TQFT 的等价约定；不将这项缺失当作已经完成的证明。

**Not independently verified:** 任意 word 的 global path-integral equality、一般 fusion category/associators、全部 TQFT quadratic refinements、任意拓扑上的同调分解、corner-complete CPS。原文使用 rational CM map 的 kernel 语言须按 correspondence 修正，不能当普通 torus endomorphism。

复现代码 `check-algebra.wl`、`check-lattices.py` 及对应 JSON 输出位于临时目录 `/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/arxiv-daily-20261015-refresh-h4e5w9ce/2610.18959v1/`；临时文件可能被清理，持久证据为本笔记的定义、算例、残差与错误隔离。
