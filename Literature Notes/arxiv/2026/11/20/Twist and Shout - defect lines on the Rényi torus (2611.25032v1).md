---
paper id: 2611.25032v1
title: "Twist and Shout: defect lines on the Rényi torus"
authors:
  - Naveen Balaji Umasankar
publication date: 2026-11-18T19:00:04
abstract: |-
  作者在双区间的二阶 Rényi 环面上插入闭合拓扑缺陷线。所得比值在 on-site 对称情形是约化密度矩阵与单区间对称变换后的 Hilbert–Schmidt overlap；相邻极限由缺陷端点算子的最低维数控制，绕分支点的 monodromy 反映缺陷自旋和部分 fusion-category associativity 数据。文章给出 E8、Ising 的显式结果、Ising 链计算及与 modular bootstrap 的联系。
comments: "34 pages, 8 figures, 5 tables"
url: https://arxiv.org/abs/2611.25032v1
summary: "为 Ising 双区间 sewing 提供带拓扑线的解析与 Pfaffian 基准，同时精确区分普通 fermion Gaussian 与 spin reduced density matrix。"
tags: []
---

# 双区间缝合后，闭合缺陷线测量什么

这篇的即时用途不是泛泛的 non-invertible symmetry：它给出一个可以在当前 Ising 区域缝合中直接插入并复算的量，

$$
\mathcal O_\eta=\frac{\operatorname{Tr}(\rho_{AB}P_A\rho_{AB}P_A)}{\operatorname{Tr}\rho_{AB}^2},
$$

且晶格端的 $\rho_{AB}$ 必须保留 Jordan–Wigner string 所产生的四项。另一个用途是提醒我们：从实截面上的模长或衰减指数，不能直接读出复延拓的缺陷自旋。

来源：[arXiv v1](https://arxiv.org/abs/2611.25032v1)。PDF 共 34 页；正文印刷页比 PDF 页小 1，例如 §5 的 (5.1) 在 **PDF p.17／正文 p.16**，附录 D 在 PDF pp.29–31／正文 pp.28–30。下面关键公式已对照实际渲染页。只讨论 $n=2$，不作 $n\to1$ 外推。

## 从两张 cut plane 到环面

取 unitary 二维 CFT、$c=\bar c$、唯一真空、无限实线上的基态。设 $A=[u_1,v_1]$、$B=[u_2,v_2]$ 且依次排列，交比为

$$
x=\frac{(v_1-u_1)(v_2-u_2)}{(u_2-u_1)(v_2-v_1)}\in(0,1).
$$

$\operatorname{Tr}\rho_{AB}^2$ 将两张平面沿两个 cut 交叉粘合，紧化后是四个分支点的二重覆叠，Riemann–Hurwitz 给 $g=1$。文章称单张 sheet 上环绕 $A$ 的圈为 $a$-cycle；跨过两个 cut、先由 $A$ 到 $B$ 再在另一张 sheet 返回的圈为 $b$-cycle。

$$
\tau=i\frac{K(1-x)}{K(x)},\qquad
q=e^{i\pi\tau},\quad Q=q^2=e^{2\pi i\tau},\qquad
x=\frac{\theta_2^4}{\theta_3^4}.
$$

$q\sim x/16$，不是 $Q\sim x/16$；这一平方正是后面 $2\Delta_L$ 的来源。对

$$
Z=\operatorname{Tr}_{\mathcal H}Q^{L_0-c/24}\bar Q^{\bar L_0-c/24}
$$

有源 (2.1)

$$
e^{I_2(x)}=\frac{\operatorname{Tr}\rho_{AB}^2}{\operatorname{Tr}\rho_A^2\operatorname{Tr}\rho_B^2}
=2^{-2c/3}x^{c/6}(1-x)^{-c/12}Z(\tau,\bar\tau).
\tag{1}
$$

这是 full bosonic CFT 的环面配分函数；固定一种 fermion spin structure 通常不是同一个对象。

## 为什么有线与无线的归一化因子完全相同

附录 A（PDF p.28）将端点映到 $0,x,1,\infty$，使用 $y^2=P(z)=z(z-x)(z-1)$、$du/dz=P^{-1/2}$。两张 sheet 的应力张量相加给出

$$
\frac{\langle T_{\rm orb}(z)\sigma\sigma\sigma\sigma\rangle}{G}
=\frac{2\langle T(u)\rangle}{P(z)}+\frac c6\{u,z\},\qquad
\{u,z\}=-\frac{P''}{2P}+\frac{3(P')^2}{8P^2}.
$$

在 $z=x$ 展开，双极点为 $3/[8(z-x)^2]$，简单极点为 $-(2x-1)/[4x(x-1)(z-x)]$。所以 $h_\sigma=c/16$，Ward identity 积分得到

$$
G=2^{-2c/3}|x(1-x)|^{-c/12}Z.
$$

常数由 $x\to0$ 的 identity OPE 固定。插入闭合拓扑线时，它不触碰分支点且与应力张量对易；同一论证仅把 $Z$ 换为 $Z_L$。收缩圈的 $d_L$ 同时出现在 OPE 与 $Z_L$ 的真空项中，故常数没有额外改变。

本次 Mathematica 从 $P(z)$ 重算 Schwarzian 双极点和 residue，分别得到 $3/8$ 与目标简单极点，残差为零。这核对的是几何 prefactor，不是独立构造一般 CFT 的路径积分。

# 两个量子化通道与单条线的谱

沿 $a$-cycle 的线 $L$ 定义作用于普通圆周 Hilbert space 的 $\widehat L$，真空本征值为 quantum dimension $d_L$。定义

$$
Z_L=\operatorname{Tr}_{\mathcal H}\widehat LQ^{L_0-c/24}\bar Q^{\bar L_0-c/24},\qquad
\mathcal O_L=\frac{Z_L}{Z},\qquad\mathcal R_L=\frac{\mathcal O_L}{d_L}.
\tag{2}
$$

交换空间、时间圈后，$Z_L(\tau)=Z^L(-1/\tau)$，其中 $Z^L$ 是缺陷 Hilbert space $\mathcal H_L$ 的普通热迹；其态也就是线可以终止其上的局部算子。

对真正 on-site 群对称，闭圈可压到 $A$ 的两条 lip，分别作用在 bra、ket，因此

$$
\mathcal O_g=\frac{\operatorname{Tr}(\rho_{AB}g_A\rho_{AB}g_A^{-1})}{\operatorname{Tr}\rho_{AB}^2}.
\tag{3}
$$

对 anomalous symmetry 或 non-invertible line，(2) 仍定义良好，但不能把 $g_A$ 换成一个想当然的“受限非可逆算符”。闭圈不经过端点，恰好避免选择端点边界态；它与带端点 prescription 的 subsystem symmetry action 并非已证相同。

## 远离与相邻极限

$x\to0$ 时普通通道真空主导。若 $\psi$ 的线本征值为 $\lambda_L(\psi)$，则

$$
\mathcal R_L=1-\sum_{\psi}\left(1-\frac{\lambda_L(\psi)}{d_L}\right)
\left(\frac{x}{16}\right)^{2\Delta_\psi}+\cdots.
$$

只需保留最低的非中性态。$x\to1$ 时改用 $\tau'=-1/\tau$ 和 $Q'\sim[(1-x)/16]^2$。分母在该通道由真空控制，分子最低缺陷态给

$$
\mathcal O_L\sim n_L\left(\frac{1-x}{16}\right)^{2\Delta_L}.
\tag{4}
$$

$n_L$ 是最低维数的简并数。对非平凡 simple line，源要求没有维数零的端点态，因而结果趋零。

## Monodromy 需要保留左右自旋，而非只延拓实公式

在复 $x$ 上绕 $1$ 一圈，$q'$ 绕零一圈，因此 $\tau'\to\tau'+2$。同时 $\bar x=x^*$ 沿反向圈移动，态 $(h,\bar h)$ 的净相位是

$$
e^{4\pi i(h-\bar h)}=e^{4\pi is}.
\tag{5}
$$

所以要按 $s\bmod\tfrac12$ 分解 $\mathcal O_L$；总和通常不是单一本征函数。实 $x$ 上的 $\Delta=h+\bar h$ 只给 (4) 的衰减率，不能代替 (5)。在 Lorentzian boosted slice 上，可以用独立的 $x,\bar x\in(0,1)$ 观察 $(1-x)^{2h}(1-\bar x)^{2\bar h}$，分别提取左右权重。

# 平均后的不对称度与电荷非对角块

令 $\mathcal C$ 是封闭于 fusion 与反向的有限 simple-line 集，$\dim\mathcal C=\sum_a d_a^2$。源 §3.3 的

$$
\Pi_{\mathcal C}=\frac1{\dim\mathcal C}\sum_a d_a\widehat L_a
$$

是**圆周态空间**上的正交投影，选出所有线都按 $d_a$ 作用的中性态。用 quantum dimensions 的 fusion 恒等式可得 $\Pi\widehat L_b=d_b\Pi$，再得 $\Pi^2=\Pi$；反向给 Hermiticity。

$$
\Delta S_2^{\mathcal C}=-\log\left[\frac1{\dim\mathcal C}\sum_a d_a\mathcal O_a\right]
=-\log\frac{Z_\Pi}{Z},\qquad
0\le\Delta S_2^{\mathcal C}\le\log\dim\mathcal C.
\tag{6}
$$

下界来自 $\Pi$ 选取正热迹中的子集。上界把 $Z_\Pi$ 经 $S$ 换到缺陷通道：每项非负，其中 identity 项已给 $Z/\dim\mathcal C$。这条上界是已知 Jones-index 型结果在 $n=2$ 的版本，不是文章新证明了一种普遍 entropy bound。

对群，twirl $\mathcal T_A\rho=|G|^{-1}\sum_g g_A\rho g_A^{-1}$ 是算符空间的正交投影，所以 $\operatorname{Tr}(\mathcal T_A\rho)^2=\operatorname{Tr}(\rho\mathcal T_A\rho)$，(6) 正是 twirl 前后的 Rényi 熵差。对一般 category，源没有证明这个圆周投影对应原来 subsystem Hilbert space 上的密度矩阵；不要把两种投影混淆。

尤其对 $\mathbb Z_2$，按 $A$ 的 charge sector 分块，$\rho-\mathcal T_A\rho$ 只剩非对角块，故

$$
\frac{\|\rho-\mathcal T_A\rho\|_2^2}{\operatorname{Tr}\rho^2}
=\frac{1-\mathcal O_\eta}{2}.
\tag{7}
$$

这是区域间交换电荷的 purity 权重，不是概率意义下所有阶 Rényi 都共享的 charge distribution。

# Ising：可直接拿来校准 sewing 的闭式结果

§5（PDF pp.17–19）的 simple lines 为 $1,\eta,N$，fusion 是 $\eta^2=1$、$\eta N=N$、$N^2=1+\eta$，维数分别为 $1,1,\sqrt2$。它们在 $(1,\varepsilon,\sigma)$ 三个模上的本征值为

$$
\eta:(1,1,-1),\qquad N:(\sqrt2,-\sqrt2,0).
$$

对实 $x$，设 $u=x^{1/4}$、$v=(1-x)^{1/4}$。由

$$
\chi_0\pm\chi_{1/2}=\sqrt{\theta_{3,4}/\eta_{\rm Ded}},\qquad
\chi_{1/16}=\sqrt{\theta_2/(2\eta_{\rm Ded})}
$$

和 $Z=\chi_0^2+\chi_{1/2}^2+\chi_{1/16}^2$，公共因子约掉后即得

$$
I_2=\log\frac{1+u+v}{2\sqrt v},\qquad
\mathcal O_\eta=\frac{1-u+v}{1+u+v},\qquad
\frac{\mathcal O_N}{\sqrt2}=\frac{2\sqrt v}{1+u+v}.
\tag{8}
$$

例如 $\chi_0^2+\chi_{1/2}^2=(\theta_3+\theta_4)/(2\eta_{\rm Ded})$，$\chi_0^2-\chi_{1/2}^2=\sqrt{\theta_3\theta_4}/\eta_{\rm Ded}$；这两个等式把线本征值真正转换成 (8)。本次 Mathematica 独立化简这两个 character 比值，残差均零。

(6) 的两种平均给

$$
\Delta S_2^{\mathbb Z_2}=\log\frac{1+u+v}{1+v},\qquad
\Delta S_2^{\rm Ising}=\log\frac{2(1+u+v)}{(1+\sqrt v)^2}.
$$

在 $x=1/2$ 复算得到 $I_2=0.37998175$，两种 charged parts 分别为 $0.37623290,0.37810557$。注意 $I_2$ 的分母是 $2\sqrt v$，不是 $\sqrt{2v}$。

相邻时，$\mathcal O_\eta\sim\tfrac12(1-x)^{1/4}$，对应 disorder operator 的 $\Delta=1/8,n=1$；$\mathcal O_N\sim\sqrt2(1-x)^{1/8}$，对应 $(1/16,0)$ 和 $(0,1/16)$ 两态。这些系数和指数均已通过极限复算。

复 $x$ 上，(8) 的 $u,v$ 要改为 $|x|^{1/4},|1-x|^{1/4}$，而 $N$ 分子的 $\sqrt v$ 改为 $\operatorname{Re}(1-x)^{1/8}$。所以 $\eta$ overlap 单值，$N$ 的两个 monodromy 本征值为 $e^{\pm i\pi/4}$；不能把实公式中的 $v$ 机械地当作同一全纯函数。

## 四 Gaussian 分量如何进入晶格计算

附录 D 取 $a_{2j-1}=(\prod_{k<j}\sigma_k^z)\sigma_j^x$、$a_{2j}=(\prod_{k<j}\sigma_k^z)\sigma_j^y$，故 $\sigma_j^z=-ia_{2j-1}a_{2j}$。以

$$
\langle a_ma_n\rangle=\delta_{mn}+i\Gamma_{mn},\qquad
\Gamma_{2j-1,2l}=\frac2{\pi[2(l-j)+1]}
$$

固定符号。令 $G$ 是两个 spin block 之间的 gap，定义

$$
\Gamma'=\Gamma_{AB}-\Gamma_{AB,G}\Gamma_{GG}^{-1}\Gamma_{G,AB},\qquad
w=\operatorname{Pf}\Gamma_{GG}=\langle P_G\rangle.
$$

spin 密度矩阵是

$$
\rho_{AB}=\frac12(\rho_{\Gamma_{AB}}+P_B\rho_{\Gamma_{AB}}P_B)
+\frac w2(\rho_{\Gamma'}-P_B\rho_{\Gamma'}P_B).
\tag{9}
$$

第一对保留 $B$-parity even 部分，第二对恢复穿过 gap 的 Jordan–Wigner string 所携带的信息。$\rho_{\Gamma'}$ 在此作为 Gaussian operator 使用，不应假定它单独是正密度矩阵。

对 $N_s$ 个 site 的两 Gaussian operators，源公式为

$$
\operatorname{Tr}(\rho_{\Gamma_1}\rho_{\Gamma_2})
=(-1)^{N_s}2^{-N_s}\operatorname{Pf}
\begin{pmatrix}\Gamma_1&\mathbf1\\-\mathbf1&-\Gamma_2\end{pmatrix}.
\tag{10}
$$

parity conjugation 只是同时翻转相应 Majorana 行列的号。把 (9) 写成 $\sum_{i=1}^4c_i\rho_{\Gamma_i}$，分母是 $\sum_{ij}c_ic_jT(\Gamma_i,\Gamma_j)$，分子是 $\sum_{ij}c_ic_jT(\Gamma_i,D_A\Gamma_jD_A)$。这给出执行计算的完整入口，而不仅是说“使用 Pfaffian”。

本次在 Mathematica 实现带 pivot 的反对称消元，先用四阶 Pfaffian $a_{12}a_{34}-a_{13}a_{24}+a_{14}a_{23}$ 校验符号，再使用 (9)–(10) 重算无限链上等长 block、gap $d=\ell$（$x=1/4$）的比值：

| $\ell$ | 本次 $\mathcal O_\eta$ |
|---:|---:|
| 1 | 0.74392125 |
| 2 | 0.66608007 |
| 4 | 0.60681542 |
| 8 | 0.56429920 |
| 16 | 0.53437794 |

连续公式为 $0.46384831$。这些小块数据向其接近，但**本次没有复现作者 $16\le\ell\le128$ 的全外推或其表 2 的精度**；有限 size discrepancy 不是对连续公式的反例。作者采用 $\ell^{-1/2},\ell^{-1}$ 的 scaling corrections，且没有做 $N$ 线的 lattice computation。

# E8 的例子：同一谱方法，另加分支信息

§4（PDF pp.13–16）取 $(E_8)_1$ 的 $c=8$，唯一 chiral character

$$
\chi_{E_8}=E_4/\eta_{\rm Ded}^8=j^{1/3},\qquad
j=\frac{256(1-x+x^2)^3}{x^2(1-x)^2}.
$$

仅作用 holomorphic sector 的线使 antiholomorphic character 在比值中抵消。因此这里 $\mathcal R_L$ 真的是 $x$ 的全纯多值函数，与 Ising 的非全纯情形不同。代入 (1) 得 $I_2=2\log[(1-x+x^2)/(1-x)]$；本次展开为 $2x^2+2x^3+x^4+O(x^6)$。

- $\mathbb Z_2$ 线保留 $D_8$ 的 120 currents，另 128 个为 odd。$\mathcal R_{\mathbb Z_2}=(1-x)/(1-x+x^2)$，缺陷最低态 $\Delta=1/2,n=16$，故相邻首项恰为 $1-x$。
- $\mathbb Z_3$ 保留 $A_2\oplus E_6$ 的 86 currents。其比值是 $[1+3^5(\eta(3\tau)/\eta(\tau))^{12}]^{-1}$，也满足 $jR^3(R-1)+27(1+8R)=0$，取 $x\to0$ 时 $R\to1$ 的分支。最低缺陷态 $\Delta=1/3,n=3$，给三阶分支；本次核对 $x=1/2$ 时的根 $(1+\sqrt3)/4$。
- Fibonacci 线来自 $(G_2)_1\times(F_4)_1$ commutant pair。设 $\varphi=(1+\sqrt5)/2$，则 $\chi_{E_8}=\chi_0\widetilde\chi_0+\chi_{2/5}\widetilde\chi_{3/5}$，twined character 为 $\varphi\chi_0\widetilde\chi_0-\varphi^{-1}\chi_{2/5}\widetilde\chi_{3/5}$。$S$-dual character 是 $\chi_0\widetilde\chi_{3/5}+\chi_{2/5}\widetilde\chi_0+\chi_{2/5}\widetilde\chi_{3/5}$，给 $\Delta_W=2/5,n_W=7$。

最后一个例子不能只调用主分支的超几何函数。二 character 理论的源 (4.6) 为

$$
\chi_0=j^{c/24}{}_2F_1(-c/24,1/3-c/24;1-h;1728/j),
$$
$$
\chi_h=N_hj^{c/24-h}{}_2F_1(h-c/24,h+1/3-c/24;1+h;1728/j).
$$

两理论的 $(c,h,N_h)$ 分别为 $(14/5,2/5,7)$、$(26/5,3/5,26)$。变量 $1728/j$ 在 $x\leftrightarrow1-x$ 下相同，无法自行区分两个半区；应改用

$$
s=\frac{(1+x)(2-x)(1-2x)}{2(1-x+x^2)^{3/2}},\qquad s^2=1-1728/j.
$$

$s$ 从 $1$ 走到 $-1$。若 $\gamma-a-b=1/2$，连接公式写成

$$
{}_2F_1(a,b;\gamma;1-s^2)=
\frac{\Gamma(\gamma)\Gamma(1/2)}{\Gamma(\gamma-a)\Gamma(\gamma-b)}{}_2F_1(a,b;1/2;s^2)
+\frac{\Gamma(\gamma)\Gamma(-1/2)}{\Gamma(a)\Gamma(b)}s\,{}_2F_1(\gamma-a,\gamma-b;3/2;s^2).
\tag{11}
$$

右边在 $s=0$ 解析，奇项显式记录分支。再取

$$
\mathcal R_W=\frac{\chi_0\widetilde\chi_0-\varphi^{-2}\chi_{2/5}\widetilde\chi_{3/5}}
{\chi_0\widetilde\chi_0+\chi_{2/5}\widetilde\chi_{3/5}}.
$$

本次核对了 $s(1-x)=-s(x)$、$s^2=1-1728/j$；由附录 B 的 modular ODE 递归生成至 $Q^{28}$ 的 character，并与 (11) 的数值比较。在 $x=1/4,1/2,3/4$，$\mathcal R_W$ 分别为 $0.92441504,0.67228826,0.31814517$，character 两条路径在工作精度约 37 位内一致。这是有限 series 与解析延拓的核验，不是重新证明 Fibonacci 线在该 CFT 中的存在。

# 由缺陷自旋看到 associativity，但尚不能重建整个 category

§6 使用已知 selection rules。$\mathbb Z_N$ anomaly $k$ 给 $s\in k/N^2+\mathbb Z/N$，故 (5) 的相位能提取 $k$；特别 anomalous $\mathbb Z_2$ 的本征值为 $-1$。例子 $SU(2)_1$ 的中心线在实截面给 $\mathcal O_g=\sqrt{1-x}$，绕一圈变号，而 Ising spin-flip 没有该 monodromy。

Ising 与 $SU(2)_2$ 的 duality lines 虽有同一 fusion ring，缺陷自旋分别为 $\pm1/16$ 与 $\pm3/16$ modulo $1/2$，所以 monodromy 对分别是 $e^{\pm i\pi/4}$、$e^{\pm3i\pi/4}$。一般 $k$ 个 Majorana 的对角 spin-structure sum 给

$$
\mathcal R_k(x)=\frac{2v^{k/2}}{1+u^k+v^k},
$$

复延拓的分子是 $2\operatorname{Re}(1-x)^{k/8}$，对应相位 $e^{\pm i\pi k/4}$。来源的 selection rules 是外部输入；本次复算的是由左右指数到相位的转换，不是所有 fusion categories 的自旋定理。

§8 指出 genus one 最多看到部分 tube-algebra／Drinfeld-centre 信息，modular data 本来就不完备。三 interval、$n=2$ 的 genus-two 覆叠可以扫描一般 genus-two moduli，而双 interval、$n=3$ 只给一个受对称限制的族。这为当前多区间 sewing 提供很具体的下一步观测量，但“从 entanglement 重建全部 $F$-symbols”在本文仍是研究方向，不能作为已证结论引用。

# Twist crossing 为什么等于一种 modular bootstrap

§7 与附录 C 把 seed character 改写为 central charge $C=2c$、external weight $h_\sigma=c/16$ 的 Virasoro blocks。椭圆表示中公共因子为

$$
\mathcal F_H=(16q)^{H-(C-1)/24}[x(1-x)]^{(C-1)/24-2h_\sigma}
\theta_3^{(C-1)/2-16h_\sigma}H_H(q).
$$

此时后两指数分别变为 $-(c+1)/24,-1/2$。把 $G$ 的 holomorphic prefactor 移到一侧，再用 $\theta_2\theta_3\theta_4=2\eta$，源 (7.3) 得

$$
Q^{c/24}\prod_{n\ge1}(1-Q^n)^{1/2}\chi_\bullet(\tau)
=\sum_Ha_H^\bullet(16q)^H H_H(q).
\tag{12}
$$

关键的常数是 $2^{-c/3}16^{(2c-1)/24}2^{1/6}=1$，而 $q$ 的剩余次数为 $q^{c/12}=Q^{c/24}$；本次已符号复算。故 seed weight $h$ 的模贡献 $H=2h+2k$ 的整组 blocks，而非独立的任意 $H$。

无线、或缺陷放在 crossed channel 时系数非负；线圈住 OPE 通道时可以带号，但满足 $|a_H^L|\le d_La_H$。将 blocks 按 seed Virasoro module 成组，crossing 就是 $Z_L(\tau)=Z^L(-1/\tau)$ 的 $S$ 关系；仍未包含全部 $T,ST$ 约束。把每个 block 独立处理会丢掉组内关系，因而是更弱的约束。真空模有 level-one null，不能用一般 $h\to0$ 的连续极限替代。

作者给出至 $H=14$ 的系数和有限线性规划示例，明确没有声称新 bootstrap bound。本次未重跑 block recursion、该线性规划或所有 coefficient tables；已核对 (12) 的 prefactor、character 组织与正性论证的适用通道。

# 当前可以直接带走的结果

优先复用 (8) 与 (9)–(10)：它们同时固定连续归一化、gap parity 权重、Gaussian overlap 的 Pfaffian 符号。若当前算式只保留 $\Gamma_{AB}$，就不是本文比较的 spin density matrix；若要加入 Kramers–Wannier 线，则须另构 lattice defect，不能把 $P_A$ 替换成某个未经定义的半区间 duality operator。

本次复现了几何归一化的关键 residue、Ising characters 与极限、E8 的代数式和 Fibonacci 分支／series 比较，以及小块 lattice overlap。作者的长链外推、一般 categorical realization、全部 Virasoro coefficient 与数值 bootstrap 仍据来源报告。最重要的范围限制是 **n=2 的闭合线观测量**：它既不是一般 Rényi 的已完成答案，也不等同于所有带端点边界条件的区域对称操作。
