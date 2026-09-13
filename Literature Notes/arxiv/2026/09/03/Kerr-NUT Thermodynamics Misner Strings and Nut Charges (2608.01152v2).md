---
paper id: 2608.01152v2
title: "Kerr-NUT Thermodynamics: Misner Strings and Nut Charges"
authors:
  - "Tharwat, Mohamed"
  - "Awad, Adel"
publication date: 2026-08-02
abstract: |-
  Using the thermodynamic approach introduced in e-Print: 2206.09124 [hep-th] to the case of Kerr-NUT solution, we demonstrate the existence of a new conserved quantity that is dual to the angular momentum, in the same way that the nut charge "n" is dual to the mass "m". This quantity exists regardless of the presence of the Kerr rotation parameter $a$, but only affects its thermodynamics when $a\neq 0$. The thermodynamic quantities calculated together with the two charges $N_{c}=cn$ and $N_{n}=n$ lead to consistent thermodynamic relations. That is, the first law, Smarr's and Gibbs-Duhem relations are all satisfied.
comments: "15 pages, 0 figures, 36 references"
url: https://arxiv.org/abs/2608.01152v2
summary: "四参数 Kerr–NUT 第一律、Smarr 与 Gibbs 关系精确通过；总角动量须含 string 项。对偶角动量 Eq. (29) 的归一化失败，CPS 电荷与 Euclidean action 减除仍未建立。"
tags: []
---

# Kerr-NUT Thermodynamics: Misner Strings and Nut Charges

## 结论与研究位置

**Correct under the following precise conditions:** 固定本文的 $S=A_H/4$、总角动量 $J=J_{\rm bh}+J_s$、内能 $U=M-N_n\Phi_n-N_c\Phi_c$，并取 regular 非退化 Kerr–NUT horizon，其第一定律、Smarr、Gibbs–Duhem 及 Gibbs differential 是精确一致的参数空间恒等式。本次在独立变量 $(r_h,a,n,c)$ 的四个方向逐项检查，残差全为零。

**Failed as printed:** Eq. (29) 的对偶角动量积分系数与给定 metric、$\chi=\partial_\phi$、$\phi\sim\phi+2\pi$ 不一致。按通常 $d\theta\wedge d\phi$ 方向，$-\frac1{8\pi}\int d\chi^\flat=-4cn^2$，而非 $2cn^2$；反向只能翻号，不能补掉因子二。非零积分又依赖轴处 patch/string 结构，不能把 exact two-form 的积分无条件解释为光滑闭球上的新 charge。

适合带回当前工作的内容是 tube boundary 的 Komar balance、nut variables 的线性换基、几何质量与热力学内能的区分。本文没有完成 covariant phase space 中的新对偶 charge 的 integrability 与全局可容许变分证明。

## 来源、章节树与阅读指南

固定阅读 [2608.01152v2](https://arxiv.org/abs/2608.01152v2)、[15 页 PDF](https://arxiv.org/pdf/2608.01152v2)、[完整源码](https://arxiv.org/src/2608.01152v2)。源码为 main.tex 与 bibliography，没有技术附录；正文 §1–5 全部阅读，acknowledgements 和参考文献用于定位背景。视觉确认 PDF 第 9 页 Eq. (29) 的定义与系数，第 11 页 action result、Gibbs 导数及 Legendre transform。

| Section | 技术目的与后续依赖 |
|---|---|
| 1 Introduction | Lorentzian string 保留方案与其他 NUT thermodynamics 的差别；不施加 Misner 时间周期 |
| 2 The First Law | 度规、四个 boundary pieces、Komar charge 分组、$N_\pm$、$J_{\rm bh},J_s,U$ |
| 3 Misner Strings and Nut Charge choices | $N_n=n,N_c=cn$ 换基、特殊子族、对偶积分与 conservation 论证 |
| 4 Kerr-NUT Thermodynamics from the Action | 声称 $I=\beta m/2$，给出 Gibbs potential 及受约束偏导 |
| 5 Conclusion | AdS 与电磁扩展是后续方向，未在本文实现 |

**How to read this long paper:** 先用 §2 的 metric 与本笔记的简化变量核对整条热力学链，再读 §3 的 charge interpretation。§4 可作为相同状态函数的独立代数组织，但其 Euclidean action 的边界减除步骤不足以称为已复现的独立 path-integral 推导。§1 是比较背景，不用它替代边界条件的定义。

## 1. 几何与全局约定

采用 mostly-plus、$G=1$，
$$
\begin{aligned}
ds^2={}&-\frac{\Delta_r}{\Sigma}
[dt+(2n(\cos\theta+c)-a\sin^2\theta)d\phi]^2
+\frac{\Sigma}{\Delta_r}dr^2+\Sigma d\theta^2\\
&+\frac{\sin^2\theta}{\Sigma}
[a\,dt-(r^2+a^2+n^2-2anc)d\phi]^2,
\end{aligned}
$$
$$
\Delta_r=r^2-2mr+a^2-n^2,\qquad
\Sigma=r^2+(n+a\cos\theta)^2.
$$
$a,n$ 有长度维数，$c$ 无量纲；$c=-1$ 隐去 north string，$c=1$ 隐去 south string。局部 $t\mapsto t+2nc\phi$ 改变 string 分配，但 $\phi$ 周期性意味着它未必是全局单值的小 gauge transformation。作者保留 Lorentzian Misner strings，不施加 $t$ 的 Misner 周期。

这允许 $r_h,a,n,c$ 作为状态族参数。它不消除全部因果或全局问题，也没有自动给出 Euclidean ensemble 的 contour 与 regularity prescription。$n=0$ 且有限 $c$ 时 nut sector 消失；若改以 $cn=s$ 固定再令 $n\to0$，属于不同的极限，需要重新说明时间和角度的识别。

定义便于整链检查的量
$$
D=r_h^2+a^2+n^2-2anc,\qquad
m=\frac{r_h^2+a^2-n^2}{2r_h}.
$$
取 $r_h>0,D>0$；非极端外 horizon 满足 $r_h^2-a^2+n^2>0$。几何熵、角速度与温度为
$$
S=\pi D,\qquad \Omega_H=\frac aD,\qquad
T=\frac{\Delta_r'(r_h)}{4\pi D}
=\frac{r_h^2-a^2+n^2}{4\pi r_hD}.
$$
最后的 $T$ 是由本文 metric 补出的 surface-gravity 表达式，正文没有单独完整列出它；本笔记的符号核验明确使用这个约定。

**Checked:** 在 horizon 代入 $\Delta_r=0$，
$g_{tt}+2\Omega_Hg_{t\phi}+\Omega_H^2g_{\phi\phi}=0$；
$g_{\theta\theta}g_{\phi\phi}=D^2\sin^2\theta$，故面积 $4\pi D$。这验证 horizon generator 及面积表达式，不等于完整重算所有 spacetime curvature。

## 2. Komar balance：必须把 string tubes 算入边界

设 $\xi=\partial_t,\chi=\partial_\phi$，Komar 公式中的微分对象是其 metric-dual one-form。真空区域的 Killing identity 给出适当的 closed Komar form，作者使用 horizon generator $\xi+\Omega_H\chi$。

从 north/south 轴挖去细 tube，边界方向为
$$
\partial M=S_\infty-S_H+T_+-T_-.
$$
由此得到
$$
0=\frac1{8\pi}\int_{\partial M}
\left(\star d\xi^\flat+\Omega_H\star d\chi^\flat\right).
$$
本文将 rotational tube 积分记作
$\int_{T_\pm}\star d\chi^\flat=\Pi_\pm^\infty-\Pi_\pm^{r_h}$。
在 infinity 的组合负责消去单独角动量积分中的 string divergence，horizon endpoints 则进入 $J_s$。不能只保留 $S_\infty$ 与 $S_H$ 后再要求相同 Smarr relation。

分组定义给出
$$
M=m,\qquad
N_+=n(1+c),\quad N_-=n(1-c),
$$
$$
\Phi_+=-\frac{n-a}{4r_h},\qquad
\Phi_-=-\frac{n+a}{4r_h},
$$
$$
J_{\rm bh}=(a-3cn)m,\qquad
J_s=\frac n{r_h}\left[an+c(r_h^2+acn-2n^2)\right].
$$
其总角动量可大幅简化：
$$
J=J_{\rm bh}+J_s=\frac{(a-cn)D}{2r_h}.
$$
**Checked:** 这条化简是精确有理恒等式。与 $\Omega_H$ 配对的是总 $J$，若只代 $J_{\rm bh}$，后面第一定律不会是同一条状态函数恒等式。

由上述边界分组得到作者的 Smarr：
$$
M=2TS+2\Omega_HJ+2N_+\Phi_++2N_-\Phi_-.
$$
Komar closure 提供几何 balance；从 balance 到 first law 的变分仍须另外检查，不能用一个 scaling relation 代替所有方向的微分一致性。

## 3. 两套 nut variables 的换基

$$
\begin{pmatrix}N_n\\N_c\end{pmatrix}
=\frac12\begin{pmatrix}1&1\\1&-1\end{pmatrix}
\begin{pmatrix}N_+\\N_-\end{pmatrix}
=\begin{pmatrix}n\\cn\end{pmatrix},
$$
$$
\Phi_n=\Phi_++\Phi_-=-\frac n{2r_h},\qquad
\Phi_c=\Phi_+-\Phi_-=\frac a{2r_h}.
$$
charge 与 potential 采用对偶的线性换基，因而
$$
\Phi_+dN_++\Phi_-dN_-=\Phi_n\,dn+\Phi_c\,d(cn),
$$
$$
N_+\Phi_++N_-\Phi_-=n\Phi_n+cn\Phi_c.
$$
这些恒等式已核对。它们证明 thermodynamic one-form 的表示等价，不单独证明新变量是可积 Hamiltonian surface charges。

独立性有两个不同问题：$(N_+,N_-)\leftrightarrow(N_n,N_c)$ 的线性矩阵总可逆；$(n,c)\mapsto(n,cn)$ 的 Jacobian 却为 $n$，在 $n=0$ 退化。不能不加条件地用后者反解 $c$。

在 $a=0$ 时 $\Phi_c=0$，该 work coefficient 消失。对于 $c=0$，只有限制到 $dc=0$ 的子族才可把整个 nut work 写成 $-n\,dn/(2r_h)$：在完整状态空间的一点 $c=0$，仍有
$$
\Phi_c\,d(cn)=\frac{an}{2r_h}\,dc
$$
可非零。“当前 charge 值为零”与“允许所有变分时 work term 为零”不能混淆。

## 4. 第一律、能量与 Gibbs 的完整代数重建

作者使用的内能是
$$
U=M-n\Phi_n-cn\Phi_c
=\frac{r_h^2+a^2-acn}{2r_h},
$$
不是 $M=m$。其第一定律为
$$
dU=T\,dS+\Omega_H\,dJ+\Phi_n\,dn+\Phi_c\,d(cn).
$$
取四个独立变量 $v\in\{r_h,a,n,c\}$，本次直接计算
$$
\partial_vU-T\partial_vS-\Omega_H\partial_vJ
-\Phi_n\partial_vn-\Phi_c\partial_v(cn)=0.
$$
**Checked:** 四个系数均精确为零。没有固定 $n/m$、没有固定 $c$、没有先缩到低 cohomogeneity 子族。

Smarr 的独立检查是
$$
M-2TS-2\Omega_HJ-2n\Phi_n-2cn\Phi_c=0.
$$
也可以对 $U$ 用长度 scaling 写
$$
U=2TS+2\Omega_HJ+n\Phi_n+cn\Phi_c,
$$
其权重是 $S,J$ 为二、$U,n,cn$ 为一，$c$ 为零。它与作者用 $M$ 写的关系相容。

作者 action result 给出
$$
G=\frac I\beta=\frac m2
=\frac{r_h^2-n^2+a^2}{4r_h}
=U-TS-\Omega_HJ.
$$
对应
$$
dG=-S\,dT-J\,d\Omega_H+\Phi_n\,dn+\Phi_c\,d(cn).
$$
**Checked:** Legendre 恒等式残差为零；Gibbs differential 在四个原始参数方向上的残差也全部为零。

这比在某些固定变量曲线上测一个偏导更完整。将它改写为
$(\partial G/\partial T)_{n,cn,\Omega_H}=-S$ 等，仍要求 $(T,\Omega_H,n,cn)$ 在所考虑区域是合法局部坐标。Jacobian 退化点、extremality 或 ensemble turning point 应另行处理。

## 5. 对偶 angular integral：直接从 metric 检查

正文第 9 页 Eq. (29) 声称
$$
-\frac1{8\pi}\int_{S_\infty^2}d\chi^\flat=2cn^2.
$$
在 $t,r$ 固定、去掉极点的小圆后，pullback 满足
$$
(d\chi^\flat)_{\theta\phi}=\partial_\theta g_{\phi\phi}.
$$
因此采用 $\theta:0\to\pi,\phi:0\to2\pi$ 的方向，
$$
\int d\chi^\flat
=2\pi[g_{\phi\phi}(\pi)-g_{\phi\phi}(0)].
$$
由同文 metric，
$$
g_{\phi\phi}(0)
=-\frac{4n^2(1+c)^2\Delta_r}{r^2+(n+a)^2},
\qquad
g_{\phi\phi}(\pi)
=-\frac{4n^2(c-1)^2\Delta_r}{r^2+(n-a)^2}.
$$
取 $r\to\infty$ 后 endpoint difference 是 $16cn^2$，所以
$$
-\frac1{8\pi}\int d\chi^\flat=-4cn^2.
$$
**Checked:** Wolfram kernel 对完整 $g_{\phi\phi}(q)$、$q=\cos\theta$ 取端点和极限，分别返回 $16cn^2$、$-4cn^2$。与印刷结果差 $-6cn^2$。改变 orientation 只能得到 $+4cn^2$。若用 $+\frac1{16\pi}\int d\chi^\flat$，则可得到作者右侧的 $2cn^2$，但这不是印出的归一化。

这里还有独立的全局问题：若 $\chi^\flat$ 在一个光滑闭球上是全局单值光滑 one-form，则 $\int_{S^2}d\chi^\flat=0$。非零结果来自轴/string/patch 的非全局光滑结构，不能省略这些条件后仍称其“与 string boundary 无关”。在有限 $r$ 时上述 endpoint difference 一般依赖 $r$；$d^2\chi^\flat=0$ 的 Stokes balance 需要连同轴 tube 或 patch 贡献处理。

本文的计算确实提供与 $cn^2$ 成比例的 asymptotic quantity 的候选。在 $n\ne0$ 且其 conservation 与 $n$ 的 conservation 已分别建立时，可推断 $cn$ 沿演化固定。此逻辑不等于已经证明其 charge 的全局定义、独立性、CPS integrability 或任意 flux 条件；也不意味着热力学变分必须令它不变。

## 6. Euclidean action 的证据边界

§4 列出 Einstein–Hilbert bulk 与 Gibbons–Hawking boundary 项，然后直接给 $I=\beta m/2$。正文没有充分展示：

- bulk/boundary 的 $1/(16\pi G)$、$1/(8\pi G)$ 与 Euclidean 符号如何落实；
- infinity 的 reference subtraction 或等价 counterterm；
- 在不施加 Lorentzian Misner 周期的方案下，Euclidean continuation、horizon period、string/tube boundaries 的完整处理。

因此 **Blocked:** 无法只据本文所列未归一化的 action schematic 重现一个有限、唯一的 on-shell action。$I=\beta m/2$ 标记 **Source-derived**；以它定义的 $G$ 与所有热力学 quantities 的代数一致性则是 **Checked**。两者不是相同层级的验证。

对于本地 action-first 研究，应先固定 boundary action、允许变分与 corner/string 处理，再问 $\delta H_\xi=\int(\delta Q_\xi-\iota_\xi\theta)$ 是否与文中 $U,M,J,N$ 对应。本文 Komar balance 可以提供候选组合，但没有计算完整的 $\theta$、flux 和 field-dependent horizon generator 修正。

## 7. 公式依赖图与 claim ledger

$$
\text{metric + horizon root}
\longrightarrow (S,T,\Omega_H)
\longrightarrow (M,J_{\rm bh},J_s,N_\pm,\Phi_\pm)
\longrightarrow (U,G)
\longrightarrow \text{first law / Smarr / Gibbs}.
$$
这条热力学代数链通过了本次检查。另一路
$$
d\chi^\flat\text{ integral}\longrightarrow cn^2
\longrightarrow cn\text{ conserved charge}
$$
存在印刷归一化失败和未解决的全局定义条件，不能借第一条链的成功自动补齐。

| Claim | 等级 | 边界 |
|---|---|---|
| horizon generator、面积及 $D$ | Checked | 正面积 regular horizon；未全量重算 Ricci |
| $J_{\rm bh}+J_s=(a-cn)D/(2r_h)$ | Checked | 同文的 tube 分组约定 |
| 两套 nut variables 的 thermodynamic equivalence | Checked | 对偶线性换基；不证明 charge integrability |
| 全 cohomogeneity 第一律、Smarr、Gibbs | Checked | 四个参数方向的精确残差全部零 |
| Eq. (29) 系数 | Failed | 直接 metric pullback 给 $-4cn^2$，反向也不能给 $2cn^2$ |
| $N_c$ 是独立全局 conserved charge | Not independently verified / conditional | 需 patch、boundary、flux、$n\ne0$ 和可积性证据 |
| $I=\beta m/2$ 的独立 action 推导 | Source-derived / Blocked | 缺充分归一化与减除、Euclidean/string boundary 细节 |
| AdS、电磁、phase structure 扩展 | Not independently verified | 只是 outlook，未纳入本次结论 |

**Verified:** Mathematica/xAct 服务完成两条 scaling/Legendre 恒等式、第一律四系数、Gibbs differential 四系数、总角动量化简、nut pairing 换基、horizon norm/area、对偶积分的 endpoint 和 asymptotic limit。首次 20 秒批量计算超时，延长至 45 秒后实际返回精确结果；不以超时当作通过。

**Assumptions:** $G=1$、mostly-plus、$\phi$ 周期 $2\pi$、所述 integration orientation、$r_h>0,D>0$、非零相关分母、几何温度、作者的 string boundary 分配；切换到 thermodynamic intensive coordinates 时另需 Jacobian 非退化。

**Not verified:** 全部 Komar tube primitives 的独立再积分、CPS charge 及其 integrability、dynamic flux、全局 causal admissibility、Euclidean regular saddle 与 subtraction、量子 partition function 或 thermodynamic stability。

## 8. 可复用结论

可直接借用的是明确的四参数状态函数、tube boundary balance 的方向、nut variables 的对偶线性换基，以及“同一 $\Omega_H$ 下只出现总 $J$”的事实。若要用其新 charge 作为 gluing/edge 数据，下一步应先修正对偶积分归一化，并在选定 patch 与 string boundary 条件下构造相应 CPS generator；不能从 thermodynamic consistency 跳到全局相空间结论。

返回今日总览：[[2026_09_03_overview]]。
