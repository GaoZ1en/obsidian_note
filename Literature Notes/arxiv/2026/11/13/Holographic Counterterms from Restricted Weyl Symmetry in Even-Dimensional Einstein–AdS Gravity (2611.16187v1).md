---
paper id: 2611.16187v1
title: Holographic Counterterms from Restricted Weyl Symmetry in Even-Dimensional Einstein–AdS Gravity
authors:
  - Giorgos Anastasiou
publication date: 2026-11-12T02:22:41Z
abstract: |-
  A bulk-covariant completion of the Einstein-Hilbert density is constructed using infinitesimal Weyl transformations preserving the asymptotic Einstein-AdS equations. Euler and covariant total-derivative terms assemble into products of shifted Laplacians. On Einstein backgrounds the result matches an ambient construction and its renormalized-volume identity. Explicit eight- and ten-dimensional black holes with non-conformally-flat Einstein horizons test the cancellation of divergences and the finite action.
comments: "35 pages; explicit ten-dimensional completion and five higher-dimensional black-hole examples"
url: https://arxiv.org/abs/2611.16187v1
summary: "有用的是任意偶维反项的移位Laplacian闭式；受限Weyl不是任意边界Weyl，也不单独保证一般变分原理。"
tags: []
---

# 从受限 Weyl 权重，得到可直接计算的高维反项

**闭式构造在论文的渐近 Einstein、受限 Weyl 及有限 descendant 基底条件下成立；五个黑洞例子的曲率和有限作用量均重算一致。** 最值得保留的是一个简单的降权算符：它将一组曲率多项式逐级送到密度权重为零的临界阶，自动组织出全部协变全导数补项。

必须同时保留两个限制：允许的参数满足 Hessian 方程，其边界值是 almost-Einstein scale，不是任意函数；任意偶维的一般 on-shell 有限性还调用了独立的 renormalized-volume 定理，并非仅凭“变分为零”就已证明。论文只在六维展示一般 Dirichlet 变分和应力张量，高维 CPS 的良定性尚未完成。

读完 [v1](https://arxiv.org/abs/2611.16187v1) §1–7、附录 A–E，并核对 [TeX](https://arxiv.org/src/2611.16187v1)。[PDF](https://arxiv.org/pdf/2611.16187v1) 共35页，题名页无印刷页码，**PDF页码＝印刷页码＋1**。已实际查看 PDF第14、16、18、19、29、30页，分别覆盖六维边界变分、递推及降权、总闭式、八／十维展开、附录几何递推。下面引用式号均属此版本。

## 1. 对象、方向和作用量符号

取 Euclidean bulk 维数 $D=2n=d+1\ge4$，固定 $\ell>0$，

$$
R_{\mu\nu}=-\frac{D-1}{\ell^2}g_{\mu\nu},\qquad
\Lambda=-\frac{(D-1)(D-2)}{2\ell^2},\qquad
\Box=g^{\mu\nu}\nabla_\mu\nabla_\nu.
$$

FG 规范为

$$
ds^2=\frac{\ell^2}{z^2}(dz^2+\gamma_{ij}dx^idx^j),\qquad
\gamma=g_{(0)}+\frac{z^2}{\ell^2}g_{(2)}+\cdots,
\qquad g_{(2)ij}=-\ell^2\mathcal S_{(0)ij},
$$

其中 $\mathcal S_{ij}=(R_{ij}-R g_{ij}/[2(d-1)])/(d-2)$。外法向朝 $z\to0$，$n_\mu=-N\delta^z_\mu$、$N=\ell/z$，因而 $K_{ij}=-(2N)^{-1}\partial_z h_{ij}$。这些符号不能与法向反向的 Brown–York 公式直接拼接。

论文采用

$$I^+_{\rm EH}=+\frac1{16\pi G_N}\int\sqrt g\,(R-2\Lambda).$$

它与常用热力学 Euclidean 约定 $I_E^{\rm std}=-(16\pi G_N)^{-1}\int\sqrt g(R-2\Lambda)+\cdots$ 整体反号；比较论文末尾引用的标准反项结果时，应取 **$I^+_{\rm ren}=-I_E^{\rm std}$**，并相应转换由作用量定义的 $T_{ij}$。不要将下文的大黑洞正作用量直接误读成通常的正自由能。

定义 AdS 曲率

$$F^{\alpha\beta}_{\mu\nu}=R^{\alpha\beta}_{\mu\nu}+\ell^{-2}\delta^{\alpha\beta}_{\mu\nu}.$$

在 Einstein 背景上 $F=W$。广义 delta 是行列式归一化的完全反对称 Kronecker tensor；这里

$$
\Phi_{(i)}=\delta_{\mu_1\cdots\mu_{2i}}^{\nu_1\cdots\nu_{2i}}
F^{\mu_1\mu_2}_{\nu_1\nu_2}\cdots
F^{\mu_{2i-1}\mu_{2i}}_{\nu_{2i-1}\nu_{2i}}
$$

**不含**额外 $2^{-i}$。Euler 密度另定义为 $\mathcal E_{2n}=2^{-n}\delta R^n$。例如 Einstein 上 $\Phi_{(2)}=4W_{\mu\nu\rho\sigma}W^{\mu\nu\rho\sigma}$；忽略这个4会把六维导数项的系数弄错。

## 2. “受限”具体限制了什么

令 $\delta_\Sigma g_{\mu\nu}=2\Sigma g_{\mu\nu}$。Einstein 缺陷张量的一阶变分为

$$
\delta_\Sigma\!\left(R_{\mu\nu}+\frac{D-1}{\ell^2}g_{\mu\nu}\right)
=-(D-2)\nabla_\mu\nabla_\nu\Sigma-g_{\mu\nu}\Box\Sigma
+\frac{2(D-1)}{\ell^2}\Sigma g_{\mu\nu}.
$$

取 trace，再代回，得到保持非正规化 FG 阶的条件（式(2.10)）：

$$
\nabla_\mu\nabla_\nu\Sigma\simeq\ell^{-2}\Sigma g_{\mu\nu},\qquad
\Box\Sigma\simeq D\ell^{-2}\Sigma.
$$

其可积性给出 $F^{\alpha\nu}_{\lambda\mu}\nabla_\nu\Sigma\simeq0$。在这些条件下 $\delta_\Sigma F\simeq-2\Sigma F$，所以 $\delta_\Sigma\Phi_{(i)}\simeq-2i\Sigma\Phi_{(i)}$。

这里 $\simeq$ 是**通过指定非正规化渐近阶相等**；密度公式中的 $\doteq$ 表示差项的径向积分有限。它们都不是任意离壳度量上的精确恒等式。控制余项的阶数是构造的一部分，不能把渐近相等任意多次微分而不检查 falloff。

### FG 参数不是任意边界 Weyl 参数

§2.2 得到

$$
\Sigma=z^{-1}\sigma_{(0)}+z\sigma_{(2)}+z^d\Sigma_N,\qquad
\sigma_{(2)}=\frac1{2d}(\Box_{(0)}+\mathcal S_{(0)})\sigma_{(0)},
$$

其中 $\mathcal S_{(0)}=g_{(0)}^{ij}\mathcal S_{(0)ij}$，并要求

$$
\left[\mathcal D_i\mathcal D_j\sigma_{(0)}
+\mathcal S_{(0)ij}\sigma_{(0)}\right]^{\rm tf}=0.
$$

这是 almost-Einstein scale 方程，一般边界未必存在非零解；还须满足更高 FG 阶的相容性。平坦边界、精确 Poincaré AdS 是一个简单检验：$\sigma_{(0)}=A+B_ix^i+C|x|^2$、$\sigma_{(2)}=C$ 给出 $\Sigma=\sigma_{(0)}/z+Cz$，而不是任意 $\sigma_{(0)}(x)$。

更直接地，$\xi^\mu=\ell^2\nabla^\mu\Sigma$ 满足

$$\delta_\Sigma g-\mathcal L_\xi g\simeq0,\qquad \xi^z=-\sigma_{(0)}+O(z^2).$$

因此这不是一个新独立的 Weyl gauge symmetry，也不是保持固定定义函数的普通 PBH 变换。尤其不能在一个没有非平凡允许参数的背景上，用一个真空满足的变分条件宣称已唯一固定所有反项。本文真正可用的是在通用曲率／descendant 基底中建立的渐近微分恒等式。

## 3. 先加 Euler，再识别残余 mismatch

临界 Euler 项不改 bulk Einstein 方程。取

$$c_{2n}=\frac{(-1)^n\ell^{2n-2}}{n(2n-2)!}.$$

将 $R=F-\ell^{-2}\delta$ 代入 $R-2\Lambda+c_{2n}\mathcal E_{2n}$，常数项和线性项相消，得到

$$
\mathcal L_{\rm top}=\sqrt g\sum_{i=2}^n\beta_i\Phi_{(i)},\qquad
\beta_i=\frac{(-1)^i(n-1)!(2n-2i)!\ell^{2i-2}}
{2^i i!(n-i)!(2n-2)!}.
$$

$\sqrt g\Phi_{(i)}$ 的受限权重是 $D-2i$：四维只剩临界 $\Phi_{(2)}$，无需再补；更高维的 $i<n$ 部分仍有 mismatch。补项须是协变全导数，否则会改变 Einstein bulk EOM。

独立保留有限拓扑常数

$$I_0=-\frac{c_{2n}(4\pi)^n n!}{16\pi G_N}\chi(M).$$

它是作者选定的有限归一化，既不由去发散条件、也不由一阶变分确定。它在黑洞有限答案中不可漏掉。

## 4. 关键推导：双 seed 恒等式与降权算符

除了 $\delta_\Sigma\Phi_{(i)}\simeq\Delta_i\Sigma\Phi_{(i)}$、$\Delta_i=-2i$，还需要梯度 seed：

$$\nabla\Sigma\cdot\nabla\Phi_{(i)}\simeq\frac{\Delta_i}{\ell^2}\Sigma\Phi_{(i)}.$$

其证明用曲率 Bianchi 恒等式、广义 delta 的反对称性及 $F\nabla\Sigma\simeq0$。源文式(5.3)中的余项乘 $\sqrt g$ 后为 $O(z^{2(i-2)})$，对 $i\ge2$ 可积；不是任意删去一个边界项。

对同时满足

$$\delta_\Sigma f\simeq w\Sigma f,\qquad \nabla\Sigma\cdot\nabla f\simeq w\ell^{-2}\Sigma f$$

的 scalar，Weyl 变分的通用公式是

$$\delta_\Sigma\Box f=-2\Sigma\Box f+\Box\delta_\Sigma f+(D-2)\nabla\Sigma\cdot\nabla f.$$

将 $\Box(\Sigma f)=\Sigma\Box f+f\Box\Sigma+2\nabla\Sigma\cdot\nabla f$ 代入，得

$$
\delta_\Sigma\Box f\simeq(w-2)\Sigma\Box f+
\frac{2w(D+w-1)}{\ell^2}\Sigma f.
$$

梯度的对应式由 Bochner 恒等式给出：

$$
\nabla\Sigma\cdot\nabla\Box f\simeq\frac{w-2}{\ell^2}\Sigma\Box f
+\frac{2w(D+w-1)}{\ell^4}\Sigma f.
$$

所以

$$\boxed{Q_w=\Box-\frac{w(D+w-1)}{\ell^2}}$$

**同时**将两条 seed 的权重降为 $w-2$。只核对第一条变分而不核对梯度闭合，会漏掉下一次迭代所需的假设。

令 $\Psi_{i,0}=\Phi_{(i)}$，$\Psi_{i,q+1}=Q_{-2(i+q)}\Psi_{i,q}$，归纳即有权重 $-2(i+q)$。在 $q=n-i$ 时，$\sqrt g\Psi_{i,n-i}$ 权重为零。这一归纳是一般维数的解析论证，后面的有限维 CAS 表不是它的替代品。

### 应采用附录的递推，不照抄正文式(5.9)

记 $O^q=\Box^q\Phi_{(i)}$、$K^q=\nabla\Sigma\cdot\nabla O^q$。Bochner 展开给出

$$
\Box K^q\simeq K^{q+1}-\frac{D-2}{\ell^2}K^q
+\frac2{\ell^2}\Sigma O^{q+1},
$$

即

$$\boxed{K^{q+1}\simeq(\Box+(D-2)/\ell^2)K^q-2\ell^{-2}\Sigma O^{q+1}.}$$

这正是附录式(D.9)（PDF30／正文29页）。正文式(5.9)（PDF16／正文15页）的最后一项多写了 $\delta_\Sigma$，成为 $\Sigma\delta_\Sigma O^{q+1}$，对参数二次，不可能是这里的线性恒等式。按附录正确式重建后，式(5.13)–(5.18)、附录到三阶的系数及最终闭式都通过下述检验，因此这处笔误不构成对最终结果的反例。

## 5. 闭式、低维特例与有限性来自哪里

$\Psi_{i,n-i}$ 的零导数系数为

$$p_{i,0}=\frac{(n-1)!(2n-2i)!}{(i-1)!(n-i)!\ell^{2(n-i)}}\quad(i<n),\qquad p_{n,0}=1.$$

匹配原 $\beta_i$ 后，得到式(5.31)：

$$
\boxed{
\mathcal L^{(2n)}=
\frac{\ell^{2n-2}\sqrt g}{(2n-2)!}
\sum_{i=2}^n\frac{(-1)^i}{i2^i}
\prod_{a=i}^{n-1}\left[\Box+\frac{2a(2n-2a-1)}{\ell^2}\right]\Phi_{(i)}.
}
$$

空积为1。$I^+_{\rm ren}=(16\pi G_N)^{-1}\int\mathcal L^{(2n)}+I_0$。所有新增 derivative 项都含至少一个 $\Box$，故为协变全导数；Euler 项另外是临界维数拓扑项。

- **4D：** $\mathcal L^{(4)}=\sqrt g\,\ell^2\Phi_{(2)}/16$。
- **6D：** $\mathcal L^{(6)}-\mathcal L^{(6)}_{\rm top}=\sqrt g\,\ell^4\Box\Phi_{(2)}/192$，即 $\sqrt g\,\ell^4\Box(W^2)/48$。
- **8D：** 二次／三次扇区分别为 $(\Box+12/\ell^2)(\Box+6/\ell^2)\Phi_{(2)}$、$(\Box+6/\ell^2)\Phi_{(3)}$。导数补项是

$$\sqrt g\left(\frac{\ell^4}{320}\Box\Phi_{(2)}+
\frac{\ell^6}{5760}\Box^2\Phi_{(2)}-
\frac{\ell^6}{17280}\Box\Phi_{(3)}\right).$$

- **10D：** 三个非临界扇区的因子依次为 $(\Box+20/\ell^2)(\Box+18/\ell^2)(\Box+8/\ell^2)$、后两个因子、最后一个因子。式(5.40)的全部导数项可写成

$$
\sqrt g\left[\frac{83\ell^4}{40320}\Box\Phi_{(2)}
+\ell^6\left(\frac{23}{161280}\Box^2\Phi_{(2)}-\frac{13}{483840}\Box\Phi_{(3)}\right)
+\ell^8\left(\frac{\Box^3\Phi_{(2)}}{322560}-\frac{\Box^2\Phi_{(3)}}{967680}+\frac{\Box\Phi_{(4)}}{2580480}\right)\right].
$$

一般 on-shell 有限性的最后一步不是“受限变分为零，所以作用量有限”。§5.2 将上述 Einstein 上的密度与 Case 等人的 ambient 构造、Proposition 3.7 及 renormalized-volume identity 对齐，得到

$$I^+_{\rm ren}=-\frac{2n-1}{8\pi G_N\ell^2}\operatorname{Vol}_{\rm ren}(M).$$

它适用于该几何定理假设下的 Poincaré–Einstein 流形；本次重建了反项代数，没有重新证明所引用的 ambient／renormalized-volume 定理。也不将结论外推到任意非 Einstein higher-derivative 解、奇 bulk 维数的 anomaly 问题，或任意奇异边界。

“唯一性”亦须限定：在该有限 descendant ansatz 中匹配补项；八维另外允许两个 conformally invariant 全导数，其贡献比正规化阶衰减更快，去 cutoff 后消失。有限拓扑归一化仍是独立选择。

## 6. 黑洞检验：从曲率重算，而不只代最终答案

取 $\widehat R_{ij}=\widehat g_{ij}$ 的紧致 Einstein base，

$$
ds^2=f_D(r)d\tau^2+\frac{dr^2}{f_D(r)}+r^2d\widehat\Sigma_{D-2}^2,\qquad
f_D=\frac{r^2}{\ell^2}+\frac1{D-3}-\frac{2m}{r^{D-3}},
$$

$$m=\frac{r_+^{D-3}}2\left(\frac1{D-3}+\frac{r_+^2}{\ell^2}\right),\qquad
\beta=\frac{4\pi\ell^2r_+}{\ell^2+(D-1)r_+^2}.$$

$\tau$ 周期为 $\beta$，$r\in[r_+,\infty)$。实际计算了论文全部五组：

| $D$ | base | $V_B$ | $\chi(M)$ |
|---|---|---:|---:|
| 8 | $(S^2)^3$ | $64\pi^3$ | 8 |
| 8 | $S^2\times\mathbb{CP}^2$ | $72\pi^3$ | 6 |
| 10 | $(S^2)^4$ | $256\pi^4$ | 16 |
| 10 | $(S^2)^2\times\mathbb{CP}^2$ | $288\pi^4$ | 12 |
| 10 | $(\mathbb{CP}^2)^2$ | $324\pi^4$ | 9 |

### 独立的曲率构造

设 $x=r^{-2}$、$y=m/r^{D-1}$，正交标架的 sectional 分量是

$$F_{0101}=(D-3)(D-2)y,\qquad F_{0i0i}=F_{1i1i}=-(D-3)y,$$

$$F_{ijij}=(\widehat R_{ijij}-1/(D-3))x+2y.$$

对全为球乘积的 diagonal curvature，利用反对称 delta 可把收缩化为有限加权 matching：

$$\Phi_{(i)}=4^i i!\sum_{\text{size }i\text{ matchings}}\prod_{(a,b)}F_{abab}.$$

$\mathbb{CP}^2$ 不能只取 sectional diagonal，否则会漏掉 off-diagonal Kähler 曲率。取 $J_{12}=J_{34}=1$ 的标准复结构，并用

$$\widehat R_{abcd}=\frac16(\delta_{ac}\delta_{bd}-\delta_{ad}\delta_{bc}+J_{ac}J_{bd}-J_{ad}J_{bc}+2J_{ab}J_{cd}).$$

直接收缩得到 $\widehat R_{ab}=\delta_{ab}$、$|\widehat Riem|^2=16/3$。四维 Euler scalar 为 $16/3$，仅 diagonal matching 给4，差为 $4/3$：换成上述 matching 生成多项式，每个完整 CP2 block 必须另补 $x^2t^2/6$，两个 block 还含二者乘积。此修正来自四个 CP2 指标的完全反对称收缩，不是假定 CP2 的曲率也 diagonal。

用这一构造重算全部 $\Phi_{(2)},\ldots,\Phi_{(n)}$，与正文式(6.9)–(6.15)、附录 E 三组表达式之差，**18个曲率多项式全部为零**。

### 径向去发散与有限项

对每组独立构造的曲率，逐次使用

$$\Box u(r)=r^{-(D-2)}\partial_r\!\left(r^{D-2}f_D\partial_ru\right),$$

生成闭式中的 $\Box^q\Phi_{(i)}$。五组完成后的径向密度 $r^{D-2}\mathcal L^{(D)}/\sqrt g$ 均为 $O(r^{-2})$；八维原先的 cutoff $R^3,R$ 和十维的 $R^5,R^3,R$ 发散逐项相消。

再积分 $r_+\to\infty$、乘 $\beta V_B/(16\pi G_N)$，**加上各自的 $I_0$**，最后才使用 horizon relation 消去 $m$，五组均得到

$$
\boxed{
I^+_{\rm ren}=\frac{V_Br_+^{D-2}[(D-3)r_+^2-\ell^2]}
{4(D-3)G_N[\ell^2+(D-1)r_+^2]}.
}
$$

不是仅将论文答案代入热力学等式：曲率、反项径向作用、发散消去与拓扑有限项都参与了重算。与通常 $\beta F$ 的比较仍须整体翻号。有限项在 $r_+=\ell/\sqrt{D-3}$ 为零；大黑洞 $I^+>0$ 与通常大 AdS 黑洞的 $F<0$ 相容。

## 7. 六维变分成立到哪一步，CPS 还缺哪一步

式(4.16)、(4.17)展示原 bulk／Euler 部分与导数反项的 $z^{-1}$ 变分完全相消。令

$$
\mathcal A[\delta g_{(0)}]=\frac14\delta_{j_1\cdots j_5}^{i_1\cdots i_5}
W^{j_1j_2}_{(0)i_1i_2}W^{j_3j_4}_{(0)i_3i_4}(g_{(0)}^{-1}\delta g_{(0)})^{j_5}_{i_5}
-8(\mathcal B^i_{(0)j}+\mathcal D^m\mathcal C^i_{(0)jm})(g_{(0)}^{-1}\delta g_{(0)})^j_i,
$$

则两部分分别含 $-\ell^4\mathcal A/(384\pi G_Nz)$ 与相反项。有限项来自前者的 $60g^i_{(5)j}(g_{(0)}^{-1}\delta g_{(0)})^j_i/\ell^5$，故

$$\delta I^+_{\rm ren}=\frac12\int\sqrt{g_{(0)}}\,T^{ij}\delta g_{(0)ij},\qquad
T_{ij}=-\frac5{16\pi G_N\ell}g_{(5)ij}.$$

这里 $\mathcal B,\mathcal C$ 是作者的 Bach／Cotton tensor；本次重建了所列发散相消与有限系数，并非独立重新推导任意六维 FG 变分的全部 tensor 展开。固定 $g_{(0)}$ 时得到 Dirichlet 驻定性；FG Einstein 约束同时给出 $g_{(5)}$ 的守恒和无迹条件。

与本地 [Harlow–Wu CPS 约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) 对接时，仍须保留作用量的 boundary current、$\Theta$ 与 corner $C$，再计算 $\omega=\delta\Theta$ 及相应积分。**作用量有限不自动证明积分辛形式有限、无通量或 Hamiltonian charge 可积。** 单纯说“新增项是全导数，不改 EOM”也不足以完成这个问题；边界变分代表元和允许的变分空间必须指定。

一个可算的后续入口是六维 $J^\mu=\ell^4\nabla^\mu\Phi_{(2)}/192$（这里暂除去共同的 $1/(16\pi G_N)$）与固定 $g_{(0)}$ 的 normalizable 扰动，将其边界变分同 Euler 边界 current 一并放进 CPS；换回作用量与 $\Theta$ 时恢复该共同系数。八／十维先完成对应的有限 Dirichlet 变分，再谈一般相空间。论文讨论部分也把一般偶维的变分分析列为后续工作，不能将五个 on-shell 黑洞例子升级成这项结论。

## 8. 本次检验与结论力度

- **解析：** 从 Einstein 缺陷变分推 Hessian 限制；识别 almost-Einstein 边界数据；从 Bochner 重建正确 $K$ 递推；两条 seed 的降权闭合给出任意偶维的归纳构造。
- **xAct：** scalar Laplacian 的 Weyl 变分、scalar gradient 的曲率交换子、Bochner 乘积式残差为零；Ricci 变分在显式使用无挠 scalar Hessian 对称性后为零；$F$ 在受限 Hessian 下的齐次变分残差为零。开始留下的 $\nabla_a\nabla_b\Sigma-\nabla_b\nabla_a\Sigma$ 是规范化问题，没有当成非零几何残差。
- **Mathematica：** $\beta_i/p_{i,0}$ 与闭式系数在 $n=2,\ldots,9$ 全一致；临界密度的受限权重在 $D=4,6,\ldots,18$ 全为零；附录二／三阶 triangular variations、十维所有展开系数、六维 $T_{ij}$ 系数均通过。
- **非平凡几何例：** 五组 base 的18个曲率多项式及5个完整径向有限作用量 residual 全零，包括 CP2 非对角曲率和 Euler 常数；不是只核对终式外形。
- **边界／反例搜索：** 不允许任意 $\sigma_{(0)}$；受限对称条件可能在特定背景上没有非平凡参数，不能支持无条件唯一性；四维特例、六维归一化及大黑洞作用量符号均相容。

原始机器结果保存在 vault 外：[几何基础检查](</Users/koishi/.codex/mcp-results/xact_run-mvGu9v/result.txt>)、[Ricci 与 F 检查](</Users/koishi/.codex/mcp-results/xact_run-wEQeHg/result.txt>)、[曲率和五个作用量](</Users/koishi/.codex/mcp-results/evaluate_mathematica-iuGPTU/result.txt>)、[临界权重与十维系数](</Users/koishi/.codex/mcp-results/evaluate_mathematica-6vwHAG/result.txt>)；黑洞重算的 [可重放输入](</private/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/koishi-arxiv-2026-11-13-reading-fq5t5cfd/counterterm-checks.wl>) 也在 vault 外。今天按要求全程主 agent 串行，未使用子代理。

**取舍：保留这个闭式作为高维反项的计算工具，尤其六维与八维；不把“受限 Weyl”解释成全新的普遍规范原理。** 最直接的研究用途是反项边界 current 与现有 CPS 的精确对接。尚未解决的是一般高维的变分／辛通量分析，以及放宽 Einstein 条件后这套降权结构能否保留。
