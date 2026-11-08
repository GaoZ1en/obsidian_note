# Global AdS₃ Einstein–scalar：完整 scalar Fock space 的 $O(G)$ 谱

## 研究结果、完整构造与可复现证据

**日期：2026-10-18。** 这是继续此前研究而另行生成的报告；原笔记、原报告和原验证程序均未修改。原仓库快照为 `ff06682448838bcbb02b135bd61bc661b394cbba`。本文讨论真空能已扣除的能量，统一使用

\[
E=E_0+Gg+o(G).
\]

这里的 $g$ 是本轮要确定的系数。余项写成 $o(G)$，不额外宣称已证明更高阶的 scalar/graviton sector 闭合。所有命题均针对固定有限粒子数、固定有限自由能级的形式微扰谱。

---

## 0. 本轮究竟解决了什么

在此前指定的 Einstein–real-scalar theory、边界条件与量子处方下，本轮得到了**覆盖整个有限能量 scalar Fock space 的精确代数谱算法**。它生成全部能移、重数、global-primary 本征态和相应 descendants，支持全部 $N$、全部左右激发，也包括整数 $\Delta$ 的额外自由简并。

这项结论没有依赖“将所有 $N$ 的矩阵写下来便算完成”的定义性改写。实际减少计算量的结构有三种，彼此互补：

1. **完整的 Casimir-bound eigenspace 被闭式解出。** 不只是最大手征 Jastrow 态，而是任意 $N$、任意右激发 $Q$ 的全部饱和本征态。它们构成 type-$A_{N-1}$ collision arrangement 的 invariant logarithmic-symbol 自由模；重数有简单的双变量有理生成函数。
2. **剩余谱只需计算相互作用的像。** 一个 pair–spectator Gram 构造把完整多体 problem 化为三个 permutation double cosets。固定 $N,Q$、增大 $P$ 时，实际非零块的维数由 $O(P^{N-2})$ 降为 $O(P^{N-3})$。三粒子时，它严格降为只依赖 $Q$ 的有限阶 Racah 矩阵。
3. **固定激发后，可一次解无限多个粒子数。** 当 $N\ge P+Q$ 时，可以选择不依赖 $N$ 的 primary 基底；扣除 $\binom N2 g_{00}$ 后，整个矩阵是 $N A_{P,Q}+B_{P,Q}$。因而一个符号矩阵 pencil 决定稳定范围内所有 $N$，不需要分别建立 $N=4,5,6,\ldots$ 的系统。

下面的极端例子已经实际算出，不是复杂度估计：

\[
\Delta=2,\qquad N=3,\qquad (P,Q)=(10^9,6).
\]

这个 primary 空间有 $1,166,666,668$ 维。其中 $1,166,666,645$ 个本征值由闭式公式确定，其余全部由一个 $23\times23$ 矩阵的精确特征多项式给出。附件保存了全部多项式系数。计算在本次环境中不足一秒；这只说明有限能级的形式系数可被高效生成，不是有限 $G$ 下任意高能的有效性声明。

**没有得到、也没有宣称得到的结果：** 一般所有能级的根式表达、整个 $W_N$ 的 Bethe ansatz、或一个完整 commuting family。实际上，真实三粒子非手征块已有 $S_5$ Galois 群，四粒子非手征块已有 $S_6$；普遍根式公式被这些具体反例排除。它们并不证明不可积，也不阻碍精确代数根算法。

### 0.1 结论的逻辑等级

| 结论 | 等级及输入 |
|---|---|
| 整个 finite scalar Fock domain 在 order $G$ 的完整自由简并算子中闭合 | 从当前原稿的完成证明机制推广；本文给出不依赖 $N$ 的次数与 Ward 论证 |
| $W_N=\sum_{i<j}w_{ij}$，无另一个 irreducible many-body coefficient | 已证明；依赖原 minimal action 与已固定的一体量子处方 |
| 正定 Casimir 分解、全 $N,Q$ logarithmic-kernel 分类与 Hilbert series | 本轮证明；已接受独立反例审查和 exact polynomial 验证 |
| 全 $N$ Gram 谱压缩、完整三粒子任意左右谱、稳定 $N$ affine pencil | 本轮精确构造与证明；独立实现相互核对 |
| 所列新谱及 Galois 群 | 精确有理/代数计算；另有原 constraint Hamiltonian 的独立低能检查 |
| 整个 Hamiltonian 存在隐藏的完全可积结构 | 仍开放；若干自然候选已被明确否定 |
| 对无限 Fock 空间的 interacting dressing 存在强酉极限，或高阶仍保持 $h=0$ | 本轮未提出此断言 |

---

## 1. 原始材料、物理定义及版本判断

本轮重新读取了此前的 `ADS3_Einstein_scalar_research.md` 与 `ADS3_research_package.zip`，并核对原仓库 `Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/` 的十三份笔记。当前仓库与上一轮使用的快照一致。物理审查全文重读十二份较短笔记，重读 10,345 行母稿的完成证明依赖链，并核查对应的历史断点。详细读取范围、文件散列与旧 ZIP 的逐字节比较见附件 `physics/provenance.json` 和 `physics/README.md`。

本节和 §2 的直接来源是 [S1] 母稿 §§1–4、16–17、70–77；§3 的全部两体动力学输入来自其 §72，并与 [S2] 的独立归一化结果核对。下面先重述这些必要输入，再推导本轮新增的全 Fock-space 结果。

应区分三个事实：

- 母稿较早章节中的某些 residue/source bridge 仍是未完成的替代路线；不能把它们说成已完成。
- 当前需要的一体自能结论由后来 §§73–75 的 two-time reconstruction 与 subtraction 证明闭合；不能因旧路线未完成而否定这些后来的结果。
- 早期 vacuum-orbit notes 和谱运输不是本轮 physical mixing 消失的独立证明；本轮使用的是 §§70–77 的完整 normal form、boundary Ward 与量子处方。

原工作涉及 $\kappa^2$ 与 $G$ 的多种中间记号。本文始终以原 normalized matrix integral 固定

\[
\kappa^2=16\pi G,\qquad W=16\pi[K_4]_{22,\mathrm{res}},
\]

避免把已含 $\kappa^2$ 的旧 $\gamma$ 再乘一次耦合。

### 1.1 保持不变的理论

AdS 半径取一，signature 为 $(-++)$，作用量为

\[
S=\frac1{\kappa^2}\int_M\sqrt{-g}(R+2)
+\frac2{\kappa^2}\int_\Gamma\sqrt{-\gamma}(K-1)
-\frac12\int_M\sqrt{-g}\big[(\nabla\phi)^2+\mu_0\phi^2\big].
\tag{1.1}
\]

边界输入是 regular center、Brown–Henneaux metric falloff、固定 boundary cylinder 与 boundary time，以及 source-free fast scalar branch

\[
\Delta>1,\qquad \mu=\Delta(\Delta-2).
\]

只商去 proper diffeomorphisms。独立 boundary gravitons 是左右两个 $m\ge2$ oscillator towers；$m=0,1$ 的物质 charge channels 仍参与约束求解，不能一并删除。这里 $h=0$ 指 normal-form scalar branch 没有独立 free-graviton occupation；返回 unreduced variables 后，它包含正常的虚引力 dressing。

单粒子空间是

\[
\mathcal H_1=D^+_{\Delta/2,L}\otimes D^+_{\Delta/2,R},\qquad
E_{pq}^{(0)}=\Delta+p+q,\qquad J_{pq}=p-q.
\tag{1.2}
\]

所有 $p,q\ge0$ 都保留。目标空间为

\[
\mathcal F_\phi=\bigoplus_{N\ge0}\operatorname{Sym}^N\mathcal H_1.
\]

本轮没有添加独立的 $G\phi^4$ coupling；添加它会改变两体核和全部后续谱。

### 1.2 一体量子处方是必要输入

原处方包括 proper-constraint/FP paired determinants、Darboux–Liouville measure、midpoint Weyl quantization、相容的 scalar-leg 与 boundary Abel regulators。在严格正 regulator 下先减去完整 vacuum-stress source，再反演 response operator；exchange pole 用同一个局部 kinetic counterterm

\[
Z_\tau(r)=-\frac{4G}{\tau\sqrt{1+r^2}}
\tag{1.3}
\]

抵消。有限剩余用物理质量条件 $E_{00}^{1p}=\Delta$ 固定。当前完成的一体证明给出所有单粒子模的 $O(G)$ 能移为零。

这个输入同时包含 loop、ordering 和 renormalization。虽然多体 connected four-leg operator 是 tree level，**不能把整个 $O(G)$ 谱都称为 tree level**。本轮不再把已完成的一体计算重做成目标，也没有用 tree reduction theorem 替代它。

---

## 2. 为什么可以研究整个 scalar Fock space 上的两体算子

### 2.1 从真实 Hamiltonian 到完整 resonant normal form

先保留全部变量，写

\[
H=H_0+\kappa V_1+\kappa^2 V_2+\cdots.
\]

原 spatial constraints 在 maximal-slice 变量中给出

\[
(-\bar\Delta+2)u=\rho/2,\qquad
\bar D_jt^j{}_i=\chi\partial_i\phi/2,\qquad \mathrm{tr}\,t=0,
\]

\[
\rho=\tfrac12(\chi^2+|\bar D\phi|^2+\mu\phi^2),\qquad y=\sqrt{1+r^2},
\]

\[
H_4^{\mathrm{con}}=
\int\sqrt{\bar\sigma}\,y
\big[t:t-u\chi^2+\mu u\phi^2-4u^2\big].
\tag{2.1}
\]

非 global momentum channels 使用 $\lim_{r\to\infty}r^2B_m=0$（$|m|\ge2$），而不是将全部 homogeneous response coefficients 置零。

原 mixed cubic 满足

\[
V_{g\phi^2}=\sum_m(a_m^\dagger F_m+F_m^\dagger a_m),\qquad
F_m=mD_m+[H_\phi,D_m],
\]

\[
S_{g\phi^2}=\sum_m(a_m^\dagger D_m-D_m^\dagger a_m),\qquad
V_{g\phi^2}=[H_0,S_{g\phi^2}].
\tag{2.2}
\]

其中

\[
D_m=\frac{1}{\sqrt{8\pi m(m^2-1)}}
\int\sqrt{\bar\sigma}\,z^m(y+m)e^{-im\theta}:\rho:,
\qquad z=\frac r{1+y}.
\tag{2.3}
\]

潜在 resonance 的分子 $m-\Omega$ 先于能量分母消失。再加入 pure-gravity cubic 的 generator，得到完整 $V_1=[H_0,S]$。因此在**完整自由能量块**上

\[
\mathcal W_\kappa=\mathcal R\!\left(V_2+\tfrac12[S,V_1]\right),
\tag{2.4}
\]

\[
P_E\mathcal W_\kappa P_E
=P_EV_2P_E+P_EV_1Q(E-QH_0Q)^{-1}QV_1P_E.
\tag{2.5}
\]

这也是 classical canonical elimination 与 OFPT 在本阶使用同一对象的直接原因。式 $2.4$ 的 projection 不是先取 scalar subspace。量子 lower-degree terms 还需按 §1.2 单独处理。

### 2.2 不得删除的 boundary gravitons 如何退出 resonant mixing

Brown–Henneaux charges 的首项为

\[
L_m=\kappa^{-1}c_m a_m+O(1),\qquad
L_{-m}=\kappa^{-1}c_m a_m^\dagger+O(1),\quad c_m\ne0.
\]

同时对 Hamiltonian 和 charges 作 canonical normal-form transformation。对于 free-energy weight 为 $s$ 的 charge，quartic Ward identity 的相应次数为

\[
[H_0,\widetilde Q_1^{[3]}]_{\mathrm{cl}}
-s\widetilde Q_1^{[3]}
+[W^{[4]},Q_{-1}^{[1]}]_{\mathrm{cl}}=0.
\tag{2.6}
\]

在能量差 $s$ 的完整自由块之间投影，前两项消失，故

\[
[\mathcal R W^{[4]},a_{m,\sigma}]_{\mathrm{cl}}
=[\mathcal R W^{[4]},a_{m,\sigma}^{*}]_{\mathrm{cl}}=0.
\tag{2.7}
\]

因此完整 resonant quartic symbol 独立于 gravitational oscillators。这消去的是完整 $g^2\phi^2$、$g^4$ 等项的剩余共振组合，而非在 $g=0$ 上先代入。线性 oscillator 的 Weyl commutator 没有高阶 Moyal 修正，所以最高四次 symbol 结论直接控制 quantum four-leg coefficient。

Weyl contractions 只留下二次项与常数。Scalar parity 排除 $g\phi$；正能排除同时产生两个振子的 resonance；scalar $b_I^\dagger b_K$ 的 $E,J$ 守恒强制 $I=K$；纯引力的 number-preserving quadratic 在 graviton vacuum 上为零。vacuum constant 已减去，scalar 一体项由质量条件固定。任意数目的 scalar spectators 不改变这些次数论证。

**结论：** zero-independent-graviton scalar branch 是完整 order-$G$ 简并算子的 invariant subspace。这里仍保留虚 boundary exchange：最终 four-leg scalar kernel 为

\[
K_4=H_4^{\mathrm{con}}-\sum_{m\ge2}m\{D_m^\dagger,D_m\},
\tag{2.8}
\]

并包含两个手征 towers。边界项参与数值系数和 global covariance；它没有被舍弃。

### 2.3 Scalar-number-changing resonances 全部消失

一个 $1\to3$ monomial 同时守恒 $E,J$ 必须满足

\[
p_{\mathrm{in}}-\sum_{a=1}^3p_a=\Delta,
\qquad q_{\mathrm{in}}-\sum_{a=1}^3q_a=\Delta.
\tag{2.9}
\]

所以 $\Delta>1$ 域内只有整数 $\Delta$ 才出现这种运动学候选。仅检查能量会错误地扩大例外集合。

真正的消失不限于 generic mass。Global Ward identity 使 quartic $31$ 部分单独成为 $\mathfrak{sl}(2)_L\oplus\mathfrak{sl}(2)_R$ intertwiner。它在一粒子最低态上必为零，因为一粒子最低能量是 $\Delta$，三粒子最低能量是 $3\Delta>\Delta$。与两个 raising operators 对易后，它在整个一粒子 module 上均为零。三粒子 creation monomials 线性独立，故这已经穷尽每一个 $b^{\dagger3}b$ coefficient；加 spectators 不能恢复零系数。Adjoint $13$ 同样消失，$40/04$ 由正能非共振。

更远粒子数扇区可能在 rational $\Delta$ 时自由简并，但 order-$G$ 顶点没有足够的外腿连接它们。本理论两个 cubic vertices 至多有四条 scalar legs；OFPT 分项中的 degree-six 总 oscillator products 在 commutator normal form 中抵消，不能解释为新的 six-scalar interaction。

### 2.4 唯一的整个 Fock lift

令 $I=(p,q)$，定义 normalized unordered pair creators

\[
B_{IJ}^\dagger=\frac{b_I^\dagger b_J^\dagger}{\sqrt{1+\delta_{IJ}}},
\qquad I\le J.
\]

若 $M_{IJ;KL}=\langle IJ|W|KL\rangle$ 是已确定的 normalized two-particle matrix，则

\[
\boxed{
W=\sum_{I\le J,K\le L}M_{IJ;KL}B_{IJ}^\dagger B_{KL},
\qquad W_N=\sum_{i<j}w_{ij}.}
\tag{2.10}
\]

系数只在 pair $E,J$ 相同时非零。式 $2.10$ 在 $N=2$ 上恰为 $M$，其 occupation factors 在一般 $N$ 上恰枚举每个 unordered pair 一次。真空与一粒子 $W=0$；所有一体 subtraction 已固定一次，没有新的 $N$-dependent renormalization，也没有尚待匹配的 irreducible 三体或四体 coupling。

---

## 3. 已知两体动力学输入与全手征表示空间

### 3.1 不能由最终谱反向替代的动力学

式 $2.1$–$2.8$ 是本轮谱算法的物理入口。原工作用这个 kernel 得到静态 canonical Beta-integral row

\[
D_J=-4\Delta^2+
\frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J},
\tag{3.1}
\]

再由 Einstein/Casimir recurrence 与 annihilation contact 的有限 spin content 固定整个两体 operator。本文将原来已完成的全两粒子证明作为输入，不以新多体谱对它作反向拟合。§12 的新 raw checks 则从式 $2.1$ 的 differential constraints 独立重建低能矩阵。

两体相对 labels 为 $k,l\ge0$，同一 Bose pair 要求 $k+l$ 为偶数。置

\[
n=\min(k,l),\quad s=|k-l|,\quad h=\Delta+n,
\quad C=h(h-1),\quad \mu=\Delta(\Delta-2),\quad u=4\mu-8C.
\]

已确定的 $G$-coefficient 为

\[
g_{n,0}=u\frac{2h-2}{2h-1}
-\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},
\tag{3.2}
\]

\[
g_{n,2}=u+
\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h-1)(2h+1)(2h+3)},
\tag{3.3}
\]

\[
g_{n,s}=u\qquad(s\ge4).
\tag{3.4}
\]

在 $n=s=0$ 必须先化简为

\[
g_{00}=-4\Delta^2+
\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)}.
\tag{3.5}
\]

于是 $\Delta=3/2$ 的表面奇点可去，$g_{00}=-9/2$。例如 $\Delta=2$ 时

\[
g_{00}=-56/5,\quad g_{10}=-1368/35,
\quad g_{02}=-552/35,\quad g_{04}=-16.
\]

为避免 $g_{10}$ 和 pair labels $(k,l)=(1,0)$ 混淆：$g_{10}$ 表示 $n=1,s=0$，对应 $k=l=1$，不是 Bose-forbidden 的 $(1,0)$。下文也使用

\[
\gamma_{kl}=g_{\min(k,l),|k-l|}.
\tag{3.6}
\]

### 3.2 Bargmann realization 与物理内积

每个手征因子用 holomorphic polynomial realization：

\[
L_-^{(i)}=\partial_{z_i},\quad
L_0^{(i)}=z_i\partial_{z_i}+\Delta/2,\quad
L_+^{(i)}=z_i^2\partial_{z_i}+\Delta z_i,
\]

\[
\langle z^a,z^b\rangle=\delta_{ab}\frac{a!}{(\Delta)_a}.
\tag{3.7}
\]

右侧有独立变量 $w_i$，内积为两侧所有因子的乘积。它满足 $L_+^\dagger=L_-$。Bose symmetry 是对 $(z_i,w_i)$ 的**同时**置换，不能分别将左右两个空间都对称化。

一个 global primary 是双次数 $(P,Q)$、分别 translation-invariant 的 simultaneous-$S_N$-invariant polynomial。令

\[
Z_i=z_i-\frac1N\sum_jz_j,\qquad
W_i=w_i-\frac1N\sum_jw_j,
\]

则 primary 空间为

\[
\mathcal P_{N;P,Q}
=\big[\operatorname{Sym}^P(V)\otimes\operatorname{Sym}^Q(V)\big]^{S_N},
\quad V=\{\sum_iZ_i=0\}.
\tag{3.8}
\]

每个 primary 的自由权重是 $(N\Delta/2+P,N\Delta/2+Q)$。Global descendants 由 $L_+,\bar L_+$ 产生；$W$ 与这些 free global generators 对易，所以能移在整个 descendant module 内相同。

### 3.3 完整重数，不遗漏非手征 states

Cycle-index/Molien projection 给出

\[
\boxed{
\mathcal M_N(x,y)=\sum_{P,Q\ge0}d_N(P,Q)x^Py^Q
=(1-x)(1-y)\sum_{\lambda\vdash N}
\frac1{z_\lambda}\prod_{a\in\lambda}
\frac1{(1-x^a)(1-y^a)}.}
\tag{3.9}
\]

其中 $z_\lambda=\prod_jj^{m_j}m_j!$。不用 $(1-x)(1-y)$ 即得完整 fixed-$N$ Fock level 的维数。对 $N\ge1$，

\[
\dim\mathcal F_{N;P,Q}
=\sum_{a=0}^P\sum_{b=0}^Q d_N(a,b).
\tag{3.10}
\]

vacuum 只有 $N=P=Q=0$，没有 vacuum raising tower；单粒子只有 $(0,0)$ 一个 primary，但有全部 $(P,Q)$ descendants。

另一个有用的形式是

\[
\mathcal M_N(x,y)=
\frac{\sum_{\lambda\vdash N}f_\lambda(x)f_\lambda(y)}
{\prod_{r=2}^N(1-x^r)(1-y^r)},
\tag{3.11}
\]

\[
f_\lambda(t)=t^{n(\lambda)}
\frac{\prod_{r=1}^N(1-t^r)}{\prod_{\square\in\lambda}(1-t^{h_\square})}.
\]

这是左右 coinvariant representations 配对的有限 free-module 结构。它解释 multiplicity space 的来源，但本身不对角化 $W_N$。实际程序按 cycle type 求系数，不枚举 $N!$ 个 permutations。

---

## 4. 任意粒子数的正定 Casimir 分解

以下设 $P\ge Q$；否则交换左右。记

\[
C_l=(\Delta+l)(\Delta+l-1),\qquad
a_{kl}=\gamma_{kl}-[4\mu-8C_l].
\tag{4.1}
\]

### 定理 1：有限 channel strip 与严格正性

对所有 $\Delta>1$、$k+l$ 偶数，

\[
a_{kl}\begin{cases}
=0,&k\ge l+4,\\
>0,&k\le l+2.
\end{cases}
\tag{4.2}
\]

因此在整个 primary 空间上

\[
\boxed{
W_N=b_N(Q)I+A_N,\qquad
A_N=\sum_{i<j}\sum_{\substack{k\le l+2\\ k+l\ \mathrm{even}}}
a_{kl}P_{ij,k}^{L}P_{ij,l}^{R}\ \ge0,}
\tag{4.3}
\]

\[
\boxed{
b_N(Q)=2N\mu-8\Big(\frac{N\Delta}{2}+Q\Big)
\Big(\frac{N\Delta}{2}+Q-1\Big)
=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).}
\tag{4.4}
\]

**证明。** $k\ge l$ 时直接用式 $3.2$–$3.4$：spin $\ge4$ 的余项为零，spin 2 为显式正分式。spin 0、$n=0$ 的余项由式 $3.5$ 显式为正。对 $n\ge1$，置 $r=\Delta-1>0,j=n-1\ge0$，共同分母为正，分子为

\[
\begin{aligned}
&8r^4+80r^3j+120r^3+160r^2j^2+480r^2j+362r^2\\
&+120rj^3+540rj^2+772rj+348r
+30j^4+180j^3+386j^2+348j+98>0.
\end{aligned}
\tag{4.5}
\]

当 $k<l$ 时还增加严格正的 $8(C_l-C_k)$。最后使用 pair-Casimir 恒等式

\[
\sum_{i<j}C_{ij}^{R}=C_{\mathrm{tot}}^{R}+(N-2)\sum_iC_i^R,
\qquad C_i^R=\mu/4,
\tag{4.6}
\]

即得式 $4.3$–$4.4$。不同 pairs 的 projector 不必对易；正性已足以推出

\[
\ker A_N=\bigcap_{i<j}\{\Psi:\text{pair labels satisfy }k_L\ge k_R+4\}.
\tag{4.7}
\]

这是后面完整核分类的出发点。它没有把不对易的 pair projectors 当成一组共同 quantum numbers。∎

---

## 5. 全部 Casimir-bound eigenstates：从碰撞条件到 logarithmic 自由模

这是一项新发现：此前的 maximally chiral Jastrow 结构，是一个对全部右激发有效的代数结构在 $Q=0$ 的截面。

### 定理 2：完整 kernel 与重数生成函数

令 $N\ge2$，$J_N=2N(N-1)$。在 $P\ge Q$ 的分支，$W_N$ 的本征值 $b_N(Q)$ 的**全部** primary 重数 $\kappa_N(P,Q)$ 由

\[
\boxed{
\sum_{P,Q\ge0}\kappa_N(P,Q)x^Py^Q
=\frac{x^{J_N}}
{\prod_{r=2}^N(1-x^r)\prod_{a=1}^{N-1}(1-yx^a)}.}
\tag{5.1}
\]

右式没有 $P<Q$ 的非零系数。实际输入 $P<Q$ 时交换两侧。因此

\[
\kappa_N(P,Q)=0\quad\text{若 }|P-Q|<J_N,
\tag{5.2}
\]

而对每个 $Q\ge0$，$P=J_N+Q$ 恰有一个饱和 primary。维数与 $\Delta>1$ 无关；波函数通过物理内积依赖 $\Delta$。

### 5.1 Pair spectral flags 恰是碰撞超平面的 ideal powers

Pair Casimir 的 differential realization 为

\[
C_{ij}=-(z_i-z_j)^2\partial_i\partial_j
+\Delta(z_i-z_j)(\partial_i-\partial_j)+\Delta(\Delta-1).
\tag{5.3}
\]

令 $\delta=z_i-z_j$。Pair primary $\delta^k$ 的 raising descendants 仍可被 $\delta^k$ 整除。对每个固定有限次数，独立 channels 的维数计数给出

\[
\bigoplus_{k\ge r}E_{ij,k}
=\delta_{ij}^{r}\,\mathbb C[z_1,\ldots,z_N].
\tag{5.4}
\]

也可从 $C_{ij}$ 在 $\delta$-adic filtration 上三角化证明：商层本征值是 $(\Delta+r)(\Delta+r-1)$，在 $\Delta>1$ 严格不同。该 Casimir 与 total lowering 对易，所以式 $5.4$ 在 labelled-primary 空间内也成立。

式 $4.7$ 首先迫使每对至少有四阶 left zero，故

\[
\Psi(z,w)=V_N(z)^4F(z,w),\qquad
V_N(z)=\prod_{i<j}(z_i-z_j).
\tag{5.5}
\]

各 $\delta_{ij}$ 是互不相伴的线性素因子，因此逐对整除等价于 $V_N^4$ 整除。商 $F$ 仍分别 translation invariant 且 Bose invariant，双次数为 $(p,Q)=(P-J_N,Q)$。

### 5.2 内积把波函数变成保 flags 的线性映射

令 $V_q=\operatorname{Sym}^q(V)$ 是 labelled degree-$q$ primary polynomials。用右侧**物理 Bargmann 内积**，将

\[
F\in(V_p\otimes V_Q)^{S_N}
\quad\longleftrightarrow\quad
A_F\in\operatorname{Hom}_{S_N}(V_Q,V_p).
\tag{5.6}
\]

由于 $P_l^R$ 是这个内积的正交 projector，右投影对应右复合 $A_FP_l$。式 $4.7$ 等价于 $\delta^{l+4}\mid V^4A_FP_l$。约掉 $\delta^4$，其余 Vandermonde 因子与 $\delta$ 互素，故等价于

\[
A_F\big(\delta_{ij}^{r}V_{Q-r}\big)
\subseteq\delta_{ij}^{r}V_{p-r},\qquad0\le r\le Q.
\tag{5.7}
\]

这就是对每个 collision hyperplane 的**全部 ideal powers** 的 preservation。没有任意选取另一内积的自由；错误 Euclidean kernel 会违反式 $5.7$，§12 给出直接反例。

### 5.3 固定次数映射与 pure-order normal symbols

取 $V$ 的任意线性坐标 $x_1,\ldots,x_{N-1}$。每个 $A:V_Q\to V_p$ 唯一对应

\[
D_A=\sum_{|\alpha|=Q}\frac{A(x^\alpha)}{\alpha!}\partial_x^\alpha,
\qquad C_A(x,\xi)=\sum_{|\alpha|=Q}\frac{A(x^\alpha)}{\alpha!}\xi^\alpha.
\tag{5.8}
\]

它只含 order $Q$ 导数，作用在 exact degree $Q$ 多项式上恰为 $A$。在一个超平面的 normal/tangent coordinates $(\delta,t)$ 中，式 $5.7$ 等价于

\[
[\xi_\delta^r\xi_t^\beta]C_A
\text{ 可被 }\delta^r\text{ 整除},\qquad r+|\beta|=Q.
\tag{5.9}
\]

注意这是 **normal symbol**，不是变系数一阶微分算子的顺序复合；后者会产生 lower-order terms。

### 5.4 一个 determinant 给出全部解，不遗漏 higher-codimension 条件

在 centered coordinates 中引入 $N-1$ 个 invariant symbols

\[
\theta_a(Z,\Xi)=\sum_{i=1}^N Z_i^a\Xi_i,
\qquad a=1,\ldots,N-1,\qquad\sum_i\Xi_i=0.
\tag{5.10}
\]

相应 vector field 在每个 $\delta_{ij}$ 的 normal component 是 $Z_i^a-Z_j^a$，可被 $\delta_{ij}$ 整除。加入 Vandermonde 的常数行并限制到 centered space，可直接算得其 coefficient matrix determinant 为非零常数乘 $V_N(Z)$。

在 $V_N\ne0$ 上，任意 degree-$Q$ symbol 唯一写成

\[
C=\sum_{|\nu|=Q}c_\nu(Z)\prod_{a=1}^{N-1}\theta_a^{\nu_a},
\tag{5.11}
\]

其中 $c_\nu$ 起初是仅可能沿 $V_N$ 有极点的有理函数。现在在一个 height-one prime $(\delta_{ij})$ 处局部化。其它 Vandermonde 因子都是 units；determinant 的 valuation 为一，所有 normal components 都含 $\delta_{ij}$，所以局部 frame 恰是

\[
\delta_{ij}\partial_\delta\ \oplus\ \partial_{t_1}\ \oplus\cdots.
\]

其 $Q$ 次 symmetric symbols 恰要求 normal degree $r$ 的 coefficient 含 $\delta_{ij}^r$，正是式 $5.9$。因此每个 $c_\nu$ 在该 prime 处正则。所有可能的分母因子逐个被排除；多项式环是 UFD，故每个 $c_\nu$ 都是多项式。这一步同时处理 collision intersections，没有额外 codimension-two 缺口。

每个 $\theta_a$ 都是 $S_N$ invariant。由展开唯一性，Bose symmetry 迫使每个 $c_\nu$ 分别 invariant，而

\[
\mathbb C[V]^{S_N}=\mathbb C[e_2(Z),\ldots,e_N(Z)].
\]

所以全部解自由地由

\[
\prod_{r=2}^Ne_r^{m_r}\prod_{a=1}^{N-1}\theta_a^{\nu_a},
\qquad\sum_a\nu_a=Q,
\quad P=J_N+\sum_rrm_r+\sum_aa\nu_a
\tag{5.12}
\]

生成。对双次数计数即得式 $5.1$。这也是 completeness 的证明，而非只构造一批可检验的解。∎

### 5.5 可直接生成的物理波函数

取 $V_Q$ 的任意实系数基 $f_\alpha$，物理 Gram matrix 为 $G_\Delta$，定义两份 holomorphic variables 的 reproducing kernel

\[
K_{\Delta,Q}(z,w)=\sum_{\alpha,\beta}
f_\alpha(z)(G_\Delta^{-1})_{\alpha\beta}f_\beta(w).
\tag{5.13}
\]

令 $Z_i^{(a)}=Z_i^a-\frac1N\sum_jZ_j^a$，展开

\[
K_{\Delta,Q}\!\left(\sum_{a=1}^{N-1}t_a Z^{(a)},w\right)
=\sum_{|\nu|=Q}t^\nu F_\nu(z,w).
\tag{5.14}
\]

则全部饱和本征态的自由基为

\[
\boxed{\Psi_{\nu,\mathbf m}
=V_N(z)^4F_\nu(z,w)\prod_{r=2}^Ne_r(Z)^{m_r},}
\tag{5.15}
\]

次数条件为式 $5.12$。Coefficient extraction 避免了顺序微分与 factorial conventions 的歧义。

在 $P=J_N+Q$ 的唯一最低饱和态是

\[
\boxed{\Psi_{N,Q}^{\min}=V_N(z)^4K_{\Delta,Q}(z,w),\qquad g=b_N(Q).}
\tag{5.16}
\]

当 $Q=0$，恢复 $V_N^4\mathbb C[e_2,\ldots,e_N]$。当 $Q>0$，并不需要额外提高每对的统一 Jastrow 次数；右侧 pair-dependent jets 由物理 kernel 与 logarithmic frame 配合处理。

一个容易写出的新非手征例子是 $Q=2$。置

\[
I_1=(\sum_iZ_i^2)(\sum_iW_i^2),\quad
I_2=(\sum_iZ_iW_i)^2,\quad I_3=\sum_iZ_i^2W_i^2.
\]

在 $P=J_N+2$，唯一饱和态可取

\[
\Psi\ \propto\ V_N^4
\left[I_3+\left(\Delta+\frac2N\right)I_2
+\frac{I_1}{N(N\Delta+1)}\right].
\tag{5.17}
\]

附件还实际生成了 $N=4,(P,Q)=(27,3),\Delta=2$ 的唯一饱和态：$V_4^4$ 乘一个含 100 项的 exact degree-$(3,3)$ 商，其能移为 $g=-336$。所有 pair flags、Bose symmetry 均已直接检查；没有构造对应的巨大 many-body Hamiltonian。

### 5.6 文献定位

Logarithmic derivations 与 free arrangement determinant criterion 是已有数学，源于 Saito；对自由除子的 logarithmic differential operators，Calderón-Moreno 及后来 Suárez-Álvarez 的结果明确处理保存全部 ideal powers 的 algebra [L1–L3]。本文提供的 elementary height-one proof 是这个结构在当前 homogeneous-symbol problem 中的自足实现。

本轮新的联系是

\[
\text{Einstein pair spectrum}\ \Longrightarrow\
\text{positive pair flags}\ \Longrightarrow\
\text{invariant logarithmic symbols}\ \Longrightarrow\
\text{完整能级、重数和物理波函数}.
\]

不能把已有的 free-arrangement theorem 称作本轮发明，也不能将只要求保持一个 $V\mathbb C[z]$ ideal 的高阶 operator module 与这里保持**所有 powers** 的条件混淆。我们核查到的 Nakashima 高阶 arrangement-operator 文献采用前一种定义，其非 invariant basis 现象不反驳本定理。

---

## 6. 剩余全部谱：pair–spectator Gram 构造

核的闭式解还不是全部谱。本节给出非零余项的有限、有效、可实际执行的构造。与原 OFPT 相比，不再求新的 Einstein response，也不再对 virtual intermediate states 求和；已确定的两体动力学只通过 $a_{kl}$ 输入。

### 6.1 显式 cluster primaries

固定 $N\ge3$、$P\ge Q$。选 pair $(1,2)$ 的 relative degrees $(k,l)$，以及其余 $N-2$ 粒子的 Bose primary

\[
f_{\rho;a,b}^{(N-2)},\qquad
0\le a\le P-k,\quad0\le b\le Q-l.
\]

只需保留 $k+l$ 偶数且 $k\le l+2$。将 pair primary
$(z_1-z_2)^k(w_1-w_2)^l$ 与 spectator primary 耦合成 total primary。两个正最低权模块 $A,B$ 在额外次数 $m$ 的唯一 lowest-weight coupling 是

\[
\mathcal C_m(A,B)=
\sum_{r=0}^{m}(-1)^r\binom mr
\frac{R_A^{\,r}A}{(2h_A)_r}
\frac{R_B^{\,m-r}B}{(2h_B)_{m-r}}.
\tag{6.1}
\]

左侧取
$h_A=\Delta+k,\ h_B=(N-2)\Delta/2+a,\ m=P-k-a$；
右侧对应取 $l,b,Q$。这构成显式 polynomial family $F_\alpha$，其中
$\alpha=(k,l,a,b,\rho)$。每个 $F_\alpha$ 都是
$H=S_2\times S_{N-2}$ invariant，并且被两侧 total lowering 杀掉。

所有内积均为有限 factorial sums。所需 norm identities 是

\[
\|\delta^k\|^2=
\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2},
\qquad
\frac{\|\mathcal C_m(A,B)\|^2}{\|A\|^2\|B\|^2}
=\frac{m!(2h_A+2h_B+m-1)_m}{(2h_A)_m(2h_B)_m}.
\tag{6.2}
\]

后一式由展开各个 orthogonal pair/spectator energy allocations 后的 Chu–Vandermonde identity 得到。乘上 spectator Gram 就有全部 $G_{\alpha\beta}=\langle F_\alpha,F_\beta\rangle$。不同 $(k,l,a,b)$ 块正交，multiplicity label $\rho$ 不必正交化。

### 6.2 只剩三个 double cosets

令 $\Pi_B$ 为完整 Bose projector，$S=\Pi_B F$。定义

\[
R_1=F^\dagger U_{(23)}F,\qquad
R_0=F^\dagger U_{(13)(24)}F.
\]

$H\backslash S_N/H$ 的元素由 source pair 与 target pair 的交集大小 $2,1,0$ 分类。相应数目分别是
$1,\ 2(N-2),\ \binom{N-2}{2}$。因此

\[
\boxed{T=\binom N2 S^\dagger S
=G+2(N-2)R_1+\binom{N-2}{2}R_0.}
\tag{6.3}
\]

对 $N=3$，最后一项不存在。式 (6.3) 已经完成全部 Bose permutations 的求和；没有 $N!$ 规模的隐藏枚举。Permutation overlaps 可用式 (3.7) 直接计算，也可以递归 recoupling；higher-rank Racah algebra 是后者的自然语言 [R1–R3]，不是此处必须假设的一组 commuting Hamiltonians。

### 定理 3：完整非零谱由正 Gram 像决定

令 $D_{\alpha\alpha}=a_{kl}>0$。因其在每个 nontrivial Gram block 上为标量，有 $[D,G]=0$。则

\[
A_N=\binom N2 S D G^{-1}S^\dagger,\qquad
A_NS=SM,\qquad M=D G^{-1}T.
\tag{6.4}
\]

因此 $A_N$ 的非零谱与 $M$ 的非零谱相同，包括重数。全部 zero eigenspace 已由定理 2 给出。

**证明。** $F$ 是 pair $(1,2)$ 上所有 nonzero pseudopotential channels 在 total-primary 空间中的完整基底；所以该 pair 的正 operator 为 $FDG^{-1}F^\dagger$。在完整 Bose space 上，每个 pair 贡献相同的 compression，求和给出式 (6.4)。因为 $D>0$、$G>0$，有
$\operatorname{im}A_N=\operatorname{span}S$，
$\ker A_N=(\operatorname{span}S)^\perp$。
标准 $BB^\dagger/B^\dagger B$ 非零谱恒等式，或直接使用 intertwiner $A_NS=SM$，即得结论。∎

### 6.3 在计算 determinant 前就去掉线性依赖

令 $I$ 是 Gram matrix $T$ 的独立列指标。由 $T\ge0$，其 principal submatrix $T_{II}$ 正定，定义

\[
C=T_{II}^{-1}T_{I,:},\qquad S=S_I C.
\]

于是实际 positive-space 矩阵是

\[
\boxed{M_+=C M_{:,I}.}
\tag{6.5}
\]

记

\[
R_N(P,Q)=d_N(P,Q)-\kappa_N(P,Q).
\tag{6.6}
\]

它正好等于 $|I|$，不是拟合的 rank。全部 physical characteristic polynomial 为

\[
\boxed{\det(xI-A_N)=x^{\kappa_N(P,Q)}
\det\nolimits_{R_N(P,Q)}(xI-M_+).}
\tag{6.7}
\]

原来的完整 primary matrix 不需要先建立。给定 $\lambda>0$ 及
$M_+y=\lambda y$，物理 leading primary 是
$\Psi=S_Iy$，norm 使用 $T_{II}/\binom N2$。

附件 main/pair_gram.py 按式 (6.1)–(6.5) 实现，且用另一套 orbit Hamiltonian 检查过 characteristic polynomial、直接 Bose Gram 和完整 state intertwiner 三者，而非仅检查 eigenvalues。

### 6.4 算法的实际规模与不能掩饰的成本

辅助维数可以直接写成较小 spectator Fock space 的维数和：

\[
r_{\mathrm{aux}}(N;P,Q)=
\sum_{l=0}^{Q}
\sum_{\substack{0\le k\le\min(P,l+2)\\k+l\ {\rm even}}}
\dim\mathcal F_{N-2;P-k,Q-l}.
\tag{6.8}
\]

这等价于对全部 spectator primaries $(a,b,\rho)$ 求和，因为其 descendants 的计数恰恢复固定 spectator level。固定 $N,Q$ 时它为 $O(P^{N-3})$；原 primary 空间为 $O(P^{N-2})$。

参考实现使用 sparse monomial polynomials 计算 overlaps。对大的 $P,Q$，展开这些 polynomials 仍可能昂贵；矩阵降阶不自动等于所有 bit complexity 都最优。程序因此提供三个互补 backend：直接 exact orbit、pair Gram、以及三粒子闭式 Racah。稳定粒子数方向另由下一节的 affine pencil 处理。对 $P\sim Q$ 且 $|P-Q|<J_N$，没有 logarithmic kernel，不能声称在所有平衡扇区都有同样的巨大压缩。

---

## 7. 精确 rank、生成函数与高激发渐近

将式 (3.9) 与式 (5.1) 相减，直接给出全部 positive-space rank：

\[
R_N(P,Q)
=[x^P]\left\{[y^Q]\mathcal M_N(x,y)
-\frac{x^{J_N}h_Q(x,x^2,\ldots,x^{N-1})}
{\prod_{a=2}^N(1-x^a)}\right\},\qquad P\ge Q.
\tag{7.1}
\]

这里 $h_Q$ 为 complete homogeneous symmetric polynomial。式 (7.1) 使用固定右 Casimir 的定向分解，物理 rank 在 $P<Q$ 时先交换 $P,Q$ 再应用它。计算所有 kernel/rank 只需整数算术；不需要任何 Hamiltonian matrix。

### 7.1 不随激发数分配大型数组的计数程序

Cycle-type term 所需系数是
$[x^P]\prod_{a\in\lambda}(1-x^a)^{-1}$。
其 denominator degree 为 $\sum_{a\in\lambda}a=N$，故系数满足固定阶整数线性递推。以该递推的 characteristic polynomial 为模作 binary polynomial powering，只需
$O(N^2\log P)$ 次整数运算即可取出一个系数。

核的 denominator $\prod_{a=2}^N(1-x^a)$ 也同样处理。附件 main/counts.py 实现这一算法，避免把 $P=10^9$ 误写成十亿长度的动态规划数组。它已与独立短数组 recurrence 作 528 个 exact comparisons。对于 $N\ge P+Q$，计数先使用下一节证明的稳定性，将 index-set 参数降至 $\max(1,P+Q)$，但实际 Hamiltonian 中的 $N$ 保持不变。

### 7.2 精确的 unaveraged leading rank

对固定 $N\ge4,Q$，令

\[
c_N=\binom N2,\qquad L_{N,Q}=\binom{Q+N-2}{N-2},
\quad
\tau_{N,Q}=[y^Q]\frac1{(1-y)^{N-2}(1+y)}.
\]

则

\[
\boxed{R_N(P,Q)=\rho_{N,Q}P^{N-3}+O(P^{N-4}),}
\]

\[
\boxed{\rho_{N,Q}=
\frac{(7c_N+NQ)L_{N,Q}+c_N\tau_{N,Q}}
{2N!(N-3)!}.}
\tag{7.2}
\]

这不是只在不同 residue classes 平均后的结果。证明如下：在 $x=1$，Molien 的 identity 和 transpositions 分别给 pole orders $N-1,N-2$；kernel 的 $N-1$ 阶 pole 精确相消。使用

\[
\prod_{a=2}^N(1-x^a)
=N!(1-x)^{N-1}
\left[1-\frac{c_N}{2}(1-x)+O((1-x)^2)\right]
\]

及
$h_Q(x,\ldots,x^{N-1})=L_{N,Q}[1-NQ(1-x)/2+\cdots]$，
可得式 (7.2) 的系数。

对 $N\ge5$，其它单位根的 pole order 至多 $\lfloor N/2\rfloor\le N-3$，只贡献余项。对 $N=4$，$x=-1$ 的可能 double pole 也精确相消，因为 double-transposition character 正好等于 $h_Q(-1,1,-1)$。因此 leading coefficient 无 residue-class ambiguity。完整推导见 general/ASYMPTOTIC_RANK.md。

例如
$\rho_{4,0}=1,\ \rho_{4,1}=3,\ \rho_{4,2}=13/2,\ \rho_{4,3}=23/2$。
当 $N\ge4$，正谱的 rank 确实随 $P$ 无界增长；此前三粒子 chiral 的固定低 rank 不能原封不动推广为一般 $N$ 的固定-size 正矩阵。与此同时，占整个 primary 空间的非饱和比例仅为 $O(P^{-1})$。

---

## 8. 完整三粒子任意左右谱

三粒子 spectator 只有一个 one-particle module，所以式 (6.8) 的全部 spectator primary labels 消失。可以真正得到只依赖较小手征次数的闭式计算。

### 8.1 两个 Racah matrices 的乘积

令 $d=\Delta$，定义

\[
a_J=(-1)^J\frac{(d)_J}{(2d)_J},
\]

\[
\omega_k^{(J)}=
\frac{(J+3d-1)_k(-J)_k(2d-1)_k}
{(1-d-J)_k(2d+J)_k\,k!}
\frac{2d+2k-1}{2d-1}>0,
\]

\[
R_J(k,r)=a_J\sqrt{\omega_k^{(J)}\omega_r^{(J)}}\
{}_4F_3\!\left(
\begin{matrix}-k,k+2d-1,-r,r+2d-1\\d,-J,J+3d-1\end{matrix};1\right).
\tag{8.1}
\]

这是实际有 $-J$ 截断的 finite Racah polynomial。它来自式 (6.1) 的 pair–single coupling 和 label transposition，与既有 $\mathfrak{su}(1,1)$ recoupling literature 一致 [R1,R2]。

在

\[
\mathcal A_{P,Q}=
\{(k,l):0\le l\le Q,\ 0\le k\le\min(P,l+2),\
k+l\ {\rm even}\}
\tag{8.2}
\]

上，完整非零 shifted spectrum 就是 Hermitian 矩阵

\[
\boxed{
\mathsf M_{(k,l),(r,s)}
=\sqrt{a_{kl}a_{rs}}
\big[\delta_{kr}\delta_{ls}+2R_P(k,r)R_Q(l,s)\big]
}
\tag{8.3}
\]

的非零谱。这里 $a_{kl}$ 仍为式 (4.1) 的 positive pair residual，不是式 (8.1) 的单指标 $a_J$。程序使用等谱的 rational similarity，避免 square roots；论文中的 positivity 与渐近估计始终用 Hermitian 版本。

Bose symmetrizer 的 Racah 表示及相似的三粒子 Gram construction 在相关 conformal triple-twist literature 已经出现 [R3]。本轮的具体新简化是 Einstein residual 的 finite strip、任意左右乘积、完整辅助零根消去与全指标 kernel，而非重新声称发明 Racah coefficients。

### 8.2 全部重数与确切阈值

\[
d_3(P,Q)=
\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2c_Pc_Q}{6},
\tag{8.4}
\]

其中 $\epsilon_j=1$ 对偶数、否则为零，$c_j=(1,-1,0)_{j\bmod3}$。

令

\[
d_{\rm ch}(r)=
\begin{cases}
0,&r<0,\\
\lfloor r/6\rfloor+1-\mathbf1_{r\bmod6=1},&r\ge0.
\end{cases}
\]

则定理 2 给出

\[
\boxed{\kappa_3(P,Q)=\sum_{j=0}^Qd_{\rm ch}(P-12-Q-j),}
\tag{8.5}
\]

完整正 rank 为 $d_3-\kappa_3$。当 $P\ge Q+2$，辅助阶数是

\[
r_Q=\left\lfloor\frac{(Q+4)^2}{4}\right\rfloor-2
=2,4,7,10,14,18,23,\ldots.
\tag{8.6}
\]

而对**每个**

\[
\boxed{P\ge2Q+8}
\tag{8.7}
\]

都有 $R_3(P,Q)=r_Q$。证明用式 (7.1) 中 $-1$ 和三次单位根处的精确 cyclotomic cancellation；消去这些因子后，rank generating function 是 degree $\le2Q+8$ 的 numerator 除以 $1-x$。

不能在小 $P$ 时把 rank 写成 $\min(d_3,r_Q)$。例如：

| $(P,Q)$ | physical primary dimension | auxiliary dimension | positive rank | $\kappa_3$ |
|---|---:|---:|---:|---:|
| $(17,5)$ | 18 | 18 | 17 | 1 |
| $(18,6)$ | 23 | 23 | 22 | 1 |
| $(1000,4)$ | 835 | 14 | 14 | 821 |
| $(1000,6)$ | 1168 | 23 | 23 | 1145 |
| $(10^9,6)$ | 1,166,666,668 | 23 | 23 | 1,166,666,645 |

附件 three/large_nonchiral_spectra.json 和统一程序输出保存了最后三类输入的全部 exact polynomial coefficients。固定整数 $\Delta,Q$ 时，Racah gamma ratio 也化为有限长度的 rational product，算法对大 $P$ 的增长主要体现在整数 bit length，而不是 matrix order。

### 8.3 全部 leading eigenvectors

用式 (6.1) 构造并归一化 pair-coupled $F_{kl}$。对式 (8.3) 的单位本征向量 $v$、正根 $x$，物理 primary 为

\[
\Psi_x=\sqrt{\frac3x}
\sum_{(k,l)\in\mathcal A_{P,Q}}
\sqrt{a_{kl}}\,v_{kl}\,\Pi_BF_{kl}.
\tag{8.8}
\]

全部 baseline vectors 使用式 (5.15)。因此不需要通过巨大 physical matrix 的 nullspace 才能恢复 states。

这一步现也有不展开 degree-$P$ 多项式的实际实现 three/racah_states.py。令 $S$ 的列是 $\Pi_BF_{kl}$，$\Omega=\operatorname{diag}(\omega_k^{(P)}\omega_l^{(Q)})$，$U=\sqrt{\Omega}$，$D=\operatorname{diag}(a_{kl})$。有理实现使用

\[
M_{\rm rat}=U^{-1}(3S^\dagger S)UD,\qquad
\mathcal L=SDU,\qquad
A_3\mathcal L=\mathcal L M_{\rm rat},\qquad
\mathcal L^\dagger\mathcal L=\frac13D\Omega M_{\rm rat}.
\tag{8.8a}
\]

选取 $\operatorname{im}M_{\rm rat}$ 的 independent columns $E$ 后，$\Phi=\mathcal L E$ 是完整 positive physical basis，其 Gram 为 $E^\dagger D\Omega M_{\rm rat}E/3$。程序输出完整 CG recurrence、相位、范数与这些有限矩阵；不执行长度为 $P$ 的多项式展开。三粒子全部 baseline states 同时用 $Q+1$ 个 frame generators 和 $2m_2+3m_3=P-12-Q-j$ 的整数参数区间编码。因此前述 $P=10^9,Q=6$ 例子也已经输出全部本征态的有限生成规则，包含 $1,166,666,645$ 维 baseline 空间。

### 8.4 固定 $Q$ 的完整能量渐近

对于 finite low indices，

\[
\omega_k^{(P)}=\omega_{\infty,k}[1+O(P^{-2})],\qquad
\omega_{\infty,k}=\frac{(2d-1)_k}{k!}
\frac{2d+2k-1}{2d-1},
\]

\[
a_P=(-1)^P\frac{\Gamma(2d)}{\Gamma(d)}P^{-d}
\left[1-\frac{d(3d-1)}{2P}+O(P^{-2})\right].
\]

Finite Racah sum 的首项是一，其余为 $O(P^{-2})$。因此在物理 Hermitian matrix 中

\[
\mathsf M-\operatorname{diag}(a_{kl})
=(-1)^PP^{-d}\mathsf L_Q+O(P^{-d-1}),
\tag{8.9}
\]

\[
(\mathsf L_Q)_{(k,l),(r,s)}
=2\frac{\Gamma(2d)}{\Gamma(d)}
\sqrt{a_{kl}a_{rs}\omega_{\infty,k}\omega_{\infty,r}}\,
R_Q(l,s).
\]

Weyl eigenvalue bound 给出全部 $r_Q$ 个非 baseline corrections：

\[
g\longrightarrow b_3(Q)+a_{kl},
\qquad \text{误差 }O(P^{-\Delta}).
\tag{8.10}
\]

重复极限值须在相应退化子空间内对 $\mathsf L_Q$ 做微扰。这个结论已用 72 个高精度 gamma-ratio/Hermitian-norm cases 检查，覆盖整数与非整数 $\Delta$ 及 $P$ 奇偶号；精确结论来自上面的 finite-sum 渐近，而不是数值拟合。

---

## 9. 一次处理无限多个粒子数：稳定 $N$ 的精确 affine pencil

上一结构固定 $N$、压缩高激发。还有另一种完全不同的统一化：固定双次数 $(P,Q)$，使粒子数不再增加矩阵维数。

### 定理 4：稳定粒子数定理

令 $D=P+Q$。对于所有整数 $N\ge D$（ground level 取 $N\ge1$），存在一个不依赖 $N$ 的有限空间和基底，使

\[
\boxed{W_{N;P,Q}=\binom N2g_{00}I
+N\mathsf A_{P,Q}(\Delta)+\mathsf B_{P,Q}(\Delta).}
\tag{9.1}
\]

两个 global lowering matrices 在同一基底也不依赖 $N$。完整 primary restriction 因而仍有式 (9.1) 的形式，且 primary 基底本身可以显式给出。这里 $\mathsf A,\mathsf B$ 不是 §4 的 positive residual $A_N$，也没有声称它们相互对易。

**证明。** 一个非零 mode $\alpha=(p,q)\ne(0,0)$ 至少携带一个 excitation，故给定 $(P,Q)$ 时，激发多重集 $s$ 的长度 $r\le D$。其余 $N-r$ 个粒子处于 ground mode。对 $N\ge D$，全部激发多重集的列表固定。

使用 averaged symmetric tensors

\[
e_s=\frac1{|\operatorname{Orb}_s|}
\sum_{\text{distinct label assignments}}
\prod_i z_i^{p_i}w_i^{q_i},
\qquad
|\operatorname{Orb}_s|=
\frac{N!}{(N-r)!\prod_\alpha n_\alpha!}.
\tag{9.2}
\]

其 Gram 为

\[
\Gamma_s(N)=
\frac{\prod_\alpha n_\alpha!h_\alpha^{n_\alpha}}
{N(N-1)\cdots(N-r+1)},\qquad
h_{(p,q)}=\frac{p!q!}{(\Delta)_p(\Delta)_q}.
\tag{9.3}
\]

这等价于 unnormalized creation-power basis 除以整个 $N$-粒子空间共有的 $\sqrt{N!}$。轨道平均约定恰使 transition 的 orbit-size ratios 消失。

两体作用只含三种 occupation factors：两条 excited legs 给常数；一条 ground、一条 excited 给 $(N-r)n_\alpha$；两条 ground 给 $\binom{N-r}{2}$。因左右 excitations 分别非负且守恒，ground–ground 输入只能输出 ground–ground，其系数是 $g_{00}$。唯一 quadratic-$N$ 项因此是对角元，而且

\[
\binom{N-r}{2}g_{00}-\binom N2g_{00}
=\left[-rN+\frac{r(r+1)}2\right]g_{00}.
\tag{9.4}
\]

余下全部 entries 都 affine in $N$。这逐项证明式 (9.1)，没有在若干 $N$ 上插值。

在 averaged basis 中，lowering 的 coefficient 只是 $n_\alpha p_\alpha$ 或 $n_\alpha q_\alpha$。把 excitation 降为 ground 时不会额外产生 $N-r+1$。因此其共同核有一个固定基底。Global covariance 保持这个核；比较无限多个整数 $N$ 的 affine coefficients，$\mathsf A,\mathsf B$ 分别保持它，primary restriction 也 affine。∎

这一部分其实是较一般的多体定理：任何已保持 number 和非负双次数、且有唯一零次数单粒子模的两体 operator，都有同样的 stable-$N$ 结构。Einstein theory 的作用是提供正确的 $w$ 并证明所需物理闭合。

### 9.1 直接构造全部 stable primaries，无需求 lowering nullspace

引入 formal creation variables $a_{pq}$，取 $a_{00}=1$。把 monomial $\prod a_{pq}^{n_{pq}}$ 映到式 (9.2) 的 averaged tensor；这不是对固定 $N$ 波函数的 pointwise multiplication。

两个 lowering derivations 是

\[
D_La_{pq}=p\,a_{p-1,q},\qquad
D_Ra_{pq}=q\,a_{p,q-1}.
\]

它们分别有 slice $a_{10},a_{01}$。定义 formal centered moments

\[
c_{pq}=
\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj
(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij},
\qquad p+q\ge2.
\tag{9.5}
\]

直接求导得 $D_Lc_{pq}=D_Rc_{pq}=0$；inverse binomial translation 给出

\[
\mathbb C[a_{pq}:(p,q)\ne(0,0)]
=\mathbb C[c_{pq}:p+q\ge2][a_{10},a_{01}].
\tag{9.6}
\]

于是所有 stable primaries 自由地由 $c_{pq}$ 的 monomials 生成，维数满足

\[
\boxed{\mathcal M_\infty(x,y)
=\prod_{p+q\ge2}\frac1{1-x^py^q}.}
\tag{9.7}
\]

在给定 finite bidegree，只有有限因子参与。general/stable_n.py 同时提供 fixed-lowering nullspace 与直接 centered-primary basis 两种构造，二者已经独立核对。

### 9.2 完整非手征 $(2,2)$：一条公式给所有 $N\ge4$

当 $\Delta=2$，在直接 primary basis
$(c_{22},c_{02}c_{20},c_{11}^2)$ 上，

\[
\boxed{
35\!\left(W_N+\frac{28}{5}N(N-1)I\right)=
\begin{pmatrix}
-104(7N+5)&248&-396\\
8(31N-163)&-8(16N+83)&-396\\
-32(11N+2)&-352&-8(122N+1)
\end{pmatrix}.}
\tag{9.8}
\]

它在物理 Gram 中 self-adjoint，不要求 Euclidean symmetric。令

\[
g=-\frac{28}{5}N(N-1)+\frac t{35}.
\]

则全部三条 primary corrections 是

\[
\boxed{
\begin{aligned}
0={}&t^3+8(229N+149)t^2\\
&+64(14510N^2+23617N+8022)t\\
&+2048(2N+1)(22204N^2+101112N+44687)
\end{aligned}}
\tag{9.9}
\]

的全部根。它适用于每个 $N\ge4$；general/stable_symbolic_P2_Q2.json 更给出 generic $\Delta$ 的完整 rational-function pencil。另已算出 $(P,Q)=(4,3),\Delta=2$ 的完整 $13$ 维 stable primary pencil，一次覆盖所有 $N\ge7$。

统一程序还实际运行了 $N=10^9,(P,Q)=(2,2)$，得到全部三根的精确方程、isolating intervals、spectral projectors 和物理 Gram。矩阵维数始终为三，模式列表只有 finite excited multisets。

这不是说 finite-$N$ eigenvalues 仿射。事实上式 (9.8) 的 $\mathsf A,\mathsf B$ 的 commutator 满 rank，且该 cubic 在 $\mathbb Q(N)$ 上不可约。若把式 (9.1) 简化为逐个单态的 $N\sigma+\beta$，就会失去真实混合。

### 9.3 全部 large-$N$ leading slopes 也可以不解矩阵而给出

对单个非零 mode，定义有限 pair-overlap weights

\[
\alpha_{T,k}=
\binom Tk\frac{(\Delta)_T}
{(2\Delta+k-1)_k(2\Delta+2k)_{T-k}},
\]

\[
\sigma_{pq}=
2\sum_{\substack{0\le k\le p,\ 0\le l\le q\\k+l\ {\rm even}}}
\alpha_{p,k}\alpha_{q,l}
(\gamma_{kl}-g_{00}).
\tag{9.10}
\]

按激发粒子数排序，$\mathsf A$ 是三角矩阵：ground–excited pair 可以将一条 excitation 拆成两条，不能在 $\mathsf A$ 中将两条 excited source legs 合并。其对角元因此是 $\sum_{\alpha\in s}\sigma_\alpha$。

Primary restriction 的完整 multiplicities 可严格去除两个 global descendant directions。式 (9.6) 给出 exact two-derivative Koszul complex；$\mathsf A$ intertwines 该 complex，而
$\sigma_{10}=\sigma_{01}=0$。于是

\[
\boxed{
\sum_{P,Q}\sum_{\sigma\in\mathrm{spec}\,\mathsf A_{P,Q}}
m_\sigma x^Py^Q e^{t\sigma}
=\prod_{p+q\ge2}
\frac1{1-x^py^q e^{t\sigma_{pq}}}.}
\tag{9.11}
\]

它给出
$(g-\binom N2g_{00})/N$ 的全部 unordered multiset limits。这里不假设 $\mathsf A$ 可对角化，也不自动声称统一的 $O(1)$ 次阶误差；极限来自有限特征多项式的连续性。这个关于 perturbative coefficient 的代数大-$N$ 结论，不改变本研究固定有限 $N$ 后取弱耦合的物理顺序。

### 9.4 额外的任意-$N$ 精确小次数 primary families

除了整个 logarithmic eigenspace，以下非饱和态也有统一有限公式：

| primary 双次数 | 范围 | 完整唯一 primary 的 $g$ |
|---|---|---|
| $(0,0)$ | $N\ge2$ | $\binom N2g_{00}$ |
| $(1,1)$ | $N\ge2$ | $\binom N2g_{00}+\frac N2(g_{10}-g_{00})$ |
| $(2,0)$ | $N\ge2$ | $\binom N2g_{00}+\frac{N\Delta+1}{2\Delta+1}(g_{02}-g_{00})$ |
| $(3,0)$ | $N\ge3$ | $\binom N2g_{00}+\frac{3(N\Delta+2)}{2(2\Delta+1)}(g_{02}-g_{00})$ |
| $(2,1)$ | $N\ge3$ | $\binom N2g_{00}+\frac N2(g_{10}-g_{00})+\frac{N\Delta+2}{2(2\Delta+1)}(g_{02}-g_{00})$ |

左右交换给对应另一族。证明不需要拟合 $N$：在这些唯一-primary spaces 中只出现 $(k,l)=(0,0),(1,1),(2,0)$ 等有限 channels；左右 pair-Casimir sums 分别确定
$\sum P_{11}=N/2$ 与所列 $\sum P_{20}$。

例如 $(1,1)$ 的 normalized occupation basis 是

\[
|A_N\rangle=\frac{(b_{00}^\dagger)^{N-1}b_{11}^\dagger}
{\sqrt{(N-1)!}}|0\rangle,\qquad
|B_N\rangle=\frac{(b_{00}^\dagger)^{N-2}b_{10}^\dagger b_{01}^\dagger}
{\sqrt{(N-2)!}}|0\rangle.
\]

唯一 primary 为
$(-\sqrt{N-1}|A_N\rangle+|B_N\rangle)/\sqrt N$，
它被两个 free lowering 杀掉；另一个正交态是 ground primary 的 descendant。$\Delta=2$ 时，$N=3$ 的 primary correction 为 $-528/7$，$N=4$ 为 $-4304/35$。这些并非最大手征态。

---

## 10. 如何重建整个 scalar Fock spectrum

### 定理 5：全部有限能量谱的有效构造

在 §1–2 的物理输入下，给定任意有限 $N,P,Q$，以下算法终止并产生全部 $O(G)$ corrections 及物理重数：

1. $N=0,1$ 使用已固定的零修正；$N=2$ 使用式 (3.2)–(3.6)。
2. 对 $N\ge3$，用式 (3.9)、(5.1) 精确计算 $d_N,\kappa_N$。全部 baseline eigenvectors 由式 (5.15) 直接生成。
3. 正谱用式 (6.1)–(6.7) 的有限 matrix entries 和 determinant；$N=3$ 用更小的式 (8.3)。若 $N\ge P+Q$，可改用一次符号计算覆盖全部 stable $N$ 的式 (9.1)，无需随着粒子数增加状态标签。
4. 对得到的 rational-coefficient polynomial 作 square-free decomposition 和实根隔离，得到 exact algebraic roots 及重数。若使用 symbolic $\Delta$，先给出 $\mathbb Q(\Delta)$ 上的特征多项式，再在所需质量处 specialization。
5. 正谱本征态由式 (6.5)、(8.8) 或 stable primary basis 的 kernel 计算得到；谱投影公式如下。两侧 global raising 产生所有 descendants。

这些步骤只包含明确的有限 sums、integer/rational arithmetic、线性方程与单变量多项式运算；没有未确定的 dynamical coefficient、未完成的无限 intermediate-state sum、或者需要先猜测的 interacting eigenstate。

### 10.1 精确谱投影，不依赖数值 eigenvectors

令 $M$ 是相应 physical positive-space matrix，$m(t)$ 是其 characteristic polynomial 的 square-free part。$M$ 在每个指定物理参数下与 self-adjoint operator 相似，故 semisimple。对 $m(a)=0$，

\[
\boxed{\Pi_a=
\frac{\big[m(t)/(t-a)\big]_{t=M}}{m'(a)}.}
\tag{10.1}
\]

Synthetic division 以 formal root $a$ 计算 numerator；余项 $m(a)$ 为零。该 projector 的 columns 张成整个 $a$-eigenspace，包括重复本征值的完整重数。将这些 columns 通过报告的 physical state embedding 映回，再用物理 Gram 归一化，便得到可计算的精确 states。统一程序的 projectors 选项实际输出这个矩阵公式与所需 embedding。

使用 symbolic $\Delta$ 或 symbolic $N$ 时，**generic** square-free part、gcd、image pivots 和 individual projectors 未必与特殊参数 specialization 交换。Global rational characteristic polynomial 仍有效；在 eigenvalue collisions 或所选 minor 的零点处，要代入参数后重新做这些有限步骤。程序输出明确保留这一说明。

### 10.2 全层谱与所有粒子数的自由简并

固定 $N$ 的完整 bidegree $(P,Q)$ 包含每个
$(a,b)$ primary 的 descendant level $(P-a,Q-b)$，其中
$0\le a\le P,\ 0\le b\le Q$。它们各自只有一个这样的左右 global descendant；相同 $g$ 的重数相加。式 (3.10) 是完整性检查。

若直接指定一个自由能量/自旋壳 $(E_0,J)$，则

\[
0\le N\le\lfloor E_0/\Delta\rfloor,\qquad
P=\frac{E_0-N\Delta+J}{2},\quad
Q=\frac{E_0-N\Delta-J}{2}.
\tag{10.2}
\]

只要 $P,Q$ 为非负整数，就必须纳入该 $N$。Vacuum 单独只出现在 $E_0=J=0$。§2 已证明这些不同 $N$ 的自由简并在 order $G$ 不重新打开 physical mixing；因此可以合并其 spectra，而不是事先排除简并。

统一程序 shell 已实际算出

\[
\Delta=2,\qquad E_0=10,\qquad J=0
\]

的整个 scalar shell：

| $N$ | $(P,Q)$ | 完整 Fock dimension |
|---:|---:|---:|
| 1 | $(4,4)$ | 1 |
| 2 | $(3,3)$ | 8 |
| 3 | $(2,2)$ | 8 |
| 4 | $(1,1)$ | 2 |
| 5 | $(0,0)$ | 1 |
| 合计 | | 20 |

程序不是用近似小数判断“同能”。它将各个 square-free root polynomials 用 polynomial gcd 分成互素部分，公共根的物理重数相加；巨大的 repeated baseline factor 始终保存为一次因子加 multiplicity，无需展开成高次稠密多项式。

### 10.3 本征态与物理 observables 的识别

本轮生成的是 resonant normal form 中的 leading eigenvectors，以及确定其 $O(G)$ splitting 所需的全部对角化。返回 unreduced canonical variables 时，要应用
$e^{-\kappa S}$ 及进一步 off-resonant dressing；这些原变量中的态一般含 virtual gravitational components。

因此，“$h=0$”不是要求原变量态严格没有任何含引力的项。本报告没有计算完整 higher-order wavefunction，亦没有声称对整个无限 Fock completion 存在一个已经建立的强极限 interacting unitary。对每个固定 finite block 的谱识别则由式 (2.5) 和前述闭合证明足够保证。

---

## 11. 实际完成的新多体谱与闭式障碍

### 11.1 两个从原 Hamiltonian 直接交叉检查的非手征谱

$\Delta=2,N=3,(P,Q)=(2,2)$ 的两个 primary corrections 是

\[
g^2+\frac{34480}{175}g+\frac{1484288}{175}=0
\tag{11.1}
\]

的全部根，约为 $-133.4916895,-63.53688193$。自由 primary energy 为 $10$。

$\Delta=2,N=4,(P,Q)=(2,2)$ 的三条 corrections 是

\[
g^3+\frac{15576}{35}g^2
+\frac{78091392}{1225}g
+\frac{125343737856}{42875}=0,
\tag{11.2}
\]

约为
$-194.983775280446,-150.265283415077,-99.7795127330481$。
自由 primary energy 为 $12$。式 (11.2) 同时由 raw canonical matrix、pair-operator orbit construction、pair–spectator Gram 和 stable-$N$ pencil 得到。

### 11.2 完整三粒子非手征 quintic：已经超出普遍根式

取 $N=3,\Delta=2,(P,Q)=(6,3)$，令 $x=g+240$。完整五条 primary levels 是

\[
\begin{aligned}
f_5(x)={}&3713039955625x^5-942938552055500x^4\\
&+74501974772024800x^3-2003576214981165440x^2\\
&+19936439419181140992x-54992948200676982784=0.
\end{aligned}
\tag{11.3}
\]

模 $23$ 的 monic reduction 是不可约五次式；模 $17$ 的 square-free factorization 为

\[
f_5(x)\ \sim\
(x^2-x+7)(x^3-x^2+5x+6).
\]

后一 Frobenius 的三次方是 transposition。不可约 prime-degree action 是 primitive；一个 primitive subgroup 含 transposition，其共轭 transpositions 的边图连通，因而生成整个 $S_5$。所以

\[
\operatorname{Gal}(f_5/\mathbb Q)=S_5.
\tag{11.4}
\]

附件给出 finite-field arithmetic 的直接证书，不以 numerical roots 或“看上去不可约”代替证明。

### 11.3 四粒子 nonchiral sextic：$S_6$ 证书

取 $N=4,\Delta=2,(P,Q)=(4,2)$，令 $x=g+240$。全部六条 corrections 由

\[
\begin{aligned}
f_6(x)={}&1039933125x^6-421922928000x^5\\
&+66656846278400x^4-5209664437286400x^3\\
&+211605191031377920x^2-4270116726919299072x\\
&+33819544399599108096=0
\end{aligned}
\tag{11.5}
\]

给出，$g$ 约为
$-211.6415574,-209.0140649,-205.5036757,-154.6161132,-142.8780907,-110.6252859$。

Exact square-free reductions 的 factor-degree patterns 为：

| prime | irreducible factor degrees | 提供的 group element |
|---:|---|---|
| 13 | $(1,2,3)$ | 三次方给 transposition |
| 17 | $(1,5)$ | 5-cycle |
| 31 | $(6)$ | transitivity |

5-cycle 排除 degree-six 的 block sizes $2,3$，故 group primitive；再用 transposition 得 $S_6$。main/galois_certificate.py 验证每个有限域因子、factorization product 与 square-freeness，另与 symbolic Galois calculation 交叉核对。

此外，四粒子 chiral $(P,Q)=(10,0)$ 的五次式同样有 $S_5$，证书见 general/SPECTRAL_OBSTRUCTIONS.md。因此无法将以前某些 low-rank chiral 根式谱推广成所有粒子数、所有手征块的根式公式。

**精确结论的范围：** 这些是“普遍根式表达不存在”的具体数学反例，不是“不存在任何精确算法”的证明，也不是 nonintegrability 或复杂度下界的证明。

### 11.4 更高块与任意-$N$ 数据

以下均实际生成了完整 primary operator；统一程序输出进一步包含全部 characteristic coefficients 与精确重数。它们不限制 individual particles 的 $q$、radial excitation 或左右 mode assignments。

| 粒子数 | primary $(P,Q)$ | primary dimension | 额外结构 |
|---:|---:|---:|---|
| 4 | $(8,0)$ | 4 | 新 chiral block |
| 4 | $(10,0)$ | 5 | $S_5$ quintic |
| 4 | $(12,0)$ | 7 | 完整 exact operator |
| 4 | $(24,0)$ | 19 | 1 个 $g=-96$ 饱和态，18 维正谱 |
| 4 | $(25,1)$ | 49 | 1 个 genuine nonchiral 饱和态 |
| 4 | $(8,2)$ | 15 | 完整 nonchiral operator |
| 4 | $(6,4)$ | 22 | 全部 degree-22 characteristic data 已生成 |
| 5 | $(3,2)$ | 4 | Gram 与 orbit intertwiners 精确相等 |
| 5 | $(6,2)$ | 14 | 全部 characteristic data 已生成 |
| 6 | $(3,2)$ | 4 | 独立 exact orbit check |
| 所有 $N\ge4$ | $(2,2)$ | 3 | generic $N,\Delta$ pencil |
| 所有 $N\ge7$ | $(4,3)$ | 13 | 一个 exact symbolic-$N$ pencil，$\Delta=2$ |

这些低粒子数块用于检验一般构造。全部更高 finite sectors 由同一算法生成，研究目标并未停在表中的最后一行。

---

## 12. 独立验证：与原 $O(G)$ Hamiltonian 的连接

所有新计算都通过式 (2.10) 的全指标 operator identity 与原 canonical quartic 相连。数学上，once the complete connected two-body operator is fixed，normal-ordered quartic 的 Fock lift 是唯一的。因而全部新谱均属于原 Hamiltonian，而不是另造一套能谱相同的表示论模型。

除此之外，本轮还重新求解原 spatial Einstein equations、按原 center/boundary data 取逆并积分式 (2.1)、(2.8)，完成了新的 raw checks。这里明确区分 analytic operator proof、独立 raw integrations、表示论交叉实现和高精度数值证据。

### 12.1 原约束积分与完整 Bose blocks

本轮从原约束新生成了 **39 个 normalized pair matrix entries**，contact 与 virtual-boundary terms 分别保存；其中 **21 个 boundary term 非零**。之后以 normalized occupation algebra 构造 $\Delta=2,N=3,4$、全部 $0\le P,Q\le2$ 的 **18 个完整 Fock blocks**。

原 matrices 生成之后，才导入已知 pair spectrum 作 posterior comparison。它们全部一致；另有：

- **24 条** inter-energy global-lowering Ward identities 精确为零；
- **18 个** full-characteristic/primary-descendant factorization checks 精确成立；
- 若人为删掉 virtual-boundary exchange，24 条 Ward checks 中 **20 条失败**。

一个最小的非手征 negative control 是 $N=3,(P,Q)=(1,1)$：contact-only left-lowering defect 为

\[
(0,-96/25),
\]

完整 contact plus boundary operator 的 defect 为零。这直接显示所研究的 theory 完整保留了 boundary exchange。

physics/raw_pair_cache.json 保存本轮新生成的原积分。最终 archived rerun 使用这个 exact cache，所以其记录 raw-polarized-constraints-this-run 为零；不能把 subsecond cached runtime 说成重新解出所有 Einstein responses 的时间。附带 recompute 选项可以冷启动重做原约束和积分。

### 12.2 特殊质量的真实 number-changing checks

直接计算了 $\Delta=2,3,4,5$、$0\le n_1\le n_2\le n_3\le2$ 的 **40 个 circular $1\to3$ candidate resonances**，取 $n_{\rm in}=\Delta+n_1+n_2+n_3$。每个 case 的完整 coefficient 都精确为零，且每个 case 内部均有非零 individual signed-leg pairings。

这些 external legs 的 boundary term 由 angular selection 为零，因此它们检验的是原 constraint/contact cancellation。非 circular 与全指标结论来自 §2.3 的 intertwiner proof；不能把四十个例子冒充全指标证明。

### 12.3 新数学结构的独立验证与负控制

| 检查 | 已完成的范围 | 证明了／检验了什么 |
|---|---|---|
| 三粒子完整 primary 谱交叉实现 | 26 个 blocks，含非整数 $\Delta$ | differential pair-Casimir 与 finite Racah characteristic polynomials 相等 |
| 三粒子紧凑 physical states | 7 个 blocks，含空块、辅助零模及 baseline complement | 实际 CG 多项式/Bargmann Gram/Hamiltonian action/物理谱投影全部精确一致 |
| 三粒子显式 logarithmic states | 38 个 generators，含 $Q\le6$ | 全部 forbidden pair coefficients 与 Bose residual 为零 |
| 独立 Gram/normal-jet audit | 15 个 generators、45 个 residuals，含 $\Delta=3/2$ | 物理内积与全核定理的关键对应 |
| Stable-$N$ | 24 个 exact checks | fixed-$N$ similarity、Gram adjointness、centered basis、slopes、symbolic low-level identities |
| 原 pair–spectator 算法 | $N=3,4,5$ 多个 chiral/nonchiral blocks | characteristic polynomial、Bose Gram、state intertwiner 全部相等 |
| 三粒子渐近 | 72 个 80 位 cases | Hermitian norm rate、integer/noninteger mass、奇偶符号 |
| Galois | 三粒子 $S_5$、四粒子 $S_5$/$S_6$ | 精确有限域证书，非小数推断 |

一个尤其重要的错误候选是用 $(\sum_iZ_iW_i)^Q$ 代替物理 $K_{\Delta,Q}$。在 $N=4,Q=2,\Delta=2$，

\[
\left.P_2^R\left(\sum_iZ_iW_i\right)^2\right|_{z_1=z_2}
=-\frac{(w_1-w_2)^2(2z_2-z_3-z_4)^2}{80}\ne0.
\tag{12.1}
\]

正确 Gram kernel 的对应 residual 为零。这个 negative control 排除了“只凭 Vandermonde 与 Euclidean invariant pairing 就能生成所有态”的错误简化。

### 12.4 没有把验证范围扩大成未做过的工作

没有对每个高能级重新执行原 radial integrations，也没有把不同表示的公式互相一致视为唯一物理证据。全指标物理连接是 §2 的 quartic lift 与既有两体 operator proof；raw checks 独立检验其数值和 phase conventions。

在探索中曾出现一个不正确的 mode phase $(-1)^{\min(p,q)}$。它被 raw global Ward identity 检出并去除，后来的零 residual 不是通过更改预期 eigenvalues 得到。原始长 route 中未完成的步骤也未被重新贴上完成标签。

---

## 13. 探索过的统一结构、失败原因与仍然开放的问题

### 13.1 Higher-rank Racah algebra 是计算语言，不自动等于可积性

Nested 或 disjoint intermediate Casimirs 构成 commuting chains；不同 chains 的 overlap 用 Racah polynomials 描述 [R1,R2]。但本 problem 的 $W_N$ 是许多相交 pairs 的特定 spectral functions 之和。仅因为它属于相关 operator algebra，并不能推出它落在某一 Abelian subalgebra。

直接检验了几个自然候选。在 $N=4,\Delta=2,(P,Q)=(6,0)$ 的三维 primary block 上，记

\[
U_0=\sum_{i<j}P^{(ij)}_{0},\qquad
U_2=\sum_{i<j}P^{(ij)}_{2}.
\]

Exact arithmetic 给出

\[
\operatorname{rank}[U_0,U_2]=2,\qquad
\dim\{X:[X,U_0]=[X,U_2]=0\}=1.
\tag{13.1}
\]

同一块中 $\sum_{i<j}(C_{ij}^L)^2$ 也不与 $W_N$ 对易。较大的四维 chiral block 继续显示 full commutator rank 与 scalar common commutant。它们排除共同对角化和一类与 pseudopotential coefficients 无关的 conserved operators；没有排除依赖 Einstein 特殊系数的更复杂 charges。

### 13.2 Logarithmic geometry 与 Calogero/Dunkl 之间缺少什么

本轮确实得到精确识别

\[
\ker(W_N-b_N(Q))
=V_N^4\,\mathcal T_{\Delta,Q}
\left[(\operatorname{Sym}_{\mathbb C[V]}^Q
\operatorname{Der}(-\log V_N))^{S_N}\right],
\tag{13.2}
\]

其中 $\mathcal T$ 是物理 Gram 与 pure-order normal-symbol map。它与 Coxeter quasi-invariants、Calogero integrals、Dunkl operators 的文献有明确邻接关系 [C1–C4]，但不能把这些对象直接等同。

有三个具体障碍：

**第一，frame 本身不对易。** Euler field $D_1$ 与 quadratic logarithmic field $D_2$ 满足 $[D_1,D_2]=D_2$。添加 zeroth-order ordering terms 不能消去这个 first-order principal commutator。

**第二，它们不 intertwine 实际非 baseline energies。** 在 $N=3,\Delta=2,Q=0$，令 $p_j=\sum_iZ_i^j$。直接 differential pair-Casimir calculation 给出

\[
W_3p_2=-40p_2,\qquad W_3p_3=-\frac{312}{7}p_3,
\qquad D_2p_2=2p_3,
\]

故

\[
[W_3,D_2]p_2=-\frac{64}{7}p_3\ne0.
\tag{13.3}
\]

**第三，chiral pair residual 不是一个固定 Casimir 多项式。**
$a_{00}P_0+a_{20}P_2$ 在无限多个偶数 $k\ge4$ 上为零，在 $k=0,2$ 上非零。不同 $C_k$ 两两不同，所以任何固定 polynomial 或在这些 eigenvalues 上无 pole 的 rational function $f(C)$ 都不能产生这组值：其 numerator 会有无限多个根。每个截断空间当然可以 interpolation，但 degree 随截断增长，不能由此得到一个固定阶的全 tower differential operator。

此外，完整 kernel 在任意严格正 pseudopotential coefficient deformation 下不变，而正谱会改变。所以 kernel 的 free-module geometry 本身不含 Einstein 特有的全部能量信息。Calogero/Dunkl 文献中的 commuting differential-reflection identities 或 flat-connection parallel-section conditions 是额外动力学结构，不是 tangency 自动提供的结论。

### 13.3 哪些研究问题仍有实质内容

现在尚未建立 full-Hamiltonian Calogero/Dunkl intertwiner、Bethe equations 或简单的全粒子数 commuting family。报告也没有用“未找到”断言它们不存在。

可明确定位的剩余成本是：平衡高激发下，positive primary rank 仍增长；四粒子及以上的 pair-permutation overlaps 可以进一步用 higher Racah recursions 替代 sparse monomial expansion。后者是参考实现的成本来源，不是尚未定义的物理 input。

已得到的最强一般结果是：**任意有限块的全部谱现在由明确的可运行 exact algorithm 决定；大块 kernel、固定-$Q$ 三粒子正谱大小、固定激发的全 stable-$N$ pencil，以及全部 leading-$N$ slopes 均有统一结构。** 一般根仍须作为代数根计算。真实 $S_5/S_6$ blocks 说明把“求解”要求成普遍根式会遇到具体代数障碍。

本轮的重要简化发生在不同层次：boundary Ward 消去了错误的外态复杂性；quartic Fock lift 消去了新多体动力学匹配；logarithmic flags 解出了巨大 eigenspace；Gram image 只保留实际受相互作用影响的方向；stable creation algebra 则消去了大量无激发 spectators 带来的表观维数增长。

---

## 14. 程序、复现与交付结构

### 14.1 输入和输出究竟是什么

统一入口是 **fock_research/fock_spectrum.py**。理论公式在实数 $\Delta>1$ 上成立；命令行的 exact numerical mode 接收有理 $\Delta$，symbolic mode 返回 $\mathbb Q(\Delta)$ 上的有理函数特征多项式。它不把任意不可计算实数声称为 exact numeric input。

| 命令 | 生成的数据 |
|---|---|
| primary | 完整 $(N,P,Q)$ global-primary 能移、重数；可附谱投影和本征态生成规则 |
| level | 固定 $(N,P,Q)$ 的全部 primaries 与 descendants，精确合并相同能移的重数 |
| shell | 固定 rational free energy 和 integer spin 的所有粒子数扇区 |
| counts | 完整层/primary/kernel/positive-image 维数；不计算 Hamiltonian |
| bound | 全部 Casimir-bound 态的显式多项式商及 pair-flag verification |
| stable | 一个决定所有 $N\ge\max(1,P+Q)$ 的 symbolic-$N$ pencil、primary basis 和全部 leading slopes |

输出是可保存的 JSON。多项式同时保存可读表达式和按降幂排列的 exact coefficients，后者适合程序读入；不要依赖把字面字符串中的 lambda 当作 Python 变量解析。

**谱的精确含义：** 每个 square-free polynomial 的实根是 exact algebraic numbers；程序给出每个根的 physical multiplicity。roots 选项另给 disjoint rational isolating intervals。不同 blocks 的根是否相同由 polynomial gcd 判定，避免 numerical tolerance 混淆真实简并与近简并。

**态的精确含义：** states/projectors 选项给出有限 polynomial 或 coupled-primary generator、coordinate matrix、physical Gram 和代数本征空间规则；baseline 空间另有完整 logarithmic basis。相同根的任意正交基都代表同一个物理 eigenspace，不人为固定无物理意义的简并态相位。返回 unreduced variables 的 dressing 见 §10.3。

### 14.2 最短可运行示例

解压研究包后，在其根目录运行。核心程序使用 Python 3.12、SymPy 1.14.0 和 mpmath 1.3.0；高精度渐近验证的一个独立脚本还使用 NumPy。这里的固定版本是本轮实际验证环境，不表示它们是所有可能的兼容版本。

~~~bash
python3 -m pip install -r fock_research/requirements.txt

# 完整四粒子非手征 primary：exact roots、物理态和谱投影
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 4 --p 2 --q 2 --roots --states --projectors \
  --output spectrum_n4_p2_q2.json

# 一次包括全部粒子数、primary 和 descendant 的完整自由能量壳
python3 fock_research/fock_spectrum.py shell \
  --delta 2 --energy 10 --spin 0 --roots --output shell_e10_j0.json

# 任意粒子数 stable pencil：保留 Delta 和 N 为符号
python3 fock_research/fock_spectrum.py stable \
  --delta symbolic --p 2 --q 2 --output all_n_p2_q2.json

# 十亿个粒子：不分配十亿个标签
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 1000000000 --p 2 --q 2 --roots --projectors \
  --output billion_particles.json

# 三粒子：十亿级左激发的完整谱
python3 fock_research/fock_spectrum.py primary \
  --delta 2 --n 3 --p 1000000000 --q 6 \
  --states --output billion_excitation.json

# 完整非手征 logarithmic bound state
python3 fock_research/fock_spectrum.py bound \
  --delta 2 --n 4 --p 27 --q 3 --verify --output logarithmic_state.json
~~~

大量 baseline 重数始终以一个线性能级和整数 multiplicity 保存，不展开为次数十亿的特征多项式。用户若主动要求展开极高次数波函数，其输出长度本身仍可能极大；§8 的 coupled-primary 表示提供无需展开的精确态定义。

symbolic-$\Delta$ 数据在特殊质量处必须先 specialize，再重算 square-free decomposition、image pivots 和 spectral projectors。特征多项式作为有理函数恒等式仍有效；generic root multiplicity 或 generic projector 不能不经检查地直接代入 eigenvalue collision。程序输出明确附有这个规则。

### 14.3 文件分工与可重复检查

| 文件/目录 | 用途 |
|---|---|
| fock_spectrum.py | 统一入口和精确重数/谱投影/完整能量壳 |
| main/counts.py | 全指标 Molien/kernel/rank 快速计数 |
| main/pair_gram.py | 三个 double cosets 的通用 pair–spectator 实现 |
| general/fock_exact.py | 独立 Bose-orbit/differential-Casimir Hamiltonian |
| general/stable_n.py | symbolic-$N$ pencil、centered creation basis、slopes |
| general/logarithmic_states.py | 全 $N,Q$ kernel 的实际多项式生成 |
| three/three_body_nonchiral.py | 全三粒子 finite-Racah exact spectrum |
| three/racah_states.py | 不展开高次数多项式的完整三粒子 physical states 与 Gram |
| physics/raw_canonical.py | 原空间约束与边界交换求解器的逐字节副本 |
| physics/raw_fock_checks.py | 原积分数据 lift 后的完整多粒子 block 检查 |
| physics/number_change_checks.py | 特殊整数 $\Delta$ 的 $31$ cancellation |
| verify_package.py | 最终接口、全层重数与代数谱投影的 integration gates |
| 各目录中的 Markdown/JSON | 较详细证明、独立审查、实际新谱、精确残差和运行信息 |
| inputs/previous 与 inputs/source_notes | 前一轮报告/压缩包及原十三份笔记的保存副本 |

最终接口检查可以直接运行：

~~~bash
python3 fock_research/verify_package.py
~~~

它重建 18 个完整原 Hamiltonian blocks 的所有 primary/descendant 谱并逐个比较特征多项式；验证 projector 的模多项式恒等式及重根例子；比较 528 个 binary recurrence coefficients；检查真空、一体、交换手征、$\Delta=3/2$、symbolic specialization、十亿尺度计数和全能量壳重数。运行记录在 main/integration_results.json。该脚本使用本轮已经独立生成的 raw matrices，**不把读取缓存称为重新执行 radial integrations**。

从原 constraints 重新计算积分使用：

~~~bash
python3 fock_research/physics/raw_fock_checks.py \
  --particles 3,4 --max-p 2 --max-q 2 --recompute
python3 fock_research/physics/number_change_checks.py
python3 fock_research/physics/logarithmic_kernel_audit.py
python3 fock_research/general/verify_stable_n.py
python3 fock_research/three/verify_nonchiral.py
python3 fock_research/three/verify_racah_states.py
~~~

第一条耗时显著高于读取缓存的默认模式。其余细分复现说明在各目录的 README/证明附件中。没有为了交付而把耗时较长的原积分每次重复执行；已有 exact cache 与 source hashes 使必要的复算可追溯。

### 14.4 数学成本与实现成本

固定 $N,Q$ 的压缩是实际的 polynomial-degree 降低；三粒子达到 $P$-独立的最终 matrix order。固定 $P,Q$ 的 stable-$N$ 结果则完全消去未激发 spectators 的索引增长。这两个方向均有实际极端输入输出。

一般 $N\ge4$、平衡大 $P,Q$ 时，positive rank 仍增长。当前通用 overlap evaluator 使用 sparse polynomials；它是明确可执行的 exact algorithm，但没有宣称对所有变量同时多项式时间或输出最优。Coefficients 的 bit size、代数根隔离以及显式输出态的长度也需要计入成本。进一步替换为 higher Racah recursions 可以改善这一实现层；它不再涉及缺失的物理 Hamiltonian。

---

## 15. 文献、来源与本轮贡献的边界

### 15.1 原研究来源

**[S1]** GaoZ1en，原始 Einstein scalar spectrum 笔记，固定仓库快照  
[obsidian_note / ff06682448838bcbb02b135bd61bc661b394cbba](https://github.com/GaoZ1en/obsidian_note/tree/ff06682448838bcbb02b135bd61bc661b394cbba/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum)。  
本文的 action、constraints、mixed cubic、regulator、two-body dynamical input 和 completed one-body prescription 均以此为来源。母稿精确依赖表见 physics/README.md。§§70–77 是本轮使用的最终证明链；§§64–69 未完成的替代路线仍按历史状态保存。

**[S2]** 前一轮 ADS3_Einstein_scalar_research.md 与 ADS3_research_package.zip。随本包 inputs/previous 保存，未修改。其 classical/OFPT equivalence、两粒子谱、chiral 任意-$N$ Jastrow 与三粒子 chiral 结果是本轮起点。

**[S3]** 本轮 physics/provenance.json、FULL_FOCK_PHYSICAL_CLOSURE.md、raw_fock_results.json 与 raw_pair_cache.json。它们分别记录来源、物理闭合论证及独立 Hamiltonian 验证，不把后验 pair formula 当作原积分输入。

原十三份本地源文件比 Git blob 各多一个末尾换行，这是前一轮保存副本的约定。去掉恰好一个终端 LF 后，全部 Git object hashes 一致；本地副本又与此前 ZIP 逐字节一致。此差异被记录，没有静默更改原材料。

### 15.2 Logarithmic arrangement 与多对称函数

**[L1]** K. Saito, “Theory of logarithmic differential forms and logarithmic vector fields,” *J. Fac. Sci. Univ. Tokyo, Sect. IA Math.* **27** (1980), 265–291.  
[东京大学资料记录](https://repository.dl.itc.u-tokyo.ac.jp/records/39646)。本轮的 determinant/height-one proof 在 §5 自足给出；这一理论来源也由 [L2,L3] 的原文明确追溯。

**[L2]** F. J. Calderón-Moreno, “Logarithmic differential operators and logarithmic de Rham complexes relative to a free divisor,” *Ann. Sci. École Norm. Sup.* **32** (1999), 701–714.  
[原文记录](https://www.numdam.org/item/?id=ASENS_1999_4_32_5_701_0)，[arXiv:math/9807047](https://arxiv.org/abs/math/9807047)。其结构定理涉及 free divisor 的 logarithmic differential-operator algebra。

**[L3]** M. Suárez-Álvarez, “The algebra of differential operators tangent to a hyperplane arrangement” (2018).  
[arXiv:1806.05410](https://arxiv.org/abs/1806.05410)。正文以扩展 Saito criterion 证明 free arrangement 的 tangent operator algebra 由 logarithmic derivations 生成，并明确说明它恢复 [L2] 的结果。本轮仔细区分其保存所有 ideal powers 的定义与仅保存一个 principal ideal 的定义。

**[L4]** N. Nakashima, “Modules of differential operators of order 2 on Coxeter arrangements,” revised 2013.  
[arXiv:1111.6712](https://arxiv.org/abs/1111.6712)。其高阶 module 定义与本文 all-powers normal-symbol module 不同，不能用前者的基底性质直接否定或证明本文的全核分类。

**[L5]** F. Vaccarino, “The ring of multisymmetric functions,” *Ann. Inst. Fourier* **55** (2005), 717–731.  
[原文与 DOI 10.5802/aif.2111](https://www.numdam.org/articles/10.5802/aif.2111/)。多对称函数本身及生成关系是已有 invariant theory；本轮 §9 的 affine Hamiltonian pencil、物理内积、centered creation slice 与能量 slopes 是针对当前 two-body dynamics 的构造。

### 15.3 Racah 与 conformal many-body recoupling

**[R1]** S. Post, “Racah Polynomials and Recoupling Schemes of $\mathfrak{su}(1,1)$,” *SIGMA* **11** (2015), 057.  
[arXiv:1504.03705](https://arxiv.org/abs/1504.03705)，[期刊原文](https://sigma-journal.com/2015/057/)。

**[R2]** H. De Bie and W. van de Vijver, “A discrete realization of the higher rank Racah algebra,” 2018, revised 2019.  
[arXiv:1808.10520](https://arxiv.org/abs/1808.10520)。本文使用 intermediate-Casimir sum identities、nested/disjoint commuting chains 以及不同 chains 的 recoupling；这些背景不保证当前 $W_N$ 可积。

**[R3]** S. Harris, A. Kaviraj, J. A. Mann, L. Quintavalle and V. Schomerus, “Comb Channel Lightcone Bootstrap II: Triple-Twist Anomalous Dimensions,” 2024.  
[arXiv:2401.10986](https://arxiv.org/abs/2401.10986)，特别参见 §5.2 的三粒子 Bose/Racah 结构。这是重要的相关先例；其 bootstrap regime 与具体相互作用不同，不能直接替代 Einstein Hamiltonian 的有限自由能级计算。

### 15.4 Calogero、Dunkl 与 quasi-invariants：相关但不等同

**[C1]** M. Feigin and A. P. Veselov, “Quasiinvariants of Coxeter groups and m-harmonic polynomials” (2001).  
[arXiv:math-ph/0105014](https://arxiv.org/abs/math-ph/0105014)。

**[C2]** P. Etingof and V. Ginzburg, “On m-quasiinvariants of Coxeter groups” (2001).  
[arXiv:math/0106175](https://arxiv.org/abs/math/0106175)。

**[C3]** M. Feigin and A. P. Veselov, “V-systems, holonomy Lie algebras and logarithmic vector fields,” 2014, revised 2017.  
[arXiv:1409.2424](https://arxiv.org/abs/1409.2424)。

**[C4]** C. F. Dunkl, “Orthogonal Polynomials of Types A and B and Related Calogero Models,” *Commun. Math. Phys.* **197** (1998), 451–487.  
[arXiv:q-alg/9710015](https://arxiv.org/abs/q-alg/9710015)。

以上四类原文用于检验“logarithmic frame 是否自动带来 Calogero/Dunkl integrability”的候选。§13 给出了实际失败的 commutators 和 finite-Casimir-function 障碍。这里的 vector-valued pair-flag conditions、物理 $\Delta$-dependent Gram 与 scalar quasi-invariant parity conditions 并非同一对象。

### 15.5 新结果的准确定位

本轮没有发明 Molien series、Saito criterion、Schrieffer–Wolff normal form、Racah coefficients 或 second quantization。推进在于把它们与**已从原 action 确定的 Einstein pair operator**连接，并完成以下从前没有的全指标结论：

- 整个有限 scalar Fock space 的 physical resonance closure 与唯一 quartic lift；
- 任意 $N,Q$ 的完整 Casimir-bound kernel，而不仅是 chiral 子族；
- 只涉及实际 positive image 的三-double-coset spectrum construction；
- 完整三粒子任意左右谱的有限-strip Racah formula、全重数与精确阈值；
- 固定激发的所有 stable particle numbers、完整 leading slopes 以及具体全 $N$ 非手征 cubic；
- 新的三/四/更高粒子数 exact spectra，真实 $S_5/S_6$ obstruction 与原 Hamiltonian 独立验证。

检索并核读相关原文没有提供一个可以直接代入本题的已知完整多体能谱。这里不据此作全球文献优先权断言；本文可以被逐条核验的贡献是明确的定理、构造、实际程序及数据。剩余的 integrability 问题与平衡高激发的实现成本已经定位，不能再与缺失的 gravitational dynamics 或未处理的 resonant mixing 混为一谈。
