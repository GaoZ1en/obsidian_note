---
paper id: 2610.31839v1
title: Gauge conditions in the perturbative quantization of quadratic gravity and its quantum Lagrangian
authors:
  - Jorge Bellorin
  - Claudio Bórquez
  - Byron Droguett
publication date: 2026-10-22T19:24:13Z
abstract: |-
  The authors compare Hamiltonian and covariant equations of quadratic gravity on static and spatially homogeneous configurations, interpret a previously imposed spatial-trace condition as a perturbative effect, and integrate BFV canonical variables to obtain an ADM quantum Lagrangian and propagators. This note reconstructs that chain and records explicit coefficient and regulator inconsistencies in the printed formulas.
comments: "Published in PLB; retrieved PDF has 13 pages"
url: https://arxiv.org/abs/2610.31839v1
summary: "A canonical-to-Lagrangian testbed whose trace-gauge necessity is not established and whose printed scalar, tensor and ghost formulas require corrections."
tags: []
---

# Quadratic gravity：canonical reduction、gauge 与 quantum Lagrangian

**一般非微扰等价性没有被本文的两类配置检查证明；“必须施加 $h_{ii}=0$ 才能保持微扰等价”也不能由所列二次作用量推出。** 对本文引用的 BFV 二次 canonical 作用量直接消去动量，三个 sector 的核均与协变二次作用量匹配，计算未先设 $h^L=-h^T$。这限定于所印出的二次 bulk action、非零空间动量和可丢弃分部积分边界项的域，不是完整非线性 Dirac/BRST 分析的替代。

本文可复用的对象是非退化 Legendre map、有限 $\epsilon$ gauge、canonical Gaussian elimination 和 ADM 极点分布。使用前必须记录四处问题：

- 式 (3.13) 的 $n^L\Delta^2\ddot n^L$ 项少因子 $2$；原式求逆不产生所列标量传播子。
- 式 (4.7) 的系数 $\kappa^{-2}$ 与式 (4.4) 不相等；同一正规化下应为 $2\kappa^2$。
- 式 (3.16) 省略有限 $\epsilon$ 的 longitudinal ghost 项，却在 (4.5) 使用依赖该项的极限结果。
- p.6、式 (2.15) 后的未编号静态 $\mathcal E^{ij}$ 丢失 coupling coefficients，不是一般 $\alpha,\beta$ 下式 (2.8) 的静态化。

下文并列保留源式位置、反证和建议修正。理由代码：T1-symplectic; T2-model。

来源：[摘要](https://arxiv.org/abs/2610.31839v1)、[PDF](https://arxiv.org/pdf/2610.31839v1)、[TeX](https://arxiv.org/src/2610.31839v1)。四节全文和脚注已读，无附录。为解决当前论文的 canonical/ghost 缺项，定向读取其 Ref.12：[2511.15474v2](https://arxiv.org/abs/2511.15474v2)，特别是二次 kernels (3.17)–(3.20)；没有把这篇支持文献加入 daily queue 或另写深读。本文 PDF pp.6,9,10,11 和 Ref.12 p.10 已渲染核对。

## 1. 全文 source map 与依赖链

| 源位置 | 目的与依赖 |
|---|---|
| §1，(1.1) | 理论、先前 trace-gauge 主张、研究范围 |
| §2，(2.1)–(2.10) | covariant Euler equation、ADM phase space、constraints 与 Hamilton equations |
| §2，(2.11)–(2.17) | $N^i=0$ 静态化、导数 commutators、matching residual |
| §2，(2.18)–(2.19) | 纯时间依赖匹配；随后向 general case 推广 |
| §3，(3.1)–(3.12) | BFV pairs、BRST charge、gauge fermion、有限 $\epsilon$ 与 delta-function 消元 |
| §3，(3.13)–(3.18) | momentum integration、四个 Lagrangian sectors、gauge averaging、GR coefficient limit |
| §4，(4.1)–(4.7) | 二次核反演、mass poles、partial fractions、ghost |
| §4，(4.8)–(4.10) | 非局域 gauge、canonical momenta 的二次项与限制 |
| Ref.12 定向支持 | kinetic normalization、$P$-block、$2/\epsilon$ ghost regulator |

主链为
$$
S[g]\to H_{\mu\nu},
\qquad
(g,\pi;K,P)\to T_A,\mathcal H_\Psi
\to\delta[K-K(g,N,N^i)]
\to\mathcal L^{(2)}
\to K_{\rm gf}^{-1}
\to\hbox{极点/留数}.
$$
restricted-configuration checks 和一般 identity 是不同证据；下面直接用 action Schur complement 检验 printed quadratic reductions。

## 2. 理论、参数与 covariant variation

signature $(-+++)$。写 $c:=\kappa^{-2}$ 仅为缩短公式，源作用量为
$$
S=\int d^4x\sqrt{-g^{(4)}}\left[
c(R^{(4)}-2\Lambda)-\alpha R^{(4)}_{\mu\nu}R^{(4)\mu\nu}
+\beta(R^{(4)})^2\right].
$$
四维 Gauss–Bonnet 允许去掉 bulk Riemann-squared；区域问题仍需 boundary completion，本文未给出其 CPS 数据。

$\upsilon_m=\alpha-m\beta$、$\gamma=(8\alpha\upsilon_3)^{-1}$。全文的 generic branch 是
$$
\alpha\ne0,\qquad \upsilon_3\ne0.
$$
$\alpha=0$、$\beta=\alpha/3$ 是不同 constraint branches，不由直接代入最终 propagators 覆盖。

式 (2.1) 为
$$
\begin{aligned}
H_{\mu\nu}={}&-cR_{\mu\nu}
+2\alpha R_{\rho\mu}R^\rho{}_\nu-2\beta RR_{\mu\nu}
-2\alpha\nabla_{\rho(\mu}R_{\nu)}{}^\rho
+\alpha\Box R_{\mu\nu}+2\beta\nabla_\mu\nabla_\nu R\\
&+\frac12g_{\mu\nu}
[c(R-2\Lambda)-\alpha R_{\rho\sigma}R^{\rho\sigma}
+\beta R^2+\upsilon_4\Box R].
\end{aligned}
$$
它取相对于通常 Einstein tensor 的负号，来自 covariant metric variation。导数次序不能任意交换。独立 xAct 变分、contracted Bianchi 与 scalar Hessian 对称性化简后，原作用量和此式的 residual 为零。

flat-background 二次展开取 $\Lambda=0$，使 Minkowski 是解；若 $c=0$，$c\Lambda$ 本身消失。不能未经说明把非零 cosmological term 留在 Minkowski propagator problem 中。

## 3. ADM 扩展 phase space 与 Legendre map

空间几何用 $\nabla_i,R_{ij}$；extrinsic curvature 约定
$$
K_{ij}=\frac1{2N}(\dot g_{ij}-2\nabla_{(i}N_{j)}).
$$
canonical variables 为 $(g_{ij},\pi^{ij})$、$(K_{ij},P^{ij})$；$K$ 暂独立，$P^{ij}$ 为 density。源 (2.3) 的全局字典：
$$
\begin{gathered}
V_i=\nabla^jK_{ij}-\nabla_iK,\quad L=K_{ij}K^{ij}-K^2,\\
J_{ijkl}=2K_{ik}K_{jl}-K_{ij}K_{kl},\quad J_{ij}=g^{kl}J_{ijkl},\\
X=-c+\upsilon_2L-2\beta R,\quad
Q^{ij}=P^{ij}+2\sqrt g(\alpha R^{ij}+g^{ij}X),\\
\widetilde Q_{ij}=-Q_{ij}/(2\alpha)+\gamma\upsilon_4g_{ij}Q,\quad
\widehat Q_{ij}=\widetilde Q_{ij}+\sqrt gR_{ij},\\
V=\sqrt g[-c(L+R-2\Lambda)+\alpha(L^2+R_{ij}R^{ij}-2V_iV^i)-\beta(L+R)^2],\\
Y=\frac{-\beta P+2\alpha\sqrt g[c-\beta(L-R)]}{2\upsilon_3},\qquad
Z=\frac{\upsilon_2P-2\alpha\sqrt g[c+\upsilon_4(L-R)]}{2\upsilon_3}.
\end{gathered}
$$
无指标表示 trace；$V_i$ 与 scalar density $V$ 不同。bulk Hamiltonian 为 $\int d^3x(NT_0+N^iT_i)$，
$$
T_0=\frac{\widetilde Q_{ij}Q^{ij}}{2\sqrt g}
+(\nabla_{ij}+J_{ij})P^{ij}+2K_{ij}\pi^{ij}+V,
$$
$$
T_i=-2g_{ij}\nabla_k\pi^{jk}
-2\nabla_k(K_{ij}P^{jk})+\nabla_iK_{jk}P^{jk}.
$$
generic branch 的 $24$ 个 phase-space 分量由四个 first-class constraints 去掉 $8$，留下 $16$ 维，即 $8$ 个配置自由度；不含边界/零模或退化 branches。

关键 Hamilton equations：
$$
\dot g_{ij}=2NK_{ij}+2\nabla_{(i}N_{j)},
$$
$$
\dot K_{ij}=\frac N{\sqrt g}\widetilde Q_{ij}
+(\nabla_{ij}+J_{ij})N
+N^k\nabla_kK_{ij}+2K_{k(i}\nabla_{j)}N^k,
$$
$$
\begin{aligned}
\dot P^{ij}={}&N[-2\pi^{ij}+P^{ij}K-4P^{k(i}K^{j)}{}_k+ZK^{ij}
+g^{ij}(P^{kl}K_{kl}-ZK)]\\
&-4\alpha\sqrt g[\nabla^{(i}(NV^{j)})-g^{ij}\nabla_k(NV^k)]
+\mathcal L_{\mathbf N}P^{ij}.
\end{aligned}
$$
$\dot\pi^{ij}=\mathcal E^{ij}$ 的完整式见源 (2.8)：依次含 $QQ$、$\widehat Q$ 二阶导数、$Y$ Hessian、$P\nabla N$、$J/Z/X/R$ 势项、$V_i$ 项、density Lie derivative。静态化应直接从 (2.8) 做，不能用 p.6 丢系数的中间式。

点态 trace/TF 分解给
$$
\frac{\widetilde Q\cdot Q}{2\sqrt g}
=-\frac{Q_{\rm TF}^2}{4\alpha\sqrt g}
-\frac{Q_{\rm tr}^2}{48\upsilon_3\sqrt g}.
$$
在平直 orthonormal trace coordinate $p_0=P_{\rm tr}/\sqrt3$ 和五个 $p_A$ 下，phase-space Lagrangian 的 momentum Hessian determinant 为
$$
\det K_{pp}=\frac1{256\alpha^5\upsilon_3}.
$$
驻点 $p_0=-8\upsilon_3k_0$、$p_A=-2\alpha k_A$，代回 $-4\upsilon_3k_0^2-\alpha\sum_Ak_A^2$，其中 $k_0=\dot K_{\rm tr}/\sqrt3$。此 principal block 已独立验证；后面 Schur complement 还保留全部 lower-derivative couplings。

## 4. Exact matching：两类检查的范围

### 静态、零 shift

$N^i=0$、$\partial_t=0$ 时，$\dot g,\dot P$ 给 $K=\pi=0$，$\dot K$ 给
$$
\widetilde Q_{ij}=-\sqrt g\,N^{-1}\nabla_i\nabla_jN.
$$
$T_i,H_{0i}$ 自动零；源文比较
$$
H_{00}=\frac{N^2}{2\sqrt g}T_0,\qquad H^{ij}=\frac{\mathcal E^{ij}}{N\sqrt g}.
$$
time-time residual 正比于
$$
\nabla^4N-\nabla_{ij}{}^{ij}N
+R_{ij}\nabla^{ij}N+\tfrac12\nabla_iN\nabla^iR.
$$
用 commutator 和 $\nabla_iR^i{}_j=\frac12\nabla_jR$，
$$
\nabla_{ij}{}^{ij}N
=\nabla^4N+R_{ij}\nabla^{ij}N+\tfrac12\nabla_iR\nabla^iN.
$$
此任意三维 metric/scalar identity 已用 xAct 抽象导数复算。源 (2.16) 的 space-space residual 也用 mixed-tensor commutator 配对抵消；但它前面的 printed $\mathcal E$ 有 coupling 错误。

**Failed — p.6、(2.15) 后未编号式。** 从 (2.8) 到该式，$1/(2\alpha)$、$-\gamma\upsilon_4$ 变成 $1/2,-1/8$，多个 $\alpha\widehat Q$/$\alpha R$ terms 失去 $\alpha$；没有声明 $\alpha=1,\beta=0$。

具体 counterexample：$N=1,K=\pi=0$，空间 sectional curvature 常数 $\mathfrak k$，$R_{ij}=2\mathfrak k g_{ij}$，故 $Q=\widetilde Q=0$，
$$
Y/\sqrt g=c+12\beta\mathfrak k,\quad
V/\sqrt g=-c(6\mathfrak k-2\Lambda)+12\alpha\mathfrak k^2-36\beta\mathfrak k^2.
$$
正确 (2.8) 给
$$
\mathcal E^{ij}/\sqrt g=H^{ij}
=g^{ij}[c(\mathfrak k-\Lambda)+2\alpha\mathfrak k^2-6\beta\mathfrak k^2].
$$
printed 静态式多出 $8(1-\alpha)\mathfrak k^2g^{ij}$，Mathematica residual 非零。建议从 (2.8) 恢复 coupling coefficients；不能把该印刷错误当成理论不等价。式 (2.16) 中未定义的 $h_{ij}$ 所乘 bracket 本身为零，不用于此 counterexample。

### 纯时间依赖

源文在 $N^i=0,\partial_i=0$ 下比较
$$
H^{ij}=\frac{\mathcal E^{ij}-\dot\pi^{ij}}{N\sqrt g}.
$$
独立检查了 anisotropic、off-shell exact example
$$
ds^2=-dt^2+e^{2t}dx^2+e^{4t}dy^2+e^{6t}dz^2.
$$
由 $\dot K$ 解 $Q,P$，由 $\dot P$ 解 $\pi$，保留 density 的时间变化；xCoba 独立给曲率和连接，随后构造协变导数。结果
$$
H_{00}=-42\alpha+150\beta+c(-11+\Lambda)=T_0/(2\sqrt g),
$$
$$
g_{ii}H^{ii}=
\{-182\alpha+650\beta+c(19-\Lambda),\
-14\alpha+50\beta+c(13-\Lambda),\
154\alpha-550\beta+c(7-\Lambda)\}.
$$
三项与 Hamiltonian expressions 全部相等，mixed components 为零。没有设这些 expressions 自身为零，检查的是 off-shell matching。

**证据边界：** 静态 commutator、常曲率空间例子和一个 anisotropic homogeneous example 都通过；没有由它们证明一般 $N^i(t,\mathbf x)\ne0$ 的 statement。源文应表述为“两类配置提供一致性证据”，一般性仍需完整 Legendre/constraint 论证或一般 residual。

## 5. BFV gauge、delta functions 与有限 regulator

Minkowski perturbations：
$$
g_{ij}=\delta_{ij}+h_{ij},\quad N=1+n,\quad N^i=n^i,\quad
P^{ij}=2c\delta^{ij}+p^{ij}.
$$
背景 $P$ 非零。TL decomposition 为
$$
h_{ij}=\partial_{ij}\Delta^{-1}h^L+\partial_{(i}h^L_{j)}
+\tfrac12(\delta_{ij}-\partial_{ij}\Delta^{-1})h^T+h^T_{ij}.
$$
$\partial_i h_i^L=0$、$\partial_i h^T_{ij}=h^T_{ii}=0$，$h_{ii}=h^L+h^T$；$n_i=\partial_i n^L+n_i^T$。$h^T$ 是 scalar，$h^T_{ij}$ 才是 TT。$\Delta^{-1}$ 需要 domain；本次反演只取非零空间动量，不处理边界/零模。

BFV 扩展加入 $(N^A,\pi_A)=(N,P_N),(N^i,\tau_i)$ 和两对 ghosts，源文
$$
\mathcal H_\Psi=\{\Psi,\Omega\},\qquad
\Psi=\mathcal P_A^1N^A+\mathcal P_A^2\chi^A,
$$
$$
\Omega=\int d^3x[
T_A\eta_1^A+\pi_A\eta_2^A
-\eta_1^i\partial_i\eta_1\mathcal P^1
-\eta_1^i\partial_i\eta_1^j\mathcal P_j^1].
$$
这里的 nonlinear BRST charge 为 Source-derived；没有重新验证完整 constraint algebra 或 $\{\Omega,\Omega\}=0$。

$\chi^A$ 假定线性、无 dimensional couplings、无 ghosts、spatial-rotation invariant，且满足作者的 locality 限制。采用
$$
\chi=\sigma_1\Delta n^L+\sigma_2(K^T+K^L),\quad
\chi^L=\epsilon^{-1}(h^L+h^T),\quad
\chi_i^T=\sigma_3\Delta h_i^L,
$$
$\sigma_1=0,\sigma_2=1,\sigma_3=1/2$。实际 BFV condition 是 $\dot N^A-\chi^A=0$。

积分顺序：Grassmann momenta 先给二阶 time kinetic terms；线性 $\pi^{ij}$ 给 delta functions，恢复 $K_{ij}=\frac12\dot h_{ij}-\partial_{(i}n_{j)}$；$P_N,\tau_i$ 给
$$
\delta[\dot n-(K^T+K^L)]
\delta[\dot n_i^T-\tfrac12\Delta h_i^L]
\delta[-\dot n^L+\epsilon^{-1}(h^T+h^L)].
$$
最后积分 $p^{ij}$。原文“四个 deltas”只能按 TL sectors 理解，不能将 six-component symmetric tensor 数成四个 scalar constraints。

gauge averaging 为
$$
\begin{aligned}
\mathcal L_{\rm gf}={}&\frac1{2\xi_1}(\dot n_i^T-\tfrac12\Delta h_i^L)^2\\
&+\frac1{2\xi_2}[\dot n-\tfrac12(\dot h^T+\dot h^L)+\Delta n^L]^2
+\frac1{2\xi_3}[-\dot n^L+\epsilon^{-1}(h^T+h^L)]^2.
\end{aligned}
$$
有限 $\epsilon\ne0$ 先反演，再取 $\epsilon\to0$；不能先删 singular terms。丢 field-independent determinants 只在固定背景、指定正规化的生成泛函中成立，本次没有验证完整 nonlinear measure、boundary determinant、loop regularization 或 renormalization。

## 6. Geometric Lagrangian 的 scalar 系数错误

$\Box=-\partial_t^2+\Delta$。printed vector/tensor：
$$
\mathcal L_v=-\tfrac18h_i^L(\alpha\Box-c)\Delta\ddot h_i^L
+\tfrac12h_i^L(\alpha\Box-c)\Delta\dot n_i^T
+\tfrac12n_i^T(\alpha\Box-c)\Delta n_i^T,
$$
$$
\mathcal L_t=-\tfrac14h_{ij}^T(\alpha\Box-c)\Box h_{ij}^T.
$$
两式通过 covariant expansion，也通过 canonical Gaussian elimination。

源 (3.13) 印出
$$
\begin{aligned}
\mathcal L_s^{\rm printed}={}&
-\tfrac18h^T[(3\alpha-8\beta)\Box+c]\Box h^T
+\tfrac12h^T(\upsilon_4\Box+c)(\ddot h^L-2\Delta\dot n^L-2\Delta n)\\
&-\upsilon_2[
\tfrac12h^L\partial_t^4h^L-2h^L\Delta\ddot n
-2h^L\Delta\partial_t^3n^L
-\boxed{n^L\Delta^2\ddot n^L}
+2n\Delta^2n-4n^L\Delta^2\dot n].
\end{aligned}
$$
**Failed；建议 boxed term 改为 $-2n^L\Delta^2\ddot n^L$。** 最短检查：只开 $h_{0i}=\partial_i n^L$，其余 perturbations 零，得
$$
R_{\mu\nu}^{(1)}R^{(1)\mu\nu}=2(\Delta\dot n^L)^2,\qquad
(R^{(1)})^2=4(\Delta\dot n^L)^2.
$$
因此
$$
\mathcal L^{(2)}=-2\upsilon_2(\Delta\dot n^L)^2
\equiv2\upsilon_2n^L\Delta^2\ddot n^L.
$$
这里的 $\equiv$ 只模 compact-support/Fourier bulk pairing 的边界项。

完整独立 quadratic expansion 使用
$$
\mathcal L^{(2)}_{\rm cov}
=-\tfrac c2h^{\mu\nu}G_{\mu\nu}^{(1)}
-\alpha R_{\mu\nu}^{(1)}R^{(1)\mu\nu}
+\beta(R^{(1)})^2.
$$
取 $e^{-i\omega t+i\mathbf p\cdot\mathbf x}$、$\mathbf p=(0,0,p)$、$q=p^2>0$、$s=\omega^2-q$，variables $v=(h^T,h^L,n,n^L)$，定义 $B=\upsilon_4s+c$。$\frac12v(-k)^TK_s(k)v(k)$ 的 corrected kernel 为
$$
K_s=
\begin{pmatrix}
-\frac14s[(3\alpha-8\beta)s+c]&-\frac12\omega^2B&qB&-i\omega qB\\
-\frac12\omega^2B&-\upsilon_2\omega^4&2\upsilon_2q\omega^2&-2i\upsilon_2q\omega^3\\
qB&2\upsilon_2q\omega^2&-4\upsilon_2q^2&4i\upsilon_2q^2\omega\\
i\omega qB&2i\upsilon_2q\omega^3&-4i\upsilon_2q^2\omega&-4\upsilon_2q^2\omega^2
\end{pmatrix}.
$$
printed (3.13) 只将右下角写成 $-2\upsilon_2q^2\omega^2$；其余 $15$ 个 entries 与 covariant expansion 一致。

### Canonical Schur complement 未预先使用 trace gauge

Ref.12 p.10 kinetic terms 包含
$$
p^L\dot K^L+\tfrac12p^T\dot K^T
+\tfrac12\partial_kp_i^L\partial_k\dot K_i^L+p^T_{ij}\dot K^T_{ij}.
$$
积分 $\pi$ 后代入
$$
K^T=\tfrac12\dot h^T,\quad K^L=\tfrac12\dot h^L-\Delta n^L,\quad
K_i^L=\tfrac12\dot h_i^L-n_i^T,\quad K^T_{ij}=\tfrac12\dot h^T_{ij}.
$$
scalar $(p^T,p^L)$ block 为
$$
K_{pp}=\gamma
\begin{pmatrix}\upsilon_2&-\upsilon_4\\-\upsilon_4&3\alpha-8\beta\end{pmatrix},
\qquad \det K_{pp}=\frac1{32\alpha\upsilon_3}.
$$
保留 Ref.12 (3.19) 全部 $p$–$h$、$K$、$n$ couplings，计算
$$
K_{\rm eff}=K_{vv}-K_{vp}K_{pp}^{-1}K_{pv}.
$$
结果 $K_{\rm eff}-K_s$ 的 $4\times4$ entries 全零；vector $2\times2$ 与 unit-normalized TT 也全零。$h^T,h^L$ 一直独立，未取 $\epsilon$ 极限或设 $h^L+h^T=0$。

**这些 printed quadratic kernels 的 canonical/covariant matching 不需要 trace gauge。** Ref.12 (3.9) 声称 scalar EOM 多出 $-2c\Delta(h^L+h^T)$，但它不能从已匹配的 quadratic action 导出。此结果否定的是“这些二次作用量只有 tracefree 后才匹配”的说法；未定位更早 classical-EOM 推导中的具体失误，也未证明一般 nonlinear/边界等价。

## 7. Longitudinal ghost：缺少的有限 $\epsilon$ 项

printed (3.16) 为
$$
\mathcal L_{\rm gh}^{\rm printed}
=-\bar C\Box C-\bar C^L\Delta\ddot C^L+\bar C_i^T\Box C_i^T.
$$
其 longitudinal kernel 是 $-q\omega^2$。按与 $\langle\bar CC\rangle=\Pi_0$ 一致的 Grassmann ordering，
$$
\langle\bar C^LC^L\rangle_{\rm printed}=\frac{i}{q\omega^2},
$$
不为零，也没有 $\epsilon$ 可供取极限；故不能推出 (4.5)。

Ref.12 (3.19) 的 Hamiltonian 明确保留 $-2\epsilon^{-1}\bar C^L\Delta^2C^L$。于是 $\mathcal L=\mathcal K-\mathcal H$ 应保留
$$
\mathcal L_{\rm gh,L}=-\bar C^L\Delta\ddot C^L
+\frac2\epsilon\bar C^L\Delta^2C^L,
$$
$$
\langle\bar C^LC^L\rangle_\epsilon
=-\frac{i\epsilon}{q(2q-\epsilon\omega^2)}
\longrightarrow0
\quad(\epsilon\to0,\ q>0,\ \omega\ {\rm fixed}).
$$
此 inverse 与极限已计算；缺项也已在支持文献 PDF/TeX 确认。**Failed** 的是当前文章所印 Lagrangian-to-propagator chain，不是否定保留 regulator 后的零极限。

该极限对 $\omega$ 不一致，不能无说明地与 loop momentum integration、$\omega\to\infty$ 交换；$q=0$ residual gauge modes 另行处理。

## 8. 有限 gauge kernel、传播子与 normalization

corrected scalar kernel 加
$$
K_{s,\rm gf}=K_s+\xi_2^{-1}b_2^\dagger b_2+\xi_3^{-1}b_3^\dagger b_3,
$$
$$
b_2=(i\omega/2,i\omega/2,-i\omega,-q),\qquad
b_3=(\epsilon^{-1},\epsilon^{-1},0,i\omega).
$$
先反演再取 $\epsilon\to0$，得源 (4.2)，且对 $\xi_2,\xi_3$ 导数全零。printed scalar kernel 则产生非零 residual 和 $\xi_2$ dependence。

定义
$$
\Pi_0=\frac{i}{s},\qquad \Pi_1=\frac{i}{s-c/\alpha},\qquad
\Pi_2=\frac{i}{s+c/(2\upsilon_3)}.
$$
本次是极点外的 rational checks；Feynman distributions 须一致补 $i0^+$。该 pole prescription 与 gauge regulator $\epsilon$ 不同，本次未计算 loop contours。

验证得到
$$
\langle h^Th^T\rangle=16i\gamma\upsilon_2\Pi_1\Pi_2
=\frac4{3c}(\Pi_2-\Pi_1),\qquad c\ne0,
$$
$$
-q\langle h_x^Lh_y^L\rangle
=-4(\alpha^{-1}\omega^2-i\xi_1q\Pi_1^{-1})\Pi_0^2\Pi_1\,\delta_{xy},
$$
$$
\langle h_X^Th_Y^T\rangle=2i\alpha^{-1}\Pi_0\Pi_1\delta_{XY}
=\boxed{\frac2c(\Pi_0-\Pi_1)\delta_{XY}}.
$$
basis 取 unit norm。最后一个 boxed expression 是建议修正；源 (4.7) 的 $c(\Pi_0-\Pi_1)$ 错误。直接由 (4.4)/(4.1) 相除得到 prefactor $2/c=2\kappa^2$，也与 TT kinetic kernel 求逆一致。

vector 也由完整核独立验证。令 $A=\alpha s-c$，
$$
K_v=
\begin{pmatrix}
-Aq\omega^2/4&iAq\omega/2\\
-iAq\omega/2&-Aq
\end{pmatrix}
+\xi_1^{-1}
\begin{pmatrix}q/2\\i\omega\end{pmatrix}(q/2,-i\omega).
$$
其 inverse 的 $hh$ entry 正是上述表达式。

将 source positivity inequalities 与 generic branch 合并，非零质量的域是
$$
c>0,\quad\alpha>0,\quad\beta>\alpha/3,\qquad
m_2^2=c/\alpha,\quad m_0^2=-c/(2\upsilon_3)>0.
$$
等号 $\alpha=0,\beta=\alpha/3$ 不在 inverse formulas 的定义域内。

极点计数：massless TT $2$、massive TT $2$、massive transverse vector $2$、两个 massive scalar，共 $8$。$\Pi_1$ 在 scalar/TT partial fractions 相对健康 massless TT 有反号。裸 ADM component 符号、尤其 $-q$ prefactor，不足以建立某个 BRST physical state 的 norm。

vector 的 $\omega^2\Pi_0^2$ 不能不经 constraints/gauge analysis 就数成新物理自由度。源文引用 $K_i^L$ 的更简洁 propagator；本笔记未独立完成其 BRST cohomology 或 covariant symplectic norm，相关“field operator 选择改变 norm 解读”保持 Source-derived。

## 9. GR limit、重根极限与非局域 gauge

$\alpha,\beta\to0$ 代入 corrected geometric Lagrangian coefficients，恢复源 (3.18) 的 EH quadratic ADM action；漏掉的 shift 项正比于 $\upsilon_2$，不改变这个 coefficient limit。canonical Hessian 同时退化，因此不能把它称为 generic Hamiltonian phase space 的平滑极限。

$c>0$ 固定，沿 $\alpha>0,\beta>\alpha/3$ 的稳定分支趋零，massive scales 发散；有限外部 momentum 下剩 massless TT。此低能极限与 UV/loop integration 不保证可交换。

$c\to0$ 应从乘积 propagators 取极限：scalar、TT 为 $1/s^2$，不是八个独立的普通 $1/s$ Klein–Gordon 场。极点重合仍有 higher-derivative/Jordan 性质；不能使用含 $1/c$ 的分式系数。

源 (4.8)–(4.10) 放松 locality 后允许
$$
\begin{aligned}
\chi={}&\sigma_1\Delta n^L+\sigma_2(K^T+K^L)
+\sigma_4\Delta^{-1}(\pi^T+\pi^L)
+\sigma_5(-\Delta)^{-1/2}\tau^L+\sigma_6\Delta^{-1}P_N,\\
\chi^L={}&\epsilon^{-1}(h^L+h^T),\\
\chi_i^T={}&\sigma_3\Delta h_i^L
+\sigma_7(-\Delta)^{-1/2}\pi_i^L+\sigma_8\Delta^{-1}\tau_i^T.
\end{aligned}
$$
源文末项印 $\tau_k^T$，free index 应对应左边 $i$；上式说明 intended component structure。该 ansatz 可给 gauge-fixed Hamiltonian 增加 $P_N^2$ 等，但不证明消除了 physical Ostrogradsky instability。$\pi^T_{ij}$ 不在该 ansatz；inverse operators 仍需 boundary/zero-mode domain。任意 $\sigma_4,\ldots,\sigma_8$ 的 propagator invariance 未在本笔记复做。

## 10. 可复用对象与 verification ledger

当前 CPS/quantization 工作可直接复用 corrected $K_s,K_v,K_t$、有限 gauge rows、$P_{(0)}=2c\delta$ 和 Schur complement 流程。比较 reduction 时保留 density、完整 action 与 regulators；反演成功不能替代 physical norm 或边界 symplectic comparison。区域 gluing 仍须从未丢边界项的 action 计算 boundary generators/allowed variations。

| 检查 | 结果与域 |
|---|---|
| (1.1) → (2.1) | Checked：xAct variation、contracted Bianchi 后 residual 0 |
| 静态四导数 identity | Checked：任意三维 metric/scalar 抽象恒等式 |
| 常曲率空间静态例子 | Checked：原 (2.8) 匹配；Failed：p.6 未编号式 residual $8(1-\alpha)\mathfrak k^2$ |
| anisotropic exponential example | Checked：time/spatial matching 全零；不是 general spacetime 证明 |
| $Q$ trace/TF 和 Gaussian Hessian | Checked：$\alpha\upsilon_3\ne0$ |
| covariant quadratic expansion | Checked：vector/TT；Failed：printed scalar shift 项少因子 2 |
| Ref.12 canonical elimination | Checked：scalar $4\times4$、vector $2\times2$、TT 全零，未预先 impose trace gauge |
| finite $\epsilon$ bosonic inverses | Checked：corrected scalar 和 printed vector/TT；printed scalar 不产生所列传播子 |
| partial fractions | Failed：(4.7)；Checked：$2/c$ 修正和原 scalar fraction |
| longitudinal ghost | Failed：printed (3.16)；Checked：恢复 Ref.12 regulator 后零极限 |
| nonlinear BRST、functional measure、boundary norm | Not independently verified |
| nonlocal gauge 一般参数反演 | Source-derived |

**Verified:** 上表 Checked 的 algebra、variation、examples、momentum kernels；没有把作者 Cadabra 声明当独立证据。

**Assumptions:** generic couplings；flat quadratic sector $\Lambda=0$；$q>0$，Fourier bulk pairing，丢弃边界项需 compact support/相应 falloff。有限 $\epsilon,\xi_i\ne0$ 先求逆，在一般非极点 momentum 后取 $\epsilon\to0$。质量/符号讨论另要求 $c>0,\alpha>0,\beta>\alpha/3$。没有隐藏 renormalization subtraction。

**Not verified:** 先前 classical EOM 中额外 trace term 的具体出错步骤；任意场 full nonlinear Hamiltonian comparison；interacting BFV nilpotence/cohomology、异常、完整 functional determinant、AdS/区域边界数据、physical Hilbert-space norm。已有 quadratic action evidence 不支持 trace gauge 是 matching 的必要条件。

**Blocked:** 无未解决 retrieval blocker。两次直接转换高阶 abstract $H^{ij}$ 留下未展开 xCoba indices，改用 xCoba Ricci/Christoffel components 后完成检查。测试程序的 complex conjugation 与多行 Wolfram expression 分组也已修正重算；只采用最终完整结果，临时程序问题不算 source failure。

**Failed:** 上述四处 source-level 公式链问题逐项定位；后续 corrected-kernel 结论明确依赖建议修正，不沿用失败原式。一般“未被证明”与具体系数“已被反证”分开记录。

PDF、TeX 和计算日志均在 vault 外；主日志为临时 2610.31839v1/verification.json。今日总览：[[2026_10_26_overview]]。
