---
paper id: 2610.10045v2
title: The Komar charges of type II supergravity and supersymmetric localization
authors:
- Barbagallo, Gabriele
- Ortín, Tomás
publication date: '2026-10-07T13:22:56Z'
abstract: 'Source-derived summary from the full v2 PDF: the authors construct on-shell
  closed generalized Komar eight-forms for massless/massive type IIA and type IIB
  supergravity, rewrite them using Page charges and momentum-map potentials, and claim
  that the Komar form for a supersymmetric Killing vector vanishes for the momentum
  maps selected by Killing-spinor bilinears. The official HTML abstract is truncated;
  this summary uses the complete PDF abstract.'
comments: Latex file, 50 pages, no figures, irrelevant typos corrected
url: https://arxiv.org/abs/2610.10045v2
summary: 统一的 Komar 八形式及 Page/动量映射分解可用于含高阶规范势的边界荷；局部代数已检查，超对称消失与全局热力学仍需保留代表和源公式修复条件。
tags: []
---

# 结论、版本与阅读范围

**Correct under the following precise conditions:** 在玻色型 type IIA/IIB 超引力解上，$k$ 必须是所有场的联合对称性，相关动量映射必须存在并取兼容代表。原稿的统一候选为

$$
\boxed{\mathbf K[k]=
-e^{-2\phi}\star d\hat k
+P_{Bk}^{(1)}\wedge e^{-2\phi}\star H
+\frac12\left.P_k\wedge\star G\right|_8.}
$$

这里的 on-shell closed form 是 **Source-derived** 的主结果。独立检查确认了 Page 闭合、势的下降关系、若干变分系数与双重计数因子；没有把这些代数检查当成完整十维 Einstein/Killing-spinor 推导。原稿 v2 有多个可定位的幂次、形式次数和符号错误，见最后的 ledger。

对超对称 Killing vector，$\mathbf K[K^{(1)}]=0$ 的结论须依赖特定 spinor-bilinear 动量映射和修复后的一条 KSE 微分恒等式。本文标题涉及 localization，但并没有完成一般 Euclidean action 的局域化公式或黑膜 Smarr 积分。不能据此宣称任意超引力、任意 momentum-map 代表或任意边界条件下都成立。

列表为 2026-10-08 的初次公告；v1 发布于 2026-10-07 13:22:56 UTC，v2 更新于 2026-10-08 07:13:38 UTC，本笔记固定读 v2。50 页 PDF、完整 TeX 已获取；HTML 摘要在 “are” 处截断，frontmatter 使用完整 PDF 的忠实摘要。

# How to read this long paper

先读 §2.1.3 的动量映射与 $-Q_{NW}+w_k$，再读 §5 的统一形式，最后读 §6 的 supersymmetric representative。§2.1.2 的 Page charges 是热力学解释的必要参考。§3 的 Stückelberg 特例不能略过：它说明形式上闭合的量不一定贡献独立 work term。§4 负责 self-duality 前后变分顺序。引言/结论帮助辨认开放问题，不能用结论替代这些技术条件。

## 完整 section tree 与 clusters

| Cluster | 原稿全部节树 / 页码 | 定义、步骤及依赖 |
|---|---|---|
| A | §1，pp.3–4 | 一般 Noether–Wald charge 不满足 bulk Gauss law；定义目标为精确 Killing 对称性下的闭合 Komar form；localization 联系尚待建立 |
| B | §2，pp.4–7；§2.1；§2.1.1 Lorentz，p.7；§2.1.2 NSNS/RR，pp.8–11 | string-frame IIA action、$X,Z,Y$、presymplectic potential；Noether identities → Page 形式；给后续统一表达定归一化 |
| C | §2.1.3 General coordinate transformations，pp.12–19 | compensating gauge transformations → momentum maps → $Q_{NW}$ → on-shell $\iota_kL=dw_k$（含 CS 边界项）→ $\mathbf K$；再改写为 potential × Page charge |
| D | §3，pp.19–22；§3.1；§3.1.1 Lorentz，p.22；§3.1.2 gauge，pp.22–25；§3.1.3 GCT，pp.25–27 | Romans mass $G^{(0)}=m$、$C^{(9)}$；Stückelberg 电荷、Proca 对照；顶部 form momentum map 修复 naive Killing potential；$k=0$ 上的 exact terms |
| E | §4，pp.27–31；§4.1；§4.1.1 Lorentz，p.31；§4.1.2 gauge，pp.31–32；§4.1.3 GCT，pp.32–34 | NSD 扩展先变分再施加 $G^{(5)}=\star G^{(5)}$；self-dual 项的 $1/4$ 系数；返回共同 Komar 公式 |
| F | §5，pp.34–38；§5.1；§5.1.1 Lorentz，p.38；§5.1.2 gauge，pp.38–39；§5.1.3 GCT，pp.39–41 | democratic RR action，独立 electric/magnetic 数据；施加双对偶约束后两个 $1/4$ 合成 $1/2$ |
| G | §6，pp.41–44 | 双 Majorana–Weyl KSE，双线性，momentum-map 识别，$dK^{(1)}$ 恒等式；原印式需修复，KSE 端仍为 source-level |
| H | §7，pp.44–45；Disclaimer/Acknowledgments p.45；References pp.45–50 | 强调歧义、黑膜积分发散、一般性与 Euclidean action 为后续问题；没有正文附录 |

# 全局记号、作用量与框架

十维 mostly-minus metric；$e^a$ 为 zehnbein，$\omega^{ab}$ 为 Levi–Civita spin connection，$R^{ab}$ 为其曲率，$\phi$ 为 dilaton。本文使用原稿的 curvature/Hodge convention；转入 mostly-plus 笔记必须重新核对 $\star$、$R^{ab}$、Komar orientation，不能只改一个整体号。

| 对象 | 次数 / 含义 |
|---|---|
| $B,H=dB$ | NSNS 2-form potential / 3-form field strength |
| $C^{(n)},G^{(n+1)}$ | RR potentials / twisted field strengths；IIA $C$ 奇、$G$ 偶，IIB 相反 |
| $d_{H\pm}=d\pm H\wedge$ | 由 $dH=0$ 与 odd $H\wedge H=0$ 得到 nilpotent twisted differential |
| $P_{Bk}^{(1)}$ | KR momentum-map 1-form，不等于 $\iota_kB$ |
| $P_k^{(n)},\widetilde P_k^{(n)}$ | RR electric/magnetic momentum maps，彼此仅在 imposing duality 后相关 |
| $\widetilde G=e^{-B}G$，$\widehat{\star G}=e^B\star G$ | magnetic/electric Page polyforms；后者不是 $\star\widetilde G$ 的普通记号替换 |
| $S=e^{-B}C,\widetilde S$ | Page potentials；通常只在局部 patch 定义 |
| $\widetilde H$ | KR Page 7-form；与 gauge-invariant $e^{-2\phi}\star H$ 不同 |
| $\Phi_{Bk}^{(1)},\Phi_k$ | 适合 restricted zeroth law 的势，不是任意点处的闭合 forms |
| $\hat k=k_\mu dx^\mu$，$P_k^{ab}=\nabla^ak^b$ | metric-dual Killing one-form 与 Lorentz momentum map |
| $\mathbf Q_{NW},w_k,\mathbf K$ | 均为 8-forms；$\mathbf K=-\mathbf Q_{NW}+w_k$ |

所有 polyform 乘积在 action 取 degree 10，在 Komar 取 degree 8，在 KR 方程取相应 degree。原稿经常省略投影；本笔记写 $|_n$ 防止误把不同 rank 相加。

整体 string-frame 归一化为 $g_s^2/(16\pi G_N^{(10)})$；原稿从(2.6)起省略它，实际积分荷必须恢复。共同 NSNS action density 为

$$
L_{NSNS}=e^{-2\phi}\left[-\star(e^a\wedge e^b)\wedge R_{ab}
 -4d\phi\wedge\star d\phi+\frac12H\wedge\star H\right].
$$

共同 dilaton equation 与 gravitational presymplectic part 为

$$
E_\phi=-4d\star d e^{-2\phi}-2L_{NSNS},
$$

$$
\Theta_{grav,\phi}=-e^{-2\phi}\star(e^a\wedge e^b)\wedge\delta\omega_{ab}
 +4\star d e^{-2\phi}\delta\phi-2\iota_a\star d e^{-2\phi}\wedge\delta e^a.
$$

这些是 **Source-derived**，未做完整十维 vielbein variation。$E_\phi=0$ 导出 $L\doteq-2d\star d e^{-2\phi}+L_{RR}$，是后面求 $w_k$ 的关键，$\doteq$ 表示 on shell。

# Clusters B–C：massless IIA 从 action 到 Komar

## RR action、$X,Z,Y$ 与变分边界项

$$
G^{(2)}=dC^{(1)},\quad G^{(4)}=dC^{(3)}-H\wedge C^{(1)},
$$

$$
\begin{aligned}
L_{RR}={}&\frac12G^{(2)}\wedge\star G^{(2)}+\frac12G^{(4)}\wedge\star G^{(4)}\\
&-\frac12G^{(4)}\wedge G^{(4)}\wedge B
 +\frac12G^{(4)}\wedge G^{(2)}\wedge B^2
 -\frac16G^{(2)}\wedge G^{(2)}\wedge B^3.
\end{aligned}
$$

该 CS representative 对 RR gauge transformation manifestly invariant；在 KR 变换 $\delta B=d\Lambda_B^{(1)}$ 下改变一个边界项。令

$$
Y^{(7)}=\frac12d(C^{(3)}-B\wedge C^{(1)})\wedge(C^{(3)}-B\wedge C^{(1)}),
$$

$$
dY^{(7)}=\frac12(G^{(4)}-B\wedge G^{(2)})^2.
$$

(2.8)–(2.10)的组织方式是

$$
\Theta=\Theta_{grav,\phi}+Z^{(7)}\wedge\delta B
 +X^{(8)}\wedge\delta C^{(1)}+X^{(6)}\wedge\delta C^{(3)},
$$

$$
\begin{aligned}
X^{(8)}&=\star G^{(2)}+\tfrac12G^{(4)}B^2-\tfrac13G^{(2)}B^3,\\
X^{(6)}&=\star G^{(4)}-G^{(4)}B+\tfrac12G^{(2)}B^2,\\
Z^{(7)}&=e^{-2\phi}\star H-X^{(6)}C^{(1)},\\
d(Z^{(7)}+Y^{(7)})&=-E_B,\quad dX^{(6)}=-E_{(3)},\quad
 dX^{(8)}+H X^{(6)}=-E_{(1)}.
\end{aligned}
$$

独立重算 CS polynomial 对 $G^{(2)},G^{(4)},B$ 的导数，三个 residual 都为零。它验证这些 CS 系数及边界 representative 的代数关系，不等同于已验证全部 Einstein equation。

## Lorentz 与高阶规范荷

Lorentz transformation 给

$$
Q[\sigma]=-e^{-2\phi}\star(e^a\wedge e^b)\sigma_{ab}.
$$

严格固定 vielbein 的纯 Lorentz reducibility parameter 不存在；原稿讨论更弱的 connection 条件 $D(e^{-2\phi}\sigma^{ab})=0$。以 horizon Killing bivector 代入可联系熵，但本节未给出一般边界条件下独立 Lorentz edge-mode phase space。

RR gauge transformations 为 $\delta C^{(1)}=d\Lambda^{(0)}$、$\delta C^{(3)}=d\Lambda^{(2)}-H\Lambda^{(0)}$。分部积分并保留 CS 边界项后

$$
Q[\Lambda]=-(Z+Y)\wedge\Lambda_B^{(1)}
 +X^{(8)}\Lambda^{(0)}+X^{(6)}\wedge\Lambda^{(2)}.
$$

重组 $\widetilde\Lambda^{(2)}=\Lambda^{(2)}-B\Lambda^{(0)}$ 后，系数为 $Z+Y$、$X^{(8)}+BX^{(6)}$、$X^{(6)}$，均 on-shell closed。非平凡积分需 closed but non-exact 参数，以及合适的积分 cycle；“局部 exact”与“全局荷为零”不能混同。

引入 $G^{(6)},G^{(8)}$ 及

$$
G^{(10-n)}=(-1)^{\lfloor n/2\rfloor}\star G^{(n)},\qquad
G=(d-H\wedge)C.
$$

则

$$
\widetilde G=e^{-B}G=dS,\quad S=e^{-B}C,\qquad
\widehat{\star G}=e^B\star G=d\widetilde S,
$$

$$
\widetilde H=e^{-2\phi}\star H-\frac12(\star G\wedge C)|_7=dB^{(6)}.
$$

Page forms 不逐点 gauge invariant，但小规范变换改变 exact forms，例如 $\delta\widetilde G=-d(\Lambda_B^{(1)}\wedge\widetilde G)$。只有在全局 patch/积分边界条件允许丢弃 exact 项时才能把其积分称为 gauge invariant；未验证跨大规范 patch 的量子化或全局规范不变性。

## 联合对称性与 momentum-map 方程

原稿取 $\delta_\xi=-\mathcal L_\xi+\delta_{\Lambda_\xi}$，而不是只用普通 Lie derivative。Lorentz compensator $\sigma_\xi^{ab}=\iota_\xi\omega^{ab}-P_\xi^{ab}$；对 Killing $k$，$P_k^{ab}=\nabla^ak^b$。

KR 和 RR 的核心方程是

$$
\boxed{\iota_kH+dP_{Bk}^{(1)}=0,\qquad
\iota_kG-P_{Bk}^{(1)}\wedge G+d_{H-}P_k=0.}
$$

其低阶分量为

$$
\iota_kG^{(2)}+dP_k^{(0)}=0,
\quad\iota_kG^{(4)}-P_{Bk}^{(1)}G^{(2)}+dP_k^{(2)}-HP_k^{(0)}=0.
$$

源 p.14 将后一项文字称为 $P^{(3)}$，但方程需要的是 2-form。磁性数据满足

$$
\iota_k\star G+P_{Bk}^{(1)}\wedge\star G+d_{H+}\widetilde P_k=0,
\qquad \widetilde P_k^{(n)}=(-1)^{\lfloor(8-n)/2\rfloor}P_k^{(n)}.
$$

势的 compensators 与 covariant transformations 为

$$
\begin{aligned}
\Lambda_{B\xi}^{(1)}&=\iota_\xi B-P_{B\xi}^{(1)},\\
\Lambda_\xi&=\iota_\xi C-P_\xi-P_{B\xi}^{(1)}\wedge C,\\
\delta_\xi B&=-(\iota_\xi H+dP_{B\xi}^{(1)}),\\
\delta_\xi C&=-(\iota_\xi G-P_{B\xi}^{(1)}G+d_{H-}P_\xi)
 +\delta_\xi B\wedge C.
\end{aligned}
$$

要求 $\delta_k$ 消灭所有势，比仅 $\mathcal L_kG=0$ 强；原稿明确排除了 $\iota_kH$ 的 closed non-exact obstruction 和 higher-form global symmetry 分支。应把这一选择带入区域 gluing，不要凭局部 Poincaré lemma 宣称动量映射全局存在。

## $Q_{NW}\to w_k\to\mathbf K$

(2.62)给

$$
Q_{NW}[\xi]=e^{-2\phi}\star(e^a\wedge e^b)P_{\xi ab}
 +2\iota_\xi\star d e^{-2\phi}
 -P_{B\xi}^{(1)}e^{-2\phi}\star H-P_\xi^{(0)}X^{(8)}-P_\xi^{(2)}X^{(6)}.
$$

在 shell 上且 $\delta_k\phi_{all}=0$ 时

$$
dQ_{NW}[k]\doteq\iota_kL+dY^{(7)}\wedge\Lambda_{Bk}^{(1)},
$$

$$
\iota_kL\doteq dw_k-dY^{(7)}\wedge\Lambda_{Bk}^{(1)},
$$

$$
\begin{aligned}
w_k={}&2\iota_k\star d e^{-2\phi}
-P_k^{(0)}(X^{(8)}-\tfrac12\star G^{(2)})
-P_k^{(2)}(X^{(6)}-\tfrac12\star G^{(4)})\\
&-\tfrac12P_k^{(4)}G^{(4)}-\tfrac12P_k^{(6)}G^{(2)}.
\end{aligned}
$$

故 $d(-Q_{NW}+w_k)\doteq0$，得到开头的统一公式。关键不是删去 matter 项，而是用 electric **和** magnetic momentum maps 把 $\iota_kL$ 改写成导数；CS boundary term 在两式中抵消。

为解释 thermodynamic work terms 定义

$$
\Phi_{Bk}^{(1)}=P_{Bk}^{(1)},\qquad
\Phi_k=(P_k+P_{Bk}^{(1)}\wedge C)e^{-B},
$$

$$
\mathbf K[k]=-e^{-2\phi}\star d\hat k+Phi_{Bk}^{(1)}\widetilde H
 +\tfrac12(\Phi_k\wedge\widehat{\star G})|_8.
$$

$m=0$ 时，在 $k=0$ 的拉回截面上 $d\Phi_B=d\Phi=0$。原稿有时简称 “on Killing horizons”，严格使用时需区分 bifurcation surface 的 $k=0$ 与一般 horizon 上 $k\ne0$；extremal supersymmetric horizon 不能直接套用 bifurcation argument。

# Cluster D：Romans mass、Stückelberg 与顶部 RR form

$$
G=d_{H-}C+me^B,\quad G^{(0)}=m,\quad dm=0,
\qquad \delta C=d_{H-}\Lambda-me^B\Lambda_B^{(1)}.
$$

$G^{(2)}=dC^{(1)}+mB$，$G^{(4)}=dC^{(3)}-HC^{(1)}+mB^2/2$；势延伸至 $C^{(9)}$，磁性 top form 满足 $G^{(0)}=-\star G^{(10)}$。$d_{H-}G=0$、$d_{H+}\star G=0$ 的形式保持统一。

## Action 的质量项与局部修复

在 massless RR density 上增加

$$
\frac12\star m^2-\frac16mG^{(4)}B^3+\frac18mG^{(2)}B^4-\frac{3}{5!}m^2B^5.
$$

最后 $m^2$ 是本笔记的 **Checked local repair**；原稿(3.3)印为 $m^5$。对 $B$ 的显式导数应为 $-\tfrac12(G^{(4)}-BG^{(2)}+mB^2/2)^2$。用 printed $m^5$ 留下 $(m^2-m^5)B^4/8$，改为 $m^2$ 后 residual 为零。不是仅凭量纲猜测。

$X^{(8)}$ 增 $mB^4/8$，$X^{(6)}$ 增 $-mB^3/6$。Page forms 变为

$$
\widetilde G=dS+m,\qquad \widehat{\star G}=d\widetilde S-m,
$$

$$
\widetilde H=e^{-2\phi}\star H-\tfrac12(C\wedge\star G)|_7-\tfrac12m\widetilde S^{(7)}.
$$

以(5.13)的统一定义为准；(3.23)/(3.24)的 $S$ 和 $\widetilde S$ 须按 duality sign 区分，不能忽略波浪号。

## 为什么形式上的守恒不等于独立 work term

$\delta C^{(1)}=-m\Lambda_B^{(1)}+d\Lambda^{(0)}$ 表明 $C^{(1)}$ 为 Stückelberg 场。原稿用四维 Proca 对照：

$$
L=\tfrac12F\wedge\star F+\tfrac12(d\varphi+mA)\wedge\star(d\varphi+mA),
$$

将 $d\varphi+mA=\star H$ dualize 后，得到 $\tfrac12F\star F-\tfrac12H\star H+mB\wedge F$，形式上可构造 $\star F+mB$ 与 $\Lambda^{(1)}\wedge(\star H-mA)$。再次 dualize 交换 massive/Stückelberg 角色。因此“能写 closed Page form”不单独说明能定义一个独立黑洞化学势。

Romans momentum-map 的最低与最高分量是

$$
\iota_kG^{(2)}-mP_{Bk}^{(1)}+dP_k^{(0)}=0,
$$

$$
m\star\hat k=-\iota_kG^{(10)}
=-P_{Bk}^{(1)}G^{(8)}+dP_k^{(8)}-HP_k^{(6)}.
$$

naive $m\star\hat k=dR_k^{(8)}$ 只保留局部 Killing potential，会漏掉与低阶 forms 耦合的 closed term。完整 top-form 方程把质量贡献吸收到统一 $P\star G$ 中。

在 Page 表达中多出

$$
\mathbf K=-e^{-2\phi}\star d\hat k+P_B\widetilde H
 +\tfrac12\Phi\widehat{\star G}+\tfrac12mP_B\widetilde S^{(7)}.
$$

**Checked:**

$$
d\Phi=e^{-B}[-\iota_kG-(\iota_kH)\wedge C]+mP_B,
\qquad k=0:\quad d\Phi^{(0)}=mP_B.
$$

$m\ne0$ 时在该截面 $P_B$ exact，$\Phi^{(0)}\widehat{\star G}|_8+mP_B\widetilde S^{(7)}=d(\Phi^{(0)}\widetilde S^{(7)})$。只有在 potentials 和积分 cycle 的全局条件使该 exact 项积分为零时，相应 work terms 才消失。$m=0$ 不能由除以 $m$ 的论证获得。

# Cluster E：IIB self-duality 前后的计算

IIB 的电势为 $C^{(0)},C^{(2)},C^{(4)}$，$G^{(1)}=dC^{(0)}$、$G^{(3)}=dC^{(2)}-HC^{(0)}$、$G^{(5)}=dC^{(4)}-HC^{(2)}$。先取不施加自对偶条件的 NSD action，再对 equations/charges 施加 $G^{(5)}=\star G^{(5)}$。

$$
\begin{aligned}
L_{RR}^{NSD}={}&\tfrac12G^{(1)}\star G^{(1)}+\tfrac12G^{(3)}\star G^{(3)}
 +\tfrac14G^{(5)}\star G^{(5)}\\
&-\tfrac12G^{(5)}G^{(3)}B+\tfrac14G^{(5)}G^{(1)}B^2
 -\tfrac1{12}G^{(3)}G^{(1)}B^3.
\end{aligned}
$$

最后一项的 $G^{(1)}$ 是 **Checked local repair**：原稿(4.1)为 $G^{(3)}G^{(3)}B^3$，不仅次数为12，而且普通 odd 3-form 自楔为零。上式的分次左变分精确给出(4.12)：

$$
\begin{aligned}
X^{(9)}&=\star G^{(1)}-\tfrac14G^{(5)}B^2+\tfrac1{12}G^{(3)}B^3,\\
X^{(7)}&=\star G^{(3)}+\tfrac12G^{(5)}B-\tfrac1{12}G^{(1)}B^3,\\
X^{(5)}&=\tfrac12[\star G^{(5)}-G^{(3)}B+\tfrac12G^{(1)}B^2],\\
Z^{(7)}&=e^{-2\phi}\star H-X^{(7)}C^{(0)}-X^{(5)}C^{(2)}.
\end{aligned}
$$

相应 $dX^{(9)}+HX^{(7)}=-E_{(0)}$、$dX^{(7)}+HX^{(5)}=-E_{(2)}$、$dX^{(5)}=-E_{(4)}$ 组织 Noether identities。NSD 中 $G^{(5)\pm}=(G^{(5)}\pm\star G^{(5)})/2$ 必须保留；例如 dual $G^{(7)}=-\star G^{(3)}$ 的定义含 $-B\wedge G^{(5)-}$，$G^{(9)}$ 含 $-B^2G^{(5)-}/2$。

另一个独立代数修复是

$$
X^{(7)}+BX^{(5)}=-G^{(7)}+BG^{(5)+}
 -\tfrac12G^{(3)}B^2+\tfrac16G^{(1)}B^3,
$$

原稿(4.20b)最后项印为负号；用(4.12)相减得到 $G^{(1)}B^3/3$ 的非零残差。

NSD 的磁性 momentum-map 方程不是直接照搬 democratic equation，而是

$$
\begin{aligned}
\iota_k\star G^{(5)}-P_BG^{(3)}+d\widetilde P^{(3)}-HP^{(1)}&=0,\\
\iota_k\star G^{(3)}-P_BG^{(5)+}-d\widetilde P^{(5)}
 +\tfrac12H(P^{(3)}+\widetilde P^{(3)})&=0,\\
\iota_k\star G^{(1)}+P_B\star G^{(3)}+d\widetilde P^{(7)}-HP^{(5)}&=0.
\end{aligned}
$$

源(4.25)的 Komar RR 部分为

$$
\tfrac12P^{(1)}\star G^{(3)}
+\tfrac14P^{(3)}\star G^{(5)}+\tfrac14\widetilde P^{(3)}G^{(5)}
-\tfrac12P^{(5)}G^{(3)}+\tfrac12P^{(7)}G^{(1)}.
$$

在 self-duality 与 $\widetilde P^{(3)}=P^{(3)}$ 下，两个 $1/4$ 合成 $1/2$，恢复开头的共同公式。若先在 action 中 impose self-duality，$G^{(5)}\star G^{(5)}$ 消失，会丢失变分信息；此顺序也限制了将 on-shell pseudoaction 直接用于 Euclidean action 的做法。

# Cluster F：democratic action 与统一下降

定义独立 electric/magnetic RR variables，取

$$
L_{RR}^{dem}=\tfrac14(G\wedge\star G)|_{10},
\qquad G=d_{H-}C+me^B.
$$

它没有显式 CS 项，规范不变。重建(5.6)–(5.9)中的关键 equations 与 presymplectic data：

$$
E=-\tfrac12d_{H+}\star G,\qquad
E_B=-d(e^{-2\phi}\star H)+\tfrac12(G\wedge\star G)|_8-(E\wedge C)|_8,
$$

$$
\Theta=\Theta_{grav,\phi}+Z^{(7)}\delta B+\tfrac12(\star G\wedge\delta C)|_9,
\quad Z^{(7)}=e^{-2\phi}\star H-\tfrac12(C\wedge\star G)|_7.
$$

$E_B=0$ 后 $dZ^{(7)}=\tfrac12m(e^B\star G)|_8$，故减去 $m\widetilde S^{(7)}/2$ 才得到 closed KR Page form。全体 independent variables 先变分，再 impose $G^{(10-n)}=(-1)^{\lfloor n/2\rfloor}\star G^{(n)}$，最后按偶/奇 rank 取 IIA/IIB。

对 gauge reducibility parameters，$d\Lambda_B=0$、$d\widetilde\Lambda^{(n)}=0$（$n\ne0$）、$d\widetilde\Lambda^{(0)}=m\Lambda_B$。最低 rank 的组合成为 exact，正是 §3 的 Stückelberg 机制；其他 closed non-exact 参数仍可能给非平凡 cycle charges。

修正(5.29b)缺失的 Hodge star 后

$$
Q_{NW}=e^{-2\phi}\star d\hat k+2\iota_k\star d e^{-2\phi}
 -P_Be^{-2\phi}\star H-\tfrac12P\star G,
$$

$$
w_k=2\iota_k\star d e^{-2\phi}-\tfrac14P\star G
 +\tfrac14(-1)^C\widetilde P G,
$$

$$
\mathbf K=-e^{-2\phi}\star d\hat k+P_Be^{-2\phi}\star H
 +\tfrac14P\star G+\tfrac14(-1)^C\widetilde P G.
$$

$(-1)^C$ 指势 form 的 parity。施加 field-strength 与 momentum-map duality 后，后两项相等，得 $\tfrac12P\star G$。这是统一公式的系数来源，不应重复把磁性 sector 再加一次。

**Checked:** 用 exact graded-commutative algebra，在所有相关 degree 上检查 Page forms 闭合、$\widetilde G=dS+m$、$\Phi$ descent、KR Page closure 与修复后的 IIB 三个变分系数，共80项全通过。IIB 必须另外加入 $\iota_kG^{(1)}=\mathcal L_kC^{(0)}=0$；省略这个零阶对称性条件时四个 descent 检查失败，补入后恢复。此项是物理假设而不是可随意删掉的 residual。

# Cluster G：Killing spinor 与 Komar 消失的条件链

## KSE 与双线性识别

原稿以 $\epsilon=(\epsilon^1,\epsilon^2)$ 的 commuting Majorana–Weyl doublet 组织 IIA 相反/IIB 相同 chirality。对纯玻色背景，source KSE 为

$$
\begin{aligned}
0=\delta\psi_\mu&=\nabla_\mu\epsilon-\tfrac18\not H_\mu\sigma^3\epsilon
 +\tfrac1{16}e^\phi\sum_{n=0}^{10}\frac{i^n}{n!}\not G^{(n)}\Gamma_\mu\mathcal P_{(n)}\epsilon,\\
0=\delta\lambda&=(\not\partial\phi-\tfrac1{12}\not H\sigma^3)\epsilon
 +\tfrac18e^\phi\sum_{n=0}^{10}\frac{(-i)^n(5-n)}{n!}\not G^{(n)}\mathcal P_{(n)}\epsilon.
\end{aligned}
$$

$\mathcal P_{(n)}=i\sigma^1$ 对 $n=0,3,4,7,8$，其余 $n=1,2,5,6,9,10$ 为 $\sigma^2$。双线性为

$$
K^{(p)}=i\bar\epsilon^i\Gamma^{(p)}\epsilon^i,\qquad
\widetilde K^{(p)}=i\sigma^3_{ij}\bar\epsilon^i\Gamma^{(p)}\epsilon^j,
\quad p=1,5,9,
$$

以及候选修复式

$$
\Omega^{(n)}=i^{n-1}\mathcal P_{(n+2)ij}\bar\epsilon^i\Gamma^{(n)}\epsilon^j.
$$

原稿(6.6)一律写 $\Gamma^{(1)}$，无法定义十一种 rank 的 forms；本式只修复形式次数，不声称已经从原稿补全所有 charge-conjugation/slash normalization 推导。

源(6.7)给 $\Omega^{(10-n)}=(-1)^{\lfloor n/2\rfloor}\star\Omega^{(n)}$。IIA 的 $\star K^{(9)}=\widetilde K^{(1)}$、$\star\widetilde K^{(9)}=K^{(1)}$，并交换两个 5-forms；IIB 的每类 9-form dual 到自身的 1-form，两类 5-form 各自 self-dual。

源(6.8)为

$$
\nabla_{(\mu}K^{(1)}_{\nu)}=0,\quad
\iota_{K^{(1)}}H=d\widetilde K^{(1)},\quad
\iota_{K^{(1)}}G+\widetilde K^{(1)}\wedge G+d_{H-}(e^{-\phi}\Omega)=0.
$$

所以它们精确匹配 earlier momentum-map equations，取

$$
P_{B K^{(1)}}^{(1)}=-\widetilde K^{(1)},\qquad
P_{K^{(1)}}^{(n)}=e^{-\phi}\Omega^{(n)}.
$$

这是一种特定代表；加 closed form 的自由度可能改变耦合的高阶 momentum maps，因此不能从这个代表的消失推断全部代表都消失。

## 形式次数修复后的最后一步

原印(6.10)含 $\iota_{G^{(n)}}\wedge\star\Omega^{n+2}$，作为内缩既有多余 wedge，也一般不是 2-form。与(6.12)、(6.13)相容的候选是

$$
dK^{(1)}-\iota_{\widetilde K^{(1)}}H
+\tfrac14e^\phi\sum_{n=0}^{8}(-1)^n
 [\iota_{G^{(n)}}\Omega^{(n+2)}+\iota_{\Omega^{(n)}}G^{(n+2)}]=0.
$$

采用原稿(6.11)的 $q$-fold contraction 和(6.12)的 star convention：

$$
\star\iota_{A^{(q)}}B^{(p)}=(-1)^{q(10-p)}A^{(q)}\wedge\star B^{(p)}.
$$

**Checked:** 用 mostly-minus 正交基和 complement-first epsilon 次序实现该 star，58,025 个非零 basis contraction 情形全部通过。换成常见的 contracted-indices-first star 会有 rank-dependent sign，不能混用两种约定判定源错。

对修复后的 2-form identity 取 star，必须得到

$$
\star dK^{(1)}+\widetilde K^{(1)}\wedge\star H
+\tfrac14e^\phi\sum_{n=0}^{8}
 [G^{(n)}\wedge\star\Omega^{(n+2)}+\Omega^{(n)}\wedge\star G^{(n+2)}]=0.
$$

原稿(6.13)第二项为 $\widetilde K^{(1)}H$（4-form），缺 $\star$。用 duality 及分次交换，求和两项相同；对 $n=0,\ldots,8$ 的配对符号独立检查均为 $+1$。乘以 $e^{-2\phi}$ 并用 bilinear momentum maps，得到 $-\mathbf K[K^{(1)}]=0$。

**验证边界：** 上述是“修复后的 KSE-derived identity → Komar 消失”的已检查代数链。以32维显式十维 Clifford 矩阵检查了100个反对易关系及 $p=0,\ldots,10$ 的 $\Gamma^a\Gamma_{(p)}\Gamma_a=(-1)^p(10-2p)\Gamma_{(p)}$；这些只核对必要 Clifford algebra，不是完整 spinor-bilinear 微分计算。原印(6.6)/(6.10)的 rank 错误与省略的中间 KSE/Fierz 步骤阻止把最后结论标为全面 **Checked**。需要完整、约定一致的 KSE 双线性重推或源修订；这里保留 **Source-derived / conditional**，不利用其未验证部分推出新 BPS 或 localization 定理。

# Equation ledger 与推导依赖

| 原稿式 | 本笔记可复用对象 | 状态 |
|---|---|---|
| (2.1)–(2.10) | IIA action、$\Theta$、$X,Z,Y$ | CS 三个导数 Checked；全部 tensor variation Source-derived |
| (2.27)、(2.33)、(2.76) | Page RR/KR forms | 局部闭合代数 Checked；全局 patch 问题未验证 |
| (2.47)、(2.55)、(2.69) | KR、electric/magnetic RR momentum maps | 条件和形式结构已重建；存在性需要背景/拓扑输入 |
| (2.62)–(2.73) | Noether–Wald → 改进 Komar | source-level 完整公式链；勿混淆 $Q_{NW}$ 与 $\mathbf K$ |
| (2.82)–(2.83) | 势 × Page charge | 分次 descent Checked |
| (3.3)–(3.4) | Romans CS boundary variation | printed $m^5$ Failed，$m^2$ 局部修复 residual=0 |
| (3.34)–(3.43) | mass/top-form/Stückelberg 分支 | 局部 descent 与 exactness Checked；全局 work-term 消失条件性 |
| (4.1)、(4.12)、(4.20b) | IIB NSD action/variation | printed last CS rank 与 Page sign Failed；修复后变分 Checked |
| (4.22)、(5.29b) | dilaton Noether–Wald 项 | 必须为 $2\iota_k\star de^{-2\phi}$；printed 0-form 不能加入8-form |
| (4.22) RR 最后项 | $P^{(3)}X^{(5)}$ | printed $P^{(2)}X^{(5)}$ 次数7，不能作8-form |
| (5.1)–(5.34) | democratic action、$1/4+1/4$ 系数 | 80项局部 algebra Checked，完整 tensor Noether derivation 未重推 |
| (6.6)、(6.10)、(6.13) | bilinear、$dK$ 与 Hodge chain | printed degree Failed；候选修复条件下 Hodge/reindexing Checked |
| (6.14) | supersymmetric Komar 消失 | Source-derived、特定代表且依赖修复后的 KSE identity |

全局依赖为：action/CS representative → $\Theta,E,Y$ → compensating transformations → momentum maps → $Q_{NW}$ → dilaton on-shell reduction + magnetic maps → $w_k$ → closed $\mathbf K$。Page 重写是并行的局部代数解释支线；超对称性在最后通过特殊 momentum maps 加入，不能反过来替代前面的变分推导。

# 接入 vault 的 CPS/区域荷计算

可直接带走的是三个定义清楚的对象：$\Theta$ 的 matter/form 边界项，$\iota_kG-P_BG+d_HP=0$ 的协变提升方程，以及 $\Phi\wedge\widehat{\star G}$ 的 potential/charge 分工。它们适合检查区域两侧使用不同 gauge patch 时，Page representative 与动量映射如何同时变换。

使用前仍须指定真实 action 的 boundary term、允许 variations、orientation、$k$ 是否 field dependent，以及 corner flux/charge 的可积性。本文没有给出一个任意区域上的 $\delta H_k=\int(\delta Q_k-\iota_k\Theta-\cdots)$ 的完整边界问题，也没有完成 edge-mode sewing。bulk closed Komar form 本身不保证 asymptotic Hamiltonian finiteness 或 integrability。

§7 明确保留的问题包括一般超引力理论是否同样消失、双线性为何选中 momentum map、黑膜积分的发散/正则化，以及 Euclidean action 应用。尤其不能把本文当作已经求得某个特定 AdS 黑膜配分函数的论文。

# Verification log

**Verified:** Mathematica 检查 IIA CS derivatives（3 residual=0）、Romans printed residual 与 $m^2$ 修复、IIB Page sign、9个 duality 配对符号；Sage exact graded algebra 80/80通过且 `sage_verify_checks` 确认；58,025 Hodge basis cases、100 Clifford pair checks、11 rank sandwich identities 全通过。PDF pp.20、28、33、40、42–44 的 decisive equations 已视觉确认，并与 TeX 一致。

**Assumptions:** $dH=0$、$dm=0$；所有 field strengths 遵循源的 twisted Bianchi/EOM；$k$ 保持全部场（IIB 包括 axion）；动量映射局部存在且排除指定 cohomological obstruction；mostly-minus、源兼容的 Hodge 次序；on-shell duality 只在 variation 后施加；exact 项的积分结论另需全局条件。

**Failed:** 上表列明的 printed 幂次、形式次数、IIB Page 符号。只修复独立代数支持的地方；不能依赖未修复的印式作进一步证明。

**Blocked:** 对(6.14)的完整独立证明仍缺与修复后(6.6)/(6.10)一致的 KSE 双线性中间推导与 conventions；书面修复不是作者确认。对于全局 conserved charge/thermodynamic first law，缺具体背景、积分 cycle、patching、边界 conditions 与规范 representative。

**Not verified:** 全部十维 Einstein/dilaton variations、完整 Noether identity 的逐项 tensor 重推、一般 KSE/Fierz derivation、黑膜 Smarr 的有限积分、Euclidean localization、量子化及任意 supergravity 的普遍性。Sage 中初次 sparse/dense matrix 接口错误已恢复；Hodge convention 经过显式固定；无剩余源访问或 CAS 服务阻塞。所有临时 source/render/check 文件均在 vault 外。
